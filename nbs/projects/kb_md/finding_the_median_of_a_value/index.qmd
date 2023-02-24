---
title: Finding the Median of a Value
url: https://domo-support.domo.com/s/article/360042923474
linked_kbs:  ['[https://domo-support.domo.com/s/knowledge-base/](https://domo-support.domo.com/s/knowledge-base/)', '[https://domo-support.domo.com/s/](https://domo-support.domo.com/s/)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZamzGAC](https://domo-support.domo.com/s/topic/0TO5w000000ZamzGAC)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZaoJGAS](https://domo-support.domo.com/s/topic/0TO5w000000ZaoJGAS)', '[https://domo-support.domo.com/s/article/360042923474](https://domo-support.domo.com/s/article/360042923474)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZaoJGAS/transformation-tips-and-tricks](https://domo-support.domo.com/s/topic/0TO5w000000ZaoJGAS/transformation-tips-and-tricks)', '[https://domo-support.domo.com/s/article/360043429933](https://domo-support.domo.com/s/article/360043429933)', '[https://domo-support.domo.com/s/article/360043429953](https://domo-support.domo.com/s/article/360043429953)', '[https://domo-support.domo.com/s/article/360042925494](https://domo-support.domo.com/s/article/360042925494)', '[https://domo-support.domo.com/s/article/360043429913](https://domo-support.domo.com/s/article/360043429913)', '[https://domo-support.domo.com/s/article/4408174643607](https://domo-support.domo.com/s/article/4408174643607)', '[https://domo-support.domo.com/s/login/](https://domo-support.domo.com/s/login/)']
article_id: 000004603
views: 2,428
created_date: 2022-10-24 22:15:00
last updated: 2022-10-24 22:41:00
---



You can use an SQL DataFlow to find the median of a value. You can do this in either a MySQL or Redshift DataFlow.


#### MySQL


Transform\_data\_1:



`SELECT` 


`* ,`


`@row := @row + 1 AS 'row count'` 


`FROM input_dataset,` 


`(SELECT @row:=0) a` 


`ORDER BY `value``



Transform\_data\_2:



`SELECT` 


`*,` 


`(CASE    
WHEN (SELECT MAX(`row count`) FROM transform_data_1) % 2 = 0   
    
THEN    ((SELECT `value` FROM transform_data_1 WHERE `row count` = (((SELECT MAX(`row count`) FROM transform_data_1)/2)+1)) + (SELECT `value` FROM transform_data_1 WHERE `row count` = (((SELECT MAX(`row count`) FROM transform_data_1)/2))) ) /2         
   
WHEN (SELECT MAX(`row count`) FROM transform_data_1) % 2 != 0     
   
THEN (SELECT `value` from transform_data_1 WHERE `row count` = (((SELECT MAX(`row count`) FROM transform_data_1)+1)/2))  
   
END) AS 'Median'`


`FROM transform_data_1`



Your output is then: 


`SELECT * FROM transform_data_2`


#### Redshift


Redshift has its own function to easily calculate the median of a range.


`MEDIAN ("column_name")`


This function is best used when you want to find the median of the entire range of a column.


Transform\_data\_1:


`SELECT`


`MEDIAN ("total_line_items_price")`


`FROM "table_name"`


Your output is then:


![Median_Function.jpg](Median_Function.jpg)


 


The `MEDIAN` function can also be windowed to group by another column.


`MEDIAN ( "column_name" ) OVER ( PARTITION BY "partition_column_name" )`


Transform\_data\_1:


`SELECT`


`"email",`


`MEDIAN ("total_line_items_price") OVER ("email")`


`FROM "table_name"`


Your output is then:


![Windowed_Median_Redshift.jpg](Windowed_Median_Redshift.jpg)


You can now see what the median item price is per person.

