Class Demo.UTIL.MSG.RequestMsg Extends Ens.Request
{

Parameter XMLNAME = "REQUEST";

Property parm As %String(XMLNAME = "PARM");

Property method As %String(XMLNAME = "METHOD");

Property global As list Of %String(MAXLEN = "", XMLNAME = "GOBAL", XMLPROJECTION = "element");

Storage Default
{
<Data name="RequestMsgDefaultData">
<Subscript>"RequestMsg"</Subscript>
<Value name="1">
<Value>parm</Value>
</Value>
<Value name="2">
<Value>method</Value>
</Value>
<Value name="3">
<Value>global</Value>
</Value>
<Value name="4">
<Value>parg</Value>
</Value>
</Data>
<DefaultData>RequestMsgDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}

