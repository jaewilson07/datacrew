---
    title: Troubleshooting Scripting Tiles Memory Errors
    url: https://domo-support.domo.com/s/article/4662511363351
    linked_kbs:  ['[https://domo-support.domo.com/s/knowledge-base/](https://domo-support.domo.com/s/knowledge-base/)', '[https://domo-support.domo.com/s/](https://domo-support.domo.com/s/)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZamzGAC](https://domo-support.domo.com/s/topic/0TO5w000000ZamzGAC)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZanvGAC](https://domo-support.domo.com/s/topic/0TO5w000000ZanvGAC)', '[https://domo-support.domo.com/s/article/360045485833](https://domo-support.domo.com/s/article/360045485833)', '[https://domo-support.domo.com/s/article/4662355030423](https://domo-support.domo.com/s/article/4662355030423)', '[https://domo-support.domo.com/s/article/4405156517527](https://domo-support.domo.com/s/article/4405156517527)', '[https://domo-support.domo.com/s/article/360044876614](https://domo-support.domo.com/s/article/360044876614)', '[https://domo-support.domo.com/s/article/4662034775319](https://domo-support.domo.com/s/article/4662034775319)', '[https://domo-support.domo.com/s/article/4662511363351](https://domo-support.domo.com/s/article/4662511363351)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZanvGAC/magic-etl](https://domo-support.domo.com/s/topic/0TO5w000000ZanvGAC/magic-etl)', '[https://domo-support.domo.com/s/article/360043429933](https://domo-support.domo.com/s/article/360043429933)', '[https://domo-support.domo.com/s/article/360043429953](https://domo-support.domo.com/s/article/360043429953)', '[https://domo-support.domo.com/s/article/360042925494](https://domo-support.domo.com/s/article/360042925494)', '[https://domo-support.domo.com/s/article/360043429913](https://domo-support.domo.com/s/article/360043429913)', '[https://domo-support.domo.com/s/article/4408174643607](https://domo-support.domo.com/s/article/4408174643607)', '[https://domo-support.domo.com/s/login/](https://domo-support.domo.com/s/login/)']
    article_id: 000004587
    views: 2,140
    created_date: 2022-10-24 22:15:00
    last updated: 2022-10-24 22:40:00
    ---



Intro
-----


You can use Scripting tiles to automate data processing and data science workflows. For an overview, see [Magic ETL Tiles: Scripting](/s/article/360045485833).


In this article, we’ll provide an overview of troubleshooting tips for optimizing memory use in your container. In some cases, you may still need to upgrade your container. For guidance on requesting a container upgrade, see [Requesting Memory Upgrades](/s/article/4662355030423).


Troubleshooting tips
--------------------


### Tip 1


You can use Magic ETL tiles to reduce the memory footprint in your script. Magic ETL tiles have been optimized for memory-intensive operations. We recommend excluding intensive operations in your script that can be handled through Magic ETL tiles instead.


#### Examples


You can use the Performance tiles in Magic ETL to exclude columns in your DataSet that are not needed in your script. For information on using Performance tiles, see [Magic ETL Tiles: Performance](/s/article/4405156517527). This will reduce the DataSet that will be processed in your script.


You can also use the Filter Rows tile and the Remove Duplicates tile to exclude rows that are not needed for the DataSet used in your script. For information on using the Filter tile, see [Magic ETL Tiles: Filter](/s/article/360044876614).


### Tip 2


Verify that you are using the latest versions of the packages needed in your script. Newer versions of the package are often optimized for performance and memory. If you need to request a package upgrade, see [Requesting Custom Environments](/s/article/4662034775319) for details.


### Tip 3


Breaking up an operation into segments can help reduce memory footprint, especially for intensive operations like looping. You could also consider breaking up the DataFlow into separate DataFlows.


### Tip 4


Test memory for data size only. You can set up a DataFlow that simply writes the input (no operations in the script.) If the DataFlow, errors out then you need to reduce the DataSet size ([Tip 1](#h_01FXR7A96RNJPAZBCS6TQY9XQ8)) or evaluate a memory upgrade.


Requesting Memory Upgrades
--------------------------


While the tips above may help lower your memory footprint, in some cases your workflow will simply require more memory. To request this upgrade, see [Requesting Memory Upgrades](/s/article/4662355030423) for a walkthrough.

