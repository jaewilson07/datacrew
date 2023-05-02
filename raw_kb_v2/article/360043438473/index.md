

Intro
-------

This topic provides best practice information for using CourseBuilder.


 Naming conventions
--------------------

Whatever naming conventions you adopt for app projects, pages, and files, the most important principle to apply is consistency. That said, there are some specific practices that will help you avoid errors, organizational issues, and files or project management woes.

##
 Naming Apps

First, when you create a new app project, remember that you will not be able to add symbols such as colons or dashes in the title. Second, you may want to add a version number to your app title (v1, v2, etc.). This can help you ensure you and other course editors are aware of the most recent version of a course you’re building, especially when you’re sharing app projects with each other.

##
 Naming Pages

The page name that you enter when you first create a page in CourseBuilder is what shows up in the navigation menu. The title in this case should be short and clear. The title that you actually add on the page, however, can be longer and more descriptive. For example, I might name the page “Introduction,” but give the Introduction page the following title: “Welcome to Onboarding: Phase 1.” In page titles, you can also use symbols like colons and dashes without it having an adverse effect on file integrity.

##
 Naming Files

CourseBuilder will automatically strip out disallowed elements of a file name when it’s imported. For example, if you use a "&" or have spaces in your file name, these will be removed or replaced with an allowed symbol. In any case, you likely want the files you’ve imported into an app to have the same file names that exist in your own media library. That’s why we recommend employing file naming practices where you avoid symbols in general and use underscores instead of spaces. In addition, we recommend adding version names (v1, v2, etc.) to your files as well so, for example, you can keep track of which graphics in your app are outdated. It might also be a good idea to add your initials so other users can track down who created visual assets.

##
 Deleting Files Not in Use

If you have added image or video files to app project that are no longer being used, it’s best practices to go through and delete those images or videos in order to reduce the size of your app when it gets published.


 Duplicating Projects to Save Time
-----------------------------------

If you are going to be creating multiple courses or training modules, and those modules require a lot of the same graphic assets or similar page types, structure, or activities, it may save you some time to simply duplicate an app you’ve already created and then rename it. At that point, you can modify or delete elements of the copied app. This can help you avoid having to start from scratch.


 Arrangement of Pinpoints
--------------------------

When adding pins to the Pinpoint page, it’s important to note a couple of constraints. For example, if you change the background image for the Pinpoint page and the pins are no longer sitting in the best location, move those pins back to the appropriate spot rather than deleting the pins and starting over.


 Sizing of Apps, Videos, and Images
------------------------------------

We anticipate that most users won’t be required to have expertise in graphic use in order to successfully deploy images and videos in CourseBuilder because it auto-scales these so that they fit within defined parameters. However, in order to avoid issues with app publishing due to size constraints, pixelation, poor rendering, or slowing down app processing time, you’ll want to follow some simple guidelines in relation to app size and when sizing images or videos before you import them into your app.

 **App size:**
 In general, CourseBuilder apps should not exceed 100 MB in size. If an app does exceed this size, CourseBuilder may not be able to successfully publish the app to a Domo instance. As for what may be causing the app to exceed 100 MB in size, it is likely due to exceeding the recommended size for MP4 videos and other image files. One option to consider is splitting up the content in a given app into multiple apps, especially if multiple MP4 videos are being employed in these apps. The following entries provide recommendations for MP4 file size and image sizes.
* **MP4 video size:**
 Before you import video files into CourseBuilder, ensure the file size of the video is 50 MB (50,000 KB) or less. If the file size for your video exceeds this this limitation, it will likely be too large to import into CourseBuilder. That said, there are a few steps you can take to reduce the video file size and bring it below the 50 MB maximum:

+ *Decrease your resolution:*
	 The best way to reduce the MP4 video size is to ensure the resolution/aspect ration for your video is no higher than 1280x720 (a.k.a 720p).
	+ *Decrease the video length:*
	 You’ll generally want to restrict your videos to 5 minutes or less in length. Optimal video length is 3 min or less. If your video exceeds these time recommendations, consider splitting the video into multiple videos.
	+ *Compress your video file:*
	 Using video compression software is a great way to reduce video file size. However, this option generally requires the use of specific software tools for compressing video, and the process may require the help of someone experienced in performing this sort of task.
