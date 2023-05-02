

You can create an OLAP DataSet Job in Workbench 5.1. When you select OLAP as your Data Source type, you can provide the details of your connection and configure your query.


**To create an OLAP DataSet Job in Workbench 5.1,**

. Click the

icon in the left-hand icon bar.
2. Click the "+" button in the top right corner of the jobs listing pane.
3. Select the desired account (Domo instance) in the
 **Domo Domain**
 dropdown menu.


 If you have only one account set up, that account is already chosen for you and the menu is unavailable.
4. In the
 **Name**
 field, enter a name for the DataSet Job.


 This is the name of the job as it appears in Workbench,
 *not*
 the name of the uploaded DataSet in Domo.
5. In the
 **Transport Type**
 menu, select
 **OLEDB Connection Provider**
 .
6. In the
 **Reader Type**
 menu, select
 **Database Query**
 .
7. In the
 **DataSet Name**
 field, enter the name of the DataSet. This is the name of the uploaded DataSet in Domo.


 This is the
 *only*
 setting you can change after saving the new job.
8. In the
 **DataSet Type**
 field, select the type of DataSet in the dropdown.


 The DataSet type you select or enter here is reflected as the connector type in Domo after you execute the job.
9. Enter a description for the DataSet if desired.


 This is the description of the DataSet as it appears in Domo.
10. Click
 **Create**
 .


 A new OLAP DataSet Job is added to the list of jobs for the currently authenticated account. Note that after creating the job, you cannot edit any of the settings you just configured except for the DataSet name. If you want to change any of the other settings, you must create a new job.
11. Click the
 **Configure**
 subtab.
12. Click the
 **Edit**
 button under "Source."


 A panel opens with options for configuring your OLAP connection and defining your query.
13. In the
 **OLAP Connection**
 field, do one of the following:

* Enter an OLAP connection string containing your Provider (MSOLAP or Essbase), Data Source, Initial Catalog, and User ID and Password.
	* Build your connection string by filling in the fields in the
	 **Connection Builder**
	 , then click
	 **Apply**
	 to add the string to the
	 **OLAP Connection**
	 field. You can open the
	 **Connection Builder**
	 by clicking the arrow in the
	 **OLAP Connection**
	 field.


	 The following table describes all of the parameters in the
	 **Connection Builder:**


	|
	 Option
	  |
	 Description
	  |
	| --- | --- |
	|
	 Data Source
	  |
	 Specifies the server where the database is located.
	  |
	|
	 Provider
	  |
	 Select a provider, either MSOLAP or Essbase.
	  |
	|
	 Catalog
	  |
	 Specifies the Initial Catalog for your OLAP connection.
	  |
	|
	 Username
	  |
	 Specifies the username for this OLAP connection.
	  |
	|
	 Password
	  |
	 Specifies the password for this OLAP connection.
	  |
14. (Optional) Check the "Requires 32-bit execution" box if 32-bit execution is needed for this connection.
15. Click
 **Apply.**
16. Click the
 **Edit**
 button under "Processing."
17. Change the
 **Query Execution Timeout**
 value if desired.


 This is the amount of time in seconds that will elapse before a long-running job is terminated.
18. In the
 **Query**
 subtab, enter a query for the data you want to retrieve. For example:


`with member [Measures].[PCT Discount] AS '[Measures].[Discount Amount]/[Measures].[Sales Amount]', FORMAT_STRING = 'Percent'


 set Top10SellingProducts as 'topcount([Product].[Model Name].children, 10, [Measures].[Sales Amount])'


 set Preferred10Products as '


 {[Product].[Model Name].&[Mountain-200],


 [Product].[Model Name].&[Road-250],


 [Product].[Model Name].&[Mountain-100],


 [Product].[Model Name].&[Road-650],


 [Product].[Model Name].&[Touring-1000],


 [Product].[Model Name].&[Road-550-W],


 [Product].[Model Name].&[Road-350-W],


 [Product].[Model Name].&[HL Mountain Frame],


 [Product].[Model Name].&[Road-150],


 [Product].[Model Name].&[Touring-3000]


 }'


 select {[Measures].[Sales Amount], [Measures].[Discount Amount], [Measures].[PCT Discount]} on 0,


 Preferred10Products on 1


 from [Analysis Services Tutorial]`
19. (Optional) Define replacement variables for columns in the DataSet in the
 **Replacement Variables**
 and
 **Global Replacement Variables**
 subtabs. For each replacement variable...

1. Select the applicable column in the
	 **Column Dropdown**
	 .

**Note:**
	 The
	 **Column**
	 dropdown does not populate until you create a successful OLAP connection in the
	 **Source**
	 menu.
	2. Define replacement variables for the selected column in the
	 **Value**
	 dropdown.


	|
	 Variable Type
	  |
	 Description
	  |
	| --- | --- |
	|

 lastvalue

 |

 lastvalue

 variables keep track of relevant fields for the last row of data that was sent with the most recent upload for the associated job. The syntax is


	`!{lastvalue:_name_}!`

 lastvalue

 variables values are updated by Workbench after an upload finishes.

 lastvalue

 variables are stored in the job (

 .xml

 ) file. This variable lets you construct a query that gets only the "new" rows each time it runs. For example, if your data has a column with a row "id" that increments with each new row, you can construct a query containing


	`!{lastvalue:id}!`


	 similar to the following:


	`select id, name, type, sales from tablename where id > !{lastvalue:id}! order by id`


	 In this example, the column "id"
	 *must*
	 be in the

 SELECT

 ,

 WHERE

 , and

 ORDER BY

 clauses for the variable to be used and updated.


	 When uploading this job, Workbench replaces the


	`!{lastvalue:id}!`


	 variable with the current value of "id". After finishing the upload, Workbench stores the last uploaded value of "id" in the job (

 .xml

 ) file.

**Note:**
	 You
	 *must*
	 include any column you reference with a

 lastvalue

 variable in your

 SELECT

 ,

 WHERE

 , and

 ORDER BY

 clauses in order for the variable to be used and updated after the data upload.

 |
	|

 previewonly

 |
	 Used to indicate that certain actions should take place when loading a preview in Workbench. For example, you could request that your preview return only 100 rows of data instead of the 1,000,000 present in the data source. The syntax is


	`!{previewonly:Statement}!`
	 |
20. Click
 **Apply**
 .
21. Select the desired update method in the
 **Update Method**
 menu:

* Select
	 **Replace DataSet**
	 if you want the DataSet to be replaced entirely upon updating.
	* Select
	 **Append to DataSet**
	 if you want new data to be added to the existing data set upon updating.

You are now ready to execute the DataSet Job, thereby creating an OLAP DataSet in Domo. However, there are many other actions you can take on the DataSet Job before you send it to Domo. These include the following:

 Scheduling a Job in Workbench 5.1
* Configuring notifications to be sent when the job update succeeds or fails
* Encrypting and decrypting Workbench data
* Creating new columns using calculations
* Setting a custom date format on a column
* Replacing a value in a column
* Combining DataSets
* Applying filters to columns
* Setting impersonation

(which causes Workbench to run the job as an Active Directory user).


