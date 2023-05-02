

Intro
-------

MINDBODY's management software for wellness services and fitness organizations gets even better with the Domo connector. Use this connector to get data about classes, clients, payments, transactions and more for the tight and toned analysis.


 Once the data is in Domo, you can combine it with other data from across your organization. Use Domo to track and monitor how the data changes over time, and create customizable reports to tell compelling stories behind the data. Within just a few minutes you’ll be able to quickly and easily create powerful visualizations that identify key metrics to track.  To learn more about the MINDBODY API, visit their page (

https://developers.mindbodyonline.com/

).


 You connect to your MINDBODY account in the Data Center. This topic discusses the fields and menus that are specific to the MINDBODY Online REST connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in

Adding a DataSet Using a Data Connector

.


 Prerequisites
---------------

To connect to your MINDBODY account and create a DataSet, you must have the following:

 Your MINDBODY API key
* Your site ID
* Your MINDBODY username and password

Connecting to Your MINDBODY Account
-------------------------------------


 This section enumerates the options in the
 **Credentials**
 and
 **Details**
 panes in the MINDBODY Online REST Connector page. The components of the other panes in this page,
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
 API Key
  |
 Enter your MINDBODY API key.
  |
|
 Site ID
  |
 Enter your MINDBODY site ID.
  |
|
 Username
  |
 Enter the username associated with your

MINDBODY account.
  |
|
 Password
  |
 Enter the password associated with your

MINDBODY account.
  |


 Once you have entered valid MINDBODY Online REST credentials, you can use the same account any time you go to create a new MINDBODY DataSet. You can manage connector accounts in the
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
 Select the MINDBODY Online REST report you want to run. The following reports are available:


|  |  |
| --- | --- |
|
 Accepted Card Type
  |
 Get the list of Accepted Card Type
  |
|
 Active Client Membership
  |
 Get the list of active memberships for a given client.
  |
|
 Activation Code
  |
 Get the Activation Code
  |
|
 Active Session Times
  |
 Get a list of times that are active for a given program schedule type.
  |
|
 Appointment Add ons
  |
 Get a list of Appointment Add ons.
  |
|
 Appointment Available Dates
  |
 Get a list of Appointment Available Dates.
  |
|
 Appointment Options
  |
 Get a list of appointment options.
  |
|
 Appointment Schedule Items
  |
 Get a list of Appointment Schedule Items.
  |
|
 Bookable Items
  |
 Returns a list of availabilities with the information needed to book appointments.
  |
|
 Categories
  |
 Returns a list of Categories.
  |
|
 Class Descriptions
  |
 Returns a list of class descriptions.
  |
|
 Class Schedules
  |
 Get a list of class schedules.
  |
|
 Class Visits
  |
 Get the list of visits containing information for a specified class.
  |
|
 Classes
  |
 Returns a list of classes.
  |
|
 Client Account Balances
  |
 Get account balances for the given clients.
  |
|
 Client Business Mode
  |
 Get a list of Client Business Mode.
  |
|
 Client Complete Info
  |
 Get a list of Client Complete Info.
  |
|
 Client Contracts
  |
 Get a list of contracts for a given client.
  |
|
 Client Direct Debit Info
  |
 Get a list of Client Direct Debit Info.
  |
|
 Client Duplicates
  |
 Get a list of Client Duplicates.
  |
|
 Client Formula Notes
  |
 Get a list of Client Formula Notes.
  |
|
 Client Indexes
  |
 Get a list of client indexes where each index represents a multiple choice option that allows a client to choose from.
  |
|
 Client Purchases
  |
 Get a list of purchases of a specific client.
  |
|
 Client Referral Types
  |
 Get a list of referral types which are options that the new clients choose to identify how they know the business.
  |
|
 Client Rewards
  |
 Get list of client Rewards
  |
|
 Client Schedule
  |
 Get schedule of a specific client.
  |
|
 Client Services
  |
 Get a list of visits of a Client Services.
  |
|
 Client Visits
  |
 Get a list of visits of a specific client.
  |
|
 Clients
  |
 Get a list of clients.
  |
|
 Contract Log
  |
 Get a list of Contract Log.
  |
|
 Contract Log Type
  |
 Get a list of Contract Log Type.
  |
|
 Courses
  |
 Get a list of courses offered by the studio.
  |
|
 Cross Regional Client Associations
  |
 Get a list of Cross Regional Client Associations.
  |
