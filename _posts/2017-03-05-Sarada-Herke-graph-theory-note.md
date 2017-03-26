---
layout: post
title:  Sarada Herke graph theory note
date:   2017-03-05 08:26:05
categories: Math
tags: Sarada_Herke graph_theory
---

* content
{: toc}

This is a blog post I keep as my personal note in studying [Sarada Kerke's](https://www.youtube.com/playlist?list=PLoJC20gNfC2gmT_5WgwYwGMvgCjYVsIQg) graph theorem on YouTube. 
I will update my note every time I finish studying one lecture. 


## Graph Theory: 12. Spanning and Induced Subgraphs

<iframe width="560" height="315" src="https://www.youtube.com/embed/dPHkyRvLtIU?list=PLoJC20gNfC2gmT_5WgwYwGMvgCjYVsIQg" frameborder="0" allowfullscreen></iframe>

note: G-v, G / e. (vertex and edge deletion has different notation)
<figure>
<img src = "{{root_url | prepend: site.baseurl}}/asset/graph_theory/pic/Sarada-Herke/V-12/v-12-a.png" width = "500">
<figurecpation></figurecpation>
</figure>

A graph F is a subgraph of a graph G if 
1: $$V(F) \subset V(G)$$
2: $$E(F) \subset E(E)$$

If F is a subgraph of G we write $$F \subset G$$. We can say F is contained in G or G contains F. 

<figure>
<img src = "{{root_url | prepend: site.baseurl}}/asset/graph_theory/pic/Sarada-Herke/V-12/v-12-b.png" width = "500">
<figurecpation></figurecpation>
</figure>

Spanning subgraph is a subgraph obtained only by edge deletions. In other words, the vertice set of the subgraph is the entirely vertice set of the original graph. 

A subgraph obtained only by vertice deletion is called an induced subgraph. 

Graph G and X is the set of vertices that are deleted, the resulting subgraph is G - X.

<figure>
<img src = "{{root_url | prepend: site.baseurl}}/asset/graph_theory/pic/Sarada-Herke/V-12/v-12-c.png" width = "500">
<figurecpation></figurecpation>
</figure>


X=$$\{v_{1},v_{5}\}$$ 
G- X. We are interested in the set of vertices Y=V\X. (all the vertices that are remained)
Y=$$\{v_{2},v_{3},v_{4}\}$$
G[Y] = graph induced by the vertices in Y. 

The graph with vertex set Y and edge set consists of all edges of G which have both ends in Y. 
<figure>
<img src = "{{root_url | prepend: site.baseurl}}/asset/graph_theory/pic/Sarada-Herke/V-12/v-12-d.png" width = "500">
<figurecpation></figurecpation>
</figure>

## Graph Theory: 13. Degrees at Least Two Means a Cycle Exists

<iframe width="560" height="315" src="https://www.youtube.com/embed/voD1xLxZvAM?list=PLoJC20gNfC2gmT_5WgwYwGMvgCjYVsIQg" frameborder="0" allowfullscreen></iframe>

Assume G is a simple graph. 

Let P be a longest path in G. 


## Graph Theory: 23. Euler Trials and Euler Tours. 






<iframe width="560" height="315" src="https://www.youtube.com/embed/1V_6nUUNoms?list=PLoJC20gNfC2gmT_5WgwYwGMvgCjYVsIQg" frameborder="0" allowfullscreen></iframe>


Euler trails & Euler Tours
* A walk $$u \to v$$ is closed if $$u = v$$
* A trail is a walk with no repeated edges. (it is possible with repeated vertices, and a trail is different from a path)
* A Euler trail: a trail that visit every edge once. 
* Euler tour: an Euler trail that is closed. If a graph has an Euler tour, it is called Eulerian. 

Theorem: A connected graph G is Eulerian $$\iff$$ every vertex of G has even degree. 

note: The number of odd degree vertex is ether zero or exactly 2. (That's for Euler trail)

Euler 1736
Full Proof is given by Hierholzer 1873

$$\implies ]$$ Suppose G is a connectd Eulerian graph, let $$W:u \to u$$ be on Euler tour.

proof
Let $$v≠ u$$ of G that occurs k times in W. Then every time it has to arrived at v on one edge and leave on another edge. Therefore, $$d(v)=2k$$ [Review bridge of Konisberg]()

<figure>
<img src = "{{root_url | prepend: site.baseurl}}/asset/graph_theory/pic/Sarada-Herke/V-23/v-23-a.png" width = "500">
<figurecpation>Figure 1</figurecpation>
</figure>

$$\impliedby ] $$Let G be a nontrivial connected graph. Whose vertices all have even degree. 

