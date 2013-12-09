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
NotebookDataLength[     27136,        777]
NotebookOptionsPosition[     27066,        759]
NotebookOutlinePosition[     27410,        774]
CellTagsIndexPosition[     27367,        771]
WindowFrame->Normal*)

(* Beginning of Notebook Content *)
Notebook[{
Cell["\<\
Take I.  Tried to factor the differentials into a matrix form.  Results \
obtained makes it look like I did the underlying math wrong.\
\>", "Text",
 CellChangeTimes->{{3.536107429862852*^9, 3.536107457517434*^9}}],

Cell[BoxData[
 RowBox[{"(*", "\[IndentingNewLine]", 
  RowBox[{
   RowBox[{
    RowBox[{"Clear", "[", 
     RowBox[{
     "u", ",", " ", "uphi", ",", " ", "ur", ",", " ", "uz", ",", " ", "d", 
      ",", " ", "p", ",", " ", "s", ",", " ", "r", ",", " ", "phi", ",", " ", 
      "z", ",", " ", "dT", ",", " ", "dr", ",", " ", "dz", ",", " ", "dphi", 
      ",", " ", "v"}], "]"}], "\[IndentingNewLine]", "u"}], " ", ":=", " ", 
   RowBox[{
    RowBox[{
     RowBox[{"IdentityMatrix", "[", "3", "]"}], "  ", "+", 
     "\[IndentingNewLine]", " ", 
     RowBox[{
      RowBox[{"{", 
       RowBox[{
        RowBox[{"{", " ", 
         RowBox[{
          RowBox[{"D", "[", 
           RowBox[{
            RowBox[{"ur", "[", 
             RowBox[{"r", ",", " ", "phi", ",", " ", "z"}], "]"}], ",", " ", 
            "r"}], "]"}], ",", " ", 
          RowBox[{"D", "[", " ", 
           RowBox[{
            RowBox[{"uphi", "[", 
             RowBox[{"r", ",", " ", "phi", ",", " ", "z"}], "]"}], " ", ",", 
            "r"}], "]"}], ",", " ", 
          RowBox[{"D", "[", 
           RowBox[{
            RowBox[{"uz", "[", 
             RowBox[{"r", ",", " ", "phi", ",", " ", "z"}], "]"}], ",", " ", 
            "r"}], "]"}]}], " ", "}"}], ",", " ", "\[IndentingNewLine]", 
        "       ", 
        RowBox[{"{", " ", 
         RowBox[{
          RowBox[{
           RowBox[{
            RowBox[{"D", "[", 
             RowBox[{
              RowBox[{"ur", "[", 
               RowBox[{"r", ",", " ", "phi", ",", " ", "z"}], "]"}], ",", " ",
               "phi"}], "]"}], "/", "r"}], " ", "-", " ", 
           RowBox[{
            RowBox[{"uphi", "[", 
             RowBox[{"r", ",", " ", "phi", ",", " ", "z"}], "]"}], "/", 
            "r"}]}], ",", " ", "\[IndentingNewLine]", "\t\t", 
          RowBox[{
           RowBox[{
            RowBox[{"D", "[", " ", 
             RowBox[{
              RowBox[{"uphi", "[", 
               RowBox[{"r", ",", " ", "phi", ",", " ", "z"}], "]"}], " ", ",",
               "phi"}], "]"}], "/", "r"}], " ", "+", " ", 
           RowBox[{
            RowBox[{"uphi", "[", 
             RowBox[{"r", ",", " ", "phi", ",", " ", "z"}], "]"}], "/", 
            "r"}]}], ",", " ", "\[IndentingNewLine]", "\t\t\t", 
          RowBox[{
           RowBox[{"D", "[", 
            RowBox[{
             RowBox[{"uz", "[", 
              RowBox[{"r", ",", " ", "phi", ",", " ", "z"}], "]"}], ",", " ", 
             "phi"}], "]"}], "/", "r"}]}], " ", "}"}], ",", " ", 
        "\[IndentingNewLine]", 
        RowBox[{"{", " ", 
         RowBox[{
          RowBox[{"D", "[", 
           RowBox[{
            RowBox[{"ur", "[", 
             RowBox[{"r", ",", " ", "phi", ",", " ", "z"}], "]"}], ",", " ", 
            "z"}], "]"}], ",", " ", 
          RowBox[{"D", "[", " ", 
           RowBox[{
            RowBox[{"uphi", "[", 
             RowBox[{"r", ",", " ", "phi", ",", " ", "z"}], "]"}], " ", ",", 
            "z"}], "]"}], ",", " ", 
          RowBox[{"D", "[", 
           RowBox[{
            RowBox[{"uz", "[", 
             RowBox[{"r", ",", " ", "phi", ",", " ", "z"}], "]"}], ",", " ", 
            "z"}], "]"}]}], " ", "}"}]}], " ", "}"}], "  ", 
      "\[IndentingNewLine]", " ", "d"}]}], " ", ":=", " ", 
    RowBox[{
     RowBox[{
      RowBox[{"{", 
       RowBox[{"{", 
        RowBox[{"dr", ",", 
         RowBox[{"r", " ", "dphi"}], ",", " ", "dz"}], "}"}], "}"}], " ", 
      "\[IndentingNewLine]", "p"}], " ", ":=", " ", 
     RowBox[{
      RowBox[{
       RowBox[{"Expand", "[", 
        RowBox[{
         RowBox[{"u", "  ", 
          RowBox[{"Transpose", "[", "u", "]"}]}], " ", "-", " ", 
         RowBox[{"IdentityMatrix", "[", "3", "]"}]}], "]"}], "  ", 
       "\[IndentingNewLine]", "s"}], " ", ":=", " ", 
      RowBox[{
       RowBox[{
        RowBox[{"(", 
         RowBox[{"d", " ", ".", " ", "p", " ", ".", " ", 
          RowBox[{"Transpose", "[", "d", "]"}]}], " ", ")"}], "[", 
        RowBox[{"[", 
         RowBox[{"1", ",", " ", "1"}], "]"}], "]"}], "\[IndentingNewLine]", 
       RowBox[{"Collect", "[", 
        RowBox[{"s", ",", " ", 
         RowBox[{"{", 
          RowBox[{
           RowBox[{"dr", " ", "dr"}], ",", " ", 
           RowBox[{"dz", " ", "dz"}], ",", "  ", 
           RowBox[{"dr", "  ", "dphi"}], ",", "  ", 
           RowBox[{"dphi", " ", "dz"}], ",", "  ", 
           RowBox[{"dphi", " ", "dphi"}], ",", " ", 
           RowBox[{"dr", " ", "dz"}]}], "}"}]}], "]"}]}]}]}]}]}], " ", 
  "\[IndentingNewLine]", "*)"}]], "Input",
 CellChangeTimes->{{3.535675650134736*^9, 3.5356756661626525`*^9}, {
  3.535675729078251*^9, 3.5356757364756746`*^9}, {3.53567577416783*^9, 
  3.535675805424618*^9}, {3.5356758445978584`*^9, 3.535676207685626*^9}, {
  3.5356762505430775`*^9, 3.5356763072343197`*^9}, {3.5356763464055605`*^9, 
  3.5356763596593184`*^9}, {3.535678158179188*^9, 3.535678244493125*^9}, {
  3.5356784870399976`*^9, 3.5356786450030327`*^9}, {3.5356787263716865`*^9, 
  3.535678729510866*^9}, {3.5356787689061193`*^9, 3.535678839145137*^9}, {
  3.5356788700229025`*^9, 3.5356788919581575`*^9}, {3.5356789729717913`*^9, 
  3.53567899305694*^9}, {3.5361074187242155`*^9, 3.5361074221284103`*^9}, {
  3.5361074631677575`*^9, 3.536107466453945*^9}}],

Cell[" ", "Text",
 Editable->False,
 Selectable->False,
 CellFrame->{{0, 0}, {0, 3}},
 ShowCellBracket->False,
 CellMargins->{{0, 0}, {1, 1}},
 CellElementSpacings->{"CellMinHeight"->1},
 CellFrameMargins->0,
 CellFrameColor->RGBColor[0, 0, 1],
 CellSize->{Inherited, 5}],

Cell["\<\
Take II.  Just do the expansion in a brute force way, without the attempt to \
collect into matrix terms or use the mathematica notation for partial \
differentials.  Take this result and transform to latex instead:\
\>", "Text",
 CellChangeTimes->{{3.535718738282251*^9, 3.5357187901792192`*^9}}],

Cell[BoxData[
 RowBox[{"(*", "\[IndentingNewLine]", 
  RowBox[{
   RowBox[{
    RowBox[{"Clear", "[", 
     RowBox[{
     "dlPrimeSquared", ",", " ", "dur", ",", " ", "uphi", ",", " ", "dphi", 
      ",", " ", "dr", ",", " ", "duphi", ",", " ", "ur", ",", " ", "uz", ",", 
      " ", "r", ",", " ", "duz", ",", " ", "dz", ",", " ", "dxSquared", ",", 
      " ", "diff", ",", " ", "mess"}], "]"}], "\[IndentingNewLine]", 
    "dlPrimeSquared"}], " ", ":=", " ", 
   RowBox[{
    RowBox[{
     RowBox[{
      RowBox[{"(", " ", 
       RowBox[{"dur", " ", "-", " ", 
        RowBox[{"uphi", " ", "dphi"}], " ", "+", " ", "dr"}], " ", ")"}], "^",
       "2"}], " ", "+", " ", 
     RowBox[{
      RowBox[{"(", " ", 
       RowBox[{"duphi", " ", "+", " ", 
        RowBox[{"ur", " ", "dphi"}], " ", "+", " ", 
        RowBox[{"r", " ", "dphi"}]}], ")"}], "^", "2"}], " ", "+", " ", 
     RowBox[{
      RowBox[{
       RowBox[{"(", 
        RowBox[{"duz", " ", "+", " ", "dz"}], ")"}], "^", "2"}], 
      "\[IndentingNewLine]", "dxSquared"}]}], " ", ":=", " ", 
    RowBox[{
     RowBox[{
      RowBox[{"dr", "^", "2"}], " ", "+", " ", 
      RowBox[{
       RowBox[{"r", "^", "2"}], " ", 
       RowBox[{"dphi", "^", "2"}]}], " ", "+", " ", 
      RowBox[{
       RowBox[{"dz", "^", "2"}], "\[IndentingNewLine]", "diff"}]}], " ", ":=",
      " ", 
     RowBox[{
      RowBox[{"dlPrimeSquared", " ", "-", " ", 
       RowBox[{"dxSquared", " ", "\[IndentingNewLine]", "mess"}]}], " ", ":=",
       " ", 
      RowBox[{
       RowBox[{"Expand", "[", 
        RowBox[{"ReplaceAll", "[", 
         RowBox[{"diff", ",", " ", 
          RowBox[{"{", " ", 
           RowBox[{
            RowBox[{"dur", " ", "\[Rule]", " ", 
             RowBox[{
              RowBox[{"PDrur", " ", "dr"}], " ", "+", " ", 
              RowBox[{"PDphiur", " ", "dphi"}], " ", "+", " ", 
              RowBox[{"PDzur", " ", "dz"}]}]}], ",", " ", 
            RowBox[{"duphi", " ", "\[Rule]", " ", 
             RowBox[{
              RowBox[{"PDruphi", " ", "dr"}], " ", "+", " ", 
              RowBox[{"PDphiuphi", " ", "dphi"}], " ", "+", " ", 
              RowBox[{"PDzuphi", " ", "dz"}]}]}], ",", "\[IndentingNewLine]", 
            RowBox[{"duz", " ", "\[Rule]", " ", 
             RowBox[{
              RowBox[{"PDruz", " ", "dr"}], " ", "+", " ", 
              RowBox[{"PDphiuz", " ", "dphi"}], " ", "+", " ", 
              RowBox[{"PDzuz", " ", "dz"}]}]}]}], " ", "}"}]}], "]"}], "]"}], 
       "\[IndentingNewLine]", 
       RowBox[{"Collect", "[", " ", 
        RowBox[{"mess", ",", " ", 
         RowBox[{"{", 
          RowBox[{
           RowBox[{"dr", " ", "dr"}], ",", " ", 
           RowBox[{"dz", " ", "dz"}], ",", "  ", 
           RowBox[{"dr", "  ", "dphi"}], ",", "  ", 
           RowBox[{"dphi", " ", "dz"}], ",", "  ", 
           RowBox[{"dphi", " ", "dphi"}], ",", " ", 
           RowBox[{"dr", " ", "dz"}]}], "}"}]}], "]"}]}]}]}]}]}], " ", 
  "\[IndentingNewLine]", "*)"}]], "Input",
 CellChangeTimes->{{3.5357188481665363`*^9, 3.5357188484335513`*^9}, {
  3.5357589349567757`*^9, 3.5357589377439356`*^9}, {3.5361074043173914`*^9, 
  3.5361074112027855`*^9}}],

Cell[" ", "Text",
 Editable->False,
 Selectable->False,
 CellFrame->{{0, 0}, {0, 3}},
 ShowCellBracket->False,
 CellMargins->{{0, 0}, {1, 1}},
 CellElementSpacings->{"CellMinHeight"->1},
 CellFrameMargins->0,
 CellFrameColor->RGBColor[0, 0, 1],
 CellSize->{Inherited, 5}],

Cell["\<\
Take III.  Use the notation package so that the results are actually directly \
usable.\
\>", "Text",
 CellChangeTimes->{{3.5361073293711047`*^9, 3.536107332657293*^9}, {
  3.536107597617448*^9, 3.5361076117172537`*^9}}],

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
    "NotationTemplateTag"], ")"}], TraditionalForm]}], "Input",
 CellChangeTimes->{{3.5361075171008425`*^9, 3.5361075886759357`*^9}, {
  3.5361085532091045`*^9, 3.536108553955147*^9}}],

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
 CellChangeTimes->{3.5361073466530933`*^9, 3.53610855610927*^9}]
}, Open  ]],

