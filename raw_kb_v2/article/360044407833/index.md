

Intro
-------

Thank you for choosing to install the Sales Leaderboard App! This guide is intended to help you connect this app to your own data. If you have completed the purchasing process for the app, then you'll be able to complete all of the steps in this guide. The first steps are making sure that the app and the app's DataFlow have been properly downloaded from the Appstore and that your data is in the correct format for use in the app.

Prerequisites
---------------

This app utilizes a tool called the Grid Builder to map your data to the schema the app requires. If you are not familiar with the Grid Builder, please read our Grid Builder walkthrough

here

. Though it is not required, it is also useful to have a working knowledge of how MySQL query works.


 Below is a diagram that shows the order in which your data will be fed through the app's DataFlow and then output to the app.

Once you are familiar with how the Grid Builder works, follow these next steps to make sure that the app and its DataFlow have been properly deployed to your Domo instance.

 If you purchased the Sales Leaderboard App through the Domo Appstore, make sure that you've clicked the
 **Try It**
 button on the app's page in the Appstore— this deploys the app and its DataFlow to your instance. You will be asked to name the page where you'd like the app to live in Domo.
* Double check that the DataFlow has been deployed to your instance. To check this, navigate to the Data Center by clicking the
 **Data**
 button located in the top left corner of Domo (see image below for example.)

 Click
 **DataFlows**
 from the left side of the Data Center screen, then use the Data Center's search bar to search for "Sales Leaderboard". You should be able to see a DataFlow that matches the name you searched for.

If you've followed all of these steps and you still aren't able to find the app on the page you created, or the DataFlow, contact Technical Support. For information on how to contact Support, please see:

Getting Help

.


 Step 1: Prepare Your Data
---------------------------

The Sales Leaderboard App displays the top sales performers for your current and forecasted end-of-period dates—this means that you'll need two separate tables in order to run this app. One table will be the "current details about opportunities" and the other will be a table about "the users or sales performers", certain columns are required in the tables for the DataFlow to run. The table schemas below display all of the required columns, the column names will be mapped when you fill out the Grid Builder so you do not need to change your column names to fit the schemas. You may add other categorical columns to the opportunity table that you'd like the use as filtering options. For example, the optional user role table is an extra filter that will be added to the app (see examples below.)

In the example below, the three tables are all joined together to create the DataSets that will power the Sales Leaderboard App. The Entity Relationship Diagram below further clarifies how the table will be joined. You can also use multiple tables to create the necessary tables you'll need, the Grid Builder section will explain how to do this.


**Note:**


* The Sales Leaderboard App has a date range filter built-in that cannot be removed nor repositioned in the app.
* You can use more than one DataSet as source data for the app, as long as the DataSets can be joined together using your date and primary group columns. Information on how to do joins in the Grid Builder can be found later in this guide.
* If you are missing any columns, you can create them by setting a default value in the DataFlow using MySQL. For example, if you don't have a probability column you can set all of your probability values to 0.

Step 2: Add Your Source Data to the DataFlow
----------------------------------------------

As soon as you've prepped your data, you'll then need to navigate to the DataFlow and add your data as inputs into the DataFlow.


 Follow these steps to add your data as inputs:

 Navigate to the Data Center by clicking the
 **Data**
 button located in the top left corner of Domo (see image below for example.)

 Click
 **DataFlows**
 from the left side of the Data Center screen, then search for "Sales Leaderboard" in the Data Center's search bar. You should be able to see a DataFlow with that name.
* Click on the app's DataFlow to go into the detail view, then click on the pencil icon from the right side of the page to edit the DataFlow (see example image below.)

 Remove the sample DataSets: "Opportunity", "User", and "User Role", by clicking the
 **x**
 on the corner of each DataSet. Keep the DataSets titled "Sales Leaderboard - Settings" and "Sales Leaderboard - Grid Builder" as input.
* Click the
 **Select DataSet**
 button, then search for the DataSets that you've created for the app and add them as inputs to the app.

 After you have added your DataSets, scroll to the bottom of the page and click the
 **Save**
 button.
* Navigate back to the Data Center.

Step 3: Edit the Grid Builder
-------------------------------

