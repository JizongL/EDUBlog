---
layout: post
title:  Foundation section 10 3.3 3.5
date:   2017-06-15 08:05:05
categories: Math
tags: foundation function 
---
* content
{: toc}

## 3.5 Proof Strategy 

### Universal Statements 






A logical form you are likely to encounter very often is
$$(\forall_{x}) [H(x) \implies P(x)]$$,

### Example 1

Suppose F(x) is the formula “$$x \in \mathbb{N}$$ and x is a multiple of 4.”

Let E(x) be the formula:

“x is even."

Then

$$(\forall x)[F(x) \implies E(X)]$$


#### Direct proof
let $$x$$ such that $$H(x)$$ holds and want to decide $$H(x)$$ and see if $$P(x)$$ follows. 

supppose $$x \in \mathbb{N}$$ and is a multiple of 4. If x multiple of 4, then $$\exists n \in \mathbb{N}$$ such that $$x=4n=2(2n)$$, so works for all such x. Q.E.D


#### Contrapositive proofs
Assue the conclusion is false, see if we can imply falsality of the hypothesis.

proof:
suppose $$x \in \mathbb{N}$$ and x is not even $$\implies x$$ is odd. 

consider $$x \equiv_4 1 \ \text{or} \ 3$$

Not a multiple of 4, hence $$x \equiv_4 0$$ Q.E.D

### Example 2
prove if $$x \in \mathbb{Z}$$ and $$x^{2}$$ is even, hence x is even.

**Use contropositive**

suppose $$x$$ is odd$$\implies \ x^2 = 2k+1$$
then$$(2k+1)^2 = (2k+1)(2k+1)=4k+4k+1=2(k^2+2k)+1$$ so $$x^2$$ is odd. 

### contradition 
here assume the conclusion is false, and have it contradict the hypothesis somehow. 

Have assuming $$H \land \lnot P$$ if this is false $$\implies \lnot(H \land \lnot P) \implies \lnot H \lor P \equiv H \implies P$$

#### Example 3
$$\sqrt{2}$$ is irrational. 

so let suppose $$\sqrt{2}$$ is rational,$$\implies p,q \ \mathbb{Z},q≠0$$ such that $$\sqrt{2}=\frac{p}{q}$$ and $$p,q$$ have no common factors. 

$$2=\frac{p^2}{q^2} \implies 2q^2=p^2 \implies$$ p is even. $$\implies P$$ is even, so $$\exists k \in \mathbb{Z}$$ such that p=2k. then $$2q^2=(2k)^2 \implies q^2=2k^2 \implies q^2$$ is even $$\implies q$$ is even.There is a problem $$p,q$$ have common factor.

### Existence proofs

#### construction: 
this is the most direct proof, however, it's usually practical or possible. 


Example
prove $$\exists$$ real function $$f$$ whose 1st deriatives $$f'>0$$ everywhere and $$f"<0$$ everywhere. 


Proof
$$f(x)=-e^{-x},f'(x)=e^{-x} > 0,f"(x)=-e^{-e}<0$$

#### counting

sometimes can show existence by counting.

##### Example

Suppose there are 30 students in a class, show that at least 2 of them share the same 1st initial.

**proof**
since $$\exists 26$$ letters in the alphebet, but there are 30 students, so $$30>26$$ which means there is overlap of 1st initial. By putting 1-1 correspondence bwtween 1st initials and letter of alphebet.Q.E.D

#### contradiction
prove there are infinitely many prime numbers. 

**proof**
suppose $$\exists$$ only finitely many primes
$$p_1,...,p_n$$

Consider $$A=p_1,...,p_n+1$$

since $$\forall p_i,i = 1,...,n$$ are all prime

They are only divisible by themslves and 1

A is not prime so A has a factor of a prime

WLOG suppose $$p_j \lvert A$$ so $$A \equiv_{p_j}0$$ 

on the other hand $$A=p_1,...,p_n+1\equiv_{p_j}1$$

This implies there is an additional prime, so it's a contradiction Q.E.D

#### Example 3.23

Show every interval contains rational and irrational numbers. 

**proof**

$$0< a < b$$ $$(a,b)$$ or $$[a,b]$$

if $$a<1< b \implies b < b^2 \implies \sqrt{b}< b$$

if $$a<\sqrt{b} < b$$ pick b such that $$\sqrt{b}$$ is always irrational.and b is rational

$$\sqrt{b} \in(a,b)≤ [a,b] \quad \sqrt{b} \in [a,b]$$


$$e^{x}=\sum_{n=1}^{\infty} \frac{x^n}{n!}$$ converged on all $$\mathbb{R}$$ $$\sum_{n=1}^{\infty}a_n$$

$$
e=\sum_{n=1}^{\infty}\frac{1}{n} \quad S_n \sum_{k=1}^n a_k$$

$$S_1 = 1,S_2 = 1+1,S_3=1+1+\frac{1}{2},S_4=1+1+\frac{1}{2}+\frac{1}{3 \cdot 2} \\
\vdots \\
\{S_n\} \subset \mathbb{Q}$$

$$lim_{n \to \infty} S_n=e$$






















