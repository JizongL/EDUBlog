---
layout: post
title:  Rules of Inference additional note
date:   2017-01-18 18:46:00
categories: Math
tags: proof review note discrete_math MIT additional_note
---

* content
{: toc}

## Rules of interence 

### disjunctive 

p = I am going to watch a movie<br>
q = I have a heahache<br> 
weather I am going to watch a movie or not, I have a headache.






### addition

p = I am going to buy bitcoin
q = I am going to buy ethereum 
I am going to buy ethereum or ethereum

### simplification 

make up your mind<br>
p = I am going to eat a burger<br>
q = I am going to eat a taco<br>
I am going to eat a burger

### Resolution

p = I am going to a movie<br>
q = I am going to study<br>
r = I am going to pass the exam<br>
weather I am going to a movie or not, I am going to either study or pass the exam. 
q ∨ r is the **resolvent**

When we let q = r in this tautology, we obtain (p ∨ q) ∧ (¬p ∨ q) → q. Furthermore, when we let r = F, we obtain (p ∨ q) ∧ (¬p) → q (because q ∨ F ≡ q), which is the tautology on which the rule of disjunctive syllogism is based.


## fallacy

### the fallacy of affirming the conclusion.

((p → q) ∧ q) → p 

* example:

If I am going to study, I am going to win. I win, I must have studied. 

### fallacy of denying the hypothesis.

The proposition ((p → q) ∧ ¬p) → ¬q 

If I am going to a movie, I will not finish my homework. I didn't go to a movie, then I must have finished my homework. 

## universal modus ponens.

∀x(P (x) → Q(x))<br>
$$ \underline{P(a)\ , \ where \ a \ is \ a \ particular \ element \ in \ the \ domain}$$<br>
∴ Q(a)

universal modus tollens.

∀x(P (x) → Q(x))
$$ \underline{¬Q(a) \,\ where \ a \ is \ a \ particular \ element \ in \ the \ domain}$$
<br>∴ ¬P(a)

### EXAMPLE 13

Show that the premises “A student in this class has not read the book,” and “Everyone in this class passed the first exam” imply the conclusion “Someone who passed the first exam has not read the book.”

Solution: Let C(x) be “x is in this class,” B(x) be “x has read the book,” and P (x) be “x passed the first exam.” The premises are ∃x(C(x) ∧ ¬B(x)) and ∀x(C(x) → P (x)). The conclusion is ∃x(P (x) ∧ ¬B(x)). These steps can be used to establish the conclusion from the premises.


| Step | Reason |
|:---- |:------ |
| 1. ∃x(C(x) ∧ ¬B(x))  | Premise |
| 2. C(a)∧¬B(a) | Existential instantiation from (1)  |
| 3. C(a) | Simplification from (2) |
| 4. ∀x(C(x)→P(x))  | Premise |
| 5. C(a)→P(a) | Universal instantiation from (4)  |
| 6. P(a) | Modus ponens from (3) and (5)  |
| 7. ¬B(a) | Simplification from (2)  |
| 8. P(a)∧¬B(a) | Conjunction from (6) and (7)  |
| 9. ∃x(P (x) ∧ ¬B(x)) | Existential generalization from (8) |



[See discrete math tables review]{{post.url | prepend: site.baseurl}}{% post_url 2017-01-13-discrete-math-tables-review %}





