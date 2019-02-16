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
NotebookDataLength[     34899,        893]
NotebookOptionsPosition[     32897,        851]
NotebookOutlinePosition[     33256,        867]
CellTagsIndexPosition[     33213,        864]
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
   " ", "]"}], " "}], "\[IndentingNewLine]"}], "Input",
 CellChangeTimes->{{3.759315052893819*^9, 3.7593150691739264`*^9}, {
  3.7593151101219063`*^9, 
  3.759315111881524*^9}},ExpressionUUID->"2d943419-d32d-42a9-832b-\
01ac8ca79dde"],

Cell[BoxData["\<\"/Users/pjoot/project/figures/phy485-optics\"\>"], "Output",
 CellChangeTimes->{3.759315070725574*^9, 
  3.759315112923744*^9},ExpressionUUID->"eba89586-4a6f-4c3c-b10c-\
f0676afe3670"]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"Manipulate", "[", "\[IndentingNewLine]", 
  RowBox[{
   RowBox[{"Module", "[", 
    RowBox[{
     RowBox[{"{", 
      RowBox[{"v", ",", " ", "t", ",", " ", "vSmall", ",", " ", "vBig"}], 
      "}"}], ",", "\[IndentingNewLine]", 
     RowBox[{"(*", " ", 
      RowBox[{
       RowBox[{
        RowBox[{"Problem", " ", "2", 
         RowBox[{"b", ".", "  ", "With"}], " ", "v"}], " ", "=", " ", 
        RowBox[{"y", "/", "L"}]}], ",", " ", 
       RowBox[{"t", " ", "=", " ", 
        RowBox[{"s", "/", "L"}]}]}], " ", "*)"}], "\[IndentingNewLine]", 
     "\[IndentingNewLine]", 
     RowBox[{
      RowBox[{
       RowBox[{"v", "[", "t_", "]"}], " ", ":=", " ", 
       RowBox[{"1", " ", "-", " ", 
        RowBox[{"Sqrt", "[", " ", 
         RowBox[{"1", " ", "+", " ", 
          RowBox[{"t", "^", "2"}]}], "]"}]}]}], " ", ";", 
      "\[IndentingNewLine]", 
      RowBox[{
       RowBox[{"vSmall", "[", "t_", "]"}], " ", ":=", " ", 
       RowBox[{
        RowBox[{"-", " ", 
         RowBox[{"t", "^", "2"}]}], "/", "2"}]}], " ", ";", 
      "\[IndentingNewLine]", 
      RowBox[{
       RowBox[{"vBig", "[", "t_", "]"}], " ", ":=", " ", 
       RowBox[{"-", "t"}]}], " ", ";", "\[IndentingNewLine]", 
      "\[IndentingNewLine]", 
      RowBox[{"p1", " ", ":=", " ", 
       RowBox[{"Plot", "[", 
        RowBox[{
         RowBox[{"v", "[", "t", "]"}], ",", 
         RowBox[{"{", 
          RowBox[{"t", ",", "0", ",", "r"}], "}"}], ",", " ", 
         RowBox[{"AxesLabel", "\[Rule]", 
          RowBox[{"{", 
           RowBox[{"s", "/", "L"}], "}"}]}], ",", " ", 
         RowBox[{"PlotStyle", "\[Rule]", " ", "Thick"}]}], "]"}]}], " ", ";", 
      "\[IndentingNewLine]", 
      RowBox[{"p2", " ", ":=", " ", 
       RowBox[{"Plot", "[", 
        RowBox[{
         RowBox[{"{", 
          RowBox[{
           RowBox[{"vSmall", "[", "t", "]"}], ",", 
           RowBox[{"vBig", "[", "t", "]"}]}], "}"}], ",", 
         RowBox[{"{", 
          RowBox[{"t", ",", "0", ",", "r"}], "}"}], ",", " ", 
         RowBox[{"PlotStyle", " ", "\[Rule]", " ", 
          RowBox[{"{", 
           RowBox[{"Dashed", ",", " ", "Thick"}], "}"}]}]}], "]"}]}], " ", 
      ";", "\[IndentingNewLine]", "\[IndentingNewLine]", 
      RowBox[{"Show", "[", 
       RowBox[{"{", 
        RowBox[{"p1", ",", " ", "p2"}], "}"}], "]"}]}]}], 
    "\[IndentingNewLine]", "]"}], "\[IndentingNewLine]", ",", " ", 
   RowBox[{"{", 
    RowBox[{
     RowBox[{"{", 
      RowBox[{"r", ",", "5"}], "}"}], ",", " ", "1", ",", " ", "30", ",", " ", 
     RowBox[{"Appearance", "\[Rule]", "\"\<Labeled\>\""}]}], "}"}]}], 
  "\[IndentingNewLine]", "]"}]], "Input",
 CellChangeTimes->{{3.558019120362675*^9, 3.558019320442119*^9}, {
   3.5580193526759624`*^9, 3.558019354218051*^9}, {3.5580194415740476`*^9, 
   3.5580194535527325`*^9}, {3.5580195373295245`*^9, 3.558019576280752*^9}, {
   3.558019606814499*^9, 3.5580196141569185`*^9}, 3.558019677013514*^9, {
   3.558019840113843*^9, 3.5580198959660373`*^9}, {3.558020582223289*^9, 
   3.5580206085997972`*^9}, {3.55964156833224*^9, 3.5596416366711483`*^9}, {
   3.5596418058418245`*^9, 3.559641816097411*^9}, {3.55964185244849*^9, 
   3.5596418627790813`*^9}, {3.759315141502014*^9, 
   3.759315156038788*^9}},ExpressionUUID->"d60f667f-715f-46cf-99ac-\
a2781cc345ac"],

