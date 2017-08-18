---
layout: post
title:  Cryptography note
date:   2017-05-27 20:35:05
categories: Python 
tags: string_method string
---

* content
{: toc}


Clifford Cocks

## RSA Enscryption






Trapdoor oneway function

Mary and Bob have their private keys 

Eve is eardropping.

Say, m is Mary's key, then $$m^{e}Mod \ N$$ 

and the lock is $$ unknown^{e}Mod \ N $$ sent to Bob, (Eve can not guess the value of m easily)

then Bob has his private key m, $$m^{e} Mod \ N = c$$ and Bob send c back to Mary.(Eve can not guess m from c)


Review [Modulo Arithematics]({{ post.url | prepend: site.baseurl }}{% post_url 2017-05-27-modular-arithematics %})


Mary will use d $$c^{d} Mod \ N = m$$, now it checks and the message is decrypted. 

note: $$c^{d}=m$$ so $$c^{d^{e}}=m^{e^{d}}Mod \ N$$

Euler's Totient function
$$\Phi[77]=6 \cdot 10$$

77 = 11 * 7



Euler's Theorem
if m and n are coprime.then m and n do not share any factor other 1 and itself.
$$m^{\phi(n)}  \equiv 1 mod \ n $$


let k be an integer and since $$1^{k} = 1$$
$$m^{k\phi(n)} mod \ n \equiv 1 $$
$$m \cdot m^{k\phi(n)} mod \ n \equiv 1 $$


### Carmichael function



### Fermat's little theorem
Check out [Fermat's little theorem]({{ post.url | prepend: site.baseurl }}{% post_url 2017-05-28-fermats-little-theorem %})


### Euler's Totient Theorem

$$\phi(n)$$ and $$n \in \mathbb{N}$$
Returns all natural number (1≤m≤n)
which are coprime (relative prime) to n

a,b coprime iff. They share no common divisor greater than 1

e.g 12 and 17

$$\phi(0) \equiv 1$$

$$\phi(p) = p-1$$

Check out [Euler Totient Exploration](https://www.khanacademy.org/computing/computer-science/cryptography/modern-crypt/p/euler-totient-exploration)

Table

|n|a|$$\phi(n)$$| $$a^{\phi(n)}$$| $$\equiv ? (mod \ n)$$|
|:---: |:---: |:---: |:---:|:---:|
|2 | 3| 1| 3| 1 |
|2 | 5| 1| 5| 1 |
|2 | 7| 1| 7| 1 |
|3 | 5| 2|25| 1 |
|3 | 7| 2|49| 1 |

This is the reason that Euler's Theorem is a generalization; "n" no longer needs to be prime, but when it is prime, we get: 
$$a^{\phi(n)} = a^{p-1}$$, which is Fermat's little Theorm. 

### Carmichael function
$$\lambda(n) \equiv lowest (m)$$
$$a^{\lambda(n)}=1 mod \ n$$




### Resource
[CrytoAcademy](http://wesecure.net/learn/)


