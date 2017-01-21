---
layout: post
title: note and explaination of proofs 
date: 2017-01-19 11:30:05
categories: Math
tag: proof explaination note
---

## 3.1.4 Proposition. 

For given numbers n, m ≥ 0, there exist exactly





Proof. We again proceed by induction on n (and more concisely this time). For n = 0, the empty mapping is one-to-one, and so exactly 1 one-to-one mapping exists, and this agrees with the fact that the value of an empty product has been defined as 1. So the formula holds for n = 0.


Next, we note that no one-to-one mapping exists for n > m, and this again agrees with the formula (since one factor equal to 0 appears in the product).

**note:** 

$$\prod_{i=0}^{n-1}(m-i)$$ 

If n > m,  for example, if m = 10, n = 11. Then 

**note:** 

$$\prod_{i=0}^{11-1}(10-i) \equiv (10-10)(10-9),...(10-1)$$

Since (10-10)=0, then this does not map to anything.  

Let us now consider an n-element set N , n ≥ 1, and an m-element set M, m≥n.Fix an element a ∈ N and choose the value f(a)∈ M arbitrarily, in one of m possible ways.



It remains to choose a one-to- one mapping of the set $$N \setminus \{a\}$$ to the set $$M \setminus \{f (a)\}$$. 



By the inductive assumption, there are (m − 1)(m − 2) . . . (m − n + 1) possibilities for the latter choice. Altogether we have m(m−1)(m−2)...(m−n+1) one-to-one mappings f : N → M . 