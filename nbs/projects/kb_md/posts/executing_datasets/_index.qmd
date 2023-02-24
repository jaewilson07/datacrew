---
title: Executing DataSets
url: https://domo-support.domo.com/s/article/360042926214
linked_kbs:  ['[https://domo-support.domo.com/s/knowledge-base/](https://domo-support.domo.com/s/knowledge-base/)', '[https://domo-support.domo.com/s/](https://domo-support.domo.com/s/)', '[https://domo-support.domo.com/s/topic/0TO5w000000Zan2GAC](https://domo-support.domo.com/s/topic/0TO5w000000Zan2GAC)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZanRGAS](https://domo-support.domo.com/s/topic/0TO5w000000ZanRGAS)', '[https://domo-support.domo.com/s/article/360043430633](https://domo-support.domo.com/s/article/360043430633)', '[https://domo-support.domo.com/s/article/360043438973](https://domo-support.domo.com/s/article/360043438973)', '[https://domo-support.domo.com/s/article/360047553253](https://domo-support.domo.com/s/article/360047553253)', '[https://domo-support.domo.com/s/article/360042926214](https://domo-support.domo.com/s/article/360042926214)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZanRGAS/data-center-overview](https://domo-support.domo.com/s/topic/0TO5w000000ZanRGAS/data-center-overview)', '[https://domo-support.domo.com/s/article/360043429933](https://domo-support.domo.com/s/article/360043429933)', '[https://domo-support.domo.com/s/article/360043429953](https://domo-support.domo.com/s/article/360043429953)', '[https://domo-support.domo.com/s/article/360042925494](https://domo-support.domo.com/s/article/360042925494)', '[https://domo-support.domo.com/s/article/360043429913](https://domo-support.domo.com/s/article/360043429913)', '[https://domo-support.domo.com/s/article/4408174643607](https://domo-support.domo.com/s/article/4408174643607)', '[https://domo-support.domo.com/s/login/](https://domo-support.domo.com/s/login/)']
article_id: 000004899
views: 2,372
created_date: 2022-10-24 22:34:00
last updated: 2022-10-24 22:42:00
---



When you execute (run) a DataSet, you are essentially doing a refresh of the data in that DataSet. For most connectors, you should not need to do this manually, as you schedule automatic updates as part of the [Data Center](/s/article/360043430633).


To execute DataSets you do not own, you must have an "Admin" default security role or a custom role with the "Manage DataSets" privilege enabled. For more information about default security roles, see [Managing Roles](/s/article/360043438973 "Default Security Role Reference").


You can execute DataSets one at a time or in bulk. To take bulk actions on DataSets, you must have an "Admin" default security role or a custom role with the "Manage DataSets" privilege enabled.


**To manually execute a single DataSet,**


1. Click **Data** in the toolbar at the top of the screen.  
 The Data Center opens, with the **Data Warehouse** tab opened by default.
2. Click the ![data_center_datasets_icon.png](data_center_datasets_icon.png) icon on the left side of the screen to open the **DataSets**tab.
3. Locate the DataSet you want to execute.  
 For more information about searching and filtering DataSets in the Data Center, see [Data Center Layout](https://domo-support.domo.com/s/article/360047553253?language=en_US).
4. Mouse over the row for the DataSet and click the ![dataset_gear_icon.png](dataset_gear_icon.png) icon.
5. Select **Run**.


You can also execute any given DataSet from the details view for that DataSet by selecting **Run Now** in the wrench menu. For more information about the details view, see the *View Details*heading of [Data Center Layout](https://domo-support.domo.com/s/article/360047553253?language=en_US).


**To execute DataSets in bulk,**


1. Click **Data** in the toolbar at the top of the screen.  
 The Data Center opens, with the **Data Warehouse** tab opened by default.
2. Click the ![data_center_datasets_icon.png](data_center_datasets_icon.png) icon on the left side of the screen to open the **DataSets**tab.
3. Locate one of the DataSets you want to execute.  
 For more information about searching and filtering DataSets in the Data Center, see [Data Center Layout](https://domo-support.domo.com/s/article/360047553253?language=en_US).
4. Mouse over the row for the DataSet and click the circled checkmark that pops up over the connector icon.   
   
 ![data_center_bulk_checkbox.png](data_center_bulk_checkbox.png)
5. In the blue bar that appears at the top of the screen, click the ![data_center_bulk_gear_icon.png](data_center_bulk_gear_icon.png) icon.
6. Select **Run Now**.  
   
 ![data_center_bulk_run.png](data_center_bulk_run.png)


All of the DataSets you have selected should now execute.


**To cancel a DataSet import,**


1. In the Details view for the DataSet, select **Stop Import**from the gear menu.


**Video - Cancel a DataSet Import**



 

