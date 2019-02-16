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
NotebookDataLength[    178788,       3849]
NotebookOptionsPosition[    169647,       3692]
NotebookOutlinePosition[    170038,       3709]
CellTagsIndexPosition[    169995,       3706]
WindowFrame->Normal*)

(* Beginning of Notebook Content *)
Notebook[{

Cell[CellGroupData[{
Cell[BoxData[{
 RowBox[{
  RowBox[{"<<", "peeters`"}], " ", ";"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{
  "peeters`setGitDir", "[", " ", "\"\<../project/figures/phy485-optics\>\"", 
   " ", "]"}], " ", "\[IndentingNewLine]"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{"fs", "=", 
   RowBox[{
    RowBox[{"Style", "[", 
     RowBox[{"#", ",", 
      RowBox[{"FontSize", "\[Rule]", "14"}]}], "]"}], "&"}]}], 
  ";"}]}], "Input",
 CellChangeTimes->{{3.7593250251889763`*^9, 
  3.759325025512106*^9}},ExpressionUUID->"aeba1991-93fe-4396-ab2b-\
f5c48d86210a"],

Cell[BoxData["\<\"/Users/pjoot/project/figures/phy485-optics\"\>"], "Output",
 CellChangeTimes->{3.7593249654551573`*^9, 
  3.759325026153507*^9},ExpressionUUID->"625e8446-f1a7-425a-9965-\
bae5ad5ec179"]
}, Open  ]],

Cell[CellGroupData[{

Cell["Problem set II.  Question 1c", "Section",
 CellChangeTimes->{{3.559849512903304*^9, 
  3.559849522843872*^9}},ExpressionUUID->"791233b7-8c6c-43e6-bf6f-\
ee3c2c685d12"],

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
  3.559849455501021*^9, 
  3.559849456456075*^9}},ExpressionUUID->"a6ec6bdb-efb6-435d-ba20-\
d633486324b6"],

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
 CellChangeTimes->{
  3.5598320905027995`*^9},ExpressionUUID->"851f0c7f-de90-48e9-96e2-\
881f729c9d0a"]
}, Open  ]]
}, Open  ]],

Cell[CellGroupData[{

Cell["Question 2", "Section",
 CellChangeTimes->{{3.559849532719437*^9, 
  3.559849533715494*^9}},ExpressionUUID->"93226eff-43b2-4ccc-901f-\
be3f39a56699"],

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
      RowBox[{"s", ",", " ", "0", ",", " ", "r"}], "}"}], ",", 
     "\[IndentingNewLine]", 
     RowBox[{"PlotStyle", "\[Rule]", "Thick"}], ",", "\[IndentingNewLine]", 
     " ", 
     RowBox[{"(*", 
      RowBox[{
       RowBox[{"PlotRange", " ", "\[Rule]", " ", 
        RowBox[{"{", 
         RowBox[{"0", ",", " ", "0.2"}], "}"}]}], ","}], "*)"}], " ", 
     RowBox[{"AxesLabel", "\[Rule]", 
      RowBox[{"{", 
       RowBox[{
        RowBox[{
         SubscriptBox["u", "0"], "//", "fs"}], ",", 
        RowBox[{
         RowBox[{
          SubscriptBox["\"\<I\>\"", "f"], "/", 
          SubscriptBox["\"\<I\>\"", "\[Infinity]"]}], " ", "//", "fs"}]}], 
       "}"}]}]}], "]"}], "\[IndentingNewLine]", ",", "\[IndentingNewLine]", 
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
       "\[IndentingNewLine]", 
       RowBox[{"PlotStyle", "\[Rule]", "Thick"}], ",", "\[IndentingNewLine]", 
       RowBox[{"AxesLabel", "\[Rule]", 
        RowBox[{"{", " ", 
         RowBox[{
          RowBox[{
           RowBox[{"\"\<C\>\"", "[", "s", "]"}], " ", "//", " ", "fs"}], ",", 
          " ", 
          RowBox[{
           RowBox[{"I", " ", 
            RowBox[{"\"\<S\>\"", "[", "s", "]"}]}], " ", "//", "fs"}]}], 
         "}"}]}]}], "\[IndentingNewLine]", 
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
  3.5598511841598945`*^9}, {3.759318443370166*^9, 3.759318450672312*^9}, {
  3.75931849767095*^9, 3.7593184998793364`*^9}, {3.7593250325013647`*^9, 
  3.759325052311212*^9}},ExpressionUUID->"37c640f7-0279-42c7-b13c-\
45cc6c1141fc"],

Cell[BoxData[
 RowBox[{"1", "+", "\[ImaginaryI]"}]], "Output",
 CellChangeTimes->{{3.5598494406881733`*^9, 3.5598494842526655`*^9}, 
   3.5598501029510527`*^9, 3.559850422339321*^9, 3.5598511861560087`*^9, 
   3.759318455724844*^9, 3.759318504072605*^9, 3.759324973806676*^9, 
   3.759325057503806*^9},ExpressionUUID->"afb1c287-4856-4bb4-a2e9-\
9bd25da36302"],

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
   3.5598501029510527`*^9, 3.559850422339321*^9, 3.5598511861560087`*^9, 
   3.759318455724844*^9, 3.759318504072605*^9, 3.759324973806676*^9, 
   3.7593250575390043`*^9},ExpressionUUID->"2a8835e4-99d5-41ce-ae56-\
aed881029fda"],

Cell[BoxData[
 TagBox[
  StyleBox[
   DynamicModuleBox[{$CellContext`r$$ = 3, Typeset`show$$ = True, 
    Typeset`bookmarkList$$ = {}, Typeset`bookmarkMode$$ = "Menu", 
    Typeset`animator$$, Typeset`animvar$$ = 1, Typeset`name$$ = 
    "\"untitled\"", Typeset`specs$$ = {{{
       Hold[$CellContext`r$$], 3}, 1, 20}}, Typeset`size$$ = {
    540., {184., 191.}}, Typeset`update$$ = 0, Typeset`initDone$$, 
    Typeset`skipInitDone$$ = True, $CellContext`r$7737$$ = 0}, 
    DynamicBox[Manipulate`ManipulateBoxes[
     1, StandardForm, "Variables" :> {$CellContext`r$$ = 3}, 
      "ControllerVariables" :> {
        Hold[$CellContext`r$$, $CellContext`r$7737$$, 0]}, 
      "OtherVariables" :> {
       Typeset`show$$, Typeset`bookmarkList$$, Typeset`bookmarkMode$$, 
        Typeset`animator$$, Typeset`animvar$$, Typeset`name$$, 
        Typeset`specs$$, Typeset`size$$, Typeset`update$$, Typeset`initDone$$,
         Typeset`skipInitDone$$}, "Body" :> Plot[
        $CellContext`iRatio[$CellContext`s], {$CellContext`s, 
         0, $CellContext`r$$}, PlotStyle -> Thick, AxesLabel -> {
          $CellContext`fs[
           Subscript[$CellContext`u, 0]], 
          $CellContext`fs[
          Subscript["I", $CellContext`f]/Subscript["I", Infinity]]}], 
      "Specifications" :> {{{$CellContext`r$$, 3}, 1, 20, Appearance -> 
         "Labeled"}}, "Options" :> {}, "DefaultOptions" :> {}],
     ImageSizeCache->{606., {246., 255.}},
     SingleEvaluation->True],
    Deinitialization:>None,
    DynamicModuleValues:>{},
    SynchronousInitialization->True,
    UndoTrackedVariables:>{Typeset`show$$, Typeset`bookmarkMode$$},
    UnsavedVariables:>{Typeset`initDone$$},
    UntrackedVariables:>{Typeset`size$$}], "Manipulate",
   Deployed->True,
   StripOnInput->False],
  Manipulate`InterpretManipulate[1]]], "Output",
 CellChangeTimes->{{3.5598494406881733`*^9, 3.5598494842526655`*^9}, 
   3.5598501029510527`*^9, 3.559850422339321*^9, 3.5598511861560087`*^9, 
   3.759318455724844*^9, 3.759318504072605*^9, 3.759324973806676*^9, 
   3.759325057633738*^9},ExpressionUUID->"f7d58c84-614c-4328-b36d-\
0b0ce6183a6a"],

