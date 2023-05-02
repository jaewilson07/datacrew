

Intro
-------

Use the Domo PowerPoint plugin to pull Domo Cards into a PowerPoint presentation. This plugin provides much more power and flexibility than the other available methods for showing Cards in PowerPoint.

*Notes:**


* The Domo PowerPoint plugin can be used
 *only*
 in PowerPoint on Windows machines

and is only supported by Office 2000 and later.
* Multi-factor verification is
 *not*
 available for the PowerPoint plugin.
* This plugin can be used by Admin-, Privileged-, and Editor-level users by default.

To enable Participants to access Tool Downloads and obtain this plugin, please contact Support.


**Video - PowerPoint Plugin**


###
 What you can do with the plugin

Using this plugin, you can do all of the following:

 Connect to the server for the desired Domo instance.
* Create a template for displaying Cards in your presentation. You can include or exclude attributes such as Card title, summary number, description, owner name, last modify date, and so on.
* Specify the page in Domo that Cards are being pulled from.
* Refresh the Cards in a presentation.
* Specify the types of Cards that are pulled into Domo (Visualization Cards, document Cards, custom Apps, etc.).


###
 Downloading the plugin

You can download the Domo PowerPoint plugin in the Admin Settings.


**To download the Domo PowerPoint plugin,**

. In Domo, navigate to
 **Admin Settings**
 .
2. Select
 **Tool Downloads**
 .
3. Scroll down to the
 **Domo PowerPoint plug-in**
 section.
4. Click
 **Try the PPT Plug-In**
 .
5. After the plugin finishes downloading, follow the steps in the wizard to install it to your computer.

The plugin will now be available when you open PowerPoint.

##
 Sequence of steps

The process for using the plugin to pull Domo Cards into PowerPoint can be summarized as follows:

. **Connect to the server**
 for the Domo instance you want to pull Cards from.
2. **Set up a template**
 to control how Cards will appear when pulled into PowerPoint.
3. **Download the Cards**
 from the desired Domo page or subpage into PowerPoint.
4. After your presentation is saved, you can
 **refresh the Cards**
 as necessary to keep the data up to date.

Parts of the Domo tab in PowerPoint
-------------------------------------

After you have installed the Domo PowerPoint plugin, a
 **Domo**
 tab appears near the end of the main tab row in PowerPoint. This tab appears as follows:

The following table describes the components of this tab:


 Component
  |
 Description
  |
| --- | --- |
|
 Connect to Domo
  |
 Lets you connect to a specified Domo instance.
  |
|
 "Templates" Options
  |
 Let you choose whether one, two, or four Domo Cards appear in the currently selected slide.
  |
|
 "Custom Layout" Options
  |
 Let you include various layout items in the currently selected slide.
 **Visualization**
 adds a single-Card visualization layer to the slide. All of the other options add macros for swapping in text. For example, if you clicked
 **Owner Name**
 , a text macro reading "@DomoOwnerName-1" would appear under the visualization layer. This would then be replaced with the actual Card owner's name when the Card was pulled into Domo.
  |
|
 Clear All
  |
 Deletes all layout attributes from the currently selected slide (including visualization layers).
  |
|
 Choose Page
  |
 Lets you specify a page in Domo from which to retrieve Cards. The wizard populates with all pages you have access to.
  |
|
 Refresh Cards
  |
 Refreshes all of the Cards in this PowerPoint presentation, updating the underlying data as necessary.
  |
