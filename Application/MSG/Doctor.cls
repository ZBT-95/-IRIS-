/// Classname Application.MSG.Doctor
/// Summary   Doctor消息模型
/// Version   1.0
/// Date      2021年2月20日 09:00
Class Application.MSG.Doctor Extends Ens.Request
{

Property rid As %Library.BigInt;

Property jobcode As %Library.String(MAXLEN = 20);

Property jobname As %Library.String(MAXLEN = 30);

Property starttime As %Library.String(MAXLEN = 30);

Property endtime As %Library.String(MAXLEN = 30);

Property pncard As %Library.String(MAXLEN = 20);

Property sexcode As %Library.String(MAXLEN = 10);

Property sex As %Library.String(MAXLEN = 10);

Property birthdate As %Library.String(MAXLEN = 30);

Property deptcode As %Library.String(MAXLEN = 20);

Property deptname As %Library.String(MAXLEN = 100);

Property birthplace As %Library.String(MAXLEN = 255);

Property registercode As %Library.String(MAXLEN = 30);

Property name As %Library.String(MAXLEN = 20);

Storage Default
{
<Data name="DoctorDefaultData">
<Subscript>"Doctor"</Subscript>
<Value name="1">
<Value>rid</Value>
</Value>
<Value name="2">
<Value>jobcode</Value>
</Value>
<Value name="3">
<Value>jobname</Value>
</Value>
<Value name="4">
<Value>starttime</Value>
</Value>
<Value name="5">
<Value>endtime</Value>
</Value>
<Value name="6">
<Value>pncard</Value>
</Value>
<Value name="7">
<Value>sexcode</Value>
</Value>
<Value name="8">
<Value>sex</Value>
</Value>
<Value name="9">
<Value>birthdate</Value>
</Value>
<Value name="10">
<Value>deptcode</Value>
</Value>
<Value name="11">
<Value>deptname</Value>
</Value>
<Value name="12">
<Value>birthplace</Value>
</Value>
<Value name="13">
<Value>registercode</Value>
</Value>
<Value name="14">
<Value>name</Value>
</Value>
</Data>
<DefaultData>DoctorDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
