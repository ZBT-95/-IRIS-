/// Classname Application.MSG.Patient
/// Summary   Patient消息模型
/// Version   1.0
/// Date      2021年1月20日 09:00
Class Application.MSG.Patient Extends Ens.Request
{

Property addrtype As %String(MAXLEN = 2);

Property birthplace As %String(MAXLEN = 100);

Property bloodtype As %String(MAXLEN = 20);

Property city As %String(MAXLEN = 30);

Property combinetype As %Integer;

Property company As %String(MAXLEN = 50);

Property contactname As %String(MAXLEN = 45);

Property contactname2 As %String(MAXLEN = 45);

Property contactphone As %String(MAXLEN = 20);

Property contactphone2 As %String(MAXLEN = 20);

Property contactrelation As %String(MAXLEN = 45);

Property contactrelation2 As %String(MAXLEN = 45);

Property countrycode As %String;

Property createdate As %String;

Property dateofbirth As %String;

Property deathdate As %String;

Property deathid As %String;

Property domianid As %String;

Property hospitaldomaincode As %String;

Property hospitaldomainname As %String;

Property id As %BigInt;

Property idcard As %String;

Property idtype As %String;

Property inpno As %String;

Property inponsupplier As %String;

Property ismaster As %Boolean;

Property ismatched As %Boolean;

Property marriage As %String;

Property motherpid As %String;

Property mpiid As %String;

Property name As %String;

Property nation As %String;

Property nationnality As %String;

Property outpno As %String;

Property patientid As %String;

Property patienttype As %String;

Property phonebusiness As %String;

Property phonehome As %String;

Property postcode As %String;

Property profession As %String;

Property province As %String;

Property pyname As %String;

Property register As %String;

Property removed As %String;

Property sex As %String;

Property streetaddress As %String;

Property suppliersystemid As %String;

Property updated As %String;

Property zone As %String;

Storage Default
{
<Data name="PatientDefaultData">
<Subscript>"Patient"</Subscript>
<Value name="1">
<Value>addrtype</Value>
</Value>
<Value name="2">
<Value>birthplace</Value>
</Value>
<Value name="3">
<Value>bloodtype</Value>
</Value>
<Value name="4">
<Value>city</Value>
</Value>
<Value name="5">
<Value>combinetype</Value>
</Value>
<Value name="6">
<Value>company</Value>
</Value>
<Value name="7">
<Value>contactname</Value>
</Value>
<Value name="8">
<Value>contactname2</Value>
</Value>
<Value name="9">
<Value>contactphone</Value>
</Value>
<Value name="10">
<Value>contactphone2</Value>
</Value>
<Value name="11">
<Value>contactrelation</Value>
</Value>
<Value name="12">
<Value>contactrelation2</Value>
</Value>
<Value name="13">
<Value>countrycode</Value>
</Value>
<Value name="14">
<Value>createdate</Value>
</Value>
<Value name="15">
<Value>dateofbirth</Value>
</Value>
<Value name="16">
<Value>deathdate</Value>
</Value>
<Value name="17">
<Value>deathid</Value>
</Value>
<Value name="18">
<Value>domianid</Value>
</Value>
<Value name="19">
<Value>hospitaldomaincode</Value>
</Value>
<Value name="20">
<Value>hospitaldomainname</Value>
</Value>
<Value name="21">
<Value>id</Value>
</Value>
<Value name="22">
<Value>idcard</Value>
</Value>
<Value name="23">
<Value>idtype</Value>
</Value>
<Value name="24">
<Value>inpno</Value>
</Value>
<Value name="25">
<Value>inponsupplier</Value>
</Value>
<Value name="26">
<Value>ismaster</Value>
</Value>
<Value name="27">
<Value>ismatched</Value>
</Value>
<Value name="28">
<Value>marriage</Value>
</Value>
<Value name="29">
<Value>motherpid</Value>
</Value>
<Value name="30">
<Value>mpiid</Value>
</Value>
<Value name="31">
<Value>name</Value>
</Value>
<Value name="32">
<Value>nation</Value>
</Value>
<Value name="33">
<Value>nationnality</Value>
</Value>
<Value name="34">
<Value>outpno</Value>
</Value>
<Value name="35">
<Value>patientid</Value>
</Value>
<Value name="36">
<Value>patienttype</Value>
</Value>
<Value name="37">
<Value>phonebusiness</Value>
</Value>
<Value name="38">
<Value>phonehome</Value>
</Value>
<Value name="39">
<Value>postcode</Value>
</Value>
<Value name="40">
<Value>profession</Value>
</Value>
<Value name="41">
<Value>province</Value>
</Value>
<Value name="42">
<Value>pyname</Value>
</Value>
<Value name="43">
<Value>register</Value>
</Value>
<Value name="44">
<Value>removed</Value>
</Value>
<Value name="45">
<Value>sex</Value>
</Value>
<Value name="46">
<Value>streetaddress</Value>
</Value>
<Value name="47">
<Value>suppliersystemid</Value>
</Value>
<Value name="48">
<Value>updated</Value>
</Value>
<Value name="49">
<Value>zone</Value>
</Value>
</Data>
<DefaultData>PatientDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
