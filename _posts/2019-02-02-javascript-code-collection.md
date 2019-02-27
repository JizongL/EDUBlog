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


### padStart()
`console.log(String(6).padStart(3, "0"));`// → 006


### rest parameter

```javascript
function max(...numbers){
    result = -Infinity;
    for (let number of numbers){
        if(number > result) result = number;
    }
    return result;
}
```

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

### find index then splice element of array
See the following snippet as example and see full version [here](https://repl.it/@thinkful/jquery-shopping-list-walkthrough-v2-14)

```Javascript
const itemIndex = STORE.findIndex(item => item.id === itemId);
STORE.splice(itemIndex, 1);
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
more examples

```javascript

let table = [2,3,4,5,1];
// notice the []
function addUp([n1,n2,n3,n4,n5]){
	return n1+n2+n3+n4;
}

addUp(table)

// notice {object}
let {object} = {object:'pen',amount:4}

console.log(object);

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

### addEntry to object log

```javascript
let journal = [];

function addEntry(events, squirrel) {
  journal.push({events, squirrel});
}

addEntry('events','squirrel');
console.log(journal);
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


### try/ catch / throw demo

```Javascript
function addUserToDatabase(username) {
  if (!username || username.length < 3) {
    throw new Error('Must provide a username greater than 2 chars');
  }

  if (findUserInDatabase(username)) {
    throw new Error('Username already exists. Choose another.');
  }

  // All validations passed
  saveUserToDatabase(username);
  console.log('Successfully added person to database.');
}

try {
  addUserToDatabase('John');  // Successful
  addUserToDatabase('Jo');    // Will throw error and be caught below   
  addUserToDatabase();        // Will throw error and be caught below
} catch(e) {
  console.error(e.message);
}
```

### Real time search and filter

```javascript
<script>
$(document).ready(function(){
  $("#myInput").on("keyup", function() {
    var value = $(this).val().toLowerCase();
    $("#myTable tr").filter(function() {
      $(this).toggle($(this).text().toLowerCase().indexOf(value) > -1)
    });
  });
});
</script>
```

[full example](https://www.w3schools.com/jquery/jquery_filters.asp)


### Higher order function

action is a function, it can be put there on the spot, without predefining it.


`function(num, action)`




function creates new functions.

```javascript
function greaterThan(n){
    return m => m > n;
}

let greaterThan10 = greaterThan(10);
```

```javascript
function(f){
    return (...arg) => {
        do something...
    }
}
```

Reduce function usages
use reduce twice

```javascript

var SCRIPTS = [
  {
    name: "Adlam",
    ranges: [[125184, 125259], [125264, 125274], [125278, 125280]],
    direction: "rtl",
    year: 1987,
    living: true,
    link: "https://en.wikipedia.org/wiki/Fula_alphabets#Adlam_alphabet"
  },
  {
    name: "Caucasian Albanian",
    ranges: [[66864, 66916], [66927, 66928]],
    direction: "ltr",
    year: 420,
    living: false,
    link: "https://en.wikipedia.org/wiki/Caucasian_Albanian_alphabet"
  },
  {
    name: "Ahom",
    ranges: [[71424, 71450], [71453, 71468], [71472, 71488]],
    direction: "ltr",
    year: 1250,
    living: false,
    link: "https://en.wikipedia.org/wiki/Ahom_alphabet"
}]

function characterCount(script) {
  return script.ranges.reduce((count, [from, to]) => {
    return count + (to - from);
  }, 0);
}

console.log(SCRIPTS.reduce((a, b) => {
  return characterCount(a) < characterCount(b) ? b : a;
}));
```
First it reduce each character in the script, then it reduces the comparison of characters.


.some()
check if any of the elements in the array has a value above a specific number.
```javascript
var ages = [4, 12, 16, 20];

ages.some(age => age < 30);

```


### Counting what scripts are used in string

[see full code](https://repl.it/@JizongL/check-percentage-of-script-usage-in-a-given-string)


```javascript
function characterScript(code) {
  for (let script of SCRIPTS) {
    if (script.ranges.some(([from, to]) => {
      return code >= from && code < to;
    })) {
      return script;
    }
  }
  return null;
}

console.log(characterScript(121));
// → {name: "Latin", …}

function countBy(items, groupName) {
  let counts = [];
  console.log(groupName);
  for (let item of items) {
    console.log(counts);
    let name = groupName(item);
    let known = counts.findIndex(c => c.name == name);
    if (known == -1) {
      counts.push({name, count: 1});
    } else {
      counts[known].count++;
    }
  }
  return counts;
}

function textScripts(text) {
  let scripts = countBy(text, char => {
    let script = characterScript(char.codePointAt(0));
    return script ? script.name : "none";
  }).filter(({name}) => name != "none");

  let total = scripts.reduce((n, {count}) => n + count, 0);
  if (total == 0) return "No scripts found";

  return scripts.map(({name, count}) => {
    return `${Math.round(count * 100 / total)}% ${name}`;
  }).join(", ");
}

console.log(textScripts('英国的狗说"woof", 俄罗斯的狗说"тяв"'));
// → 61% Han, 22% Latin, 17% Cyrillic
```


### Higher order function abstraction

```javascript
function loop(start, test, update, body) {
  for (let value = start; test(value); value = update(value)) {
    body(value);
  }
}

loop(3, n => n > 0, n => n - 1, console.log);
// → 3
// → 2
// → 1
```


### loop and some() => decide if elements past test.

```javascript
function every2(array, test) {
  for (let element of array){
  	if(!test(element)) return false;
  	} return true;
  // Your code here.
}

function every(array,test){
	return !array.some(e=>!test(e))
}

console.log(every([1, 3, 5], n => n < 10));
// → true
console.log(every([2, 4, 16], n => n < 10));
// → false
console.log(every([], n => n < 10));
// → true
```


### writing a test code
```javascript
function testFunctionWorks(fn, input, expected){
    const result = fn(input);
    if(
        result && result.length && result.every(function(item){
            return expected.indexOf(item) > -1;
        }){
            console.log('Success' + fn.name + )
        }
    )
}

```

### Create a counter function
pay attention to the scope of runningCount and increment

```javascript
function createCounter() {
    let runningCount = 0;

    return function(increment = 1){
        runningCount += increment;
        return runningCount;
    };
}

// create two instances of closure

const counter1 = createCounter();
const counter2 = createCounter();

console.log(counter1());    // 1
console.log(counter1());    // 2
console.log(counter1());    // 3

console.log(counter2(5));   // 5
console.log(counter2(3));   // 8
console.log(counter2(2));   // 10
```

### do...while loop

```JavaScript
let ourArray = [];
let i = 5;
do {
  ourArray.push(i);
  i++;
} while (i < 5);
```
 compared to the following, it would return nothing, because i is set to 5 and is never less than 5.
 so the loop never starts. 

 ```JavaScript
 var ourArray = [];
 var i = 5;
 while (i < 5) {
   ourArray.push(i);
   i++;
 }
 ```
