---
title: Salesforce Dashboard App
url: https://domo-support.domo.com/s/article/360042934114
linked_kbs:  ['[https://domo-support.domo.com/s/knowledge-base/](https://domo-support.domo.com/s/knowledge-base/)', '[https://domo-support.domo.com/s/](https://domo-support.domo.com/s/)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZampGAC](https://domo-support.domo.com/s/topic/0TO5w000000ZampGAC)', '[https://domo-support.domo.com/s/topic/0TO5w000000Zan9GAC](https://domo-support.domo.com/s/topic/0TO5w000000Zan9GAC)', '[https://domo-support.domo.com/s/article/360042934114](https://domo-support.domo.com/s/article/360042934114)', '[https://domo-support.domo.com/s/topic/0TO5w000000Zan9GAC/available-apps](https://domo-support.domo.com/s/topic/0TO5w000000Zan9GAC/available-apps)', '[https://domo-support.domo.com/s/article/360043429933](https://domo-support.domo.com/s/article/360043429933)', '[https://domo-support.domo.com/s/article/360043429953](https://domo-support.domo.com/s/article/360043429953)', '[https://domo-support.domo.com/s/article/360042925494](https://domo-support.domo.com/s/article/360042925494)', '[https://domo-support.domo.com/s/article/360043429913](https://domo-support.domo.com/s/article/360043429913)', '[https://domo-support.domo.com/s/article/4408174643607](https://domo-support.domo.com/s/article/4408174643607)', '[https://domo-support.domo.com/s/login/](https://domo-support.domo.com/s/login/)']
article_id: 000004169
views: 1,118
created_date: 2022-10-24 21:26:00
last updated: 2022-10-24 22:42:00
---



Intro
-----


CRM software is critical to any business's operations, and Salesforce leads the way in the market. The Salesforce Dashboard provides a summary of lead sources, geographies, close rates, sales pipeline, rep performance, and much more.


Usage
-----


Business questions that can be answered:


* Where are most of my prospects coming from?
* What can I do today to exceed my sales goals?
* Who are my top performing sales reps?


Authentication
--------------


You need the following to authenticate:


* A Salesforce environment to authenticate against (i.e. [login.salesforce.com](http://login.salesforce.com) or [test.salesforce.com](http://test.salesforce.com))
* Salesforce username
* Salesforce password


Your instance of Salesforce must include API access or have it enabled separately.


Dashboard Reports
-----------------


For report descriptions, see Salesforce Connector.


Report Configuration / Report Details
-------------------------------------


The selectable reports will need to be configured as followed:




| Data | Scheduling (Change update settings) | Parameter(s) | Selection |
| --- | --- | --- | --- |
| Browse Objects and Fields |   | Salesforce Object | A list of the tables (objects). |
| Browse Picklists |   | Salesforce Object | A list of the tables (objects). |
| Deleted Objects |   | Salesforce Object; Start Days/End Days | A list of the tables (objects); Enter the number for the most recent and farthest day back that should be represented in the report.
  |
| Query |   | Query Option; Query | Select a predefined query (Sales Performance or User Images) or create your own query (Custom); Enter your Salesforce SOQL query here.
  |
| Reports |   | SalesForce Reports | Select the SalesForce Report to query against |


 

