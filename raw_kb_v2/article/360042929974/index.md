

Intro
-------

LinkedIn SlideShare is a slide hosting service that allows users to upload presentations for private or public viewing. To learn more about the SlideShare API, visit their page (

https://www.slideshare.net/developers

).


 You connect to your SlideShare account in the Data Center. This topic discusses the fields and menus that are specific to the SlideShare connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in

Adding a DataSet Using a Data Connector

.


 Prerequisites
---------------

To connect to your SlideShare account and create a DataSet, you must have the following:

 A SlideShare API key
* A SlideShare shared secret

To obtain credentials, you will need to apply for a SlideShare API key. You can do that here:

https://www.slideshare.net/developers/applyforapi

Connecting to Your SlideShare Account
---------------------------------------


 This section enumerates the options in the
 **Credentials**
 and
 **Details**
 panes in the SlideShare Connector page. The components of the other panes in this page,
 **Scheduling**
 and
 **Name & Describe Your DataSet**
 , are universal across most connector types and are discussed in greater length in

Adding a DataSet Using a Data Connector

.


###

Credentials Pane


 This pane contains fields for entering credentials to connect to your SlideShare account. The following table describes what is needed for each field:


|

Field

|

Description

|
| --- | --- |
|
 API Key
  |
 Enter your SlideShare API key.
  |
|
 Shared Secret
  |
 Enter your SlideShare shared secret.
  |

For information about obtaining these credentials, see "Prerequisites," above.

Once you have entered valid SlideShare credentials, you can use the same account any time you go to create a new SlideShare DataSet. You can manage connector accounts in the
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
 Select the SlideShare report you want to run. The following reports are available:


|  |  |
| --- | --- |
|
 Get Slideshow
  |
 Returns data for a specific slideshow.
  |
|
 Slideshows by User
  |
 Returns a list of slideshows associated with the specified user.
  |
|
 Slideshows by Tag
  |
 Returns a list of slideshows associated with the specified tag.
  |
|
 User Contacts
  |
 Returns a list of contacts for the specified user.
  |
|
 User Favorites
  |
 Returns a list of slideshows favorited by the specified user.
  |
|
 User Tags
  |
 Returns a list of tags associated with a specified user.
  |

|
|
 Username
  |
 Enter the name of the user you want to retrieve data for.
  |
|
 Tag
  |
 Enter the tag you want to retrieve data for.
  |
|
 Group Name
  |
 Enter the name of the group you want to retrieve data for.
  |
|
 Search Keyword
  |
 Enter the keyword you want to pull report data for.
  |
|
 Upload Date
  |
 Select whether you want to pull report data from the current week, month, or year.
  |
|
 Password
  |
 Enter the password of the user whose tags are being requested.
  |


###
 Other Panes

For information about the remaining sections of the connector interface, including how to configure scheduling, retry, and update options, see

Adding a DataSet Using a Data Connector

.