For this third step, you'll need to edit the appropriate fields in the Grid Builder to match your input data. This guide presents a basic set of steps, but for a more comprehensive tutorial on how the Grid Builder works please review the

Grid Builder Walkthrough

. As you make changes to the Grid Builder, it may be wise to occasionally copy your work into an Excel Spreadsheet to track your changes, in case your web browser encounters any errors during the process.


 Follow these steps to edit the Grid Builder:

 Navigate to the Grid Builder webform that came with the app. A webform is a type of DataSet, so you'll need to search for it in the DataSet tab and not the DataFlow tab. The webform will be named "Sales Leaderboard - Grid Builder", click on the DataSet then in the details view click the wrench menu icon on the right side, then click "Edit Webform".

 In the SELECT column from C100 down, replace the sample values with the names of the columns, from the DataSets in the FROM column, that you'd like to use in the app. This column is where you'll map your data to the app. You may have more columns that you want to add as filters, so you may need to add rows (see #1 in the example image above.)
* In the FROM column, change the value on row C100 to match the name of your first DataSet—repeat this step for all the tables that you'll be using as source data. Each new DataSet should be assigned to the next 100's value in the "C" column. For example, start with 200 for the second DataSet, 300 for the third, etc. (see #2 in the example image above.)
* In the AS column from C100 down, select names for the columns that you listed in the SELECT column—avoid using spaces, numbers, and special characters in the names. For example, use Gross\_Sales as opposed to Gross Sales (see #3 in the example image above.)
* In the "Include" column, place a 1 in each row that you are including from your data that isn't being used solely as a join. If you are not including a column, place a 0 in the corresponding "Include" column row (see #4 in the example image above.)
* In the example image, the opportunity table needs to be used to join the user and user role tables.  To do a join you'll need to fill out the "JoinType" and "JoinCondition" columns on row C200. The "JoinType" column needs to be typed in all CAPS and can use any type of join used in MySQL—additional joins usually use LEFT as the "JoinType". The "JoinCondition" references the row where your column is being brought in from your DataSet, the column should look like this

Ctable#.COLUMNNAME=Ctable#.
 `=`
 COLUMNNAME.
* As soon as you have the information entered for all of your DataSets, you'll then need to configure you filters. On each row of the Grid Builder that references a column in your data that you'd like to use as a filter, you'll need to update the three filter columns: "FilterId", "FilterName" and "FilterInputType".

 On other rows that you'd like to use as filters, use incrementing numbers in the "FilterId" column (3,4,5,etc.) with the smallest number placed at the top. Define filter names in the "FilterName" column, and use either "Multi Select" or "Single Select" for your "FilterInputType". Please review the

Grid Builder Walkthrough

for more information on what these two filter types do. Leave the "FilterIsPrimary" and "FilterIsPrimaryGroup" columns empty (see example image above.)
* Click
 **Save & Continue**
 at the top of the page to save your DataSet.

As soon as you've made the necessary changes to the Grid Builder, go back to the Data Center and run the Sales Leaderboard DataFlow. If the DataFlow runs successfully, then you've most likely filled out the Grid Builder correctly. If you do encounter any errors, either review the

Grid Builder Walkthrough

or contact Technical Support. For information on how to contact Support, please see:

Getting Help

.


 Step 4: Validation
--------------------

Now that you have configured the Grid Builder, you should now be ready to check your app to validate your metrics.


 We suggest following this validation process:

. Build KPI cards to test your metrics. Build these cards based off of your source data and not the app's output data. For example, if you are displaying trending sales by sales rep in the app, then build a bar chart type card that displays sales per rep and have the date range in the KPI card match one of the date ranges displayed in the app.
2. Compare your data in your KPI cards to the data in your app—remember to make sure that your filtering options and date ranges match between the app and the card.
3. If you do find any discrepancies, check to see if you need to change join conditions or groupings in the Grid Builder, and double check your calculations.
4. Repeat this validation process for any metrics you need to validate.


####
 Congratulations!

Your Sales Leaderboard app should now be ready to go! Enjoy getting the best value from your data. If you have any questions or need help troubleshooting, contact Technical Support. For information on how to contact Support, please see:

Getting Help

.


