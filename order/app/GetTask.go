package app

/*B(Import)*/
/*E(Import)*/

type /*B(Result)*/ GetTaskResult /*E(Result)*/ struct {
	/*B(Result.Base)*/
	/*E(Result.Base)*/

	/*B(Output)*/ /*E(Output)*/
	/*B(Output.order)*/
	Order *Order `json:"order,omitempty" title:"流水"`
	/*E(Output.order)*/
}

type /*B(Task)*/ GetTask /*E(Task)*/ struct {
	/*B(Task.Base)*/
	/*E(Task.Base)*/

	/*B(Input)*/ /*E(Input)*/
	/*B(Input.id)*/
	Id interface{} `json:"id" title:"订单ID"`
	/*E(Input.id)*/

	/*B(Task.Result)*/
	Result GetTaskResult `json:"-"`
	/*E(Task.Result)*/
}

/*B(name)*/
func (T *GetTask) GetName() string {
	return "/order/get"
}

/*E(name)*/

/*B(title)*/
func (T *GetTask) GetTitle() string {
	return "获取订单"
}

/*E(title)*/

/*B(Task.GetResult)*/
func (T *GetTask) GetResult() interface{} {
	return &T.Result
}

/*E(Task.GetResult)*/
