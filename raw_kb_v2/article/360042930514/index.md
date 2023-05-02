

Intro
-------

Wrike, Inc. produces a project management tool that gets distributed and co-located teams working together so that projects are completed faster to save time and money. Use Domo's Wrike Enterprise connector to extract data from your Wrike account using the Wrike BI Export API. To learn more about Wrike BI Export, visit

https://help.wrike.com/hc/en-us/articles/360019094414-BI-Export

.


 You connect to your Wrike account in the Data Center. This topic discusses the fields and menus that are specific to the Wrike Enterprise connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in

Adding a DataSet Using a Data Connector

.


 Prerequisites
---------------

To connect to your Wrike account and create a DataSet, you must have a Wrike username and password. Alternatively, you can connect using Google or Microsoft Office 365 credentials, or SSO credentials if these have been set up for your company.


 Connecting to your Wrike account
----------------------------------

This section enumerates the options in the
 **Credentials**
 and
 **Details**
 panes in the Wrike Enterprise Connector page. The components of the other panes in this page,
 **Scheduling**
 and
 **Name & Describe Your DataSet

,**
 are universal across most connector types and are discussed in greater length in

Adding a DataSet Using a Data Connector

.

##
 Credentials pane

The Domo Wrike Enterprise connector uses OAuth to connect, so there is no need to enter credentials within Domo. Click
 **Connect**
 (or select
 **Add Account**
 if you have existing Wrike accounts in Domo) to open the Wrike OAuth screen where you can enter your credentials to connect to Wrike. Once you have entered valid credentials, you can use the same account any time you go to create a new Wrike Enterprise DataSet. You can manage connector accounts in the
 **Accounts**
 tab in the

Data Center

. For more information about this tab, see

Managing User Accounts for Connectors

.

*Note:**
 If you are already logged into Wrike when you connect in Domo, you are authenticated automatically when you click
 **Add account**
 . If you want to connect to an account that is different from the one you are logged into, you must first log out of Wrike.


###
 Details Pane

This pane contains a single
 **Report**
 menu which auto-populates with all of the reports available in your Wrike account. No other configuration is needed.


 Menu
  |
 Description
  |
| --- | --- |
|
 Report
  |
 Select the report you want to extract from your Wrike account.
  |


###
 Other Panes

For information about the remaining sections of the connector interface, including how to configure scheduling, retry, and update options, see

Adding a DataSet Using a Data Connector

.


 FAQs
------


#####
 Why is my list of reports not populating?

The first time you click on the
 **Report**
 dropdown, it can take several hours for the reports in the list to generate.

####
 Why isn't the connector working?

The Wrike Enterprise connector is only enabled for users who have Enterprise-level subscriptions from Wrike and have the "data export" permission enabled. For more information, see

https://developers.wrike.com/export-data/

.

