

Intro
-------

When you create a chart for displaying data for your users, it is often helpful to highlight exceptions and use consistent colors. The Color Rules tool in Analyzer helps you do both. Using Color Rules, you can apply colors to specific columns in a chart or set conditions in which certain colors are shown.


 For example, the owner of the ABC Cafe wants to replace the default Domo color scheme with a custom scheme more fitting for his business. He does this by going into the Color Rules dialog and setting the "Sales" series column to red and the "Profit" series column to black.

As another example, a user wants to be made instantly aware when profit values in a bar chart fall under a certain threshold. To this end, he sets a color rule on the value column specifying that a red color be applied to bars falling under a specific amount. This is shown in the following screenshot:

The color rule for this example is basically as follows: "If the value of 'Profit' falls below 50,000 for a product subcategory, the bar for that subcategory appears red; otherwise the default color (blue) is applied."


 When you apply Color Rules to a chart, you are given the option to apply the rules to this card only or to all cards powered by this same DataSet. The latter option is a great way to ensure that all of your charts built with the same DataSets use the same custom color scheme. So, the user who created the chart in the first example could use this option to ensure that all cards built on this DataSet use the red/black color scheme for Sales and Profits, just as this card does.

*Note:**


 You cannot change all cards powered by a DataSet unless you are the DataSet owner or have an "Admin" security profile or a custom role with "Manage DataSets" enabled.

The Color Rules tool is available for all chart types except for the following:

 All maps
* All gauges
* Box plot
* Funnel bars
* Folded funnel
* Heat map
* Category scatter
* Candlestick
* High low
* Calendar

You can customize map colors by applying color "themes." Color themes use different shades to denote various ranges in map data. For more information, see

Changing Colors in Maps

.


 For any chart or table, up to 100 color rules are allowed. This includes both card- and DataSet-level rules. For a drill view this limit is a combination of all color rules in all parent views. For more information about drilldown, see

Adding Drill Path to Your Chart

.

*Video - Adding Color Rules**

Applying color rules to a chart
---------------------------------

Color rules can be applied to any chart type in Domo. However, they are not currently recommended for use in charts with series data (such as multi-bar charts) unless you are applying color rules to the column with series data, as in the previous example (not the category or value columns).


 You set color rules on a chart by clicking
 **Color Rules**
 in the toolbar at the top of the Analyzer window then choosing the column you want to apply the rule to and setting the conditions (if any) and color.


 Because there are so many different scenarios for applying color rules to a chart, we present instructions for the two most common use cases: setting custom (static) colors and setting dynamic colors based on conditions.

##
 Use case #1: Setting custom colors using color rules

To set custom colors on a chart (as in the first example in this topic), it is recommended you apply them to
 *category*
 columns in single-series charts (such as standard bar and line charts) and
 *series*
 columns in multi-series charts (such as grouped bar and multi-line charts). You should not apply color rules to value columns when setting custom colors.


**To set custom colors on a chart,**

. Open the Analyzer for the card you want to set custom colors for.


 You can do this by selecting
 **Edit in Analyzer**
 in either the page view or Details view for the card, or by clicking

in the Details view.
2. (Optional) If the Analyzer toolbar is not expanded near the top of the window, click

to expand it.
3. Click the
 **Color Rules**
 button in the toolbar.
4. In the
 **Column**
 dropdown, select the text or date column you want to set a custom color on.


**Tip:**
 You can choose from
 *any*
 columns in your DataSet, not just the ones you have applied to this chart. When setting color rules on DataSet columns, a great time-saver is to open the Analyzer for any chart based on that DataSet, open the
 **Color Rules**
 dialog, then set color rules for each column in the DataSet. Then, when you save, you can choose to apply the new rules to all cards based on the DataSet. This keeps you from having to manually set color rules on each card built around that DataSet.
5. In the
 **Condition**
 dropdown...

* If the column is a text column, check the boxes for all of the items you want to apply this rule to.
	* If the column is a date column...

	1. Choose the desired conditional statement.
		2. Choose the date(s) you want to apply this rule to.
6. Select the desired color for this rule in the
 **Fill**
 dropdown.
7. (Optional) To add additional rules, click
 **New**
 , then repeat steps 4-6 to configure the new rule.
8. (Optional) To remove a rule you have set, click

next to the rule.
9. Click
 **Next**
 .
10. (Conditional) If you want this rule to be applied to all cards built on this DataSet (see the above tip), click
 **Apply to All Cards**
 ; otherwise click
 **Apply to Only this Card**
 .

The rule(s) you have configured are now applied to this chart (and any other charts built on the DataSet, if you selected
 **Apply to All Cards**
 in step 10).

##
 Use case #2: Configuring dynamic colors based on conditions

You can set rules on a chart so that specific colors are used when values meet certain conditions. This is shown in the "Profit per Product Subcategory" example above, in which the bars that fall below a certain value appear red, while all other users use the default blue. You could go a step further and set a second rule on the same column stating that all values
 *above*
 the specified value appear green. Thus "poor" values appear as red and "good" values appear as green, and the default blue is not used at all. This has been shown in the following example, in which all values equal than or greater to 100,000 appear green and all values less than 100,000 appear red:

*Note:**
 It is not recommended that you do this in charts with more than one series (such as multi-line charts).


