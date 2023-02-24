---
title: Snowflake Federated Data Setup
url: https://domo-support.domo.com/s/article/360049429094
linked_kbs:  ['[https://domo-support.domo.com/s/knowledge-base/](https://domo-support.domo.com/s/knowledge-base/)', '[https://domo-support.domo.com/s/](https://domo-support.domo.com/s/)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZamlGAC](https://domo-support.domo.com/s/topic/0TO5w000000ZamlGAC)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZannGAC](https://domo-support.domo.com/s/topic/0TO5w000000ZannGAC)', '[https://domo-support.domo.com/s/article/360049429094](https://domo-support.domo.com/s/article/360049429094)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZannGAC/governance-tools](https://domo-support.domo.com/s/topic/0TO5w000000ZannGAC/governance-tools)', '[https://domo-support.domo.com/s/article/360043429933](https://domo-support.domo.com/s/article/360043429933)', '[https://domo-support.domo.com/s/article/360043429953](https://domo-support.domo.com/s/article/360043429953)', '[https://domo-support.domo.com/s/article/360042925494](https://domo-support.domo.com/s/article/360042925494)', '[https://domo-support.domo.com/s/article/360043429913](https://domo-support.domo.com/s/article/360043429913)', '[https://domo-support.domo.com/s/article/4408174643607](https://domo-support.domo.com/s/article/4408174643607)', '[https://domo-support.domo.com/s/login/](https://domo-support.domo.com/s/login/)']
article_id: 000003038
views: 2,644
created_date: 2022-10-24 21:05:00
last updated: 2022-10-24 22:42:00
---



Intro
-----


Domo has a new streamlined Federated connection setup experience for cloud native data warehouses, starting exclusively with Snowflake. You can directly setup a Snowflake connected account from Domo’s Data Center experience and use that to create Federated DataSets from your Snowflake database tables.


Pre-requisites
--------------


To connect to your data in your Snowflake data warehouse, you need standard connection parameters such as your Snowflake account name, warehouses, databases to connect to, and the username/password. In general, you can start with a small-sized warehouse, however, we recommend a multi-cluster configuration which allows Snowflake to auto-scale to additional warehouses as needed to support your query volume.


Step-by-Step Walk through
-------------------------


1. Start with Domo’s data warehouse platter visualization and click on the **+** **Add New Data Warehouse** button.  
  
![Warehouse_step_1.png](Warehouse_step_1.png)
2. Select **Snowflake** Driver and click **Next**.  
  
