

Intro
-------

Azure DevOps Server is a Microsoft product that provides version control, reporting, requirements management, project management, automated builds, testing and release management capabilities. It covers the entire application lifecycle, and enables DevOps capabilities. Use the Domo Azure DevOps connector to retrieve data about your projects, teams and work items. Use Domo's Azure DevOps connector to retrieve data about your projects, teams and work items. To learn more about the Azure DevOps API, visit their page (

https://docs.microsoft.com/en-us/res...evops-rest-6.1

).


 You connect to your Azure DevOps account in the Data Center. This topic discusses the fields and menus that are specific to the Azure DevOps connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in

Adding a DataSet Using a Data Connector

.


 Prerequisites
---------------

To connect to your Azure DevOps account and create a DataSet, you must have the following:

 The username you use to sign into your Azure DevOps account. If it is an email address, the @subdomain portion may not be necessary.
* Your Personal Access Token that you can generate by going to


**User Settings > Personal Access Token**


 in your

Azure DevOps

account.
* Your Azure DevOps organization. For example, if you logged into your Azure DevOps instance at "

https://dev.azure.com/domo"

", you would enter "domo" here.

Connecting to Your

Azure DevOps

Account
-----------------------------------------------


 This section enumerates the options in the


**Credentials**


 and


**Details**


 panes in the


 Azure DevOps


 Connector page. The components of the other panes in this page,


**Scheduling**
 and


**Name & Describe Your DataSet**
 , are universal across most connector types and are discussed in greater length in


 Adding a DataSet Using a Data Connector

.

##
 Credentials Pane


 This pane contains fields for entering credentials to connect to your


 Azure DevOps


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
 Enter the username you use to sign into your Azure DevOps account. If this is an email address, the @subdomain portion may not be necessary.
  |
|
 Personal Access Token
  |
 Enter your Personal Access Token that you can generate by going to


**User Settings > Personal Access Token**


 in your

Azure DevOps

account.
  |
|
 Organization
  |
 Enter your Azure DevOps organization. For example, if you logged into your Azure DevOps instance at "

https://dev.azure.com/domo"

", you would enter "domo" here.
  |


 Once you have entered valid


 Azure DevOps


 credentials, you can use the same account any time you go to create a new


 Azure DevOps


 DataSet. You can manage connector accounts in the


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

Select the Azure DevOps report you want to run. The following reports are available:

  |  |
| --- | --- |
|
 Projects
  |
 Retrieves details about your projects.
  |
|
 Teams
  |
 Retrieves details about your teams.
  |
|
 Work Items
  |
 Retrieves details about your work items.
  |

|
|
 Backfill Date
  |

Select the date to retrieve Work Items from based on the Work Item's 'ChangedDate' field.

|
|
 Ignore ordering of Work Items
  |
 Select this checkbox if you want to ignore the ordering of the Ids while retrieving the work items.
  |
|
 Enter the value for top query parameter
  |
 Enter a value to specify the maximum number of work items to be pulled in an API call, else it would use the default value.
  |


###
 Other Panes

For information about the remaining sections of the Connector interface, including how to configure scheduling, retry, and update options, see

Adding a DataSet Using a Data Connector

.


 Troubleshooting
-----------------


* Make sure your authentication remains valid.
* Review the configuration to make sure that all required items have been selected.
* Review the Connector history for error messages.
* In rare cases, you may be requesting too much information and reaching API limitations or timeouts. If this is the case, you can review the history of the Connector run to see the error message and duration. If this is the case, you can reduce the number of accounts that are being pulled, choose a smaller number of metrics for the report that you are pulling, or reduce the timeframe that you are trying to pull.


