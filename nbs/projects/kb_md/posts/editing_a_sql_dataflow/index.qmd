---
title: Editing a SQL DataFlow
url: https://domo-support.domo.com/s/article/360043427793
linked_kbs:  ['[https://domo-support.domo.com/s/knowledge-base/](https://domo-support.domo.com/s/knowledge-base/)', '[https://domo-support.domo.com/s/](https://domo-support.domo.com/s/)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZamzGAC](https://domo-support.domo.com/s/topic/0TO5w000000ZamzGAC)', '[https://domo-support.domo.com/s/topic/0TO5w000000Zao9GAC](https://domo-support.domo.com/s/topic/0TO5w000000Zao9GAC)', '[https://domo-support.domo.com/s/article/360042923074](https://domo-support.domo.com/s/article/360042923074)', '[https://domo-support.domo.com/s/article/360043427793](https://domo-support.domo.com/s/article/360043427793)', '[https://domo-support.domo.com/s/topic/0TO5w000000Zao9GAC/sql-dataflows](https://domo-support.domo.com/s/topic/0TO5w000000Zao9GAC/sql-dataflows)', '[https://domo-support.domo.com/s/article/360043429933](https://domo-support.domo.com/s/article/360043429933)', '[https://domo-support.domo.com/s/article/360043429953](https://domo-support.domo.com/s/article/360043429953)', '[https://domo-support.domo.com/s/article/360042925494](https://domo-support.domo.com/s/article/360042925494)', '[https://domo-support.domo.com/s/article/360043429913](https://domo-support.domo.com/s/article/360043429913)', '[https://domo-support.domo.com/s/article/4408174643607](https://domo-support.domo.com/s/article/4408174643607)', '[https://domo-support.domo.com/s/login/](https://domo-support.domo.com/s/login/)']
article_id: 000004590
views: 2,324
created_date: 2022-10-24 22:15:00
last updated: 2022-10-24 22:41:00
---



The options available when editing an existing SQL DataFlow are almost the same as those available when you create one.


**To edit a DataFlow,**


1. Click **Data** in the toolbar at the top of the screen.
2. Click ![data_center_dataflows_icon.png](data_center_dataflows_icon.png) in the left-hand navigation pane.  
 The **DataFlows** tab appears. This tab lists all **DataFlows** in Domo and can be filtered using a variety of filter criteria.
3. Locate the DataFlow you want to edit in the list then click it.
4. Click ![Edit_Pencil.png](Edit_Pencil.png) on the right-hand side of the screen.  
The **Edit DataFlow** view for this DataFlow opens.
5. Make the desired edits to the DataFlow. For information about available options, see the previous section.
6. (Optional) If you want to automatically run the DataFlow when the input DataSets are updated, check the boxes for those DataSets at the bottom of the screen.
7. (Conditional) Do one of the following to save your DataFlow:


	* If you want to run the script that outputs this DataFlow to usable DataSets in Domo, click **Save and Run**, enter a version description if desired, then click **Save** to confirm.  
	 This starts the process of generating DataSets from the DataFlow, or updating the DataSets if they have already been generated. This generation/updating process may take from a minute to an hour or more, depending on the size of the input DataSets.
	* If you want to save your progress on this DataFlow without outputting it to DataSets, updating the DataSets at this time, and allow you to continue to edit the DataFlow, click **Save**, enter a version description if desired, then click **Save** to confirm. You can run the DataFlow to output DataSets at any time by mousing over the card for the DataFlow in the **DataFlows** listing, clicking ![dataset_gear_icon.png](dataset_gear_icon.png), and selecting **Run**.
	* If you want to save this DataFlow without outputting it to DataSets or updating the DataSets at this time, click **Save and Close**, enter a version description if desired, then click **Save** to confirm. You can run the DataFlow to output DataSets at any time by mousing over the card for the DataFlow in the **DataFlows** listing, clicking ![dataset_gear_icon.png](dataset_gear_icon.png), and selecting **Run**.


When you save a DataFlow, an entry for this version is added to the **Versions** tab in the Details view for the DataFlow. If you entered a description when saving, that description is shown in the entry for the DataFlow. For more information about versions, see [Viewing the Version History for a DataFlow](/s/article/360042923074 "Viewing the Version History for a DataFlow").

