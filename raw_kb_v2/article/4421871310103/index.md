

Intro
-------

VaultRE is a technology developed specifically for the real estate industry. Its end goal is to offer a system that can give a business owner or franchiser the ability to monitor every aspect of their business or group from a single page, from any location and in real time.


 You can create powerful visualizations and reports to track all the properties. Combine your VaultRE data with all your information on Domo and plan for future business demands. To learn more about the VaultRE


 API, visit their page (

https://docs.api.vaultre.com.au

/).


 The VaultRE Connector is a "Cloud App" Connector, meaning it retrieves data stored in the cloud. In the Data Center, you can access the Connector page for this and other Cloud App Connectors by clicking
 **Cloud App**
 in the toolbar at the top of the window.


 You connect to your VaultRE account in the Data Center. This topic discusses the fields and menus that are specific to the VaultRE Connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in

Adding a DataSet Using a Data Connector

.


 Prerequisites
---------------

To connect to your VaultRE account and create a DataSet, you must have the API key and access token associated with your VaultRE account.


 Connecting to Your VaultRE Account
------------------------------------

This section enumerates the options in the Credentials and Details panes in the VaultRE Connector page. The components of the other panes in this page,
 **Scheduling**
 and
 **Name & Describe Your DataSet**
 , are universal across most connector types and are discussed in greater length in

Adding a DataSet Using a Data Connector

.

##
 Credentials Pane

This pane contains fields for entering credentials to connect to your VaultRE account. The following table describes what is needed for each field:


 Field
  |
 Description
  |
| --- | --- |
|
 API Key
  |
 Enter your VaultRE account's API key.
  |
|
 Access Token
  |
 Enter your VaultRE account's access token.
  |

Once you have entered valid VaultRE credentials, you can use the same account any time you go to create a new VaultRE DataSet. You can manage Connector accounts in the
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
 Reports
  |


 Report
  |
 Description
  |
| --- | --- |
|
 Bulk Inspections
  |
 Pulls bulk inspections data.
  |
|
 Conjunctionals
  |
 Retrieves a list of conjunctional property deals.
  |
|
 Contact Contexts
  |
 Calls /contacts and for each contact, gets the contact context data. This report makes API calls for every row.
  |
|
 Contacts
  |
 Pulls contacts data.
  |
|
 Properties
  |
 Pulls property data.
  |
|
 Purchasers
  |
 Calls /properties/sale and for each sale, gets the purchasers data (limited to 5 purchasers per sale to limit column number). This report makes API calls for every row.
  |
|
 Vendors
  |
 Calls /properties/sale and for each sale, gets the vendors data (limited to 5 vendors per sale to limit column number). This report makes API calls for every row.
  |

|
|
 Property Category
  |

Select the category for the property.


 For example, 'Residential' uses the /properties/residential endpoint. 'All' uses the /properties endpoint.

|
|
 Property Status
  |

Select the status for the property category.


 For example, property category 'Residential' and property status 'Sale' uses the /properties/residential/sale endpoint. Property status 'All' would use the /properties/residential endpoint.

|
|
 Number Of Columns To Unnest
  |

Select report as Properties, Property Category as Residential, Property Status as Sold. After this, the number of columns to unnest will get displayed on the UI.


 Enter the number of columns you would like to unnest from the data.

*NOTE:**
 The max number of allowed columns is 132. Default is 20.

|
|
 Page Size
  |
 Select
 **Page Size**
 to accept the number of records to be fetched per page.
  |


###
 Other Panes

For information about the remaining sections of the Connector interface, including how to configure scheduling, retry, and update options, see

Adding a DataSet Using a Data Connector

.


 FAQs
------


####
 When should I use this connector?

This connector allows you to bring your VaultRE data into Domo using an API token for authentication.

###
 What endpoint is the base URL for this connector?

The base URL for this connector is

https://ap-southeast-2.api.vaultre.com.au/api


####
 Which endpoint(s) does each report call in this connector?


|
 Report Name
  |
 Endpoint URL
  |
| --- | --- |
|
 Bulk Inspections
  |
 /v1.3/bulk/inspections
  |
|
 Contact Contexts
  |
 /v1.3/contacts/{id}/context
  |
|
 Contacts
  |
 /v1.3/contacts
  |
|
 Properties
  |
 /v1.3/properties
  |
|
 Purchasers
  |
 /v1.3/properties/{id}/sale/{lifeId}/purchasers
  |
|
 Vendors
  |
 /v1.3/properties/{id}/sale/{lifeId}/owners
  |


####
 What kind of credentials do I need to power up this connector?

You need the API key and access token associated with your VaultRE account.

###
 How often can the data be updated?

As often as needed.

###
 Are there any API limits that I need to be aware of?

No

