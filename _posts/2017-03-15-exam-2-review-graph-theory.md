---
layout: post
title: Graph Theory Exam 2 review
date: 2017-03-15 15:50:00
categories: math
tags: exam graph_theory review
---
* content
{: toc}

### Question 1

State the definition of the distance dG(v,w) between vertices v and w in a connected graph G.







Let $$G = (V,E)$$ be a connected graph. We define the distance of two vertices $$v, v′ ∈ V (G)$$, denoted by $$d_{G}(v, v′)$$, as the length of a shortest path from v to v′ in G.

### Question 2
Give an example of a graph which satisfies Euler’s formula $$(|V | − |E| = 1)$$, but which is not a tree.

### Question 3
Find the adjacency matrix for $$K_{1,3}$$. Indicate clearly the vertex ordering that you are using.


### Question 4
Draw an example of a Sperner coloring of a subdivision having at least 10 small triangles (of a big triangle). Indicate on your drawing all of the small triangles which receive all 3 colors.

### Question 5

Characterize the values of n and m such that $$K_{n,m}$$ is Eulerian (i.e., such that $$K_{n,m}$$ has a closed Eulerian tour).


### Question 6

(2 points) Prove that if G is a tree, then G is cycle-free and satisfies the Euler formula. (You may use the Tree Characterization Theorem.)


(8 points) Prove that if G is cycle-free and satisfies the Euler formula, then G is a tree.

### Question 7

3. (10 points) Let v be a vertex of degree 1 in G. Prove that G is connected if and only if G \ v is connected.

### Question 8

Let G be the graph on vertex set $$\{0, 1, 2, . . . , 100\}$$, with edges between i and j whenever $$\lvert i − j\lvert ∈ \{1, 4, 40, 61, 97, 100\}$$. Prove that G is 2-connected.
(It may be helpful to notice that 100 = 101−1, 97 = 101−4, and 61 = 101−40.)


Definitions

4.1
The complete graph $$K_{n}$$:
V = $$\{1,2,...,n\}$$, E = $$\binom{V}{2}$$.

4.1.2 Definition. Two graphs G = (V, E) and G′ = (V ′, E′) are called isomorphic if a bijection f : V → V ′ exists such that

{x,y} ∈ E if and only if {f(x),f(y)} ∈ E′

4.2.1 Definition. Let G and G′ be graphs. We say that G is a subgraph of G′ if V (G) ⊆ V (G′) and E(G) ⊆ E(G′).
We say that G is an induced subgraph of G′ if V(G) ⊆ V(G′) and E(G) = E(G′) ∩ $$\binom{V(G)}{2}$$ .


Paths and cycles. A subgraph of a graph G isomorphic to some path Pt is called a path in the graph G
$$(v_{0},e_{1},v_{1},...,e_{t},v_{t})$$

i = 1,2,...,t we have $$e_{i} = {v_{i}−1,v_{i}} ∈ E(G)$$

Connectedness, components. 
We say that a graph G is connected if for any two vertices x,y ∈ V(G), G contains a path from x to y.

4.2.2 Observation. 
Each component of any graph is connected, and a graph is connected if and only if it has a single component



Distance in graphs. 

Let G = (V,E) be a connected graph. We define the distance of two vertices v, v′ ∈ V (G), denoted by dG(v, v′), as the length of a shortest path from v to v′ in G.

1. dG(v,v′)≥0,and dG(v,v′)=0 if and only if v=v′;

2. (symmetry) dG(v, v′) = dG(v′, v) for any pair of vertices v, v′;

3. (triangle inequality) dG(v, v′′) ≤ dG(v, v′)+dG(v′, v′′) for any three
verticesv,v′,v′′ ∈V(G).


4. dG(v,v′) is a nonnegative integer for any two vertices v, v′;

5. if dG(v,v′′) > 1 then there exists a vertex v′, v ≠ v′ ≠ v′′, such
that dG(v, v′) + dG(v′, v′′) = dG(v, v′′).

4.4.1 Theorem (Characterization of Eulerian graphs)
A graph G = (V, E) is Eulerian if and only if it is connected and each vertex has an even degree.

4.5.1 Definition. A directed graph G is a pair (V, E), where E is a subset of the Cartesian product V × V . The ordered pairs (x, y) ∈ E are called directed edges. We say that a directed edge e = (x, y) has head y and tail x,or that e is an edge from x to y.

4.6.1 Definition (2-connectivity). A graph G is called 2-connected if it has at least 3 vertices, and by deleting any single vertex we obtain a connected graph.

4.6.3 Theorem. A graph G is 2-connected if and only if there exists, for any two vertices of G, a cycle in G containing these two vertices.

5.1.1 Definition. A tree is a connected graph containing no cycle.

5.1.2 Theorem (Tree characterizations). The following conditions are all equivalent for a graph G = (V, E):

(i) G is a tree.

(ii) (Path uniqueness)

For every two vertices x, y ∈ V , there exists exactly one path
from x to y.

(iii) (Minimal connected graph)
The graph G is connected, and deleting any of its edges gives rise to a disconnected graph.

(iv) (Maximal graph without cycles)
The graph G contains no cycle, and any graph arising from G by adding an edge (i.e. a graph of the form G+e, where e ∈  V2  \E) already contains a cycle.

(v) (Euler’s formula)
G is connected and $$\lvert V \lvert = \lvert E \lvert + 1$$.

5.1.3 Lemma (End-vertex lemma). Each tree with at least 2 ver- tices contains at least 2 end-vertices.


## Additional problems 

4.2
9. (a) Find a connected graph of n vertices for which each of the powers A1G , A2G , . . . of the adjacency matrix contains some zero elements.

For the first question, consider the graph with two vertices and one edge. More generally, consider any bipartite graph. The point is that a walk with ends in different vertex sets has odd length, while a walk with ends in the same vertex set has even length.


