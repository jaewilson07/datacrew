---
    title: Google Cloud Storage Connector
    url: https://domo-support.domo.com/s/article/360043433313
    linked_kbs:  ['[https://domo-support.domo.com/s/knowledge-base/](https://domo-support.domo.com/s/knowledge-base/)', '[https://domo-support.domo.com/s/](https://domo-support.domo.com/s/)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZammGAC](https://domo-support.domo.com/s/topic/0TO5w000000ZammGAC)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZanLGAS](https://domo-support.domo.com/s/topic/0TO5w000000ZanLGAS)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS](https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS)', '[https://domo-support.domo.com/s/article/360042928734](https://domo-support.domo.com/s/article/360042928734)', '[https://domo-support.domo.com/s/article/360043431293](https://domo-support.domo.com/s/article/360043431293)', '[https://domo-support.domo.com/s/article/360042926694](https://domo-support.domo.com/s/article/360042926694)', '[https://domo-support.domo.com/s/article/360043433313](https://domo-support.domo.com/s/article/360043433313)', '[https://domo-support.domo.com/s/article/360043435173](https://domo-support.domo.com/s/article/360043435173)', '[https://domo-support.domo.com/s/article/360043436613](https://domo-support.domo.com/s/article/360043436613)', '[https://domo-support.domo.com/s/article/360042930594](https://domo-support.domo.com/s/article/360042930594)', '[https://domo-support.domo.com/s/article/360042928714](https://domo-support.domo.com/s/article/360042928714)', '[https://domo-support.domo.com/s/article/360043436593](https://domo-support.domo.com/s/article/360043436593)', '[https://domo-support.domo.com/s/article/360043431253](https://domo-support.domo.com/s/article/360043431253)', '[https://domo-support.domo.com/s/article/360042932014](https://domo-support.domo.com/s/article/360042932014)', '[https://domo-support.domo.com/s/article/360042928774](https://domo-support.domo.com/s/article/360042928774)', '[https://domo-support.domo.com/s/article/360042930574](https://domo-support.domo.com/s/article/360042930574)', '[https://domo-support.domo.com/s/article/360043435193](https://domo-support.domo.com/s/article/360043435193)', '[https://domo-support.domo.com/s/article/360043433273](https://domo-support.domo.com/s/article/360043433273)', '[https://domo-support.domo.com/s/article/360042926274](https://domo-support.domo.com/s/article/360042926274)', '[https://domo-support.domo.com/s/article/360042926054](https://domo-support.domo.com/s/article/360042926054)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS/api-connectors](https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS/api-connectors)', '[https://domo-support.domo.com/s/article/360043429933](https://domo-support.domo.com/s/article/360043429933)', '[https://domo-support.domo.com/s/article/360043429953](https://domo-support.domo.com/s/article/360043429953)', '[https://domo-support.domo.com/s/article/360042925494](https://domo-support.domo.com/s/article/360042925494)', '[https://domo-support.domo.com/s/article/360043429913](https://domo-support.domo.com/s/article/360043429913)', '[https://domo-support.domo.com/s/article/4408174643607](https://domo-support.domo.com/s/article/4408174643607)', '[https://domo-support.domo.com/s/login/](https://domo-support.domo.com/s/login/)']
    article_id: 000003586
    views: 2,164
    created_date: 2022-10-24 21:13:00
    last updated: 2022-10-24 22:41:00
    ---





 


**Important:**Due to Google’s change in allowing Domo connectors to use OAuth authentication, all users must now use service account key authentication to create new data connections. All pre-existing DataSets will continue to run normally. Current Connectors that rely on Google OAuth authentication will no longer be able to power up new DataSets. These connectors include the following:
* [Google BigQuery](/s/article/360042928734 "Google BigQuery Connector")
* [Google Adwords via Google BigQuery](/s/article/360043431293 "Google AdWords via Google BigQuery Connector")
* [DoubleClick Campaign Manager via Google Cloud Storage (DTV2)](/s/article/360042926694 "DoubleClick Campaign Manager via Google Cloud Storage (DTV2) Connector")
* [Google Cloud Storage](/s/article/360043433313 "Google Cloud Storage Connector")
* [Google Contacts](/s/article/360043435173 "Google Contacts Connector")
* [Google Drive](/s/article/360043436613 "Google Drive Connector")
* [Google Gmail](/s/article/360042930594 "Google Gmail Connector")
* [Google Admin SDK Reports](/s/article/360042928714 "Google Admin SDK Reports Connector")


If you need to change a pre-existing Google OAuth DataSet, please use the corresponding Service Account connector. The following Service Account connectors are now available:


* [Google BigQuery Service](/s/article/360043436593 "Google BigQuery Service Connector")
* [Google Ads (fomerly AdWords) via Google BigQuery Service](/s/article/360043431253 "Google Ads via Google BigQuery Service Connector")
* [Google Drive Service](/s/article/360042932014 "Google Drive Service Connector")
* [Google Cloud Storage Service](/s/article/360042928774 "Google Cloud Storage Service Connector")
* [Google Contacts Service](/s/article/360042930574 "Google Contacts Service Connector")
* [Google Gmail Service](/s/article/360043435193 "Google Gmail Service Connector")
* [Google Admin SDK Reports Service](/s/article/360043433273 "Google Admin SDK Reports Service Connector")


All other equivalent Google Service Account connectors are currently in development. Domo will communicate when these connectors become available. You will need to look for the Service Account equivalent connector in Data Center or the App Store and use that connector to get their data.  
   
 Domo recommends that you proactively repower existing Google connections by creating new DataSets utilizing the new Service Account Key connectors as the connectors become available.  Domo will notify you if any further migration changes should arise.  






