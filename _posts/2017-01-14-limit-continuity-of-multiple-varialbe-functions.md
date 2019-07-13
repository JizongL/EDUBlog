---
layout: post
title:  Limit and Continuity of multiple variable functions
categories: Math
tags: Calculus Calculus_4 concept understanding
---

* content
{: toc}

To determine if $$\lim_{(x,y) \to (a,b)}f(x,y)$$ exists and it is continuous, we need to do 2 things. 





* Find its limit (if exists)
* See if $$\lim_{(x,y) \to (a,b)}f(x,y) = f(a,b)$$

## Example

Let
$$
g(x,y)=
\begin{cases}
\frac{3x^{2}y}{x^{2}+y^{2}}, & \text{if $(x,y) \neq (0,0)$} \\[2ex]
\frac{3x^{2}y}{x^{2}+y^{2}}, & \text{if $(x,y) = (0,0)$}
\end{cases}
$$

Here *g* is defined at (0,0) but g is still discontinuous there because $$\lim{(x,y) \to (0,0)} g(x,y)$$ does not exist



<p>
<script type="text/javascript" src="http://www.wolfram.com/cdf-player/plugin/v2.1/cdfplugin.js"></script>
<script type="text/javascript">
var cdf = new cdfplugin();
cdf.setDefaultContent('<a href="http://www.wolfram.com/cdf-player/"><img  src="{{site.baseurl}}/asset/calculus4/3d/14.2/1a.png"></a>');
cdf.embed('{{site.baseurl}}/asset/calculus4/3d/14.2/1a.cdf', 650, 480);
</script>
</p>

<p></p>
<p>
<script type="text/javascript" src="http://www.wolfram.com/cdf-player/plugin/v2.1/cdfplugin.js"></script>
<script type="text/javascript">
var cdf = new cdfplugin();
cdf.setDefaultContent('<a href="http://www.wolfram.com/cdf-player/"><img  src="{{site.baseurl}}/asset/calculus4/2d/14.2/1a.png"></a>');
cdf.embed('{{site.baseurl}}/asset/calculus4/2d/14.2/1a.cdf', 364, 226);
</script>
</p>

<p>
<script type="text/javascript" src="http://www.wolfram.com/cdf-player/plugin/v2.1/cdfplugin.js"></script>
<script type="text/javascript">
var cdf = new cdfplugin();
cdf.setDefaultContent('<a href="http://www.wolfram.com/cdf-player/"><img  src="{{site.baseurl}}/asset/calculus4/2d/14.2/2a.png"></a>');
cdf.embed('{{site.baseurl}}/asset/calculus4/2d/14.2/2a.cdf', 364, 226);
</script>
</p>

<p></p>

<p>
<script type="text/javascript" src="http://www.wolfram.com/cdf-player/plugin/v2.1/cdfplugin.js"></script>
<script type="text/javascript">
var cdf = new cdfplugin();
cdf.setDefaultContent('<a href="http://www.wolfram.com/cdf-player/"><img  src="{{site.baseurl}}/asset/calculus4/manipulate/14.2/1a.png"></a>');
cdf.embed('{{site.baseurl}}/asset/calculus4/manipulate/14.2/1a.cdf', 364, 226);
</script>
</p>