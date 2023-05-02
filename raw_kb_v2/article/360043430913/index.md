

Intro
-------

BrightRoll by Yahoo! is a video advertising software system. To learn more about the BrightRoll API, visit their page (

https://developer.yahoo.com/dsp/api/.../?guccounter=1

).


 You connect to your BrightRoll account in the Data Center. This topic discusses the fields and menus that are specific to the BrightRoll connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in

Adding a DataSet Using a Data Connector

.


 Prerequisites
---------------

To connect to your BrightRoll account and create a DataSet, you must have the following:

 A BrightRoll authorization code
* A BrightRoll client ID
* A BrightRoll client secret

To generate these credentials, follow these instructions:

https://developer.yahoo.com/brightro.../enable\_oauth/

. You will generate your client ID and client secret in step 4 and your authorization code in step 5.


 Connecting to Your BrightRoll Account
---------------------------------------


 This section enumerates the options in the
 **Credentials**
 and
 **Details**
 panes in the BrightRoll Connector page. The components of the other panes in this page,
 **Scheduling**
 and
 **Name & Describe Your DataSet**
 , are universal across most connector types and are discussed in greater length in

Adding a DataSet Using a Data Connector

.


###

Credentials Pane


 This pane contains fields for entering credentials to connect to your BrightRoll account. The following table describes what is needed for each field:


|

Field

|

Description

|
| --- | --- |
|
 Authorization Code
  |
 Enter your BrightRoll authorization code.
  |
|
 Client ID
  |
 Enter your BrightRoll client ID.
  |
|
 Client Secret
  |
 Enter your BrightRoll client secret.
  |

For information about obtaining these credentials, see "Prerequisites," above.

Once you have entered valid BrightRoll credentials, you can use the same account any time you go to create a new BrightRoll DataSet. You can manage connector accounts in the
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
 Select the BrightRoll report you want to run. The following reports are available:


|  |  |
| --- | --- |
|
 Ads
  |
 Retrieves a list of your ads.
  |
|
 Advertisers
  |
 Retrieves a list of advertisers in your account.
  |
|
 Campaigns
  |
 Retrieves a list of your campaigns.
  |

|
|
 Advertisers
  |
 Select all advertisers you want to retrieve information for.
  |
|
 Campaigns
  |
 Select the campaigns you want to retrieve information for.
  |
|
 Lines
  |
 Select the lines you want to retrieve information for.
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
 Are there any API restrictions I should be aware of?

No.

