---
layout: post
title:  discrete review for exam 1
date:   2017-01-24 08:28:05
categories: Discrete
tags: exam
---
* content
{:toc}

1.1 proposition logic 

“if p, then q”
“if p, q”

“p is sufficient for q”
To get tenure as a professor, it is sufficient to be world-famous.

“q if p”
“q when p”


“a necessary condition for p is q” 







“q unless ¬p”
You will reach the summit unless you begin your climb too late.
if you begin ..... not too late, then you will ...... summit. 

“p implies q”

“p only if q”
Your guarantee is good only if you bought your CD player less than 90 days ago.
if your guarantee is good...., then you bought...... 90 days...
[Note that "only if" does not mean "if"; the clause following the "only if" is the conclusion, not the antecedent.]

“a sufficient condition for q is p” 
A sufficient condition for the warranty to be good is that you bought the computer less than a year ago.
if you bought ..... then the warranty .... good. 

“q whenever p”
It snows whenever the wind blows from the northeast.
if wind blows..... then it snows. 


“q is necessary for p”
It is necessary to walk 8 miles to get to the top of Long’s Peak.
if you get to the top....., then you must have walked 8 ......

“q follows from p”
Getting elected follows from knowing the right people.

biconditional
For you to win the contest it is necessary and sufficient that you have the only winning ticket.
you win the contest iif you hve the only winning ticket. 

You get promoted only if you have connections, and you have connections only if you get promoted.

The trains run late on exactly those days when I take it.


1.3 
p → q ≡ ¬p ∨ q
p → q ≡ ¬q → ¬p
p ∨ q ≡ ¬p → q
p ∧ q ≡ ¬(p → ¬q)
¬(p → q) ≡ p ∧ ¬q
(p → q) ∧ (p → r) ≡ p → (q ∧ r) (p → r) ∧ (q → r) ≡ (p ∨ q) → r (p → q) ∨ (p → r) ≡ p → (q ∨ r) (p → r) ∨ (q → r) ≡ (p ∧ q) → r


1.5
3. Let Q(x, y) be the statement “x has sent an e-mail mes- sage to y,” where the domain for both x and y consists of all students in your class. Express each of these quantifi- cations in English.

∃x∀yQ(x,y)
this says there is some student in your class who has sent a message to every student in your class.

∀y∃xQ(x,y)
with the role of sender and recipient reversed: every student in your class has been sent a message from at least one student in your class. Again, note that the sender can depend on the recipient.


Let C(x,y) mean that student x is enrolled in class y, where the domain for x consists of all students in your school and the domain for y consists of all classes being given at your school. Express each of these statements by a simple English sentence.

e) ∃x∃y∀z((x̸=y)∧(C(x,z)→C(y,z)))
There are at least 2 different students, who the second one enrolls in every class the first one enrolls. 

f) ∃x∃y∀z((x̸=y)∧(C(x,z)↔C(y,z)))
There are at least 2 different students enroll in exactly the same class. 



ALGORITHM 1 Finding the Maximum Element in a Finite Sequence.
```
procedure max(a1, a2, . . . , an: integers) 
max := a1
for i := 2 to n
	if max< a_{i} then max:=a_{i} 
**return** max{max is the largest element}
```
ALGORITHM 2 The Linear Search Algorithm.
```
procedure linear search(x: integer, a1, a2, . . . , an: distinct integers)
i := 1
while(i ≤ n and x ̸=a_{i})
	i := i + 1
if i ≤ n then location := i
else location := 0
return location{location is the subscript of the term that equals x, or is 0 if x is not found}
```

ALGORITHM 3 The Binary Search Algorithm.
```
procedure binary search (x: integer, a1, a2, . . . , an: increasing integers) 
i := 1{i is left endpoint of search interval}
j := n {j is right endpoint of search interval}
while i < j
m := ⌊(i + j)/2⌋
if x >a_{m} then i :=m+1 
else j := m
if x = a_{i} then location := i
else location := 0
return location{location is the subscript i of the term ai equal to x, or 0 if x is not found}
```
ALGORITHM 4 The Bubble Sort.

```
procedure bubblesort(a1 , . . . , an : real numbers with n ≥ 2) 
for i := 1 to n − 1
	for j := 1 to n − i
		if a_{j} > a_{j}+1 then interchange a_{j} and a_{j}+1
{a_{1},...,a_{n} is in increasing order}

```
ALGORITHM 5 The Insertion Sort.
```
procedure insertion sort(a1, a2, . . . , an: 
for j :=2 to n
	i := 1
	while aj > ai
		i := i + 1 
	m := a_{j}
	for k := 0 to j − i − 1
		a_{j}−k := a_{j}−k−1 
	a_{i} := m
{a_{1},...,a_{n} is in increasing order}
```
ALGORITHM 6 Greedy Change-Making Algorithm.
```
procedure change(c1,c2,...,cr: values of denominations of coins,where c_{1} > c_{2} > ··· > c_{r}; 		n: a positive integer)
for i := 1 to r
	d_{i} := 0 {d_{i} counts the coins of denomination c_{i} used}
	while n ≥ c_{i}
		d_{i} := d_{i} + 1 {add a coin of denomination c_{i} } 
		n := n−c_{i}
{d_{i} is the number of coins of denomination c_{i} in the change for i = 1,2,...,r}
```


Algorithm 1 of Section 3.1 for finding the maximum element in a finite set of integers.
2(n − 1) + 1 = 2n − 1, hence the algorithm for finding the maximum of a set of n elements has time complexity  $$\theta(n)$$

2k + 2 = 2 log n + 2 is O(log n), in binary search when the list being searched has 2k elements.

a linear search requires (n) comparisons in the worst case, because 2n + 2 is $$ \theta (n)$$.




