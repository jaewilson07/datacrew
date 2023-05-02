

Intro
-------


 Microsoft Dynamics CRM is a CRM business solution that drives sales productivity and marketing effectiveness through social insights, business intelligence and campaign management.

The Domo Microsoft Dynamics CRM Connector allows you to retrieve data on your defined entities within Microsoft Dynamics CRM. For more information about the Microsoft Dynamics CRM API, visit their website. (

https://msdn.microsoft.com/en-us/lib.../bb928212.aspx

)


 You connect to your Microsoft Dynamics CRM installation in the Data Center. This topic discusses the fields and menus that are specific to the Microsoft Dynamics CRM connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in

Adding a DataSet Using a Data Connector

.

  |  |
| --- | --- |
|
**Primary Use Cases**
 |
 This connector is appropriate for:
 * Sales management
* Marketing lead generation
* Pipeline management
 |
|
**Primary Metrics**
 | * Leads generated
* MQL
* MQO
* SAO
* Won Deals
* Open Opportunities
* Win Rates
* Average Deal Size
 |
|
**Primary Company Roles**
 |
 Salespeople, executives, etc.
  |
|
**Average Implementation Time**
 |
 30 hours
  |
|
**Ease of Use (on a 1-to-10 scale with 1 being easiest)**
 |
 8
  |

Best Practices for Consulting/Support
---------------------------------------

The Microsoft Dynamics CRM API returns ID numbers instead of names. Within the API itself, there is likely a lookup table of some sort that is used to provide the actual data; however, that lookup table data is not available to be pulled through the API. If the customer needs to get around this, you may need to build a lookup process in Domo. There may be some kind of API setting that returns sensitive data as GUIDs or something similar. It may also be something the client has control over; for example, in their their settings, they might have the option to "mask" those kind of values in API calls. You may want to look over the API docs or get on the phone with the client's Microsoft liaison to confirm.


 Prerequisites
---------------

To connect to your Microsoft Dynamics CRM installation in order to retrieve information, you must have the following:

 The URL of your Dynamics CRM installation.
* The username you use to log into the Dynamics CRM installation.
* The password you use to log into the Dynamics CRM installation.

Connecting to Your Microsoft Dynamics CRM Installation
--------------------------------------------------------


 This section enumerates the options in the
 **Credentials**
 and
 **Details**
 panes in the Microsoft Dynamics CRM Connector page. The components of the other panes in this page,
 **Scheduling**
 and
 **Name & Describe Your DataSet**
 , are universal across most connector types and are discussed in greater length in

Adding a DataSet Using a Data Connector

.


###

Credentials Pane


 This pane contains fields for entering credentials to connect to a Microsoft Dynamics CRM installation. The following table describes what is needed for each field:


|

Field

|

Description

|
| --- | --- |
|
 URL
  |
 Enter the URL of your Dynamics CRM installation. For example:

mycompany.crm.dynamics.com


 |
|
 Username
  |
 Enter the username you use to log into the Dynamics CRM installation URL.
  |
|
 Password
  |
 Enter the password you use to log into the Dynamics CRM installation URL.
  |


 Once you have entered valid Microsoft Dynamics CRM credentials, you can use the same account any time you go to create a new Microsoft Dynamics CRM DataSet. You can manage connector accounts in the
 **Accounts**
 tab in the Data Center. For more information about this tab, see

Managing User Accounts for Connectors

.


###
 Details Pane

This pane contains menus in which you can select a Microsoft Dynamics CRM entity and attributes for your report.


 Menu
  |
 Description
  |
| --- | --- |
|
 Entity
  |
 Select the entity for your report. This list includes every entity in the Dynamics CRM installation that the authenticated user has access to.
  |
|

Attributes
  |
 Select all attributes for the given entity you want to appear in your report. This menu is not populated until you select an entity in the Entity menu.
  |

##
 Other Panes

For information about the remaining sections of the connector interface, including how to configure scheduling, retry, and update options, see

Adding a DataSet Using a Data Connector

.


