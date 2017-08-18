---
layout: post
title:  Javascript day 1
date:   2017-05-05 03:40:00
categories: Programming
tags: Javascript The_Definitive_Guides
---
* content
{: toc}



### preparation
[supplimentary material](http://examples.oreilly.com/9780596805531/) of the book.


The book recommanded to use Javascript interpretor [firebug](http://getfirebug.com/), but it is no longer maintained by the community. so use [Firefox developer's tools](https://developer.mozilla.org/en-US/docs/Tools/Web_Console) instead. 


call up a console with a keystroke like F12 or `Ctrl-Shift-J` or `Command+Option+K`

Use Firefox and Web developer's `web console`.

### Some basics 

**Object data type**

JavaScript's most important data type is the object.
An object is a collection of name/value pairs, or a string to value map.

Use `{}` to construct object, and use `variable.item_name` to call object item's matched pair.
```
var book = {gender:"male",age:"12"}
book.gender
```
output is `male`. 

**Index and list**
For list, it uses `[]` instead of `{}`

```
primes = [2,3,5,7]
primes[0]+primes[1]
primes[primes.length-1]

```


### For loop first attempt
every variable must prefixed with `var`, `i++` stands to increasing
use `console.log()` to call function

```
function factorial(n){
var p = 1;
for(var i = 2;i<=n;i++)
   p*=i;
return p;
}
console.log(factorial(4));console.log(factorial(5))

```
output is `24` and `120`


