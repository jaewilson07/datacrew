

Intro
-------

AddThis is a service that provides users with share buttons, targeting tools and content recommendations. To learn more about the AddThis API, visit their page (

http://www.addthis.com/academy/categ...documentation/

).


 You connect to your AddThis account in the Data Center. This topic discusses the fields and menus that are specific to the AddThis connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in

Adding a DataSet Using a Data Connector

.


 Prerequisites
---------------

To connect to your AddThis account and create a DataSet, you must have the following:

 Your AddThis username and password.
* Your AddThis Profile ID.

To find your Profile ID, do the following:

. Log into your AddThis account.
2. In the upper-left corner of the screen, select the profile you are interested in.
3. Click the
 **...**
 button then choose
 **More**
 in the pop-up menu.
4. Select
 **General**
 in the menu on the left.


 A
 **General**
 box opens on the right side of the screen. This box shows your Profile Name and ID.

Connecting to Your AddThis Account
------------------------------------


 This section enumerates the options in the
 **Credentials**
 and
 **Details**
 panes in the AddThis Connector page. The components of the other panes in this page,
 **Scheduling**
 and
 **Name & Describe Your DataSet**
 , are universal across most connector types and are discussed in greater length in

Adding a DataSet Using a Data Connector

.


###

Credentials Pane


 This pane contains fields for entering credentials to connect to your AddThis account. The following table describes what is needed for each field:


|

Field

|

Description

|
| --- | --- |
|
 Username
  |
 Enter your AddThis username.
  |
|
 Password
  |
 Enter your AddThis password.
  |
|
 Profile ID
  |
 Enter your AddThis Profile ID. For instructions on finding your Profile ID, see "Prerequisites," above.
  |


 Once you have entered valid AddThis credentials, you can use the same account any time you go to create a new AddThis DataSet. You can manage connector accounts in the
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
 Select the AddThis report you want to run. The following reports are available:


|  |  |
| --- | --- |
|
 Clickers
  |
 Returns information about unique people who clicked on your content.
  |
|
 Clicks
  |
 Returns the number of times users have clicked on your content.
  |
|
 Influencers
  |
 Returns information about your influencers.
  |
|
 Referrers
  |
 Returns the top-referring domains that resulted in shares.
  |
|
 Searches
  |
 Returns the top search terms that resulted in shares.
  |
|
 Sharers
  |
 Returns information about unique people who shared your content.
  |
|
 Shares
  |
 Returns information about how your content was shared.
  |
|
 Subscriptions
  |
 Returns information about content subscriptions.
  |
|
 Users
  |
 Returns information about unique users.
  |

|
|
 Dimension
  |
 Select the dimension you want to use to filter your data.
  |
|
 Period
  |
 Select the time period for the report data.
  |
|
 Domain (Optional)
  |
 Enter the domain you want to retrieve information for.
  |
|
 Service (Optional)
  |
 Enter the services you want to retrieve information for. Separate multiple services with commas.
  |
|
 URL (Optional)
  |
 Enter the URL you want to retrieve information for.
  |


###
 Other Panes

For information about the remaining sections of the connector interface, including how to configure scheduling, retry, and update options, see

Adding a DataSet Using a Data Connector

.


 FAQ
-----


#####
 Do I need a certain kind of account with the data service to set up the connector?

Any AddThis account with access to a valid active profile should be able to retrieve data with this connector.

####
 How often can the data be updated?

Datasets should be set to update once a day.

####
 Are there any API limits that I need to be aware of?

The Addthis API limits each authenticated user to 10 requests per minute. Note that a single dataset run may require multiple requests.

