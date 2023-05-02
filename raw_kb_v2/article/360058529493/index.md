

Intro
-------

The CEO View App is a powerful tool to help CEO's and other leaders get the real-time information they need to make critical decisions. The CEO View App consists of a beautifully formatted Dashboard of all the information that’s most important to them. It’s completely customizable in both content and layout to meet the needs of busy executives.

*Note:**
 This app is part of the

Get Back to Work Solution

and is available
 *on-demand and paid*
 .

To request this feature be enabled,

 Reach out to your Domo Customer Success Manager or Account Executive.
* If you do not have contact information for your CSM or AE, contact Domo Support. For information on how to contact Support, please see:

Getting Help

By downloading the Get Back to Work CEO app for iOS or Android, executives can launch straight into this powerful, customized experience from an app right on their home screen—an app designed specifically for mobile devices.


 Content and customization
---------------------------

The CEO View App can be divided into sections, each with one or more Domo Cards displayed. The title, layout, and contents of each section can be configured to the specific needs of the executive. Each Card that’s present in the CEO View App needs to be configured in Domo and shared with the executive who will use the app. Additionally, each Card in the CEO View App can have a status indicator (red, yellow, or green) to easily convey to the user whether the current data is good or bad. A short, bulleted list of action items can be added next to each chart visualization to further prompt the executive what the next course of action is given the state of the data. Lastly, each Card has a link that can be configured to link the user to more details about the data, such as a more comprehensive Dashboard.


 Configuring the app
---------------------

The CEO View App is powered by a configuration DataSet. This controls the sections, what Cards are visible, the layout, and more. This DataSet can be replaced by any other DataSet in Domo so long as the DataSet schema is the same, including DataFlow output DataSets.


###
 Adding sections

Sections are numbered sequentially in the
 *section\_number*
 column of the configuration DataSet. Each row needs to have a section number, not just the first item in the section. The first row of a new section also must have a section name in the
 *section\_title*
 column. This is the name that will be displayed at the top of each section in the CEO View App.


###
 Adding Cards

Each Card to be displayed takes up a row in the configuration DataSet. The first row of each section also includes a Card. There are two columns for Cards. The
 *notebook\_card\_id*
 column is specifically for Notebook Cards that will be displayed in the CEO View App. For the CEO View App, Notebook Cards are typically used for status updates from the various stakeholders of the major Get Back to Work initiatives. Add only the Card ID (not the URL) for the Notebook Card to this column. For chart-type Cards, put the Card ID in the
 *card\_id*
 column. As with the
 *notebook\_card\_id*
 column, the
 *card\_id*
 column must only contain the ID for the Card, and not the URL.


**Note:**
 The title column is not currently in use, but is reserved for future functionality.

##
 Status dots

In addition to displaying Cards, the CEO View App can display a color-coded status dot on each Card. These are especially useful when the relative "good” and “bad” of a metric aren’t obvious at a glance. These dots are completely configured using the
 *status\_color*
 column. The accepted values of this column are
 **red**
 ,
 **green**
 or
 **yellow**
 . If not present in the column corresponding to the Card, the status won’t be displayed.

##
 Action text

Similar to the status dots, specific action items can be configured for each card using the
 *action1*
 ,
 *action2*
 and
 *action3*
 columns. These columns are optional. These columns are useful when specific action is prescribed given the current status of the data being displayed. This is completely custom and free-form, but to preserve the style and readability of the action items, a few guidelines should be adhered to.

. The output is a bullet list of items (one item per column). Do not add a bullet or asterisk to each action item, as these will be added automatically.
2. Keep action items short. Phrases should be limited to three to five words. Some good examples: “Cases continuing to improve” or “Encourage more testing”.
3. These are action items and shouldn’t include lengthy statements that merely describe the data.


###
 Linking to Cards and Dashboards

At the bottom of each Card displayed in the CEO View App, there is an optional
 **view more**
 link that allows the user to drill to another Card or Dashboard for more details. This is configured per row of the DataSet. There are three columns reserved for linking to other Cards and Dashboards. Add a Card ID to the
 *navigate\_card\_id*
 column to jump straight to a specific Card. This is especially useful for linking directly to a Custom App. The
 *navigate\_page\_id*
 column can be used to jump over to a specific Dashboard for more details. Add that Dashboard’s Page ID to this column.

The
 *navigate\_doc\_id*
 is used to open the Briefing App. Details on setting up and configuring the Briefing App can be found in the

Briefing App

section.

##
 Formatting layout

The CEO View App has been formatted to look great on both tablets (such as iPads) and mobile phones. However, some Cards might look better with more real estate. For that, we’ve added some simple sizing to the app. To understand the sizing, it’s important to note that the default sizing is to display two Cards side-by-side (in larger screens, such as iPads). When specifying sizes, use numbers to denote how many standard blocks make up the height or width of each Card. To set the height and width of a Card, use the corresponding height and width columns in the DataSet. These columns are optional and expect an integer.

For example, to set a Card that’s normal width, but twice as tall, add a
 **2**
 to the height column and a
 **1**
 to the width column. The other Cards will attempt to flow around the larger Card proceeding from left to right and top to bottom. Be careful with your formatting, as it can sometimes lead to awkward results.


**Note:**
 When Cards are larger, more details of the Card will appear. This can be especially helpful for displaying complex, data-rich charts.


 Briefing App
--------------

The Briefing App is an important sub-section of the CEO View App, and can be used as a consumption mechanism for long-form, brief documents—preferred by many CEO's and public leaders for consuming critical data each day. With the Briefing App, standard Microsoft Word docs can be transformed into a powerful, interactive experience. The Briefing App is integrated tightly with the CEO View App.

The Briefing App helps users easily navigate between sections without needing to scroll. Previews of footnotes (including both Domo Cards as well as external links) are generated and displayed in the scrollable right-hand pane. The Briefing App gives CEO's the best experience for studying all the latest data their staff provides to keep them up-to-date.

##
 Formatting the Microsoft Word document

There are two important formatting tips to remember: Section headers and Footnotes.

For Section headers, make sure to use Microsoft's built-in header styles in Word. By simply applying these header styles, the Briefing App will automatically create section headers complete with navigation. Anytime external information is referenced, a Microsoft Word footnote should be created. The Briefing App will parse through all the footnotes and create rich content previews for each. Simply add a link to either a Domo or external resource in a footnote, and the Briefing App will generate a preview.

##
 Setting up the Briefing App

The first step in setting up the Briefing App is to upload the previously formatted Microsoft Word document to a standard Domo Doc Card. In this way, anytime the Briefing App needs to be updated, a user simply has to upload a new version of the Microsoft Word document to the same Doc Card.

Once a Doc Card is created put the corresponding Doc Card ID into the
 *navigate\_doc\_id*
 column of the appropriate row in the configuration DataSet. The Briefing App needs to be linked from a different Card in the CEO View App. It’s most common to have a short update in a Notebook Card that links to the longer, more complete, Briefing App. However, the Briefing App can be linked to from any Card in the CEO View App.

