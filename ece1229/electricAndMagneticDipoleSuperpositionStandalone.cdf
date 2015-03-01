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
NotebookDataLength[     18154,        435]
NotebookOptionsPosition[     18526,        424]
NotebookOutlinePosition[     19064,        446]
CellTagsIndexPosition[     19021,        443]
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
        RowBox[{"rcap", "[", 
         RowBox[{"thetaP", ",", " ", "phiP"}], "]"}]}], ",", 
       "\[IndentingNewLine]", 
       RowBox[{"fPt", " ", "=", " ", 
        RowBox[{"f", "[", 
         RowBox[{"thetaP", ",", " ", "phiP"}], "]"}]}], ",", 
       "\[IndentingNewLine]", "\[IndentingNewLine]", 
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
           RowBox[{"Norm", "[", 
            RowBox[{"f", "[", 
             RowBox[{"t", ",", " ", "p"}], "]"}], "]"}], " ", 
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
         RowBox[{"PlotStyle", "\[Rule]", 
          RowBox[{"Directive", "[", 
           RowBox[{"Opacity", "[", "0.7", "]"}], "]"}]}], ",", 
         "\[IndentingNewLine]", 
         RowBox[{"PlotRange", "\[Rule]", 
          RowBox[{"range", 
           RowBox[{"{", 
            RowBox[{
             RowBox[{"{", 
              RowBox[{
               RowBox[{"-", "1.5"}], ",", "1.5"}], "}"}], ",", 
             RowBox[{"{", 
              RowBox[{
               RowBox[{"-", "1.5"}], ",", "1.5"}], "}"}], ",", " ", 
             RowBox[{"{", 
              RowBox[{
               RowBox[{"-", "0.4"}], ",", "2.5"}], "}"}]}], "}"}]}]}]}], 
        "\[IndentingNewLine]", "]"}], "\[IndentingNewLine]", ",", "axes", 
       "\[IndentingNewLine]", ",", "\[IndentingNewLine]", 
       RowBox[{"With", "[", 
        RowBox[{
         RowBox[{"{", "\[IndentingNewLine]", 
          RowBox[{
           RowBox[{"fDir", " ", "=", " ", 
            RowBox[{"fPt", "/", 
             RowBox[{"Norm", "[", "fPt", "]"}]}]}], ",", 
           "\[IndentingNewLine]", 
           RowBox[{"hDir", " ", "=", " ", 
            RowBox[{"Cross", "[", 
             RowBox[{"rcapPt", ",", " ", 
              RowBox[{"fPt", "/", 
               RowBox[{"Norm", "[", "fPt", "]"}]}]}], "]"}]}], ",", 
           "\[IndentingNewLine]", 
           RowBox[{"sPt", " ", "=", " ", 
            RowBox[{
             RowBox[{"Norm", "[", "fPt", "]"}], " ", "rcapPt"}]}]}], 
          "\[IndentingNewLine]", "}"}], ",", "\[IndentingNewLine]", 
         RowBox[{"Graphics3D", "[", 
          RowBox[{"{", "\[IndentingNewLine]", 
           RowBox[{"Orange", ",", 
            RowBox[{"Arrow", "[", 
             RowBox[{
              RowBox[{"Tube", "[", 
               RowBox[{"{", 
                RowBox[{"sPt", ",", " ", 
                 RowBox[{"sPt", " ", "+", " ", "rcapPt"}]}], "}"}], "]"}], 
              " ", ",", " ", "0.05"}], "]"}], ",", "\[IndentingNewLine]", 
            "Purple", ",", 
            RowBox[{"Arrow", "[", 
             RowBox[{
              RowBox[{"Tube", "[", 
               RowBox[{"{", 
                RowBox[{"sPt", ",", " ", 
                 RowBox[{"sPt", " ", "+", " ", "fDir"}]}], "}"}], "]"}], " ", 
              ",", " ", "0.05"}], "]"}], ",", "\[IndentingNewLine]", "Blue", 
            ",", 
            RowBox[{"Arrow", "[", 
             RowBox[{
              RowBox[{"Tube", "[", 
               RowBox[{"{", 
                RowBox[{"sPt", ",", " ", 
                 RowBox[{"sPt", " ", "+", " ", "hDir"}]}], "}"}], "]"}], " ", 
              ",", " ", "0.05"}], "]"}], ",", "\[IndentingNewLine]", 
            RowBox[{"Text", "[", " ", 
             RowBox[{"\"\<\!\(\*OverscriptBox[\(k\), \(^\)]\)\>\"", ",", 
              RowBox[{"sPt", " ", "+", " ", 
               RowBox[{"rcapPt", " ", "vecOff"}]}]}], "]"}], ",", 
            "\[IndentingNewLine]", 
            RowBox[{"Text", "[", " ", 
             RowBox[{"\"\<\!\(\*OverscriptBox[\(E\), \(^\)]\)\>\"", ",", " ", 
              RowBox[{"sPt", " ", "+", " ", 
               RowBox[{"fDir", " ", "vecOff"}]}]}], "]"}], ",", 
            "\[IndentingNewLine]", 
            RowBox[{"Text", "[", " ", 
             RowBox[{"\"\<\!\(\*OverscriptBox[\(H\), \(^\)]\)\>\"", ",", " ", 
              RowBox[{"sPt", " ", "+", " ", 
               RowBox[{"hDir", " ", "vecOff"}]}]}], "]"}]}], 
           "\[IndentingNewLine]", "}"}], "]"}]}], " ", "]"}]}], " ", 
      RowBox[{"(*", " ", 
       RowBox[{"With", " ", "Graphics3D"}], " ", "*)"}], " ", 
      "\[IndentingNewLine]", "]"}]}], " ", 
    RowBox[{"(*", " ", "Show", " ", "*)"}], "\[IndentingNewLine]", "]"}], " ", 
   RowBox[{"(*", " ", "With", " ", "*)"}], "\[IndentingNewLine]", ",", 
   RowBox[{"{", 
    RowBox[{
     RowBox[{"{", 
      RowBox[{"thetaP", ",", " ", "0.5", " ", 
       RowBox[{"(*", 
        RowBox[{
         RowBox[{"Pi", "/", "8"}], " ", "//", " ", "N"}], "*)"}], ",", " ", 
       "\"\<\[Theta]\>\""}], "}"}], ",", " ", "0", ",", " ", 
     RowBox[{"2", " ", "Pi"}], ",", " ", 
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
      RowBox[{"range", ",", " ", "1"}], "}"}], ",", " ", "0.1", ",", " ", 
     "5"}], "}"}], "\[IndentingNewLine]", ",", 
   RowBox[{"Initialization", "\[RuleDelayed]", " ", 
    RowBox[{"{", "\[IndentingNewLine]", 
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
       "\[IndentingNewLine]", 
      RowBox[{"origin", " ", "=", " ", 
       RowBox[{"{", 
        RowBox[{"0", ",", "0", ",", "0"}], "}"}]}], " ", ";", 
      "\[IndentingNewLine]", "\[IndentingNewLine]", "\[IndentingNewLine]", 
      RowBox[{"asz", " ", "=", " ", "1"}], " ", ";", "\[IndentingNewLine]", 
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
          "\[IndentingNewLine]", "}"}], "]"}]}], " ", ";", 
      "\[IndentingNewLine]", "\[IndentingNewLine]", 
      RowBox[{"f", " ", "=", " ", 
       RowBox[{
        RowBox[{
         RowBox[{"(", 
          RowBox[{"1", " ", "+", " ", 
           RowBox[{"Cos", "[", "#1", "]"}]}], ")"}], 
         RowBox[{"(", 
          RowBox[{
           RowBox[{
            RowBox[{"-", 
             RowBox[{"Cos", "[", "#2", "]"}]}], " ", 
            RowBox[{"thetacap", "[", 
             RowBox[{"#1", ",", " ", "#2"}], "]"}]}], " ", "+", " ", 
           RowBox[{
            RowBox[{"Sin", "[", "#2", "]"}], 
            RowBox[{"phicap", "[", 
             RowBox[{"#1", ",", " ", "#2"}], "]"}]}]}], ")"}]}], " ", "&"}]}],
       " ", ";"}], "\[IndentingNewLine]", "\[IndentingNewLine]", "}"}]}], 
   "\[IndentingNewLine]", ",", "\[IndentingNewLine]", 
   RowBox[{"SaveDefinitions", "\[Rule]", "True"}]}], "\[IndentingNewLine]", 
  "]"}]], "Input", "PluginEmbeddedContent",
 CellOpen->False],

