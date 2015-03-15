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
NotebookDataLength[      8342,        217]
NotebookOptionsPosition[      8773,        208]
NotebookOutlinePosition[      9330,        231]
CellTagsIndexPosition[      9287,        228]
WindowFrame->Normal*)

(* Beginning of Notebook Content *)
Notebook[{
Cell[BoxData[
 RowBox[{
  RowBox[{"(*", 
   RowBox[{
    RowBox[{"ClearAll", "[", "af", "]"}], " ", ";"}], "*)"}], 
  "\[IndentingNewLine]", "\[IndentingNewLine]", 
  RowBox[{
  "Manipulate", "[", " ", "\[IndentingNewLine]", "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{"Show", "[", "\[IndentingNewLine]", 
     RowBox[{
      RowBox[{"ParametricPlot3D", "[", " ", "\[IndentingNewLine]", 
       RowBox[{
        RowBox[{"{", 
         RowBox[{
          RowBox[{
           RowBox[{"af", "[", 
            RowBox[{"a", ",", " ", "t", ",", " ", "p"}], "]"}], "^", "2"}], 
          " ", 
          RowBox[{"rcap", "[", 
           RowBox[{"t", ",", " ", "p"}], "]"}]}], "}"}], ",", 
        "\[IndentingNewLine]", " ", 
        RowBox[{"{", 
         RowBox[{"t", ",", " ", "0", ",", " ", "Pi"}], "}"}], ",", " ", 
        "\[IndentingNewLine]", 
        RowBox[{"{", 
         RowBox[{"p", ",", " ", "0", ",", " ", 
          RowBox[{"Pi", "/", "2"}]}], "}"}], ",", " ", "\[IndentingNewLine]", 
        RowBox[{"AxesLabel", " ", "\[Rule]", " ", 
         RowBox[{"{", 
          RowBox[{"x", ",", " ", "y", ",", " ", "z"}], "}"}]}], ",", 
        "\[IndentingNewLine]", 
        RowBox[{"PlotRange", " ", "\[Rule]", " ", 
         RowBox[{"{", 
          RowBox[{
           RowBox[{"{", 
            RowBox[{"0", ",", "range"}], "}"}], ",", 
           RowBox[{"{", 
            RowBox[{"0", ",", "range"}], "}"}], ",", 
           RowBox[{"{", 
            RowBox[{
             RowBox[{"-", "range"}], ",", " ", "range"}], "}"}]}], "}"}]}], 
        ",", "\[IndentingNewLine]", 
        RowBox[{"PlotStyle", "\[Rule]", 
         RowBox[{"Directive", "[", 
          RowBox[{"Opacity", "[", "0.6", "]"}], "]"}]}], ",", 
        "\[IndentingNewLine]", 
        RowBox[{"ViewPoint", " ", "->", 
         RowBox[{"{", 
          RowBox[{
          "2.616433634989163`", ",", "1.0060144996548517`", ",", 
           "1.89531260223257`"}], "}"}]}], "\[IndentingNewLine]", ",", 
        RowBox[{"PerformanceGoal", "\[Rule]", "pg"}]}], "\[IndentingNewLine]",
        "]"}], "\[IndentingNewLine]", ",", "axes"}], "\[IndentingNewLine]", 
     "]"}], " ", "\[IndentingNewLine]", "\[IndentingNewLine]", 
    "\[IndentingNewLine]", ",", " ", 
    RowBox[{"{", 
     RowBox[{
      RowBox[{"{", 
       RowBox[{"range", ",", " ", "18"}], "}"}], ",", " ", "1", ",", " ", 
      "25"}], "}"}], "\[IndentingNewLine]", ",", 
    RowBox[{"{", 
     RowBox[{
      RowBox[{"{", 
       RowBox[{"a", ",", "0.25", ",", "\"\<s/\[Lambda]\>\""}], "}"}], ",", 
      " ", "0", ",", " ", "3", ",", " ", 
      RowBox[{"Appearance", "\[Rule]", "\"\<Labeled\>\""}]}], "}"}], 
    "\[IndentingNewLine]", ",", " ", 
    RowBox[{"{", 
     RowBox[{
      RowBox[{"{", 
       RowBox[{
       "pg", ",", " ", "\"\<Quality\>\"", ",", " ", 
        "\"\<Plot Rendering\>\""}], "}"}], ",", " ", 
      RowBox[{"{", 
       RowBox[{"\"\<Quality\>\"", ",", " ", "\"\<Speed\>\""}], "}"}]}], "}"}],
     "\[IndentingNewLine]", ",", 
    RowBox[{"Initialization", "\[RuleDelayed]", " ", 
     RowBox[{"{", "\[IndentingNewLine]", "\[IndentingNewLine]", 
      RowBox[{
       RowBox[{"rcap", " ", "=", " ", 
        RowBox[{
         RowBox[{"{", 
          RowBox[{
           RowBox[{
            RowBox[{"Sin", "[", "#1", "]"}], " ", 
            RowBox[{"Cos", "[", "#2", "]"}]}], ",", " ", 
           RowBox[{
            RowBox[{"Sin", "[", "#1", "]"}], " ", 
            RowBox[{"Sin", "[", "#2", "]"}]}], ",", " ", 
           RowBox[{"Cos", "[", "#1", "]"}]}], "}"}], " ", "&"}]}], " ", ";", 
       "\[IndentingNewLine]", "\[IndentingNewLine]", 
       RowBox[{
        RowBox[{"af", "[", 
         RowBox[{"a_", ",", "t_", ",", " ", "p_"}], "]"}], " ", "=", " ", 
        RowBox[{
         RowBox[{"2", " ", 
          RowBox[{"Cos", "[", " ", 
           RowBox[{"2", " ", "Pi", " ", "a", " ", 
            RowBox[{"Sin", "[", "t", "]"}], 
            RowBox[{"Cos", "[", 
             RowBox[{"p", " ", "-", " ", 
              RowBox[{"Pi", "/", "4"}]}], "]"}]}], " ", "]"}]}], " ", "+", 
         " ", 
         RowBox[{"2", " ", 
          RowBox[{"Cos", "[", " ", 
           RowBox[{"2", " ", "Pi", " ", "a", " ", 
            RowBox[{"Sin", "[", "t", "]"}], " ", 
            RowBox[{"Cos", "[", 
             RowBox[{"p", " ", "+", " ", 
              RowBox[{"Pi", "/", "4"}]}], "]"}]}], "]"}]}]}]}], "  ", ";", 
       "\[IndentingNewLine]", "\[IndentingNewLine]", 
       RowBox[{"asz", " ", "=", " ", "1.5"}], " ", ";", "\[IndentingNewLine]", 
       RowBox[{"toff", " ", "=", " ", "0.1"}], " ", ";", 
       "\[IndentingNewLine]", 
       RowBox[{"axes", " ", "=", " ", 
        RowBox[{"Graphics3D", "[", 
         RowBox[{"{", "\[IndentingNewLine]", 
          RowBox[{"Red", ",", 
           RowBox[{"Arrow", "[", 
            RowBox[{
             RowBox[{"Tube", "[", 
              RowBox[{"{", 
               RowBox[{
                RowBox[{"{", 
                 RowBox[{"0", ",", "0", ",", "0"}], "}"}], ",", 
                RowBox[{"{", 
                 RowBox[{"asz", ",", "0", ",", "0"}], "}"}]}], "}"}], "]"}], 
             " ", ",", " ", "0.05"}], "]"}], ",", "\[IndentingNewLine]", 
           "Blue", ",", 
           RowBox[{"Arrow", "[", 
            RowBox[{
             RowBox[{"Tube", "[", 
              RowBox[{"{", 
               RowBox[{
                RowBox[{"{", 
                 RowBox[{"0", ",", "0", ",", "0"}], "}"}], ",", 
                RowBox[{"{", 
                 RowBox[{"0", ",", "asz", ",", "0"}], "}"}]}], "}"}], "]"}], 
             " ", ",", " ", "0.05"}], "]"}], ",", "\[IndentingNewLine]", 
           RowBox[{"Darker", "[", 
            RowBox[{"Green", ",", " ", ".8"}], "]"}], ",", 
           RowBox[{"Arrow", "[", 
            RowBox[{
             RowBox[{"Tube", "[", 
              RowBox[{"{", 
               RowBox[{
                RowBox[{"{", 
                 RowBox[{"0", ",", "0", ",", "0"}], "}"}], ",", 
                RowBox[{"{", 
                 RowBox[{"0", ",", "0", ",", "asz"}], "}"}]}], "}"}], "]"}], 
             " ", ",", " ", "0.05"}], "]"}], ",", "\[IndentingNewLine]", 
           RowBox[{"Text", "[", " ", 
            RowBox[{"\"\<\!\(\*SubscriptBox[\(e\), \(1\)]\)\>\"", ",", "  ", 
             RowBox[{"{", 
              RowBox[{
               RowBox[{"asz", " ", "+", " ", "toff"}], ",", "0", ",", "0"}], 
              "}"}]}], " ", "]"}], ",", "\[IndentingNewLine]", 
           RowBox[{"Text", "[", " ", 
            RowBox[{"\"\<\!\(\*SubscriptBox[\(e\), \(2\)]\)\>\"", ",", "  ", 
             RowBox[{"{", 
              RowBox[{"0", ",", 
               RowBox[{"asz", " ", "+", " ", "toff"}], ",", "0"}], "}"}]}], 
            " ", "]"}], ",", "\[IndentingNewLine]", 
           RowBox[{"Text", "[", " ", 
            RowBox[{"\"\<\!\(\*SubscriptBox[\(e\), \(3\)]\)\>\"", ",", "  ", 
             RowBox[{"{", 
              RowBox[{"0", ",", "0", ",", 
               RowBox[{"asz", " ", "+", " ", "toff"}]}], "}"}]}], " ", 
            "]"}]}], "\[IndentingNewLine]", "}"}], "]"}]}], " ", ";"}], 
      "\[IndentingNewLine]", "}"}]}], "\[IndentingNewLine]", ",", 
    RowBox[{"SaveDefinitions", "\[Rule]", "True"}]}], "\[IndentingNewLine]", 
   "]"}]}]], "Input", "PluginEmbeddedContent",
 CellOpen->False]
},
WindowSize->{889, 1021},
WindowMargins->{{347, Automatic}, {Automatic, 0}},
Visible->True,
AuthoredSize->{889, 1021},
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
Cell[1463, 33, 7306, 173, 25, "Input",
 CellOpen->False]
}
]
*)

(* End of internal cache information *)

(* NotebookSignature 0v0fVMDVmuUNIBKAWJYuu8i0 *)
