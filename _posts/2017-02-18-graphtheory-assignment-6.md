---
layout: post 
title: Graph Theory Assignment 6
date: 2017-02-26 11:01:00
categories: Graph_Theory
tags: Graph_Theory_homework homework
---
* content
{: toc}

Assignment 6

### Question 4.2.5

b) Let G be a graph on n vertices, $$A = A_{G}$$ its adjacency matrix, and In the n×n identity matrix (with 1s on the diagonal and 0s elsewhere). Prove that G is connected if and only if the matrix ($$I_{n} + A)^{n−1}$$ has no 0s.






Let $$A^k$$ be the matrix that will have entry $$i,j$$, which is non-zero (strictly positive) if, and only if, there exists a path of length exactly $$k$$ between vertices $$i$$ and $$j$$.

By definition, a graph is connected iff there exists a path of length at most $$n-1$$ between any pair of vertice $$\{i,j\}$$. 

Furthermore, to expand $$(I+A)^{n-1}$$ by the binomial expansion, it then has entry $$\{i,j\}$$ non-zero iff there exists a path of length $$1$$, or $$2$$, or ..., or $$n-1$$ between vertices $$i$$ and $$j$$.

$$(I+A)^{n-1} = \sum_{k=0}^{n-1} \binom{n-1}{k} A^k$$

so for any $$1\leq i,j\leq n$$,

$$\begin{align}
\left( (I+A)^{n-1} \right)_{ij} &= \sum_{k=0}^{n-1} \binom{n-1}{k} \left(A^k\right)_{ij}\\
&= \binom{n-1}{0} \left(A^0\right)_{ij}
+ \binom{n-1}{1} \left(A^1\right)_{ij} + \dots + \binom{n-1}{n-1} \left(A^{n-1}\right)_{ij}\\
&= \sum_{k=0}^{n-1} \binom{n-1}{k}\cdot \text{(number of paths between $i$ and $j$ of length exactly $k$)}
\end{align}$$

And the answer is 0 iif there is no path of length at most $$n-1$$ between $$i$$ and $$j$$, which is not having any path at all between $$i$$ and $$j$$. therefore, the prove is concluded, G is connected iif ($$I_{n} + A)^{n−1}$$ has no 0s . Q.E.D.


### Question 4.2.10

Show that a graph G contains a triangle (i.e. a $$K_{3}$$) if and only if there exist indices i and j such that both the matrices $$A_{G}$$ and $$A^{2}_{G}$$ have the entry (i,j) nonzero, where $$A_{G}$$ is the adjacency matrix of G.

Let $$a_{ij}^{(k)}$$ be an element of $$A^{k}$$ at any position (i,j). Then $$a_{ij}^{(k)}$$ is the number of walks of length k from vertex $$v_{i}$$ to the vertex $$v_{j}$$ in the graph. 

Let $$A_G=\{(a_{ij})\}_{1\le i \le j \le n}$$ the adjacent matrix of the graph $$G$$ and $$A^2_G=\{(b_{ij})\}_{1\le i \le j \le n}$$. Observe that there exists a triangle in $$G$$ iif there exists $$i,j,k$$ such that $$a_{ik}\cdot a_{kj}\cdot a_{ij}=1$$. 

$$(\Rightarrow)$$ If $$a_{ik}\cdot a_{kj}\cdot a_{ij}=1$$, then $$a_{ij}=1$$ and $$b_{ij}=\sum_{l=1}^{n}a_{il}\cdot a_{lj} \neq 0$$ (because $$(a_{ik}\cdot a_{kj})\cdot a_{ij}=1$$)

$$(\Leftarrow)$$ If $$b_{ij}=\sum_{l=1}^{n}a_{il}\cdot a_{lj} \neq 0$$ and $$a_{ij}=1$$, then $$\exists k \in \{1,...,n\}$$ such that $$a_{ik}\cdot a_{kj}=1$$. So, $$a_{ik}\cdot a_{kj}\cdot a_{ij}=1$$.

<figure>
<img src = "{{root_url | prepend: site.baseurl}}/asset/graph_theory/pic/homework/assign-6/6-d.png" width = "300">
<figurecpation>Figure 1</figurecpation>
</figure>

Therefore, the proof concluded,a graph G contains a triangle,iif, $$\exists i \ and \ j$$ such that both the matrices $$A_{G}$$ and $$A^{2}_{G}$$ have the entry (i,j) nonzero . 

### Question 4.3.1. 

Prove that the three graphs in Fig. 4.3 are pairwise nonisomorphic.

Let's label the graph as following

**Definition of isomorphism** 

Let two graphs be G = (V, E) and G′ = (V ′, E′) and they are called isomorphic if a bijection f : V → V ′ exists such that $$\{x,y\} ∈ E$$ if and only if $$\{f(x),f(y)\} ∈ E′$$

