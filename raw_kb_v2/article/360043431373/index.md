

Intro
-------

iContact is a cloud-based email and social media marketing company that enables customers to create, track, and send HTML-based emails and social media messages.  To learn more about the iContact API, visit their page (

https://www.icontact.com/developerportal

).


 You connect to your iContact account in the Data Center. This topic discusses the fields and menus that are specific to the iContact connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in

Adding a DataSet Using a Data Connector

.


 Prerequisites
---------------

To connect to your iContact account and create a DataSet, you must have the following:

 Your iContact username.
* Your iContact API password. Note that this is the password you create for your iContact app ID,
 *not*
 your iContact account password.
* Your iContact app ID.

For information about obtaining an app ID and API password, see

https://www.icontact.com/developerpo...ister-your-app

.


 Connecting to Your iContact Account
-------------------------------------


 This section enumerates the options in the
 **Credentials**
 and
 **Details**
 panes in the iContact Connector page. The components of the other panes in this page,
 **Scheduling**
 and
 **Name & Describe Your DataSet**
 , are universal across most connector types and are discussed in greater length in

Adding a DataSet Using a Data Connector

.


###

Credentials Pane


 This pane contains fields for entering credentials to connect to your iContact account. The following table describes what is needed for each field:


|

Field

|

Description

|
| --- | --- |
|
 Username
  |
 Enter your iContact username.
  |
|
 Password
  |
 Enter your iContact API password. Note that this is the password you create for your iContact app ID,
 *not*
 your iContact account password.
  |
|
 App ID
  |
 Enter your iContact app ID.
  |

For information about obtaining an app ID and API password, see

https://www.icontact.com/developerpo...ister-your-app

.

Once you have entered valid iContact credentials, you can use the same account any time you go to create a new iContact DataSet. You can manage connector accounts in the
 **Accounts**
 tab in the Data Center. For more information about this tab, see

Managing User Accounts for Connectors

.


###
 Details Pane

This pane contains a single menu from which you select an iContact report.


 Menu
  |
 Description
  |
| --- | --- |
|
 Report
  |
 Select the iContact report you want to run. The following reports are available:


|  |  |
| --- | --- |
|
 Campaign Message Statistics
  |
 Returns statistics for all messages grouped by campaign or sender.
  |
|
 Campaigns
  |
 Returns a list of campaigns in the profile.
  |
|
 Contacts
  |
 Returns a list of all the contacts present in the profile.
  |
|
 Message Statistics
  |
 Returns statistics for all messages.
  |
|
 Subscription
  |
 Returns data for all subscriptions in the profile.
  |
|
 Track Message Bounces
  |
 Returns bounce information for all messages.
  |
|
 Track Message Clicks
  |
 Returns click information for all messages.
  |
|
 Track Message Opens
  |
 Returns opens information for all messages.
  |
|
 Track Message Unsubscribes
  |
 Returns unsubscribe information for all messages.
  |

|


###
 Other Panes

For information about the remaining sections of the connector interface, including how to configure scheduling, retry, and update options, see

a DataSet Using a Data Connector

.

