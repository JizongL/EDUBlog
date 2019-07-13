---
layout: post
title:  discrete math table review
date:   2017-01-13 08:26:00
categories: Math
tags: proof review table discrete_math
---

* content
{: toc}

This is a collection of tables from the textbook. 





## **TABLE 6 Logical Equivalences.** 

Equivalence | Name
$$p∧T≡p \\ p∨F≡p$$ | Identity laws
$$p∨T≡T \\ p∧F≡F$$ | Domination laws
$$p∨p≡p \\ p∧p≡p$$ | Idempotent laws
$$¬(¬p) ≡ p$$ | Double negation law
$$p∨q≡q∨p \\ p∧q≡q∧p$$ | Commutative laws
$$(p∨q)∨r ≡p∨(q∨r) \\ (p∧q)∧r ≡p∧(q∧r)$$ | Associative laws
$$p ∨ (q ∧ r) ≡ (p ∨ q) ∧ (p ∨ r) \\ p ∧ (q ∨ r) ≡ (p ∧ q) ∨ (p ∧ r)$$ | Distributive laws
¬(p ∧ q) ≡ ¬p ∨ ¬q \\ ¬(p ∨ q) ≡ ¬p ∧ ¬q | De Morgan’s laws
$$p ∨ (p ∧ q) ≡ p \\ p ∧ (p ∨ q) ≡ p$$ | Absorption laws
$$p ∨ ¬p ≡ T \\ p ∧ ¬p ≡ F$$ | Negation laws


$$\$$

## **TABLE 7 Logical Equivalences** 

|  Involving Conditional Statements | 
|:---------------------------------------|
| p → q ≡ ¬p ∨ q<br>p → q ≡ ¬q → ¬p<br> p ∨ q ≡ ¬p → q<br>p ∧ q ≡ ¬(p → ¬q)<br>¬(p → q) ≡ p ∧ ¬q<br>(p → q) ∧ (p → r) ≡ p → (q ∧ r) <br>(p → r) ∧ (q → r) ≡ (p ∨ q) → r <br>(p → q) ∨ (p → r) ≡ p → (q ∨ r)<br>(p → r) ∨ (q → r) ≡ (p ∧ q) → r | 


## **TABLE 8 Logical Equivalences**



|  Involving Biconditional Statements.| 
|:---------------------------------------|
| p ↔ q ≡ (p → q) ∧ (q → p) <br>p ↔ q ≡ ¬p ↔ ¬q<br>p ↔ q ≡ (p ∧ q) ∨ (¬p ∧ ¬q)<br> ¬(p ↔ q) ≡ p ↔ ¬q |

## **Rule of Inference** 

|Rules of Inference | Tautology | Name |
|:------------------ |:------------------ |:------------------ |
|p<br> $$ \underline{p→q}$$ <br> ∴q |(p ∧ (p → q)) → q | Modus ponens |
|¬q <br>$$\underline{p→q}$$ <br>∴ ¬p | (¬q ∧ (p → q)) → ¬p | Modus tollens |
|p→q <br> $$\underline{q→r}$$ <br> ∴p→r | ((p → q) ∧ (q → r)) → (p → r) | Hypothetical syllogism |
|p∨q<br> $$\underline¬p$$ <br> ∴q | ((p ∨ q) ∧ ¬p) → q | Disjunctive syllogism |
|$$\underline{p}$$ <br> ∴p∨q | p → (p ∨ q) | Addition |
|$$\underline{p∧q}$$<br> ∴p | (p ∧ q) → p | Simplification |
|p<br>$$\underline{q}$$<br>∴p∧q | ((p) ∧ (q)) → (p ∧ q) | Conjunction |
|p∨q<br>$$\underline{¬p ∨ r}$$<br> ∴q∨r | ((p ∨ q) ∧ (¬p ∨ r)) → (q ∨ r) | Resolution |

check out the [additional note]({{ post.url | prepend: site.baseurl }}{% post_url 2017-01-18-rules-of-inference-additional-note %})

## **Quantifications of Two Variables.** 


|Statement $$ \ $$| When True? | When False? |
|:----------------------------- |:------------------------------------- |:--------------------------------- |
|∀x∀yP (x, y) $$ \ $$<br>  ∀y∀xP (x, y) | P (x, y) is true for every pair x, y. | There is a pair x, y for which P (x, y) is false. |
| ∀x∃yP (x, y) | For every x there is a y for which P (x, y) is true. | There is an x such that P (x, y) is false for every y. |
| ∃x∀yP (x, y) | There is an x for which P(x,y) is true for every y. | For every x there is a y for which P (x, y) is false. |
| ∃x∃yP (x, y) $$ \ $$<br> ∃y∃xP (x, y) | There is a pair x, y for which P (x, y) is true. | P (x, y) is false for every pair x, y. |


## **Rule of Inference for Quantified Statements.**

|Rules of Inference  | Name |
|:----------- |:----------- |
|∀xP(x) <br>∴ P(c) | Universal instantiation |
|P (c) for an arbitrary c<br> ∴ ∀xP(x) | Universal generalization |
|∃xP(x)<br>∴ P (c) for some element c | Existential instantiation |
|P(c) for some element c<br> ∴ ∃xP(x) | Existential generalization |

## **Set Identities**

Identity | Name 
   ----- | -----
$$A∩U=A \\ A∪∅=A$$ | Identity laws
$$A∪U=U \\ A∩∅=∅$$ | Domination laws
$$A∪A=A \\ A∩A=A$$ | Idempotent laws
 $$\overline{(\overline{A})} = A$$ | Complementation law
$$A∪B=B∪A \\ A∩B=B∩A$$ | Commutative laws
$$A ∪ (B ∪ C) = (A ∪ B) ∪ C \\ A ∩ (B ∩ C) = (A ∩ B) ∩ C$$ | Associative laws
$$A ∪ (B ∩ C) = (A ∪ B) ∩ (A ∪ C) \\ A ∩ (B ∪ C) = (A ∩ B) ∪ (A ∩ C)$$ | Distributive laws
$$\overline{A∩B}=\overline{A}∪\overline{B} \\ \overline{A∪B}=\overline{A}∩\overline{B}$$ |De Morgan’s laws
$$A ∪ (A ∩ B) = A \\ A ∩ (A ∪ B) = A$$ | Absorption laws
$$A∪\overline{A}=U \\ A∩\overline{A}=∅$$ | Complement laws

$$\$$





## TABLE 1 Useful Properties of the Floor and Ceiling Functions.

| (n is an integer, x is a real number)  | 
|:---------------------------------------|
| (1a) ⌊x⌋=n if and only if n≤ x < n+1 
(1b) ⌈x⌉=n if and only if n−1< x ≤ n  <br>(1c) ⌊x⌋=n if and only if x−1 < n ≤ x  <br>(1d) ⌈x⌉=n if and only if x ≤n < x+1 | 
| (2) x−1 < ⌊x⌋ ≤ x ≤⌈x⌉< x + 1 | 
| (3a) ⌊−x⌋ = −⌈x⌉ <br> (3b) ⌈−x⌉ = −⌊x⌋ | 
| (4a) ⌊x+n⌋=⌊x⌋+n <br>(4b) ⌈x+n⌉=⌈x⌉+n |



