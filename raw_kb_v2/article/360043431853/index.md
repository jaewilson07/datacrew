

Intro
-------

SharpSpring provides powerful, affordable marketing automation. To learn more about the SharpSpring API, visit their page (

https://help.sharpspring.com/hc/en-u...n-API-Overview

).


 You connect to your SharpSpring account in the Data Center. This topic discusses the fields and menus that are specific to the SharpSpring connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in

a DataSet Using a Data Connector

.


 Prerequisites
---------------

To connect to your SharpSpring account and create a DataSet, you must have the following:

 A SharpSpring account ID
* A SharpSpring secret key

For information about obtaining a secret key, see

https://help.sharpspring.com/hc/en-u...n-API-Overview

.


 Connecting to Your SharpSpring Account
----------------------------------------


 This section enumerates the options in the
 **Credentials**
 and
 **Details**
 panes in the SharpSpring Connector page. The components of the other panes in this page,
 **Scheduling**
 and
 **Name & Describe Your DataSet**
 , are universal across most connector types and are discussed in greater length in

Adding a DataSet Using a Data Connector

.


###

Credentials Pane


 This pane contains fields for entering credentials to connect to your SharpSpring account. The following table describes what is needed for each field:


|

Field

|

Description

|
| --- | --- |
|
 Account ID
  |
 Enter your SharpSpring account ID.
  |
|
 Secret Key
  |
 Enter your SharpSpring secret key.
  |


 Once you have entered valid SharpSpring credentials, you can use the same account any time you go to create a new SharpSpring DataSet. You can manage connector accounts in the
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
 Select the SharpSpring report you want to run. The following reports are available:


|  |  |
| --- | --- |
|
 Account
  |
 Retrieves a single account by its ID.
  |
|
 Account List
  |
 Retrieves a list of accounts.
  |
|
 Account List By Date
  |
 Retrieves a list of accounts that have been either created or updated within a given date range.
  |
|
 Campaign
  |
 Retrieves a single campaign by its ID.
  |
|
 Campaign List
  |
 Retrieves a list of campaigns.
  |
|
 Campaign List By Date
  |
 Retrieves a list of Campaigns that have been either created or updated within a given date range.
  |
|
 DealStage
  |
 Retrieves a single DealStage by its ID.
  |
|
 DealStage List
  |
 Retrieves a list of DealStages.
  |
|
 DealStage By Date
  |
 Retrieves a list of DealStages that have been either created or updated within a given date range.
  |
|
 Email Status
  |
 Retrieves a status determining whether an email job has been sent or is in queue.
  |
|
 Fields List
  |
 Retrieves a list of Field objects. This function is extremely useful for retrieving a list of all custom fields and system fields available in SharpSpring. Every result will have a "systemName" which is the key that must be specified in order to update that field for a specific lead.
  |
|
 Lead Event List
  |
 Retrieves a list of SharpSpring Lead events. Either a lead ID or an event timestamp can be specified. When an event timestamp is specified, the API will return all events that happened after the given timestamp.
  |
|
 Leads By Email
  |
 Retrieves an ordered set of Form Event History records via an email. Useful for de-duping leads in your own CRM.
  |
|
 Lead
  |
 Retrieves a single lead by its ID.
  |
|
 Leads List
  |
 Retrieves a list of leads.
  |
|
 Leads List By Date
  |
 Retrieves a list of leads that have been either created or updated within a given date range.
  |
|
 Member List
  |
 Retrieves the lists that a particular contact is a member of.
  |
|
 Opportunity
  |
 Retrieves a single opportunity by its ID.
  |
|
 Opportunities List
  |
 Retrieves a list of opportunities.
  |
|
 Opportunities List By Date
  |
 Retrieves a list of opportunities that have been either created or updated within a given date range.
  |
|
 OpportunityLead
  |
 Retrieves a single opportunity lead by its ID.
  |
|
 OpportunityLead List
  |
 Retrieves a list of opportunity leads.
  |
|
 OpportunityLeads List By Date
  |
 Retrieves a list of opportunity leads that have been either created or updated within a given date range.
  |
|
 User Profiles List
  |
 Retrieves a list of user profile objects.
  |


 |
|
 Contact ID
  |
 Enter the ID of the contact you want to retrieve information for.
  |
|
 Send ID
  |
 Enter the send ID you want to retrieve information for.
  |
|
 First Name
  |
 Enter the first name of the user you want to retrieve information for.
  |
|
 Last Name
  |
 Enter the last name of the user you want to retrieve information for.
  |
|
 Display Name
  |
 Enter the display name of the user you want to retrieve information for.
  |
|
 Lead
  |
 Enter the lead ID you want to retrieve information for.
  |
|
 Opportunity
  |
 Enter the opportunity ID you want to retrieve information for.
  |
|
 Account
  |
 Enter the account ID of the user you want to retrieve information for.
  |
|
 Campaign
  |
 Enter the campaign ID you want to retrieve information for.
  |
|
 Deal Stage
  |
 Enter the DealStage ID you want to retrieve information for.
  |
|
 Opportunity Lead
  |
 Enter the opportunity lead ID you want to retrieve information for.
  |
|
 Timestamp
  |
 Select whether the report data corresponds to the
 **Create**
 d or
 **Update**
 d date in the report.
  |
|
 Activity Status
  |
 Select
 **True**
 to pull only active data; otherwise select
 **False**
 .
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

a DataSet Using a Data Connector

.

