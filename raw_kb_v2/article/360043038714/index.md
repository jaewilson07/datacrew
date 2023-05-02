

Intro
=======

Using upsert in Workbench allows you to identify a smaller subset of new or updated rows and push them to an existing Domo DataSet. Upsert is a type of SQL merge that can be used to dramatically increase the performance of data ingestion in certain use cases. To use this update method, you must have a key, either primary or composite, to uniquely identify each row of data. Additionally, there must be a method to identify the subset of rows to send to Domo, such as a where clause in an ODBC job. Once the subset of rows is identified, Domo will compare the key column(s) to determine if the row already exists in your DataSet and
 *update*
 those existing records. Rows that do not exist will be
 *appended*
 .


 Upsert typically works best when the DataSet is very large, the data is updating frequently, and the data contains a unique primary or composite key.
 **Any efficiency gained by using upsert is realized when instead of sending all rows, only the new or updated rows are sent.**
 Proper use of upsert can have significant positive impacts on performance and efficiency of your Workbench job as well as requiring fewer resources on your database or file storage system. Improper use can negatively impact performance and run time.


 How to Use Upsert
===================

To use the upsert function in Workbench, you should already have an existing Workbench job and a healthy DataSet in Domo. For more information on how to create a Workbench job, see

Creating a Job in Workbench 5.1

.

. Navigate to the
 **Configure**
 tab.
2. Set the
 **Update Method**
 to
 **Append**
 .

*Note:**
 If this is a NEW Workbench job, you must run the job for the first time on
 **Replace**
 to create the DataSet. After this first initial run, you can switch to
 **Append**
 .
3. Click on the
 **Schema**
 tab and you will now see an
 **Upsert Key**
 column.
4. Select the checkbox(es) for the corresponding columns that represent the primary or composite key.


**Tip:**
 Date or datetime columns are not recommended for the Upsert Key as they are not always unique.


 In the following image, the `Transaction ID` is completely unique per transaction so that will be selected. Now, Workbench will always reference `Transaction ID` to see if a transaction id exists and update it or if it does not add that new row.


**Note:**
 If you do not see Upsert Key after following these steps, contact Domo Support and provide the Domo DataSet ID to verify upsert is enabled. See

Contacting Technical Support

for more information.
5. Next, navigate back to the
 **Configure**
 tab and click
 **edit**
 under processing to bring up your query.
6. Add logic to ensure you're only pulling a smaller subset of data that could be new or updated.


 In this example, we know that our data could be updated within 7 days of the transaction, so we are pulling the last 7 days' worth of transactions to capture any updated rows as well as any new ones each day. This is only one simple example of many different ways to identify the "change data" or "delta".
7. Click
 **Apply**
 .
8. Run Preview to ensure the appropriate records are returned.
9. (Optional) Job scheduling should be reviewed and adjusted accordingly.

Your Workbench upsert job is now properly configured and will update or add new information based on the data returned by the query.

