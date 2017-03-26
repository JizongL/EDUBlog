---
layout: post
title: Graph Theory Homework Assignment 9
date: 2017-03-02 13:28:00
categories: Graph_Theory_homework
tags: Graph_Theory_homework  
---
* content
{: toc}

Matoušek-Nešetřil p148: 2ab, 5
Matoušek-Nešetřil p158: 1, 2, 4


### Question 4.6.2

Let G be a critical 2-connected graph; this means that G is 2-connected but no graph G − e for e ∈ E(G) is 2-connected.

**(a) Prove that at least one vertex of G has degree 2.**

Since any 2-connected graph is obtained from a cycle by repeatedly adding new paths between two vertices that are already in the graph. If the graph is a cycle, then the proof is concluded. Otherwise, it is formed from cycles by repeatly adding more paths(adding ears). If the length of the last added path is at least 2, we have a vertex of degree 2 and the proof is concluded. If not, then the last path is an edge and with its removal making a 2-connected graph. However, this would contradicts with the fact that our graph is a critical 2-connected graph. Q.E.D

[reference 4.6.2]({{root_url | prepend: site.baseurl}}/asset/graph_theory/pdf/sol4.pdf)

**(b) For each n, find an example of a critical 2-connected graph with a vertex of degree at least n.**

For n = 1 a path of length 1 an example. For $$P_{1}$$ \ e is no longer 2 connected. For n = 2, any cycle $$C_{i}$$ is an example, as any vertices in a cycle has degree 2, also $$C_{i}$$ \ e is no longer 2 connected. For n = 3. Let $$C_{3}$$ and $$C_{3}$$' glued together sharing 2 vertices,$$v_{1},v_{2}$$. Let's call this new graph G, and it has 2 vertices have degree at least 3. And G is 2 connected but G \ e is not 2 connected. (See figure)

Repeat the process to compose G' by adding an ear to G, incident to $$v_{1}$$ and $$v_{2}$$ of G. Now, G' is 2 connected and G'\e is not 2 connected. And G' has 2 vertices,$$v_{1}$$ and $$v_{2}$$, have degree at least 4. 

By repeating the same process to compose $$G',G'',....G^{n}$$, all the subsequent Gs have vertex with degree at least n, and all the Gs \ e are not 2 connected. 


<figure>
<img src = "{{root_url | prepend: site.baseurl}}/asset/graph_theory/pic/homework/assign-8/8-d.jpeg" width = "300">
<figurecpation></figurecpation>
</figure>




### Question 4.6.5. 
**Determine the vertex connectivity of the k-dimensional cube. The k-dimensional cube was defined at the end of Section 4.5.**


Let a and b be two vertices and they form an edge e, and lablel them by a=0 and b=1, and the edge $$\{a,b\}$$ is connected. Now by definition of k-dimensional cube, let e' be a copy of e with vertices c and d, and label c =0 and d=1. we add 0 as prefix to a and b, and 1 to c and d. now a = (0,0), b = (0,1) and c =(1,0),d=(1,1). According the definition, we only connect vertices from e to e' if they differ only on the first value of their prefix. e.g. a is connected to c, but not d. b is connected to d, but not c. Let's call this new graph C and it is a connected as it is a $$k_{4}$$ cycle and it is 2 connected,by theorem 4.6.3, because it is a cycle that contains any of its vertices.


Now, make a copy of C and call it C',and repeat the process from above, also add prefix 0 to the vertices of C and 1 to the vertices of C', this forms a new graph G by connecting only those vertices differ in their prefix, this results in a cube. And since each of the faces of the cube is a $$K_{4}$$ that contains 4 of its vertices, so the cube is 2 connected.

If we repeat the process k times, and let each of the vertices of the hypercube be labeled by a bit string according to the prefix rule, an k-dimensional cube is formed and for any x,y,$$\exists$$ a cycle that contains them. So, the k-dimensional cube is 2 connected. Q.E.D 

