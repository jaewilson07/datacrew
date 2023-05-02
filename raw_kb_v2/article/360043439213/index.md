

To ensure legitimate client requests are not rejected, all script requests must comply with the request header validation requirements of Domo.


 Domo will review:

. Inclusion of an origin header (URL with

https

) that matches your host header (which only includes the domain portion). If the origin is there and does not match the host header, it will be blocked. The match is case-sensitive. If not included, the next rule will ensure success.
2. Inclusion of a custom header that cross-origin sites can't include, such as

X-Requested-With: XMLHttpRequest


