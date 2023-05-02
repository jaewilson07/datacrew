


**Notes:**


* To view this article in Japanese, visit

https://knowledge-ja.domo.com?cid=tls

.
* この記事を日本語でご覧になるには、

https


 ://knowledge-ja.domo.com?cid=tls


 をご覧ください。

FAQs
------


####
 What is happening?

Between August 23rd and September 25th, Domo will begin requiring the use of TLS 1.2 to access your instance. TLS (Transport Layer Support) is a security protocol introduced in the 1990s that enables secure exchange of data over a network. TLS 1.2 was released in 2008 and is acknowledged as the most secure version of TLS. Most secure websites currently require the use of TLS 1.2. Domo is joining those ranks to enhance the security of your data.

###
 How does this apply to me?

Domo is a cloud-based application. Whether you access it through your desktop, on a mobile device, via the API service, through Workbench, or via Domo plugins, you implicitly use the TLS service.


 Newer versions of operating systems, web browsers, and application frameworks, and the latest version of Workbench support the newer security standards natively. Older versions are not always capable of keeping up with new security standards and cannot support them.


 If you are using an older version of an operating system, web browser, Workbench, or application framework, you will need to upgrade to a more recent version to continue accessing Domo.

###
 What action is required?

If you’re using an older web browser or operating system that currently doesn’t support TLS 1.2, upgrade your browser and/or operating system by September 20th.  Applications that access Domo with older application frameworks also need to be upgraded.


 If you’re using a Workbench version older than 4.62, upgrade to the latest version by September 20th.


 If you’re using a browser, an operating system, or an application framework that supports TLS1.2, but does not have it enabled by default, you’ll need to explicitly enable it.

###
 How do I know if I am using a version of an operating system or web browser that is not supported?

The table below shows the list of web browsers and their support for TLS 1.2. Locate your browser in the list to determine if you need to upgrade or turn on the functionality to support TLS 1.2. In addition, there are several free tools on the Internet that can determine if you are using a web browser that needs to be upgraded. One such tool is

https://www.howsmyssl.com/

. Note that you should do this for all browsers that you use to access Domo.


 Browser
  |
 Versions
  |
 Compatibility Notes
  |
 Action Required
  |
| --- | --- | --- | --- |
|
 Microsoft Internet Explorer
  |
 Desktop and mobile version 11
  |
 Compatible with TLS 1.2 by default.
  |
 No action required.
  |
|
 Microsoft Internet Explorer
  |
 Desktop versions 8, 9, and 10
  |
 Compatible only when running Windows 7 or newer. Support for TLS 1.2 not turned on by default.
  |
 If you are not using Windows 7 or newer, you will need to upgrade your operating system and enable TLS 1.2 support in your web browser. Review

this article

for help enabling TLS 1.2
  |
|
 Microsoft Internet Explorer
  |
 Desktop versions below 7 and mobile versions below 10
  |
 Not compatible with TLS 1.2.
  |
 Upgrade your browser to version 8 or higher and ensure that TLS 1.2 is enabled.
  |
|
 Microsoft Edge
  |
 All versions
  |
 Compatible with TLS 1.2 by default.
  |
 No action required.
  |
|
 Firefox
  |
 Firefox 27 and higher, all operating systems
  |
 Compatible with TLS 1.2 by default.
  |
 No action required.
  |
|
 Firefox
  |
 Firefox 23 to 26, all operating systems
  |
 Compatible with TLS 1.2, but must be enabled.
  |
 You do not need to upgrade your browser, but you will need to ensure you have support for TLS 1.2 enabled.  Use

about:config

to enable TLS 1.2 by updating the

security.tls.version.max

config value to 3 for TLS 1.2.
  |
|
 Firefox
  |
 Firefox 22 and below
  |
 Not compatible with TLS 1.2.
  |
 Upgrade your browser to version 23 or higher, and ensure TLS 1.2 support has been enabled.
  |
|
 Apple Safari
  |
 Desktop Safari versions 7 and higher for OS X 10.9 (Mavericks) and higher
  |
 Compatible with TLS 1.2 by default.
  |
 No action required.
  |
