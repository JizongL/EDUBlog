---
layout: post
title: Thinkful EI study note day 8
date: 2019-02-28 13:47
categories: Thinkful
tags: EI_program jquery name_space architectual_modules
---

a good api will assume that POST method implies it's a create function.

PATCH and PUT

(taken from Rich's comment during class)
PATCH will only change the current items.
PUT send the entire array to overwrite the record.


client validation and server validation
It's better to rely on the server side validation.
client is just an extra line of defense.

if api doesn't return json, a validation handler should be included.

```javascript
.then(res => {
    if(!res.ok){
        error={code:res.status}
    }
    })
if(!res.get('content-type').includes('json')){
    error.message = res.statusText;
    return Promise.reject(error);
}
return res.json();

```
