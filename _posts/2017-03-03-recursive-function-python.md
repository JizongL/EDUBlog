---
layout: post
title: Recursive Function with Python
date: 2017-03-03 21:01:01
categories: Programming
tags: coding python recursive_function recursion
---
* content
{: toc}

## print a recursive message. 







```
def main():
    message(5)

def message(times):
    if times > 0:        
        print("This is a recursive function")
        message(times - 1)        
main()
```
Output
```
This is a recursive function
This is a recursive function
This is a recursive function
This is a recursive function
This is a recursive function
```

```
def main():
    message(5)

def message(times):
    if times > 0:        
        print("This is a recursive function")
        message(times - 1) 
        print("This is a recursive function")       
main()
```
```
This is a recursive function
This is a recursive function
This is a recursive function
This is a recursive function
This is a recursive function
This is a recursive function
This is a recursive function
This is a recursive function
This is a recursive function
This is a recursive function
```

but there is difference between the first print and the second print although it seems they are just 10 prints statements in this context. Now, if we change it to be. 



```
def main():
    message(5)

def message(times):
    if times > 0:
        print("test")
        print("This is a recursive function")
        message(times - 1)
        print("This is a recursive function")
main()


test
This is a recursive function
test
This is a recursive function
test
This is a recursive function
test
This is a recursive function
test
This is a recursive function
This is a recursive function
This is a recursive function
This is a recursive function
This is a recursive function
This is a recursive function

```

So, the sequence of the print statement matters, either before and after the recursive function call. 

## factorial using recursive function 
n! factorial recursive function 

```
## print out n! formula
def factorialFun(n):
    if n == 0:
        return "0!"
    else:
        return str(n)+"!"+factorialFun(n-1)

## calculate n!
def factorial(n):
    if n == 0:
        return 1
    else:
        return n * factorial(n-1)

## main function
def main():
    n=int(input("Enter n: "))
    ## calling the two functions to generate the formula and answer. 
    print(str(n)+"! =",factorialFun(n),"=",factorial(n))

main()


```


## adding sum of digits in a range

```
def main():
    numbers = [1,2,3,4,5,6,7,8,9]
    my_sum = range_sum(numbers,2,5)
    print("The sum of items 2 through 5 is",my_sum)

def range_sum(num_list,start,end):
    if start > end:
        return 0
    else:
        return num_list[start]+range_sum(num_list,start+1,end)

main()
```

## Fibonacci sequence

```
def fibonacci(n):
	if n ==0:
		return 1
	elif n ==1:
		return 1
	else:
		return fibonacci(n-1)+ fibonacci(n-2)


def main():
    print("The first 10 numbers in the")
    print("Fibonacci series are:")

    for number in range(1,11):
        print(fibonacci(number))

main()

```

## Greatest common divisor
```


def gcd(x,y):
    if x%y==0:
        return y
    else:
        return gcd(x,x%y)

def main():
    num1 = int(input("Enter an integer: "))
    num2 = int(input("Enter another integer: "))
    print("The greatest common divisor of")
    print("The two numbers is",gcd(num1,num2))


main()


```
