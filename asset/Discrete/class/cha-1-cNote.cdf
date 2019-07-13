(* Content-type: application/vnd.wolfram.cdf.text *)

(*** Wolfram CDF File ***)
(* http://www.wolfram.com/cdf *)

(* CreatedBy='Mathematica 11.0' *)

(*************************************************************************)
(*                                                                       *)
(*  The Mathematica License under which this file was created prohibits  *)
(*  restricting third parties in receipt of this file from republishing  *)
(*  or redistributing it by any means, including but not limited to      *)
(*  rights management or terms of use, without the express consent of    *)
(*  Wolfram Research, Inc. For additional information concerning CDF     *)
(*  licensing and redistribution see:                                    *)
(*                                                                       *)
(*        www.wolfram.com/cdf/adopting-cdf/licensing-options.html        *)
(*                                                                       *)
(*************************************************************************)

(*CacheID: 234*)
(* Internal cache information:
NotebookFileLineBreakTest
NotebookFileLineBreakTest
NotebookDataPosition[      1064,         20]
NotebookDataLength[      8581,        278]
NotebookOptionsPosition[      8511,        251]
NotebookOutlinePosition[      9027,        274]
CellTagsIndexPosition[      8984,        271]
WindowFrame->Normal*)

(* Beginning of Notebook Content *)
Notebook[{
Cell[TextData[{
 StyleBox["Propositional Logic",
  FontWeight->"Bold"],
 "\ndefinition\nA declarative statement that is either true or false. \n\n\
What time is it?\n\np = \[OpenCurlyDoubleQuote]Michael\[CloseCurlyQuote]s PC \
runs Linux\[CloseCurlyDoubleQuote]\n~p = ",
 StyleBox["It\[CloseCurlyQuote]s not the case",
  FontWeight->"Bold"],
 " that Michael\[CloseCurlyQuote]s PC runs Linux\[CloseCurlyDoubleQuote]\n\n"
}], "Text", "PluginEmbeddedContent"],

Cell[BoxData[
 RowBox[{
  RowBox[{"table", "=", 
   RowBox[{"BooleanTable", "[", 
    RowBox[{
     RowBox[{"{", 
      RowBox[{"p", ",", "q", ",", 
       RowBox[{"p", "||", "q"}], ",", 
       RowBox[{"And", "[", 
        RowBox[{"p", ",", "q"}], "]"}], ",", 
       RowBox[{"Xor", "[", 
        RowBox[{"p", ",", "q"}], "]"}], ",", 
       RowBox[{"Implies", "[", 
        RowBox[{"p", ",", "q"}], "]"}], ",", 
       RowBox[{"Implies", "[", 
        RowBox[{"q", ",", "p"}], "]"}], ",", 
       RowBox[{"Implies", "[", 
        RowBox[{
         RowBox[{"!", "q"}], ",", 
         RowBox[{"!", "p"}]}], "]"}], ",", 
       RowBox[{"Implies", "[", 
        RowBox[{
         RowBox[{"!", "p"}], ",", 
         RowBox[{"!", "q"}]}], "]"}], ",", 
       RowBox[{"And", "[", 
        RowBox[{
         RowBox[{"Implies", "[", 
          RowBox[{"p", ",", "q"}], "]"}], ",", 
         RowBox[{"Implies", "[", 
          RowBox[{"q", ",", "p"}], "]"}]}], "]"}]}], "}"}], ",", 
     RowBox[{"{", 
      RowBox[{"p", ",", "q"}], "}"}]}], "]"}]}], ";"}]], "Input", \
"PluginEmbeddedContent"],

Cell[BoxData[
 RowBox[{"(*", 
  RowBox[{
   RowBox[{
   "find", " ", "out", " ", "how", " ", "to", " ", "do", " ", 
    "\"\<exclusive or\>\""}], ",", " ", 
   RowBox[{"and", " ", "type", " ", "the", " ", "symbols"}]}], 
  "*)"}]], "Input", "PluginEmbeddedContent"],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"TableForm", "[", 
  RowBox[{"table", ",", 
   RowBox[{"TableHeadings", "\[Rule]", 
    RowBox[{"{", 
     RowBox[{"Automatic", ",", 
      RowBox[{"{", 
       RowBox[{
       "\"\<p\>\"", ",", "\"\<q\>\"", ",", "\"\<p \[Or] q\>\"", ",", 
        "\"\<p \[And] q\>\"", ",", "\"\<p \[CirclePlus] q\>\"", ",", 
        "\"\<p -> q\>\"", ",", "\"\<converse q -> p\>\"", ",", 
        "\"\<contrapositive ~q -> ~p\>\"", ",", "\"\<Inverse ~p -> ~q\>\"", 
        ",", "\"\<Biconditional p <-> q\>\""}], "}"}]}], "}"}]}]}], 
  "]"}]], "Input", "PluginEmbeddedContent"],

