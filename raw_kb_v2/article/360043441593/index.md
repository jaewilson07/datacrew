

Intro
-------

Have you ever wanted to better understand how Publication Groups actually work? This document is intended to give you concrete information on this fascinating topic. To best describe the latest and greatest in publication groups, let’s break down our product functionality and options by use case.


 Internal Publication Groups
-----------------------------


###
 Use Case

For internal situations, publication groups function as a filter on data depending on a segment that a particular internal user belongs to. For example, a sales manager may want each salesperson or group to see data for their sales regions or accounts only, but doesn’t want to duplicate, modify or maintain separate pages for each individual. In this case, each salesperson would be a member of the sales publication group with either privileged or participant level access.

##
 Setup

Setup is done by navigating to
 **Admin > Pub Groups**
 then selecting pages that should be filtered. From there, you can add and edit relevant data sources based on the use case. Remember that data will be filtered at the row level within that dashboard based on data keys that you select (territory, rep name, or geography as shown in the screenshot).

You can then add individual users or user groups to the publication group and filter their access on the data source columns you’ve selected to “all” or to individual values.


###
 Results

The selected pages in the example are filtered at a data source/dataflow level with the appropriate data only.  In our example, the sales data will filter based on a rep or team column in the data and display the applicable data by team or individual in the cards. It’s important to note that internal publication groups do not take away access to any normal functionality. Page and card features remain the same for all users.  Users can still perform the all the same actions as expected, such as applying filters on a page, and drilling into a card. Buzz, alerts and other functionality are still enabled in the instance for users.


 Sales Group A view:

Sales Group B view:

A few other important caveats:

 Administrators will still have access to all the data sources. In our example, if we wanted to limit data source access for users, we would need to ensure that all sales reps had only privileged or participant level access.
* Publication group access control is different than card access. A user doesn’t get access to cards and data sources that are part of the publication group because publication groups use independent access control.  I can’t share or copy cards and pages even though I may be admin on the instance.
* As of this writing, alerts are a challenge with publication groups. Privileged and participant users still have alerts and favorites but these users can’t add alerts themselves to the filtered cards.  They can only consume alerts that admins create.  These users would have to go to alerts tab to subscribe if they are following the person who created the alert.  Note that the alerting engine does not honor the filtering system at this time. Users that subscribe to any alerts will receive alerts for the whole card’s data set, not just the filtered view.
* There is no UI indication that a page is filtered through Publication Groups – admin may consider some indication to the user that a given page is filtered through Publication Groups, such as “This page is filtered to show only your sales region”).
* Users cannot reorganize or change the size of cards on a publication group page.

External Publication Groups with SSO (a.k.a. SAAS/SAAS)
---------------------------------------------------------


###
 Use Case

In this use case, the Publication Group is used to disseminate tightly controlled information to a Domo customer’s own clientele. Common examples include agencies or a professional services group. Typically, the administrator does not want individual end users, groups, or external clients to be aware of, collaborate, or interact with each other. For example, an agency may wish to share a pre-formatted paid search results page with similar cards for all 200 of its end user clients. The agency’s goal would be to allow end user clients to safely and securely log in and consume the real-time data without an awareness that other clients exist.

##
 Setup

The only way to completely secure external publication groups is to enable SSO and force end clients to log into Domo through SSO. For clarification, there are two types of SSO:

 Authentication into Domo through SSO
* Authentication into publication groups through SSO (SAAS/SAAS SSO)

These are completely separate processes. When we refer to external publication groups SSO, we are referring to the latter. We won’t go into SSO implementation details in this post. However, you can find the setup screen by navigating to
 **Admin > Security > Pub Group SSO**
 (not Single Sign-On).

##
 Results

When Publication Groups SSO is properly enabled and configured, the end user/client won’t technically be a user inside of the Domo instance at all. The end client has logged into the

customername-ss.domo.com

part of the instance only.  Therefore, data applicable only to that end user is served in a completely secure and customized manner. End users will not be able to access other end clients’ data. However, many of the other compelling features of Domo are disabled completely for external publication group participants. End users won’t have access to most normal instance functionality including alerts, favorites and the overview page. Buzz and Search are disabled. The end client will only see the designated page(s), and white labeling will happen automatically.


 Other details about this use case:

 SSO can handle external groups or emails such as Hotmail, Gmail, etc.
* Elements used for matching users within a Publication Group:

+ Name
	+ Domo user group
	+ Email

External Publication Groups without SSO (Middle Ground)
---------------------------------------------------------


###
 Use Case

As often happens, our customers (the agency) may not have viable resources, means or interest to setup and enable an SSO access control program. Domo does have a third option, or middle ground between an internal and secure external use case.  This third option will hide the UI and evidence of other clients in the instance. If end clients are participant users in an applicable publication group, most of the same functionality as described in use case two still applies, minus a few caveats that will be described below.

##
 Setup

The end user/client should be set up as a participant and part of a publication group as mentioned above. The administrator (Domo customer) will also configure filters on the data sources as described above. End clients will still log into a

customer-ss.domo.com

instance but without SSO authentication. If they are not invited to other cards, pages, and data sources, the UI will be clean. Features like Projects and Tasks, Buzz, and Search will be disabled.

##
 Results

The end user will login to a typical

customer-ss.domo.com

domain and has access to customized data in the cards/pages that only pertain to that end user. However, in this case, the end user has an actual user account in the instance. Therefore, that end user could still navigate to

customer.domo.com

and have access to certain Domo features that SSO option prevents. If the end user stays within the bounds of the


 –

ss.domo.com

UI and only has participant level access, that end user won’t discover other end users. Projects and Tasks, Buzz, and Search will be disabled. Favorites and Overview pages exist but are not editable or configurable by end users. Be aware that end users/clients with technically savvy IT groups can find a way around existing safeguards. Therefore, our direct customers (the agency in this example) need to be aware of the drawbacks of this option. The customer should consider a system like Okta that can be deployed for user management.


 Other Publication Group Capabilities
--------------------------------------

Publication group administrators can select user groups and also add ANY email account.


 Within the data sources configuration in publication groups, name has been the default value. Administrators can now use group and email without any filters as long as email is a column in the data source.


 For additional information, visit

Setting Up Publication Groups

.

