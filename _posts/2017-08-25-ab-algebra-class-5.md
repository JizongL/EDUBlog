---
layout: post
title: Modern Algebra Class 5
date:   2017-08-25 10:00:00
categories: Math
tags: abstract_algebra subgroup
---
* content
{: toc}

## Finite Groups and Subgroups

### Definition
1) The order of a gorup is the number of elements in th group.
(If a group has an infinite number of elements, the group is called on infinite group. )

The order of an element g in a group is the smallest positive integer n such that $$g^n=e$$, where e is the identity of the group, if such an integer n exists. If no positive integer n exists such that $$g^n=e$$, then the element g has infinite order. 

### Notation
Let G be a group
$$\lvert G \lvert$$ represents the order of the group G. 
for $$a \in G$$, $$\lvert a \lvert$$ represents the order of the element a. 

### Example 

($$\mathbb{Z},+$$),($$\mathbb{Q},+$$), ($$\mathbb{R},+$$), ($$\mathbb{C},+$$), ($$\mathbb{Q}*, \cdot$$), ($$\mathbb{R}*,\cdot$$),($$\mathbb{C}*,\cdot$$) all have infinite order. 

($$\mathbb{Z},\oplus$$), $$U(8)=(\{1,3,5,7\},\odot)$$

note: $$\mathbb{R}*=\mathbb{R}-\{0\}$$ means non-zero


### Example
$$\mathbb{Z}_{12},\oplus = \{0,1,2,3,4,5,6,7,8,9,10,11\}$$

$$6 \oplus 6=0$$ the element 6 has order 2 in $$\mathbb{Z}_{12}$$

$$3^4=0$$, the element 3 has order 4 in $$\mathbb{Z}_{12}$$

What is the order of the element 9 in $$\mathbb{Z}_{12}$$
solution: 4, because 4 is the smallest postive integer n such that n(9)=0 in $$\mathbb{Z}_{12}$$

### Definition

A nonempty subset H of a group G is a subgroup of G if H is itself a group under the binary operation of G. 




<figure>
<img src = "{{root_url | prepend: site.baseurl}}/asset/ab-algebra/img/class-5/class-05-a.jpeg" width = "500">
<figurecpation> </figurecpation>
</figure>

### Notation:

$$H ≤ G$$ represents "H is a subgroup of G"
$$H< G$$ note: $$H≠G$$

Note: 
1: A group is a subgroup of itself

2: If e is the identity of the gorup G, then $$\{e\}$$ is a subgroup of G, called the trivial subgroup of G, If H is a subgoup of a group G and $$H≠\{e\}$$, then H is called a nontrivial subgroup of G. 

### Theorem 3.1(The subgroup Test)

Let G be a group and let H be a nonempty subset of G. If $$ab^{-1}$$ is in H whenever a and b are in H, then H is a sugroup of G

1: associativity (H inherits from G)

2: show $$e \in H$$ (identity element)

3: show that H is closed under the binary operation of G

4: show that $$a^{-1} \in H$$ for all $$a \in H$$

Proof: Let G be a group and let H be a nonempty subset of G. Let e be the identity of G, suppose that a and b are in H and that $$ab^{-1} \in H$$; then $$aa^{-1}=e$$ is in H. 
In addition, $$ea^{-1} = a^{-1}$$ is in H, for all $$a \in H$$, Finally $$a(b^{-1})^{-1}=ab$$ is in H (closure)
The associative property is satisified ih H because the associative property is satisified by all element of G. 

### Example
Let G be an abelian group, and let $$H=\{x \in G \lvert x^3 =e\}$$, where e is the identity of G. show that H is a subgroup of G.

Proof
Since e is the identity of G, $$e \cdot e \cdot e=e \cdot e = e$$, so $$e^{3}=e$$. Thus $$e \in H$$
Let $$a,b \in H$$. $$a^3=e$$ and $$b^3=e$$. Hence $$(ab^{-1})^3 = (ab^{-1})(ab^{-1})(ab^{-1})=a^3(b^{-1})^3 = a^3(b^3)^{-1} =e \cdot e^{-1} =ee=e$$
Thus $$a(b^{-1}) \in H$$. By theorem 3.1, H is a subgroup of G. 

Note: apply the shoe and sock rule $$(ab)^{-1} = b^{-1}a^{-1}, (b \cdot b \cdot b)^{-1}= b^{-1}b^{-1}b^{-1}=(b^{-1})^3$$
$$(b^n)^{-1} = (b^{-1})^n $$ for $$n \in \mathbb{Z}^+$$ (By induction)


### Theroem 3.2 (The two-step sugroup Test)
Let G be a group and let H be a nonempty(step 3) subset of G. If $$ab \in H$$ (step 1)and $$a^{-1} \in H$$(step 2) whenever a and b are in H, then H is a subgroup of G. 






