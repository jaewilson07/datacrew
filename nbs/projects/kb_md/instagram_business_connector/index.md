---
title: Instagram Business Connector
url: https://domo-support.domo.com/s/article/360042929754
linked_kbs:  ['[https://domo-support.domo.com/s/knowledge-base/](https://domo-support.domo.com/s/knowledge-base/)', '[https://domo-support.domo.com/s/](https://domo-support.domo.com/s/)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZammGAC](https://domo-support.domo.com/s/topic/0TO5w000000ZammGAC)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZanLGAS](https://domo-support.domo.com/s/topic/0TO5w000000ZanLGAS)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS](https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS)', '[https://domo-support.domo.com/s/article/360042926274](https://domo-support.domo.com/s/article/360042926274)', '[https://domo-support.domo.com/s/article/360042926054](https://domo-support.domo.com/s/article/360042926054)', '[https://domo-support.domo.com/s/article/360042922874](https://domo-support.domo.com/s/article/360042922874)', '[https://domo-support.domo.com/s/article/360042929754](https://domo-support.domo.com/s/article/360042929754)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS/api-connectors](https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS/api-connectors)', '[https://domo-support.domo.com/s/article/360043429933](https://domo-support.domo.com/s/article/360043429933)', '[https://domo-support.domo.com/s/article/360043429953](https://domo-support.domo.com/s/article/360043429953)', '[https://domo-support.domo.com/s/article/360042925494](https://domo-support.domo.com/s/article/360042925494)', '[https://domo-support.domo.com/s/article/360043429913](https://domo-support.domo.com/s/article/360043429913)', '[https://domo-support.domo.com/s/article/4408174643607](https://domo-support.domo.com/s/article/4408174643607)', '[https://domo-support.domo.com/s/login/](https://domo-support.domo.com/s/login/)']
article_id: 000003475
views: 2,578
created_date: 2022-10-24 21:13:00
last updated: 2022-10-24 22:42:00
---



Intro
-----


The Instagram Business Connector allows you to access Instagram Business Accounts so you can view comments and metadata and get insights and metrics about them. To learn more about the Instagram API, visit their page ([https://developers.facebook.com/docs/instagram-api](https://developers.facebook.com/docs/instagram-api "https://developers.facebook.com/docs/instagram-api")).


You connect to your Instagram Business account in the Data Center. To successfully connect to Instagram Business, you must first connect your Instagram account to a Facebook page and then grant connector access to your Facebook user. The steps for doing this are described in continuation.


This topic discusses the fields and menus that are specific to the Instagram Business connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in [Adding a DataSet Using a Data Connector](/s/article/360042926274).


Prerequisites
-------------


To use the Instagram Business connector, you need the following:


* An Instagram Business account. You can use a standard Instagram account, and it will be converted into an Instagram Business account during the setup process.
* A Facebook page URL that will be linked to the Instagram account. Each Facebook page can be connected to ONE Instagram Business account.
* A Facebook administrator user account URL for the page you are linking to Instagram.







**Note:** A Facebook user must have a registered Facebook Developer account. To receive the invite, use the Instagram Business Connector. You can do this by selecting following link <https://developers.facebook.com/settings/developer/requests/> and click "Register Now"


Connecting to Your Instagram Business Account
---------------------------------------------


This section enumerates the options in the **Credentials** and **Details** panes in the Instagram Business Connector page. The components of the other panes in this page, **Scheduling** and **Name & Describe Your DataSet**, are universal across most connector types and are discussed in greater length in [Adding a DataSet Using a Data Connector.](/s/article/360042926274)


### Credentials Pane


In the **Credentials** pane, you connect to your Instagram Business account via Facebook. This can only be done once you have 1) connected Instagram to a Facebook page, and 2) enabled access for your Facebook user. Steps for accomplishing these tasks are provided in continuation. 


Once you have connected to Instagram Business through Facebook, you can use the same account any time you go to create a new Instagram Business DataSet. You can manage connector accounts in the **Accounts** tab in the Data Center. For more information about this tab, see [Managing User Accounts for Connectors](/s/article/360042926054 "Managing User Accounts for Connectors").


#### Connecting Instagram to Facebook


To connect your Facebook page to Instagram, follow these instructions:


1. Log into Facebook and navigate to the page you want to connect to Instagram.
2. Click on **Settings** in the top right corner.  
  
