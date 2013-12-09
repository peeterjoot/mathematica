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
NotebookDataLength[     26212,        757]
NotebookOptionsPosition[     26172,        740]
NotebookOutlinePosition[     26514,        755]
CellTagsIndexPosition[     26471,        752]
WindowFrame->Normal*)

(* Beginning of Notebook Content *)
Notebook[{

Cell[CellGroupData[{
Cell[BoxData[{
 FormBox[
  RowBox[{"<<", "\"\<Notation`\>\""}], TraditionalForm], "\n", 
 FormBox[
  RowBox[{
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
    "*)"}]}], TraditionalForm], "\[IndentingNewLine]", 
 FormBox[
  RowBox[{
   RowBox[{"Notation", "(", 
    RowBox[{
     TemplateBox[{FractionBox[
        RowBox[{"\[PartialD]", "f_"}], 
        RowBox[{"\[PartialD]", "x_"}]]},
      "NotationTemplateTag"], "\[DoubleLongLeftArrow]", 
     TemplateBox[{RowBox[{
         RowBox[{
           RowBox[{"Derivative", "[", "1", "]"}], "[", "f_", "]"}], "[", "x_",
          "]"}]},
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
      "that", "-", "a", "-", "variable", "-", "is", "-", "not", "-", "a", "-",
       "symbol", "-", "or", "-", "a", "-", "string"}]}], " ", "*)"}]}], 
  TraditionalForm], "\[IndentingNewLine]", 
 FormBox[
  RowBox[{"Symbolize", "(", 
   TemplateBox[{SubscriptBox["_", "_"]},
    "NotationTemplateTag"], ")"}], TraditionalForm], "\[IndentingNewLine]", 
 FormBox[
  RowBox[{"Notation", "[", 
   RowBox[{
    TemplateBox[{RowBox[{"sin", 
        RowBox[{"(", "x_", ")"}]}]},
     "NotationTemplateTag"], " ", "\[DoubleLongLeftArrow]", " ", 
    TemplateBox[{RowBox[{"Sin", "[", "x_", "]"}]},
     "NotationTemplateTag"]}], "]"}], TraditionalForm], "\[IndentingNewLine]", 
 FormBox[
  RowBox[{"Notation", "[", 
   RowBox[{
    TemplateBox[{RowBox[{"cos", 
        RowBox[{"(", "x_", ")"}]}]},
     "NotationTemplateTag"], " ", "\[DoubleLongLeftArrow]", " ", 
    TemplateBox[{RowBox[{"Cos", "[", "x_", "]"}]},
     "NotationTemplateTag"]}], "]"}], TraditionalForm], "\[IndentingNewLine]", 
 FormBox[
  RowBox[{"Notation", "[", 
   RowBox[{
    TemplateBox[{RowBox[{"csc", "(", "x_", ")"}]},
     "NotationTemplateTag"], " ", "\[DoubleLongLeftArrow]", " ", 
    TemplateBox[{RowBox[{"Csc", "[", "x_", "]"}]},
     "NotationTemplateTag"]}], "]"}], TraditionalForm], "\[IndentingNewLine]", 
 FormBox[
  RowBox[{"Notation", "[", 
   RowBox[{
    TemplateBox[{RowBox[{"cot", "(", "x_", ")"}]},
     "NotationTemplateTag"], " ", "\[DoubleLongLeftArrow]", " ", 
    TemplateBox[{RowBox[{"Cot", "[", "x_", "]"}]},
     "NotationTemplateTag"]}], "]"}], TraditionalForm]}], "Input",
 CellChangeTimes->{{3.5361622880485315`*^9, 3.5361622892496004`*^9}, {
  3.5363569084323125`*^9, 3.536356928076436*^9}}],

Cell[BoxData[
 RowBox[{
  StyleBox[
   RowBox[{"ClearAll", "::", "wrsym"}], "MessageName"], 
  RowBox[{
  ":", " "}], "\<\"Symbol \[NoBreak]\\!\\(Notation`Private`protected\\)\
\[NoBreak] is Protected. \\!\\(\\*ButtonBox[\\\"\[RightSkeleton]\\\", \
ButtonStyle->\\\"Link\\\", ButtonFrame->None, \
ButtonData:>\\\"paclet:ref/message/General/wrsym\\\", ButtonNote -> \
\\\"ClearAll::wrsym\\\"]\\)\"\>"}]], "Message", "MSG",
 CellChangeTimes->{3.5363569338087635`*^9}]
}, Open  ]],

