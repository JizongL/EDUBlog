---
layout: post
title: creating and adding context in react
date: 2019-04-08 00:22
categories: Review
tags: react javascript review context
---

### a safety net approach for calling object in react Component
```
const object = {

        A:{
            a:a,
            b:b,
            c:c
            },
        B:{a:a,
           b:b,
           c:c},        
    }


class demo extends react.Component{
    render(){
        copy = object[a] || {}
        return(
            <div>
                <h1>{copy.a}</h1>
                <p>{copy.b}</p>
            </div>    

            )
    }
}
```

the `{}` is a safety net, much similar, though is different from, the `defaultProps`. If the key selected from `copy` is
not there, it will automatically choose {}, avoid the consequence of being `undefined`


### Using ... to update object

[see demo from repl link](https://repl.it/@JizongL/using-to-update-object)

e.g
```JavaScript
const expectedFolder = {
          ...testFolders[idToUpdate-1],
          ...updateFolder
        }
```

`updateFolder` updates `testFolders` and both become one object, expectedFolder.
