

Intro
-------

SAP Ariba is the business commerce network. SAP Ariba combines industry-leading, cloud-based applications with internet-based trading community to help companies discover and collaborate with a global network of partners. Use Domo's Ariba connector to retrieve procurement solution and innovative business models to help and modernize and grow your business. To learn more about the Ariba API, visit their

documentation page

.


 Prerequisites
---------------

To connect to your SAP Ariba account and create a DataSet, you must have the following:

 Client ID
* Client Secret
* API Key
* Realm
* Environment

Connecting to your SAP Ariba Account
--------------------------------------

This section enumerates the options in the
 ********Credentials********
 and
 ********Details********
 panes in the Sentry Connector page. The components of the other panes in this page,
 ********Scheduling,********
 and
 ********Name & Describe Your DataSet********
 , are universal across most connector types and are discussed in greater length in

Adding a DataSet Using a Data Connector

.

##
 Credentials Pane

This pane contains fields for entering credentials to connect to your Ariba account. The following table describes what is needed for each field:


 Field
  |
 Description
  |
| --- | --- |
|
 Client ID
  |
 Enter Client ID.
  |
|
 Client Secret
  |
 Enter Client Secret.
  |
|
 API Key
  |
 Enter API Key.
  |
|
 Realm
  |
 Enter Realm.
  |
|
 Environment
  |
 Select Production or Sandbox as the environment.
  |


###
 Details Pane

This pane contains a primary
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
 Select the Ariba report you want to run. The following report is available:


|  |  |
| --- | --- |
|
 Transactional Procurement
  |
 Returns transactional procurement data to make operational decisions.
  |


 |
|
 View Template Name
  |
 Select a View Template Name


**Tip:**
 If you do not get any response for view template name, please check for realm provided.


 |
|
 Date Type
  |
 Select a single date or date range for your report.
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
 ****End Date****
 .
  |
|
 End Date
  |
 Specify whether the second date in your date range is a specific or relative date. You select the first date in your range in
 ****Start Date****
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
 ****Days Back to End At****
 to create a range of represented days.


 For example, if you entered 10 for
 ****Days Back to Start From****
 and 5 for
 ****Days Back to End At****
 , the report would contain data for 10 days ago up until 5 days ago.
  |
|
 Days Back to End At
  |
 Enter the number of the most recent day back that should be represented in the report. Combine with
 ****Days Back to Start From****
 to create a range of represented days.


 For example, if you entered 10 for
 ****Days Back to Start From****
 and 5 for
 ****Days Back to End At****
 , the report would contain data for 10 days ago up until 5 days ago.
  |

Other Panes
-------------

For information about the remaining sections of the connector interface, including how to configure scheduling, retry, and update options, see Adding a DataSet Using a Data Connector.


 FAQ
-----

*What kind of credentials do I need to power up this connector?**


 You need the client ID, client secret, API key, and realm associated with your SAP Ariba account. You also need to select the environment.


**How often can the data be updated?**


 As often as needed.


**Are there any API limits that I need to be aware of?**


 No.

