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
NotebookDataLength[     12224,        430]
NotebookOptionsPosition[     11308,        382]
NotebookOutlinePosition[     11652,        397]
CellTagsIndexPosition[     11609,        394]
WindowFrame->Normal*)

(* Beginning of Notebook Content *)
Notebook[{

Cell[CellGroupData[{
Cell["\<\
Elliptical polarization, rotating to standard form\
\>", "Title",
 CellChangeTimes->{{3.55347283119641*^9, 3.553472855756815*^9}}],

Cell["\<\
Given an ellipse of the following form\
\>", "Text",
 CellChangeTimes->{{3.553472863665267*^9, 3.553472870630666*^9}}],

Cell[BoxData[
 RowBox[{
  RowBox[{"f", "[", 
   RowBox[{"u_", ",", " ", "v_"}], "]"}], " ", ":=", " ", 
  RowBox[{
   RowBox[{"u", "^", "2"}], " ", "+", " ", 
   RowBox[{"v", "^", "2"}], " ", "-", " ", 
   RowBox[{"2", " ", "u", " ", "v", " ", 
    RowBox[{"Cos", "[", "\[Epsilon]", "]"}]}], " ", "-", " ", 
   RowBox[{
    RowBox[{"Sin", "[", "\[Epsilon]", "]"}], "^", "2", " "}]}]}]], "Input",
 CellChangeTimes->{{3.5534729054546576`*^9, 3.5534729378025074`*^9}, {
  3.5534729712744217`*^9, 3.553472971631442*^9}, {3.553473121584019*^9, 
  3.5534731219750414`*^9}}],

Cell["\<\
We\[CloseCurlyQuote]d like to put this in standard elliptical form using the \
rotation\
\>", "Text",
 CellChangeTimes->{{3.553472984471177*^9, 3.553473000774109*^9}}],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{
  RowBox[{
   RowBox[{"f", "[", 
    RowBox[{"u", ",", " ", "v"}], "]"}], " ", "/.", " ", 
   RowBox[{"{", " ", 
    RowBox[{
     RowBox[{"u", " ", "\[Rule]", " ", 
      RowBox[{
       RowBox[{"a", " ", 
        RowBox[{"Cos", "[", "\[Theta]", "]"}]}], " ", "-", " ", 
       RowBox[{"b", " ", 
        RowBox[{"Sin", "[", "\[Theta]", "]"}]}]}]}], ",", " ", 
     RowBox[{"v", " ", "\[Rule]", " ", 
      RowBox[{
       RowBox[{"b", " ", 
        RowBox[{"Cos", "[", "\[Theta]", "]"}]}], " ", "+", " ", 
       RowBox[{"a", " ", 
        RowBox[{"Sin", "[", "\[Theta]", "]"}]}]}]}]}], "}"}]}], " ", "//", 
  " ", "FullSimplify"}]], "Input",
 CellChangeTimes->{{3.553473023552412*^9, 3.5534731066811666`*^9}}],

Cell[BoxData[
 RowBox[{
  RowBox[{"-", 
   FractionBox["1", "2"]}], "+", 
  SuperscriptBox["a", "2"], "+", 
  SuperscriptBox["b", "2"], "+", 
  RowBox[{
   FractionBox["1", "2"], " ", 
   RowBox[{"Cos", "[", 
    RowBox[{"2", " ", "\[Epsilon]"}], "]"}]}], "+", 
  RowBox[{
   RowBox[{"Cos", "[", "\[Epsilon]", "]"}], " ", 
   RowBox[{"(", 
    RowBox[{
     RowBox[{
      RowBox[{"-", "2"}], " ", "a", " ", "b", " ", 
      RowBox[{"Cos", "[", 
       RowBox[{"2", " ", "\[Theta]"}], "]"}]}], "+", 
     RowBox[{
      RowBox[{"(", 
       RowBox[{
        RowBox[{"-", 
         SuperscriptBox["a", "2"]}], "+", 
        SuperscriptBox["b", "2"]}], ")"}], " ", 
      RowBox[{"Sin", "[", 
       RowBox[{"2", " ", "\[Theta]"}], "]"}]}]}], ")"}]}]}]], "Output",
 CellChangeTimes->{{3.553473091715311*^9, 3.5534731284044094`*^9}}]
}, Open  ]],

