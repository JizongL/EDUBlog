---
layout: post
title:  Javascript day 5
date:   2017-05-09 20:36:00
categories: Programming
tags: Javascript The_Definitive_Guides
---
* content
{: toc}


### Type Conversions





```
10 + " objects"     // => "10 objects".  Number 10 converts to a string
"7" * "4"           // => 28: both strings convert to numbers
var n = 1 - "x";    // => NaN: string "x" can't convert to a number
n + " objects"      // => "NaN objects": NaN converts to string "NaN"
```


### Conversions and Equality

```
null == undefined // These two values are treated as equal.
"0" == 0          // String converts to a number before comparing.
0 == false        // Boolean converts to number before comparing.
"0" == false      // Both operands convert to numbers before comparing.

```

### Explicit Conversions

```
Number("3")           // => 3
String(false)         // => "false"  Or use false.toString()
Boolean([])           // => true
Object(3)             // => new Number(3)

```

Specify with base number.
```
parseInt("11", 2);           // => 3 (1*2 + 1)
parseInt("ff", 16);          // => 255 (15*16 + 15)
parseInt("zz", 36);          // => 1295 (35*36 + 35)
parseInt("077", 8);          // => 63 (7*8 + 7)
parseInt("077", 10);         // => 77 (7*10 + 7)
```


implicit type conversions

```
x + ""           // Same as String(x)
+x               // Same as Number(x).  You may also see x-0
!!x              // Same as Boolean(x). Note double !
```


Number conversion to other bases
```
var n = 17;
binary_string = n.toString(2);        // Evaluates to "10001"
octal_string = "0" + n.toString(8);   // Evaluates to "021"
hex_string = "0x" + n.toString(16);   // Evaluates to "0x11"

```

### From number to string for accuracy

When working with financial or scientific data, you may want to convert numbers to strings in ways that give you control over the number of decimal places or the number of significant digits in the output, or you may want to control whether exponential notation is used

```
var n = 123456.789;
n.toFixed(0);         // "123457"
n.toFixed(2);         // "123456.79"
n.toFixed(5);         // "123456.78900"
n.toExponential(1);   // "1.2e+5"
n.toExponential(3);   // "1.235e+5"
n.toPrecision(4);     // "1.235e+5"
n.toPrecision(7);     // "123456.8"
n.toPrecision(10);    // "123456.7890"
```

If a string begins with “0x” or “0X”, parseInt() interprets it as a hexadecimal number.

```
parseInt("3 blind mice")     // => 3
parseFloat(" 3.14 meters")   // => 3.14
parseInt("-12.34")           // => -12
parseInt("0xFF")             // => 255
parseInt("0xff")             // => 255
parseInt("-0XFF")            // => -255
parseFloat(".1")             // => 0.1
parseInt("0.1")              // => 0
parseInt(".1")               // => NaN: integers can't start with "."
parseFloat("$72.47");        // => NaN: numbers can't start with "$"
```


### Object to Primitive Conversions

`toString()` and `valueOf()`

If object has `toString()` method, Javascript calls it. If the object has no `toString()` method, or that method does not return a primitive, then Javascript looks for `valueOf()` method. Otherwise, it throws a `TypeError`. 


```
({x:1, y:2}).toString()    // => "[object Object]"

```

```
[1,2,3].toString()                  // => "1,2,3"
(function(x) { f(x); }).toString()  // => "function(x) {\n    f(x);\n}"
/\d+/g.toString()                   // => "/\\d+/g"
new Date(2010,0,1).toString()  // => "Fri Jan 01 2010 00:00:00 GMT-0800 (PST)"
```
```
var d = new Date(2010, 0, 1);   // January 1st, 2010, (Pacific time)
d.valueOf()                     // => 1262332800000

```

to convert ojbect to number, Javascript tries `valueOf()` first, if object has `toString()` method that returns a primitive value. Otherwise, it throws `TypeError`

 