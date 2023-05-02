

Intro
-------

After you configure routing, creation, and mapping in the publishing organization and choose your interface settings with Brand Kit, the next step is publishing or embedding your content so others can view it. To learn more about publishing content to subscribers, see

Publishing Content to a Subscriber Organization

.


 Embedding content is a premium feature that is available on demand. You can embed Domo content within any website, application, or portal. Contact your Customer Success Manager (CSM) to request the feature be enabled.


 This article describes the embed methods and provides information on embedding cards and dashboards using each method.

*Note:**
 Programmatic DataSet Switching is now available. To learn more, see

DataSet Switching

in the developer documentation.

Embed Methods - Public and Private
------------------------------------

There are two main ways to embed content: public and private.

###
 Public Embed

*Important:**
 Due to security reasons, the option to embed content
 **PUBLICLY**
 is not available for HIPAA-compliant Domo instances. The
 **PRIVATE**
 embed options are available.


 You can embed publicly on websites, blogs, or social media platforms such as Facebook and Twitter. Anyone with the URL can view the content.


 This public content is view-only, does not support Alerts, and, since it does not require any viewer to log in, does not support Personalized Data Permissions (PDP).


 You can enable and disable public embedding in
 **Domo Everywhere**
 >
 **Settings**
 >
 **General**
 by checking or unchecking the box for
 **Allow public embedding of Cards and Dashboards**
 .


####
 Private Embed

You can embed privately in websites, portals, or applications. There are three options for privately embedding content, detailed below.


**User-Based**
**—**
 Supports Single Sign-On (SSO) and Personalized Data Permissions (PDP).


 User licenses are created in Domo, and PDP policies apply to the known users for row-level entitlement policies.


 This option is the easiest to configure from a technical standpoint but can be difficult to manage for large quantities of users with varying Filters and permissions. Recommended for small, consistent user groups.


 To implement, purchase user licenses.


**Server-Based**
**—**
 Uses programmatic server-side filtering. The environment that hosts the Domo embedded content is authenticated against Domo and programmatically determines what Filters to apply. The Filter requests are then sent to Domo when the embedded content is displayed.


 This option provides the greatest flexibility and works fell for large or transient user groups, but carries a higher technical debt. It requires a developer to create and maintain the programmatic Filters.


 To implement, purchase impressions (or card loads).


 For more information, see

Embed

in the Domo developer docs.


**Platform-Based**
**—**
 Supports SSO and PDP. Completely editable experience.


 This option is easiest to build and deploy full data experiences to your customers using the Domo platform.


 To implement, purchase a platform package that includes a Domo environment for every customer you want to deliver content to.

###
 Notes

For both public and private user-based embedding, copy the automatically generated HTML string from Domo and paste it into the necessary location on the website, blog, etc. as an iFrame or via a JavaScript API. This feature enables you to share business data in a consumable, interactive, and accessible way.


 For all privately embedded content:

 Users with a Social role cannot embed, create an iFrame, or view privately embedded content.


 Participant users cannot embed, but can view privately embedded content.
* All card types are supported except Sumo pivot tables.
* Notebook and Doc Cards cannot be embedded on their own, but can be embedded as part of a dashboard.

For private user-based and platform-based embedded cards or dashboards (this does not pertain to server-based):

 You must enable SSO (Single Sign-On) in Domo as well as in the website, portal, or application.

+ If the
	 **Only Invited People Can Access Domo**
	 option is enabled in
	 **Admin Settings > SSO**
	 , any non-Domo user attempting to access the card are denied.


	 If this option is disabled, a non-Domo user is auto-provisioned based on the access rights set for default users. The default setting is "Privileged."


	 For more information about access rights, see

 Controlling Access in Domo

 .

For publicly embedded content:

 Titles, drill down, Summary Number, and the chart picker are all available when embedding cards publicly; however, Filters are only available for columns used in the card. For security reasons, the end-of-card table view is not available with this feature.
* If you do not want your employees to embed cards publicly, you can disable the functionality by going to
 **Admin Settings > Company Settings > Company Overview**
 . U

ncheck the box for
 **Publicly embed content**
 .

You can get an administrative view of embedded content using the

Activity Log

.


 If you need further assistance to choose the right embed method, contact your Account Executive (AE) or Customer Success Manager (CSM) to discuss the best option for your use case and organization.


 Enabling Domo Embed
---------------------

To enable Domo Embed, a user with an Admin default security role or a custom role with the Embed Cards grant must go to
 **Admin Settings > Company Settings > Company Overview**
 , and check the box for
 **Publicly embed content**
 .

*Important:**
 This is a 30-day free trial. At the end of the first 30 days of use, your Domo account representative will reach out to you to discuss pricing.

