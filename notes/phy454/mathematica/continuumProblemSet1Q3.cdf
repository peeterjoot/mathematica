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
NotebookDataLength[      8391,        246]
NotebookOptionsPosition[      8476,        233]
NotebookOutlinePosition[      8818,        248]
CellTagsIndexPosition[      8775,        245]
WindowFrame->Normal*)

(* Beginning of Notebook Content *)
Notebook[{

Cell[CellGroupData[{
Cell[BoxData[
 RowBox[{
  RowBox[{"(*", " ", 
   RowBox[{"verify", " ", "manual", " ", "calculations"}], " ", "*)"}], 
  "\[IndentingNewLine]", 
  RowBox[{
   RowBox[{"Clear", "[", 
    RowBox[{
    "sigma", ",", " ", "n", ",", " ", "p", ",", " ", "e1", ",", " ", "e2", 
     ",", " ", "tau", ",", " ", "normalComponent", ",", " ", 
     "rejectionComponent", ",", " ", "rejectionDir"}], "]"}], 
   "\[IndentingNewLine]", 
   RowBox[{"sigma", " ", ":=", " ", 
    RowBox[{"{", 
     RowBox[{
      RowBox[{"{", 
       RowBox[{"1", ",", " ", 
        RowBox[{"-", "2"}], ",", " ", "2"}], "}"}], ",", " ", 
      RowBox[{"{", 
       RowBox[{
        RowBox[{"-", "2"}], ",", " ", "3", ",", "1"}], "}"}], ",", " ", 
      RowBox[{"{", 
       RowBox[{"2", ",", " ", "1", ",", " ", 
        RowBox[{"-", "1"}]}], "}"}]}], "}"}]}], "\[IndentingNewLine]", 
   RowBox[{"n", " ", ":=", " ", 
    RowBox[{
     RowBox[{"{", 
      RowBox[{
       RowBox[{"Sqrt", "[", "2", "]"}], ",", " ", 
       RowBox[{"-", "1"}], ",", " ", "1"}], "}"}], "/", "2"}]}], 
   "\[IndentingNewLine]", 
   RowBox[{"p", " ", "=", " ", 
    RowBox[{"sigma", " ", ".", " ", "n"}]}], "\[IndentingNewLine]", 
   RowBox[{"e1", " ", ":=", " ", 
    RowBox[{"{", 
     RowBox[{"1", ",", " ", "0", ",", " ", "0"}], "}"}]}], 
   "\[IndentingNewLine]", 
   RowBox[{"e2", " ", ":=", " ", 
    RowBox[{"{", 
     RowBox[{"0", ",", " ", "1", ",", " ", "0"}], "}"}]}], 
   "\[IndentingNewLine]", 
   RowBox[{"tau", " ", "=", " ", 
    RowBox[{"Normalize", "[", 
     RowBox[{"Cross", "[", 
      RowBox[{"n", ",", " ", "e1"}], "]"}], " ", "]"}]}], 
   "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{"Cross", "[", 
     RowBox[{"n", ",", " ", "e1"}], "]"}], " ", ".", " ", "n"}], 
   "\[IndentingNewLine]", 
   RowBox[{"Orthogonalize", "[", 
    RowBox[{"{", 
     RowBox[{"n", ",", " ", "tau", ",", " ", "e2"}], "}"}], "]"}], 
   "\[IndentingNewLine]", 
   RowBox[{"normalComponent", " ", "=", " ", 
    RowBox[{"FullSimplify", "[", 
     RowBox[{
      RowBox[{"p", " ", ".", " ", "n"}], " ", "n"}], "]"}]}], 
   "\[IndentingNewLine]", 
   RowBox[{"rejectionComponent", " ", "=", " ", 
    RowBox[{"FullSimplify", "[", 
     RowBox[{"p", " ", "-", " ", "normalComponent"}], "]"}]}], 
   "\[IndentingNewLine]", 
   RowBox[{"rejectionDir", " ", "=", " ", 
    RowBox[{"Normalize", "[", "rejectionComponent", "]"}]}], 
   "\[IndentingNewLine]", 
   RowBox[{"rejectionComponent", " ", ".", " ", "rejectionDir"}]}]}]], "Input",
 CellChangeTimes->{{3.537490859469717*^9, 3.5374909507609386`*^9}, {
  3.5374917304135323`*^9, 3.53749179313912*^9}, {3.537492493721191*^9, 
  3.537492649067076*^9}, {3.5375685013729963`*^9, 3.5375686798602047`*^9}, {
  3.537568876505452*^9, 3.5375688782915545`*^9}}],

Cell[BoxData[
 RowBox[{"{", 
  RowBox[{
   RowBox[{"2", "+", 
    FractionBox["1", 
     SqrtBox["2"]]}], ",", 
   RowBox[{
    RowBox[{"-", "1"}], "-", 
    SqrtBox["2"]}], ",", 
   RowBox[{
    RowBox[{"-", "1"}], "+", 
    SqrtBox["2"]}]}], "}"}]], "Output",
 CellChangeTimes->{{3.5374909026241856`*^9, 3.5374909514699793`*^9}, {
   3.5374917839755955`*^9, 3.5374917943621902`*^9}, 3.537492577816001*^9, 
   3.537492608499756*^9, 3.5374926500531325`*^9, {3.5375685605853825`*^9, 
   3.5375686179056616`*^9}, {3.53756866158416*^9, 3.537568680629249*^9}, 
   3.537568886026997*^9}],

Cell[BoxData[
 RowBox[{"{", 
  RowBox[{"0", ",", 
   FractionBox["1", 
    SqrtBox["2"]], ",", 
   FractionBox["1", 
    SqrtBox["2"]]}], "}"}]], "Output",
 CellChangeTimes->{{3.5374909026241856`*^9, 3.5374909514699793`*^9}, {
   3.5374917839755955`*^9, 3.5374917943621902`*^9}, 3.537492577816001*^9, 
   3.537492608499756*^9, 3.5374926500531325`*^9, {3.5375685605853825`*^9, 
   3.5375686179056616`*^9}, {3.53756866158416*^9, 3.537568680629249*^9}, 
   3.5375688860289974`*^9}],

Cell[BoxData["0"], "Output",
 CellChangeTimes->{{3.5374909026241856`*^9, 3.5374909514699793`*^9}, {
   3.5374917839755955`*^9, 3.5374917943621902`*^9}, 3.537492577816001*^9, 
   3.537492608499756*^9, 3.5374926500531325`*^9, {3.5375685605853825`*^9, 
   3.5375686179056616`*^9}, {3.53756866158416*^9, 3.537568680629249*^9}, 
   3.5375688860309973`*^9}],

Cell[BoxData[
 RowBox[{"{", 
  RowBox[{
   RowBox[{"{", 
    RowBox[{
     FractionBox["1", 
      SqrtBox["2"]], ",", 
     RowBox[{"-", 
      FractionBox["1", "2"]}], ",", 
     FractionBox["1", "2"]}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{"0", ",", 
     FractionBox["1", 
      SqrtBox["2"]], ",", 
     FractionBox["1", 
      SqrtBox["2"]]}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{
     FractionBox["1", 
      SqrtBox["2"]], ",", 
     FractionBox["1", "2"], ",", 
     RowBox[{"-", 
      FractionBox["1", "2"]}]}], "}"}]}], "}"}]], "Output",
 CellChangeTimes->{{3.5374909026241856`*^9, 3.5374909514699793`*^9}, {
   3.5374917839755955`*^9, 3.5374917943621902`*^9}, 3.537492577816001*^9, 
   3.537492608499756*^9, 3.5374926500531325`*^9, {3.5375685605853825`*^9, 
   3.5375686179056616`*^9}, {3.53756866158416*^9, 3.537568680629249*^9}, 
   3.5375688860319977`*^9}],

Cell[BoxData[
 RowBox[{"{", 
  RowBox[{
   RowBox[{
    FractionBox["1", "4"], " ", 
    RowBox[{"(", 
     RowBox[{"8", "+", 
      SqrtBox["2"]}], ")"}]}], ",", 
   RowBox[{
    RowBox[{"-", 
     FractionBox["1", "4"]}], "-", 
    SqrtBox["2"]}], ",", 
   RowBox[{
    FractionBox["1", "4"], "+", 
    SqrtBox["2"]}]}], "}"}]], "Output",
 CellChangeTimes->{{3.5374909026241856`*^9, 3.5374909514699793`*^9}, {
   3.5374917839755955`*^9, 3.5374917943621902`*^9}, 3.537492577816001*^9, 
   3.537492608499756*^9, 3.5374926500531325`*^9, {3.5375685605853825`*^9, 
   3.5375686179056616`*^9}, {3.53756866158416*^9, 3.537568680629249*^9}, 
   3.537568886032997*^9}],

Cell[BoxData[
 RowBox[{"{", 
  RowBox[{
   FractionBox["1", 
    RowBox[{"2", " ", 
     SqrtBox["2"]}]], ",", 
   RowBox[{"-", 
    FractionBox["3", "4"]}], ",", 
   RowBox[{"-", 
    FractionBox["5", "4"]}]}], "}"}]], "Output",
 CellChangeTimes->{{3.5374909026241856`*^9, 3.5374909514699793`*^9}, {
   3.5374917839755955`*^9, 3.5374917943621902`*^9}, 3.537492577816001*^9, 
   3.537492608499756*^9, 3.5374926500531325`*^9, {3.5375685605853825`*^9, 
   3.5375686179056616`*^9}, {3.53756866158416*^9, 3.537568680629249*^9}, 
   3.5375688860339975`*^9}],

Cell[BoxData[
 RowBox[{"{", 
  RowBox[{
   FractionBox["1", 
    RowBox[{"3", " ", 
     SqrtBox["2"]}]], ",", 
   RowBox[{"-", 
    FractionBox["1", "2"]}], ",", 
   RowBox[{"-", 
    FractionBox["5", "6"]}]}], "}"}]], "Output",
 CellChangeTimes->{{3.5374909026241856`*^9, 3.5374909514699793`*^9}, {
   3.5374917839755955`*^9, 3.5374917943621902`*^9}, 3.537492577816001*^9, 
   3.537492608499756*^9, 3.5374926500531325`*^9, {3.5375685605853825`*^9, 
   3.5375686179056616`*^9}, {3.53756866158416*^9, 3.537568680629249*^9}, 
   3.537568886034998*^9}],

Cell[BoxData[
 FractionBox["3", "2"]], "Output",
 CellChangeTimes->{{3.5374909026241856`*^9, 3.5374909514699793`*^9}, {
   3.5374917839755955`*^9, 3.5374917943621902`*^9}, 3.537492577816001*^9, 
   3.537492608499756*^9, 3.5374926500531325`*^9, {3.5375685605853825`*^9, 
   3.5375686179056616`*^9}, {3.53756866158416*^9, 3.537568680629249*^9}, 
   3.5375688860359974`*^9}]
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
Cell[1257, 32, 2751, 70, 292, "Input"],
Cell[4011, 104, 582, 16, 50, "Output"],
Cell[4596, 122, 478, 11, 50, "Output"],
Cell[5077, 135, 351, 5, 30, "Output"],
Cell[5431, 142, 883, 27, 50, "Output"],
Cell[6317, 171, 661, 19, 47, "Output"],
Cell[6981, 192, 552, 14, 50, "Output"],
Cell[7536, 208, 550, 14, 50, "Output"],
Cell[8089, 224, 371, 6, 47, "Output"]
}, Open  ]]
}
]
*)

(* End of internal cache information *)

(* NotebookSignature Ov0j1MxGq@xSKDwdoH#S0VcA *)
