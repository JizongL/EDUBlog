---
layout: post
title:  Foundation section 3 
date:   2017-06-05 08:05:05
categories: Math
tags: foundation function 
---
* content
{: toc}

## 1.4 Function continues

### Definition: Injection





Let $$f:X \to Y$$ f is called injection, if whenever $$x≠y, x,y \in X$$ then $$f(x)≠f(y)$$

also call one to one. 

can be stated as if $$f(x) =f(y)$$, then $$x = y$$ (contrapositive form)

### Example 

Determine if the following are injections

(1)$$ f:\mathbb{R} \to \mathbb{R},f(x) = x^{3}$$

Prove that it is injective.

suppose $$f(x)=f(y), x^{3}=y^{3}$$

2 different ways to approach

1: cube root is unique $$x=y$$ so $$f$$ is one to one. 

2: $$x^{3}-y^{3}=0 \\
(x-y)(x^{2}+xy+y^{2}) =0 \\
\implies x=y$$ so f is one to one. 


(2)$$f:\mathbb{R} \to \mathbb{R} \quad f(x)=x^{2}$$

$$f(-1)=f(1)$$ and $$-1 ≠ 1$$

### Example 1

let $$f: X \to Y \ \text{and} \ g:Y \to Z$$

suppose $$f, g$$ are injective, then prove $$g \circ f$$ is one to one.

note: make sure g(f) is well defined. 

**proof**

suppose $$(g \circ f)(x)=(g \circ f)(y) \text{for} x,y \in X$$

$$g(f(x))=g(f(y)) \implies f(x) = f(y)$$
since g is 1 to 1, but since f is 1 to 1

$$\implies x = y$$ so $$g \circ f$$ is one to one. 



### Def: Surjective

Let $$f:X \to Y$$,then f is called a surjection from X to Y if $$ran(f) = Y$$

also called "onto"

notice $$ran(f)≤ Y$$

to show something is onto, really ned to show $$Y \subseteq ran(f)=\{y \to Y: for x \in X,y=f(x)\}$$

given any $$y \in Y$$, and to show that exist an $$x \in X $$ such that $$y = y(x)$$

### Example
discuss surjectivity of the following

(1)
$$f:\mathbb{R} \to \mathbb{R} f(x) = x^{2}$$

$$-1=x^{2}$$ is not defined.

so not surjective.

(2)
$$f:\mathbb{R} \to Y y=\{x \in \mathbb{R}: x ≠ 0\}$$ $$f(x)=x^{2}$$

given $$y \in \mathbb{R^{+}}$$ such that $$f(x)=x^{2}$$

since $$x^{2}≥0$$ for $$x \in \mathbb{R}$$ so f is onto. 

### Definition: Bijection

let $$f:X \to Y$$, if f is both injective and surjective we call 
f a bijection. 

### Definition: Permutation

Let X be a set, a permutation of X is a bijective $$f: X \iff Y$$

### Example 

Show the following are permutation

(1) $$f: \mathbb{Z} \to \mathbb{Z},f(x) = x+1$$

**proof**

(a) given any $$y \in \mathbb{Z}$$ such that $$y = x+1 \implies x=y-1$$

and $$y \in \mathbb{Z} \ \text{so} \ y-1 \in \mathbb{Z} \implies x \in \mathbb{Z}$$ 

so f is onto

(b) suppose $$f(x) = f(y) \implies x+1 = y+1 \implies x = y$$ so f is 1 to 1.

So, by (a) and (b), it is bijection from X to itself, so it is a permutation. 


(2)$$X = \{0,1,-1\},f:X \to X,f(x)=-x$$

**proof**

since X is finite. 

so prove by exhaustion 

$$f(0) = 0 f(-1)= 1, f(1)=-1$$

by observation, it is one to one and onto. So, it is bijection. 

Q.E.D

note: if $$X=\{0,1,2,3,...,n-1\}$$, then it is not finite and be careful when approaching the proof. 

## Section 1.5 Images and Inverse

### Definition Image

let $$f:X \to Y$$ and $$W \subseteq X$$ then the image of W under 

f denoted $$f[W]=\{f(x): x \in W\}$$

so $$f[X]= ran(f)$$

note: this ensures the function is always onto. 

### Example

suppose $$f(x) = x^{2}+3$$ is real function. let $$w=\{-2,2,3\},Z=(-1,2)$$. 

Compute $$f[W],f[Z]$$

$$f(-2)= 4+3 = 7 \\

f(2) = 4+3=7 \\
f(3) = 9+3=12$$

$$f[W]=\{7,12\}$$

$$f(-1)=1+3=4 \\
f(2) = 4+3=7$$

$$f(0)=3$$, (by imtermediate value theorem)

so by calculus, $$f[Z]=[3,7) $$

 

note: $$x=0$$ is within the interval(3 is the lowest point in the graph. ), so it is continuous at that point. 

### Definition: inverse image

Let $$f:X \to Y, b \in Y$$. Then the inverse image of b under f denoted $$f^{-1}(b) =\{x \in X: f(x)=b\}$$

often this is called preimage

if $$b \not\in Y \implies f^{-1}(b)= \emptyset$$

if f is one to one, then for any $$b \in ran(f),f^{-1}$$ consistes of a single element. 

**proof:**

suppose $$x ≠ y, x,y \in f^{-1}(b), \implies f(x)=b  \ \text{and} \ f(y) = b \\ \implies f(x) = f(y)$$, 

but f is one to one, therefore, $$x = y$$. 


### Definition: inverse image

Let $$f: X \to Y,Z \subseteq Y$$ then the inverse image of Z under f is $$f^{-1}[Z]=\{x \in X: f(x) \in Z\}$$


