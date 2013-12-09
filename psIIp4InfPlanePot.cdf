(* Content-type: application/vnd.wolfram.cdf.text *)

(*** Wolfram CDF File ***)
(* http://www.wolfram.com/cdf *)

(* CreatedBy='Mathematica 8.0' *)

(*************************************************************************)
(*                                                                       *)
(*  The Mathematica License under which this file was created prohibits  *)
(*  restricting third parties in receipt of this file from republishing  *)
(*  or redistributing it by any means, including but not limited to      *)
(*  rights management or terms of use, without the express consent of    *)
(*  Wolfram Research, Inc.                                               *)
(*                                                                       *)
(*************************************************************************)

(*CacheID: 234*)
(* Internal cache information:
NotebookFileLineBreakTest
NotebookFileLineBreakTest
NotebookDataPosition[       835,         17]
NotebookDataLength[      4671,        155]
NotebookOptionsPosition[      4847,        143]
NotebookOutlinePosition[      5191,        158]
CellTagsIndexPosition[      5148,        155]
WindowFrame->Normal*)

(* Beginning of Notebook Content *)
Notebook[{

Cell[CellGroupData[{
Cell[BoxData[{
 RowBox[{"Clear", "[", 
  RowBox[{
  "x", ",", " ", "ii", ",", " ", "e", ",", " ", "z", ",", " ", "r", ",", " ", 
   "v", ",", " ", "a"}], "]"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{"ii", "[", "x_", "]"}], " ", "=", " ", 
  RowBox[{"Integrate", "[", 
   RowBox[{
    RowBox[{"Sqrt", "[", 
     RowBox[{"1", " ", "+", " ", 
      RowBox[{"1", "/", 
       RowBox[{"x", "^", "2"}]}]}], "]"}], ",", " ", "x"}], 
   "]"}]}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{"(*", 
   RowBox[{"v", " ", "=", " ", 
    RowBox[{"FullSimplify", "[", 
     RowBox[{
      RowBox[{
       RowBox[{"ii", "[", 
        RowBox[{"z", "/", "r"}], "]"}], " ", "-", " ", 
       RowBox[{"ii", "[", 
        RowBox[{
         RowBox[{"(", 
          RowBox[{"z", " ", "-", " ", "\[Epsilon]"}], ")"}], "/", "r"}], 
        "]"}]}], " ", ",", " ", 
      RowBox[{
       RowBox[{
        RowBox[{"z", "/", "r"}], " ", ">", " ", "0"}], " ", "&&", " ", 
       RowBox[{
        RowBox[{
         RowBox[{"(", 
          RowBox[{"z", "-", "\[Epsilon]"}], ")"}], "/", "r"}], " ", ">", " ", 
        "0"}]}]}], "]"}]}], " ", "*)"}]}]}], "Input",
 CellChangeTimes->{{3.5387723482555747`*^9, 3.538772380779435*^9}, 
   3.538772449854386*^9, {3.5387725092447824`*^9, 3.5387725212534695`*^9}, {
   3.538821661153592*^9, 3.5388216643359976`*^9}, 3.538821708796076*^9, {
   3.5388217421021347`*^9, 3.538821742913336*^9}, {3.5388235472775235`*^9, 
   3.538823601363617*^9}, {3.5388236741477804`*^9, 3.5388237316050663`*^9}, 
   3.538823824625387*^9}],

Cell[BoxData[
 FractionBox[
  RowBox[{
   SqrtBox[
    RowBox[{"1", "+", 
     FractionBox["1", 
      SuperscriptBox["x", "2"]]}]], " ", "x", " ", 
   RowBox[{"(", 
    RowBox[{
     SqrtBox[
      RowBox[{"1", "+", 
       SuperscriptBox["x", "2"]}]], "+", 
     RowBox[{"Log", "[", "x", "]"}], "-", 
     RowBox[{"Log", "[", 
      RowBox[{"1", "+", 
       SqrtBox[
        RowBox[{"1", "+", 
         SuperscriptBox["x", "2"]}]]}], "]"}]}], ")"}]}], 
  SqrtBox[
   RowBox[{"1", "+", 
    SuperscriptBox["x", "2"]}]]]], "Output",
 CellChangeTimes->{3.5388217440053377`*^9, 3.538823732585123*^9}],

Cell[BoxData["$Aborted"], "Output",
 CellChangeTimes->{3.5388217440053377`*^9, 3.5388238197991114`*^9}]
}, Open  ]],

Cell["\<\
See how at x > 0 and x < 0 we have a Sign[x] function as a factor of the \
inner brackets.  \
\>", "Text",
 CellChangeTimes->{{3.538823620661721*^9, 3.538823670891594*^9}}],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"\[IndentingNewLine]", "\[IndentingNewLine]", 
  RowBox[{
   RowBox[{"a", " ", ":=", " ", 
    RowBox[{"{", 
     RowBox[{
      RowBox[{"x", " ", "<", " ", "0"}], ",", " ", 
      RowBox[{"x", ">", " ", "0"}]}], "}"}]}], "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{
     RowBox[{"FullSimplify", "[", 
      RowBox[{
       RowBox[{"x", 
        RowBox[{
         SqrtBox[
          RowBox[{"1", "+", 
           FractionBox["1", 
            SuperscriptBox["x", "2"]]}]], "/", 
         SqrtBox[
          RowBox[{"1", "+", 
           SuperscriptBox["x", "2"]}]]}]}], ",", " ", "#"}], "]"}], " ", 
     "&"}], "/@", " ", "a"}]}]}]], "Input",
 CellChangeTimes->{{3.5388231678608227`*^9, 3.5388232197567906`*^9}, {
   3.5388232798472276`*^9, 3.53882335681763*^9}, {3.538823390830576*^9, 
   3.5388233972139406`*^9}, {3.5388234349380984`*^9, 3.5388235007568626`*^9}, 
   3.5388235441283436`*^9, {3.5388236139243355`*^9, 3.5388236140633435`*^9}}],

Cell[BoxData[
 RowBox[{"{", 
  RowBox[{
   RowBox[{"-", "1"}], ",", "1"}], "}"}]], "Output",
 CellChangeTimes->{3.538823558868187*^9}]
}, Open  ]]
},
WindowSize->{924, 695},
WindowMargins->{{223, Automatic}, {12, Automatic}},
FrontEndVersion->"8.0 for Microsoft Windows (64-bit) (October 6, 2011)",
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
Cell[CellGroupData[{
Cell[1257, 32, 1536, 40, 72, "Input"],
Cell[2796, 74, 599, 21, 80, "Output"],
Cell[3398, 97, 103, 1, 30, "Output"]
}, Open  ]],
Cell[3516, 101, 182, 4, 29, "Text"],
Cell[CellGroupData[{
Cell[3723, 109, 971, 25, 116, "Input"],
Cell[4697, 136, 134, 4, 30, "Output"]
}, Open  ]]
}
]
*)

(* End of internal cache information *)

(* NotebookSignature ZvDBQQYUQpH2gCKcby@PwkPo *)
