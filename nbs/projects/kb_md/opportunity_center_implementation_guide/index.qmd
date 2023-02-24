---
title: Opportunity Center Implementation Guide
url: https://domo-support.domo.com/s/article/360044365473
linked_kbs:  ['[https://domo-support.domo.com/s/knowledge-base/](https://domo-support.domo.com/s/knowledge-base/)', '[https://domo-support.domo.com/s/](https://domo-support.domo.com/s/)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZampGAC](https://domo-support.domo.com/s/topic/0TO5w000000ZampGAC)', '[https://domo-support.domo.com/s/topic/0TO5w000000Zan9GAC](https://domo-support.domo.com/s/topic/0TO5w000000Zan9GAC)', '[https://domo-support.domo.com/s/article/360042922874](https://domo-support.domo.com/s/article/360042922874)', '[https://domo-support.domo.com/s/article/360044365473](https://domo-support.domo.com/s/article/360044365473)', '[https://domo-support.domo.com/s/topic/0TO5w000000Zan9GAC/available-apps](https://domo-support.domo.com/s/topic/0TO5w000000Zan9GAC/available-apps)', '[https://domo-support.domo.com/s/article/360043429933](https://domo-support.domo.com/s/article/360043429933)', '[https://domo-support.domo.com/s/article/360043429953](https://domo-support.domo.com/s/article/360043429953)', '[https://domo-support.domo.com/s/article/360042925494](https://domo-support.domo.com/s/article/360042925494)', '[https://domo-support.domo.com/s/article/360043429913](https://domo-support.domo.com/s/article/360043429913)', '[https://domo-support.domo.com/s/article/4408174643607](https://domo-support.domo.com/s/article/4408174643607)', '[https://domo-support.domo.com/s/login/](https://domo-support.domo.com/s/login/)']
article_id: 000004147
views: 1,081
created_date: 2022-10-24 21:25:00
last updated: 2022-10-24 22:41:00
---



Intro
-----


Thank you for choosing to install the Opportunity Center App! This guide is intended to help you connect this app to your own data. If you have completed the purchasing process for this app, then you will be able to go through all of the steps in this guide. The first steps are to make sure that the app and the app's DataFlow have been properly downloaded from the Appstore and that your data is in the correct format to be used in the app.


![opportunitycenter.png](opportunitycenter.png)



 Prerequisites
---------------


