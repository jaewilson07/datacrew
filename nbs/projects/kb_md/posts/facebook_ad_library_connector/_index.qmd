---
title: Facebook Ad Library Connector
url: https://domo-support.domo.com/s/article/1500000196942
linked_kbs:  ['[https://domo-support.domo.com/s/knowledge-base/](https://domo-support.domo.com/s/knowledge-base/)', '[https://domo-support.domo.com/s/](https://domo-support.domo.com/s/)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZammGAC](https://domo-support.domo.com/s/topic/0TO5w000000ZammGAC)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZanLGAS](https://domo-support.domo.com/s/topic/0TO5w000000ZanLGAS)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS](https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS)', '[https://domo-support.domo.com/s/article/360042926274](https://domo-support.domo.com/s/article/360042926274)', '[https://domo-support.domo.com/s/article/360042926054](https://domo-support.domo.com/s/article/360042926054)', '[https://domo-support.domo.com/s/article/1500000196942](https://domo-support.domo.com/s/article/1500000196942)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS/api-connectors](https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS/api-connectors)', '[https://domo-support.domo.com/s/article/360043429933](https://domo-support.domo.com/s/article/360043429933)', '[https://domo-support.domo.com/s/article/360043429953](https://domo-support.domo.com/s/article/360043429953)', '[https://domo-support.domo.com/s/article/360042925494](https://domo-support.domo.com/s/article/360042925494)', '[https://domo-support.domo.com/s/article/360043429913](https://domo-support.domo.com/s/article/360043429913)', '[https://domo-support.domo.com/s/article/4408174643607](https://domo-support.domo.com/s/article/4408174643607)', '[https://domo-support.domo.com/s/login/](https://domo-support.domo.com/s/login/)']
article_id: 000003272
views: 2,144
created_date: 2022-10-24 21:12:00
last updated: 2022-10-24 22:41:00
---



Intro
-----


The archive is a searchable database that stores Facebook and Instagram ads that are labeled as "Political Advertising" which include political issues and advocacy content. Use Domo's Facebook Ad Library connector to get the data about the archived ads. To learn more about the Facebook Ad Library API, visit their page ([https://www.facebook.com/ads/library/api](https://www.facebook.com/ads/library/api "https://www.facebook.com/ads/library/api")).


You connect to your Facebook Developers account in the Data Center. This topic discusses the fields and menus that are specific to the Facebook Ad Library connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in [Adding a DataSet Using a Data Connector](/s/article/360042926274 "Adding a DataSet Using a Data Connector").


Prerequisites
-------------


To configure this connector, you must have the following:


* The ID of the app and the Secret associated with the app that you created at the [Facebook for Developers](https://developers.facebook.com "https://developers.facebook.com") portal.


### Obtaining the Client ID and Client Secret:


To obtain your Client ID and Client secret:


1. Visit the [Facebook for Developers](https://developers.facebook.com "https://developers.facebook.com") portal ([https://developers.facebook.com](https://developers.facebook.com "https://developers.facebook.com")) and create a new app.
2. Once your app is created, you will see a screen as shown below displaying your app details.


![clipboard_e6b3c94b600763adcd50440720c0288ff.png](clipboard_e6b3c94b600763adcd50440720c0288ff.png)


3. Here, the App ID and App Secret are your Client ID and Client Secret that you will need to enter in the connector UI credentials section.


4. Now, go to the **Settings** in **Facebook Login** as shown below.


![clipboard_ea9d6fb7aecd667f20883f5e50465f93d.png](clipboard_ea9d6fb7aecd667f20883f5e50465f93d.png)


5. Enter the redirect URI in the **Valid OAuth Redirect URI** field as - <https://oauth.dev.domo.com/api/data/v2/oauth/providers/facebook-ad-library/exchange> and save your changes.


![clipboard_ea30f0485d2db684033eaefffa191e528.png](clipboard_ea30f0485d2db684033eaefffa191e528.png)


Connecting to Your Facebook Ad Library Account
----------------------------------------------


This section enumerates the options in the **Credentials** and **Details** panes in the Facebook Ad Library Connector page. The components of the other panes in this page, **Scheduling** and **Name & Describe Your DataSet**, are universal across most connector types and are discussed in greater length in [Adding a DataSet Using a Data Connector](/s/article/360042926274 "Adding a DataSet Using a Data Connector").


### Credentials Pane


This pane contains fields for entering credentials to connect to your Facebook Ad Library account. The following table describes what is needed for each field:  




| Field | Description |
| --- | --- |
| Client ID | Enter the ID of the app that you created at [https://developers.facebook.com](https://developers.facebook.com "https://developers.facebook.com"). For more information, see [Prerequisites](#h_01ES1R85KR59MVFDV0EEXQC24G "Facebook Ad Library Connector").  |
| Client Secret | Enter the Secret associated with the app you created at [https://developers.facebook.com](https://developers.facebook.com "https://developers.facebook.com"). For more information, see [Prerequisites](#h_01ES1R85KR59MVFDV0EEXQC24G "Facebook Ad Library Connector"). |


Once you have entered valid credentials, you can use the same account any time you go to create a new Facebook Ad Library DataSet. You can manage connector accounts in the **Accounts** tab in the Data Center. For more information about this tab, see [Managing User Accounts for Connectors](/s/article/360042926054 "Managing User Accounts for Connectors").


### Details Pane


This pane contains a primary **Reports** menu, along with various other menus which may or may not appear depending on the report type you select.




| Menu | Description |
| --- | --- |
| Report | Select the Facebook Ad Library report you want to run. The following reports are available:

|  |  |
| --- | --- |
| Archived Ads | Get archived ads related to politics or issues of national importance. |

 |
| Status of Ad | Specify whether you want to pull the data for all ads, active ads or inactive ads.  |
| Enter the Page IDs | You can search for archived ads based on specific Facebook Page IDs. You can provide up to ten IDs, separated by commas. |
| Enter Search Terms | Enter the terms to search for in your query. The limit for the query is 100 characters or less. |
| Reach of Ad | Select the countries to retrieve data for by International Organization for Standardization. |
| Type of Ad | Select the Ad type. |
| Number of Unique Ads | Enter the number of unique ads you want to be returned from Facebook. |
| By Lines | Filter results for ads that are paid by disclaimer byline, such as political ads that reference 'immigration' paid by 'ACLU'.
Provide a string to search for a byline with or without a comma.
For instance "byline, with a comma,", "byline without a comma"; returns results with either text variation. |
| Publisher Platforms | Select the publisher platform(s) you want to pull the ad data from. |
| Impression Condition | Select an impression condition from the listed options to search for the ads based on the ad’s most recent appearance. |


### Other Panes


For information about the remaining sections of the connector interface, including how to configure scheduling, retry, and update options, see [Adding a DataSet Using a Data Connector](/s/article/360042926274 "Adding a DataSet Using a Data Connector").

