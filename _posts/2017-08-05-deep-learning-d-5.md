---
layout: post
title:  Deep Learning day 5 note
date:   2017-08-05 14:00:00
categories: DeepLearning
tags: note perceptron
---

### Perceptron

<img src = "{{ root_url | prepend: site.baseurl}}/asset/deep learning/post images/day-5/hq-perceptron.png" width = "500">

Data, like test scores and grades, is fed into a network of interconnected nodes. These individual nodes are called [perceptrons](https://en.wikipedia.org/wiki/Perceptron) or neurons, and they are the basic unit of a neural network. Each one looks at input data and decides how to categorize that data. In the example above, the input either passes a threshold for grades and test scores or doesn't, and so the two categories are: yes (passed the threshold) and no (didn't pass the threshold).



<img src = "{{ root_url | prepend: site.baseurl}}/asset/deep learning/post images/day-5/hq-new-plot-perceptron-combine-v2.png" width = "500">

These categories then combine to form a decision -- for example, if both nodes produce a "yes" output, then this student gains admission into the university.


### Weights
Weight is adjustable, and is associated with inputs of perceptrons, weight start out as random values, the neural network  adjusts the weight based on any errors in caegorization that the previous weights resulted in. This is called training the neural network. 

Higher weighted input is considered to be more important. 


### Summing the input data.

<img src = "{{ root_url | prepend: site.baseurl}}/asset/deep learning/post images/day-5/perceptron-graphics.001.jpg" width = "500">

$$\sum_{i=1}^m w_i \cdot x_i$$

It's just linear combination, a single value is produced and will be used to determined the final output. It's a binary decision at the final step. 

### Activation Function
One simple example is the [Heaviside step function](https://en.wikipedia.org/wiki/Heaviside_step_function)


<img src = "{{ root_url | prepend: site.baseurl}}/asset/deep learning/post images/day-5/heaviside-step-graph-2.png" width = "500">




Now remember that the step activation function returns 1 for any inputs greater than or equal to zero. As you can see in the image, only one point has a y-value greater than or equal to zero – the point right at the origin, (0,0):

<img src = "{{ root_url | prepend: site.baseurl}}/asset/deep learning/post images/day-5/example-before-bias.png" width = "500">

Now, we certainly want more than one possible grade/test combination to result in acceptance, so we need to adjust the results passed to our activation function so it activates – that is, returns 1 – for more inputs. Specifically, we need to find a way so all the scores we’d like to consider acceptable for admissions produce values greater than or equal to zero when linearly combined with the weights into our node.

### bias
One way to get our function to return 1 for more inputs is to add a value to the results of our linear combination, called a bias.

<img src = "{{ root_url | prepend: site.baseurl}}/asset/deep learning/post images/day-5/example-after-bias.png" width = "500">

For example, the following diagram shows the previous hypothetical function with an added bias of +3. The blue shaded area shows all the values that now activate the function. But notice that these are produced with the same inputs as the values shown shaded in grey – just adjusted higher by adding the bias term:


Then the neural network starts to learn! Initially, the weights ( $$w_i$$) and bias (b) are assigned a random value, and then they are updated using a learning algorithm like gradient descent. The weights and biases change so that the next training example is more accurately categorized, and patterns in data are "learned" by the neural network.


The following python code is a simple activation function implimentation 
The mission is to make the correct guess of `weight1`, `weight2` and `bias` to dervived the best predicted outcome that matches the `correct_outputs`

Let's understand the code

For loop iterate through two lists

`for i,j in zip(input1, input2)`

Use Pandas dataframe funciton
`pd.DataFrame(array, columns_title)`

update number within string in a loop.

`print("string {} string".format())`

### Special syntax to remember 

`is_correct_string = 'Yes' if output == correct_output else 'No'`

`int(true)` is equal to 1

Set index as "False" to remove numbers on the left of dataframe.

`print(output_frame.to_string(index=False))`


### correct output

```
Nice!  You got it all correct.

   Input 1    Input 2    Linear Combination    Activation Output   Is Correct
0        0          0                    -2                    0          Yes
1        0          1                    -1                    0          Yes
2        1          0                    -1                    0          Yes
3        1          1                     0                    1          Yes
```

### code

```py
import pandas as pd

# TODO: Set weight1, weight2, and bias
weight1 = 1
weight2 = 1
bias = -2


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




### Sigmoid function

$$sigmoid(x) = \frac{1}{1+e^{-x}}$$

```py
import numpy as np

def sigmoid(x):
    y = 1/(1+np.exp(-x))
    return y
    # TODO: Implement sigmoid function
    

inputs = np.array([0.7, -0.3])
weights = np.array([0.1, 0.8])
bias = -0.1

# TODO: Calculate the output
output = sigmoid(inputs[[0]]*weights[[0]]+inputs[[1]]*weights[[1]]+bias)

print('Output:')
print(output)



```