---
layout: post
title:  bug fixed for this blog and jekyll techniques
date:   2017-01-15 19:06:05
categories: Jekyll
tags: bug_fixed jekyll_technique jekyll_code
---

## Fix issues

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

## internal post link

linking to internal page, adding `post.url | prepend: site.baseurl` is necessary

for example 

{% highlight liquid %}
{% raw %}
[additional note]({{ post.url | prepend: site.baseurl }}{% post_url 2017-01-18-rules-of-inference-additional-note %})
{% endraw %}
{% endhighlight %}  