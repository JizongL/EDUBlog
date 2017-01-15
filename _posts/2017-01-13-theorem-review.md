---
layout: post
title:  Theorems and Definitions review
date:   2017-01-13 08:26:00
categories: Math
tags: proof induction review theorem discrete_math
---

* content
{: toc}



## Propositional Logics
**DEFINITION 1**
Let p be a proposition. The negation of p, denoted by ¬p (also denoted by p), is the statement 

“It is not the case that p.”

The proposition ¬p is read “not p.” The truth value of the negation of p, ¬p, is the opposite of the truth value of p.

**DEFINITION 2**
Let p and q be propositions. The conjunction of p and q, denoted by p ∧ q, is the proposition “p and q.” The conjunction p ∧ q is true when both p and q are true and is false otherwise.

**DEFINITION 3**
Let p and q be propositions. The disjunction of p and q, denoted by p ∨ q, is the proposition “p or q.” The disjunction p ∨ q is false when both p and q are false and is true otherwise.

**DEFINITION 4**
Let p and q be propositions. The exclusive or of p and q, denoted by $$p ⊕ q$$, is the proposition that is true when exactly one of p and q is true and is false otherwise.

**DEFINITION 5**
Let p and q be propositions. The conditional statement p → q is the proposition “if p, then q.” The conditional statement p → q is false when p is true and q is false, and true otherwise. In the conditional statement p → q, p is called the hypothesis (or antecedent or premise) and q is called the conclusion (or consequence).


“if p, then q”
“if p, q”
“p is sufficient for q”
“q if p”
“q when p”
“a necessary condition for p is q” 
“q unless ¬p”
“p implies q”
“p only if q”
“a sufficient condition for q is p” 
“q whenever p”
“q is necessary for p”
“q follows from p”

To remember that “p only if q” expresses the same thing as “if p, then q,” note that “p only if q” says that p cannot be true when q is not true. That is, the statement is false if p is true, but q is false.


The proposition q → p is called the converse of p → q. The contrapositive of p → q is the proposition ¬q → ¬p. The proposition ¬p → ¬q is called the inverse of p → q. 

**DEFINITION 6**
Let p and q be propositions. The biconditional statement p ↔ q is the proposition “p if and only if q.” The biconditional statement p ↔ q is true when p and q have the same truth values, and is false otherwise. Biconditional statements are also called bi-implications.

**DEFINITION 7**
A bit string is a sequence of zero or more bits. The length of this string is the number of bits in the string.


## Basic structures: Sets, Functions, Sequences, Sums and Matrices.
**2.1 Sets**
**Theorem 1**

for every set $$S\ (i)\ \emptyset \subseteq S$$ and $$(ii)\ S\ \subseteq S.$$

In another word, every set has at least 2 elements, the empty set and the set itself.







**Showing Two Sets are Equal**
To show that two sets A and B are equal, show that $$A \subseteq B$$ and $$B \subseteq A$$

**DEFINITION 4**
Let S be a set. If there are exactly n distinct elements in S where n is a nonnegative integer, we say that S is a finite set and that n is the cardinality of S. The cardinality of S is denoted by $$|S|$$.

**DEFINITION 5**
A set is said to be infinite if it is not finite.

**DEFINITION 6**
Given a set S, the power set of S is the set of all subsets of the set S. The power set of S is denoted by $$\mathcal{P} (S)$$.

**DEFINITION 7**
The ordered n-tuple $$(a1, a2, . . . , a_{n})$$ is the ordered collection that has a_{1} as its first element, a_{2} as its second element, . . . , and $$a_{n}$$ as its n-th element.

**DEFINITION 8**

Let A and B be sets. The Cartesian product of A and B, denoted by $$A × B$$, is the set of all ordered pairs (a, b), where a ∈ A and b ∈ B. Hence,

$$ A × B = \{(a, b) | a \ ∈ A \land b ∈ B\}. $$

**DEFINITION 9**
The Cartesian product of the sets $$A_{1},A_{2},...,A_{n}$$, denoted by $$A_(1) × A_{2} ×···× A_{n}$$, is the set of ordered n-tuples (a_{1},a_{2},...,a_{n}), where a_{i} belongs to A_{i} for i = 1,2,...,n. In other words,
$$A_(1) × A_{2} ×···× A_{n} = {(a_{1},a_{2},...,a_{n}) | a_{i} \in A_{i} \ for \ i = 1,2,..., n }$$

A subset R of the Cartesian product A × B is called a **relation** from the set A to the set B. The elements of $$\mathbf{R}$$ are ordered pairs, where the first element belongs to A and the second to B. For example, R = {(a, 0), (a, 1), (a, 3), (b, 1), (b, 2), (c, 0), (c, 3)} is a relation from the set {a, b, c} to the set {0, 1, 2, 3}. A relation from a set A to itself is called a relation on A


∀x ∈S (P(x))is shorthand for ∀x(x ∈ S → P(x))

truth set of P to be the set of elements x in D for which P(x) is true. The truth set of P(x) is denoted by $$\{x ∈ D \vert P(x)\}$$.


**2.2 Set Operations**

**DEFINITION 1**

Let A and B be sets. The union of the sets A and B, denoted by A ∪ B, is the set that contains those elements that are either in A or in B, or in both.

$$A ∪ B = \{x \vert x ∈ A ∨ x ∈ B\}$$.

**DEFINITION 2**
Let A and B be sets. The intersection of the sets A and B, denoted by A ∩ B, is the set containing those elements in both A and B.

$$A ∩ B = {x \vert x ∈ A ∧ x ∈ B}$$.

**DEFINITION 3**
Two sets are called disjoint if their intersection is the empty set.


**Principle of Inclusion–Exclusion** 

$$\vert A∪B \vert = \vert A \vert + \vert B \vert−\vert A∩B \vert$$

**DEFINITION 4**
Let A and B be sets. The difference of A and B, denoted by A − B, is the set containing those elements that are in A but not in B. The difference of A and B is also called the complement of B with respect to A.

$$A − B = \{ x \vert x ∈ A ∧ x \notin B \}$$

(sometimes denoted as A \ B)

**DEFINITION 5**
Let U be the universal set. The complement of the set A, denoted by $$\overline{A}$$, is the complement of A with respect to U . Therefore, the complement of the set A is U − A.

$$\overline A = \{ x ∈ U \vert x \notin A \}$$ .



$$A − B = A ∩ \overline{B}$$

**DEFINITION 6**
The union of a collection of sets is the set that contains those elements that are members of at least one set in the collection.

$$A_{1} ∪ A_{2} ∪···∪A_{n} = \bigcup_{i = 1}^{n} A_{i}$$

**DEFINITION 7**
The intersection of a collection of sets is the set that contains those elements that are members of all the sets in the collection.

$$A_{1} ∪ A_{2} ∪···∪A_{n} = \bigcap_{i = 1}^{n} A_{i}$$


Note that we have $$\bigcap_{i \in I} A_{i}= \{x \vert \forall i \in I (x \in A_{i})\}$$ and $$\bigcup_{i \in I} A_{i}= \{x \vert \exists i \in I (x \in A_{i})\}$$


**Generalize case of De Morgan Law**
$$X\setminus{( \bigcup_{i=1}^{n}A_{i})}= \bigcap(X \setminus A_{i})$$

$$X\setminus{(\bigcap_{i=1}^{n}A_{i})}= \bigcup(X \setminus A_{i})$$







