

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

To connect to your Microsoft Exchange Mailbox mailbox and create a DataSet, you must have a Microsoft Exchange client ID and client secret. For information about obtaining these credentials, see

https://docs.microsoft.com/en-us/outlook/rest/get-started

. You must also have your Microsoft credentials (the email address, phone number, or Skype handle associated with your account, as well as your password).


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


 This pane contains fields for entering credentials to connect to the Microsoft Exchange REST API. The following table describes what is needed for each field:


|

Field

|

Description

|
| --- | --- |
|
 Client ID
  |
 Enter your Microsoft Exchange client ID.
  |
|
 Client Secret
  |
 Enter your Microsoft Exchange client secret.
  |

For information, see

https://docs.microsoft.com/en-us/outlook/rest/get-started

.

After you have entered your API credentials, you are taken to the Microsoft OAuth screen where you are prompted to enter your Microsoft credentials. Once you have entered valid credentials, you can use the same account any time you go to create a new Microsoft Exchange DataSet. You can manage connector accounts in the
 **Accounts**
 tab in the Data Center. For more information about this tab, see

Managing User Accounts for Connectors

.


###
 Configuring Your Azure App

To create a connection with your Microsoft Exchange Mailbox account, you must first create a Microsoft Azure Web App to obtain the necessary client ID and secret.


**To configure an Azure App**
 :


 1. Log into the

Azure Portal

.


 2. Click
 **Azure Active Directory > App Registrations > New Registration**
 .

3. Fill out the registration form as follows:

 Name: Enter name for your application.
* Supported account types: Select an option to specify who can use this application or access this API.
* Redirect URI: Enter the redirect URI as:
 **https://oauth.domo.com/api/data/v1/oauth/providers/mail-exchange-rest-mailbox-only/exchange**
 .

*Note:**
 The authentication response is sent to this URI after successfully authenticating the user. Providing the URI at this stage is optional and it can be changed later, but a value is required for most of the authentication scenarios.


 4. Click
 **Register**
 . An overview of your registered App will appear. The
 **Application ID**
 that appears here is the
 **Client ID**
 you will enter in the
 **Credentials**
 pane in Domo.


 5. Click
 **API Permissions >> +Add a permission**
 .

6.
 **Request API permissions**
 section appears. Add the API permissions for your application.

7. Now, click on
 **Certificates and secrets**
 . Certificates can be used as secrets to prove the application's identity when requesting a token. Also, can be referred to as public keys.


 8. Click
 **+New client secret**
 .

9. Specify the client secret description and the expiry period for your client secret, and click
 **Add**
 .


 10. Copy the value and paste it into the
 **Client Secret**
 field in the
 **Connector credentials**
 section in Domo.

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
 Select the Microsoft Exchange report you want to run. The following reports are available:


|  |  |
| --- | --- |
|
 Messages
  |

Returns message details like recipients, body, subject, size, importance, sender's name, received time, sent time, etc.

|

|
|
 Folder
  |
 Select the folder containing the content you want to import.
  |
|
 Search Type
  |
 Select the search type.


|  |  |
| --- | --- |
|
 Search
  |
 Returns results based on search criteria. Use the Search query parameter to restrict the results of a request to match a search criterion.
  |
|
 Filters
  |
 Filters results (rows). Use the Filter option to retrieve just a subset of a collection.
  |

|
|
 Filter Type
  |

Select Filter type. If the filter type is

*Starts with**

, then the connector will perform a

*Starts with**

match for the given inputs (from, subject). If the search type is

*Equals**

, then the connector will an perform exact search for the given inputs (from, subject).

|
|
 Subject (Optional)
  |

Enter the subject to find all the emails for the given subject.

|
|
 From (Optional)
  |
 Enter the email id of the user to filter returned data specific to that user.
  |
|
 Search Option
  |
 Select the desired search method. If you select
 **Custom Search**
 , you are prompted to enter a subject line and sender name for the search. If you select
 **Query**
 , you are prompted to enter a search query string.
  |
|
 Query
  |
 Enter a Keyword Query Language (KQL) query. For more information about searchable email properties, KQL syntax, supported operators, and search tips, see the Microsoft Exchange user documentation.
  |
|
 Calendar Type
  |
 Select whether you want to import a shared or personal (
 **Own**
 ) calendar.
  |
|
 Shared Calendar Search Type
  |
 Select whether you want to search for shared calendars by name or email address.
  |
|
 Shared Calendars
  |
 Select the shared calendar(s) you want to import into Domo.
  |
|
 Shared Users Email Address
  |
 Enter the email address of the user whose calendar you want to retrieve.
  |
|
 File Type
  |
 Select whether the attachment you are importing is a CSV, XLS, XLSX, JSON, or XML file.
  |
|
 File Name
  |
 Enter the name of the attachment you want to import. If the file name contains an extension, you must include the extension.
  |
|
 File Password (Optional)
  |
 If the file you are uploading is password-protected, enter the password here.
  |
|
 Delimiter
  |
 Select the delimiter to use in parsing CSV files. If your desired delimiter is not in the menu, select
 **Other**
 then enter the delimiter in the
 **Custom Delimiter**
 field.
  |
|
 Custom Delimiter
  |
 Enter the custom delimiter for your CSV file. Enter

\t

for tab or Unicode characters in

\uxxxx

form (e.g.

\u005e

).
  |
|
 Quote Character
  |
 Select the desired quote character for parsing your CSV file. A double quote (") is the CSV standard.
  |
|
 Custom Quote Character
  |
 Enter the desired custom quote character. Enter

\t

for tab or Unicode characters in

\uxxxx

form (e.g.

\u005e

).
  |
|
 Escape Character
  |
 Select the escape character to use in parsing CSV files. If your desired escape character is not in the menu, select
 **Other**
 then enter the escape character in the
 **Custom Escape Character**
 field.
  |
|
 Custom Escape Character
  |
 Enter the custom escape character for your CSV file. Enter

\t

for tab or Unicode characters in

\uxxxx

form (e.g.

\u005e

).
  |
|
 Header Start Row (Optional)
  |
 Enter the header row number. If you do not enter a number, the first row is considered the header row.
  |
|
 Data Start Row (Optional)
  |
 Enter the starting data row number. If you do not enter a number, the first row after the header row is considered the starting row.
  |
|
 Footer Rows to Skip (Optional)
  |
 If there are one or more rows at the bottom of the file you do not want to import, enter the number of rows to skip.
  |
|
 Sheet Name (Optional)
  |
 If the Excel file you are uploading is found on a specific sheet, enter the sheet name here. If you do not enter a sheet name, the first sheet of the workbook will be used.
  |
|
 Date Field Key
  |
 Enter the data tag in your JSON or XML file.
  |
|
 Sublist to Flatten
  |
 Enter the lists you want to flatten, separated by commas.
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

