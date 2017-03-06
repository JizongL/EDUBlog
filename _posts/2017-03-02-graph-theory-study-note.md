---
layout: post
title: Graph Theory Study Note
date: 2017-03-02 21:30:00
categories: Math
tags: Graph_Theory study_note
---
* content
{: toc}

Mohammed’s scimitars

<figure>
<img src = "{{root_url | prepend: site.baseurl}}/asset/graph_theory/pic/study-note/s-n-a-mohammed-scimitars.png" width = "500">
</figure>



###Theorem 2
A connected multigraph has an Euler path but not an Euler circuit if and only if it has exactly two vertices of odd degree.



Which graphs shown in Figure 7 have an Euler path?

<figure>
<img src = "{{root_url | prepend: site.baseurl}}/asset/graph_theory/pic/study-note/s-n-b-euler-g.png" width = "500">
</figure>

Solution: G1 contains exactly two vertices of odd degree, namely, b and d . Hence, it has an Euler path that must have b and d as its endpoints. One such Euler path is d, a, b, c, d, b. Similarly, G2 has exactly two vertices of odd degree, namely, b and d. So it has an Euler path that must have b and d as endpoints. One such Euler path is b,a,g,f,e,d,c,g,b,c,f,d. G3 has no Euler path because it has six vertices of odd degree.

###Application of Euler Paths

* Chinese postman problem in honor of Guan Meigu


### Hamilton's Path

Icosian puzzle(invented by Irish mathematician Sir William Rowan Hamilton in 1857)



### 2 connectivity

4.6.3 Theorem. A graph G is 2-connected if and only if there exi- sts, for any two vertices of G, a cycle in G containing these two vertices.


Proof. 

The given condition is, no doubt, sufficient, since if two vertices v, v′ lie on a common cycle then there exist two paths con- necting them having no common vertices except for the end-vertices, and so v and v′ can never fall into distinct components by removing a single vertex.


