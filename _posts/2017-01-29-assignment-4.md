---
layout: post
title:  graph theory homework assignment 4
date:   2017-02-01 07:06:05
categories: Graph_Theory_homework
tags: Graph_Theory_homework
---
## Assignment 4

Chapter 3.7

### Question 1: 





(Sieve of Eratosthenes) How many numbers are left in the set
{1, 2, . . . , 1000} after all multiples of 2, 3, 5, and 7 are crossed out?
(Q 3.7.3)


Let N be the finite set {1, 2, . . . , 1000}, then let the $$A_{1},A_{2},A_{3},A_{4}$$ be subsets of N and they are multiples of the prime number 2,3,5 and 7 respectively, then we are to find the set L, which is a subset of N that includes only elements that are not multiples of 2,3,5 and 7.  

Then the number are left in the set N after all multiples of 2,3,5,7 are crossed out are 

$$L = 4 + N - \bigcup_{i=1}^{4}A_{i}$$

Then according to the inclusion and exclusion formula

$$
 \lvert A_1 ∪A_2 ∪A_3 ∪A_4 \lvert  = \\ \lvert A_1 \lvert + \lvert A_2 \lvert + \lvert A_3 \lvert + \lvert A_4 \lvert \\ 
−  \lvert A_1 ∩ A_2 \lvert − \lvert A_1 ∩ A_3 \lvert − \lvert A_1 ∩ A_4 \lvert − \lvert A_2 ∩ A_3 \lvert − \lvert A_2 ∩ A_4 \lvert − \lvert A_3 ∩ A_4 \lvert  \\
+ \lvert A_1 ∩ A_2 ∩ A_3 \lvert + \lvert A_1 ∩ A_2 ∩ A_4 \lvert + \lvert A_1 ∩ A_3 ∩ A_4 \lvert  +  \lvert A_2 ∩ A_3 ∩ A_4 \lvert \\
− \lvert A_1 ∩ A_2 ∩ A_3 ∩ A_4 \lvert .
$$

Then 

N = 1000, the total number of elements in the set

$$A_{1}= \lfloor \frac{1000}{2} \rfloor = 500$$

$$A_{2}= \lfloor \frac{1000}{3} \rfloor = 333$$

$$A_{3}= \lfloor \frac{1000}{5} \rfloor = 200$$

$$A_{4}= \lfloor \frac{1000}{7} \rfloor = 142$$

$$\lvert A_1 ∩ A_2 \lvert = \lfloor \frac{1000}{2 \cdot 3} \rfloor = 166$$

$$\lvert A_1 ∩ A_3 \lvert = \lfloor \frac{1000}{2 \cdot 5} \rfloor = 100$$

$$\lvert A_1 ∩ A_4 \lvert = \lfloor \frac{1000}{2 \cdot 7} \rfloor = 71$$

$$\lvert A_2 ∩ A_3 \lvert = \lfloor \frac{1000}{3 \cdot 5} \rfloor = 66$$

$$\lvert A_2 ∩ A_4 \lvert = \lfloor \frac{1000}{3 \cdot 7} \rfloor = 47$$

$$\lvert A_3 ∩ A_4 \lvert = \lfloor \frac{1000}{5 \cdot 7} \rfloor = 28$$

$$\lvert A_1 ∩ A_2 ∩ A_3 \lvert = \lfloor \frac{1000}{2 \cdot 3 \cdot 5} \rfloor = 33$$

$$\lvert A_1 ∩ A_2 ∩ A_4 \lvert = \lfloor \frac{1000}{2 \cdot 3 \cdot 7} \rfloor = 23$$

$$\lvert A_1 ∩ A_3 ∩ A_4 \lvert = \lfloor \frac{1000}{2 \cdot 5 \cdot 7} \rfloor = 14$$

$$\lvert A_2 ∩ A_3 ∩ A_4 \lvert = \lfloor \frac{1000}{3 \cdot 5 \cdot 7} \rfloor = 9$$

$$\lvert A_1 ∩ A_2 ∩ A_3 ∩ A_4 \lvert = \lfloor \frac{1000}{2 \cdot 3 \cdot 5 \cdot 7} \rfloor = 4$$

Then 

L = 4 + 1000 - (500 + 333 + 200 + 142 - 166 - 100 - 71 - 66 - 47 - 28 + 33 + 23 + 14 + 9 - 4)

L = 232

If 2,3,5,7 are considered multiple of 1, in that case, L = 232-4 = 228.


### Question 2: 

How many numbers n < 100 are not divisible by a square of any integer
greater than 1?
(Q 3.7.4)

There are 9 perfect squres less than 100 and great than 1. They are $$\{4, 9, 16, 25, 36, 49, 64, 81\}$$

And we know that 16,36,64 are multipe of 4. 81 is multiple of 9. So, only 4,9,25,49 count. 

So, let S be a finite set = $$\{1,2,3,...,99\}$$, and let $$A_{1},A_{2},A_{3},A_{4}$$ be the set contains elements that are multiples of 4,9,25,49, and let L be the set contains elements that are not divisible by 4,9,25,49. 

Then according to the inclusion and exclusion principle(like that from the privious question).


