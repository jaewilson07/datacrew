

Intro
-------


 XTM Cloud

develops and sells XTM, a web-based, computer-assisted translation tool and translation management system. Use Domo's

XTM Cloud C

onnector to retrieve data about aspects of XTM projects, including statistics, cost estimates, actual costs, and more. To learn more about the

XTM Cloud

API, visit their page (

https://xtm.cloud/api/

).


 You connect to your

XTM Cloud

account in the Data Center. This topic discusses the fields and menus that are specific to the

XTM Cloud C

onnector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in

Adding a DataSet Using a Data Connector

.


 Prerequisites
---------------

To connect to your

XTM Cloud

account and create a DataSet, you must have the following:

 The user ID and password for your XTM account.
* Your client name associated with your XTM account.
* Your XTM domain. This is essentially the URL of your XTM instance minus the

http://

. For example, if your instance was

http://domo.xtm-intl.com

, you would enter


 domo.xtm-intl.com


 .

Connecting to Your

XTM Cloud

Account
--------------------------------------------


 This section enumerates the options in the
 **Credentials**
 and
 **Details**
 panes in the XTM International Connector page. The components of the other panes in this page,
 **Scheduling**
 and
 **Name & Describe Your DataSet**
 , are universal across most connector types and are discussed in greater length in

Adding a DataSet Using a Data Connector

.


###

Credentials Pane


 This pane contains fields for entering credentials to connect to your

XTM Cloud

account. The following table describes what is needed for each field:


|

Field

|

Description

|
| --- | --- |
|
 Username
  |
 Enter the user ID (not your username) for your XTM account.

You can find the User ID in XTM on the User list.

|
|
 Password
  |
 Enter the password for your XTM account.
  |
|
 Client
  |
 Enter the

Client name for your XTM account.

|
|
 Domain
  |

Enter the Domain where you log in to your XTM account.


 Example: If you logged in at "

https://www.xtm-cloud.com,"

" you would enter "

www.xtm-cloud.com

" here.

|


 Once you have entered valid XTM Cloud credentials, you can use the same account any time you go to create a new XTM Cloud DataSet. You can manage connector accounts in the
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
 Select the XTM Cloud report you want to run. The following reports are available:


|  |  |
| --- | --- |
|
 Concordance
  |
 Returns a concordance that matches the specified search parameters.
  |
|
 Customers
  |
 Returns a list of customers.
  |
|
 Job Metrics
  |
 Returns original and up-to-date metrics for the specified jobs.
  |
|
 Project Estimates
  |
 Returns estimates for the specified project.
  |
|
 Project Metrics
  |
 Returns original and up-to-date metrics for all jobs and general metrics for the whole project for each target language or one specified target language.
  |
|
 Project Statistics
  |
 Returns up-to-date user statistics for all jobs for the whole project for each target language or one specified target language.
  |
|
 Project Status
  |
 Returns the status of a specified project. There are three levels of response: project, jobs and workflow steps.
  |
|
 Projects
  |
 Returns the list of Projects.
  |
|
 Users
  |
 Returns all users associated with the account.
  |
|
 Workflows
  |
 Returns all workflows related to the projects associated in the account.
  |

|
|
 Search Phrase
  |
 Enter the search phrase.
  |
|
 Resource to search in
  |
 Select the resource to search in.
  |
|
 Select the Source Language
  |
 Select the source language for the project.
  |
|
 Select the Target Languages

|
 Select the target language for the project.
  |
|
 Exact Match

|
 Select the option to enable or disable exact match searching.
  |
|
 Select the Project

|
 Select the project.
  |
|
 Project Select Type

|
 Specify whether you want to retrieve the data for all projects or selected projects.
  |
|
 Select the Projects
  |
 Select the projects.
  |
|
 Fetch level of statuses
  |
 Select fetch level of statuses.
  |
|
 Skip Failed Projects
  |
 When this option is checked, if XTMIntl fails to return details for a Projects, it will be excluded from the dataset and Domo will continue processing instead of failing the entire dataset run. This may result in missing data.
  |
|
 Select the Job ID

|
 Select the Job Id.
  |


###
 Other Panes

For information about the remaining sections of the connector interface, including how to configure scheduling, retry, and update options, see

Adding a DataSet Using a Data Connector

.

