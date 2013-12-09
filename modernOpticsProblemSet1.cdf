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
NotebookDataLength[     17632,        434]
NotebookOptionsPosition[     17682,        418]
NotebookOutlinePosition[     18025,        433]
CellTagsIndexPosition[     17982,        430]
WindowFrame->Normal*)

(* Beginning of Notebook Content *)
Notebook[{

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
           RowBox[{"s", "/", "L"}], "}"}]}]}], "]"}]}], " ", ";", 
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
         RowBox[{"PlotStyle", " ", "\[Rule]", " ", "Dashed"}]}], "]"}]}], " ",
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
   3.5596418627790813`*^9}}],

Cell[BoxData[
 TagBox[
  StyleBox[
   DynamicModuleBox[{$CellContext`r$$ = 5, Typeset`show$$ = True, 
    Typeset`bookmarkList$$ = {}, Typeset`bookmarkMode$$ = "Menu", 
    Typeset`animator$$, Typeset`animvar$$ = 1, Typeset`name$$ = 
    "\"untitled\"", Typeset`specs$$ = {{{
       Hold[$CellContext`r$$], 5}, 1, 30}}, Typeset`size$$ = {
    360., {107., 110.}}, Typeset`update$$ = 0, Typeset`initDone$$, 
    Typeset`skipInitDone$$ = True, $CellContext`r$89906$$ = 0}, 
    DynamicBox[Manipulate`ManipulateBoxes[
     1, StandardForm, "Variables" :> {$CellContext`r$$ = 5}, 
      "ControllerVariables" :> {
        Hold[$CellContext`r$$, $CellContext`r$89906$$, 0]}, 
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
           AxesLabel -> {$CellContext`s/$CellContext`L}]; $CellContext`p2 := 
         Plot[{
            $CellContext`vSmall$[$CellContext`t$], 
            $CellContext`vBig$[$CellContext`t$]}, {$CellContext`t$, 
            0, $CellContext`r$$}, PlotStyle -> Dashed]; 
        Show[{$CellContext`p1, $CellContext`p2}]], 
      "Specifications" :> {{{$CellContext`r$$, 5}, 1, 30, Appearance -> 
         "Labeled"}}, "Options" :> {}, "DefaultOptions" :> {}],
     ImageSizeCache->{409., {152., 157.}},
     SingleEvaluation->True],
    Deinitialization:>None,
    DynamicModuleValues:>{},
    SynchronousInitialization->True,
    UnsavedVariables:>{Typeset`initDone$$},
    UntrackedVariables:>{Typeset`size$$}], "Manipulate",
   Deployed->True,
   StripOnInput->False],
  Manipulate`InterpretManipulate[1]]], "Output",
 CellChangeTimes->{3.559641820163644*^9}]
}, Open  ]],

Cell[BoxData[
 RowBox[{
  RowBox[{"(*", 
   RowBox[{"Integrate", "[", 
    RowBox[{
     RowBox[{"L", "/", 
      RowBox[{"Sqrt", "[", 
       RowBox[{
        RowBox[{"L", "^", "2"}], " ", "+", " ", 
        RowBox[{"x", "^", "2"}]}], "]"}]}], ",", " ", 
     RowBox[{"{", 
      RowBox[{"x", ",", " ", "0", ",", " ", "s"}], "}"}]}], "]"}], "*)"}], 
  "\[IndentingNewLine]"}]], "Input",
 CellChangeTimes->{{3.558049832740393*^9, 3.5580498806231318`*^9}, {
  3.558050717609005*^9, 3.558050721170209*^9}}],

Cell[BoxData[""], "Input",
 CellChangeTimes->{{3.558050708275471*^9, 3.5580507083194733`*^9}}],

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
            RowBox[{"s", "/", "L"}], "}"}]}]}], "]"}]}], " ", ";", 
       "\[IndentingNewLine]", 
       RowBox[{"p2", " ", ":=", " ", 
        RowBox[{"Plot", "[", 
         RowBox[{
          RowBox[{"{", 
           RowBox[{
            RowBox[{"uSmall", "[", "t", "]"}], ",", 
            RowBox[{"uBig", "[", "t", "]"}]}], "}"}], ",", 
          RowBox[{"{", 
           RowBox[{"t", ",", "0", ",", "r"}], "}"}], ",", " ", 
          RowBox[{"PlotStyle", " ", "\[Rule]", " ", "Dashed"}]}], "]"}]}], 
       " ", ";", "\[IndentingNewLine]", "\[IndentingNewLine]", 
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
   3.559641510845952*^9}, 3.559641826179988*^9}],

