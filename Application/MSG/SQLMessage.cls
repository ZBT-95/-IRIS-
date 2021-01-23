/// Classname Application.MSG.SQLMessage
/// Summary   查询信息+SQL模型传递模型
/// Version   1.0
/// Date      2021年1月20日 09:00
Class Application.MSG.SQLMessage Extends Ens.Request
{

Parameter XMLNAME = "QuerySQL";

// 查询信息消息类

Property QueryInfo As Application.MSG.QueryMsg(XMLPROJECTION = "element");

// 执行SQL模型

Property SqlModel As %String(MAXLEN = 500, XMLNAME = "SqlModel");

Storage Default
{
<Data name="SQLMessageDefaultData">
<Subscript>"SQLMessage"</Subscript>
<Value name="1">
<Value>QueryInfo</Value>
</Value>
<Value name="2">
<Value>SqlModel</Value>
</Value>
</Data>
<DefaultData>SQLMessageDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
