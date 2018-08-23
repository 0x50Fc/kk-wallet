package app

/*B(Import)*/
	/*E(Import)*/

type /*B(Result)*/ RevokeTaskResult /*E(Result)*/ struct {
	/*B(Result.Base)*/
	/*E(Result.Base)*/

	/*B(Output)*/ /*E(Output)*/
	/*B(Output.order)*/
	Order *Order `json:"order,omitempty" title:"订单"`
	/*E(Output.order)*/
}

type /*B(Task)*/ RevokeTask /*E(Task)*/ struct {
	/*B(Task.Base)*/
	/*E(Task.Base)*/

	/*B(Input)*/ /*E(Input)*/
	/*B(Input.value)*/
	Value int64 `json:"value" title:"交易金额(分)"`
	/*E(Input.value)*/
	/*B(Input.walletId)*/
	WalletId int64 `json:"walletId" title:"钱包ID"`
	/*E(Input.walletId)*/

	/*B(Task.Result)*/
	Result RevokeTaskResult `json:"-"`
	/*E(Task.Result)*/
}

/*B(name)*/
func (T *RevokeTask) GetName() string {
	return "order/revoke"
}

/*E(name)*/

/*B(title)*/
func (T *RevokeTask) GetTitle() string {
	return "提现"
}

/*E(title)*/

/*B(Task.GetResult)*/
func (T *RevokeTask) GetResult() interface{} {
	return &T.Result
}

/*E(Task.GetResult)*/
