package app

import (
	"github.com/hailongz/kk-micro/micro"
)

func Open(app micro.IApp) micro.IApp {

	/*B(App.Service)*/ /*E(App.Service)*/
	/*B(App.Service.Order)*/
	{
		s := OrderService{}
		app.Use(&RevokeTask{}, &s)
		app.Use(&CancelTask{}, &s)
		app.Use(&ExecuteTask{}, &s)
		app.Use(&QueryTask{}, &s)
		app.Use(&GetTask{}, &s)
		app.Use(&RechargeTask{}, &s)
	}
	/*E(App.Service.Order)*/

	return app
}
