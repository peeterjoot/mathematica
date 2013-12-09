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
NotebookDataLength[     98967,       2394]
NotebookOptionsPosition[     95526,       2271]
NotebookOutlinePosition[     95867,       2286]
CellTagsIndexPosition[     95824,       2283]
WindowFrame->Normal*)

(* Beginning of Notebook Content *)
Notebook[{

Cell[CellGroupData[{
Cell["Problem set II.  Question 1c", "Section",
 CellChangeTimes->{{3.559849512903304*^9, 3.559849522843872*^9}}],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"Integrate", "[", " ", 
  RowBox[{
   RowBox[{"E", "^", 
    RowBox[{"(", 
     RowBox[{
      RowBox[{
       RowBox[{"-", 
        RowBox[{"x", "^", "2"}]}], "/", 
       RowBox[{"\[Sigma]", "^", "2"}]}], " ", "-", " ", 
      RowBox[{"I", " ", "k", " ", "\[Alpha]", " ", "x"}]}], ")"}]}], ",", " ", 
   RowBox[{"{", 
    RowBox[{"x", ",", " ", 
     RowBox[{"-", "Infinity"}], ",", " ", "Infinity"}], "}"}]}], 
  "]"}]], "Input",
 CellChangeTimes->{{3.5598320215408554`*^9, 3.5598320814792833`*^9}, {
  3.559849455501021*^9, 3.559849456456075*^9}}],

Cell[BoxData[
 RowBox[{"ConditionalExpression", "[", 
  RowBox[{
   FractionBox[
    RowBox[{
     SuperscriptBox["\[ExponentialE]", 
      RowBox[{
       RowBox[{"-", 
        FractionBox["1", "4"]}], " ", 
       SuperscriptBox["k", "2"], " ", 
       SuperscriptBox["\[Alpha]", "2"], " ", 
       SuperscriptBox["\[Sigma]", "2"]}]], " ", 
     SqrtBox["\[Pi]"]}], 
    SqrtBox[
     FractionBox["1", 
      SuperscriptBox["\[Sigma]", "2"]]]], ",", 
   RowBox[{
    RowBox[{"Re", "[", 
     SuperscriptBox["\[Sigma]", "2"], "]"}], ">", "0"}]}], "]"}]], "Output",
 CellChangeTimes->{3.5598320905027995`*^9}]
}, Open  ]]
}, Open  ]],

Cell[CellGroupData[{

Cell["Question 2", "Section",
 CellChangeTimes->{{3.559849532719437*^9, 3.559849533715494*^9}}],

Cell[CellGroupData[{

Cell[BoxData[{
 RowBox[{"Integrate", "[", " ", 
  RowBox[{
   RowBox[{"E", "^", 
    RowBox[{"(", 
     RowBox[{"I", " ", "Pi", " ", 
      RowBox[{
       RowBox[{"v", "^", "2"}], "/", "2"}]}], ")"}]}], ",", " ", 
   RowBox[{"{", 
    RowBox[{"v", ",", " ", 
     RowBox[{"-", "Infinity"}], ",", " ", "Infinity"}], "}"}]}], 
  "]"}], "\[IndentingNewLine]", 
 RowBox[{"Integrate", "[", " ", 
  RowBox[{
   RowBox[{"E", "^", 
    RowBox[{"(", 
     RowBox[{"I", " ", "Pi", " ", 
      RowBox[{
       RowBox[{"v", "^", "2"}], "/", "2"}]}], ")"}]}], ",", " ", 
   RowBox[{"{", 
    RowBox[{"v", ",", " ", "a", ",", " ", "b"}], "}"}]}], 
  "]"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{"Clear", "[", 
   RowBox[{"s", ",", " ", "fresnelC", ",", " ", "fresnelS", ",", " ", "u"}], 
   "]"}], "\[IndentingNewLine]", 
  RowBox[{"(*", 
   RowBox[{
    RowBox[{"fresnelC", "[", "s_", "]"}], " ", "=", " ", 
    RowBox[{
     RowBox[{
      RowBox[{"Integrate", "[", " ", 
       RowBox[{
        RowBox[{"Cos", "[", 
         RowBox[{"Pi", " ", 
          RowBox[{
           RowBox[{"u", "^", "2"}], "/", "2"}]}], "]"}], ",", " ", 
        RowBox[{"{", 
         RowBox[{"u", ",", " ", "0", ",", " ", "s"}], "}"}]}], "]"}], 
      "\[IndentingNewLine]", 
      RowBox[{"fresnelS", "[", "s_", "]"}]}], " ", "=", " ", 
     RowBox[{"Integrate", "[", " ", 
      RowBox[{
       RowBox[{"Sin", "[", 
        RowBox[{"Pi", " ", 
         RowBox[{
          RowBox[{"u", "^", "2"}], "/", "2"}]}], "]"}], ",", " ", 
       RowBox[{"{", 
        RowBox[{"u", ",", " ", "0", ",", " ", "s"}], "}"}]}], "]"}]}]}], 
   "*)"}]}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{"fresnelC", "[", "s_", "]"}], " ", ":=", " ", 
  RowBox[{"FresnelC", "[", "s", "]"}]}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{"fresnelS", "[", "s_", "]"}], " ", ":=", " ", 
  RowBox[{"FresnelS", "[", "s", "]"}]}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{
   RowBox[{"iRatio", "[", "s_", "]"}], " ", ":=", " ", 
   RowBox[{"2", " ", 
    RowBox[{"(", " ", 
     RowBox[{
      RowBox[{
       RowBox[{"fresnelC", "[", "s", "]"}], "^", "2"}], " ", "+", " ", 
      RowBox[{
       RowBox[{"fresnelS", "[", "s", "]"}], "^", "2"}]}], ")"}]}]}], 
  "\[IndentingNewLine]", "\[IndentingNewLine]", 
  RowBox[{"(*", " ", 
   RowBox[{"modernOpticsProblemSet2Problem2Fig2", ".", "png"}], " ", 
   "*)"}]}], "\[IndentingNewLine]", 
 RowBox[{"Manipulate", "[", "\[IndentingNewLine]", 
  RowBox[{
   RowBox[{"Plot", "[", " ", 
    RowBox[{
     RowBox[{"iRatio", "[", "s", "]"}], ",", " ", 
     RowBox[{"{", 
      RowBox[{"s", ",", " ", "0", ",", " ", "r"}], "}"}], ",", " ", 
     RowBox[{"(*", 
      RowBox[{
       RowBox[{"PlotRange", " ", "\[Rule]", " ", 
        RowBox[{"{", 
         RowBox[{"0", ",", " ", "0.2"}], "}"}]}], ","}], "*)"}], " ", 
     RowBox[{"AxesLabel", "\[Rule]", 
      RowBox[{"{", 
       RowBox[{
        SubscriptBox["u", "0"], ",", 
        RowBox[{
         SubscriptBox["\"\<I\>\"", "f"], "/", 
         SubscriptBox["\"\<I\>\"", "\[Infinity]"]}]}], "}"}]}]}], "]"}], 
   "\[IndentingNewLine]", ",", "\[IndentingNewLine]", 
   RowBox[{"{", 
    RowBox[{
     RowBox[{"{", 
      RowBox[{"r", ",", " ", "3"}], "}"}], ",", " ", "1", ",", " ", "20", ",",
      " ", 
     RowBox[{"Appearance", "\[Rule]", "\"\<Labeled\>\""}]}], "}"}]}], 
  "\[IndentingNewLine]", "]"}], "\[IndentingNewLine]", 
 RowBox[{"Clear", "[", 
  RowBox[{"p1", ",", " ", "p2"}], "]"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{"Manipulate", "[", "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{"p1", " ", "=", " ", 
     RowBox[{"ParametricPlot", "[", 
      RowBox[{
       RowBox[{"{", 
        RowBox[{
         RowBox[{"fresnelC", "[", "s", "]"}], ",", " ", 
         RowBox[{"fresnelS", "[", "s", "]"}]}], "}"}], ",", " ", 
       RowBox[{"{", 
        RowBox[{"s", ",", " ", 
         RowBox[{"-", "r"}], ",", " ", "r"}], "}"}], ",", 
       RowBox[{"AxesLabel", "\[Rule]", 
        RowBox[{"{", " ", 
         RowBox[{
          RowBox[{"\"\<C\>\"", "[", "s", "]"}], ",", " ", 
          RowBox[{"I", " ", 
           RowBox[{"\"\<S\>\"", "[", "s", "]"}]}]}], "}"}]}]}], 
      "\[IndentingNewLine]", 
      RowBox[{"(*", 
       RowBox[{",", " ", 
        RowBox[{"PlotPoints", " ", "\[Rule]", " ", "50"}], ",", " ", 
        RowBox[{"MaxRecursion", "\[Rule]", "1"}]}], "*)"}], 
      "\[IndentingNewLine]", "]"}]}], "\[IndentingNewLine]", ",", 
    RowBox[{"{", 
     RowBox[{
      RowBox[{"{", 
       RowBox[{"r", ",", " ", "1.2093781285965426`"}], "}"}], ",", " ", "1", 
      ",", " ", "10"}], "}"}]}], "\[IndentingNewLine]", "]"}], 
  "\[IndentingNewLine]", "\[IndentingNewLine]", 
  RowBox[{"(*", 
   RowBox[{"conruSpiralPoints", " ", ":=", " ", 
    RowBox[{
     RowBox[{
      RowBox[{"Table", "[", 
       RowBox[{
        RowBox[{"{", 
         RowBox[{
          RowBox[{"fresnelC", "[", "s", "]"}], ",", " ", 
          RowBox[{"fresnelS", "[", "s", "]"}]}], "}"}], ",", " ", 
        RowBox[{"{", 
         RowBox[{"s", ",", " ", 
          RowBox[{"-", "5"}], ",", " ", "5", ",", " ", "0.1"}], "}"}]}], 
       "]"}], "\[IndentingNewLine]", "p2"}], " ", "=", " ", 
     RowBox[{
      RowBox[{"ListPlot", "[", " ", 
       RowBox[{"conruSpiralPoints", ",", " ", 
        RowBox[{"Axes", " ", "\[Rule]", " ", "None"}], ",", " ", 
        RowBox[{"PlotStyle", "\[Rule]", 
         RowBox[{"Directive", "[", 
          RowBox[{"Red", ",", "Thick"}], "]"}]}]}], "]"}], 
      "\[IndentingNewLine]", 
      RowBox[{"Show", "[", 
       RowBox[{"Graphics", "[", 
        RowBox[{"p1", ",", " ", "p2"}], "]"}], "]"}]}]}]}], "*)"}], 
  "\[IndentingNewLine]"}], "\[IndentingNewLine]", 
 RowBox[{"NMaximize", "[", 
  RowBox[{
   RowBox[{"{", 
    RowBox[{
     RowBox[{"iRatio", "[", "x", "]"}], ",", " ", 
     RowBox[{"x", ">", " ", "0"}]}], "}"}], ",", " ", "x"}], 
  "]"}], "\[IndentingNewLine]", 
 RowBox[{"Sqrt", "[", "1.5", "]"}], "\[IndentingNewLine]"}], "Input",
 CellChangeTimes->{{3.55983552794141*^9, 3.559835588383867*^9}, {
  3.5598491971952467`*^9, 3.5598491999044013`*^9}, {3.559849425231289*^9, 
  3.559849482268552*^9}, {3.559850098834817*^9, 3.559850098905821*^9}, {
  3.559850405558361*^9, 3.559850419268145*^9}, {3.559851132907963*^9, 
  3.5598511841598945`*^9}}],

Cell[BoxData[
 RowBox[{"1", "+", "\[ImaginaryI]"}]], "Output",
 CellChangeTimes->{{3.5598494406881733`*^9, 3.5598494842526655`*^9}, 
   3.5598501029510527`*^9, 3.559850422339321*^9, 3.5598511861560087`*^9}],

Cell[BoxData[
 RowBox[{
  RowBox[{"-", 
   RowBox[{"FresnelC", "[", "a", "]"}]}], "+", 
  RowBox[{"FresnelC", "[", "b", "]"}], "-", 
  RowBox[{"\[ImaginaryI]", " ", 
   RowBox[{"(", 
    RowBox[{
     RowBox[{"FresnelS", "[", "a", "]"}], "-", 
     RowBox[{"FresnelS", "[", "b", "]"}]}], ")"}]}]}]], "Output",
 CellChangeTimes->{{3.5598494406881733`*^9, 3.5598494842526655`*^9}, 
   3.5598501029510527`*^9, 3.559850422339321*^9, 3.5598511861740093`*^9}],

Cell[BoxData[
 TagBox[
  StyleBox[
   DynamicModuleBox[{$CellContext`r$$ = 3, Typeset`show$$ = True, 
    Typeset`bookmarkList$$ = {}, Typeset`bookmarkMode$$ = "Menu", 
    Typeset`animator$$, Typeset`animvar$$ = 1, Typeset`name$$ = 
    "\"untitled\"", Typeset`specs$$ = {{{
       Hold[$CellContext`r$$], 3}, 1, 20}}, Typeset`size$$ = {
    360., {126., 130.}}, Typeset`update$$ = 0, Typeset`initDone$$, 
    Typeset`skipInitDone$$ = True, $CellContext`r$154846$$ = 0}, 
    DynamicBox[Manipulate`ManipulateBoxes[
     1, StandardForm, "Variables" :> {$CellContext`r$$ = 3}, 
      "ControllerVariables" :> {
        Hold[$CellContext`r$$, $CellContext`r$154846$$, 0]}, 
      "OtherVariables" :> {
       Typeset`show$$, Typeset`bookmarkList$$, Typeset`bookmarkMode$$, 
        Typeset`animator$$, Typeset`animvar$$, Typeset`name$$, 
        Typeset`specs$$, Typeset`size$$, Typeset`update$$, Typeset`initDone$$,
         Typeset`skipInitDone$$}, "Body" :> Plot[
        $CellContext`iRatio[$CellContext`s], {$CellContext`s, 
         0, $CellContext`r$$}, AxesLabel -> {
          Subscript[$CellContext`u, 0], Subscript["I", $CellContext`f]/
          Subscript["I", Infinity]}], 
      "Specifications" :> {{{$CellContext`r$$, 3}, 1, 20, Appearance -> 
         "Labeled"}}, "Options" :> {}, "DefaultOptions" :> {}],
     ImageSizeCache->{409., {172., 177.}},
     SingleEvaluation->True],
    Deinitialization:>None,
    DynamicModuleValues:>{},
    SynchronousInitialization->True,
    UnsavedVariables:>{Typeset`initDone$$},
    UntrackedVariables:>{Typeset`size$$}], "Manipulate",
   Deployed->True,
   StripOnInput->False],
  Manipulate`InterpretManipulate[1]]], "Output",
 CellChangeTimes->{{3.5598494406881733`*^9, 3.5598494842526655`*^9}, 
   3.5598501029510527`*^9, 3.559850422339321*^9, 3.5598511861920104`*^9}],

