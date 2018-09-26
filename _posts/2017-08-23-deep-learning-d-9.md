---
layout: post
title:  Deep Learning day 9 note
date:   2017-08-18 14:00:00
categories: DeepLearning
tags: note Evaluation_and_validation
---
* content
{:toc}

## Sentiment Classification Project note

```
pos_neg_ratios = Counter()

# Calculate the ratios of positive and negative uses of the most common words
# Consider words to be "common" if they've been used at least 100 times
for term,cnt in list(total_counts.most_common()):
    if(cnt > 100):
        pos_neg_ratio = positive_counts[term] / float(negative_counts[term]+1)
        pos_neg_ratios[term] = pos_neg_ratio 
```

`pos_neg_ratios[term] = pos_neg_ratio ` is just using python dictionary


```py
from collections import Counter

elements = set({'foo', 'bar', 'baz'})
for elem in elements:
    print(elem)

print("Type of elment",type(elements))
print("Length of elements",len(elements))

for count, elem in enumerate(elements):
    print(count, elem)

## empty dictionary
word2index = {}

## create a dictionary match words to keys
for i,word in enumerate(elements):
    word2index[word] = i



print(word2index)

## Just demo how a dictionary works.
dictionary = {}

dictionary["three"]=3
print(dictionary)

counter = Counter()
counter["two"]=2
print(counter)



```