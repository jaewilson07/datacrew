

Intro
-------

Rent Manager is property management software that combines financials, marketing tools, reporting and full work order and property management tools into one platform. To learn more about the Rent Manager API, visit their page (

https://www.rentmanager.com/products...ancements/api/

).


 You connect to your Rent Manager account in the Data Center. This topic discusses the fields and menus that are specific to the Rent Manager connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in

Adding a DataSet Using a Data Connector

.


 Prerequisites
---------------

To connect to your Rent Manager account and create a DataSet, you must have the following:

 A Rent Manager username and password
* Your Rent Manager domain

You can find your Rent Manager domain by looking at the portion of your Rent Manager URL right after

https://

. For example, if the URL was

https://mycompany.rentmanager.com

, the domain would be

mycompany

.


 Connecting to Your Rent Manager Account
-----------------------------------------


 This section enumerates the options in the
 **Credentials**
 and
 **Details**
 panes in the Rent Manager Connector page. The components of the other panes in this page,
 **Scheduling**
 and
 **Name & Describe Your DataSet**
 , are universal across most connector types and are discussed in greater length in

Adding a DataSet Using a Data Connector

.


###

Credentials Pane


 This pane contains fields for entering credentials to connect to your Rent Manager account. The following table describes what is needed for each field:


|

Field

|

Description

|
| --- | --- |
|
 Username
  |
 Enter your Rent Manager username.
  |
|
 Password
  |
 Enter your Rent Manager password.
  |
|
 Domain
  |
 Enter your Rent Manager domain (for example, if your instance URL was


 https://mycompany.rentmanager.com


 , the domain would be

mycompany)

.
  |


 Once you have entered valid Rent Manager credentials, you can use the same account any time you go to create a new Rent Manager DataSet. You can manage connector accounts in the
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
 Select the Rent Manager report you want to run. The following reports are available:


|  |  |
| --- | --- |
|
 Amenities
  |
 Returns a list of all amenities.
  |
|
 Application Info
  |
 Returns application information.
  |
|
 Applications
  |
 Returns a list of applications.
  |
|
 Appointments
  |
 Returns a list of appointments.
  |
|
 Asset Manufacturers
  |
 Returns a list of asset manufacturers.
  |
|
 Assets
  |
 Returns a list of all assets.
  |
|
 Asset Status
  |
 Returns the status of all assets.
  |
|
 Asset Types
  |
 Returns a list of asset types.
  |
|
 Bills
  |
 Returns a list of bills.
  |
|
 Bill Details
  |
 Returns a list of all bill details.
  |
|
 Charges
  |
 Returns a list of charges.
  |
|
 Charge Types
  |
 Returns a list of charge types.
  |
|
 Checks
  |
 Returns a list of checks.
  |
|
 Check Details
  |
 Returns a list of all check details.
  |
|
 Colors
  |
 Returns a list of all colors.
  |
|
 Contacts
  |
 Returns a list of contacts.
  |
|
 Custom Privilege Categories
  |
 Returns a list of custom privilege categories.
  |
|
 Custom Privileges
  |
 Returns a list of custom privileges.
  |
|
 Custom Products
  |
 Returns a list of custom products.
  |
|
 Custom Product System Preferences
  |
 Returns a list of custom product system preferences.
  |
|
 Custom Reports
  |
 Returns a list of custom reports.
  |
|
 Deposits
  |
 Returns a list of all deposits.
  |
|
 Deposit Payments
  |
 Returns a list of all deposit payments.
  |
|
 Estimates
  |
 Returns a list of estimates.
  |
|
 Floors
  |
 Returns a list of floors.
  |
|
 GL Accounts
  |
 Returns a list of GL accounts.
  |
|
 Get Custom Reports
  |
 Returns a list of different types of custom reports.
  |
|
 Get Reports
  |
 Returns a list of different types of reports.
  |
|
 History
  |
 Returns historical information.
  |
|
 History Category
  |
 Returns a list of history categories.
  |
|
 History Notes
  |
 Returns a list of history notes.
  |
|
 Inventory Item
  |
 Returns a list of inventory items.
  |
|
 Journals
  |
 Returns a list of journals.
  |
|
 Lead Sources
  |
 Returns a list of lead sources.
  |
|
 Locations
  |
 Returns a list of locations.
  |
|
 Market Rents
  |
 Returns market rent information.
  |
|
 Meter Types
  |
 Returns a list of meter types.
  |
|
 Owner Groups
  |
 Returns a list of owner groups.
  |
|
 Owners
  |
 Returns a list of owners.
  |
|
 Properties
  |
 Returns a list of properties.
  |
|
 Property Groups
  |
 Returns a list of property groups.
  |
|
 Prospects
  |
 Returns a list of prospects.
  |
|
 Purchase Orders
  |
 Returns a list of purchase orders.
  |
|
 Recurring Charges
  |
 Returns a list of recurring charges.
  |
|
 Report Batches
  |
 Returns a list of report batches.
  |
|
 Reports
  |
 Returns a list of reports.
  |
|
 Roles
  |
 Returns a list of roles.
  |
|
 Service Manager Categories
  |
 Returns a list of service manager categories.
  |
|
 Service Manager Issues
  |
 Returns a list of service manager issues.
  |
|
 Service Manager Priorities
  |
 Returns a list of service manager priorities.
  |
|
 Service Manager Projects
  |
 Returns a list of service manager projects.
  |
|
 Service Manager Recurring Issues
  |
 Returns a list of service manager recurring issues.
  |
|
 Service Manager Saved Lists
  |
 Returns a list of service manager saved lists.
  |
|
 Service Manager Statuses
  |
 Returns a list of service manager statuses.
  |
|
 Signable Documents
  |
 Returns a list of signable documents.
  |
|
 System Preferences
  |
 Returns a list of system preferences.
  |
|
 System Web Preferences
  |
 Returns a list of system web preferences.
  |
|
 Tasks
  |
 Returns a list of tasks.
  |
|
 Tenants
  |
 Returns a list of tenants.
  |
|
 Terms
  |
 Returns a list of terms.
  |
|
 Units
  |
 Returns a list of units.
  |
|
 Unit Status Types
  |
 Returns a list of unit status types.
  |
|
 Unit Types
  |
 Returns a list of unit types.
  |
|
 Users
  |
 Returns a list of users.
  |
|
 Utilities
  |
 Returns a list of utilities.
  |
|
 Utility Meter Reading History
  |
 Returns utility meter reading history information.
  |
|
 Utility Meter Readings
  |
 Returns a list of utility meter readings.
  |
|
 Utility Meters
  |
 Returns a list of utility meters.
  |
|
 Vendors
  |
 Returns a list of vendors.
  |

|


###
 Other Panes

For information about the remaining sections of the connector interface, including how to configure scheduling, retry, and update options, see

Adding a DataSet Using a Data Connector

.

