

Intro
-------

Jomablue provides event intelligence data, empowering top brands to transform event experiences into sales and marketing insights. To learn more about Jomablue, visit their website (

https://jomablue.com/

).


 You connect to your Jomablue account in the Data Center. This topic discusses the fields and menus that are specific to the Jomablue connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in

Adding a DataSet Using a Data Connector

.


 Prerequisites
---------------

To connect to your Jomablue account and create a DataSet, you must have the following:

 The email address associated with your Jomablue account
* Your Jomablue password

Connecting to Your Jomablue Account
-------------------------------------


 This section enumerates the options in the
 **Credentials**
 and
 **Details**
 panes in the Jomablue Connector page. The components of the other panes in this page,
 **Scheduling**
 and
 **Name & Describe Your DataSet**
 , are universal across most connector types and are discussed in greater length in

Adding a DataSet Using a Data Connector

.


###

Credentials Pane


 This pane contains fields for entering credentials to connect to your Jomablue account. The following table describes what is needed for each field:


|

Field

|

Description

|
| --- | --- |
|
 Email
  |
 Enter the email associated with your Jomablue account.
  |
|
 Password
  |
 Enter your Jomablue password.
  |
|
 Organization Name
  |
 Enter the name of your organization.
  |


 Once you have entered valid Jomablue credentials, you can use the same account any time you go to create a new Jomablue DataSet. You can manage connector accounts in the
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
 Select the Jomablue report you want to run. The following reports are available:


|  |  |
| --- | --- |
|
 Categories Report
  |
 Returns category data.
  |
|
 Custom Fields Event Report
  |
 Returns event and related person-event data for the specified custom field.
  |
|
 Custom Fields Person Report
  |
 Returns person data and the related person events, custom fields and person-event-categories data for the specified custom field.
  |
|
 Custom Fields Report
  |
 Returns data for custom fields.
  |
|
 Events Event Categories Report
  |
 Returns event category data such as start and end of registration and registration limit for the specified event.
  |
|
 Events Person Report
  |
 Returns data about people who checked in or cancelled for the specified event.
  |
|
 Events Report
  |
 Returns event data such as name, time zone, and timings.
  |
|
 People Custom Fields Report
  |
 Returns custom field data for the specified person, such as company size, job role, industry, departments, dietary requirements, and country.
  |
|
 People Report
  |
 Returns data about people in your events.
  |
|
 Person Event Categories Data
  |
 Returns person-event-categories data.
  |

|
|
 Custom Field ID
  |
 Enter the ID of the custom field you want to return data for. You can find this by running the "Custom Fields" report.
  |
|
 Event
  |
 Select the event you want to return data for.
  |
|
 Person
  |
 Select the person you want to return data for.
  |
|
 Event Category
  |
 Select the event category you want to return data for.
  |
|
 Person Event Category
  |
 Select the person event category you want to return data for.
  |
|
 Person Event
  |
 Select the person event you want to return data for.
  |
|
 Sublist
  |
 Select the sublist you want to flatten.
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
 Are there any API limits I should be aware of?

No.

####
 How often can the data be updated?

As often as needed.

