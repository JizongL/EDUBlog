---
layout: post
title: Modern Algebra Class 4
date:   2017-08-23 10:00:00
categories: Math
tags: abstract_algebra classnote
---
* content
{: toc}

### Example

**The nth roots of unity**

The complex numbers


$$(Z)^k = Cos \frac{2 \pi k}{n} + i Sin \frac{2 \pi k}{n}$$

for $$k = 0,1,2,...,n-1$$ where nn is a postive integer.







There n complex numbers from an abelian group. Under Multiplicaiton;

**Notice that**

$$Z_1 = Cos \frac{2 \pi}{n} + i Sin \frac{2 \pi}{n}$$ Hence
$$(Z)^k = Cos \frac{2 \pi k}{n} + i Sin \frac{2 \pi k}{n}$$

See exmaple 15 on page 47 for the 6th roots of unity. 

### Elementary Properties of Groups

### Theorem: 

1: A group has a unique identity element. 
2: Each element in a group has a unique inverse. 

**Proof**

1: Let G be a group, Suppose that e and f are both idenity elements of G.
Consider the elment ef, using e as an identity for G. 

ef = f and using f as an identity for G. Since there is a binary operation
defined on G, e and f must be the same element of G. 

2: Let G be a group and let a be an element of G, Suppose that b and c are both inverse for a, let e be the identity
element of G. 

Since b is an inverse for a, ab=ba=e, and since c is an inverse of a for a, $$ac=ca=e$$
hence $$c = ce= c(ab) = (ca)b$$ therefore a has a unique inverse in G.





**note:**
(Identity) $$ea=ae=a$$
fir all a in G
(Inverse) $$aa'=a'a=e$$


### Theorem 2.2(cancellation)

In a group, the right and left cancellation laws hold. That, is if ab= ac, then $$b = c$$, and if $$ba=ca$$, then $$b=c$$, for all $$a,b,c$$ in G.

**Proof:**

Let G be a group and let $$a,b,c$$ in G, Let e be the identity of G, suppose that $$ab=ac$$. Let $$a^{-1}$$ be the inverse of a. Then 
$$a^{-1}(ab) = a_{-1}ac$$(by associative property), $$(a^{-1}a)b = (a^{-1}a)c$$ Since e is the identity for G, $$eb=b$$ and $$ec = c$$. Hence b=c

This proves the left cancellation property. 
(student will prove the right cancellation property, $$ba=ca$$ then $$b=c$$)

### Theorem 2.4(shoes - socks theorem)

For any element a and b in a group G, $$(ab)^{-1} = b^{-1}a^{-1}$$

**Proof:**

Let G be a group and let $$a,b \in G$$, Then 

$$(ab)(b^{-1}a^{-1})= [a(bb^{-1})]a^{-1} = [ae]a^{-1} = a a^{-1}=e$$

$$(b^{-1}a^{-1})(ab) = b^{-1}[a^{-1}(ab)] = b^{-1}[(a^{-1} a)b]=b^{-1}[eb] = b^{-1}b =e$$



Hence by the uniqueness of the inverse of ab, the element $$b^{-1}a^{-1}$$ is the inverse of ab.


### Theorem:


If G is a group, and if a and b are any elements of G, then the equations $$ax=b$$ and $$ya=b$$ have unique solutions x and y in G.
Proof: Let G be a group with identity e, and let a and b elements of G. 

Then $$a^{-1}b$$ is an element of G, and $$a(a^{-1}b)=(aa^{-1})b=eb=b$$
So $$x=a^{-1}b$$ is a solution to the equation $$ax=b$$
Suppose that $$x_1$$ and $$x_2$$ are both solutions to the equation $$ax=b$$

Then
$$ax_1=b$$ and $$ax_2=b$$. Hence $$ax_1=ax_2$$. by left cancellation, $$x_1=x_2$$
Thus $$a^{-1}b$$ is a unique solution to the equation $$ax=b$$

Similarly $$(ba^{-1})a =b(a^{-1}a)=be=b$$. So $$y=ba^{-1}$$ is a solution to the equation $$ya=b$$

If $$y_1$$ and $$y_2$$ are both solutions to the equation $$ya=b$$. then $$y_1a=b$$ and $$y_2a=b$$. Hence, $$y_1a=y_2a$$, so $$y_1=y_2$$ by Right 
cancellation. Therefore, the equation $$ya=b$$ has a unique solution $$ba^{-1}$$ in G.



