---
layout: post
title: Graph Theory Exam 1 solution
date: 2017-02-20 11:00:00
categories: Math
tags: Graph_Theory_note exam
---

### Question 1

Give the definition of an isomorphism from the graph G to the graph H. 



### Question 2

How many strings can be obtained by reordering the letters in the string MRALABAMA?

$$\frac{9!}{2!4!1!1!}$$

### Question 3
How many ways are thre to order the number 1 through 10 so that all the even numbers come before any of the odd numbers. 

$$5! \cdot 5!$$

### Question 4
If the math department at a certain university has 30 people, how many ways are there to select 3 people to serve on the curriculum commitee and another 3 people (all distict from the first 3) to serve on the seminar commitees. 

$$\binom{30}{3} \cdot \binom{27}{3}$$


### Question 5
How many automorphisms does the complete bipartite graph K_{1,3} have? Justify your answer. 


()(1,2,3)(1,3,2)(1,2)(2,3)(1,3)


### Question 6

Find all possible lengths of pathes in the complete graph $$K_{n}$$

A path can use each vetex at most once, so no pathes longer than length n-1(N vertices)

n!

### Question 7



a) $$24^{n}$$

b) strings missing some vowels.
A_{L} = strings missing letter L

so $$\lvert A_{L} \lvert = 25^{n} \\
 \lvert A_{L} \cap A_{M}\lvert = 24^{n} \\
 ----------$$ 

$$\sum_{\emptyset ≠ I \subseteq \{A,E,I,O,U\}}(-1)^{\lvert I \lvert-1} \cdot (26-\lvert I \lvert)^{n}$$
 
numbers of strings w/ no missing vowel = 26^{n}- above. 

$$26^{n} \sum_{k=1}^{5} (-1)^{k-1}\binom{5}{k} \cdot(26-k)^{n} = \sum_{k=0}^{5}(-1)^{k}\cdot \binom{5}{k}(26-k)^{n}$$


Show that $$\sum_{k=0}^{n}\frac{1}{k+1}\binom{n}{k} = \frac{2^{n+1}-1}{n+1}$$

Integrate both sides. 

$$\frac{(1+x)^{n+1}}{n+1} = \sum_{k=0}^{n}\binom{n}{k} \frac{x^{k+1}}{k+1} + C$$

Find C

C = constant term on LHS

$$\frac{1}{n+1}$$

plug in x = 1

$$\frac{(1+1)^{n+1}}{n+1}- \frac{1}{n+1} = \sum_{k=0}^{n}\binom{n}{k} \cdot \frac{1}{k+1}$$


Solution 2 (Play with factorials carefully)

$$\frac{2^{n+1}-1}{n+1} = \frac{( \sum_{k=0}^{n+1}\binom{n+1}{k}-1)}{n+1}$$

$$\frac{2^{n+1}-1}{n+1} = \frac{( \sum_{k=1}^{n+1}\binom{n+1}{k})}{n+1}$$

$$\frac{\sum_{k=1}^{n+1}\frac{(n+1)!}{k!(n+1-k)!}}{n+1}$$

$$\sum_{k=1}^{n+1}\frac{n!}{k!(n+1-k)!}$$

k=k+1

$$\sum_{k=0}^{n}\frac{n!}{(k+1)!\cdot n+1-(k+1)!}$$

$$\sum_{k=0}^{n}\frac{n!}{(k+1)k!(n-k)!}$$

$$= \sum_{k=0}^{n}\frac{1}{k+1}\binom{n}{k}$$


