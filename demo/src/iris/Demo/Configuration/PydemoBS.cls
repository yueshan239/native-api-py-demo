Class Demo.Configuration.PydemoBS Extends EnsLib.SOAP.Service
{

Parameter ADAPTER = "EnsLib.SOAP.InboundAdapter";

Property Adapter As EnsLib.SOAP.InboundAdapter;

Parameter SETTINGS = "TargetConfigNames:Basic:selector?context={Ens.ContextSearch/ProductionItems?targets=1&productionName=@productionId}";

/// Name of the target component receiving the message
Property TargetConfigNames As Ens.DataType.ConfigName;

Method OnProcessInput(pInput As %CharacterStream, Output pOutput As %CharacterStream) As %Status
{
	Set pOutput=##class(%Library.GlobalCharacterStream).%New()
	Set Str=""
	Try{
		If ""=..TargetConfigNames{$$$LOGWARNING("The service configuration prediction did not select a target name to receive messages. Please check the BS frontend settings properties ")}
		Set Request=##class(Demo.UTIL.MSG.RequestMsg).%New()
		Set connect=pInput.Read()
		Set Request.parm=connect
		Set Request.method="This is a testing method"
		Set tSC=..SendRequestSync(..TargetConfigNames,Request,.Output)
		Set Str=Output.StringValue
	 }Catch(e){
		Set Str=e.DisplayString()		 
		$$$LOGERROR("ERROR: "_Str)
	 }
	Set status=pOutput.Write(Str)
	Quit $$$OK
}

}

