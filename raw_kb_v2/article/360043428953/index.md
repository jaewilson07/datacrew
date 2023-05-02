

The following table lists the types of miscellaneous charts available in Domo. You can click a thumbnail image to see a larger image.


 Chart Type
  |
 Description
  |
 Example
  |
| --- | --- | --- |
|
 Radar chart

|
 A radar chart is essentially a collection of line charts that encircle a centralized point (representing zero) on a polygonal grid. Each vertex of the grid pertains to a different category, and series are represented as individual colored polygons within the chart, with values plotted at the vertices of each polygon.


 Radar charts are used when you want to compare aggregate values for two or more data series. In the example at right, the ACT scores for three job candidates are compared using a radar chart. You can see from the size and shape of each polygon that the candidates named "Feldman" and "Murtz" were strong in two categories and weak in the others, while the candidate named "Hubbbard" was strong in all four categories.


 For more information, see

Radar chart

.
  |

|
|
 Word cloud

|
 A word cloud is a visual representation of text data, in which the importance or frequency of individual words is represented using font size and color. This format allows users to spot the most important or frequently used words in the DataSet. The example shows a word cloud showing top-searched terms for an electronics company. The size and color of each word represents the number of times it is used in searches—the more frequently a word was searched for, the larger and more brightly colored it is.


 For more information, see

Word Cloud Chart

.
  |

|
|
 Heat map

|
 A heat map is a special type of chart in which both the X and Y axes contain category data. Rectangle colors vary depending on how a particular data point fits into the specified data ranges. No series data is represented. Heat maps allow you to visualize relationships between data categories and draw attention to "hot spots" of activity and trends. In the example at right, the intensity of the blue color indicates the number of venomous snakes that were encountered in four Florida cities during a certain time period. The darkest blue areas appear for Miami, showing that it was a particular hotspot for snake activity.


 For more information, see

Heat Map

.
  |

|
|
 Calendar

|
 A calendar is used to show events associated with a series of dates. You can choose whether your calendar shows data for an entire year, for a month, or for a single day.


 For more information, see

Calendar

.
  |

|
|
 Vertical box plot chart

|
 Box plot charts are commonly used to represent statistics and quality measurements. For any given category, at least five values are required in the DataSet. From these values, Domo derives a
 *high*
 value, a
 *Q3*
 (Quartile 3) value, a
 *median*
 value, a
 *Q2*
 (Quartile 2) value, and a
 *low*
 value. These values are plotted on the chart as a
 *box and whisker plot*
 , with the Q1, median, and Q3 values forming the box and the high and low values forming the "whiskers."


 In a vertical box plot chart, values are represented on the vertical axis (or y-axis) and categories are represented on the horizontal axis (or x-axis) so the boxes stretch from top to bottom.


 For more information, see

Box Plot chart

.
  |

|
|
 Horizontal box plot chart

|
 Horizontal box plot charts are the same as vertical box plot charts, except that categories are represented on the vertical axis (or y-axis) and values are represented on the horizontal axis (or x-axis), so the boxes stretch from left to right rather than top to bottom.


 For more information, see

Box Plot chart

.
  |

|
|
 Gantt chart

|
 Gantt charts are used to illustrate project schedules. Each task in your DataSet is represented as a horizontal bar with a start date and end date. If you want, you can break tasks down by project, with each project category shown in a separate color; however, this is optional.


 For more information, see

Gantt Chart

.
  |

|
|
 Gantt percent complete chart

|
 A Gantt percent complete chart is a sub-type of the standard Gantt chart. The only difference in a Gantt percent complete chart is that it requires an additional column containing the percent complete values for each task. In the chart, these values are represented by the amount of colored fill in each task bar. The amount of fill compared to the total length of the task bar gives the viewer an idea of the percentage complete for that task. For example, in the screenshot at right, the percent complete for "Google+ profile" is about 33%.


 For more information, see

Gantt Chart

.
  |

|
|
 High low chart

|
 A high low chart is used to represent stock data. For any given category, a vertical line is shown. The topmost point of the line represents the highest price for a stock and the bottommost point represents the lowest price for that stock.


 For more information, see

High Low chart

.
  |

|
|
 Candlestick chart