Cell[BoxData[
 RowBox[{"Clear", "[", 
  RowBox[{
  "dr", ",", " ", "dphi", ",", " ", "dz", ",", " ", "ur", ",", " ", "uphi", 
   ",", " ", "uz", ",", " ", "dur", ",", " ", "duz", ",", " ", 
   "dlPrimeSquared", ",", " ", "dxSquared", ",", " ", "diff", ",", " ", 
   "mess"}], "]"}]], "Input"],

Cell[CellGroupData[{

Cell[BoxData[{
 RowBox[{"dr", " ", ":=", " ", 
  RowBox[{"Dt", "[", "r", "]"}]}], "\[IndentingNewLine]", 
 RowBox[{"dphi", " ", ":=", " ", 
  RowBox[{"Dt", "[", "\[Phi]", "]"}]}], "\[IndentingNewLine]", 
 RowBox[{"dz", " ", ":=", " ", 
  RowBox[{"Dt", "[", "z", "]"}]}], "\[IndentingNewLine]", 
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
      RowBox[{"ph", "[", "esc", "]"}], "[", "ctrl", "]"}], "[", "space", 
     "]"}]}], " ", "*)"}]}], "\[IndentingNewLine]", 
 RowBox[{"uz", " ", ":=", " ", 
  SubscriptBox["u", "z"]}], "\[IndentingNewLine]", 
 RowBox[{"dur", " ", ":=", " ", 
  RowBox[{"Dt", "[", "ur", "]"}]}], "\[IndentingNewLine]", 
 RowBox[{"duphi", " ", ":=", " ", 
  RowBox[{"Dt", "[", "uphi", "]"}]}], "\[IndentingNewLine]", 
 RowBox[{"duz", " ", ":=", " ", 
  RowBox[{"Dt", "[", "uz", "]"}]}], "\[IndentingNewLine]", 
 RowBox[{"dlPrimeSquared", " ", ":=", " ", 
  RowBox[{
   RowBox[{
    RowBox[{"(", 
     RowBox[{"dur", " ", "-", " ", 
      RowBox[{"uphi", " ", "dphi"}], " ", "+", " ", "dr"}], ")"}], "^", "2"}],
    " ", "+", " ", 
   RowBox[{
    RowBox[{"(", 
     RowBox[{"duphi", " ", "+", " ", 
      RowBox[{"ur", " ", "dphi"}], " ", "+", " ", 
      RowBox[{"r", " ", "dphi"}]}], ")"}], "^", "2"}], " ", "+", " ", 
   RowBox[{
    RowBox[{"(", 
     RowBox[{"duz", " ", "+", " ", "dz"}], ")"}], "^", 
    "2"}]}]}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{"dxSquared", " ", ":=", " ", 
   RowBox[{
    RowBox[{"dr", "^", "2"}], " ", "+", " ", 
    RowBox[{
     RowBox[{"r", "^", "2"}], " ", 
     RowBox[{"dphi", "^", "2"}]}], " ", "+", " ", 
    RowBox[{"dz", "^", "2"}]}]}], " "}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{"diff", " ", ":=", " ", 
   RowBox[{"dlPrimeSquared", " ", "-", " ", "dxSquared"}]}], 
  " "}], "\[IndentingNewLine]", 
 RowBox[{"mess", " ", ":=", " ", 
  RowBox[{"Expand", "[", " ", 
   RowBox[{"ReplaceAll", "[", 
    RowBox[{"diff", ",", " ", 
     RowBox[{"{", " ", 
      RowBox[{
       RowBox[{"dur", " ", "\[Rule]", " ", 
        RowBox[{
         RowBox[{
          RowBox[{
           RowBox[{
            RowBox[{"Derivative", "[", "1", "]"}], "[", "ur", "]"}], "[", "r",
            "]"}], " ", "dr"}], " ", "+", " ", 
         RowBox[{
          RowBox[{
           RowBox[{
            RowBox[{"Derivative", "[", "1", "]"}], "[", "ur", "]"}], "[", 
           "\[Phi]", "]"}], " ", "dphi"}], " ", "+", " ", 
         RowBox[{
          RowBox[{
           RowBox[{
            RowBox[{"Derivative", "[", "1", "]"}], "[", "ur", "]"}], "[", "z",
            "]"}], " ", "dz"}]}]}], ",", "\[IndentingNewLine]", 
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
           "\[Phi]", "]"}], " ", "dphi"}], " ", "+", " ", 
         RowBox[{
          RowBox[{
           RowBox[{
            RowBox[{"Derivative", "[", "1", "]"}], "[", "uphi", "]"}], "[", 
           "z", "]"}], " ", "dz"}]}]}], ",", "\[IndentingNewLine]", 
       RowBox[{"duz", " ", "->", "\[IndentingNewLine]", 
        RowBox[{
         RowBox[{
          RowBox[{
           RowBox[{
            RowBox[{"Derivative", "[", "1", "]"}], "[", "uz", "]"}], "[", "r",
            "]"}], " ", "dr"}], " ", "+", " ", 
         RowBox[{
          RowBox[{
           RowBox[{
            RowBox[{"Derivative", "[", "1", "]"}], "[", "uz", "]"}], "[", 
           "\[Phi]", "]"}], " ", "dphi"}], " ", "+", " ", 
         RowBox[{
          RowBox[{
           RowBox[{
            RowBox[{"Derivative", "[", "1", "]"}], "[", "uz", "]"}], "[", "z",
            "]"}], " ", "dz"}]}]}]}], "}"}]}], "]"}], 
   "]"}]}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{"Collect", "[", " ", 
   RowBox[{"mess", ",", " ", 
    RowBox[{"{", 
     RowBox[{
      RowBox[{"dr", " ", "dr"}], ",", " ", 
      RowBox[{"dz", " ", "dz"}], ",", "  ", 
      RowBox[{"dr", "  ", "dphi"}], ",", "  ", 
      RowBox[{"dphi", " ", "dz"}], ",", "   ", 
      RowBox[{"dphi", " ", "dphi"}], ",", " ", 
      RowBox[{"dr", " ", "dz"}]}], "}"}]}], "]"}], " "}]}], "Input",
 CellChangeTimes->{{3.5361074748694267`*^9, 3.5361074944055443`*^9}, {
  3.5361084075867753`*^9, 3.536108512941801*^9}}],

Cell[BoxData[
 RowBox[{
  RowBox[{
   SuperscriptBox[
    RowBox[{"(", 
     RowBox[{"\[DifferentialD]", "r"}], ")"}], "2"], " ", 
   RowBox[{"(", 
    RowBox[{
     RowBox[{"2", " ", 
      FractionBox[
       RowBox[{"\[PartialD]", 
        SubscriptBox["u", "r"]}], 
       RowBox[{"\[PartialD]", "r"}]]}], "+", 
     SuperscriptBox[
      RowBox[{"(", 
       FractionBox[
        RowBox[{"\[PartialD]", 
         SubscriptBox["u", "r"]}], 
        RowBox[{"\[PartialD]", "r"}]], ")"}], "2"], "+", 
     SuperscriptBox[
      RowBox[{"(", 
       FractionBox[
        RowBox[{"\[PartialD]", 
         SubscriptBox["u", "z"]}], 
        RowBox[{"\[PartialD]", "r"}]], ")"}], "2"], "+", 
     SuperscriptBox[
      RowBox[{"(", 
       FractionBox[
        RowBox[{"\[PartialD]", 
         SubscriptBox["u", "\[Phi]"]}], 
        RowBox[{"\[PartialD]", "r"}]], ")"}], "2"]}], ")"}]}], "+", 
  RowBox[{
   RowBox[{"\[DifferentialD]", "r"}], " ", 
   RowBox[{"\[DifferentialD]", "z"}], " ", 
   RowBox[{"(", 
    RowBox[{
     RowBox[{"2", " ", 
      FractionBox[
       RowBox[{"\[PartialD]", 
        SubscriptBox["u", "r"]}], 
       RowBox[{"\[PartialD]", "z"}]]}], "+", 
     RowBox[{"2", " ", 
      FractionBox[
       RowBox[{"\[PartialD]", 
        SubscriptBox["u", "r"]}], 
       RowBox[{"\[PartialD]", "r"}]], " ", 
      FractionBox[
       RowBox[{"\[PartialD]", 
        SubscriptBox["u", "r"]}], 
       RowBox[{"\[PartialD]", "z"}]]}], "+", 
     RowBox[{"2", " ", 
      FractionBox[
       RowBox[{"\[PartialD]", 
        SubscriptBox["u", "z"]}], 
       RowBox[{"\[PartialD]", "r"}]]}], "+", 
     RowBox[{"2", " ", 
      FractionBox[
       RowBox[{"\[PartialD]", 
        SubscriptBox["u", "z"]}], 
       RowBox[{"\[PartialD]", "r"}]], " ", 
      FractionBox[
       RowBox[{"\[PartialD]", 
        SubscriptBox["u", "z"]}], 
       RowBox[{"\[PartialD]", "z"}]]}], "+", 
     RowBox[{"2", " ", 
      FractionBox[
       RowBox[{"\[PartialD]", 
        SubscriptBox["u", "\[Phi]"]}], 
       RowBox[{"\[PartialD]", "r"}]], " ", 
      FractionBox[
       RowBox[{"\[PartialD]", 
        SubscriptBox["u", "\[Phi]"]}], 
       RowBox[{"\[PartialD]", "z"}]]}]}], ")"}]}], "+", 
  RowBox[{
   SuperscriptBox[
    RowBox[{"(", 
     RowBox[{"\[DifferentialD]", "z"}], ")"}], "2"], " ", 
   RowBox[{"(", 
    RowBox[{
     SuperscriptBox[
      RowBox[{"(", 
       FractionBox[
        RowBox[{"\[PartialD]", 
         SubscriptBox["u", "r"]}], 
        RowBox[{"\[PartialD]", "z"}]], ")"}], "2"], "+", 
     RowBox[{"2", " ", 
      FractionBox[
       RowBox[{"\[PartialD]", 
        SubscriptBox["u", "z"]}], 
       RowBox[{"\[PartialD]", "z"}]]}], "+", 
     SuperscriptBox[
      RowBox[{"(", 
       FractionBox[
        RowBox[{"\[PartialD]", 
         SubscriptBox["u", "z"]}], 
        RowBox[{"\[PartialD]", "z"}]], ")"}], "2"], "+", 
     SuperscriptBox[
      RowBox[{"(", 
       FractionBox[
        RowBox[{"\[PartialD]", 
         SubscriptBox["u", "\[Phi]"]}], 
        RowBox[{"\[PartialD]", "z"}]], ")"}], "2"]}], ")"}]}], "+", 
  RowBox[{
   RowBox[{"\[DifferentialD]", "r"}], " ", 
   RowBox[{"\[DifferentialD]", "\[Phi]"}], " ", 
   RowBox[{"(", 
    RowBox[{
     RowBox[{
      RowBox[{"-", "2"}], " ", 
      SubscriptBox["u", "\[Phi]"]}], "-", 
     RowBox[{"2", " ", 
      SubscriptBox["u", "\[Phi]"], " ", 
      FractionBox[
       RowBox[{"\[PartialD]", 
        SubscriptBox["u", "r"]}], 
       RowBox[{"\[PartialD]", "r"}]]}], "+", 
     RowBox[{"2", " ", 
      FractionBox[
       RowBox[{"\[PartialD]", 
        SubscriptBox["u", "r"]}], 
       RowBox[{"\[PartialD]", "\[Phi]"}]]}], "+", 
     RowBox[{"2", " ", 
      FractionBox[
       RowBox[{"\[PartialD]", 
        SubscriptBox["u", "r"]}], 
       RowBox[{"\[PartialD]", "r"}]], " ", 
      FractionBox[
       RowBox[{"\[PartialD]", 
        SubscriptBox["u", "r"]}], 
       RowBox[{"\[PartialD]", "\[Phi]"}]]}], "+", 
     RowBox[{"2", " ", 
      FractionBox[
       RowBox[{"\[PartialD]", 
        SubscriptBox["u", "z"]}], 
       RowBox[{"\[PartialD]", "r"}]], " ", 
      FractionBox[
       RowBox[{"\[PartialD]", 
        SubscriptBox["u", "z"]}], 
       RowBox[{"\[PartialD]", "\[Phi]"}]]}], "+", 
     RowBox[{"2", " ", "r", " ", 
      FractionBox[
       RowBox[{"\[PartialD]", 
        SubscriptBox["u", "\[Phi]"]}], 
       RowBox[{"\[PartialD]", "r"}]]}], "+", 
     RowBox[{"2", " ", 
      SubscriptBox["u", "r"], " ", 
      FractionBox[
       RowBox[{"\[PartialD]", 
        SubscriptBox["u", "\[Phi]"]}], 
       RowBox[{"\[PartialD]", "r"}]]}], "+", 
     RowBox[{"2", " ", 
      FractionBox[
       RowBox[{"\[PartialD]", 
        SubscriptBox["u", "\[Phi]"]}], 
       RowBox[{"\[PartialD]", "r"}]], " ", 
      FractionBox[
       RowBox[{"\[PartialD]", 
        SubscriptBox["u", "\[Phi]"]}], 
       RowBox[{"\[PartialD]", "\[Phi]"}]]}]}], ")"}]}], "+", 
  RowBox[{
   RowBox[{"\[DifferentialD]", "z"}], " ", 
   RowBox[{"\[DifferentialD]", "\[Phi]"}], " ", 
   RowBox[{"(", 
    RowBox[{
     RowBox[{
      RowBox[{"-", "2"}], " ", 
      SubscriptBox["u", "\[Phi]"], " ", 
      FractionBox[
       RowBox[{"\[PartialD]", 
        SubscriptBox["u", "r"]}], 
       RowBox[{"\[PartialD]", "z"}]]}], "+", 
     RowBox[{"2", " ", 
      FractionBox[
       RowBox[{"\[PartialD]", 
        SubscriptBox["u", "r"]}], 
       RowBox[{"\[PartialD]", "z"}]], " ", 
      FractionBox[
       RowBox[{"\[PartialD]", 
        SubscriptBox["u", "r"]}], 
       RowBox[{"\[PartialD]", "\[Phi]"}]]}], "+", 
     RowBox[{"2", " ", 
      FractionBox[
       RowBox[{"\[PartialD]", 
        SubscriptBox["u", "z"]}], 
       RowBox[{"\[PartialD]", "\[Phi]"}]]}], "+", 
     RowBox[{"2", " ", 
      FractionBox[
       RowBox[{"\[PartialD]", 
        SubscriptBox["u", "z"]}], 
       RowBox[{"\[PartialD]", "z"}]], " ", 
      FractionBox[
       RowBox[{"\[PartialD]", 
        SubscriptBox["u", "z"]}], 
       RowBox[{"\[PartialD]", "\[Phi]"}]]}], "+", 
     RowBox[{"2", " ", "r", " ", 
      FractionBox[
       RowBox[{"\[PartialD]", 
        SubscriptBox["u", "\[Phi]"]}], 
       RowBox[{"\[PartialD]", "z"}]]}], "+", 
     RowBox[{"2", " ", 
      SubscriptBox["u", "r"], " ", 
      FractionBox[
       RowBox[{"\[PartialD]", 
        SubscriptBox["u", "\[Phi]"]}], 
       RowBox[{"\[PartialD]", "z"}]]}], "+", 
     RowBox[{"2", " ", 
      FractionBox[
       RowBox[{"\[PartialD]", 
        SubscriptBox["u", "\[Phi]"]}], 
       RowBox[{"\[PartialD]", "z"}]], " ", 
      FractionBox[
       RowBox[{"\[PartialD]", 
        SubscriptBox["u", "\[Phi]"]}], 
       RowBox[{"\[PartialD]", "\[Phi]"}]]}]}], ")"}]}], "+", 
  RowBox[{
   SuperscriptBox[
    RowBox[{"(", 
     RowBox[{"\[DifferentialD]", "\[Phi]"}], ")"}], "2"], " ", 
   RowBox[{"(", 
    RowBox[{
     RowBox[{"2", " ", "r", " ", 
      SubscriptBox["u", "r"]}], "+", 
     SubsuperscriptBox["u", "r", "2"], "+", 
     SubsuperscriptBox["u", "\[Phi]", "2"], "-", 
     RowBox[{"2", " ", 
      SubscriptBox["u", "\[Phi]"], " ", 
      FractionBox[
       RowBox[{"\[PartialD]", 
        SubscriptBox["u", "r"]}], 
       RowBox[{"\[PartialD]", "\[Phi]"}]]}], "+", 
     SuperscriptBox[
      RowBox[{"(", 
       FractionBox[
        RowBox[{"\[PartialD]", 
         SubscriptBox["u", "r"]}], 
        RowBox[{"\[PartialD]", "\[Phi]"}]], ")"}], "2"], "+", 
     SuperscriptBox[
      RowBox[{"(", 
       FractionBox[
        RowBox[{"\[PartialD]", 
         SubscriptBox["u", "z"]}], 
        RowBox[{"\[PartialD]", "\[Phi]"}]], ")"}], "2"], "+", 
     RowBox[{"2", " ", "r", " ", 
      FractionBox[
       RowBox[{"\[PartialD]", 
        SubscriptBox["u", "\[Phi]"]}], 
       RowBox[{"\[PartialD]", "\[Phi]"}]]}], "+", 
     RowBox[{"2", " ", 
      SubscriptBox["u", "r"], " ", 
      FractionBox[
       RowBox[{"\[PartialD]", 
        SubscriptBox["u", "\[Phi]"]}], 
       RowBox[{"\[PartialD]", "\[Phi]"}]]}], "+", 
     SuperscriptBox[
      RowBox[{"(", 
       FractionBox[
        RowBox[{"\[PartialD]", 
         SubscriptBox["u", "\[Phi]"]}], 
        RowBox[{"\[PartialD]", "\[Phi]"}]], ")"}], "2"]}], 
    ")"}]}]}]], "Output",
 CellChangeTimes->{{3.5361073573757067`*^9, 3.536107364029087*^9}, {
  3.536107491989406*^9, 3.536107496031637*^9}, {3.536108562281623*^9, 
  3.5361085701580734`*^9}}]
}, Open  ]]
},
WindowSize->{730, 627},
WindowMargins->{{27, Automatic}, {Automatic, -57}},
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
Cell[1235, 30, 224, 4, 29, "Text"],
Cell[1462, 36, 5255, 126, 272, "Input"],
Cell[6720, 164, 271, 9, 10, "Text"],
Cell[6994, 175, 307, 5, 47, "Text"],
Cell[7304, 182, 3165, 76, 272, "Input"],
Cell[10472, 260, 271, 9, 10, "Text"],
Cell[10746, 271, 230, 5, 29, "Text"],
Cell[CellGroupData[{
Cell[11001, 280, 1995, 54, 204, "Input"],
Cell[12999, 336, 486, 10, 21, "Message"]
}, Open  ]],
Cell[13500, 349, 292, 6, 52, "Input"],
Cell[CellGroupData[{
Cell[13817, 359, 4900, 133, 432, "Input"],
Cell[18720, 494, 8330, 262, 237, "Output"]
}, Open  ]]
}
]
*)

(* End of internal cache information *)

(* NotebookSignature QwpmSBKGGWsA9CKtHgCevMGX *)
