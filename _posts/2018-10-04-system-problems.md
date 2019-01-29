---
layout: post
title:  System Issues Solving
date:   2018-10-04 10:00
categories: system
tags: system python anaconda
---
* content
{: toc}


### Jupyter notebook does not recognize environment
couldn't find the evironment activated on jupyter notebook, just run the following would solve the
problem.

`(tensorflow) $ conda install jupyter`


### Update Ananconda Python to 3.7



```python
$ conda install python=3.7
```
got the following errors

```
    Solving environment: failed

    UnsatisfiableError: The following specifications were found to be in conflict:
    - nb_anacondacloud -> _nb_ext_conf -> python=2.7
    - python=3.7
    Use "conda info <package>" to see the dependencies for each package.
```
Solution is to install with no default package.

```Python
conda create -n python37 python=3.7 --no-default-packages
```

then rerun the installation

```python
$ conda install python=3.7
```

### Heroku setup Issues
If the python version is not supported, and if the project has been `git init`, you may have to
create another new project to let the system correct itself. simply changing the version number on
`runtime.txt` wouldn't work.
