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
NotebookDataLength[     36392,       1097]
NotebookOptionsPosition[     35446,       1048]
NotebookOutlinePosition[     35789,       1063]
CellTagsIndexPosition[     35746,       1060]
WindowFrame->Normal*)

(* Beginning of Notebook Content *)
Notebook[{

Cell[CellGroupData[{
Cell["\<\
Layered steady state inclined flow down a plane.\
\>", "Title",
 CellChangeTimes->{{3.539859711652011*^9, 3.5398597264348564`*^9}}],

Cell[CellGroupData[{

Cell["Motivation.", "Section",
 CellChangeTimes->{{3.539859747462059*^9, 3.5398597492651625`*^9}}],

Cell["\<\
Here\[CloseCurlyQuote]s a systematic calculation for the two fluid flow \
layers problem I did manually in phy454.pdf (Steady state inclined flow down \
a plane of two layers of incompressible viscous fluids)\
\>", "Text",
 CellChangeTimes->{{3.5398597711054115`*^9, 3.539859772165472*^9}, {
  3.5398635886697636`*^9, 3.5398636291990814`*^9}, {3.5398636599448404`*^9, 
  3.53986367690781*^9}}],

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
      ",", " ", "y"}], "]"}], "\[IndentingNewLine]", 
   RowBox[{"v", " ", ":=", " ", 
    RowBox[{"Array", "[", 
     RowBox[{"u", ",", " ", "2"}], "]"}]}], " ", 
   RowBox[{"(*", " ", 
    RowBox[{"x", " ", "velocity", " ", "components"}], " ", "*)"}], 
   "\[IndentingNewLine]", "\[IndentingNewLine]", 
   RowBox[{"(*", " ", "ugly", " ", "*)"}], "\[IndentingNewLine]", 
   RowBox[{"(*", 
    RowBox[{"mu", " ", ":=", " ", 
     RowBox[{
      RowBox[{
       RowBox[{"Array", "[", 
        RowBox[{"\[Mu]", ",", " ", "2"}], "]"}], " ", 
       RowBox[{"(*", " ", "viscosities", " ", "*)"}], "\[IndentingNewLine]", 
       "rho"}], " ", ":=", " ", 
      RowBox[{
       RowBox[{
        RowBox[{"Array", "[", 
         RowBox[{"\[Rho]", ",", " ", "2"}], "]"}], " ", 
        RowBox[{"(*", " ", "densities", " ", "*)"}], "\[IndentingNewLine]", 
        "pr"}], " ", ":=", " ", 
       RowBox[{
        RowBox[{
         RowBox[{"Array", "[", 
          RowBox[{"p", ",", " ", "2"}], "]"}], " ", 
         RowBox[{"(*", " ", "pressures", " ", "*)"}], "\[IndentingNewLine]", 
         "hi"}], " ", ":=", " ", 
        RowBox[{"Array", "[", 
         RowBox[{"h", ",", " ", "2"}], "]"}]}]}]}]}], " ", 
    RowBox[{"(*", " ", 
     RowBox[{"heights", " ", "of", " ", "layers"}], " ", "*)"}], "*)"}], 
   "\[IndentingNewLine]", "\[IndentingNewLine]", 
   RowBox[{"mu", " ", ":=", " ", 
    RowBox[{"{", 
     RowBox[{
      SubscriptBox["\[Mu]", "1"], ",", " ", 
      SubscriptBox["\[Mu]", "2"]}], "}"}]}], "\[IndentingNewLine]", 
   RowBox[{"rho", " ", ":=", " ", 
    RowBox[{"{", 
     RowBox[{
      SubscriptBox["\[Rho]", "1"], ",", " ", 
      SubscriptBox["\[Rho]", "2"]}], "}"}]}], "\[IndentingNewLine]", 
   RowBox[{"pr", " ", ":=", " ", 
    RowBox[{"{", 
     RowBox[{
      SubscriptBox["p", "1"], ",", " ", 
      SubscriptBox["p", "2"]}], "}"}]}], "\[IndentingNewLine]", 
   RowBox[{"hi", " ", ":=", " ", 
    RowBox[{"{", 
     RowBox[{
      SubscriptBox["h", "1"], ",", " ", 
      SubscriptBox["h", "2"]}], "}"}]}], "\[IndentingNewLine]", 
   "\[IndentingNewLine]", 
   RowBox[{"a", " ", ":=", " ", 
    RowBox[{"Array", "[", 
     RowBox[{"constA", ",", " ", "2"}], "]"}]}], "\[IndentingNewLine]", 
   RowBox[{"b", " ", ":=", " ", 
    RowBox[{"Array", "[", 
     RowBox[{"constB", ",", " ", "2"}], "]"}]}], "\[IndentingNewLine]", 
   RowBox[{"(*", 
    RowBox[{"eq", " ", "=", " ", 
     RowBox[{"Array", "[", 
      RowBox[{"e", ",", " ", "2"}], "]"}]}], "*)"}], "\[IndentingNewLine]", 
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
         RowBox[{"y", "^", "2"}]}], " ", "g", " ", 
        RowBox[{"rho", "[", 
         RowBox[{"[", "i", "]"}], "]"}], " ", 
        RowBox[{
         RowBox[{
          RowBox[{"Sin", "[", "alpha", "]"}], " ", "/", "2"}], "/", 
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
   RowBox[{"(*", 
    RowBox[{
     RowBox[{
      RowBox[{"v", "[", 
       RowBox[{"[", "1", "]"}], "]"}], "[", "y", "]"}], "\[IndentingNewLine]", 
     RowBox[{
      RowBox[{"tr", "[", 
       RowBox[{"[", "1", "]"}], "]"}], "[", "y", "]"}]}], "*)"}], 
   "\[IndentingNewLine]", "\[IndentingNewLine]", 
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
            RowBox[{"[", "1", "]"}], "]"}], "[", "0", "]"}], " ", "\[Equal]", 
          " ", "0"}], " ", "&&", " ", 
         RowBox[{
          RowBox[{
           RowBox[{"v", "[", 
            RowBox[{"[", "1", "]"}], "]"}], "[", 
           RowBox[{"hi", "[", 
            RowBox[{"[", "1", "]"}], "]"}], "]"}], " ", "\[Equal]", " ", 
          RowBox[{
           RowBox[{"v", "[", 
            RowBox[{"[", "2", "]"}], "]"}], "[", 
           RowBox[{"hi", "[", 
            RowBox[{"[", "1", "]"}], "]"}], "]"}]}], " ", "&&", " ", 
         RowBox[{
          RowBox[{
           RowBox[{"tr", "[", 
            RowBox[{"[", "1", "]"}], "]"}], "[", 
           RowBox[{"hi", "[", 
            RowBox[{"[", "1", "]"}], "]"}], "]"}], " ", "\[Equal]", " ", 
          RowBox[{
           RowBox[{"tr", "[", 
            RowBox[{"[", "2", "]"}], "]"}], "[", 
           RowBox[{"hi", "[", 
            RowBox[{"[", "1", "]"}], "]"}], "]"}]}], " ", "&&", " ", 
         RowBox[{
          RowBox[{
           RowBox[{"tr", "[", 
            RowBox[{"[", "2", "]"}], "]"}], "[", 
           RowBox[{
            RowBox[{"hi", "[", 
             RowBox[{"[", "2", "]"}], "]"}], " ", "+", " ", 
            RowBox[{"hi", "[", 
             RowBox[{"[", "1", "]"}], "]"}]}], "]"}], " ", "\[Equal]", " ", 
          "0"}]}], ",", " ", 
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
 CellChangeTimes->{{3.539859779052866*^9, 3.539859793091669*^9}, {
  3.539860066431303*^9, 3.539860246225587*^9}, {3.5398602975025196`*^9, 
  3.539860372218793*^9}, {3.5398604623009453`*^9, 3.5398605151289673`*^9}, {
  3.5398605642147746`*^9, 3.539860564532793*^9}, {3.5398606815334845`*^9, 
  3.5398610953631544`*^9}, {3.539861136127486*^9, 3.539861161247923*^9}, {
  3.5398611954198775`*^9, 3.5398612928344493`*^9}, {3.539861393010179*^9, 
  3.5398614023217115`*^9}, {3.5398614421699905`*^9, 3.539861580118881*^9}, {
  3.5398616170029907`*^9, 3.5398618027806163`*^9}, {3.5398618386246667`*^9, 
  3.5398620101654787`*^9}, {3.539862043347376*^9, 3.539862094959328*^9}, {
  3.5398621389768457`*^9, 3.539862163198231*^9}, {3.5398622586416903`*^9, 
  3.5398622646400337`*^9}, {3.5398632210797386`*^9, 3.53986332932393*^9}, {
  3.5398687376002655`*^9, 3.5398687540162044`*^9}}],

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
        RowBox[{"Sin", "[", "alpha", "]"}], " ", 
        SubscriptBox["h", "1"], " ", 
        SubscriptBox["\[Rho]", "1"]}], "-", 
       RowBox[{"g", " ", 
        RowBox[{"Sin", "[", "alpha", "]"}], " ", 
        SubscriptBox["h", "2"], " ", 
        SubscriptBox["\[Rho]", "2"]}]}], 
      SubscriptBox["\[Mu]", "1"]]}]}], ",", 
   RowBox[{
    RowBox[{"constA", "[", "2", "]"}], "\[Rule]", 
    FractionBox[
     RowBox[{"g", " ", 
      RowBox[{"Sin", "[", "alpha", "]"}], " ", 
      RowBox[{"(", 
       RowBox[{
        SubscriptBox["h", "1"], "+", 
        SubscriptBox["h", "2"]}], ")"}], " ", 
      SubscriptBox["\[Rho]", "2"]}], 
     SubscriptBox["\[Mu]", "2"]]}], ",", 
   RowBox[{
    RowBox[{"constB", "[", "1", "]"}], "\[Rule]", "0"}], ",", 
   RowBox[{
    RowBox[{"constB", "[", "2", "]"}], "\[Rule]", 
    RowBox[{"-", 
     FractionBox[
      RowBox[{"g", " ", 
       RowBox[{"Sin", "[", "alpha", "]"}], " ", 
       RowBox[{"(", 
        RowBox[{
         RowBox[{
          RowBox[{"-", 
           SubsuperscriptBox["h", "1", "2"]}], " ", 
          SubscriptBox["\[Mu]", "2"], " ", 
          SubscriptBox["\[Rho]", "1"]}], "+", 
         RowBox[{
          SubsuperscriptBox["h", "1", "2"], " ", 
          SubscriptBox["\[Mu]", "1"], " ", 
          SubscriptBox["\[Rho]", "2"]}], "+", 
         RowBox[{"2", " ", 
          SubscriptBox["h", "1"], " ", 
          SubscriptBox["h", "2"], " ", 
          SubscriptBox["\[Mu]", "1"], " ", 
          SubscriptBox["\[Rho]", "2"]}], "-", 
         RowBox[{"2", " ", 
          SubscriptBox["h", "1"], " ", 
          SubscriptBox["h", "2"], " ", 
          SubscriptBox["\[Mu]", "2"], " ", 
          SubscriptBox["\[Rho]", "2"]}]}], ")"}]}], 
      RowBox[{"2", " ", 
       SubscriptBox["\[Mu]", "1"], " ", 
       SubscriptBox["\[Mu]", "2"]}]]}]}]}], "}"}]], "Output",
 CellChangeTimes->{
  3.539861724198122*^9, 3.5398617932220697`*^9, 3.5398618414698296`*^9, {
   3.5398620733880944`*^9, 3.539862100484644*^9}, {3.539862158701974*^9, 
   3.53986216421729*^9}, 3.539862266516141*^9, {3.5398633060755997`*^9, 
   3.539863331266041*^9}, 3.5398687596265254`*^9}]
}, Open  ]],

Cell[BoxData[
 RowBox[{
  RowBox[{"(*", 
   RowBox[{
   "Apply", " ", "the", " ", "boundary", " ", "value", " ", "conditions", " ",
     "and", " ", "factor", " ", "out", " ", "a", " ", "couple", " ", "of", 
    " ", "terms", " ", "for", " ", "the", " ", "display", " ", 
    RowBox[{"equation", "."}]}], "*)"}], "\[IndentingNewLine]", 
  "\[IndentingNewLine]", 
  RowBox[{
   RowBox[{"Clear", "[", 
    RowBox[{
    "v1", ",", " ", "v2", ",", " ", "w1", ",", " ", "w2", ",", " ", "c1", ",",
      " ", "c2", ",", " ", "t1", ",", " ", "t2"}], "]"}], 
   "\[IndentingNewLine]", 
   RowBox[{"c1", " ", ":=", " ", 
    RowBox[{"g", " ", 
     RowBox[{
      RowBox[{
       RowBox[{"Sin", "[", "\[Alpha]", "]"}], "/", "2"}], "/", 
      RowBox[{"mu", "[", 
       RowBox[{"[", "1", "]"}], "]"}]}]}]}], " ", "\[IndentingNewLine]", 
   RowBox[{"c2", " ", ":=", " ", 
    RowBox[{"g", " ", 
     RowBox[{
      RowBox[{
       RowBox[{"Sin", "[", "\[Alpha]", "]"}], "/", "2"}], "/", 
      RowBox[{"mu", "[", 
       RowBox[{"[", "2", "]"}], "]"}]}]}]}], " ", "\[IndentingNewLine]", 
   RowBox[{"v1", " ", ":=", " ", 
    RowBox[{
     RowBox[{
      RowBox[{"FullSimplify", "[", 
       RowBox[{
        RowBox[{"v", "[", 
         RowBox[{"[", "1", "]"}], "]"}], "[", "y", "]"}], "]"}], "/.", " ", 
      "boundaries"}], " ", "/.", " ", 
     RowBox[{"alpha", " ", "\[Rule]", " ", "\[Alpha]"}]}]}], 
   "\[IndentingNewLine]", 
   RowBox[{"w1", " ", ":=", " ", 
    RowBox[{"(*", 
     RowBox[{"(", "c1", ")"}], "*)"}], 
    RowBox[{"Simplify", "[", 
     RowBox[{"v1", "/", "c1"}], "]"}]}], " ", "\[IndentingNewLine]", 
   RowBox[{"(*", 
    RowBox[{"w1", "//", " ", "TraditionalForm"}], "*)"}], 
   "\[IndentingNewLine]", 
   RowBox[{"v2", " ", ":=", " ", 
    RowBox[{
     RowBox[{
      RowBox[{"FullSimplify", "[", 
       RowBox[{
        RowBox[{"v", "[", 
         RowBox[{"[", "2", "]"}], "]"}], "[", "y", "]"}], "]"}], " ", "/.", 
      " ", "boundaries"}], " ", "/.", " ", 
     RowBox[{"alpha", " ", "\[Rule]", " ", "\[Alpha]"}]}]}], 
   "\[IndentingNewLine]", 
   RowBox[{"w2", " ", ":=", " ", 
    RowBox[{"(*", 
     RowBox[{"(", "c2", ")"}], " ", "*)"}], 
    RowBox[{"FullSimplify", "[", " ", 
     RowBox[{"v2", "/", "c2"}], "]"}]}], " ", "\[IndentingNewLine]", 
   RowBox[{"(*", 
    RowBox[{"w2", " ", "//", " ", "TraditionalForm"}], "*)"}], 
   "\[IndentingNewLine]", 
   RowBox[{"t1", " ", ":=", " ", 
    RowBox[{"FullSimplify", "[", 
     RowBox[{
      RowBox[{
       RowBox[{
        RowBox[{"tr", "[", 
         RowBox[{"[", "1", "]"}], "]"}], "[", "y", "]"}], " ", "/.", " ", 
       "boundaries"}], " ", "/.", " ", 
      RowBox[{"alpha", " ", "\[Rule]", " ", "\[Alpha]"}]}], " ", "]"}]}], 
   "\[IndentingNewLine]", 
   RowBox[{"(*", 
    RowBox[{"t1", " ", "//", " ", "TraditionalForm"}], "*)"}], 
   "\[IndentingNewLine]", 
   RowBox[{"t2", " ", ":=", " ", 
    RowBox[{"FullSimplify", "[", 
     RowBox[{
      RowBox[{
       RowBox[{
        RowBox[{"tr", "[", 
         RowBox[{"[", "2", "]"}], "]"}], "[", "y", "]"}], " ", "/.", " ", 
       "boundaries"}], " ", "/.", " ", 
      RowBox[{"alpha", " ", "\[Rule]", " ", "\[Alpha]"}]}], " ", "]"}]}], 
   "\[IndentingNewLine]", 
   RowBox[{"(*", 
    RowBox[{"t2", "//", " ", "TraditionalForm"}], "*)"}], 
   "\[IndentingNewLine]", "\[IndentingNewLine]", 
   RowBox[{"(*", " ", "checks", " ", "*)"}], "\[IndentingNewLine]", 
   RowBox[{"(*", 
    RowBox[{
     RowBox[{"Simplify", "[", 
      RowBox[{
       RowBox[{"t1", " ", "-", " ", "t2"}], " ", "/.", " ", 
       RowBox[{"y", " ", "\[Rule]", " ", 
        RowBox[{"(", 
         RowBox[{"hi", "[", 
          RowBox[{"[", "1", "]"}], "]"}], " ", ")"}]}]}], "]"}], 
     "\[IndentingNewLine]", 
     RowBox[{"Simplify", "[", " ", 
      RowBox[{"t2", " ", "/.", " ", 
       RowBox[{"y", " ", "\[Rule]", " ", 
        RowBox[{"(", 
         RowBox[{
          RowBox[{"hi", "[", 
           RowBox[{"[", "1", "]"}], "]"}], " ", "+", " ", 
          RowBox[{"hi", "[", 
           RowBox[{"[", "2", "]"}], "]"}]}], ")"}]}]}], "]"}], 
     "\[IndentingNewLine]", 
     RowBox[{"Simplify", "[", 
      RowBox[{
       RowBox[{"(", 
        RowBox[{"v1", " ", "-", "  ", "v2"}], ")"}], " ", "/.", " ", 
       RowBox[{"y", " ", "\[Rule]", " ", 
        RowBox[{"(", 
         RowBox[{"hi", "[", 
          RowBox[{"[", "1", "]"}], "]"}], " ", ")"}]}]}], "]"}], 
     "\[IndentingNewLine]", 
     RowBox[{"Simplify", "[", 
      RowBox[{"v1", " ", "/.", " ", 
       RowBox[{"y", " ", "\[Rule]", " ", "0"}]}], "]"}]}], "*)"}], 
   "\[IndentingNewLine]", "\[IndentingNewLine]"}]}]], "Input",
 CellChangeTimes->CompressedData["
1:eJxTTMoPSmViYGCQBGIQrfL+c/CB+FeOXc+CU0H0bKFzuSC6agZjHogOsGMo
AdFvslpLQfQB+Y3VIDrpZFsbiH4yW3AKiN7xun0+iC4vCVoCoqXOVa8F0Uzm
GyUOAulQ7dtgeto7O3UQ3W8jow2me8SdQHQE10xXEP2Mc+WCw0B6U8yOJSCa
Y1bhZhB9TesKmD6XvHQHiGbqfboLRL9NWHYJRP+wZH8Most/+7wE0YcitL+B
6GeMKv9A9JenUpJHgHS4sIk8iLY2O6UNomW4vhqA6Dd10dYg+snvKw4g2sKY
0xNEfwra+xBEH3u/+SWIZgm59xFEP1DK/gSWz474CaK7TsezHwXSKTwTuEF0
kPgkfhBdwucvAqK/8nWKgugpdYskwfSTQjkQLecltQ1E181V3AGiAfre1Jw=

  "]],

Cell[CellGroupData[{

Cell["Final results:", "Subsection",
 CellChangeTimes->{{3.5398639973821406`*^9, 3.5398639994102564`*^9}}],

Cell[TextData[{
 "Factored out the constant terms, to find\n\n",
 Cell[BoxData[
  FormBox[
   StyleBox[
    RowBox[{
     SubscriptBox["u", 
      RowBox[{"1", " "}]], "=", " ", 
     RowBox[{
      FormBox[
       FormBox[
        FractionBox[
         RowBox[{"g", " ", 
          RowBox[{"sin", "(", "\[Alpha]", ")"}]}], 
         RowBox[{"2", " ", 
          SubscriptBox["\[Mu]", "1"]}]],
        TraditionalForm],
       TraditionalForm], " ", 
      FormBox[
       RowBox[{"y", " ", 
        RowBox[{"(", 
         RowBox[{
          RowBox[{"2", " ", 
           SubscriptBox["h", "2"], " ", 
           SubscriptBox["\[Rho]", "2"]}], "-", 
          RowBox[{
           SubscriptBox["\[Rho]", "1"], " ", 
           RowBox[{"(", 
            RowBox[{"y", "-", 
             RowBox[{"2", " ", 
              SubscriptBox["h", "1"]}]}], ")"}]}]}], ")"}]}],
       TraditionalForm]}]}],
    FontSize->24], TraditionalForm]],
  FormatType->"TraditionalForm"],
 "\n",
 Cell[BoxData[
  FormBox[
   StyleBox[
    RowBox[{
     SubscriptBox["u", 
      RowBox[{"2", " "}]], "=", 
     FormBox[
      FormBox[
       FractionBox[
        RowBox[{"g", " ", 
         RowBox[{"sin", "(", "\[Alpha]", ")"}]}], 
        RowBox[{"2", " ", 
         SubscriptBox["\[Mu]", "2"]}]],
       TraditionalForm],
      TraditionalForm]}],
    FontSize->24], TraditionalForm]],
  FormatType->"TraditionalForm"],
 Cell[BoxData[
  StyleBox[
   RowBox[{"(", 
    RowBox[{
     RowBox[{
      RowBox[{"(", 
       RowBox[{"y", "-", 
        SubscriptBox["h", "1"]}], ")"}], " ", 
      RowBox[{"(", 
       RowBox[{
        RowBox[{"-", "y"}], "+", 
        SubscriptBox["h", "1"], "+", 
        RowBox[{"2", " ", 
         SubscriptBox["h", "2"]}]}], ")"}], " ", 
      SubscriptBox["\[Rho]", "2"]}], "+", 
     RowBox[{
      SubscriptBox["h", "1"], "  ", 
      RowBox[{"(", 
       RowBox[{
        RowBox[{
         SubscriptBox["h", "1"], " ", 
         SubscriptBox["\[Rho]", "1"]}], "+", 
        RowBox[{"2", " ", 
         SubscriptBox["h", "2"], " ", 
         SubscriptBox["\[Rho]", "2"]}]}], ")"}], 
      FractionBox[
       SubscriptBox["\[Mu]", "2"], 
       SubscriptBox["\[Mu]", "1"]]}]}], ")"}],
   FontSize->24]],
  CellChangeTimes->{3.5398722199324436`*^9}],
 "\n\n",
 Cell[BoxData[{
  FormBox[
   StyleBox[
    RowBox[{
     SubscriptBox["T", 
      RowBox[{"1", " "}]], "=", " ", 
     FormBox[
      RowBox[{"g", " ", 
       RowBox[{"sin", "(", "\[Alpha]", ")"}], " ", 
       RowBox[{"(", 
        RowBox[{
         RowBox[{
          SubscriptBox["h", "2"], " ", 
          SubscriptBox["\[Rho]", "2"]}], "+", 
         RowBox[{
          SubscriptBox["\[Rho]", "1"], " ", 
          RowBox[{"(", 
           RowBox[{
            SubscriptBox["h", "1"], "-", "y"}], ")"}]}]}], ")"}]}],
      TraditionalForm]}],
    FontSize->24], TraditionalForm], "\[IndentingNewLine]", 
  FormBox[
   StyleBox[
    RowBox[{
     SubscriptBox["T", 
      RowBox[{"2", " "}]], "=", 
     FormBox[
      RowBox[{"g", " ", 
       SubscriptBox["\[Rho]", "2"], " ", 
       RowBox[{"sin", "(", "\[Alpha]", ")"}], " ", 
       RowBox[{"(", 
        RowBox[{
         SubscriptBox["h", "1"], "+", 
         SubscriptBox["h", "2"], "-", "y"}], ")"}]}],
      TraditionalForm]}],
    FontSize->24], TraditionalForm]}],
  FormatType->"TraditionalForm",
  FontSize->14],
 StyleBox["\n",
  FontSize->14]
}], "Text",
 CellChangeTimes->{{3.539863981412227*^9, 3.5398640415066643`*^9}, {
  3.5398687926244125`*^9, 3.539868917267542*^9}, {3.539868971851664*^9, 
  3.539869018474331*^9}, {3.5398690933716145`*^9, 3.5398691158519*^9}, {
  3.5398691499868526`*^9, 3.5398692250751476`*^9}, {3.5398693311802163`*^9, 
  3.5398693311802163`*^9}, {3.539869628745236*^9, 3.539869655584771*^9}, {
  3.539870345520233*^9, 3.5398704903575172`*^9}, {3.539870723689863*^9, 
  3.5398707694484806`*^9}, {3.5398708329151106`*^9, 3.5398709254344025`*^9}, {
  3.539871008829172*^9, 3.539871181283036*^9}, {3.5398713790293465`*^9, 
  3.539871394766247*^9}, {3.539872395423481*^9, 3.539872497916343*^9}, {
  3.539872576143818*^9, 3.539872604667449*^9}}]
}, Open  ]]
}, Open  ]],

