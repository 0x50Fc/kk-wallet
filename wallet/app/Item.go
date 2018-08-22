package app

/*B(Import)*/
import "github.com/hailongz/kk-lib/db"

/*E(Import)*/

type /*B(Object)*/ Item /*E(Object)*/ struct {
	/*B(Object.Base)*/
	db.Object
	/*E(Object.Base)*/

	/*B(Property)*/ /*E(Property)*/
	/*B(Property.ctime)*/
	Ctime int64 `json:"ctime" title:"创建时间" index:"asc"`
	/*E(Property.ctime)*/
	/*B(Property.freeze)*/
	Freeze int64 `json:"freeze" title:"变更后冻结金额(分)"`
	/*E(Property.freeze)*/
	/*B(Property.value)*/
	Value int64 `json:"value" title:"变更后余额(分)"`
	/*E(Property.value)*/
	/*B(Property.inFreeze)*/
	InFreeze int64 `json:"inFreeze" title:"增加的冻结金额(分)"`
	/*E(Property.inFreeze)*/
	/*B(Property.inValue)*/
	InValue int64 `json:"inValue" title:"增加的余额(分)"`
	/*E(Property.inValue)*/
	/*B(Property.orderId)*/
	OrderId int64 `json:"orderId" title:"订单ID" index:"asc"`
	/*E(Property.orderId)*/
	/*B(Property.walletId)*/
	WalletId int64 `json:"walletId" title:"钱包ID" index:"asc"`
	/*E(Property.walletId)*/

}

/*B(Name)*/
func (O *Item) GetName() string {
	return "item"
}

/*E(Name)*/

/*B(Title)*/
func (O *Item) GetTitle() string {
	return "交易流水"
}

/*E(Title)*/
