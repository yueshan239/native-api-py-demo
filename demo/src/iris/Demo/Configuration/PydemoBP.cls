/// 
Class Demo.Configuration.PydemoBP Extends Ens.BusinessProcessBPL
{

/// BPL Definition
XData BPL [ XMLNamespace = "http://www.intersystems.com/bpl" ]
{
<process language='objectscript' request='Ens.Request' response='Ens.Response' height='2000' width='2000' >
<context>
<property name='DemoConfigurationPydemoBO' type='Ens.StringResponse' instantiate='0' />
</context>
<sequence xend='197' yend='377' >
<call name='pydemo' target='Demo.Configuration.PydemoBO' async='0' xpos='191' ypos='269' >
<request type='Demo.UTIL.MSG.RequestMsg' >
<assign property="callrequest" value="request" action="set" />
</request>
<response type='Ens.StringResponse' >
<assign property="response" value="callresponse" action="set" />
</response>
</call>
</sequence>
</process>
}

Storage Default
{
<Type>%Storage.Persistent</Type>
}

}

