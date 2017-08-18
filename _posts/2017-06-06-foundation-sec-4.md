---
layout: post
title:  Foundation section 4 1.6 
date:   2017-06-06 08:05:05
categories: Math
tags: foundation function 
---
* content
{: toc}


## 1.6 Sequence

## Definition A finite sequence is a function with domain 

often write sequence as $$\{a_{n}\}$$ with $$a_{n}=f(n),0≤n≤N$$

An infinite sequence is a function f with domain $$\mathbb{N}$$



### Definition: A finite sequence

A finite binary sequence is a function $$f:\lceil N\rceil \to $$


### Definition

Let A be a set, and for $$\alpha \in A$$, let $$X_{\alpha}$$ be a set Then the $$\mathcal{F}=\{X_{\alpha}:\alpha \in A\}$$ is a called a family of sets indexed by A.

Then $$\bigcup_{\alpha \in A}=\{x: x \in X_{\alpha} \text{for some $\alpha \in A$}\}$$

Also $$\bigcap_{\alpha \in A}X_{_{\alpha}}=\{x: x\in X_{\alpah} \text{for all $\alpha \in A$}\}$$

### Example
(1) let $$x_{n}=\{n+1,n+2,...,2n\}$$ for $$n \in \mathbb{N^{+}}$$

compute $$\bigcup^{\infty}_{n=1}X_{n}$$ and $$\bigcap_{n=1}^{\infty}X_{n}$$

$$\bigcup^{\infty}_{n=1}X_{n}$$

$$X_{1}=\{2\} \\
X_{2}=\{3,4\} \\
X_{3}=\{4,5,6\} \\
X_{4}=\{5,6,7,8\} \\
X_{5}=\{6,7,8,9,10\}
$$

$$\bigcup^{\infty}_{n=1}X_{n} = \{2,3,4,,...\} = \{n\in \mathbb{N}: n≥2\}$$

$$\bigcap_{n=1}^{\infty}X_{n} = \emptyset$$

(2)
compute $$\bigcup_{t \in(\sqrt{\pi},\infty)}X_{n}$$ and $$\bigcap_{n=1}^{\infty}X_{n}$$
$$Y_{t}=[\frac{11}{t},t]$$ for t>0 real.

Computer 

(record from the pictures)

### Example

Proof

let x \in f^{-1}(\bigcap_{\alpha \})

## Sec 2.1: Relation

Definition: relation

let $$X, Y$$ be sets, $$A$$ relation from $$X$$ to $$Y$$ is a subset of $$X \times Y$$

Notation: let $$X,Y$$ be sets of R a relation on $$X \times Y$$, if $$x \in X,y \in Y$$, then we can express that x be relation $$R to Y $$ by $$xRy$$ if and only if $$(x,y) \in R$$

### Example 

Discuss Relations

(1) let $$≤$$ be a usual ordering on $$\mathbb{Q}$$ iff $$(x,y) \in \mathbb{Q} \times \mathbb{Q}$$

$$\frac{1}{2}≤ 5 \ iff \ (\frac{1}{2},5) \in \in \mathbb{Q} \times \mathbb{Q}$$

(2)
R to be relation from $$\mathbb{Z} to \mathbb{R}$$ by xRy iff x>y+3. 

(3)
X=$$\{2,7,17,27,35,72\}$$
difine R such that xRy iff $$x≠y$$ such that x,y have a common factor.

$$(7,17) \in R, (2,7)\not\in R,(2,2) \not\in R$$

so if $$f:X \to Y$$ then the function f is a special type of relation. 

### 4 properties

Relation may or may not possess them. 

(1) R is reflexive if for every $$x \in X, xRx$$

(2) R is symmetric if for any $$x,y \in X$$, if $$xRy$$ then $$yRx$$

(3) R is antisymetric if for any $$x,y \in X$$ if $$xRy$$ and $$yRx$$, then x=y

(4) R is transitive, if for any $$x,y \in X$$ if $$xRy,yRz$$ then $$xRz$$

(2) xRy iff x>y+3
not reflexive if x=y=0, it fails
not symmetric if x=4, y=0, it fails
antisymmetric 
$$xRy \to x>y+3$$
$$yRx \to y>x+3$$

$$x>y+3>(x+3)+3=x+6 \implies 0>6$$ false

Transitive
$$xRy \to x>y+3$$
$$yRx \to y>z+3$$
$$x>y+3>(z+3)+3>z+3 \implies x>z+3$$, so it is true.

Let X = {2, 7, 17, 27, 35, 72}. Define a relation R by xRy if x≠y and x and y have a digit in common. Then

$$R = \{(2, 27), (2, 72), (7, 17), (7, 27), (7, 72), (17, 7), (17, 27), (17, 72), \\
(27, 2), (27, 7), (27, 17), (27, 72), (72, 2), (72, 7), (72, 17), (72, 27)}\$$

Not reflexive, because x and y must be different as specified.
Symmetric: (2,27) (27,2)
antisymmetric: no, x can not be equal to y as specified
transitive: (2,27),(27,72), then (2,72)





