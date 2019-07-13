---
layout: post
title:  Theorems and Definitions review
date:   2017-01-13 08:26:00
categories: Math
tags: proof induction review theorem discrete_math
---

* content
{: toc}



## 1.1 Propositional Logics
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


“if p, then q”<br>
“if p, q”<br>
“p is sufficient for q”<br>
“q if p”<br>
“q when p”<br>
“a necessary condition for p is q” <br>
“q unless ¬p”<br>
“p implies q”<br>
“p only if q”<br>
“a sufficient condition for q is p” <br>
“q whenever p”<br>
“q is necessary for p”<br>
“q follows from p”<br>

To remember that “p only if q” expresses the same thing as “if p, then q,” note that “p only if q” says that p cannot be true when q is not true. That is, the statement is false if p is true, but q is false.


The proposition q → p is called the converse of p → q. The contrapositive of p → q is the proposition ¬q → ¬p. The proposition ¬p → ¬q is called the inverse of p → q. 

**DEFINITION 6**
Let p and q be propositions. The biconditional statement p ↔ q is the proposition “p if and only if q.” The biconditional statement p ↔ q is true when p and q have the same truth values, and is false otherwise. Biconditional statements are also called bi-implications.

**DEFINITION 7**
A bit string is a sequence of zero or more bits. The length of this string is the number of bits in the string.

## Propositional Equivalences

**DEFINITION 1**
A compound proposition that is always true, no matter what the truth values of the proposi- tional variables that occur in it, is called a tautology. A compound proposition that is always false is called a contradiction. A compound proposition that is neither a tautology nor a contradiction is called a contingency.

p ∨ ¬p  tautology

p ∧ ¬p  contradiction

**DEFINITION 2**
The compound propositions p and q are called logically equivalent if p ↔ q is a tautology. The notation p ≡ q denotes that p and q are logically equivalent.



## Basic structures: Sets, Functions, Sequences, Sums and Matrices.

### *2.1 Sets*
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

### *1.7 Introduction to proofs*

**DEFINITION 1**
The integer n is even if there exists an integer k such that n = 2k, and n is odd if there exists an integer k such that n = 2k + 1. (Note that every integer is either even or odd, and no integer is both even and odd.) Two integers have the same parity when both are even or both are odd; they have opposite parity when one is even and the other is odd.


**DEFINITION 2**
The real number r is rational if there exist integers p and q with q ̸= 0 such that r = p/q. A real number that is not rational is called irrational.

### *2.2 Set Operations*

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


### *2.3 Functions*

**DEFINITION 1**

Let A and B be nonempty sets. A function f from A to B is an assignment of exactly one element of B to each element of A. We write f(a) = b if b is the unique element of B assigned by the function f to the element a of A. If f is a function from A to B, we write f : A → B.

**Remark:** Functions are sometimes also called **mappings** or **transformations**.

**DEFINITION 2**

If f is a function from A to B,we say that A is the domain of f and B is the codomain of f. If f (a) = b, we say that b is the image of a and a is a preimage of b. The range, or image, of f is the set of all images of elements of A.Also,if f is a function from A to B,we say that f maps A to B.


**DEFINITION 3**
Let $$f_{1} \ and \ f_{2}$$ be functions from A to $$\mathbf{R}$$. Then $$f_{1} + f_{2}$$ and $$f_{1}f_{2}$$ are also functions from A to $$\mathbf{R}$$ defined for all x ∈ A by

$$(f_{1} + f_{2})(x) = f_{1}(x) + f_{2}(x) \\ (f_{1}f_{2})(x) = f_{1}(x)f_{2}(x)$$.

**DEFINITION 4**
Let *f* be a function from A to B and let *S* be a subset of A. The *image* of S under the function *f* is the subset of B that consists of the images of the elements of *S*. We denote the image of S by $$f(S)$$, so

$$f(S) = \{t \vert ∃s ∈ S (t = f(s))\}$$.

We also use the shorthand $$\{f (s) \vert s ∈ S\}$$ to denote this set.

**DEFINITION 5**

