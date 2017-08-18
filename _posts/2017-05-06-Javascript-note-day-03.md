---
layout: post
title:  Javascript day 3
date:   2017-05-07 08:53:00
categories: Programming
tags: Javascript The_Definitive_Guides
---

* content
{: toc}

### Text

immutable

A string is an immutable ordered sequence of 16-bit values

surrogate pair

```
var p = "π"; // π is 1 character with 16-bit codepoint 0x03c0
var e = "e"; // e is 1 character with 17-bit codepoint 0x1d452
p.length     // => 1: p consists of 1 16-bit element
e.length     // => 2: UTF-16 encoding of e is 2 16-bit values: "\ud835\udc52"

```

### String Literals

```
"two\nlines"   // A string representing 2 lines written on one line
"one\          // A one-line string written on 3 lines. ECMAScript 5 only.
long\
line"
```

when combining JavaScript and HTML, it is a good idea to use one style of quotes for JavaScript and the other style for HTML

```
<button onclick="alert('Thank you')">Click Me</button>

```

### Escape Sequences in String Literals

```
'You\'re right, it can\'t be a quote'
```



### Working with Strings

```
var s = "hello, world"        // Start with some text.
s.charAt(0)                   // => "h": the first character.
s.charAt(s.length-1)          // => "d": the last character.
s.substring(1,4)              // => "ell": the 2nd, 3rd and 4th characters.
s.slice(1,4)                  // => "ell": same thing
s.slice(-3)                   // => "rld": last 3 characters
s.indexOf("l")                // => 2: position of first letter l.
s.lastIndexOf("l")            // => 10: position of last letter l.
s.indexOf("l", 3)             // => 3: position of first "l" at or after 3
s.split(", ")                 // => ["hello", "world"] split into substrings
s.replace("h", "H")           // => "Hello, world": replaces all instances
s.toUpperCase()               // => "HELLO, WORLD"

```


Methods like replace() and toUpperCase() return new strings: they do not modify the string on which they are invoked.


### Boolean operators

Boolean values have a toString() method

```
if ((x == 0 && y == 0) || !(z == 0)) {
    // x and y are both zero or z is non-zero 
}

```

### Undefined and Null

`undefined` is a predefined global variable (not a language keyword like null) that is initialized to the undefined value

```
undefined == null

// output
true
```

If you need to assign one of these values to a variable or property or pass one of these values to a function, null is almost always the right choice.


### Global Variables


The global object is simply an object, not a class. There is no Global() constructor, and there is no way to instantiate a new global object.

```
var global = this;  // Define a global variable to refer to the global object
```


variables inside function is declared everywhere. 

```
var scope = "global";
function f() {
    console.log(scope);  // Prints "undefined", not "global"
    var scope = "local"; // Variable initialized here, but defined everywhere
    console.log(scope);  // Prints "local"
}

// output is local, not global. 
```

### Wrapper Objects



### Interesting find

```
string = "sss"
"sss" // with " "
console.log(string)
sss // without " "
undefined

```