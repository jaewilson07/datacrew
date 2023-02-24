---
    title: Salesforce with Upsert Connector
    url: https://domo-support.domo.com/s/article/360060905774
    linked_kbs:  ['[https://domo-support.domo.com/s/knowledge-base/](https://domo-support.domo.com/s/knowledge-base/)', '[https://domo-support.domo.com/s/](https://domo-support.domo.com/s/)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZammGAC](https://domo-support.domo.com/s/topic/0TO5w000000ZammGAC)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZanLGAS](https://domo-support.domo.com/s/topic/0TO5w000000ZanLGAS)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS](https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS)', '[https://domo-support.domo.com/s/article/360042926274](https://domo-support.domo.com/s/article/360042926274)', '[https://domo-support.domo.com/s/article/360042926054](https://domo-support.domo.com/s/article/360042926054)', '[https://domo-support.domo.com/s/article/360060905774](https://domo-support.domo.com/s/article/360060905774)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS/api-connectors](https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS/api-connectors)', '[https://domo-support.domo.com/s/article/360043429933](https://domo-support.domo.com/s/article/360043429933)', '[https://domo-support.domo.com/s/article/360043429953](https://domo-support.domo.com/s/article/360043429953)', '[https://domo-support.domo.com/s/article/360042925494](https://domo-support.domo.com/s/article/360042925494)', '[https://domo-support.domo.com/s/article/4408174643607](https://domo-support.domo.com/s/article/4408174643607)', '[https://domo-support.domo.com/s/article/360043429913](https://domo-support.domo.com/s/article/360043429913)', '[https://domo-support.domo.com/s/login/](https://domo-support.domo.com/s/login/)']
    article_id: 000003244
    views: 2,173
    created_date: 2022-10-24 21:11:00
    last updated: 2022-10-24 22:41:00
    ---



Intro
-----


The Domo Salesforce connector integrates Domo with Salesforce to extract data from API-enabled editions of Salesforce (currently Enterprise and Unlimited). To establish the connection between Domo and Salesforce, an API-enabled user must first authenticate to Salesforce and then grant Domo permission to access to their data. You can then compile reports based on Salesforce data. The Salesforce Upsert connector supports the upsert mode along with append and replace modes, for scheduling datasets. To learn more about the Salesforce API, visit any of the following:


