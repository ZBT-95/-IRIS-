利用Intersystems IRIS数据平台内置多模型整合医院信息查询业务解决方案
概述：
随着医院信息化建设的逐步完善，医院子系统越来越多，系统间接口越来越多，同时接口费用不断增加，管理工作变得越来越复杂。其中，查询类业务接口根据业务类型分化，数量也是逐步递增，带来接口量大、开发工作繁重、代码冗余、维护困难等等问题。针对这一困境，我们利用Intersystems IRIS数据平台内置多模型整合医院信息查询业务解决方案。该应用程序可通过配置完成查询业务接口实现，大大缩小开发、维护、实施等项目关键运转周期。
关键应用：IRIS、REST API、ObjectScript、Globals 、SQL、DATA LOOKUP TABLES
应用程序采用模型及应用介绍：

1.采用模型
1.1. Globals (key-value)
Globals是可以在IRIS数据库中存储和管理的稀疏多维数组。您可以使用ObjectScript和本机API处理Globals。
工具:
https://docs.intersystems.com/irislatest/csp/docbook/DocBook.UI.Page.cls?KEY=GGBL_MANAGING
应用：
应用程序根据Globals的键值对、访问速度快的特性。应用在本次程序的Rest分派类与BP流程管理中取值应用，解决了频繁取值速度慢、实现在查找表前端页面配置操作，如：存储了SQL模型、服务配置信息等等。
1.2. SQL访问
InterSystems IRIS通过 ObjectScript、REST API及JDBC提供对数据的SQL访问.
工具:
https://docs.intersystems.com/irislatest/csp/docbook/Doc.View.cls?KEY=GSQL_smp
应用：
在查询业务中，三方系统不配合接口改造，导致接口实现困难问题。此时，我们采用IRIS内嵌模型ObjectScript、REST API及JDBC来实现对数据的SQL访问，来建立业务接口。
1.3. Object访问
通过ObjectScript、REST API，InterSystems IRIS提供了在Globals 存储和更改对象实例的途径。
文档：
https://docs.intersystems.com/irislatest/csp/docbook/Doc.View.cls?KEY=PAGE_multimodel_object
应用：
在整个交互过程中，直接操纵InterSystems IRIS对象。ObjectScript类定义通常用作创建对象（例如患者，科室或医护人员）的模板。

2.	建立应用案例（此应用程序以患者为例）
2.1应用搭建：
2.1.2基本环境
IRIS版本信息：IRIS for Windows (x86-64) 2020.1 (Build 215U) Mon Mar 30 2020 20:14:33 EDT [HealthConnect:2.1.0]
IRIS具有JAVA、JDBC环境
可采用PostMan进行测试
2.1.2安装步骤
①建立Rest服务
新建Web应用程序→配置分派类→配置权限。
该步骤可见图片：应用程序运行情况/webaplication(Query).png及webaplication(role).png
②配置SQL-JDBC
建立SQL连接，连接测试数据库Mysql，导入测试jhip_patient_info.sql
③配置查找表
Global-^Ens.LookupTable中查找表文件导入
④导入代码
导入ApplicationCode中的代码，编译，打开Production,
注意：修改BO配置信息（DNS）、配置JavaGateway等
2.2应用流程

2.3应用测试
可采用Postman工具（其他工具也可以）进行测试验证
Postman可导入Query.postman_collection.json，更改IP、端口号信息、URL进行测试。
2.4应用总结
本应用程序以查询患者服务为案例，可进行入站出站协议、查询条件、业务类型都可进行配置丰富实现，来解决查询业务接口问题。
