

Intro
-------

A Word Cloud chart is a visual representation of text data in which the importance or frequency of individual words is represented using font size and color. The more important or frequently used a word is, the larger and more brightly colored it appears. This format allows users to spot the most important or frequently used words in the DataSet. This type of chart is also known as a "tag cloud."


 A Word Cloud chart requires two columns or rows of data from your DataSet—one for the words in the cloud and another with values representing each word. These values are usually based on the number of occurrences of each word in a specific DataSet.


 Values associated with words can also be based on other measures of importance. For example, you could create a Word Cloud chart in which each word was the name of a country and the value for each word was the country's GDP. In the resulting chart, countries with a high GDP would stand out more than those with a low GDP.


 If more than one occurrence of a word appears in your DataSet, the values for those occurrences are aggregated according to the type of aggregation you select. For example, if your DataSet contains three occurrences of the word "blue" and you select
 **Sum**
 as the aggregation type, the three values for "blue" are added together. If you select
 **No Aggregation**
 , the value for the first occurrence of each word in your data is used. For more information about aggregating data, see

Aggregating your data

.


 The top 5 words in a Word Cloud appear in orange, the next 5 appear blue, and the rest will be gray.


 Powering a Word Cloud chart
-----------------------------

In the Analyzer, you choose the columns containing the data for your Word Cloud chart. For more information about choosing data columns, see

Applying DataSet Columns to Your Chart

.


 For more information about formatting charts in the Analyzer, see

Visualization Card Building Part 2: The Analyzer

.


 The following graphic shows you how the data from a typical column-based spreadsheet is converted into a Word Cloud chart. This chart shows the frequency of the words used most often in Ronald Reagan's 1985 State of the Union address.

Creating a Word Cloud chart from columns with phrases
-------------------------------------------------------

There may be times when you need to build a Word Cloud chart using a column that contains phrases as opposed to individual words. By default, the chart will include instances of entire phrases instead of breaking them up into words. You can build a DataFlow that will allow you to output the individual words when using a Word Cloud chart. This
 *must*
 be done using an SQL DataFlow; it cannot be done using ETL.


####
**To create a MySQL DataFlow for use in a Word Cloud,**


1. Create a MySQL DataFlow and add the DataSet with the column you want to parse as an input DataSet.

*Note:**
 In order for the following procedure to work, your input DataSet must contain at least two or more columns.
2. For more information about creating SQL DataFlows, see

Creating a SQL DataFlow

.
3. Create a new
 **SQL**
 transform (not a Table transform.)
4. Copy and paste the content from the following SQL file into the new transform:

procedure\_transform\_1.sql
5. Click
 **Run SQL**
 .
6. After the run has completed, click
 **Apply**
 .
7. Create a new
 **SQL**
 transform (not a Table transform.)
8. Copy and paste the content from the following SQL file into the new transform:

call\_transform\_2.sql
9. Edit the statement to include the name of your table, the column that needs to be split and indicators for whether or not common words and symbols should be excluded. This call is formatted as follows:


`CALL word_cloud('
 *your\_data\_table*
 ', '`
 *your\_column*
 `' , '
 *exclude common words (y/n)*
 ','
 *exclude common symbols (y/n)*
 ' );`


 where
 *your\_data\_table*
 is the name of the DataSet and

your\_column*

is the column you are parsing, and you insert
 *y*
 to exclude common words/common symbols or

n*

to keep them.


 For example, if your table is named “survey\_results” and the column to be split is called “feedback” and you’d like to exclude common words but not common symbols, you would modify the code to look like the following:


`CALL word_cloud('survey_results', '`feedback`' , 'y','n');`
10. Click
 **Run SQL**
 .
11. After the run has completed, click
 **Apply**
 .
12. Create an output DataSet in which you use a query like the following to include the results from the previous steps in the output:


`SELECT * FROM final`

A new table called “final” is created, which contains the data from your original table with rows created for each item in the column to be split. There will be a new column added to the end of each record in the table that contains the original string that was split.

##
 Common words

If you choose to remove common words the words that will be removed are as follows:

