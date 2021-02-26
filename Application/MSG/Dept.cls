/// Classname Application.MSG.Dept
/// Summary   Dept消息模型
/// Version   1.0
/// Date      2021年2月20日 09:00 
Class Application.MSG.Dept Extends Ens.Request
{

Property DEPTCODE As %String(MAXLEN = 255);

Property DEPTNAME As %String(MAXLEN = 255);

Property DEPTALIAS As %String(MAXLEN = 255);

Property CLINICATTR As %String(MAXLEN = 255);

Property OUTPORINP As %String(MAXLEN = 255);

Property INTERNALORSERGERY As %String(MAXLEN = 255);

Property DISPLAYORDER As %String(MAXLEN = 255);

Property TOTALBEDNUM As %String(MAXLEN = 255);

Property PYM As %String(MAXLEN = 255);

Property ROWKEY As %String(MAXLEN = 255);

Property DEPTLV As %String(MAXLEN = 255);

Property SUPERCODE As %String(MAXLEN = 255);

Property ID As %String;

Storage Default
{
<Data name="DeptDefaultData">
<Subscript>"Dept"</Subscript>
<Value name="1">
<Value>DEPTCODE</Value>
</Value>
<Value name="2">
<Value>DEPTNAME</Value>
</Value>
<Value name="3">
<Value>DEPTALIAS</Value>
</Value>
<Value name="4">
<Value>CLINICATTR</Value>
</Value>
<Value name="5">
<Value>OUTPORINP</Value>
</Value>
<Value name="6">
<Value>INTERNALORSERGERY</Value>
</Value>
<Value name="7">
<Value>DISPLAYORDER</Value>
</Value>
<Value name="8">
<Value>TOTALBEDNUM</Value>
</Value>
<Value name="9">
<Value>PYM</Value>
</Value>
<Value name="10">
<Value>ROWKEY</Value>
</Value>
<Value name="11">
<Value>DEPTLV</Value>
</Value>
<Value name="12">
<Value>SUPERCODE</Value>
</Value>
<Value name="13">
<Value>ID</Value>
</Value>
</Data>
<DefaultData>DeptDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
