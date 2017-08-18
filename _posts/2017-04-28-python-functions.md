---
layout: post
title:  python string and list method collections
date:   2017-01-09 22:48:05
categories: Python 
tags: string_method string
---

* content
{: toc}



```
def mode_count(a_list):
    mode = a_list[0]
    modcount = 1
    count = 1
    for i in range(1,len(a_list)):
        if a_list[i]>a_list[i-1]:
            count = 1
        else:
            count += 1
            if count > modcount:
                mode = a_list[i]
                modcount = count
    return mode

a_list =[1,2,2,3,3,3,2,2,2,4]

print(mode_count(a_list))


```