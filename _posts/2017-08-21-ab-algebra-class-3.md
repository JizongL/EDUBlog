---
layout: post
title: Modern Algebra Class 3
date:   2017-08-21 10:00:00
categories: Math
tags: abstract_algebra classnote
---
* content
{: toc}

## Function

### Definition: 

Let G be a nonempty set, A binary operation on G is a function. 






which assign to each ordered pair $$(a,b)$$ of elements of G a unique element of G, denoted ab. 

note: 
$$*: G \times G \to G$$
$$(a,b) \to a * b$$

We say that G is closed under a binary operation defined on G.


### Definition: 

Let G be a nonempty set of elements on which there is defined a binary operaion. Which associates the element ab of G to the ordered pair $$(a,b)$$ of elments of G. Then, G is a group. under the binary operation if the following axioms are satisifed. 

1) Associativity
(ab)c = a(bc) for all elements a,b,c in G. 

2) Identity 
There exists an element e in G such that ea = ae = a. for all elements a in G. (e is called the identity)

3) Inverse
For each element a in G, there exists an element a' such that aa'=a'a=e
(a' is called an inverse for a)

### Definiton: 
Let G be a group, the group G is called alelian if $$ab=ba$$ for all elements a and b in G. (communtity property)

### Example
1: ($$\mathbb{Z},+$$), the set of integers under addition. 0 is the identity. 
$$-n$$ is the inverse of the integer n. 

2: ($$\mathbb{Q},+$$) the set of rational numbers under addition, ($$\mathbb{R},+$$) the set of real number under addition, and ($$\mathbb{C},+$$), the set of complex numbers under addition, are all abelian groups. 

3: 

$$\mathbb{Q^*} = \mathbb{Q}-\{0\}$$

$$\mathbb{R^*} = \mathbb{R}-\{0\}$$

$$\mathbb{C^*} = \mathbb{C}-\{0\}$$

4: 
$$(\mathbb{Q^*},)(\mathbb{R^*},)$$, and $$(\mathbb{Q^*},)$$ are all alelian groups(The binary operation is the usual multiplicaiton)

Irrational Number = $$\mathbb{R} -\mathbb{Q}$$, does not form a group under the usual binary operation of addition and multiplicaiton. 

note: for example

$$\sqrt{2}\sqrt{2}=2$$ and 2 is not irrational

$$\sqrt{2}+\sqrt{-2}=0$$ and 0 is not irrational


Example: 


$$M_{2,2} = \begin{bmatrix} 
 a & b \\
 c & d \\
 \end{bmatrix}$$

 a,b,c and d are real numbers

So, M_{22} is an albelian group under matrix addition. 

1: identity is $$M_{2,2} = \begin{bmatrix} 
 0 & 0 \\
 0 & 0 \\
 \end{bmatrix}$$



The inverse of $$M_{2,2} = \begin{bmatrix} 
 a & b \\
 c & d \\
 \end{bmatrix}$$

  is 
$$M_{2,2} = \begin{bmatrix} 
 -a & -b \\
 -c & -d \\
 \end{bmatrix}$$

Example: $$\mathbb{Z} =\{0,1,2,...,n-1\}$$ (n>1)

$$\mathbb{Z_n}$$ is an albelian group under addition modulo n. 

e.g. n=4

This is the group table for $$\mathbb{Z_4}$$

$$
\begin{array}{c|lcr}
\oplus & 0 & 1 & 2 & 3\\
\hline
0 & 0 & 1 & 2 & 3 \\
1 & 1 & 2 & 3 & 0\\
2 & 2 & 3 & 0 & 1 \\
3 & 3 & 0 & 1 & 2 \\
\end{array}

\begin{array}{c|lcr}
\otimes & 0 & 1 & 2 & 3\\
\hline
0 & 0 & 0 & 0 & 0 \\
1 & 0 & 1 & 2 & 3\\
2 & 0 & 2 & 0 & 2 \\
3 & 0 & 3 & 2 & 1 \\
\end{array}
$$

n = 1 $$ G = {e} \quad \begin{array}{c | lcr}
\cdot & e \\
\hline
e & e \\
\end{array}
$$


n = 2  $$ G = {e,a} \quad \begin{array}{c | lcr}
\cdot & e & a \\
\hline
e & e & a \\
a & a & e \\
\end{array}
$$



n = 3  $$ G = {e,a,b} \quad \begin{array}{c | lcr}
\cdot & e & a & b \\
\hline
e & e & a & b \\
a & a & b & e \\
b & b & e & a \\
\end{array}
$$
$$
\begin{array}{c | lcr}
\cdot & e & a & b \\
\hline
e & e & a & b \\
a & a & e ? & b \\
b & b & e & a \\
\end{array}
$$

The second one on the right does not work, because b is repeated on the last column. 

n = 4  $$ G = {e,a,b,c} \quad \begin{array}{c | lcr}
\cdot & e & a & b & c\\
\hline
e & e & a & b & c \\
a & a & b & c & e \\
b & b & c & e & a \\
c & c & e & a & b \\
\end{array}
$$
$$
G = {e,a,b,c} \quad \begin{array}{c | lcr}
\cdot & e & a & b & c\\
\hline
e & e & a & b & c \\
a & a & e & c & b \\
b & b & c & e & a \\
c & c & b & a & e \\
\end{array}
$$

Both satisify the requirement of a group. (no repeating on either row or column)






Example (small groups) $$\lvert G\lvert=n$$
##see notebook # h1


Example: $$GL(n,\mathbb{R})$$ is the set of invertible n x n matriices. with real number as entries. (over the real numbers and Det$$A≠0$$)
$$Det(AB)=Det(A)Det(B)$$

$$Gl(n,\mathbb{R})$$ is a nonabelian group under matrix multiplication. 

For A in $$GL(n,\mathbb{R})$$ the inverse is $$A^{-1}$$ and $$Identity I_n$$


More examples from the books

Example 18

Special linear group of $$2 \times 2$$ over $$\mathbb{Q},\mathbb{R},\mathbb{C}$$ or $$Z_p$$

denoted by SL(2,F), F stands for any of the above. 

When entried are from $$Z_p$$, use modulo p arithmetic to compute determinants. e.g.

Consider $$A = \begin{bmatrix}
3 & 4 \\
4 & 4\\
\end{bmatrix}
$$

Then det $$A = (3 \cdot 4-4 \cdot 4) \ mod \ 5 -4 \ mod \ 5  = 1$$
And the inverse of A is  $$A = \begin{bmatrix}
4 & -4 \\
-4 & 3\\
\end{bmatrix} = \begin{bmatrix}
4 & 1 \\
1 & 3\\
\end{bmatrix}
$$

Then 
$$
\begin{bmatrix}
3 & 4 \\
4 & 4\\
\end{bmatrix}

 \begin{bmatrix}
4 & 1 \\
1 & 3\\
\end{bmatrix}
=
 \begin{bmatrix}
1 & 0 \\
0 & 1\\
\end{bmatrix}
$$


p 52
[question to ask](https://math.stackexchange.com/questions/2403092/in-the-set-0-1-2-3-4-5-the-equation-2x-4-has-the-solutions-x)