Cell[TextData[{
 "We see that we want the ",
 Cell[BoxData[
  FormBox[
   RowBox[{"a", " ", "b"}], TraditionalForm]],
  FormatType->"TraditionalForm"],
 " term equal to zero, so ",
 Cell[BoxData[
  FormBox[
   RowBox[{
    RowBox[{"2", " ", "\[Theta]"}], "=", 
    FractionBox["\[Pi]", "4"]}], TraditionalForm]],
  FormatType->"TraditionalForm"],
 ".  To verify we use\n\n",
 Cell[BoxData[
  FormBox[
   RowBox[{"u", " ", "\[Rule]", " ", 
    RowBox[{
     RowBox[{"(", 
      RowBox[{"a", " ", "-", " ", "b"}], ")"}], "/", 
     SqrtBox["2"]}]}], TraditionalForm]],
  FormatType->"TraditionalForm"],
 "\n",
 Cell[BoxData[
  FormBox[
   RowBox[{"v", " ", "->", " ", 
    RowBox[{
     RowBox[{"(", 
      RowBox[{"a", " ", "+", " ", "b"}], ")"}], "/", 
     SqrtBox["2"]}]}], TraditionalForm]],
  FormatType->"TraditionalForm"]
}], "Text",
 CellChangeTimes->{{3.553475176386547*^9, 3.5534753200347633`*^9}}],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{
  RowBox[{
   RowBox[{"f", "[", 
    RowBox[{"u", ",", " ", "v"}], "]"}], " ", "/.", " ", 
   RowBox[{"{", 
    RowBox[{
     FormBox[
      RowBox[{"u", " ", "\[Rule]", " ", 
       RowBox[{
        RowBox[{"(", 
         RowBox[{"a", " ", "-", " ", "b"}], ")"}], "/", 
        SqrtBox["2"]}]}],
      TraditionalForm], " ", ",", " ", 
     FormBox[
      RowBox[{"v", " ", "->", " ", 
       RowBox[{
        RowBox[{"(", 
         RowBox[{"a", " ", "+", " ", "b"}], ")"}], "/", 
        SqrtBox["2"]}]}],
      TraditionalForm]}], "}"}]}], " ", "//", " ", "FullSimplify"}]], "Input",
 CellChangeTimes->{{3.5534753800731974`*^9, 3.5534753996583176`*^9}}],

Cell[BoxData[
 RowBox[{
  SuperscriptBox["a", "2"], "+", 
  SuperscriptBox["b", "2"], "+", 
  RowBox[{
   RowBox[{"(", 
    RowBox[{
     RowBox[{"-", 
      SuperscriptBox["a", "2"]}], "+", 
     SuperscriptBox["b", "2"]}], ")"}], " ", 
   RowBox[{"Cos", "[", "\[Epsilon]", "]"}]}], "-", 
  SuperscriptBox[
   RowBox[{"Sin", "[", "\[Epsilon]", "]"}], "2"]}]], "Output",
 CellChangeTimes->{3.5534754008283844`*^9}]
}, Open  ]],

Cell["\<\
So our ellipse in the transformed coordinates is \
\>", "Text",
 CellChangeTimes->{{3.5534755362021275`*^9, 3.5534755524220552`*^9}}],

