

Intro
-------

Entrata is an online property management system for marketing, leasing and management of rental property. Use Domo's Entrata connector to retrieve transaction lists, customer testimonials, lead lists, and so on. For more information about the Entrata API, visit their website. (

https://www.entrata.com/api-documentation

)


 The Entrata connector is a "Cloud App" connector, meaning it retrieves data stored in the cloud. In the Data Center, you can access the connector page for this and other Cloud App connectors by clicking
 **Cloud App**
 in the toolbar at the top of the window.


 You connect to your Entrata account in the

Data Center

. This topic discusses the fields and menus that are specific to the Entrata connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in

Adding a DataSet Using a Data Connector

.


 Prerequisites
---------------

To connect to your Entrata account and create a DataSet, you must have an Entrata username and password. You must also know your Entrata account domain. This is the portion of your Entrata URL immediately following

https://

, e.g.

https://[mycompany].entrata.com.

Connecting to Your Entrata Account
------------------------------------

This section enumerates the options in the
 **Credentials**
 and
 **Details**
 panes in the Entrata Connector page. The components of the other panes in this page,
 **Scheduling**
 and
 **Name & Describe Your DataSet**
 , are universal across most connector types and are discussed in greater length in

Adding a DataSet Using a Data Connector

.

##
 Credentials Pane

This pane contains fields for entering credentials to connect to your Entrata account. The following table describes what is needed for each field:


 Field
  |
 Description
  |
| --- | --- |
|
 Username
  |
 Enter your Entrata username.
  |
|
 Password
  |
 Enter your Entrata password.
  |
|
 Domain
  |
 Enter the account domain for your Entrata instance.
  |

Once you have entered valid Entrata credentials, you can use the same account any time you go to create a new Entrata DataSet. You can manage connector accounts in the
 **Accounts**
 tab in the

Data Center

. For more information about this tab, see

Managing User Accounts for Connectors

.

##
 Details Pane

This pane contains a primary
 **Report**
 menu in which you select a report type. Depending on the report type you select, other options may be available.


 Menu
  |
 Description
  |
| --- | --- |
|
 Report
  |
 Select an Entrata report. The following reports are available:


|
 Report
  |
 Description
  |
| --- | --- |
|
 AR Codes
  |
 Returns all AR codes for a specified management company.
  |
|
 AR Payments
  |
 Retrieves AR payments details.
  |
|
 AR Transactions
  |
 Retrieves a list of all transactions.
  |
|
 Customers
  |
 Retrieves a list of customers for a property.
  |
|
 Customer Testimonials
  |
 Retrieves a list of customer testimonials for a property.
  |
|
 Customer Testimonial PickList
  |
 Retrieves pick lists for Testimonials.
  |
|
 Financial Budget Actuals
  |
 Returns all budget actual data from a selected property, gl tree, and budget. Data is selected by month. For example, when selecting a start date of 2017-05-15 to an end date of 2017-05-21, you are selecting all data from the start to the end of May 2017.
  |
|
 Financial General Ledger Transactions
  |
 Returns all General Ledger transactions for a property.
  |
|
 Financial General Ledger Trees
  |
 Retrieves General Ledger accounts information.
  |
|
 Financial PickList
  |
 Retrieves financial picklist.
  |
|
 Leads MITS
  |
 Retrieves a list of leads.
  |
|
 Lease Details
  |
 Returns charge detail information for all leases for the selected property.
  |
|
 Leases Expiring
  |
 Returns a list of expiring leases.
  |
|
 Lease PickList
  |
 Pulls a list of Ids required for other leases services.
  |
|
 Maintenance Work Orders
  |
 Retrieves work orders information.
  |
|
 Properties
  |
 Retrieves properties details for the management company.
  |
|
 Properties Floor Plans
  |
 Retrieves a list of floor plans for a property.
  |
|
 Properties PickList
  |
 Pulls a pick list for Properties.
  |
|
 Property Amenities
  |
 Pulls a list of property Amenities.
  |
|
 Property Unit Amenities
  |
 Pulls a list of Unit Amenities.
  |
|
 Property Units Availability and Pricing
  |
 Pulls a list of Unit availability and their pricing.
  |
|
 Property Units MITS
  |
 Retrieves property information.
  |
|
 Property Units MITS - ILS Units
  |
 Retrieves property ILS unit information.
  |
|
 Property Unit Types
  |
 Pulls a list of unit types.
  |
|
 Report Data
  |
 Retrieves data about a report based on user supplied filters.
  |
|
 Report Data V2
  |
 Retrieve data about a report based on user supplied post body. To import data from an Entrata report, export the report definition from the Entrata UI and enter it in it's entirety in the 'REPORT DATA POST BODY' section.
  |
|
 Report Filters
  |
 Retrieves the filters available for an individual report.
  |

|
|
 Batch Size
  |
 Only change this property if Entrata is failing to return a successful response. This modifies how many properties are requested per API request. Smaller numbers can be handled better by the API, but will result in more API requests, which could cause you to go over your daily API rate limits. Maximum is 100.
  |
