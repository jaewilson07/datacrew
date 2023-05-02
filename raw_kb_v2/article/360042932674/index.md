

You can upload data from external data sources to Domo

after specifying connection and data information as a job, which you can save and use again.

The process for creating a DataSet job in Workbench 5 goes as follows:

. In the
 **Jobs**
 pane, you add a new job by clicking the "+" icon. Here you specify basic settings for the job, including the Domo domain (server), the DataSet job name, the method of data transport (such as Local File Provider, ODBC Connection Provider, etc.), the data reader (data source) type (such as JIRA, Excel, etc.), the DataSet name and type, and an optional DataSet description. (The DataSet name is the
 *only*
 setting you can change after creating the job. If you want to change any other settings, you will need to create a new job.) This adds an entry for the DataSet Job to your

jobs listing. However, at this stage the DataSet Job is still not ready for execution.
2. In the
 **Configure**
 subtab for the job...

1. You indicate the source of the data in the
	 **Source**
	 menu. For example, if the data source was a local file, you would select the file path here.
	2. You specify additional settings for the data source in the
	 **Processing**
	 menu. These settings differ between data source types. Some, such as replacement variables for queries, are optional, while others are required.
	3. You choose whether you want newly uploaded data to REPLACE the existing data in the DataSet or be APPENDED (added) to the existing data. You do this in the
	 **Update method**
	 menu.
	4. If desired, you can configure miscellaneous options for the job, such as transforms, notifications, excluded columns, etc.

For information about the controls and field settings in Workbench, see

Understanding the Workbench 5 User Interface.


**Video - Creating a Job in Workbench 5**

For specific information about all of the connector types available in Workbench 5, visit the following links:

 Connecting to Excel Data in Workbench 5
* Connecting to CSV Data in Workbench 5
* Connecting to JIRA Data in Workbench 5
* Connecting to ODBC Data in Workbench 5
* Connecting to an OLAP Cube in Workbench 5
* Connecting to XML Data in Workbench 5
* Connecting to QuickBooks Data in Workbench 5
* Connecting to JSON Data in Workbench 5


