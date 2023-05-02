

Intro
-------

MindTouch is a document content management system that helps you organize your documentation so users can easily find it. To learn more about the MindTouch API, visit their page (

https://success.mindtouch.com/Soluti...\_Documentation

).


 You connect to your MindTouch account in the Data Center. This topic discusses the fields and menus that are specific to the MindTouch connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in

Adding a DataSet Using a Data Connector

.


 Prerequisites
---------------

To connect to your MindTouch account and create a DataSet, you must have the following:

 The domain for your MindTouch instance (e.g.


 mycompany.mindtouch.com


 )
* The username and password for your MindTouch account

Connecting to Your MindTouch Account
--------------------------------------


 This section enumerates the options in the
 **Credentials**
 and
 **Details**
 panes in the MindTouch Connector page. The components of the other panes in this page,
 **Scheduling**
 and
 **Name & Describe Your DataSet**
 , are universal across most connector types and are discussed in greater length in

Adding a DataSet Using a Data Connector

.


###

Credentials Pane


 This pane contains fields for entering credentials to connect to your MindTouch account. The following table describes what is needed for each field:


|

Field

|

Description

|
| --- | --- |
|
 Domain
  |
 Enter the domain for your MindTouch instance (e.g.


 mycompany.mindtouch.com


 )
  |
|
 Username
  |
 Enter your MindTouch username.
  |
|
 Password
  |
 Enter your MindTouch password.
  |


 Once you have entered valid MindTouch credentials, you can use the same account any time you go to create a new MindTouch DataSet. You can manage connector accounts in the
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
 Select the MindTouch report you want to run. The following reports are available:


|  |  |
| --- | --- |
|
 Archive Files
  |
 Retrieves information for all deleted files.
  |
|
 Archive Pages
  |
 Retrieves information for all deleted pages.
  |
|
 Context Maps
  |
 Retrieves data about Context Maps.
  |
|
 Contexts
  |
 Retrieves Contexts data.
  |
|
 Events Page Hierarchy
  |
 Retrieves a site history summary (last 1000 events per page).
  |
|
 Events Page
  |
 Retrieves a page history summary (last 1000 events per page).
  |
|
 Groups
  |
 Retrieves a list of all groups in your MindTouch instance.
  |
|
 License
  |
 Retrieves information about your MindTouch license. If you are an Admin user in MindTouch, all license information is retrieved; otherwise only the public information is retrieved.
  |
|
 Page Rating
  |
 Retrieves page rating data for the MindTouch site.
  |
|
 Pages
  |
 Retrieves a list of pages for the MindTouch site.
  |
|
 Search Query Log
  |
 Retrieves search query data for a specific date or relative number of days back.
  |
|
 Site Activity
  |
 Retrieves site activity for a specific date or relative number of days back.
  |
|
 Usage
  |
 Retrieves data about site usage.
  |
|
 Users
  |
 Retrieves a list of users in your MindTouch site.
  |

|
|
 Filter
  |
 Select whether to retrieve all pages or only those that have been rated.
  |
|
 Report Date Type
  |
 Select whether to retrieve data for a specific date or relative number of days back.
  |
|
 Specific Date
  |
 Select the date you want to retrieve data for.
  |
|
 Days Back
  |
 Enter the number of days back you want to retrieve data for.
  |


###
 Other Panes

For information about the remaining sections of the connector interface, including how to configure scheduling, retry, and update options, see

Adding a DataSet Using a Data Connector

.

