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
NotebookDataLength[      3692,        123]
NotebookOptionsPosition[      4019,        116]
NotebookOutlinePosition[      4360,        131]
CellTagsIndexPosition[      4317,        128]
WindowFrame->Normal*)

(* Beginning of Notebook Content *)
Notebook[{

Cell[CellGroupData[{
Cell[BoxData[{
 RowBox[{
  RowBox[{"Integrate", "[", " ", 
   RowBox[{
    RowBox[{"w", " ", 
     RowBox[{"BesselJ", "[", 
      RowBox[{"1", ",", " ", 
       RowBox[{
        RowBox[{"BesselJZeros", "[", 
         RowBox[{"1", ",", " ", "j"}], "]"}], " ", "w"}]}], "]"}]}], ",", " ", 
    RowBox[{"{", 
     RowBox[{"w", ",", " ", "0", ",", " ", "1"}], "}"}]}], "]"}], " ", "//", 
  " ", "TraditionalForm"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{"Integrate", "[", " ", 
   RowBox[{
    RowBox[{"w", " ", 
     RowBox[{
      RowBox[{"(", 
       RowBox[{"BesselJ", "[", 
        RowBox[{"1", ",", " ", 
         RowBox[{
          RowBox[{"BesselJZeros", "[", 
           RowBox[{"1", ",", " ", "j"}], "]"}], " ", "w"}]}], "]"}], ")"}], 
      "^", "2"}]}], ",", " ", 
    RowBox[{"{", 
     RowBox[{"w", ",", " ", "0", ",", " ", "1"}], "}"}]}], "]"}], " ", "//", 
  " ", "TraditionalForm"}], "\[IndentingNewLine]"}], "Input",
 CellChangeTimes->{{3.5449997663506384`*^9, 3.5449998793721027`*^9}}],

Cell[BoxData[
 FormBox[
  FractionBox[
   RowBox[{"\[Pi]", " ", 
    RowBox[{"(", 
     RowBox[{
      RowBox[{
       TemplateBox[{"0",RowBox[{"BesselJZeros", "(", 
           RowBox[{"1", ",", "j"}], ")"}]},
        "StruveH"], " ", 
       TemplateBox[{"1",RowBox[{"BesselJZeros", "(", 
           RowBox[{"1", ",", "j"}], ")"}]},
        "BesselJ"]}], "-", 
      RowBox[{
       TemplateBox[{"1",RowBox[{"BesselJZeros", "(", 
           RowBox[{"1", ",", "j"}], ")"}]},
        "StruveH"], " ", 
       TemplateBox[{"0",RowBox[{"BesselJZeros", "(", 
           RowBox[{"1", ",", "j"}], ")"}]},
        "BesselJ"]}]}], ")"}]}], 
   RowBox[{"2", " ", 
    RowBox[{"BesselJZeros", "(", 
     RowBox[{"1", ",", "j"}], ")"}]}]], TraditionalForm]], "Output",
 CellChangeTimes->{3.544999816283494*^9, 3.5449998589149323`*^9, 
  3.54499996341891*^9}],

Cell[BoxData[
 FormBox[
  RowBox[{
   FractionBox["1", "2"], " ", 
   RowBox[{"(", 
    RowBox[{
     SuperscriptBox[
      TemplateBox[{"0",RowBox[{"BesselJZeros", "(", 
          RowBox[{"1", ",", "j"}], ")"}]},
       "BesselJ"], "2"], "-", 
     FractionBox[
      RowBox[{"2", " ", 
       TemplateBox[{"1",RowBox[{"BesselJZeros", "(", 
           RowBox[{"1", ",", "j"}], ")"}]},
        "BesselJ"], " ", 
       TemplateBox[{"0",RowBox[{"BesselJZeros", "(", 
           RowBox[{"1", ",", "j"}], ")"}]},
        "BesselJ"]}], 
      RowBox[{"BesselJZeros", "(", 
       RowBox[{"1", ",", "j"}], ")"}]], "+", 
     SuperscriptBox[
      TemplateBox[{"1",RowBox[{"BesselJZeros", "(", 
          RowBox[{"1", ",", "j"}], ")"}]},
       "BesselJ"], "2"]}], ")"}]}], TraditionalForm]], "Output",
 CellChangeTimes->{3.544999816283494*^9, 3.5449998589149323`*^9, 
  3.544999964256958*^9}]
}, Open  ]]
},
WindowSize->{706, 637},
WindowMargins->{{1, Automatic}, {Automatic, 0}},
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
Cell[1257, 32, 1006, 28, 72, "Input"],
Cell[2266, 62, 847, 24, 65, "Output"],
Cell[3116, 88, 887, 25, 65, "Output"]
}, Open  ]]
}
]
*)

(* End of internal cache information *)

(* NotebookSignature ix0oeM6lZoZNfAKseEXwFpcF *)