'1', '2', '3', '4', '5', '6', '7', '8', '9', '-', '.', '&', 'A', 'ABLE', 'ABOUT', 'ABSOLUTELY', 'AFTER', 'AGAIN', 'ALL', 'ALONG', 'ALSO', 'ALWAYS', 'AM', 'AN', 'AND', 'ANOTHER', 'ANY', 'ANYONE', 'ANYTHING', 'ANYWHERE', 'ARE', 'AROUND', 'AS', 'ASKED', 'AT', 'AWAY', 'BACK', 'BE', 'BECAUSE', 'BECOME', 'BEEN', 'BEFORE', 'BEST', 'BETTER', 'BETWEEN', 'BIGGEST', 'BOTH', 'BRING', 'BUT', 'BY', 'CAME', 'CAN', 'CAN''T', 'CANNOT', 'CANT', 'CHANCE', 'COME', 'COMES', 'COULD', 'COULDN''T', 'DEFINITELY', 'DID', 'DIDN''T', 'DO', 'DOES', 'DOESN''T', 'DOING', 'DON''T', 'DONE', 'DURING', 'EACH', 'ELSE', 'ENOUGH', 'ENTIRE', 'ESPECIALLY', 'EVEN', 'EVER', 'EVERY', 'EVERYDAY', 'EVERYONE', 'EVERYTHING', 'FELT', 'FEW', 'FIRST', 'FOR', 'FROM', 'FRONT', 'GET', 'GETS', 'GETTING', 'GIVE', 'GIVEN', 'GIVES', 'GO', 'GOES', 'GOING', 'GOOD', 'GOT', 'GREAT', 'HAD', 'HAS', 'HASN''T', 'HAVE', 'HAVEN''T', 'HAVING', 'HE', 'HE''S', 'HELPED', 'HER', 'HER.', 'HERE', 'HERSELF', 'HERSELF.', 'HI', 'HIM', 'HIS', 'HOW', 'I', 'I''D', 'I''LL', 'I''M', 'I''VE', 'IF', 'IM', 'IN', 'INTO', 'IS', 'IT', 'IT.', 'IT''S', 'ITS', 'JUST', 'KEEP', 'KEEPS', 'KNOW', 'LAST', 'LET', 'LIKE', 'LOOKS', 'LOT', 'MADE', 'MAKE', 'MAKES', 'MAKING', 'MANY', 'MATTER', 'MAY', 'ME', 'ME.', 'MEANS', 'MORE', 'MORE.', 'MOST', 'MUCH', 'MY', 'MYSELF', 'NEARLY', 'NEED', 'NEEDS', 'NEVER', 'NEXT', 'NO', 'NOT', 'NOTHING', 'NOW', 'OF', 'ON', 'ONE', 'ONLY', 'OR', 'OTHER', 'OTHERS', 'OUR', 'OUT', 'OVER', 'OWN', 'PLEASE', 'PROBABLY', 'PUT', 'PUTS', 'REALLY', 'RECENTLY', 'SAID', 'SAME', 'SAW', 'SAY', 'SEE', 'SEEN', 'SHE', 'SHE''S', 'SHOULD', 'SIMPLE', 'SINCE', 'SO', 'SOME', 'SOMEONE', 'SOMETHING', 'SOMEWHERE', 'SPECIAL', 'STILL', 'SUCH', 'SURE', 'SURELY', 'TAKE', 'TAKES', 'TELL', 'TH', 'THAN', 'THAT', 'THAT''S', 'THE', 'THEIR', 'THEM', 'THEN', 'THERE', 'THESE', 'THEY', 'THING', 'THINGS', 'THINK', 'THINKING', 'THIS', 'THOSE', 'THOUGH', 'THOUGHT', 'THREE', 'THROUGH', 'TILL', 'TO', 'TOGETHER', 'TOLD', 'TOO', 'TOOK', 'TOWARDS', 'TRULY', 'TRYING', 'U', 'UNTIL', 'UP', 'UR', 'US', 'US.', 'USE', 'VERY', 'VIA', 'WANT', 'WANTED', 'WANTS', 'WAS', 'WAY', 'WE', 'WE''RE', 'WENT', 'WERE', 'WHAT', 'WHATEVER', 'WHEN', 'WHENEVER', 'WHERE', 'WHICH', 'WHILE', 'WHO', 'WHOM', 'WHY', 'WILL', 'WITH', 'WITHIN', 'WITHOUT', 'WOULD', 'YET', 'YOU', 'YOU.', 'YOU''D', 'YOU''RE', 'YOUR'


###
 Common symbols

If you choose to remove common symbols the symbols that will be removed are as follows:

'~', '`', '!', '@', '#', '£', '€', '$', '¢', '¥', '§', '%', '°', '^', '&', '\*', '(', ')', '-', '\_', '+', '=', '{', '}', '[', ']', '|', '\', '/', ':', ';', ''', ',', '<', '>', '.', '?', '“', '”', '-', '–', '’', '"'


####
**To create a Magic ETL DataFlow with the Python Scripting tile for use in a Word Cloud,**


1. Create a Magic ETL DataFlow and add the DataSet with the column you want to parse as an input DataSet.


 For more information about creating Magic ETL DataFlows, see

Creating a Magic ETL DataFlow

.
2. Add the
 **Python Scripting**
 tile to the DataFlow.


**Note:**
 The Python Scripting tile is a premium feature available at an additional cost. If you would like to add the Scripting tiles to your instance, reach out to your Account Executive or Customer Success Manager.
3. Copy and paste the content from the following Python file into the
 **Code**
 section of the Python Scripting tile:

wordCloud.py
4. Follow the steps listed in the comments section of the Python script.
5. In the
 **Schema**
 tab of the Python Scripting tile, add the columns that will be used in the Word Cloud chart and set their data types.
6. Add the
 **Output DataSet**
 tile to the DataFlow.
7. **Save and Run**
 the DataFlow.


