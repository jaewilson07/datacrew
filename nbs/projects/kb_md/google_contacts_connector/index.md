---
title: Google Contacts Connector
url: https://domo-support.domo.com/s/article/360043435173
linked_kbs:  ['[https://domo-support.domo.com/s/knowledge-base/](https://domo-support.domo.com/s/knowledge-base/)', '[https://domo-support.domo.com/s/](https://domo-support.domo.com/s/)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZammGAC](https://domo-support.domo.com/s/topic/0TO5w000000ZammGAC)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZanLGAS](https://domo-support.domo.com/s/topic/0TO5w000000ZanLGAS)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS](https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS)', '[https://domo-support.domo.com/s/article/360042928734](https://domo-support.domo.com/s/article/360042928734)', '[https://domo-support.domo.com/s/article/360043431293](https://domo-support.domo.com/s/article/360043431293)', '[https://domo-support.domo.com/s/article/360042926694](https://domo-support.domo.com/s/article/360042926694)', '[https://domo-support.domo.com/s/article/360043433313](https://domo-support.domo.com/s/article/360043433313)', '[https://domo-support.domo.com/s/article/360043435173](https://domo-support.domo.com/s/article/360043435173)', '[https://domo-support.domo.com/s/article/360043436613](https://domo-support.domo.com/s/article/360043436613)', '[https://domo-support.domo.com/s/article/360042930594](https://domo-support.domo.com/s/article/360042930594)', '[https://domo-support.domo.com/s/article/360042928714](https://domo-support.domo.com/s/article/360042928714)', '[https://domo-support.domo.com/s/article/360043436593](https://domo-support.domo.com/s/article/360043436593)', '[https://domo-support.domo.com/s/article/360043431253](https://domo-support.domo.com/s/article/360043431253)', '[https://domo-support.domo.com/s/article/360042932014](https://domo-support.domo.com/s/article/360042932014)', '[https://domo-support.domo.com/s/article/360042928774](https://domo-support.domo.com/s/article/360042928774)', '[https://domo-support.domo.com/s/article/360042930574](https://domo-support.domo.com/s/article/360042930574)', '[https://domo-support.domo.com/s/article/360043435193](https://domo-support.domo.com/s/article/360043435193)', '[https://domo-support.domo.com/s/article/360043433273](https://domo-support.domo.com/s/article/360043433273)', '[https://domo-support.domo.com/s/article/360042926274](https://domo-support.domo.com/s/article/360042926274)', '[https://domo-support.domo.com/s/article/360042926054](https://domo-support.domo.com/s/article/360042926054)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS/api-connectors](https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS/api-connectors)', '[https://domo-support.domo.com/s/article/360043429933](https://domo-support.domo.com/s/article/360043429933)', '[https://domo-support.domo.com/s/article/360043429953](https://domo-support.domo.com/s/article/360043429953)', '[https://domo-support.domo.com/s/article/360042925494](https://domo-support.domo.com/s/article/360042925494)', '[https://domo-support.domo.com/s/article/360043429913](https://domo-support.domo.com/s/article/360043429913)', '[https://domo-support.domo.com/s/article/4408174643607](https://domo-support.domo.com/s/article/4408174643607)', '[https://domo-support.domo.com/s/login/](https://domo-support.domo.com/s/login/)']
article_id: 000003403
views: 2,120
created_date: 2022-10-24 21:12:00
last updated: 2022-10-24 22:39:00
---





 


**Important:**Due to Google’s change in allowing Domo connectors to use OAuth authentication, all users must now use service account key authentication to create new data connections. All pre-existing DataSets will continue to run normally. Current Connectors that rely on Google OAuth authentication will no longer be able to power up new DataSets. These connectors include the following:
* [Google BigQuery](/s/article/360042928734 "Google BigQuery Connector")
* [Google Adwords via Google BigQuery](/s/article/360043431293 "Google AdWords via Google BigQuery Connector")
* [DoubleClick Campaign Manager via Google Cloud Storage (DTV2)](/s/article/360042926694 "DoubleClick Campaign Manager via Google Cloud Storage (DTV2) Connector")
* [Google Cloud Storage](/s/article/360043433313 "Google Cloud Storage Connector")
* [Google Contacts](/s/article/360043435173 "Google Contacts Connector")
* [Google Drive](/s/article/360043436613 "Google Drive Connector")
* [Google Gmail](/s/article/360042930594 "Google Gmail Connector")
* [Google Admin SDK Reports](/s/article/360042928714 "Google Admin SDK Reports Connector")


