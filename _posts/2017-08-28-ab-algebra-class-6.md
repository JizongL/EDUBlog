---
layout: post
title: Modern Algebra Class 6
date:   2017-08-28 10:00:00
categories: Math
tags: abstract_algebra subgroup
---
* content
{: toc}

### Theorem 3.2 (Two steps subgroup test)

Let G be a group and let H be a nonempty subset of G, If ab is in H, whenever a and b are in H, and if $$a^{-1} \in H$$ whenever $$a \in H$$ hen H is a subgroup of G.







**proof:**

Let G be a group and let H be a nonempty subset of G such that ab and $$a^{-1}$$ are in H whenever a and b are in H. 

for $$a \in H a^{-1} \in H$$ and $$aa^{-1} \in H$$, Hence $$e \in H$$, where e is the identity of G.

It follows that H itself is a group under the binary operation of G, hence h is a subgroup of G. 

Example: Let G be an abelian group and let $$H=\{x \in G \lvert x \ \text{has finite order}\}$$ then H is a subgroup of G.

**Proof:** 

Let G be an abelian group with identity e, Let $$H=\{x \in G \lvert x \ \text{has finite order}\}$$

the identity element e is in H since $$e^1=e$$, Let a,b be element of H, Then $$a^n=e$$ and $$b^m=e$$ for some positive integer m and n. 

then $$(ab)^{mn} = a^{mn}b^{mn}=(a^n)^m (b^m)^n=e^m e^n=ee=e$$

Finally, $$(a^{-1})^n=a^{-1} \cdot a^{-1} \cdot a^{-1} \cdots a^{-1} = (a \cdot a \cdot a \cdots a)^{-1} =(a^n)^{-1} = e^{-1}=e$$ there $$a^{-1}$$ has finite order, so $$a^{-1} \in H$$, By theorem 3.2, H is a subgroup of G. 

### Theorem 3.3 (Finite Subgroup Test)

Let H be a finite nonempty subset of a group G. If H is closed under the binary operation of G, then H is a subgroup of G. 

**proof:**

Let G e a group and let H be a nonempty finite subset of G such that H is closed under the binary operation of G. 

note: from Theorem 3.2
$$a \in H \ b \in H \implies ab \in H$$
$$a \in H \implies a^{-1} \in H$$

By theorem 3.2, we need only show that $$a^{-1} \in H$$ whenever $$a \in H$$. 

Let $$a \in H$$, If $$a = e$$, then $$a^{-1} \in H$$, because $$e^{-1}=e$$, Suppose that $$a ≠ e$$, Then the element $$a, a^2, a^3,...$$ are all in H, Since H is finite, there exists positive integer i and j with $$i > j$$ such that $$a^i = a^j$$. Then $$a^i(a^j)^{-1}=a^j(a^j)^{-1}$$, which given $$a^i \cdot a^{-j} = e$$, that is, $$a^{i-j} = e$$, where $$i - j >0$$. since $$a≠e$$, $$i-j>1$$, so $$i-j-1>0$$. Notice that $$(a^{i-j-1})a^1= a^{i-j}=e$$, hence $$a^{i-j-1}$$ is the inverse of a. We note that $$a^{i-j-1} \in H$$ since $$i-j-1>0$$. 

By theorem 3.2, H is a subgroup of G. 

$$(a^n)^{-1} = (a \cdot a \cdot a...a)^{-1} = (a^{-1})^n$$


Example: Let G = $$\mathbb{Z}_{10} =\{0,1,2,3,4,5,6,7,8,9\}$$
$$H = \{0,2,4,6,8\}$$

H is closed under addition modulo 10. Thus H is a subgroup of $$\mathbb{Z}_{10}$$
Notice that the element 2 generate the subgroup H. 

$$
\begin{array}{c|lcr}
\oplus_{10} & 0 & 2 & 4 & 6 & 8\\
\hline
0 & 0 & 2 & 4 & 6 & 8 \\
2 & 2 & 4 & 6 & 8 & 0\\
4 & 4 & 6 & 8 & 0 & 2 \\
6 & 6 & 8 & 0 & 2 & 4 \\
8 & 8 & 0 & 2 & 4 & 6 \\
\end{array}
$$

### Theorem 3.4 (cyclic subgroup)

Let G e a group and let $$a \in G$$. then $$\text{<a>} = \{a^n \lvert n \in \mathbb{Z}\}$$ is a subgroup of G. 

**Proof:**

Let G be a group and let $$a \in G$$. Then $$a^1 \in \text{<a>}$$. so $$\text{<a>}$$ is nonempty, Let $$a^n$$ and $$a^m$$
be element of $$\text{<a>}$$



Then $$a^n a^m=a^{n+m}$$ is in $$\text{<a>}$$, so $$\text{<a>}$$ is closed under the binary operation of G, Notice that $$(a^n)^{-1} = (a^{-1})^n=a^{-n}$$ is in $$\text{<a>}$$, Finally, the identity element of G is given by $$a^0$$ $$(e=a^na^{-n}=a^{n-n}=a^0=e)$$

By theroem 3.2, $$\text{<a>}$$ is a subgroup of G. 

### Notation: 

for $$a \in G$$ where G is a group 
$$\text{<a>} = \{a^n \lvert n \in \mathbb{Z}\}$$ is called the cyclic subgroup geneated by a, the element a is called a "generator" of $$\text{<a>}$$. 

Definition, If G is a group such that some element a in G, then G is called a cyclic group. 


