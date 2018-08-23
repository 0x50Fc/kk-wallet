package app

/*B(Import)*/
	import "github.com/hailongz/kk-lib/db"
	/*E(Import)*/

type /*B(Object)*/ Wallet /*E(Object)*/ struct {
	/*B(Object.Base)*/
	db.Object
	/*E(Object.Base)*/

	/*B(Property)*/ /*E(Property)*/
	/*B(Property.iid)*/
	Iid int64 `json:"iid" title:"最后流水ID"`
	/*E(Property.iid)*/
	/*B(Property.mtime)*/
	Mtime int64 `json:"mtime" title:"修改时间"`
	/*E(Property.mtime)*/
	/*B(Property.ctime)*/
	Ctime int64 `json:"ctime" title:"创建时间"`
	/*E(Property.ctime)*/
	/*B(Property.outValue)*/
	OutValue int64 `json:"outValue" title:"累计支出(分)"`
	/*E(Property.outValue)*/
	/*B(Property.inValue)*/
	InValue int64 `json:"inValue" title:"累计收入(分)"`
	/*E(Property.inValue)*/
	/*B(Property.value)*/
	Value int64 `json:"value" title:"余额(分)"`
	/*E(Property.value)*/

}

/*B(Name)*/
func (O *Wallet) GetName() string {
	return "wallet"
}

/*E(Name)*/

/*B(Title)*/
func (O *Wallet) GetTitle() string {
	return "钱包"
}

/*E(Title)*/
