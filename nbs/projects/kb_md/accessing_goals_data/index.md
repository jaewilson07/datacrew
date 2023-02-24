---
title: Accessing Goals Data
url: https://domo-support.domo.com/s/article/4577793742615
linked_kbs:  ['[https://domo-support.domo.com/s/knowledge-base/](https://domo-support.domo.com/s/knowledge-base/)', '[https://domo-support.domo.com/s/](https://domo-support.domo.com/s/)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZamsGAC](https://domo-support.domo.com/s/topic/0TO5w000000ZamsGAC)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZanmGAC](https://domo-support.domo.com/s/topic/0TO5w000000ZanmGAC)', '[https://domo-support.domo.com/s/article/4577172785559](https://domo-support.domo.com/s/article/4577172785559)', '[https://domo-support.domo.com/s/article/360043433813](https://domo-support.domo.com/s/article/360043433813)', '[https://domo-support.domo.com/s/article/4577793742615](https://domo-support.domo.com/s/article/4577793742615)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZanmGAC/goals-center](https://domo-support.domo.com/s/topic/0TO5w000000ZanmGAC/goals-center)', '[https://domo-support.domo.com/s/article/360043429933](https://domo-support.domo.com/s/article/360043429933)', '[https://domo-support.domo.com/s/article/360043429953](https://domo-support.domo.com/s/article/360043429953)', '[https://domo-support.domo.com/s/article/360042925494](https://domo-support.domo.com/s/article/360042925494)', '[https://domo-support.domo.com/s/article/360043429913](https://domo-support.domo.com/s/article/360043429913)', '[https://domo-support.domo.com/s/article/4408174643607](https://domo-support.domo.com/s/article/4408174643607)', '[https://domo-support.domo.com/s/login/](https://domo-support.domo.com/s/login/)']
article_id: 000004347
views: 1,154
created_date: 2022-10-24 21:41:00
last updated: 2022-10-24 22:39:00
---



Intro
-----


In Goals, you can see the overall status and progress of goals and metrics. With DomoStats, you can build reports and dashboards to analyze goal-related data. 


Viewing Goal Status and Progress
--------------------------------


In the **Personal**, **Teams**, or **Company** tabs, you can view the status and progress of each goal.


![2022-09-14_16-11-44.png](2022-09-14_16-11-44.png)


 


The summary banner displays your overall progress.


![Screen_Shot_2022-09-14_at_4.17.05_PM.png](Screen_Shot_2022-09-14_at_4.17.05_PM.png)


 


The **Overall Goal Progress** calculates the average progress of all of your goals in the current period. It also shows the distribution based on your goals' statuses. 







**Note:** The Overall Goal Progress does not account for goals with a "Not Started" status.  



![2022-09-14_16-11-44_copy_3.png](2022-09-14_16-11-44_copy_3.png)


 


The **Average Metric Progress** calculates the average progress of all of your metrics in the current period. It also shows the distribution based on your metrics based on your organization's specified percentage ranges. 







**Note:** Admins can choose percentage ranges for On Track, Needs Attention, and At Risk in **Admin**. For more information, see [Configuring Goals Settings](/s/article/4577172785559).



 


**![2022-09-14_16-11-44_copy_2.png](2022-09-14_16-11-44_copy_2.png)**


 


You can also view metric progress summaries by hovering over any colored dot. In this view, you can see the **Progress**, **Owner**, when the metric was **Last updated**, and the projected **Achieve by** date. To see more details, select the metric. 


![2022-09-14_17-16-35.png](2022-09-14_17-16-35.png)


 


Colored icons will indicate how individual goals and metrics are performing. 


 


**Goal Status Key:**







**Note:** If a goal's status is "Not Started," the progress is automatically set to 0% regardless of the underlying metric progress. 






|  |  |
| --- | --- |
| **Icon** | **Status** |
| Screen_Shot_2022-06-02_at_12.32.27_PM.png | On Track |
| Screen_Shot_2022-06-02_at_12.32.35_PM.png | Needs Attention |
| Screen_Shot_2022-06-02_at_12.32.19_PM.png | At Risk |
|  
Screen_Shot_2022-09-14_at_5.04.55_PM.png
  | Not Started |


 


**Metric Progress Key:**




|  |  |
| --- | --- |
| **Icon** | **Status** |
| Screen_Shot_2022-06-02_at_3.25.50_PM.png | Between 70% and 100% complete |
| Screen_Shot_2022-06-02_at_3.27.04_PM.png | Between 40% and 69% complete |
| Screen_Shot_2022-06-02_at_3.27.25_PM.png | Between 0% and 39% complete |
| Screen_Shot_2022-09-14_at_5.06.59_PM.png | Metric has a future Start Date |


 


Connecting with DomoStats
-------------------------


DomoStats is a connector that gives you a comprehensive view of your Domo instances, including Goals data. You can use DomoStats DataSets to view raw data about your organization's goals. With this raw data, you can create DataFlows with Magic ETL and create visualizations in Analyzer. This section describes how to connect to your Goals data in DomoStats. For more information, see the OKR Key Results DataSet or OKR Objectives DataSet sections of [DomoStats Connector.](/s/article/360043433813)


 


1. In the navigation header, select **Data**.  


![2022-08-11_16-33-17.png](2022-08-11_16-33-17.png)


 


2. From the **Connect Data** options, select **Connectors**.  


![2022-08-11_16-34-13.png](2022-08-11_16-34-13.png)


 


3. Enter DomoStats in the search field. Select **DomoStats**. 


![Screen_Shot_2022-08-11_at_4.34.50_PM.png](Screen_Shot_2022-08-11_at_4.34.50_PM.png)


 


4. From the Report menu, choose either **OKR Objectives** or **OKR Key Results.** Select **Next.**


Each option will generate a report based on your selection. OKR Objectives will display data for Goals, and OKR Key Results will display data for Metrics.  


![2022-08-11_16-35-59.png](2022-08-11_16-35-59.png)


6. Determine a schedule for when the DataSet will update and select **Next**.


7. Choose a name and optional description for your DataSet. Select **Save and Run.**


The **Overview** page displays. 


8. Select **Data** from the tab bar. 


After the connector finishes running, the raw data will be viewable in the **Data** tab. You can search for a goal or key result by filtering on the **Name** column.


![Screen_Shot_2022-07-19_at_2.01.17_PM.png](Screen_Shot_2022-07-19_at_2.01.17_PM.png)


 


All of the data related to Domo Goals is stored in the DomoStats DataSets. This data can be made into visualizations as well as transformed using MagicETL DataFlow. The image below shows an example dashboard created to display a summary of the company's goals:


 


![Screen_Shot_2022-08-11_at_6.24.48_PM.png](Screen_Shot_2022-08-11_at_6.24.48_PM.png)

