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
NotebookDataLength[     22712,        528]
NotebookOptionsPosition[     23277,        524]
NotebookOutlinePosition[     23622,        539]
CellTagsIndexPosition[     23579,        536]
WindowFrame->Normal*)

(* Beginning of Notebook Content *)
Notebook[{

Cell[CellGroupData[{
Cell[BoxData[
 RowBox[{"Manipulate", "[", " ", "\[IndentingNewLine]", 
  RowBox[{
   RowBox[{"With", "[", " ", "\[IndentingNewLine]", 
    RowBox[{
     RowBox[{"{", "\[IndentingNewLine]", 
      RowBox[{
       RowBox[{"rcapPt", "=", "  ", 
        RowBox[{
         RowBox[{
          RowBox[{"functions", "[", 
           RowBox[{"[", "fIndex", "]"}], "]"}], "[", 
          RowBox[{"thetaP", ",", " ", "phiP"}], "]"}], " ", 
         RowBox[{"rcap", "[", 
          RowBox[{"thetaP", ",", " ", "phiP"}], "]"}]}]}], ",", 
       "\[IndentingNewLine]", 
       RowBox[{"thetacapPt", " ", "=", " ", 
        RowBox[{"thetacap", "[", 
         RowBox[{"thetaP", ",", " ", "phiP"}], "]"}]}], ",", 
       "\[IndentingNewLine]", 
       RowBox[{"phicapPt", " ", "=", " ", 
        RowBox[{"phicap", "[", 
         RowBox[{"thetaP", ",", " ", "phiP"}], "]"}]}], ",", 
       "\[IndentingNewLine]", 
       RowBox[{"vecOff", " ", "=", " ", "1.1"}]}], " ", "\[IndentingNewLine]",
       "}"}], ",", "\[IndentingNewLine]", 
     RowBox[{"Show", "[", "\[IndentingNewLine]", 
      RowBox[{
       RowBox[{"ParametricPlot3D", "[", " ", "\[IndentingNewLine]", 
        RowBox[{
         RowBox[{"{", 
          RowBox[{
           RowBox[{
            RowBox[{"functions", "[", 
             RowBox[{"[", "fIndex", "]"}], "]"}], "[", 
            RowBox[{"t", ",", " ", "p"}], "]"}], " ", 
           RowBox[{"rcap", "[", 
            RowBox[{"t", ",", " ", "p"}], "]"}]}], "}"}], ",", 
         "\[IndentingNewLine]", " ", 
         RowBox[{"{", 
          RowBox[{"t", ",", " ", "0", ",", " ", "Pi"}], "}"}], ",", " ", 
         "\[IndentingNewLine]", 
         RowBox[{"{", 
          RowBox[{"p", ",", " ", "0", ",", " ", 
           RowBox[{"2", " ", "Pi"}]}], "}"}], ",", " ", "\[IndentingNewLine]", 
         RowBox[{"AxesLabel", " ", "\[Rule]", " ", 
          RowBox[{"{", 
           RowBox[{"x", ",", " ", "y", ",", " ", "z"}], "}"}]}], ",", 
         "\[IndentingNewLine]", 
         RowBox[{"PlotRange", " ", "\[Rule]", " ", 
          RowBox[{"{", 
           RowBox[{
            RowBox[{"-", "range"}], ",", " ", "range"}], "}"}]}]}], 
        "\[IndentingNewLine]", "]"}], "\[IndentingNewLine]", ",", "axes", 
       "\[IndentingNewLine]", ",", 
       RowBox[{"Graphics3D", "[", 
        RowBox[{"{", "\[IndentingNewLine]", 
         RowBox[{"Orange", ",", 
          RowBox[{"Arrow", "[", 
           RowBox[{
            RowBox[{"Tube", "[", 
             RowBox[{"{", 
              RowBox[{"rcapPt", ",", " ", 
               RowBox[{"rcapPt", " ", "+", " ", "thetacapPt"}]}], "}"}], 
             "]"}], " ", ",", " ", "0.05"}], "]"}], ",", 
          "\[IndentingNewLine]", "Purple", ",", 
          RowBox[{"Arrow", "[", 
           RowBox[{
            RowBox[{"Tube", "[", 
             RowBox[{"{", 
              RowBox[{"rcapPt", ",", " ", 
               RowBox[{"rcapPt", " ", "+", " ", "phicapPt"}]}], "}"}], "]"}], 
            " ", ",", " ", "0.05"}], "]"}], ",", "\[IndentingNewLine]", 
          RowBox[{"Text", "[", " ", 
           RowBox[{
           "\"\<\!\(\*OverscriptBox[\(\[Theta]\), \(^\)]\)\>\"", ",", " ", 
            RowBox[{"rcapPt", " ", "+", " ", 
             RowBox[{"thetacapPt", " ", "vecOff"}]}]}], "]"}], ",", 
          "\[IndentingNewLine]", 
          RowBox[{"Text", "[", " ", 
           RowBox[{
           "\"\<\!\(\*OverscriptBox[\(\[Phi]\), \(^\)]\)\>\"", ",", " ", 
            RowBox[{"rcapPt", " ", "+", " ", 
             RowBox[{"phicapPt", " ", "vecOff"}]}]}], "]"}]}], 
         "\[IndentingNewLine]", "}"}], "]"}]}], "\[IndentingNewLine]", 
      "]"}]}], " ", "\[IndentingNewLine]", "]"}], "\[IndentingNewLine]", ",", 
   RowBox[{"{", 
    RowBox[{
     RowBox[{"{", 
      RowBox[{"thetaP", ",", " ", "0.5", " ", 
       RowBox[{"(*", 
        RowBox[{
         RowBox[{"Pi", "/", "8"}], " ", "//", " ", "N"}], "*)"}], ",", " ", 
       "\"\<\[Theta]\>\""}], "}"}], ",", " ", "0", ",", " ", "Pi", ",", " ", 
     RowBox[{"Appearance", "->", "\"\<Labeled\>\""}]}], "}"}], 
   "\[IndentingNewLine]", ",", 
   RowBox[{"{", 
    RowBox[{
     RowBox[{"{", 
      RowBox[{"phiP", ",", " ", "1", 
       RowBox[{"(*", 
        RowBox[{
         RowBox[{"Pi", "/", "8"}], " ", "//", " ", "N"}], "*)"}], ",", " ", 
       "\"\<\[Phi]\>\""}], "}"}], ",", " ", "0", ",", " ", 
     RowBox[{"2", " ", "Pi"}], ",", " ", 
     RowBox[{"Appearance", "->", "\"\<Labeled\>\""}]}], "}"}], 
   "\[IndentingNewLine]", ",", " ", 
   RowBox[{"{", 
    RowBox[{
     RowBox[{"{", 
      RowBox[{"range", ",", " ", "1.5"}], "}"}], ",", " ", "1", ",", " ", 
     "5"}], "}"}], "\[IndentingNewLine]", ",", 
   RowBox[{"{", 
    RowBox[{
     RowBox[{"{", 
      RowBox[{
      "fIndex", ",", " ", "3", ",", " ", "\"\<U(\[Theta], \[Phi])\>\""}], 
      "}"}], ",", " ", 
     RowBox[{"{", 
      RowBox[{
       RowBox[{"1", "\[Rule]", 
        RowBox[{"TraditionalForm", "[", 
         RowBox[{
          RowBox[{"functions", "[", 
           RowBox[{"[", "1", "]"}], "]"}], "[", 
          RowBox[{"\[Theta]", ",", " ", "\[Phi]"}], "]"}], "]"}]}], ",", 
       RowBox[{"2", "\[Rule]", 
        RowBox[{"TraditionalForm", "[", 
         RowBox[{
          RowBox[{"functions", "[", 
           RowBox[{"[", "2", "]"}], "]"}], "[", 
          RowBox[{"\[Theta]", ",", " ", "\[Phi]"}], "]"}], "]"}]}], ",", 
       RowBox[{"3", "\[Rule]", 
        RowBox[{"TraditionalForm", "[", 
         RowBox[{
          RowBox[{"functions", "[", 
           RowBox[{"[", "3", "]"}], "]"}], "[", 
          RowBox[{"\[Theta]", ",", " ", "\[Phi]"}], "]"}], "]"}]}]}], "}"}]}],
     "}"}], ",", "\[IndentingNewLine]", "\[IndentingNewLine]", 
   RowBox[{"Initialization", "\[RuleDelayed]", " ", 
    RowBox[{"{", "\[IndentingNewLine]", 
     RowBox[{"(*", 
      RowBox[{
       RowBox[{"Clear", "[", " ", 
        RowBox[{"rcap", ",", "thetacap", ",", " ", "phicap"}], " ", "]"}], 
       " ", ";"}], "*)"}], "\[IndentingNewLine]", 
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
      "\[IndentingNewLine]", 
      RowBox[{"phicap", " ", "=", " ", 
       RowBox[{
        RowBox[{"{", 
         RowBox[{
          RowBox[{"-", 
           RowBox[{"Sin", "[", "#2", "]"}]}], ",", " ", 
          RowBox[{"Cos", "[", "#2", "]"}], ",", " ", "0"}], "}"}], " ", 
        "&"}]}], " ", ";", "\[IndentingNewLine]", 
      RowBox[{"thetacap", " ", "=", " ", 
       RowBox[{
        RowBox[{"{", 
         RowBox[{
          RowBox[{
           RowBox[{"Cos", "[", "#1", "]"}], " ", 
           RowBox[{"Cos", "[", "#2", "]"}]}], ",", " ", 
          RowBox[{
           RowBox[{"Cos", "[", "#1", "]"}], " ", 
           RowBox[{"Sin", "[", "#2", "]"}]}], ",", " ", 
          RowBox[{"-", 
           RowBox[{"Sin", "[", "#1", "]"}]}]}], "}"}], " ", "&"}]}], " ", ";",
       "\[IndentingNewLine]", "\[IndentingNewLine]", 
      RowBox[{"(*", 
       RowBox[{
        RowBox[{"th", " ", "=", " ", "\[Theta]"}], " ", ";", 
        "\[IndentingNewLine]", 
        RowBox[{"ph", " ", "=", " ", "\[Phi]"}], " ", ";", 
        "\[IndentingNewLine]", "\[IndentingNewLine]", 
        RowBox[{"rcapV", " ", "=", " ", 
         RowBox[{"rcap", "[", 
          RowBox[{"th", ",", " ", "ph"}], "]"}]}], " ", ";", 
        "\[IndentingNewLine]", 
        RowBox[{"thetacapV", " ", "=", " ", 
         RowBox[{"thetacap", "[", " ", 
          RowBox[{"th", ",", " ", "ph"}], " ", "]"}]}], " ", ";", 
        "\[IndentingNewLine]", 
        RowBox[{"phicapV", " ", "=", " ", 
         RowBox[{"phicap", "[", " ", 
          RowBox[{"th", ",", " ", "ph"}], " ", "]"}]}], " ", ";", 
        "\[IndentingNewLine]", 
        RowBox[{
         RowBox[{
          RowBox[{
           RowBox[{
            RowBox[{
             RowBox[{
              RowBox[{
               RowBox[{
                RowBox[{
                 RowBox[{
                  RowBox[{
                   RowBox[{"rcapV", "//", "  ", "MatrixForm"}], " ", "//", 
                   " ", 
                   RowBox[{
                   "TraditionalForm", "\[IndentingNewLine]", "thetacapV"}]}], 
                  " ", "//", "  ", "MatrixForm"}], " ", "//", " ", 
                 RowBox[{
                 "TraditionalForm", "\[IndentingNewLine]", "phicapV"}]}], "//",
                 "  ", "MatrixForm"}], " ", "//", " ", 
               RowBox[{
               "TraditionalForm", "\[IndentingNewLine]", 
                "\[IndentingNewLine]", 
                RowBox[{"rcapV", " ", ".", " ", "rcapV"}]}]}], " ", "//", " ", 
              RowBox[{"Simplify", "\[IndentingNewLine]", 
               RowBox[{"thetacapV", " ", ".", " ", "thetacapV"}]}]}], " ", "//",
              " ", 
             RowBox[{"Simplify", "\[IndentingNewLine]", 
              RowBox[{"phicapV", " ", ".", " ", "phicapV"}]}]}], " ", "//", 
            " ", 
            RowBox[{"Simplify", "\[IndentingNewLine]", 
             RowBox[{"rcapV", " ", ".", " ", "thetacapV"}]}]}], " ", "//", 
           " ", 
           RowBox[{"Simplify", "\[IndentingNewLine]", 
            RowBox[{"thetacapV", " ", ".", " ", "phicapV"}]}]}], " ", "//", 
          " ", 
          RowBox[{"Simplify", "\[IndentingNewLine]", 
           RowBox[{"phicapV", " ", ".", " ", "rcapV"}]}]}], " ", "//", " ", 
         "Simplify"}]}], "*)"}], "\[IndentingNewLine]", "\[IndentingNewLine]",
       "\[IndentingNewLine]", 
      RowBox[{"(*", 
       RowBox[{
        RowBox[{"f", " ", "=", " ", 
         RowBox[{
          RowBox[{"Sin", "[", "#1", "]"}], " ", "&"}]}], " ", ";"}], "*)"}], 
      "\[IndentingNewLine]", "\[IndentingNewLine]", 
      RowBox[{"f", " ", "=", " ", 
       RowBox[{
        RowBox[{
         RowBox[{
          RowBox[{
           RowBox[{"Cos", "[", "#1", "]"}], "^", "2"}], " ", 
          RowBox[{
           RowBox[{"Cos", "[", "#2", "]"}], "^", "2"}]}], " ", "+", " ", 
         RowBox[{
          RowBox[{"Sin", "[", "#2", "]"}], "^", "2"}]}], " ", "&"}]}], " ", 
      ";", "\[IndentingNewLine]", 
      RowBox[{"g", " ", "=", " ", 
       RowBox[{
        RowBox[{
         RowBox[{
          RowBox[{"Cos", "[", "#1", "]"}], "^", "2"}], " ", 
         RowBox[{
          RowBox[{"Cos", "[", "#2", "]"}], "^", "2"}]}], " ", "&"}]}], " ", 
      ";", "\[IndentingNewLine]", 
      RowBox[{"h", " ", "=", " ", 
       RowBox[{
        RowBox[{
         RowBox[{"Sin", "[", "#2", "]"}], "^", "2"}], " ", "&"}]}], " ", ";", 
      "\[IndentingNewLine]", "\[IndentingNewLine]", 
      RowBox[{"functions", " ", "=", " ", 
       RowBox[{"{", 
        RowBox[{"g", ",", " ", "h", ",", " ", "f"}], "}"}]}], " ", ";", 
      "\[IndentingNewLine]", "\[IndentingNewLine]", 
      RowBox[{"asz", " ", "=", " ", "1.5"}], " ", ";", "\[IndentingNewLine]", 
      RowBox[{"toff", " ", "=", " ", "0.1"}], " ", ";", "\[IndentingNewLine]", 
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
              RowBox[{"asz", " ", "+", " ", "toff"}]}], "}"}]}], " ", "]"}]}],
          "\[IndentingNewLine]", "}"}], "]"}]}], " ", ";"}], 
     "\[IndentingNewLine]", "}"}]}], ",", "\[IndentingNewLine]", 
   RowBox[{"SaveDefinitions", "\[Rule]", "True"}]}], "\[IndentingNewLine]", 
  "]"}]], "Input",
 CellOpen->False,
 CellChangeTimes->{{3.6314001423096886`*^9, 3.63140023255245*^9}, {
   3.6314002737542243`*^9, 3.631400289907355*^9}, {3.6314029802402782`*^9, 
   3.6314030051785226`*^9}, {3.631403044450692*^9, 3.631403178302431*^9}, {
   3.631403218118101*^9, 3.6314033229459863`*^9}, {3.6314040656024246`*^9, 
   3.6314040867105618`*^9}, {3.6314059236726336`*^9, 3.631405924624235*^9}, 
   3.6314063883661585`*^9, {3.6314064416716557`*^9, 3.6314064431536584`*^9}, {
   3.631407491257599*^9, 3.6314076278357453`*^9}, {3.6314082558968*^9, 
   3.631408259463606*^9}, {3.6314082935380683`*^9, 3.6314082981868763`*^9}, {
   3.6314083954549527`*^9, 3.631408433839221*^9}, {3.631408703595916*^9, 
   3.6314087218848486`*^9}, {3.631409457363279*^9, 3.6314094717896047`*^9}, {
   3.631409551248246*^9, 3.631409552839449*^9}, {3.6314108704738135`*^9, 
   3.631410893983257*^9}, 3.631495972692727*^9, {3.631496111096642*^9, 
   3.6314961547911415`*^9}, {3.6314961865839596`*^9, 
   3.6314962039419527`*^9}, {3.6314962517966895`*^9, 3.631496328349068*^9}, 
   3.6314963830781984`*^9}],

Cell[BoxData[
 TagBox[
  StyleBox[
   DynamicModuleBox[{$CellContext`fIndex$$ = 3, $CellContext`phiP$$ = 
    1, $CellContext`range$$ = 1.5, $CellContext`thetaP$$ = 0.5, 
    Typeset`show$$ = True, Typeset`bookmarkList$$ = {}, 
    Typeset`bookmarkMode$$ = "Menu", Typeset`animator$$, Typeset`animvar$$ = 
    1, Typeset`name$$ = "\"untitled\"", Typeset`specs$$ = {{{
       Hold[$CellContext`thetaP$$], 0.5, "\[Theta]"}, 0, Pi}, {{
       Hold[$CellContext`phiP$$], 1, "\[Phi]"}, 0, 2 Pi}, {{
       Hold[$CellContext`range$$], 1.5}, 1, 5}, {{
       Hold[$CellContext`fIndex$$], 3, "U(\[Theta], \[Phi])"}, {
      1 -> TraditionalForm[
        Cos[$CellContext`\[Theta]]^2 Cos[$CellContext`\[Phi]]^2], 2 -> 
       TraditionalForm[Sin[$CellContext`\[Phi]]^2], 3 -> 
       TraditionalForm[
        Cos[$CellContext`\[Theta]]^2 Cos[$CellContext`\[Phi]]^2 + 
         Sin[$CellContext`\[Phi]]^2]}}}, Typeset`size$$ = {
    480., {251., 259.}}, Typeset`update$$ = 0, Typeset`initDone$$, 
    Typeset`skipInitDone$$ = False, $CellContext`thetaP$10211$$ = 
    0, $CellContext`phiP$10212$$ = 0, $CellContext`range$10213$$ = 
    0, $CellContext`fIndex$10214$$ = False}, 
    DynamicBox[Manipulate`ManipulateBoxes[
     1, StandardForm, 
      "Variables" :> {$CellContext`fIndex$$ = 3, $CellContext`phiP$$ = 
        1, $CellContext`range$$ = 1.5, $CellContext`thetaP$$ = 0.5}, 
      "ControllerVariables" :> {
        Hold[$CellContext`thetaP$$, $CellContext`thetaP$10211$$, 0], 
        Hold[$CellContext`phiP$$, $CellContext`phiP$10212$$, 0], 
        Hold[$CellContext`range$$, $CellContext`range$10213$$, 0], 
        Hold[$CellContext`fIndex$$, $CellContext`fIndex$10214$$, False]}, 
      "OtherVariables" :> {
       Typeset`show$$, Typeset`bookmarkList$$, Typeset`bookmarkMode$$, 
        Typeset`animator$$, Typeset`animvar$$, Typeset`name$$, 
        Typeset`specs$$, Typeset`size$$, Typeset`update$$, Typeset`initDone$$,
         Typeset`skipInitDone$$}, "Body" :> 
      With[{$CellContext`rcapPt$ = 
         Part[$CellContext`functions, \
$CellContext`fIndex$$][$CellContext`thetaP$$, $CellContext`phiP$$] \
$CellContext`rcap[$CellContext`thetaP$$, $CellContext`phiP$$], \
$CellContext`thetacapPt$ = $CellContext`thetacap[$CellContext`thetaP$$, \
$CellContext`phiP$$], $CellContext`phicapPt$ = \
$CellContext`phicap[$CellContext`thetaP$$, $CellContext`phiP$$], \
$CellContext`vecOff$ = 1.1}, 
        Show[
         ParametricPlot3D[{
          Part[$CellContext`functions, $CellContext`fIndex$$][$CellContext`t, \
$CellContext`p] $CellContext`rcap[$CellContext`t, $CellContext`p]}, \
{$CellContext`t, 0, Pi}, {$CellContext`p, 0, 2 Pi}, 
          AxesLabel -> {$CellContext`x, $CellContext`y, $CellContext`z}, 
          PlotRange -> {-$CellContext`range$$, $CellContext`range$$}], \
$CellContext`axes, 
         Graphics3D[{Orange, 
           Arrow[
            
            Tube[{$CellContext`rcapPt$, $CellContext`rcapPt$ + \
$CellContext`thetacapPt$}], 0.05], Purple, 
           Arrow[
            
            Tube[{$CellContext`rcapPt$, $CellContext`rcapPt$ + \
$CellContext`phicapPt$}], 0.05], 
           Text[
           "\!\(\*OverscriptBox[\(\[Theta]\), \(^\)]\)", $CellContext`rcapPt$ + \
$CellContext`thetacapPt$ $CellContext`vecOff$], 
           Text[
           "\!\(\*OverscriptBox[\(\[Phi]\), \(^\)]\)", $CellContext`rcapPt$ + \
$CellContext`phicapPt$ $CellContext`vecOff$]}]]], 
      "Specifications" :> {{{$CellContext`thetaP$$, 0.5, "\[Theta]"}, 0, Pi, 
         Appearance -> "Labeled"}, {{$CellContext`phiP$$, 1, "\[Phi]"}, 0, 2 
         Pi, Appearance -> "Labeled"}, {{$CellContext`range$$, 1.5}, 1, 
         5}, {{$CellContext`fIndex$$, 3, "U(\[Theta], \[Phi])"}, {
         1 -> TraditionalForm[
           Cos[$CellContext`\[Theta]]^2 Cos[$CellContext`\[Phi]]^2], 2 -> 
          TraditionalForm[Sin[$CellContext`\[Phi]]^2], 3 -> 
          TraditionalForm[
           Cos[$CellContext`\[Theta]]^2 Cos[$CellContext`\[Phi]]^2 + 
            Sin[$CellContext`\[Phi]]^2]}}}, "Options" :> {}, 
      "DefaultOptions" :> {}],
     ImageSizeCache->{543., {365., 372.}},
     SingleEvaluation->True],
    Deinitialization:>None,
    DynamicModuleValues:>{},
    Initialization:>({{$CellContext`functions = {
          Cos[#]^2 Cos[#2]^2& , Sin[#2]^2& , Cos[#]^2 Cos[#2]^2 + 
           Sin[#2]^2& }, $CellContext`rcap = {Sin[#] Cos[#2], Sin[#] Sin[#2], 
           Cos[#]}& , $CellContext`thetacap = {
          Cos[#] Cos[#2], Cos[#] Sin[#2], -Sin[#]}& , $CellContext`phicap = {-
           Sin[#2], 
           Cos[#2], 0}& , $CellContext`axes = Graphics3D[{
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
            Cos[#]}& ; $CellContext`phicap = {-Sin[#2], 
            Cos[#2], 0}& ; $CellContext`thetacap = {
           Cos[#] Cos[#2], Cos[#] Sin[#2], -Sin[#]}& ; $CellContext`f = 
          Cos[#]^2 Cos[#2]^2 + Sin[#2]^2& ; $CellContext`g = 
          Cos[#]^2 Cos[#2]^2& ; $CellContext`h = 
          Sin[#2]^2& ; $CellContext`functions = {$CellContext`g, \
$CellContext`h, $CellContext`f}; $CellContext`asz = 1.5; $CellContext`toff = 
          0.1; $CellContext`axes = Graphics3D[{Red, 
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
 CellChangeTimes->{
  3.6314111772341347`*^9, 3.6314118412271013`*^9, 3.631441504957842*^9, 
   3.631496162090559*^9, {3.631496210508328*^9, 3.631496255084878*^9}, {
   3.6314963316932597`*^9, 3.6314963543745565`*^9}, 3.6314963868724155`*^9}]
}, Open  ]]
},
WindowSize->{833, 637},
WindowMargins->{{Automatic, 345}, {Automatic, 61}},
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
Cell[1485, 35, 14838, 346, 25, "Input",
 CellOpen->False],
Cell[16326, 383, 6935, 138, 759, "Output"]
}, Open  ]]
}
]
*)

(* End of internal cache information *)

(* NotebookSignature 5u0h8cdxVz95FCwYxqQ4PiIC *)
