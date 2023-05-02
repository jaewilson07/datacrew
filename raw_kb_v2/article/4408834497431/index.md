

Intro
-------


 PII Vault privacy compliance is accomplished through Poly-Anonymization. Poly-Anonymization involves taking any personal identifying pieces of information and swapping it out for our Poly-Anonymous Identifier (Poly-Id). The Anonomatic Augmented Writeback Connector takes a Domo dataset and uses the Anonomatic service to anonymize the data, and then writes it back to another Domo dataset. To power up this connector, you need your PII Vault Container host, port and service account ID, and the API key for your PII Vault service.

You configure your Domo-

PIIVault Container

connection in the Data Center. This topic discusses the fields and menus that are specific to the

Anonomatic Augmented Writeback

Connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in

Adding a DataSet Using a Data Connector

.

*Note:**
 The owner of a writeback dataset must also be an owner or co-owner of the input dataset.

Prerequisites
---------------

To configure this Connector, you must have the following:

 The host of your PIIVault Container
* The port number of your PIIVault Container
* Your PIIVault Service Account ID
* The API Key for your PIIVault service

Configuring the Connection
----------------------------

This section enumerates the options in the
 **Credentials**
 and
 **Details**
 panes in the

Anonomatic Augmented Writeback

Connector page. The components of the other panes in this page,
 **Scheduling**
 and
 **Name & Describe Your DataSet**
 , are universal across most Connector types and are discussed in greater length in

Adding a DataSet Using a Data Connector

.

##

Credentials Pane


 This pane contains fields for entering credentials to connect to your PIIVault container. The following table describes what is needed for each field:


|

Field

|

Description

|
| --- | --- |
|
 Host
  |
 Enter the host of your PIIVault Container.
  |
|
 Port
  |
 Enter the port number of your PIIVault Container.
  |
|
 Account ID
  |
 Enter your PIIVault Service Account ID.
  |
|
 API Key
  |
 Enter API Key for your PIIVault service.
  |


 Once you have entered valid credentials, you can use the same account any time you go to set up a new

Anonomatic Augmented

Writeback DataSet. You can manage connector accounts in the
 **Accounts**
 tab in the Data Center. For more information about this tab, see

Managing User Accounts for Connectors

.


###
 Details Pane

This pane contains a number of fields for specifying your data and indicating where it's going.


 Menu
  |
 Description
  |  |
|
 Input DataSet ID
  |

Enter the ID of your Domo dataset containing PII data to anonymize with PIIVault Anonomatic service.

You can find the ID by opening the details view for the DataSet in the Data Center and looking at the portion of the URL following

datasources/

.


 For example, in the URL

https://mycompany.domo.com/datasources/845305d8-da3d-4107-a9d6-13ef3f86d4a4/details/overview

, the DataSet ID is

845305d8-da3d-4107-a9d6-13ef3f86d4a4.

|
|
 Map dataset PII fields and Anonomatic service fields
  | * Select the dataset column for the required Anonomatic service field. Choose a field that should be

unique.
* Match the desired Anonomatic service fields and dataset's PII data columns for optional fields.
* Use 'Redact Value' checkbox if you want to redact any PII field data from Domo.
 |
|
 Identifier FieldName
  |
 Enter the input dataset id to map the fields here.
  |


###
 Other Panes

For information about the remaining sections of the connector interface, including how to configure scheduling, retry, and update options, see

Adding a DataSet Using a Data Connector

.


 FAQs
------


####
 What kind of credentials do I need to power up this connector?

You need the host name and port number of your PIIVault Container, and the account ID and API key associated with your PIIVault Service.

###
 How often can the data be updated?

As often as needed.

###
 Are there any API limits that I need to be aware of?

No

###
 How do I find the Input Dataset ID?

Your Domo input dataset id is in the URL of the dataset you are exporting data from. For example:

https://customer.domo.com/datasources/aaaaaaaa-bbbb-cccc-dddd-eeeeeeeeeeee/details/settings


