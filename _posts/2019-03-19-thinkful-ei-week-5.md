---
layout: post
title: Thinkful EI study note week 5
date: 2019-03-19 13:47
categories: Thinkful
tags: react eventHandler lifeCycle ComponentState
---

## Key Terms

Component state

The component life-cycle

Event handlers



```javascript
import React from 'react'

class TheDate extends React.Component{
  constructor(props){
    super(props)
  }

  render(){

    return<div />
  }
}

export default TheDate
```
Always super(props) inside React class component constructor methods!

### Add state
```javascript
class TheDate extends React.Component{
  constructor(props){
    super(props)
    this.state={
      foo:'foo',
      hello:'Hello,world!',
      list:[1,2,3],
      obj:{nested:'object',yes:true}
    }
  }

  render(){
    console.log(this.state)
    return<div>{this.state.hello}</div>
  }
}

```

unlike props, we can change state.


`toLocaleString()` change date object to human readable format.

```javascript
class TheDate extends React.Component{
  constructor(props){
    super(props)
    this.state={
      datetime:new Date()
    }
  }

  render(){
    console.log(this.state)
    return<div>{this.state.datetime.toLocaleString()}</div>
  }
}

```

### testing TheDate Component

`it.skip`

```javascript
describe('TheDate Component',()=>{
  it('renders without crashing', () =>{
  const div = document.createElement('div');
  ReactDOM.render(<TheDate />,div);
  ReactDOM.unmountComponentAtNode(div);

})

it.skip('renders the UI as expected',()=>{
  expect(renderer.create(
    <TheDate />
  ).toJSON()
  ).toMatchSnashot()
})
})


```

### life cycle methods

constructor => Enter restaurant and ask for buffet
render => collect food from buffet
componentDidMount => ask for condiment, tap water, more cutlery
componentWillUnmount => Pay the bill and leave

![react life cycle](https://tf-curricula-prod.s3.amazonaws.com/curricula/da13a510-00f5-4649-9416-c29d8f2f4761/ei-react-v1/assets2/react_state_1_introduction/component-lifecycle-simplified.jpeg)

### Event Listeners: A Counter Component
onClick
onSubmit
onHover
onBlur


props and state can live together.


react bind issue

shallow comparison

Hooks is in new development

enzyme for testing button

The <></> is called a Fragment, we've used it here to avoid an unnecessary <div>.

### Callback props

TV = Parent component
Channel being displayed = state
Remote controls = callback props
Person = Child component
