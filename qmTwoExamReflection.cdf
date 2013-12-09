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
NotebookDataLength[     20049,        569]
NotebookOptionsPosition[     19753,        544]
NotebookOutlinePosition[     20095,        559]
CellTagsIndexPosition[     20052,        556]
WindowFrame->Normal*)

(* Beginning of Notebook Content *)
Notebook[{
Cell["\<\
PHY456H1F 2011 Exam, question 2a.

Let\[CloseCurlyQuote]s form a basis {0, 1, 2, 3} = { 211, 210, 21-1, 200 }, \
and compute the matrix element of operator Z/a_0.  With u = r a_0, we find a \
pair of two fold degeneracies, with energy eigenvalues \\pm 3 a_ 0 E e \
(degenerate still due to spin), plus one four way degeneracy with the \
original energy eigenvalues.\
\>", "Text",
 CellChangeTimes->{
  3.5331732562821836`*^9, {3.533173324023058*^9, 3.5331733390179157`*^9}, {
   3.5331734176594143`*^9, 3.5331734253808556`*^9}, {3.5331744012416716`*^9, 
   3.533174401368679*^9}, {3.5331761616513615`*^9, 3.533176183340602*^9}, {
   3.533248125620586*^9, 3.533248133960063*^9}}],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"\[IndentingNewLine]", 
  RowBox[{
   RowBox[{"Clear", "[", " ", 
    RowBox[{
    "expectation", ",", " ", "phi", ",", " ", "r", ",", " ", "theta", " ", 
     ",", " ", "p0", ",", " ", "p1", ",", " ", "p2", ",", " ", "p3", ",", " ",
      "z", ",", " ", "one"}], "]"}], "\[IndentingNewLine]", 
   "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{"p0", "[", 
     RowBox[{"u_", ",", " ", "theta_", ",", " ", "phi_"}], "]"}], " ", ":=", 
    "  ", 
    RowBox[{
     RowBox[{"-", 
      RowBox[{"(", 
       RowBox[{"1", "/", 
        RowBox[{"Sqrt", "[", 
         RowBox[{"64", " ", "Pi"}], "]"}]}], ")"}]}], " ", "u", " ", 
     RowBox[{"Sin", "[", "theta", "]"}], " ", 
     RowBox[{"E", "^", 
      RowBox[{"(", 
       RowBox[{
        RowBox[{"-", "u"}], "/", "2"}], ")"}]}], " ", 
     RowBox[{"E", "^", 
      RowBox[{"(", 
       RowBox[{"I", " ", "phi"}], ")"}]}]}]}], "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{"p1", "[", 
     RowBox[{"u_", ",", " ", "theta_", ",", " ", "phi_"}], "]"}], " ", ":=", 
    RowBox[{
     RowBox[{"(", 
      RowBox[{"1", "/", 
       RowBox[{"Sqrt", "[", 
        RowBox[{"32", " ", "Pi"}], "]"}]}], ")"}], " ", "u", " ", 
     RowBox[{"Cos", "[", "theta", "]"}], " ", 
     RowBox[{"E", "^", 
      RowBox[{"(", 
       RowBox[{
        RowBox[{"-", "u"}], "/", "2"}], ")"}]}]}]}], " ", 
   "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{"p2", "[", 
     RowBox[{"u_", ",", " ", "theta_", ",", " ", "phi_"}], "]"}], " ", ":=", 
    " ", 
    RowBox[{
     RowBox[{"(", 
      RowBox[{"1", "/", 
       RowBox[{"Sqrt", "[", 
        RowBox[{"64", " ", "Pi"}], "]"}]}], ")"}], " ", "u", " ", 
     RowBox[{"Sin", "[", "theta", "]"}], " ", 
     RowBox[{"E", "^", 
      RowBox[{"(", 
       RowBox[{
        RowBox[{"-", "u"}], "/", "2"}], ")"}]}], " ", 
     RowBox[{"E", "^", 
      RowBox[{"(", 
       RowBox[{
        RowBox[{"-", "I"}], " ", "phi"}], ")"}]}]}]}], "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{"p3", "[", 
     RowBox[{"u_", ",", " ", "theta_", ",", " ", "phi_"}], "]"}], " ", ":=", 
    "  ", 
    RowBox[{
     RowBox[{"(", 
      RowBox[{"1", "/", 
       RowBox[{"Sqrt", "[", 
        RowBox[{"32", " ", "Pi"}], "]"}]}], ")"}], " ", 
     RowBox[{"(", 
      RowBox[{"2", "-", "u"}], ")"}], " ", 
     RowBox[{"E", "^", 
      RowBox[{"(", 
       RowBox[{
        RowBox[{"-", "u"}], "/", "2"}], ")"}]}]}]}], " ", 
   "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{"z", "[", 
     RowBox[{"r_", ",", " ", "theta_", ",", " ", "phi_"}], "]"}], " ", ":=", 
    " ", 
    RowBox[{"u", " ", 
     RowBox[{"Cos", "[", "theta", "]"}]}]}], "                   ", 
   RowBox[{"(*", " ", 
    RowBox[{"really", " ", "z", " ", "*", " ", "a_", "0"}], " ", "*)"}], 
   "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{"one", "[", 
     RowBox[{"r_", ",", " ", "theta_", ",", " ", "phi_"}], "]"}], " ", ":=", 
    " ", "1"}], "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{"expectation", "[", 
     RowBox[{"f_", ",", " ", "op_", ",", " ", "g_"}], "]"}], " ", ":=", " ", 
    RowBox[{"Integrate", "[", 
     RowBox[{
      RowBox[{"Integrate", "[", 
       RowBox[{
        RowBox[{"Integrate", "[", 
         RowBox[{
          RowBox[{
           RowBox[{"Conjugate", "[", 
            RowBox[{"f", "[", 
             RowBox[{"u", ",", " ", "theta", ",", " ", "phi"}], "]"}], "]"}], 
           " ", 
           RowBox[{"op", "[", 
            RowBox[{"r", ",", " ", "theta", ",", " ", "phi"}], "]"}], " ", 
           RowBox[{"g", "[", 
            RowBox[{"u", ",", " ", "theta", ",", " ", "phi"}], "]"}], "  ", 
           RowBox[{"u", "^", "2"}], " ", 
           RowBox[{"Sin", "[", "theta", "]"}]}], ",", " ", 
          RowBox[{"{", 
           RowBox[{"u", ",", " ", "0", ",", " ", "Infinity"}], "}"}]}], "]"}],
         ",", " ", 
        RowBox[{"{", 
         RowBox[{"theta", ",", " ", "0", ",", " ", "Pi"}], "}"}]}], "]"}], 
      ",", " ", 
      RowBox[{"{", 
       RowBox[{"phi", ",", " ", "0", ",", " ", 
        RowBox[{"2", " ", "Pi"}]}], "}"}]}], "]"}]}], "\[IndentingNewLine]", 
   RowBox[{"H", " ", ":=", " ", 
    RowBox[{"{", 
     RowBox[{
      RowBox[{"{", 
       RowBox[{
        RowBox[{"expectation", "[", " ", 
         RowBox[{"p0", ",", " ", "z", ",", " ", "p0"}], "]"}], ",", " ", 
        RowBox[{"expectation", "[", " ", 
         RowBox[{"p0", ",", " ", "z", ",", " ", "p1"}], "]"}], ",", " ", 
        RowBox[{"expectation", "[", " ", 
         RowBox[{"p0", ",", " ", "z", ",", " ", "p2"}], "]"}], ",", " ", 
        RowBox[{"expectation", "[", " ", 
         RowBox[{"p0", ",", " ", "z", ",", " ", "p3"}], "]"}]}], "}"}], ",", 
      "\[IndentingNewLine]", 
      RowBox[{"{", 
       RowBox[{
        RowBox[{"expectation", "[", " ", 
         RowBox[{"p1", ",", " ", "z", ",", " ", "p0"}], "]"}], ",", " ", 
        RowBox[{"expectation", "[", " ", 
         RowBox[{"p1", ",", " ", "z", ",", " ", "p1"}], "]"}], ",", " ", 
        RowBox[{"expectation", "[", " ", 
         RowBox[{"p1", ",", " ", "z", ",", " ", "p2"}], "]"}], ",", " ", 
        RowBox[{"expectation", "[", " ", 
         RowBox[{"p1", ",", " ", "z", ",", " ", "p3"}], "]"}]}], "}"}], ",", 
      "\[IndentingNewLine]", 
      RowBox[{"{", 
       RowBox[{
        RowBox[{"expectation", "[", " ", 
         RowBox[{"p2", ",", " ", "z", ",", " ", "p0"}], "]"}], ",", " ", 
        RowBox[{"expectation", "[", " ", 
         RowBox[{"p2", ",", " ", "z", ",", " ", "p1"}], "]"}], ",", " ", 
        RowBox[{"expectation", "[", " ", 
         RowBox[{"p2", ",", " ", "z", ",", " ", "p2"}], "]"}], ",", " ", 
        RowBox[{"expectation", "[", " ", 
         RowBox[{"p2", ",", " ", "z", ",", " ", "p3"}], "]"}]}], "}"}], ",", 
      "\[IndentingNewLine]", 
      RowBox[{"{", 
       RowBox[{
        RowBox[{"expectation", "[", " ", 
         RowBox[{"p3", ",", " ", "z", ",", " ", "p0"}], "]"}], ",", " ", 
        RowBox[{"expectation", "[", " ", 
         RowBox[{"p3", ",", " ", "z", ",", " ", "p1"}], "]"}], ",", " ", 
        RowBox[{"expectation", "[", " ", 
         RowBox[{"p3", ",", " ", "z", ",", " ", "p2"}], "]"}], ",", " ", 
        RowBox[{"expectation", "[", " ", 
         RowBox[{"p3", ",", " ", "z", ",", " ", "p3"}], "]"}]}], "}"}]}], 
     "}"}]}], "\[IndentingNewLine]", "\[IndentingNewLine]", 
   RowBox[{"Clear", "[", 
    RowBox[{"e0", ",", " ", "e1", ",", " ", "e2", ",", " ", "e3"}], "]"}], 
   "\[IndentingNewLine]", 
   RowBox[{"e0", " ", ":=", " ", 
    RowBox[{"{", 
     RowBox[{"1", ",", " ", "0", ",", " ", "0", ",", " ", "0"}], "}"}]}], 
   "\[IndentingNewLine]", 
   RowBox[{"e1", " ", ":=", " ", 
    RowBox[{
     RowBox[{"{", 
      RowBox[{"0", ",", " ", "1", ",", " ", "0", ",", " ", "1"}], "}"}], "/", 
     RowBox[{"Sqrt", "[", "2", "]"}]}]}], "\[IndentingNewLine]", 
   RowBox[{"e2", " ", ":=", " ", 
    RowBox[{"{", 
     RowBox[{"0", ",", " ", "0", ",", " ", "1", ",", " ", "0"}], "}"}]}], 
   "\[IndentingNewLine]", 
   RowBox[{"e3", " ", ":=", " ", 
    RowBox[{
     RowBox[{"{", 
      RowBox[{"0", ",", " ", "1", ",", " ", "0", ",", " ", 
       RowBox[{"-", "1"}]}], "}"}], "/", 
     RowBox[{"Sqrt", "[", "2", "]"}]}]}], "\[IndentingNewLine]", 
   RowBox[{"eT", " ", ":=", " ", 
    RowBox[{"{", " ", 
     RowBox[{"e0", ",", " ", "e1", ",", " ", "e2", ",", " ", "e3"}], " ", 
     "}"}]}], "\[IndentingNewLine]", 
   RowBox[{"e", " ", ":=", " ", 
    RowBox[{"Transpose", "[", "eT", "]"}]}], "\[IndentingNewLine]", 
   "\[IndentingNewLine]", 
   RowBox[{"e", " ", "//", " ", "MatrixForm"}], "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{"H", " ", "e"}], " ", "//", " ", "MatrixForm"}], 
   "\[IndentingNewLine]", 
   RowBox[{"H", " ", "//", " ", "MatrixForm"}], "\[IndentingNewLine]", 
   RowBox[{"Eigenvalues", "[", "H", "]"}], "\[IndentingNewLine]"}]}]], "Input",
 CellChangeTimes->CompressedData["
1:eJxTTMoPSmViYGAQA2IQvVJxrcW/oFeOes+MLEF0T/eEMBCtv7s8G0Q/US0s
ANEZ/CVg+kyGbimIruv5CqYX17ypBNEV69b1gOgjF3QPg2gbsaxjIHpFUdpp
EL1oaiGY/qD68j6I5mLPfACig6QmvAbR7Xk6b0B0mOBmif9AegaXsRqIXrOh
xAREM+ml2YHoa3Y6jSB6164FzSB67ur1W0F0vSr/dhC9w+rVGqXgV45Fa69v
BNGv5E9vB9GH2C7vBNFqncz7QHTxY/sDILqtOPooiD5yWfQEiOZudLgEotdc
O3kZRJ+zvHodROuwud0D0eXlLx+D6CBPifcg+mrG2s8gOqbE/A+I/jLl338Q
Hb+YjU0ZSAMAt4G6Sw==
  "]],

Cell[BoxData[
 TagBox[
  RowBox[{"(", "\[NoBreak]", GridBox[{
     {"1", "0", "0", "0"},
     {"0", 
      FractionBox["1", 
       SqrtBox["2"]], "0", 
      FractionBox["1", 
       SqrtBox["2"]]},
     {"0", "0", "1", "0"},
     {"0", 
      FractionBox["1", 
       SqrtBox["2"]], "0", 
      RowBox[{"-", 
       FractionBox["1", 
        SqrtBox["2"]]}]}
    },
    GridBoxAlignment->{
     "Columns" -> {{Center}}, "ColumnsIndexed" -> {}, "Rows" -> {{Baseline}}, 
      "RowsIndexed" -> {}},
    GridBoxSpacings->{"Columns" -> {
        Offset[0.27999999999999997`], {
         Offset[0.7]}, 
        Offset[0.27999999999999997`]}, "ColumnsIndexed" -> {}, "Rows" -> {
        Offset[0.2], {
         Offset[0.4]}, 
        Offset[0.2]}, "RowsIndexed" -> {}}], "\[NoBreak]", ")"}],
  Function[BoxForm`e$, 
   MatrixForm[BoxForm`e$]]]], "Output",
 CellChangeTimes->{
  3.53324800278156*^9, {3.533248050969316*^9, 3.5332480679422865`*^9}, {
   3.5332481500129805`*^9, 3.533248168021011*^9}, 3.533248343084024*^9, 
   3.533248379306096*^9, 3.533248435957336*^9, {3.5332484663310733`*^9, 
   3.533248482147978*^9}, 3.533248536465085*^9}],

Cell[BoxData[
 TagBox[
  RowBox[{"(", "\[NoBreak]", GridBox[{
     {"0", "0", "0", "0"},
     {"0", "0", "0", 
      RowBox[{"-", 
       FractionBox["3", 
        SqrtBox["2"]]}]},
     {"0", "0", "0", "0"},
     {"0", 
      RowBox[{"-", 
       FractionBox["3", 
        SqrtBox["2"]]}], "0", "0"}
    },
    GridBoxAlignment->{
     "Columns" -> {{Center}}, "ColumnsIndexed" -> {}, "Rows" -> {{Baseline}}, 
      "RowsIndexed" -> {}},
    GridBoxSpacings->{"Columns" -> {
        Offset[0.27999999999999997`], {
         Offset[0.7]}, 
        Offset[0.27999999999999997`]}, "ColumnsIndexed" -> {}, "Rows" -> {
        Offset[0.2], {
         Offset[0.4]}, 
        Offset[0.2]}, "RowsIndexed" -> {}}], "\[NoBreak]", ")"}],
  Function[BoxForm`e$, 
   MatrixForm[BoxForm`e$]]]], "Output",
 CellChangeTimes->{
  3.53324800278156*^9, {3.533248050969316*^9, 3.5332480679422865`*^9}, {
   3.5332481500129805`*^9, 3.533248168021011*^9}, 3.533248343084024*^9, 
   3.533248379306096*^9, 3.533248435957336*^9, {3.5332484663310733`*^9, 
   3.533248482147978*^9}, 3.5332485384381976`*^9}],

Cell[BoxData[
 TagBox[
  RowBox[{"(", "\[NoBreak]", GridBox[{
     {"0", "0", "0", "0"},
     {"0", "0", "0", 
      RowBox[{"-", "3"}]},
     {"0", "0", "0", "0"},
     {"0", 
      RowBox[{"-", "3"}], "0", "0"}
    },
    GridBoxAlignment->{
     "Columns" -> {{Center}}, "ColumnsIndexed" -> {}, "Rows" -> {{Baseline}}, 
      "RowsIndexed" -> {}},
    GridBoxSpacings->{"Columns" -> {
        Offset[0.27999999999999997`], {
         Offset[0.7]}, 
        Offset[0.27999999999999997`]}, "ColumnsIndexed" -> {}, "Rows" -> {
        Offset[0.2], {
         Offset[0.4]}, 
        Offset[0.2]}, "RowsIndexed" -> {}}], "\[NoBreak]", ")"}],
  Function[BoxForm`e$, 
   MatrixForm[BoxForm`e$]]]], "Output",
 CellChangeTimes->{
  3.53324800278156*^9, {3.533248050969316*^9, 3.5332480679422865`*^9}, {
   3.5332481500129805`*^9, 3.533248168021011*^9}, 3.533248343084024*^9, 
   3.533248379306096*^9, 3.533248435957336*^9, {3.5332484663310733`*^9, 
   3.533248482147978*^9}, 3.533248540439312*^9}],

Cell[BoxData[
 RowBox[{"{", 
  RowBox[{
   RowBox[{"-", "3"}], ",", "3", ",", "0", ",", "0"}], "}"}]], "Output",
 CellChangeTimes->{
  3.53324800278156*^9, {3.533248050969316*^9, 3.5332480679422865`*^9}, {
   3.5332481500129805`*^9, 3.533248168021011*^9}, 3.533248343084024*^9, 
   3.533248379306096*^9, 3.533248435957336*^9, {3.5332484663310733`*^9, 
   3.533248482147978*^9}, 3.5332485424244256`*^9}]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[""], "Input",
 CellChangeTimes->{{3.533249033475512*^9, 3.533249033517514*^9}}],

Cell[BoxData[
 RowBox[{"{", 
  RowBox[{
   RowBox[{"{", 
    RowBox[{"0", ",", "0", ",", "0", ",", "0"}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{"0", ",", "0", ",", "0", ",", 
     RowBox[{"-", "3"}]}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{"0", ",", "0", ",", "0", ",", "0"}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{"0", ",", "0", ",", "0", ",", "0"}], "}"}]}], "}"}]], "Output",
 CellChangeTimes->{
  3.53324800278156*^9, {3.533248050969316*^9, 3.5332480679422865`*^9}, {
   3.5332481500129805`*^9, 3.533248168021011*^9}, 3.533248343084024*^9, 
   3.533248379306096*^9, 3.533248435957336*^9, {3.5332484663310733`*^9, 
   3.533248482147978*^9}, 3.5332485464706573`*^9}]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[{
 RowBox[{"Clear", "[", 
  RowBox[{"ee0", ",", " ", "ee1", ",", " ", "ee2", ",", " ", "ee3"}], 
  "]"}], "\[IndentingNewLine]", 
 RowBox[{"ee0", " ", "=", " ", 
  RowBox[{"{", 
   RowBox[{"{", 
    RowBox[{"0", ",", 
     RowBox[{"1", "/", 
      RowBox[{"Sqrt", "[", "2", "]"}]}], ",", "0", ",", 
     RowBox[{"1", "/", 
      RowBox[{"Sqrt", "[", "2", "]"}]}]}], "}"}], 
   "}"}]}], "\[IndentingNewLine]", 
 RowBox[{"ee1", " ", ":=", " ", 
  RowBox[{"Transpose", "[", 
   RowBox[{"{", 
    RowBox[{
     RowBox[{"{", 
      RowBox[{"0", ",", 
       RowBox[{"-", "1"}], ",", "0", ",", "1"}], "}"}], "/", 
     RowBox[{"Sqrt", "[", "2", "]"}]}], "}"}], "]"}]}], "\[IndentingNewLine]", 
 RowBox[{"ee2", " ", ":=", " ", 
  RowBox[{"Transpose", "[", 
   RowBox[{"{", 
    RowBox[{"{", 
     RowBox[{"0", ",", "0", ",", "1", ",", "0"}], "}"}], "}"}], 
   "]"}]}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{"ee3", " ", ":=", " ", 
   RowBox[{"Transpose", "[", 
    RowBox[{"{", 
     RowBox[{"{", 
      RowBox[{"1", ",", "0", ",", "0", ",", "0"}], "}"}], "}"}], " ", "]"}]}],
   "\[IndentingNewLine]"}], "\[IndentingNewLine]", 
 RowBox[{" ", 
  RowBox[{"H", " ", "ee0"}], " ", "\[IndentingNewLine]", 
  RowBox[{"(*", " ", 
   RowBox[{
    RowBox[{
     RowBox[{
      RowBox[{"H", " ", "ee1"}], " ", "//", " ", 
      RowBox[{"MatrixForm", "\[IndentingNewLine]", 
       RowBox[{"H", " ", "ee2"}]}]}], " ", "//", " ", 
     RowBox[{"MatrixForm", "\[IndentingNewLine]", 
      RowBox[{"H", " ", "ee3"}]}]}], " ", "//", " ", "MatrixForm"}], 
   "\[IndentingNewLine]", "*)"}]}], "\[IndentingNewLine]"}], "Input",
 CellChangeTimes->{{3.533176389590399*^9, 3.533176454002083*^9}, {
   3.533176535390738*^9, 3.5331766190575237`*^9}, {3.5332481027492776`*^9, 
   3.533248112252821*^9}, {3.533248562626581*^9, 3.5332486107873354`*^9}, 
   3.533248654694847*^9, {3.5332488434516435`*^9, 3.5332488988598127`*^9}, {
   3.533249040992942*^9, 3.533249071169668*^9}, {3.533249102930485*^9, 
   3.533249367407612*^9}, 3.5332494185705385`*^9}],

