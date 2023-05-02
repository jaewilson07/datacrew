

Issue
-------

For various reasons, your data may contain invalid ASCII characters in it. These characters may cause inaccurate data and/or cause errors when the data is put on the Domo platform.


 How to Fix
------------

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

ET @counter = 1;
WHILE ((@counter <= 31 OR @counter >= 127) AND @counter <= 300) DO
    SET @var = (SELECT CONCAT("update ",@in," set ",@col," = replace(",@col,", CHAR(",@counter,"), '');") query);
    PREPARE STMT FROM @var;
    EXECUTE STMT;

   IF(@counter = 31) THEN
        SET @counter = 127;
    ELSE
        SET @counter = @counter +1;
    END IF;

ND WHILE;


SET @var2 = (SELECT CONCAT("update ",@in," set ",@col," = TRIM(",@col,");") query);
    PREPARE STMT FROM @var2;
    EXECUTE STMT;

ND;

``

*Important:**
 Do not change this transform!

5. Deselect “Generate Output Table” in the transform.


 6. Click “Run SQL.”


 7. Click “Apply” after it is done running.


 8. Create a new transform.


 9. Copy and paste the following code snippet call/transform\_2 into the new transform.


```
CALL remove_uncommon_ascii('ascii_test', '`text`');

``


 10. Deselect “Generate Output Table” in the transform.


 11. Edit the statement to include the name of your table and the name of the column that may include the invalid characters. For example, if your table is named “products” and the column that may include invalid characters is called “product\_name,” you would add the following code:


```
CALL remove_uncommon_ascii('products', '`product_name`');

``


 The table you used in step 11 should now have the invalid ASCII characters removed from the column you specified in the same step.

*Tip:**
 If you need to do this with multiple columns you will need to create multiple Call transforms (steps 8 – 13), one for each column.


