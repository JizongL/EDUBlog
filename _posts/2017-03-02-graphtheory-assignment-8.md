---
layout: post
title: Graph Theory Homework Assignment 8
date: 2017-03-02 13:28:00
categories: Graph_Theory_homework
tags: Graph_Theory_homework  
---
* content
{: toc}

Matoušek-Nešetřil p129: 9
Matoušek-Nešetřil p136: 2, 5, 8, 10*
Matoušek-Nešetřil p148: 1





### Question 4.3.9

**Let G be a graph in which all vertices have degree at least d. Prove that G contains a path of length d (not necessarily an induced one).**

Base case. $$deg_{V(G)} ≥ 2$$
Let G be the graph, and let v be a vertex in G. Because $$deg_{V(G)} ≥ 2$$, then v must have at least 2 neighbors.Let u be a neighbor of v in G, and because of $$deg_{V(G)} ≥ 2$$
, hen u must have at least another neighbor, let w be that neighbor. Now, we have a path of 2, with 3 vertices. 

Inductive step
Now, assume $$deg_{V(G)} ≥ d$$
In general, at step i, if i ≤ d, then there is at least one neighbor $$v_{i+1}$$ which is different from $$v_{1},...,v_{i−1}$$. This shows that the process terminates only when we already constructed a path of at least d + 1 vertices, therefore, the path has a length of d. Q.E.D

<figure>
<img src = "{{root_url | prepend: site.baseurl}}/asset/graph_theory/pic/homework/assign-7/7-i.png" width = "300">
<figurecpation>Figure</figurecpation>
</figure>

### Question 4.4.2

**Characterize graphs that have a tour, not necessarily a closed one, covering all edges.**

If G has a tour, then the tour is formed by $$(v_{0}, e_{1}, v_{1}, . . . , e_{m−1}, v_{m−1}, e_{m}, v_{m})$$ 

According to Theorem 4.4.1 , all internal the vertices, excluding $$v_{0},v_{m}$$ for now, are even. Because if it has an entry, and must have an exit. 

Now, if $$v_{m}=v_{0}$$, then it is closed, and therefore, it is Eulerian. 

If if $$v_{m} ≠ v_{0}$$, then the vertex $$v_{0},v_{m}$$ is incident to an odd number of edges. Because if $$v_{0}$$ is the starting point, then no matter how many times the tour reaches $$v_{0}$$, it does not have an additional entry point at the end to make it even. Same is true for $$v_{m}$$ if it is an ending point, then it always have an additional exit to make it odd. Therefore, a tour that is not close have two odd vertices, and all other vertices are even. 



### Question 4.4.5
**Check that Theorem 4.4.1 also holds for graphs with loops and multiple edges (what is the correct way to define the degree of a vertex for such graphs?).**

Let G be a trival graph with 1 edge,$$e_{1}$$ and two vertices $$v_{1},v_{2}$$ Clearly, G has an euler path, but does not have an eulerian tour. 

now, add $$e_{2}$$ to $$v_{1},v_{2}$$. Clearly, G is now Eulerian, as G has a tour that travels through every edges and all vertices have even degree.(See figure)

<figure>
<img src = "{{root_url | prepend: site.baseurl}}/asset/graph_theory/pic/homework/assign-7/7-j.png" width = "500">
<figurecpation>Figure</figurecpation>
</figure> 

Now, let's add $$e_{3}$$, to G, now G is not eularian now, because both vertices have odd degrees, although it has an eular path. 

Again, add $$e_{4}$$ to G, G is now Eulerian as it covers all edges and all vertices are even. 

<figure>
<img src = "{{root_url | prepend: site.baseurl}}/asset/graph_theory/pic/homework/assign-7/7-k.png" width = "500">
<figurecpation>Figure</figurecpation>
</figure> 

Now, let $$G_{2k}$$ be a graph with 2 vertices and 2k edges. and it follows that every two additonal edges we add to $$G_{2k}$$, it remains Eulerian, therefore, by induction G_{2(k+1)} is Eulerian, and $$G_{2n}$$ is Eulerian.  


Now, let's add additional vertices set V' such that $$v_{3},v_{4},....,v_{n}$$ are added to each of the existing edges in $$G_{2n}$$, such that it bisect every edge into 2 and call the graph $$G_{b}$$, such that, V' + $$v_{1}+v_{2} = V(G_{b})$$ and $$2E(G_{2n})= E(G_{b})$$ 


