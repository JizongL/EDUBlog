---
layout: post
title:  Transition to Higher Mathematics Exercise 6
date:   2017-06-03 22:34:05
categories: Math 
tags: exercise homework cardinality infinit_set
---
* content
{: toc}


### Exercise 6.1

Let $$f : X \rightarrowtail Y$$ and $$g : Y \rightarrowtail Z$$. Prove that 

$$g \circ f:X \rightarrowtail Z$$ 
is a bijection

[Yahoo answer](https://answers.yahoo.com/question/index?qid=20101117050746AAXR2qr)


Let's first prove that g o f is an injection:
That is, we need to prove that for x1, x2 in X, if g o f(x1) = g o f(x2) then x1 = x2
Suppose g o f(x1) = g o f(x2)
then g(f(x1)) = g(f(x2))
Then f(x1) = f(x2) because g is injective
Then x1 = x2 because f is injective

Now we prove that it is surjective, that is, want to prove, for every z in Z, there exists an x in X such that
g o f(x) = z.

We know that:

(1) for every y in Y, there exists a z in Z such that g(y) = z (since g is surjective)
(2) for every x in X, there exists a y in Y such that f(x) = y (since f is surjective)

In particular, property (1) is true for any y in Y, thus if holds for y = f(x) so g(f(x)) = z for every z in Z.
We have established that for every z in Z, there exists an x in X such that g o f(x) = z 


### Exercise 6.2. 
Prove that equinumerousity is an equivalence relation. 

proof
(a)reflexive
$$\lvert X \lvert = \lvert X \lvert$$

(2)symmetric
let $$\lvert X \lvert = \lvert Y \lvert \implies  \exists f:X \to Y$$ so $$f^{-1}:Y \to X$$ as bijection so $$\lvert Y \lvert = \lvert X \lvert$$

(3)transitive
let $$\lvert X \lvert = \lvert Y \lvert$$,$$\lvert Y \lvert = \lvert Z \lvert$$ 
Then $$\exists$$ bijection $$f:X \to Y,g:y \to Z$$
$$g \circ f: X \to Z$$ but $$f \circ f$$ is composit function and therefore it is also bijection,so $$g \circ f$$ is bijection. 



Exercise 6.3
Prove that the relation on sets   $$\preceq$$ is reflexive and transitive.

Let $$X$$ and $$Y$$ besets. We write $$X \preceq Y$$ if there is an injection.

$$f : X \preceq Y$$

Exercise 6.5. 
Let n 2 N. Prove that
|P(pnq)| = 2n.

For the base case, suppose $$\lvert X \lvert = 0.$$Clearly, $$X=\emptyset$$. But the empty set is the only subset of itself, so $$\lvert \mathcal{P}\lvert = 1 = 2^0$$

Now the induction step. Suppose $$\lvert X \lvert=n$$; by the induction hypothesis, we know that $$\lvert \mathcal{P} \lvert = 2^n$$. Let $$Y$$ be a set with $$n+1$$ elements, namely $$Y = X \cup \{a\}$$. There are two possible sets of Y, one includes a and other doesn't. The first are exactly the subsets of $$X$$, and there are $$2^n$$ of them. The latter are sets of the form $$Z \cup \{a\}$$, where $$Z \in \mathcal{P}(x)$$; Since there are $$2^n$$ subsets of $$Y$$ of which a is an element. Therefore $$\lvert \mathcal{P}(Y)\lvert=2^n + 2^n=2^{2+1}$$

### Exercise 6.8. 
Let $$X$$ and $$Y$$ be finite sets. Prove that
$$\lvert X^Y \lvert =\lvert X\lvert \lvert Y \lvert$$.

For any sets $$X$$ and $Y$, the set of all functions $$f : X \to Y$$ is denoted $$ Y^X.$$

Let $X$ and $Y$ be finite sets — say, $$|X| = n$$ and $$|Y | = m$$. Without loss of
generality, you could let $$X = \{1, \ldots , n\}$$ and $$Y = \{1, \ldots , m\}$$.

Consider  $$ 1_X $$ ( 1 belonging to $$X$$ ), it has $$m$$ options or choices in $$Y$$ to map in $$Y$$ as a function.

Similarly, for every element in $$X$$ has $$m$$ options in $Y$ to map into.

So for the whole set $$X$$, there are exactly $$m \times m \times m \times m\times\cdots\times m$$ ($$n$$ times) choices to map as a function into $$Y$$.

Therefore, $$|Y^X |= m^n $$

Hence the total number of function from  $$f : X \to Y$ is $ m^n = |Y|^{|X|} $$.

QED

### Exercise 6.11 
Prove that if $$X \subseteq Y$$ and X is uncountable, then $$Y$$ is uncountable.

Suppose, on the contrary, that there exist sets A,B such that A ⊆ B, and A is uncountable but B is countable. Since B is countable, statement (1) above implies every subset of B is countable and, in particular A is countable. However, this contradicts our assumption that A is uncountable.

### Exercise 6.12
Let X be an uncountable set, Y be a countable set and $$f : X \to Y$$ . Prove that some element of Y has an uncountable preimage.

Let x be an uncountable set. And y be a countable set. 
Let's define a map $$f:x \to y$$
To prove: Some elements of y has an uncountable preimages. That is we have to prove there exists $$y \in Y$$ such that

$$A = \{x \in X:f(x) = y\}$$ is uncountable. 
Let $$x = \{0,1,2,...\}$$ and $$y = \{0\}$$
Then if f fails to be injective, but the element of y has an uncountable preimage in x. So $$y = 0 \in y$$ can be written as $$f(0)=0,f(1)=0$$
so $$A = \{x \in x: f(x)=y\}$$ is defined 
Q.E.D

### Exercise 6.14 
Define an explicit bijection from $$\mathbb{N}$$ to $$\mathbb{Z}$$.
$$f(x) = 
\begin{cases} 
\frac{x}{2} & n=2k \\ 
\frac{-(x+1)}{2} & n=2k+1
\end{cases}$$

prove one to one
suppose f(x)=f(y). then they both must have the same sign. Therefore ether $$f(x)=\frac{x}{2}$$ and $$f(y)=\frac{y}{2}$$, or $$f(x)=\frac{-(x+1)}{2}$$ and $$f(y)=\frac{-(x+1)}{2}$$. In the both case $$f(x)=f(y) \implies x=y$$. so f is infective. 

prove onto
If $$y \in \mathbb{Z}$$ is non-negative, then $$f(2y)=y$$.Therefore, y has pre-image. If y is negative, then $$f(-(2y+1))=y$$. Therefore, y has a pre-image. Thus every $$y \in \mathbb{Z}$$ has a preimage, so f is onto. Since f is a bijection, this tells us $$\mathbb{N}$$ and $$\mathbb{Z}$$ have the same size. 






### Extra problems
Let E and O denote the set of even an dodd integers, respectively. Do they have the same cardinality?
Show there is an bijection
* Solution*: Yes, since the funciton $$f:E \to O,x \mapsto x+1$$ is a bijection

1 to 1
Let $$f:E \to O,x \mapsto x+1$$ and suppose there is $$x,y \in \mathbb{Z}$$ such that $$f(x)=f(y) \implies x+1=y+1 and x=y$$

onto
$$\foralls f(x) \in Y \ \exists x \in X \lvert f:$$



proof
Let $$x \in \mathbb{Z_{odd}}, then x=2n+1,n=0,1,...,n$$, then $$(2n+1)+1 \in \mathbb{Z_{even}}$$
base case
$$p(1) \implies x = 1, and 1 \mapto 1+1=2$$ so it is true.
Inductive step
$$let k \in \mathbb{Z}$$ and $$2k+1$$ is odd, then $$(2k+1) \mapto 2k+2$$ which is even. $$Implies 2(k+1)+1 \mapto 2(k+1)+1+1 \implies t=k+1,2t+1 \maps to 2t+2=2(t+1)=2m,m=t+1$$
By induction, 


