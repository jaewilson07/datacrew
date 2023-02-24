---
title: CSV SFTP Pull Connector
url: https://domo-support.domo.com/s/article/360042931894
linked_kbs:  ['[https://domo-support.domo.com/s/knowledge-base/](https://domo-support.domo.com/s/knowledge-base/)', '[https://domo-support.domo.com/s/](https://domo-support.domo.com/s/)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZammGAC](https://domo-support.domo.com/s/topic/0TO5w000000ZammGAC)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZanLGAS](https://domo-support.domo.com/s/topic/0TO5w000000ZanLGAS)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZaowGAC](https://domo-support.domo.com/s/topic/0TO5w000000ZaowGAC)', '[https://domo-support.domo.com/s/article/360042931914](https://domo-support.domo.com/s/article/360042931914)', '[https://domo-support.domo.com/s/article/360043436513](https://domo-support.domo.com/s/article/360043436513)', '[https://domo-support.domo.com/s/article/360042926274](https://domo-support.domo.com/s/article/360042926274)', '[https://domo-support.domo.com/s/article/360043630093](https://domo-support.domo.com/s/article/360043630093)', '[https://domo-support.domo.com/s/article/360042932554](https://domo-support.domo.com/s/article/360042932554)', '[https://domo-support.domo.com/s/article/360042931894](https://domo-support.domo.com/s/article/360042931894)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZaowGAC/file-connectors](https://domo-support.domo.com/s/topic/0TO5w000000ZaowGAC/file-connectors)', '[https://domo-support.domo.com/s/article/360043429933](https://domo-support.domo.com/s/article/360043429933)', '[https://domo-support.domo.com/s/article/360043429953](https://domo-support.domo.com/s/article/360043429953)', '[https://domo-support.domo.com/s/article/360042925494](https://domo-support.domo.com/s/article/360042925494)', '[https://domo-support.domo.com/s/article/360043429913](https://domo-support.domo.com/s/article/360043429913)', '[https://domo-support.domo.com/s/article/4408174643607](https://domo-support.domo.com/s/article/4408174643607)', '[https://domo-support.domo.com/s/login/](https://domo-support.domo.com/s/login/)']
article_id: 000003946
views: 2,502
created_date: 2022-10-24 21:17:00
last updated: 2022-10-24 22:40:00
---



Intro
-----


A character-separated values (CSV) file stores tabular data in plain text form. Domo provides two connectors that allow you to access CSV files you have uploaded to an SFTP (Secure File Transfer Protocol) server:


* The Domo CSV SFTP Pull connector (formerly called the "CSV-SFTP" connector) allows you to access CSV files that you have uploaded to your own SFTP server.
* The Domo CSV SFTP Push connector allows you to capture and process CSV files that have been uploaded to Domo's own SFTP. With this connector, Domo gives you credentials, then you push your data to Domo.


This article discusses the CSV SFTP Pull connector. For information about the CSV SFTP Push connector, visit [CSV SFTP Push Connector](/s/article/360042931914 "CSV SFTP Push Connector"). 


If you need to access files located on a directory, use the [CSV Advanced](/s/article/360043436513 "CSV Advanced Connector") connector. 


The CSV SFTP Pull connector is a "File" connector, meaning it retrieves files and output them to Domo. In the Data Center, you can access the connector page for this and other File connectors by clicking **File** in the toolbar at the top of the window.


You connect to CSV files in the Data Center. This topic discusses the fields and menus that are specific to the CSV connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in [Adding a DataSet Using a Data Connector](/s/article/360042926274 "Adding a DataSet Using a Data Connector").


Prerequisites
-------------


You must have an SFTP host name and a username and password to authenticate to the SFTP server. You also need to whitelist the appropriate IP addresses for your region. You can access the list of IP addresses, by region, in [Whitelisting IP Addresses for Connectors & Federated Adapters.](/s/article/360043630093)


Connecting to CSV Files
-----------------------


This section enumerates the options in the **Credentials** and **Details** panes for the CSV SFTP Pull connector. The components of the other panes in this page, **Scheduling** and **Name & Describe Your DataSet**, are universal across most connector types and are discussed in greater length in [Adding a DataSet Using a Data Connector](/s/article/360042926274 "Adding a DataSet Using a Data Connector").


### Credentials Pane


This pane contains fields for entering credentials to connect to your SFTP server. The following table describes what is needed for each field:




| Field | Description |
| --- | --- |
| SFTP Host Name | Enter the name of the SFTP host you want to connect to. This *must* begin with sftp://. For example: s<ftp://hostname>. |
| Username  | Enter the username you use to authenticate to the SFTP server.  |
| Password  | Enter the password you use to authenticate to the SFTP server.  |
| Head Start Row | Signifies the row where the header should start. |
| Data Start Row | signifies the row where the data should be fetched from the CSV file. |


Looking to upload a CSV file but do not have an SFTP server? Take a look at our [Workbench solution](/s/article/360042932554 "Box Connector") available for download in your Domo instance.


### Other Panes


For information about the remaining sections of the connector interface, including how to configure scheduling, retry, and update options, see [Adding a DataSet Using a Data Connector](/s/article/360042926274).


### FAQs


 


#### What kind of credentials do I need to power up this connector?


You need the username, password and host name of the SFTP server.


#### How does this connector handle the data?


The CSV-SFTP connector pulls the data from customer's SFTP server into Domo.


#### How often can the data be updated?


Data will update every hour.


#### Are there any API limits that I need to be aware of?


No

