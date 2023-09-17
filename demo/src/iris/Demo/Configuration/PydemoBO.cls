Class Demo.Configuration.PydemoBO Extends Ens.BusinessOperation
{

Method Send(pRequest As Demo.UTIL.MSG.RequestMsg, Output pResponse As Ens.StringResponse) As %Status
{
	
	
	Set pResponse=##class(Ens.StringResponse).%New()
	Set Object = ##class(%DynamicObject).%New()
	try{
		Set Object=..response()
		Set Object.parm=pRequest.parm
		Set Object.method=pRequest.method
		Set Object.global=^message
		Set str=Object.%ToJSON()
	}Catch(e){
		Set str=e.DisplayString()
	 	Set tSC=e.AsStatus()
   }
	Set pResponse.StringValue=$REPLACE(str,"\u0000","")
	Quit $$$OK
}

Method response() As %DynamicObject
{
	Set obj={
				"parm": null,
				"method": null,
				"global": null
			}
	Quit obj
}

XData MessageMap
{
<MapItems>
	<MapItem MessageType="Demo.UTIL.MSG.RequestMsg"> 
		<Method>Send</Method>
	</MapItem>
</MapItems>
}

}

