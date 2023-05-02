

Intro
-------

As you build out your Domo instance and create pages, dashboards, cards, and drilldowns, the primary goal is to enable your audiences to quickly answer their business questions. Though this is the primary goal, of course, you also want to ensure the look, feel and flow of each page is as consistent as possible.  A lack of continuity and planning in the overall design of your instance can cause confusion for the end users.


 In this article, we offer a helpful framework so you can design your dashboards in a clear, concise, and consistent way. The following examples show how you might organize an enterprise-level company’s Performance-to-Goal dashboard.


**Note:**

The strategy outlined below works well for aggregate performance metrics or departmental goals; however, there are additional best practices for more granular views—for example, comparing 200+ marketing campaigns in depth.

Audience
----------

Pages are the default method for sharing and publishing content within Domo. Before creating a dashboard, you should always consider who will use it and how they will use it to do their job more successfully. How do stakeholders know where to go to answer their business questions intuitively? In Domo, we’ve designated pages, sub-pages, and collections within those pages as the primary way to help users find answers to their business questions. With all of these, the goal is to simplify users' navigation to the answers they’re looking for. Remember to use nomenclature that’s familiar to the different functions within your company.


 The next thing you need to anticipate is how to make browsing this dashboard an intuitive experience that helps the user get in, find out what they need, and then get out. The suggestions below highlight how to facilitate this experience.


 Instance-Level Architecture
-----------------------------

How should you set up your Domo instance-level architecture? That may depend somewhat on both how your business is structured as well as your industry vertical. Nevertheless, to help you envision how you might structure your instance for your organization, consider the following list of recommendations for a typical enterprise company (see Figure 1. Instance Architecture Guide):

 Starting from left to right, top to bottom, pages should prioritize the most macro view of your KPIs (Key Performance Indicators) to the most micro view, with each subpage moving to a more granular view of KPI data. Each page should be labeled according to the department, line of business, or team.
* The first pages should be the enterprise-level pages and should summarize the most important KPIs for each of the departments.
* The enterprise pages’ subpages should summarize the most important KPIs or metrics for lines of business or teams. For example, the marketing page would require a marketing collection on the enterprise page with total reach, impressions, spend, leads, etc., with a subpage with collections for each channel, such as inbound, outbound, display, owned, and earned, with all collections reflecting the KPIs for that dimension. The department page should contain a similar logic, with drilldown options that offer the end user further detail about those metrics.
* You would classify the departmental views based on your audience; these views could be contained in a page, a subpage, or a collection. It is up to your discretion how best to organize that departmental data based on how the department is consuming these data. For instance, at a CEO level, you would provide the enterprise view, and each department would be a collection within that page. Then, you’d likely have a subpage per department in which the executive staff is tracking the drivers for that data. Then, each executive staff member would have his/her own Departmental Page (for their “enterprise”) with the tighter details for their department. Regardless of the framework you determine best suits your needs, the departmental view should have a subpage with user-specific metrics to track daily work activities, performance goals, individual KPIs, etc. These departmental views are more tactical in nature but are highly relevant to an individual.

*Note:**

The more individual-focused these pages are, the more likely you are to use tools such as PDP so viewers can see individual contributions to key metrics (see Figure 1. Instance Architecture Guide).

*Figure 1. Instance Architecture Guide**

For more information, see the following Knowledge Base articles:

 Understanding Pages
* Understanding Cards
* Creating and Managing Card Collections

Page-Level Architecture
-------------------------

The following recommendations for page-level architecture also reflect the needs of a typical enterprise company but are applicable to most other circumstances as well (see Figure 2. DataSet Batch Last Run Date Card and Figure 3. Page Architecture Guide):

 Moving left to right, top to bottom, pages should go from the most macro-level view to the most micro-level view, with each collection providing a more granular perspective on unique metrics or categories of data.
* In the first collection(s), cards should be simple and straightforward to interpret: 1-2 metrics per card, preferably 1 metric per card in a gauge or other easily-interpreted form. In many cases, it is also helpful to display the batch-last-run date of the DataSet to drive trust in the data.


**Figure 2. DataSet Batch-Last-Run Date Card**

 These cards should highlight whether or not the metric has hit the goal or benchmark set.
