

Intro
-------

With Cloud Amplifier, you can power your Domo instance using Snowflake.


 This article assumes you


 are familiar with Snowflake and provides information on how to register Snowflake with Cloud Amplifier in the following topics:

 Prerequisites
* Read-only setup
* Write setup
* Use Snowflake-sourced DataSets
* FAQ
* Troubleshooting

Prerequisites
-----------------

Cloud Amplifier setup consists of two parts: Read-only or Read/Write.


 After the Read-only setup is complete, you may begin using virtual tables that read from Snowflake to create cards, set up Alerts, or serve as inputs in Magic ETL flows. You can set up Read only and return later to set up the Write portion.

##
 Recommended Account Creation - All

Before setting up the Snowflake connection, we strongly recommend that you complete the following:

 **(Recommended) ​Create a Snowflake service account —**
 We recommend creating a new Snowflake account specifically for this integration. You can use any account with read access in Snowflake, but a service account is best practice. This account must have read access to your default Snowflake environment in order to create virtual Snowflake tables in Domo.
* **(Recommended) Create a Domo service account —**
 We recommend creating a new Domo account specifically for this integration. The account role must have the Manage Cloud Accounts and Manage DataSet grants enabled.

For more information about roles and grants, see our article about

Managing Custom Roles.


###
 Account Creation - Write

Before registering with Cloud Amplifier for the Write portion of the setup, you must complete the following:

 **(Required) Create a default Snowflake database —**
 You need a Snowflake database that is exclusively for Domo to write Domo-managed tables. During setup, this database is the default.

*Note:**
 Any tables not managed by Domo in this database will not be seen by Cloud Amplifier.


* **(Conditional) Place IP Addresses on an allowlist —**
 If your Snowflake environment restricts access based on IP address, you may need to place Domo IPs on an allowlist.

For more information, see our article about

Allowlisting IP Addresses for Connectors and Federated Adapters

.

*Important:**
 During the Write setup process, you are provided with SQL statements to create the integration. These statements must be executed against your Snowflake environment by a Snowflake administrator with the ACCOUNTADMIN role.

This is a Snowflake requirement and prevents the need to manage your Snowflake administrator credentials within Domo, which is especially important in larger organizations where your Snowflake administrator may not have Domo access. After the integration is established, you no longer need a Snowflake administrator account.

Read-only Setup
-------------------

To set up Read-only access and

to

begin referencing Snowflake tables from within Domo using Cloud Amplifier, follow these steps:

. Log in to your Domo service account.
2. In the navigation header, select
 **Data**
 .


 The Data Center displays.
3. If you are not already there, go to the

*Data Warehouse**
 in the side rail.
4. In the warehouse area of the screen, select the molecule shown below.


 Selecting the molecule brings it


 into focus.
5. Select
 **Add New Cloud**
 .


 The Amplify modal displays.
6. In the modal under
 **Native integration**
 , select
 **Snowflake**
 .


 The
 **Cloud integrations**
 modal displays.
7. Select
 **+ Add New Integration**
 .
8. Enter the Snowflake setup information:
	* **Integration name**
	 — A unique name to help you identify the integration in Domo.
	* (Optional)
	 **Integration description**
	 — A description of the integration.
	* **Snowflake connection URL**
	 — This is your Snowflake URL,


	 which you can find


	 on the Snowflake login page. The URL is in this format:
	 *instancename.region*
	 .snowflakecomputing.com.
	* **Username/password**
	 — The credentials for the Snowflake service account that you created.
9. Select the Snowflake warehouse to use for loading and/or querying data.
10. Read-only configuration is now complete. Continue to the next step to add Snowflake data to Domo.
11. (Optional) Select
 **Choose Data Tables**
 to create DataSets in Domo.


 The modal displays navigation for databases, schemas, and tables in Snowflake that you want to add to Domo. Locate and select the data you want to add and select
 **Create DataSets**
 .

Write Setup
---------------

Registering with Cloud Amplifier for write capabilities is a multi-step process that requires a Snowflake administrator.


 The following graphic displays the process to register a Snowflake instance with Cloud Amplifier:


 Follow these steps to configure write capabilities:
 1. Enter the name of the
 **Default Role**
 that you assigned to the Snowflake service account and the
 **Snowflake write database name**
 .

The
 **Snowflake write database name**
 is the default Snowflake database to which all new data coming from Domo is added. The name is case


 sensitive,


 and each letter should be capitalized.
2. Select
 **Generate SQL**
 to generate SQL unique to this integration.

*Important:**
 You cannot use this SQL for other integrations or accounts and you must regenerate it if the credentials are changed.
3. Copy the SQL from the dialog and execute the SQL against your Snowflake warehouse. This SQL can only be executed by a Snowflake account administrator with the ACCOUNTADMIN role.


 The output of that SQL is a CSV file description of the integration that includes IDs required by Domo to continue setup.
4. Copy the following values from the SQL output:
	* **User ARN**
	 :

 STORAGE\_AWS\_IAM\_USER\_ARN
	* **External ID**
	 : STORAGE\_AWS\_EXTERNAL\_ID


	 Additional SQL is generated to register the ARN and External ID with Domo. A Snowflake administrator with the ACCOUNTADMIN role must execute this SQL against the warehouse you selected for storing data earlier in this process.
