---
layout: post
title:  Foundation section 5 2.1 2.2
date:   2017-06-08 10:05:05
categories: Math
tags: foundation function 
---
* content
{: toc}

Sec 2.2: orderings 








Def: let X be a set and R a relation on X, we say R is a partial ordering if 

(1) R is reflexive

(2) R is antisymmetric

(3) R is transitive.

### Example 1

Show the following on partial orders.  

(1) X is family of sets, $$R,_{Y_{1}}R_{Y_{2}} \iff y_{1}\subseteq y_{2}$$ 

**Proof**

1: Reflexive

for reflexive $$yRy$$ means $$y \subseteq y$$ is always true. 

2: antisymmetric

Suppose $$y_{1}Ry_{2}$$ and $$y_{1}Ry_{2}$$ 
$$\implies y_{1}\subseteq y_{2}$$ and $$y_{2} \subseteq y_{1}$$ by definition of set, $$y_{1}=y_{2}$$

For transitive

Suppose $$y_{1}Ry_{2}$$ and $$y_{2}Ry_{3}$$ 
$$\implies y_{1}\subseteq y_{2},y_{2}\subseteq y_{3}$$
pick any $$x \in y_{1}$$ arbitrarily $$\implies x \in y_{2} \implies x \in y_{3}$$ so $$y_{1} \subseteq y_{3}$$ Q.E.D


(2)R on $$\mathbb{N^{+}}$$ defined by $$xRy \iff$$ there is $$z \in \mathbb{N^{+}}$$ such that $$xz=y$$

**proof**

**Test for reflexive:** 

$$xRx$$ means there is $$a z \in \mathbb{N^{+}}$$ such that 

$$xz=x$$, when $$z=1$$, then $$x(1)=x$$.so it is reflexive.

**Test for antisymmetric:**

suppose $$xRy$$ and $$yRx \implies$$ there is $$z_{1} \in \mathbb{N^{+}}$$ such that $$xz_{1}=y$$ and there is $$z_{2} \in \mathbb{N^{+}}$$ such that $$yz_{2}=x$$

Substitute we get

$$yz_{2}z_{1}=y \implies z_{1}z_{2}=1$$ since $$y \in \mathbb{N^{+}} \implies z_{1}=z_{2}=1$$ since $$z_{1}z_{2} \in \mathbb{N^{+}} $$which is positive,therefore,$$\implies x = y$$

**for transitive:** 

suppose $$xRy$$ and $$yRw$$, so there are $$z_{1},z_{2} \in \mathbb{N^{+}}$$ such that, $$xz_{1}=y$$ and $$yz_{2}=w \implies x(z_{1}z_{2})=w$$ since $$z_{1},z_{2}\in \mathbb{N^{+}}$$
$$\implies (z_{1}z_{2}) \in \mathbb{N^{+}}$$ so $$xRw$$ is true
Q.E.D

## 2.3 Equivalence Relations

### Definition 

let X be a set of R a partial ordering on X, we say R is a linear ordering(total ordering) provided that for any $$x,y \in X$$ either $$xRy$$ or $$yRx$$ is true.

(1) $$≤$$ on $$\mathbb{R}$$ (y)

(2) $$≥$$ on $$\mathbb{R}$$ (y)

(3) $$< $$ on $$\mathbb{R}$$ (n) note: not antisymmetric, so not partial ordering. therefore, it is not linear ordering. 

since 

### Example

Let R be a relation defined on $$Z \times Z$$ as follows. If $$a,b,c,d \in Z$$, $$(a,b) R (c,d)$$ if and only if $$a+d = b+c$$.

Test for reflexive: 
$$(a,b) \sim (a,b)$$ means $$a+b=b+a$$
this is true since $$a,b \in \mathbb{Z}$$ so, it is reflexive.

Test for symmetric:

if $$(a,b) \sim (c,d) \implies a+d = b+c \implies b+c=a+d \implies c+b=d+a$$, so it is symmetric. 

Test for Antisymmetric: 

$$(1,1) \sim (0,0)$$ since $$1+0=1+0$$ and $$(0,0) \sim (1,1)$$ since $$(0+1)=(0+1)$$, but $$(1,1)≠(0,0)$$, it is not antisymmetric. 

Transitive:

if $$(a,b) \sim (c,d)$$ and $$(c,d) \sim (x,y)$$

then $$\implies 
\begin{cases}
a+d = b+c & \text{} \\
c+y=d+x & \text{} \\
\end{cases}
$$



and $$
\implies 
\begin{cases}
a+d = b+c & \text{} \\
c=d+x-y & \text{} \\
\end{cases}
$$

and $$ \implies a+d=b+d+x-y \implies a+y=b+x \implies (a,b) \sim (x,y)
$$

Therefore, it is true


### Example

Let R be a relation on $$X = Z \times N^{+}$$ defined by (a,b) R (c,d) if and only if ad = bc.

reflexive 
$$(a,b)R(a,b)$$ means $$ab=ba$$ is true since $$a,b,c\in \mathbb{Z}$$

symmetric
$$(a,b)R(c,d) \implies ad=bc \implies bc=ad \implies cb=da \implies (c,d)R(a,b)$$

transitive: 
suppose $$(a,b)R(c,d)$$ and $$(c,d)R(x,y)$$
then $$ad=bc and cy=dx \implies ady=bcy cy=dx \implies ady=bdx$$
$$\implies ay=bx$$ since $$d\in \mathbb{N^{+}} \implies (a,b)R(x,y)$$

Q.E.D

2.18 see book and picture note. 

the sign for equivalance is $$\cong$$

### Definition
Equivalence class, $$[x]_{R}$$ Let R be an equivalence relation on a set X. If $$x \in X$$ then the equivalence class of x modulo R, denoted by [x]R, is

$$[x]_{R}=\{y \in X \lvert xRy\}$$

If $$y \in [x]_{R}$$ we call y a representative element of [x]R. The set of all equivalence classes $$\{[x]R | x \in X\}$$ is written X/R. It is called the quotient space of X by R.
