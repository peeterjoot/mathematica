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
NotebookDataLength[      7754,        253]
NotebookOptionsPosition[      7957,        243]
NotebookOutlinePosition[      8301,        258]
CellTagsIndexPosition[      8258,        255]
WindowFrame->Normal*)

(* Beginning of Notebook Content *)
Notebook[{

Cell[CellGroupData[{
Cell[BoxData[{
 RowBox[{"Clear", "[", 
  RowBox[{"i", ",", " ", "j"}], "]"}], "\[IndentingNewLine]", 
 RowBox[{"i", " ", "=", " ", 
  RowBox[{"Integrate", "[", " ", 
   RowBox[{
    RowBox[{"1", "/", 
     RowBox[{"Sqrt", "[", 
      RowBox[{
       RowBox[{"1", "/", 
        RowBox[{
         RowBox[{"(", 
          RowBox[{"1", " ", "-", " ", 
           RowBox[{
            RowBox[{"z", "^", "2"}], "/", 
            RowBox[{"a", "^", "2"}]}]}], ")"}], "^", "2"}]}], "-", "1"}], " ",
       "]"}]}], ",", " ", "z"}], "]"}]}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{"j", "[", "z_", "]"}], " ", "=", " ", 
  RowBox[{"FullSimplify", "[", 
   RowBox[{"i", ",", " ", 
    RowBox[{
     RowBox[{"Element", "[", 
      RowBox[{
       RowBox[{"z", " ", "|", " ", "a"}], ",", "Reals"}], "]"}], " ", "&&", 
     " ", 
     RowBox[{"z", " ", ">", " ", "0"}], " ", "&&", " ", 
     RowBox[{"a", " ", ">", " ", "0"}]}]}], "]"}]}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{"j", "[", "z", "]"}], " ", "//", " ", "TraditionalForm"}]}], "Input",
 CellChangeTimes->{{3.5443771616623755`*^9, 3.5443771917010937`*^9}, {
  3.5443772217688136`*^9, 3.5443772219048214`*^9}, {3.5443773176772995`*^9, 
  3.5443773236756425`*^9}, {3.544377965173334*^9, 3.5443780011213903`*^9}, {
  3.5443780525553317`*^9, 3.54437805427343*^9}, {3.544378190547224*^9, 
  3.5443782060881133`*^9}}],

Cell[BoxData[
 RowBox[{
  RowBox[{
   RowBox[{"(", 
    RowBox[{
     FractionBox[
      SuperscriptBox["a", "2"], "z"], "-", "z"}], ")"}], " ", 
   SqrtBox[
    RowBox[{"-", 
     FractionBox[
      RowBox[{
       SuperscriptBox["z", "2"], " ", 
       RowBox[{"(", 
        RowBox[{
         RowBox[{
          RowBox[{"-", "2"}], " ", 
          SuperscriptBox["a", "2"]}], "+", 
         SuperscriptBox["z", "2"]}], ")"}]}], 
      SuperscriptBox[
       RowBox[{"(", 
        RowBox[{
         RowBox[{"-", 
          SuperscriptBox["a", "2"]}], "+", 
         SuperscriptBox["z", "2"]}], ")"}], "2"]]}]]}], "-", 
  FractionBox[
   RowBox[{"a", " ", 
    RowBox[{"Log", "[", 
     SuperscriptBox["z", "2"], "]"}]}], 
   SqrtBox["2"]], "+", 
  FractionBox[
   RowBox[{"a", " ", 
    RowBox[{"Log", "[", 
     RowBox[{
      RowBox[{"2", " ", 
       SuperscriptBox["a", "2"], " ", "z"}], "-", 
      RowBox[{
       SqrtBox["2"], " ", 
       SuperscriptBox["a", "3"], " ", 
       SqrtBox[
        RowBox[{"-", 
         FractionBox[
          RowBox[{
           SuperscriptBox["z", "2"], " ", 
           RowBox[{"(", 
            RowBox[{
             RowBox[{
              RowBox[{"-", "2"}], " ", 
              SuperscriptBox["a", "2"]}], "+", 
             SuperscriptBox["z", "2"]}], ")"}]}], 
          SuperscriptBox[
           RowBox[{"(", 
            RowBox[{
             RowBox[{"-", 
              SuperscriptBox["a", "2"]}], "+", 
             SuperscriptBox["z", "2"]}], ")"}], "2"]]}]]}], "+", 
      RowBox[{
       SqrtBox["2"], " ", "a", " ", 
       SuperscriptBox["z", "2"], " ", 
       SqrtBox[
        RowBox[{"-", 
         FractionBox[
          RowBox[{
           SuperscriptBox["z", "2"], " ", 
           RowBox[{"(", 
            RowBox[{
             RowBox[{
              RowBox[{"-", "2"}], " ", 
              SuperscriptBox["a", "2"]}], "+", 
             SuperscriptBox["z", "2"]}], ")"}]}], 
          SuperscriptBox[
           RowBox[{"(", 
            RowBox[{
             RowBox[{"-", 
              SuperscriptBox["a", "2"]}], "+", 
             SuperscriptBox["z", "2"]}], ")"}], "2"]]}]]}]}], "]"}]}], 
   SqrtBox["2"]]}]], "Output",
 CellChangeTimes->{
  3.54437719285316*^9, 3.544377223225897*^9, 3.544377343902799*^9, 
   3.544378005436637*^9, 3.5443781596584578`*^9, {3.544378191715291*^9, 
   3.544378207026167*^9}}],

Cell[BoxData[
 RowBox[{
  FractionBox[
   RowBox[{"a", " ", 
    RowBox[{"Log", "[", 
     FractionBox[
      RowBox[{"a", " ", 
       RowBox[{"(", 
        RowBox[{
         RowBox[{"2", " ", "a"}], "-", 
         RowBox[{
          SqrtBox[
           RowBox[{
            RowBox[{"4", " ", 
             SuperscriptBox["a", "2"]}], "-", 
            RowBox[{"2", " ", 
             SuperscriptBox["z", "2"]}]}]], " ", 
          RowBox[{"Sign", "[", 
           RowBox[{"a", "-", "z"}], "]"}]}]}], ")"}]}], "z"], "]"}]}], 
   SqrtBox["2"]], "+", 
  RowBox[{
   SqrtBox[
    RowBox[{
     RowBox[{"2", " ", 
      SuperscriptBox["a", "2"]}], "-", 
     SuperscriptBox["z", "2"]}]], " ", 
   RowBox[{"Sign", "[", 
    RowBox[{"a", "-", "z"}], "]"}]}]}]], "Output",
 CellChangeTimes->{
  3.54437719285316*^9, 3.544377223225897*^9, 3.544377343902799*^9, 
   3.544378005436637*^9, 3.5443781596584578`*^9, {3.544378191715291*^9, 
   3.5443782070821705`*^9}}],

Cell[BoxData[
 FormBox[
  RowBox[{
   RowBox[{
    SqrtBox[
     RowBox[{
      RowBox[{"2", " ", 
       SuperscriptBox["a", "2"]}], "-", 
      SuperscriptBox["z", "2"]}]], " ", 
    RowBox[{"sgn", "(", 
     RowBox[{"a", "-", "z"}], ")"}]}], "+", 
   FractionBox[
    RowBox[{"a", " ", 
     RowBox[{"log", "(", 
      FractionBox[
       RowBox[{"a", " ", 
        RowBox[{"(", 
         RowBox[{
          RowBox[{"2", " ", "a"}], "-", 
          RowBox[{
           SqrtBox[
            RowBox[{
             RowBox[{"4", " ", 
              SuperscriptBox["a", "2"]}], "-", 
             RowBox[{"2", " ", 
              SuperscriptBox["z", "2"]}]}]], " ", 
           RowBox[{"sgn", "(", 
            RowBox[{"a", "-", "z"}], ")"}]}]}], ")"}]}], "z"], ")"}]}], 
    SqrtBox["2"]]}], TraditionalForm]], "Output",
 CellChangeTimes->{
  3.54437719285316*^9, 3.544377223225897*^9, 3.544377343902799*^9, 
   3.544378005436637*^9, 3.5443781596584578`*^9, {3.544378191715291*^9, 
   3.5443782071251726`*^9}}]
}, Open  ]],

