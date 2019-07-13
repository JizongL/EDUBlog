---
type: post
title: Thinkful EI study note day 4
date: 2019-2-12 13:52
categories: Thinkful
tags: thinkful EI_program jQuery javascript
---

* content
{: toc}

[presentation](https://thinkful.slides.com/thinkful/jquery#/4)




`.find()`	to nearest descendants (down)
`.closest()`	to nearest ancestors (up)
`.siblings()`	to same level
`.parent()`, `.children()`	to all parent or children specified
`.first()`, `.last()`, `.eq()` to first/last/index of specified node


*DOM events*
|:---:|:---:|:---:|
|mouseenter	| mouseleave |click|
|dblclick | mouseup	| mousedown|
|wheel | dragstart	| dragend|
|cut |	paste | keydown|
|keyup | keypress | scroll|
|resize	|playing|	waiting|

Check out [Jquery Event](https://developer.mozilla.org/en-US/docs/Web/Events)

[Spaghetti code](https://en.wikipedia.org/wiki/Spaghetti_code)

`event.garget`
`event.currentTarget`

### Debugging tips-disable cache

* Manually force refresh with SHIFT-CMD-R (Mac) / SHIFT-F5 (Windows)

* Make sure event listener is firing
```
$('body').click(()=>{
    console.log('listener fired!');
})
```



## keywords

user stories
can be discussed by technical and non-technical stakeholders.


pseudocode

object passed by reference


`array.findIndex`

## Hosting a local Web Server


## review

```terminal
$ cd my-project
$ pwd
-> /Users/bob/code/my-project
$ http-server -p 8080

Starting up http-server, serving ./
Available on:
  http:127.0.0.1:8080
Hit CTRL-C to stop the server
```

[live auto reload server](https://www.npmjs.com/package/live-server)

### usage of attr
query the current event's attribute
`event.attr('element')`



### Jquery
`removeClass`
`toggleClass`
`.not`


`attr('aria-pressed', false)`

You can download the jQuery library for when there is no internet.

## Today's quiz result
[result](https://docs.google.com/forms/d/e/1FAIpQLSeNNUUr8DU4OF-j3NaNAaaj7Dxv53YoEGVZPfG_6H9NKBjcbw/viewscore?viewscore=AE0zAgCMiXpml9iJAx1OgJaHiVdOpSJ3cHQGYpv4sHvIGoJL1vn_sypYcY7y8Ml1vwC2jDs)

![image](https://lh5.googleusercontent.com/VBzygzcaZDEHS68-afPJU9xK3YR5N74fg8X_GtZL4kqYpYJPmseOmYiwYwgB3aLSm7kJoU-jLg=w494)

```javascript
$('.bar input');

$('#bel div:nth-child(2) + input[type=range]');
$('#bel.bar input');

$('#bel input[type=range]');

$('#bel.bar div:nth-child(4) + input[type=range]');

```

## Today's question
about the redraw grid or clear grid buttons from the etcher challenger.
[github here](https://github.com/JizongL/etcher-challenge/blob/master/etch.js)
