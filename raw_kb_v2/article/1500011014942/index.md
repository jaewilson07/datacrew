

Intro
-------

Oracle Sales Cloud is a customer relationship management solution that offers capabilities and features enabling companies to significantly grow through accelerated sales, improved customer engagement, and more. It enables modern selling with tools that are easy to deploy and use, completely mobile, packed with powerful analytics, and built for collaborative selling and revenue generation.Use this connector to get data about your opportunities like- your team's opportunities, territories opportunities, subordinate opportunities, and so on.


 You connect to your Oracle Sales Cloud account in the Data Center. This topic discusses the fields and menus that are specific to the Oracle Sales Cloud connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in

Adding a DataSet Using a Data Connector

.


 Prerequisites
---------------

To connect to your Oracle Sales Cloud account and create a DataSet, you must have the following:

 Your Oracle Sales Cloud username and password
* Your Oracle Sales Cloud REST Server URL. It's the URL of your Oracle Cloud service. Example:


 https://servername.fa.us2.oraclecloud.com

Connecting to Your

Oracle Sales Cloud

Account
-----------------------------------------------------

This section enumerates the options in the Credentials and Details panes in the Oracle Sales Cloud Connector page. The components of the other panes in this page,
 **Scheduling**
 and
 **Name & Describe Your DataSet**
 , are universal across most connector types and are discussed in greater length in

Adding a DataSet Using a Data Connector

.

##
 Credentials Pane

This pane contains fields for entering credentials to connect to your Oracle Sales Cloud account. The following table describes what is needed for each field:


 Field
  |
 Description
  |
| --- | --- |
|
 Username
  |
 Enter your Oracle Sales Cloud username.
  |
|
 Password
  |
 Enter your Oracle Sales Cloud password.
  |
|
 API URL
  |
 Enter your Oracle Sales Cloud REST Server URL. It's the URL of your Oracle Cloud service. Example:


 https://servername.fa.us2.oraclecloud.com

|

Once you have entered valid Oracle Sales Cloud credentials, you can use the same account any time you go to create a new Oracle Sales Cloud DataSet. You can manage Connector accounts in the
 **Accounts**
 tab in the Data Center. For more information about this tab, see

Managing User Accounts for Connectors

.

##
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
 Select the Oracle Sales Cloud report you want to run. The following reports are available:


|  |  |
| --- | --- |
|
 Opportunities
  |
 Returns all the opportunities like sales, revenue for all the products.
  |

|
|
 Record Set
  |
 Select the record set you want to retrieve the opportunities data for.
  |
|
 Status Code
  |
 Enter the status code.
  |
|
 Date Selection
  |
 Select the date format for your data.
  |
|
 Single Date
  |
 Select whether the report data is for a specific date or for a relative number of days back from today.
  |
|
 Specific Date
  |
 Select the specific date using the date selector.
  |
|
 Relative Date
  |
 Enter the number of days back that you would like to get data for in the
 ****Days Back****
 field. Specify either today or 0, yesterday or 1, or today-7 or 7 to get data for 7 days into the past.
  |
|
 Date Range
  |
 Select the specific or relative date range.
  |
|
 Start Date - Specific
  |
 Select the first date in your date range using the date selector.
  |
|
 End Date - Specific
  |
 Select the last date in your date range using the date selector.
  |
|
 Start Date - Relative
  |
 Enter the number of days back that you would like to get data from (start day). Combine with
 ****************End Date****************
 to create a range of represented days.


 For example, if you entered 10 for
 ****************Start Date****************
 and 5 for
 ****************End Date****************
 , the report would contain data for 10 days ago up until 5 days ago.
  |
|
 End Date - Relative
  |
 Enter the number of days back that you would like to get data to (end day). Combine with
 ****************Start Date****************
 to create a range of represented days.


 For example, if you entered 10 for
 ****************Start Date****************
 and 5 for
 ****************End Date****************
 , the report would contain data for 10 days ago up until 5 days ago.
  |


###
 Other Panes

For information about the remaining sections of the Connector interface, including how to configure scheduling, retry, and update options, see

Adding a DataSet Using a Data Connector

.


 FAQs
------


####
 Which endpoint(s) does each report call in this Connector?


|
 Report Name
  |
 Endpoint URL(s)
  |
| --- | --- |
|
 Opportunities
  |
 /crmRestApi/resources/11.13.18.05/opportunities
  |


####
 What kind of credentials do I need to power up this Connector?


 You need the username and password associated with your Oracle Sales Cloud account, and the URL of your Oracle Cloud service (Example:

https://{

servername}.fa.us2.oraclecloud.com.)

###

Can I use the same Oracle Sales Cloud account to create multiple datasets?

Yes

###

Are there any API limits that I need to be aware of?

No

###

How often can the data be updated?

As often as needed.

Troubleshooting
-----------------


* Make sure your authentication remains valid.
* Review the configuration to make sure that all required items have been selected.
* Review the Connector history for error messages.
* In rare cases, you may be requesting too much information and reaching API limitations or timeouts. If this is the case, you can review the history of the Connector run to see the error message and duration. If this is the case, you can reduce the number of accounts that are being pulled, choose a smaller number of metrics for the report that you are pulling, or reduce the timeframe that you are trying to pull.


