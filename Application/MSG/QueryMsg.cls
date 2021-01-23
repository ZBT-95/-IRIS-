/// Classname Application.MSG.QueryMsg
/// Summary   查询消息参数传递模型
/// Version   1.0
/// Date      2021年1月20日 09:00
Class Application.MSG.QueryMsg Extends Ens.Request
{

Parameter XMLNAME = "Query";

// 资源名称

Property Resource As %String(XMLNAME = "Resource");

// 查询参数集合用+拼接

Property "Query_Parameters" As %String(XMLNAME = "Query_Parameters");

// 查询参数值集合用,拼接

Property "Query_Values" As %String(XMLNAME = "Query_Values");

Storage Default
{
<Data name="QueryMsgDefaultData">
<Subscript>"QueryMsg"</Subscript>
<Value name="1">
<Value>Resource</Value>
</Value>
<Value name="2">
<Value>Query_Parameters</Value>
</Value>
<Value name="3">
<Value>Query_Values</Value>
</Value>
</Data>
<DefaultData>QueryMsgDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
