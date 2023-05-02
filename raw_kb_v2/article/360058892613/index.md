

Intro
-------

HL7 is an EDI standard for healthcare applications and providers for the exchange, integration, sharing, and retrieval of electronic health information. Health Level Seven or HL7 refers to a set of international standards for transfer of clinical and administrative data between software applications used by various healthcare providers. Use Domo's HL7 Writeback connector to convert the DOMO dataset data into an HL7 message. Once the HL7 messages are constructed for all the items in the dataset, the connector will create a file that will get SFTP'ed to a specific location.


 You export Domo data to HL7 in the Data Center. This topic discusses the fields and menus that are specific to the HL7 Writeback connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in

Adding a DataSet Using a Data Connector

.

*Note:**
 The owner of a writeback dataset must also be an owner or co-owner of the input dataset.

Prerequisites
---------------

To configure this connector and create a DataSet, you must have the following:

 The hostname used to connect to SFTP server
* The port number used to connect to SFTP server
* The username and password for the SFTP server

Configuring the Connection
----------------------------


 This section enumerates the options in the
 **Credentials**
 and
 **Details**
 panes in the

HL7 Writeback

Connector page. The components of the other panes in this page,
 **Scheduling**
 and
 **Name & Describe Your DataSet**
 , are universal across most connector types and are discussed in greater length in

Adding a DataSet Using a Data Connector

.


###

Credentials Pane


 This pane contains fields for entering credentials to connect to your

HL7 dataset

. The following table describes what is needed for each field:


|

Field

|

Description

|
| --- | --- |
|
 Hostname
  |
 Enter the hostname used to connect to SFTP server.
  |
|
 Port
  |
 Enter the port number used to connect to SFTP server.
  |
|
 Username
  |
 Enter the username of the SFTP server.
  |
|
 Password
  |
 Enter the password of the SFTP server.
  |
|
 SSH Private Key
  |
 Enter the SSH private key (DES or RSA), in PEM format.
  |
|
 Passphrase
  |
 Enter the SFTP server passphrase.
  |

You can use the same account any time you go to set up a new Domo-

HL7

connection.

You can manage connector accounts in the
 **Accounts**
 tab in the Data Center. For more information about this tab, see

Managing User Accounts for Connectors

.


###
 Details Pane

This pane contains a number of fields for specifying your data and indicating where it's going.


 Menu
  |
 Description
  |
| --- | --- |
|
 Path
  |
 Enter the SFTP file location.
  |
|
 Select Filename
  |
 Select whether you would like to use the input dataset guide or enter the output filename manually.
  |
|
 Filename
  |
 Enter the output file name.
  |


####
**Form of the Input Dataset**

The HL7 Writeback connector maps columns to fields in an HL7 message. This version of the connector supports a hard coded mapping between columns and fields. Thus, you must use the correct column names to use this connector. Here's the current list of columns with the quoted string (the exact column name you need to use).


 Field Name
  |
 Column Name
  |
| --- | --- |
|
 Accession Number
  |
 "AccessionNumber"
  |
|
 Lab Result
  |
 "LabResult"
  |
|
 Lab Test Date
  |
 "LabTestDate"
  |
|
 NTE Comment 1
  |
 "NTE Comment 1"
  |
|
 NTE Comment 2
  |
 "NTE Comment 2"
  |
|
 NTE Comment 3
  |
 "NTE Comment 3"
  |
|
 Ordering Provider Given Name
  |
 "OrderingProviderGivenName"
  |
|
 Ordering Provider Last Name
  |
 "OrderingProviderLastName"
  |
|
 Ordering Provider Phone Number
  |
 "OrderingProviderPhoneNumber"
  |
|
 Ordering Provider Title
  |
 "OrderingProviderTitle"
  |
|
 Ordering Provider Facility
  |
 "OrderingProviderFacility"
  |
|
 Ordering Provider Street
  |
 "OrderingProviderStreet"
  |
|
 Ordering Provider City
  |
 "OrderingProviderCity"
  |
|
 Ordering Provider State
  |
 "OrderingProviderState"
  |
|
 Ordering Provider Zip Code
  |
 "OrderingProviderZip"
  |
|
 Ordering Facility Street
  |
 "OrderingFacilityStreet";
  |
|
 Ordering Facility State
  |
 "OrderingFacilityState";
  |
|
 Ordering Facility City
  |
 "OrderingFacilityCity";
  |
|
 Ordering Facility Zip Code
  |
 "OrderingFacilityZip";
  |
|
 Patient ID
  |
 "PatientId"
  |
|
 Patient Date of Birth
  |
 "PatientDOB"
  |
|
 Patient First Name
  |
 "PatientFirstName"
  |
|
 Patient Last Name
  |
 "PatientLastName"
  |
|
 Patient Sex Code
  |
 "PatientSexCd"
  |
|
 Patient Phone Number
  |
 "PatientPhone"
  |
|
 Patient Address Street
  |
 "PatientAddressStreet";
  |
|
 Patient Address City
  |
 "PatientAddressCity"
  |
|
 Patient Address State
  |
 "PatientAddressState"
  |
|
 Patient Address Zip Code
  |
 "PatientAddressZip"
  |
|
 Specimen Collection Date
  |
 "SpecimenCollectionDate"
  |
|
 Specimen Source Code
  |
 "SpecimenSourceCd"
  |
|
 Specimen Identifier
  |
 "SpecifmenIdentifier"
  |
|
 Specimen Code
  |
 "SpecimenCode"
  |
|
 Performing Facility
  |
 "PerformingFacility"
  |
|
 Performing Facility Street
  |
 "PerformingFacilityStreet"
  |
|
 Performing Facility City
  |
 "PerformingFacilityCity"
  |
|
 Performing Facility State
  |
 "PerformingFacilityState"
  |
|
 Performing Facility Zip Code
  |
 "PerformingFacilityZip"
  |
|
 Ordered Test Name
  |
 "OrderedTestName"
  |
|
 Ordered Test Identifier
  |
 "OrderedTestIdentifier"
  |
|
 Ordered Test Code
  |
 "OrderedTestCode"
  |
|
 Sending Facility
  |
 "SendingFacility"
  |
|
 Sending Facility ID
  |
 "SendingFacilityId"
  |
|
 Sending Facility Code
  |
 "SendingFacilityCode"
  |


###
 Other Panes

For information about the remaining sections of the connector interface, including how to configure scheduling, retry, and update options, see

Adding a DataSet Using a Data Connector

.

