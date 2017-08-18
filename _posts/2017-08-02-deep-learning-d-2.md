---
layout: post
title:  Deep Learning day 2 note
date:   2017-08-02 17:00:00
categories: DeepLearning
tags: note
---

* content
{: toc}





### Things to explore



Check out [Soundnet](http://soundnet.csail.mit.edu/)






### Install Anaconda 3

I first installed Anaconda through [graphical install](https://www.continuum.io/downloads), then I use `conda list` on Mac terminal and it returned
`conda command not found`. 

then, I tried to install it manually. I download the command-line version of the [macOS installer](https://www.continuum.io/downloads#macos)
Then I bash install on terminal.

```
bash ~/Downloads/Anaconda3-4.4.0-MacOSX-x86_64.sh
```
after installation, I reset the pathlink as follow

```
export PATH="/<path to anaconda>/bin:$PATH"

```
then I retry `conda list`

It worked and you should see the following 




 <video controls loop>
	  <source src="https://s3.amazonaws.com/content.udacity-data.com/courses/ud1111/conda_default_install.mp4" type="video/mp4">
  		<source src="movie.ogg" type="video/ogg">
  		Your browser does not support the video tag.
</video> 


Check out official site for further help [here](https://docs.continuum.io/anaconda/install/mac-os#macos-graphical-install)


### Anaconda basic commands

`conda install package_name`
`conda list`

`source activate env_name`
`source deactivate env_name`

`create -n name package`
`create -n py2 python=2`

`conda create -n py3 python=3`
`conda env export > environment.yaml`

`conda env create -f environment.yaml`
`conda env list`

`conda env remove -n env_name`


### Jupyter

 



### Further explore topics

[Pip Freeze](https://pip.pypa.io/en/stable/reference/pip_freeze/)

[Conda: Myths and Misconceptions](https://jakevdp.github.io/blog/2016/08/25/conda-myths-and-misconceptions/)

[Python formatting string](https://docs.python.org/3.6/whatsnew/3.6.html#pep-498-formatted-string-literals)

[Jupyter is Python 3 only](http://blog.jupyter.org/2016/07/08/ipython-5-0-released/)


