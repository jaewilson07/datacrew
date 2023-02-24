---
title: Google Ads via Google BigQuery Connector
url: https://domo-support.domo.com/s/article/360043431293
linked_kbs:  ['[https://domo-support.domo.com/s/knowledge-base/](https://domo-support.domo.com/s/knowledge-base/)', '[https://domo-support.domo.com/s/](https://domo-support.domo.com/s/)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZammGAC](https://domo-support.domo.com/s/topic/0TO5w000000ZammGAC)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZanLGAS](https://domo-support.domo.com/s/topic/0TO5w000000ZanLGAS)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS](https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS)', '[https://domo-support.domo.com/s/article/360042928734](https://domo-support.domo.com/s/article/360042928734)', '[https://domo-support.domo.com/s/article/360043431293](https://domo-support.domo.com/s/article/360043431293)', '[https://domo-support.domo.com/s/article/360042926694](https://domo-support.domo.com/s/article/360042926694)', '[https://domo-support.domo.com/s/article/360043433313](https://domo-support.domo.com/s/article/360043433313)', '[https://domo-support.domo.com/s/article/360043435173](https://domo-support.domo.com/s/article/360043435173)', '[https://domo-support.domo.com/s/article/360043436613](https://domo-support.domo.com/s/article/360043436613)', '[https://domo-support.domo.com/s/article/360042930594](https://domo-support.domo.com/s/article/360042930594)', '[https://domo-support.domo.com/s/article/360042928714](https://domo-support.domo.com/s/article/360042928714)', '[https://domo-support.domo.com/s/article/360043436593](https://domo-support.domo.com/s/article/360043436593)', '[https://domo-support.domo.com/s/article/360043431253](https://domo-support.domo.com/s/article/360043431253)', '[https://domo-support.domo.com/s/article/360042932014](https://domo-support.domo.com/s/article/360042932014)', '[https://domo-support.domo.com/s/article/360042928774](https://domo-support.domo.com/s/article/360042928774)', '[https://domo-support.domo.com/s/article/360042930574](https://domo-support.domo.com/s/article/360042930574)', '[https://domo-support.domo.com/s/article/360043435193](https://domo-support.domo.com/s/article/360043435193)', '[https://domo-support.domo.com/s/article/360043433273](https://domo-support.domo.com/s/article/360043433273)', '[https://domo-support.domo.com/s/article/360042926274](https://domo-support.domo.com/s/article/360042926274)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS/api-connectors](https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS/api-connectors)', '[https://domo-support.domo.com/s/article/360043429933](https://domo-support.domo.com/s/article/360043429933)', '[https://domo-support.domo.com/s/article/360043429953](https://domo-support.domo.com/s/article/360043429953)', '[https://domo-support.domo.com/s/article/360042925494](https://domo-support.domo.com/s/article/360042925494)', '[https://domo-support.domo.com/s/article/360043429913](https://domo-support.domo.com/s/article/360043429913)', '[https://domo-support.domo.com/s/article/4408174643607](https://domo-support.domo.com/s/article/4408174643607)', '[https://domo-support.domo.com/s/login/](https://domo-support.domo.com/s/login/)']
article_id: 000003763
views: 2,173
created_date: 2022-10-24 21:14:00
last updated: 2022-10-24 22:40:00
---





 


**Important:**Due to Google’s change in allowing Domo connectors to use OAuth authentication, all users must now use service account key authentication to create new data connections. All pre-existing DataSets will continue to run normally. Current Connectors that rely on Google OAuth authentication will no longer be able to power up new DataSets. These connectors include the following:
* [Google BigQuery](/s/article/360042928734 "Google BigQuery Connector")
* [Google Ads via Google BigQuery](/s/article/360043431293 "Google AdWords via Google BigQuery Connector")
* [DoubleClick Campaign Manager via Google Cloud Storage (DTV2)](/s/article/360042926694 "DoubleClick Campaign Manager via Google Cloud Storage (DTV2) Connector")
* [Google Cloud Storage](/s/article/360043433313 "Google Cloud Storage Connector")
* [Google Contacts](/s/article/360043435173 "Google Contacts Connector")
* [Google Drive](/s/article/360043436613 "Google Drive Connector")
* [Google Gmail](/s/article/360042930594 "Google Gmail Connector")
* [Google Admin SDK Reports](/s/article/360042928714 "Google Admin SDK Reports Connector")


