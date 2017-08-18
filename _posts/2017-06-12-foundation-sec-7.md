---
layout: post
title:  Foundation section 7 2.4 2.5
date:   2017-06-12 08:05:05
categories: Math
tags: foundation modulo congruence relation 
---
* content
{: toc}


## section 2.4 Constructing Bijections

A nice application of equvalence relation is to make bijection. (an universial procedure)






stated $$f:X \to Y$$ not necessarily 1 to 1 or onto. 

### Notation: 

let $$X \to Y$$ be fefined relation on X via $$x \sim y$$ iff $$f(x)=f(y)$$ is an equivelence relation. 

$$X/f$$ for the quotient space or set of equivelence class. 

It's a preimage of any element or some elements in ran(f). 

call these elements level set of f, inspired by topographical map. 

### Notation
let $$f:X \to Y$$, then function $$\Pi_{f}:X \to X/f$$ is defined by $$\Pi_{f}(x)=[x]_{f}$$ 

can define a function $$\hat{f}:X/f \to ran(f)$$ via $$\hat{f}([x])=f(x)$$

so $$f(x)=(\hat{f} \circ \Pi_{f})(x)$$ 

note: it solves the problem like the sin function which is not being injective. by separating the abitrary domain in $$\mathbb{R}$$ into specific subdomains to piece the function together. 

![see picture]({{root_url | prepend: site.baseurl}}/asset/MathFoundation/classnote/lect-7/lect-7-a.png)

### Example 1

$$f(x)=tan(x)$$ 

a level set of f is $$[x]_{f} = \{x+k\pi: k \in \mathbb{Z}\}$$

then let $$X = dom(f)$$, so $$ X/f= \{d[x]_{f}:x \in X\}$$

and $$\hat{f}:X/f \to \mathbb{R}$$ by $$\hat{f}([x])=f(x)$$
so $$tan x = (\hat{f} \circ \Pi_{f})(x)$$

pick $$X= \mathbb{R} \setminus \{\frac{\pi}{2}+k \pi: k \in \mathbb{Z}\}$$

then $$\hat{f}:(\frac{- \pi}{2},\frac{\pi}{2}) \to \mathbb{R}$$ 

call $$\hat{f}(x) = Tan(x)$$ so that $$tan^{-1} x: \mathbb{R}\to (\frac{-\pi}{2},\frac{\pi}{2})$$

arctan(x):

## 2.5

### Modular Arithemetic

### Definition

let $$a,b \in \mathbb{Z}$$, then a divides b, written as $$a \lvert b$$ if there is a $$c \in \mathbb{Z}$$ such that $$ac=b$$

### Definition
let$$x,y,n \in \mathbb{Z}$$, $$n>1$$, then $$x \equiv y \ mod \ n$$ if $$n \lvert (x-y)$$

this relation on $$\mathbb{Z}$$ is called congruence mod n. 

### Theorem
congruence mod n is equivelence relation $$on \ \mathbb{Z}$$

proof:


let $$n \in \mathbb{Z}$$ and $$n > 1$$

**reflexive**

let $$x \in \mathbb{Z}$$ consider $$x \equiv x \ mod \ n$$
means there is a $$n \in \mathbb{Z}$$ such that $$n \lvert (x-x) \implies n \lvert 0$$
so every $$n > 1$$, divides 0, so it is true. 

**sysmmetric:**

suppose $$x \equiv y \ mod \ n \implies n \lvert (x-y)$$ so there is a $$m \in \mathbb{Z}$$ such that $$mn =(x-y) \implies y-x=(-m)n$$ but $$-m \in \mathbb{Z} \implies n \lvert (y-x)$$

**transitive:** 

suppose $$x \equiv y \ mod \ n$$, $$y \equiv z \ mod \ n \implies n \lvert (x - y)$$ and $$n \lvert(y-z)$$

