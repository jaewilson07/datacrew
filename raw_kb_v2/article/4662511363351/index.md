

Intro
-------

You can use Scripting tiles to automate data processing and data science workflows. For an overview, see

Magic ETL Tiles: Scripting

.


 In this article, we’ll provide an overview of troubleshooting tips for optimizing memory use in your container. In some cases, you may still need to upgrade your container. For guidance on requesting a container upgrade, see

Requesting Memory Upgrades

.


 Troubleshooting tips
----------------------


###
 Tip 1

You can use Magic ETL tiles to reduce the memory footprint in your script. Magic ETL tiles have been optimized for memory-intensive operations. We recommend excluding intensive operations in your script that can be handled through Magic ETL tiles instead.

###
 Examples

You can use the Performance tiles in Magic ETL to exclude columns in your DataSet that are not needed in your script. For information on using Performance tiles, see

Magic ETL Tiles: Performance

. This will reduce the DataSet that will be processed in your script.


 You can also use the Filter Rows tile and the Remove Duplicates tile to exclude rows that are not needed for the DataSet used in your script. For information on using the Filter tile, see

Magic ETL Tiles: Filter

.

##
 Tip 2

Verify that you are using the latest versions of the packages needed in your script. Newer versions of the package are often optimized for performance and memory. If you need to request a package upgrade, see

Requesting Custom Environments

for details.

##
 Tip 3

Breaking up an operation into segments can help reduce memory footprint, especially for intensive operations like looping. You could also consider breaking up the DataFlow into separate DataFlows.

##
 Tip 4

Test memory for data size only. You can set up a DataFlow that simply writes the input (no operations in the script.) If the DataFlow, errors out then you need to reduce the DataSet size (

Tip 1

) or evaluate a memory upgrade.


 Requesting Memory Upgrades
----------------------------

While the tips above may help lower your memory footprint, in some cases your workflow will simply require more memory. To request this upgrade, see

Requesting Memory Upgrades

for a walkthrough.

