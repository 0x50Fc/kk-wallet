package app

/*B(Import)*/
/*E(Import)*/

type /*B(Result)*/ ExecuteTaskResult /*E(Result)*/ struct {
	/*B(Result.Base)*/
	/*E(Result.Base)*/

	/*B(Output)*/ /*E(Output)*/
	/*B(Output.order)*/
	Order *Order `json:"order,omitempty" title:"订单"`
	/*E(Output.order)*/
}

type /*B(Task)*/ ExecuteTask /*E(Task)*/ struct {
	/*B(Task.Base)*/
	/*E(Task.Base)*/

	/*B(Input)*/ /*E(Input)*/
	/*B(Input.id)*/
	Id int64 `json:"id" title:"订单ID"`
	/*E(Input.id)*/

	/*B(Task.Result)*/
	Result ExecuteTaskResult `json:"-"`
	/*E(Task.Result)*/
}

/*B(name)*/
func (T *ExecuteTask) GetName() string {
	return "/order/execute"
}

/*E(name)*/

/*B(title)*/
func (T *ExecuteTask) GetTitle() string {
	return "执行"
}

/*E(title)*/

/*B(Task.GetResult)*/
func (T *ExecuteTask) GetResult() interface{} {
	return &T.Result
}

/*E(Task.GetResult)*/