Cell[BoxData[
 TagBox[
  StyleBox[
   DynamicModuleBox[{$CellContext`r$$ = 6.65, Typeset`show$$ = True, 
    Typeset`bookmarkList$$ = {}, Typeset`bookmarkMode$$ = "Menu", 
    Typeset`animator$$, Typeset`animvar$$ = 1, Typeset`name$$ = 
    "\"untitled\"", Typeset`specs$$ = {{{
       Hold[$CellContext`r$$], 1.2093781285965426`}, 1, 10}}, 
    Typeset`size$$ = {540., {237., 244.}}, Typeset`update$$ = 0, 
    Typeset`initDone$$, Typeset`skipInitDone$$ = True, $CellContext`r$7761$$ =
     0}, 
    DynamicBox[Manipulate`ManipulateBoxes[
     1, StandardForm, "Variables" :> {$CellContext`r$$ = 1.2093781285965426`},
       "ControllerVariables" :> {
        Hold[$CellContext`r$$, $CellContext`r$7761$$, 0]}, 
      "OtherVariables" :> {
       Typeset`show$$, Typeset`bookmarkList$$, Typeset`bookmarkMode$$, 
        Typeset`animator$$, Typeset`animvar$$, Typeset`name$$, 
        Typeset`specs$$, Typeset`size$$, Typeset`update$$, Typeset`initDone$$,
         Typeset`skipInitDone$$}, "Body" :> ($CellContext`p1 = ParametricPlot[{
          $CellContext`fresnelC[$CellContext`s], 
          $CellContext`fresnelS[$CellContext`s]}, {$CellContext`s, \
-$CellContext`r$$, $CellContext`r$$}, PlotStyle -> Thick, AxesLabel -> {
           $CellContext`fs[
            "C"[$CellContext`s]], 
           $CellContext`fs[I "S"[$CellContext`s]]}]), 
      "Specifications" :> {{{$CellContext`r$$, 1.2093781285965426`}, 1, 10}}, 
      "Options" :> {}, "DefaultOptions" :> {}],
     ImageSizeCache->{606., {299., 307.}},
     SingleEvaluation->True],
    Deinitialization:>None,
    DynamicModuleValues:>{},
    SynchronousInitialization->True,
    UndoTrackedVariables:>{Typeset`show$$, Typeset`bookmarkMode$$},
    UnsavedVariables:>{Typeset`initDone$$},
    UntrackedVariables:>{Typeset`size$$}], "Manipulate",
   Deployed->True,
   StripOnInput->False],
  Manipulate`InterpretManipulate[1]]], "Output",
 CellChangeTimes->{{3.5598494406881733`*^9, 3.5598494842526655`*^9}, 
   3.5598501029510527`*^9, 3.559850422339321*^9, 3.5598511861560087`*^9, 
   3.759318455724844*^9, 3.759318504072605*^9, 3.759324973806676*^9, 
   3.759325057692883*^9},ExpressionUUID->"f314b4a9-9a66-47b1-b0af-\
e628ea3162a5"],

Cell[BoxData[
 RowBox[{"{", 
  RowBox[{"1.8014163538604144`", ",", 
   RowBox[{"{", 
    RowBox[{"x", "\[Rule]", "1.209378124292736`"}], "}"}]}], "}"}]], "Output",
 CellChangeTimes->{{3.5598494406881733`*^9, 3.5598494842526655`*^9}, 
   3.5598501029510527`*^9, 3.559850422339321*^9, 3.5598511861560087`*^9, 
   3.759318455724844*^9, 3.759318504072605*^9, 3.759324973806676*^9, 
   3.759325057772786*^9},ExpressionUUID->"1ded9b2f-538d-424c-b1b8-\
e87fc3e0b513"],

Cell[BoxData["1.224744871391589`"], "Output",
 CellChangeTimes->{{3.5598494406881733`*^9, 3.5598494842526655`*^9}, 
   3.5598501029510527`*^9, 3.559850422339321*^9, 3.5598511861560087`*^9, 
   3.759318455724844*^9, 3.759318504072605*^9, 3.759324973806676*^9, 
   3.7593250577769117`*^9},ExpressionUUID->"99bf1402-5b72-4f75-823e-\
dfe63c100f46"]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"modernOpticsProblemSet2Problem2CornuSpiralPlainPlotFig4a", " ", "=",
   " ", 
  RowBox[{"DynamicModule", "[", 
   RowBox[{
    RowBox[{"{", 
     RowBox[{"r", "=", "6.65`"}], "}"}], ",", 
    RowBox[{"p1", "=", 
     RowBox[{"ParametricPlot", "[", 
      RowBox[{
       RowBox[{"{", 
        RowBox[{
         RowBox[{"fresnelC", "[", "s", "]"}], ",", 
         RowBox[{"fresnelS", "[", "s", "]"}]}], "}"}], ",", 
       RowBox[{"{", 
        RowBox[{"s", ",", 
         RowBox[{"-", "r"}], ",", "r"}], "}"}], ",", 
       RowBox[{"PlotStyle", "\[Rule]", "Thick"}], ",", 
       RowBox[{"AxesLabel", "\[Rule]", 
        RowBox[{"{", 
         RowBox[{
          RowBox[{"fs", "[", 
           RowBox[{"\"\<C\>\"", "[", "s", "]"}], "]"}], ",", 
          RowBox[{"fs", "[", 
           RowBox[{"\[ImaginaryI]", " ", 
            RowBox[{"\"\<S\>\"", "[", "s", "]"}]}], "]"}]}], "}"}]}]}], 
      "]"}]}]}], "]"}]}]], "Input",
 GeneratedCell->False,
 CellAutoOverwrite->False,
 CellChangeTimes->{{3.759325068827676*^9, 
  3.759325088529203*^9}},ExpressionUUID->"9ae7cd76-c12b-4562-907b-\
66fc92c0423a"],

Cell[BoxData[
 DynamicModuleBox[{$CellContext`r$$ = 6.65}, 
  GraphicsBox[{{}, {}, 
    TagBox[
     {RGBColor[0.368417, 0.506779, 0.709798], Thickness[Large], Opacity[1.], 
      FaceForm[Opacity[0.3]], LineBox[CompressedData["
1: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
uN/jFvZpF5Dn42rXOyAn/gdjnbpJ
       "]]},
     Annotation[#, "Charting`Private`Tag$8428#1"]& ]},
   Axes->{True, True},
   AxesLabel->{
     FormBox[
      StyleBox[
       RowBox[{"\"C\"", "(", "s", ")"}], FontSize -> 14, StripOnInput -> 
       False], TraditionalForm], 
     FormBox[
      StyleBox[
       RowBox[{"\[ImaginaryI]", " ", 
         RowBox[{"\"S\"", "(", "s", ")"}]}], FontSize -> 14, StripOnInput -> 
       False], TraditionalForm]},
   AxesOrigin->{0, 0},
   DisplayFunction->Identity,
   FrameLabel->{{None, None}, {None, None}},
   FrameTicks->{{Automatic, Automatic}, {Automatic, Automatic}},
   GridLinesStyle->Directive[
     GrayLevel[0.5, 0.4]],
   Method->{"ScalingFunctions" -> None},
   PlotRange->{{-0.7798916949859966, 
    0.7798918569109419}, {-0.7139702179717993, 0.7139717473536961}},
   PlotRangeClipping->True,
   PlotRangePadding->{{
      Scaled[0.05], 
      Scaled[0.05]}, {
      Scaled[0.05], 
      Scaled[0.05]}},
   Ticks->{Automatic, Automatic}],
  DynamicModuleValues:>{}]], "Output",
 CellChangeTimes->{
  3.759325091005715*^9},ExpressionUUID->"37165811-e811-4f88-8ede-\
f24b16fa04f6"]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[{
 RowBox[{
  RowBox[{
   RowBox[{"modernOpticsProblemSet2Problem2Fig2", " ", "=", " ", 
    RowBox[{"DynamicModule", "[", 
     RowBox[{
      RowBox[{"{", 
       RowBox[{"r", "=", "3"}], "}"}], ",", 
      RowBox[{"Plot", "[", 
       RowBox[{
        RowBox[{"iRatio", "[", "s", "]"}], ",", 
        RowBox[{"{", 
         RowBox[{"s", ",", "0", ",", "r"}], "}"}], ",", 
        RowBox[{"PlotStyle", "\[Rule]", "Thick"}], ",", 
        RowBox[{"AxesLabel", "\[Rule]", 
         RowBox[{"{", 
          RowBox[{
           SubscriptBox["u", "0"], ",", 
           FractionBox[
            SubscriptBox["\"\<I\>\"", "f"], 
            SubscriptBox["\"\<I\>\"", "\[Infinity]"]]}], "}"}]}]}], "]"}]}], 
     "]"}]}], ";"}], "\[IndentingNewLine]"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{
   RowBox[{"modernOpticsProblemSet2Problem2Fig2b", " ", "=", " ", 
    RowBox[{"DynamicModule", "[", 
     RowBox[{
      RowBox[{"{", 
       RowBox[{"r", "=", "1.2093781285965426`"}], "}"}], ",", 
      RowBox[{"p1", "=", 
       RowBox[{"ParametricPlot", "[", 
        RowBox[{
         RowBox[{"{", 
          RowBox[{
           RowBox[{"fresnelC", "[", "s", "]"}], ",", 
           RowBox[{"fresnelS", "[", "s", "]"}]}], "}"}], ",", 
         RowBox[{"{", 
          RowBox[{"s", ",", 
           RowBox[{"-", "r"}], ",", "r"}], "}"}], ",", 
         RowBox[{"PlotStyle", "\[Rule]", "Thick"}], ",", 
         RowBox[{"AxesLabel", "\[Rule]", 
          RowBox[{"{", 
           RowBox[{
            RowBox[{"\"\<C\>\"", "[", "s", "]"}], ",", 
            RowBox[{"\[ImaginaryI]", " ", 
             RowBox[{"\"\<S\>\"", "[", "s", "]"}]}]}], "}"}]}]}], "]"}]}]}], 
     "]"}]}], ";"}], "\[IndentingNewLine]"}], "\[IndentingNewLine]", 
 RowBox[{"peeters`exportForLatex", "[", 
  RowBox[{
  "\"\<modernOpticsProblemSet2Problem2Fig2\>\"", ",", " ", 
   "modernOpticsProblemSet2Problem2Fig2"}], "]"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{"peeters`exportForLatex", "[", 
   RowBox[{
   "\"\<modernOpticsProblemSet2Problem2Fig2b\>\"", ",", " ", 
    "modernOpticsProblemSet2Problem2Fig2b"}], "]"}], 
  "\[IndentingNewLine]"}], "\[IndentingNewLine]"}], "Input",
 GeneratedCell->False,
 CellAutoOverwrite->False,
 CellChangeTimes->{{3.759318532461513*^9, 3.7593185437855263`*^9}, {
  3.759318584462287*^9, 
  3.759318658434658*^9}},ExpressionUUID->"a7bab415-ade4-4307-8022-\
4b93b0b75be1"],

Cell[BoxData[
 RowBox[{"{", 
  RowBox[{"\<\"modernOpticsProblemSet2Problem2Fig2.eps\"\>", 
   ",", "\<\"modernOpticsProblemSet2Problem2Fig2pn.png\"\>"}], 
  "}"}]], "Output",
 CellChangeTimes->{3.759318588939783*^9, 
  3.759318661166627*^9},ExpressionUUID->"8986a6ed-4ece-469a-b7d3-\
19193d451909"],

Cell[BoxData[
 RowBox[{"{", 
  RowBox[{"\<\"modernOpticsProblemSet2Problem2Fig2b.eps\"\>", 
   ",", "\<\"modernOpticsProblemSet2Problem2Fig2bpn.png\"\>"}], 
  "}"}]], "Output",
 CellChangeTimes->{3.759318588939783*^9, 
  3.759318662090609*^9},ExpressionUUID->"63b124f8-7057-4cb9-aabe-\
f8e52bac54b2"]
}, Open  ]],

Cell[BoxData[""], "Input",
 GeneratedCell->False,
 CellAutoOverwrite->False,
 CellChangeTimes->{{3.759318519338726*^9, 
  3.759318541330254*^9}},ExpressionUUID->"331fbd31-d209-47f3-a378-\
37dff85a0fb3"],

Cell[CellGroupData[{

Cell["Part (e)", "Subsection",
 CellChangeTimes->{{3.559863384402708*^9, 
  3.559863386736842*^9}},ExpressionUUID->"52aa9f27-4d2f-4119-8c23-\
c3c9278654b7"],

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
  3.559863500794366*^9}},ExpressionUUID->"8d9d650b-31d7-45b1-b3ba-\
562629e53e0b"],

Cell[BoxData["7"], "Output",
 CellChangeTimes->{
  3.5598608150637503`*^9, {3.5598609346705914`*^9, 3.5598609404419217`*^9}, {
   3.55986105072423*^9, 3.559861100189059*^9}, {3.5598611396933184`*^9, 
   3.559861164967764*^9}, {3.559861195919534*^9, 3.559861232420622*^9}, {
   3.559861357684787*^9, 3.55986138432031*^9}, {3.5598614605596704`*^9, 
   3.559861471681307*^9}, 3.559861726155862*^9, 3.559862316845648*^9, 
   3.559862352537689*^9, {3.5598626851287117`*^9, 3.5598626939292154`*^9}, 
   3.559862747472278*^9, 3.5598628153811617`*^9, 3.559862879645838*^9, 
   3.5598634335175176`*^9, {3.5598634941159835`*^9, 
   3.559863501689417*^9}},ExpressionUUID->"3e35aa48-371c-4425-bffc-\
b8e451f5dcaf"],

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
   3.5598634335175176`*^9, {3.5598634941159835`*^9, 
   3.559863501690417*^9}},ExpressionUUID->"516325ce-094a-4b6d-9aca-\
bbd3f60ff1a0"],

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
   3.5598634335175176`*^9, {3.5598634941159835`*^9, 
   3.559863501711418*^9}},ExpressionUUID->"ab2d25e3-6d09-4480-b5b6-\
7438ff45eb86"],

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
   3.5598634335175176`*^9, {3.5598634941159835`*^9, 
   3.559863501713418*^9}},ExpressionUUID->"0bfb575d-db53-40d8-9e7f-\
21541fa096ab"],

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
   3.5598634335175176`*^9, {3.5598634941159835`*^9, 
   3.559863501714418*^9}},ExpressionUUID->"da1f3ed9-f9b2-4080-94bd-\
d6d5b54c5120"],

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
   3.5598634335175176`*^9, {3.5598634941159835`*^9, 
   3.559863501715418*^9}},ExpressionUUID->"1a6a0a60-cc02-41d8-bb9d-\
dc4a28a5f855"],

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
   3.5598634335175176`*^9, {3.5598634941159835`*^9, 
   3.5598635017174187`*^9}},ExpressionUUID->"0f00ab82-da9f-43b5-994d-\
b62f604bdb08"],

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
   3.5598634335175176`*^9, {3.5598634941159835`*^9, 
   3.559863501718418*^9}},ExpressionUUID->"70aad3c1-a8ed-4e84-a8f1-\
3910534dadbf"],

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
   3.5598634335175176`*^9, {3.5598634941159835`*^9, 
   3.5598635017194185`*^9}},ExpressionUUID->"0ca0bd30-a188-4cf8-a7ed-\
3d6cc5b1fac7"],

Cell[BoxData["1.7375564502756011`"], "Output",
 CellChangeTimes->{
  3.5598608150637503`*^9, {3.5598609346705914`*^9, 3.5598609404419217`*^9}, {
   3.55986105072423*^9, 3.559861100189059*^9}, {3.5598611396933184`*^9, 
   3.559861164967764*^9}, {3.559861195919534*^9, 3.559861232420622*^9}, {
   3.559861357684787*^9, 3.55986138432031*^9}, {3.5598614605596704`*^9, 
   3.559861471681307*^9}, 3.559861726155862*^9, 3.559862316845648*^9, 
   3.559862352537689*^9, {3.5598626851287117`*^9, 3.5598626939292154`*^9}, 
   3.559862747472278*^9, 3.5598628153811617`*^9, 3.559862879645838*^9, 
   3.5598634335175176`*^9, {3.5598634941159835`*^9, 
   3.5598635017204185`*^9}},ExpressionUUID->"911ea162-e2e7-425a-b1c9-\
309d3dd5675f"],

Cell[BoxData["2.3984681411650497`"], "Output",
 CellChangeTimes->{
  3.5598608150637503`*^9, {3.5598609346705914`*^9, 3.5598609404419217`*^9}, {
   3.55986105072423*^9, 3.559861100189059*^9}, {3.5598611396933184`*^9, 
   3.559861164967764*^9}, {3.559861195919534*^9, 3.559861232420622*^9}, {
   3.559861357684787*^9, 3.55986138432031*^9}, {3.5598614605596704`*^9, 
   3.559861471681307*^9}, 3.559861726155862*^9, 3.559862316845648*^9, 
   3.559862352537689*^9, {3.5598626851287117`*^9, 3.5598626939292154`*^9}, 
   3.559862747472278*^9, 3.5598628153811617`*^9, 3.559862879645838*^9, 
   3.5598634335175176`*^9, {3.5598634941159835`*^9, 
   3.5598635017214184`*^9}},ExpressionUUID->"3c1fab02-05c8-4b79-9c29-\
a4ea01ccfb52"]
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
  3.5598678153551445`*^9}, {3.559867846471924*^9, 
  3.5598678466039314`*^9}},ExpressionUUID->"0a1883e8-12ed-43a0-9fda-\
7fc61b356780"],

Cell[BoxData["0.000017320508075688774`"], "Output",
 CellChangeTimes->{{3.559867600264842*^9, 3.559867641177182*^9}, 
   3.5598676752631316`*^9, 3.5598677074659734`*^9, 3.55986774569516*^9, {
   3.5598677840613546`*^9, 3.559867816011182*^9}, 
   3.5598678478060007`*^9},ExpressionUUID->"1962af7f-ab9d-4e10-a80d-\
9f6fde0cacf0"],

Cell[BoxData["1.7320508075688772`"], "Output",
 CellChangeTimes->{{3.559867600264842*^9, 3.559867641177182*^9}, 
   3.5598676752631316`*^9, 3.5598677074659734`*^9, 3.55986774569516*^9, {
   3.5598677840613546`*^9, 3.559867816011182*^9}, 
   3.5598678478100004`*^9},ExpressionUUID->"d25afc32-4f95-464d-9e49-\
7557b8e3bef9"]
}, Open  ]]
}, Open  ]],