We use $$f^{-1}[ ]$$ to mean the inverse image of a subset of the codomain, and $$f^{1}( )$$ for the inverse image of an element of the codomain — both are subsets of the domain of f.

if$$ ran(f) \cap Z = \emptyset \implies f^{-1}[Z]= \emptyset$$

### Example: 

discuss $$g^{-1}$$ for different b of real function
$$g(x)=x^{2}$$


$$g^{-1}(b)=\{x \in \mathbb{R}: x^{2}=b\}$$

if $$b < 0$$ , $$g^{-1}(b) =\emptyset$$

if $$b = 0$$ , $$g^{-1}(b) = \{0\}$$

if $$b > 0 $$ , $$g^{-1}(b) = \{-\sqrt{x},\sqrt{x}\} $$


### Definition: inverse function 

let $$f: X \to Y$$. Then the inverse function of f denoted $$f^{-1}$$ such that $$f^{-1}: Y \to X$$ and 
$$graph(f^{-1})=\{(b,a) \in Y \times X :(a,b) \in graph(f)\}$$

notice: if f were not "onto", then there is somethig in Y not mapped from X. if f were "one to one", can't define $$f^{-1}(t)$$ without picking a specific preimage. 

note:

"one to one" ensures existence 

"onto" ensures uniqueness 


One can fix both problems of "1 to 1" and "onto": 

if f is "1 to 1" but not "onto", define 

$$g:X \iff ran(f)$$ 

by $$g(x) =f(x)$$

if f is "onto" but not "one to one"
mess around with domain to make it "one to one"

Note: be cautious, because by restricting the domains or codomains to make a function become bijective, implies a lot of information is lost. It is a trade off

### Example

$$f: \mathbb{R} \to \mathbb{R}$$ by $$f(x)=x^{2}$$

to make f a bijection

$$ran(f)=[0,\infty)$$

so $$f:\mathbb{R} \to [0,\infty) $$ is now "onto"

so that $$dom(f) =[0,\infty)$$
then

$$f:[0,\infty) \to [0,\infty)$$ is now bijective.

### Definition: identity function

Let X be a set, then the identity function on X denoted $$id\lvert_{X}: X \to X$$ is the function $$id\lvert_{x}: (x) \to X$$ for all $$x \in X$$

now if $$f:X \to Y$$ is bijection, then $$f^{-1}$$ is the unique function such that 

(1) $$f^{-1} \circ f = id\lvert_{X}$$

(2) $$f \circ f^{-1} = id \lvert_{Y}$$

### Definition: Restiction of f

Let $$f:X \to Y,W \subseteq X$$, then the restriction of f to W written as $$f\lvert_{w}$$ is the function $$f\lvert_{w}: W \to Y$$, then $$x \iff f(x),x\in Ｗ$$

also called the restriction mapping

$$graph(f\lvert_{w})=(W \times Y) \cap (graph(f))$$

![pic]({{root_url | prepend: site.baseurl}}/asset/MathFoundation/classnote/lect-3/class-3-a.jpeg)

### Example

find restricitons on $$f: \mathbb{R} \to \mathbb{R},f(x)=Sin(x)$$
to make f a bijective function

$$f(x)= sin(x)$$

$$f:[-\frac{\pi}{2},\frac{\pi}{2}] \to \mathbb{R}$$ then f is "1 to 1"

$$f:[-\frac{\pi}{2},\frac{\pi}{2}] \to [-1,1]$$ so now it is "onto"

![pic2]({{root_url | prepend: site.baseurl}}/asset/MathFoundation/classnote/lect-3/class-3-b.jpeg)



## Questions to ask

[Exercise 1.16](https://math.stackexchange.com/questions/2309755/exercise-1-16-for-each-positive-real-t-let-x-t-t-t-and-y-t-t/2309780?noredirect=1#comment4753780_2309780)

Exercise 1.8. Let X and Y be finite non-empty sets, with m and n elements, respectively. How many functions are there from X to Y ? How many injections? How many surjections? How many bijections?

Check out [Vadim V. Lozin's](http://homepages.warwick.ac.uk/~masgax/) powerpoint on [functions]({{root_url | prepend: site.baseurl}}/asset/MathFoundation/proof/pdf/functions.pdf)



Exercise 1.18. Let X be the set of vertices of a square in the plane. How many permutations of X are there? How many of these come from rotations? How many come from reflections in lines? How many come from the composition of a rotation and a reflection?

(ii) Show that if $$g \circ f$$ is surjective, then one of the two functions f, g must be surjective (which one?). Give an example to show that the other function need not be surjective.

My answer 

g must be surjective
since g is surjective, there exists $$g(y_{1}) = g(y_{2})$$
but y_{1} and $$y_{2}$$ does not need to equal. 
which implies f does not need to be surjective. 
$$x_{1}≠x_{2},f(x_{1})=y_{1}≠f(x_{2})=y_{2}$$

Exercise 1.23. 
Let $$f : R \to R$$ be a polynomial of degree $$n \in \mathbb{N}$$. For what values of n must f be a surjection, and for what values is it not a surjection?
x^{2}=-1 has no solution. So when n is even, f is not surjective. 
when n is odd, $$\forall y \in f(x),\exists x \in X \text{satisifies} y=x^{2}$$

[chegg reference](http://www.chegg.com/homework-help/questions-and-answers/let-f-polynomial-degree-n--values-n-must-f-surjection-values-surjection-q10232679)

Exercise 1.24. 
Write down a bijection from $$(X \times Y ) \times Z$$ to $$X \times (Y \times Z)$$. Prove that it is one-to-one and onto.


Exercise 1.26. Let $$f : R \to R$$ be a function built using only natural numbers and addition, multiplication and exponentiation (for instance f could be defined as x 7! (x + 3)x2 ). What can you say about f[N]? What can you say if we include subtraction or division?
