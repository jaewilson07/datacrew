

Intro
-------

Thank you for choosing to install the Competitive Momentum App! This guide is intended to help you connect this app to your own data. The first steps are to make sure that the app and the app’s DataFlow have been properly downloaded from the Appstore, and that your data is in the correct format to be used by the app. This app requires you to have competitor data.


###
 Prerequisites

This app utilizes a tool called the Grid Builder to map your data to the schema that the app requires. If you are not already familiar with Grid Builder, please read our Grid Builder Walkthrough

here

. Though it is not required, it is also useful to have a working knowledge of how a MySQL query works.


 Below is a diagram that shows the order in which the customer data will be fed though the DataFlow and output to the app.

When you are familiar with how the grid builder works, follow these steps to make sure that the app and the DataFlow are properly deployed to your instance of Domo:

 If you purchased through the Appstore, make sure you have clicked the
 **Try It**
 button on the page for this app in the Appstore to deploy the app and its DataFlow to your instance. You will be asked to name the page where you’d like the app to appear in your Domo
* Double check that the DataFlow has been deployed to your instance. To do this, navigate to the data center by clicking the
 **Data**
 button located in the top left corner of Domo (see image below for example.)
* Click
 **DataFlows**
 on the left side of the screen, then use the data center search bar to search for “Competitive Momentum”.  You should see a DataFlow that matches that name

If you’ve followed these steps and you still can’t find the app on the page you created or the DataFlow, contact Technical Support. For information on how to contact Support, please see:

Getting Help

.

###
 Step 1: Prepare Your Data

The Competitive Momentum App displays insights into your sales win/loss trends when going head to head with each of your competitors, this means that you need one table in order to run this app. This table will be the current details about opportunities. Certain columns are required for the DataFlow to run. The table schema shows all the required columns. The column names will be mapped when you fill out the grid builder so you do not need to change your column names to fit the schemas. You may add other categorical columns to the opportunity table that you would like to use as filtering options. See the example below.


######
**Notes:**


* The Competitive Momentum App includes date range and competitor filters that are built-in that cannot be removed or be repositioned in the app.
* You can use more than one DataSet as source data for the app as long as they can be joined together using your date and primary group columns. Information on how to do
 *joins*
 in the grid builder will be found in next sections.
* If you are missing some columns you can create them by setting a default value in the DataFlow my using MySQL. For example, if you don’t have a OwnerImagePath column you can set all your values to ‘None’. This means that no sales rep will have a picture in the app, but it will finish running. If you are missing any columns the DataFlow will stop running with an error.


####
 Step 2: Add Your Source Data to the DataFlow

As soon as you have prepped your data, you will need to navigate to the DataFlow and add your data as inputs to the DataFlow. Follow these steps for more instructions:

 Navigate to the Data Center by clicking the
 **Data**
 button located in the top left corner of Domo (see image below for example.)
* Click
 **DataFlows**
 on the left side of the page, then search for “Competitive Momentum” in the data center search bar, you should see a DataFlow with that name.
* Click on the DataFlow to go to the detail view, then click the pencil icon on the right side of the page to edit the DataFlow.
* Remove the sample DataSets by clicking the
 **x**
 on the corner of the DataSets. The sample DataSets will be the ones were the name doesn’t end in “Grid Builder” or “Settings”, keep these two DataSets as input.
* Click the
 **Select DataSet**
 button, then search for the DataSets that you've created for the app and add them by clicking on them.
* After you have added your DataSets, scroll to the bottom of the page and click the
 **Save**
 button.
* Now navigate back to the data center.

###
 Step 3: Edit the Grid Builder

For this next step, you will need to edit the appropriate fields in the Grid Builder to match your input data. This guide presents a basic set of steps here, but for a more comprehensive tutorial on how the Grid Builder works, please review the

Grid Builder Walkthrough

. As you make changes, it may be wise to occasionally copy your work into an Excel spreadsheet to track your changes, in case the web browser encounters any errors during the process.


**Follow these steps to edit the grid builder:**

 Navigate to the Grid Builder webform that came with the app. A webform is a type of DataSet, so you will need to search for it under the DataSet tab not the DataFlow tab. It will be named after the version of Competitive Momentum you installed plus “- Grid Builder” on the end. Click the DataSet, then in the details view click the icon on the right side and then click
 **Edit Webform**
 .

 Under the “SELECT” column from C100 on down, replace these sample values with the names of the columns from the DataSets in the “FROM” column that you would like to use in the app, this is where you map your data to the app. You may have more columns you want to add as filters, so you may need to add rows (#1 in above example image.)
* Under the “FROM” column, change the value on row C100 to match the name of your first DataSet. Repeat this step for all the tables you will be using as source data. Each new DataSet should be assigned the next 100’s value under the “C” column. Ex. Start with 200 for the second DataSet, 300 for the third, etc. (#2 in above example image.)
* Under the “AS” column from C100 on down, these are the new names of the columns from the “SELECT” column. These names should match the schema in the table above, and they should already be listed correctly. You do not need to alter this column unless you add additional columns to use as filters in the app. When using this column avoid using spaces, numbers, and special characters in the names here. For example, use Gross\_Sales as opposed to Gross Sales (#3 in example image.)
* Under the “Include” column place a 1 in each row that you are including from your data that isn’t being used solely for a join. If you are not including that column place a 0 in the Include column (#5 in example image.)
* To do a join you will fill out the JoinType and JoinCondition columns on row C200. JoinType  needs to be in all CAPS and can be any type of join that is used in MySQL. Additional joins usually use “LEFT” for the JoinType.  The JoinCondition references the row where your column is brought in from your DataSet. The joincondition should look like this;
 `Ctable#.COLUMNNAME = Ctable#.COLUMNNAME.`
* As soon as you have the information entered for your DataSets you’ll need to configure your filters. On each row of the grid builder that references a column in your data that you would like to use as a filter, you’ll need to update the three filter columns, “FilterId”, “FilterName”, “FilterInputType”.
* On the other rows that you would like to use as filters, use incrementing numbers for the FilterID (3,4,5 etc.) with the smallest number at the top. Define filter names under FilterName, use “Multi Select” or “Single Select” for FilterInputType (Check out the Grid Builder Walkthrough for more information on what the two filter types do), leave FilterIsPrimary and FilterIsPrimaryGroup empty for these rows. See above example image.
* Click
 **Save & Continue**
 at the top of the page to save the DataSet.

As soon as you’ve made changes to the grid builder, go to the data center and run the Competitive Momentum DataFlow. If the DataFlow runs successfully, you’ve most likely filled out the grid builder correctly. If you encounter errors, review the

Grid Builder Walkthrough

, or contact Technical Support. For information on how to contact Support, please see:

Getting Help

.

###
 Step 5: Validation

Now that you have configured the grid builder, you should be ready to check your app to validate your metrics. We suggest the following process to validate:

. Build KPI cards to test metrics. These cards should be built based off of your source data, not the output of the app. As an example, if you are displaying trending sales by sales rep in the app, build a bar chart type card that displays sales per rep, and have the date range of the KPI card match one of the date ranges the app displays.
2. Compare your data between the KPI cards and the app, remember to make sure your filtering options and date ranges match between the app and the card.
3. If you find discrepancies, check if you need to change join conditions or groupings in the grid builder and double check your calculations.
4. Repeat this process for any metrics you need to validate.


#####
**Congratulations!**

Your Competitive Momentum App should be good to go! Enjoy getting the best value out of your data. If you have any questions or need help troubleshooting, contact Technical Support. For information on how to contact Support, please see:

Getting Help

.

