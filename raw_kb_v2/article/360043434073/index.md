

Intro
-------

NUVI is a real-time analytics platform for social media. NUVI does not have API documentation available, but you can visit their website at

https://www.nuvi.com/

.


 You connect to your NUVI account in the Data Center using PostgreSQL credentials. This topic discusses the fields and menus that are specific to the NUVI connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in

Adding a DataSet Using a Data Connector

.


 Prerequisites
---------------

Domo's NUVI connector pulls data from a PostgreSQL database. To connect to your NUVI account and create a DataSet, you must have PostgreSQL credentials, as follows:

 The username and password you use to log into your PostgreSQL database
* The host name for the database
* The port number for the database
* The database name

CA certificate text or URL path is required
 *only*
 if you select
 **Certificate text**
 or
 **URL path**
 , respectively, in the
 **Certificate type**
 menu.


 Before you can connect to a PostgreSQL database, you must also whitelist a number of IP addresses on your database server on the port you want to connect to. For the full list of IP addresses, see

Whitelisting IP Addresses

.


 Connecting to Your NUVI Account
---------------------------------


 This section enumerates the options in the
 **Credentials**
 and
 **Details**
 panes in the NUVI Connector page. The components of the other panes in this page,
 **Scheduling**
 and
 **Name & Describe Your DataSet**
 , are universal across most connector types and are discussed in greater length in

Adding a DataSet Using a Data Connector

.


###

Credentials Pane


 This pane contains fields for entering credentials to connect to NUVI's PostgreSQL database. The following table describes what is needed for each field:


|

Field

|

Description

|
| --- | --- |
|
 Username
  |
 Enter your PostgreSQL username.
  |
|
 Password
  |
 Enter your PostgreSQL password.
  |
|
 Host
  |
 Enter the host name for the SQL database. For example:


 db.company.com


 |
|
 Port
  |
 Enter the port number for the database.
  |
|
 Certificate
  |
 Paste the text for your CA certificate or enter the URL where your certificate is located. This is optional. If you do not want to include a certificate, select
 **No certificate**
 in the
 **Certificate Type**
 menu.
  |
|
 Certificate Type
  |
 Select a certificate type. If you do not want to include a certificate, select
 **No certificate**
 . If you select Certificate text, you must paste the text for your certificate in the
 **Certificate**
 field. If you select
 **URL path**
 , you must enter the URL where your certificate is located in the
 **Certificate**
 field.
  |
|
 Database
  |
 Enter the name of the SQL database.
  |


 Once you have entered valid credentials, you can use the same account any time you go to create a new NUVI DataSet. You can manage connector accounts in the
 **Accounts**
 tab in the Data Center. For more information about this tab, see

Managing User Accounts for Connectors

.


###
 Details Pane

This pane contains a primary
 **Reports**
 menu, along with various other menus which may or may not appear depending on the report type you select.


 Menu
  |
 Description
  |
| --- | --- |
|
 Report
  |
 Select the NUVI report you want to run. The following reports are available:


|  |  |
| --- | --- |
|
 Authors and Sentiment
  |
 Returns author and sentiment data.
  |
|
 Authors, Genders, Posts, and Sharing
  |
 Returns data about authors, genders, posts, and sharing.
  |
|
 Categories
  |
 Returns a list of categories.
  |
|
 Hashtags
  |
 Returns a list of hashtags.
  |
|
 Keywords
  |
 Returns a list of keywords.
  |
|
 Last 100,000 Mentions
  |
 Returns a list of the last 100,000 mentions.
  |
|
 Locations
  |
 Returns a list of locations.
  |
|
 Sentiment
  |
 Returns a list of sentiments.
  |
|
 Themes
  |
 Returns a list of themes.
  |
|
 User Mentions
  |
 Returns a list of user mentions.
  |
|
 Custom Query
  |
 Returns data based on a specified query.
  |

|
|
 Query
  |
 Enter a custom query to return data based on that query.
  |
|
 Table Name
  |
 Select the table containing the data you want to pull into Domo.
  |
|
 Column Names
  |
 Select the columns containing the data you want to pull into Domo.
  |
|
 Query Helper (Optional)
  |
 Copy and paste the SQL statement in this field into the
 **Query**
 field. For more information, see
 **Query**
 , above.
  |


###
 Other Panes

For information about the remaining sections of the connector interface, including how to configure scheduling, retry, and update options, see

Adding a DataSet Using a Data Connector

.

