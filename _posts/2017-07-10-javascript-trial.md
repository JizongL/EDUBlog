---
layout: post
title:  trial javascript
date:   2017-07-10 10:05:05
categories: Math
tags: foundation Cardinality
---
* content
{: toc}

[comment]:#(the following records my first use of a javascript function)
[comment]:#(the button tag "onclick" attribute calls a function changeColor.js from the js folder)
[comment]:#(notice the script tag point the directory of the function)

<html>
<head>
  <title>getElementById example</title>
</head>
<body>
  <p id="para">Some text here</p>
  <button onclick="changeColor('blue');">blue</button>
  <button onclick="changeColor('red');">red</button>
</body>
</html>

<script src="{{ "/js/changeColor.js " | prepend: site.baseurl }}"></script>


