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
NotebookDataLength[     60336,       1431]
NotebookOptionsPosition[     60691,       1423]
NotebookOutlinePosition[     61111,       1439]
CellTagsIndexPosition[     61068,       1436]
WindowFrame->Normal*)

(* Beginning of Notebook Content *)
Notebook[{
Cell["\<\
This is a worksheet to calculate the oscillation solution and dispersion \
relation for a two atom basis (as described in twoMassHarmonic.tex).  

Here\[CloseCurlyQuote]s the preamble with all the various helper functions \
required, with the matrix that we wish to solve (really an eigenvalue \
problem), and the determinant that defines the angular frequencies of the \
dispersion relation.\
\>", "Text",
 CellChangeTimes->{{3.5978927407815523`*^9, 3.5978928540410304`*^9}}],

Cell[BoxData[{
 RowBox[{
  RowBox[{"Clear", "[", 
   RowBox[{
   "rcap", ",", " ", "scap", ",", " ", "vR", ",", " ", "vS", ",", " ", "rn", 
    ",", " ", "vQ", ",", " ", "alphaF", ",", " ", "betaF", ",", " ", "mA", 
    ",", " ", "mB", ",", " ", "mM", ",", " ", "d", ",", " ", "maxQ", ",", " ",
     "numFrequenciesPerQ"}], "]"}], "\[IndentingNewLine]", 
  "\[IndentingNewLine]", 
  RowBox[{"(*", " ", 
   RowBox[{
   "4", " ", "angular", " ", "frequencies", " ", "for", " ", "2", " ", "atom",
     " ", "basis"}], " ", "*)"}]}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{
   RowBox[{"numFrequenciesPerQ", " ", "=", " ", "4"}], " ", ";"}], 
  "\[IndentingNewLine]", "\[IndentingNewLine]", 
  RowBox[{"(*", " ", 
   RowBox[{"f", 
    RowBox[{"(", "theta", ")"}]}], " ", "*)"}]}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{"rcap", " ", "=", " ", 
   RowBox[{
    RowBox[{"{", 
     RowBox[{
      RowBox[{"Cos", "[", "#", "]"}], ",", " ", 
      RowBox[{"Sin", "[", "#", "]"}]}], "}"}], " ", "&"}]}], " ", 
  ";"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{
   RowBox[{"scap", " ", "=", " ", 
    RowBox[{
     RowBox[{"{", 
      RowBox[{
       RowBox[{"-", 
        RowBox[{"Cos", "[", "#", "]"}]}], ",", " ", 
       RowBox[{"Sin", "[", "#", "]"}]}], "}"}], " ", "&"}]}], " ", ";"}], 
  "\[IndentingNewLine]", "\[IndentingNewLine]", 
  RowBox[{"(*", " ", 
   RowBox[{"f", 
    RowBox[{"(", 
     RowBox[{"a", ",", " ", "theta"}], ")"}]}], " ", 
   "*)"}]}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{"vR", " ", "=", " ", 
   RowBox[{
    RowBox[{"#1", " ", 
     RowBox[{"rcap", "[", "#2", "]"}]}], " ", "&"}]}], " ", 
  ";"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{
   RowBox[{"vS", " ", "=", " ", 
    RowBox[{
     RowBox[{"#1", " ", 
      RowBox[{"scap", "[", "#2", "]"}]}], " ", "&"}]}], ";"}], 
  "\[IndentingNewLine]", "\[IndentingNewLine]", 
  RowBox[{"(*", " ", 
   RowBox[{"f", 
    RowBox[{"(", 
     RowBox[{
      RowBox[{"{", 
       RowBox[{"n1", ",", " ", "n2"}], "}"}], ",", " ", "a", ",", " ", 
      "theta"}], ")"}]}], " ", "*)"}]}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{
   RowBox[{"rn", " ", "=", " ", 
    RowBox[{
     RowBox[{
      RowBox[{
       RowBox[{"#1", "[", 
        RowBox[{"[", "1", "]"}], "]"}], " ", 
       RowBox[{"vR", "[", 
        RowBox[{"#2", ",", " ", "#3"}], "]"}]}], " ", "+", " ", 
      RowBox[{
       RowBox[{"#1", "[", 
        RowBox[{"[", "2", "]"}], "]"}], " ", 
       RowBox[{"vS", "[", 
        RowBox[{"#2", ",", " ", "#3"}], "]"}]}]}], "  ", "&"}]}], ";"}], 
  "\[IndentingNewLine]", "\[IndentingNewLine]", 
  RowBox[{"(*", " ", 
   RowBox[{"f", 
    RowBox[{"(", 
     RowBox[{"a", ",", " ", "theta"}], ")"}]}], " ", "*)"}], 
  "\[IndentingNewLine]", 
  RowBox[{"(*", " ", 
   RowBox[{
    RowBox[{
     RowBox[{"reciprocal", " ", "vectors", " ", "are", " ", "g"}], " ", "=", 
     " ", 
     RowBox[{
      RowBox[{"(", 
       RowBox[{"\\", 
        RowBox[{"pi", "/", "a"}]}], ")"}], 
      RowBox[{"(", 
       RowBox[{
        RowBox[{"\\", 
         RowBox[{"pm", "/"}], "\\", "cos", "\\", "theta"}], ",", " ", 
        RowBox[{"\\", "sin", "\\", "theta"}]}], ")"}]}]}], ",", " ", 
    RowBox[{"with", " ", 
     RowBox[{"norm", ":", " ", 
      RowBox[{"2", " ", "\\", 
       RowBox[{"pi", "/", 
        RowBox[{"(", 
         RowBox[{
          RowBox[{"a", " ", "\\", "sin"}], " ", 
          RowBox[{"(", 
           RowBox[{"2", " ", "\\", "theta"}], ")"}]}], ")"}]}]}]}]}]}], " ", 
   "*)"}]}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{
   RowBox[{"maxQ", " ", "=", " ", 
    RowBox[{
     RowBox[{"2", " ", 
      RowBox[{"Pi", "/", 
       RowBox[{"(", 
        RowBox[{"#1", " ", 
         RowBox[{"Sin", "[", 
          RowBox[{"2", " ", "#2"}], "]"}]}], ")"}]}]}], " ", "&"}]}], " ", 
   ";"}], "\[IndentingNewLine]"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{
   RowBox[{"vQ", " ", "=", " ", 
    RowBox[{"{", 
     RowBox[{
      SubscriptBox["q", "x"], ",", " ", 
      SubscriptBox["q", "y"]}], "}"}]}], " ", ";"}], "\[IndentingNewLine]", 
  "\[IndentingNewLine]", 
  RowBox[{"(*", " ", 
   RowBox[{"f", 
    RowBox[{"(", " ", 
     RowBox[{"a", ",", " ", "theta", ",", " ", "k3", ",", " ", 
      RowBox[{
       RowBox[{"\\", "pm"}], " ", "k4"}], ",", " ", "vQ"}], ")"}]}], " ", 
   "*)"}]}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{
   RowBox[{"alphaF", " ", "=", " ", 
    RowBox[{
     RowBox[{
      RowBox[{"#3", " ", 
       RowBox[{
        RowBox[{"Sin", "[", 
         RowBox[{
          RowBox[{
           RowBox[{"vR", "[", 
            RowBox[{"#1", ",", " ", "#2"}], "]"}], " ", ".", " ", "#5"}], "/",
           "2"}], "]"}], "^", "2"}]}], " ", "+", " ", 
      RowBox[{"#4", " ", 
       RowBox[{
        RowBox[{"Sin", "[", 
         RowBox[{
          RowBox[{
           RowBox[{"vS", "[", 
            RowBox[{"#1", ",", " ", "#2"}], "]"}], "  ", ".", " ", "#5"}], 
          "/", "2"}], "]"}], "^", "2"}]}]}], " ", "&"}]}], ";"}], 
  "\[IndentingNewLine]", 
  RowBox[{"(*", " ", 
   RowBox[{"f", 
    RowBox[{"(", " ", 
     RowBox[{"a", ",", " ", "theta", ",", " ", "k1", ",", " ", 
      RowBox[{
       RowBox[{"\\", "pm"}], " ", "k2"}], ",", " ", "vQ"}], ")"}]}], " ", 
   "*)"}]}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{
   RowBox[{"betaF", " ", "=", " ", 
    RowBox[{
     RowBox[{
      RowBox[{"#3", " ", 
       RowBox[{"Cos", "[", 
        RowBox[{
         RowBox[{
          RowBox[{"(", 
           RowBox[{
            RowBox[{"vR", "[", 
             RowBox[{"#1", ",", " ", "#2"}], "]"}], " ", "-", " ", 
            RowBox[{"vS", "[", 
             RowBox[{"#1", ",", " ", "#2"}], "]"}]}], " ", ")"}], " ", ".", 
          " ", "#5"}], "/", "2"}], "]"}]}], " ", "+", " ", 
      RowBox[{"#4", " ", 
       RowBox[{"Cos", "[", 
        RowBox[{
         RowBox[{
          RowBox[{"(", 
           RowBox[{
            RowBox[{"vR", "[", 
             RowBox[{"#1", ",", " ", "#2"}], "]"}], " ", "+", " ", 
            RowBox[{"vS", "[", 
             RowBox[{"#1", ",", " ", "#2"}], "]"}]}], " ", ")"}], " ", ".", 
          " ", "#5"}], "/", "2"}], "]"}]}]}], "&"}]}], " ", ";"}], 
  "\[IndentingNewLine]", "\[IndentingNewLine]", 
  RowBox[{"(*", " ", 
   RowBox[{"f", 
    RowBox[{"(", 
     RowBox[{
     "k1", ",", " ", "k2", ",", " ", "theta", ",", " ", "alphaPlus", ",", " ",
       "alphaMinus"}], ")"}]}], " ", "*)"}]}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{
   RowBox[{"mA", " ", "=", " ", 
    RowBox[{
     RowBox[{"{", 
      RowBox[{
       RowBox[{"{", 
        RowBox[{
         RowBox[{"#1", " ", "+", " ", 
          RowBox[{"#4", 
           RowBox[{"(", 
            RowBox[{"1", " ", "+", " ", 
             RowBox[{"Cos", "[", 
              RowBox[{"2", " ", "#3"}], "]"}]}], ")"}]}]}], ",", " ", 
         RowBox[{"#5", 
          RowBox[{"Sin", "[", 
           RowBox[{"2", " ", "#3"}], "]"}]}]}], "}"}], " ", ",", " ", 
       RowBox[{"{", 
        RowBox[{
         RowBox[{"#5", 
          RowBox[{"Sin", "[", 
           RowBox[{"2", " ", "#3"}], "]"}]}], ",", " ", 
         RowBox[{"#2", " ", "+", " ", 
          RowBox[{"#4", 
           RowBox[{"(", 
            RowBox[{"1", " ", "+", " ", 
             RowBox[{"Cos", "[", 
              RowBox[{"2", " ", "#3"}], "]"}]}], ")"}]}]}]}], "}"}]}], "}"}], 
     " ", "&"}]}], " ", ";"}], "\[IndentingNewLine]", "\[IndentingNewLine]", 
  RowBox[{"(*", " ", 
   RowBox[{"f", 
    RowBox[{"(", 
     RowBox[{
     "a", ",", " ", "theta", ",", " ", "qy", ",", " ", "betaPlus", ",", " ", 
      "betaMinus"}], ")"}]}], " ", "*)"}]}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{
   RowBox[{"mB", " ", "=", " ", 
    RowBox[{
     RowBox[{
      RowBox[{"E", "^", 
       RowBox[{"(", 
        RowBox[{"I", " ", "#1", " ", 
         RowBox[{"Sin", "[", "#2", "]"}], " ", "#3"}], ")"}]}], 
      RowBox[{"{", " ", "\[IndentingNewLine]", 
       RowBox[{
        RowBox[{"{", 
         RowBox[{
          RowBox[{"#4", 
           RowBox[{"(", 
            RowBox[{"1", " ", "+", " ", 
             RowBox[{"Cos", "[", 
              RowBox[{"2", " ", "#2"}], "]"}]}], ")"}]}], ",", " ", 
          RowBox[{"#5", 
           RowBox[{"Sin", "[", 
            RowBox[{"2", " ", "#2"}], "]"}]}]}], "}"}], " ", ",", " ", 
        RowBox[{"{", 
         RowBox[{
          RowBox[{"#5", 
           RowBox[{"Sin", "[", 
            RowBox[{"2", " ", "#2"}], "]"}]}], ",", " ", 
          RowBox[{"#4", 
           RowBox[{"(", 
            RowBox[{"1", " ", "+", " ", 
             RowBox[{"Cos", "[", 
              RowBox[{"2", " ", "#2"}], "]"}]}], ")"}]}]}], "}"}]}], "}"}]}], 
     " ", "&"}]}], " ", ";"}], "\[IndentingNewLine]", "\[IndentingNewLine]", 
  RowBox[{"(*", 
   RowBox[{"f", 
    RowBox[{"(", 
     RowBox[{
     "#1", ",", "         ", "#2", ",", "#3", ",", "#4", ",", "#5", ",", "#6",
       ",", "#7", "   ", ",", "#8", "       ", ",", "#9", "        ", ",", 
      "#10", "     ", ",", "#11", "      ", ",", "#12"}], ")"}]}], 
   "*)"}]}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{"(*", 
   RowBox[{"f", 
    RowBox[{"(", 
     RowBox[{
     "omegaSquare", ",", "k1", ",", "k2", ",", "m1", ",", "m2", ",", "a", " ",
       ",", "theta", ",", "alphaPlus", ",", "alphaMinus", ",", "betaPlus", 
      ",", "betaMinus", ",", "qy"}], ")"}]}], "*)"}], 
  RowBox[{
   RowBox[{"mM", "=", 
    RowBox[{
     RowBox[{"ArrayFlatten", "[", 
      RowBox[{"{", 
       RowBox[{
        RowBox[{"{", 
         RowBox[{
          RowBox[{
           RowBox[{"#1", " ", 
            RowBox[{"IdentityMatrix", "[", "2", "]"}]}], "-", 
           RowBox[{"2", " ", 
            RowBox[{
             RowBox[{"mA", "[", 
              RowBox[{"#2", ",", "#3", ",", "#7", ",", "#8", ",", "#9"}], 
              "]"}], "/", "#4"}]}]}], ",", 
          RowBox[{
           RowBox[{"mB", "[", 
            RowBox[{"#6", ",", "#7", ",", 
             RowBox[{"-", "#12"}], ",", "#10", ",", "#11"}], "]"}], "/", 
           RowBox[{"Sqrt", "[", 
            RowBox[{"#4", " ", "#5"}], "]"}]}]}], "}"}], ",", 
        RowBox[{"{", 
         RowBox[{
          RowBox[{
           RowBox[{"mB", "[", 
            RowBox[{"#6", ",", "#7", ",", "#12", ",", "#10", ",", "#11"}], 
            "]"}], "/", 
           RowBox[{"Sqrt", "[", 
            RowBox[{"#4", " ", "#5"}], "]"}]}], ",", 
          RowBox[{
           RowBox[{"#1", " ", 
            RowBox[{"IdentityMatrix", "[", "2", "]"}]}], "-", 
           RowBox[{"2", " ", 
            RowBox[{
             RowBox[{"mA", "[", 
              RowBox[{"#2", ",", "#3", ",", "#7", ",", "#8", ",", "#9"}], 
              "]"}], "/", "#5"}]}]}]}], "}"}]}], "}"}], "]"}], "&"}]}], ";"}],
   "\n"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{
   RowBox[{"d", " ", "=", " ", 
    RowBox[{
     RowBox[{"Collect", "[", " ", 
      RowBox[{
       RowBox[{"Det", "[", " ", 
        RowBox[{"mM", "[", "##", " ", "]"}], " ", "]"}], ",", " ", 
       RowBox[{"{", 
        RowBox[{"#1", ",", " ", "#4", ",", " ", "#5"}], "}"}], ",", " ", 
       "Simplify"}], "]"}], " ", "&"}]}], ";"}], "\[IndentingNewLine]", 
  "\[IndentingNewLine]", 
  RowBox[{"(*", " ", 
   RowBox[{
   "display", " ", "equation", " ", "to", " ", "solve", " ", "for", " ", 
    RowBox[{"\[Omega]", "^", "2"}]}], " ", "*)"}], "\[IndentingNewLine]", 
  RowBox[{"(*", 
   RowBox[{
    RowBox[{
     RowBox[{"mM", "[", 
      RowBox[{
       RowBox[{"\[Omega]", "^", "2"}], ",", 
       SubscriptBox["k", "1"], ",", 
       SubscriptBox["k", "2"], ",", 
       SubscriptBox["m", "1"], ",", 
       SubscriptBox["m", "2"], ",", "a", ",", "\[Theta]", ",", 
       SubscriptBox["\[Alpha]", "+"], ",", 
       SubscriptBox["\[Alpha]", "-"], ",", 
       SubscriptBox["\[Beta]", "+"], ",", 
       SubscriptBox["\[Beta]", "-"], ",", 
       SubscriptBox["q", "y"]}], "]"}], " ", "//", " ", "TraditionalForm"}], 
    " ", "//", " ", "MatrixForm"}], "*)"}], "\[IndentingNewLine]", 
  "\[IndentingNewLine]", 
  RowBox[{"(*", " ", 
   RowBox[{
    RowBox[{
    "A", " ", "full", " ", "expansion", " ", "of", " ", "the", " ", 
     "Determinant", " ", "for", " ", "above"}], ",", " ", 
    RowBox[{
    "Simplified", " ", "term", " ", "by", " ", "term", " ", "in", " ", 
     "powers", " ", "of", " ", 
     RowBox[{"\[Omega]", "^", "2"}]}]}], " ", "*)"}], "\[IndentingNewLine]", 
  RowBox[{"(*", 
   RowBox[{
    RowBox[{"d", "[", 
     RowBox[{
      RowBox[{"\[Omega]", "^", "2"}], ",", 
      SubscriptBox["k", "1"], ",", 
      SubscriptBox["k", "2"], ",", 
      SubscriptBox["m", "1"], ",", 
      SubscriptBox["m", "2"], ",", "a", ",", "\[Theta]", ",", 
      SubscriptBox["\[Alpha]", "+"], ",", 
      SubscriptBox["\[Alpha]", "-"], ",", 
      SubscriptBox["\[Beta]", "+"], ",", 
      SubscriptBox["\[Beta]", "-"], ",", 
      SubscriptBox["q", "y"]}], "]"}], " ", "//", " ", "TraditionalForm"}], 
   "\[IndentingNewLine]", "*)"}], "\[IndentingNewLine]", 
  " "}], "\[IndentingNewLine]", 
 RowBox[{"Clear", "[", "qTable", "]"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{
   RowBox[{
    RowBox[{"qTable", "[", "p_", "]"}], " ", ":=", " ", 
    RowBox[{"Module", "[", 
     RowBox[{
      RowBox[{"{", 
       RowBox[{
       "k1", ",", " ", "k2", ",", " ", "k3", ",", " ", "k4", ",", " ", "m1", 
        ",", " ", "m2", ",", " ", "a", ",", " ", "theta", ",", "qIntervals", 
        ",", "mE", ",", " ", "alpha", ",", " ", "beta", ",", " ", "vv", ",", 
        " ", "qMax", ",", " ", "f", ",", " ", "e", ",", " ", "t", ",", " ", 
        "len"}], "}"}], ",", "\[IndentingNewLine]", 
      RowBox[{
       RowBox[{
        RowBox[{"{", 
         RowBox[{
         "k1", ",", " ", "k2", ",", " ", "k3", ",", " ", "k4", ",", " ", "m1",
           ",", " ", "m2", ",", " ", "a", ",", " ", "theta", ",", " ", 
          "qIntervals"}], "}"}], " ", "=", " ", "p"}], " ", ";", 
       "\[IndentingNewLine]", "\[IndentingNewLine]", 
       RowBox[{"qMax", " ", "=", " ", 
        RowBox[{"maxQ", "[", 
         RowBox[{"a", ",", " ", "theta"}], "]"}]}], " ", ";", 
       "\[IndentingNewLine]", "\[IndentingNewLine]", 
       RowBox[{
        RowBox[{"alpha", "[", 
         RowBox[{"qq_", ",", " ", "sign_"}], "]"}], " ", ":=", " ", 
        RowBox[{"alphaF", "[", 
         RowBox[{"a", ",", " ", "theta", ",", " ", "k3", ",", " ", 
          RowBox[{"sign", " ", "k4"}], ",", " ", "qq"}], "]"}]}], " ", ";", 
       "\[IndentingNewLine]", 
       RowBox[{
        RowBox[{"beta", "[", 
         RowBox[{"qq_", ",", " ", "sign_"}], "]"}], " ", ":=", " ", 
        RowBox[{"betaF", "[", 
         RowBox[{"a", ",", " ", "theta", ",", " ", "k1", ",", " ", 
          RowBox[{"sign", " ", "k2"}], ",", " ", "qq"}], "]"}]}], " ", ";", 
       "\[IndentingNewLine]", "\[IndentingNewLine]", 
       RowBox[{"(*", 
        RowBox[{
         RowBox[{"\[Omega]", "^", "2"}], ",", 
         SubscriptBox["k", "1"], ",", 
         SubscriptBox["k", "2"], ",", 
         SubscriptBox["m", "1"], ",", 
         SubscriptBox["m", "2"], ",", "a", ",", "\[Theta]", ",", 
         SubscriptBox["\[Alpha]", "+"], ",", 
         SubscriptBox["\[Alpha]", "-"], ",", 
         SubscriptBox["\[Beta]", "+"], ",", 
         SubscriptBox["\[Beta]", "-"], ",", 
         SubscriptBox["q", "y"]}], "*)"}], "\[IndentingNewLine]", 
       RowBox[{
        RowBox[{"mE", "[", "qq_List", "]"}], " ", ":=", " ", 
        RowBox[{"-", 
         RowBox[{"mM", "[", 
          RowBox[{
          "0", ",", "k1", ",", " ", "k2", ",", " ", "m1", ",", " ", "m2", ",",
            " ", "a", ",", " ", "theta", ",", " ", 
           RowBox[{"alpha", "[", 
            RowBox[{"qq", ",", " ", "1"}], "]"}], ",", " ", 
           RowBox[{"alpha", "[", 
            RowBox[{"qq", ",", " ", 
             RowBox[{"-", "1"}]}], "]"}], ",", " ", 
           RowBox[{"beta", "[", 
            RowBox[{"qq", ",", " ", "1"}], "]"}], ",", " ", 
           RowBox[{"beta", "[", 
            RowBox[{"qq", ",", " ", 
             RowBox[{"-", "1"}]}], "]"}], ",", " ", 
           RowBox[{"qq", "[", 
            RowBox[{"[", "2", "]"}], "]"}]}], "]"}]}]}], " ", ";", 
       "\[IndentingNewLine]", "\[IndentingNewLine]", 
       RowBox[{"(*", 
        RowBox[{
         RowBox[{"f", " ", "=", " ", 
          RowBox[{
           RowBox[{"mE", "[", 
            RowBox[{"{", 
             RowBox[{
              RowBox[{
               RowBox[{"-", "qMax"}], "/", "2"}], ",", " ", 
              RowBox[{
               RowBox[{"-", "qMax"}], "/", "2"}]}], "}"}], "]"}], " ", "//", 
           " ", "N"}]}], " ", ";", "\[IndentingNewLine]", 
         RowBox[{"Eigensystem", "[", "f", "]"}]}], "*)"}], 
       "\[IndentingNewLine]", "\[IndentingNewLine]", 
       RowBox[{"f", " ", "=", " ", 
        RowBox[{"Flatten", "[", " ", 
         RowBox[{
          RowBox[{"Table", "[", " ", 
           RowBox[{
            RowBox[{"{", 
             RowBox[{"qx", ",", " ", "qy", ",", " ", 
              RowBox[{
               RowBox[{"mE", "[", 
                RowBox[{"{", 
                 RowBox[{"qx", ",", " ", 
                  RowBox[{"-", "qy"}]}], "}"}], "]"}], " ", "//", " ", 
               "N"}]}], "}"}], ",", 
            RowBox[{"{", 
             RowBox[{"qx", ",", " ", 
              RowBox[{
               RowBox[{"-", "qMax"}], "/", "2"}], ",", " ", 
              RowBox[{"qMax", "/", "2"}], ",", " ", 
              RowBox[{"qMax", "/", "4"}]}], "}"}], ",", " ", 
            RowBox[{"{", 
             RowBox[{"qy", ",", " ", 
              RowBox[{
               RowBox[{"-", "qMax"}], "/", "2"}], ",", " ", 
              RowBox[{"qMax", "/", "2"}], ",", " ", 
              RowBox[{"qMax", "/", "qIntervals"}]}], "}"}]}], "]"}], ",", " ",
           "1"}], "]"}]}], " ", ";", "\[IndentingNewLine]", 
       RowBox[{"e", " ", "=", " ", 
        RowBox[{
         RowBox[{
          RowBox[{"Eigensystem", "[", " ", 
           RowBox[{"#", "[", 
            RowBox[{"[", "3", "]"}], "]"}], " ", "]"}], " ", "&"}], "/@", " ",
          "f"}]}], " ", ";", "\[IndentingNewLine]", 
       RowBox[{"len", " ", "=", " ", 
        RowBox[{"Length", "[", "e", "]"}]}], " ", ";", "\[IndentingNewLine]", 
       "\[IndentingNewLine]", 
       RowBox[{"t", "=", " ", 
        RowBox[{"Table", "[", "\[IndentingNewLine]", 
         RowBox[{
          RowBox[{"Sort", "[", 
           RowBox[{
            RowBox[{
             RowBox[{
              RowBox[{"{", 
               RowBox[{
                RowBox[{"Sqrt", "[", 
                 RowBox[{"#", "[", 
                  RowBox[{"[", "1", "]"}], "]"}], "]"}], ",", " ", 
                RowBox[{"Take", "[", 
                 RowBox[{
                  RowBox[{"#", "[", 
                   RowBox[{"[", "2", "]"}], "]"}], ",", " ", "2"}], "]"}], 
                ",", " ", 
                RowBox[{"Drop", "[", 
                 RowBox[{
                  RowBox[{"#", "[", 
                   RowBox[{"[", "2", "]"}], "]"}], ",", " ", "2"}], "]"}]}], 
               "}"}], " ", "&"}], "/@", " ", 
             RowBox[{"(", 
              RowBox[{
               RowBox[{"e", "[", 
                RowBox[{"[", "i", "]"}], "]"}], " ", "//", " ", "Transpose"}],
               ")"}]}], ",", " ", 
            RowBox[{
             RowBox[{
              RowBox[{"#1", "[", 
               RowBox[{"[", "1", "]"}], "]"}], " ", "<", " ", 
              RowBox[{"#2", "[", 
               RowBox[{"[", "1", "]"}], "]"}]}], " ", "&"}]}], "]"}], ",", 
          " ", 
          RowBox[{"{", 
           RowBox[{"i", ",", " ", "len"}], "}"}]}], "]"}]}], " ", ";", 
       "\[IndentingNewLine]", "\[IndentingNewLine]", 
       RowBox[{"Table", "[", 
        RowBox[{
         RowBox[{"{", 
          RowBox[{
           RowBox[{"Take", "[", 
            RowBox[{
             RowBox[{"f", "[", 
              RowBox[{"[", "i", "]"}], "]"}], ",", " ", "2"}], "]"}], ",", 
           " ", 
           RowBox[{"t", "[", 
            RowBox[{"[", "i", "]"}], "]"}]}], "}"}], ",", " ", 
         RowBox[{"{", 
          RowBox[{"i", ",", " ", "len"}], "}"}]}], "]"}]}]}], 
     "\[IndentingNewLine]", "]"}]}], " ", ";"}], 
  "\[IndentingNewLine]"}], "\[IndentingNewLine]", 
 RowBox[{"ClearAll", "[", "resultsForOneQpoint", "]"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{
   RowBox[{"resultsForOneQpoint", "[", 
    RowBox[{
     RowBox[{"{", 
      RowBox[{"m1_", ",", " ", "m2_"}], "}"}], ",", " ", "j_", ",", " ", "i_",
      ",", " ", "results_"}], "]"}], ":=", " ", 
   RowBox[{"Module", "[", 
    RowBox[{
     RowBox[{"{", 
      RowBox[{"q", ",", " ", "omega", ",", " ", "e1", ",", " ", "e2"}], "}"}],
      ",", "\[IndentingNewLine]", "\[IndentingNewLine]", 
     RowBox[{
      RowBox[{"q", " ", "=", " ", 
       RowBox[{
        RowBox[{"results", "[", 
         RowBox[{"[", "j", "]"}], "]"}], "[", 
        RowBox[{"[", "1", "]"}], "]"}]}], " ", ";", "\[IndentingNewLine]", 
      RowBox[{
       RowBox[{"{", 
        RowBox[{"omega", ",", " ", "e1", ",", " ", "e2"}], "}"}], " ", "=", 
       " ", 
       RowBox[{
        RowBox[{
         RowBox[{"results", "[", 
          RowBox[{"[", "j", "]"}], "]"}], "[", 
         RowBox[{"[", "2", "]"}], "]"}], "[", 
        RowBox[{"[", "i", "]"}], "]"}]}], " ", ";", "\[IndentingNewLine]", 
      "\[IndentingNewLine]", 
      RowBox[{"{", "\[IndentingNewLine]", 
       RowBox[{
       "q", ",", " ", "\[IndentingNewLine]", "omega", ",", 
        "\[IndentingNewLine]", 
        RowBox[{"e1", "/", 
         RowBox[{"Sqrt", "[", " ", "m1", " ", "]"}]}], ",", 
        "\[IndentingNewLine]", 
        RowBox[{"e2", "/", 
         RowBox[{"Sqrt", "[", " ", "m2", "]"}]}]}], "\[IndentingNewLine]", 
       "\[IndentingNewLine]", "}"}]}]}], "\[IndentingNewLine]", "]"}]}], " ", 
  ";"}]}], "Input",
 InitializationCell->True,
 CellChangeTimes->{{3.597665082649928*^9, 3.5976651886179895`*^9}, {
   3.59766534860614*^9, 3.5976656230958395`*^9}, {3.597665656591756*^9, 
   3.5976657055255547`*^9}, {3.597665735815287*^9, 3.597665922685975*^9}, {
   3.5976659529577065`*^9, 3.5976661433655977`*^9}, {3.5976661804217167`*^9, 
   3.5976662271503897`*^9}, {3.597666758609788*^9, 3.597666759267825*^9}, {
   3.597666795385891*^9, 3.597666795931922*^9}, {3.597666838047331*^9, 
   3.597666887732173*^9}, {3.5976669646475725`*^9, 3.597666968301781*^9}, {
   3.597667158417655*^9, 3.597667256160246*^9}, 3.5976673005317836`*^9, {
   3.597667331726568*^9, 3.597667432971359*^9}, {3.5976674653602114`*^9, 
   3.59766749855611*^9}, {3.59766758737319*^9, 3.5976676260034*^9}, {
   3.5976677377167892`*^9, 3.597667872458496*^9}, {3.597667927914668*^9, 
   3.5976679774935036`*^9}, 3.5976683615554705`*^9, {3.597668418431724*^9, 
   3.5976685093629246`*^9}, {3.5976685423538117`*^9, 
   3.5976685628369837`*^9}, {3.59766860979867*^9, 3.597668665857876*^9}, {
   3.5976686962796164`*^9, 3.5976688305892982`*^9}, {3.5976688663153415`*^9, 
   3.597668909463809*^9}, {3.5976689749975576`*^9, 3.5976689814639273`*^9}, {
   3.5976690817446632`*^9, 3.5976690841768026`*^9}, {3.5976691225009947`*^9, 
   3.5976691599011335`*^9}, {3.5976692224937134`*^9, 
   3.5976692674622855`*^9}, {3.597669313670929*^9, 3.597669320094296*^9}, {
   3.5976694931101923`*^9, 3.597669515384466*^9}, {3.597684843260747*^9, 
   3.597684993240325*^9}, {3.597685049373536*^9, 3.597685105587751*^9}, {
   3.5976851554216013`*^9, 3.597685322294146*^9}, {3.5976853562300873`*^9, 
   3.5976853862878065`*^9}, {3.5976854439871063`*^9, 3.597685458354928*^9}, {
   3.5976854952990413`*^9, 3.5976855137670975`*^9}, {3.597706690182774*^9, 
   3.597706690425788*^9}, {3.597706912526491*^9, 3.5977070183165417`*^9}, {
   3.597707110537817*^9, 3.597707270987994*^9}, {3.5977073329915404`*^9, 
   3.597707371600749*^9}, {3.597707423511718*^9, 3.597707538658304*^9}, {
   3.597707621885064*^9, 3.5977077248369527`*^9}, {3.5977078779817123`*^9, 
   3.597707967700844*^9}, {3.597708056545925*^9, 3.597708092928006*^9}, {
   3.597708130987183*^9, 3.597708164443097*^9}, {3.597708228961787*^9, 
   3.5977084224038515`*^9}, {3.5977084560117736`*^9, 3.597708477317992*^9}, {
   3.5977085497811365`*^9, 3.597708557684589*^9}, {3.597709012869624*^9, 
   3.597709039294135*^9}, {3.597709082927631*^9, 3.5977090998325977`*^9}, 
   3.597711249177098*^9, {3.597711283938086*^9, 3.5977114497935724`*^9}, {
   3.5977114839745274`*^9, 3.597711484040531*^9}, {3.597711543720945*^9, 
   3.5977115485212193`*^9}, {3.597712366166986*^9, 3.5977124094844637`*^9}, {
   3.597865301466826*^9, 3.5978653030199146`*^9}, {3.5979384197415576`*^9, 
   3.597938421792675*^9}, 3.5980001601783886`*^9, {3.5980062503669724`*^9, 
   3.5980062870350695`*^9}, {3.598015427442871*^9, 3.5980154521872864`*^9}, {
   3.5980157794020023`*^9, 3.5980158275607567`*^9}, {3.5980164020716166`*^9, 
   3.5980164580558186`*^9}, {3.598017117158517*^9, 3.5980171455461407`*^9}, {
   3.598017186769499*^9, 3.598017192948852*^9}}],

Cell[TextData[{
 "Now, we pick a set of parameters, including spring constants \
\[OpenCurlyQuote]k*\[CloseCurlyQuote], masses \[OpenCurlyQuote]m*\
\[CloseCurlyQuote], lattice separation \[OpenCurlyQuote]a\[CloseCurlyQuote], \
and (half the) angle between the lattice vectors \[OpenCurlyQuote]theta\
\[CloseCurlyQuote].\n\nThe end result is a table of rows that contain: \
{qPoint, {{omega, e1, e2}, {omega, e1, e2}, ...}}\n\nOperating on the temp \
table \[OpenCurlyQuote]r\[CloseCurlyQuote], we now back-substitute into the \
trial solution, to obtain the oscillation ",
 Cell[BoxData[
  FormBox[
   RowBox[{
    RowBox[{
     SubscriptBox["u", 
      RowBox[{"n", ",", "i", " "}]], "(", 
     RowBox[{
      SubscriptBox["r", 
       RowBox[{"n", "'"}]], ",", " ", "t"}], ")"}], "=", " ", 
    RowBox[{
     FractionBox[
      RowBox[{
       SubscriptBox["\[Epsilon]", "i"], 
       RowBox[{"(", "q", ")"}], " "}], 
      SqrtBox[
       SubscriptBox["m", "i"]]], 
     SuperscriptBox["e", 
      RowBox[{"I", " ", 
       RowBox[{"(", 
        RowBox[{
         RowBox[{
          SubscriptBox["r", 
           RowBox[{"n", "'"}]], ".", " ", "q"}], " ", "-", " ", 
         RowBox[{"\[Omega]", " ", "t"}]}], ")"}]}]]}]}], TraditionalForm]]],
 " for each of the masses i as a function of ",
 Cell[BoxData[
  FormBox[
   SubscriptBox["r", "n"], TraditionalForm]]],
 " and ",
 Cell[BoxData[
  FormBox["t", TraditionalForm]]],
 ".\nThis is a table of rows {q, \[Omega], ",
 Cell[BoxData[
  FormBox[
   FractionBox[
    RowBox[{
     SubscriptBox["\[Epsilon]", "2"], 
     RowBox[{"(", "q", ")"}], " "}], 
    SqrtBox[
     SubscriptBox["m", "2"]]], TraditionalForm]]],
 ", ",
 Cell[BoxData[
  FormBox[
   RowBox[{
    FractionBox[
     RowBox[{
      SubscriptBox["\[Epsilon]", "2"], 
      RowBox[{"(", "q", ")"}], " "}], 
     SqrtBox[
      SubscriptBox["m", "2"]]], "}"}], TraditionalForm]]],
 "\n\nFIXME: qi != 4 (i.e.: 8) is busted.  Want that for 3D dispersion \
relation plot points.\nFIXME: animation flashes.  Try with Epilog for the \
points.  That should also allow for different point sizes, graphically \
representing the mass differences.\nFIXME: animate \
\[OpenCurlyDoubleQuote]springs\[CloseCurlyDoubleQuote] coupling m_{0,0},1 \
with NN\[CloseCurlyQuote]s.  Label these.\nFIXME: Label masses in {0,0} unit \
cell.\n\nFinally, perform a plot of the oscillations for the lattice."
}], "Text",
 CellChangeTimes->{{3.5978929016147513`*^9, 3.5978929274592295`*^9}, {
  3.5978929735108633`*^9, 3.597893126362606*^9}, {3.5980155518889885`*^9, 
  3.5980155931733503`*^9}, {3.598016901305171*^9, 3.598016954574218*^9}, {
  3.598017047485532*^9, 3.59801706353345*^9}, {3.598017470394721*^9, 
  3.598017470539729*^9}, {3.5980191253563795`*^9, 3.5980191405962515`*^9}, {
  3.598019730716004*^9, 3.598019849333789*^9}, {3.5980198801175494`*^9, 
  3.5980199191117797`*^9}}],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"Manipulate", "[", "\[IndentingNewLine]", 
  RowBox[{
   RowBox[{"DynamicModule", "[", 
    RowBox[{
     RowBox[{"{", 
      RowBox[{
      "b", ",", " ", "qpRange", ",", " ", "params", ",", " ", "functions", 
       ",", " ", "qi"}], "}"}], ",", "\[IndentingNewLine]", 
     RowBox[{
      RowBox[{"qi", " ", "=", " ", "4"}], " ", ";", "\[IndentingNewLine]", 
      RowBox[{"params", " ", "=", " ", 
       RowBox[{"{", 
        RowBox[{
        "k1", ",", " ", "k2", ",", " ", "k3", ",", " ", "k4", ",", " ", "m1", 
         ",", " ", "m2", ",", " ", "a", ",", " ", "theta", ",", " ", "qi"}], 
        "}"}]}], " ", ";", "\[IndentingNewLine]", "\[IndentingNewLine]", 
      RowBox[{"(*", 
       RowBox[{
        RowBox[{
         RowBox[{"{", 
          RowBox[{"a", ",", " ", "theta", ",", " ", "qi"}], "}"}], " ", "=", 
         " ", 
         RowBox[{"Take", "[", 
          RowBox[{"params", ",", " ", 
           RowBox[{"-", "3"}]}], "]"}]}], " ", ";"}], "*)"}], 
      "\[IndentingNewLine]", 
      RowBox[{"qpRange", " ", "=", " ", 
       RowBox[{"{", 
        RowBox[{
         RowBox[{"qi", "/", "2"}], ",", " ", 
         RowBox[{"qi", "/", "2"}]}], "}"}]}], " ", ";", "\[IndentingNewLine]", 
      RowBox[{"b", " ", "=", " ", 
       RowBox[{"a", " ", 
        RowBox[{"Sin", "[", " ", "theta", " ", "]"}]}]}], " ", ";", 
      "\[IndentingNewLine]", "\[IndentingNewLine]", 
      RowBox[{"functions", "=", " ", 
       RowBox[{"Module", "[", 
        RowBox[{
         RowBox[{"{", "r", "}"}], ",", "\[IndentingNewLine]", 
         RowBox[{
          RowBox[{"r", " ", "=", " ", 
           RowBox[{"qTable", "[", "params", "]"}]}], "  ", ";", 
          "\[IndentingNewLine]", "\[IndentingNewLine]", 
          RowBox[{"Flatten", "[", 
           RowBox[{
            RowBox[{"Table", "[", "\[IndentingNewLine]", 
             RowBox[{
              RowBox[{"resultsForOneQpoint", "[", 
               RowBox[{
                RowBox[{"{", 
                 RowBox[{"m1", ",", " ", "m2"}], "}"}], ",", " ", "j", ",", 
                " ", "i", ",", " ", "r"}], "]"}], "\[IndentingNewLine]", ",", 
              " ", 
              RowBox[{"{", 
               RowBox[{"j", ",", " ", 
                RowBox[{"Length", "[", "r", "]"}]}], "}"}], 
              "\[IndentingNewLine]", ",", 
              RowBox[{"{", 
               RowBox[{"i", ",", " ", "numFrequenciesPerQ"}], "}"}]}], " ", 
             "\[IndentingNewLine]", "]"}], ",", "1"}], "]"}]}]}], " ", 
        "\[IndentingNewLine]", "]"}]}], " ", ";", "\[IndentingNewLine]", 
      "\[IndentingNewLine]", 
      RowBox[{"(*", 
       RowBox[{"Take", "[", 
        RowBox[{"functions", ",", " ", 
         RowBox[{"{", 
          RowBox[{"1", ",", "2"}], "}"}]}], "]"}], "*)"}], 
      "\[IndentingNewLine]", "\[IndentingNewLine]", 
      RowBox[{"Manipulate", "[", "\[IndentingNewLine]", 
       RowBox[{
        RowBox[{"DynamicModule", "[", 
         RowBox[{
          RowBox[{"{", 
           RowBox[{
           "rN", ",", " ", "points1", ",", " ", "points2", ",", " ", "range", 
            ",", " ", "lines1", ",", " ", "lines2", ",", " ", "rr", ",", " ", 
            "e1", ",", " ", "e2", ",", " ", "f1", ",", " ", "f2", ",", " ", 
            "g0", ",", " ", "g1", ",", " ", "g2", ",", " ", "q", ",", " ", 
            "omega", ",", " ", "qFromLoc"}], "}"}], ",", 
          "\[IndentingNewLine]", "\[IndentingNewLine]", 
          RowBox[{
           RowBox[{"range", " ", "=", " ", "2"}], " ", ";", 
           "\[IndentingNewLine]", 
           RowBox[{"(*", " ", 
            RowBox[{
             RowBox[{"for", " ", "when", " ", "n", " ", 
              RowBox[{"in", " ", "[", 
               RowBox[{"1", ",", " ", 
                RowBox[{"len", "[", "r", "]"}]}], "]"}]}], ":"}], " ", "*)"}],
            "\[IndentingNewLine]", 
           RowBox[{"(*", 
            RowBox[{
             RowBox[{"rr", " ", "=", " ", 
              RowBox[{"functions", "[", 
               RowBox[{"[", "n", "]"}], "]"}]}], " ", ";"}], "*)"}], 
           "\[IndentingNewLine]", "\[IndentingNewLine]", 
           RowBox[{"qFromLoc", " ", "=", " ", 
            RowBox[{"Pi", " ", 
             RowBox[{
              RowBox[{
               RowBox[{"Round", "[", "qp", "]"}], "/", 
               RowBox[{"(", 
                RowBox[{"qi", "/", "2"}], ")"}]}], " ", "/", 
              RowBox[{"(", 
               RowBox[{"a", " ", 
                RowBox[{"Sin", "[", 
                 RowBox[{"2", " ", "theta"}], "]"}]}], " ", ")"}]}]}]}], " ", 
           ";", "\[IndentingNewLine]", 
           RowBox[{"rr", " ", "=", " ", 
            RowBox[{
             RowBox[{"Select", "[", " ", 
              RowBox[{"functions", ",", " ", 
               RowBox[{
                RowBox[{
                 RowBox[{"#", "[", 
                  RowBox[{"[", "1", "]"}], "]"}], " ", "==", " ", 
                 "qFromLoc"}], " ", "&"}]}], " ", "]"}], "[", 
             RowBox[{"[", "n", "]"}], "]"}]}], " ", ";", 
           "\[IndentingNewLine]", "\[IndentingNewLine]", 
           RowBox[{
            RowBox[{"{", 
             RowBox[{"q", ",", " ", "omega", ",", " ", "e1", ",", " ", "e2"}],
              "}"}], " ", "=", " ", "rr"}], " ", ";", "\[IndentingNewLine]", 
           RowBox[{"f1", " ", ":=", " ", 
            RowBox[{
             RowBox[{"Re", "[", 
              RowBox[{"e1", " ", 
               RowBox[{"Exp", "[", " ", 
                RowBox[{"I", 
                 RowBox[{"(", 
                  RowBox[{
                   RowBox[{"#1", " ", ".", " ", "q"}], " ", "-", " ", 
                   RowBox[{"omega", " ", "#2"}]}], ")"}]}], " ", "]"}]}], " ",
               "]"}], " ", "&"}]}], ";", "\[IndentingNewLine]", 
           RowBox[{"f2", " ", ":=", " ", 
            RowBox[{
             RowBox[{"Re", "[", 
              RowBox[{"e2", " ", 
               RowBox[{"Exp", "[", " ", 
                RowBox[{"I", 
                 RowBox[{"(", 
                  RowBox[{
                   RowBox[{"#1", " ", ".", " ", "q"}], " ", "-", " ", 
                   RowBox[{"omega", " ", "#2"}]}], ")"}]}], " ", "]"}]}], " ",
               "]"}], " ", "&"}]}], ";", "\[IndentingNewLine]", 
           "\[IndentingNewLine]", 
           RowBox[{"rN", " ", ":=", " ", 
            RowBox[{
             RowBox[{"rn", "[", " ", 
              RowBox[{"#", ",", " ", "a", ",", " ", "theta"}], " ", "]"}], 
             " ", "&"}]}], " ", ";", "\[IndentingNewLine]", 
           RowBox[{"g0", " ", "=", " ", 
            RowBox[{
             RowBox[{
              RowBox[{"rN", "[", "#", "]"}], " ", "+", " ", 
              RowBox[{"{", 
               RowBox[{"0", ",", " ", 
                RowBox[{"b", "/", "2"}]}], "}"}]}], "  ", "&"}]}], ";", 
           "\[IndentingNewLine]", "\[IndentingNewLine]", 
           RowBox[{"g1", " ", "=", " ", 
            RowBox[{
             RowBox[{
              RowBox[{"g0", "[", "#1", "]"}], "  ", "+", " ", 
              RowBox[{"f1", "[", " ", 
               RowBox[{
                RowBox[{"rN", "[", "#1", "]"}], ",", "#2"}], " ", "]"}]}], 
             " ", "&"}]}], " ", ";", "\[IndentingNewLine]", 
           RowBox[{"g2", "=", " ", 
            RowBox[{
             RowBox[{
              RowBox[{"g0", "[", "#1", "]"}], " ", "+", " ", 
              RowBox[{"{", 
               RowBox[{"0", ",", " ", "b"}], "}"}], " ", "+", " ", 
              RowBox[{"f2", "[", " ", 
               RowBox[{
                RowBox[{"rN", "[", "#1", "]"}], ",", "#2"}], " ", "]"}]}], 
             " ", "&"}]}], " ", ";", "\[IndentingNewLine]", 
           "\[IndentingNewLine]", 
           RowBox[{"(*", " ", 
            RowBox[{"Stubs", ",", " ", 
             RowBox[{"to", " ", "verify", " ", 
              RowBox[{"plotting", "."}]}]}], " ", "*)"}], 
           "\[IndentingNewLine]", 
           RowBox[{"(*", 
            RowBox[{
             RowBox[{"g1", "=", " ", 
              RowBox[{
               RowBox[{
                RowBox[{"g0", "[", "#1", "]"}], " ", "+", " ", 
                RowBox[{
                 RowBox[{"Cos", "[", " ", 
                  RowBox[{
                   RowBox[{
                    RowBox[{"rN", "[", "#1", "]"}], ".", " ", "q"}], " ", "-",
                    " ", 
                   RowBox[{"omega", " ", "#2"}]}], " ", "]"}], "/", "12"}]}], 
               " ", "&"}]}], " ", ";", "\[IndentingNewLine]", 
             RowBox[{"g2", "=", " ", 
              RowBox[{
               RowBox[{
                RowBox[{"g0", "[", "#1", "]"}], " ", "+", " ", 
                RowBox[{"{", 
                 RowBox[{"0", ",", " ", "b"}], "}"}], "+", " ", 
                RowBox[{
                 RowBox[{"Sin", "[", " ", 
                  RowBox[{
                   RowBox[{
                    RowBox[{"rN", "[", "#1", "]"}], ".", " ", "q"}], " ", "-",
                    " ", 
                   RowBox[{"omega", " ", "#2"}]}], " ", "]"}], "/", "12"}]}], 
               " ", "&"}]}], " ", ";"}], "*)"}], "\[IndentingNewLine]", 
           "\[IndentingNewLine]", 
           RowBox[{"points1", " ", "=", " ", 
            RowBox[{
             RowBox[{"Flatten", "[", " ", 
              RowBox[{
               RowBox[{"Table", "[", " ", 
                RowBox[{
                 RowBox[{"g1", "[", 
                  RowBox[{
                   RowBox[{"{", 
                    RowBox[{"i", ",", " ", "j"}], "}"}], ",", " ", "#"}], 
                  "]"}], " ", ",", " ", 
                 RowBox[{"{", 
                  RowBox[{"i", ",", " ", 
                   RowBox[{
                    RowBox[{"-", "range"}], "-", "1"}], ",", " ", "range"}], 
                  "}"}], ",", " ", 
                 RowBox[{"{", 
                  RowBox[{"j", ",", " ", 
                   RowBox[{
                    RowBox[{"-", "range"}], "-", "1"}], ",", " ", "range"}], 
                  "}"}]}], "]"}], ",", " ", "1"}], " ", "]"}], " ", "&"}]}], 
           " ", ";", "\[IndentingNewLine]", 
           RowBox[{"points2", " ", "=", " ", 
            RowBox[{
             RowBox[{"Flatten", "[", " ", 
              RowBox[{
               RowBox[{"Table", "[", " ", 
                RowBox[{
                 RowBox[{"g2", "[", 
                  RowBox[{
                   RowBox[{"{", 
                    RowBox[{"i", ",", " ", "j"}], "}"}], ",", " ", "#"}], 
                  "]"}], " ", ",", " ", 
                 RowBox[{"{", 
                  RowBox[{"i", ",", " ", 
                   RowBox[{
                    RowBox[{"-", "range"}], "-", "1"}], ",", " ", "range"}], 
                  "}"}], ",", " ", 
                 RowBox[{"{", 
                  RowBox[{"j", ",", " ", 
                   RowBox[{
                    RowBox[{"-", "range"}], "-", "1"}], ",", " ", "range"}], 
                  "}"}]}], "]"}], ",", " ", "1"}], " ", "]"}], " ", "&"}]}], 
           " ", ";", "\[IndentingNewLine]", 
           RowBox[{"lines1", " ", "=", " ", 
            RowBox[{"Table", "[", " ", 
             RowBox[{
              RowBox[{"{", " ", "\[IndentingNewLine]", 
               RowBox[{
                RowBox[{"rN", "[", 
                 RowBox[{"{", 
                  RowBox[{"i", ",", " ", 
                   RowBox[{"-", "3"}]}], "}"}], "]"}], ",", 
                "\[IndentingNewLine]", 
                RowBox[{"rN", "[", 
                 RowBox[{"{", 
                  RowBox[{"i", ",", " ", "3"}], "}"}], "]"}]}], 
               "\[IndentingNewLine]", "}"}], " ", ",", 
              RowBox[{"{", 
               RowBox[{"i", ",", " ", 
                RowBox[{"-", "3"}], ",", " ", "3"}], "}"}]}], "]"}]}], "  ", 
           ";", "\[IndentingNewLine]", 
           RowBox[{"lines2", " ", "=", " ", 
            RowBox[{"Table", "[", " ", 
             RowBox[{
              RowBox[{"{", " ", "\[IndentingNewLine]", 
               RowBox[{
                RowBox[{"rN", "[", 
                 RowBox[{"{", 
                  RowBox[{
                   RowBox[{"-", "3"}], ",", " ", "i"}], "}"}], "]"}], ",", 
                "\[IndentingNewLine]", 
                RowBox[{"rN", "[", 
                 RowBox[{"{", 
                  RowBox[{"3", ",", " ", "i"}], "}"}], "]"}]}], 
               "\[IndentingNewLine]", "}"}], " ", ",", 
              RowBox[{"{", 
               RowBox[{"i", ",", " ", 
                RowBox[{"-", "3"}], ",", " ", "3"}], "}"}]}], "]"}]}], "  ", 
           ";", "\[IndentingNewLine]", "\[IndentingNewLine]", 
           RowBox[{"Column", "[", 
            RowBox[{"{", "\[IndentingNewLine]", 
             RowBox[{"(*", 
              RowBox[{
               RowBox[{"Row", "[", 
                RowBox[{"{", 
                 RowBox[{"\"\<qp = \>\"", ",", " ", 
                  RowBox[{
                   RowBox[{"Round", "[", "qp", "]"}], " ", "//", " ", 
                   "MatrixForm"}]}], "}"}], "]"}], ",", "\[IndentingNewLine]", 
               RowBox[{"Row", "[", 
                RowBox[{"{", 
                 RowBox[{"\"\<qFromLoc = \>\"", ",", " ", 
                  RowBox[{"qFromLoc", " ", "//", " ", "MatrixForm"}]}], "}"}],
                 "]"}], ","}], "*)"}], "\[IndentingNewLine]", 
             RowBox[{
              RowBox[{"Row", "[", 
               RowBox[{"{", 
                RowBox[{
                 RowBox[{"OverVector", "[", "\"\<q\>\"", "]"}], ",", 
                 "\"\< = \>\"", ",", " ", 
                 RowBox[{"q", " ", "//", " ", "MatrixForm"}]}], "}"}], "]"}], 
              ",", "\[IndentingNewLine]", 
              RowBox[{"Row", "[", 
               RowBox[{"{", 
                RowBox[{"\"\<\[Omega] = \>\"", ",", " ", "omega"}], "}"}], 
               "]"}], ",", "\[IndentingNewLine]", 
              RowBox[{"Animate", "[", "\[IndentingNewLine]", 
               RowBox[{
                RowBox[{"Show", "[", 
                 RowBox[{"{", "\[IndentingNewLine]", 
                  RowBox[{
                   RowBox[{"ListPlot", "[", " ", 
                    RowBox[{
                    RowBox[{"Flatten", "[", 
                    RowBox[{
                    RowBox[{"{", 
                    RowBox[{
                    RowBox[{"points1", "[", "t", "]"}], ",", 
                    RowBox[{"points2", "[", "t", "]"}]}], "}"}], ",", " ", 
                    "1"}], "]"}], ",", " ", 
                    RowBox[{"PlotRange", " ", "\[Rule]", " ", 
                    RowBox[{"{", 
                    RowBox[{
                    RowBox[{"{", 
                    RowBox[{
                    RowBox[{"-", "2"}], ",", " ", "2"}], "}"}], ",", " ", 
                    RowBox[{"{", 
                    RowBox[{
                    RowBox[{"-", "2"}], ",", " ", "2"}], "}"}]}], "}"}]}]}], 
                    " ", "]"}], ",", " ", "\[IndentingNewLine]", 
                   RowBox[{"ListLinePlot", "[", 
                    RowBox[{"Flatten", "[", 
                    RowBox[{
                    RowBox[{"{", 
                    RowBox[{"lines1", ",", " ", "lines2"}], "}"}], ",", " ", 
                    "1"}], "]"}], "]"}]}], " ", "\[IndentingNewLine]", "}"}], 
                 " ", "]"}], "\[IndentingNewLine]", ",", 
                RowBox[{"{", 
                 RowBox[{"t", ",", " ", "0", ",", " ", 
                  RowBox[{"2", " ", 
                   RowBox[{"Pi", "/", "omega"}]}]}], "}"}]}], " ", 
               "\[IndentingNewLine]", 
               RowBox[{"(*", 
                RowBox[{",", " ", 
                 RowBox[{"AnimationRunning", "\[Rule]", "False"}]}], "*)"}], 
               " ", "]"}]}], " ", "\[IndentingNewLine]", "}"}], "]"}]}]}], 
         "\[IndentingNewLine]", "]"}], "\[IndentingNewLine]", ",", 
        RowBox[{"{", 
         RowBox[{
          RowBox[{"{", 
           RowBox[{
           "n", ",", " ", "1", ",", " ", 
            "\"\<\!\(\*SubscriptBox[\(\[Omega]\), \(n\)]\): n = \>\""}], 
           "}"}], ",", " ", "1", ",", " ", "numFrequenciesPerQ", ",", " ", 
          "1", ",", " ", 
          RowBox[{"Appearance", "\[Rule]", "\"\<Open\>\""}]}], "}"}], 
        "\[IndentingNewLine]", ",", " ", 
        RowBox[{"{", 
         RowBox[{
          RowBox[{"{", 
           RowBox[{"qp", ",", 
            RowBox[{"{", 
             RowBox[{"0", ",", "0"}], "}"}], ",", " ", "\[IndentingNewLine]", 
            RowBox[{"Row", "[", 
             RowBox[{"{", "\[IndentingNewLine]", 
              RowBox[{
               SubscriptBox[
                RowBox[{"OverVector", "[", "\"\<q\>\"", "]"}], 
                RowBox[{"i", ",", "j"}]], ",", " ", "\"\<: \>\"", ",", 
               RowBox[{
                RowBox[{"{", 
                 RowBox[{"i", ",", "j"}], "}"}], "//", " ", "MatrixForm"}], 
               ",", " ", "\"\< = \>\""}], "\[IndentingNewLine]", "}"}], 
             "]"}]}], "}"}], ",", 
          RowBox[{"-", "qpRange"}], ",", " ", "qpRange"}], "}"}]}], 
       "\[IndentingNewLine]", "]"}]}]}], " ", 
    RowBox[{"(*", " ", "Manip", " ", "*)"}], "\[IndentingNewLine]", "]"}], 
   ",", "\[IndentingNewLine]", 
   RowBox[{"{", 
    RowBox[{
     RowBox[{"{", 
      RowBox[{
      "k1", ",", " ", "0.5", ",", " ", 
       "\"\<\!\(\*SubscriptBox[\(k\), \(1\)]\)\>\""}], "}"}], ",", " ", 
     "0.25", ",", " ", "0.9"}], "}"}], ",", "\[IndentingNewLine]", 
   RowBox[{"{", 
    RowBox[{
     RowBox[{"{", 
      RowBox[{
      "k2", ",", " ", "0.5", ",", " ", 
       "\"\<\!\(\*SubscriptBox[\(k\), \(2\)]\)\>\""}], "}"}], ",", " ", 
     "0.25", ",", " ", "0.9"}], "}"}], ",", "\[IndentingNewLine]", 
   RowBox[{"{", 
    RowBox[{
     RowBox[{"{", 
      RowBox[{
      "k3", ",", " ", "0.25", ",", " ", 
       "\"\<\!\(\*SubscriptBox[\(k\), \(3\)]\)\>\""}], "}"}], ",", " ", 
     "0.25", ",", " ", "0.9"}], "}"}], ",", "\[IndentingNewLine]", 
   RowBox[{"{", 
    RowBox[{
     RowBox[{"{", 
      RowBox[{
      "k4", ",", " ", "0.25", ",", " ", 
       "\"\<\!\(\*SubscriptBox[\(k\), \(4\)]\)\>\""}], "}"}], ",", " ", 
     "0.25", ",", " ", "0.9"}], "}"}], ",", "\[IndentingNewLine]", 
   RowBox[{"{", 
    RowBox[{
     RowBox[{"{", 
      RowBox[{
      "m1", ",", " ", "10", ",", " ", 
       "\"\<\!\(\*SubscriptBox[\(m\), \(1\)]\)\>\""}], "}"}], ",", " ", "5", 
     ",", " ", "30"}], "}"}], ",", "\[IndentingNewLine]", 
   RowBox[{"{", 
    RowBox[{
     RowBox[{"{", 
      RowBox[{
      "m2", ",", " ", "20", ",", " ", 
       "\"\<\!\(\*SubscriptBox[\(m\), \(2\)]\)\>\""}], "}"}], ",", " ", "5", 
     ",", " ", "30"}], "}"}], ",", "\[IndentingNewLine]", 
   RowBox[{"{", 
    RowBox[{
     RowBox[{"{", 
      RowBox[{"a", ",", " ", "1", ",", " ", "\"\<a\>\""}], "}"}], ",", " ", 
     "0.5", ",", " ", "2"}], "}"}], ",", "\[IndentingNewLine]", 
   RowBox[{"{", 
    RowBox[{
     RowBox[{"{", 
      RowBox[{"theta", ",", " ", 
       RowBox[{"Pi", "/", "3"}], ",", " ", "\"\<\[Theta]\>\""}], "}"}], ",", 
     RowBox[{"Pi", "/", "3"}], ",", " ", 
     RowBox[{"4", " ", 
      RowBox[{"Pi", "/", "8"}]}]}], "}"}]}], 
  RowBox[{"(*", 
   RowBox[{",", "\[IndentingNewLine]", 
    RowBox[{"{", 
     RowBox[{
      RowBox[{"{", 
       RowBox[{"qi", ",", " ", "4", ",", " ", "\"\<q mesh size\>\""}], "}"}], 
      ",", " ", "4", ",", " ", "4"}], "}"}]}], "*)"}], "\[IndentingNewLine]", 
  "]"}]], "Input",
 CellChangeTimes->{{3.597864445842887*^9, 3.5978646680015936`*^9}, {
   3.5978647118311005`*^9, 3.5978648715932384`*^9}, {3.597864912755593*^9, 
   3.5978649259353466`*^9}, {3.597864991124075*^9, 3.5978650208307743`*^9}, {
   3.597865064432268*^9, 3.597865065958356*^9}, {3.597865100633339*^9, 
   3.5978651411176543`*^9}, {3.5978651885553675`*^9, 3.597865191695547*^9}, {
   3.597865235820071*^9, 3.5978652415764008`*^9}, {3.5978652748853054`*^9, 
   3.597865278794529*^9}, {3.597865334775731*^9, 3.597865359736159*^9}, {
   3.5978653990914097`*^9, 3.5978654746657324`*^9}, {3.597865527938779*^9, 
   3.5978655353882055`*^9}, {3.5978662795147667`*^9, 
   3.5978663502978153`*^9}, {3.5978663811215787`*^9, 3.597866456007862*^9}, {
   3.5978668649882545`*^9, 3.5978669827589903`*^9}, {3.597867189881837*^9, 
   3.5978672355124474`*^9}, 3.5978672694233866`*^9, {3.5978754374545712`*^9, 
   3.5978756302455983`*^9}, {3.5978757997662945`*^9, 
   3.5978758017934103`*^9}, {3.5978758379264765`*^9, 3.597875852684321*^9}, {
   3.5978857525918503`*^9, 3.597885770392869*^9}, {3.59788580432981*^9, 
   3.597885854773695*^9}, {3.5978859534583397`*^9, 3.5978860170569773`*^9}, {
   3.597886052427*^9, 3.5978860787675066`*^9}, 3.5978863799257317`*^9, {
   3.597887113513691*^9, 3.5978874435055656`*^9}, {3.5978874896812067`*^9, 
   3.5978874898852177`*^9}, 3.5978878913681817`*^9, {3.597887926163172*^9, 
   3.5978879462483206`*^9}, {3.5978880111650333`*^9, 3.597888012964136*^9}, {
   3.597888177976575*^9, 3.5978882059391737`*^9}, 3.5978931414604692`*^9, {
   3.597999672828513*^9, 3.5979996787408514`*^9}, {3.5979999217257495`*^9, 
   3.5979999323013544`*^9}, {3.5979999809231358`*^9, 3.597999982860246*^9}, {
   3.59800632672534*^9, 3.598006338175995*^9}, {3.5980074813523808`*^9, 
   3.598007507316866*^9}, {3.5980080162769766`*^9, 3.598008026194544*^9}, {
   3.5980151554073114`*^9, 3.598015155488316*^9}, 3.598015346773257*^9, {
   3.5980154096158514`*^9, 3.5980154316181097`*^9}, {3.59801547724572*^9, 
   3.5980154870712814`*^9}, {3.5980156065421147`*^9, 
   3.5980156072721567`*^9}, {3.598015638786959*^9, 3.5980156431722097`*^9}, {
   3.598016489584622*^9, 3.598016506618596*^9}, {3.5980167160215735`*^9, 
   3.598016722236929*^9}, {3.5980168102129607`*^9, 3.598016821701618*^9}, {
   3.5980170104134116`*^9, 3.5980170444483585`*^9}, 3.5980171872725277`*^9, {
   3.598017218588319*^9, 3.5980173820396676`*^9}, 3.598017464725397*^9, {
   3.5980175507833195`*^9, 3.5980175650211334`*^9}, {3.598017596497934*^9, 
   3.598017620103284*^9}, {3.598017655894331*^9, 3.5980179381004725`*^9}, {
   3.5980179804278936`*^9, 3.5980181453363256`*^9}, {3.598018233634376*^9, 
   3.5980182600878887`*^9}, {3.5980183271967278`*^9, 
   3.5980183340411186`*^9}, {3.59801840749032*^9, 3.598018421790138*^9}, {
   3.598018503691822*^9, 3.5980185114682674`*^9}, {3.598018631164113*^9, 
   3.5980186400256205`*^9}, {3.5980187073404703`*^9, 
   3.5980188278503633`*^9}, {3.5980188869717445`*^9, 3.598018927683073*^9}, {
   3.5980189842443085`*^9, 3.5980190223404875`*^9}, {3.5980196487933187`*^9, 
   3.598019717037222*^9}}],

