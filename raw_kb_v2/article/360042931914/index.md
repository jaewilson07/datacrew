

Intro
-------


 A character-separated values (CSV) file stores tabular data in plain text form. Domo provides two connectors that allow you to access CSV files you have uploaded to an SFTP (Secure File Transfer Protocol) server:


* The Domo CSV SFTP Pull connector (formerly known as the "CSV-SFTP" connector) allows you to access CSV files that you have uploaded to your own SFTP server.
* The Domo CSV SFTP Push connector allows you to capture and process CSV files that have been uploaded to Domo's own SFTP. With this connector, Domo gives you credentials, then you push your data to Domo.

This article discusses the CSV SFTP Push connector. For information about the CSV SFTP Pull connector, visit

CSV SFTP Pull Connector


 .

The CSV SFTP Push connector is a "File" connector, meaning it retrieves files and output them to Domo. In the Data Center, you can access the connector page for this and other File connectors by clicking
 **File**
 in the toolbar at the top of the window.


 You connect to CSV files in the Data Center. This topic discusses the fields and menus that are specific to the CSV SFTP Push connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in

Adding a DataSet Using a Data Connector

.


 Prerequisites
---------------

To connect to a Domo-side SFTP server and import a CSV file, you must have an access key in .pem format. If you do not have a key, Domo allows you to generate one.


 Sending Your CSV File to an SFTP Server
-----------------------------------------


 This section shows you how to set up a connection and configure CSV options in the
 **Credentials**
 and
 **Details**
 panes in the CSV-SFTP Push connector page. The components of the other panes in this page,
 **Update Mode**
 and
 **Name & Describe Your DataSet**
 , are universal across most connector types and are discussed in greater length in

Adding a DataSet Using a Data Connector

.

***To add a CSV DataSet by sending a file to a Domo-hosted SFTP server,****

*Important:**
 Intacct limits the number of concurrent connections using one company id. The default limit is 2 connections at a time but may vary based on your level of service and contractual terms with Intacct. If you have a service level agreement that allows for a greater number of concurrent connections, you will need to go into your Domo account in the account center (https://[yourinstance].

domo.com/datacenter/accounts

) and update the value in your Intacct account. Otherwise, Domo will simply default your account to the normal limit of 2 concurrent requests imposed by Intacct.


 This change will improve performance and help increase the stability of the Intacct Advance connector. Overall, this should have very little impact on your DataSets, however, the downside of this change is that you may see an increase in the amount of time it takes to retrieve your data into Domo if you do not update your account to reflect the appropriate limit.


 Additional steps can be taken to mitigate any potential slowdown by scheduling your Intacct Advance connector DataSets in such a way that they do not overlap each other.


1. Select

***> Data Center****
 .
2. Click
 ****File****
 in the tab row at the top of the window.
3. Locate
 ****CSV SFTP****
 in the connector list and click it.
4. Enter a name for the new account in the
 **Name your account**
 field.


 This is the name that this account will be known by in the

connector Accounts page

.
5. Do one of the following:

* If you want to generate a key...

	1. Select
		 ****Generate a key for me****
		 .
		2. Check the box acknowledging that you understand you will be able to download your key file only once.
		3. Click
		 ****Create Key****
		 .


		 A key is downloaded in .pem format.
	* If you want to enter your own key...

	1. Select
		 ****Use my own key****
		 .
		2. Paste your RSA public key into the empty box.
		3. Click
		 ****Save Key****
		 .
6. (Conditional) If the first row of your CSV file is not the header row, enter the header row number in the
 **Header Row**
 field; otherwise leave this field blank.
7. Select the delimiter for your CSV file in the
 ****Delimiter****
 menu (or leave this set to
 **Detect delimiter**
 if you want this to be determined automatically).
8. (Conditional) If there are one or more rows at the bottom of the file you do not want to import, enter the number of rows to skip in the
 **Skip Footer Rows**
 field. Otherwise leave this blank.
9. (Conditional) If the data in your CSV file starts on a different row than the row following the header row, enter the row number in the
 **Starting Data Row**
 field. Otherwise leave this blank.
10. Select the desired escape character in the
 **Escape Character**
 menu.
11. Select the desired quote character in the
 **Quote Character**
 menu.
12. (Conditional) If you would like Domo to detect your encoding type automatically, leave the
 **Detect Encoding**
 box checked. Otherwise, uncheck the box then select the desired encoding type in the
 **Encoding**
 menu.
13. (Conditional) If you would like Domo to keep leading zeros in numeric values like '0123', select this checkbox.


**Note:**
 This will parse the values as text.
14. Select the desired date format in the
 **Date Format**
 field.
15. Click
 **Next**
 .

For information about the remaining sections of the connector interface, including how to configure scheduling, retry, and update options, see

Adding a DataSet Using a Data Connector

.

##
 Uploading a CSV File Using an SFTP Client

You can upload a CSV file to a Domo SFTP server using an SFTP client. These instructions show you how to do this using the FileZilla SFTP client (

https://filezilla-project.org

). For instructions about uploading files using other SFTP clients, read the documentation for your chosen client or do a Google search.


****To send a CSV file to a Domo SFTP server using FileZilla,****

. Configure the CSV connector in Domo by following the instructions under

Sending Your CSV File to an SFTP Server

.
2. Move your .pem file into a directory on your machine.


 In this example we use the /sftp directory.
3. Create a CSV file in the /sftp directory with the same name as the new DataSet's ID (which you can find in the
 ****How to Upload****
 tab in the details view for the DataSet).


 For example, if your DataSet ID was cb4ba6a0-0934-440f-8572-1253b9f7525a, the CSV filename would be cb4ba6a0-0934-440f-8572-1253b9f7525a.csv.
