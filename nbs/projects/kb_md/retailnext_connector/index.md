---
    title: RetailNext Connector
    url: https://domo-support.domo.com/s/article/360043432293
    linked_kbs:  ['[https://domo-support.domo.com/s/knowledge-base/](https://domo-support.domo.com/s/knowledge-base/)', '[https://domo-support.domo.com/s/](https://domo-support.domo.com/s/)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZammGAC](https://domo-support.domo.com/s/topic/0TO5w000000ZammGAC)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZanLGAS](https://domo-support.domo.com/s/topic/0TO5w000000ZanLGAS)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS](https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS)', '[https://domo-support.domo.com/s/article/360042926274](https://domo-support.domo.com/s/article/360042926274)', '[https://domo-support.domo.com/s/article/360042926054](https://domo-support.domo.com/s/article/360042926054)', '[https://domo-support.domo.com/s/article/360043432293](https://domo-support.domo.com/s/article/360043432293)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS/api-connectors](https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS/api-connectors)', '[https://domo-support.domo.com/s/article/360043429933](https://domo-support.domo.com/s/article/360043429933)', '[https://domo-support.domo.com/s/article/360043429953](https://domo-support.domo.com/s/article/360043429953)', '[https://domo-support.domo.com/s/article/360042925494](https://domo-support.domo.com/s/article/360042925494)', '[https://domo-support.domo.com/s/article/4408174643607](https://domo-support.domo.com/s/article/4408174643607)', '[https://domo-support.domo.com/s/article/360043429913](https://domo-support.domo.com/s/article/360043429913)', '[https://domo-support.domo.com/s/login/](https://domo-support.domo.com/s/login/)']
    article_id: 000003669
    views: 2,133
    created_date: 2022-10-24 21:14:00
    last updated: 2022-10-24 22:42:00
    ---



Intro
-----


