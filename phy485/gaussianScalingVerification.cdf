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
NotebookDataLength[    115924,       2303]
NotebookOptionsPosition[    113214,       2252]
NotebookOutlinePosition[    113571,       2268]
CellTagsIndexPosition[    113528,       2265]
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
  3.560626773489296*^9, 
  3.560626779152465*^9}},ExpressionUUID->"1a6d4e4a-38f8-48d6-a817-\
29372f4550e1"],

Cell[BoxData[
 RowBox[{"ConditionalExpression", "[", 
  RowBox[{
   RowBox[{
    SqrtBox[
     FractionBox["1", 
      SuperscriptBox["sigma", "2"]]], " ", 
    SqrtBox[
     SuperscriptBox["sigma", "2"]]}], ",", 
   RowBox[{
    RowBox[{"Re", "[", 
     SuperscriptBox["sigma", "2"], "]"}], ">", "0"}]}], "]"}]], "Output",
 CellChangeTimes->{
  3.5606124624420033`*^9, {3.5606125325173264`*^9, 3.5606125578074193`*^9}, 
   3.5606126286803436`*^9, 3.560612833984105*^9, 3.5606137454592085`*^9, 
   3.5606138065527163`*^9, 3.56061385941881*^9, 3.5606138916046667`*^9, 
   3.560613955339779*^9, 3.560625272378545*^9, {3.560625311495994*^9, 
   3.560625336462449*^9}, 
   3.5606253991242914`*^9},ExpressionUUID->"11c171d7-b7e5-40cb-9fb5-\
86bf958ded3a"],

Cell[BoxData["1"], "Output",
 CellChangeTimes->{
  3.5606124624420033`*^9, {3.5606125325173264`*^9, 3.5606125578074193`*^9}, 
   3.5606126286803436`*^9, 3.560612833984105*^9, 3.5606137454592085`*^9, 
   3.5606138065527163`*^9, 3.56061385941881*^9, 3.5606138916046667`*^9, 
   3.560613955339779*^9, 3.560625272378545*^9, {3.560625311495994*^9, 
   3.560625336462449*^9}, 
   3.5606253991292915`*^9},ExpressionUUID->"cf888cba-cb64-487c-a4b5-\
000930b9c233"],

Cell[BoxData[
 SuperscriptBox["sigma", "2"]], "Output",
 CellChangeTimes->{
  3.5606124624420033`*^9, {3.5606125325173264`*^9, 3.5606125578074193`*^9}, 
   3.5606126286803436`*^9, 3.560612833984105*^9, 3.5606137454592085`*^9, 
   3.5606138065527163`*^9, 3.56061385941881*^9, 3.5606138916046667`*^9, 
   3.560613955339779*^9, 3.560625272378545*^9, {3.560625311495994*^9, 
   3.560625336462449*^9}, 
   3.5606254241904135`*^9},ExpressionUUID->"747ab7cd-da0d-4973-8a4e-\
c70e2d9a2dbc"]
}, Open  ]],