|
 Select Properties
  |
 Specify whether you would like to retrieve all properties or a specific property.
  |
|
 Property
  |
 Select the property you would like to view.

|
|
 Budget
  |
 Select the budget you would like to view.
  |
|
 Tree
  |
 Select the Tree you would like to view.
  |
|
 Report Name
  |
 Select the name of the Entrata report you would like to retrieve data for.
  |
|
 Accounting Method
  |
 Enter the accounting method for the budget actuals.
  |
|
 Show Detail Line Items
  |
 When selected, this will break your transaction up into a detail level report. This will mean that you will see one row of data per transaction detail. This is usually a breakdown of credits and debits for that transaction. Be cautious when aggregating data with this option selected. This report can be very large.
  |
|
 Report Filters
  |
 Input user customized report filters to limit returned data. Available filters can be found in the Report Filters report. Filters must be in JSON format, and any date fields in the filters must have the m/d/Y value replaced with an appropriate date string. For example, if you find daterange-start, daterange-end, or date parameters, replace m/d/Y with a string formatted like the following: 5/1/2017. If you are replacing the date parameter, this will select reports on the date of May 1st, 2017. Only include the inner filters and not the filters or filter keys. So instead of "filters": { "filter": [{"name": "property", "required": null},{"name": "property\_stats", "required": true}]} you would supply the following inner array object {"name": "property", "required": null},{"name": "property\_stats", "required": true}
  |
|
 Field to Flatten
  |
 Enter the column name for Entrata Data that you would like parsed and flattened to retrieve data that is normally returned as a List. You may only enter one column at a time.
  |
|
 Report Data Post Body
  |
 Enter the json post body in the below format {"auth":{"type":"basic","password":"password","username":"username"},"method":{"name":"getReportData","version":"r2","params":{"reportName":"","reportVersion":"","filters":{ }}}}.

The value of the username and password will be replaced by the username and password entered in the Credentials section.

You can export filters for the report from the Entrata UI.
  |
|
 Picklist
  |
 Select the property picklist you would like to view.
  |
|
 Lead MITs Sub Report
  |
 Select the sub report data you want included in your report. This creates a new row of data per record. For example, if you selected the
 **Phone**
 sub report and a lead had 5 phone numbers, 5 rows of data would be added for that lead.
  |
|
 Generate New Schema
  |
 Select this check box if you would like to generate new schema in every run.
  |
|
 Date Selection Type
  |
 Select to filter by post date or transaction date.
  |
|
 Start Date
  |
 Specify whether the first date in your date range is a specific or relative date. Choose
 **Relative**
 if you always want the report to retrieve data for a given number of days back (which you specify in
 **Days Back to Start From**
 ) from the current date. If you choose
 **Relative**
 here, you should also choose
 **Relative**
 for
 **End Date**
 and specify a value for
 **Date Back to End At**
 .


 For example, if you enter

10

for
 **Days Back to Start From**
 and

5

for
 **Days Back to End At**
 and you set the DataSet to update daily, each new day the report will update to show information for 5 to 10 days in the past.
  |
|
 End Date
  |
 Specify whether the last date in your date range is a specific or relative date. Choose
 **Relative**
 if you always want the report to retrieve data for a given number of days back (which you specify in
 **Days Back to End At**
 ) from the current date. If you choose
 **Relative**
 here, you should also choose
 **Relative**
 for
 **Start Date**
 and specify a value for
 **Date Back to Start From**
 .


 For example, if you enter

10

for
 **Days Back to Start From**
 and

5

for
 **Days Back to End At**
 and you set the DataSet to update daily, each new day the report will update to show information for 5 to 10 days in the past.
  |
|
 Select Specific Start Date
  |
 Select the first date in your date range.
  |
|
 Select Specific End Date
  |
 Select the last date in your date range.
  |
|
 Days Back to Start From
  |
 Enter the number of days before the current date to use as the start date.


 For example, if you enter

10

for
 **Days Back to Start From**
 and

5

for
 **Days Back to End At**
 and you set the DataSet to update daily, each day the report updates to show information for a 5-day range, starting 10 days ago and ending 5 days ago.
  |
|
 Days Back to End At
  |
 Enter the number of days before the current date to use as the end date.


 For example, if you enter

10

for
 **Days Back to Start From**
 and

5

for
 **Days Back to End At**
 and you set the DataSet to update daily, each day the report updates to show information for a 5-day range, starting 10 days ago and ending 5 days ago.
  |


###
 Other Panes

For information about the remaining sections of the connector interface, including how to configure scheduling, retry, and update options, see

Adding a DataSet Using a Data Connector

.


 FAQ
-----


####
 Can I use the same account to create multiple DataSets?

Yes.

###
 How often can the data be updated?

As often as once an hour.

###
 Are there any API limits I should be aware of?

Entrata does not document rate limits in its API.

