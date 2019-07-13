---
layout: post
title:  thinkful ei week 7
date:   2019-03-29 12:05
categories: Thinkful
tags: react Node
---


2 ways to run Node

Read-Eval-Print-Loop (REPL)

or Script



accept all of the defaults with `-y`after

`npm init -y`

install an dependency debug

`npm install debug` or `npm i debug`

look at package.json
`cat ./package.json`


### run with script

get arguments from inside the script

`console.log(process.argv);`


`node file.js argv2 argv2 `



 arguments are always passed in as strings

### CTL tool
if you install the module clake by running `npm install clake`
then you run `clake`, it won't work. you can fix it by adding `play`in the script.

```
"scripts": {
  "play": "clake"
},


```

now you can run `npm run play`

One time command

Npx one time command, scaffolding is one-off command

`npx tetris`

NPX is preferred to global installs for similar reasons to preferring local installs. We really try to avoid global installs!

### writing Node scripts


`npm install --global ndb`
install Node debugger globally, so it can be used everywhere.


`ndb file.js`

<img src="https://tf-curricula-prod.s3.amazonaws.com/curricula/411cfa50-b83f-4106-a9b2-db7866b8cde5/ei-node-postgres-v1/assets2/node_intro_to_node/screenshot-ndb-window.png"/>

add breakpoint
<img src="https://tf-curricula-prod.s3.amazonaws.com/curricula/411cfa50-b83f-4106-a9b2-db7866b8cde5/ei-node-postgres-v1/assets2/node_intro_to_node/screenshot-add-breakpoint.png">


Esc button for toggling open concole.

"Resume script execution".

load the debug module `const debug = require('debug');`

example script

```javascript
const debug = require('debug');

const foo = 'foo-value';

console.log(foo)
```



### file system

require `fs` module.

