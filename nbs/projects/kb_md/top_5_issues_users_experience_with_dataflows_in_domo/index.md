---
title: Top 5 Issues Users Experience with DataFlows in Domo
url: https://domo-support.domo.com/s/article/360043427913
linked_kbs:  ['[https://domo-support.domo.com/s/knowledge-base/](https://domo-support.domo.com/s/knowledge-base/)', '[https://domo-support.domo.com/s/](https://domo-support.domo.com/s/)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZamzGAC](https://domo-support.domo.com/s/topic/0TO5w000000ZamzGAC)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZanUGAS](https://domo-support.domo.com/s/topic/0TO5w000000ZanUGAS)', '[https://domo-support.domo.com/s/article/360043428693](https://domo-support.domo.com/s/article/360043428693)', '[https://domo-support.domo.com/s/article/360043427913](https://domo-support.domo.com/s/article/360043427913)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZanUGAS/dataflow-management](https://domo-support.domo.com/s/topic/0TO5w000000ZanUGAS/dataflow-management)', '[https://domo-support.domo.com/s/article/360043429933](https://domo-support.domo.com/s/article/360043429933)', '[https://domo-support.domo.com/s/article/360043429953](https://domo-support.domo.com/s/article/360043429953)', '[https://domo-support.domo.com/s/article/360042925494](https://domo-support.domo.com/s/article/360042925494)', '[https://domo-support.domo.com/s/article/360043429913](https://domo-support.domo.com/s/article/360043429913)', '[https://domo-support.domo.com/s/article/4408174643607](https://domo-support.domo.com/s/article/4408174643607)', '[https://domo-support.domo.com/s/login/](https://domo-support.domo.com/s/login/)']
article_id: 000004550
views: 2,257
created_date: 2022-10-24 22:14:00
last updated: 2022-10-24 22:40:00
---



This article lists the most common problems users have when adding DataFlows in Domo and provides suggestions for resolving these issues.


1. *Mismatching of datatypes when joining*  
   
 Mismatching is common when joining strings that look like dates, as well as strings that look like numbers. Enforcing data type integrity is key to optimizing performance. For more information about data types in Domo, see [Types of data in a DataSet](/s/article/360043428693 "Understanding Chart Data").
2. *Not using Group By statement and aggregating*  
   
 Use a Group by clause when using aggregations in your Select clause. Without it, you will either get an error or incorrect aggregations. Also, all columns that are not being aggregated should be included in the Group by clause.
3. *Formatting and commenting code*  
   
 Formatting your code makes it more accessible to others, and commenting your code gives the user the context and rationale behind your decisions.
4. *Order of operations, and aggregations*  
   
 Knowing how SQL executes can help optimize how you write your code. Essentially, the order in which your directives are set to execute can help you optimize and shorten the time it takes for tasks to run.
5. *Divide by 0*  
   
 A (#Div/0) occurrence happens when a calculation’s denominator is ‘0’. This will cause the code to error out.
