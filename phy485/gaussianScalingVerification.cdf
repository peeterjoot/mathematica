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
NotebookDataLength[    141730,       2757]
NotebookOptionsPosition[    138885,       2705]
NotebookOutlinePosition[    139279,       2721]
CellTagsIndexPosition[    139236,       2718]
WindowFrame->Normal*)

(* Beginning of Notebook Content *)
Notebook[{
Cell[BoxData[{
 RowBox[{
  RowBox[{"<<", "peeters`"}], ";"}], "\n", 
 RowBox[{"peeters`setGitDir", "[", "\"\<../project/figures/phy485-optics\>\"",
   "]"}]}], "Input",
 CellChangeTimes->{{3.759321583647335*^9, 
  3.759321583658193*^9}},ExpressionUUID->"2001ad53-7959-4526-b2c1-\
6c74e397a837"],

Cell[CellGroupData[{

Cell[BoxData[{
 RowBox[{
  RowBox[{"Clear", "[", 
   RowBox[{
   "omega", ",", " ", "omega0", ",", " ", "sigma", ",", " ", "f", ",", " ", 
    "average", ",", " ", "averageSq", ",", " ", "norm"}], "]"}], 
  "\[IndentingNewLine]", 
  RowBox[{"(*", 
   RowBox[{"HoldForm", "["}], "*)"}]}], "\[IndentingNewLine]", 
 RowBox[{" ", 
  RowBox[{
   RowBox[{"f", "[", 
    RowBox[{"omega_", ",", " ", "omega0_", ",", " ", "sigma_"}], "]"}], " ", ":=",
    " ", 
   RowBox[{
    RowBox[{"(", 
     RowBox[{"1", "/", 
      RowBox[{"Sqrt", "[", 
       RowBox[{"2", " ", "Pi", " ", 
        RowBox[{"sigma", "^", "2"}]}], "]"}]}], ")"}], 
    RowBox[{"E", "^", 
     RowBox[{"(", 
      RowBox[{
       RowBox[{"-", 
        RowBox[{
         RowBox[{"(", 
          RowBox[{"omega", " ", "-", " ", "omega0"}], ")"}], "^", "2"}]}], 
       "/", 
       RowBox[{"(", 
        RowBox[{"2", " ", 
         RowBox[{"sigma", "^", "2"}]}], ")"}]}], ")"}]}]}]}], " ", 
  "\[IndentingNewLine]", 
  RowBox[{"(*", 
   RowBox[{"]", " ", "//", " ", 
    RowBox[{"TraditionalForm", "\[IndentingNewLine]", "ReleaseHold"}]}], 
   "*)"}]}], "\[IndentingNewLine]", 
 RowBox[{"norm", " ", "=", " ", 
  RowBox[{"Integrate", "[", " ", 
   RowBox[{
    RowBox[{"f", "[", 
     RowBox[{"omega", ",", " ", "omega0", ",", " ", "sigma"}], "]"}], ",", 
    " ", 
    RowBox[{"{", 
     RowBox[{"omega", ",", " ", 
      RowBox[{"-", "Infinity"}], ",", " ", "Infinity"}], "}"}]}], 
   "]"}]}], "\[IndentingNewLine]", 
 RowBox[{"Simplify", "[", 
  RowBox[{"norm", ",", " ", 
   RowBox[{
    RowBox[{"sigma", " ", ">", " ", "0"}], " ", "&&", " ", 
    RowBox[{"omega0", " ", ">", " ", "0"}]}]}], "]"}], "\[IndentingNewLine]", 
 RowBox[{"average", " ", ":=", " ", 
  RowBox[{"Integrate", "[", " ", 
   RowBox[{
    RowBox[{"omega", " ", 
     RowBox[{"f", "[", 
      RowBox[{"omega", ",", " ", "omega0", ",", " ", "sigma"}], "]"}]}], ",", 
    " ", 
    RowBox[{"{", 
     RowBox[{"omega", ",", " ", 
      RowBox[{"-", "Infinity"}], ",", " ", "Infinity"}], "}"}]}], 
   "]"}]}], "\[IndentingNewLine]", 
 RowBox[{"averageSq", " ", ":=", " ", 
  RowBox[{"Integrate", "[", " ", 
   RowBox[{
    RowBox[{
     RowBox[{"omega", "^", "2"}], " ", 
     RowBox[{"f", "[", 
      RowBox[{"omega", ",", " ", "omega0", ",", " ", "sigma"}], "]"}]}], ",", 
    " ", 
    RowBox[{"{", 
     RowBox[{"omega", ",", " ", 
      RowBox[{"-", "Infinity"}], ",", " ", "Infinity"}], "}"}]}], 
   "]"}]}], "\[IndentingNewLine]", 
 RowBox[{"Simplify", "[", 
  RowBox[{
   RowBox[{"averageSq", " ", "-", " ", 
    RowBox[{"average", "^", "2"}]}], ",", " ", 
   RowBox[{
    RowBox[{"omega0", " ", ">", " ", "0"}], " ", "&&", " ", 
    RowBox[{"sigma", " ", ">", " ", "0"}]}]}], "]"}], "\[IndentingNewLine]", 
 RowBox[{"Simplify", "[", 
  RowBox[{
   RowBox[{
    RowBox[{"(", 
     RowBox[{"1", "/", 
      RowBox[{"Sqrt", "[", 
       RowBox[{"2", " ", "Pi"}], "]"}]}], ")"}], 
    RowBox[{"Integrate", "[", " ", 
     RowBox[{
      RowBox[{
       RowBox[{"f", "[", 
        RowBox[{"omega", ",", " ", "omega0", ",", " ", "sigma"}], "]"}], " ", 
       RowBox[{"E", "^", 
        RowBox[{"(", 
         RowBox[{
          RowBox[{"-", "I"}], " ", "omega", " ", "t"}], ")"}]}]}], ",", " ", 
      RowBox[{"{", 
       RowBox[{"omega", ",", " ", 
        RowBox[{"-", "Infinity"}], ",", " ", "Infinity"}], "}"}]}], "]"}]}], 
   " ", ",", " ", 
   RowBox[{
    RowBox[{"omega0", " ", ">", " ", "0"}], " ", "&&", " ", 
    RowBox[{"sigma", " ", ">", " ", "0"}]}]}], "]"}]}], "Input",
 CellChangeTimes->{{3.5606123267197647`*^9, 3.560612458713597*^9}, {
  3.5606125161060977`*^9, 3.560612550896607*^9}, {3.560612589506675*^9, 
  3.560612617118723*^9}, {3.5606127966210394`*^9, 3.5606128282900953`*^9}, {
  3.560613727562977*^9, 3.5606137322303853`*^9}, {3.5606137994205036`*^9, 
  3.5606138729314337`*^9}, {3.5606139332189407`*^9, 3.5606139545129776`*^9}, {
  3.560614534268997*^9, 3.5606145421326113`*^9}, {3.5606252204427905`*^9, 
  3.560625263230476*^9}, {3.5606253198680058`*^9, 3.5606253856501613`*^9}, {
  3.560626773489296*^9, 3.560626779152465*^9}},
 CellLabel->
  "In[445]:=",ExpressionUUID->"1a6d4e4a-38f8-48d6-a817-29372f4550e1"],

Cell[BoxData[
 TemplateBox[{
   RowBox[{
     SqrtBox[
      FractionBox["1", 
       SuperscriptBox["sigma", "2"]]], " ", 
     SqrtBox[
      SuperscriptBox["sigma", "2"]]}], 
   RowBox[{
     RowBox[{"Re", "[", 
       SuperscriptBox["sigma", "2"], "]"}], "\[GreaterEqual]", "0"}]},
  "ConditionalExpression"]], "Output",
 CellChangeTimes->{
  3.5606124624420033`*^9, {3.5606125325173264`*^9, 3.5606125578074193`*^9}, 
   3.5606126286803436`*^9, 3.560612833984105*^9, 3.5606137454592085`*^9, 
   3.5606138065527163`*^9, 3.56061385941881*^9, 3.5606138916046667`*^9, 
   3.560613955339779*^9, 3.560625272378545*^9, {3.560625311495994*^9, 
   3.560625336462449*^9}, 3.5606253991242914`*^9, 3.901916034838337*^9},
 CellLabel->
  "Out[447]=",ExpressionUUID->"2519f192-fead-493c-ae20-9efb114abfe7"],

Cell[BoxData["1"], "Output",
 CellChangeTimes->{
  3.5606124624420033`*^9, {3.5606125325173264`*^9, 3.5606125578074193`*^9}, 
   3.5606126286803436`*^9, 3.560612833984105*^9, 3.5606137454592085`*^9, 
   3.5606138065527163`*^9, 3.56061385941881*^9, 3.5606138916046667`*^9, 
   3.560613955339779*^9, 3.560625272378545*^9, {3.560625311495994*^9, 
   3.560625336462449*^9}, 3.5606253991242914`*^9, 3.901916034841508*^9},
 CellLabel->
  "Out[448]=",ExpressionUUID->"d3cc2842-a127-4c80-b6e7-1f6ee735b566"],

Cell[BoxData[
 SuperscriptBox["sigma", "2"]], "Output",
 CellChangeTimes->{
  3.5606124624420033`*^9, {3.5606125325173264`*^9, 3.5606125578074193`*^9}, 
   3.5606126286803436`*^9, 3.560612833984105*^9, 3.5606137454592085`*^9, 
   3.5606138065527163`*^9, 3.56061385941881*^9, 3.5606138916046667`*^9, 
   3.560613955339779*^9, 3.560625272378545*^9, {3.560625311495994*^9, 
   3.560625336462449*^9}, 3.5606253991242914`*^9, 3.9019160577209578`*^9},
 CellLabel->
  "Out[451]=",ExpressionUUID->"24917f18-f361-40fe-877f-6dc7bfd59c9e"],

Cell[BoxData[
 FractionBox[
  SuperscriptBox["\[ExponentialE]", 
   RowBox[{
    RowBox[{"-", 
     FractionBox["1", "2"]}], " ", "t", " ", 
    RowBox[{"(", 
     RowBox[{
      RowBox[{"2", " ", "\[ImaginaryI]", " ", "omega0"}], "+", 
      RowBox[{
       SuperscriptBox["sigma", "2"], " ", "t"}]}], ")"}]}]], 
  SqrtBox[
   RowBox[{"2", " ", "\[Pi]"}]]]], "Output",
 CellChangeTimes->{
  3.5606124624420033`*^9, {3.5606125325173264`*^9, 3.5606125578074193`*^9}, 
   3.5606126286803436`*^9, 3.560612833984105*^9, 3.5606137454592085`*^9, 
   3.5606138065527163`*^9, 3.56061385941881*^9, 3.5606138916046667`*^9, 
   3.560613955339779*^9, 3.560625272378545*^9, {3.560625311495994*^9, 
   3.560625336462449*^9}, 3.5606253991242914`*^9, 3.9019160637454643`*^9},
 CellLabel->
  "Out[452]=",ExpressionUUID->"a5f015b7-a23a-4248-b6ea-9a4446b51b79"]
}, Open  ]],

Cell[BoxData[
 RowBox[{"(*", 
  RowBox[{
   SuperscriptBox["\[ExponentialE]", 
    RowBox[{
     RowBox[{"-", 
      FractionBox["1", "2"]}], " ", "t", " ", 
     RowBox[{"(", 
      RowBox[{
       RowBox[{"2", " ", "\[ImaginaryI]", " ", "omega0"}], "+", 
       RowBox[{
        SuperscriptBox["sigma", "2"], " ", "t"}]}], ")"}]}]], " ", "/.", " ", 
   RowBox[{"omega0", " ", "\[Rule]", " ", 
    SubscriptBox["\[Omega]", "0"]}]}], "*)"}]], "Input",
 CellChangeTimes->{{3.560625452069564*^9, 3.5606254645826693`*^9}, 
   3.901916449501541*^9},ExpressionUUID->"186730c2-549d-4579-bd94-\
fdb2d6db6a3a"],

Cell[BoxData[
 RowBox[{"(*", 
  RowBox[{
   SuperscriptBox["\[ExponentialE]", 
    RowBox[{
     RowBox[{"-", 
      FractionBox["1", "2"]}], " ", "t", " ", 
     RowBox[{"(", 
      RowBox[{
       RowBox[{
        SuperscriptBox["sigma", "2"], " ", "t"}], "+", 
       RowBox[{"2", " ", "\[ImaginaryI]", " ", 
        SubscriptBox["\[Omega]", "0"]}]}], ")"}]}]], " ", "/.", " ", 
   RowBox[{"sigma", " ", "\[Rule]", " ", "\[CapitalDelta]\[Omega]"}]}], 
  "*)"}]], "Input",
 CellChangeTimes->{{3.560625470563678*^9, 3.560625488355703*^9}, 
   3.901916451681584*^9},ExpressionUUID->"7ae7d6ee-cd95-46d1-86f8-\
c1a03d3b241a"],

Cell[BoxData[
 RowBox[{
  RowBox[{"(*", 
   SuperscriptBox["\[ExponentialE]", 
    RowBox[{
     RowBox[{"-", 
      FractionBox["1", "2"]}], " ", "t", " ", 
     RowBox[{"(", 
      RowBox[{
       RowBox[{"t", " ", 
        SuperscriptBox["\[CapitalDelta]\[Omega]", "2"]}], "+", 
       RowBox[{"2", " ", "\[ImaginaryI]", " ", 
        SubscriptBox["\[Omega]", "0"]}]}], ")"}]}]], "*)"}], 
  "\[IndentingNewLine]", "\[IndentingNewLine]", 
  RowBox[{
   RowBox[{
    RowBox[{
     RowBox[{"pp", "[", 
      RowBox[{"omega0_", ",", " ", "sigma_", ",", " ", "tRange_"}], "]"}], 
     " ", ":=", 
     RowBox[{"Plot", "[", "\[IndentingNewLine]", 
      RowBox[{
       RowBox[{
        SuperscriptBox["\[ExponentialE]", 
         RowBox[{
          RowBox[{"-", 
           FractionBox["1", "2"]}], " ", "t", " ", 
          RowBox[{"(", 
           RowBox[{
            SuperscriptBox["sigma", "2"], " ", "t"}], ")"}]}]], " ", 
        RowBox[{"Cos", "[", 
         RowBox[{"t", " ", "omega0"}], " ", "]"}]}], "\[IndentingNewLine]", 
       ",", " ", 
       RowBox[{"{", 
        RowBox[{"t", ",", " ", 
         RowBox[{"-", "tRange"}], ",", " ", "tRange"}], "}"}], 
       "\[IndentingNewLine]", ",", " ", 
       RowBox[{"AxesLabel", " ", "\[Rule]", " ", 
        RowBox[{"{", "\[IndentingNewLine]", " ", 
         RowBox[{
          RowBox[{"MaTeX", "[", "\"\<t\>\"", "]"}], ",", " ", 
          "\[IndentingNewLine]", 
          RowBox[{
          "MaTeX", "[", 
           "\"\<\\\\textrm{Re}\\\\left( \\\\exp\\\\left(-\\\\frac{1}{2} t (t \
{\\\\Delta \\\\omega}^2 + 2 i \\\\omega_0)\\\\right) \\\\right)\>\"", "]"}]}],
          "\[IndentingNewLine]", 
         RowBox[{"(*", 
          RowBox[{"Style", "[", 
           RowBox[{
            RowBox[{"Re", "[", 
             SuperscriptBox["\[ExponentialE]", 
              RowBox[{
               RowBox[{"-", 
                FractionBox["1", "2"]}], " ", "t", " ", 
               RowBox[{"(", 
                RowBox[{
                 RowBox[{"t", " ", 
                  SuperscriptBox["\[CapitalDelta]\[Omega]", "2"]}], "+", 
                 RowBox[{"2", " ", "\[ImaginaryI]", " ", 
                  SubscriptBox["\[Omega]", "0"]}]}], ")"}]}]], "]"}], ",", 
            " ", 
            RowBox[{"FontSize", "\[Rule]", " ", "16"}]}], "]"}], "*)"}], 
         "\[IndentingNewLine]", "}"}]}], "\[IndentingNewLine]", ",", " ", 
       RowBox[{"PlotStyle", "\[Rule]", " ", 
        RowBox[{"{", 
         RowBox[{"Black", ",", "Thick"}], "}"}]}], "\[IndentingNewLine]", ",",
        " ", 
       RowBox[{"PlotRange", " ", "\[Rule]", " ", "Full"}], 
       "\[IndentingNewLine]", ",", " ", 
       RowBox[{"Ticks", " ", "->", " ", "None"}]}], "\[IndentingNewLine]", 
      "]"}]}], ";"}], "\[IndentingNewLine]", "\[IndentingNewLine]", 
   "\[IndentingNewLine]"}]}]], "Input",
 CellChangeTimes->{{3.5606254984228277`*^9, 3.56062549979283*^9}, {
   3.9019160621796627`*^9, 3.901916315385449*^9}, {3.901916352101329*^9, 
   3.90191639872119*^9}, 3.901916455885866*^9},
 CellLabel->
  "In[474]:=",ExpressionUUID->"acc544ee-348b-4ac8-860f-97ea2ecdaeb7"],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"Manipulate", "[", "\[IndentingNewLine]", 
  RowBox[{
   RowBox[{"pp", "[", 
    RowBox[{"omega0", ",", " ", "sigma", ",", " ", "tRange"}], "]"}], 
   "\[IndentingNewLine]", ",", 
   RowBox[{"{", 
    RowBox[{
     RowBox[{"{", 
      RowBox[{"omega0", ",", " ", "2"}], "}"}], ",", " ", "1", ",", " ", 
     "10"}], "}"}], "\[IndentingNewLine]", ",", 
   RowBox[{"{", 
    RowBox[{
     RowBox[{"{", 
      RowBox[{"sigma", ",", " ", "0.5"}], "}"}], ",", " ", "0.1", ",", " ", 
     "10"}], "}"}], "\[IndentingNewLine]", ",", " ", 
   RowBox[{"{", 
    RowBox[{"tRange", ",", " ", "1", ",", " ", "10"}], "}"}]}], 
  "\[IndentingNewLine]", 
  RowBox[{"(*", 
   RowBox[{",", " ", 
    RowBox[{"Bookmarks", " ", "\[Rule]", " ", "\"\<Gaussian envelope\>\""}]}],
    "*)"}], "\[IndentingNewLine]", "]"}]], "Input",
 CellChangeTimes->{{3.5606257331896276`*^9, 3.5606259405245667`*^9}, {
   3.5606259797798033`*^9, 3.5606260742292366`*^9}, {3.560626139334597*^9, 
   3.560626143829603*^9}, {3.5606261755307317`*^9, 3.5606261756707315`*^9}, {
   3.5606262432831173`*^9, 3.560626302708126*^9}, {3.759321426693235*^9, 
   3.759321452288169*^9}, 3.9019160598614893`*^9, {3.9019160943076*^9, 
   3.901916101034129*^9}, 3.901916274642129*^9, 3.9019164239685993`*^9},
 CellLabel->
  "In[475]:=",ExpressionUUID->"f1ee3118-d2eb-4110-a4d4-591957ba1db7"],

Cell[BoxData[
 TagBox[
  StyleBox[
   DynamicModuleBox[{$CellContext`omega0$$ = 2, $CellContext`sigma$$ = 
    0.5, $CellContext`tRange$$ = 1, Typeset`show$$ = True, 
    Typeset`bookmarkList$$ = {}, Typeset`bookmarkMode$$ = "Menu", 
    Typeset`animator$$, Typeset`animvar$$ = 1, Typeset`name$$ = 
    "\"untitled\"", Typeset`specs$$ = {{{
       Hold[$CellContext`omega0$$], 2}, 1, 10}, {{
       Hold[$CellContext`sigma$$], 0.5}, 0.1, 10}, {
      Hold[$CellContext`tRange$$], 1, 10}}, Typeset`size$$ = {
    360., {128., 133.}}, Typeset`update$$ = 0, Typeset`initDone$$, 
    Typeset`skipInitDone$$ = True}, 
    DynamicBox[Manipulate`ManipulateBoxes[
     1, StandardForm, 
      "Variables" :> {$CellContext`omega0$$ = 2, $CellContext`sigma$$ = 
        0.5, $CellContext`tRange$$ = 1}, "ControllerVariables" :> {}, 
      "OtherVariables" :> {
       Typeset`show$$, Typeset`bookmarkList$$, Typeset`bookmarkMode$$, 
        Typeset`animator$$, Typeset`animvar$$, Typeset`name$$, 
        Typeset`specs$$, Typeset`size$$, Typeset`update$$, Typeset`initDone$$,
         Typeset`skipInitDone$$}, 
      "Body" :> $CellContext`pp[$CellContext`omega0$$, $CellContext`sigma$$, \
$CellContext`tRange$$], 
      "Specifications" :> {{{$CellContext`omega0$$, 2}, 1, 
         10}, {{$CellContext`sigma$$, 0.5}, 0.1, 10}, {$CellContext`tRange$$, 
         1, 10}}, "Options" :> {}, "DefaultOptions" :> {}],
     ImageSizeCache->{404., {201., 207.}},
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
 CellChangeTimes->{
  3.56062594982765*^9, {3.5606260448230796`*^9, 3.560626074999238*^9}, 
   3.560626144730605*^9, 3.560626176515733*^9, 3.560626285455621*^9, 
   3.759321453349419*^9, 3.901916462765799*^9},
 CellLabel->
  "Out[475]=",ExpressionUUID->"0d376110-d514-4a08-9161-e9fb8002ee88"]
}, Open  ]],

Cell[BoxData[""], "Input",
 GeneratedCell->False,
 CellAutoOverwrite->False,
 CellChangeTimes->{{3.759321514144393*^9, 
  3.759321518327649*^9}},ExpressionUUID->"ef32c0ce-7ad1-483e-a0d1-\
a93b0c09cfde"],

Cell[BoxData[""], "Input",
 GeneratedCell->False,
 CellAutoOverwrite->False,
 CellChangeTimes->{{3.7593214637110786`*^9, 
  3.759321468179264*^9}},ExpressionUUID->"6e4761ae-9f15-4e52-b8c9-\
76f4b1ef3f34"],