Cell[BoxData[
 RowBox[{"Clear", "[", 
  RowBox[{
  "dr", ",", " ", "dphi", ",", " ", "dtheta", ",", " ", "ur", ",", " ", 
   "uphi", ",", " ", "utheta", ",", " ", "dur", ",", " ", "dutheta", ",", " ",
    "dlPrimeSquared", ",", " ", "dxSquared", ",", " ", "diff", ",", " ", 
   "mess", ",", " ", "dR", ",", " ", "dPhi", ",", " ", "dTheta"}], 
  "]"}]], "Input",
 CellChangeTimes->{{3.5361615029296255`*^9, 3.5361615126121793`*^9}, {
  3.5363560586707087`*^9, 3.536356064826061*^9}}],

Cell[CellGroupData[{

Cell[BoxData[{
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
 RowBox[{"dxSquared", " ", ":=", " ", 
  RowBox[{
   RowBox[{"dr", "^", "2"}], " ", "+", " ", 
   RowBox[{
    RowBox[{"r", "^", "2"}], " ", 
    RowBox[{
     RowBox[{"Sin", "[", "\[Theta]", "]"}], "^", "2"}], " ", 
    RowBox[{"dphi", "^", "2"}]}], " ", "+", " ", 
   RowBox[{
    RowBox[{"r", "^", "2"}], " ", 
    RowBox[{"dtheta", "^", "2"}]}]}]}], "\[IndentingNewLine]", 
 RowBox[{"dlPrimeSquared", " ", ":=", " ", 
  RowBox[{
   RowBox[{
    RowBox[{"(", 
     RowBox[{
      RowBox[{
       RowBox[{"-", "utheta"}], " ", "dtheta"}], " ", "-", " ", 
      RowBox[{"uphi", " ", 
       RowBox[{"Sin", "[", "\[Theta]", "]"}], " ", "dphi"}], " ", "+", " ", 
      "dur", " ", "+", " ", "dr"}], ")"}], "^", "2"}], " ", "+", " ", 
   RowBox[{
    RowBox[{"(", 
     RowBox[{
      RowBox[{"ur", " ", "dtheta"}], " ", "-", " ", 
      RowBox[{"uphi", " ", "ctheta", " ", "dphi"}], " ", "+", " ", "dutheta", 
      " ", "+", " ", 
      RowBox[{"r", " ", "dtheta"}]}], ")"}], "^", "2"}], " ", "+", " ", 
   RowBox[{
    RowBox[{"(", 
     RowBox[{
      RowBox[{"ur", " ", "stheta", " ", "dphi"}], " ", "+", " ", 
      RowBox[{"utheta", " ", "ctheta", " ", "dphi"}], " ", "+", " ", "duphi", 
      "  ", "+", " ", 
      RowBox[{"r", " ", "stheta", " ", "dphi"}]}], ")"}], "^", 
    "2"}]}]}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{"diff", " ", ":=", " ", 
   RowBox[{"dlPrimeSquared", " ", "-", " ", "dxSquared"}]}], 
  " "}], "\[IndentingNewLine]", 
 RowBox[{"theta", " ", ":=", " ", "\[Theta]"}], "\[IndentingNewLine]", 
 RowBox[{"phi", " ", ":=", " ", "\[Phi]"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{"mess", " ", ":=", 
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
             "theta", "]"}], " ", "dtheta"}]}]}]}], "}"}]}], "]"}], "]"}]}], 
  "\[IndentingNewLine]", 
  RowBox[{"(*", " ", 
   RowBox[{"Collect", "[", " ", 
    RowBox[{"mess", ",", " ", 
     RowBox[{"{", 
      RowBox[{
       RowBox[{"dr", " ", "dr"}], ",", " ", 
       RowBox[{"dtheta", " ", "dtheta"}], ",", "  ", 
       RowBox[{"dphi", " ", "dphi"}], ",", " ", 
       RowBox[{"dr", " ", "dtheta"}], ",", " ", 
       RowBox[{"dr", " ", "dphi"}], ",", " ", 
       RowBox[{"dphi", " ", "dtheta"}]}], "}"}], ",", " ", "Simplify"}], 
    "]"}], "  ", "*)"}], "\[IndentingNewLine]", "\[IndentingNewLine]", 
  RowBox[{"(*", " ", 
   RowBox[{
   "replace", " ", "the", " ", "differentials", " ", "with", " ", "plain", 
    " ", "old", " ", "variables", " ", "so", " ", "that", " ", "this", " ", 
    "can", " ", "be", " ", "treated", " ", "like", " ", "a", " ", 
    "multivariate", " ", "polynomial"}], " ", "*)"}]}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{"mess2", " ", ":=", " ", 
   RowBox[{"ReplaceAll", "[", 
    RowBox[{"mess", ",", " ", 
     RowBox[{"{", " ", 
      RowBox[{
       RowBox[{"dr", " ", "\[Rule]", " ", "dR"}], ",", " ", 
       RowBox[{"dtheta", " ", "\[Rule]", " ", "dTheta"}], ",", " ", 
       RowBox[{"dphi", " ", "\[Rule]", " ", "dPhi"}]}], "}"}]}], "]"}]}], 
  "\[IndentingNewLine]", " "}], "\[IndentingNewLine]", 
 RowBox[{"Expand", "[", 
  RowBox[{
   RowBox[{"Coefficient", "[", " ", 
    RowBox[{"mess2", " ", ",", " ", 
     RowBox[{"dR", " ", "dR"}]}], "]"}], "  ", "/", "2"}], 
  "]"}], "\[IndentingNewLine]", 
 RowBox[{"Simplify", "[", 
  RowBox[{
   RowBox[{"Coefficient", "[", " ", 
    RowBox[{"mess2", " ", ",", " ", 
     RowBox[{"dTheta", " ", "dTheta"}]}], "]"}], "  ", "/", 
   RowBox[{"(", 
    RowBox[{"2", " ", 
     RowBox[{"r", "^", "2"}]}], " ", ")"}]}], "]"}], "\[IndentingNewLine]", 
 RowBox[{"FullSimplify", "[", 
  RowBox[{
   RowBox[{"Coefficient", "[", " ", 
    RowBox[{"mess2", " ", ",", " ", 
     RowBox[{"dPhi", " ", "dPhi"}]}], "]"}], "  ", "/", 
   RowBox[{"(", 
    RowBox[{"2", " ", 
     RowBox[{"r", "^", "2"}], " ", 
     RowBox[{"stheta", "^", "2"}]}], ")"}]}], "]"}], "\[IndentingNewLine]", 
 RowBox[{"FullSimplify", "[", 
  RowBox[{
   RowBox[{"Coefficient", "[", " ", 
    RowBox[{"mess2", " ", ",", " ", 
     RowBox[{"dR", " ", "dTheta"}]}], "]"}], "  ", "/", " ", 
   RowBox[{"(", 
    RowBox[{"2", " ", "r"}], ")"}]}], "]"}], "\[IndentingNewLine]", 
 RowBox[{"FullSimplify", "[", 
  RowBox[{
   RowBox[{"Coefficient", "[", " ", 
    RowBox[{"mess2", " ", ",", " ", 
     RowBox[{"dTheta", " ", "dPhi"}]}], "]"}], "  ", "/", " ", 
   RowBox[{"(", 
    RowBox[{"2", " ", 
     RowBox[{"r", "^", "2"}], " ", "stheta"}], ")"}]}], 
  "]"}], "\[IndentingNewLine]", 
 RowBox[{"FullSimplify", "[", 
  RowBox[{
   RowBox[{"Coefficient", "[", " ", 
    RowBox[{"mess2", " ", ",", " ", 
     RowBox[{"dPhi", " ", "dR"}]}], "]"}], "  ", "/", " ", 
   RowBox[{"(", 
    RowBox[{"2", " ", "r", " ", "stheta"}], ")"}]}], "]"}]}], "Input",
 CellChangeTimes->{{3.536161534156411*^9, 3.5361620886121244`*^9}, {
  3.5361621414591475`*^9, 3.536162146542438*^9}, {3.5363557274627647`*^9, 
  3.5363557376993504`*^9}, {3.536355846110551*^9, 3.536355883529691*^9}, {
  3.536355953860714*^9, 3.5363560451179333`*^9}, {3.536356077963812*^9, 
  3.5363561281716843`*^9}, {3.5363562136775746`*^9, 3.5363562248462133`*^9}, {
  3.5363563828432503`*^9, 3.536356387128495*^9}, {3.5363564180692654`*^9, 
  3.5363566546977997`*^9}, {3.5363566870776515`*^9, 3.536356690009819*^9}, {
  3.536356724432788*^9, 3.536356804317357*^9}, {3.536356864837819*^9, 
  3.5363568746063776`*^9}}],

