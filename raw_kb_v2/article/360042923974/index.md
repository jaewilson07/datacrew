

Intro
-------

In the Details view for a Visualization Card, you can add annotations (explanatory notes) to data points in the graph to provide context for your viewers. Each annotation appears in an
 **Annotations**
 sidebar, with a colored flag that allows users to quickly match the annotation with its associated data point. To add chart annotations, you must have a default security role of "Editor" or above or a custom role with "Edit Cards" enabled.


 The following screenshot shows an example of an annotation with its matching flag.

If you mouse over an annotation in the sidebar, the corresponding data point is highlighted.


 You can add annotations to as many data points in the graph as you want.


 Chart annotations become a permanent part of a Card when they are added. So if you leave the Card then come back, the annotations will persist. Likewise, if another user opens the Card, they will also see those annotations.


 If you change the date grain for a Card with date annotations, the annotations are matched with the data point closest to the original data point. For example, let's say a chart was set to a "Monthly" date grain and you added an annotation to the data point for the month of November. If you then switched to a weekly date grain, the annotation would be matched with the weekly data point closest to November 1st.


 Chart annotations are different from "snapshot annotations." Snapshot annotations allow you to draw on a card, add simple shapes and text, and so on. For more information, see

Taking Snapshots of Cards

.

*Video - Card Details - Chart Annotations**

Example
---------

As an example, let's say that the company "Wetter Water" has taken on a new Marketing manager, Hannah Jukes, to oversee all future social media marketing efforts. As a brand new member of the organization, Hannah wants to know about past social media marketing efforts and the revenue they have brought into the company. To this end, one of her coworkers, Juan, shares with her the following Card:

This Card is useful for showing the total revenue received per month, but it doesn't give Hannah any context into
 *why*
 some months were more or less successful than others. Without this information, Hannah can't get a feel for which campaign strategies have worked in the past and which fell short of expectations. She shares her frustrations with Juan. Luckily, he knows just what to do to provide the proper context for Hannah. He adds
 *chart annotations*
 to the bars for those months in which marketing revenue exceeded or fell below expectations. As shown below, for each data point with an annotation, a colored flag with a letter appears to indicate the annotation. A sidebar also opens when the chart includes annotations, with each annotation appearing with its corresponding flag so viewers can associate annotations with their given date elements.

These notes help Hannah understand why things played out the way they did. For example, noting that the month of October fell below the $60 million mark, she locates the corresponding annotation in the sidebar, which indicates that the Twitter campaign for the month was successful but got off to a late start. Based on this information, Hannah deduces that it might be worth trying a similar campaign in the future.


 Adding Chart Annotations
--------------------------

You add chart annotations in the Details view (
 *not*
 the Analyzer view) for your chart. Chart annotations are available for most chart types (with a few exceptions such as Calendars, Gantt charts, etc.) For more information about applying columns, see

Applying DataSet Columns to Your Chart

.


**To add chart annotations to your chart,**

. Open the Details view for the chart you want to annotate.
2. Select

*> Create Chart Annotation**
 .
3. Mouse over the element (bar, line, etc.) in the chart you want to annotate.


 When you mouse over an element, a line appears with a flag to let you know the annotation will be applied to this element.
4. Click the line for the element you want to annotate.


 A dialog appears in which you can enter the annotation and choose a flag color.
5. Enter your annotation in the field.
6. (Optional) To change the flag color for the annotation, select a different color in the
 **Choose a color**
 menu.
7. Click
 **Save**
 .


 The annotation appears in the sidebar, and a corresponding flag appears over the annotated element in the chart.
8. (Optional) Repeat the above steps to add more annotations if desired.

Note that when you add additional annotations, the automatic lettering for the flags updates automatically. So when you have just one annotation in your chart, that annotation will be denoted using the letter "A." If you then add a new annotation, that annotation becomes "A" and the original one becomes "B," and so on. Also note that annotations appear in your sidebar in reverse chronological order, with the annotations for the most recent dates showing up first.


 Hiding Annotations
--------------------

You can hide chart annotations, which closes the sidebar and hides the flags. This change does not persist when you close the Card. Likewise, if any other users open your Card, the annotations are not hidden.


**To hide chart annotations,**

. Open the Details view for the chart.
2. Select

*> Hide Chart Annotations**
 .

The sidebar and flags are hidden.

