---
layout: post
title:  Review Modular Arithematic
date:   2017-05-27 22:35:05
categories: Math 
tags: Modular mod review
---

* content
{: toc}

## Modular Arithmetic

The expression $$a \equiv b(mod \ n)$$,pronounced "a is congruent to b Modulo n," means that $$a-b$$ is a multiple of n. Given a, there is only one value b between 0 and n-1 so that $$a \equiv b(mod n)$$. We call b the residue of a Modulo n and write b = a (mod n)







### Quick facts:

A number and its negative are usually not congruent $$2\not\equiv -2 (mod \ 9)$$, since $$2-(-2)=4$$ is not a multiple of 9. This is the source of many mistakes. 

Suppose $$a \equiv b$$ and $$c \equiv d (mod \ n)$$. Then

$$a+c \equiv b+d(mod \ n)$$ 

$$a \dot c \equiv b \cdot d (mod \ n)$$

**Dividing is not so simple:**

e.g

$$6 \equiv 36(mod \ 10)$$

but dividing by 2 would not give

$$3 \equiv 18 (mod \ 10)$$



$$5 \equiv 2 (mod \ 3)$$

$$17 \equiv 1 (mod \ 2)$$

$$4 \equiv 0 (mod \ 4)$$




If $$n \lvert m$$,n & m > 1 and $$\in \mathbb{Z}$$. Then if
$$a \equiv b(mod \ m)$$, a & b $$\in \mathbb{Z}$$,$$a \equiv b(mod \ n)$$

### Proof:

If $$a \equiv b(mod \ m)$$, then $$a = b+km$$, $$m \in \mathbb{Z}$$. 
and $$n \lvert m$$ implies $$m = tn$$. So a = $$b+k(tn)=b+(kt)n$$, therefore, $$a \equiv b(mod \ n)$$


## Congruence 

