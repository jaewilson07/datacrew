---
title: Restricting Access for a SQL DataFlow
url: https://domo-support.domo.com/s/article/360042922974
linked_kbs:  ['[https://domo-support.domo.com/s/knowledge-base/](https://domo-support.domo.com/s/knowledge-base/)', '[https://domo-support.domo.com/s/](https://domo-support.domo.com/s/)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZamzGAC](https://domo-support.domo.com/s/topic/0TO5w000000ZamzGAC)', '[https://domo-support.domo.com/s/topic/0TO5w000000Zao9GAC](https://domo-support.domo.com/s/topic/0TO5w000000Zao9GAC)', '[https://domo-support.domo.com/s/article/360043438973](https://domo-support.domo.com/s/article/360043438973)', '[https://domo-support.domo.com/s/article/360042922974](https://domo-support.domo.com/s/article/360042922974)', '[https://domo-support.domo.com/s/topic/0TO5w000000Zao9GAC/sql-dataflows](https://domo-support.domo.com/s/topic/0TO5w000000Zao9GAC/sql-dataflows)', '[https://domo-support.domo.com/s/article/360043429933](https://domo-support.domo.com/s/article/360043429933)', '[https://domo-support.domo.com/s/article/360043429953](https://domo-support.domo.com/s/article/360043429953)', '[https://domo-support.domo.com/s/article/360042925494](https://domo-support.domo.com/s/article/360042925494)', '[https://domo-support.domo.com/s/article/360043429913](https://domo-support.domo.com/s/article/360043429913)', '[https://domo-support.domo.com/s/article/4408174643607](https://domo-support.domo.com/s/article/4408174643607)', '[https://domo-support.domo.com/s/login/](https://domo-support.domo.com/s/login/)']
article_id: 000004589
views: 2,225
created_date: 2022-10-24 22:15:00
last updated: 2022-10-24 22:41:00
---



You can restrict edit access on an SQL DataFlow to the DataFlow owner and users with an "Admin" default security role or a custom role with "Manage DataFlows" enabled. You can do this while creating the DataFlow or editing it afterward. For more information about default security profiles, see [Managing Custom Roles](/s/article/360043438973 "Security Role Reference").


**Video - Restricting DataFlow Edits**



 


**To restrict edit access for an SQL DataFlow,**


1. While creating or editing the DataFlow, scroll to the bottom of the window.
2. Check the box that reads "Only the owner and administrators can edit this DataFlow."
3. Click **Save** (or **Save and Run**, if you want to execute this DataFlow now).


 To enable access for all viewers of this DataFlow, uncheck this box.


### Restrictions on Sharing DataFlows


You may want to share a DataFlow with another user so that user can access and edit that DataFlow. To do this, the user with whom it is being shared...


* must have access to all input and output DataSets
* cannot be a part of a PDP policy on any of the input or output DataSets that restricts data (either the DataSet must have PDP disabled OR they must be on the "all rows" policy for the DataSet).