Cell[BoxData[
 TagBox[
  StyleBox[
   DynamicModuleBox[{$CellContext`r$$ = 1.81, Typeset`show$$ = True, 
    Typeset`bookmarkList$$ = {}, Typeset`bookmarkMode$$ = "Menu", 
    Typeset`animator$$, Typeset`animvar$$ = 1, Typeset`name$$ = 
    "\"untitled\"", Typeset`specs$$ = {{{
       Hold[$CellContext`r$$], 1.2093781285965426`}, 1, 10}}, 
    Typeset`size$$ = {360., {174., 178.}}, Typeset`update$$ = 0, 
    Typeset`initDone$$, Typeset`skipInitDone$$ = 
    True, $CellContext`r$154870$$ = 0}, 
    DynamicBox[Manipulate`ManipulateBoxes[
     1, StandardForm, "Variables" :> {$CellContext`r$$ = 1.2093781285965426`},
       "ControllerVariables" :> {
        Hold[$CellContext`r$$, $CellContext`r$154870$$, 0]}, 
      "OtherVariables" :> {
       Typeset`show$$, Typeset`bookmarkList$$, Typeset`bookmarkMode$$, 
        Typeset`animator$$, Typeset`animvar$$, Typeset`name$$, 
        Typeset`specs$$, Typeset`size$$, Typeset`update$$, Typeset`initDone$$,
         Typeset`skipInitDone$$}, "Body" :> ($CellContext`p1 = ParametricPlot[{
          $CellContext`fresnelC[$CellContext`s], 
          $CellContext`fresnelS[$CellContext`s]}, {$CellContext`s, \
-$CellContext`r$$, $CellContext`r$$}, AxesLabel -> {
           "C"[$CellContext`s], I "S"[$CellContext`s]}]), 
      "Specifications" :> {{{$CellContext`r$$, 1.2093781285965426`}, 1, 10}}, 
      "Options" :> {}, "DefaultOptions" :> {}],
     ImageSizeCache->{409., {220., 225.}},
     SingleEvaluation->True],
    Deinitialization:>None,
    DynamicModuleValues:>{},
    SynchronousInitialization->True,
    UnsavedVariables:>{Typeset`initDone$$},
    UntrackedVariables:>{Typeset`size$$}], "Manipulate",
   Deployed->True,
   StripOnInput->False],
  Manipulate`InterpretManipulate[1]]], "Output",
 CellChangeTimes->{{3.5598494406881733`*^9, 3.5598494842526655`*^9}, 
   3.5598501029510527`*^9, 3.559850422339321*^9, 3.5598511864240236`*^9}],

Cell[BoxData[
 RowBox[{"{", 
  RowBox[{"1.801416353860414`", ",", 
   RowBox[{"{", 
    RowBox[{"x", "\[Rule]", "1.2093781285965426`"}], "}"}]}], "}"}]], "Output",
 CellChangeTimes->{{3.5598494406881733`*^9, 3.5598494842526655`*^9}, 
   3.5598501029510527`*^9, 3.559850422339321*^9, 3.559851187007057*^9}],

Cell[BoxData["1.224744871391589`"], "Output",
 CellChangeTimes->{{3.5598494406881733`*^9, 3.5598494842526655`*^9}, 
   3.5598501029510527`*^9, 3.559850422339321*^9, 3.559851187009057*^9}]
}, Open  ]],

Cell[CellGroupData[{

Cell["Part (e)", "Subsection",
 CellChangeTimes->{{3.559863384402708*^9, 3.559863386736842*^9}}],

Cell[CellGroupData[{

Cell[BoxData[{
 RowBox[{"Clear", "[", 
  RowBox[{
  "u", ",", " ", "p", ",", " ", "r", ",", " ", "psi", ",", " ", "m", ",", " ",
    "psiScaled", ",", " ", "intensity"}], "]"}], "\[IndentingNewLine]", 
 RowBox[{"r", " ", "=", " ", "7"}], "\[IndentingNewLine]", 
 RowBox[{"u", " ", "=", " ", 
  RowBox[{"Table", "[", " ", 
   RowBox[{
    RowBox[{"Sqrt", "[", 
     RowBox[{
      RowBox[{"3", "/", "2"}], " ", "+", " ", 
      RowBox[{"2", " ", "m"}]}], "]"}], ",", " ", 
    RowBox[{"{", 
     RowBox[{"m", ",", " ", "0", ",", " ", "r"}], "}"}]}], 
   "]"}]}], "\[IndentingNewLine]", 
 RowBox[{"p", " ", "=", " ", 
  RowBox[{
   RowBox[{"Table", "[", " ", 
    RowBox[{
     RowBox[{
      RowBox[{"FresnelC", "[", 
       RowBox[{"u", "[", 
        RowBox[{"[", "m", "]"}], "]"}], "]"}], " ", "+", " ", 
      RowBox[{"I", " ", 
       RowBox[{"FresnelS", "[", 
        RowBox[{"u", "[", 
         RowBox[{"[", "m", "]"}], "]"}], "]"}]}]}], ",", " ", 
     RowBox[{"{", 
      RowBox[{"m", ",", " ", "1", ",", " ", 
       RowBox[{"r", "+", "1"}]}], "}"}]}], "]"}], " ", "//", " ", 
   "N"}]}], "\[IndentingNewLine]", 
 RowBox[{"psi", " ", "=", " ", 
  RowBox[{"List", "[", 
   RowBox[{
    RowBox[{"p", "[", 
     RowBox[{"[", "1", "]"}], "]"}], ",", " ", 
    RowBox[{
     RowBox[{"p", "[", 
      RowBox[{"[", "3", "]"}], "]"}], "-", " ", 
     RowBox[{"p", "[", 
      RowBox[{"[", "2", "]"}], "]"}]}], ",", " ", 
    RowBox[{
     RowBox[{"p", "[", 
      RowBox[{"[", "5", "]"}], "]"}], "-", 
     RowBox[{"p", "[", 
      RowBox[{"[", "4", "]"}], "]"}]}]}], "]"}]}], "\[IndentingNewLine]", 
 RowBox[{"Arg", "[", "psi", "]"}], "\[IndentingNewLine]", 
 RowBox[{"psiScaled", " ", "=", " ", 
  RowBox[{
   RowBox[{"(", 
    RowBox[{"1", " ", "-", " ", "I"}], ")"}], " ", 
   "psi"}]}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{"waveFunctions", " ", "=", " ", 
   RowBox[{"List", "[", 
    RowBox[{
     RowBox[{"psiScaled", "[", 
      RowBox[{"[", "1", "]"}], "]"}], ",", " ", 
     RowBox[{
      RowBox[{"psiScaled", "[", 
       RowBox[{"[", "1", "]"}], "]"}], " ", "+", " ", 
      RowBox[{"psiScaled", "[", 
       RowBox[{"[", "2", "]"}], "]"}]}], ",", " ", 
     RowBox[{
      RowBox[{"psiScaled", "[", 
       RowBox[{"[", "1", "]"}], "]"}], " ", "+", " ", 
      RowBox[{"psiScaled", "[", 
       RowBox[{"[", "2", "]"}], "]"}], " ", "+", " ", 
      RowBox[{"psiScaled", "[", 
       RowBox[{"[", "3", "]"}], "]"}]}]}], "]"}]}], 
  "\[IndentingNewLine]"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{"Arg", "[", "waveFunctions", "]"}], 
  "\[IndentingNewLine]"}], "\[IndentingNewLine]", 
 RowBox[{"intensity", " ", "=", " ", 
  RowBox[{"Table", "[", 
   RowBox[{
    RowBox[{
     RowBox[{"Abs", "[", 
      RowBox[{"waveFunctions", "[", 
       RowBox[{"[", "m", "]"}], "]"}], "]"}], "^", "2"}], ",", " ", 
    RowBox[{"{", 
     RowBox[{"m", ",", " ", "1", ",", " ", "3"}], "}"}]}], 
   "]"}]}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{"intensity", "[", 
   RowBox[{"[", "2", "]"}], "]"}], "/", 
  RowBox[{"intensity", "[", 
   RowBox[{"[", "1", "]"}], "]"}]}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{"intensity", "[", 
   RowBox[{"[", "3", "]"}], "]"}], "/", 
  RowBox[{"intensity", "[", 
   RowBox[{"[", "1", "]"}], "]"}]}]}], "Input",
 CellChangeTimes->{{3.5598607708742228`*^9, 3.559860939674878*^9}, {
  3.5598609821023045`*^9, 3.559861069075279*^9}, {3.559861099172001*^9, 
  3.5598610994230146`*^9}, {3.559861133058939*^9, 3.5598612285323997`*^9}, {
  3.5598613362505608`*^9, 3.559861380976119*^9}, {3.559861459304599*^9, 
  3.5598614694231777`*^9}, {3.5598617239577365`*^9, 3.5598617241027446`*^9}, {
  3.559862294111347*^9, 3.5598623518476496`*^9}, {3.5598626756501703`*^9, 
  3.5598626917900934`*^9}, {3.5598627275551386`*^9, 3.559862814538114*^9}, {
  3.559862855359449*^9, 3.559862877324705*^9}, {3.5598634082380714`*^9, 
  3.559863500794366*^9}}],

Cell[BoxData["7"], "Output",
 CellChangeTimes->{
  3.5598608150637503`*^9, {3.5598609346705914`*^9, 3.5598609404419217`*^9}, {
   3.55986105072423*^9, 3.559861100189059*^9}, {3.5598611396933184`*^9, 
   3.559861164967764*^9}, {3.559861195919534*^9, 3.559861232420622*^9}, {
   3.559861357684787*^9, 3.55986138432031*^9}, {3.5598614605596704`*^9, 
   3.559861471681307*^9}, 3.559861726155862*^9, 3.559862316845648*^9, 
   3.559862352537689*^9, {3.5598626851287117`*^9, 3.5598626939292154`*^9}, 
   3.559862747472278*^9, 3.5598628153811617`*^9, 3.559862879645838*^9, 
   3.5598634335175176`*^9, {3.5598634941159835`*^9, 3.559863501689417*^9}}],

Cell[BoxData[
 RowBox[{"{", 
  RowBox[{
   SqrtBox[
    FractionBox["3", "2"]], ",", 
   SqrtBox[
    FractionBox["7", "2"]], ",", 
   SqrtBox[
    FractionBox["11", "2"]], ",", 
   SqrtBox[
    FractionBox["15", "2"]], ",", 
   SqrtBox[
    FractionBox["19", "2"]], ",", 
   SqrtBox[
    FractionBox["23", "2"]], ",", 
   RowBox[{"3", " ", 
    SqrtBox[
     FractionBox["3", "2"]]}], ",", 
   SqrtBox[
    FractionBox["31", "2"]]}], "}"}]], "Output",
 CellChangeTimes->{
  3.5598608150637503`*^9, {3.5598609346705914`*^9, 3.5598609404419217`*^9}, {
   3.55986105072423*^9, 3.559861100189059*^9}, {3.5598611396933184`*^9, 
   3.559861164967764*^9}, {3.559861195919534*^9, 3.559861232420622*^9}, {
   3.559861357684787*^9, 3.55986138432031*^9}, {3.5598614605596704`*^9, 
   3.559861471681307*^9}, 3.559861726155862*^9, 3.559862316845648*^9, 
   3.559862352537689*^9, {3.5598626851287117`*^9, 3.5598626939292154`*^9}, 
   3.559862747472278*^9, 3.5598628153811617`*^9, 3.559862879645838*^9, 
   3.5598634335175176`*^9, {3.5598634941159835`*^9, 3.559863501690417*^9}}],

Cell[BoxData[
 RowBox[{"{", 
  RowBox[{
   RowBox[{"0.6987932112819266`", "\[VeryThinSpace]", "+", 
    RowBox[{"0.6416988905685878`", " ", "\[ImaginaryI]"}]}], ",", 
   RowBox[{"0.37217233654919873`", "\[VeryThinSpace]", "+", 
    RowBox[{"0.39209939525028026`", " ", "\[ImaginaryI]"}]}], ",", 
   RowBox[{"0.6004158912508303`", "\[VeryThinSpace]", "+", 
    RowBox[{"0.5897806385248172`", " ", "\[ImaginaryI]"}]}], ",", 
   RowBox[{"0.4148300759282734`", "\[VeryThinSpace]", "+", 
    RowBox[{"0.4216353016311028`", " ", "\[ImaginaryI]"}]}], ",", 
   RowBox[{"0.5751962589081421`", "\[VeryThinSpace]", "+", 
    RowBox[{"0.5703799678793345`", " ", "\[ImaginaryI]"}]}], ",", 
   RowBox[{"0.4319595961547097`", "\[VeryThinSpace]", "+", 
    RowBox[{"0.4355934687289751`", " ", "\[ImaginaryI]"}]}], ",", 
   RowBox[{"0.5625912228644151`", "\[VeryThinSpace]", "+", 
    RowBox[{"0.5597257475417493`", " ", "\[ImaginaryI]"}]}], ",", 
   RowBox[{"0.44173434940051715`", "\[VeryThinSpace]", "+", 
    RowBox[{"0.4440679744235109`", " ", "\[ImaginaryI]"}]}]}], 
  "}"}]], "Output",
 CellChangeTimes->{
  3.5598608150637503`*^9, {3.5598609346705914`*^9, 3.5598609404419217`*^9}, {
   3.55986105072423*^9, 3.559861100189059*^9}, {3.5598611396933184`*^9, 
   3.559861164967764*^9}, {3.559861195919534*^9, 3.559861232420622*^9}, {
   3.559861357684787*^9, 3.55986138432031*^9}, {3.5598614605596704`*^9, 
   3.559861471681307*^9}, 3.559861726155862*^9, 3.559862316845648*^9, 
   3.559862352537689*^9, {3.5598626851287117`*^9, 3.5598626939292154`*^9}, 
   3.559862747472278*^9, 3.5598628153811617`*^9, 3.559862879645838*^9, 
   3.5598634335175176`*^9, {3.5598634941159835`*^9, 3.559863501711418*^9}}],

Cell[BoxData[
 RowBox[{"{", 
  RowBox[{
   RowBox[{"0.6987932112819266`", "\[VeryThinSpace]", "+", 
    RowBox[{"0.6416988905685878`", " ", "\[ImaginaryI]"}]}], ",", 
   RowBox[{"0.22824355470163155`", "\[VeryThinSpace]", "+", 
    RowBox[{"0.19768124327453696`", " ", "\[ImaginaryI]"}]}], ",", 
   RowBox[{"0.16036618297986865`", "\[VeryThinSpace]", "+", 
    RowBox[{"0.14874466624823174`", " ", "\[ImaginaryI]"}]}]}], 
  "}"}]], "Output",
 CellChangeTimes->{
  3.5598608150637503`*^9, {3.5598609346705914`*^9, 3.5598609404419217`*^9}, {
   3.55986105072423*^9, 3.559861100189059*^9}, {3.5598611396933184`*^9, 
   3.559861164967764*^9}, {3.559861195919534*^9, 3.559861232420622*^9}, {
   3.559861357684787*^9, 3.55986138432031*^9}, {3.5598614605596704`*^9, 
   3.559861471681307*^9}, 3.559861726155862*^9, 3.559862316845648*^9, 
   3.559862352537689*^9, {3.5598626851287117`*^9, 3.5598626939292154`*^9}, 
   3.559862747472278*^9, 3.5598628153811617`*^9, 3.559862879645838*^9, 
   3.5598634335175176`*^9, {3.5598634941159835`*^9, 3.559863501713418*^9}}],

Cell[BoxData[
 RowBox[{"{", 
  RowBox[{
  "0.7428318300782827`", ",", "0.7137657534460409`", ",", 
   "0.7478192634266605`"}], "}"}]], "Output",
 CellChangeTimes->{
  3.5598608150637503`*^9, {3.5598609346705914`*^9, 3.5598609404419217`*^9}, {
   3.55986105072423*^9, 3.559861100189059*^9}, {3.5598611396933184`*^9, 
   3.559861164967764*^9}, {3.559861195919534*^9, 3.559861232420622*^9}, {
   3.559861357684787*^9, 3.55986138432031*^9}, {3.5598614605596704`*^9, 
   3.559861471681307*^9}, 3.559861726155862*^9, 3.559862316845648*^9, 
   3.559862352537689*^9, {3.5598626851287117`*^9, 3.5598626939292154`*^9}, 
   3.559862747472278*^9, 3.5598628153811617`*^9, 3.559862879645838*^9, 
   3.5598634335175176`*^9, {3.5598634941159835`*^9, 3.559863501714418*^9}}],

Cell[BoxData[
 RowBox[{"{", 
  RowBox[{
   RowBox[{"1.3404921018505145`", "\[VeryThinSpace]", "-", 
    RowBox[{"0.057094320713338864`", " ", "\[ImaginaryI]"}]}], ",", 
   RowBox[{"0.4259247979761685`", "\[VeryThinSpace]", "-", 
    RowBox[{"0.03056231142709459`", " ", "\[ImaginaryI]"}]}], ",", 
   RowBox[{"0.3091108492281004`", "\[VeryThinSpace]", "-", 
    RowBox[{"0.011621516731636916`", " ", "\[ImaginaryI]"}]}]}], 
  "}"}]], "Output",
 CellChangeTimes->{
  3.5598608150637503`*^9, {3.5598609346705914`*^9, 3.5598609404419217`*^9}, {
   3.55986105072423*^9, 3.559861100189059*^9}, {3.5598611396933184`*^9, 
   3.559861164967764*^9}, {3.559861195919534*^9, 3.559861232420622*^9}, {
   3.559861357684787*^9, 3.55986138432031*^9}, {3.5598614605596704`*^9, 
   3.559861471681307*^9}, 3.559861726155862*^9, 3.559862316845648*^9, 
   3.559862352537689*^9, {3.5598626851287117`*^9, 3.5598626939292154`*^9}, 
   3.559862747472278*^9, 3.5598628153811617`*^9, 3.559862879645838*^9, 
   3.5598634335175176`*^9, {3.5598634941159835`*^9, 3.559863501715418*^9}}],

