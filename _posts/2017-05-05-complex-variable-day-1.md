---
layout: post
title:  Complex variable note day 1
date:   2017-05-05 21:00:00
categories: Math
tags: Complex_variable 
---

* content
{: toc}


## Basics

### sum and product

2 complex numbers

$$z_{1} = (x_{1},y_{1})$$ and $$z_{2} = (x_{2},y_{2})$$

**sum**

$$(x_{1},y_{1})+(x_{2},y_{2})=(x_{1}+x_{2}),(y_{1}+y_{2})$$

**product** 

$$(x_{1},y_{1})(x_{2},y_{2})=((x_{1})(x_{2})-(y_{1})(y_{2}),(y_{1})(x_{2})+(y_{2})(x_{1}))$$

**note:** $$i^{2}=-1$$


additive inverse z+(-z)=0 (there is only one existed)
$$(x,y)+(u,v) = (0,0) \implies u = -x and v=-y$$

multiplicative inverse
$$(x,y)(u,v)= (1,0)$$

according the product formula above

$$xu-yu = 1, yu+xv=0$$

$$u=\frac{x}{x^{2}+y^{2}},v=\frac{-y}{x^{2}+y^{2}}$$

proof

$$x\frac{x}{x^{2}+y^{2}}-y\frac{-y}{x^{2}+y^{2}} =1$$
$$y\frac{x}{x^{2}+y^{2}}+ x\frac{-y}{x^{2}+y^{2}} = 0$$


so $$z^{-1}=\left(\frac{x}{x^{2}+y^{2}},\frac{-y}{x^{2}+y^{2}}\right)$$ z≠ 0

$$z_{1}z_{2} =0$$,either$$z_{1} =0$$ or$$z_{2} =0$$

otherwise, if both are non-zero, so is their product $$z_{1}z_{2}$$

$$z_{1}-z_{2}=z_{1}+(-z_{2})$$

$$\frac{z_{1}}{z_{2}}=z_{1}z_{2}^{-1}$$

$$\frac{z_{1}}{z_{2}}=(x_{1},y_{1}) \left( \frac{x_{2}}{x_{2}^{2}+y_{2}^{2}},\frac{-y_{2}}{x_{2}^{2}+y_{2}^{2}}\right) \\ = \left( \frac{x_{1}x_{2}+y_{1}y_{2}}{x_{2}^{2}+y_{2}^{2}},\frac{y_{1}x_{2}-x_{1}y_{2}}{x_{2}^{2}+y_{2}^{2}}\right) \quad 
(z_{2}≠ 0)$$



Using $$z_{1} = x_{1} + iy_{1}$$ and $$z_{2} = x_{2} + iy_{2}$$

$$z_{1} −z_{2} =(x_{1} −x_{2})+i(y_{1} −y_{2})$$

and 

$$\left( \frac{x_{1}x_{2}+y_{1}y_{2}}{x_{2}^{2}+y_{2}^{2}},i\frac{y_{1}x_{2}-x_{1}y_{2}}{x_{2}^{2}+y_{2}^{2}} \right)$$

an easier way to memorize the above complicated formula is 

$$\frac{z_{1}}{z_{2}}=\frac{(x_{1}+iy_{1})(x_{2}-iy_{2})}{(x_{2}+iy_{2})(x_{2}-iy_{2})}$$


### keynote on exercise

Re(iz)=Imz;Im(iz)=Rez

$$z=\pm i$$ satisfies the equation $$z^{2}-2z+2=0$$


[A Brief History of Complex Analysis in the 19th Century](https://radryan1979.wordpress.com/2013/12/10/a-brief-history-of-complex-analysis-in-the-19th-century/)





