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



Q7: Find a recurrence relation for the number of bit strings of length n that contain a pair of consecutive 0s.(Rosen Discrete Text P 510, Q7)

Let an be the number of bit strings of length n containing a pair of consecutive O's. In order to construct a bit string of length n containing a pair of consecutive O's we could start with 1 and follow with a string of length n - 1 containing a pair of consecutive O's, or we could start with a 01 and follow with a string of length n - 2 containing a pair of consecutive O's, or we could start with a 00 and follow with any string of length n - 2. These three cases are mutually exclusive and exhaust the possibilities for how the string might start. From this analysis we can immediately write down the recurrence relation, valid for all $$n ≥ 2: a_{n}= a_{n-1} + a_{n-2} + 2_{n-2}+2^{n-2}$$. (Recall that there are $$2_{k}$$ bit strings of length k.)

see the following code to calculate the result when $$a_{n} = 7$$

```

def num_bit_string_count(a):
    if a == 0:
        return 0
    elif a == 1:
        return 0

    else:
        return num_bit_string_count(a-1) + num_bit_string_count(a-2)+2**(a-2)


print(num_bit_string_count(7))

```

Write a recursive function that accepts arument, n. The function should display n lines of asterisks on the screen, with the first line showing 1 asterisk, the second showing 2 up to nth line that shows n asterisks. 
```
def print_asterisk(n):
    if n ==1:
        print("*")

    else:

        print_asterisk(n-1)
        print("*" * n)

print_asterisk(5)

```