Cell[BoxData[
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
   SubscriptBox["\[Omega]", "0"]}]}]], "Input",
 CellChangeTimes->{{3.560625452069564*^9, 
  3.5606254645826693`*^9}},ExpressionUUID->"186730c2-549d-4579-bd94-\
fdb2d6db6a3a"],

Cell[BoxData[
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
  RowBox[{
  "sigma", " ", "\[Rule]", " ", "\[CapitalDelta]\[Omega]"}]}]], "Input",
 CellChangeTimes->{{3.560625470563678*^9, 
  3.560625488355703*^9}},ExpressionUUID->"7ae7d6ee-cd95-46d1-86f8-\
c1a03d3b241a"],

Cell[BoxData[
 SuperscriptBox["\[ExponentialE]", 
  RowBox[{
   RowBox[{"-", 
    FractionBox["1", "2"]}], " ", "t", " ", 
   RowBox[{"(", 
    RowBox[{
     RowBox[{"t", " ", 
      SuperscriptBox["\[CapitalDelta]\[Omega]", "2"]}], "+", 
     RowBox[{"2", " ", "\[ImaginaryI]", " ", 
      SubscriptBox["\[Omega]", "0"]}]}], ")"}]}]]], "Input",
 CellChangeTimes->{{3.5606254984228277`*^9, 
  3.56062549979283*^9}},ExpressionUUID->"acc544ee-348b-4ac8-860f-\
97ea2ecdaeb7"],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"Manipulate", "[", "\[IndentingNewLine]", 
  RowBox[{
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
       RowBox[{"t", " ", "omega0"}], " ", "]"}]}], "\[IndentingNewLine]", ",",
      " ", 
     RowBox[{"{", 
      RowBox[{"t", ",", " ", 
       RowBox[{"-", "tRange"}], ",", " ", "tRange"}], "}"}], 
     "\[IndentingNewLine]", ",", " ", 
     RowBox[{"AxesLabel", " ", "\[Rule]", " ", 
      RowBox[{"{", " ", 
       RowBox[{"t", ",", " ", 
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
                SubscriptBox["\[Omega]", "0"]}]}], ")"}]}]], "]"}], ",", " ", 
          RowBox[{"FontSize", "\[Rule]", " ", "16"}]}], "]"}]}], "}"}]}], 
     "\[IndentingNewLine]", ",", " ", 
     RowBox[{"PlotStyle", "\[Rule]", " ", "Thick"}], "\[IndentingNewLine]", 
     ",", " ", 
     RowBox[{"PlotRange", " ", "\[Rule]", " ", "Full"}]}], 
    "\[IndentingNewLine]", "]"}], "\[IndentingNewLine]", ",", 
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
  3.759321452288169*^9}},ExpressionUUID->"f1ee3118-d2eb-4110-a4d4-\
591957ba1db7"],

