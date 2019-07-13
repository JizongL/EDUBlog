---
layout: post
title: CocoaPod 
date: 2017-04-21 00:07:20
categories: IOS
tags: CocoaPod AFNetworking
---
* content
{: toc}



[An Introduction to CocoaPod](https://www.youtube.com/watch?annotation_id=annotation_3829863845&feature=iv&src_vid=iMkifTEaefE&v=iEAjvNRdZa0)

[Firebase](https://firebase.google.com/docs/ios/setup)

[AFNetworking Github](https://github.com/AFNetworking/AFNetworking)

## Install CocoaPod

Encounter error
```
sudo gem update --system

ERROR:  While executing gem ... (Errno::EPERM)
    Operation not permitted - /usr/bin/update_rubygems

```

Solution to the Error

```
$ mkdir -p $HOME/Software/ruby
$ export GEM_HOME=$HOME/Software/ruby
$ gem install cocoapods
[...]
1 gem installed
$ export PATH=$PATH:$HOME/Software/ruby/bin
$ pod --version
0.37.2
```
You can check solution refernence [here](https://github.com/CocoaPods/CocoaPods/issues/3692)

Next step is to download every single Podspec file from CocoaPod repository and 
it will automatically update itself in the future. 

```
pod steup

```

Then follow the AFNetworking guide [here](https://github.com/AFNetworking/AFNetworking/wiki/Getting-Started-with-AFNetworking)




