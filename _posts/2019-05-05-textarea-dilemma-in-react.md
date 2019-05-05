---
layout: post
title: How to bypass the textarea dilemma in React
date: 2019-05-05 10:19
categories: React
tags: react javascript fullstack frontend textarea
---

## Introduction
This post is to show case how I bypass the `<textarea>` problem with `defaultValue`. In React, `value` is [Uncontrolled Components](https://reactjs.org/docs/uncontrolled-components.html), which means subsequent update is not possible. Therefore, `defaultValue` is used instead. React document says that `<textarea>` also supports `defaultValue`, however, when it did not show the preset value as expected. As a result, something is needed to be set up to bypass this dilemma.



## Prelude
While working on my [Capstone project](https://github.com/JizongL/stressTrac-client), I came to the need of creating an update form to update the existing events. Since it's an update form, therefore previous values are necessary to be preset to be the default values of the update form fields. In my case, One of the form fields is a `<textarea>`tag, and since the `value` tag in React is an [Uncontrolled Components](https://reactjs.org/docs/uncontrolled-components.html), so I need to use the `defaultValue` tag instead. However, it worked for the other `<input>` fields in my form(see figure below), it did not work with the `<textarea>` tag for some reasons. The code is as following.(you can also try reproducing the issue through my [project](https://github.com/JizongL/stressTrac-client))

```javascript
<textarea
          name='symptoms'
          type='text'
          defaultValue={event.symptoms}
          required
          id='AddEventForm__symptoms'>

        </textarea>

```

<img src="{{root_url | prepend: site.baseurl}}/asset/full_stack_dev/react/textarea-dilemma-post/textarea-not-working.png">


## My first attempt
My first attempt was to search on Google, and from one of the stackoverflow post
[How to add default value for html textarea?](https://stackoverflow.com/questions/6007219/how-to-add-default-value-for-html-textarea) I notice that I can put the value between the `<textarea>` tags as following.

```
<textarea>
  ...put your default value here
</textarea>

```

Not as expected, this did not solve the problem, in addition it also threw an error in the console. Clearly React did not like the way I handled it, instead, it's pointing me back to the `value` and `defaultValue` tags for solution.
```
index.js:1437 Warning: Use the `defaultValue` or `value` props instead of setting children on <textarea>.
    in textarea (at EditEventForm.js:127)
    in div (at EditEventForm.js:123)
    in form (at EditEventForm.js:49)
    in EditEventForm (at EditEventPage.js:28)
    in div (at EditEventPage.js:26)
    in EditEventPage (created by Context.Consumer)
    in Route (at App.js:62)
    in Switch (at App.js:32)
    in main (at App.js:31)
    in div (at App.js:26)
    in App (at src/index.js:14)
    in EventProvider (at src/index.js:12)
    in EventListProvider (at src/index.js:11)
    in Router (created by BrowserRouter)
    in BrowserRouter (at src/index.js:10)

```

## To reason a way out.
After thinking for a while, I noticed that in order for the value to be preset, I will have to use the `value`, but the `value` tag is immutable, so perhaps I can set up a state property, which is set to have the same value of the preset value of the `value` tag. So when I key down to make any change, the update will happen from the end of that value onward. To do this I will also need an `onChange` handler function to update the state property, which in turns update the `<textarea>` form field. After messing around for a moment, it finally worked(see the figure below). The code is as follow.

state setup
```
...
export default class EditEventForm extends Component{

  state = {
    error:null,    
    symptoms:this.context.event.symptoms
  }
...
```

handler setup

```
...
handleChangeSymptoms = e => {
   this.setState({ symptoms: e.target.value })
 }
...
```

`<textarea>` form field setup

```
...
<textarea
          name='symptoms'
          type='text'
          value={this.state.symptoms}
           onChange={this.handleChangeSymptoms}            
          required
          id='AddEventForm__symptoms'>
        </textarea>
...
```
<img src="{{root_url | prepend: site.baseurl}}/asset/full_stack_dev/react/textarea-dilemma-post/textarea-working.png">

you can see the full code below

<script src="https://gist.github.com/JizongL/c8de9caa5ab7cbadf8e51173957e5416.js"></script>
