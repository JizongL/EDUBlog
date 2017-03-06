---
layout: post
title: Graph Theory Homework Assignment 7
date: 2017-03-02 13:28:00
categories: Math
tags: Graph_Theory homework 
---

Matoušek-Nešetřil p129: 9
Matoušek-Nešetřil p136: 2, 5, 8, 10*
Matoušek-Nešetřil p148: 1

 Let G be a graph in which all vertices have degree at least d. Prove that G contains a path of length d (not necessarily an induced one).

 Hint: starting from any vertex v1, we choose any vertex v2 among the neighbors of v1. Next, we choose any v3 ≠ v1 from the neighbors of v2 (we can do so because d ≥ 2). In general, at step i, if i ≤ d, then there is at least one neighbors vi+1 which is different from v_{1},...,v_{i−1}. This shows that the process terminates only when we already constructed a path of at least d + 1 vertices.


2. Characterize graphs that have a tour, not necessarily a closed one, covering all edges.
just use class 19 note, but to prove it has two odd degree end points. since it is not a closed tour, so it is not eulerian. 


5. Check that Theorem 4.4.1 also holds for graphs with loops and multiple edges (what is the correct way to define the degree of a vertex for such graphs?).





  Prove that for any two edges of a 2-connected graph, a cycle exists containing both of them.