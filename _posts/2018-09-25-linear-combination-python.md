---
layout: post
title:  Linear combination and Python note
date:   2018-09-25 11:24
categories: python
tags: linear_combination Python Numpy
---

* content
{: toc}

## Linear Combination

Solve for scalars and verify if the vectors of interest is within the span.

```python
import numpy as np
t = np.array([4,11])

vw = np.array([[1,2],[3,5]])

print("\nMatrix vw:",vw,"\nVector t:",t,sep ="\n")


def check_vector_span(set_of_vectors, vector_to_check):
    # creates an empty vector of correct size
    vector_of_scalars = np.asarray([None])*set_of_vectors.shape[0])
    # solve for the scalar if the vectors are within the span
    try:
        vector_of_scalars = np.linalg.solve(set_of_vectors,vector_to_check)
        if not (vector_of_scalars is None):
            print("\nVector is within span. \nScalars in s:",vector_of_scalars)
    # Handles the cases when the vector is NOT within the span
    except Exception as exception_type:
        if str(exception_type) = 'Singular matrix':
            print("\nNo single solution\nVector is NOT within span")
        else:
            print("\nUnexpected Exception Error:",exception_type)
    return vector_of_scalars


print("\nEquation 1:\n Matrix vw:", vw, "\nVector t:", t, sep="\n")
s = check_vector_span(vw,t)
```


### matplotlib graphing

```python
import matplotlib.pyplot as plt
plt.plot([4,0],[0,2],'b',linewidth = 3)
plt.plot([3.6667,0],[0,2.2],'c-.', linewidth = 3)
plt.plot([2],[1],'ro', linewidth = 3)
plt.xlabel('Single Solution')
plt.show()
```



