---
layout: post
title: Modern Algebra Class 10
date:   2017-09-08 10:00:00
categories: Math
tags: abstract_algebra classnote cyclic_group
---
* content
{: toc}


## Section 4.3(continued)

### Theorem 4.3(a) 

Every subgroup of acyclic group is cyclic. 

**Proof: **

Let $$G = \langle a \rangle$$ be a cyclic group with generator a. Let H be a subgroup of G. If $$H=\langle e \rangle$$ 
where e is the
identity of G, then H is cyclic since $$H = \langle e \rangle$$. Now suppose that $$H≠ \langle e \rangle$$. Then there exists an an element $$a^k≠e$$ 

in H. Since H is a subgroup of G. both $$a^k$$ and $$a^{-k}$$ are elements of H. One of k or -k is a positive integers. So H contains positive powers of a. By he well-ordering principle, there exists a least positive integer m such that $$a^m \in H$$. We will show that $$H= \langle  a^m \rangle$$.
Clearly, $$\langle a^m \rangle \subseteq H$$, since H is a subgroup of G. Let $$a^t \in H$$. By the Division Algorithm, t = qm+r, where q and r are integers with $$0≤r< m$$. Hence $$a^t = a^{qm+r}=a^{qm}a^r$$, so $$a^{-qm} \cdot a^t=a^{-qm} \cdot a^{qm} \cdot a^r$$

$$[(a^m)^q]^{-1} \cdot a^t=a^r$$, where $$0≤ r < m$$. Since $$[(a^m)^q]^{-1} \cdot a^t$$ is in H, since both elements in this product are elements of H. This requires that $$a^r \in H$$, where $$0 ≤ r < m$$. By the definition of m, r must be zero. Hence $$t = qm$$ and $$a^t = a^{qm}=(a^m)q \in \langle a^m \rangle$$. Thus every element of H is in $$\langle a^m \rangle$$. That is, $$H \subseteq \langle a^m \rangle$$. It follows that $$H = \langle a^m \rangle$$. 


### Theorem 4.3(b)

If $$G = \langle a \rangle$$ is a cyclic group of order n and H is a subgroup of G, then $$\lvert H \lvert $$ is a divisor of n. 

**proof**
Let $$G = \langle a \rangle$$ be a cyclic group of order n and let H be a subgroup of G. Then $$H = \langle a^k \rangle$$
 for some $$k \in \mathbb{Z}^+ \cup \{0\}$$. If $$ k = 0$$, then $$H = \langle a^0 \rangle = \{e\}$$ and $$\lvert H \lvert = 1$$. 

 clearly 1 is a divisor of n. Suppose that $$k \in \mathbb{Z}^+$$. By Theorem 4.2

 
 $$ \lvert a^k \lvert = \frac{n}{gcd(n,k)}$$


 Hence $$[gcd(n,k)] \cdot \lvert a^k \lvert = n$$. Hence $$\lvert a^k \lvert$$ is a divisor of n. By corollary 1 to Theorem 4.1, $$\lvert a^k \lvert = \lvert \langle a^k \rangle \lvert = \lvert H \lvert$$. Thus $$\lvert H \lvert $$ is a divisor of n. 

 Note: This theorem also shows that for any element $$a^k$$ in the finite cyclic group $$G = \langle a \rangle$$. the order of $$a^k$$ is a divisor of the order of G. 

 ### Theorem 4.3 c
 
 If $$G' = \langle a \rangle$$ is a cyclic group of order n and k is a positive divisor of n, then G has exactly one subgroup of order k. 

 **proof**


 Let $$G = \langle a \rangle$$ be a cyclic group of order n and let k be a positive divisor of n. Then $$n = kt$$ for some $$t \in \mathbb{Z}^+$$. By Theorem 4.2 (in the proof), $$\lvert a^t \lvert = \frac{n}{t} = k$$. Hence $$\langle a^t \rangle$$ is a cyclic subgroup of G of order k. Then $$ \lvert a^{m} \lvert = k$$, so $$(a^m)^k = e$$, which makes 
mk a multiple of n. (See corollary 2 to theorem 4.1)


Say $$mk = np$$, where $$p \in \mathbb{Z}^+$$, since $$n=kt$$, $$mk=(kt)p$$ gives $$m = tp$$ thus $$a^m = a^{tp} = (a^t)^p \in \langle a^t \rangle$$. Hence $$\langle a^m \rangle \subseteq \langle a^t \rangle$$, since $$\langle a^m \rangle$$ and $$\langle a^t \rangle$$ both contain exactly k elements. Hence there is exactly one subgroup of G of order k. 


### The Euler - Phi function

For $$n \in \mathbb{Z}^+,n>1$$, $$\Phi (n) denotes the set \{k \in \mathbb{Z}^+ \lvert k< n \ \text{and } gcd(k,n)=1\}$$. 
see page 84 for a table of values of $$\Phi(n)$$.

Note: $$\Phi(n) = \lvert \mu(n) \lvert$$

### Theorem 4.4

If d is a postive divisor of n, where $$n \in \mathbb{Z}^+$$, then the number of elements of order d in a cyclic group of order n is $$\Phi(d)$$. 

$$a,b $$ elements of order d.

$$\lvert \langle a \rangle = d \quad \quad \langle a \rangle = \langle b \rangle  $$ contain all elements of order d in G

$$\lvert \langle b \rangle = d  \quad \quad \lvert \langle 0 \rangle = d \quad G = \lvert \langle a \rangle $$ 

note: $$a^k$$ where $$gcd(k,d)$$

### Corollary

In a finite group, the number of elements of order d is a multiple of $$\Phi(d)$$