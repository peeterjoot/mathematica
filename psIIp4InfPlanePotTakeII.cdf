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
NotebookDataLength[     14734,        472]
NotebookOptionsPosition[     14324,        442]
NotebookOutlinePosition[     14666,        457]
CellTagsIndexPosition[     14623,        454]
WindowFrame->Normal*)

(* Beginning of Notebook Content *)
Notebook[{
Cell[BoxData[{
 RowBox[{"<<", "\"\<Notation`\>\""}], "\[IndentingNewLine]", 
 FormBox[
  RowBox[{"Notation", "[", 
   RowBox[{
    TemplateBox[{RowBox[{"ln", "(", "x_", ")"}]},
     "NotationTemplateTag"], " ", "\[DoubleLongLeftArrow]", " ", 
    TemplateBox[{RowBox[{"Log", "[", "x_", "]"}]},
     "NotationTemplateTag"]}], "]"}],
  TraditionalForm], "\[IndentingNewLine]"}], "Input",
 CellChangeTimes->{{3.538862376112647*^9, 3.538862427715599*^9}}],

Cell[CellGroupData[{

Cell[BoxData[{
 RowBox[{"Clear", "[", 
  RowBox[{
  "ii", ",", " ", "jj", ",", " ", "kk", ",", " ", "g", ",", " ", "z", ",", 
   " ", "r", ",", " ", "x", ",", " ", "\[Epsilon]", ",", " ", "h", ",", " ", 
   "l", ",", " ", "h2"}], "]"}], "\[IndentingNewLine]", 
 RowBox[{"ii", " ", "=", " ", 
  RowBox[{"Integrate", "[", 
   RowBox[{
    RowBox[{"1", "/", 
     RowBox[{"Sqrt", "[", 
      RowBox[{
       RowBox[{
        RowBox[{"(", 
         RowBox[{"z", " ", "-", " ", "x"}], ")"}], "^", "2"}], "  ", "+", " ", 
       RowBox[{"r", "^", "2"}]}], "]"}]}], ",", " ", 
    RowBox[{"{", 
     RowBox[{"x", ",", " ", "0", ",", " ", "\[Epsilon]"}], "}"}]}], 
   "]"}]}], "\[IndentingNewLine]", 
 RowBox[{"jj", " ", "=", " ", 
  RowBox[{"FullSimplify", "[", 
   RowBox[{"ii", ",", " ", 
    RowBox[{
     RowBox[{"Element", "[", 
      RowBox[{
       RowBox[{"r", "|", "z", "|", " ", "\[Epsilon]"}], ",", "Reals"}], "]"}],
      " ", "&&", "  ", 
     RowBox[{"\[Epsilon]", " ", ">", " ", "0"}], " ", "&&", " ", 
     RowBox[{"z", " ", ">", " ", "\[Epsilon]"}]}]}], 
   "]"}]}], "\[IndentingNewLine]", 
 RowBox[{"kk", " ", "=", " ", 
  RowBox[{
   RowBox[{"-", "r"}], " ", 
   RowBox[{"Log", "[", 
    RowBox[{
     RowBox[{"-", "z"}], "+", 
     RowBox[{"Sqrt", "[", 
      RowBox[{
       SuperscriptBox["r", "2"], "+", 
       SuperscriptBox["z", "2"]}], "]"}]}], "]"}]}]}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{"g", " ", "=", " ", 
   RowBox[{"Integrate", "[", " ", 
    RowBox[{"kk", ",", " ", "r"}], "]"}]}], "\[IndentingNewLine]", 
  RowBox[{"(*", 
   RowBox[{
    RowBox[{
     RowBox[{
      RowBox[{",", " ", 
       RowBox[{"{", 
        RowBox[{"r", ",", " ", "0", ",", " ", 
         RowBox[{"c", "/", 
          RowBox[{"Sqrt", "[", "\[Epsilon]", "]"}]}]}], "}"}]}], "]"}], 
     "\[IndentingNewLine]", "h"}], " ", "=", " ", 
    RowBox[{
     RowBox[{
      RowBox[{"FullSimplify", "[", 
       RowBox[{
        RowBox[{"g", "/", "\[Epsilon]"}], ",", " ", 
        RowBox[{
         RowBox[{"Element", "[", 
          RowBox[{
           RowBox[{"z", " ", "|", " ", "c", " ", "|", " ", "\[Epsilon]"}], 
           ",", "Reals"}], "]"}], " ", "&&", "  ", 
         RowBox[{"\[Epsilon]", " ", ">", " ", "0"}], " ", "&&", " ", 
         RowBox[{"z", " ", ">", " ", "\[Epsilon]"}], " ", "&&", " ", 
         RowBox[{"c", " ", ">", " ", "0"}]}]}], "]"}], "\[IndentingNewLine]", 
      "h2"}], " ", "=", " ", 
     RowBox[{
      RowBox[{"h", " ", "/.", " ", 
       RowBox[{"z", " ", "\[Rule]", " ", 
        RowBox[{"z", " ", "-", " ", 
         RowBox[{"\[Epsilon]", "\[IndentingNewLine]", "l"}]}]}]}], " ", "=", 
      " ", 
      RowBox[{
       RowBox[{"FullSimplify", "[", 
        RowBox[{"(", 
         RowBox[{"h2", " ", "-", " ", "h"}], ")"}], "]"}], 
       "\[IndentingNewLine]", 
       RowBox[{"Limit", "[", 
        RowBox[{"l", ",", " ", 
         RowBox[{"\[Epsilon]", " ", "\[Rule]", " ", "0"}]}], "]"}]}]}]}]}], 
   " ", "*)"}]}], "\[IndentingNewLine]"}], "Input",
 CellChangeTimes->{{3.5388618208958907`*^9, 3.5388618592010813`*^9}, {
   3.5388619518563814`*^9, 3.538861988607483*^9}, {3.5388627753324814`*^9, 
   3.538862820345056*^9}, {3.538863020936529*^9, 3.5388630236896863`*^9}, {
   3.5388631310998297`*^9, 3.5388631315178537`*^9}, {3.538863470592248*^9, 
   3.538863521695171*^9}, 3.5388637174823694`*^9, {3.5388639755931325`*^9, 
   3.538863984398636*^9}, {3.5388642489387665`*^9, 3.5388642572372417`*^9}, {
   3.538864638890071*^9, 3.538864686799811*^9}, {3.5388647255900297`*^9, 
   3.5388647275621424`*^9}}],

Cell[BoxData[
 RowBox[{"ConditionalExpression", "[", 
  RowBox[{
   RowBox[{
    RowBox[{"-", 
     RowBox[{"ln", "(", 
      RowBox[{
       RowBox[{"-", "z"}], "+", 
       SqrtBox[
        RowBox[{
         SuperscriptBox["r", "2"], "+", 
         SuperscriptBox["z", "2"]}]]}], ")"}]}], "+", 
    RowBox[{"ln", "(", 
     RowBox[{
      RowBox[{"-", "z"}], "+", 
      SqrtBox[
       RowBox[{
        SuperscriptBox["r", "2"], "+", 
        SuperscriptBox[
         RowBox[{"(", 
          RowBox[{"z", "-", "\[Epsilon]"}], ")"}], "2"]}]], "+", 
      "\[Epsilon]"}], ")"}]}], ",", 
   RowBox[{
    RowBox[{"(", 
     RowBox[{
      RowBox[{
       RowBox[{"Im", "[", 
        FractionBox["z", "\[Epsilon]"], "]"}], "\[NotEqual]", 
       RowBox[{"Re", "[", 
        FractionBox["r", "\[Epsilon]"], "]"}]}], "||", 
      RowBox[{
       RowBox[{
        RowBox[{"Im", "[", 
         FractionBox["r", "\[Epsilon]"], "]"}], "+", 
        RowBox[{"Re", "[", 
         FractionBox["z", "\[Epsilon]"], "]"}]}], "\[GreaterEqual]", "1"}], "||", 
      RowBox[{
       RowBox[{
        RowBox[{"Im", "[", 
         FractionBox["r", "\[Epsilon]"], "]"}], "+", 
        RowBox[{"Re", "[", 
         FractionBox["z", "\[Epsilon]"], "]"}]}], "\[LessEqual]", "0"}]}], 
     ")"}], "&&", 
    RowBox[{"(", 
     RowBox[{
      RowBox[{
       RowBox[{
        RowBox[{"Im", "[", 
         FractionBox["z", "\[Epsilon]"], "]"}], "+", 
        RowBox[{"Re", "[", 
         FractionBox["r", "\[Epsilon]"], "]"}]}], "\[NotEqual]", "0"}], "||", 
      RowBox[{
       RowBox[{"Im", "[", 
        FractionBox["r", "\[Epsilon]"], "]"}], "\[GreaterEqual]", 
       RowBox[{"Re", "[", 
        FractionBox["z", "\[Epsilon]"], "]"}]}], "||", 
      RowBox[{
       RowBox[{"1", "+", 
        RowBox[{"Im", "[", 
         FractionBox["r", "\[Epsilon]"], "]"}]}], "\[LessEqual]", 
       RowBox[{"Re", "[", 
        FractionBox["z", "\[Epsilon]"], "]"}]}]}], ")"}]}]}], "]"}]], "Output",
 CellChangeTimes->{3.538863610042224*^9, 3.5388640081489944`*^9, 
  3.5388642852318425`*^9, 3.538864679244379*^9, 3.538864742415992*^9}],

Cell[BoxData[
 RowBox[{
  RowBox[{"-", 
   RowBox[{"ln", "(", 
    RowBox[{
     RowBox[{"-", "z"}], "+", 
     SqrtBox[
      RowBox[{
       SuperscriptBox["r", "2"], "+", 
       SuperscriptBox["z", "2"]}]]}], ")"}]}], "+", 
  RowBox[{"ln", "(", 
   RowBox[{
    RowBox[{"-", "z"}], "+", 
    SqrtBox[
     RowBox[{
      SuperscriptBox["r", "2"], "+", 
      SuperscriptBox[
       RowBox[{"(", 
        RowBox[{"z", "-", "\[Epsilon]"}], ")"}], "2"]}]], "+", "\[Epsilon]"}],
    ")"}]}]], "Output",
 CellChangeTimes->{3.538863610042224*^9, 3.5388640081489944`*^9, 
  3.5388642852318425`*^9, 3.538864679244379*^9, 3.538864742461995*^9}],

Cell[BoxData[
 RowBox[{
  RowBox[{"-", "r"}], " ", 
  RowBox[{"ln", "(", 
   RowBox[{
    RowBox[{"-", "z"}], "+", 
    SqrtBox[
     RowBox[{
      SuperscriptBox["r", "2"], "+", 
      SuperscriptBox["z", "2"]}]]}], ")"}]}]], "Output",
 CellChangeTimes->{3.538863610042224*^9, 3.5388640081489944`*^9, 
  3.5388642852318425`*^9, 3.538864679244379*^9, 3.538864742463995*^9}],

Cell[BoxData[
 RowBox[{
  FractionBox["1", "4"], " ", 
  RowBox[{"(", 
   RowBox[{
    SuperscriptBox["r", "2"], "-", 
    RowBox[{"2", " ", "z", " ", 
     RowBox[{"(", 
      RowBox[{"z", "-", 
       SqrtBox[
        RowBox[{
         SuperscriptBox["r", "2"], "+", 
         SuperscriptBox["z", "2"]}]]}], ")"}]}], "-", 
    RowBox[{"2", " ", 
     SuperscriptBox["r", "2"], " ", 
     RowBox[{"ln", "(", 
      RowBox[{
       RowBox[{"-", "z"}], "+", 
       SqrtBox[
        RowBox[{
         SuperscriptBox["r", "2"], "+", 
         SuperscriptBox["z", "2"]}]]}], ")"}]}]}], ")"}]}]], "Output",
 CellChangeTimes->{3.538863610042224*^9, 3.5388640081489944`*^9, 
  3.5388642852318425`*^9, 3.538864679244379*^9, 3.538864742465995*^9}]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"FullSimplify", "[", 
  RowBox[{"D", "[", 
   RowBox[{
    RowBox[{"-", 
     RowBox[{"Log", "[", 
      RowBox[{
       RowBox[{"-", "z"}], " ", "+", " ", 
       RowBox[{"Sqrt", "[", 
        RowBox[{
         RowBox[{"r", "^", "2"}], " ", "+", " ", 
         RowBox[{"z", "^", "2"}]}], "]"}]}], "]"}]}], ",", " ", "z"}], "]"}], 
  "]"}]], "Input",
 CellChangeTimes->{{3.538864390679874*^9, 3.5388644335223246`*^9}, {
  3.538864565878895*^9, 3.538864571435212*^9}}],

Cell[BoxData[
 FractionBox["1", 
  SqrtBox[
   RowBox[{
    SuperscriptBox["r", "2"], "+", 
    SuperscriptBox["z", "2"]}]]]], "Output",
 CellChangeTimes->{{3.5388644197615376`*^9, 3.538864434300369*^9}, 
   3.5388645761764836`*^9}]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[{
 RowBox[{"kk0", " ", "=", " ", 
  RowBox[{"kk", " ", "/.", " ", 
   RowBox[{"r", " ", "\[Rule]", " ", 
    RowBox[{"c", "/", 
     RowBox[{"Sqrt", "[", "\[Epsilon]", "]"}]}]}]}]}], "\[IndentingNewLine]", 
 RowBox[{"kk1", " ", "=", " ", 
  RowBox[{"kk", " ", "/.", " ", 
   RowBox[{"r", " ", "\[Rule]", " ", "0"}]}]}], "\[IndentingNewLine]", 
 RowBox[{"kkd", " ", "=", " ", 
  RowBox[{"kk0", " ", "-", " ", "kk1"}]}]}], "Input",
 CellChangeTimes->{{3.5388647365356555`*^9, 3.538864740193865*^9}, {
  3.5388647902807293`*^9, 3.538864840622609*^9}}],

Cell[BoxData[
 RowBox[{"-", 
  FractionBox[
   RowBox[{"c", " ", 
    RowBox[{"ln", "(", 
     RowBox[{
      RowBox[{"-", "z"}], "+", 
      SqrtBox[
       RowBox[{
        SuperscriptBox["z", "2"], "+", 
        FractionBox[
         SuperscriptBox["c", "2"], "\[Epsilon]"]}]]}], ")"}]}], 
   SqrtBox["\[Epsilon]"]]}]], "Output",
 CellChangeTimes->{3.5388648415206604`*^9}],

Cell[BoxData["0"], "Output",
 CellChangeTimes->{3.5388648415216603`*^9}],

Cell[BoxData[
 RowBox[{"-", 
  FractionBox[
   RowBox[{"c", " ", 
    RowBox[{"ln", "(", 
     RowBox[{
      RowBox[{"-", "z"}], "+", 
      SqrtBox[
       RowBox[{
        SuperscriptBox["z", "2"], "+", 
        FractionBox[
         SuperscriptBox["c", "2"], "\[Epsilon]"]}]]}], ")"}]}], 
   SqrtBox["\[Epsilon]"]]}]], "Output",
 CellChangeTimes->{3.5388648415226603`*^9}]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[{
 RowBox[{"hh", " ", "=", " ", 
  RowBox[{"kkd", " ", "/.", " ", 
   RowBox[{"z", " ", "\[Rule]", " ", 
    RowBox[{"z", " ", "-", " ", "\[Epsilon]"}]}]}]}], "\[IndentingNewLine]", 
 RowBox[{"FullSimplify", "[", 
  RowBox[{
   RowBox[{"(", 
    RowBox[{"kkd", " ", "-", " ", "hh"}], ")"}], "/", "\[Epsilon]"}], 
  "]"}]}], "Input",
 CellChangeTimes->{{3.5388649201841598`*^9, 3.538865029389406*^9}}],

Cell[BoxData[
 RowBox[{"-", 
  FractionBox[
   RowBox[{"c", " ", 
    RowBox[{"ln", "(", 
     RowBox[{
      RowBox[{"-", "z"}], "+", 
      SqrtBox[
       RowBox[{
        SuperscriptBox[
         RowBox[{"(", 
          RowBox[{"z", "-", "\[Epsilon]"}], ")"}], "2"], "+", 
        FractionBox[
         SuperscriptBox["c", "2"], "\[Epsilon]"]}]], "+", "\[Epsilon]"}], 
     ")"}]}], 
   SqrtBox["\[Epsilon]"]]}]], "Output",
 CellChangeTimes->{{3.538865011084359*^9, 3.538865030085446*^9}}],

Cell[BoxData[
 FractionBox[
  RowBox[{"c", " ", 
   RowBox[{"(", 
    RowBox[{
     RowBox[{"-", 
      RowBox[{"ln", "(", 
       RowBox[{
        RowBox[{"-", "z"}], "+", 
        SqrtBox[
         RowBox[{
          SuperscriptBox["z", "2"], "+", 
          FractionBox[
           SuperscriptBox["c", "2"], "\[Epsilon]"]}]]}], ")"}]}], "+", 
     RowBox[{"ln", "(", 
      RowBox[{
       RowBox[{"-", "z"}], "+", 
       SqrtBox[
        RowBox[{
         SuperscriptBox[
          RowBox[{"(", 
           RowBox[{"z", "-", "\[Epsilon]"}], ")"}], "2"], "+", 
         FractionBox[
          SuperscriptBox["c", "2"], "\[Epsilon]"]}]], "+", "\[Epsilon]"}], 
      ")"}]}], ")"}]}], 
  SuperscriptBox["\[Epsilon]", 
   RowBox[{"3", "/", "2"}]]]], "Output",
 CellChangeTimes->{{3.538865011084359*^9, 3.5388650301264477`*^9}}]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"Integrate", "[", 
  RowBox[{
   RowBox[{"1", "/", 
    RowBox[{"Sqrt", "[", 
     RowBox[{"u", " ", "+", " ", 
      RowBox[{"z", "^", "2"}]}], "]"}]}], ",", " ", 
   RowBox[{"{", 
    RowBox[{"u", ",", " ", "0", ",", " ", "Infinity"}], "}"}]}], 
  "]"}]], "Input",
 CellChangeTimes->{{3.5388693170036435`*^9, 3.5388693331035643`*^9}}],

Cell[BoxData[
 RowBox[{
  StyleBox[
   RowBox[{"Integrate", "::", "idiv"}], "MessageName"], 
  RowBox[{
  ":", " "}], "\<\"Integral of \[NoBreak]\\!\\(1\\/\\@\\(u + z\\^2\\)\\)\
\[NoBreak] does not converge on \[NoBreak]\\!\\({0, \
\[Infinity]}\\)\[NoBreak]. \\!\\(\\*ButtonBox[\\\"\[RightSkeleton]\\\", \
ButtonStyle->\\\"Link\\\", ButtonFrame->None, \
ButtonData:>\\\"paclet:ref/message/Integrate/idiv\\\", ButtonNote -> \
\\\"Integrate::idiv\\\"]\\)\"\>"}]], "Message", "MSG",
 CellChangeTimes->{3.5388693342816315`*^9}],

Cell[BoxData[
 RowBox[{
  SubsuperscriptBox["\[Integral]", "0", "\[Infinity]"], 
  RowBox[{
   FractionBox["1", 
    SqrtBox[
     RowBox[{"u", "+", 
      SuperscriptBox["z", "2"]}]]], 
   RowBox[{"\[DifferentialD]", "u"}]}]}]], "Output",
 CellChangeTimes->{3.538869334282632*^9}]
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
Cell[1235, 30, 451, 10, 82, "Input"],
Cell[CellGroupData[{
Cell[1711, 44, 3554, 90, 235, "Input"],
Cell[5268, 136, 2103, 63, 46, "Output"],
Cell[7374, 201, 639, 21, 47, "Output"],
Cell[8016, 224, 374, 11, 47, "Output"],
Cell[8393, 237, 739, 23, 46, "Output"]
}, Open  ]],
Cell[CellGroupData[{
Cell[9169, 265, 490, 14, 31, "Input"],
Cell[9662, 281, 232, 7, 56, "Output"]
}, Open  ]],
Cell[CellGroupData[{
Cell[9931, 293, 561, 12, 72, "Input"],
Cell[10495, 307, 376, 13, 80, "Output"],
Cell[10874, 322, 72, 1, 30, "Output"],
Cell[10949, 325, 376, 13, 80, "Output"]
}, Open  ]],
Cell[CellGroupData[{
Cell[11362, 343, 413, 10, 52, "Input"],
Cell[11778, 355, 493, 16, 80, "Output"],
Cell[12274, 373, 828, 27, 77, "Output"]
}, Open  ]],
Cell[CellGroupData[{
Cell[13139, 405, 359, 10, 31, "Input"],
Cell[13501, 417, 523, 11, 48, "Message"],
Cell[14027, 430, 281, 9, 56, "Output"]
}, Open  ]]
}
]
*)

(* End of internal cache information *)

(* NotebookSignature Vxph9P@Yyi9egCgET3fbRhlb *)