longest trial, can not be extended longer. 

Let w be a longest trial in G. $$w: v_{0},e_{1},v_{2},e_{2}...e_{l-1},v_{l-1}e_{l}v_{l}$$

$$v_{0} \to v_{e}$$. Now $$v_{l}=v_{0}$$ Since all edges incident with $$v_{l}$$ are used in w and $$v_{l}$$ has even degree, $$v_{l}=v_{0}$$. Otherwise w could be extended to a longer trail. 

if $$v_{l}≠ v_{0} and v_{l} occurs k times in w$$, then $$d(v_{e})=2(k-1)+1$$

Thus w is a closed trail. 

Suppose w is NOT an Euler tour. Since G is connected. There is an edge $$f=v:u \in E(G) \not\in E(W)$$
Then if $$f=\{v_{i},u\} e_{i+1},...e_{l}...e_{1}....e_{i}$$

<figure>
<img src = "{{root_url | prepend: site.baseurl}}/asset/graph_theory/pic/Sarada-Herke/V-23/v-23-b.png" width = "500">
<figurecpation>Figure 1</figurecpation>
</figure>



## Graph Theory: 24. Euler Trail iff 0 or 2 Vertices of Odd Degree

<iframe width="560" height="315" src="https://www.youtube.com/embed/g929VCcnz5Q?list=PLoJC20gNfC2gmT_5WgwYwGMvgCjYVsIQg" frameborder="0" allowfullscreen></iframe>


Summary from last video

A graph that admits on Euler tour is called Eulerian. 

Theorem: A connected graph is Eulerian $$\iff$$ every vertex has even degree. 

<figure>
<img src = "{{root_url | prepend: site.baseurl}}/asset/graph_theory/pic/Sarada-Herke/V-24/v-24-a.png" width = "500">
<figurecpation>Figure 1</figurecpation>
</figure>




If w is not Eulerian tour, then not all edges got covered by w. This can make a longer trail $$f \cup w$$ $$(\implies \impliedby)$$ 

The graph has $$\lvert E(w)\lvert+1$$ edges


Theorem: A connected graph has an Euler trail $$\iff$$ it has at most 2 vertices of odd degree. 

* also from the handshaking theorem (a graph has an even number of odd degree vertices.)

$$\implies ]$$ If G has an Euler trail $$u \to v$$ then as in the proof of the previous theorem, all $$w \not\in \{u,v\}$$ has even degree. 
Then either 0 or 2 vertices of odd degree. 

$$\impliedby$$ Suppose at most 2 vertices with odd degree. 



<figure>
<img src = "{{root_url | prepend: site.baseurl}}/asset/graph_theory/pic/Sarada-Herke/V-24/v-24-b.png" width = "500">
<figurecpation>Figure 1</figurecpation>
</figure>

* If no vertices have odd degree, then there is an Euler tour. 
* If there are 2 vertices of odd degree. 
$$u,v$$ have odd degree in G
then Add new vertices w, then we have new edges $$\{u,w\}$$ and $$\{u,v\}$$
New graph H all vertices of even degree. H has an Euler tour. 
Take $$w \to w$$
The portion of the Euler tour with w removed (uw,vw), is an Euler trail from $$u \to v$$


## Graph Theory: 25. Graph Decompositions

<iframe width="560" height="315" src="https://www.youtube.com/embed/lGth8VdtU88?list=PLoJC20gNfC2gmT_5WgwYwGMvgCjYVsIQg" frameborder="0" allowfullscreen></iframe>

Decompositions

![V-25-a]()

A decomposition of a graph G is a family $$\mathbf{F}$$ of edge disjoint subgraphs of the original graph G such that 

