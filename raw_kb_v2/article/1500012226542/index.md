

Intro
-------


 Use this connector to connect to your Google Analytics Management Service Account data. The Google Analytics Management API allows for programmatic access to Google Analytics configuration data. With the Google Analytics Management Service Account connector you can generate reports to list all account, property and view (profile) information for a user, or determine which goals are active and access their configured names. A Google Analytics Account is organized into several levels and the Management API Connector provides a way of interacting with the entities at each level.


 To learn more about the Google Analytics Management API, visit


 https://developers.google.com/analytics/devguides/config/mgmt/v3


 .

You connect to your Google Analytics Service account in the Data Center. This topic discusses the fields and menus that are specific to the

Google Analytics Management Service Account

Connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in

Adding a DataSet Using a Data Connector

.


 Prerequisites
---------------

To connect to your Google Analytics Service account and create a DataSet, you must have a Google service account JSON key.


 To generate a Google service account JSON key, do the following:

. In the Google Cloud Platform Console, open the
 **IAM & Admin**
 page.
2. Click
 **Service accounts**
 .
3. Select your project and click
 **Create Service Account**
 .
4. In the
 **Service account details**
 section, enter a name and description for the service account.
5. Click
 **Create**
 .
6. Now, in the
 **Grant this service account access to the project**
 section, click
 **Select a role**
 drop down.
7. Select
 **Project-> Owner**
 .
8. Click
 **Continue**
 .
9. Click
 **Done**
 . An overview of your service account will appear.
10. In the
 **Actions**
 column, click the three dots to expand the menu. Click
 **Manage Keys**
 .
11. Click
 **Add Key**
 . Select
 **Create new key**
 .
12. **Create private key**
 window will appear. Select private key type as
 **JSON**
 and click
 **Create**
 .
13. A private key will be saved to your computer.

Connecting to Your Google Service Account
-------------------------------------------

This section enumerates the options in the Credentials and Details panes in the

Google Analytics Management Service Account

Connector page. The components of the other panes in this page,
 **Scheduling**
 and
 **Name & Describe Your DataSet**
 , are universal across most connector types and are discussed in greater length in

Adding a DataSet Using a Data Connector

.

##
 Credentials Pane

This pane contains fields for entering credentials to connect to your

Google Analytics Management Service

account. The following table describes what is needed for each field:


 Field
  |
 Description
  |
| --- | --- |
|
 Service Account Key JSON
  |
 Copy and paste the JSON key for your Google service account. For information about creating a key, see "Prerequisites," above.
  |
|
 Quota Limit
  |
 Select the QPS limit for your Google Analytics project. By default it is 20 QPS.
  |

Once you have entered a

valid key

, you can use the same account any time you go to create a new

Google Analytics Management Service

Account DataSet. You can manage Connector accounts in the
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
 Select the

Google Analytics Management Service

Account report you want to run. The following reports are available:


|  |  |
| --- | --- |
|
 Accounts
  |
 Retrieves all accounts to which the user has access.
  |
|
 Account Summaries
  |
 Retrieves account summaries (lightweight flattened tree comprised of accounts/properties/profiles) to which the user has access.
  |
|
 Account User Links
  |
 Retrieves account-user links for a given account.
  |
|
 Ad Words Links
  |
 Retrieves webProperty-Google Ads links for a given web property.
  |
|
 Custom Data Sources
  |
 Retrieves custom data sources to which the user has access.
  |
|
 Custom Dimensions
  |
 Retrieves custom dimensions to which the user has access.
  |
|
 Custom Metrics
  |
 Retrieves custom metrics to which the user has access.
  |
|
 Experiments
  |
 Retrieves experiments to which the user has access.
  |
|
 Filters
  |
 Retrieves all filters for an account.
  |
|
 Goals
  |
 Retrieves goals to which the user has access.
  |
|
 Profile Filter Links
  |
 Retrieves all profile filter links for a profile.
  |
|
 Profile User Links
  |
 Retrieves profile-user links for a given view (profile).
  |
|
 Profiles
  |
 Retrieves views (profiles) to which the user has access.
  |
|
 Remarketing Audiences
  |
 Retrieves remarketing audiences to which the user has access.
  |
|
 Segments
  |
 Retrieves segments to which the user has access.
  |
|
 Uploads
  |
 Retrieves uploads to which the user has access.
  |
|
 Web Properties
  |
 Retrieves properties to which the user has access.
  |
|
 Web Property User Links
  |
 Retrieves web property user links for a given web property.
  |

|
|
 Accounts
  |
 Select the accounts to query data from.
  |
|
 Web Properties
  |
 Select the web properties to query data from.
  |
|
 Profiles
  |
 Select the profiles to query data from.
  |
|
 Web Property Selection Type
  |
 Selecting
 **All Web Properties**
 will retrieve data for all the web properties that the user has access to. Selecting
 **Specific Web Properties**


 will retrieve data for the selected web properties.
  |
|
 Custom Data Sources
  |
 Select the custom data sources to query data from.
  |
|
 Account Selection Type
  |
 Selecting
 **All Accounts**
 will retrieve data for all accounts to which the user has access. Selecting
 **S**
**pecific Accounts**
 will retrieve data for the selected accounts.
  |


###
 Other Panes

For information about the remaining sections of the Connector interface, including how to configure scheduling, retry, and update options, see

Adding a DataSet Using a Data Connector

.

