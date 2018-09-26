---
layout: post
title: Modern Algebra Class 9
date:   2017-09-06 10:00:00
categories: Math
tags: abstract_algebra classnote cyclic_group
---
* content
{: toc}

## Section 4 (continued)

### Theorem 4.2


Theorem 4.2(The order of an element in $$\langle a \rangle$$)

(copy back from the picture note later)



proof: 

Let G be a group and let $$a \in G$$ where $$\lvert a \lvert = n$$. Let $$k \in \mathbb{Z}^+$$ and let $$d = gcd(k,n)$$. 

Then $$k=dr$$ for some $$r \in \mathbb{Z}^+$$, and $$a^k=a^{dr}=(a^d)^r$$. Thus $$a^k \in \langle a^d\rangle$$, so $$\langle a^k\rangle \subseteq \langle a^d\rangle$$. 

We need to show that $$\langle a^k\rangle \subseteq \langle a^d\rangle$$. There exist integers s and t such that $$d=ns+kt$$, So $$a^d=a^{ns+kt}=(a^n)^s \cdot (a^k)^t=e^s \cdot (a^k)^t=(a^k)^t$$, Hence $$a^d \in \langle a^k\rangle$$, so $$\langle a^d\rangle \subseteq \langle a^k\rangle$$

It follows that $$\langle a^k\rangle = \langle a^d\rangle$$.
Next we show that $$\lvert a^t\lvert=\frac{n}{t}$$ for any positive divisor t of n. 
clearly, $$(a^t)^{\frac{n}{t}}=a^n=e$$, so $$\lvert a^t\lvert≤\frac{n}{t}$$. On the other hand, if $$\lvert a^t\lvert =m$$, for some $$m \in \mathbb{Z}$$ with $$m< \frac{n}{t}$$, then $$mt< n$$,$$(a^t)^m=a^{mt}≠e$$, thus $$\lvert a^t\lvert=\frac{n}{t}$$. 

Since $$d = gcd(n,k)$$ is a positive divisor of n, we have $$\lvert a^d\lvert=\frac{n}{d}$$, From above, 

$$\langle a^k\rangle =\langle a^d\rangle$$, and by corollary 1, $$\lvert a^k\lvert=\lvert \langle a^k\rangle \lvert = \lvert \langle a^d\rangle \lvert = \lvert a^d\lvert$$
consequently, $$\lvert a^k \lvert = \lvert a^d \lvert$$, where $$d = gcd(k, n)$$

### Example 
Let $$\lvert a \lvert = 18$$ for some element a in a group G, . 
1: Find $$\lvert a^{10} \lvert$$
2: Find $$\langle a \rangle$$
3: Find $$\lvert a^5 \lvert$$
4: Find $$\langle a^5 \rangle$$

solution:
Give $$\lvert a\lvert = 18$$
for some a in a group G
1: $$\lvert a^{10} \lvert = \frac{18}{2}=9$$, since $$gcd(10,18)$$ note: (10=k, 18=n)
$$\lvert \langle a^{18}\rangle \lvert = 18$$
$$a^{10} \in \langle a^{18}\rangle$$

2:$$\langle a^{10}\rangle = \langle a^2\rangle$$, since $$2=gcd(10,18)$$
$$\langle a^{10}\rangle =\{a^2,a^4,a^6,a^8,a^{10},a^{12},a^{16},e\}$$, since $$a^{18}=e$$

3: $$\lvert a^5\lvert= \frac{18}{1}=18$$, since $$gcd(5,18)=1$$

4: $$\langle a^{5}\rangle = \langle a^{1}\rangle = \{e,a,a^2,a^3,...,a^{17}\}$$

### Corollary 1
If a finite cyclic group, the order of an element divides the order of the group. 
($$a^{k}= \frac{n}{d}$$ is a divisor of n)

### Corollary 2
Let $$\lvert a\lvert=n$$ for some element a in a group G. 
Then $$\langle a^{i}\rangle = \langle a^j\rangle$$ if and only if $$gcd(n,i)=gcd(n,j)$$ and $$\lvert a^i\lvert = \lvert a^j \lvert$$ if and only if $$gcd(n,i)=gcd(n,j)$$.

**Proof**

Let G be a group and let $$a \in G$$ with $$\lvert a \lvert = n$$. Let $$d_i=gcd(n,i)$$ and let $$d_j = gcd(n,j)$$, Theorem 4.2 shows that $$\langle a^{i}\rangle = \langle a^{d_i}\rangle$$ and $$\langle a^{j}\rangle = \langle a^{d_j}\rangle$$. Thus the proof reduces to showing that $$\langle a^{d_i}\rangle=\langle a^{d_j}\rangle$$ if and only if $$d_i=d_j$$. Clearly, if $$d_i=d_j$$, then $$\langle a^{d_i}\rangle = \langle a^{d_j}\rangle$$.

Suppose that $$\langle a^{d_i}\rangle = \langle a^{d_j}\rangle$$, Then by Theorem 4.2, $$\langle a^{i}\rangle = \langle a^{j}\rangle$$. and $$\lvert a^i \lvert = \lvert a^j \lvert$$, Thus $$\frac{n}{gcd(n,i)}= \frac{n}{gcd(n,j)}$$, Hence $$gcd(n,i) = gcd(n,j)$$, Which gives $$d_i=d_j$$

### Corollary 3
Let $$\lvert a \lvert =n$$ for some element a in a group G. Then $$\langle a \rangle = \langle a^{j}\rangle$$ if and only if $$gcd(n,j)=1$$, and $$\lvert a \lvert = \lvert a^j \lvert$$ if and only if $$gcd(n,j)=1$$

### Corollary 4
In the group $$\mathbb{Z}_n$$, an integer k is a generator of $$\mathbb{Z}_n$$ if and only if $$gcd(k,n) =1$$.

### Example

In $$\mathbb{Z}_{14}$$, the generator are 1,3,5,9,11,13


### Theorem 4.3
Every subgroup of a cyclic group is cyclic, Moreover, if $$\lvert \langle a \rangle\lvert = n$$, then the order of any subgroup of $$\langle a \rangle$$ is a divisor of n; and for each positive divisor k of n, the $$\langle a \rangle$$ has exactly one subgroup of order k, normally, $$\langle a^{\frac{n}{k}}\rangle$$




