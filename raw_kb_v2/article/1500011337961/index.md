

Intro
-------

Google BigQuery is a serverless, highly scalable, and cost-effective cloud data warehouse designed to help you make informed decisions quickly, so you can transform your business with ease. It's a cloud-based big data analytics web service for processing very large read-only data sets. Use Domo's Google BigQuery OAuth Writeback connector to securely export your data from a Domo DataSet into a BigQuery table. To learn more about the BigQuery API, go to

https://cloud.google.com/bigquery/docs/reference/v2/

.


 You export data to BigQuery in the Data Center. This topic discusses the fields and menus that are specific to the Google BigQuery OAuth Writeback connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in

Adding a DataSet Using a Data Connector

.

*Note:**
 The owner of a writeback dataset must also be an owner or co-owner of the input dataset.

Prerequisites
---------------

To configure this connector, you will need your Google account credentials (username and password).

*Note:**
 The owner of a writeback dataset must also be an owner or co-owner of the input dataset.

Configuring the Connection
----------------------------

This section enumerates the options in the
 **Credentials**
 and
 **Details**
 panes in the Domo's Google BigQuery OAuth Writeback Connector page. The components of the other panes in this page,
 **Scheduling**
 and
 **Name & Describe Your DataSet

,**
 are universal across most connector types and are discussed in greater length in

Adding a DataSet Using a Data Connector

.

##
 Credentials Pane

The Domo Google BigQuery OAuth Writeback connector uses OAuth to connect, so there is no need to enter credentials within Domo. Click
 **Connect**
 (or select
 **Add Account**
 if you have existing Google accounts in Domo) to open the Google OAuth screen where you can enter your Google credentials. Once you have entered valid Google credentials, you can use the same account any time you go to set up a new Domo-Google BigQuery connection. You can manage connector accounts in the
 **Accounts**
 tab in the

Data Center

. For more information about this tab, see

Managing User Accounts for Connectors

.

*Note:**
 If you are already logged into Google when you connect in Domo, you are authenticated automatically when you click
 **Add account**
 . If you want to connect to an account that is different from the one you are logged into, you must first log out of the logged in Google account.


###
 Details Pane


 This pane contains a number of fields for specifying your data and indicating where it's going.


|
 Menu
  |
 Description
  |
| --- | --- |
|
 BigQuery Project
  |
 Select a project from the available list of projects.
  |
|
 BigQuery DataSet
  |
 Select the BigQuery DataSet Name. Datasets are top-level containers that are used to organize and control access to your tables and views. A table or view must belong to a dataset, so you need to create at least one dataset before loading data into BigQuery.
  |
|
 BigQuery Table Name

|
 Enter the BigQuery table name you want to send Domo data to. The table you indicate will be deleted and recreated with each run with the name entered here.
  |
|
 Input Domo DataSet ID
  |

Enter your Domo dataset ID (GUID) located in the dataset URL.


 Example:

https://customer.domo.com/datasources/

*aaaaaaaa-bbbb-cccc-dddd-eeeeeeeeeeee**
 /details/settings

|


###
 Other Panes

For information about the remaining sections of the connector interface, including how to configure scheduling, retry, and update options, see

Adding a DataSet Using a Data Connector

.


 FAQs
------


####
 When should I use this connector?

This connector will allow you to write data from Domo to BigQuery. It connects via a Domo defined Google app to support OAuth connections, so you'll need a valid username and password that has access to BigQuery. Once connected, you'll specify the location of the BigQuery Project and Table to write to.

###
 What kind of credentials do I need to power up this connector?

You need your Google credentials (email address and password). Your Google account must have permissions to access the tables and data needed for the query.

###
 How do I know that my login credentials are secure?

The login process uses the OAuth process, so your Google credentials are never seen or stored by Domo. This keeps your login secure. You can revoke Domo's access to your account at any time.

###
 How often can the data be updated?

As often as needed.

###
 Are there any API limits that I need to be aware of?

None

###
 How do I find the Input Dataset ID?

Your Domo input dataset id is in the URL of the dataset you are exporting data from.


 Example:

https://customer.domo.com/datasources/

*aaaaaaaa-bbbb-cccc-dddd-eeeeeeeeeeee**
 /details/settings

