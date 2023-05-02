


**Note:**
 This feature is available
 *on demand and paid*
 .

To request this feature be enabled,

 Reach out to your Domo Customer Success Manager, Technical Consultant, or AE.
* If you do not have contact information for your CSM, TC, or AE, contact Technical Support by using /Support in Buzz or by email at

support@domo.com

Depending on the feature, you may be required to complete training before you can use the feature.


 Intro
-------


**Note:**
 This article is for the old Magic ETL. For information on the new Magic ETL, see

Magic ETL

.

Scripting tiles are a powerful tool within Domo's Magic ETL feature. They allow you to write custom R or Python algorithms and implement them directly into DataFlows. With this, you can create complex data science analyses that run every time your data updates.


 General Information for All Scripting Tiles
---------------------------------------------

This section provides information pertinent to all scripting tiles in Magic ETL. For information on specific tiles, click on any of the following links to jump to the section for that tile:

 Python Package API Reference
* R Package API Reference


###
 Take A Tour

All scripting tiles have the same look. The only difference between them is the supported language.


 The main body of the tile is the code editor. This is where you write your script. It includes syntax highlighting for the specific language the tile supports.

On the right side of the tile is a searchable list of input tiles currently connected to the scripting tile. Click on the name of an input to inject a code snippet into the script at the location of the cursor. This code snippet will read the data into the script and store it in a variable. Rename the variable to whatever you would like.

There is a second tab on the right side of the tile called
 **Packages**
 . When you click the tab, a searchable list of available packages for the supported language is displayed. Hover over the package name for a description, or click on the arrow that appears to go to the package's documentation website. As with inputs, if you click on a package, a code snippet is injected into the script at the location of the cursor. This code snippet imports the selected library for use in the script.

On the right side of the tile editor panel toolbar is a template icon button

. Clicking this button resets the script to the example code template that exists when you first open a scripting tile. Be careful though—if you have already written a script, clicking this button overwrites your script (after a confirmation prompt). However, as long as you do not close the tile, you can retrieve your overwritten script by placing the cursor within the code editor and pressing Command+z or CTRL+z.


 In the
 **Schema**
 tab, you tell the tile what the results of your script looks like. To use this, click
 **Schema**
 in the tile editor panel toolbar. For a deep dive into this tab, see the

Populating the Resulting Schema

section of this documentation.

In the
 **Console**
 tab, you can see the standard out (

stdout

) and standard error (

stderr

) that your script produces. This tab is not available until after preview is run on the tile, when it will appear as an option in the tile editor panel toolbar.

In the
 **Preview**
 tab, you can see the results of running your script. This tab also does not appear until after a preview is run. It will then appear as an option in the tile editor panel toolbar.


###
 Getting Data In and Out of the Scripting Action

Domo provides a basic API for importing data (read) from the Domo ecosystem into your script and then for exporting your results out (writing) of the script and back into the Domo ecosystem. The API is different for each scripting language and tries to follow the semantics of the language.

*Note:**
 Be aware of the following data type issues when using scripting tiles in Domo:


* In Python, LONG becomes DOUBLE in Python because NumPY does not support NULLs in integer columns.
* In both Python and R, DECIMAL becomes DOUBLE because there is no analogous type in NumPY or R.

The easiest way to see the specific API calls for your language is to examine the initial code template that is provided in a newly created and connected Scripting tile.

###
 Step 1: Import The Domo Package

The first line in any script should be used for importing the language-specific Domo package into the script. This follows standard package import semantics for the chosen language. It is part of the initial code template. Alternatively, you can search for "domo" in the
 **Packages**
 list to the right of the code editor and click on the package to inject the code snippet into the editor.

###
 Step 2: Read Data Into The Script

The next step in writing a script is getting access to the data. Each language will have its own semantic version of a Domo "read" method. This is included in the initial code template. Alternatively, you can click on one of the inputs in the input list to the right of the code editor. This injects a code snippet that is reading the input data and storing it in a variable. You can rename this variable if you like.

###
 Step 3: Export Data Out Of The Script

The last step in writing a script is returning the results to the Domo ecosystem. Each language has its own semantic version of a Domo "write" method. This is also included in the initial code template. There is no other way of injecting a code snippet for this, however. Provide the name of the variable that is storing the results of your script to this "write" method.
 **There can only be one export per script.**

