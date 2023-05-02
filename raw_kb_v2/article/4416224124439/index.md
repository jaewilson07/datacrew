

The Social Studio API is a REST-ful web service for retrieving, analyzing, and modifying social media data contained in your Social Studio Account. It is a one-stop solution to manage, schedule, create, and monitor posts. Social Studio offers powerful real-time publishing and engagement. Having a clear view of your social account performance is always essential. With Domo’s Social Studio Connector, you can easily monitor the key social metrics across your social studio account.


 Use this Connector to monitor and manage different media types, posts, keywords, profiles, contents, filters, workspaces, and much more, and quickly determine your social account’s strengths, weaknesses, and opportunities.


 To learn about the Social Studio API, see

https://developer.salesforce.com/docs/atlas.en-us.api\_social.meta/api\_social/1-introduction-to-the-social-studio-marketing-cloud.htm

.


 The Social Studio Connector is a "Cloud App" Connector, meaning it retrieves data stored in the cloud. In the Data Center, you can access the Connector page for this and other Cloud App Connectors by clicking
 **Cloud App**
 in the toolbar at the top of the window.


 You connect to your Social Studio account in the Data Center.  This topic discusses the fields and menus that are specific to the Social Studio Connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in

Adding a DataSet Using a Data Connector

.


 Prerequisites
---------------

To connect to your Social Studio account and create a DataSet, you must have the following:

 The username and password for your Social Studio account.
* The API key and API secret associated with your Social Studio account.

Connecting to Your Social Studio Account
------------------------------------------

This section enumerates the options in the Credentials and Details panes in the Social Studio Connector page. The components of the other panes in this page,


**Scheduling**


 and


**Name & Describe Your DataSet**
 , are universal across most connector types and are discussed in greater length in

Adding a DataSet Using a Data Connector

.

##
 Credentials Pane

This pane contains fields for entering credentials to connect to your

Social Studio

account. The following table describes what is needed for each field:


 Field
  |
 Description
  |
| --- | --- |
|
 Username
  |
 Enter the username you use to log into your Social Studio account.
  |
|
 Password
  |
 Enter your Social Studio password.
  |
|
 API Key
  |
 Enter the API key associated with your Social Studio account.
  |
|
 API Secret
  |
 Enter the API secret associated with your Social Studio account.
  |

Once you have entered valid Social Studio credentials, you can use the same account any time you go to create a new Social Studio DataSet. You can manage Connector accounts in the


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
 Select the Social Studio report you want to run. The following reports are available:


|  |  |
| --- | --- |
|
 Approval Rules
  |
 Retrieves one or more approval rules for a workspace.
  |
|
 Case
  |
 Retrieves a collection of cases.
  |
|
 Client
  |
 Retrieves the Social Studio organization of the company. Currently, this call returns only the client for the authenticated user.
  |
|
 Imported Posts
  |
 Retrieves posts and their metrics imported to a workspace.
  |
|
 Keyword Groups
  |
 Returns a specified keyword group from a workspace.
  |
|
 Languages
  |
 Retrieves information about all languages available when managing your topic profile.
  |
|
 Macros
  |
 Retrieves all macros within a Social Studio organization. This macro can contain several different actions within the JSON payload, indicating actions to perform when the macro receives an execute call.
  |
|
 Media Type
  |
 Retrieves a collection of media types on supplied parameters.
  |
|
 Posts
  |
 Retrieves post data from available broad listening topic profiles and social accounts.
  |
|
 Publish Profiles
  |
 Retrieves publish macros in the Social Studio organization.
  |
|
 Regions
  |
 Retrieves information about all regions available when managing your topic profile.
  |
|
 Salesforce Organizations
  |
 Returns information on all Salesforce organizations registered within the tenant for the user executing the call.
  |
|
 Shared Content
  |
 Retrieves content available for use within a workspace.
  |
|
 Short Url
  |
 Returns Bitly accounts within a workspace.
  |
|
 Source Filters
  |
 Returns all source groups available to the authenticated users.
  |
|
 Source Filter Queries
  |
 Returns all source filter queries associated with a social filter.
  |
