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
NotebookDataLength[     13926,        333]
NotebookOptionsPosition[     14493,        329]
NotebookOutlinePosition[     14838,        344]
CellTagsIndexPosition[     14795,        341]
WindowFrame->Normal*)

(* Beginning of Notebook Content *)
Notebook[{

Cell[CellGroupData[{
Cell[BoxData[
 RowBox[{
  RowBox[{"(*", 
   RowBox[{"ClearAll", "[", 
    RowBox[{"af", ",", " ", "afn"}], "]"}], "*)"}], "\[IndentingNewLine]", 
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
           RowBox[{"afn", "[", 
            RowBox[{"n", ",", " ", "t", ",", " ", "p"}], "]"}], "^", "2"}], 
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
       RowBox[{"n", ",", "0.25", ",", "\"\<h/\[Lambda]\>\""}], "}"}], ",", 
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
       "\[IndentingNewLine]", "\[IndentingNewLine]", "\[IndentingNewLine]", 
       RowBox[{
        RowBox[{"afn", "[", 
         RowBox[{"n_", ",", "t_", ",", " ", "p_"}], "]"}], " ", "=", " ", 
        RowBox[{
         RowBox[{"2", " ", 
          RowBox[{"Cos", "[", " ", 
           RowBox[{"2", " ", "Pi", " ", 
            RowBox[{"Sqrt", "[", "2", "]"}], "n", " ", 
            RowBox[{"Sin", "[", "t", "]"}], 
            RowBox[{"Cos", "[", 
             RowBox[{"p", " ", "-", " ", 
              RowBox[{"Pi", "/", "4"}]}], "]"}]}], " ", "]"}]}], " ", "-", 
         " ", 
         RowBox[{"2", " ", 
          RowBox[{"Cos", "[", " ", 
           RowBox[{"2", " ", "Pi", " ", 
            RowBox[{"Sqrt", "[", "2", "]"}], " ", "n", " ", 
            RowBox[{"Sin", "[", "t", "]"}], " ", 
            RowBox[{"Cos", "[", 
             RowBox[{"p", " ", "+", " ", 
              RowBox[{"Pi", "/", "4"}]}], "]"}]}], "]"}]}]}]}], " ", ";", 
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
   "]"}]}]], "Input",
 CellOpen->False,
 CellChangeTimes->{{3.6354266415727215`*^9, 3.635426660801155*^9}, {
  3.6354629612721124`*^9, 3.635462962379714*^9}, {3.635551569227548*^9, 
  3.6355516472760124`*^9}, {3.63555169374267*^9, 3.6355517021431503`*^9}}],

