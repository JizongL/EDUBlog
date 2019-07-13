---
layout: post
title:  Money changing problems
date:   2017-01-25 20:27:05
categories: Math
tags: combinatorics graph_theory generating function 
---



## post from stackexchange


$$(\sum_{j=0}^{100}x^{j})(\sum_{j=0}^{20}x^{5j})(\sum_{j=0}^{10}x^{10j})(\sum_{j=0}^{4}x^{25j})(1+x^{100})$$

The formula above is from[a post from stackexchange touching on this problem](http://math.stackexchange.com/questions/15521/making-change-for-a-dollar-and-other-number-partitioning-problems#)

## 293 Ways to Make Change for a Dollar

**Old Challenge (Joe Shipman)**. Larry King said in his USA Today column that there are 293 ways to make change for a dollar. Is this correct? (Assume only currently minted denominations.)

**Answer**. Yes, if you count a one-dollar coin in change. Raymond Hettinger listed all 293 possibilities, appended at end of column. Michael Caulfield counted up the 292 possibilities other than a one-dollar coin as follows:

see more from [Frank Morgan's Math Chat - 293 Ways to Make Change for a Dollar](http://www.maa.org/frank-morgans-math-chat-293-ways-to-make-change-for-a-dollar)



The following is some information about using generating function to solve the problem, it is from [3.15 The money changing problem](https://www.math.upenn.edu/~wilf/gfology2.pdf) by [Herbert Wilf's](https://www.math.upenn.edu/~wilf/) page 96, I extract it here exactly the same the book. 

## 3.15 The money changing problem

Suppose that in the coinage of a certain country there are 5-cent coins, 11-cent coins, and 37-cent coins. In how many ways can we make change for $17.19?
In general terms, we are given M positive integers

$$ 1 ≤ a_{1} < a_{2} <···< a_{M}$$ 

and we ask the following question: 

for each positive integer n, in how many ways can we write

$$ n=x_{1}a_{1} +x_{2}a_{2} +···+x_{M}a_{M} (∀i:xi ≥0)$$ , <div style="text-align: right"> (3.15.1)</div>

where the x’s are integers?

For given a1,...,aM we write $$ \mathbf{S} = \mathbf{S}(a_{1},...,a_{M})$$ for the set of 

all n that can be written in the form (3.15.1). S is a semigroup of nonnegative integers.

First let’s identify the prefab $$\mathbf{P}$$ in which everything will be happening. The **decks are almost all empty**. The only decks that are not empty are the M decks $$D_{a1} , . . . , D_{aM}$$ . Each of these contains just a single card. Hence the deck enumerating sequence is

$$
d_{n} =
\begin{cases}
 1,  & \text{if $n = a_{1},...,a_{M}$ } \\[2ex]
3n+1, & \text{else}
\end{cases}
$$

In a sense, then, the problem is all over. If h(n, k) denotes the number of ways of making change that use exactly k coins, i.e., the number of representations (3.15.1) in which $$\sum_{i} x_{i} = k$$, then according to the main counting theorem (eq. <a href="#3.14.4">(3.14.4)</a>) we have



$$\mathbf{H}(x,y) = \frac{1}{(1−yx_{a1})(1−yx_{a2})···(1−yx_{aM})}$$ 

<div style="text-align: right"> (3.15.2)</div>

If $$h_{n}$$ is the number of ways of representing n without regard to the number of coins, 

then from the cruder formula <a href = "#3.14.6">"(3.14.6)" </a>

<a name = "3.15.1">

$$\mathbf{H}(x)=\frac{1}{(1−x^{a1})(1−x^{a2})···(1−x^{aM} )}$$

<div style = "text-align: right">(3.15.3)</div>

Even though the generating functions are known, substantial questions remain. Here are a few 

of them.

How can we describe the set $$\mathbf{S}$$? That is, which sums of money can be changed? Given 8-cent and 12-cent coins only, it wouldn’t be reasonable to expect to make change for 53 cents. In general, if the greatest common divisor of the set $$\{a_{1},...,a_{M}\} \ is \ g > 1$$, then only multiples of g can be represented. But suppose that g = 1, i.e., that the a_{i}’s are **relatively prime**. Then which integers are representable? The central result of this subject is due to **I. Schur**. It states that $$\mathbf{S}$$ *then contains all sufficiently large integers, i.e. there exists an integer N such that every integer n ≥ N is representable in the form <a href = "#3.15.1">(3.15.1)</a>*.

<a name = "3.14.4">(3.14.4)</a>

$$\mathbf{H}(x,y) = \prod{n=1}{\infty}\frac{1}{(1-yx^{n})^{d_{n}}}$$

<a name = "3.14.6">(3.14.6)</a>

$$\mathbf{H}=\prod_{r=1}{\infty}\frac{1}{1-x^{r}}^{d_{r}}$$	







