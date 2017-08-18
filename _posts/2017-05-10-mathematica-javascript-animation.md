---
layout: post
title:  Mathematica and Javascript animation
date:   2017-05-10 09:36:00
categories: Programming
tags: Javascript Mathematica 
---
* content
{: toc}

[reference article](https://mathematica.stackexchange.com/questions/18257/how-to-translate-interactive-graphics-from-mathematica-to-standard-htmlsvg)






experimental data

```
field[a_, d_, x_, y_] = 
  D[Log[((x - d)^2 + y^2)/((x - a)^2 + y^2)], {{x, y}}];
images = With[{r = 1.}, 
  Table[Show[
    StreamPlot[field[1/d, d, x, y], {x, -2, 4}, {y, -3, 3}, 
     FrameLabel -> {"x", "y"}, StreamColorFunctionScaling -> False, 
     StreamColorFunction -> "Rainbow", 
     PlotLabel -> Row[{"d = ", PaddedForm[N@d, {4, 2}]}]], 
    Graphics[{Thickness[.009], White, Circle[{0, 0}, r], 
      PointSize[.03], Point[{d, 0}]}], Background -> GrayLevel[.2], 
    LabelStyle -> White, 
    FrameStyle -> Directive[Lighter@Gray, Thickness[.005]], 
    ImageMargins -> 5], {d, 1.5 r, 4 r, r/4}]]
```

jenPlayer function.

```
htmlTemplate = 
  Import["http://uoregon.edu/~noeckel/jensPlayer/jensPlayerTemplate.\
js", "Text"];
jensPlayer[name_?StringQ, a_?ListQ, opts : OptionsPattern[]] := 
 Module[{delay = 50, dataType = "img", htmlString, htmlBody, 
   scaledFrames, n, i, movieFrames, dimensions, frameStartTag, 
   frameEndTag, exportFormat, imgSizeRule, 
   loopOptions = {"Loop" -> "rightLoopButton", 
     "None" -> "noLoopButton", "Palindrome" -> "palindromeButton"}, 
   toolHeight = 25}, n = Range[Length[a]];
  imgSizeRule = FilterRules[{opts}, ImageSize];
  If[imgSizeRule == {}, imgSizeRule = (ImageSize -> Automatic)];
  scaledFrames = Map[Show[#, imgSizeRule] &, a];
  dimensions = ImageDimensions[Rasterize[scaledFrames[[1]]]];
  With[{del = ("Delay" /. {opts})}, If[NumericQ[del], delay = del]];
  With[{ind = ("Indices" /. {opts})}, 
   If[ListQ[ind], i = ind - 1, i = n - 1]];
  Which[("SVG" /. {opts}) === True, 
   dataType = "object", ("SVGZ" /. {opts}) === True, 
   dataType = "embed"];
  If[dataType == "embed", frameStartTag = "<embed src=\"";
   frameEndTag = 
    "\" width=\"" <> ToString[dimensions[[1]]] <> "\"height=\"" <> 
     ToString[dimensions[[2]]] <> "\">";
   htmlString = "";
   movieFrames = 
    Table[With[{svgName = 
        name <> ToString[
          PaddedForm[i, Total@DigitCount[Length[scaledFrames]], 
           NumberPadding -> {"0", " "}]] <> ".svgz"}, 
      Export[svgName, scaledFrames[[i]], "SVGZ"];
      frameStartTag <> svgName <> frameEndTag], {i, 
      Length[scaledFrames]}];
   htmlString = StringJoin[movieFrames], 
   If[dataType == "img", 
    frameStartTag = "<img src=\"data:image/png;base64,";
    frameEndTag = "\">";
    movieFrames = 
     Apply[If[("Parallel" /. {opts}) === False, Map, 
       ParallelMap], {ExportString[#, "PNG"] &, scaledFrames}], 
    frameStartTag = "<object data=\"data:image/svg+xml;base64,";
    frameEndTag = "\" type=\"image/svg+xml\"></object>";
    movieFrames = 
     Apply[If[("Parallel" /. {opts}) === False, Map, 
       ParallelMap], {ExportString[#, "SVG"] &, scaledFrames}]];
   htmlString = 
    StringJoin@
     If[("Parallel" /. {opts}) === False, 
      Map[(StringJoin[frameStartTag, 
          StringReplace[ExportString[#, "Base64"], "\n" -> ""], 
          frameEndTag]) &, movieFrames], 
      DistributeDefinitions[frameStartTag];
      DistributeDefinitions[frameEndTag];
      ParallelMap[(StringJoin[frameStartTag, 
          StringReplace[ExportString[#, "Base64"], "\n" -> ""], 
          frameEndTag]) &, movieFrames]]];
  htmlBody = 
   StringReplace[
     htmlTemplate, {"**DATE**" -> DateString[], 
      "**DATATYPE**" -> dataType, 
      "**WIDTH**" -> ToString[dimensions[[1]]], 
      "**HEIGHT**" -> ToString[dimensions[[2]]], 
      "**TOOLHEIGHT**" -> ToString[toolHeight], 
      "**DELAY**" -> ToString[delay], 
      "**COMBINEDWIDTH**" -> ToString[Length[a]*dimensions[[1]]], 
      "**USERNAME**" -> $UserName, 
      "**LOOPCONTROL**" -> 
       With[{loopOption = ("Looping" /. {opts}) /. loopOptions}, 
        If[MemberQ[loopOptions[[All, 2]], loopOption], loopOption, 
         "None" /. loopOptions]], 
      "**INDICES**" -> StringJoin@Riffle[Map[ToString, i], ","], 
      "**AUTOPLAY**" -> 
       If[("AutoPlay" /. {opts}) === True, "true", "false"], 
      "**TITLE**" -> name}] <> htmlString <> "</div></body></html>";
  Export[name, htmlBody, "TEXT"];]
```

output the file

```
jensPlayer["imageChargesSVG.html", images2, "SVG" -> True, 
 "Parallel" -> False]
```
open the file

```
SystemOpen["imageChargesSVG.html"]
```