---
layout: post
title: Discrete Math Final Prep
date: 2017-04-23 10:00:00 
categories: Math
tags: discrete_math finals prep
---
*content
{: toc}


## 3.1 Algorithms

### Definitions

Input. An algorithm has input values from a specified set.

Output. From each set of input values an algorithm produces output values from a 
specified set. The output values are the solution to the problem.

Definiteness. The steps of an algorithm must be defined precisely.

Correctness.An algorithm should produce the correct output values for each set of input
values.

Finiteness. An algorithm should produce the desired output after a finite (but perhaps
large) number of steps for any input in the set.

Effectiveness. It must be possible to perform each step of an algorithm exactly and in a
finite amount of time.

Generality. The procedure should be applicable for all problems of the desired form, not
just for a particular set of input values.

### Find max element

```
procedure max(a1, a2, . . . , an: integers) 
max := a1
for i := 2 to n
	if max < ai then max:=ai 
return max{max is the largest element}

```

### Linear search 
```
procedure linear search(x: integer, a1, a2, . . . , an: distinct integers)
i := 1
while(i ≤ n and x ≠ ai)
	i := i + 1
if i ≤ n then location := i
else location := 0
return location{location is the subscript of the term that equals x, or is 0 if x is not found}

```

### Binary search

```
procedure binary search (x: integer, a1, a2, . . . , an: increasing integers) 
i := 1{i is left endpoint of search interval}
j := n {j is right endpoint of search interval}
while i < j
	m := ⌊(i + j)/2⌋
	if x >am then i :=m+1 
	else j := m
if x = ai then location := i
else location := 0
return location{location is the subscript i of the term ai equal to x, or 0 if x is not found}
```

## 3 Algorithms
### 3.2 The Growth of Functions
$$x^{2}+4x+17$$ is Big $$O(x^{3})$$
$$x^{2}+4x+17 ≤ 6x^{2}$$ C = 6 and x>17 so k = 17
$$6x^{2} < x^{3} $$ x>6
C = 1 k = 6

$$x^{2}+4x+17>x^{2}$$ is Big $$\omega(x^{2})$$ 



## 6 Counting
### Basics of Counting
 How many 4-element DNA sequences satisfy the following, recalling that DNA se- quences may contain only the letters A, T, C, and G.
Contains exactly three of the four letters A, T, C, and G
4 way to choose first letter 3 ways to which letter to take out.
4 way to choose position the 1st letter, 3 ways to position the second. 
4 x 3 x 4 x 3 = 144.



possible ways are there to arrange ten women in a row
$$^{10}P_{10}=10! = 3628800.$$
* W * W * W * W * W * W * W * W * W * W *
A man can be inserted in any one of the eleven positions marked off with a '*', and this will ensure no two men stand next to each other.
$$ ^{11}P_6 = 11\times 10\times 9\times 8 \times 7\times 6 = 332640.$$
$$3628800\times 332640 = 1,207,084,032,000$$


