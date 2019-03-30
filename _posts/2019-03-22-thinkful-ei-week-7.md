---
layout: post
title:  thinkful ei week 6
date:   2019-03-29 12:05
categories: Thinkful
tags: react Node
---


2 ways to run Node

Read-Eval-Print-Loop (REPL)

or Script



accept all of the defaults with `-y`

`npm init -y`


`npm install debug` or `npm i debug`

look at package.json
`cat ./package.json`


### run with script

get arguments from inside the script

`console.log(process.argv);`


`node file.js argv2 argv2 `



 arguments are always passed in as strings

### CTL tool

```
"scripts": {
  "play": "clake"
},

npm run play
```

One time command

`npx tetris`


### writing Node scripts


`npm install --global ndb`
install debugger globally

`ndb file.js`


### file system

require `fs` module.

use `readdir` and `readdirSync` to read directory content

when using file system
Avoid writing files based on user input
Avoid reading and executing files you don't trust
Restrict access to the file system to specific users when possible
Restrict access to only specified directories
Prefer to use a database

### other mode modules

http, https, os, events, util, path and net

`use require('ModuleName')`

The require syntax is called "Common JS".

```javascript
// works in webpack and babel projects
import React from 'react';
import debug from 'debug';
// works in Node projects
const React = require('react');
const debug = require('debug');
```


### export module
e.g export the function animateString

`module.exports={animateString:animateString}`

`const{animateString} = require('./animate-string');`
