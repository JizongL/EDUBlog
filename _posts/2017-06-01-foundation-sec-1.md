---
layout: post
title:  Foundation section 1 1.1 and 1.2
date:   2017-06-01 10:05:05
categories: Math
tags: foundation 
---
* content
{: toc}

## Section 1.1: "and" "or"
Statements are declarative which are either true or false







mathematical statements are sentences about mathematics which are true or false. 


Which are statments?

1: All prime numbers, except 2, are all odd yes

2: 3<2 yes

3: Go home no

4: $$\frac{df}{dx}$$ no

### Use "and" "or" to

connect mathematical statements.

Let p,Q be mathematical statements

P and Q when both P and Q are true. 

P or Q is true, when either or both is true. (3 possible outcome)

example: 

|P|Q| combination|True or False|
|:---:|:---:|:---:|
|P -> 3<2 | Q = Go Home | Q is not a statement | false  |
|P -> 2+2=4|Q ->2+3=5|$$P \land Q \ \text{and} P \lor Q $$ |   True |
|p->$$\frac{d}{dx}(x^{n})=nx^{n-1}$$n≠0| Q-> $$ \int xdx=x^{5}$$|$$P \lor Q$$|True|


## Sec 1.2 Sets
-Intuitively a mathematical set is a collection of mathematical objects with certain property. 

-Need to be careful, because the above statement is too general(vague)

- We are going to build set out of known building blocks. (Such as the numbers) and build up the theory.

### Definition:
If X is a set and x is an object of X, then we say x is an element or member of X. And we write $$x\in X$$

We write $$x\not\in X$$ if x is not a element of X.

### example

(1) X=$$\{1,2,5,7\}$$
$$2 \in X \ 3\not\in X$$

(2) X = $$\{0,1,2,3...\}$$
$$10^{100}\in X \ -3\not\in X$$

### Notation
$$\mathbb{N} =\{0,1,2,3,...\}$$ - set of all natural numbers.

some textbooks start 0, some start at 1.

so we use $$ \mathbb{N}^{+} \{1,2,3,...\}$$ denotes starting at 1

$$\mathbb{Z}=\{...,-3,-2,-1,0,1,2,3,...\}$$ - set of all integers.

$$\mathbb{Q}\{\frac{p}{q} \text{such that p & q are integers, and q≠0}\}$$ -set of all rational numbers. 

$$\mathbb{R}$$ -set of all real numbers. 

$$\mathbb{C}=\{a+bi \text{:a,b$\in \mathbb{R},i^{2}=-1$}\}$$-set of all complex numbers. 

### Definition
A number x is postive if x > 0, x nonegative if x≥0. 

Notation: if X is a set of real numbers. Then $$X^{+}$$ denotes the positive real number of that set X.

Let $$n\in \mathbb{N}$$ $$\left \lceil{5}\right \rceil =\{0,1,2,3,4\}$$



-Let X be a set of p(x) be a condition as property of X(something like $$x>0$$ or $$x^{2}>1$$ or $$\int^{b}_{a}f(x)dx>0$$)


Then $$Y = \{x\in X: p(x) \ true\}$$ is the set of elements in X which satisifies P.

X is called domain of the variables x.
-often times write $$Y=\{x\in X:P(x)\}$$

(1) $$X=\{0,1,4,9\}$$ 
X=$$\{x\in \mathbb{N} \ \text{for some $y \in \mathbb{N} \ x=y^{2}$}\}$$


(2) $$X=\{2,4,6,8,...,96,98\}$$
$$X=\{x\in \mathbb{N}:x<100,\text{there is $n\in\mathbb{N^{+}}$such that x=2n}\}$$


### Intervals:

There are sets in $$\mathbb{R}$$; some are bounded and others are unbounded
(a,b)=$$\{x \in \mathbb{R}: a< x < b \}$$

[a,b]=$$\{x \in \mathbb{R}: a≤ x ≤ b\}$$

(a,b]=$$\{x \in \mathbb{R}: a < x ≤ b\}$$

[a,b)=$$\{x \in \mathbb{R}: a≤ x < b\}$$

($$-\infty,b$$)=$$\{x \in \mathbb{R}:  x < b\}$$

($$-\infty,b$$]=$$\{x \in \mathbb{R}: x ≤ b\}$$

($$a,-\infty$$)=$$\{x \in \mathbb{R}: a < x \}$$

[$$a,-\infty$$)=$$\{x \in \mathbb{R}: a ≤ x\} $$

and $$\mathbb{R}=\{-\infty,\infty\}$$ 
 
Interval is called closed if it contains all its end points, it is called open if it contains none of its end points. 

example:

study $$X=\{x:(x^{2}-2)(x-1)(x^{2}+1)=0\}$$

if(1) $$x\in\mathbb{N}$$

$$x = \{1\}$$

if(2) $$x\in\mathbb{R}$$

$$x=\{1,\sqrt{2},-\sqrt{2}\}$$

if(3) $$x\in\mathbb{C}$$

$$x=\{1,\sqrt{2},-\sqrt{2},i,-i\}$$


### set equality

Definition: 

Let X,Y be sets, then X=Y if every element of X is also an element of Y, every element of Y is also an element of X.

ex: Determine if equal:

(1) X =$$\{ \text{Mark Twin, samuel Clemen} \}$$

(1) Y =$$\{ \text{Mark Twin} \}$$

(2) $$X_{1}= \{1,2\} \\
X_{2}= \{2,1\}\\
 X_{3}= \{1,2,1\} \\
  X_{4}= \{n \in \mathbb{N}\lvert 0< n < 3\} \\
  X_{5}=\{n \in \mathbb{N}: \text{There are} \ x,y,z \in \mathbb{N^{+}}\text{such that} x^{n}+y^{n}=z^{n}\}$$ 


note: $$X_{5}$$ is [Fermat's last theorem](https://en.wikipedia.org/wiki/Fermat%27s_Last_Theorem)

$$X_{1}=X_{2}=X_{3}=X_{4}=X_{5}$$

### Relating sets:

Definition: let X,Y be sets, X is a subset of Y, if every element of X is an element of Y, denoted as $$X \subseteq Y$$
-sometimes it is called Y is a superset of X denoted $$Y \supset X$$

-some sharing X=Y are denoted to just $$X\subseteq Y$$ and $$Y \subset X$$

Definition:
Let X,Y sets X is a proper subset of Y if $$X \subseteq Y$$ and X≠Y.
write $$X\subsetneq Y,X $$

Definition: The empty set is set with no elements, denoted as $$\emptyset$$

for any set X,$$\emptyset \subseteq X$$

### example: 

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


Definition: 

Let X, Y be sets, then the union of X and Y denoted $$X \cup Y =\{x: x\in X \ \text{or} \ x\in Y\}$$

The intersection of X and Y is denoted as $$X \cap Y = \{x: x\in X \text{and} x \in Y\}$$

The set difference of X and Y, denoted X \ Y = $$\{x \in X: x \not\in Y\}$$

Definition:
Let X and Y be sets, then X and Y are disjoint if $$X \cap Y = \emptyset$$

Let X,U be sets, $$U \subseteq X$$, then the complement of U, $$U^{c}=$$ X \ U

consider
$$X \cap X \cup Y $$

(1) $$(X \cap X) \cup Y = X \cup Y$$

(2) $$X \cap (X \cup Y) = X $$

Note: the above means that associated law fails for sets. 



