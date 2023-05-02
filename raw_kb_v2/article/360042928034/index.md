

Intro
-------

Toast is a point-of-sale software system for restaurants that provides order tracking and a reporting and analytics solution. Use the Domo Toast connector to retrieve data about orders, menu items, and payments. To learn more about the Toast API, visit their page (

https://pos.toasttab.com/integrations

).


 You connect to your Toast account in the Data Center. This topic discusses the fields and menus that are specific to the Toast connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in

Adding a DataSet Using a Data Connector

.


 Prerequisites
---------------

To connect to your Toast account and create a DataSet, you must have the following:

 Your Toast client ID
* Your Toast client secret
* The Toast restaurant ID for one of the restaurants in your restaurant management group

For information about obtaining these credentials, reach out to your Toast representative.


 Connecting to Your Toast Account
----------------------------------


 This section enumerates the options in the
 **Credentials**
 and
 **Details**
 panes in the Toast Connector page. The components of the other panes in this page,
 **Scheduling**
 and
 **Name & Describe Your DataSet**
 , are universal across most connector types and are discussed in greater length in

Adding a DataSet Using a Data Connector

.


###

Credentials Pane


 This pane contains fields for entering credentials to connect to your Toast account. The following table describes what is needed for each field:


|

Field

|

Description

|
| --- | --- |
|
 Domain
  |
 Enter the hostname for your Toast account. This should be in the format


 https://
 *hostname*
 .

toasttab.com

.
  |
|
 Client ID
  |
 Enter your Toast client ID.
  |
|
 Client Secret
  |
 Enter your Toast client secret.
  |
|
 Restaurant ID
  |
 Enter the ID for any one restaurant in your restaurant management group (this is necessary to make API requests).
  |


 Once you have entered valid Toast credentials, you can use the same account any time you go to create a new Toast DataSet. You can manage connector accounts in the
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
 Select the Toast report you want to run. The following reports are available:


|  |  |
| --- | --- |
|
 Menu Items
  |
 Returns a list of menu items for the specified restaurants.


 Use "Replace" only. Recommended to update no more than once daily or less.
  |
|
 Menu Option Groups
  |
 Returns a list of menu option groups for the specified restaurants.


 Use "Replace" only. Recommended to update no more than once daily or less.
  |
|
 Orders
  |
 Returns orders from the specified date up to the current date. This report only returns up to 30 days of data per run. It will start with the oldest date and go until it reaches the current date.


 Use "Merge" only. Recommended to update once per hour until the data is caught up to the current date, then as often as needed.
  |
|
 Restaurants
  |
 Returns a list of restaurants within your restaurant management group.


 Use "Replace" only. Recommended to update no more than once daily or less.
  |

|
|
 Restaurant Selection
  |
 Select whether you want to pull data for all the restaurants in your management group or only specific restaurants.
  |
|
 Restaurants
  |
 Select the restaurants you want to retrieve data for.
  |
|
 Sub Report
  |
 Select to flatten the data by either the selections or the payments within an order. For example, if you have an order with 3 selections, choosing selections will result in 3 rows of data for that order.
  |
|
 Start Date
  |
 Select the start date for this report. Starting from this date, Domo will retrieve 7 days of data at a time until the connector has caught up to the current date. After this point, each run will only retrieve any new data added since the previous run.
  |


###
 Other Panes

For information about the remaining sections of the connector interface, including how to configure scheduling, retry, and update options, see

Adding a DataSet Using a Data Connector

.

