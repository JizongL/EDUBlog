---
layout: post
title:  Linear Algebra in Neural Network
date:   2018-09-26 11:00
categories: python
tags: linear_combination Python Numpy
---

## Classification problem

<iframe width="560" height="315" src="https://www.youtube.com/embed/Dh625piH7Z0" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>

* Linear Boundary

* Higher dimension



<figure>
<img src = "{{root_url | prepend: site.baseurl}}/asset/AI_python/neuralNetwork/higher_dimension.png" height = "450" width = "560">
<figurecpation> </figurecpation>
</figure>


* Perceptron

<figure>
<img src = "{{root_url | prepend: site.baseurl}}/asset/AI_python/neuralNetwork/Perceptron.png" height = "450" width = "560">
<figurecpation> </figurecpation>
</figure>



## The Feedforward Process- Finding $$\vec{y}$$

<iframe width="560" height="315" src="https://www.youtube.com/embed/pvF6jpS_-cU" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>

How Are The Neurons Connected?


<figure>
<img src = "{{root_url | prepend: site.baseurl}}/asset/AI_python/neuralNetwork/feedforward0.png" height = "450" width = "560">
<figurecpation> </figurecpation>
</figure>

Since there are so many weights connecting one layer to the next, we mathematically organize those coefficients in a matrix, denoted as the weight matrix.




### Putting the pieces together

In the following videos we use subscripts as well as superscript as a numeric notation for the weight matrix.

For example:

$$W_k$$ is weight matrix

$$\ W_{ij}^k$$​	is the `ij` element of weight matrix $$k$$

<iframe width="560" height="315" src="https://www.youtube.com/embed/SSgQRH-V-1k" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>


### The Feedforward Process- Finding $$\vec{h}$$


<figure>
<img src = "{{root_url | prepend: site.baseurl}}/asset/AI_python/neuralNetwork/hidden_layer_finding.png" width = "560">
<figurecpation> </figurecpation>
</figure>

<iframe width="560" height="315" src="https://www.youtube.com/embed/kQ6rNndcA1I" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>

<figure>
<img src = "{{root_url | prepend: site.baseurl}}/asset/AI_python/neuralNetwork/finding_hidden.pnge" width = "560">
<figurecpation> </figurecpation>
</figure>


### The Feedforward Process- Finding $$\vec{y}$$


​
<iframe width="560" height="315" src="https://www.youtube.com/embed/pvF6jpS_-cU" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>


<figure>
<img src = "{{root_url | prepend: site.baseurl}}/asset/AI_python/neuralNetwork/output_finding.png" width = "560">
<figurecpation> </figurecpation>
</figure>


### Perceptron as Logical Operators

And Percetron

<figure>
<img src = "{{root_url | prepend: site.baseurl}}/asset/AI_python/neuralNetwork/And_perceptron.png" width = "560">
<figurecpation> </figurecpation>
</figure>

Or Percetron

<figure>
<img src = "{{root_url | prepend: site.baseurl}}/asset/AI_python/neuralNetwork/Or_perceptron.png" width = "560">
<figurecpation> </figurecpation>
</figure>

**Implimentation code**
useful python code
`is_correct_string = 'Yes' if output == correct_output else 'No'`

```python
import pandas as pd

# TODO: Set weight1, weight2, and bias
weight1 = 1.0
weight2 = 1.0
bias = -2.0


# DON'T CHANGE ANYTHING BELOW
# Inputs and outputs
test_inputs = [(0, 0), (0, 1), (1, 0), (1, 1)]
correct_outputs = [False, False, False, True]
outputs = []

# Generate and check output
for test_input, correct_output in zip(test_inputs, correct_outputs):
    linear_combination = weight1 * test_input[0] + weight2 * test_input[1] + bias
    output = int(linear_combination >= 0)
    is_correct_string = 'Yes' if output == correct_output else 'No'
    outputs.append([test_input[0], test_input[1], linear_combination, output, is_correct_string])

# Print output
num_wrong = len([output[4] for output in outputs if output[4] == 'No'])
output_frame = pd.DataFrame(outputs, columns=['Input 1', '  Input 2', '  Linear Combination', '  Activation Output', '  Is Correct'])
if not num_wrong:
    print('Nice!  You got it all correct.\n')
else:
    print('You got {} wrong.  Keep trying!\n'.format(num_wrong))
print(output_frame.to_string(index=False))


```

