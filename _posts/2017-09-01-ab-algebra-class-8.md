---
layout: post
title: Modern Algebra Class 8
date:   2017-09-01 10:00:00
categories: Math
tags: abstract_algebra classnote cyclic_group
---
* content
{: toc}


## Cyclic Groups (continued)

### Theorem 4.1






Let G be a group and let $$a \in G$$. If a has infinite order, then $$a^i=a^j$$ if and only if $$i=j$$. If a has finite order, say n, then $$\text\{\langle a \rangle\} = \{e,a,a^2,..., a^{n-1}\}$$ and $$a^i=a^j$$ if and only if $$n \lvert i-j$$. 

**Proof**
Let G be a group and Let $$a \in G$$
Suppose that a has infinite order, suppose that $$a^i-a^j$$ for some $$i,j \in \mathbb{Z}$$.

**note:**
$$a^i=a^j$$

$$a^i \cdot a^{-j} =a^j \cdot a^{-j}$$

$$a^{i-j}=a^{j-j}$$

$$a^{i-j}=a^0$$

$$a^{i-j}=e$$

Assume that $$i≠j$$, say $$i>j$$. Then $$i-j \in \mathbb{Z}^+$$, and $$a^{i-j} =e$$. This means that a has finite order, this is a contradiction. Hence $$i$$ and $$j$$ must be equal. 

clearly, if $$i=j$$ for $$i,j \in \mathbb{Z}$$, then $$a^i=a^j$$
suppose that a has finite order n, clearly $$\{e,a,a^2,...,a^{n-1}\} \subseteq \text\{\langle a \rangle\}$$. Let $$a^k \in \text\{\langle a \rangle\}$$

By the division Algorithem, there exists unique integers q and r such that $$k = qn+r$$, where $$0≤r≤n$$. Hence $$a^k=a^{qn+r}=a^{qn} \cdot a^{r}=(a^n)^q \cdot a^r = e^q \cdot a^r = e \cdot a^r = a^r$$, where $$0≤r≤n$$. 

Therefore, $$a^k \in \{e,a,a^2,.., a^{n-1}\}$$. It follows that $$\text\{\langle a \rangle\} \subseteq \{e,a,a^2,...,a^{n-1}\}$$

Next assume that $$a^i = a^j$$ for some $$i,j \in \mathbb{Z}$$. Then $$a^{i-j}=e$$. Again by the division Algorithm. $$i-j=qn+r$$ for some integer q and r where $$0≤r≤n$$
Then $$e=a^{i-j}=a^{qn+r}=(a^n)^q \cdot a^r=e \cdot a^r= a^r$$, where $$0≤r≤n$$. Hence r must be equal to zero, since $$\lvert a\lvert=n$$ and $$r< n$$
Thus $$i-j=qn$$
Now, suppose that n divides $$i-j$$ for some $$i,j \in \mathbb{Z}$$. Then $$i-j = tn$$ for some $$t \in \mathbb{Z}$$, and $$a^{i-j}=a^{tn}=e$$. Hence $$a^i=a^j$$

### Corollary 1

For any group element a, $$\lvert a \lvert=\lvert \text\{\langle a \rangle\} \lvert$$

### Corollary 2

Let G be a group and let $$a \in G$$ of order n. If $$a^k=e$$, then n divides k

**Proof**

Let G be a group and let $$a \in G$$, where  $$\lvert a \lvert=n$$. Suppose that $$a^k=e$$ for some $$k \in \mathbb{Z}$$. Then $$a^k=a^0$$, so by Theorem 4.1, n divides $$k-0$$, thus n divides k. 

$$a^k=e$$

### Corollary 3

If a and b belong to a finite group and ab=ba, then $$\lvert ab \lvert$$ divides $$\lvert a \lvert \cdot \lvert b\lvert$$
**Proof**
Let a and b be elements of a finite group, such that $$ab=ba$$. Let $$\lvert a \lvert = m$$ and $$\lvert b \lvert = n$$. 
Then $$(ab)^{mn}=ab \cdot ab \cdot ... ab = a^{mn} \cdot b^{mn}=(a^m)^n \cdot (b^n)^m = e^n \cdot e^m =e$$, where e is the identity of the group. 

By Corollary 2, $$\lvert ab \lvert$$ divides mn, that is , $$\lvert ab \lvert$$ divides $$\lvert a \lvert \cdot \lvert b \lvert $$

$$\text\{\langle a \rangle\}=\{e,a,a^2,...,a^{n-1}\}$$; $$\lvert a \lvert = n \quad a^k \cdot a^m = a^{k+m}$$, Since $$a^n=e$$
We essentially are using congruence modulo n to reduce the exponent $$k+m$$

$$k+m = q+r$$
$$k+m \equiv r(mod n)$$


In $$\text\{\langle a \rangle\}$$, where $$\text\{\langle a \rangle\}$$ has infinite order, $$a^i \cdot a^j = a^{i+j}$$ for $$i,j \in \mathbb{Z}$$, we essentially use addition of integers on the exponents i and j. 



<iframe width="560" height="315" src="https://www.youtube.com/embed/dLLIMo1nyHY" frameborder="0" allowfullscreen></iframe>