Cell[BoxData[
 RowBox[{"{", 
  RowBox[{
   RowBox[{"1.3404921018505145`", "\[VeryThinSpace]", "-", 
    RowBox[{"0.057094320713338864`", " ", "\[ImaginaryI]"}]}], ",", 
   RowBox[{"1.766416899826683`", "\[VeryThinSpace]", "-", 
    RowBox[{"0.08765663214043345`", " ", "\[ImaginaryI]"}]}], ",", 
   RowBox[{"2.075527749054783`", "\[VeryThinSpace]", "-", 
    RowBox[{"0.09927814887207037`", " ", "\[ImaginaryI]"}]}]}], 
  "}"}]], "Output",
 CellChangeTimes->{
  3.5598608150637503`*^9, {3.5598609346705914`*^9, 3.5598609404419217`*^9}, {
   3.55986105072423*^9, 3.559861100189059*^9}, {3.5598611396933184`*^9, 
   3.559861164967764*^9}, {3.559861195919534*^9, 3.559861232420622*^9}, {
   3.559861357684787*^9, 3.55986138432031*^9}, {3.5598614605596704`*^9, 
   3.559861471681307*^9}, 3.559861726155862*^9, 3.559862316845648*^9, 
   3.559862352537689*^9, {3.5598626851287117`*^9, 3.5598626939292154`*^9}, 
   3.559862747472278*^9, 3.5598628153811617`*^9, 3.559862879645838*^9, 
   3.5598634335175176`*^9, {3.5598634941159835`*^9, 3.5598635017174187`*^9}}],

Cell[BoxData[
 RowBox[{"{", 
  RowBox[{
   RowBox[{"-", "0.042566333319165664`"}], ",", 
   RowBox[{"-", "0.04958330371805327`"}], ",", 
   RowBox[{"-", "0.04779629545235275`"}]}], "}"}]], "Output",
 CellChangeTimes->{
  3.5598608150637503`*^9, {3.5598609346705914`*^9, 3.5598609404419217`*^9}, {
   3.55986105072423*^9, 3.559861100189059*^9}, {3.5598611396933184`*^9, 
   3.559861164967764*^9}, {3.559861195919534*^9, 3.559861232420622*^9}, {
   3.559861357684787*^9, 3.55986138432031*^9}, {3.5598614605596704`*^9, 
   3.559861471681307*^9}, 3.559861726155862*^9, 3.559862316845648*^9, 
   3.559862352537689*^9, {3.5598626851287117`*^9, 3.5598626939292154`*^9}, 
   3.559862747472278*^9, 3.5598628153811617`*^9, 3.559862879645838*^9, 
   3.5598634335175176`*^9, {3.5598634941159835`*^9, 3.559863501718418*^9}}],

Cell[BoxData[
 RowBox[{"{", 
  RowBox[{
  "1.8001788365813278`", ",", "3.1279123491515133`", ",", 
   "4.317671587939879`"}], "}"}]], "Output",
 CellChangeTimes->{
  3.5598608150637503`*^9, {3.5598609346705914`*^9, 3.5598609404419217`*^9}, {
   3.55986105072423*^9, 3.559861100189059*^9}, {3.5598611396933184`*^9, 
   3.559861164967764*^9}, {3.559861195919534*^9, 3.559861232420622*^9}, {
   3.559861357684787*^9, 3.55986138432031*^9}, {3.5598614605596704`*^9, 
   3.559861471681307*^9}, 3.559861726155862*^9, 3.559862316845648*^9, 
   3.559862352537689*^9, {3.5598626851287117`*^9, 3.5598626939292154`*^9}, 
   3.559862747472278*^9, 3.5598628153811617`*^9, 3.559862879645838*^9, 
   3.5598634335175176`*^9, {3.5598634941159835`*^9, 3.5598635017194185`*^9}}],

Cell[BoxData["1.7375564502756011`"], "Output",
 CellChangeTimes->{
  3.5598608150637503`*^9, {3.5598609346705914`*^9, 3.5598609404419217`*^9}, {
   3.55986105072423*^9, 3.559861100189059*^9}, {3.5598611396933184`*^9, 
   3.559861164967764*^9}, {3.559861195919534*^9, 3.559861232420622*^9}, {
   3.559861357684787*^9, 3.55986138432031*^9}, {3.5598614605596704`*^9, 
   3.559861471681307*^9}, 3.559861726155862*^9, 3.559862316845648*^9, 
   3.559862352537689*^9, {3.5598626851287117`*^9, 3.5598626939292154`*^9}, 
   3.559862747472278*^9, 3.5598628153811617`*^9, 3.559862879645838*^9, 
   3.5598634335175176`*^9, {3.5598634941159835`*^9, 3.5598635017204185`*^9}}],

Cell[BoxData["2.3984681411650497`"], "Output",
 CellChangeTimes->{
  3.5598608150637503`*^9, {3.5598609346705914`*^9, 3.5598609404419217`*^9}, {
   3.55986105072423*^9, 3.559861100189059*^9}, {3.5598611396933184`*^9, 
   3.559861164967764*^9}, {3.559861195919534*^9, 3.559861232420622*^9}, {
   3.559861357684787*^9, 3.55986138432031*^9}, {3.5598614605596704`*^9, 
   3.559861471681307*^9}, 3.559861726155862*^9, 3.559862316845648*^9, 
   3.559862352537689*^9, {3.5598626851287117`*^9, 3.5598626939292154`*^9}, 
   3.559862747472278*^9, 3.5598628153811617`*^9, 3.559862879645838*^9, 
   3.5598634335175176`*^9, {3.5598634941159835`*^9, 3.5598635017214184`*^9}}]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[{
 RowBox[{
  RowBox[{"2", " ", 
   RowBox[{"Sqrt", "[", 
    RowBox[{"3", "/", "2"}], "]"}], " ", 
   RowBox[{"Sqrt", "[", " ", 
    RowBox[{
     RowBox[{"(", 
      RowBox[{"1", "/", "20"}], ")"}], " ", 
     RowBox[{"10", "^", 
      RowBox[{"(", 
       RowBox[{"-", "9"}], ")"}]}]}], " ", "]"}]}], " ", "//", " ", 
  "N"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{"Sqrt", "[", "3", "]"}], " ", "//", " ", "N"}]}], "Input",
 CellChangeTimes->{{3.5598675633967333`*^9, 3.5598676396680956`*^9}, {
  3.5598676742620745`*^9, 3.5598677447921085`*^9}, {3.5598677823862586`*^9, 
  3.5598678153551445`*^9}, {3.559867846471924*^9, 3.5598678466039314`*^9}}],

Cell[BoxData["0.000017320508075688774`"], "Output",
 CellChangeTimes->{{3.559867600264842*^9, 3.559867641177182*^9}, 
   3.5598676752631316`*^9, 3.5598677074659734`*^9, 3.55986774569516*^9, {
   3.5598677840613546`*^9, 3.559867816011182*^9}, 3.5598678478060007`*^9}],

Cell[BoxData["1.7320508075688772`"], "Output",
 CellChangeTimes->{{3.559867600264842*^9, 3.559867641177182*^9}, 
   3.5598676752631316`*^9, 3.5598677074659734`*^9, 3.55986774569516*^9, {
   3.5598677840613546`*^9, 3.559867816011182*^9}, 3.5598678478100004`*^9}]
}, Open  ]]
}, Open  ]],

Cell[CellGroupData[{

Cell["Part (g)", "Subsection",
 CellChangeTimes->{{3.5598683818335447`*^9, 3.5598683837446547`*^9}}],

Cell[CellGroupData[{

Cell[BoxData[{
 RowBox[{"Clear", "[", 
  RowBox[{"d", ",", " ", "lambda", ",", " ", "f"}], 
  "]"}], "\[IndentingNewLine]", 
 RowBox[{"lambda", " ", "=", " ", 
  RowBox[{"10", "^", 
   RowBox[{"(", 
    RowBox[{"-", "9"}], ")"}]}]}], "\[IndentingNewLine]", 
 RowBox[{"f", " ", "=", " ", 
  RowBox[{"10", "^", 
   RowBox[{"(", 
    RowBox[{"-", "1"}], ")"}]}]}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{"d", "[", "k_", "]"}], " ", "=", " ", 
  RowBox[{
   RowBox[{"Sqrt", "[", " ", 
    RowBox[{"lambda", " ", 
     RowBox[{"f", "/", "2"}]}], " ", "]"}], " ", 
   RowBox[{"(", " ", 
    RowBox[{
     RowBox[{"Sqrt", "[", " ", 
      RowBox[{
       RowBox[{"3", "/", "3"}], " ", "+", " ", 
       RowBox[{"4", " ", "k"}]}], "]"}], " ", "-", " ", 
     RowBox[{"Sqrt", "[", 
      RowBox[{
       RowBox[{"3", "/", "2"}], " ", "+", " ", 
       RowBox[{"2", 
        RowBox[{"(", 
         RowBox[{
          RowBox[{"2", "k"}], " ", "-", "1"}], ")"}]}]}], "]"}]}], 
    ")"}]}]}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{"Table", "[", 
   RowBox[{
    RowBox[{
     RowBox[{"d", "[", "k", "]"}], " ", "-", " ", 
     RowBox[{"10", "^", 
      RowBox[{"(", 
       RowBox[{"-", "6"}], ")"}]}]}], ",", " ", 
    RowBox[{"{", 
     RowBox[{"k", ",", " ", "1", ",", " ", "10"}], "}"}]}], "]"}], " ", "//", 
  " ", "N"}], "\[IndentingNewLine]", 
 RowBox[{"Plot", "[", 
  RowBox[{
   RowBox[{
    RowBox[{"d", "[", "k", "]"}], " ", "-", " ", 
    RowBox[{"10", "^", 
     RowBox[{"(", 
      RowBox[{"-", "6"}], ")"}]}]}], ",", " ", 
   RowBox[{"{", 
    RowBox[{"k", ",", " ", "5", ",", " ", "10"}], "}"}]}], "]"}]}], "Input",
 CellChangeTimes->{{3.559868371907977*^9, 3.559868570819354*^9}, {
  3.559868705316047*^9, 3.5598687224140253`*^9}}],

Cell[BoxData[
 FractionBox["1", "1000000000"]], "Output",
 CellChangeTimes->{
  3.5598684896677127`*^9, {3.5598685331962023`*^9, 3.55986857231544*^9}, {
   3.5598687185358033`*^9, 3.5598687231210656`*^9}}],

Cell[BoxData[
 FractionBox["1", "10"]], "Output",
 CellChangeTimes->{
  3.5598684896677127`*^9, {3.5598685331962023`*^9, 3.55986857231544*^9}, {
   3.5598687185358033`*^9, 3.559868723123066*^9}}],

Cell[BoxData[
 FractionBox[
  RowBox[{
   SqrtBox[
    RowBox[{"1", "+", 
     RowBox[{"4", " ", "k"}]}]], "-", 
   SqrtBox[
    RowBox[{
     FractionBox["3", "2"], "+", 
     RowBox[{"2", " ", 
      RowBox[{"(", 
       RowBox[{
        RowBox[{"-", "1"}], "+", 
        RowBox[{"2", " ", "k"}]}], ")"}]}]}]]}], 
  RowBox[{"100000", " ", 
   SqrtBox["2"]}]]], "Output",
 CellChangeTimes->{
  3.5598684896677127`*^9, {3.5598685331962023`*^9, 3.55986857231544*^9}, {
   3.5598687185358033`*^9, 3.5598687231240654`*^9}}]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{
  RowBox[{"10", "^", "6"}], " ", 
  RowBox[{"{", 
   RowBox[{
   "1.5826317455189449`*^-6", ",", "8.482867045593412`*^-7", ",", 
    "5.159399514003253`*^-7", ",", "3.159376600763927`*^-7", ",", 
    "1.7871350004730587`*^-7", ",", "7.70660573221534`*^-8", ",", 
    RowBox[{"-", "2.126906158775194`*^-9"}], ",", 
    RowBox[{"-", "6.60776427890583`*^-8"}], ",", 
    RowBox[{"-", "1.1912253066866003`*^-7"}], ",", 
    RowBox[{"-", "1.6404639589086393`*^-7"}]}], "}"}]}]], "Input",
 CellChangeTimes->{{3.5598690767242904`*^9, 3.5598690791784306`*^9}}],

