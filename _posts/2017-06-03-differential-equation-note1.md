---
layout: post
title:  Differential Equation Chapter 1 note
date:   2017-06-03 11:35:05
categories: Math 
tags: differential_equation Implicit_Solution
---

* content
{: toc}





## Exercise Note

### 1.1

#### Q20

20.$$ 2xydx (x^{2} - y)dy =0;  -2x^{2}y + y^{2} = 1$$

implicitly differentiating the solution, we obtain.

Remember to use the Chain rule with $$-2x^{2}y$$ in the equation, do not forget

$$-2x^{2}\frac{dy}{dx}-4xy + 2y\frac{dy}{dx} = 0 \\
-x^{2}\frac{dy}{dx}-2xy + y\frac{dy}{dx} = 0 \\
2xy dx +(x^{2}-y)dy=0$$

Slove $$y^{2}-2x^{2}y-1=0$$ with the quadratic formula

get two explicit solutions 

$$y_{1}=x^{2}+\sqrt{x^{4}+1} \\
y_{2} =x^{2}-\sqrt{x^{4}+1} \\
$$

### Q26
In Example 5 we saw that $$y=\phi_{1}(x)=\sqrt{25-x^{2}}$$ and $$y=\phi_{2}(x)=-\sqrt{25-x^{2}}$$ are solutions of $$\frac{dy}{dx}=\frac{-x}{y}$$ on the interval$$(-5,5)$$. Explain why the piecewise-defined function 

$$
y=
\begin{cases}
\sqrt{25-x^{2}} & -5< x <0 \\[2ex]
-\sqrt{25-x^{2}} & 0< x <5 
\end{cases}
$$

is not a solution of the differential equation on the interval(-5,5)

As $$\lim_{x\to 0^{+}}$$ and As $$\lim_{x\to 0^{-}}$$, the results are 5 and -5, and since the right and left side limits are not the same, the function is not continuous, therefore, it is not a solution. 

### Q29
Find value of m for $$y=e^{mx}$$ to be a solution of 
$$y"-5y'+6y=0$$
$$y"=m^{2}e^{mx}$$ and $$y'=me^{mx}$$
$$y"-5y'+6y=0 \\
$$m^{2}e^{mx}-5me^{mx}+6y=e^{mx} \\
e^{mx}(m^{2}-5m+6) \\
(m-2)(m-3) \\
m=2 \ \text{and} \ m=3 $$

### Q31
Find value of m so that $$y=x^{m}$$ is a solution of 
$$xy"+2y'=0$$

$$y"=m(m-1)x^{m-2}$$ and $$y'=mx^{m-1}$$
$$xy"+2y'=0 \\
x m(m-1)x^{m-2}+2mx^{m-1} = 0 \\
m(m-1)x^{m-1}+2mx^{m-1} = 0 \\
x^{m-1}(m(m-1)+2m) \\
x^{m-1}(m^{2}-m+2m) \\
x^{m-1}(m^{2}+m) \\
\text{since $x^{m-1}$ is positive for $x>0$} \\
(m^{2}+m)=m(m+1) \ \text{and} \ m=0,m=-1$$

### Q33
use the concept $$y=c,-\infty < x < \infty$$,is a constant function if and only if y'=0 to determine if
$$3xy'+ 5y = 10$$ possesses constant solutions. 

$$3x(0)+5y=10\\
y=2$$
is a constant solution