Cell[BoxData[""], "Input",
 GeneratedCell->False,
 CellAutoOverwrite->False,
 CellChangeTimes->{{3.75932140168598*^9, 
  3.759321406172016*^9}},ExpressionUUID->"bd20a1bb-ce63-4159-81e4-\
e4f82780f15f"],

Cell[BoxData[
 RowBox[{"Simplify", "[", 
  RowBox[{
   RowBox[{
    RowBox[{"(", 
     RowBox[{"1", "/", 
      RowBox[{"(", 
       RowBox[{"2", " ", "Pi", " ", "sigma"}], ")"}]}], ")"}], 
    RowBox[{"Integrate", "[", " ", 
     RowBox[{
      RowBox[{
       RowBox[{
        RowBox[{"(", 
         RowBox[{"f", "[", 
          RowBox[{"omega", ",", " ", "omega0", ",", " ", "sigma"}], "]"}], 
         ")"}], "^", "2"}], " ", 
       RowBox[{"E", "^", 
        RowBox[{"(", 
         RowBox[{
          RowBox[{"-", "I"}], " ", "omega", " ", "t"}], ")"}]}]}], ",", " ", 
      RowBox[{"{", 
       RowBox[{"omega", ",", " ", 
        RowBox[{"-", "Infinity"}], ",", " ", "Infinity"}], "}"}]}], "]"}]}], 
   " ", ",", " ", 
   RowBox[{
    RowBox[{"omega0", " ", ">", " ", "0"}], " ", "&&", " ", 
    RowBox[{"sigma", " ", ">", " ", "0"}]}]}], "]"}]], "Input",
 CellChangeTimes->{{3.5606275536063604`*^9, 3.5606275614723716`*^9}, {
  3.560627628919689*^9, 
  3.56062764400171*^9}},ExpressionUUID->"a96d1e34-8c95-4fe1-a5cd-\
0b1de3948906"],

Cell[BoxData[
 RowBox[{
  FractionBox[
   SuperscriptBox["\[ExponentialE]", 
    RowBox[{
     RowBox[{"-", 
      FractionBox["1", "4"]}], " ", "t", " ", 
     RowBox[{"(", 
      RowBox[{
       RowBox[{"4", " ", "\[ImaginaryI]", " ", "omega0"}], "+", 
       RowBox[{
        SuperscriptBox["sigma", "2"], " ", "t"}]}], ")"}]}]], 
   RowBox[{"4", " ", 
    SuperscriptBox["\[Pi]", 
     RowBox[{"3", "/", "2"}]], " ", 
    SuperscriptBox["sigma", "2"]}]], " ", "/.", " ", 
  RowBox[{"omega0", " ", "\[Rule]", " ", 
   SubscriptBox["\[Omega]", "0"]}]}]], "Input",
 CellChangeTimes->{{3.560627716640193*^9, 
  3.560627728102209*^9}},ExpressionUUID->"4366698a-7e21-4377-9d24-\
844c8e3c4f4b"],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{
  FractionBox[
   SuperscriptBox["\[ExponentialE]", 
    RowBox[{
     RowBox[{"-", 
      FractionBox["1", "4"]}], " ", "t", " ", 
     RowBox[{"(", 
      RowBox[{
       RowBox[{
        SuperscriptBox["sigma", "2"], " ", "t"}], "+", 
       RowBox[{"4", " ", "\[ImaginaryI]", " ", 
        SubscriptBox["\[Omega]", "0"]}]}], ")"}]}]], 
   RowBox[{"4", " ", 
    SuperscriptBox["\[Pi]", 
     RowBox[{"3", "/", "2"}]], " ", 
    SuperscriptBox["sigma", "2"]}]], " ", "/.", " ", 
  RowBox[{
  "sigma", " ", "\[Rule]", " ", "\[CapitalDelta]\[Omega]"}]}]], "Input",
 CellChangeTimes->{{3.5606277325472155`*^9, 
  3.560627750367339*^9}},ExpressionUUID->"f2767588-13bd-4989-bd5a-\
51ada9f5ce0c"],

Cell[BoxData[
 FractionBox[
  SuperscriptBox["\[ExponentialE]", 
   RowBox[{
    RowBox[{"-", 
     FractionBox["1", "4"]}], " ", "t", " ", 
    RowBox[{"(", 
     RowBox[{
      RowBox[{"t", " ", 
       SuperscriptBox["\[CapitalDelta]\[Omega]", "2"]}], "+", 
      RowBox[{"4", " ", "\[ImaginaryI]", " ", 
       SubscriptBox["\[Omega]", "0"]}]}], ")"}]}]], 
  RowBox[{"4", " ", 
   SuperscriptBox["\[Pi]", 
    RowBox[{"3", "/", "2"}]], " ", 
   SuperscriptBox["\[CapitalDelta]\[Omega]", "2"]}]]], "Output",
 CellChangeTimes->{
  3.560627752527342*^9},ExpressionUUID->"d6e0d380-500e-4d63-824f-\
cee637889e9c"]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"Expand", "[", "%", "]"}]], "Input",
 CellChangeTimes->{{3.560627670127803*^9, 
  3.5606276732288074`*^9}},ExpressionUUID->"5d85327e-11ba-4c0e-9562-\
3367c4991908"],