Cell[BoxData[
 TagBox[
  StyleBox[
   DynamicModuleBox[{$CellContext`r$$ = 30., Typeset`show$$ = True, 
    Typeset`bookmarkList$$ = {}, Typeset`bookmarkMode$$ = "Menu", 
    Typeset`animator$$, Typeset`animvar$$ = 1, Typeset`name$$ = 
    "\"untitled\"", Typeset`specs$$ = {{{
       Hold[$CellContext`r$$], 5}, 1, 30}}, Typeset`size$$ = {
    360., {103., 108.}}, Typeset`update$$ = 0, Typeset`initDone$$, 
    Typeset`skipInitDone$$ = True, $CellContext`r$7856$$ = 0}, 
    DynamicBox[Manipulate`ManipulateBoxes[
     1, StandardForm, "Variables" :> {$CellContext`r$$ = 5}, 
      "ControllerVariables" :> {
        Hold[$CellContext`r$$, $CellContext`r$7856$$, 0]}, 
      "OtherVariables" :> {
       Typeset`show$$, Typeset`bookmarkList$$, Typeset`bookmarkMode$$, 
        Typeset`animator$$, Typeset`animvar$$, Typeset`name$$, 
        Typeset`specs$$, Typeset`size$$, Typeset`update$$, Typeset`initDone$$,
         Typeset`skipInitDone$$}, "Body" :> 
      Module[{$CellContext`v$, $CellContext`t$, $CellContext`vSmall$, \
$CellContext`vBig$}, $CellContext`v$[
           Pattern[$CellContext`t, 
            Blank[]]] := 1 - Sqrt[1 + $CellContext`t^2]; $CellContext`vSmall$[
           Pattern[$CellContext`t, 
            Blank[]]] := (-$CellContext`t^2)/2; $CellContext`vBig$[
           Pattern[$CellContext`t, 
            Blank[]]] := -$CellContext`t; $CellContext`p1 := Plot[
           $CellContext`v$[$CellContext`t$], {$CellContext`t$, 
            0, $CellContext`r$$}, 
           AxesLabel -> {$CellContext`s/$CellContext`L}, PlotStyle -> 
           Thick]; $CellContext`p2 := Plot[{
            $CellContext`vSmall$[$CellContext`t$], 
            $CellContext`vBig$[$CellContext`t$]}, {$CellContext`t$, 
            0, $CellContext`r$$}, PlotStyle -> {Dashed, Thick}]; 
        Show[{$CellContext`p1, $CellContext`p2}]], 
      "Specifications" :> {{{$CellContext`r$$, 5}, 1, 30, Appearance -> 
         "Labeled"}}, "Options" :> {}, "DefaultOptions" :> {}],
     ImageSizeCache->{405., {148., 154.}},
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
 CellChangeTimes->{3.559641820163644*^9, 
  3.759315157314562*^9},ExpressionUUID->"1f325bf7-e717-490f-8064-\
0c83a0bedd21"]
}, Open  ]],

Cell[BoxData[
 RowBox[{
  RowBox[{"f2Big", " ", "=", 
   RowBox[{"DynamicModule", "[", 
    RowBox[{
     RowBox[{"{", 
      RowBox[{"r", "=", "30.`"}], "}"}], ",", 
     RowBox[{"Module", "[", 
      RowBox[{
       RowBox[{"{", 
        RowBox[{"v$", ",", "t$", ",", "vSmall$", ",", "vBig$"}], "}"}], ",", 
       RowBox[{
        RowBox[{
         RowBox[{"v$", "[", "t_", "]"}], ":=", 
         RowBox[{"1", "-", 
          SqrtBox[
           RowBox[{"1", "+", 
            SuperscriptBox["t", "2"]}]]}]}], ";", 
        RowBox[{
         RowBox[{"vSmall$", "[", "t_", "]"}], ":=", 
         RowBox[{"-", 
          FractionBox[
           SuperscriptBox["t", "2"], "2"]}]}], ";", 
        RowBox[{
         RowBox[{"vBig$", "[", "t_", "]"}], ":=", 
         RowBox[{"-", "t"}]}], ";", 
        RowBox[{"p1", ":=", 
         RowBox[{"Plot", "[", 
          RowBox[{
           RowBox[{"v$", "[", "t$", "]"}], ",", 
           RowBox[{"{", 
            RowBox[{"t$", ",", "0", ",", "r"}], "}"}], ",", 
           RowBox[{"AxesLabel", "\[Rule]", 
            RowBox[{"{", 
             FractionBox["s", "L"], "}"}]}], ",", 
           RowBox[{"PlotStyle", "\[Rule]", "Thick"}]}], "]"}]}], ";", 
        RowBox[{"p2", ":=", 
         RowBox[{"Plot", "[", 
          RowBox[{
           RowBox[{"{", 
            RowBox[{
             RowBox[{"vSmall$", "[", "t$", "]"}], ",", 
             RowBox[{"vBig$", "[", "t$", "]"}]}], "}"}], ",", 
           RowBox[{"{", 
            RowBox[{"t$", ",", "0", ",", "r"}], "}"}], ",", 
           RowBox[{"PlotStyle", "\[Rule]", 
            RowBox[{"{", 
             RowBox[{"Dashed", ",", "Thick"}], "}"}]}]}], "]"}]}], ";", 
        RowBox[{"Show", "[", 
         RowBox[{"{", 
          RowBox[{"p1", ",", "p2"}], "}"}], "]"}]}]}], "]"}]}], "]"}]}], 
  ";"}]], "Input",
 GeneratedCell->False,
 CellAutoOverwrite->False,
 CellChangeTimes->{{3.759315407765345*^9, 
  3.759315420963209*^9}},ExpressionUUID->"7884a2dc-05f8-4b57-8e41-\
dd9b3e9f6036"],

Cell[BoxData[
 RowBox[{
  RowBox[{"f2b", " ", "=", " ", 
   RowBox[{"DynamicModule", "[", 
    RowBox[{
     RowBox[{"{", 
      RowBox[{"r", "=", "5"}], "}"}], ",", 
     RowBox[{"Module", "[", 
      RowBox[{
       RowBox[{"{", 
        RowBox[{"v$", ",", "t$", ",", "vSmall$", ",", "vBig$"}], "}"}], ",", 
       RowBox[{
        RowBox[{
         RowBox[{"v$", "[", "t_", "]"}], ":=", 
         RowBox[{"1", "-", 
          SqrtBox[
           RowBox[{"1", "+", 
            SuperscriptBox["t", "2"]}]]}]}], ";", 
        RowBox[{
         RowBox[{"vSmall$", "[", "t_", "]"}], ":=", 
         RowBox[{"-", 
          FractionBox[
           SuperscriptBox["t", "2"], "2"]}]}], ";", 
        RowBox[{
         RowBox[{"vBig$", "[", "t_", "]"}], ":=", 
         RowBox[{"-", "t"}]}], ";", 
        RowBox[{"p1", ":=", 
         RowBox[{"Plot", "[", 
          RowBox[{
           RowBox[{"v$", "[", "t$", "]"}], ",", 
           RowBox[{"{", 
            RowBox[{"t$", ",", "0", ",", "r"}], "}"}], ",", 
           RowBox[{"AxesLabel", "\[Rule]", 
            RowBox[{"{", 
             FractionBox["s", "L"], "}"}]}], ",", 
           RowBox[{"PlotStyle", "\[Rule]", "Thick"}]}], "]"}]}], ";", 
        RowBox[{"p2", ":=", 
         RowBox[{"Plot", "[", 
          RowBox[{
           RowBox[{"{", 
            RowBox[{
             RowBox[{"vSmall$", "[", "t$", "]"}], ",", 
             RowBox[{"vBig$", "[", "t$", "]"}]}], "}"}], ",", 
           RowBox[{"{", 
            RowBox[{"t$", ",", "0", ",", "r"}], "}"}], ",", 
           RowBox[{"PlotStyle", "\[Rule]", 
            RowBox[{"{", 
             RowBox[{"Dashed", ",", "Thick"}], "}"}]}]}], "]"}]}], ";", 
        RowBox[{"Show", "[", 
         RowBox[{"{", 
          RowBox[{"p1", ",", "p2"}], "}"}], "]"}]}]}], "]"}]}], "]"}]}], 
  ";"}]], "Input",
 GeneratedCell->False,
 CellAutoOverwrite->False,
 CellChangeTimes->{{3.75931516581396*^9, 3.7593151721920223`*^9}, {
  3.759315241873357*^9, 
  3.759315255369734*^9}},ExpressionUUID->"c5f23da5-af91-4a75-8278-\
f5f3848f5651"],

Cell[CellGroupData[{

Cell[BoxData[{
 RowBox[{"peeters`exportForLatex", "[", 
  RowBox[{"\"\<modernOpticsProblemSet1Fig2b\>\"", ",", " ", "f2b"}], 
  "]"}], "\[IndentingNewLine]", 
 RowBox[{"peeters`exportForLatex", "[", 
  RowBox[{"\"\<modernOpticsProblemSet1Fig2bBig\>\"", ",", " ", "f2Big"}], 
  "]"}]}], "Input",
 CellChangeTimes->{{3.759315441149476*^9, 3.7593154690168257`*^9}, {
  3.759316552006806*^9, 3.759316554239644*^9}, {3.759317616789672*^9, 
  3.759317617132555*^9}, {3.759318046913392*^9, 
  3.759318062649929*^9}},ExpressionUUID->"2e0cdd3c-e53f-4751-8cc7-\
efcd743520be"],

Cell[BoxData[
 RowBox[{"{", 
  RowBox[{"\<\"modernOpticsProblemSet1Fig2bBig.eps\"\>", 
   ",", "\<\"modernOpticsProblemSet1Fig2bBigpn.png\"\>"}], "}"}]], "Output",
 CellChangeTimes->{3.759315472359967*^9, 3.7593176251041317`*^9, 
  3.759318058441346*^9},ExpressionUUID->"f8901f12-030f-41c3-bc8e-\
052107f2bbbc"]
}, Open  ]],

