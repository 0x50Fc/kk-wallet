package app

import (
	"github.com/hailongz/kk-micro/micro"
)

func Open(app micro.IApp) micro.IApp {

	/*B(App.Service)*/ /*E(App.Service)*/
	/*B(App.Service.Wallet)*/
	{
		s := WalletService{}
		app.Use(&CreateTask{},&s)
		app.Use(&ItemCreateTask{},&s)
		app.Use(&ItemQueryTask{},&s)
	}
	/*E(App.Service.Wallet)*/

	return app
}