Cell[BoxData[
 RowBox[{"(*", 
  RowBox[{"With", "[", 
   RowBox[{
    RowBox[{"{", 
     RowBox[{"a", " ", "=", " ", "1"}], "}"}], ",", "\[IndentingNewLine]", 
    RowBox[{"ParametricPlot", "[", 
     RowBox[{
      RowBox[{"{", 
       RowBox[{
        RowBox[{"Real", "[", 
         RowBox[{"j", "[", "t", "]"}], "]"}], ",", " ", "t"}], "}"}], ",", 
      " ", 
      RowBox[{"{", 
       RowBox[{"t", ",", " ", "0.1", ",", " ", 
        RowBox[{"Sqrt", "[", "2", "]"}]}], "}"}]}], "]"}]}], 
   "\[IndentingNewLine]", "]"}], "*)"}]], "Input",
 CellChangeTimes->{{3.544377428804655*^9, 3.544377434036955*^9}, {
   3.544377465675764*^9, 3.544377488802087*^9}, 3.54437797472288*^9, {
   3.5443780211005325`*^9, 3.544378063592963*^9}, {3.544378140238347*^9, 
   3.5443781552442055`*^9}, {3.5443782465834293`*^9, 3.5443783418948812`*^9}}],

Cell[BoxData[""], "Input",
 CellChangeTimes->{{3.5443775899348717`*^9, 3.5443775928260365`*^9}, 
   3.544377994689022*^9}]
},
WindowSize->{908, 637},
WindowMargins->{{Automatic, 247}, {Automatic, 50}},
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
Cell[1257, 32, 1368, 34, 92, "Input"],
Cell[2628, 68, 2379, 79, 91, "Output"],
Cell[5010, 149, 956, 31, 77, "Output"],
Cell[5969, 182, 1009, 32, 100, "Output"]
}, Open  ]],
Cell[6993, 217, 835, 20, 72, "Input"],
Cell[7831, 239, 122, 2, 31, "Input"]
}
]
*)

(* End of internal cache information *)

(* NotebookSignature axDbZqajWO3RpB1F6OavwwjW *)
