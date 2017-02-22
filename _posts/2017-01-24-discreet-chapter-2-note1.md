---
layout: post
title:  discrete chapter 2 note
date:   2017-01-24 08:28:05
categories: Discrete
tags: Nested_Quantifier
---
* content
{:toc}

Subsets

$$A \subset B$$ iff every element of A is also an element of B.

$$\forall x(x \in A \in x \in B)$$  for every set S






$$A=\{1,2,5,6\}$$						
$$A=\{1,2,3,4,5\}$$


Proper subset 

$$A \subset B$$
$$A \subseteq B$$
but A ≠ B

P(S) powerset of S

A set of all the subsets of S


{% highlight liquid%}
{% raw %}
P({0,1,2}) = {{}, {0}, {1}, {2}, {0, 1}, {0, 2}, {1, 2}, {0, 1, 2}}
{% endraw %}
{% endhighlight %}

Cartesian product
$$A X B =\{(a,b) \vert a \in A \ and \ b\in B \}$$

$$A = \{1,2\}$$
$$B = \{a,b,c\}$$

Truth set
set of $$x \in \ Ddomain \ D$$
$$\{x \in D \vert P(x)\}$$


$$P(x)= \ " \ x^{2}<3 \ "$$

$$\{1,0,1\}$$



2.2 Set Operations

$$A \land B = \{x \vert x \in A \land x \in B\}$$


Prove 

$$\overline{A \land B} = \overline{A} \lor \overline{B}$$

Let $$x \in \overline{A \land B}$$, therefore $$x \notin A \land B$$

Now we have $$x \notin A \ or \ x \notin B $$

case 1: $$x \notin A, x \in \overline{A} \ x \ \in \overline{A} \lor \overline{B}$$

case 2: $$x \notin B, x \in \overline{B} \ x \ \in \overline{A} \lor \overline{B}$$

Therefore $$\overline{A \land B} ≤ \overline{A} \lor overline{B} $$

Let $$x \in \overline{A} \lor \overline{B}$$ Then $$x \in \overline{A} \ or \ x \in \overline{B}$$

case 1: $$x\in \overline{A} \ , \ x\notin A \ x \notin A \land B \ . \ x \in \overline{A \land B}$$

case 2: $$x\in \overline{B} \ , \ x\notin B \ x \notin A \land B \ . \ x \in \overline{A \land B}$$

In either case $$x \in \overline{A \land B}$$

$$\overline{A} \lor \overline{B} ≤ \overline{A \land B}$$

## using set notation 

$$\overline{A \land B} = \overline{A} \lor \overline{B}$$


## Homework not to be turned in. 

1.7

6,17,38

1.8

1,3,11,23,30

## Function 

Let A, B be non empty sets, A function f from A to B is an assingment of exactly one element of B to each element of A. 

$$f: A \to B$$

$$(f_{1}+f_{2})(x) = f_{1}(x)+f_{2}(x)$$
$$(f_{1}f_{2})(x) = f_{1}(x)f_{2}(x)$$

f is one to one 

f(x)=x+2

$$g(x)=x^{2}$$

f:

## 2.4 sequences

Geometric progression

$$ a, ar, ar^{2}, ar^{3}, ..., ar^{n}$$

Initial term a

common ratio r

$$\{b_{n}\}$$ $$b_{n} = (-1)^{n}$$ a=1, r = -1

Arithemetic progression 

a, a + d, a + 2d, a + nd

Initial term: a
common difference: d

$$\{S_n\} \ s_{n} = 1+4n$$
$$\{S_n\} \ s_{n} = 7 - 3n $$

## Summation notation

$$\sum_{j = m}^n a_{j} = a + a_{m},...+ a_{n}$$

A recurrence relation for the sequence $$\{a{n}\}$$ is an equation that expresses an in terms of one or more of the previous terms of the sequence, namely, $$a_{0}, a_{1}, . . . , a_{n−1}$$, for all integers n with $$n ≥ n_{0}$$, where $$n_{0}$$ is a nonnegative integer. A sequence is called a solution of a recurrence relation if its terms satisfy the recurrence relation. (A recurrence relation is said to recursively define a sequence. 


Homework

2.4
2,16,23,31,34
3.1 
2,9,22,41,42
3.2
2,7,30




