---
layout: post
title: Thinkful EI Study note day 2
date: 2019-02-11 13:47
categories: Thinkful
tags: EI_program jquery interactive_web_apps
---

* content
{: toc}


`npm install -g http-server`

```terminal
$ cd my-project
$ pwd
-> /Users/bob/code/my-project
$ http-server -p 8080

Starting up http-server, serving ./
Available on:
  http:127.0.0.1:8080
Hit CTRL-C to stop the server
```

`this` refers to `event.currentTarget`
*note*
`this` only refers to the element within the callback function
`this` will not behave as expected if use ES6 arrow functions. Stick with the function keyword when using it.

### Event delegation

allows us to attach a single event listener, to a parent element, that will fire for all descendants matching a selector, whether those descendants exist now or are added in the future.

### drill assignment
[Cat carousel](https://repl.it/@JizongL/Cat-carousel-jQuery-1)
[FizzBuzz](https://repl.it/@JizongL/return-of-fizz-buzz-1)
[Shopping list challenge](https://github.com/JizongL/shopping-list)

### Jot down at least 5 questions that you have about jQuery and interactive web apps so far
1: What is the concept of Jquery API
2: Is Jquery the only way to access the DOM?
3: How do I better keep track of things between css and html and jquery? when the project is getting complicated?
4: Is Jquery just higher level language than the traditional html DOM language? like document.getIdByTag() etc.
5: How to plan a project with using Jquery, as it seems complicated when the program involves more and more functions and layouts.

## Review

loop

### Spread Operator

```javascript
const dogs = ['dog1','dog2','dog3']
const cats = ['cat1','cat2','cat3']
[...dogs,...cats,'tiger']
```

### Rest parameter


### Array Destructuring

```javascript


function fruitCounter(...fruitArray){
    const [fruit1,fruit2,fruit3] = fruitArray;
    return  `${fruit1},${fruit2},${fruit3}`
}

let array = ['apple','banana','kiwi']

fruitCounter(...array);

}

```



```javascript
function getVolume(...dimensions){
    const [,,height]= dimensions;

    console.log(`${height}`);
}

getVolume(10,10,10)

```

### Problem of var
it set the variable up as global in all cases, so it causes scoping problem.

```javascript
for (var i = 0;i < 10;i++){
	console.log(i)
}

console.log('value',i)

```

### functions as argument
```JavaScript
function myForEach(array, callback){
    for(let i = 0;i<array.length;i++){
        callback(array[i].i);
    }
}

myForEach(array,function(value,index){
    console.log('Value at index'+index + ' is '+ value);
});

```

### Arrow function
notice the use of braces

```javascript
// no braces
const add = (a, b) => a+b;
const add = (a, b)=>{
    return a + b;
}
const add = (a,b) =>{
    console.log('Adding',a,'and',b);
    return a + b;
}

// Where there is no parameter () is needed
items.forEach(() => console.log('another item'));

// When there is one parameter, no () around parameter required
items.forEach(item => console.log(item));
// When there are more than one parameters, () around parameters required.
items.forEach((item, index) => console.log(`Index ${index} is: ${item}`));
```

They are generally intended to be used when defining callback functions, not top-level functions

Arrow functions affect the this  keyword - the context of this is different
