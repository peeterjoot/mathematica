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
NotebookDataLength[     34762,        987]
NotebookOptionsPosition[     34715,        970]
NotebookOutlinePosition[     35056,        985]
CellTagsIndexPosition[     35013,        982]
WindowFrame->Normal*)

(* Beginning of Notebook Content *)
Notebook[{
Cell[BoxData[
 FormBox[
  RowBox[{
   RowBox[{"(*", " ", 
    RowBox[{"NOTE", ":", " ", 
     RowBox[{"shift", "-", 
      RowBox[{
      "enter", " ", "this", " ", "input", " ", "first", " ", "to", " ", 
       "evaluate", " ", "the", " ", 
       RowBox[{"notation", ".", "  ", "Then"}], " ", "do", " ", "the", " ", 
       "rest"}]}]}], " ", "*)"}], "\[IndentingNewLine]", 
   "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{"<<", "\"\<Notation`\>\""}], "\n", 
    RowBox[{"Notation", "(", 
     RowBox[{
      TemplateBox[{RowBox[{"\[DifferentialD]", "x_"}]},
       "NotationTemplateTag"], "\[DoubleLongLeftArrow]", 
      TemplateBox[{RowBox[{"Dt", "[", "x_", "]"}]},
       "NotationTemplateTag"]}], ")"}], "\n", 
    RowBox[{"(*", " ", 
     RowBox[{
      RowBox[{"See", ":", " ", 
       RowBox[{"http", ":"}]}], "//", 
      RowBox[{
       RowBox[{
        RowBox[{
         RowBox[{
          RowBox[{"reference", ".", "wolfram", ".", "com"}], "/", 
          "mathematica"}], "/", "Notation"}], "/", "tutorial"}], "/", 
       RowBox[{"NotationSymbolizeAndInfixNotation", ".", "html"}]}]}], " ", 
     "*)"}], "\[IndentingNewLine]", 
    RowBox[{"Notation", "(", 
     RowBox[{
      TemplateBox[{FractionBox[
         RowBox[{"\[PartialD]", "f_"}], 
         RowBox[{"\[PartialD]", "x_"}]]},
       "NotationTemplateTag"], "\[DoubleLongLeftArrow]", 
      TemplateBox[{RowBox[{
          RowBox[{
            RowBox[{"Derivative", "[", "1", "]"}], "[", "f_", "]"}], "[", 
          "x_", "]"}]},
       "NotationTemplateTag"]}], ")"}], "\n", 
    RowBox[{"(*", " ", 
     RowBox[{
      RowBox[{"See", ":", " ", 
       RowBox[{"http", ":"}]}], "//", 
      RowBox[{
       RowBox[{
        RowBox[{
         RowBox[{
          RowBox[{"mathematica", ".", "stackexchange", ".", "com"}], "/", 
          "questions"}], "/", "373"}], "/", "clear"}], "-", "complains", "-", 
       "that", "-", "a", "-", "variable", "-", "is", "-", "not", "-", "a", 
       "-", "symbol", "-", "or", "-", "a", "-", "string"}]}], " ", "*)"}], 
    "\[IndentingNewLine]", 
    RowBox[{"Symbolize", "(", 
     TemplateBox[{SubscriptBox["_", "_"]},
      "NotationTemplateTag"], ")"}], "\[IndentingNewLine]", 
    RowBox[{"Notation", "[", 
     RowBox[{
      TemplateBox[{RowBox[{"sin", 
          RowBox[{"(", "x_", ")"}]}]},
       "NotationTemplateTag"], " ", "\[DoubleLongLeftArrow]", " ", 
      TemplateBox[{RowBox[{"Sin", "[", "x_", "]"}]},
       "NotationTemplateTag"]}], "]"}], "\[IndentingNewLine]", 
    RowBox[{"Notation", "[", 
     RowBox[{
      TemplateBox[{RowBox[{"cos", 
          RowBox[{"(", "x_", ")"}]}]},
       "NotationTemplateTag"], " ", "\[DoubleLongLeftArrow]", " ", 
      TemplateBox[{RowBox[{"Cos", "[", "x_", "]"}]},
       "NotationTemplateTag"]}], "]"}]}]}], TraditionalForm]], "Input",
 CellChangeTimes->{{3.5382038382883763`*^9, 3.5382038740924244`*^9}}],

