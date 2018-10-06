---
layout: post
title:  Linear Algebra in Neural Network
date:   2018-09-26 11:00
categories: python
tags: linear_combination Python Numpy
---
* content
{: toc}


## Classification problem

<iframe width="660" height="315" src="https://www.youtube.com/embed/Dh625piH7Z0" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>

* Linear Boundary

* Higher dimension



<figure>
<img src = "{{root_url | prepend: site.baseurl}}/asset/AI_python/neuralNetwork/higher_dimension.png" height = "450" width = "660">
<figurecpation> </figurecpation>
</figure>


* Perceptron

<figure>
<img src = "{{root_url | prepend: site.baseurl}}/asset/AI_python/neuralNetwork/Perceptron.png" height = "450" width = "660">
<figurecpation> </figurecpation>
</figure>



## The Feedforward Process- Finding $$\vec{y}$$

<iframe width="660" height="315" src="https://www.youtube.com/embed/pvF6jpS_-cU" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>

How Are The Neurons Connected?


<figure>
<img src = "{{root_url | prepend: site.baseurl}}/asset/AI_python/neuralNetwork/feedforward0.png" height = "450" width = "660">
<figurecpation> </figurecpation>
</figure>

Since there are so many weights connecting one layer to the next, we mathematically organize those coefficients in a matrix, denoted as the weight matrix.




### Putting the pieces together

In the following videos we use subscripts as well as superscript as a numeric notation for the weight matrix.

For example:

$$W_k$$ is weight matrix

$$\ W_{ij}^k$$​	is the `ij` element of weight matrix $$k$$

<iframe width="660" height="315" src="https://www.youtube.com/embed/SSgQRH-V-1k" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>


### The Feedforward Process- Finding $$\vec{h}$$


<figure>
<img src = "{{root_url | prepend: site.baseurl}}/asset/AI_python/neuralNetwork/hidden_layer_finding.png" width = "660">
<figurecpation> </figurecpation>
</figure>

<iframe width="660" height="315" src="https://www.youtube.com/embed/kQ6rNndcA1I" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>

<figure>
<img src = "{{root_url | prepend: site.baseurl}}/asset/AI_python/neuralNetwork/finding_hidden.pnge" width = "660">
<figurecpation> </figurecpation>
</figure>


### The Feedforward Process- Finding $$\vec{y}$$


​
<iframe width="660" height="315" src="https://www.youtube.com/embed/pvF6jpS_-cU" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>





### Perceptron as Logical Operators

And Perceptron

<figure>
<img src = "{{root_url | prepend: site.baseurl}}/asset/AI_python/neuralNetwork/And_perceptron.png" width = "660">
<figurecpation> </figurecpation>
</figure>

Or Percetron

<figure>
<img src = "{{root_url | prepend: site.baseurl}}/asset/AI_python/neuralNetwork/Or_perceptron.png" width = "660">
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

<iframe width="660" height="315" src="https://www.youtube.com/embed/lif_qPmXvWA" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>

### Perceptron Algorithm

<iframe width="660" height="315" src="https://www.youtube.com/embed/p8Q3yu9YqYk" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>



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

<iframe width="660" height="315" src="https://www.youtube.com/embed/Rm2KxFaPiJg" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>

$$ \sigma(x) = \frac{1}{(1+e^{-x})}$$



<iframe width="660" height="315" src="https://www.youtube.com/embed/RC_A9Tu99y4" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>


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

$$P(y=j \| x) = \frac{e^{x^Tw_j}}{\sum_{k=1}^{K}e^{x^tw_k}}$$


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
<img src = "{{root_url | prepend: site.baseurl}}/asset/AI_python/neuralNetwork/Or_perceptron.png" width = "660">
<figurecpation> </figurecpation>
</figure>

<figure>
<img src = "{{root_url | prepend: site.baseurl}}/asset/AI_python/neuralNetwork/One-hot-encode.png" width = "660" >
</figure>



* need reference


### Maximizing Probabilities

### Cross Entropy

* find cross entropy reference

<figure><img src = "{{root_url | prepend: site.baseurl}}/asset/AI_python/neuralNetwork/cross_entropy.png" width = "660"></figure>


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

$$\hat{y}=\sigma(Wx^{(i)}+b)$$

$$E(W,b)=-\frac{1}{m}\sum_{i=1}^{m}(1-y)(ln(1-\sigma(Wx^{(i)}+b)))-yln(\hat{y})$$