Cell[CellGroupData[{

Cell["Part (g)", "Subsection",
 CellChangeTimes->{{3.5598683818335447`*^9, 
  3.5598683837446547`*^9}},ExpressionUUID->"98a37c7f-c70e-4355-aa82-\
55456982da07"],

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
  3.559868705316047*^9, 
  3.5598687224140253`*^9}},ExpressionUUID->"ab315612-2514-4362-b70c-\
3ae3ebb2794f"],

Cell[BoxData[
 FractionBox["1", "1000000000"]], "Output",
 CellChangeTimes->{
  3.5598684896677127`*^9, {3.5598685331962023`*^9, 3.55986857231544*^9}, {
   3.5598687185358033`*^9, 
   3.5598687231210656`*^9}},ExpressionUUID->"75e4dfa4-d8c0-43f6-a648-\
10e93a5131f6"],

Cell[BoxData[
 FractionBox["1", "10"]], "Output",
 CellChangeTimes->{
  3.5598684896677127`*^9, {3.5598685331962023`*^9, 3.55986857231544*^9}, {
   3.5598687185358033`*^9, 
   3.559868723123066*^9}},ExpressionUUID->"28483305-335f-472d-9593-\
20def52b7598"],

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
   3.5598687185358033`*^9, 
   3.5598687231240654`*^9}},ExpressionUUID->"8959eb4d-9ddb-4cc7-ac99-\
ad18313ce32f"]
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
 CellChangeTimes->{{3.5598690767242904`*^9, 
  3.5598690791784306`*^9}},ExpressionUUID->"c111cccd-6e8c-4c29-a322-\
fe78f3d12eb2"],

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
   3.5598687185358033`*^9, 3.559868723128066*^9}, 
   3.5598690802874947`*^9},ExpressionUUID->"dd216e38-8c30-4902-bf40-\
17addd616992"]
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
 CellChangeTimes->{{3.5598686188461013`*^9, 
  3.5598686770734315`*^9}},ExpressionUUID->"9bf05d92-3d6a-476c-9dab-\
234b2a2cd2f8"],

