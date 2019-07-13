---
layout: post
title:  PyTorch Study Note
date:   2018-10-04 10:00
categories: system
tags: system python anaconda
---
* content
{: toc}



## Overview

github address for notebooks
`https://github.com/udacity/DL_PyTorch`

`transforms.Compose([transforms.ToTensor(),
                    transforms.Normalize((0.5,0.5,0.5),(0.5,0.5,0.5)),
                    ])`

### Basics

`z.resize_()`
`touch.from_numpy()`



**Normalize data**

Normalize does the following for each channel:

image = (image - mean) / std

The parameters mean, std are passed as 0.5, 0.5 in your case. This will normalize the image in the range [-1,1]. For example, the minimum value 0 will be converted to (0-0.5)/0.5=-1, the maximum value of 1 will be converted to (1-0.5)/0.5=1.

if you would like to get your image back in [0,1] range, you could use,

image = ((image * std) + mean)

About whether it helps CNN to learn better, I’m not sure. But majority of the papers I read employ some normalization schema. What you are following is one of them.

Hope it helps.








### Part 2

import datasets from the Torchvision package

`from torchvision import datasets, transforms`

Import Torchvision

```python
import numpy as np
import torch
import matplotlib.pyplot as plt
from torchvision import datasets, transforms
```

`datasets.MNIST()`
`torch.utils.data.DataLoader()`

`dataiter = iter(data)`
`images,labels = dataiter.next()`

Commonly used activation functions

Sigmoid
TahH
ReLu

```python
from torch import nn
from torch import optim
import torch.nn.functional as F

class Network(nn.Module):
    def __init__(self):
        super().__init__()
        self.fc1 = nn.Linear(784,128)
        self.fc1 = nn.Linear(128,64)
        self.fc1 = nn.Linear(64,10)

    def forward(self,x):
        x = self.fc1(x)
        x = F.relu(x)
        x = self.fc2(x)
        x = F.relu(x)
        x = self.fc2(x)
        x = F.relu(x)

        return x    
model = Network()
```


```python
# Set biases to all zeros
model.fc1.bias.data.fill_(0)

# sample from random normal with standard dev = 0.01
model.fc1.weight.data.normal_(std=0.01)
```

Forward pass

```python
# Grab some data
dataiter = iter(trainloader)
images, labels = dataiter.next()
# Resize images into a 1D vector, new shape is (batch size, color channels, image pixels)
images.resize_(64,1,784)
# or images.resize_(images.shape[0],1,784)
img_idx = 0
ps = model.forward(images[img_idx,:])
img = images[img_idx]
helper.view_classify(img.view(1, 28, 28), ps)
```


Use `nn.Sequential()` to build a feedforward network.

```python
# Hyperparameters for our network
input_size = 784
hidden_sizes = [128, 64]
output_size = 10
```

```python
model = nn.Sequential(nn.Linear(input_size, hidden_sizes[0]),
                      nn.ReLU(),
                      nn.Linear(hidden_sizes[0], hidden_sizes[1]),
                      nn.ReLU(),
                      nn.Linear(hidden_sizes[1], output_size),
                      nn.Softmax(dim=1))

images, labels = next(iter(trainloader))
images.resize_(images.shape[0],1,784)
ps = model.forward(images[0,:])

```
`OrderedDict` to name individual laybers and operation

```python
from collection import OrderedDict
model = nn.Sequential(OrderedDict([
                    ('fc1', nn.Linear(input_size, hidden_sizes[0])),
                    ('relu1', nn.ReLU()),
                    ('fc2', nn.Linear(hidden_sizes[0],hidden_sizes[1])),
                    ('relu2',nn.ReLU()),
                    ('fc3',nn.Linear(hidden_sizes[1],output_size)),
                    ('softmax', nn.Softmax(dim = 1))
]))
model
```

define loss function
`criterion`
`criterion = nn.CrossEntropyLoss()`
during training
`loss = criterion(output, targets)`

Optimizer: SGD or Adam
`torch.optim.SGD`


```python
criterion = nn.CrossEntropyLoss()
optimizer = optim.SGD(model.parameters(),lr = 0.003)
images,label = next(iter(trainloader))
images.resize(64,784)
optimizer.zero_grad()
output = model.forward(images)
loss = criterion(output,labels)
loss.backward()
optimizer.step()

```


### training real Model

` loss.item()`

```python
epochs = 3
print_every = 40
steps = 0

for e in range(epochs):
    running_loss = 0
    for images, labels in iter(trainloader):
        step+=1
        images.resize_(images.size[0],784)
        optimizer.zero_grad()

        output = model.forward(images)
        loss = criterion(output, labels)
        loss.backward()
        optimizer.step()
        running_loss += loss.item()

        if steps %print_every ==0:
            print("Epoch: {}/{}... ".format(e+1, epochs),
                    "Loss: {:.4f}.format(running_loss/print_every)")
```


### testing the data

```python
dataiter = iter(testloader)
images, labels= dataiter.next()
img = images[0]
img = img.resize_(1,784)

with torch.no_grad()
    logits = model.forward(img)
ps = F.softmax(logits, dim = 1)


```

