

Intro
-------

There are several different filter options that are used in the embedded view experience. They are classified into the following groups:

 Secure Filters
	+ Personalized Data Permissions (PDP)
	+ Server-side Programmatic Filters
* Client-Side Filters
	+ JS API Filters
	+ Pfilter URL parameters
* Interface Filters
	+ Page Filters
	+ Interaction Filters across Cards

All of these filter types are layered in this sequence:


 Secure Filters
----------------


1. **Personalized Data Permissions (PDP)**


 Documentation:

SSO and PDP

Definition: Older SSO integration was reliant upon cookies for individual accounts for each viewer.


 Use case: Forced row-level security defined in the Domo interface that cannot be seen nor edited by viewers.


**Important:**
 Browsers are expanding their 3rd party cookie blocks. The best practice is to use Programmatic Filters to stay future-proof.


**Note:**
 If this older method must absolutely be used for personalization, protect yourself from embed viewers tracing the iframe back to the instance and seeing extra Cards and Pages beyond the embedded content. This is done by creating a dedicated instance for external use cases, applying the Whitelabel V1 template of feature switches, and embedding from there instead of your main internal instance.
2. **Server-side Programmatic Filters**


 Documentation:

Programmatic Filtering

Definition: Newer SSO integration with cookie-less auth through a single service account for all viewers.


 Use case: Forced row-level security defined in server-side code that cannot be seen nor edited by viewers.


**Important:**
 This will shift contracts from user/viewer pricing to impression/view pricing since a single service account acts as a proxy for all viewers.


**Note:**
 No dedicated external instance is required for this approach since the viewers will not have access to the client ID and secret of the service account. Therefore they cannot trace the iframe and gain access to the Domo instance.

Client-Side Filters
---------------------
3. **JS API Filters**


 Documentation:

JS Sample Code Repo-JS API Filters

Definition: Client-side approach here contrasts from the server-side approach above because these are meant to be visible and editable for viewers. The filters applied via the embed API through event ports and listeners. Changes applied to multiple pieces of embedded content without forcing iframe refresh. Also supports bi-directional context passing (where click events on the embedded content can also be passed back to the home page for cross-iframe or cross-Page drills, links, and interactions.)


 Use case: A newer approach to applying external filter controls from the host page (like drop-down menus outside of the iframe.)


**Important:**
 Pfilters and the JS API are not a secure replacement for Programmatic Filters because the client-side parameters can be seen and changed by viewers by either glancing at the URL or inspecting the content. These should only be used for filters that aid exploration.
4. **Pfilter URL parameters**


 Documentation:

Using Pfilters to Apply Filters from URL Query Parameters to Embedded Dashboards

Definition: Simpler setup in URL params instead of client-side code like JS API filters. However, pfilters are slightly slower because they force an iframe refresh to apply the filter logic. They use the same filter pattern (column, operand, value) as client-side JS API and server-side Programmatic Filters.


 Use Case: An older approach to applying external filter controls.


**Important:**
 Pfilters and the JS API are not a secure replacement for Programmatic Filters because the client-side parameters can be seen and changed by viewers by either glancing at the URL or inspecting the content. These should only be used for filters that aid exploration.

Interface Filters
-------------------
5. **Page Filters**


 Documentation:

Applying Page-Level Filters with Filter Views

Definition: Top filter bar of embedded Cards and Dashboards similar to what is available in the full Domo instance.


 Use Case: Ad hoc filter creation by the user when the creator does not know all the slices the viewer might want to explore.


**Important:**
 Page filters are available in Dashboard embed, but saved Filter Views are still in Beta so they are not targeted for support in Dashboard embed until later in 2021.


**Note:**
 As emphasized in the layer sequence above, these lower priority filters can only return results within the subset of rows made available by PDP or Programmatic Filters.
6. **Interaction Filters across Cards**


 Documentation:

Applying Card-to-Card Filters

Definition: Slicer Cards similar to the cross-Card interactions available in the full Domo instance.


 Use Case: These are the simplest filter interaction for viewers. They are ideal when the content creator already knows the filters users will want.


**Note:**
 As emphasized in the layer sequence above, these lower priority filters can only return results within the subset of rows made available by PDP or Programmatic Filters.


