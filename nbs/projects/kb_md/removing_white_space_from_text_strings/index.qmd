---
title: Removing White Space from Text Strings
url: https://domo-support.domo.com/s/article/360042923534
linked_kbs:  ['[https://domo-support.domo.com/s/knowledge-base/](https://domo-support.domo.com/s/knowledge-base/)', '[https://domo-support.domo.com/s/](https://domo-support.domo.com/s/)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZamzGAC](https://domo-support.domo.com/s/topic/0TO5w000000ZamzGAC)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZaoJGAS](https://domo-support.domo.com/s/topic/0TO5w000000ZaoJGAS)', '[https://domo-support.domo.com/s/article/360042923534](https://domo-support.domo.com/s/article/360042923534)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZaoJGAS/transformation-tips-and-tricks](https://domo-support.domo.com/s/topic/0TO5w000000ZaoJGAS/transformation-tips-and-tricks)', '[https://domo-support.domo.com/s/article/360043429933](https://domo-support.domo.com/s/article/360043429933)', '[https://domo-support.domo.com/s/article/360043429953](https://domo-support.domo.com/s/article/360043429953)', '[https://domo-support.domo.com/s/article/360042925494](https://domo-support.domo.com/s/article/360042925494)', '[https://domo-support.domo.com/s/article/360043429913](https://domo-support.domo.com/s/article/360043429913)', '[https://domo-support.domo.com/s/article/4408174643607](https://domo-support.domo.com/s/article/4408174643607)', '[https://domo-support.domo.com/s/login/](https://domo-support.domo.com/s/login/)']
article_id: 000004594
views: 2,254
created_date: 2022-10-24 22:15:00
last updated: 2022-10-24 22:41:00
---



You can use Magic ETL to remove spaces from text strings.


**To remove spaces from text strings,**


1. Open Magic ETL.
2. For your input DataSet, select the DataSet you want to remove spaces from.  
   
![df_removewhitespace_1.png](df_removewhitespace_1.png)
3. Add a "Replace Text" tile.
4. Under **Select a column to search**, select the column you want to remove spaces from.
5. Under **Enter a term to search for**, enter \s.  
  




 

**Note:** In RegEx \s is the expression for whitespace.
6. Check the box reading **Use RegEx**.  
   
![df_removewhitespace_2.png](df_removewhitespace_2.png)
7. Repeat steps 4-6 for all columns that need to be corrected.
8. Click **Done**.
9. Add an output DataSet and name it.   
   
![df_removewhitespace_3.png](df_removewhitespace_3.png)


Your output DataSet should incorporate the changes. 

