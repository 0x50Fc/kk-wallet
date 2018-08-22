package app

/*B(Import)*/
/*E(Import)*/

type /*B(Result)*/ ItemCreateTaskResult /*E(Result)*/ struct {
	/*B(Result.Base)*/
	/*E(Result.Base)*/

	/*B(Output)*/ /*E(Output)*/
	/*B(Output.item)*/
	Item *Item `json:"item,omitempty" title:"流水"`
	/*E(Output.item)*/
}

type /*B(Task)*/ ItemCreateTask /*E(Task)*/ struct {
	/*B(Task.Base)*/
	/*E(Task.Base)*/

	/*B(Input)*/ /*E(Input)*/
	/*B(Input.id)*/
	Id int64 `json:"id" title:"钱包ID"`
	/*E(Input.id)*/
	/*B(Input.inFreeze)*/
	InFreeze int64 `json:"inFreeze" title:"增加的冻结金额(分)"`
	/*E(Input.inFreeze)*/
	/*B(Input.inValue)*/
	InValue int64 `json:"inValue" title:"增加的余额(分)"`
	/*E(Input.inValue)*/
	/*B(Input.tx)*/
	Tx int64 `json:"tx" title:"分布事务ID"`
	/*E(Input.tx)*/
	/*B(Input.orderId)*/
	OrderId int64 `json:"orderId" title:"订单ID"`
	/*E(Input.orderId)*/

	/*B(Task.Result)*/
	Result ItemCreateTaskResult `json:"-"`
	/*E(Task.Result)*/
}

/*B(name)*/
func (T *ItemCreateTask) GetName() string {
	return "/item/create"
}

/*E(name)*/

/*B(title)*/
func (T *ItemCreateTask) GetTitle() string {
	return "创建流水"
}

/*E(title)*/

/*B(Task.GetResult)*/
func (T *ItemCreateTask) GetResult() interface{} {
	return &T.Result
}

/*E(Task.GetResult)*/