Cell[BoxData[
 RowBox[{"{", 
  RowBox[{
  "1.582631745518945`", ",", "0.8482867045593412`", ",", 
   "0.5159399514003253`", ",", "0.3159376600763927`", ",", 
   "0.17871350004730588`", ",", "0.0770660573221534`", ",", 
   RowBox[{"-", "0.002126906158775194`"}], ",", 
   RowBox[{"-", "0.0660776427890583`"}], ",", 
   RowBox[{"-", "0.11912253066866002`"}], ",", 
   RowBox[{"-", "0.16404639589086392`"}]}], "}"}]], "Output",
 CellChangeTimes->{
  3.5598684896677127`*^9, {3.5598685331962023`*^9, 3.55986857231544*^9}, {
   3.5598687185358033`*^9, 3.559868723128066*^9}, 3.5598690802874947`*^9}]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[{
 RowBox[{
  RowBox[{
   RowBox[{"Sqrt", "[", 
    RowBox[{
     RowBox[{"3", "/", "2"}], " ", "+", " ", "21"}], "]"}], " ", "-", " ", 
   RowBox[{"Sqrt", "[", 
    RowBox[{
     RowBox[{"3", "/", "2"}], " ", "+", " ", "19"}], "]"}]}], " ", "//", " ", 
  "N"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{
   RowBox[{"Sqrt", "[", 
    RowBox[{
     RowBox[{"3", "/", "2"}], " ", "+", " ", "25"}], "]"}], " ", "-", " ", 
   RowBox[{"Sqrt", "[", 
    RowBox[{
     RowBox[{"3", "/", "2"}], " ", "+", " ", "23"}], "]"}]}], " ", "//", " ", 
  "N"}]}], "Input",
 CellChangeTimes->{{3.5598686188461013`*^9, 3.5598686770734315`*^9}}],

Cell[BoxData["0.2157239211838604`"], "Output",
 CellChangeTimes->{{3.5598686311708064`*^9, 3.559868637114146*^9}, 
   3.559868677866477*^9}]
}, Open  ]],

Cell[BoxData[{
 RowBox[{"0.1980676021876686`", 
  "\[IndentingNewLine]"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{"(*", " ", 
   RowBox[{
    RowBox[{
    "Better", " ", "way", " ", "to", " ", "solve", " ", "the", " ", 
     "numerical", " ", "problem"}], ",", " ", 
    RowBox[{"without", " ", "tabulating", " ", "all", " ", "the", " ", 
     RowBox[{"values", ".", "  ", 
      RowBox[{"Don", "'"}]}], "t", " ", "know", " ", "how", " ", "to", " ", 
     "automatically", " ", "find", " ", "the", " ", "max", " ", "in", " ", 
     "this", " ", "set", " ", "of", " ", "mappings"}]}], " ", "*)"}]}]}], \
"Input",
 CellChangeTimes->{{3.560816875199195*^9, 3.5608169208858075`*^9}}],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"NSolve", "[", " ", 
  RowBox[{
   RowBox[{
    RowBox[{
     RowBox[{
      RowBox[{"Sqrt", "[", 
       RowBox[{
        RowBox[{"8", " ", "k"}], " ", "+", " ", "3"}], "]"}], " ", "-", " ", 
      RowBox[{"Sqrt", "[", " ", 
       RowBox[{
        RowBox[{"8", " ", "k"}], " ", "-", "1"}], " ", "]"}]}], " ", ">", " ", 
     RowBox[{"1", "/", 
      RowBox[{"(", 
       RowBox[{"5", " ", 
        RowBox[{"Sqrt", "[", "10", "]"}]}], ")"}]}]}], " ", "&&", " ", 
    RowBox[{"k", " ", ">", " ", "0"}]}], ",", " ", "k", ",", " ", 
   "Integers"}], "]"}]], "Input"],

Cell[BoxData[
 RowBox[{"{", 
  RowBox[{
   RowBox[{"{", 
    RowBox[{"k", "\[Rule]", "1"}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{"k", "\[Rule]", "2"}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{"k", "\[Rule]", "3"}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{"k", "\[Rule]", "4"}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{"k", "\[Rule]", "5"}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{"k", "\[Rule]", "6"}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{"k", "\[Rule]", "7"}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{"k", "\[Rule]", "8"}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{"k", "\[Rule]", "9"}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{"k", "\[Rule]", "10"}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{"k", "\[Rule]", "11"}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{"k", "\[Rule]", "12"}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{"k", "\[Rule]", "13"}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{"k", "\[Rule]", "14"}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{"k", "\[Rule]", "15"}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{"k", "\[Rule]", "16"}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{"k", "\[Rule]", "17"}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{"k", "\[Rule]", "18"}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{"k", "\[Rule]", "19"}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{"k", "\[Rule]", "20"}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{"k", "\[Rule]", "21"}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{"k", "\[Rule]", "22"}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{"k", "\[Rule]", "23"}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{"k", "\[Rule]", "24"}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{"k", "\[Rule]", "25"}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{"k", "\[Rule]", "26"}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{"k", "\[Rule]", "27"}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{"k", "\[Rule]", "28"}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{"k", "\[Rule]", "29"}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{"k", "\[Rule]", "30"}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{"k", "\[Rule]", "31"}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{"k", "\[Rule]", "32"}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{"k", "\[Rule]", "33"}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{"k", "\[Rule]", "34"}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{"k", "\[Rule]", "35"}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{"k", "\[Rule]", "36"}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{"k", "\[Rule]", "37"}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{"k", "\[Rule]", "38"}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{"k", "\[Rule]", "39"}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{"k", "\[Rule]", "40"}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{"k", "\[Rule]", "41"}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{"k", "\[Rule]", "42"}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{"k", "\[Rule]", "43"}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{"k", "\[Rule]", "44"}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{"k", "\[Rule]", "45"}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{"k", "\[Rule]", "46"}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{"k", "\[Rule]", "47"}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{"k", "\[Rule]", "48"}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{"k", "\[Rule]", "49"}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{"k", "\[Rule]", "50"}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{"k", "\[Rule]", "51"}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{"k", "\[Rule]", "52"}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{"k", "\[Rule]", "53"}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{"k", "\[Rule]", "54"}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{"k", "\[Rule]", "55"}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{"k", "\[Rule]", "56"}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{"k", "\[Rule]", "57"}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{"k", "\[Rule]", "58"}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{"k", "\[Rule]", "59"}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{"k", "\[Rule]", "60"}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{"k", "\[Rule]", "61"}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{"k", "\[Rule]", "62"}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{"k", "\[Rule]", "63"}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{"k", "\[Rule]", "64"}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{"k", "\[Rule]", "65"}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{"k", "\[Rule]", "66"}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{"k", "\[Rule]", "67"}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{"k", "\[Rule]", "68"}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{"k", "\[Rule]", "69"}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{"k", "\[Rule]", "70"}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{"k", "\[Rule]", "71"}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{"k", "\[Rule]", "72"}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{"k", "\[Rule]", "73"}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{"k", "\[Rule]", "74"}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{"k", "\[Rule]", "75"}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{"k", "\[Rule]", "76"}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{"k", "\[Rule]", "77"}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{"k", "\[Rule]", "78"}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{"k", "\[Rule]", "79"}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{"k", "\[Rule]", "80"}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{"k", "\[Rule]", "81"}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{"k", "\[Rule]", "82"}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{"k", "\[Rule]", "83"}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{"k", "\[Rule]", "84"}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{"k", "\[Rule]", "85"}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{"k", "\[Rule]", "86"}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{"k", "\[Rule]", "87"}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{"k", "\[Rule]", "88"}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{"k", "\[Rule]", "89"}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{"k", "\[Rule]", "90"}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{"k", "\[Rule]", "91"}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{"k", "\[Rule]", "92"}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{"k", "\[Rule]", "93"}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{"k", "\[Rule]", "94"}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{"k", "\[Rule]", "95"}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{"k", "\[Rule]", "96"}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{"k", "\[Rule]", "97"}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{"k", "\[Rule]", "98"}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{"k", "\[Rule]", "99"}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{"k", "\[Rule]", "100"}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{"k", "\[Rule]", "101"}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{"k", "\[Rule]", "102"}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{"k", "\[Rule]", "103"}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{"k", "\[Rule]", "104"}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{"k", "\[Rule]", "105"}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{"k", "\[Rule]", "106"}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{"k", "\[Rule]", "107"}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{"k", "\[Rule]", "108"}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{"k", "\[Rule]", "109"}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{"k", "\[Rule]", "110"}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{"k", "\[Rule]", "111"}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{"k", "\[Rule]", "112"}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{"k", "\[Rule]", "113"}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{"k", "\[Rule]", "114"}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{"k", "\[Rule]", "115"}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{"k", "\[Rule]", "116"}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{"k", "\[Rule]", "117"}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{"k", "\[Rule]", "118"}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{"k", "\[Rule]", "119"}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{"k", "\[Rule]", "120"}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{"k", "\[Rule]", "121"}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{"k", "\[Rule]", "122"}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{"k", "\[Rule]", "123"}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{"k", "\[Rule]", "124"}], "}"}]}], "}"}]], "Output",
 CellChangeTimes->{3.5608168857607985`*^9}]
}, Open  ]]
}, Open  ]]
}, Open  ]],

