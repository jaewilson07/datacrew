

Intro
-------

A character-separated values (CSV) file stores tabular data in plain-text form. Domo provides connectors that allow you to access CSV files you have uploaded to an SFTP (Secure File Transfer Protocol) server:

 The Domo CSV SFTP Pull connector (formerly called the "CSV-SFTP" connector) allows you to access CSV files that you have uploaded to your own SFTP server.
* The Domo CSV SFTP Advanced Security connector allows you to access CSV files from a directory or a zip file that you have uploaded to your own SFTP server.
* The Domo CSV SFTP Push connector allows you to capture and process CSV files that have been uploaded to Domo's own SFTP. With this connector, Domo gives you credentials, then you push your data to Domo.

This article discusses the
 **CSV SFTP Advanced Security**
 connector. For information about the CSV SFTP Push connector, visit

CSV SFTP Push Connector

.


 The CSV SFTP Advanced Security connector is a "File" connector, meaning it retrieves files and output them to Domo. In the Data Center, you can access the connector page for this and other File connectors by clicking
 ****File****
 in the toolbar at the top of the window.


 You connect to CSV files in the Data Center. This topic discusses the fields and menus that are specific to the CSV SFTP Advanced Security connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in

Adding a DataSet Using a Data Connector

.


 Prerequisites
---------------

To authenticate to the SFTP server, you must have the following:

 SFTP Host name
* SFTP Port number
* SFTP Server Username
* Public Key


#####
**To obtain your Public Key:**


* Enter the host name, port number, and SFTP server username then click
 **Generate Key**
 .
* Copy the Public key on to the SFTP server.

You must also whitelist the IP addresses from the following article on the server:

Whitelisting IP Addresses for Connectors

.


 Connecting to CSV Files
-------------------------

This section enumerates the options in the
 ****Credentials****
 and
 ****Details****
 panes for the CSV SFTP Advanced Pull connector. The components of the other panes in this page,
 ****Scheduling****
 and
 ****Name & Describe Your DataSet****
 , are universal across most connector types and are discussed in greater length in

Adding a DataSet Using a Data Connector

.

##

Credentials Pane

This pane contains fields for entering credentials to connect to your SFTP server. The following table describes what is needed for each field:

Field

|

Description

|
| --- | --- |
|
 Host
  |
 Enter the name of the SFTP host you want to connect to. This
 *must*
 begin with sftp://. For example:

sftp://hostname

.
  |
|
 Port
  |
 Enter the port number for your SFTP server.
  |
|
 Username
  |
 Enter the username you use to authenticate to the SFTP server.
  |

After entering the host, port, and username, click the
 **Generate Key**
 button. Copy your
 **Public Key**
 to the SFTP server.


 Looking to upload a CSV file but do not have an SFTP server? Take a look at our

Workbench solution

available for download in your Domo instance.

##
 Details Pane

In this pane you choose a CSV report from the SFTP server you've connected to.


 Menu
  |
 Description
  |
| --- | --- |
|
 Directory
  |
 Select the directory that contains the file you want to access.
  |
|
 File Type
  |
 Specify file type of the selected file from the directory.
  |
|
 CSV
  |
 Select CSV if you want to access a CSV file.
  |
|
 ZIP
  |
 Select ZIP if you want to access a ZIP file.
  |
|
 How would you like to choose your CSV file?
  |
 Select how would you like to choose the file name.
  |
|
 Select file
  |
 Select the file name from the drop-down that you want to pull.
  |
|
 Enter file name
  |
 Enter the file name manually.
  |
|
 Select CSV file name
  |
 Select the CSV file from the drop-down.
  |
|
 Enter CSV file name
  |
 Enter the CSV file name manually.
  |
|
 How would you like to choose your zip file?
  |
 Select how would you like to choose the zip file.
  |
|
 Select zip file
  |
 Select a CSV file to parse from the unzip folder.
  |
|
 Enter zip file name
  |
 Enter a file name to parse from inside the zip archive.
  |
|
 How would you like to choose your subfile from the zip file?
  |
 Select how would you like to choose the subfile in the zip file.
  |
|
 Select subfile from zip file
  |
 Select a CSV file to parse from the unzipped folder.
  |
|
 Enter the subfile name from zip file
  |
 Enter a file name to parse from inside the zip archive.
  |
|
 Delimiting character
  |
 Select the delimiting character used in your file. If your delimiter is not listed, select 'Other.'
  |
|
 Specify your delimiter
  |
 Enter the character used to delimit your character separated values (CSV) text.
  |
|
 Quote Character
  |
 Select the desired quote character for parsing CSV files. Double quote is the CSV standard default quote character.
  |
|
 Custom Quote Character
  |
 Enter the desired CSV Quote character.
  |
|
 Escape Character
  |
 Select the desired escape character for parsing CSV files.
  |
|
 Custom Escape Character
  |
 Enter the desired CSV escape character.
  |


###
 Other Panes

For information about the remaining sections of the connector interface, including how to configure scheduling, retry, and update options, see

Adding a DataSet Using a Data Connector

.