Authorized Domains
--------------------

To help keep your data secure, and only displayed in the places you want it, you can use Embed Authorized Domains to place domains on an allowlist. Domains on the list can embed content and receive events via the JS API. To learn more about this, see the

Domo developer docs

. If content is placed in a domain that is unauthorized, it does not load.

*Important:**
 If you do not add any domains to the allowlist, cards and dashboards can be embedded in any domain, but the JS API and loading all of Domo are blocked.

1. To add authorized domains, go to
 **Domo Everywhere**
 >
 **Settings**
 .


 2. In the
 **General**
 tab, locate
 **Embed authorized domains**
 and enter a
 **Domain name.**


 3. Select
 **Add**
 .


 The list of authorized domains displays below the
 **Domain name**
 field.

*Video - Domo Everywhere: Embed Overview**


 Embedding Cards
-----------------

When embedding cards individually, note that you can embed multiple cards on a dashboard, but you will need to generate code for each card independently.


 For individually-embedded cards, you can choose whether or not to include card features regularly available in the

Details view

, including all of the following:

 Card title
* Ability to drill down into the Card
* Allow Export
* Ability to access the data table

(private Cards only)
* Summary Number
* Ability to apply and change filters

(private Cards only)
* Ability to change the chart type using the Chart Picker

You can also set the size of embedded cards, either by choosing a preset size or entering a custom width and height.

###
 Embedding a Card

Access the embed option for a card by selecting

*Card options**
 >
 **Domo Everywhere**
 .


 The embed card modal displays.

The following image points out the components of the Domo embed modal for a card.

You can use the following table to learn more about the parts of the modal.


 Component
  |
 Description
  |
| --- | --- |
|
 Display options
  |
 Let you toggle certain card features on or off in the embedded card. The following toggles are available:
 * **Show title —**
 Toggles the card title.
* **Allow drill —**
 Toggles

drill capability

.
* **Allow export —**
 Toggles the ability to export the card.
* **Allow table view —**
 Toggles the ability to open the

data table

for the card. When this option is enabled, a grid icon

appears at the top of the card. Viewers of the embedded card can open the data table by clicking this icon. Available for privately embedded cards only.
* **Show summary number —**
 Toggles the

Summary Number

for the card.
* **Allow filter changes —**
 Toggles the ability to set or change

filters

for the card. When this option is enabled, a funnel icon

appears at the top of the card. Viewers of the embedded card can toggle the filter options by clicking this icon. Currently available for privately embedded cards only.
* **Allow chart picker —**
 Toggles the ability to change the

chart type

. When this option is enabled, a pie graph icon

appears at the top of the card. Viewers of the embedded card can open the chart picker by clicking this icon.
 |
|
 Sizing options
  |
 Allows you to set the size of the embedded Domo card.


 Three default sizes are available:
 **Square**
 (600 x 600 pixels),
 **Portrait**
 (600 x 900) pixels, and
 **Landscape**
 (900 x 600 pixels).

There is also a
 **Custom**
 option, which allows you to set your own custom width and height.
  |
|
 Preview
  |
 Displays a preview of the card with the size and option settings you have applied.


 You can interact with this preview just as you can with the embedded version of the card. For example, you can change the chart type, drill into the card (if drill is enabled), toggle series items by clicking them in the legend, and so on.
  |
|
 Embed options
  |
 Let you specify whether this card is to be embedded privately (default) or publicly.


 If you choose to make a card public, anyone on the web will be able to view it and the displayed data. This also gives Domo permission to publish the card as part of a public card newsfeed.


 When you choose the
 **Public**
 option, a URL is generated (under
 **Share link**
 ), which you can then copy and paste into the desired website, blog, social media platform, etc. You may also directly open any of five social media platforms (Facebook, Twitter, Google+, LinkedIn, or Pinterest) so you can embed the card immediately.
  |
|
 HTML string
  |
 Displays the automatically generated HTML string that you copy and paste into the website, portal, or application. You can copy the HTML by clicking the

button to the right of the HTML string.
  |


**Embedding a Card Publicly**

1. Navigate to either the dashboard where the card displays or the Details view for the card.


 2. Select

*Card options**
 >
 **Domo Everywhere**
 .


 The embed card modal displays.


 3. Set the card size:


 Select a preset size for the embedded Card in the
 **Default Size**
 menu OR


 Select
 **Custom**
 and enter the desired dimensions in the
 **Width**
 and
 **Height**
 fields in pixels.


 4. Check the boxes for all the
 **Display options**
 you want to include in the embedded card.

*Note:**
**Allow table view**
 and
 **Allow filter changes**
 are not currently available for publicly embedded cards.