[format string](https://matplotlib.org/api/_as_gen/matplotlib.pyplot.plot.html)


### Linear mapping

#### Graphing a Vector $$\vec{v}$$ Decomposed into Basis Vectors $$\vec{\hat{i}}$$ and $$\vec{\hat{j}}$$

```python
%matplotlib inline
import numpy as np
import matplotlib.pyplot as plt

v = np.array([-1,2])
i_hat = np.array([1,0])
j_hat = np.array([0,1])
v_ihat = v[0]*i_hat
v_jhat = v[0]*j_hat
ax = plt.axes()

ax.plot(0,0,'or')

# Plots vector v_ihat as dotted green arrow starting at origin 0,0
ax.arrow(0, 0, *v_ihat, color='g', linestyle='dotted', linewidth=2.5, head_width=0.30,
         head_length=0.35)

# Plots vector v_jhat as dotted red arrow starting at origin defined by v_ihat
ax.arrow(v_ihat[0], v_ihat[1], *v_jhat, color='r', linestyle='dotted', linewidth=2.5,
         head_width=0.30, head_length=0.35)

# Plots vector v as blue arrow starting at origin 0,0
ax.arrow(0, 0, *v, color='b', linewidth=2.5, head_width=0.30, head_length=0.35)

plt.xlim(-4,2)
major_xticks = np.arrange(-4,2)
ax.set_xticks(major_xticks)

plt.ylim(-2,4)

major_yticks = np.arrange(-2,4)
ax.set_yticks(major_yticks)

plt.grid(b = True,which = 'major')

plt.show()
```

<figure>
<img src = "{{root_url | prepend: site.baseurl}}/asset/AI_python/math_part/transformed_1_original.png" width = "750">
<figurecpation> </figurecpation>
</figure>

### *Transforming* a Vector using *Transformed* Vectors $$\vec{\hat{i_T}}$$ and $$\vec{\hat{j_T}}$$
For this part of the lab, we will plot the results of *transforming* vector $$\vec{v}$$ using *transformed* vectors $$\vec{\hat{i_T}}$$ and $$\vec{\hat{j_T}}$$. Vectors $$\vec{v}$$, $$\vec{\hat{i_T}}$$, and $$\vec{\hat{j_T}}$$ have been defined below.


$$\hspace{1cm}\vec{v} = \begin{bmatrix} -1\\ 2\end{bmatrix}$$

$$\hspace{1cm}\vec{\mathbin{\color{green}{\hat{i_T}}}} = \begin{bmatrix}\mathbin{\color{green}3}\\ \mathbin{\color{green}1} \end{bmatrix}$$

$$\hspace{1cm}\vec{\mathbin{\color{red}{\hat{j_T}}}} = \begin{bmatrix}\mathbin{\color{red}1}\\ \mathbin{\color{red}2} \end{bmatrix}$$


```python
# Define vector v
v = np.array([-1, 2])

# TODO 1.: Define vector i_hat as transformed vector i_hat(ihat_t)

# where x=3 and y=1 instead of x=1 and y=0
ihat_t = np.array([3, 1])

# TODO 2.: Define vector j_hat as transformed vector j_hat(jhat_t)
# where x=1 and y=2 instead of x=0 and y=1
jhat_t = np.array([1, 2])

# Define v_ihat_t - as v[0](x) multiplied by transformed vector ihat
v_ihat_t = v[0] * ihat_t

# Define v_jhat_t - as v[1](y) multiplied by transformed vector jhat
v_jhat_t = v[1] * jhat_t

# TODO 3.: Define transformed vector v (v_t) as
# vector v_ihat_t added to vector v_jhat_t



v_t = v_ihat_t+v_jhat_t


# Plot that graphically shows vector v (color='skyblue') can be transformed
# into transformed vector v (v_trfm - color='b') by adding v[0]*transformed
# vector ihat to v[0]*transformed vector jhat


# Creates axes of plot referenced 'ax'
ax = plt.axes()

# Plots red dot at origin (0,0)
ax.plot(0,0,'or')


# Plots vector v_ihat_t as dotted green arrow starting at origin 0,0
ax.arrow(0, 0, *v_ihat_t, color='g', linestyle='dotted', linewidth=2.5, head_width=0.30,
         head_length=0.35)

# Plots vector v_jhat_t as dotted red arrow starting at origin defined by v_ihat
ax.arrow(v_ihat_t[0], v_ihat_t[1], *v_jhat_t, color='r', linestyle='dotted', linewidth=2.5,
         head_width=0.30, head_length=0.35)

# Plots vector v as blue arrow starting at origin 0,0
ax.arrow(0, 0, *v, color='skyblue', linewidth=2.5, head_width=0.30, head_length=0.35)

# TODO 4.: Plot transformed vector v (v_t) a blue colored vector(color='b') using
# vector v's ax.arrow() statement above as template for the plot

ax.arrow(0, 0, *v_t, color='blue', linewidth=2.5, head_width=0.30, head_length=0.35)

# Sets limit for plot for x-axis
plt.xlim(-4, 2)

# Set major ticks for x-axis
major_xticks = np.arange(-4, 2)
ax.set_xticks(major_xticks)


# Sets limit for plot for y-axis
plt.ylim(-2, 4)

# Set major ticks for y-axis
major_yticks = np.arange(-2, 4)
ax.set_yticks(major_yticks)

# Creates gridlines for only major tick marks
plt.grid(b=True, which='major')

# Displays final plot
plt.show()

```

<figure>
<img src = "{{root_url | prepend: site.baseurl}}/asset/AI_python/math_part/transformed_2_transformed.png" width = "750">
<figurecpation> </figurecpation>
</figure>


### Currency Conversion Problem

<figure>
<img src = "{{root_url | prepend: site.baseurl}}/asset/AI_python/math_part/currencyProbImage.png" width = "750">
<figurecpation> </figurecpation>
</figure>


You can think about this problem as taking a _vector of **inputs**_ (the currencies from the 8 countries) and applying a _matrix of **weights**_ (the conversion rates matrix) to these inputs to produce a _vector of **outputs**_ (total amount of currency for each country) using matrix multiplication with the NumPy package.


```python
import numpy as np
import pandas as pd

money = np.asarray([70, 100, 20, 80, 40, 70, 60, 100])
currency_label = ["USD", "EUR", "JPY", "GBP", "CHF", "CAD", "AUD", "HKD"]
money_df = pd.DataFrame(data = money, index = currency_label, columns = ['Amounts'])

print("Inputs Vector: ")
money_df.T

```


```python
# Imports conversion rates(weights) matrix as a pandas dataframe.
conversion_rates_df = pd.read_csv("{{root_url | prepend: site.baseurl}}/asset/AI_python/data/linear_mapping/currencyConversionMatrix.csv",header=0,index_col=0)

# Creates numpy matrix from a pandas dataframe to create the conversion rates(weights) matrix.
conversion_rates = conversion_rates_df.values


# Prints conversion rates matrix.
print("Weights Matrix:")
conversion_rates_df

```

The _**outputs** vector_ is computed below using matrix multiplication. The numpy package provides the [function _**matmul**_](https://docs.scipy.org/doc/numpy-1.13.0/reference/generated/numpy.matmul.html) for multiplying two matrices (or a vector and a matrix). Below you will find the equation for matrix multiplication as it applies to AI, where the _**inputs** vector_($$x_{1}...x_{n}$$) multiplied by the _**weights** matrix_($$w_{11}...w_{nm}$$) to compute the _**outputs** vector_($$y_{1}...y_{m}$$).

$$\hspace{4cm} \begin{bmatrix} x_{1}&x_{2}&...&x_{n}\end{bmatrix} \begin{bmatrix} w_{11}&w_{12}&...&w_{1m}\\ w_{21}&w_{22}&...&w_{2m}\\ ...&...&...&... \\ w_{n1}&w_{n2}&...&w_{nm}\end{bmatrix} = \begin{bmatrix} y_{1}&y_{2}&...&y_{m}\end{bmatrix}$$

The example matrix multiplication below, has $$n$$ as 4 in **inputs** and **weights** and $$m$$ as 3 in **weights** and **outputs**.

$$\hspace{4cm} \begin{bmatrix} 10 & 2 & 1 & 5\end{bmatrix} \begin{bmatrix} 1 & 20 & 7\\ 3 & 15 & 6 \\ 2 & 5 & 12 \\ 4 & 25 & 9 \end{bmatrix} = \begin{bmatrix} 38 & 360 & 139 \end{bmatrix}$$

As seen with the example above, matrix multiplication resulting matrix(_**outputs** vector_) will have same row dimension as the first matrix(_**inputs** vector_) and the same column dimension as the second matrix(_**weights** matrix_). With the currency example the number of columns in the inputs and weights matrices are the same, but this won't always be the case in AI.


```python
# TODO 1.: Calculates the money totals(outputs) vector using matrix multiplication in numpy.

money_totals = np.matmul(conversion_rates_df.T,money_df)

# or the following line would also work.
# money_totals = np.matmul(money, conversion_rates)

# Converts the resulting money totals vector into a dataframe for printing.
money_totals_df = pd.DataFrame(data = money_totals, index = currency_label, columns = ["Money Totals"])
print("Outputs Vector:")
money_totals_df.T

```

path = %pwd
jupyter notebook current path
