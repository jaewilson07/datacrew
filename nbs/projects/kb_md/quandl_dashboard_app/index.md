---
title: Quandl Dashboard App
url: https://domo-support.domo.com/s/article/360042934034
linked_kbs:  ['[https://domo-support.domo.com/s/knowledge-base/](https://domo-support.domo.com/s/knowledge-base/)', '[https://domo-support.domo.com/s/](https://domo-support.domo.com/s/)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZampGAC](https://domo-support.domo.com/s/topic/0TO5w000000ZampGAC)', '[https://domo-support.domo.com/s/topic/0TO5w000000Zan9GAC](https://domo-support.domo.com/s/topic/0TO5w000000Zan9GAC)', '[https://domo-support.domo.com/s/article/360042930954](https://domo-support.domo.com/s/article/360042930954)', '[https://domo-support.domo.com/s/article/360042934034](https://domo-support.domo.com/s/article/360042934034)', '[https://domo-support.domo.com/s/topic/0TO5w000000Zan9GAC/available-apps](https://domo-support.domo.com/s/topic/0TO5w000000Zan9GAC/available-apps)', '[https://domo-support.domo.com/s/article/360043429933](https://domo-support.domo.com/s/article/360043429933)', '[https://domo-support.domo.com/s/article/360043429953](https://domo-support.domo.com/s/article/360043429953)', '[https://domo-support.domo.com/s/article/360042925494](https://domo-support.domo.com/s/article/360042925494)', '[https://domo-support.domo.com/s/article/360043429913](https://domo-support.domo.com/s/article/360043429913)', '[https://domo-support.domo.com/s/article/4408174643607](https://domo-support.domo.com/s/article/4408174643607)', '[https://domo-support.domo.com/s/login/](https://domo-support.domo.com/s/login/)']
article_id: 000004181
views: 1,087
created_date: 2022-10-24 21:26:00
last updated: 2022-10-24 22:42:00
---



Intro
-----


The Domo Quandl Dashboard provides valuation measures and information for fundamental metrics to determine company health. You will find metrics such as EBITDA, Assets, Gross Profit, Revenue and much more.


Usage
-----


Business questions that can be answered:


* Which companies have the best fundamentals?
* How can I evaluate performance over time?


Authentication
--------------


None Needed


Dashboard Reports
-----------------


For report descriptions, see [Quandl Advanced Connector](/s/article/360042930954 "Quandl Connector").


Report Configuration / Report Details
-------------------------------------


The selectable reports will need to be configured as follows:




| Report | Scheduling (Change update settings) | Parameter(s) | Selection |
| --- | --- | --- | --- |
| End of Day US Stock Prices |   | None | None |
| NASDAQ-100 |   | None | None |
| Zacks Fundamentals Collection B |   | None | None |


Dashboard Data
--------------


The Domo Quandl Dashboard will provide the following data collections and cards:




| Collection
  | Card | Card Description | Data Name |
| --- | --- | --- | --- |
| DomoQuandl Pulse: 4 key metrics to determine industry health | Industry Assets |   | ZacksB |
| DomoQuandl Pulse: 4 key metrics to determine industry health | Country Gross Profit | COUNTRY GROSS PROFITTotal gross profit reported for companies with headquarters in the country listed. Focus on a particular country by using filters or analyzer. | ZacksB |
| DomoQuandl Pulse: 4 key metrics to determine industry health | Individual State Revenue | INDIVIDUAL STATE REVENUERevenue reported by the location of the company's headquarters. Focus on a particular state by using filters or analyzer. | ZacksB |
| DomoQuandl Pulse: 4 key metrics to determine industry health | Industry EBITDA | INDUSTRY EBITDATotal Earnings Before Interest, Taxes, Depreciation and Amortization (EBITDA) for each industry (2-digit SIC codes) over time.  Focus on a particular industry by using filters or analyzer. | ZacksB |


 




| Collection
  | Card | Card Description | Data Name |
| --- | --- | --- | --- |
| Top Charts: Which companies have the best fundamentals? | Top 20 for Operating Exp. | TOP 20 FOR OPERATING EXPENSESRanking of the top 20 companies in regard to operating expenses. Use this in conjunction with the other Top 20 cards and analyzer to evaluate potential investments. | ZacksB |
| Top Charts: Which companies have the best fundamentals? | Top 20 for Revenue | TOP 20 FOR REVENUERanking of the top 20 companies in regard to revenue. Use this in conjunction with the other Top 20 cards and analyzer to evaluate potential investments. | ZacksB |
| Top Charts: Which companies have the best fundamentals? | Top 20 for Gross Profits | TOP 20 FOR GROSS PROFITSRanking of the top 20 companies in regard to gross profits. Use this in conjunction with the other Top 20 cards and analyzer to evaluate potential investments. | ZacksB |
| Top Charts: Which companies have the best fundamentals? | Top 20 for Assets | TOP 20 FOR ASSETSRanking of the top 20 companies in regard to assets. Use this in conjunction with the other Top 20 cards and analyzer to evaluate potential investments. | ZacksB |


 




| Collection
  | Card | Card Description | Data Name |
| --- | --- | --- | --- |
| Trends: How can I evaluate performance over time? | Assets Trend | ASSETS TRENDTotal assets over time. Use with analyzer or filters to investigate the health of companies you are interested in. | ZacksB |
| Trends: How can I evaluate performance over time? | Revenue Trend | REVENUE TRENDTotal revenue over time. Use with analyzer or filters to investigate the health of companies you are interested in. | ZacksB |
| Trends: How can I evaluate performance over time? | Operating Expenses Trend | OPERATING EXPENSES TRENDTotal operating expenses over time. Use with analyzer or filters to investigate the health of companies you are interested in. | ZacksB |
| Trends: How can I evaluate performance over time? | Gross Profit Trend | GROSS PROFIT TRENDGross profit over time. Use with analyzer or filters to investigate the health of companies you are interested in. | ZacksB |


 

