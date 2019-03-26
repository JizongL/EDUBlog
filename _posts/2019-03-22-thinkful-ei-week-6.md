---
layout: post
title:  Thinkful react note
date:   2019-03-09 12:05
categories: Thinkful
tags: react API Promise
---

## Promise and API

### An example illustrates asynchronous concept

There is no predictable outcome as the tasks are assigned asynchronous

```javascript
const doTask =function(name){
  console.log(`${name} has started.`);
  let duration = Math.floor(Math.random(5)*5000)
  setTimeout(()=>{
    console.log(`${name} has ended after ${duration} seconds.`);
  },duration);
  // this will run before the second console.log runs.
}

doTask('A')
doTask('B')
doTask('C')
doTask('D')
doTask('E')
doTask('F')
```

### Creating a Promise

```javascript
const p1 = new Promise((resolve, reject)=>{
    //asynchronous code goes here.
    })
```

a promise has 3 states

pending,
fulfilled => `resolve()` is called
rejected => `reject()` is called

Handlers
`.then` => success
`.catch` => failed

[see example](https://repl.it/@JizongL/Promise-practice)

### Chaining

```javascript
doTask('B')
  .then(result => {
    console.log(result);
    return doTask('C');
  })
  .then(result => {
    console.log(result);
    return doTask('D');
  })
  .then(result => {
    console.log(result);
  });

```

### in parallel

Promise.all()

```javascript
Promise.all([doTask('B'),doTask('C'),doTask('E')])
.then(result=>{
  console.log(result)
  doTask('D').then(
    result=>console.log(result)
  )
})

```
[see example](https://repl.it/@JizongL/Promise-practice)




### react event with form

`e.target['search-tool'].value`
