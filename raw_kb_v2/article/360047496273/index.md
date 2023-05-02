


**Important:**
 Support for Workbench 4 ended on
 **April 15, 2021**
 . Workbench may continue to run on installed machines, but it will no longer receive feature enhancements and security updates. When issues are encountered in Workbench 4, the recommended course of action from the Domo Support team will be to upgrade to the latest version of Workbench 5. To see this article for Workbench 5, click

*here**

.

You can create an OLAP DataSet Job in Workbench 4. When you select OLAP as your Data Source type, you can provide the details of your connection and configure your query.


**To create an OLAP DataSet Job in Workbench 4,**

. Click
 **Add New**
 in the
 **DataSet Jobs**
 grouping in the Buttons toolbar at the top of the Workbench window.


 This opens the
 **Workbench DataSet Job Creation Wizard**
 .
2. (Conditional) If requested, select the desired Domo server. (This screen only appears if you have more than one server set up in Workbench.)
3. In the
 **DataSet Job Name**
 field, enter a name for the DataSet Job. This is the name of the job as it appears in Workbench,
 *not*
 the name of the uploaded DataSet in Domo.
4. In the
 **DataSet Name**
 field, enter the name of the DataSet. This is the name of the uploaded DataSet in Domo.
5. Select the desired update method in the
 **Update Method**
 menu:

* Select
	 **Replace DataSet**
	 if you want the DataSet to be replaced entirely upon updating.
	* Select
	 **Append to DataSet**
	 if you want new data to be added to the existing data set upon updating.
6. In the
 **Transport Method**
 menu, select
 **OLEDB Connection Provider**
 .
7. Click
 **Next**
 .
8. In the
 **DataSet Type**
 field, select the type of DataSet in the dropdown or enter a custom name.


 The DataSet type you select or enter here is reflected as the connector type in Domo after you execute the job.

*Tip:**
 It is recommended that you select or enter the DataSet type that tells users what data is being represented,
 *not*
 the data reader you are using to present the data. For example, you might be connecting to an OLAP cube that contains Twitter data. In this case the best option would be to enter "Twitter" rather than selecting
 **OLEDB**
 because the data you are representing in Domo is from Twitter.
9. (Optional) Enter a description in the
 **DataSet Description**
 field.

*Note:**
 You can change any of the settings you made in the above steps in the
 **Source**
 panel for the DataSet Job after you complete all of the steps in the Wizard
 *except*
 the transport method.
10. Click
 **Next**
 .


 A new OLAP DataSet Job is added to the list of jobs for the currently authenticated server in the
 **Accounts**
 pane.
11. Under the OLAP DataSet Job that was just added to the jobs list, select
 **Source**
 .


 A panel opens with options for configuring your OLAP connection and defining your query.
12. In the
 **OLAP Connection**
 field, do one of the following:

* Enter an OLAP connection string containing your Provider (MSOLAP or Essbase), Data Source, Initial Catalog, and User ID and Password.
	* Build your connection string by filling in the fields in the
	 **Connection Builder**
	 . You can open the
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
13. Click
 **Apply Changes.**
14. Click
 **Validate Configuration**
 .
15. In the
 **Data Source Properties**
 pane, enter a query for the data you want to retrieve. For example:


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
16. (Optional) Define replacement variables for columns in the DataSet in the
 **Replacement Variables**
 tab. For each replacement variable...

1. Select the applicable column in the
	 **Column Dropdown**
	 .

**Note:**
	 The
	 **Column**
	 dropdown does not populate until you create a successful OLAP connection in the
	 **Transport Method**
	 pane.
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

You are now ready to execute the DataSet Job, thereby creating an OLAP DataSet in Domo. However, there are many other actions you can take on the DataSet Job before you send it to Domo. These include the following:

 Setting an update schedule for the job
* Adding the job to a group of jobs with an advanced schedule set in Windows Task Scheduler
* Configuring notifications to be sent when the job update succeeds or fails
* Encrypting and decrypting Workbench data
* Creating new columns using calculations
* Setting a custom date format on a column
* Replacing a value in a column
* Combining DataSets
* Applying filters to columns


