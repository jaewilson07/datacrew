---
    title: Adobe Analytics 1.4 OAuth Connector
    url: https://domo-support.domo.com/s/article/360042929154
    linked_kbs:  ['[https://domo-support.domo.com/s/knowledge-base/](https://domo-support.domo.com/s/knowledge-base/)', '[https://domo-support.domo.com/s/](https://domo-support.domo.com/s/)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZammGAC](https://domo-support.domo.com/s/topic/0TO5w000000ZammGAC)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZanLGAS](https://domo-support.domo.com/s/topic/0TO5w000000ZanLGAS)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS](https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS)', '[https://domo-support.domo.com/s/article/360042926274](https://domo-support.domo.com/s/article/360042926274)', '[https://domo-support.domo.com/s/article/360042926054](https://domo-support.domo.com/s/article/360042926054)', '[https://domo-support.domo.com/s/article/360043433593](https://domo-support.domo.com/s/article/360043433593)', '[https://domo-support.domo.com/s/article/360042929154](https://domo-support.domo.com/s/article/360042929154)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS/api-connectors](https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS/api-connectors)', '[https://domo-support.domo.com/s/article/360043429933](https://domo-support.domo.com/s/article/360043429933)', '[https://domo-support.domo.com/s/article/360043429953](https://domo-support.domo.com/s/article/360043429953)', '[https://domo-support.domo.com/s/article/360042925494](https://domo-support.domo.com/s/article/360042925494)', '[https://domo-support.domo.com/s/article/360043429913](https://domo-support.domo.com/s/article/360043429913)', '[https://domo-support.domo.com/s/article/4408174643607](https://domo-support.domo.com/s/article/4408174643607)', '[https://domo-support.domo.com/s/login/](https://domo-support.domo.com/s/login/)']
    article_id: 000003549
    views: 2,180
    created_date: 2022-10-24 21:13:00
    last updated: 2022-10-24 22:42:00
    ---



Intro
-----


Adobe Analytics helps you create a holistic view of your business by turning customer interactions into actionable insights. Domo's Adobe Analytics Advanced connector allows you to retrieve data through prebuilt reports or customized reports or by submitting a query to the Adobe Analytics API. You can then combine metrics with data from CRM, POS, or any other system to make faster, better-informed business decisions. To learn more about the Adobe Analytics API, visit their website ([https://marketing.adobe.com/developer/en\_US/documentation](https://marketing.adobe.com/developer/en_US/documentation "https://marketing.adobe.com/developer/en_US/documentation"))  


You connect to the Adobe Analytics API in the Data Center. This topic discusses the fields and menus that are specific to the Adobe Analytics Advanced connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in [Adding a DataSet Using a Data Connector](/s/article/360042926274 "Adding a DataSet Using a Data Connector").




|  |  |
| --- | --- |
| **Primary Use Cases** | Marketing and web analytics |
| **Primary Metrics** | Visits, page views, unique visitors, etc. |
| **Primary Company Roles** | Analysts and executives |
| **Average Implementation Time** | ~60 hours |
| **Ease of Use (on a 1-to-10 scale with 1 being easiest)** | 8 |


API Limitations
---------------


* Only 1 Report Suite can be selected for a given report.
* Adobe only allows 4 elements per request.
* Up to 30 metrics can be selected.
* Segments are mutually exclusive.
* The API returns only the top ten results for an element by default, based on the first selected metric selected.


Prerequisites
-------------


To connect to the Adobe Analytics and create a DataSet, you must have the Client ID and Client Secret associated with your Adobe Analytics account.


