

Intro
-------

The NetSuite Writeback connector uses a Domo DataSet to create records in your NetSuite account. Each row encapsulates a single NetSuite record (except when using Sublist Grouping, which is discussed later). The connector decides which values correspond to each field in NetSuite through a feature called Field Mapping (found under the
 **Configuration Field Mapping**
 tab). In this feature, you choose a DataSet column for each NetSuite field. The mapping is divided between required and optional fields. All required fields need a specified column to create your Writeback DataSet. Note that some records can have empty required fields and still successfully create the record. For optional fields, first use the searchable dropdown to choose which NetSuite field you wish for this row. Then, choose which column you wish to correspond to that field. Use the +/- buttons to add more optional rows.


 Some NetSuite records (such as "Sales Order" and "Journal Entry") require sublists in addition to fields. A sublist is essentially a line item for a record. For example, a commonly used sublist is the “Item” sublist for a sales order. Because the item requires many different additional values (e.g. Tax Code, Quantity, Price, etc.), it cannot be stored only as a field. The connector decides how to input sublists using a feature called Sublist Field Mapping (found under the
 **Configuration Sublist Mapping**
 tab). In this feature, you can choose which sublists you want in your record. Once you have chosen one, a tab will appear similar to the
 **Configuration Field Mapping**
 tab, containing the required fields and the optional fields for that sublist.

*Note:**
 The owner of a writeback dataset must also be an owner or co-owner of the input dataset.


###
 Multiple sublist entries

Some records may require multiple sublist entries to execute successfully. The NetSuite Writeback connector has two ways of doing this: (1) the plus and minus buttons in the top right corner of the
 **Sublist Field Mapping**
 tab and (2) through sublist grouping.

###
 Plus and minus buttons (+/-)

The plus and minus buttons should be used if the values you want to enter into the different sublists are contained in the same row but different columns. In this case, simply add another mapping and choose which columns will map over for the new sublist entry.

###
 Sublist grouping

Sublist grouping should be used if the values you want to enter into the different sublists are contained in the same columns but different rows. To get sublist grouping working for your DataSet, first choose a column to group by. This column should have the same value across each row that you want associated with that record. For example, let's say we had the following table:


 Customer Name
  |
 Subsidiary
  |
 item
  |
 quantity
  |
| --- | --- | --- | --- |
|
 Example Customer 1
  |
 HH Inc.
  |
 Apple
  |
 1
  |
|
 Example Customer 1
  |
 HH Inc.
  |
 Artichoke
  |
 5
  |
|
 Example Customer 2
  |
 HH Inc.
  |
 Basketball
  |
 3
  |
|
 Example Customer 2
  |
 HH Inc.
  |
 Bicycle
  |
 4
  |
|
 Example Customer 3
  |
 HH Inc.
  |
 Clarinet
  |
 6
  |
|
 Example Customer 3
  |
 HH Inc.
  |
 Camera
  |
 5
  |
|
 Example Customer 4
  |
 HH Inc.
  |
 Desk
  |
 2
  |
|
 Example Customer 4
  |
 HH Inc.
  |
 Dart
  |
 7
  |

To create some Sales Orders with this DataSet, with records being divided based off of which customer bought items, you might choose the “Customer Name” column as the Group-By column, as that column divides the various rows. The connector will then create a new sublist for each row with the same customer name. The connector will pull data from the same columns as directed in the Sublist Mapping, but will just differ on the row. In this example, the connector will create four sales orders, each with two items:

 The first for Example Customer 1, with two items:
	+ Item: Apple, QTY: 1
	+ Item: Artichoke, QTY: 5
* The second for Example Customer 2, with two items:

+ Item: Basketball, QTY:  3
	+ Item: Bicycle, QTY: 4
* The third for Example Customer 3, with two items:

+ Item: Clarinet, QTY: 6
	+ Item: Camera, QTY: 5


* The fourth for Example Customer 4, with two items:

+ Item: Desk, QTY: 2
	+ Item: Dart, QTY: 7


###
 Other considerations


* The connector uses SQL to differentiate between values. For the SQL to function properly, the connector has to use a separator to divide different cells in the DataSet. The connector currently allows you to choose between multiple separators. Be sure to choose one that doesn’t appear in any data being entered into the sublist in question.
* The connector expects field values to be equal across a group of rows, as these should be common throughout the whole record being created. Regardless of whether they are equal or not, the connector will use the field value in the first row.
* Note that this grouping feature is used for all NetSuite Writeback DataSets, regardless of whether they have sublists or not. If you aren’t using sublists for your DataSet, be sure to choose a Group-By column that has a unique value in each row. If you choose one that isn’t unique across rows, the connector will either fail or miss some of the duplicate rows and you’ll miss out on some data in NetSuite.