This app utilizes a tool called the Grid Builder to map your data to the schema that the app requires. If you are not already familiar with Grid Builder, please read our Grid Builder walkthrough [here](https://developer.domo.com/docs/installation-guides/grid-builder-walkthrough). Though it is not required, it is also useful to have a working knowledge of how MySQL query works.


Below is a diagram that displays the order in which your data will be fed through the DataFlow and then output to the app.


![gridbuilder.png](gridbuilder.png)


  
 When you are familiar with how the Grid Builder works, follow these next steps to make sure that the app and its DataFlow have been properly deployed to your Domo instance:


* If you purchased the Marketing ROI app through the Appstore, make sure that you have clicked the **Try It** button on the app's page in order to deploy the app and its DataFlow to your instance. You will be asked to name the page where you'd like the app to live in Domo.
* Double check that the DataFlow has been deployed to your instance. To double check this, navigate to the Data Center by clicking the **Data** button located in the top left corner of Domo (see image below for example.)


![Data_Tab.png](Data_Tab.png)


* Select **DataFlows** from the left side of the Data Center screen, then use the Data Center's search bar to search for "Opportunity Center". You should see a DataFlow that matches the name you searched for.


If you've followed these steps and you still can't locate the app on the page you created or the DataFlow, contact Technical Support. For information on how to contact Support, please see: [Getting Help](/s/article/360042922874).


Step 1: Prepare Your Data
-------------------------


The Opportunity Center App displays your opportunities according to forecasted close date, risk, owner, and stage—this means that you'll need three separate tables for running this app. One table will be the "current details about opportunities", another will be a "history of the stages for opportunities", and the last table will be "contact information for the opportunities". Certain columns are required in order for the DataFlow to run, the table schemas below show all of the required columns. The column names will be mapped when you fill out the Grid Builder, so you do not need to change your column names to fit the schemas. You may, however, add other categorical columns to the opportunity table, that you'd like to use as filtering options (see example below.)


![Screen_Shot_2019-10-31_at_8.55.57_AM.png](Screen_Shot_2019-10-31_at_8.55.57_AM.png)    ![Screen_Shot_2019-10-31_at_8.56.06_AM.png](Screen_Shot_2019-10-31_at_8.56.06_AM.png)    ![Screen_Shot_2019-10-31_at_8.56.14_AM.png](Screen_Shot_2019-10-31_at_8.56.14_AM.png)


In the example tables above all of the fields for the opportunity table were created using four separate tables, see the Entity Relationship Diagram below for further clarification on how this was done.  You can also use multiple tables to create the necessary tables, the Grid Builder section will explain how to do this.


![schemas.png](schemas.png)




 


**Note:**  


* The Opportunity app has some built-in filters that cannot be removed nor repositioned in the app. The built-in filters include, Limit, Stage, and Opportunity Owner.
* You can use more than one DataSet as source data, as long as they can be joined together using your date and primary group columns. Information on how to join the Grid Builder can be found later in this guide.
* If you are missing any columns you can create them by setting a default value in the DataFlow using MySQL. For example, if you don't have a probability column, then you can set all of your probability values to 0, you will notice that this can be done in the Grid Builder.






Step 2: Add Your Source Data to the DataFlow
--------------------------------------------


As soon as you've prepped your data, you'll need to navigate to the DataFlow and add your data as inputs to the DataFlow. 


Follow these steps to add your data as input to the app's DataFlow:


* Navigate to the Data Center by clicking the **Data** button located in the top left corner of Domo (see image below for example.)


![Data_Tab.png](Data_Tab.png)


* Click **DataFlows** on the left side of the Data Center screen, then search for "Opportunity Center" in the Data Center's search bar. You should be able to see a DataFlow with the same name.
* Click on the DataFlow to go into the detail view, then click the pencil icon on the right side of the page to edit the DataFlow.
* Remove the sample DataSets "Contact", "Opportunity", "Opportunity History", "User", "User Role", "Account", by clicking on the **x** on the corner of each DataSet. Keep the DataSets named, "Opportunity Center - Grid Builder" and "Opportunity Center - Settings".
* Click the **Select DataSet** button at the bottom of the Input DataSets section, then search for the DataSets that you've created for the app and add each of them.


![editmysql.png](editmysql.png)


* After you have added all of your DataSets, scroll to the bottom of the page and click the **Save** button.
* Navigate back to the Data Center.


Step 3: Edit the Grid Builder
-----------------------------


For this next step, you'll need to edit the appropriate fields in the Grid Builder in order to match your input data. This guide presents a basic set of steps, but for a more comprehensive tutorial on how the Grid Builder works please review the [Grid Builder Walkthrough](https://developer.domo.com/docs/installation-guides/grid-builder-walkthrough). As you make changes, it may be wise to occasionally copy your work into an Excel Spreadsheet to track your changes, just in case your web browser encounters any errors.


Follow these steps to edit the Grid Builder:


* First, navigate to the Grid Builder webform that came with the app. A webform is a type of DataSet so you will need to search for the webform in the DataSet tab and not the DataFlow tab—it will be named "Opportunity Center - Grid Builder". Select the DataSet, then in the details view, click the wrench menu icon on the right side of the screen and select **Edit Webform**.


![12345.png](12345.png)


* In the SELECT column from C100 down, replace the sample values with the names of columns from the DataSets called out in the FROM column that you'd like to use in the app. The SELECT column is where you'll map your data to the app—you will match the names in your columns with the columns required in the app in the AS column. You may have more columns that you want to add as filters, so you may need to add more rows (see #1 in the example image above.)
* In the FROM column, change the value on row C100 to match the name of your first DataSet—repeat this step for all of the tables that you'll be using as source data in the app. Each new DataSet should be assigned to the next 100's value in the "C" column. For example, start with 200 for the second DataSet, 300 for the third, etc. This app requires that you have at least 3 data tables, but more can be added if you are joining them to other tables (see #2 in the example image above.)
* In the AS column from C100 down, match the names in these columns to the ones that you listed in the SELECT column that have  the required columns in the table above (see #3 in the example image above.)
* In the "Include" column, place a 1 in each row that you are including from your data that isn't being used solely for joining purposes. If you are not including a column, place a 0 in the "Include" column (see #4 in the example image above.)
* In this example, the opportunity table does not have an owner name column so we joined the owner name column from the user table. To do a join, you will fill out the "JoinType" and "JoinCondition" columns on row C200. The "JoinType" column needs to be typed in all CAPS and can be any type of join used in MySQL, additional joins usually use LEFT as the "JoinType". The "JoinCondition" references the row where your column is being brought in from your DataSet. The "JoinCondition" column should look like this: `Ctable#.COLUMNNAME = Ctable#.COLUMNNAME.`(see #5 in the example image above.)
* As soon as you have all of the information entered for your DataSets, you'll then need to configure your filters. You'll need to update the three filter columns, "FilterId", "FilterName", and "FilterInputType", on each row of the Grid Builder that directly references a column in your data that you would like to use as a filter.


![additionalfilters.png](additionalfilters.png)


* On the other rows that you'd like to use as filters, use incrementing numbers for the "FilterId" column (3,4,5,etc.)and put the smallest number at the top. Define filter names in the "FilterName" column, use "Multi Select" or "Single Select" for "FilterInputType" (see the [Grid Builder Walkthrough](https://developer.domo.com/docs/installation-guides/grid-builder-walkthrough) for more information on what the two filter types do,) and leave the "FilterIsPrimary" and "FilterIsPrimaryGroup" columns empty.
* Click **Save & Continue** at the top of the page to save the DataSet.


As soon as you've made all the necessary changes to the Grid Builder, go back to the Data Center and run the Opportunity Center DataFlow. If the DataFlow runs successfully then you've most likely filled out the Grid Builder correctly. If you do encounter any errors, review the [Grid Builder Walkthrough](https://developer.domo.com/docs/installation-guides/grid-builder-walkthrough) or contact Technical Support. For information on how to contact Support, please see: [Getting Help](/s/article/360042922874).


Step 4: Validation
------------------


Now that you have configured the Grid Builder, you should now be ready to check your app to validate the metrics. 


We suggest following this process for validation:


1. Build KPI cards to test the metrics. Build these cards based off of your source data, not the output data in the app. For example, if you are displaying trending sales by sales rep in the app, build a bar chart type card that displays sales per rep and have the date range in the KPI card match one of the date ranges displayed in the app.
2. Compare your data in the KPI card to the data in the app. Remember to make sure that your filtering options and date ranges match between the app and the card.
3. If you do find discrepancies, check to see if you need to change any join conditions or groupings in the Grid Builder and double check your calculations.
4. Repeat this process for any metrics you need to validate.


#### Congratulations!


Your Opportunity Center App should now be ready to go! Enjoy getting the best insights from your data. If you have any questions or need help troubleshooting, contact Technical Support. For information on how to contact Support, please see: [Getting Help](/s/article/360042922874).



 


 