|
 Custom Client Fields
  |
 Get customized client fields that consist of name and data type.
  |
|
 Custom Payment Methods
  |
 Get the custom payment methods of a site.
  |
|
 Enrollments
  |
 Returns a list of enrollments offered by the studio.
  |
|
 Genders
  |
 Returns a list of Genders.
  |
|
 Gift Card
  |
 Returns a list of Gift Card.
  |
|
 Gift Card Balance
  |
 Returns a list of Gift Card Balance.
  |
|
 Locations
  |
 Get a list of locations within the specified sites.
  |
|
 Memberships
  |
 Get a list of Memberships within the specified sites.
  |
|
 Mobile providers
  |
 Get the list of mobile providers that are supported by the business.
  |
|
 Packages
  |
 Get a list of packages available for sale.
  |
|
 Payment Type
  |
 Get a list of Payment Type
  |
|
 Products
  |
 Get a list of products available for sale.
  |
|
 Products Inventory
  |
 Get a list of Products Inventory.
  |
|
 Programs
  |
 Return a list of programs or service categories.
  |
|
 Promo Codes
  |
 Return a list of promo codes at the specified business.
  |
|
 Prospect Stages
  |
 Get a list of Prospect Stages.
  |
|
 Relationships
  |
 Get a list of relationships.
  |
|
 Required Client Fields
  |
 Get the list of fields that a new client has to fill out in business mode, specifically for the sign up process.
  |
|
 Resources
  |
 Return a list of resources or rooms.
  |
|
 Staff Image URL
  |
 Return a list of Staff Image URL.
  |
|
 Staff Session Types
  |
 Return a list of Staff Session Types.
  |
|
 Sale Contract
  |
 Get a list of Sale Contract reports.
  |
|
 Sales
  |
 Get a list of sales for reports.
  |
|
 SalesReps
  |
 Get a list of sales Reps for reports.
  |
|
 Semesters
  |
 Get a list of semesters offered by the studio.
  |
|
 Services
  |
 Get a list of services available for sale.
  |
|
 Session Types
  |
 Return a list of session types.
  |
|
 Sites
  |
 Get a list of sites available to the source credentials.
  |
|
 Staff
  |
 Get a list of staff members including information about them.
  |
|
 Staff Appointments
  |
 Get a list of appointments by staff member.
  |
|
 Staff Permission
  |
 Get a list of Staff Permission.
  |
|
 Transactions
  |
 Get a list of Transactions.
  |
|
 Wait List Entries
  |
 Get a list of Wait List Entries.
  |

|
|
 Start Date
  |
 Select the start date from the date picker.
  |
|
 End Date
  |
 Select the end date from the date picker.
  |
|
 Schedule Type
  |
 Select the schedule type you want to retrieve information for.
  |
|
 Show Active Only
  |
 Select 'True' if you want only active services to appear in your report. To show all services regardless of status, select 'False'.
  |
|
 Cross Regional Lookup
  |
 Select 'True' to if you want to get the cross regional lookup else select 'False'.
  |
|
 Required Only
  |
 Select 'True' to if you want to get the required client indexes else select 'False'.
  |
|
 Include Inactive
  |
 Select 'True' to if you want to include the inactive client referral types else select 'False'.
  |
|
 OnlineOnly / SoldOnline / Sellonline
  |
 Select 'True' to if you want to get the online or sold online or sell online values else select 'False'.
  |
|
 Active
  |
 Select 'True' to if you want to get the active prospects stages else select 'False'.
  |
|
 First Name
  |
 Enter the first name.
  |
|
 Last Name
  |
 Enter the last name.
  |
|
 Email
  |
 Enter the email address.
  |
|
 Sales Rep
  |
 Select sales representative number from the dropdown box.
  |


###
 Other Panes

For information about the remaining sections of the connector interface, including how to configure scheduling, retry, and update options, see

Adding a DataSet Using a Data Connector

.


 FAQs
------


####
 What version of the MINDBODY Online API does this connector use?

This connector uses version 6 of the MINDBODY Online API (

https://api.mindbodyonline.com/public/v6/

).

###
 Which endpoint(s) does each report call in this connector?


|
 Report Name
  |
 Service
  |
| --- | --- |
|
 Accepted Card Type
  |
 /sale/acceptedcardtypes
  |
|
 Active Client Membership
  |
 /client/activeclientmemberships
  |
|
 Activation Code
  |
 /site/activationcode
  |
