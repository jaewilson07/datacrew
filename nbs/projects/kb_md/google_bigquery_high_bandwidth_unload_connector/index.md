---
title: Google BigQuery High Bandwidth Unload Connector
url: https://domo-support.domo.com/s/article/4407975319959
linked_kbs:  ['[https://domo-support.domo.com/s/knowledge-base/](https://domo-support.domo.com/s/knowledge-base/)', '[https://domo-support.domo.com/s/](https://domo-support.domo.com/s/)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZammGAC](https://domo-support.domo.com/s/topic/0TO5w000000ZammGAC)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZanLGAS](https://domo-support.domo.com/s/topic/0TO5w000000ZanLGAS)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS](https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS)', '[https://domo-support.domo.com/s/article/360042926274](https://domo-support.domo.com/s/article/360042926274)', '[https://domo-support.domo.com/s/article/360042926054](https://domo-support.domo.com/s/article/360042926054)', '[https://domo-support.domo.com/s/article/4407975319959](https://domo-support.domo.com/s/article/4407975319959)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS/api-connectors](https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS/api-connectors)', '[https://domo-support.domo.com/s/article/360043429933](https://domo-support.domo.com/s/article/360043429933)', '[https://domo-support.domo.com/s/article/360043429953](https://domo-support.domo.com/s/article/360043429953)', '[https://domo-support.domo.com/s/article/360042925494](https://domo-support.domo.com/s/article/360042925494)', '[https://domo-support.domo.com/s/article/360043429913](https://domo-support.domo.com/s/article/360043429913)', '[https://domo-support.domo.com/s/article/4408174643607](https://domo-support.domo.com/s/article/4408174643607)', '[https://domo-support.domo.com/s/login/](https://domo-support.domo.com/s/login/)']
article_id: 000003213
views: 2,126
created_date: 2022-10-24 21:11:00
last updated: 2022-10-24 22:39:00
---




Intro
------


Google BigQuery is a server-less, highly scalable, and cost-effective cloud data warehouse designed to create, manage, share, and query data. It's a cloud-based big data analytics web service for processing very large read-only data sets. With this connector you can unload larger results from BigQuery through the assistance of the Google Cloud Storage service. Google BigQuery queries are written using a variation of the standard SQL SELECT statement. To learn more about the BigQuery API, go to <https://cloud.google.com/bigquery/docs/reference/v2/>.


The Google BigQuery High Bandwidth Unload Connector is a "Cloud App" connector, meaning it retrieves data stored in the cloud. In the Data Center, you can access the connector page for this and other Cloud App connectors by clicking **Cloud App** in the toolbar at the top of the window.


This topic discusses the fields and menus that are specific to the Google BigQuery High Bandwidth Unload Connector user interface. For general information about adding DataSets, setting update schedules, and editing DataSet information, see [Adding a DataSet Using a Data Connector](/s/article/360042926274 "Adding a DataSet Using a Data Connector").


Prerequisites
-------------


To connect to a BigQuery High Bandwidth account, you must have the following:


* A Google BigQuery service account JSON key
* A Google Cloud Storage service account JSON key


####  To generate a Google BigQuery service account JSON key, do the following:


1. In the [Google Cloud Platform Console](https://console.cloud.google.com/), open the **IAM & Admin** page.
2. Click **Service accounts** in the left-hand navigation pane.
3. Select your project and click **Open**.
4. Click **Create Service Account**.
5. In the Create service account pane, enter a name and description for the service account, and click **Create and continue**.
6. In the **Grant this service account access to the project**section, select **Project > Owner** from the **Select a role** dropdown.
7. Click **Done**.







**Note:** You may need the “BigQuery Admin” role in the service account permissions dialog. Please consult with your Google administrator for additional guidance.
8. To create a new JSON key, in the **Service accounts** pane, click the three dots (expansion menu) and select **Manage keys**.
9. In the **Keys** section, click **Add Key > Create new key**.
10. Select **JSON** as the key type and click **Create**.
11. Click **Create**.


A private key will be saved to your computer.


Connecting to BigQuery
----------------------


This section enumerates the options in the Credentials and Details panes in the Google BigQuery Service Connector page. The components of the other panes in this page, **Scheduling** and **Name & Describe Your DataSet**, are universal across most connector types and are discussed in greater length in [Adding a DataSet Using a Data Connector](/s/article/360042926274 "Adding a DataSet Using a Data Connector").


### Credentials Pane


This pane contains fields for entering credentials to connect to your BigQuery account. The following table describes what is needed for each field:




| Field | Description |
| --- | --- |
| Service Account Key JSON BigQuery | Copy and paste the JSON for your BigQuery service account key.  |
| Service Account Key JSON Google Cloud Storage | Copy and paste the JSON for your Google Cloud Storage account key. |


Once you have entered valid keys, you can use the same account any time you go to create a new Google BigQuery High Bandwidth Unload DataSet. You can manage connector accounts in the **Accounts** tab in the Data Center. For more information about this tab, see [Managing User Accounts for Connectors](/s/article/360042926054 "Managing User Accounts for Connectors").


### Details Pane


This pane contains a number of fields and menus you can use to configure your report.




| Menu | Description |
| --- | --- |
| How would you like to import data into Domo? | 

|  |  |
| --- | --- |
| **Import Type** | **Description** |
| Standard Update | To use standard update, select the Replace or Append mode in the scheduling section. |
| Use Partitions | To use partition update, select the Append mode in the scheduling section. |
| Use Upsert | To use upsert update, select the Merge mode in the scheduling section. |

 |
| Project ID | Select the Google project Id obtained from the service key. |
| Google BigQuery Dataset ID | Select the BigQuery dataset id for your data. For more information about BigQuery datasets, see [Introduction to DataSets](https://cloud.google.com/bigquery/docs/datasets-intro).  |
| Google Cloud Storage Bucket Name | Select the Google Cloud Storage bucket name that will be used for temporary storage as we transfer your data into Domo. |
| Query | Enter a query to execute. Only StandardSQL query is supported. |
| How would you like to perform your partition? | Select whether you want to perform partition by date or by meta query. |
| Partition Meta Query to determine partition tags | Enter partition query to determine the distinct partition tags. |
| Partition Column Name | Enter partition column name. |
| Days Back | The number of days back that you would like to get data. Specify 7 to get data for the last 7 days. |
| Upsert Key Column(s) | Enter upsert key column name or a comma separated list of upsert key column names. **This is Required only when the Update method is Merge**. |


### Other Panes


For information about the remaining sections of the connector interface, including how to configure scheduling, retry, and update options, see [Adding a DataSet Using a Data Connector](/s/article/360042926274).


Troubleshooting
---------------


* Ensure that the credentials have the proper access to the query the tables needed.
* Make sure the queries are correct and calling the correctly named data sources.
