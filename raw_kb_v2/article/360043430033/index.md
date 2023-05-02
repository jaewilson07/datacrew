

Intro
-------

With over 10 million interactions every month, Table Cards are the most widely used card in Domo. They allow you to use and arrange any columns from your DataSets in any way you like. For more information about building tables, see our article about

Table Charts

.


 While tables are reliable, they don't always provide quick insights. The first example below shows a rather plain table, while the second example shows a more informational table that includes links, colors, and images.

*Note:**
 When adding graphics, links, and images to Table Cards using Beast Mode, remember the following:
 * Mega Tables do not support HTML tags or style attributes in HTML; they support only images and links.
* HTML Tables support HTML tags and style attributes, such as style="background-color".
* HTML Tables do not support filtering when content is added to cells using a Beast Mode calculation. For more information, see our article about

Applying Page-Level Filters with Filter Views

.
* Cards cannot be embedded within cells of Table Cards because iFrames are not supported. For a list of supported tags, see the section about

HTML Table Tags

below.

This article describes how to add quick insights to tables using links, colors, and images in the following categories:

 Adding links and anchor tags to tables
* Adding color to table values
* Adding images to tables
* HTML table tags

Adding Links and Anchor Tags to Tables
------------------------------------------

With links or anchor tags, you can take an ID from a source system and link it back to that source from your table. All you need to know is some HTML and how to use the concat() function in Beast Mode.


 To add links or anchor tags to a table, follow these steps:

. In the upper-right corner of a card, select

*Settings**
 >
 **Edit in Analyzer**
 .
2. Select
 **Beast Mode**
 from the toolbar at the top of Analyzer.
3. Enter the name of your Beast Mode formula in the
 **Calculated Field Name**
 field.
4. Use the concat() function to create an HTML string for your table link or anchor. Here is a sample link to a JIRA source system:

``
CONCAT('<div><a href="https://onjira.domo.com/browse.com"','"target="\_blank">';,`Sales Rep`,'</a></div>')
```
5. Replace
 `https://onjira.domo.com/browse.com`
 with your link.
6. Replace
 ``Sales Rep``
 with the text you want your link to display in the table.


**Note:**

* "target=\_blank" forces the link to open in a new tab in your browser. Adding it is optional.
	* If you want to enter your own text instead of referencing a column, wrap your text in single quotation marks to avoid a syntax error. For example:

```
	CONCAT('<div><a href="https://onjira.domo.com/browse.com"','"target="\_blank">','Link Text','</a></div>')
	```
7. In the upper-right corner, select
 **Create Calculated Field**
 , then exit the formula editor.
8. Drag this new calculated field into your
 **Columns**
 area in Analyzer.

You now have a time-saving link to review the data in your source system.


 Adding Color to Table Values
--------------------------------

Adding colors to values in a table follows the same principles as adding links and anchor tags.

. In the upper-right corner of a card, select

*Settings**
 >
 **Edit in Analyzer**
 .
2. Select
 **Beast Mode**
 from the toolbar at the top of Analyzer.
3. Enter the name of your Beast Mode formula in the
 **Calculated Field Name**
 field.
4. Use the concat() function to create an HTML string for your color, the syntax of which is "style" in a

div

command. Here is an example of setting the color to red:

``
concat('<div style="color: #f00">',`Sales`,'</div>')
```

And here is an example of setting the text color to red when the value is negative:

``
concat('<div style="color: #f00">',`Sales`,'</div>')

lse

oncat(`Sales`,'')

nd
```

Adding Images to Tables
---------------------------

Use the <img> command in HTML to add images to your table. The following are some examples of tables that contain images:


###
 Adding Single Images to a Table


1. In the upper-right corner of a card, select

*Settings**
 >
 **Edit in Analyzer**
 .
2. Select
 **Beast Mode**
 from the toolbar at the top of Analyzer.
3. Enter the name of your Beast Mode formula in the
 **Calculated Field Name**
 field.
4. Use the concat() function to create an HTML string for your image, the syntax of which is the

<img>

command. Here is an example of including a simple down arrow image.

``
CONCAT('<div style="text-align:center"><img alt="DOWN" height="20px" src="https://www.irasutoya.com/2013/01/blog-post\_7794.html">','</div>';)
```
5. Replace
 `https://www.irasutoya.com/2013/01/blog-post\_7794.html`
 with

the URL of the image you want to display.

*Note:**
 The following steps are optional.
6. You can replace

style="text-align:center"`


 with any custom style you want to apply to the image. In this example, the image is aligned to the center of the table cell. See the section about

HTML Table Tags

below for available styling tags.
7. `alt="DOWN"`
 provides alternative information if a user cannot view the image for any reason. In this example, a user sees the word DOWN instead of the down arrow image.
8. You can remove
 `height="20px"`


 entirely to use the original height of your image or replace

20px

with the height you want your image to be in pixels.


###
 Adding Multiple Images to a Single Column in a Table

To add multiple images to a single column, use Beast Mode to create a case statement condition. In the following example, if the profit is up or down, a corresponding up or down arrow displays.


```
CASE WHEN `Profit` < 0 THEN

ONCAT('<div style="text-align:center"><img alt="DOWN" height="20px" src="https://4.bp.blogspot.com/-VtfK8e7-guk/UNgpNEi\_IEI/AAAAAAAAJZI/PuIiQXbcfJY/s1600/mark\_arrow\_down.png">','</div>';)

LSE

ONCAT('<div style="text-align:center"><img alt="UP" height="20px" src="https://3.bp.blogspot.com/-8vT29qQLkGY/UNgpRL7EsJI/AAAAAAAAJZs/ONyYGbuksDQ/s1600/mark\_arrow\_up.png">','</div>';)

ND
```


 You can also create a Beast Mode calculation to dynamically update the source in an <img> tag. The following code shows one way to do this:


```
CASE WHEN `[your column` >=0 THEN

ONCAT('<div style="text-align:center"><img height="20px" src=',`[your column]`,'">','</div>')

LSE

ONCAT('<div style="text-align:center"><img height="20px" src="[URL of the image to switch in">','</div>')

ND

``


 HTML Table Tags
-------------------

For security reasons, only certain HTML tags are allowed in tables in Domo. The following table lists all of the tags that are allowed:


 Tag
  |
 Attribute(s)
  |
| --- | --- |
|

<a>

|

href="

http://..."

"

(see Note 1 below)
  |
|

<br>

|
 |
|

<div>

| * style

(see Note 2 below)
* align
* width
* title
 |
|

<font>

| * style

(see Note 2 below)
* color
* size
 |
|

<img>

| * style

(see Note 2 below)
* alt
* align
* border
* class
* height
* title
* width
 |
|

<span>

|

style

(see Note 2 below)
  |
|

<p>

|

style

(see Note 2 below)
  |
|

<h1>

|

style

(see Note 2 below)
  |
|

<h2>

|

style

(see Note 2 below)
  |
|

<h3>

|

style

(see Note 2 below)
  |
|

<h4>

|

style

(see Note 2 below)
  |


**Note 1:**
 The URL
 *must*
 begin with http, https, or mailto. It cannot be a partial or relative path. Other hrefs will be removed.

*Note 2:**
 Allowed

Style

attributes include the following:

 background-color
* border
* color
* float
* font-color
* font-size
* font-weight
* height
* left
* margin
* margin-left
* margin-right
* max-height
* max-width
* padding
* position
* text-align
* top
* vertical-align
* white-space
* width
* word-wrap
* z-index


