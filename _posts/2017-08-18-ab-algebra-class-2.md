---
layout: post
title: Modern Algebra Class 2
date:   2017-08-18 10:00:00
categories: Math
tags: abstract_algebra classnote
---
* content
{: toc}

### Equivalent class of a modulo n

Let n be a positive intger (n≥2) and let a be an integer. Let[0] represent the equivalent class of a modulo n.
then $$[a]=\{x \in \mathbb{Z} | x \equiv a(mod n)\}$$







By the division algorithm, a = qn+r where 0≤r< n, for unique integer q and r
a-r=qn, so $$a \equiv r(mod(n))$$ then [a]=[r]

By the divison algorithem, there exist integer $$q$$ and $$r$$, such that  $$x=qn+r_1$$, where $$0≤r_1< n$$

So $$x \equiv r_1(modn)$$, by the transitive property, $$r \equiv a(mod n)$$, $$a \equiv x(mod n)$$, and $$x \equiv r_1(mod n)$$

if follows that $$r \equiv r_1(mod n)$$, Since, $$0≤r,r_1< n$$, $$r$$ and $$r_1$$ must be equal. 

Thus we use $$[0],[1],[2],...,[n-1]$$ to represent the equivalence classes modulo n. 

Let [a] and [b] represents equivalence classes modoulo n.



**note:** 
$$r \equiv r_1(mod n)$$
$$r-r_1(mod n)$$
$$r-r_1$$ is a multiple of n.

$$0≤r,r_1, < n$$
$$0,1,2,...n-1$$

## need to add sign with circle plus.
addition : $$[a] \oplus [b] = [a+b]$$.
multiplication: $$[a] \odot [b]$$

(Essentially, we take the remainder when $$a+b or ab$$ is divided by n)

b1
(table note from written notebook)


## Complex number
$$\mathbb{C}=\{a+bi\}| a,b$$ are real number and $$i = \sqrt{-1}$$

$$(a+bi)+(c+di)=(a+c)+(b+d)i$$

$$(a+bi)(c+di)=(ac-bd)+(ad+bc)i$$

### Polar form(Trigonometric form)

$$\mathbf{Z}=a+bi$$
$$\mathbf{Z}=r(Cos \theta)+i Sin \theta$$

$$r=\sqrt{a^2+b^2}$$ is the modulus of $$\mathbf{Z}$$

(NOTE:	$$\lvert \mathbf{Z} \lvert$$ represents the modulous of $$\mathbf{Z}$$
$$tan \theta = \frac{b}{a} \theta = tan^{-1} \left( \frac{b}{a} \right)$$

$$\mathbf{Z}= a+bi$$

$$\overline{\mathbf{Z}}$$ is the complex conjugate of $$\mathbb{Z}$$

### Example

$$\mathbf{Z}=1+i = r(Cos \theta + i Sin \theta)$$ so 

$$r = |\mathbf{Z}| = \sqrt{1^2+1^2}= \sqrt{2}$$

note: $$1= rCos\theta$$ and $$1= r Sin \theta$$
$$Cos \theta = \frac{1}{2}= Sin \theta$$

## Theorem

If $$Z_1=r(Cos \theta + i Sin \theta)$$ and $$Z_2 = s(Cos \phi + i Sin \phi)$$ are complex number, then 

$$Z_1Z_2= r s[Cos(\theta + \phi)+ i Sin(\theta + \phi)]$$

Proof(sketch)

$$Z_1Z_2=[r(Cos \theta + i Sin \theta)][s(Cos \phi + i Sin \phi)]$$
$$Z_1Z_2= rs[(Cos\theta Cos \phi -Sin \theta Sin \phi)+(Cos \theta Sin \phi+ Sin \theta Cos \phi)i]$$
$$Z_1Z_2=rs[Cos(\theta + \phi)+iSin(\theta+\phi)]$$

### Corollary(DeMoivre's Theorem)
Let n be a positive integer and let $$Z= r(Cos \theta + iSin \theta)$$, Then $$Z^n=r^n(Cos(n\theta)+i Sin(n \theta))$$

proof:(By induction on n)

base case

n=1
$$Z^1=r^1(Cos(1 \theta)+i Sin(1 \theta))$$
valid

Let's assume there is k such that 

$$Z^k=r^k(Cos(k \theta)+i Sin(k \theta))$$ then $$Z^k \cdot Z \implies Z^{k+1}$$
$$r^k(Cos(k \theta)+i Sin(k \theta)) \cdot r(Cos(\theta)+i Sin(\theta)) \implies r^{k+1}(Cos({k+1} \theta)+i Sin({k+1} \theta))$$

$$r^k r = Cos(k \theta) Cos(\theta) + Cos(k \theta)i Sin(\theta)+ i Sin(k \theta) Cos(\theta)+i^2 Sin(k \theta) Sin(\theta) \\
\implies r^{k+1} Cos((k+1) \theta) + i Sin((k+1)\theta)$$ 

note: by trigonometric identy $$Sin(a+b) = Sin(a)Cos(b)+Sin(B)Cos(A)$$ and $$Cos(a+b)=Cos(a)Cos(b)-Sin(a)Sin(b)$$


### The n nth roots of unity

Let n be a positive integer, solutions to the equation $$Z^n=a$$ are called the nth roots of a, where a is a complex number, If 
$$Z=r(Cos \theta + i Sin \theta)$$ and $$a=s(Cos \phi+ i Sin \phi)$$, then $$Z^n=r^n(Cos(n \theta)+iSin(n \theta))$$. Thus $$r^n=s$$ so
$$r = \sqrt[n]{s}$$ and $$Cos(n \theta)=Cos \phi$$ and $$Sin(n \theta)=Sin \phi$$ so 
$$n \theta= \phi+ 2 \pi k$$
Since Sine and Cosine are periodic with period $$2 \pi$$,
Hence, $$\theta=\frac{\phi+2 \pi k}{n}$$, for $$k = 0,1,2,...,n-1$$

When $$a =1,$$ the nth roots of a are called the nth roots of unity. 

$$Z_k = Cos \frac{2 \pi k}{n}+i Sin \frac{2 \pi k}{n} , k= 0,1,2,...,n-1$$ 



An nth degree polynomial has, at most, n real zeros.

