---
layout: post
title:  graph theory homework note
date:   2017-01-09 19:06:05
categories: Graph_Theory_homework
tags: homework induction proof 1.3 3.1
---

* content
{:toc}

## section 1.2 Numbers and sets: notation

Prove that for any two sets A, B we have

(A \ B) ∪ (B \ A) = (A ∪ B) \ (A ∩ B)

Proof
First prove
$$(A \ B) ∪ (B \ A) \subset (A ∪ B) \ (A ∩ B)$$<br>
$$x \in (A \setminus B) \cup (B \setminus A) $$ -- By law of union  <br>
$$x \in (A \setminus B) \cup (x \in (B \setminus A)$$ <br>
$$(x \in A \cap x \notin B) \cup (x \in B \cap x\notin A) $$ -- By law of complement<br>
$$x \in (A \cap x \in \overline{B}) \cup (x \in B \cap x\in \overline{A})$$ -- By the Identity law<br>
$$ x \in (A \cup B) \ and \ x \in (\overline{A} \cup \overline{B})$$ <br>
$$x \in (A \cup B) \cap x \in (\overline{A} \cup x \in \overline{B})$$ -- By De Morgan law <br>
$$x \in (A \cup B) \cap x \notin (A \cap B)$$  -- by law of subtraction<br>
$$x \in (A \cup B) \setminus (A \cap B)$$ <br>

Then prove
$$(A ∪ B) \ (A ∩ B) \subset (A \ B) ∪ (B \ A)$$<br>
$$x \in (A ∪ B) \setminus (A ∩ B)$$ -- by law of subtraction<br>
$$ x \in (A ∪ B) \cap x \notin (A ∩ B)$$ --by law of complement<br>
$$ x \in (A ∪ B) \cap x \in \overline{(A ∩ B)}$$ --by De Morgan law<br>
$$ x \in (A ∪ B) \cap x \in (\overline{A} \cup \overline{B})$$-- by law of union<br>
$$ x \in (A ∪ B) \cap (x \in \overline{A} \cup x \in \overline{B})$$--by communitive law<br>
$$ x \in (A ∪ B) \cap (x \in \overline{B} \cup x \in \overline{A})$$--by distributive law<br>
$$ x \in (A \cap \overline{B}) \cup x \in (B \cap \overline{A})$$--by law of subtraction & law of complement<br>$$x \in (A \setminus B) \cup (B \setminus A)$$

Therefore
(A \ B) ∪ (B \ A) = (A ∪ B) \ (A ∩ B)
Q.E.D

## section 1.3 Mathematical induction and other proofs
## 1.

Prove the following formulas by mathematical induction:

a) 

$$1+2+3+...+n=\frac{n(n+1)}{2}$$

Proof

Let P(n) be the proposition

$$1+2+3+...+n=\frac{n(n+1)}{2}$$

then 

$$P(1) =1=\frac{1(1+1)}{2}$$

so P(1) is true

Let's assume that there is a k, $$k \in \mathbf{Z}$$ such that

$$ P(k) =1+2+3+...+k= \frac{k(k+1)}{2}$$

By PMI

$$ P(k+1) =1+2+3+...+k + (k+1)= \frac{k(k+1)}{2}+(k+1)$$

$$ P(k+1) =P(k) + (k+1)= \frac{k(k+1)+2(k+1)}{2}$$

$$ P(k+1) =P(k) + (k+1)= \frac{(k+1)(k+2)}{2}$$

therefore $$P(k) \implies P(k+1)$$ is true and by PMI, P(n) is also true. Q.E.D

b) 

$$\sum_{i=1}^{n} i \cdot 2^{i} =(n-1)2^{n+1}+2$$

Let P(n) be the prosition 

$$\sum_{i=1}^{n} i \cdot 2^{i} =(n-1)2^{n+1}+2$$

then 

P(1) =$$\sum_{i=1}^{1} i \cdot 2^{i} =2=(1-1)2^{1+1}+2$$

Since P(1) is true, let's assume that there is a k and $$k \in \mathbf{Z}$$, such that 

$$P(k) =\sum_{i=1}^{k} i \cdot 2^{i}= (k-1)2^{k+1}+2$$

Then by PMI,$$P(k) \implies P(k+1)$$  such that 

$$P(k+1) = \sum_{i=1}^{k} i \cdot 2^{i}+(k+1) \cdot 2^{k+1}= (k-1)2^{k+1}+2+(k+1) \cdot 2^{k+1}$$