Cell[BoxData[
 TagBox[
  TagBox[GridBox[{
     {
      StyleBox["\[Null]",
       ShowStringCharacters->False], 
      TagBox["\<\"p\"\>",
       HoldForm], 
      TagBox["\<\"q\"\>",
       HoldForm], 
      TagBox["\<\"p \[Or] q\"\>",
       HoldForm], 
      TagBox["\<\"p \[And] q\"\>",
       HoldForm], 
      TagBox["\<\"p \[CirclePlus] q\"\>",
       HoldForm], 
      TagBox["\<\"p -> q\"\>",
       HoldForm], 
      TagBox["\<\"converse q -> p\"\>",
       HoldForm], 
      TagBox["\<\"contrapositive ~q -> ~p\"\>",
       HoldForm], 
      TagBox["\<\"Inverse ~p -> ~q\"\>",
       HoldForm], 
      TagBox["\<\"Biconditional p <-> q\"\>",
       HoldForm]},
     {"1", "True", "True", "True", "True", "False", "True", "True", "True", 
      "True", "True"},
     {"2", "True", "False", "True", "False", "True", "False", "True", "False",
       "True", "False"},
     {"3", "False", "True", "True", "False", "True", "True", "False", "True", 
      "False", "False"},
     {"4", "False", "False", "False", "False", "False", "True", "True", 
      "True", "True", "True"}
    },
    GridBoxAlignment->{
     "Columns" -> {{Left}}, "ColumnsIndexed" -> {}, "Rows" -> {{Baseline}}, 
      "RowsIndexed" -> {}},
    GridBoxDividers->{
     "Columns" -> {False, True, {False}, False}, "ColumnsIndexed" -> {}, 
      "Rows" -> {False, True, {False}, False}, "RowsIndexed" -> {}},
    GridBoxSpacings->{"Columns" -> {
        Offset[0.27999999999999997`], {
         Offset[2.0999999999999996`]}, 
        Offset[0.27999999999999997`]}, "ColumnsIndexed" -> {}, "Rows" -> {
        Offset[0.2], {
         Offset[0.4]}, 
        Offset[0.2]}, "RowsIndexed" -> {}}],
   {OutputFormsDump`HeadedRows, OutputFormsDump`HeadedColumns}],
  Function[BoxForm`e$, 
   TableForm[
   BoxForm`e$, 
    TableHeadings -> {
     Automatic, {
      "p", "q", "p \[Or] q", "p \[And] q", "p \[CirclePlus] q", "p -> q", 
       "converse q -> p", "contrapositive ~q -> ~p", "Inverse ~p -> ~q", 
       "Biconditional p <-> q"}}]]]], "Output", "PluginEmbeddedContent"]
}, Open  ]],

Cell[TextData[{
 StyleBox["Bit operations\n\n",
  FontWeight->"Bold"],
 Cell[BoxData[
  TagBox[GridBox[{
     {"1", "1", "1", "1", "0", "1"},
     {"0", "0", "1", "1", "1", "1"},
     {"0", "0", "1", "1", "0", "1"}
    },
    GridBoxAlignment->{
     "Columns" -> {{Left}}, "ColumnsIndexed" -> {}, "Rows" -> {{Baseline}}, 
      "RowsIndexed" -> {}},
    GridBoxSpacings->{"Columns" -> {
        Offset[0.27999999999999997`], {
         Offset[2.0999999999999996`]}, 
        Offset[0.27999999999999997`]}, "ColumnsIndexed" -> {}, "Rows" -> {
        Offset[0.2], {
         Offset[0.4]}, 
        Offset[0.2]}, "RowsIndexed" -> {}}],
   Function[BoxForm`e$, 
    TableForm[BoxForm`e$]]]],
  CellChangeTimes->{{3.6930508470239964`*^9, 3.693050868332737*^9}}],
 StyleBox["\n",
  FontWeight->"Bold"]
}], "Text", "PluginEmbeddedContent"],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"BitAnd", "[", 
  RowBox[{"61", ",", "15"}], "]"}]], "Input", "PluginEmbeddedContent"],

Cell[BoxData["13"], "Output", "PluginEmbeddedContent"]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{
  RowBox[{"IntegerDigits", "[", 
   RowBox[{
    RowBox[{"{", 
     RowBox[{"61", ",", "15", ",", "13"}], "}"}], ",", "2", ",", "6"}], "]"}],
   "//", "TableForm"}]], "Input", "PluginEmbeddedContent"],

Cell[BoxData[
 TagBox[GridBox[{
    {"1", "1", "1", "1", "0", "1"},
    {"0", "0", "1", "1", "1", "1"},
    {"0", "0", "1", "1", "0", "1"}
   },
   GridBoxAlignment->{
    "Columns" -> {{Left}}, "ColumnsIndexed" -> {}, "Rows" -> {{Baseline}}, 
     "RowsIndexed" -> {}},
   GridBoxSpacings->{"Columns" -> {
       Offset[0.27999999999999997`], {
        Offset[2.0999999999999996`]}, 
       Offset[0.27999999999999997`]}, "ColumnsIndexed" -> {}, "Rows" -> {
       Offset[0.2], {
        Offset[0.4]}, 
       Offset[0.2]}, "RowsIndexed" -> {}}],
  Function[BoxForm`e$, 
   TableForm[BoxForm`e$]]]], "Output", "PluginEmbeddedContent"]
}, Open  ]],

