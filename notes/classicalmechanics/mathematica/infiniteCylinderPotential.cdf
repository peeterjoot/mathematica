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
NotebookDataLength[      8999,        278]
NotebookOptionsPosition[      9134,        265]
NotebookOutlinePosition[      9476,        280]
CellTagsIndexPosition[      9433,        277]
WindowFrame->Normal*)

(* Beginning of Notebook Content *)
Notebook[{

Cell[CellGroupData[{
Cell["\<\
Attempt at evaluating the potential for an infinite cylinder.\
\>", "Title",
 CellChangeTimes->{{3.538615560700992*^9, 3.538615584600359*^9}}],

Cell[TextData[{
 "The potential for a radius a cylinder of length 2 L is:\n\n",
 StyleBox["\[Phi](R) \t= ",
  FontSize->14],
 Cell[BoxData[
  FormBox[
   RowBox[{"\[Integral]", 
    StyleBox[
     FractionBox[
      RowBox[{"k", " ", "\[Rho]", " ", "dV"}], 
      SqrtBox[
       RowBox[{
        SuperscriptBox[
         TemplateBox[{RowBox[{"R", "-", 
             RowBox[{
               SuperscriptBox["\[ExponentialE]", "i\[Theta]"], " ", "r"}]}]},
          "Abs"], "2"], "+", 
        SuperscriptBox["z", "2"]}]]],
     FontSize->18]}], TraditionalForm]], "Input",
  CellChangeTimes->{{3.538616305404587*^9, 3.5386163127680078`*^9}},
  FontSize->14],
 StyleBox["\n\t= ",
  FontSize->14],
 Cell[BoxData[
  FormBox[
   StyleBox[
    RowBox[{"k", " ", "\[Rho]", 
     RowBox[{
      SuperscriptBox[
       SubscriptBox["\[Integral]", 
        RowBox[{"-", "L"}]], "L"], 
      RowBox[{"dz", 
       RowBox[{
        SuperscriptBox[
         SubscriptBox["\[Integral]", "0"], 
         RowBox[{"2", " ", "\[Pi]"}]], 
        RowBox[{"d\[Theta]", 
         RowBox[{
          SuperscriptBox[
           SubscriptBox["\[Integral]", "0"], "a"], 
          FractionBox[
           RowBox[{" ", 
            RowBox[{"r", " ", "dr"}]}], 
           SqrtBox[
            RowBox[{
             RowBox[{"z", "^", "2"}], "+", 
             RowBox[{"R", "^", "2"}], "-", 
             RowBox[{"2", "rR", " ", 
              SuperscriptBox[
               RowBox[{"cos", "(", "\[Theta]", ")"}], 
               "\[VeryThinSpace]"]}]}]]]}]}]}]}]}]}],
    FontSize->24], TraditionalForm]],
  FontSize->14],
 "\n\nEvaluating this appears non-trivial, especially if we let L tend to \
infinity.  Note that the  integral in the z component \
doesn\[CloseCurlyQuote]t converge if we let the L go unbounded, even if we \
take the principle value of the integral.\n\nGoogling this problem, I find:\n\
\nhttp://www.ifi.unicamp.br/~assis/J-Electrostatics-V63-p1115-1131(2005).pdf\n\
\ndecidedly non-trivial!  It would take a couple of years of study to even \
try to read that paper.\n"
}], "Text",
 CellChangeTimes->{{3.5386155929828386`*^9, 3.538616018589182*^9}, 
   3.5386160545812407`*^9, {3.5386160938124843`*^9, 3.538616145964467*^9}, 
   3.5386163203784432`*^9, {3.538616567348569*^9, 3.5386165974832926`*^9}}],

Cell[CellGroupData[{

Cell[BoxData[{
 RowBox[{
  RowBox[{"Clear", "[", 
   RowBox[{
   "ii", ",", " ", "r", ",", " ", "\[Theta]", ",", " ", "varR", ",", " ", "z",
     ",", " ", "varL", ",", " ", "q", ",", " ", "jj", ",", " ", "kk", ",", 
    " ", "ll", ",", " ", "a"}], "]"}], 
  "\[IndentingNewLine]"}], "\[IndentingNewLine]", 
 RowBox[{"ii", " ", "=", " ", 
  RowBox[{"Integrate", "[", 
   RowBox[{
    RowBox[{"1", "/", 
     RowBox[{"Sqrt", "[", 
      RowBox[{
       RowBox[{"z", "^", "2"}], " ", "+", " ", 
       RowBox[{"q", "^", "2"}]}], "]"}]}], ",", " ", 
    RowBox[{"{", 
     RowBox[{"z", ",", " ", 
      RowBox[{"-", "varL"}], ",", " ", "varL"}], "}"}]}], 
   "]"}]}], "\[IndentingNewLine]", 
 RowBox[{"jj", " ", "=", " ", 
  RowBox[{"ii", " ", "/.", " ", 
   RowBox[{"q", " ", "\[Rule]", " ", 
    RowBox[{"Abs", "[", 
     RowBox[{"varR", " ", "-", " ", 
      RowBox[{"r", " ", 
       RowBox[{"E", "^", 
        RowBox[{"(", 
         RowBox[{"I", " ", "\[Theta]"}], ")"}]}]}]}], 
     "]"}]}]}]}], "\[IndentingNewLine]", 
 RowBox[{"kk", " ", "=", " ", 
  RowBox[{"Integrate", "[", 
   RowBox[{"jj", ",", " ", 
    RowBox[{"{", 
     RowBox[{"\[Theta]", ",", " ", "0", ",", " ", 
      RowBox[{"2", " ", "Pi"}]}], "}"}]}], "]"}]}], "\[IndentingNewLine]", 
 RowBox[{"ll", " ", "=", " ", 
  RowBox[{"Integrate", "[", 
   RowBox[{
    RowBox[{"kk", " ", "r"}], ",", " ", 
    RowBox[{"{", 
     RowBox[{"r", ",", " ", "0", ",", " ", "a"}], "}"}]}], 
   "]"}]}], "\[IndentingNewLine]"}], "Input",
 CellChangeTimes->{{3.538612786447314*^9, 3.538612817897113*^9}, {
  3.538613649248663*^9, 3.538613649423673*^9}, {3.538613693098171*^9, 
  3.5386137384767666`*^9}, {3.5386138354433126`*^9, 3.538613835602322*^9}, {
  3.5386138760506353`*^9, 3.538613885546179*^9}, {3.538613935725049*^9, 
  3.5386140228040295`*^9}, {3.5386141082419157`*^9, 3.5386141170644207`*^9}, {
  3.5386142903293304`*^9, 3.538614343951398*^9}, {3.5386144806992197`*^9, 
  3.5386144822013054`*^9}, {3.5386145215205545`*^9, 3.5386145782708*^9}, {
  3.538614694761463*^9, 3.53861469855168*^9}, {3.5386147363128395`*^9, 
  3.538614776497138*^9}, {3.538614837848647*^9, 3.538614838000656*^9}}],

Cell[BoxData[
 RowBox[{"ConditionalExpression", "[", 
  RowBox[{
   RowBox[{
    RowBox[{"-", 
     RowBox[{"Log", "[", 
      RowBox[{
       RowBox[{"-", "varL"}], "+", 
       SqrtBox[
        RowBox[{
         SuperscriptBox["q", "2"], "+", 
         SuperscriptBox["varL", "2"]}]]}], "]"}]}], "+", 
    RowBox[{"Log", "[", 
     RowBox[{"varL", "+", 
      SqrtBox[
       RowBox[{
        SuperscriptBox["q", "2"], "+", 
        SuperscriptBox["varL", "2"]}]]}], "]"}]}], ",", 
   RowBox[{
    RowBox[{
     RowBox[{"Re", "[", 
      FractionBox["q", "varL"], "]"}], "\[NotEqual]", "0"}], "||", 
    RowBox[{
     RowBox[{"Im", "[", 
      FractionBox["q", "varL"], "]"}], "\[GreaterEqual]", "1"}], "||", 
    RowBox[{
     RowBox[{"Im", "[", 
      FractionBox["q", "varL"], "]"}], "\[LessEqual]", 
     RowBox[{"-", "1"}]}]}]}], "]"}]], "Output",
 CellChangeTimes->{3.538614804365732*^9}],

Cell[BoxData[
 RowBox[{"ConditionalExpression", "[", 
  RowBox[{
   RowBox[{
    RowBox[{"-", 
     RowBox[{"Log", "[", 
      RowBox[{
       RowBox[{"-", "varL"}], "+", 
       SqrtBox[
        RowBox[{
         SuperscriptBox["varL", "2"], "+", 
         SuperscriptBox[
          RowBox[{"Abs", "[", 
           RowBox[{
            RowBox[{
             RowBox[{"-", 
              SuperscriptBox["\[ExponentialE]", 
               RowBox[{"\[ImaginaryI]", " ", "\[Theta]"}]]}], " ", "r"}], "+",
             "varR"}], "]"}], "2"]}]]}], "]"}]}], "+", 
    RowBox[{"Log", "[", 
     RowBox[{"varL", "+", 
      SqrtBox[
       RowBox[{
        SuperscriptBox["varL", "2"], "+", 
        SuperscriptBox[
         RowBox[{"Abs", "[", 
          RowBox[{
           RowBox[{
            RowBox[{"-", 
             SuperscriptBox["\[ExponentialE]", 
              RowBox[{"\[ImaginaryI]", " ", "\[Theta]"}]]}], " ", "r"}], "+", 
           "varR"}], "]"}], "2"]}]]}], "]"}]}], ",", 
   RowBox[{
    RowBox[{
     RowBox[{"Re", "[", 
      FractionBox[
       RowBox[{"Abs", "[", 
        RowBox[{
         RowBox[{
          RowBox[{"-", 
           SuperscriptBox["\[ExponentialE]", 
            RowBox[{"\[ImaginaryI]", " ", "\[Theta]"}]]}], " ", "r"}], "+", 
         "varR"}], "]"}], "varL"], "]"}], "\[NotEqual]", "0"}], "||", 
    RowBox[{
     RowBox[{"Im", "[", 
      FractionBox[
       RowBox[{"Abs", "[", 
        RowBox[{
         RowBox[{
          RowBox[{"-", 
           SuperscriptBox["\[ExponentialE]", 
            RowBox[{"\[ImaginaryI]", " ", "\[Theta]"}]]}], " ", "r"}], "+", 
         "varR"}], "]"}], "varL"], "]"}], "\[GreaterEqual]", "1"}], "||", 
    RowBox[{
     RowBox[{"Im", "[", 
      FractionBox[
       RowBox[{"Abs", "[", 
        RowBox[{
         RowBox[{
          RowBox[{"-", 
           SuperscriptBox["\[ExponentialE]", 
            RowBox[{"\[ImaginaryI]", " ", "\[Theta]"}]]}], " ", "r"}], "+", 
         "varR"}], "]"}], "varL"], "]"}], "\[LessEqual]", 
     RowBox[{"-", "1"}]}]}]}], "]"}]], "Output",
 CellChangeTimes->{3.538614804366732*^9}],

Cell[BoxData["$Aborted"], "Output",
 CellChangeTimes->{3.538615474404056*^9}],

Cell[BoxData[
 FractionBox[
  RowBox[{
   SuperscriptBox["a", "2"], " ", "kk"}], "2"]], "Output",
 CellChangeTimes->{3.5386154744250574`*^9}]
}, Open  ]]
}, Open  ]]
},
WindowSize->{1584, 765},
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
Cell[1257, 32, 152, 3, 83, "Title"],
Cell[1412, 37, 2299, 63, 317, "Text"],
Cell[CellGroupData[{
Cell[3736, 104, 2153, 51, 152, "Input"],
Cell[5892, 157, 896, 29, 46, "Output"],
Cell[6791, 188, 2091, 64, 53, "Output"],
Cell[8885, 254, 77, 1, 30, "Output"],
Cell[8965, 257, 141, 4, 50, "Output"]
}, Open  ]]
}, Open  ]]
}
]
*)

(* End of internal cache information *)

(* NotebookSignature Ax0oSEIcJGEXHAwMHNLA0NZS *)