|
 Settings
  |
 Lets you specify the types of Cards that are pulled from Domo into PowerPoint. You can choose Visualization Cards (here called "Chart Cards"), document Cards, table Cards, or custom Domo Apps. Here you can also turn Domo watermarks (Domo's logo on rendered Card images) on or off. Be aware that this option requires a contractual agreement with Domo that allows for white label usage of this tool.
  |
|
 Help
  |
 Provides basic instructions for using the Domo PowerPoint plugin.
  |

Connecting to a Domo server
-----------------------------

You can connect to the server for any Domo instance for which you have access.


**To connect to a Domo server,**

. Click the
 **Connect to Domo**
 button on the left side of the Domo tab in PowerPoint.

A dialog appears requesting that you add a connection.
2. Click
 **Add**
 .
3. Enter the URL for your Domo server in the field, then click
 **Next**
 .
4. Enter your Domo credentials in the fields, then click
 **Next**
 .

If you have entered your credentials correctly, a "Success" dialog appears. In addition, an access token is created within Domo. For more information about access tokens, see

Managing Access Tokens

.
5. Click
 **Finish**
 .

Setting up a Card template
----------------------------

Before pulling Domo Cards into PowerPoint, you must set up a template for them. The plugin pulls all Cards from a page and allocates them according to the template in the currently selected slide. For example, if you select a slide with a four-Card template then choose a Domo page with 32 Cards, those Cards would populate the next eight slides in your presentation, with four Cards appearing per slide as per your template.


 You can also insert text macros for swapping in Card text attributes such as title, description, owner name, and so on. When the Cards are pulled in, the real text will replace the macros you have inserted. All macros are prefaced with a @ symbol and are thus easily identified.


 You can edit Domo Card layout items just as you can any other elements in PowerPoint. For example, you can add text, move elements around on a slide, and so on.


 This section discusses the various options available for setting up Card template layouts.

##
 Specifying the number of Cards in a slide

You can specify whether one, two, or four Cards is added to a template. You do this by clicking
 **Single Card**
 ,
 **Dual Card**
 , or
 **Four Cards**
 , respectively, in the Domo toolbar. If you click one of these options in a blank slide, a visualization layer is added to the slide, divided into the specified number of Card templates. If you click one of these options in a slide that already contains a template, that option replaces the current template. For example, if the slide contains a two-Card template and you click
 **Four Cards**
 , the four-Card template replaces the two-Card template.


 The single-Card and two-Card templates come with preinserted text macros for swapping in text. You can move these, remove them entirely, or add different ones if desired.


 The single-Card template includes macros for the Card title, summary number, description, owner name, and last update date, as follows:

The dual-Card template includes macros for the titles, summary numbers, owner names, and last update dates for both Cards, as follows (note that description text macro does not appear by default):

The four-Card template does
 *not*
 include preinserted text macros; however, you can insert these manually using the
 **Custom Layout**
 options. These are described in the next section.

##
 Inserting text using Custom Layout macros

For any Card template, you can insert macros for Card attributes such as title, description, owner, etc. As described above, when you pull Cards into Domo, the real attribute text replaces the macros.


 The following macros are available:


 Macro
  |
 Description
  |
| --- | --- |
|
 Card Title
  |
 The title of this Card as it appears in Domo. For more information about setting Card titles, see

Editing the Name or Description of a Visualization Card

.
  |
|
 Summary Number
  |
 This Card's summary number as it appears in Domo. For more information about configuring summary numbers, see

Configuring Your Chart Summary Number

.
  |
|
 Description
  |
 The description of this Card as it appears in Domo. For more information about adding or editing a Card's description, see

Editing the Name or Description of a Visualization Card

.
  |
|
 Owner Name
  |
 The name of the Domo user who owns this Card. For more information about Card ownership, see

Changing a Card Owner

.
  |
|
 Data Last Updated
  |
 The date when the data in this Card was last refreshed. For more information, see

Updating or Refreshing the DataSet for a Visualization Card

.
  |
|
 Card Last Modified
  |
 The date when this Card was last edited. For more information, see

Understanding Cards

.
  |

The other option in this list,
 **Visualization**
 , is not a text macro. This is the macro that pulls in the actual content for a given Card. These macros appear in the following format: @DomoVisualization-
 *x*
 , where
 *x*
 is the number corresponding to this visualization on the slide. This is important because all text macros also end with a number, which matches the number of the corresponding visualization. So, for example, if you had a four-Card template, the visualizations would be numbered 1 through 4. If you then inserted an
 **Owner Name**
 macro, it would appear as follows:

@DomoOwnerName-1.

Then, if you were to pull in Cards for this slide, this macro would be replaced by the name of the owner for

@DomoVisualization-1
 *.*

Make sure you match up your text macros with the correct visualizations, or you could end up with Cards paired with the wrong attributes!


**Tip:**
 You can quickly add macros with incrementing numbers (


 @DomoOwnerName-1, @DomoOwnerName-2,

etc.)

by


 repeatedly clicking the button for that macro.

##
 Removing everything from a slide

You can quickly remove all visualization layers and macros from a slide by clicking
 **Clear All**
 in the Domo tab.


 Pulling Cards into PowerPoint
-------------------------------

After you have set up a Card template as described in the previous sections, it is time to pull Domo Cards into PowerPoint based on your template. You do this by clicking
 **Choose Page**
 then following the steps in the wizard.


**Note:**
 When pulling Domo Cards into PowerPoint, make sure you have selected the slide containing your template. Otherwise one card is allocated per slide.


 Before doing this, you may want to specify the types of Cards pulled into PowerPoint when you import. Currently the following types of Cards can be pulled from Domo into PowerPoint:

 Visualization Cards ("Chart Cards")
* Table Cards
* Document Cards
* Custom Domo Apps
* Sumo Cards (only pulls Sumo table data, not Card attributes such as colors, etc.)

Poll Cards and Notebook Cards
 *cannot*
 be pulled into PowerPoint at this time.


 You can select and deselect the types of Cards pulled into PowerPoint from Domo in the
 **DomoOffice**
**Settings**
 dialog, which you can access by clicking
 **Settings**
 in the Domo tab. For each type of Card, you can toggle it on ("Enabled") or off ("Disabled"). For example, in the following screenshot, all Card types are enabled and will be pulled into PowerPoint upon import
 *except for*
 custom Domo Apps.

Once you have set up your templates and established the types of Cards to be pulled, you can select the page with Cards to retrieve. You do this in the
 **Get Cards**
 dialog, which you can access by clicking
 **Choose Page**
 in the Domo tab. This dialog lists all Domo pages and subpages you have access to.


**To download Domo Cards into PowerPoint,**

. Select the PowerPoint slide that contains the template you want to base your Cards on.
2. Click
 **Choose Page**
 in the Domo tab.
3. Scroll down to navigate to the page or subpage you want, or filter the list using any of the filters at the top of the dialog.


 The first filter lets you filter by entering the name of the desired page; the second filter lets you choose from parent pages; and the third filter lets you filter by page owner.
4. Once you find the page you want to import from, select it then click
 **Next**
 .


 All of the Cards of the type(s) you enabled in
 **Settings**
 are downloaded.
5. Click
 **Create Slides**
 .


 The Domo Cards you have downloaded are inserted into the slides in your presentation.

Refreshing Domo Cards in a presentation
-----------------------------------------

You can refresh a presentation with Domo Cards. When you do this, all Cards in the presentation are updated to show the most recent data.


**To refresh a presentation with Domo Cards,**

. Click
 **Refresh Cards**
 in the Domo tab.

All of the Cards should update to show their most recent data.


 Troubleshooting
-----------------

Several users have reported an issue in which Microsoft disables the plugin after a crash; hence the plugin is still installed but is in a disabled state, so the
 **Domo**
 tab doesn't appear. Reinstalling the plugin leaves it in the disabled state. Below are instructions to re-enable the plugin.


**To re-enable the PowerPoint Plugin**
**,**

. Open PowerPoint.
2. Select
 **File > Options**
 .
3. Select
 **Add-ins**
 .
4. In the
 **Manage**
 dropdown, select
 **COM Add-ins**
 , then click
 **Go**
 .
5. Check the box next to
 **Domo PowerPoint**
 then click
 **OK**
 .

If the box is already checked and the
 **Domo**
 tab still doesn't appear, make sure you don't have multiple versions of the plugin installed. You can remove extra instances by doing the following:

. In the Windows Control Panel, go to
 **Add/Remove Programs**
 .
2. Remove all instances of "Domo PowerPoint."
3. Reinstall the plugin.

*Reauthorizing Server Connections:**


 When you trying to reauthorize a connection for a server of your connections,


 there is a user that is getting the following error in PowerPoint using the plugin-in:


**Case 1:**


 Error getting the user from '.

domo.com

'.


 Please reauthorize this account.


 or


**Case 2:**


 There was a problem authenticating with '.

domo.com

':


 Could not find an associated user in '.

domo.com

'


 If you face this issue after reauthoring a connection for a server of your connections,


 Below are instructions to re-reauthorize your account using the plugin.


 To re-enable the PowerPoint Plugin,


 1. Open
 **PowerPoint**
 . Select
 **Domo**
 >
 **Connected**
 .


 2.
 **Delete**
 your account. Then click
 **Close**
 and
 **PowerPoint**
 .


 3.
 **Restart**
 your PC.
 **Open**
 PowerPoint.
 **Re-Connect**
 to a Domo server.

