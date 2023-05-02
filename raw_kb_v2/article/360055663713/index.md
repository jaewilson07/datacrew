

Intro
-------

FedEx Corporation is an American multinational delivery services company. The company is known for its overnight shipping service and pioneering a system that could track packages and provide real-time updates on package location. FedEx help connect people and improve their lives. Use Domo's FedEx Writeback connector to get detailed tracking status information for your tracking numbers.


 You connect to your FedEx Writeback account in the Data Center. This topic discusses the fields and menus that are specific to the FedEx Writeback connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in

Adding a DataSet Using a Data Connector

.

*Note:**
 The owner of a writeback dataset must also be an owner or co-owner of the input dataset.

Prerequisites
---------------

To connect to your FedEx Writeback account and get detailed tracking status information for your tracking numbers, you must have the following:

 Developer Test Key
* Password or Security code
* FedEx Shipping Account number
* FedEx Meter number
* Integrator ID


#####
**To get your credentials, do the following:**

1. Visit the

FedEx Developer Resource Center

.


 2. Click on
 **FedEx Web Services**
 >
 **Documentation & Downloads**
 . A Login window will appear.

3. Login with your FedEx credentials.


 4. In the
 **Develop and Test**
 tab, click on
 **Get Your Test Key**
 button to get your Test Account Number, Test Meter Number, Developer Test Key, and Password.

5. Fill out the requested information and click Submit. You will receive your account credentials on the confirmation page and in an email.

You will receive the
 **URL**
 and
 **Password**
 in an email while your
 **Developer Test Key**
 ,
 **Test Account Number**
 , and
 **Test Meter Number**
 will appear on the confirmation page as well as in the email.


 Connecting to Your FedEx Writeback Account
--------------------------------------------


 This section enumerates the options in the
 **Credentials**
 and
 **Details**
 panes in the

FedEx Writeback

Connector page. The components of the other panes in this page,
 **Scheduling**
 and
 **Name & Describe Your DataSet**
 , are universal across most connector types and are discussed in greater length in

Adding a DataSet Using a Data Connector

.


###

Credentials Pane


 This pane contains fields for entering credentials to connect to your

FedEx Writeback

account. The following table describes what is needed for each field:


|

Field

|

Description

|
| --- | --- |
|
 URL
  |
 Enter the API URL received in the email. For more information, see

Prerequisites

.
  |
|
 Key
  |
 Enter your Developer Test key. For more information, see

Prerequisites

.
  |
|
 Password
  |
 Enter the password received in the email. For more information, see

Prerequisites

.
  |
|
 Account number
  |
 Enter your Test Account number. For more information, see

Prerequisites

.
  |
|
 Meter number
  |
 Enter your Test Meter number. For more information, see

Prerequisites

.
  |
|
 Integrator ID
  |
 Enter the integrator ID
  |

Once you have entered valid credentials, you can use the same account any time you go to set up a new Domo-FedEx connection.

You can manage connector accounts in the
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
  |
| --- | --- |
|
 Input DataSet ID
  |
 Enter your Domo dataset ID (GUID) located in the dataset url. Example-

https://customer.domo.com/datasources/

***aaaaaaaa-bbbb-cccc-dddd-eeeeeeeeeeee****
 /details/settings
  |
|
 Tracking number column name
  |
 Enter the column name of the tracking numbers.
  |
|
 How would you like us to proceed with invalid tracking numbers?
  |
 Select if you would like to throw an error message or continue with empty values when invalid tracking numbers are encountered.
  |


###
 Other Panes

For information about the remaining sections of the connector interface, including how to configure scheduling, retry, and update options, see

Adding a DataSet Using a Data Connector

.

