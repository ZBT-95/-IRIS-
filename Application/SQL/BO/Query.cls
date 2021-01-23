/// Classname Application.SQL.BO.Query
/// Summary   查询服务通用BO
/// Version   1.0
/// Date      2021年1月20日 09:00
Class Application.SQL.BO.Query Extends Ens.BusinessOperation
{

Parameter ADAPTER = "EnsLib.SQL.OutboundAdapter";

Property Adapter As EnsLib.SQL.OutboundAdapter;

Parameter INVOCATION = "Queue";

Method OnMessage(pInput As Application.MSG.SQLMessage, Output pOutput As Ens.Response) As %Status
{
	Try{
		//声明输出object实例
		Set Outputobj = $System.OBJ.New("Application.MSG."_pInput.QueryInfo.Resource),pParms=$l(pInput.QueryInfo."Query_Parameters","+")-1
		//对查询信息执行语句进行分析
		Set Result=##class(EnsLib.SQL.Snapshot).%New(),k=1
		For i=1:1:pParms{
			Set pParms(i)=$p(pInput.QueryInfo."Query_Values",",",i)
		}
		//查询服务信息
		Set tSC=..Adapter.ExecuteQueryParmArray(.Result,pInput.SqlModel,.pParms)
		//获取返回条数及列数
		Set Count=Result.RowCountGet(),ColumnCount=Result.GetColumnCount()
		$$$TRACE("Count"_Count)
		FOR j=1:1:Count{
			FOR i=1:1:ColumnCount{
				//获取具体列名
				Set Name=Result.GetColumnName(i)
				//获取具体列对应值
				Set Value=Result.Get(Name,j)
				//为模型赋值
				Set $PROPERTY(Outputobj,$REPLACE(Name,"_",""))=Value
				}
			}
		Set pOutput=Outputobj
	}Catch(ex){	
			$$$LOGERROR(ex.DisplayString())
	}
	Quit $$$OK
}

XData MessageMap
{
<MapItems>
	<MapItem MessageType="Application.MSG.SQLMessage"> 
		<Method>OnMessage</Method>
	</MapItem>
</MapItems>
}

}
