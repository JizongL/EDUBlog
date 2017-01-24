---
layout: post
title: note and explaination of proofs 
date: 2017-01-19 11:30:05
categories: Math
tag: proof explaination note
---

<a name="prop3.1.1"></a>

## 3.1.1 Proposition ##

Let N be an n-element set(in may also be empty, i.e. we admit n=0,1,2,...) and let M be an m-element set, m ≥ 1. Then the number of all possible mappings $$f: N \to M \ is \ m^{n}$$

Proof






We can proceed by induction on n. What does the proposition say for n = 0? In this case, we consider all mappings f of the set $$N = \emptyset$$ to some set M. The definition of a mapping tells us that such an *f* should be a set of ordered pairs(x,y)  with $$x \in N = \emptyset$$ and $$y \in M$$. since the empty set has no elements, *f* can not possibly contain any such ordered pairs, and hence the only possibility is that f is the empty set(no ordered pairs). On the other hand, $$f=\emptyset$$ does indeed satisfy the definition of a mapping in this case: The definition says that for each $$x \in N$$ something should be true, but there are no $$x \in N$$. Therefore, exactly 1 mapping $$f:\emptyset \to M$$ exists. This agrees with the formula, because $$m^{0}=1$$ for any m ≥ 1. We have verified the n=0 case as a basis for the induction. 

Next, suppose that the proposition has been proved for all $$n ≤ n_{0}$$ and all m ≥ 1. we set $$n=n_{0}+1$$ and we consider an n-element set N and an m-element set M. Let us fix an arbitrary element $$a\in N$$. To specify a mapping $$f:N \in M$$ is the same as specifying the value $$f(a) \in M$$ plus giving a mapping $$f':N\setminus\{a\} \in M$$. The value f(a) can be chosen in m ways. and for the choice of f' we have $$m^{m-1}$$ ways by the inductive hypothesis. Each choice of f(a) can be combined with any choice of f', and so the total number of possibilities f equals $$m\cdot m^{n-1}= m^{n}$$

<div style="text-align: right"> Q.E.D</div>

## 3.1.2 Proposition ##

Any n-element set X has exactly 2n subsets (n ≥ 0).

First proof (by induction)

For $$X \in \emptyset $$ there exists a single subset, namely $$\emptyset$$, and this agrees with the formula $$2^{0}=1$$ 

Having an (n+1) elements set $$\mathbf{X}$$, let us fix one element $$a \in mathbf{X}$$, and divide the subsets of $$\mathbf{X}$$ into two classes: those not containing a and those containing it. The first class are exactly all the subsets of the n-element set $$\mathbf{X}\setminus \{a \}$$, and their number is $$2^{n}$$ by the inductive hypothesis. For each subset A of the second class, let us consider the set $$A' \ = A\setminus \{a\}$$. This is a subset of $$mathbf{X}\setminus\{a\}$$. Clearly, each subset $$A' \ \subset \mathbf{X} \setminus \{a\}\$$ is obtained from exactly one set A of the second class, namely from $$A'\lor \{a\}$$. In other words, there is a bijection between all subsets of the first class and all subsets of the second class. Hence the number of subsets of the second class is $$2^{n}$$ as well, and altogether we have $$2^{n}+2^{n}=2^{n+1}$$ subsets of the (n+1)-element set $$\mathbf{X}$$ as it should be. 

Second proof(reduction to a known result)

Consider as arbitrary subset A of a given n-element set X, and define a mapping $$f_{A} \to {0,1}$$. For an element $$x\in \mathbf{X}$$ we put



(This mapping is often encountered in mathematics; it is called the characteristic function of the set A)


$$f_{A}(x)=
\begin{cases}
1 &  if x \in \mathbf{A} \\[2ex]
0 & if x \notin \mathbf{A}
\end{cases}$$

Let's say a set D has 4 elements $$\{a,b,c,d\}$$
Then all the subsets of D is $$2^{4}$$

{% highlight liquid %}
{% raw %}
{{}, {a}, {b}, {c}, {d}, {a, b}, {a, c}, {a, d}, {b, c}, {b, d}, {c, 
  d}, {a, b, c}, {a, b, d}, {a, c, d}, {b, c, d}, {a, b, c, d}}
{% endraw %}
{% endhighlight %}  

indeed, there are 16 subsets. And then the following diagram shows that we can picture that from each of the possible subets, which contain some elements of the Set D. So then if the element in the one of the subset, for example, $$d_{2}={a,b}$$, we can map this subset to a bit string of length 4(there are 4 elements in total) "1,1,0,0", because a and b are in the subset $$d_{2}$$, and c and d do not. then each of the bit has only the possibility of either 1 or 0, depending if that element is in the specific subset of interest. So, it is a binary choice. According to the product rule depicted in [proposition 3.1.1](#prop3.1.1), there are $$2^{4} possible subsets in this case, because 2 x 2 x2 x2 = 2^{4}$$



![illustration]({{root_url | prepend: site.baseurl}}/asset/graph_theory/pic/proof-demo-images/num-subset-proof/subset-proof-1a.png)


## 3.3.3 Theorem (Binomial theorem) ##

### Second proof of Proposition 3.1.3 

**(about the number of odd-size subsets)**. By substituting x = −1 into the binomial theorem, we arrive at

$$\binom{n}{0}-\binom{n}{1}+\binom{n}{2}-\binom{n}{3}+...=\sum_{k=0}^{n}(-1)^{k}\binom{n}{k}=2^{n}$$

Add this to equation Eq.(3.7) leads to 

$$2[\binom{n}{0}+\binom{n}{2}+\binom{n}{4}...]$$ = 2n$$

**note:** This counts the even subsets twice, 

so the total number of even-size subets of n-element set is $$2^{n-1}$$



## 3.1.4 Proposition. 

For given numbers n, m ≥ 0, there exist exactly





Proof. We again proceed by induction on n (and more concisely this time). For n = 0, the emptyset mapping is one-to-one, and so exactly 1 one-to-one mapping exists, and this agrees with the fact that the value of an emptyset product has been defined as 1. So the formula holds for n = 0.


Next, we note that no one-to-one mapping exists for n > m, and this again agrees with the formula (since one factor equal to 0 appears in the product).

**note:** 

$$\prod_{i=0}^{n-1}(m-i)$$ 

If n > m,  for example, if m = 10, n = 11. Then 

**note:** 

$$\prod_{i=0}^{11-1}(10-i) \equiv (10-10)(10-9),...(10-1)$$

Since (10-10)=0, then this does not map to anything.  

Let us now consider an n-element set N , n ≥ 1, and an m-element set M, m≥n.Fix an element a ∈ N and choose the value f(a)∈ M arbitrarily, in one of m possible ways.



It remains to choose a one-to- one mapping of the set $$N \setminus \{a\}$$ to the set $$M \setminus \{f (a)\}$$. 



By the inductive assumption, there are (m − 1)(m − 2) . . . (m − n + 1) possibilities for the latter choice. Altogether we have m(m−1)(m−2)...(m−n+1) one-to-one mappings f : N → M . 