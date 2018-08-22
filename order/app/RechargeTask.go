package app

/*B(Import)*/
/*E(Import)*/

type /*B(Result)*/ RechargeTaskResult /*E(Result)*/ struct {
	/*B(Result.Base)*/
	/*E(Result.Base)*/

	/*B(Output)*/ /*E(Output)*/
	/*B(Output.order)*/
	Order *Order `json:"order,omitempty" title:"订单"`
	/*E(Output.order)*/
}

type /*B(Task)*/ RechargeTask /*E(Task)*/ struct {
	/*B(Task.Base)*/
	/*E(Task.Base)*/

	/*B(Input)*/ /*E(Input)*/
	/*B(Input.options)*/
	Options interface{} `json:"options" title:"其他数据"`
	/*E(Input.options)*/
	/*B(Input.title)*/
	Title string `json:"title" title:"标题"`
	/*E(Input.title)*/
	/*B(Input.freeze)*/
	Freeze bool `json:"freeze" title:"是否冻结"`
	/*E(Input.freeze)*/
	/*B(Input.value)*/
	Value int64 `json:"value" title:"充值金额(分)"`
	/*E(Input.value)*/
	/*B(Input.walletId)*/
	WalletId int64 `json:"walletId" title:"钱包ID"`
	/*E(Input.walletId)*/

	/*B(Task.Result)*/
	Result RechargeTaskResult `json:"-"`
	/*E(Task.Result)*/
}

/*B(name)*/
func (T *RechargeTask) GetName() string {
	return "/order/recharge"
}

/*E(name)*/

/*B(title)*/
func (T *RechargeTask) GetTitle() string {
	return "充值"
}

/*E(title)*/

/*B(Task.GetResult)*/
func (T *RechargeTask) GetResult() interface{} {
	return &T.Result
}

/*E(Task.GetResult)*/