

Intro
-------

Workfront (formerly called AtTask) develops web-based work management and project management software

.

Use Domo's Workfront connector to retrieve data for a selected Workfront object. To learn more about the Workfront API, visit their page (

https://support.workfront.com/hc/en-us/articles/220633507-API-Explorer

).


 The Workfront connector is a "Cloud App" connector, meaning it retrieves data stored in the cloud. In the Data Center, you can access the connector page for this and other Cloud App connectors by clicking
 **Cloud App**
 in the toolbar at the top of the window.


 You connect to your Workfront account in the

Data Center

. This topic discusses the fields and menus that are specific to the Workfront connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in

Adding a DataSet Using a Data Connector

.

  |  |
| --- | --- |
|
**Primary Use Cases**
 |
 Use this connector to pull data about the status of projects and the individual tasks that apply to those projects.
  |
|
**Primary Metrics**
 | * Project status
* Start and complete dates
* Hours per project
* User hours
* Resources
* Common issues
 |
|
**Primary Company Roles**
 | * Project manager
* Operations
 |
|
**Average Implementation Time**
 |
 5-10 hours for basic implementation
  |
|
**Ease of Use (on a 1-to-10 scale with 1 being easiest)**
 |
 5
  |

Best Practices
----------------


* Reports should typically be run using "Replace." Users are limited to 10 concurrent running reports, so you should avoid having 10 or more DataSets scheduled to run at the same time.
* You will need to have a good understanding of the data in your Workfront account to get useful data from the connector.

Prerequisites
---------------

To connect to your Workfront account and create a DataSet, you must have the following:

 The username and password or the

API key associated with

your Workfront account.

You must update the API key in your connector when it expires.
* The URL for your Workfront server (for example,


 https://yourcompany.workfront.com


 ).

Note that some users may have

attask

domains, while others may have

workfront

domains.


 Connecting to Your Workfront Account
--------------------------------------

This section enumerates the options in the

*Credentials**
 ,


**Details**
 ,

and
 **Advanced**
 panes in the Workfront Connector page. The components of the other panes in this page,
 **Scheduling**
 and
 **Name & Describe Your DataSet**
 , are universal across most connector types and are discussed in greater length in

Adding a DataSet Using a Data Connector

.

##
 Credentials Pane

This pane contains fields for entering credentials to connect to your Workfront account. The following table describes what is needed for each field:


 Field
  |
 Description
  |
| --- | --- |
|
 Username
  |
 Enter the username you use to log into your Workfront account.
  |
|
 Password
  |
 Enter the password you use to log into your Workfront account.
  |
|
 API Key
  |
 Enter your Workfront API key. You must update the API key in connector connection when it expires.
  |
|
 Domain
  |
 Enter the URL for your Workfront server (for example,


 https://yourcompany.workfront.com


 ).
  |
|
 API Version
  |
 Select the API version you wish to connect to.
  |

Once you have entered valid Workfront credentials, you can use the same account any time you go to create a new Workfront DataSet. You can manage connector accounts in the
 **Accounts**
 tab in the

Data Center

. For more information about this tab, see

Managing User Accounts for Connectors

.

##
 Details Pane

This pane contains options for selecting a Workfront object and configuring filter fields, date range, etc.


 Parameter
  |
 Description
  |
| --- | --- |
|
 Report
  |
 Select the Workfront object to you want to retrieve data for.
  |
|
 Metadata Only?
  |
 Check this box if you only want to retrieve metadata for the selected object, such as fields, reference fields, and custom fields. Returned values have the format

label:value

, where

value

is what is expected by the filters.
  |
|
 Reference Fields (Optional)
  |
 Enter a comma-separated list of reference fields you want in your report. These should use the format

reference-object:reference-field

.  They should also be case-sensitive and match the key of the value, not the label. If you check the
 **Metadata Only**
 box, you can pull in a list of available reference fields.


 When pulling in custom fields, the reference object is

DE:.

This may be needed as a prefix to the column name in order to bring in custom fields. For example, to request a project with custom parameters called "CustomText" and "CustomField," you would use the following:

DE:Custom Text, DE:CustomField

|
|
 Date Field
  |
 Select the date field you want to filter by.
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
|
 Filter - Field Name (Optional)
  |
 If building a custom filter for your report, select the data type for the field you want to filter. Combine with
 **Filter - Modifier**
 , and
 **Filter - Field Value**
 (as well as
 **Filter - Field Value (2)**
 if necessary) to create a complete filter. For example, if you wanted to build a filter for filtering out all rows with "California" as a string, you would select
 **String**
 here, set
 **Filter - Modifier**
 to
 **Not Equals**
 , and enter "California" for
 **Filter - Field Value**
 .
  |
|
 Filter - Modifier (Optional)
  |
 If building a custom filter for your report, select the operator for your filter. Combine with
 **Filter - Filter Name**
 and
 **Filter - Field Value**
 (as well as
 **Filter - Field Value (2)**
 if necessary) to create a complete filter. For example, if you wanted to build a filter for filtering out all rows with "California" as a string, you would select
 **String**
 as the
 **Filter - Field Name**
 , set
 **Filter - Modifier**
 to
 **Not Equals**
 , and enter "California" for
 **Filter - Field Value**
 .
  |
|
 Filter - Field Value (Optional)
  |
 If building a custom filter for your report, select the value for your filter. Combine with
 **Filter - Filter Name**
 , and
 **Filter - Field Modifier**
 (as well as
 **Filter - Field Value (2)**
 if necessary) to create a complete filter. For example, if you wanted to build a filter for filtering out all rows with "California" as a string, you would select
 **String**
 as the
 **Filter - Field Name**
 , set
 **Filter - Modifier**
 to
 **Not Equals**
 , and enter "California" for
 **Filter - Field Value**
 .
  |
|
 Filter - Field Value (2) (Optional)
  |
 If building a custom filter for your report, use this field if you need a second value as part of your filter (for example, if you were filtering on a range of values).
  |
|
 Filter - Case Sensitive (Optional)
  |
 Check this box if your custom filter is case-sensitive.
  |
|
 Filter - Delimiter (Optional)
  |
 Select the delimiter for your custom filter.
  |


###
 Other Panes

For information about the remaining sections of the connector interface, including how to configure scheduling, retry, and update options, see

Adding a DataSet Using a Data Connector

.


 FAQs
------


#####
 Can I use the same account to create multiple DataSets?

Yes.

####
 How often can the data be updated?

DataSets can be updated as often as once an hour.

####
 Are there any API limits I should be aware of?

Workfront is limited to 10 concurrent DataSets.

####
 Why do I need to add DE: as a prefix for custom fields?

To learn about adding prefixes for custom fields, see the following:

https://support.workfront.com/hc/en-...ng-custom-data

.