##
 Populating The Resulting Schema

There are three ways to tell the tile what schema your script produces. These methods can be mixed and matched as necessary to get the proper result. You perform all of these in the
 **Schema**
 tab of the tile.

###
 Manually Adding the Columns

To add the columns manually...

. Type the name of a column that your script will produce into the
 **Column Name**
 field.
2. In the list of available data types, select the data type for this column.
3. Add another column by clicking the
 **Add Column button**
 .


**Important:**
 All added columns
 *must*
 be filled out in order for the tile to be considered configured.


####
 Bulk Adding the Columns

To add the columns in bulk...


 1. Add all of the columns from a particular "Input DataSet" tile in bulk by clicking on the
 **Add From DataSet**
 button and selecting the "Input DataSet" tile you want to populate from.

2. Remove any excess columns using the "X" button on the far right side of the column.


####
 Letting Domo Run The Script

To have Domo run the script for you...

. Click either the

button on the right side of the tile editor panel toolbar or the
 **Run Preview**
 button in the toolbar at the top of the canvas. (If there is an issue with your preview, see the

Troubleshooting

section of this documentation.)


 After the preview has finished running, a sentence appears under the text inputs for creating new columns. This tells you how many columns the preview returned that are not currently listed as being part of the tile's schema.
2. Click the button at the end of the sentence.

After you populate the schema, the tile knows what the results of your script look like and will be marked as configured (as long as you have also written a script).


 The columns listed in the
 **Schema**
 tab will be passed to the next tile in the DataFlow.

##
 Configuration Steps

If you have not done so already, check out the

Take a Tour

section of this article to become familiar with the different features of the scripting tile.

. Start a new Magic ETL DataFlow.
2. Drag an "Input DataSet" tile onto the canvas and select the DataSet you want to use.


 You will find the Scripting tiles under the "Data Science" section of the left sidebar.
3. Drag the Scripting tile for the language you want to write onto the canvas and then drag a connection from the "Input DataSet" to this Scripting tile.
4. (Conditional) If the editor panel is not open at the bottom of the screen, click the Scripting tile you just added to the canvas so that it is selected; the editor panel will then open.


 The code editor will be auto-populated with an initial code template. For more information on what is included in the template, see the

Getting Data In and Out of the Scripting Action

section of this documentation. A yellow banner will also be displayed. Ignore this for now; it will be addressed later on in the configuration steps.


 You will see that the template is pulling the data from the "Input DataSet" tile that is connected to the Scripting tile and storing it in a variable. This is the variable that your script should manipulate.
5. (Conditional) If you have multiple data sources, simply drag out another "Input DataSet," select the next DataSet you need, connect this tile to the Scripting Action, and add another import statement to the script.

Underneath the line that is creating the variable to hold your data, you will see a space for you to write your script.
6. Write your script in the line provided, making sure that the export statement at the very bottom of the template is exporting the variable that represents the final product of your script.


 You will notice that your tile is still not marked as configured and there is still a yellow banner at the top of the tile telling you this. This is because the tile does not yet know what the result of your script looks like.
7. To provide the tile with this information...

1. Click the
	 **Schema**
	 tab in the toolbar of the tile editor panel.
	2. Choose one of the methods listed in the

 Populating The Resulting Schema

 section of this article and follow the steps there. Afterwards, continue the rest of the steps listed below.
8. Drag an "Output DataSet" tile from the sidebar and drop it onto the canvas.
9. Drag a connection from the Scripting tile to this new "Output DataSet" tile.
10. Open the "Output DataSet" tile and give it a name and description.


 The tiles within the DataFlow are now fully configured.
11. Next, enter a name for the DataFlow in the field in the top left corner.
12. Configure the settings in the panel using the
 **Settings**
 button in the canvas toolbar.
13. Save the DataFlow.

Congratulations! You have created a DataFlow that utilizes a Scripting tile. This has been a very basic configuration that only uses a single Input DataSet tile, a single Scripting tile, and a single Output DataSet tile. Don't forget that you can still use all of the classic DataFlow tiles to manipulate the data before and after your Scripting tile.


 API Reference
---------------

domomagic is the simple API provided to both the Magic ETL "Python Action" and "R Action" authors, allowing them to load and unload data to and from the Python and R contexts.

##
 Python Module API Reference