Cell[CellGroupData[{

Cell[BoxData[{
 RowBox[{"theta", " ", ":=", " ", "\[Theta]"}], "\[IndentingNewLine]", 
 RowBox[{"phi", " ", ":=", " ", "\[Phi]"}], "\[IndentingNewLine]", 
 RowBox[{"rcap", " ", ":=", " ", 
  RowBox[{"{", " ", 
   RowBox[{
    RowBox[{
     RowBox[{"Sin", "[", "theta", "]"}], 
     RowBox[{"Cos", "[", "phi", "]"}]}], ",", " ", 
    RowBox[{
     RowBox[{"Sin", "[", "theta", "]"}], 
     RowBox[{"Sin", "[", "phi", "]"}]}], ",", " ", 
    RowBox[{"Cos", "[", "theta", "]"}]}], "}"}]}], "\[IndentingNewLine]", 
 RowBox[{"thetacap", " ", ":=", " ", 
  RowBox[{"{", " ", 
   RowBox[{
    RowBox[{
     RowBox[{"Cos", "[", "theta", "]"}], 
     RowBox[{"Cos", "[", "phi", "]"}]}], ",", " ", 
    RowBox[{
     RowBox[{"Cos", "[", "theta", "]"}], 
     RowBox[{"Sin", "[", "phi", "]"}]}], ",", " ", 
    RowBox[{"-", 
     RowBox[{"Sin", "[", "theta", "]"}]}]}], "}"}]}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{"phicap", " ", ":=", " ", 
   RowBox[{"{", 
    RowBox[{
     RowBox[{"-", 
      RowBox[{"Sin", "[", "phi", "]"}]}], ",", " ", 
     RowBox[{"Cos", "[", "phi", "]"}], ",", " ", "0"}], "}"}]}], 
  "\[IndentingNewLine]", 
  RowBox[{"(*", " ", 
   RowBox[{"Sanity", " ", 
    RowBox[{"checks", ":", "\[IndentingNewLine]", " ", 
     RowBox[{
     "rcap", "\[IndentingNewLine]", "thetacap", "\[IndentingNewLine]", 
      "phicap", "\[IndentingNewLine]", 
      RowBox[{"FullSimplify", "[", 
       RowBox[{"rcap", " ", ".", " ", "rcap"}], "]"}], "\[IndentingNewLine]", 
      RowBox[{"FullSimplify", "[", 
       RowBox[{"thetacap", " ", ".", " ", "thetacap"}], "]"}], 
      "\[IndentingNewLine]", 
      RowBox[{"FullSimplify", "[", 
       RowBox[{"phicap", " ", ".", " ", "phicap"}], "]"}], 
      "\[IndentingNewLine]", 
      RowBox[{"FullSimplify", "[", 
       RowBox[{"rcap", " ", ".", " ", "thetacap"}], "]"}], 
      "\[IndentingNewLine]", 
      RowBox[{"FullSimplify", "[", 
       RowBox[{"rcap", " ", ".", " ", "phicap"}], "]"}], 
      "\[IndentingNewLine]", 
      RowBox[{"FullSimplify", "[", 
       RowBox[{"thetacap", " ", ".", " ", "phicap"}], "]"}], 
      "\[IndentingNewLine]", 
      RowBox[{"FullSimplify", "[", 
       RowBox[{
        RowBox[{"Cross", "[", 
         RowBox[{"rcap", ",", " ", "thetacap"}], " ", "]"}], " ", "-", " ", 
        "phicap"}], "]"}], "\[IndentingNewLine]", "\[IndentingNewLine]", 
      RowBox[{"(*", " ", 
       RowBox[{"check", " ", "hand", " ", "calculated", " ", "results"}], " ",
        "*)"}], "\[IndentingNewLine]", 
      RowBox[{"FullSimplify", "[", 
       RowBox[{
        RowBox[{"Dt", "[", "rcap", "]"}], " ", ".", " ", "rcap"}], "]"}], 
      "\[IndentingNewLine]", 
      RowBox[{"FullSimplify", "[", 
       RowBox[{
        RowBox[{"Dt", "[", "rcap", "]"}], " ", ".", " ", "thetacap"}], "]"}], 
      "\[IndentingNewLine]", 
      RowBox[{"FullSimplify", "[", 
       RowBox[{
        RowBox[{"Dt", "[", "rcap", "]"}], " ", ".", " ", "phicap"}], "]"}], 
      "\[IndentingNewLine]", "\[IndentingNewLine]", 
      RowBox[{"FullSimplify", "[", 
       RowBox[{
        RowBox[{"Dt", "[", "thetacap", "]"}], " ", ".", " ", "rcap"}], "]"}], 
      "\[IndentingNewLine]", 
      RowBox[{"FullSimplify", "[", 
       RowBox[{
        RowBox[{"Dt", "[", "thetacap", "]"}], " ", ".", " ", "thetacap"}], 
       "]"}], "\[IndentingNewLine]", 
      RowBox[{"FullSimplify", "[", 
       RowBox[{
        RowBox[{"Dt", "[", "thetacap", "]"}], " ", ".", " ", "phicap"}], 
       "]"}], "\[IndentingNewLine]", "\[IndentingNewLine]", 
      RowBox[{"FullSimplify", "[", 
       RowBox[{
        RowBox[{"Dt", "[", "phicap", "]"}], " ", ".", " ", "rcap"}], "]"}], 
      "\[IndentingNewLine]", 
      RowBox[{"FullSimplify", "[", 
       RowBox[{
        RowBox[{"Dt", "[", "phicap", "]"}], " ", ".", " ", "thetacap"}], 
       "]"}], "\[IndentingNewLine]", 
      RowBox[{"FullSimplify", "[", 
       RowBox[{
        RowBox[{"Dt", "[", "phicap", "]"}], " ", ".", " ", "phicap"}], 
       "]"}]}]}]}], "\[IndentingNewLine]", "*)"}]}], "\[IndentingNewLine]", 
 RowBox[{"x", " ", ":=", " ", 
  RowBox[{"r", " ", "rcap"}]}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{"dx", " ", ":=", " ", 
   RowBox[{"Dt", "[", "x", "]"}]}], "\[IndentingNewLine]", 
  RowBox[{"(*", " ", 
   RowBox[{"sanity", " ", 
    RowBox[{"check", ":", " ", "\[IndentingNewLine]", 
     RowBox[{
      RowBox[{"FullSimplify", "[", 
       RowBox[{"dx", " ", ".", " ", "rcap"}], "]"}], "\[IndentingNewLine]", 
      RowBox[{"FullSimplify", "[", 
       RowBox[{"dx", " ", ".", " ", "thetacap"}], "]"}], 
      "\[IndentingNewLine]", 
      RowBox[{"FullSimplify", "[", 
       RowBox[{"dx", " ", ".", " ", "phicap"}], "]"}]}]}]}], 
   "\[IndentingNewLine]", "*)"}]}], "\[IndentingNewLine]", 
 RowBox[{"dr", " ", ":=", " ", 
  RowBox[{"Dt", "[", "r", "]"}]}], "\[IndentingNewLine]", 
 RowBox[{"dphi", " ", ":=", " ", 
  RowBox[{"Dt", "[", "\[Phi]", "]"}]}], "\[IndentingNewLine]", 
 RowBox[{"dtheta", " ", ":=", " ", 
  RowBox[{"Dt", "[", "\[Theta]", "]"}]}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{"ur", " ", ":=", " ", 
   SubscriptBox["u", "r"]}], "               ", 
  RowBox[{"(*", " ", 
   RowBox[{
    RowBox[{"u", "[", "ctrl", "]"}], 
    RowBox[{
     RowBox[{"_r", "[", "ctrl", "]"}], "[", "space", "]"}]}], " ", 
   "*)"}]}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{"uphi", " ", ":=", " ", 
   SubscriptBox["u", "\[Phi]"]}], "           ", 
  RowBox[{"(*", " ", 
   RowBox[{
    RowBox[{"u", "[", "ctrl", "]"}], 
    RowBox[{"_", "[", "esc", "]"}], 
    RowBox[{
     RowBox[{
      RowBox[{"th", "[", "esc", "]"}], "[", "ctrl", "]"}], "[", "space", 
     "]"}]}], " ", "*)"}]}], "\[IndentingNewLine]", 
 RowBox[{"utheta", " ", ":=", " ", 
  SubscriptBox["u", "\[Theta]"]}], "\[IndentingNewLine]", 
 RowBox[{"dur", " ", ":=", " ", 
  RowBox[{"Dt", "[", "ur", "]"}]}], "\[IndentingNewLine]", 
 RowBox[{"duphi", " ", ":=", " ", 
  RowBox[{"Dt", "[", "uphi", "]"}]}], "\[IndentingNewLine]", 
 RowBox[{"dutheta", " ", ":=", " ", 
  RowBox[{"Dt", "[", "utheta", "]"}]}], "\[IndentingNewLine]", 
 RowBox[{"stheta", " ", ":=", " ", 
  RowBox[{"Sin", "[", "\[Theta]", "]"}]}], "\[IndentingNewLine]", 
 RowBox[{"ctheta", " ", ":=", " ", 
  RowBox[{"Cos", "[", "\[Theta]", "]"}]}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{"u", " ", ":=", " ", 
   RowBox[{
    RowBox[{"ur", " ", "rcap"}], " ", "+", " ", 
    RowBox[{"utheta", " ", "thetacap"}], " ", "+", " ", 
    RowBox[{"uphi", " ", "phicap"}]}]}], "  "}], "\[IndentingNewLine]", 
 RowBox[{"du", " ", ":=", " ", 
  RowBox[{"FullSimplify", "[", 
   RowBox[{"Dt", "[", "u", "]"}], "]"}]}], "\[IndentingNewLine]", 
 RowBox[{"diff", " ", ":=", 
  RowBox[{
   RowBox[{
    RowBox[{"(", 
     RowBox[{"du", " ", "+", " ", "dx"}], ")"}], " ", ".", " ", 
    RowBox[{"(", 
     RowBox[{"du", " ", "+", " ", "dx"}], ")"}]}], " ", "-", " ", 
   RowBox[{"dx", " ", ".", " ", "dx"}]}]}], "\[IndentingNewLine]", 
 RowBox[{"mess", " ", ":=", 
  RowBox[{"FullSimplify", "[", 
   RowBox[{"Expand", "[", 
    RowBox[{"ReplaceAll", "[", 
     RowBox[{"diff", ",", " ", 
      RowBox[{"{", " ", 
       RowBox[{
        RowBox[{"dur", " ", "\[Rule]", " ", 
         RowBox[{
          RowBox[{
           RowBox[{
            RowBox[{
             RowBox[{"Derivative", "[", "1", "]"}], "[", "ur", "]"}], "[", 
            "r", "]"}], " ", "dr"}], " ", "+", " ", 
          RowBox[{
           RowBox[{
            RowBox[{
             RowBox[{"Derivative", "[", "1", "]"}], "[", "ur", "]"}], "[", 
            "phi", "]"}], " ", "dphi"}], " ", "+", " ", 
          RowBox[{
           RowBox[{
            RowBox[{
             RowBox[{"Derivative", "[", "1", "]"}], "[", "ur", "]"}], "[", 
            "theta", "]"}], " ", "dtheta"}]}]}], ",", "\[IndentingNewLine]", 
        RowBox[{"duphi", " ", "\[Rule]", " ", 
         RowBox[{
          RowBox[{
           RowBox[{
            RowBox[{
             RowBox[{"Derivative", "[", "1", "]"}], "[", "uphi", "]"}], "[", 
            "r", "]"}], " ", "dr"}], " ", "+", " ", 
          RowBox[{
           RowBox[{
            RowBox[{
             RowBox[{"Derivative", "[", "1", "]"}], "[", "uphi", "]"}], "[", 
            "phi", "]"}], " ", "dphi"}], " ", "+", " ", 
          RowBox[{
           RowBox[{
            RowBox[{
             RowBox[{"Derivative", "[", "1", "]"}], "[", "uphi", "]"}], "[", 
            "theta", "]"}], " ", "dtheta"}]}]}], ",", "\[IndentingNewLine]", 
        RowBox[{"dutheta", " ", "\[Rule]", " ", 
         RowBox[{
          RowBox[{
           RowBox[{
            RowBox[{
             RowBox[{"Derivative", "[", "1", "]"}], "[", "utheta", "]"}], "[",
             "r", "]"}], " ", "dr"}], " ", "+", " ", 
          RowBox[{
           RowBox[{
            RowBox[{
             RowBox[{"Derivative", "[", "1", "]"}], "[", "utheta", "]"}], "[",
             "phi", "]"}], " ", "dphi"}], " ", "+", " ", 
          RowBox[{
           RowBox[{
            RowBox[{
             RowBox[{"Derivative", "[", "1", "]"}], "[", "utheta", "]"}], "[",
             "theta", "]"}], " ", "dtheta"}]}]}]}], "}"}]}], "]"}], "]"}], 
   "]"}]}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{"Collect", "[", " ", 
   RowBox[{"mess", ",", " ", 
    RowBox[{"{", 
     RowBox[{
      RowBox[{"dr", " ", "dr"}], ",", " ", 
      RowBox[{"dtheta", " ", "dtheta"}], ",", "  ", 
      RowBox[{"dphi", " ", "dphi"}], ",", " ", 
      RowBox[{"dr", " ", "dtheta"}], ",", " ", 
      RowBox[{"dr", " ", "dphi"}], ",", " ", 
      RowBox[{"dphi", " ", "dtheta"}]}], "}"}]}], "]"}], 
  " "}], "\[IndentingNewLine]"}], "Input",
 CellChangeTimes->{{3.5361930887374773`*^9, 3.536193102939289*^9}, {
  3.5361931497081585`*^9, 3.5361933151656218`*^9}, {3.5361933511436796`*^9, 
  3.5361938644170375`*^9}, {3.53619390345127*^9, 3.536193903906296*^9}, {
  3.536193937824236*^9, 3.5361940945221987`*^9}, {3.5361941474802275`*^9, 
  3.5361942164001694`*^9}, {3.5382038818128657`*^9, 3.5382038864721327`*^9}, {
  3.5382039295825977`*^9, 3.538203934843899*^9}}],

Cell[BoxData[
 RowBox[{
  RowBox[{
   SuperscriptBox[
    RowBox[{"(", 
     RowBox[{"\[DifferentialD]", "r"}], ")"}], "2"], " ", 
   RowBox[{"(", 
    RowBox[{
     RowBox[{
      FractionBox[
       RowBox[{"\[PartialD]", 
        SubscriptBox["u", "r"]}], 
       RowBox[{"\[PartialD]", "r"}]], " ", 
      RowBox[{"(", 
       RowBox[{"2", "+", 
        FractionBox[
         RowBox[{"\[PartialD]", 
          SubscriptBox["u", "r"]}], 
         RowBox[{"\[PartialD]", "r"}]]}], ")"}]}], "+", 
     SuperscriptBox[
      RowBox[{"(", 
       FractionBox[
        RowBox[{"\[PartialD]", 
         SubscriptBox["u", "\[Theta]"]}], 
        RowBox[{"\[PartialD]", "r"}]], ")"}], "2"], "+", 
     SuperscriptBox[
      RowBox[{"(", 
       FractionBox[
        RowBox[{"\[PartialD]", 
         SubscriptBox["u", "\[Phi]"]}], 
        RowBox[{"\[PartialD]", "r"}]], ")"}], "2"]}], ")"}]}], "+", 
  RowBox[{
   SuperscriptBox[
    RowBox[{"(", 
     RowBox[{"\[DifferentialD]", "\[Theta]"}], ")"}], "2"], " ", 
   RowBox[{"(", 
    RowBox[{
     RowBox[{"2", " ", "r", " ", 
      SubscriptBox["u", "r"]}], "+", 
     SubsuperscriptBox["u", "r", "2"], "+", 
     SubsuperscriptBox["u", "\[Theta]", "2"], "-", 
     RowBox[{"2", " ", 
      SubscriptBox["u", "\[Theta]"], " ", 
      FractionBox[
       RowBox[{"\[PartialD]", 
        SubscriptBox["u", "r"]}], 
       RowBox[{"\[PartialD]", "\[Theta]"}]]}], "+", 
     SuperscriptBox[
      RowBox[{"(", 
       FractionBox[
        RowBox[{"\[PartialD]", 
         SubscriptBox["u", "r"]}], 
        RowBox[{"\[PartialD]", "\[Theta]"}]], ")"}], "2"], "+", 
     RowBox[{"2", " ", 
      RowBox[{"(", 
       RowBox[{"r", "+", 
        SubscriptBox["u", "r"]}], ")"}], " ", 
      FractionBox[
       RowBox[{"\[PartialD]", 
        SubscriptBox["u", "\[Theta]"]}], 
       RowBox[{"\[PartialD]", "\[Theta]"}]]}], "+", 
     SuperscriptBox[
      RowBox[{"(", 
       FractionBox[
        RowBox[{"\[PartialD]", 
         SubscriptBox["u", "\[Theta]"]}], 
        RowBox[{"\[PartialD]", "\[Theta]"}]], ")"}], "2"], "+", 
     SuperscriptBox[
      RowBox[{"(", 
       FractionBox[
        RowBox[{"\[PartialD]", 
         SubscriptBox["u", "\[Phi]"]}], 
        RowBox[{"\[PartialD]", "\[Theta]"}]], ")"}], "2"]}], ")"}]}], "+", 
  RowBox[{"2", " ", 
   RowBox[{"\[DifferentialD]", "\[Theta]"}], " ", 
   RowBox[{"\[DifferentialD]", "\[Phi]"}], " ", 
   RowBox[{"(", 
    RowBox[{
     RowBox[{
      SubscriptBox["u", "\[Theta]"], " ", 
      SubscriptBox["u", "\[Phi]"], " ", 
      RowBox[{"(", 
       RowBox[{"sin", 
        RowBox[{"(", "\[Theta]", ")"}]}], ")"}]}], "-", 
     RowBox[{
      SubscriptBox["u", "\[Theta]"], " ", 
      FractionBox[
       RowBox[{"\[PartialD]", 
        SubscriptBox["u", "r"]}], 
       RowBox[{"\[PartialD]", "\[Phi]"}]]}], "+", 
     RowBox[{
      FractionBox[
       RowBox[{"\[PartialD]", 
        SubscriptBox["u", "r"]}], 
       RowBox[{"\[PartialD]", "\[Theta]"}]], " ", 
      RowBox[{"(", 
       RowBox[{
        RowBox[{
         RowBox[{"-", 
          SubscriptBox["u", "\[Phi]"]}], " ", 
         RowBox[{"(", 
          RowBox[{"sin", 
           RowBox[{"(", "\[Theta]", ")"}]}], ")"}]}], "+", 
        FractionBox[
         RowBox[{"\[PartialD]", 
          SubscriptBox["u", "r"]}], 
         RowBox[{"\[PartialD]", "\[Phi]"}]]}], ")"}]}], "-", 
     RowBox[{
      SubscriptBox["u", "\[Phi]"], " ", 
      RowBox[{"(", 
       RowBox[{"cos", 
        RowBox[{"(", "\[Theta]", ")"}]}], ")"}], " ", 
      RowBox[{"(", 
       RowBox[{"r", "+", 
        SubscriptBox["u", "r"], "+", 
        FractionBox[
         RowBox[{"\[PartialD]", 
          SubscriptBox["u", "\[Theta]"]}], 
         RowBox[{"\[PartialD]", "\[Theta]"}]]}], ")"}]}], "+", 
     RowBox[{
      RowBox[{"(", 
       RowBox[{"r", "+", 
        SubscriptBox["u", "r"], "+", 
        FractionBox[
         RowBox[{"\[PartialD]", 
          SubscriptBox["u", "\[Theta]"]}], 
         RowBox[{"\[PartialD]", "\[Theta]"}]]}], ")"}], " ", 
      FractionBox[
       RowBox[{"\[PartialD]", 
        SubscriptBox["u", "\[Theta]"]}], 
       RowBox[{"\[PartialD]", "\[Phi]"}]]}], "+", 
     RowBox[{
      FractionBox[
       RowBox[{"\[PartialD]", 
        SubscriptBox["u", "\[Phi]"]}], 
       RowBox[{"\[PartialD]", "\[Theta]"}]], " ", 
      RowBox[{"(", 
       RowBox[{
        RowBox[{
         SubscriptBox["u", "\[Theta]"], " ", 
         RowBox[{"(", 
          RowBox[{"cos", 
           RowBox[{"(", "\[Theta]", ")"}]}], ")"}]}], "+", 
        RowBox[{
         RowBox[{"(", 
          RowBox[{"r", "+", 
           SubscriptBox["u", "r"]}], ")"}], " ", 
         RowBox[{"(", 
          RowBox[{"sin", 
           RowBox[{"(", "\[Theta]", ")"}]}], ")"}]}], "+", 
        FractionBox[
         RowBox[{"\[PartialD]", 
          SubscriptBox["u", "\[Phi]"]}], 
         RowBox[{"\[PartialD]", "\[Phi]"}]]}], ")"}]}]}], ")"}]}], "+", 
  RowBox[{
   RowBox[{"\[DifferentialD]", "r"}], " ", 
   RowBox[{"(", 
    RowBox[{
     RowBox[{"2", " ", 
      RowBox[{"\[DifferentialD]", "\[Theta]"}], " ", 
      RowBox[{"(", 
       RowBox[{
        RowBox[{"-", 
         SubscriptBox["u", "\[Theta]"]}], "+", 
        FractionBox[
         RowBox[{"\[PartialD]", 
          SubscriptBox["u", "r"]}], 
         RowBox[{"\[PartialD]", "\[Theta]"}]], "+", 
        RowBox[{
         FractionBox[
          RowBox[{"\[PartialD]", 
           SubscriptBox["u", "r"]}], 
          RowBox[{"\[PartialD]", "r"}]], " ", 
         RowBox[{"(", 
          RowBox[{
           RowBox[{"-", 
            SubscriptBox["u", "\[Theta]"]}], "+", 
           FractionBox[
            RowBox[{"\[PartialD]", 
             SubscriptBox["u", "r"]}], 
            RowBox[{"\[PartialD]", "\[Theta]"}]]}], ")"}]}], "+", 
        RowBox[{
         FractionBox[
          RowBox[{"\[PartialD]", 
           SubscriptBox["u", "\[Theta]"]}], 
          RowBox[{"\[PartialD]", "r"}]], " ", 
         RowBox[{"(", 
          RowBox[{"r", "+", 
           SubscriptBox["u", "r"], "+", 
           FractionBox[
            RowBox[{"\[PartialD]", 
             SubscriptBox["u", "\[Theta]"]}], 
            RowBox[{"\[PartialD]", "\[Theta]"}]]}], ")"}]}], "+", 
        RowBox[{
         FractionBox[
          RowBox[{"\[PartialD]", 
           SubscriptBox["u", "\[Phi]"]}], 
          RowBox[{"\[PartialD]", "r"}]], " ", 
         FractionBox[
          RowBox[{"\[PartialD]", 
           SubscriptBox["u", "\[Phi]"]}], 
          RowBox[{"\[PartialD]", "\[Theta]"}]]}]}], ")"}]}], "+", 
     RowBox[{"2", " ", 
      RowBox[{"\[DifferentialD]", "\[Phi]"}], " ", 
      RowBox[{"(", 
       RowBox[{
        RowBox[{
         RowBox[{"-", 
          SubscriptBox["u", "\[Phi]"]}], " ", 
         RowBox[{"(", 
          RowBox[{"sin", 
           RowBox[{"(", "\[Theta]", ")"}]}], ")"}]}], "+", 
        FractionBox[
         RowBox[{"\[PartialD]", 
          SubscriptBox["u", "r"]}], 
         RowBox[{"\[PartialD]", "\[Phi]"}]], "+", 
        RowBox[{
         FractionBox[
          RowBox[{"\[PartialD]", 
           SubscriptBox["u", "r"]}], 
          RowBox[{"\[PartialD]", "r"}]], " ", 
         RowBox[{"(", 
          RowBox[{
           RowBox[{
            RowBox[{"-", 
             SubscriptBox["u", "\[Phi]"]}], " ", 
            RowBox[{"(", 
             RowBox[{"sin", 
              RowBox[{"(", "\[Theta]", ")"}]}], ")"}]}], "+", 
           FractionBox[
            RowBox[{"\[PartialD]", 
             SubscriptBox["u", "r"]}], 
            RowBox[{"\[PartialD]", "\[Phi]"}]]}], ")"}]}], "+", 
        RowBox[{
         FractionBox[
          RowBox[{"\[PartialD]", 
           SubscriptBox["u", "\[Theta]"]}], 
          RowBox[{"\[PartialD]", "r"}]], " ", 
         RowBox[{"(", 
          RowBox[{
           RowBox[{
            RowBox[{"-", 
             SubscriptBox["u", "\[Phi]"]}], " ", 
            RowBox[{"(", 
             RowBox[{"cos", 
              RowBox[{"(", "\[Theta]", ")"}]}], ")"}]}], "+", 
           FractionBox[
            RowBox[{"\[PartialD]", 
             SubscriptBox["u", "\[Theta]"]}], 
            RowBox[{"\[PartialD]", "\[Phi]"}]]}], ")"}]}], "+", 
        RowBox[{
         FractionBox[
          RowBox[{"\[PartialD]", 
           SubscriptBox["u", "\[Phi]"]}], 
          RowBox[{"\[PartialD]", "r"}]], " ", 
         RowBox[{"(", 
          RowBox[{
           RowBox[{
            SubscriptBox["u", "\[Theta]"], " ", 
            RowBox[{"(", 
             RowBox[{"cos", 
              RowBox[{"(", "\[Theta]", ")"}]}], ")"}]}], "+", 
           RowBox[{
            RowBox[{"(", 
             RowBox[{"r", "+", 
              SubscriptBox["u", "r"]}], ")"}], " ", 
            RowBox[{"(", 
             RowBox[{"sin", 
              RowBox[{"(", "\[Theta]", ")"}]}], ")"}]}], "+", 
           FractionBox[
            RowBox[{"\[PartialD]", 
             SubscriptBox["u", "\[Phi]"]}], 
            RowBox[{"\[PartialD]", "\[Phi]"}]]}], ")"}]}]}], ")"}]}]}], 
    ")"}]}], "+", 
  RowBox[{
   FractionBox["1", "2"], " ", 
   SuperscriptBox[
    RowBox[{"(", 
     RowBox[{"\[DifferentialD]", "\[Phi]"}], ")"}], "2"], " ", 
   RowBox[{"(", 
    RowBox[{
     RowBox[{"2", " ", "r", " ", 
      SubscriptBox["u", "r"]}], "+", 
     SubsuperscriptBox["u", "r", "2"], "+", 
     SubsuperscriptBox["u", "\[Theta]", "2"], "+", 
     RowBox[{"2", " ", 
      SubsuperscriptBox["u", "\[Phi]", "2"]}], "+", 
     RowBox[{
      RowBox[{"(", 
       RowBox[{
        RowBox[{
         RowBox[{"-", 
          SubscriptBox["u", "r"]}], " ", 
         RowBox[{"(", 
          RowBox[{
           RowBox[{"2", " ", "r"}], "+", 
           SubscriptBox["u", "r"]}], ")"}]}], "+", 
        SubsuperscriptBox["u", "\[Theta]", "2"]}], ")"}], " ", 
      RowBox[{"(", 
       RowBox[{"cos", 
        RowBox[{"(", 
         RowBox[{"2", " ", "\[Theta]"}], ")"}]}], ")"}]}], "+", 
     RowBox[{"2", " ", 
      RowBox[{"(", 
       RowBox[{"r", "+", 
        SubscriptBox["u", "r"]}], ")"}], " ", 
      SubscriptBox["u", "\[Theta]"], " ", 
      RowBox[{"(", 
       RowBox[{"sin", 
        RowBox[{"(", 
         RowBox[{"2", " ", "\[Theta]"}], ")"}]}], ")"}]}], "+", 
     RowBox[{"2", " ", 
      RowBox[{"(", 
       RowBox[{
        RowBox[{
         RowBox[{"-", "2"}], " ", 
         SubscriptBox["u", "\[Phi]"], " ", 
         RowBox[{"(", 
          RowBox[{"sin", 
           RowBox[{"(", "\[Theta]", ")"}]}], ")"}], " ", 
         FractionBox[
          RowBox[{"\[PartialD]", 
           SubscriptBox["u", "r"]}], 
          RowBox[{"\[PartialD]", "\[Phi]"}]]}], "+", 
        SuperscriptBox[
         RowBox[{"(", 
          FractionBox[
           RowBox[{"\[PartialD]", 
            SubscriptBox["u", "r"]}], 
           RowBox[{"\[PartialD]", "\[Phi]"}]], ")"}], "2"], "-", 
        RowBox[{"2", " ", 
         SubscriptBox["u", "\[Phi]"], " ", 
         RowBox[{"(", 
          RowBox[{"cos", 
           RowBox[{"(", "\[Theta]", ")"}]}], ")"}], " ", 
         FractionBox[
          RowBox[{"\[PartialD]", 
           SubscriptBox["u", "\[Theta]"]}], 
          RowBox[{"\[PartialD]", "\[Phi]"}]]}], "+", 
        SuperscriptBox[
         RowBox[{"(", 
          FractionBox[
           RowBox[{"\[PartialD]", 
            SubscriptBox["u", "\[Theta]"]}], 
           RowBox[{"\[PartialD]", "\[Phi]"}]], ")"}], "2"], "+", 
        RowBox[{
         FractionBox[
          RowBox[{"\[PartialD]", 
           SubscriptBox["u", "\[Phi]"]}], 
          RowBox[{"\[PartialD]", "\[Phi]"}]], " ", 
         RowBox[{"(", 
          RowBox[{
           RowBox[{"2", " ", 
            SubscriptBox["u", "\[Theta]"], " ", 
            RowBox[{"(", 
             RowBox[{"cos", 
              RowBox[{"(", "\[Theta]", ")"}]}], ")"}]}], "+", 
           RowBox[{"2", " ", 
            RowBox[{"(", 
             RowBox[{"r", "+", 
              SubscriptBox["u", "r"]}], ")"}], " ", 
            RowBox[{"(", 
             RowBox[{"sin", 
              RowBox[{"(", "\[Theta]", ")"}]}], ")"}]}], "+", 
           FractionBox[
            RowBox[{"\[PartialD]", 
             SubscriptBox["u", "\[Phi]"]}], 
            RowBox[{"\[PartialD]", "\[Phi]"}]]}], ")"}]}]}], ")"}]}]}], 
    ")"}]}]}]], "Output",
 CellChangeTimes->{{3.5361935695891743`*^9, 3.5361935906273775`*^9}, 
   3.5361936382611017`*^9, 3.5361936909101133`*^9, {3.5361937659394045`*^9, 
   3.5361937771570463`*^9}, 3.5361938360754166`*^9, {3.536193975147371*^9, 
   3.5361940021229134`*^9}, {3.5361940378979597`*^9, 
   3.5361940955882597`*^9}, {3.536194199398197*^9, 3.536194218412285*^9}, 
   3.5382039107635217`*^9, 3.5382039487436943`*^9}]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[{
 RowBox[{"rcap", " ", "//", "MatrixForm"}], "\[IndentingNewLine]", 
 RowBox[{"thetacap", " ", "//", " ", "MatrixForm"}], "\[IndentingNewLine]", 
 RowBox[{"phicap", " ", "//", " ", "MatrixForm"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{"Dt", "[", "rcap", "]"}], " ", "//", " ", 
  "MatrixForm"}], "\[IndentingNewLine]", 
 RowBox[{"FullSimplify", "[", 
  RowBox[{
   RowBox[{"Dt", "[", "rcap", "]"}], " ", ".", " ", "rcap"}], 
  "]"}], "\[IndentingNewLine]", 
 RowBox[{"FullSimplify", "[", 
  RowBox[{
   RowBox[{"Dt", "[", "rcap", "]"}], " ", ".", " ", "thetacap"}], 
  "]"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{"FullSimplify", "[", 
   RowBox[{
    RowBox[{"Dt", "[", "rcap", "]"}], " ", ".", " ", "phicap"}], "]"}], 
  "\[IndentingNewLine]", 
  RowBox[{"(*", 
   RowBox[{"FullSimplify", "[", 
    RowBox[{
     RowBox[{"Cross", "[", 
      RowBox[{"rcap", ",", " ", "thetacap"}], " ", "]"}], " ", "-", " ", 
     "phicap"}], "]"}], " ", 
   RowBox[{"(*", " ", 
    RowBox[{"expect", " ", "zero"}], " ", "*)"}], 
   "*)"}]}], "\[IndentingNewLine]"}], "Input",
 CellChangeTimes->{{3.5382039647876115`*^9, 3.5382039802064934`*^9}, {
  3.538204509616774*^9, 3.538204574532487*^9}, {3.5382049160670214`*^9, 
  3.5382049349801035`*^9}, {3.5382052462419066`*^9, 3.5382052596816754`*^9}}],

Cell[BoxData[
 TagBox[
  RowBox[{"(", "\[NoBreak]", 
   TagBox[GridBox[{
      {
       RowBox[{
        RowBox[{"(", 
         RowBox[{"cos", 
          RowBox[{"(", "\[Phi]", ")"}]}], ")"}], " ", 
        RowBox[{"(", 
         RowBox[{"sin", 
          RowBox[{"(", "\[Theta]", ")"}]}], ")"}]}]},
      {
       RowBox[{
        RowBox[{"(", 
         RowBox[{"sin", 
          RowBox[{"(", "\[Theta]", ")"}]}], ")"}], " ", 
        RowBox[{"(", 
         RowBox[{"sin", 
          RowBox[{"(", "\[Phi]", ")"}]}], ")"}]}]},
      {
       RowBox[{"cos", 
        RowBox[{"(", "\[Theta]", ")"}]}]}
     },
     GridBoxAlignment->{
      "Columns" -> {{Center}}, "ColumnsIndexed" -> {}, "Rows" -> {{Baseline}},
        "RowsIndexed" -> {}},
     GridBoxSpacings->{"Columns" -> {
         Offset[0.27999999999999997`], {
          Offset[0.5599999999999999]}, 
         Offset[0.27999999999999997`]}, "ColumnsIndexed" -> {}, "Rows" -> {
         Offset[0.2], {
          Offset[0.4]}, 
         Offset[0.2]}, "RowsIndexed" -> {}}],
    Column], "\[NoBreak]", ")"}],
  Function[BoxForm`e$, 
   MatrixForm[BoxForm`e$]]]], "Output",
 CellChangeTimes->{
  3.5382039810375414`*^9, {3.5382045262897277`*^9, 3.538204575335533*^9}, 
   3.5382049175861087`*^9, {3.538205251381201*^9, 3.5382052603297124`*^9}}],

Cell[BoxData[
 TagBox[
  RowBox[{"(", "\[NoBreak]", 
   TagBox[GridBox[{
      {
       RowBox[{
        RowBox[{"(", 
         RowBox[{"cos", 
          RowBox[{"(", "\[Theta]", ")"}]}], ")"}], " ", 
        RowBox[{"(", 
         RowBox[{"cos", 
          RowBox[{"(", "\[Phi]", ")"}]}], ")"}]}]},
      {
       RowBox[{
        RowBox[{"(", 
         RowBox[{"cos", 
          RowBox[{"(", "\[Theta]", ")"}]}], ")"}], " ", 
        RowBox[{"(", 
         RowBox[{"sin", 
          RowBox[{"(", "\[Phi]", ")"}]}], ")"}]}]},
      {
       RowBox[{"-", 
        RowBox[{"(", 
         RowBox[{"sin", 
          RowBox[{"(", "\[Theta]", ")"}]}], ")"}]}]}
     },
     GridBoxAlignment->{
      "Columns" -> {{Center}}, "ColumnsIndexed" -> {}, "Rows" -> {{Baseline}},
        "RowsIndexed" -> {}},
     GridBoxSpacings->{"Columns" -> {
         Offset[0.27999999999999997`], {
          Offset[0.5599999999999999]}, 
         Offset[0.27999999999999997`]}, "ColumnsIndexed" -> {}, "Rows" -> {
         Offset[0.2], {
          Offset[0.4]}, 
         Offset[0.2]}, "RowsIndexed" -> {}}],
    Column], "\[NoBreak]", ")"}],
  Function[BoxForm`e$, 
   MatrixForm[BoxForm`e$]]]], "Output",
 CellChangeTimes->{
  3.5382039810375414`*^9, {3.5382045262897277`*^9, 3.538204575335533*^9}, 
   3.5382049175861087`*^9, {3.538205251381201*^9, 3.5382052603327127`*^9}}],

Cell[BoxData[
 TagBox[
  RowBox[{"(", "\[NoBreak]", 
   TagBox[GridBox[{
      {
       RowBox[{"-", 
        RowBox[{"(", 
         RowBox[{"sin", 
          RowBox[{"(", "\[Phi]", ")"}]}], ")"}]}]},
      {
       RowBox[{"cos", 
        RowBox[{"(", "\[Phi]", ")"}]}]},
      {"0"}
     },
     GridBoxAlignment->{
      "Columns" -> {{Center}}, "ColumnsIndexed" -> {}, "Rows" -> {{Baseline}},
        "RowsIndexed" -> {}},
     GridBoxSpacings->{"Columns" -> {
         Offset[0.27999999999999997`], {
          Offset[0.5599999999999999]}, 
         Offset[0.27999999999999997`]}, "ColumnsIndexed" -> {}, "Rows" -> {
         Offset[0.2], {
          Offset[0.4]}, 
         Offset[0.2]}, "RowsIndexed" -> {}}],
    Column], "\[NoBreak]", ")"}],
  Function[BoxForm`e$, 
   MatrixForm[BoxForm`e$]]]], "Output",
 CellChangeTimes->{
  3.5382039810375414`*^9, {3.5382045262897277`*^9, 3.538204575335533*^9}, 
   3.5382049175861087`*^9, {3.538205251381201*^9, 3.538205260335713*^9}}],

Cell[BoxData[
 TagBox[
  RowBox[{"(", "\[NoBreak]", 
   TagBox[GridBox[{
      {
       RowBox[{
        RowBox[{
         RowBox[{"(", 
          RowBox[{"cos", 
           RowBox[{"(", "\[Theta]", ")"}]}], ")"}], " ", 
         RowBox[{"(", 
          RowBox[{"cos", 
           RowBox[{"(", "\[Phi]", ")"}]}], ")"}], " ", 
         RowBox[{"\[DifferentialD]", "\[Theta]"}]}], "-", 
        RowBox[{
         RowBox[{"\[DifferentialD]", "\[Phi]"}], " ", 
         RowBox[{"(", 
          RowBox[{"sin", 
           RowBox[{"(", "\[Theta]", ")"}]}], ")"}], " ", 
         RowBox[{"(", 
          RowBox[{"sin", 
           RowBox[{"(", "\[Phi]", ")"}]}], ")"}]}]}]},
      {
       RowBox[{
        RowBox[{
         RowBox[{"(", 
          RowBox[{"cos", 
           RowBox[{"(", "\[Phi]", ")"}]}], ")"}], " ", 
         RowBox[{"\[DifferentialD]", "\[Phi]"}], " ", 
         RowBox[{"(", 
          RowBox[{"sin", 
           RowBox[{"(", "\[Theta]", ")"}]}], ")"}]}], "+", 
        RowBox[{
         RowBox[{"(", 
          RowBox[{"cos", 
           RowBox[{"(", "\[Theta]", ")"}]}], ")"}], " ", 
         RowBox[{"\[DifferentialD]", "\[Theta]"}], " ", 
         RowBox[{"(", 
          RowBox[{"sin", 
           RowBox[{"(", "\[Phi]", ")"}]}], ")"}]}]}]},
      {
       RowBox[{
        RowBox[{"-", 
         RowBox[{"\[DifferentialD]", "\[Theta]"}]}], " ", 
        RowBox[{"(", 
         RowBox[{"sin", 
          RowBox[{"(", "\[Theta]", ")"}]}], ")"}]}]}
     },
     GridBoxAlignment->{
      "Columns" -> {{Center}}, "ColumnsIndexed" -> {}, "Rows" -> {{Baseline}},
        "RowsIndexed" -> {}},
     GridBoxSpacings->{"Columns" -> {
         Offset[0.27999999999999997`], {
          Offset[0.5599999999999999]}, 
         Offset[0.27999999999999997`]}, "ColumnsIndexed" -> {}, "Rows" -> {
         Offset[0.2], {
          Offset[0.4]}, 
         Offset[0.2]}, "RowsIndexed" -> {}}],
    Column], "\[NoBreak]", ")"}],
  Function[BoxForm`e$, 
   MatrixForm[BoxForm`e$]]]], "Output",
 CellChangeTimes->{
  3.5382039810375414`*^9, {3.5382045262897277`*^9, 3.538204575335533*^9}, 
   3.5382049175861087`*^9, {3.538205251381201*^9, 3.538205260337713*^9}}],

Cell[BoxData["0"], "Output",
 CellChangeTimes->{
  3.5382039810375414`*^9, {3.5382045262897277`*^9, 3.538204575335533*^9}, 
   3.5382049175861087`*^9, {3.538205251381201*^9, 3.538205260339713*^9}}],

Cell[BoxData[
 RowBox[{"\[DifferentialD]", "\[Theta]"}]], "Output",
 CellChangeTimes->{
  3.5382039810375414`*^9, {3.5382045262897277`*^9, 3.538204575335533*^9}, 
   3.5382049175861087`*^9, {3.538205251381201*^9, 3.538205260340713*^9}}],

Cell[BoxData[
 RowBox[{
  RowBox[{"\[DifferentialD]", "\[Phi]"}], " ", 
  RowBox[{"(", 
   RowBox[{"sin", 
    RowBox[{"(", "\[Theta]", ")"}]}], ")"}]}]], "Output",
 CellChangeTimes->{
  3.5382039810375414`*^9, {3.5382045262897277`*^9, 3.538204575335533*^9}, 
   3.5382049175861087`*^9, {3.538205251381201*^9, 3.538205260341713*^9}}]
}, Open  ]]
},
WindowSize->{866, 637},
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
Cell[1235, 30, 2885, 73, 281, "Input"],
Cell[CellGroupData[{
Cell[4145, 107, 10002, 247, 1232, "Input"],
Cell[14150, 356, 12610, 374, 313, "Output"]
}, Open  ]],
Cell[CellGroupData[{
Cell[26797, 735, 1310, 31, 192, "Input"],
Cell[28110, 768, 1300, 39, 71, "Output"],
Cell[29413, 809, 1356, 41, 71, "Output"],
Cell[30772, 852, 983, 29, 71, "Output"],
Cell[31758, 883, 2166, 63, 71, "Output"],
Cell[33927, 948, 197, 3, 30, "Output"],
Cell[34127, 953, 236, 4, 30, "Output"],
Cell[34366, 959, 333, 8, 30, "Output"]
}, Open  ]]
}
]
*)

(* End of internal cache information *)

(* NotebookSignature Gu06BU#44vG7wDKAVS#nYt97 *)
