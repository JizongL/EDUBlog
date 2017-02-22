---
layout: post
title:  discrete chapter 3 note
date:   2017-01-24 08:28:05
categories: Discrete
tags: Algorithm 
---

* content
{:toc}


Max Searching Algorithm

max(list)
* 1: set a temp variable equal to the first list element. 
* 2: compare next list element to the temp
* 3: If it is large than temp, set temp = this element.
* 4: repeat 2 - 3 for all items in list. Temp is the max. 

```
def max(list):
	temp = list[0]
	for i in range(1,len(list)):
		if temp < list[i]:
			temp = list[i]
	return temp		

```
Key points about algorithm

* Input
* Output
* Definiteness
* Correctness
* Finiteness
* Effectiveness
* Generality

Binary Search

```
import math

i = 1
j = n
while i < j:
	m = floor((i+j)/2)
	if x > a[m]
		i = m+1
	else
		j = m
if x = a[i]:				
	location = i
else:	
	location  = -1
return location 

	








```