### Percetron Trick

<iframe width="560" height="315" src="https://www.youtube.com/embed/lif_qPmXvWA" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>

### Perceptron Algorithm

<iframe width="560" height="315" src="https://www.youtube.com/embed/p8Q3yu9YqYk" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>



**sudo code**

1: Start with random weights: $$w_{1},...,w_{n},b$$

2: For every misclassified point $$(x_1,...,x_n):$$

    2.1: If `prediction = 0`
        -For $$i = 1 ... n$$
            -Change $$w_i+\alpha x_i$$
        -Change $$b$$ to $$b + \alpha$$
    2.2. If `prediction  = 1`
        -For $$i = 1 ... n$$
            -Change $$w_i-\alpha x_i$$
        -Change $$b$$ to $$b - \alpha$$

**python code**

useful command
`np.matmul`

```python
import numpy as np
# Setting the random seed, feel free to change it and see different solutions.
np.random.seed(42)

def stepFunction(t):
    if t >= 0:
        return 1
    return 0

def prediction(X, W, b):
    return stepFunction((np.matmul(X,W)+b)[0])

# TODO: Fill in the code below to implement the perceptron trick.
# The function should receive as inputs the data X, the labels y,
# the weights W (as an array), and the bias b,
# update the weights and bias W, b, according to the perceptron algorithm,
# and return W and b.
def perceptronStep(X, y, W, b, learn_rate = 0.01):
    for i in range(len(X)):
        y_hat = prediction(X[i],W,b)
        if y[i]-y_hat == 1:
            W[0] += X[i][0]*learn_rate
            W[1] += X[i][1]*learn_rate
            b += learn_rate
        elif y[i]-y_hat == -1:
            W[0] -= X[i][0]*learn_rate
            W[1] -= X[i][1]*learn_rate
            b -= learn_rate
    return W, b




# This function runs the perceptron algorithm repeatedly on the dataset,
# and returns a few of the boundary lines obtained in the iterations,
# for plotting purposes.
# Feel free to play with the learning rate and the num_epochs,
# and see your results plotted below.
def trainPerceptronAlgorithm(X, y, learn_rate = 0.01, num_epochs = 10):
    x_min, x_max = min(X.T[0]), max(X.T[0])
    y_min, y_max = min(X.T[1]), max(X.T[1])
    W = np.array(np.random.rand(2,1))
    b = np.random.rand(1)[0] + x_max
    # These are the solution lines that get plotted below.
    boundary_lines = []
    for i in range(num_epochs):
        # In each epoch, we apply the perceptron step.
        W, b = perceptronStep(X, y, W, b, learn_rate)
        boundary_lines.append((-W[0]/W[1], -b/W[1]))
    return boundary_lines

```

## Log-loss Error Function


