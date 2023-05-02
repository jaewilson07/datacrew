

Intro
-------

It’s important to know when using a DataFusion might be the best option and when using a DataFlow makes the most sense. Both tools have their advantages and disadvantages, but let’s start by summarizing the primary use cases for each tool:

 **DataFusion:**
 Use when you’re dealing with lots of data (>20 million rows and >25 columns) that needs to be combined (joined or union/append) with other data quickly (for example, daily sales numbers or other data that updates regularly throughout the day).
* **DataFlow:**
 Use when you need to perform a transformation that can’t be accomplished by just combining data and/or leveraging Beast Mode calculations to run the job.

DataFusion: Advantages and Disadvantages
------------------------------------------


* Because a DataFusion is a just a view of the data, the output doesn’t have to be materialized and indexed into the Domo databases, which makes it so that data can be combined, visualized, and updated very quickly in Domo.
* It makes data transformations fast when you’re working with a lot of data; more specifically, any DataSets with more than 20 million rows and >25 columns of data should be combined using a DataFusion.
* You can leverage creative Beast Mode calculations within Analyzer to specify which data you want to display and how.
* You can control naming of columns during initial setup of the DataFusion.
* You can control which columns to include or exclude at any time.
* You can only do joins or appends using DataFusion.
* You cannot use DataFusions as inputs for DataFlows.
* You have less backend control over renaming or editing your column names after the initial creation of the DataFusion.

DataFlow: Advantages and Disadvantages
----------------------------------------


* DataFlows offer much more up front flexibility. You can set up nearly any type of transformation you want, without limitations in terms of collapsing, combining, and naming columns, as well as controlling date and group by operations as well as a myriad of other affordances. And you do not have to use as many Beast Modes in Analyzer to visualize the data how you want it to appear.
* Big data can take a long time to run or update in Domo depending on the transformations that are occurring. If you are dealing with DataSets that hold mass amounts of columns and/or rows that are being combined into a DataFlow that aren’t going to be grouped down in some way, it can take significantly longer to update these DataSets in Domo. It can sometimes take hours for these assets to update.


