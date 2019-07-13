---
layout: post
title:  Foundation section 2 1.2 and 1.3 
date:   2017-06-02 10:05:05
categories: Math
tags: foundation function 
---
* content
{: toc}

## Section 1.2 continued

### Cartesian Products





#### Definition

Let X,Y be sets
The Cartesian Products(Direct product) of X and Y, $$X \times  Y =\{(x,y): x\in X, y\in Y\}$$

#### Example 1

compute

$$X \times Y$$ if $$X = \{1,2,3\} Y = \{1,2\}$$

$$\{(1,1),(1,2),(2,1),(2,2),(3,1),(3,2)\}$$

**notice** 

$$(X \times Y) \times  Z = \{((x,y),z):x \in X, y \in Y,z\in Z \} \\
X \times (Y \times Z)=\{(x,(y,z)):x\in X, y\in Y,z \in Z\}$$

technically $$(X \times  Y) \times Z ≠X  \times (Y \times Z)$$

in most areas of math, these two are indistinguishable
so $$X \times  Y \times  Z = \{(x,y,z):x \in X,y \in Y, z \in Z\}$$

#### Definition: Cartesian Products

Let $$n \in \mathbb{N}^{+}, X_{1},X_{2},X_{3},...X_{n}$$ be sets

The Cartesian product of $$X_{1},...,X_{n}$$

denoted as $$X_{1} \times X_{2},...,X_{n}=\{(x_{1},x_{2},...,x_{n}):x_{i} \in X_{i} \ \text{for} \ i = 1,2,...,n\}$$

#### Example 1

Let $$X,Y \subseteq U$$, show$$(X \cup Y)^{c}=X^{c} \cap Y^{c}$$

sidenote: Usual methods of solving this kind of problem.

1: Show $$X \subseteq Y$$

2: Pick random $$a \in X$$

3: show $$a \in Y$$

We need to show 

(a)$$(X \cup Y)^{c} \subseteq X^{c}\cap Y^{c} $$

(b)$$X^{c} \cap Y^{c}\subseteq(X \cup Y)^{c}$$

#### Proof 1:

(a)Pick $$x \in (X \cup Y)^{c} \\
\implies x \in U\setminus(X \cup Y) \\
 \implies x \in U \text{ and } x \not\in X \cup Y \\
 \implies x \in U \text{ and } x \not\in X, y \not\in Y \\
\implies x\in U \text{and } x \not\in X \text{ and } x \not\in Y  \\
 \implies x \in U\setminus X \text{ and } x\in U\setminus Y \\
 \implies x \in X^{c} \text{ and } x\in Y^{c} \\
 \implies x \in X^{c} \cap Y^{c}$$

This argument works for all x in the set 

$$\implies (X \cup Y)^{c} \subseteq X^{c} \cap Y^{c}$$

(b)
pick $$x\in (X^{c} \cap Y^{c}) \\
\implies x \in X^{c} \text{and} Y^{c} \\
\implies x\in U \setminus X \text{and} x\in U \setminus Y \\\implies x\in U \text{and} \ x\not\in X \text{and} x\in U \text{and} x \not\in Y \\
\implies x\in U \text{and} \ x\not\in X \text{and} x\not\in Y \\\implies x \in U \text{and} \ x \not\in X \text{or} x\not\in Y \\\implies x\in U \text{and} \ x\not\in X \cup Y \implies x\in U \setminus (X \cup Y) \\
 \implies x \in(X \cup Y)^{c}\\
 $$ 

This argument work, for all x in the set

$$\implies X^{c} \cap Y^{c} \subseteq (X \cup Y)^{c} \\ $$

so by (a) and (b) $$ \implies X^{c} \cap Y^{c} =(X \cup Y)^{c} \\$$ 
Q.E.D


## Sec 1.3: Function 

### Definition: Functions 

let X, Y be sets. A function f from X to Y, denoted as $$f:X \to Y$$ is an assignment of exactly one element of Y to each element in X. 

A function

(1)can have situation like f(-3)=f(2)=5

(2)can't have f(1)=-1 and $$f(1)= \pi$$

note: must pass the vertical line test.

### Example 1:

study the following and determine if they're fine. 

(1) $$f:\mathbb{Z} \to \mathbb{R}, f(n)=n^{2}$$

(2) $$f:\mathbb{R} \to \mathbb{R}, g(x)=tan(x)$$

(3) $$f:\mathbb{R} \to \mathbb{R}, f(x)= y \ \text{if} \ 3x=2-y$$

(4) $$f:\mathbb{R} \to \mathbb{R}, g(x)= y^{4} \ \text{if} \ x=y$$

**solutions**

(1) 

$$f(n)= n^{2}$$

if $$n \in \mathbb{Z}$$

f(n) = $$n^{2}\in \mathbb{R}$$

yes it's a function