Cell[BoxData[
 TagBox[
  StyleBox[
   DynamicModuleBox[{$CellContext`phiP$$ = 1, $CellContext`range$$ = 
    1, $CellContext`thetaP$$ = 0.5, Typeset`show$$ = True, 
    Typeset`bookmarkList$$ = {}, Typeset`bookmarkMode$$ = "Menu", 
    Typeset`animator$$, Typeset`animvar$$ = 1, Typeset`name$$ = 
    "\"untitled\"", Typeset`specs$$ = {{{
       Hold[$CellContext`thetaP$$], 0.5, "\[Theta]"}, 0, 2 Pi}, {{
       Hold[$CellContext`phiP$$], 1, "\[Phi]"}, 0, 2 Pi}, {{
       Hold[$CellContext`range$$], 1}, 0.1, 5}}, Typeset`size$$ = {
    480., {247., 256.}}, Typeset`update$$ = 0, Typeset`initDone$$, 
    Typeset`skipInitDone$$ = False, $CellContext`thetaP$1453$$ = 
    0, $CellContext`phiP$1454$$ = 0, $CellContext`range$1455$$ = 0}, 
    DynamicBox[Manipulate`ManipulateBoxes[
     1, StandardForm, 
      "Variables" :> {$CellContext`phiP$$ = 1, $CellContext`range$$ = 
        1, $CellContext`thetaP$$ = 0.5}, "ControllerVariables" :> {
        Hold[$CellContext`thetaP$$, $CellContext`thetaP$1453$$, 0], 
        Hold[$CellContext`phiP$$, $CellContext`phiP$1454$$, 0], 
        Hold[$CellContext`range$$, $CellContext`range$1455$$, 0]}, 
      "OtherVariables" :> {
       Typeset`show$$, Typeset`bookmarkList$$, Typeset`bookmarkMode$$, 
        Typeset`animator$$, Typeset`animvar$$, Typeset`name$$, 
        Typeset`specs$$, Typeset`size$$, Typeset`update$$, Typeset`initDone$$,
         Typeset`skipInitDone$$}, "Body" :> 
      With[{$CellContext`rcapPt$ = $CellContext`rcap[$CellContext`thetaP$$, \
$CellContext`phiP$$], $CellContext`fPt$ = \
$CellContext`f[$CellContext`thetaP$$, $CellContext`phiP$$], \
$CellContext`thetacapPt$ = $CellContext`thetacap[$CellContext`thetaP$$, \
$CellContext`phiP$$], $CellContext`phicapPt$ = \
$CellContext`phicap[$CellContext`thetaP$$, $CellContext`phiP$$], \
$CellContext`vecOff$ = 1.1}, 
        Show[
         ParametricPlot3D[{Norm[
             $CellContext`f[$CellContext`t, $CellContext`p]] \
$CellContext`rcap[$CellContext`t, $CellContext`p]}, {$CellContext`t, 0, 
           Pi}, {$CellContext`p, 0, 2 Pi}, 
          AxesLabel -> {$CellContext`x, $CellContext`y, $CellContext`z}, 
          PlotStyle -> Directive[
            Opacity[0.7]], 
          PlotRange -> $CellContext`range$$ {{-1.5, 1.5}, {-1.5, 1.5}, {-0.4, 
            2.5}}], $CellContext`axes, 
         With[{$CellContext`fDir$ = $CellContext`fPt$/
            Norm[$CellContext`fPt$], $CellContext`hDir$ = 
           Cross[$CellContext`rcapPt$, $CellContext`fPt$/
             Norm[$CellContext`fPt$]], $CellContext`sPt$ = 
           Norm[$CellContext`fPt$] $CellContext`rcapPt$}, 
          Graphics3D[{Orange, 
            Arrow[
             
             Tube[{$CellContext`sPt$, $CellContext`sPt$ + \
$CellContext`rcapPt$}], 0.05], Purple, 
            Arrow[
             
             Tube[{$CellContext`sPt$, $CellContext`sPt$ + \
$CellContext`fDir$}], 0.05], Blue, 
            Arrow[
             
             Tube[{$CellContext`sPt$, $CellContext`sPt$ + \
$CellContext`hDir$}], 0.05], 
            Text[
            "\!\(\*OverscriptBox[\(k\), \(^\)]\)", $CellContext`sPt$ + \
$CellContext`rcapPt$ $CellContext`vecOff$], 
            Text[
            "\!\(\*OverscriptBox[\(E\), \(^\)]\)", $CellContext`sPt$ + \
$CellContext`fDir$ $CellContext`vecOff$], 
            Text[
            "\!\(\*OverscriptBox[\(H\), \(^\)]\)", $CellContext`sPt$ + \
$CellContext`hDir$ $CellContext`vecOff$]}]]]], 
      "Specifications" :> {{{$CellContext`thetaP$$, 0.5, "\[Theta]"}, 0, 2 Pi,
          Appearance -> "Labeled"}, {{$CellContext`phiP$$, 1, "\[Phi]"}, 0, 2 
         Pi, Appearance -> "Labeled"}, {{$CellContext`range$$, 1}, 0.1, 5}}, 
      "Options" :> {}, "DefaultOptions" :> {}],
     ImageSizeCache->{543., {345., 352.}},
     SingleEvaluation->True],
    Deinitialization:>None,
    DynamicModuleValues:>{},
    Initialization:>({$CellContext`rcap = {Sin[#] Cos[#2], Sin[#] Sin[#2], 
          Cos[#]}& ; $CellContext`phicap = {-Sin[#2], 
          Cos[#2], 0}& ; $CellContext`thetacap = {
         Cos[#] Cos[#2], Cos[#] Sin[#2], -Sin[#]}& ; $CellContext`origin = {0,
          0, 0}; $CellContext`asz = 1; $CellContext`toff = 
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
            0, 0, $CellContext`asz + $CellContext`toff}]}]; $CellContext`f = (
          1 + Cos[#]) ((-Cos[#2]) $CellContext`thetacap[#, #2] + 
          Sin[#2] $CellContext`phicap[#, #2])& ; Null}; 
     Typeset`initDone$$ = True),
    SynchronousInitialization->True,
    UnsavedVariables:>{Typeset`initDone$$},
    UntrackedVariables:>{Typeset`size$$}], "Manipulate",
   Deployed->True,
   StripOnInput->False],
  Manipulate`InterpretManipulate[1]]], "Output", "PluginEmbeddedContent"]
}, Open  ]]
},
WindowSize->{747., 2423.9700000000003`},
Visible->True,
AuthoredSize->{747., 2423.9700000000003`},
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
Cell[1485, 35, 11712, 276, 25, "Input",
 CellOpen->False],
Cell[13200, 313, 5310, 108, 699, "Output"]
}, Open  ]]
}
]
*)

(* End of internal cache information *)

(* NotebookSignature uuD2fIWZ4ZAhjDgk6FXe1RB@ *)
