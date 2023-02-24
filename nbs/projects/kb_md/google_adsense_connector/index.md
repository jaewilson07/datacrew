---
    title: Google AdSense Connector
    url: https://domo-support.domo.com/s/article/360043431273
    linked_kbs:  ['[https://domo-support.domo.com/s/knowledge-base/](https://domo-support.domo.com/s/knowledge-base/)', '[https://domo-support.domo.com/s/](https://domo-support.domo.com/s/)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZammGAC](https://domo-support.domo.com/s/topic/0TO5w000000ZammGAC)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZanLGAS](https://domo-support.domo.com/s/topic/0TO5w000000ZanLGAS)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS](https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS)', '[https://domo-support.domo.com/s/article/360042926274](https://domo-support.domo.com/s/article/360042926274)', '[https://domo-support.domo.com/s/article/360042926054](https://domo-support.domo.com/s/article/360042926054)', '[https://domo-support.domo.com/s/article/360043431273](https://domo-support.domo.com/s/article/360043431273)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS/api-connectors](https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS/api-connectors)', '[https://domo-support.domo.com/s/article/360043429933](https://domo-support.domo.com/s/article/360043429933)', '[https://domo-support.domo.com/s/article/360043429953](https://domo-support.domo.com/s/article/360043429953)', '[https://domo-support.domo.com/s/article/360042925494](https://domo-support.domo.com/s/article/360042925494)', '[https://domo-support.domo.com/s/article/360043429913](https://domo-support.domo.com/s/article/360043429913)', '[https://domo-support.domo.com/s/article/4408174643607](https://domo-support.domo.com/s/article/4408174643607)', '[https://domo-support.domo.com/s/login/](https://domo-support.domo.com/s/login/)']
    article_id: 000003768
    views: 2,112
    created_date: 2022-10-24 21:15:00
    last updated: 2022-10-24 22:40:00
    ---



Intro
-----


Google AdSense places targeted advertisements on website pages. To learn more about the AdSense API, visit their page ([https://developers.google.com/adsense](https://developers.google.com/adsense "https://developers.google.com/adsense/")).


You connect to your Google AdSense account in the Data Center. This topic discusses the fields and menus that are specific to the Google AdSense connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in [Adding a DataSet Using a Data Connector](/s/article/360042926274).


Prerequisites
-------------


To connect to a Google AdSense account and create a DataSet, you must have the password for the Google account you want to connect to.  


Connecting to Your Google AdSense Account
-----------------------------------------


This section enumerates the options in the **Credentials** and **Details** panes in the Google AdSense Connector page. The components of the other panes in this page, **Scheduling**and **Name & Describe Your DataSet,** are universal across most connector types and are discussed in greater length in [Adding a DataSet Using a Data Connector](/s/article/360042926274).


### Credentials Pane


The Domo Google AdSense connector uses OAuth to connect, so there is no need to enter credentials within Domo. Click **Connect** (or select **Add Account** if you have existing Google accounts in Domo) to open the Google OAuth screen where you can enter your Google credentials. Once you have entered valid Google credentials, you can use the same account any time you go to create a new Google AdSense DataSet. You can manage connector accounts in the **Accounts** tab in the Data Center. For more information about this tab, see [Managing User Accounts for Connectors](/s/article/360042926054 "Managing User Accounts for Connectors").




 


**Note:** If you are already logged into Google when you connect in Domo, you are authenticated automatically when you click **Add account**. If you want to connect to an account that is different from the one you are logged into, you must first log out of Google.



### Details Pane


This pane contains various menus in which you can configure your Google AdSense report.




| Menu | Description |
| --- | --- |
| Metrics | Select up to 100 metrics for your Google AdSense report. |
| Dimensions | Select up to 100 dimensions for your Google AdSense report. |
| From (Start) Days | Enter the number of past days you want to begin pulling in report data for. Pair with **End Days** to create a range of days for the report. For example, if you entered 14 for **Start Days** and 7 for **End Days**, each time your report ran it would pull data from the past 14 days until the past 7 days.   |
| To (End) Days | Enter the number of past days you want to stoplling in report data for. Pair with **Start Days** to create a range of days for the report. For example, if you entered 14 for **Start Days** and 7 for **End Days**, each time your report ran it would pull data from the past 14 days until the past 7 days.   |


### Other Panes


For information about the remaining sections of the connector interface, including how to configure scheduling, retry, and update options, see [Adding a DataSet Using a Data Connector](/s/article/360042926274).


FAQs
----


#### How do I know my Google credentials are secure?


The connector uses OAuth, which authenticates the account with Google without Domo ever having to access your Google account credentials.


#### I am not able to create an account because the account information never loads. How can I create an account?


Your ad blocker is blocking the AdSense account information. Open an incognito window in Chrome and try again.


#### How often can the data be updated?


As often as needed.


##### Are there any API limits I should be aware of?


No.

