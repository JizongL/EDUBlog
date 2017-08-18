---
layout: post
title:  Javascript day 2
date:   2017-05-06 08:53:00
categories: Programming
tags: Javascript The_Definitive_Guides
---

* content
{: toc}

### Lexical structure

Case Sensitivity

Unicode Escape Structure
`\u00E9` is the accented e in unicode
```
"café" === "caf\u00E9" // => true

```
Normalization

`\u0301` is accent combining mark in ASCII
`\u00E9` and `\u0301` have different binary encodings and are considered different by the computer

```
"cafe\u0301"==="café" // => true

```
### comment
There are two ways, `//` and `/*comment*/`.
```
// This is a single-line comment.
/* This is also a comment */  // and here is another comment.
/*
 * This is yet another comment.
 * It has multiple lines.
 */
```


### Strict Mode

```
"use strict";

```

The following would automatically declare a global variable for myString, so no error would be thrown.


### Literals

```
12               // The number twelve
1.2              // The number one point two
"hello world"    // A string of text
'Hi'             // Another string
true             // A Boolean value
false            // The other Boolean value
/javascript/gi   // A "regular expression" literal (for pattern matching)
null             // Absence of an object

```

Reserved Words

```
break          delete         function       return         typeof
case           do             if             switch         var
catch          else           in             this           void
continue       false          instanceof     throw          while
debugger       finally        new            true           with
default        for            null           try

class     const     enum      export    extends   import    super


```
reserved words under strict code
```
implements     let            private        public         yield
interface      package        protected      static
```

### Types, Values, and Variables

primitive types and object types

Objects and arrays are mutable

strings are immutable

lexical scoping

### Numbers

All numbers in JavaScript are represented as floating-point values

When a number appears directly in a JavaScript program, it’s called a numeric literal.


 A hexadecimal literal begins with “0x” or “0X”

```
0xff  // 15*16 + 15 = 255 (base 10)

0xCAFE911

```
A octal starts with 0

```
0377  // 3*64 + 7*8 + 7 = 255 (base 10)
```

Octal is forbidden in "use strict" mode. 

Floating-Point Literals

```
3.14
2345.789
.333333333333333333
6.02e23        // 6.02 × 10^23
1.4738223E-32  // 1.4738223 × 10^32
```

division by 0 is legal in Javascript, but $$\frac{0}{0}$$ `NaN`.



Minimum and Maximum numbers in Java


`Number.MAX_VALUE` $$±1.7976931348623157 × 10^{308}$$ 

`Number.MIN_VALUE` $$±5 × 10^{−324}$$ 

`Number.MAX_VALUE`+1 underflow (output is Infinity)

`Number.MIN_VALUE`-1 underflow (output is -Infinity)


wrong ` x == NaN` , instead `x != x`.

`isNaN()` determines if NaN, `isFinite()` determines if finite.

```
var zero = 0;         // Regular zero
var negz = -0;        // Negative zero
zero === negz         // => true: zero and negative zero are equal 
1/zero === 1/negz     // => false: infinity and -infinity are not equal

```

### Rounding Errors

```
var x = .3 - .2;    // thirty cents minus 20 cents
var y = .2 - .1;    // twenty cents minus 10 cents
x == y              // => false: the two values are not the same!
x == .1             // => false: .3-.2 is not equal to .1
y == .1             // => true: .2-.1 is equal to .1

```

###Date and Time
```
var then = new Date(2010, 0, 1);  // The 1st day of the 1st month of 2010
var later = new Date(2010, 0, 1,  // Same day, at 5:10:30pm, local time
                     17, 10, 30);
var now = new Date();          // The current date and time
var elapsed = now - then;      // Date subtraction: interval in milliseconds 

later.getFullYear()            // => 2010
later.getMonth()               // => 0: zero-based months
later.getDate()                // => 1: one-based days
later.getDay()                 // => 5: day of week.  0 is Sunday 5 is Friday.
later.getHours()               // => 17: 5pm, local time
later.getUTCHours()            // hours in UTC time; depends on timezone

later.toString()               // => "Fri Jan 01 2010 17:10:30 GMT-0800 (PST)"
later.toUTCString()            // => "Sat, 02 Jan 2010 01:10:30 GMT"
later.toLocaleDateString()     // => "01/01/2010"
later.toLocaleTimeString()     // => "05:10:30 PM"
later.toISOString()            // => "2010-01-02T01:10:30.000Z"; ES5 only

```


### use strict mode
```
<script type = "text/javascript">
	myString = "This is a strong"<br/>
	document.write(myString);

```
The following would throw an error,because the strict mode requires the variable myString be defined.

```
<script type = "text/javascript">
	"use strict";
	myString = "This is a strong"<br/>
	document.write(myString);

```






