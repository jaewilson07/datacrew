

Intro
-------

freee is a cloud service for streamlining back-office operations for small businesses and other corporations and sole proprietors.


 The freee Connector allows you to import accounting information registered in your freee account, such as income and expense lists, balance sheets, profit and loss statements, journal entries, etc., into Domo.


 You connect to your freee account in the Data Center. This topic discusses the fields and menus that are specific to the freee Connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in

Adding a DataSet Using a Data Connector

.


 Prerequisites
---------------

To connect to your freee account and create a DataSet, you must have the following:

 The email address for your freee account.
* The password for the freee account.
* Creating an application in freee.

For information on how to create an application in freee, please see

freee API スタートガイド

.


 Connecting to Your

freee

Account
------------------------------------------


 This section enumerates the options in the Credentials and Details panes on the freee Connector page. The components of the other panes on this page, Scheduling, and Name & Describe Your DataSet, are universal across most connector types and are discussed in greater length in


 Adding a DataSet Using a Data Connector


 .


###
 Credentials Pane


 This pane contains fields for entering credentials to connect to your freee account. The following table describes what is needed for each field:


|
 Field
  |
 Description
  |
| --- | --- |
|
 [CONNECT] button
  |

Press the [CONNECT] button to display the freee login page

.
  |
|
 Mail address
  |

Enter the Mail address of your freee account.

|
|
 Password
  |
 Enter the password of your freee account.
  |
|
 [許可する] button
  |
 Press the [許可する] button to allow the connector to retrieve the data from your freee account.
  |


 Once you have allowed the connector collects data from freee, you can use the same account any time you go to create a new freee DataSet. You can manage connector accounts in the

*Accounts**

tab in the Data Center. For more information about this tab, see


 Managing User Accounts for Connectors


 .


###
 Details Pane


 This pane contains a primary

*Reports**

menu, along with various other menus which may or may not appear depending on the report type you select.


|
 Menu
  |
 Description
  |
| --- | --- |
|
 REPORT
  |

Select the report you want to run. The following reports are available:

  |  |
| --- | --- |
| **マスタ-勘定科目一覧**  |

Retrieve a list of account titles of the company.

|
| **マスタ-取引先一覧**  |

Retrieve a list of partners of the company.

|
| **マスタ-品目一覧**  |

Retrieve a list of items of the company.

|
| **マスタ-部門一覧**  |

Retrieve a list of sections of the company.

|
| **マスタ-メモタグ一覧**  |
 Retrieve a list of tags of the company.
  |
| **マスタ-口座一覧**  |
 Retrieve a list of accounts of the company.
  |
| **レポート-明細一覧**  |
 Retrieve an account activity statement of the company.
  |
| **レポート-取引一覧**  |
 Retrieve a list of transactions of the company.
  |
| **レポート-貸借対照表**  |
 Retrieve a balance sheet of the company.
  |
| **レポート-損益計算書**  |
 Retrieve a profit and loss statement of the company.
  |
| **レポート-仕訳帳**  |
 Retrieve a journal book of the company in a generic format.
  |
| **レポート-経費精算一覧**  |
 Retrieve a list of expense applications of the company.
  |

|
|
 COMPANY ID
  |
**Mandatory**

The ID of your company. To find your company ID, please refer to


 freee APIへGET/POSTリクエストを送信する


 .

|
|
 BASE DATE
  |
**Optional**

Specifying the base date allows you to calculate taxes at the tax rate in effect at the time you specify. Date format: YYYY-MM-DD (ex. 2019-12-01).

|
|
 UPDATE DATE
  |
**Mandatory**

Filter Data by update date.

|
|
 OFFSET
  |
**Optional item**

Since the maximum number of items that can be retrieved on API call is 3,000, specify an offset to retrieve items above 3,000. The default value is 0. For example, specifying '1' will retrieve data from the 3,001st item.

|
|
 KEYWORD
  |
**Optional item**

Search keyword. You can retrieve the result of a fuzzy search using a specified keyword for 取引先名, 正規名称, カナ名称, or data which ショートカットキー1 or 2 exactly matches with the specified keyword.

|
|
 DATE
  |
**Optional item**

Filter data by transaction date.

|
|
 ISSUE DATE
  |
**Optional item**

Filter data by issued date.

|
|
 FISCAL YEAR
  |
**Optional item**

Fiscal year (yyyy). If fiscal year is not specified, the current fiscal year is used as default.

|


###
 Other Panes

For information about the remaining sections of the Connector interface, including how to configure scheduling, retry, and update options, see

Adding a DataSet Using a Data Connector

.


 Troubleshooting
-----------------


* Make sure your authentication remains valid.
* Review the configuration to make sure that all required items have been selected.
* Review the Connector history for error messages.
* In rare cases, you may be requesting too much information and reaching API limitations or timeouts. If this is the case, you can review the history of the Connector run to see the error message and duration. If this is the case, you can reduce the number of accounts that are being pulled, choose a smaller number of metrics for the report that you are pulling, or reduce the timeframe that you are trying to pull.


