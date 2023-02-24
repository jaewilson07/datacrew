---
    title: Top 5 Issues Users Experience with Beast Mode in Domo
    url: https://domo-support.domo.com/s/article/360043430153
    linked_kbs:  ['[https://domo-support.domo.com/s/knowledge-base/](https://domo-support.domo.com/s/knowledge-base/)', '[https://domo-support.domo.com/s/](https://domo-support.domo.com/s/)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZamoGAC](https://domo-support.domo.com/s/topic/0TO5w000000ZamoGAC)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZanAGAS](https://domo-support.domo.com/s/topic/0TO5w000000ZanAGAS)', '[https://domo-support.domo.com/s/article/360043429953](https://domo-support.domo.com/s/article/360043429953)', '[https://domo-support.domo.com/s/article/360043430153](https://domo-support.domo.com/s/article/360043430153)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZanAGAS/beast-mode](https://domo-support.domo.com/s/topic/0TO5w000000ZanAGAS/beast-mode)', '[https://domo-support.domo.com/s/article/360043429933](https://domo-support.domo.com/s/article/360043429933)', '[https://domo-support.domo.com/s/article/360042925494](https://domo-support.domo.com/s/article/360042925494)', '[https://domo-support.domo.com/s/article/360043429913](https://domo-support.domo.com/s/article/360043429913)', '[https://domo-support.domo.com/s/article/4408174643607](https://domo-support.domo.com/s/article/4408174643607)', '[https://domo-support.domo.com/s/login/](https://domo-support.domo.com/s/login/)']
    article_id: 000004077
    views: 3,231
    created_date: 2022-10-24 21:20:00
    last updated: 2022-10-24 22:40:00
    ---



This article lists the most common problems users have when adding Beast Mode calculations in Domo and provides suggestions for resolving these issues.


1. *Case statement formatting*  
  
A case statement requires a few keywords placed in a particular order.


`CASE  
    WHEN `State` = 'California'  
    THEN 'CA'  
    ELSE `State`  
    END`  
  
The case statement will error out if it doesn’t include these elements or if it is not written correctly.  
  
You can include as many`WHEN`conditions as you would like but must have a`THEN`for every `WHEN.`  
  
`CASE  
    WHEN `State` = 'California'  
    THEN 'CA'  
    WHEN `State` = 'Washington'  
    THEN 'WA'  
    ELSE `State`  
    END`


2. *Date formatting*  
  
The functions you can use are DATE\_FORMAT() and STR\_TO\_DATE(). When using the STR\_TO\_DATE() function you must use the exact same format your string column is already in so that the function can properly convert it to a date type.  
  
You have a string type column,`Date`, that needs to be converted to a date type. The format of your values is MM-DD-YYYY.  
  
`STR_TO_DATE(`Date`,'%m-%d-%Y')`  
  
  
If your values are formatted as YY/DD/MM, then use  
  
`STR_TO-DATE(`Date`,'%y/%d/%m')`  
  
Once you have a date type column, and you would like to change the format, use the date\_format() function. This function can accept and generate any date format needed.  
  
Your `Date` column is formatted as DD-MM-YY, but you would like to see it as MM-DD-YYYY  
  
`DATE_FORMAT(`Date`,'%m-%d-%Y')`  
  
For more information on which date format specifiers to use, such as `%m` or `%y`, see  [Date Format Specifier Characters in Beast Mode](/s/article/360043429953 "Date Format Specifier Characters in Beast Mode").
3. *Use of Field name ( ` ) vs String Value ( ‘ ) vs Numeric Value.*   
  
In Beast Modes, the actual field name is referenced using the back tick ( ` ). Inputting a hard string value requires the single quotes ( ‘ ), whereas referencing a numeric value requires no quotes at all.  
  
`CASE WHEN `Return Customer?` = 'Y' THEN 1  
 WHEN `Return Customer?` = 'N' THEN 0  
 END`




 

**Note:** Putting single quotes (') around numeric values will *not* result in an error, rather it will just output the 1's and 0's as a string type column.
4. *Strings compared to Dates*  
  
When using the DATE\_FORMAT() function, this will convert the value to a`varchar`datatype, also known as a string. This is problematic because you are no longer able to use the value as a date for comparisons, etc. If your column should be a`date`format after using the DATE\_FORMAT()function, then you need to use STR\_TO\_DATE() to convert it back to a date type.  
  
Using the following beastmode, the output would be a string type column.  
  
`DATE_FORMAT(`Date`,'%m-%d-%Y')`  
  
To convert the string to a date, we would want to wrap our entire beastmode in the STR\_TO\_DATE()function.  
  
`STR_TO_DATE(DATE_FORMAT(`Date`,'%m-%d-%Y'),'%m-%d-%Y')`  
  
In the case that you will have a string column that needs to be converted to a date column and you want it formatted differently, you will need to do the following:  
  
`STR_TO_DATE(DATE_FORMAT(STR_TO_DATE(`Date`,'%y-%m-%d'),'%m-%d-%Y'),'%m-%d-%Y')`  
  
  
Because it works from the inside out, the``Date`` column, which is formatted as YY-MM-DD is first converted to a date. We would like to see the column as a MM-DD-YYYY format, so we then use `DATE_FORMAT()`to do so. However, now we are left with a string type column. Lastly, we will use the STR\_TO\_DATE() function to bring it back to a date type.
5. *Use of Trim function*  
  
Many times, strings will leave unwanted spaces at the end or beginning of the value. This is problematic when using formulas that call out the exact value. The `trim()`function will trim off any unnecessary white space.  
  
The `Zipcode` column contains values that have white space, such as '12345   '. Knowing white space exists in your values is extremely important if you are, for example, using the `COUNT()` function. `COUNT()` will count the number of characters in a string including white space. By using the `trim()` function first, you ensure that you count only the actual number of characters in your `Zipcode` values.  
  
`COUNT(TRIM(`Zipcode`))`
