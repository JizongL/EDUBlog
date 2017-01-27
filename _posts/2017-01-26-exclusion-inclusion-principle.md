---
layout: post
title:  Inclusion and Exclusion principle
date:   2017-01-26 4:24:00
categories: Math
tags: discrete_math combinatorics Exclusion_Inclusion_principle
---

## The Principle of Inclusion-Exclusion


Let 

$$A_{1},A_{2},A_{3}....A_{n}$$ 

be finite sets. Then

$$\lvert A_{1} \cup A_{2} \cup ... \cup A_{n} \lvert = \sum_{1≤i≤n} \lvert A_{i} \lvert - \sum_{1 ≤ i < j ≤n} \lvert A_{i} \cap A_{j}   \lvert  \\ + \sum_{1≤i< j < k ≤ n} \lvert A_{i} \cap A_{j} \cap A_{k}  \lvert - \\ ... + (-1)^{n+1} \lvert  A_{1} \cap A_{2} ...\cap A_{n}  \lvert $$.



## Proof 

Proof: We will prove the formula by showing that an element in the union is counted exactly once by the right-hand side of the equation. Suppose that a is a member of exactly r of the sets $$A_{1},A_{2},...,A_{n}$$ where 1 ≤ r ≤ n. This element is counted C(r,1) times by  $$ \lvert A_{i} \rvert $$ . It is counted C(r, 2) times by  $$\lvert A_{i} ∩ A_{j} \rvert$$. In general, it is counted C(r, m) times by the summation involving m of the sets $$A_{i}$$ . Thus, this element is counted exactly


$$C(r,1)−C(r,2)+C(r,3)−···+(−1)^{r+1}C(r,r)$$

times by the expression on the right-hand side of this equation. Our goal is to evaluate this
quantity. By <a href = "#Corollary 2">Corollary 2</a>, we have

$$C(r, 0) − C(r, 1) + C(r, 2) − · · · + (−1)^{r} C(r, r) = 0.$$

Hence,

$$1 = C(r, 0) = C(r, 1) − C(r, 2) + · · · + (−1)^{r+1}C(r, r).$$

Therefore, each element in the union is counted exactly once by the expression on the right-hand side of the equation. This proves the principle of inclusion–exclusion.

If you still could not wrap your head around the above proof, like why the second formula is equal to 0, take a look at <a href="#detail with pascal triangle">more detail with using the pascal triangle</a>, and I am sure it will clear everything out. 

## Number of terms in the formula 

There are $$2^{n}-1$$ terms in this formula, as they are just all the subsets of the set with n elements.  remember 

$$ \sum_{k=1}^{n} \binom{n}{k}=2^{n}$$

the reason to subtract 1, is because one of the subset is the empty set.


for example, there are $$2^{4} = 16$$ subsets in a 4 elements set and one of them is an empty set, see detail below


{% raw %}
{{}, {a}, {b}, {c}, {d}, {a, b}, {a, c}, {a, d}, {b, c}, {b, d}, {c, 
  d}, {a, b, c}, {a, b, d}, {a, c, d}, {b, c, d}, {a, b, c, d}}
{% endraw%}



## An example with 4 sets


$$
 \lvert A1 ∪A2 ∪A3 ∪A4 \lvert  = \\ \lvert A1 \lvert + \lvert A2 \lvert + \lvert A3 \lvert + \lvert A4 \lvert \\ 
−  \lvert A1 ∩ A2 \lvert − \lvert A1 ∩ A3 \lvert − \lvert A1 ∩ A4 \lvert − \lvert A2 ∩ A3 \lvert − \lvert A2 ∩ A4 \lvert − \lvert A3 ∩ A4 \lvert  \\
+ \lvert A1 ∩ A2 ∩ A3 \lvert + \lvert A1 ∩ A2 ∩ A4 \lvert + \lvert A1 ∩ A3 ∩ A4 \lvert  +  \lvert A2 ∩ A3 ∩ A4 \lvert \\
− \lvert A1 ∩ A2 ∩ A3 ∩ A4 \lvert .
$$

Note that this formula contains 15 different terms, one for each nonempty subset of {A1, A2, A3, A4}.

If you are still not comfortable on the relationship between this example and the formula, see <a herf = "#more detail">more detail</a>

## The elegant notation 3.7.2 Theorem 

