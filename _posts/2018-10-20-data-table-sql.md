---
layout: post
title:  Full Stack Udacity Data and Table
date:   2018-10-20 20.54
categories: Network
tags: linux
---

* content
{: toc}


## Basics

### What's a database?

How do we structure application data?

In memory:
simple variables:
numbers, strings
data structures:
lists, dictionaries, objects.
Ephemeral and temporary




Durable storage:
-flat files on disk
text, xml, json


databases
-key-value stored
-nagigational DB
-relational DB

persistent and durable

Relational database features.
persistent storage
safe concurrent access by multiple programs,

flexible query language with aggregation and join operations
constraints-rules for protesting, consistency of your data.

### Aggregations

|Questions | Aggregation |
| :---: | :---: |
|How many rows?|count |
|What's the average? |avg|
|what's the greatest?|max|
|What's the least| min |
|What's the sum | sum |


### Related Tables

[Kitten War](http://www.kittenwar.com/)

Pictures

|id |name |filename|
| :--- | :---: | ---: |
|1|Fluffy| fluffsocute.jpg|
|1|Fluffy| monstie-basket.png|
|1|Fluffy| george.jpg|
|:| : | :|

Votes:

|left |right |winner|
| :--- | :---: | ---: |
|2|3|3|
|1|3|1|
|2|1|1|
|3|2|3|
|3|1|1|
|2|3|3|
|:|:|:|

joined:

|left.name |right.name |winner.name|
| :--- | :---: | ---: |
|monster|george| george|
|fluffy | george|fluffy |
|monster|fluffy | fluffy |
|george |monster | george|
|george| fluffy | fluffy |


### Uniqueness and keys

Numerical ID makes up unique values to relate rows in one table to another.


Primary keys


### Joining Tables

```SQL
Select
    animals.name,
    animals.species,
    diet.food
    from animals join diet
    on animals.species = diet.species;
    where food = fish
```

```SQL
mary = Donor()
mary.name = 'Mary J.Washington'
mary.favoriate = 'gorilla'
mary.phones = {
    "home":"+1 413 555.1212"
    "mobile":"+1 413 555.0612"
}
```

Give Each column a name, then put Mary's data in the rows.
id is the primary key Here

Donors:
|id | name| favorite|
|---:|:---:|:---|
|1|Mary J. Washington| gorilla|

Donor_phones:
|id|phone.type|number|
|---:|:---:|:---|
|1|home |+1 413 555.1212|
|1|mobile|+1 413 555.0612|


### Comment

use `--`



```SQL

select name, birthdate from animals where species = 'gorilla';

+---------+------------+
|    name |  birthdate |
+=========+============+
|     Max | 2001-04-23 |
|    Dave | 1988-09-29 |
|   Becky | 1979-07-04 |
|     Liz | 1998-06-12 |
|  George | 2011-01-09 |
|  George | 1998-05-18 |
| Wendell | 1982-09-24 |
|   Bjorn | 2000-03-07 |
| Kristen | 1990-04-25 |
+---------+------------+
```

one row for each iguana, including all the columns.

```SQL
select * from animals where species = 'iguana'
```

### types in SQL
text
integer
date

must use single quote for string or date

'2012-11-23'

check [full list of data types](https://www.postgresql.org/docs/9.4/static/datatype.html)

### Text and string types

text — a string of any length, like Python str or unicode types.
char(n) — a string of exactly n characters.
varchar(n) — a string of up to n characters.

Numeric types
integer — an integer value, like Python int.
real — a floating-point value, like Python float. Accurate up to six decimal places.
double precision — a higher-precision floating-point value. Accurate up to 15 decimal places.
decimal — an exact decimal value.

Date and time types
date — a calendar date; including year, month, and day.
time — a time of day.
timestamp — a date and time together.

### Basic grammar
keyword       columns           keyword    tables       row restriction             boolean
`select` + `name, birthdate` + `from`      `animals`  `where species  = 'gorilla'` `and`   `name = 'Max'`


```SQL
-- Find all the llamas born between January 1, 1995 and December 31, 1998.
-- Fill in the 'where' clause in this query.

select name from animals where species = 'llama' and birthdate >= '1995-01-01' and birthdate <= '1998-12-31'
```

### Reference

Reference
For reference, here's a list of all the tables in the zoo database:

animals
This table lists individual animals in the zoo. Each animal has only one row. There may be multiple animals with the same name, or even multiple animals with the same name and species.
name — the animal's name (example: 'George')
species — the animal's species (example: 'gorilla')
birthdate — the animal's date of birth (example: '1998-05-18')

diet
This table matches up species with the foods they eat. Every species in the zoo eats at least one sort of food, and many eat more than one. If a species eats more than one food, there will be more than one row for that species.
species — the name of a species (example: 'hyena')
food — the name of a food that species eats (example: 'meat')

taxonomy
This table gives the (partial) biological taxonomic names for each species in the zoo. It can be used to find which species are more closely related to each other evolutionarily.
name — the common name of the species (e.g. 'jackal')
species — the taxonomic species name (e.g. 'aureus')
genus — the taxonomic genus name (e.g. 'Canis')
family — the taxonomic family name (e.g. 'Canidae')
t_order — the taxonomic order name (e.g. 'Carnivora')
If you've never heard of this classification, don't worry about it; the details won't be necessary for this course. But if you're curious, Wikipedia articles Taxonomy and Biological classification may help.

ordernames
This table gives the common names for each of the taxonomic orders in the taxonomy table.
t_order — the taxonomic order name (e.g. 'Cetacea')
name — the common name (e.g. 'whales and dolphins')
The SQL for it
And here are the SQL commands that were used to create those tables. We won't cover the create table command until lesson 4, but it may be interesting to look at:

```SQL
create table animals (  
       name text,
       species text,
       birthdate date);

create table diet (
       species text,
       food text);  

create table taxonomy (
       name text,
       species text,
       genus text,
       family text,
       t_order text);

create table ordernames (
       t_order text,
       name text);
```

Remember: In SQL, we always put string and date values inside single quotes.




```SQL
-- Uncomment one of these queries and use "Test Run" to run it.
-- You'll see the results below.  Then try your own queries as well!


select max(name) from animals;

-- limit -> how far into the results to start.
select * from animals limit 10;

-- order by birthdate
select * from animals where species = 'orangutan' order by birthdate;

-- desc equals descending order
select name from animals where species = 'orangutan' order by birthdate desc;

-- offset means skip the first 10
select name, birthdate from animals order by name limit 10 offset 10;

-- minimum birthdate of all species
select species, min(birthdate) from animals group by species;

-- count all the names and store the result as num then group by name and arrange it with descending order, finally only show first 5
select name, count(*) as num from animals
group by name
order by num desc
limit 5;

```
                optional
limit count [offset skip]

order by columns desc

group by columns ''


Example from quiz

```SQL
-- Write a query that returns all the species in the zoo, and how many
-- animals of each species there are, sorted with the most populous
-- species at the top.
--
-- The result should have two columns:  species and number.
--
-- The animals table has columns (name, species, birthdate) for each animal.

select species, count(*) as number from animals group by species order by number desc
```

### add a row

```SQL
Insert into table values (42, 'stuff')

SELECT_QUERY = "Select ..."
INSERT_QUERY = "Insert ..."
```

select ->  Insert -> Select
"before"  "Insert"   "After"

A single insert statement can only insert into a single table. (Contrast this with the select statement, which can pull data from several tables using a join.)

```SQL
-- if order needs to be specified
insert into table ( column1, column2, ... ) values ( val1, val2, ... );
`` if order is the same as table
insert into table values ( val1, val2, ... );
```


### Shortcut for joining two tables.

```SQL
Joining tables:
select T.thing, s.stuff rows
from T join S joined Tables
on T.target = S.match join condition
```

Simple join:

```SQL
select T.thing, S.stuff
from T, S -- tables
where T.target = S.match  -- restriction

select name from animals, diet where animals.species = diet.species
and diet.food = 'fish';
```

### Common mistakes

```SQL
select species, count(*) as num from animals group by species
where num = 1;

```
The value of num comes from count and group by, But where always come before
aggregations.

`having`
```SQL
select species, count(*) as num from animals group by species
having num = 1;

```

```SQL
-- Here's one possible solution:

select ordernames.name, count(*) as num
  from animals, taxonomy, ordernames
  where animals.species = taxonomy.name
    and taxonomy.t_order = ordernames.t_order
  group by ordernames.name
  order by num desc

-- And here's another, this time using the explicit join style:

select ordernames.name, count(*) as num
  from (animals join taxonomy
                on animals.species = taxonomy.name)
                as ani_tax
        join ordernames
             on ani_tax.t_order = ordernames.t_order
  group by ordernames.name
  order by num desc
```
