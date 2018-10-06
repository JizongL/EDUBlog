---
layout: post
title:  PyTorch Study Note
date:   2018-10-04 10:00
categories: system
tags: system python anaconda
---
* content
{: toc}


github address for notebooks
`https://github.com/udacity/DL_PyTorch`

`transforms.Compose([transforms.ToTensor(),
                    transforms.Normalize((0.5,0.5,0.5),(0.5,0.5,0.5)),
                    ])`


Normalize does the following for each channel:

image = (image - mean) / std

The parameters mean, std are passed as 0.5, 0.5 in your case. This will normalize the image in the range [-1,1]. For example, the minimum value 0 will be converted to (0-0.5)/0.5=-1, the maximum value of 1 will be converted to (1-0.5)/0.5=1.

if you would like to get your image back in [0,1] range, you could use,

image = ((image * std) + mean)

About whether it helps CNN to learn better, I’m not sure. But majority of the papers I read employ some normalization schema. What you are following is one of them.

Hope it helps.


## Part 2 exercise study note





### load the files
import datasets from the Torchvision package

`from torchvision import datasets, transforms`


### Necessary package
```python
%matplotlib inline
%config InlineBackend.figure_format = 'retina'

import matplotlib.pyplot as plt
import numpy as np
import time

import torch
from torch import nn
from torch import optim
import torch.nn.functional as F
from torchvision import datasets, transforms

import helper
```

study `torch.nn.functional`

### Building a network




study the `ReLu`
study `Autograd`


specifiy `input_size`, `hidden_sizes`, `output_size`

There are 3 ways to build a network with PyTorch

`nn.Sequential`


Set up hyperparameters

`input_size`
`hidden_sizes`
`output_size`

`nn.Sequential`

create a order dictionary

`OrderedDict`
e.g
`OrderedDict(['key',nn.Linear(input_size,hidden_sizes[0])])``



### Training Neural Networks



`requires_grad`


`x = torch.zeros(1, requires_grad=True)`

`torch.no_grad()`

`torch.set_grad_enabled(True|False)`


`z.backward()`

`.grad_fn`


Use `criterion` to define the loss function

`criterion = nn.CrossEntropyLoss()`(softmax is used here)

Stochastic Gradient Descent Optimizer

`optim.SGD`

`optimizer = optim.SGD(model.parameters(), lr=0.01)`

clear up the gradients to zero
`optimizer.zero_grad()`

study dropout probability

Using `nn.ModuleList` works pretty much the same as a normal Python list, except that it registers each hidden layer `Linear` module properly so the model is aware of the layers.


```python
hidden_layers = [512, 256, 128, 64]
layer_sizes = zip(hidden_layers[:-1], hidden_layers[1:])
for each in layer_sizes:
    print(each)

>> (512, 256)
>> (256, 128)
>> (128, 64)
```
