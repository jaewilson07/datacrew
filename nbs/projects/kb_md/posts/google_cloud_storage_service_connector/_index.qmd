---
title: Google Cloud Storage Service Connector
url: https://domo-support.domo.com/s/article/360042928774
linked_kbs:  ['[https://domo-support.domo.com/s/knowledge-base/](https://domo-support.domo.com/s/knowledge-base/)', '[https://domo-support.domo.com/s/](https://domo-support.domo.com/s/)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZammGAC](https://domo-support.domo.com/s/topic/0TO5w000000ZammGAC)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZanLGAS](https://domo-support.domo.com/s/topic/0TO5w000000ZanLGAS)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS](https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS)', '[https://domo-support.domo.com/s/article/360042926274](https://domo-support.domo.com/s/article/360042926274)', '[https://domo-support.domo.com/s/article/360042926054](https://domo-support.domo.com/s/article/360042926054)', '[https://domo-support.domo.com/s/article/360042928774](https://domo-support.domo.com/s/article/360042928774)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS/api-connectors](https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS/api-connectors)', '[https://domo-support.domo.com/s/article/360043429933](https://domo-support.domo.com/s/article/360043429933)', '[https://domo-support.domo.com/s/article/360043429953](https://domo-support.domo.com/s/article/360043429953)', '[https://domo-support.domo.com/s/article/360042925494](https://domo-support.domo.com/s/article/360042925494)', '[https://domo-support.domo.com/s/article/360043429913](https://domo-support.domo.com/s/article/360043429913)', '[https://domo-support.domo.com/s/article/4408174643607](https://domo-support.domo.com/s/article/4408174643607)', '[https://domo-support.domo.com/s/login/](https://domo-support.domo.com/s/login/)']
article_id: 000003581
views: 2,176
created_date: 2022-10-24 21:13:00
last updated: 2022-10-24 22:41:00
---





 


****Important:****Due to Google’s change in allowing Domo connectors to use OAuth authentication, all users must now use service account key authentication to create new data connections. To create new Google Cloud Storage DataSets, use this connector. All pre-existing Google Cloud Storage DataSets will continue to run normally. 



Intro
-----


Google Cloud Storage is an Internet service used to store data in Google's cloud. You can use Domo's Google Cloud Storage Service connector to get data about project buckets and objects in Google Cloud Storage. Buckets are general locations and destination for files to be stored. Projects organize the resources and permissions. Most people will use this connector to connect to the buckets that store their data.


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
| **Ease of Use (on a 1-to-10 scale with 1 being easiest)** | 4 |


Prerequisites
-------------


To connect to a Google service account, you must have a Google service account JSON key. To generate a key, do the following:


1. In the GCP Console, open the ********IAM & Admin******** page.
2. Click ****************Service accounts**************** in the left-hand navigation pane.
3. Select your project and click ****************Open****************.
4. Click ****************Create Service Account****************.
5. Enter a name and description for the service account.
6. Click ****************Create****************.
7. Select ****************Project Owner****************.
8. Click ****************Continue****************.
9. Click ****************Create key****************.
10. Select ****************JSON**************** as the key type.
11. Click ****************Create****************.


A private key will be saved to your computer.    


Connecting to a Google Service Account
--------------------------------------


This section enumerates the options in the **Credentials** and **Details** panes in the Google Cloud Storage Service Connector page. The components of the other panes in this page, **Scheduling** and **Name & Describe Your DataSet**, are universal across most connector types and are discussed in greater length in [Adding a DataSet Using a Data Connector](/s/article/360042926274 "Adding a DataSet Using a Data Connector").


### Credentials Pane


This pane contains fields for entering credentials to connect to a Google service account. The following table describes what is needed for each field:




| Field | Description |
| --- | --- |
| Service Account Key JSON | Copy and paste the JSON for your Google service account key. For information about creating a key, see "Prerequisites," above. |


Once you have entered a valid key, you can use the same account any time you go to create a new Google Cloud Service DataSet. You can manage connector accounts in the ****************Accounts**************** tab in the Data Center. For more information about this tab, see [Managing User Accounts for Connectors](/s/article/360042926054 "Managing User Accounts for Connectors").


### Details Pane


This pane contains a primary **Report**menu, along with various other menus which may or may not appear depending on the report type you select.




| Menu | Description |
| --- | --- |
| Report | Select a Google Cloud Storage report. The following reports are available:

|  |  |
| --- | --- |
| List Buckets | Returns the list of buckets in the project associated with the authenticated service account. |
| List Objects | Returns data about the objects in the specified bucket. |
| Import All Objects | Lets you import a CSV object or a CSV file that is inside of all objects. |
| Import Multiple Objects | Lets you import a CSV object or a CSV file that is inside of the ZIP/GZIP objects. |
| Import Object | Lets you import a CSV object or a CSV file inside of a ZIP/GZIP object. |

 |
| Bucket Name | Enter the name of the bucket containing the object you want to pull into Domo. |
| Object Name | Enter the name of the object you want to pull into Domo.  |
| Contains Header Row? | Select **Yes** if the CSV file you are pulling into Domo contains a header row. If you select **No**, a header row will be generated in the new DataSet. |
| Object's File Type | Select the file type for the object you want to pull into Domo. |
| File Name from Zip File | Select the ZIP file you want to pull into Domo. |
| Delimiter | Select the delimiter for your CSV file. If your delimiter is not listed, select **Other**. |
| Custom Delimiter | Enter the character used to delimit your CSV text. |


### Other Panes


For information about the remaining sections of the connector interface, including how to configure scheduling, retry, and update options, see [Adding a DataSet Using a Data Connector](/s/article/360042926274 "Adding a DataSet Using a Data Connector").


 Troubleshooting
----------------


Ensure you have the right permissions with the project to get to the bucket you're interested in.

