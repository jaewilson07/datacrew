

*What is happening?**

At Domo, we take pride in providing the industry leading, best time to value solution, with an eco-system of over 500 connectors. We regularly review our connector offerings and make enhancements to provide a more robust experience for our customers.


 Zoho recently announced that they will be deprecating their older API version 1.0 on December 31, 2018. Starting January 1, 2019, they will only be supporting API version 2.0. To account for this change we have updated the Zoho connector to API version 2.0 on October 30, 2018. The connector version is now 2.90, released on October 30th.


**When is this change happening?**


 As Zoho indicated

here

, API version 1.0 will be deprecated on December 31, 2018.


**How does this impact me?**


 All reports running against API version 1.0 will no longer update after December 31, 2018.


**What do I have to do?**


 To minimize disruption, make sure that you re-create all of your DataSets that were created before October 30th, 2018.

Intro
-------

Zoho CRM is a customer relationship management application with features like procurement, inventory, and some accounting functions from the realm of ERP.

To learn more about the Zoho CRM API, visit their page (


 https://www.zoho.com/crm/help/api/api-methods.html


 ).

The Zoho CRM connector is a "Cloud App" connector, meaning it retrieves data stored in the cloud. In the Data Center, you can access the connector page for this and other Cloud App connectors by clicking
 **Cloud App**
 in the toolbar at the top of the window.

You connect to your Zoho CRM account in the Data Center. This topic discusses the fields and menus that are specific to the Zoho CRM connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in

Adding a DataSet Using a Data Connector

.


|  |  |
| --- | --- |
|
**Primary Use Cases**
 |
 This connector lets you track your sales pipeline, categorize leads, manage inventory, and keep on top of sales procurement.
  |
|
**Primary Metrics**
 | * Number of prospects
* Number of new customers
* Number of retained customers
* Close rate
* Renewal rate
* Sales calls made
* Sales calls per opportunity
* Sales stage duration
* Sales cycle duration
* Proposals given
* Customer lifetime value
* Upsell ratio
 |
|
**Primary Company Roles**
 | * Sales
* Marketing
 |
|
**Average Implementation Time**
 |
 some stuff
  |
|
**Ease of Use (on a 1-to-10 scale with 1 being easiest)**
 |
 some stuff
  |


 Prerequisites
----------------


 To connect to your Zoho CRM account and create a DataSet, you must have the client ID and client secret associated with your Zoho CRM account.


####

To obtain your client id and client secret:


1. First, log into your

Zoho CRM

account.
2. Visit the Zoho API Console and click the
 **Get Started**
 button.
3. Select the Client Type.
4. Provide the client details and click
 **Create**
 .


 Your client id and client secret will appear.


**Note**
 : Use the redirect URI as
 **https://oauth.domo.com/api/data/v2/oauth/providers/zoho-crm-enterprise/exchange**


 Connecting to Your Zoho CRM Account
--------------------------------------


 This section enumerates the options in the
 **Credentials**
 and
 **Details**
 panes in the Zoho CRM Connector page. The components of the other panes in this page,
 **Scheduling**
 and
 **Name & Describe Your DataSet**
 , are universal across most connector types and are discussed in greater length in

Adding a DataSet Using a Data Connector

.


###

Credentials Pane

This pane contains fields for entering credentials to connect to your Zoho CRM


 account. The following table describes what is needed for each field:


 Field Name
  |
 Description
  |
| --- | --- |
|
 Client ID
  |
 Enter the client ID associated with your Zoho CRM account.
  |
|
 Client Secret
  |
 Enter the client secret associated with your Zoho CRM account.
  |
|
 Zoho CRM Edition
  |
 Select the Zoho CRM Edition.
  |
|
 Domain
  |
 Select your Zoho CRM domain. To find your domain, log into


 Zoho CRM


 and observe the host address.


**Example:**

After logging in, if your host address is

https://abc.zoho.com.au/

, your domain would be AU.
  |


 Once you have entered valid Zoho CRM credentials, you can use the same account any time you go to create a new Zoho CRM DataSet. You can manage connector accounts in the
 **Accounts**
 tab in the
 **Data Center**
 . For more information about this tab, see

Managing User Accounts for Connectors

.


###

Details Pane


 This pane contains a primary
 **Method**
 menu, in which you specify the data you want to retrieve. Depending on the selected method, various other menus may appear.


|

*Menu**

|

*Description**

|
| --- | --- |
|
 Method
  |

Select the Zoho CRM data you want to retrieve. The following methods are available:

  |  |
| --- | --- |
|
 Attachments
  |
 Returns a list of attachments
  |