$$ \lvert A_{1} \lvert  = 25, \ \lvert  A_{2} \lvert =11, \lvert A_{3}\lvert =3, \ \lvert A_{4} \lvert =2$$ 

and 

$$ \lvert A_{1} \cap A_{2} \lvert = 3 \ because \ \lfloor \frac{100}{4 \cdot 9} \rfloor = 2$$

$$\lvert A_{1} \cap A_{3} \lvert = 3 \ because \ \lfloor \frac{100}{4 \cdot 9} \rfloor = 1$$

And the followings are all 0.
$$A_{1} \cap A_{4} \\ A_{2} \cap A_{3} \\ A_{2} \cap A_{4} \\ A_{3} \cap A_{4} \\ 
\lvert A_1 ∩ A_2 ∩ A_3 \lvert \\ \lvert A_1 ∩ A_2 ∩ A_4 \lvert \\ \lvert A_1 ∩ A_3 ∩ A_4 \lvert  \\  \lvert A_2 ∩ A_3 ∩ A_4 \lvert \\ \lvert A_1 ∩ A_2 ∩ A_3 ∩ A_4 \lvert $$ 


so $$ L = \lvert S \lvert - \lvert A_{1} \lvert -\lvert A_{2} \lvert -\lvert A_{3} \lvert -\lvert A_{4} \lvert + \lvert A_{1} \cap A_{2} \lvert + \lvert A_{1} \cap A_{3} \lvert = 99 - 25 + 11 + 3 + 2 - 2 - 1 = 61$$


The following table list all the multiples of the square of integers less than 100. 

| n | $$n^{2}$$ multiples | Total |
|:--- |:--- |:--- |
| 2 | 4,8,12,16,20,24,28,32,36,40,44,48,52,56,60,64,68,72,76,80,84,88,92,96,100 | 25 |
| 3 | 9,18,27,36,45,54,63,72,81,90,99 | 11 |
| 4 | 16,32,48,64,80,96 | 6 |
| 5 | 25,50,75 | 3 |
| 6 | 36,72 | 2 |
| 7 | 49,98 | 2 |
| 8 | 64 | 1 |
| 9 | 81 | 1 |



Chapter 3.8

### Question 3
1. There are n married couples attending a dance. How many ways are there to form n pairs for dancing if no wife should dance with her husband?

$$D(n) = n! \left( 1-\frac{1}{1!}+\frac{1}{2!} - \cdots + (-1)^{n}\frac{1}{n!}\right) $$

### Question 4

Determine the number of permutations with exactly one fixed
point. (Q 3.8.2a) 

Assume here are n points, And there is 1 point is fixed, and the other points are free to be randomly chosen. So the permutation is (n-1)!

### Question 5

(b) Count the permutations with exactly k fixed points.
(Q 3.8.2b)

Assume there are n points, and also k of the points are fixed. That means that the rest of the points can be chosen arbitarily. Also, there are C(k, i) ways to choose i elements from k. So, there are

$$D_{n}=n!-\binom{k}{1}(n-1)!+\binom{k}{2}(n-2)!......+(-1)^{n}\binom{k}{k}(n-n)!$$ ways to count the permutations with exactly k fixed points. 



### Question 6

What is wrong with the following inductive “proof” that D(n) = (n−1)! for all n ≥ 2? Can you find a false step in it? For n=2, the formula holds, so assume n ≥ 3. Let π be a permutation of $$\{1,2,...,n−1\}$$ with no fixed point. We want to extend it to a permutation π′ of $$\{1,2,...,n\}$$ with no fixed point. We choose a number $$i ∈ \{1, 2, . . . , n − 1\}$$, and we define $$π′(n) = π(i), π′(i) = n$$, and $$π′(j) = π(j)$$ for $$j ≠ i,n$$. This defines a permutation of $$\{1,2,...,n\}$$, and it is easy to check that it has no fixed point. For each of the $$D(n − 1) = (n − 2)!$$ possible choices of π, the index i can be chosen in n − 1 ways. Therefore, $$D(n) = (n − 2)! · (n − 1) = (n − 1)$$!.

The mistake is in the following step:

it defines that $$π′(n) = π(i), π′(i) = n$$, and $$π′(j) = π(j)$$. Then we can see that according to this definition, 
since π′(j) = π(j), π′(j) = j. But π(j) = j implies there is a fixed point. So, it is a contradiction. 

also if π be a permutation of $$\{1,2,...,n−1\}$$ and π′ as a permuntation of $$\{1,2,...,n\}$$ with no fixed point, as an extension of  π. Let's assume that it is indeed $$π′(j) = π(j)$$, then $$π′(j) =\{1,2,...,j\} = j! $$ and $$π(j)=\{1,2,...,j-1\}=(j-1)!$$ according to its own definition of π(j) and π′(j), but j! ≠ (j-1)!, so this is a contradition. 

### Question 7
How many permutations of the numbers 1, 2, . . . , 10 exist that map no even number to itself?
Applying the answer from question 5. we know that there are 5 even numbers in the set {1, 2, . . . , 10}
so, k = 5 and n = 10. Therefore, the formula is
$$10!-\binom{5}{1}(10-1)!+\binom{5}{2}(10-2)!-\binom{5}{3}(10-3)!+\binom{5}{4}(10-4)!-\binom{5}{5}(10-5)! = 2170680$$.