Visit [Adobe Oauth Connection](https://www.adobe.io/authentication/auth-methods.html#!AdobeDocs/adobeio-auth/master/AuthenticationOverview/OAuthIntegration.md "https://www.adobe.io/authentication/auth-methods.html#!AdobeDocs/adobeio-auth/master/AuthenticationOverview/OAuthIntegration.md") documentation to learn more about obtaining your Client ID and Client Secret.


### Creating a new OAuth project in Adobe Developer Console


To create a new OAuth project in Adobe Developer Console, do the following:


1. Log into [https://console.adobe.io/projects](https://console.adobe.io/projects "Follow link").


2. Click **Create new project** button.


![New_Project_button.png](New_Project_button.png)


3. Click on **Add API** to start using the Adobe services.


![Add_API.png](Add_API.png)


4. The APIs available to you will be listed in the **Add an API** window. Select **Adobe Analytics**. 


![Add_an_API-Adobe_Analytics.png](Add_an_API-Adobe_Analytics.png)


5. Now, you need to select the authentication type. Select **OAuth** here.


![OAuth-service_account_OAuth.png](OAuth-service_account_OAuth.png)


6. Select the **Web**platform to configure the API.


    Enter the **Default redirect URI** as **<https://oauth.domo.com/api/data/v2/oauth/providers/adobe-analytics-oauth/exchange>**  
    Enter the **Redirect URI pattern** as **<https://oauth/.domo/.com/api/data/v2/oauth/providers/adobe-analytics-oauth/exchange>**


7. Click **Save configured API**.


Connecting to Your Adobe Analytics OAuth Account
------------------------------------------------


This section enumerates the options in the **Credentials** and **Details** panes in the Adobe Analytics OAuth Connector page. The components of the other panes in this page, **Scheduling** and **Name & Describe Your DataSet**, are universal across most connector types and are discussed in greater length in [Adding a DataSet Using a Data Connector](/s/article/360042926274 "Adding a DataSet Using a Data Connector").


### Credentials Pane




This pane contains fields for entering credentials to connect to the Adobe Analytics API. The following table describes what is needed for each field:  




| Field | Description |
| --- | --- |
| Client ID | Enter the client ID associated with your Adobe Analytics account. |
| Client Secret | Enter the client secret associated with your Adobe Analytics account. |


Once you have entered valid credentials, you can use the same account any time you go to create a new Adobe Analytics 1.4 OAuth DataSet. You can manage connector accounts in the **Accounts**tab in the Data Center. For more information about this tab, see [Managing User Accounts for Connectors](/s/article/360042926054 "Managing User Accounts for Connectors").





### Details Pane


This pane contains two primary menus, **Report Suite** and **Report Type**, along with various other menus which may or may not appear depending on the report type you select.








#### Primary Menus




| Menu | Description |
| --- | --- |
| Company | Enter your company's name as featured on Adobe Analytics, which is used as a parameter for the Company.GetEndpoint method (see [https://github.com/AdobeDocs/analytics-1.4-apis/blob/master/docs/admin-api/methods/company/r\_GetEndpoint.md](https://github.com/AdobeDocs/analytics-1.4-apis/blob/master/docs/admin-api/methods/company/r_GetEndpoint.md "https://github.com/AdobeDocs/analytics-1.4-apis/blob/master/docs/admin-api/methods/company/r_GetEndpoint.md")) |
| Report Suite | Select the Adobe Analytics Report Suite you want to pull data from. |
| Report Type | Select a report type. The report type determines the set of inputs needed to configure the DataSet.
Report types are as follows:

|  |  |
| --- | --- |
| Easy - Predefined | Lets you select from a number of predefined Adobe Analytics reports. |
| Intermediate - Custom | Lets you specify the elements, metrics, segments, and date-time information for your report. |
| Advanced - Query | Lets you pull data using an Adobe Analytics Web Service API Explorer Query. For more information about queries, see [https://marketing.adobe.com/developer/api-explorer#Report.Queue](https://marketing.adobe.com/developer/api-explorer#Report.Queue "https://marketing.adobe.com/developer/api-explorer#Report.Queue"). |

 |





#### "Easy - Predefined" Report Type Options




| Option | Description |
| --- | --- |
| Predefined Report | Select the report you want to run. For a list of report types, see the next section. |
| Backfill | Select the number of days back that should backfill the first time the report is run. |
| Report | Select a predefined report. These reports are available *only* when you select **Easy - Predefined**as your **Report Type**.

|  |  |
| --- | --- |
| Base Metrics | Returns data about page views; average time spent on website; unique visitors by month, week, and day; new visitors; etc. |
| Commerce Metrics | Returns data about number of visits, orders, checkouts, revenue, new and returning customers, etc. |
| Existing Customer Campaigns | Returns data about visits, orders, and revenue, broken down by existing customer campaign. |
| Existing Customer Products | Returns data about existing customer visits, orders, checkouts, and revenue, broken down by product. |
| Mobile Device Types | Returns data about mobile views, visits, and daily unique visitors, broken down by device type. |
| Mobile Metrics | Returns metrics about mobile device usage, such as device type, OS, views, visits, and daily unique visitors. |
| Natural Search Conversion | Returns data about number of visits, orders, and revenue, broken down by natural search keyword. |
| Natural Search Visits | Returns data about number of visits, page views, and daily unique visitors, broken down by natural search keyword. |
| New Visitor Best Campaigns | Returns data about visits, orders, revenue, and units, broken down by new visitor campaign. |
| New Visitor Geo | Returns data about visits, orders, revenue, and units, broken down by region. |
| New Visitor Geo Country | Returns data about visits, orders, revenue, and units, broken down by country. |
| New Visitor Keywords | Returns data about visits, orders, revenue, and units, broken down by paid search keyword. |
| New Visitor Products | Returns data about new customer visits, orders, checkouts, revenue, units, etc., broken down by product. |
| New Visitor TrafficSource | Returns data about visits, orders, revenue, and units, broken down by referrer type. |
| Page Effectiveness | Returns data about page visits, entries and exists, bounces, and bounce rate, broken down by page.  |
| Page Metrics | Returns data about page views, visits, daily unique visitors, and exists, broken down by page. |
| Paid Search Conversion | Returns data about visits, orders, and revenue, broken down by paid search keyword. |
| Paid Search Visits | Returns data about page views, daily unique visitors, and visits, broken down by paid search keyword. |
| Products and Categories | Returns data about visits, orders, and revenue, broken down by product and category.  |

 |





#### "Intermediate - Custom" Report Type Options




| Option | Description |
| --- | --- |
| Elements | Select up to four element names.
An *element* is a structure that breaks down a report's metrics data. For example, you can generate a report that breaks down page views (metric) by the browsers used to access the page (element). The resulting report lists page views by browser type.
By default the Adobe Analytics API only returns the top 10 elements. If you want to view more, you can do so by entering information for the additional elements in the **Additional Element Information**field.
For more information about elements, see [https://marketing.adobe.com/developer/documentation/analytics-reporting-1-4/elements](https://marketing.adobe.com/developer/documentation/analytics-reporting-1-4/elements "https://marketing.adobe.com/developer/documentation/analytics-reporting-1-4/elements"). |
| Additional Element Information | Enter any additional element information using the JSON format defined in the API Explorer ([https://marketing.adobe.com/developer/api-explorer#Report.Queue](https://marketing.adobe.com/developer/api-explorer#Report.Queue "https://marketing.adobe.com/developer/api-explorer#Report.Queue")).
For example:
`{"top":50,"selected":[],"classifications":[],"id":"page","name":"Page"}`
This parameter is described in detail later in this topic: [Understanding the Additional Elements field](https://knowledge.domo.com/Connect/Connecting_to_Data_with_Connectors/Configuring_Each_Connector/Connectors_for_Analytics/Adobe_Analytics_Advanced_Connector#Understanding_The_.22Additional_Elements.22_Field "Adobe Analytics Advanced Connector"). |
| Segments | Select segment definitions for your report. You can select as many segments as you want. For more information about segments, see the API Explorer documentation ([https://marketing.adobe.com/developer/api-explorer#Report.Queue](https://marketing.adobe.com/developer/api-explorer#Report.Queue "https://marketing.adobe.com/developer/api-explorer#Report.Queue")).





**Note:**Although you have the ability to select as many segments as you would like, be cautious about what those segments are doing to the overall picture of your data. Selecting segments will change the grouping of your data and can lead to unexpected results. 


 |
| Inline Segments | Enter inline segment information using the JSON format defined in the API Explorer ([https://marketing.adobe.com/developer/api-explorer#Report.Queue](https://marketing.adobe.com/developer/api-explorer#Report.Queue "https://marketing.adobe.com/developer/api-explorer#Report.Queue")). 
Inline segments allow you to create a segment in the connector without having to define it first in Adobe Analytics. For example, if I wanted to segment (filter) the data to show only the Home Page and Shopping Cart, I would populate the inline segmentation window with the below JSON snippet.
`{ "id": "page","selected": ["Home Page", "Shopping Cart"]}` 
You can also apply logic to your filtering.
For more information about inline segments, see <https://marketing.adobe.com/developer/documentation/sitecatalyst-reporting/c-segments>. |
| Metrics | Select up to 30 metrics for your report. For more information about Adobe Analytics metrics, see [https://github.com/AdobeDocs/analytics-1.4-apis/blob/master/docs/reporting-api/metrics.md](https://marketing.adobe.com/developer/documentation/analytics-reporting-1-4/metrics "https://marketing.adobe.com/developer/documentation/analytics-reporting-1-4/metrics").
Some combinations of metrics will lead to errors. Adobe has provided a list of metrics that are blacklisted from being used together. [https://github.com/AdobeDocs/analytics-1.4-apis/blob/master/docs/reporting-api/combinations.md](https://github.com/AdobeDocs/analytics-1.4-apis/blob/master/docs/reporting-api/combinations.md "https://github.com/AdobeDocs/analytics-1.4-apis/blob/master/docs/reporting-api/combinations.md") |
| Date Granularity | Select a date grain for the report. This determines whether the data is broken down by day, by week, etc. |
| Duration | Specify whether the data in this report is for a single date or a range of dates. |
| Report Date | Select whether the data in the report is for a specific date or for a relative date based on the selected **Date Granularity**. For example, if you selected **Date Granularity > Day**, you could select **Today** as your report date. Then, each time the data updated, it would show date for the current date. |
| Date Offset | Enter the number of periods back that will be used to offset your relative date. The period is based on your selected Date Granularity.
For example, if you selected **Date Granularity > Day** and **Report Date > Yesterday**, then entered 2 for **Date Offset**, the report would pull data for three days in the past (yesterday minus two days). |
| Select Specific Date | Select the date you want to retrieve data for. |
| Date From | Specify whether the first date in your date range is a specific or relative date. You select the last date in your range in **Date To**. Options in these menus are determined by the selected **Date Granularity**.
For example, if you selected **Date Granularity > Week**, you could then select **Date From > Last Week** and **Date To > This Week**. Each time your report updated, it would then show data for this week as well as last week. |
| Date To | Specify whether the last date in your date range is a specific or relative date. You select the first date in your range in **Date From**. Options in these menus are determined by the selected **Date Granularity**.
For example, if you selected **Date Granularity > Week**, you could then select **Date From > Last Week** and **Date To > This Week**. Each time your report updated, it would then show data for this week as well as last week. |
| Date From Offset | Enter the number of periods back that will be used to offset the first date in your date range. The period is based on your selected **Date Granularity**.
For example, if you selected **Date Granularity > Week** and **Date From > Last Week**, then entered 2 for **Date From Offset**, the first date in the date range would be set to three weeks in the past (last week minus two weeks). |
| Date To Offset | Enter the number of periods back that will be used to offset the last date in your date range. The period is based on your selected **Date Granularity**.
For example, if you selected **Date Granularity > Week** and **Date To > This Week**, then entered 2 for **Date To Offset**, the last date in your date range would be set to two weeks in the past (this week minus two weeks). |
| Select Specific Date From | Select the first date in your date range. |
| Select Specific Date To | Select the last date in your date range. |
| Time Zone | Select the UTC time zone for your data. |
| Include All Time Zones | Check this box if you want all time zones included in your report. |
| Backfill | Enter the number of periods back (based on the selected **Date Granularity**) that should backfill the first time the report is run. |





#### "Advanced - Query" Report Type Options




| Option | Description |
| --- | --- |
| Query | Enter an Adobe Analytics Web Service API Explorer Query to pull data for your report. For more information about queries, see [https://marketing.adobe.com/developer/api-explorer#Report.Queue](https://marketing.adobe.com/developer/api-explorer#Report.Queue "https://marketing.adobe.com/developer/api-explorer#Report.Queue").
For example:
`{"reportDescription":{"reportSuiteID":"thankyoudev","dateFrom":"2014-09-07","dateTo":"2014-09-07","dateGranularity":"Day","elements":[{"top":50,"selected":[],"classifications":[],"id":"page","name":"Page"}],"metrics":[{"decimals":0,"id":"pageviews","name":"Page Views"},{"decimals":0,"id":"visits","name":"Visits"}],"segments":[],"locale":"en_US"}}` |






### Other Panes


For information about the remaining sections of the connector interface, including how to configure scheduling, retry, and update options, see [Adding](https://knowledge.domo.com/Connect/Connecting_to_Data_with_Connectors/General_Guide_to_Connecting_with_Connectors/01Adding_a_DataSet_Using_a_Data_Connector "Adding a DataSet Using a Data Connector")[a DataSet Using a Data Connector](https://knowledge.domo.com/Connect/Connecting_to_Data_with_Connectors/General_Guide_to_Connecting_with_Connectors/01Adding_a_DataSet_Using_a_Data_Connector "Adding a DataSet Using a Data Connector").






Understanding The "Additional Elements" Field
---------------------------------------------


The following JSON snippet contains all of the code needed to utilize the **Additional Elements** parameter of the connector. You just need to replace *string* & *int* with the values you choose. You can also delete the sections of this JSON that you will not be using. Examples on how to use this will be discussed in the sections that follow.


  
`{  
"id":"*string*",  
"classification":"*string*",  
"top":"*int*",  
"startingWith":"*int*",  
"search":{  
"type":"*string*",  
"keywords":[  
"*string*"  
],  
}  
}`




### Using Additional Elements to Increase Your Top Results


By default, the Adobe Analytics API only return the top 10 results for the selected element. You can increase the number of top results using **Additional Elements**. For example, to increase the limit to 100 you would add the following to the **Additional Elements**field:


`{“top”:100,  
“id”:”page”}`


*"*id" is the ID of the element you want. There is no upper limit to the “Top” number but the less you pull back in using the query, the more efficient it will be. You can do this for multiple elements by separating them with a comma.


`{“top”:100,  
“id”:”page”},  
{“top”:100,  
“id”:”region”}` 





### Using Additional Elements to Search for Keywords in Elements


You can use **Additional Elements**to search for keywords in elements by inputting properly formatted JSON. You can search using AND, OR, and NOT operators. Below is a table that describes these operators.




| Value | Description |
| --- | --- |
| AND | Combines multiple search terms to return results that have all of the search keywords. |
| OR | Combines multiple search terms to return results that match any of the search keywords. |
| NOT | Excludes the selected keywords from the search results. |


The following example searches for the top three pages that have “help” OR “faq” in the page name/URL. You can also do an AND search by replacing the “OR” with “AND”. 


`{  
"id": "page",  
"top": 3,  
"search": {  
"type": "OR",  
"keywords": ["help","faq"]  
}  
}`


You can also use special characters like the following to increase the power of your search:




| Special Character | Description |
| --- | --- |
| \* | Wild Card. Add to the beginning or end of keywords (e.g. page\*.html). |
| ^ | Starts With. Add to the beginning of your keyword/string to find results that start with this keyword/string (e.g. ^http://). |
| $ | Ends With. Add to the end of your keyword/string to find results that end with this keyword/string (e.g. .html$) |


Here is an example of a search that uses these characters:


`{  
"id": "page",  
"top": 3,  
"search": {  
"type": "OR",  
"keywords": [“help*","^faq"]  
}  
}`


Exact keyword matches can be obtained by placing the "starts with" and "ends with" special characters at the beginning and ending of the keyword:


`{  
"id": "page",  
"top": 3,  
"search": {  
"type": "OR",  
"keywords": ["^faq$"]  
}  
}`





### Adding Classifications to the JSON Syntax


If you wish to do any of the above advanced functions with a SAINT Classification then you need to add the classification to the JSON syntax, as shown in the following example:  
  
`{  
"id": “page",  
“classification”:”region”,  
"top": 3  
}`






Troubleshooting
---------------




### Unique Metrics


One of the most frequently encountered issues with the Adobe Analytics connector involves unique metrics, such as Unique Visitors, Unique Pageviews, etc. Unique metrics are non-additive and need to be pulled from the connector at the same level of granularity they will be viewed at. This is because if you pull these metrics in a different granularity when the numbers are rolled up, they will no longer be accurate. For example, say we have a visitor to our site, Visitor 1. This individual visits the site once a day for a week. When we go to report how many people visited the site in a week, if we pull the data using a day granularity, Visitor 1 is counted 7 times. However, if we pull the data using a week granularity, Visitor 1 is only counted once, giving us an accurate count of how many individuals visited the page in a week but NOT how many times the site was visited.





### API Explorer


Adobe Analytics has an API Explorer that you can use to run your report and check the results. It is available at [https://marketing.adobe.com/developer/api-explorer](https://marketing.adobe.com/developer/api-explorer "https://marketing.adobe.com/developer/api-explorer").






Tips and Tricks
---------------


* Make sure to leverage the Additional Element Information field, as explained above.
* Classifications are identified by an “->” in the Element list.
* The fewer elements per data source, the better.
* Try and stay below 10 metrics per data source.
* Stagger the runtimes of your data sources.
* Learn how to use the Adobe Analytics API explorer.
* Reference the Adobe API documentation (URL is provided under [Helpful Links](/s/article/360043433593 "Adobe Analytics Advanced Connector")).
* Segments will lengthen runtimes.
* Although you have the ability to select as many segments as you would like, be cautious about what those segments are doing to the overall picture of your data. Selecting segments will change the grouping of your data and can lead to unexpected results.
* sProps and eVars cannot be pulled together.





FAQ
---


#### Q: When should I use this connector?


A: Connect your customer insight data to Domo using V1.4 of Adobe's API and authenticating using OAuth. 




#### Q: I successfully created an Adobe Analytics OAuth account, but about two weeks later I got an alert: "Account Adobe Analytics OAuth Account has been Deactivated". Why is this happening and what can I do about it?


A: Adobe Analytics OAuth has a refresh token that expires after two weeks (see [Adobe documentation](https://www.adobe.io/authentication/auth-methods.html#!AdobeDocs/adobeio-auth/master/OAuth/OAuth.md#exchanging-refresh-tokens "https://www.adobe.io/authentication/auth-methods.html#!AdobeDocs/adobeio-auth/master/OAuth/OAuth.md#exchanging-refresh-tokens") for details.) This causes Adobe OAuth to no longer authenticate after two weeks. This is an Adobe limitation. Older datasets use WSSE authentication (Username: Company, Password), but Adobe has deprecated WSSE authentication. Please contact Adobe support to request a resolution to this issue.



```
**Note:** JWT connector which is recommended by Adobe does not need to authenticate after two weeks
```




#### Q: Do I need a certain kind of account with the data service to set up the connector?


A: It is best if your account has the Admin access. At the very least you need access to the report suites you want as well as access to retrieve elements, metrics and segments from the API.





#### Q: My Adobe Analytics OAuth datasets are failing intermittently and displaying unhelpful error messages like "Unable to complete report at this time. Please try again later." What should I do?


A: This error originates on Adobe’s end. Unfortunately, it is nothing we at Domo have direct control over, but we are working with Adobe to improve these types of errors. That said, you can take steps to alleviate the occurrence of these errors, which include reducing the number of connectors, the frequency at which they try to pull data, and the size of their requests. Attempting to schedule requests to run at different times can also help. Another possible solution is to use the “retry” setting in the connector.





#### Q: What do I do if I need to include more than 4 elements in my Adobe Analytics OAuth DataSet?


A: Run Adobe's Data Warehouse reports. These do not use the Domo connector; rather they leverage scheduled emails to import data into Domo. These reports can use SFTP. Note that results may vary slightly from the Adobe Analytics front end.





#### Q: My report takes a long time. How do I speed up my report?


A: In case of the Intermediate-Custom report, the number of elements selected and the parameters in the Additional Element Information text box can make a big difference in your report performance. Select the minimum number of elements needed.


It is also possible to have a number of reports queued up in Adobe Analytics that is preventing your report from being finished. You can use the Queue report to see what reports are currently being processed by Adobe.


If you have a large number of datasets, try to stagger their execution times so that the datasets will not clog up Adobe's queue all at once.





#### Q: Is there a way to see what data is being returned from the Adobe Analytics API?


A: Adobe Analytics has an API Explorer that you can use to run your report and check the results. It is available at [https://marketing.adobe.com/developer/api-explorer](https://marketing.adobe.com/developer/api-explorer "https://marketing.adobe.com/developer/api-explorer").





#### Q: Is there any limit to the number of Elements that can be retrieved?


A: Adobe's API has a 4 element limit and only 50000 rows per element can be retrieved.





#### Q: What is the workflow for pulling data from Adobe?


A: The process used by Domo to pull Adobe data is as follows:


1. **Queue report** -- Domo sends Adobe the parameters of the desired report. [https://github.com/AdobeDocs/analytics-1.4-apis/blob/master/docs/reporting-api/methods/r\_Queue.md](https://github.com/AdobeDocs/analytics-1.4-apis/blob/master/docs/reporting-api/methods/r_Queue.md "https://github.com/AdobeDocs/analytics-1.4-apis/blob/master/docs/reporting-api/methods/r_Queue.md")
2. **Get report ID**-- Domo receives a report ID.
3. **Wait for report to be done** -- Domo watches Adobe's queue and wait for the report to be done. [https://github.com/AdobeDocs/analytics-1.4-apis/blob/master/docs/reporting-api/methods/r\_GetQueue.md](https://github.com/AdobeDocs/analytics-1.4-apis/blob/master/docs/reporting-api/methods/r_GetQueue.md "https://github.com/AdobeDocs/analytics-1.4-apis/blob/master/docs/reporting-api/methods/r_GetQueue.md")
4. **Pull report** -- When the report no longer appears in the queue, Domo uses the report ID received in step 2 to ask for the data of the report. [https://github.com/AdobeDocs/analytics-1.4-apis/blob/master/docs/reporting-api/methods/r\_Get.md](https://github.com/AdobeDocs/analytics-1.4-apis/blob/master/docs/reporting-api/methods/r_Get.md "https://github.com/AdobeDocs/analytics-1.4-apis/blob/master/docs/reporting-api/methods/r_Get.md")






Helpful Links
-------------


The following links provide access to pages on Adobe's website with helpful information:


API Overview: <https://marketing.adobe.com/developer/get-started/introduction/c-introduction>


Adobe Analytics API Explorer: <https://marketing.adobe.com/developer/api-explorer>


Inline Segmentation: <https://marketing.adobe.com/developer/documentation/sitecatalyst-reporting/c-segments>


High-Level Schema Overview: <https://marketing.adobe.com/developer/blog/high-level-overview-of-the-schema-of-adobe-analytics>


Pathing and Fallout Reports: <https://marketing.adobe.com/developer/documentation/analytics-reporting-1-4/pathing>


Data Warehouse Reports: <https://blogs.adobe.com/digitalmarketing/analytics/omniture-datawarehouse-inside-omniture-sitecatalyst/>



