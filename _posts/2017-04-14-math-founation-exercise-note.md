---
layout: post
title: Math Foundation exercise note
date: 2017-04-14 11:01:00
categories: Math Foundation
tags: proof foundation
---
* content
{: toc}

Download [Textbook](http://www.math.wustl.edu/~mccarthy/SandP2.pdf)



## 2.2. Ordering

### Example 2.6. Let R be the relation on $$N^{+}$$ defined by x$$\mathbf{R}$$y if and
only if there is z ∈ $$N^{+}$$ such that xz = y. Then $$\mathbf{R}$$ is a partial ordering of  $$N^{+}$$.

Use the definition. You need to show that R is reflexive, antisymmetric, and transitive.

1. Reflexive: Pretty obvious, just choose $$z=1$$.

2. Antisymmetry: a**R**b $$\implies$$ $$\exists n \in \mathbb{N}:a*n=b$$
 
   and b**R**a $$\implies$$ $$\exists m \in \mathbb{N}:b*m=a$$

   $$\implies m=1/n \implies m=n=1 \implies a=b$$

3. a**R**b $$\implies$$ $$\exists n \in \mathbb{N}:a*n=b$$
 
   and b**R**c $$\implies$$ $$\exists m \in \mathbb{N}:b*m=c$$

   $$\implies a*(n*m)=c \implies$$ a**R**c

[reference](https://math.stackexchange.com/questions/2233256/prove-mathbfr-is-a-partial-ordering-of-n/2233274#2233274)   