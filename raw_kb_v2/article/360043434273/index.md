

Intro
-------


 PestRoutes is a software product that helps Pest Control companies lower operating costs, earn more customers, and increase customer retention

. To learn more about the PestRoutes API, visit their page (

https://pestroutes.api-docs.io/v2.0/introduction

).


 You connect to your PestRoutes account in the Data Center. This topic discusses the fields and menus that are specific to the PestRoutes connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in

a DataSet Using a Data Connector

.


 Prerequisites
---------------

To connect to your PestRoutes account and create a DataSet, you must have the following:

 A PestRoutes authentication token.
* A PestRoutes authentication key.
* The subdomain of your PestRoutes account. This is the "company name" portion of your PestRoutes URL. For example, if your URL was
 **https://mycompany.pestroutes.com**
 , the subdomain would be

mycompany

.

To find your authentication token and key, reach out to your PestRoutes representative.


 Connecting to Your PestRoutes Account
---------------------------------------


 This section enumerates the options in the
 **Credentials**
 and
 **Details**
 panes in the PestRoutes Connector page. The components of the other panes in this page,
 **Scheduling**
 and
 **Name & Describe Your DataSet**
 , are universal across most connector types and are discussed in greater length in

Adding a DataSet Using a Data Connector

.


###

Credentials Pane


 This pane contains fields for entering credentials to connect to your PestRoutes account. The following table describes what is needed for each field:


|

Field

|

Description

|
| --- | --- |
|
 Authentication Token
  |
 Enter your PestRoutes authentication token.
  |
|
 Authentication Key
  |
 Enter your PestRoutes authentication key.
  |
|
 Subdomain
  |
 Enter the subdomain of your PestRoutes account. For information about finding the subdomain, see "Prerequisites," above.
  |


 Once you have entered valid PestRoutes credentials, you can use the same account any time you go to create a new PestRoutes DataSet. You can manage connector accounts in the
 **Accounts**
 tab in the Data Center. For more information about this tab, see

Managing User Accounts for Connectors

.


###
 Details Pane

This pane contains a single menu from which you select your desired report type.


 Menu
  |
 Description
  |
| --- | --- |
|
 Report
  |
 Select the PestRoutes report you want to run. The following reports are available:


|  |  |
| --- | --- |
|
 Customers
  |
 Returns a list of customers.
  |
|
 Appointments
  |
 Returns a list of appointments.
  |
|
 Employees
  |
 Returns a list of employees.
  |
|
 Service Types
  |
 Returns a list of service types.
  |
|
 Subscriptions
  |
 Returns a list of subscriptions.
  |
|
 Tickets
  |
 Returns a list of tickets.
  |

|


###
 Other Panes

For information about the remaining sections of the connector interface, including how to configure scheduling, retry, and update options, see

a DataSet Using a Data Connector

.