|
 Active Session Times
  |
 /appointment/activesessiontimes
  |
|
 Appointment Ad ons
  |
 /appointment/addons
  |
|
 Appointment Available Dates
  |
 /appointment/availabledates
  |
|
 Appointment Options
  |
 /appointment/appointmentoptions
  |
|
 Appointment Schedule Items
  |
 /appointment/scheduleitems
  |
|
 Bookable Items
  |
 /appointment/bookableitems
  |
|
 Categories
  |
 /categories
  |
|
 Class Descriptions
  |
 /class/classdescriptions
  |
|
 Class Schedules
  |
 /class/classschedules
  |
|
 Class Visits
  |
 /class/classvisits
  |
|
 Classes
  |
 /class/classes
  |
|
 Client Account Balances
  |
 /client/clientaccountbalances
  |
|
 Client Business Mode
  |
 /client/clients
  |
|
 Client Complete Info
  |
 /client/clientcompleteinfo
  |
|
 Client Contracts
  |
 /client/clientcontracts
  |
|
 Client Direct Debit Info
  |
 /client/clientdirectdebitinfo
  |
|
 Client Duplicates
  |
 /client/clientduplicates
  |
|
 Client Formula Notes
  |
 /client/clientformulanotes
  |
|
 Client Indexes
  |
 /client/clientindexes
  |
|
 Client Purchases
  |
 /client/clientpurchases
  |
|
 Client Referral Types
  |
 /client/clientreferraltypes
  |
|
 Clients Rewards
  |
 /client/clientrewards
  |
|
 Client Schedule
  |
 /client/clientschedule
  |
|
 Client Services
  |
 /client/clientservices
  |
|
 Client Visits
  |
 client/clientvisits
  |
|
 Clients
  |
 /client/clients
  |
|
 Contract Log
  |
 /client/contactlogs
  |
|
 Contract Log Type
  |
 /client/contactlogtypes
  |
|
 Courses
  |
 /class/courses
  |
|
 Cross Regional Client Associations
  |
 /client/crossregionalclientassociations
  |
|
 Custom Client Fields
  |
 /client/customclientfields
  |
|
 Custom Payment Methods
  |
 /sale/custompaymentmethods
  |
|
 Enrollments
  |
 /enrollment/enrollments
  |
|
 Genders
  |
 /site/genders
  |
|
 Gift Card
  |
 /sale/giftcards
  |
|
 Gift Card Balance
  |
 /sale/giftcardbalance
  |
|
 Locations
  |
 /site/locations
  |
|
 Memberships
  |
 /site/memberships
  |
|
 Mobile providers
  |
 /site/mobileproviders
  |
|
 Packages
  |
 /sale/packages
  |
|
 Payment Type
  |
 /site/paymenttypes
  |
|
 Products
  |
 /sale/products
  |
|
 Product Inventory
  |
 /sale/productsinventory
  |
|
 Programs
  |
 /site/programs
  |
|
 Promo Codes
  |
 /site/promocodes
  |
|
 Prospect Stages
  |
 /site/prospectstages
  |
|
 Relationships
  |
 /site/relationships
  |
|
 Required Client Fields
  |
 /client/requiredclientfields
  |
|
 Resources
  |
 /site/resources
  |
|
 Sales
  |
 /sale/sales
  |
|
 Sale Contract
  |
 /sale/contracts
  |
|
 SalesReps
  |
 /staff/salesreps
  |
|
 Semesters
  |
 /class/semesters
  |
|
 Services
  |
 /client/clientservices
  |
|
 Session Types
  |
 /site/sessiontypes
  |
|
 Sites
  |
 /site/sites
  |
|
 Staff
  |
 /usertoken/issue
  |
|
 Staff Appointments
  |
 /appointment/staffappointments
  |
|
 Staff Image URL
  |
 /staff/imageurl
  |
|
 Staff Permission
  |
 /Staff/Staffpermissions
  |
|
 Staff Session Types
  |
 /staff/sessiontypes
  |
|
 Transactions
  |
 /sale/transactions
  |
|
 Wait List Entries
  |
 /class/waitlistentries
  |


####
 What kind of credentials do I need to power up this connector?

You need MINDBODY API key, site ID, and the username and password associated with your MINDBODY account.

###
 How often can the data be updated?

As often as needed.

###
 Are there any API limits that I need to be aware of?

MINDBODY Online allows 2000 requests per minute or lower for optimal performance.

