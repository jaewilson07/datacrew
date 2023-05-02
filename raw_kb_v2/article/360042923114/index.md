

Intro
-------

You can create a rolling average for a specified number of days using a SQL DataFlow or Magic ETL. To do this, you will need to join the data back onto itself multiple times.


 Solution Details and Steps
----------------------------


###
 MySQL


1. Create a MySQL DataFlow.
2. Add your input DataSet.
3. Create a transform using the following query:

SELECT a.`value`,(SELECT AVG(b.`value`) FROM input_DataSet b WHERE b.`date` <= a.`date` AND b.`date` >= SUBDATE(a.`date`, INTERVAL 5 DAY) ) AS ‘Rolling 5 Day Average’ ,a.`date` FROM input_DataSet`

. (Optional) If you would like to change the day comparison (changing 5 day average to 7 days), you can change the number in your SUBDATE() [SUBDATE(a.`date`, INTERVAL 5 DAY)].
5. If you would like to do a rolling sum or another calculation you can change your AVG() to the proper aggregation. [SELECT AVG(b.`value`) FROM input\_DataSet b ].
6. You will need to change `date` to your date column.
7. You will need to change `value` to your value column.
8. Create an output to the DataFlow. The query should be SELECT \* FROM transform\_data\_1.
9. Name the output and your DataFlow.


###
 RedShift


1. Create a RedShift DataFlow.
2. Add your input DataSet.
3. Create a transform using the following query:

SELECT a.”value”,(SELECT AVG(b.”value”) FROM input_DataSet b WHERE b.”date” <= a.”date” AND b.”date” >= DATEADD(DAY, -5, a.”date”) ) AS “Rolling 5 Day Average”,a.”date” FROM input_DataSet`

. If you would like to change the day comparison (changing 5 day average to 7 days), you can change the number in your DATEADD() [DATEADD(DAY, -5, a.”date”)].
6. If you would like to do a rolling sum or another calculation you can change your AVG() to the proper aggregation. [SELECT AVG (b.”value”) FROM input\_DataSet b ].
7. You will need to change “date” to your date column.
8. You will need to change “value” to your value column.
9. Create an output to the DataFlow. The query should be SELECT \* FROM transform\_data\_1.
10. Name the output and your DataFlow.

##
 Magic ETL


1. Create a new Magic ETL.
2. Add “Input DataSet” tile.
3. Add “Select Columns” tile. Select only your date and value columns.
4. You are going to create a “Date Operations” tile for every day you wish to compare. If you are showing 5 day average you will need to create 5 tiles.
5. You will select for all of these to use your “Select Columns” tile as their input.
6. Your “Date Operations” tiles will be adding a day to your original date column. Your first tile will add 1 day, your second will add 2 and this will continue.
7. You now want to add 5 different “Join Data” tiles.
8. Your joins are going to pull from the previous join and your date operation.
9. The join should be formatted with your previous join (original data) as your left table. Your right table will be your “Date Operations."
10. You should join on the original “Date” = “Date + \_."
11. Your data should now look like the following screenshot if you “Run Preview.”
12. You can use a “Select Columns” to pull your original “Date” and “Value” columns. You will also pull all other value columns. (Value\_1 – Value\_5)
13. You can now start to add your values together to create your average.
14. You will need to add all of your value columns together.
15. Using the “Calculator” tile we can add two columns together at a time.
16. You now can divide by the number of value columns you have, using the “calculator” tile. In this example it is 6.
17. You can now clean up your columns using the “Select Columns” tile.
18. You only need to keep your “Date”, “Value”, and “Rolling Average” columns.
19. Your data should now look similar to:
20. You can now add an output to your Magic ETL.


