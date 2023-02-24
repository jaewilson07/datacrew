---
title: Optimizing Data Performance
url: https://domo-support.domo.com/s/article/4434784751767
linked_kbs:  ['[https://domo-support.domo.com/s/knowledge-base/](https://domo-support.domo.com/s/knowledge-base/)', '[https://domo-support.domo.com/s/](https://domo-support.domo.com/s/)', '[https://domo-support.domo.com/s/topic/0TO5w000000Zan2GAC](https://domo-support.domo.com/s/topic/0TO5w000000Zan2GAC)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZanRGAS](https://domo-support.domo.com/s/topic/0TO5w000000ZanRGAS)', '[https://domo-support.domo.com/s/article/4434784751767](https://domo-support.domo.com/s/article/4434784751767)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZanRGAS/data-center-overview](https://domo-support.domo.com/s/topic/0TO5w000000ZanRGAS/data-center-overview)', '[https://domo-support.domo.com/s/article/360043429933](https://domo-support.domo.com/s/article/360043429933)', '[https://domo-support.domo.com/s/article/360043429953](https://domo-support.domo.com/s/article/360043429953)', '[https://domo-support.domo.com/s/article/360042925494](https://domo-support.domo.com/s/article/360042925494)', '[https://domo-support.domo.com/s/article/360043429913](https://domo-support.domo.com/s/article/360043429913)', '[https://domo-support.domo.com/s/article/4408174643607](https://domo-support.domo.com/s/article/4408174643607)', '[https://domo-support.domo.com/s/login/](https://domo-support.domo.com/s/login/)']
article_id: 000004887
views: 2,290
created_date: 2022-10-24 22:34:00
last updated: 2022-10-24 22:41:00
---



Intro
-----


This article provides general guidelines to optimize data performance in Cards, DataFlows and Beast Modes.


These should be used as general guidelines and may not apply to all use cases. Please test any changes prior to implementing them in a production scenario.


Caching
-------


To take advantage of caching in Domo, try to keep your DataSet updates to the minimum required.


Beast Modes
-----------


Complex Beast Modes are calculated against every row of a DataSet and as such can contribute to poor query performance. Beast Modes calculated against text fields are often the most query intensive. Large or nested CASE statements can also significantly impact your performance.


Recommendations:


* Build your Beast Modes on numeric or date fields instead of text/string fields.
* Consider converting Beast Modes to calculations in a DataFlow. This will avoid the need to compute the formula when querying to display a Card, for example.
* Avoid large CASE statements calculated on string fields.
* Avoid using LIKE for text matching on lengthy text fields.


Targeted DataSets
-----------------


For each DataSet, ask these questions:


* Are all rows necessary for the Cards built from it?
* How much historical data is truly necessary for your most common use?


In general, reducing rows in a DataSet can help improve performance. Consider running larger DataSets through a DataFlow to reduce row counts and provide DataSets for your most common use cases. Alternatively, consider aggregating data when possible.


Distinct
--------


COUNT DISTINCT can be an expensive operation. Instead, try these alternatives:


* Consider approximating the value with APPROXIMATE\_COUNT\_DISTINCT.
* Use fewer DISTINCT keywords in your formula.
* Consider reducing your row counts prior to performing a COUNT DISTINCT.


Summary Numbers
---------------


Cards include Summary Numbers by default. If you don't need a summary number on your Card, consider removing it as it can impact performance.


Dashboard Size
--------------


Evaluate the number of Cards on each Dashboard to determine if any can be moved to separate Dashboards. Dashboards with many Cards can take longer to load than those with fewer Cards.