* **App background image:**
 Your app background image should have a resolution or pixel ratio of 1050x690.
* **Logos:**
 If you import a logo into CourseBuilder to customize the branding of your app, import logos that have a resolution or pixel ratio not wider or higher than 200x100. However, it’s probably best to upload an .svg file instead, which will auto-scale to the frame available.
* **Pinpoints page background image:**
 This image should have a resolution or pixel ratio no wider or higher than 950x600. In some cases, if you may have added a significant amount of body text to this page, so you’ll want to create a smaller image size that will produce a clearer image.
* **Multi-video page custom thumbnail images:**
 If you decide to add custom video thumbnail images to this page, it’s best to give each one a resolution or pixel ratio of 1280x720 .
* **Pinpoints page pop-up images:**
 If you add an image to a pinpoint pop-up, it’s best to give it a resolution or pixel ratio no wider or higher than 300x300.
* **Next Steps thumbnail image:**
 If you decide to add a badge or thumbnail image to this page, it’s best to give it a resolution or pixel ratio no wider or higher than 300x300.
* **Quiz and Survey Slider resource images:**
 If you add an image resource to a quiz question, it’s best to give it a resolution or pixel ratio no wider or higher than 900x600.
* **Quiz answer images:**
 If you add images as some of the possible answers to a quiz question, it’s best to give these images a resolution or pixel ratio no wider or higher than 150x150
* **Task squares page:**
 If you add an image or images to one of the task pop-up windows, it’s best to give it a resolution or pixel ratio no wider or higher than 800x800.

Advantages of Using Cloud Video Solution vs. Uploading MP4s
-------------------------------------------------------------

The primary advantage of using a cloud video streaming service to power your videos in CourseBuilder is that doing so will decrease the load time for users engaging your app. This option also enables you to update video content without having to update the app, which maximizes the scalability of your apps over time. While uploading your own MP4 videos is a fine solution, there are various free and paid cloud providers available that will enable you to access the additional advantages of this platform.


 Video IDs and Video Provider Selection
----------------------------------------

If you’ve added a video to any of the pages that allow this action, you’ll need to ensure you’ve selected the correct video provider and added the right ID. Here’s where the video ID is located for the following providers (the red text indicates the ID portion of the URL).

 YouTube:

https://www.youtube.com/watch?v=


 Xh\_Neg-Hp84
* Vimeo:


 https://vimeo.com/


 220999602
* Ooyala:

player.ooyala.com/iframe.html?ec=


 ZsYWq1NzE64tWpPR9ShUjk59eh5C2ROz

&pbid=b986320eb2af428485644819b233b43
* VidYard:

https://demos.vidyard.com/watch/

gRtqnYxMpgAFvU5hDHp7NM
* Verizon Digital Media Services:

https://content.uplynk.com/player5/

6XXFbUjKXzCavjUnzmni6Fsa

.html?autostart=0
* Amazon S3:


 https://s3.amazonaws.com/domo-university/domoapps/videos/sample-video\_1280x720\_10mb.mp4

Using Domo University Videos in Your Own Training Apps
--------------------------------------------------------

What do you do if you want to use existing Domo University videos in your apps? You’ll need to add video IDs to the appropriate field in CourseBuilder. Here’s how to find those video IDs and make them work in your app:

. Go to

https://university.domo.com/videos/

.
2. Search for and open the video that you want to include in your app.
3. In the URL for that page, copy the last part of it, e.g.

https://university.domo.com/videos/watch/

cxaGNjODE6kFqCR61d-4E69XUwdn1h6U
4. In CourseBuilder, set the Video Provider to Ooyala.
5. Paste the copied videoID into the appropriate field.

That should do it.


 Heading and Body Text
-----------------------

