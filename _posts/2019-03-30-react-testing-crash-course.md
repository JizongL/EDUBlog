---
layout: post
title: A crash course on Testing React Apps
date: 2019-03-30 13:47
categories: React
tags: review react testing enzyme smoketest snapshot_test
---

* content
{: toc}

Today I am going to talk about unit testing in React. An unit is any piece of code with a single
purpose, for example, a class or a function. In React, a unit is usually considered a component. there are few modules we can use such as Jest, react-test-renderer, and Enzyme. And standard React unit testing includes Smoke test, Snapshot test and event handler test with Enzyme. We will go over them one by one. Please know that this is only aimed to be a simple introduction to get you started, as unit testing is a very comprehensive topic that is outside the scope of this post.
You can also clone the repository from [here](https://github.com/JizongL/unitTestingDemo/tree/master/unit-testing) to work along side with the code.

### Jest

[Jest](https://jestjs.io/) is a delightful JavaScript testing platform with a focus on simplicity, and let's do a simple function unit test with it.







In this test we usean `IsOdd()` function and test if it is a valid function that pass the test. We also create a test file and use the the method `expect().toBe()` to decide if the outcome from the function matches the expected result.

```javascript

export default function IsOdd(num){
  if(num%2===0){
    return false
  }else{
    return true
  }
}

```
create a `App.test.js` file and paste the following inside.

```JavaScript
import IsOdd from './FirstTest'

it('5 is odd, because it is not divisible by 2',()=>
{
  const num = 5;
  const expected = true;
  expect(IsOdd(num)).toBe(expected)
})

```

notice: the syntax `it('message',()=>{/* testing */})`

 After the warm up above, we are ready to jump into React unit testing. There are several methods we will go through here. They are *Smoke Test*, *Snapshot* and *Enzyme*

### Smoke Test
SMOKE TESTING, also known as “Build Verification Testing”, is a type of software testing that comprises of a non-exhaustive set of tests that aim at ensuring that the most important functions work. The result of this testing is used to decide if a build is stable enough to proceed with further testing.

We can use React default component `App.js` to perform this test.

```javascript
import React, { Component } from 'react';
import './App.css';

class App extends Component {
  render() {
    return (
      <div className="App">
        Testing
      </div>
    );
  }
}
export default App;
```


We use `document.createElement` to create a `div`, then use `ReactDOM.render()` to render the component `<App/>` and then clear the content with `ReactDOM.unmountComponentAtNode`



```javascript
import React from 'react';
import ReactDOM from 'react-dom';
import App from './App';

it('renders without crashing', () => {
  const div = document.createElement('div');
  ReactDOM.render(<App />, div);
  ReactDOM.unmountComponentAtNode(div);
});
```

Then we run `npm test`

<img src="https://tf-curricula-prod.s3.amazonaws.com/curricula/da13a510-00f5-4649-9416-c29d8f2f4761/ei-react-v1/assets2/react_testing_components/react_testing_03.png"/>

Now if we add another pair of `div` in `App.js` the test will fail, because the return content is not wrapped within a single `div`


```javascript
import React, { Component } from 'react';
import './App.css';

class App extends Component {
  render() {
    return (
      <div className="App">
        Testing
      </div>
      <div>
      </div>
    );
  }
}
export default App;
```

<img src="https://tf-curricula-prod.s3.amazonaws.com/curricula/da13a510-00f5-4649-9416-c29d8f2f4761/ei-react-v1/assets2/react_testing_components/react_testing_04.png">

To wrap up smoke test, just remember that each component in your react app should have at least the smoke test.

### Snapshot test

There is another simple test we can use for unit testing in React is called snapshot test. The name implies that it will take a snapshot of the unit and compared it with older saved version of the component.


First we need to install the `react-test-renderer` package with development dependency. (`-D`)

run `npm install react-test-renderer -D`

Then inside your `App.test.js` add the following

```javascript
import renderer from 'react-test-renderer'

it('renders the UI as expected',()=> {
  const tree = renderer
  .create(<App message = 'testing'/>).toJSON();
  expect(tree).toMatchSnapshot();
});
```

here we declare a `tree` variable for `renderer` then use `.create()` to create the component
for snapshot. We change the content to Json format and expect the outcome match those from the snapshot.

Without changing anything in `App.js` from the previous test, let's run `npm test` again

<img src="{{root_url | prepend: site.baseurl}}/asset/full_stack_dev/react/unit-testing/snapshot-1.png">

Notice, a Snappshot Summary is present and it indicates 1 snapshot written.

Also, your project now has an additional new folder named `__snapshots__`. In inside you find a file called

`App.test.js.snap`. This is the snapshot of the component being tested.

Now let's make some change on 'App.js'

```javascript
import React, { Component } from 'react';
import './App.css';

class App extends Component {
  render() {
    return (
      <div className="App">
        Testing
      </div>
      <div>
      testing // added
      </div>
    );
  }
}
export default App;
```

we added the string "testing" inside the second div and now we run `npm test` again.

<img src="{{root_url | prepend: site.baseurl}}/asset/full_stack_dev/react/unit-testing/snapshot-2.png">

Now we see that the test failed, because the new snapshot this time doesn't match the old one as we made a change.

We can push the key `u` to update the test and now the current snapshot is written as the current one and the test

passed.

<img src="{{root_url | prepend: site.baseurl}}/asset/full_stack_dev/react/unit-testing/snapshot-3.png">

You can commit the `__snapshots__` folder to your project's github, so your team members can see the changes during the

development journey.

### Enzyme

Enzyme is a testing library for testing event handler in react, for example, a button can not be clicked
during the test, therefore this is why we need Enzyme, and you can read more about it from its [documentation](https://airbnb.io/enzyme/).


Now Let's create a new component `event.js` as the following, and place it inside a new folder named `event`,this creates a button event in the `<Event>` component.
the onClick function will be passed down from `App.js`

```javascript
import React from 'react';

export default function Event(props) {   
    return <button onClick={() => props.onClick()}>Click me!</button>;
}

```

Inside `App.js`, add the following.

```javascript
<div>
    <Event onClick={() => console.log('click') } />
</div>
```


Then install the Enzyme package and remember to specifies its version to be 16.

`npm install enzyme enzyme-adapter-react-16 --save-dev`

Then create a file `src/setupTests.js` to configures the adapter for Enzyme.


```javascript
import {configure} from 'enzyme'
import Adapter from 'enzyme-adapter-react-16'
configure({adapter: new Adapter()})
```
Now run `npm test`

Create a test file `event.test.js` with the following and place it inside the `event` folder.  

```javascript
import React from 'react';
import {shallow} from 'enzyme';

import Event from './button';

describe('<Event />', () => {
    it('Should call props.onClick when the button is clicked', () => {
        const wrapper = shallow(<Event onClick={()=>console.log('Click')}/>);
        wrapper.find('button').simulate('click');
    });
});

```

This above code uses a a function called `shallow` from Enzyme, it creates a wrapper instance of the tested component so that we can interact with it. It's somewhat similar to the syntax of 'react-test-renderer' if you notice. When the wrapper is setup, we use the method `.find` to locate the button, and `.stimulate` to trigger the click of the button.
In the case when we have more than 1 button, we will need the `.at()` method to specifies which button is being tested. I will not elaborate here and it maybe material for another post.

<img src="{{root_url | prepend: site.baseurl}}/asset/full_stack_dev/react/unit-testing/enzyme-test-1.png">








With the configuration in place, we can use Enzyme inside our `Tabs.test.js` file.

We can use `shallow` the same way as the `react-test-renderer`
```javascript
import { shallow } from 'enzyme'

/* now showing all the content of the file */

it('renders empty given no tabs', () => {
  const wrapper = shallow(<Tabs />)
})

```
To use the wrapper with Jest's snapshot functionality, we need the
`enzyme-to-json` Library


`npm install enzyme-to-json --save-dev`

```javascript
import {shallow} from 'enzyme'
import toJson from 'enzyme-to-json'
it('renders empty given no tabs',()=>{
    const wrapper = shallow(<Tabs />)
    toJson(wrapper)
})
```

### Test Suites
Test suites is a method to group all the tests into one single test object and it will organized the test results into different suit. Its basic syntax is as the following.

```javascript
describe('My component',()=>{
    // all the test case here.
    })
```

In our case, we can wrap our smoke test and snapshot test into one single test unit.

```javascript
describe('my app unit test',()=>{
  it('renders without crashing', () => {
    const div = document.createElement('div');
    ReactDOM.render(<App />, div);
    ReactDOM.unmountComponentAtNode(div);
  });

  it('renders the UI as expected',()=> {
    const tree = renderer
    .create(<App message = 'testing'/>).toJSON();
    expect(tree).toMatchSnapshot();
  });
})

```

This should produce the same test results if everything went well. Thank you for reading my post and I hope you got something out of it. 