If you need to change a pre-existing Google OAuth DataSet, please use the corresponding Service Account connector. The following Service Account connectors are now available:


* [Google BigQuery Service](/s/article/360043436593 "Google BigQuery Service Connector")
* [Google Ads (formerly AdWords) via Google BigQuery Service](/s/article/360043431253 "Google Ads via Google BigQuery Service Connector")
* [Google Drive Service](/s/article/360042932014 "Google Drive Service Connector")
* [Google Cloud Storage Service](/s/article/360042928774 "Google Cloud Storage Service Connector")
* [Google Contacts Service](/s/article/360042930574 "Google Contacts Service Connector")
* [Google Gmail Service](/s/article/360043435193 "Google Gmail Service Connector")
* [Google Admin SDK Reports Service](/s/article/360043433273 "Google Admin SDK Reports Service Connector")


All other equivalent Google Service Account connectors are currently in development. Domo will communicate when these connectors become available. You will need to look for the Service Account equivalent connector in Data Center or the App Store and use that connector to get their data.  
   
 Domo recommends that you proactively repower existing Google connections by creating new DataSets utilizing the new Service Account Key connectors as the connectors become available.  Domo will notify you if any further migration changes should arise.  






Intro
-----


Google Ads is an online advertising service. Use Domo's Google Ads via BigQuery connector to transfer and pull data from a specific project into Domo. To successfully configure this connector, you must first configure a Google BigQuery script within your Google Ads account. The steps for doing this are provided later in this article.  