![graph]({{root_url | prepend: site.baseurl}}/asset/graph_theory/pic/homework/assign-6/6-b.png)


**Graph 1 V.S Graph 2**

Let graph 1 be G and graph 2 be G', now let's label all vertice in G as $$\{A,B,C,D,E,F,G,H,I,J\}$$ and, Assume that G and G' are isomorphic and V(G) are mapped to V(G') =$$\{a,b,c,d,e,f,g,h,i,j,k\}$$ respectively such that edges should be preserved, as shown on the graph above. But we see that $$\{A,G\} \in E(G)$$, but $$\{f(A),F(G)\}  = \{a,g\} \not\in E(G')$$, and $$\{D,J\} \in E(G)$$ but $$\{f(D),F(J)\}  = \{d,j\} \not\in E(G')$$. Without the need to list all counter examples, it is suffice to say that this is a contradition. Therefore, G and G' are non pairwise isomorphic. 

**Graph 1 V.S Graph 3**
Let graph 1 be G and graph 3 be G', now let's label all vertice in G, $$\{A,B,C,D,E,F,G,H,I,J\}$$ Assume that G and G' are isomorphic and V(G) are mapped to V(G')= $$\{aa,bb,cc,dd,ee,ff,gg,hh,ii,jj,kk\}$$respectively, respectively such that edges should be preserved,as shown in the graph. We see that $$\{A,G\} \in E(G)$$, but $$\{f(A),F(G)\}  = \{aa,gg\} \not\in E(G')$$, and $$\{D,J\} \in E(G)$$ but $$\{f(D),F(J)\}  = \{dd,jj\} \not\in E(G')$$. Without the need to list all counter examples, it is suffice to say this is a contradition, therefore, by definition, G and G' are non pairwise isomorphic. 

**Graph 2 V.S Graph 3**

Let graph 2 be G and graph 3 be G', now let's label all vertice in G, $$\{a,b,c,d,e,f,g,h,i,j\}$$. Assume that G and G' are isomorphic and V(G) are mapped to V(G')= $$\{aa,bb,cc,dd,ee,ff,gg,hh,ii,jj,kk\}$$according to the definition of automorphism which edges should be preserved, as shown in the graph. But, We see that $$\{a,j\} \in E(G)$$, but $$\{f(a),F(j)\}  = \{aa,jj\} \not\in E(G')$$, and $$\{g,d\} \in E(G)$$ but $$\{f(g),F(d)\}  = \{gg,dd\}\not\in E(G')$$. Without the need to list all counter examples, it is suffice to say this is a contradition, therefore, by definition, G and G' are non pairwise isomorphic. 


Inconclusion, Graph 1,2,3 are pairwise non-isomorphic. Q.E.D.

### Question 4.3.5
Draw all nonisomorphic graphs with score(6,3,3,3,3,3,3).Prove that none was left out!

Let G has V and E, and $$y \in V(G)$$ and $$deg_{G}(y) = 6$$. And there are 6 other vertices $$\{v_{1},v_{2}...v_{6}\}$$ and let $$v_{i}$$ be any of the 6 vertices such that $$deg_{G}(v_{i})=3$$. Since $$deg_{G}(y) = 6$$, it is incident with all other 6 vertices. then the remaining degrees for all the other 6 vertices are 2 after subtracting the one with y(see graph 1). Then no matter how they connect, all the possible connection from the remaining 2 degrees of each of the 6 other vertices are isomorphic to each other. (See graph 2)

We see that any $$v_{i}$$ and y, mapped to $$f(v_{i})$$ and f(y) and $$\{v_{i},y\} \in E(G)$$, and $$\{f(v_{i}),f(y)\} \in E(G')$$. and any pair of $$\{v_{i},v_{i-1}\} \in E(G)$$, are mapped to $$\{f(v_{i}),f(v_{i-1})\} \in E(G')$$. Therefore, by definition, it proves the only nonisomorphic graph with this score is the only graph itself. 

<figure>
<img src = "{{root_url | prepend: site.baseurl}}/asset/graph_theory/pic/homework/assign-6/6-c.png" width = "300">
<figurecpation>graph 1</figurecpation>
</figure>

<figure>
<img src = "{{root_url | prepend: site.baseurl}}/asset/graph_theory/pic/homework/assign-6/6-d.png" width = "300">
<figurecpation>graph 2</figurecpation>
</figure>


### Question 4.3.6
Find an example, as small as possible, of a graph with 6 vertices of degree 3, other vertices of degree ≤ 2, and with 12 edges.

$$\sum deg(V)=2\lvert E \lvert$$