Cell[CellGroupData[{

Cell["1.3 Propositional Equivalence ", "Subsubsection", "PluginEmbeddedContent"],

Cell[TextData[{
 "Tautology -> always true\np v ~p\nContradiction -> always false\np ^ ~p\n\
Propositions are logical equivalence if they have the same true values. \n\n\
",
 StyleBox["De Morgan\[CloseCurlyQuote]s Laws",
  FontWeight->"Bold"],
 "\n(make truth table)\nedit \n\n",
 StyleBox["homework",
  FontWeight->"Bold"],
 "\n",
 StyleBox["1.1 ",
  FontWeight->"Bold"],
 "\n5,12,13,16,22,31,32,43\n",
 StyleBox["1.3",
  FontWeight->"Bold"],
 "\n5,8,16,26"
}], "Text", "PluginEmbeddedContent"]
}, Open  ]]
},
WindowSize->{1188, 902},
Visible->True,
AuthoredSize->{1188, 902},
ScrollingOptions->{"HorizontalScrollRange"->Fit,
"VerticalScrollRange"->Fit},
ShowCellBracket->False,
Deployed->True,
CellContext->Notebook,
TrackCellChangeTimes->False,
FrontEndVersion->"11.0 for Mac OS X x86 (32-bit, 64-bit Kernel) (July 28, \
2016)",
StyleDefinitions->"Default.nb"
]
(* End of Notebook Content *)

(* Internal cache information *)
(*CellTagsOutline
CellTagsIndex->{}
*)
(*CellTagsIndex
CellTagsIndex->{}
*)
(*NotebookFileOutline
Notebook[{
Cell[1464, 33, 456, 9, 187, "Text"],
Cell[1923, 44, 1086, 32, 39, "Input"],
Cell[3012, 78, 265, 7, 17, "Input"],
Cell[CellGroupData[{
Cell[3302, 89, 586, 13, 60, "Input"],
Cell[3891, 104, 2050, 56, 88, "Output"]
}, Open  ]],
Cell[5956, 163, 834, 24, 107, "Text"],
Cell[CellGroupData[{
Cell[6815, 191, 109, 2, 17, "Input"],
Cell[6927, 195, 54, 0, 17, "Output"]
}, Open  ]],
Cell[CellGroupData[{
Cell[7018, 200, 224, 6, 17, "Input"],
Cell[7245, 208, 635, 17, 48, "Output"]
}, Open  ]],
Cell[CellGroupData[{
Cell[7917, 230, 80, 0, 23, "Subsubsection"],
Cell[8000, 232, 495, 16, 282, "Text"]
}, Open  ]]
}
]
*)

(* End of internal cache information *)

(* NotebookSignature KuDhqG#Sx6wfKAKliLHb3Fuq *)
