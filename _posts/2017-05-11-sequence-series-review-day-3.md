---
layout: post
title:  sequence and series review day 3
date:   2017-05-11 11:46:00
categories: Math
tags: Calculus sequence series
---

* content
{: toc}

### Theorem 6

If the series $$\sum_{n=1}^{\infty} a_{n}$$ is convergent, then $$lim_{n \to \infty}a_{n} = 0$$

Proof 
Let $$S_{n} = a_{1} + a_{2} + ...+a_{n}$$. Then $$a_{n}=S_{n}-S_{n-1}$$. Since $$\sum a_{n}$$ is convergent, the sequence $$\{S_{n}\}$$ is convergent. Let lim_{n \to \infty}S_{n} = S$$. Since $$n-1 \to \infty$$ as $$n \to \infty$$, we also have $$lim_{n \to \infty}S_{n-1}=S$$. therefore

$$lim_{n \to \infty} a_{n} = lim_{n \to \infty} (S_{n}-S_{n-1}=s-s=0$$



Note 1

With any series $$\sum a_{n}$$ we associate two sequences: the sequence $$\{S_{n}\}$$ of its partial sums and the sequence $$\{a_{n}\}$$ of its terms. If $$\sum a_{n}$$ is convergent, then the limit of the sequence $$\{S_{n}\}$$ is S(the sum of the series) and the limit of the sequence $$\{a_{n}\}$$ is 0. 

Note 2

If $$lim_{n \to \infty} a_{n}=0$$, the series $$a_{n}$$ might converge or it might diverge.

### theorem 7

Test of Divergence: If $$lim_{n \to \infty} a_{n}$$ does not exist or if $$lim_{n \to \infty} a_{n}≠0$$, then the series $$\sum_{n=1}^{\infty} a_{n}$$ is divergent. 

e.g

$$\sum_{n=1}^{\infty} \frac{n^{2}}{5n^{2}+4}$$. The limit is $$\frac{1}{5}≠ 0$$, so the series is divergent. 


