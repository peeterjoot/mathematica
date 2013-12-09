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
NotebookDataLength[     11342,        354]
NotebookOptionsPosition[     11513,        342]
NotebookOutlinePosition[     11854,        357]
CellTagsIndexPosition[     11811,        354]
WindowFrame->Normal*)

(* Beginning of Notebook Content *)
Notebook[{
Cell[BoxData[""], "Input",
 CellChangeTimes->{{3.5407736313638783`*^9, 3.540773632755958*^9}}],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{
  RowBox[{"(*", " ", 
   RowBox[{
    RowBox[{"Here", "'"}], "s", " ", "the", " ", "guts"}], " ", "*)"}], 
  "\[IndentingNewLine]", 
  RowBox[{
   RowBox[{"Clear", "[", 
    RowBox[{
    "v", ",", " ", "mu", ",", " ", "rho", ",", " ", "pr", ",", " ", "hi", ",",
      " ", "a", ",", " ", "b", ",", " ", "tr", ",", " ", "u", ",", " ", 
     "\[Mu]", ",", " ", "\[Rho]", ",", " ", "p", ",", " ", "h", ",", " ", 
     "constA", ",", " ", "constB", ",", " ", "t", ",", " ", "alpha", ",", "g",
      ",", " ", "y", ",", " ", "u0"}], "]"}], "\[IndentingNewLine]", 
   RowBox[{"v", " ", ":=", " ", 
    RowBox[{"Array", "[", 
     RowBox[{"u", ",", " ", "2"}], "]"}]}], " ", 
   RowBox[{"(*", " ", 
    RowBox[{"x", " ", "velocity", " ", "components"}], " ", "*)"}], 
   "\[IndentingNewLine]", "\[IndentingNewLine]", 
   RowBox[{"mu", " ", ":=", " ", 
    RowBox[{"{", 
     RowBox[{
      SubscriptBox["\[Mu]", "1"], ",", " ", 
      SubscriptBox["\[Mu]", "2"]}], "}"}]}], "\[IndentingNewLine]", 
   "\[IndentingNewLine]", 
   RowBox[{"a", " ", ":=", " ", 
    RowBox[{"Array", "[", 
     RowBox[{"constA", ",", " ", "2"}], "]"}]}], "\[IndentingNewLine]", 
   RowBox[{"b", " ", ":=", " ", 
    RowBox[{"Array", "[", 
     RowBox[{"constB", ",", " ", "2"}], "]"}]}], "\[IndentingNewLine]", 
   "\[IndentingNewLine]", 
   RowBox[{"tr", " ", ":=", " ", 
    RowBox[{"Array", "[", 
     RowBox[{"t", ",", " ", "2"}], "]"}]}], " ", 
   RowBox[{"(*", " ", 
    RowBox[{"traction", " ", "vectors"}], " ", "*)"}], "\[IndentingNewLine]", 
   "\[IndentingNewLine]", 
   RowBox[{"Do", "[", 
    RowBox[{
     RowBox[{
      RowBox[{
       RowBox[{"v", "[", 
        RowBox[{"[", "i", "]"}], "]"}], "[", "y_", "]"}], " ", "=", " ", 
      RowBox[{
       RowBox[{
        RowBox[{"-", 
         RowBox[{"y", "^", "2"}]}], " ", 
        RowBox[{
         RowBox[{"g", "  ", "/", "2"}], "/", 
         RowBox[{"mu", "[", 
          RowBox[{"[", "i", "]"}], "]"}]}]}], " ", "+", " ", 
       RowBox[{
        RowBox[{"a", "[", 
         RowBox[{"[", "i", "]"}], "]"}], " ", "y"}], " ", "+", " ", 
       RowBox[{"b", "[", 
        RowBox[{"[", "i", "]"}], "]"}]}]}], ",", " ", 
     RowBox[{"{", 
      RowBox[{"i", ",", " ", "2"}], "}"}]}], "]"}], "\[IndentingNewLine]", 
   RowBox[{"Do", "[", 
    RowBox[{
     RowBox[{
      RowBox[{
       RowBox[{"tr", "[", 
        RowBox[{"[", "i", "]"}], "]"}], "[", "y_", "]"}], " ", "=", " ", 
      RowBox[{
       RowBox[{"mu", "[", 
        RowBox[{"[", "i", "]"}], "]"}], " ", 
       RowBox[{
        RowBox[{
         RowBox[{"v", "[", 
          RowBox[{"[", "i", "]"}], "]"}], "'"}], "[", "y", "]"}]}]}], ",", 
     " ", 
     RowBox[{"{", 
      RowBox[{"i", ",", " ", "2"}], "}"}]}], "]"}], "\[IndentingNewLine]", 
   "\[IndentingNewLine]", 
   RowBox[{"Clear", "[", "boundaries", "]"}], "\[IndentingNewLine]", 
   RowBox[{"boundaries", " ", "=", 
    RowBox[{"Part", "[", 
     RowBox[{
      RowBox[{"Solve", "[", " ", 
       RowBox[{
        RowBox[{
         RowBox[{
          RowBox[{
           RowBox[{"v", "[", 
            RowBox[{"[", "1", "]"}], "]"}], "[", 
           RowBox[{"-", "h"}], "]"}], " ", "\[Equal]", " ", "0"}], " ", "&&", 
         " ", 
         RowBox[{
          RowBox[{
           RowBox[{"v", "[", 
            RowBox[{"[", "1", "]"}], "]"}], "[", "0", "]"}], " ", "\[Equal]", 
          " ", 
          RowBox[{
           RowBox[{"v", "[", 
            RowBox[{"[", "2", "]"}], "]"}], "[", "0", "]"}]}], " ", "&&", " ", 
         RowBox[{
          RowBox[{
           RowBox[{"tr", "[", 
            RowBox[{"[", "1", "]"}], "]"}], "[", "0", "]"}], " ", "\[Equal]", 
          " ", 
          RowBox[{
           RowBox[{"tr", "[", 
            RowBox[{"[", "2", "]"}], "]"}], "[", "0", "]"}]}], " ", "&&", " ", 
         RowBox[{
          RowBox[{
           RowBox[{"v", "[", 
            RowBox[{"[", "2", "]"}], "]"}], "[", "h", "]"}], " ", "\[Equal]", 
          " ", 
          RowBox[{"-", "u0"}]}]}], ",", " ", 
        RowBox[{"{", 
         RowBox[{
          RowBox[{"a", "[", 
           RowBox[{"[", "1", "]"}], "]"}], ",", " ", 
          RowBox[{"a", "[", 
           RowBox[{"[", "2", "]"}], "]"}], ",", " ", 
          RowBox[{"b", "[", 
           RowBox[{"[", "1", "]"}], "]"}], ",", " ", 
          RowBox[{"b", "[", 
           RowBox[{"[", "2", "]"}], "]"}]}], "}"}]}], "]"}], ",", " ", "1"}], 
     "]"}]}], "\[IndentingNewLine]"}]}]], "Input",
 CellChangeTimes->{{3.5407737516177564`*^9, 3.540773758536152*^9}, {
  3.5407737885768704`*^9, 3.5407737922960835`*^9}, {3.5407738372166524`*^9, 
  3.5407739709132996`*^9}, {3.5407745983101845`*^9, 3.5407746139350786`*^9}, {
  3.5407746560064845`*^9, 3.5407746615828037`*^9}}],

Cell[BoxData[
 RowBox[{"{", 
  RowBox[{
   RowBox[{
    RowBox[{"constA", "[", "1", "]"}], "\[Rule]", 
    RowBox[{"-", 
     FractionBox[
      RowBox[{
       RowBox[{
        RowBox[{"-", "g"}], " ", 
        SuperscriptBox["h", "2"], " ", 
        SubscriptBox["\[Mu]", "1"]}], "+", 
       RowBox[{"g", " ", 
        SuperscriptBox["h", "2"], " ", 
        SubscriptBox["\[Mu]", "2"]}], "+", 
       RowBox[{"2", " ", "u0", " ", 
        SubscriptBox["\[Mu]", "1"], " ", 
        SubscriptBox["\[Mu]", "2"]}]}], 
      RowBox[{"2", " ", "h", " ", 
       SubscriptBox["\[Mu]", "1"], " ", 
       RowBox[{"(", 
        RowBox[{
         SubscriptBox["\[Mu]", "1"], "+", 
         SubscriptBox["\[Mu]", "2"]}], ")"}]}]]}]}], ",", 
   RowBox[{
    RowBox[{"constA", "[", "2", "]"}], "\[Rule]", 
    RowBox[{"-", 
     FractionBox[
      RowBox[{
       RowBox[{
        RowBox[{"-", "g"}], " ", 
        SuperscriptBox["h", "2"], " ", 
        SubscriptBox["\[Mu]", "1"]}], "+", 
       RowBox[{"g", " ", 
        SuperscriptBox["h", "2"], " ", 
        SubscriptBox["\[Mu]", "2"]}], "+", 
       RowBox[{"2", " ", "u0", " ", 
        SubscriptBox["\[Mu]", "1"], " ", 
        SubscriptBox["\[Mu]", "2"]}]}], 
      RowBox[{"2", " ", "h", " ", 
       SubscriptBox["\[Mu]", "2"], " ", 
       RowBox[{"(", 
        RowBox[{
         SubscriptBox["\[Mu]", "1"], "+", 
         SubscriptBox["\[Mu]", "2"]}], ")"}]}]]}]}], ",", 
   RowBox[{
    RowBox[{"constB", "[", "1", "]"}], "\[Rule]", 
    RowBox[{"-", 
     FractionBox[
      RowBox[{
       RowBox[{
        RowBox[{"-", "g"}], " ", 
        SuperscriptBox["h", "2"]}], "+", 
       RowBox[{"u0", " ", 
        SubscriptBox["\[Mu]", "2"]}]}], 
      RowBox[{
       SubscriptBox["\[Mu]", "1"], "+", 
       SubscriptBox["\[Mu]", "2"]}]]}]}], ",", 
   RowBox[{
    RowBox[{"constB", "[", "2", "]"}], "\[Rule]", 
    RowBox[{"-", 
     FractionBox[
      RowBox[{
       RowBox[{
        RowBox[{"-", "g"}], " ", 
        SuperscriptBox["h", "2"]}], "+", 
       RowBox[{"u0", " ", 
        SubscriptBox["\[Mu]", "2"]}]}], 
      RowBox[{
       SubscriptBox["\[Mu]", "1"], "+", 
       SubscriptBox["\[Mu]", "2"]}]]}]}]}], "}"}]], "Output",
 CellChangeTimes->{
  3.5407739827369757`*^9, {3.5407745992642393`*^9, 3.5407746146541195`*^9}, 
   3.54077466238585*^9}]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[{
 RowBox[{
  RowBox[{
   RowBox[{"FullSimplify", "[", 
    RowBox[{
     RowBox[{"v", "[", 
      RowBox[{"[", "1", "]"}], "]"}], "[", "y", "]"}], "]"}], "/.", " ", 
   "boundaries"}], "  ", "//", " ", 
  "TraditionalForm"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{
   RowBox[{"FullSimplify", "[", 
    RowBox[{
     RowBox[{"v", "[", 
      RowBox[{"[", "2", "]"}], "]"}], "[", "y", "]"}], "]"}], "/.", " ", 
   "boundaries"}], " ", "//", " ", "TraditionalForm"}]}], "Input",
 CellChangeTimes->{{3.540774039783239*^9, 3.540774070090972*^9}}],

Cell[BoxData[
 FormBox[
  RowBox[{
   RowBox[{"-", 
    FractionBox[
     RowBox[{
      RowBox[{
       SubscriptBox["\[Mu]", "2"], " ", "u0"}], "-", 
      RowBox[{"g", " ", 
       SuperscriptBox["h", "2"]}]}], 
     RowBox[{
      SubscriptBox["\[Mu]", "1"], "+", 
      SubscriptBox["\[Mu]", "2"]}]]}], "-", 
   FractionBox[
    RowBox[{"y", " ", 
     RowBox[{"(", 
      RowBox[{
       RowBox[{"-", 
        RowBox[{"g", " ", 
         SuperscriptBox["h", "2"], " ", 
         SubscriptBox["\[Mu]", "1"]}]}], "+", 
       RowBox[{"g", " ", 
        SuperscriptBox["h", "2"], " ", 
        SubscriptBox["\[Mu]", "2"]}], "+", 
       RowBox[{"2", " ", 
        SubscriptBox["\[Mu]", "1"], " ", 
        SubscriptBox["\[Mu]", "2"], " ", "u0"}]}], ")"}]}], 
    RowBox[{"2", " ", "h", " ", 
     SubscriptBox["\[Mu]", "1"], " ", 
     RowBox[{"(", 
      RowBox[{
       SubscriptBox["\[Mu]", "1"], "+", 
       SubscriptBox["\[Mu]", "2"]}], ")"}]}]], "-", 
   FractionBox[
    RowBox[{"g", " ", 
     SuperscriptBox["y", "2"]}], 
    RowBox[{"2", " ", 
     SubscriptBox["\[Mu]", "1"]}]]}], TraditionalForm]], "Output",
 CellChangeTimes->{{3.540774044898531*^9, 3.540774070610002*^9}, 
   3.540774619421392*^9, 3.540774666309074*^9}],

Cell[BoxData[
 FormBox[
  RowBox[{
   RowBox[{"-", 
    FractionBox[
     RowBox[{
      RowBox[{
       SubscriptBox["\[Mu]", "2"], " ", "u0"}], "-", 
      RowBox[{"g", " ", 
       SuperscriptBox["h", "2"]}]}], 
     RowBox[{
      SubscriptBox["\[Mu]", "1"], "+", 
      SubscriptBox["\[Mu]", "2"]}]]}], "-", 
   FractionBox[
    RowBox[{"y", " ", 
     RowBox[{"(", 
      RowBox[{
       RowBox[{"-", 
        RowBox[{"g", " ", 
         SuperscriptBox["h", "2"], " ", 
         SubscriptBox["\[Mu]", "1"]}]}], "+", 
       RowBox[{"g", " ", 
        SuperscriptBox["h", "2"], " ", 
        SubscriptBox["\[Mu]", "2"]}], "+", 
       RowBox[{"2", " ", 
        SubscriptBox["\[Mu]", "1"], " ", 
        SubscriptBox["\[Mu]", "2"], " ", "u0"}]}], ")"}]}], 
    RowBox[{"2", " ", "h", " ", 
     SubscriptBox["\[Mu]", "2"], " ", 
     RowBox[{"(", 
      RowBox[{
       SubscriptBox["\[Mu]", "1"], "+", 
       SubscriptBox["\[Mu]", "2"]}], ")"}]}]], "-", 
   FractionBox[
    RowBox[{"g", " ", 
     SuperscriptBox["y", "2"]}], 
    RowBox[{"2", " ", 
     SubscriptBox["\[Mu]", "2"]}]]}], TraditionalForm]], "Output",
 CellChangeTimes->{{3.540774044898531*^9, 3.540774070610002*^9}, 
   3.540774619421392*^9, 3.540774666334075*^9}]
}, Open  ]]
},
WindowSize->{707, 637},
WindowMargins->{{0, Automatic}, {Automatic, 0}},
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
Cell[1235, 30, 94, 1, 31, "Input"],
Cell[CellGroupData[{
Cell[1354, 35, 4741, 126, 412, "Input"],
Cell[6098, 163, 2319, 73, 94, "Output"]
}, Open  ]],
Cell[CellGroupData[{
Cell[8454, 241, 561, 16, 52, "Input"],
Cell[9018, 259, 1238, 39, 69, "Output"],
Cell[10259, 300, 1238, 39, 69, "Output"]
}, Open  ]]
}
]
*)

(* End of internal cache information *)

(* NotebookSignature ow0jMJPr221KxBgDdOGwXUQh *)
