---
layout: post
title:  Linear Algebra Review day 1
date:   2017-05-08 08:53:00
categories: Math
tags: Linear_algebra review 
---

* contents
{: toc}

## Solution Sets of Linear systems

### Definition 1
The homogenenous equation A**x** = **0** has a nontrival solution if and only the equation has at least one free variable. 

### Parametric Vector Form

**x** = s**u**+t**v** (s,t in $$\mathbb{R}$$)



### Theorem 6

Suppose the equation A**x** = **b** is consistent for some given **b**, and let **p** be a solution. Then the solution set of A**x** = **b** is the set of all vectors of the form **w** = **p** + **v**$$_{h}$$ is any solution of the homogeneous equation A**x** = **0**







Construct a 2 x 2 matrix A such that the solution set of the equation A**x**=0 is the line in $$\mathbb{R}^{2}$$ through (4,1) and the origin. then, find a vector **b** in  $$\mathbb{R}^{2}$$ such that the solution set of A**x** = **b** is not a line in  $$\mathbb{R}^{2}$$ parallel to the solution set of A**x**=0. Why does this not contradict Theorem 6. 

$$
\begin{bmatrix}
a & b \\
c & d \\
\end{bmatrix} \cdot 

\begin{bmatrix}
4 \\ 
1 \\ 
\end{bmatrix} = 

\begin{bmatrix}
0 \\
0\\
\end{bmatrix}

$$

$$4x + 1y = 0 \\
y= -4x $$

choose any integer for column 1, then multiple it by -4 to get column 2. 

for example 

$$
\begin{bmatrix}
1 & -4 \\
1 & -4 \\
\end{bmatrix}
$$

the only case when A**x** = **b** is not a line in $$\mathbb{R}^{2}$$ parallel to the solution set A**x** = 0, is when the solution set is empty. That's why b is not a linear combination of the columns of A. 