Cell[CellGroupData[{

Cell["Problem 3.", "Section",
 CellChangeTimes->{{3.5599478125201015`*^9, 3.5599478135461607`*^9}}],

Cell[CellGroupData[{

Cell["Part (a)", "Subsection",
 CellChangeTimes->{{3.5599648095252748`*^9, 3.559964810735344*^9}}],

Cell[CellGroupData[{

Cell[BoxData[{
 RowBox[{
  RowBox[{"Clear", "[", 
   RowBox[{
   "rho", ",", " ", "r", ",", " ", "b", ",", " ", "i1", ",", " ", "i2", ",", 
    " ", "theta", ",", " ", "a"}], "]"}], "\[IndentingNewLine]", 
  RowBox[{"(*", 
   RowBox[{
    RowBox[{"i1", "[", 
     RowBox[{"r_", ",", " ", "b_"}], "]"}], " ", "=", " ", 
    RowBox[{
     RowBox[{
      RowBox[{"Integrate", "[", 
       RowBox[{
        RowBox[{"rho", " ", 
         RowBox[{"E", "^", 
          RowBox[{"(", 
           RowBox[{"I", " ", "rho", " ", "b"}], ")"}]}]}], ",", " ", 
        RowBox[{"{", 
         RowBox[{"rho", ",", " ", "0", ",", " ", "r"}], "}"}]}], "]"}], 
      "\[IndentingNewLine]", "i2"}], " ", "=", " ", 
     RowBox[{"Integrate", "[", 
      RowBox[{
       RowBox[{"i1", "[", 
        RowBox[{"r", ",", " ", 
         RowBox[{"a", " ", 
          RowBox[{"Cos", "[", "theta", "]"}]}]}], "]"}], ",", " ", 
       RowBox[{"{", 
        RowBox[{"theta", ",", " ", "0", ",", " ", 
         RowBox[{"2", " ", "Pi"}]}], "}"}]}], "]"}]}]}], 
   "\[IndentingNewLine]", "*)"}]}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{"HoldForm", "[", " ", 
   RowBox[{"Integrate", "[", " ", 
    RowBox[{
     RowBox[{"rho", " ", 
      RowBox[{"E", "^", 
       RowBox[{"(", 
        RowBox[{"I", "  ", "a", " ", "rho", " ", 
         RowBox[{"Cos", "[", "theta", "]"}]}], ")"}]}]}], ",", " ", 
     RowBox[{"{", 
      RowBox[{"rho", ",", " ", "0", ",", " ", "r"}], "}"}], ",", " ", 
     RowBox[{"{", 
      RowBox[{"theta", ",", " ", "0", ",", " ", 
       RowBox[{"2", " ", "Pi"}]}], "}"}]}], "]"}], " ", "]"}], " ", "//", " ",
   "TraditionalForm"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{"Integrate", "[", " ", 
   RowBox[{
    RowBox[{"rho", " ", 
     RowBox[{"E", "^", 
      RowBox[{"(", 
       RowBox[{"I", "  ", "a", " ", "rho", " ", 
        RowBox[{"Cos", "[", "theta", "]"}]}], ")"}]}]}], ",", " ", 
    RowBox[{"{", 
     RowBox[{"rho", ",", " ", "0", ",", " ", "r"}], "}"}], ",", " ", 
    RowBox[{"{", 
     RowBox[{"theta", ",", " ", "0", ",", " ", 
      RowBox[{"2", " ", "Pi"}]}], "}"}]}], "]"}], " "}]}], "Input",
 CellChangeTimes->{{3.5599477905868473`*^9, 3.5599479643657866`*^9}, {
  3.559948180779165*^9, 3.5599481883195963`*^9}, {3.559950277057065*^9, 
  3.559950295134099*^9}}],

Cell[BoxData[
 FormBox[
  TagBox[
   RowBox[{
    SubsuperscriptBox["\[Integral]", "0", "r"], 
    RowBox[{
     SubsuperscriptBox["\[Integral]", "0", 
      RowBox[{"2", " ", "\[Pi]"}]], 
     RowBox[{
      RowBox[{"rho", " ", 
       SuperscriptBox["\[ExponentialE]", 
        RowBox[{"\[ImaginaryI]", " ", "a", " ", "rho", " ", 
         RowBox[{"cos", "(", "theta", ")"}]}]]}], 
      RowBox[{"\[DifferentialD]", "theta"}], 
      RowBox[{"\[DifferentialD]", "rho"}]}]}]}],
   HoldForm], TraditionalForm]], "Output",
 CellChangeTimes->{3.55995029619716*^9}],

Cell[BoxData[
 FractionBox[
  RowBox[{"2", " ", "\[Pi]", " ", "r", " ", 
   RowBox[{"BesselJ", "[", 
    RowBox[{"1", ",", 
     RowBox[{"a", " ", "r"}]}], "]"}]}], "a"]], "Output",
 CellChangeTimes->{3.5599502990693245`*^9}]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{
  FractionBox[
   RowBox[{"2", " ", "\[Pi]", " ", "r", " ", 
    RowBox[{"BesselJ", "[", 
     RowBox[{"1", ",", 
      RowBox[{"a", " ", "r"}]}], "]"}]}], "a"], " ", "//", "TraditionalForm"}]
  ], "Input",
 CellChangeTimes->{{3.559950259396055*^9, 3.559950265112382*^9}}],

Cell[BoxData[
 FormBox[
  FractionBox[
   RowBox[{"2", " ", "\[Pi]", " ", "r", " ", 
    TemplateBox[{"1",RowBox[{"a", " ", "r"}]},
     "BesselJ"]}], "a"], TraditionalForm]], "Output",
 CellChangeTimes->{3.5599502661944437`*^9}]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[{
 RowBox[{"Plot", "[", 
  RowBox[{
   RowBox[{"BesselJ", "[", 
    RowBox[{"1", ",", " ", "x"}], "]"}], ",", " ", 
   RowBox[{"{", 
    RowBox[{"x", ",", " ", "0", ",", " ", "10"}], "}"}]}], 
  "]"}], "\[IndentingNewLine]", 
 RowBox[{"BesselJ", "[", 
  RowBox[{"1", ",", " ", 
   RowBox[{"-", "x"}]}], "]"}]}], "Input",
 CellChangeTimes->{{3.5599503641840487`*^9, 3.559950393006697*^9}, {
  3.559953813769354*^9, 3.5599538146444035`*^9}}],

Cell[BoxData[
 GraphicsBox[{{}, {}, 
   {Hue[0.67, 0.6, 0.6], LineBox[CompressedData["
1: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
     "]]}},
  AspectRatio->NCache[GoldenRatio^(-1), 0.6180339887498948],
  Axes->True,
  AxesOrigin->{0, 0},
  PlotRange->{{0, 10}, {-0.3461261180190739, 0.581865061766651}},
  PlotRangeClipping->True,
  PlotRangePadding->{
    Scaled[0.02], 
    Scaled[0.02]}]], "Output",
 CellChangeTimes->{{3.5599503827551107`*^9, 3.5599503942117662`*^9}, 
   3.5599538154654503`*^9}],

Cell[BoxData[
 RowBox[{"-", 
  RowBox[{"BesselJ", "[", 
   RowBox[{"1", ",", "x"}], "]"}]}]], "Output",
 CellChangeTimes->{{3.5599503827551107`*^9, 3.5599503942117662`*^9}, 
   3.5599538154724507`*^9}]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[{
 RowBox[{"NMaximize", "[", 
  RowBox[{
   RowBox[{"{", 
    RowBox[{
     RowBox[{"BesselJ", "[", 
      RowBox[{"1", ",", " ", "x"}], "]"}], ",", " ", 
     RowBox[{"0", " ", "<", " ", "x", " ", "<", " ", "5"}]}], "}"}], ",", " ",
    "x"}], "]"}], "\[IndentingNewLine]", 
 RowBox[{"NMinimize", "[", 
  RowBox[{
   RowBox[{"{", 
    RowBox[{
     RowBox[{"Abs", "[", 
      RowBox[{"BesselJ", "[", 
       RowBox[{"1", ",", " ", "x"}], "]"}], "]"}], ",", " ", 
     RowBox[{"3", " ", "<", " ", "x", " ", "<", " ", "5"}]}], "}"}], ",", " ",
    "x"}], "]"}]}], "Input",
 CellChangeTimes->{{3.55995206168414*^9, 3.5599520775860496`*^9}, {
  3.5599522594544516`*^9, 3.55995229316438*^9}}],

Cell[BoxData[
 RowBox[{"{", 
  RowBox[{"0.5818652242815965`", ",", 
   RowBox[{"{", 
    RowBox[{"x", "\[Rule]", "1.84118378117943`"}], "}"}]}], "}"}]], "Output",
 CellChangeTimes->{
  3.559952082539333*^9, {3.5599522755853744`*^9, 3.559952294132435*^9}}],

Cell[BoxData[
 RowBox[{"{", 
  RowBox[{"2.1000823595934867`*^-12", ",", 
   RowBox[{"{", 
    RowBox[{"x", "\[Rule]", "3.831705970202298`"}], "}"}]}], "}"}]], "Output",
 CellChangeTimes->{
  3.559952082539333*^9, {3.5599522755853744`*^9, 3.5599522949894843`*^9}}]
}, Open  ]],

Cell[BoxData[{
 RowBox[{"Clear", "[", "k", "]"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{"Integrate", "[", " ", 
   RowBox[{
    RowBox[{"E", "^", 
     RowBox[{"(", 
      RowBox[{"I", "  ", "k", " ", "rho", " ", 
       RowBox[{"Cos", "[", "theta", "]"}]}], ")"}]}], ",", " ", 
    RowBox[{"{", 
     RowBox[{"rho", ",", " ", "0", ",", " ", "r"}], "}"}], ",", " ", 
    RowBox[{"{", 
     RowBox[{"theta", ",", " ", "0", ",", " ", 
      RowBox[{"2", " ", "Pi"}]}], "}"}]}], "]"}], " "}]}], "Input",
 CellChangeTimes->{{3.559955127889517*^9, 3.5599551411862774`*^9}}],

Cell[BoxData[
 RowBox[{
  RowBox[{
   RowBox[{"ConditionalExpression", "[", 
    RowBox[{
     RowBox[{"\[Pi]", " ", "r", " ", 
      RowBox[{"(", 
       RowBox[{
        RowBox[{"\[Pi]", " ", 
         RowBox[{"BesselJ", "[", 
          RowBox[{"1", ",", 
           RowBox[{"k", " ", "r"}]}], "]"}], " ", 
         RowBox[{"StruveH", "[", 
          RowBox[{"0", ",", 
           RowBox[{"k", " ", "r"}]}], "]"}]}], "+", 
        RowBox[{
         RowBox[{"BesselJ", "[", 
          RowBox[{"0", ",", 
           RowBox[{"k", " ", "r"}]}], "]"}], " ", 
         RowBox[{"(", 
          RowBox[{"2", "-", 
           RowBox[{"\[Pi]", " ", 
            RowBox[{"StruveH", "[", 
             RowBox[{"1", ",", 
              RowBox[{"k", " ", "r"}]}], "]"}]}]}], ")"}]}]}], ")"}]}], ",", 
     RowBox[{
      RowBox[{
       RowBox[{"Re", "[", 
        FractionBox["1", 
         RowBox[{"k", " ", "r"}]], "]"}], "\[NotEqual]", "0"}], "||", 
      RowBox[{
       RowBox[{"Im", "[", 
        FractionBox["1", 
         RowBox[{"k", " ", "r"}]], "]"}], "\[GreaterEqual]", 
       FractionBox["1", "2"]}], "||", 
      RowBox[{
       RowBox[{"Im", "[", 
        FractionBox["1", 
         RowBox[{"k", " ", "r"}]], "]"}], "\[LessEqual]", 
       RowBox[{"-", 
        FractionBox["1", "2"]}]}]}]}], "]"}], " ", "//", " ", 
   "TraditionalForm"}], "\[IndentingNewLine]"}]], "Input",
 CellChangeTimes->{{3.559955215504528*^9, 3.5599552182356844`*^9}}],

Cell[BoxData[
 FormBox[
  RowBox[{"ConditionalExpression", "[", 
   RowBox[{
    RowBox[{"\[Pi]", " ", "r", " ", 
     RowBox[{"(", 
      RowBox[{
       RowBox[{"\[Pi]", " ", 
        TemplateBox[{"0",RowBox[{"k", " ", "r"}]},
         "StruveH"], " ", 
        TemplateBox[{"1",RowBox[{"k", " ", "r"}]},
         "BesselJ"]}], "+", 
       RowBox[{
        RowBox[{"(", 
         RowBox[{"2", "-", 
          RowBox[{"\[Pi]", " ", 
           TemplateBox[{"1",RowBox[{"k", " ", "r"}]},
            "StruveH"]}]}], ")"}], " ", 
        TemplateBox[{"0",RowBox[{"k", " ", "r"}]},
         "BesselJ"]}]}], ")"}]}], ",", 
    RowBox[{
     RowBox[{
      RowBox[{"Re", "(", 
       FractionBox["1", 
        RowBox[{"k", " ", "r"}]], ")"}], "\[NotEqual]", "0"}], "\[Or]", 
     RowBox[{
      RowBox[{"Im", "(", 
       FractionBox["1", 
        RowBox[{"k", " ", "r"}]], ")"}], "\[GreaterEqual]", 
      FractionBox["1", "2"]}], "\[Or]", 
     RowBox[{
      RowBox[{"Im", "(", 
       FractionBox["1", 
        RowBox[{"k", " ", "r"}]], ")"}], "\[LessEqual]", 
      RowBox[{"-", 
       FractionBox["1", "2"]}]}]}]}], "]"}], TraditionalForm]], "Output",
 CellChangeTimes->{3.5599552192837443`*^9}],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"Limit", "[", 
  RowBox[{
   RowBox[{
    RowBox[{"BesselJ", "[", 
     RowBox[{"1", ",", "  ", "x"}], "]"}], "/", "x"}], ",", " ", 
   RowBox[{"x", " ", "\[Rule]", " ", "0"}]}], "]"}]], "Input",
 CellChangeTimes->{{3.5599556849093766`*^9, 3.5599557011663065`*^9}, {
  3.5599557418646345`*^9, 3.5599557569114947`*^9}}],

Cell[BoxData[
 FractionBox["1", "2"]], "Output",
 CellChangeTimes->{
  3.5599557019343505`*^9, {3.559955745236827*^9, 3.5599557576895394`*^9}}]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"Plot", "[", 
  RowBox[{
   RowBox[{
    RowBox[{"BesselJ", "[", 
     RowBox[{"1", ",", " ", "x"}], "]"}], "/", "x"}], ",", " ", 
   RowBox[{"{", 
    RowBox[{"x", ",", " ", "0", ",", " ", "10"}], "}"}], ",", " ", 
   RowBox[{"AxesLabel", "\[Rule]", " ", 
    RowBox[{"{", 
     RowBox[{"x", ",", " ", 
      RowBox[{
       RowBox[{"BesselJ", "[", 
        RowBox[{"1", ",", " ", "x"}], "]"}], "/", "x"}]}], "}"}]}]}], 
  "]"}]], "Input",
 CellChangeTimes->{{3.559956889845295*^9, 3.5599569050441647`*^9}, {
  3.559956963091484*^9, 3.559957005831929*^9}}],

Cell[BoxData[
 GraphicsBox[{{}, {}, 
   {Hue[0.67, 0.6, 0.6], LineBox[CompressedData["
1:eJwV13c8Vf8fB3CjJJTLvbSMc+0Q5auNz7tQklREkojIHklRlBLJKEL2uBmR
eZUUyZEZsmfWtbfsMiq/87v/3Mfzce/5nM/n/Xm9z6CaOepYsDAxMY0wMzH9
/zvuoRnbAfMAlaaN/38YqLwF07qMWSPrmfRnfwlvVBY/wbB7aNm9Q+QX4e0h
+XSOTi8kt+hbP0E4ruS58GbMD80JlwR0EpadNX+xYRmEjlzyMSwl3Ls9/t+f
jhCEWfYdSyUs9mbrobX1V6gzr0XWl7Cd8h3738JRKFfIcb8Z4fet/clLqrGI
i7NI/QjhNVutnnnLBHTVospuK2Eac4/fb/XXiC8+IaXtHwOp1b0U/9WRiIrT
L83FEh6PPP11yToZdW5e0TIhHGj+12hxPQV1ZMd+FiDcsm4VNif8Fgk9Vm54
9peB7lYJ7Z/NTUc/T1i6HCa8O7S1dkY1E8V7zsgM/GEgM2lgnbLMQc167s3i
hFnW7zcsedCRRmbR15J1Bmrt1xNcUs9FTut1ZfqE3TI5CxY63iHm98NMLmsM
pBkyyrZAe4/M/8krra8ykIDb10vz1nlIl73D/wHhElXXudn1D+hHfavZ7RUG
2tI9KDkjXIA4DWRYxH4xUGfJlzvT4wVom/Roz5NlBkp/E1k2lVuIrPmvfe9b
YiBtZ22TSdUi9POI1qTPIgOFby0MH7PE0amLwlJRcwyU56rpfHtnCbJko2U3
zTJQ7OThXYseJWh8b/zZzYQdGnktF9S/oq8SpJprMwzEG/uNZb6jFHEGbutv
mWCg9e35b52UyhCWm0sdGWeg4cdJF+ZoZcjPYtl9foyB8i0fxs9al6MUFT/3
9REGMvxP8djP9Qpk7O6a0zrAQK9rEm5NCVejLiU2xdhOBlqK/CDNCKxGF3sG
T6h1MNApy9qh5tVqNCmUHTLaxkDTrL/1CltqkOMY18auFgY6oqx9zM/3O2pj
PsWjVMdAjTl/WCRnGxC/gNor+xJivmir8Ta5RvTGcJSnsJiBjkuEHfM1b0S9
Lwy6mL4w0Iult4v3mxrR6PV9Fx8UMJDiyzYLs4wm9Opp0PiBdwzkWSOrecCk
Bembp13yT2SgtNyPEhmvWpAye3SvO42BmiNPsop/b0GBH85+sYwn8mtpULTz
aCta/brwRC6agWpYveWYyG2Iu6hL1e0lA/Erd/M2VLajf558J/4+ZKDsHL9u
O7kuFCbk+V+LHgNN8k4Gapp2ITjxSRx0GUjyrqaKVFgX0v70GdIuEPlW4nw9
tNqF1hg3l6zPMlBIdeBNw4puJH3K1/o9EHkdCpo/bdSLYkPSz5hIM1ACZ+0T
HvV+lDo7Kk5d60Mqyu5Gj4z7Ufep80NLv/pQj4PMwVnXfnTuxdPRssU+tLM5
YPR7ej9ibrUo1Z3pQy8jtc48Iw2gbb6Xpo/196En4vXbN7oH0L42iXnJij5k
iZqipp2H0K4mAy3vgD7ElPirsDtgCA1+C/rU5tuHIjcJ9NQkD6FtI7s/i3j3
oW/VN4Xetg+h36lJvjkefUjq0p9Ei2PDqFyA1TjMvg+NW0lm9jGPIP3RK0yB
2n3IJuRBcWPwKDr6dNX0+LY+5DCydygvewIJXuVZ6n/Qi/qNf7B/rZ5AvKHo
cqFbL9LtfCZXNzyBJlzmxl/c7kVHasfujeyeRLIvxBL2Wvci1twUEr/vJPpJ
PeYvfqkXRXpQVVxNplCy0Mv1I3t70VfyrqijpBkkvXUhsbuhB3FQvSUZR+bQ
ieWCUU/uHvSCVCv9+voi0jl9OW2Hexcy676Es37/hdpsD7hW+3WiWxXeZo6S
a+he/OE0Pqd2lOvEpbvzzF+UHqh+RcWgFb12t53cf5kJbN69uSy62oS8Ev5c
XJpmBso+p3Qx6wbE1NIPRfdZ4dF05tnRuRok4XLT7ZL0ZnCbihu0kKhEw8sR
+pxf2OCOdk3R1YavSHPE5kHILXbYM/10mD21EGkPB8sICXHAdhNxrRnHd2iy
zOzRtyxOqPp3ZrKt6Q2S42kXVDXZBiOvB7+saocgDrRs2rO4HQb3PG6XzHPE
3U5IseevbQfpb3NhtugWPqp6NTuImRv2ayczqpOc8VKNr2snublB7MXU2yjr
O/h9neehb6W5QXBCxOrxxH18ykK84q4pN/wt+Nkt0euFfw/Uk+Jp4Iaz79uM
rc8/x0/PGP4W0SOBzV8rB8WrkXg85UmLpwEJao687jNMisSXjmfk9FwlwUMF
upPqVCRO81+3DDcjgdwhnWnD+1H4mmRs51YnEvx8Yz+S+CoazzTrLZjzJwFF
tU03rCQWJ3WaeBSXkGD8rw//79s0/OaGr8GechJInuthkg6j4UUSdEW3KhJ8
W5DvVc6j4dZ3mGYO1JMATl6zZV+i4aW8r6+ldJNAVeFZr5Tza9zl3KBK4C8S
WB7UOxFhlYh3lpozG8rywJuoR9P7VJLxuRNdux/I80BtmLxhtEEyvuXreUWa
Ag+8fkRpmXJOxg/hxyxHj/DAx1WdKeXUZDzsM6nOWZ0HZn88+BG/PQU/n1cU
GWDMA9+83k9e6kzBK1Mo+78E80DgdHVZ3OVUvE/M/0x/KA8o7lh7ne2Qii8n
bZixRvAAzz3O8mSfVFwscfLVmTge2LbXqBfep+Je8SXrbW954Iaw99sj29Jw
lQi7qp+lPJB3/N20VFEa/uFZuTG2zAMjm9fFMbZ0PE2zdqfvCg9sUvmn5Lsn
HY/mam6eWeeBWPbzeg370/FHwYxTn1l4IT+qPYblajquFbkmp0/iBbXNAsy/
stLxwdT9GwEyvCDik3aFop2Bb6+KTfhtygtLKZZ7dV0zcWa/pCvGFryQmSe+
ZfhZJr6kmU6usOKFXzonnutHZ+I/6j/6hjjywohSaHp/USae3N7suO8BL/iv
qrT6MWXhx0bZ4UYkL4zy1hkf9MrCb26+019fzwtyd574CDtm47uFqzvWm4jx
VC/vYffIxuuPCDZItfEC03a2lfZn2fghu4ovXt3E8dKC8ZKJ2ThbC1/MoXFe
qHEW0XjVko2n0PL14pnJ4MB17WnqgRzcoJDjXO0mMnhLDTr+VsrBuVqN1Va2
kKH3XtomOY0c3GXLlv90tpOhiUtB87xxDq7mcJnEtocMbseD/5n55eDDx1dq
7BXJMBxJm2/tysEj9bRKow+TgYQlvwsZzsG1HGkFVcfIMCVzO+Dwzxw8L1Ej
jXqCDALX9C/EMNFx761RPm3nyFBnYh28mUzHxTqOgrIlGXQVvo/4HaTjnXPP
D9vYkGGTHUkx6SgdD+QYlIuwJ8Mo3UGDrkzHl5T9Bedvk+EjPbA5RZ2Olyd3
rSU/IsOBo2/b/12i4zec3T9wRZNB57D3X9tbdPyQQt+HvXFkcO/QqnnnQsc5
FiD/FI0MiTdseH+60nH6LbaPj96QQZvySfTkQzr+x+nlp6V3ZNiiM5x33Z+O
N+xf+sSTTwa1vU8qzz6n44lz+gVyBWQouLN8SyaYjp9xEii0wslwHG9O+faK
joc7pn7uqSVDsVjsz/s0Om4tz1G0Wk+GiwFTxzmT6LjSrF0RfzMZwqnXTwan
0PEhB4UvFzqJ9bsl+Lul0/H9Dl+Ky4fJ0Lzh5lb6no6zymH4wBgxX8vefysf
6Hj7jBf+b5IMzx76Got9ouMe9holR+bJoHxjteBKER2vtmv5mvmXDDdzBC6h
cjoeK3uotJqJAmFspjsEK+m403Rk6SgrBWRb21pnq+g4v51xGcZBgT0azOdd
aum4me1EeRg/BSpq+z6sNtHxgzJaFbm7KLBsTCrxbKHj7FPZFfUCFHg6JTK6
1krHc2xcKtlFKYCP/glv7CDqZ71R5SFPAe+d6axrPUT99pp9i1KgwO3VRfO9
fUT9Jsq/5R8kjr8bvEmbQdTP2r967jgFMqwVSK4DdFxg70z1NkSBy5W/vd0H
6fjc+Pka6ZMU6PYNOnNniKivFV+tuQYFmCjtLRojRH2l3Gofn6XAGLtRosgo
Ud/xrtp4bQqceWfWPE+YO035++eLFLDpMLLKH6Pjg5a0752XKCAjUGLlNE7H
P0iy1i1fpsDXf5s6hSfo+LMxizreqxRgbntTWE5Y3lKmXsuUAia9f6Z+TtLx
PmthxyxzCuyffbvTc4rIpx2ZtN2KAuecXs+xTNPxY45bch1sKVCcnX3vPuGJ
W+sXGxwoINpKKxghHOkyuyDvTAE0qJmvNkPHT7kOhQbfocCpnCd3Iggv3etQ
nHcjxhsU/9tLOMmjtu2iBwXsZ7l1d/6k4zqe+N13nhSIoYg9OEWYyev9DvIT
CtzX03hsRTjbO/XT7acUOOh20+Ih4Wu+MVda/ShwiNlO/hlhLv+gNcXnRH32
a474EC4MfBLzKpgCun+WA10JWwW5Kv0KpcAukpXsNcI7Qmx79SMosK0ytvoQ
4cowk4cfo4njxcNsNhF2idAV3hlPAePei3yVxHxFok+XuL2mQP/J3gZ3wk2x
x01/JFMg8ewJmjjhRwnyLMfSKCAVEBhYRtRDLlE0KTqDAj1yTdF6hHuSd6it
Z1OAtCbW1E3UNyCVc+TqOwr8Ovn6oD7hY+kbPkUfKGD006y+nNiP8cxFCcEC
Cojb+b+WJByeM1b1oIgC8e+Pf3hI7J/6u26rPpwCUSieu4bY76W8hq2ojAKj
HL35WwknfixLT6ikwK1AiVxlIh8bRRnT1+so0Dic/NGLyFc2nvD8ayMFfiyd
bgwdpuNGpaFyIq0UGBRvvhRF5LGgyt1pqIsCCkzxhY+J/FrVOPKo9VFAVc46
zbyf6K+6G++SBygQ4im3R4nI++3ms0sW48R8Qhhp34j+EGlDryqnKHA907Hx
QTcdb+z475DkLAVEQk6GS3bR8X29e9zGl4n1fhPkv0L019jY1LoNKx8M9l+N
UiT6M3ySEVvLxgd3DsRZBDXQcbWZFmVZDj5IqTnPyqij468XPnvOkPhAm633
u1ENHb/6N4DVSYgPtvLxabeUEtdDpkfJjVQ+qKo6fbWthI5/YnFRPyDOB9mu
I/bfi+k4H7uR74IMHxTrRX2JKiT6mVeW885RPhCU5MFzc+m4ir39RIwSH/Af
8Bv3ziHqVZVdVYr4YHl2Nkc7i46/8DjgTTrFBzpXxeQq0+i41uihvxk6fHCe
1O+pnkDHawpOzA7a8oH3D3dlf+J6e4zypG6rI3E+u6fN1b50PN2hPGO/Mx94
/B0xYvKh436ip60euvHB2ZtVljqedFzjudbALh8+YL/oMe9/m45XXL/cciGe
DwpYfPJ1DOm44ufIXNfXfBCyS1p502U6nszXFRSfzAfq1pG8WbrE/ajGSGs6
nfi/3a2SYS06flLRrML3Ix+c2D9YOa1Cx0u22H8sbuSDICkxd3MqHf+c7RUj
y8oPIpmcjw+W5OBsWnq7I9j4gcNOa1tVfg5+cUIyipmDH5Jx8X71rBx8TLQu
vJ3ED8vMtq84o3NwctSOkEdC/HA24M3AJ+cc3PZJ5rPWo/zwwcBobxqWg+8x
aL/j4cQPtyf3PVEl7v83l9OWRm/zw5VrB0RibmTjuSHuty+68oP8gvXMwOVs
/HQddkviIT8kUneeUoZs/PZJW7vGAH6I/2tOlyVl47WyTDfEUonxXtkvrGdm
4e7M0he+9/LDRTV7zuquTHxUjbNTYoAf/PXuiZvXZeIXnk2bPB7mh94wr7E5
PBMX485xPDTFD/Y0SgIjORP/LqAYRFvhhyZfgwdkh0xc6IhKvQt5B0THa24e
/JuBlzroaAme2QHSdie3PyFn4Bw99zUc8nZAptIxK+Hdb/GRN9SwBI+dMIt2
HzbfIJ4XpXZtKtDbBQpW+HEpQRoeHH2zyhTbDdRMuxiRvHDcMOxaPdfYblgb
2K7ClOuPr6ilrCYU7wHH91t/7Tpjhw+NnHQr9RUAPvv8mILF2yhR+cCeOlNB
qPydlNXn6Y9KtTmerJsLQluJigO5wB8NmgxN7rUShPMRgYViC/5I1OtV4VMH
QSi5zhfbcyMAJVeuXgF3QTie68uToB6IUs6XRr4PE4SLRRmhV1leoDRTXf7o
KkH48+fpXW56MMryucNjuU8IrpA7J1VbQ9G00jUvn/1CUFXRupw6FYpkl9QW
k/4TgtdVd1NXWMJQuhmlrf+oEMTZMg2YHAhDaeh9pOEpIVAZ0+hXex6Gklfn
hLVNhKB5+GSz2YlXKNreTu7gSyH40heqgEeHoy6xSwm6YUJgrmudlJ4Tjnb1
HCc5RwjB4cGSkcfl4ShSk3MhO04IfkUnVS3OhKNXkukfpNKFYPOlQpNhFIGC
B8aUBMqE4HNWA9sSIwL56t04y7osBPdUU5bTSFEo8XyPkcUKMZ9KlrMvxaJQ
0Rk9h6p1IYAX7CKmR6LQgvLplwEswmBoa4o+mkQhIwmZDjJJGKyPWiQpZUUh
hd8LZmIywmDrFJmeqhqN+iK97qubCgMu38rDuBaDVkPWA1LNhWHAN8M82yEG
UZ67xG21Eoalq42Z5p4x6MzjmyV1DsJw+eUK91NaDMqz1mTT9xCGSPXjNTED
Mcj/GG/IzQhhONiu5E8yiUUHe16/9a0TBgnxruDtp+MQSc5qJadRGErzTLgb
dOPQtKfc6c4WYbA8Ket573ocShb9PCzVJQwHPnXKBd6LQxTbVuGaUWHi+fJ3
flp6HFrzYD3LxoRBFbdVxxf2eDSectM5mhkDWmgVWZASj9rrq6PkWDGIVxI4
clM4Hr3Dgsf12TDYNc92JP9gPLIpF3iayoVBSYgG+ZxpPPrBeeirxi4MYkNv
6OrnxaNKxajxnt0YRHSc5L9UHI/yrv3hviWAwZFGpfLj3+JRcE6pcZQwBomR
q0PfuuORhu75PxPixHh6wae6mBPQp2irwwEKGIir/zXpOpOA3pTVGgsrYmCy
beawq04CCpuWe/r+IAZ/vxtz/DNMQE4qy63dRzAY9zmTXG2bgKQGHzvLIgyC
IszbDAITUOTemKy6sxi0d8rEGVQnoKXFUylPzmHwdCfPpHxTAjpfvBB79Dxx
fpbd7jOdCYhNVzMwRQeDtgBrlz3jCeiOx6rNgysYDIa+8XvNQkONp1LM/ruK
wbtvfFYSbDQky3PRcMIIA+ek4y7xW2loOCXtjN51DL5H8gtYkWhIp+Gy1D5L
DGIufeo0FaSh7ChWbMgKg53aurqPMBraap6zI8oGgxdMZ7eGiNJQyQrbls0O
GAj5F8oF7aUheZH8kR4XDOrGjr6aU6QhrjuUpEAvDHBh14iLZ2jICpVEn/TG
wNz1eX7yWRoq22oXsuKDwb2PBxWmztHQ/fiyx+Z+GPSyRGno6NDQRJXzdaVg
DET6hxT9DGlILUTIYOElBqlBge6uRjREM6o5nxaKQau2hsIVYxoymKciSgQG
3Sc0136Z0lDl7ibB6TgMnnRdVom1oiGREQ++xAQMpHDV8xI2NPQgR2qbwWsM
NA+/HUmypSFFtUd/ypIxuP5SJPueAw0Fb5dduveGqOfUxEiTIw1NdXZMyadh
oPz1ZbbgLRpKtJfvjsnAYNLg+L+g2zT073B388UsDLwbZQLyXWjoCotvzZYc
DNSkuvIa79AQKaKv4PY7DJzK4icZrjRkZ+qfuzcPAw7Pvj+tbjT0TebQW8YH
DEY25D59uUdDniXPI88WYKB+N+WQjTsNTfaWhK0WYsCQa/eX9qAh/fXF4NQi
DJpibrMxCH/dKflcrxgDgbiwTN8HxH4fMvRjLcFAukL/kdhDGorQfe6T+5XI
i26f9wfCLLdKHpuUYSCmoP/lmCcN2b9YfLCtAgOLmVnZPMKdGRL3P1cS8ysa
aqc+oiHV6it3rb9hoGDjVPyEcPZooPOOGiIvVt2jPwjv3lTiUFGLwfoHJ12x
xzTkQ120uV2HwcCU15YbhOdUJCypDRgU7rdlCydsZHTlRkMjBug/P90vhKvu
BZo8aMZgab/qQidhhQj8qkwrBg5jm0fHCcflLVz+0UYcH6ymMEOYvVn8km8H
8fukW9cIYZdZgwsHf2CgtE90sJkwgytQa6gLg6yVaq08wprSuMbLHgyOWa8J
+hPOP72ghvowOL5J48olwlQL8RMzDCLPn7RYyIQDvQyUYwYwkOlKE6gk1vc7
IeDomSEMfuxhzbQnbPal+ODvYWI+Iex5WwnXd80fSBnF4Faa3ZFoon5HV8Tk
dMcx2L1rQkmYcDKfgTTzJAabN5QrIon6k/4LkMiZwqDx/YE2NsKj9vNCnLMY
/LSTiykh9vNigNiegjkMyl8MGXARLkq7vMNyAYNX2UFZWkQeQoe+cJctY8Cd
by2TQeTlH9M8563fGHx+dMeomsiTjZAYu/AqBnc5FBV7iLzBFX8m9z8Y6HNW
jzGIPGbc/fJH6h8Gv99m1zYSeeUPm1tp38Bg+LLFzXwizzP1+vMKrFTQsk5t
NCHyHq0mOji5lQqnDDymZexoaLOZfl8kJxXyir6slRL95OTp13VqGxU0r+wf
0LamodOFs82JJCo06NSeVr9JQ0vyRWWGO6ggxUtezjShIZNzszj7LirISc8q
T12joRobkaL83VRwMe96LPT//k55lscrRIWj74q4zA1o6NwevZQaMSoYxXJk
2V6gochhuZKrElTIUPry+a42cT3LYu+elqTCeAGXrpsWDXlAEYlbhgpVn8Ol
TTRoKNNC1EP3ABVSUtvHPiMa4qDP6/QoU+Gpwe8/ebJEP92rtbdHxHoK6WbS
0kR/n0x59g+oYKimHhQuSexnm0ExpkaFpAjqOV0R4nq2hu+10KSC6a17dcY7
iPyqvWD6qU8FXJ9j1WsjAfFut9rjaUAF65UkN83VBGTcceIQyZBKvA9mcTAt
JqBf1su2CteocH7h0rODowlIIsio4+4NKlAqArtrahOQ9w/p7A1HKgy7x/u+
CU1AJxyqrvL4UcFv5vK76/wJaK1z4lS5PxUS73IVqm9LQHmqXAqugVSwt11k
3rGJGG/XRfbeICqIyVd6PZyPR1zlXXlp4cT8tkTEmdXGo85dP7dBMhXG7Ao3
/NzjkVMFpcQBp0KqXW1kVl0ckt5/OIP6lQrtvZrfFUrj0FD0lfDWUip0b2Ju
S8mPQ/pO8XbHKon6mm5E6yXEIaU9UrvY6qjwn3y4fa9jHGK/ddw5rosK5r7e
k1Hb4lCCgJnY92UqtAkfrhNXikXH/pORM/tNBc7qREsr+VjUembp8MoKFZg/
Nb2NFYlF7K5Pz4r9Ic4fmabbxR6LnJrSnT1YRGD9fNbjjNYYBE8XS2S5RSD5
83v3HOsYNDjrfe25lAiYdgSGBvtFI7Gy1HDtqyLQwtc+cDUpEtXLriT3GIkA
GlJpyQ+NRG7hGu9tjEXAptR3mM07EtVaTzQ8NRWBdzcuhz81j0TOJJmtuKUI
1NtOem8Wj0T4tWx3eRcR6MwL38KVHIEMV/Kuk54T48tu3hxMPA8G7yuVbi4W
AWrDFrKwXRi6ubipqVpaFB41L6WwRL1AZrkLmF+QKLxosNDqcPBGdl66fzRf
igLGZ1lRAd7ojm5eB1eoKDzoi92cy+uNni3feREcLgq7D3VbPcx/grKPrq5H
xBHjsXu/WvnrhVa/brS/yRCFE7vFTvkFPkbBzVzPy6tEQSGGmonpPEDRSfZW
T6tFwfBeCO/HZQ+U5FKvqlErCgeOGBWdj/JA+fzBa7X1otDePD/1rN8d9RiS
rVraRKE4OEBRxPE+khzapTo4JApotHVR5rkr2p93Xyh5RBTOnGp6xHbAFR3z
6V61GBOF6EMFQWOtd5GWZBx9YlIUCp03Q7HAXeRsiwnNz4vCc/lclYpMF+Sh
9Hj13SLx/4Rv8t0XXJDPtsFWl2VRGDg0V7C6dBtF5iQFrKyIwvvks0kXlYn3
h0ebLAvXREGUR8E3YMAZZVy0OOnxRxR2uDzf1uDjjPJEKgVV/hH1NHd3E5B2
RsWLEqsbG6LQN8rE4VJ/C/0PChqxZw==
     "]]}},
  AspectRatio->NCache[GoldenRatio^(-1), 0.6180339887498948],
  Axes->True,
  AxesLabel->{
    FormBox["x", TraditionalForm], 
    FormBox[
     FractionBox[
      TemplateBox[{"1", "x"}, "BesselJ"], "x"], TraditionalForm]},
  AxesOrigin->{0, 0},
  PlotRange->{{0, 10}, {-0.06613970906983443, 0.4999999999999974}},
  PlotRangeClipping->True,
  PlotRangePadding->{
    Scaled[0.02], 
    Scaled[0.02]}]], "Output",
 CellChangeTimes->{3.5599569060622225`*^9, 3.5599570067769833`*^9}]
}, Open  ]],

Cell[BoxData[
 RowBox[{"NSolve", "[", 
  RowBox[{
   RowBox[{
    RowBox[{"BesselJ", "[", 
     RowBox[{"1", ",", " ", "x"}], "]"}], "/", "x"}], " ", "\[Equal]", " ", 
   "0.25"}], "]"}]], "Input",
 CellChangeTimes->{{3.5599573046050177`*^9, 3.5599573158316603`*^9}}],

Cell[BoxData[
 RowBox[{"NSolve", "[", 
  RowBox[{
   RowBox[{
    FractionBox[
     RowBox[{"BesselJ", "[", 
      RowBox[{"1", ",", "x"}], "]"}], "x"], "\[Equal]", "0.25`"}], ",", " ", 
   "x", ",", " ", 
   RowBox[{"0", " ", "<", " ", "x", " ", "<", " ", "4"}]}], "]"}]], "Input",
 CellChangeTimes->{{3.559957334268715*^9, 3.5599573479995003`*^9}}],

Cell[BoxData[
 RowBox[{
  StyleBox[
   RowBox[{"NSolve", "::", "bdomv"}], "MessageName"], 
  RowBox[{
  ":", " "}], "\<\"Warning: \[NoBreak]\\!\\(0 < x < 4\\)\[NoBreak] is not a \
valid domain specification. Mathematica is assuming it is a variable to \
eliminate. \\!\\(\\*ButtonBox[\\\"\[RightSkeleton]\\\", ButtonStyle->\\\"Link\
\\\", ButtonFrame->None, ButtonData:>\\\"paclet:ref/NSolve\\\", ButtonNote -> \
\\\"NSolve::bdomv\\\"]\\)\"\>"}]], "Message", "MSG",
 CellChangeTimes->{3.5599573489195523`*^9}],

Cell[BoxData[
 RowBox[{
  StyleBox[
   RowBox[{"NSolve", "::", "ivar"}], "MessageName"], 
  RowBox[{
  ":", " "}], "\<\"\[NoBreak]\\!\\(0 < x < 4\\)\[NoBreak] is not a valid \
variable. \\!\\(\\*ButtonBox[\\\"\[RightSkeleton]\\\", \
ButtonStyle->\\\"Link\\\", ButtonFrame->None, \
ButtonData:>\\\"paclet:ref/message/General/ivar\\\", ButtonNote -> \
\\\"NSolve::ivar\\\"]\\)\"\>"}]], "Message", "MSG",
 CellChangeTimes->{3.5599573489895563`*^9}],

Cell[BoxData[
 RowBox[{"NSolve", "[", 
  RowBox[{
   RowBox[{
    FractionBox[
     RowBox[{"BesselJ", "[", 
      RowBox[{"1", ",", "x"}], "]"}], "x"], "\[Equal]", "0.25`"}], ",", "x", 
   ",", "Reals"}], "]"}]], "Input",
 CellChangeTimes->{{3.5599573631713676`*^9, 3.5599573652664876`*^9}}],

