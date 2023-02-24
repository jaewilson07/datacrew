---
    title: Centro Connector
    url: https://domo-support.domo.com/s/article/360043430993
    linked_kbs:  ['[https://domo-support.domo.com/s/knowledge-base/](https://domo-support.domo.com/s/knowledge-base/)', '[https://domo-support.domo.com/s/](https://domo-support.domo.com/s/)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZammGAC](https://domo-support.domo.com/s/topic/0TO5w000000ZammGAC)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZanLGAS](https://domo-support.domo.com/s/topic/0TO5w000000ZanLGAS)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS](https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS)', '[https://domo-support.domo.com/s/article/360042926274](https://domo-support.domo.com/s/article/360042926274)', '[https://domo-support.domo.com/s/article/360042926054](https://domo-support.domo.com/s/article/360042926054)', '[https://domo-support.domo.com/s/article/360043430993](https://domo-support.domo.com/s/article/360043430993)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS/api-connectors](https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS/api-connectors)', '[https://domo-support.domo.com/s/article/360043429933](https://domo-support.domo.com/s/article/360043429933)', '[https://domo-support.domo.com/s/article/360043429953](https://domo-support.domo.com/s/article/360043429953)', '[https://domo-support.domo.com/s/article/360042925494](https://domo-support.domo.com/s/article/360042925494)', '[https://domo-support.domo.com/s/article/360043429913](https://domo-support.domo.com/s/article/360043429913)', '[https://domo-support.domo.com/s/article/4408174643607](https://domo-support.domo.com/s/article/4408174643607)', '[https://domo-support.domo.com/s/login/](https://domo-support.domo.com/s/login/)']
    article_id: 000003792
    views: 1,070
    created_date: 2022-10-24 21:15:00
    last updated: 2022-10-24 22:40:00
    ---



Intro
-----


