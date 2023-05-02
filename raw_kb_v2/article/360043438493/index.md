

CourseBuilder FAQs
--------------------

Have a quick question about CourseBuilder? Browse the list below to see if we have a quick answer for you.

##
 What is CourseBuilder?

It’s an e-learning authoring tool that publishes training modules as apps to Domo. The best part is that it’s available for download in the Domo Appstore—for free.

##
 I’m struggling with the download/launch process…

We're sorry about that. Following the steps outlined in

this article

will help you get it up and running in moments.

##
 Can I use your training content, videos, and documentation in my trainings?

Yes, as long as you follow the stipulations of the Domo Services Agreement, which essentially requires that you only use our training assets for internal onboarding or training efforts and that these not be used for a for-profit venture outside of your licensed organization.

##
 How do I use Domo University videos in my apps?

You’ll need to add video IDs to the appropriate field in CourseBuilder. Here’s how to find those video IDs and make them work in your app:

. Go to

https://www.domo.com/help-center/videos

.
2. Search for and open the video that you want to include in your app.
3. In the URL for that page, copy the last part of it. For example, you would copy the orange portion of the following URL:

https://university.domo.com/videos/watch/


 cxaGNjODE6kFqCR61d-4E69XUwdn1h6U
4. Next, in a video page/template that you've created for your app in CourseBuilder, set the Cloud Video Provider to YouTube.
5. Then, paste the copied videoID into the appropriate field.


###
 What cloud video services are available?

YouTube, Vimeo, Amazon Web Services (AWS), Ooyala, Vidyard, and Verizon Digital Media Services.

##
 Can I upload my own MP4 videos into apps?

Yes. In the Files view/tab in CourseBuilder, select
 **Add**
**File**
 and then go find and add the video file you want to import into your app. (
 **Note**
 : The video file should be 50 MB or less in size. If it exceeds that size, it will likely make it so you can't publish your app to Domo.) Once you've imported the video file, create a video page or template, and in the Video Source dropdown menu, simply select Video File. Then, if you’ve already uploaded the video, you will be able to select that video from a dropdown list and add it to your page template.

##
 Can I link to resources outside the Domo SSO (Single Sign On), such as Box?

Typically, yes. However, some customer administrators have preemptively limited which outside domains can be linked to from within their Domo instance. An admin for your instance may need to whitelist certain Domains before users can access links to those domains from a CourseBuilder app.

##
 Are there any browser restrictions associated with CourseBuilder apps?

Yes. CourseBuilder is optimized specifically for Chrome. CourseBuilder apps also typically work well in Safari and, for the most part, Mozilla Firefox. However, CourseBuilder is
 **not**
 optimized for Internet Explorer browsers. If users access CourseBuilder apps via Internet Explorer, elements in the app UI and page functions may break down. For this reason, we strongly recommend users access CourseBuilder apps through Chrome and that they specifically avoid the use of Internet Explorer.

##
 Are there any other possible restrictions I should know about?

If the user is logged into their company network via a proxy server or VPN, CourseBuilder may not allow the users to publish an app to a Domo instance. The user would need to log off of the VPN or proxy server and, instead, login to their instance on a standard network and publish the app to their instance from there.

##
 Can I make CourseBuilder apps go full screen within Domo?


 This capability is not available at this time.


###
 I just imported an app into CourseBuilder, but it isn’t working. Why?

There are a number of possible reasons. First, make sure the app you’re trying to import was exported from CourseBuilder as an editable app. Second, ensure you selected the parent app folder and didn’t double-click into that folder. For example, if I were importing an editable app named “Workbench Training” into CourseBuilder, I would need to select Import, find the app project folder named “Workbench Training, select the project folder by clicking it once with the cursor, then select the
 **Import**
 button in the dialog box. If you double-click the app project folder, this will not initiate the upload. Rather, it will take you into the app project folder itself. If a user gets to this point, they might accidentally import only parts of the editable app but not the entire app project.

##
 Why can't I add punctuation or other symbols in the name of my apps?

Currently, the name you give the app when you first create it is the name applied to the label for the folder housing app assets and files. Adding punctuation and symbols to this name causes errors in the import, export, and publishing process. While we're working on a solution, users will need to use names that do not include any punctuation or symbols until it is ready.

##
 What is the difference between an editable export of an app, exporting the app, or publishing the app?

The editable app that has been exported can be re-imported into CourseBuilder and allow the user to edit that app. Exporting the app (Option 3) exports a version of the app that can be edited by a developer and then published to Domo via a CLI (Command Line Interface). A published app is published to whatever instance you have credentials to access, and it places the app in your Asset Library within Domo.

##
 My videos aren't working or showing up in the designated frame, or my MP4 videos aren't importing into my app.

If you are using a cloud video service provider, ensure that you have copied the correct video ID in to the appropriate field and that you have  chosen the correct cloud service provider. If you are trying to add a MP4 video, make sure the video file has ".mp4" in the suffix and not something like ".mov" or ".screenflow". It is also possible that the size of your video is too big and that you need to resize the aspect ratio for the video, split up the video into two or more parts, or compress that video. Here are some recommendations on reducing the file size of your video.


 Before you import video files into CourseBuilder, ensure the file size of the video is 50 MB (50,000 KB) or less. If the file size for your video exceeds this this limitation, it will likely be too large to import into CourseBuilder. That said, there are a few steps you can take to reduce the video file size and bring it below the 50 MB maximum:

 **Decrease your resolution:**
 The best way to reduce the MP4 video size is to ensure the resolution/aspect ration for your video is no higher than 1280x720 (a.k.a 720p).
* **Decrease the video length:**
 You’ll generally want to restrict your videos to 5 minutes or less in length. Optimal video length is 3 min or less. If your video exceeds these time recommendations, consider splitting the video into multiple videos.
* **Compress your video file:**
 You can also reduce video file size, without sacrificing quality, by compressing your video using video compression software. However, this option generally requires the use of specific software tools for compressing video, and the process may require the help of someone experienced in performing this sort of task. There are various resources online to help you accomplish this task successfully.