Cell[BoxData[
 RowBox[{
  FractionBox[
   RowBox[{"\[PartialD]", 
    SubscriptBox["u", "r"]}], 
   RowBox[{"\[PartialD]", "r"}]], "+", 
  RowBox[{
   FractionBox["1", "2"], " ", 
   SuperscriptBox[
    RowBox[{"(", 
     FractionBox[
      RowBox[{"\[PartialD]", 
       SubscriptBox["u", "r"]}], 
      RowBox[{"\[PartialD]", "r"}]], ")"}], "2"]}], "+", 
  RowBox[{
   FractionBox["1", "2"], " ", 
   SuperscriptBox[
    RowBox[{"(", 
     FractionBox[
      RowBox[{"\[PartialD]", 
       SubscriptBox["u", "\[Theta]"]}], 
      RowBox[{"\[PartialD]", "r"}]], ")"}], "2"]}], "+", 
  RowBox[{
   FractionBox["1", "2"], " ", 
   SuperscriptBox[
    RowBox[{"(", 
     FractionBox[
      RowBox[{"\[PartialD]", 
       SubscriptBox["u", "\[Phi]"]}], 
      RowBox[{"\[PartialD]", "r"}]], ")"}], "2"]}]}]], "Output",
 CellChangeTimes->{{3.5363567644530773`*^9, 3.536356805153405*^9}, {
   3.536356866850934*^9, 3.5363568754274244`*^9}, 3.536356938220016*^9, 
   3.5363570024436893`*^9}],

Cell[BoxData[
 FractionBox[
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
      RowBox[{"\[PartialD]", "\[Theta]"}]], ")"}], "2"]}], 
  RowBox[{"2", " ", 
   SuperscriptBox["r", "2"]}]]], "Output",
 CellChangeTimes->{{3.5363567644530773`*^9, 3.536356805153405*^9}, {
   3.536356866850934*^9, 3.5363568754274244`*^9}, 3.536356938220016*^9, 
   3.5363570024466896`*^9}],