Cell[BoxData["0.2157239211838604`"], "Output",
 CellChangeTimes->{{3.5598686311708064`*^9, 3.559868637114146*^9}, 
   3.559868677866477*^9},ExpressionUUID->"9a8abe01-648b-4bc7-9a55-\
e7c9018d9400"]
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
     "this", " ", "set", " ", "of", " ", "mappings"}]}], " ", 
   "*)"}]}]}], "Input",
 CellChangeTimes->{{3.560816875199195*^9, 
  3.5608169208858075`*^9}},ExpressionUUID->"a16759b6-8c8d-4db8-9422-\
fb961b248da0"],

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
   "Integers"}], "]"}]], "Input",ExpressionUUID->"3adf7963-3a8c-43fb-9f13-\
5bf2fc18f3f3"],

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
 CellChangeTimes->{
  3.5608168857607985`*^9},ExpressionUUID->"4d41e8d6-753b-4ba9-94dd-\
f0e07b26a945"]
}, Open  ]]
}, Open  ]]
}, Open  ]],

Cell[CellGroupData[{

Cell["Problem 3.", "Section",
 CellChangeTimes->{{3.5599478125201015`*^9, 
  3.5599478135461607`*^9}},ExpressionUUID->"5993397c-61f6-4dc5-a64e-\
afce70056266"],

Cell[CellGroupData[{

Cell["Part (a)", "Subsection",
 CellChangeTimes->{{3.5599648095252748`*^9, 
  3.559964810735344*^9}},ExpressionUUID->"f962486a-e2c7-479b-98fe-\
383f3e840939"],

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
  3.559950295134099*^9}},ExpressionUUID->"22a55419-db40-404c-a4a9-\
62e7423fc46a"],

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
 CellChangeTimes->{
  3.55995029619716*^9},ExpressionUUID->"014a6879-abc4-4744-a9f1-a88caf34500e"],

Cell[BoxData[
 FractionBox[
  RowBox[{"2", " ", "\[Pi]", " ", "r", " ", 
   RowBox[{"BesselJ", "[", 
    RowBox[{"1", ",", 
     RowBox[{"a", " ", "r"}]}], "]"}]}], "a"]], "Output",
 CellChangeTimes->{
  3.5599502990693245`*^9},ExpressionUUID->"fa96780c-3f9d-48e6-9fbf-\
8f087d3750b9"]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{
  FractionBox[
   RowBox[{"2", " ", "\[Pi]", " ", "r", " ", 
    RowBox[{"BesselJ", "[", 
     RowBox[{"1", ",", 
      RowBox[{"a", " ", "r"}]}], "]"}]}], "a"], " ", "//", 
  "TraditionalForm"}]], "Input",
 CellChangeTimes->{{3.559950259396055*^9, 
  3.559950265112382*^9}},ExpressionUUID->"b33932b6-05b4-480f-9e7c-\
511756434ea6"],

Cell[BoxData[
 FormBox[
  FractionBox[
   RowBox[{"2", " ", "\[Pi]", " ", "r", " ", 
    TemplateBox[{"1",RowBox[{"a", " ", "r"}]},
     "BesselJ"]}], "a"], TraditionalForm]], "Output",
 CellChangeTimes->{
  3.5599502661944437`*^9},ExpressionUUID->"c449abd1-6e68-4212-bbd5-\
354743c1c020"]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[{
 RowBox[{"Plot", "[", 
  RowBox[{
   RowBox[{"BesselJ", "[", 
    RowBox[{"1", ",", " ", "x"}], "]"}], ",", " ", 
   RowBox[{"{", 
    RowBox[{"x", ",", " ", "0", ",", " ", "10"}], "}"}], ",", " ", 
   RowBox[{"PlotStyle", "\[Rule]", "Thick"}]}], "]"}], "\[IndentingNewLine]", 
 RowBox[{"BesselJ", "[", 
  RowBox[{"1", ",", " ", 
   RowBox[{"-", "x"}]}], "]"}]}], "Input",
 CellChangeTimes->{{3.5599503641840487`*^9, 3.559950393006697*^9}, {
  3.559953813769354*^9, 3.5599538146444035`*^9}, {3.7593203031651278`*^9, 
  3.759320345958562*^9}},ExpressionUUID->"2a9e6dd1-e37c-47be-8f6a-\
fd881924feb2"],

Cell[BoxData[
 GraphicsBox[{{{}, {}, 
    TagBox[
     {RGBColor[0.368417, 0.506779, 0.709798], Thickness[Large], Opacity[1.], 
      LineBox[CompressedData["
1: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
       "]]},
     Annotation[#, "Charting`Private`Tag$105420#1"]& ]}, {}, {}},
  AspectRatio->NCache[GoldenRatio^(-1), 0.6180339887498948],
  Axes->{True, True},
  AxesLabel->{None, None},
  AxesOrigin->{0, 0},
  DisplayFunction->Identity,
  Frame->{{False, False}, {False, False}},
  FrameLabel->{{None, None}, {None, None}},
  FrameTicks->{{Automatic, 
     Charting`ScaledFrameTicks[{Identity, Identity}]}, {Automatic, 
     Charting`ScaledFrameTicks[{Identity, Identity}]}},
  GridLines->{None, None},
  GridLinesStyle->Directive[
    GrayLevel[0.5, 0.4]],
  ImagePadding->All,
  Method->{
   "DefaultBoundaryStyle" -> Automatic, "DefaultMeshStyle" -> 
    AbsolutePointSize[6], "ScalingFunctions" -> None, 
    "CoordinatesToolOptions" -> {"DisplayFunction" -> ({
        (Identity[#]& )[
         Part[#, 1]], 
        (Identity[#]& )[
         Part[#, 2]]}& ), "CopiedValueFunction" -> ({
        (Identity[#]& )[
         Part[#, 1]], 
        (Identity[#]& )[
         Part[#, 2]]}& )}},
  PlotRange->{{0, 10}, {-0.3461261180190739, 0.581865061766651}},
  PlotRangeClipping->True,
  PlotRangePadding->{{
     Scaled[0.02], 
     Scaled[0.02]}, {
     Scaled[0.05], 
     Scaled[0.05]}},
  Ticks->{Automatic, Automatic}]], "Output",
 CellChangeTimes->{{3.5599503827551107`*^9, 3.5599503942117662`*^9}, 
   3.5599538154654503`*^9, 
   3.759320347403064*^9},ExpressionUUID->"2e3d13f0-e44b-4687-a803-\
da6553b2390e"],

Cell[BoxData[
 RowBox[{"-", 
  RowBox[{"BesselJ", "[", 
   RowBox[{"1", ",", "x"}], "]"}]}]], "Output",
 CellChangeTimes->{{3.5599503827551107`*^9, 3.5599503942117662`*^9}, 
   3.5599538154654503`*^9, 
   3.759320347413241*^9},ExpressionUUID->"07022f9b-67f0-4e2f-a5be-\
4cc1d006448a"]
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
  3.5599522594544516`*^9, 
  3.55995229316438*^9}},ExpressionUUID->"8f02ba52-24bd-4a98-8d7d-\
fd7f63cd2eb2"],

