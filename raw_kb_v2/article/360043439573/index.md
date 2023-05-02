


**Note:**
 Depending on the product version you are using, the documentation may include information about features that may not be available or may have changed.

New features and enhancements
-------------------------------

Features and enhancements in this release include the following:

##
 Appstore


 Take your data to the next level with visuals and insight you


 never knew you’d been missing. In Domo’s Appstore


 you’ll find an App for whatever road you’re ready to travel.


 With over 1,000 Apps, you can quickly find an App that addresses your particular


 question. With enhanced discovery capabilities you can search and filter Apps for over 27 i


 ndustries, 14 roles, 8 departments, and 38 activities.


 Apps now support advanced visualizations and enhanced power-up flows. In just a


 few steps, you’ll have your App connected to your data.  If desired, you can even


 assign the power-up task to someone else in your org.

New for this release, all Apps now initially deploy with sample data so you can take the time to look over the cards before you connect them to live data. In addition to our QuickStart Apps, you can also power Card Builder Apps and custom Apps by selecting DataSets with matching columns and data types.

##
 Developer Portal

Domo's developer portal gives you access to all the tools and documentation you need to build, manage, and connect in Domo. Using the developer portal, you can build Domo Apps, customize your Domo instance with APIs and add-ons, and create your own connectors for delivering customized reports.


 For more information and documentation about each of these tools, please visit

https://developer.domo.com

.

###
 App Studio Tools

Create advanced interactive visualizations that connect to Domo, allowing you to tell powerful data-driven stories.  Domo is releasing two tools that you can use immediately at no charge.


 Known limitations of custom Apps:

 Apps cannot use columns that have been created using Beast Mode calculations.
* Apps do not support all Export commands (Excel, CSV, PPT).
* Cards containing custom Apps cannot be duplicated.
* Apps do not support Alerts.
* Publish to Slideshow is not supported. View as Slideshow
 *is*
 supported.


#####
 App Design Studio

This tool leverages all the capabilities of Adobe Illustrator to create your design and layer on data-driven pieces.  Combine graphic assets with any of our 100+ library of Widgets—pieces of code that can connect to data.  However, there is no need to understand code.  Domo will write the code for you!


 Once you upload your design to Domo, you can connect to any of your DataSets to power your design and have it update on your schedule.  Custom Apps behave like other cards in Domo, letting you move, share, collaborate via Buzz, or view on mobile devices.

*Note:**
 Requires a Creative Cloud account from Adobe and access to Illustrator 2014 or 2015 CC.


#####
 App Dev Studio

This tool provides maximum flexibility for creating Custom Apps.  It is best suited for developers with web-based programming experience such as HTML, CSS, or JavaScript.  Any application that can run on the web can be created as a Custom App and run in Domo.


 The App Dev Studio is built on top of an open web platform.  This gives users the power to build rich, complex logic with JavaScript, make animations with CSS Transitions, or even build 3D creations in Canvas.  In addition, we support all major web frameworks and libraries, including React, Angular, Webpack, Lodash, etc.  Domo also provides an optional utility library called domo.js that provides useful functions common to Custom Apps.


 With a unified REST API, you have access to query data or users inside of your Domo instance.


 Using our Command Line Interface (CLI), you can login to Domo, initialize new designs, or run a local dev server.

Git -


 http://git-scm.com/downloads

*Note:**
 App Dev Studio has the following requirements:

 + On Windows, the installer will also install "git bash," which you should use as your terminal when running all future commands.
* Node.js via "brew install node" on OS X or via download -

https://nodejs.org/


	+ You can verify that Node is properly installed on your path by opening your terminal and typing "node --version."
* OS X Only - Accept the XCode License "sudo xcodebuild -license"
* Windows Only - git bash
* Make sure your firewall isn't blocking the npm registry (

https://www.npmjs.com/

)


 .


#####
 Card Builder

Domo's Card Builder tool provides the simplest way to build Apps in Domo. It allows you to choose from a large variety of card designs to visualize your data. You can also use this tool to answer specific business questions by grouping your cards into collections.

###
 Connector Dev Studio

Data is the foundation of everything you do in Domo.  In order to build that foundation, connectors are available to access all your relevant data. A connector pulls data from a data source and makes it accessible inside Domo. Connectors can be set up to pull data on a schedule and append or replace the existing content from that data source.


 To support data sources that are not available in Domo’s current catalog of connectors, Domo has created an intuitive web-based Connector Dev Studio for building custom connectors. The connector development process leverages the JavaScript language in conjunction with added convenience methods. If you are familiar with JavaScript, it is possible to build a connector now.


 Domo's Connector Dev Studio utilizes an intuitive four-step process, as follows:

. You upload images for thumbnails to represent this connector.
2. You configure your user authentication. Available options include
 **None**
 (for public data sources),
 **Username and Password**
 ,
 **API Key**
 , and
 **OAuth 2.0**
 . Once you have set up your user authentication, you can test it to make sure it works correctly.
3. You configure the reports that users will be able to build using your connector.
4. You define how the data is processed by adding your own data processing script. You can enter a test query to see a preview of a report.

Two sample connectors are provided in the Connector Dev Studio to help get you started.

###
 Domo APIs

Domo Application Program Interfaces (APIs) make it easier to administer your data and users, giving you the power and flexibility to get the most out of Domo. The following APIs are available:

 **Authentication**
 . We're all about protecting your data. That's why in order to access your Domo instance through an API, you'll need to authenticate. Domo uses OAuth 2.0 as an authentication framework, and you can get authentication tokens easily via the developer portal.
* **Data**
 . With Domo's data APIs you can create DataSets, list all DataSets, read or update metadata for a specified DataSet, delete a DataSet, or push or pull data to/from a specified DataSet.
* **Users**
 . User APIs allow you to manage users in your Domo instance. You can create users, get information about a user, list all users, update information for a user, or delete a user.


###
 New iOS App

Domo has been hyper-focused on the modern business executive since we began. That person is not tied down to a desk, they are often on the move. In February we released our new Mobile Web experience to provide a mobile optimized experience for iOS and Android users in a mobile browser.


 We are now releasing a new native iOS app. We have been crazy hard at work creating this amazing new app. We went to the drawing board with the goals of creating an amazing design on top of a faster, more intuitive experience. With this app you get the same new features we introduced with Mobile Web, such as filtering cards through Analyzer and support for Publication Groups, and we are introducing an innovative Home experience. With Home, you can see trending content, personalize your daily hotlist of critical content, and discover new people or new cards as they are created or shared with you.


 The new app is available in the Apple App Store now! Go get it.


 Getting Help
--------------

You can view the latest release notes information in the Help Center, which you can access from Domo by clicking

*> Help Center**
 .


 If you have questions about Domo,

 search for a topic in the Help Center
* train in Domo University at

http://www.domo.com/university
* get answers in the Domo Community at

dojo.domo.com
* contact Technical Support
* reach out to your Domo Customer Success Manager or Technical Consultant

If you have feedback, please send it from within Domo (

*> Feedback**
 ). Or send an email to

product.feedback@domo.com

.


 For more information about getting help, see

Getting Help

.

