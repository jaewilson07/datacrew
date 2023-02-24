---
    title: SEMRush Connector
    url: https://domo-support.domo.com/s/article/360042929454
    linked_kbs:  ['[https://domo-support.domo.com/s/knowledge-base/](https://domo-support.domo.com/s/knowledge-base/)', '[https://domo-support.domo.com/s/](https://domo-support.domo.com/s/)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZammGAC](https://domo-support.domo.com/s/topic/0TO5w000000ZammGAC)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZanLGAS](https://domo-support.domo.com/s/topic/0TO5w000000ZanLGAS)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS](https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS)', '[https://domo-support.domo.com/s/article/360042926274](https://domo-support.domo.com/s/article/360042926274)', '[https://domo-support.domo.com/s/article/360042926054](https://domo-support.domo.com/s/article/360042926054)', '[https://domo-support.domo.com/s/article/360042929454](https://domo-support.domo.com/s/article/360042929454)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS/api-connectors](https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS/api-connectors)', '[https://domo-support.domo.com/s/article/360043429933](https://domo-support.domo.com/s/article/360043429933)', '[https://domo-support.domo.com/s/article/360043429953](https://domo-support.domo.com/s/article/360043429953)', '[https://domo-support.domo.com/s/article/360042925494](https://domo-support.domo.com/s/article/360042925494)', '[https://domo-support.domo.com/s/article/4408174643607](https://domo-support.domo.com/s/article/4408174643607)', '[https://domo-support.domo.com/s/article/360043429913](https://domo-support.domo.com/s/article/360043429913)', '[https://domo-support.domo.com/s/login/](https://domo-support.domo.com/s/login/)']
    article_id: 000003510
    views: 1,103
    created_date: 2022-10-24 21:13:00
    last updated: 2022-10-24 22:42:00
    ---



Intro
-----


