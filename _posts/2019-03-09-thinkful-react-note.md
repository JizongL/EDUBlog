---
layout: post
title:  Thinkful react note
date:   2019-03-09 12:05
categories: Thinkful
tags: react
---


## Key Terms

React
Render
Component
Babel
JSX
Prop
Children

`document.querySelector`


`ReactDOM.render({element}, {container})`

element: is our react application (will become contents of the container)
container: The DOM element we insert our app into.


`React.createElement`
take in 3 elements, a type, props, children

`<script type="text/babel">`
We should never use the `type="text/babel"` in our deployed code as it's very slow. It's only good for learning and simple demos.


### use function

declare it with capitalized letter

```
function App(){
    return `<span>this is a test</span>`
}

reactDOM.render(<App />, document.querySelector('#idName'))

```

add prop to element inside function
id = `id`
class = `className` (remember this)

### props are argument to function (not attribute)
```
function App(props){
    <span className ={props.className}>Testing</span>

reactDOM.render(<App className = 'class-name'/>)    
}




```


Setup NPM

install node

use bash
```
curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.8/install.sh | bash
```

if failed, use zshell
```
curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.8/install.sh | zsh
```

```
$ nvm install node
$ nvm ls
$ nvm install 10.13.2
$ nvm use 10.13.2
$ nvm use node
$ nvm alias default node

```
execute without installing
`npx`

```
$ npx cowsay 'Yo dude! Binary execution without installation is cool!'
```

### create react app

```
npx create-react-app my-first-react-app
```
exam the package.json file



```
npm test
```

if gets error

```
Error: `fsevents` unavailable (this watcher can only be used on Darwin)
    at new FSEventsWatcher (/Users/tmmgeek/Documents/thinkful/Thinkful2019/react/my-first-react-app/node_modules/sane/src/fsevents_watcher.js:41:11)
    at createWatcher (/Users/tmmgeek/Documents/thinkful/Thinkful2019/react/my-first-react-app/node_modules/jest-haste-map/build/index.js:780:23)
    at Array.map (<anonymous>)
    at HasteMap._watch (/Users/tmmgeek/Documents/thinkful/Thinkful2019/react/my-first-react-app/node_modules/jest-haste-map/build/index.js:936:44)
    at _buildPromise._buildFileMap.then.then.hasteMap (/Users/tmmgeek/Documents/thinkful/Thinkful2019/react/my-first-react-app/node_modules/jest-haste-map/build/index.js:355:23)

```

try

```
npm r -g watchman
brew install watchman
```


basic structure

```javascript
class App extends Component{
    render(){
        .....some code
        return(....some html)
    }
}

export default App;
```


### date package
`npm install moment`

experiment with using this package.

`import moment from 'moment'`

`moment()` get current time object.

`format(dddd, MMMM Do YYYY, h:mm:ss a')` format it in year, month, day and time

### remove package

`npm uninstall mathjs`

### npm script

```
"script":{
    "my_script":"echo 'message to be printed'"
}

npm run my_script
```

## clean start, react playground



The configuration
power `npm start`, wiring up of babel and webpack

The example code (boilerplate)


process of making a new react app

`npx create-react-app nameOfApp`

`npm install` install all dependencies.


## import and export


`npm install`

Read the `package.json` file.

Read the section labeled `dependencies` inside the JSON file.

Saw many dependencies, including react listed as a dependency.

Downloaded React (as well as the other dependencies) and saved it into your project within a directory named `node_modules`.

import

`import React from 'react';`
create variable named `React` from within `node_modules` of 'react'

same for

`import ReactDOM from 'react-dom'`

export to another file("default" export)

`export default App;`


CodeCademy course on react note

JSX compiler will translate any JSX into regular JavaScript



React figures out exactly which virtual DOM objects have changed.
“diffing.”


### jQuery and react

jQuery
has two problems
hard to manage
inefficient
declarativeness

### Event Listeners in JSX
onclick => onClick
onmouseover => onMouseOver

example

```javascript
import React from 'react';
import ReactDOM from 'react-dom';

function makeDoggy(e) {
  // Call this extremely useful function on an <img>.
  // The <img> will become a picture of a doggy.
  e.target.setAttribute('src', 'https://s3.amazonaws.com/codecademy-content/courses/React/react_photo-puppy.jpeg');
  e.target.setAttribute('alt', 'doggy');
}

const kitty = (
	<img onClick = {makeDoggy}
		src="https://s3.amazonaws.com/codecademy-content/courses/React/react_photo-kitty.jpg"
		alt="kitty" />
);

ReactDOM.render(kitty, document.getElementById('app'));
```