If you need to change a pre-existing Google OAuth DataSet, please use the corresponding Service Account connector. The following Service Account connectors are now available:


* [Google BigQuery Service](/s/article/360043436593 "Google BigQuery Service Connector")
* [Google Ads (fomerly AdWords) via Google BigQuery Service](/s/article/360043431253 "Google Ads via Google BigQuery Service Connector")
* [Google Drive Service](/s/article/360042932014 "Google Drive Service Connector")
* [Google Cloud Storage Service](/s/article/360042928774 "Google Cloud Storage Service Connector")
* [Google Contacts Service](/s/article/360042930574 "Google Contacts Service Connector")
* [Google Gmail Service](/s/article/360043435193 "Google Gmail Service Connector")
* [Google Contacts Service](/s/article/360042930574 "Google Contacts Service Connector")
* [Google Gmail Service](/s/article/360043435193 "Google Gmail Service Connector")
* [Google Admin SDK Reports Service](/s/article/360043433273 "Google Admin SDK Reports Service Connector")


All other equivalent Google Service Account connectors are currently in development. Domo will communicate when these connectors become available. You will need to look for the Service Account equivalent connector in Data Center or the App Store and use that connector to get their data.  
   
 Domo recommends that you proactively repower existing Google connections by creating new DataSets utilizing the new Service Account Key connectors as the connectors become available.  Domo will notify you if any further migration changes should arise.  






Intro
-----


Google Contacts is an online address book that integrates with other Google products such as Gmail, Google Calendar, and Google Drive. To learn more about the Google Contacts API, visit their page ([https://developers.google.com/google...s/contacts/v3/](https://developers.google.com/google-apps/contacts/v3/ "https://developers.google.com/google-apps/contacts/v3/")).  


You connect to your Google account in the Data Center. This topic discusses the fields and menus that are specific to the Google Contacts connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in [Adding a DataSet Using a Data Connector](/s/article/360042926274).


Prerequisites
-------------


To connect to your Google account and create a DataSet, you must have the username and password for your account.


Connecting to Your Google Contacts Account
------------------------------------------


This section enumerates the options in the **Credentials** and **Details** panes in the Google Contacts Connector page. The components of the other panes in this page, **Scheduling**and **Name & Describe Your DataSet,** are universal across most connector types and are discussed in greater length in [Adding a DataSet Using a Data Connector](/s/article/360042926274).


### Credentials Pane


The Domo Google Contacts connector uses OAuth to connect, so there is no need to enter credentials within Domo. Click **Connect** (or select **Add Account** if you have existing Google Contacts accounts in Domo) to open the Google OAuth screen where you can enter your Google credentials. Once you have entered valid Google credentials, you can use the same account any time you go to create a new Google Contacts DataSet. You can manage connector accounts in the **Accounts** tab in the Data Center. For more information about this tab, see [Managing User Accounts for Connectors](/s/article/360042926054 "Managing User Accounts for Connectors").




 


**Note:** If you are already logged into Google when you connect in Domo, you are authenticated automatically when you click **Add account**. If you want to connect to an account that is different from the one you are logged into, you must first log out of Google.



### Details Pane


This pane contains a primary menu from which you select your desired Google Contacts report type.




| Menu | Description |
| --- | --- |
| Report | Select the Google Contacts report you want to run. The following reports are available:

|  |  |
| --- | --- |
| Contacts | Retrieves your list of contacts from Google. |
| Groups | Retrieves your list of contact groups from Google. |

 |


### Other Panes


For information about the remaining sections of the connector interface, including how to configure scheduling, retry, and update options, see [Adding a DataSet Using a Data Connector](/s/article/360042926274).