SEMRush is a competitive intelligence suite for online marketing, from SEO and PPC to social media and video advertising research.  To learn more about the SEMRush API, visit their page ([https://www.semrush.com/api-documentation/](https://www.semrush.com/api-documentation/ "https://www.semrush.com/api-documentation/")).


You connect to your SEMRush account in the Data Center. This topic discusses the fields and menus that are specific to the SEMRush connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in [Adding a DataSet Using a Data Connector](/s/article/360042926274 "Adding a DataSet Using a Data Connector").


Prerequisites
-------------


To connect to your SEMRush account and create a DataSet, you must have a SEMRush API key. For more information about getting going with SEMRush and obtaining an API key, see [https://www.semrush.com/api-use/](https://www.semrush.com/api-use/ "https://www.semrush.com/api-use/"). 


Connecting to Your SEMRush Account
----------------------------------


This section enumerates the options in the **Credentials** and **Details** panes in the SEMRush Connector page. The components of the other panes in this page, **Scheduling** and **Name & Describe Your DataSet**, are universal across most connector types and are discussed in greater length in [Adding a DataSet Using a Data Connector](/s/article/360042926274 "Adding a DataSet Using a Data Connector").


### Credentials Pane


This pane contains fields for entering credentials to connect to your SEMRush account. The following table describes what is needed for each field:  




| Field | Description |
| --- | --- |
| API Key | Enter your SEMRush API key.  |


Once you have entered valid SEMRush credentials, you can use the same account any time you go to create a new SEMRush DataSet. You can manage connector accounts in the **Accounts** tab in the Data Center. For more information about this tab, see [Managing User Accounts for Connectors](/s/article/360042926054 "Managing User Accounts for Connectors").


### Details Pane


This pane contains a primary **Reports** menu, along with various other menus which may or may not appear depending on the report type you select.




| Menu | Description |
| --- | --- |
| Report | Select the SEMRush report you want to run. The following reports are available:

|  |  |
| --- | --- |
| Overview | Returns a summary of your SEMRush data. |
| Domain | Returns competitive information for a specified website domain. |
| Keywords | Returns competitive information for a specified keyword or keyword expression. |
| URL | Returns competitive information for a specified landing page URL. |
| Backlinks | Returns backlinks information for a specified regional database. |
| Display Advertising | Returns competitive information for a specified advertiser and publisher.  |

 |
| Domain | Enter the domain of the website you want to retrieve information for, in the format [example.com](http://example.com).  |
| Advertiser Domain | Enter the website domain of the advertiser you want to retrieve information for, in the format [example.com](http://example.com) |
| Publisher Domain | Enter the website domain of the publisher you want to retrieve information for, in the format [example.com](http://example.com) |
| Phrase | Enter a keyword or keyword expression you want to retrieve information for. |
| URL | Enter the URL of a landing page you want to retrieve information for. Use the format <http://example.com>.  |
| Database | Select the regional database you want to retrieve data from. Select none to query all databases. |
| Target | Enter a target domain (e.g. [www.example.com](http://www.example.com)), root domain (e.g. [example.com](http://example.com)), or URL (e.g. <http://example.com>) for the "Backlinks" report.  |
| Target Type | Select the target type for the target you entered in the **Target** field. |
| Target List | Enter a comma-separated list of domains (e.g. [www.example.com](http://www.example.com)), root domains (e.g. [example.com](http://example.com)), and/or URLs (e.g. <http://example.com>) you want to retrieve information for.  |
| Target Type List | Enter a comma-separated list of target types matching the targets you entered for **Target List**. Target types are as follows:* domain
* root-domain
* url

For example, if your target list was [example.com](http://example.com), [http://www.example.com](http://www.example.com "http://www.example.com"), [www.example.com](http://www.example.com),  you would enter root domain, url, domain in this field. |
| Year (Optional) | Enter the year you want to retrieve information for. If you combine this with **Month**, you can pull data for a specific month.




**Note:**The SEMRush databases for the US (Google and Bing), the UK, Canada, Australia, France, Italy, Germany, Spain, Russia, and Brazil have data going back to January 2012. Those for Belgium, Netherlands, Israel, Ireland, Denmark, Finland, Norway, Sweden, Switzerland, Poland, Turkey, Argentina, Mexico, Hong Kong, and Singapore have data going back as far as January 2014. 


 |
| Month (Optional) | Enter the month you want to retrieve information for. If you combine this with **Year**, you can pull data for a specific month.




**Note:**The SEMRush databases for the US (Google and Bing), the UK, Canada, Australia, France, Italy, Germany, Spain, Russia, and Brazil have data going back to January 2012. Those for Belgium, Netherlands, Israel, Ireland, Denmark, Finland, Norway, Sweden, Switzerland, Poland, Turkey, Argentina, Mexico, Hong Kong, and Singapore have data going back as far as January 2014. 


 |
| Report Type | Select a daily or monthly report type. **Daily** returns the daily history of the domain for the last month only. **Monthly** returns the entire monthly history of the domain. |
| Display Positions | Select the display position you want to retrieve information for. Options are as follows:* **New**. Shows keywords for which a domain entered Google's top 20 organic or paid search results.
* **Lost**. Shows keywords that no longer bring a domain into Google's top 20 organic or paid search results.
* **Rise**. Shows keywords that helped a domain to get a higher ranking in Google's top 20 organic or paid search results.
* **Fall**. Shows keywords that are currently helping a domain remain in Google's top 20 organic or paid search results but whose ranking has decreased.
 |
| Device Type | Select a device type you want to retrieve information for. |
| Report Columns | Select the type of data you want to retrieve. If no columns are selected, you will receive the report's default columns. |
| Sort By | Select the type of data you want to sort by. If no column is selected, the default sort order will be used. |
| Display Limit | Enter the number of rows you want to be returned. If you do not enter a value here, Domo requests the first 500 rows of data. The report may contain fewer rows than you request. |


### Other Panes


For information about the remaining sections of the connector interface, including how to configure scheduling, retry, and update options, see [Adding a DataSet Using a Data Connector](/s/article/360042926274 "Adding a DataSet Using a Data Connector").

