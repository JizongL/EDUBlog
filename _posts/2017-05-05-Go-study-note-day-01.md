---
layout: post
title:  Go Programming day 1
date:   2017-05-05 11:20:00
categories: Programming
tags: Go Installation 
---
* content
{: toc}

by by Ankita Thakur 




system MAC OS

## Installation 

[A Tour of Go](https://www.youtube.com/watch?v=ytEkHepK08c) on Youtube
[download link](https://golang.org/doc/install)
[learning recourse](https://tour.golang.org/welcome/1)

After installation, open terminal to check installed location

```
cd /usr/local
```

### create GOPATH

set GOPATH enviroment (with sublime text editor)

```
subl .zshrc

## paste the following 

export GOPATH=$HOME/Go

```

Check if it is setup up correctly(use echo')

```
source .zshrc
echo $GOPATH

## output should be
/Users/liangjizong22/Go

```

### install Go-sublime to work with sublime text.

visit github for [Go-sublime](https://github.com/DisposaBoy/GoSublime)
and following instructions

Run the command `git clone https://github.com/DisposaBoy/GoSublime` from within the Sublime Text Packages directory. The location of your Sublime Text Packages directory can be found by clicking the menu: `Preferences > Browse Packages....`


This only support sublime text 3 also make sure sublime text [package control](https://packagecontrol.io/installation) is installed


Follow [Bikash Thapa](https://www.youtube.com/watch?v=UbG40MkUDPE) youtube tutorial to learn how to install the sublime text plugin. 

the short cut key for package control interface is \shiftkey + \cmdkey + p



### First program

A "hello,world!" trial out

```
package main 

import "fmt"

func main(){
	fmt.Println("Hello, world!")

}
```

```
cd Go
go get github.com/golang/example/hello
```
will see new files `bin` `pkg` `src` generated in the directory






```
go run hello.go

```

