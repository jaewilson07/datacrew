

Intro
-------

Thank you for choosing to install the Marketing ROI App! This guide is intended to help you connect this app with your own data. If you have completed the purchasing process for the Marketing ROI App, then you will be able to go through all the steps in this guide. The first steps are making sure that the app and its DataFlow have been properly downloaded from the Appstore and that your data is in the correct format to be used by the app.


 Prerequisites
----------------

This app utilizes a tool called Grid Builder to map your data to the schema that the app requires. If you are not already familiar with Grid Builder, please read our Grid Builder walkthrough

here

. Though not required, it is also useful to have a working knowledge of how MySQL query works.


 Below is a diagram that shows the order in which your data will be fed through the DataFlow and then output to the app.

When you are familiar with how the Grid Builder works, follow these next steps to ensure that the app and the DataFlow have been properly deployed to your Domo instance:

 If you purchased the app through the Appstore, make sure that you have clicked the
 **Try It**
 button on the app's page in the Appstore—this deploys the app and its DataFlow to your instance. You will be asked to name the page where you'd like the app to appear in your Domo instance.
* Double check that the DataFlow has been deployed to your instance. To do this, navigate to the Data Center by clicking the
 **Data**
 button located in the top left corner of Domo (see image below for example.)
* Select
 **DataFlows**
 from the left side of the Data Center screen, then use the Data Center's search bar to search for "Marketing ROI". You should be able to locate a DataFlow that matches that name.

If you've followed these steps and you still can't find the app on the page you created or its DataFlow, contact Technical Support. For information on how to contact Support, please see:

Getting Help

.


 Step 1: Prepare Your Data
---------------------------

The Marketing ROI App displays revenue, spend, and conversion rates for each lead source at every stage of the funnel, in order to gain a clear view of the real-time ROI for each of your marketing channels—this means that you'll need two separate tables for running this app. One table will contain "current details about opportunities" and the other table will contain "history of the stages for opportunities". Certain columns are required in order for the DataFlow to run, the table schemas below display all of the required columns. The column names will be mapped when you fill out the Grid Builder, so you don't need to change your column names to fit the schemas. Although, you may add other categorical columns to the opportunity table that you'd like to use as filtering options (see examples below.)


 When you downloaded the app, a DataSet named "Marketing Leadsource Category Map" was created, so you must search for this DataSet. Once you've located the DataSet, click on it and select
 **Edit Webform**
 , here you will manually update the webform with the name of the statuses that appear in your data. Update the category column and erase all rows that were previously populated with any sample data (see example table below.)

In the example, all the fields for the opportunity table are created from two tables. The opportunity table in the example did not have an owner name column so it used the owner id to join the owner name from the user table. You can also use multiple tables to create the necessary tables, the Grid Builder section will explain how to do this (see the Entity Relationships Diagram below.)


**Note:**


* The Marketing ROI App has some filters built-in that cannot be removed nor repositioned in the app—these built-in filters are date range, rep, and status.
* You can use more than one DataSet as source data for the app, as long as the DataSets can be joined together using your date and primary group columns. Information on how to do joins in the Grid Builder can be found in later sections.
* If you are missing some columns in your data, you can create them by setting a default value in the DataFlow using MySQL. For example, if you don't have a probability column then you can set all of your probability values to 0.

Step 2: Add Your Source Data to the DataFlow
----------------------------------------------

As soon as you've prepped your data, you'll need to navigate to the DataFlow an add your DataSets as inputs into that DataFlow.


 Follow these steps for adding your data as input to the Marketing ROI DataFlow:

 Navigate to the Data Center by clicking the
 **Data**
 button located in the top left corner of Domo (see image below for example.)
* Click
 **DataFlows**
 from the left side of the Data Center screen, then search for "Marketing ROI" in the Data Center's search bar. You should be able to locate a DataFlow with the same name.
* Select the app's DataFlow and go into the detail view, then click on the pencil icon on the right side of the page to edit the DataFlow.
* Remove the sample DataSets, "Opportunity" and "Opportunity History", by selecting the
 **x**
 on the corner of each DataSet. Keep the DataSets named "Marketing ROI - Grid Builder", "Marketing ROI - Settings", and "Marketing Leadsource Category Map".
* Click the
 **Select DataSet**
 button then search for the DataSets that you created for the Marketing ROI App and click on each to add them as inputs.
