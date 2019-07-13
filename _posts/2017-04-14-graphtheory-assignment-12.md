---
layout: post
title: Graph Theory Homework Assignment 12
date: 2017-04-14 00:01:00
categories: Graph_Theory_homework
tags: Graph_Theory_homework  
---
* content
{: toc}


Matoušek-Nešetřil p195: 1, 3, 5





## Question 6.2.1
**Show that the graph $$K_{3,3}$$ is not planar, in a manner similar to the proof of nonplanarity of $$K_{5}$$ given in the text.**

Proof by contradiction
Assume $$K_{3,3}$$ is a planar graph. Then from two graphs on the left in the Figure, we see the two ways of drawing the same $$K_{3,3}$$. From the graph on the right of the Figure,we see if the parallelogram AcCa is considered as a Jordan curve, becasuse $$K_{3,3}$$ is planar, the remaining vertex b and B must be contained either inside or outside of the parallelogram. Let's assume they are inside, then let's put b in the middle first. From the original $$K_{3,3}$$, b is incident to A and C, besides B. And B is incident to both a and c. Then, if we connect b to its neighbors A and C first, the two new arcs divide the AcCa into two cycles. Now, if we see AbCa as a new Jordan curve, clearly B can not connect to both a and c at the same time without crossing either $$\{A,b\}$$ or $$\{b,c\}$$. The same applied if B is placed on the otherside AcCb. Therefore, this is a contradiction, $$K_{3,3}$$ is nonplanar. 

<figure>
<img src = "{{root_url | prepend: site.baseurl}}/asset/graph_theory/pic/homework/assign-12/assign-12-c.jpg" width = "300">
<figurecpation></figurecpation>
</figure>

## Question 6.2.3
**The complete k-partite graph $$K_{n_{1} ,n_{2} ,...,n_{k}}$$ has vertex set $$V = V_{1} \dot{\bigcup} V_{2} \dot{\bigcup} ···\dot{\bigcup} V_{k}$$, where $$V_{1},...,V_{k}$$ are disjoint sets with $$\lvert V_{i} \lvert = n_{i}$$, and each vertex $$v ∈ V_{i}$$ is connected to all vertices of $$V \setminus V_{i}, i = 1,2,...,k$$. Describe all k-tuples $$(n_{1}, n_{2}, . . . , n_{k})$$ of natural numbers, k = 1, 2, . . ., such that $$K_{n_{1}},n_{2},...,n_{k}$$ is a planar graph.**

All planar k-partite graphs must have k < 5; if k ≥ 5 the graph will contain the non-planar $$K_{1,1,1,1,1} \cong K_{5}$$


<figure>
<img src = "{{root_url | prepend: site.baseurl}}/asset/graph_theory/pic/homework/assign-12/assign-12-d.jpg" width = "200">
<figurecpation></figurecpation>
</figure>

Suppose k = 4. The partition orders in planar 4-partite graph should be < 3; Because $$K_{3,1,1,1}$$ is non-planar as it has $$K_{3,3}$$ as its subgraph. 

<figure>
<img src = "{{root_url | prepend: site.baseurl}}/asset/graph_theory/pic/homework/assign-12/assign-12-e.jpg" width = "200">
<figurecpation></figurecpation>
</figure>

And all 4-partite graphs with one partition of order at 3 will have $$K_{3,1,1,1}$$ as a subgraph. Thus the orders must be 1 or 2. Nevertheless, $$K_{2,2,1,1}$$ is already non-planar because it contains $$K_{3,3}$$ as its subgraph. 
<figure>
<img src = "{{root_url | prepend: site.baseurl}}/asset/graph_theory/pic/homework/assign-12/assign-12-f.jpg" width = "200">
<figurecpation></figurecpation>
</figure>

Thus the only planar 4-partite graphs are $$K_{2,1,1,1} \cong K_{5}-e$$ and $$K_{1,1,1,1} \cong K_{4}$$
<figure>
<img src = "{{root_url | prepend: site.baseurl}}/asset/graph_theory/pic/homework/assign-12/assign-12-g.jpg" width = "200">
<figurecpation></figurecpation>
</figure>

For tripartite graphs with two 1s in its tuple, $$K_{n,1,1}$$ is planar for $$n \in \mathbb{Z^{+}}$$, those with only one 1 in the order is $$K_{2,2,1}$$, and those with all 2s $$K_{2,2,2}$$. However,$$K_{3,2,1}$$ and $$K_{3,2,2}$$ are non-planar as they have $$K_{3,3}$$ as they subgraph, and obvious any increase in the partition orders above them would not be planar. 
<figure>
<img src = "{{root_url | prepend: site.baseurl}}/asset/graph_theory/pic/homework/assign-12/assign-12-h.jpg" width = "500">
<figurecpation></figurecpation>
</figure>