Intro
-----


Google Cloud Storage is an Internet service used to store data in Google's cloud. You can use Domo's Google Cloud Storage connector to get data about project buckets and objects in Google Cloud Storage. Buckets are general locations and destination for files to be stored. Projects organize the resources and permissions. Most people will use this connector to connect to the buckets that store their data.


To find out more about the Google Cloud Storage API, visit [https://cloud.google.com/storage/docs/json\_api/](https://cloud.google.com/storage/docs/json_api/ "https://cloud.google.com/storage/docs/json_api/").


The Google Cloud Storage connector is a "File" connector, meaning it retrieves files and outputs them to Domo. In the Data Center, you can access the connector page for this and other File connectors by clicking **File** in the toolbar at the top of the window.


You connect to your Google Cloud Storage account in the Data Center. This topic discusses the fields and menus that are specific to the Google Cloud Storage connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in [Adding a DataSet Using a Data Connector](/s/article/360042926274 "Adding a DataSet Using a Data Connector").




|  |  |
| --- | --- |
| **Primary Use Cases** | Files of any size can be delivered to the Google Cloud Storage buckets. You can list the files in a bucket or retrieve individual files. You can also use this connector to pull details about the buckets and projects associated with the bucket or project name. |
| **Primary Metrics** | None. This connector is primarily used for grabbing files out of a cloud storage bucket. |
| **Primary Company Roles** | * Data specialists
* Analysts
* MajorDomos
 |
| **Average Implementation Time** | * Entering credentials - 15 minutes or less
* Configuring the connector - 20 minutes
* Allowing the connector to run - Time varies depending on file size
 |
| **Ease of Use (on a 1-to-10 scale with 1 being easiest)** | 3 |


Prerequisites
-------------


To connect to a Google account and create a Google Cloud Storage DataSet, you must have the password for the account you want to connect to.  


Connecting to Your Google Account
---------------------------------


This section enumerates the options in the **Credentials** and **Details** panes in the Google Cloud Storage Connector page. The components of the other panes in this page, **Scheduling** and **Name & Describe Your DataSet**, are universal across most connector types and are discussed in greater length in [Adding a DataSet Using a Data Connector](/s/article/360042926274 "Adding a DataSet Using a Data Connector").


### Credentials Pane


The Domo Google Cloud Storage connector uses OAuth to connect, so there is no need to enter credentials within Domo. Click **Connect** (or select **Add Account** if you have existing Google accounts in Domo) to open the Google OAuth screen where you can select the account you want to connect to. After selecting an account, you are asked for the password for that account. Once you have entered a valid password, you can use the same account any time you go to create a new Google Cloud Storage DataSet. You can manage connector accounts in the **Accounts** tab in the Data Center. For more information about this tab, see [Managing User Accounts for Connectors](/s/article/360042926054 "Managing User Accounts for Connectors").




 


**Note:** If you are already logged into Google when you connect in Domo, you are authenticated automatically when you click **Add account**. If you want to connect to an account that is different from the one you are logged into, you must first log out of the currently active Google account.



### Details Pane


This pane contains a primary **Report**menu, along with various other menus which may or may not appear depending on the report type you select.




| Menu | Description |
| --- | --- |
| Storage Type | Select whether the data you want to pull comes from a project or a bucket. |
| Report | Select a Google Cloud Storage report. The following reports are available:

|  |  |
| --- | --- |
| Bucket Details | Returns details about the specified bucket. |
| List Buckets (only available when **Projects** is selected as your **Storage Type**) | Returns the list of buckets in the specified project. |
| List Objects | Returns the list of objects in the specified bucket. |
| Get Object | Lets you locate a specific bucket object to pull into Domo. |

 |
| Project ID | Enter the API ID of the project you want to retrieve data for. |
| Projection | Select the desired projection type, either **No ACL** or **Full**. |
| Prefix | Enter the prefix of the Object or Bucket name you want to retrieve data for. For example, if the Bucket name was "API-Bucket," you would enter API as the prefix. (The prefix is case-sensitive.) |
| Versions | Select **True** if you want object versions to appear as results in your DataSet; otherwise select **False**. |
| Bucket Name | Enter the name of the bucket containing the object you want to pull into Domo. |
| Object Name | Enter the name of the object you want to pull into Domo. You can enter full names or regular expressions. You select the desired match type in the  **Match Type** menu. |
| Match Type | Select how you want to search for the object you've entered in **Object Name**.* Select **Object name contains the specified string** if you want to search for all objects containing the specified object name.
* Select **Object name starts with the specified string** if you want to search only for objects starting with the string.
* Select **Object name with regular expression** if you entered a regular expression in the **Object Name** field.
 |
| File Type | Select the file type for the object you want to pull into Domo. |
| Contains Header Row? | Select **Yes** if the CSV file you are pulling into Domo contains a header row. If you select **No**, a header row will be generated in the new DataSet. |
| Select the Delimiting Character | Select the delimiter for your CSV file. |
| File Name from Zip File | Select the ZIP file you want to pull into Domo. |


### Other Panes


For information about the remaining sections of the connector interface, including how to configure scheduling, retry, and update options, see [Adding a DataSet Using a Data Connector](/s/article/360042926274 "Adding a DataSet Using a Data Connector").


 Troubleshooting
----------------


* Check that you have the file name right and that you are matching on either a "starts with" or "contains."
* Ensure you have the right permissions with the project to get to the bucket you're interested in.