read this [article](http://neuralnetworksanddeeplearning.com/chap3.html) by [Michael Nielsen](http://michaelnielsen.org/)


### Discrete vs Continuous Predictions

<iframe width="560" height="315" src="https://www.youtube.com/embed/Rm2KxFaPiJg" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>

$$ \sigma(x) = \frac{1}{(1+e^{-x})}$$



<iframe width="560" height="315" src="https://www.youtube.com/embed/RC_A9Tu99y4" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>


```python
import numpy as np

# Write a function that takes as input a list of numbers, and returns
# the list of values given by the softmax function.
def softmax(L):
    L_exp=[np.exp(num) for num in L]
    sum_L_exp = np.sum(L_exp)
    answer = [num/sum_L_exp for num in L_exp]
    return answer


```
Udacity version

```python
import numpy as np

def softmax(L):
    expL = np.exp(L)
    sumExpL = sum(expL)
    result = []
    for i in expL:
        result.append(i*1.0/sumExpL)
    return result    
```

### softmax

$$P(y=j \| x) = \frac{\exp{x^Tw_j}}{\sum_{k=1}^{K}\exp{x^tw_k}}$$


**coding**

```python
import numpy as np

def softmax(L):
    expL = np.exp(L)
    sumExpL = sum(expL)
    result = []
    for i in expL:
        result.append(i*1.0/sumExpL)
    return result

    # Note: The function np.divide can also be used here, as follows:
    # def softmax(L):
    #     expL = np.exp(L)
    #     return np.divide (expL, expL.sum())


```


### One-Hot Encoding

<figure>
<img src = "{{root_url | prepend: site.baseurl}}/asset/AI_python/neuralNetwork/Or_perceptron.png" width = "560">
<figurecpation> </figurecpation>
</figure>

<figure>
<img src = "{{root_url | prepend: site.baseurl}}/asset/AI_python/neuralNetwork/One-hot-encode.png" width = "560" >
</figure>



* need reference


### Maximizing Probabilities

### Cross Entropy

* find cross entropy reference

<figure><img src = "{{root_url | prepend: site.baseurl}}/asset/AI_python/neuralNetwork/cross_entropy.png" width = "560"></figure>


Good model yields lower cross entropy

goal changed from maximizing probability to minimizing cross entropy

$$ cross-entropy = - \sum{y_i ln(p_i)+(1-y_i)ln(1-p_i)}$$

```python

import numpy as np
# CE = Cross Entropy
def CE(Y,P):
    # the following is the CE formula
    item = [Y[i]*np.log(P[i])+(1-Y[i])*np.log(1-P[i]) for i in range(len(Y))]
    answer = np.sum(item)
    return answer

Y=[1,1,0]
P =[0.8,0.7,0.1]

print(CE(Y,P))

```
udacity code for the same problem

```python
import numpy as np

def cross_entropy(Y, P):
    Y = np.float_(Y)
    P = np.float_(P)
    return -np.sum(Y * np.log(P) + (1 - Y) * np.log(1 - P))
```


### Multi-Class Cross-Entropy
$$CE=-\sum_{i=1}^{n}\sum_{j=1}^{m}y_{ij}ln(p_{ij})$$


Calculating the Error function

$$if y = 1\\
P(\hat{blue}) = \hat{y} \\
\text{Error} = -ln(\hat{y})\\
if y = 0\\
P(red)=1-P(\text{blue})=1-\hat{y}\\
\text{Error}=ln(1-\hat{y}) \\
\text{Error} = -(1-y)(ln(1-\hat{y}))-yln(\hat{y})$$

$$\text{Error Function} = -\frac{1}{m}\sum_{i=1}^{m}(1-y)(ln(1-\hat{y}))-yln(\hat{y})$$
$$\hat{y}=\sigma{Wx^{(i)}+b}
$$E(W,b)=-\frac{1}{m}\sum_{i=1}^{m}(1-y)(ln(1-\sigma{Wx^{(i)}+b}}))-yln(\hat{y})$$


### Logistic Regression

<figure>
<img src = "{{root_url | prepend: site.baseurl }}/asset/AI_python/neuralNetwork/Logistic_regression.png" width = "560"></figure>


### Minimizing the error function
$$E(W,b) = - \frac{1}{m}\sum_{i=1}^{m}(1-y_i)ln(1-\sigma{(Wx^{(i)}+b)}+y_i ln(\signma{Wx^{(i)+b}}))$$


### Gradient Descent

Gradient Calculation

In the last few videos, we learned that in order to minimize the error function, we need to take some derivatives. So let's get our hands dirty and actually compute the derivative of the error function. The first thing to notice is that the sigmoid function has a really nice derivative. Namely,

$$σ′(x)=σ(x)(1−σ(x))$$

The reason for this is the following, we can calculate it using the quotient formula:


<figure>
<img src = "{{root_url | prepend: site.baseurl}}/asset/AI_python/neuralNetwork/sigmoid_derivative.gif" width = "350">
<figurecpation> </figurecpation>
</figure>

