---
title: Aggregate vs. Non-Aggregate
url: https://domo-support.domo.com/s/article/360042923374
linked_kbs:  ['[https://domo-support.domo.com/s/knowledge-base/](https://domo-support.domo.com/s/knowledge-base/)', '[https://domo-support.domo.com/s/](https://domo-support.domo.com/s/)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZamzGAC](https://domo-support.domo.com/s/topic/0TO5w000000ZamzGAC)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZaoJGAS](https://domo-support.domo.com/s/topic/0TO5w000000ZaoJGAS)', '[https://domo-support.domo.com/s/article/360042923374](https://domo-support.domo.com/s/article/360042923374)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZaoJGAS/transformation-tips-and-tricks](https://domo-support.domo.com/s/topic/0TO5w000000ZaoJGAS/transformation-tips-and-tricks)', '[https://domo-support.domo.com/s/article/360043429933](https://domo-support.domo.com/s/article/360043429933)', '[https://domo-support.domo.com/s/article/360043429953](https://domo-support.domo.com/s/article/360043429953)', '[https://domo-support.domo.com/s/article/360042925494](https://domo-support.domo.com/s/article/360042925494)', '[https://domo-support.domo.com/s/article/360043429913](https://domo-support.domo.com/s/article/360043429913)', '[https://domo-support.domo.com/s/article/4408174643607](https://domo-support.domo.com/s/article/4408174643607)', '[https://domo-support.domo.com/s/login/](https://domo-support.domo.com/s/login/)']
article_id: 000004612
views: 2,301
created_date: 2022-10-24 22:16:00
last updated: 2022-10-24 22:41:00
---



Intro
-----


If you try to use a aggregated value with a non-aggregated value using Beast Mode you may not get the expected results. However, you *can* do this using a DataFlow. 


Solution Details and Steps
--------------------------


**To solve this problem,**


##### MySQL


`SELECT *, (SELECT COUNT(`series`) FROM input_dataset) AS ‘Total Count’ FROM input_dataset`


##### RedShift


`SELECT *,(SELECT COUNT(“series”) FROM input_dataset) AS “Total Count” FROM input_dataset`


##### Magic ETL


1. Create a new Magic ETL.
2. Use the **Select Columns** tile to filter down to one column. (Any filtering needed should be done before this step.)


![Select_Columns.png](Select_Columns.png)


3. Use **Add Constants** to create a new column with the value of 1.  
 This will be used to group by and join on later.


![Add_Constants.png](Add_Constants.png)


4. Use a **Group By** tile to group by your column 1 and aggregate your column.


![Group_By.png](Group_By.png)


5. From your original input create a new path going to **Add Constants**.
6. Create another column with the constant value of 1.  
 This will be used to join your data.


![Add_Constants.png](Add_Constants.png)


7. Use a **Join Data** tile to join your two paths.  
 You should join on your two constant columns (1).


![Join_Data2.png](Join_Data2.png)


8. Use a **Select Columns** tile to remove your two constant values columns (1 & 1\_1).


![Add_columns.png](Add_columns.png)


9. Create output.


![Create_Output.png](Create_Output.png)


In your card you can now use this new column as a comparison:  
   
 `CASE WHEN `series` = ‘text’ THEN `value` END / `Total Count``

