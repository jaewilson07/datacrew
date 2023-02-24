---
title: Beginning and End of Week
url: https://domo-support.domo.com/s/article/360042923394
linked_kbs:  ['[https://domo-support.domo.com/s/knowledge-base/](https://domo-support.domo.com/s/knowledge-base/)', '[https://domo-support.domo.com/s/](https://domo-support.domo.com/s/)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZamzGAC](https://domo-support.domo.com/s/topic/0TO5w000000ZamzGAC)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZaoJGAS](https://domo-support.domo.com/s/topic/0TO5w000000ZaoJGAS)', '[https://domo-support.domo.com/s/article/360042923394](https://domo-support.domo.com/s/article/360042923394)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZaoJGAS/transformation-tips-and-tricks](https://domo-support.domo.com/s/topic/0TO5w000000ZaoJGAS/transformation-tips-and-tricks)', '[https://domo-support.domo.com/s/article/360043429933](https://domo-support.domo.com/s/article/360043429933)', '[https://domo-support.domo.com/s/article/360043429953](https://domo-support.domo.com/s/article/360043429953)', '[https://domo-support.domo.com/s/article/360042925494](https://domo-support.domo.com/s/article/360042925494)', '[https://domo-support.domo.com/s/article/360043429913](https://domo-support.domo.com/s/article/360043429913)', '[https://domo-support.domo.com/s/article/4408174643607](https://domo-support.domo.com/s/article/4408174643607)', '[https://domo-support.domo.com/s/login/](https://domo-support.domo.com/s/login/)']
article_id: 000004610
views: 2,281
created_date: 2022-10-24 22:16:00
last updated: 2022-10-24 22:41:00
---



You can create a new column in your DataFlow that shows the beginning and end of the current week.


1. Create a DataFlow.
2. Import the columns you need.
3. Add an additional column with these functions:


* `adddate(curdate(), INTERVAL 1-DAYOFWEEK(curdate()) DAY)  For` `WeekStart`
* `adddate(curdate(), INTERVAL 7-DAYOFWEEK(curdate()) DAY) For WeekEnd`


1. Save the transform.
2. Create output.
3. Save and run the DataFlow.
