---
layout: post
title:  1.1 Ｐropositional Logic
date:   2017-01-10 08:28:05
categories: Discrete
tags: propositional_logic
---

[Download Mathematica notebook](/asset/Discrete/class/chapter1-class1.nb)







<?xml version="1.0" encoding="UTF-8"?>
<?xml-stylesheet type="text/xsl" href="HTMLFiles/pmathml.xsl"?>


<!-- Created with the Wolfram Language for Students - Personal Use Only : www.wolfram.com -->

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
 <title>
  chapter1-class1 (the Wolfram Language for Students - Personal Use Only : www.wolfram.com)
 </title>
 <link href="HTMLFiles/chapter1-class1-xml.css" rel="stylesheet" type="text/css" />
</head>

<body>

<p class="Text">
 <span style='font-weight: bold;'>Propositional Logic</span><br />definition<br />A declarative statement that is either true or false. <br /><br />What time is it?<br /><br />p = &ldquo;Michael&rsquo;s PC runs Linux&rdquo;<br />~p = <span style='font-weight: bold;'>It&rsquo;s not the case</span> that Michael&rsquo;s PC runs Linux&rdquo;<br /><br />
</p>





<table class='Output'>
 <tr style='vertical-align: baseline;'>
  <td style='text-align: left;'><span><span></span></span></td>
  <td style='text-align: left;'><span>p</span></td>
  <td style='text-align: left;'><span>q</span></td>
  <td style='text-align: left;'><span>inclusive p &or; q</span></td>
  <td style='text-align: left;'><span>and p &and; q</span></td>
  <td style='text-align: left;'><span>exclusive p &oplus; q</span></td>
  <td style='text-align: left;'><span>if then p -&gt; q</span></td>
  <td style='text-align: left;'><span>converse q -&gt; p</span></td>
  <td style='text-align: left;'><span>contrapositive ~q -&gt; ~p</span></td>
  <td style='text-align: left;'><span>Inverse ~p -&gt; ~q</span></td>
  <td style='text-align: left;'><span>Biconditional p &lt;-&gt; q</span></td>
 </tr>
 <tr style='vertical-align: baseline;'>
  <td style='text-align: left;'><span>1</span></td>
  <td style='text-align: left;'><span>True</span></td>
  <td style='text-align: left;'><span>True</span></td>
  <td style='text-align: left;'><span>True</span></td>
  <td style='text-align: left;'><span>True</span></td>
  <td style='text-align: left;'><span>False</span></td>
  <td style='text-align: left;'><span>True</span></td>
  <td style='text-align: left;'><span>True</span></td>
  <td style='text-align: left;'><span>True</span></td>
  <td style='text-align: left;'><span>True</span></td>
  <td style='text-align: left;'><span>True</span></td>
 </tr>
 <tr style='vertical-align: baseline;'>
  <td style='text-align: left;'><span>2</span></td>
  <td style='text-align: left;'><span>True</span></td>
  <td style='text-align: left;'><span>False</span></td>
  <td style='text-align: left;'><span>True</span></td>
  <td style='text-align: left;'><span>False</span></td>
  <td style='text-align: left;'><span>True</span></td>
  <td style='text-align: left;'><span>False</span></td>
  <td style='text-align: left;'><span>True</span></td>
  <td style='text-align: left;'><span>False</span></td>
  <td style='text-align: left;'><span>True</span></td>
  <td style='text-align: left;'><span>False</span></td>
 </tr>
 <tr style='vertical-align: baseline;'>
  <td style='text-align: left;'><span>3</span></td>
  <td style='text-align: left;'><span>False</span></td>
  <td style='text-align: left;'><span>True</span></td>
  <td style='text-align: left;'><span>True</span></td>
  <td style='text-align: left;'><span>False</span></td>
  <td style='text-align: left;'><span>True</span></td>
  <td style='text-align: left;'><span>True</span></td>
  <td style='text-align: left;'><span>False</span></td>
  <td style='text-align: left;'><span>True</span></td>
  <td style='text-align: left;'><span>False</span></td>
  <td style='text-align: left;'><span>False</span></td>
 </tr>
 <tr style='vertical-align: baseline;'>
  <td style='text-align: left;'><span>4</span></td>
  <td style='text-align: left;'><span>False</span></td>
  <td style='text-align: left;'><span>False</span></td>
  <td style='text-align: left;'><span>False</span></td>
  <td style='text-align: left;'><span>False</span></td>
  <td style='text-align: left;'><span>False</span></td>
  <td style='text-align: left;'><span>True</span></td>
  <td style='text-align: left;'><span>True</span></td>
  <td style='text-align: left;'><span>True</span></td>
  <td style='text-align: left;'><span>True</span></td>
  <td style='text-align: left;'><span>True</span></td>
 </tr>