Cell[BoxData[
 TagBox[
  StyleBox[
   DynamicModuleBox[{$CellContext`omega0$$ = 2.99, $CellContext`sigma$$ = 
    0.87, $CellContext`tRange$$ = 2.98, Typeset`show$$ = True, 
    Typeset`bookmarkList$$ = {}, Typeset`bookmarkMode$$ = "Menu", 
    Typeset`animator$$, Typeset`animvar$$ = 1, Typeset`name$$ = 
    "\"untitled\"", Typeset`specs$$ = {{{
       Hold[$CellContext`omega0$$], 2}, 1, 10}, {{
       Hold[$CellContext`sigma$$], 0.5}, 0.1, 10}, {
      Hold[$CellContext`tRange$$], 1, 10}}, Typeset`size$$ = {
    360., {127., 132.}}, Typeset`update$$ = 0, Typeset`initDone$$, 
    Typeset`skipInitDone$$ = True, $CellContext`omega0$109715$$ = 
    0, $CellContext`sigma$109716$$ = 0, $CellContext`tRange$109717$$ = 0}, 
    DynamicBox[Manipulate`ManipulateBoxes[
     1, StandardForm, 
      "Variables" :> {$CellContext`omega0$$ = 2, $CellContext`sigma$$ = 
        0.5, $CellContext`tRange$$ = 1}, "ControllerVariables" :> {
        Hold[$CellContext`omega0$$, $CellContext`omega0$109715$$, 0], 
        Hold[$CellContext`sigma$$, $CellContext`sigma$109716$$, 0], 
        Hold[$CellContext`tRange$$, $CellContext`tRange$109717$$, 0]}, 
      "OtherVariables" :> {
       Typeset`show$$, Typeset`bookmarkList$$, Typeset`bookmarkMode$$, 
        Typeset`animator$$, Typeset`animvar$$, Typeset`name$$, 
        Typeset`specs$$, Typeset`size$$, Typeset`update$$, Typeset`initDone$$,
         Typeset`skipInitDone$$}, "Body" :> 
      Plot[E^((-(1/2)) $CellContext`t ($CellContext`sigma$$^2 $CellContext`t))
           Cos[$CellContext`t $CellContext`omega0$$], {$CellContext`t, \
-$CellContext`tRange$$, $CellContext`tRange$$}, AxesLabel -> {$CellContext`t, 
          Style[
           Re[
           E^((-(1/2)) $CellContext`t ($CellContext`t $CellContext`\
\[CapitalDelta]\[Omega]^2 + 2 I Subscript[$CellContext`\[Omega], 0]))], 
           FontSize -> 16]}, PlotStyle -> Thick, PlotRange -> Full], 
      "Specifications" :> {{{$CellContext`omega0$$, 2}, 1, 
         10}, {{$CellContext`sigma$$, 0.5}, 0.1, 10}, {$CellContext`tRange$$, 
         1, 10}}, "Options" :> {}, "DefaultOptions" :> {}],
     ImageSizeCache->{405., {200., 206.}},
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
   3.759321453349419*^9},ExpressionUUID->"04d31a9c-0742-4098-970a-\
4caec3da73d2"]
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
      Plot[{E^($CellContext`domega$$^2 ($CellContext`t $CellContext`h$$ \
(($CellContext`h$$ + $CellContext`x$$)/$CellContext`l$$)) - $CellContext`t^2/
           4) Cos[$CellContext`omega0$$ ($CellContext`t - 
            2 $CellContext`h$$ (($CellContext`h$$ + \
$CellContext`x$$)/$CellContext`l$$) $CellContext`c$$)], 
         E^($CellContext`domega$$^2 ($CellContext`t $CellContext`h$$ \
(($CellContext`h$$ + $CellContext`x$$)/$CellContext`l$$)) - $CellContext`t^2/
          4), -E^($CellContext`domega$$^2 ($CellContext`t $CellContext`h$$ \
(($CellContext`h$$ + $CellContext`x$$)/$CellContext`l$$)) - $CellContext`t^2/
           4)}, {$CellContext`t, 0, 10}, PlotRange -> Full, PlotStyle -> 
        Thick], "Specifications" :> {{{$CellContext`h$$, 0.5}, 0.01, 
         1}, {{$CellContext`x$$, 0.5}, 0.01, 1}, {{$CellContext`l$$, 13}, 1, 
         20}, {{$CellContext`c$$, 100000000}, 1, 
         100000000}, {{$CellContext`domega$$, 8}, 0.1, 
         10}, {{$CellContext`omega0$$, 7}, 0.1, 10}}, "Options" :> {}, 
      "DefaultOptions" :> {}],
     ImageSizeCache->{405., {219., 225.}},
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
1: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
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

Cell[BoxData[
 RowBox[{"gaussianWavePacketFig2", " ", "=", " ", 
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
      RowBox[{"PlotRange", "\[Rule]", "Full"}]}], "]"}]}], "]"}]}]], "Input",
 CellChangeTimes->{
  3.759321472708603*^9, {3.75932152424936*^9, 
   3.759321550344369*^9}},ExpressionUUID->"29a32ee9-5612-4181-af4d-\
e3927a00d08b"],

