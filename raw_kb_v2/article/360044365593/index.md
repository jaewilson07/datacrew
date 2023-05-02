

Intro
-------

Thank for you choosing the install the Pipeline Velocity App! This guide is intended to help you connect this app to your own data. If you have completed the purchasing process for the app, you will be able to go through all of the steps outlined in this guide. The first steps is making sure that the app and its' DataFlow have been properly downloaded from the Domo Appstore and that your data is in the correct format for use in the app.


 Prerequisites
----------------

This app utilizes a tool called the Grid Builder in order to map your data to the schema the app requires. If you are not already familiar with the Grid Builder, please read our Grid Builder

here

. Though not required, it is also useful to have a working knowledge of how MySQL query works.


 Below is a diagram that shows the order in which your data will be fed through the DataFlow and output to the app.

Once you have become familiar with how the Grid Builder works, follow these next steps in order to make sure that the app and its' DataFlow have been properly deployed to you instance in Domo:

 If you purchased the Pipeline Velocity App through the Appstore, make sure that you have selected the "Try It" button located on the app's page in the Appstore in order to deploy the app and its' DataFlow to your instance. You will be asked to name the page where you'd like the app to live in Domo.
* Double check that the DataFlow has been deployed to your instance. To begin the double-checking process, navigate to the Data Center by clicking the
 **Data**
 button located in the top left corner of Domo (see image below for example.)
* Select
 **DataFlows**
 from the left side of the Data Center screen, then use the Data Center's search bar to search for "Pipeline Velocity". You should see a DataFlow that matches your search term.

If you've followed all of these steps and you still aren't able to find the app on the page you've created or the app's DataFlow, please contact Technical Support. For information on how to contact Support, please see:

Getting Help

.


 Step 1: Prepare Your Data
---------------------------

The Pipeline Velocity App displays the average days to closed and the conversion rate at each stage of the sales funnel—this means that you'll need two separate tables in order to run this app. One table will contain the "current details about opportunities" and the other table will be a "history of the stages for opportunities". Certain columns are required in order for the app's DataFlow to run, the table schemas below contain all of the required columns. The column names will be mapped when you fill out the Grid Builder, so you do not need to change your column names to fit the schemas. You may, though, add other categorical columns to the opportunity table that you'd like to use as filtering options (see examples below.)

*Note:**


* The Pipeline Velocity App has some filters already built-in that cannot be removed nor repositioned in the app. The built-in filters include
 **date range**
 ,
 **rep**
 , and
 **status**
 .
* You can use more than one DataSet as source data for the app, as long as the DataSets can be joined together using your
 **date**
 and
 **primary group**
 columns—information on how to do join in the Grid Builder can be found in later sections of this guide.
* If you are missing any columns, you can create them by setting a default value in the DataFlow using MySQL. For example, if you don't have a probability column you can set all of your values in the probability column to 0.

In the example above, all the fields for the opportunity table are originally created by two separate tables. The opportunity table did not have an owner name column so instead, the owner id was used to join the owner name from the user table, see the Entity Relationship Diagram below for further clarification. You can also use multiple tables to create the necessary tables you'll need, the Grid Builder step will explain how to do this.


 Step 2: Add Your Source Data to the DataFlow
-----------------------------------------------

As soon as you've prepped your data, you'll need to navigate to the app's DataFlow and add your own DataSets as input into the DataFlow.


 Follow these steps for adding your DataSets to the app's DataFlow:

 Navigate to the Data Center by clicking the
 **Data**
 button located in the top left corner of Domo (see image below for example.)
* Select
 **DataFlows**
 from the left side of the Data Center screen, then search for "Pipeline Velocity" in the Data Center's search bar. You should be able to locate a DataSet with that name.
* Click on the DataFlow and go into detail view, then click on the pencil icon from the right side of the page to edit the DataFlow.
* Remove the sample DataSets: "Opportunity", "Opportunity History", and "User". Keep the DataSets named "Pipeline Velocity-Settings" and "Pipeline Velocity - Grid Builder".
* Click the
 **Select DataSet**
 button, then search for the DataSets that you created for the app and click on them. Keep in mind that you'll only need two DataSets if you have all the necessary columns required by the app. For example, the user table can be used because it will provide the opportunity table with the owner name once they are joined in the Grid Builder.
* After you've added your DataSets, scroll the to bottom of the page and click the
 **Save**
 button.