Cell[BoxData[
 RowBox[{"{", 
  RowBox[{"{", 
   RowBox[{"0", ",", 
    FractionBox["1", 
     SqrtBox["2"]], ",", "0", ",", 
    FractionBox["1", 
     SqrtBox["2"]]}], "}"}], "}"}]], "Output",
 CellChangeTimes->{3.53324941999962*^9}],

Cell[BoxData[
 RowBox[{
  StyleBox[
   RowBox[{"Thread", "::", "tdlen"}], "MessageName"], 
  RowBox[{
  ":", " "}], "\<\"Objects of unequal length in \
\[NoBreak]\\!\\(\\(\\({\\(\\({0, 0, 0, 0}\\)\\), \\(\\({0, 0, 0, \
\\(\\(-3\\)\\)}\\)\\), \\(\\({0, 0, 0, 0}\\)\\), \\(\\({0, \\(\\(-3\\)\\), 0, \
0}\\)\\)}\\)\\)\\\\ \\(\\({\\({0, 1\\/\\@2, 0, 1\\/\\@2}\\)}\\)\\)\\)\
\[NoBreak] cannot be combined. \\!\\(\\*ButtonBox[\\\"\[RightSkeleton]\\\", \
ButtonStyle->\\\"Link\\\", ButtonFrame->None, \
ButtonData:>\\\"paclet:ref/message/Thread/tdlen\\\", ButtonNote -> \
\\\"Thread::tdlen\\\"]\\)\"\>"}]], "Message", "MSG",
 CellChangeTimes->{3.5332494220327363`*^9}],

Cell[BoxData[
 RowBox[{
  RowBox[{"{", 
   RowBox[{"{", 
    RowBox[{"0", ",", 
     FractionBox["1", 
      SqrtBox["2"]], ",", "0", ",", 
     FractionBox["1", 
      SqrtBox["2"]]}], "}"}], "}"}], " ", 
  RowBox[{"{", 
   RowBox[{
    RowBox[{"{", 
     RowBox[{"0", ",", "0", ",", "0", ",", "0"}], "}"}], ",", 
    RowBox[{"{", 
     RowBox[{"0", ",", "0", ",", "0", ",", 
      RowBox[{"-", "3"}]}], "}"}], ",", 
    RowBox[{"{", 
     RowBox[{"0", ",", "0", ",", "0", ",", "0"}], "}"}], ",", 
    RowBox[{"{", 
     RowBox[{"0", ",", 
      RowBox[{"-", "3"}], ",", "0", ",", "0"}], "}"}]}], "}"}]}]], "Output",
 CellChangeTimes->{3.5332494220347366`*^9}]
}, Open  ]],

