

Intro
-------

Let's say you need to add a filter for a column that DOES NOT CONTAIN a certain word or characters inside of Magic ETL. In a normal situation, Magic ETL does not have a DOES NOT CONTAIN feature built inside of the tool, so you would have to resort to a more technical query engine like an SQL DataFlow or Beast Mode.


 Ideally there should be a relatively simply drag-and-drop tile in Magic ETL that includes DOES NOT CONTAIN or a simple procedure to accomplish the same functionality. Fortunately there are two ways to implement DOES NOT CONTAIN in Magic ETL: a simple but technical way, and a long but non-technical way.


 For both of these examples, we assume the client is over a department store that contains several departments. The data is often skewed in the Men’s and Women’s departments, so these departments need to be filtered out of the data. The client is not an SQL expert and would like to use Magic ETL to accomplish this task.


 The content in this article was shared during our Domopalooza 2017 Tips and Tricks session. For more information about this session, see

Tips and Tricks: Quick Lessons from Power Users

.


 Simple but Technical Method (REGEX)
-------------------------------------

This method uses Regular Expressions to implement DOES NOT CONTAIN.


**To implement DOES NOT CONTAIN using this method,**

. Open Magic ETL.
2. Select your Department Store DataSet as the Input DataSet in Magic ETL.
3. Add the
 **Value Mapper**
 action (under
 **Edit Data**
 on the left) and connect it to the input DataSet.


 Configure this action as follows:

1. Add the "Department" column as the column to search.
	2. Choose
	 **Write to a new column**
	 and name the new column "FormattedDepartment."
	3. In step 3 select
	 **Keep the original value**
	 .
	4. In step 4 select the settings icon and choose
	 **Empty String**
	 .
	5. In step 5 select the settings icon and choose
	 **Empty String**
	 .


	 The steps above allow you to create a new column in your DataSet that will contain the identical data contained in the original "Department" column. We want this so we do not affect the raw data, only the new data we create.
4. Add a
 **Replace Text**
 action (under the
 **Edit Data**
 section on the left) and connect the
 **Value Mapper**
 action to it.


 Configure this action as follows:

1. In step 1 add the "FormattedDepartment" column created above.
	2. In step 2 do the following

	* Enter

	 .\*(men|Men).\*
		* In the settings icon of step 2, choose
		 **Use RegEx**
		 .
	3. In step 3 enter

 TRUE

 .


	 The steps above allow you to use a Regular Expression in Magic to determine if the "FormattedDepartment" column contains the word "men" or "Men."

	* .\*

	 means all characters from left to right.
		* men|Men

	 means the word "men" in all lowercase OR "Men" with a capital M.
		* The total RegEX says, "IF the Column contains 'men' or 'Men' THEN replace the ENTIRE CELL with the word TRUE."

Now that you have an EXACT word (

TRUE

) for any cell that contains "men" or "Men," you can filter them away.

. Add a
 **Filter**
 action and connect the
 **Replace Text**
 action to it.


 Configure this action as follows:

1. For step 1, choose the "FormattedDepartment" column.
	2. For step 2, choose
	 **Does not equal**
	 .
	3. For step 3, choose
	 **Specific Value**
	 .
	4. For step 4, enter

 TRUE

 .

Long but Non-Technical Method
-------------------------------

*To implement DOES NOT CONTAIN using this method,**

. Open Magic ETL.
2. Select your "Department Store" DataSet as the input DataSet in Magic ETL.
3. Add the
 **Value Mapper**
 action (under
 **Edit Data**
 ) and connect it to the input DataSet.


 Configure this action as follows:

1. Add the "Department" column as the column to search.
	2. Choose
	 **Write to a new column**
	 and name the new column "FormattedDepartment."
	3. In step 3 select
	 **Keep the original value**
	 .
	4. In step 4 select the settings icon and choose
	 **Empty String**
	 .
	5. In step 5 select the settings icon and choose
	 **Empty String**
	 .


	 The steps above allow for you to create a new column in your DataSet that contains the identical data contained in the original "Department" column. We want this so we do not affect the raw data, only the new data we create.
4. Under the
 **Edit Data**
 section, choose the
 **Text Formatting**
 action and connect it to the Value Mapper action.


 Configure this action as follows:

1. In step 1 choose the "FormattedDepartment" column.
	2. In step 2 choose
	 **All lowercase**
	 .
	3. In step 3 choose
	 **No changes**
	 .


	 This configuration makes everything in the "FormattedDepartment" column all lowercase. This means it is not case-sensitive.


	 Next we'll filter all rows that CONTAIN the data that you actually DO NOT want to see. In our case, we do not want to see any data that CONTAINS the word "men" (Men’s and Women’s).
5. Use the
 **Filter**
 action and connect it to the
 **Text Formatting**
 action, and filter for everything that CONTAINS "men."


 Configure this action as follows:

1. In step 1, select the "FormattedDepartment" column.
	2. In step 2, select
	 **CONTAINS**
	 .
	3. In step 3, select
	 **Specific Value**
	 .
	4. In step 4, type "men."


	 This will filter all data for everything that contains "men" in the "FormattedDepartment" column.


	 Next we'll add a constant to the filtered data above called ContainsMen. A constant is a piece of data that always has the same value on every row.
6. Add the constant using the
 **Add Constant**
 action, then connect the
 **Filter**
 action to the
 **Add Constant**
 action.


 Configure this action as follows:

1. In step 1, type

 ContainsMen.
	2. In step 2, select
	 **Text**
	 .
	3. In step 3, type

 TRUE.

 This adds a new column to your filtered data called "ContainsMen" that always has the value of

 TRUE.

 Now that we have our raw data and a DataSet that represents "ONLY Containing Men," we can join the two DataSets together to see which columns "Actually Contain Men" in the data.
7. Add a
 **Join Data**
 action, and connect the raw data (input DataSet) and
 **Constant**
 action.


 Configure the action as follows:

1. In step 1, select
	 **Raw Data**
	 .
	2. In step 2, select
	 **Constant Data**
	 .
	3. Add all the common columns across each DataSet.
	4. In the
	 **Join Type**
	 box, choose
	 **Left Join with Raw Data**
	 .
8. Now that we have a DataSet with all the "ContainsMen" and "DOES NOT ContainsMen," use a
 **Filter**
 action to filter away all data where "ContainsMen" is equal to

TRUE

.