A function f is said to be *one-to-one*, or an *injunction*, if and only if $$f (a) = f (b)$$ implies that *a* = *b* for all *a* and *b* in the domain of *f*. A function is said to be *injective* if it is one-to-one.

 $$∀a∀b(f (a) = f (b) → a = b) \quad or \quad ∀a∀b(a \neq b → f (a) \neq f (b))$$


**DEFINITION 6**
A function f whose domain and codomain are subsets of the set of real numbers is called *increasing* if $$f (x) ≤ f (y)$, and *strictly increasing* if $$f (x) < f (y)$$, whenever $$x < y \ and \ x and y$$ are in the domain of *f*. Similarly, *f* is called *decreasing* if $$f (x) ≥ f (y)$$, and *strictly decreasing* if $$f(x) > f(y)$$, whenever $$x < y \ and \ x \ and \ y$$ are in the domain of *f*. (The word *strictly* in this definition indicates a strict inequality.)

* *increasing* if $$∀x∀y(x < y → f (x) ≤ f (y))$$

* *strictly increasing* if $$∀x∀y(x < y → f(x) < f(y))$$

* *decreasing* if $$∀x∀y(x < y → f(x) ≥ f(y))$$ 

* *strictly decreasing* if  $$∀x∀y(x < y → f (x) > f (y))$$

**DEFINITION 7**

A function *f* from A to B is called *onto*, or a *surjection*, if and only if for every element b∈B there is an element a∈A with f(a)=b. A function *f* is called *surjective* if it is onto.

$$∀y∃x(f (x) = y)$$



**DEFINITION 8**

The function f is a *one-to-one correspondence*, or a *bijection*, if it is both one-to-one and onto. We also say that such a function is *bijective*.

*f* is a function from a set A to itself. If A is finite, then *f* is one-to-one if and only if it is onto

**identity function**

ιA(x) = x

**DEFINITION 9**

Let f be a one-to-one correspondence from the set A to the set B. The *inverse function* of *f* is the function that assigns to an element b belonging to B the unique element a in A such that f (a) = b. The inverse function of *f* is denoted by f^{−1}. Hence, f^{−1}(b) = a when f (a) = b.

If f is not one-to-one, some element b in the codomain is the image of more than one element in the domain. If f is not onto, for some element b in the codomain, no element a in the domain exists for which f (a) = b.


**DEFINITION 10**

Let *g* be a function from the set A to the set B and let *f* be a function from the set B to the set C. The composition of the functions f and g, denoted for all a ∈ A by f ◦ g, is defined by

(f ◦ g)(a) = f (g(a))

the commutative law does not hold for the composition of functions.

Identity function

$$(f −1 ◦ f )(a) = f −1(f (a)) = f −1(b) = a$$

$$(f ◦f−1)(b)=f(f−1(b))=f(a)=b$$

(f^{−1})^{−1} = f 


We can associate a set of pairs in A × B to each function from A to B. This set of pairs is called the **graph** of the function


**DEFINITION 11**

Let f be a function from the set A to the set B. The *graph* of the function *f* is the set of ordered pairs $$\{(a,b) \vert a ∈ A and f(a) = b\}$$.

**DEFINITION 12**

The floor function assigns to the real number x the largest integer that is less than or equal to x. The value of the floor function at x is denoted by ⌊x⌋. The ceiling function assigns to the real number x the smallest integer that is greater than or equal to x. The value of the ceiling function at x is denoted by ⌈x⌉.

The floor function also called the greatest integer function.


## 6 counting

### 6.4

#### The Binomial Theorem and Corollaries 

* **The Binomial Theorem**

Let x and y be variables, and let n be a nonnegative integer. Then

$$(x+y)^{n} = \sum_{j=0}^{n} \binom{n}{j}x^{n-j}y^{j}=\binom{n}{0}x^{n}+\binom{n}{1}x^{n-1}y + 
... + \binom{n}{n-1}x y^{n-1}+\binom{n}{n}y^n$$