**To configure dynamic colors in a chart based on conditions,**

. Open the Analyzer for the card you want to set custom colors for.


 You can do this by selecting
 **Edit in Analyzer**
 in either the page view or Details view for the card, or by clicking

in the Details view.
2. (Optional) If the Analyzer toolbar is not expanded near the top of the window, click

to expand it.
3. Click the
 **Color Rules**
 button in the toolbar.
4. In the
 **Column**
 dropdown, select the value column you want to configure colors for.
5. In the
 **Condition**
 dropdown, select the desired conditional statement in the menu and enter the value(s) in the field(s) that meet the condition.


 For example, if you wanted your color to be applied when your value exceeded 50, you would select
 **is greater than**
 in the menu then enter

50

in the field.
6. Select the color that should be applied when the condition is met.
7. (Optional) To set additional rules on the same value column (as described above), click
 **New**
 , select your value column, then repeat steps 5 and 6 for the new column.
8. (Optional) To remove a rule you have set, click

next to the rule.
9. Click
 **Next**
 .
10. (Conditional) If you want this rule to be applied to all cards built on this DataSet, click
 **Apply to All Cards**
 ; otherwise click
 **Apply to Only this Card**
 .

The rule(s) you have configured are now applied to this chart (and any other charts built on the DataSet, if you selected
 **Apply to All Cards**
 in step 10).


 Applying color rules to a table
---------------------------------

In tables, additional formatting options are available, including shading and styling options, as well as the ability to specify whether the rules apply only to the specific cell or to the whole row.


 In the event that a table row is affected by more than one rule, precedence is given to the newest rules. For example, a user working in the "Western" region may apply a rule to a table that changes the color of all of the states in his region to turquoise. If he then adds a second rule stating that cells in the "Profit" column with negative values appear red, this rule is applied to
 *all*
 cells in that column meeting that condition, whether or not they are in the "Western" region. This is shown in the following example, for the "Paper" and "Computer Peripherals" rows.

*To configure color rules for a table,**

. Open the Analyzer for the card you want to set custom colors for.


 You can do this by selecting
 **Edit in Analyzer**
 in either the page view or Details view for the card, or by clicking

in the Details view.
2. (Optional) If the Analyzer toolbar is not expanded near the top of the window, click

to expand it.
3. Click the
 **Color Rules**
 button in the toolbar.
4. In the
 **Column**
 dropdown, select the column you want to set a custom color on.


**Tip:**
 You can choose from
 *any*
 columns in your DataSet, not just the ones you have applied to this chart. When setting color rules on DataSet columns, a great time-saver is to open the Analyzer for any chart based on that DataSet, open the
 **Color Rules**
 dialog, then set color rules for each column in the DataSet. Then, when you save, you can choose to apply the new rules to all cards based on the DataSet. This keeps you from having to manually set color rules on each card built around that DataSet.
5. In the
 **Condition**
 dropdown, select the desired conditional statement in the menu and enter the value(s) in the field(s) that meet the condition.


 For example, if you wanted your color to be applied when your value exceeded 50, you would select
 **is greater than**
 in the menu then enter

50

in the field.


 If you do not want to set a condition (i.e. you want this color to be applied to all rows in the column), leave the default menu setting of
 **contains (any)**
 .
6. Select the color that should be applied when the condition is met.
7. In the
 **Table Text**
 menu, select the desired text/background color option.
8. In the
 **Table Text Style**
 menu, select the desired text style.
9. (Conditional) If you want this color to be applied to all rows meeting the condition, check the box for
 **Apply format to table row**
 . If you want the color to be applied only to the actual cells meeting the condition, not the associated rows, uncheck the box.
10. (Optional) To add additional rules, click
 **New**
 , then repeat steps 4-9 to configure the new rule.
11. (Optional) To remove a rule you have set, click

next to the rule.
12. Click
 **Next**
 .
13. (Conditional) If you want this rule to be applied to all cards built on this DataSet (see the above tip), click
 **Apply to All Cards**
 ; otherwise click
 **Apply to Only this Card**
 .

The rule(s) you have configured are now applied to this chart (and any other charts built on the DataSet, if you selected
 **Apply to All Cards**
 in step 10).


 Color rules in drilldown
--------------------------

In any given drill view for a card, all color rules that have been applied to any of the parent views (even as "card only" rules) are applied. Let's say you have a drill path for a card set up as follows:


 Drill Level
  |
 Color Rules
  |
| --- | --- |
|
 Top-level card
  |
 Has rule X & Y from the DataSet, no "card only" rules
  |
|
 Drill 1
  |
 No rules
  |
|
 Drill 2
  |
 Has rule A & B applied as "card only" rules
  |
|
 Drill 3
  |
 Has rule C & D applied as "card only" rules
  |
|
 Drill 4
  |
 No rules
  |

In this case, upon drilling, a user would see color rules applied as follows:


 Drill Level
  |
 Color Rules
  |
| --- | --- |
|
 Top-level card
  |
 X then Y
  |
|
 Drill 1
  |
 X then Y
  |
|
 Drill 2
  |
 A then B
  |
|
 Drill 3
  |
 A, B, C, then D
  |
|
 Drill 4
  |
 A, B, C, then D
  |

For more information about drilldown, see

Drilling into Data

.

