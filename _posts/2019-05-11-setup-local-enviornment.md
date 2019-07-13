---
layout: post
title: Setup my brand new computer for development
date: 2019-05-11 10:19
categories: Environment
tags: local_environment set up
---


## Intro

This document record all the setups I need to do to make my new Mac ready for development. 

### Terminal

first time git clone, it requires xcode (shows the following prompt)

```
xcode-select: note: no developer tools were found at '/Applications/Xcode.app', requesting install. Choose an option in the dialog to download the command line developer tools.
```
```
xcode-select --install
```

accept and install 

### install visual studio code 

and set up alias 

Open the Command Palette (⇧ ⌘ P) and type `shell command`

![image](https://tf-curricula-prod.s3.amazonaws.com/curricula/52a03721-5c70-435c-af14-323e10125ddb/ei-js-v1/assets2/ei_fund_dev_mac/vscode-shell-command.gif)



### install homebrew 

```
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
```

run `brew doctor` to make sure proper brew install 

### Install node 

```
brew install node && npm --version
```

test run a js file by , e.g.

```
node hello.js

```



### Install git 
`brew install git bash-completion`


```
git config --global user.name [name]
git config --global user.email [email]
```

## Setup .bash_profile for git environment 

go into home directory 
```
cd ~/
```

then (if your computer is brand new, you might need to make the `.bash_profile` yourself)
```
touch .bash_profile &&
open -e .bash_profile
```
paste the following into it 
```
# Enable tab completion
source ~/git-completion.bash

# colors!
green="\[\033[0;32m\]"
blue="\[\033[0;34m\]"
purple="\[\033[0;35m\]"
reset="\[\033[0m\]"

# Change command prompt
source ~/git-prompt.sh
export GIT_PS1_SHOWDIRTYSTATE=1
# '\u' adds the name of the current user to the prompt
# '\$(__git_ps1)' adds git-related stuff
# '\W' adds the name of the current directory
export PS1="$purple\u$green\$(__git_ps1)$blue \W $ $reset"
```

### install Express generator 
[Express generator](https://www.npmjs.com/package/express-generator)

```
npm install -g express-generator
```

test create a new express app
```
express hello_express
```
![image](https://tf-curricula-prod.s3.amazonaws.com/curricula/52a03721-5c70-435c-af14-323e10125ddb/ei-js-v1/assets2/ei_fund_dev_mac/hello-express-1.gif)

```
npm i && npm start
```


### Install ESLint
install globally, so all projects can have access to 
```
npm install -g eslint
```

note: you can also install it locally by running .
```
npm install eslint --save-dev
```
go into home directory, then make a new file called `.eslintrc.json`
```
cd ~/
touch .eslintrc.json
```

copy and paste the following into the file 

```
{
    /** 
    * ESLint: http://eslint.org/docs/user-guide/configuring
    */

    // "env:" supplies predefined global variables
    "env": {
        "browser": true,
        "es6": true,
        "node": true,
        "mocha": true,
        "mongo": true,
        "jquery":true
    },
    // our configuration extends the recommended base configuration
    "extends": "eslint:recommended",
    // define the type of file `script` or `module` for ES6 Modules
    "parserOptions": {
        "sourceType": "script"
    },
    //ESLint rules: Severity Levels: off = 0 | warn = 1 | error = 2
    "rules": {
        "strict": ["error", "safe"],   //prefer `'use-strict';` pragma
        "eqeqeq":"error",              //prefer strict equality `===`
        "no-console": "warn",          //allows but warn about console like `console.log()`
        "no-unused-vars": "warn",      //warns about unused variables
        "no-eval": "error",            //disallows `eval()` usage
        "indent": ["error", 2],        //enforce 2 space indents (not tabs)        
        "quotes": ["error", "single"], //prefer single quotes over double quotes
        "semi": ["error", "always"]    //enforce semi-colon usage
    }
}

```

test run 
```
eslint filename.js
```

```
`eslint --fix filename.js`
```

### setup VSCode 
open Search Extensions in Marketplace

`Shift + Command + X`

then find `ESLint` by Dirk Baeumer to install it. 

### install waketime 
[waketime](https://wakatime.com/)
keep track of your coding activity stat with time. 

`Ctrl+Shift+P`

To get WakaTime, first you should visit their website, and hit the "Get Started" button to sign up for their free plan. When you've signed up, you will be asked which editor you use. Select VSCode, and you'll see instructions for installing the WakaTime extension:

Hit Ctrl+Shift+P to open the Command Palette, and type "Install", selecting the "Extensions: Install Extensions" option.
Search for the WakaTime extension and hit "Install"
Hit the "Reload" button to restart VSCode
You should be prompted to enter your API key - visit your settings page,and copy in your API key


## NPM related 
Webpack - Configuring

```
npm install --save-dev webpack webpack-cli webpack-dev-server html-webpack-plugin style-loader css-loader file-loader
```

```
mkdir src && cd src
touch index.html
touch index.js
```

```html
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta http-equiv="X-UA-Compatible" content="ie=edge">
  <title>First Webpack Project</title>
</head>
<body>
  <div id="root"></div>
</body>
</html>
```


```js
import $ from 'jquery';

function main() {
  console.log('DOM is loaded');

  const startMsg = $('<p>Webpack is working!</p>');
  $('#root').append(startMsg);
}

$(main);
```



```js
const HtmlWebpackPlugin = require('html-webpack-plugin');

module.exports = {
  entry: './src/index.js',
  output: {
    path: __dirname + '/dist',
    filename: 'index_bundle.js'
  },
  mode: 'production',
  plugins: [
    new HtmlWebpackPlugin({
      template: './src/assets/index.html',
    })
  ],
  module: {
    rules: [
      {
        test: /\.css$/,
        use: [
          'style-loader',
          'css-loader'
        ]
      },
      {
        test: /\.(png|svg|jpg|gif)$/,
        use: [
          'file-loader'
        ]
      }
    ]
  }
};
```

`npx webpack --mode production`

`npm install -g http-server`

