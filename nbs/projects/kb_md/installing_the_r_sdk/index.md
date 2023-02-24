---
title: Installing the R SDK
url: https://domo-support.domo.com/s/article/360042923734
linked_kbs:  ['[https://domo-support.domo.com/s/knowledge-base/](https://domo-support.domo.com/s/knowledge-base/)', '[https://domo-support.domo.com/s/](https://domo-support.domo.com/s/)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZamzGAC](https://domo-support.domo.com/s/topic/0TO5w000000ZamzGAC)', '[https://domo-support.domo.com/s/topic/0TO5w000000Zao8GAC](https://domo-support.domo.com/s/topic/0TO5w000000Zao8GAC)', '[https://domo-support.domo.com/s/article/360042923734](https://domo-support.domo.com/s/article/360042923734)', '[https://domo-support.domo.com/s/topic/0TO5w000000Zao8GAC/sdks](https://domo-support.domo.com/s/topic/0TO5w000000Zao8GAC/sdks)', '[https://domo-support.domo.com/s/article/360043429933](https://domo-support.domo.com/s/article/360043429933)', '[https://domo-support.domo.com/s/article/360043429953](https://domo-support.domo.com/s/article/360043429953)', '[https://domo-support.domo.com/s/article/360042925494](https://domo-support.domo.com/s/article/360042925494)', '[https://domo-support.domo.com/s/article/360043429913](https://domo-support.domo.com/s/article/360043429913)', '[https://domo-support.domo.com/s/article/4408174643607](https://domo-support.domo.com/s/article/4408174643607)', '[https://domo-support.domo.com/s/login/](https://domo-support.domo.com/s/login/)']
article_id: 000004588
views: 2,454
created_date: 2022-10-24 22:15:00
last updated: 2022-10-24 22:41:00
---



Intro
-----


The R SDK is an R package that allows you to transfer data between Domo and R easily, simplifying the process of moving DataSets between the two. You can access the SDK and installation information in the Data Center.  


Times when the R SDK may be the best solution are these:


* If your data science team is using R for most transformations and needs to get that data into Domo.
* When you need to do any sort of statistical analysis or data exploration that’s outside of the scope of SQL.
* If you are already using R scripts for data processing.
* When you need capabilities beyond SQL for forecasting, text analysis, or other data science tasks.
* If you require Rapid App prototyping or are creating dynamic reproducible documents/reports.


This topic takes you through the entire installation and initialization process for the R SDK.


More information can be found at: [https://github.com/domoinc/rdomo](https://github.com/domoinc/rdomo "https://github.com/domoinc/rdomo").


**Video - Domo's R SDK Overview**



![]()

Prerequisites
-------------


To install and initialize the R SDK you will need two pieces of information:


* Your customer instance name, denoted as customer in this documentation. This is the part of your login URL before [domo.com](http://domo.com). For example, if your Domo login URL was <https://modocorp.domo.com>, the customer instance name would be modocorp.
* A Domo Access Token, denoted as domo\_access\_token in this documentation. This is required to access your Domo instance via the Domo API. A user at your company with an "Admin" security role (or a custom role with "Manage All Company Settings" or "Manage All Access Tokens" enabled) will need to generate this token by going to **Admin > Security > Access Tokens** in your account and clicking **Generate Access Token** in the upper right corner.




 


**Note:** The R SDK requires httr 1.0.0 or lower and readr 0.2.0 or lower installed in your instance of R.



Installing R
------------


Information on Installing the R SDK can be found here: <https://github.com/domoinc/rdomo>

