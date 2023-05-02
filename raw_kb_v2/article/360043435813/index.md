

Intro
-------

PropertyMe offers online property management software for property managers.  To learn more about PropertyMe, visit their website (

https://www.propertyme.com/

).


 You connect to your PropertyMe account in the Data Center. This topic discusses the fields and menus that are specific to the PropertyMe connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in

Adding a DataSet Using a Data Connector

.


 Prerequisites
---------------

To connect to your PropertyMe account and create a DataSet, you must have a PropertyMe username and password.


 Connecting to Your PropertyMe Account
---------------------------------------

This section enumerates the options in the
 **Credentials**
 and
 **Details**
 panes in the PropertyMe Connector page. The components of the other panes in this page,
 **Scheduling**
 and
 **Name & Describe Your DataSet

,**
 are universal across most connector types and are discussed in greater length in Adding a DataSet Using a Data Connector.

##
 Credentials Pane

The Domo PropertyMe connector uses OAuth to connect, so there is no need to enter credentials within Domo. Click
 **Connect**
 (or select
 **Add Account**
 if you have existing PropertyMe accounts in Domo) to open the PropertyMe OAuth screen where you can enter your PropertyMe credentials and select the desired permissions. It is recommended that you check
 *all*
 of the boxes under "Application Access"; otherwise some reports may not work.

Once you have entered valid PropertyMe credentials, you can use the same account any time you go to create a new PropertyMe DataSet. You can manage connector accounts in the
 **Accounts**
 tab in the

Data Center

. For more information about this tab, see

Managing User Accounts for Connectors

.

*Note:**
 If you are already logged into PropertyMe when you connect in Domo, you are authenticated automatically when you click
 **Add account**
 . If you want to connect to an account that is different from the one you are logged into, you must first log out of PropertyMe.


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
 Select the PropertyMe report you want to run. The following reports are available:


|  |  |
| --- | --- |
|
 Contacts
  |
 Returns a list of contacts.
  |
|
 Contacts Alerts
  |
 Returns a list of contact alerts.
  |
|
 Contacts Owners
  |
 Returns a list of owners.
  |
|
 Contacts Suppliers
  |
 Returns a list of suppliers.
  |
|
 Contacts Tenants
  |
 Returns a list of tenants.
  |
|
 Dashboard Activities
  |
 Returns a list of dashboard activities.
  |
|
 Dashboard Communications
  |
 Returns a list of dashboard communications.
  |
|
 Dashboard Lots
  |
 Returns a list of dashboard lots.
  |
|
 Dashboard Transactions
  |
 Returns a list of dashboard transactions.
  |
|
 Inspections
  |
 Returns a list of inspections.
  |
|
 Inspections Reports
  |
 Returns a list of inspection reports.
  |
|
 Inspections Status
  |
 Returns status information for inspections.
  |
|
 Job Tasks
  |
 Returns a list of tasks.
  |
|
 Lots
  |
 Returns a list of lots.
  |
|
 Lots Alerts
  |
 Returns a list of lot alerts.
  |
|
 Lots Archived
  |
 Returns a list of archived lots.
  |
|
 Lots Rentals
  |
 Returns a list of lot rentals.
  |
|
 Lots Sales
  |
 Returns a list of lot sales.
  |
|
 Lots Vacancy
  |
 Returns a list of lot vacancies.
  |
|
 Tasks
  |
 Returns a list of tasks.
  |
|
 Tenancies
  |
 Returns a list of tenancies.
  |
|
 Tenancies Balances
  |
 Returns a list of balances for tenants.
  |

|
|
 Type
  |
 Select a filter option to filter your report by.
  |
|
 Inspection ID
  |
 Select an inspection ID to filter report results by that ID.
  |
|
 Contact
  |
 Select a contact to filter report results by that contact.
  |
|
 Lot
  |
 Select the lot you want to retrieve data for.
  |


###
 Other Panes

For information about the remaining sections of the connector interface, including how to configure scheduling, retry, and update options, see

Adding a DataSet Using a Data Connector

.