Cell[CellGroupData[{

Cell["scratch calculations.", "Section",
 CellChangeTimes->{{3.539872010083441*^9, 3.539872013521638*^9}}],

Cell[CellGroupData[{

Cell[BoxData[{
 RowBox[{"Clear", "[", "r", "]"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{"ExpandAll", "[", "w2", "]"}], " ", "/.", " ", 
  RowBox[{
   RowBox[{"(", 
    RowBox[{
     SubscriptBox["\[Mu]", "2"], "/", 
     SubscriptBox["\[Mu]", "1"]}], ")"}], " ", "\[Rule]", " ", 
   "r"}]}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{"%", " ", "/.", " ", "\[IndentingNewLine]", 
   RowBox[{"Collect", "[", 
    RowBox[{"%", ",", " ", "r"}], "]"}]}], "  ", "/.", " ", 
  RowBox[{"r", " ", "\[Rule]", " ", 
   RowBox[{
    SubscriptBox["\[Mu]", "2"], "/", 
    SubscriptBox["\[Mu]", "1"]}]}]}]}], "Input",
 CellChangeTimes->{{3.539872078152334*^9, 3.539872079792428*^9}}],

Cell[BoxData[
 FormBox[
  RowBox[{
   RowBox[{"-", 
    RowBox[{
     SubsuperscriptBox["h", "1", "2"], " ", 
     SubscriptBox["\[Rho]", "2"]}]}], "-", 
   RowBox[{"2", " ", 
    SubscriptBox["h", "1"], " ", 
    SubscriptBox["h", "2"], " ", 
    SubscriptBox["\[Rho]", "2"]}], "+", 
   RowBox[{
    SubsuperscriptBox["h", "1", "2"], " ", 
    SubscriptBox["\[Rho]", "1"], " ", "r"}], "+", 
   RowBox[{"2", " ", 
    SubscriptBox["h", "1"], " ", 
    SubscriptBox["h", "2"], " ", 
    SubscriptBox["\[Rho]", "2"], " ", "r"}], "+", 
   RowBox[{"2", " ", 
    SubscriptBox["h", "1"], " ", 
    SubscriptBox["\[Rho]", "2"], " ", "y"}], "+", 
   RowBox[{"2", " ", 
    SubscriptBox["h", "2"], " ", 
    SubscriptBox["\[Rho]", "2"], " ", "y"}], "-", 
   RowBox[{
    SubscriptBox["\[Rho]", "2"], " ", 
    SuperscriptBox["y", "2"]}]}], TraditionalForm]], "Output",
 CellChangeTimes->{3.5398720246912766`*^9}],

Cell[BoxData[
 RowBox[{
  RowBox[{
   RowBox[{"-", 
    SuperscriptBox["y", "2"]}], " ", 
   SubscriptBox["\[Rho]", "2"]}], "+", 
  RowBox[{"2", " ", "y", " ", 
   SubscriptBox["h", "1"], " ", 
   SubscriptBox["\[Rho]", "2"]}], "-", 
  RowBox[{
   SubsuperscriptBox["h", "1", "2"], " ", 
   SubscriptBox["\[Rho]", "2"]}], "+", 
  RowBox[{"2", " ", "y", " ", 
   SubscriptBox["h", "2"], " ", 
   SubscriptBox["\[Rho]", "2"]}], "-", 
  RowBox[{"2", " ", 
   SubscriptBox["h", "1"], " ", 
   SubscriptBox["h", "2"], " ", 
   SubscriptBox["\[Rho]", "2"]}], "+", 
  FractionBox[
   RowBox[{
    SubscriptBox["\[Mu]", "2"], " ", 
    RowBox[{"(", 
     RowBox[{
      RowBox[{
       SubsuperscriptBox["h", "1", "2"], " ", 
       SubscriptBox["\[Rho]", "1"]}], "+", 
      RowBox[{"2", " ", 
       SubscriptBox["h", "1"], " ", 
       SubscriptBox["h", "2"], " ", 
       SubscriptBox["\[Rho]", "2"]}]}], ")"}]}], 
   SubscriptBox["\[Mu]", "1"]]}]], "Output",
 CellChangeTimes->{3.5398720246932764`*^9}]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"FullSimplify", "[", 
  RowBox[{
   RowBox[{
    RowBox[{"-", 
     SuperscriptBox["y", "2"]}], " ", 
    SubscriptBox["\[Rho]", "2"]}], "+", 
   RowBox[{"2", " ", "y", " ", 
    SubscriptBox["h", "1"], " ", 
    SubscriptBox["\[Rho]", "2"]}], "-", 
   RowBox[{
    SubsuperscriptBox["h", "1", "2"], " ", 
    SubscriptBox["\[Rho]", "2"]}], "+", 
   RowBox[{"2", " ", "y", " ", 
    SubscriptBox["h", "2"], " ", 
    SubscriptBox["\[Rho]", "2"]}], "-", 
   RowBox[{"2", " ", 
    SubscriptBox["h", "1"], " ", 
    SubscriptBox["h", "2"], " ", 
    SubscriptBox["\[Rho]", "2"]}]}], "]"}]], "Input",
 CellChangeTimes->{{3.539872144548132*^9, 3.539872149111393*^9}}],

