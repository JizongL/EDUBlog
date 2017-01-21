---
layout: post
title:  proof techniques review
date:   2017-01-18 21:23:00
categories: Math
tags: proof review techniques
---

**VACUOUS AND TRIVIAL PROOFS**

p → q is true when we know that p is false, because p → q must be true when p is false. 







Show that the proposition P (0) is true, where P (n) is “If n > 1, then n2 > n” and the domain consists of all integers.
Solution: Note that P (0) is “If 0 > 1, then 02 > 0.” We can show P (0) using a vacuous proof. Indeed, the hypothesis 0 > 1 is false. This tells us that P (0) is automatically true.

**trivial proof**

Let P(n) be “If a and b are positive integers with a ≥ b, then an ≥ bn,” where the domain
consists of all nonnegative integers. Show that P (0) is true.

**proofs by contradiction**

ive a proof by contradiction of the theorem “If 3n + 2 is odd, then n is odd.”
Solution: Let p be “3n + 2 is odd” and q be “n is odd.” To construct a proof by contradiction, assume that both **p and ¬q** are true. That is, assume that 3n + 2 is odd and that n is not odd. Because n is not odd, we know that it is even. Because n is even, there is an integer k such that n = 2k. This implies that 3n + 2 = 3(2k) + 2 = 6k + 2 = 2(3k + 1). Because 3n + 2 is 2t, where t = 3k + 1, 3n + 2 is even. Note that the statement “3n + 2 is even” is equivalent to the **statement ¬p**, because an integer is even if and only if it is not odd. Because both p and ¬p are true, we have a contradiction. This completes the proof by contradiction, proving that if 3n + 2 is odd, then n is odd


## PROOFS OF EQUIVALENCE

Show that these statements about the integer n are equivalent:
p1: n is even.<br>
p2: n−1isodd. <br>
p3: n2 is even.<br>

Solution: We will show that these three statements are equivalent by showing that the conditional statements p1 → p2, p2 → p3, and p3 → p1 are true.
We use a direct proof to show that p1 → p2. Suppose that n is even. Then n = 2k for some integer k. Consequently, n − 1 = 2k − 1 = 2(k − 1) + 1. This means that n − 1 is odd because it is of the form 2m + 1, where m is the integer k − 1.
We also use a direct proof to show that p2 →p3. Now suppose n−1 is odd. Then n−1=2k+1 for some integer k.Hence,n=2k+2 so that n2 =(2k+2)2 =4k2+8k+4= 2(2k2 + 4k + 2). This means that n2 is twice the integer 2k2 + 4k + 2, and hence is even.
To prove p3 → p1, we use a proof by contraposition. That is, we prove that if n is not even, then n2 is not even. This is the same as proving that if n is odd, then n2 is odd, which we have already done in Example 1. This completes the proof.

## proof Mistakes

What is wrong with this famous supposed “proof” that 1 = 2?
“Proof:" We use these steps, where a and b are two equal positive integers.

Step | Reason |
|:----- |:------|
1. a = b | Given |
2. a2 = ab | Multiply both sides of (1) by a  |
3. a2 −b2 =ab−b2 | Subtractb2 frombothsidesof(2)  |
4. (a−b)(a+b)=b(a−b)  | Factor both sides of (3) |
5. a+b=b | Divide both sides of (4) by a − b  |
6. 2b = b | Replace a by b in (5) because a = b <br>and simplify  |
7. 2=1 | Divide both sides of (6) by b |


**What is wrong with this “proof?”**

“Theorem:” If n2 is positive, then n is positive.
“Proof:" Suppose that n2 is positive. Because the conditional statement “If n is positive, then n2 is positive” is true, we can conclude that n is positive.

**Solution:** 
Let P (n) be “n is positive” and Q(n) be “n2 is positive.” Then our hypothesis is Q(n). The statement “If n is positive, then n2 is positive” is the statement ∀n(P (n) → Q(n)). From the hypothesis Q(n) and the statement ∀n(P (n) → Q(n)) we cannot conclude P (n), because we are not using a valid rule of inference. Instead, this is an example of the fallacy of affirming the conclusion. A counterexample is supplied by n = −1 for which n2 = 1 is positive, but n is negative.


**EXHAUSTIVE PROOF**

Provethat$$(n+1)^{3} ≥3^{n}$$ if n is a positive integer with n≤4.

**Solution:**

We use a proof by exhaustion. We only need verify the inequality $$(n + 1)3 ≥ 3^{n}$$ when n=1,2,3,and 4.For n=1,we have$$(n+1)^{3} =2^{3} =8 $$ and $$3^{n} =3^{1} =3$$;for n=2, we have $$(n+1)^{3} =3^{3} =27$$ and $$3n =3^{2} =9$$; for n=3, we have $$(n+1)^{3} =4^{3} =64 \ and \ 3^{n} =3^{3} =27$$; and for n=4, we have $$(n+1)^{3} =5^{3} =125 \ and \ 3n =3^{4} =81$$. In each of these four cases, we see that (n + 1)3 ≥ 3n. We have used the method of exhaustion to prove that$$(n+1)^{3} ≥3n$$ if n is a positive integer with n≤4.


**PROOF BY CASES** 

A proof by cases must cover all possible cases that arise in a theorem. We illustrate proof by cases with a couple of examples. In each example, you should check that all possible cases are covered.






Show that if x and y are integers, and both xy and x+y are even. 
then both x and y are even.

Suppose that both x and y are not even. 
without loss of generality, suppose y is odd and x is even.

W.L.O.G

then there is k and m, $$k,m \in \mathbf{Z}$$

$$x = 2k, y = 2m+1$$

$$xy=(2k)(2m+1) =4km+2k = 2(2km+k)$$

this is even. 

$$x + y = 2k+2m+1 = 2(k+m)+1$$

odd







