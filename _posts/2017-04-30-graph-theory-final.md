---
layout: post
title:  Graph Theory Final Exam Review
date:   2017-04-30 9:48:05
categories: Math 
tags: graph_theory final_exam review
---
* content
{: toc}


Give the definition of a walk in a graph G, and of a path in a graph G.



(b) Give the definition of a derangement of $$\{1, 2, . . . , n\}$$.

(c) Explain briefly why $$\sum_{k=0}^{n}\binom{n}{k}=2^{n}$$

(d) If G is Eulerian, must G be 2-connected? Prove or give a counterexample!

(e) From a 52-card deck, how many 5 card hands have exactly 2 aces and 1 king?

(f) Give an example of a 2-connected graph with 500 vertices, and of a tree with 500 vertices.

(g) Draw two non-isomorphic 2-connected graphs that have the same degree sequence.

### Question 2

(6 points) Sketch the Petersen graph. Pick 2-3 graph-theoretic concepts from the course, and discuss briefly (in at most 1-2 sentences each) how they relate to the Petersen graph.
If you can’t remember what the Petersen graph is, you may choose some other graph to discuss.
This problem may be graded partly based on mathematical good taste.



### Question 3

(a) (5 points) How many automorphisms does the graph Kn,m have if n > m?

n!m!

(b) (3 points) How many automorphisms does the graph Kn,n have?

2n!n!

![reference](https://notesonmathematics.wordpress.com/tag/bipartite-graphs/)

### Question 4

(8 points) Let G be a graph with an $$\mathbb{R_{2}}$$-embedding having f faces. Euler’s formula tells us that if G is connected, then $$\lvert V \lvert − \lvert E \lvert + f = 2$$. What is $$\lvert V \lvert − \lvert E \lvert + f$$ if G has k connected components? Prove that your answer always works!



$$\lvert V \lvert- \lvert E \lvert+f=k+1$$

Consider one component at a time, for component $$1\leq i\leq k$$, with $$\lvert V_i \lvert$$ vertices and $$\lvert E_i \lvert $$ edges and $$f_i$$ faces, you can simply write

$$\lvert V_i \lvert -\lvert E_i\lvert +f_i=2$$

Add them all, for all $$i$$, to get

$$\sum_{i}\lvert V_i \lvert-\sum_{i} \lvert E_i \lvert+\sum_{i}f_i= \lvertV \lvert- \lvert E \lvert+\sum_{i}f_i=2\times k$$

As you have mentioned, there is only one face that is common between all of them and it has been counted $$k$$ times. So write the last equation as

$$ \lvert V \lvert - \lvert E \lvert +\sum_{i}f_i= \lvert V \lvert - \lvert E \lvert +f+(k-1)=2\times k$$

Finally

$$ \lvert V \lvert - \lvert E \lvert +f=k+1$$




For G = (V, E) a graph, let ∆(G) = max v∈V deg v. That is, ∆(G) is the highest degree of any vertex in G.
(a) (2 points) Give an example of a graph G such that χ(G) = ∆(G) + 1. (b) (8 points) 

Show that for any graph G we have χ(G) ≤ ∆(G) + 1.


6 colors theorem review. 




How many spanning trees does $$K_{5}$$ have? (Consider two spanning trees to be different unless their edge sets are the same.)
Hint: It might be easier to count non-trees, rather than trees!

$$n^{n-2}$$

(4, 1, 1, 1, 1) (3, 2, 1, 1, 1) (2, 1, 2, 1, 2)