RetailNext is a leading provider of in-store analytics. The RetailNext connector allows you to bring in all kinds of data, from foot traffic to total transaction count, about your store. It also provides data from locations, times and days to fuel complicated analysis. To learn more about the RetailNext API, visit their page ([https://retailnext.atlassian.net/wik.../174817482/API](https://retailnext.atlassian.net/wiki/spaces/PUBLICDOCS/pages/174817482/API "https://retailnext.atlassian.net/wiki/spaces/PUBLICDOCS/pages/174817482/API")).


You connect to your RetailNext account in the Data Center. This topic discusses the fields and menus that are specific to the RetailNext connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in [Adding a DataSet Using a Data Connector](/s/article/360042926274 "Adding a DataSet Using a Data Connector").


Prerequisites
-------------


To connect to your RetailNext account and create a DataSet, you must have the following:


* Your RetailNext access key
* Your RetailNext secret key


To obtain these credentials, reach out to your RetailNext account representative. 


Connecting to Your RetailNext Account
-------------------------------------


This section enumerates the options in the **Credentials** and **Details** panes in the RetailNext Connector page. The components of the other panes in this page, **Scheduling** and **Name & Describe Your DataSet**, are universal across most connector types and are discussed in greater length in [Adding a DataSet Using a Data Connector](/s/article/360042926274 "Adding a DataSet Using a Data Connector").


### Credentials Pane


This pane contains fields for entering credentials to connect to your RetailNext account. The following table describes what is needed for each field:  




| Field | Description |
| --- | --- |
| Access Key | Enter your RetailNext access key. |
| Secret Key | Enter your RetailNext secret key. |


Once you have entered valid RetailNext credentials, you can use the same account any time you go to create a new RetailNext DataSet. You can manage connector accounts in the **Accounts** tab in the Data Center. For more information about this tab, see [Managing User Accounts for Connectors](/s/article/360042926054 "Managing User Accounts for Connectors").


### Details Pane


This pane contains a primary **Reports** menu, along with various other menus which may or may not appear depending on the report type you select.




| Menu | Description |
| --- | --- |
| Report | Select the RetailNext report you want to run. The following reports are available:

|  |  |
| --- | --- |
| All Transactions | Returns the total number of sales and return transactions for a specified period. |
| Average Age | Returns the average age of shoppers who enter the store. |
| Average Dwell Time | Returns the average amount of time shoppers stand in a specified dwell zone.  |
| Average Transaction Value (ATV) | Returns the average net sales amount per transaction. |
| Average Unit Retail (AUR) | Returns the average net sales amount per item sold. |
| Average Units per Transaction (UPT) | Returns the average number of items purchased per transaction. |
| Conversation Rate | Returns the percentage of shoppers visiting the store who make a purchase. |
| Dwell Conversion Rate | Percentage of shoppers dwelling in a location who purchase an item from that location. |
| Dwells | Returns the number of shoppers who stand in a specified dwell zone for longer than a defined minimum amount of time. |
| Engagement Rate | Returns the percentage of shoppers walking by a location who stop at that location. |
| Exposure Rate | Returns the percentage of shoppers who walk by a specific location as compared to the total store traffic. |
| Female Average Age | Returns the average age of female shoppers who enter the store. |
| Female Percentage | Returns the percentage of shoppers who are female. |
| Guest Wi-Fi Uptake | Returns the ratio of wi-fi users to detected devices in the store. |
| Labor Hours | Returns the total number of hours worked by staff members. |
| Male Average Age | Returns the average age of male shoppers who enter the store. |
| Male Percentage | Returns the percentage of shoppers who are male. |
| MDD Capture Rate | Returns the percentage of people passing by the store who enter the store. |
| Mobile Device Detection Rate | Returns the percentage of shoppers who enter the store with a detected mobile device. |
| Net Items | Returns the number of items sold after subtracting returns for a specified period. |
| Net Transactions Value | Returns the net transactions value. |
| New Guest Wi-Fi Users | Returns the number of wi-fi users enrolling for the first time during a specified period. |
| New Shopper Percentage | Returns the percentage of shoppers visiting the store for the first time.  |
| New Shoppers | Returns the number of new shoppers in the store. |
| Number of Visits (non-unique) | Returns the total number of visits to your store.  |
| Passby Traffic | Returns the number of people who walk by the store, including those who enter. |
| Repeat Guest Wi-Fi Users | Returns the number of unique wi-fi users who did not enroll for the first time during a specified period. |
| Repeat Shopper Percentage | Returns the percentage of shoppers who have visited the store before today. |
| Repeat Shoppers | Returns the number of repeat shoppers. |
| Return Amount | Returns your net return amount. |
| Return Items Count | Returns the total number of returned items. |
| Return Transactions | Returns the total number of return transactions for a specified period. |
| Return Transactions Value | Returns the total value of your return transactions. |
| Sales | Returns the sales amount for the store, rounded. |
| Sales Amount | Returns the total sales amount for the store. |
| Sales Items Count | Returns the total number of sales items. |
| Sales Per Square Unit | Returns the net sales per square unit of space. |
| Sales Transactions | Returns the total number of sales transactions for a specified period. |
| Sales Transactions Values | Returns the total value of sales transactions. |
| Shoppers Per Labor Hour | Returns the ratio of shoppers who entered the store to labor hours. |
| Shopper Yield | Returns the average net sale amount for each shopper visiting the store within a specified period. |
| Staff Per Hour | Returns the number of staff members present in the stour per hour. |
| Staff Productivity | Returns the net sales per staff hour. |
| Staff Traffic In | Returns the number of staff members who walk into the store. |
| Staff Traffic Out | Returns the number of staff members who walk out of the store. |
| Total Guest Wi-Fi Users | Returns the number of unique wi-fi users for a specified period. |
| Transactions per Square Unit | Returns the total number of sales transactions per square unit of space. |
| Unique Passby Traffic | Returns the number of individual shoppers who walk by the store (each person is counted only once for the date range selected). |
| Unique Traffic | Returns the number of individual shoppers who enter the store (each person is counted only once for the date range selected). |
| Unique Wireless Events Detected Inside | Returns the unique wireless events detected in the store. |
| Unique Wireless Passby Events | Returns the number of unique wireless passby events. |
| Visit Frequency | Returns the average number of times a shopper enters the store within a specified time period. |
| Wireless New Visitors | Returns the number of new wireless devices. |
| Wireless New Visitors Rate | Returns the percentage of new wireless devices. |
| Wireless Passby Capture Rate | Returns the percentage of unique wireless passby events. |
| Wireless Passby Events | Returns the number of wireless passby events. |
| Wireless Repeat Visitors | Returns the number of repeat wireless devices. |
| Wireless Repeat Visitors Rate | Returns the percentage of repeat wireless devices. |
| Wireless Visit Frequency | Returns the wireless visit frequency. |

 |
| Locations | Select at least one location to return information for. |
| Start Date | Specify whether the first date in your date range is a specific or relative date.  |
| End Date | Specify whether the second date in your date range is a specific or relative date.  |
| Select Specific Start Date | Select the first date in your date range.  |
| Select Specific End Date | Select the second date in your date range.  |
| Days Back to Start From | Enter the number of the farthest day back that should be represented in the report. Combine with **Days Back to End At** to create a range of represented days.
For example, if you entered 10 for **Days Back to Start From** and 5 for **Days Back to End At**, the report would contain data for 10 days ago up until 5 days ago. |
| Days Back to End At | Enter the number of the most recent day back that should be represented in the report. Combine with **Days Back to Start From** to create a range of represented days.
For example, if you entered 10 for **Days Back to Start From** and 5 for **Days Back to End At**, the report would contain data for 10 days ago up until 5 days ago. |
| Choose Time | Select whether you want your report to show data for hours in which your store is open or specific hours you choose. |
| Choose Start Time | Select the desired start time for the data in your report. |
| Choose End Time | Select the desired end time for the data in your report. |


### Other Panes


For information about the remaining sections of the connector interface, including how to configure scheduling, retry, and update options, see [Adding a DataSet Using a Data Connector](/s/article/360042926274 "Adding a DataSet Using a Data Connector").


FAQs
----


##### How frequently will my data update?


As often as needed.


##### Are there any API limits I should be aware of?


No.