$$P(k+1) = \sum_{i=1}^{k} i \cdot 2^{i}+(k+1) \cdot 2^{k+1}= ((k-1)+(k+1))2^{k+1}+2$$

$$P(k+1) = \sum_{i=1}^{k+1} (i+1) \cdot 2^{i+1}= ((2k)2^{k+1}+2= k \cdot 2^{k+2}+2$$

## 2. 

The numbers $$F_{0},F_{1},F_{2},...$$ are defined as follows (this is a definition
by mathematical induction, by the way): $$F_{0} = 0, F_{1} = 1, F_{n+2} =
F_{n+1} + F_{n} \ for \ n=0,1,2,...$$ 

Prove that for any $$n≥0$$ we have 

$$F_{n} ≤ \left(\frac{1 + \sqrt {5}}{2}\right)^{n−1}$$

(see also Section 12.3).

**Proof**

Let P(n) be the proposition that 

$$F_{n} ≤ \left(\frac{1 + \sqrt {5}}{2}\right)^{n−1}$$

And we know 

$$F_{0} = 0, F_{1} = 1, F_{n+2} =
F_{n+1} + F_{n} \ for \ n=0,1,2,...$$ 

Then set up the base cases P(0),P(1),P(2) as 

$$F_{0} ≤ \left(\frac{1 + \sqrt {5}}{2}\right)^{0−1},F_{1} ≤ \left(\frac{1 + \sqrt {5}}{2}\right)^{1−1},F_{2} ≤ \left(\frac{1 + \sqrt {5}}{2}\right)^{2−1}$$

we know from the [fibonacci sequence](https://en.wikipedia.org/wiki/Fibonacci_number) and the given information, $$F_{0} = 0,F_{1} = 1,F_{2} = 1$$

Therefore, P(0),p(1),p(2) is true.

Assume that there is an $$k, (k \in \mathbf{Z})$$, then p(k) is

$$F_{k} ≤ \left(\frac{1 + \sqrt {5}}{2}\right)^{k−1}$$

And because $$F_{n+2}>F_{n+1}>F_{n} \ and \ F_{n+2} =
F_{n+1} + F_{n} \ for \ n=0,1,2,...$$ 

And then by PMI, $$p(k) \implies p(k+1) \implies p(k+2)$$ so that

$$F_{k+2} ≤ \left(\frac{1 + \sqrt {5}}{2}\right)^{k+2−1}=\left(\frac{1 + \sqrt {5}}{2}\right)^{k+1}$$ and because

$$F_{k+2} ＝ F_{k+1} ＋ F_{k}$$

Therefore $$F_{k+2} ≤ \left(\frac{1 + \sqrt {5}}{2}\right)^{k}+\left(\frac{1 + \sqrt {5}}{2}\right)^{k-1}$$<br>
Therefore $$F_{k+2} ≤ \left(\frac{1 + \sqrt {5}}{2}\right)^{k}+\left(\frac{1 + \sqrt {5}}{2}\right)^{k}\left(\frac{1 + \sqrt {5}}{2}\right)^{-1}$$<br>
$$F_{k+2} ≤ \left(\frac{1 + \sqrt {5}}{2}\right)^{k}\left(1+\left(\frac{1 + \sqrt {5}}{2}\right)^{-1}\right)$$<br>
$$F_{k+2} ≤ \left(\frac{1 + \sqrt {5}}{2}\right)^{k}\left(1+\frac{2}{1 + \sqrt {5}}\right)$$<br>
$$F_{k+2} ≤ \left(\frac{1 + \sqrt {5}}{2}\right)^{k}\left(\frac{1 + \sqrt {5}}{1 + \sqrt {5}}+\frac{2}{1 + \sqrt {5}}\right)$$<br>
$$F_{k+2} ≤ \left(\frac{1 + \sqrt {5}}{2}\right)^{k}\left(\frac{3+ \sqrt {5}}{1 + \sqrt {5}}\right)$$<br>
because $$\left(\frac{3+ \sqrt {5}}{1 + \sqrt {5}}\right)=\left(\frac{1 + \sqrt {5}}{2}\right)$$<br>
Therefore $$F_{k+2} ≤ \left(\frac{1 + \sqrt {5}}{2}\right)^{k+1}$$<br>
In conclusion, $$p(k) \implies p(k+1) \implies p(k+2)$$ is true.
By PMI, $$p(n) \implies p(n+1) \implies p(n+2) \ and p(n)$$ is true.


[solution](http://math.stackexchange.com/questions/2095760/need-help-with-the-proof-for-the-fibonacci-sequence/2095762#2095762)

## 3
(a) Let us draw n lines in the plane in such a way that no two are parallel and no three intersect in a common point. Prove that the plane is divided into exactly n(n + 1)/2 + 1 parts by the lines.

let p(n) be the proposition

the plane is divided into exactly $$\frac{n(n + 1)}{2 + 1}$$ parts by the lines

we know that every line drawn, according to the 2 rules, will be devided into eactly n segments and $$n = 
0,1,2,3 .... \ and \ n \in \mathbf{Z}$$. And each of its segment will divide the areas already existed into 2 parts, thus if there are n lines have been drawn, then the n+1 line will generate n+1 more areas to the existing areas. 

Let's test the base case p(0)

When there is no line is drawn, there is 1 area, the whole plane. 

and $$p(0) = 1 = \frac{0(0+1)}{2}+1$$

And let's test a few more base cases p(1),p(2),p(3).

When there is 1 line drawn, the plane is divided into 2 areas. 

and $$p(1) = 2 = \frac{1(1+1)}{2}+1$$

When there are 2 lines drawn, the plane is divided into 4 areas. 

and $$p(2) = 4 = \frac{2(2+1)}{2}+1$$

When there are 3 lines drawn, the plane is divided into $$4 + 3 = 7$$ areas.
There are 4 areas already existed and the new line is divided by the privous 2 lines and has 3 segments. Each of these segment divides the area it pass through into 2, therefore, there are 3 additional areas generated. 

Therefore, p(0),p(1),p(2),p(3) are all true. 

Let's now assume there is a number $$k \ and \ k \in \mathbf{Z}$$ such that

$$p(k) = \frac{k(k+1)}{2}+1$$

And by PMI, $$p(k) \implies p(k+1)$$

$$p(k+1)=p(k)+(k+1) = \frac{k(k+1)}{2}+1+(k+1)$$

$$p(k+1) = \frac{k(k+1)+2+2(k+1)}{2}$$

$$p(k+1) = \frac{(k+2)(k+1)+2}{2}$$

so $$p(k) \implies p(k+1)$$ is true, and by PMI $$p(n)$$ is true. 


[solution reference](http://www.geometer.org/mathcircles/indprobs.pdf)

(b) Similarly, consider n planes in the 3-dimensional space in gen- eral position (no two are parallel, any three have exactly one point in common, and no four have a common point). What is the number of regions into which these planes partition the space?

[solution](http://web.stanford.edu/class/cs103x/midtermsolutions2007.pdf) exercise 5.

## 3.1 Permutations and factorials

4.
Among the numbers $$1, 2, . . . , 10^{10}$$, are there more of those containing the digit 9 in their decimal notation, or of those with no 9?

Proof 

Since there are $$10^{10}$$ numbers, therefore, 

Let N = the amount of numbers contain 9 

and 

M = the amount of numbers does not contain 9

then 

$$10^{10}=N+M$$

$$N=10^{10}-M$$

First, find N

10^{10} is the maximum number and there are 11 digits in it. 

$$\vert x_{11th} \vert x_{10th} \vert x_{9th} \vert x_{8th} \vert x_{7th} \vert x_{6th} \vert x_{5th} \vert x_{4th} \vert x_{3rd} \vert x_{2nd} \vert x_{1st} \vert$$

$$x_{11th} =1 \ as \ 9999999999+1 = 10^{10}$$, so it has only 1 choice.

$$x_{1st} \in {1,2,3,...,9}$$, thus 8 choices

$$ x_{2nd} and x_{3rd},...,x_{10} \in {0,1,2,...,9}$$, thus 9 choices

Therefore, by the product rules, the formula is generated as 

$$ M = 8 \cdot \sum_{n=1}^{9} 9^{n} +1 $$

By the geometric series

$$P \cdot S_{n} = P+P^{2}+P^{3}+...++P^{n+1}=S_{n}+(P^{n+1}-1)$$

$$(P-1)S_{n}=P^{n+1}-1$$

$$S_{n}=\frac{P^{n+1}-1}{P-1}$$


$$ M = 8 \cdot \frac{9^{10}-1}{9-1} +1 $$

$$ M = 3486784401$$

Then 

$$N=10^{10}-M$$

$$10^{10}-3486784401=6513215599$$

Because 3486784401 < 6513215599

we conclude that M < N, therefore, there are more numbers contain 9 than without it. Q.E.D























