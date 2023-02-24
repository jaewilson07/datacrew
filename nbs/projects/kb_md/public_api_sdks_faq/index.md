---
title: Public API SDKs FAQ
url: https://domo-support.domo.com/s/article/360043440753
linked_kbs:
[
'[https://domo-support.domo.com/s/knowledge-base/](https://domo-support.domo.com/s/knowledge-base/)',
'[https://domo-support.domo.com/s/](https://domo-support.domo.com/s/)',
'[https://domo-support.domo.com/s/topic/0TO5w000000ZammGAC](https://domo-support.domo.com/s/topic/0TO5w000000ZammGAC)',
'[https://domo-support.domo.com/s/topic/0TO5w000000ZanzGAC](https://domo-support.domo.com/s/topic/0TO5w000000ZanzGAC)',
'[https://domo-support.domo.com/s/article/360043440753](https://domo-support.domo.com/s/article/360043440753)',
'[https://domo-support.domo.com/s/topic/0TO5w000000ZanzGAC/other-connection-methods](https://domo-support.domo.com/s/topic/0TO5w000000ZanzGAC/other-connection-methods)',
'[https://domo-support.domo.com/s/article/360043429933](https://domo-support.domo.com/s/article/360043429933)',
'[https://domo-support.domo.com/s/article/360043429953](https://domo-support.domo.com/s/article/360043429953)',
'[https://domo-support.domo.com/s/article/360042925494](https://domo-support.domo.com/s/article/360042925494)',
'[https://domo-support.domo.com/s/article/360043429913](https://domo-support.domo.com/s/article/360043429913)',
'[https://domo-support.domo.com/s/article/4408174643607](https://domo-support.domo.com/s/article/4408174643607)',
'[https://domo-support.domo.com/s/login/](https://domo-support.domo.com/s/login/)',
]
article_id: 000003171
views: 2,259
created_date: 2022-10-24 21:11:00
last updated: 2022-10-24 22:39:00
---

## Intro

This topic provides answers to frequently asked questions regarding our public API SDKs.

## Product Details

#### Why do we need this feature?

As businesses attempt to leverage and extend the Domo platform via automation through its APIs, many have found challenges with the complexity of maintaining authentication to the Domo’s API layer as well as the effort required to maintain additional code required to integrate with RESTful endpoints.

Domo has now provided first class SDKs to significantly reduce the level of effort that customers, partners, and developers need to implement integrations with Domo’s set of Public APIs – ultimately providing the ability to create more solutions in much less time.

#### What specifically has improved?

Specific improvements include:

- Graceful handling of Authentication  
  Previously, you had to continue to authenticate via OAuth every hour. With each SDK, you no longer are forced through the tedious effort of managing connections to the APIs.
- Inline Documentation  
  While editing code inside an editor like IntelliJ, a user will be able to drill into each object and learn specific details about parameters. In addition, each object guides the developer on required parameters and overall structure.
- Ability to branch code for custom solutions  
  With the open-source nature of each SDK, users can download the latest version of an SDK and then personalize it to create solutions for specific use cases and needs.

#### Is a migration required? What is the plan?

No migration is needed.

## Product Setup

#### Is a feature switch required for this Product?

No

#### Are there any requirements for using this Product?

Knowledge of Python, Java, or Node languages.

#### Are there any role restrictions for this product?

Role restrictions will continue to be observed with the authentication process.  If you are not an admin, you will not be able to leverage the APIs.

#### Can I control who can use this product?

No.

#### Are there any other admin capabilities around this product?

Yes, you can manage access tokens for people who are using a token to integrate with any of the Public APIs.

#### Is there anything else about the setup users should know about?

No, all SDKs can be found on Domo’s Github repo here: <https://github.com/domoinc/>

## Product Compatibility

#### Does this product work for customers who have SSO enabled?

No, we are working to enable obtaining Client ID and Secrets for customers using SSO.

#### Does this product work with PDP?

Yes, there is a PDP API that is a part of each SDK.

#### Does this product work with internal or external Publication Groups, Alerts, Buzz, Mobile, page filters, card filters, or card Save As?

No.

## Product Cost and Freemium

#### Is there a cost associated with using this product?

No.

#### Where does this product fit in Domo’s pricing tier?

This product is included with Domo Professional and Enterprise versions. It is not included with Free Domo or Starter versions.

## Product Limitations

#### Are there any limitations that users should be aware of with this Product?

No.
