---
layout: post
title: Cobb-Douglas production function
date: 2017-01-20 20:30:05
categories: Math
tag: Cobb-Douglas_production_function calculus least_square
---

Cobb-Douglas production function





In 1928 Charles Cobb and Paul Douglas published a study in which they modeled the growth of the American economy during the period 1899 - 1922. They considered a simplified view of the economy in which production output is determined by the amount of labor involved and the amount of capital invested. While there are many other factors affecting economic performance, their model proved to be remarkably accurate. The function they used to model production was of the form

$$P(L,K)=bL^{\alpha}K^{1-\alpha}$$

where P is the total production (the monetary value of all goods produced in a year),
L is the amount of labor (the total number of person-hours worked in a year), and K is the amount of capital invested (the monetary worth of all machinery, equipment, and buildings)

Cobb and Douglas used economic data published by the government to obtain Table 1(See replication below). They took the year 1899 as a baseline and P, L, and K for 1899 were each assigned the value 100. The values for other years were expressed as percentages of the 1899 figures.

| year | P | L | K |
|:--- |:--- |:--- |
| 1899 | 100 | 100 | 100  |
| 1900 | 101 | 105 | 107  |
| 1901 | 112 | 110 | 114  |
| 1902 | 122 | 117 | 122  |
| 1903 | 124 | 122 | 131  |
| 1904 | 122 | 121 | 138  |
| 1905 | 143 | 125 | 149  |
| 1906 | 152 | 134 | 163  |
| 1907 | 151 | 140 | 176  |
| 1908 | 126 | 123 | 185  |
| 1909 | 155 | 143 | 198  |
| 1910 | 159 | 147 | 208  |
| 1911 | 153 | 148 | 216  |
| 1912 | 177 | 155 | 226  |
| 1913 | 184 | 156 | 236  |
| 1914 | 169 | 152 | 244  |
| 1915 | 189 | 156 | 266  |
| 1916 | 225 | 183 | 298  |
| 1917 | 227 | 198 | 335  |
| 1918 | 223 | 201 | 366  |
| 1919 | 218 | 196 | 387  |
| 1920 | 231 | 194 | 407  |
| 1921 | 179 | 146 | 417  |
| 1922 | 240 | 161 | 43   |

Cobb and Douglas used the method of least squares to fit the data of Table 2 to the function

$$P(L,K) = 1.01L^{0.75}K^{0.25}$$

 
|	Year	| x =ln(L/K) |	y=ln(P/K) |
|   1899	| 0.	| 0. |
|   1900	| -0.0188685	| -0.0577083  |
|   1901	| -0.0357181	| -0.0176996  |
|   1902	| -0.0418471	 | 0.  |
|   1903	| -0.0711763	| -0.0549158  |
|   1904	| -0.131463	| -0.123233  |
|   1905	| -0.175633	| -0.0411017  |
|   1906	| -0.19591	| -0.0698697  |
|   1907	| -0.228842	| -0.153204  |
|	1908	| -0.408171	| -0.384074  |
|	1909	| -0.325422	| -0.244842  |
|	1910	| -0.347105	| -0.268634  |
|	1911	| -0.378066	| -0.34484  |
|	1912	| -0.37711	| -0.244385  |
|	1913	| -0.413976	| -0.248896  |
|	1914	| -0.473288	| -0.36727  |
|	1915	| -0.53364	| -0.341749  |
|	1916	| -0.487607	| -0.280993  |
|	1917	| -0.525864	| -0.389181  |
|	1918	| -0.599328	| -0.495462  |
|	1919	| -0.68031	| -0.57393  |
|	1920	| -0.740955	| -0.566395  |
|	1921	| -1.04948	| -0.8457  |
|	1922	| -0.984704	| -0.585469  |

| 

$$ P = b L^{\alpha} K^{1-\alpha} \implies \frac{P}{K} = b L^{a}K^{-\alpha} \implies \frac{P}{K} = b \left( \frac{L}{K} \right)^{\alpha} \implies ln \frac{P}{K} = ln \left(b\left( \frac{L}{K}\right) \right) \\ \implies ln \frac{P}{K} = ln b + \alpha ln\left( \frac{L}{K} \right)$$



After applying `LinearSolve`, the resulting least squares regression line through the points is approximately   = 0.744606  +0.00704403, which we round to   = 0.75 x + 0 01.