Cell[BoxData[
 RowBox[{"{", 
  RowBox[{"0.5818652242815965`", ",", 
   RowBox[{"{", 
    RowBox[{"x", "\[Rule]", "1.84118378117943`"}], "}"}]}], "}"}]], "Output",
 CellChangeTimes->{
  3.559952082539333*^9, {3.5599522755853744`*^9, 
   3.559952294132435*^9}},ExpressionUUID->"241cca07-a264-4b6f-8d19-\
25ef9d8a9a5f"],

Cell[BoxData[
 RowBox[{"{", 
  RowBox[{"2.1000823595934867`*^-12", ",", 
   RowBox[{"{", 
    RowBox[{"x", "\[Rule]", "3.831705970202298`"}], "}"}]}], "}"}]], "Output",
 CellChangeTimes->{
  3.559952082539333*^9, {3.5599522755853744`*^9, 
   3.5599522949894843`*^9}},ExpressionUUID->"20d17d62-fad9-44de-bc2f-\
fb6706008e01"]
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
 CellChangeTimes->{{3.559955127889517*^9, 
  3.5599551411862774`*^9}},ExpressionUUID->"0dd927b9-cc14-4421-9c93-\
da8d9e51fdbe"],

Cell[CellGroupData[{

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
 CellChangeTimes->{{3.559955215504528*^9, 
  3.5599552182356844`*^9}},ExpressionUUID->"adbe3941-d227-407b-a3e1-\
73718bc08146"],

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
 CellChangeTimes->{
  3.5599552192837443`*^9},ExpressionUUID->"ed354b44-488e-4e64-9f50-\
57aecef24a63"]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"Limit", "[", 
  RowBox[{
   RowBox[{
    RowBox[{"BesselJ", "[", 
     RowBox[{"1", ",", "  ", "x"}], "]"}], "/", "x"}], ",", " ", 
   RowBox[{"x", " ", "\[Rule]", " ", "0"}]}], "]"}]], "Input",
 CellChangeTimes->{{3.5599556849093766`*^9, 3.5599557011663065`*^9}, {
  3.5599557418646345`*^9, 
  3.5599557569114947`*^9}},ExpressionUUID->"880a0494-a37a-430f-b829-\
41115f49da0d"],

Cell[BoxData[
 FractionBox["1", "2"]], "Output",
 CellChangeTimes->{
  3.5599557019343505`*^9, {3.559955745236827*^9, 
   3.5599557576895394`*^9}},ExpressionUUID->"41baa919-9455-4ea0-a94b-\
73f3d6878d5e"]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"modernOpticsProblemSet2Problem3Fig3", " ", "=", " ", 
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
         RowBox[{"1", ",", " ", "x"}], "]"}], "/", "x"}]}], "}"}]}], ",", " ", 
    RowBox[{"PlotStyle", "\[Rule]", " ", "Thick"}]}], "]"}]}]], "Input",
 CellChangeTimes->{{3.559956889845295*^9, 3.5599569050441647`*^9}, {
  3.559956963091484*^9, 3.559957005831929*^9}, {3.759320375617289*^9, 
  3.759320383874258*^9}},ExpressionUUID->"3eda4695-1322-4457-b6bd-\
4311eb1cbad7"],