Cell[BoxData[
 RowBox[{
  StyleBox[
   RowBox[{"NSolve", "::", "nsmet"}], "MessageName"], 
  RowBox[{
  ":", " "}], "\<\"This system cannot be solved with the methods available to \
NSolve. \\!\\(\\*ButtonBox[\\\"\[RightSkeleton]\\\", \
ButtonStyle->\\\"Link\\\", ButtonFrame->None, \
ButtonData:>\\\"paclet:ref/NSolve\\\", ButtonNote -> \
\\\"NSolve::nsmet\\\"]\\)\"\>"}]], "Message", "MSG",
 CellChangeTimes->{3.559957366173539*^9}],

Cell[BoxData[
 RowBox[{"NSolve", "[", 
  RowBox[{
   RowBox[{
    FractionBox[
     RowBox[{"BesselJ", "[", 
      RowBox[{"1", ",", "x"}], "]"}], "x"], "\[Equal]", "0.25`"}], ",", "x", 
   ",", 
   RowBox[{"x", ">", " ", "0"}]}], "]"}]], "Input",
 CellChangeTimes->{{3.5599574018435793`*^9, 3.5599574040517063`*^9}}],

Cell[BoxData[
 RowBox[{
  StyleBox[
   RowBox[{"NSolve", "::", "bdomv"}], "MessageName"], 
  RowBox[{
  ":", " "}], "\<\"Warning: \[NoBreak]\\!\\(x > 0\\)\[NoBreak] is not a valid \
domain specification. Mathematica is assuming it is a variable to eliminate. \
\\!\\(\\*ButtonBox[\\\"\[RightSkeleton]\\\", ButtonStyle->\\\"Link\\\", \
ButtonFrame->None, ButtonData:>\\\"paclet:ref/NSolve\\\", ButtonNote -> \
\\\"NSolve::bdomv\\\"]\\)\"\>"}]], "Message", "MSG",
 CellChangeTimes->{3.559957404767747*^9}],

