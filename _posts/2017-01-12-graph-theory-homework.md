---
layout: post
title:  graph theory homework note
date:   2017-01-09 19:06:05
categories: Graph_Theory_homework
tags: homework induction proof 1.3 3.1
---

* content
{:toc}

## Assignment 1

### section 1.2 Numbers and sets: notation

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

### section 1.3 Mathematical induction and other proofs
### 1.

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

### 2. 

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

### 3
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

### 3.1 Permutations and factorials

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


## Assignment 2

3.1 Functions and subsets

p 64

Determine the number of ordered pairs (A,B), where A ⊆ B ⊆ {1,2,...,n}.

[2](http://math.stackexchange.com/questions/429652/how-to-find-the-number-of-ordered-pairs-a-b-where-a-and-b-are-subsets-of-s-an)




1. How many permutations of {1, 2, . . . , n} have a single cycle?



6. Let π be a permutation of the set {1,2,...,n}. We say that an ordered pair (i,j) ∈ {1,2,...,n} × {1,2,...,n} is an inversion of π if i < j and π(i) > π(j).
(a) Prove that the set I(π) of all inversions, regarded as a relation on {1, 2, . . . , n}, is transitive.


[some description about inversion](http://www.informatik.uni-leipzig.de/~paxton/algorithmics/week10/Perms/statement.htm)

DESCRIPTION

Given a permutation a1, a2, a3,..., an of the n integers 1, 2, 3, ..., n, an inversion is a pair (ai, aj) where i < j and ai > aj. The number of inversions in a permutation gives an indication on how "unsorted" a permutation is. If we wish to analyze the average running time of a sorting algorithm, it is often useful to know how many permutations of n objects will have a certain number of inversions.

In this problem you are asked to compute the number of permutations of n values that have exactly k inversions.

For example, if n = 3, there are 6 permutations with the indicated inversions as follows:

| P | inversions |
|:----|:-------------|
| 123 | 0 inversions |
| 132 | 1 inversion (3 > 2)    	 |
| 213 | 1 inversion (2 > 1)    	 |
| 231 | 2 inversions (2 > 1, 3 > 1)    	 |
| 312 | 2 inversions (3 > 1, 3 > 2)	 |
| 321 | 3 inversions (3 > 2, 3 > 1, 2 > 1) |
    	

Therefore, for the permutations of 3 things

1 of them has 0 inversions<br>
2 of them have 1 inversion<br>
2 of them have 2 inversions<br>
1 of them has 3 inversions<br>
0 of them have 4 inversions<br>
0 of them have 5 inversions<br>
etc.


[inversion of a permutation](http://math.stackexchange.com/questions/512333/inversions-of-a-permutation)

(a) ∗Find out what is the largest power of 10 dividing the number 70! (i.e. the number of trailing zeros in the decimal notation for 70!).
[help source](http://mathandmultimedia.com/2014/01/25/zeros-are-there-in-n-factorial/)


2. Prove the addition formula (3.5) by using the definition (3.1) of binomial coefficients and by manipulating expressions.




## Assignment 3

### Question 4:

For natural numbers m ≤ n calculate (i.e. express by a simple formula
not containing a sum)  $$_{k=m}^{b} \binom{m}{k} \binom{n}{k}$$.

$$$$ 
 
$$\require{cancel}$$

$$\sum_{k=m}^{n}\binom{k}{m}\binom{n}{k} \implies \sum_{k=m}^{n}\frac{n! \cancel{k!}}{\cancel{k!}m!(k-m)!(n-k)!}$$

Introduce a new term \frac{(n-m)!}{(n-m)!}, also we can see that 

$$(n-m-(n-k))=k-m$$

Therefore 

$$\sum_{k=m}^{n} \frac{n! \color{red}{(n-m)!}}{m!\color{red}{(n-m)!}(n-k)!(n-m-(n-k))} = \sum_{k=m}^{n} \left(\frac{ n!}{m!\color{red}{(n-m)!}} \right) \left(
\frac{\color{red}{(n-m)!}}{(n-k)!(n-m-(n-k))}\right)$$

Use the binomial notation and put it back into the sum notation

$$\sum_{k=m}^{n}\binom{n}{m}\binom{n-m}{n-k} \implies \binom{n}{m}\sum_{k=m}^{n}\binom{n-m}{n-k} \implies \binom{n}{m}2^{n-m}$$
<br>
<br>

### Question 9:

How many k-element subsets of {1, 2, . . . , n} exist containing no two consecutive numbers?

Let $$\mathbf{S}$$ be a set of k-elements such that 

$$a_{1} < a_{2} < a_{3} \cdots a_{k}$$

and $$\mathbf{S} \subseteq \mathbf{N}$$, $$\mathbf{N} ={1,2,3,\cdots ,n}$$

Then assign a k-tupe $$a_{1} < a_{2} -1 < a_{3}-1 \cdots a_{k} -k+1$$ to it. 

Then, this gives a bijection of the required kind and $$\binom{\{1,2,...,n-k+1\}}{k}$$

Therefore, the answer is 

$$\binom{n-k+1}{k}$$

Bit string explaination of the bijections with a specific example

Let 1 represents the elements of the required set $$\mathbf{S}$$ =$$\{a_{1},a_{2}...,a_{n}\}$$, and 0 represents the element of the elements of the k-tuple $$\mathbf{K}$$ = $$\{a_{1},a_{2}-1, a_{3}-1 \cdots a_{k} -k+1\}$$. Let n = 10 and k = 4, then there are "k-1" zeros(3 zeros in this case). 

<center>
| 1 | 0 | 1 | 0 | 1 | 0 | 1 | 
</center>

Since the order of the zeros in the string does not matter, as they would not change the nature of the string consisted of the elements from $$\mathbf{S}$$

Excluding the 0s, then there are $$\binom{7}{4}$$ ways to arrange the 1s with no two 1s in consecutive orders. 



<br>
<br>

### Question 10:

(a) Using formula (3.9) for r = 2, calculate the sums  $$\sum_{i=2}^{n}i(i − 1)$$ and $$\sum_{i=1}^{n} i^{2}$$. 

formula 3.9

$$\binom{r}{r}+\binom{r+1}{r}+\binom{r+2}{r}+ \cdots \binom{n}{r}=\binom{n+1}{r+1}$$

formula 3.5

$$\binom{n-1}{k-1}+\binom{n-1}{k}=\binom{n}{k}$$


When r = 2, according to formula 3.9

$$\sum_{i=2}^{n}\binom{i}{2} = \binom{2}{2}+\binom{2+1}{2}+\binom{2+2}{2}+ \cdots \binom{n}{2} = \binom{n+1}{3} $$

$$\sum_{i=2}^{n}\binom{i}{2} = \sum_{i=2}^{n} \frac{i!}{2!(i-2)!}=\sum_{i=2}^{n} \frac{i(i-1)}{2} \implies \frac{1}{2}\sum_{i=2}^{n}i(i-1)$$

Therefore 

$$\sum_{i=2}^{n}i(i-1) = 2\binom{n+1}{3}$$ 

Also

$$\sum_{i=2}^{n}i(i-1) = \sum_{i=2}^{n} i^{2}-i =  \sum_{i=2}^{n} i^{2}-\sum_{i=2}^{n}i$$

And because when i = 1, the term is 0. so the starting i can be changed to 1 without any impact. 

$$\sum_{i=1}^{n}i(i-1) = \sum_{i=1}^{n} i^{2}-i =  \sum_{i=1}^{n} i^{2}-\sum_{i=1}^{n}i$$

We observe that

$$\binom{n}{2} = \frac{n!}{2!(n-2)!} \implies \frac{n(n-1)}{2} \implies \sum_{i=1}^{n-1}i$$

because $$\sum_{i=1}^{n}i = \frac{n(n+1)}{2}$$ so 


$$\binom{n+1}{2} = \frac{n+1!}{2!((n+1)-2)!} = \frac{n(n+1)}{2} \implies \sum_{i=1}^{n}i$$



By the inclusion and exclusion principle 

$$\sum_{i=1}^{n}i^{2}=2\binom{n+1}{3}+\binom{n+1}{2}$$


<br>
<br>

(b) Using (a) and (3.9) for r = 3, calculate $$\sum_{i=1}^{n} i^{3}$$

We see that

$$\sum_{i=3}^{n}\binom{i}{3}=\sum_{i=3}^{n}\frac{(i!)}{3!(i-3)!} \implies \sum_{i=3}^{n}\frac{i(i-1)(i-2)}{3!} = \frac{1}{6}\sum_{i=3}^{n}i(i-1)(i-2)$$

<br>
<br>

Because $$i(i-1)(i-2) = i^{3}-3i^{2}+2i$$ and by formula 3.9, therefore 


$$ \binom{n+1}{4} = \frac{1}{6} \sum_{i=3}^{n} i{3}-3i^{2}+2i = \frac{1}{6} \left( \sum_{i=3}^{n} i^{3}-3\sum_{i=3}^{n} i^{2}+ 2\sum_{i=3}^{n}i \right)$$

And also the terms sum to 0 when i = 1 and 2, so the starting i can be changed from 3 to 1 without any impact. 

$$ \binom{n+1}{4} = \frac{1}{6} \left( \sum_{i=1}^{n} i^{3}-3\sum_{i=1}^{n} i^{2}+ 2\sum_{i=1}^{n}i \right)$$


$$ 6 \cdot \binom{n+1}{4} + \left( 3\sum_{i=1}^{n} i^{2} - 2\sum_{i=1}^{n}i \right)=  \sum_{i=1}^{n} i^{3}$$

With the results from (a), then 

$$ 6 \cdot \binom{n+1}{4} + \left( 3 \cdot 2\binom{n+1}{3}+ 3\binom{n+1}{2} - 2\binom{n+1}{2} \right)=  \sum_{i=1}^{n} i^{3}$$

$$ 6 \cdot \binom{n+1}{4} + \left( 6 \binom{n+1}{3} + \binom{n+1}{2} \right)=  \sum_{i=1}^{n} i^{3}$$

$$ 6 \left( \binom{n+1}{4} + \binom{n+1}{3} \right) + \binom{n+1}{2} =  \sum_{i=1}^{n} i^{3}$$

By the pascal identity 

$$ 6 \binom{n+2}{4} + \binom{n+1}{2} =  \sum_{i=1}^{n} i^{3}$$

Expand the terms

$$ 6\frac{(n+2)!}{4!(n+2-4)!}+\frac{(n+1)!}{2!(n+1-2)!} \implies \frac{n^{2} + 2 n^{3} + n^{4}}{4} \implies \left(\frac{(n+1)n}{2}\right)^{2} =\sum_{i=1}^{n} i^{3}$$

Therefore the answer is $$ \left(\frac{(n+1)n}{2}\right)^{2} $$

### Question 11:
Prove the binomial theorem by induction on n.

Let P(n) be the proposition such that

$$(1+x)^{n} = \sum_{k=0}^{n} x^{k}$$

To perform PMI, set up the base case p(1) such that

$$(1+x)^{1} = \sum_{k=0}^{1} \binom{1}{k}x^{k} \implies \binom{1}{0}x^{0}+\binom{1}{1}x^{1} = 1+x$$

Therefore, P(1) is true. 

Now, suppose there is n-1 and let's assume P(n-1) such that

$$(1+x)^{n-1} = \sum_{k=0}^{n-1} \binom{n-1}{k}x^{k}$$ 

Then by the principle of PMI, $$P(n-1) \implies P(n)$$

$$P(n) = (1+x)^{n} = (1+x)(1+x)^{n-1} \implies (1+x) \sum_{k=0}^{n-1}\binom{n-1}{k}x^{k} $$ 

Then 

$$(1+x)^{n} \implies \sum_{k=0}^{n} \binom{n-1}{k}x^{k} + x\sum_{k=0}^{n} \binom{n-1}{k}x^{k} \implies \sum_{k=0}^{n} \binom{n-1}{k}x^{k} + \sum_{k=0}^{n} \binom{n-1}{k}x^{k+1}$$

because $$ \sum_{k=0}^{n} \binom{n-1}{k}x^{k+1} = \sum_{k=0}^{n} \binom{n-1}{k-1}x^{k}$$ 

$$(1+x)^{n} \implies \left( \sum_{k=0}^{n} \binom{n-1}{k} + \sum_{k=0}^{n} \binom{n-1}{k-1} \right) x^{k}$$

According to the pascal identity 

$$(1+x)^{n} \implies \sum_{k=0}^{n} \binom{n}{k}x^{k}$$

### Question 19:

How many ways are there to arrange 7 elves and 5 goblins in a row in such a way that no goblins stand next to each other?

let the eleves be 1s and 0s be a spot between them and next to them. 

010101010101010

now, the 5 goblins can be place in any of the 8 spots represented by 0s in the string, that implies there are $$\binom{8}{5}$$ ways of doing so. Also, there are 5! ways to shuffle the golins, and 7! ways to shuffle the elves. Therefore, according to the product rule, There are $$5!7!\binom{8}{5} = \frac{5!7!8!}{5!3!} = \frac{7!8!}{3!} = 33868800$$ ways to do so. 

## Assignment 4

Chapter 3.7

### Question 1: 

(Sieve of Eratosthenes) How many numbers are left in the set
{1, 2, . . . , 1000} after all multiples of 2, 3, 5, and 7 are crossed out?
(Q 3.7.3)


Let N be the finite set {1, 2, . . . , 1000}, then let the $$A_{1},A_{2},A_{3},A_{4}$$ be subsets of N and they are multiples of the prime number 2,3,5 and 7 respectively, then we are to find the set L, which is a subset of N that includes only elements that are not multiples of 2,3,5 and 7.  

Then the number are left in the set N after all multiples of 2,3,5,7 are crossed out are 

$$L = 4 + N - \bigcup_{i=1}^{4}A_{i}$$

Then according to the inclusion and exclusion formula

$$
 \lvert A_1 ∪A_2 ∪A_3 ∪A_4 \lvert  = \\ \lvert A_1 \lvert + \lvert A_2 \lvert + \lvert A_3 \lvert + \lvert A_4 \lvert \\ 
−  \lvert A_1 ∩ A_2 \lvert − \lvert A_1 ∩ A_3 \lvert − \lvert A_1 ∩ A_4 \lvert − \lvert A_2 ∩ A_3 \lvert − \lvert A_2 ∩ A_4 \lvert − \lvert A_3 ∩ A_4 \lvert  \\
+ \lvert A_1 ∩ A_2 ∩ A_3 \lvert + \lvert A_1 ∩ A_2 ∩ A_4 \lvert + \lvert A_1 ∩ A_3 ∩ A_4 \lvert  +  \lvert A_2 ∩ A_3 ∩ A_4 \lvert \\
− \lvert A_1 ∩ A_2 ∩ A_3 ∩ A_4 \lvert .
$$

Then 

N = 1000, the total number of elements in the set

$$A_{1}= \lfloor \frac{1000}{2} \rfloor = 500$$

$$A_{2}= \lfloor \frac{1000}{3} \rfloor = 333$$

$$A_{3}= \lfloor \frac{1000}{5} \rfloor = 200$$

$$A_{4}= \lfloor \frac{1000}{7} \rfloor = 142$$

$$\lvert A_1 ∩ A_2 \lvert = \lfloor \frac{1000}{2 \cdot 3} \rfloor = 166$$

$$\lvert A_1 ∩ A_3 \lvert = \lfloor \frac{1000}{2 \cdot 5} \rfloor = 100$$

$$\lvert A_1 ∩ A_4 \lvert = \lfloor \frac{1000}{2 \cdot 7} \rfloor = 71$$

$$\lvert A_2 ∩ A_3 \lvert = \lfloor \frac{1000}{3 \cdot 5} \rfloor = 66$$

$$\lvert A_2 ∩ A_4 \lvert = \lfloor \frac{1000}{3 \cdot 7} \rfloor = 47$$

$$\lvert A_3 ∩ A_4 \lvert = \lfloor \frac{1000}{5 \cdot 7} \rfloor = 28$$

$$\lvert A_1 ∩ A_2 ∩ A_3 \lvert = \lfloor \frac{1000}{2 \cdot 3 \cdot 5} \rfloor = 33$$

$$\lvert A_1 ∩ A_2 ∩ A_4 \lvert = \lfloor \frac{1000}{2 \cdot 3 \cdot 7} \rfloor = 23$$

$$\lvert A_1 ∩ A_3 ∩ A_4 \lvert = \lfloor \frac{1000}{2 \cdot 5 \cdot 7} \rfloor = 14$$

$$\lvert A_2 ∩ A_3 ∩ A_4 \lvert = \lfloor \frac{1000}{3 \cdot 5 \cdot 7} \rfloor = 9$$

$$\lvert A_1 ∩ A_2 ∩ A_3 ∩ A_4 \lvert = \lfloor \frac{1000}{2 \cdot 3 \cdot 5 \cdot 7} \rfloor = 4$$

Then 

L = 4 + 1000 - (500 + 333 + 200 + 142 - 166 - 100 - 71 - 66 - 47 - 28 + 33 + 23 + 14 + 9 - 4)

L = 232

If 2,3,5,7 are considered multiple of 1, in that case, L = 232-4 = 228.


### Question 2: 

How many numbers n < 100 are not divisible by a square of any integer
greater than 1?
(Q 3.7.4)

There are 9 perfect squres less than 100 and great than 1. They are $$\{4, 9, 16, 25, 36, 49, 64, 81\}$$

And we know that 16,36,64 are multipe of 4. 81 is multiple of 9. So, only 4,9,25,49 count. 

So, let S be a finite set = $$\{1,2,3,...,99\}$$, and let $$A_{1},A_{2},A_{3},A_{4}$$ be the set contains elements that are multiples of 4,9,25,49, and let L be the set contains elements that are not divisible by 4,9,25,49. 

Then according to the inclusion and exclusion principle(like that from the privious question).


$$ \lvert A_{1} \lvert  = 25, \ \lvert  A_{2} \lvert =11, \lvert A_{3}\lvert =3, \ \lvert A_{4} \lvert =2$$ 

and 

$$ \lvert A_{1} \cap A_{2} \lvert = 3 \ because \ \lfloor \frac{100}{4 \cdot 9} \rfloor = 2$$

$$\lvert A_{1} \cap A_{3} \lvert = 3 \ because \ \lfloor \frac{100}{4 \cdot 9} \rfloor = 1$$

And the followings are all 0.
$$A_{1} \cap A_{4} \\ A_{2} \cap A_{3} \\ A_{2} \cap A_{4} \\ A_{3} \cap A_{4} \\ 
\lvert A_1 ∩ A_2 ∩ A_3 \lvert \\ \lvert A_1 ∩ A_2 ∩ A_4 \lvert \\ \lvert A_1 ∩ A_3 ∩ A_4 \lvert  \\  \lvert A_2 ∩ A_3 ∩ A_4 \lvert \\ \lvert A_1 ∩ A_2 ∩ A_3 ∩ A_4 \lvert $$ 


so $$ L = \lvert S \lvert - \lvert A_{1} \lvert -\lvert A_{2} \lvert -\lvert A_{3} \lvert -\lvert A_{4} \lvert + \lvert A_{1} \cap A_{2} \lvert + \lvert A_{1} \cap A_{3} \lvert = 99 - 25 + 11 + 3 + 2 - 2 - 1 = 61$$


The following table list all the multiples of the square of integers less than 100. 

| n | $$n^{2}$$ multiples | Total |
|:--- |:--- |:--- |
| 2 | 4,8,12,16,20,24,28,32,36,40,44,48,52,56,60,64,68,72,76,80,84,88,92,96,100 | 25 |
| 3 | 9,18,27,36,45,54,63,72,81,90,99 | 11 |
| 4 | 16,32,48,64,80,96 | 6 |
| 5 | 25,50,75 | 3 |
| 6 | 36,72 | 2 |
| 7 | 49,98 | 2 |
| 8 | 64 | 1 |
| 9 | 81 | 1 |



Chapter 3.8

### Question 3
1. There are n married couples attending a dance. How many ways are there to form n pairs for dancing if no wife should dance with her husband?

$$D(n) = n! \left( 1-\frac{1}{1!}+\frac{1}{2!} - \cdots + (-1)^{n}\frac{1}{n!}\right) $$

### Question 4

Determine the number of permutations with exactly one fixed
point. (Q 3.8.2a) 

Assume here are n points, And there is 1 point is fixed, and the other points are free to be randomly chosen. So the permutation is (n-1)!

### Question 5

(b) Count the permutations with exactly k fixed points.
(Q 3.8.2b)

Assume there are n points, and also k of the points are fixed. That means that the rest of the points can be chosen arbitarily. Also, there are C(k, i) ways to choose i elements from k. So, there are

$$D_{n}=n!-\binom{k}{1}(n-1)!+\binom{k}{2}(n-2)!......+(-1)^{n}\binom{k}{k}(n-n)!$$ ways to count the permutations with exactly k fixed points. 



### Question 6

What is wrong with the following inductive “proof” that D(n) = (n−1)! for all n ≥ 2? Can you find a false step in it? For n=2, the formula holds, so assume n ≥ 3. Let π be a permutation of $$\{1,2,...,n−1\}$$ with no fixed point. We want to extend it to a permutation π′ of $$\{1,2,...,n\}$$ with no fixed point. We choose a number $$i ∈ \{1, 2, . . . , n − 1\}$$, and we define $$π′(n) = π(i), π′(i) = n$$, and $$π′(j) = π(j)$$ for $$j ≠ i,n$$. This defines a permutation of $$\{1,2,...,n\}$$, and it is easy to check that it has no fixed point. For each of the $$D(n − 1) = (n − 2)!$$ possible choices of π, the index i can be chosen in n − 1 ways. Therefore, $$D(n) = (n − 2)! · (n − 1) = (n − 1)$$!.

The mistake is in the following step:

it defines that $$π′(n) = π(i), π′(i) = n$$, and $$π′(j) = π(j)$$. Then we can see that according to this definition, 
since $$π′(j) = π(j), π′(j) = j$$. But $$π(j) = j$$ implies there is a fixed point. So, it is a contradiction. 

also if $$π$$ be a permutation of $$\{1,2,...,n−1\}$$ and $$π′$$ as a permuntation of $$\{1,2,...,n\}$$ with no fixed point, as an extension of  $$π$$. Let's assume that it is indeed $$π′(j) = π(j)$$, then $$π′(j) =\{1,2,...,j\} = j! $$ and $$π(j)=\{1,2,...,j-1\}=(j-1)!$$ according to its own definition of $$π(j)$$ and $$π′(j)$$, but $$j! ≠ (j-1)!$$, so this is a contradition. 

### Question 7
How many permutations of the numbers 1, 2, . . . , 10 exist that map no even number to itself?
Applying the answer from question 5. we know that there are 5 even numbers in the set {1, 2, . . . , 10}
so, k = 5 and n = 10. Therefore, the formula is
$$10!-\binom{5}{1}(10-1)!+\binom{5}{2}(10-2)!-\binom{5}{3}(10-3)!+\binom{5}{4}(10-4)!-\binom{5}{5}(10-5)! = 2170680$$.

## Assignment 5


### Question 1 (Q5)
Call a graph $$G = (V, E)$$ vertex-transitive if for any two vertices $$v, v′ ∈ V$$ an automorphism $$f : V → V$$ of G exists (see Exercise 3) $$with \ f(v) = v′$$. Similarly, G is edge-transitive if for any two edges $$e,e′ ∈ E$$ an automorphism $$f:V →V$$ exists with $$f(e)=e′$$ (if$$ e=\{u,v\}$$ then the notation $$f(e)$$ stands for the set $$\{f(u),f(v)\})$$.

**(a) Prove that the graphs in Exercise 1 is vertex-transitive**

The graphs from Exercise 1 are Petersen graph and also called Kneser graph $$KG_{5,2}$$; this means that it has one vertex for each 2-element subset of a 5-element set, and two vertices are connected by an edge if and only if the corresponding 2-element subsets are disjoint from each other.

From the images, we see that $$G_{1} \cong G_{2} \cong G_{3}$$, thus they are automorphic and $$V(G_{1})=\{a,b,...j\},V(G_{2})=\{I,II,III,...,X\},V(G_{3})=\{A,B,....J\}$$. Let there be a set $$ N = \{1,2,3,4,5\}$$ Then, by definition of Kneser graph $$KG_{5,2}$$, $$\forall x \in V(G_{1}),\forall y \in V(G_{2}),\forall z \in V(G_{3})$$, such that $$x,y,z$$ is labelled uniquely with $${i,j}$$ and $$i,j \in N$$. 

Finally, we see that there is a bijection between $$G_{1}$$ and $$G_{2}$$, such that $$f:V(G_{1}) \to V(G_{2})$$. For example, a from $$G_{1}$$ is mapped to VII from $$G_{2}$$ and edges are perserved(see figures below). Then, there is also a bijection between $$G_{2}$$ and $$G_{3}$$, such that $$g:V(G_{2}) \to V(G_{3})$$, For instance, VII from $$G_{2}$$ is mapped to A from $$G_{3}$$. We also observe that $$G_{1} ,G_{2}, G_{3}$$ obey the rules of Kneser graph $$KG_{5,2}$$, such that two vertices are connected by an edge if and only if the corresponding 2-element subsets are disjoint from each other. For example, $$\{\{5,2\},\{1,3\}\}=\{a,b\} \to \{f(a),f(b)\}=\{VII,VI\}=\{\{5,2\},\{1,3\}\}$$ and $$\{\{5,2\},\{1,3\}\}$$ are disjoint.

In conclusion, there is a bijection between $$G_{1}$$ and $$G_{3}$$ such that, $$g \circ f:G_{1} \to G_{3}$$. Therefore, $$G_{1}, G_{2}, G_{3}$$ are vertex transitive. 

<figure>
<img src = "{{root_url | prepend: site.baseurl}}/asset/graph_theory/pic/homework/assign-5/automorphism-a.png" width = "500">
<figcaption> G1</figcaption>
</figure>

<figure>
<img src = "{{root_url | prepend: site.baseurl}}/asset/graph_theory/pic/homework/assign-5/automorphism-b.jpeg" height = "500">
<figcaption> G2</figcaption>
</figure>

<figure>
<img src = "{{root_url | prepend: site.baseurl}}/asset/graph_theory/pic/homework/assign-5/automorphism-d.png" width = "500">
<figcaption> G3</figcaption>
</figure>



**(b) Decide whether each vertex-transitive graph is edge-transitive as well.**

By the definition above, if a graph is vertex-transitive, then it must be edge-transitive too. Because any automorphism of G perserves edges, therefore, if $$e_{i} \in G(E)$$ and $$e_{i} = \{u,v\}$$ and $$ u,v \in G(V)$$, then there exists $$e_{j} \in G'$$, and $$e_{j} =\{f(u),f(v)\}$$ such that $$f(u),f(v) \in G'(V)$$, such graph is called symetric. 

**(c) Find a graph that is edge-transitive but not vertex-transitive.**

This following graph is not vertex transitive, because it is a bipartite graph which has two groups of vertices, $$V_{1}$$ and $$V_{2}$$, and vertices from either set can not be connected to each other, according to the definition of bipartite graph. G is called bipartite if the set V(G) can be divided into two disjoint sets $$V_{1}$$ and $$V_{2}$$ in such a way that each edge of G connects a vertex from V1 to a vertex from $$V_{2}$$. Written in symbols, $$E(G) ⊆ \{\{v,v′\}: v ∈ V_\{1\},v′ ∈ V_{2}\}$$

<figure>
<img src = "{{root_url | prepend: site.baseurl}}/asset/graph_theory/pic/homework/assign-5/bipartite.png" width = "300">
<figcaption>Example graph</figcaption>
</figure>

### Question 2 (Q6)

**How many graphs on the vertex set $$\{1,2,...,2n\}$$ are isomorphic to the graph consisting of n vertex-disjoint edges (i.e. with edge set $$\{\{1,2\},\{3,4\},...,\{2n−1,2n\}\}$$?**

![graph]({{root_url | prepend: site.baseurl}}/asset/graph_theory/pic/homework/assign-5/graph-question-4-1-6.png)

By definition, G is a 1-regular with disjoint union of $$k_{2}$$'s, From the limited example figure above, We see the even number of vertices are colored red, and the odd number ones are colored blue. So, there are n edges in G, and there are n! possible edges that are isomorphic to G, also each edge has two 2 possible vertice pair, namely $$\{a,b\}$$ and $$\{b,a\}$$,thus it has $$2^{n}$$ possibility. According to the product rule, there are $$n!2^{n}-1$$ graphs isomorphic to it. 


### Question 3 (Q7)

**Let V be a finite set. Let G denote the set of all possible graphs with vertex set V . Verify that ∼= (“to be isomorphic”) is an equivalence relation on G.**

An equivalence relation has the 3 qualities, being reflexive, symmetric, and transitive. 

It is reflexive since the identity function from a graph to itself provides the isomorphism (the one-to-one correspondence)-certainly the identity function preserves adjacency and nonadjacency. 

It is symmetric, since if f is a one-to-one correspondence that makes G1 isomorphic to G2, then $$f^{-1}$$ is a one-to-one correspondence that makes G2 isomorphic to G1; that is, $$f^{-1}$$ is a one-to-one and onto function from $$V_{2}$$ to $$V{1}$$ such that c and d are adjacent in G2 if and only if $$f^{1}(c)$$ and $$f_{1}(d)$$ are adjacent in G1 . 

It is transitive, since if $$f$$ is a one-to-one correspondence that makes G1 isomorphic to G2, and g is a one-to-one correspondence that makes G2 isomorphic to G3, then $$g o f$$ is a one-to-one correspondence that makes G1 isomorphic to G3.

Therefore, ("to be isomorphic") is an equivalence relation on G. 


## 4.2

### Question 4 (Q1)

**Prove that the complement of a disconnected graph G is connected. (The complement of a graph G = (V, E) is the graph $$(V,  \binom{V}{2} \setminus E).)$$**


Let there be a disconnected graph G and its complement $$\overline{G}$$. Then, let's select two vertices x and y in $$\overline{G}$$. Then by definition, if x and y are nonadjacent in G, then they are adjacent in $$\overline{G}$$. Moreover,if x and y are adjacent in G then they must be from the same component of G. Let z be an abitrary vertex from a different component of G. Then this implies that $$\{x,z\},\{y,z\} \notin G(E)$$, and $$\{x,z\},\{y,z\} \in \overline{G}(E)$$. Then there exists a path x-z-y in $$\overline{G}$$.Therefore, according to the definition of connectness of of graphs, "a graph G is connected if for any two vertices x,y ∈ V(G), G contains a path from x to y.", In conclusion, the complement of a disconnected graph G is connected. Q.E.D


### Question 5 (Q2)

**What is the maximum possible number of edges of a graph with n vertices and k components?**

When all the components are complete, then they have maximum number of edges.  

Claim: 
When one of the components has only 1 vetex, then the max number of edges is achieved. 

Proof by contradiction. 

Assume that there exist two components and they have n and m vertices, where n,m >1. And suppose that the maximum is achieved here. 

Suppose m > n, and one of the vertices in m is deleted, then this removes m−1 edges. now let's add a new additional vertex to the component with n vertices, and connect it to all its vertices. This will add n edges to that component. Obviously, this contradicts the premise that the graph had maximum number of edges, because the graph has more edges now.

Thus, the maximum is attained for $$n_{1} =n−k+1 and ni = 1 for i=2,3,...,n.$$. As a result, it has $$\frac{(n−k+1)(n−k)}{2}$$ edges.

[reference1](http://math.stackexchange.com/questions/1075692/number-of-edges-in-a-graph-with-n-vertices-and-k-connected-components)
[reference2](https://www.quora.com/What-is-the-maximum-number-of-edges-in-graph-with-n-vertices-and-k-components)

Hint
4.2.2. The most edges are clearly obtained if the components are complete graphs. If their numbers of vertices are $$n1, . . . , nk, \sum ni = k$$, we have  $$\binom{n1}{2}  + ··· +  \binom{nk}{2} $$ edges and we need to maximize this expression as a function of n1,...,nk. Show that if, for example, n1 ≥ n2 > 1, the value doesn’t decrease by increasing n1 by 1 and decreasing n2 by 1. Hence 


### Question 6 (Q4)

**Prove that a graph is bipartite if and only if it contains no cycle of odd length.**

[reference](http://math.stackexchange.com/questions/311665/proof-a-graph-is-bipartite-if-and-only-if-it-contains-no-odd-cycles)

If G is bipartite, then by definition, it has $$V_{1} \cup V_{2}$$ and an edge is formed by a vertex from $$V_{1}$$ to a vertex in $$V_{2}$$, therefore, there is no path exists connecting any 2 elements from either $$V_{1}$$ or $$V_{2}$$. So, to complete a cycle, a path has to be even. 

<figure>
<img src = "{{root_url | prepend: site.baseurl}}/asset/graph_theory/pic/homework/assign-5/bipartite.png" width = "300">
<figcaption>Example graph</figcaption>
</figure>

From the graph, we see that $${1,2,3} = V_{1}, {4,5,6}=V_{2}$$. All vertices in $$V_{1}$$ are colored blue and all vertice in $$V_{2}$$ are colored red. To complete any cycle, such as the highlighted one$$\{e1,e2,e3,e4\}$$, it length has to be 2n. 

### Question 7 (Q5)

**Describe all graphs containing no path (not necessarily induced!) of length 3.**


If v is a vertex with at least 2 neighbors it has to be connected to all vertices of its component. Each component has to be K3 or K1,n .
<figure>
<img src = "{{root_url | prepend: site.baseurl}}/asset/graph_theory/pic/homework/assign-5/graph-no-p3.png" width = "500">
<figcaption>Example graph</figcaption>
</figure>




[dd](http://math.stackexchange.com/questions/272234/describe-all-graphs-without-a-path-of-length-3)
