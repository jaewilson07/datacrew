

Intro
-------

Velocify provides cloud-based intelligent sales automation software designed for fast-paced sales environments

.

Use Domo's Velocify connector to retrieve data about leads, campaigns, milestones, and the like. To learn more about the Velocify API, visit their page (

https://service.leads360.com/ClientService.asmx

).


 There are two versions of the Velocify connector—a standard and an advanced version. The only difference between these is that the advanced version allows you to pull in custom reports from Velocify, whereas the standard version does not. For more information about the standard version, see

Velocify Connector

.


 The Velocify connector is a "Cloud App" connector, meaning it retrieves data stored in the cloud. In the Data Center, you can access the connector page for this and other Cloud App connectors by clicking
 **Cloud App**
 in the toolbar at the top of the window.


 You connect to your Velocify account in the

Data Center

. This topic discusses the fields and menus that are specific to the Velocify connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in

Adding a DataSet Using a Data Connector

.


 Prerequisites
---------------

To connect to your Velocify account and create a DataSet, you must have a Velocify username and password.


 Connecting to Your Velocify Account
-------------------------------------

This section enumerates the options in the
 **Credentials**
 and
 **Details**
 panes in the Velocify Connector page. The components of the other panes in this page,
 **Scheduling**
 and
 **Name & Describe Your DataSet**
 , are universal across most connector types and are discussed in greater length in

Adding a DataSet Using a Data Connector

.

##
 Credentials Pane

This pane contains fields for entering credentials to connect to your Velocify account. The following table describes what is needed for each field:


 Field
  |
 Description
  |
| --- | --- |
|
 Username
  |
 Enter the username you use to log into your Velocify account.
  |
|
 Password
  |
 Enter the password you use to log into your Velocify account.
  |

Once you have entered valid Velocify credentials, you can use the same account any time you go to create a new Velocify DataSet. You can manage connector accounts in the

Accounts

tab in the

Data Center

. For more information about this tab, see

Managing User Accounts for Connectors

.

##
 Details Pane

This pane contains a menu in which you select a Velocify report, along with other menus that may or may not appear depending on your selected report. The following table describes all of the reports you can create using the Velocify connector.


**Tip:**
 Velocify allows users to create a custom report through their UI, which is then accessible through the API. If you want to connect to a custom report in Domo, you can do so using the Velocify Advanced connector. If you would like to use this connector, speak to your Domo CSR.


 Menu
  |
 Description
  |
| --- | --- |
|
 Report
  |

  |  |
| --- | --- |
|
 Agents
  |
 Returns a list of users in your database.
  |
|
 Campaigns
  |
 Returns a list of campaigns in your database.
  |
|
 Custom Report
  |
 Imports a selected Velocify report into Domo.
  |
|
 Custom Report (Manual)
  |
 Imports a Velociy report into Domo based on a report ID you submit.
  |
|
 Leads
  |
 Returns a list of leads that have been generated during the past 30 days.
  |
|
 Milestones
  |
 Returns a list of lead milestones in your database.
  |
|
 Programs
  |
 Returns a list of lead distribution programs in your database.
  |
|
 Providers
  |
 Returns a list of lead provider integrations in your database.
  |
|
 Reports
  |
 Returns a list of reports you have access to.
  |


 |
|
 Custom Reports
  |
 Select the Velocify report you want to import into Domo.
  |
|
 Custom Report ID
  |
 Enter the ID of the Velocify report you want to import into Domo. To see a list of all reports with IDs, run the "Reports" report.
  |
|
 Past Days (Optional)
  |
 Enter the number of past days you want to retrieve data for. If you do not enter a value, data is pulled for all days.
  |


###
 Other Panes

For information about the remaining sections of the connector interface, including how to configure scheduling, retry, and update options, see

Adding a DataSet Using a Data Connector

.


 FAQs
------


#####
 What is the difference between the standard and advanced versions of the connector?

The only difference is that the advanced version gives you the capability to pull in custom reports from Velocify, while the standard version does not. Other than that, the available reports are the same.

####
 Can I use the same account to create multiple DataSets?

Yes.

####
 How often can the data be updated?

As often as needed.

####
 Are there any API limits I should be aware of?

No.