![V-25-b]()

$$\{C_{3},C_{5},C_{9},C_{3}\}= \mathbf{F}$$

$$\bigcup_{f \in \mathbf{F}} E(F) = E(G)$$

If every graph of $$\mathbf{F}$$ is a cycle then the decomposition is called a cycle decomposition. If every graph in $$\mathbf{F}$$ is a path, then it is a path decomposition. 

Note: Every simple graph can be decomposed into edges, so there is a trivial decomposition.

## Graph Theory: 26. Cycle Decomposition iff All Vertices Have Even Degree

<iframe width="560" height="315" src="https://www.youtube.com/embed/Dvvqs375ax8?list=PLoJC20gNfC2gmT_5WgwYwGMvgCjYVsIQg" frameborder="0" allowfullscreen></iframe>

An even graph is a graph whose vertices all have even degree

[Veblen's Theorem](https://en.wikipedia.org/wiki/Veblen's_theorem) 1912/13): 

A graph G admits a cycle decomposition $$\iff$$ G is even. 

Proof
$$\implies ]$$ Suppose there is a cycle decomposition of G, take any $$v \in V(G)$$, either 

1: v is isolated, d(v)=0

2: or v belongs to k of cycles in the decomposition. 

<figure>
<img src = "{{root_url | prepend: site.baseurl}}/asset/graph_theory/pic/Sarada-Herke/V-26/v-26-a.png" width = "500">
<figurecpation>Figure 1</figurecpation>
</figure>

Then $$d(v) = 2 k$$ and $$\forall v \in V(G)$$ $$d(v)$$ is even. 

$$\impliedby ]$$

Aim: G even \implies G has a cycle decomposition * use Strong Induction on $$\lvert E(G)\lvert$$

Basis: $$\lvert E(G)\lvert$$=0


<figure>
<img src = "{{root_url | prepend: site.baseurl}}/asset/graph_theory/pic/Sarada-Herke/V-26/v-26-b.png" width = "500">
<figurecpation>Figure 1</figurecpation>
</figure>

Induction Hypothesis: Suppose that for all even graph on < m edges there exists a cycle decomposition. 

Take G to be even E(G)\lvert$$=m. 


<figure>
<img src = "{{root_url | prepend: site.baseurl}}/asset/graph_theory/pic/Sarada-Herke/V-26/v-26-c.png" width = "500">
<figurecpation>Figure 1</figurecpation>
</figure>

X = the set of V(G) with degree > 0. 

F = G(X) (induced of X, so it is also even graph, and all $$v \in F$$ ≥ 2)

$$\implies$$ There is a cycle in F, call it C. 

Take $$G' = G \setminus E(C)$$, and subtract a cycle then G' is still be even. 

G' is an even graph with < m edges. 

By the Inductive Hypothesis, G' has a cycle decomposition. call it C'. 

Now $$\mathbf{C} = C' \cup C$$ is a cycle decomposition of G. Q.E.D.

If a graph is Eulerian $$\iff even \iff cycle decomposition$$

Euler tour: can have repeated vertices. 

Cycle decomposition: decompose E(G) into $$\{ C_{1},C_{2},...,C_{k}\}$$

## Graph Theory: 27. Hamiltonian Graphs and Problem Set

<iframe width="560" height="315" src="https://www.youtube.com/embed/wh9mZCUf-z4?list=PLoJC20gNfC2gmT_5WgwYwGMvgCjYVsIQg" frameborder="0" allowfullscreen></iframe>

Hamiltonian Graphs

Hamilton path: covers every vertex once

Hamilton cycle: cycle that covers every vetex once. 

If $$\exists$$ Hamilton cycle, the graph is hamiltonian. 


<figure>
<img src = "{{root_url | prepend: site.baseurl}}/asset/graph_theory/pic/Sarada-Herke/V-27/v-27-a.png" width = "300">
<figurecpation>Figure 1</figurecpation>
</figure>

Hamiltonian cycle can be converted to a Hamiltonian path by removing one edge.

If G is Hamiltonian, then any supergraph $$G', G \subset G'$$ where G' is obtained by adding new edges between non-adjcent vertices of G. Then G' is also Hamiltonian. 

