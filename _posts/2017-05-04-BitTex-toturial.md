---
layout: post
title:  BibTex Turtorial
date:   2017-05-04 08:27:00
categories: Math 
tags: bibliography reference BibTex Latex
---
* content
{: toc}


visit [BibTex.org](http://www.bibtex.org/Using/)


Download [TextStudio](https://sourceforge.net/projects/texstudio/?source=typ_redirect)


[Google Scholar](https://scholar.google.com/)






LaTex.tex
```
\usepackage{amsthm}
\newtheorem{mydef}{Definition}
\begin{document}
\begin{mydef}
Newton's method for the solution of $f(x) = 0 $	is 
defined by
\begin{equation}\label{eq:1.20}
x_{k+1}=x_{k}-\frac{f(x_{k})}{f'(x_{k})},\qquad
k=0,1,2,\ldots
\end{equation}
with prescribed starting value $x_{0}$.We implicitly
assume in the defining formula
(\ref{(eq:1.20)}) that $f'(x_{k})\neq 0 $ for all $
k\geq 0 $.(from reference \cite{hilfer2000applications})
\end{mydef}

```



## Using The Amsthm Package

[Amsthm](ftp://ftp.ams.org/ams/doc/amscls/amsthdoc.pdf)


### Lemma

Lemma without number see \newtheorem

```
\documentclass{report}
\usepackage{amsthm}
\begin{document}
\newtheorem*{lem}{Lemma}
\begin{lem} Text text ... \end{lem}
\begin{lem} Text text ... \end{lem}
\end{document}


```
