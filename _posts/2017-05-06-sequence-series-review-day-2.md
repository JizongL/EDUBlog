---
layout: post
title:  sequence and series review day 2
date:   2017-05-08 21:06:00
categories: Math
tags: Calculus sequence series
---

* content
{:toc}


## Infinite series

### Definition 1:
Given a series $$\sum_{n=1}^{\infty} a_{n} = a_{1}+a_{2},...a_{3}$$, let $$S_{n}$$ denote its nth partial sum:






$$S_{n}=\sum_{i=1}^{n} a_{i} = a_{1}+a_{2}+a_{3},...+a_{n}$$

If the sequence $$\{S_{n}\}$$ is convergent and $$lim_{n \to \infty}S_{n}= S$$ exists as a real number, then the series $$\sum a_{n}$$ is called **convergent** and we write

$$a_{1}+ a_{2}+...a_{n}+...= s$$ or $$\sum_{n=1}^{\infty} a_{n}=s$$

The number S is called the **sum** of the series. If the sequence $$\{S_{n}\}$$ is divergent, then the series is called divergent. 


### Geometric series

$$a + ar + ar^{2}+ \cdots ar^{n-1}+ \cdots = \sum_{n=1}^{\infty} ar^{n-1}$$ and a≠0
. 

### Definition 2:
The geometric series is convergent if 

$$\sum_{n=1}^{\infty} ar^{n-1}= \frac{a}{1-r} \quad \lvert r \lvert < 1$$

divergent if $$\lvert r \lvert > 1 $$

Note: The concept of $$ \lvert r \lvert > 1$$ and $$\lvert r \lvert < 1$$ are very important for problem solving. 

remember if $$\lvert r \lvert >1$$ the formula is 

$$s_{n}=\frac{a(1-r^{n})}{1-r}$$

if $$\lvert r \lvert < 1$$

$$lim_{n \to \infty} S_{n}=lim_{n \to \infty} \frac{a(1-r^{n})}{1-r} = \frac{a}{1-r}-\frac{a}{1-r}lim_{n \to \infty} r^{n} = \frac{a}{1-r}$$

example problem: 

When money is spent on goods and services, those who receive the money also spend some of it. The people receiving some of the twice-spent money will spend some of that, and so on. Economists call this chain reaction the [multiplier effect](http://www.investopedia.com/exam-guide/cfa-level-1/macroeconomics/multiplier-effect.asp). In a hypothetical isolated community, the local government begins the process by spending D dollars. Suppose that each recipient of spent money spends 100c% and saves 100s% of the money that he or she receives. The val- ues c and s are called the marginal propensity to consume and the marginal propensity to save and, of course, c + s 1.

(a) Let $$S_{n}$$ be the total spending that has been generated after
n transactions. Find an equation for $$S_{n}$$.

$$S_{n}=D+Dc+Dc^{2}+...Dc^{n-1} = \frac{D(1-c^{n})}{1-c}$$


(b) Show that limit  $$S_{n}=kD$$, where $$k = \frac{1}{s}$$. The number
k is called the multiplier. What is the multiplier if the marginal propensity to consume is 80%?

$$lim_{n \to \infty} S_{n}=lim_{n \to \infty}\frac{D(1-c^{n})}{1-c} = \frac{D}{1-c}lim_{n \to \infty} (1-c^{n}) = \frac{D}{1-c} $$

since c+s=1, then s = 1-c and $$\frac{1}{s} = \frac{1}{1-c}$$ so

$$lim_{n \to \infty}S_{n}=\frac{D}{1-c}=kD.$$ and when c = 80% $$k = \frac{1}{20%}=5D$$

Note: The federal government uses this principle to justify
deficit spending. Banks use this principle to justify lending a large percentage of the money that they receive in deposits.

### Additional reading
[The Mathematics of the Multiplier](http://www.investopedia.com/terms/m/multiplier.asp)
