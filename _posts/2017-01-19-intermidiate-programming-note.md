---
layout: post
title:  intermediate programming note
date:   2017-01-19 10:00:00
categories: Programming
tags: Computer_science MSU python
---
* content
{: toc}

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
	fun_a()
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

### example 1

```
import copy 
x=[1,[2,3],"z"]
y = copy.copy(x)
```

### example 2

Deep copy -create a copy of the original structure and all nested structures. 

```
import

list1 = [1,2,3,4]

list2 = [5,6,7,8]

my_list = [list1, list2]

new_list = copy.copy(my.list)

list1.append(10)

print(my_list, new_list)

### use deepcopy

import

list1 = [1,2,3,4]

list2 = [5,6,7,8]

my_list = [list1, list2]

new_list = copy.copy(my.list)

list1.append(10)

print(my_list, new_list)

```

### example 3: 

c is alias

```
import copy

b = [[1,2],[3,4,5],6]
c = b
c[0] = 0
d = copy.copy(c)
e = copy.deepcopy(d)
c.append(7)

print(b)
print(c)
print(d)
print(e)
```

![see hand drawn diagram]({{root_url | prepend: site.baseurl}}/asset/programming-note-images/class-2/class-2-a.jpeg)

### example 4

```
import copy
a =[[1,2,3],[5,6,7]]
b = [8,9]
a.append(b)
c=copy.copy(a)
d=copy.deepcopy(a)
e = a
a.append(20)
b.append(10)
a[0].append(20)
d[0].append(15)
print("a:",a)
print("b:",b)
print("c:",c)
print("d:",d)
print("e:",e)

[[1,2,3],[5,6,7],20]
e,a ->[20,[5,6,7],20]
b-> [8,9,10]
c-> [[1,2,3],[5,6,7],[8,9]]
d-> [15,[5,6,7],[8,9]]


```

![see hand drawn diagram]({{root_url | prepend: site.baseurl}}/asset/programming-note-images/class-2/class-2-b.jpeg)


## class 3

class 

an object is an instance of a class

A reference variable holds the address of an object

`my_list` is the reference and `[12,7,9]` is the python list object. 

```
my_list = [12,7,9]

```

2 parts to define inside a class. 

* data - member data, instance data, fields, attributes

* functions - member functions, methods, behaviors

class circle:

`def__init__(self)` `self` is the reference variable for the object.

`self.radius = 1` this is a public reference

```
class Circle:
	def __init__(self)
		self.radius = 1

def main()
	a_circle = Circle()
	a_circle.radius = 7

```

Usually, we do not want our class to be pubic, then we need to add `self.__radius = 1` to become private 

to ensure the right radius is entered, add `raise ValueError("Must be great than 0")` to raise error. 

Also we need to add a set and get methods

`get_radius()` and `set_radius` methods can allow access to the private member data inside the class. 

```

class Circle:
	def __init__(self)
		self.radius = 1

	def set_radius(self, radius):
		if radius < = 0:
			raise ValueError("Must be great than 0")
		self.__radius = radius	

	def get_radius(self, radius):	
		return self.__radius

def main()
	a_circle = Circle()
	a_circle.set.radius(7)
	print(a_circle.get_radius())

```

Include more methods

```

class Square:
    def __init__(self,length, width):
        self.__length = length
        self.__width = width





    def set_square_side(self,length,width):
        self.__length = length
        self.__width = width

    def get_square_sides(self):
        return self.__length, self.__width

    def get_square(self):
        return(self.__length* self.__width)


def main():
    print("calculate the area of a square")
    a_square = Square(1,1)
    length = int(input("Enter the length of the square"))
    width = int(input("Enter the width of the square"))

    a_square.set_square_side(length,width)
    print("the length and width you entered are:",a_square.get_square_sides())

    print("The area of the square is: ",a_square.get_square())

main()


```


## class 4

UML Diagrams unified modeling language

communicate design of your classes

![see hand drawn diagram]({{root_url | prepend: site.baseurl}}/asset/programming-note-images/class-4/class-4-a.jpg)

### Television Example

![see hand drawn diagram]({{root_url | prepend: site.baseurl}}/asset/programming-note-images/class-4/class-4-b.jpg)



```
class Television:
    def __init__(self,channel=1,volume=1):
        if channel <=0:
            raise ValueError("ERROR; Channels must be great than 0.")
        if volume < 0:
            raise ValueError("ERROR; Volume must be great than 0.")
        self.__channel = channel
        self.__volume = volume

    def set_channel(self,channel):
        if channel <=0:
            raise ValueError("ERROR; Channels must be great than 0.")
        self.__channel= channel


    def get_channel(self):
        return self.__channel

    def set_volume(self,volume):
        if volume < 0:
            raise ValueError("ERROR; Volume must be great than 0.")
        self.__volume = volume

    def get_volume(self):
        return self.__volume

    def __str__(self):
        a_str = "Channel: " + str(self.__channel) + "\n"
        a_str += "Volume: " + str(self.__volume)
        return a_str

    def channel_up(self):
        self.__channel+=1

    def channel_down(self):
        self.__channel-=1

def main():
    ## Testing Constructor
    tv = Television()
    ## print(tv.get_channel(),tv.get_volume())
    your_tv = Television(4,5)
    ##print(your_tv.get_channel(),your_tv.get_volume())
    ## print(your_tv)
    ## Testing set_channel and get_channel

    print(tv)
    tv.channel_down()

    print(tv)

    tv.channel_up()

    print(tv)
main()




```




