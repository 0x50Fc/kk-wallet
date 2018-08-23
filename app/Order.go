package app

/*B(Import)*/
	import "github.com/hailongz/kk-lib/db"
	/*E(Import)*/

type /*B(Object)*/ Order /*E(Object)*/ struct {
	/*B(Object.Base)*/
	db.Object
	/*E(Object.Base)*/

	/*B(Property)*/ /*E(Property)*/
	/*B(Property.titemId)*/
	TitemId int64 `json:"titemId" title:"收入流水ID"`
	/*E(Property.titemId)*/
	/*B(Property.fitemId)*/
	FitemId int64 `json:"fitemId" title:"支出流水ID"`
	/*E(Property.fitemId)*/
	/*B(Property.ctime)*/
	Ctime int64 `json:"ctime" title:"创建时间"`
	/*E(Property.ctime)*/
	/*B(Property.value)*/
	Value int64 `json:"value" title:"交易金额(分)"`
	/*E(Property.value)*/
	/*B(Property.twalletId)*/
	TwalletId int64 `json:"twalletId" title:"收入钱包ID"`
	/*E(Property.twalletId)*/
	/*B(Property.fwalletId)*/
	FwalletId int64 `json:"fwalletId" title:"支出钱包ID"`
	/*E(Property.fwalletId)*/

}

/*B(Name)*/
func (O *Order) GetName() string {
	return "order"
}

/*E(Name)*/

/*B(Title)*/
func (O *Order) GetTitle() string {
	return "订单"
}

/*E(Title)*/
