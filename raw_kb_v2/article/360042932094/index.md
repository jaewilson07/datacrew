

Intro
-------

Microsoft Exchange Server is a mail server and calendaring server. To learn more about the Microsoft Exchange API, visit their page (

https://docs.microsoft.com/en-us/exc...s-and-contacts

).


 You connect to your Microsoft Exchange account in the Data Center. This topic discusses the fields and menus that are specific to the Microsoft Exchange connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in

Adding a DataSet Using a Data Connector

.


 Prerequisites
---------------

To connect to your Microsoft Exchange account and create a DataSet, you must have the following:

 The URL for the Microsoft Exchange serveryou want to pull data from
* Your Microsoft Exchange username and password

Connecting to Your Microsoft Exchange Account
-----------------------------------------------


 This section enumerates the options in the
 **Credentials**
 and
 **Details**
 panes in the Microsoft Exchange Connector page. The components of the other panes in this page,
 **Scheduling**
 and
 **Name & Describe Your DataSet**
 , are universal across most connector types and are discussed in greater length in

Adding a DataSet Using a Data Connector

.


###

Credentials Pane


 This pane contains fields for entering credentials to connect to your Microsoft Exchange account. The following table describes what is needed for each field:


|

Field

|

Description

|
| --- | --- |
|
 Username
  |
 Enter the username for your Microsoft Exchange account.
  |
|
 Password
  |
 Enter the password for your Microsoft Exchange account.
  |
|
 URL
  |
 Enter the URL for your Microsoft Exchange server.
  |


 Once you have entered valid Microsoft Exchange credentials, you can use the same account any time you go to create a new Microsoft Exchange DataSet. You can manage connector accounts in the
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
 Select the Microsoft Exchange report you want to run. The following reports are available:


|  |  |
| --- | --- |
|
 Attachments
  |
 Returns parsed data from the specified email attachment.
  |
|
 Appointments
  |
 Returns details of appointments, such as start time, end time, location, etc.
  |
|
 Messages
  |
 Returns message details such as recipients, body, subject, size, importance, sender name, etc.
  |
|
 Tasks
  |
 Returns task details such as start date, due date, subject, etc.
  |

|
|
 Calendar Type
  |
 Select whether you want to import a shared or personal (
 **Own**
 ) calendar.
  |
|
 Shared Calendars
  |
 Select the shared calendar(s) you want to import into Domo.
  |
|
 Search Type
  |
 Select whether you want your search to bring in exact or fuzzy results. If you select
 **Exact**
 , the connector performs an exact match for the given inputs. If you select
 **Fuzzy**
 , the connector brings in search results that merely contain the given inputs.
  |
|
 Subject (Optional)
  |
 Enter a subject to filter to show all emails containing the given subject line.
  |
|
 Folder Path (Optional)
  |
 Enter the path of the folder containing messages you want to search. If you do not enter a folder path, the "Inbox" folder will be searched. For example, if the root folder was "DOMO" and in that root folder you had a folder called "DOMO\_TEST," you would enter the following to return messages for "DOMO\_TEST":

DOMO/DOMO\_TEST

|
|
 From (Optional)
  |
 Enter the ID of a user to filter returned data specific to that user.
  |
|
 Start Days
  |
 Enter the number of days back you want to begin pulling data for. For example, if you entered

7

here, each time the report ran it would pull data from 7 days ago up until today.
  |
|
 File Type
  |
 Select whether the attachment you are importing is a CSV, XLS, XLSX, JSON, or XML file.
  |
|
 File Name
  |
 Enter the name of the attachment you want to import.
  |
|
 File Password (Optional)
  |
 If the file you are uploading is password-protected, enter the password here.
  |
|
 Sheet Name (Optional)
  |
 If the Excel file you are uploading is found on a specific sheet, enter the sheet name here. If you do not enter a sheet name, the first sheet of the workbook will be used.
  |
|
 Layout
  |
 Select the layout of your Excel file. The following options are available:
 * ****Column as Header****
 . Indicates that your Excel data uses a column-based layout (i.e. each column has a header).
* ****Row as Header****
 . Indicates that your Excel data uses a row-based layout (i.e. each row has a header).
* ****Cross Tab****
 . Indicates that your Excel data uses a cross-tab (pivot) layout.
* ****Raw****
 . Indicates that your Excel data is raw (unformatted).
 |
|
 Mode
  |
 Select how the cell range of your Excel data will be determined. If you select
 ****Auto****
 , the range is determined automatically. If you select
 ****Manual****
 , you will be asked to enter the column header and data ranges manually.
  |
|
 Column Header Range (Optional)
  |
 Enter the range for the column headers in your Excel sheet. For example:

A2:F8

|
|
 Row Header Range (Optional)
  |
 Enter the range for the row headers in your Excel sheet. For example:

A2:A8

|
|
 Data Range (Optional)
  |
 Enter the range for the data (non-header) cells in your Excel sheet. For example:

A3:F20

|
|
 Appointment Start Date
  |
 Select whether you want to pull appointment data for a specific date or a date range.
  |
|
 Start Date
  |
 Select whether you want to pull task data for a specific date or a date range.
  |
|
 Due Date
  |
 Select whether you want your task due date to be for a specific date or date range.
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