* Top collection cards should also include alerts. Alerts allow business users to set up rules and conditions around their dashboards so, as those are met, they can get pinged directly when their attention is needed. Alerts are especially useful for the decision-makers who aren’t interested in logging into the Domo platform every day. Alerts enable the recipient to quickly access the data, quickly take action in relation to specific business events, and lead them to use Buzz as a collaboration tool to enact or discuss those decisions.
* Cards should be simple enough to understand within 10-20 seconds. If the user needs to spend time reading the legend to interpret the chart, it is too complicated for this first level.
* Card collections at the lower level of the page should highlight the dimensions of the metric and inform the user on who, what, when, where, and why the metric is on or off target (see Figure 3. Page Architecture Guide). Ideally, the user will only need to view the collection if the metric is off target or if the achievement is so great that it provides a model they’d like to follow in other areas. We encourage using conditional formatting tools to give users visual indicators that help them quickly interpret what they see. Examples of conditional formatting are goal lines or goal achievement color changes, which you can apply using Beast Mode calculations.
* Every Domo user has the ability to arrange cards and collections on a page into a custom view that makes the most sense to them. However, page owners may want to prevent rearranging to provide a standardized view for all users. In this case, page owners can lock a page to maintain layout consistency for everyone across the page.
* Page filtering is best used to simplify and focus dashboards on data that matters most for the end user (see Figure 3. Page Architecture Guide). For example, instead of a manager having to build out a separate card for each region or country in your business, you can quickly get to data and answer your questions using page filters and filtering by those parameters. Filters are not permanent, so they allow you to slice your data on the fly. You can quickly get to the information, saving time by not having to build out a separate card for each dimension of the data you’re looking for.

*Figure 3. Page Architecture Guide**

For more information, see the following Knowledge Base articles:

 Understanding Pages
* Understanding Cards
* Creating and Managing Card Collections
* Notifications and Alerts
* Transforming Data Using Beast Mode
* Locking or Unlocking Page Content
* Applying Page-Level Filters

Card-Level Architecture
-------------------------

Your card-level architecture may adapt based on the types of metrics you want to present and the related needs of the audience for a given card. However, the following suggestions apply in many cases and, if applied, can dramatically improve the accessibility and story-telling power of data for your users:

 Drill paths and links between cards should be intuitive and straightforward (see Figure 4. Drill Path and Linked Cards Architecture Guide). With drill path, keep in mind the number of drilldown levels per card that a user can reasonably use. For example, each click can introduce a potential user experience pain point. This means that cards with 5 drilldown levels may become unwieldy, and the drill levels may go unused. The card experience designer should use their best judgment on whether a drill path or a new card should be created. Specifically, be mindful of the number of drilldown levels depending on the audience. For example, executives may only need one drill level, while analysts may want several drill options.
* The titles of collections and cards should make it easy for the user to know what specific business question is being answered with this data. To anticipate your audience’s needs, include a description of the cards in the collection and how to interpret them, why they should care, suggested action items one could take based on the data, and governance notes, such as customized timeframes or counts. Another example of a governance need that you could include in a card description could include clarifications that on how the data was transformed from a native system.
* The cards within the collection should also be ordered, categorized, and sized with a purpose. Place the cards that give the most pertinent or actionable information in the top left. Often, one card will be the driving force behind or the ultimate outcome of the others in the collection. This card is then what we like to call the “Hero” card and is sized large. The smaller cards provide the supporting details or elements that drive the story being told by the Hero card.
* Be mindful of the number of both collections and cards within a collection. We recommend that you add no more than five collections per page and fewer than 6 cards per collection. These numbers also depend on where your stakeholder will be viewing this data most often, whether it will be on a mobile device, laptop, or large screen in the boardroom.
* While you can see the cards most directly related to a card in your collection, the Related Card feature allows you to link to other cards found in other pages or subpages (see Figure 4. Drill Path and Linked Cards Architecture Guide). This is especially useful if your related cards come from other pages and provide more context and meaning to the card being viewed.

*Figure 4. Drill Path and Linked Cards Architecture Guide**

For more information, see the following Knowledge Base articles:

 Understanding Cards
* Creating and Managing Card Collections
* Adding Drill Path to Your Chart
* Linking Related Cards
* Editing the Name or Description of a KPI Card
* Rearranging Cards in a Page
* Changing the Size of Cards in a Page

Content: Thinking across Multiple DataSets
--------------------------------------------

Now take a step back and think through the optimal metric required to drive your primary outcome. Identify which real outcome you’re trying to impact. Most likely, that will take more than one DataSet to answer. Thus, you shouldn’t limit your dashboard simply by not thinking across DataSets. The best tracking method typically requires multiple DataSets.


 For example, you could track your campaign effectiveness three ways: 1)
 **Good:**
 “Leads by Campaign”; 2)
 **Better:**
 “Revenue by Campaign”; 3)
 **Best:**
 “ROI or Profitability by Campaign.” Also, remember that your current access to data should not limit the creativity of which metrics you should be using or plan to use to run your business successfully. Identify the optimal metrics (even if you can’t build them now) to keep as a roadmap for where you’d like to go in the future.


 For more information, see the following Knowledge Base articles:

 Best Practices for Designing KPIs
* Best Practices for Standardizing KPIs

Enabling Management by Exception Using PDP
--------------------------------------------

Another critical factor in instance, page, card collection, and card architecture is designing all of these assets to help you and others in your organization manage by exception. This involves helping your Domo users focus on the data and events that are most pertinent to them and only when attention is needed.