|
 Social Properties
  |
 Retrieves social properties the user can access. This object contains information about a managed account topic profile and associated external user account.
  |
|
 Topic Profiles
  |
 Retrieves specific details on topic profiles based on user permissions and role.
  |
|
 Users
  |
 Retrieves information for all users within an account.
  |
|
 Workspace
  |
 Retrieves a paginated list of workspaces within the Social Studio organization.
  |

|
|
 Owner ID
  |
 Enter the Owner ID.
  |
|
 Owner Type
  |
 Enter the Owner Type.
  |
|
 Include
  |
 Select a metric to include the additional information on the workflow.
  |
|
 Workspace
  |
 Select the workspace.
  |
|
 Network
  |
 Select the social network for post.
  |
|
 Keyword Group ID
  |
 Select the keyword group ID.
  |
|
 Topic ID
  |
 Select the topic ID.
  |
|
 Priority
  |
 Select the priority.
  |
|
 Sentiment
  |
 Select the sentiment.
  |
|
 Filter
  |
 Select the filter.
  |
|
 Search Characters
  |
 Enter the characters to search for in the title. A string should contain minimum 3 characters.
  |
|
 Select the source filter id.
  |
 Select the source filter ID.
  |
|
 Types
  |
 Select the social network types.
  |
|
 Views
  |
 Select the view.
  |
|
 Status
  |
 Select the status of topic profile to return.
  |
|
 Enabled
  |
 Select 'True' to only retrieve active users; otherwise, select 'False'.
  |
|
 Visibility
  |
 Specify whether a workspace is visible to all users or private users.
  |


###
 Other Panes

For information about the remaining sections of the Connector interface, including how to configure scheduling, retry, and update options, see

Adding a DataSet Using a Data Connector

.


 FAQs
------


####
 What endpoint is the base URL for this Connector?

The base URL for the Social Studio Connector is

https://api.socialstudio.radian6.com/

.

###
 Which endpoint does each report call in this connector?


|
 Report Name
  |
 Endpoint URL
  |
| --- | --- |
|
 Approval Rules
  |
 /v1/approvalflows
  |
|
 Case
  |
 /v1/cases
  |
|
 Client
  |
 /v3/client
  |
|
 Imported Posts
  |
 /v1/importedposts
  |
|
 Keyword Groups
  |
 /v3/keywordGroups/{ID}
  |
|
 Languages
  |
 /v3/languages
  |
|
 Macros
  |
 /v3/macros
  |
|
 Media Type
  |
 /v3/mediaTypes
  |
|
 Posts
  |
 /v3/posts
  |
|
 Publish Profiles
  |
 /v3/publishprofiles
  |
|
 Regions
  |
 /v3/regions
  |
|
 Salesforce Organizations
  |
 /v3/salesforceOrganizations
  |
|
 Shared Content
  |
 /v1/clips
  |
|
 Short Url
  |
 /v1/shorturls
  |
|
 Source Filters
  |
 /v3/sourceFilters
  |
|
 Source Filter Queries
  |
 /v3/sourceFilters/{ID}/sourceFilterQueries
  |
|
 Social Properties
  |
 /v3/socialProperties
  |
|
 Topic Profiles
  |
 /v3/topics
  |
|
 Users
  |
 /v3/users
  |
|
 Workspace
  |
 /v1/workspaces
  |


####
 What kind of credentials do I need to power up the Social Studio Connector?

You need the username, password, API key, and API secret associated with your Social Studio account.

###
 How frequently will my data update?

As often as needed.

###
 Are there any API limits that I need to be aware of?

No

###
 Can I use the same account to create multiple datasets?

Yes


 Troubleshooting
-----------------


* Make sure your authentication remains valid.
* Review the configuration to make sure that all required items have been selected.
* Review the Connector history for error messages.
* In rare cases, you may be requesting too much information and reaching API limitations or timeouts. If this is the case, you can review the history of the Connector run to see the error message and duration. If this is the case, you can reduce the number of accounts that are being pulled, choose a smaller number of metrics for the report that you are pulling, or reduce the timeframe that you are trying to pull.


