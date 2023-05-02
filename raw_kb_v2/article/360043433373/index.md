

Intro
-------

Heroku is a platform as a service (PaaS) that enables developers to build, run, and operate applications entirely in the cloud. To learn more about the Heroku API, visit their page (

https://devcenter.heroku.com/articles/platform-api-reference

).


 You connect to your Heroku account in the Data Center. This topic discusses the fields and menus that are specific to the Heroku connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in

Adding a DataSet Using a Data Connector

.


 Prerequisites
---------------

To connect to your Heroku account and create a DataSet, you must have a Heroku API key. You can obtain an API key by logging into your Heroku account, going into
 **Account Settings**
 , and clicking
 **Generate API Key**
 .


 Connecting to Your Heroku Account
-----------------------------------


 This section enumerates the options in the
 **Credentials**
 and
 **Details**
 panes in the Heroku Connector page. The components of the other panes in this page,
 **Scheduling**
 and
 **Name & Describe Your DataSet**
 , are universal across most connector types and are discussed in greater length in

Adding a DataSet Using a Data Connector

.


###

Credentials Pane


 This pane contains fields for entering credentials to connect to your Heroku account. The following table describes what is needed for each field:


|

Field

|

Description

|
| --- | --- |
|
 API Key
  |
 Enter your Heroku API key. For information about obtaining an API key, see "Prerequisites," above.
  |


 Once you have entered valid Heroku credentials, you can use the same account any time you go to create a new Heroku DataSet. You can manage connector accounts in the
 **Accounts**
 tab in the Data Center. For more information about this tab, see

Managing User Accounts for Connectors

.


###
 Details Pane

This pane contains a primary
 **Reports**
 menu from which you select your desired Heroku report type.


 Menu
  |
 Description
  |
| --- | --- |
|
 Report
  |
 Select the Heroku report you want to run. The following reports are available:


|  |  |
| --- | --- |
|
 Add Ons
  |
 Returns a list of all existing add-ons.
  |
|
 Add On Services
  |
 Returns information for existing add-on services.
  |
|
 Apps
  |
 Returns a list of Heroku apps.
  |
|
 Teams
  |
 Returns a list of teams of which you are a member.
  |

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

No.