##
 Same card, but unique views of data

For many businesses, it is helpful to try to create a page that can be viewed by someone at the top of the organization all the way to the bottom of the organization. For example, in a marketing company, you could build a page pertinent to the CMO down to the marketing analyst. This way everyone is involved in marketing decisions and is able to use the same page. You would want to use Personalized Data Permissions (PDP)  to have your marketing analyst go to that same page—looking at the same page as the CMO, but seeing the content within their role and data.


 You can use PDP filtering to allow individuals in an organization to see how he or she is impacting the goal on a specific card. Creating cards like this can align everyone on the common vision and common metrics of the organization. For example, one individual consultant might look at the same card as a senior-level manager, but both will see a unique visualization of the data; in either case, however, the card will convey their own individual impact on the organization. PDP essentially enables you to set different policies for data access to unique individuals or groups.


 As you implement a PDP strategy, just note that creating PDP policies that allow users to manage by exception requires that you thoroughly think through your data and who needs access to what.

##
 Audit card collection

Another helpful component you can add to your dashboard is an Audit card collection. This collection can be designed to help users manage by exception in a way often not considered. We recommend having your fourth or fifth card collection on a page include these audit cards. So what is an audit card?


 The idea behind an audit card collection is to have a set of cards tied to actionable metrics where the ideal status is zero. For example, if my position in an company involves managing customer service requests, my goal is to have these requests all resolved. An audit card could tell me when I’ve reached 0 outstanding requests for service and alert me when it goes above 0.


 As for how the card is designed, the summary number for that audit card should reads “0” if no action is required. If there is any number other than 0 in the summary number, the user of the card needs to take action to try to get that metric back to 0 (see Figure 5. Audit Card Collection). PDP can also be applied in this case to ensure, for example, that a team lead’s view of an audit card only applies to her own accounts vs. the accounts of her team.


 In addition, you can set up alerts based on the summary numbers of these audit cards. These alerts can be designed to update users each time the summary number for a card goes above 0. Again, this makes it so the user only needs pay attention to the audit cards when an event has been triggered and when their personal action is required.


 Along with setting up audit cards, you may need to have someone on the team who is responsible for the audit card collection who is tasked with “enforcing” actions that need be taken based on data showing in that collection.


**Figure 5. Audit Card Collection**


###
 PDP on every DataSet

With PDP, you may want to consider setting up a PDP policy on every DataSet in order to augment and enable a manage-by-exception strategy. Here are the several key advantages of taking this step:

 You can control access so that even if people share the card or the page, the recipient of the shared content will not be able to see the data unless they’ve been added to the PDP policy. This helps you make sure sensitive data stays in the right hands.
* PDP policies customize the view for each individual or team and give them specific data relevant to their role. An executive or a sales rep using the same card each have access only to the data appropriate to their role.
* With PDP, you can upload sensitive HR data and immediately put a PDP policy on it to restrict it to a very limited number of people. This adds an extra layer of protection to your data security strategy.


###
 Alternative approach

It might be nice to say that all of your Domo users should access all the data they need from one page with itemized PDP policies filtering the appropriate data for each role and individual. However, in many cases, it is more effective to structure views or pages according to specific roles—such as an executive view, a team management view, and an individual view. In this scenario, you can create three different DataSets so managers or team leads can view dashboards or cards from the perspective of team members or individuals on that team using a filter.


 Without PDP, you would have to know all field names necessary to filter on in order to access these individualized views of the data. With PDP applied to these different DataSets, you can have the filters established from the start. PDP allows you to select the specific data columns you want to see. This is much more intuitive for executives who don’t want to have to search through myriad filtering options. PDP enables the executive to just check the box for what they want to see and then access that view immediately.

##
 Some caveats

While PDP offers all sorts of advantages for enabling management by exception, there are some limitations and circumstances to consider as you incorporate PDP policies into your dashboards strategy:

 PDP works well if you have 100 or fewer users within a given group. However, if you have more than 100 persons within a defined group, it becomes difficult to maintain those groups, which then makes it more difficult to ensure all users have the appropriate level of access to data.
* If some of your cards involve concatenated summary numbers, it is more difficult to set up an alert based on this type of summary number. The solution is to create a separate collection of cards that includes copies of the cards with concatenated summary numbers, except that these copies are set up to enable alerts for that card. Essentially, what you may need to set up is a card or card collection that enables better storytelling for the viewer and then a copy of that card or collection that is purely designed to trigger specific alerts.

For more information, see the following Knowledge Base articles:

 Personalized Data Permissions (PDP)
* Creating and Managing Card Collections
* Configuring Your Chart Summary Number
* Notifications and Alerts

Summary
---------

In summary, all dashboards should be user-driven—who will use it, where they will use it, what they will use it for. However, as you approach your design with a user in mind, a consistent strategy will enable governance, readability and scalability.

