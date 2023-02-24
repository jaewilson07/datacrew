---
    title: Kissmetrics Connector
    url: https://domo-support.domo.com/s/article/360043433913
    linked_kbs:  ['[https://domo-support.domo.com/s/knowledge-base/](https://domo-support.domo.com/s/knowledge-base/)', '[https://domo-support.domo.com/s/](https://domo-support.domo.com/s/)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZammGAC](https://domo-support.domo.com/s/topic/0TO5w000000ZammGAC)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZanLGAS](https://domo-support.domo.com/s/topic/0TO5w000000ZanLGAS)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS](https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS)', '[https://domo-support.domo.com/s/article/360042926274](https://domo-support.domo.com/s/article/360042926274)', '[https://domo-support.domo.com/s/article/360042926054](https://domo-support.domo.com/s/article/360042926054)', '[https://domo-support.domo.com/s/article/360043433913](https://domo-support.domo.com/s/article/360043433913)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS/api-connectors](https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS/api-connectors)', '[https://domo-support.domo.com/s/article/360043429933](https://domo-support.domo.com/s/article/360043429933)', '[https://domo-support.domo.com/s/article/360043429953](https://domo-support.domo.com/s/article/360043429953)', '[https://domo-support.domo.com/s/article/360042925494](https://domo-support.domo.com/s/article/360042925494)', '[https://domo-support.domo.com/s/article/360043429913](https://domo-support.domo.com/s/article/360043429913)', '[https://domo-support.domo.com/s/article/4408174643607](https://domo-support.domo.com/s/article/4408174643607)', '[https://domo-support.domo.com/s/login/](https://domo-support.domo.com/s/login/)']
    article_id: 000003522
    views: 1,073
    created_date: 2022-10-24 21:13:00
    last updated: 2022-10-24 22:40:00
    ---



Intro
-----


Kissmetrics is a customer analytics platform which provides visualization tools on how users interact with their site, web apps, and mobile products.  To learn about the Kissmetrics API, visit their website ([http://support.kissmetrics.com/article/show/url-api](http://support.kissmetrics.com/article/show/url-api "http://support.kissmetrics.com/article/show/url-api")).


You connect to your Kissmetrics account in the Data Center. This topic discusses the fields and menus that are specific to the Kissmetrics connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in [Adding a DataSet Using a Data Connector](/s/article/360042926274 "Adding a DataSet Using a Data Connector").


Prerequisites
-------------


To connect to your Kissmetrics account and create a DataSet, you must have the following:


* An AWS (Amazon Web Services) access key
* An AWS secret key


For information about obtaining AWS credentials, visit [http://docs.aws.amazon.com/general/l...red-types.html](http://docs.aws.amazon.com/general/latest/gr/aws-sec-cred-types.html "http://docs.aws.amazon.com/general/latest/gr/aws-sec-cred-types.html"). 


Connecting to Your Kissmetrics Account
--------------------------------------


This section enumerates the options in the **Credentials** and **Details** panes in the Kissmetrics Connector page. The components of the other panes in this page, **Scheduling** and **Name & Describe Your DataSet**, are universal across most connector types and are discussed in greater length in [Adding a DataSet Using a Data Connector](/s/article/360042926274 "Adding a DataSet Using a Data Connector").


### Credentials Pane


This pane contains fields for entering credentials to connect to your Kissmetrics account. The following table describes what is needed for each field:  




| Field | Description |
| --- | --- |
| AWS Access Key | Enter your AWS (Amazon Web Services) access key. |
| AWS Secret Key | Enter your AWS secret key. |


Once you have entered valid Kissmetrics credentials, you can use the same account any time you go to create a new Kissmetrics DataSet. You can manage connector accounts in the **Accounts** tab in the Data Center. For more information about this tab, see [Managing User Accounts for Connectors](/s/article/360042926054 "Managing User Accounts for Connectors").


### Details Pane


This pane contains a single menu in which you select the AWS bucket containing your Kissmetrics data.




| Menu | Description |
| --- | --- |
| AWS Bucket Name | Select the AWS bucket containing the data you want to pull into Domo. |


### Other Panes


For information about the remaining sections of the connector interface, including how to configure scheduling, retry, and update options, see [Adding a DataSet Using a Data Connector](/s/article/360042926274 "Adding a DataSet Using a Data Connector").

