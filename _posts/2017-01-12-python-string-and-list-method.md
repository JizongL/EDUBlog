---
layout: post
title:  python string and list method collections
date:   2017-01-09 22:48:05
categories: Python 
tags: string_method string
---

This is my collection of Python string methods

* content
{: toc}


### remove punctuation 

```
out = "".join(c for c in asking if c not in ('!','.',':'))
```

### remove the braket of a list

```
str(list)[1:-1]
```

### Check if set1 is a subset of set2
```
set(set1).issubset(set2)
```

### Check if an element exists in a list

```
if x in list:
	return True
else:
	return False
```

### Delete the whole list

```
del self.__set[:]
```

### .join()

```py

string = '123456789'
string = (' '.join(string))


```
output

```
'1 2 3 4 5 6 7 8 9 0'

```
### split()

use the previous string.

```
string.split()

```
output

```
['1', '2', '3', '4', '5', '6', '7', '8', '9', '0']

```

### count the number of specific elements in a list of string

```
matching = [s for s in some_list if "abc" in s]
len(matching)
```

### stride (or step); [::2] 

Sequence slicing not only supports specifying a start and end value, but also a stride (or step); [::2] selects every second value starting from 0, [1::2] every value starting from 1.
```
>>> A = [1, 3, 2, 6, 5, 7]
>>> B, C = A[::2], A[1::2]
>>> B
[1, 2, 5]
>>> C
[3, 6, 7]
```

### filter(None,list)

remove empty lines from text file.

```
import re
newlist = list(filter(None, list))
```

### iterative
```

>>> originalList = [1, 2, 3, 4, 5]
>>> newList = []
>>> for item in originalList:
...     newList.append(item*2)
... 
>>> print(newList)
[2, 4, 6, 8, 10]
```


### list comprehension
```
>>> originalList = [1, 2, 3, 4, 5]
>>> newList = [item*2 for item in originalList]
>>> print(newList)
[2, 4, 6, 8, 10]
```

### Maps

```
>>> def double(x): return 2*x
... 
>>> originalList = [1, 2, 3, 4, 5]
>>> newList = list(map(double, originalList))
>>> print(newList)
[2, 4, 6, 8, 10]
```

### list modulus application

function applies modulus to a list, and return non-repeat results.

```
def f(values, x):
    seen = set()
    add = seen.add
    return [res for res in (i % x for i in values) if res not in seen and not add(res)]

>>> f([1,2,6,15,19], 4)
[1, 2, 3]

```

with repeating result

```
def f2(values, x):
    seen = set()
    add = seen.add
    return [res for res in (i % x for i in values)]

print(f2([1,2,6,15,19], 4))

>>>[1, 2, 2, 3, 3]

```




### add two lists of integers

Use zip function, **note**, x and y must be the same length and same type. 

```
>>> a = [1,2,3,4,5]
>>> b = [5,4,3,2,1]
>>> c = [x+y for x,y in zip(a, b)]
>>> c
[6, 6, 6, 6, 6]

```


###

convert list of intable strings to int
```
def try_int(x):
    try:
        return int(x)
    except ValueError:
        return x

[try_int(x) for x in  ['sam', '1', 'dad', '21']]        

```


### collect all lines of text file into a list

```
FILENAME = "isbn.txt"
infile = open(FILENAME,'r')
lines = list(line for line in infile if line)
```

## system print out output to file

```
import sys
sys.stdout = open('file', 'w')
print 'test'
```

## find the mode of a list of integers.
```
max(set(max_total), key=max_total.count))
```