![instagram_biz_1.png](instagram_biz_1.png)
3. In the **Settings** screen, select **Instagram** in the list on the left, then click **Log In** in the **Manage Instagram on Facebook** pane.  
  
![instagram_biz_2.png](instagram_biz_2.png)
4. In the Instagram login screen, enter the username and password of the Instagram account you want to connect to Facebook.  
If the Instagram account is not a business account, you are prompted to switch to a Business profile, as shown here:  
  
![instagram_biz_4.png](instagram_biz_4.png)
5. (Conditional) If the preceding dialog appears, click **Continue**, then click **Done**.


Once linking is complete, you will see your Instagram profile's business information in your Facebook page's settings.  
  
![instagram_biz_6.png](instagram_biz_6.png)


#### Enabling Your Facebook User


Once you have linked your Instagram account to a Facebook Page, you must ask Domo to enable your Facebook user to have access to the connector. This can be done by [contacting Domo Support](/s/article/360042922874) and asking for access. You will need to provide the following information:


* The URL of your company Domo instance (e.g. [mycompany.domo.com](http://mycompany.domo.com))
* Your Facebook username. This must be the username of the user who will be using the connector. This is *not* the name of the Page or Instagram account. You can find your username in the Facebook URL when you go to your Facebook profile:  
  
![instagram_biz_7.png](instagram_biz_7.png)


Once your user has been enabled (which can take up to 5 business days,) you will need to accept the invitation in your Facebook notifications.


To learn more about What's the difference between a Facebook profile and a Facebook page, visit their page (<https://www.facebook.com/help/337881706729661>).


  
  








**Note:** The notification may not be visible in the mobile app and we recommend checking on a desktop.



### Details Pane


This pane contains a primary **Reports** menu, along with various other menus which may or may not appear depending on the report type you select.




| Menu | Description |
| --- | --- |
| Report | Select the Instagram Business report you want to run. The following reports are available:

|  |  |
| --- | --- |
| Hashtag Recent Media | Get the most recently published photos and videos published with a specific hashtag. |
| Hashtag Top Media | Get the most popular photos and videos that have been tagged with a specific hashtag. |
| Media Comments | Read comments for a particular media object. |
| Media Insights | Get insights data for an individual media object. |
| Other Users | Get the basic metadata for Instagram pages associated with other Instagram Business Accounts. |
| Other User's Media | Get the media information for Instagram pages associated with other Instagram Business Accounts. |
| Recently Searched Hashtags | Get the hashtags that an Instagram Business User has searched for within the last 7 days. |
| User | Get metadata for the current user. |
| User Insights | Get insights for your Instagram Business account. |
| User Media | Get media objects for an Instagram Business account. |
| User Stories | Get user stories for an Instagram Business account. |

 |
| Instagram Business Account Page | Select the Facebook page your Instagram Business account is linked to. |
| Reporting Timeframe | Select the timeframe for each day in the report. |
| User Metrics | Select the metrics you want to include in your report. |
| Media Type | Select the media type you want to retrieve data for. When selecting **Story**, keep in mind that media data for stories can usually be retrieved for only 24 hours after the story's creation. |
| Media Metrics | Select the metrics you want to include in your report. |
| Media Items | Select whether you want to pull data for a single media item, for a range of items, or for all media items ("User Media" report only). |
| Media | Select the media item you want to retrieve data for. |
| Date From | Specify whether the first date in your date range is a specific or relative date. You select the last date in your range in **Date To**. |
| Select Specific Date From | Select the first date in your date range. |
| Date To | Specify whether the second date in your date range is a specific or relative date. You select the first date in your range in **Date From**. |
| Select Specific Date To | Select the last date in your date range. |
| Date From Offset | Enter the number of the farthest day back that should be represented in the report. Combine with **Date To Offset** to create a range of represented days.
For example, if you entered 10 for **Date From Offset** and 5 for **Date To Offset**, the report would contain data for 10 days ago up until 5 days ago. |
| Date To Offset | Enter the number of the most recent day that should be represented in the report. Combine with **Date From Offset** to create a range of represented days.
For example, if you entered 10 for **Date From Offset** and 5 for **Date To Offset**, the report would contain data for 10 days ago up until 5 days ago. |


### Other Panes


For information about the remaining sections of the connector interface, including how to configure scheduling, retry, and update options, see [Adding a DataSet Using a Data Connector](/s/article/360042926274 "Adding a DataSet Using a Data Connector").


FAQs
----



#### What do I need to know about connecting via Facebook's OAuth?


  


 


**Important**: Due to limits of the Facebook API, around every 60 days you will have to re-connect your Facebook account with Domo to avoid unauthorized errors. The easiest way to do this is to navigate to the Accounts tab in the Data Center, search for your Instagram Business account, then click on the wrench icon, and select "Re-connect".



When connecting your Instagram Business account with Domo, a Facebook OAuth process will happen. It's important to correctly configure the OAuth; otherwise, you may miss some of the data (Example: missing Instagram Business data or missing Facebook Pages in the configuration section).


Below are the basic steps for correctly configuring the OAuth.


1. First, choose to "Add account", either from the "Create Instagram Business Connector DataSet" page or from the Accounts view of the connector. For more information about adding an account, see [Managing User Account for Connectors](/s/article/360042926054).
2. If you've never connected Facebook to Domo before, the first screen in the Facebook OAuth will be one of the two screens below. Enter your Facebook credentials (if needed) and continue.


![Facebook_login.png](Facebook_login.png)


If you are already logged into your Facebook account, Domo will ask if you wish to use the same account for connection.


![Domo-Facebook_login.png](Domo-Facebook_login.png)


3. Now, select the Instagram Business Accounts you want to retrieve data for.


![Select_Instagram_Accounts.png](Select_Instagram_Accounts.png)


4. Next, select the Facebook Pages that are connected with your Instagram Business accounts.


![Select_Facebook_Pages.png](Select_Facebook_Pages.png)







**Note:** If you only select the Facebook Pages that aren't connected with a Instagram Business account, the data will be missing. However, there is no harm in selecting extraneous Facebook Pages. This means, if you're unsure which Facebook Page is connected with which Instagram Business account, you can choose "Select All."



5. Finally, enable all permissions so Domo has access to retrieve your data.


![Enable_Permissions.png](Enable_Permissions.png)




#### What version of Facebook/Instagram does this connector use?


This connector uses version 12.0 of the Facebook API ([https://developers.facebook.com/docs/graph-api/changelog/version12.0](https://developers.facebook.com/docs/graph-api/changelog/version12.0 "Follow link")).


#### What endpoint does each report call in this connector?


 




| Report Name | Endpoint URL |
| --- | --- |
| Hashtag Recent Media | {hashtag-id}/recent\_media |
| Hashtag Top Media | /{hashtag-id}/top\_media |
| Media Comments | /{instagram\_media\_id}/comments |
| Media Insights | /{instagram\_media\_id}/insights |
| Other Users | /{instagram\_business\_account\_id}?fields=business\_discovery.username({account\_name}){user\_fields} |
| Other Users' Media | /{instagram\_business\_account\_id}?fields=business\_discovery.username({account\_name}){media{media\_fields}} |
| Recently Searched Hashtags | /{instagram\_business\_account\_id}/recently\_searched\_hashtags |
| User | /{instagram\_business\_account\_id} |
| User Insights | /{instagram\_business\_account\_id}/insights |
| User Media | /{instagram\_business\_account\_id}/media |
| User Stories | /{instagram\_business\_account\_id}/stories |


#### What do I need to power up this connector?


To start with, you need a Facebook page, a Facebook account that has a role on that page and an Instagram account. You then need to follow the steps to connect your Instagram account and Facebook page and the steps to enable your Facebook user to have access to the Instagram Business connector. For more information, see [Connecting Instagram to Facebook](#h_6c575603-faf1-44af-a5a3-d8e25210473a "#Connecting_Instagram_to_Facebook").


#### Do I need any specific kind of Instagram account and Facebook page? Do I need the admin role?


You will be connecting the Facebook page to the Instagram account then converting the account to an Instagram Business account. You don't have to be the admin of the page, but since you'll be connecting it to an Instagram Business Account, the page and account should be related in some way.


#### How often can the data be updated?


Most information about pages is updated every 24 hours. Selected "insight" metrics are updated roughly every 15 minutes. It is recommended you configure the DataSets to run every 24 hours.


#### Are there any API limits that I need to be aware of?


Instagram Business connector is limited to 200 calls per user per hour.

