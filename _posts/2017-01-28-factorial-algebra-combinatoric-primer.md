---
layout: post
title:  factorial algebra and combinatoric primer
date:   2017-01-28 9:40:05
categories: Math
tags: homework factorial_algebra combinatoric_primer
---


$$\sum_{k=m}^{n}\binom{k}{m}\binom{n}{k}$$ 
 
$$\require{cancel}$$

$$\frac{n! \cancel{k!}}{\cancel{k!}m!(k-m)!(n-k)!}$$

Introduce a new term (n-m)!,we can see that 

$$(n-m-(n-k))=k-m$$

then 

$$\frac{n! \color{red}{(n-m)!}}{m!\color{red}{(n-m)!}(n-k)!(n-m-(n-k))}$$

Use the binomial notation and put it back into the sum notation

$$\sum_{k=m}^{n}\binom{n}{m}\binom{n-m}{n-k} \implies \binom{n}{m}\sum_{k=m}^{n}\binom{n-m}{n-k} \implies \binom{n}{m}2^{n-m}$$

Calculate

$$\sum_{k=1}^{n}\frac{1}{k}\binom{k}{m}$$

$$\sum_{k=1}^{n}\frac{1}{k}\binom{k}{m} \implies \sum_{k=1}^{n}\frac{1}{k}\frac{k!}{m!(k-m)!} \implies \sum_{k=1}^{n}\frac{(k-1)!}{m(m-1)(k-1-(m-1)!} \implies \frac{1}{m}\sum_{k=m}^{n}\binom{k-1}{m-1}$$

according to formula 3.9

$$\frac{1}{m}\sum_{k=m}^{n}\binom{k-1}{m-1} \implies \frac{1}{m}binom{k}{m}$$


How many strings of eight English letters are there 
that contain at least one vowel, if letters can be repeated?

We subtract from the total number of strings $$(26^{8})$$ the number that do not contain at least one vowel $$(21^{8})$$, obtaining the answer $$(26^{8})-(21^{8})= 208,827,064,576 - 37,822,859,361=171,004,205,215$$.

that contain exactly one vowel, if letters can be repeated?
first decide where does the vowel goes, (8 choices as there are 8 slots), then 5 choices for any one of the vowels. Then the rest of the 7 slots are letters that are not vowels. Therefore, the answer is $$8 \cdot 5 \cdot 7^{21} = 72,043,541,640$$.

How many bit strings of length seven either begin with
two 0s or end with three 1s?
inclusion and exclusion principle
$$2^{5}+2^{4}-2^{2}$$
$$=32+16-4$$
$$=44$$