Cell[BoxData[
 RowBox[{
  RowBox[{
   RowBox[{
    SuperscriptBox["a", "2"], " ", 
    RowBox[{"(", 
     RowBox[{"1", "-", 
      RowBox[{"cos", 
       RowBox[{"(", "\[Epsilon]", ")"}]}]}], ")"}], " ", 
    SuperscriptBox["csc", "2"], 
    RowBox[{"(", "\[Epsilon]", ")"}]}], "+", 
   RowBox[{
    SuperscriptBox["b", "2"], " ", 
    RowBox[{"(", 
     RowBox[{
      RowBox[{"cos", 
       RowBox[{"(", "\[Epsilon]", ")"}]}], "+", "1"}], ")"}], " ", 
    SuperscriptBox["csc", "2"], 
    RowBox[{"(", "\[Epsilon]", ")"}]}]}], "\[LongEqual]", "1"}]], "Input",
 CellChangeTimes->{{3.5534755681989574`*^9, 3.553475647545496*^9}, 
   3.5534759167108912`*^9}],

Cell["\<\
ie.  Major and Minor axes are respectively\
\>", "Text",
 CellChangeTimes->{{3.5534756954192343`*^9, 3.5534757036977077`*^9}, {
  3.5534758441297398`*^9, 3.5534758465108757`*^9}, {3.5534758875832253`*^9, 
  3.553475896129714*^9}}],

Cell[BoxData[
 FormBox[
  FractionBox[
   RowBox[{"sin", "(", "\[Epsilon]", ")"}], 
   SqrtBox[
    RowBox[{"1", "-", 
     RowBox[{"cos", "(", "\[Epsilon]", ")"}]}]]], TraditionalForm]], "Input"],

Cell[BoxData[
 FormBox[
  FractionBox[
   RowBox[{"sin", "(", "\[Epsilon]", ")"}], 
   SqrtBox[
    RowBox[{
     RowBox[{"cos", "(", "\[Epsilon]", ")"}], "+", "1"}]]], 
  TraditionalForm]], "Input"],

Cell[CellGroupData[{

Cell["\<\
Scratch and formatting rough stuff\
\>", "Section",
 CellChangeTimes->{{3.5534728853945103`*^9, 3.55347288714761*^9}, {
  3.5534754206735196`*^9, 3.5534754285999727`*^9}}],

Cell[BoxData[""], "Input",
 CellChangeTimes->{{3.5534728897277575`*^9, 3.553472896443142*^9}}],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{
  RowBox[{"f", "[", " ", 
   RowBox[{"u", ",", " ", "v"}], "]"}], " ", "\[Equal]", " ", "0"}]], "Input",
 CellChangeTimes->{{3.553472941284707*^9, 3.553472961711875*^9}}],

Cell[BoxData[
 RowBox[{
  RowBox[{"f", "[", 
   RowBox[{"u", ",", "v"}], "]"}], "\[Equal]", "0"}]], "Output",
 CellChangeTimes->{{3.553472950415229*^9, 3.5534729624709187`*^9}}]
}, Closed]],

Cell[BoxData[
 RowBox[{"Pi", "/", "4"}]], "Input",
 CellChangeTimes->{{3.5534752039441233`*^9, 3.5534752051271915`*^9}}],

Cell[CellGroupData[{

Cell[BoxData[{
 FractionBox["\[Pi]", "4"], "\[IndentingNewLine]", 
 RowBox[{"Sqrt", "[", "2", "]"}], "\[IndentingNewLine]"}], "Input",
 CellChangeTimes->{{3.553475284705743*^9, 3.553475287437899*^9}}],

Cell[BoxData[
 FractionBox["\[Pi]", "4"]], "Output",
 CellChangeTimes->{3.5534752884519567`*^9}]
}, Closed]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{
  RowBox[{
   RowBox[{
    RowBox[{
     RowBox[{
      SuperscriptBox["a", "2"], 
      RowBox[{
       RowBox[{"(", 
        RowBox[{"1", "-", 
         RowBox[{"Cos", "[", "\[Epsilon]", "]"}]}], ")"}], "/", 
       SuperscriptBox[
        RowBox[{"Sin", "[", "\[Epsilon]", "]"}], "2"]}]}], "+", 
     RowBox[{
      SuperscriptBox["b", "2"], 
      RowBox[{
       RowBox[{"(", " ", 
        RowBox[{"1", " ", "+", " ", 
         RowBox[{"Cos", "[", "\[Epsilon]", "]"}]}], ")"}], "/", 
       SuperscriptBox[
        RowBox[{"Sin", "[", "\[Epsilon]", "]"}], "2"]}]}]}], "==", "1"}], " ",
    "//", " ", "TraditionalForm"}], "\[IndentingNewLine]"}]], "Input",
 CellChangeTimes->{{3.5534756602602234`*^9, 3.553475667084614*^9}}],

Cell[BoxData[
 FormBox[
  RowBox[{
   RowBox[{
    RowBox[{
     SuperscriptBox["a", "2"], " ", 
     RowBox[{"(", 
      RowBox[{"1", "-", 
       RowBox[{"cos", "(", "\[Epsilon]", ")"}]}], ")"}], " ", 
     RowBox[{
      SuperscriptBox["csc", "2"], "(", "\[Epsilon]", ")"}]}], "+", 
    RowBox[{
     SuperscriptBox["b", "2"], " ", 
     RowBox[{"(", 
      RowBox[{
       RowBox[{"cos", "(", "\[Epsilon]", ")"}], "+", "1"}], ")"}], " ", 
     RowBox[{
      SuperscriptBox["csc", "2"], "(", "\[Epsilon]", ")"}]}]}], 
   "\[LongEqual]", "1"}], TraditionalForm]], "Output",
 CellChangeTimes->{3.553475668257681*^9}]
}, Open  ]],

