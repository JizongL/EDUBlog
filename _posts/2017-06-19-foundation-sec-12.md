---
layout: post
title:  Foundation section 12 4.3
date:   2017-06-15 08:05:05
categories: Math
tags: foundation function 
---
* content
{: toc}

## Section 4.3
Lemma 3: Let P be a polynomial with degree $$p=N$$. $$c \in \mathbb{R}$$ is a root of $$p$$ iff $$p(x)=(x-c)q(x)$$ with $$q(x)$$ is a polynomial of degree $$q=N-1$$

**Proof**
Let p be a polynomial with degree $$p=N$$, Then $$\exists a_0,a_1,...,a_n,n \in \mathbb{R}$$ with $$a_n ≠ 0$$ such that $$p(x)=a_N x^N + a_{N-1} x^{N-1}+,...,a_1 x + a_0 = \sum_{n=0}^N a_n X^n$$

$$\impliedby$$ Assume that there is $$c \in \mathbb{R}$$ and a polynomial of degree $$N-1$$ such that

$$p(x)=(x-c)q(x) \\
p(c)=(c-c)q(c) = 0$$

So c is a root of p.

$$\implies$$ Let $$c \in \mathbb{R}$$ be a root of p. Then 
$$p(x) = p(x)-p(c)$$
$$=a_0 - a_0 + \sum_{n=1}^{N}a_n(x^n-c^n) \\
= \sum_{n=1}^{N}a_n(x^n-c^n)$$

by lemma 2
$$x^n-c^n=(x-c)q_n(x)$$

where 

$$q_n(x)=\sum_{i,j \in \mathbb{N} i+j=n-1}x^ic^j$$

so $$p(x) = \sum_{n=1}^N a_n(x^n-c^n)$$







