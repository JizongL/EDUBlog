---
layout: post
title:  Prime number review
date:   2017-05-31 10:48:05
categories: Math 
tags: prime_number prime perfect_number Mersenne_prime
---
* content
{: toc}

## Perfect Number and Mersenne Prime

### Perfect number

a positive integer that is equal to the sum of its proper divisors. 






[reference video](https://www.youtube.com/watch?v=T0xKHwQH-4I)


![pefect number](https://cdn-images-1.medium.com/max/800/1*0j8dvA6StNfjhQWeRinkUg.png)





### Mersenne Prime

$$2^{n}-1$$

|n|2^{n}-1|
|:---:|:---:|:---:|
|1|1|not|
|2|3|prime|
|3|7|prime|
|4|15|not|
|5|31|prime|
|6|63|not|
|7|127|prime|
|8|255|not|
|9|511|not|
|10|1023|not|
|11|2047|not|
|12|4095|not|
|13|8191|prime|

Every perfect number has only one mersenne prime factor.

It's known that all perfect numbers are even, but not proven yet.

If the number $$2^{n}-1$$ is a mersenne prime, then n is prime. 
But the converse is not true. 

Now clearly there is a link between the mersenne prime and the perfect numbers.

[reference video](https://www.youtube.com/watch?annotation_id=annotation_2622433033&feature=iv&src_vid=T0xKHwQH-4I&v=q8n15q1v4Xo)

|n|$$2^{n}-1$$|$$2^{n-1}$$ |P.N|
|:---:|:---:|:---:|:---:|
|2|3|$$2=2^{1}$$|6|
|3|7|$$4=2^{2}$$|28|
|5|31|$$16=2^{4}$$|496|
|7|127|$$64=2^{6}$$|8128|
|13|8191|$$256=2^{8}$$|?|

To generalize, the table above reflects that

$$(2^{n}-1) \cdot 2^{n-1}=Perfect Number$$

let's use 496 for instance

1+2+4+8+16 + 31+62+124+248＋496

note: we included 496 as its divisor factors, so the result is 2 times of the perfect number. 

31 is a mersenne prime

496=(1+2+4+8+16)+31(1+2+4+8+16)
   =(1+31)(1+2+4+8+16)		
   =$$32 \cdot 31$$

### Proof

Let's prove it generally.

$$(2^{n-1})=(1+2^{1}+2^{2}+2^{3}...+2^{n-2}+2^{n-1})$$
$$(2^{n-1})(2^{n}-1)=(1+2^{1}+2^{2}+2^{3}...+2^{n-2}+2^{n-1})+ \\
(2^{n}-1)+2^{1}(2^{n}-1)+2^{2}(2^{n}-1)+2^{3}(2^{n}-1)+...2^{n-2}(2^{n}-1)+2^{n-1}(2^{n}-1)$$ 

Which can be simplified to 

$$(2^{n-1})(2^{n}-1)=(1+2^{1}+2^{2}+2^{3}...+2^{n-2}+2^{n-1})+(2^{n}-1)(1+2^{1}+2^{2}+2^{3}...+2^{n-2}+2^{n-1})$$

$$=2^{n}(1+2^{1}+2^{2}+2^{3}...+2^{n-2}+2^{n-1})$$

But how do we add a sequence we don't know? We can use the technique of the geometric sequence. 

Let's assume that 

$$T = 1+2^{1}+2^{2}+2^{3}...+2^{n-2}+2^{n-1}$$

and 

$$ 2T = 2+2^{2}+2^{3}...+2^{n-1}+2^{n}$$

And $$2T-T=2^{n}-1 \implies T=2^{n}-1$$

Now, input T back into the original formula 

$$=2^{n}(1+2^{1}+2^{2}+2^{3}...+2^{n-2}+2^{n-1})\\
2^{n}(2^{n}-1)$$

And because the answer is twice of the perfect number

We devide it by 2 and get $$(2^{n-1}) \cdot (2^{n}-1)$$