Cell[BoxData[""], "Input",
 CellChangeTimes->{{3.5534752909090977`*^9, 3.5534752909601*^9}}],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{
  RowBox[{
   RowBox[{"Sin", "[", "\[Epsilon]", "]"}], "/", " ", 
   RowBox[{"Sqrt", "[", 
    RowBox[{"1", "-", 
     RowBox[{"Cos", "[", "\[Epsilon]", "]"}]}], "]"}]}], " ", "//", " ", 
  "TraditionalForm"}]], "Input",
 CellChangeTimes->{{3.553475937540083*^9, 3.5534759790734587`*^9}}],

Cell[BoxData[
 FormBox[
  FractionBox[
   RowBox[{"sin", "(", "\[Epsilon]", ")"}], 
   SqrtBox[
    RowBox[{"1", "-", 
     RowBox[{"cos", "(", "\[Epsilon]", ")"}]}]]], TraditionalForm]], "Output",
 CellChangeTimes->{3.5534759797254953`*^9}]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{
  RowBox[{
   RowBox[{"Sin", "[", "\[Epsilon]", "]"}], "/", 
   RowBox[{"Sqrt", "[", " ", 
    RowBox[{"1", " ", "+", " ", 
     RowBox[{"Cos", "[", "\[Epsilon]", "]"}]}], "]"}]}], " ", "//", " ", 
  "TraditionalForm"}]], "Input",
 CellChangeTimes->{{3.5534760088921638`*^9, 3.553476024585061*^9}}],

Cell[BoxData[
 FormBox[
  FractionBox[
   RowBox[{"sin", "(", "\[Epsilon]", ")"}], 
   SqrtBox[
    RowBox[{
     RowBox[{"cos", "(", "\[Epsilon]", ")"}], "+", "1"}]]], 
  TraditionalForm]], "Output",
 CellChangeTimes->{{3.5534760191937532`*^9, 3.553476025241099*^9}}]
}, Open  ]]
}, Open  ]]
}, Open  ]]
},
WindowSize->{1022, 637},
WindowMargins->{{24, Automatic}, {Automatic, 30}},
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
Cell[1257, 32, 140, 3, 83, "Title"],
Cell[1400, 37, 128, 3, 29, "Text"],
Cell[1531, 42, 567, 13, 31, "Input"],
Cell[2101, 57, 177, 4, 29, "Text"],
Cell[CellGroupData[{
Cell[2303, 65, 736, 20, 31, "Input"],
Cell[3042, 87, 830, 26, 47, "Output"]
}, Open  ]],
Cell[3887, 116, 907, 32, 100, "Text"],
Cell[CellGroupData[{
Cell[4819, 152, 680, 21, 40, "Input"],
Cell[5502, 175, 414, 13, 33, "Output"]
}, Open  ]],
Cell[5931, 191, 143, 3, 29, "Text"],
Cell[6077, 196, 657, 20, 31, "Input"],
Cell[6737, 218, 240, 5, 29, "Text"],
Cell[6980, 225, 196, 6, 59, "Input"],
Cell[7179, 233, 199, 7, 59, "Input"],
Cell[CellGroupData[{
Cell[7403, 244, 181, 4, 71, "Section"],
Cell[7587, 250, 94, 1, 31, "Input"],
Cell[CellGroupData[{
Cell[7706, 255, 194, 4, 31, "Input"],
Cell[7903, 261, 177, 4, 30, "Output"]
}, Closed]],
Cell[8095, 268, 120, 2, 25, "Input"],
Cell[CellGroupData[{
Cell[8240, 274, 200, 3, 86, InheritFromParent],
Cell[8443, 279, 96, 2, 45, "Output"]
}, Closed]],
Cell[CellGroupData[{
Cell[8576, 286, 753, 22, 48, "Input"],
Cell[9332, 310, 618, 19, 46, "Output"]
}, Open  ]],
Cell[9965, 332, 92, 1, 31, InheritFromParent],
Cell[CellGroupData[{
Cell[10082, 337, 312, 8, 31, "Input"],
Cell[10397, 347, 241, 7, 67, "Output"]
}, Open  ]],
Cell[CellGroupData[{
Cell[10675, 359, 322, 8, 31, "Input"],
Cell[11000, 369, 268, 8, 67, "Output"]
}, Open  ]]
}, Open  ]]
}, Open  ]]
}
]
*)

(* End of internal cache information *)

(* NotebookSignature cwTc2lUdXbP6UD1vGtO2JJnV *)