Proof: We use a combinatorial proof. The terms in the product when it is expanded are of the form $$x^{n−j}y^{j}$$ for $$j = 0,1,2,...,n$$. To count the number of terms of the form $$x^{n−j}y^{j}$$, note that to obtain such a term it is necessary to choose $$n − j xs$$ from the n sums (so that the
other j terms in the product are ys). Therefore, the coefficient of $$ x^{n−j}y^{j} \ is \ \binom{n}{n-j}$$  , which is  $$ \binom{n}{n−j}$$ equal to j .This proves the theorem.

* **Corollary 1**

Let n be a nonnegative integer. Then

$$\binom{n}{k} = 2^{n}$$

Proof

Using the binomial theorm with x = 1, y = 1, we see that 

$$2^{n} = (1+1)^{n} = \sum_{k=0}^{n}\binom{n}{k} 1^{n-1}{k} = \binom{n}{k}$$

Proof:

A set with n elements has a total of $$2^{n}$$ different subsets. Each subset has zero elements, one element, two elements, ... , or n elements in it. There are $$\binom{n}{0}$$ subsets zero elements, $$\binom{n}{1}$$ subset with 1 elements, $$\binom{n}{2}$$ subsets with 2 elements, ..., $$\binom{n}{n}$$ subsets with n elements. 

Therefore,

$$\sum_{k=0}^{n}\binom{n}{k}$$

counts the total number of subsets of a set with n elements. by equating the two formulas we have for the number of subsets of a set with n elements, we see that

$$\sum_{k=0}^{n}\binom{n}{k}=2^{n}$$

**Corollary 2** 

Let n be a positive integer. Then 

$$\sum_{k=0}^{n}-1^{k}\binom{n}{k}= 0$$

Proof:

When we use the binomial theorem with x = -1 and y = 1, we see that 

$$0=0^{n}=((-1)+1)^{n} = \sum_{k=0}{n}\binom{n}{k}(-1)^{n-k}1^{k}$$







## 4.1 Divisibility and Modular Arithmetic 

Let a, b, and c be integers, where a ≠ 0. Then
(i) if a|b and a|c,then a|(b+c); 
(ii) if a|b,then a|bc for all integers c;
(iii) if a|b and b|c,then a|c.


If a, b, and c are integers, where a ̸= 0, such that a | b and a | c, then a | mb + nc whenever m and n are integers

THE DIVISION ALGORITHM Let a be an integer and d a positive integer. Then there are unique integers q and r, with 0 ≤ r < d, such that a = dq + r.

In the equality given in the division algorithm, d is called the divisor, a is called the dividend, q is called the quotient, and r is called the remainder. This notation is used to express the quotient and remainder:
q=a div d, r=a mod d.

If a and b are integers and m is a positive integer, then a is congruent to b modulo m if m divides a − b. We use the notation a ≡ b (mod m) to indicate that a is congruent to b modulo m. We say that a ≡ b (mod m) is a congruence and that m is its modulus (plural moduli). If a and b are not congruent modulo m, we write a ̸≡ b (mod m).

Let a and b be integers, and let m be a positive integer. Then a ≡ b (mod m) if and only if a mod m = b mod m.

Let m be a positive integer. The integers a and b are congruent modulo m if and only if there
is an integer k such that a = b + km.

Let m be a positive integer. If a ≡ b (mod m) and c ≡ d (mod m), then a + c ≡ b + d (mod m) and ac ≡ bd (mod m).

note: if ac ≡ bc (mod m), the congruence a ≡ b (mod m) may be false.


## 4.2 Integer Representations and Algorithms
Let b be an integer greater than 1. Then if n is a positive integer, it can be expressed uniquely in the form
$$n=a_{k}b^{k} +a_{k−1}b^{k−1} +···+a_{1}b+a_{0}$$,
where k is a nonnegative integer, $$a_{0}, a_{1}, . . .$$ , ak are nonnegative integers less than b, and ak ≠ 0.

## 4.3 Primes and Greatest Common Divisors
An integer p greater than 1 is called prime if the only positive factors of p are 1 and p. A positive integer that is greater than 1 and is not prime is called composite.



