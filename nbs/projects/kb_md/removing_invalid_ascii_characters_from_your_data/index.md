---
    title: Removing Invalid ASCII Characters from Your Data
    url: https://domo-support.domo.com/s/article/360042923514
    linked_kbs:  ['[https://domo-support.domo.com/s/knowledge-base/](https://domo-support.domo.com/s/knowledge-base/)', '[https://domo-support.domo.com/s/](https://domo-support.domo.com/s/)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZamzGAC](https://domo-support.domo.com/s/topic/0TO5w000000ZamzGAC)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZaoJGAS](https://domo-support.domo.com/s/topic/0TO5w000000ZaoJGAS)', '[https://domo-support.domo.com/s/article/360042923514](https://domo-support.domo.com/s/article/360042923514)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZaoJGAS/transformation-tips-and-tricks](https://domo-support.domo.com/s/topic/0TO5w000000ZaoJGAS/transformation-tips-and-tricks)', '[https://domo-support.domo.com/s/article/360043429933](https://domo-support.domo.com/s/article/360043429933)', '[https://domo-support.domo.com/s/article/360043429953](https://domo-support.domo.com/s/article/360043429953)', '[https://domo-support.domo.com/s/article/360042925494](https://domo-support.domo.com/s/article/360042925494)', '[https://domo-support.domo.com/s/article/360043429913](https://domo-support.domo.com/s/article/360043429913)', '[https://domo-support.domo.com/s/article/4408174643607](https://domo-support.domo.com/s/article/4408174643607)', '[https://domo-support.domo.com/s/login/](https://domo-support.domo.com/s/login/)']
    article_id: 000004601
    views: 2,152
    created_date: 2022-10-24 22:15:00
    last updated: 2022-10-24 22:41:00
    ---



Issue
-----


For various reasons, your data may contain invalid ASCII characters in it. These characters may cause inaccurate data and/or cause errors when the data is put on the Domo platform.


How to Fix
----------


Run your data through a stored procedure in a MySQL dataflow that should remove invalid ASCII characters.


**To set up a MySQL DataFlow that removes ASCII characters,**


1. Create a new MySQL DataFlow.


2. Add your DataSet that contains these un-common characters.


3. Create a new transform.


4. Copy and paste the following code snippet into the new transform:



```
CREATE PROCEDURE remove_uncommon_ascii(IN `input` char(255), IN `column` char(255))
BEGIN
SET @in = `input`;
SET @col = `column`;

SET @counter = 1;
WHILE ((@counter <= 31 OR @counter >= 127) AND @counter <= 300) DO
    SET @var = (SELECT CONCAT("update ",@in," set ",@col," = replace(",@col,", CHAR(",@counter,"), '');") query);
    PREPARE STMT FROM @var;
    EXECUTE STMT;

    IF(@counter = 31) THEN 
        SET @counter = 127;
    ELSE
        SET @counter = @counter +1;
    END IF;

END WHILE;


SET @var2 = (SELECT CONCAT("update ",@in," set ",@col," = TRIM(",@col,");") query);
    PREPARE STMT FROM @var2;
    EXECUTE STMT;

END;

```



 


**Important:**Do not change this transform!



5. Deselect “Generate Output Table” in the transform.


6. Click “Run SQL.”


7. Click “Apply” after it is done running.


8. Create a new transform.


9. Copy and paste the following code snippet call/transform\_2 into the new transform.



```
CALL remove_uncommon_ascii('ascii_test', '`text`');

```

10. Deselect “Generate Output Table” in the transform.


11. Edit the statement to include the name of your table and the name of the column that may include the invalid characters. For example, if your table is named “products” and the column that may include invalid characters is called “product\_name,” you would add the following code:



```
CALL remove_uncommon_ascii('products', '`product_name`');

```

The table you used in step 11 should now have the invalid ASCII characters removed from the column you specified in the same step.




 


**Tip:**If you need to do this with multiple columns you will need to create multiple Call transforms (steps 8 – 13), one for each column.



 