<figure>
<img src = "{{root_url | prepend: site.baseurl}}/asset/graph_theory/pic/homework/assign-7/7-l.png" width = "500">
<figurecpation>Figure</figurecpation>
</figure> 

Since adding vertices on an Eulerian graph, does not change anything because they all have even degrees, therefore, $$G_{b}$$ is Eulerian. 

Now, let there be $$G_{1},G_{2}, G_{3}$$ be replica of $$G_{b}$$, then let's form $$G_{all}$$ by chaining $$G_{1},G_{2}, G_{3}$$ through their end points. Clearly, $$G_{all}$$ is still Eularian. 


<figure>
<img src = "{{root_url | prepend: site.baseurl}}/asset/graph_theory/pic/homework/assign-7/7-m.png" width = "500">
<figurecpation>Figure</figurecpation>
</figure> 

Now, if $$v_{1}$$ from G is connected to $$v_{m}$$ from G''' in $$G_{all}$$ such that $$v_{1}$$ = $$v_{m}$$, then $$G_{all}$$ becomes a cycle multigraph. In this case, $$C_{all}$$ is still Eulerian. Therefore, without lost of gernality, Theorem 4.4.1 holds for Multigraph with even numbers of multiple edges.  

<figure>
<img src = "{{root_url | prepend: site.baseurl}}/asset/graph_theory/pic/homework/assign-7/7-n.png" width = "300">
<figurecpation>Figure</figurecpation>
</figure> 

Now, let's add loops to $$G,G_{b},G_{all} and C_{all}$$, and call the new graph $$G_{loop}$$ because a loop is counted degree 2, and because it enters and exits the same vertex, so it is Eulerian by itself. Therefore, adding an Eulerian cycle to an existing Eulerian graph the graph remains Eulerian. 

<figure>
<img src = "{{root_url | prepend: site.baseurl}}/asset/graph_theory/pic/homework/assign-7/7-o.png" width = "300">
<figurecpation>Figure</figurecpation>
</figure> 

Now, make replica of $$G_{loop}$$ and connect them together in similar fashion, clearly, $$G_{loop}$$ will always be Eulerian. Therefore, Theorem 4.4.1 holds for graphs with loops. 


### Question 4.4.8

**For a graph G, let $$L(G)$$ denote the so-called line graph of G, given by $$L(G) = (E, \{\{e,e′\}: e,e′ ∈ E(G), e ∩ e′ ≠ ∅\} ). Decide whether the following is true for every graph G:**

**(a) G is connected if and only if L(G) is connected. **

Let's assume that G is connected when L(G) is not connected, then there are some vertices could not be reached by a walk in L(G). For the sake of demonstration, let G has V = $$\{a,b,c,d,e,f\}$$ and L(G) has V = $$\{a,b\},\{a,c\},\{c,b\},\{d,e\},\{f,d\},\{f,e\}$$, then according to the definition of L(G) $$\{a,b\},\{a,c\},\{c,b\}$$ and $$\{d,e\},\{f,d\},\{f,e\}$$form 2 $$C_{3}$$ cycle that are disconnected which implies L(G) is disconnected(see Figure a & b). Clearly, a,b,c and d,e,f in G are also disconnected, therefore, this is a contradiction. 

<figure>
<img src = "{{root_url | prepend: site.baseurl}}/asset/graph_theory/pic/homework/assign-7/7-a.jpeg" width = "300">
<figurecpation>Figure a</figurecpation>
</figure>

<figure>
<img src = "{{root_url | prepend: site.baseurl}}/asset/graph_theory/pic/homework/assign-7/7-b.jpeg" width = "300">
<figurecpation>Figure b</figurecpation>
</figure>

Now, without loss of generality, if we add two edges $$e_{1},e_{2}$$ such that $$e_{1}$$ connects c and d in G, and $$e_{2}$$ connects a,e. Then G becomes connected, as there exists a path that connects any two vertices in G. In turns, this also add two new vertices $$\{c,d\},\{a,e\}$$ that connect to $$\{c,b\},\{d,e\}$$ and $$\{a,b\},\{f,e\}$$.This also makes L(G) connected. (see Figure c & D)



Therefore, this concludes that G is connected if and only if L(G) is connected. Q.E.D
<figure>
<img src = "{{root_url | prepend: site.baseurl}}/asset/graph_theory/pic/homework/assign-7/7-c.jpeg" width = "300">
<figurecpation>Figure c</figurecpation>
</figure>

<figure>
<img src = "{{root_url | prepend: site.baseurl}}/asset/graph_theory/pic/homework/assign-7/7-d.jpeg" width = "300">
<figurecpation>Figure d</figurecpation>
</figure>




**(b) G is Eulerian if and only if L(G) has a Hamiltonian cycle(see Exercise 7 for a definition)**

Let's assume that G is Eulerian iff L(G) has a Hamiltonian cycle. Now, assume $$L(K_{4})$$ and it is Hamiltonian. However, $$K_{4}$$ is not Eulerian, because not all vertices in $$K_{4}$$ are even. Therefore, this is a contradiction. 


<figure>
<img src = "{{root_url | prepend: site.baseurl}}/asset/graph_theory/pic/homework/assign-7/7-g.png" width = "300">
<figurecpation>Figure e</figurecpation>
</figure>




#### Question 4.6.2.10 (extra credits)
**We say that a graph G = (V, E) is randomly Eulerian from a vertex $$v_{0}$$ if every maximal tour starting at v0 is already a closed Eulerian tour in G. That is, if we start at v0 and draw edges one by one, choosing a continuation arbitrarily among the yet unused edges, we can never get stuck. (It would be nice if art galleries or zoos were randomly Eulerian, but unfortunately they seldom are. The result in part (c) below indicates why.)**

**(a) Prove that the following graphs are randomly Eulerian:**

<figure>
<img src = "{{root_url | prepend: site.baseurl}}/asset/graph_theory/pic/homework/assign-7/7-e.png" width = "500">
<figurecpation>Figure 1</figurecpation>
</figure>


Both graphs are 2 connected, as by the definition of 2-connectivity, A graph G is 2-connected if and only if any subdivision of G is 2-connected. 

Proof: 
The first graph is a union of 4 $$C_{3}$$ cycles, and a cycle is Eulerian. And they all are connected to the vertex $$v_{0}$$, therefore, each of these cycle exits and enters $$v_{0}$$, so $$v_{0}$$ is even and is the starting and ending of the Eulerian tour. 

The second graph can be decomposed into ear decomposition, and clearly, every ear decomposition forms a cycle which is Eulerian. Also, every cycle exits and enters $$v_{0}$$, therefore, $$v_{0}$$ is even and is the starting and ending of the tour. 

In conclusion, both graphs are randomly Eulerian by definition. 


**(b) Show that the graphs below are not randomly Eulerian:**

<figure>
<img src = "{{root_url | prepend: site.baseurl}}/asset/graph_theory/pic/homework/assign-7/7-f.png" width = "500">
<figurecpation>Figure 2</figurecpation>
</figure>

Both graphs have cycles that do not directly incidents to $$v_{0}$$, therefore, it would not exits and enter $$v_{0}$$ at the same time. Therefore, they are not randomly Eulerian. 

### Question 4.6.2.1

**Prove that for any two edges of a 2-connected graph, a cycle exists containing both of them.**

Proof: 
By definition of 4.6.5 Theorem (2-connected graph synthesis),Let's construct a graph as a $$C_{3}$$ in triangular shape. Clearly, $$C_{3}$$ is 2-connected and a cycle exists containing any two of its edges. Now, let's glue an "ear" to $$C_{3}$$, and call the new graph $$G_{1}$$, clearly $$G_{1}$$ is also 2-connected according to the theorem. Now, add add a new vertex $$v_{s}$$ on one of the edges of the "ear", it bisects that edge into 2. Since both edges are in the "ear", therefore they are covered by a cycle. 

<figure>
<img src = "{{root_url | prepend: site.baseurl}}/asset/graph_theory/pic/homework/assign-7/7-h.png" width = "500">
<figurecpation>Figure 2</figurecpation>
</figure>

Now, if we add more "ears" to $$G_{1}$$, it will still be 2-connected by definition, and each "ear" has a cycle. If we add new vetex $$v_{i}$$ to an random edge of $$G_{1}$$, it will bisect that edge into 2. 


Therefore, clearly, there is a cycle exists containing any 2 edges in $$G_{1}$$. Q.E.D 