Cell[BoxData[
 RowBox[{
  FractionBox["1", 
   RowBox[{"2", " ", 
    SuperscriptBox["r", "2"]}]], 
  RowBox[{"(", 
   RowBox[{
    RowBox[{"2", " ", "r", " ", 
     SubscriptBox["u", "r"]}], "+", 
    SubsuperscriptBox["u", "r", "2"], "+", 
    SubsuperscriptBox["u", "\[Phi]", "2"], "+", 
    RowBox[{"2", " ", 
     RowBox[{"(", 
      RowBox[{"r", "+", 
       SubscriptBox["u", "r"]}], ")"}], " ", 
     SubscriptBox["u", "\[Theta]"], " ", 
     RowBox[{"cot", "(", "\[Theta]", ")"}]}], "+", 
    RowBox[{
     RowBox[{"(", 
      RowBox[{
       SubsuperscriptBox["u", "\[Theta]", "2"], "+", 
       SubsuperscriptBox["u", "\[Phi]", "2"]}], ")"}], " ", 
     SuperscriptBox[
      RowBox[{"cot", "(", "\[Theta]", ")"}], "2"]}], "+", 
    RowBox[{
     RowBox[{"csc", "(", "\[Theta]", ")"}], " ", 
     RowBox[{"(", 
      RowBox[{
       RowBox[{
        RowBox[{"-", "2"}], " ", 
        SubscriptBox["u", "\[Phi]"], " ", 
        FractionBox[
         RowBox[{"\[PartialD]", 
          SubscriptBox["u", "r"]}], 
         RowBox[{"\[PartialD]", "\[Phi]"}]]}], "+", 
       RowBox[{
        RowBox[{"csc", "(", "\[Theta]", ")"}], " ", 
        SuperscriptBox[
         RowBox[{"(", 
          FractionBox[
           RowBox[{"\[PartialD]", 
            SubscriptBox["u", "r"]}], 
           RowBox[{"\[PartialD]", "\[Phi]"}]], ")"}], "2"]}], "+", 
       RowBox[{
        RowBox[{"csc", "(", "\[Theta]", ")"}], " ", 
        FractionBox[
         RowBox[{"\[PartialD]", 
          SubscriptBox["u", "\[Theta]"]}], 
         RowBox[{"\[PartialD]", "\[Phi]"}]], " ", 
        RowBox[{"(", 
         RowBox[{
          RowBox[{
           RowBox[{"-", "2"}], " ", 
           SubscriptBox["u", "\[Phi]"], " ", 
           RowBox[{"(", 
            RowBox[{"cos", 
             RowBox[{"(", "\[Theta]", ")"}]}], ")"}]}], "+", 
          FractionBox[
           RowBox[{"\[PartialD]", 
            SubscriptBox["u", "\[Theta]"]}], 
           RowBox[{"\[PartialD]", "\[Phi]"}]]}], ")"}]}], "+", 
       RowBox[{"2", " ", 
        RowBox[{"(", 
         RowBox[{"r", "+", 
          SubscriptBox["u", "r"], "+", 
          RowBox[{
           SubscriptBox["u", "\[Theta]"], " ", 
           RowBox[{"cot", "(", "\[Theta]", ")"}]}]}], ")"}], " ", 
        FractionBox[
         RowBox[{"\[PartialD]", 
          SubscriptBox["u", "\[Phi]"]}], 
         RowBox[{"\[PartialD]", "\[Phi]"}]]}], "+", 
       RowBox[{
        RowBox[{"csc", "(", "\[Theta]", ")"}], " ", 
        SuperscriptBox[
         RowBox[{"(", 
          FractionBox[
           RowBox[{"\[PartialD]", 
            SubscriptBox["u", "\[Phi]"]}], 
           RowBox[{"\[PartialD]", "\[Phi]"}]], ")"}], "2"]}]}], ")"}]}]}], 
   ")"}]}]], "Output",
 CellChangeTimes->{{3.5363567644530773`*^9, 3.536356805153405*^9}, {
   3.536356866850934*^9, 3.5363568754274244`*^9}, 3.536356938220016*^9, 
   3.5363570024486895`*^9}],

Cell[BoxData[
 FractionBox[
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
     RowBox[{"\[PartialD]", "\[Theta]"}]]}]}], "r"]], "Output",
 CellChangeTimes->{{3.5363567644530773`*^9, 3.536356805153405*^9}, {
   3.536356866850934*^9, 3.5363568754274244`*^9}, 3.536356938220016*^9, 
   3.5363570024516897`*^9}],