From the textbook [An Invitation to Discrete Mathematics](https://www.google.com/url?sa=t&rct=j&q=&esrc=s&source=web&cd=&ved=0ahUKEwiJjJnfjeHRAhXC24MKHXQJBGMQFggfMAE&url=https%3A%2F%2Frobot.bolink.org%2Febooks%2FInvitation%2520to%2520Discrete%2520Mathematics%25202e.pdf&usg=AFQjCNGOTf1Xmvrc02qw8_kJpMRiSBAntw&sig2=lbm5i8LAxPTTlUmva-4c3w&bvm=bv.145063293,d.amc)

It turn the more cumbersome formula above into the following  


$$\left \lvert  \bigcup_{i=1}^{n} A_{i} \right \lvert =\sum_{k=1}^{n}(-1)^{k-1}\sum_{I\in\binom{\color{red}{\{1,2,3,...n\}}}{k}} \left \lvert \bigcap_{i\color{red}{\in} I}A_{i} \right \lvert ,$$

In case you cannot see why this formula expresses the rule we have formulated in words, you may want to devote some time to it and work out the <a href ="#case_n=3">case n = 3 in detail</a> 

**Highly recommend you to check out the n = 3 case before moving forward**

Finally, the shortest and almost devilish way of writing the inclusion– exclusion principle is

$$\left \lvert  \bigcup_{i=1}^{n} A_{i} \right \lvert =\sum_{\emptyset ≠ I \subseteq \{1,2,...,n\}}^{n}(-1)^{\lvert I \lvert -1}\left \lvert \bigcap_{i\color{red}{\in} I}A_{i} \right \lvert ,$$

In this formula, it is basically the same as the last one, except that it is a full expression . The last one is grouping(by associativity and factoring out the $$(−1)^{k}$$ the terms of the same cardinality. (subsets of same cardinality is when $$\binom{1,...,n}{k}$$


<a name = "Corollary 2">

###Corollary 2

$$\sum_{k=1}^{n}(-1)^{k}\binom{n}{k} = 0$$	

to expand the sumation into terms would look like

$$C(r, 0) − C(r, 1) + C(r, 2) − · · · + (−1)^{r} C(r, r) = 0.$$


<a name = "more detail">

$$
 \lvert A1 ∪A2 ∪A3 ∪A4 \lvert  = \\ \lvert A1 \lvert + \lvert A2 \lvert + \lvert A3 \lvert + \lvert A4 \lvert \\ 
−  \lvert A1 ∩ A2 \lvert − \lvert A1 ∩ A3 \lvert − \lvert A1 ∩ A4 \lvert − \lvert A2 ∩ A3 \lvert − \lvert A2 ∩ A4 \lvert − \lvert A3 ∩ A4 \lvert  \\
+ \lvert A1 ∩ A2 ∩ A3 \lvert + \lvert A1 ∩ A2 ∩ A4 \lvert + \lvert A1 ∩ A3 ∩ A4 \lvert  +  \lvert A2 ∩ A3 ∩ A4 \lvert \\
− \lvert A1 ∩ A2 ∩ A3 ∩ A4 \lvert .
$$

<a name = "detail with pascal triangle">

### detail with passcal triangle

To understand how the did the first formula become the second one below, you should refer to the pascal triangle and the binomial theorm. 

(1)$$C(r,1)−C(r,2)+C(r,3)−···+(−1)^{r+1}C(r,r)$$

(2)$$C(r, 0) − C(r, 1) + C(r, 2) − · · · + (−1)^{r} C(r, r) = 0.$$

The notation C(r,k) is just r element set chooses k items, it should become very obvious if you look at the formula for the binomial theorem $$\binom{n}{0}-\binom{n}{1}+\binom{n}{2}-\binom{n}{3}+...=\sum_{k=0}^{n}(-1)^{k}\binom{n}{k}=2^{n}$$

![pascal triangle](https://rossta.net/assets/images/blog/pascals_triangle_color-a0dd53d5.jpg)

Also, the [pascal triangle](https://en.wikipedia.org/wiki/Pascal's_triangle) is symmetric, therefore, let's say for example, n = 10 then all the numbers from that row of the triangle is 

{%raw %}

{{1} {10}, {45}, {120}, {210}, {252}, {210}, {120}, {45}, {10}, {1}}

{%endraw%}

Notice that from formula (1) 

$$C(r,1)−C(r,2)+C(r,3)−···+(−1)^{r+1}C(r,r)$$

we see the C(r,0) term is missing, so referred to the pascal triangle, it looks like this.

{%raw %}

{{10}, {45}, {120}, {210}, {252}, {210}, {120}, {45}, {10}, {1}}

{%endraw%}

To consider the term $$(-1)^{n-1}$$

{%raw %}

{{10}, {-45}, {120}, {-210}, {252}, {-210}, {120}, {-45}, {10}, {-1}}

{%endraw%}

And the numbers above sums to 1 (verify)

Also, C(r,0)=1, as there is one way to choose zero object. Therefore, this comes the 2nd 

formula 

$$C(r, 0) − C(r, 1) + C(r, 2) − · · · + (−1)^{r} C(r, r) = 0.$$

Hence, the final formula 

$$1 = C(r, 0) = C(r, 1) − C(r, 2) + · · · + (−1)r+1C(r, r)$$

Therefore, each element in the union is counted exactly once by the expression on the right-hand side of the equation. This proves the principle of inclusion–exclusion.

<a name = "case_n=3">

### To Expand the case when n = 2 and 3

To expand the following we must first understand how the notation works. 

$$\left \lvert  \bigcup_{i=1}^{n} A_{i} \right \lvert =\sum_{k=1}^{n}(-1)^{k-1}\sum_{I\in\binom{\color{red}{\{1,2,3,...n\}}}{k}} \left \lvert \bigcap_{i\color{red}{\in} I}A_{i} \right \lvert ,$$ 

being that said, remember that 

$$I\in \binom{\{1,\cdots , n\}}{k},$$ 

means that 

$$I\subseteq [n]$$ and $$\lvert I \lvert=k.$$ So take $$n=3,k=2$$ 

then the possible sets are $$I=\{1,2\},\{1,3\},\{2,3\}$$ so 

$$ \lvert \bigcap _{i\in I} A_i \lvert = \lvert A_1\cap A_2\vert,\lvert A_1 \cap A_3 \lvert, \lvert A_2\cap A_3 \lvert$$ 

respectively. For n=2 it is as follow

$$\left \lvert  \bigcup_{i=1}^{2} A_{i} \right \lvert =\sum_{k=1}^{2}(-1)^{k-1}\sum_{I\in\binom{\color{red}{\{1,2\}}}{k}} \left \lvert \bigcap_{i\color{red}{\in} I}A_{i} \right \lvert =(-1)^{1-1}(\underbrace{ \lvert A_1 \lvert }_{\text{relative to $\{1\}$}}+\underbrace{ \lvert A_2 \lvert }_{\text{relative to $\{2\}$}})+(-1)^{2-1}\underbrace{ \lvert A_1 \cap A_2 \lvert }_{\text{relative to $\{1,2\}$}}.$$

For n =3, it is as follow

 $$\left \lvert  \bigcup_{i=1}^{3} A_{i} \right \lvert =\sum_{k=1}^{2}(-1)^{k-1}\sum_{I\in\binom{\color{red}{\{1,2\}}}{k}} \left \lvert \bigcap_{i\color{red}{\in} I}A_{i} \right \lvert 
=(-1)^{1-1}
(\underbrace{ \lvert A_1 \lvert }_{\text{relative to $\{1\}$}}
+\underbrace{ \lvert A_2 \lvert }_{\text{relative to $\{2\}$}} +
\underbrace{ \lvert A_{3} \lvert }_{\text{relative to {3}}}) \\
+(-1)^{2-1}
(\underbrace{ \lvert A_1 \cap A_2 \lvert }_{\text{relative to $\{1,2\}$}}+
\underbrace{ \lvert A_1 \cap A_2 \lvert }_{\text{relative to $\{2,3\}$}}+
\underbrace{ \lvert A_1 \cap A_2 \lvert }_{\text{relative to $\{1,3\}$}})+
(-1)^{3-1}(\underbrace{ \lvert A_1 \cap A_2 \cap A_3 \lvert }_{\text{relative to $\{1,2,3\}$}}).$$	

Thank you for reading this post, I hope it is helpful. 

I will include First proof of the inclusion–exclusion principle: by induction. later. 

have fun studying. 