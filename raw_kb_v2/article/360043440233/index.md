

For growing organizations, it becomes necessary to talk to those in IT about how Domo works. This topic lists the questions most frequently reported by IT personnel, along with their answers:

####
 Why do we need to move our data to the cloud? If it’s in our on-prem system, why move it?

Domo offers you the ability to combine data from a number of different systems in the cloud. Domo provides a place to combine data from on-prem systems with other non-on-prem systems and surfaces it for your business users. We are not restricted by any source system’s speeds that you may have. You can connect directly to your on-prem system and have greater speed through the Domo cloud.


 Domo works as a data mart for your data, the idea is that you have a data warehouse and you want to take some of that data in the warehouse and surface it for a certain audience. You prepare the data that needs to be surfaced for the business questions that need to be answered, then push the data into the cloud as the data mart for your business users to access.


 If moving data to the cloud is out of the question or prohibited in some way, there is also an option that allows you to move data from your on-prem system into Domo. Contact your Sales Consultant or Account Executive to discuss whether a federated option will work for your data.

####
 What kind of volumes of data does Domo handle? Does it work with transactional detail or aggregates?

Domo can handle billions of records. There are a number of good tools for handling large amounts of data in the Domo platform.


 Domo can work with transactional detail and aggregates, depending on the business question that you’re trying to answer. Domo recommends aggregating the data to the level that is needed to answer the business question. You don’t necessarily need every single record in your data, and it’s better to aggregate it to the level of granularity that balances efficiency with insight.

####
 What does Domo mean when it uses the phrase "real-time"? Is it batch or streaming data?

When Domo says "real-time," it means you can get insights when you need them to run your business. Real-time is defined by the use case. For some use cases, real-time means daily; for others, it means every 15 minutes. It depends on the nature of the business question.


 Batch or streaming solutions are both provided for in Domo. In general, most datasets are processed in a fast batch format. Domo has tools for handling streaming if needed.

####
 How does Domo address data security?

Domo has a number of ways to protect your data from being accessed by unauthorized parties:

 **User roles and access**
 . Currently Domo administrators can set up users with a security status of Admin, Privileged, Editor, Participant, or Social. Each role has a specific level of access and permissions.
* **SSO integration**
 . Single Sign-On is the use of an Identity Provider (IDP) communicating with Domo. The IDP manages users and manages access to Domo. When you have SSO enabled, when a user reaches Domo's login page, instead of asking you to enter a Domo-associated username and password, the system redirects the user to a page presented by the IDP. This then becomes the user's login. The SSO has multiple systems in it, and users can log into the many systems that are all linked through the IDP.
* **Encryption**
 . All of the data stored in Domo is put in a secure encrypted location. The individual values are not encrypted by default, meaning the data and columns will have individual values, but the entire DataSet is encrypted in a storage location in the cloud. Using Workbench you can choose data that needs to be encrypted, and when anyone looks at those columns in the Domo instance, they’ll see the encrypted strings instead of the original values.
* **Bring Your Own Key**
 . Domo BYOK is a security tool that gives complete control of the encryption keys for your Domo instance, allowing you to verify that your data is kept private at all times. Domo BYOK includes rolling generation of data encryption keys and a built-in kill switch. You can revoke the encryption key at any time, nullifying all of your data in Domo, ensuring that no one will have access to sensitive data.


**Note:**
 To use BYOK, y

ou:


	+ must have an Amazon Key Management System (KMS) account,
	+ cannot be on Microsoft Azure, and
	+ cannot be a Domo federated customer.


#####
 Can Domo integrate with our existing security? Do I have to recreate all of my users and groups?

Using SSO allows Domo to use your existing user and group structure. If you are SSO-enabled, you can make it so that when someone logs in, Domo determines what groups they’re assigned to in SSO and pulls them in.

####
 What is the resource profile to support Domo, thinking about both time and scale?

One of the benefits of Domo is that Domo can scale without the need for more hardware and the support of that hardware, since it’s done in the cloud. It can be a huge cost-savings in a number of use cases. Domo can help run, grow, and transform the business by dramatically simplifying your infrastructure and giving you mobile access to run your business from your phone. You don’t need to hire many more people as you expand with Domo, it’s more efficient in how it delivers analytic content. The Domo platform enables you to offer new kinds of services with its integrated 7 pillars, bringing new solutions that you haven’t had the ability to do before.

####
 Who owns the data in Domo? How can I access my data?

You as the customer own all of your data. Domo does not prohibit any access to your data. Data can be accessed through the DomoUI and through a robust API that allows you to export your data from your instance anytime.

####
 How do you manage or administer users in Domo?

Domo has a number of features that allow an administrator or manager of the instance to easily work with the user, card, data ecosystems. Tools like bulk admin and activity logs allow you to see the activity that is happening in the instance and make any changes needed. There are also a number of best practice resources throughout the knowledge base in Domo to help you learn how to maintain and govern your instance.


 For more information, see

Card Certification

.

####
 How does Domo AI impact the drive to run, grow, transform, and secure your business?


* **Run**
 . We can help you run the current business at a much lower TCO due to our SAAS business model. This includes modeling using Python or R embedded or 3rd party tools. E.g. equipment maintenance, sales forecasting, campaign forecasting.
* **Grow**
 . We help you grow the business by using our configurable purpose built models that help you target the right audience through machine learning models. E.g. lead scoring, probability to buy, customer churn, employee retention.
* **Transform**
 . We can bring whole new revenue streams and/or processes to bear using our AI modes/technology. E.g. Distributor/Channel Effectiveness, Look-a-like audience identification, Value Storytelling.
* **Secure**
 . Domo has a trusted/verified/secure platform to enable delivery in an enterprise scalable way.

To contact a Domo representative with additional questions you may have about how Domo addresses data security, visit

Domo Trust

.

