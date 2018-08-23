package app

import (
	"fmt"
	"time"

	"github.com/hailongz/kk-lib/db"
	IID "github.com/hailongz/kk-micro/iid/app"
)

/*B(Import)*/
import "github.com/hailongz/kk-micro/micro"

/*E(Import)*/

type /*B(Service)*/ OrderService /*E(Service)*/ struct {

	/*B(Task)*/ /*E(Task)*/

}

/*B(Title)*/
func (S *OrderService) GetTitle() string {
	return "订单服务"
}

/*E(Title)*/

/*B(Handle)*/ /*E(Handle)*/
/*B(Handle.Transfer)*/
/*转账*/
func (S *OrderService) HandleTransferTask(a micro.IApp, task *TransferTask) error {
	/*E(Handle.Transfer)*/
	//TODO

	if task.FwalletId == 0 {
		return micro.NewError(ERROR_NOT_FOUND_ID, "未找到付款钱包ID")
	}

	if task.TwalletId == 0 {
		return micro.NewError(ERROR_NOT_FOUND_ID, "未找到收款钱包ID")
	}

	if task.Value <= 0 {
		return micro.NewError(ERROR_NOT_FOUND_VALUE, "未找到交易金额")
	}

	var id int64 = 0

	{
		t := IID.GetTask{}

		err := micro.RemoteHandle(a, "iid", &t)

		if err != nil {
			return err
		}

		id = t.Result.Iid
	}

	conn, prefix, err := micro.DBOpen(a, "db")

	if err != nil {
		return err
	}

	tx, err := conn.Begin()

	v := Order{}

	err = func() error {

		atime := time.Now().Unix()

		fwallet, err := getWalletForUpdate(a, tx, prefix, task.FwalletId)

		if err != nil {
			return err
		}

		if fwallet.Value < task.Value {
			return micro.NewError(ERROR_VALUE, "付款钱包余额不足")
		}

		fwallet.Value -= task.Value
		fwallet.OutValue += task.Value
		fwallet.Iid = fwallet.Iid + 1
		fwallet.Mtime = atime

		_, err = db.UpdateWithKeys(tx, fwallet, Prefix(a, prefix, fwallet.Id), map[string]bool{"value": true, "mtime": true, "outValue": true, "iid": true})

		if err != nil {
			return err
		}

		fitem := Item{}
		fitem.WalletId = fwallet.Id
		fitem.Iid = fwallet.Iid
		fitem.OrderId = id
		fitem.Ctime = atime
		fitem.Value = -task.Value
		fitem.WalletValue = fwallet.Value

		_, err = db.Insert(tx, &fitem, Prefix(a, prefix, fwallet.Id))

		if err != nil {
			return err
		}

		twallet, err := getWalletForUpdate(a, tx, prefix, task.TwalletId)

		if err != nil {
			return err
		}

		twallet.Value += task.Value
		twallet.InValue += task.Value
		twallet.Iid = twallet.Iid + 1
		twallet.Mtime = atime

		_, err = db.UpdateWithKeys(tx, twallet, Prefix(a, prefix, twallet.Id), map[string]bool{"value": true, "mtime": true, "inValue": true, "iid": true})

		if err != nil {
			return err
		}

		titem := Item{}
		titem.WalletId = twallet.Id
		titem.Iid = twallet.Iid
		titem.OrderId = id
		titem.Ctime = atime
		titem.Value = task.Value
		titem.WalletValue = twallet.Value

		_, err = db.Insert(tx, &titem, Prefix(a, prefix, twallet.Id))

		if err != nil {
			return err
		}

		v.Id = id
		v.FwalletId = fwallet.Id
		v.FitemId = fitem.Id
		v.TwalletId = twallet.Id
		v.TitemId = titem.Id
		v.Value = task.Value
		v.Ctime = atime

		_, err = db.Insert(tx, &v, Prefix(a, prefix, id))

		if err != nil {
			return err
		}

		return err
	}()

	if err == nil {
		err = tx.Commit()
	}

	if err != nil {
		tx.Rollback()
		return err
	}

	task.Result.Order = &v

	return nil
}

