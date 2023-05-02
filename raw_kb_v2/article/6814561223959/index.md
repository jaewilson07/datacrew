

Intro
-------

Schema Management is a feature that allows users to update a schema as well as clone and clear a DataSet.


 Accessing the Toolkit
-----------------------

To access the Governance Toolkit, do the following:

. Go to
 **More**
 >
 **Admin.**
2. In the
 **Governance**
 menu, select
 **Toolkit.**

Required Grants
-----------------


 To access the Governance Toolkit, a user will need one of two grants enabled for their role: Create Custom Pipeline Processes or Administer Custom Pipeline Processes. Grants can be added to a custom user role. By default, the Administer Custom Pipeline Process grant is enabled for Admin users.


####

Create Custom Pipeline Processes


* Allows the user to create, update, share, and delete jobs.
* Only allows the user to view jobs that they created or jobs that have been shared with them.


####

Administer Custom Pipeline Processes


* Allows the user to create, update, share, and delete jobs.
* Allows the user to see all jobs within the pipeline.


 To learn more about custom roles and grants, see

Managing Custom Roles.


 Updating a Schema
-------------------

Users can update the schema of existing DataSets.


 Follow the steps below to update a schema:


 1. In the navigation header, go to
 **More**
 >
 **Admin.**


 2. In the
 **Governance**
 menu, go to
 **Toolkit**
 >
 **Schema Management**

2. Locate the DataSet you wish to update by scrolling through the list or by using the
 **Search**
 bar.

3. Select


 the DataSet.


 4. Select
 **Edit.**

In the editing view, users can make the following changes:

 Reorder columns
* Rename columns
* Remove columns
* Add columns
* Change column descriptions
* Change column types
* Change the DataSet name and description


 To add columns, select

under
 **Actions.**
 To delete columns, select

.


 5. Select
 **Save Changes.**

The
 **Update DataSet**
 dialog displays.

6. Check the following boxes confirming that you understand the changes.


 7. Type CONFIRM (all caps) in the field and select
 **Update DataSet.**


 The DataSet has been updated with a new schema.

Cloning a DataSet
-------------------

Users can clone an existing DataSet. Cloning a DataSet will copy the schema of the existing DataSet and create a new DataSet with the same schema. Users also have the option to copy data from the existing DataSet. Cloning a DataSet will not copy connector settings or scheduling.


 Follow the steps below to clone a DataSet:


 1. In the navigation header, go to
 **More**
 >
 **Admin.**


 2. In the
 **Governance**
 menu, go to
 **Toolkit**
 >
 **Schema Management**

2. Locate the DataSet you wish to clone by scrolling through the list or by using the
 **Search**
 bar.

3. Select the DataSet.


 4. Select the wrench icon

.


 5. Select
 **Clone**
 .

The
 **Clone DataSet**
 modal displays.


 5. You can change the DataSet clone's name, description, and type. Copying data rows from the existing DataSet allows users to keep the original configuration and make adjustments to the clone.

6. Select
 **Clone DataSet.**


 The DataSet has been cloned.

*Note:**
 Your new DataSet could take several minutes to generate.

Clearing a DataSet
--------------------

Users can clear data from a DataSet. This option will remove all existing data from a DataSet. The existing DataSet schema will be maintained.


 To clear a DataSet, follow the steps below:


 1. In the navigation header, go to
 **More**
 >
 **Admin.**


 2. In the
 **Governance**
 menu, go to
 **Toolkit**
 >
 **Schema Management**

3. Locate the DataSet you wish to clear by scrolling through the list or by using the
 **Search**
 bar.

4. Select the DataSet.


 5. Select thr wrench icon

.


 6. Select
 **Clear Data.**

7. Select
 **Continue**


 8. Check the following boxes confirming that you understand the changes.


 9. Type CONFIRM (all caps) in the field and select
 **Clear Data.**


 The DataSet has been cleared.


