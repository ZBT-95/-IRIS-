/// Classname Application.Rest.Handler
/// Summary   REST应用插叙参数处理程序
/// Version   1.0
/// Date      2021年1月20日 09:00
Class Application.Rest.Handler Extends %CSP.REST
{

Parameter HandleCorsRequest = "true";

XData UrlMap [ XMLNamespace = "http://www.bjgoodwill.com/urlmap" ]
{
<Routes>
<Route Url="/:resource/:id"  			Method="GET" 		Call="GetRequest"/>
<Route Url="/(.*)"  					Method="GET" 		Call="GetRequestParameter"/>
</Routes>
}

ClassMethod GetRequest(resource As %String, id As %String) As %Status
{
	//使用#Dim预处理程序指令
	#dim tSC As %Status = $$$OK
	Try {
		#dim %request As %CSP.Request
		#dim %response As %CSP.Response
		//获取^Ens.LookupTable查询资源对应服务名称
		Set Service=^Ens.LookupTable("ResourceService",resource)
		//声明服务实例
		Set tSC= ##class(Ens.Director).CreateBusinessService(Service, .tService)
		//发送查询信息给服务
		Set response=tService.QuerySend(resource_"?id="_id)
		//返回值
		w response
	} Catch eException {
		Set tSC = eException.AsStatus()
	}
	
	Quit tSC
}

ClassMethod GetRequestParameter(resource As %String) As %Status
{
	//使用#Dim预处理程序指令
	#Dim tSC As %Status = $$$OK
	Try {
		#Dim %request As %CSP.Request
		#Dim %response As %CSP.Response
		//获取查询信息
		Set queryParameter=%request.CgiEnvs("QUERY_STRING")
		//获取^Ens.LookupTable查询资源对应服务名称
		Set Service=^Ens.LookupTable("ResourceService",resource)
		//声明服务实例
		Set tSC= ##class(Ens.Director).CreateBusinessService(Service, .tService)
		//发送查询信息给服务
		Set response=tService.QuerySend(resource_"?"_queryParameter)
		//返回值
		w response
	} Catch eException {
		Set tSC = eException.AsStatus()
	}
	
	Quit tSC
}

}
