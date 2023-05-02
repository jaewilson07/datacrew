

Intro
-------

With the perspective of improvising their patients’ lives and dental health, OrthoFi combines technology with the medical expertise to revolutionize the way patients and their families pay for treatments, making it affordable for everyone. OrthoFi is dedicated to ensuring that the oral and overall health benefits is available to everyone in the hopes of better health outcomes.


 The Domo OrthoFi Connector provides data on a wide range of factors such as, business health, medical charges, patients details, practice staff details, practice location data, patient’s insurance details, and more. It helps you to gather the health information datasets for various categories. Once you have set up this connector, you can easily combine the latest business and health data with information from across your organization.


 The OrthoFi Connector is a "Cloud App" Connector, meaning it retrieves data stored in the cloud. In the Data Center, you can access the Connector page for this and other Cloud App Connectors by clicking
 **Cloud App**
 in the toolbar at the top of the window.


 You connect to your OrthoFi account in the Data Center. This topic discusses the fields and menus that are specific to theOrthoFi Connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in

Adding a DataSet Using a Data Connector

.


 Prerequisites
---------------

To connect to your OrthoFi account and create a DataSet, you must have the client ID and client secret associated with your OrthoFi account.


 Connecting to YourOrthoFi Account
-----------------------------------

This section enumerates the options in the Credentials and Details panes in the OrthoFi Connector page. The components of the other panes in this page,
 **Scheduling**
 and
 **Name & Describe Your DataSet**
 , are universal across most connector types and are discussed in greater length in

Adding a DataSet Using a Data Connector

.

##
 Credentials Pane

This pane contains fields for entering credentials to connect to your OrthoFi account. The following table describes what is needed for each field:


 Field
  |
 Description
  |
| --- | --- |
|
 Client ID
  |
 Enter the client ID associated with your OrthoFi account.
  |
|
 Client Secret
  |
 Enter the client secret associated with your OrthoFi account.
  |

Once you have entered valid OrthoFi credentials, you can use the same account any time you go to create a new OrthoFi DataSet. You can manage Connector accounts in the
 **Accounts**
 tab in the Data Center. For more information about this tab, see

Managing User Accounts for Connectors

.

##
 Details Pane

This pane contains a primary
 **Reports**
 menu, along with various other menus which may or may not appear depending on the report type you select.


 Menu
  |
 Description
  |
| --- | --- |
|
 Report
  |
 Select the OrthoFi report you want to run. The following reports are available:


|  |  |
| --- | --- |
|
 Business Health
  |
 Retrieves business health details.
  |
|
 Business Health Metrics
  |
 Retrieves Median OrthoFi metrics of all practice locations as well as mean metrics of the top 20 (production dollar) practice locations.
  |
|
 Charges
  |
 Retrieves the charges details.
  |
|
 Collection Details
  |
 Retrieves collections details.
  |
|
 Configuration Data
  |
 Retrieves practice location configuration data.
  |
|
 Contracts
  |
 Retrieves contracts details.
  |
|
 Insurance Accounts Receivable
  |
 Retrieves insurance accounts receivable details.
  |
|
 Insurance Submissions
  |
 Retrieves insurance submissions details.
  |
|
 Patients
  |
 Retrieves the patient details.
  |
|
 Practice Locations
  |
 Retrieves practice locations details.
  |
|
 Practice Staff
  |
 Retrieves practice staff records.
  |
|
 Reference Data
  |
 Retrieves reference data.
  |
|
 Referrals
  |
 Retrieves the referral details.
  |

|
|
 Practice Location IDs
  |
 Select the practice location IDs.
  |
|
 As of Date
  |
 Select the exact date that you want to fetch the Insurance Accounts Receivable report for.
  |


###
 Other Panes

For information about the remaining sections of the Connector interface, including how to configure scheduling, retry, and update options, see

Adding a DataSet Using a Data Connector

.

