---
    title: Instagram Connector (Deprecated)
    url: https://domo-support.domo.com/s/article/360042929774
    linked_kbs:  ['[https://domo-support.domo.com/s/knowledge-base/](https://domo-support.domo.com/s/knowledge-base/)', '[https://domo-support.domo.com/s/](https://domo-support.domo.com/s/)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZammGAC](https://domo-support.domo.com/s/topic/0TO5w000000ZammGAC)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZanLGAS](https://domo-support.domo.com/s/topic/0TO5w000000ZanLGAS)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS](https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS)', '[https://domo-support.domo.com/s/article/360042929754](https://domo-support.domo.com/s/article/360042929754)', '[https://domo-support.domo.com/s/article/360042926274](https://domo-support.domo.com/s/article/360042926274)', '[https://domo-support.domo.com/s/article/360042926054](https://domo-support.domo.com/s/article/360042926054)', '[https://domo-support.domo.com/s/article/360042929774](https://domo-support.domo.com/s/article/360042929774)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS/api-connectors](https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS/api-connectors)', '[https://domo-support.domo.com/s/article/360043429933](https://domo-support.domo.com/s/article/360043429933)', '[https://domo-support.domo.com/s/article/360043429953](https://domo-support.domo.com/s/article/360043429953)', '[https://domo-support.domo.com/s/article/360042925494](https://domo-support.domo.com/s/article/360042925494)', '[https://domo-support.domo.com/s/article/360043429913](https://domo-support.domo.com/s/article/360043429913)', '[https://domo-support.domo.com/s/article/4408174643607](https://domo-support.domo.com/s/article/4408174643607)', '[https://domo-support.domo.com/s/login/](https://domo-support.domo.com/s/login/)']
    article_id: 000003469
    views: 2,146
    created_date: 2022-10-24 21:13:00
    last updated: 2022-10-24 22:42:00
    ---





 


**Important:**This Connector has been deprecated. In order to create new DataSets, you must use the [Instagram Business Connector](/s/article/360042929754). 




Intro
-----


Instagram is a free photo and video sharing app. The Domo Instagram connector integrates Domo with Instagram to extract data from the Instagram API. Use the connector to retrieve data about your feed, account, follows, liked media, and recent media. To learn more about the Instagram API, visit their site (<http://instagram.com/developer>).


The Instagram connector is a "Cloud App" connector, meaning it retrieves data stored in the cloud. In the Data Center, you can access the connector page for this and other Cloud App connectors by clicking **Cloud App** in the toolbar at the top of the window.


You connect to your Instagram account in the Data Center. This topic discusses the fields and menus that are specific to the Instagram connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in [Adding a DataSet Using a Data Connector](/s/article/360042926274 "Adding a DataSet Using a Data Connector").




|  |  |
| --- | --- |
| **Primary Use Cases** | Use this connector to pull Instagram follower counts, other users the company is following, influence of followers, user demographics, user topics of interest, liked posts, and comments on postings.  |
| **Primary Metrics** | * Number of followers
* Number of liked posts
 |
| **Primary Company Roles** | * Social media manager
* CMO
 |
| **Average Implementation Time** | Can probably be implemented in a few minutes |
| **Ease of Use (on a 1-to-10 scale with 1 being easiest)** | 2 |


Best Practices
--------------


Note that many reports return only the previous day's results. So to capture results over time, those reports should be set to **Append**. For example, to get a trend of followers over time, the "User's Information" report needs to run every day in Append mode to build that DataSet snapshot.


Prerequisites
-------------


To connect to your Instagram account and create a DataSet, you must have an Instagram username and password.


Connecting to Your Instagram Account
------------------------------------


This section enumerates the options in the **Credentials** and **Details** panes in the Instagram Connector page. The components of the other panes in this page, **Scheduling** and **Name & Describe Your DataSet**, are universal across most connector types and are discussed in greater length in [Adding a DataSet Using a Data Connector](/s/article/360042926274 "Adding a DataSet Using a Data Connector").


### Credentials Pane


The Domo Instagram connector uses OAuth to connect, so there is no need to enter credentials within Domo. Click **Connect** (or select **Add Account** if you have existing Instagram accounts in Domo) to open the Instagram OAuth screen where you can enter your Instagram username and password. Once you have entered valid Instagram credentials, you can use the same account any time you go to create a new Instagram DataSet. You can manage connector accounts in the **Accounts** tab in the Data Center. For more information about this tab, see [Managing User Accounts for Connectors](/s/article/360042926054 "Managing User Accounts for Connectors").




 


**Note:** If you are already logged into Instagram when you connect in Domo, you are authenticated automatically when you click Add account. If you want to connect to an account that is different from the one you are logged into, you must first log out of Instagram.



### Details Pane


This pane contains a primary **Report** menu, along with a **Data to Collect** menu that appears for specific report types.




| Menu | Description |
| --- | --- |
| Report | Select an Instagram report. The following reports are available:

|  |  |
| --- | --- |
| User's Information | Returns information about the authenticated user, such as username, bio, website, profile picture URL, etc. |
| User's Recent Media | Returns information about recent posts created by the authenticated user. |

 |
| Data to Collect | Select the type of data to collect for each item in the report. |


### Other Panes


For information about the remaining sections of the connector interface, including how to configure scheduling, retry, and update options, see [Adding a DataSet Using a Data Connector.](/s/article/360042926274)


FAQs
----


#### Why can't I access more Instagram information through this connector?


Instagram deprecated its previous Instagram API platform and the ability to read public media on a user's behalf in early 2018. The ability to read a user's own profile info and media will be deprecated in early 2020. For more information, see [https://www.instagram.com/developer/.](https://www.instagram.com/developer/)


Instagram has a powerful new API that can be accessed with Domo's Instagram Business connector. For more information about this connector, see the [Instagram Business Connector Knowledge Base article.](/s/article/360042929754)


#### What kind of credentials do I need to power up this connector?


You need the email address and password associated with your Instagram account.


#### How do I know my Instagram credentials are secure?


The login process uses the OAuth process, so your credentials are never seen or stored by Domo. This keeps your login secure. You can revoke Domo's access to your account at any time.


#### Why are some of my comments missing from the DataSet?


Due to API limitations, we can pull only up to 120 likes or 150 comments.


#### Can I pull information about my Instagram Story?


Unfortunately, this API does not allow us to pull data about Instagram Stories. However, Instagram has a powerful new API that is able to pull data about Instagram Stories and can be accessed with Domo's Instagram Business connector. For more information about this connector see the [Instagram Business Connector Knowledge Base article](/s/article/360042929754).


#### How often can the data be updated?


Most information about pages is updated every 24 hours. Select "insight" metrics are updated roughly every 15 minutes. We recommend configuring the DataSets to run every 24 hours.


#### Are there any API limits that I need to be aware of?


Instagram allows up to 5000 API requests for a user per hour. Note that a single DataSet run may be required to make multiple requests.