Cell[BoxData[
 RowBox[{"(*", 
  RowBox[{"Integrate", "[", 
   RowBox[{
    RowBox[{"L", "/", 
     RowBox[{"Sqrt", "[", 
      RowBox[{
       RowBox[{"L", "^", "2"}], " ", "+", " ", 
       RowBox[{"x", "^", "2"}]}], "]"}]}], ",", " ", 
    RowBox[{"{", 
     RowBox[{"x", ",", " ", "0", ",", " ", "s"}], "}"}]}], "]"}], 
  "*)"}]], "Input",
 CellChangeTimes->{{3.558049832740393*^9, 3.5580498806231318`*^9}, {
  3.558050717609005*^9, 3.558050721170209*^9}, {3.759315203021996*^9, 
  3.7593152466713753`*^9}, {3.759316546313204*^9, 
  3.759316567304399*^9}},ExpressionUUID->"e8e91123-6fcc-4e24-80bd-\
4d87441a5f74"],

Cell[BoxData[""], "Input",
 CellChangeTimes->{{3.558050708275471*^9, 
  3.5580507083194733`*^9}},ExpressionUUID->"fbe30e9a-06cd-42e8-be28-\
18fc8d714336"],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"\[IndentingNewLine]", "\[IndentingNewLine]", 
  RowBox[{"Manipulate", "[", "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{"Module", "[", 
     RowBox[{
      RowBox[{"{", 
       RowBox[{"u", ",", " ", "t", ",", " ", "uSmall", ",", " ", "uBig"}], 
       "}"}], ",", "\[IndentingNewLine]", 
      RowBox[{
       RowBox[{
        RowBox[{"u", "[", "t_", "]"}], " ", ":=", " ", 
        RowBox[{"Log", "[", " ", 
         RowBox[{"t", " ", "+", " ", 
          RowBox[{"Sqrt", "[", " ", 
           RowBox[{"1", " ", "+", " ", 
            RowBox[{"t", "^", "2"}]}], "]"}]}], "]"}]}], " ", ";", 
       "\[IndentingNewLine]", 
       RowBox[{
        RowBox[{"uSmall", "[", "t_", "]"}], " ", ":=", " ", "t"}], " ", ";", 
       "\[IndentingNewLine]", 
       RowBox[{
        RowBox[{"uBig", "[", "t_", "]"}], " ", ":=", " ", 
        RowBox[{
         RowBox[{"Log", "[", "t", "]"}], " ", "+", " ", 
         RowBox[{"Log", "[", "2", "]"}]}]}], " ", ";", "\[IndentingNewLine]", 
       "\[IndentingNewLine]", 
       RowBox[{"p1", " ", ":=", " ", 
        RowBox[{"Plot", "[", 
         RowBox[{
          RowBox[{"u", "[", "t", "]"}], ",", 
          RowBox[{"{", 
           RowBox[{"t", ",", "0", ",", "r"}], "}"}], ",", " ", 
          RowBox[{"AxesLabel", "\[Rule]", 
           RowBox[{"{", 
            RowBox[{"s", "/", "L"}], "}"}]}], ",", " ", 
          RowBox[{"PlotStyle", " ", "\[Rule]", "  ", "Thick"}]}], "]"}]}], 
       "  ", ";", "\[IndentingNewLine]", 
       RowBox[{"p2", " ", ":=", " ", 
        RowBox[{"Plot", "[", 
         RowBox[{
          RowBox[{"{", 
           RowBox[{
            RowBox[{"uSmall", "[", "t", "]"}], ",", 
            RowBox[{"uBig", "[", "t", "]"}]}], "}"}], ",", 
          RowBox[{"{", 
           RowBox[{"t", ",", "0", ",", "r"}], "}"}], ",", " ", 
          RowBox[{"PlotStyle", " ", "\[Rule]", " ", 
           RowBox[{"{", 
            RowBox[{"Dashed", ",", " ", "Thick"}], "}"}]}]}], "]"}]}], " ", 
       ";", "\[IndentingNewLine]", "\[IndentingNewLine]", 
       RowBox[{"Show", "[", 
        RowBox[{"{", 
         RowBox[{"p1", ",", " ", "p2"}], "}"}], "]"}]}]}], 
     "\[IndentingNewLine]", "]"}], "\[IndentingNewLine]", ",", " ", 
    RowBox[{"{", 
     RowBox[{
      RowBox[{"{", 
       RowBox[{"r", ",", "4"}], "}"}], ",", " ", "1", ",", " ", "30", ",", 
      " ", 
      RowBox[{"Appearance", "\[Rule]", "\"\<Labeled\>\""}]}], "}"}]}], 
   "\[IndentingNewLine]", "]"}]}]], "Input",
 CellChangeTimes->{{3.558051301910425*^9, 3.558051373752534*^9}, {
   3.558051460622503*^9, 3.558051463662677*^9}, {3.5596414522305994`*^9, 
   3.559641510845952*^9}, 3.559641826179988*^9, {3.759316588459971*^9, 
   3.7593165885942183`*^9}, {3.75931664332096*^9, 
   3.759316671459648*^9}},ExpressionUUID->"27c6a29d-b90c-495a-9bcf-\
0752ca4c4833"],

Cell[BoxData[
 TagBox[
  StyleBox[
   DynamicModuleBox[{$CellContext`r$$ = 4, Typeset`show$$ = True, 
    Typeset`bookmarkList$$ = {}, Typeset`bookmarkMode$$ = "Menu", 
    Typeset`animator$$, Typeset`animvar$$ = 1, Typeset`name$$ = 
    "\"untitled\"", Typeset`specs$$ = {{{
       Hold[$CellContext`r$$], 4}, 1, 30}}, Typeset`size$$ = {
    360., {104., 108.}}, Typeset`update$$ = 0, Typeset`initDone$$, 
    Typeset`skipInitDone$$ = True, $CellContext`r$25033$$ = 0}, 
    DynamicBox[Manipulate`ManipulateBoxes[
     1, StandardForm, "Variables" :> {$CellContext`r$$ = 4}, 
      "ControllerVariables" :> {
        Hold[$CellContext`r$$, $CellContext`r$25033$$, 0]}, 
      "OtherVariables" :> {
       Typeset`show$$, Typeset`bookmarkList$$, Typeset`bookmarkMode$$, 
        Typeset`animator$$, Typeset`animvar$$, Typeset`name$$, 
        Typeset`specs$$, Typeset`size$$, Typeset`update$$, Typeset`initDone$$,
         Typeset`skipInitDone$$}, "Body" :> 
      Module[{$CellContext`u$, $CellContext`t$, $CellContext`uSmall$, \
$CellContext`uBig$}, $CellContext`u$[
           Pattern[$CellContext`t, 
            Blank[]]] := 
         Log[$CellContext`t + 
           Sqrt[1 + $CellContext`t^2]]; $CellContext`uSmall$[
           Pattern[$CellContext`t, 
            Blank[]]] := $CellContext`t; $CellContext`uBig$[
           Pattern[$CellContext`t, 
            Blank[]]] := Log[$CellContext`t] + Log[2]; $CellContext`p1 := Plot[
           $CellContext`u$[$CellContext`t$], {$CellContext`t$, 
            0, $CellContext`r$$}, 
           AxesLabel -> {$CellContext`s/$CellContext`L}, PlotStyle -> 
           Thick]; $CellContext`p2 := Plot[{
            $CellContext`uSmall$[$CellContext`t$], 
            $CellContext`uBig$[$CellContext`t$]}, {$CellContext`t$, 
            0, $CellContext`r$$}, PlotStyle -> {Dashed, Thick}]; 
        Show[{$CellContext`p1, $CellContext`p2}]], 
      "Specifications" :> {{{$CellContext`r$$, 4}, 1, 30, Appearance -> 
         "Labeled"}}, "Options" :> {}, "DefaultOptions" :> {}],
     ImageSizeCache->{405., {149., 155.}},
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
 CellChangeTimes->{3.5580513779367733`*^9, 3.5580514647637396`*^9, 
  3.559641514680171*^9, 3.559641828630128*^9, 
  3.759316694283938*^9},ExpressionUUID->"2b3135b7-3fb7-4218-a6d4-\
431ef45a8685"]
}, Open  ]],

Cell[BoxData[
 RowBox[{
  RowBox[{"fc", " ", "=", " ", 
   RowBox[{"DynamicModule", "[", 
    RowBox[{
     RowBox[{"{", 
      RowBox[{"r", "=", "4"}], "}"}], ",", 
     RowBox[{"Module", "[", 
      RowBox[{
       RowBox[{"{", 
        RowBox[{"u$", ",", "t$", ",", "uSmall$", ",", "uBig$"}], "}"}], ",", 
       RowBox[{
        RowBox[{
         RowBox[{"u$", "[", "t_", "]"}], ":=", 
         RowBox[{"Log", "[", 
          RowBox[{"t", "+", 
           SqrtBox[
            RowBox[{"1", "+", 
             SuperscriptBox["t", "2"]}]]}], "]"}]}], ";", 
        RowBox[{
         RowBox[{"uSmall$", "[", "t_", "]"}], ":=", "t"}], ";", 
        RowBox[{
         RowBox[{"uBig$", "[", "t_", "]"}], ":=", 
         RowBox[{
          RowBox[{"Log", "[", "t", "]"}], "+", 
          RowBox[{"Log", "[", "2", "]"}]}]}], ";", 
        RowBox[{"p1", ":=", 
         RowBox[{"Plot", "[", 
          RowBox[{
           RowBox[{"u$", "[", "t$", "]"}], ",", 
           RowBox[{"{", 
            RowBox[{"t$", ",", "0", ",", "r"}], "}"}], ",", 
           RowBox[{"AxesLabel", "\[Rule]", 
            RowBox[{"{", 
             FractionBox["s", "L"], "}"}]}], ",", 
           RowBox[{"PlotStyle", "\[Rule]", "Thick"}]}], "]"}]}], ";", 
        RowBox[{"p2", ":=", 
         RowBox[{"Plot", "[", 
          RowBox[{
           RowBox[{"{", 
            RowBox[{
             RowBox[{"uSmall$", "[", "t$", "]"}], ",", 
             RowBox[{"uBig$", "[", "t$", "]"}]}], "}"}], ",", 
           RowBox[{"{", 
            RowBox[{"t$", ",", "0", ",", "r"}], "}"}], ",", 
           RowBox[{"PlotStyle", "\[Rule]", 
            RowBox[{"{", 
             RowBox[{"Dashed", ",", "Thick"}], "}"}]}]}], "]"}]}], ";", 
        RowBox[{"Show", "[", 
         RowBox[{"{", 
          RowBox[{"p1", ",", "p2"}], "}"}], "]"}]}]}], "]"}]}], "]"}]}], 
  ";"}]], "Input",
 GeneratedCell->False,
 CellAutoOverwrite->False,
 CellChangeTimes->{
  3.759316706407886*^9, {3.759316774428731*^9, 
   3.759316782693021*^9}},ExpressionUUID->"2fb0c3db-9e8e-425c-bc2c-\
74c499f8f2f6"],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"peeters`exportForLatex", "[", 
  RowBox[{"\"\<modernOpticsProblemSet1Fig2c\>\"", ",", " ", "fc"}], 
  "]"}]], "Input",
 CellChangeTimes->{{3.759316812454015*^9, 
  3.759316845515459*^9}},ExpressionUUID->"df8d4ea0-a5b1-42da-92ff-\
d0bce47b29bf"],

