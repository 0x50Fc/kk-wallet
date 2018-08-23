package app

/*B(Import)*/
	/*E(Import)*/

type /*B(Result)*/ TransferTaskResult /*E(Result)*/ struct {
	/*B(Result.Base)*/
	/*E(Result.Base)*/

	/*B(Output)*/ /*E(Output)*/
	/*B(Output.order)*/
	Order *Order `json:"order,omitempty" title:"订单"`
	/*E(Output.order)*/
}

type /*B(Task)*/ TransferTask /*E(Task)*/ struct {
	/*B(Task.Base)*/
	/*E(Task.Base)*/

	/*B(Input)*/ /*E(Input)*/
	/*B(Input.value)*/
	Value int64 `json:"value" title:"交易金额(分)"`
	/*E(Input.value)*/
	/*B(Input.twalletId)*/
	TwalletId int64 `json:"twalletId" title:"收款钱包ID"`
	/*E(Input.twalletId)*/
	/*B(Input.fwalletId)*/
	FwalletId int64 `json:"fwalletId" title:"付款钱包ID"`
	/*E(Input.fwalletId)*/

	/*B(Task.Result)*/
	Result TransferTaskResult `json:"-"`
	/*E(Task.Result)*/
}

/*B(name)*/
func (T *TransferTask) GetName() string {
	return "order/transfer"
}

/*E(name)*/

/*B(title)*/
func (T *TransferTask) GetTitle() string {
	return "转账"
}

/*E(title)*/

/*B(Task.GetResult)*/
func (T *TransferTask) GetResult() interface{} {
	return &T.Result
}

/*E(Task.GetResult)*/
