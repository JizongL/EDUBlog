---
layout: post
title: Modern Algebra Class 1
date:   2017-08-16 10:00:00
categories: Math
tags: abstract_algebra classnote
---


[dihedral group examples](https://www.maa.org/sites/default/files/images/upload_library/4/vol1/architecture/Math/dihedral.html)


## Review

### The well-ordering principle

every nonempty subset of the set of positive integers has a least element. 

Definition: Let a be an integer and let d be a nonzero integer, we say that d devides a if there exists an integer b such that a=db.
(In this case we also say that a is a multiple of d or that d is a divisor (factor) of a)

Notation: 
$$a | a$$

Definition: A prime p is a positive integer, p≥2, whose only positive divisors are 1 and p.

###The division Algorithm

Let a be an integer and let b ($$b≠0$$)be a positive integer, then there exists unique integers q and r such that $$a=qb+r$$, where $$0≤r≤b$$

### Definition

Let a and b be integers, not both zero.

The GCD of a and b is the positive integer d that is the largest common divisor of both a and b, we write $$d = gcd(a,b)$$

If $$gcd(a,b)=1$$, we say that a and b are relatively prime. 

### Theorem 0.2

For any nonzero integers a and b, there exists integers s and t such that $$gcd(a,b)=as+bt$$
Moreover, gcd(a,b) is the smallest positive integers that can be written in the form as+bt.

Corollary: If a and b are integers with gcd(a,b)=d, then there exists integers s and t such that 1=as+bt.

Euclid's lemma.
If p is a prime and p divides ab, then p divides a or p divides b (a and b are integers)

Theorem 0.3
Every positive integer greater than 1 is either a prime or can be expressed as a product of primes. The product is unique, except for the order in which the prime appear. 


### Definition: 

The LCM of the nonzero integer a and b is the smallest positive common multiple of a and b. 

### Definition: 

Let n be a positive integer, n≥2, let a and b be integers. 
We say that a is congruent to b modulo n. 

n is a divisor of a-b


### equivalent relation

Congruence modulo n is an equivalence relation on the set $$\mathbb{Z}$$ of integers. 
$$[a] \ \bar{a}$$ will represent the equivalence class of the integer a .

The set q equvalence classes modulo n is the set
$$\mathbb{Z_n}=\{0,1,2,3,...n-1\}$$

example: n = 3
$$\mathbb{Z_3}=\{0,1,2\}$$
$$0 = \{3k | k \in \mathbb{Z}\} = \{0,3,6,...\} \\
1 = \{3k +1 | k \in \mathbb{Z} \} = \{1,4,7,...\} \\
2 = \{3k +2 | k \in \mathbb{Z} \} = \{2,5,8,...\} \\
$$

