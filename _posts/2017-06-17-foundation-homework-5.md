---
layout: post
title:  Transition to Higher Mathematics Exercise 5
date:   2017-06-24 22:34:05
categories: Math 
tags: exercise homework limit 
---
* content
{: toc}


### Exercise 5.2 

Prove the triangle inequality, and the related assertion that $$\lvert c \lvert + \lvert d \lvert ≤ \lvert c+d \lvert$$.


[reference](http://2000clicks.com/MathHelp/BasicArithmeticTriangleInequality.aspx)


### Exercise 5.3 

For $$n \in \mathbb{N^+}$$, $$a_i \in \mathbb{R} (1 ≤ i ≤ n)$$, prove that
$$\lvert \sum_{i=1}^{n} a_i \lvert ≤ \sum_{i=1}^n \lvert a_i \lvert $$

### Exercise 5.6 
Give an example of two functions f and g that don’t have limits at a point a but such that $$f + g$$ does. For the same pair of functions, can $$f-g$$ also have a limit at a?

Let $$f(x) = 
\begin{cases}
x+1 & x≥0  \\
x-1 & x<0
\end{cases}
$$

Let $$g(x) = 
\begin{cases}
x-1 & x≥0  \\
x+1 & x<0
\end{cases}
$$


Both f and g have jump discontinuities at $$x=0$$ (and so their limits as x approaches zero do not exist) but their sum is $$(f+g)(x) = f(x)+g(x) = 2x$$ for all $x$ which is continuous at $x = 0$, and so of course the limit as x approaches 0 exists and is 0. for the same pair of function 

$$f(x)-g(x)=
\begin{cases}
2 & x>=0 \\
-2 & x<0$$ 

hence the limit does not exist at 0

$$f(x) = \frac{1}{x}, g(x) = \frac{-1}{x}$$

Both functions diverge when x goes to 0, but f(x) + g(x) = 0, which is a constant. Obviously, the limit of this is 0 no matter what we take x to. for same pair of function f(x)-g(x)=2/x for which limit does not exist at 0. 

### Exercise 5.10 

Prove that the Heaviside function has both left and right-hand limits at 0.


### Exercise 5.14

Prove that $$lim_{x \to 0} sin\frac{(x)}{x} = 1$$.


### Exercise 5.16. 
Prove that the function $$f(x) = x$$ is continuous everywhere on $$\mathbb{R}$$.

let $$x=a$$ and $$\forall \epsilon,\exists \delta$$, such that $$\lvert x-a\lvert < \epsilon$$ and $$\lvert x-a\lvert < \delta$$ so $$\delta = \epsilon$$

let $$a \in \mathbb{R}$$ and a is abitrary. then $$\forall \epsilon > 0$$, pick $$\delta = \epsilon$$ such that if $$\lvert x-a\lvert < \delta$$ 




Exercise 5.21. 

Prove that a real-valued function f on an open interval *I* is continuous at any point where its derivative exists, i.e.
where
$$lim_{x \to a} \frac{f(x)-f(a)}{x-a}$$

exists. What is the converse of this assertion? Prove that the converse is not true.

A real value f for I is continuous on an open interval if given $$\epsilon > 0,\exists \delta >0$$. $$\lvert x -a \lvert < \delta$$. $$\forall a \in I$$. Whenever $$\lvert f(x)-f(0) \lvert < \epsilon $$. It can be written as $$lim_{x \to a} f(x)=f(a)$$
since f is contiuous at $$x=a$$. We have $$lim_{x \to a} f(x)=f(a)$$. Now, $$lim_{x \to a} [f(x)-f(a)]=lim_{x \to a} \frac{[f(x)-f(a)]}{(x-a)}(x-a)$$. Now, at $$x=a$$, $$lim_{x \to a} f(x)=f(a)$$

So, looking at RHS, $$lim_{x \to a} \frac{[f(x)-f(a)]}{(x-a)}(x-a)$$ exists whenever $$x=a$$, i.e derivative exists whenever f is continuous at $$x=a$$

Converse is not true: 
Example: Define $$f:\mathbb{R} \to \mathbb{R}$$ by