For more information about the Ads API, see [https://developers.google.com/adword...s/guides/start](https://developers.google.com/adwords/api/docs/guides/start "https://developers.google.com/adwords/api/docs/guides/start"). 


This topic discusses the fields and menus that are specific to the Google Ads via Google BigQuery connector user interface. For general information about adding DataSets, setting update schedules, and editing DataSet information, see [Adding a DataSet Using a Data Connector](/s/article/360042926274 "Adding a DataSet Using a Data Connector").


Prerequisites
-------------


To connect to Ads data using this connector, you must have your Google credentials (email address and password). After you authenticate using your credentials, you must configure a BigQuery script within your Ads account using the script provided in the **Details** pane for the connector. You must do this *before* you run the connector.  




 


**Notes:**


* Do not use a Manager account.
* Ensure that a project is already set up and Billing is activated for that project. (Note that this may mean you will become subject to other charges based on your BigQuery contract.)






### Configuring a BigQuery Script in Google Ads


This section explains how to configure a BigQuery script in Google Ads. After you have configured the script, you should be able to use the connector to pull in data just as you would any other connector. 


**To configure a BigQuery script in Google Ads,**


1. Open the Google Ads via Google BigQuery connector page in Domo.
2. Authenticate to Google using your Google credentials.
3. Scroll to the bottom of the **Details**pane.
4. Copy the script from the **Script** box.
5. Now, sign into your account in Google Ads.
6. Make sure to switch your account to the **Expert Mode** by clicking the wrench (**Settings**) icon in the top right corner of the screen.  
  
![Expert_Mode.png](Expert_Mode.png)
7. Click the wrench (**Tools & Settings**) icon in the top right corner of the screen to expand the menu.
8. Click **Scripts** under "Bulk Actions".  
  
![Scripts-Bulk_Actions.png](Scripts-Bulk_Actions.png)
9. Click the plus button to create a new script.  
  
![Add_Script__.png](Add_Script__.png)


10. Provide a name for the script in the "script name" area and click **Authorize**.  
  
![Script_name-Authorise.png](Script_name-Authorise.png)


11. Select **Advanced APIs**.


12. Check the **Bigquery** box and click **Save**.


![Advanced_APIs-BigQuery.png](Advanced_APIs-BigQuery.png)


13. Now, paste the script you copied in step 4 into the script text box.




 


**Note:**Scripts make changes on a user's behalf. You must authorize scripts before they can make any changes.






14. Click **Preview** button at the bottom right corner of the screen. 


15. (Conditional) If any error messages appear after you preview, follow their instructions. For example, you may be prompted to click on another link to authorize BigQuery or reauthorize. 


16. Click **Run** when your configuration is successful.


17. Google Ads now takes you to the **Script History** section where you can view your script details.


![Script_History.png](Script_History.png)


18. Now, click on **Scripts** to switch to the scripts section to set up how often your script runs.


19. Click the pencil icon under "Frequency."


![Script_Edit_Frequency.png](Script_Edit_Frequency.png)


20. Set the schedule for your script.


![Script_Set_Frequency.png](Script_Set_Frequency.png)  
   
 21. Now, return to the Google Ads via BigQuery connector page in Domo and continue configuring the connector.  


Connecting to Google Ads via Google BigQuery
--------------------------------------------


This section enumerates the options in the **Credentials** and **Details** panes in the Google Ads via BigQuery Connector page. The components of the other panes in this page, **Scheduling** and **Name & Describe Your DataSet**, are universal across most connector types and are discussed in greater length in [Adding a DataSet Using a Data Connector](https://domohelp.domo.com/Connect/Connecting_to_Data_with_Connectors/General_Guide_to_Connecting_with_Connectors/01Adding_a_DataSet_Using_a_Data_Connector "Adding a DataSet Using a Data Connector").


### Credentials Pane


The Domo Google Ads via BigQuery connector uses OAuth to connect to Google. Click **Connect** (or select **Add Account** if you have existing Google Ads via BigQuery accounts in Domo) to open the Google OAuth screen where you can select the account you want to connect to. After selecting an account, specify the password for that account. After you have entered a valid password, you can use the same account in Domo any time you create a Google Ads via BigQuery DataSet. You can manage connector accounts in the **Accounts** tab in the Data Center. For more information about this tab, see [Managing User Accounts for Connectors](https://domohelp.domo.com/Connect/Managing_DataSets/02Managing_User_Accounts_for_Connectors "Managing User Accounts for Connectors").




 


**Note:** If you are already logged into Google when you connect in Domo, you are authenticated automatically when you click **Add account**. If you want to connect to an account that is different from the one you are logged into, you must first log out of the currently active Google account.



### Details Pane


This pane contains a number of fields and menus you can use to configure your report.




| Menu | Description |
| --- | --- |
| Project ID | Enter the name of the specific project you want to add your DataSet to. You can find this in your Google Cloud Console in the project info. |
| DataSet ID | Enter a name for your DataSet. You can choose any name you want. |
| Report | Select the AdWords report type to run. The following reports are available:

|  |  |
| --- | --- |
| Account Performance | Returns all statistics aggregated by default at the account level. |
| Ad Performance | Returns all statistics aggregated at the ad level. |
| Ad Group Performance | Returns all statistics aggregated by default at the ad group level. |
| Budget Performance | Returns all statistics aggregated by default at the budget level. |
| Keywords Performance | Returns all statistics aggregated at the keyword level. |
| Campaign Performance | Returns all statistics aggregated by default at the campaign level. |
| Placement Performance | Returns all statistics aggregated at the placement level. |

 |
| Date Range | Select the date range for the data in your report. |
| Fields | Check the boxes for all fields you want to import into your report. |
| Segments | Check the boxes for all segments you want to import into your report. |
| Script | Copy this script and paste it into Google Ads as explained in [Configuring a BigQuery Script in Google Ads](#h_de299c23-b295-4e8f-8cef-6d674b146f72 "Google AdWords via Google BigQuery Connector"). |


### Other Panes


For information about the remaining sections of the connector interface, including how to configure scheduling, retry, and update options, see [Adding a DataSet Using a Data Connector](/s/article/360042926274).


Troubleshooting
---------------


* If the data doesn't seem to be updating, make sure your Google Ads script runs before the connector runs. Otherwise, the same data will be pulled again.


Presentation - Google Sheets vs. BigQuery
-----------------------------------------


The following presentation takes you through the differences between pulling Google Ads data using Google Sheets and BigQuery, along with the steps for each:


![adwords_1.png](adwords_1.png)  
![adwords_2.png](adwords_2.png)  
   
![adwords_3.png](adwords_3.png)  
   
![adwords_4.png](adwords_4.png)  
   
![adwords_5.png](adwords_5.png)  
   
![adwords_6.png](adwords_6.png)

