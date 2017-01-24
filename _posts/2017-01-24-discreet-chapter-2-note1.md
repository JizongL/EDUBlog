---
layout: post
title:  discrete chapter 2 note
date:   2017-01-24 08:28:05
categories: Discrete
tags: Nested_Quantifier
---

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