One of the first problems you may encounter when you paste text from another program into your page editor fields is corrupted formatting. If your text format comes in looking incorrect, be sure to use the format stripping tool to scrape out any of the formatting code that text brought with it (

).


 Next, each page type in CourseBuilder is designed to make the learning experience less text heavy than a lot of other typical trainings or slide decks you’ve experienced. We’ve designed the pages with this principle in mind: “Show, don’t tell.” Where possible, try to minimize the amount of text on each page and either replace it with an asset you can show (video, infographic, etc.) or employ microlearning strategy by breaking out content into bite-size chunks.


 In addition, because most of the page types in CourseBuilder were designed with this strategy in mind, adding too much text will either make pages and activities look awkward, or, at worst, break the functionality of the page itself. For example, page titles should usually be one line. With body text, you have some more flexibility, depending on the page type, but you should still try to keep body text on each page between 1-3 lines, 5-6 lines at most, and rarely more than 6. In fact, depending on the font size you choose, if you add more than 4 lines of text to some pages, you may push activity elements off of the page altogether.


 In addition, here are some other specific missteps to avoid:

 Don’t just shrink font size in order to fit more text on the page. Let your learning goals control your page design rather than compressing the content delivery experience.
* Avoid liberal bolding, italicizing, underlining, or changing the color of the body text. Use these features to draw attention to text sparingly, which will help the user maintain focus.
* If you’re asking the user to take steps, it’s best to avoid paragraphs. Rather, list these out into numbered steps, especially if they’re supposed to follow these steps in sequence. When appropriate, it’s good to accompany instructions with a visual walkthrough.

Quizzes
---------

The quiz template has a number of different options for you to use. You’ll want to think through the quiz setup and consider whether or not you want learners to have multiple tries answering a question, the type of feedback you want to provide them, and the overall feedback text for correct and incorrect text. If your goal is to teach learners rather than just know when they answer a question incorrectly, consider providing feedback that tells the user what they should have selected and why in addition to whether they answered correctly.


 In addition, some of the quiz options offer limited space for text, so your quiz questions, answers, and feedback need to be concisely crafted. The list quiz types are better suited for longer questions and longer answers. Also, if the question only has one correct answer, it’s best to use either the square text box answer option or the radio button option.


 Task Design
-------------

If you want to create step-by-step activities for your users in the Task Box page, it’s best to provide an overview of what the task will entail in the initial task title or description. In addition, be sure to list out steps of a task one by one, rather than including multiple steps in one paragraph. It’s also a good idea to include visuals that either show the process involved in the task or at least what the end product should look like after they’ve completed that task.


 Page or App Flow
------------------

When outlining your app, it’s important to go through and determine the types of activities and templates that you are using. Having 3 videos or 5 task activity pages in a row won’t provide the type of engagement or motivation you want from your learners. Try to create activities and templates in an order that give the learner variety and interest in the content.


 Consistency is also key if you’re creating a series of apps. If learners are going through a number of apps to learn about a specific new program or company policy, you may want to consider having the same template order and pages for the different apps, so that learners are accustomed to that style and move quickly through the app series.


 Outlining your Training App
-----------------------------

You will save valuable time when building your apps if you have created an outline for your training course or module and determined the objectives you want learners to achieve ahead of time. Here’s a sample table you can use to organize that outline.


 Page Number
  |
 Page Title
  |
 Type of Template
  |
 Text Content
  |
 Graphics Needed
  |
| --- | --- | --- | --- | --- |
|  |  |  |  |  |

Previewing, Exporting, and Importing Apps
-------------------------------------------

Before you export your app, it’s always a good idea to preview your app and all of the activities to ensure everything is working as expected. Doing so can help you catch mistakes that you wouldn’t have recognized otherwise. Keep in mind, however, that you currently cannot preview link functionality until the app is published to Domo.


 In addition, if you export an editable app so someone else can upload it to their CourseBuilder program, do not change the name of the app project folder after you export it. This will break the file mapping within the app and prevent the other user from being able to open and edit that app.


 Importing Apps
----------------

If another CourseBuilder user shares an app project folder with you and you want to upload it into your CourseBuilder tool, do not change the name of the folder before you import it. In addition, ensure you import the entire project folder. Don’t import individual elements within that folder one at a time, as this will break the project mapping ability of the app.

