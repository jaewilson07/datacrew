---
<<<<<<< HEAD
title: Connecting to Sage 300 Data in Domo
url: https://domo-support.domo.com/s/article/360043437633
linked_kbs:  ['[https://domo-support.domo.com/s/knowledge-base/](https://domo-support.domo.com/s/knowledge-base/)', '[https://domo-support.domo.com/s/](https://domo-support.domo.com/s/)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZammGAC](https://domo-support.domo.com/s/topic/0TO5w000000ZammGAC)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZanzGAC](https://domo-support.domo.com/s/topic/0TO5w000000ZanzGAC)', '[https://domo-support.domo.com/s/article/360042932734](https://domo-support.domo.com/s/article/360042932734)', '[https://domo-support.domo.com/s/article/360043437633](https://domo-support.domo.com/s/article/360043437633)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZanzGAC/other-connection-methods](https://domo-support.domo.com/s/topic/0TO5w000000ZanzGAC/other-connection-methods)', '[https://domo-support.domo.com/s/article/360043429933](https://domo-support.domo.com/s/article/360043429933)', '[https://domo-support.domo.com/s/article/360043429953](https://domo-support.domo.com/s/article/360043429953)', '[https://domo-support.domo.com/s/article/360042925494](https://domo-support.domo.com/s/article/360042925494)', '[https://domo-support.domo.com/s/article/360043429913](https://domo-support.domo.com/s/article/360043429913)', '[https://domo-support.domo.com/s/article/4408174643607](https://domo-support.domo.com/s/article/4408174643607)', '[https://domo-support.domo.com/s/login/](https://domo-support.domo.com/s/login/)']
article_id: 000003165
views: 1,098
created_date: 2022-10-24 21:11:00
last updated: 2022-10-24 22:42:00
---
=======
title: Connecting to Sage 300 Data in Domo
url: https://domo-support.domo.com/s/article/360043437633
linked_kbs:  ['[https://domo-support.domo.com/s/knowledge-base/](https://domo-support.domo.com/s/knowledge-base/)', '[https://domo-support.domo.com/s/](https://domo-support.domo.com/s/)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZammGAC](https://domo-support.domo.com/s/topic/0TO5w000000ZammGAC)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZanzGAC](https://domo-support.domo.com/s/topic/0TO5w000000ZanzGAC)', '[https://domo-support.domo.com/s/article/360042932734](https://domo-support.domo.com/s/article/360042932734)', '[https://domo-support.domo.com/s/article/360043437633](https://domo-support.domo.com/s/article/360043437633)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZanzGAC/other-connection-methods](https://domo-support.domo.com/s/topic/0TO5w000000ZanzGAC/other-connection-methods)', '[https://domo-support.domo.com/s/article/360043429933](https://domo-support.domo.com/s/article/360043429933)', '[https://domo-support.domo.com/s/article/360043429953](https://domo-support.domo.com/s/article/360043429953)', '[https://domo-support.domo.com/s/article/360042925494](https://domo-support.domo.com/s/article/360042925494)', '[https://domo-support.domo.com/s/article/360043429913](https://domo-support.domo.com/s/article/360043429913)', '[https://domo-support.domo.com/s/article/4408174643607](https://domo-support.domo.com/s/article/4408174643607)', '[https://domo-support.domo.com/s/login/](https://domo-support.domo.com/s/login/)']
article_id: 000003165
views: 1,097
created_date: 2022-10-24 21:11:00
last updated: 2022-10-24 22:42:00
---
>>>>>>> fe496b1d734bfbc1f7998509d0072e99b55e6786



Sage 300 (formally Timberline) uses a database that is accessed via a Sage ODBC driver. To connect to Sage data, you must use SQL to query and process the data via Workbench, which then sends it to Domo.


You can access Sage 300 by doing either of the following:


* Connecting directly to the database using the ODBC driver (which has been reported as slow). You can learn more about the ODBC connector in Workbench here: [Connecting to ODBC data](/s/article/360042932734 "Creating a Job for Uploading Data Using Workbench 4").
* Using a product called Anterra Data Center, which basically copies the Sage data over to a SQL-based database. You can then connect to that database using Workbench. Most users prefer Anterra, as it is provides a much faster means of accessing Sage data.


To get access to the Sage 300 ODBC driver, contact your Sage rep. To use the Anterra Data Center method instead, you can reach out to Anterra here:  [http://www.constructionsa.com/anterra-datacenter.html](http://www.constructionsa.com/anterra-datacenter.html "Follow link")