/*B(Handle.Revoke)*/
/*提现*/
func (S *OrderService) HandleRevokeTask(a micro.IApp, task *RevokeTask) error {
	/*E(Handle.Revoke)*/
	//TODO

	if task.WalletId == 0 {
		return micro.NewError(ERROR_NOT_FOUND_ID, "未找到钱包ID")
	}

	if task.Value <= 0 {
		return micro.NewError(ERROR_NOT_FOUND_VALUE, "未找到提现金额")
	}

	var id int64 = 0

	{
		t := IID.GetTask{}

		err := micro.RemoteHandle(a, "iid", &t)

		if err != nil {
			return err
		}

		id = t.Result.Iid
	}

	conn, prefix, err := micro.DBOpen(a, "db")

	if err != nil {
		return err
	}

	tx, err := conn.Begin()

	v := Order{}

	err = func() error {

		atime := time.Now().Unix()

		wallet, err := getWalletForUpdate(a, tx, prefix, task.WalletId)

		if err != nil {
			return err
		}

		if wallet.Value < task.Value {
			return micro.NewError(ERROR_VALUE, "钱包余额不足")
		}

		wallet.Value -= task.Value
		wallet.Iid = wallet.Iid + 1
		wallet.OutValue += task.Value
		wallet.Mtime = atime

		_, err = db.UpdateWithKeys(tx, wallet, Prefix(a, prefix, wallet.Id), map[string]bool{"value": true, "mtime": true, "outValue": true, "iid": true})

		if err != nil {
			return err
		}

		item := Item{}
		item.WalletId = wallet.Id
		item.OrderId = id
		item.Iid = wallet.Iid
		item.Ctime = atime
		item.Value = -task.Value
		item.WalletValue = wallet.Value

		_, err = db.Insert(tx, &item, Prefix(a, prefix, wallet.Id))

		if err != nil {
			return err
		}

		v.Id = id
		v.FwalletId = wallet.Id
		v.FitemId = item.Id
		v.Value = task.Value
		v.Ctime = atime

		_, err = db.Insert(tx, &v, Prefix(a, prefix, id))

		if err != nil {
			return err
		}

		return err
	}()

	if err == nil {
		err = tx.Commit()
	}

	if err != nil {
		tx.Rollback()
		return err
	}

	task.Result.Order = &v

	return nil
}

/*B(Handle.Recharge)*/
/*充值*/
func (S *OrderService) HandleRechargeTask(a micro.IApp, task *RechargeTask) error {
	/*E(Handle.Recharge)*/
	//TODO

	if task.WalletId == 0 {
		return micro.NewError(ERROR_NOT_FOUND_ID, "未找到钱包ID")
	}

	if task.Value <= 0 {
		return micro.NewError(ERROR_NOT_FOUND_VALUE, "未找到充值金额")
	}

	var id int64 = 0

	{
		t := IID.GetTask{}

		err := micro.RemoteHandle(a, "iid", &t)

		if err != nil {
			return err
		}

		id = t.Result.Iid
	}

	conn, prefix, err := micro.DBOpen(a, "db")

	if err != nil {
		return err
	}

	tx, err := conn.Begin()

	if err != nil {
		return err
	}

	v := Order{}

	err = func() error {

		atime := time.Now().Unix()

		wallet, err := getWalletForUpdate(a, tx, prefix, task.WalletId)

		if err != nil {
			return err
		}

		wallet.Value += task.Value
		wallet.InValue += task.Value
		wallet.Iid = wallet.Iid + 1
		wallet.Mtime = atime

		_, err = db.UpdateWithKeys(tx, wallet, Prefix(a, prefix, wallet.Id), map[string]bool{"value": true, "mtime": true, "inValue": true, "iid": true})

		if err != nil {
			return err
		}

		item := Item{}
		item.WalletId = wallet.Id
		item.OrderId = id
		item.Iid = wallet.Iid
		item.Ctime = atime
		item.Value = task.Value
		item.WalletValue = wallet.Value

		_, err = db.Insert(tx, &item, Prefix(a, prefix, wallet.Id))

		if err != nil {
			return err
		}

		v.Id = id
		v.TwalletId = wallet.Id
		v.TitemId = item.Id
		v.Value = task.Value
		v.Ctime = atime

		_, err = db.Insert(tx, &v, Prefix(a, prefix, id))

		if err != nil {
			return err
		}

		return err
	}()

	if err == nil {
		err = tx.Commit()
	}

	if err != nil {
		tx.Rollback()
		return err
	}

	task.Result.Order = &v

	return nil
}