so there are $$m_{1},m_{2} \in \mathbb{Z}$$ 
such that 
$$nm_{1}=x-y \\
nm_{2}=y-z \\
nm_{1}+nm_{2}=x-z \implies n(m_{1}+m_{2})=x-z \\
\implies n \lvert (x-z) \implies x \equiv z \mod \ n$$ Q.E.D

note: make sure $$m$$ is integer. 

### Definition

The equivelence class of the relation $$\equiv_{n}$$ are called congruence classes, residue classes $$mod \ n$$. The set of congruence classes(quotient space) is denoted by $$\mathbb{Z}/n \mathbb{Z}$$

notice $$\mathbb{Z_{n}}$$ is different, but some times it is interchangable, you will learn more in modern algebra. (funnel theorem of finnite blah blah)

### Example
compute 

$$\mathbb{Z}/n \mathbb{Z}$$ for n=2,3,4,5

n=2 want all $$x \in \mathbb{Z}$$ such that $$x \equiv y \ mod \ z$$ 
seems like $$\mathbb{Z}/2 \mathbb{Z}=\{[0],[1]\}$$

$$\mathbb{Z}/3 \mathbb{Z}=\{[0],[1],[2]\}$$

$$[0]=\{0,\pm 3,\pm 6,\pm 9,...\}$$

$$[1]=\{\pm 1,\pm 4,\pm 7,\pm 10...\}$$

$$[2]=\{\pm 2,\pm 5,\pm 8,\pm 11...\}$$

$$\mathbb{Z}/4 \mathbb{Z}=\{[0],[1],[2],[3]\}$$

$$\mathbb{Z}/5 \mathbb{Z}=\{[0],[1],[2],[3],[4]\}$$


### Notation: 
Fix $$n \in \mathbb{N}, n $$ let $$a \in \mathbb{Z}$$
we represent the equivelence of $$a \ mod \n$$

proposition: If $$a \equiv r \ mod \ n, \ b \equiv r \ mod \ n$$ 
then $$\mathbb{Z}/n \mathbb{Z}$$ 

(1)$$(a+b) \equiv (r+s) \ mod \ n$$

(2)$$(ab) \equiv (rs) \ mod \ n$$

this says that the algebraic operation in are inherited from $$\mathbb{Z}$$

$$[a+b]=[a]+[b]$$
$$[ab]=[a] \cdot [b]$$

proof: 
(1) suppose $$a \equiv_{n} r, b \equiv_{n} s \implies n \lvert (a-r), n \lvert (b-s) \implies n \lvert ((a-r)+(b-s)) = n \lvert ((a+b)-(r+s)) \implies (a+b) \equiv_{n} (r+s)$$

(2) notice there are $$i,j \in \mathbb{Z}$$ such that $$a = ni+r$$ and $$b=nj+s$$

$$ab = (ni+r)(nj+s)=n^{2}ij+njr+nis+rs =n(nij+jr+is)+rs \implies ab \equiv_{n} rs$$ Q.E.D

The proposition above also says + and $$\cdot$$ on $$\mathbb{Z}/n \mathbb{Z}$$ are well defined.


### Example 
write out the add/multiplication table of $$\mathbb{Z}/2 \mathbb{Z}$$ and $$\mathbb{Z}/3 \mathbb{Z}$$

![see picture]({{root_url | prepend: site.baseurl}}/asset/MathFoundation/classnote/lect-7/lect-7-b.jpeg)

### Example
What is the last digit of $$7^{7}$$ and $$7^{10}$$

We want to know $$7^{7} \ mod \ 10$$. Notice $$7^{0} \equiv 1,7^{1} \equiv 7,7^{2} \equiv 9,7^{3} \equiv 3,7^{4} \equiv 1$$. 
The residues of $$7^{n} \ mod \ 10$$ repeat themselves every time n increases by 4. Therefore $$m \equiv n \ mod \ 4$$ then $$7^{m} \equiv 7^{n} mod 10$$
So $$7^{7}=7^{4}7^{3} \equiv 1 \cdot 3 \equiv 3$$. So 3 is the last digit of $$7^{7}$$

$$7^{10}$$



