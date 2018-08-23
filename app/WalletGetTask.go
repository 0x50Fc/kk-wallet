package app

/*B(Import)*/
	/*E(Import)*/

type /*B(Result)*/ WalletGetTaskResult /*E(Result)*/ struct {
	/*B(Result.Base)*/
	/*E(Result.Base)*/

	/*B(Output)*/ /*E(Output)*/
	/*B(Output.wallet)*/
	Wallet *Wallet `json:"wallet,omitempty" title:"钱包"`
	/*E(Output.wallet)*/
}

type /*B(Task)*/ WalletGetTask /*E(Task)*/ struct {
	/*B(Task.Base)*/
	/*E(Task.Base)*/

	/*B(Input)*/ /*E(Input)*/
	/*B(Input.id)*/
	Id int64 `json:"id" title:"钱包ID"`
	/*E(Input.id)*/

	/*B(Task.Result)*/
	Result WalletGetTaskResult `json:"-"`
	/*E(Task.Result)*/
}

/*B(name)*/
func (T *WalletGetTask) GetName() string {
	return "wallet/get"
}

/*E(name)*/

/*B(title)*/
func (T *WalletGetTask) GetTitle() string {
	return "获取钱包"
}

/*E(title)*/

/*B(Task.GetResult)*/
func (T *WalletGetTask) GetResult() interface{} {
	return &T.Result
}

/*E(Task.GetResult)*/
