---
layout: post 
title: Graph Theory Assignment 5
date: 2017-02-18 11:01:00
categories: Graph_Theory
tags: Graph_Theory_homework homework
---


### Question 1 (Q5)
Call a graph $$G = (V, E)$$ vertex-transitive if for any two vertices $$v, v′ ∈ V$$ an automorphism $$f : V → V$$ of G exists (see Exercise 3) $$with \ f(v) = v′$$. Similarly, G is edge-transitive if for any two edges $$e,e′ ∈ E$$ an automorphism $$f:V →V$$ exists with $$f(e)=e′$$ (if$$ e=\{u,v\}$$ then the notation $$f(e)$$ stands for the set $$\{f(u),f(v)\})$$.

**(a) Prove that the graphs in Exercise 1 is vertex-transitive**

The graphs from Exercise 1 are Petersen graph and also called Kneser graph $$KG_{5,2}$$; this means that it has one vertex for each 2-element subset of a 5-element set, and two vertices are connected by an edge if and only if the corresponding 2-element subsets are disjoint from each other.

From the images, we see that $$G_{1} \cong G_{2} \cong G_{3}$$, thus they are automorphic and $$V(G_{1})=\{a,b,...j\},V(G_{2})=\{I,II,III,...,X\},V(G_{3})=\{A,B,....J\}$$. Let there be a set $$ N = \{1,2,3,4,5\}$$ Then, by definition of Kneser graph $$KG_{5,2}$$, $$\forall x \in V(G_{1}),\forall y \in V(G_{2}),\forall z \in V(G_{3})$$, such that $$x,y,z$$ is labelled uniquely with $${i,j}$$ and $$i,j \in N$$. 

Finally, we see that there is a bijection between $$G_{1}$$ and $$G_{2}$$, such that $$f:V(G_{1}) \to V(G_{2})$$. For example, a from $$G_{1}$$ is mapped to VII from $$G_{2}$$ and edges are perserved(see figures below). Then, there is also a bijection between $$G_{2}$$ and $$G_{3}$$, such that $$g:V(G_{2}) \to V(G_{3})$$, For instance, VII from $$G_{2}$$ is mapped to A from $$G_{3}$$. We also observe that $$G_{1} ,G_{2}, G_{3}$$ obey the rules of Kneser graph $$KG_{5,2}$$, such that two vertices are connected by an edge if and only if the corresponding 2-element subsets are disjoint from each other. For example, $$\{\{5,2\},\{1,3\}\}=\{a,b\} \to \{f(a),f(b)\}=\{VII,VI\}=\{\{5,2\},\{1,3\}\}$$ and $$\{\{5,2\},\{1,3\}\}$$ are disjoint.

In conclusion, there is a bijection between $$G_{1}$$ and $$G_{3}$$ such that, $$g \circ f:G_{1} \to G_{3}$$. Therefore, $$G_{1}, G_{2}, G_{3}$$ are vertex transitive. 

<figure>
<img src = "{{root_url | prepend: site.baseurl}}/asset/graph_theory/pic/homework/assign-5/automorphism-a.png" width = "500">
<figcaption> G1</figcaption>
</figure>

<figure>
<img src = "{{root_url | prepend: site.baseurl}}/asset/graph_theory/pic/homework/assign-5/automorphism-b.jpeg" height = "500">
<figcaption> G2</figcaption>
</figure>

<figure>
<img src = "{{root_url | prepend: site.baseurl}}/asset/graph_theory/pic/homework/assign-5/automorphism-d.png" width = "500">
<figcaption> G3</figcaption>
</figure>



**(b) Decide whether each vertex-transitive graph is edge-transitive as well.**

By the definition above, if a graph is vertex-transitive, then it must be edge-transitive too. Because any automorphism of G perserves edges, therefore, if $$e_{i} \in G(E)$$ and $$e_{i} = \{u,v\}$$ and $$ u,v \in G(V)$$, then there exists $$e_{j} \in G'$$, and $$e_{j} =\{f(u),f(v)\}$$ such that $$f(u),f(v) \in G'(V)$$, such graph is called symetric. 

**(c) Find a graph that is edge-transitive but not vertex-transitive.**

This following graph is not vertex transitive, because it is a bipartite graph which has two groups of vertices, $$V_{1}$$ and $$V_{2}$$, and vertices from either set can not be connected to each other, therefore, G is not vertex transitive