### Inference and Validation

Now that you have a trained network, you can use it for making predictions. This is typically called inference, a term borrowed from statistics. However, neural networks have a tendency to perform too well on the training data and aren't able to generalize to data that hasn't been seen before. This is called overfitting and it impairs inference performance. To test for overfitting while training, we measure the performance on data not in the training set called the validation dataset. We avoid overfitting through regularization such as dropout while monitoring the validation performance during training.

Using `nn.ModuleList` works pretty much the same as a normal Python list, except that it registers each hidden layer Linear module properly so the model is aware of the layers.

The issue here is I need a way to define each nn.Linear module with the appropriate layer sizes. Since each nn.Linear operation needs an input size and an output size, I need something that looks like this:

```python
# Create ModuleList and add input layer
hidden_layers = nn.ModuleList([nn.Linear(input_size, hidden_layers[0])])
# Add hidden layers to the ModuleList
hidden_layers.extend([nn.Linear(h1, h2) for h1, h2 in layer_sizes])
Getting these pairs of input and output sizes can be done with a handy trick using zip.

hidden_layers = [512, 256, 128, 64]
layer_sizes = zip(hidden_layers[:-1], hidden_layers[1:])
for each in layer_sizes:
    print(each)

>> (512, 256)
>> (256, 128)
>> (128, 64)
```


`F.log_softmax(x, dim=1)`


```python
class Network(nn.Module):
    def __init__(self, input_size,output_size, hidden_layers, drop_p = 0.5):
        ''' Builds a feedforward network with arbitrary hidden layers.

                Arguments
                ---------
                input_size: integer, size of the input
                output_size: integer, size of the output layer
                hidden_layers: list of integers, the sizes of the hidden layers
                drop_p: float between 0 and 1, dropout probability
            '''    
    super().__init__()
    # add first layer, input to the hidden layer
    self.hidden_layers = nn.ModuleList([nn.Linear(input_size, hidden_layers[0])])
    layer_sizes = zip(hidden_layers[:-1],hidden_layers[1:])
    self.hidden_layers.extend([nn.Linear(h1,h2) for h1,h2 in layer_sizes])
    self.output = nn.Linear(hidden_layers[-1],output_size)
    self.dropout = nn.Dropout(p=drop_p)

    def forward(self,x):

        for linear in self.hidden_layers:
            x = F.relu(linear(x))
            x = self.dropout(x)

        x = self.output(x)

        return F.log_softmax(x, dim =1)



```

then train the network.

Since the model's forward method returns the `log-softmax`, I used the negative log loss as my criterion, `nn.NLLLoss()`. I also chose to use the `Adam optimizer`. This is a variant of stochastic gradient descent which includes `momentum` and in general trains faster than your basic SGD.

```python
model = Network(784,10,[516,256], drop_p = 0.5)
criterion = nn.NLLLoss()
optimizer = optim.Adam(model.parameters(), lr = 0.001)
```

```python
def validation(model, testloader, criterion):
    test_loss = 0
    accuracy = 0
    for images, labels in testloader:
        images.resize_(images[0], 784)

        output = model.forward(images)
        test_loss += criterion(output, labels).item()

        ps = torch.exp(output)
        equality = (labels.data == ps.max(dim=1)[1])
        accuracy += equality.type(torch.FloatTensor).mean()
    return test_loss, accuracy

```


```python

epoches = 2
steps = 0
running_loss = 0
print_every = 40
for e in range(epochs):
    model.train()
    for images, labels in trainloader:
        steps += 1

        images.resize_(images.size()[0], 784)
        optimizer.zero_grad()

        output = model.forward(images)
        loss = criterion(output, labels)
        loss.backward()
        optimizer.step()

        running_loss += loss.item()

        if steps % print_every == 0:

            model.eval()
            with torch.no_grad():
                test_loss, accuracy = validation(model, testloader, criterion)

            print("Epoch: {}/{}..".format(e+1, epochs)),
                "Training Loss: {:.3f}..".format(running_loss/print_every),
                "Test Loss: {:.3f}..".format(test_loss/len(testloader)),
                "Test Accuracy: {:.3f}".format(accuracy/len(testloader)))
            running_loss = 0
        model.train()

```

About `optimizer.step()`

`optimizer.step()` is performs a parameter update based on the current gradient (stored in .grad attribute of a parameter) and the update rule. As an example, the update rule for SGD is defined [here](https://github.com/pytorch/pytorch/blob/cd9b27231b51633e76e28b6a34002ab83b0660fc/torch/optim/sgd.py#L63)


Calling `.backward()` mutiple times accumulates the gradient (by addition) for each parameter. This is why you should call `optimizer.zero_grad()` after each `.step()` call. Note that following the first .backward call, a second call is only possible after you have performed another forward pass.

PyTorch allows you to set a model in "training" or "evaluation" modes with `model.train()` and `model.eval()`, respectively. In training mode, dropout is turned on, while in evaluation mode, dropout is turned off. This effects other modules as well that should be on during training but off during inference.





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