Cell[BoxData[
 GraphicsBox[{{{}, {}, 
    TagBox[
     {RGBColor[0.368417, 0.506779, 0.709798], Thickness[Large], Opacity[1.], 
      LineBox[CompressedData["
1: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
RsWLEqsbG6LQN8rE4VJ/C/0PChqxZw==
       "]]},
     Annotation[#, "Charting`Private`Tag$105516#1"]& ]}, {}, {}},
  AspectRatio->NCache[GoldenRatio^(-1), 0.6180339887498948],
  Axes->{True, True},
  AxesLabel->{
    FormBox[
     TagBox["x", HoldForm], TraditionalForm], 
    FormBox[
     FractionBox[
      TemplateBox[{"1", 
        TagBox["x", HoldForm]}, "BesselJ"], 
      TagBox["x", HoldForm]], TraditionalForm]},
  AxesOrigin->{0, 0},
  DisplayFunction->Identity,
  Frame->{{False, False}, {False, False}},
  FrameLabel->{{None, None}, {None, None}},
  FrameTicks->{{Automatic, 
     Charting`ScaledFrameTicks[{Identity, Identity}]}, {Automatic, 
     Charting`ScaledFrameTicks[{Identity, Identity}]}},
  GridLines->{None, None},
  GridLinesStyle->Directive[
    GrayLevel[0.5, 0.4]],
  ImagePadding->All,
  Method->{
   "DefaultBoundaryStyle" -> Automatic, "DefaultMeshStyle" -> 
    AbsolutePointSize[6], "ScalingFunctions" -> None, 
    "CoordinatesToolOptions" -> {"DisplayFunction" -> ({
        (Identity[#]& )[
         Part[#, 1]], 
        (Identity[#]& )[
         Part[#, 2]]}& ), "CopiedValueFunction" -> ({
        (Identity[#]& )[
         Part[#, 1]], 
        (Identity[#]& )[
         Part[#, 2]]}& )}},
  PlotRange->{{0, 10}, {-0.06613970906983443, 0.4999999999999974}},
  PlotRangeClipping->True,
  PlotRangePadding->{{
     Scaled[0.02], 
     Scaled[0.02]}, {
     Scaled[0.05], 
     Scaled[0.05]}},
  Ticks->{Automatic, Automatic}]], "Output",
 CellChangeTimes->{3.5599569060622225`*^9, 3.5599570067769833`*^9, 
  3.759320385500247*^9},ExpressionUUID->"c9c64a8c-0150-4272-b4e3-\
e19f7b035eca"]
}, Open  ]],

Cell[BoxData[
 RowBox[{"NSolve", "[", 
  RowBox[{
   RowBox[{
    RowBox[{"BesselJ", "[", 
     RowBox[{"1", ",", " ", "x"}], "]"}], "/", "x"}], " ", "\[Equal]", " ", 
   "0.25"}], "]"}]], "Input",
 CellChangeTimes->{{3.5599573046050177`*^9, 
  3.5599573158316603`*^9}},ExpressionUUID->"d81b4082-95ef-492b-a268-\
b2c8abe9dc6d"],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"NSolve", "[", 
  RowBox[{
   RowBox[{
    FractionBox[
     RowBox[{"BesselJ", "[", 
      RowBox[{"1", ",", "x"}], "]"}], "x"], "\[Equal]", "0.25`"}], ",", " ", 
   "x", ",", " ", 
   RowBox[{"0", " ", "<", " ", "x", " ", "<", " ", "4"}]}], "]"}]], "Input",
 CellChangeTimes->{{3.559957334268715*^9, 
  3.5599573479995003`*^9}},ExpressionUUID->"75c82c27-36ca-466b-b1f4-\
f7677f76e3b2"],

Cell[BoxData[
 RowBox[{
  StyleBox[
   RowBox[{"NSolve", "::", "bdomv"}], "MessageName"], ":", 
  " ", "\<\"Warning: \[NoBreak]\\!\\(0 < x < 4\\)\[NoBreak] is not a valid \
domain specification. Mathematica is assuming it is a variable to eliminate. \
\\!\\(\\*ButtonBox[\\\"\[RightSkeleton]\\\", ButtonStyle->\\\"Link\\\", \
ButtonFrame->None, ButtonData:>\\\"paclet:ref/NSolve\\\", ButtonNote -> \
\\\"NSolve::bdomv\\\"]\\)\"\>"}]], "Message", "MSG",
 CellChangeTimes->{
  3.5599573489195523`*^9},ExpressionUUID->"ed04f296-59da-46d8-a738-\
6433c356a8a5"],

Cell[BoxData[
 RowBox[{
  StyleBox[
   RowBox[{"NSolve", "::", "ivar"}], "MessageName"], ":", 
  " ", "\<\"\[NoBreak]\\!\\(0 < x < 4\\)\[NoBreak] is not a valid variable. \
\\!\\(\\*ButtonBox[\\\"\[RightSkeleton]\\\", ButtonStyle->\\\"Link\\\", \
ButtonFrame->None, ButtonData:>\\\"paclet:ref/message/General/ivar\\\", \
ButtonNote -> \\\"NSolve::ivar\\\"]\\)\"\>"}]], "Message", "MSG",
 CellChangeTimes->{
  3.5599573489895563`*^9},ExpressionUUID->"4f2bf4ad-1d01-495e-9189-\
64fe7ffa0c10"]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"NSolve", "[", 
  RowBox[{
   RowBox[{
    FractionBox[
     RowBox[{"BesselJ", "[", 
      RowBox[{"1", ",", "x"}], "]"}], "x"], "\[Equal]", "0.25`"}], ",", "x", 
   ",", "Reals"}], "]"}]], "Input",
 CellChangeTimes->{{3.5599573631713676`*^9, 
  3.5599573652664876`*^9}},ExpressionUUID->"eda3b04c-d605-42c1-91fb-\
fbe3ad773d43"],

Cell[BoxData[
 RowBox[{
  StyleBox[
   RowBox[{"NSolve", "::", "nsmet"}], "MessageName"], ":", 
  " ", "\<\"This system cannot be solved with the methods available to \
NSolve. \\!\\(\\*ButtonBox[\\\"\[RightSkeleton]\\\", \
ButtonStyle->\\\"Link\\\", ButtonFrame->None, \
ButtonData:>\\\"paclet:ref/NSolve\\\", ButtonNote -> \
\\\"NSolve::nsmet\\\"]\\)\"\>"}]], "Message", "MSG",
 CellChangeTimes->{
  3.559957366173539*^9},ExpressionUUID->"dbc6bc49-dba8-46a4-bb11-\
6fb9517f70ee"]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"NSolve", "[", 
  RowBox[{
   RowBox[{
    FractionBox[
     RowBox[{"BesselJ", "[", 
      RowBox[{"1", ",", "x"}], "]"}], "x"], "\[Equal]", "0.25`"}], ",", "x", 
   ",", 
   RowBox[{"x", ">", " ", "0"}]}], "]"}]], "Input",
 CellChangeTimes->{{3.5599574018435793`*^9, 
  3.5599574040517063`*^9}},ExpressionUUID->"f46f8658-563c-4b6e-8f6b-\
02ec0a380e68"],

Cell[BoxData[
 RowBox[{
  StyleBox[
   RowBox[{"NSolve", "::", "bdomv"}], "MessageName"], ":", 
  " ", "\<\"Warning: \[NoBreak]\\!\\(x > 0\\)\[NoBreak] is not a valid domain \
specification. Mathematica is assuming it is a variable to eliminate. \
\\!\\(\\*ButtonBox[\\\"\[RightSkeleton]\\\", ButtonStyle->\\\"Link\\\", \
ButtonFrame->None, ButtonData:>\\\"paclet:ref/NSolve\\\", ButtonNote -> \
\\\"NSolve::bdomv\\\"]\\)\"\>"}]], "Message", "MSG",
 CellChangeTimes->{
  3.559957404767747*^9},ExpressionUUID->"05c5d8dd-2997-4226-91b2-\
e6da7c05339b"],

Cell[BoxData[
 RowBox[{
  StyleBox[
   RowBox[{"NSolve", "::", "ivar"}], "MessageName"], ":", 
  " ", "\<\"\[NoBreak]\\!\\(x > 0\\)\[NoBreak] is not a valid variable. \
\\!\\(\\*ButtonBox[\\\"\[RightSkeleton]\\\", ButtonStyle->\\\"Link\\\", \
ButtonFrame->None, ButtonData:>\\\"paclet:ref/message/General/ivar\\\", \
ButtonNote -> \\\"NSolve::ivar\\\"]\\)\"\>"}]], "Message", "MSG",
 CellChangeTimes->{
  3.559957404769747*^9},ExpressionUUID->"02cd93fa-06d7-411c-9e61-\
371027ce6562"]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"FindRoot", "[", 
  RowBox[{
   RowBox[{
    FractionBox[
     RowBox[{"BesselJ", "[", 
      RowBox[{"1", ",", "x"}], "]"}], "x"], "\[Equal]", "0.25`"}], ",", 
   RowBox[{"{", 
    RowBox[{"x", ",", " ", "2"}], "}"}]}], "]"}]], "Input",
 CellChangeTimes->{{3.5599574503203526`*^9, 
  3.5599574717585783`*^9}},ExpressionUUID->"5a290519-41e3-440c-b0ec-\
5289e4388ab0"],

Cell[BoxData[
 RowBox[{"{", 
  RowBox[{"x", "\[Rule]", "2.2150893677242327`"}], "}"}]], "Output",
 CellChangeTimes->{
  3.5599574725426235`*^9},ExpressionUUID->"130b68db-732b-44ac-ab40-\
ea525a9e7ce5"]
}, Open  ]]
}, Open  ]],

Cell[CellGroupData[{

Cell["Part (b)", "Subsection",
 CellChangeTimes->{{3.5599647900441604`*^9, 
  3.559964792561304*^9}},ExpressionUUID->"f1684f87-50b5-440e-97de-\
2f3cbf775171"],

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
  3.559963593098699*^9}},ExpressionUUID->"5830afbf-c72b-4839-a7ca-\
4d641f76e81d"],

Cell[BoxData[
 TagBox[
  StyleBox[
   DynamicModuleBox[{$CellContext`r$$ = 0.31, Typeset`show$$ = True, 
    Typeset`bookmarkList$$ = {}, Typeset`bookmarkMode$$ = "Menu", 
    Typeset`animator$$, Typeset`animvar$$ = 1, Typeset`name$$ = 
    "\"untitled\"", Typeset`specs$$ = {{{
       Hold[$CellContext`r$$], 0.41}, 0.1, 10}}, Typeset`size$$ = {
    540., {159., 167.}}, Typeset`update$$ = 0, Typeset`initDone$$, 
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
     ImageSizeCache->{606., {222., 230.}},
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
   3.5599634707226996`*^9, 3.55996354398589*^9, 
   3.5599635939267464`*^9},ExpressionUUID->"30b3efc5-dc16-4996-ac6f-\
475485869cf7"]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"Plot", "[", 
  RowBox[{
   RowBox[{"Sinc", "[", "x", "]"}], ",", " ", 
   RowBox[{"{", 
    RowBox[{"x", ",", " ", "0", ",", " ", "10"}], "}"}]}], "]"}]], "Input",
 CellChangeTimes->{{3.559964098611613*^9, 
  3.559964109506236*^9}},ExpressionUUID->"2ffb3ac8-2cec-4e26-8b2b-\
25e89c3583b7"],

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
GhX8PU0XjCwYiLr2X8iNG1RQuHApKf0EAyWGd7hWB1JhXZXXQW0rBor3cNfc
GkEF0Y9qh3pOMdAHpeMpptFUWKPsEz1ymoHW9O0iecVQ4Z/r4dJvdgwUayg8
nZ9EhRrjc749ZxjoHfeMfUcqFWxRo0KNAwNJVX54/T2dCt2d6emxjgz0SCWn
VDWHCgHaxrs3OzPQm4EI5YPPqXC8bf+JKcKSj6/GOBZS4eo15eMZLgxkamwn
EPiCClZaMdomZxkocoXB1bQyKoxt3Ds3Sbi7WmucUUmF5+veJAW6MhD5orTV
pxoqzMjzaZLcGCj881dduUYqXKNpiQi6M9DL2K7nOi1U+CpRYHOZsPh/5VRL
JhVM+nuS3hM+sjLl4ZV2KoiYeHdqezDQg7ogrsddVCiIODV1i3DnJc8LJd1U
EFbwEmglLLrBfKi7hwq7WaGreDwZyGhkt+lULxVKsyNkNhMOS1jXJN5HhZ3r
PdecJNx+THSr5idi/39JklcICwvNZRgNUWGb8jmRe4QN6/uk3L5Q4fvXgBVR
hO/5NAXfHaOCbOfhfxGEmRvzfmd+J/qX2bkURFjga9TZlkkqhAesWr5A+FDy
tQ8jU1RQK9goZEo42OzMYd45KrRXbKKpEU4z6bN2/E0FS35tv2li/zUGZp6t
S1SAZm7lAsLv9Dpvrl+mwgcvG9ppwtO7D0aE8tDgD0PAjY+wyA5G2g8+GnRE
dgqnEPVS0d5ZYiJIg/gF/xUbCO/TKG4uEqFB8qYFiwKi/tbK6u8kSDRoT14t
qEz4Cv3p2CUJGsQyG2UiiH5FysgvvpOiQbHVxMOfRD/zJB8L68jQoFUu2G0/
4VYxcflEeRrs4IQXhhF5GBII0fxHp8HrdlF7JpGXPzzccFqJBjcbBW4vOjGQ
9vy0vZI6DfQD22g6RN6Mp9y8gzRp0FLY8uQQkUeX7yN3xjbRwLWkNOUwkdek
T2+z8nbQwHGfstxGIs8V702qxHRp8NFgzRNxIu/dr9vY5xENBmQH80dsiXq3
VU1u0aeBIUPay92aOK8Nm7liDGiwoXazJo04P3tq8sgLRkQ9ur39WywZ6GJh
8pZaUxrMZq+cmzYnzmNsgO8BOxq4fz1ws5E4zwuRS6GZDsTzrtpuLGtC5P++
d5KgCw1S7+3ucDZmIINbTowOTxqIhPBODxDzouSsIb+5Hw1YXmirPjFPus40
rq64SYP9HZcX9YCBxm1018vcpsEJF8eH24j5QzumaTRwlwY2fRXbF3cSedKh
RDrFEOtvD04uaTFQxpbQ9LZ4GhzvMkxO1WQghuaKUrVkGhxsrdTV0WCgubW/
3k0+pYFsGdPcSIWBTgt/kL9STIPJNbJeE3IMtLXvSXZwBw00KKsmafwMRNJ0
+V3wkgb+oXwMA2IeT9zUPNj7mgbPp1iqrlzE/FOsHlH9QAMB25vx8nMYSbq9
obFGacA+Ev2wqw+jRT/ew/xcdCgqc7lTnkW8LzKcvOK56fCYkunz+QlGbzuZ
cZq8dDj/TYu8EI9RMT18zJyfDhPfzY5OEe8b1ya5oEwROiz/0hznP4/Re+Ft
9YfW0CFaaO+NDm3i/bYlbqxPhg4XWyP9e9QwKrH5I35Bjg6bEgWy2WsxCi9o
sI2j0SFwput+APH+O2Rq8ufbOjpcF2uOlJ2qQxXxLttDtekgvzKGnye3DsWu
T3jecZgOW6a1dg6Q69DsjH7GbWM67DknyDvEX4dM6qYTd5rQweROqFL3Ui3i
NzUMyzhGhwt+V5OvfKlFl/wWXK9b0kEmcQD3lteiY10Wqhuc6fD9t5/bvxO1
SOSSZHpYAB1q0n1VN96vQS6IEb8vkA7ieTNjPTdrUKOge+TvO3SQNquOdvWq
Qb7Jjbcc7tKhPtxs2MaiBn1r9TqtG06HUvS824Neg1pkXslPJNEhb/RP256C
anSTcT/2cCUdTk66ePMxqtB4PyN6oYoOhyIi7rYXViHzpZnwzBo6+HDlfbz9
pAppbDt5l5dBB9dYPY/GgCrUm6vsW91Ch9MfQpuD91ch7Rhspf6GDpuDh09t
aq5Eox5TVGEOHYy9mS6u1RXIWNYsg6WkAIwZpecJN8rQXs9WK/JdBWDSaGLB
PUUoRc5eqX1OAWxMVvLxBWchpcbMx0es1kLcfx99ircnoPANDWrddWvhs2Fq
/iS+jJxmVrxiqimC1Lefd02+hGP7omn63YeKMPbwwIDVzjTsHmD6xzBCEQqV
pz3a7dPwJdOSdyJRilB5MNZaJSwNh8xdehD+WBHYmue/JQyk4fydC0sxSYrg
U72rzS8gHS/UL799lqtI/F9ZluJveYrDu0XuN7UqAl+x1aGbuzJxfLqHSxBT
ESJa1pgI2GfidO9OvUNsRRC9yvDyCcnEZVLhi+xOReDUm+SL9mTivpMSLq97
FGGuQN1Q0CMLqwyv0RsaVoQi3Zm/G2OzsVaJL/XpF0Woj8/zodVmY507Hxcc
vyrCq+6+8NnP2dhIJanw27gi+L2d1TVRz8FebnTq1JQi5OR5czXV5GA/3VsL
xTOKRD+KhvoHc/Ad0aE33nOKcM7AO7dvRS6OLUgP/f1bEYRFex6HGOXiNP8V
zlWLirDuak/Y1vO5OPeo4z6/P4pA8aSRWqNyccnaFvk9/xTBc2uq0O7yXFw3
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
 CellChangeTimes->{
  3.5599641102262774`*^9},ExpressionUUID->"9258a1c4-9164-4e6e-be86-\
9769d64f3edf"]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"\[IndentingNewLine]", 
  RowBox[{"peeters`exportForLatex", "[", 
   RowBox[{
   "\"\<modernOpticsProblemSet2Problem3Fig3\>\"", ",", 
    "modernOpticsProblemSet2Problem3Fig3"}], "]"}]}]], "Input",
 CellChangeTimes->{{3.7593204000115967`*^9, 
  3.75932041792701*^9}},ExpressionUUID->"f6e38200-f755-4457-b31c-\
9558b2554785"],

Cell[BoxData[
 RowBox[{"{", 
  RowBox[{"\<\"modernOpticsProblemSet2Problem3Fig3.eps\"\>", 
   ",", "\<\"modernOpticsProblemSet2Problem3Fig3pn.png\"\>"}], 
  "}"}]], "Output",
 CellChangeTimes->{
  3.759320421131607*^9},ExpressionUUID->"3be1b87e-1995-481c-aca2-\
1f09f6eb1369"]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"\[IndentingNewLine]", 
  RowBox[{"peeters`exportForLatex", "[", 
   RowBox[{
   "\"\<modernOpticsProblemSet2Problem2CornuSpiralPlainPlotFig4a\>\"", ",", 
    "modernOpticsProblemSet2Problem2CornuSpiralPlainPlotFig4a"}], 
   "]"}]}]], "Input",
 CellChangeTimes->{{3.759325098452406*^9, 
  3.759325111813596*^9}},ExpressionUUID->"8fd076b2-5018-401a-bb1c-\
1c9c78b8dddb"],

