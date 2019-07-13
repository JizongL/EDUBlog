---
layout: post
title:  Euler's Totient Function
date:   2017-06-01 22:45:05
categories: Math
tags: Euler's_totient_function  
---
* content
{: toc}

[reference video](https://www.youtube.com/watch?v=r9EPdcL9oM0) by Nj Wildberger

## Riciprocals of primes






$$\frac{1}{2}=0.5 \quad \frac{1}{7}=0.\overline{142857} \\
\frac{1}{3}=0.333... \quad \frac{2}{7}=0.\overline{285714} \\
\frac{1}{4}=0.25 \quad  \ \frac{3}{7}=0.\overline{428571} \\
\frac{1}{5}=0.2 \quad \ \ \frac{4}{7}=0.\overline{571428} \\
\frac{1}{6}=0.166 \quad \frac{5}{7}=0.\overline{714285} \\
\quad \quad \quad \ \ \frac{6}{7}=0.\overline{857142} $$

By long division

$$
\require{enclose}
\begin{array}{r}
               .142857  \\[-3pt]
7 \enclose{longdiv}{1.000000} \\[-7pt]
     \underline{7}\phantom{1} \\[-8pt]
        30  \\[-3pt]
     \underline{28} \phantom{1} \\[-3pt]
        20  \\[-3pt]
     \underline{14} \\
     			60  \\[-3pt]
     \underline{56} \\
     			40  \\[-3pt]
     \underline{35} \\
     		    50  \\[-3pt]
     \underline{49} \\
     			1  \\[-3pt]
\end{array}
$$

And everything repeats

## Reciprocals of primes

Check out [repeating Decimal algorithm](https://mathematica.stackexchange.com/questions/15818/can-mathematica-show-me-a-fraction-with-a-repeating-decimal-notation) with Mathematica

Download Mathematica [notebook]({{root_url | prepend: site.baseurl}}/asset/mathematica/notebook/Reciprocal-prime.nb)

Let's look at some reciprocals of primes,
There is a general pattern here, the length of the repeating digits are p-1, with a few exceptions. 

$$ \frac{1}{2} = 0.5 \\
\text{*} \frac{1}{3} = 0.\overline{3} \\
\frac{1}{5} = 0.2 \\
\frac{1}{7} = 0.\overline{142857} \\
\text{*} \frac{1}{11} = 0.\overline{09} \\
\text{*} \frac{1}{13} = 0.\overline{076923} \\
 \frac{1}{17} = 0.\overline{0588235294117647} \\
 \frac{1}{19} = 0.\overline{05263157894736842} \\
 $$

Those stared fractions seems to break the pattern of order of repeated segment being p-1, but observe that, for instance, $$\frac{1}{11}$$ has a length of 2, which is a divisor of p-1, in this case, it is 10. denoted as($$2\lvert 10$$), same applied to the other primes with stars, $$\frac{1}{3},\frac{1}{13}$$

Also, because the prime 2 and 5 are factors of 10, which is the unit of the decimal system, so $$\frac{1}{2},\frac{1}{5}$$ are also exceptions. 

### Table 1
**More reciprocals of primes**

|Prime Reciprocal|Length of its Decimal Digits|
|:---:|:---:|
|$$\frac{1}{29}=0.\overline{0344827586206896551724137931}$$ |28|
|$$\frac{1}{31}=0.\overline{032258064516129}$$|15|
|$$\frac{1}{37}=0.\overline{027}$$|3|
|$$\frac{1}{41}=0.\overline{02439}$$|5|
|$$\frac{1}{43}=0.\overline{023255813953488372093}$$|21|

So, in general, the length of the decimal digits are either p-1 or divisor of p-1

## Fractions with a prime denominator

### Table 2

|Fractions with denominator 13|	Repeating form|
|:---:|:---:|
|$$\frac{1}{13}$$|$$ 0.\overline{0769230}$$|
|$$\text{*} \frac{2}{13}$$|$$ 0.\overline{153846}$$|
|$$\frac{3}{13}$$|$$ 0.\overline{230769}$$|
|$$\frac{4}{13}$$|$$ 0.\overline{307692}$$|
|$$\text{*} \frac{5}{13}$$|$$ 0.\overline{384615}$$|
|$$\text{*} \frac{6}{13}$$|$$ 0.\overline{461538}$$|
|$$\text{*} \frac{7}{13}$$|$$ 0.\overline{538461}$$|
|$$\text{*} \frac{8}{13}$$|$$ 0.\overline{615384}$$|
|$$\frac{9}{13}$$|$$ 0.\overline{692307}$$|
|$$\frac{10}{13}$$ |$$ 0.\overline{769230}$$|
|$$\text{*} \frac{11}{13}$$ |$$ 0.\overline{846153}$$|
|$$\frac{12}{13}$$ |$$ 0.\overline{923076}$$|

note: There are two camps of patterns here, notice the asterisked and non-asterisked fractions, nevertheless, they all have a pattern of length of 6 of the decimal digits.

Fact: The nature of the decimal expansion of $$\frac{1}{n}$$ is intimately connected with the behavior of powers of 10, mod n. 

for instance, $$\frac{1}{7}=0.\overline{142857}$$ so we work mod 7. (see the following)

$$10=1 \times 7+3 \\
10^{2} \equiv 30 = 4 \times 7+2 \\
10^{3} \equiv 20= 2 \times 7+6 \\
10^{4} \equiv 60= 8 \times 7 +4\\
10^{5} \equiv 40= 5 \times 7 +5\\
10^{6} \equiv 50= 7 \times 7+1 \quad \text{1 is the remainder}\\
10^{7} \equiv 10 \\
$$

We see the quotients are the decimal digits $$0.\overline{142857}$$. 

in the case of $$\frac{1}{13}=$$ 0.\overline{0769230}$$
$$10=0 \times 13+10 \\
10^{2} \equiv 100 = 7 \times 13 + 9 \\
10^{3} \equiv 90 = 6 \times 13 +12 \\
10^{4} \equiv 120 = 9 \times 13 + 3 \\
10^{5} \equiv 30 = 2 \times 13 + 4 \\
10^{6} \equiv 40 = 3 \times 13 + 1 \\
10^{7} \equiv 10 \ \text{cycle begins again} $$

In summary, the remainders of the above examples are congruent to the power of 10 Mod 7 and 10 Mod 13. 

### Table 3
**Powers of 10 Mod 13**

|n|0|1|2|3|4|5|6|7|8|9|10|11|12|
|:---:|:---:|:---:|:---:|:---:|:---:|:---:|:---:|:---:|:---:|:---:|:---:|
|$$10^{n}$$|1|10|9|12|3|4|1|10|9|12|3|4|1|

$$\frac{1}{13}=0.\overline{076923}$$

$$10= 0 \times 13+10 \\
10^{2} \equiv 100 = 7 \times 13+9 \\
10^{3} \equiv 90= 6 \times 13+12 \\
10^{4} \equiv 120= 9 \times 13 +3\\
10^{5} \equiv 30= 2 \times 13 +4\\
10^{6} \equiv 40= 3 \times 13 +1 \quad \text{1 is the remainder}\\
$$

$$\frac{2}{13}=0.\overline{153846}$$

$$20= 1 \times 13+7 \\
 70 = 5 \times 13+5 \\
 50= 3 \times 13+11 \\
 110= 8 \times 13 +6\\
 60= 4 \times 13 +8\\
 80= 6 \times 13 +2 \quad \text{2 is the remainder}\\
$$

There is an interesting fact here, from table 3, we see that when the nth power of 10, from 0 to 12, the Mod 13 will repeats. That means when n is 12, it goes back to 1. 

This pattern remains even if we change the base 10 to some other numbers, the pattern repeats through every cycle of Mod 13.(See Table 4 below) This just reminds us of the [Fermat's little theorem]({{ post.url | prepend: site.baseurl }}{% post_url 2017-05-28-fermats-little-theorem %})

$$a^{p-1}\equiv 1(Mod p)$$

### Table 4 

|n|0|1|2|3|4|5|6|7|8|9|10|11|12|
|:---:|:---:|:---:|:---:|:---:|:---:|:---:|:---:|:---:|:---:|:---:|:---:|:---:|
|$$1^{n}(Mod13)$$|1|1|1|1|1|1|1|1|1|1|1|1|1|
|$$2^{n}(Mod13)$$|1|2|4|8|3|6|12|11|9|5|10|7|1|
|$$3^{n}(Mod13)$$|1|3|9|1|3|9|1|3|9|1|3|9|1|
|$$4^{n}(Mod13)$$|1|4|3|12|9|10|1|4|3|12|9|10|1|
|$$5^{n}(Mod13)$$|1|5|12|8|1|5|12|8|1|5|12|8|1|
|$$6^{n}(Mod13)$$|1|6|10|8|9|2|12|7|3|5|4|11|1|
|$$7^{n}(Mod13)$$|1|7|10|5|9|11|12|6|3|8|4|2|1|
|$$8^{n}(Mod13)$$|1|8|12|5|1|8|12|5|1|8|12|5|1|
|$$9^{n}(Mod13)$$|1|9|3|1|9|3|1|9|3|1|9|3|1|
|$$10^{n}(Mod13)$$|1|10|9|12|3|4|**1**|10|9|12|3|4|1|

Note: when a=10, there is a 1 appears in the middle, indicates a cycle of length 6. 

### Summary
for a prime, $$p≠\{2,5\}$$, we know by Fermat's theorem that 

$$10^{p-1} \equiv 1 (Mod p)$$

If l is the smallest power with $$10^{l} \equiv 1 (Mod p)$$, then $$l \lvert p-1$$, and this is the length of the repeating cycle for $$\frac{1}{p}$$

For a general $$m \in N$$ at, m>1, we use 

$$10^{\phi(m)} \equiv 1 (Mod m)$$ where

$$\phi(m) \equiv \lvert \{ n \lvert 1≤n < m,(n,m)=1 \} \lvert$$ is Euler's totient function. 

note: $$\phi(m)$$ denotes all the number smaller than m that do not share common factors. 

The relationship between Fermat's little theorem and Euler's totient function is that, when m is a prime, then $$10^{p-1} \equiv 1(Mod p)$$, so fermat's little theorem is a special case of Euler's totient function. 



