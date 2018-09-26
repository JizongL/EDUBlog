---
layout: post
title:  jekyll cheatsheet and markdown and html tricks
categories: Jekyll
tags: bug_fixed jekyll_technique jekyll_code
---

### Fix issues

recent post, category and tags are not linking to post properly. Issue found because in config.yml file, baseurl is set to "TmmGeekBlog", and the original code in the category.html,tag.html,and index.html is





{% highlight liquid %}
{% raw %}
href="{{ root_url}}/{{ site.category_dir }}#{{ category }}" title="Category: {{ category }}" rel="
{% endraw %}
{% endhighlight %}  


therefore, the default syntax did not link correctly. to fix the problem, use `prepend:site.baseurl`

```liquid
 root_url | prepend: site.baseurl

```

Display post outline in Archives, tags, category. But does not link to the post articles. To fix the issue, add
`prepend:site.baseurl`

```
 post.url | prepend: site.baseurl
```

### internal post link

linking to internal page, adding `post.url | prepend: site.baseurl` is necessary

for example

{% highlight liquid %}
{% raw %}
[additional note]({{ post.url | prepend: site.baseurl }}{% post_url 2017-01-18-rules-of-inference-additional-note %})
{% endraw %}
{% endhighlight %}  


### right alight text

```
<div style="text-align: right"> Q.E.D</div>

```

### internal link to a section of the post

```
## target
<a name="prop3.1.1"></a>

##from where to target
<a href="#top">link to top</a>
```

<<<<<<< HEAD:_posts/2017-01-14-bug-fixed-this-site.md
### Add looping video

This will put a video playing continously in the frame.
```
 <video controls loop>
	  <source src="https://s3.amazonaws.com/content.udacity-data.com/courses/ud1111/conda_default_install.mp4" type="video/mp4">
  		<source src="movie.ogg" type="video/ogg">
  		Your browser does not support the video tag.
</video>

```

 <video controls loop>
	  <source src="https://s3.amazonaws.com/content.udacity-data.com/courses/ud1111/conda_default_install.mp4" type="video/mp4">
  		<source src="movie.ogg" type="video/ogg">
  		Your browser does not support the video tag.
</video>



||||||| merged common ancestors
=======
### add a spoiler
>>>>>>> 43fac45ef431f6b7b2abe9eac87c4fd6523e4781:_posts/2017-01-14-bug-fixed-jekyll-latex-technique-collection.md

```
<details>
  <summary>Q1: What is the best Language in the World? </summary>
   A1: JavaScript
</details>

```
