---
layout: post
title:  Foundation section 6 2.2 2.3
date:   2017-06-09 08:05:05
categories: Math
tags: foundation function 
---
* content
{: toc}






### Definition
Let $$\{X_{\alpha}: \alpha = A\}$$ be a family of sets, the family is said to be parwise disjoint if for any $$\alpha,\beta \in A,\alpha ≠ \beta$$ then $$X_{\alpha} \cap \ X_{\beta}= \emptyset$$

### Definiton
let Y be a set such that $$\mathcal{F}=\{X_{\alpha}:\alpha \in A\}$$
be a family of non-empty sets, this collection $$\mathcal{F}$$ is a partition of Y if $$\mathcal{F}$$ is pairwise disjoint and $$Y = \bigcup_{\alpha \in A} X_{\alpha}$$

### Theorem 
(1)
Let X be a set and $$~$$ an equivalence relation on X. Then $$X / \sim $$ is a partition of X.

(2)let $$\{X_{\alpha}:\alpha \in A\}$$ be a partition of X. let ~ be the relation on X defined by $$x \sim y$$ whenever $$x,y \in X_{\alpha}$$ for some fixed $$\alpha \in A$$

**Proof**

(1)
previous proof of proposition

if $$~$$ equivalent relationship
$$X / ~ = \{[x]:x\in X\}$$
saw $$[x] \cap [y]= \emptyset$$ for $$x \not\sim y$$ 

and $$[x]=[y]$$ for $$x \sim y$$

so by definition $$[x]$$ is pairwise disjoint and family of sets is $$X / \sim$$



(2)
reflexive: 
$$x~x$$ means $$x\in X_{\alpha}$$ for some fixed $$\alpha \in A 
$$clear


(3)
symmetric: 
suppose $$x ~ y$$ so for some fixed $$\alpha \in A, $$x,y \in X_{\alpha} \implies y,x \in X_{\alpha} \implies y~x$$

(4)
transitive

suppose $$x~y$$ and $$y~z$$

means there are fixed $$\alpha_{0},\alpha_{1} \in A$$ such that

$$x,y \in X_{\alpha_{0}}$$ 

and 

$$y,z \in X_{a_{1}} \implies y \in X_{\alpha_{0}} \cap X_{\alpha_{1}}$$

$$so X_{a_{0}} \cap X_{a_{1}} ≠ \emptyset$$

But since $$\mathcal{F}$$ is a partition

then $$X_{a}$$ is an partition

$$\implies X_{a_{0}} = X_{a_{1}} \implies x,z \in X_{a_{0}}$$

$$\implies x \sim y$$ Q.E.D


Check [Review of Exam 1]({{post.url | prepend: site.baseurl}}{% post_url 2017-06-07-exam-1-review %})


