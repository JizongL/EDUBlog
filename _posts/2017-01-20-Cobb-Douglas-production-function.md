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


{"1", "1899", "100", "100", "100"},
{"2", "1900", "101", "105", "107"},
{"3", "1901", "112", "110", "114"},
{"4", "1902", "122", "117", "122"},
{"5", "1903", "124", "122", "131"},
{"6", "1904", "122", "121", "138"},
{"7", "1905", "143", "125", "149"},
{"8", "1906", "152", "134", "163"},
{"9", "1907", "151", "140", "176"},
{"10", "1908", "126", "123", "185"},
{"11", "1909", "155", "143", "198"},
{"12", "1910", "159", "147", "208"},
{"13", "1911", "153", "148", "216"},
{"14", "1912", "177", "155", "226"},
{"15", "1913", "184", "156", "236"},
{"16", "1914", "169", "152", "244"},
{"17", "1915", "189", "156", "266"},
{"18", "1916", "225", "183", "298"},
{"19", "1917", "227", "198", "335"},
{"20", "1918", "223", "201", "366"},
{"21", "1919", "218", "196", "387"},
{"22", "1920", "231", "194", "407"},
{"23", "1921", "179", "146", "417"},
{"24", "1922", "240", "161", "431"}