<figure>
<img src = "{{root_url | prepend: site.baseurl}}/asset/graph_theory/pic/homework/assign-8/8-e.jpeg" width = "500">
<figurecpation></figurecpation>
</figure>


### Question 5.1.1

**Draw all trees with vertex set {1,2,3,4}, and all pairwise nonisomorphic trees on 6 vertices.**



There are only 2 tree graphs with 4 vertices. 

<figure>
<img src = "{{root_url | prepend: site.baseurl}}/asset/graph_theory/pic/homework/assign-8/8-c.jpeg" width = "300">
<figurecpation> vertices{1,2,3,4}</figurecpation>
</figure>

By definition, thre are 5 edges in a tree on 6 vertices and each vertex has degree between 1 and 5, and by definition the sum of degrees equal to 10 (2E=2(5)=10). Therefore, all the possible graph scores are as follow
$$(5,1,1,1,1,1), (4,2,1,1,1,1), (3,3,1,1,1,1),(3,2,2,1,1,1), (2,2,2,2,1,1) $$

<figure>
<img src = "{{root_url | prepend: site.baseurl}}/asset/graph_theory/pic/homework/assign-8/8-b.jpeg" width = "300">
<figurecpation>6 vertices</figurecpation>
</figure>


### Question 5.1.2

**Prove that any graph G = (V,E) having no cycles and satisfying $$\lvert V \lvert = \lvert E \lvert + 1$$ is a tree.**


Proof

$$\implies$$ Suppose G is a tree, by definition it is acylic.

And we prove $$\lvert V \lvert = \lvert E \lvert + 1$$ by induction. Let $$\lvert V \lvert = n $$ and $$\lvert E \lvert =m$$. 

Then the base is n=1 m = 0 $$\implies$$ 1 = 0 +1. checked. 

Induction hypothesis: 

Suppose all trees of order n have n-1 edges(n≥1). Let T be a tree of order n+1. $$\exists$$ at least 2 leaves by definition of tree. So let $$v \in V(T)$$ with degree 1 (leaf). Now T' = T-v
so T' has m=n-1 edges, therefore T has(n-1)+1 = n edges. so $$\lvert V \lvert = \lvert E \lvert + 1$$

$$\impliedby$$ Suppose G is acyclic and m=n-1

First,we do not know if G is connected, but there are k connected components$$G_{1},G_{2}...G_{i}...G_{k}$$ in G. Clearly, $$G_{i}$$ is connected, also by definition of tree,it is acylic. We see $$G_{i}$$ has $$m_{i}$$ edges and $$n_{i}$$ vertices. So, by our hypothesis,$$m_{i}=n_{i}-1$$ and this implies that $$m=\sum_{i=1}^{k}m_{i}=\sum_{i=1}^{k}n_{i}-1$$=n-k. And from our hypothesis, m = n-1. so n-1=n-k, so clearly k must be 1. This implies that there is only 1 connected component in G, so G is connected. Therefore, G is a tree with no cycle and satisify $$\lvert V \lvert = \lvert E \lvert + 1$$. Q.E.D




### Question 5.1.4

**Prove that any 2-connected graph has a strongly connected orientation (see Section 4.5 for these notions).**

$$\implies$$
Let G be a 2-connected graph, then for any two vertices, x and y, of G, a cycle in G contains these two vertices. This implies there is a path from x to y, and from y to x. 
And by definition, G is strongly connected if and only if there is a path from x to y and from y to x whenever x and y are vertices in the graph.

$$\impliedby$$
Let G has a strongly connected orientation, then by definition, there is a path from x to y and from y to x whenever x and y are vertices in G. Since G is undirected graph, so there is no direction restriction and there exists at least 2 paths between x and y, This implies $$\forall \{x,y\}$$there is a cycle that contains them. Which in turn implies that G is 2 connected and G contains no bridges.  Q.E.D







[reference1](http://www-sop.inria.fr/members/Frederic.Havet/Cours/connectivity.pdf)


[reference2](http://math.stackexchange.com/questions/2197652/2-connected-graph-has-a-strongly-connected-orientation/2197718#2197718)