Cell[BoxData[
 RowBox[{
  RowBox[{"-", 
   RowBox[{"(", 
    RowBox[{"y", "-", 
     SubscriptBox["h", "1"]}], ")"}]}], " ", 
  RowBox[{"(", 
   RowBox[{"y", "-", 
    SubscriptBox["h", "1"], "-", 
    RowBox[{"2", " ", 
     SubscriptBox["h", "2"]}]}], ")"}], " ", 
  SubscriptBox["\[Rho]", "2"]}]], "Output",
 CellChangeTimes->{3.539872149881437*^9}]
}, Open  ]],

Cell[BoxData[
 RowBox[{"%", " ", "+", " ", 
  FractionBox[
   RowBox[{
    SubscriptBox["\[Mu]", "2"], " ", 
    RowBox[{"(", 
     RowBox[{
      RowBox[{
       SubsuperscriptBox["h", "1", "2"], " ", 
       SubscriptBox["\[Rho]", "1"]}], "+", 
      RowBox[{"2", " ", 
       SubscriptBox["h", "1"], " ", 
       SubscriptBox["h", "2"], " ", 
       SubscriptBox["\[Rho]", "2"]}]}], ")"}]}], 
   SubscriptBox["\[Mu]", "1"]]}]], "Input",
 CellChangeTimes->{{3.5398721581099076`*^9, 3.539872164391267*^9}}],

Cell[BoxData[
 RowBox[{
  RowBox[{
   RowBox[{"(", 
    RowBox[{"y", "-", 
     SubscriptBox["h", "1"]}], ")"}], " ", 
   RowBox[{"(", 
    RowBox[{
     RowBox[{"-", "y"}], "+", 
     SubscriptBox["h", "1"], "+", 
     RowBox[{"2", " ", 
      SubscriptBox["h", "2"]}]}], ")"}], " ", 
   SubscriptBox["\[Rho]", "2"]}], "+", 
  FractionBox[
   RowBox[{
    SubscriptBox["\[Mu]", "2"], " ", 
    SubscriptBox["h", "1"], " ", 
    RowBox[{"(", 
     RowBox[{
      RowBox[{
       SubscriptBox["h", "1"], " ", 
       SubscriptBox["\[Rho]", "1"]}], "+", 
      RowBox[{"2", " ", 
       SubscriptBox["h", "2"], " ", 
       SubscriptBox["\[Rho]", "2"]}]}], ")"}]}], 
   SubscriptBox["\[Mu]", "1"]]}]], "Input",
 CellChangeTimes->{{3.5398721773390074`*^9, 3.5398722087108016`*^9}}],

Cell[BoxData[
 RowBox[{
  RowBox[{
   RowBox[{"(", 
    RowBox[{"y", "-", 
     SubscriptBox["h", "1"]}], ")"}], " ", 
   RowBox[{"(", 
    RowBox[{
     RowBox[{"-", "y"}], "+", 
     SubscriptBox["h", "1"], "+", 
     RowBox[{"2", " ", 
      SubscriptBox["h", "2"]}]}], ")"}], " ", 
   SubscriptBox["\[Rho]", "2"]}], "+", 
  FractionBox[
   RowBox[{
    SubscriptBox["h", "1"], " ", 
    SubscriptBox["\[Mu]", "2"], " ", 
    RowBox[{"(", 
     RowBox[{
      RowBox[{
       SubscriptBox["h", "1"], " ", 
       SubscriptBox["\[Rho]", "1"]}], "+", 
      RowBox[{"2", " ", 
       SubscriptBox["h", "2"], " ", 
       SubscriptBox["\[Rho]", "2"]}]}], ")"}]}], 
   SubscriptBox["\[Mu]", "1"]]}]], "Output",
 CellChangeTimes->{3.5398722199324436`*^9}],

Cell[CellGroupData[{

Cell[BoxData[{
 RowBox[{"Clear", "[", "r", "]"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{
   RowBox[{"(", 
    RowBox[{"y", "-", 
     SubscriptBox["h", "1"]}], ")"}], " ", 
   RowBox[{"(", 
    RowBox[{
     RowBox[{"-", "y"}], "+", 
     SubscriptBox["h", "1"], "+", 
     RowBox[{"2", " ", 
      SubscriptBox["h", "2"]}]}], ")"}], " ", 
   SubscriptBox["\[Rho]", "2"]}], " ", "/.", " ", 
  RowBox[{
   RowBox[{"(", 
    RowBox[{"y", "-", 
     SubscriptBox["h", "1"]}], ")"}], " ", "\[Rule]", " ", 
   "r"}]}], "\[IndentingNewLine]", 
 RowBox[{"%", " ", "/.", " ", 
  RowBox[{
   RowBox[{
    RowBox[{"-", "y"}], "+", 
    SubscriptBox["h", "1"]}], " ", "\[Rule]", " ", 
   RowBox[{"-", "r"}]}]}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{"Collect", "[", 
   RowBox[{"%", ",", " ", "r"}], "]"}], " "}]}], "Input",
 CellChangeTimes->{{3.5398722225555935`*^9, 3.539872321747267*^9}}],

Cell[BoxData[
 RowBox[{"r", " ", 
  RowBox[{"(", 
   RowBox[{
    RowBox[{"-", "y"}], "+", 
    SubscriptBox["h", "1"], "+", 
    RowBox[{"2", " ", 
     SubscriptBox["h", "2"]}]}], ")"}], " ", 
  SubscriptBox["\[Rho]", "2"]}]], "Output",
 CellChangeTimes->{{3.539872272243436*^9, 3.5398723105856285`*^9}}],

Cell[BoxData[
 RowBox[{"r", " ", 
  RowBox[{"(", 
   RowBox[{
    RowBox[{"-", "r"}], "+", 
    RowBox[{"2", " ", 
     SubscriptBox["h", "2"]}]}], ")"}], " ", 
  SubscriptBox["\[Rho]", "2"]}]], "Output",
 CellChangeTimes->{{3.539872272243436*^9, 3.539872310587629*^9}}]
}, Open  ]],

