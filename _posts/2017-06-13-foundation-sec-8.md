---
layout: post
title:  Foundation section 8 3.1 3.2
date:   2017-06-13 08:05:05
categories: Math
tags: foundation function 
---
* content
{: toc}

## Mathematical proof



What is a mathemtical proof?

A finite sequence of formal mathematical statements such that each statement either

(1) is an axiom or assumption
(2) follows by formal rules of logical deduction from previous statements in the sequence.


Most mathematicians do not think of mathematical proofs as for- mal mathematical proofs

Most proofs use natural language




An argument in favor of a mathematical statement that will convince the preponderance of knowledgeable mathematicians of the truth of the mathematical statement.


a succesful argument is a proof



What is a successful argument? (for student)

the instructor can understand
the instructor cannot refute
uses only assumptions that the instructor considers admissible.


Why proofs?

we depend on that for certainty and explaination of a statement. 
moreover once the mathematical accepts a proof, it is very rare to refute it. 

## Propositional logics

### Definition: Truth value 

If P is a statement which is true, then P has truth value 1. If P is a statement which is false, P has truth value 0. We write T(P) for the truth value of P.

Truth values can be thought of as a function $$T : S \to $$, where S is the set of all statements.

### Definition logical connectives

The symbol, $$\land \lor,\not \ \text{and} \ \implies$$ proposition connectives, they are defined for statment p and Q

![pic]()


|Connective|Natural Language Equivalent|definition|
|:---:|:---:||
|$$\not$$|not||
|$$\land$$| and ||
|$$\lor$$|or| |
|$$\implies$$|implies ||
|$$\iff$$|Bicondition|$$T(P \iff Q)=T(P \implies)T(Q \implies P)$$|


In the expression $$P \implies Q$$ 
the statement P is called the antecedent or hypothesis  
Q is called the consequence or conclusion


### Definition:Atomic statement

An atomic statement is a state- ment with no explicit propositional connectives.

### Definition:Well-formed statement

We define a well-formed propositional statement recursively as follows.


### Definition: Compound statement

A compound statement is a well-formed statement composed of atomic statements and propositional connectives.

### Definition: Propositional equivalence

Let P and Q be well-formed statements built from atomic statements.We say that P and Q are propositionally equivalent provided that $$T(P) = T(Q)$$ for any assignment of truth values to the constituent atomic statements.

### Example

$$[P \implies Q] \equiv [(¬Q)\implies(¬P)]$$

Prove by truth table

|$$T(P)$$| $$T(Q)$$| $$T(P \implies Q)$$| $$T((¬Q) \implies (¬(P)))$$|
|:---:|:---:|:---:|:---:|
|0|0|1|1| 
|0|1|1|1| 
|1|0|0|0| 
|1|1|1|1|

### Example

$$[¬(P \land Q)] \equiv [(¬P)\lor (¬Q)]$$

|$$P$$|$$Q$$|$$P \land Q$$|$$¬(P \land Q)$$|$$¬P$$|$$¬P$$|$$(¬P) \lor (¬Q)$$|
|:---:|:---:|:---:|:---:|:---:|:---:|:---:|
|0|0|0|1|1|1|1|
|1|0|0|1|0|1|1|
|0|1|0|1|1|0|1|
|1|1|1|0|0|0|0|


### Definition Implication 

Students often find it confusing that the implication P ) Q can be true when the consequence, Q, is false
if P is true, and P ) Q, then Q is true


If you are the king of France, then I am a monkey’s uncle.

### Example

P = If $$f(x)$$ is continuous on $$[a,b]$$
Q = $$g(x) = \int_{a}^{x}f(x)dt$$ is differentiable on $$(a,b)$$

### converse and contrapositive

Interested $$P \implies Q$$, seen proposition equivelence $$\not Q \implies \not P$$

ex: write down contrapositive

(1) If this is an insect, then it has 6 legs
if it doesn't have 6 legs, then it is not an insect.

(2) A whale is a fish
if it is not a fish, hten it is not a whale.


### Example

All fish live in water
the converse is: If I live in water, then I am a fish. 




Other natural language words that can be translated into propositional connectives are “necessary” and “sufficient”. 
The statement
“In order for P to hold, it is necessary that Q holds” is equivalent to 

$$P \implies Q$$. 

The statement
“In order for P to hold, it is su cient that Q holds”

is equivalent to $$Q \implies P$$. Combining these two, we get that the state- ment




