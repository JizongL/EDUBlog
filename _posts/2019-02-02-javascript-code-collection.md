---
layout: post
title:  Javascript code collection
date:   2019-02-02 12:45
categories: code_collection
tags: javascript code collection
---

* content
{: toc}

# Introduction
This post contains my collection of code that solve various problems

## String

### Sort an array of words according to their length











It works with `sort()`

<details><summary>See code example</summary>

<pre>
<code>
function sortAscendingByLength(a, b) {
  if (a.length > b.length) {
    return 1;
  } else if (a.length < b.length) {
    return -1;
  }
  return 0;
}

</code>
</pre>

see example


<pre>
<code>
let sentence = 'Alula anA MAdam kdfjalkfafalf alfjlafkaflafslaf';
sentence = sentence.split(" ")
console.log(sentence.sort(sortAscendingByLength))
</code>
</pre>
</details>


## Array method

The following is too cumbersome
It's trying to filter out by a loop, but it can be simplier than this.
```
let falseReference = [false, null, 0, "", undefined,NaN]
  let returnArray=[];
  for(let i=0;i<arr.length;i++){
    if(!falseReference.includes(arr[i])){
      returnArray.push(arr[i]);
    }
  }
```

replace it with

```
function bouncer(arr) {
  // Don't show a false ID to this bouncer.
  return arr.filter(Boolean);
}

```

### freeze object 
 `Object.freeze`


 ### Destructuring assignment 

 ```javascript
var voxel = {x: 3.6, y: 7.4, z: 6.54 };

const { x, y, z } = voxel;

const {x:a,y:b,z:c} = voxel;
 ```

or nested objects assignment 

```javascript
const a = {
  start: { x: 5, y: 6},
  end: { x: 6, y: -9 }
};
const { start : { x: startX, y: startY }} = a;
console.log(startX, startY); // 5, 6
```

### Destructuring Assignment as Function's parameters

```javascript
const fruit = {apple:4,pear:5,pineapple:6};

function countFruit({apple,pear}){
	return apple+pear;
}

console.log(countFruit(fruit));
```

### Object Literal Declarations, with simple field.

ES6

```javascript
const getMousePosition = (x, y) => ({
  x: x,
  y: y
});

// can be reduced to

const getMousePosition=(x,y)=>({x,y});

```

### ES6 concise declarative 

```javascript
const person = {
  name: "Taylor",
  sayHello() {
    return `Hello! My name is ${this.name}.`;
  }
};
```

### Build a chessBoard

```javascript
// Your code here.
function chessBoard(width,height){
	horizontal = "# ".repeat(width/2);
	for (let i = 1; i < height; i++){
    	if( i%2 !== 0){
        	console.log(" "+ horizontal);
        } else {
        	console.log(horizontal);
        }
    }
}

chessBoard(30,20);
```