<figure>
<img src = "{{root_url | prepend: site.baseurl}}/asset/graph_theory/pic/Sarada-Herke/V-27/v-27-b.png" width = "300">
<figurecpation>Figure 1</figurecpation>
</figure>

Clearly $$C_{n}$$ is Hamiltonian $$C_{n}=G$$. $$K_{n}=G'$$. then $$K_{n}$$ is Hamiltonian. 

3 problems to try. 

1: Show that $$K_{m,n}$$ is Hamiltonian \iff $$n = m ≥ 2$$

2: Give a graph that has no Hamilton path. 

3: Can a Hamilton path always be used to form a Hamilton cycle? Explain. 


## Graph Theory: 28. Hamiltonian Graph Problems

<iframe width="560" height="315" src="https://www.youtube.com/embed/3xeYcRYccro?list=PLoJC20gNfC2gmT_5WgwYwGMvgCjYVsIQg" frameborder="0" allowfullscreen></iframe>

### Question 1 
Show that $$K_{m,n}$$ is Hamiltonian \iff $$n = m ≥ 2$$

$$\implies ]$$ Let $$K_{m,n}$$ have bipartition X,Y where $$\lvert X \lvert = n, \lvert Y \lvert = m$$
Let C be a Hamilton cycle of $$K_{m,n}$$
Each cycle in $$K_{n,n}$$ has even length [see: Graph is Bipartite iff No Odd Cycle]()
And thus the cycle visits X and Y equally many times. 
and is incident with all vertices, so $$\lvert X \lvert=\lvert Y \lvert$$

this following $$k_{2}$$ is so trival, m ≥ 2, 
<figure>
<img src = "{{root_url | prepend: site.baseurl}}/asset/graph_theory/pic/Sarada-Herke/V-28/v-28-a.png" width = "500">
<figurecpation>Figure 1</figurecpation>
</figure>

<figure>
<img src = "{{root_url | prepend: site.baseurl}}/asset/graph_theory/pic/Sarada-Herke/V-28/v-28-b.png" width = "500">
<figurecpation>Figure 1</figurecpation>
</figure>

### Question 2
Give a connected graph that has no Hamilton path. 

<figure>
<img src = "{{root_url | prepend: site.baseurl}}/asset/graph_theory/pic/Sarada-Herke/V-28/v-28-c.png" width = "500">
<figurecpation>Figure 1</figurecpation>
</figure>

note: have 2 vertices with degree 1 does not ensure the graph has a Hamilton path. see the blue graph above

### Question 3 
Can a Hamilton path always be used to form a Hamilton cycle? Explain. 


<figure>
<img src = "{{root_url | prepend: site.baseurl}}/asset/graph_theory/pic/Sarada-Herke/V-28/v-28-d.png" width = "500">
<figurecpation>Figure 1</figurecpation>
</figure>

## Graph Theory: 29. Lovasz Conjecture on Hamilton Paths

<iframe width="560" height="315" src="https://www.youtube.com/embed/Bq1u9704csA?list=PLoJC20gNfC2gmT_5WgwYwGMvgCjYVsIQg" frameborder="0" allowfullscreen></iframe>

![Lov$$\acute{a}$$sz]() Conjecture: Every finite connected vertex transitive graph has a Hamilton path. 

An automorphism of a graph G is an isomorphism from G to itself. $$\alpha:V(G)=V(G), u \to v$$

Vertices $$u,v \in V(G)$$ are **similar** if there is an automorphism $$\alpha$$ such that $$\alpha(u)=v$$

A vertex transitive graph is a graph in which all vertices are similar. you can take any pair of vertices in the graph and map it to another pair in its automorphism. 

Example. 

$$v_{1}$$ and $$v_{2}$$ 
$$\alpha: v_{1} \to v_{2} \\$$
\alpha: v_{2} \to v_{1} \\
\alpha: v_{3} \to v_{3} $$

$$v_{1},v_{2}\in E(G)$$ 
$$v_{1},v_{3}\in E(G)$$ 

![v-29-a]()

