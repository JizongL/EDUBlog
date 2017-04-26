---
layout: post
title: Graph Theory Homework Assignment 11
date: 2017-04-07 00:01:00
categories: Graph_Theory_homework
tags: Graph_Theory_homework  
---
* content
{: toc}

Matoušek-Nešetřil p175: 8
Matoušek-Nešetřil p189: 1, 2b

### Question 1

**A. Let X consist of m points in an n-dimensional vector space V.**

**1:Describe (using a pseudocode approach similar to the examples in class) the greedy algorithm for finding a maximal independent subset of X.**

Let X consiste of m points in an n-dimensional vector space V, let V be the vertice set of a graph G. Then If G = (V,E) is connected graph with weight function $$w: E \to \mathbb{R}$$ and we take an edge order $$e_{1},e_{2},...,e_{m}$$ such that $$w(e_{1})≥w(e_{2}),...,≥w(e_{m})$$ ("non-increasing" or "weakly decreasing")

Then Algorithm 1 (with this ordering) 

yields a maximum weight spanning tree for G. 

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

It must happen, since weight of T' is < T.

Then the Matroid Lemma tells us that $$\exists e \in \{e_{j_{1}},e_{j_{2}},...,e_{j_{k-1}}\} \cup \{e\}$$ i cycle free. 
But we constructed T by adding edges in non-increasing order of weight, we would have added e beore adding $$e_{i_{k}}$$, which contradicts consturction of T. #



**2: Show that your algorithm yields a basis for V if and only if X spans V**

The Matroid Exchange Lemma says that, if you have two spanning trees T and S of a graph, then you can remove edge e from T, and find some edge f of S (depending on e), so that $$T \setminus \{e\} \cup \{f\}$$ is also a spanning tree.

So, if we take away an edge, and find another edge, the total number of V is not changed. Therefore, the spanning tree graph produced by the algorithm will yields a basis (V-1)in V. 

### Question 5.4.8
**Consider an n-point set V in the plane. We define a weight function on the edge set of the complete graph on V : the weight of an edge $$\{x, y\}$$ is the distance of the points x and y.**     

**(a)Show that no minimum spanning tree for this network has a vertex of degree 7 or higher.** 

Let G be a graph, and let T be a minimum spaning tree of G, then assume that v is a vertex of T that has degree ≥ 7, then there exist $$u_{1},u_{2}$$ such that the edges $$e_{1}=\{v,u_{1}\}$$ and $$e_{2}=\{v,u_{2}\}$$ form an angle a < 60 degrees.(it is fact) Thus the other 2 angles b and c would sum to be > 120. And since the sum of a triangle's angles is 180, then there are a the following cases to consider. 

i: both b and c < 90

ii: b > 90, c < 90

iii: b< 90,c > 90

Furthermore, Since the weight of any edge of $$\{x, y\}$$ of T is its distance, which is defined as the shortest path between any two vertices. And by Algorithem 1, the shorter edges are favored during the selection process. As a result, the shorter path between x and y are selected. Also,by the properties of the relationship between inner angles of tringle and its sides, we know that in any triangle
1: the largest interior angle is opposite the largest side
2: the smallest interior angle is opposite the smallest side
3: the middle-sized interior angle is opposite the middle-sized side

Now, let's define a to be the angle opposite to $$e_{3}=\{u_{1},u_{2}\}$$,b is the angle opposite to $$e_{1}$$,and c is the angle opposite to $$e_{2}$$, and in addition, we know b and c would sum up to be > 120, and we know a < 60.

Therefore, in case i, if a < b < c, it implies the path $$\{e_{1},e_{3}\}$$ is shorter than $$\{e_{1},e_{2}\}$$ or $$\{e_{2},e_{3}\}$$, or if a < c < b, the path $$\{e_{2},e_{3}\}$$ is shorter than $$\{e_{1},e_{2}\}$$ or $$\{e_{1},e_{3}\}$$. Therefore, Algorithm would favor $$e_{3}$$ over the other two edges, and in either case, v would not have formed an angle < 60, which implies v would not have degree ≥ 7. 

Then in case ii, b > 90, c < 90, this implies the path a < c < b and case iii implies a < b < c, which both are proven above. 

therefore, if T is a minimal connected graph, there is no vertex whose degree ≥ 7 exists. 



**b: Show that there exists a minimum spanning tree whose edges do
not cross.**

Let there be a minimum spanning tree T. and let A,B,C,D be vertices of T. Assume $$e_{1}=\{A,B\},e_{2}=\{C,D\}$$ and let them be 2 edges of T that has a common neighbor vertex v. Then ABCD forms a convex quadrangle, which it could either be a parallelogram or a rectangle(see figure). Since Algorithm 1 selects edges for T by determining the weight of the edges, which is the distance. So, edges that have less weight would be favored. Therefore, in either cases, $$\lvert AB \lvert +\lvert CD \lvert ≤ \lvert AC\lvert+\lvert BD\lvert$$ or $$\lvert BC \lvert +\lvert AD \lvert ≤ \lvert AC\lvert+\lvert BD \lvert $$, which implies the diagonals connection will always be greater than the outer edges connection, therefore, the crossing would be replaced by the noncrossing edges. 


<figure>
<img src = "{{root_url | prepend: site.baseurl}}/asset/graph_theory/pic/homework/assign-11/assign-11-d.jpeg" width = "300">
<figurecpation></figurecpation>
</figure>




### Question 6,1.1 

**Find**

**(a) a planar graph all of whose vertices have degree 5**

<figure>
<img src = "{{root_url | prepend: site.baseurl}}/asset/graph_theory/pic/homework/assign-11/assign-11-a.jpg" width = "300">
<figurecpation></figurecpation>
</figure>

**(b) connected graphs as in (a) with arbitrarily many vertices.**

<figure>
<img src = "{{root_url | prepend: site.baseurl}}/asset/graph_theory/pic/homework/assign-11/assign-11-b.jpg" width = "300">
<figurecpation></figurecpation>
</figure>

### Question 6.1.2b

**Find a drawing of $$K_{6}$$ on the torus.** 

<figure>
<img src = "{{root_url | prepend: site.baseurl}}/asset/graph_theory/pic/homework/assign-11/assign-11-c.jpeg" width = "300">
<figurecpation></figurecpation>
</figure>



