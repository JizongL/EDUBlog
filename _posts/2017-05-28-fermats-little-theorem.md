---
layout: post
title:  Fermat's Little Theorem
date:   2017-05-27 20:35:05
categories: Math
tags: Fermat's_little_theorem congruence
---
* content
{: toc}


## Fermat's Little Theorem

In 1640, Fermat conjectured 

$$\alpha^{p-1} = i (mod \ p)$$





Euler(1736) proved it in 1760.

$$\alpha^{\phi(n)} \equiv 1 (mod \ n)$$

gcd(a,n)=1


Find remainder when a large number is divided by a prime number.
Usually, the number is too big for a calculator to deal with. 

Check out [Fermat's Little Theorem Visualization](https://www.youtube.com/watch?v=XPMzosLWGHo),this visualization beautifully illstrate the basic principle of group theory in terms of Fermat's Little Theorem.


Check out [reference video](https://www.youtube.com/watch?v=CZJlr_rje48) by [AllLogarithmsEqual](https://www.youtubecom/channel/UCUKULfZvMf0vyO8a1cyN0Pw)

Choose a prime number p, then randomly choose a coprime number a. 
And 

$$a^{p-1} mod \ p \equiv 1$$

implies 

$$a^{p-1} \equiv 1 mod \ p $$

Table

|p|a|$$a^{p-1}$$| $$\equiv ?(mod \ p)$$|
|:---: |:---: |:---: |:---:|
|2 | 3| 3| 1|
|2 | 5| 5| 1|
|2 | 7| 7| 1|
|3 | 2| 4| 1|
|3 | 4| $$4^{3-1}=16$$| $$1 \equiv 16 mod 3$$|
|3 | 7| $$7^2=49$$| 1|
|5 | 12| $$12^{4} = 20736$$ | 1 |


## Fermat's Little Theorem (story version)

Check out [Fermat's little theorem](https://www.youtube.com/watch?v=dgc_qhQMfQ8) by [ 
Sezan Vakhpieva](https://www.youtube.com/channel/UCae7yTaK2WXfjddlTmoQpaQ)

First, let's assume that all prime numbers do not have any children.And all other complex numbers have children. 
e.g. 10 has children 2 and 5, 13 is prime, doesn't have any children. The 1 can't and 13 can't be its child and parent at the same time. 
 
coprime
2 and 9 are coprime, they only have 1 as their universal children. 


Once upon a time, 0,1,2,3,4,5,6,...,$$\infty$$
0 is everyone's parent
1 is everyone's child
prime numbers do not have any child. 
composite numbers have children.

However, not all numbers are happy. 

for example, 15 only have 3 and 5 prime children, but it also want to have 7,11,13,17,19 as children.

10 only has 2 and 5, but it also want to have 3,7,11
14 has 7 and 2, but it also want to have 10,15,14

There is a king lives in the kingdom of numbers, and he wants to help them. He thought of a solution. 

Pierre de Fermat divides the numbers into two groups, all parents who want prime children is denoted as As, and all prime children will be denoted as ps. 

When $$\frac{a}{p}$$, r < p, then r = 1,2,3,...,p-1

e.g

8 div 7, r = 1

8 div 8, r = 0

10 div 7, r = 3

11 div 7, r = 4

12 div 7, r = 5

13 div 7, r = 6

then 

64 div 7, r = 1

Use Modulo Notation

$$8 \equiv 1 mod \ 7$$

$$9 \equiv 2 mod \ 7$$

$$ 13 \equiv 6 mod \ 7$$

$$15 \equiv 1 mod \ 7$$

$$16 \equiv 2 mod \ 7$$

remainders $$(1,2,3,...,p-1) \equiv a,2a,3a,...,(p-1)a$$

$$a \times 2a \times 3a ... (p-1)a \equiv 1 \times 2 \times 3...(p-1)(mod p)$$

$$(p-1)!a^{p-1} \equiv (p-1)!(mod \ p)$$

$$a^{p-1} \equiv 1 (mod \ p)$$

$$a^{p-1}-1 \equiv 0 (mod \ p)$$

e.g a=15,p=7

$$15^{6} -1 \equiv 0 (mod \ 7)$$

11390625 - 1=11390624

$$11390624 (mod \ 7) = 0$$

Now, 15 can finally have 7 as its children. 

### Euler's proof
Check out [The old math behind modern eCommerce](https://www.youtube.com/watch?v=6TZD2E2ZW6o) by Gideon Samid
