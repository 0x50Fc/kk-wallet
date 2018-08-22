package app

/*B(Import)*/
import "github.com/hailongz/kk-micro/micro"

/*E(Import)*/

type /*B(Service)*/ OrderService /*E(Service)*/ struct {

	/*B(Task)*/ /*E(Task)*/

}

/*B(Title)*/
func (S *OrderService) GetTitle() string {
	return "订单服务"
}

/*E(Title)*/

/*B(Handle)*/ /*E(Handle)*/
/*B(Handle.Cancel)*/
/*取消*/
func (S *OrderService) HandleCancelTask(a micro.IApp, task *CancelTask) error {
	/*E(Handle.Cancel)*/
	//TODO

	return nil
}

/*B(Handle.Revoke)*/
/*提现*/
func (S *OrderService) HandleRevokeTask(a micro.IApp, task *RevokeTask) error {
	/*E(Handle.Revoke)*/
	//TODO

	return nil
}

/*B(Handle.Recharge)*/
/*充值*/
func (S *OrderService) HandleRechargeTask(a micro.IApp, task *RechargeTask) error {
	/*E(Handle.Recharge)*/
	//TODO

	return nil
}

/*B(Handle.Get)*/
/*获取订单*/
func (S *OrderService) HandleGetTask(a micro.IApp, task *GetTask) error {
	/*E(Handle.Get)*/
	//TODO

	return nil
}

/*B(Handle.Query)*/
/*查询订单*/
func (S *OrderService) HandleQueryTask(a micro.IApp, task *QueryTask) error {
	/*E(Handle.Query)*/
	//TODO

	return nil
}

/*B(Handle.Execute)*/
/*执行*/
func (S *OrderService) HandleExecuteTask(a micro.IApp, task *ExecuteTask) error {
	/*E(Handle.Execute)*/
	//TODO

	return nil
}