|
 Method Signature
  |
 Parameters
  |
 Returns
  |
| --- | --- | --- |
|

read\_dataframe(input\_name=None)

|
*input\_name:*
 Name of the Magic ETL input tile. Not required if only one input is available.
  |
 A Pandas DataFrame representing the tiles input.
  |
|

write\_dataframe(dataframe)

|
*dataframe:*
 Pandas DataFrame that will be used as the output for the Magic ETL tile.
  |
 N/A
  |
|
 read\_array(column\_name,input\_name=None)
  | *column\_name*
 : Name of the column.


*input\_name:*
 Name of the Magic ETL input tile. Not required if only one input is available.
  |
 A single column from the input as a NumPy array.
  |
|
 read\_array\_dict(input\_name=None)
  | *input\_name:*
 Name of the Magic ETL input tile. Not required if only one input is available.
  |
 The input as an OrderedDict of column names mapping to NumPy arrays.
  |
|
 write\_array\_dict(array\_dict)
  | *array\_dict*
 : The dictionary of column names mapping to NumPy arrays as output to the Magic ETL context. The arrays must be of equal length.
  |
 N/A
  |


###
 R Package API Reference


|
 Method Signature
  |
 Parameters
  |
 Returns
  |
| --- | --- | --- |
|

read.dataframe(

input.name

=NULL, see below)

|


 input.name


*:*
 Name of the Magic ETL input tile. Optional if only one input is available.
  |
 The tiles input data.frame.
  |
|

write.dataframe(table)

|

table

:*
 Exports a data.frame or matrix as the output for a Magic ETL tile.
  |
 N/A
  |

The R Package

read.dataframe

function also supports the following parameters that allow you to customize its behavior:


 Parameter
  |
 Description
  |
| --- | --- |
|

colClasses

|
 A named character vector of classes to be assigned to the named columns.
  |
|

stringsAsFactors

|
 Logical value determining whether or not string columns will be read as factors. Defaults to false, and is overridden by colClasses.
  |
|

integersAsNumerics

|
 Logical value determining whether integers should be read as numerics (floating point numbers). Defaults to true, and is overridden by colClasses.
  |
|

allVerbatimExcept

|
 Character vector of column names which should be read according to default behavior. All other columns will be read in verbatim as strings and written out with their original types. Useful when translation to and from the R context is causing loss of precision or errors and the column is not necessary for the calculation being performed.
  |
|

allIgnoredExcept

|
 Character vector of column names which will be read. All other columns will be ignored.
  |

Troubleshooting
-----------------


* If your tile is not marked as configured after writing the script, make sure you have provided a resulting schema. See the

Populating The Resulting Schema

section of this article for more info.
* Running a preview is the easiest way to get feedback on the behavior of your script. You can run a preview by clicking the preview button on the right side of the tile editor panel toolbar or the preview button in the toolbar at the top of the canvas.
* After running a preview, a
 **Console**
 tab appears in the tile editor panel toolbar. This displays the standard out (

stdout

) and standard error (

stderr

) that your script produces. If the preview fails, check this console for errors.
* If a script is failing, check that you have properly finished all three of the steps listed in the

Getting Data In and Out of the Scripting Action

section of this article. Double-check the variable name that you are writing back to Domo to make sure it is correct.
* Previews run on just a sample of your dataset. If your script requires a certain variability in data to function properly, the sample grabbed by the preview might not meet this variability requirement. You can control the size of the preview sample by changing the
 **Row Limit**
 in the canvas toolbar.


**Note:**

Note that larger sample sizes will result in longer preview run times.
* Have you explicitly imported the packages/libraries that you need for your script to run? A list of available packages is in the
 **Package**
 tab of the section to the right of the code editor.
* If a column is resulting in all null values, it could mean that the column is not actually produced by your script. If a column is provided in the list in the
 **Schema**
 tab, that column is added to the results regardless of whether the script actually produces it or not. If the script does not produce that column, then all of the values for that column are set to null. You can see which of your columns are and are not created by the script by running a preview and then looking at the
 **Schema**
 tab. The status of each column will be displayed to the right of the column data type.
* If your script is failing during runtime with an out of memory error, your input DataSet could be too large or your script could be doing some sort of join that is causing the data to explode. Try filtering the data before it gets injected into the scripting tile and/or refactoring your script to prevent data explosion.