|
 Apple Safari
  |
 Desktop Safari versions 6 and below for OS X 10.8 (Mountain Lion) and below
  |
 Not compatible with TLS 1.2.
  |
 Upgrade your operating system to OS X 10.9 or higher, AND upgrade your browser to version 7 or higher.
  |
|
 Apple Safari
  |
 Mobile versions 6 and higher
  |
 Compatible with TLS 1.2 by default
  |
 No action required.
  |
|
 Apple Safari
  |
 Mobile version 5
  |
 Compatible with TLS 1.2 when run on iOS5 only
  |
 Upgrade your version of iOS and Apple Safari.
  |
|
 Apple Safari
  |
 Mobile versions 3 and 4
  |
 Not compatible with TLS 1.2
  |
 Upgrade your version of Apple Safari.
  |
|
 Google Chrome
  |
 Desktop versions 30 and higher
  |
 Compatible with TLS 1.2 by default
  |
 No action required.
  |
|
 Google Chrome
  |
 Desktop versions 1-29
  |
 Not compatible with TLS 1.2
  |
 Upgrade your browser to version 30 or higher.
  |


####
 What application frameworks are supported?

Application frameworks are used to access Domo via APIs such as the DataSet API. Below is a list of application frameworks and their compatibility with TLS 1.2

 **Java**
 . Use Java 8 or later. Java 7 may be used but requires TLS v1.2 to be explicitly enabled by the application.
* **.NET.**
 Use .NET 4.6 or later. .NET 4.5 may be used but requires TLS v1.2 to be explicitly enabled by the application. .NET depends on TLS 1.2 support by Windows (see above).
* **Applications using OpenSSL**
 . Use OpenSSL 1.01 or later.


####
 What about my mobile app, Buzz on the desktop, or Workbench?

The Buzz desktop client, Domo mobile apps, and Domo on a web browser on a mobile device will only work on versions of iOS and Android that support TLS 1.2 by default.  No action should be required related to those clients.

###
 What happens if I don’t upgrade?

If you’re using a supported web browser, a supported application framework, or the latest version of Workbench, you won’t notice a difference. If you’re using a browser or application framework that is not TLS 1.2 compatible by September 20th, you will not be able to access Domo.  The same is true if you’re not using Workbench 4.62 or higher by September 20th. Your account will still be active, but you’ll need to upgrade your browser or application framework to access it.

###
 How do I get help?

There are several Knowledge Base articles to help you upgrade Workbench:

 Workbench Training Topics
* Installing Workbench 5


 Microsoft has several resources available to help enable TLS 1.2

on its operating systems and browsers.


 These instructions will help you

enable TLS 1.2 in Firefox and Chrome

.


 If you need additional help, contact Domo support through the

Customer Portal

.


 Troubleshooting
-----------------


####
 I can't get into Domo via my browser.

If you are able to get to the login page, do you get a 'Connection Refused' error from your browser or a different error from Domo?

 If you are
 **not**
 getting a 'Connection Refused' error, then please contact your Major Domo or Domo Support for help with your account.
* If you are getting a 'Connection Refused' error, please check that your browser supports TLS 1.2 and has it enabled by going to

https://howsmyssl.com

.  If your browser successfully supports TLS 1.2, you should see the following:


 See

browser version compatibility

for detailed browser information. If you do not see the above, then you will either need to upgrade your browser or make sure TLS 1.2 is enabled and check the following:

. If you are using a browser version that should work with TLS 1.2 natively, check that your operating system supports TLS 1.2. Most Mac and Linux operating systems support TLS 1.2 by default, but some Windows systems may need to have it enabled. For more details, see

Microsoft TLS

.
2. If you see that your browser is using TLS 1.2, then check your network settings and make sure that you are not using a proxy server or a network policy that prohibits TLS 1.2.


**Note:**
 If you are unfamiliar with your network settings on your computer, please contact your local technical support team for assistance.


####
 My Workbench instance isn't working.


1. Check the version of Workbench that you are using. See

What version am I using right now?

for detailed steps for checking your version.
2. If you are not using the latest version of Workbench (Workbench 4.6), please

