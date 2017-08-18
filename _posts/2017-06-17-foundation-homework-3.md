---
layout: post
title:  Transition to Higher Mathematics Exercise 3
date:   2017-06-03 22:34:05
categories: Math 
tags: exercise homework relation equivalence
---
* content
{: toc}

### Exercise 3.17

Consider the following statements. Write down the contrapositive and the converse to each one.

(i) All men are mortal. 


(ii) I mean what I say.

(iii) Every continuous function on the interval [0, 1] attains its maximum.

(iv) The sum of the angles of a triangle is $$180^o$$.



Check out [Divisibility of digits](https://sites.google.com/site/mathematicsnotebook/divisibilityrules/divisibility8)

### Exercise 3.18

Prove that a number is divisible by 4 if and only
if its last two digits are.

Observe that 100 divided by 4 has a remainder of
0. So$$100≡0(mod4)$$. Hence $$10^k ≡0(mod4)$$ for $$k=2,3,4,.... $$ Then $$x ≡ a_0 +a_1 ·10+a_2 ·0+a_3 ·0+a_4 ·0+···+a_m ·0
≡ a_0 +a_1 ·10 (mod 4)$$.
Therefore $$x$$ is divisible by $$4$$ if and only if the number $$a_0 + a_1 · 10$$ is divisible $$4$$. But $$a_0 + a_1 · 10$$ is the number formed by keeping only the last two digits of x. So x is divisible by 4 if and only if the number formed by dropping all but the last two digits of x is divisible by 4.

Exercise 3.19. Prove that a number is divisible by 8 i↵ its last three digits are.

For any integer x written as $$a_na_{n-1}a_{n-2}...a_2a_1a_0$$, we will show that x is divisible by 8 if $$a_2a_1a_0$$ is divisible by 8.

If we write x as $$a_na_{n-1}a_{n-2}...a_2a_1a_0$$, then we can also write:

$$x= a_0 + a1(10) + a_2(10^2)+ a_3(10^3)... + a_{n-2}(10^{n-2}) + a_{n-1}(10^{n-1} ) + a_n(10^n) \\
        = (a_n × 10_n + a_{n-1}×10^{n-1} + a_{n-2}×10^{n-2} + .... + a_3)×1000 + a_2a_1a_0 \\
        = 8×125× (a_n×10^n + a_{n-1}×10^{n-1} + a_{n-2}×10^{n-2} + .... + a_3) + a_2a_1a_0$$

Since the term $$8×125×(a_n×10^n + a_{n-1}×10_{n-1} + a_{n-2}×10^{n-2} + .... + a_3)$$ is divisible by 8, the integer a_na_{n-1}a_{n-2} ....a_2a_1a_0$$ is divisible by 8 if and only if the number $$a_2a_1a_0$$ is divisible by 8 and vice versa.



