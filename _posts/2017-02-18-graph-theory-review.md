---
layout: post
title: Graph Theory Review
date: 2017-02-18 17:01:00
Categories: Graph Theory
tags: Graph_Theory_review review
---
* content
{: toc}

### Cycle graph
$$C_{n}$$ has n edges

### Self complementary graph
where the four entries shown are rectangular blocks.
A simple graph G is called self-complementary if G and G are isomorphic.

self-complementary graph with 5 vertices must have C(5, 2)/2 = 5 edges.

$$\binom{n}{2}$$

Given $$G(V_{a},E_{a}) \equiv \overline{G}(V_{b},E_{b})$$ 
$$\lvert V_{a}\rlvert = \lvert V_{b}\rlvert = \frac{v(v-1)}{2} $$
$$\lvert V_{a}\rlvert + \lvert V_{b}\rlvert = \frac{v(v-1)}{4} $$





### Adjacency Matrix

Sum of jth column of undirected graph
the sum of the entries is the degree of j minus the number of loops at j, since each loop contributes 2 to the degree count.

Sum of jth column of directed graph
the number of edges that have j as their terminal vertex. Another way to see it is that the sum of the entries is the in-degree of j. 

Isolated vertex
If a vertex is isolated, then it has no adjacent vertices. Therefore in the adjacency matrix the row and column for that vertex must contain all O's

### Incidence Matrix

Let G = (V , E) be an undirected graph. Suppose that $$v_{1}, v_{2}, . . . , v_{n}$ are the vertices and $$e_{1}, e_{2}, . . . , e_{m}$$ are the edges of G. Then the incidence matrix with respect to this ordering of V and E is the $$n × m$$ matrix $$M = [m_{ij}]$$, where

$$
f(n) = 
\begin{cases}
1, & \text{when edge ej is incident with $v_{i}$} \\[2ex]
0, & \text{otherwise}
\end{cases}
$$

Sum of ith rows
the sum of of a row of an undirected graph is the degree of the vertex $$v_{i}$$ - the number of loops at $$v_{i}$$

Sum of jth columns
Each column represents an edge, the sum of the entries in the column is either 2, if the edge has 2 incident vertices (i.e., is not a loop), or 1 if it has only 1 incident vertex (i.e., is a loop).

$$K_{n}$$
The incidence matrix for $$K_{n}$$ has n rows and C(n, 2) columns. For each there is a column with l's in rows i and j and O's elsewhere.

Bipartite Graph

This matrix has m + n rows and $$m \cdot n$$ columns, one column for each pair (i,j) with 1 ≤ i ≤ m and 1 ≤ j ≤ n. 


### Distance in graphs

1. dG(v,v′)≥0,and dG(v,v′)=0 if and only if v=v′;
2. (symmetry) dG(v, v′) = dG(v′, v) for any pair of vertices v, v′;
3. (triangle inequality) dG(v, v′′) ≤ dG(v, v′)+dG(v′, v′′) for any three verticesv,v′,v′′ ∈V(G).
4. dG(v,v′) is a nonnegative integer for any two vertices v, v′;
5. if dG(v,v′′) > 1 then there exists a vertex v′, v ≠ v′ ≠ v′′, such that dG(v, v′) + dG(v′, v′′) = dG(v, v′′).


### Connectivity 
A subset V′ of the vertex set V of G=(V,E) is a vertex cut,or separating set,if G−V′ is disconnected

complete graph has no vertex cuts, because removing any subset of its vertices and all incident edges still leaves a complete graph. The only way to define κ(G) is to set κ(Kn) = n − 1, the number of vertices needed to be removed to produce a graph with a single vertex.


