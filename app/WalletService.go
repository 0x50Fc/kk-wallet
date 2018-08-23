package app

import (
	"bytes"
	"fmt"
	"log"
	"time"

	"github.com/hailongz/kk-lib/db"
	IID "github.com/hailongz/kk-micro/iid/app"
)

/*B(Import)*/
	import "github.com/hailongz/kk-micro/micro"
	/*E(Import)*/

type /*B(Service)*/ WalletService /*E(Service)*/ struct {

	/*B(Task)*/ /*E(Task)*/

}

/*B(Title)*/
func (S *WalletService) GetTitle() string {
	return "钱包服务"
}

/*E(Title)*/

/*B(Handle)*/ /*E(Handle)*/
/*B(Handle.WalletGet)*/
/*获取钱包*/
func (S *WalletService) HandleWalletGetTask(a micro.IApp, task *WalletGetTask) error {
/*E(Handle.WalletGet)*/
	//TODO

	if task.Id == 0 {
		return micro.NewError(ERROR_NOT_FOUND_ID, "未找到钱包ID")
	}

	conn, prefix, err := micro.DBOpen(a, "dbr")

	if err != nil {
		return err
	}

	prefix = Prefix(a, prefix, task.Id)

	log.Println("[WALLET] [GET]", prefix+"wallet", task.Id)

	v := Wallet{}

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

		task.Result.Wallet = &v

	} else {
		return micro.NewError(ERROR_NOT_FOUND, fmt.Sprintf("未找到钱包[%d]", task.Id))
	}

	return nil
}

/*B(Handle.ItemQuery)*/
/*查询流水*/
func (S *WalletService) HandleItemQueryTask(a micro.IApp, task *ItemQueryTask) error {
/*E(Handle.ItemQuery)*/
	//TODO

	if task.Id == 0 {
		return micro.NewError(ERROR_NOT_FOUND_ID, "未找到钱包ID")
	}

	conn, prefix, err := micro.DBOpen(a, "dbr")

	if err != nil {
		return err
	}

	prefix = Prefix(a, prefix, task.Id)

	var v = Item{}

	sql := bytes.NewBuffer(nil)

	args := []interface{}{}

	sql.WriteString(" WHERE walletId=?")

	args = append(args, task.Id)

	if task.OrderId != nil {
		sql.WriteString(" AND orderId=?")
		args = append(args, task.OrderId)
	}

	if task.StartTime != nil {
		sql.WriteString(" AND ctime>=?")
		args = append(args, task.StartTime)
	}

	if task.EndTime != nil {
		sql.WriteString(" AND ctime<=?")
		args = append(args, task.EndTime)
	}

	if task.OrderBy == "asc" {
		sql.WriteString(" ORDER BY id ASC")
	} else {
		sql.WriteString(" ORDER BY id DESC")
	}

	var pageIndex = task.PageIndex
	var pageSize = task.PageSize

	if pageIndex < 1 {
		pageIndex = 1
	}

	if pageSize < 1 {
		pageSize = 10
	}

	if task.Counter {
		var counter = micro.Counter{}
		counter.PageIndex = pageIndex
		counter.PageSize = pageSize
		counter.RowCount, err = db.Count(conn, &v, prefix, sql.String(), args...)
		if err != nil {
			return err
		}
		if counter.RowCount%pageSize == 0 {
			counter.PageCount = counter.RowCount / pageSize
		} else {
			counter.PageCount = counter.RowCount/pageSize + 1
		}
		task.Result.Counter = &counter

	}

	sql.WriteString(fmt.Sprintf(" LIMIT %d,%d", (pageIndex-1)*pageSize, pageSize))

	var scanner = db.NewScaner(&v)
	var vs = []Item{}

	rows, err := db.Query(conn, &v, prefix,
		sql.String(), args...)

	if err != nil {
		return err
	}

	defer rows.Close()

	for rows.Next() {

		err = scanner.Scan(rows)

		if err != nil {
			return err
		}

		vs = append(vs, v)
	}

	task.Result.Items = vs

	return nil
}

/*B(Handle.WalletCreate)*/
/*创建钱包*/
func (S *WalletService) HandleWalletCreateTask(a micro.IApp, task *WalletCreateTask) error {
/*E(Handle.WalletCreate)*/
	//TODO

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

	prefix = Prefix(a, prefix, id)

	log.Println("[WALLET] [CREATE]", prefix+"wallet", id)

	v := Wallet{}
	v.Id = id
	v.Ctime = time.Now().Unix()
	v.Mtime = v.Ctime

	_, err = db.Insert(conn, &v, prefix)

	if err != nil {
		return err
	}

	task.Result.Wallet = &v

	return nil
}
