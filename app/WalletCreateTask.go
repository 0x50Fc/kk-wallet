package app

/*B(Import)*/
	/*E(Import)*/

type /*B(Result)*/ WalletCreateTaskResult /*E(Result)*/ struct {
	/*B(Result.Base)*/
	/*E(Result.Base)*/

	/*B(Output)*/ /*E(Output)*/
	/*B(Output.wallet)*/
	Wallet *Wallet `json:"wallet,omitempty" title:"钱包"`
	/*E(Output.wallet)*/
}

type /*B(Task)*/ WalletCreateTask /*E(Task)*/ struct {
	/*B(Task.Base)*/
	/*E(Task.Base)*/

	/*B(Input)*/ /*E(Input)*/

	/*B(Task.Result)*/
	Result WalletCreateTaskResult `json:"-"`
	/*E(Task.Result)*/
}

/*B(name)*/
func (T *WalletCreateTask) GetName() string {
	return "wallet/create"
}

/*E(name)*/

/*B(title)*/
func (T *WalletCreateTask) GetTitle() string {
	return "创建钱包"
}

/*E(title)*/

/*B(Task.GetResult)*/
func (T *WalletCreateTask) GetResult() interface{} {
	return &T.Result
}

/*E(Task.GetResult)*/