Cell[BoxData[""], "Input",
 CellChangeTimes->{{3.5398723326398897`*^9, 3.5398723430974884`*^9}}],

Cell[CellGroupData[{

Cell[BoxData[""], "Input",
 CellChangeTimes->{{3.539872537778623*^9, 3.539872540903802*^9}, 
   3.5398729588807087`*^9, 3.5398731211519904`*^9}],

Cell[BoxData[
 FormBox[
  RowBox[{
   FractionBox[
    RowBox[{
     SubscriptBox["h", "1"], " ", 
     SubscriptBox["\[Mu]", "2"], " ", 
     RowBox[{"(", 
      RowBox[{
       RowBox[{
        SubscriptBox["h", "1"], " ", 
        SubscriptBox["\[Rho]", "1"]}], "+", 
       RowBox[{"2", " ", 
        SubscriptBox["h", "2"], " ", 
        SubscriptBox["\[Rho]", "2"]}]}], ")"}]}], 
    SubscriptBox["\[Mu]", "1"]], "+", 
   RowBox[{
    SubscriptBox["\[Rho]", "2"], " ", 
    RowBox[{"(", 
     RowBox[{"y", "-", 
      SubscriptBox["h", "1"]}], ")"}], " ", 
    RowBox[{"(", 
     RowBox[{
      SubscriptBox["h", "1"], "+", 
      RowBox[{"2", " ", 
       SubscriptBox["h", "2"]}], "-", "y"}], ")"}]}]}], 
  TraditionalForm]], "Output",
 CellChangeTimes->{3.5398725420638685`*^9}]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{
  RowBox[{"(*", " ", 
   RowBox[{
   "another", " ", "check", " ", "of", " ", "my", " ", "hand", " ", 
    "calculations"}], " ", "*)"}], "\[IndentingNewLine]", 
  RowBox[{
   RowBox[{"Clear", "[", 
    RowBox[{
    "rho1", ",", " ", "rho2", ",", " ", "h1", ",", " ", "h2", ",", " ", "mu1",
      ",", " ", "mu2", ",", " ", "x"}], "]"}], "\[IndentingNewLine]", 
   RowBox[{"rho1", " ", ":=", " ", 
    RowBox[{"rho", "[", 
     RowBox[{"[", "1", "]"}], "]"}]}], "\[IndentingNewLine]", 
   RowBox[{"rho2", " ", ":=", " ", 
    RowBox[{"rho", "[", 
     RowBox[{"[", "2", "]"}], "]"}]}], "\[IndentingNewLine]", 
   RowBox[{"h1", " ", ":=", " ", 
    RowBox[{"hi", "[", 
     RowBox[{"[", "1", "]"}], "]"}]}], "\[IndentingNewLine]", 
   RowBox[{"h2", " ", ":=", " ", 
    RowBox[{"hi", "[", 
     RowBox[{"[", "2", "]"}], "]"}]}], "\[IndentingNewLine]", 
   RowBox[{"mu1", " ", ":=", " ", 
    RowBox[{"mu", "[", 
     RowBox[{"[", "1", "]"}], "]"}]}], "\[IndentingNewLine]", 
   RowBox[{"mu2", " ", ":=", " ", 
    RowBox[{"mu", "[", 
     RowBox[{"[", "2", "]"}], "]"}]}], "\[IndentingNewLine]", 
   RowBox[{"x", " ", "=", " ", 
    RowBox[{
     RowBox[{"rho2", " ", 
      RowBox[{"(", " ", 
       RowBox[{
        RowBox[{"2", " ", 
         RowBox[{"(", 
          RowBox[{"h1", " ", "+", " ", "h2"}], ")"}], " ", "y"}], " ", "-", 
        " ", 
        RowBox[{"y", "^", "2"}]}], ")"}]}], " ", "+", " ", 
     RowBox[{"h1", " ", 
      RowBox[{"(", 
       RowBox[{
        RowBox[{
         RowBox[{"(", 
          RowBox[{"mu2", "/", "mu1"}], ")"}], 
         RowBox[{"(", 
          RowBox[{
           RowBox[{"rho1", " ", "h1"}], " ", "+", " ", 
           RowBox[{"2", " ", "rho2", " ", "h2"}]}], ")"}]}], " ", "-", " ", 
        RowBox[{"rho2", " ", 
         RowBox[{"(", 
          RowBox[{
           RowBox[{"2", " ", "h2"}], " ", "+", " ", "h1"}], ")"}]}]}], ")"}]}]
      }]}], " ", "\[IndentingNewLine]", 
   RowBox[{"FullSimplify", "[", 
    RowBox[{
     RowBox[{
      RowBox[{"(", 
       RowBox[{"y", "-", 
        SubscriptBox["h", "1"]}], ")"}], " ", 
      RowBox[{"(", 
       RowBox[{
        RowBox[{"-", "y"}], "+", 
        SubscriptBox["h", "1"], "+", 
        RowBox[{"2", " ", 
         SubscriptBox["h", "2"]}]}], ")"}], " ", 
      SubscriptBox["\[Rho]", "2"]}], "+", 
     FractionBox[
      RowBox[{
       SubscriptBox["h", "1"], " ", 
       SubscriptBox["\[Mu]", "2"], " ", 
       RowBox[{"(", 
        RowBox[{
         RowBox[{
          SubscriptBox["h", "1"], " ", 
          SubscriptBox["\[Rho]", "1"]}], "+", 
         RowBox[{"2", " ", 
          SubscriptBox["h", "2"], " ", 
          SubscriptBox["\[Rho]", "2"]}]}], ")"}]}], 
      SubscriptBox["\[Mu]", "1"]], " ", "-", " ", "x"}], "]"}], " ", 
   "\[IndentingNewLine]", 
   RowBox[{"FullSimplify", "[", 
    RowBox[{"x", " ", "-", " ", "w2"}], "]"}], " ", 
   RowBox[{"(*", " ", 
    RowBox[{
    "expect", " ", "0", " ", "for", " ", "both", " ", "the", " ", "original", 
     " ", "calculation", " ", "and", " ", "the", " ", "hand", " ", 
     "manipulated", " ", "version", " ", "of", " ", 
     RowBox[{"it", "."}]}], " ", "*)"}]}]}]], "Input",
 CellChangeTimes->{{3.539872697012731*^9, 3.5398729668411646`*^9}, {
  3.539873022597353*^9, 3.539873025358511*^9}, {3.539873059136443*^9, 
  3.5398730996327596`*^9}, {3.539873130727538*^9, 3.5398731472674837`*^9}, {
  3.539873238180684*^9, 3.5398732556466827`*^9}}],

Cell[BoxData[
 RowBox[{
  RowBox[{
   RowBox[{"(", 
    RowBox[{
     RowBox[{"-", 
      SuperscriptBox["y", "2"]}], "+", 
     RowBox[{"2", " ", "y", " ", 
      RowBox[{"(", 
       RowBox[{
        SubscriptBox["h", "1"], "+", 
        SubscriptBox["h", "2"]}], ")"}]}]}], ")"}], " ", 
   SubscriptBox["\[Rho]", "2"]}], "+", 
  RowBox[{
   SubscriptBox["h", "1"], " ", 
   RowBox[{"(", 
    RowBox[{
     RowBox[{
      RowBox[{"-", 
       RowBox[{"(", 
        RowBox[{
         SubscriptBox["h", "1"], "+", 
         RowBox[{"2", " ", 
          SubscriptBox["h", "2"]}]}], ")"}]}], " ", 
      SubscriptBox["\[Rho]", "2"]}], "+", 
     FractionBox[
      RowBox[{
       SubscriptBox["\[Mu]", "2"], " ", 
       RowBox[{"(", 
        RowBox[{
         RowBox[{
          SubscriptBox["h", "1"], " ", 
          SubscriptBox["\[Rho]", "1"]}], "+", 
         RowBox[{"2", " ", 
          SubscriptBox["h", "2"], " ", 
          SubscriptBox["\[Rho]", "2"]}]}], ")"}]}], 
      SubscriptBox["\[Mu]", "1"]]}], ")"}]}]}]], "Output",
 CellChangeTimes->{{3.5398727576591997`*^9, 3.539872812268323*^9}, {
   3.5398728844954543`*^9, 3.539872936357421*^9}, 3.539872967619209*^9, 
   3.539873029608754*^9, {3.5398730598804855`*^9, 3.5398731009188333`*^9}, 
   3.53987314789552*^9, {3.539873223228829*^9, 3.539873256922756*^9}}],

Cell[BoxData["0"], "Output",
 CellChangeTimes->{{3.5398727576591997`*^9, 3.539872812268323*^9}, {
   3.5398728844954543`*^9, 3.539872936357421*^9}, 3.539872967619209*^9, 
   3.539873029608754*^9, {3.5398730598804855`*^9, 3.5398731009188333`*^9}, 
   3.53987314789552*^9, {3.539873223228829*^9, 3.539873256924756*^9}}],

Cell[BoxData["0"], "Output",
 CellChangeTimes->{{3.5398727576591997`*^9, 3.539872812268323*^9}, {
   3.5398728844954543`*^9, 3.539872936357421*^9}, 3.539872967619209*^9, 
   3.539873029608754*^9, {3.5398730598804855`*^9, 3.5398731009188333`*^9}, 
   3.53987314789552*^9, {3.539873223228829*^9, 3.5398732569257565`*^9}}]
}, Open  ]]
}, Open  ]]
}, Open  ]]
},
WindowSize->{1016, 637},
WindowMargins->{{1, Automatic}, {Automatic, 13}},
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
Cell[1257, 32, 141, 3, 83, "Title"],
Cell[CellGroupData[{
Cell[1423, 39, 98, 1, 71, "Section"],
Cell[1524, 42, 403, 7, 47, "Text"],
Cell[CellGroupData[{
Cell[1952, 53, 7827, 198, 612, "Input"],
Cell[9782, 253, 2345, 65, 93, "Output"]
}, Open  ]],
Cell[12142, 321, 5094, 134, 472, "Input"],
Cell[CellGroupData[{
Cell[17261, 459, 106, 1, 36, "Subsection"],
Cell[17370, 462, 4112, 133, 216, "Text"]
}, Open  ]]
}, Open  ]],
Cell[CellGroupData[{
Cell[21531, 601, 106, 1, 71, "Section"],
Cell[CellGroupData[{
Cell[21662, 606, 677, 18, 92, "Input"],
Cell[22342, 626, 904, 27, 34, "Output"],
Cell[23249, 655, 999, 32, 53, "Output"]
}, Open  ]],
Cell[CellGroupData[{
Cell[24285, 692, 686, 20, 33, "Input"],
Cell[24974, 714, 352, 12, 30, "Output"]
}, Open  ]],
Cell[25341, 729, 507, 15, 53, "Input"],
Cell[25851, 746, 778, 26, 49, "Input"],
Cell[26632, 774, 753, 26, 49, "Output"],
Cell[CellGroupData[{
Cell[27410, 804, 893, 28, 92, "Input"],
Cell[28306, 834, 306, 9, 30, "Output"],
Cell[28615, 845, 270, 8, 30, "Output"]
}, Open  ]],
Cell[28900, 856, 96, 1, 31, "Input"],
Cell[CellGroupData[{
Cell[29021, 861, 144, 2, 31, "Input"],
Cell[29168, 865, 787, 27, 51, "Output"]
}, Open  ]],
Cell[CellGroupData[{
Cell[29992, 897, 3445, 92, 270, "Input"],
Cell[33440, 991, 1324, 40, 49, "Output"],
Cell[34767, 1033, 317, 4, 30, "Output"],
Cell[35087, 1039, 319, 4, 30, "Output"]
}, Open  ]]
}, Open  ]]
}, Open  ]]
}
]
*)

(* End of internal cache information *)

(* NotebookSignature CuTHJ#1FdigXzAwALF4uHBR1 *)