Cell[BoxData[
 RowBox[{"{", 
  RowBox[{"\<\"modernOpticsProblemSet1Fig2c.eps\"\>", 
   ",", "\<\"modernOpticsProblemSet1Fig2cpn.png\"\>"}], "}"}]], "Output",
 CellChangeTimes->{
  3.759316917007683*^9},ExpressionUUID->"af916c7d-126a-4804-9c31-\
9317dfc728e5"]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"Manipulate", "[", "\[IndentingNewLine]", 
  RowBox[{
   RowBox[{"Module", "[", 
    RowBox[{
     RowBox[{"{", 
      RowBox[{"x", ",", " ", "y", ",", " ", "xSmall", ",", " ", "xBig"}], 
      "}"}], ",", "\[IndentingNewLine]", 
     RowBox[{
      RowBox[{
       RowBox[{"x", "[", "y_", "]"}], " ", ":=", " ", 
       RowBox[{"Log", "[", " ", 
        RowBox[{"1", " ", "-", " ", "y", " ", "+", " ", 
         RowBox[{"Sqrt", "[", " ", 
          RowBox[{
           RowBox[{"-", "y"}], " ", "+", " ", 
           RowBox[{"y", "^", "2"}]}], "]"}]}], "]"}]}], " ", ";", 
      "\[IndentingNewLine]", 
      RowBox[{
       RowBox[{"xSmall", "[", "y_", "]"}], " ", ":=", " ", 
       RowBox[{"Sqrt", "[", 
        RowBox[{"-", "y"}], "]"}]}], " ", ";", "\[IndentingNewLine]", 
      RowBox[{
       RowBox[{"xBig", "[", "y_", "]"}], " ", ":=", " ", 
       RowBox[{"Log", "[", " ", 
        RowBox[{
         RowBox[{"-", "2"}], " ", "y"}], "]"}]}], " ", ";", 
      "\[IndentingNewLine]", "\[IndentingNewLine]", 
      RowBox[{"p1", " ", ":=", " ", 
       RowBox[{"Plot", "[", 
        RowBox[{
         RowBox[{"x", "[", "t", "]"}], ",", 
         RowBox[{"{", 
          RowBox[{"t", ",", "0", ",", "r"}], "}"}], ",", " ", 
         RowBox[{"AxesLabel", "\[Rule]", 
          RowBox[{"{", 
           RowBox[{"s", "/", "L"}], "}"}]}], ",", 
         RowBox[{"PlotStyle", "\[Rule]", "Thick"}]}], "]"}]}], " ", ";", 
      "\[IndentingNewLine]", 
      RowBox[{"p2", " ", ":=", " ", 
       RowBox[{"Plot", "[", 
        RowBox[{
         RowBox[{"{", 
          RowBox[{
           RowBox[{"xSmall", "[", "t", "]"}], ",", 
           RowBox[{"xBig", "[", "t", "]"}]}], "}"}], ",", 
         RowBox[{"{", 
          RowBox[{"t", ",", "0", ",", "r"}], "}"}], ",", " ", 
         RowBox[{"PlotStyle", "\[Rule]", 
          RowBox[{"{", 
           RowBox[{"Dashed", ",", "Thick"}], "}"}]}]}], "]"}]}], " ", ";", 
      "\[IndentingNewLine]", "\[IndentingNewLine]", 
      RowBox[{"Show", "[", 
       RowBox[{"{", 
        RowBox[{"p1", ",", " ", "p2"}], "}"}], "]"}]}]}], 
    "\[IndentingNewLine]", "]"}], "\[IndentingNewLine]", ",", " ", 
   RowBox[{"{", 
    RowBox[{
     RowBox[{"{", 
      RowBox[{"r", ",", 
       RowBox[{"-", "5"}]}], "}"}], ",", " ", 
     RowBox[{"-", "1"}], ",", " ", 
     RowBox[{"-", "30"}], ",", " ", 
     RowBox[{"Appearance", "\[Rule]", "\"\<Labeled\>\""}]}], "}"}]}], 
  "\[IndentingNewLine]", "]"}]], "Input",
 CellChangeTimes->{{3.558085494561655*^9, 3.558085616622637*^9}, {
   3.558085653163727*^9, 3.558085665051407*^9}, {3.5596413396901627`*^9, 
   3.559641438673824*^9}, {3.5596415302650623`*^9, 3.5596415370934534`*^9}, 
   3.5596418377076473`*^9, {3.559641881159133*^9, 3.559641885448378*^9}, {
   3.759316797822213*^9, 3.7593167983182783`*^9}, {3.759317097309018*^9, 
   3.759317108184799*^9}},ExpressionUUID->"9d6e6b19-eedc-4469-9462-\
bd2f5a0e94e3"],

Cell[BoxData[
 TagBox[
  StyleBox[
   DynamicModuleBox[{$CellContext`r$$ = -30., Typeset`show$$ = True, 
    Typeset`bookmarkList$$ = {}, Typeset`bookmarkMode$$ = "Menu", 
    Typeset`animator$$, Typeset`animvar$$ = 1, Typeset`name$$ = 
    "\"untitled\"", Typeset`specs$$ = {{{
       Hold[$CellContext`r$$], -5}, -1, -30}}, Typeset`size$$ = {
    360., {106., 111.}}, Typeset`update$$ = 0, Typeset`initDone$$, 
    Typeset`skipInitDone$$ = True, $CellContext`r$71100$$ = 0}, 
    DynamicBox[Manipulate`ManipulateBoxes[
     1, StandardForm, "Variables" :> {$CellContext`r$$ = -5}, 
      "ControllerVariables" :> {
        Hold[$CellContext`r$$, $CellContext`r$71100$$, 0]}, 
      "OtherVariables" :> {
       Typeset`show$$, Typeset`bookmarkList$$, Typeset`bookmarkMode$$, 
        Typeset`animator$$, Typeset`animvar$$, Typeset`name$$, 
        Typeset`specs$$, Typeset`size$$, Typeset`update$$, Typeset`initDone$$,
         Typeset`skipInitDone$$}, "Body" :> 
      Module[{$CellContext`x$, $CellContext`y$, $CellContext`xSmall$, \
$CellContext`xBig$}, $CellContext`x$[
           Pattern[$CellContext`y, 
            Blank[]]] := 
         Log[1 - $CellContext`y + 
           Sqrt[-$CellContext`y + $CellContext`y^2]]; $CellContext`xSmall$[
           Pattern[$CellContext`y, 
            Blank[]]] := Sqrt[-$CellContext`y]; $CellContext`xBig$[
           Pattern[$CellContext`y, 
            Blank[]]] := Log[(-2) $CellContext`y]; $CellContext`p1 := Plot[
           $CellContext`x$[$CellContext`t], {$CellContext`t, 
            0, $CellContext`r$$}, 
           AxesLabel -> {$CellContext`s/$CellContext`L}, PlotStyle -> 
           Thick]; $CellContext`p2 := Plot[{
            $CellContext`xSmall$[$CellContext`t], 
            $CellContext`xBig$[$CellContext`t]}, {$CellContext`t, 
            0, $CellContext`r$$}, PlotStyle -> {Dashed, Thick}]; 
        Show[{$CellContext`p1, $CellContext`p2}]], 
      "Specifications" :> {{{$CellContext`r$$, -5}, -1, -30, Appearance -> 
         "Labeled"}}, "Options" :> {}, "DefaultOptions" :> {}],
     ImageSizeCache->{405., {151., 157.}},
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
  3.558085628097293*^9, 3.558085668045578*^9, 3.559641093588086*^9, {
   3.5596414298493195`*^9, 3.5596414415059857`*^9}, 3.5596418388567133`*^9, 
   3.759317119684347*^9},ExpressionUUID->"582b8b8a-5837-41c4-86d7-\
ed2794ad5e92"]
}, Open  ]],

Cell[BoxData[
 RowBox[{
  RowBox[{"f2dBig", " ", "=", " ", 
   RowBox[{"DynamicModule", "[", 
    RowBox[{
     RowBox[{"{", 
      RowBox[{"r", "=", 
       RowBox[{"-", "30.`"}]}], "}"}], ",", 
     RowBox[{"Module", "[", 
      RowBox[{
       RowBox[{"{", 
        RowBox[{"x$", ",", "y$", ",", "xSmall$", ",", "xBig$"}], "}"}], ",", 
       RowBox[{
        RowBox[{
         RowBox[{"x$", "[", "y_", "]"}], ":=", 
         RowBox[{"Log", "[", 
          RowBox[{"1", "-", "y", "+", 
           SqrtBox[
            RowBox[{
             RowBox[{"-", "y"}], "+", 
             SuperscriptBox["y", "2"]}]]}], "]"}]}], ";", 
        RowBox[{
         RowBox[{"xSmall$", "[", "y_", "]"}], ":=", 
         SqrtBox[
          RowBox[{"-", "y"}]]}], ";", 
        RowBox[{
         RowBox[{"xBig$", "[", "y_", "]"}], ":=", 
         RowBox[{"Log", "[", 
          RowBox[{
           RowBox[{"-", "2"}], " ", "y"}], "]"}]}], ";", 
        RowBox[{"p1", ":=", 
         RowBox[{"Plot", "[", 
          RowBox[{
           RowBox[{"x$", "[", "t", "]"}], ",", 
           RowBox[{"{", 
            RowBox[{"t", ",", "0", ",", "r"}], "}"}], ",", 
           RowBox[{"AxesLabel", "\[Rule]", 
            RowBox[{"{", 
             FractionBox["s", "L"], "}"}]}], ",", 
           RowBox[{"PlotStyle", "\[Rule]", "Thick"}]}], "]"}]}], ";", 
        RowBox[{"p2", ":=", 
         RowBox[{"Plot", "[", 
          RowBox[{
           RowBox[{"{", 
            RowBox[{
             RowBox[{"xSmall$", "[", "t", "]"}], ",", 
             RowBox[{"xBig$", "[", "t", "]"}]}], "}"}], ",", 
           RowBox[{"{", 
            RowBox[{"t", ",", "0", ",", "r"}], "}"}], ",", 
           RowBox[{"PlotStyle", "\[Rule]", 
            RowBox[{"{", 
             RowBox[{"Dashed", ",", "Thick"}], "}"}]}]}], "]"}]}], ";", 
        RowBox[{"Show", "[", 
         RowBox[{"{", 
          RowBox[{"p1", ",", "p2"}], "}"}], "]"}]}]}], "]"}]}], "]"}]}], 
  ";"}]], "Input",
 GeneratedCell->False,
 CellAutoOverwrite->False,
 CellChangeTimes->{{3.759317935863381*^9, 
  3.7593179469790993`*^9}},ExpressionUUID->"fbafffbd-01f3-439a-8770-\
1400c7e1dba4"],

Cell[BoxData[
 RowBox[{
  RowBox[{"f2d", " ", "=", " ", 
   RowBox[{"DynamicModule", "[", 
    RowBox[{
     RowBox[{"{", 
      RowBox[{"r", "=", 
       RowBox[{"-", "5"}]}], "}"}], ",", 
     RowBox[{"Module", "[", 
      RowBox[{
       RowBox[{"{", 
        RowBox[{"x$", ",", "y$", ",", "xSmall$", ",", "xBig$"}], "}"}], ",", 
       RowBox[{
        RowBox[{
         RowBox[{"x$", "[", "y_", "]"}], ":=", 
         RowBox[{"Log", "[", 
          RowBox[{"1", "-", "y", "+", 
           SqrtBox[
            RowBox[{
             RowBox[{"-", "y"}], "+", 
             SuperscriptBox["y", "2"]}]]}], "]"}]}], ";", 
        RowBox[{
         RowBox[{"xSmall$", "[", "y_", "]"}], ":=", 
         SqrtBox[
          RowBox[{"-", "y"}]]}], ";", 
        RowBox[{
         RowBox[{"xBig$", "[", "y_", "]"}], ":=", 
         RowBox[{"Log", "[", 
          RowBox[{
           RowBox[{"-", "2"}], " ", "y"}], "]"}]}], ";", 
        RowBox[{"p1", ":=", 
         RowBox[{"Plot", "[", 
          RowBox[{
           RowBox[{"x$", "[", "t", "]"}], ",", 
           RowBox[{"{", 
            RowBox[{"t", ",", "0", ",", "r"}], "}"}], ",", 
           RowBox[{"AxesLabel", "\[Rule]", 
            RowBox[{"{", 
             FractionBox["s", "L"], "}"}]}], ",", 
           RowBox[{"PlotStyle", "\[Rule]", "Thick"}]}], "]"}]}], ";", 
        RowBox[{"p2", ":=", 
         RowBox[{"Plot", "[", 
          RowBox[{
           RowBox[{"{", 
            RowBox[{
             RowBox[{"xSmall$", "[", "t", "]"}], ",", 
             RowBox[{"xBig$", "[", "t", "]"}]}], "}"}], ",", 
           RowBox[{"{", 
            RowBox[{"t", ",", "0", ",", "r"}], "}"}], ",", 
           RowBox[{"PlotStyle", "\[Rule]", 
            RowBox[{"{", 
             RowBox[{"Dashed", ",", "Thick"}], "}"}]}]}], "]"}]}], ";", 
        RowBox[{"Show", "[", 
         RowBox[{"{", 
          RowBox[{"p1", ",", "p2"}], "}"}], "]"}]}]}], "]"}]}], "]"}]}], 
  ";"}]], "Input",
 GeneratedCell->False,
 CellAutoOverwrite->False,
 CellChangeTimes->{{3.759317137073988*^9, 
  3.7593171655772533`*^9}},ExpressionUUID->"0d0dccfe-a430-486b-964d-\
95d422b293d8"],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"peeters`exportForLatex", "[", 
  RowBox[{"\"\<modernOpticsProblemSet1Fig2d\>\"", ",", " ", "f2d"}], 
  "]"}]], "Input",
 CellChangeTimes->{{3.759317306282351*^9, 3.759317312886547*^9}, {
  3.759317953413062*^9, 
  3.759317955330998*^9}},ExpressionUUID->"3418db41-1f7f-4ad2-b29a-\
bba87c18dc24"],

