

Intro
-------

WhatCounts is an email marketing company that provides data management, software, and services to marketing professionals.  To learn more about the WhatCounts API, visit their page (

https://support.whatcounts.com/hc/en-us/categories/201240476-API-Rest

).


 You connect to your WhatCounts account in the Data Center. This topic discusses the fields and menus that are specific to the WhatCounts connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in

Adding a DataSet Using a Data Connector

.


 Prerequisites
---------------

To connect to your WhatCounts account and create a DataSet, you must have the following:

 For most reports, an encrypted account ID. You can find this in the
 **Account Preferences**
 section of WhatCounts Publicaster Edition. For the "Accounts" report, you will need to enter your Publicaster user email address instead.
* Your WhatCounts password.

Connecting to Your WhatCounts Account
---------------------------------------


 This section enumerates the options in the
 **Credentials**
 and
 **Details**
 panes in the WhatCounts Connector page. The components of the other panes in this page,
 **Scheduling**
 and
 **Name & Describe Your DataSet**
 , are universal across most connector types and are discussed in greater length in

Adding a DataSet Using a Data Connector

.


###

Credentials Pane


 This pane contains fields for entering credentials to connect to your WhatCounts account. The following table describes what is needed for each field:


|

Field

|

Description

|
| --- | --- |
|
 Encrypted Account ID
  |
 For the "Accounts" report, enter your Publicaster email address. For all other reports, enter the encrypted account ID found in the
 **Account Preferences**
 section of WhatCounts Publicaster Edition.
  |
|
 Password
  |
 Enter your WhatCounts password.
  |


 Once you have entered valid WhatCounts credentials, you can use the same account any time you go to create a new WhatCounts DataSet. You can manage connector accounts in the
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
 Select the WhatCounts report you want to run. The following reports are available:


|  |  |
| --- | --- |
|
 Account Managers
  |
 Returns information about the account manager for this account.
  |
|
 Accounts
  |
 Returns information about the accounts and subaccounts available for your credentials.
  |
|
 Campaign Distributions
  |
 Returns the 100 most recent non-test, non-cancelled distributions sent from this account.
  |
|
 Lists
  |
 Returns information about your mailing lists.
  |
|
 MacroStats3
  |
 Returns macro reporting information about a campaign distribution or date range.
  |
|
 Subscribers
  |
 Returns mailing list subscribers.
  |

|
|
 Lists
  |
 Select the lists you want to retrieve subscriber data for.
  |


###
 Other Panes

For information about the remaining sections of the connector interface, including how to configure scheduling, retry, and update options, see

Adding a DataSet Using a Data Connector

.