Cell[BoxData[
 RowBox[{
  StyleBox[
   RowBox[{"NSolve", "::", "ivar"}], "MessageName"], 
  RowBox[{
  ":", " "}], "\<\"\[NoBreak]\\!\\(x > 0\\)\[NoBreak] is not a valid \
variable. \\!\\(\\*ButtonBox[\\\"\[RightSkeleton]\\\", \
ButtonStyle->\\\"Link\\\", ButtonFrame->None, \
ButtonData:>\\\"paclet:ref/message/General/ivar\\\", ButtonNote -> \
\\\"NSolve::ivar\\\"]\\)\"\>"}]], "Message", "MSG",
 CellChangeTimes->{3.559957404769747*^9}],

Cell[BoxData[
 RowBox[{"FindRoot", "[", 
  RowBox[{
   RowBox[{
    FractionBox[
     RowBox[{"BesselJ", "[", 
      RowBox[{"1", ",", "x"}], "]"}], "x"], "\[Equal]", "0.25`"}], ",", 
   RowBox[{"{", 
    RowBox[{"x", ",", " ", "2"}], "}"}]}], "]"}]], "Input",
 CellChangeTimes->{{3.5599574503203526`*^9, 3.5599574717585783`*^9}}],

Cell[BoxData[
 RowBox[{"{", 
  RowBox[{"x", "\[Rule]", "2.2150893677242327`"}], "}"}]], "Output",
 CellChangeTimes->{3.5599574725426235`*^9}]
}, Open  ]],

Cell[CellGroupData[{

Cell["Part (b)", "Subsection",
 CellChangeTimes->{{3.5599647900441604`*^9, 3.559964792561304*^9}}],