### Logistic Regression

<figure>
<img src = "{{root_url | prepend: site.baseurl }}/asset/AI_python/neuralNetwork/Logistic_regression.png" width = "660"></figure>


### Minimizing the error function
$$E(W,b) = - \frac{1}{m}\sum_{i=1}^{m}(1-y_i)ln(1-\sigma((Wx^{(i)}+b))+y_i ln(\sigma(Wx^{(i)}+b))$$


### Gradient Descent

Gradient Calculation

In the last few videos, we learned that in order to minimize the error function, we need to take some derivatives. So let's get our hands dirty and actually compute the derivative of the error function. The first thing to notice is that the sigmoid function has a really nice derivative. Namely,

$$σ′(x)=σ(x)(1−σ(x))$$

The reason for this is the following, we can calculate it using the quotient formula:


<figure>
<img src = "{{root_url | prepend: site.baseurl}}/asset/AI_python/neuralNetwork/sigmoid_derivative.gif" width = "660">
<figurecpation> </figurecpation>
</figure>

And now, let's recall that if we have mm points labelled x^{(1)}, x^{(2)}, \ldots, x^{(m)},x

<figure>
<img src = "{{root_url | prepend: site.baseurl}}/asset/AI_python/neuralNetwork/gradient_descent.png" width = "660">
<figurecpation> </figurecpation>
</figure>

For further details about gradient descent, <a href = "{{root_url | prepend: site.baseurl}}/asset/AI_python/gradient-descent/gradient_descent.pdf" >open this this PDF</a>

Also, the derivative of the sigmoid function is very similar to The Bernoulli Distribution


### Logistic Regression algorithm

<figure>
<img src = "{{root_url | prepend: site.baseurl}}/asset/AI_python/neuralNetwork/Logistic Regression Algorithm.png" width = "660">
<figurecpation> </figurecpation>
</figure>



### Implementing the Gradient Descent Algorithm
For the entire coding implementation, <a href = "{{root_url | prepend: site.baseurl}}/asset/AI_python/gradient-descent/GradientDescent.html" >open this link</a> for detail.

### Non-Linear Models


#### neural network architecture

Use the sigmoid function to adjust the probability that is bigger than 1.

<iframe width="660" height="315" src="https://www.youtube.com/embed/Boy3zHVrWB4" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>



<figure>
<img src = "{{root_url | prepend: site.baseurl}}/asset/AI_python/neuralNetwork/neural_network_architecture.png" width = "660">
<figurecpation> </figurecpation>
</figure>

<figure>
<img src = "{{root_url | prepend: site.baseurl}}/asset/AI_python/neuralNetwork/neural_network_architecture_2.png" width = "660">
<figurecpation> </figurecpation>
</figure>


**Multiple layers**

<figure>
<img src = "{{root_url | prepend: site.baseurl}}/asset/AI_python/neuralNetwork/multiple_layers_1.png" width = "660">
<figurecpation> </figurecpation>
</figure>

<figure>
<img src = "{{root_url | prepend: site.baseurl}}/asset/AI_python/neuralNetwork/multiple_layers_2.png" width = "660">
<figurecpation> </figurecpation>
</figure>

<figure>
<img src = "{{root_url | prepend: site.baseurl}}/asset/AI_python/neuralNetwork/multiple_layers_3.png" width = "660">
<figurecpation> </figurecpation>
</figure>

**Multi-Class Classification**
Binary(yes or no) v.s multiple(involve more classes) classification.

<figure>
<img src = "{{root_url | prepend: site.baseurl}}/asset/AI_python/neuralNetwork/deep-neural-network-binary.png" width = "660">
<figurecpation> </figurecpation>
</figure>

<figure>
<img src = "{{root_url | prepend: site.baseurl}}/asset/AI_python/neuralNetwork/deep-nerual-network-multiple.png" width = "660">
<figurecpation> </figurecpation>
</figure>



<figure>
<img src = "{{root_url | prepend: site.baseurl}}/asset/AI_python/neuralNetwork/3-d-model.png" width = "660">
<figurecpation> </figurecpation>
</figure>


<figure>
<img src = "{{root_url | prepend: site.baseurl}}/asset/AI_python/multiple-classification.png" width = "660">
<figurecpation> </figurecpation>
</figure>


### revisit the feedforward process

<iframe width="660" height="315" src="https://www.youtube.com/embed/hVCuvMGOfyY" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>


Multi-layer perceptron formula

<figure>
<img src = "{{root_url | prepend: site.baseurl}}/asset/AI_python/neuralNetwork/feedforward.png" width = "660">
<figurecpation> </figurecpation>
</figure>


**Feedforward**

<figure>
<img src = "{{root_url | prepend: site.baseurl}}/asset/AI_python/neuralNetwork/feedforward2.png" width = "660">
<figurecpation> </figurecpation>
</figure>

<figure>
<img src = "{{root_url | prepend: site.baseurl}}/asset/AI_python/neuralNetwork/feed-forward.png" width = "660">
<figurecpation> </figurecpation>
</figure>


**error function**

<figure>
<img src = "{{root_url | prepend: site.baseurl}}/asset/AI_python/neuralNetwork/error-function.png" width = "660">
<figurecpation> </figurecpation>
</figure>



Backpropagation with chain-rule

<figure>
<img src = "{{root_url | prepend: site.baseurl}}/asset/AI_python/neuralNetwork/backpropagation.png" width = "660">
<figurecpation> </figurecpation>
</figure>

Backpropation example

<figure>
<img src = "{{root_url | prepend: site.baseurl}}/asset/AI_python/neuralNetwork/backpropagation2.png" width = "660">
<figurecpation> </figurecpation>
</figure>

**training and testing example**

<a href = "{{root_url | prepend: site.baseurl}}/asset/AI_python/neuralNetwork/StudentAdmissions.html">Checkout the Student Admission<\a> for coding example.

**study the code in detail**


```python
import matplotlib.pyplot as plt
def plot_points(data):
    X = np.array(data[["gre","gpa"]])
    y = np.array(data[["admit"]])
    admitted = X[np.argwhere(y==1)]
    rejected = X[np.argwhere(y==0)]
    plt.scatter([s[0][0] for s in rejected],[s[0][1] for s in rejected], s = 25, color = 'red', edgecolor = 'k')
    plt.scatter([s[0][0] for s in admitted],[s[0][1] for s in admitted], s = 25, color = 'red', edgecolor = 'k')
    plt.xlabel('Test (GRE)')
    plt.ylabel('Grades (GPA)')

plt_points(data)
plt.show()


data_rank1 = data[data["rank"]==1]
data_rank2 = data[data["rank"]==2]
data_rank3 = data[data["rank"]==3]
data_rank4 = data[data["rank"]==4]

plot_points(data_rank1)
plt.title("rank 1")
plt.show()
plot_points(data_rank2)
plt.title("rank 2")
plt.show()
plot_points(data_rank3)
plt.title("rank 3")
plt.show()
plot_points(data_rank4)
plt.title("rank 4")
plt.show()


one_hot_data = pd.concat([data, pd.get_dummies(data['rank'], prefix = 'rank')], axis = 1)

one_not_data = one_hot_data.drop('rank', axis = 1)


```



### Gradient Descence
$$f(x,y)= x^2sin(y)\\
\frac{\partial f}{\partial x}=2xsin(y)\\
\frac{\partial f}{\partial y} = x^2cos(y)$$

$$\delta f(x,y) =
\begin{bmatrix}
2xsin(y) \\
x^2cos(y) \\
\end{bmatrix}$$


Gradient always perpendicular to contour line.


<figure>
<img src = "{{root_url | prepend: site.baseurl}}/asset/AI_python/neuralNetwork/activation_function.png" width = "660">
<figurecpation> </figurecpation>
</figure>

$$E = y - \hat{y}$$


**The sum of the square errors**

$$ESE = \frac{1}{2}\sum_{\mu}(y^\mu-\hat{y}^\mu)^2$$

$$\hat{y}=f(\sum_i w_i x_i^\mu)^2$$
$$ESE = \frac{1}{2}\sum_{\mu}(y^\mu-(f(\sum_i w_i x_i^\mu)^2))^2$$


<figure>
<img src = "{{root_url | prepend: site.baseurl}}/asset/AI_python/neuralNetwork/sum_of_square.png" width = "660">
<figurecpation> </figurecpation>
</figure>

<figure>
<img src = "{{root_url | prepend: site.baseurl}}/asset/AI_python/neuralNetwork/gradient_descense_mininum_graph.png" width = "660">
<figurecpation> </figurecpation>
</figure>

$$w_i = w_i+\Delta w_i$$

$$\Delta w_i \propto - \frac{\partial E}{\partial w_i}$$

$$\Delta w_i = - \eta \frac{\partial E}{\partial w_i}$$

**By the chain rule**

$$\frac{\partial E}{\partial w_i} =\frac{\partial}{\partial w_i}\frac{1}{2}(y-\hat{y})^2$$

$$-(y-\hat{y})\frac{\partial \hat{y}}{\partial w_i}$$

Because

$$\hat{y}=f(h) \text{ | where | } h = \sum_i w_i x_i$$





<figure>
<img src = "{{root_url | prepend: site.baseurl}}/asset/AI_python/neuralNetwork/y_hat_D.png" width = "660">
<figurecpation> </figurecpation>
</figure>

Therefore

$$\frac{\partial}{\partial w_i}\sum_i w_i x_i = x_i$$

$$-(y-\hat{y})\frac{\partial \hat{y}}{\partial w_i} \\
 = -(y-\hat{y})f'(h) \frac{\partial}{\partial w_i} \sum_i w_i x_i$$

because it's negative of gradient descent

so to use $$\eta$$ as learn rate

$$\frac{\partial E}{\partial w_i} = -(y-\hat{y})f'(h)x_i$$

$$\Delta w_i = \eta(y-\hat{y})f'(h)x_i$$

Define an "error term"

$$\delta =(y-\hat{y})f'(h)$$

$$w_i = w_i + \eta \delta x_i$$



```python
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
h = np.dot(x,w)

# TODO: Calculate output of neural network
nn_output = sigmoid(h)

# TODO: Calculate error of neural network
error = y-nn_output

# TODO: Calculate the error term
#       Remember, this requires the output gradient, which we haven't
#       specifically added a variable for.
error_term = error*sigmoid_prime(h)

# TODO: Calculate change in weights
del_w = [learnrate*error_term*i for i in x]

print('Neural Network output:')
print(nn_output)
print('Amount of Error:')
print(error)
print('Change in Weights:')
print(del_w)


```

General Algorithm for updating the weights with gradient descent.
* Set the weight step to zero: $$\Delta w_i = 0$$
* For each record in the training data:
    * Make a forward pass through the network, calculating the output $$\hat{y} = f(\sum_i w_i x_i)$$
    * Calculate the error term for the output unit, $$\delta = (y - \hat{y} \times f'(\sum_i w_i x_i))$$
    * Update the weight step $$\delta w_i = \Delta w_i + \delta x_i$$

* Update the weights $$w_i = w_i + \eta \Delta w_i / m$$ where $$\eta$$ is the learning rate and m is the
number of records. Here we're averaging the weight steps to help reduce any large variations in the training data.
* Repeat for $$e$$ epochs.    

You can also update the weights on each record instead of averaging the weight steps after going through all the records.

sigmoid for the activation function, $$f(h) = 1/(1+e^{-h})$$

sigmoid' $$ = f'(h)= f(h)(1-f(h))$$ and $$h = \sum_i w_i x_i$$


**Implement with NumPy**

initialize the weights from a normal distribution centered at 0. A good value for the scale is \frac{1}{\sqrt{n}$$
where n is the number of input units. This keeps the input to the sigmoid low for increasing numbers of input units.

`weights = np.random.normal(scale - 1/n_features**.5, size = n_features)`

`output_in = np.dot(weights, inputs)`

**Code**

```python
import numpy as np
from data_prep import features, targets, features_test, targets_test


def sigmoid(x):
    """
    Calculate sigmoid
    """
    return 1 / (1 + np.exp(-x))

# TODO: We haven't provided the sigmoid_prime function like we did in
#       the previous lesson to encourage you to come up with a more
#       efficient solution. If you need a hint, check out the comments
#       in solution.py from the previous lecture.
def sigmoid_prime(x):
    return sigmoid(x)*(1-sigmoid(x))
# Use to same seed to make debugging easier
np.random.seed(42)

n_records, n_features = features.shape
last_loss = None

# Initialize weights
weights = np.random.normal(scale=1 / n_features**.5, size=n_features)

# Neural Network hyperparameters
epochs = 1000
learnrate = 0.5

for e in range(epochs):
    del_w = np.zeros(weights.shape)
    for x, y in zip(features.values, targets):
        # Loop through all records, x is the input, y is the target

        # Note: We haven't included the h variable from the previous
        #       lesson. You can add it if you want, or you can calculate
        #       the h together with the output

        # TODO: Calculate the output
        output = sigmoid(np.dot(x, weights))

        # TODO: Calculate the error
        error = (y-output)

        # TODO: Calculate the error term
        error_term = error * output * (1 - output)

        # TODO: Calculate the change in weights for this sample
        #       and add it to the total weight change
        del_w += error_term*x

    # TODO: Update weights using the learning rate and the average change in weights
    weights += learnrate*del_w/n_records

    # Printing out the mean square error on the training set
    if e % (epochs / 10) == 0:
        out = sigmoid(np.dot(features, weights))
        loss = np.mean((out - targets) ** 2)
        if last_loss and last_loss < loss:
            print("Train loss: ", loss, "  WARNING - Loss Increasing")
        else:
            print("Train loss: ", loss)
        last_loss = loss


# Calculate accuracy on test data
tes_out = sigmoid(np.dot(features_test, weights))
predictions = tes_out > 0.5
accuracy = np.mean(predictions == targets_test)
print("Prediction accuracy: {:.3f}".format(accuracy))

```

### Multilayer perceptron

```python
n_records, n_inputs = features.shape
# Number of hidden units
n_hidden = 2
weights_input_to_hidden = np.random.normal(0, n_inputs**-0.5, size=(n_inputs, n_hidden))
```


Create a column vector, if use inverse `.T`, in a 1D matrix, it will just return a row, not a column. so use `arr[:,None]` instead.

```python
print(features.T)
> array([ 0.49671415, -0.1382643 ,  0.64768854])

print(features[:, None])
> array([[ 0.49671415],
       [-0.1382643 ],
       [ 0.64768854]])

```

### Implementing Backpropagation

```python
import numpy as np
from data_prep import features, targets, features_test, targets_test

np.random.seed(21)

def sigmoid(x):
    """
    Calculate sigmoid
    """
    return 1 / (1 + np.exp(-x))


# Hyperparameters
n_hidden = 2  # number of hidden units
epochs = 900
learnrate = 0.005

n_records, n_features = features.shape
last_loss = None
# Initialize weights
weights_input_hidden = np.random.normal(scale=1 / n_features ** .5,
                                        size=(n_features, n_hidden))
weights_hidden_output = np.random.normal(scale=1 / n_features ** .5,
                                         size=n_hidden)

for e in range(epochs):
    del_w_input_hidden = np.zeros(weights_input_hidden.shape)
    del_w_hidden_output = np.zeros(weights_hidden_output.shape)
    for x, y in zip(features.values, targets):
        ## Forward pass ##
        # TODO: Calculate the output
        hidden_input = np.dot(x,weights_input_hidden)
        hidden_output = sigmoid(hidden_input)
        output = sigmoid(np.dot(hidden_output,weights_hidden_output))

        ## Backward pass ##
        # TODO: Calculate the network's prediction error
        error = y - output

        # TODO: Calculate error term for the output unit
        output_error_term = error*output*(1-output)

        ## propagate errors to hidden layer

        # TODO: Calculate the hidden layer's contribution to the error
        hidden_error = np.dot(output_error_term,weights_hidden_output)

        # TODO: Calculate the error term for the hidden layer
        hidden_error_term = hidden_error*hidden_output*(1-hidden_output)

        # TODO: Update the change in weights
        del_w_hidden_output += output_error_term*hidden_output
        del_w_input_hidden  += hidden_error_term * x[:, None]

    # TODO: Update weights  (don't forget to division by n_records or number of samples)
    weights_input_hidden += learnrate*del_w_input_hidden/n_records
    weights_hidden_output += learnrate*del_w_hidden_output/n_records

    # Printing out the mean square error on the training set
    if e % (epochs / 10) == 0:
        hidden_output = sigmoid(np.dot(x, weights_input_hidden))
        out = sigmoid(np.dot(hidden_output,
                             weights_hidden_output))
        loss = np.mean((out - targets) ** 2)

        if last_loss and last_loss < loss:
            print("Train loss: ", loss, "  WARNING - Loss Increasing")
        else:
            print("Train loss: ", loss)
        last_loss = loss

# Calculate accuracy on test data
hidden = sigmoid(np.dot(features_test, weights_input_hidden))
out = sigmoid(np.dot(hidden, weights_hidden_output))
predictions = out > 0.5
accuracy = np.mean(predictions == targets_test)
print("Prediction accuracy: {:.3f}".format(accuracy))

```
