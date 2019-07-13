---
layout: post
title:  RESTful API
date:   2019-02-29 17:43
categories: Thinkful
tags: jquery javascript restful_api
---

## Key terms
Internet
Web
Hypertext
Client
Server
Request
Response
API
AJAX
ARPANET (Advanced Research Projects Agency Network)
HTML (Hypertext Markup Language)
URIs (Uniform Resource Identifiers) - also known as URLs (Uniform Resource Locators)
HTTP (Hypertext Transfer Protocol)
APIs, or application programming interfaces
AJAX, which stands for "asynchronous JavaScript and XML
TCP/IP: Transmission Control Protocol and Internet Protocol
API
Request header
Response header
HTTP status codes
HTTP methods
Browsers are the archetypal client
JSON (JavaScript Object Notation
Parameter
Query string
Endpoint
CORS (cross-origin resource sharing)





There are command line clients like curl, special purpose clients like Postman
Internet Service Provider, or ISP
The ISP takes the name and looks it up in a Domain Name System (DNS)

The ISP sends that IP address back to the browser

![see this diagram](https://tf-curricula-prod.s3.amazonaws.com/curricula/3c281ad7-5b2b-4ca0-9c9a-2eb707683595/ei-async-web-apps-v1/assets2/async_how_web_apps_work/ip_address.png)

`https://www.youtube.com/results?search_query=how+the+Internet+works`


### request-response cycle


![the request response cycle](https://tf-curricula-prod.s3.amazonaws.com/curricula/3c281ad7-5b2b-4ca0-9c9a-2eb707683595/ei-async-web-apps-v1/assets2/async_how_web_apps_work/ip_address.png)


![requestResponseCycle](https://tf-curricula-prod.s3.amazonaws.com/curricula/3c281ad7-5b2b-4ca0-9c9a-2eb707683595/ei-async-web-apps-v1/assets2/async_how_web_apps_work/url.png)



### The cycle steps

* The browser parses the URL

* The browser sends the domain name to the ISP

* The ISP looks up the IP address in the DNS

* The ISP sends the IP address back to the browser

* The browser opens a connection to the server located at the IP address

* The browser sends a request to the server

* The server sends a response

* Repeat steps 6 and 7 until the browser has all of the resources it needs



## APIs & AJAX

AJAX - asynchronous JavaScript and XML

In the old time, twitter would have to load the entire page.

* infinite scroll behavior solve the issue.




Web apps have two parts – a client that requests and displays resources and a server that exposes those resources.

|:---:|:---:|
| |Client|	Server|
| Displays files and data|	Stores files and data|
| Visible to the user	|Invisible to the user|
| Referred to as the “frontend”	|Referred to as the “backend”|
| Sends requests |	Receives requests|
| Receives responses |	Sends responses|
| Can work with many servers	|Can work with many clients|



### Component files
Code files
Assets

HTTP messages are broken up into 4 parts:

start-line: a high-level description of the message
HTTP headers: details describing the message
empty line: space to separate the meta-data from the body of the message
body: the data included in the message


|Method|	Operation|	Definition|	Examples|
|:---:|:---:|:---:|:---:|
|POST	|Create	|submits an entity to the specified resource|	Adding a comment; submitting a Tweet|
|GET	|Read	|requests a representation of the specified resource|	Getting search results; getting the HTML file for a page|
|PUT	|Update	|replaces all current representations of the specified resource	|Editing your account information; editing a blog post|
|DELETE	|Delete	|deletes the specified resource	|Deleting a photo; removing an item from a list|

### CRUD app
Create, Read, Update, Delete.

### Status codes

200 OK - The request succeeded

201 Created - The request succeeded and a resource was created

401 Unauthorized - The request requires authentication

404 Not Found - The server has not found any resource matching the request URL

500 Internal Service Error - The server encountered an unexpected condition that prevented it from fulfilling the request

Check [details](https://developer.mozilla.org/en-US/docs/Web/HTTP/Status)

### API query
"https://api.github.com/search/topics?q=NodeJS"

`?q=NodeJS`

 chain multiple query `&`


### JSON

```
{
message: “What more could I lose?!”
}

{
"message": "What more could I lose?"
}
```

### youtube
`client ID`
807660904906-6gpsls7qqfq895aco4dlpaalqs3tbrpn.apps.googleusercontent.com
`client secret`
ozhEM4CzkGfGSogkOehvuGQk

### Promises

`.then` and `.catch`

```javascript
function getDogImage() {
  const options = {method: 'GET'};
  fetch('https://dog.ceo/api/breeds/image/random', options)
    .then(response => response.json())
    .then(responseJson => console.log(responseJson));
}

```



Now, let’s say you ordered first, but your food takes a long time to prepare. Elsewhere in the restaurant, someone at a different table ordered food after you, but it’s much quicker to prepare. It would be silly if they had to wait to receive their food until after you receive yours just because you ordered first.

Without promises — if this was a blocking call — our app would be frozen, unable to do other work while waiting for the response to return. But with promises, our app can continue executing other operations, and when the API eventually returns a response, it will carry out the behavior indicated in the .then block. The .then method's name is well-chosen.


* Make an initial fetch call

* Followed by a .then block that calls `response.json()`

* Followed by another .then block that carries out your desired actions on the resulting data

add the following, so it would catch error when internet is down.

 `.catch(error => alert('Something went wrong. Try again later.'));`

Inside the catch block, any action can be assigned in case of error.




## reading list
[How the Web Works](https://developer.mozilla.org/en-US/docs/Learn/Getting_started_with_the_web/How_the_Web_works)

## Download
[PostMan](https://www.getpostman.com/downloads/)
