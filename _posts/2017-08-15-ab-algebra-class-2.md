---
layout: post
title: Modern Algebra Class 2
date:   2017-08-18 10:00:00
categories: Math
tags: abstract_algebra classnote
---
* content
{: toc}


Let n be a positive intger (n≥2) and let a be an integer. Let[0] represent the equivalent class of a modulo n.
then $$[a]=\{x \in Z | x \cong a(mod n)\}$$

By the division algorithm, a = qn+r where 0≤r< n, for unique integer q and r
a-r=qn, so $$a \cong r(mod(n))$$ then [a]=[r]

By the divison algorithem, there exist integer q and r, such that  x=qn+r, where 0≤r_1< n

## (ask question 1)
So $$x \cong r_1(modn)$$, by the transitive property, $$r \cong a(mod n)$$, $$a \cong x(mod n)$$, and $$x \cong r_1(mod n)$$

if follows that $$r \cong r_1(mod n)$$, Since, 0≤r,r_1< n, r and $$r_1$$ must be equal. 

Thus we use $$[0],[1],[2],...,[n-1]$$ to represent the equivalence classes modulo n. 

Let [a] and [b] represents equivalence classes modoulo n.



note: 
$$r \cong r_1(mod n)$$
$$r-r_1(mod n)$$
$$r-r_1$$ is a multiple of n.

$$0≤r,r_1, < n$$
$$0,1,2,...n-1$$

## need to add sign with circle plus.
addition : $$[a] [b] = [a+b]$$.(Essentially, we take the remainder when a+b/ ab is divided by n)
multiplication: $$[a] [b]$$

b1
(table note from written notebook)


## Complex number
$$\mathbb{C}=\{a+bi\}| a,b are real number and i = \sqrt{-1}$$
$$(a+bi)+(c+di)=(a+c)+(b+d)i$$
$$(a+bi)(c+di)=(ac-bd)+(ad+bc)i$$

### Polar form(Trigonometric form)
$$\mathbb{Z}=a+bi$$
$$\mathbb{Z}=r(cos \theta)+i sin \theta$$

$$r=\sqrt{a^2+b^2}$$ is the modulus of $$\mathbb{Z}$$
(NOTE:	$$|\mathbb{Z}|$$ represents the modulous of $$\mathbb{Z}$$

$$tan \theta = \frac{b}{a} \\
\theta = tan^-1 \left(\frac{b}{a})\right$$

$$\mathbb{Z}= a+bi$$

$$\overline{\mathbb{Z}}$$ is the complex conjugate of $$\mathbb{Z}$$

### Example

$$Z=1+i = r(cos \theta + i sin \theta)$$ so 

$$r = |Z| = \sqrt{1^2+1^2}= sqrt{2}$$

note: $$1= rcos\theta$$ and $$1= r sin \theta$$

$$cos \theta = \frac{1}{2}= sin \theta$$

## Theorem
If $$Z_1=r(cos \theta + i sin \theta)$$ and $$Z_2 = s(cos \phi + i sin \phi)$$ are complex number, then 
$$Z_1Z_2= r s[cos(\theta + \phi)+ i sin(\theta + \phi)]$$
Proof(sketch)
$$Z_1Z_2=[r(cos \theta + i sin \theta)][s(cos \phi + i sin \phi)]$$
$$Z_1Z_2= rs[(cos\theta cos \phi -sin \theta cos \phi)+(cos \theta sin \phi+ sin \theta cos \phi)i]$$
$$Z_1Z_2=rs[cos(\theta + \phi)+isin(\theta+\phi)]$$

### Corollary(DeMoivre's Theorem)
Let n be a positive intege and let $$Z= r(cos \theta + isin \theta)$$, Then $$Z^n=r^n(cos(n\theta)+i sin(n \theta))$$
proof:(By induction on n)



The n nth roots of unity
Let n be a positive integer, solutions to the equation $$Z^n=a$$ are called the nth roots of a, where a is a complex number, If 
$$Z=r(cos \theta + i sin \theta)$$ and $$a=s(cos \phi+ i sin \phi)$$, then $$Z^n=r^n(cos(n \theta)+isin(n \theta))$$. Thus $$r^n=s$$ so
$$r = n_sqrt{s}$$ and $$cos(n \theta)=cos \phi$$ and $$sin(n \theta)=sin \phi$$ so 
$$n \theta= \phi+ 2 \pi k$$
Since sine and cosine are periodic with period $$2 \pi$$,
Hence, $$\theta=\frac{\phi+2 \pi k}{n}$$, for $$k = 0,1,2,...,n-1$$

When $$a =1,$$ the nth roots of a are called the nth roots of unity. 

$$Z_k = cos \frac{2 \pi k}{n}+i sin $$




