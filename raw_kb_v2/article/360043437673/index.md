

Intro
-------

SAP has many systems. This article addresses connecting to data from the SAP ECC (ERP Central Component) tool. This connector consists of several modules, including utilities for marketing and sales, field service, product design and development, production and inventory control, human resources, finance and accounting. SAP ERP collects and combines data from the separate modules to provide the company or organization with enterprise resource planning.

  |  |
| --- | --- |
|
**Primary Use Cases**
 | * Just in time inventory tracking
* Finance
* Production quality and efficiency
* Profit and loss tracking
* Availability of critical equipment
 |
|
**Primary Metrics**
 | * Purchase orders
* Purchase requests
* Income statement
* Balance sheet
* General ledger
* Sales orders
* Accounts receivable
* Accounts payable
* Materials
* Manufacturing
 |
|
**Primary Company Roles**
 | * CEO
* CFO
* HR
* Sales Manager
 |
|
**Average Implementation Time**
 |
 80 hours
  |
|
**Ease of Implementation (on a 1-to-10 scale with 1 being easiest)**
 |
 10
  |

Architecture
--------------

The architecture of this connection can be summed up as follows:


1. A Service-Oriented Architecture (SOA) is created in ECC and published for subscription (Publish & Subscribe).
2. The service generates a Web Service Definition Language (WSDL) XML file which defines the flow of data.
3. Domo then calls the service through the WSDL and requests data as defined by the WSDL.
4. ECC then interrogates the call and sends data through the SOA packet.
5. This is all controlled and defined in SAP ECC and Netweaver.

Connection Summary
--------------------

To connect to SAP data in Domo, you must establish a DOMO-SAP data link. To do this, you will go through all of the following steps. If a step contains a hyperlink, you can click on that link to read about this step in more detail.

. Do all of the following in your development system:

1. Establish an RFC user for DOMO
	2. Create the ZZDOMO Function Group
	3. Find your ICF server path
	4. Load your first DOMO function module
	5. Create an Enterprise Service
	6. Publish your new service using SAP SOA
	7. Send an email to DOMO with:

	* Server Path
		* DOMO RFC username and password
	8. Test your first web service with a DOMO representative
	9. Load all additional web services
	10. Test all services in the Development Environment
2. Transport all of the above to a Quality Assurance System and test thoroughly.
3. Transport all of the above to a Production, or BI System.

Connection Steps
------------------


###


 Step 1: Establish an RFC user for Domo


 To enable communication between the SAP ERP back-end system and DOMO, you must create an RFC user in the SAP ERP system.

*To establish an RFC user for Domo,**

. Log onto the SAP ECC system.
2. Access the activity using one of the following navigation options:


	1. Call transaction code

 SU01.
	2. In the SAP ERP GUI, choose
	 **Tools > Administration > User Maintenance > Users**
	 .
3. In the User field, enter

ERP2DOMO

.
4. Select
 **Create**
 (F8).
5. On the
 **Maintain User**
 screen, enter information as shown here:

1. On the
	 **Address**
	 tab page, enter the following:

	* **Last Name**
		 :

	 ERP2DOMO
		* **Function**
		 : <Enter your function>
	2. On the
	 **Logon Data**
	 tab page, enter the following:

	* **User Type:**

	 System
		* **Password:**
		 <Enter your password>
	3. On the
	 **Defaults**
	 tab page, enter the following:

	* **Logon Language**
		 :

	 EN
	4. On the
	 **Profiles**
	 tab page, enter the following:

	* **Profile**
		 :

	 SAP\_ALL

	 and

	 SAP\_NEW
	5. Save your entries (Ctrl + S).

*Note:**


 The


 ERP2DOMO


 user has the profiles

SAP\_ALL

and

SAP\_NEW

assigned, which gives him full authorization rights. If this authorization is not applicable to your project, you can restrict the rights of this user according to SAP Note


 0338537


 .

Back to top


###
 Step 2: Create the ZZDomo Function Group

After establishing your RFC user in the SAP ERP system, you must next create the ZZDomo function group.


**To create the ZZDomo function group in the SAP ERP system,**

. Run transaction SE80 (

/nSE80

).
2. Select
 **Repository Browser**
 .
3. Select
 **Function Group**
 in the menu.
4. Enter

ZZDOMO

in the empty field then hit Enter.
5. Click
 **Yes**
 .
6. In the
 **Short text**
 field, enter

Domo Function Group