* After you have added your DataSets, scroll to the bottom of the page and select the
 **Save**
 button.
* Navigate back to the Data Center.


 Step 3: Edit the Grid Builder
-------------------------------

For the third step, you'll need to edit the appropriate fields in the Grid Builder to match your input data. This guide presents a basic set of steps, but for a more comprehensive tutorial on how the Grid Builder works please review the

Grid Builder Walkthrough

. As you make changes, it may be wise to occasionally copy your work into an Excel Spreadsheet to track the changes you make, in case any errors occur in your web browser during this process.


 Follow these steps to edit the Grid Builder:

 Navigate to the Grid Builder webform that came with the app. A webform is a type of DataSet, so you'll need to search for it in the DataSet tab and not the DataFlow tab, it will be named "Marketing ROI - Grid Builder". Click on the DataSet, the in the details view click the wrench menu icon located on the right side, then click
 **Edit Webform**
 .

 In the SELECT column from C100 down, replace the sample values with the names of the columns from the DataSets listed in the FROM column that you'd like to utilize in the app—this is where you map your data to the app. You may have more columns that you want to add as filters, so you may need to add more rows (see #1 in the example image above.)
* In the FROM column, change the value on row C100 to match the name of your first DataSet. Repeat this step for all the tables that you'll be using as source data, each new DataSet should be assigned to the next 100's value in the "C" column. For example, start with 200 for the second DataSet, 300 for the third, etc. (see #2 in the example image above.)
* In the AS column from C100 down, choose names for the columns that you listed in the SELECT column—avoid using spaces, numbers, and special characters in the names. For example, use Gross\_Sales as opposed to Gross Sales. This will makes later steps easier (see #3 in the example image above.)
* In the provided example, the opportunity table does not have an owner name column, so we joined the owner name column from the user table. To do a join you will need to fill out the "JoinType" and "JoinCondition" columns on row C200. The "JoinType" column needs to be filled in with all CAPS and can contain any type of join that is used in MySQL, additional joins usually use LEFT for the "JoinType". The "JoinCondition" columns references the row where you column is being brought in from your DataSet. The "JoinCondition" should look like this:
 `Ctable#.COLUMNNAME = Ctable#.COLUMNNAME.`
 (see #5 in the example image above.)
* As soon as you have all the information entered from your DataSets, you'll then need to configure your filters. On each row of the Grid Builder that references a column in your data that you'd like used as a filter you'll need to update the three filter column, "FilterId", "FilterName", and "FilterInputType", with these.

 In the other rows that you'd like to use as filters, use incrementing number in the "FilterId" column (3,4,5,etc.) with the smallest number at the top. Define filter names in the "FilterName" column, use "Multi Select" or "Single Select" for "FilterInputType", leave "FilterIsPrimary" and "FilterIsPrimaryGroup" empty. Check out the

Grid Builder Walkthrough

for more information about the filter types (see example above.)
* Click
 **Save & Continue**
 at the top of the page to save the changes you've made in the Grid Builder.

As soon as you've made all the necessary changes to the Grid Builder, go back to the Data Center and run the the Marketing ROI DataFlow. If the DataFlow runs successfully, then you've most likely filled out the Grid Builder correctly. If you do encounter any errors, review the

Grid Builder Walkthrough

or contact Technical Support. For information on how to contact Support, please see:

Getting Help

.


 Step 4: Validation
--------------------

Now that you've configured the Grid Builder, you should now be ready to check your app in order to validate your metrics.


 We suggest following this process for validation:

. Build KPI cards to test your metrics. Build these cards based off of your source data, not the output data from the app. For example, if you are displaying trending sales by sales rep in the app, build a bar chart type card that displays sales per rep and have the date range of the KPI card match one of the date ranges displayed in the app.
2. Compare your data in the KPI card to the data in the app. Remember to make sure that your filtering options and date ranges match between the app and the KPI card.
3. If you do find any discrepancies, check to see if you need to change join conditions or groupings in the Grid Builder and double check your calculations.
4. Repeat this process for any metrics to you may need to validate.


####
 Congratulations!

Your Marketing ROI App should be ready to go! Enjoy getting the best value out of your data. If you have any questions or need help troubleshooting, contact Technical Support. For information on how to contact Support, please see:

Getting Help

.

##


