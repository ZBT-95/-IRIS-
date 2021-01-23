/// Classname Application.PD.QueryProduction
/// Summary   查询服务应用程序
/// Version   1.0
/// Date      2021年1月20日 09:00
Class Application.PD.QueryProduction Extends Ens.Production
{

XData ProductionDefinition
{
<Production Name="Application.PD.QueryProduction" TestingEnabled="true" LogGeneralTraceEvents="false">
  <Description>查询业务应用程序</Description>
  <ActorPoolSize>2</ActorPoolSize>
  <Item Name="患者信息查询服务BS" Category="查询服务管理" ClassName="Application.SOAP.BS.QueryService" PoolSize="0" Enabled="true" Foreground="false" Comment="患者查询服务" LogTraceEvents="true" Schedule="">
    <Setting Target="Host" Name="TargetConfigNames">信息查询流程BP</Setting>
  </Item>
  <Item Name="信息查询SQL服务BO" Category="查询服务管理" ClassName="Application.SQL.BO.QueryOperation" PoolSize="1" Enabled="true" Foreground="false" Comment="患者信息服务BO" LogTraceEvents="true" Schedule="">
    <Setting Target="Adapter" Name="DSN">JDBCJH</Setting>
    <Setting Target="Adapter" Name="JGService">JavaGateway服务</Setting>
  </Item>
  <Item Name="JavaGateway服务" Category="查询服务管理" ClassName="EnsLib.JavaGateway.Service" PoolSize="1" Enabled="true" Foreground="false" Comment="JavaGateway服务" LogTraceEvents="false" Schedule="">
  </Item>
  <Item Name="信息查询流程BP" Category="查询服务管理" ClassName="Application.BP.QueryManage" PoolSize="1" Enabled="true" Foreground="false" Comment="" LogTraceEvents="false" Schedule="">
  </Item>
</Production>
}

}
