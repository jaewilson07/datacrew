

Intro
-------

This topic lists a number of data clean-up operations available through SQL and Magic ETL DataFlows and shows how data will look both before and after using an operation.


 Changing Your Data Type
-------------------------

Example: Changing the data type of an ID number from a numeric to a text field


 In MySQL...
  |
 In Magic ETL...
  |
 Before
  |
 After
  |
| --- | --- | --- | --- |
| `CAST(`id` AS CHAR) AS `id_cast_datatype``  |
 Use the "Set Column Type" tile
  |
 1
  |
 1 (looks the same but behaves a text dimension)
  |

Concatenating Columns to Create a Compound Field
--------------------------------------------------

Example: Concatenating "First Name" and "Last Name" columns to create a "Full Name" column


 In MySQL...
  |
 In Magic ETL...
  |
 Before
  |
 After
  |
| --- | --- | --- | --- |
| `CONCAT(`first\_name`, ' ', `last\_name`) AS `full\_name`` |
 Use the "Combine Columns" tile
  |
 ‘John’ | ‘Smith’  (first and last name in two separate columns)
  |
 ‘John Smith’ (a single column containing the complete name)
  |

Extracting a Portion of a Text String
---------------------------------------

Example: Extracting the first part of an email address to use as a user ID


 In MySQL...
  |
 In Magic ETL...
  |
 Before
  |
 After
  |
| --- | --- | --- | --- |
| `SUBSTRING\_INDEX(`email`,'@', 1) AS `user\_id`` |
 Use the "Replace Text" tile on that column to specify which portion of the string should be replaced with an empty string:  @.+
  |
 userid@email.com
  |
 userid
  |

Reformatting a Date
---------------------

Example: Formatting a non-standard date string into a date type format


 In MySQL...
  |
 In Magic ETL...
  |
 Before
  |
 After
  |
| --- | --- | --- | --- |
| `STR\_TO\_DATE(`send\_date`, '%d.%m.%Y') AS date\_formatted` |
 Use the "Set Column Type" tile.
  |
 23.01.2017 (string data type)
  |
 01/23/2017 (date data type)
  |

Deriving Date Attributes from a Date Column
---------------------------------------------

Example: Extracting the day of the week from a date column


 In MySQL...
  |
 In Magic ETL...
  |
 Before
  |
 After
  |
| --- | --- | --- | --- |
| `DAYNAME(`receive\_date`) AS receive\_date\_name` |
 Use the "Date Operations" tile.
  |
 01/23/2017
  |
 Monday
  |

Splitting a Column into Two Columns Based on a Character in the Column
------------------------------------------------------------------------

Example: Dividing a "Status Code" column into status code parts based on the

/

delimiter found within the column


 In MySQL...
  |
 In Magic ETL...
  |
 Before
  |
 After
  |
| --- | --- | --- | --- |
| `SUBSTRING\_INDEX(`status\_code`, '/', 1) AS status\_code\_p1

, SUBSTRING\_INDEX(`status\_code`, '/', -1) AS status\_code\_p2` |
 Use the "Replace Text" tile on that column to specify which portion of the string should be replaced with an empty string:

\/.+

for the first part and

.+\/

for the second.
  |
 SHI/DELV
  |
 SHI | DELV
  |

Trimming Erroneous Spaces from a Column
-----------------------------------------

Example: Trimming the leading and trailing spaces from the "Department" column


 In MySQL...
  |
 In Magic ETL...
  |
 Before
  |
 After
  |
| --- | --- | --- | --- |
| `TRIM(`department`) AS department\_trimmed` |
 Use a regular expression within the "Replace Text" tile to pinpoint the leading and training spaces and replace them with nothing.
  |
 ' department '
  |
 'department'
  |

Changing the Case of an Entire Column
---------------------------------------

Example: Changing the "Category" column to uppercase letters


 In MySQL...
  |
 In Magic ETL...
  |
 Before
  |
 After
  |
| --- | --- | --- | --- |
| `UPPER(`category`) AS category\_change\_case` |
 Use the
 **All upper case**
 option within the "Text Formatting" tile.
  |
 health
  |
 HEALTH
  |

Capitalizing the First Letter of a Column
-------------------------------------------

Example: Capitalizing the first letter of the first word in the "Category" column


 In MySQL...
  |
 In Magic ETL...
  |
 Before
  |
 After
  |
| --- | --- | --- | --- |
| `CONCAT(UPPER(LEFT(`category`, 1)), SUBSTRING(`category`, 2, LENGTH(`category`))) AS category\_cap\_first` |
 Use the
 **Capitalize first letter**
 option within the "Text Formatting" tile.
  |
 health
  |
 Health
  |

Categorizing Rows Based off the Value in a Specific Column
------------------------------------------------------------

Example: Assigning a region to each row based on a store number


 In MySQL...
  |
 In Magic ETL...
  |
 Before
  |
 After
  |
| --- | --- | --- | --- |
| `(CASE WHEN `store\_number` IN ('100', '101', '104', '109') THEN 'region\_1'

WHEN `store\_number` IN ('102', '105', '110') THEN 'region\_2'

WHEN `store\_number` IN ('103', '106', '107', '108') THEN 'region\_3'

ELSE 'no region' END) AS region` |
 Use the
 **Filter Rows**
 tile to separate into distinct groups based on store number, use
 **Add Constants**
 to add a category to each group, then use
 **Append Rows**
 to stitch the rows back together.
  |
 store\_number = 100
  |
 store\_number = 100 | region = ‘region\_1’
  |

Categorizing Rows Based off the Value in a Specific Column
------------------------------------------------------------

Example: Assigning a category to the animal name based on the first letter of the name


 In MySQL...
  |
 In Magic ETL...
  |
 Before
  |
 After
  |
| --- | --- | --- | --- |
| `(CASE WHEN `animal\_names` LIKE 'H%' THEN 'Hs'

WHEN `animal\_names` LIKE 'B%' THEN 'Bs'

WHEN (`animal\_names` LIKE 'A%' OR `animal\_names` LIKE 'E%') THEN 'AEs'

ELSE 'another letter' END) AS animal\_names\_categories` |
 Use a regular expression within the "Replace Text" tile to identify the patterns and assign a category.  For example

^H.+

finds names starting with H,

^B.+

finds names starting with B,

^A.+|^E.+

finds names starting with either A or E, and

^[^H,B,A,E].+

finds names that do not start with H, B, A, or E.
  |
 animal\_names = ‘Horse’
  |
 animal\_names = ‘Horse’ | animal\_names\_categories = ‘Hs’
  |

Categorizing Rows Based off a Numeric Value Threshold
-------------------------------------------------------

Example: Categorizing rows based on salary amount


 In MySQL...
  |
 In Magic ETL...
  |
 Before
  |
 After
  |
| --- | --- | --- | --- |
| `(CASE WHEN `salary` < 50000 THEN '<$50,000'

WHEN `salary` < 100000 THEN '$50,000 - $99,999'

WHEN `salary` < 150000 THEN '$100,000 - $149,999'

WHEN `salary` < 200000 THEN '$150,000 - $199,999'

ELSE '>$200,000' END) AS salary\_bucket` |
 Use the "Filter Rows" tile to separate into distinct groups based on store number, use "Add Constants" to add a category to each group, then use "Append Rows" to stitch the rows back together.
  |
 salary = $45,000
  |
 salary = $45,000 | salary\_bucket = ‘<$50,000’
  |


