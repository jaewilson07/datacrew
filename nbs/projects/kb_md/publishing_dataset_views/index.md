---
title: Publishing DataSet Views
url: https://domo-support.domo.com/s/article/4434678124695
linked_kbs:  ['[https://domo-support.domo.com/s/knowledge-base/](https://domo-support.domo.com/s/knowledge-base/)', '[https://domo-support.domo.com/s/](https://domo-support.domo.com/s/)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZamqGAC](https://domo-support.domo.com/s/topic/0TO5w000000ZamqGAC)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZanbGAC](https://domo-support.domo.com/s/topic/0TO5w000000ZanbGAC)', '[https://domo-support.domo.com/s/article/360046074774](https://domo-support.domo.com/s/article/360046074774)', '[https://domo-support.domo.com/s/article/4434678124695](https://domo-support.domo.com/s/article/4434678124695)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZanbGAC/domo-everywhere](https://domo-support.domo.com/s/topic/0TO5w000000ZanbGAC/domo-everywhere)', '[https://domo-support.domo.com/s/article/360043429933](https://domo-support.domo.com/s/article/360043429933)', '[https://domo-support.domo.com/s/article/360043429953](https://domo-support.domo.com/s/article/360043429953)', '[https://domo-support.domo.com/s/article/360042925494](https://domo-support.domo.com/s/article/360042925494)', '[https://domo-support.domo.com/s/article/360043429913](https://domo-support.domo.com/s/article/360043429913)', '[https://domo-support.domo.com/s/article/4408174643607](https://domo-support.domo.com/s/article/4408174643607)', '[https://domo-support.domo.com/s/login/](https://domo-support.domo.com/s/login/)']
article_id: 000004251
views: 2,247
created_date: 2022-10-24 21:35:00
last updated: 2022-10-24 22:42:00
---



Intro
-----


DataSet Views make it easy to explore, wrangle, and combine data in a simple spreadsheet interface.


![Screenshot_1.png](Screenshot_1.png)


Maintaining policy compatibility
--------------------------------


DataSet Views can be published across instances through Domo Everywhere as long as you remember one key point: **Upstream PDP policies from any input DataSet will still apply** (as documented in the final line in [DataSet Views](/s/article/360046074774).)  
Since those policies are meant to focus on users in the parent instance, you have three main options to keep DataSet Views compatible with Publications:


1. Avoid upstream policies and only apply PDP to the final DataSet View that is being published.
2. Include both the input DataSets and the final DataSet View in the Publication.
3. Use Magic ETL rather than Views to create the DataSets that you want to publish.


![Screenshot 2.png](Screenshot 2.png)