Cell[BoxData[
 RowBox[{"{", 
  RowBox[{"\<\"modernOpticsProblemSet2Problem2CornuSpiralPlainPlotFig4a.eps\"\
\>", ",", "\<\"modernOpticsProblemSet2Problem2CornuSpiralPlainPlotFig4apn.png\
\"\>"}], "}"}]], "Output",
 CellChangeTimes->{
  3.7593251146262712`*^9},ExpressionUUID->"33cb97f7-7ab1-4b6b-8856-\
3cb7b47a6b81"]
}, Open  ]]
}, Open  ]]
}, Open  ]]
},
WindowSize->{1511, 1076},
WindowMargins->{{76, Automatic}, {Automatic, 76}},
Magnification:>1.5 Inherited,
FrontEndVersion->"11.2 for Mac OS X x86 (32-bit, 64-bit Kernel) (September \
10, 2017)",
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
Cell[1257, 32, 565, 16, 140, "Input",ExpressionUUID->"aeba1991-93fe-4396-ab2b-f5c48d86210a"],
Cell[1825, 50, 203, 3, 52, "Output",ExpressionUUID->"625e8446-f1a7-425a-9965-bae5ad5ec179"]
}, Open  ]],
Cell[CellGroupData[{
Cell[2065, 58, 173, 3, 101, "Section",ExpressionUUID->"791233b7-8c6c-43e6-bf6f-ee3c2c685d12"],
Cell[CellGroupData[{
Cell[2263, 65, 634, 18, 46, "Input",ExpressionUUID->"a6ec6bdb-efb6-435d-ba20-d633486324b6"],
Cell[2900, 85, 669, 21, 124, "Output",ExpressionUUID->"851f0c7f-de90-48e9-96e2-881f729c9d0a"]
}, Open  ]]
}, Open  ]],
Cell[CellGroupData[{
Cell[3618, 112, 155, 3, 101, "Section",ExpressionUUID->"93226eff-43b2-4ccc-901f-be3f39a56699"],
Cell[CellGroupData[{
Cell[3798, 119, 6863, 181, 1070, "Input",ExpressionUUID->"37c640f7-0279-42c7-b13c-45cc6c1141fc"],
Cell[10664, 302, 359, 6, 52, "Output",ExpressionUUID->"afb1c287-4856-4bb4-a2e9-9bd25da36302"],
Cell[11026, 310, 608, 14, 52, "Output",ExpressionUUID->"2a8835e4-99d5-41ce-ae56-aed881029fda"],
Cell[11637, 326, 2121, 42, 529, "Output",ExpressionUUID->"f7d58c84-614c-4328-b36d-0b0ce6183a6a"],
Cell[13761, 370, 2198, 43, 634, "Output",ExpressionUUID->"f314b4a9-9a66-47b1-b0af-e628ea3162a5"],
Cell[15962, 415, 460, 9, 52, "Output",ExpressionUUID->"1ded9b2f-538d-424c-b1b8-e87fc3e0b513"],
Cell[16425, 426, 344, 5, 52, "Output",ExpressionUUID->"99bf1402-5b72-4f75-823e-dfe63c100f46"]
}, Open  ]],
Cell[CellGroupData[{
Cell[16806, 436, 1125, 31, 140, "Input",ExpressionUUID->"9ae7cd76-c12b-4562-907b-66fc92c0423a"],
Cell[17934, 469, 59012, 984, 507, "Output",ExpressionUUID->"37165811-e811-4f88-8ede-f24b16fa04f6"]
}, Open  ]],
Cell[CellGroupData[{
Cell[76983, 1458, 2400, 62, 389, "Input",ExpressionUUID->"a7bab415-ade4-4307-8022-4b93b0b75be1"],
Cell[79386, 1522, 298, 7, 52, "Output",ExpressionUUID->"8986a6ed-4ece-469a-b7d3-19193d451909"],
Cell[79687, 1531, 300, 7, 52, "Output",ExpressionUUID->"63b124f8-7057-4cb9-aabe-f8e52bac54b2"]
}, Open  ]],
Cell[80002, 1541, 202, 5, 46, "Input",ExpressionUUID->"331fbd31-d209-47f3-a378-37dff85a0fb3"],
Cell[CellGroupData[{
Cell[80229, 1550, 156, 3, 81, "Subsection",ExpressionUUID->"52aa9f27-4d2f-4119-8c23-c3c9278654b7"],
Cell[CellGroupData[{
Cell[80410, 1557, 3949, 104, 481, "Input",ExpressionUUID->"8d9d650b-31d7-45b1-b3ba-562629e53e0b"],
Cell[84362, 1663, 702, 11, 52, "Output",ExpressionUUID->"3e35aa48-371c-4425-bffc-b8e451f5dcaf"],
Cell[85067, 1676, 1126, 30, 86, "Output",ExpressionUUID->"516325ce-094a-4b6d-9aca-bbd3f60ff1a0"],
Cell[86196, 1708, 1749, 30, 84, "Output",ExpressionUUID->"ab2d25e3-6d09-4480-b5b6-7438ff45eb86"],
Cell[87948, 1740, 1115, 20, 52, "Output",ExpressionUUID->"0bfb575d-db53-40d8-9e7f-21541fa096ab"],
Cell[89066, 1762, 818, 15, 52, "Output",ExpressionUUID->"da1f3ed9-f9b2-4080-94bd-d6d5b54c5120"],
Cell[89887, 1779, 1116, 20, 52, "Output",ExpressionUUID->"1a6a0a60-cc02-41d8-bb9d-dc4a28a5f855"],
Cell[91006, 1801, 1115, 20, 52, "Output",ExpressionUUID->"0f00ab82-da9f-43b5-994d-b62f604bdb08"],
Cell[92124, 1823, 872, 16, 52, "Output",ExpressionUUID->"70aad3c1-a8ed-4e84-a8f1-3910534dadbf"],
Cell[92999, 1841, 819, 15, 52, "Output",ExpressionUUID->"0ca0bd30-a188-4cf8-a7ed-3d6cc5b1fac7"],
Cell[93821, 1858, 722, 11, 52, "Output",ExpressionUUID->"911ea162-e2e7-425a-b1c9-309d3dd5675f"],
Cell[94546, 1871, 722, 11, 52, "Output",ExpressionUUID->"3c1fab02-05c8-4b79-9c29-a4ea01ccfb52"]
}, Open  ]],
Cell[CellGroupData[{
Cell[95305, 1887, 729, 19, 78, "Input",ExpressionUUID->"0a1883e8-12ed-43a0-9fda-7fc61b356780"],
Cell[96037, 1908, 327, 5, 52, "Output",ExpressionUUID->"1962af7f-ab9d-4e10-a80d-9f6fde0cacf0"],
Cell[96367, 1915, 322, 5, 52, "Output",ExpressionUUID->"d25afc32-4f95-464d-9e49-7557b8e3bef9"]
}, Open  ]]
}, Open  ]],
Cell[CellGroupData[{
Cell[96738, 1926, 160, 3, 81, "Subsection",ExpressionUUID->"98a37c7f-c70e-4355-aa82-55456982da07"],
Cell[CellGroupData[{
Cell[96923, 1933, 1806, 55, 202, "Input",ExpressionUUID->"ab315612-2514-4362-b70c-3ae3ebb2794f"],
Cell[98732, 1990, 266, 6, 69, "Output",ExpressionUUID->"75e4dfa4-d8c0-43f6-a648-10e93a5131f6"],
Cell[99001, 1998, 256, 6, 69, "Output",ExpressionUUID->"28483305-335f-472d-9593-20def52b7598"],
Cell[99260, 2006, 581, 20, 115, "Output",ExpressionUUID->"8959eb4d-9ddb-4cc7-ac99-ad18313ce32f"]
}, Open  ]],
Cell[CellGroupData[{
Cell[99878, 2031, 636, 14, 109, "Input",ExpressionUUID->"c111cccd-6e8c-4c29-a322-fe78f3d12eb2"],
Cell[100517, 2047, 655, 14, 52, "Output",ExpressionUUID->"dd216e38-8c30-4902-bf40-17addd616992"]
}, Open  ]],
Cell[CellGroupData[{
Cell[101209, 2066, 701, 21, 78, "Input",ExpressionUUID->"9bf05d92-3d6a-476c-9dab-234b2a2cd2f8"],
Cell[101913, 2089, 197, 3, 52, "Output",ExpressionUUID->"9a8abe01-648b-4bc7-9a55-e7c9018d9400"]
}, Open  ]],
Cell[102125, 2095, 746, 17, 171, "Input",ExpressionUUID->"a16759b6-8c8d-4db8-9422-fb961b248da0"],
Cell[CellGroupData[{
Cell[102896, 2116, 644, 18, 46, "Input",ExpressionUUID->"3adf7963-3a8c-43fb-9f13-5bf2fc18f3f3"],
Cell[103543, 2136, 8357, 253, 363, "Output",ExpressionUUID->"4d41e8d6-753b-4ba9-94dd-f0e07b26a945"]
}, Open  ]]
}, Open  ]]
}, Open  ]],
Cell[CellGroupData[{
Cell[111961, 2396, 159, 3, 101, "Section",ExpressionUUID->"5993397c-61f6-4dc5-a64e-afce70056266"],
Cell[CellGroupData[{
Cell[112145, 2403, 158, 3, 81, "Subsection",ExpressionUUID->"f962486a-e2c7-479b-98fe-383f3e840939"],
Cell[CellGroupData[{
Cell[112328, 2410, 2343, 62, 202, "Input",ExpressionUUID->"22a55419-db40-404c-a4a9-62e7423fc46a"],
Cell[114674, 2474, 620, 17, 71, "Output",ExpressionUUID->"014a6879-abc4-4744-a9f1-a88caf34500e"],
Cell[115297, 2493, 285, 8, 71, "Output",ExpressionUUID->"fa96780c-3f9d-48e6-9fbf-8f087d3750b9"]
}, Open  ]],
Cell[CellGroupData[{
Cell[115619, 2506, 356, 10, 70, "Input",ExpressionUUID->"b33932b6-05b4-480f-9e7c-511756434ea6"],
Cell[115978, 2518, 289, 8, 70, "Output",ExpressionUUID->"c449abd1-6e68-4212-bbd5-354743c1c020"]
}, Open  ]],
Cell[CellGroupData[{
Cell[116304, 2531, 614, 14, 78, "Input",ExpressionUUID->"2a9e6dd1-e37c-47be-8f6a-fd881924feb2"],
Cell[116921, 2547, 13408, 238, 346, "Output",ExpressionUUID->"2e3d13f0-e44b-4687-a803-da6553b2390e"],
Cell[130332, 2787, 284, 7, 52, "Output",ExpressionUUID->"07022f9b-67f0-4e2f-a5be-4cc1d006448a"]
}, Open  ]],
Cell[CellGroupData[{
Cell[130653, 2799, 761, 21, 78, "Input",ExpressionUUID->"8f02ba52-24bd-4a98-8d7d-fd7f63cd2eb2"],
Cell[131417, 2822, 316, 8, 52, "Output",ExpressionUUID->"241cca07-a264-4b6f-8d19-25ef9d8a9a5f"],
Cell[131736, 2832, 324, 8, 55, "Output",ExpressionUUID->"20d17d62-fad9-44de-bc2f-fb6706008e01"]
}, Open  ]],
Cell[132075, 2843, 634, 16, 78, "Input",ExpressionUUID->"0dd927b9-cc14-4421-9c93-da8d9e51fdbe"],
Cell[CellGroupData[{
Cell[132734, 2863, 1508, 44, 144, "Input",ExpressionUUID->"adbe3941-d227-407b-a3e1-73718bc08146"],
Cell[134245, 2909, 1259, 38, 70, "Output",ExpressionUUID->"ed354b44-488e-4e64-9f50-57aecef24a63"]
}, Open  ]],
Cell[CellGroupData[{
Cell[135541, 2952, 401, 10, 46, "Input",ExpressionUUID->"880a0494-a37a-430f-b829-41115f49da0d"],
Cell[135945, 2964, 204, 5, 68, "Output",ExpressionUUID->"41baa919-9455-4ea0-a94b-73f3d6878d5e"]
}, Open  ]],
Cell[CellGroupData[{
Cell[136186, 2974, 825, 19, 78, "Input",ExpressionUUID->"3eda4695-1322-4457-b6bd-4311eb1cbad7"],
Cell[137014, 2995, 11788, 215, 391, "Output",ExpressionUUID->"c9c64a8c-0150-4272-b4e3-e19f7b035eca"]
}, Open  ]],
Cell[148817, 3213, 327, 9, 46, "Input",ExpressionUUID->"d81b4082-95ef-492b-a268-b2c8abe9dc6d"],
Cell[CellGroupData[{
Cell[149169, 3226, 410, 11, 69, "Input",ExpressionUUID->"75c82c27-36ca-466b-b1f4-f7677f76e3b2"],
Cell[149582, 3239, 556, 11, 34, "Message",ExpressionUUID->"ed04f296-59da-46d8-a738-6433c356a8a5"],
Cell[150141, 3252, 490, 10, 34, "Message",ExpressionUUID->"4f2bf4ad-1d01-495e-9189-64fe7ffa0c10"]
}, Open  ]],
Cell[CellGroupData[{
Cell[150668, 3267, 352, 10, 69, "Input",ExpressionUUID->"eda3b04c-d605-42c1-91fb-fbe3ad773d43"],
Cell[151023, 3279, 481, 11, 34, "Message",ExpressionUUID->"dbc6bc49-dba8-46a4-bb11-6fb9517f70ee"]
}, Open  ]],
Cell[CellGroupData[{
Cell[151541, 3295, 377, 11, 69, "Input",ExpressionUUID->"f46f8658-563c-4b6e-8f6b-02ec0a380e68"],
Cell[151921, 3308, 550, 11, 34, "Message",ExpressionUUID->"05c5d8dd-2997-4226-91b2-e6da7c05339b"],
Cell[152474, 3321, 484, 10, 34, "Message",ExpressionUUID->"02cd93fa-06d7-411c-9e61-371027ce6562"]
}, Open  ]],
Cell[CellGroupData[{
Cell[152995, 3336, 390, 11, 69, "Input",ExpressionUUID->"5a290519-41e3-440c-b0ec-5289e4388ab0"],
Cell[153388, 3349, 201, 5, 52, "Output",ExpressionUUID->"130b68db-732b-44ac-ab40-ea525a9e7ce5"]
}, Open  ]]
}, Open  ]],
Cell[CellGroupData[{
Cell[153638, 3360, 158, 3, 81, "Subsection",ExpressionUUID->"f1684f87-50b5-440e-97de-2f3cbf775171"],
Cell[CellGroupData[{
Cell[153821, 3367, 1496, 38, 140, "Input",ExpressionUUID->"5830afbf-c72b-4839-a7ca-4d641f76e81d"],
Cell[155320, 3407, 2021, 41, 480, "Output",ExpressionUUID->"30b3efc5-dc16-4996-ac6f-475485869cf7"]
}, Open  ]],
Cell[CellGroupData[{
Cell[157378, 3453, 313, 8, 46, "Input",ExpressionUUID->"2ffb3ac8-2cec-4e26-8b2b-25e89c3583b7"],
Cell[157694, 3463, 10501, 179, 347, "Output",ExpressionUUID->"9258a1c4-9164-4e6e-be86-9769d64f3edf"]
}, Open  ]],
Cell[CellGroupData[{
Cell[168232, 3647, 347, 8, 78, "Input",ExpressionUUID->"f6e38200-f755-4457-b31c-9558b2554785"],
Cell[168582, 3657, 276, 7, 52, "Output",ExpressionUUID->"3be1b87e-1995-481c-aca2-1f09f6eb1369"]
}, Open  ]],
Cell[CellGroupData[{
Cell[168895, 3669, 392, 9, 109, "Input",ExpressionUUID->"8fd076b2-5018-401a-bb1c-1c9c78b8dddb"],
Cell[169290, 3680, 317, 7, 84, "Output",ExpressionUUID->"33cb97f7-7ab1-4b6b-8856-3cb7b47a6b81"]
}, Open  ]]
}, Open  ]]
}, Open  ]]
}
]
*)

(* NotebookSignature 0xpFg6UBR0bM8BKzmsmmn1Bq *)
