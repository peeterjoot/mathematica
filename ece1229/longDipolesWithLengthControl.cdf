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
NotebookDataLength[      2851,         92]
NotebookOptionsPosition[      3336,         84]
NotebookOutlinePosition[      3840,        106]
CellTagsIndexPosition[      3797,        103]
WindowFrame->Normal*)

(* Beginning of Notebook Content *)
Notebook[{
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
  "]"}]], "Input", "PluginEmbeddedContent",
 CellOpen->False]
},
WindowSize->{624, 321},
Visible->True,
AuthoredSize->{624, 321},
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
Cell[1463, 33, 1869, 49, 25, "Input",
 CellOpen->False]
}
]
*)

(* End of internal cache information *)

(* NotebookSignature uv0fiQU165hUkCKVHJ6#YuMT *)
