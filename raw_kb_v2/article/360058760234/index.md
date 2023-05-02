

Intro
-------

The Twitter Lookup provides you the information for the provided Twitter ID users (senders and recipients). Use Domo’s Twitter Users Lookup Writeback connector to write your data from a Domo DataSet to your Twitter account. To learn more about the Twitter API, visit their page (


 https://developer.twitter.com/en/docs


 ).


 You export your Twitter account in the Data Center. This topic discusses the fields and menus that are specific to the Twitter Users Lookup Writeback connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in

Adding a DataSet Using a Data Connector

.


 Prerequisites
---------------

To configure this connector, you need the following:

 Your Twitter username or the email address you use to log into Twitter
* Your Twitter password

Configuring the Connection
----------------------------


 This section enumerates the options in the
 **Credentials**
 and
 **Details**
 panes in the

Twitter Users Lookup Writeback

Connector page. The components of the other panes in this page,
 **Scheduling**
 and
 **Name & Describe Your DataSet**
 , are universal across most connector types and are discussed in greater length in

Adding a DataSet Using a Data Connector

.


###

Credentials Pane

The Domo Twitter Users Lookup Writeback connector uses OAuth to connect, so there is no need to enter credentials within Domo. Click
 ****Connect****
 (or select
 ****Add Account****
 if you have existing Twitter accounts in Domo) to open the Twitter OAuth screen where you can enter your Twitter credentials. Once you have entered valid Twitter credentials, you can use the same account any time you go to create a new Twitter Domo connection. You can manage connector accounts in the
 ****Accounts****
 tab in the Data Center. For more information about this tab, see

Managing User Accounts for Connectors

.


**Note:**

If you are already logged into Twitter when you connect in Domo, you are authenticated automatically when you click
 ****Add account****
 . If you want to connect to an account that is different from the one you are logged into, you must first log out of the initially logged in Twitter account.


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
 Input DataSet ID
  |
 Enter your Domo DataSet ID(GUID) located in the dataset URL. Example:


 https://customer.domo.com/datasources/

***aaaaaaaa-bbbb-cccc-dddd-eeeeeeeeeeee****
 /details/settings
  |


###
 Other Panes

For information about the remaining sections of the connector interface, including how to configure scheduling, retry, and update options, see

Adding a DataSet Using a Data Connector

.

