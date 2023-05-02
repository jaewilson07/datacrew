

Intro
-------

gBizINFO is a website service run by METI Japan. It provides 4 Mio corporate information based on the registered information to Japanese government.


 gBizINFO API Connector enables to search and extract corporate registered information from gBizINFO.


 This connector can extract corporate basic information.

. Corporate basic information report

Prerequisites
---------------

To use this connector, you need to get access token from gBizINFO.


 For more details, refer to

https://info.gbiz.go.jp/api/index.html

(only available in Japanese).


 Also, access to Domo Developer portal and obtain the Client ID & Secret to enable to use Domo Dataset API. Choose "data" for Scopes.


 For more details, refer to

https://developer.domo.com/docs/authentication/overview-4#Important%20terms

##
 Report specification

For more details, refer to

https://info.gbiz.go.jp/hojin/swagger-ui.html#/gBizINFO\_REST\_API

. Click
 **GET /v1/hojin/{corporate\_number}**
 for details.

##
 FAQ


####
 What kind of data can I get from the gBizINFO Connector?

This connector retrieve basic information of corporation. For more details, see

https://info.gbiz.go.jp/hojin/swagger-ui.html#!/gBizINFO\_REST\_API/getUsingGET


####
 What credentials do I need access the gBizINFO Connector?

You need to get the access token from gBizINFO.

###
 Are there any API Limits that I need to be aware of?

If you make more than 6,000 requests in 10 minutes, the request for you is restricted for 10 minutes. This connector make one request each corporation and sleeps 1 second between each request.