Cell[BoxData[
 RowBox[{"{", 
  RowBox[{"\<\"modernOpticsProblemSet1Fig2d.eps\"\>", 
   ",", "\<\"modernOpticsProblemSet1Fig2dpn.png\"\>"}], "}"}]], "Output",
 CellChangeTimes->{
  3.759317316085767*^9},ExpressionUUID->"ec25336f-484c-49de-a95e-\
f6351a73acf1"]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"\[IndentingNewLine]", 
  RowBox[{"peeters`exportForLatex", "[", 
   RowBox[{"\"\<modernOpticsProblemSet1Fig2dBig\>\"", ",", " ", "f2dBig"}], 
   "]"}]}]], "Input",
 CellChangeTimes->{{3.759317920522973*^9, 3.759317920536186*^9}, {
  3.7593179573630257`*^9, 
  3.759317966654529*^9}},ExpressionUUID->"e37dd715-087e-4435-8098-\
c02027003563"],

Cell[BoxData[
 RowBox[{"{", 
  RowBox[{"\<\"modernOpticsProblemSet1Fig2dBig.eps\"\>", 
   ",", "\<\"modernOpticsProblemSet1Fig2dBigpn.png\"\>"}], "}"}]], "Output",
 CellChangeTimes->{
  3.759317971793824*^9},ExpressionUUID->"c0d66999-8180-4047-bebe-\
7b437288f8f8"]
}, Open  ]]
},
WindowSize->{1345, 765},
WindowMargins->{{Automatic, 96}, {Automatic, 0}},
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
Cell[1257, 32, 424, 10, 73, "Input",ExpressionUUID->"2d943419-d32d-42a9-832b-01ac8ca79dde"],
Cell[1684, 44, 201, 3, 34, "Output",ExpressionUUID->"eba89586-4a6f-4c3c-b10c-f0676afe3670"]
}, Open  ]],
Cell[CellGroupData[{
Cell[1922, 52, 3309, 78, 325, "Input",ExpressionUUID->"d60f667f-715f-46cf-99ac-a2781cc345ac"],
Cell[5234, 132, 2534, 50, 321, "Output",ExpressionUUID->"1f325bf7-e717-490f-8064-0c83a0bedd21"]
}, Open  ]],
Cell[7783, 185, 1993, 56, 192, "Input",ExpressionUUID->"7884a2dc-05f8-4b57-8e41-dd9b3e9f6036"],
Cell[9779, 243, 2043, 57, 192, "Input",ExpressionUUID->"c5f23da5-af91-4a75-8278-f5f3848f5651"],
Cell[CellGroupData[{
Cell[11847, 304, 566, 11, 52, "Input",ExpressionUUID->"2e0cdd3c-e53f-4751-8cc7-efcd743520be"],
Cell[12416, 317, 311, 6, 34, "Output",ExpressionUUID->"f8901f12-030f-41c3-bc8e-052107f2bbbc"]
}, Open  ]],
Cell[12742, 326, 616, 16, 30, "Input",ExpressionUUID->"e8e91123-6fcc-4e24-80bd-4d87441a5f74"],
Cell[13361, 344, 154, 3, 30, "Input",ExpressionUUID->"fbe30e9a-06cd-42e8-be28-18fc8d714336"],
Cell[CellGroupData[{
Cell[13540, 351, 2827, 67, 325, "Input",ExpressionUUID->"27c6a29d-b90c-495a-9bcf-0752ca4c4833"],
Cell[16370, 420, 2653, 53, 323, "Output",ExpressionUUID->"2b3135b7-3fb7-4218-a6d4-431ef45a8685"]
}, Open  ]],
Cell[19038, 476, 2053, 57, 171, "Input",ExpressionUUID->"2fb0c3db-9e8e-425c-bc2c-74c499f8f2f6"],
Cell[CellGroupData[{
Cell[21116, 537, 268, 6, 30, "Input",ExpressionUUID->"df8d4ea0-a5b1-42da-92ff-d0bce47b29bf"],
Cell[21387, 545, 259, 6, 34, "Output",ExpressionUUID->"af916c7d-126a-4804-9c31-9317dfc728e5"]
}, Open  ]],
Cell[CellGroupData[{
Cell[21683, 556, 2923, 71, 283, "Input",ExpressionUUID->"9d6e6b19-eedc-4469-9462-bd2f5a0e94e3"],
Cell[24609, 629, 2732, 54, 327, "Output",ExpressionUUID->"582b8b8a-5837-41c4-86d7-ed2794ad5e92"]
}, Open  ]],
Cell[27356, 686, 2127, 60, 178, "Input",ExpressionUUID->"fbafffbd-01f3-439a-8770-1400c7e1dba4"],
Cell[29486, 748, 2121, 60, 178, "Input",ExpressionUUID->"0d0dccfe-a430-486b-964d-95d422b293d8"],
Cell[CellGroupData[{
Cell[31632, 812, 318, 7, 30, "Input",ExpressionUUID->"3418db41-1f7f-4ad2-b29a-bba87c18dc24"],
Cell[31953, 821, 259, 6, 34, "Output",ExpressionUUID->"ec25336f-484c-49de-a95e-f6351a73acf1"]
}, Open  ]],
Cell[CellGroupData[{
Cell[32249, 832, 364, 8, 52, "Input",ExpressionUUID->"e37dd715-087e-4435-8098-c02027003563"],
Cell[32616, 842, 265, 6, 34, "Output",ExpressionUUID->"c0d66999-8180-4047-bebe-7b437288f8f8"]
}, Open  ]]
}
]
*)

(* NotebookSignature @wD3K#WKoqrosC1Ddj05QwZt *)
