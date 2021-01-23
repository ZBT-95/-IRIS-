/// Classname Application.SOAP.BS.QueryService
/// Summary   消息接收字符串通用BS
/// Version   1.0
/// Date      2021年1月20日 09:00
Class Application.SOAP.BS.PatientQuery Extends EnsLib.SOAP.Service
{

Parameter ADAPTER;

Parameter SERVICENAME = "QueryService";

Parameter NAMESPACE = "http://bjgoodwillcis.com";

Parameter SETTINGS = "TargetConfigNames:Basic:selector?multiSelect=0&context={Ens.ContextSearch/ProductionItems?targets=1&productionName=@productionId}";

/// 接收消息的目标组件名称
Property TargetConfigNames As Ens.DataType.ConfigName;

Method QuerySend(pInput As %String) As %String [ WebMethod ]
{
	TRY{
		//无发送目标告警处理
		If ""=..TargetConfigNames { $$$LOGWARNING("没有选择接收消息的目标名称，请查看BS前台设置属性!") }
		//创建返回值实例     
		Set QueryMsg= ##class(Application.MSG.QueryMsg).%New(),Parameters="",Values=""
		//获取SQL模型
		
		Set QueryMsg.Resource=$p(pInput,"?",1)
		//声明返回实例
		Set Outputobj = $System.OBJ.New("Application.MSG."_QueryMsg.Resource)
		//查询参数处理为object
		Set ParameterInfo=$p(pInput,"?",2)
		FOR i=1:1:$L(ParameterInfo,"&"){
			Set Parameters=Parameters_"+"_$p($p(ParameterInfo,"&",i),"=",1)
			Set Values=Values_$p($p(ParameterInfo,"&",i),"=",2)_","
			}
		Set QueryMsg."Query_Parameters"=Parameters,QueryMsg."Query_Values"=Values
		//发送处理
		For iTarget=1:1:$L(..TargetConfigNames, ",")
			{
			Set tSC=..ProcessInput(QueryMsg,.Outputobj,$P(..TargetConfigNames,",",iTarget))
			}
		//返回格式处理为String
		d Outputobj.XMLExportToString(.src)
	}CATCH errobj { 
		$$$LOGERROR(errobj.DisplayString())
	}
	Quit src
}

Method OnProcessInput(pInput As %RegisteredObject, Output pOutput As %RegisteredObject, ByRef pHint As %String) As %Status
{
	//同步发送
	Set tSC=..SendRequestSync(pHint,pInput,.pOutput)
	Quit tSC
}

}