Cell[CellGroupData[{

Cell[BoxData[{
 RowBox[{"Clear", "[", "r", "]"}], "\[IndentingNewLine]", 
 RowBox[{"Manipulate", "[", "\[IndentingNewLine]", 
  RowBox[{
   RowBox[{"Plot", "[", " ", 
    RowBox[{
     RowBox[{"{", 
      RowBox[{
       RowBox[{"1", " ", "+", " ", 
        RowBox[{"Cos", "[", "x", "]"}]}], ",", " ", 
       RowBox[{
        RowBox[{"Sin", "[", 
         RowBox[{"r", " ", "x"}], "]"}], "/", 
        RowBox[{"(", 
         RowBox[{"r", " ", "x"}], ")"}]}], ",", " ", 
       RowBox[{"1", " ", "+", " ", 
        RowBox[{
         RowBox[{"Cos", "[", "x", "]"}], " ", 
         RowBox[{
          RowBox[{"Sin", "[", 
           RowBox[{"r", " ", "x"}], "]"}], "/", 
          RowBox[{"(", 
           RowBox[{"r", " ", "x"}], ")"}]}]}]}]}], "}"}], ",", " ", 
     RowBox[{"{", 
      RowBox[{"x", ",", " ", "0", ",", " ", "20"}], "}"}]}], "]"}], 
   "\[IndentingNewLine]", ",", 
   RowBox[{"{", 
    RowBox[{
     RowBox[{"{", 
      RowBox[{"r", ",", " ", "0.41"}], "}"}], ",", " ", "0.1", ",", " ", "10",
      ",", " ", 
     RowBox[{"Appearance", "\[Rule]", "\"\<Labeled\>\""}]}], "}"}]}], 
  "]"}]}], "Input",
 CellChangeTimes->{{3.559962229470704*^9, 3.5599623289953966`*^9}, {
  3.559962372802902*^9, 3.5599624491362686`*^9}, {3.5599633984765673`*^9, 
  3.5599634019357653`*^9}, {3.559963469280617*^9, 3.5599634697436438`*^9}, {
  3.5599635422627916`*^9, 3.5599635426678147`*^9}, {3.559963591955634*^9, 
  3.559963593098699*^9}}],

Cell[BoxData[
 TagBox[
  StyleBox[
   DynamicModuleBox[{$CellContext`r$$ = 0.31, Typeset`show$$ = True, 
    Typeset`bookmarkList$$ = {}, Typeset`bookmarkMode$$ = "Menu", 
    Typeset`animator$$, Typeset`animvar$$ = 1, Typeset`name$$ = 
    "\"untitled\"", Typeset`specs$$ = {{{
       Hold[$CellContext`r$$], 0.41}, 0.1, 10}}, Typeset`size$$ = {
    360., {108., 111.}}, Typeset`update$$ = 0, Typeset`initDone$$, 
    Typeset`skipInitDone$$ = True, $CellContext`r$22170$$ = 0}, 
    DynamicBox[Manipulate`ManipulateBoxes[
     1, StandardForm, "Variables" :> {$CellContext`r$$ = 0.41}, 
      "ControllerVariables" :> {
        Hold[$CellContext`r$$, $CellContext`r$22170$$, 0]}, 
      "OtherVariables" :> {
       Typeset`show$$, Typeset`bookmarkList$$, Typeset`bookmarkMode$$, 
        Typeset`animator$$, Typeset`animvar$$, Typeset`name$$, 
        Typeset`specs$$, Typeset`size$$, Typeset`update$$, Typeset`initDone$$,
         Typeset`skipInitDone$$}, "Body" :> 
      Plot[{1 + Cos[$CellContext`x], 
         Sin[$CellContext`r$$ $CellContext`x]/($CellContext`r$$ \
$CellContext`x), 1 + 
         Cos[$CellContext`x] (
           Sin[$CellContext`r$$ $CellContext`x]/($CellContext`r$$ \
$CellContext`x))}, {$CellContext`x, 0, 20}], 
      "Specifications" :> {{{$CellContext`r$$, 0.41}, 0.1, 10, Appearance -> 
         "Labeled"}}, "Options" :> {}, "DefaultOptions" :> {}],
     ImageSizeCache->{409., {153., 158.}},
     SingleEvaluation->True],
    Deinitialization:>None,
    DynamicModuleValues:>{},
    SynchronousInitialization->True,
    UnsavedVariables:>{Typeset`initDone$$},
    UntrackedVariables:>{Typeset`size$$}], "Manipulate",
   Deployed->True,
   StripOnInput->False],
  Manipulate`InterpretManipulate[1]]], "Output",
 CellChangeTimes->{{3.5599622612175198`*^9, 3.5599623296984367`*^9}, 
   3.559962385575633*^9, 3.5599624521444407`*^9, 3.5599634028478174`*^9, 
   3.5599634707226996`*^9, 3.55996354398589*^9, 3.5599635939267464`*^9}]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"Plot", "[", 
  RowBox[{
   RowBox[{"Sinc", "[", "x", "]"}], ",", " ", 
   RowBox[{"{", 
    RowBox[{"x", ",", " ", "0", ",", " ", "10"}], "}"}]}], "]"}]], "Input",
 CellChangeTimes->{{3.559964098611613*^9, 3.559964109506236*^9}}],

Cell[BoxData[
 GraphicsBox[{{}, {}, 
   {Hue[0.67, 0.6, 0.6], LineBox[CompressedData["
1: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
6hxycS9DftUpt5vqZaG665hSv38Z4tKOF/3WJAto+zU/9KgMraQ9VNBmy4Jh
fNSt9toyJLXgY9D0Thbuv8/gWylWjjY/N4ob+ykL6d4OpvM55chz1eyOTYpy
MPDq+ZXItxVoOnSywUxZDrTWiNzJGqtAl3i+Gfmul4MbJZfVchcrkB+n/3Tj
Rjm4vkVF6TK1EoUyW0PMdOWAfPGp0lrHSpR1PaH3qpkcyNqJkzomK9Hwl30+
DcFysOHkKpb+TBXal9KZphYqBzr/up5sXlGNUk+c7Ih8QFzfl90rsKoa2bIv
rD3zSA78JXWM3LdVow+Fqe286XKwJSA7TcqnGnVf+0c/UCcHD9WLJGZ/VaMG
chWzdVYO5KR9K58P1SAF9oHZjb/lgMI98jvhZw3yD3xFjV2Sg9rWkbkL/2rQ
nvmxiy488mCOpqR71tSiqr7VVEGSPGyx/RR7xaQWFWde8jJUl4dScxdHtbJa
lLZ7k2yHnTwc8Z39sOlCHWo4InR7yUEe2hIjPlpeq0NDp4bH17vIw42mgTPu
d+qQYsCjqiBPeeiYfMJ3NK4OPW1ZsIRr8lCvcchZmlGHMkwaYl9Ey8P7y/xx
yYIYtZxO4BqKkQde89U3PCkYjV7wdiElyINXquB7VVmMlKOVd3g8kQe97/0/
rDUwetZ7751yvjxw/5O/3WCMUZadqVR8qzzIa7uuuB2GUZuXxo02ljyEVZSS
FqMwGrvNN/qrQx72xb28b5WAkeqz8lLTN/KQdmH8Q382Rtnjsmain+Vh0iC7
5VMzRjkXR6L8F+XhkMaJ3e8XMGIF1i7l/5WH770eN+aXMRp/9PhMPxcVYlf+
kOXiZSD1ikObdVZS4d3NZ6FjAgyU9yeve0aCCnv1dI7tkGSg53cukZ03UGFf
TuTya1UGmtC1CbijRYU3FT/3q6szkMbs/pn0zVTY6iC0y2cDA+XYS/YM7qSC
Xn207swmBspCL2JP6lPBXQnleegw0NiveMGrBlRYzRP2wEuXgVTyA3xjjKjw
LPCcqsceBnomd8z6zTEqbOjrDtLbx0BPF37Sjpyiwn9qG4UuGTDQSGFvuLs9
FY5oaTarHGYgRRcGd6gjFbjE+OGlEQOlvX043OpGhXwb9lWe/xjo8/0rx0c9
qTC4Q2RX2FEGoh841bzCiwo/qtoZwqYMlPJCM3OvDxX6fQupE2YMNOAqJX36
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
o7ywvKwI2w/aOMV8yMX/AypSqto=
     "]]}},
  AspectRatio->NCache[GoldenRatio^(-1), 0.6180339887498948],
  Axes->True,
  AxesOrigin->{0, 0},
  PlotRange->{{0, 10}, {-0.21723357397428536`, 0.999999999999993}},
  PlotRangeClipping->True,
  PlotRangePadding->{
    Scaled[0.02], 
    Scaled[0.02]}]], "Output",
 CellChangeTimes->{3.5599641102262774`*^9}]
}, Open  ]]
}, Open  ]]
}, Open  ]]
},
WindowSize->{986, 710},
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
Cell[CellGroupData[{
Cell[1257, 32, 113, 1, 71, "Section"],
Cell[CellGroupData[{
Cell[1395, 37, 574, 16, 31, "Input"],
Cell[1972, 55, 609, 19, 83, "Output"]
}, Open  ]]
}, Open  ]],
Cell[CellGroupData[{
Cell[2630, 80, 95, 1, 71, "Section"],
Cell[CellGroupData[{
Cell[2750, 85, 6264, 168, 612, "Input"],
Cell[9017, 255, 206, 3, 30, "Output"],
Cell[9226, 260, 453, 11, 30, "Output"],
Cell[9682, 273, 1827, 36, 366, "Output"],
Cell[11512, 311, 1902, 37, 462, "Output"],
Cell[13417, 350, 305, 6, 30, "Output"],
Cell[13725, 358, 187, 2, 30, "Output"]
}, Open  ]],
Cell[CellGroupData[{
Cell[13949, 365, 96, 1, 36, "Subsection"],
Cell[CellGroupData[{
Cell[14070, 370, 3892, 103, 292, "Input"],
Cell[17965, 475, 641, 9, 30, "Output"],
Cell[18609, 486, 1065, 28, 54, "Output"],
Cell[19677, 516, 1688, 28, 50, "Output"],
Cell[21368, 546, 1054, 18, 30, "Output"],
Cell[22425, 566, 757, 13, 30, "Output"],
Cell[23185, 581, 1055, 18, 30, "Output"],
Cell[24243, 601, 1054, 18, 30, "Output"],
Cell[25300, 621, 811, 14, 30, "Output"],
Cell[26114, 637, 758, 13, 30, "Output"],
Cell[26875, 652, 661, 9, 30, "Output"],
Cell[27539, 663, 661, 9, 30, "Output"]
}, Open  ]],
Cell[CellGroupData[{
Cell[28237, 677, 669, 17, 52, "Input"],
Cell[28909, 696, 266, 3, 30, "Output"],
Cell[29178, 701, 261, 3, 30, "Output"]
}, Open  ]]
}, Open  ]],
Cell[CellGroupData[{
Cell[29488, 710, 100, 1, 36, "Subsection"],
Cell[CellGroupData[{
Cell[29613, 715, 1746, 53, 132, "Input"],
Cell[31362, 770, 205, 4, 47, "Output"],
Cell[31570, 776, 195, 4, 47, "Output"],
Cell[31768, 782, 520, 18, 74, "Output"]
}, Open  ]],
Cell[CellGroupData[{
Cell[32325, 805, 576, 12, 72, "Input"],
Cell[32904, 819, 594, 12, 30, "Output"]
}, Open  ]],
Cell[CellGroupData[{
Cell[33535, 836, 641, 19, 52, "Input"],
Cell[34179, 857, 140, 2, 30, "Output"]
}, Open  ]],
Cell[34334, 862, 684, 15, 92, InheritFromParent],
Cell[CellGroupData[{
Cell[35043, 881, 587, 17, 31, "Input"],
Cell[35633, 900, 8297, 251, 202, "Output"]
}, Open  ]]
}, Open  ]]
}, Open  ]],
Cell[CellGroupData[{
Cell[43991, 1158, 99, 1, 71, "Section"],
Cell[CellGroupData[{
Cell[44115, 1163, 98, 1, 36, "Subsection"],
Cell[CellGroupData[{
Cell[44238, 1168, 2286, 61, 132, "Input"],
Cell[46527, 1231, 562, 16, 46, "Output"],
Cell[47092, 1249, 225, 6, 47, "Output"]
}, Open  ]],
Cell[CellGroupData[{
Cell[47354, 1260, 296, 8, 47, "Input"],
Cell[47653, 1270, 229, 6, 48, "Output"]
}, Open  ]],
Cell[CellGroupData[{
Cell[47919, 1281, 452, 12, 52, "Input"],
Cell[48374, 1295, 12286, 207, 234, "Output"],
Cell[60663, 1504, 201, 5, 30, "Output"]
}, Open  ]],
Cell[CellGroupData[{
Cell[60901, 1514, 701, 19, 52, "Input"],
Cell[61605, 1535, 255, 6, 30, "Output"],
Cell[61863, 1543, 263, 6, 33, "Output"]
}, Open  ]],
Cell[62141, 1552, 574, 14, 52, "Input"],
Cell[62718, 1568, 1448, 42, 96, InheritFromParent],
Cell[64169, 1612, 1199, 36, 63, "Output"],
Cell[CellGroupData[{
Cell[65393, 1652, 341, 8, 31, "Input"],
Cell[65737, 1662, 143, 3, 47, "Output"]
}, Open  ]],
Cell[CellGroupData[{
Cell[65917, 1670, 580, 16, 31, "Input"],
Cell[66500, 1688, 10618, 182, 261, "Output"]
}, Open  ]],
Cell[77133, 1873, 267, 7, 31, "Input"],
Cell[77403, 1882, 350, 9, 47, InheritFromParent],
Cell[77756, 1893, 509, 10, 21, "Message"],
Cell[78268, 1905, 445, 10, 21, "Message"],
Cell[78716, 1917, 292, 8, 47, InheritFromParent],
Cell[79011, 1927, 434, 10, 21, "Message"],
Cell[79448, 1939, 317, 9, 47, InheritFromParent],
Cell[79768, 1950, 503, 10, 21, "Message"],
Cell[80274, 1962, 439, 10, 21, "Message"],
Cell[80716, 1974, 330, 9, 47, InheritFromParent],
Cell[81049, 1985, 141, 3, 30, "Output"]
}, Open  ]],
Cell[CellGroupData[{
Cell[81227, 1993, 98, 1, 36, "Subsection"],
Cell[CellGroupData[{
Cell[81350, 1998, 1439, 37, 92, "Input"],
Cell[82792, 2037, 1960, 39, 328, "Output"]
}, Open  ]],
Cell[CellGroupData[{
Cell[84789, 2081, 253, 6, 31, "Input"],
Cell[85045, 2089, 10441, 177, 230, "Output"]
}, Open  ]]
}, Open  ]]
}, Open  ]]
}
]
*)

(* End of internal cache information *)

(* NotebookSignature EuT0PqwovF0Z0BwLsjDY@yQE *)