```
function coinToss(){
    return Math.random()<0.5?'heads':'tails';
}

const pics = {
    kitty: 'https://s3.amazonaws.com/codecademy-content/courses/React/react_photo-kitty.jpg',
      doggy: 'https://s3.amazonaws.com/codecademy-content/courses/React/react_photo-puppy.jpeg'
}

let img;

if(coinToss()==="heads"){
    img = <img src={pics.kitty}>
} else {
    img = <img src={pics.doggy}>
}

ReactDOM.render(img,document.getElementById('app'))
```

### ternary operator inside JSX

```JavaScript
const img = <img src={pics[coinToss()=='heads' ? 'kitty' : 'doggy']} />;
```


### && sign

```Javascript
const tasty = (
  <ul>
    <li>Applesauce</li>
    { !baby && <li>Pizza</li> }
    { age > 15 && <li>Brussels Sprouts</li> }
    { age > 20 && <li>Oysters</li> }
    { age > 25 && <li>Grappa</li> }
  </ul>
);
```

### When to use what?

the `&&` and ternary operators are more concise, choose either of these when possible
choose the `&&` over a ternary when you want an action to occur (or not) based on a single condition
choose an `if/else/else if` statement when you need to extrapolate logic to make it easier to read and understand




### It's possible to write react without JSX
React.createElement. This takes 3 arguments: a type, props, and children
it does not require compilation like JSX
```
React.createElement()
```

### Default Prop
class v.s functional component
```javascript
function Tooltip(props) {/* content not shown */}

class TooltipClass extends React.Component {}
```

render() method inside class

```javascript
class TooltipClass extends React.Component {
  render() {
    return <span />
  }
}
```

### `this` keyword

```javascript
// props are a parameter
function FunctionComponent(props) {
  return <span>{props.children}</props>
}

// props access by `this.props`
class ClassComponent extends React.Component {
  render() {
    return <span>{this.props.children}</props>
  }
}
```
### List with keys
react accepts array as list,but needs a key

```JavaScript
const someJsx = (
  <ul>
    {[
      <li />,
      <li />,
      <li />,
    ]}
  </ul>
)
```

Not all lists need to have keys. A list needs keys if either of the following are true:

The list-items have memory from one render to the next. For instance, when a to-do list renders, each item must “remember” whether it was checked off. The items shouldn’t get amnesia when they render.

A list’s order might be shuffled. For instance, a list of search results might be shuffled from one render to the next.

add index to map()

```JavaScript
const peopleLis = people.map((person,i) =>
  // expression goes here:
			<li key={'person_'+i}>{person}</li>
);
```

### Bubbles


```javascript
import makeNullsArray from './_makeNullsArray';
/* other imports not shown */

function Bubbles(props) {
  const array = makeNullsArray(props.numberOfBubbles);

  const bubbles = array.map((_, i) =>
    <Bubble key={i} num={i} />
  )

  return (
    <BubblesContainer>
      {bubbles}
    </BubblesContainer>
  )
}

export default Bubbles
// map.((_,i)=> <Bubble key={i} num={i}>)
// the underscore _ is a dummy placeholder

makeNullsArray(1); // [null]
makeNullsArray(3); // [null, null, null]
makeNullsArray(7); // [null, null, null, null, null, null, null]
```

### The Bubble App

dissect the code

```javascript
new Array(len).fill(null, 0, len);

```

### Key function
`.fill()`


## Testing

```javascript
const leapYear = require('./index');

it('should NOT be a leap year if divisible by 100, not 400', () => {
  expect(leapYear(1900)).toBe(false);
});
```


`toThrow()`

`ReactDOM.unmountComponentAtNode(div);`

### Smoke Tests


### Snapshot Testing
need to install react-test renderer  D refers to add this as a development dependency

Testing components

```javascript
import React from 'react';
import ReactDOM from 'react-dom';
import Messages from './Messages';

it('renders without crashing', () => {
  const div = document.createElement('div');
  ReactDOM.render(<Messages />, div);
  ReactDOM.unmountComponentAtNode(div);
});

```



`npm install react-test-renderer -D`





need to import renderer
```javascript
import renderer from 'react-test-renderer';

it('renders the UI as expected', () => {
const tree = renderer
  .create(<Messages name="Messages" unread={4}/>)
  .toJSON();
expect(tree).toMatchSnapshot();  
});
```
There are two reasons why the snapshot may fail:

You deliberately update the way the component renders
You unintentionally update the way the component renders


### test suites

```JavaScript
describe('My components',()=>{

    })
```


### snippets collection from this section

`{isOnstage:<div>something</div>}`


## Question
In the event listener example, why <img onClick={makeDoggy}>, but not <img onClick={makeDoggy(e)}>

why sometimes I need to run `sudo npx create-react-app name-of-project`?