There are 12 edges, therefore, the $$\sum deg(V)=24$$. Since 6 vertices of degree 3. 
so, let $$\{a,b,c,d,i,h\}$$ be degree 3, then $$\{g,e\}$$ have to connect to h and d to make them degree 3. And now g and e are degree 1. See graph 1. 

<figure>
<img src = "{{root_url | prepend: site.baseurl}}/asset/graph_theory/pic/homework/assign-6/6-f.jpeg" width = "300">
<figurecpation>graph 1</figurecpation>
</figure>

So far, the total degrees are 20. We need 4 more. Since the question states that it wants the graph as small as possible, then the best choice would be to add f to connect g and e. This would result in the total degrees to be 24. 

<figure>
<img src = "{{root_url | prepend: site.baseurl}}/asset/graph_theory/pic/homework/assign-6/6-e.jpeg" width = "300">
<figurecpation>graph 2</figurecpation>
</figure>

### Question 7.1.5
(Sperner’s lemma in dimension 3)
(a) ∗Consider a tetrahedron $$T = A_{1}A_{2}A_{3}A_{4}$$ in the 3-dimensional space and some subdivision of T into small tetrahedra, such that each face of each small tetrahedron either lies on a face of the big tetrahedron or is also a face of another small tetrahedron. Let us label the vertices of the small tetrahedra by labels 1, 2, 3, 4, in such a way that the vertex A_{i} gets i, the edge $$A_{i}A_{j}$$ only contains vertices labeled i and j, and the face A_{i}A_{j}A_{k} has only labels i,j, and k. Prove that there exists a small tetrahedron labeled 1, 2, 3, 4.

small tetrahedron either lies on a face of the big tetrahedron (odd)

Define a graph $$G_{T}$$

$$T = \{\text{all inside small tetrahedrons} \ t_{1},t_{2},...,t_{n} \ \text{and} \ T_{outer} \text{those facing the outer face of the big tetrahedron} \\ A_{1}A_{2}A_{3}A_{4}\}$$

First, find degree $$t_{i}$$ for each small tetrahedron $$t_{1},t_{2},...,t_{n}$$

Let's fix corner 1,2,3 as referenced facet.

Then 

case 1: $$deg t_{i} = 0$$ if $$t_{i}$$ has no 1 or 2 or 3 corners. 

case 2: $$deg t_{i} > 0$$ if $$t_{i}$$ has face 1 or 2 or 3, so the corners 1 and 2 and 3. 
(See figure 1)

<figure>
<img src = "{{root_url | prepend: site.baseurl}}/asset/graph_theory/pic/homework/assign-6/6-g.jpeg" width = "300">
<figurecpation>Figure 1</figurecpation>
</figure>

if the 4th corner is 4, then $$deg t_{i} = 1$$ and $$t_{i}$$ is a rainbow tetrahedron.
(See Figure 2)
<figure>
<img src = "{{root_url | prepend: site.baseurl}}/asset/graph_theory/pic/homework/assign-6/6-h.jpeg" width = "300">
<figurecpation>Figure 2</figurecpation>
</figure>

if the 4th corner is 1 or 2 or 3, then $$deg t_{i} = 2$$ because there are two faces with 1,2,3 corners. (see Figure 3)

<figure>
<img src = "{{root_url | prepend: site.baseurl}}/asset/graph_theory/pic/homework/assign-6/6-i.jpeg" width = "300">
<figurecpation>Figure 3</figurecpation>
</figure>


Finally, there will never have any degree 3 (or higher) and $$deg t_{i} = 1 \iff t_{i}$$ is a rainbow.

Now, let's look at deg $$T_{outer}$$

deg $$T_{outer}$$ = number of alternations of triangular facets of the tetrahedrons that has the corners 1,2,3 on the triangular facet,$$A_{1}A_{2}A_{3}$$, of the big tetrahedron T. Therefore, $$deg T_{outer}$$ is odd. (See Figure 4)

<figure>
<img src = "{{root_url | prepend: site.baseurl}}/asset/graph_theory/pic/homework/assign-6/6-k.jpeg" width = "300">
<figurecpation>Figure 4</figurecpation>
</figure>

Since from class, we alrady proved the 1 and 2 d cases, and know that there are odd numbers of rainbow triangles, with corners 1,2,3. (therefore, I do not repeat the prove here)



because $$deg \ t_{i} = 2 =$$ even 

and if 
$$deg \ t_{outers} = odd \\ deg \ t_{rainbow} = 1 = odd $$

By the Handshaking Lemma, G has even number of odd degree vertices. 

Therefore, the number of rainbow small tetrahedron $$deg \ t_{rainbow}$$ must be odd and
is particularly non-zero.     Q.E.D