$$\{\alpha(v_{1}),\alpha(v_{2})\}=\{v_{2},v_{1}\} \in E(G)$$ 

$$\{\alpha(v_{1}),\alpha(v_{3})\}=\{v_{2},v_{3}\} \in E(G)$$ 

$$v_{1},v_{2}$$ are similar, so vertex-transitive. 

any cycle is vertex transitive. 



vertex transitive graphs are regular. 


Frucht graph 

3-regular, but not vertex transtive.

u and v are not similar(u is incident to 3 cycle, but v is not)



## Graph Theory: 36. Definition of a Tree

<iframe width="560" height="315" src="https://www.youtube.com/embed/QFQlxtz7f6g?list=PLoJC20gNfC2gmT_5WgwYwGMvgCjYVsIQg" frameborder="0" allowfullscreen></iframe>


Tree

A graph with no cycles is acyclic.

A tree is a connected acyclic graph. 

A forest is an acyclic graph. 

Corollary: a connected graph is a tree $$\iff$$ all of its edges are bridges. 

Cayley's formula: There are $$n^{n-2}$$ trees on a vertext set V of n elements.



Collary: A forest F of order n with k connected components has 

<figure>
<img src = "{{root_url | prepend: site.baseurl}}/asset/graph_theory/pic/Sarada-Herke/V-36/v-36-a.png" width = "500">
<figurecpation></figurecpation>
</figure>
 table for non-isomorphic trees 



<figure>
<img src = "{{root_url | prepend: site.baseurl}}/asset/graph_theory/pic/Sarada-Herke/V-36/v-36-b.png" width = "500">
<figurecpation></figurecpation>
</figure>
pair-wise non isomorphic trees



Let T be a tree, If $$v \in V(T)$$ and d(v) = 1 then v is a leaf. 

Fact: Every tree T with $$\lvert V(T) \lvert ≥ 2$$ has at least 2 leaves. 

Take a maximal path T.
Each end vertex of this path is a leaf. 



## Graph Theory 37. Which Graphs are Trees

<iframe width="560" height="315" src="https://www.youtube.com/embed/BptJFixSseM?list=PLoJC20gNfC2gmT_5WgwYwGMvgCjYVsIQg" frameborder="0" allowfullscreen></iframe>

Theorem: A graph G is a tree $$iff$$ G is acyclic and $$\lvert E(G) \lvert = \lvert V(G) \lvert -1 $$. 

Proof

$$\implies$$ G is a tree and acylic. (by definition)

By induction 

Base n=1 m = 0.  checked. 

Induction hypothesis: Suppose all trees of order n have n-1 edges(n≥1).
Let T be a tree of order n+1. $$\exists$$ at least 2 leaves. Let $$v \in V(T)$$ with degree 1 (leaf). 

T' = T-v
so T' has n-1 edges. T has(n-1)+1 = n edges. 

$$\impliedby$$ Suppose G is acyclic and m = n-1

We do not know if G is connected, but suppose there are k connected components$$G_{1},G_{2}...G_{i}...G_{k}$$ in G. Now that we know $$G_{i}$$ is connected, also by definition it is acylic. And $$G_{i}$$ has $$m_{i}$$ edges and $$n_{i}$$ vertices. So, by our hypothesis,$$m_{i}=n_{i}-1$$ and this implies that $$m=\sum_{i=1}^{k}m_{i}=\sum_{i=1}^{k}n_{i}-1$$=n-k. And from our hypothesis, m = n-1. so n-1=n-k. Therefore, k must be 1. This implies that there is only 1 connected component in G, so G is connected. 


## Graph Theory: 38. Three ways to Identify Trees

<iframe width="560" height="315" src="https://www.youtube.com/embed/Yon2ndGQU5s?list=PLoJC20gNfC2gmT_5WgwYwGMvgCjYVsIQg" frameborder="0" allowfullscreen></iframe>

Theorem: A graph G is a tree $$\iff$$ G is acyclic and $$\lvert E(G) \lvert = \lvert V(G)\lvert$$ -1. m=n-1

Corollary: A forest F of order n with k connected compnents, has m = n-k edges. 

spanning tree of a graph G: spanning subgraph of G that is a tree. 