And now, let's recall that if we have mm points labelled x^{(1)}, x^{(2)}, \ldots, x^{(m)},x

<figure>
<img src = "{{root_url | prepend: site.baseurl}}/asset/AI_python/neuralNetwork/gradient_descent.png" width = "350">
<figurecpation> </figurecpation>
</figure>

For further details about gradient descent, <a href = "{{root_url | prepend: site.baseurl}}/asset/AI_python/gradient-descent/gradient_descent.pdf" >open this this PDF</a>

Also, the derivative of the sigmoid function is very similar to The Bernoulli Distribution


### Logistic Regression algorithm

<figure>
<img src = "{{root_url | prepend: site.baseurl}}/asset/AI_python/neuralNetwork/Logistic Regression Algorithm.png" width = "350">
<figurecpation> </figurecpation>
</figure>



### Implementing the Gradient Descent Algorithm
For the entire coding implementation, <a href = "{{root_url | prepend: site.baseurl}}/asset/AI_python/gradient-descent/GradientDescent.html" >open this link</a> for detail.

### Non Linear Models


#### neural network architecture

Use the sigmoid function to adjust the probability that is bigger than 1.

<iframe width="560" height="315" src="https://www.youtube.com/embed/Boy3zHVrWB4" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>



<figure>
<img src = "{{root_url | prepend: site.baseurl}}/asset/AI_python/neuralNetwork/neural_network_architecture.png" width = "350">
<figurecpation> </figurecpation>
</figure>

<figure>
<img src = "{{root_url | prepend: site.baseurl}}/asset/AI_python/neuralNetwork/neural_network_architecture_2.png" width = "350">
<figurecpation> </figurecpation>
</figure>


**Multiple layers**

<figure>
<img src = "{{root_url | prepend: site.baseurl}}/asset/AI_python/neuralNetwork/multiple_layers_1.png" width = "350">
<figurecpation> </figurecpation>
</figure>

<figure>
<img src = "{{root_url | prepend: site.baseurl}}/asset/AI_python/neuralNetwork/multiple_layers_2.png" width = "350">
<figurecpation> </figurecpation>
</figure>

<figure>
<img src = "{{root_url | prepend: site.baseurl}}/asset/AI_python/neuralNetwork/multiple_layers_3.png" width = "350">
<figurecpation> </figurecpation>
</figure>

**Multi-Class Classification**
Binary(yes or no) v.s multiple(involve more classes) classification.

<figure>
<img src = "{{root_url | prepend: site.baseurl}}/asset/AI_python/neuralNetwork/deep-neural-network-binary.png" width = "350">
<figurecpation> </figurecpation>
</figure>

<figure>
<img src = "{{root_url | prepend: site.baseurl}}/asset/AI_python/neuralNetwork/deep-nerual-network-multiple.png" width = "350">
<figurecpation> </figurecpation>
</figure>






### revisit the feedforward process

<iframe width="560" height="315" src="https://www.youtube.com/embed/hVCuvMGOfyY" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>


Multi-layer perceptron formula

<figure>
<img src = "{{root_url | prepend: site.baseurl}}/asset/AI_python/neuralNetwork/feedforward.png" width = "560">
<figurecpation> </figurecpation>
</figure>


Feedforward

<figure>
<img src = "{{root_url | prepend: site.baseurl}}/asset/AI_python/neuralNetwork/feedforward2.png" width = "560">
<figurecpation> </figurecpation>
</figure>

Backpropagation with chain-rule

<figure>
<img src = "{{root_url | prepend: site.baseurl}}/asset/AI_python/neuralNetwork/backpropagation.png" width = "560">
<figurecpation> </figurecpation>
</figure>

Backpropaation example

<figure>
<img src = "{{root_url | prepend: site.baseurl}}/asset/AI_python/neuralNetwork/backpropagation2.png" width = "560">
<figurecpation> </figurecpation>
</figure>

**training and testing example**

<a href = "{{root_url | prepend: site.baseurl}}/asset/AI_python/neuralNetwork/StudentAdmissions.html">Checkout the Student Admission<\a> for coding example.

**study the code in detail**
