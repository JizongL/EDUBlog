---
layout: post
title:  thinkful ei week 6
date:   2019-03-09 12:05
categories: Thinkful
tags: react API Promise
---

## Promise and API

### An example illustrates asynchronous concept

There is no predictable outcome as the tasks are assigned asynchronous

```javascript
const doTask =function(name){
  console.log(`${name} has started.`);
  let duration = Math.floor(Math.random(5)*5000)
  setTimeout(()=>{
    console.log(`${name} has ended after ${duration} seconds.`);
  },duration);
  // this will run before the second console.log runs.
}

doTask('A')
doTask('B')
doTask('C')
doTask('D')
doTask('E')
doTask('F')
```

### Creating a Promise

```javascript
const p1 = new Promise((resolve, reject)=>{
    //asynchronous code goes here.
    })
```

a promise has 3 states

pending,
fulfilled => `resolve()` is called
rejected => `reject()` is called

Handlers
`.then` => success
`.catch` => failed

[see example](https://repl.it/@JizongL/Promise-practice)

### Chaining

```javascript
doTask('B')
  .then(result => {
    console.log(result);
    return doTask('C');
  })
  .then(result => {
    console.log(result);
    return doTask('D');
  })
  .then(result => {
    console.log(result);
  });

```

### in parallel

Promise.all()

```javascript
Promise.all([doTask('B'),doTask('C'),doTask('E')])
.then(result=>{
  console.log(result)
  doTask('D').then(
    result=>console.log(result)
  )
})

```
[see example](https://repl.it/@JizongL/Promise-practice)


### React Router

```javascript
http://localhost:3000/state-1/
http://localhost:3000/state-2/
http://localhost:3000/station-1/
http://localhost:3000/station-2/
```


`npm install react-router-dom`

### Adding routes

path
component

two props on the Route component, `path` and `component`

the exact keyword prevent from all components load on the same page.
```Javascript
<Router>
    <App>
</Router>

// inside App.js
<Route exact path='/' component={Homepage}>
<Route exact path='/about' component={AboutPage}>

```



### Adding Link component to prevent page reload.
in the NAV component, add `Link` to prevent page reload

different from `<a>` that uses `href`

```javascript
<Link to='/'>
    Home
</Link>
```

### Switch component, only allow the one that matches best to be render
```
<Swtich>
    <Route exact path='/' component={HomePage}>
    <Route exact path='/about' component={About}>
    <Route exact component={NotFoundPage}>
</Swtich>
```

Note: Make sure the <Route component={NotFoundPage} /> is at the bottom of the list or it will never let a component below it render.


### use History object to navigate backward to previous page.
`history`

`history.goBack()`

### using withRouter to pass history object into child component.

`higher order components" (HOC)`

`this.props.history.push('/')`


side note
`window.navigator.language`
for getting current language of the page .

### Creating context
```javascript
const LanguageContext = React.createContext({
  lang: window.navigator.language
})
```

### Use the context


note: it isn't supported on function components and doesn't work when you need to read multiple contexts.

 `static contextType = LanguageContext;`

note: LanguageContext is a context component exclusively here.

now we can use `this.context` to access the properties in `context`

`const copy = languageSpecificCopy[this.context.lang] || {}`

render prop is a prop that is a function (like a callback) which we return JSX from    

### Provider and Consumer

notice the '/' is in the front
and it's important to pass the value in here, as the `provider` interrupt the context set inside the component
`<LanguageContext.Provider
value={{key:value}}>>
    <someComponents>
</LanguageContext.Provider>
`

### Controlled vs Uncontrolled Components




### react event with form

That is because React tries to render the user interface to reflect the state but it does not know about the typing of the user. To solve this React introduced the defaultValue attribute.



`e.target['search-tool'].value`


### Form Validation

```javascript
formValid(){
    this.setState({
      formValid:this.state.nameValid && this.state.passwordValid && this.state.passwordMatch
    })
  }

```
Validate the password
```javascript
if(!fieldValue.match(new RegExp(/^(?=.*[0-9])(?=.*[a-zA-Z])([a-zA-Z0-9]+)$/))) {
          fieldErrors.password = 'Password must contain at least one number and one letter';
          hasError = true;
        } else {
          fieldErrors.password = '';
          hasError = false;
        }

```

### Error Boundary

`static getDerivedStateFromError()` and `componentDidCatch()` lifecycle methods.

an example of setting currency with Intl

```javascript
const money = new Intl
     .NumberFormat(this.props.locale,
         {
           style: 'currency',
           currency: this.props.currency
         })
     .format(this.props.value);
```

```javascript
static getDerivedStateFromError(error) {
  return { hasError: true };
}
```
### prelude in production mode

`npm run build`

insall serve pachage to run in local server.
`npm isntall serve -D`


add the following to package.json
```
"scripts": {
  // all the other scripts here
  "serve":"serve -s build",
  "preserve": "npm run build"
},
```
The server script simply runs the static server with the application in the build folder. The preserve script ensures that the npm run build command is run first. To build and serve you production code run:


### Scope of Error Boundaries

You may go with a fine-grained model where you wrap single components in error boundaries or you may go with a more coarse-grained model such as wrapping the entire application in a single error boundary. Usually something in between is the right level of granularity.


### Limits of Error Boundaries
in event handlers - these errors do not occur during rendering so the screen is still displayed properly, you use try/catch blocks to handle these errors.
in asynchronous code
errors thrown in the error boundary itself


### PropType validator




`PropTypes.number` and `PropTypes.isRequired`


`PropTypes.bool `- an optional boolean value (true, false),
`PropTypes.array` - an optional array,
`PropTypes.func `- an optional function,
`PropTypes.object` - an optional object,
`PropTypes.string` - an optional String


### arayOf and shape for valdiating array

```javascript
BookmarkList.PropTypes = {
  bookmarks:PropTypes.arrayOf(PropTypes.object.shape(
    {title:PropTypes.string.isRequired,
    url:PropTypes.string.isRequired,
    rating:PropTypes.number,
  description:PropTypes.string}
  ))
}
```

### oneOf validator to choose one of the provided values


```javascript
Rating.propTypes = ({
    value:PropTypes.oneOf([1,2,3,4,5]).isRequired
    })
```

### Building for production
`npm run build`
`npx serve -s build`


continuous integration.
