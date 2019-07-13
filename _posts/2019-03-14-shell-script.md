---
layout: post
title:  Command Line and Shell script
date:   2018-03-14 11:28
categories: websites
tags: developers websites
---
* content
{: toc}

`task.sh`

make file executable
`chmod +x FILENAME`

[tutorial](http://www.tldp.org/HOWTO/Bash-Prompt-HOWTO/index.html)
[linux shell](https://linuxconfig.org/bash-scripting-tutorial-for-beginners)
[window shell](http://steve-jansen.github.io/guides/windows-batch-scripting/)

excute `./`






[cron time-based job scheduler](https://linuxconfig.org/linux-crontab-reference-guide)


### Node related

make folder and cd into it
```
mkdir nytServer && cd $_
npm init -y
```

set up projects
```
it clone git@github.com:[USERNAME]/demo.git name-of-project
&& cd $_
rm -rf .git && git init
npm install
mv example.env .env
git add -A && git commit -m 'first commit'

rm -rf ./src/*
rm ./test/app.sec.js
```

make a new file
```
echo "console.log('hello,practice')" >> ./src/practice.js
node ./src/practice.js
```

### PostgreSQL related

knex
`npm i knex`
install driver for postgres which is a module called pg.
`npm i pg`

set up db connection in environment, so it's hidden
knex-practice is just a dummy file name.
`DB_URL="postgresql://dunder-mifflin@localhost/knex-practice"`


### Killing a process

`kill $(lsof -t -i :YOUR_PORT_NUMBER)`