5. Select
 **Publicly Available**
 from the
 **Embed Options**
 list.


 6. Select
 **Make Public**
 .


 7. Select

*Copy**
 to copy the automatically generated URL.


 8. (Conditional) To embed the card in any of the following five social media platforms—Facebook, Twitter, Google+, LinkedIn, or Pinterest—select the icon for the desired platform, log in if necessary, and paste the URL as required by the platform. Otherwise, open your website or blog and paste the URL as necessary.

*Embedding a Card Privately**

1. Navigate to either the dashboard where the card displays or the Details view for the card.


 2. Select

*Card options**
 >
 **Domo Everywhere**
 .


 The embed card modal displays.


 3. Set the card size:


 Select a preset size for the embedded Card in the
 **Default Size**
 menu OR


 Select
 **Custom**
 and enter the desired dimensions in the
 **Width**
 and
 **Height**
 fields in pixels.


 4. Check the boxes for all the
 **Display options**
 you want to include in the embedded card.


 5. Select
 **Private**
 from the
 **Embed options**
 list.


 6. Select

*Copy**
 to copy the HTML to embed.


 7. Paste the HTML into the website, portal, or application where you want the card to display. The specific instructions for doing this will vary depending on the website, portal, or application.

*Important:**
 The cards and dashboards must be shared with the users accessing the embedded content in order for them to be able to view it.

*Using the JavaScript API for Filtering Embedded Cards and Dashboards**


 Please visit

Embedded Analytics

in the developer docs for code examples in using the JavaScript API for filtering embedded content.


**Tracking Publicly Embedded Cards**


 You can keep track of all publicly embedded Cards in your Domo instance in
 **Admin Settings > Domo Everywhere**
 . You can see information such as embed creator, current embed link status (public or disabled), number of public views, and so on. You must have an Admin security role or a custom role with the Embed Cards grant to see this tab.

*Whole-Page Filtering**

With individually embedded cards, there is more flexibility for format and layout than on a Domo dashboard. The Whole-Page Filtering feature allows you to use the power of the Filters from Domo dashboards for embedded cards in your

authorized domains

. Create Filters for your use cases and apply the Filter parameters to every embedded card on your page.


 In the image below, the
 **Country**
 Filter is applied to each individual embedded card to see the data on confirmed Covid-19 cases, currently infected, deaths, and cumulative trend for Greenland and Greece.


**Video - Embed a Domo Card**

Embedding Dashboards
----------------------

For Domo dashboards, you can choose whether or not to include the following options:

 Dashboard title
* Show Filter bar
* filtering
* Export of the raw data of each Card to CSV
* Persist filters

, which automatically append pfilter parameters to the end of any custom interaction links
* Opening of links in a new tab


####
 Embedding a Dashboard

If you are a Domo Everywhere Embed customer, you can embed any Domo dashboard.


 From the dashboard you want to embed, select
 **Share**
 >
 **Embed Dashboard**
 .


 The embed dashboard modal displays.

*Note:**
 With dashboard embed, you can only embed using an iFrame, not a JavaScript API as you can with card embed.

The following image points out the components of the Domo embed modal for a dashboard.

You can use the following table to learn more about the parts of the modal.


 Component
  |
 Description
  |
| --- | --- |
|
 Display options
  |
 Let you toggle certain features on or off in the cards in the embedded dashboard. The following toggles are available:
 * **Show title —**
 Toggles the dashboard title. The title can be hidden if you have already labeled the content in the host page that contains the iFrame.
* **Allow interactions and filtering —**
 Allows you to enable interactions and filtering on embedded dashboard cards. You should turn off this option if you want to lock down your embedded content (usually only for public embed).


 Interactions include such actions as opening the card Details view in a new browser tab, opening a specified web page, and enabling drilling into the card. For more information about configuring interactions in dashboards, see

Creating Domo Dashboards

) or transforming the data to exclude the columns.
* **Show filter bar —**
 Toggles the Filter bar on the dashboard.
* **Allow export —**
 Allows users to export the raw data for each card in CSV format. (The
 **Export**
 button appears when users mouse over cards in the embedded dashboard).
* **Allow maximization —**
 Opens a pop-up window of the card Details view for a card. This allows you to see more detail and interact with the card such as quick Filters and allows for additional export options.
* **Persist Filters —**
 Enables persist Filters, which automatically append pfilter parameters to the ends of any custom interaction links so that the following content maintains context around Filters on this dashboard. Persist Filters are discussed in detail here:

Using Pfilters to Apply Filters from URL Query Parameters to Embedded Dashboards