Cell[BoxData[
 FractionBox[
  SuperscriptBox["\[ExponentialE]", 
   RowBox[{
    RowBox[{"-", 
     FractionBox["1", "4"]}], " ", "t", " ", 
    RowBox[{"(", 
     RowBox[{
      RowBox[{"4", " ", "\[ImaginaryI]", " ", "omega0"}], "+", 
      RowBox[{
       SuperscriptBox["sigma", "2"], " ", "t"}]}], ")"}]}]], 
  RowBox[{"4", " ", 
   SuperscriptBox["\[Pi]", 
    RowBox[{"3", "/", "2"}]], " ", 
   SuperscriptBox["sigma", "2"]}]]], "Output",
 CellChangeTimes->{
  3.560627674073848*^9},ExpressionUUID->"07eae9f6-5b96-45e2-803c-\
5b9caa866e99"]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[{
 RowBox[{"Clear", "[", 
  RowBox[{"h", ",", " ", "l", ",", " ", "domega", ",", " ", "c"}], 
  "]"}], "\[IndentingNewLine]", 
 RowBox[{"Manipulate", "[", "\[IndentingNewLine]", " ", 
  RowBox[{
   RowBox[{"Plot", "[", "\[IndentingNewLine]", 
    RowBox[{
     RowBox[{"{", 
      RowBox[{
       RowBox[{
        RowBox[{"E", "^", 
         RowBox[{"(", 
          RowBox[{
           RowBox[{
            RowBox[{"domega", "^", "2"}], 
            RowBox[{"(", 
             RowBox[{"t", " ", "h", " ", 
              RowBox[{
               RowBox[{"(", 
                RowBox[{"h", " ", "+", " ", "x"}], ")"}], "/", "l"}]}], 
             ")"}]}], " ", "-", " ", 
           RowBox[{
            RowBox[{"t", "^", "2"}], "/", "4"}]}], ")"}]}], " ", 
        RowBox[{"Cos", "[", 
         RowBox[{"omega0", " ", 
          RowBox[{"(", 
           RowBox[{"t", " ", "-", " ", 
            RowBox[{"2", " ", "h", " ", 
             RowBox[{
              RowBox[{"(", 
               RowBox[{"h", " ", "+", " ", "x"}], ")"}], "/", "l"}], " ", 
             "c"}]}], ")"}]}], "]"}]}], "\[IndentingNewLine]", ",", " ", 
       RowBox[{"E", "^", 
        RowBox[{"(", 
         RowBox[{
          RowBox[{
           RowBox[{"domega", "^", "2"}], 
           RowBox[{"(", 
            RowBox[{"t", " ", "h", " ", 
             RowBox[{
              RowBox[{"(", 
               RowBox[{"h", " ", "+", " ", "x"}], ")"}], "/", "l"}]}], 
            ")"}]}], " ", "-", " ", 
          RowBox[{
           RowBox[{"t", "^", "2"}], "/", "4"}]}], ")"}]}], 
       "\[IndentingNewLine]", ",", " ", 
       RowBox[{"-", 
        RowBox[{"E", "^", 
         RowBox[{"(", 
          RowBox[{
           RowBox[{
            RowBox[{"domega", "^", "2"}], 
            RowBox[{"(", 
             RowBox[{"t", " ", "h", " ", 
              RowBox[{
               RowBox[{"(", 
                RowBox[{"h", " ", "+", " ", "x"}], ")"}], "/", "l"}]}], 
             ")"}]}], " ", "-", " ", 
           RowBox[{
            RowBox[{"t", "^", "2"}], "/", "4"}]}], ")"}]}]}]}], 
      "\[IndentingNewLine]", "}"}], "\[IndentingNewLine]", ",", " ", 
     RowBox[{"{", 
      RowBox[{"t", ",", " ", "0", ",", " ", "10"}], "}"}], 
     "\[IndentingNewLine]", ",", 
     RowBox[{"PlotRange", " ", "\[Rule]", " ", "Full"}], 
     "\[IndentingNewLine]", ",", " ", 
     RowBox[{"PlotStyle", "\[Rule]", "Thick"}]}], "\[IndentingNewLine]", 
    "]"}], "\[IndentingNewLine]", ",", " ", 
   RowBox[{"{", 
    RowBox[{
     RowBox[{"{", 
      RowBox[{"h", ",", " ", "0.5"}], "}"}], ",", " ", "0.01", ",", " ", 
     "1"}], "}"}], "\[IndentingNewLine]", ",", " ", 
   RowBox[{"{", 
    RowBox[{
     RowBox[{"{", 
      RowBox[{"x", ",", " ", "0.5"}], "}"}], ",", " ", "0.01", ",", " ", 
     "1"}], "}"}], "\[IndentingNewLine]", ",", " ", 
   RowBox[{"{", 
    RowBox[{
     RowBox[{"{", 
      RowBox[{"l", ",", " ", "13"}], "}"}], ",", " ", "1", ",", " ", "20"}], 
    "}"}], "\[IndentingNewLine]", ",", " ", 
   RowBox[{"{", 
    RowBox[{
     RowBox[{"{", 
      RowBox[{"c", ",", " ", 
       RowBox[{"10", "^", "8"}]}], "}"}], ",", " ", "1", ",", " ", 
     RowBox[{"10", "^", "8"}]}], "}"}], "\[IndentingNewLine]", ",", " ", 
   RowBox[{"{", 
    RowBox[{
     RowBox[{"{", 
      RowBox[{"domega", ",", " ", "8"}], "}"}], ",", " ", "0.1", ",", " ", 
     "10"}], "}"}], "\[IndentingNewLine]", ",", " ", 
   RowBox[{"{", 
    RowBox[{
     RowBox[{"{", 
      RowBox[{"omega0", ",", " ", "7"}], "}"}], ",", " ", "0.1", ",", " ", 
     "10"}], "}"}]}], "\[IndentingNewLine]", "]"}]}], "Input",
 CellChangeTimes->{{3.5606311482744837`*^9, 3.560631312749507*^9}, {
  3.560631388398652*^9, 3.5606315581213245`*^9}, {3.5606316991685133`*^9, 
  3.5606317616881685`*^9}, {3.5606320213152347`*^9, 3.5606320604929066`*^9}, {
  3.7593216889189653`*^9, 
  3.759321692854959*^9}},ExpressionUUID->"dc5ed405-3240-4150-9166-\
324e92d31b1c"],

Cell[BoxData[
 TagBox[
  StyleBox[
   DynamicModuleBox[{$CellContext`c$$ = 100000000, $CellContext`domega$$ = 
    8, $CellContext`h$$ = 0.5, $CellContext`l$$ = 13, $CellContext`omega0$$ = 
    7, $CellContext`x$$ = 0.5, Typeset`show$$ = True, 
    Typeset`bookmarkList$$ = {}, Typeset`bookmarkMode$$ = "Menu", 
    Typeset`animator$$, Typeset`animvar$$ = 1, Typeset`name$$ = 
    "\"untitled\"", Typeset`specs$$ = {{{
       Hold[$CellContext`h$$], 0.5}, 0.01, 1}, {{
       Hold[$CellContext`x$$], 0.5}, 0.01, 1}, {{
       Hold[$CellContext`l$$], 13}, 1, 20}, {{
       Hold[$CellContext`c$$], 100000000}, 1, 100000000}, {{
       Hold[$CellContext`domega$$], 8}, 0.1, 10}, {{
       Hold[$CellContext`omega0$$], 7}, 0.1, 10}}, Typeset`size$$ = {
    360., {104., 108.}}, Typeset`update$$ = 0, Typeset`initDone$$, 
    Typeset`skipInitDone$$ = True, $CellContext`h$118841$$ = 
    0, $CellContext`x$118842$$ = 0, $CellContext`l$118843$$ = 
    0, $CellContext`c$118844$$ = 0, $CellContext`domega$118845$$ = 
    0, $CellContext`omega0$118846$$ = 0}, 
    DynamicBox[Manipulate`ManipulateBoxes[
     1, StandardForm, 
      "Variables" :> {$CellContext`c$$ = 100000000, $CellContext`domega$$ = 
        8, $CellContext`h$$ = 0.5, $CellContext`l$$ = 
        13, $CellContext`omega0$$ = 7, $CellContext`x$$ = 0.5}, 
      "ControllerVariables" :> {
        Hold[$CellContext`h$$, $CellContext`h$118841$$, 0], 
        Hold[$CellContext`x$$, $CellContext`x$118842$$, 0], 
        Hold[$CellContext`l$$, $CellContext`l$118843$$, 0], 
        Hold[$CellContext`c$$, $CellContext`c$118844$$, 0], 
        Hold[$CellContext`domega$$, $CellContext`domega$118845$$, 0], 
        Hold[$CellContext`omega0$$, $CellContext`omega0$118846$$, 0]}, 
      "OtherVariables" :> {
       Typeset`show$$, Typeset`bookmarkList$$, Typeset`bookmarkMode$$, 
        Typeset`animator$$, Typeset`animvar$$, Typeset`name$$, 
        Typeset`specs$$, Typeset`size$$, Typeset`update$$, Typeset`initDone$$,
         Typeset`skipInitDone$$}, "Body" :> 
      Plot[{E^($CellContext`domega$$^2 (($CellContext`t $CellContext`h$$) \
(($CellContext`h$$ + $CellContext`x$$)/$CellContext`l$$)) - $CellContext`t^2/
           4) Cos[$CellContext`omega0$$ ($CellContext`t - ((
              2 $CellContext`h$$) (($CellContext`h$$ + \
$CellContext`x$$)/$CellContext`l$$)) $CellContext`c$$)], 
         E^($CellContext`domega$$^2 (($CellContext`t $CellContext`h$$) \
(($CellContext`h$$ + $CellContext`x$$)/$CellContext`l$$)) - $CellContext`t^2/
          4), -E^($CellContext`domega$$^2 (($CellContext`t $CellContext`h$$) \
(($CellContext`h$$ + $CellContext`x$$)/$CellContext`l$$)) - $CellContext`t^2/
           4)}, {$CellContext`t, 0, 10}, PlotRange -> Full, PlotStyle -> 
        Thick], "Specifications" :> {{{$CellContext`h$$, 0.5}, 0.01, 
         1}, {{$CellContext`x$$, 0.5}, 0.01, 1}, {{$CellContext`l$$, 13}, 1, 
         20}, {{$CellContext`c$$, 100000000}, 1, 
         100000000}, {{$CellContext`domega$$, 8}, 0.1, 
         10}, {{$CellContext`omega0$$, 7}, 0.1, 10}}, "Options" :> {}, 
      "DefaultOptions" :> {}],
     ImageSizeCache->{404., {219., 224.}},
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
 CellChangeTimes->{{3.560631533023143*^9, 3.5606315590463257`*^9}, 
   3.560631723044879*^9, 3.5606317667731757`*^9, 3.560631912613123*^9, {
   3.560632035144026*^9, 3.560632063400032*^9}, 
   3.7593216946274643`*^9},ExpressionUUID->"9a1b1571-cb11-49f2-937a-\
3bb3b18a884c"]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"ftOfgaussianSquaredAtRetardedTimeFig3", " ", "=", " ", 
  RowBox[{"DynamicModule", "[", 
   RowBox[{
    RowBox[{"{", 
     RowBox[{
      RowBox[{"c", "=", "100000000"}], ",", 
      RowBox[{"domega", "=", "8"}], ",", 
      RowBox[{"h", "=", "0.5`"}], ",", 
      RowBox[{"l", "=", "13"}], ",", 
      RowBox[{"omega0", "=", "7"}], ",", 
      RowBox[{"x", "=", "0.5`"}]}], "}"}], ",", 
    RowBox[{"Plot", "[", 
     RowBox[{
      RowBox[{"{", 
       RowBox[{
        RowBox[{
         SuperscriptBox["\[ExponentialE]", 
          RowBox[{
           FractionBox[
            RowBox[{
             SuperscriptBox["domega", "2"], " ", 
             RowBox[{"(", 
              RowBox[{"t", " ", "h", " ", 
               RowBox[{"(", 
                RowBox[{"h", "+", "x"}], ")"}]}], ")"}]}], "l"], "-", 
           FractionBox[
            SuperscriptBox["t", "2"], "4"]}]], " ", 
         RowBox[{"Cos", "[", 
          RowBox[{"omega0", " ", 
           RowBox[{"(", 
            RowBox[{"t", "-", 
             FractionBox[
              RowBox[{"2", " ", "h", " ", 
               RowBox[{"(", 
                RowBox[{"h", "+", "x"}], ")"}], " ", "c"}], "l"]}], ")"}]}], 
          "]"}]}], ",", 
        SuperscriptBox["\[ExponentialE]", 
         RowBox[{
          FractionBox[
           RowBox[{
            SuperscriptBox["domega", "2"], " ", 
            RowBox[{"(", 
             RowBox[{"t", " ", "h", " ", 
              RowBox[{"(", 
               RowBox[{"h", "+", "x"}], ")"}]}], ")"}]}], "l"], "-", 
          FractionBox[
           SuperscriptBox["t", "2"], "4"]}]], ",", 
        RowBox[{"-", 
         SuperscriptBox["\[ExponentialE]", 
          RowBox[{
           FractionBox[
            RowBox[{
             SuperscriptBox["domega", "2"], " ", 
             RowBox[{"(", 
              RowBox[{"t", " ", "h", " ", 
               RowBox[{"(", 
                RowBox[{"h", "+", "x"}], ")"}]}], ")"}]}], "l"], "-", 
           FractionBox[
            SuperscriptBox["t", "2"], "4"]}]]}]}], "}"}], ",", 
      RowBox[{"{", 
       RowBox[{"t", ",", "0", ",", "10"}], "}"}], ",", 
      RowBox[{"PlotRange", "\[Rule]", "Full"}], ",", 
      RowBox[{"PlotStyle", "\[Rule]", "Thick"}]}], "]"}]}], "]"}]}]], "Input",
 GeneratedCell->False,
 CellAutoOverwrite->False,
 CellChangeTimes->{{3.7593216987850237`*^9, 
  3.759321704606936*^9}},ExpressionUUID->"744cbd09-3bba-4aed-8662-\
5ba889ff715c"],

Cell[BoxData[
 DynamicModuleBox[{$CellContext`c$$ = 100000000, $CellContext`domega$$ = 
  8, $CellContext`h$$ = 0.5, $CellContext`l$$ = 13, $CellContext`omega0$$ = 
  7, $CellContext`x$$ = 0.5}, 
  GraphicsBox[{{{}, {}, 
     TagBox[
      {RGBColor[0.368417, 0.506779, 0.709798], Thickness[Large], Opacity[1.], 
       LineBox[CompressedData["
1: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
aP8DtmnQgg==
        "]]},
      Annotation[#, "Charting`Private`Tag$119008#1"]& ], 
     TagBox[
      {RGBColor[0.880722, 0.611041, 0.142051], Thickness[Large], Opacity[1.], 
       LineBox[CompressedData["
1:eJwVl3c81f8Xx41IRl3upRDukJ0QQuP9MkuUEElbZSVU5qXyLRFSkiRNoZSM
RGVlpChFGRmpFCmr7D1+9/fX5/H8fN6P836f9zmvcz6H4eRlc5iHi4vrCzcX
1/+ft0458WseitrwN6YljItrgFTU0y130N3I9Jal2gJyA2T+zcuzdHogqR06
KLJxwwC5VRotx0ePIDevL0g+cnKAeKz3PToud51MWNgKO84NkPpp17gBuYfk
9bPxASmhIbLwy0/Ffrl8kpXmQimxGSHNpcW+fX/ySVzafbV9gSPk0f2EV71P
CsiI6SZ7o7sjZOvxrft6jIuI8jJnr/q/IyR+UUH8b5cSYtVHFNQujRKxm1U8
g03lpH7N7/e0r2Mk6d2dY71yb8mbT/F3qrInyUhCnsr3C29JiMSmsPudk8TM
pbqjbvItCR2PyepYNkX6eMftCurfkfwzAatPnZkieuu3GkSEvyfH6xoppo7T
5GPWDI/iv1qiHd9rk7p8lpx+p7ZZc189OdmOp4kBXEh78lwh/Wo90fmnoyV9
nQt1CUa8K97XE+EbiRWN+VyQd3EoWqbfQJh35y9OTXPhHW+oOhe1kQhuiC0X
PssNifVfxGrffCaK5kbOqTd5kJkV8cVDvZWQGjWhrVx86BHrubD5QCvxfOOU
tUyBD4p+mzcoxbWSJT7iN+iWfLi7TiipY7KVKJinJ3Un8CH27QVnx9dfSOr5
qn43HX74dVwa3Lj7K4nz063zZi/EHaHqs6Km7eTf/r4LEmsEsWF90O6Qve1E
6VaDnd5hQbR5qur8828nerQlf+5dEcSyuqiu94/aSf8u9WHbQUFcTrA0P0/5
QdLWFZ3TyBbC2RU1i+e//CDz/de51NaJwIV8ut53vIOYuK2I59lEAde9sYIv
UR0kL0kyxO8gBQkLlre9S+kgz/x0c6inKah66yz78HMHUdlCKX/3jAKl7TP3
Dht0kgCrwAOaSqL446r4+Bv3L7LXbObjEqoY3GNPvvwY00WUK61vXxWkgWf0
3veSh10kdQV30k1VGhJ3VHFllXeRrQZJv+staXi3nGocPdJFpNG9suESDaoP
0irNHX4Tja4XCsxl4ugrrP9YLveH1A2/zVfSkoDnL+WO3MxuIud0aDA2ehna
97YIlL3tJtmXLwb5vlgG2+bz6h86u8l66+WLEjuWQa/6d+AvqR4yefnD6UcG
kuB9kkqRCO8hQhl8CkO9kkgIZmzw39dLDPhT77nskkYZVfK6PqWfzAWEONp5
y0I7uuqlqWo/GY632MVIkcV9/oBOa7N+EjX2MMigWRYXJj+vcg/uJyLHYmPt
DOVg/z3uTeKffhL9uPvZTSE6eh5RRqZL/5KK1CdFfN10CDJCFb/rDZBddgZP
jV4xUbXu8qpTpgPE9dDzYeN2JsIcbq+RsRkg3bEGTI9ZJnhiXmzcdWSA8ASu
HNTUY2Fqrs+l6dYASRfrGL6WxUJvm11aLc8gseq3/zSUKo/3CYrKpe8Hyd69
ieXUHAVE5mpr7msZJGCky5k1KGDTR0P9uV+DpKHi6LeUMQVULNxtvm5+kNAv
3tT9s1YRRX4xbi80h4iVqv/WqCpFZGyffJgdP0QmVlJ3HulRwkVKtUrS/mEy
/WipSKu1KvLXyORt9Rwmd/eCte2kKjr3epGZoGHiPl9jyP1QFWszqNt3XBsm
3+a9Lolzq+GP+e6TIjXD5LSZ+hqRXDUYn+2vDVw7Qoweqft5rVDHxOgSXxuJ
UWJi38D37YYGWDJO8/OsUWLJH/0wLE8DW01yIzI0R4ngw9vvt9VqIDXW4bbA
llFyfJsQbTOvJmxWJVW+PDtK/BbnGTZ4aCLDVUtKdXCU9Oq0Ug6ZacHpy/YS
3vdjxPGayaddNG0I3vhx9FjLGDFe0i7wR1MbOY6ey793jZF8If24BCtt8LaG
BxZwj5Obe/4oukRpI6W5YPWxNeNkeVLMp+IFOuhqpKd9uzdO9m8NLTo6pwP3
j30x+YETRH5L5FjxYj2IxQQSxfAJEnGVKUnT1EOBFf/fuLgJcrdp7eNYWz0I
1cpZeGdNkO3xKx4uuq6Hxx9s+BR/TZDukzrJP1fo4++7F4Fx2yZJLMmr3bPR
AMdehzp5KU4Rqehj9gcfrYNspxn/2GpOXfzb93537TpU8yx6FIwpEvVhknZy
ZB1WIHowYucUqcu7G6ZF1qOl4GpIStQUETRp7T7xeT0Ms+/fbvk3Rcae0QNd
hQlEb1S1Gr+YJsJBKWZHqoGX+ZGn3lVMk8KFI4e92oEjzZZM60/TRETZ8s75
UeC1+Ce3vT3TZP+OkqtTcoYIjGmZCFg+Q3rYuQLffA3x41yPRGbIDDHV6cnN
XGGEJ97CtsvMZ8mnm25t9VeN8T6RGphhP0t+8ybyXcsyRleF1B2jQ7NkrODD
gM9bY0hJKvd6nJ4l5LCk1X+zxggtMz1bljdLgr9cHvvqbAJ7sdNP3ZlzJELD
SjNvgymmng5Si6fnyFWR+vMWvBuRFHSkR2MHF16Zlz3369gMjdJFE+F7uHBZ
a8lXbR4LlC5I4/t+kPN9KjlZhGGB9uhOerQ3F3RqY7FknwVk7+7Z0R3BhaKL
23ps2yyQWGFVkVTEhc+XHjv0fbFErIj2bTEmN5r2S6Ul/duKM3dmrEf6uLF7
NNAgPs8a2zReHFMd5obo9wi6aJU1ZMtOXHaa5IZP82zv9VZrFPzs+fiRjwcR
TxhonLfG0IoWqwxZHvw7Uqo7vNkGTo/ztjhv44HGgtRFtR02MMz3NG9+yoOk
2dVpkvTt4KpvRxGbFxHHNuSeeGUPBR/ngO0qfFB9nJ5712gPOkev2QsV82PZ
oWuPVOlO2PzL/WTsMQEsDlXvKdvrjK2dMaqysoLY23mvvLLLHT2vnEKqMoQg
qM63+7GtF9RFP8sY7xNBauKCZ+bixyFIRg+0DS/G4iWvZG4Z+2Bjv+M4044C
77BdU7MefrhNO1t/2oGC9sovNl0+fhhZm57VtosC4cK2M2+D/XA3ctol3omC
7xYNFiEX/DCleLN5kTcF2a9cn2am++Gx09f8gUgKzu+vOibQ7QdK877gl6UU
FCg9Zpzc5w/n+XAH6QoKFhwM25Hj7I8ihWztgEoKzkj/OfXjqD/cfLn6NWs4
fW3mbNjKYH+UiyXtSf1CwdjA9+dBCf7w2fJzw4UxClSkBNJ6av3RXH6I21FN
FG6fy7536AdgwLBV6uQqUQRNvgpoIwFYWGalfVdLFC9NQ6i1pgHQLTFw6dIT
hYfvff171gGIK6R8OG4qCoakeMG8awCscosSovaKgnJxx4or8QF4k0rTKI7h
2HczPDzZF4Bv8pHm7VdEcfC97k2loQCMJs878V7j7NeQqG89HgD5ez1XzW+J
4vRg1NWL3IE4c7t0uvGhKJxhuD1fPBAbrnlU/i3nsFP5kup1gcg7X7GXPiqK
1VeqcsrOBSJtc/Wy8AlR5K2SMDseGYhE4bq6/mlRnEkIDZC6FIiQmO9mhTxi
YHnoPrBOCIRlwpS6PUUMSY+/pTg+CsTPBxrzUapieC6nvaD+fSAa3dbkD6mL
oXrxhm3THwNRpbrhxE4tMWSumR+QagxERpbFbwV9MRgK6MnhayACnjvXlpmJ
4f3Xg88Y/YFYXHnzzvgBMdyzylHdIMQGd0Tyzr2HxaBt4P2uZTEbI5sfUV+7
iuF05MpgDzE2Wmqeh8d6iSGY7rPIX5KNlM91XitPikFHoNGJrsiGQZcADiaI
QSL8VF8p2FiZtmTq7Q0xRDw9zf/emA26u0Suxh0xTLj/nfpgxgbfX5bSXKoY
nFUMnJ9ZsvFxdAPl+lMxxDel/13mwIYzn297TQ3Hv7knisyjbEjJvW2a/iSG
7WufdHh5sVGjJ1Or1CiGONekk3nH2ND1eF185osYNKsbjZT82OCvF7+h+0cM
VrVFzemn2Cjoc4s92CuGFWT95hchbHjyv4yI+SsG2irfiKIzbHzWdw7oGRGD
6/tTbo/D2Ei9+8zuNjcVNjnvgpUvsuFQILilegEV5Gmy0sglNoQb9ppMLKRC
ddOPK88us+GzcOFqm8VUJDsPJTGvsmHiuYPCL02FXs2o17UbbEyEpy9cLUuF
A/fGHrlbbDxOmp/bx6Bibubq0ru32aA1PujPV6Ri17Loc+FJbHSunXh3VJuK
CHOtiKH7bCTYWZYnrqFC5Uu0r14aG5Zed/MrDajgdz0m6PeQjdx7m9IYhlT0
LlBRbk5nw7Xo5p2tJlTc9S/JnnnMxvLPA/FBG6kIy9zTtiyTjdBF1881bqHC
8kqUtF42G3qs/mAeayoc/5NaufYJG33rDH1Wbefs9zz7m04OG9u9u50iHDms
sElWLJcN+SZ9rHehostOc/zwczaaB6LXuLtTEXv308CKF2xcEPypfu0oFeMD
A2e/cnhkfaTM4Akq6lrnTqwuYCNtxzearD8VBU6Paj9xePcxLWELNhUGtVvL
XQrZqEhpnUoJoWLbaVt3dhEbAS/Vhz6dpcJpdbbsOIfVms90z4VRcSBzzuVI
MRvtg5/bVSOp+LDwk2kTh+OEVJsdojnntSh7bvCSjU0rTteei6GiPeBY8VUO
z2yof5NzhYqbYVH2fzic7aD48ns8FRP7ys5olbBx8HhQnnAiFYNd7w19OKyr
9S1P+RYVXw+InH/MYcEhPDO7S8Wl7ITcNg5/fZL87GAyFfYixpULSjn2jvE/
D7lPxf3Ff0rkOXxW0+35rYccfuB+ex2H7Qernxc8puKjYp6TJYeVn6i/aMqi
In5tvvB2Ds94X34xkkPFkj6vm7YcrtUYeSH6jJOPd1pELTh8b8A+Xz2fCp1l
cx4GHPbLzs+3KKIiyK8vg8Fhc+/lBa4lVMTpFjZwcXi5xumCc+VUBGue/9HE
Oe/Avx8F915T8fBmQMN9Dr/KMiksqeKcZ1F+xlEOx3s9KGyrpsLd+eRRNQ67
rRIsmqyhomKai9bBua91/zyKJOo4evAMS7rMYUpWbdHqRs75indI6HG4w1Or
eFszFcVGb45/5sTjmfrV4qNfOOtzVJ57cDjy73hx5Dcqlkr+6pjixFPDs/hl
RScVVsVcE3Oc+POq00t+/Kais8as3YfDn/vPlMz1UCFy+nHOT06+BB/dVKo3
yNHf8sGl9/PZsFqZXmo3QsWFi//Spzn5xuwXKTs+ToVJmqWaOYffetSXPZ7l
6O9Yzkj1MzZuqumWv+WioXmt+AZuDnv3JZR38dJA+Rnpp57HhoTH3ld0zpxU
uf/pc++nbHSrlr1aL0JD2NupsnMcPRT1siocKTSsUTv1MpajF6cj3RVxEjRo
6eRcjstiQ0fV8vUTSRqyCzTdIzh6E+jNfF2znIb40Ug9vww2stx93giwaLho
8qJgDUevM27zlcGraJBIoR135Oi9Vtmp6roWDR1mphJLUjnx7q6oeqZDw61z
v18UJnPi6xb5dmAtZ/1K+7mZu5x4uYpXH9pEg0e9SYYcp96sclGtsTzA2U/M
oKYrmo1vbnJeGYdoqIvamDESxdGnB5Wy2JWG8IBBg8kIjn/Hpq1rPWmwbLni
3nWOjeTg6kbrYBpaH4Y5WJ9kY2nska/212jo/veEfcSdjTdx+049T6Qhdc8v
u18unPp3zVZu2W0ahL25+e0Ps/Hp5toDLSk0RN1u+ie9n42oB0K/duXQYLx1
i56BHRvzRel9+z/QENLTufLVejYyS+5El32kgX/38JN0A049KL+izmzgrO8o
NYhaw0Z+ZZB3RysNW3gbXVZpsnGizmLk8B8aeCvPXRSWZ+P3795pd15xHBLh
ZcgIcO5PTE3IV18cbypSK5+85fTno0e7b6wTR5tEZsPb14HIrMysLCfiGJBc
xW4tC8TFYM1Qipk4ijX6bv7K5/TfLt3ZdBtxJPD13k9+GIh3+Yb/fh4Rx3/6
BovLwwPxev+O+m23xeHy9qJP8oZAaBcmPPFPEsfR4hMjjfqBSBFvvXQ7RRwp
6bOR3DqBCH2327LvkTi0YreKmKgGwkjb6XX4c3Ekf97ww29pIEoXHn3+8qM4
hG2V0q/9DUBh5pkbarwSEFnQvqDrWgD4Le2krvFLIL4wbvbd5QBYdyte5xaU
wNf2f2FpUQH4zfoQ/5kigUq5gUNbTgeAen1pbIisBM4X/eAizgE4cvbx+QZ9
CUS/uXOwUisA0g6ffYO9JbB7pOLIjTf+COJW2fb+qwQoasftm1r90GUi1Kzw
QwIOO72sDer9sO18377/OiUwE/qo7lq1H+SXZHnp9kogMSo11KjID++Xa1+6
OyGBp6sHvXfc8oOs3oYaH+pSaGSbVZ7b64dyTxtLGfOluFva0qn41ReCbexN
nrlL0S9fbb3igw9+3WfE3QleBuUFq599yTiOOCXJBfl2kshV148xMPFGTKJz
5QG6FGbsFB/ULPCAY9yeGuHfUnAped0tXOKCCZPUyTsvpeEx6x6/8OhBdPwy
CigPXw5LhUsj/13Zh3vrNaU/HJDBkvHn9qIZDijfKnh2+pAMHNUDUmyvOuDn
vo4eZVcZyKJYMPWkA1hnrhaEecqgg+HO9N3qgJQ3kzsRJIMBb6WwdwM7kGpV
nvA0Tgb+MtHqm/V2IO2ArURipQzcxUUSEuvskHHOV9RlpSzECi0PQduW00/3
nDmnIYtXEX9cH9BtoTZiMpy8WhYabnn3lovY4pETrbFdXxZO/Lrpml02SCNP
ExzNZDE411HOd90GKZMDclv3yYK37GWoLbcNEo96qOtclsUh6wMSXm3bEG53
0IJ3VBY/8t5rZvpv4fzXte0+PCGL8bTeltTtW1BkbudZOS2L4Cu8z4s0t2Bo
/cbLUTxymA6lf9/YZ4ndCqpNVIoc1CsFL9Q5WUJrfMhJXlUOEukzJpl2FviW
cIZtekAOtwZUKCwbc0zGTkc9OCQHqR0brP5omYMW7XNrkascwmvCpaqp5jD/
z7n0g6ccfgRfWt7duAm5bpv57YPlUCypsfbcrk2INBCLdb4mh+08M8s1PTZC
py3pYfgHOVwhzPy/90xBUXedyPooh7NPCwXoEaboO62+sbleDg+z+U64eZki
hVXYqdQqh4RNvodM1pmCdqRB7l2XHORNX9pINplgKpjXgp+Ljsjz2fzaoiZo
EdIt2yRJx/Fdip8/xhvhjfb1P21SdFjs6lvdd9oIuXtmlhxbTkdvUQe/rJsR
YrLK916Xo+PTit2fK9YaYZOt1Uz3Cjo+Ll55V+anIV4kuq6J0qIj0dZ14p+W
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
rfaQdq76Rf4HBZFrVA==
        "]]},
      Annotation[#, "Charting`Private`Tag$119008#2"]& ], 
     TagBox[
      {RGBColor[0.560181, 0.691569, 0.194885], Thickness[Large], Opacity[1.], 
       LineBox[CompressedData["
1:eJwVl3c81f8Xx+1k1OVeMsIdsgkhND7HLFFCJG2VlVWZl8q3REhJkjSFUmYi
Wd1DiiLKyEglpKyy9/jd31+fx/PxOY8z3uf9OufzoTn72J7g4uDg+MrJwfH/
571zznxax2O2/o1rj+DgGGFVNVGt9lLdifmda3T45UZYy+9eX6RSg4mGsWPC
27aOsO5hrBwvNYq4e5sn9eTZEZbnFn+vabnbxIylnZDT0girad4tYUTuKfH2
5fSIlOAYa8XXbsVhuWIiN8OVxLKdYLVhuf/Qn2IiIeOx2uHgCdazx0lvBp+X
EBNm2x2MH06wdp3edXjApIxQlnDxafo7wUpcWZL425VFWA8RCmrXJlmid2u4
RlsriaaNv+so36ZYKR8enBqUe0+8+5z4oCZvljWRVKjy48p7Ikx8e8Tj3lmW
uWttT+PseyJ8Oi63R2KONcQ9bV/S9IEovhC04dyFOZb+ll2GUZF1xOnGFpKZ
0zzrU+4Cl+K/BkIncdA2fe0i6/wHtR1ah5uIs13wIjmIAzOeFylk3mwidP/p
akvf5sDGJGPudXVNhNCd5KqWYg6Ud3UskzBoJugPl6/OzXPgB+5wDQ5yCyGw
Nb5S6CInim/5Ktrw7guhaGHskn6XC3Nyo756anQQRL2a4C4OXhwQHbiy42gH
4f3OOVdCgRcVA3ZsVUroIFb7id2hWvHiw82CKT2zHYSCRWZKfxIvxr+/4uL0
9iuRfrlm2F2XDwN6ro1uO/CNSAjQa/RlrsAHgrUXRcy6iH9Hhq6IbxTArVtC
DoQd6iKU7jXb658QwE5vVd1/gV2EPmX1n0c3BFCiMaav7lkXMbxfY9xuVACv
J1lZXCb9JDI2l13SzBPEi+vqVy1//UksD9/mUNssjK7E59tDp3sIU/d1iVzb
ScjxaKrka0wPUZgiGRZwjIRJPGs7P6T1EC8D9PLJ50lY895F9umXHkJlJ6ny
w0sSKu1ZeHTCsJcIsg4+qqUkgn/cFLO+c/4iDpkvfFpNFkWP+LOvP8X1EcrV
NvdvClCQa/LRD9bTPiJ9HWfKXVUKJu+t4cit7CN2Gab8brKi4Ie1ZJPYiT5C
GvrVm69RUPVJRrWF429Cs++VAl1CDIdKmz5Vyv0hGsffFytpi6P3L+Wegpx+
Qs75+Gh8rAR2HWrnr3jfT+Rdvxri/0oC7doua3zs7Se22Kxdmdwjgfq1v4N/
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
Qljj
        "]]},
      Annotation[#, "Charting`Private`Tag$119008#3"]& ]}, {}, {}},
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
   PlotRange->{{0, 10}, {-428.0205199466376, 428.0205199466376}},
   PlotRangeClipping->True,
   PlotRangePadding->{{
      Scaled[0.02], 
      Scaled[0.02]}, {
      Scaled[0.05], 
      Scaled[0.05]}},
   Ticks->{Automatic, Automatic}],
  DynamicModuleValues:>{}]], "Output",
 CellChangeTimes->{
  3.759321706010496*^9},ExpressionUUID->"dcf151c0-7f6c-4981-b120-\
bc9ab2dc982a"]
}, Open  ]],

Cell[BoxData[""], "Input",
 GeneratedCell->False,
 CellAutoOverwrite->False,
 CellChangeTimes->{{3.759321672926302*^9, 
  3.759321710110765*^9}},ExpressionUUID->"50af3157-d58f-4a32-b585-\
1d8148dfc0a9"],

Cell[CellGroupData[{

Cell[BoxData[{
 RowBox[{"gaussianWavePacketFig2", " ", "=", " ", 
  RowBox[{"pp", "[", 
   RowBox[{"2.99`", ",", "0.87`", ",", "2.98"}], 
   "]"}]}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{"(*", 
   RowBox[{"DynamicModule", "[", 
    RowBox[{
     RowBox[{"{", 
      RowBox[{
       RowBox[{"omega0", "=", "2.99`"}], ",", 
       RowBox[{"sigma", "=", "0.87`"}], ",", 
       RowBox[{"tRange", "=", "2.98`"}]}], "}"}], ",", 
     RowBox[{"Plot", "[", 
      RowBox[{
       RowBox[{
        SuperscriptBox["\[ExponentialE]", 
         RowBox[{
          RowBox[{"-", 
           FractionBox["1", "2"]}], " ", "t", " ", 
          RowBox[{"(", 
           RowBox[{
            SuperscriptBox["sigma", "2"], " ", "t"}], ")"}]}]], " ", 
        RowBox[{"Cos", "[", 
         RowBox[{"t", " ", "omega0"}], "]"}]}], ",", 
       RowBox[{"{", 
        RowBox[{"t", ",", 
         RowBox[{"-", "tRange"}], ",", "tRange"}], "}"}], ",", 
       RowBox[{"AxesLabel", "\[Rule]", 
        RowBox[{"{", 
         RowBox[{"t", ",", 
          RowBox[{"Style", "[", 
           RowBox[{
            RowBox[{"Re", "[", 
             SuperscriptBox["\[ExponentialE]", 
              RowBox[{
               RowBox[{"-", 
                FractionBox["1", "2"]}], " ", "t", " ", 
               RowBox[{"(", 
                RowBox[{
                 RowBox[{"t", " ", 
                  SuperscriptBox["\[CapitalDelta]\[Omega]", "2"]}], "+", 
                 RowBox[{"2", " ", "\[ImaginaryI]", " ", 
                  SubscriptBox["\[Omega]", "0"]}]}], ")"}]}]], "]"}], ",", 
            RowBox[{"FontSize", "\[Rule]", "14"}]}], "]"}]}], "}"}]}], ",", 
       RowBox[{"PlotStyle", "\[Rule]", "Thick"}], ",", 
       RowBox[{"PlotRange", "\[Rule]", "Full"}]}], "]"}]}], "]"}], 
   "*)"}]}]}], "Input",
 CellChangeTimes->{
  3.759321472708603*^9, {3.75932152424936*^9, 3.759321550344369*^9}, {
   3.9019164061766157`*^9, 3.901916411452429*^9}},
 CellLabel->
  "In[476]:=",ExpressionUUID->"29a32ee9-5612-4181-af4d-e3927a00d08b"],

Cell[BoxData[
 GraphicsBox[{{{}, {}, 
    TagBox[
     {GrayLevel[0], Thickness[Large], Opacity[1.], LineBox[CompressedData["
1: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
       "]]},
     Annotation[#, "Charting`Private`Tag$161658#1"]& ]}, {}},
  AspectRatio->NCache[GoldenRatio^(-1), 0.6180339887498948],
  Axes->{True, True},
  AxesLabel->{
    FormBox[
     TagBox[
      GraphicsBox[{
        Thickness[0.14903129657228018`], 
        StyleBox[{
          
          FilledCurveBox[{{{0, 2, 0}, {0, 1, 0}, {1, 3, 3}, {1, 3, 3}, {1, 3, 
           3}, {1, 3, 3}, {1, 3, 3}, {1, 3, 3}, {0, 1, 0}, {0, 1, 0}, {1, 3, 
           3}, {1, 3, 3}, {1, 3, 3}, {1, 3, 3}, {0, 1, 0}, {1, 3, 3}, {1, 3, 
           3}, {1, 3, 3}, {0, 1, 0}, {0, 1, 0}, {0, 1, 0}}}, CompressedData["
1:eJxTTMoPSmVmYGBgBGIDIGYC4pC3lz/OeCjmcAYEeLQd0tOA4JggnN8f0e3P
OEHYwecEu+3sUD0HBhBYIOyQClKXhuDrKMp/ySlD8E8cdlqbWYfgp8TecWPe
oQcxr0DY4eiuHb1sF/Qc1gvp8KXLIfjRqhEy5/YIwfmV93/cMu4WcpizSHnn
n+N6DuqfVF7O0hRycN9fK2vRrucwYyYQRPJD3PNMx6EPbD67Awtnl3yyn7bD
TLA8s4O+1krhCyzaDtyOfF4zNBkcfrx9fcDysJYDq/4vrks9/+wDbknXJE5C
8Lc7ND06boHgy8yL0zxtgOD/BwF5LUg4nflnD3Yfu5bDl30ft6Zf43CA8cHS
Pv/tu208d6U5KcLVv1+0XuHsDwVU8+4rOLSI17JmHvtrzx8bcN9ouoLDdq8N
FnMqf9vv797XZOIs75A9NaHQovin/fZgq4j/7LJwPtj/bTJwPiRcpeH2gcNJ
UgrqPiYHGP86722x1G0ccP6L2sfZ59/wOEDShbTDm7bcbqNqIYcPIPe+UICk
j2WCDvdd4x1nKUL9w8PrsAZkn52cw/Jbyx8bMnNDzLOUhZj/jQPOD3jiecn0
MjucD9HPDrFnN4IPDo96OTi/F5wO5VDl58tB3KvD7vAA5J6Lcg6tCuyqZ0wE
4eEPTg8TxOB89PQOAEDAWyM=
           "]]}, {
          Thickness[0.14903129657228018`]}, StripOnInput -> False]}, {
       ImageSize -> {6.710834371108343, 21.12078704856787}, BaselinePosition -> 
        Scaled[0.31887090512778543`], ImageSize -> {7., 22.}, 
        PlotRange -> {{0., 6.71}, {0., 21.12}}, AspectRatio -> Automatic}], 
      HoldForm], TraditionalForm], 
    FormBox[
     TagBox[
      GraphicsBox[{
        Thickness[0.005354465624330692], 
        StyleBox[{
          
          FilledCurveBox[{{{1, 4, 3}, {0, 1, 0}, {1, 3, 3}, {1, 3, 3}, {1, 3, 
            3}, {1, 3, 3}, {0, 1, 0}, {0, 1, 0}, {1, 3, 3}, {0, 1, 0}, {1, 3, 
            3}, {0, 1, 0}, {0, 1, 0}, {0, 1, 0}, {1, 3, 3}, {0, 1, 0}, {0, 1, 
            0}, {0, 1, 0}, {0, 1, 0}, {0, 1, 0}}, {{1, 4, 3}, {1, 3, 3}, {1, 
            3, 3}, {1, 3, 3}, {0, 1, 0}}}, {CompressedData["
1:eJxTTMoPSmViYGBQBWIQbaC1UvgCi7qD9Lw4zdMNBg4snF3yyedUHWwrI1aY
9ho4zJjAX2WmrerwZeetrr9bDRxOHXZam2mnAlHvYOjgvubocoYIaYeZIOBp
6rBWSIcvfZ48RF2dqcNtTdk1/w8rOEwILlGZvt7U4YFrvOOsi4oOL7K0v02X
NXPgjw24b3RdySEl9o4bc4eZQ7eN5660ImUHE2MQMEflf0bwD7UtDz+1yAJi
P4eyA5ebaimTlaXDHZB9xkoO/0FgvaVD+eFtrjP/Kjh82BCQPSvcyqE3otuf
cYOMw59vpQ/mHLRy6APzxeB8sSaZKQbBX+zR+T4XJ8b8K7ZyiFGNkDm3h9lh
yf19fHOCrRyW3Fr+2JCZ1SE9DQjUEHxIuFrC+eDwlDWC87eY/ziUcsoAbp7G
W959BjMN4PbB4gPGBweHsYFD0NvLH2ccFHNA58PUg8PjhqDDbemaRKOpBg4H
u/c1mTALwu2D8cHh894Qzj9QK2uRLmLq8GXfx63p00QcYhQcPybLmELC+5Ei
3D5YekHnw+wHAJ3r8sg=
            "], {{4.25313, 25.592200000000002`}, {4.25313, 
            26.03909999999999}, {4.4281299999999995`, 26.167200000000005`}, {
            5.06563, 26.167200000000005`}, {7.059380000000001, 
            26.167200000000005`}, {7.984379999999999, 25.481299999999997`}, {
            7.984379999999999, 23.981299999999997`}, {7.984379999999999, 
            23.184399999999997`}, {7.649999999999999, 22.5156}, {
            7.074999999999999, 22.2125}, {6.3421899999999996`, 
            21.796899999999997`}, {5.784379999999999, 21.7016}, {4.25313, 
            21.670299999999997`}, {4.25313, 25.592200000000002`}}}], 
          
          FilledCurveBox[{{{1, 4, 3}, {1, 3, 3}, {1, 3, 3}, {0, 1, 0}, {1, 3, 
            3}, {1, 3, 3}, {1, 3, 3}, {1, 3, 3}, {1, 3, 3}, {1, 3, 3}, {0, 1, 
            0}}, {{1, 4, 3}, {1, 3, 3}, {0, 1, 0}}}, {CompressedData["
1:eJxTTMoPSmViYGCQA2IQPX0Cf5WZtJGD9Lw4zdMXjBwaWY72G4YbOmwx/3Eo
ZZahw+cNAdmzlhs4+F+cGPNP2dBBX2ul8AUXfTjfxBgIinXhfNEer1csIjpw
/XMWKe/8o67tAFJm3GzkkJH/ofXkFC2H04ed1mbKGTucvxr2Rj9ay8EAZO4S
Ywewe7y1HCLEt19kmGfiULxV9PdpPiM4/yRI3ztDiDuXmzp4n2C3nX3U0OFF
lva36bJmDv3BJSrT4w0dCtZ0385YYAYx94kBxJ3G5g7qb3n3GWgaOGiA6E5z
h/iQIPUFK/Xg/D/fSh/MEdRF5U/UdpgAMtfeHNW9W8wcNunlLWa8owGxn9fM
QW75Cw+9/+oODk2Pjs94bQLnnwGBOcZw/kwQyDSE+xccXlwGDjqK8l9yvunC
+WD/1xnA+aDgNdkI1ffbwCFawfFjcowRJPw3GzmgxycA97PKLw==
            "], {{13.178099999999999`, 21.128100000000003`}, {
            13.354700000000001`, 22.371899999999997`}, {13.8969, 
            22.960899999999995`}, {14.8688, 22.960899999999995`}, {15.8422, 
            22.960899999999995`}, {16.224999999999998`, 22.5156}, {
            16.431299999999997`, 21.128100000000003`}, {13.178099999999999`, 
            21.128100000000003`}}}], 
          
          FilledCurveBox[{{{1, 4, 3}, {1, 3, 3}, {0, 1, 0}, {1, 3, 3}, {1, 3, 
           3}, {0, 1, 0}}}, {{{27.012500000000003`, 1.7515599999999996`}, {
           24.4938, 6.29688}, {23.8078, 12.898400000000002`}, {23.8078, 
           20.2656}, {23.8078, 27.6328}, {24.4938, 34.2344}, {
           27.012500000000003`, 38.77969999999999}, {26.790599999999998`, 
           39.59379999999999}, {25.928099999999997`, 38.014100000000006`}, {
           22.1969, 33.468799999999995`}, {22.1969, 20.2656}, {22.1969, 
           7.062499999999997}, {25.928099999999997`, 2.5171900000000003`}, {
           26.790599999999998`, 0.939063}, {27.012500000000003`, 
           1.7515599999999996`}}}], 
          
          FilledCurveBox[{{{1, 4, 3}, {1, 3, 3}, {1, 3, 3}, {0, 1, 0}, {1, 3, 
            3}, {1, 3, 3}, {1, 3, 3}, {1, 3, 3}, {1, 3, 3}, {1, 3, 3}, {0, 1, 
            0}}, {{1, 4, 3}, {1, 3, 3}, {0, 1, 0}}}, {CompressedData["
1:eJxTTMoPSmViYGCQA2IQXf/bquAcg6OD9Lw4zdMXjByKt4r+Pj3PwWGL+Y9D
KbMMHdZ0385gcHdw8L84MeafsqEDWH2HPZz/HwTm28H5+SANH2zh+sF0la2D
MQg0GzlIgOwxsHU4fdhpbaacsYMPSJ+wrYOB1krhC0uMHTbo5S1m5LF1iBDf
fpFhnonDG959BjN/OcD54lOvcGa8cnBoZDnab7jcFCJ+zcHhRZb2t+myZg6/
Y3KP/lvk4FAAcscCMwfvE+y2s1MdHEzADjB3OK5pNek0u4ODxlugwZ3mDlMn
8FeZWdvD+U8TF14zybdD5a+3dZgQXKIy3d4c1b1bzBz21spapIfYQOznNXP4
svNW19+n1g4OTY+Oz3htAuefAYE5xnD+TBDINIT7FxxOXAYOf76VPpjz0A7O
B/vfyAHOr4hYYXr2tIPDdJC7fxs4JB6+rJ2q6AgJ/81GDujxCQBVM9n2
            "], {{29.078099999999992`, 21.128100000000003`}, {29.2547, 
            22.371899999999997`}, {29.796899999999994`, 
            22.960899999999995`}, {30.768799999999995`, 
            22.960899999999995`}, {31.742199999999993`, 
            22.960899999999995`}, {32.12499999999999, 22.5156}, {
            32.33129999999999, 21.128100000000003`}, {29.078099999999992`, 
            21.128100000000003`}}}], 
          FilledCurveBox[CompressedData["
1:eJxTTMoPymNmYGBgBGJFIAaxQYCJAQEYkWhmJDWMZKrBpR4Xmxj1xNg1UH6h
RD0AVMICSw==
           "], CompressedData["
1:eJxTTMoPSmVmYGBgBGIbIGYCYgXHj8lnYp0djMHAwMHi2tFckx8uGPzCNd23
MwoMHGp/WxWc24HgM4DABBeHv99KH8zZaOBQB5IPcHG4LV2TaJRq6JDD+XNB
urezg9cJdtvZrSYOZ0Dgi7PDk8SF10zyzRwcmh4dnyHt4vAiS/vb9LtmDiEl
KtP/R7g4lGwV/X1aztzhwT6+OcazXBxMQM5RRvALQPYnmDuc0LSadDrcGYMP
U8+6eJIV41RnB9UnzfPOSpk7JBy+rJ260tlBYuoVzgwmBF/jLe8+g5NmcD6v
//opqTPMHOpB/png7HDqsNPaTDszB1h4gf19wBTi/mBnh0aWo/2Gy00h9lo7
O0SIb7/IEGfq4K5ayjRLwdkhBqSRx9Rho17eYkYWhLw6yF2nnCD2c5o56E5Y
8MNwmZOD38WJMf8mI/gw98H4MPeDzT/gBA+vSJC5/5zg/ofxYeGz81bX39Rw
Rww+TP3F/Hj2c5kIPkgZw3IE//OGgOxZxx0h7n9nBpFnd4Lw9cwcikHuOAZ1
3yNjB32Qe+85OkjPi9M87WAICc8FjhD/zDRw2F8ra5He4whJFzUGDsGg+Pdw
hKcvGB+WHsH8AicMPkz9fxAwR/DB/pN3cjDQWil8oQXB53YDBtwuBF8c5N5L
Bg7yoPjVdXLoBxnMbwhJ/x5ODt1er1hMEg0h6eOlk8MXUDiEG0PCZbEzJF5l
oOl9NTQ/MRtCzF8PTX+vDOB8mH0wPjhcOgwcekD2LHR24AGlvwoDeHqD+Qc9
vwIAzIuMDQ==
           "]], 
          
          FilledCurveBox[{{{1, 4, 3}, {1, 3, 3}, {0, 1, 0}, {1, 3, 3}, {0, 1, 
            0}, {0, 1, 0}, {0, 1, 0}, {1, 3, 3}, {0, 1, 0}, {1, 3, 3}, {1, 3, 
            3}, {1, 3, 3}, {1, 3, 3}, {0, 1, 0}, {0, 1, 0}, {1, 3, 3}, {0, 1, 
            0}}, {{1, 4, 3}, {1, 3, 3}, {1, 3, 3}, {1, 3, 3}, {0, 1, 
            0}}}, {CompressedData["
1:eJxTTMoPSmViYGBQAWIQXfvbquCchavDpw0B2bPKzRxMjIHA29XBsenR8RnV
Zg4Jhy9rp0Yi+BURK0zPZiP4PV6vWEw2Ivg7b3X9Td3v6nCwbXn4qSA0/iRT
OH+rA1CDhQ6cf3zXjl62CVoOISUq0/+vcHXQUZT/kmOm5eCqWso0y8DVoYXX
f/0UVgS/GuTgKk2HeTY6V2bJuWPw16s+aZ7Hq+Ug9MnxfFqrm4PPCXbb2aJa
Dn9ico/+y3KD2FeA4P/5VvpgTqEOnM/tBrRol4GDxNQrnBmb3ByMwcDAIYfz
54L0x24OW8x/HErhMoD439Idzl/2wkPvv6YHnC/v+DH5zFMPh8X39/HNuWwI
5y8B8ZVN4PwXWdrfpsuaORRvFf19OszDQeMt7z6DTnOHOlD8THCH82H+g/HP
gMARN0i8KZvD3Z8GAm5mcL7MvDjN0w1Q/XFucP08wGBN/eAK0W9sDg//U4ed
1mb+M3OApQ8wvQPBh6UXABQAANY=
            "], {{44.83590000000001, 21.526600000000002`}, {44.83590000000001,
             22.0047}, {45.72809999999999, 22.5781}, {46.462500000000006`, 
            22.5781}, {47.6422, 22.5781}, {48.423399999999994`, 
            21.367199999999997`}, {48.423399999999994`, 
            19.517200000000003`}, {48.423399999999994`, 
            17.746899999999997`}, {47.6422, 16.551599999999997`}, {
            46.49379999999999, 16.551599999999997`}, {45.74379999999999, 
            16.551599999999997`}, {44.83590000000001, 17.124999999999996`}, {
            44.83590000000001, 17.603099999999998`}, {44.83590000000001, 
            21.526600000000002`}}}], 
          
          FilledCurveBox[{{{1, 4, 3}, {1, 3, 3}, {0, 1, 0}, {1, 3, 3}, {1, 3, 
           3}, {0, 1, 0}}}, {{{58.51249999999999, 1.7515599999999996`}, {
           55.99379999999999, 6.29688}, {55.307800000000015`, 
           12.898400000000002`}, {55.307800000000015`, 20.2656}, {
           55.307800000000015`, 27.6328}, {55.99379999999999, 34.2344}, {
           58.51249999999999, 38.77969999999999}, {58.29059999999998, 
           39.59379999999999}, {57.4281, 38.014100000000006`}, {53.6969, 
           33.468799999999995`}, {53.6969, 20.2656}, {53.6969, 
           7.062499999999997}, {57.4281, 2.5171900000000003`}, {
           58.29059999999998, 0.939063}, {58.51249999999999, 
           1.7515599999999996`}}}], 
          
          FilledCurveBox[{{{0, 2, 0}, {0, 1, 0}, {0, 1, 0}, {0, 1, 0}}}, {{{
           68.15309999999998, 19.8516}, {68.15309999999998, 20.7453}, {
           59.989099999999986`, 20.7453}, {59.989099999999986`, 19.8516}, {
           68.15309999999998, 19.8516}}}], 
          
          FilledCurveBox[{{{0, 2, 0}, {0, 1, 0}, {1, 3, 3}, {1, 3, 3}, {1, 3, 
           3}, {0, 1, 0}, {1, 3, 3}, {1, 3, 3}, {0, 1, 0}, {0, 1, 0}, {0, 1, 
           0}, {1, 3, 3}, {0, 1, 0}, {0, 1, 0}}}, CompressedData["
1:eJxTTMoPSmVmYGBgBGJpIGYC4vbl4aeM9gQ5VESsMD372MlB22rS6XqWIIfl
Lzz0/msi+N4n2G1n8zo5bHj4cuomgSCH45pACXEnh/8gIA3ly0P58kEOG/Xy
FjOqODmkpwGBUZDD/X18c4yNnBwqQfY4BzmIT73CmWHl5BApvv0igx+Cv/NW
19/UZATfVbWUaVZOEESfNIIPlr/lCOfbNz06PqPaBs7X11opfOGLtcP+WlmL
9JQgh3qWo/2G060dpF8/MpMKgeovsnY4AwIuQQ7Ps7S/Tfe1dmgO9JzbYBbk
0OP1isXE0drh84aA7FncQQ42IAfYIvhgf/63cvjOFj/DRzUYgw9TDw6vKwjz
wO45EuTA4wZ0aBaCHw4KBz0bOB8cnvedHNDjBwD0B7mH
           "]]}, {
          Thickness[0.004781537802527308]}, StripOnInput -> False], 
        StyleBox[{
          
          JoinedCurveBox[{{{0, 2, 0}}}, {{{70.3102, 20.284}, {78.2801, 
           20.284}}}, CurveClosed -> {0}], 
          
          FilledCurveBox[{{{0, 2, 0}, {1, 3, 3}, {0, 1, 0}, {0, 1, 0}, {1, 3, 
           3}, {1, 3, 3}, {1, 3, 3}, {1, 3, 3}, {0, 1, 0}, {1, 3, 3}, {1, 3, 
           3}, {1, 3, 3}, {0, 1, 0}, {0, 1, 0}, {0, 1, 0}, {0, 1, 
           0}}}, CompressedData["
1:eJxTTMoPSmVmYGBgBGJFIGZigIKKYIfeiG5/xg+yDpw/F6Rvzgp2CHl7+eMM
RzmHF9vXMz93CXZYL6TDlz5PyiE29+i/TebBDmdAgEfKQd7xY/IZTjS+aBCc
/50tfobPwSAHYxBYrOQg/fqRmZRMsEPNpw0B2bNUHZ6IyJ586hzs4LG/VtaC
XQPO9784MeZfsxacL9Lj9Ypliy7EvI9BDiDl6SIGDuIeAX8k2hH81d23Mxj8
EXxrnSuznkkGOficYLedXarv0L48/JTRl0AHFs4u+WQ9PYerR3NNGi4HOmx3
aHp0XEIXIn8k0EEUZJ+IjoPqk+Z5ZzcFOhzftaOX7YKmw+JJVoy+JwId3EEW
LNd0yI9nPyf5MRDi/uM6qP4/owtRH4PgR4hvv8iwCcEH2/cmyOH81bA3+r+1
4fz1IIt9NeF8qXlxmqcvqDl0A51lsjfIYSYI3FR2uA5yf3qQQ7eN5640JkUH
BZD9GwMdvuz7uDX9myicbwKOAFGHiogVpmftg+F89PgHAEjR4LM=
           "]], 
          
          FilledCurveBox[{{{0, 2, 0}, {0, 1, 0}, {1, 3, 3}, {1, 3, 3}, {1, 3, 
           3}, {1, 3, 3}, {1, 3, 3}, {1, 3, 3}, {0, 1, 0}, {0, 1, 0}, {1, 3, 
           3}, {1, 3, 3}, {1, 3, 3}, {1, 3, 3}, {0, 1, 0}, {1, 3, 3}, {1, 3, 
           3}, {1, 3, 3}, {0, 1, 0}, {0, 1, 0}, {0, 1, 0}}}, CompressedData["
1:eJxTTMoPSmVmYGBgBGIDIGYC4iOXtVMl+UId0kCAzdzhQK2sRfqeEDg/pERl
+v8bIQ6qT5rnnV1l4RAhvv0iw60QB2MQ2IzgT5vAX2W2G8F/krjwmsl+BH+j
Xt5ixjsWDmu6b2cwXA9xSI6948b8wsLBRufKrGcXEfyKiBWmZ08j+Bsevpy6
6USIg9/FiTH/Hls4vOHdZzDzUIjD4vv7+OYctnBQA7lrVoiDCcg9n80drh3N
NWmIDnFoZDnab6huDpG3CnGQmHqFM4PJ3OEHW/wMH8UQhz/fSh/MeWjm8ABo
jLFUiIPGW6DBJxH8GAXHj8lzEHxe//VTUmcg+AwgMMEMYq801H3NZg4cPxek
b05D8Hu8XrGYyIY4dINoRSO4+miQ+X8M4eb9B4H3hg4SHgF/JMRDHByaHh2f
cdoQEj68IQ7S8+I0TwcYOoC0nWENcVj+wkPv/0EDOB/sn4UI/ucNAdmz3A3g
9qWD49MA4j4zBH9rS82FzakI/s5bXX9T20MceED+rTBwiM09+m/T8RCH/aB0
8cUQki52Qd0jYARJLx0hDv3BwITCb+gg8/qRmVRFiMPJw05rM89B9acj+KBg
nhmH4IP1R4Q4lGwV/X36HYIPDg95QzjfHxSeygg+OH1oGDoIfXI8nxYJdZ+J
oUOAnFiW72ZE+IPTL0conI+e3gG/xkT/
           "]], 
          
          FilledCurveBox[{{{1, 4, 3}, {1, 3, 3}, {1, 3, 3}, {1, 3, 3}, {0, 1, 
           0}, {1, 3, 3}, {1, 3, 3}, {1, 3, 3}, {1, 3, 3}, {0, 1, 
           0}}}, CompressedData["
1:eJxTTMoPSmVmYGBgBGJpIGYCYhudK7OeWYY5qDxpnnf2l5WDV3Wzvs+7UIfr
Qp8cz5tZOcTkHv236XyowxkwsHSIEN9+kWFVqIP0vDjN0wKWDrXrtiXVJ4ZC
xNeZOyg4fkw+Yxvq4HOC3Xa2qBmcnxJ7x43ZwgTO//ut9MEcQyOHq0dzTRqS
Qx3+gPgLDRxEgNam7Q11EJ96hTODSc/BxBgInoc61HzaEJBdpeOwtaXmwmbG
MIf0NCA4pu2gCnK3WZiDuc3eoGkHtRwkPAL+SDiHOfhfnBjzz1kbYt7HUIdU
kHo3XYg/roQ6+ILkk/UcvrHFz/DZGQpRn2wAkV8Q6uANcn+pocNMEJga6rBB
L28x4xojON8PbL4JnC8DCo8PphD3LAp1mBBcojLd3twBZG3aPmj42Vg4rOm+
ncFwO9SBy021lMnKEqL/JyJ8Ye6fARLfaeWAHj8AWovHRQ==
           "]], 
          
          FilledCurveBox[{{{0, 2, 0}, {0, 1, 0}, {1, 3, 3}, {1, 3, 3}, {1, 3, 
           3}, {1, 3, 3}, {1, 3, 3}, {1, 3, 3}, {0, 1, 0}, {0, 1, 0}, {1, 3, 
           3}, {1, 3, 3}, {1, 3, 3}, {1, 3, 3}, {0, 1, 0}, {1, 3, 3}, {1, 3, 
           3}, {1, 3, 3}, {0, 1, 0}, {0, 1, 0}, {0, 1, 0}}}, CompressedData["
1:eJxTTMoPSmVmYGBgBGIDIGYC4iOXtVMl+8Id0kCAzdzhQK2sRboNgh9SojL9
f0S4g+qT5nlnV1k4RIhvv8gQFe5gDAKbEfxpE/irzHYj+E8SF14z2Y/gb9TL
W8x4x8JhTfftDIbwcIfk2DtuzC8sHGx0rsx6FojgV0SsMD3rjeBvePhy6iaP
cAe/ixNj/j22cHjDu89gplO4w+L7+/jmHLZwUAO5SyrcwQTkns/mDteO5po0
3A5zaGQ52m+obg6R3xXmIDH1CmcGk7nDD7b4GT4Lwxz+fCt9MOehmcMDoDHG
s8IcNN4CDT6J4McoOH5MnoPg8/qvn5I6A8FnAIEJZhB7Z4dB3Nds5sDxc0H6
5mcIfo/XKxaTuWEO3SBa0QiuPhpk/h9DuHn/QeC9oYOER8AfielhDg5Nj47P
OG0ICZ/eMAfpeXGapwMMHUDazrSGOSx/4aH3/6ABnA/2z0IE//OGgOxZ7gZw
+9LB8WkAcd82BH9rS82FzU8R/J23uv6msoc78ID8W2HgEJt79N8m93CH/aB0
8cUQki6swiHuETCCpBeOcIf+YGBC4Td0kHn9yEzqR5jDycNOazPPQfU/R/BB
wTzzHoIP1n8jzKFkq+jv0+8QfHB4yBvC+f6g8FRG8MHpQ8PQQeiT4/m0m2EQ
95kYOgTIiWX5GofDwx+cfjsQfPT0DgBf/Uxw
           "]], 
          
          FilledCurveBox[{{{0, 2, 0}, {0, 1, 0}, {0, 1, 0}, {0, 1, 0}}, {{0, 
            2, 0}, {0, 1, 0}, {0, 1, 0}}}, {{{104.055, 16.2}, {
            99.59059999999998, 26.9953}, {99.3188, 26.9953}, {
            94.58279999999999, 16.2}, {104.055, 16.2}}, {{102.189, 
            16.870299999999997`}, {95.63589999999999, 16.870299999999997`}, {
            99.0484, 24.620299999999997`}, {102.189, 16.870299999999997`}}}], 
          
          FilledCurveBox[{{{1, 4, 3}, {0, 1, 0}, {1, 3, 3}, {1, 3, 3}, {1, 3, 
           3}, {1, 3, 3}, {1, 3, 3}, {0, 1, 0}, {1, 3, 3}, {1, 3, 3}, {1, 3, 
           3}, {0, 1, 0}, {1, 3, 3}, {1, 3, 3}, {1, 3, 3}, {0, 1, 0}, {1, 3, 
           3}, {1, 3, 3}, {1, 3, 3}}}, CompressedData["
1:eJxTTMoPSmVmYGBgBGIjIGYC4gSBCMstJ2IcNurlLWa0MXGA8Q/UylqkPzF1
ULj9sy6rJcbhhtAnx/Ni5g4mxkBQHePg2PTo+Axrc4etn/9eqYhE8Guz9pRM
Tohx2GL+41AKl7kDD5N2u1hljEMaCLiZwfkGWiuFL6iYwvmNLEf7Dd2NHe6o
sDVO1Y5xeJ6l/W36WgMHD5CCY9Fwvss2oIULEPwJb2vsTduiHUDOMmY2hPPT
QfZNQ/BPHnZam6ln7BCRYn3ffy+Uv84Ezo9RcPyYzGOKypcxdRC/ee578O5o
uHvXyESlWG9H8GHmw/g29/17p6ch+MfL9s2Xqke417zTMeHpgyg4f8XHS75J
MxB8e9O4XZ5TohwcQOF52hDOnwkClkZw/sG25eGnDpk4bJj7fvkx7mgHnxPs
trOfmjlcqXipZqgQDY8PcPj9i4Lz9e8CA/gvgl+QMfFtjXkU3L0w/pedt7r+
uhrB+fW/rQrOeRg6AG3zNo+MgoQvmwEkfA4j+OD4cYiG8wWaD5xamBrtcB2U
fpYZwvmqT5rnnV1lCA8vdD5Mvcg694dVKdEQ97Qi+NLz4jRPByD44lOvcGZc
MnDIFwJaUIiwH5yeTiP4pcDo0PeNgfNh6f3vt9IHcwyNHNDzAwDDDVS+
           "]], 
          
          FilledCurveBox[{{{0, 2, 0}, {1, 3, 3}, {0, 1, 0}, {0, 1, 0}, {1, 3, 
           3}, {1, 3, 3}, {1, 3, 3}, {1, 3, 3}, {0, 1, 0}, {1, 3, 3}, {1, 3, 
           3}, {1, 3, 3}, {0, 1, 0}, {0, 1, 0}, {0, 1, 0}, {0, 1, 
           0}}}, CompressedData["
1:eJxTTMoPSmVmYGBgBGJFIGYC4qWzjyhsMIpzWHx/H9+cYAuHrZ//XqnQjHNY
/sJD73+ihcPxsn3zpfjjHJ4kLrxmst/c4fnvlR8vscY5+Jxgt5291NyBJYxP
d9PTWDhf9Oa578HWCL5/7/Q8oc2xDvZNj47PmG3psOUE0MBPsQ76WiuFLyyx
ckhNAwK+OIfnWdrfptdaw/kb9PIWM8bYwPkzZgJBpa3D9+DHS2dfiXW4IV2T
aBRq53AXZEEXgm9iDATJCP5a94dVInaxEHPE7Bz2n1rouk051mFvraxF+hJb
h/VFGRPf8sRC9DnbOoiDPMQU65ASe8eN+YUNRP+3GIj7ZG0cWl4H7pBjjYWE
B78NxF2KsQ5XhT45nlezhft/KSj8Gm0dRNYBDchB8Fd8vOSbtALBl9C/q8J2
MdahN7hEZfp9Gzi/H8R/bw3n93i9YjERtHa4UvFSzXAD1H0cVg62pnG7PEti
HbjdVEuZuCwdfMw7HRO+xkDc994Mzj8DBmYOb4DOb+WOg/PR4x8A5jPjYA==

           "]], 
          
          FilledCurveBox[{{{0, 2, 0}, {0, 1, 0}, {0, 1, 0}, {0, 1, 0}, {0, 1, 
           0}, {0, 1, 0}, {0, 1, 0}, {0, 1, 0}, {0, 1, 0}, {0, 1, 0}, {0, 1, 
           0}, {0, 1, 0}}}, {{{134.25300000000001`, 19.8516}, {
           134.25300000000001`, 20.7453}, {130.61699999999996`, 20.7453}, {
           130.61699999999996`, 24.348399999999998`}, {129.725, 
           24.348399999999998`}, {129.725, 20.7453}, {126.089, 20.7453}, {
           126.089, 19.8516}, {129.725, 19.8516}, {129.725, 16.2}, {
           130.61699999999996`, 16.2}, {130.61699999999996`, 19.8516}, {
           134.25300000000001`, 19.8516}}}], 
          
          FilledCurveBox[{{{0, 2, 0}, {1, 3, 3}, {0, 1, 0}, {0, 1, 0}, {1, 3, 
           3}, {1, 3, 3}, {1, 3, 3}, {1, 3, 3}, {0, 1, 0}, {1, 3, 3}, {1, 3, 
           3}, {1, 3, 3}, {0, 1, 0}, {0, 1, 0}, {0, 1, 0}, {0, 1, 
           0}}}, CompressedData["
1:eJxTTMoPSmVmYGBgBGJFIGYC4v8g4J3kID71CmdGkpHDZd8kgQjXJIfrQp8c
z5cZOYRbbjlRZpTkECG+/SJDn6HD4gJbruvaSQ4zQSDT0MG80zHhqQiC//nv
lYqXsxLhfJDyxR8SHVJi77gxW5g4mMTt8uSRS3JYcn8f35zNpg6nF7pu+2yY
5MDlplrK9MoMzuf1Xz8lVcMCzs9f030744AlxDyOJAeVJ83zzv6ycki2vu/f
ezkRzi/OmPi2ZjuCrxHTf+jrnESHHq9XLCYLrRzUDTnWyHQlOjzP0v42/a+l
w1eQgspEh0Nty8NPFVlC5IsSHQpB9n2wcDiisKEoIzPR4eRhp7WZ58wdooHG
aZQkQty7y9yBtXGqc3dHogM3iO9lCff/GTCwdJgvpX9XZR+CD/LO3xcIPtg+
tiQHv4sTY/49toDzbSsjVpj2msP5JVtFf5/2M3MAeXf6u0QHE2MguGziYAGM
nn2HEx0+bwjInpVuDImPjEQHf5B5yQZwvjEYGDgAXZvzXD8JzkePfwC5Se35

           "]], 
          
          FilledCurveBox[{{{1, 4, 3}, {1, 3, 3}, {1, 3, 3}, {1, 3, 3}, {1, 3, 
            3}, {0, 1, 0}, {0, 1, 0}, {0, 1, 0}, {0, 1, 0}, {1, 3, 3}, {0, 1, 
            0}, {1, 3, 3}, {1, 3, 3}, {0, 1, 0}, {1, 3, 3}, {1, 3, 3}, {1, 3, 
            3}, {0, 1, 0}}, {{1, 4, 3}, {1, 3, 3}, {1, 3, 3}, {1, 3, 
            3}}}, {CompressedData["
1:eJxTTMoPSmViYGDQBGIQ/fnvlYqXp5Ic9tfKWqSzGDnobJr7fvm+JIflLzz0
/jcaOlxfXGDLtTvJodvrFYtJoqHD6YWu2z5vhao3MXSITLG+7782yaFkq+jv
0+8MHLpznv9euTTJ4cvOW11/jxo4TJZgCeNbiOBrxPQf+joHwTfvdEx4OiPJ
4brQJ8fzzxB8YxBgNoTzoxUcPybrGDqkpwHBrCSHmSCQaeiwuwRow7wkh0aW
o/2G2xF8sP7Dhg7FGRPf1sxPcvgPAvcNHVgbpzp3L0hyKFjTfTuDwQjOr/9t
VXCOwwjuXul5cZqnBYwg/j2b5GACNtDcQfn2z7qsM0kOjk2Pjs+wNoe7L0J8
+0WGd2aQ8OtLcvjzrfTBnIdmDtPzhJoPVCU5+Jxgt519FcH3uzgx5t9kM4d8
IPfU1CQHBhCYYOYAjo9ZUPlmBH8FKD4MEfy/IPMFzRyOKGwoypgJ1X/B1OH3
yo+XfKclOZw67LQ2s87UIf7pBaXbtUkOG/TyFjOuMYLET2mSw5PEhddM9hs6
AGOvd3oR1L8OCD4sPmH85Ng7bswRBnD3g+OBzcBB3ZBjjUwXgr/8mLd550IE
fzbIgVug5jcYOOjfVWFrvJjk8HlDQPas64YO6OkPAGZ8LFU=
            "], {{150.21299999999997`, 26.6297}, {149.78099999999998`, 
            26.6297}, {149.46299999999997`, 26.262500000000003`}, {
            149.46299999999997`, 25.7844}, {149.46299999999997`, 
            25.273399999999995`}, {149.76599999999996`, 24.9391}, {
            150.22799999999998`, 24.9391}, {150.64399999999998`, 24.9391}, {
            151.009, 25.306299999999997`}, {151.009, 25.751599999999993`}, {
            151.009, 26.2141}, {150.64399999999998`, 26.6297}, {
            150.21299999999997`, 26.6297}}}], 
          
          FilledCurveBox[{{{1, 4, 3}, {0, 1, 0}, {1, 3, 3}, {1, 3, 3}, {1, 3, 
           3}, {1, 3, 3}, {1, 3, 3}, {0, 1, 0}, {1, 3, 3}, {1, 3, 3}, {1, 3, 
           3}, {0, 1, 0}, {1, 3, 3}, {1, 3, 3}, {1, 3, 3}, {0, 1, 0}, {1, 3, 
           3}, {1, 3, 3}, {1, 3, 3}}}, CompressedData["
1:eJxTTMoPSmVmYGBgBGIjIGYC4hl5Qs0HrFIcNurlLWa0MXGA8Q/UylqkPzF1
+BH8eOlsiRSHG0KfHM+LmTswgIBIioNj06PjM6zNHRwTnl5QYkbwl84+orCB
LcVhi/mPQylc5g45z3+v/CiU4pAGAm5mcL6B1krhCyqmcH4jy9F+Q3djhysV
L9UM3yQ7PM/S/jZ9rYFDD0jBTgS/A2ThMgTf4K4KW+PMZAdjEGA2hPPTQfZN
Q/BPHnZam6ln7DBFgiWMbyuUv84Ezo9RcPyYzGOKypcxdfh4yTdJYEsy3L17
SiZLsGxC8GHmw/hA3bqbOhH80wtdt32einAvo3a72E03BN/6vn/vdCUEn7Vx
qnO3QrKDAyg8TxvC+TNBwNIIzj/Ytjz81CETBwfTuF2eMckOPifYbWc/NXO4
oHT7Z11aMjw+wOEXiuD/BQUwEn++lP5dlU9JcPfC+F923ur662oE59f/tio4
52HoEL/Lk4eJGRq+bAaQ8LFA8MHxU4bgf1h+zNscGB7XQelnmSGcr/qked7Z
VYbw8ELnw9QX2HJdX9yRDHFPK4IvPS9O83QAgi8+9QpnxiUDh7nvgRb0I+wH
p6c9CD4oOv7+QfBh6f3vt9IHcwyNHNDzAwAV81PT
           "]], 
          
          FilledCurveBox[{{{1, 4, 3}, {1, 3, 3}, {1, 3, 3}, {1, 3, 3}, {1, 3, 
            3}, {1, 3, 3}, {1, 3, 3}}, {{1, 4, 3}, {1, 3, 3}, {1, 3, 3}, {1, 
            3, 3}}}, {CompressedData["
1:eJxTTMoPSmViYGAQA2IQrRHTf+jrghSHO9I1iUahpg6XfJMEInoR/DQQqEtx
OFAra5GuYurwYfkxb/PCFAeZeXGapw+YOPROzxNqjklx6PF6xWKiaOKQ8/z3
yo9+KQ71v60Kzt0wgvOnT+CvMus2hPP3g8wLMXBYOvuIwoaoFIczIMCj51CU
MfFtTXaKw1rVJ83zzuo4FNhyXV9ckeLgfwvooEvaDoza7WI3u1IcEkKC1Bd4
ajukWN/3752P4LOE8elu2ojgT5EAihxMcdhu/uNQyipthxvnvgc/Pgs1r0jH
4dBXYAg8SnF4U7xV9PdqXYesPSWTJT6kOEiD/KdgAOdzu6mWMlUZwvkH25aH
nzpk7HDg1ELXbecR4YUengDShZry
            "], {{164.99699999999999`, 21.0422}, {165.933, 21.0422}, {
            166.43399999999997`, 19.782800000000005`}, {166.43399999999997`, 
            17.4547}, {166.43399999999997`, 15.126599999999996`}, {165.944, 
            13.934399999999997`}, {164.986, 13.934399999999997`}, {
            164.02800000000002`, 13.934399999999997`}, {163.538, 
            15.126599999999996`}, {163.538, 17.4438}, {163.538, 
            19.806299999999997`}, {164.039, 21.0422}, {164.99699999999999`, 
            21.0422}}}], 
          
          FilledCurveBox[{{{1, 4, 3}, {1, 3, 3}, {1, 3, 3}, {1, 3, 3}, {0, 1, 
           0}, {1, 3, 3}, {1, 3, 3}, {1, 3, 3}, {1, 3, 3}, {0, 1, 
           0}}}, CompressedData["
1:eJxTTMoPSmVmYGBgBGJpIGYC4oWu2z7/lUl1MLfZGzTtoJbDjDyh5gNOqQ71
v60KznnoOJjE7fLkCUp1eJ6l/W26rK6DRkz/oa8pqQ4Z+R9aT07Rc/h7peKl
WidUfq2Bw43FBbZcs1Mdvuy81fXX1QjOX3J/H98cZRM4P0J8+0UGPTMHkHEa
HakOXG6qpUy7zB1U2BqnOkenOmwx/3EoJcrS4c/Kj5d83VIdThx2WpspZ+Uw
RYIljM8y1YHHf/2U1AorhwtKt3/WyaU6qDxpnnf2l5UDiJslkeowYyYQ7LRy
+LD8mLe5I1T9DkuHWKB3mPxTHUDSMzUtHSJTrO/7x6Y6NLIc7Tf8bu6wAqi8
MzPVwecEu+3sp2YOjglPLyjlpzpMCC5Rmb7eFM4Hqxc3gfNLtor+Pp1n5NAz
HRiAGakOG/XyFjPKGELCMyrV4XDb8vBTSgYOc44obCjySXX48fb1AUtnaPjZ
IsIX5n7/ixNj/jlrO6DHDwDco8Aa
           "]], 
          
          FilledCurveBox[{{{1, 4, 3}, {0, 1, 0}, {1, 3, 3}, {1, 3, 3}, {0, 1, 
           0}, {1, 3, 3}}}, {{{178.894, 20.2656}, {178.894, 
           33.468799999999995`}, {175.163, 38.014100000000006`}, {
           174.30200000000002`, 39.59379999999999}, {174.07799999999997`, 
           38.77969999999999}, {176.59799999999998`, 34.2344}, {177.284, 
           27.6328}, {177.284, 20.2656}, {177.284, 12.898400000000002`}, {
           176.59799999999998`, 6.29688}, {174.07799999999997`, 
           1.7515599999999996`}, {174.30200000000002`, 0.939063}, {175.163, 
           2.5171900000000003`}, {178.894, 7.062499999999997}, {178.894, 
           20.2656}}}], 
          
          FilledCurveBox[{{{1, 4, 3}, {0, 1, 0}, {1, 3, 3}, {1, 3, 3}, {0, 1, 
           0}, {1, 3, 3}}}, {{{184.99400000000003`, 20.2656}, {
           184.99400000000003`, 33.468799999999995`}, {181.26299999999998`, 
           38.014100000000006`}, {180.402, 39.59379999999999}, {180.178, 
           38.77969999999999}, {182.69799999999998`, 34.2344}, {
           183.38400000000001`, 27.6328}, {183.38400000000001`, 20.2656}, {
           183.38400000000001`, 12.898400000000002`}, {182.69799999999998`, 
           6.29688}, {180.178, 1.7515599999999996`}, {180.402, 0.939063}, {
           181.26299999999998`, 2.5171900000000003`}, {184.99400000000003`, 
           7.062499999999997}, {184.99400000000003`, 20.2656}}}]}, {
          JoinForm[{"Miter", 10.}], 
          Thickness[0.004781537802527308]}, StripOnInput -> False]}, {
       ImageSize -> {186.7599601494396, 40.5678505603985}, BaselinePosition -> 
        Scaled[0.3990178777101561], ImageSize -> {187., 41.}, 
        PlotRange -> {{0., 186.76}, {0., 40.57}}, AspectRatio -> Automatic}], 
      HoldForm], TraditionalForm]},
  AxesOrigin->{0, 0},
  DisplayFunction->Identity,
  Frame->{{False, False}, {False, False}},
  FrameLabel->{{None, None}, {None, None}},
  FrameTicks->{{Automatic, Automatic}, {Automatic, Automatic}},
  GridLines->{None, None},
  GridLinesStyle->Directive[
    GrayLevel[0.5, 0.4]],
  ImagePadding->All,
  Method->{
   "DefaultBoundaryStyle" -> Automatic, 
    "DefaultGraphicsInteraction" -> {
     "Version" -> 1.2, "TrackMousePosition" -> {True, False}, 
      "Effects" -> {
       "Highlight" -> {"ratio" -> 2}, "HighlightPoint" -> {"ratio" -> 2}, 
        "Droplines" -> {
         "freeformCursorMode" -> True, 
          "placement" -> {"x" -> "All", "y" -> "None"}}}}, "DefaultMeshStyle" -> 
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
  PlotRange->{{-2.98, 2.98}, {-0.6801223029525901, 0.9999989798024896}},
  PlotRangeClipping->True,
  PlotRangePadding->{{
     Scaled[0.02], 
     Scaled[0.02]}, {
     Scaled[0.05], 
     Scaled[0.05]}},
  Ticks->{{}, {}}]], "Output",
 CellChangeTimes->{
  3.759321473719233*^9, {3.7593215249364433`*^9, 3.759321553325861*^9}, 
   3.9019164129464493`*^9, 3.901916475145919*^9},
 CellLabel->
  "Out[476]=",ExpressionUUID->"fa555ef2-471e-4a89-b082-393d4f96ea86"]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{
  RowBox[{"peeters`exportForLatex", "[", 
   RowBox[{"\"\<gaussianWavePacketFig2\>\"", ",", "gaussianWavePacketFig2"}], 
   "]"}], "\n"}]], "Input",
 CellChangeTimes->{{3.759321563173592*^9, 3.7593215709883633`*^9}},
 CellLabel->
  "In[477]:=",ExpressionUUID->"d80f3b23-3393-47f9-b656-371e2fed3a3c"],

Cell[BoxData[
 RowBox[{"{", 
  RowBox[{"\<\"gaussianWavePacketFig2.eps\"\>", 
   ",", "\<\"gaussianWavePacketFig2pn.png\"\>"}], "}"}]], "Output",
 CellChangeTimes->{3.759321574335795*^9, 3.9019164850214767`*^9},
 CellLabel->
  "Out[477]=",ExpressionUUID->"ebe73c84-8bc9-41e9-b431-f537afc84da2"]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"\[IndentingNewLine]", 
  RowBox[{"peeters`exportForLatex", "[", 
   RowBox[{
   "\"\<ftOfgaussianSquaredAtRetardedTimeFig3\>\"", ",", 
    "ftOfgaussianSquaredAtRetardedTimeFig3"}], "]"}]}]], "Input",
 CellChangeTimes->{{3.7593217270333853`*^9, 
  3.759321733947258*^9}},ExpressionUUID->"82a2e2be-2334-4cf0-8f8a-\
ee0954c7ffc7"],

Cell[BoxData[
 RowBox[{"{", 
  RowBox[{"\<\"ftOfgaussianSquaredAtRetardedTimeFig3.eps\"\>", 
   ",", "\<\"ftOfgaussianSquaredAtRetardedTimeFig3pn.png\"\>"}], 
  "}"}]], "Output",
 CellChangeTimes->{
  3.759321735614944*^9},ExpressionUUID->"c09422cc-df27-4c77-a74b-\
b82450984d6b"]
}, Open  ]]
},
WindowSize->{707, 637},
WindowMargins->{{0, Automatic}, {Automatic, 0}},
FrontEndVersion->"13.2 for Mac OS X ARM (64-bit) (January 30, 2023)",
StyleDefinitions->"Default.nb",
ExpressionUUID->"b671672a-8fe3-4905-9996-03788be2090b"
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
Cell[1235, 30, 294, 7, 52, "Input",ExpressionUUID->"2001ad53-7959-4526-b2c1-6c74e397a837"],
Cell[CellGroupData[{
Cell[1554, 41, 4175, 113, 346, "Input",ExpressionUUID->"1a6d4e4a-38f8-48d6-a817-29372f4550e1"],
Cell[5732, 156, 795, 19, 72, "Output",ExpressionUUID->"2519f192-fead-493c-ae20-9efb114abfe7"],
Cell[6530, 177, 499, 8, 34, "Output",ExpressionUUID->"d3cc2842-a127-4c80-b6e7-1f6ee735b566"],
Cell[7032, 187, 528, 9, 34, "Output",ExpressionUUID->"24917f18-f361-40fe-877f-6dc7bfd59c9e"],
Cell[7563, 198, 842, 20, 65, "Output",ExpressionUUID->"a5f015b7-a23a-4248-b6ea-9a4446b51b79"]
}, Open  ]],
Cell[8420, 221, 602, 16, 38, "Input",ExpressionUUID->"186730c2-549d-4579-bd94-fdb2d6db6a3a"],
Cell[9025, 239, 623, 17, 38, "Input",ExpressionUUID->"7ae7d6ee-cd95-46d1-86f8-c1a03d3b241a"],
Cell[9651, 258, 3109, 77, 469, "Input",ExpressionUUID->"acc544ee-348b-4ac8-860f-97ea2ecdaeb7"],
Cell[CellGroupData[{
Cell[12785, 339, 1359, 30, 157, "Input",ExpressionUUID->"f1ee3118-d2eb-4110-a4d4-591957ba1db7"],
Cell[14147, 371, 2125, 43, 450, "Output",ExpressionUUID->"0d376110-d514-4a08-9161-e9fb8002ee88"]
}, Open  ]],
Cell[16287, 417, 202, 5, 30, "Input",ExpressionUUID->"ef32c0ce-7ad1-483e-a0d1-a93b0c09cfde"],
Cell[16492, 424, 204, 5, 30, "Input",ExpressionUUID->"6e4761ae-9f15-4e52-b8c9-76f4b1ef3f34"],
Cell[16699, 431, 201, 5, 30, "Input",ExpressionUUID->"bd20a1bb-ce63-4159-81e4-e4f82780f15f"],
Cell[16903, 438, 1041, 30, 73, "Input",ExpressionUUID->"a96d1e34-8c95-4fe1-a5cd-0b1de3948906"],
Cell[17947, 470, 691, 20, 63, "Input",ExpressionUUID->"4366698a-7e21-4377-9d24-844c8e3c4f4b"],
Cell[CellGroupData[{
Cell[18663, 494, 717, 21, 63, "Input",ExpressionUUID->"f2767588-13bd-4989-bd5a-51ada9f5ce0c"],
Cell[19383, 517, 612, 18, 63, "Output",ExpressionUUID->"d6e0d380-500e-4d63-824f-cee637889e9c"]
}, Open  ]],
Cell[CellGroupData[{
Cell[20032, 540, 187, 4, 30, "Input",ExpressionUUID->"5d85327e-11ba-4c0e-9562-3367c4991908"],
Cell[20222, 546, 547, 17, 65, "Output",ExpressionUUID->"07eae9f6-5b96-45e2-803c-5b9caa866e99"]
}, Open  ]],
Cell[CellGroupData[{
Cell[20806, 568, 3918, 105, 388, "Input",ExpressionUUID->"dc5ed405-3240-4150-9166-324e92d31b1c"],
Cell[24727, 675, 3797, 68, 462, "Output",ExpressionUUID->"9a1b1571-cb11-49f2-937a-3bb3b18a884c"]
}, Open  ]],
Cell[CellGroupData[{
Cell[28561, 748, 2450, 68, 170, "Input",ExpressionUUID->"744cbd09-3bba-4aed-8662-5ba889ff715c"],
Cell[31014, 818, 58673, 986, 229, "Output",ExpressionUUID->"dcf151c0-7f6c-4981-b120-bc9ab2dc982a"]
}, Open  ]],
Cell[89702, 1807, 202, 5, 30, "Input",ExpressionUUID->"50af3157-d58f-4a32-b585-1d8148dfc0a9"],
Cell[CellGroupData[{
Cell[89929, 1816, 2014, 53, 156, "Input",ExpressionUUID->"29a32ee9-5612-4181-af4d-e3927a00d08b"],
Cell[91946, 1871, 45594, 789, 278, "Output",ExpressionUUID->"fa555ef2-471e-4a89-b082-393d4f96ea86"]
}, Open  ]],
Cell[CellGroupData[{
Cell[137577, 2665, 323, 7, 52, "Input",ExpressionUUID->"d80f3b23-3393-47f9-b656-371e2fed3a3c"],
Cell[137903, 2674, 294, 6, 34, "Output",ExpressionUUID->"ebe73c84-8bc9-41e9-b431-f537afc84da2"]
}, Open  ]],
Cell[CellGroupData[{
Cell[138234, 2685, 352, 8, 73, "Input",ExpressionUUID->"82a2e2be-2334-4cf0-8f8a-ee0954c7ffc7"],
Cell[138589, 2695, 280, 7, 56, "Output",ExpressionUUID->"c09422cc-df27-4c77-a74b-b82450984d6b"]
}, Open  ]]
}
]
*)

(* NotebookSignature 1wTdziieJBRl3D1D#d10wgz2 *)
