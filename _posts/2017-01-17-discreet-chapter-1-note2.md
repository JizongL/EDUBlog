---
layout: post
title:  class 3 Nested Quantifier 
date:   2017-01-17 08:28:05
categories: Discrete
tags: Nested_Quantifier
---
* content
{:toc}

$$~ \forall x \exists y (xy =1)$$

$$ \exists x ~\exists y (xy=1)$$

$$ \exists x \forall y ~(xy=1)$$

$$ \exists x \forall y ~(xy \neq 1)$$




1) It's not $$\underline{sunny \ this \ afternoon}$$ and it is $$\underline{colder \ than \ yesterday}$$<br>

								
2) $$\underline{we \ will \ go \ swimming}$$ only if it is sunny.

3) if we do not $$\underline{go \ swimming}$$, then we will $$\underline{take \ a \ canoe \ trip}$$.

4) If we $$\underline{take canoe trip}$$, we will be $$\underline{home \ by \ sunset}$$


p = It is sunny this afernoon 		(1) $$~ p \land p$$<br>
q = it is colder that yesterday		(2) $$r \to p$$<br>
r = go swimming						(3)	$$~r \to s$$<br>
s = canoe trip						(4) $$ s \to t$$<br>
t = home by sunset					<br>

1  $$~p \land q$$		premise<br>
2  $$~p$$			simplification<br>
3  $$ r \to p$$	premise<br>
4 $$~r$$ 		Modus Tollen (2,3)<br>
5 $$~r \to s$$	premise<br>
6 $$s$$		Modus Pollen (4,5)<br>
7 $$s \to t$$		premise<br>
8 $$t$$				Modus Pollen(6,7)<br>


Universal Instantiation

“All women are wise” that “Lisa is wise,” where Lisa is a member of the domain of all women.


Universal generalization

Existential Instantiation

Existential generalization 



quiz 1.1, 1.3

homework

1.4 
1,3,11,28,34

1.5
1,5,20,30

1.6
1,3,13


1.7
Proof

* Axioms

* Previously proven theorems

p(x,y)

If x>y where x and y are positive real numbers, then $$x^{2}y$$?

$$ P(x,y) \to Q(x,y)$$

## Direct Proof 

$$p \to q$$

Supose p is true, then q is true.
If n is an odd integer, then $$n^{2}$$ is odd.
Suppose n is an odd integer, then we can write it as 2k+1.
consider 

$$n^{2} =(2k+1)^{2}=(2k+1)(2k+1) = 4k^{2}+4k+1 =2(2k^{2}+2k)+1$$



which can be written as $$2m+1$$
 which is odd.

 $$\forall n(P(n) \to Q(n))$$


## Proof by contraposition 

$$p \to q$$
$$~q \to ~p$$

If n is an integer and $$3n+2$$ is odd, then n is odd. 

use direct proof

Suppose $$3n+2$$ is odd, then $$3n+2=2k+1$$

$$3n = 2k+1-2 = 2k-1$$

$$n=\frac{2k-1}{3}$$

doesn't work. 

Suppose n is even, then write as n = 2k

$$3n+2=3(2k)+2=6k+2=2(3k+1)=2m$$ which is even


## Proof by contradiction 

suppose p is true

suppose that we can find q such that $~p \to q$

Because q is false,~p is false \implies p true. 

prove $$\sqrt{2}$$ is irrational

suppose $$\sqrt{2}$$ is rational

$$\sqrt{2} =\frac{p}{q},q\neq 0$$,no common factor

$$2=\frac{p^{2}}{q^{2}}$$

$$2q^{2}=p^{2}$$

$$p^{2}$$ is even, so write it as $$p = 2k$$

$$2q^{2}=p^{2}=(2k)^{2}=4k^{2}$$

$$2q^{2}=4k^{2}$$

$$q^{2}=2k^{2}$$ so $$q^{2}$$ is even $$\implies q \ is \ even$$

So they have a common factor of 2.

Therefore, our assumption that $$\sqrt{2}$$ is rational must be false. 






