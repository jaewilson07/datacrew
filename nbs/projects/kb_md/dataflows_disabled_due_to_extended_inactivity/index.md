---
title: DataFlows Disabled Due to Extended Inactivity
url: https://domo-support.domo.com/s/article/4404652354583
linked_kbs:  ['[https://domo-support.domo.com/s/knowledge-base/](https://domo-support.domo.com/s/knowledge-base/)', '[https://domo-support.domo.com/s/](https://domo-support.domo.com/s/)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZamzGAC](https://domo-support.domo.com/s/topic/0TO5w000000ZamzGAC)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZanUGAS](https://domo-support.domo.com/s/topic/0TO5w000000ZanUGAS)', '[https://domo-support.domo.com/s/article/4404652354583](https://domo-support.domo.com/s/article/4404652354583)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZanUGAS/dataflow-management](https://domo-support.domo.com/s/topic/0TO5w000000ZanUGAS/dataflow-management)', '[https://domo-support.domo.com/s/article/360043429933](https://domo-support.domo.com/s/article/360043429933)', '[https://domo-support.domo.com/s/article/360043429953](https://domo-support.domo.com/s/article/360043429953)', '[https://domo-support.domo.com/s/article/360042925494](https://domo-support.domo.com/s/article/360042925494)', '[https://domo-support.domo.com/s/article/360043429913](https://domo-support.domo.com/s/article/360043429913)', '[https://domo-support.domo.com/s/article/4408174643607](https://domo-support.domo.com/s/article/4408174643607)', '[https://domo-support.domo.com/s/login/](https://domo-support.domo.com/s/login/)']
article_id: 000004547
views: 2,540
created_date: 2022-10-24 22:14:00
last updated: 2022-10-24 22:40:00
---



Intro
-----


Domo may automatically disable a DataFlow when the system has identified that the outputs of a DataFlow are no longer in active use by your users.


What causes a DataFlow to be disabled?
--------------------------------------


There are several factors considered when a DataFlow is evaluated for inactivity. Some factors considered will exclude the DataFlow from being eligible to be system disabled while others depend on the amount of time something hasn’t been used.    
  
The primary consideration given when Domo evaluates whether a DataFlow should be disabled is the length of time that DataFlow has been unused.


What does “unused” mean?
------------------------


Usage is defined as meaningful consumption of a DataFlow’s output DataSets in any way. There are a lot of factors that are considered “meaningful usage.” A few of the most common examples are as follows:


* A Card from an Output DataSet of that DataFlow was viewed.
	+ i.e. accessed via a Story, Dashboard, direct URL, published in Embed, Slideshow, Scheduled Report, or Export to PDF are all considered.
* Configured Alert exists for an Output DataSet or Card built off an Output DataSet triggered.
	+ i.e. DataSet Alert, Card Alert, or Watchdog.
* An Output DataSet was used in Fusion, View DataSet, or as an input to another DataFlow.
* An Output Dataset was recently copied to another instance.
	+ i.e. DataSet Copy Connector, Publish v2, or Writeback Connector.


What excludes a DataFlow from disablement?
------------------------------------------


Should the system evaluate a DataFlow and determine it is no longer in use, a number of additional checks are evaluated before any auto-disablement. If a DataFlow meets any of the following criteria, it will NOT be considered for auto-disablement:


* The DataFlow has a recursive Output or Input DataSet.
* The DataFlow’s Output DataSets are used as an input to a Fusion, View DataSet, or in another active DataFlow.
* The DataFlow is an Adrenaline DataFlow (Premium feature).
