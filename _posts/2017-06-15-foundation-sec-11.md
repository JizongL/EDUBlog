---
layout: post
title:  Foundation section 11 4.1 4.2
date:   2017-06-15 08:05:05
categories: Math
tags: foundation function 
---
* content
{: toc}



### Thorem
well-order principle for $$\mathbb{N}$$
The set $$\mathbb{N}$$ is well order by ≤ 

Successor property for $$\mathbb{N}$$

If $$n \in \mathbb{N}$$ and $$n≠0$$, then $$\exists m \in \mathbb{N}$$ such that $$n=m+1$$

Proof
Let $$\emptyset ≠ Y \subset \mathbb{N}$$
(1) $$\exists m \in Y$$ we make the list $$0,1,2,...,m$$
if $$0 \in Y$$
then 0 is the least element
if $$0 \not\in Y$$ then $$1,2,...m$$
then 1 is the least element

(2)
let $$n \in \mathbb{N}$$, by (1) $$\mathbb{N}$$ has a least element so $$n≥1$$ so consider $$n=m+1 \implies m=n-1$$ since $$n≥1 \implies m≥0 \implies m \in \mathbb{N}$$

## Section 4.2: Principle of Induction
Theorem:
If (1) $$x \in \mathbb{N}$$ (2) $$0 \in X$$
(3) $$\forall n \in \mathbb{N}$$ if $$n \in X \implies n+1 \in X$$
Then $$X = \mathbb{N}$$

Proof
Let x satisify (1)(2)(3). Suppose $$X≠N$$, Define $$Y=\mathbb{N}\setminus X$$, so $$Y≠\emptyset$$ and $$Y \subset \mathbb{N}$$, since $$\mathbb{N}$$ is well order $$\implies Y$$ is well ordered. 
let $$a \in Y$$ be least element but $$a≠0$$, this implies $$a≥1$$ and so it implies that $$a-1 \in \mathbb{N}$$, and $$a-1 \not\in Y \implies a-1 \in X$$. By (3)$$(a-1)+1 \in X \implies a \in X$$, but a is the least element of Y, so $$a \in X$$. Q.E.D

### Corallary 
(Principle of Induction)
Let P(x) be a formula in one variable. If 
(1) P(0) true
(2) $$\forall x \in \mathbb{N} \ P(x) \implies P(x+1)$$
Then $$\forall x \in X \ P(x)$$ is true
Proof
Let $$\chi_p =\{x \in \mathbb{N}:P(x)\}$$ .Goal is to show $$\chi_p = \mathbb{N}$$. For "free" $$\chi_p \subset \mathbb{N}$$
by (1) $$\implies 0 \in \chi_p$$.suppose $$n \in \chi_p$$.Then $$p(n)$$ is true. by (2) $$p(n) \implies p(n+1)$$ is true. 
$$n+1 \in \chi_p$$ This works for $$\forall n \in \mathbb{N}$$

so by theorem $$\chi_p=\mathbb{N}$$


### Strong Induction
Let $$P(x)$$ be a formula. Such that 
(1) P(0) true
(2) $$\forall n \in \mathbb{N}$$,$$\forall x < n,P(x) \implies P(n)$$

Then $$\forall x \in \mathbb{N}$$, P(x) is true

Corallary: Let $$\forall \in \mathbb{Z}$$ and P(x) a formula such that 
(1) p(k) and 
(2) $$\forall x ≥ k$$,$$P(x) \implies P(x+1)$$
Then $$\forall x≥ k,x \in \mathbb{Z}$$,$$p(x)$$ is true. 

## 4.3 Polynomials

Notation:$$\mathbb{R}[x]$$, set of all polynomial with real coefficients. 

Theorem: Let $$N \in \mathbb{N}$$ and $$p \in \mathbb{R}[x]$$ such that deg p = N ≥ 1, Then p has at most N real root. 