upgrade

to the latest one. Feel free to contact Domo Support if you would like some additional help.
3. If you are using the latest version, check the error you are receiving.

1. If Workbench is
	 **not**
	 throwing a 'connection refused' error, then please work with Domo Support to troubleshoot the issue.
	2. If Workbench is throwing a 'connection refused' error, then:

	* Check that TLS 1.2 is enabled on your Windows machine. You may need someone with Administrator permissions on the Windows machine to troubleshoot this. The following Windows documents will help in determining whether your Windows OS supports TLS 1.2 by default, and how to enable TLS 1.2 if it doesn't:

	 https://support.microsoft.com/en-us/help/3140245/update-to-enable-tls-1-1-and-tls-1-1-as-a-default-secure-protocols-in


		 https://blogs.msdn.microsoft.com/kaushal/2011/10/02/support-for-ssltls-protocols-on-windows/


		 https://support.microsoft.com/en-us/help/4019276/update-to-add-support-for-tls-1-1-and-tls-1-2-in-windows


		 http://www.catalog.update.microsoft.com/Search.aspx?q=KB4019276
		* Check that there aren't any network policies or proxies that the machine is using that prevent the machine from talking over TLS 1.2. You may need someone with Administrator permissions on the machine to do this.
4. If Workbench is still not working, please

contact Domo Support

.


####
 I was using an API to access Domo, and the API no longer works.


1. Check the error being thrown. If the error is
 **not**
 'connection refused', then please

contact Domo Support

for further troubleshooting, as this is not related to TLS 1.2.
2. If the error is 'connection refused',

1. Check that you are using the latest versions of the Domo API.
	2. Check that the application framework you are using supports TLS 1.2. See

 what application frameworks are supported

 for more information.
	3. Check that the application calling Domo is using TLS 1.2.


	**Note:**

 This may require you to explicitly specify the use of TLS 1.2 in your code or when calling your code.


####
 Some of my DataSets are no longer updating.


1. Check the configuration of the DataSets.
2. If the DataSets are updated or created using Workbench, check that Workbench is able to connect to Domo. See

Workbench

section above.
3. If the DataSets are updated or created using an API, check that you are using the latest version of Domo's API and the framework used to call API's is using TLS 1.2. See

Domo API

section above.
4. If the DataSet has been created using a customer connector, check the error. If the error is 'connection refused', check that your connector is calling Domo using TLS 1.2.
5. If the DataSets are the result of a DataFlow, check the data lineage for the source DataSets. If any of these DataSets are updated via Workbench, API, or a custom connector, verify that the method updating the DataSet is using TLS 1.2.


####
 Links in my emails from Domo are no longer working.

This occurs when an email scanner sees links in emails and tries to verify that the links are not malicious. In this case, update ALL browsers on the machine you are using to the latest version. If this persists, talk to your email administrator to see if there are other scanners in use that are communicating over TLS 1.2.

###
 Some images in my emails from Domo are broken.

This occurs when images in the email are sent as links and your email client or your email scanner tries to validate the links by talking to Domo over TLS 1.2. In this case, update ALL browsers on the machine you are using to the latest version. If this persists, talk to your email administrator to see if there are other scanners in use that are communicating over TLS 1.2.

###
 The Office plug-ins will no longer connect to Domo


1. Check the error message.
2. If you are
 **not**
 getting a 'connection refused' error, then you may need to

contact Domo Support

for further troubleshooting.
3. If you are getting a 'connection refused' error,

1. upgrade to the latest version of the plug-in.
	2. If you are already using the latest version or if you upgrade and are still not able to connect to TLS 1.2, check that your operating system supports TLS 1.2.

 https://support.microsoft.com/en-us/help/3140245/update-to-enable-tls-1-1-and-tls-1-1-as-a-default-secure-protocols-in


	 https://blogs.msdn.microsoft.com/kaushal/2011/10/02/support-for-ssltls-protocols-on-windows/
	3. If you have upgraded to the latest version and your operating system supports TLS 1.2 and you are still unable to connect, please

 contact Domo Support

 .


