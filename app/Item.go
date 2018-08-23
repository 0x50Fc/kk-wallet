package app

/*B(Import)*/
	import "github.com/hailongz/kk-lib/db"
	/*E(Import)*/

type /*B(Object)*/ Item /*E(Object)*/ struct {
	/*B(Object.Base)*/
	db.Object
	/*E(Object.Base)*/

	/*B(Property)*/ /*E(Property)*/
	/*B(Property.iid)*/
	Iid int64 `json:"iid" title:"流水ID" index:"asc"`
	/*E(Property.iid)*/
	/*B(Property.walletValue)*/
	WalletValue int64 `json:"walletValue" title:"变更后余额(分)"`
	/*E(Property.walletValue)*/
	/*B(Property.ctime)*/
	Ctime int64 `json:"ctime" title:"创建时间" index:"desc"`
	/*E(Property.ctime)*/
	/*B(Property.value)*/
	Value int64 `json:"value" title:"增加的余额(分)"`
	/*E(Property.value)*/
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
