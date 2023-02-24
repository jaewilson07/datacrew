---
title: JavaScript vs iframe in Embed
url: https://domo-support.domo.com/s/article/4404717504023
linked_kbs:  ['[https://domo-support.domo.com/s/knowledge-base/](https://domo-support.domo.com/s/knowledge-base/)', '[https://domo-support.domo.com/s/](https://domo-support.domo.com/s/)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZamqGAC](https://domo-support.domo.com/s/topic/0TO5w000000ZamqGAC)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZanbGAC](https://domo-support.domo.com/s/topic/0TO5w000000ZanbGAC)', '[https://domo-support.domo.com/s/article/4404717504023](https://domo-support.domo.com/s/article/4404717504023)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZanbGAC/domo-everywhere](https://domo-support.domo.com/s/topic/0TO5w000000ZanbGAC/domo-everywhere)', '[https://domo-support.domo.com/s/article/360043429933](https://domo-support.domo.com/s/article/360043429933)', '[https://domo-support.domo.com/s/article/360043429953](https://domo-support.domo.com/s/article/360043429953)', '[https://domo-support.domo.com/s/article/360042925494](https://domo-support.domo.com/s/article/360042925494)', '[https://domo-support.domo.com/s/article/360043429913](https://domo-support.domo.com/s/article/360043429913)', '[https://domo-support.domo.com/s/article/4408174643607](https://domo-support.domo.com/s/article/4408174643607)', '[https://domo-support.domo.com/s/login/](https://domo-support.domo.com/s/login/)']
article_id: 000004247
views: 2.396
created_date: 2022-10-24 21:35:00
last updated: 2022-10-24 22:42:00
---



Intro
-----


The use of JavaScript vs iframe for embed is a fair concern. Over the years, the main reasons some have preferred to use JavaScript in embed instead of iframes have been:


* [Customizing the appearance](#h_01FB50363EDN5PDKX7FDMDHFMF).
* [Adapting responsively across device types](#h_01FB503CWQSPR6ZD4XN8CWPD43).
* [Loading quickly across regions](#h_01FB503KA3TT8FZYCA9TAE6SC1).
* [Maintaining compatibility across browsers](#h_01FB503SHBY0NF7E13WJN803V1).


Despite the flexibility in each of these design areas, some customers still struggle with a lingering fear that iframes are somehow unsafe. That is only relevant when an iframe points to a random third-party site where the embedder has no control over the content nor relationship with the other property.  
  
Domo Everywhere iframes are safe because you have total control over all content and because we have a secure relationship across systems. Even the most sensitive finance, healthcare, and government organizations trust our identity integrations (<https://developer.domo.com/docs/embedded-capabilities/embedded-capabilities>), data access policies (<https://developer.domo.com/docs/dataset/create-personalized-data-permissions-pdp>), and server-side filters (<https://developer.domo.com/docs/embed/programmatic-filtering>).  
  
Ensuring that external users only ever see the data and content you approve is our primary commitment. After we earn your trust (<https://www.domo.com/platform/security>), the following design options have been our guiding principles as we have expanded beyond embedded cards, dashboards, apps, and even the entire power of the platform.


Customizing the appearance
--------------------------


The appearance can be customized through the custom layouts, background colors, images, and fonts that you have already used to push the capabilities of Publish to new heights. Fortunately, Embed already had quite a head start here since it has a more direct path to inheriting the experience directly from the instance where it was created. You can see this continuing to develop as we add Page filters and Page exports.


Visualization flexibility is higher than ever with [Domo Data Experience (DDX)](https://developer.domo.com/docs/ddx-bricks/ddx-bricks-overview) apps. For the few chart types that Domo does not already support, JavaScript can simply be pasted in-line and details can be edited in the context of the greater layout to avoid having to build everything from scratch.


Adapting responsively across device types
-----------------------------------------


Responsive design started as a quick test for a prospect that wanted to embed Dashboards in the Salesforce mobile app. Only a month after we built it, the functionality was really put to the test with the [Domo Covid Tracker](https://www.domo.com/covid19/daily-pulse/). 65% of our traffic there was on mobile. It pushed us to move beyond dynamically reformatting the layout to a vertical stack of Cards with the addition of the Mobile layout edit capabilities. We also added a way to dynamically resize the iframe with postmessage to avoid scroll traps. Now embed works reliably on large screens, mobile browsers, and dedicated mobile apps.


Loading quickly across regions
------------------------------


Loading quickly becomes an even greater priority when the lag between the host page loading and the embedded content loading becomes the focus of the viewer’s attention. For that reason, we have been obsessing over speed. This has led to a variety of improvements with iframe speed:


* First, we started with gzip compression to make the assets as small as possible.
* Next, we continued by reducing the size of the JavaScript that drives the iframe even before compression.
* Then, we changed to activate browser caching by default.
* Finally, we consolidated API calls to avoid duplicate requests when validating columns.


All these things result in iframe load times that are significantly faster than they were last year.


Maintaining compatibility across browsers
-----------------------------------------


Compatibility across browsers is the final hurdle. This is definitely one to watch as we move from third-party cookies to header-based authentication. For now, Safari is the most strict. They have already started to block third-party cookies. Chrome will follow in the next couple years as Google figures out how to make their ad tracking work without it. In the meantime, it only really impacts Domo embed in a small segment: app embed on Safari. For that, we already have a workaround. The user clicks an “accept cookies” button similar to the [General Data Protection Regulation (GDPR)](https://gdpr.eu/what-is-gdpr/) dialogs that are common on almost every website these days. Fortunately, Card and Dashboard embed (especially when programmatically filtered through the JSON Web Token (JWT)) do not even have to show the “accept cookies” button because the token is based on header authentication.


We use JavaScript where it is essential (authentication and context). For authentication, we use JavaScript to drive the server-side personalization at the row level. We recently expanded upon that to even switch DataSets dynamically. For context, we use JavaScript to push filters down from the host Page into the embedded content. Then we also use that same message channel to pull click events from the embedded content back to the host Page. This is very helpful in linking across Pages with and without embedded content.


After that, the only reason to use JavaScript for embed is to define the actual experience. This is where you must make a decision. Do you want the experience to only be editable by those comfortable with coding JavaScript or for everyone familiar with the drag and drop experience of Story layouts? Do you want the updates to be reliant on the release schedule for the web development team or do you need the edits to be immediately applied as soon as someone presses the Save button in Domo? As Stories continue to progress, using iframe allows you to move faster than if you had to rebuild all the interactions from scratch in JavaScript.

