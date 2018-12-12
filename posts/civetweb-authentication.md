---
title: 'civetweb Authentication'
layout: default.liquid
published_date: '2015-08-18 09:05:00 -07:00'
is_draft: false
---

[civetweb](https://github.com/civetweb/civetweb) is a basic http server that can be handy for quickly serving files, for example. It actually has a surprisingly rich feature set, which includes fine-grained authentication. Here's an example for setting up global authentication for the server.


1
2
3
4
5
6
7
8

\# to generate a new password file-
civetweb64.exe -A .htpasswd localhost admin admin

\# start the server with that password
civetweb64.exe -global\_auth\_file .htpasswd

\# test in browser, or curl-
curl.exe --digest -u mydomain.com\\admin:admin http://localhost:8080/somefile.file


That's it! The civetweb docs describe other options for authentication.