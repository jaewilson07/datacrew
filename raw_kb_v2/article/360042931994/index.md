

Intro
-------

Use this connector to retrieve files in CSV format from your glu SFTP server. Using this connector, you can specify the file name pattern of a specific glu report, the date format that is used in the glu report and the column delimiter used within the glu report.


 Using these settings, the glu connector will connect to the glu SFTP server and search all files. Each time the DataSet is updated, the connector will download any files that A) match the user-specified filename pattern and B) have not been downloaded already in the past.


 This connector also has a companion QuickStart available in the Domo AppStore.


 Prerequisites
-----------------

Before using this connector, you must already have a glu SFTP server account.


 Four pieces of information are required:

 glu SFTP server address
* glu SFTP server port
* glu SFTP server username
* glu SFTP server password

It is recommended that you also have the following information. This should be available to you within the glu system settings.

 The format of the dates in the glu report.

+ Domo supports dates in Western format (e.g. 2016/12/01).
* The file name pattern that the glu service is using to export files to the glu SFTP server.
* The column delimiter used in the glu report files.
* How often and at what time glu updates the reports on the SFTP server.

Connecting to your glu SFTP Server
--------------------------------------


###


 Credentials Pane

Enter the host name, username, password, and port. The hostname is required to be in the format

s

ftp://<Hostname\_or\_IP\_Address>

;

, and the port should be numeric values only.


 If you are using multiple glu SFTP accounts, it is recommended that you name each account appropriately.


 If you click
 **Connect**
 but receive an error message, there are two possibilities:

 The glu SFTP server is not yet available. Contact the ATARA team to check the status of the glu SFTP server.
* The glu SFTP server is available but you still cannot connect. In this case, please contact the Domo support team.


###


 Details Pane


|
 Menu
  |
 Description
  |
| --- | --- |
|
 Filename Pattern
  |
 When you specify a filename pattern, you are telling the glu connector to retrieve all files matching that filename pattern. The data from all files will be combined and added to the DataSet. You can find the filename pattern in the glu system settings.


 Once a filename pattern is specified, the glu connector will search the SFTP server for all files matching the filename pattern.


 The DataSet will be updated if, and only if:
 * Files are found matching the filename pattern.
* The files that match the filename pattern have not been downloaded already in the past for this DataSet.

+ If the file was downloaded in the past, but has been updated, it will be downloaded again even if the file name has not changed.


 The DataSet will not be updated if:
 * The filename pattern does not match any files on the glu SFTP server.
* The filename pattern matches files, but the files were already downloaded previously for this DataSet.


 Given a filename such as “campaign\_report\_all~00000111.csv”, the most appropriate filename pattern would be “campaign\_report\_all.” Be careful not to configure a filename pattern that matches more than one type of glu report.
  |
|
 Date Format
  |
 The Date Format feature is available so that you can specify the exact date format. Domo detects date formats by default, but in some cases it may be helpful to explicitly configure the format.


 For example, the date 2016/12/01 would be

YYYY/MM/DD

.
  |
|
 Select the delimiting character
  |
 Select the column delimiter character used in the CSV files on the glu SFTP server.
  |


###
 Other Panes

For information about the remaining sections of the connector interface, including how to configure scheduling, retry, and update options, see

Adding a DataSet Using a Data Connector

.


 Using glu DataSets in DataFlows
---------------------------------

glu will sometimes update reports to account for changes in impressions and clicks. The following is an example of how to build a DataFlow that displays only the most recent data from glu.


**To build a DataFlow using glu,**

. Create a new table of the latest data called "latest\_data" from the source DataSet.
2. Add an index to the new "latest\_data" table.
3. Add an index to the source DataSet table.
4. Perform an inner join operation to return only the latest data.
5. Select all data from the output in the previous step to create a new output DataSet.
6. Check your final DataFlow configuration.

FAQ
-----


####
 If a file on the glu SFTP server is updated, but the file name doesn’t change, will the glu connector download the updated file?

Yes, the glu connector will see that the file is updated even if its name has not changed, and it will download the file again.

###
 Should I run the glu connector in append or replace mode?

The glu connector is built to be run in append mode.

###
 Can I safely change column names in my glu reports?

No, column names should be fixed before the campaign starts. If column names are changed in the middle of a campaign, it will break the Domo DataSet.

###
 Can I safely change filenames used for my glu reports?

No, filenames should be fixed and should not be changed. The glu connector supports one filename pattern per DataSet. The DataSet will fail to update if you change the filename because the filename pattern will not match any of the new files on the glu SFTP server.

###
 Can I use Japanese date formats (e.g. 2016

年

12

月

01

日

) in my glu reports?

No, Domo connectors do not currently support Japanese date formats. Please use the Western date format (e.g. 2016/12/01).

###
 I have multiple glu reports that I need to combine within Domo; how can I do this?

Domo recommends configuring glu to output one master report so that it is not necessary to combine data. However, in some cases the report dimensions available from each media make this impossible and you must have a new DataSet for each media. In this case you can use a Dataflow to combine metrics from multiple DataSets.

###
 Each day, past glu reports are updated with fresh impression, click, and conversion data. Are these rows automatically updated in the Domo DataSet?

No, you must use a DataFlow to filter out any old rows. See the

Using glu DataSets in Dataflows

section for more information.

###
 I set up my glu connector after there are already many files on the glu SFTP server. Will the connector download all the past files?

Yes, the connector is built to download all past files that have not already been downloaded.

###
 How often can the data be updated?

DataSets should be set to update no more than once every 15 minutes.

###
 Are there any API limits I should be aware of?

No.

