(* Content-type: application/vnd.wolfram.cdf.text *)

(*** Wolfram CDF File ***)
(* http://www.wolfram.com/cdf *)

(* CreatedBy='Mathematica 9.0' *)

(*************************************************************************)
(*                                                                       *)
(*  The Mathematica License under which this file was created prohibits  *)
(*  restricting third parties in receipt of this file from republishing  *)
(*  or redistributing it by any means, including but not limited to      *)
(*  rights management or terms of use, without the express consent of    *)
(*  Wolfram Research, Inc. For additional information concerning CDF     *)
(*  licensing and redistribution see:                                    *)
(*                                                                       *)
(*        www.wolfram.com/cdf/adopting-cdf/licensing-options.html        *)
(*                                                                       *)
(*************************************************************************)

(*CacheID: 234*)
(* Internal cache information:
NotebookFileLineBreakTest
NotebookFileLineBreakTest
NotebookDataPosition[      1063,         20]
NotebookDataLength[      4944,        136]
NotebookOptionsPosition[      5317,        125]
NotebookOutlinePosition[      5876,        148]
CellTagsIndexPosition[      5833,        145]
WindowFrame->Normal*)

(* Beginning of Notebook Content *)
Notebook[{

Cell[CellGroupData[{
Cell[BoxData[
 RowBox[{"Manipulate", "[", "\[IndentingNewLine]", 
  RowBox[{
   RowBox[{"PolarPlot", "[", " ", "\[IndentingNewLine]", 
    RowBox[{
     RowBox[{"U", "[", 
      RowBox[{"t", ",", " ", "alpha"}], "]"}], "\[IndentingNewLine]", ",", 
     " ", 
     RowBox[{"{", 
      RowBox[{"t", ",", " ", "0", ",", " ", "Pi"}], "}"}], 
     "\[IndentingNewLine]", ",", " ", 
     RowBox[{"PlotRange", " ", "\[Rule]", " ", 
      RowBox[{"{", 
       RowBox[{
        RowBox[{"{", 
         RowBox[{
          RowBox[{"-", "4"}], ",", "4"}], "}"}], ",", " ", 
        RowBox[{"{", 
         RowBox[{"0", ",", " ", "5"}], "}"}]}], "}"}]}]}], 
    "\[IndentingNewLine]", "]"}], "\[IndentingNewLine]", ",", 
   "\[IndentingNewLine]", 
   RowBox[{"{", 
    RowBox[{
     RowBox[{"{", 
      RowBox[{
      "alpha", ",", " ", "1", ",", " ", 
       "\"\<\[Alpha] ; l = \[Alpha] \[Lambda]\>\""}], "}"}], ",", " ", "0.1", 
     ",", " ", "5", ",", " ", 
     RowBox[{"Appearance", " ", "\[Rule]", " ", "\"\<Labeled\>\""}]}], "}"}], 
   ",", "\[IndentingNewLine]", 
   RowBox[{"Initialization", "\[RuleDelayed]", " ", 
    RowBox[{"{", "\[IndentingNewLine]", 
     RowBox[{
      RowBox[{"U", " ", "=", " ", 
       RowBox[{
        RowBox[{
         RowBox[{"(", 
          RowBox[{
           RowBox[{"(", 
            RowBox[{
             RowBox[{"Cos", "[", 
              RowBox[{"Pi", " ", "#2", " ", 
               RowBox[{"Cos", "[", "#1", "]"}]}], "]"}], " ", "-", " ", 
             RowBox[{"Cos", "[", 
              RowBox[{"Pi", " ", "#2"}], "]"}]}], ")"}], "/", 
           RowBox[{"Sin", "[", "#1", "]"}]}], ")"}], "^", "2"}], " ", "&"}]}],
       " ", ";"}], "\[IndentingNewLine]", "}"}]}], ",", "\[IndentingNewLine]", 
   RowBox[{"SaveDefinitions", "\[Rule]", "True"}]}], "\[IndentingNewLine]", 
  "]"}]], "Input", "PluginEmbeddedContent"],

Cell[BoxData[
 TagBox[
  StyleBox[
   DynamicModuleBox[{$CellContext`alpha$$ = 1, Typeset`show$$ = True, 
    Typeset`bookmarkList$$ = {}, Typeset`bookmarkMode$$ = "Menu", 
    Typeset`animator$$, Typeset`animvar$$ = 1, Typeset`name$$ = 
    "\"untitled\"", Typeset`specs$$ = {{{
       Hold[$CellContext`alpha$$], 1, "\[Alpha] ; l = \[Alpha] \[Lambda]"}, 
      0.1, 5}}, Typeset`size$$ = {480., {153., 162.}}, Typeset`update$$ = 0, 
    Typeset`initDone$$, Typeset`skipInitDone$$ = 
    False, $CellContext`alpha$9429$$ = 0}, 
    DynamicBox[Manipulate`ManipulateBoxes[
     1, StandardForm, "Variables" :> {$CellContext`alpha$$ = 1}, 
      "ControllerVariables" :> {
        Hold[$CellContext`alpha$$, $CellContext`alpha$9429$$, 0]}, 
      "OtherVariables" :> {
       Typeset`show$$, Typeset`bookmarkList$$, Typeset`bookmarkMode$$, 
        Typeset`animator$$, Typeset`animvar$$, Typeset`name$$, 
        Typeset`specs$$, Typeset`size$$, Typeset`update$$, Typeset`initDone$$,
         Typeset`skipInitDone$$}, "Body" :> PolarPlot[
        $CellContext`U[$CellContext`t, $CellContext`alpha$$], {$CellContext`t,
          0, Pi}, PlotRange -> {{-4, 4}, {0, 5}}], 
      "Specifications" :> {{{$CellContext`alpha$$, 1, 
          "\[Alpha] ; l = \[Alpha] \[Lambda]"}, 0.1, 5, Appearance -> 
         "Labeled"}}, "Options" :> {}, "DefaultOptions" :> {}],
     ImageSizeCache->{543., {214., 221.}},
     SingleEvaluation->True],
    Deinitialization:>None,
    DynamicModuleValues:>{},
    Initialization:>({{$CellContext`U = ((Cos[(Pi #2) Cos[#]] - Cos[Pi #2])/
           Sin[#])^2& }; {$CellContext`U = ((Cos[(Pi #2) Cos[#]] - Cos[
             Pi #2])/Sin[#])^2& ; Null}}; Typeset`initDone$$ = True),
    SynchronousInitialization->True,
    UnsavedVariables:>{Typeset`initDone$$},
    UntrackedVariables:>{Typeset`size$$}], "Manipulate",
   Deployed->True,
   StripOnInput->False],
  Manipulate`InterpretManipulate[1]]], "Output", "PluginEmbeddedContent"]
}, Open  ]]
},
WindowSize->{624, 771},
WindowMargins->{{480, Automatic}, {Automatic, 0}},
Visible->True,
AuthoredSize->{624., 771.11},
ScrollingOptions->{"HorizontalScrollRange"->Fit,
"VerticalScrollRange"->Fit},
ShowCellBracket->False,
Deployed->True,
CellContext->Notebook,
TrackCellChangeTimes->False,
FrontEndVersion->"9.0 for Microsoft Windows (64-bit) (January 25, 2013)",
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
Cell[1485, 35, 1851, 48, 346, "Input"],
Cell[3339, 85, 1962, 37, 437, "Output"]
}, Open  ]]
}
]
*)

(* End of internal cache information *)

(* NotebookSignature MxDdaTPJGzFkOCKYX0nr@jmr *)