|
 A candlestick chart is used to represent stock data. This chart type is the same as a High Low chart but requires two additional dimensions. For any given category, a graphic is shown consisting of a box with lines protruding from the top and bottom. As in a high low chart, the ends of the lines represent the high and low prices for the stock respectively. The top and bottom boundaries of the box represent the opening and closing prices of the stock. If the opening price of the stock is
 *lower*
 than the closing price (that is, the stock gained value), the graphic appears green. If the opening price is
 *higher*
 than the closing price (that is, the stock decreased in value), the graphic appears red.


 For more information, see

Candlestick chart

.
  |

|
|
 Category scatter chart

|
 A category scatter chart is similar to a scatter plot chart in that items are plotted using X-Y coordinates. However, whereas in a scatter plot chart two value scales are present, in a category scatter chart categories are listed down the y-axis, as in a horizontal bar chart, and values are measured on the x-axis. Series data is optional for a category scatter chart; however, no legend is provided—you must mouse over an item to see its series.

For more information, see

Category Scatter chart

.
  |

|
|
 Vertical symbol chart

|
 Symbol charts are similar to grouped bar charts in that series items are represented side by side within their respective categories. However, instead of bars, symbol charts use symbols to indicate series values. This may help viewers to more easily identify highs and lows within their data. In a vertical symbol chart, categories are represented along the horizontal axis (or x-axis) and values are measured on the vertical axis (or y-axis).


 For more information, see

Symbol chart

.
  |

|
|
 Horizontal symbol chart

|
 A horizontal symbol chart is the same as a vertical symbol chart except that the axes are switched; categories are measured on the vertical axis (or y-axis) and values are measured on the horizontal axis (or x-axis).


 For more information, see

Symbol chart

.
  |

|
|
 Vertical symbol overlay

|
 Symbol overlay charts are similar to standard symbol charts. However, where in a symbol chart symbols in categories are shown side by side (as in a grouped bar chart), in a symbol overlay chart symbols in categories are overlaid on top of one another (like the individual bars in a category in a stacked bar chart). As with a symbol chart, viewers can easily identify the highs and lows in each category. In a vertical symbol overlay chart, categories are represented along the horizontal axis (or x-axis) and values are measured on the vertical axis (or y-axis).


 For more information, see

Symbol Overlay chart

.
  |

|
|
 Horizontal symbol overlay

|
 A horizontal symbol overlay chart is the same as a vertical symbol overlay chart except that the axes are switched; categories are measured on the vertical axis (or y-axis) and values are measured on the horizontal axis (or x-axis).


 For more information, see

Symbol Overlay chart

.
  |

|
|
 Spark line chart

|
 A Spark line chart is essentially a line chart with no axes (providing a cleaner, uncluttered experience) and a built-in gauge that by default shows the degree of change between the first and last data points in the chart. Spark line charts are excellent for quickly showing relative rises and falls in data over time.


 For more information, see

Spark Line chart

.
  |

|
|
 Spark bar chart

|
 A Spark bar chart is essentially a bar chart with no axes (providing a cleaner, uncluttered experience) and a built-in gauge that by default shows the degree of change between the first and last data points in the chart. Spark bar charts are excellent for quickly showing relative rises and falls in data over time.


 For more information, see

Spark Bar chart

.
  |

|
|
 Sankey chart

|
 Sankey charts are a type of flow diagram in which the thickness of the connecting lines between elements is proportional to the flow rate. They are usually used in scientific applications, especially physics, in which they often show energy inputs, useful output, and wasted output. However, they are often used in business as well, especially in showing cost breakdowns, inventory flows, web traffic, and more.


 In a Sankey chart, items are connected to other items using colored lines or arrows. Each pairing has a value. The thickness of any connecting line is determined by the value of the pairing in comparison to other values found in the dataset. For example, if point A was connected to point B and had a value of 10,000, and this value was among the greater values in the dataset, the line would appear thick. On the other hand, if the value of 10,000 was among the smaller values in the dataset, it would appear thin.


 Sankey charts may simply connect one set of input items to one set of output items or may have intermediary items acting as both input and output items, depending on how your data is structured.


 For more information, see

Sankey Chart

.
  |

|


