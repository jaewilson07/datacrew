

Intro
-------

NetSuite creates products for enterprise resource planning, financial management, e-commerce, and customer relationship management. You can use Domo's NetSuite SuiteAnalytics Connect Partition Connector to pull data from tables you have access to through NetSuite using custom SQL queries. For more information about NetSuite SuiteAnalytics, visit their website. (

http://www.netsuite.com/portal/products/business-intelligence.shtml

)


 The NetSuite Suite Analytics Partition connector is a "Cloud App" connector, meaning it retrieves data stored in the cloud. In the Data Center, you can access the connector page for this and other Cloud App connectors by clicking
 ****Cloud App****
 in the toolbar at the top of the window.


 You connect to NetSuite in the Data Center. This topic discusses the fields and menus that are specific to the NetSuite SuiteAnalytics Connect Partition connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in

Adding a DataSet Using a Data Connector

.


**Note:**
 This connector does not allow you to retrieve already created Saved Searches.

If you need to see the same results provided by these Save Search reports in Domo, you should create a new DataSet for each raw table involved in your end results and use Domo’s ETL tools to combine these DataSets.

Prerequisites
---------------

To connect to NetSuite and create a DataSet, you must have the following:

 Access to the SuiteAnalytics API, which you or your company must have purchased already (you can check to see if you have access by opening NetSuite Help Center in your NetSuite instance)
* Your NetSuite username and password
* The name of your NetSuite Service Host
* The number of your NetSuite Service Port
* Your NetSuite DataSource
* Your NetSuite Role ID
* Your NetSuite Account ID

You can find instructions for configuring
 ****SuiteAnalytics Connect by opening Suite Analytics (Dashboards, Searches, & Reports) > SuiteAnalytics Connect > Introducing SuiteAnalytics Connect > Getting Started****
 .


 Your Service Host, Service Port, DataSet, Role ID, and Account ID can be found in the "SuiteAnalytics Connect: JDBC Driver Setup" screen in NetSuite. Follow these instructions to access this screen:

. Sign into Netsuite at

https://system.netsuite.com/pages/login.jsp

.
2. Click
 ****Set Up SuiteAnalytics Connect****
 , which is located under
 ****Settings****
 in the bottom left corner of the screen.
3. Click
 ****JDBC****
 .
4. Click
 ****Default Configuration****
 .
5. Copy all of the information into the required fields in Domo.

Connecting to NetSuite SuiteAnalytics Connect
-----------------------------------------------

This section enumerates the options in the
 ****Credentials****
 and
 ****Details****
 panes in the NetSuite SuiteAnalytics Connect Connector page. The components of the other panes in this page,
 ****Scheduling****
 and
 ****Name & Describe Your DataSet****
 , are universal across most connector types and are discussed in greater length in

Adding a DataSet Using a Data Connector

.

##
 Credentials Pane

This pane contains fields for entering credentials to connect to your database. The following table describes what is needed for each field:


 Field
  |
 Description
  |
| --- | --- |
|
 Service Host
  |
 Enter the name of your NetSuite Service Host. For more information, see "

Prerequisites

," above.
  |
|
 Service Port
  |
 Enter your NetSuite Service Port number. For more information, see "

Prerequisites

," above.
  |
|
 Service Data Source
  |
 Enter the name of your NetSuite Service Data Source. For more information, see "

Prerequisites

," above.
  |
|
 Username
  |
 Enter your NetSuite username.
  |
|
 Password
  |
 Enter your NetSuite password.
  |
|
 Role ID
  |
 Enter your NetSuite Role ID number. For more information, see "

Prerequisites

," above.
  |
|
 Account ID
  |
 Enter your NetSuite Account ID number. For more information, see "

Prerequisites

," above.
  |

Once you have entered valid NetSuite credentials, you can use the same account any time you go to create a new NetSuite SuiteAnalytics Connect Partition DataSet. You can manage connector accounts in the
 ****Accounts****
 tab in the Data Center. For more information about this tab, see

Managing User Accounts for Connectors

.

##
 Details Pane

In this pane you create an SQL query to retrieve data from NetSuite database tables. You can choose a specific database table and partition column name. You can also specify the number of past days you want to get data for.


 Menu
  |
 Description
  |
| --- | --- |
|
 Query
  |
 Enter the SQL query to execute. Example:

select DATE from employee
  |
|
 Table Name
  |
 Select the database table.
  |
|
 Partition Column Name
  |
 Select partition column name.
  |
|
 Past Days
  |
 Enter the number of past days that you want to get data for. Value can be X, where X is a positive integer. Example: 30.
  |
|
 Date Format
  |
 Select the required date format. By default
 ********************************yyyy-MM-dd********************************
 will be used.
  |
|
 Custom Date Format
  |
 Enter the custom date format you wish to apply to your data.
  |


###
 Other Panes

For information about the remaining sections of the connector interface, including how to configure scheduling, retry, and update options, see

Adding a DataSet Using a Data Connector

.


 Troubleshooting
-----------------


* The API will not return data that the user does not have access to. Likewise, if a user has filtered settings, e.g. to only see Income Statement accounts and not Balance Sheet accounts, only the data with permission will be returned (so the user would not get balance sheet accounts in the DataSet.) Data access is managed by a NetSuite Admin within a customer's organization.
* You may not have access to all the available data in your NetSuite instance. If you try to pull data that you don’t have access to, you will get an error or incomplete results. If this happens, you may have to talk to a NetSuite administrator to get access to the specific data.


