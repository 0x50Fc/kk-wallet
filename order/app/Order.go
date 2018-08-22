package app

/*B(Import)*/
import "github.com/hailongz/kk-lib/db"

/*E(Import)*/

type /*B(Object)*/ Order /*E(Object)*/ struct {
	/*B(Object.Base)*/
	db.Object
	/*E(Object.Base)*/

	/*B(Property)*/ /*E(Property)*/
	/*B(Property.ctime)*/
	Ctime int64 `json:"ctime" title:"创建时间" index:"asc"`
	/*E(Property.ctime)*/
	/*B(Property.status)*/
	Status int `json:"status" title:"状态" index:"asc"`
	/*E(Property.status)*/
	/*B(Property.type)*/
	Type int `json:"type" title:"类型" index:"asc"`
	/*E(Property.type)*/
	/*B(Property.options)*/
	Options interface{} `json:"options" title:"其他数据"`
	/*E(Property.options)*/
	/*B(Property.items)*/
	Items interface{} `json:"items" title:"交易明细"`
	/*E(Property.items)*/
	/*B(Property.title)*/
	Title string `json:"title" title:"标题" length:"255"`
	/*E(Property.title)*/

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
