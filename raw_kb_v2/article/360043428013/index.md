

Intro
-------

SPC (statistical process control) charts, also known as control charts, Shewhart charts, or process-behavior charts, are line charts used to determine if a manufacturing or business process is in a state of control. Domo's SPC charts lets you set up rules from SPC standards by configuring them in the Chart Properties. When values outside the specified rules are encountered, these are flagged in the chart as outliers.


 Rules
-------

There are 8 rules you can configure for SPC charts in Domo. You can have one SPC rule per chart or combine them. You configure rules for SPC charts in the
 **Control Chart Rules**
 menu in Chart Properties. For more information about these and other unique properties for these charts, see

Properties for Data Science Charts

.


 The rules you can configure are as follows:


 Rule
  |
 Description
  |
 Example
  |
| --- | --- | --- |
|
 Beyond Limits
  |
 Points are flagged if they are outside of the automatically determined upper or lower limits of the chart, which are 3 standard deviations away from the mean.
  |  |
|
 2 of 3 Outside 2 Standard Deviations
  |
 If 2 out of 3 consecutive points are outside of 2 standard deviations away from the mean, they are flagged.
  |  |
|
 4 of 5 Outside 1 Standard Deviation
  |
 If 4 out of 5 consecutive points are outside of 1 standard deviation away from the mean, they are flagged.
  |  |
|
 Run Over/Under Mean
  |
 If a specified number of consecutive points fall over or under the mean, they are flagged.
  |  |
|
 Trend
  |
 If there is a specified number of consecutive points trending up or down, they are flagged.
  |  |
|
 8 Outside 1 Standard Deviation
  |
 If there are 8 consecutive points outside of 1 standard deviation away from the mean, they are flagged.
  |  |
|
 15 Within 1 Standard Deviation
  |
 If there are 15 consecutive points within 1 standard deviation away from the mean, they are flagged.
  |  |
|
 14 Alternating
  |
 If there are 14 consecutive points that alternate up and down, they are flagged.
  |  |

Powering SPC charts
---------------------

SPC charts are similar to basic

Understanding Chart Data

.


 In the Analyzer, you choose the columns containing the data for your Line graph. For more information about choosing data columns, see

Applying DataSet Columns to Your Chart

.


 For more information about formatting charts in the Analyzer, see

Visualization Card Building Part 2: The Analyzer

.


 Customizing SPC charts
------------------------

You set the rules and customize the appearance of SPC charts by configuring their Chart Properties. For information about all chart properties, see

Chart Properties

. Unique properties of SPC charts include the following. You can click a thumbnail image to see a larger image.


 Property
  |
 Description
  |
 Example
  |
| --- | --- | --- |
|
 General > Symbol Type
  |
 Lets you select the symbol used to denote points on the line (the default is a circle). In the example, the points appear as diamonds.
  |

|
|
 General > Line Thickness
  |
 Lets you determine whether the line in your SPC chart is thin (default), medium, or thick. In the example, the thickness has been set to thick.
  |

|
|
 Control Chart Rules > Out of Control Color
  |
 Lets you specify the color of the outlier points as determined by your rules (the default color is red). In the example, the outlier color has been set to orange.
  |

|
|
 Control Chart Rules > Beyond Limits
  |
 Turns on the "Beyond Limits" rule, which flags points if they are outside of the automatically determined upper or lower limits of the chart, which are 3 standard deviations away from the mean.
  |

|
|
 Control Chart Rules > 2 of 3 Outside 2 Standard Deviations
  |
 Turns on the "2 of 3 Outside 2 Standard Deviations" rule, which looks at whether 2 out of 3 consecutive points are outside of 2 standard deviations away from the mean.
  |

|
|
 Control Chart Rules > 4 of 5 Outside 1 Standard Deviation
  |
 Turns on the "4 of 5 Outside 1 Standard Deviation" rule, which looks at whether 4 out of 5 consecutive points are outside of 1 standard deviation away from the mean.
  |

|
|
 Control Chart Rules > Run Over/Under Mean
  |
 Turns on the "Run Over/Under Mean" rule, which looks at whether a specified number of consecutive points fall over or under the mean. You specify the number of points that must be consecutive using the
 **Color Chart Rules > Run Length**
 option.
  |

|
|
 Control Chart Rules > Run Length
  |
 Determines the number of points over or under the mean that must be consecutive for the "Run Over/Under Mean" rule to apply.
  |
 —
  |
|
 Control Chart Rules > Trend
  |
 Turns on the "Trend" rule, which looks whether a specified number of points are trending up or down. You specify the number of points that must be consecutive using the
 **Color Chart Rules > Trend Length**
 option.
  |

|
|
 Control Chart Rules > Trend Length
  |
 Determines the number of points that must trend up or down for the "Trend" rule to apply.
  |
 —
  |
|
 Control Chart Rules > 8 Outside 1 Std Deviation
  |
 Turns on the "8 Outside 1 Std Deviation" rule, which looks at whether 8 consecutive points are outside of 1 standard deviation away from the mean.
  |

|
|
 Control Chart Rules > 15 Within 1 Std Deviation
  |
 Turns on the "15 Within 1 Std Deviation" rule, which looks at whether 15 consecutive points fall within 1 standard deviation away from the mean.
  |

|
|
 Control Chart Rules > 14 Alternating
  |
 Turns on the "14 Alternating" rule, which looks at whether 14 consecutive points alternately rise and fall.
  |

|
|
 Limit Lines > Mean Line Color
  |
 Determines the color of the mean line in your chart (the default is green). In the example, the mean line appears as purple.
  |

|
|
 Limit Lines > Mean Line Style
  |
 Determines the style of the mean line in your chart, whether solid (default), dotted, or dashed. In the example, the mean line appears solid.
  |

|
|
 Limit Lines > Upper/Lower Control Line Color
  |
 Determines the color of the upper and lower limit lines (the default is red). In the example, the limit lines appear as orange.
  |

|
|
 Limit Lines > Upper/Lower Control Line Style
  |
 Determines the style of the upper and lower limit lines (the default is dashed). In the example, the limit lines appear dotted.
  |

|
|
 Limit Lines > Show 1-2 Std Deviation Lines
  |
 Determines whether standard deviation lines appear in your chart. When these are present, they appear as green and dotted.
  |
 —
  |
|
 Limit Lines > 1st Std Deviation Line Color
  |
 Determines the color of the 1st standard deviation lines in the chart (the default is green). In the example, the lines appear as purple.
  |

|
|
 Limit Lines > 1st Standard Deviation Line Style
  |
 Determines the style of the 1st standard deviation lines in the chart (the default is dotted). In the example, the lines appear solid and red.
  |

|
|
 Limit Lines > 2nd Standard Deviation Color
  |
 Determines the color of the 2nd standard deviation lines in the chart (the default is green). In the example, the lines appear as purple.
  |

|
|
 Limit Lines > 2nd Standard Deviation Style
  |
 Determines the style of the 2nd standard deviation lines (the default is dotted). In the example, the lines appear as red and solid.
  |

|