/*B(Handle.OrderGet)*/
/*获取订单*/
func (S *OrderService) HandleOrderGetTask(a micro.IApp, task *OrderGetTask) error {
	/*E(Handle.OrderGet)*/
	//TODO

	if task.Id == 0 {
		return micro.NewError(ERROR_NOT_FOUND_ID, "未找到订单ID")
	}

	conn, prefix, err := micro.DBOpen(a, "dbr")

	if err != nil {
		return err
	}

	prefix = Prefix(a, prefix, task.Id)

	v := Order{}

	rs, err := db.Query(conn, &v, prefix, "WHERE id=?", task.Id)

	if err != nil {
		return err
	}

	defer rs.Close()

	if rs.Next() {

		scaner := db.NewScaner(&v)

		err = scaner.Scan(rs)

		if err != nil {
			return err
		}

		task.Result.Order = &v

	} else {
		return micro.NewError(ERROR_NOT_FOUND, "未找到订单")
	}

	return nil
}

func getWalletForUpdate(a micro.IApp, conn db.Database, prefix string, id int64) (*Wallet, error) {

	prefix = Prefix(a, prefix, id)

	v := Wallet{}

	rs, err := db.Query(conn, &v, prefix, "WHERE id=? FOR UPDATE", id)

	if err != nil {
		return nil, err
	}

	defer rs.Close()

	if rs.Next() {

		scaner := db.NewScaner(&v)

		err = scaner.Scan(rs)

		if err != nil {
			return nil, err
		}

	} else {
		return nil, micro.NewError(ERROR_NOT_FOUND, fmt.Sprintf("未找到钱包[%d]", id))
	}

	return &v, nil
}

func getOrderForUpdate(a micro.IApp, conn db.Database, prefix string, id int64) (*Order, error) {

	prefix = Prefix(a, prefix, id)

	v := Order{}

	rs, err := db.Query(conn, &v, prefix, "WHERE id=? FOR UPDATE", id)

	if err != nil {
		return nil, err
	}

	defer rs.Close()

	if rs.Next() {

		scaner := db.NewScaner(&v)

		err = scaner.Scan(rs)

		if err != nil {
			return nil, err
		}
	} else {
		return nil, micro.NewError(ERROR_NOT_FOUND, fmt.Sprintf("未找到订单[%d]", id))
	}

	return &v, nil
}

func getItemForUpdate(a micro.IApp, conn db.Database, prefix string, walletId int64, id int64) (*Item, error) {

	prefix = Prefix(a, prefix, walletId)

	v := Item{}

	rs, err := db.Query(conn, &v, prefix, "WHERE id=? FOR UPDATE", id)

	if err != nil {
		return nil, err
	}

	if rs.Next() {

		rs.Close()

		scaner := db.NewScaner(&v)

		err = scaner.Scan(rs)

		if err != nil {
			return nil, err
		}

	} else {
		return nil, micro.NewError(ERROR_NOT_FOUND, fmt.Sprintf("未找到流水[%d]", id))
	}

	return &v, nil
}
