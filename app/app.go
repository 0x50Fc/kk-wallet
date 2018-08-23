package app

import (
	"fmt"

	"github.com/hailongz/kk-lib/dynamic"
	"github.com/hailongz/kk-micro/micro"
)

func Open(app micro.IApp) micro.IApp {

	/*B(App.Service)*/ /*E(App.Service)*/
	/*B(App.Service.Order)*/
	{
		s := OrderService{}
		app.Use(&RechargeTask{},&s)
		app.Use(&RevokeTask{},&s)
		app.Use(&TransferTask{},&s)
		app.Use(&OrderGetTask{},&s)
	}
	/*E(App.Service.Order)*/
	/*B(App.Service.Wallet)*/
	{
		s := WalletService{}
		app.Use(&WalletCreateTask{},&s)
		app.Use(&WalletGetTask{},&s)
		app.Use(&ItemQueryTask{},&s)
	}
	/*E(App.Service.Wallet)*/

	//默认数据服务
	app.AddDefaultService(&micro.DBService{})

	//默认远程服务
	app.AddDefaultService(&micro.RemoteService{})

	//服务启动
	app.Handle(&micro.StartupTask{})

	return app
}

func Prefix(app micro.IApp, prefix string, id int64) string {
	count := uint(dynamic.IntValue(dynamic.Get(app.Config(), "tableCount"), 1))
	iid := uint(id & 0x0ffffffff)
	return fmt.Sprintf("%s%d_", prefix, (iid%count)+1)
}