Centro (formerly called SiteScout) is the first and largest self-serve advertising platform for buying online banner ad space (in real time) across the web and on mobile devices. They help advertisers and agencies streamline the digital media buying process. For more information about the Centro API, visit their website ([https://www.centro.net/products/dsp-...ic-advertising](https://www.centro.net/products/dsp-programmatic-advertising "https://www.centro.net/products/dsp-programmatic-advertising")).  


The Centro connector is a "Cloud App" connector, meaning it retrieves data stored in the cloud. In the Data Center, you can access the connector page for this and other Cloud App connectors by clicking **Cloud App** in the toolbar at the top of the window.    


You connect to your Centro account in the Data Center. This topic discusses the fields and menus that are specific to the Centro connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in [Adding a DataSet Using a Data Connector](/s/article/360042926274 "Adding a DataSet Using a Data Connector").


Prerequisites
-------------


To connect to your Centro account, you must have the following:


* A Centro client ID, and
* A Centro client secret.


For information about obtaining these credentials, please visit [http://www.Centro.com/blog/2013/0...Centro-api/](http://www.sitescout.com/blog/2013/04/introducing-the-sitescout-api/ "http://www.sitescout.com/blog/2013/04/introducing-the-sitescout-api/"). 




 


**Note:**The authentication and authorization processes are performed in accordance with the OAuth 2 specification. At this time Centro only supports the Client Credentials grant type. This grant type is ideal for API clients that require access to their own resources (as opposed to the client acting as a third party and requesting access on behalf of another user). One of the key advantages of this grant type is a simplified authentication flow that allows the client to proceed directly to token generation with the authorization grant being assumed. It must be noted that the Client Credentials grant type must exclusively be implemented with applications that guarantee the security of their client credentials.  



Connecting to Your Centro Account
---------------------------------


This section enumerates the options in the  **Credentials**  and  **Details**  panes in the Centro Connector page. The components of the other panes in this page, **Scheduling** and **Name & Describe Your DataSet**, are universal across most connector types and are discussed in greater length in [Adding a DataSet Using a Data Connector](/s/article/360042926274 "Adding a DataSet Using a Data Connector").


### Credentials Pane


This pane contains fields for entering credentials to connect to your Centro account. The following table describes what is needed for each field:  




| **Field** | **Description** |
| --- | --- |
| Centro Client ID | Enter your Centro Client ID. |
| Centro Client Secret | Enter your Centro Client Secret. |


Once you have entered valid Centro credentials, you can use the same account any time you go to create a new Centro DataSet. You can manage connector accounts in the **Accounts** tab in the Data Center. For more information about this tab, see [Managing User Accounts for Connectors](/s/article/360042926054 "Managing User Accounts for Connectors").


### Details Pane


This pane contains a primary **Report** menu in which you select a report type.




| Menu | Description |
| --- | --- |
| Report | Select a Centro report. The following reports are available:

|  |  |
| --- | --- |
| Advertiser's Folder Structure | Returns the top-level folders.  |
| All Ad Exchanges | Returns a list of ad exchanges. |
| All Brand Stats | Returns statistics for all brands such as clicks, conversions, and impressions won. |
| All Group Stats | Returns statistics for a specific brand for all groups. |
| Audience Rules | Returns audience targeting rules for the selected campaigns. |
| Audience Stats | Returns statistics for the specific audience such as total visitors and new visitors. |
| Campaign | Returns data about campaigns for a given time frame, such as campaign name, budget amount, number of clicks, etc. |
| Campaign Folder's Statistics | Returns statistics for the groups and campaign in the selected folder. |
| Campaign, per Site | Returns site data for campaigns for a given time frame, such as site name, URL, number of clicks, revenue amount, etc. |
| Campaign, per Creative | Returns creative data for campaigns for a given time frame, such as creative name, number of clicks, revenue amount, etc. |
| Campaign, per Offer | Returns offer data for campaigns for a given time frame, such as number of clicks, number of conversions, revenue, etc. |
| Contextual Details | Returns contextual targeting data. |
| Demographic Details | Returns demographic targeting data. |
| Device Details | Returns the current device targeting settings for the campaign. |
| Device Report | Returns data for a given device. |
| Geographic Coordinates | Returns latitude/longitude rules.  |
| Geographic Rules | Returns geographic targeting rules. |
| Group Campaign Stats | Returns statistics for campaigns in the group. |
| Page Position | Returns page position targeting data. |
| Reports  | Returns custom reports. |
| Traffic Type | Returns traffic type targeting data. |

 |
| Custom Report | Select the Centro CSV report you want to import into Domo. |
| Report Type | Select the desired report type for your "Device Report." |
| Advertiser ID | Enter the advertiser ID you want to return data for. |
| Campaign | Select the campaign you want to return data for. |
| Campaign Selection | Specify whether you want to pull data for all campaigns or a specific campaign. |
| Audience | Select all audiences you want to return data for. |
| Folders | Select the campaign folder you want to return data for. |
| Brand | Select the brand you want to return data for. |
| Campaign Group | Select the campaign group you want to return data for. |
| Site Reference | Enter the URL for the website you want to return data for. |
| Creative ID | Enter the ID of the creative you want to return data for. |
| Campaign Status | Select a campaign status to filter your report data by. |
| Filter (Optional) | Enter a keyword to filter campaign names by in your "All Campaigns" report.  |
| Granularity | Select the date grain for your data. For the "Campaign per Creative" report, if you select **Daily** here, one API call will be made per day per campaign.  |
| Backfill Days for Historical Data | Enter the number of past days you want to retrieve historical data for. This will only occur the first time you run the report.  |
| Aggregate By | Select whether to aggregate data by day or hour, or not at all. |
| Dimensions (Optional) | Enter a value to filter creative dimensions by, expressed as width x height (e.g. 300 x 250).  |
| Duration  | Select whether you want to pull data for a specific date or a date range.  |
| Report Date  | Select whether the report data is for a specific date or for a relative number of days back from today.  |
| Select Specific Date  | Select the date for the report.  |
| Days Back | Enter the number of past days that should appear in the report.   |
| Start Date | Specify whether the first date in your date range is a specific or relative date. You select the last date in your range in **End Date**.  |
| End Date | Specify whether the second date in your date range is a specific or relative date. You select the first date in your range in **Start Date**.   |
| Select Specific Start Date | Select the first date in your date range.  |
| Select Specific End Date | Select the second date in your date range.  |
| Days Back to Start From | Enter the number of the farthest day back that should be represented in the report. Combine with **Days Back to End At** to create a range of represented days.
For example, if you entered 10 for **Days Back to Start From** and 5 for **Days Back to End At**, the report would contain data for 10 days ago up until 5 days ago. |
| Days Back to End At | Enter the number of the most recent day back that should be represented in the report. Combine with **Days Back to Start From** to create a range of represented days.
For example, if you entered 10 for **Days Back to Start From** and 5 for **Days Back to End At**, the report would contain data for 10 days ago up until 5 days ago. |


### Other Panes


For information about the remaining sections of the connector interface, including how to configure scheduling, retry, and update options, see [Adding a DataSet Using a Data Connector](/s/article/360042926274).  


FAQs
----


##### Can I use the same account to create multiple DataSets?


Yes.


##### How often can the data be updated?


As often as needed.


##### Are there any API limits I should be aware of?


No.

