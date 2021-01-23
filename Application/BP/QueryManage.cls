/// Classname Application.BP.QueryManage
/// Summary   查询消息流程管理
/// Version   1.0
/// Date      2021年1月20日 09:00
Class Application.BP.QueryManage Extends Ens.BusinessProcessBPL
{

/// BPL Definition
XData BPL [ XMLNamespace = "http://www.intersystems.com/bpl" ]
{
<process language='objectscript' request='Ens.Request' response='Ens.Response' component='1' height='2000' width='2000' >
<context>
<property name='SQLMessage' type='Application.MSG.SQLMessage' instantiate='0' />
</context>
<sequence xend='200' yend='800' >
<switch name='判断服务类别' xpos='200' ypos='250' xend='200' yend='700' >
<annotation><![CDATA[判断服务类别]]></annotation>
<case condition='$CLASSNAME(request)="Application.MSG.QueryMsg"' name='SQL查询模型' >
<assign name="Global对应SQL模版" property="context.SQLMessage.SqlModel" value="^Ens.LookupTable(&quot;QueryService&quot;,request.Resource_request.&quot;Query_Parameters&quot;)" action="set" xpos='470' ypos='400' >
<annotation><![CDATA[SQL模版对应]]></annotation>
</assign>
<assign name="查询信息赋值" property="context.SQLMessage.QueryInfo" value="request" action="set" xpos='470' ypos='500' >
<annotation><![CDATA[查询信息赋值]]></annotation>
</assign>
<call name='发送查询消息给SQL查询信息BO' target='信息查询SQL服务BO' async='0' xpos='470' ypos='600' >
<request type='Ens.Request' >
<assign property="callrequest" value="context.SQLMessage" action="set" />
</request>
<response type='Ens.Response' >
<assign property="response" value="callresponse" action="set" />
</response>
</call>
</case>
<default>
<code name='告警块(勿动)' xpos='200' ypos='400' >
<annotation><![CDATA[如果没有进入任何一个分支进行告警提示。]]></annotation>
<![CDATA[
  $$$LOGERROR(request.OriginalDocId_"该事件没有进入到本流程内任何一个分支中！请确认有该服务分支！")]]>
</code>
</default>
</switch>
</sequence>
</process>
}

Storage Default
{
<Type>%Storage.Persistent</Type>
}

}
