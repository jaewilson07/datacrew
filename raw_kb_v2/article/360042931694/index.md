

Intro
-------

Apache Hive is a data warehouse infrastructure built to provide data summarization, query, and analysis. You can use the Hive Connector to query your Hive databases and pull data directly into Domo on a regular basis. With your data in Domo, you'll be ready to leverage powerful visualizations and make your data more meaningful. To learn more about Hive APIs, visit their page (

https://cwiki.apache.org/confluence/...+APIs+Overview

).


 You connect to your Hive account in the Data Center. This topic discusses the fields and menus that are specific to the Hive connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in

Adding a DataSet Using a Data Connector

.


 Prerequisites
---------------

To connect to your Hive account and create a DataSet, you must have the following:

 The hostname or IP address of your Hivedatabase server, e.g.


 db.company.com
* Your Hive database name
* Your Hive database username
* Your Hive database password
* The port number for your Hive server


###
 Whitelisting

Before you can connect to a Hive database, you must also whitelist a number of IP addresses on your database server on the port you want to connect to. For the full list of IP addresses, see

Whitelisting IP Addresses for Connectors

.


 Connecting to Your Hive Account
---------------------------------


 This section enumerates the options in the
 **Credentials**
 and
 **Details**
 panes in the Hive Connector page. The components of the other panes in this page,
 **Scheduling**
 and
 **Name & Describe Your DataSet**
 , are universal across most connector types and are discussed in greater length in

Adding a DataSet Using a Data Connector

.


###

Credentials Pane


 This pane contains fields for entering credentials to connect to your Hive account. The following table describes what is needed for each field:


|

Field

|

Description

|
| --- | --- |
|
 Host
  |
 Enter the hostname or IP address of your Hivedatabase server, e.g.

db.company.com.

|
|
 Database Name
  |
 Enter your Hive database name.
  |
|
 Username
  |
 Enter your Hive database username.
  |
|
 Password
  |
 Enter your Hive database password.
  |
|
 Database Port
  |
 Enter your the port number for your Hive database.
  |


 Once you have entered valid Hive credentials, you can use the same account any time you go to create a new Hive DataSet. You can manage connector accounts in the
 **Accounts**
 tab in the Data Center. For more information about this tab, see

Managing User Accounts for Connectors

.


###
 Details Pane

This pane contains fields for configuring your HiveQL query.


 Menu
  |
 Description
  |
| --- | --- |
|
 Query
  |
 Enter the HiveQL query you want to use to retrieve data from your database. For more information about HiveQL, see

https://docs.treasuredata.com/articles/hive

.


 |
|
 Fetch Size (Optional)
  |
 Enter the fetch size for memory performance. If you leave this blank, a default value is used. If an "Out of Memory" error appears, try decreasing the fetch size.
  |


###
 Other Panes

For information about the remaining sections of the connector interface, including how to configure scheduling, retry, and update options, see

Adding a DataSet Using a Data Connector

.


 Troubleshooting
-----------------


 We have encountered several instances of users trying to use the Hive connector to connect their Kerberos-enabled Hive clusters to Domo. The Hive Connector does not natively address this use case, but there are several options that you can still use to connect their data. We’ll outline the steps for each below:


* **Use a Localized Hive Module.**
 This allows you to preserve the maximum security potential of your connection. The Hive connector is built to accommodate this setup, and will be the most simple/secure option.
* **Use a Hive-Kerberos PAM Module.**
 A quick alternative to using Kerberos directly for authentication is using PAM authentication. PAM authentication is in Hive from HDP2.2 through current versions. It uses the OS users and passwords of the host running the hiveserver2 for authentication.

The following example shows you how to set up your PAM module:

1. Install JPam by doing the following:


		1. Download the JPam library and unzip on the Hive host:


		 JPam Libraries
		2. Copy the

	 .so

	 file into the library path of the Hive server.


		 An easy way to find this is to use

	`ps -ef | grep hiveserver2`

	 and find the

	 -Djava.library.path

	 variable.


		 For example, copy the .

	 so

	 file to the following folder:

	*/usr/hdp/2.2.4.2-2/hadoop/lib/native/Linux-amd64-64*
	2. Make the

 shadow

 file accessible to the Hive user.


*/etc/shadow*
 needs to be readable by Hive:

chgrp hive /etc/shadow


 chmod 550 /etc/shadow*

