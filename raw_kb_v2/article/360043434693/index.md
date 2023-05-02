

Intro
-------

Twitter is an online social networking and microblogging service that enables users to send and read short 140-character text messages called "tweets." Use Domo's Twitter Direct Messages connector to retrieve direct Twitter messages sent by you as well as to you. To learn more about the Twitter API, visit their page (

https://dev.twitter.com/rest/reference

).


 You connect to your Twitter account in the Data Center. This topic discusses the fields and menus that are specific to the Twitter Direct Messages connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in

Adding a DataSet Using a Data Connector

.


 Prerequisites
---------------

To connect to your Twitter account and create a DataSet, you must have the following:

 Your Twitter username of the email address you use to log into Twitter
* Your Twitter password

Connecting to Your Twitter Direct Messages Account
----------------------------------------------------

This section enumerates the options in the
 **Credentials**
 and
 **Details**
 panes in the Twitter Direct Messages Connector page. The components of the other panes in this page,
 **Scheduling**
 and
 **Name & Describe Your DataSet

,**
 are universal across most connector types and are discussed in greater length in

Adding a DataSet Using a Data Connector

.

##
 Credentials Pane

The Domo Twitter Direct Messages connector uses OAuth to connect, so there is no need to enter credentials within Domo. Click
 **Connect**
 (or select
 **Add Account**
 if you have existing Twitter Direct Messages accounts in Domo) to open the Twitter OAuth screen where you can enter your Twitter credentials. Once you have entered valid Twitter credentials, you can use the same account any time you go to create a new Twitter Direct Messages DataSet. You can manage connector accounts in the
 **Accounts**
 tab in the

Data Center

. For more information about this tab, see

Managing User Accounts for Connectors

.

*Note:**
 If you are already logged into Twitter when you connect in Domo, you are authenticated automatically when you click
 **Add account**
 . If you want to connect to an account that is different from the one you are logged into, you must first log out of Twitter.


###
 Details Pane

This pane contains a
 **Reports**
 menu from which you can select one of two Twitter Direct Messages reports.


 Menu
  |
 Description
  |
| --- | --- |
|
 Report
  |
 Select the Twitter Direct Messages report you want to run. The following reports are available:


|  |  |
| --- | --- |
|
 Direct Messages
  |
 Returns the 20 most recent direct messages sent to the authenticating user.
  |
|
 Direct Messages Sent
  |
 Returns the 20 most recent direct messages sent by the authenticating user.
  |

|


###
 Other Panes

For information about the remaining sections of the connector interface, including how to configure scheduling, retry, and update options, see

Adding a DataSet Using a Data Connector

.

