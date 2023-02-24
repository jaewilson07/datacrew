---
title: Using PDP to Manage All-Rows Policies
url: https://domo-support.domo.com/s/article/360043439373
linked_kbs:  ['[https://domo-support.domo.com/s/knowledge-base/](https://domo-support.domo.com/s/knowledge-base/)', '[https://domo-support.domo.com/s/](https://domo-support.domo.com/s/)', '[https://domo-support.domo.com/s/topic/0TO5w000000Zan2GAC](https://domo-support.domo.com/s/topic/0TO5w000000Zan2GAC)', '[https://domo-support.domo.com/s/topic/0TO5w000000Zao2GAC](https://domo-support.domo.com/s/topic/0TO5w000000Zao2GAC)', '[https://domo-support.domo.com/s/article/360043440633](https://domo-support.domo.com/s/article/360043440633)', '[https://domo-support.domo.com/s/article/360043439373](https://domo-support.domo.com/s/article/360043439373)', '[https://domo-support.domo.com/s/topic/0TO5w000000Zao2GAC/personalized-data-permissions-pdp](https://domo-support.domo.com/s/topic/0TO5w000000Zao2GAC/personalized-data-permissions-pdp)', '[https://domo-support.domo.com/s/article/360043429933](https://domo-support.domo.com/s/article/360043429933)', '[https://domo-support.domo.com/s/article/360043429953](https://domo-support.domo.com/s/article/360043429953)', '[https://domo-support.domo.com/s/article/360042925494](https://domo-support.domo.com/s/article/360042925494)', '[https://domo-support.domo.com/s/article/360043429913](https://domo-support.domo.com/s/article/360043429913)', '[https://domo-support.domo.com/s/article/4408174643607](https://domo-support.domo.com/s/article/4408174643607)', '[https://domo-support.domo.com/s/login/](https://domo-support.domo.com/s/login/)']
article_id: 000005041
views: 1.261
created_date: 2022-11-02 21:01:00
last updated: 2022-11-02 21:04:00
---



So let's say you want to share all of the data in a DataSet with a user or users, but you don’t want them to be able to build DataFlows from that DataSet, meaning you can't use the "All Rows" function of PDP. What do you do?


The solution to this scenario is as follows:


1. Build an ETL DataFlow as follows:


	1. Include the DataSet you want to share as the input DataSet.
	2. Include an **Add** **Constants** action in which you create a text column labeled “Access to All Rows” with a string value of *Yes*.
	3. Create an output DataSet.  
	  
	![add_all_rows_1.png](add_all_rows_1.png)
2. Create a PDP policy for the new DataSet as follows:


	1. In the **Edit data access** dialog, select **Access to All Rows** in the **Column Name** field.
	2. Under **Search/Add row values**, enter "Yes."  
	  
	![add_all_rows_2.png](add_all_rows_2.png)


Now you can use this policy to share all the data in the DataSet while governing who can build additional DataSets from this data.


The content in this article was shared during our Domopalooza 2017 Tips and Tricks session. For more information about this session, see [Tips and Tricks: Quick Lessons from Power Users](/s/article/360043440633 "Tips and Tricks: Quick Lessons from Power Users").

