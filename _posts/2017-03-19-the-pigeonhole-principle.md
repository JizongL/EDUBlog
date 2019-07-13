---
layout: post
title: The Pigeonhole Principle 
date: 2017-03-15 15:50:00
categories: math
tags: exam graph_theory review
---
* content
{: toc}

### Example 1






For every integer n, there is a multiple of n that has only 0's and 1's
in its decimal representatio
Proof:  consider the n+1 integers in this list:

$$x_{1} = 1 \\ x_{2} = 11 \\ x_{3} = 111 \\ x_{4} = 1,111 \\ ... \\ x_{n+1} =$$ (number consisting of a string of n+1 one


BY THE PIGEONHOLE PRINCIPLE

there are at least two numbers in the list that have the same remainder when divided by n (since there are only n possible different remainders. Call these two numbers $$x_i$$ and $$x_j (j > i)$$ and let r be the common remainder. So $$x_{i} = a x n + r $$for some integer a, and $$x_{j} = b x n + r$$ for some integer. So $$x_{j} - x_{i} = (a x n + r) - (b x n + r) = n(a-b)$$, which is a multiple of n.