Cell[BoxData[
 TagBox[
  StyleBox[
   DynamicModuleBox[{$CellContext`a$$ = 1, $CellContext`k1$$ = 
    0.5, $CellContext`k2$$ = 0.5, $CellContext`k3$$ = 
    0.25, $CellContext`k4$$ = 0.25, $CellContext`m1$$ = 
    10, $CellContext`m2$$ = 20, $CellContext`theta$$ = Rational[1, 3] Pi, 
    Typeset`show$$ = True, Typeset`bookmarkList$$ = {}, 
    Typeset`bookmarkMode$$ = "Menu", Typeset`animator$$, Typeset`animvar$$ = 
    1, Typeset`name$$ = "\"untitled\"", Typeset`specs$$ = {{{
       Hold[$CellContext`k1$$], 0.5, "\!\(\*SubscriptBox[\(k\), \(1\)]\)"}, 
      0.25, 0.9}, {{
       Hold[$CellContext`k2$$], 0.5, "\!\(\*SubscriptBox[\(k\), \(2\)]\)"}, 
      0.25, 0.9}, {{
       Hold[$CellContext`k3$$], 0.25, "\!\(\*SubscriptBox[\(k\), \(3\)]\)"}, 
      0.25, 0.9}, {{
       Hold[$CellContext`k4$$], 0.25, "\!\(\*SubscriptBox[\(k\), \(4\)]\)"}, 
      0.25, 0.9}, {{
       Hold[$CellContext`m1$$], 10, "\!\(\*SubscriptBox[\(m\), \(1\)]\)"}, 5, 
      30}, {{
       Hold[$CellContext`m2$$], 20, "\!\(\*SubscriptBox[\(m\), \(2\)]\)"}, 5, 
      30}, {{
       Hold[$CellContext`a$$], 1, "a"}, 0.5, 2}, {{
       Hold[$CellContext`theta$$], Rational[1, 3] Pi, "\[Theta]"}, 
      Rational[1, 3] Pi, Rational[1, 2] Pi}}, Typeset`size$$ = {
    606., {364., 371.}}, Typeset`update$$ = 0, Typeset`initDone$$, 
    Typeset`skipInitDone$$ = True, $CellContext`k1$58083$$ = 
    0, $CellContext`k2$58084$$ = 0, $CellContext`k3$58085$$ = 
    0, $CellContext`k4$58086$$ = 0, $CellContext`m1$58087$$ = 
    0, $CellContext`m2$58088$$ = 0, $CellContext`a$58089$$ = 
    0, $CellContext`theta$58090$$ = 0}, 
    DynamicBox[Manipulate`ManipulateBoxes[
     1, StandardForm, 
      "Variables" :> {$CellContext`a$$ = 1, $CellContext`k1$$ = 
        0.5, $CellContext`k2$$ = 0.5, $CellContext`k3$$ = 
        0.25, $CellContext`k4$$ = 0.25, $CellContext`m1$$ = 
        10, $CellContext`m2$$ = 20, $CellContext`theta$$ = Rational[1, 3] Pi},
       "ControllerVariables" :> {
        Hold[$CellContext`k1$$, $CellContext`k1$58083$$, 0], 
        Hold[$CellContext`k2$$, $CellContext`k2$58084$$, 0], 
        Hold[$CellContext`k3$$, $CellContext`k3$58085$$, 0], 
        Hold[$CellContext`k4$$, $CellContext`k4$58086$$, 0], 
        Hold[$CellContext`m1$$, $CellContext`m1$58087$$, 0], 
        Hold[$CellContext`m2$$, $CellContext`m2$58088$$, 0], 
        Hold[$CellContext`a$$, $CellContext`a$58089$$, 0], 
        Hold[$CellContext`theta$$, $CellContext`theta$58090$$, 0]}, 
      "OtherVariables" :> {
       Typeset`show$$, Typeset`bookmarkList$$, Typeset`bookmarkMode$$, 
        Typeset`animator$$, Typeset`animvar$$, Typeset`name$$, 
        Typeset`specs$$, Typeset`size$$, Typeset`update$$, Typeset`initDone$$,
         Typeset`skipInitDone$$}, "Body" :> 
      DynamicModule[{$CellContext`b, $CellContext`qpRange, \
$CellContext`params, $CellContext`functions, $CellContext`qi}, \
$CellContext`qi = 
         4; $CellContext`params = {$CellContext`k1$$, $CellContext`k2$$, \
$CellContext`k3$$, $CellContext`k4$$, $CellContext`m1$$, $CellContext`m2$$, \
$CellContext`a$$, $CellContext`theta$$, $CellContext`qi}; \
$CellContext`qpRange = {$CellContext`qi/2, $CellContext`qi/
           2}; $CellContext`b = $CellContext`a$$ 
          Sin[$CellContext`theta$$]; $CellContext`functions = 
         Module[{$CellContext`r$}, $CellContext`r$ = \
$CellContext`qTable[$CellContext`params]; Flatten[
             Table[
              $CellContext`resultsForOneQpoint[{$CellContext`m1$$, \
$CellContext`m2$$}, $CellContext`j, $CellContext`i, $CellContext`r$], \
{$CellContext`j, 
               
               Length[$CellContext`r$]}, {$CellContext`i, \
$CellContext`numFrequenciesPerQ}], 1]]; Manipulate[
          
          DynamicModule[{$CellContext`rN, $CellContext`points1, \
$CellContext`points2, $CellContext`range, $CellContext`lines1, \
$CellContext`lines2, $CellContext`rr, $CellContext`e1, $CellContext`e2, \
$CellContext`f1, $CellContext`f2, $CellContext`g0, $CellContext`g1, \
$CellContext`g2, $CellContext`q, $CellContext`omega, $CellContext`qFromLoc}, \
$CellContext`range = 2; $CellContext`qFromLoc = 
            Pi ((Round[$CellContext`qp]/($CellContext`qi/
               2))/($CellContext`a$$ 
              Sin[2 $CellContext`theta$$])); $CellContext`rr = Part[
              
              Select[$CellContext`functions, 
               Part[#, 
                 1] == $CellContext`qFromLoc& ], $CellContext`n]; \
{$CellContext`q, $CellContext`omega, $CellContext`e1, $CellContext`e2} = \
$CellContext`rr; $CellContext`f1 := 
            Re[$CellContext`e1 
              Exp[I (Dot[#, $CellContext`q] - $CellContext`omega #2)]]& ; \
$CellContext`f2 := 
            Re[$CellContext`e2 
              Exp[I (Dot[#, $CellContext`q] - $CellContext`omega #2)]]& ; \
$CellContext`rN := $CellContext`rn[#, $CellContext`a$$, $CellContext`theta$$]& \
; $CellContext`g0 = $CellContext`rN[#] + {
              0, $CellContext`b/
               2}& ; $CellContext`g1 = $CellContext`g0[#] + $CellContext`f1[
               $CellContext`rN[#], #2]& ; $CellContext`g2 = \
$CellContext`g0[#] + {0, $CellContext`b} + $CellContext`f2[
               $CellContext`rN[#], #2]& ; $CellContext`points1 = Flatten[
              Table[
               $CellContext`g1[{$CellContext`i, $CellContext`j}, #], \
{$CellContext`i, -$CellContext`range - 
                1, $CellContext`range}, {$CellContext`j, -$CellContext`range - 
                1, $CellContext`range}], 1]& ; $CellContext`points2 = Flatten[
              Table[
               $CellContext`g2[{$CellContext`i, $CellContext`j}, #], \
{$CellContext`i, -$CellContext`range - 
                1, $CellContext`range}, {$CellContext`j, -$CellContext`range - 
                1, $CellContext`range}], 1]& ; $CellContext`lines1 = Table[{
               $CellContext`rN[{$CellContext`i, -3}], 
               $CellContext`rN[{$CellContext`i, 3}]}, {$CellContext`i, -3, 
               3}]; $CellContext`lines2 = Table[{
               $CellContext`rN[{-3, $CellContext`i}], 
               $CellContext`rN[{3, $CellContext`i}]}, {$CellContext`i, -3, 
               3}]; Column[{
              Row[{
                OverVector["q"], " = ", 
                MatrixForm[$CellContext`q]}], 
              Row[{"\[Omega] = ", $CellContext`omega}], 
              Animate[
               Show[{
                 ListPlot[
                  Flatten[{
                    $CellContext`points1[$CellContext`t], 
                    $CellContext`points2[$CellContext`t]}, 1], 
                  PlotRange -> {{-2, 2}, {-2, 2}}], 
                 ListLinePlot[
                  
                  Flatten[{$CellContext`lines1, $CellContext`lines2}, 
                   1]]}], {$CellContext`t, 0, 
                2 (Pi/$CellContext`omega)}]}]], {{$CellContext`n, 1, 
            "\!\(\*SubscriptBox[\(\[Omega]\), \(n\)]\): n = "}, 
           1, $CellContext`numFrequenciesPerQ, 1, Appearance -> 
           "Open"}, {{$CellContext`qp, {0, 0}, 
            Row[{
              Subscript[
               OverVector["q"], $CellContext`i, $CellContext`j], ": ", 
              MatrixForm[{$CellContext`i, $CellContext`j}], 
              " = "}]}, -$CellContext`qpRange, $CellContext`qpRange}]], 
      "Specifications" :> {{{$CellContext`k1$$, 0.5, 
          "\!\(\*SubscriptBox[\(k\), \(1\)]\)"}, 0.25, 
         0.9}, {{$CellContext`k2$$, 0.5, 
          "\!\(\*SubscriptBox[\(k\), \(2\)]\)"}, 0.25, 
         0.9}, {{$CellContext`k3$$, 0.25, 
          "\!\(\*SubscriptBox[\(k\), \(3\)]\)"}, 0.25, 
         0.9}, {{$CellContext`k4$$, 0.25, 
          "\!\(\*SubscriptBox[\(k\), \(4\)]\)"}, 0.25, 
         0.9}, {{$CellContext`m1$$, 10, "\!\(\*SubscriptBox[\(m\), \(1\)]\)"},
          5, 30}, {{$CellContext`m2$$, 20, 
          "\!\(\*SubscriptBox[\(m\), \(2\)]\)"}, 5, 
         30}, {{$CellContext`a$$, 1, "a"}, 0.5, 
         2}, {{$CellContext`theta$$, Rational[1, 3] Pi, "\[Theta]"}, 
         Rational[1, 3] Pi, Rational[1, 2] Pi}}, "Options" :> {}, 
      "DefaultOptions" :> {}],
     ImageSizeCache->{988., {403., 410.}},
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
  3.5980190429786677`*^9, 3.5980195790223274`*^9, {3.5980196608990107`*^9, 
   3.5980196741817703`*^9}, 3.598019705488561*^9, 3.5980200767987986`*^9}]
}, Open  ]]
},
WindowSize->{1584, 765},
WindowMargins->{{0, Automatic}, {Automatic, 0}},
FrontEndVersion->"9.0 for Microsoft Windows (64-bit) (January 25, 2013)",
StyleDefinitions->FrontEnd`FileName[{"Report"}, "StandardReport.nb", 
  CharacterEncoding -> "WindowsANSI"]
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
Cell[1463, 33, 486, 9, 118, "Text"],
Cell[1952, 44, 24849, 634, 2228, "Input",
 InitializationCell->True],
Cell[26804, 680, 2879, 73, 421, "Text"],
Cell[CellGroupData[{
Cell[29708, 757, 22393, 497, 2206, "Input"],
Cell[52104, 1256, 8571, 164, 847, "Output"]
}, Open  ]]
}
]
*)

(* End of internal cache information *)

(* NotebookSignature fxDTpIYFybGDOAwE7MZICufV *)
