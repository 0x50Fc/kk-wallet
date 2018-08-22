package app

/*B(Import)*/
	import "github.com/hailongz/kk-micro/micro"
	/*E(Import)*/

type /*B(Service)*/ WalletService /*E(Service)*/ struct {

	/*B(Task)*/ /*E(Task)*/

}

/*B(Title)*/
func (S *WalletService) GetTitle() string {
	return "钱包服务"
}

/*E(Title)*/

/*B(Handle)*/ /*E(Handle)*/
/*B(Handle.ItemQuery)*/
/*查询流水*/
func (S *WalletService) HandleItemQueryTask(a micro.IApp, task *ItemQueryTask) error {
/*E(Handle.ItemQuery)*/
	//TODO

	return nil
}

/*B(Handle.ItemCreate)*/
/*创建流水*/
func (S *WalletService) HandleItemCreateTask(a micro.IApp, task *ItemCreateTask) error {
/*E(Handle.ItemCreate)*/
	//TODO

	return nil
}

/*B(Handle.Create)*/
/*创建钱包*/
func (S *WalletService) HandleCreateTask(a micro.IApp, task *CreateTask) error {
/*E(Handle.Create)*/
	//TODO

	return nil
}
