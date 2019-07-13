---
layout: post
title:  Transition to Higher Mathematics Exercise 2
date:   2017-06-03 22:34:05
categories: Math 
tags: exercise homework relation equivalence
---
* content
{: toc}

### Exercise 2.1

Which of these four properties apply to the relations given in Examples 2.1-2.4 (Exercise 2.1)?






Example 2.1. Let $$≤$$ be the usual ordering on $$\mathbb{Q}$$. Then $$≤$$ is a relation on  $$\mathbb{Q}$$. 

Reflexive 
$$x ≤ x $$

Not Symmetric 
$$4 ≤ 5$$ does not implie $$5≤4$$

Antisymmetric
$$4≤4$$

Transitive
$$1≤2$$ $$2≤3$$ then $$1≤3$$


Example 2.2. Define a relation R from $$\mathbb{Z}$$to $$\mathbb{R}$$ by $$xRy$$ if $$x > y+3$$. Then we could write $$7R \sqrt{2}$$ or $$(7,\sqrt{2}) \in \mathbb{R}$$ to say that $$(7,\sqrt{2})$$ is in the relation.

Not Reflexive
$$3>3+3$$ is false. 

Not symmetric 
if $$a>b+3$$ then $$a>b$$ and $$b>a$$ is false. 

Not antisymmetric
if $$a = b$$ and $$a>a+3$$ does not make sense. 

Transitive
if $$a>b+3$$ and $$b>c+3$$ then $$a>c+3$$ is true


Example 2.3. Let $$X = \{2, 7, 17, 27, 35, 72\}$$. Define a relation R by $$xRy$$ if $$x≠y$$ and x and y have a digit in common. 

$$\{(2, 27), (2, 72), (7, 17), (7, 27), (7, 72), (17, 7), (17, 27)\\, (17, 72),(27, 2), (27, 7), (27, 17), (27, 72), (72, 2), (72, 7)\\, (72, 17), (72, 27)\}$$

Transitive
xRx is true.

Symmetric
$$2R27$$ and $$27R2$$ are true

Not Antisymmetric

Transitive
$$2R27$$ and $$27R72$$ then $$2R72$$

Example 2.4. Let P be the set of all polygons in the plane. Define a relation E by saying $$(x,y) \in E$$ if x and y have the same number of sides.

reflexive
xRx
assume x has n sides, then xEx is reflexive.

Symmetric
xEy and yEx 
let x and y have n sides

Not antisymmetric
a square and a rectangle both have 4 sides, but they are not the same. 

Transitive
x=parallegram, y=cube,z=square,all have 4 sides
xRy yRz
xRz


### Exercise 2.2 
Prove that the relation in Example 2.6 is a partial ordering.

Example 2.6. Let R be the relation on N+ defined by xRy if and only if there is $$z \in \mathbb{N^{+}}$$ such that
$$xz = y$$.
Then R is a partial ordering of $$\mathbb{N^{+}}$$. 

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

### Exercise 2.3

List every pair in the relation given in Example 2.10.

Example 2.10. Consider the graph on the set $$X = {a, b, c, d, e, f }$$ give in the Figure




### Exercise 2.5

Prove that congruence mod n is an equivalence relation on $$\mathbb{Z}$$.

$$a \equiv b \ mod \ n$$

reflexive

$$a \equiv a \ mod \ n$$

$$n \lvert a-a \\
n \lvert 0$$

true

symmetric

$$a \equiv b \ mod \ n \\
b \equiv a \ mod \ n
$$

true

transitive
a,b,c, aEb,bEc
$$a \equiv b \ mod \ n$$
$$b \equiv z \ mod \ n$$

$$
n \lvert (a-b) \implies (a-b)=s \cdot n\\
n \lvert (b-c) \implies (b-c)=t \cdot n \\
n \lvert (a-c) \implies (a-c)=b \cdot n
$$

$$a-b+b-c=s \cdot n + t \cdot n \\
(a-c)=n\cdot(s+t) \implies \\
n \lvert (a-c)$$

true

### Exercise 2.6 

Prove that two integers are in the same congruence class mod n if and only if they have the same remainder when divided by n.

