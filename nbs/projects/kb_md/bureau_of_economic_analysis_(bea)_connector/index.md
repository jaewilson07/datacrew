---
title: Bureau of Economic Analysis (BEA) Connector
url: https://domo-support.domo.com/s/article/360043432753
linked_kbs:  ['[https://domo-support.domo.com/s/knowledge-base/](https://domo-support.domo.com/s/knowledge-base/)', '[https://domo-support.domo.com/s/](https://domo-support.domo.com/s/)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZammGAC](https://domo-support.domo.com/s/topic/0TO5w000000ZammGAC)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZanLGAS](https://domo-support.domo.com/s/topic/0TO5w000000ZanLGAS)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS](https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS)', '[https://domo-support.domo.com/s/article/360042926274](https://domo-support.domo.com/s/article/360042926274)', '[https://domo-support.domo.com/s/article/360042926054](https://domo-support.domo.com/s/article/360042926054)', '[https://domo-support.domo.com/s/article/360043432753](https://domo-support.domo.com/s/article/360043432753)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS/api-connectors](https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS/api-connectors)', '[https://domo-support.domo.com/s/article/360043429933](https://domo-support.domo.com/s/article/360043429933)', '[https://domo-support.domo.com/s/article/360043429953](https://domo-support.domo.com/s/article/360043429953)', '[https://domo-support.domo.com/s/article/360042925494](https://domo-support.domo.com/s/article/360042925494)', '[https://domo-support.domo.com/s/article/360043429913](https://domo-support.domo.com/s/article/360043429913)', '[https://domo-support.domo.com/s/article/4408174643607](https://domo-support.domo.com/s/article/4408174643607)', '[https://domo-support.domo.com/s/login/](https://domo-support.domo.com/s/login/)']
article_id: 000003626
views: 1,083
created_date: 2022-10-24 21:13:00
last updated: 2022-10-24 22:41:00
---



Intro
-----


The Bureau of Economic Analysis (BEA) is a U.S. government agency that provides official macroeconomic and industry statistics including the gross domestic product of the United States.  To learn more about the BEA API, visit their page ([https://www.bea.gov/API/signup/index.cfm](https://www.bea.gov/API/signup/index.cfm "https://www.bea.gov/API/signup/index.cfm")).  


You connect to your BEA account in the Data Center. This topic discusses the fields and menus that are specific to the BEA connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in  [a DataSet Using a Data Connector](/s/article/360042926274 "Adding a DataSet Using a Data Connector").


Prerequisites
-------------


To connect to your BEA account and create a DataSet, you must have a BEA API key. This API key is provided to you by email after you register at [https://www.bea.gov/API/signup/index.cfm](https://www.bea.gov/API/signup/index.cfm "https://www.bea.gov/API/signup/index.cfm"). 


Connecting to Your BEA Account
------------------------------


This section enumerates the options in the **Credentials** and **Details** panes in the BEA Connector page. The components of the other panes in this page, **Scheduling** and **Name & Describe Your DataSet**, are universal across most connector types and are discussed in greater length in [Adding a DataSet Using a Data Connector](/s/article/360042926274 "Adding a DataSet Using a Data Connector").


### Credentials Pane


This pane contains fields for entering credentials to connect to your BEA account. The following table describes what is needed for each field:  




| Field | Description |
| --- | --- |
| API Key | Enter your BEA API key. This API key is provided to you by email after you register at [https://www.bea.gov/API/signup/index.cfm](https://www.bea.gov/API/signup/index.cfm "https://www.bea.gov/API/signup/index.cfm").  |


Once you have entered valid BEA credentials, you can use the same account any time you go to create a new BEA DataSet. You can manage connector accounts in the **Accounts** tab in the Data Center. For more information about this tab, see [Managing User Accounts for Connectors](/s/article/360042926054 "Managing User Accounts for Connectors").


### Details Pane


This pane contains a primary **Reports** menu, along with various other menus which may or may not appear depending on the report type you select.




| Menu | Description |
| --- | --- |
| Report | Select the BEA report you want to run. The following reports are available:

|  |  |
| --- | --- |
| Direct Investment  | Retrieves income and financial transactions in direct investment that underlie the U.S. balance of payments statistics, and direct investment positions that underlie the U.S. international investment positions. |
| Fixed Assets | Retrieves data from the standard set of Fixed Assets tables as published online. |
| GDP by Industry (Gross Domestic Product by Industry) | Retrieves estimates for value added, gross output, intermediate inputs, KLEMS and employment statistics, in both current and chained (real) dollars. |
| IIP (International Investment Position) | Retrieves data on the U.S. international investment position. BEA's international investment position accounts include the end of the period value of accumulated stocks of U.S. financial assets and liabilities. |
| International Services Trade | Retrieves annual estimates of U.S. trade in services and of services supplied to international markets through U.S. and foreign affiliates of multinational enterprises. EA's statistics on services supplied through affiliates by multinational enterprises are not included in this dataset. |
| ITA (International Transactions) | Retrieves data about international transactions (balance of payments) accounts, which include all transactions between U.S. and foreign residents. |
| Multinational Enterprises (MNEs) | Retrieves data about operations and finances of U.S. parent enterprises and their foreign affiliates and U.S. affiliates of foreign MNEs. |
| NI Underlying Detail | Retrieves detailed estimate data from underlying NIPA series that appear in the national income and product account (NIPA) tables as published in the Survey of Current Business. |
| NIPA (National Income and Product Accounts) | Retrives data from the standard set of NIPA tables as published in the Survey of Current Business. |
| Regional Income (Regional Income and Employment Datasets) | Retrieves income and employment estimates from the Regional Economic Accounts by state, county, and metropolitan area. |
| Regional Product (State and MSA Product Datasets) | Retrives Gross Domestic Product (GDP) estimates from the Regional Economic Accounts by state and metropolitan area. |
| Underlying GDP by Industry | Retrieves underlying GDP data by industry in both current and chained (real) dollars. |

 |
| Industry | Select all industries you want to retrieve data for. |
| Country | Select all countries you want to retrieve data for. |
| Direction of Investment | Select a direction of investment option in the menu. |
| Classification | Select a classification option in the menu.  |
| Year(s) | Select all years you want to retrieve data for. |
| Table(s)/Table Name | Select the table(s) you want to pull into your report. |
| Frequency | Select how you want data in the report to be broken down. For example, if you select **Annual**, data will be broken down by year. |
| Component | Select all components you want to retrieve data for. |
| Types of Investment | Select all types of investment you want to retrieve data for. |
| Area or Country | Select all areas or countries you want to retrieve data for. |
| Affiliation | Select all trade affiliations you want to retrieve data for. |
| Trade Direction | Select all trade directions you want to retrieve data for. |
| Type of Services | Select all service types you want to retrieve data for. |
| Indicator | Select all indicators you want to retrieve data for. |
| Ownership Level | Select an ownership level option in the menu. |
| Non-Bank Affiliates Only | Select whether you want your report to return data for non-bank affiliates only. |
| Show Millions | Select whether a million-dollar detail level should be shown. |
| Geo FIPS | Select all GEO FIPS locations you want to retrieve data for. |


### Other Panes


For information about the remaining sections of the connector interface, including how to configure scheduling, retry, and update options, see [a DataSet Using a Data Connector](/s/article/360042926274 "Adding a DataSet Using a Data Connector").   


FAQ
---


##### How often can the data be updated?


Datasets can be updated as often as once an hour, though should be decreased if rate limit errors are encountered.


##### Are there any API limits that I need to be aware of?


BEA limits users to 1000 API calls per minute.