</table>

<p class="Text">
 <span style='font-weight: bold;'>Bit operations<br /><br /></span><span><table class='Inline'>
 <tr style='vertical-align: baseline;'>
  <td style='text-align: left;'><span>1</span></td>
  <td style='text-align: left;'><span>1</span></td>
  <td style='text-align: left;'><span>1</span></td>
  <td style='text-align: left;'><span>1</span></td>
  <td style='text-align: left;'><span>0</span></td>
  <td style='text-align: left;'><span>1</span></td>
 </tr>
 <tr style='vertical-align: baseline;'>
  <td style='text-align: left;'><span>0</span></td>
  <td style='text-align: left;'><span>0</span></td>
  <td style='text-align: left;'><span>1</span></td>
  <td style='text-align: left;'><span>1</span></td>
  <td style='text-align: left;'><span>1</span></td>
  <td style='text-align: left;'><span>1</span></td>
 </tr>
 <tr style='vertical-align: baseline;'>
  <td style='text-align: left;'><span>0</span></td>
  <td style='text-align: left;'><span>0</span></td>
  <td style='text-align: left;'><span>1</span></td>
  <td style='text-align: left;'><span>1</span></td>
  <td style='text-align: left;'><span>0</span></td>
  <td style='text-align: left;'><span>1</span></td>
 </tr>
</table>

</span><span style='font-weight: bold;'><br /></span>
</p>





<p class="Output">
 <math xmlns='http://www.w3.org/1998/Math/MathML'>
 <mn>13</mn>
</math>
</p>


<table class='Output'>
 <tr style='vertical-align: baseline;'>
  <td style='text-align: left;'><span>1</span></td>
  <td style='text-align: left;'><span>1</span></td>
  <td style='text-align: left;'><span>1</span></td>
  <td style='text-align: left;'><span>1</span></td>
  <td style='text-align: left;'><span>0</span></td>
  <td style='text-align: left;'><span>1</span></td>
 </tr>
 <tr style='vertical-align: baseline;'>
  <td style='text-align: left;'><span>0</span></td>
  <td style='text-align: left;'><span>0</span></td>
  <td style='text-align: left;'><span>1</span></td>
  <td style='text-align: left;'><span>1</span></td>
  <td style='text-align: left;'><span>1</span></td>
  <td style='text-align: left;'><span>1</span></td>
 </tr>
 <tr style='vertical-align: baseline;'>
  <td style='text-align: left;'><span>0</span></td>
  <td style='text-align: left;'><span>0</span></td>
  <td style='text-align: left;'><span>1</span></td>
  <td style='text-align: left;'><span>1</span></td>
  <td style='text-align: left;'><span>0</span></td>
  <td style='text-align: left;'><span>1</span></td>
 </tr>
</table>

<p class="Subsubsection">
 1.3 Propositional Equivalence 
</p>



<p class="Text">
 Tautology -&gt; always true<br />p v ~p<br />Contradiction -&gt; always false<br />p ^ ~p<br />Propositions are logical equivalence if they have the same true values. <br /><br /><span style='font-weight: bold;'>De Morgan&rsquo;s Laws</span><br />(make truth table)<br />edit <br /><br /><span style='font-weight: bold;'>homework</span><br /><span style='font-weight: bold;'>1.1 </span><br />5,12,13,16,22,31,32,43<br /><span style='font-weight: bold;'>1.3</span><br />5,8,16,26
</p>






<div style="font-family:Helvetica; font-size:11px; width:100%; border:1px none #999999; border-top-style:solid; padding-top:2px; margin-top:20px;">
 <a href="http://www.wolfram.com/language/" style="color:#000; text-decoration:none;">
  <span style="color:#555555">Created with the Wolfram Language</span> 
 </a>
</div>
</body>

</html>