use `readdir` and `readdirSync` to read directory content. [see doc](https://nodejs.org/api/fs.html#fs_fs_readdirsync_path_options)


```JavaScript
const fs = require('fs');

const contents = fs.readdirSync('./animals');

console.log(contents);
```

Security concern

Avoid writing files based on user input
Avoid reading and executing files you don't trust
Restrict access to the file system to specific users when possible
Restrict access to only specified directories
Prefer to use a database

### required custom module
http, https, os, events, util, path and net

**study each module later**

note: `require` is called common syntax



```javascript
// works in webpack and babel projects
import React from 'react';
import debug from 'debug';
// works in Node projects
const React = require('react');
const debug = require('debug');
```

`const chalk = require('chalk-animation')`

example code for making rainbow animation on script text, put it inside a new file called
index.js

```javascript
const contents = fs.readdirSync('./animals');

  const animation = chalk.rainbow(
    contents.join('\n')
  );

debugger
```

```
ndb index.js

```
<img src="https://tf-curricula-prod.s3.amazonaws.com/curricula/411cfa50-b83f-4106-a9b2-db7866b8cde5/ei-node-postgres-v1/assets2/node_intro_to_node/screenshot-animation-methods.png">

look at "local scope", with the debugger stops here.

remove debugger and add `animation.start();`

and set a timeout to limit the animation run time.

`setTimeout(()=>animation.stop(),2000)`

it plays 2 second.

make a file called `animationString.js`


```JavaScript

 function animateString(string) {
   const animation = chalk.rainbow(string)

   animation.start()

   setTimeout(() => animation.stop(), 2000)
 }

+ module.exports = { animateString: animateString };
```

use module.exports to export the module animateString.

import it to `index.js`

```
const {animationString} = require('./animationString.js')
const contents = fs.readdirSync('./files')
animateString(contents.join('\n'))
```
the files can be a folder with images.

notice the relative require here with './'


### Controlling the script with arguments

`ndb index.js pulse` pulse is argument
`process.argv` find out about arguments


```javascript
const fs = require('fs');
const path = require('path');

const source = process.argv[2];
const target = process.argv[3];

// read contents of source
const contentsOfSource = fs.readFileSync(source, 'utf-8');

// get lines of source into an array, remove empty lines
const linesInSource = contentsOfSource.split('\n').filter(Boolean);

// make the target dir if it doesn't exist
if (!fs.existsSync(target)) {
  fs.mkdirSync(target);
}

// iterare over the lines
linesInSource.forEach(line => {
  // get the content of the lines, first word is a filename, rest is content
  const [ filename, ...contentArr ] = line.split(' ')
  // construct the full path for the file to create
  const newFilePath = path.join(__dirname, target, filename)

  // write the file and it's contents
  fs.writeFileSync(
    newFilePath,
    contentArr,
    { flag: 'w+', encoding: 'utf-8' }
  )
})

```



### Web servers - a brief review
<img src="https://tf-curricula-prod.s3.amazonaws.com/curricula/411cfa50-b83f-4106-a9b2-db7866b8cde5/ei-node-postgres-v1/assets2/node_intro_to_express/node_intro_express_01.png


<img src="https://tf-curricula-prod.s3.amazonaws.com/curricula/411cfa50-b83f-4106-a9b2-db7866b8cde5/ei-node-postgres-v1/assets2/node_intro_to_express/node_intro_express_02.png


[URIs pieces and parts](https://www.lucidchart.com/documents/view/feb9309d-644a-4895-b9d8-08bc083f6779/0)

Typical Request message
```
GET /dashboard HTTP/1.1
User-Agent: Mozilla/4.0 (compatible; MSIE5.01; Windows NT)
Host: thinkful.com
Accept-Language: en-us
Accept-Encoding: gzip, deflate
Connection: Keep-Alive

```
[IETF doc](https://tools.ietf.org/html/rfc7231

### Express
it's made of 4 objects.
express()    
application
Request
Response
Router


```JavaScript
app.get('/', (req, res) => {
  res.send('Hello Express!');
});

```
Port numbers range from 0 to 65535. Ports 0 to 1023 are Well-Known Ports and have specific services associated with them. Some examples are:

|Port|     Protocol|	Description|
|:---|:---|:---|
|21	 |    FTP	   |     File Transfer protocol|
|22	 |    SSH	   |   secure logins to remote servers|
|23	 |    Telnet	|  For remote management of servers|
|80	 |    HTTP	  |  For web content|
|110	|    POP3	  | Retrieve emails from a server|
|443	|    HTTPS	 | Encrypted transmission of web content|


`app.get`,`app.listen`
```javascript
const express = require('express');
const app = express();

app.get('/', (req, res) => {
  res.send('Hello Express!');
});

app.get('/burgers',(req,res)=>{
  res.send('We have juicy cheese burgers')

})


app.get('/pizza/pineapple',(req,res)=>{
  res.send('"Your pizza is on the way!"')
})
app.listen(8000, () => {
  console.log('Express server is listening on port 8000!');
});

```

### Morgan Logging


[Morgan](https://www.npmjs.com/package/morgan)


### Automatic restart
[Nodemon](https://www.npmjs.com/package/nodemon)

`npm install nodemon -D`

then update the package.json file.
```
"scripts": {
    "start": "node app",
    "dev": "nodemon app"
},

```

now, `run npm run dev`, notice the server is now updating automatically.







```javascript
const http = require('http')
const server = http.createServer((req,res)=>{
    res.writeHead(200,{'Content-Type':'text/plain'})
    res.write('Hello World!')
    res.end();
    })

server.listen(8000,()=>{
    console.log('Server is listening on port:8080')
})    
```

static update
`app.use(express.static('public'))`


### Integration testing

### Mocha

`npm install mocha -D`

`npm install chai -D`
`expect(a).to.equal(b)`
`expect(arr1).to.deep.equal(arr2)`

```javascript
expect(actualAnswer).to.equal(expectedAnswer); //using expect
actualAnswer.should.equal(expectedAnswer); //using should
assert.equal(actualAnswer, expectedAnswer);
```

`.equal`


`.deep`


`.a`

`expect(ans).to.be.a('number').that.equal(6);`


```
function sum(arr){
    return new Promise((resolve,reject){
        const ans = arr.reduce((acc,curr)=>{
            const num = parseFloat(curr);
            return acc + (Number.isNaN(num)?0:num);
            },0)
        resolve(ans)    
        })
}

```

with the test

```
it('should sum an array of numbers and non-numeric string',()=>{
    return sum([1,'2',3,'a']).then(ans =>{
        expect(ans).to.be.a('number').that.equal(6)
        })
    })
```

### Authentication basic

In terminal
```
export API_TOKEN = 'api-key-here'
echo $API_TOKEN
```


```
console.log(process.env.API_TOKEN)
```

Store the key in local `.env`

```
touch .env
echo ".env" >> .gitignore
```

### Middleware pipelines
```javascript
app.get('/any-path', middleware1, middleware2, middleware3, ...)
```






`stringNumber = int + " "`
this forced an `int` into a `string`

`{type } = req.body // req.body.type`

3 days to pass info into server
passed in as query
passed in as body
passed in as additional property as route param


## POST and DELETE requests

application/x-www-form-urlencoded: key:value pairs separated by &
multipart/form-data: form binary data
text/plain