###
 Powering up the NetSuite WriteBack connector

To power up the connector, follow these steps:

###
 Install the Bundle in NetSuite


1. In NetSuite, go to
 **Customization > SuiteBundler > Search & Install Bundles**
 .
2. Search for “Domo” in the
 **Keywords**
 section.
3. Click on
 **Domo NetSuite Writeback**
 .
4. Click
 **Install**
 .
5. Go to
 **Customization > SuiteBundler > Search & Install Bundles > List**
 .
6. Search for and click on
 **Domo NetSuite Writeback**
 .
7. Check to see that its status is complete, signified by the green checkmark.


####
 Create your token ID and token secret


1. In Netsuite, choose the role you want to access data in.
2. Go to your main page by clicking on the house icon in the top left corner of your screen.
3. Click
 **Manage Access Tokens**
 in the
 **Settings**
 box in the bottom left corner.
4. Click
 **New Access Token**
 and choose
 **Domo NetSuite Writeback Script**
 .
5. [Optional] Choose a desired token name.
6. Click
 **Save**
 .

A token ID and token secret should appear underneath the other information. Store this information securely, since this information won’t be shown again.

###
 Locate your account ID


1. Go to
 **Setup > Integration > Web Services Preferences**
 .

Your account ID should be found directly under "Primary Information."

###
 Locate your script ID and deployment ID


1. Go to
 **Customization > Scripting > Scripts**
 .
2. Find and click on
 **Domo NetSuite Writeback Script**
 . This can be done by looking through the results (which should be in alphabetical order) or by typing

netsuiteWriteback.js

into the
 **Script File**
 box at the top.
3. Click the
 **Deployments**
 tab.
4. Follow the instructions to get to the Script Deployment page.
5. Locate the script ID and deployment ID under “External URL.”


####
 Locate your Domo Client ID and Secret


1. Log into your Domo developer account at

https://developer.domo.com/login

.
2. Create a new client

.
3. Select the desired data and user application scope.
4. Click
 ****Create****
 .


####
 Configure your NetSuite Writeback DataSet

To configure your connection,

. Find your Dataset IDs.

1. Navigate to the Domo DataSet you wish to send to NetSuite.
	2. Locate the ID, which is located in the DataSet URL. For example, in the URL

 https://customer.domo.com/datasources/aaaaaaaa-bbbb-cccc-dddd-eeeeeeeeeeee/details/settings


	 , the ID is

 aaaaaaaa-bbbb-cccc-dddd-eeeeeeeeeeee.
2. Choose your NetSuite record.


 For a full list of NetSuite records, check out the NetSuite record browser (

https://www.netsuite.com/help/helpcenter/en\_US/srbrowser/Browser2016\_1/script/record/account.html

).
3. Configure your Field Mapping.

* For each field in the mapping section, you have two options to input values:

	+ Dataset Column: Simply choose a column you want mapped to this row. For more information on how this works, read the preceding sections in this article.
		+ Static Value Input: Use this feature if you want the same value for this field for every record that the connector creates. To use this option, check the box
		 **Use Static Value**
		 . The searchable dropdown will change to a text box containing the static value you want entered.
		+ If the specific column you choose contains NetSuite Internal IDs, check the box
		 **Use NetSuite Internal IDs?**
		 .
		+ To add more optional fields, click the + button on the right end of the optional field row. The + button adds another optional field to the bottom of the list.
		+ To remove optional fields, click the - button next to the + button. The - button removes the optional field row that button is a part of.
4. Configure your Sublist Field Mapping.

* Check the box beside each sublist you want in your record.
	* Note that a field mapping tab similar to the previous tab becomes visible.
	* Configure each sublist mapping using the guidelines in step 3.
5. Advanced setup.

* For the Group By column, choose the specific column you want the sublist grouping to group rows into. For more information on how Sublist Grouping works and the Group By column, read the preceding sections in this article.
	* For the separator, choose a character that does not occur in the sublist columns you’re grouping together.

Other Panes
-------------

For information about the remaining sections of the connector interface, including how to configure scheduling, retry, and update options, see

a DataSet Using a Data Connector

.

