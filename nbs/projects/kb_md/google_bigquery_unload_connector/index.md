---
title: Google BigQuery Unload Connector
url: https://domo-support.domo.com/s/article/360042928754
linked_kbs:  ['[https://domo-support.domo.com/s/knowledge-base/](https://domo-support.domo.com/s/knowledge-base/)', '[https://domo-support.domo.com/s/](https://domo-support.domo.com/s/)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZammGAC](https://domo-support.domo.com/s/topic/0TO5w000000ZammGAC)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZanLGAS](https://domo-support.domo.com/s/topic/0TO5w000000ZanLGAS)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS](https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS)', '[https://domo-support.domo.com/s/article/360042926274](https://domo-support.domo.com/s/article/360042926274)', '[https://domo-support.domo.com/s/article/360042926054](https://domo-support.domo.com/s/article/360042926054)', '[https://domo-support.domo.com/s/article/360042928754](https://domo-support.domo.com/s/article/360042928754)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS/api-connectors](https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS/api-connectors)', '[https://domo-support.domo.com/s/article/360043429933](https://domo-support.domo.com/s/article/360043429933)', '[https://domo-support.domo.com/s/article/360043429953](https://domo-support.domo.com/s/article/360043429953)', '[https://domo-support.domo.com/s/article/360042925494](https://domo-support.domo.com/s/article/360042925494)', '[https://domo-support.domo.com/s/article/360043429913](https://domo-support.domo.com/s/article/360043429913)', '[https://domo-support.domo.com/s/article/4408174643607](https://domo-support.domo.com/s/article/4408174643607)', '[https://domo-support.domo.com/s/login/](https://domo-support.domo.com/s/login/)']
article_id: 000003587
views: 2,140
created_date: 2022-10-24 21:13:00
last updated: 2022-10-24 22:41:00
---



Intro
-----


BigQuery is a data platform to create, manage, share and query data. Domo's BigQuery Unload connector lets you bring in larger results from BigQuery through the assistance of the Google Cloud Storage service. To learn more about the BigQuery API, go to <https://cloud.google.com/bigquery/docs/reference/v2/>.


The Google BigQuery Unload connector is a "Cloud App" connector, meaning it retrieves data stored in the cloud. In the Data Center, you can access the connector page for this and other Cloud App connectors by clicking ****Cloud App**** in the toolbar at the top of the window.


This topic discusses the fields and menus that are specific to the Google BigQuery Unload connector user interface. For general information about adding DataSets, setting update schedules, and editing DataSet information, see [Adding a DataSet Using a Data Connector](/s/article/360042926274 "Adding a DataSet Using a Data Connector").


Prerequisites
-------------


To connect to BigQuery and create a DataSet, you must have the following:


* A JSON BigQuery service account key
* A JSON Google Cloud Storage service account key
* A Domo client ID
* A Domo client secret


To generate the necessary service account keys, do the following:


1. In the GCP Console, open the IAM & Admin page.
2. Click ****Service accounts**** in the left-hand navigation pane.
3. Select your project and click ****Open****.
4. Click ****Create Service Account****.
5. Enter a name and description for the service account.
6. Click ****Create****.
7. Select ****Project Owner****.
8. Click ****Continue****.
9. Click ****Create key****.
10. Select ****JSON**** as the key type.
11. Click ****Create****.


A private key will be saved to your computer.


To create a Domo client ID and client secret, do the following:


1. Navigate to [https://developer.domo.com](https://developer.domo.com/ "https://developer.domo.com") and log in.
2. Click ****New Client**** (found under "My Account" in the top right corner).
3. Create a new client with Application Scopes of ****Data**** and ****User****.  
   
 When you click ****Create****, you will be redirected to the client ID and client secret.
4. Copy the client ID and client secret, as you will need them soon.


Connecting to BigQuery
----------------------


This section enumerates the options in the **Credentials** and **Details** panes in the Google BigQuery Unload Connector page. The components of the other panes in this page, **Scheduling** and **Name & Describe Your DataSet**, are universal across most connector types and are discussed in greater length in [Adding a DataSet Using a Data Connector](/s/article/360042926274 "Adding a DataSet Using a Data Connector").


### Credentials Pane


This pane contains fields for entering credentials to connect to your (third-party tool) account. The following table describes what is needed for each field:  




| Field | Description |
| --- | --- |
| Service Account Key JSON BigQuery | Enter your Google BigQuery JSON service account key. |
| Service Account Key JSON Google Cloud Storage | Enter your Google Cloud Storage JSON service account key. |
| Domo Client ID | Enter your Domo client ID. |
| Domo Client Secret | Enter your Domo client secret. |


For information about obtaining these credentials, see "Prerequsites," above.


Once you have entered valid credentials, you can use the same account any time you go to create a new Google BigQuery Unload DataSet. You can manage connector accounts in the **Accounts** tab in the Data Center. For more information about this tab, see [Managing User Accounts for Connectors](/s/article/360042926054 "Managing User Accounts for Connectors").


### Details Pane


This pane contains a primary **Reports** menu, along with various other menus which may or may not appear depending on the report type you select.




| Menu | Description |
| --- | --- |
| Report | Select the report you want to run. The following reports are available:

|  |  |
| --- | --- |
| Enter Query Manually | Lets you manually enter a BigQuery SQL query to pull in the desired data. |
| Generate Query | Retrieves data based on a selected table. |

 |
| DataSet ID | Select the DataSet ID (GUID) for the DataSet you want to copy your table data into. You can find the ID by opening the details view for the DataSet in the Data Center and looking at the portion of the URL following datasources/. For example, in the URL [https://mycompany.domo.com/datasourc...tails/overview](https://mycompany.domo.com/datasources/845305d8-da3d-4107-a9d6-13ef3f86d4a4/details/overview "https://mycompany.domo.com/datasources/845305d8-da3d-4107-a9d6-13ef3f86d4a4/details/overview"), the DataSet ID is 845305d8-da3d-4107-a9d6-13ef3f86d4a4. |
| Table ID | Select the ID for the table you want to copy. |
| Query | Enter the BigQuery SQL query you want to execute. Only standard SQL syntax is supported. |
| Bucket | Select the desired Google Cloud Storage bucket. |
| Dimension Fields (Optional) | Enter a comma-separated list of fields that need to be treated as dimensions in Domo. |


### Other Panes


For information about the remaining sections of the connector interface, including how to configure scheduling, retry, and update options, see [Adding a DataSet Using a Data Connector](/s/article/360042926274 "Adding a DataSet Using a Data Connector").

