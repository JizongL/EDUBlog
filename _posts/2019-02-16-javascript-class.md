---
type: post
title: Javascript Class and Object
date: 2019-2-16 11:02
categories: web_development
tags: javascript object_oriented
---



`Object.getPrototypeOf`

let name = {type:'type', speak}

`.call()`

`Object.getPrototypeOf(Math.max)`

`Object.getPrototypeOf([])`


Archaic way of writing class
```javascript
function Rabbit(type) {
  this.type = type;
}
Rabbit.prototype.speak = function(line) {
  console.log(`The ${this.type} rabbit says '${line}'`);
};

let weirdRabbit = new Rabbit("weird");
weirdRabbit.speak('dd');

```

new way

```javascript
class Rabbit{
    constructor(type){
        this.type = type;
    }
    speak(line){
        console.log(`The ${this.type} rabbit says '${line}'`);
    }
}
let killerRabbit = new Rabbit('killer');

```

[my first class](https://repl.it/@JizongL/My-first-class-object)


```javascript
let newClass = new Map();
newClass.set('Object A',20);
newClass.set('Object B',30);

console.log(newClass)
console.log(`${newClass.get('Object A')}`);

```
[class methods, get, set, map](https://repl.it/@JizongL/class-methods-get-set-map?language=javascript&folderId=)

## Polymorphism
```javascript
Rabbit.prototype.toString = function() {
  return `a ${this.type} rabbit`;
};

console.log(String(blackRabbit));
// → a black rabbit

```
###Symbol
Symbol is unique

```javascript
const toStringSymbol = Symbol('toString');
Array.prototype[toStringSymbol]=function(){
	return `${this.length} cm of blue yarn`;
};

console.log([1,2].toString());
console.log([1,2][toStringSymbol]())
```


### Review for class
prototype tree, the root is `Object.prototype`
prototype -> shared properties to all objects of that class
type -> specific to an object

`Object.prototype`
`Function.prototype`
`Array.prototype`

`class Rabit`
remember to capitalized
`constructor(type){
    this.type = type;
    }`
declare type
`let killerRabbit = new Rabbit('killer')`
remember the keyword `new` and the string 'killer' is the type

`let rabbit = Object.create(protoRabbit)`
`Object.create`
create an object with a specific prototype

`Object.getPrototypeOf()`
return the prototype of an object.

`Object.prototype` is the ancestral prototype of all objects.

```javascript
console.log(Object.getPrototypeOf({})==Object.prototype)
    -> true
console.log(Object.getPrototypeOf(Object.prototype));
    -> null
```


`Function.prototype`
`Rabbit.prototype`

`Map` is capitalized
`let ages = new Map()`

`ages.set()`
`ages.get()`
`ages.has('stringContent')` check if class object includes targeted 'stringContent'



module
