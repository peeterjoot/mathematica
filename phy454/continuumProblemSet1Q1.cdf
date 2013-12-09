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
NotebookDataLength[      3902,        122]
NotebookOptionsPosition[      4265,        116]
NotebookOutlinePosition[      4608,        131]
CellTagsIndexPosition[      4565,        128]
WindowFrame->Normal*)

(* Beginning of Notebook Content *)
Notebook[{

Cell[CellGroupData[{
Cell[BoxData[
 RowBox[{
  RowBox[{"(*", " ", 
   RowBox[{
    RowBox[{"phy454", " ", "problem", " ", "set", " ", "1"}], ",", " ", 
    "q1"}], " ", "*)"}], "\[IndentingNewLine]", "\[IndentingNewLine]", 
  RowBox[{
   RowBox[{
    RowBox[{"\[Sigma]", " ", "=", " ", 
     RowBox[{
      RowBox[{"{", " ", 
       RowBox[{
        RowBox[{"{", 
         RowBox[{"6", ",", " ", "0", ",", " ", "2"}], "}"}], ",", " ", 
        RowBox[{"{", 
         RowBox[{"0", ",", " ", "1", ",", " ", "1"}], "}"}], ",", " ", 
        RowBox[{"{", 
         RowBox[{"2", ",", " ", "1", ",", " ", "3"}], "}"}]}], "}"}], " ", 
      RowBox[{"10", "^", "6"}]}]}], " ", ";", " ", 
    RowBox[{"(*", " ", 
     RowBox[{"N", "/", 
      RowBox[{"m", "^", "2"}]}], " ", "*)"}], "\[IndentingNewLine]", 
    "\[IndentingNewLine]", 
    RowBox[{
     RowBox[{"strain", "[", 
      RowBox[{"\[Sigma]_", ",", " ", "\[Nu]_", ",", " ", "e_"}], "]"}], " ", ":=",
      " ", 
     RowBox[{
      RowBox[{"(", 
       RowBox[{"1", "/", "e"}], ")"}], 
      RowBox[{"(", 
       RowBox[{
        RowBox[{
         RowBox[{"(", " ", 
          RowBox[{"1", " ", "+", " ", "\[Nu]"}], ")"}], " ", "\[Sigma]"}], 
        " ", "-", " ", 
        RowBox[{"\[Nu]", " ", 
         RowBox[{"Tr", "[", "\[Sigma]", "]"}], " ", 
         RowBox[{"IdentityMatrix", "[", "3", "]"}]}]}], " ", ")"}]}]}]}], 
   "\[IndentingNewLine]", "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{"strain", "[", 
     RowBox[{"\[Sigma]", ",", " ", "0.35", ",", " ", 
      RowBox[{"200", " ", 
       RowBox[{"10", "^", "9"}]}]}], " ", 
     RowBox[{"(*", " ", 
      RowBox[{"N", "/", 
       RowBox[{"m", "^", "2"}]}], " ", "*)"}], "]"}], " ", ";"}], 
   "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{"%", " ", "/", " ", 
     RowBox[{"(", 
      RowBox[{"10", "^", 
       RowBox[{"(", 
        RowBox[{"-", "6"}], ")"}]}], ")"}]}], " ", "//", " ", "MatrixForm", 
    "\[IndentingNewLine]"}]}]}]], "Input",
 CellChangeTimes->{{3.5373188142743444`*^9, 3.5373188266180506`*^9}, {
  3.53731888255525*^9, 3.5373189742114925`*^9}, {3.537319009237496*^9, 
  3.5373194655445952`*^9}, {3.537319650533176*^9, 3.537319744909574*^9}}],

Cell[BoxData[
 TagBox[
  RowBox[{"(", "\[NoBreak]", GridBox[{
     {"23.000000000000004`", "0.`", "13.5`"},
     {"0.`", 
      RowBox[{"-", "10.749999999999998`"}], "6.75`"},
     {"13.5`", "6.75`", "2.750000000000002`"}
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
 CellChangeTimes->{{3.537319415259719*^9, 3.5373194664706483`*^9}, {
  3.53731966407495*^9, 3.537319725815482*^9}}]
}, Open  ]]
},
WindowSize->{707, 637},
WindowMargins->{{Automatic, 39}, {41, Automatic}},
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
Cell[1257, 32, 2161, 58, 192, "Input"],
Cell[3421, 92, 828, 21, 71, "Output"]
}, Open  ]]
}
]
*)

(* End of internal cache information *)

(* NotebookSignature xwp1prEHk1ydoCgrlqZzYOdF *)
