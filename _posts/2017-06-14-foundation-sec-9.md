---
layout: post
title:  Foundation section 9 3.3 3.5
date:   2017-06-14 08:05:05
categories: Math
tags: foundation modulo congruence relation 
---
* content
{: toc}


Loosely speaking, a formula is a mathematical expression with variables.







each variable, $$x_{i}$$, appearing in a formula is a universe, $$U_{i}$$, from which that variable may be substituted.

### Example
$$x^{2}+y^{2}=z^{2}$$ open formula
$$x^{2}+y^{2}=z^{2}$$ for $$x,y,z \in \mathbb{N}$$ open formula
$$x=3,y=4,z=5$$ true mathematical element
$$x=1,y=1,z=2$$ false statement. 


Correctly specify the circle formula. 

$$x^{2}+y^{2}=1 \quad (x,y) \in \mathbb{R} $$ 

$$S^{1}=\{(x,y) \in \mathbb{R^{2}}: x^{2}+y^{2}=1\}$$


in general formula in n variables, we may use the notation $$P(x_{1},...,x_{n})$$. For $$1 ≤ i ≤ n$$, let $$U_{i}$$ be the universe of the variable $$x_{i}$$, and $$a_{i} \in U_{i}$$. The statement that results from the substitution of $$a_{i}$$ for $$x_{i}$$, $$1 ≤ i ≤ n$$, is written $$P(a_{1},...,a_{n})$$.

can think of $$x_{1},...,x_{n}$$ as a single veriable of universe $$U= \Pi_{i=1}^{n} U_{i}$$

Formulas can fulfill many purposes in mathematics:

(1) Characterize relationships between quantities 

(2) Define computations

(3) Define sets

(4) Define functions.

### Characteristic set $$\chi_{P}$$

Let $$P (x)$$ be a formula, and $$U$$ the universe of the variable x. The subset of $$U$$ for which the formula P holds is written $$\chi_{P}$$ . The set $$\chi_{P}$$ is called the characteristic set of $$P(x)$$.

so $$\chi_{ \lnot P}=U \setminus \chi_{P}$$

### Example
$$\chi_{[a,b]\ (x)}=
\begin{cases}
1 & x \in [a,b] \\ 
0 & x \not\in [a,b] \\
\end{cases}
$$

Let $$P(x),Q(x)$$ be formula, U be universe of x. Let $$R(x)=P(x) \land Q(x)$$

Then

$$\chi_R = \{x \in U: T(R)=1\}$$

$$T(R)=T(P \land Q)=T(P)T(Q)$$

$$T(R)=1 \iff T(P)=T(Q)=1$$

if $$x \in \chi_{R} \implies x \in \chi_{P},x \in \chi_{Q} \implies x \in \chi_{P} \land \chi_{Q}$$

$$\chi_{P \land Q} = \chi_{P} \land \chi_{Q}$$

$$\chi_{P \lor Q} = \chi_{P} \lor \chi_{Q}$$

### 3.4 Quantifiers
Let $p(x)$ be a formula in one variable if $$a \in U$$, get a statement $$P(a)$$

suppose we care about $$P(X)$$ for $$X \subseteq U$$

and we want to know if $$P(x)$$ is true for all $$x \in X$$ or some $$x \in X$$

want to quantify these in some way

### Definition Universal quantifier 
$$(\forall x \in X) P(x)$$ Let $$P(x)$$ be a formula in one variable, with universe U. 

Let $$X \subset U$$. Let $$Q$$ be the statement
$$(\forall x \in X)P(x)$$

Then Q is true if for every $$a \in X$$,$$P(a)$$ is true. Otherwise Q is false. 

$$\forall x$$ stand for, for every x is called universal quantifier. 

The notation 

$$(\forall x \in X)P(x)$$

is a shorthand for 

$$(\forall x)([x \in X] \implies [P(x)])$$

is read "for all x in X,P(x)"

$$(\forall x \in X)P(x) \iff X \subset \chi_{p}$$

### Definition Existential quantifier
$$(\exists x \in X)P(x)$$ Let $$P(x)$$ be a formula in one variable with universe U. Let $$X \subset U, X ≠ \emptyset$$. Let Q be the statment
$$(\exists x \in X)P(x)$$
Then Q is true if there exists $$a \in X$$ for which $$P(a)$$ is true. Otherwise, Q is false. 

$$\exists x$$ stands for, there exists x and is called existential quantifier.

The notation $$(\exists x \in X)P(x)$$ is shorthand for $$\exists x$$ with $$(x \in X \land P(x))$$

### Multiple Quantifier
let $$P(x,...,x_{n})$$ be a formula with $$n≥2$$ variables. 

then $$(\forall x_{1} P(x_{1},..,x_{n}))$$ is a formula with $$n-1$$ variable. so is $$(\exists x_{1})P(x_{1},...,x_{n})$$

### Example
let $$P()x,x_{1},L,\epsilon,\delta):(0< \lvert x-x_{0} \lvert < \delta) \implies (\lvert Sinx-L \lvert < \epsilon)$$ has 5 variables. 

(1) $$(\forall x_{0})(\exists L)(\forall \epsilon)P(x,x_{0},L,\epsilon,\delta)$$ has 2 variables

(2) $$(\forall x_{0})(\exists L)P(x,x_{0},L,\epsilon,\delta)$$ has 3 variables

Definition

In the formula P(x), x is called an open variable in two formulas $$\forall xP(x),(\exists x)P(x),(\forall x)P(x,y),(\exists x)P(x,y)$$

x is a bound or quantified variable and y is variable. 

example 

$$1≤ x≤ 2, x \in \mathbb{R}$$
note: bounded ≠ bound

bounded is used a lot in advanced calculus. 

$$f: X \subset \mathbb{R} \to \mathbb{R}$$ and $$a \in X$$. then $$lim_{x \to a} f(x)=L$$ provided
$$\forall \epsilon > 0, \exists \delta > 0$$ such that if $$0 < \lvert x - a \lvert < \delta$$ then $$\lvert f(x)-L \lvert < \epsilon$$


### Quantifier Order

order of quantifier is very important. 

Notation: We use $$(\mathcal{Q} x)P(x)$$ to generically represent $$(\forall x)P(x)$$ or $$(\exists x)P(x)$$

let $$\mathcal{Q}_{1},\mathcal{Q}_{2},...,\mathcal{Q}_{n}$$ be logical quantifier and $$P(x_{1},...,x_{n})$$ a formula with open variable $$x_{1},...,x_{n}$$

then $$(\mathcal{Q}_{1},x_{1})(\mathcal{Q}_{2},x_{2}),...(\mathcal{Q}_{n},x_{n})P(x_{1},...,x_{n})$$ is a statement. 

### Example
Let $$S:(\forall x \in X)(\exists y \in Y)P(x,y)$$
notice S is true if $$\forall a \in X (\exists y \in Y)P(a,y)$$, which means if for all $$a \in X$$, there is an element in Y, let's call it $$b_{a}$$ so that $$P(a,b_{a})$$ is true. 

### Example
$$(\forall x \in \mathbb{R})(\exists y \in \mathbb{R})(y = x^{2})$$ 