5. In Domo, confirm that the script successfully executed.


 Domo then initializes the Snowflake integration, creates required assets in Snowflake, such as tables and schemas, and enables Cloud Amplifier for this account.
6. Finalize the write integration by checking the box to acknowledge that you understand that Domo can make changes to your Snowflake environment.
7. Select
 **Apply**
 .


 When you see the
 **Select Snowflake tables**
 screen, your connection is working.
8. (Optional) The modal displays navigation for databases, schemas, and tables in Snowflake that you want to add to Domo. Locate and select the data you want to add and select
 **Create DataSets**
 .


 Write setup for Snowflake is now complete.

Use Snowflake-sourced DataSets
----------------------------------

When you use Snowflake-sourced DataSets in a DataFlow, the data is queried live from Snowflake at the time the flow is executed. In addition, Snowflake-sourced DataSets are checked for updates every 15 minutes based on the table's

LAST\_ALTERED

DateTime. If a table has been updated since it was last checked, DataFlows that use that table as a trigger will execute.


 FAQ
-------

*Are there requirements for database configuration (outside of Domo) or best practices?**


 Make sure to create a dedicated database inside Snowflake for your Domo integration. If you connect to an existing Snowflake database, then Domo does not see the tables that are in that database.


**What is the guidance around warehouse configuration in Snowflake for Cloud Amplifier?**


 Domo performs different activities within the CDW account, such as data loading and querying. For proof of concepts and initial testing, we recommend a small-sized multi-cluster warehouse (multi-purpose for load and query) set to scale up automatically. You can set a limit on the


 max cluster size to put an upper bound on scaling and limit the cost envelope.


 When you are ready for production data, we recommend setting up warehouses depending on the purpose. Using separate warehouses for querying and loading allows you to optimize performance as needed.


**How do I use data transformation on my Snowflake data?**


 With your data in Snowflake, Domo supports two different mechanisms for transforming data:

. **DataSet Views**
 — DataSet Views provide


 the Views Explorer tool to create data transformations on your Snowflake DataSets. You can perform operations such as filtering, grouping/aggregation, JOINs, UNIONs, and creating calculated columns from a graphic user interface. DataSet Views are created as virtual DataSets, with queries sent back to the parent DataSets.

*Note:**
 Creating a DataSet View in Domo does not create a View (normal or materialized) in Snowflake. The View definition is stored in Domo, and the resulting query is sent to Snowflake table(s) when needed.
2. **Magic ETL DataFlows**
 — Magic ETL is supported with Domo running on the customer's CDW. Using Magic ETL with Snowflake data results in data being exported from Snowflake to Magic ETL in a transient state, processed, and written back to Snowflake. Note that Domo only operates on this data in a transient fashion and does not store DataFlow outputs in Domo. (They are sent to the Snowflake warehouse.)

*Note:**
 Data is cached in the Magic ETL execution environment for seven days, or the two most recent data versions from that Magic ETL execution.

*What is the difference between Domo-managed and customer-managed Snowflake DataSets?**


 When you connect Domo to your Snowflake account, Domo operates over two classes of databases and underlying tables. Tables you create and update directly through independent pipelines or ingestion mechanisms can be explored and registered in Domo, accessible in a read-only fashion. Domo can read and directly query these customer-managed databases.


 Additionally, we recommend creating a new database in Domo for Read/Write access. Domo uses this Domo-managed database to write data that comes


 in through the Domo ingestion pipeline, such as with the thousands of connectors available to bring data into Snowflake. Domo also uses this Domo-managed database to create outputs of data transformations (DataFlow outputs).


**How are permission configured between Domo and Snowflake?**


 Permissions originating in Snowflake are not programmatically passed into Domo. However, you can use Domo's native permission model, as well as personalized data permisssons (PDP) for data security to manage data access to underlying assets in Snowflake.


**What are the differences between using connectors to create DataSets from Snowflake and using Cloud Amplifier to create DataSets?**

 **Leaving data in Snowflake**
 — Perhaps the biggest difference is that all Snowflake connectors import/duplicate data from Snowflake to Domo, while Cloud Amplifier leaves the data in Snowflake.
* **Bulk create**
 — Cloud Amplifier allows you to look up and bulk select up to 50 Snowflake tables to immediately create 50 unique DataSets. To do this with connectors, you would have to configure each DataSet individually with a connector.

Troubleshooting
-------------------

If you get stuck, one of the following troubleshooting steps may help:


**Check Snowflake Service Account**

. Log into Snowflake with the service account credentials.
2. Make sure you can view the default Snowflake Database and can query tables that you expect to import.

*Assign Correct Role**


 Make sure that a Snowflake administrator with the ACCOUNTADMIN role is executing the SQL that Domo provided in Snowflake.


**Use Correct URL**


 Make sure that the Snowflake connection URL in Domo matches the Snowflake login URL.


 You can find the URL on the Snowflake login page. The URL will be in this format:
 *instancename.region.*
 snowflakecomputing.com.


 If you are still experiencing issues, please submit a request to the

Domo Support

team.