<figure>
<img src = "{{root_url | prepend: site.baseurl}}/asset/graph_theory/pic/homework/assign-5/bipartite.png" width = "300">
<figcaption>Example graph</figcaption>
</figure>

### Question 2 (Q6)

**How many graphs on the vertex set $$\{1,2,...,2n\}$$ are isomorphic to the graph consisting of n vertex-disjoint edges (i.e. with edge set $$\{\{1,2\},\{3,4\},...,\{2n−1,2n\}\}$$?**

![graph]({{root_url | prepend: site.baseurl}}/asset/graph_theory/pic/homework/assign-5/graph-question-4-1-6.png)

By definition, G is a 1-regular with disjoint union of $$k_{2}$$'s, From the limited example figure above, We see the even number of vertices are colored red, and the odd number ones are colored blue. So, there are n edges in G, and there are n! possible edges that are isomorphic to G, also each edge has two 2 possible vertice pair, namely $$\{a,b\}$$ and $$\{b,a\}$$,thus it has $$2^{n}$$ possibility. According to the product rule, there are $$n!2^{n}-1$$ graphs isomorphic to it. 


### Question 3 (Q7)

**Let V be a finite set. Let G denote the set of all possible graphs with vertex set V . Verify that ∼= (“to be isomorphic”) is an equivalence relation on G.**

An equivalence relation has the 3 qualities, being reflexive, symmetric, and transitive. 

It is reflexive since the identity function from a graph to itself provides the isomorphism (the one-to-one correspondence)-certainly the identity function preserves adjacency and nonadjacency. 

It is symmetric, since if f is a one-to-one correspondence that makes G1 isomorphic to G2, then $$f^{-1}$$ is a one-to-one correspondence that makes G2 isomorphic to G1; that is, $$f^{-1}$$ is a one-to-one and onto function from $$V_{2}$$ to $$V{1}$$ such that c and d are adjacent in G2 if and only if $$f^{1}(c)$$ and $$f_{1}(d)$$ are adjacent in G1 . 

It is transitive, since if $$f$$ is a one-to-one correspondence that makes G1 isomorphic to G2, and g is a one-to-one correspondence that makes G2 isomorphic to G3, then $$g o f$$ is a one-to-one correspondence that makes G1 isomorphic to G3.

Therefore, ("to be isomorphic") is an equivalence relation on G. 


## 4.2

### Question 4 (Q1)

**Prove that the complement of a disconnected graph G is connected. (The complement of a graph G = (V, E) is the graph $$(V,  \binom{V}{2} \setminus E).)$$**


Let there be a disconnected graph G and its complement $$\overline{G}$$. Then, let's select two vertices x and y in $$\overline{G}$$. Then by definition, if x and y are nonadjacent in G, then they are adjacent in $$\overline{G}$$. Moreover,if x and y are adjacent in G then they must be from the same component of G. Let z be an abitrary vertex from a different component of G. Then this implies that $$\{x,z\},\{y,z\} \notin G(E)$$, and $$\{x,z\},\{y,z\} \in \overline{G}(E)$$. Then there exists a path x-z-y in $$\overline{G}$$.Therefore, according to the definition of connectness of of graphs, "a graph G is connected if for any two vertices x,y ∈ V(G), G contains a path from x to y.", In conclusion, the complement of a disconnected graph G is connected. Q.E.D


### Question 5 (Q2)

**What is the maximum possible number of edges of a graph with n vertices and k components?**

When all the components are complete, then they have maximum number of edges.  

Claim: 
When one of the components has only 1 vetex, then the max number of edges is achieved. 

Proof by contradiction. 

Assume that there exist two components and they have n and m vertices, where n,m >1. And suppose that the maximum is achieved here. 

Suppose m > n, and one of the vertices in m is deleted, then this removes m−1 edges. now let's add a new additional vertex to the component with n vertices, and connect it to all its vertices. This will add n edges to that component. Obviously, this contradicts the premise that the graph had maximum number of edges, because the graph has more edges now.

Thus, the maximum is attained for $$n_{1} =n−k+1 and ni = 1 for i=2,3,...,n.$$. As a result, it has $$\frac{(n−k+1)(n−k)}{2}$$ edges.



### Question 6 (Q4)

**Prove that a graph is bipartite if and only if it contains no cycle of odd length.**


Suppose G is bipartite, then $$V(G) = U \cup W, \ and \ U \cap W = \emptyset$$

for every $$e \in E(G),e = \{u,v\}$$ where $$u \in U  \ and \ v \in W$$

Suppose G has (at least) one odd cycle. 
Let $$C = (v_{1},v_{2},...,v_{n})$$ be an odd cycle in G, and n is odd. 

$$v_{1} \in U$$ then $$v_{2} \in W$$

$$
v_{i} \in
\begin{cases}
U & \text{if i is odd} \\[2ex]
W & \text{if i is even}
\end{cases}
$$


Then $$v_{n} \in U$$, and it is odd, and $$v_{1},v_{n} \in U$$ such that $$\{v_{1},v_{n}\} \in E(G)By the definition of bipartite graph,$$ this is a contradition $$#$$. In conclusion, it is impossible to have odd cycle in G, if G is bipartite. 

Now, suppose that G has no odd cycle, then it is a bipartite. 

Suppose all cycles in G has even length. 

* if G is disconnected, then any cycle in G is contained in one of its components $$\{G_{1},G_{2},...,G_{n}\}$$. Then there must be $$X_{1},Y_{1}, X_{2},Y_{2},....X_{n},Y_{n}$$ then let $$X = \{X_{1} \cup X_{2},...,\cup X_{n}\}$$ and $$Y = \{Y_{1} \cup Y_{2},...,\cup Y_{n}\}$$

It suffices to show the claim for connected graphs, so let's assume G is connected. 

Let $$v \in V(G)$$, then there is distance(minimum length) such that $$ X = \{u |d_{G}(u,x) \ is \ even \ \}$$ and $$Y = \{v |d_{G}(v,x) \ is \ odd \ \}$$. Since G is connected, $$X \cup Y = V(G)$$
and $$X \cap Y = \emptyset$$, because there is no distance both even and odd. 

Then any $$e \in E(G)$$ is of the form $$e = \{x,y\},x \in X,y \in Y$$. We need to show that $$\{x,y\} \in E(G)$$ and $$\{x,y\} \in X \ or \ \{x,y\} \in Y$$ is impossible, that is $$\{x,y\} \in X$$, show $$\{x,y\} \not\in X$$

Suppose $$P: v \to x$$ be a shortest path from v to x. $$Q: v \to y$$ be a shortest path from v to y. Since $$\{x,y\} \in X$$, then P and Q are both of the same parity. (see Figure 1)

<figure>
<img src = "{{root_url | prepend: site.baseurl}}/asset/graph_theory/pic/homework/assign-5/bipartite-odd.jpeg" width = "400">
<figcaption> Figure 1</figcaption>
</figure>

Now let w be the last common vertex of P and Q. $$P_{1}: v \to w$$ and $$P_{2}: w \to x$$ Then $$P = \{P_{1},P_{2}\}$$

similarly, $$Q_{1}: v \to w$$ and $$Q_{2}: w \to y$$. Then $$Q = \{Q_{1},Q_{2}\}$$

Since P and Q are shortest, it follows that $$\lvert P_{1}\lvert = \lvert Q_{1}\lvert$$

Then $$\lvert P_{2}\lvert$$ and $$\lvert Q_{2}\lvert$$ have the same parity. 

$$\require{AMScd}$$
$$\begin{CD}
      x @>{\text{$P_{2}^{-1}$}}>> w  @>{\text{$Q_{2}$}}>> y
\end{CD}$$

Now if $$x,y \in E(G)$$ then $$\{P_{2}^{-1},Q_{2}\}$$ together with x,y will form a cycle of odd length. Because cycles in G has even length. So this is a contradiction. So $$\{x,y\} \not \in E(G)$$. Therefore, there is no path exists connecting any 2 elements from either $$V_{1}$$ or $$V_{2}$$. So, to complete a cycle, a path has to be even. 


### Question 7 (Q5)

**Describe all graphs containing no path (not necessarily induced!) of length 3.**


If v is a vertex with at least 2 neighbors it has to be connected to all vertices of its component. Each component has to be K3 or K1,n .
<figure>
<img src = "{{root_url | prepend: site.baseurl}}/asset/graph_theory/pic/homework/assign-5/graph-no-p3.png" width = "500">
<figcaption>Example graph</figcaption>
</figure>