, then hit Enter.
7. Select your Business Intelligence package then click
 **Save**
 . (If you don't have a B.I. package, use a package starting with "z").
8. Enter or select your CTS request number for your Domo development, then click
 **Save**
 .


 Back to top


###
 Step 3: Find Your ICF Server Path

*To find your ICF server path,**

. Run transaction SICF (

/nSICF

).
2. Click the
 **Execute**
 icon.
3. Navigate to path

default\_host > sap > bc > gui > sap > its > webgui > SE61-DISPTXT

.
4. Right-click and select
 **Test Service**
 .

If the webgui service does not contain the SE61-DISPTXT sub-element, right-click on the webgui service and select
 **Test Service**
 .
5. Copy the IE path and email it to Domo.


 Back to top


###
 Step 4: Load Your First Domo Function Module

Use the following set of steps to load all Domo function modules. You can find specifications for all available function modules in

Function Module Specifications

.

. In your development client, run transaction SE37 (/

nSE37

).
2. Input the provided function module name, then click
 **Create**
 .


 In this example, the name is

Z\_DOMO\_PP

.
3. Enter

ZZDOMO

in the
 **Function Group**
 field.
4. In the
 **Short text**
 field, describe your function module.
5. Click
 **Save**
 .
6. In the
 **Import**
 tab, enter the input fields from your load sheet.


 Make sure to check the boxes for
 **Optional**
 and
 **Pass Value**
 .
7. In the
 **Attributes**
 tab, select
 **Remote Enabled**
**Module**
 .
8. In the
 **Tables**
 tab, enter your return tables from your load sheet.
9. Copy the code section from your load sheet.
10. Paste the copied code into the
 **Source code**
 tab.
11. Click the
 **Check**
 icon.
12. Click the
 **Save**
 icon.
13. Click the
 **Activate**
 icon.
14. Click the green checkmark at the bottom of the screen.

Congratulations, you have created a function module!

Back to top


###
 Step 5: Create an Enterprise Service

*To create an enterprise service,**

. Run transaction SE80 (

/nSE80

).
2. Under
 **Function Group**
 , enter ZDOMO then click on the dropdown to open the list of function modules.
3. Right-click on your new function module and select
 **Create > Enterprise Service**
 .
4. Name the new service and give it a description, then click
 **Continue**
 .
5. Click
 **Continue**
 again.
6. Select a security profile, then click
 **Continue**
 .
7. Select your Package and Transport Request, then click
 **Continue**
 .
8. Click
 **Complete**
 .
9. Click
 **Activate**
 .
10. Click
 **Continue**
 .


 Back to top


###
 Step 6: Publish Your New Service Using SAP SOA

*To publish your new enterprise service,**

. Run transaction SOAMANAGER (/

nSOAMANAGER

).


 This launches the web-based SOA Manager.
2. Click
 **Log On**
 .
3. Log in using your ECC credentials.
4. Select
 **Service Administration**
 .
5. Select
 **Single Service Configuration**
 .
6. In the
 **Search Pattern**
 field, enter the name of the new enterprise service, then click
 **Go**
 .
7. Select your service, then click
 **Apply Selection**
 .
8. Open the
 **Configuration**
 tab.
9. Click
 **Create Endpoint**
 .
10. In the
 **Service Information**
 dialog, enter the following:

* The service name (match the name of the service)
	* A description
	* A binding name
11. Click
 **Apply Settings**
 .
12. Check the box for
 **User ID/Password**
 .
13. Scroll up and click
 **Save**
 .
14. Open the
 **Overview**
 tab.
15. Click
 **Display selected Binding's or Service's WSDL URL**
 .
16. Copy the URL and email it to Domo.


 Back to top


###
 Next Steps

Once you have completed all of the above steps, you have only a few tasks remaining. These tasks are as follows:

. 1. Send an email to DOMO with:

	* Server Path
		* DOMO RFC username and password
	2. Test your first web service with a DOMO representative
	3. Load all additional web services
	4. Test all services in the Development Environment
2. Transport all of the above to a Quality Assurance System and test thoroughly.
3. Transport all of the above to a Production, or BI System.

Function Module Specifications
----------------------------------

Use the following table to locate specification sheets in

.docx

format for each function module (as required in

Step 4

above).


 Data Type
  |
 Function Module
  |
 Tables
  |
 Link to Spec Sheet
  |
| --- | --- | --- | --- |
|
 Costs
  |
 Z\_DOMO\_COST
  |
 COBK, COEP
  |

Cost Details Specification.docx

|
|
 Cost Element Group
  |
 Z\_DOMO\_COST\_KAH3
  |
 KAH3
  |

NOT YET AVAILABLE

|
|
 General Ledger:Actual Line Items
  |
 Z\_DOMO\_FAGLFLEXA\_SO
  |
 FAGLFLEXA, BKPF, SKA1
  |

FAGLFLEXA Specification.docx

|
|
 Cost Center Master
  |
 Z\_DOMO\_CSKS
  |
 CSKS
  |

NOT YET AVAILABLE

|
|
 General Ledger Totals
  |
 Z\_DOMO\_FAGLFLEXT
  |
 FAGLFLEXT
  |

FAGLFLEXT Specification.docx

|
|

General Ledger Details

|
 Z\_DOMO\_FAGLFLEXT\_COST
  |
 CEPC, CEPCT, SKB1, SKAT, TFKBT
  |

NOT YET AVAILABLE

|
|

Financial Documents

|
 Z\_DOMO\_FI\_DOC
  |
 BKPF, BSAD, BSAK, BSID, BSIK, BSEG
  |

FI Documents Specification.docx

|
|

Financial Documents GL Detail

|
 Z\_DOMO\_FI\_DOC\_GL
  |
 BKPF, BSIS, BSAS
  |

FI GL Documents Specification.docx

|
|

Account Master

|
 Z\_DOMO\_GLT0
  |
 GLT0
  |

GLT0 Specification.docx

|
|
 Inventory
  |
 Z\_DOMO\_INVENTORY
  |
 MARD, MARC
  |

Inventory Specification.docx

|
|
 Profitability Analysis
  |
 Z\_DOMO\_KE30
  |
 CE31010
  |

NOT YET AVAILABLE

|
|
 Purchase Orders
  |
 Z\_DOMO\_PO
  |
 EKKO, EKPO
  |

Purchase Order Specification.docx

|
|
 Sales Billing
  |
 Z\_DOMO\_SALES\_BILLING
  |
 VBRK, VBRP, VBPA, MVKE
  |

Sales Billing Specification.docx

|
|
 Sales Documents
  |
 Z\_DOMO\_SDOC
  |
 VBFA
  |

Sales Document Specification.docx

|
|
 Sales Orders
  |
 Z\_DOMO\_SO
  |
 VBAK, VBAP, VBEP, VBKD
  |

Sales Orders Specification.docx

|
|
 Address Master
  |
 Z\_DOMO\_ADR
  |
 ADR6, ADRC
  |

Address Specification.docx

|
|
 Cross Application Time Card
  |
 Z\_DOMO\_CATS
  |
 CATSDB
  |

Cross Application Time Card Specification.docx

|
|
 Customer Master
  |
 Z\_DOMO\_CM
  |
 KNA1, KNVP, KNB1, KNKK
  |

Customer Master Specification.docx

|
|
 Cost Center Master
  |
 Z\_DOMO\_COA
  |
 SKA1
  |

NOT YET AVAILABLE

|
|
 Cost Totals
  |
 Z\_DOMO\_COST\_TOTAL
  |
 COSS, COSP
  |

Cost Totals Specification.docx

|
|
 Delivery
  |
 Z\_DOMO\_DELIVERY
  |
 LIKP, LIPS
  |

Delivery Specification.docx

|
|
 Expense Details
  |
 Z\_DOMO\_EXPENSE\_COE
  |
 COVP
  |

Expense COE Specification.docx

|
|
 Expense by Vendor or Customer
  |
 Z\_DOMO\_EXPENSE\_PCA
  |
 GLPCA
  |

Expense PCA Specification.docx

|
|
 Expense PCT Details
  |
 Z\_DOMO\_EXPENSE\_PCT
  |
 GLPCT
  |

Expense PCT Specification.docx

|
|
 Materials Documents
  |
 Z\_DOMO\_MAT\_DOC
  |
 MKPF, MSEG
  |

Material Documents Specification.docx

|
|
 Material Master
  |
 Z\_DOMO\_MM
  |
 MARA, MVKE, TVM5T, MARM, MBEW, T001W, MAKT
  |

Material Master Specification.docx

|
|
 Product Hierarchy
  |
 Z\_DOMO\_PH
  |
 T179T
  |

Product Hierarchy Specification.docx

|
|
 Purchase Order History
  |
 Z\_DOMO\_PO\_HIST
  |
 EKBE
  |

Purchase Order History Specification.docx

|
|
 Pricing
  |
 Z\_DOMO\_PRICING
  |
 KONH, KONP, KONV
  |

Pricing Specification.docx

|
|
 Reservations
  |
 Z\_DOMO\_RESB
  |
 RKPF, RESB
  |

Reservations Specification.docx

|
|
 Messages
  |
 Z\_DOMO\_T001
  |
 T001, T001S
  |

Messages Specification.docx

|
|
 Vendor Master
  |
 Z\_DOMO\_VM
  |
 LFA1, LFB1
  |

Vendor Master Specification.docx

|
|
 Account Master joined with Chart of Accounts
  |
 Z\_DOMO\_COA\_GL
  |
 COA\_GL
  |

NOT YET AVAILABLE

|
|
 Relationships in GOS
  |
 Z\_DOMO\_SRGBTBREL
  |
 SRGBTBREL
  |

NOT YET AVAILABLE

|
|
 Sales Status
  |
 Z\_DOMO\_SALES\_STATUS
  |
 VBUK, VBUP
  |

NOT YET AVAILABLE

|

Troubleshooting
-----------------


* Test the connection to the web service using SoapUI.
* Run the function module locally in the SAP environment.


