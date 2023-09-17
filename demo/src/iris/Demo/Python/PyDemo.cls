Class Demo.Python.PyDemo
{

/// d ##Class(Demo.Python.PyDemo).Demo("world")
ClassMethod Demo(input As %String) As %String
{
     Set message = "Hello "_input
     Set str="error"
     Try{     
     	Set ^message =^message_" ; "_message
	}Catch e{
		Set ^message ="Global testing : "
	}
	Set pInput=##class(%Library.GlobalCharacterStream).%New()
	Set status=pInput.Write(message)
	Set tSC= ##class(Ens.Director).CreateBusinessService("Demo.Configuration.PydemoBS",.tService)
	Set tSC=tService.OnProcessInput(pInput,.pOutput)
	Set str=pOutput.Read()

    Quit str
}

}

