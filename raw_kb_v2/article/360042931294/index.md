

Intro
-------

MINDBODY's provides management software for wellness services and fitness organizations. Use the MINDBODY Online Connector to get data about classes, clients, payments and more. To learn more about the MINDBODY API, visit their page (

https://developers.mindbodyonline.com/

).


 You connect to your MINDBODY account in the Data Center. This topic discusses the fields and menus that are specific to the MINDBODY connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in

Adding a DataSet Using a Data Connector

.


 Prerequisites
---------------

To connect to your MINDBODY account and create a DataSet, you must have the following:

 A MINDBODY source name
* A MINDBODY source key

You can find these items in the
 **Account**
 section of the MINDBODY API portal.


 Connecting to Your MINDBODY Account
-------------------------------------


 This section enumerates the options in the
 **Credentials**
 and
 **Details**
 panes in the MINDBODY Connector page. The components of the other panes in this page,
 **Scheduling**
 and
 **Name & Describe Your DataSet**
 , are universal across most connector types and are discussed in greater length in

Adding a DataSet Using a Data Connector

.


###

Credentials Pane


 This pane contains fields for entering credentials to connect to your MINDBODY account. The following table describes what is needed for each field:


|

Field

|

Description

|
| --- | --- |
|
 Source Name
  |
 Enter your MINDBODY source name as found in the
 **Account**
 section of the MINDBODY API portal.
  |
|
 Source Key
  |
 Enter your MINDBODY source key as found in the
 **Account**
 section of the MINDBODY API portal.
  |


 Once you have entered valid MINDBODY credentials, you can use the same account any time you go to create a new MINDBODY DataSet. You can manage connector accounts in the
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
 Select the MINDBODY report you want to run. The following reports are available:


|  |  |
| --- | --- |
|
 Get Accepted Card Type
  |
 Returns a list of card types that the site accepts.
  |
|
 Get Active Client Membership
  |
 Returns the list of active memberships for a given client.
  |
|
 Get Active Session Times
  |
 Returns a list of times that are active for a given program schedule type.
  |
|
 Get Appointment Options
  |
 Returns a list of appointment options.
  |
|
 Get Bookable Items
  |
 Returns a list of availabilities with the information needed to book appointments.
  |
|
 Get Classes
  |
 Returns a list of classes.
  |
|
 Get Class Descriptions
  |
 Returns a list of class descriptions.
  |
|
 Get Class Schedules
  |
 Returns a list of class schedules.
  |
|
 Get Class Visits
  |
 Returns the list of visits containing information for a specified class.
  |
|
 Get Client Account Balances
  |
 Returns account balances for the given clients.
  |
|
 Get Client Contracts
  |
 Returns a list of contracts for a given client.
  |
|
 Get Client Formula Notes
  |
 Returns a list of formula notes for a specified client.
  |
|
 Get Client Indexes
  |
 Returns a list of client indices where each index represents a multiple choice option a client may choose.
  |
|
 Get Client Purchases
  |
 Returns a list of purchases of a specific client.
  |
|
 Get Client Referral Types
  |
 Returns a list of referral types, which are options that new clients choose to identify how they know the business.
  |
|
 Get Clients
  |
 Returns a list of clients.
  |
|
 Get Client Schedule
  |
 Returns the schedule for a given client.
  |
|
 Get Client Services
  |
 Returns the purchased services for a given client.
  |
|
 Get Client Visits
  |
 Returns the list of visits for a given client.
  |
|
 Get Courses
  |
 Returns a list of courses offered by the studio.
  |
|
 Get Custom Client Fields
  |
 Returns customized client fields that consist of a name and data type.
  |
|
 Get Custom Payment Methods
  |
 Returns the custom payment methods of a site.
  |
|
 Get Enrollments
  |
 Returns a list of enrollments offered by the studio.
  |
|
 Get Function Data
  |
 Returns a custom function report.
  |
|
 Get Locations
  |
 Returns a list of locations within the specified sites.
  |
|
 Get Packages
  |
 Returns a list of packages available for sale.
  |
|
 Get Products
  |
 Returns a list of products available for sale.
  |
|
 Get Programs
  |
 Returns a list of programs or service categories.
  |
|
 Get Relationships
  |
 Returns a list of relationships.
  |
|
 Get Required Client Fields
  |
 Returns the list of fields that a new client has to fill out in business mode, specifically for the sign-up process.
  |
|
 Get Resources
  |
 Returns a list of resources or rooms.
  |
|
 Get Sales
  |
 Returns a list of sales for reports.
  |
|
 Get Semesters
  |
 Returns a list of semesters offered by the studio.
  |
|
 Get Services
  |
 Returns a list of services available for sale.
  |
|
 Get Session Types
  |
 Returns a list of session types.
  |
|
 Get Sites
  |
 Returns a list of sites available to the authenticated user.
  |
|
 Get Staff
  |
 Returns a list of staff members including information about them.
  |
|
 Get Staff Appointments
  |
 Returns a list of appointments by staff member.
  |

|
|
 Sites Selection
  |
 Select whether you want to pull data for all sites or specified sites.
  |
|
 Sites
  |
 Check the boxes for all sites you want to pull data for.
  |
|
 Client ID
  |
 Enter the ID of the client you want to retrieve information for.
  |
|
 Schedule Type
  |
 Select the schedule type you want to retrieve information for.
  |
|
 Programs
  |
 Check the boxes for all programs you want to pull data for.
  |
|
 Session Types
  |
 Check the boxes for all session types you want to pull data for.
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
 Hide Cancelled Classes
  |
 Select
 **True**
 if you do not want cancelled classes to appear in your report. To show all classes regardless of cancellation, select
 **False**
 .
  |
|
 Scheduling Window
  |
 Select
 **True**
 to show a scheduling window in your report; otherwise select
 **False**
 .
  |
|
 Class ID
  |
 Enter the ID of the class you want to retrieve information for.
  |
|
 Choice of User Credentials
  |
 Select a user credentials option. To use the credentials you entered to connect to MINDBODY in Domo, select the second option. To use a different set of credentials, select the first option.
  |
|
 User's Username
  |
 Enter the username of the user you want to retrieve information for.
  |
|
 User's Password
  |
 Enter the password of the user you want to retrieve information for.
  |
|
 Search Text (Optional)
  |
 Enter a search term to filter by.
  |
|
 Show Active Only
  |
 Select
 **True**
 if you want only active services to appear in your report. To show all services regardless of status, select
 **False**
 .
  |
|
 Functions
  |
 Select all functions you want to retrieve data for.
  |
|
 Number of Date Parameters
  |
 Select the number of required date parameters.
  |
|
 Aggregation Period
  |
 Select whether you want to aggregate data by day or retrieve data from the entire date range at once. The first option is recommended only if your function normally aggregates over the entire date range but you want a daily date grain. Otherwise select the second option.
  |
|
 Sell Online
  |
 Select
 **True**
 if you want Sell Online packages to appear in your report; otherwise select
 **False**
 .
  |
|
 Online Only
  |
 Select
 **True**
 if you want to show only online programs in your report. To show all programs, select
 **False**
 .
  |
|
 Staff Filters
  |
 Enter a comma-separated list of filter keywords you want to filter your staff report by. For example:

StaffViewable,AppointmentInstructor

|


###
 Other Panes

For information about the remaining sections of the connector interface, including how to configure scheduling, retry, and update options, see

Adding a DataSet Using a Data Connector

.

