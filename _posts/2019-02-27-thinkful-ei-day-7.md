---
layout: post
title: Thinkful EI study note day 7
date: 2019-02-28 13:47
categories: Thinkful
tags: EI_program jquery name_space architectual_modules
---

* content
{: toc}

## Ally

Aria Label
`aria-label`

Including Heading


Aria Live

Use Aria Live for when elements' existence changes
Default to "polite" setting; use "assertive" when needed
Use 'hidden' property for empty elements, so the screen reader will ignore it
A "results counter" can be very effective at indicating changes to a list on the page for both unimpaired and impaired users



ARPANET
*Packet switching*

`JSON.parse`
turn JSON to object

`JSON.stringify`

JSON must be double quoted

XHR
Ajax request

```javascript
const options = {
   headers: new Headers({
     "X-Api-Key": apiKey})
 };

```
### handle search error

`response.ok`
`response.statusText`

```javascript
fetch(url, options)
   .then(response => {
     if (response.ok) {
       return response.json();
     }
     throw new Error(response.statusText);
   })
   .then(responseJson => console.log(responseJson))
   .catch(err => {
     $('#js-error-message').text(`Something went wrong: ${err.message}`);
   });
   ```



converts strings to URL safe formats by escaping characters like spaces to %20. It does the same for each value
encodeURIComponent()





### Quiz of the day
[quiz review for today](https://docs.google.com/forms/d/e/1FAIpQLScAHjqxYdxG9VYkxako_4pgFobyFdzF4UX7E43BgDlRQUZkvA/viewscore?viewscore=AE0zAgAWvlphtrnnDv-NgxyZrPBzdSKpbXojwBeP-KnpWQkgGrcXTJELqkOyh-4hb_A4qlY)
