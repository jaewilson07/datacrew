

Intro
-------

Dynamic Tax Solutions' TaxView Pro is a tax audit and accrual solution for your company’s purchases.


 You connect to your TaxView Pro account in the Data Center. This topic discusses the fields and menus that are specific to the TaxView Pro connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in

Adding a DataSet Using a Data Connector

.


 Prerequisites
---------------

To connect to your TaxView Pro account and create a DataSet, you must have the following:

 The Dynamic Tax Solutions SFTP hostname, which you can find in your "Welcome to TaxView Pro" email
* Your TaxView Pro username and password

Connecting to Your TaxView Pro Account
----------------------------------------


 This section enumerates the options in the
 **Credentials**
 and
 **Details**
 panes in the TaxView Pro Connector page. The components of the other panes in this page,
 **Scheduling**
 and
 **Name & Describe Your DataSet**
 , are universal across most connector types and are discussed in greater length in

Adding a DataSet Using a Data Connector

.


###

Credentials Pane


 This pane contains fields for entering credentials to connect to your TaxView Pro account. The following table describes what is needed for each field:


|

Field

|

Description

|
| --- | --- |
|
 SFTP Hostname
  |
 Enter your DTS SFTP hostname (found in your "Welcome to TaxView Pro" email)
  |
|
 Username
  |
 Enter your TaxView Pro username.
  |
|
 Password
  |
 Enter your TaxView Pro password.
  |


 Once you have entered valid TaxView Pro credentials, you can use the same account any time you go to create a new TaxView Pro DataSet. You can manage connector accounts in the
 **Accounts**
 tab in the Data Center. For more information about this tab, see

Managing User Accounts for Connectors

.


###
 Details Pane

This pane contains single menu in which you select your desired CSV file.


 Description
  |
 |
| --- | --- |
|
 CSV File
  |
 Select the CSV file you want to import into Domo from your DTS SFTP host.
  |


###
 Other Panes

For information about the remaining sections of the connector interface, including how to configure scheduling, retry, and update options, see

Adding a DataSet Using a Data Connector

.

