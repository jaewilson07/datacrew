

Intro
-------

Thank you for choosing to install the Google Maps Pinboard App! This guide is intended to help you connect this app with your own data. The first steps are making sure that the app's DataFlow has been properly downloaded from the Appstore and that your data is in the correct format to be used correctly by the app.


 Prerequisites
----------------

This app utilizes a tool called the Grid Builder that maps your data to the schema the app requires. If you are not already familiar with Grid Builder, please read our Grid Builder walkthrough

here

. Though it not required, it is also useful to have a working knowledge of how MySQL query works as well.


 Below is diagram that shows the order in which your data will be fed through the DataFlow and then output to the Google Maps Pinboard App.

When you are familiar with how the Grid Builder works, follow these next steps to make sure that the app and the DataFlow have been properly deployed to your instance in Domo:

 If you have purchased the Google Maps Pinboard App through the Domo Appstore, first make sure that you have selected the
 **Try It**
 button on the app's page in order to deploy the app and its DataFlow to your instance. You will be asked to name the page where you'd like the app to live in Domo.
* Double check that the DataFlow has been properly deployed to your instance. To do this, navigate the the Data Center by clicking the Data button located in the top left corner of Domo (see image below for example.)
* Select
 **DataFlows**
 on the left side of the Data Center screen, then use the Data Center's search bar to search for "Google Maps Pinboard". You should see a DataFlow that matches the name you searched for.
* If you've followed these steps and you still aren't able to locate the app on the page you've created or its DataFlow in the Data Center, contact Technical Support. For information on how to contact Support, please see:

Getting Help

.

Step 1: Prepare Your Data
---------------------------

The Google Maps Pinboard shows location data through display pins on the map - this means that you'll need to get your data into a format where each row of data represents a location and the corresponding columns represent quantitative or qualitative data for location. A location can be listed on more than one row and the app will then aggregate the data for that specific location when the data is run. Part of the location data that is required by the app is the location's latitude and longitude.


 If you do not have longitude and latitude data, you can obtain it in one of three ways:

. Use a geocoding application to get longitude and latitude for you location data
2. Join your data to a government database to get approximate longitudes and latitudes, this is usually done by zip code or your country's equivalent
3. Contact your Domo consultant contact for assistance in obtaining longitude and latitude for you location data or contact Technical Support. For information on how to contact Support, please see:

Getting Help

.

Here is an example of what your data might look like:

The app has five required fields called: "ID", "Date", "Node", "Latitude", and "Longitude".


 "ID" is a location's ID and "Node" is a location's name. However, if you do not have location ID numbers, you can use a location name instead for both the "ID" and "Node" columns. Additionally, if you don't have a "Date" field in your data, you can choose to use the current date for that required column instead.


 The column labeled "Sales" and "Region" are examples of additional quantitative and qualitative columns that you might include for display in the app or to use as filters. You may have as many of additional columns as you'd like.

You can use more than one DataSet as source data for the app, as long as the data can be joined together using your date and/or location columns. Information on how to do joins in the Grid Builder will be found in later sections of this guide. It is also worth noting that the app can do simple calculations to calculate metrics. For example, if you had a "Sales" column, as in the example DataSet above, then a column with a count of employees at each location would be done like the following:
 `SUM(Sales)/AVG(Employees)`
 , this calculation would give you sales per employee.


 It is usually better to calculate ratios in the app later, rather than beforehand in the actual DataFlow. Note that there will be more on creating metric calculations in later sections of this guide.


 The Google Maps Pinboard App can only display a limited number of pins at a time, between 3000 and 5000 pins. If you have more locations to be displayed, consider how you might aggregate or narrow down the number of locations or set filters to only display a smaller portion of locations at a time.

Step 2: Add Your Source Data to the DataFlow
----------------------------------------------

As soon as you have successfully prepped your data, you will then need to navigate to the DataFlow in Domo and add your data as inputs to your app's DataFlow. Follow these next steps to add your data:

 First, navigate the the Data Center by clicking the Data button located in the top left corner of Domo (see image below for example.)
* Once in the Data Center, select
 **DataFlows**
 from the left side of the screen. Search for "Google Maps Pinboard" in the Data Center's search bar - you should see a DataFlow labeled "Google Maps Pinboard".
* Select the Google Maps Pinboard DataFlow and go into the detail view, then click on the pencil icon on the right side of the page to edit the DataFlow.
* Remove the sample DataSet, "Google Maps Store Sample", by clicking the
 **x**
 on the upper right corner of the DataSet. Keep the "Google Maps Pinboard - Grid Builder" and "Google Maps Pinboard - Settings" as inputs in the DataFlow.
* Click the
 **Select DataSet**
 button, then add your DataSets to the DataFlow.
* After you have added your DataSets, scroll to the bottom of the page and select the
 **Save**
 button.
* Navigate back to the Data Center in Domo.


 Step 3: Edit the Grid Builder
-------------------------------

For this third step you will need to edit the appropriate fields in the Grid Builder in order to match your input data.

*Important:**
 This guide presents the basic set of steps needed, but for a more comprehensive tutorial on how the Grid Builder works please review the

Grid Builder Walkthrough

. To see the correct column order, scroll down to "3. The MYSQL columns (SELECT, FROM, WHERE, GROUP BY, AS)".

As you make changes, it may be wise to copy your work into an Excel Spreadsheet to track all of your changes, in case your web browser encounters any errors throughout the process.


 Follow these steps for editing the Grid Builder:

 Navigate to the Grid Builder webform that came with the app, it will be named "Google Maps Pinboard - Grid Builder". Select
 **DataSets**
 from the left side of the Data Center and search for "Google Maps Pinboard - Grid Builder". Select that dataset then in the details view click the wrench icon on the right side, then select
 **Edit Webform**
 .
