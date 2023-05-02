

Intro
-------

Palace is a property management system that provides services like listings CRM, sales statistics program and electronic agreement for house sales. This platform helps you to grow your business, communicate with owners and tenants, stay in touch with your team, monitor your business from anywhere, and control maintenance. The Domo Palace connector pulls the detailed data about your extended, external, active, inactive properties along with the management details. Use Domo's Palace connector to retrieve the data about properties under management, active and inactive properties with reasons, and much more. To learn more about the Palace API, visit their page (

https://support.getpalace.com/hc/en-us/sections/360001981653-Integrations-with-Palace-API-s

).


 You connect to your Palace account in the Data Center. This topic discusses the fields and menus that are specific to the Palace Connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in

Adding a DataSet Using a Data Connector

.

  |  |
| --- | --- |
| **Primary Use Cases**  |
 This Connector lets you retrieve data about extended, external, active, inactive properties along with the management details .
  |
| **Primary Metrics**  | * External Suburbs AUS
* External Suburbs NZ
* Management Group
* All Properties
 |
| **Primary Company Roles**  | * Sales and Marketing
* Analytics
* Property Management
* Director of Marketing
 |
| **Average Implementation Time**  |
 Typically less than an hour.
  |
| **Ease of Use (on a 1-to-10 scale with 1 being easiest)**  |
 3
  |

Prerequisites
---------------

To connect to your Palace account and create a DataSet, you must have the username and password associated  with your Palace account.


 Connecting to Your Palace Account
-----------------------------------

This section enumerates the options in the Credentials and Details panes in the Palace Connector page. The components of the other panes in this page,
 **Scheduling**
 and
 **Name & Describe Your DataSet**
 , are universal across most connector types and are discussed in greater length in

Adding a DataSet Using a Data Connector

.

##
 Credentials Pane

This pane contains fields for entering credentials to connect to your Palace account. The following table describes what is needed for each field:


 Field
  |
 Description
  |
| --- | --- |
|

Username

|
 Enter the username you use to log into your Palace account.
  |
|

Password

|
 Enter the password you use to log into your Palace account.
  |

Once you have entered valid Palace credentials, you can use the same account any time you go to create a new Palace DataSet. You can manage Connector accounts in the
 **Accounts**
 tab in the Data Center. For more information about this tab, see

Managing User Accounts for Connectors

.

##
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
 Select the Palace report you want to run. The following reports are available:


|  |  |
| --- | --- |
|
 All Properties
  |
 Returns all properties with detailed data.
  |
|
 Building Group
  |
 Returns all building group details with description.
  |
|
 Building Type
  |
 Returns all building type details with description.
  |
|
 Extended Property
  |
 Returns all properties with detailed data along with the ability to include custom fields.
  |
|
 External Suburbs AUS
  |
 Returns all AUS suburbs, states and postcodes.
  |
|
 External Suburbs NZ
  |
 Returns all NZ suburbs related codes and descriptions.
  |
|
 Management Group
  |
 Returns all management group details with description.
  |
|
 Management Type
  |
 Returns all management type details with description.
  |
|
 Property Active Reasons
  |
 Returns all active property reason options.
  |
|
 Property By Code
  |
 Returns a single property with detailed data.
  |
|
 Property Inactive Reasons
  |
 Returns all inactive property reason options.
  |

|
|
 Property Status
  |

Specify whether you want to retrieve data for the current properties or archived properties.

|
|
 Property Code
  |
 Select the property code.
  |
|
 Custom Field Code
  |
 Select one or more custom field codes.
  |


###
 Other Panes

For information about the remaining sections of the Connector interface, including how to configure scheduling, retry, and update options, see

Adding a DataSet Using a Data Connector

.


 FAQs
------


####
 What version of the

[insert Connector name here]

API does this Connector use?

This Connector uses version

[insert version number here]

of the

[insert Connector name here]

API (

[insert link to API documentation here]

).

###
 Which endpoint(s) does each report call in this Connector?


|
 Report Name
  |
 Endpoint URL(s)
  |
| --- | --- |
|
 [Report 1]
  |
 [endpoint URL]
  |
|
 [Report 1]
  |
 [endpoint URL]
  |
|
 [Report 1]
  |
 [endpoint URL]
  |
|
 [Report 1]
  |
 [endpoint URL]
  |
|
 [Report 1]
  |
 [endpoint URL]
  |
|
 [Report 1]
  |
 [endpoint URL]
  |
|
 [Report 1]
  |
 [endpoint URL]
  |
|
 [Report 1]
  |
 [endpoint URL]
  |
|
 [Report 1]
  |
 [endpoint URL]
  |


####
 What kind of credentials do I need to power up this Connector?

You need the username and password associated with your Palace account.

###
 Do I need a certain kind of account to set up the Connector?


 [Explain if they need an Admin account to access the API.]


####
 What is the difference between the

[insert Connector name here]

and

[insert Connector name here]

Advanced Connectors?


 [Explain what the difference is between the two Connectors if there is an Advanced version of the Connector available.]


####
 Are there any API limits I should be aware of?

No


 Troubleshooting
-----------------


* Make sure your authentication remains valid.
* Review the configuration to make sure that all required items have been selected.
* Review the Connector history for error messages.
* In rare cases, you may be requesting too much information and reaching API limitations or timeouts. If this is the case, you can review the history of the Connector run to see the error message and duration. If this is the case, you can reduce the number of accounts that are being pulled, choose a smaller number of metrics for the report that you are pulling, or reduce the timeframe that you are trying to pull.


