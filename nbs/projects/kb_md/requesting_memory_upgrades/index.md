---
    title: Requesting Memory Upgrades
    url: https://domo-support.domo.com/s/article/4662355030423
    linked_kbs:  ['[https://domo-support.domo.com/s/knowledge-base/](https://domo-support.domo.com/s/knowledge-base/)', '[https://domo-support.domo.com/s/](https://domo-support.domo.com/s/)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZamzGAC](https://domo-support.domo.com/s/topic/0TO5w000000ZamzGAC)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZanvGAC](https://domo-support.domo.com/s/topic/0TO5w000000ZanvGAC)', '[https://domo-support.domo.com/s/article/360045485833](https://domo-support.domo.com/s/article/360045485833)', '[https://domo-support.domo.com/s/article/4662355030423](https://domo-support.domo.com/s/article/4662355030423)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZanvGAC/magic-etl](https://domo-support.domo.com/s/topic/0TO5w000000ZanvGAC/magic-etl)', '[https://domo-support.domo.com/s/article/360043429933](https://domo-support.domo.com/s/article/360043429933)', '[https://domo-support.domo.com/s/article/360043429953](https://domo-support.domo.com/s/article/360043429953)', '[https://domo-support.domo.com/s/article/360042925494](https://domo-support.domo.com/s/article/360042925494)', '[https://domo-support.domo.com/s/article/360043429913](https://domo-support.domo.com/s/article/360043429913)', '[https://domo-support.domo.com/s/article/4408174643607](https://domo-support.domo.com/s/article/4408174643607)', '[https://domo-support.domo.com/s/login/](https://domo-support.domo.com/s/login/)']
    article_id: 000004578
    views: 2,190
    created_date: 2022-10-24 22:15:00
    last updated: 2022-10-24 22:41:00
    ---



Intro
-----


You can use Scripting tiles to automate data processing and data science workflows. For an overview, see [New Magic ETL Tiles: Scripting](/s/article/360045485833).


In this article, we’ll provide an overview of your container and how to upgrade it.


Product and Container Options
-----------------------------


Today, we have three tiers of container options for Scripting tiles. Containers are resource graduations of CPU and memory levels. These are active at the instance level for DataFlows using Scripting tiles.




| **Product** | **Use Case** | **Container** |
| **Entry Scripting Tiles**
*Python / R Tiles* | ETL operations (non-Data Science) | 16 Memory (Gib), 1 CPU |
| **Data Science Tiles 1**
*Python / R, Action Tiles* | Data science operations | 32 Memory (Gib), 2 CPU |
| **Data Science Tiles 2**
*Python / R, Action Tiles* | Data science operations – Memory intensive | 64 Memory (Gib), 2 CPU |







**Important:** These are the current product and container pairings as of February 2022.



Requesting Container Upgrades
-----------------------------


Customers that purchased Scripting Tiles for a Data Science use case before February 2022, may be eligible to request a container upgrade of max 32 Memory (Gib), 2 CPU for their instance. Scripting tiles before this time were provisioned with a container of 16 Memory (Gib), 1 CPU.


The next container level of 2 CPU and 64 Memory (Gib) will require a formal product upgrade. Please speak to your Account Executive to explore that option.


In order to request a container upgrade for your instance, please include the requirements below in your request to Domo Support.


* Container needed (max 32 Memory (Gib), 2 CPU without formal upgrade through Account Executive.)
* Description of your Data Science use case.


If you are considering a formal upgrade and want to run a test as part of your evaluation, you can request a DataFlow level upgrade from Support. Include the requirements below in your request:


* DataFlow ID
* Container needed
* Description of your use case