Check out [Congruence and Fermat's little theorem](https://www.youtube.com/watch?v=QgPfagOgOAc)

a div n = q  and  a mod n = r

a is dividend

n is divisor

q is qotient

r is remainder

if r = 0 then $$n \lvert a$$

### Example 1

$$3 \lvert 16, q = 5,r = 1$$

can be denoted as 16 (mod \ 3) = 1

$$3 \lvert 40 ,q = 13,r = 1.$$

can be denoted as 40(mod \ 3) = 1

Then observe

$$40 \equiv 16 \equiv 1 (mod \ 3)$$

### Generalization

$$a \equiv b (mod \ n)$$

$$c \equiv d (mod \ n)$$

Then there are 3 facts

1: $$a \pm c \equiv b \pm d (mod \ n)$$
remainder of sum equals the sum of remainders

2: $$ ma \equiv mb (mod \ n)$$
remainder of multiple equals multiple of remainders.

3: $$ac \equiv bd(mod \ n)$$
remainder of products equals to product of remainders.

Note: dividion does not work

### Example 2

$$47 \equiv 2 (mod \ 5)$$

$$18 \equiv 3 (mod \ 5)$$

$$47+18 \equiv 5 (mod \ 5) \equiv 0 (mod \ n)$$

### linear combination 

$$3 \times 47 + 2 \times 18 $$

$$3(47) \equiv 3(2)(mod \ 5)$$

$$2(18) \equiv 2(3)(mod \ 5)$$


$$3(47)+2(18) =177 \equiv 12 (mod 5) \equiv 2 (mod \ 5)$$

### product rule

$$47 \equiv 2(mod \ 5)$$

$$18 \equiv 3(mod \ 5)$$

$$47 x 18 = 846 \quad \text{and} \quad 2 x 3 = 6$$

$$846 \equiv 6 (mod \ 5) \equiv 1 (mod \ 5)$$

### power rule

$$47 \equiv 2 (mod \ 5)$$

$$47^{n} \equiv 2^{n} mod \ 5$$

$$19 \equiv 1 (mod \ 9)$$

$$19^{n} \equiv 1^{n} (mod \ 9)$$

## Congruence and Fermat's Little Theorem

$$a^{n} \equiv b^{n}(mod m)$$ and if n is a prime number p.Then

$$a^{p} \equiv a(mod p)$$

For example

When a = 3 and p=11

$$3^{11} \equiv 3 (mod 11)$$

### Definition: Fermat's Little Theorem 
If a and p are coprimes then

$$a^{p-1} \equiv 1(mod p)$$

For example, when $$a = 9$$ and $$p=7$$ we get $$9^{6} \equiv 1 Mod(7)$$. By the "Power Rule", it implies that $$9^{6^{n}} \equiv 1 Mod(7)$$ is also true. This would give a huge help to find remainder of huge number like $$3^{123}$$


### Application of Fermat's little theorem

What's the remainder when $$3^{123}$$ divided by 11.

use Fermat's little theorem

a = 3 p = 11

$$a^{p-1} \equiv 1 (mod \ 11)$$

$$3^{10} \equiv 1 (mod \ 11)$$

$$3^{123} = (3^{10)^{12}} \cdot 3^{3}$$ by product rule

let $$b=1^{12}$$ and c = 27

$$ 1^{12} (mod \ 11)\cdot 27 (mod \ 11) $$

$$ 27 (mod \ 11) \equiv 5 (mod \ 11)$$

so the remainder is 5.



### Sum of Digits of Multiples of Nine

Check out [DR.MATH reference](http://mathforum.org/library/drmath/view/67061.html)

Wonder why when the individual digits of any number that is a multiple of 9 is added up to 9? e.g $$45=5(9)$$ the number $$45$$ has $$4,5$$ as its indivual digits, which add up to 9. 

Let's observe the following

We see $$N=a+10b+100c+1000d+... \\
=a+(b+9b)+(c+99c)+(d+999d)...\\
=(a+b+c+d+...)+(9b+99c+999d+...) \\
=(a+b+c+d+...)+9(b+11c+111d+...) \\
N=(\text{sum of digits of N})+9 \cdot (\text{some number})\\
(\text{sum of digits of N}) = N-9 \cdot (\text{some number}) \\$$

Furthermore
$$(\text{sum of digits of N}) = N-9 \cdot (\text{some number}) \\
$$

We know the number N is a multiple of 9, so $$N=9(k),k \in \mathbb{Z}$$
$$(\text{sum of digits of N}) = 9k-9 \cdot (\text{some number}) \\
(\text{sum of digits of N}) = 9\cdot(k-(\text{some number})) \\
(\text{sum of digits of N}) = 9\cdot(\text{some number}) \\
$$

### Expansion of the concept

In the case when N is not a multiple of 9, then there is remainder r such that
$$(\text{sum of digits of N}) = 9\cdot(\text{some number}) + r\\
$$

This could be expressed through modulo notation

$$(\text{sum of digits of N}) \equiv r \ mod \ 9$$

from above we see that for any $$N \in \mathbb{Z} \implies N=a+10b+100c+1000d+...$$. 

Let $$a,b,c,d,...\in \mathbb{Z}$$ be labelled as $$a_{1},a_{2},...a_{n},n \in \mathbb{Z}$$ 

then 
$$\implies N=a+10b+100c+1000d+...= \sum_{n=0}^{N}a_{n}10^{n}$$

Since if N is not a multiple of 9, then $$N= \sum_{n=0}^{N}a_{n}10^{n}=9k+r \implies N \equiv r \ mod \ 9$$

and because 

$$(\text{sum of digits of N}) \equiv r \ mod \ 9$$

Then according to Example 3

$$\sum_{n=0}^{N}a_{n}10^{n} \equiv \sum_{n=0}^{N}a_{n}$$

**Formal proof**

The key observation is $$10 \equiv 1 \ mod \ 9$$

Therefore 
$$10^{2} \equiv 1 \cdot 1 \equiv 1 \ mod \ 9 \\
10^{3} \equiv 1 \cdot 1 \cdot 1 \equiv 1 \ mod \ 9$$

and so for any power of 10: 
$$10^{n} \equiv 1 \ mod \ 9$$ for all $$n \in \mathbb{N}$$

$$N \equiv \text{sum of digits of N}) \equiv \text{sum of digits of N}) \ mod 9 $$

so 

$$\sum_{n=0}^{N}a_{n}10^{n} \equiv \sum_{n=0}^{N}a_{n}$$


### Application "casting out nines"

consider the following (incorrect) sum. The number in the penultimate column is the sum of the digits, and the number in the last column is the repeated sum of the digits until reaching a number between 0 and 9.

$$\begin{array}
{crrrr}& 1588 & 22 & 4 \\ 
{+} & 1805 & 14 & 5 \\ 
\hline & 3493 & 19 & 1 &  
\end{array}
 $$

If the addition had been correctly performed, the remainder mod 9 of the sum would equal the sum of the remainders; so we know a mistake was made.

$$\begin{array}
{crrrr}& 1588 & 22 & 4 \\ 
{+} & 1805 & 14 & 5 \\ 
\hline & 3393 & 18 & 0 &  
\end{array}
 $$

### Example 4

What is the last digit of $$7^{7}$$?

We want to know $$7^{7} \ mod \ 10$$. Notice $$7^{0} \equiv 1,7^{1} \equiv 7,7^{2} \equiv 9,7^{3} \equiv 3,7^{4} \equiv 1$$. 
The residues of $$7^{n} \ mod \ 10$$ repeat themselves every time n increases by 4. Therefore $$m \equiv n \ mod \ 4$$ then $$7^{m} \equiv 7^{n} mod 10$$
So $$7^{7}=7^{4}7^{3} \equiv 1 \cdot 3 \equiv 3$$. So 3 is the last digit of $$7^{7}$$

### Example 4

What is the last digit of $$7^{7^{7}}$$?
Notice that $$7^{7}$$
From previous example, we see that $$$$



