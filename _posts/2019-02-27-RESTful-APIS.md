---
layout: post
title: Thinkful RESTful APIs
date: 2019-03-02 13:47
categories: Thinkful
tags: EI_program jquery restful_api
---

REST (REpresentational State Transfer)

Create, Read, Update, and Delete, or CRUD.


| HTTP Method | Endpoint      | Description                  |
|-------------------------------------------------------------
| GET         | /items        | Fetch all items              |
| GET         | /items/[id]   | Fetch one item               |
| POST        | /items        | Create item                  |
| PATCH       | /items/[id]   | Update (modifies) one item   |
| PUT         | /items/[id]   | Updates (replaces) one item  |
| DELETE      | /items/[id]   | Delete one item              |


`JSON.stringify()`

`Content-Type: application/json`   

Establish a new Header class
```
new Headers({
    'Content-Type', 'application/json'
  })
```

### resolving promise

`Promise.resolve()`

From Thinkful example

good method to use when setting up a promise first time. To test if a sucessful response is returned
in the console.


set up an api global IIFE and keep BASE_URL private
```javascript
'use strict';
const api = (function(){
  const BASE_URL = 'https://thinkful-list-api.herokuapp.com/JizongL';

  function getItems(){
    return Promise.resolve('A successful response!');
  }

  return{
    getItems:getItems
  }

}());
```

call `api.getItem()` from index.js

```
api.getItems()
  .then(res=>console.log(res));

console.log(api.BASE_URL);  

```



example From Mdn doc
```
var promise1 = Promise.resolve(123);

promise1.then(function(value) {
  console.log(value);
  // expected output: 123
});

```


## note
To expose a function within an IIFE ( Immediately-Invoked Function Expression) is to return the function at the end.
