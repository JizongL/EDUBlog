---
type: post
title: Thinkful EI study note day 4
date: 2019-2-12 13:52
categories: Thinkful
tags: thinkful EI_program jQuery javascript
---

### The one way data flow
[Check it out](http://thinkful.slides.com/thinkful/architecting-client#/11)


### Wireframe your quiz app

`greybox wireframe` read
[html wireframes](http://bradfrost.com/blog/post/html-wireframes/) by Brad Frost

[Start coding with Wireframes](https://alistapart.com/column/start-coding-with-wireframes)

My [Interactive quiz app](https://github.com/JizongL/interactiveQuizApp), currently only finished the greybox wireframe.



Modules

```javascript
const FooModule = function(){
  const SECRET_PASSWORD = 'abcde';

  const login = function(inputPassword) {
    if (inputPassword === SECRET_PASSWORD) {
      console.log('Access granted!');
    } else {
      console.log('Unauthorized');
    }
  };

  // The object we return is where we expose specific variables:
  return {
    login: login
  };
};

const fooModule = FooModule();
fooModule.login('wrong password');  // => Unauthorized
fooModule.login('abcde');           // => Access granted
fooModule.SECRET_PASSWORD;          // => undefined


```

There's a slightly shorthand way of writing the above using Immediately Invoked Function Expressions (IIFE)

```javascript
const fooModule = (function(){
  const SECRET_PASSWORD = 'abcde';

  const login = function(inputPassword) {
    if (inputPassword === SECRET_PASSWORD) {
      console.log('Access granted!');
    } else {
      console.log('Unauthorized');
    }
  };

  // The object we return is where we expose specific variables:
  return {
    login: login
  };
}());

fooModule.login('abcde')

```

notice the `()` at the end, and the `()` that wraps around the whole function.


## Review

Getting IIFE (pronounced: "iffy")
Immediately Invoked Function Expressions (IIFE)
```javascript
const fooModule = (function(){
  const SECRET_PASSWORD = 'abcde';
....................
  return {
    login: login
  };
}());

fooModule.login('abcde')

```

notice the `()` at the end, and the `()` that wraps around the whole function.


notice there is no `()` at the end of returning function inside iffy

```javascript
return {

   items: items,
   hideCheckedItems:hideCheckedItems,
   searchTerm:searchTerm,
   findById:findById,
   //findAndToggleChecked:findAndToggleChecked(),
   //findAndUpdateName:findAndUpdateName(),
   addItem:addItem,
   //findAndDelete:findAndDelete()
 };
 ```
capitalized item module name
