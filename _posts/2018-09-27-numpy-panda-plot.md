---
layout: post
title:  Pandas Numpy Matplotlib
date:   2018-09-28 22:30
categories: python
tags: plot data Python Numpy
---



**make dummy variables**
useful when making one hot encoding

`pd.get_dummies`

```python
one_hot_data = pd.concat([data, pd.get_dummies(data['rank'], prefix='rank')], axis=1)
```


**dropping a column**

```python
one_hot_data = one_hot_data.drop('rank', axis=1)
```


**Building training and testing set from data**
`np.random.choice(data.index, size, replace = "T" or "F")`
`data.iloc[sample]` sample needs to be defined, see following


```python
# Only take 10% for testing set
sample = np.random.choice(data.index, size = int(len(data)*0.9), replace = False)
train_data, test_data = data.iloc[sample], data.drop(sample)
print("Number of training samples is", len(train_data))
print("Number of testing samples is", len(test_data))
print(train_data[:10])
print(test_data[:10])
```
