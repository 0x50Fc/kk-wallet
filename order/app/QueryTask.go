package app

/*B(Import)*/
import "github.com/hailongz/kk-micro/micro"

/*E(Import)*/

type /*B(Result)*/ QueryTaskResult /*E(Result)*/ struct {
	/*B(Result.Base)*/
	micro.QueryTaskResult
	/*E(Result.Base)*/

	/*B(Output)*/ /*E(Output)*/
	/*B(Output.items)*/
	Items []Order `json:"items,omitempty" title:"流水"`
	/*E(Output.items)*/
}

type /*B(Task)*/ QueryTask /*E(Task)*/ struct {
	/*B(Task.Base)*/
	micro.QueryTask
	/*E(Task.Base)*/

	/*B(Input)*/ /*E(Input)*/
	/*B(Input.endTime)*/
	EndTime interface{} `json:"endTime" title:"开始时间(秒)"`
	/*E(Input.endTime)*/
	/*B(Input.startTime)*/
	StartTime interface{} `json:"startTime" title:"开始时间(秒)"`
	/*E(Input.startTime)*/
	/*B(Input.status)*/
	Status string `json:"status" title:"状态 多个逗号分割"`
	/*E(Input.status)*/
	/*B(Input.type)*/
	Type string `json:"type" title:"类型 多个逗号分割"`
	/*E(Input.type)*/
	/*B(Input.orderBy)*/
	OrderBy string `json:"orderBy" title:"desc 降序默认 asc 升序"`
	/*E(Input.orderBy)*/
	/*B(Input.id)*/
	Id interface{} `json:"id" title:"订单ID"`
	/*E(Input.id)*/

	/*B(Task.Result)*/
	Result QueryTaskResult `json:"-"`
	/*E(Task.Result)*/
}

/*B(name)*/
func (T *QueryTask) GetName() string {
	return "/order/query"
}

/*E(name)*/

/*B(title)*/
func (T *QueryTask) GetTitle() string {
	return "查询订单"
}

/*E(title)*/

/*B(Task.GetResult)*/
func (T *QueryTask) GetResult() interface{} {
	return &T.Result
}

/*E(Task.GetResult)*/
