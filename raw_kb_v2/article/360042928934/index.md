

Intro
-------

Oracle Autonomous Data Warehouse Cloud (Oracle ADWC) is a fully-managed, high-performance, and elastic data warehouse service. You can use Domo's Oracle ADWC connector to pull data from your Oracle data warehouse and compile custom reports. To learn more about the Oracle ADWC, visit their website (

https://cloud.oracle.com/en\_US/datawarehouse

).


 You connect to your Oracle ADWC account in the Data Center. This topic discusses the fields and menus that are specific to the Oracle ADWC connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in

Adding a DataSet Using a Data Connector

.


 Prerequisites
---------------

To connect to your Oracle ADWC account and create a DataSet, you must have the following:

 The name of the service you want to connect to. Your service names are found in the

tnsnames.ora

file inside your connection wallet. Each service name is the text on the left of the

'='

in each entry in

tnsnames.ora

.

*Note:**
 The entries may contain a field named
 **service\_name**
 . This is
 *not*
 the Oracle service that needs to be provided.

For example, the Oracle service of the following entry is

adw\_high

.


`adw_high = (description= (address=(protocol=tcps)(port=1522)(host=

adb.us-phoenix-1.oraclecloud.com

))(connect_data=(service_name=qfd8c2d8u4sdf_adw_high.

adwc.oraclecloud.com

)))`
* Your Oracle database username and password
* A Base64-encoded wallet file. You can download this file from the Oracle ADWC console. To encode the wallet file, use the command line to navigate to the directory of your zipped wallet file. Run the command corresponding to your operating system, replacing

wallet.zip

with the name of your wallet file:


 Windows:

certutil -encode wallet.zip encoded\_wallet.txt

Mac/Linux:

base64 -i wallet.zip -o encoded\_wallet.txt

This will generate a text file named

encoded\_wallet.txt

. Open this file and copy ALL of the text. Paste the text into the
 **Base64 Encoded Wallet**
 field.


###
 Whitelisting

Before you can connect to an Oracle database, you must also whitelist a number of IP addresses on your database server on the port you want to connect to. For the full list of IP addresses, see

Whitelisting IP Addresses for Connectors

.


 Connecting to Your Oracle ADWC Database
-----------------------------------------


 This section enumerates the options in the
 **Credentials**
 and
 **Details**
 panes in the Oracle ADWC Connector page. The components of the other panes in this page,
 **Scheduling**
 and
 **Name & Describe Your DataSet**
 , are universal across most connector types and are discussed in greater length in

Adding a DataSet Using a Data Connector

.


###

Credentials Pane


 This pane contains fields for entering credentials to connect to your Oracle ADWC database. The following table describes what is needed for each field:


|

Field

|

Description

|
| --- | --- |
|
 Oracle Service
  |
 Enter the name of the Oracle service you want to connect to. For more information about locating your service, see "Prerequisites," above.
  |
|
 Database Username
  |
 Enter your Oracle database username.
  |
|
 Database Password
  |
 Enter your Oracle database password.
  |
|
 Base64 Encoded Wallet
  |
 Enter the copied text from the

encoded\_wallet.txt

file. For more information about generating this file, see "Prerequisites," above.
  |


 Once you have entered valid credentials, you can use the same account any time you go to create a new Oracle ADWC DataSet. You can manage connector accounts in the
 **Accounts**
 tab in the Data Center. For more information about this tab, see

Managing User Accounts for Connectors

.


###
 Details Pane

In this pane you input the SQL query you want to use to pull data from your Oracle database. Optionally, you can also indicate the specific table and columns from that table to bring into Domo.


 Menu
  |
 Description
  |
| --- | --- |
|
 Query
  |
 Enter the SQL query to use to retrieve your data. You can use the
 **Query Helper**
 parameter to help you write a usable SQL query. To use the
 **Query Helper**
 , do the following:
 1. Select your database table and table columns in the appropriate menus.
2. Copy the SQL statement that appears in the
 **Query Helper**
 field.
3. Paste the copied SQL statement into the
 **Query**
 field.
 |
|
 Database Tables
  |
 Select the database tables you want to pull into Domo, if desired.
  |
|
 Table Columns
  |
 Select the table columns you want to pull into Domo.
  |
|
 Query Helper
  |
 (Optional) Copy and paste the SQL statement in this field into the
 **Query**
 field. For more information, see
 **Query**
 , above.
  |


###
 Other Panes

For information about the remaining sections of the connector interface, including how to configure scheduling, retry, and update options, see

Adding a DataSet Using a Data Connector

.


 FAQ
-----


####
 How do I find and upload the wallet file?

See "Prerequisites" near the top of this page.

###
 How do I find services to connect to?

See "Prerequisites" near the top of this page.

