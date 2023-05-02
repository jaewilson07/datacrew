

Intro
-------

IBM Digital Analytics, formerly Coremetrics, allows marketers to gain insight from digital analytics and comparative benchmarks. Use Domo's IBM Digital Analytics connector to retrieve data about top visiting countries, marketing channels and programs, metrics, and top pages. For more information about IBM Digital Analytics, visit their website. (

http://www-03.ibm.com/software/produ...ital-analytics

)


 You connect to your IBM Digital Analytics account in the Data Center. This topic discusses the fields and menus that are specific to the IBM Digital Analytics connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in


 Adding a DataSet Using a Data Connector


 .


 Prerequisites
---------------

To connect to your IBM Digital Analytics account and create a DataSet, you must have the username and password you use to log into your account at

https://welcome.coremetrics.com

.


 Connecting to Your IBM Digital Analytics Account
--------------------------------------------------


 This section enumerates the options in the
 **Credentials**
 and
 **Details**
 panes in the IBM Digital Analytics Connector page. The components of the other panes in this page,
 **Scheduling**
 and
 **Name & Describe Your DataSet**
 , are universal across most connector types and are discussed in greater length in

Adding a DataSet Using a Data Connector

.


###

Credentials Pane


 This pane contains fields for entering credentials to connect to your IBM Digital Analytics account. The following table describes what is needed for each field:


|

Field

|

Description

|
| --- | --- |
|
 Username
  |
 Enter the username for your IBM Digital Analytics account.
  |
|
 Password
  |
 Enter the password for your IBM Digital Analytics account.
  |


 Once you have entered valid IBM Digital Analytics credentials, you can use the same account any time you go to create a new IBM Digital Analytics DataSet. You can manage connector accounts in the
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
 Select the IBM Digital Analytics report you want to run. The following reports are available:


|  |  |
| --- | --- |
|
 Geography Countries
  |
 Returns information about the countries that initiated the most visitor sessions.
  |
|
 Marketing Channels
  |
 Returns information about the performance of your marketing channels.
  |
|
 Marketing Programs Full List
  |
 Returns information about marketing campaigns.
  |
|
 Metrics
  |
 Returns tracked metrics for the specified accounts.
  |
|
 Top Pages
  |
 Returns a list of pages ordered by top number of visitors for the specified accounts.
  |

|
|
 Client IDs
  |
 Enter a comma-separated list of all IBM Digital Analytics client IDs you want to retrieve data for. For example:

123,456,789
  |
|
 Start Days
  |
 Enter the number of the farthest day back that should be represented in the report. Combine with
 **End Days**
 to create a range of represented days.


 For example, if you entered

10

for
 **Start Days**
 and

5

for
 **End Days**
 , the report would contain data for 10 days ago up until 5 days ago. The maximum number of days back for this parameter is 93. Today's data is not available until tomorrow.
  |
|
 End Days
  |
 Enter the number of the most recent day that should be represented in the report. Combine with
 **Start Days**
 to create a range of represented days.


 For example, if you entered

10

for
 **Start Days**
 and

5

for
 **End Days**
 , the report would contain data for 10 days ago up until 5 days ago. The maximum number of days back for this parameter is 93. Today's data is not available until tomorrow.
  |


###
 Other Panes

For information about the remaining sections of the connector interface, including how to configure scheduling, retry, and update options, see


 Adding a DataSet Using a Data Connector


 .

