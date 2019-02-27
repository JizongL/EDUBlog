---
layout: post
title: Thinkful EI Study note day 3
date: 2019-02-12 13:47
categories: Thinkful
tags: EI_program jquery interactive_web_apps
---

* content
{: toc}



[Spaghetti code](https://en.wikipedia.org/wiki/Spaghetti_code)



## keywords

user stories
can be discussed by technical and non-technical stakeholders.


pseudocode

object passed by reference


## Review
### Object destructuring
```JavaScript
function describeYacht(yacht) {
  const { floorColor, maximumLbs } = yacht;

  if (floorColor === 'yellow') {
    return `${floorColor}?! What were you thinking?!`;
  }

  return `This yacht's floor is painted ${floorColor}
  and can hold a max of ${maximumLbs} lbs.`;
}

```

### the difference between let and const in a loop with object
```javascript
let object = {
	a:1,
	b:3,
	c:4,
	d:4
}

for (const key in object){
	key='u';
	console.log(key);
}
// this throws an error

for (let key in object){
	key='u';
	console.log(key);
}// this return an array of Us.
```

look up this `Object.assign()`

### factory function

remember you can use new for throwing error.
`throw new TypeError('error message')`

### new phrases learned

dangling comma-comma at the end of an array, which is not legal.

but if use dangling comma, then git would recognize it as the new change.
