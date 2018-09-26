---
layout: post
title:  Deep Learning day 8 note
date:   2017-08-18 14:00:00
categories: DeepLearning
tags: note Evaluation_and_validation
---
* content
{:toc}

Mean absolute error 

```py
from sklearn.metrics import mean_absolute_error
from sklearn.linear_model import LinearRegression

classifier = LinearRegression()
classifier.fit(X,y)

guesses = classifier.predict(X)
error = mean_absolute_error(y,guesses)

```








Mean squared error 

```py
from sklearn.metrics import mean_absolute_error
from sklearn.linear_model import LinearRegression

classifier = LinearRegression()
classifier.fit(X,y)

guesses = classifier.predict(X)
error = mean_squared_error(y,guesses)
```



## R2 score

$$R2=1- \frac{\text{error of linear regression model}}   {\text{simple mean square}}.$$

Bad model R2 is close to 0.
good model R2 is close to 1.

```py
from sklearn.metrics import r2_score
y_true = [1,2,4]
y_pred = [1.3,2.5,3.7]

r2_score(y_true, y_pred)
```

### K-fold cross validation
```py
from sklearn.model_selection import kFord
kf = KFold(12,3)

for train_indices, test_indices in kf:
	print train_indices, test_indices
```


```py
from sklearn.model_selection import kFord
kf = KFold(12,3, shuffle = True)

for train_indices, test_indices in kf:
	print train_indices, test_indices
```