(2)

$$g(x)=tan(x)$$

not a function, because it is not defined at $$\frac{\pi}{2}$$

(3)

$$f(x)=y$$  

if $$3x=2-y$$ which implies $$y=2-3x$$
so it is one to one and it is a funtion. 

(4)

$$g(x)=y$$

if $$x = y^{4}$$ then it is not a function. Because it can't be uniquely solved as one $$x$$ is mapped to $$2 ys$$.

### Definition: Image

Let $$f:X \to Y$$ if $$a\in X$$, then the element of Y assigned to a is called the image of $$a$$ under f is denoted by $$f(a)$$. 

### Definition : Graph of Functions

Let $$f:X \to Y$$, the graph of f denoted graph(f) or P(f)
is $$graph(f)=\{(x,y): x\in X \ \text{ and} \ y=f(x)\} = \{(x,f(x):x\in X)\}$$

### Example 1:

compute graph(f) if $$X \subseteq \mathbb{R},f:X \to \mathbb{R} \text{ and } f(x) = -x \\ 
graph(f) = \{(x,-x),x\in X\}$$

**note:**
If $$f:X \to Y$$, $$graph(f)\subseteq X \times Y$$, then
a graph is always a subset of the Cartesian Product of X and Y. 

### two conditions of graphs

Let $$Z \subseteq X \times Y$$, then Z is a graph of a function from X to Y, if two things happen. 

(1) for any $$x \in X$$, there is some $$y\in Y$$
, such that$$(x,y) \in Z$$

(2) if $$(x,y)\in Z$$, and $$(x,z) \in Z$$, then y = z

now if $$X,Y \subseteq \mathbb{R}$$, then this is the vertical line test. 

### Definition: Domain and Codomain

Let $$f:X \to Y$$, Then X is called the domain of X denoted dom(f) or D(f) and Y is called codomain of f. 

### Example 1
let 

$$f:\mathbb{N} \to \mathbb{N},f(n)=n^{2}$$

$$g:\mathbb{N} \to \mathbb{R},g(x)=x^{2}$$

$$g:\mathbb{R} \to \mathbb{R},h(x)=x^{2}$$

$$graph(f)= \{(n,n^{2}),n \in \mathbb{N}\}=graph(g)$$

$$graph(h)= \{(x,x^{2}),x \in \mathbb{R}\}$$

(need check) on $$\subseteq$$, notation question

so $$graph(f)\subsetneq graph(h)$$ and $$graph(g)\subsetneq graph(h)$$

and $$f≠h,g≠h$$ 

### Definition: Range

Let $$f:X \to Y$$ then the range of f denoted ran(f) is 
$$ran(f)=\{y\in Y: \text{for some $x\in X,y=f(x)$}\}$$
is called of all images of f, and have $$ran(f) \subseteq Y$$

$$ran(f)=\{n^{2}:n \in \mathbb{N}\}=ran(g)$$

$$ran(h)=\{x^{2}:x \in \mathbb{R}\}=ran(0,\infty)$$

### Definition:Real Value Function

let $$f:X \to Y$$, if $$ran(f)\subseteq \mathbb{R}$$ we say f is a real-valued function, and f is called a real function
if $$X=\mathbb{R}$$and f is real valued. 

consider

$$f:\mathbb{C} \to \mathbb{R} \ \ f(z)=a$$

$$f:\mathbb{R} \to \mathbb{C} \ \ f(x)=ix$$

**note**
if the domain is not specified, by default we take the largest set for which the funciton is defined. 

if $$f: X \to Y$$ is a funciton. It is common to write $$x \mapsto f(x)$$ and it says x is mapped to f(x)

### example: compute domains

(1)
$$
f(n) \mapsto
\begin{cases}
0,  & \text{x < 0} \\
x+1, & \text{x ≥ 0}
\end{cases}$$

$$dom(f) = \mathbb{R}$$

(2)
$$f(x)=\sqrt{x}$$

$$dom(f) = [0,\infty]$$

### Definition: Operation of Functions

let X be set and $$n \in \mathbb{N}^{+}$$
and operation on X is a function from $$X^{n} to X$$

### example:
+ on $$\mathbb{N}$$ is operation and $$\cdot$$ on $$\mathbb{N}$$ is operation

**note**
but - and $$\div$$ on $$\mathbb{N}$$ are not operation


if n = 2, then call these binary operations
if $$f,g: X \to Y$$ and * is a binary operation
we can define a new function $$f*g:X\to Y$$
it is defined as $$(f\text{*}g)(x) = f(x)\text{*}g(x)$$

The two common ones are $$f + g \text{and} f \cdot g$$

### Definition: Composition of Functions

let $$f:X \to Y,g: Y \to Z$$ then the composition of g of f

is denoted as $$g \circ f: X \to Z$$ via $$x\to g(f(x)$$