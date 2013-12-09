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
NotebookDataLength[     24482,        655]
NotebookOptionsPosition[     24057,        626]
NotebookOutlinePosition[     24398,        641]
CellTagsIndexPosition[     24355,        638]
WindowFrame->Normal*)

(* Beginning of Notebook Content *)
Notebook[{

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
  3.560626773489296*^9, 3.560626779152465*^9}}],

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
   3.560625336462449*^9}, 3.5606253991242914`*^9}],

Cell[BoxData["1"], "Output",
 CellChangeTimes->{
  3.5606124624420033`*^9, {3.5606125325173264`*^9, 3.5606125578074193`*^9}, 
   3.5606126286803436`*^9, 3.560612833984105*^9, 3.5606137454592085`*^9, 
   3.5606138065527163`*^9, 3.56061385941881*^9, 3.5606138916046667`*^9, 
   3.560613955339779*^9, 3.560625272378545*^9, {3.560625311495994*^9, 
   3.560625336462449*^9}, 3.5606253991292915`*^9}],

Cell[BoxData[
 SuperscriptBox["sigma", "2"]], "Output",
 CellChangeTimes->{
  3.5606124624420033`*^9, {3.5606125325173264`*^9, 3.5606125578074193`*^9}, 
   3.5606126286803436`*^9, 3.560612833984105*^9, 3.5606137454592085`*^9, 
   3.5606138065527163`*^9, 3.56061385941881*^9, 3.5606138916046667`*^9, 
   3.560613955339779*^9, 3.560625272378545*^9, {3.560625311495994*^9, 
   3.560625336462449*^9}, 3.5606254241904135`*^9}]
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
 CellChangeTimes->{{3.560625452069564*^9, 3.5606254645826693`*^9}}],

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
  RowBox[{"sigma", " ", "\[Rule]", " ", "\[CapitalDelta]\[Omega]"}]}]], \
"Input",
 CellChangeTimes->{{3.560625470563678*^9, 3.560625488355703*^9}}],

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
 CellChangeTimes->{{3.5606254984228277`*^9, 3.56062549979283*^9}}],

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
              SubscriptBox["\[Omega]", "0"]}]}], ")"}]}]], "]"}]}], "}"}]}], 
     "\[IndentingNewLine]", ",", " ", 
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
  3.5606262432831173`*^9, 3.560626302708126*^9}}],

