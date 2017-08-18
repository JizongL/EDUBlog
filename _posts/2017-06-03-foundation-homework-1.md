---
layout: post
title:  Transition to Higher Mathematics Exercise 1
date:   2017-06-03 22:34:05
categories: Math 
tags: exercise homework foundation proof
---

* content
{: toc}

### exercise 1.1

Show $$X=\{n \in \mathbb{N}: \text{n is odd and} \ n = k(k+1) \text{for some} \ k \in \mathbb{N}\}=\emptyset$$






proof:
have $$\emptyset \subseteq X$$

suppose $$X≠\emptyset$$  pick $$n \in X$$

1st case: n is odd

n=(k+1)k

suppose k is odd $$\implies$$ k+1 is even

$$\implies$$ n is even

2nd case: consider k is even 

$$\implies k+1$$ is odd

n=(k+1)k for some $$k \in \mathbb{N}=\emptyset$$

$$\implies n$$ is even

Therefore, n is neither even nor odd

so $$k \in \mathbb{N} \implies n \not\in X$$

and $$\implies X= \emptyset$$

Q.E.D

[Other answers](https://math.stackexchange.com/questions/2306122/show-x-n-in-mathbbn-textn-is-odd-and-n-kk1-textfor-some-k)

### Exercise 1.2

Let X and Y be subsets of some set U. Prove de Morgan’s laws:

$$(X \cup Y)^{c}=X^{c} \cap Y^{c}$$

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

This argument works, for all x in the set

$$\implies X^{c} \cap Y^{c} \subseteq (X \cup Y)^{c} \\ $$

so by (a) and (b) $$ \implies X^{c} \cap Y^{c} =(X \cup Y)^{c} \\$$ 
Q.E.D

### Exercise 1.3

Let X, Y and Z be sets. Prove


### Exercise 1.8

Let X and Y be finite non-empty sets, with m and n elements, respectively. How many functions are there from X to Y ? How many injections? How many surjections? How many bijections?

Check out [Vadim V. Lozin's](http://homepages.warwick.ac.uk/~masgax/) powerpoint on [functions]({{root_url | prepend: site.baseurl}}/asset/MathFoundation/proof/pdf/functions.pdf)

[Surjection](https://math.stackexchange.com/questions/264799/calculating-the-total-number-of-surjective-functions)


### Exercise 1.11
Let $$f$$ and $$g$$ be real functions, $$f(x) = 3x + 8, g(x) = x^{2} -5x$$. What are $$f \circ g$$ and $$g \circ f$$? Is $$(f \circ g) \circ f = f \circ  (g \circ  f)$$?




$$ f \circ g = 3(x^{2}-5x)+8 \\
=3x^{2}-15x+8$$ 



$$g \circ f = (3x+8)^{2}-5(3x+8) \\
9x^{2}+33x+24$$

$$(f \circ g) \circ f  \\
= 3(3x + 8)^{2}-15(3x + 8)+8 \\
=80 + 99 x + 27 x^{2} $$

$$ f \circ (g \circ f) \\
= 3((3x+8)^{2}-5(3x+8)) + 8 \\
=80 + 99 x + 27 x^{2}
$$



### Exercise 1.13
What is the natural generalization of Exercise 1.2 to an arbitrary number of sets? Verify your generalized laws.

hints
Part of the problem here is notation — what if you have more sets than letters? Start with a finite number of sets contained in U, and call them X1, . . . , Xn. What do you think the complement of their union is? Prove it as you did when n = 2 in Exercise 1.2. (See the advantage of having a proof in Exercise 1.2 that did not use Venn diagrams? One of the reasons mathematicians like to have multiple proofs of the same theorem is that each proof is likely to generalize in a di↵erent way).

### Exercise 1.14

What is the natural generalization of Exercise 1.3 to an arbitrary number of sets? Verify your generalized laws.



### Exercise 1.16. 

For each positive real t, let $$X_{t} = ( -t, t)$$ and $$Y_{t} =[ -t,t]$$. 

Describe

(i)$$\bigcup_{t > 0}  X_{t}$$  and $$\bigcup_{t > 0} Y_{t}$$  
In both cases are $$\mathbb{R}$$

(ii) $$\bigcup_{0< t < 10} X_{t}$$  and $$\bigcup_{0< t < 10}  Y_{t}$$  

In both cases $$(-10,10)$$

(iii)$$ \bigcup_{0< t ≤ 10} X_{t}$$  and  $$\bigcup_{0< t ≤ 10} Y_{t}  $$

$$(-10,10)$$ and $$[-10,10]$$

(iv)$$ \bigcap_{t ≥ 10} X_{t}$$  and $$\bigcap_{t ≥ 10}  Y_{t}$$

$$(-10,10)$$ and $$[-10,10]$$

(v)$$⋂_{t > 10} X_{t}$$  and $$⋂_{t > 10} Y_{t}$$

Both cases are $$[-10,10]$$, because it is for all t > 10, that means 10 is contained in all sets. this is very tricky. 

(vi)$$⋂_{t > 0} X_{t}$$  and $$⋂_{t > 0} Y_{t}$$  

$$\{0\}$$



### Exercise 1.17. 

Let f be the real function cosine, and let g be the real function $$g(x) = \frac{x_{2} + 1}{x^{2}-1}$$
(i) What are $$f \circ g,g \circ f,f \circ f,g \circ g, \ \text{and} \ g \circ g \circ f$$? 

$$f \circ g$$
<details>
<summary> Solution</summary>
$$f \circ g=Cos\left(\frac{x^{2}+1}{x^{2}-1}\right)$$
</details> 	

$$g \circ f$$
<details>
<summary> Solution</summary>
$$g \circ f = \frac{Cos^{2}(x)+1}{Cos^{2}(x)-1}$$ Because $$Cos^{2}(x)-1=-Sin^{2}(x)$$ by the Pythgorean Theorem. 
$$g \circ f = \frac{Cos^{2}(x)+1}{-Sin^{2}(x)}=-Cot^{2}(x)-Csc^{2}(x)$$
</details> 	

$$f \circ f$$
<details>
<summary>Solution</summary>
Cos(Cos(x))
</details>

$$g \circ g$$
<details>
<summary>Solution</summary>
$$\frac{(\frac{x_{2} + 1}{x^{2}-1})^2+1}{(\frac{x_{2} + 1}{x^{2}-1})^2-1}$$
</details>

$$g \circ g \circ f$$
<details>
<summary>Solution</summary>
$$\frac{\left(-Cot^{2}(x)-Csc^{2}(x)\right)^2+1}{\left(-Cot^{2}(x)-Csc^{2}(x)\right)^2-1}$$
</details>

(ii) What are the domains and ranges of the real functions $$f, g, f \circ g \ \text{and} \ g \circ f$$?

f
$$Dom(f)=\mathbb{R} \quad \text{and} \quad Ran(f)=[-1,1]$$

g
$$Dom(g)=(-\infty,-1) \cup (-1,1) \cup (1,\infty) \quad \text{and} \quad Ran(g)=(-\infty,-1) \cup (1,\infty)$$

$$f \circ g$$
$$Dom(f \circ g)=(-\infty,-1) \cup (-1,1) \cup (1,\infty) \quad \text{and} \quad Ran(f \circ g)=(-1,1) $$

$$ g \circ f$$
$$Dom( g \circ f)= \mathbb{R}  \quad \text{and} \quad Ran(g \circ f)=(-\infty,-1)$$

### Exercise 1.19

Which of the following real functions are injective, and which are surjective:

(i) $$f_{1}(x) = x^{3} - x + 2$$

prove by cases

when $$x = (-1,1) f(x)=2$$
two values of x are mapped to 2, so surjective.

(ii) $$f_{2}(x) = x^{3} + x + 2$$
srictly increasing, therefore, it is injective.

(iii) $$f_{3}(x)=\frac{x^{2}+1}{x^{2}-1}$$
$$x=-1$$ and $$x=1$$ are not mapped to anything. 

(iv) $$f_{4}(x)=
\begin{cases}
-x^{2} & \text{x≤0} \\
2x+3 & \text{x>0}
\end{cases}$$

### Exercise 1.21 
Suppose $$f:X \to Y$$ and $$g : Y \to Z$$.

(i) Show that if f and g are surjective, so is $$g \circ  f$$.

Proof

Given any $$z \in  \mathbb{Z}$$, consider $$z = (g \circ f)(x)$$
$$\implies z = g(f(x)) $$ since g is onto $$ \implies f(x) \in Y$$
So, there are some $$y \in Y$$ such that $$y=f(x)$$ can do this for any such y. Because f "onto" so $$\implies x \in X$$


(ii) Show that if $$g \circ f$$ is surjective, then one of the two functions f, g must be surjective (which one?). Give an example to show that the other function need not be surjective.

Suppose $$g \circ f$$ is onto, suppose g is not onto. 

So there are some $$z \in Z$$ such that $$g(y)≠ z$$ for all $$y \in Y$$. With $$g \circ f$$ "onto" so for all $$z \in Z$$, find $$x \in X$$ such that $$(g \circ f)(x)=z$$, so $$z=g(f(x))$$ 
But f is a function, so $$f(x) \in Y$$ so there are some $$y \in Y$$ such that $$f(x)=y \implies g(f(x))≠z$$ contradicts with the fact that is onto. 

$$g:\mathbb{R} \to [0,\infty) \quad g(x)=x^{2} \text{is onto}$$
$$f:[0,\infty) \to \mathbb{R} \quad f(x)=\sqrt{x} \text{not onto}$$
$$(g \circ f)(x)=x:[0,\infty) \to [0,\infty)$$ onto. Q.E.D

### Exercise 1.22 

For what $$n \in N$$ is the function $$f(x) = x^{n}$$ an injection.
2(k+1)


### Exercise 1.23

Let $$f : R \to R$$ be a polynomial of degree $$n \in \mathbb{N}$$. For what values of n must f be a surjection, and for what values is it not a surjection?
x^{2}=-1 has no solution. So when n is even, f is not surjective. 
when n is odd, $$\forall y \in f(x),\exists x \in X \text{satisifies} y=x^{2}$$

[chegg reference](http://www.chegg.com/homework-help/questions-and-answers/let-f-polynomial-degree-n--values-n-must-f-surjection-values-surjection-q10232679)

### Exercise 1.24

Write down a bijection from $$(X \times Y ) \times Z$$ to $$X \times (Y \times Z)$$. Prove that it is one-to-one and onto.

Prove $$(X \times Y ) \times Z \iff X \times (Y \times Z)$$

We need to show that $$(X \times Y ) \times Z \subset X \times (Y \times Z)$$

Let $$ x \in X,y \in Y,z \in Z$$

Then (a)

$$((x,y),z) \to (x,y,z) \to (x,(y,z))$$

Therefore it is one to one. 

Also (b)

We need to show that $$ X \times (Y \times Z) \subset (X \times Y ) \times Z$$

$$(x,(y,z)) \to (x,y,z) \to ((x,y),z)$$

Therefore it is onto

According to (a) and (b), $$(X \times Y ) \times Z$$ to $$X \times (Y \times Z)$$ are bijective




### Exercise 1.25

Let X be a set with n elements. How many permutations of X are there?

A permutation defines as $$f: X \iff X$$, therefore n permutations of X there.


### Exercise 1.26

Let $$f : R \to R$$ be a function built using only natural numbers and addition, multiplication and exponentiation (for instance f could be defined as x \mapto (x + 3)^{x^{2}} ). What can you say about f[N]? What can you say if we include subtraction or division?

Subtraction can not be applied to $$f[\mathbb{N}]$$, because it would produce answers that are negative. 

division can not be applied to $$f[\mathbb{N}]$$, because the denominator can not be 0. 

$$f[\mathbb{N}]\in \mathbb{N^{+}}$$ 


### Exercise 1.29. 

For each of the following real functions, find an
interval X that contains more than one point and such that the function is a bijection from X to f[X]. Find a formula for the inverse function.

(i) $$f_{1}(x) = x^{2} + 5x + 6$$

$$\frac{dy}{dx} = 0 \\
2x+5 = 0 \\
x= - \frac{5}{2}$$

The interval is $$[\frac{5}{2},\infty)$$

The inverse function is 

$$f(x)=y=x^{2} + 5x + 6 \\
f^{-1}(y)=x=y^{2}+5y+6 \\
x=(y^{2}+5y+(\frac{5}{2})^{2})-(\frac{5}{2})^{2}+6 \\
x+\frac{25-24}{4}= (y+\frac{5}{2})^{2}\\
\ \pm \sqrt{\frac{4x+1}{4}}=y+\frac{5}{2}\\
\ \pm \sqrt{\frac{4x+1}{4}}-\frac{5}{2}=y\\
\frac{1}{2}(-5 \pm \sqrt{4x+1})
$$

(ii) $$f_{2}(x) = x^{3} -x + 2$$


### Exercise 1.28 

Let f(x) = tan(x). Use set notation to define the domain and range of f. What is $$f^{1}(1)$$? What is $$f^{1}[\mathbb{R^{+}}]$$?

let $$f(x)= tan(x)$$ then $$f(x)=\frac{sin(x)}{cos(x)}$$

we know $$cos(x)$$ can not be 0. Therefore, $$Dom(f)=\mathbb{R} \setminus \left\{(2n+1)\frac{\pi}{2},n \in \mathbb{Z}\right\}$$

$$Ran(f)=(-\infty,\infty)$$

$$f^{-1}(1)=ArcTan(1)=(n \pi + \frac{\pi}{4},n \in \mathbb{Z})$$
(tangent is postive in both the first and the third quadrants)

$$f^{1}[\mathbb{R^{+}}]$$ implies $$(f(x)=\mathbb{R^{+}}$$

Therefore, all intervals of X that would produce $$\mathbb{R^{+}$$

That is $$x \in\left(2n \pi,2n \pi+ \frac{\pi}{2}\right) \cup \left((2n+1)\pi,(2n+1)\pi+\frac{\pi}{2}\right),n \in \mathbb{Z}$$

[]({{root_url | prepend: site.baseurl}}/asset/MathFoundation/homework/HW-1/hw-01.png)

[reference](http://www.chegg.com/homework-help/questions-and-answers/let-f-x-tan-x--use-set-notation-de-ne-domain-range-f-f-1-1-f-1-q10240821)

Exercise 1.33
Let $$X_{n} = \{n + 1, n + 2, . . . , 2n\}$$ for each $$n \in \mathbb{N^{+}}$$ as in Example 1.43. What are

(iii)$$$$


### Exercise1.35

Let $$f:X\toY$$,and assume that $$U_{a}\subseteq X$$ for every$$a \inA$$,and$$ V_{\beta} \subseteq Y$$ for every $$\beta \in B$$.Prove:



(iii)
$$f^{-1}\left(\bigcup_{\beta \in B}V_{\beta}\right)=\bigcup_{\beta \in B}f^{-1}(V_{\beta})$$

