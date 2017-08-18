---
layout: post
title:  Foundation exam 1 review
date:   2017-06-08 10:05:05
categories: Math
tags: foundation function 
---
* content
{: toc}

### Question 1

Let f : X → Y and g : Y → Z. Prove that if g ◦ f is an injection, then f is an injection.







**Proof**

Suppose $$f(x) = f(y) \implies g(f(x)) = g(f(y)) \implies (g ◦ f)(x) = g ◦ f(y)$$ but g ◦ f is 1 to 1 $$\implies x=y$$ and f is 1 to 1. 

Q.E.D

### Question 2

Let f : X → Y . Given functions g, h : W → X such that whenever f ◦ g = f ◦ h, then g = h; show that f is injective.

**Proof**

consider for $$w_{1},w_{2} \in W$$, the images $$(g(w_{1})),h(w_{2})$$. Then $$g(w_{1}),h(w_{2}) \in X$$. Consider $$f(g(w_{1}))=f(h(w_{2})) \implies f ◦ g(w_{1}) = f ◦ h(w_{2}) \implies g = h \implies g(w_{1})=h(w_{2})$$, so f is one to one. 

### Question 3

Let $$f : X → Y$$ and $$P_{α} ⊆ Y$$ for every $$α ∈ A$$ Show 

$$f^{-1} \left( \bigcup_{a\in A} P_{a} \right) = \bigcup_{a \in A} f^{-1}(P_{a})$$

**proof**
(a)
Let $$x \in f^{-1}(\bigcup_{a \in A}P_{a}) \implies f(x) \in \bigcup_{a \in A}P_{a} \implies f(x) \in P_{a}$$ form some $$a \in A \implies x \in f^{-1}(P_{a})$$ for some $$a\in A \implies \bigcup_{a\in A}f^{-1}(P_{a})$$. Since x is arbitrary $$\implies x \in f^{-1}(\bigcup_{a \in A}P_{a})=\bigcup_{a \in A}f^{-1}(P_{a})$$ 

(b)
let $$x\in\bigcup_{a\in A}f^{-1}(P_{a}) \implies x \in f^{-1}(P_{a}) $$ for some $$a\in A \implies f(x) \in P_{a}$$ for some $$a \in A \implies f(x) \in \bigcup_{a \in A}P_{a} \implies x \in f^{-1}(\bigcup_{a \in A}P_{a})$$, since x is abitrary, $$ \bigcup_{a \in A}f^{-1}(P_{a}) \subseteq x \in f^{-1}(\bigcup_{a \in A}P_{a})$$

so by (a)(b), set equality is satisified Q.E.D

### Question 4 

Let f : X → Y and P_{α} ⊆ X for every α ∈ A Show

$$f \left( \bigcup_{a\in A} P_{a} \right) = \bigcup_{a \in A} f(P_{a})$$

(a)

let $$y \in f\left( \bigcup_{a\in A} P_{a} \right) \implies x \in  \bigcup_{a\in A} P_{a}\implies  x \in P_{a}$$ for some $$a\in A \implies y \in f(P_{a}) $$ for some $$a\in A \implies \bigcup_{a \in A} f(P_{a})$$ since y is arbitrary $$\implies \left( \bigcup_{a\in A} P_{a} \right) \subseteq \bigcup_{a \in A} f(P_{a})$$

(b)
let $$y \in \bigcup_{a \in A} f(P_{a}) \implies y \in f(P_{a})$$ for some $$a \in A \implies x \in P_{a}$$ for some $$a \in A \implies x \in \bigcup_{a \in A} P_{a}$$ for some $$a \in A \implies y \in f(\bigcup_{a \in A}(P_{a})$$ and since y is arbitrary, so $$ \bigcup_{a \in A} f(P_{a}) \subseteq f \left( \bigcup_{a\in A} P_{a} \right) $$
so (a)(b)yield set equality Q.E.D

### Question 5

Let f be a real function that is strictly decreasing. Prove that for any b ∈ R, f^{−1}(b) is either empty or consists of a single element. Deduce from this that f must be an injection.

Let f be a real function such that if $$x_{1} \gt x_{2} $$, then $$f(x_{1}) > f(x_{2})$$ (function is strictly decreasing). Prove for all $$b \in \mathbb{R}$$. $$f^{-1}=\emptyset$$ or $$f^{-1}(b)=\{a\}$$

Suppose $$f^{-1}≠ \emptyset$$, then suppose $$x≠y, x,y \in f^{-1}(b) \implies f(x) = b$$ and $$f(y)=b \implies f(x) = f(y)$$. So, wlog suppose $$x < y$$ but f is strictly decreasing, so $$f(x)>f(y)$$ either $$f^{-1}=\emptyset$$ or $$f^{-1}=\{a\}$$

### Question 6

Let f be a real function that is decreasing. Is it possible for f not to be injective? Surjective? Be sure to justify.

**Proof**

$$f:\mathbb{R} \to \mathbb{R}$$ by 

$$f(x)=
\begin{cases}
1-x & \text{x>1} \\
0 & -1 ≤ x ≤ 1 \\
-(x+1) & x < -1 \\
\end{cases}
$$


$$f(x)=
\begin{cases}
1-x & \text{x>1} \\
0 & -1 ≤ x ≤ 1 \\
1-x  & x < -1 \\
\end{cases}
$$

### Question 7

Let$$∼$$ be a relation on $$X=Z×Z \ \text{by} \ (a,b)∼(c,d)$$ if and only if $$a+d=b+c$$. Which of the properties of reflexivity, symmetry, antisymmetry, and transitivity apply to this relation? If it has a property be sure to prove it, if it doesn’t give a counterexample.

Test for reflexive: 
$$(a,b) \sim (a,b)$$ means $$a+b=b+a$$
this is true since $$a,b \in \mathbb{Z}$$ so, it is reflexive.

Test for symmetric:

if $$(a,b) \sim (c,d) \implies a+d = b+c \implies b+c=a+d \implies c+b=d+a$$, so it is symmetric. 

Test for antisymmetric: 
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

### Question 8

Let F be a family of sets and let R be a relation on F by XRY if and only if $$X \subseteq Y$$ . Which of the properties of reflexivity, symmetry, antisymmetry, and transitivity apply to this relation? If it has a property be sure to prove it, if it doesn’t give a counterexample.

1: Reflexive

$$
X \subseteq X
$$

not possible, X can not be a proper subset to itself.

2: Symmetric

XRY and YRX
$$
X \subseteq Y \implies \exists y \in Y \text{but} y \notin X
$$
Therefore 
$$Y \subsetneq X$$

So, it is not symmetric.

3: Antisymmetric
XRY and YRX iff X=Y
$$
X \subseteq Y \ \text{and} \ Y \subseteq X
\implies X \subseteq X$$ which is not possible. 

4; transitive
XRY and YRZ then XRZ
$$Y \subseteq Z \implies \exists z \in Z:a \not\in Y$$
and $$X \subseteq Y \implies \exists y \in Y:y \not\in X$$
Therefore, $$\exists y,z \in Z: y,z \not\in X$$

So, XRZ is true. 


