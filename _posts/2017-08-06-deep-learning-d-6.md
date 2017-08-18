---
layout: post
title:  Deep Learning day 6 note
date:   2017-08-06 14:00:00
categories: DeepLearning
tags: note gradient_descent
---

* content
{: toc}



An overview of gradient descent optimization algorithms by [Sebaian Ruder](http://ruder.io/optimizing-gradient-descent/index.html#momentum)

<img src="{{root_url | prepend: site.baseurl}}/asset/deep learning/post images/day-6/d6-01.png" width = "500">

$$E = \frac{1}{2}(y-f(\sum w_ix_i))^2$$

$$\Delta w = -$$gradient


perform gradient decent
$$w_i=w_i+\Delta w_i$$

$$\Delta w_i \propto - \frac{\partial E}{\partial w_i} \to$$ the gradient

add learning rate 
$$\Delta w_i = - \eta \frac{\partial E}{\partial w_i} \to$$ the gradient


$$\frac{\partial E}{\partial w_i} = \frac{\partial}{\partial w_i} \frac{1}{2}(y-\hat{y}(w_i))^2$$

use change rule
$$\frac{\partial}{\partial z}p(q(z))= \frac{\partial p}{\partial q} \frac{\partial q}{\partial z}$$

let $$q=(y-\hat{y}(w_i)) \quad p = \frac{1}{2}q(w_i)^2$$, then

$$\frac{\partial E}{\partial w_i}=(y-\hat{y})\frac{\partial}{\partial w_i}(y-\hat{y})$$

$$\frac{\partial E}{\partial w_i} = \frac{\partial}{\partial w_i} \frac{1}{2}(y-\hat{y})^2$$

$$=(y-\hat{y}) \frac{\partial}{\partial w_i}(y-\hat{y})$$

$$-(y-\hat{y}) \frac{\partial \hat{y}}{\partial w_i}$$

$$f(h)$$ is the activation function

$$\hat{y} = f(h)$$ where $$h = \sum_i w_i x_i$$

use the chain rule again

$$\frac{\partial E}{\partial w_i}=-(y-\hat{y})f'(h)\frac{\partial}{\partial w_i}\sum w_i x_i$$

$$\frac{\partial}{\partial w_i}\sum w_i x_i = \frac{\partial}{\partial w_1}[w_1x_1+w_2 x_2+...+w_n x_n] \\
x_1+0+0+0+... \\
\frac{\partial}{\partial w_i} \sum_i w_i x_i = x_i $$

finally

$$\frac{\partial E}{\partial w_i}=-(y-\hat{y})f'(h)x_i$$

$$\Delta w_i = \eta (y-\hat{y})f'(h)x_i$$

let $$\delta = (y-\hat{y})f'(h)$$ then $$w_i = w_i + \eta \delta x_i$$

$$\Delta w_{ij}= \eta \delta_j x_i$$

<img src="{{root_url | prepend: site.baseurl}}/asset/deep learning/post images/day-6/d6-02.png" width = "500">

<img src="{{root_url | prepend: site.baseurl}}/asset/deep learning/post images/day-6/d6-03.png" width = "500">


```py
import numpy as np

def sigmoid(x):
    """
    Calculate sigmoid
    """
    return 1/(1+np.exp(-x))

def sigmoid_prime(x):
    """
    # Derivative of the sigmoid function
    """
    return sigmoid(x) * (1 - sigmoid(x))

learnrate = 0.5
x = np.array([1, 2, 3, 4])
y = np.array(0.5)

# Initial weights
w = np.array([0.5, -0.5, 0.3, 0.1])

### Calculate one gradient descent step for each weight
### Note: Some steps have been consilated, so there are
###       fewer variable names than in the above sample code

# TODO: Calculate the node's linear combination of inputs and weights
h = np.dot(x, w)

# TODO: Calculate output of neural network
nn_output = sigmoid(h)

# TODO: Calculate error of neural network
error = y-nn_output
output_grad = sigmoid_prime(h)
# TODO: Calculate the error term
#       Remember, this requires the output gradient, which we haven't
#       specifically added a variable for.
error_term = error * output_grad

# TODO: Calculate change in weights
del_w = learnrate * np.dot(error_term,x)

print('Neural Network output:')
print(nn_output)
print('Amount of Error:')
print(error)
print('Change in Weights:')
print(del_w)

```

```
Neural Network output:
0.689974481128
Amount of Error:
-0.189974481128
Change in Weights:
[-0.02031869 -0.04063738 -0.06095608 -0.08127477]

Nice job!  That's right!

```

