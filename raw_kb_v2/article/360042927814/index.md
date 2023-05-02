

Intro
-------

One Click Retail provides ecommerce data measurement, sales analytics and search optimization for brand manufacturers. Use Domo's One Click Retail connector to retrieve your data from One Click Retail. To learn more about One Click Retail, visit their website (

http://www.oneclickretail.com

).


 You connect to your One Click Retail account in the Data Center. This topic discusses the fields and menus that are specific to the One Click Retail connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in

Adding a DataSet Using a Data Connector

.


 Prerequisites
---------------

To connect to your One Click Retail account and create a DataSet, you must have the following:

 A One Click Retail API key.
* A One Click Retail UUID.

For more information, reach out to your One Click Retail account representative.


 Connecting to Your One Click Retail Account
---------------------------------------------


 This section enumerates the options in the
 **Credentials**
 and
 **Details**
 panes in the One Click Retail Connector page. The components of the other panes in this page,
 **Scheduling**
 and
 **Name & Describe Your DataSet**
 , are universal across most connector types and are discussed in greater length in

Adding a DataSet Using a Data Connector

.


###

Credentials Pane


 This pane contains fields for entering credentials to connect to your One Click Retail account. The following table describes what is needed for each field:


|

Field

|

Description

|
| --- | --- |
|
 API Key
  |
 Enter your One Click Retail API key.
  |
|
 Client UUID
  |
 Enter your One Click Retail UUID.
  |


 Once you have entered valid One Click Retail credentials, you can use the same account any time you go to create a new One Click Retail DataSet. You can manage connector accounts in the
 **Accounts**
 tab in the Data Center. For more information about this tab, see

Managing User Accounts for Connectors

.


###
 Details Pane

This pane contains various menus in which you configure the data you want to retrieve from One Click Retail.


 Menu
  |
 Description
  |
| --- | --- |
|
 Filter ID (Optional)
  |
 If you want your report to include specific data from your One Click Retail account, enter the filter ID here.
  |
|
 Weeks Back or Select Dates
  |
 Select whether you want to pull data for a specific number of weeks back or input a data range.
  |
|
 Weeks Back
  |
 Enter the number of weeks back you want to pull data for.
  |
|
 Duration
  |
 Select whether you want to pull data for a specific date or a date range.
  |
|
 Report Date
  |
 Select whether the report data is for a specific date or for a relative number of days back from today.
  |
|
 Select Specific Date
  |
 Select the date for the report.
  |
|
 Days Back
  |
 Enter the number of past days that should appear in the report.
  |
|
 Start Date
  |
 Specify whether the first date in your date range is a specific or relative date. You select the last date in your range in
 **End Date**
 .
  |
|
 End Date
  |
 Specify whether the second date in your date range is a specific or relative date. You select the first date in your range in
 **Start Date**
 .
  |
|
 Select Specific Start Date
  |
 Select the first date in your date range.
  |
|
 Select Specific End Date
  |
 Select the second date in your date range.
  |
|
 Days Back to Start From
  |
 Enter the number of the farthest day back that should be represented in the report. Combine with
 **Days Back to End At**
 to create a range of represented days.


 For example, if you entered

10

for
 **Days Back to Start From**
 and

5

for
 **Days Back to End At**
 , the report would contain data for 10 days ago up until 5 days ago.
  |
|
 Days Back to End At
  |
 Enter the number of the most recent day back that should be represented in the report. Combine with
 **Days Back to Start From**
 to create a range of represented days.


 For example, if you entered

10

for
 **Days Back to Start From**
 and

5

for
 **Days Back to End At**
 , the report would contain data for 10 days ago up until 5 days ago.
  |


###
 Other Panes

For information about the remaining sections of the connector interface, including how to configure scheduling, retry, and update options, see

Adding a DataSet Using a Data Connector

.


 FAQs
------


#####
 How often can the data be updated?

As often as needed.

####
 Are there any API limits I should be aware of?

No.

