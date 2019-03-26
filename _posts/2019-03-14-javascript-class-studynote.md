---
layout: post
title:  Javascript Class Study Note
date:   2019-03-17 22.59
categories: Thinkful
tags: javascript class object
---


`Object.setPPrototypeOf(obj, Food.prototype);`

prototype is linked to obj, so now obj shares prototype's methods.

prototypical/prototypal inheritance

object do not inherit from their prototype, but delegate them.


When you create a function -- someFunction -- it will have a property, .prototype, that points to an object, called someFunction.prototype.

Conversely, that object -- someFunction.prototype -- will have a property, called .constructor, which points back to the function someFunction.

When we create an object literal, JavaScript sets the object's prototype reference to Object.prototype, and sets its .constructor reference to Object:
```
const foo = {status:'foobar'};
Object.getPrototypeOf(foo)===Object.prototype;
foo.constructor === Object;

```


 You can overwrite it with a new object if you want. Or you can add properties to the existing object, as the example does.
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



```javascript
 // static only works with the class itself, it doesn't work with the class's
// instances
class DogClass{
	static describe(){
		console.log('this is ran');
	}
	constructor(name,breed,sex,size)
	{this.name = name;
	this.breed = breed;
	this.sex = sex;
	this.size = size;}
}



//Doggy.prototype.constructor('a','b','c',33)

DogClass.describe()


let lucyDog = new DogClass('lucy','peiking','girl',33)
//lucyDog.describe()
```

about prototype, class, static, new.target etc.
[class practice snippets](https://repl.it/@JizongL/ScientificSandybrownOpengroup)


### The keyword extend

```JavaScript
class formatDate extends Date {
  constructor(dateStr) {
    super(dateStr);
  }

  getFormattedDate() {
    var months = ['Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun',
                  'Jul', 'Aug', 'Sep', 'Oct', 'Nov', 'Dec'];

    return `${this.getDate()}-${months[this.getMonth()]}-${this.getFullYear()}`;
  }
}

console.log(new formatDate('August 19, 1975 23:15:30').getFormattedDate());
// expected output: "19-Aug-1975"

```
