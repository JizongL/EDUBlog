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
A simple graph G is called self-complementary if G and G' are isomorphic.

self-complementary graph with 5 vertices must have C(5, 2)/2 = 5 edges.

$$\binom{n}{2}$$

Given $$G(V_{a},E_{a}) \equiv \overline{G}(V_{b},E_{b})$$ 
$$\lvert V_{a}\lvert = \lvert V_{b}\lvert = \frac{v(v-1)}{2} $$
$$\lvert V_{a}\lvert + \lvert V_{b}\lvert = \frac{v(v-1)}{4} $$





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


### Hamiltonian cycle

#### Dirac's Theorem 


<iframe width="560" height="315" src="https://www.youtube.com/embed/OGh5JKso0y4" frameborder="0" allowfullscreen></iframe>

Let G be a simple graph on n vertices, and assume that all vertices in G are of degree at least $$\frac{n}{2}$$. Then G has a Hamiltonian cycle.



However, these theorems do not provide necessary conditions for the existence of a Hamilton circuit. For example, the graph in example 2 and example 3(see figure 1 & 2), which is a $$C_{5}$$, have a Hamilton circuit but does not satisfy the hypotheses of either Ore’s theorem or Dirac’s theorem

So, Dirac Theorem is just a necessary condition, but does not dictate the existence of a himiltonian cycle in a graph



Proof. Let us assume that G does not have a Hamiltonian cycle. Let us add new edges to G as long as we can without creating a Hamiltonian cycle. When we stop, we have a graph G' in which all vertices have degree at least $$\frac{n}{2}$$, there is no Hamiltonian cycle, but adding any new edge would create a Hamiltonian cycle.

Let x and y be two vertices in G' that are not connected by an edge. As adding the edge xy would create a Hamiltonian cycle, it follows thatG' has a Hamiltonian path P that starts at x and ends in y. Denote $$x = z_{i},z_{2},z_{3},... ,z_{n-i},z_{n} = y$$ the vertices of this path, from x to y. Vertices x and y together have at least n neighbors. Therefore, the pigeonhole principle implies that there must be an index i so that $$2 < i < n — 1$$, while $$xz_{i}$$ is an edge, and also, $$z_{i-1}y$$ is an edge. This is a contradiction, however, for this would mean that $$$$xz_{2}...z_{i-1}yz_{n-1}...z_{i}$$ is a Hamiltonian cycle as shown in the Figure 9.4. 

<figure>
<img src = "{{root_url | prepend: site.baseurl}}/asset/graph_theory/pic/study-note/hamiltonian/dirac-d.png" width = "500">
<figurecpation> </figurecpation>
</figure>

Proof is adopted from [A Walk Through Combinatorics - An Introduction to Enumeration and Graph Theory, 2nd Ed](https://www.amazon.com/Walk-Through-Combinatorics-Fourth-Miklos/dp/9813148845/ref=pd_sbs_14_img_0?_encoding=UTF8&psc=1&refRID=730VADEYFTKEKCAXWRPJ) p 189. 

####See some examples

<figure>
<img src = "{{root_url | prepend: site.baseurl}}/asset/graph_theory/pic/study-note/hamiltonian/dirac-a.png" width = "500">
<figurecpation> Figure 1: example 1</figurecpation>
</figure>

<figure>
<img src = "{{root_url | prepend: site.baseurl}}/asset/graph_theory/pic/study-note/hamiltonian/dirac-b.png" width = "500">
<figurecpation> Figure 2: example 2</figurecpation>
</figure>





#### ORE’S THEOREM 

<iframe width="560" height="315" src="https://www.youtube.com/embed/IIcwc09PmXU" frameborder="0" allowfullscreen></iframe>

If G is a simple graph with n vertices with n ≥ 3 such that deg(u) + deg(v) ≥ n for every pair of nonadjacent vertices u and v in G, then G has a Hamilton circuit


<figure>
<img src = "{{root_url | prepend: site.baseurl}}/asset/graph_theory/pic/study-note/hamiltonian/ore-a.png" width = "500">
<figurecpation> Figure 1: example 1</figurecpation>
</figure>

<figure>
<img src = "{{root_url | prepend: site.baseurl}}/asset/graph_theory/pic/study-note/hamiltonian/ore-b.png" width = "500">
<figurecpation> Figure 2: example 2</figurecpation>
</figure>



### Euler path and cycle

<iframe width="560" height="315" src="https://www.youtube.com/embed/Kwj5sdF8b18" frameborder="0" allowfullscreen></iframe>



