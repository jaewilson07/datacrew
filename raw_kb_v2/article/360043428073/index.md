

Intro
-------


 Let's say you

put your information into a year-to-date DataSet that’s one month behind, starting by loading January’s data in February. Because this is a year-to-date DataSet, once February rolls around the next year, the data from the previous year disappears from the DataSet to make way for the new current year’s data. What if you wanted to archive the data into another DataSet once December’s data is loaded in the year-to-date file? As it turns out, there are a couple of ways to accomplish that. They can be done both in MySQL and Magic

ETL

.


 This process applies to any DataSet containing any year-to-date data. Once it hits a year mark, you can archive it for historical purposes.


 Method #1
-----------


###
 Method #1 Using a MySQL DataFlow

This can be done using a stored procedure. This is the most flexible method and can be adapted to account for any extra logic that might need to be applied.


 The code in this stored procedure assumes a few things:

 The current year-to-date data will be appended to a historical archive via a recursive DataFlow.
* This recursive DataFlow has already been created.
* The DataFlow has been set up to automatically run when the year-to-date DataSet updates.

In the below example, the data will be coming from a DataSet called

ytd\_premium\_data

, and the historical archive will be called

move\_to\_historical\_method\_1

.


 Below is the code for the stored procedure:


`CREATE PROCEDURE archive()`


`BEGIN`


`-- Get the max date from the premium data`


`SELECT @maxDataDate := MAX(`Date`)`


`FROM   ytd\_premium\_data;`


`-- Get the max date from the archived data`


`SELECT @maxArchiveDate := MAX(`Date`)`


`FROM   move\_to\_historical\_method\_1;`


`-- We will use these two dates later to determine whether or not the`


`-- current year-to-date data has already been added to the historical`


`-- archive`


`-- The following is a shortcut to dynamically create a table structure`


`-- that's identical to another table, but leave it with no data in it.`


`-- We’re going to use this trick to create a table with the same`


`-- structure as the year-to-date-data`


`-- Create a table by selecting only one row from the premium data`


`CREATE TABLE archive\_data`


`SELECT     \*`


`FROM    ytd\_premium\_data LIMIT 1;`


`-- Get rid of all rows from the newly created table`


`TRUNCATE TABLE archive\_data;`


`-- If the conditions are met to archive the year-to-date data, this`


`-- new table will be populated with the year-to-date data and appended`


`-- to the historical DataSet. If the conditions are not met, the table`


`-- will remain empty, and an empty table will be appended to the`


`-- historical DataSet.`


`-- The year of data to be archived is last year's data. Remember that`


`-- the year-to-date data is a month behind, so December’s data won’t`


`-- be loaded until January of the next year.`


`IF YEAR(CURRENT\_DATE()) - 1 = YEAR(@maxDataDate)`


`-- It's January, which means we should have December's data`


`AND MONTH(CURRENT\_DATE()) = 1`


`-- The data to be archived contains December's data`


`AND MONTH(@maxDataDate) = 12`


`-- The data from the year-to-date has not already been added to the`


`-- archive`


`AND @maxDataDate != @maxArchiveDate`


`-- If every condition checks out, then insert the year-to-date data to`


`-- be archived into the archive\_data table for unioning to the`


`-- historical data. Because of the date checks in the previous step,`


`-- the following code will only ever be executed once.`


`THEN INSERT INTO archive\_data`


`SELECT     \*`


`FROM ytd\_premium\_data;`


`END IF;`


`END;`


 To call the stored procedure...


`CALL archive();`


 Appending year-to-date data (if it’s ready to archive) to historical archive data (step name is
 **DataFlow\_output**
 )...


`-- Union whatever's in archive\_data to thie historical table. If the coniditons for moving the data weren't met, archive\_data will be empty.`

SELECT     \*

