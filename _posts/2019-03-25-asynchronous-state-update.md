---
layout: post
title:  Asynchronous State Update
date:   2019-03-09 12:05
categories: react
tags: react API Promise
---


### Introduction
In react event handling, we rely on the state status to make update in our app render.
For example, if you have a search handler that fetch data from remote API server, you could include
a `searchTerm` property inside the state object, and create a handler to update the searchTerm everything
a new event is trigger, such as form submit or button click... However, the update of state is asynchronous,
therefore, just by using `this.setState({})` then fetch data would not work, it will results in having
to do the search twice until the state is finally updated could then the app is able to render the newly
fetched data. This problem could be avoided by including a callback function inside the `this.setState()` method.
Therefore, it will ensure the new action is performed on the most recently updated data from the state object.


### For example

```javascript
export default class Component extends React.Component{
    state={
        foo:false
    }

    updateFoo =()=>{
        this.setState({foo:true})
        console.log(this.state.foo) // it's still false.
    }
    render(){
        return(){
            <button onClick={this.updateFoo}>Click</button>            
        }
    }
}

```
provide `this.setState()` a callback function. Notice, it's a fat arrow function
serving as a callback. 

```JavaScript
this.setState({},()=>{/*doSomething...*/}))
```

see the following example

```javascript
export default class Component extends React.Component{
    state={
        foo:false
    }

    updateFoo =()=>{
        this.setState({foo:true})
        console.log(this.state.foo) // it's still false.
    }
    render(){
        return(){
            <button onClick={this.updateFoo}>Click</button>            
        }
    }
}

```