Cell[BoxData[
 TagBox[
  StyleBox[
   DynamicModuleBox[{$CellContext`r$$ = 4, Typeset`show$$ = True, 
    Typeset`bookmarkList$$ = {}, Typeset`bookmarkMode$$ = "Menu", 
    Typeset`animator$$, Typeset`animvar$$ = 1, Typeset`name$$ = 
    "\"untitled\"", Typeset`specs$$ = {{{
       Hold[$CellContext`r$$], 4}, 1, 30}}, Typeset`size$$ = {
    360., {106., 111.}}, Typeset`update$$ = 0, Typeset`initDone$$, 
    Typeset`skipInitDone$$ = True, $CellContext`r$90702$$ = 0}, 
    DynamicBox[Manipulate`ManipulateBoxes[
     1, StandardForm, "Variables" :> {$CellContext`r$$ = 4}, 
      "ControllerVariables" :> {
        Hold[$CellContext`r$$, $CellContext`r$90702$$, 0]}, 
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
           AxesLabel -> {$CellContext`s/$CellContext`L}]; $CellContext`p2 := 
         Plot[{
            $CellContext`uSmall$[$CellContext`t$], 
            $CellContext`uBig$[$CellContext`t$]}, {$CellContext`t$, 
            0, $CellContext`r$$}, PlotStyle -> Dashed]; 
        Show[{$CellContext`p1, $CellContext`p2}]], 
      "Specifications" :> {{{$CellContext`r$$, 4}, 1, 30, Appearance -> 
         "Labeled"}}, "Options" :> {}, "DefaultOptions" :> {}],
     ImageSizeCache->{409., {152., 157.}},
     SingleEvaluation->True],
    Deinitialization:>None,
    DynamicModuleValues:>{},
    SynchronousInitialization->True,
    UnsavedVariables:>{Typeset`initDone$$},
    UntrackedVariables:>{Typeset`size$$}], "Manipulate",
   Deployed->True,
   StripOnInput->False],
  Manipulate`InterpretManipulate[1]]], "Output",
 CellChangeTimes->{3.5580513779367733`*^9, 3.5580514647637396`*^9, 
  3.559641514680171*^9, 3.559641828630128*^9}]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"\[IndentingNewLine]", "\[IndentingNewLine]", 
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
            RowBox[{"s", "/", "L"}], "}"}]}]}], "]"}]}], " ", ";", 
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
          RowBox[{"PlotStyle", " ", "\[Rule]", " ", "Dashed"}]}], "]"}]}], 
       " ", ";", "\[IndentingNewLine]", "\[IndentingNewLine]", 
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
   "\[IndentingNewLine]", "]"}]}]], "Input",
 CellChangeTimes->{{3.558085494561655*^9, 3.558085616622637*^9}, {
   3.558085653163727*^9, 3.558085665051407*^9}, {3.5596413396901627`*^9, 
   3.559641438673824*^9}, {3.5596415302650623`*^9, 3.5596415370934534`*^9}, 
   3.5596418377076473`*^9, {3.559641881159133*^9, 3.559641885448378*^9}}],

Cell[BoxData[
 TagBox[
  StyleBox[
   DynamicModuleBox[{$CellContext`r$$ = -5, Typeset`show$$ = True, 
    Typeset`bookmarkList$$ = {}, Typeset`bookmarkMode$$ = "Menu", 
    Typeset`animator$$, Typeset`animvar$$ = 1, Typeset`name$$ = 
    "\"untitled\"", Typeset`specs$$ = {{{
       Hold[$CellContext`r$$], -5}, -1, -30}}, Typeset`size$$ = {
    360., {109., 114.}}, Typeset`update$$ = 0, Typeset`initDone$$, 
    Typeset`skipInitDone$$ = True, $CellContext`r$92111$$ = 0}, 
    DynamicBox[Manipulate`ManipulateBoxes[
     1, StandardForm, "Variables" :> {$CellContext`r$$ = -5}, 
      "ControllerVariables" :> {
        Hold[$CellContext`r$$, $CellContext`r$92111$$, 0]}, 
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
           AxesLabel -> {$CellContext`s/$CellContext`L}]; $CellContext`p2 := 
         Plot[{
            $CellContext`xSmall$[$CellContext`t], 
            $CellContext`xBig$[$CellContext`t]}, {$CellContext`t, 
            0, $CellContext`r$$}, PlotStyle -> Dashed]; 
        Show[{$CellContext`p1, $CellContext`p2}]], 
      "Specifications" :> {{{$CellContext`r$$, -5}, -1, -30, Appearance -> 
         "Labeled"}}, "Options" :> {}, "DefaultOptions" :> {}],
     ImageSizeCache->{409., {155., 160.}},
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
  3.558085628097293*^9, 3.558085668045578*^9, 3.559641093588086*^9, {
   3.5596414298493195`*^9, 3.5596414415059857`*^9}, 3.5596418388567133`*^9}]
}, Open  ]]
},
WindowSize->{1345, 765},
WindowMargins->{{Automatic, 96}, {Automatic, 0}},
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
Cell[1257, 32, 3062, 73, 312, "Input"],
Cell[4322, 107, 2353, 47, 326, "Output"]
}, Open  ]],
Cell[6690, 157, 504, 14, 52, "Input"],
Cell[7197, 173, 94, 1, 31, "Input"],
Cell[CellGroupData[{
Cell[7316, 178, 2519, 61, 312, "Input"],
Cell[9838, 241, 2472, 50, 326, "Output"]
}, Open  ]],
Cell[CellGroupData[{
Cell[12347, 296, 2768, 66, 312, "Input"],
Cell[15118, 364, 2548, 51, 332, "Output"]
}, Open  ]]
}
]
*)

(* End of internal cache information *)

(* NotebookSignature 3wDaZ5l14HHjbCw4Y1vsptD6 *)
