---
layout: post
title:  intermediate programming note
date:   2017-01-19 10:00:00
categories: Programming
tags: Computer_science MSU python
---

## class 1

Immutable- do not change 
- examples: ints, floats, strings





```
a_string = "cse 1384"

a_string.upper()

print(a.string)

>>> "cse 1384"  

```
the printout is still lower case. The `a_string.upper()` went to 

garbage collection. 

Mutable -may be changed.
-examples, list, dictionaries,objects of user - define classes


* example 1

```
a_list = [1,2,3]

x = a_list

x.append(4)

print(a_list)

```

![see hand drawn diagram]({{root_url | prepend: site.baseurl}}/asset/programming-note-images/class-1/class-1-a.jpeg)

* example 2

```
name1 = "David"

name2 = name1

name1 = "Chris"

name2 = "Mary"

```
![see hand drawn diagram]({{root_url | prepend: site.baseurl}}/asset/programming-note-images/class-1/class-1-b.jpeg)


* example 3

This demonstrate that the data is stored in a local variable inside the function, so that global variable x remained unchanged. 

```
x = 7

def fun_a():
	x = 8
	print(x)

def main():
	print(x)	
	fun.a()
	print(x)



```
* example 4

In this block, x is first assigned the value 10. Then it feeds into fun_b(x) as argument. However, x is assigned the value 27 inside the funtion, therefore, its effect is only local. So, the final printout of x remain 10.

```

def fun_b(x):
	print(x)
	x = 27
	print(x)


def main():
	x = 10
	print(x)	
	fun_b(x)
	print(x)	

main()	

>>> 10
>>> 10
>>> 27
>>> 10



```
![see hand drawn diagram]({{root_url | prepend: site.baseurl}}/asset/programming-note-images/class-1/class-1-c.jpeg)

* example 5

notice that the `append.()` inside the function create a brand new list, therefore the result is `[1,2,3,4]`


```
def fun_c(e,f,g):
	e+=2
	f.append(4)
	g = [8,9]
	print(e,f,g)


def main():
	b = 0
	c = [1,2,3]
	d = [6,7,8]
	fun_c(b,c,d)
	print(b,c,d)

main()	

>>>2 [1, 2, 3, 4] [8, 9]
>>>0 [1, 2, 3, 4] [6, 7, 8]


```

![see hand drawn diagram]({{root_url | prepend: site.baseurl}}/asset/programming-note-images/class-1/class-1-d.jpeg)



## class 2

Shallow copy - create a copy of one structure and the references in the original

```
import copy 
x=[1,[2,3],"z"]
y = copy.copy(x)
```