Cell[BoxData[
 TagBox[
  StyleBox[
   DynamicModuleBox[{$CellContext`n$$ = 0.25, $CellContext`pg$$ = 
    "Quality", $CellContext`range$$ = 18, Typeset`show$$ = True, 
    Typeset`bookmarkList$$ = {}, Typeset`bookmarkMode$$ = "Menu", 
    Typeset`animator$$, Typeset`animvar$$ = 1, Typeset`name$$ = 
    "\"untitled\"", Typeset`specs$$ = {{{
       Hold[$CellContext`range$$], 18}, 1, 25}, {{
       Hold[$CellContext`n$$], 0.25, "h/\[Lambda]"}, 0, 3}, {{
       Hold[$CellContext`pg$$], "Quality", "Plot Rendering"}, {
      "Quality", "Speed"}}}, Typeset`size$$ = {348., {284., 292.}}, 
    Typeset`update$$ = 0, Typeset`initDone$$, Typeset`skipInitDone$$ = 
    False, $CellContext`range$8367$$ = 0, $CellContext`n$8368$$ = 
    0, $CellContext`pg$8369$$ = False}, 
    DynamicBox[Manipulate`ManipulateBoxes[
     1, StandardForm, 
      "Variables" :> {$CellContext`n$$ = 0.25, $CellContext`pg$$ = 
        "Quality", $CellContext`range$$ = 18}, "ControllerVariables" :> {
        Hold[$CellContext`range$$, $CellContext`range$8367$$, 0], 
        Hold[$CellContext`n$$, $CellContext`n$8368$$, 0], 
        Hold[$CellContext`pg$$, $CellContext`pg$8369$$, False]}, 
      "OtherVariables" :> {
       Typeset`show$$, Typeset`bookmarkList$$, Typeset`bookmarkMode$$, 
        Typeset`animator$$, Typeset`animvar$$, Typeset`name$$, 
        Typeset`specs$$, Typeset`size$$, Typeset`update$$, Typeset`initDone$$,
         Typeset`skipInitDone$$}, "Body" :> Show[
        ParametricPlot3D[{$CellContext`afn[$CellContext`n$$, $CellContext`t, \
$CellContext`p]^2 $CellContext`rcap[$CellContext`t, $CellContext`p]}, \
{$CellContext`t, 0, Pi}, {$CellContext`p, 0, Pi/2}, 
         AxesLabel -> {$CellContext`x, $CellContext`y, $CellContext`z}, 
         PlotRange -> {{0, $CellContext`range$$}, {
           0, $CellContext`range$$}, {-$CellContext`range$$, \
$CellContext`range$$}}, PlotStyle -> Directive[
           Opacity[0.6]], 
         ViewPoint -> {2.616433634989163, 1.0060144996548517`, 
          1.89531260223257}, 
         PerformanceGoal -> $CellContext`pg$$], $CellContext`axes], 
      "Specifications" :> {{{$CellContext`range$$, 18}, 1, 
         25}, {{$CellContext`n$$, 0.25, "h/\[Lambda]"}, 0, 3, Appearance -> 
         "Labeled"}, {{$CellContext`pg$$, "Quality", "Plot Rendering"}, {
         "Quality", "Speed"}}}, "Options" :> {}, "DefaultOptions" :> {}],
     ImageSizeCache->{490., {380., 387.}},
     SingleEvaluation->True],
    Deinitialization:>None,
    DynamicModuleValues:>{},
    Initialization:>({{$CellContext`afn[
           Pattern[$CellContext`n, 
            Blank[]], 
           Pattern[$CellContext`t, 
            Blank[]], 
           Pattern[$CellContext`p, 
            Blank[]]] = 
         2 Cos[2 Sqrt[2] $CellContext`n Pi Cos[$CellContext`p - Pi/4] 
             Sin[$CellContext`t]] - 2 
          Cos[2 Sqrt[2] $CellContext`n Pi Cos[$CellContext`p + Pi/4] 
            Sin[$CellContext`t]], $CellContext`rcap = {
          Sin[#] Cos[#2], Sin[#] Sin[#2], 
           Cos[#]}& , $CellContext`axes = Graphics3D[{
            RGBColor[1, 0, 0], 
            Arrow[
             Tube[{{0, 0, 0}, {1.5, 0, 0}}], 0.05], 
            RGBColor[0, 0, 1], 
            Arrow[
             Tube[{{0, 0, 0}, {0, 1.5, 0}}], 0.05], 
            RGBColor[0., 0.19999999999999996`, 0.], 
            Arrow[
             Tube[{{0, 0, 0}, {0, 0, 1.5}}], 0.05], 
            Text["\!\(\*SubscriptBox[\(e\), \(1\)]\)", {1.6, 0, 0}], 
            Text["\!\(\*SubscriptBox[\(e\), \(2\)]\)", {0, 1.6, 0}], 
            Text[
            "\!\(\*SubscriptBox[\(e\), \(3\)]\)", {
             0, 0, 1.6}]}]}; {$CellContext`rcap = {
           Sin[#] Cos[#2], Sin[#] Sin[#2], 
            Cos[#]}& ; $CellContext`afn[
            Pattern[$CellContext`n, 
             Blank[]], 
            Pattern[$CellContext`t, 
             Blank[]], 
            Pattern[$CellContext`p, 
             Blank[]]] = 
          2 Cos[2 Pi Sqrt[2] $CellContext`n Sin[$CellContext`t] 
              Cos[$CellContext`p - Pi/4]] - 2 
           Cos[
            2 Pi Sqrt[2] $CellContext`n Sin[$CellContext`t] 
             Cos[$CellContext`p + Pi/4]]; $CellContext`asz = 
          1.5; $CellContext`toff = 0.1; $CellContext`axes = Graphics3D[{Red, 
             Arrow[
              Tube[{{0, 0, 0}, {$CellContext`asz, 0, 0}}], 0.05], Blue, 
             Arrow[
              Tube[{{0, 0, 0}, {0, $CellContext`asz, 0}}], 0.05], 
             Darker[Green, 0.8], 
             Arrow[
              Tube[{{0, 0, 0}, {0, 0, $CellContext`asz}}], 0.05], 
             Text[
             "\!\(\*SubscriptBox[\(e\), \(1\)]\)", {$CellContext`asz + \
$CellContext`toff, 0, 0}], 
             Text[
             "\!\(\*SubscriptBox[\(e\), \(2\)]\)", {
              0, $CellContext`asz + $CellContext`toff, 0}], 
             Text[
             "\!\(\*SubscriptBox[\(e\), \(3\)]\)", {
              0, 0, $CellContext`asz + $CellContext`toff}]}]; Null}}; 
     Typeset`initDone$$ = True),
    SynchronousInitialization->True,
    UnsavedVariables:>{Typeset`initDone$$},
    UntrackedVariables:>{Typeset`size$$}], "Manipulate",
   Deployed->True,
   StripOnInput->False],
  Manipulate`InterpretManipulate[1]]], "Output",
 CellChangeTimes->{{3.6354266544583435`*^9, 3.635426662563958*^9}, 
   3.6354629670129223`*^9, 3.6355516545524282`*^9, {3.6355516985579453`*^9, 
   3.6355517028771925`*^9}}]
}, Open  ]]
},
WindowSize->{707, 637},
WindowMargins->{{343, Automatic}, {Automatic, 16}},
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
Cell[1485, 35, 7600, 177, 25, "Input",
 CellOpen->False],
Cell[9088, 214, 5389, 112, 789, "Output"]
}, Open  ]]
}
]
*)

(* End of internal cache information *)

(* NotebookSignature xxDCpavz63@bdA1NS#SGcsfF *)