![Warehouse_step_2.png](Warehouse_step_2.png)
3. Enter your connection parameters specific to the Snowflake database you need to connect to. The following fields are required:
	1. Account Name (to reference within Domo.)
	2. Host – This is the Snowflake account name for your Snowflake account. Note that your full account name may include additional segments that identify the region and the cloud service provider where your Snowflake account is hosted e.g. [xyz1234.us](http://xyz1234.us)-east-1, xyz1234.west-europe.azure, etc. You need to provide your full hostname, e.g. *[yourcompany.snowflakecomputing.com](http://yourcompany.snowflakecomputing.com)*
	3. Warehouse – Existing Snowflake warehouse you need want to use to send queries from Domo. We recommend setting a warehouse specific to Domo.
	4. Username – Snowflake username you want to connect with. We recommend creating a new user in your Snowflake account specifically to service Federated queries from Domo.
	5. Password – Password for your username.
	6. Role and Port are optional depending on your Snowflake account setup.  
	  
	![Warehouse_step_3.png](Warehouse_step_3.png)
4. You should have a Snowflake federate account created now. Common errors are typically due to incorrect connection parameters. Please contact Support for any help needed.  
  
![Warehouse_step_4.png](Warehouse_step_4.png)
5. To create a new Federated DataSet, click on **Federated** in the connect data section of the header in the Data Center.  
  
![Warehouse_step_5.png](Warehouse_step_5.png)
6. You will see a list of available databases in Snowflake, and you can choose the database and the specific table you want to create the Federated DataSet from. The Pane on the right shows you a preview of the data from your Snowflake table.  
  
![2.png](2.png)
7. Enter the name for the DataSet (how you want to reference it in Domo), and you can optionally select a TTL for the cache. The default TTL value for cache is recommended at 900 seconds (15 minutes). If your Snowflake database table is expected to update faster than 15 minutes then you can choose a lower TTL.


On the preview pane on the right, you can also toggle between viewing a preview of the data or viewing the schema of the table being used. Click the **Create** button to complete your Domo Federated DataSet creation.  
  
![Warehouse_step_6.png](Warehouse_step_6.png)
8. You now have a DataSet created in Domo from your Snowflake data! You can create Cards using Analyzer from this DataSet, but ETL, SQL DataFlows and DataSet Alerts are not available to operate on Federated DataSets.




 

**Note:** DataSet Views (Beta) is available for Snowflake Federated DataSets. Please contact your Account Manager or Customer Success Manager for more details.


![Warehouse_step_8.png](Warehouse_step_8.png)


![Warehouse_step_9.png](Warehouse_step_9.png)


FAQ
---


##### What connection mechanism is Domo using for the Snowflake Federated direct queries?


Domo uses native Snowflake connectivity to query data from your Snowflake tables.


##### Can Domo’s Connectors be used to bring data into the Snowflake warehouse?


You can bring data into Domo by using Domo’s 1000+ Connectors supporting various sources. Once your data is in Domo, and transformed as needed, you can use Domo’s Snowflake Write-Back connector to push data into your Snowflake warehouse. Write-Back connectors are part of Domo’s [Integration Studio](https://www.domo.com/product/integration-studio "https://www.domo.com/product/integration-studio") suite. More information on setting up Snowflake Write-Back connector can be found [here](https://domohelp.domo.com/Connect/Connecting_to_Data_with_Connectors/Configuring_Each_Connector/Writeback_Connectors/Snowflake_Writeback_Connector "https://knowledge.domo.com/Connect/Connecting_to_Data_with_Connectors/Configuring_Each_Connector/Writeback_Connectors/Snowflake_Writeback_Connector").


##### Is there a limit on how many Snowflake Federated accounts and DataSets you can create?


Specific limits on accounts and DataSets depend on your account tier. Please contact your CSM or AE for more details.


##### What is the warehouse sizing guidance for using Domo Federated queries for Snowflake?


Warehouse sizing depends on how many DataSets, Dashboards, and Visualizations you have in Domo. At a minimum, we recommend a medium sized warehouse (M), and Auto Resume set to ON. For the best Domo and Snowflake experience, we recommend using a Large Snowflake warehouse (L). If you want to Auto suspend your warehouse during periods of inactivity, you can set that as needed. Domo can help you with sizing your Snowflake warehouses as your Domo usage changes.


##### Do Alerts work with federated data?


Alerts are supported for Domo Cards built from Federated DataSets. However, DataSet Alerts are not supported currently.


##### Does Domo’s DataSet Views Explorer work on Snowflake Federated DataSets?


Yes, Domo’s interactive, easy to use DataSet views feature can be used to explore Snowflake Federated DataSets. You can filter, group, limit, sort, and join DataSets, as well as create new calculated columns and save your transformation as new DataSet Views. These DataSet Views are virtual in Domo, and do not create Views in the customer Snowflake Data warehouse.


##### Can Domo’s ETL and SQL tools be used to transform federated DataSets?


No, currently this isn’t supported, but we would love to understand your use case. Please reach out via your CSM or AE to talk to Domo’s product team.


##### What is the timeout for loading data from Snowflake?


Viewing data on-screen and exporting data are subject to different timeouts within Domo. These timeouts only apply to the Domo side of the action and are not issued to Snowflake. However, Domo does respect the Snowflake session timeout.


Examples:


* If a Card cannot be rendered within the Domo timeout, an error message is displayed on-screen, but the Snowflake query is not canceled. That query is then subject to the timeout defined in Snowflake.
* If a Card cannot be rendered within the Snowflake timeout, and that timeout is less than the Domo timeout, an error message is displayed on-screen and the query is canceled (from the Snowflake side).


Timeouts:


* Cards will attempt to render on-screen for up to 1-minute.
* Exports, both from Cards and DataSets, will attempt to export for up to 12-hours.


To change the Snowflake session timeout, adjust the STATEMENT\_TIMEOUT\_IN\_SECONDS session parameter. We recommend adjusting this setting based on the primary usage of your DataSets. For example, if they're primarily used for exporting, you may want a longer timeout than if the DataSets are primarily being used to render Cards in Domo.

