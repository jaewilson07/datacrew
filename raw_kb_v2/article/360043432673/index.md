

Intro
-------

Zenefits offers cloud-based software as a service for managing human resources, with a focus on health insurance coverage. To learn more about the Zenefits API, visit their page (

https://www.zenefits.com/app-connect/

).


 You connect to your Zenefits account in the Data Center. This topic discusses the fields and menus that are specific to the Zenefits connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in

a DataSet Using a Data Connector

.


 Prerequisites
---------------

To connect to your Zenefits application and create a DataSet, you must have the following:

 The list of scopes you want to request from Zenefits. For more information about scopes, see

https://developers.zenefits.com/docs/permissions

.
* The username and password for your Zenefits account.

Connecting to Your Zenefits Account
-------------------------------------


 This section enumerates the options in the
 **Credentials**
 and
 **Details**
 panes in the Zenefits Connector page. The components of the other panes in this page,
 **Scheduling**
 and
 **Name & Describe Your DataSet**
 , are universal across most connector types and are discussed in greater length in

Adding a DataSet Using a Data Connector

.


###

Credentials Pane


 This pane contains fields for entering credentials to connect to your Zenefits application. The following table describes what is needed for each field:


|

Field

|

Description

|
| --- | --- |
|
 Scopes
  |
 Enter the list of scopes you want to request from Zenefits. Separate scopes with the "+" symbol. For example:

platform+people+companies+locations+departments+employments+banks+company\_banks+people.department+people.location+people.manager+people.work\_email+people.date\_of\_birth+people.gender

Some column date will only be returned when the appropriate scope is added. For more information about scopes, see

https://developers.zenefits.com/docs/permissions

.
  |


 Once you have entered valid Zenefits credentials, you are taken to the Zenefits OAuth screen where you are asked to enter your Zenefits credentials. You can use the same account any time you go to create a new Zenefits DataSet. You can manage connector accounts in the
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
 Select the Zenefits report you want to run. The following reports are available:


|  |  |
| --- | --- |
|
 Companies
  |
 Returns a list of companies.
  |
|
 Company Bank Accounts
  |
 Returns information about bank accounts for a given company.
  |
|
 Departments
  |
 Returns a list of departments for a given company.
  |
|
 Employee Bank Accounts
  |
 Returns a list of bank accounts for a given employee.
  |
|
 Employments
  |
 Returns a list of employments for a given employee.
  |
|
 Locations
  |
 Returns a list of locations for a given company.`
  |
|
 People
  |
 Returns a list of employees for a given company.
  |

|
|
 Sub Report
  |
 Select the desired sub report.
  |
|
 Company ID
  |
 Select the company you want to retrieve information for.
  |
|
 Person ID
  |
 Select the person you want to retrieve information for.
  |


###
 Other Panes

For information about the remaining sections of the connector interface, including how to configure scheduling, retry, and update options, see

a DataSet Using a Data Connector

.


 FAQs
------


#####
 Which endpoint is the base URL for this Connector?

The base URL for Zenefits is

https://api.zenefits.com/core/

.

####
 Which endpoint(s) does each report call using this Connector?


|
 Report Name
  |
 Endpoint URL
  |
| --- | --- |
|
 Companies
  |

/companies

|
|
 Company Bank Accounts
  |

/companies/{company\_id}/company\_banks

|
|
 Departments
  |

/departments

|
|
 Employees Bank Accounts
  |

/people/{person\_id}/banks

|
|
 Employments
  |

/employments

|
|
 Locations
  |

/locations

|
|
 People
  |

/people

|


#####
 How frequently will my data update?

As often as needed.

####
 Are there any API call limits I should be aware of?

Zenefits allows 100 API calls per subscription per minute.

