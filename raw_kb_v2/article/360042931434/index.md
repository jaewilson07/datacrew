

Intro
-------

Docebo is a SaaS platform that offers a learning portal for companies and their employees, partners and customers. Use Domo's Docebo connector to retrieve reports for courses, enrollment, learning plans, and more. To learn more about the Docebo API, visit their page (

https://www.docebo.com/lms-docebo-ap...y-integration/

).


 You connect to your Docebo account in the Data Center. This topic discusses the fields and menus that are specific to the Docebo connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in

Adding a DataSet Using a Data Connector

.


 Prerequisites
---------------

To connect to your Docebo account and create a DataSet, you must have the following:

 Your Docebo username and password.
* The API base URL for your Docebo software. For example:

https://doceboapi.docebosaas.com
* A Docebo client ID
* A Docebo client secret

For information about generating your client ID and client secret, visit

https://www.docebo.com/knowledge-base/how-to-activate-and-manage-the-sso-and-api-app/

. Note that when configuring the app, the
 **Grant Type**
*must*
 be set to
 **Resource Owner Password Credentials**
 .


 Connecting to Your Docebo Account
-----------------------------------


 This section enumerates the options in the
 **Credentials**
 and
 **Details**
 panes in the Docebo Connector page. The components of the other panes in this page,
 **Scheduling**
 and
 **Name & Describe Your DataSet**
 , are universal across most connector types and are discussed in greater length in

Adding a DataSet Using a Data Connector

.


###

Credentials Pane


 This pane contains fields for entering credentials to connect to your Docebo account. The following table describes what is needed for each field:


|

Field

|

Description

|
| --- | --- |
|
 Username
  |
 Enter your Docebo username.
  |
|
 Password
  |
 Enter your Docebo password.
  |
|
 API URL
  |
 Enter the API base URL for your Docebo software. Example:

https://doceboapi.docebosaas.com

|
|
 Client ID
  |
 Enter your Docebo client ID.
  |
|
 Client Secret
  |
 Enter your Docebo client secret.
  |


 Once you have entered valid Docebo credentials, you can use the same account any time you go to create a new Docebo DataSet. You can manage connector accounts in the
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
 Select the Docebo report you want to run. The following reports are available:


|  |  |
| --- | --- |
|
 Courses Details
  |
 Returns details about the courses.
  |
|
 Course List
  |
 Returns a list of Docebo courses.
  |
|
 Course Sessions
  |

Receives data about Docebo Course Sessions.

|
|
 Ecommerce
  |

Receives data about Docebo Ecommerce reports.

|
|
 Enrollment
  |

Receives data about Docebo Enrollment reports.

|
|
 Learning Plan
  |

Receives data about Docebo Learning Plan reports.

|
|
 User
  |

Receives data about Docebo User reports.

|
|
 Reports
  |
 Receives data about Docebo reports.
  |

|
|
 Replace custom fields with actual names?
  |

Custom fields are labeled with field\_numbers by default. Select this check box to replace the custom fields with the actual names.

|
|
 Filter
  |
 Select the desired filter for your Docebo report.
  |
|
 Enrollment filtering method
  |
 Select a method to filter the enrollments. 'All Enrollments' option will bring the data for all available enrollments. 'Select Dates' option will allow you to fetch the enrollment data for the specified date range.
  |
|
 Individual columns for additional fields
  |
 Select this checkbox to get the additional fields as individual columns.
  |
|
 Expand data
  |
 Select Available Seats field that you would like to get expanded in the data. This will cause multiple rows to show each object in the field selected.
  |
|
 Select Report
  |
 Select the desired Docebo sub report.
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


**Days Back**


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
 ********End Date********
 to create a range of represented days.


 For example, if you entered 10 for
 ********Start Date********
 and 5 for
 ********End Date********
 , the report would contain data for 10 days ago up until 5 days ago.
  |
|
 End Date - Relative
  |
 Enter the number of days back that you would like to get data to (end day). Combine with
 ********Start Date********
 to create a range of represented days.


 For example, if you entered 10 for
 ********Start Date********
 and 5 for
 ********End Date********
 , the report would contain data for 10 days ago up until 5 days ago.
  |
|
 Time Period
  |
 Specify the time period that you would like to receive data for.
  |
|
 Starting Day of the Week
  |
 Select the day you would like your week to start with.
  |


###
 Other Panes

For information about the remaining sections of the connector interface, including how to configure scheduling, retry, and update options, see

Adding a DataSet Using a Data Connector

.


 FAQ
-----


####
 How often can the data be updated?

Datasets should be updated once per day only, due to Docebo's API call limits.

###
 Are there any API limits that I need to be aware of?

Docebo API calls are limited to 1000 call per hour per IP address.

###
 What version of the Docebo API does this connector use?

This connector uses version 1 of the Docebo API (https://[customerdomain].

docebosaas.com/api/v1

).

###
 Which endpoint(s) does each report call in this connector?


|
 Report Name
  |
 Endpoint URL(s)
  |
| --- | --- |
|
 Course Details
  |
 /courses
  |
|
 Course List
  |
 /learn
  |
|
 Course Session
  |
 /courses/sessions
  |
|
 Ecommerce
  |
 /ecommerce
  |
|
 Enrollment
  |
 /learn
  |
|
 Learning Plan
  |
 /learn
  |
|
 Reports
  |
 /report
  |
|
 User
  |
 /manage
  |