|
 Custom View Records
  |
 Returns the custom views data of a particular module
  |
|
 Deleted Records
  |
 Returns a list of deleted records
  |
|
 Fields
  |
 Returns the field meta data for the specified module
  |
|
 Layouts
  |
 Returns the layouts associated with the particular module
  |
|
 Modules
  |
 Returns a list of modules available in the CRM account.
  |
|
 Notes
  |
 Returns a list of notes
  |
|
 Organizations
  |
 Returns the organization data
  |
|
 Profiles
  |
 Returns the data of profiles
  |
|
 Records
  |
 Returns a list of available records from a module
  |
|
 Related List
  |
 Returns the related list data of a particular module
  |
|
 Related Records
  |
 Returns the related list records
  |
|
 Roles
  |
 Returns the data of roles
  |
|
 Search Records
  |
 Returns the records that matches the search criteria
  |
|
 Search using COQL
  |
 Returns the records that matches the search criteria query
  |
|
 Tags
  |
 Returns all the tags information in an organization
  |
|
 Users
  |
 Returns the list of users in your organization
  |

|
|

Module

|

Select the Zoho CRM module to pull data from.

|
|
 Approval State
  |
 Select the approval status to get a list of records of that status.
  |
|

Deleted Record Type

|


 Report
  |
 Description
  |
| --- | --- |
|
 All
  |
 Returns a list of all deleted records
  |
|
 Permanent
  |
 Returns a list list of permanently deleted records
  |
|
 Recycle
  |
 Returns a list of deleted records from recycle bin
  |

|
|

Record ID

|
 Select the Record Id.
  |
|

Related List API Name

|
 Select the Related List Api Name.
  |
|

Search Parameter

|
 Select the search parameter.
  |
|

Past Days

|
 Enter the number of days of data to retrieve. For example, entering

30

would pull data for the last 30 days.
  |
|

Search Condition

|


 Enter the search statement to pull data for.


|  |  |  |
| --- | --- | --- |
|  | **Format**  | **Example**  |
|
 Email
  |


 username@domain.com


 |


 daly@zylker.com


 |
|
 Phone
  |

xxx-xxx-xxxx

|

888-555-2145

|
|
 Word
  |

Search Word

|

test

|
|
 Criteria
  |

(({apiname}:{starts\_with|equals}:{value}) and ({apiname}:{starts\_with|equals}:{value}))

|

(Last\_Name:equals:Boyle) for Lead Module

will search the Last\_Name column for rows equaling Boyle


 |


 See


 Zoho API Help Link


 for more help.


 |
|
 Custom View Name
  |
 Select the Custom View Name to get the list of records based on custom views.
  |
|
 User Type
  |
 Select the user type you want to pull data for.


|  |  |
| --- | --- |
|
 Active Confirmed Users
  |
 Returns the list of active users who are also confirmed
  |
|
 Active Users
  |
 Returns a list of list of all Active Users
  |
|
 Admin Users
  |
 Returns the the list of admin users
  |
|
 All Users
  |
 Returns the the list of All users
  |
|
 Confirmed Users
  |
 Returns the list of confirmed users
  |
|
 Current User
  |
 Returns the the list of current CRM users
  |
|
 Deactivated Users
  |
 Returns a list of all users who were deactivated
  |
|
 Deleted Users
  |
 Returns the list of deleted users
  |
|
 Not Confirmed Users
  |
 Returns the list of non-confirmed users
  |

|


###
 Other Panes

For information about the remaining sections of the connector interface, including how to configure scheduling, retry, and update options, see

Adding a DataSet Using a Data Connector

.


 Troubleshooting
-----------------

Issues sometimes arise with this connector from permissions problems. If any data is missing for any reason, then most likely the credentials being used for the connector have fewer permissions than expected. Either enter credentials with full Zoho CRM system access or, through Zoho CRM, provide the account linked to Domo with the proper access.


 API Limits
------------

Free Edition

 1000 requests/day/organization

Standard Edition

 Min - 2000 requests/day/organization
* Max - 5000 requests/day/organization or 250 requests /user license whichever is lower

Professional Edition

 Min - 3000 requests/day/organization
* Max - 10000 requests/day/organization or 250 requests /user license whichever is lower

Enterprise Edition

 Min - 4000 requests/day/organization
* Max - 25000 requests/day/organization or 500 requests /user license whichever is lower

Zoho CRM will notify CRM administrators (Users with "Administrator" profile) if your organization exceeds the API limit. They also provide API statistics for better assessment of your integration requirements.