Cell[BoxData[
 DynamicModuleBox[{$CellContext`omega0$$ = 2.99, $CellContext`sigma$$ = 
  0.87, $CellContext`tRange$$ = 2.98}, 
  GraphicsBox[{{{}, {}, 
     TagBox[
      {RGBColor[0.368417, 0.506779, 0.709798], Thickness[Large], Opacity[1.], 
       LineBox[CompressedData["
1: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
        "]]},
      Annotation[#, "Charting`Private`Tag$118479#1"]& ]}, {}, {}},
   AspectRatio->NCache[GoldenRatio^(-1), 0.6180339887498948],
   Axes->{True, True},
   AxesLabel->{
     FormBox[
      TagBox["t", HoldForm], TraditionalForm], 
     FormBox[
      StyleBox[
       RowBox[{"Re", "(", 
         SuperscriptBox["\[ExponentialE]", 
          RowBox[{
            RowBox[{"-", 
              FractionBox["1", "2"]}], " ", 
            TagBox["t", HoldForm], " ", 
            RowBox[{"(", 
              RowBox[{
                RowBox[{
                  SuperscriptBox["\[CapitalDelta]\[Omega]", "2"], " ", 
                  TagBox["t", HoldForm]}], "+", 
                RowBox[{"2", " ", "\[ImaginaryI]", " ", 
                  SubscriptBox["\[Omega]", "0"]}]}], ")"}]}]], ")"}], 
       FontSize -> 14, StripOnInput -> False], TraditionalForm]},
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
   PlotRange->{{-2.98, 2.98}, {-0.6801223029525901, 0.9999989798024896}},
   PlotRangeClipping->True,
   PlotRangePadding->{{
      Scaled[0.02], 
      Scaled[0.02]}, {
      Scaled[0.05], 
      Scaled[0.05]}},
   Ticks->{Automatic, Automatic}],
  DynamicModuleValues:>{}]], "Output",
 CellChangeTimes->{
  3.759321473719233*^9, {3.7593215249364433`*^9, 
   3.759321553325861*^9}},ExpressionUUID->"bfe48d6e-c279-4c81-ae00-\
a6098d4a7b8e"]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{
  RowBox[{"peeters`exportForLatex", "[", 
   RowBox[{"\"\<gaussianWavePacketFig2\>\"", ",", "gaussianWavePacketFig2"}], 
   "]"}], "\n"}]], "Input",
 CellChangeTimes->{{3.759321563173592*^9, 
  3.7593215709883633`*^9}},ExpressionUUID->"d80f3b23-3393-47f9-b656-\
371e2fed3a3c"],

Cell[BoxData[
 RowBox[{"{", 
  RowBox[{"\<\"gaussianWavePacketFig2.eps\"\>", 
   ",", "\<\"gaussianWavePacketFig2pn.png\"\>"}], "}"}]], "Output",
 CellChangeTimes->{
  3.759321574335795*^9},ExpressionUUID->"d973dbf9-4e72-4bef-adf1-\
3a43da13c606"]
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
Cell[1235, 30, 294, 7, 52, "Input",ExpressionUUID->"2001ad53-7959-4526-b2c1-6c74e397a837"],
Cell[CellGroupData[{
Cell[1554, 41, 4152, 113, 346, "Input",ExpressionUUID->"1a6d4e4a-38f8-48d6-a817-29372f4550e1"],
Cell[5709, 156, 750, 19, 71, "Output",ExpressionUUID->"11c171d7-b7e5-40cb-9fb5-86bf958ded3a"],
Cell[6462, 177, 455, 8, 34, "Output",ExpressionUUID->"cf888cba-cb64-487c-a4b5-000930b9c233"],
Cell[6920, 187, 482, 9, 34, "Output",ExpressionUUID->"747ab7cd-da0d-4973-8a4e-c70e2d9a2dbc"]
}, Open  ]],
Cell[7417, 199, 543, 15, 37, "Input",ExpressionUUID->"186730c2-549d-4579-bd94-fdb2d6db6a3a"],
Cell[7963, 216, 564, 16, 37, "Input",ExpressionUUID->"7ae7d6ee-cd95-46d1-86f8-c1a03d3b241a"],
Cell[8530, 234, 472, 13, 37, "Input",ExpressionUUID->"acc544ee-348b-4ac8-860f-97ea2ecdaeb7"],
Cell[CellGroupData[{
Cell[9027, 251, 2618, 64, 331, "Input",ExpressionUUID->"f1ee3118-d2eb-4110-a4d4-591957ba1db7"],
Cell[11648, 317, 2780, 52, 425, "Output",ExpressionUUID->"04d31a9c-0742-4098-970a-4caec3da73d2"]
}, Open  ]],
Cell[14443, 372, 202, 5, 30, "Input",ExpressionUUID->"ef32c0ce-7ad1-483e-a0d1-a93b0c09cfde"],
Cell[14648, 379, 204, 5, 30, "Input",ExpressionUUID->"6e4761ae-9f15-4e52-b8c9-76f4b1ef3f34"],
Cell[14855, 386, 201, 5, 30, "Input",ExpressionUUID->"bd20a1bb-ce63-4159-81e4-e4f82780f15f"],
Cell[15059, 393, 1041, 30, 73, "Input",ExpressionUUID->"a96d1e34-8c95-4fe1-a5cd-0b1de3948906"],
Cell[16103, 425, 691, 20, 61, "Input",ExpressionUUID->"4366698a-7e21-4377-9d24-844c8e3c4f4b"],
Cell[CellGroupData[{
Cell[16819, 449, 717, 21, 61, "Input",ExpressionUUID->"f2767588-13bd-4989-bd5a-51ada9f5ce0c"],
Cell[17539, 472, 612, 18, 62, "Output",ExpressionUUID->"d6e0d380-500e-4d63-824f-cee637889e9c"]
}, Open  ]],
Cell[CellGroupData[{
Cell[18188, 495, 187, 4, 30, "Input",ExpressionUUID->"5d85327e-11ba-4c0e-9562-3367c4991908"],
Cell[18378, 501, 547, 17, 64, "Output",ExpressionUUID->"07eae9f6-5b96-45e2-803c-5b9caa866e99"]
}, Open  ]],
Cell[CellGroupData[{
Cell[18962, 523, 3918, 105, 388, "Input",ExpressionUUID->"dc5ed405-3240-4150-9166-324e92d31b1c"],
Cell[22883, 630, 3785, 68, 463, "Output",ExpressionUUID->"9a1b1571-cb11-49f2-937a-3bb3b18a884c"]
}, Open  ]],
Cell[CellGroupData[{
Cell[26705, 703, 2450, 68, 164, "Input",ExpressionUUID->"744cbd09-3bba-4aed-8662-5ba889ff715c"],
Cell[29158, 773, 58673, 986, 229, "Output",ExpressionUUID->"dcf151c0-7f6c-4981-b120-bc9ab2dc982a"]
}, Open  ]],
Cell[87846, 1762, 202, 5, 30, "Input",ExpressionUUID->"50af3157-d58f-4a32-b585-1d8148dfc0a9"],
Cell[CellGroupData[{
Cell[88073, 1771, 1750, 46, 155, "Input",ExpressionUUID->"29a32ee9-5612-4181-af4d-e3927a00d08b"],
Cell[89826, 1819, 22113, 388, 275, "Output",ExpressionUUID->"bfe48d6e-c279-4c81-ae00-a6098d4a7b8e"]
}, Open  ]],
Cell[CellGroupData[{
Cell[111976, 2212, 300, 7, 52, "Input",ExpressionUUID->"d80f3b23-3393-47f9-b656-371e2fed3a3c"],
Cell[112279, 2221, 247, 6, 34, "Output",ExpressionUUID->"d973dbf9-4e72-4bef-adf1-3a43da13c606"]
}, Open  ]],
Cell[CellGroupData[{
Cell[112563, 2232, 352, 8, 73, "Input",ExpressionUUID->"82a2e2be-2334-4cf0-8f8a-ee0954c7ffc7"],
Cell[112918, 2242, 280, 7, 56, "Output",ExpressionUUID->"c09422cc-df27-4c77-a74b-b82450984d6b"]
}, Open  ]]
}
]
*)

(* NotebookSignature gv02KQiECT2fQCw9Ghmf6YZh *)
