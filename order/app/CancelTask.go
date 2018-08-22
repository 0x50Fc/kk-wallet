package app

/*B(Import)*/
/*E(Import)*/

type /*B(Result)*/ CancelTaskResult /*E(Result)*/ struct {
	/*B(Result.Base)*/
	/*E(Result.Base)*/

	/*B(Output)*/ /*E(Output)*/
	/*B(Output.order)*/
	Order *Order `json:"order,omitempty" title:"订单"`
	/*E(Output.order)*/
}

type /*B(Task)*/ CancelTask /*E(Task)*/ struct {
	/*B(Task.Base)*/
	/*E(Task.Base)*/

	/*B(Input)*/ /*E(Input)*/
	/*B(Input.id)*/
	Id int64 `json:"id" title:"订单ID"`
	/*E(Input.id)*/

	/*B(Task.Result)*/
	Result CancelTaskResult `json:"-"`
	/*E(Task.Result)*/
}

/*B(name)*/
func (T *CancelTask) GetName() string {
	return "/order/cancel"
}

/*E(name)*/

/*B(title)*/
func (T *CancelTask) GetTitle() string {
	return "取消"
}

/*E(title)*/

/*B(Task.GetResult)*/
func (T *CancelTask) GetResult() interface{} {
	return &T.Result
}

/*E(Task.GetResult)*/