* <https://www.salesforce.com/developer/docs/api/>
* [http://resources.docs.salesforce.com...\_reference.pdf](http://resources.docs.salesforce.com/200/9/en-us/sfdc/pdf/salesforce_field_names_reference.pdf "http://resources.docs.salesforce.com/200/9/en-us/sfdc/pdf/salesforce_field_names_reference.pdf")
* [https://developer.salesforce.com/doc...data\_model.htm](https://developer.salesforce.com/docs/atlas.en-us.api.meta/api/data_model.htm "https://developer.salesforce.com/docs/atlas.en-us.api.meta/api/data_model.htm")


The Salesforce with Upsert connector is a "Cloud App" connector, meaning it retrieves data stored in the cloud. In the Data Center, you can access the connector page for this and other Cloud App connectors by clicking **Cloud App** in the toolbar at the top of the window.


You connect to your Salesforce account in the Data Center. This topic discusses the fields and menus that are specific to the Salesforce with Upsert connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in [Adding a DataSet Using a Data Connector](/s/article/360042926274).




|  |  |
| --- | --- |
| **Primary Use Cases** | This connector is appropriate for pulling data from any API-enabled editions of Salesforce, such as leads, pipeline activity, and so on. |
| **Primary Metrics** | * Number of Leads
* Pipeline Amount
* Bookings
* Cases
* Meetings
* Portfolio Activity
 |
| **Primary Company Roles** | Salesforce has broad functionality and applies to many functions (e.g. Sales, Marketing, HR, Operations, Finance, IT, etc...) and also roles (analyst, sales rep, manager, VP, etc...). It all depends on how Salesforce was implemented, and the objects/modules created. |
| **Average Implementation Time** | Depends on the object/report/data size, but Salesforce is very quick to implement. It would take minutes to pull data through once you identify what you need. A very large data pull (millions of rows) would take about an hour. |
| **Ease of Use (on a 1-to-10 scale with 1 being easiest)** | 4 |


Best Practices
--------------


When using the Object Browser mode, Salesforce includes related objects (e.g. Opportunity and Account), so fields from each related object can be brought into the same DataSet. This prevents you from having to always pull in the objects independently (i.e. a separate Opportunity object and Account object) and join them in a DataFlow.


Prerequisites
-------------


To connect to your Salesforce account and create a DataSet, you must have the following:


* The username  and password for your Salesforce account
* An installed Domo Connector Package from the Salesforce AppExchange (required as of August 1, 2018; see next section for installation instructions)


### Installing the Domo Connector Package


The "Domo Connector Package" found in Salesforce AppExchange allows Salesforce users to import their data into Domo. Follow these instructions to download and install the Connector Package from the AppExchange.


**To install Domo's Salesforce Managed Package,**


1. Log into Salesforce.
2. Navigate to the Salesforce AppExchange at [https://appexchange.salesforce.com](https://appexchange.salesforce.com "https://appexchange.salesforce.com") and search for "Domo Connector Package," then click on it.   
   
 ![sfmp_1.png](sfmp_1.png)
3. Customers can go directly to the package with the following link:   
 [https://login.salesforce.com/packaging/installPackage.apexp?p0=04t1I000001ymKN](https://login.salesforce.com/packaging/installPackage.apexp?p0=04t1I000001ymKN "Follow link")
4. If you are installing into a sandbox organization you must replace the initial portion of the URL with [http://test.salesforce.com](http://test.salesforce.com/ "Follow link")  
   
 Alternatively, you can go directly to [https://appexchange.salesforce.com/a...A00000EcrsyUAB](https://appexchange.salesforce.com/appxListingDetail?listingId=a0N3A00000EcrsyUAB "https://appexchange.salesforce.com/appxListingDetail?listingId=a0N3A00000EcrsyUAB").
5. Click **Get It Now**.  
   
 ![sfmp_2.png](sfmp_2.png)
6. Choose whether you want to install in a production environment or sandbox.  
   
 ![sfmp_3.png](sfmp_3.png)
7. Check the box reading "I have read and agree to the terms and conditions."
8. Click **Confirm and Install**.    
   
 ![sfmp_4.png](sfmp_4.png)
9. Click the **Install for All Users** tile.  
   
 ![sfmp_5.png](sfmp_5.png)


For more details, see Salesforce's documentation at [https://help.salesforce.com/articleV...ges.htm&type=5](https://help.salesforce.com/articleView?id=distribution_installing_packages.htm&type=5 "https://help.salesforce.com/articleView?id=distribution_installing_packages.htm&type=5"). 


### Verifying your Installation


Use Domo's Salesforce Managed Package Validator to verify that your Salesforce Managed Package has been installed correctly.


**To verify your installation,**


1. In the Connectors page in either the Data Center or Appstore in Domo, search for "Salesforce Managed Package" and double-click on on the icon.
2. Customers can go directly to the package with the following link: [https://login.salesforce.com/packaging/installPackage.apexp?p0=04t1I000001ymKN](https://login.salesforce.com/packaging/installPackage.apexp?p0=04t1I000001ymKN "Follow link")
3. If you are installing into a sandbox organization you must replace the initial portion of the URL with [http://test.salesforce.com](http://test.salesforce.com/)


  
   
 ![sfmp_v1.png](sfmp_v1.png)
4. Click **Get the Data**.  
   
 ![sfmp_v2.png](sfmp_v2.png)
5. Under **Credentials**, select your Salesforce account name, then click **Next**.  
   
 ![sfmp_v3.png](sfmp_v3.png)
6. Under **Details**, click **Next**.  
   
 ![sfmp_v4.png](sfmp_v4.png)
7. In the **Update** menu, select **Manually**, then click **Next**.  
   
 ![sfmp_v5.png](sfmp_v5.png)
8. Give your DataSet a name, then click **Save**.  
   
 ![sfmp_v6.png](sfmp_v6.png)


The DataSet now runs. If everything has been set up correctly, the run will be successful, and a message will appear reading, "Validation Success: You have set up your Salesforce Managed Package correctly." 


![sfmp_v7.png](sfmp_v7.png)


If everything has *not* been set up correctly, the DataSet fails, and a message appears reading, "You have not installed Salesforce's Domo Connector Package," with a help link to this article. 


![sfmp_v8.png](sfmp_v8.png)


Connecting to Your Salesforce Account
-------------------------------------


This section enumerates the options in the Credentials and Data Selection panes in the Salesforce with Upsert Connector page. The components of the other panes in this page, **Scheduling**, and **Name & Describe Your DataSet**, are universal across most connector types and are discussed in greater length in [Adding a DataSet Using a Data Connector](/s/article/360042926274 "Adding a DataSet Using a Data Connector").


### Credentials Pane


The Domo Salesforce with Upsert connector uses OAuth to connect, so there is no need to enter credentials within Domo. Choose an environment in the Salesforce Environment menu then click Connect to open the Salesforce login screen. Here you can enter your Salesforce username and password. Once you have entered valid Salesforce credentials, you can use the same account any time you go to create a new Salesforce Upsert DataSet. You can manage connector accounts in the **Accounts** tab in the Data Center. For more information about this tab, see [Managing User Accounts for Connectors](/s/article/360042926054 "Managing User Accounts for Connectors").


### Data Selection Pane


This pane contains a primary **How Do You Want to Select Your Salesforce Data** menu, along with various other menus which may or may not appear depending on the report type you select.




| Menu | Description |
| --- | --- |
| How Do You Want to Select Your Salesforce Data? | Select the method you want to use to pull data from Salesforce. Methods are as follows:* Browse Objects and Fields - Lets you select Salesforce objects with associated fields and relationships.
* Browse Picklists - Lets you browse available dropdown lists in Salesforce.
* Deleted Objects - Lets you select deleted Salesforce objects. You can only select objects deleted earlier than 15 days ago.
* Query - Lets you enter SOQL queries to retrieve data.
* Reports - Lets you retrieve your tabular reports in Salesforce.
 |
| Type of Records to Retrieve | Select whether you want to retrieve only active records or include deleted records in the search as well. |
| Unique Field to Retrieve More Than 2000 Rows | Select the field that contains a unique value for each row of the report. It will be used to retrieve more than 2000 rows of data. |
| Query Option | Select a predefined query (**Sales Performance** or **User Images**) or create your own query (**Custom**). |
| Query | Enter your Salesforce SOQL query here. For example:
SELECT *Account* FROM Account 
For more information about writing SOQL queries, see <http://www.salesforce.com/us/developer/docs/officetoolkit/Content/sforce_api_calls_soql.htm>. |
| Reset Schema | Choose an option for resetting the columns in your data. In general, you will want to choose the second option when changing the selected fields or custom query. You will then run the DataSet, then switch to the first option to maintain the schema for subsequent runs to avoid data type issues. |


### Other Panes


For information about the remaining sections of the connector interface, including how to configure scheduling, retry, and update options, see [Adding a DataSet Using a Data Connector](/s/article/360042926274 "Adding a DataSet Using a Data Connector").


Troubleshooting
---------------


Salesforce is generally a very stable connector so there are just a few common issues that arise with it. Most of the issues are due to insufficient permissions (on both the object and the field). Your Salesforce admin should be able to upgrade permissions on specific objects and fields.


Another common error is the “Query Locator Error.” Salesforce only keeps 10 query locators at a time for a single user and for a maximum of 15 minutes. If too many DataSets are running at the same time, some of these will fail. The best way to avoid this issue is to spread out the times when the DataSets are running.


FAQ
---



#### What version of the Salesforce API does this connector use?


This connector uses version 46.0 of the Salesforce API (<https://{>customer instance}.[salesforce.com/services/data](http://salesforce.com/services/data)/v46.0.)




#### Which endpoint(s) does each report call in this connector?




| Report Name | Endpoint URL(s) |
| --- | --- |
| Browse Objects and Fields | /query |
| Query | /query |
| Tabular Reports | /analytics/reports/{reportId}/describe |
| Sharing Rules and Settings | /knowledgeManagement/settings |




#### What kind of credentials do I need to power up this connector?


You need to select the Salesforce environment you would like to authenticate against, and the email address and password associated with your Salesforce account. 




#### How do I know my Salesforce account credentials are secure?


The login process uses the OAuth process so your Saleforce credentials are never seen or stored by Domo. This keeps your login secure. You can revoke Domo's access to your account at any time.




#### I keep getting an "INVALID\_QUERY\_LOCATOR" error. How do I fix that?


Salesforce allows a user to run a maximum of 10 queries at a time. Make sure your dataset runs are spread out.




#### I keep getting a "QUERY\_TIMEOUT" error. How do I fix that?


This error appears if your SOQL query exceeds 20K character limit or contains too many formula fields. To fix this issue you need to simplify your query. 




#### Why do I not see my reports in the report drop-down menu?


Before reports can appear in the connector and pull in data, reports must be in table format and made public.




#### What's the difference between the Salesforce connector and the Salesforce with Upsert connector?


The Salesforce with Upsert connector allows a Merge mode that replaces all updated rows, while any new rows are appended for scheduling datasets along with the Replace and Append modes.