for any bipartite $$K_{m,n}$$, it is easy to see that it is planar $$\iff$$  m,n < 3. So it does not have any subgraph of $$K_{3,3}$$ 

Finally, for 1 partition, we have an empty graph with only 1 vertex. 

$$k=4$$: $$(2,1,1,1),(1,1,1,1)$$

$$k=3$$: $$(n,1,1),(2,2,2),(2,2,1)$$

$$k=2$$: $$(n,2),(n,1)$$

$$k=1$$: $$(n)$$


## Question 6.2.5
**Prove that if each face of a topological planar graph G is a region of some cycle of G then G is 2-connected.**

Let's G be $$K_{3}$$, then G is a planar graph. Then let x and y be any two vertices of $$K_{3}$$, then we can add a new edge,e, between x and y without cross, so the new graph G' is also planar. Now, if we bisect the new edge G%e, we have an additional vertex z, according to Kuratowski's theorem, the new graph is also plannar. By repeating this process, we are doing ear addition to the existing graph, which is exactly the method of composing any 2 connected graph.

## Addtional homework problems
## Question 6.2.A
Draw $$K_{6}$$ on the Klein bottle.

<figure>
<img src = "{{root_url | prepend: site.baseurl}}/asset/graph_theory/pic/homework/assign-12/assign-12-a.png" width = "300">
<figurecpation></figurecpation>
</figure>


<figure>
<img src = "{{root_url | prepend: site.baseurl}}/asset/graph_theory/pic/homework/assign-12/assign-12-b.jpg" width = "300">
<figurecpation></figurecpation>
</figure>

## Question 6.2.B
**What is the image of the "equator" under the sterographic projection map? (In case it's not already clear, the equator is the intersection of the unit sphere with the plane z = 0.)**



<figure>
<img src = "https://upload.wikimedia.org/wikipedia/commons/thumb/8/88/Stereographic_projection_in_3D.svg/1200px-Stereographic_projection_in_3D.svg.png" width = "300">
<figurecpation></figurecpation>
</figure>

<figure>
<img src = "{{root_url | prepend: site.baseurl}}/asset/graph_theory/pic/homework/assign-12/assign-12-i.jpg" width = "300">
<figurecpation></figurecpation>
</figure>

Suppose the sphere is a unisphere, then at the equator, it is a circle with radious $$r_{1} $$at the intersection of the plane z=0 and the sphere, at the plane is z=-1 which tangent to the south pole, then the projection is a circle with radious $$r_{2}= 2(r_{1})$$, which is 2 times the size of the circle at the equator. 

$$x=2 Cos (\theta),y=2 Sin (\theta) \ and \ 0≤\theta ≤ 2\pi$$


## Question 6.2.C
This problem is about the stereographic projection map. Recall that o is the "North pole" (0, 0, -1).

**i) Find an equation (parametric or symmetric) for the line between o and v = (x, y, z).**

$$\vec{ov} = (x, y, z)-(0, 0, -1) = < x , y ,z + 1 >$$

$$r(t)= <0, 0, -1> + t< x , y ,z + 1 >$$

$$r(t) = < tx,ty,-1+t(z-1)>$$

see [reference](https://math.stackexchange.com/questions/87505/equation-for-a-straight-line-in-cartesian-space/87515#87515)

**ii) Using your answer from part (i), find an explicit formula for the stereographic projection of v.**

Let's suppose it is on a unisphere, then the formula for a unisphere is $$x^{2}+y^{2}+z^{2}=1$$

input the parametric equation from i, 

$$(xt)^{2}+(yt)^{2}+(-1+t(z-1))^{2}=1 \\
\ (xt)^{2}+(yt)^{2}+ 1 + 2 t + t^{2} - 2 t z - 2 t^{2} z + t^{2} z^{2} = 1 \\
1 + 2 t + t^{2} + t^{2} x^{2} + t^{2} y^{2} - 2 t z - 2 t^{2} z + t^{2} z^{2}=1 \\
t = \frac{2(z-1)}{1+x^{2}+y^{2}-2z+z^{2}} \\
t = \frac{2(z-1)}{x^{2}+y^{2}+(z-1)^{2}} \ \text{or} \ t=0
$$

Then, input t back into the original parametric equation to eliminate the variable t.

$$r(x,y,z)=< \frac{2(z-1)(x)}{x^{2}+y^{2}+(z-1)^{2}} ,\frac{2(z-1)(y)}{x^{2}+y^{2}+(z-1)^{2}},\frac{2(z-1)(z+1)}{x^{2}+y^{2}+(z-1)^{2}}>$$


See [reference]({{root_url | prepend: site.baseurl}}/asset/graph_theory/pdf/homework/assign-12/stereographic_proj.pdf)












