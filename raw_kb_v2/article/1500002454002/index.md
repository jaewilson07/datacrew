

Intro
-------

Salesforce Chatter is a collaboration tool that allows you to collaborate on business processes, take action, and engage in collaboration. With your Chatter data in Domo, you can get an at-a-glance view of how Chatter is being used and make changes to drive usage, share data on usage, and more. To learn more about the Salesforce Chatter API, visit

https://developer.salesforce.com/doc...er\_connect.htm

.


 You connect to your Salesforce account in the Data Center. This topic discusses the fields and menus that are specific to the Salesforce Chatter connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in

Adding a DataSet Using a Data Connector

.


 Prerequisites
---------------

To connect to your Salesforce account and create a DataSet, you must have the following:

 The username  and password for your Salesforce account
* An installed Domo Connector Package from the Salesforce AppExchange (required as of August 1, 2018; see next section for installation instructions)


###
 Installing the Domo Connector Package

The "Domo Connector Package" found in Salesforce AppExchange allows Salesforce users to import their data into Domo. Follow these instructions to download and install the Connector Package from the AppExchange.


**To install Domo's Salesforce Managed Package,**

. Log into Salesforce.
2. Navigate to the Salesforce AppExchange at

https://appexchange.salesforce.com

and search for "Domo Connector Package," then click on it.

Alternatively, you can go directly to

https://appexchange.salesforce.com/a...A00000EcrsyUAB

.
3. Click
 **Get It Now**
 .
4. Choose whether you want to install in a production environment or sandbox.
5. Check the box reading "I have read and agree to the terms and conditions."
6. Click
 **Confirm and Install**
 .
7. Click the
 **Install for All Users**
 tile.

For more details, see Salesforce's documentation at

https://help.salesforce.com/articleV...ges.htm&type=5

.

##
 Verifying your Installation

Use Domo's Salesforce Managed Package Validator to verify that your Salesforce Managed Package has been installed correctly.


**To verify your installation,**

. In the Connectors page in either the Data Center or Appstore in Domo, search for "Salesforce Managed Package" and double-click on on the icon.
2. Click
 **Get the Data**
 .
3. Under
 **Credentials**
 , select your Salesforce account name, then click
 **Next**
 .
4. Under
 **Details**
 , click
 **Next**
 .
5. In the
 **Update**
 menu, select
 **Manually**
 , then click
 **Next**
 .
6. Give your DataSet a name, then click
 **Save**
 .

The DataSet now runs. If everything has been set up correctly, the run will be successful, and a message will appear reading, "Validation Success: You have set up your Salesforce Managed Package correctly."

If everything has
 *not*
 been set up correctly, the DataSet fails, and a message appears reading, "You have not installed Salesforce's Domo Connector Package," with a help link to this article.

Connecting to Your Salesforce Account
---------------------------------------


 This section enumerates the options in the Credentials and Data Selection panes in the Salesforce Chatter Connector page. The components of the other panes in this page,
 **Scheduling**
 , and
 **Name & Describe Your DataSet**
 , are universal across most connector types and are discussed in greater length in


 Adding a DataSet Using a Data Connector

.

##
 Credentials Pane


 The Domo Salesforce Chatter connector uses OAuth to connect, so there is no need to enter credentials within Domo. Choose an environment in the Salesforce Environment menu then click Connect to open the Salesforce login screen. Here you can enter your Salesforce username and password. Once you have entered valid Salesforce credentials, you can use the same account any time you go to create a new Salesforce Chatter DataSet. You can manage connector accounts in the

*Accounts**

tab in the Data Center. For more information about this tab, see


 Managing User Accounts for Connectors

.

##
 Data Selection Pane

This pane contains a primary
 **How Do You Want to Select Your Salesforce Data**
 menu, along with various other menus which may or may not appear depending on the report type you select.


 Menu
  |
 Description
  |
| --- | --- |
|
 How Do You Want to Select Your Salesforce Data?
  |
 Select the method you want to use to pull data from Salesforce. Methods are as follows:
 * Browse Objects and Fields - Lets you select Salesforce objects with associated fields and relationships.
* Query - Lets you enter SOQL queries to retrieve data.
 |
|
 Query Option
  |

Select a predefined query (

*Chatter Activity**

) or create your own query (

*Custom**

).

|
|
 Query
  |
 Enter your Salesforce SOQL query here. For example:

SELECT
 *Account*
 FROM Account

For more information about writing SOQL queries, see

http://www.salesforce.com/us/developer/docs/officetoolkit/Content/sforce\_api\_calls\_soql.htm

.
  |


###
 Other Panes

For information about the remaining sections of the connector interface, including how to configure scheduling, retry, and update options, see

Adding a DataSet Using a Data Connector

.


 Troubleshooting
-----------------

Salesforce is generally a very stable connector so there are just a few common issues that arise with it. Most of the issues are due to insufficient permissions (on both the object and the field). Your Salesforce admin should be able to upgrade permissions on specific objects and fields.


 Another common error is the “Query Locator Error.” Salesforce only keeps 10 query locators at a time for a single user and for a maximum of 15 minutes. If too many DataSets are running at the same time, some of these will fail. The best way to avoid this issue is to spread out the times when the DataSets are running.


 FAQ
-----


####

What version of the Salesforce API does this connector use?

This connector uses version 44.0 of the Salesforce API (

https://{

customer instance}.

salesforce.com/services/data

/v44.0.)

###

Which endpoint(s) does each report call in this connector?


|
 Report Name
  |
 Endpoint URL(s)
  |
| --- | --- |
|
 Browse Objects and Fields
  |
 /query
  |
|
 Query
  |
 /query
  |


####

What kind of credentials do I need to power up this connector?

You need the username and password associated with your Salesforce account.

###

How do I know my Salesforce credentials are secure?

The login process uses the OAuth process, so your Salesforce credentials are never seen or stored by Domo. This keeps your login secure. You can revoke Domo's access to your account at any time.

###

Are there any API limits that I need to be aware of?

No

