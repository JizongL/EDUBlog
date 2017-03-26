---
layout: post
title:  Recursion with Python
date:   2017-03-23 8:30:05
categories: Python
tags: recursion python
---
* content
{: toc}


Using [OS module](https://docs.python.org/3/library/os.path.html) and recursion to parse a folder, calculate disk usage and list all the child 
directory.







```
import os

def disk_usage(path):
    total = os.path.getsize(path)
    if os.path.isdir(path):
        for filename in os.listdir(path):
            childpath = os.path.join(path, filename)
            print(childpath)
            total += disk_usage(childpath)
    print('{0:<7}'.format(total), path)
    return total

path = '/test-folder'
disk_usage(path)

```
Recursively searching for child folders in the given parent folder.

```
## stage 2

## this function returns all the content along the path, including the all files inside the folders of folders.
def search_file(path):
    if os.path.isdir(path):
        for filename in os.listdir(path):
            childpath = os.path.join(path, filename)
            print(childpath)
            ## recursivly parsing the file names
            search_file(childpath)
```

Recursively searching for file name in the parent folder and all the child folers. Once file is found, print its directory. 
```
##  stage 3
## This function receive a path and a file names, and print out all the paths that has the file.
def file_search(path,search_name):
    if os.path.isdir(path):
        for filename in os.listdir(path):
            childpath = os.path.join(path, filename)
            if search_name == filename:
                print(childpath)
            file_search(childpath,search_name)
```
main function calls all the function above. 
```
## main function that call all functions.
def main():
    path = input("Enter your path: ")
    Filename = input("Enter your filename: ")
    print()
    print("Print out the paths and the file size and total storage size")
    disk_usage(path)
    print()
    print("Search all the files in the path")
    search_file(path)
    print()
    print("All the paths that contain the file: ")
    file_search(path, Filename)

main()



```


