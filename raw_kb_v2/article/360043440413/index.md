

If you have selected the option to track data on your app using Google Analytics, and assuming you have already created or have access to a Google Analytics account, the first step is to create a Google Analytics tracking ID. Once you have it, you’ll paste it into the designated field in the
 **Preview / Export**
 view of your app in CourseBuilder. Then tracking will be enabled for your app once it has been published to a Domo instance.


1. Log in to your Google Analytics account.
2. Select the
 **Admin**
 tab in the left menu.
3. In the
 **Property**
 menu, select
 **Create new property**
 .
4. On the New Property page, add a website name and website URL and select an industry category and preferred time zone.
5. Select
 **Get Tracking ID**
 .
6. Select and copy your Tracking ID, then paste it into the appropriate field for your app in CourseBuilder.

Before you exit out of Google Analytics, you’ll also need to add some recommended custom dimensions to this new property. Here’s how to do that:

. In the
 **Property**
 menu, select the
 **Custom Definitions**
 tab, then select
 **Custom Dimensions**
 .
2. Click the
 **+New Custom Dimension**
 button.
3. In the dimension name field, type “Instance,” then click
 **Create**
 .
4. In the next screen, select
 **Done**
 .
5. Repeat the previous three steps for the following additional custom dimensions: User ID, App Name. The final list of custom dimensions should be as follows:


* Instance
* User ID
* App Name

Your app should now be set up to track multiple metrics and dimensions. Now, once you publish this app to any Domo instance, it will start tracking user data.