4. In FileZilla, create a new site in the Site Manager.
5. In the
 ****General****
 tab, configure settings as follows:


 For this setting...
  |
 ...do this
  |
| --- | --- |
|
 Host
  |
 Enter the
 ****Host name****
 URL found in the
 ****How to Upload****
 tab in the details view for the DataSet.
  |
|
 Port
  |
 Enter 22.
  |
|
 Protocol
  |
 Select
 ****SFTP****
 .
  |
|
 Logon Type
  |
 Select
 ****Key file****
 .
  |
|
 User
  |
 Enter the value next to
 ****User name****
 in the
 ****How to Upload****
 tab in the details view for the DataSet.
  |
|
 Key file
  |
 Locate your .pem key in the file browser.
  |
6. Open the connection to the site you just configured.
7. Drag the CSV file you want to upload from the Local file window to the Remote site window.
8. Close the connection or quit FileZilla.

You should now see the file being uploaded into Domo.

##
 Uploading a CSV File Using the Command Line

You can send a CSV file to a Domo SFTP server using a command line client. These instructions are specific to Mac/Linux systems and may not work on Windows.


****To send a CSV file to a Domo SFTP server using the command line,****

. Configure the CSV connector in Domo by following the instructions under

Sending Your CSV File to an SFTP Server

.
2. Move your .pem file into a directory on your machine.


 In this example we use the /sftp directory.
3. Create a CSV file in the /sftp directory with the same name as the new DataSet's ID (which you can find in the
 ****How to Upload****
 tab in the details view for the DataSet).


 For example, if your DataSet ID was cb4ba6a0-0934-440f-8572-1253b9f7525a, the CSV filename would be cb4ba6a0-0934-440f-8572-1253b9f7525a.csv.
4. In the /sftp directory, connect to the SFTP server using this command:


`sftp –i
 **domosftpkey**
 .
 **pem**
**username**
 @
 **mycompany**
 .

import.domo.com`


 where
 **username**
 is the value corresponding to
 ****User name****
 in the
 ****How to Upload****
 tab,
 **domosftpkey.pem**
 is the name of your key, and
 **mycompany**
 is your Domo domain (i.e. the portion of the URL of your Domo instance immediately following http://).
5. Use this command to upload the CSV file:


`put cb4ba6a0-0934-440f-8572-1253b9f7525a.csv`
6. Exit the server by entering quit.


 When you exit the server, you will see your file being processed in Domo.

There is a possibility you will see the following message when you try to connect to the server:

If this occurs, run the following command then try connecting again:


`chmod 600 /sftp/
 **domosftpkey.pem**`


 where
 **domosftpkey.pem**
 is the name of your key.

##
 Uploading a CSV File Using a Third-Party Service

You can send a CSV file to a Domo SFTP server using any of various third-party services. These instructions show you how to deliver analytics reports using Adobe Analytics. For instructions about uploading files using other services, peruse the documentation for those services or do a Google search.


****To send an Adobe Analytics CSV file to a Domo SFTP server,****

. Configure the CSV connector in Domo by following the instructions under

Sending Your CSV File to an SFTP Server

. Make sure you set the following options:

* Under
	 ****Generate or Select Key****
	 , choose the
	 ****Use my own key****
	 option. Then paste the RSA public key you received from Adobe in the text field.
	* Under
	 ****Parsing Options****
	 ...

	+ Set the delimiter to
		 ****Comma****
		 .
		+ Leave
		 ****Includes Header Row****
		 checked unless you have it set up to not include one in Adobe.
2. Switch to Adobe Analytics and log into your account.
3. Navigate to
 ****Tools > Data Warehouse****
 .
4. In the
 ****Data Warehouse Request****
 tab, enter all the parameters needed to define the report you want to send to Domo. These parameters include
 ****Request Name****
 ,
 ****Reporting Date****
 ,
 ****Segments****
 ,
 ****Items****
 ,
 ****Breakdowns****
 ,
 ****Metrics****
 , etc.
5. In the
 ****Schedule Delivery****
 section at the bottom of the page, click
 ****Advanced Delivery Options****
 .
6. Set delivery options as follows:


|
 For this option...
  |
 ...do this
  |
| --- | --- |
|
 Report file name
  |
 Select
 ****Custom****
 , then enter the Domo DataSet ID in the text field with a .csvextension.
  |
|
 Report Format
  |
 Select
 ****CSV****
 .
  |
|
 Report Destination
  |
 Select
 ****FTP****
 . Then enter information in the fields as follows:


|  |  |
| --- | --- |
|
 Host
  |
 sftp://
 **hostname**
 (as listed on the
 ****How to Upload****
 tab in Domo; for example s

ftp://modocorp.import.domo.com

)
  |
|
 Port
  |
 22
  |
|
 Directory
  |
 Enter the
 ****Username****
 value found in the
 ****How to Upload****
 tab in Domo.
  |
|
 Username
  |
 Enter the
 ****Username****
 value found in the
 ****How to Upload****
 tab in Domo.
  |
|
 Password
  |
 Leave this blank. Adobe will use the RSA public key you entered in step 1 above.
  |


 Optionally, you can also click the
 ****Scheduling Options****
 tab to specify a one-time immediate delivery or a recurring schedule.
  |
7. Once you have specified all advanced delivery options, click
 ****Send****
 .


 You are taken back to the
 ****Data Warehouse Request****
 page.
8. Click
 ****Request this Report****
 to save all your settings.

Adobe now queues the report and delivers it to Domo when ready. It may take some time for Adobe to complete the request.

