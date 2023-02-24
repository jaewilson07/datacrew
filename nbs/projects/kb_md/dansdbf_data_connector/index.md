---
title: DANSDBF Data Connector
url: https://domo-support.domo.com/s/article/000005106
linked_kbs:  ['[https://domo-support.domo.com/s/knowledge-base/](https://domo-support.domo.com/s/knowledge-base/)', '[https://domo-support.domo.com/s/](https://domo-support.domo.com/s/)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZammGAC](https://domo-support.domo.com/s/topic/0TO5w000000ZammGAC)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZanLGAS](https://domo-support.domo.com/s/topic/0TO5w000000ZanLGAS)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS](https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS)', '[https://domo-support.domo.com/s/article/360042926274](https://domo-support.domo.com/s/article/360042926274)', '[https://domo-support.domo.com/s/article/360042926054](https://domo-support.domo.com/s/article/360042926054)', '[https://domo-support.domo.com/s/article/000005106](https://domo-support.domo.com/s/article/000005106)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS/api-connectors](https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS/api-connectors)', '[https://domo-support.domo.com/s/article/360043429933](https://domo-support.domo.com/s/article/360043429933)', '[https://domo-support.domo.com/s/article/360043429953](https://domo-support.domo.com/s/article/360043429953)', '[https://domo-support.domo.com/s/article/360042925494](https://domo-support.domo.com/s/article/360042925494)', '[https://domo-support.domo.com/s/article/360043429913](https://domo-support.domo.com/s/article/360043429913)', '[https://domo-support.domo.com/s/article/4408174643607](https://domo-support.domo.com/s/article/4408174643607)', '[https://domo-support.domo.com/s/login/](https://domo-support.domo.com/s/login/)']
article_id: 000005106
views: 500
created_date: 2023-01-30 07:49:00
last updated: 2023-01-30 07:50:00
---



Intro
-----


DANS DBF Library is a Java library for reading and writing xBase database files. xBase is the name commonly used for dBase and its dialects. The central file in these databases is the DBF file or DataBase File, hence the name of this library.  To learn more about DANSDBF library, refer to [DANS DBF Library](https://dans-dbf-lib.sourceforge.net/).


This topic discusses the fields and menus that are specific to the DANSDBF connector user interface. For general information about adding DataSets, setting update schedules, and editing DataSet information, see [Adding a DataSet Using a Data Connector](/s/article/360042926274 "Adding a DataSet Using a Data Connector").




|  |  |
| --- | --- |
| **Primary Use Cases** | This connector is appropriate for retrieving reading and writing xBase database files. |
| **Primary Metrics** | Returns information for specific types such as Character, Numbers, Logicals, Dates, and Memo. |
| **Ease of Use (on a 1-to-10 scale with 1 being easiest)** | 6 |


Prerequisites
-------------


To connect to your DANSDBF account and create a DataSet, you must have the following:


* The username and password.
* SFTP host name for your DBF File.


Connecting to Your DANSDBF Account
----------------------------------


This section enumerates the options in the **Credentials** and **Details** panes in the DANSDBF Connector page. The components of the other panes in this page, **Scheduling** and **Name & Describe Your DataSet**, are universal across most connector types and are discussed in greater length in [Adding a DataSet Using a Data Connector](/s/article/360042926274 "Adding a DataSet Using a Data Connector").


### Credentials Pane


This pane contains three fields where you enter the user name, password, and the SFTP host name of your DBF file. 


After you have entered valid credentials, you can use the same account in Domo any time you create a DANS DBF DataSet. You can manage connector accounts in the **Accounts** tab in the Data Center. For more information about this tab, see [Managing User Accounts for Connectors](/s/article/360042926054 "Managing User Accounts for Connectors").




| Field | Description |
| --- | --- |
| Username | Enter the username. |
| Password | Enter the password. |
| Host | Enter the SFTP host name for your DBF file. |


### Details Pane


This pane contains one field where you enter the path to your DBF file.   
  
For example, if the file is hosted on an SFTP server at /home/test, provide the path as /home/test/\*.dbf.


### Other Panes


For information about the remaining sections of the connector interface, including how to configure scheduling, retry, and update options, see [Adding a DataSet Using a Data Connector](/s/article/360042926274).


### FAQs


#### When should I use this connector?


You can use the DANS DBF connector to read and write xBase database files.


#### How can I open a DBF file?


You can open a DBF file by creating a Table object configuring it with an existing DBF file.


#### What parameters do you need to check before opening a DBF file?


1. Length of record must be > 1 and < max length. (max length = 4000 B in dBASE III and IV, can be 32KB in other systems).
2. The number of records must be >= 0.
3. The .DBF file must have at least one field.
4. The number of fields must be <= the maximum allowable number of fields.
5. File size reported by the operating system must match the logical file size. Logical file size = (Length of header + (Number of records \* Length of each record)).


What kind of credentials do I need to access this connector?


You need to obtain the username and the password and enter the SFTP host name for your DBF File.  
 

