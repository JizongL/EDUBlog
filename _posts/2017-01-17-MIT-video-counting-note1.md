---
layout: post
title:  MIT math note -counting rules
date:   2017-01-17 12:56:00
categories: Math
tags: proof review note discrete_math MIT
---

[course link](https://ocw.mit.edu/courses/electrical-engineering-and-computer-science/6-042j-mathematics-for-computer-science-fall-2010/video-lectures/lecture-16-counting-rules-i/)

## Mapping Rule

1: $$S:X \to Y$$ surjective $$\implies \left\lvert X \right\rvert ≥ |Y|$$ 




Cardinality of X is at least Y, every element of Y is mapped to at least 1 element of X.

2: $$\S:X \to Y$$ injective $$\implies |X| ≤ |Y|$$ 

Cardinality of X is at most Y, every element of Y is mapped to at most 1 element of X.

3: $$\S:X \to Y$$ bijective $$\implies |X| = |Y|$$ 

Cardinality of X is equal Y, every element of Y is mapped to 1 element of X.

Ex.1

X = all ways to select 12 donuts from 5 varieties.

|OOO | ... | OOO OOO | O O | 
| chocolate | 

Y = set of all 16 bit sequences with exactly 4 ones. 
|X| = |Y|

Bijective

Ex Bijection from subsets of X = $$\{1,.....n\}$$ to n-bits.

Sequences

$$\mathbf{S} \underrightarrow{f} (b_{1},b_{2},...,b_{n})$$ via 

$$b_{i} =
\begin{cases}
1 & if \in \mathbf{S} \\[2ex]
0 & if \notin \mathbf{S}
\end{cases}
$$

how many n-bit sequences?

$$2^{n}$$

This is the # subsets of an n-element Set. 

## Generalized Pigionhole principle 

 



