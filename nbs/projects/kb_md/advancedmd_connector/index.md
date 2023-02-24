---
    title: AdvancedMD Connector
    url: https://domo-support.domo.com/s/article/360043435853
    linked_kbs:  ['[https://domo-support.domo.com/s/knowledge-base/](https://domo-support.domo.com/s/knowledge-base/)', '[https://domo-support.domo.com/s/](https://domo-support.domo.com/s/)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZammGAC](https://domo-support.domo.com/s/topic/0TO5w000000ZammGAC)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZanLGAS](https://domo-support.domo.com/s/topic/0TO5w000000ZanLGAS)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS](https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS)', '[https://domo-support.domo.com/s/article/360042926274](https://domo-support.domo.com/s/article/360042926274)', '[https://domo-support.domo.com/s/article/360042926054](https://domo-support.domo.com/s/article/360042926054)', '[https://domo-support.domo.com/s/article/360043435853](https://domo-support.domo.com/s/article/360043435853)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS/api-connectors](https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS/api-connectors)', '[https://domo-support.domo.com/s/article/360043429933](https://domo-support.domo.com/s/article/360043429933)', '[https://domo-support.domo.com/s/article/360043429953](https://domo-support.domo.com/s/article/360043429953)', '[https://domo-support.domo.com/s/article/360042925494](https://domo-support.domo.com/s/article/360042925494)', '[https://domo-support.domo.com/s/article/360043429913](https://domo-support.domo.com/s/article/360043429913)', '[https://domo-support.domo.com/s/article/4408174643607](https://domo-support.domo.com/s/article/4408174643607)', '[https://domo-support.domo.com/s/login/](https://domo-support.domo.com/s/login/)']
    article_id: 000003326
    views: 1,147
    created_date: 2022-10-24 21:12:00
    last updated: 2022-10-24 22:42:00
    ---



Intro
-----


AdvancedMD makes software for independent medical practices that lets users integrate physician and patient workflows.  The AdvancedMD Connector allows you to retrieve data about patient demographics and Electronic Health Record (EHR) notes so that your medical practice can measure patient progress over time to see what's working well and help your patients improve as fast as possible. To learn more about the AdvancedMD API, visit their page ([https://www.advancedmd.com/integrations](https://www.advancedmd.com/integrations "https://www.advancedmd.com/integrations")).


You connect to your AdvancedMD account in the Data Center. This topic discusses the fields and menus that are specific to the AdvancedMD connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in [Adding a DataSet Using a Data Connector](/s/article/360042926274).




 


**Note:** This connector is available *only* in Domo's HIPAA environment. If you want to use this connector, you will first need to have your instance moved to the HIPAA environment. Please ask your Domo sales representative for more information.   



Prerequisites
-------------


To connect to your AdvancedMD account and create a DataSet, you must have the following:


* Your AdvancedMD username and password
* Your Advanced MD officecode


Connecting to Your AdvancedMD Account
-------------------------------------


This section enumerates the options in the **Credentials** and **Details** panes in the AdvancedMD Connector page. The components of the other panes in this page, **Scheduling** and **Name & Describe Your DataSet**, are universal across most connector types and are discussed in greater length in [Adding a DataSet Using a Data Connector](/s/article/360042926274 "Adding a DataSet Using a Data Connector").


### Credentials Pane


This pane contains fields for entering credentials to connect to your AdvancedMD account. The following table describes what is needed for each field:  




| Field | Description |
| --- | --- |
| Username | Enter your AdvancedMD username. |
| Password | Enter your AdvancedMD password. |
| Officecode | Enter your AdvancedMD officecode. |


Once you have entered valid AdvancedMD credentials, you can use the same account any time you go to create a new AdvancedMD DataSet. You can manage connector accounts in the **Accounts** tab in the Data Center. For more information about this tab, see [Managing User Accounts for Connectors](/s/article/360042926054 "Managing User Accounts for Connectors").


### Details Pane


This pane contains a primary **Reports** menu, along with various other menus which may or may not appear depending on the report type you select.




| Menu | Description |
| --- | --- |
| Report | Select the AdvancedMD report you want to run. The following reports are available:

|  |  |
| --- | --- |
| EHR Medication | Returns a list of all medications. |
| Geography | Returns general patient geographical data. |
| Patient Demographics | Returns patient specific demographics data. |
| Patient Notes | Returns patient notes from the Electronic Health Record (EHR) system. |

 |
| Template | Select the template. |
| Date Filtering | Select Date Filtering to filter the results to a single day or a date range. |
| Duration | Select whether you want to pull data for a single date (e.g. January 23) or a date range (e.g. January 23-January 31). |
| Report Date | Select whether the report data is for a specific date or for a relative number of days back from today. If you choose ********Specific********, the report will always pull data for the selected date whenever it runs. If you choose ********Relative********, the report will pull data for the entered number of back days whenever it runs. For example, if you selected ********Relative******** and entered 7 for the number of days back, each time the report ran it would pull data for the last 7 days.  |
| Select Specific Date | Select the report date you want to pull data for using the date selector. |
| Days Back | Enter the number of days back that you would like to get data for. Specify either today or 0, yesterday or 1, or today-7 or 7 to get data for 7 days into the past. |
| Start Date | Specify whether the first date in your date range is a specific or relative date. You select the last date in your range in ********End Date.******** |
| End Date | Specify whether the last date in your date range is a specific or relative date. You select the first date in your range in ********Start Date.******** |
| Select Specific Start Date | Select the first date in your date range using the date selector. |
| Select Specific End Date | Select the last date in your date range using the date selector. |
| Days Back to Start From | Enter the number of days back that you would like to get data from (start day). Combine with ********Days Back to End At******** to create a range of represented days.
For example, if you entered 10 for ********Days Back to Start From******** and 5 for ********Days Back to End At********, the report would contain data for 10 days ago up until 5 days ago. |
| Days Back to End At | Enter the number of days back that you would like to get data to (end day). Combine with ********Days Back to Start From******** to create a range of represented days.
For example, if you entered 10 for ********Days Back to Start From******** and 5 for ********Days Back to End At********, the report would contain data for 10 days ago up until 5 days ago. |


### Other Panes


For information about the remaining sections of the connector interface, including how to configure scheduling, retry, and update options, see [Adding a DataSet Using a Data Connector](/s/article/360042926274).

