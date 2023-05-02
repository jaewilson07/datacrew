


**Note:**
 This feature is available
 *on demand and paid*
 .

To request this feature be enabled,

 Reach out to your Domo Customer Success Manager, Technical Consultant, or AE.
* If you do not have contact information for your CSM, TC, or AE, contact Technical Support for information on how to contact Support, please see:

Getting Help

Depending on the feature, you may be required to complete training before you can use the feature.


 Intro
-------

There are two available tiles in the Performance tab of Magic ETL DataFlows. These include:

 Select and Store Columns
* Restore Columns

For information about creating a Magic ETL DataFlow, see

Creating a Magic ETL DataFlow

.


 For information about the Data Center, see

Data Center Layout

.


**Important:**
 There are significant behavioral differences in the new Magic ETL. Read the


 Behavior Changes and Feature Updates in Magic ETL


 article before converting mission-critical Magic ETL DataFlows.
 **Failure to do so may risk an unintended change to your DataFlow’s behavior.**

Prerequisites
---------------

The Performance tiles are intended for use with either the Python or R Scripting tiles. For more information on the Scripting tiles, see

Magic ETL Tiles: Scripting

.

Select and Store Columns Tile
-------------------------------


 The Select and Store Columns tile allows you to store/remove columns that are not used as part of the script inside of a Python or R Scripting tile. Storing columns not applicable to the Scripting tiles transformations prior to the Scripting tile reduces the amount of data being loaded. Following this process will generally decrease the runtime of your Scripting tile as the tile is now only loading the necessary columns for its transformation.

*To configure the Select and Store Columns tile,**

. Click the
 **Select and Store Columns**
 tile in the canvas.
2. (Optional) Rename the tile by clicking

, then entering the name you want.
3. Select the columns you want to use in the subsequent Python or R Scripting tile.
4. (Optional) To verify all desired columns have been selected, hide all non-selected columns in the list by clicking

.
5. Name the column that you will use to restore the columns to the DataFlow.


**Important:**
 Do not modify the column you named in this step in any other tile in the DataFlow or the Restore Columns tile will not work as expected.

Restore Columns Tile
----------------------


 The Restore Columns tile allows you to restore/add the stored columns back into your DataFlow after the script in your Python or R Scripting tile has been processed.

*To configure the Restore Columns tile,**

. Click the
 **Restore Columns**
 tile in the canvas.
2. (Optional) Rename the tile by clicking

, then entering the name you want.
3. Select the column that you named in the Select and Store Columns tile.
4. (Optional) Review the columns that will be restored by hovering over the text that states the number of columns that will be restored.


