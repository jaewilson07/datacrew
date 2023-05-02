

Intro
-------

By default, values in a chart do not display with formatting such as currency or percent symbols, even if such formatting is used in the original DataSet. You can add value formatting in the Analyzer in the following ways:

 Specifying formatting in the column options dialog for the value column.


 You open this dialog by clicking the column name in the fields region above the chart. Any formatting you apply in this dialog is applied to
 *all*
 values in the chart—scale labels, data labels, hover text, and legends. Summary numbers are
 *not*
 affected. For more information about summary numbers, see

Configuring Your Chart Summary Number

.
* Setting the appropriate format in

Chart Properties

.


 In contrast to the column options dialog, which allows you to apply the same change to all numbers in the chart with a single click,
 **Chart Properties**
 lets you make changes to individual properties. These changes override any column options settings you have selected.

Because you can set formatting for all numbers in the column options dialog and individual properties in
 **Chart Properties**
 , it may be useful to use a combination of these when designing your charts. For example, you could select
 **Type > Currency**
 in the column options dialog to affix dollar signs to all of the values in your chart. Then you could go into
 **Chart Properties**
 and change the currency symbol. The new symbol would replace all of the dollar signs in your chart.

*Note:**
 In chart types with dual y-axes, it is possible to have different number formatting on both axes. For example, you could have percent symbols affixed to the values on one axis and currency symbols on the other. You can set the different number formatting by setting different formatting for both the value and series. However, this only works when you add a value column as a series, as described in

Applying DataSet Columns to Your Chart

. If your series data consists of text, you can still format the axes separately, but you must use the
 **Chart Properties**
 to do so.

Formatting values using the column options dialog
---------------------------------------------------

The column options dialog contains various options for formatting values in a chart. Different options appear depending on what you select in the
 **Type**
 menu.

The following table describes the formatting options available:


 Option
  |
 Description
  |
| --- | --- |
|
 Display as
  |
 Lets you choose how values appear in your chart. Options include the following:


**Number**
 - Values appear as is, with no currency or percent symbols


**Currency -**
 Values appear with currency symbols affixed. You can change the currency symbol in the
 **$**
 menu that appears. If the
 **$**
 dropdown does not contain the currency symbol you want, you can enter your desired symbol in
 **Chart Properties**
 (
 **Number Format > Currency Symbol**
 ). By default, the currency symbols are affixed to the front of values (for example,
 `$10`
 ). You can change this default behavior in
 **Chart Properties**
 (
 **Number Format > Currency Symbol Position**
 ).


**Percentage -**
 Values appear as percentages. If you check the
 **Multiply by 100**
 box that appears when this option is selected, values are multiplied by 100 (for example, the value ".1" would appear in your chart as
 `10%`
 ). If you leave this box unchecked, values in your chart appear as-is—no multiplication occurs (for example, the value ".1" would appear as
 `.1%`
 ).
  |
|
 Decimals
  |
 Lets you choose the number of decimal places in values in your chart, either 0, 1, or 2. If you want values to contain more than 2 decimal places, you can specify up to 5 in
 **Chart Properties**
 (
 **Value Scale > Decimal Places**
 ). By default, decimals are indicated by periods (.). You can specify the desired decimal separator in
 **Chart Properties**
 (
 **Number Format > Decimal Separator**
 ).
  |
|
 Use Thousands Separator
  |
 By default, commas (,) are used as the thousands separator. You can specify the desired thousands separator in
 **Chart Properties**
 (
 **Number Format > Thousands Separator**
 ).
  |
|
 Preview
  |
 Shows you a preview of how your chart values will look with your settings applied.
  |

*To format values using the column options,**

. Open the Analyzer for the chart you want to edit.
2. Click the value column name in the fields region above the chart preview.


 The column options dialog opens.


 For information about applying a value column to a chart, see

Applying DataSet Columns to Your Chart

.
3. Select the desired formatting options in the dialog.

Formatting values using Chart Properties
------------------------------------------

*Chart Properties**
 contains countless options for formatting values in charts. As mentioned previously, any changes you make in
 **Chart Properties**
 override the universal formatting that is applied when you select an option in the column options dialog.


 This section lists and describes some of the chart properties commonly used for formatting numbers. This list is by no means exhaustive.

##
 Value Scale properties

These properties pertain to the values that appear along the measuring scale in most chart types. For example, in a vertical Bar graph, these are the values found on the vertical axis on the left side of the graph.


 Property
  |
 Description
  |
| --- | --- |
|
 Label Format
  |
 Determines the type of number formatting found in scale values. You can customize the actual symbols used in values in the
 **Number Format**
 properties (see the next section for more information).


**Number**
 — Numbers appear without currency or percentage symbols. (Default)


**Currency**
 — Affixes a "$" to scale values.


**Percentage**
 — Affixes a "%" to scale values.
  |
|
 Divide Scale By
  |
 Refers to the number that values in the value scale are to be divided by if any. This option is useful when the numbers on your value scale are very large and you want to abbreviate them by dividing by a common number. For example, if all of the numbers on the value scale represented millions of dollars, you could choose to divide by millions—all of the numbers on the scale would then be reduced to more manageable single digits. When you choose to divide by
 **Percentage**
 , the numbers in the value scale are multiplied by 100. This is especially useful when your values are in decimal format and you want them to appear as percentages.
  |
