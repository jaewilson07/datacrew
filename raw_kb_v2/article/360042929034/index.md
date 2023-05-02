

Intro
-------

Qubole simplifies the provisioning, management and scaling of big data analytics workloads leveraging data stored on Amazon Web Services, Google Compute, or Microsoft Azure infrastructure. Use Domo's Qubole Unload connector to import Qubole reports based on a specified query or script location. To learn more about the Qubole API, visit their page (

https://docs.qubole.com/en/latest/rest-api/

).


 You connect to your Qubole account in the Data Center. This topic discusses the fields and menus that are specific to the Qubole connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in

Adding a DataSet Using a Data Connector

.


 Prerequisites
---------------

To connect to your Qubole account and create a DataSet, you must have the following:

 A Qubole API token
* Your Qubole account domain
* The Amazon Resource Name (ARN) of the role you want to assume
* The identifier for your Role Session Name
* The unique identifier used by 3rd parties when assuming roles in their customers' accounts
* The name of the Amazon S3 bucket you want to pull data from
* The Amazon S3 region containing the bucket you want to pull data from


###
 Obtaining an API Token

To obtain a Qubole API token, do the following:

. Navigate to the Qubole Control Panel by gong to

https://api.qubole.com/v2/control-panel

.
2. Click
 **My Accounts**
 in the left pane.
3. Click
 **Show**
 for the account.
4. Copy the API token that displays.

Connecting to Your Qubole Account
-----------------------------------


 This section enumerates the options in the
 **Credentials**
 and
 **Details**
 panes in the Qubole Unload Connector page. The components of the other panes in this page,
 **Scheduling**
 and
 **Name & Describe Your DataSet**
 , are universal across most connector types and are discussed in greater length in

Adding a DataSet Using a Data Connector

.


###

Credentials Pane


 This pane contains fields for entering credentials to connect to Qubole so you can bring in data. The following table describes what is needed for each field:


|

Field

|

Description

|
| --- | --- |
|
 API Token
  |
 Enter your Qubole API token. For information about generating a token, see "Obtaining an API Token," above.
  |
|
 Domain
  |
 Enter the domain for your Qubole account.
  |
|
 Role ARN
  |
 Enter the Amazon Resource Name (ARN) of the role you want to assume.
  |
|
 Role Session Name
  |
 Enter the identier for the assumed role session.
  |
|
 External ID
  |
 Enter the unique identifier used by 3rd parties when assuming roles in their customers' accounts.
  |
|
 Bucket
  |
 Enter your Amazon S3 bucket name.
  |
|
 Region
  |
 Select the desired Amazon S3 region.
  |


 Once you have entered valid Qubole credentials, you can use the same account any time you go to create a new Qubole DataSet. You can manage connector accounts in the
 **Accounts**
 tab in the Data Center. For more information about this tab, see

Managing User Accounts for Connectors

.


###
 Details Pane

This pane contains a primary
 **Reports**
 menu, along with various other menus for configuring your report.


 Menu
  |
 Description
  |
| --- | --- |
|
 Report
  |
 Select the Qubole report you want to run. Currently only one report is available.


|  |  |
| --- | --- |
|
 Command
  |
 Lets you import a Qubole report by inputting a query or script location.
  |

|
|
 Query
  |
 Enter the query you want to use to retrieve your report. Alternatively, you can enter a

script\_location

.
  |
|
 Script Location (Optional)
  |
 Specify the S3 path where the hive query to run is stored. Either a query or script location is required. AWS storage credentials stored in the account are used to retrieve the script file.
  |
|
 Command Type
  |
 Select the command type, either
 **Hive Command**
 or
 **Presto Command**
 .
  |
|
 Label (Optional)
  |
 Specify the cluster label on which the report is to be run.
  |
|
 Delimiter
  |
 Select the delimiting character used in your file. If your delimiter is not listed, select
 **Other**
 .
  |
|
 Specify Your Delimiter
  |
 Enter the character used to delimit your character-separated values.
  |


###
 Other Panes

For information about the remaining sections of the connector interface, including how to configure scheduling, retry, and update options, see

Adding a DataSet Using a Data Connector

.


 FAQs
------


#####
 How often can the data be updated?

As often as needed.

####
 Are there any API limits I should be aware of?

Qubole may limit API calls. To prevent rate limiting, reduce the number of DataSets scheduled to run at the same time.

