---
layout: post
title:  Poloniex wrapper
date:   2017-05-02 14:08:00
categories: API 
tags: poloniex_api python
---
* content
{: toc}

[poloniex api documentation](https://poloniex.com/support/api/)

[poloniex wrapper](https://pastebin.com/fbkheaRb)






progress 05/02/2017  Tuesday 2:12:00 pm

```
import urllib
import urllib2
import json
import time
import hmac, hashlib


def createTimeStamp(datestr, format="%Y-%m-%d %H:%M:%S"):
    return time.mktime(time.strptime(datestr, format))


class poloniex:
    def __init__(self, APIKey, Secret):
        self.APIKey = APIKey
        self.Secret = Secret

    def post_process(self, before):
        after = before


        # Add timestamps if there isnt one but is a datetime
        if ('return' in after):
            if (isinstance(after['return'], list)):

```

I stopped at exploring the difference between *isinstance()* and *type()*, continue from here. 