Cell[BoxData[
 TagBox[
  StyleBox[
   DynamicModuleBox[{$CellContext`omega0$$ = 4.52, $CellContext`sigma$$ = 
    1.35, $CellContext`tRange$$ = 2.62, Typeset`show$$ = True, 
    Typeset`bookmarkList$$ = "Gaussian envelope", Typeset`bookmarkMode$$ = 
    "Menu", Typeset`animator$$, Typeset`animvar$$ = 1, Typeset`name$$ = 
    "\"untitled\"", Typeset`specs$$ = {{{
       Hold[$CellContext`omega0$$], 2}, 1, 10}, {{
       Hold[$CellContext`sigma$$], 0.5}, 0.1, 10}, {
      Hold[$CellContext`tRange$$], 1, 10}}, Typeset`size$$ = {
    360., {127., 131.}}, Typeset`update$$ = 0, Typeset`initDone$$, 
    Typeset`skipInitDone$$ = True, $CellContext`omega0$16105$$ = 
    0, $CellContext`sigma$16106$$ = 0, $CellContext`tRange$16107$$ = 0}, 
    DynamicBox[Manipulate`ManipulateBoxes[
     1, StandardForm, 
      "Variables" :> {$CellContext`omega0$$ = 2, $CellContext`sigma$$ = 
        0.5, $CellContext`tRange$$ = 1}, "ControllerVariables" :> {
        Hold[$CellContext`omega0$$, $CellContext`omega0$16105$$, 0], 
        Hold[$CellContext`sigma$$, $CellContext`sigma$16106$$, 0], 
        Hold[$CellContext`tRange$$, $CellContext`tRange$16107$$, 0]}, 
      "OtherVariables" :> {
       Typeset`show$$, Typeset`bookmarkList$$, Typeset`bookmarkMode$$, 
        Typeset`animator$$, Typeset`animvar$$, Typeset`name$$, 
        Typeset`specs$$, Typeset`size$$, Typeset`update$$, Typeset`initDone$$,
         Typeset`skipInitDone$$}, "Body" :> 
      Plot[E^((-(1/2)) $CellContext`t ($CellContext`sigma$$^2 $CellContext`t))
           Cos[$CellContext`t $CellContext`omega0$$], {$CellContext`t, \
-$CellContext`tRange$$, $CellContext`tRange$$}, AxesLabel -> {$CellContext`t, 
          Re[
          E^((-(1/2)) $CellContext`t ($CellContext`t $CellContext`\
\[CapitalDelta]\[Omega]^2 + 2 I Subscript[$CellContext`\[Omega], 0]))]}, 
        PlotRange -> Full], 
      "Specifications" :> {{{$CellContext`omega0$$, 2}, 1, 
         10}, {{$CellContext`sigma$$, 0.5}, 0.1, 10}, {$CellContext`tRange$$, 
         1, 10}}, "Options" :> {}, "DefaultOptions" :> {}],
     ImageSizeCache->{409., {200., 205.}},
     SingleEvaluation->True],
    Deinitialization:>None,
    DynamicModuleValues:>{},
    SynchronousInitialization->True,
    UnsavedVariables:>{Typeset`initDone$$},
    UntrackedVariables:>{Typeset`size$$}], "Manipulate",
   Deployed->True,
   StripOnInput->False],
  Manipulate`InterpretManipulate[1]]], "Output",
 CellChangeTimes->{
  3.56062594982765*^9, {3.5606260448230796`*^9, 3.560626074999238*^9}, 
   3.560626144730605*^9, 3.560626176515733*^9, 3.560626285455621*^9}]
}, Open  ]],

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
  3.560627628919689*^9, 3.56062764400171*^9}}],

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
 CellChangeTimes->{{3.560627716640193*^9, 3.560627728102209*^9}}],

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
  RowBox[{"sigma", " ", "\[Rule]", " ", "\[CapitalDelta]\[Omega]"}]}]], \
"Input",
 CellChangeTimes->{{3.5606277325472155`*^9, 3.560627750367339*^9}}],

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
 CellChangeTimes->{3.560627752527342*^9}]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"Expand", "[", "%", "]"}]], "Input",
 CellChangeTimes->{{3.560627670127803*^9, 3.5606276732288074`*^9}}],

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
 CellChangeTimes->{3.560627674073848*^9}]
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
     RowBox[{"PlotRange", " ", "\[Rule]", " ", "Full"}]}], 
    "\[IndentingNewLine]", "]"}], "\[IndentingNewLine]", ",", " ", 
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
  3.5606317616881685`*^9}, {3.5606320213152347`*^9, 3.5606320604929066`*^9}}],

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
    Typeset`skipInitDone$$ = True, $CellContext`h$20640$$ = 
    0, $CellContext`x$20641$$ = 0, $CellContext`l$20642$$ = 
    0, $CellContext`c$20643$$ = 0, $CellContext`domega$20644$$ = 
    0, $CellContext`omega0$20645$$ = 0}, 
    DynamicBox[Manipulate`ManipulateBoxes[
     1, StandardForm, 
      "Variables" :> {$CellContext`c$$ = 100000000, $CellContext`domega$$ = 
        8, $CellContext`h$$ = 0.5, $CellContext`l$$ = 
        13, $CellContext`omega0$$ = 7, $CellContext`x$$ = 0.5}, 
      "ControllerVariables" :> {
        Hold[$CellContext`h$$, $CellContext`h$20640$$, 0], 
        Hold[$CellContext`x$$, $CellContext`x$20641$$, 0], 
        Hold[$CellContext`l$$, $CellContext`l$20642$$, 0], 
        Hold[$CellContext`c$$, $CellContext`c$20643$$, 0], 
        Hold[$CellContext`domega$$, $CellContext`domega$20644$$, 0], 
        Hold[$CellContext`omega0$$, $CellContext`omega0$20645$$, 0]}, 
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
           4)}, {$CellContext`t, 0, 10}, PlotRange -> Full], 
      "Specifications" :> {{{$CellContext`h$$, 0.5}, 0.01, 
         1}, {{$CellContext`x$$, 0.5}, 0.01, 1}, {{$CellContext`l$$, 13}, 1, 
         20}, {{$CellContext`c$$, 100000000}, 1, 
         100000000}, {{$CellContext`domega$$, 8}, 0.1, 
         10}, {{$CellContext`omega0$$, 7}, 0.1, 10}}, "Options" :> {}, 
      "DefaultOptions" :> {}],
     ImageSizeCache->{409., {218., 223.}},
     SingleEvaluation->True],
    Deinitialization:>None,
    DynamicModuleValues:>{},
    SynchronousInitialization->True,
    UnsavedVariables:>{Typeset`initDone$$},
    UntrackedVariables:>{Typeset`size$$}], "Manipulate",
   Deployed->True,
   StripOnInput->False],
  Manipulate`InterpretManipulate[1]]], "Output",
 CellChangeTimes->{{3.560631533023143*^9, 3.5606315590463257`*^9}, 
   3.560631723044879*^9, 3.5606317667731757`*^9, 3.560631912613123*^9, {
   3.560632035144026*^9, 3.560632063400032*^9}}]
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
Cell[CellGroupData[{
Cell[1257, 32, 4092, 111, 312, "Input"],
Cell[5352, 145, 689, 17, 65, "Output"],
Cell[6044, 164, 394, 6, 30, "Output"],
Cell[6441, 172, 421, 7, 30, "Output"]
}, Open  ]],
Cell[6877, 182, 483, 13, 39, InheritFromParent],
Cell[7363, 197, 503, 14, 39, InheritFromParent],
Cell[7869, 213, 412, 11, 39, InheritFromParent],
Cell[CellGroupData[{
Cell[8306, 228, 2274, 57, 303, "Input"],
Cell[10583, 287, 2581, 48, 422, "Output"]
}, Open  ]],
Cell[13179, 338, 981, 28, 72, "Input"],
Cell[14163, 368, 631, 18, 60, InheritFromParent],
Cell[CellGroupData[{
Cell[14819, 390, 656, 19, 60, InheritFromParent],
Cell[15478, 411, 552, 16, 59, "Output"]
}, Open  ]],
Cell[CellGroupData[{
Cell[16067, 432, 127, 2, 31, "Input"],
Cell[16197, 436, 487, 15, 60, "Output"]
}, Open  ]],
Cell[CellGroupData[{
Cell[16721, 456, 3719, 100, 352, "Input"],
Cell[20443, 558, 3598, 65, 458, "Output"]
}, Open  ]]
}
]
*)

(* End of internal cache information *)

(* NotebookSignature 9uTTB0iI8lti3Dw5of4Jo2IR *)
