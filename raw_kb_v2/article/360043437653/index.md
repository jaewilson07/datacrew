

Overview
----------

To connect to SAP BW data in Domo, you must establish a DOMO-SAP data link. To do this, you will go through all of the following steps:

. Establish an RFC connection between DOMO and BW
2. Create a Logical File
3. Find the Data Structure of your BW Object
4. Build your APD

Step 1: Establishing an RFC connection between Domo and BW
--------------------------------------------------------------


1. In mySAP ERP, run Transaction

SM59

.
2. Select
 **HTTP Connections to External Server**
 and click
 **Create**
 .
3. Fill in the following fields:

* **RFC Destination**
	* **Description 1**
	* **Target Host**
	* **Service No.**
	* **Path Prefix**
4. Click the
 **Logon & Security**
 tab.
5. Select the
 **Basic Authentication**
 radio button.
6. Scroll down and enter a username and password.
7. Click
 **Save**
 .

Your RFC connection is now established.


 Step 2: Creating a Logical File
---------------------------------


1. In mySAP ERP, run Transaction

FILE

.
2. Select
 **New Entries**
 .
3. Fill in the fields as follows:


|  |  |
| --- | --- |
|
 Logical file
  |

Z\_DOMO\_DROP\_FILE

|
|
 Name
  |

Domo drop

|
|
 Physical file
  |

DOMO TEST<YEAR><MONTH><DATE>\_<HOUR><MINUTE><SECOND>.csv

|
|
 Data format
  |

ASC

|
|
 Applicat.area
  |

FI

|
|
 Logical path
  |

Z\_DOMO\_DROP

|
4. Click
 **Save**
 .
5. Enter your transport information.

Step 3: Finding the Data Structure of your BW Object
------------------------------------------------------


1. In Data Warehousing Workbench, run transaction

RSA1

.
2. Select
 **BI Content**
 .
3. Navigate to the desired BW object and double-click it.
4. Click
 **Key Figures**
 .

The data structure of the object opens for you to view.


 Step 4: Building Your APD
---------------------------


1. In Data Warehousing Workbench, run transaction

RSA1

.
2. Open the Analysis Process Designer (APD).
3. Select
 **General**
 then click
 **Create**
 .
4. Select
 **General Application**
 .
5. Enter a description in the
 **Description**
 field.
6. Select your Data Source (in this case an InfoProvider).
7. Name the Data Source.
8. Select an InfoProvider.


 You can also limit the fields sent.
9. Select
 **Write Data to File**
 .
10. In the
 **Data Target: File**
 dialog, do the following:

1. Enter a description for the file in the
	 **Description**
	 field.
	2. Select the
	 **Application Server**
	 radio button.
	3. Check the box for
	 **Logical File Name**
	 .
	4. Enter your new logical file name in the
	 **File**
	 field.
	5. Click the green check box.
11. Click and drag to connect the nodes.
12. Save your changes.
13. Click the
 **Activate**
 icon.