* Navigate back to the Data Center.

Step 3: Edit the Grid Builder
--------------------------------

For the third step, you will need to edit the appropriate fields in the Grid Builder so they match your input data. This guide presents a basic set of steps, but for a more comprehensive tutorial on how the Grid Builder work please refer to the

Grid Builder Walkthrough

. As you make changes to the DataFlow, if may be wise to occasionally copy your work into an Excel Spreadsheet to track your changes, just in case anything goes wrong with your web browser during the editing process.


 Follow these steps to edit the Grid Builder:

 Navigate to the Grid Builder webform that came with the app. A webform is a type of DataSet so you'll need to search for it under the DataSet tab and not the DataFlow tab. The webform will be named "Pipeline Velocity - Grid Builder", click on this DataSet, then in the details view select the wrench menu from the right side of the screen and select "Edit Webform".

 In the SELECT column from C100 down, replace the sample values with the names of the columns from the DataSets in the FROM column, that you'd like used in the app. This is where you'll map your DataSets to the app, you may have more columns you want to add as filters so you may need to add more rows (see #1 in the example image above.)
* In the FROM column, change the value on row C100 to match the name of your first DataSet. Repeat this same step for all the tables you'll be using as source data—each new DataSet should be assigned the next 100's value in the "C" column. For example, start with 200 for the second DataSet, 300 for the third, etc. (see #2 in the example image above.)
* In the AS column from C100 down, choose names for the columns that you've listed in the SELECT column—avoid using spaces, number, and special characters for the names here. For example, Gross\_Sales as opposed to Gross Sales—this will make later steps easier (see #3 in examples image above.)
* In the "Include" column place a 1 in each row that you are including from your data that isn't being used solely for a join, if you aren't including that column, place a 0 in the "Include" column (see #5 in the example image above.)
* In the example, the opportunity table doesn't have an owner name column, so we joined the owner name column from the user table. To do a join, you will have to fill out the "JoinType" and "JoinCondition" columns on row C200. The "JoinType" needs to be in all CAPS and can be any type of join that is used in MySQL, additional joins usually use LEFT for the "JoinType". The "JoinCondition" references the row where your column is being brought in from you DataSet. The "JoinCondition" should look like this:
 `Ctable#.COLUMNNAME = Ctable#.COLUMNNAME.`
* As soon as you have the information entered for all your DataSets, you'll need to configure your filters. For each row of the Grid Builder that references a column in your data that you'd like to use as a filter you'll need to update the three filter columns, "FilterId", "FilterName", and "FilterInputType".

 On other rows that you'd like to use as filters, use incrementing number in the "FilterId" column (3,4,5,etc.), with the smallest number at the top row. Define filter name in the "FilterName" column, use "Multi Select" or "Single Select" for "FilterInputType", and leave "FilterIsPrimary" and "FilterIsPrimaryGroup" empty. Check out the

Grid Builder Walkthrough

for more information on what the two filter types do (see example image above.)
* Click the
 **Save & Continue**
 button at the top of the page to save the DataSet.

As soon as you've made changes to the Grid Builder, go to the Data Center and run the Pipeline Velocity DataFlow. If the DataFlow runs successfully, you've most likely filled out the Grid Builder correctly and if you've encountered any errors either review the

Grid Builder Walkthrough

or contact Technical Support. For information on how to contact Support, please see:

Getting Help

.


 Step 4: Validation
--------------------

Now that you have configured the Grid Builder, you should now be ready to check your app in order to validate your metrics. We suggest that you use the following process for validation:

. Build KPI cards to test metrics—build these cards based off of your source data and not the output data from the app. For example, if you are displaying trending sales by sales rep in the app, build a bar chart type card that displays sales per rep and have the date range of the KPI card match one of the date ranges that the app displays.
2. Compare your data in the KPI card to the data displayed in the app. Remember to make sure that your filtering options and date rangers match between the card and the app.
3. If you find any discrepancies, check to see if you need to change join conditions or groupings in the Grid Builder. Double check all of your calculations as well!
4. Repeat this process for any metrics you need to validate.


####
 Congratulations!

Your Pipeline Velocity App should now be ready to go! Enjoy getting the best value from your data. If you have any questions or need help troubleshooting, contact Technical Support. For information on how to contact Support, please see:

Getting Help

.

##