|
 Decimal Places
  |
 Determines the number of decimal places used in decimal values. You can choose from
 **Default**
 ,
 **None**
 , and options for numbers of decimal places (from ".0" to ".00000").
  |
|
 Negative Numbers
  |
 Determines the format for negative numbers. If you select
 **-100**
 , all negative numbers have a minus symbol affixed. If you select
 **(100)**
 , all negative numbers are enclosed in parentheses.
  |


###
 Number Format properties

These properties pertain to the actual symbols used in values in your chart. Changes you make here are applied to all of the values in the chart.


 Property
  |
 Description
  |
| --- | --- |
|
 Currency Symbol
  |
 The symbol or group of symbols used to denote currency in values in your chart. The default currency symbol is "$."

*Note:**
 If you use a close parenthesis as part of your currency symbol, you
 *must*
 pair it with an open parenthesis.

|
|
 Currency Symbol Position
  |
 Determines whether currency symbols appear before or after their values.
  |
|
 Decimal Separator
  |
 Determines the symbol for separate decimal values. The default decimal separator is a period.
  |
|
 Thousands Separator
  |
 Determines the symbol used to separate thousands in large numbers. The default thousands separator is a comma.
  |


###
 Data Label Settings

These properties pertain to the data labels that appear in a chart when you enter text into the
 **Data Label Settings > Text**
 field. For more information about data labels, see

Formatting Data Label and Hover Text in Your Chart

.


 Property
  |
 Description
  |
| --- | --- |
|
 Use Scale Format
  |
 When this box is checked, data labels use the same number formatting set for scale values in the chart.
  |
|
 Percent Value Decimal Places
  |
 Determines the number of decimal places used in data labels. The default is none.
  |


###
 Hover Text Settings

These properties pertain to text that appears when you mouse over an element in a chart. For more information about hover text, see

Formatting Data Label and Hover Text in Your Chart

.


 Property
  |
 Description
  |
| --- | --- |
|
 Use Scale Format
  |
 When this box is checked, hover text uses the same formatting set for scale values in the chart.
  |
|
 Hover Format
  |
 Determines the type of number formatting found in scale values. You can customize the actual symbols used in values in the
 **Number Format**
 properties (see the next section for more information).


**Number**
 — Numbers appear without currency or percentage symbols. (Default)


**Currency**
 — Affixes a "$" to scale values.


**Percentage**
 — Affixes a "%" to scale values.
  |
|
 Divide Value By
  |
 Refers to the number that values in hovers are to be divided by, if any. This option is useful when the values in your chart are very large and you want to abbreviate them by dividing by a common number. For example, if all of the values in the chart represented millions of dollars, you could choose to divide by millions—all of the values in hovers would then be reduced to more manageable single digits. When you choose to divide by
 **Percentage**
 , values in hovers are multiplied by 100. This is especially useful when your values are in decimal format and you want them to appear as percentages.
  |
|
 Decimal Places
  |
 Determines the number of decimal places used in decimal values in hovers. You can choose from
 **Default**
 ,
 **None**
 , and options for numbers of decimal places (from ".0" to ".00000").
  |
|
 Negative Numbers
  |
 Determines the format for negative numbers in hovers. If you select
 **-100**
 , all negative numbers have a minus symbol affixed. If you select
 **(100)**
 , all negative numbers are enclosed in parentheses.
  |

*To format values in Chart Properties,**

. Open the Analyzer for the chart you want to edit.
2. In
 **Chart Properties**
 , mouse over the desired category to display the options in that category.
3. Make the changes you want.

*Tips for converting numbers into percentages:**

 The easiest way to convert numbers into percentages is by selecting the desired percentage option in the column options dialog. This converts
 *all*
 values in your chart (except for summary numbers) into percent format. You can choose whether percent values appear as is (for example, "10" becomes "10%") or the values are first multiplied by 100 (for example, ".1" becomes "10%"). You can then make any property changes to your percent values in
 **Chart Properties**
 .
* If you plan to use
 **Chart Properties**
 entirely, without applying universal value formatting in the column options dialog, the following tips may be of use:

+ Ensure that your data column values use a "x.xx" format. For example, if you wanted a number on your value scale to read "40%," that value would read as ".40" in your DataSet.
	+ Convert your data label values into percentages by selecting
	 **Percentage**
	 under
	 **Label Format**
	 in the Chart Properties.
	+ Convert decimal values into percentages by selecting
	 **Percentage**
	 under
	 **Divide Scale By**
	 in Chart Properties You can then append percent values by changing the number format to a percentage, as described above. However, it is
	 *not*
	 recommended that you perform these steps in reverse order.
	+ Use Beast Mode to transform column values into percentages. You can use the calculation

 CASE WHEN `value2` > 0 THEN `value1` / `value2` ELSE 0 END

 to prevent zero values being divided by zero. For more information about Beast Mode, see Transforming Data Using

 Beast Mode

 .


