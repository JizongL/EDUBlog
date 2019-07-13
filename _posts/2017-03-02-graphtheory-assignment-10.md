---
layout: post
title: Graph Theory Homework Assignment 10
date: 2017-04-01 00:01:00
categories: Graph_Theory_homework
tags: Graph_Theory_homework  
---
* content
{: toc}

Matoušek-Nešetřil p158: 6, 7
Matoušek-Nešetřil p175: 1, 2, 3, 5




### Question 5.1.6
Let T be a tree with n vertices, n ≥ 2. For a positive integer i, let $$p_{i}$$ be the number of vertices of T of degree i. Prove
$$p_{1} −p_{3} −2p_{4} −···−(n−3)p_{n−1} =2$$
(This provides an alternative proof of the end-vertex lemma.)

$$p_{1} −p_{3} −2p_{4} −···−(n−3)p_{n−1} =2 \\ 
-(p_{1} −p_{3} −2p_{4} −···−(n−3)p_{n−1} = -2 \\
-p_{1} + p_{3} + 2p_{4} +···+(n−3)p_{n−1} = -2 \iff \sum^{n}_{i=2}(i-3)p_{i-1} = -2 \ \text{(verified)}\\
\sum^{n}_{i=1}(i+1-3)p_{i-1+1} =-2\iff \sum^{n}_{i=1}(i-2)p_{i} =-2 \\
\sum^{n}_{i=1} (i \cdot p_{i-1} - 2 \sum^{n}_{i=1} p_{i-1} =-2 \iff \sum^{n}_{i=1} i \cdot p_{i-1} - 2\sum^{n}_{i=1} p_{i-1} =-2 \\$$

Since $$p_{i}$$ denote the number of vertices with degree i, therefore 


$$\sum^{n}_{i=1} i \cdot p_{i-1} = 1p_{1}+2p_{2}+,...,np_{n}=2\lvert E \lvert$$ (The number of total degrees) And $$2\sum^{n}_{i=1} p_{i-1} = 2(p_{1}+p_{2},...,p_{n})= 2 \lvert V \lvert$$ (The total number of vertices)

Thus 

$$\sum^{n}_{i=1} i \cdot p_{i-1} - 2\sum^{n}_{i=1} p_{i-1} =-2 \iff  2 \lvert E \lvert - 2 \lvert V \lvert = -2 \\
2 \lvert E \lvert = 2( \lvert V \lvert - 1)$$

By the Euler formula, $$\lvert V \lvert - 1 = \lvert E \lvert $$

Therefore, $$p_{1} −p_{3} −2p_{4} −···−(n−3)p_{n−1} =2$$ is valid. Q.E.D



### Question 5.1.7

King Uxamhwiashurh had 4 sons, 10 of his male descendants had 3 sons each, 15 had 2 sons, and all others died childless. How many male descendants did King Uxamhwiashurh have?

I went over this problem, and realized that I can use the fact 

$$\lvert V \lvert - \lvert E \lvert= 1$$, and deg(V) = 2E

We know 
The king has 4 sons, so the vertex for the king has degree 4.
the 10 sons who have 3 sons are vertices have degree 4, 10*4 = 40
the 15 sons who have 2 sons are vertices have degree 3, 3*15 = 45
the rest are the childless and we don’t know how many, but we know they must have degree 1. so this comes the formula

 $$4+40 + 45 + x = 2\lvert E \lvert  \implies  \frac{89+x}{2} = \lvert E \lvert$$

10 have 3 sons, 15 have 2 sons, so those are vertices have degree more than 1, the rest are the childless who has degree 1. There comes the formula 

$$10+15+x = \lvert V \lvert  = 25 + x $$

Then by the Euler's formula

$$\lvert V \lvert - \lvert E \lvert = 1 \implies (25 + x) -  \frac{89+x}{2} = 1$$

$$25 + x - \frac{89}{2} - \frac{x}{2}=1 \\ 
x-\frac{x}{2} = 1+ \frac{89}{2} -25 \\
\frac {x}{2} = \frac{89}{2}-24 \\
x= 2(\frac{89}{2}-24) \\
x=89 - 48 \\
x= 41$$

So, there are 41 childless ones and therefore, the total number of sons are
41+10+15 = 66

### Question 5.4.1
Analogously to the minimum spanning tree problem, define the maximum spanning tree problem. Formulate a greedy algorithm for this problem and show that it always finds an optimal solution.


Proof: 
By previous theorem, algorithm 1 returns a spanning T, as G is connected. 

Suppose T is not maximum weight, then another spanning tree T' has bigger weight. 

Now T has edges $$e_{i_{1}},e_{i_{2}},...,e_{i_{n-1}}$$ order them in non-increasing weight.

T' has edges $$e_{j_{1}},e_{j_{2}},...,e_{j_{n-1}}$$ order them in non-increasing weight.

Suppose 
$$w(e_{i_{1}}) > w(e_{j_{1}})$$
$$w(e_{i_{2}}) > w(e_{j_{2}})$$
.
.
.
$$w(e_{i_{k-1}}) > w(e_{j_{k-1}})$$
$$w(e_{i_{k}}) > w(e_{j_{k}})$$

must happen, since weight of T' is > T.

Then the Matroid Lemma tells us that $$\exists e \in \{e_{j_{1}},e_{j_{2}},...,e_{j_{k-1}}\} \cup \{e\}$$ is cycle free. 
But we constructed T by adding edges in non-increasing order of weight, we would have added e beore adding $$e_{i_{k}}$$, which contradicts the consturction of T. #


### Question 5.4.2
Prove that if T = (V,E′) is a spanning tree of a graph G = (V,E) then the graph T + e, where e is an arbitrary edge of E \ E′, contains exactly one cycle.

Prove by contradition. 

Let T = (V,E′) be a spanning tree of G = (V,E) then the graph T + e, where e is an arbitrary edge of E \ E′, contains no cycle. We know that $$V(T) = V(G)$$ and T is minimally connected, and T has at least 2 leaves by definition. If e is added to a leaf vertex, $$w \in V(T)$$, then it would contain no cycle. However, an edge has 2 end points so this implies an additional vertex u such that $$ u \in G \setminus V(T)$$, which is a contradition, because we stated $$V(T) = V(G)$$ at the beginning.




### Question 5.4.3 
Prove that if T is a spanning tree of a graph G then for every e ∈ E(G)\E(T) there exists an e′ ∈ E(T) such that (T −e′)+e is a spanning tree of G again.

if T is a spanning tree of G, then V(T)=V(G), and V(T)-E(T)=1. By tree characteristic if T is a tree, then T-e is no longer a tree and T + e is not a tree as it contains a cycle. This implies $$\forall e \in E(G)$$, any one of them added to T would create a cycle that contains any pair two vertices,x,y, in T, A cycle means there exists two paths now between x and y, which in turn implies that one of the paths contains e and the other contains e'. If e' is removed, then the cycle is broken, but T is still connected and there remains only 1 unique path between x and y, and the $$\lvert V \lvert$$ perserved. 




### Question 5.4.5 

Let G be a connected graph with a weight function w on the edges. Prove that for each minimum spanning tree T of G, there is an initial ordering of the edges in Kruskal’s algorithm such that the algorithm outputs the tree T.

In each group of edges of the same weight, put the edges of T first. Let T′ be the tree computed by Kruskal’s algorithm, let $$e′_{1},...,e′_{n−1}$$ be its edges in the order of their selection, and let $$e_{1},...,e_{n−1}$$ be the edges of T numbered according to the chosen ordering. For contradiction, let k be the smallest index with $$e_{k} ≠ e′_{k}$$. We get $$w(e′_{k}) < w(e_{k})$$, but from the proof in the text we have $$w(e′_{i}) ≤ w(e_{i})$$ for all i, and so T is not minimum.