### Song class

![see hand drawn diagram]({{root_url | prepend: site.baseurl}}/asset/programming-note-images/class-4/class-4-c.jpeg)



## class 5

review on the quiz

![last-question]({{root_url | prepend: site.baseurl}}/asset/programming-note-images/class-5/class-5-a.jpeg)

### Inheritance

Inheritance 

- method that allows for modular and hierarchical organization

- create a new class from an existing one. 

Existing 

- Base class, super class, parent class

New

- Derived class, subclass, child class. 



## Class 17

### Recursion: a function that calls itself. 

**Recursive functions have:**

* a test(if statement)
* base case - does not recurse, simple to sovle. 
* recursive case - has recursive function call gets closer to the base case. 

```
def count.down(num):
    if num ==0:
        print("Blast off!")
    else:
        print(num,"...")    
        count.down(num-1)    
        print(num,"done")
count.down(10)

```

Output  | Lisa H
10...   | Gary (num = 9)
9...    | James (num = 8)
8...    | Grant (num = 7)
7...    | Nisha (num = 6)
6...    | Lena (num = 5)
5...    | ...... 
4...    | ...... 
3       | ...... 
2       | ...... 
1       | ...... 

Then it return the result and delete the memory. 


**The following lacks a base case. **

```
def message():
    print("Recurrsive message")
    message()
message()    

```


```
def add.list(x):
    if len(x)==0
        return 0
    
    else:
        return x[0]+add.list(x[1:])

a = [2,7,12,15,20]
print(add.list(a))
```

add_list
x -> [2,7,12,15,20]

return 2+ ________

add_list'

x -> [7,12,15,20]

return 7+

add_list''
x -> [12,15,20]
return 12+

add_list'''
x -> [15,20]
return 15+

add_list''''
x -> [20]
return 20+
``` 
The depth of recursion is 5. 

Then unwinding and returning the result, as well as clearing its memory. 


## class 18

### greatest common divisor example
```
def gcd(x,y):
    if x % y ==0:
        return y
    else:
        return gcd(y,x%y)

print(gcd(15,42))

print(gcd(42,15))
```

### Recursive function steps

2 steps
write the base case
write the recursive case. 

![stepping through]({{root_url | prepend: site.baseurl}}/asset/programming-note-images/class-18/class-18-a.jpeg)

### factorial example

```
def factorial(n):
    if n ==0:
        return 1 ## base case
    else:
        return n * factorial(n-1)  ## recursive case.  

print(factorial(4))        
```
stepping through the function. 

factorial(4)
4>0
return 4 * (6) = 24


factorial(3)
3>0
return 3*(2) = 6

factorial(2)
2>0
return 2*(1) = 2 

factorial(1)
1 > 1
return 1*1

factorial 0
0
return 1



![factorial]({{root_url | prepend: site.baseurl}}/asset/programming-note-images/class-18/class-18-b.jpg)

### Example 3

```
def print_numbers(n):
    if n == 1:
        print(1)
    else:
        print_numbers(n-1) ## to print in ascending order
        print(n)

print_numbers(5)
```


## class 19

### Indirect Recursive function

function a calls function b. Recursively. 
```
def func_a(n):
    print(n, "...")
    if n > 0:
        func_b(n)
    else:
        print("Blast off!")

def func_b(n):
    #print("Recursion from func_a to func_b which is indirect recursion")
    func_a(n - 1)

func_a(5)
```

Linear Search
```
def linear_search(data, key):
    for item in data:
        if item == key:
            return True
    return False
```


[See animation](http://www.cs.armstrong.edu/liang/animation/web/LinearSearch.html)


### Binary Search

```
def binary_search(data, key, low, high):
        if low > high:
                return False
        else:
                mid = (low + high) / 2
        if target == data[mid]:
                return True
        elif target < data[mid]:
                return binary_search(data, target, low, mid-1)
        else:
                return binary_search(data, target, mid+1, high)

```

Linear V.S Binary

Linear Search 
Big is O(n)
Binary Search
Binary is O(n log(n))

Linear is still used because it is useful when list is not sorted. 

### Sorting

*Exchange - rearrange pairs of elements which are out of order, until no such pairs remain
*Selection - extract the largest element from the list, remove it, and repeat
*Insertion - putting an element in the appropriate place in a sorted list yields a larger sorted list
*Distribution - separate into piles, then sort each pile
*Merging - Two sorted lists can be easily combined to form a sorted list

### Bubble Sort

[See Animation](http://cathyatseneca.github.io/DSAnim/web/bubble.html)

### Merge Sort
[See Animation](http://www.ee.ryerson.ca/~courses/coe428/sorting/mergesort.html)

### Quick
[See Animation](https://www.youtube.com/watch?v=aQiWF4E8flQ)

<iframe width="560" height="315" src="https://www.youtube.com/embed/aQiWF4E8flQ" frameborder="0" allowfullscreen></iframe>


<iframe width="560" height="315" src="https://www.youtube.com/embed/vxENKlcs2Tw" frameborder="0" allowfullscreen></iframe>