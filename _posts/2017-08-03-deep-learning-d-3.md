---
layout: post
title:  Deep Learning day 3 note
date:   2017-08-03 15:00:00
categories: DeepLearning
tags: note
---

* content
{: toc}


[Jupyter Notebook Keyboard Shortcuts](https://www.cheatography.com/weidadeyue/cheat-sheets/jupyter-notebook/)

### short cut to remember

pressing `shift + tab` twice show more information of current code

L show line numbers on left of code.

### Magic command






Magic commands are preceded with one or two percent signs (% or %%) for line magics and cell magics

**Timing code**

`%timeit` times a function's run time.



```py
from math import sqrt
def fibo1(n):
	if n==0:
		return 0
	elif n == 1:
		return 1
	return fibo1(n-1) + fibol(n-2)

def fib2(n):
	return ((1+sqrt(5)**n-(1-sqrt(5))**n)/(2**n*sqrt(5))					
% timeit fib1(20)

% timeit fib2(20)

```
`%%timeit` times the whole cell run time. 

```py
%%timeit
rolls=(random.randint(1,6) for _ in range(100))
prize = sum(roll fi roll%2 == 0 else -1 for roll in rolls)
```

`%pdb` debugger

`%matplotlib`
__Tip:__ On higher resolution screens such as Retina displays, the default images in notebooks can look blurry. Use `%config InlineBackend.figure_format = 'retina'` after `%matplotlib inline` to render higher resolution images.

<figure>
<img src = "{{root_url | prepend: site.baseurl}}/asset/deep learning/post images/day-3/magic-matplotlib.png" width = "500">
<figurecpation> </figurecpation>
</figure>



[to learn more](http://ipython.readthedocs.io/en/stable/interactive/magics.html)

### create a `run all cells` button with javascript

```js
%%javascript

Jupyter.keyboard_manager.command_shortcuts.add_shortcut('r', {
    help : 'run all cells',
    help_index : 'zz',
    handler : function (event) {
        IPython.notebook.execute_all_cells();
        return false;
    }}
);

```
<br>
<br>

<video width="800" class='center' controls loop>
<source src = "https://s3.amazonaws.com/content.udacity-data.com/courses/ud1111/Markdown+cells.mp4" type = "video/mp4">
<source src ="movie.ogg" type="video/ogg">
Your brower does not support the video tag.
</video>


### converting notebook to other formats

```terminal
jupyter nbconvert --to html notebook.ipynb
```
 