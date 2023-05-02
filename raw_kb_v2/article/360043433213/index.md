

Intro
-------


 CloudHealth is IT service management for the cloud, enabling policy driven cost, utilization, performance, and security optimization and governance. Domo's CloudHealth connector allows you to retrieve data through prebuilt or customized reports. To learn more about the CloudHealth API, visit their GitHub API site (

https://github.com/CloudHealth/cht\_api\_guide

).

Ben Green

Sep 29, 2016, 9:31 AM

The Cloud Health connector is a "Cloud App" connector, meaning it retrieves data stored in the cloud. In the Data Center, you can access the connector page for this and other Cloud App connectors by clicking
 **Cloud App**
 in the toolbar at the top of the window.

You connect to the CloudHealth API in the Data Center. This topic discusses the fields and menus that are specific to the CloudHealth connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in

Adding a DataSet Using a Data Connector

.


 Prerequisites
----------------


 To connect to the CloudHealth API and create a DataSet, you must have a CloudHealth API key.

*To obtain an API key,**

. Log into CloudHealth using your username and password.
2. Click
 **My Profile**
 .
3. In the
 **API Key**
 section, click
 **Generate API Key**
 .


 Connecting to the CloudHealth API
------------------------------------


 This section enumerates the options in the
 **Credentials**
 and
 **Details**
 panes in the CloudHealth connector page. The components of the other panes in this page,
 **Scheduling**
 and
 **Name & Describe Your DataSet**
 , are universal across most connector types and are discussed in greater length in

Adding a DataSet Using a Data Connector

.


###

Credentials Pane


 In this pane, you connect to CloudHealth by entering your CloudHealth API key in the
 **API Key**
 field. For information about obtaining an API key, see "Prerequisites," above.


 Once you have connected to CloudHealth, you can use the same account any time you go to create a new CloudHealth DataSet. You can manage connector accounts in the
 **Accounts**
 tab in the Data Center. For more information about this tab, see

Managing User Accounts for Connectors

.


###

Details Pane


 This pane contains a primary menu,
 **Report**
 , along with various other menus which may or may not appear depending on the report type you select.


|

*Menu**

|

*Description**

|
| --- | --- |
|

Report Type

|

Select a custom report or the predefined
 **Cost**
 report.

|
|
 Cost Type
  |

Select the cost type for your
 **Cost**
 report.


 Cost types are as follows:

  |  |
| --- | --- |
|

Cost History

|

Retrieves the cost history for the given interval and category.

|
|

Projected Cost

|

Retrieves projected costs for the given interval and category.

|
|

Cost History and Projected Cost

|

Retrieves cost history and projected costs for the given interval and category.

|
|

Possible Optimization Cost

|

Retrieves possible optimization costs for the given interval and category.

|
|

Savings Cost

|

Returns savings costs for the given interval and category.

|
|

Opportunities Savings Cost

|

Returns opportunities savings costs for the given interval and category.

|
|

Operational Monthly Saving

|

Returns operational monthly savings for the given interval and category.

|
|

Security Saving

|

Returns security savings for the given interval and category.

|
|

Immediate Saving

|

Returns immediate savings for the given interval and category.

|


 |
|

Report Interval

|

Select the interval for your report, either daily, weekly, or monthly.

|
|

Report Category

|

Select a category for your report.

|
|

Custom Report

|

Select a CloudHealth custom report.

|


###
 Other Panes

For information about the remaining sections of the connector interface, including how to configure scheduling, retry, and update options, see

Adding a DataSet Using a Data Connector

.

