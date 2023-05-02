

This topic shows you how to add and subtract hours using Magic ETL. Note that this is a very long and complicated process; Domo recommends using a Beast Mode calculation with

ADDDATE()

or

SUBDATE()

if possible.


**To add or subtract hours in Magic ETL,**

. Open the Magic ETL editor.
2. Use the
 **Select Columns**
 action to select the date-time column you want to add/subtract hours to/from.
3. Use the
 **Combine Columns**
 action to create a new column to replicate the date-time column; call this column "Date."
4. Repeat step 3 to create an additional date-time column; call this column "Time."
5. Use the
 **Set Column Type**
 action to set the column type of the "Date" column to
 **Date**
 and the column type of the "Time" column to
 **Date and Time**
 .
6. Use the
 **Set Column Type**
 action to convert the "Time" column to text.
7. Use the
 **Replace Text**
 action to remove the date and

'T'

from the "Time" column.


 You can do this using the following regular expression:

.\*T
8. Use the
 **Combine Columns**
 action to create a new column to replicate the "Time" column; call this column "Hour."
9. Use the
 **Replace Text**
 action to remove the minutes and seconds from the "Hour" column.


 You can do this using the following regular expression

:.\*
10. Use the
 **Set Column Type**
 action to change the column type of the "Hour" column to
 **Whole Number**
 .
11. Use the
 **Calculator**
 action to add or subtract hours. Call the new column "New Hour."


 In the example, we add four hours.
12. Use the
 **Filter Rows**
 action to filter the rows that should appear in the "New Hour" column. If you are ADDING hours, filter for any number greater than or equal to 24 (

New Hour >= 24

); if you are SUBTRACTING hours, filter for anything below 0 (

New Hour < 0

).
13. Use the
 **Date Operations**
 action. If you are ADDING hours, add 1 day to the "Date" column; if you are SUBTRACTING hours, subtract 1 day from the "Date" column. Call the new column "New Date."
14. Use the
 **Calculator**
 action to calculate the correct number of hours. If you are ADDING hours, add 24 to the "New Hour" column; if you are SUBTRACTING hours, subtract 24 from the "New Hour" column. Call the new column "New Hour 2."
15. Use the
 **Select Columns**
 action to rename "New Date" and "New Hour 2" to "Date" and "Hour."
16. Insert a new
 **Filter Rows**
 action after the
 **Calculator**
 action described in step 11. In this new
 **Filter Rows**
 action, you are filtering for the "New Hour" column. If you are ADDING hours, filter for any number under 24 (

New Hour < 24

); if you are SUBTRACTING hours, filter for any number greater than or equal to 0 (

New Hour >= 0

).
17. Use the
 **Select Columns**
 action to rename the "New Hour" column to "Hour."
18. Use the
 **Append Rows**
 action to combine the two DataSets.


 If all previous steps were performed correctly, both DataSets will show with no changes.
19. Use a
 **Filter Rows**
 action to filter rows in the "Hours" column greater than or equal to 10 (

>=10

).
20. Use a
 **Set Column Type**
 action to set the data type for "Hour" to
 **Text**
 .
21. Insert a new
 **Filter Rows**
 action after the
 **Append Rows**
 action in step 18. In this new
 **Filter Rows**
 action, you are filtering for rows in the "Hours" column less than 10 (

<10

).
22. Use a
 **Set Column Type**
 action to set the data type for "Hour" to
 **Text**
 .
23. Use an
 **Add Constants**
 action to create a column with a value of

0

.
24. Use a
 **Combine Columns**
 action to combine the "0" and "Hour" columns. Name the new combined column "Hour" and check the box to remove the columns being combined.
25. Use the
 **Append Rows**
 action to combine the two DataSets.


 If all previous steps were performed correctly, both DataSets will show with no changes.
26. Use the
 **Combine Column**
 action to combine the "Time" column with any other column. Call this new column "Time Without Hour."
27. Use the
 **Replace Text**
 action to remove the random values and hours from the "Time Without Hour" column.


 You can do this using the following regular expression:

.\*a\d\d
28. Use the
 **Combine Columns**
 action to combine the "Hour" and "Time Without Hour" columns. Call the new column "New Time."
29. Use the
 **Set Column Type**
 action to set the data type for "Date" to
 **Text**
 .
30. Use the
 **Combine Columns**
 action to combine the "Date" and "New Time" columns. Call the new column "New Date/Time."
31. Use the
 **Set Column Type**
 action to set the data type for "New Date/Time" to
 **Date and Time**
 .
32. Use the
 **Select Columns**
 action to remove unwanted columns.


