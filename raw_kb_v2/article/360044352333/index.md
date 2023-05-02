

Intro
-------


 Anaplan is a cloud-based business modeling and planning platform for sales, operations and finance.


 Use Domo's Anaplan Advanced V2 connector to return data you have created as an export in the Anaplan user interface. For more information about the Anaplan API, visit their website. (

https://docs.anaplan.apiary.io/

)


 You connect to your Anaplan account in the Data Center. This topic discusses the fields and menus that are specific to the Anaplan Advanced V2 connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in

Adding a DataSet Using a Data Connector

.


 Prerequisites
----------------


 To connect to your Anaplan account and create a DataSet, you must have the following:


* An Anaplan private key.
* A CA-issued X509 certificate.


 For an in-depth guide to obtaining a certificate and exporting your private key, see


 https://community.anaplan.com/t5/Content-Sandbox/A-Guide-to-CA-Certificates-in-Anaplan-Integrations/ta-p/39305

.

Connecting to your Anaplan account
-------------------------------------


 This section enumerates the options in the
 **Credentials**
 and
 **Details**
 panes in the Anaplan Connector page. The components of the other panes in this page,
 **Scheduling**
 and
 **Name & Describe Your DataSet**
 , are universal across most connector types and are discussed in greater length in

Adding a DataSet Using a Data Connector

.


###

Credentials pane


 This pane contains fields for entering credentials to connect to your A


 naplan account. The following table describes what is needed for each field:


|

Field

|

Description

|
| --- | --- |
|

CA Certificate

|
 Copy and paste the text from your CA-issued X509 certificate.
  |
|

Private Key

|
 Enter your Anaplan private key.
  |


 Once you have entered a valid certificate and key, you can use the same account any time you go to create a new Anaplan DataSet. You can manage connector accounts in the
 **Accounts**
 tab in the Data Center. For more information about this tab, see

Managing User Accounts for Connectors

.


###

Details pane


 In this pane you select the Anaplan workspace and model with the file/process you want to retrieve, as well as the name of the file or process itself.


|

Menu

|

Description

|
| --- | --- |
|
 Users
  |
 Select the user account you want to retrieve data from.
  |
|

Workspaces

|

Select the Anaplan workspace that contains the file you want to retrieve.

|
|

Models

|
 Select the Anaplan model that contains the file you want to retrieve.
  |
|
 Report Type
  |
 Select the type of report you want to import, either
 **Exports**
 or
 **Processes**
 .
  |
|
 Files
  |
 Select the file you want to pull into Domo.
  |
|
 Process
  |
 Select the process you want to pull into Domo.
  |


###

Other panes

For information about the remaining sections of the connector interface, including how to configure scheduling, retry, and update options, see

Adding a DataSet Using a Data Connector

.

