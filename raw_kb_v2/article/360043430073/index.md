

Intro
-------


 Refer to this article for help in writing Beast Mode calculations for basic transforms such as renaming a column, creating a custom sort order, filtering values, and so on.

Rename a Column
-----------------

You can use a calculation to rename a column in your data. For example, to rename a column named "daily\_total" to "Daily Total", create a calculation named "Daily Total" with the following code:


``daily_total``


 If you want to sum the column, use the following code:


`sum(`daily_total`)`


 After saving your calculation, click the new column name in the
 **Columns**
 list to display the column in your card.


 Change Values in a Column
---------------------------

You can use a calculation to change a specified column value to a different value. For example, if you had a column called "Employee Last Name" and you wanted to change all instances of "Janssen" in the column to "Janssen-Soderquist," you would create a calculation with the following code:


`case when `Employee Last Name` = 'Janssen'


 then 'Janssen-Soderquist'


 else `Employee Last Name`


 end`


 Filter Values in a Column
---------------------------

You can filter values in a column by creating a calculation, then setting a filter to include or exclude the fields with the value you want. For example, assume you have a column of US states and you want to filter out
 `State = TX`
 , use this code:


`case when `State` = 'TX'


 then 0


 else 1


 end`


 Then set a filter where the column does not include 0.


 Alternately, if you have multiple values you want to filter out:


`case when `State` in ('NY', 'TX')


 then 0


 else 1


 end`


 Then set a filter where the column does not include 0.


 Or, when looking for patterns:


`case


 when `State` like '%TX%' then 0


 when `State` like '%NY%' then 0


 else 1


 end`


 Then set a filter where the column does not include 0.


 Force a Sort Order
--------------------

You can tell Beast Mode to sort data the way you want.


`CASE


 WHEN `Development Status` = 'Requested' THEN 1


 WHEN `Development Status` = 'In Development' THEN 2


 WHEN `Development Status` = 'Code Complete' THEN 3


 WHEN `Development Status` = 'Data Mapping' THEN 4


 WHEN `Development Status` = 'Ready' THEN 5


 WHEN `Development Status` = 'Deployer' THEN 6


 WHEN `Development Status` = 'Forecasted' THEN 7


 WHEN `Development Status` = 'Hold' THEN 8 ELSE 0


 END`


 Sort by the column with numerical values.


 Remove Numbers from Text
--------------------------

To remove numbers from text fields (for example, the fields include a name and ID number and you want just the names), use a Beast Mode calculation like this:


`SUBSTRING(`text_Field`,INSTR(`text_Field`,' ')+1)`


 Replace the

text\_Field

text with the name of the column you want to remove numbers from. This will give you the string from the first space to the right.

