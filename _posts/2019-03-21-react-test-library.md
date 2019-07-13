---
layout: post
title: react testing library note 
date: 2019-03-19 13:47
categories: Thinkful
tags: react eventHandler lifeCycle ComponentState
---

Enzyme

`npm install enzyme enzyme-adapter-react-16 --save-dev`
convert to Json
`npm install enzyme-to-json --save-dev`

example
```javascript
import {configure} from 'enzyme';
import Adapter from 'enzyme-adapter-react-16';
import {shallow} from 'enzyme'
import Tab from './state-drills/Tab';
import toJson from 'enzyme-to-json'
import React from 'react'
import ReactDOM from 'react-dom'

configure({adapter:new Adapter()})

```