Cell[BoxData[
 RowBox[{
  FractionBox["1", 
   SuperscriptBox["r", "2"]], 
  RowBox[{
   RowBox[{"csc", "(", "\[Theta]", ")"}], " ", 
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
         RowBox[{"\[PartialD]", "\[Phi]"}]]}], ")"}]}]}], ")"}]}]}]], "Output",
 CellChangeTimes->{{3.5363567644530773`*^9, 3.536356805153405*^9}, {
   3.536356866850934*^9, 3.5363568754274244`*^9}, 3.536356938220016*^9, 
   3.53635700245369*^9}],

Cell[BoxData[
 FractionBox[
  RowBox[{
   RowBox[{
    FractionBox[
     RowBox[{"\[PartialD]", 
      SubscriptBox["u", "r"]}], 
     RowBox[{"\[PartialD]", "r"}]], " ", 
    RowBox[{"(", 
     RowBox[{
      RowBox[{"-", 
       SubscriptBox["u", "\[Phi]"]}], "+", 
      RowBox[{
       RowBox[{"csc", "(", "\[Theta]", ")"}], " ", 
       FractionBox[
        RowBox[{"\[PartialD]", 
         SubscriptBox["u", "r"]}], 
        RowBox[{"\[PartialD]", "\[Phi]"}]]}]}], ")"}]}], "-", 
   RowBox[{
    SubscriptBox["u", "\[Phi]"], " ", 
    RowBox[{"(", 
     RowBox[{"1", "+", 
      RowBox[{
       RowBox[{"cot", "(", "\[Theta]", ")"}], " ", 
       FractionBox[
        RowBox[{"\[PartialD]", 
         SubscriptBox["u", "\[Theta]"]}], 
        RowBox[{"\[PartialD]", "r"}]]}]}], ")"}]}], "+", 
   RowBox[{
    RowBox[{"(", 
     RowBox[{"r", "+", 
      SubscriptBox["u", "r"], "+", 
      RowBox[{
       SubscriptBox["u", "\[Theta]"], " ", 
       RowBox[{"cot", "(", "\[Theta]", ")"}]}]}], ")"}], " ", 
    FractionBox[
     RowBox[{"\[PartialD]", 
      SubscriptBox["u", "\[Phi]"]}], 
     RowBox[{"\[PartialD]", "r"}]]}], "+", 
   RowBox[{
    RowBox[{"csc", "(", "\[Theta]", ")"}], " ", 
    RowBox[{"(", 
     RowBox[{
      FractionBox[
       RowBox[{"\[PartialD]", 
        SubscriptBox["u", "r"]}], 
       RowBox[{"\[PartialD]", "\[Phi]"}]], "+", 
      RowBox[{
       FractionBox[
        RowBox[{"\[PartialD]", 
         SubscriptBox["u", "\[Theta]"]}], 
        RowBox[{"\[PartialD]", "r"}]], " ", 
       FractionBox[
        RowBox[{"\[PartialD]", 
         SubscriptBox["u", "\[Theta]"]}], 
        RowBox[{"\[PartialD]", "\[Phi]"}]]}], "+", 
      RowBox[{
       FractionBox[
        RowBox[{"\[PartialD]", 
         SubscriptBox["u", "\[Phi]"]}], 
        RowBox[{"\[PartialD]", "r"}]], " ", 
       FractionBox[
        RowBox[{"\[PartialD]", 
         SubscriptBox["u", "\[Phi]"]}], 
        RowBox[{"\[PartialD]", "\[Phi]"}]]}]}], ")"}]}]}], "r"]], "Output",
 CellChangeTimes->{{3.5363567644530773`*^9, 3.536356805153405*^9}, {
   3.536356866850934*^9, 3.5363568754274244`*^9}, 3.536356938220016*^9, 
   3.53635700245569*^9}]
}, Open  ]],

Cell[BoxData[""], "Input",
 CellChangeTimes->{{3.5361622340684443`*^9, 3.5361622839692984`*^9}}]
},
WindowSize->{1034, 637},
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
Cell[CellGroupData[{
Cell[1257, 32, 3225, 84, 301, "Input"],
Cell[4485, 118, 465, 10, 21, "Message"]
}, Open  ]],
Cell[4965, 131, 482, 9, 31, "Input"],
Cell[CellGroupData[{
Cell[5472, 144, 8865, 222, 632, "Input"],
Cell[14340, 368, 985, 32, 47, "Output"],
Cell[15328, 402, 1427, 43, 58, "Output"],
Cell[16758, 447, 2883, 83, 88, "Output"],
Cell[19644, 532, 1428, 45, 56, "Output"],
Cell[21075, 579, 2823, 86, 87, "Output"],
Cell[23901, 667, 2156, 67, 57, "Output"]
}, Open  ]],
Cell[26072, 737, 96, 1, 31, "Input"]
}
]
*)

(* End of internal cache information *)

(* NotebookSignature 0xDbzC#uxdbueCggeZTkJt@j *)
