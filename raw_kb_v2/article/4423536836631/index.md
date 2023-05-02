

Intro
-------

Tableau is a data visualization tool that is widely used for business intelligence but not limited to it. It helps make Big Data small, and small data insightful and actionable. With Tableau you can connect to almost any database, drag and drop to create visualizations, and share with a click. The main use of tableau software is to help people see and understand their data.


 Combine your Tableau data with Domo and plan for future business demands. With the Domo Tableau Connector, you can get constant access to your data, and gain views and insights on your data. To learn more about the Tableau API, visit their page (

https://help.tableau.com/current/api/rest\_api/en-us/REST/rest\_api.htm

).


 The Tableau Connector is a "Cloud App" Connector, meaning it retrieves data stored in the cloud. In the Data Center, you can access the Connector page for this and other Cloud App Connectors by clicking
 **Cloud App**
 in the toolbar at the top of the window.


 You connect to your Tableau account in the Data Center. This topic discusses the fields and menus that are specific to the Tableau Connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in

Adding a DataSet Using a Data Connector

.


 Prerequisites
---------------

To connect to your Tableau account and create a DataSet, you must have the following:

 Your Tableau domain
* Username and password associated with your Tableau account
* Your site attribute ID

Connecting to Your Tableau Account
------------------------------------

This section enumerates the options in the Credentials and Details panes in the Tableau Connector page. The components of the other panes in this page,
 **Scheduling**
 and
 **Name & Describe Your DataSet**
 , are universal across most connector types and are discussed in greater length in

Adding a DataSet Using a Data Connector

.

##
 Credentials Pane

This pane contains fields for entering credentials to connect to your Tableau  account. The following table describes what is needed for each field:


 Field
  |
 Description
  |
| --- | --- |
|
 Domain
  |
 Enter the domain. It is the sub-path of the site's full URL. When you sign into Tableau Server or Tableau Online manually, the domain is the value that appears after
 **https://**
 in the browser address bar.

Example: https://
 **Server**
 /#/site/Team/projects

Here, the domain is Server.
  |
|
 Username
  |
 Enter the username associated with your Tableau account.
  |
|
 Password
  |
 Enter the password associated with your Tableau account.
  |
|
 Site Attribute
  |
 Enter the site attribute. It is the sub-path of the site's full URL. When you sign into Tableau Server or Tableau Online manually, the site attribute is the value that appears after

*/site/**

in the browser address bar.

Example:

http://Server/#/site/


**Team**

/projects

Here, the site attribute is Team.
  |

Once you have entered valid Tableau credentials, you can use the same account any time you go to create a new Tableau DataSet. You can manage Connector accounts in the
 **Accounts**
 tab in the Data Center. For more information about this tab, see

Managing User Accounts for Connectors

.

##
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


 Report
  |
 Description
  |
| --- | --- |
|
 View Data
  |
 Returns a specified view rendered as data in comma-separated-value (CSV) format.
  |

|
|
 Workbook ID
  |
 Select the workbook ID.
  |
|
 View ID
  |
 Select the view ID.
  |


###
 Other Panes

For information about the remaining sections of the Connector interface, including how to configure scheduling, retry, and update options, see

Adding a DataSet Using a Data Connector

.


 FAQs
------


####
 What endpoint is the base URL for this connector?

The base URL for this connector is

https://{

domain}

###
 Which endpoint(s) does each report call in this connector?


|
 Report Name
  |
 Endpoint URL
  |
| --- | --- |
|
 View Data
  |
 /api/3.14/sites/{siteId}/views/{viewId}/data
  |


####
 What kind of credentials do I need to power up this connector?

You need the domain, username and password associated with your Tableau account, and the site attribute.

###
 Where can I find the site attribute?

The site attribute is the sub-path of the full URL of the site. When you sign into Tableau Server or Tableau Online manually, the site attribute is the value that appears after /site/ in the browser address bar.


 Example:

http://Server/#/site/Team/projects

Here, the site attribute is Team.

###
 How often can the data be updated?

As often as needed.

###
 Are there any API limits that I need to be aware of?

No


 Troubleshooting
-----------------


* Make sure your authentication remains valid.
* Review the configuration to make sure that all required items have been selected.
* Review the Connector history for error messages.
* In rare cases, you may be requesting too much information and reaching API limitations or timeouts. If this is the case, you can review the history of the Connector run to see the error message and duration. If this is the case, you can reduce the number of accounts that are being pulled, choose a smaller number of metrics for the report that you are pulling, or reduce the timeframe that you are trying to pull.


