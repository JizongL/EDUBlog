---
layout: post
title: Javascript and React common mistakes
date: 2019-04-01 9:47
categories: Review
tags: react javascript review
---



## Express

### req.originalUrl

```
ArticlesService.insertArticle(
      req.app.get('db'),
      newArticle
    )
      .then(article => {
        res
          .status(201)
          .location(`/articles/${article.id}`)
         .location(req.originalUrl + `/${article.id}`)
          .json(serializeArticle(article))

```

when use trailing slash, in order to prevent '//' problem, let's use Node internal module `path`

```
.post('/api/articles/')
```

import the path library

```
const path = require('path')

.location(path.posix.join(req.originalUrl,`/${article.id}`))
```

Note: POSIX is an attempt to standardize UNIX systems, e.g. Linux and Mac. It's easier to port applications between systems that support POSIX.



### XSS

the following is a dialogs I had with my TAs about XSS,


@cklanac so the concept of the xss protection is strictly for the browser right? I realized that the conventional way of using xss from the material is to put `xss` at the return `json` after inserting into `db'.  

```postgreSQL
............. .then(article => {
        res
          .status(201)
          .location(`/articles/${article.id}`)
          .json(serializeArticle(article))
      })..............
```

where seralizeArticle() is function with `xss(title)` and `xss(content)` to remove cross site attack. That ensures the return result we could see from POSTMAN to be browser safe.   

 ```
"title": "Naughty naughty very naughty &lt;script&gt;alert(\"xss\");&lt;/script&gt;",
"content": "Bad image <img src=\"https://url.to.file.which/does-not.exist\">. But not <strong>all</strong> bad.",
```
  however, the data inside the database is still malicious

```blogful=# select * from blogful_articles where id=12;
 id |                            title                            |                                                               content                                                               |        date_published         | style  
----+-------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------+-------------------------------+--------
 12 | Naughty naughty very naughty <script>alert("xss");</script> | Bad image <img src="https://url.to.file.which/does-not.exist" onerror="alert(document.cookie);">. But not <strong>all</strong> bad. | 2019-04-12 09:21:00.561328-04 | How-to
(1 row)
```

is it necessary to add xss before inserting? I attempted that but it messed the other tests as it may have changed the return content and title for the other tests other than the one for post
in another word, xss is only aiming to protect client side, and the server side might or might not matter, or there is other way to handle it etc?

rosuav [9:33 AM]
Inside the database, it's just text.
IMO it'd be at least as good - maybe better - to do your XSS protection at the rendering side, since that's the only place where HTML is significant. But sometimes it's better to install airbags rather than demand that everyone wear seatbelts.


### About UUID
the following is a dialogs between me and ta about UUID

this is from module 18
```
id UUID PRIMARY KEY DEFAULT uuid_generate_v4(),
```
, is the UUID a type or mistake? it fails and said uuid_generate v4() is not a function. Once I removed it, everything works fine. @cklanac

rosuav [11:52 AM]
Syntactically, it's a type
https://www.postgresql.org/docs/current/datatype-uuid.html
The generation of them comes from a contrib module, so on any decently-recent PostgreSQL, you should be able to activate it thus:

`CREATE EXTENSION IF NOT EXISTS "uuid-ossp";`

DL [3:46 PM]
@rosuav thanks!

DL [4:22 PM]
@rosuav I found that if I use UUID for item, then supplier_order's foreign key can't be set to use INTEGER, as the material instructed. It must also be changed to UUID or it will suffer fkey incompatibility. Is this a bug from the material or there is something else I haven't known yet.

rosuav [4:23 PM]
Hmm, that would probably be a bug - probably a difference in editing (changed one side from serial to UUID, didn't change the other). Go ahead and use UUID there too.

DL [4:24 PM]
If you check Module 18, it uses INTEGER for supplier_order's foreign key. I will read further and make a final conclusion.


### migration
```
env MIGRATION_DB_NAME=blogful-auth-test npm run migrate
```
this will temporarily set up the migration database name to `test`. better than changing inside the env for the database name twice when doing migration for test database. 