.
* **Open links in new tab —**
 When users click on links in cards, they are opened in a new browser window; otherwise the new content opens within the iFrame. (The
 **Allow interactions and filtering**
 option must be checked for links to be clickable.)
 |
|
 Sizing options
  |
 Allow you to set the width and height of the embedded Domo dashboard.
  |
|
 Embed options
  |
 Let you specify whether this dashboard is to be embedded, and, if so, privately or publicly (the default option is
 **Off**
 ). If you choose to make a dashboard public, anyone on the web will be able to view its content.


 When you choose the
 **Public**
 option, a URL is generated (under
 **Share link**
 ), which you can then copy and paste into the desired website, blog, social media platform, etc. The public embed option is not authenticated so Filters cannot be personalized.


 When you choose the
 **Private**
 option, users will need to authenticate to see the embedded content. Because the private embed option uses authentication, Filters can be personalized via PDP or programmatic filters.
  |
|
 Share link
  |
 Allows you to view the embedded dashboard directly.
  |
|
 Embed code
  |
 Displays the automatically generated HTML string that you copy and paste into the website, portal, or application. You can copy the HTML by clicking the

button to the right of the HTML string.
  |
|
 Embed ID
  |
 Used in the HTML embed code in programmatic filtering, which is discussed here:

Using Programmatic Filters with Domo Embed

.
  |
|
 Export DataSet mapping
  |
 Lets you download a CSV file that lists all of the original DataSet IDs used in the cards in the Domo dashboard and maps them to obfuscated datasource IDs that can be used outside the Domo platform.
  |

*Embedding a Dashboard Publicly**


 1. Navigate to the dashboard in Domo.


 2. Go to

*Share**
 >
 **Embed Dashboard**
 .


 3. Check the boxes for all the
 **Display options**
 you want to include in the embedded dashboard.


 4. Enter the desired dimensions in the
 **Width**
 and
 **Height**
 fields in pixels.


 5. Select
 **Public**
 from the
 **Embed options**
 list.


 6. Select

*Copy**
 to copy the automatically generated URL.


 7. Paste the embed code into the website, portal, or application where you want the Domo dashboard to display. The specific instructions for doing this will vary depending on the website, portal, or application.


**Embedding a Dashboard Privately**


 1. Navigate to the dashboard in Domo.


 2. Go to

*Share**
 >
 **Embed Dashboard**
 .


 3. Check the boxes for all the
 **Display options**
 you want to include in the embedded dashboard.


 4. Enter the desired dimensions in the
 **Width**
 and
 **Height**
 fields in pixels.


 5. Select
 **Private**
 from the
 **Embed options**
 list.


 6. Select

*Copy**
 to copy
 **Embed code.**


 7. Paste the embed code into the website, portal, or application where you want the dashboard to display. The specific instructions for doing this will vary depending on the website, portal, or application.

*Important:**
 The cards and dashboards must be shared with the users accessing the embedded content in order for them to be able to view it.


**Video - How to Publicly Embed Domo Content**

Configuring Private Embed with PDP
------------------------------------

Private embed leverages Domo’s SSO to authenticate users on the Domo platform. Embedded content is then served to the end user via either the Javascript API or iFrames. You can pair private embed with PDP to serve appropriate content to end users, including external end users. If you use embed to serve content to external end users, one of two methods is preferred:

 Embed cards from a white-labeled subscriber instance. This way, if a savvy end user was to access the Domo application, they would see only a white-labeled instance (e.g. no Buzz functionality).


 To learn more, see

Publishing Content to a Subscriber Organization.
* Use Programmatic embed. When using Programmatic embed, end users are NOT actually authenticated users of Domo. Thus, end users are not able to access the Domo application. This means the portal or application code handles authentication and ensures end users see the appropriate data.


 For more information, see

Using Programmatic Filters with Domo Embed.


####
 Implementing Private Embed

1. Set up Single Sign-On (SSO).


 For more information, see

Understanding and Configuring Domo Single Sign-On Using SAML

.


 2. Enable Private embed.


 3. Set up PDP.


 For more information, see

Creating and Deleting PDP Policies

.


 4. Configure cards and dashboards for embedding.


 To see all cards and dashboards in your Domo environment that are configured for embedding, go to
 **Admin Settings**
 >
 **Domo Everywhere**
 >
 **Embed**
 .


 5. Embed cards and dashboards using iFrame or Javascript code in the portal or application.

*Important:**
 The cards and pages must be shared with the users accessing the embedded content in order for them to be able to view it.

Need Support?
---------------

If you need support with your embedded content, contact us here:

support@domo.com


* Include the following information in your request:
* Domo environment(s) where the behavior is occurring
* Description of behavior
* Screenshot of behavior (if applicable)
* Steps to recreate behavior (if known/applicable)


