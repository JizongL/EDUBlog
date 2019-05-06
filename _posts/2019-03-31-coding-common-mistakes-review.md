---
layout: post
title: Javascript,React and Node.js common mistakes
date: 2019-04-01 9:47
categories: Review
tags: react javascript review
---

## Basic Javascript mistakes

forget to put `return` inside `{...}`

```javascript
insertEvent(db,newEvent){
  return db
    .insert(newEvent)
    .into('stress_events')
    .returning('*')
    .then(([event]) => event)
    .then(event =>{      
       StressEventsService.getById(db,event.id)
    })
}
```
When I was working on capstone project 1, strestrac, I coould not get the event.id as
return value, the problem lied here, I forgot to put return inside the `{...}`. My TA Chris
reminded me to always remember, `x=>{return y}`
The following would work, or I could just remove the `{}` if there is only one clause inside.

```javascript
insertEvent(db,newEvent){
  return db
    .insert(newEvent)
    .into('stress_events')
    .returning('*')
    .then(([event]) => event)
    .then(event =>{      
       return StressEventsService.getById(db,event.id)
    })
}
```



I was trying to call the API to return the book titles, but nothing came back.
```javascript
app.get('/book',(req,res)=>{
  const {search=""}=req.query
  let results = books.filter(book=>{
     book.title.toLowerCase()
    .includes(search.toLowerCase())

  })
  console.log(results)
  res.json(results);

})
```
this is from the solution, at first I couldn't find anything but later I realized I missed the `return` from above, because I used `{}`
```javascript
app.get('/books', (req, res) => {
     const { search = ""} = req.query;
     let results = books
         .filter(book =>
           book
              .title
              .toLowerCase()
              .includes(search.toLowerCase()));
  res.json(results);
    });
```

```javascript
app.get('/book',(req,res)=>{
  const {search=""}=req.query
  let results = books.filter(book=>{
     return book.title.toLowerCase()
    .includes(search.toLowerCase())

  })
  console.log(results)
  res.json(results);

})
```
now it works.


### module.exports = {a,b}
it's easy to write it
```javascript
module.exports = (a,b)
```
result in undefined when the module.a module.b are called

### handler function for input or button inside render in react
remember `onChange={this.searchByTitle}/>` not `onChange={()=>this.searchByTitle}/>`

```
return (
      <div>
        <div>
          <label>Search By Title:
            <input type='text'
            onChange={this.searchByTitle}/>
          </label>
```

## Chai testing

### this.retries() only works with unbound function during chai test.

`this.retries(3)` only works when that specific test is written with unbound function, arrow function doesn't work.
it will throw an error

`this.retries is not a function`

e.g
The following doesn't work

```
// this doesn't work
describe(`POST /api/folders`,()=>{
    it(`create a folder, responding with 201 and the new folder`,()=>{
      this.retries(3)      
      const newFolder = {
        folder_name:'test new folder',        
      }

// this works
describe(`POST /api/folders`,()=>{
    it(`create a folder, responding with 201 and the new folder`,function(){
      this.retries(3)      
      const newFolder = {
        folder_name:'test new folder',        
      }
```

### forget / at the endpoint for posting test. Get  Error: ECONNREFUSED: Connection refused
This mistake is very common, just simply make sure the path of the endpoint is correct. The following is
wrong, because it should be `.post('/api/notes')`
because it was specified in `app.js` as `app.use('/api/notes',noteRouter)`

```
.post('api/notes')
   .send(newNote)
   .expect(400,{error:{message:`Missing "${field}" in request body`}})
})
```

change it to be will solve the issue.

```
.post('api/notes')
   .send(newNote)
   .expect(400,{error:{message:`Missing "${field}" in request body`}})
})

```
### when to use `Object.values` and

`const numberOfValue = Object.values(noteToUpdate).filter(Boolean).length`

Here, it's testing if any of the values are present, so we use `Object.values()` here.  
```
.patch(jsonParser,(req,res,next)=>{
    const{folder_name}=req.body
    const folderToUpdate = {folder_name}
    const numberOfValues = Object.values(folderToUpdate).filter(Boolean).length
    if(numberOfValues===0){
      return res.status(400).json(
        {
          error:{
            message: `Request body must contain folder name`
          }
        }
      )
    }

```

Here, it takes the entries of the object, break it down into key and values, then
check if the value is null. so we use `Object.entries()` here.
```
for (const [key, value] of Object.entries(newArticle))
      if (value == null)
        return res.status(400).json({
          error: { message: `Missing '${key}' in request body` }
        })
```
## network
### kill running port in the backgrouond

`kill $(lsof -t -i :8000)`


### something wrong about api and db debug, chris say focus on api-endpoint, not db.
.from('stress_events AS eve')
      .select(
        'usr.full_name',
        'usr.id',
        'eve.stress_event',
        'eve.id',
        'eve.mood',
        'eve.work_efficiency',
        'eve.stress_cause',
        'eve.symptoms',
        'eve.coping',
        'eve.date_recorded',

        )
### don't put irrelevant things before promise return

The commented out part console.log messed me up during my first capstone project, because
the request is async, therefore, it delays the data from returning.

```javascript
componentDidMount(){
   this.context.clearError()
   EventApiService.getEvents()
//      .then(data=>{console.log(data,'test data')}) chris told me this kills it, it added delay.
     .then(this.context.setEventList)
     .then(()=>{console.log(this.context.eventList,'test context eventList after')})
     .catch(this.context.setError)
 }
```

### don't forget to return a promise if .then() is called

```javascript
.then(event=>{
      // console.log(event,'test event')
      if(!event){
        return res.status(404).json(
          {error:{message:`event doesn't exist`}}
        )

      }

      res.event = event
      next()
      return event
    })
    .catch(next)
  })
```
