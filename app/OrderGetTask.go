package app

/*B(Import)*/
	/*E(Import)*/

type /*B(Result)*/ OrderGetTaskResult /*E(Result)*/ struct {
	/*B(Result.Base)*/
	/*E(Result.Base)*/

	/*B(Output)*/ /*E(Output)*/
	/*B(Output.order)*/
	Order *Order `json:"order,omitempty" title:"订单"`
	/*E(Output.order)*/
}

type /*B(Task)*/ OrderGetTask /*E(Task)*/ struct {
	/*B(Task.Base)*/
	/*E(Task.Base)*/

	/*B(Input)*/ /*E(Input)*/
	/*B(Input.id)*/
	Id int64 `json:"id" title:"订单ID"`
	/*E(Input.id)*/

	/*B(Task.Result)*/
	Result OrderGetTaskResult `json:"-"`
	/*E(Task.Result)*/
}

/*B(name)*/
func (T *OrderGetTask) GetName() string {
	return "order/get"
}

/*E(name)*/

/*B(title)*/
func (T *OrderGetTask) GetTitle() string {
	return "获取订单"
}

/*E(title)*/

/*B(Task.GetResult)*/
func (T *OrderGetTask) GetResult() interface{} {
	return &T.Result
}

/*E(Task.GetResult)*/
