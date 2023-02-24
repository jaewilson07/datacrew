---
title: Connecting to Clicktale Data in Domo
url: https://domo-support.domo.com/s/article/360043437513
linked_kbs:  ['[https://domo-support.domo.com/s/knowledge-base/](https://domo-support.domo.com/s/knowledge-base/)', '[https://domo-support.domo.com/s/](https://domo-support.domo.com/s/)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZammGAC](https://domo-support.domo.com/s/topic/0TO5w000000ZammGAC)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZanzGAC](https://domo-support.domo.com/s/topic/0TO5w000000ZanzGAC)', '[https://domo-support.domo.com/s/article/360042931894](https://domo-support.domo.com/s/article/360042931894)', '[https://domo-support.domo.com/s/article/360043429573](https://domo-support.domo.com/s/article/360043429573)', '[https://domo-support.domo.com/s/article/360043430053](https://domo-support.domo.com/s/article/360043430053)', '[https://domo-support.domo.com/s/article/360043437513](https://domo-support.domo.com/s/article/360043437513)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZanzGAC/other-connection-methods](https://domo-support.domo.com/s/topic/0TO5w000000ZanzGAC/other-connection-methods)', '[https://domo-support.domo.com/s/article/360043429933](https://domo-support.domo.com/s/article/360043429933)', '[https://domo-support.domo.com/s/article/360043429953](https://domo-support.domo.com/s/article/360043429953)', '[https://domo-support.domo.com/s/article/360042925494](https://domo-support.domo.com/s/article/360042925494)', '[https://domo-support.domo.com/s/article/4408174643607](https://domo-support.domo.com/s/article/4408174643607)', '[https://domo-support.domo.com/s/article/360043429913](https://domo-support.domo.com/s/article/360043429913)', '[https://domo-support.domo.com/s/login/](https://domo-support.domo.com/s/login/)']
article_id: 000003169
views: 2,144
created_date: 2022-10-24 21:11:00
last updated: 2022-10-24 22:39:00
---



Intro
-----


You can pull Clicktale data into Domo as CSV data using our CSV-SFTP connector. Once you have created a Clicktale DataSet, you can use Beast Mode to add Replay links to your Clicktale cards. This article explains how to perform both of these tasks.


Prerequisites
-------------


To pull Clicktale data into Domo, you will need SFTP credentials (which should be provided to you by Clicktale). These credentials consist of the following:


* An SFTP hostname
* The SFTP username and password


Importing Clicktale Data into Domo
----------------------------------


To import your Clicktale data into Domo, you must connect to Clicktale's SFTP server using credentials provided to you by Clicktale.


**To import Clicktale data into Domo,**


1. Do one of the following:


	* Select ![add_to_domo_icon.png](add_to_domo_icon.png) **> Data > File**.
	* Select **Data** in the toolbar at the top of the screen, then click **File** in the **Connect Data** area.
	* Select **Appstore** in the toolbar at the top of the screen, click the **Connectors** tab, then search for "CSV-SFTP."
2. Click the "CSV-SFTP" tile.
3. Click **Get the Data**.
4. In the **Credentials** pane, enter your SFTP credentials as provided by Clicktale, then click **Connect**.
5. In the **Details** pane, set the desired options for your CSV file.   
 For more information about the available options, see [CSV-SFTP Connector](/s/article/360042931894 "CSV-SFTP Connector").
6. In the **Scheduling** pane, set the DataSet to update every day, and set **Update** to **Append**.
7. In the **Name & Describe Your DataSet** pane, enter a name and description for the DataSet.
8. Click **Save**.


Your Clicktale data is now imported into Domo as a CSV DataSet.


Adding Replay Links to Your Card
--------------------------------


Once your Clicktale data is available in Domo, you can use it to build table cards containing Replay links. These links allow users to gain incredible insights from your data. 


**To build a table with Replay links from your Clicktale data,**


1. In the details view for the DataSet, click the **Cards** tab then click **Add Card**.
2. In the Analyzer, build your table as described in [Table](/s/article/360043429573 "Table").
3. Add a Beast Mode calculation with the following formula:  
   
 `CONCAT('<div><a href="<http://dmz01.app.clicktale.com/Player.aspx?PID=>',`ProjectID`,'&UID=',`UID`,'&SID=',`SID`,'" target="_blank">','Click To Replay','</a></div>')`  
   
 ![clicktale_replay_beastmode.png](clicktale_replay_beastmode.png)
4. Use the Beast Mode calculation to add a new table column with Clicktale Replay links.   
   
 ![clicktale_column.png](clicktale_column.png)  
   
 For more information about Beast Mode, see [Transforming Data Using Beast Mode](/s/article/360043430053).