Cell[BoxData[
 RowBox[{"Transpose", "[", 
  RowBox[{"{", 
   RowBox[{"{", 
    RowBox[{"0", ",", 
     FractionBox["1", 
      SqrtBox["2"]], ",", "0", ",", 
     FractionBox["1", 
      SqrtBox["2"]]}], "}"}], "}"}], "]"}]], "Input",
 CellChangeTimes->{{3.5332493837275457`*^9, 3.5332493879287853`*^9}}],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{
  RowBox[{"{", 
   RowBox[{
    RowBox[{"{", "0", "}"}], ",", 
    RowBox[{"{", 
     FractionBox["1", 
      SqrtBox["2"]], "}"}], ",", 
    RowBox[{"{", "0", "}"}], ",", 
    RowBox[{"{", 
     FractionBox["1", 
      SqrtBox["2"]], "}"}]}], "}"}], " ", "//", " ", "MatrixForm"}]], "Input",
 CellChangeTimes->{{3.5332493991564283`*^9, 3.5332494024646173`*^9}}],

Cell[BoxData[
 TagBox[
  RowBox[{"(", "\[NoBreak]", GridBox[{
     {"0"},
     {
      FractionBox["1", 
       SqrtBox["2"]]},
     {"0"},
     {
      FractionBox["1", 
       SqrtBox["2"]]}
    },
    GridBoxAlignment->{
     "Columns" -> {{Center}}, "ColumnsIndexed" -> {}, "Rows" -> {{Baseline}}, 
      "RowsIndexed" -> {}},
    GridBoxSpacings->{"Columns" -> {
        Offset[0.27999999999999997`], {
         Offset[0.7]}, 
        Offset[0.27999999999999997`]}, "ColumnsIndexed" -> {}, "Rows" -> {
        Offset[0.2], {
         Offset[0.4]}, 
        Offset[0.2]}, "RowsIndexed" -> {}}], "\[NoBreak]", ")"}],
  Function[BoxForm`e$, 
   MatrixForm[BoxForm`e$]]]], "Output",
 CellChangeTimes->{3.533249402735633*^9}]
}, Open  ]]
},
WindowSize->{1006, 642},
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
Cell[1235, 30, 688, 13, 83, "Text"],
Cell[CellGroupData[{
Cell[1948, 47, 8252, 207, 612, "Input"],
Cell[10203, 256, 1139, 33, 120, "Output"],
Cell[11345, 291, 1081, 30, 120, "Output"],
Cell[12429, 323, 991, 26, 86, "Output"],
Cell[13423, 351, 402, 8, 30, "Output"]
}, Open  ]],
Cell[CellGroupData[{
Cell[13862, 364, 92, 1, 31, InheritFromParent],
Cell[13957, 367, 680, 16, 30, "Output"]
}, Open  ]],
Cell[CellGroupData[{
Cell[14674, 388, 2040, 51, 252, "Input"],
Cell[16717, 441, 234, 8, 50, "Output"],
Cell[16954, 451, 661, 13, 42, "Message"],
Cell[17618, 466, 661, 21, 50, "Output"]
}, Open  ]],
Cell[18294, 490, 304, 9, 52, InheritFromParent],
Cell[CellGroupData[{
Cell[18623, 503, 386, 12, 52, InheritFromParent],
Cell[19012, 517, 725, 24, 120, "Output"]
}, Open  ]]
}
]
*)

(* End of internal cache information *)

(* NotebookSignature UvDgGCYX0i6rmD1KQdxHf6Y2 *)
