package app

/*B(Import)*/
import "github.com/hailongz/kk-micro/micro"

/*E(Import)*/

type /*B(Result)*/ ItemQueryTaskResult /*E(Result)*/ struct {
	/*B(Result.Base)*/
	micro.QueryTaskResult
	/*E(Result.Base)*/

	/*B(Output)*/ /*E(Output)*/
	/*B(Output.items)*/
	Items []Item `json:"items,omitempty" title:"流水"`
	/*E(Output.items)*/
}

type /*B(Task)*/ ItemQueryTask /*E(Task)*/ struct {
	/*B(Task.Base)*/
	micro.QueryTask
	/*E(Task.Base)*/

	/*B(Input)*/ /*E(Input)*/
	/*B(Input.id)*/
	Id interface{} `json:"id" title:"钱包ID"`
	/*E(Input.id)*/
	/*B(Input.endTime)*/
	EndTime interface{} `json:"endTime" title:"开始时间(秒)"`
	/*E(Input.endTime)*/
	/*B(Input.startTime)*/
	StartTime interface{} `json:"startTime" title:"开始时间(秒)"`
	/*E(Input.startTime)*/
	/*B(Input.orderBy)*/
	OrderBy string `json:"orderBy" title:"desc 降序默认 asc 升序"`
	/*E(Input.orderBy)*/
	/*B(Input.orderId)*/
	OrderId interface{} `json:"orderId" title:"订单ID"`
	/*E(Input.orderId)*/

	/*B(Task.Result)*/
	Result ItemQueryTaskResult `json:"-"`
	/*E(Task.Result)*/
}

/*B(name)*/
func (T *ItemQueryTask) GetName() string {
	return "/item/query"
}

/*E(name)*/

/*B(title)*/
func (T *ItemQueryTask) GetTitle() string {
	return "查询流水"
}

/*E(title)*/

/*B(Task.GetResult)*/
func (T *ItemQueryTask) GetResult() interface{} {
	return &T.Result
}

/*E(Task.GetResult)*/