FROM move\_to\_historical\_method\_1`


`UNION ALL`


`SELECT     \*`


`FROM archive\_data`


 This compares what’s already in the archived DataSet to what’s being put in. The

MAX

dates for the data are matched. Then, we create a table that’s going to hold the data to be archived. We can use a shortcut of

SELECT \*

from the table with a limit of 1.  Then you truncate the table. This is a quick way to create the table schema without having to go through the process manually. That way, we don’t have to replicate the table schema; it does it automatically.


 Run a couple of checks:

 Is it the right year?
* Is it January? (If so, December's DataSet will be loaded.)
* Is the month to be archived December?

Then the last piece of code checks to make sure that the data to be archived hasn’t already been archived. Once it’s archived you don’t want it to archive it again.


 I


 f it passes, it will be put in the archive data table that was created above. Then, later, all you need to do is just a simple union all with the rest of the archived data. This puts everything together. The process only archives it the one time.

##


 Method #1 Using Magic

This method is not as straightforward as using MySQL, but the DataFlow uses the same logic.

. To get the

MAX

date in Magic, you have to do a
 **Group By**
 transform on a column that is identical in every row. So the first step is to add a column with a constant value using the
 **Add Constant**
 transform. In this case, I’ve given it a numerical value of 1 and named it "One." This is done twice—once for the year-to-date premium data and once for the historical archive data.
2. Insert a
 **Group By**
 transform and group by the column we just created ("One"), create a new column for each grouping, and select
 **Maximum**
 for the "Date" column. This step will also be done twice—once for the year-to-date premium data and once for the historical archive data. But you need to give different names to each new aggregated column.
3. Use a
 **Join**
 transform to join the two DataSets in Step 2 together on column "One."

Your results will contain the maximum date in the year-to-date data, the maximum date in the historical archive data, and two columns containing "One."
4. Use an
 **Add Constant**
 to add today’s date to the other dates in the DataSet.
5. Insert a
 **Date Operations**
 transform and create the columns "Current Month" and "Current Year" from the column "Today" and "Data Month" and "Data Year" from the column "MaxDataDate."

Your data will now look something like this:

You now have all the dates and information you need to determine whether or not to append year-to-date data to the historical archive data.

. To ensure every row in the year-to-date DataSet contains the data just created, insert a
 **Join Data**
 transform to an inner join on both DataSets and join on the column "One."
7. Using the
 **Calculator**
 transform, subtract 1 from "Current Year" to determine "Prior Year."
8. Add a
 **Filter Rows**
 transform to apply the logic to determine whether or not the year-to-date DataSet contains data from December and whether or not it has already been added to the historical data archive.

If this step passes all the checks, it will contain all the data from the year-to-date DataSet. If not, it will contain nothing.


9. Use a
 **Select Columns**
 transform to get rid of all the extra columns we created to make the schema match what’s in the historical data archive.
10. Add an
 **Append Rows**
 transform to append the year-to-date DataSet (if applicable) to the historical archive DataSet. Be sure to select
 **Include all columns**
 from the dropdown. If you’ve done everything correctly, a “No changes” message will appear beside each input DataSet.
11. Under
 **Settings**
 , check the box to make sure the transform will run whenever the year-to-date DataSet gets updated.

Method #2
-------------


###


 Method #2 Using MySQL

If there are no complex requirements for determining whether or not to archive the year-to-date data, and you know that the year-to-date DataSet will be complete by a certain date, then you can create a DataFlow that does nothing but archive the data, and then you can use a trick to schedule to run it on a certain date every year.


 For our purposes, let’s suppose that we know the year-to-date DataSet will be complete and final by January 20 every year. The first thing we will need to do is create a CSV DataSet and schedule it to update every year on January 20.

. Navigate to https://
 *yourinstancename*
 .

domo.com/connectors

/com.domo.connector.csv.easy.
2. Put anything that makes sense into the box. Here we create a column called "Date" with a value of

1800-01-01

.
3. Click
 **Next**
 to bring up the
 **Scheduling**
 section.
4. Click the
 **Advanced Scheduling**
 tab.
5. Check the appropriate
 **Month**
 (s) and
 **Days of Month**
 .
6. Click the
 **Time**
 tab and choose a time for the job to run.
7. Click
 **Next**
 .
8. Give the CSV DataSet a meaningful name and click
 **Save**
 .

Now that we have a DataSet that automatically updatex every January 20, we just need a MySQL DataFlow that appends the year-to-date data to the archive DataSet. We will add this CSV DataSet to the DataSets in the DataFlow, and change the settings so that the DataFlow will run once that DataSet gets updated. Because the DataSet only gets update every January 20, then this has the effect of creating a scheduled DataFlow.

Here is the SQL used in the
 **DataFlow Output**
 transform:


`-- This DataFlow won't automatically trigger until the scheduled`


`-- update file gets updated. When that happens, it will append last`


`-- year's data to historical data.`


`SELECT     \*`


`FROM move\_to\_historical\_method\_2`


`UNION ALL`


`SELECT     \*`


`FROM ytd\_premium\_data`


 Finally, save, but
 **do not run the DataFlow!**
 Otherwise it immediately archives the year-to-date data.

##


 Method #2 Using


 Magic ETL

The automatically scheduled Magic ETL simply appends year-to-date data to historical archive data. To add the automatic scheduling, you have to add the Auto Update DataSet and check the setting to run the transform whenever it updates. Unlike with a MySQL DataFlow, with Magic ETL, you can’t just add an input DataSet and not incorporate it into a transform because Magic will error out if you try. So you have do a couple of things to incorporate it into the DataFlow, but make sure it doesn’t actually do anything to the data.


1. Add the "Auto Update" DataSet as an
 **Input Dataset**
 .
2. Insert a
 **Filter**
 transform. Since one of the columns in this DataSet is a date, set the filter to select only the records where the "Date" IS NULL. This will result in no rows of data, which is good because we will later append it to the rest of the data, and because there are no rows, there will be zero effect on anything.

Because the CSV file adds two columns when it updates, "\_BATCH\_ID\_" and "\_BATCH\_LAST\_RUN\_," we need to eliminate them from the data.
3. Insert a
 **Select Columns**
 transform and select only "Date."
4. Insert an
 **Append**
 transform in which you select
 **Include All Columns**
 in the first dropdown.
5. Save, but
 **do not run the DataFlow**
 ! If you run this DataFlow, it will append whatever’s currently in the year-to-date DataSet to the archived data DataSet.