* This app doesn't usually use a date filter, but if you like to include one refer to the

Grid Builder Walkthrough

.
* Under the FROM column, change the value on the C100 row to match the name of your first DataSet (see #1 in example image below.)
* Under the SELECT column, replace the row values with the column names in your DataSet, which should now be listed in the FROM column. The first five rows (C100-C500) are the required fields. On the first row, enter the name of the column from your data that you'd like to use as the location ID. Remember, that if you don't have a location ID, you can use a location name column here instead. On the second row, enter the name of your date column, if you have one, or leave the value as "CURRENT\_DATE()" if you'd like the use the current date instead. For the third row use your location name column. On the fourth and fifth rows, use your latitude and longitude columns, respectively. Note that these five rows MUST be in this order (see #2 in the example image below.)

 In the SELECT column, enter the names of the columns in your DataSet that you'd like to use as additional quantitative columns for metrics and qualitative columns for filters.
* In the AS column, do not change the values at all in the first five rows, these are the names that your data is being mapped and the app's DataFlow is expecting. For the rows that have information for your additional quantitative and qualitative metrics, you can either re-enter those columns in this column or choose new names for those column, if you'd like (see #3 in the example image above.)
* The "Include" column should either be left blank or there should be a "1" in each row that you've entered your information into (see #4 in the example image above.)
* If you are joining additional tables, repeat this process for any additional tables you'd like to join. Each new DataSet should be assigned to the next set of 100's values in the "C" column. Additional joins usually use LEFT for the "JoinType" and join on the date and location from your first DataSet. For example, your join condition might be: C100.Node =
 `C200.Location AND C100.Date = C200.Date`
 .  Edit the "JoinType" and "JoinCondition" columns and for more information on joins in the Grid Builder please refer to the

Grid Builder Walkthrough

(see #5 in the example image above.)
* As soon as you have your DataSet information entered, you'll then need to configure your filters. On the rows in Grid Builder that you'd like to use as your filters, you'll need to update the three filter columns with these rows: "FilterId", "FilterName", and "FilterInputType".
* Starting from top to bottom, on each row that will be used as a filter, assign each a number starting from 1 and incrementing for each following row in the "FilterId" column. Name your filter in the "FilterName" column and then choose either "Multi Select" or "Single Select" for the value in the "FilterInputType" column. (Refer to the

Grid Builder Walkthrough

for more information on what the Multi Select and Single Select filter types do.)
* Lastly, select
 **Save & Continue**
 at the top of the page to save the DataSet.

As soon as you've made the necessary changes to the Grid Builder, go to the Data Center and run the Google Maps Pinboard DataFlow. If the DataFlow runs successfully, then you've most likely edited the Grid Builder correctly. If you encounter any errors along the way, review

Grid Builder Walkthrough

or contact Technical Support. For information on how to contact Support, please see:

Getting Help

.


 Step 4: Edit the Metrics Form
-------------------------------

The final step for setting up the app is editing the Metrics form.

*Important:**
 Columns must be used as filters or metrics to be usable in the app.

Follow these steps to edit the Metrics form:

 In the Data Center, navigate to the Metrics form, it will be named "Google Maps Pinboard - Metrics".
* Select the DataSet and then select the wrench menu to edit the webform.

 For each metric that you would like displayed in the app, fill out a row in the form. The first column is the "Id" column, so assign a number starting from 1 and increment onward for the preceding rows for each metric.
* In the "Name" column, enter the name of the metric that you'd like displayed in the app.
* In the "Calculation" column, enter the calculation for each metric. Note that only simple calculations are supported, you can use simple sums, averages, max, and min. Calculations include: "SUM(column)" or "AVG(column)", simple single operations "SUM(columnA)" + "SUM(columnB)" or "SUM(columnA)" \* MIN(columnB)" or ratio calculations "SUM(columnA)/"SUM(columnB) \* 100". More complicated calculations will need to be calculated in part beforehand in the Grid Builder.
* In the "DataType" column, enter "Currency", "Number", or "Percent"- this tells the app how to display your metrics.
* In the "SortHighToLow" column, put "true" if you want the metric's bar chart to display highest to lowest. Input "false" if you'd like the metric's bar chart to display lowest to highest.
* In the "UnitOfMeasurement" column, write the unit of the metric, or leave the row blank. (Ex: Dollars, People, Referrals, etc.)
* In the "Description" column, write a short description about the metric, or leave the row blank.

Step 5: Validation
--------------------

Now that you have configured the Grid Builder and the Metrics form, you should now be ready to check your app in order to validate your metrics. We suggest that you follow this process for validation:

. Build KPI cards to test your metrics, build these cards based off of your source data and not the app's output data. For example, if you are displaying sales by location in the app, build a bar chart type card that displays sales per location and, if applicable, have the date range in the KPI card match one of the date ranges that your app displays.
2. Compare your data in the KPI card and the data in the app. Remember to make sure that your filtering options and date ranges match between the app and the KPI card.
3. If you do find any discrepancies, check to see if you need to change any join conditions or groupings in the Grid Builder. Be sure to also double check any calculations you have.
4. Repeat this process for any metrics that you need to validate.


####
 Congratulations!

Your Google Maps Pinboard App should now be good to go! Enjoy getting the best value out of your data. If you have any further questions or need help troubleshooting, contact Technical Support. For information on how to contact Support, please see:

Getting Help

.

