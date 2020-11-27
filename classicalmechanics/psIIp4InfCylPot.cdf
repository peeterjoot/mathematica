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
NotebookDataLength[     88437,       2700]
NotebookOptionsPosition[     85502,       2602]
NotebookOutlinePosition[     85844,       2617]
CellTagsIndexPosition[     85801,       2614]
WindowFrame->Normal*)

(* Beginning of Notebook Content *)
Notebook[{

Cell[CellGroupData[{
Cell["\<\
Potential due to cylindrial distribution\
\>", "Title",
 CellChangeTimes->{{3.539379651175579*^9, 3.539379661524171*^9}}],

Cell[TextData[{
 "Consider a cylindrical distribution of mass (or charge) as in the figure, \
with points in the cylinder given  by ",
 Cell[BoxData[
  FormBox[
   RowBox[{
    StyleBox[
     RowBox[{
      TagBox["r",
       HoldForm], "'"}],
     StripOnInput->False,
     FontFamily->"Arial Black"], 
    StyleBox[" ",
     StripOnInput->False,
     FontFamily->"Arial Black"], 
    StyleBox["=",
     StripOnInput->False,
     FontFamily->"Arial Black"], 
    StyleBox[" ",
     StripOnInput->False,
     FontFamily->"Arial Black"], 
    RowBox[{
     StyleBox["(",
      StripOnInput->False,
      FontFamily->"Arial Black"], 
     RowBox[{
      RowBox[{"r", "'"}], ",", " ", 
      RowBox[{"\[Theta]", "'"}], ",", " ", 
      RowBox[{"z", "'"}]}], ")"}]}], TraditionalForm]]],
 " coordinates, and the point of measurement of the potential measured at ",
 Cell[BoxData[
  FormBox[
   RowBox[{
    StyleBox[
     TagBox["r",
      HoldForm],
     StripOnInput->False,
     FontFamily->"Arial Black"], 
    StyleBox[" ",
     StripOnInput->False,
     FontFamily->"Arial Black"], 
    StyleBox["=",
     StripOnInput->False,
     FontFamily->"Arial Black"], 
    StyleBox[" ",
     StripOnInput->False,
     FontFamily->"Arial Black"], 
    RowBox[{
     StyleBox["(",
      StripOnInput->False,
      FontFamily->"Arial Black"], 
     RowBox[{"r", ",", " ", "0", ",", " ", "0"}], ")"}]}], TraditionalForm]]],
 ".  Our potential, for a uniform distribution, will be proportional to\n\n",
 StyleBox["\[Phi](r) = \[Integral] ",
  FontSize->36],
 Cell[BoxData[
  FormBox[
   StyleBox[
    FractionBox[
     RowBox[{" ", 
      StyleBox[
       RowBox[{
        TagBox[
         RowBox[{"\[DifferentialD]", "V"}],
         HoldForm], "'"}],
       StripOnInput->False,
       FontFamily->"Arial Black"]}], 
     TemplateBox[{RowBox[{
         StyleBox[
          TagBox["r", HoldForm], StripOnInput -> False, FontFamily -> 
          "Arial Black"], "-", 
         SuperscriptBox[
          StyleBox[
           TagBox["r", HoldForm], StripOnInput -> False, FontFamily -> 
           "Arial Black"], "\[Prime]", MultilineFunction -> None]}]},
      "Abs"]],
    FontSize->24], TraditionalForm]],
  EmphasizeSyntaxErrors->True,
  FontSize->36],
 StyleBox["= ",
  FontSize->36],
 Cell[BoxData[
  FormBox[
   TagBox[
    RowBox[{
     SubsuperscriptBox["\[Integral]", "0", "R"], 
     RowBox[{
      RowBox[{"r", "'"}], " ", 
      RowBox[{"\[DifferentialD]", 
       SuperscriptBox["r", "\[Prime]",
        MultilineFunction->None]}], 
      RowBox[{
       SubsuperscriptBox["\[Integral]", "0", 
        RowBox[{"2", " ", "\[Pi]"}]], 
       RowBox[{
        RowBox[{"\[DifferentialD]", 
         SuperscriptBox["\[Theta]", "\[Prime]",
          MultilineFunction->None]}], 
        RowBox[{
         SubsuperscriptBox["\[Integral]", 
          RowBox[{"-", "L"}], "L"], 
         FractionBox[
          RowBox[{"\[DifferentialD]", 
           RowBox[{"z", "'"}], " "}], 
          SqrtBox[
           RowBox[{
            SuperscriptBox[
             RowBox[{"(", 
              RowBox[{"z", "'"}], ")"}], "2"], "+", 
            FormBox[
             SuperscriptBox[
              TemplateBox[{RowBox[{"r", "-", 
                  RowBox[{
                    SuperscriptBox["\[ExponentialE]", 
                    RowBox[{"\[ImaginaryI]", " ", "\[Theta]"}]], " ", 
                    SuperscriptBox[
                    "r", "\[Prime]", MultilineFunction -> None]}]}]},
               "Abs"], "2"],
             TraditionalForm]}]]]}]}]}]}]}],
    HoldForm], TraditionalForm]],
  FontSize->36],
 "\nWith\n\n",
 Cell[BoxData[
  FormBox[
   TagBox[
    TagBox[
     RowBox[{
      TagBox[
       RowBox[{
        SubsuperscriptBox["\[Integral]", 
         RowBox[{"-", "L"}], "L"], 
        RowBox[{
         FractionBox["1", 
          SqrtBox[
           RowBox[{
            SuperscriptBox["z", "2"], "+", 
            SuperscriptBox["u", "2"]}]]], 
         RowBox[{"\[DifferentialD]", "z"}]}]}],
       HoldForm], "=", 
      RowBox[{"log", "(", 
       FractionBox[
        RowBox[{"L", "+", 
         SqrtBox[
          RowBox[{
           SuperscriptBox["L", "2"], "+", 
           SuperscriptBox["u", "2"]}]]}], 
        RowBox[{
         RowBox[{"-", "L"}], "+", 
         SqrtBox[
          RowBox[{
           SuperscriptBox["L", "2"], "+", 
           SuperscriptBox["u", "2"]}]]}]], ")"}]}],
     HoldForm],
    HoldForm], TraditionalForm]],
  FontSize->24],
 "\n\nThis is found to be\n\n",
 Cell[BoxData[
  RowBox[{
   RowBox[{"\[Phi]", 
    RowBox[{"(", "r", ")"}]}], "=", " ", 
   RowBox[{
    SubsuperscriptBox["\[Integral]", "0", "R"], 
    RowBox[{
     RowBox[{"r", "'"}], " ", 
     RowBox[{"\[DifferentialD]", 
      SuperscriptBox["r", "\[Prime]",
       MultilineFunction->None]}], 
     RowBox[{
      SubsuperscriptBox["\[Integral]", "0", 
       RowBox[{"2", " ", "\[Pi]"}]], 
      RowBox[{"\[DifferentialD]", 
       SuperscriptBox["\[Theta]", "\[Prime]",
        MultilineFunction->None]}]}]}]}]}]],
  FontSize->36],
 StyleBox[" ",
  FontSize->36],
 Cell[BoxData[
  TagBox[
   TagBox[
    RowBox[{"log", 
     RowBox[{"(", 
      FractionBox[
       RowBox[{"L", "+", 
        SqrtBox[
         RowBox[{
          SuperscriptBox["L", "2"], "+", 
          SuperscriptBox[
           TemplateBox[{RowBox[{"r", "-", 
               RowBox[{
                 SuperscriptBox["r", "\[Prime]", MultilineFunction -> None], 
                 " ", 
                 SuperscriptBox["\[ExponentialE]", 
                  RowBox[{" ", 
                    RowBox[{"\[ImaginaryI]", " ", "\[Theta]"}]}]]}]}]},
            "Abs"], "2"]}]]}], 
       RowBox[{
        RowBox[{"-", "L"}], "+", 
        SqrtBox[
         RowBox[{
          SuperscriptBox["L", "2"], "+", 
          SuperscriptBox[
           TemplateBox[{RowBox[{"r", "-", 
               RowBox[{
                 SuperscriptBox["r", "\[Prime]", MultilineFunction -> None], 
                 " ", 
                 SuperscriptBox["\[ExponentialE]", 
                  RowBox[{" ", 
                    RowBox[{"\[ImaginaryI]", " ", "\[Theta]"}]}]]}]}]},
            "Abs"], "2"]}]]}]], ")"}]}],
    HoldForm],
   HoldForm]],
  CellChangeTimes->{3.5393806496636896`*^9, 3.5393807014136496`*^9},
  FontSize->36],
 "\n\nIt is clear that we can\[CloseCurlyQuote]t evaluate this limit for ",
 Cell[BoxData[
  FormBox[
   RowBox[{"L", " ", "\[Rule]", " ", "\[Infinity]"}], TraditionalForm]]],
 " since that gives us ",
 Cell[BoxData[
  FormBox[
   RowBox[{"\[Infinity]", "/", "0"}], TraditionalForm]]],
 " in the logarithm.  According to FIXME, this can be evaluated.  Attempting \
to do so with ",
 StyleBox["Mathematica",
  FontSlant->"Italic"],
 " fails, since evaluation of both\n\n",
 Cell[BoxData[
  FormBox[
   TagBox[
    RowBox[{
     SubsuperscriptBox["\[Integral]", "0", "R"], 
     RowBox[{
      RowBox[{"r", " ", 
       RowBox[{"log", "(", 
        RowBox[{"a", "+", 
         SqrtBox[
          RowBox[{
           SuperscriptBox["a", "2"], "+", 
           SuperscriptBox["r", "2"], "+", 
           SuperscriptBox["b", "2"], "-", 
           RowBox[{"2", " ", "r", " ", "b", " ", 
            RowBox[{"cos", "(", "\[Theta]", ")"}]}]}]]}], ")"}]}], 
      RowBox[{"\[DifferentialD]", "r"}]}]}],
    HoldForm], TraditionalForm]], "Input",
  CellChangeTimes->{{3.539382713913758*^9, 3.5393827190620527`*^9}}],
 "\n\nand\n\n",
 Cell[BoxData[
  FormBox[
   TagBox[
    RowBox[{
     SubsuperscriptBox["\[Integral]", "0", 
      RowBox[{"2", " ", "\[Pi]"}]], 
     RowBox[{
      RowBox[{"log", "(", 
       RowBox[{"a", "+", 
        SqrtBox[
         RowBox[{
          SuperscriptBox["a", "2"], "+", 
          SuperscriptBox["r", "2"], "+", 
          SuperscriptBox["b", "2"], "-", 
          RowBox[{"2", " ", "r", " ", "b", " ", 
           RowBox[{"cos", "(", "\[Theta]", ")"}]}]}]]}], ")"}], 
      RowBox[{"\[DifferentialD]", "\[Theta]"}]}]}],
    HoldForm], TraditionalForm]]],
 "\n\neither time out, or take long enough that I aborted the attempt to let \
them evaluate.\n"
}], "Text",
 CellChangeTimes->CompressedData["
1:eJxTTMoPSmViYGAQBWIQ/c3k4a4rca8cFZabHQPRm84rXALRwTcWPQLRb0sZ
PoNoPpc3/0F0d9wKqatAesG+bYogeve2s+ogWkE2UgNE7/x02RlERyTc9gHR
H0rjEkG0ki1/Eoh+cWL9OhDtVzR/PYi2O7/xNIg+82HRORBtsM7tJoi+rp7z
BESbrj4ocA1In+AvlwDRsst/a4HotQfVdEH0Rdt2VxC9qsTaE0Sv6HfYB6Jn
rAkC0+ablh4G0UZN646B6GN6896C6Dpb8U8gerJAXuF1IL1uXXw1iFbacq0J
RJ/ZtKoFRHuH7l0Dou9dMN4AotUV1LaD1TU82wWiVzz9+g9Eh5VP+Q+iAb8Q
vys=
  "]],

Cell[CellGroupData[{

Cell["\<\
Is it productive to attempt the integration in other orders?\
\>", "Subsection",
 CellChangeTimes->{{3.539386378377353*^9, 3.539386398392498*^9}}],

Cell[TextData[{
 "\nWe can also attempt to evaluate this by integrating in different orders.  \
We can for example do the",
 Cell[BoxData[
  FormBox[
   RowBox[{" ", 
    RowBox[{"r", "'"}]}], TraditionalForm]]],
 " coordinate integral first\n\n",
 Cell[BoxData[
  FormBox[
   TagBox[
    RowBox[{
     SubsuperscriptBox["\[Integral]", "0", "R"], 
     RowBox[{
      FractionBox["r", 
       SqrtBox[
        RowBox[{
         SuperscriptBox["a", "2"], "+", 
         SuperscriptBox["r", "2"], "-", 
         RowBox[{"2", " ", "r", " ", "b", " ", 
          RowBox[{"cos", "(", "\[Theta]", ")"}]}], "+", 
         SuperscriptBox["b", "2"]}]]], 
      RowBox[{"\[DifferentialD]", "r"}]}]}],
    HoldForm], TraditionalForm]],
  CellChangeTimes->{{3.539383984972458*^9, 3.5393840377644777`*^9}}],
 " = ",
 Cell[BoxData[
  FormBox[
   RowBox[{
    SqrtBox[
     RowBox[{
      SuperscriptBox["a", "2"], "+", 
      SuperscriptBox["b", "2"], "-", 
      RowBox[{"2", " ", "b", " ", "R", " ", 
       RowBox[{"cos", "(", "\[Theta]", ")"}]}], "+", 
      SuperscriptBox["R", "2"]}]], " ", "-", 
    SqrtBox[
     RowBox[{
      SuperscriptBox["a", "2"], "+", 
      SuperscriptBox["b", "2"]}]], "+", 
    RowBox[{"b", " ", 
     RowBox[{"cos", "(", "\[Theta]", ")"}], " ", 
     FormBox[
      RowBox[{"log", "(", 
       FractionBox[
        RowBox[{
         SqrtBox[
          RowBox[{
           SuperscriptBox["a", "2"], "+", 
           SuperscriptBox["b", "2"], "-", 
           RowBox[{"2", " ", "b", " ", "R", " ", 
            RowBox[{"cos", "(", "\[Theta]", ")"}]}], "+", 
           SuperscriptBox["R", "2"]}]], "-", 
         RowBox[{"b", " ", 
          RowBox[{"cos", "(", "\[Theta]", ")"}]}], "+", "R"}], 
        RowBox[{
         SqrtBox[
          RowBox[{
           SuperscriptBox["a", "2"], "+", 
           SuperscriptBox["b", "2"]}]], "-", 
         RowBox[{"b", " ", 
          RowBox[{"cos", "(", "\[Theta]", ")"}]}]}]], ")"}],
      TraditionalForm]}]}], TraditionalForm]],
  CellChangeTimes->{{3.539383984972458*^9, 3.539384017139298*^9}, 
    3.539384236996873*^9}],
 "\n\n(although this returns a number of hard to comprehend \
ConditionalExpression terms).  If we try the angular integral first, we get\n\
\n",
 Cell[BoxData[
  FormBox[
   TagBox[
    RowBox[{
     SubsuperscriptBox["\[Integral]", "0", 
      RowBox[{"2", " ", "\[Pi]"}]], 
     RowBox[{
      FractionBox["1", 
       SqrtBox[
        RowBox[{
         SuperscriptBox["a", "2"], "+", 
         SuperscriptBox["r", "2"], "-", 
         RowBox[{"2", " ", "r", " ", "b", " ", 
          RowBox[{"cos", "(", "\[Theta]", ")"}]}], "+", 
         SuperscriptBox["b", "2"]}]]], 
      RowBox[{"\[DifferentialD]", "\[Theta]"}]}]}],
    HoldForm], TraditionalForm]],
  CellChangeTimes->{3.5393853526416845`*^9}],
 " = ",
 Cell[BoxData[
  FormBox[
   RowBox[{
    FractionBox[
     RowBox[{"2", " ", 
      TemplateBox[{RowBox[{"-", 
          FractionBox[
           RowBox[{"4", " ", "b", " ", "r"}], 
           RowBox[{
             SuperscriptBox["a", "2"], "+", 
             SuperscriptBox[
              RowBox[{"(", 
                RowBox[{"b", "-", "r"}], ")"}], "2"]}]]}]},
       "EllipticK"]}], 
     SqrtBox[
      RowBox[{
       SuperscriptBox["a", "2"], "+", 
       SuperscriptBox[
        RowBox[{"(", 
         RowBox[{"b", "-", "r"}], ")"}], "2"]}]]], "+", 
    FractionBox[
     RowBox[{"2", " ", 
      TemplateBox[{FractionBox[
         RowBox[{"4", " ", "b", " ", "r"}], 
         RowBox[{
           SuperscriptBox["a", "2"], "+", 
           SuperscriptBox[
            RowBox[{"(", 
              RowBox[{"b", "+", "r"}], ")"}], "2"]}]]},
       "EllipticK"]}], 
     SqrtBox[
      RowBox[{
       SuperscriptBox["a", "2"], "+", 
       SuperscriptBox[
        RowBox[{"(", 
         RowBox[{"b", "+", "r"}], ")"}], "2"]}]]]}], TraditionalForm]],
  CellChangeTimes->{3.5393855361141787`*^9, 3.539385685935748*^9}],
 "\n\nwhere ",
 Cell[BoxData[
  FormBox[
   RowBox[{"K", 
    RowBox[{"(", "m", ")"}], "=", "F", 
    RowBox[{"(", 
     RowBox[{
      FractionBox["\[Pi]", "2"], "\[VerticalSeparator]", "m"}], ")"}]}], 
   TraditionalForm]]],
 ", is the complete elliptic integral of the first kind.  Actually evaluating \
this integral, especially in the limiting case, probably requires stepping \
back and thinking a bit (or a lot) instead of blindly trying to evaluate."
}], "Text",
 CellChangeTimes->CompressedData["
1:eJxTTMoPSmViYGAQB2IQ/c3k4a4rca8cFZabHQPRm84rXALRwTcWPQLRb0sZ
PoNoPpc3/0F0d9wKqatAesG+bYogeve2s+ogWkE2UgNE7/x02RlERyTc9gHR
H0rjEkG0ki1/Eoh+cWL9OhDtVzR/PYi2O7/xNIg+82HRORBtsM7tJoi+rp7z
BESbrj4ocA1In+AvlwDRsst/a4HotQfVdEH0Rdt2VxC9qsTaE0Sv6HfYB6Jn
rAkC0+ablh4G0UZN646B6GN6896C6Dpb8U8gerJAXuF1IL1uXXw1iFbacq0J
RJ/ZtKoFRHuH7l0Dou9dMN4AotUV1LaD1TU82wWiVzz9+g9E/+GYxHUDSNu8
b7a/CaILVV1AtFG31QMQnTwZQgMAlRrO4A==
  "]]
}, Open  ]],

Cell[CellGroupData[{

Cell["\<\
scratch calculations for presentation.\
\>", "Section",
 CellChangeTimes->{{3.5393797805999823`*^9, 3.5393797874263725`*^9}}],

Cell[BoxData[{
 RowBox[{"Clear", "[", "vecR", "]"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{"Format", "[", 
   RowBox[{"boldVector", "[", "v_", "]"}], "]"}], ":=", 
  RowBox[{"Style", "[", 
   RowBox[{
    RowBox[{"HoldForm", "[", "v", "]"}], ",", 
    RowBox[{"FontFamily", "\[Rule]", "\"\<Arial Black\>\""}]}], 
   "]"}]}], "\[IndentingNewLine]", 
 RowBox[{"vecR", " ", "=", " ", 
  RowBox[{"boldVector", "[", "r", "]"}]}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{"Abs", "[", 
   RowBox[{"vecR", " ", "-", " ", 
    RowBox[{"vecR", "'"}]}], "]"}], "//", " ", "TraditionalForm"}]}], "Input",
 CellChangeTimes->{{3.539379817862113*^9, 3.5393798469637775`*^9}}],

Cell[BoxData[
 RowBox[{
  RowBox[{"boldVector", "[", "V", "]"}], "\[IndentingNewLine]"}]], "Input",
 CellChangeTimes->{{3.539379996087307*^9, 3.5393800787960377`*^9}}],

Cell[BoxData["Integrate"], "Input",
 CellChangeTimes->{{3.5393801071886616`*^9, 3.539380107208663*^9}, {
  3.5393802319417973`*^9, 3.539380232918853*^9}}],

Cell[BoxData[
 StyleBox[
  RowBox[{
   RowBox[{
    TagBox[
     RowBox[{"Dt", "[", "V"}],
     HoldForm], "]"}], " "}],
  StripOnInput->False,
  FontFamily->"Arial Black"]], "Input",
 CellChangeTimes->{{3.53938008198422*^9, 3.539380095321983*^9}},
 EmphasizeSyntaxErrors->True],

Cell[BoxData[
 RowBox[{
  StyleBox[
   RowBox[{"Syntax", "::", "sntxi"}], "MessageName"], 
  RowBox[{
  ":", " "}], "\<\"Incomplete expression; more input is needed \
\[NoBreak]\\!\\(\\\"\\\"\\)\[NoBreak].\"\>"}]], "Message", "MSG",
 CellChangeTimes->{3.5393800993562136`*^9}],

Cell[BoxData[
 FormBox[
  RowBox[{
   RowBox[{
    TagBox["\[DifferentialD]",
     Dt], 
    SuperscriptBox[
     FormBox[
      StyleBox[
       TagBox["V",
        HoldForm],
       StripOnInput->False,
       FontFamily->"Arial Black"],
      TraditionalForm], "\[Prime]\[Prime]",
     MultilineFunction->None]}], " ", 
   RowBox[{
    SuperscriptBox["boldVector", "\[Prime]",
     MultilineFunction->None], "(", "V", ")"}]}], TraditionalForm]], "Input",
 CellChangeTimes->{{3.5393800326784*^9, 3.53938003739667*^9}}],

Cell[BoxData[
 FormBox[
  RowBox[{
   RowBox[{"1", "/", 
    TemplateBox[{RowBox[{
        FormBox[
         StyleBox[
          TagBox["r", HoldForm], StripOnInput -> False, FontFamily -> 
          "Arial Black"], TraditionalForm], "-", 
        SuperscriptBox[
         FormBox[
          StyleBox[
           TagBox["r", HoldForm], StripOnInput -> False, FontFamily -> 
           "Arial Black"], TraditionalForm], "\[Prime]", MultilineFunction -> 
         None]}]},
     "Abs"]}], " ", "//", " ", "TraditionalForm"}], TraditionalForm]], "Input",
 CellChangeTimes->{{3.5393799342057676`*^9, 3.5393799419192085`*^9}}],

Cell[BoxData[
 FormBox["", TraditionalForm]], "Input",
 CellChangeTimes->{{3.5393799463164606`*^9, 3.5393799463514624`*^9}}],

Cell[BoxData[
 RowBox[{"HoldForm", "[", 
  RowBox[{"Integrate", "[", " ", 
   RowBox[{
    RowBox[{
     RowBox[{"r", "'"}], " ", "/", " ", 
     RowBox[{"Sqrt", "[", 
      RowBox[{
       RowBox[{"z", "^", "2"}], " ", "+", " ", 
       RowBox[{"r", "^", "2"}], "  ", "-", " ", 
       RowBox[{"2", " ", "r", " ", 
        RowBox[{"r", "'"}], " ", 
        RowBox[{"Cos", "[", "\[Theta]", "]"}]}], " ", "+", " ", 
       RowBox[{
        RowBox[{"(", 
         RowBox[{"r", "'"}], ")"}], "^", "2"}]}], "]"}]}], ",", " ", 
    RowBox[{"{", 
     RowBox[{
      RowBox[{"r", "'"}], ",", " ", "0", ",", " ", "R"}], "}"}], ",", " ", 
    RowBox[{"{", 
     RowBox[{
      RowBox[{"\[Theta]", "'"}], ",", " ", "0", ",", " ", 
      RowBox[{"2", " ", "Pi"}]}], "}"}], ",", " ", 
    RowBox[{"{", 
     RowBox[{"z", ",", " ", 
      RowBox[{"-", "L"}], ",", " ", "L"}], "}"}]}], "]"}], "]"}]], "Input",
 CellChangeTimes->{{3.5393802364130526`*^9, 3.539380243619465*^9}, {
  3.5393802850638356`*^9, 3.5393803881097293`*^9}, {3.539380514200941*^9, 
  3.539380515889038*^9}, {3.5393811138002367`*^9, 3.539381136166516*^9}}],

Cell[BoxData[
 RowBox[{
  TagBox[
   RowBox[{
    SubsuperscriptBox["\[Integral]", "0", "R"], 
    RowBox[{
     SubsuperscriptBox["\[Integral]", "0", 
      RowBox[{"2", " ", "\[Pi]"}]], 
     RowBox[{
      SubsuperscriptBox["\[Integral]", 
       RowBox[{"-", "L"}], "L"], 
      RowBox[{
       FractionBox[
        SuperscriptBox["r", "\[Prime]",
         MultilineFunction->None], 
        SqrtBox[
         RowBox[{
          SuperscriptBox["z", "2"], "+", 
          SuperscriptBox[
           RowBox[{"Abs", "[", 
            RowBox[{"r", "-", 
             RowBox[{
              SuperscriptBox["r", "\[Prime]",
               MultilineFunction->None], " ", 
              SuperscriptBox["\[ExponentialE]", 
               RowBox[{"i", " ", "\[Theta]"}]]}]}], "]"}], "2"]}]]], 
       RowBox[{"\[DifferentialD]", "z"}], 
       RowBox[{"\[DifferentialD]", 
        SuperscriptBox["\[Theta]", "\[Prime]",
         MultilineFunction->None]}], 
       RowBox[{"\[DifferentialD]", 
        SuperscriptBox["r", "\[Prime]",
         MultilineFunction->None]}]}]}]}]}],
   HoldForm], " ", "//", " ", "TraditionalForm"}]], "Input",
 CellChangeTimes->{{3.539380392807998*^9, 3.539380397880288*^9}}],

Cell[BoxData[
 FormBox["", TraditionalForm]], "Input",
 CellChangeTimes->{{3.5393804115770717`*^9, 3.539380434910406*^9}}],

Cell[CellGroupData[{

Cell[BoxData[{
 RowBox[{"Clear", "[", "ii", "]"}], "\[IndentingNewLine]", 
 RowBox[{"ii", " ", "=", " ", 
  RowBox[{"Integrate", "[", " ", 
   RowBox[{
    RowBox[{
     RowBox[{"r", "'"}], " ", "/", " ", 
     RowBox[{"Sqrt", "[", 
      RowBox[{
       RowBox[{"z", "^", "2"}], " ", "+", " ", 
       RowBox[{
        RowBox[{"Abs", "[", 
         RowBox[{"r", " ", "-", " ", 
          RowBox[{
           RowBox[{"r", "'"}], " ", 
           RowBox[{"E", "^", 
            RowBox[{"(", 
             RowBox[{"i", " ", "\[Theta]"}], ")"}]}]}]}], "]"}], "^", "2"}]}],
       "]"}]}], ",", "  ", 
    RowBox[{"{", 
     RowBox[{"z", ",", " ", 
      RowBox[{"-", "L"}], ",", " ", "L"}], "}"}]}], "]"}]}]}], "Input",
 CellChangeTimes->{{3.5393805295058165`*^9, 3.5393805366142235`*^9}, {
  3.539380576530506*^9, 3.539380582852868*^9}}],

Cell[BoxData[
 RowBox[{"ConditionalExpression", "[", 
  RowBox[{
   RowBox[{
    RowBox[{"(", 
     RowBox[{
      RowBox[{"-", 
       RowBox[{"Log", "[", 
        RowBox[{
         RowBox[{"-", "L"}], "+", 
         RowBox[{"\[Sqrt]", 
          RowBox[{"(", 
           RowBox[{
            SuperscriptBox["L", "2"], "+", 
            SuperscriptBox[
             RowBox[{"Im", "[", "r", "]"}], "2"], "-", 
            RowBox[{"2", " ", 
             SuperscriptBox["\[ExponentialE]", 
              RowBox[{"i", " ", "\[Theta]"}]], " ", 
             RowBox[{"Im", "[", "r", "]"}], " ", 
             RowBox[{"Im", "[", 
              SuperscriptBox["r", "\[Prime]",
               MultilineFunction->None], "]"}]}], "+", 
            RowBox[{
             SuperscriptBox["\[ExponentialE]", 
              RowBox[{"2", " ", "i", " ", "\[Theta]"}]], " ", 
             SuperscriptBox[
              RowBox[{"Im", "[", 
               SuperscriptBox["r", "\[Prime]",
                MultilineFunction->None], "]"}], "2"]}], "+", 
            SuperscriptBox[
             RowBox[{"Re", "[", "r", "]"}], "2"], "-", 
            RowBox[{"2", " ", 
             SuperscriptBox["\[ExponentialE]", 
              RowBox[{"i", " ", "\[Theta]"}]], " ", 
             RowBox[{"Re", "[", "r", "]"}], " ", 
             RowBox[{"Re", "[", 
              SuperscriptBox["r", "\[Prime]",
               MultilineFunction->None], "]"}]}], "+", 
            RowBox[{
             SuperscriptBox["\[ExponentialE]", 
              RowBox[{"2", " ", "i", " ", "\[Theta]"}]], " ", 
             SuperscriptBox[
              RowBox[{"Re", "[", 
               SuperscriptBox["r", "\[Prime]",
                MultilineFunction->None], "]"}], "2"]}]}], ")"}]}]}], "]"}]}],
       "+", 
      RowBox[{"Log", "[", 
       RowBox[{"L", "+", 
        RowBox[{"\[Sqrt]", 
         RowBox[{"(", 
          RowBox[{
           SuperscriptBox["L", "2"], "+", 
           SuperscriptBox[
            RowBox[{"Im", "[", "r", "]"}], "2"], "-", 
           RowBox[{"2", " ", 
            SuperscriptBox["\[ExponentialE]", 
             RowBox[{"i", " ", "\[Theta]"}]], " ", 
            RowBox[{"Im", "[", "r", "]"}], " ", 
            RowBox[{"Im", "[", 
             SuperscriptBox["r", "\[Prime]",
              MultilineFunction->None], "]"}]}], "+", 
           RowBox[{
            SuperscriptBox["\[ExponentialE]", 
             RowBox[{"2", " ", "i", " ", "\[Theta]"}]], " ", 
            SuperscriptBox[
             RowBox[{"Im", "[", 
              SuperscriptBox["r", "\[Prime]",
               MultilineFunction->None], "]"}], "2"]}], "+", 
           SuperscriptBox[
            RowBox[{"Re", "[", "r", "]"}], "2"], "-", 
           RowBox[{"2", " ", 
            SuperscriptBox["\[ExponentialE]", 
             RowBox[{"i", " ", "\[Theta]"}]], " ", 
            RowBox[{"Re", "[", "r", "]"}], " ", 
            RowBox[{"Re", "[", 
             SuperscriptBox["r", "\[Prime]",
              MultilineFunction->None], "]"}]}], "+", 
           RowBox[{
            SuperscriptBox["\[ExponentialE]", 
             RowBox[{"2", " ", "i", " ", "\[Theta]"}]], " ", 
            SuperscriptBox[
             RowBox[{"Re", "[", 
              SuperscriptBox["r", "\[Prime]",
               MultilineFunction->None], "]"}], "2"]}]}], ")"}]}]}], "]"}]}], 
     ")"}], " ", 
    SuperscriptBox["r", "\[Prime]",
     MultilineFunction->None]}], ",", 
   RowBox[{
    RowBox[{
     RowBox[{
      RowBox[{"Abs", "[", 
       RowBox[{"r", "-", 
        RowBox[{
         SuperscriptBox["\[ExponentialE]", 
          RowBox[{"i", " ", "\[Theta]"}]], " ", 
         SuperscriptBox["r", "\[Prime]",
          MultilineFunction->None]}]}], "]"}], " ", 
      RowBox[{"Re", "[", 
       FractionBox["1", "L"], "]"}]}], "\[NotEqual]", "0"}], "||", 
    RowBox[{
     RowBox[{
      RowBox[{"Abs", "[", 
       RowBox[{"r", "-", 
        RowBox[{
         SuperscriptBox["\[ExponentialE]", 
          RowBox[{"i", " ", "\[Theta]"}]], " ", 
         SuperscriptBox["r", "\[Prime]",
          MultilineFunction->None]}]}], "]"}], " ", 
      RowBox[{"Im", "[", 
       FractionBox["1", "L"], "]"}]}], "\[GreaterEqual]", "1"}], "||", 
    RowBox[{
     RowBox[{
      RowBox[{"Abs", "[", 
       RowBox[{"r", "-", 
        RowBox[{
         SuperscriptBox["\[ExponentialE]", 
          RowBox[{"i", " ", "\[Theta]"}]], " ", 
         SuperscriptBox["r", "\[Prime]",
          MultilineFunction->None]}]}], "]"}], " ", 
      RowBox[{"Im", "[", 
       FractionBox["1", "L"], "]"}]}], "\[LessEqual]", 
     RowBox[{"-", "1"}]}]}]}], "]"}]], "Output",
 CellChangeTimes->{3.5393805711802006`*^9}]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[{
 RowBox[{"jj", " ", "=", " ", "%"}], "\[IndentingNewLine]", 
 RowBox[{"FullSimplify", "[", 
  RowBox[{"jj", ",", " ", 
   RowBox[{
    RowBox[{"r", " ", ">", " ", 
     RowBox[{"r", "'"}]}], " ", "&&", " ", 
    RowBox[{
     RowBox[{"r", "'"}], " ", ">", " ", "0"}], " ", "&&", " ", 
    RowBox[{"r", " ", ">", " ", "0"}], " ", "&&", " ", 
    RowBox[{"Element", "[", 
     RowBox[{
      RowBox[{"r", " ", "|", " ", 
       RowBox[{"r", "'"}]}], ",", " ", "Reals"}], "]"}], " ", "&&", " ", 
    RowBox[{
     RowBox[{"Abs", "[", 
      RowBox[{"r", "-", 
       RowBox[{
        SuperscriptBox["\[ExponentialE]", 
         RowBox[{"i", " ", "\[Theta]"}]], " ", 
        SuperscriptBox["r", "\[Prime]",
         MultilineFunction->None]}]}], "]"}], " ", ">", " ", "0"}]}]}], 
  "]"}]}], "Input",
 CellChangeTimes->{{3.5393805071835403`*^9, 3.5393805079265823`*^9}, {
  3.5393805855930247`*^9, 3.5393806489636497`*^9}, {3.5393806866948075`*^9, 
  3.5393806894949675`*^9}}],

Cell[BoxData[
 RowBox[{"ConditionalExpression", "[", 
  RowBox[{
   RowBox[{
    RowBox[{"(", 
     RowBox[{
      RowBox[{"-", 
       RowBox[{"Log", "[", 
        RowBox[{
         RowBox[{"-", "L"}], "+", 
         SqrtBox[
          RowBox[{
           SuperscriptBox["L", "2"], "+", 
           SuperscriptBox["r", "2"], "+", 
           RowBox[{
            SuperscriptBox["\[ExponentialE]", 
             RowBox[{"i", " ", "\[Theta]"}]], " ", 
            SuperscriptBox["r", "\[Prime]",
             MultilineFunction->None], " ", 
            RowBox[{"(", 
             RowBox[{
              RowBox[{
               RowBox[{"-", "2"}], " ", "r"}], "+", 
              RowBox[{
               SuperscriptBox["\[ExponentialE]", 
                RowBox[{"i", " ", "\[Theta]"}]], " ", 
               SuperscriptBox["r", "\[Prime]",
                MultilineFunction->None]}]}], ")"}]}]}]]}], "]"}]}], "+", 
      RowBox[{"Log", "[", 
       RowBox[{"L", "+", 
        SqrtBox[
         RowBox[{
          SuperscriptBox["L", "2"], "+", 
          SuperscriptBox["r", "2"], "+", 
          RowBox[{
           SuperscriptBox["\[ExponentialE]", 
            RowBox[{"i", " ", "\[Theta]"}]], " ", 
           SuperscriptBox["r", "\[Prime]",
            MultilineFunction->None], " ", 
           RowBox[{"(", 
            RowBox[{
             RowBox[{
              RowBox[{"-", "2"}], " ", "r"}], "+", 
             RowBox[{
              SuperscriptBox["\[ExponentialE]", 
               RowBox[{"i", " ", "\[Theta]"}]], " ", 
              SuperscriptBox["r", "\[Prime]",
               MultilineFunction->None]}]}], ")"}]}]}]]}], "]"}]}], ")"}], 
    " ", 
    SuperscriptBox["r", "\[Prime]",
     MultilineFunction->None]}], ",", 
   RowBox[{
    RowBox[{
     RowBox[{
      RowBox[{"Abs", "[", 
       RowBox[{"r", "-", 
        RowBox[{
         SuperscriptBox["\[ExponentialE]", 
          RowBox[{"i", " ", "\[Theta]"}]], " ", 
         SuperscriptBox["r", "\[Prime]",
          MultilineFunction->None]}]}], "]"}], " ", 
      RowBox[{"Re", "[", 
       FractionBox["1", "L"], "]"}]}], "\[NotEqual]", "0"}], "||", 
    RowBox[{
     RowBox[{
      RowBox[{"Abs", "[", 
       RowBox[{"r", "-", 
        RowBox[{
         SuperscriptBox["\[ExponentialE]", 
          RowBox[{"i", " ", "\[Theta]"}]], " ", 
         SuperscriptBox["r", "\[Prime]",
          MultilineFunction->None]}]}], "]"}], " ", 
      RowBox[{"Im", "[", 
       FractionBox["1", "L"], "]"}]}], "\[GreaterEqual]", "1"}], "||", 
    RowBox[{
     RowBox[{
      RowBox[{"Abs", "[", 
       RowBox[{"r", "-", 
        RowBox[{
         SuperscriptBox["\[ExponentialE]", 
          RowBox[{"i", " ", "\[Theta]"}]], " ", 
         SuperscriptBox["r", "\[Prime]",
          MultilineFunction->None]}]}], "]"}], " ", 
      RowBox[{"Im", "[", 
       FractionBox["1", "L"], "]"}]}], "\[LessEqual]", 
     RowBox[{"-", "1"}]}]}]}], "]"}]], "Output",
 CellChangeTimes->{3.5393806496636896`*^9, 3.5393806975514283`*^9}],

Cell[BoxData[
 RowBox[{"ConditionalExpression", "[", 
  RowBox[{
   RowBox[{
    RowBox[{"(", 
     RowBox[{
      RowBox[{"-", 
       RowBox[{"Log", "[", 
        RowBox[{
         RowBox[{"-", "L"}], "+", 
         SqrtBox[
          RowBox[{
           SuperscriptBox["L", "2"], "+", 
           SuperscriptBox["r", "2"], "+", 
           RowBox[{
            SuperscriptBox["\[ExponentialE]", 
             RowBox[{"i", " ", "\[Theta]"}]], " ", 
            SuperscriptBox["r", "\[Prime]",
             MultilineFunction->None], " ", 
            RowBox[{"(", 
             RowBox[{
              RowBox[{
               RowBox[{"-", "2"}], " ", "r"}], "+", 
              RowBox[{
               SuperscriptBox["\[ExponentialE]", 
                RowBox[{"i", " ", "\[Theta]"}]], " ", 
               SuperscriptBox["r", "\[Prime]",
                MultilineFunction->None]}]}], ")"}]}]}]]}], "]"}]}], "+", 
      RowBox[{"Log", "[", 
       RowBox[{"L", "+", 
        SqrtBox[
         RowBox[{
          SuperscriptBox["L", "2"], "+", 
          SuperscriptBox["r", "2"], "+", 
          RowBox[{
           SuperscriptBox["\[ExponentialE]", 
            RowBox[{"i", " ", "\[Theta]"}]], " ", 
           SuperscriptBox["r", "\[Prime]",
            MultilineFunction->None], " ", 
           RowBox[{"(", 
            RowBox[{
             RowBox[{
              RowBox[{"-", "2"}], " ", "r"}], "+", 
             RowBox[{
              SuperscriptBox["\[ExponentialE]", 
               RowBox[{"i", " ", "\[Theta]"}]], " ", 
              SuperscriptBox["r", "\[Prime]",
               MultilineFunction->None]}]}], ")"}]}]}]]}], "]"}]}], ")"}], 
    " ", 
    SuperscriptBox["r", "\[Prime]",
     MultilineFunction->None]}], ",", 
   RowBox[{
    RowBox[{
     RowBox[{"Re", "[", 
      FractionBox["1", "L"], "]"}], "\[NotEqual]", "0"}], "||", 
    RowBox[{
     RowBox[{
      RowBox[{"Abs", "[", 
       RowBox[{"r", "-", 
        RowBox[{
         SuperscriptBox["\[ExponentialE]", 
          RowBox[{"i", " ", "\[Theta]"}]], " ", 
         SuperscriptBox["r", "\[Prime]",
          MultilineFunction->None]}]}], "]"}], " ", 
      RowBox[{"Im", "[", 
       FractionBox["1", "L"], "]"}]}], "\[GreaterEqual]", "1"}], "||", 
    RowBox[{
     RowBox[{
      RowBox[{"Abs", "[", 
       RowBox[{"r", "-", 
        RowBox[{
         SuperscriptBox["\[ExponentialE]", 
          RowBox[{"i", " ", "\[Theta]"}]], " ", 
         SuperscriptBox["r", "\[Prime]",
          MultilineFunction->None]}]}], "]"}], " ", 
      RowBox[{"Im", "[", 
       FractionBox["1", "L"], "]"}]}], "\[LessEqual]", 
     RowBox[{"-", "1"}]}]}]}], "]"}]], "Output",
 CellChangeTimes->{3.5393806496636896`*^9, 3.5393807014136496`*^9}]
}, Open  ]],

Cell[BoxData[{
 RowBox[{"jj", " ", "=", " ", 
  RowBox[{"(", 
   RowBox[{
    RowBox[{"-", 
     RowBox[{"Log", "[", 
      RowBox[{
       RowBox[{"-", "L"}], "+", 
       SqrtBox[
        RowBox[{
         SuperscriptBox["L", "2"], "+", 
         SuperscriptBox["r", "2"], "+", 
         RowBox[{
          SuperscriptBox["\[ExponentialE]", 
           RowBox[{"i", " ", "\[Theta]"}]], " ", 
          SuperscriptBox["r", "\[Prime]",
           MultilineFunction->None], " ", 
          RowBox[{"(", 
           RowBox[{
            RowBox[{
             RowBox[{"-", "2"}], " ", "r"}], "+", 
            RowBox[{
             SuperscriptBox["\[ExponentialE]", 
              RowBox[{"i", " ", "\[Theta]"}]], " ", 
             SuperscriptBox["r", "\[Prime]",
              MultilineFunction->None]}]}], ")"}]}]}]]}], "]"}]}], "+", 
    RowBox[{"Log", "[", 
     RowBox[{"L", "+", 
      SqrtBox[
       RowBox[{
        SuperscriptBox["L", "2"], "+", 
        SuperscriptBox["r", "2"], "+", 
        RowBox[{
         SuperscriptBox["\[ExponentialE]", 
          RowBox[{"i", " ", "\[Theta]"}]], " ", 
         SuperscriptBox["r", "\[Prime]",
          MultilineFunction->None], " ", 
         RowBox[{"(", 
          RowBox[{
           RowBox[{
            RowBox[{"-", "2"}], " ", "r"}], "+", 
           RowBox[{
            SuperscriptBox["\[ExponentialE]", 
             RowBox[{"i", " ", "\[Theta]"}]], " ", 
            SuperscriptBox["r", "\[Prime]",
             MultilineFunction->None]}]}], ")"}]}]}]]}], "]"}]}], 
   ")"}]}], "\[IndentingNewLine]", 
 RowBox[{"FullSimplify", "[", "jj", "]"}]}], "Input",
 CellChangeTimes->{{3.539380881700961*^9, 3.539380890979492*^9}}],

Cell[BoxData[
 RowBox[{"Log", "[", 
  RowBox[{
   RowBox[{"(", 
    RowBox[{"L", "+", 
     SqrtBox[
      RowBox[{
       SuperscriptBox["L", "2"], "+", 
       SuperscriptBox["r", "2"], "+", 
       RowBox[{
        SuperscriptBox["\[ExponentialE]", 
         RowBox[{"i", " ", "\[Theta]"}]], " ", 
        SuperscriptBox["r", "\[Prime]",
         MultilineFunction->None], " ", 
        RowBox[{"(", 
         RowBox[{
          RowBox[{
           RowBox[{"-", "2"}], " ", "r"}], "+", 
          RowBox[{
           SuperscriptBox["\[ExponentialE]", 
            RowBox[{"i", " ", "\[Theta]"}]], " ", 
           SuperscriptBox["r", "\[Prime]",
            MultilineFunction->None]}]}], ")"}]}]}]]}], ")"}], "/", 
   RowBox[{"(", 
    RowBox[{
     RowBox[{"-", "L"}], "+", 
     SqrtBox[
      RowBox[{
       SuperscriptBox["L", "2"], "+", 
       SuperscriptBox["r", "2"], "+", 
       RowBox[{
        SuperscriptBox["\[ExponentialE]", 
         RowBox[{"i", " ", "\[Theta]"}]], " ", 
        SuperscriptBox["r", "\[Prime]",
         MultilineFunction->None], " ", 
        RowBox[{"(", 
         RowBox[{
          RowBox[{
           RowBox[{"-", "2"}], " ", "r"}], "+", 
          RowBox[{
           SuperscriptBox["\[ExponentialE]", 
            RowBox[{"i", " ", "\[Theta]"}]], " ", 
           SuperscriptBox["r", "\[Prime]",
            MultilineFunction->None]}]}], ")"}]}]}]]}], ")"}]}], "]"}]], \
"Input",
 CellChangeTimes->{{3.5393809093875446`*^9, 3.5393809256604757`*^9}}],

Cell[BoxData[
 RowBox[{"Limit", "[", 
  RowBox[{
   RowBox[{"Log", "[", 
    FractionBox[
     RowBox[{"L", "+", 
      SqrtBox[
       RowBox[{
        SuperscriptBox["L", "2"], "+", 
        SuperscriptBox["r", "2"], "+", 
        RowBox[{
         SuperscriptBox["\[ExponentialE]", 
          RowBox[{"i", " ", "\[Theta]"}]], " ", 
         SuperscriptBox["r", "\[Prime]",
          MultilineFunction->None], " ", 
         RowBox[{"(", 
          RowBox[{
           RowBox[{
            RowBox[{"-", "2"}], " ", "r"}], "+", 
           RowBox[{
            SuperscriptBox["\[ExponentialE]", 
             RowBox[{"i", " ", "\[Theta]"}]], " ", 
            SuperscriptBox["r", "\[Prime]",
             MultilineFunction->None]}]}], ")"}]}]}]]}], 
     RowBox[{
      RowBox[{"-", "L"}], "+", 
      SqrtBox[
       RowBox[{
        SuperscriptBox["L", "2"], "+", 
        SuperscriptBox["r", "2"], "+", 
        RowBox[{
         SuperscriptBox["\[ExponentialE]", 
          RowBox[{"i", " ", "\[Theta]"}]], " ", 
         SuperscriptBox["r", "\[Prime]",
          MultilineFunction->None], " ", 
         RowBox[{"(", 
          RowBox[{
           RowBox[{
            RowBox[{"-", "2"}], " ", "r"}], "+", 
           RowBox[{
            SuperscriptBox["\[ExponentialE]", 
             RowBox[{"i", " ", "\[Theta]"}]], " ", 
            SuperscriptBox["r", "\[Prime]",
             MultilineFunction->None]}]}], ")"}]}]}]]}]], "]"}], " ", ",", 
   " ", 
   RowBox[{"L", " ", "\[Rule]", " ", "Infinity"}]}], "]"}]], "Input",
 CellChangeTimes->{{3.539380931631817*^9, 3.539380935412033*^9}, {
  3.5393809733692045`*^9, 3.539380990823203*^9}}],

Cell[BoxData[
 FormBox["", TraditionalForm]], "Input",
 CellChangeTimes->{{3.5393809939983845`*^9, 3.5393809940713882`*^9}}],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"ii", " ", "=", " ", 
  RowBox[{"Integrate", "[", " ", 
   RowBox[{
    RowBox[{
     RowBox[{"r", "'"}], " ", "/", " ", 
     RowBox[{"Sqrt", "[", 
      RowBox[{
       RowBox[{"z", "^", "2"}], " ", "+", " ", 
       RowBox[{"r", "^", "2"}], "  ", "-", " ", 
       RowBox[{"2", " ", "r", " ", 
        RowBox[{"r", "'"}], " ", 
        RowBox[{"Cos", "[", "\[Theta]", "]"}]}], " ", "+", " ", 
       RowBox[{
        RowBox[{"(", 
         RowBox[{"r", "'"}], ")"}], "^", "2"}]}], "]"}]}], ",", 
    RowBox[{"{", 
     RowBox[{"z", ",", " ", 
      RowBox[{"-", "L"}], ",", " ", "L"}], "}"}]}], "]"}]}]], "Input",
 CellChangeTimes->{{3.5393811499393034`*^9, 3.5393811575937414`*^9}}],

Cell[BoxData[
 RowBox[{"ConditionalExpression", "[", 
  RowBox[{
   RowBox[{
    RowBox[{"(", 
     RowBox[{
      RowBox[{"-", 
       RowBox[{"Log", "[", 
        RowBox[{
         RowBox[{"-", "L"}], "+", 
         SqrtBox[
          RowBox[{
           SuperscriptBox["L", "2"], "+", 
           SuperscriptBox["r", "2"], "-", 
           RowBox[{"2", " ", "r", " ", 
            RowBox[{"Cos", "[", "\[Theta]", "]"}], " ", 
            SuperscriptBox["r", "\[Prime]",
             MultilineFunction->None]}], "+", 
           SuperscriptBox[
            RowBox[{"(", 
             SuperscriptBox["r", "\[Prime]",
              MultilineFunction->None], ")"}], "2"]}]]}], "]"}]}], "+", 
      RowBox[{"Log", "[", 
       RowBox[{"L", "+", 
        SqrtBox[
         RowBox[{
          SuperscriptBox["L", "2"], "+", 
          SuperscriptBox["r", "2"], "-", 
          RowBox[{"2", " ", "r", " ", 
           RowBox[{"Cos", "[", "\[Theta]", "]"}], " ", 
           SuperscriptBox["r", "\[Prime]",
            MultilineFunction->None]}], "+", 
          SuperscriptBox[
           RowBox[{"(", 
            SuperscriptBox["r", "\[Prime]",
             MultilineFunction->None], ")"}], "2"]}]]}], "]"}]}], ")"}], " ", 
    SuperscriptBox["r", "\[Prime]",
     MultilineFunction->None]}], ",", 
   RowBox[{
    RowBox[{
     RowBox[{"Re", "[", 
      FractionBox[
       SqrtBox[
        RowBox[{
         RowBox[{"-", 
          SuperscriptBox["r", "2"]}], "+", 
         RowBox[{"2", " ", "r", " ", 
          RowBox[{"Cos", "[", "\[Theta]", "]"}], " ", 
          SuperscriptBox["r", "\[Prime]",
           MultilineFunction->None]}], "-", 
         SuperscriptBox[
          RowBox[{"(", 
           SuperscriptBox["r", "\[Prime]",
            MultilineFunction->None], ")"}], "2"]}]], "L"], "]"}], 
     "\[GreaterEqual]", "1"}], "||", 
    RowBox[{
     RowBox[{"Re", "[", 
      FractionBox[
       SqrtBox[
        RowBox[{
         RowBox[{"-", 
          SuperscriptBox["r", "2"]}], "+", 
         RowBox[{"2", " ", "r", " ", 
          RowBox[{"Cos", "[", "\[Theta]", "]"}], " ", 
          SuperscriptBox["r", "\[Prime]",
           MultilineFunction->None]}], "-", 
         SuperscriptBox[
          RowBox[{"(", 
           SuperscriptBox["r", "\[Prime]",
            MultilineFunction->None], ")"}], "2"]}]], "L"], "]"}], 
     "\[LessEqual]", 
     RowBox[{"-", "1"}]}], "||", 
    RowBox[{
     FractionBox[
      SqrtBox[
       RowBox[{
        RowBox[{"-", 
         SuperscriptBox["r", "2"]}], "+", 
        RowBox[{"2", " ", "r", " ", 
         RowBox[{"Cos", "[", "\[Theta]", "]"}], " ", 
         SuperscriptBox["r", "\[Prime]",
          MultilineFunction->None]}], "-", 
        SuperscriptBox[
         RowBox[{"(", 
          SuperscriptBox["r", "\[Prime]",
           MultilineFunction->None], ")"}], "2"]}]], "L"], "\[NotElement]", 
     "Reals"}]}]}], "]"}]], "Output",
 CellChangeTimes->{3.539381184722293*^9}]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"FullSimplify", "[", 
  RowBox[{"ii", ",", " ", 
   RowBox[{
    RowBox[{"r", " ", ">", " ", 
     RowBox[{"r", "'"}]}], " ", "&&", " ", 
    RowBox[{
     RowBox[{"r", "'"}], " ", ">", " ", "0"}], " ", "&&", " ", 
    RowBox[{"r", " ", ">", " ", "0"}], " ", "&&", " ", 
    RowBox[{"Element", "[", 
     RowBox[{
      RowBox[{"\[Theta]", " ", "|", " ", "r", " ", "|", " ", 
       RowBox[{"r", "'"}], " ", "|", " ", "L"}], ",", " ", "Reals"}], "]"}], 
    " ", "&&", "  ", 
    RowBox[{
     RowBox[{
      SuperscriptBox["r", "2"], "-", 
      RowBox[{"2", " ", "r", " ", 
       RowBox[{"Cos", "[", "\[Theta]", "]"}], " ", 
       SuperscriptBox["r", "\[Prime]",
        MultilineFunction->None]}], "+", 
      SuperscriptBox[
       RowBox[{"(", 
        SuperscriptBox["r", "\[Prime]",
         MultilineFunction->None], ")"}], "2"]}], ">", " ", "0"}]}]}], 
  "]"}]], "Input",
 CellChangeTimes->{{3.5393812055244827`*^9, 3.5393812658339324`*^9}}],

Cell[BoxData[
 RowBox[{"ConditionalExpression", "[", 
  RowBox[{
   RowBox[{"2", " ", 
    RowBox[{"ArcTanh", "[", 
     FractionBox["L", 
      SqrtBox[
       RowBox[{
        SuperscriptBox["L", "2"], "+", 
        SuperscriptBox["r", "2"], "-", 
        RowBox[{"2", " ", "r", " ", 
         RowBox[{"Cos", "[", "\[Theta]", "]"}], " ", 
         SuperscriptBox["r", "\[Prime]",
          MultilineFunction->None]}], "+", 
        SuperscriptBox[
         RowBox[{"(", 
          SuperscriptBox["r", "\[Prime]",
           MultilineFunction->None], ")"}], "2"]}]]], "]"}], " ", 
    SuperscriptBox["r", "\[Prime]",
     MultilineFunction->None]}], ",", 
   RowBox[{
    RowBox[{
     RowBox[{
      RowBox[{"Im", "[", 
       FractionBox["1", "L"], "]"}], " ", 
      SqrtBox[
       RowBox[{
        SuperscriptBox["r", "2"], "-", 
        RowBox[{"2", " ", "r", " ", 
         RowBox[{"Cos", "[", "\[Theta]", "]"}], " ", 
         SuperscriptBox["r", "\[Prime]",
          MultilineFunction->None]}], "+", 
        SuperscriptBox[
         RowBox[{"(", 
          SuperscriptBox["r", "\[Prime]",
           MultilineFunction->None], ")"}], "2"]}]]}], "\[GreaterEqual]", 
     "1"}], "||", 
    RowBox[{
     RowBox[{
      RowBox[{"Im", "[", 
       FractionBox["1", "L"], "]"}], " ", 
      SqrtBox[
       RowBox[{
        SuperscriptBox["r", "2"], "-", 
        RowBox[{"2", " ", "r", " ", 
         RowBox[{"Cos", "[", "\[Theta]", "]"}], " ", 
         SuperscriptBox["r", "\[Prime]",
          MultilineFunction->None]}], "+", 
        SuperscriptBox[
         RowBox[{"(", 
          SuperscriptBox["r", "\[Prime]",
           MultilineFunction->None], ")"}], "2"]}]]}], "\[LessEqual]", 
     RowBox[{"-", "1"}]}], "||", 
    RowBox[{
     FractionBox["\[ImaginaryI]", "L"], "\[NotElement]", "Reals"}]}]}], 
  "]"}]], "Output",
 CellChangeTimes->{{3.5393812444487095`*^9, 3.5393812713432474`*^9}}]
}, Open  ]],

Cell[BoxData[{
 RowBox[{"Clear", "[", 
  RowBox[{"ii", ",", " ", "u", ",", " ", "z", ",", " ", "l", ",", " ", "jj"}],
   "]"}], "\[IndentingNewLine]", 
 RowBox[{"ii", " ", "=", " ", 
  RowBox[{"Integrate", "[", " ", 
   RowBox[{
    RowBox[{"1", " ", "/", " ", 
     RowBox[{"Sqrt", "[", 
      RowBox[{
       RowBox[{"z", "^", "2"}], " ", "+", " ", 
       RowBox[{"u", "^", "2"}]}], "]"}]}], ",", 
    RowBox[{"{", 
     RowBox[{"z", ",", " ", 
      RowBox[{"-", "l"}], ",", " ", "l"}], "}"}]}], 
   "]"}]}], "\[IndentingNewLine]", 
 RowBox[{"jj", " ", "=", " ", 
  RowBox[{"FullSimplify", "[", 
   RowBox[{"ii", ",", " ", 
    RowBox[{
     RowBox[{"u", " ", ">", " ", "0"}], " ", "&&", " ", 
     RowBox[{"Element", "[", " ", 
      RowBox[{
       RowBox[{"u", " ", "|", " ", "l"}], ",", " ", "Reals"}], "]"}]}]}], " ",
    "]"}]}]}], "Input",
 CellChangeTimes->{{3.539381301843992*^9, 3.5393813103804803`*^9}, {
  3.539381435813655*^9, 3.5393814678634877`*^9}}],

Cell[BoxData[
 RowBox[{"ConditionalExpression", "[", 
  RowBox[{",", 
   RowBox[{
    RowBox[{
     RowBox[{"Re", "[", 
      FractionBox["u", "l"], "]"}], "\[NotEqual]", "0"}], "||", 
    RowBox[{
     RowBox[{"Im", "[", 
      FractionBox["u", "l"], "]"}], "\[GreaterEqual]", "1"}], "||", 
    RowBox[{
     RowBox[{"Im", "[", 
      FractionBox["u", "l"], "]"}], "\[LessEqual]", 
     RowBox[{"-", "1"}]}]}]}], "]"}]], "Input",
 CellChangeTimes->{{3.5393815364164085`*^9, 3.5393815364704123`*^9}}],

Cell[BoxData[
 RowBox[{"ConditionalExpression", "[", 
  RowBox[{
   RowBox[{"Log", "[", 
    FractionBox[
     RowBox[{
      SuperscriptBox["u", "2"], "+", 
      RowBox[{"2", " ", "l", " ", 
       RowBox[{"(", 
        RowBox[{"l", "+", 
         SqrtBox[
          RowBox[{
           SuperscriptBox["l", "2"], "+", 
           SuperscriptBox["u", "2"]}]]}], ")"}]}]}], 
     SuperscriptBox["u", "2"]], "]"}], ",", 
   RowBox[{
    RowBox[{
     RowBox[{"Re", "[", 
      FractionBox["1", "l"], "]"}], "\[NotEqual]", "0"}], "||", 
    RowBox[{
     RowBox[{"u", " ", 
      RowBox[{"Im", "[", 
       FractionBox["1", "l"], "]"}]}], "\[GreaterEqual]", "1"}], "||", 
    RowBox[{
     RowBox[{"u", " ", 
      RowBox[{"Im", "[", 
       FractionBox["1", "l"], "]"}]}], "\[LessEqual]", 
     RowBox[{"-", "1"}]}]}]}], "]"}]], "Output",
 CellChangeTimes->{3.5393813495137186`*^9, 3.5393815104689245`*^9}],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"Clear", "[", 
  RowBox[{"jj", ",", " ", "\[IndentingNewLine]"}]}]], "Input",
 CellChangeTimes->{{3.539381358754247*^9, 3.5393814000556097`*^9}, 
   3.539381450749509*^9}],

Cell[BoxData[
 RowBox[{"ConditionalExpression", "[", 
  RowBox[{
   RowBox[{"Log", "[", 
    FractionBox[
     RowBox[{
      SuperscriptBox["u", "2"], "+", 
      RowBox[{"2", " ", "L", " ", 
       RowBox[{"(", 
        RowBox[{"L", "+", 
         SqrtBox[
          RowBox[{
           SuperscriptBox["L", "2"], "+", 
           SuperscriptBox["u", "2"]}]]}], ")"}]}]}], 
     SuperscriptBox["u", "2"]], "]"}], ",", 
   RowBox[{
    RowBox[{
     RowBox[{"Re", "[", 
      FractionBox["1", "L"], "]"}], "\[NotEqual]", "0"}], "||", 
    RowBox[{
     RowBox[{"u", " ", 
      RowBox[{"Im", "[", 
       FractionBox["1", "L"], "]"}]}], "\[GreaterEqual]", "1"}], "||", 
    RowBox[{
     RowBox[{"u", " ", 
      RowBox[{"Im", "[", 
       FractionBox["1", "L"], "]"}]}], "\[LessEqual]", 
     RowBox[{"-", "1"}]}]}]}], "]"}]], "Output",
 CellChangeTimes->{3.539381381777564*^9}]
}, Open  ]],

Cell[BoxData[
 RowBox[{"HoldForm", "[", 
  RowBox[{"Integrate", "[", " ", 
   RowBox[{
    RowBox[{"1", " ", "/", " ", 
     RowBox[{"Sqrt", "[", 
      RowBox[{
       RowBox[{"z", "^", "2"}], " ", "+", " ", 
       RowBox[{"u", "^", "2"}]}], "]"}]}], ",", 
    RowBox[{"{", 
     RowBox[{"z", ",", " ", 
      RowBox[{"-", "l"}], ",", " ", "l"}], "}"}]}], "]"}], "]"}]], "Input",
 CellChangeTimes->{{3.539381504881605*^9, 3.539381507693766*^9}}],

Cell[BoxData[
 RowBox[{
  RowBox[{"HoldForm", "[", 
   RowBox[{
    TagBox[
     RowBox[{
      SubsuperscriptBox["\[Integral]", 
       RowBox[{"-", "l"}], "l"], 
      RowBox[{
       FractionBox["1", 
        SqrtBox[
         RowBox[{
          SuperscriptBox["z", "2"], "+", 
          SuperscriptBox["u", "2"]}]]], 
       RowBox[{"\[DifferentialD]", "z"}]}]}],
     HoldForm], " ", "=", " ", 
    RowBox[{"Log", "[", 
     FractionBox[
      RowBox[{"l", "+", 
       SqrtBox[
        RowBox[{
         SuperscriptBox["l", "2"], "+", 
         SuperscriptBox["u", "2"]}]]}], 
      RowBox[{
       RowBox[{"-", "l"}], "+", 
       SqrtBox[
        RowBox[{
         SuperscriptBox["l", "2"], "+", 
         SuperscriptBox["u", "2"]}]]}]], "]"}]}], " ", "]"}], "//", " ", 
  "TraditionalForm"}]], "Input",
 CellChangeTimes->{{3.53938151685929*^9, 3.5393815897624598`*^9}}],

Cell[BoxData[
 FormBox[
  RowBox[{
   TagBox[
    RowBox[{
     TagBox[
      RowBox[{
       SubsuperscriptBox["\[Integral]", 
        RowBox[{"-", "l"}], "l"], 
       RowBox[{
        FractionBox["1", 
         SqrtBox[
          RowBox[{
           SuperscriptBox["z", "2"], "+", 
           SuperscriptBox["u", "2"]}]]], 
        RowBox[{"\[DifferentialD]", "z"}]}]}],
      HoldForm], "=", 
     RowBox[{"log", "(", 
      FractionBox[
       RowBox[{"l", "+", 
        SqrtBox[
         RowBox[{
          SuperscriptBox["l", "2"], "+", 
          SuperscriptBox["u", "2"]}]]}], 
       RowBox[{
        RowBox[{"-", "l"}], "+", 
        SqrtBox[
         RowBox[{
          SuperscriptBox["l", "2"], "+", 
          SuperscriptBox["u", "2"]}]]}]], ")"}]}],
    HoldForm], " ", "/.", " ", 
   RowBox[{"l", " ", "\[Rule]", " ", "L"}]}], TraditionalForm]], "Input",
 CellChangeTimes->{{3.5393815948467507`*^9, 3.5393815970748787`*^9}}],

Cell[BoxData[
 RowBox[{
  RowBox[{"HoldForm", "[", 
   TagBox[
    RowBox[{
     TagBox[
      RowBox[{
       SubsuperscriptBox["\[Integral]", 
        RowBox[{"-", "L"}], "L"], 
       RowBox[{
        FractionBox["1", 
         SqrtBox[
          RowBox[{
           SuperscriptBox["z", "2"], "+", 
           SuperscriptBox["u", "2"]}]]], 
        RowBox[{"\[DifferentialD]", "z"}]}]}],
      HoldForm], "=", 
     RowBox[{"Log", "[", 
      FractionBox[
       RowBox[{"L", "+", 
        SqrtBox[
         RowBox[{
          SuperscriptBox["L", "2"], "+", 
          SuperscriptBox["u", "2"]}]]}], 
       RowBox[{
        RowBox[{"-", "L"}], "+", 
        SqrtBox[
         RowBox[{
          SuperscriptBox["L", "2"], "+", 
          SuperscriptBox["u", "2"]}]]}]], "]"}]}],
    HoldForm], "]"}], " ", "//", " ", "TraditionalForm"}]], "Input",
 CellChangeTimes->{{3.53938160235318*^9, 3.539381609093566*^9}}],

Cell[BoxData[
 FormBox["", TraditionalForm]], "Input",
 CellChangeTimes->{{3.539381616265976*^9, 3.5393816163239794`*^9}}],

Cell[BoxData[
 FormBox[
  RowBox[{
   TagBox[
    TagBox[
     RowBox[{
      TagBox[
       RowBox[{
        SubsuperscriptBox["\[Integral]", 
         RowBox[{"-", "L"}], "L"], 
        RowBox[{
         FractionBox["1", 
          SqrtBox[
           RowBox[{
            SuperscriptBox["z", "2"], "+", 
            SuperscriptBox["u", "2"]}]]], 
         RowBox[{"\[DifferentialD]", "z"}]}]}],
       HoldForm], "=", 
      RowBox[{"log", "(", 
       FractionBox[
        RowBox[{"L", "+", 
         SqrtBox[
          RowBox[{
           SuperscriptBox["L", "2"], "+", 
           SuperscriptBox["u", "2"]}]]}], 
        RowBox[{
         RowBox[{"-", "L"}], "+", 
         SqrtBox[
          RowBox[{
           SuperscriptBox["L", "2"], "+", 
           SuperscriptBox["u", "2"]}]]}]], ")"}]}],
     HoldForm],
    HoldForm], " ", "/.", " ", 
   RowBox[{
    RowBox[{"u", "^", "2"}], " ", "\[Rule]", " ", 
    RowBox[{
     RowBox[{"Abs", "[", 
      RowBox[{
       RowBox[{"r", "'"}], " ", "-", " ", 
       RowBox[{"r", " ", 
        RowBox[{"E", "^", 
         RowBox[{"(", 
          RowBox[{"I", " ", "theta"}], ")"}]}]}]}], "]"}], "^", "2"}]}]}], 
  TraditionalForm]], "Input",
 CellChangeTimes->{{3.539381664122713*^9, 3.539381704885045*^9}, {
  3.5393817818604474`*^9, 3.539381782024457*^9}}],

Cell[BoxData[
 RowBox[{
  TagBox[
   TagBox[
    RowBox[{
     TagBox[
      RowBox[{
       SubsuperscriptBox["\[Integral]", 
        RowBox[{"-", "L"}], "L"], 
       RowBox[{
        FractionBox["1", 
         SqrtBox[
          RowBox[{
           SuperscriptBox["z", "2"], "+", 
           SuperscriptBox[
            RowBox[{"Abs", "[", 
             RowBox[{
              RowBox[{
               RowBox[{"-", 
                SuperscriptBox["\[ExponentialE]", 
                 RowBox[{"\[ImaginaryI]", " ", "\[Theta]"}]]}], " ", "r"}], 
              "+", 
              SuperscriptBox["r", "\[Prime]",
               MultilineFunction->None]}], "]"}], "2"]}]]], 
        RowBox[{"\[DifferentialD]", "z"}]}]}],
      HoldForm], "=", 
     RowBox[{"Log", "[", 
      FractionBox[
       RowBox[{"L", "+", 
        SqrtBox[
         RowBox[{
          SuperscriptBox["L", "2"], "+", 
          SuperscriptBox[
           RowBox[{"Abs", "[", 
            RowBox[{
             RowBox[{
              RowBox[{"-", 
               SuperscriptBox["\[ExponentialE]", 
                RowBox[{"\[ImaginaryI]", " ", "\[Theta]"}]]}], " ", "r"}], 
             "+", 
             SuperscriptBox["r", "\[Prime]",
              MultilineFunction->None]}], "]"}], "2"]}]]}], 
       RowBox[{
        RowBox[{"-", "L"}], "+", 
        SqrtBox[
         RowBox[{
          SuperscriptBox["L", "2"], "+", 
          SuperscriptBox[
           RowBox[{"Abs", "[", 
            RowBox[{
             RowBox[{
              RowBox[{"-", 
               SuperscriptBox["\[ExponentialE]", 
                RowBox[{"\[ImaginaryI]", " ", "\[Theta]"}]]}], " ", "r"}], 
             "+", 
             SuperscriptBox["r", "\[Prime]",
              MultilineFunction->None]}], "]"}], "2"]}]]}]], "]"}]}],
    HoldForm],
   HoldForm], " ", "//", " ", "TraditionalForm"}]], "Input",
 CellChangeTimes->{{3.539381791183981*^9, 3.539381793701125*^9}}],

Cell[BoxData[
 FormBox[
  TagBox[
   TagBox[
    RowBox[{
     TagBox[
      RowBox[{
       SubsuperscriptBox["\[Integral]", 
        RowBox[{"-", "L"}], "L"], 
       RowBox[{
        FractionBox["1", 
         SqrtBox[
          RowBox[{
           SuperscriptBox["z", "2"], "+", 
           SuperscriptBox[
            TemplateBox[{RowBox[{
                RowBox[{
                  RowBox[{"-", 
                    SuperscriptBox["\[ExponentialE]", 
                    RowBox[{"\[ImaginaryI]", " ", "\[Theta]"}]]}], " ", "r"}],
                 "+", 
                SuperscriptBox["r", "\[Prime]", MultilineFunction -> None]}]},
             "Abs"], "2"]}]]], 
        RowBox[{"\[DifferentialD]", "z"}]}]}],
      HoldForm], "=", 
     RowBox[{"log", "(", 
      FractionBox[
       RowBox[{"L", "+", 
        SqrtBox[
         RowBox[{
          SuperscriptBox["L", "2"], "+", 
          SuperscriptBox[
           TemplateBox[{RowBox[{
               RowBox[{
                 RowBox[{"-", 
                   SuperscriptBox["\[ExponentialE]", 
                    RowBox[{"\[ImaginaryI]", " ", "\[Theta]"}]]}], " ", "r"}],
                "+", 
               SuperscriptBox["r", "\[Prime]", MultilineFunction -> None]}]},
            "Abs"], "2"]}]]}], 
       RowBox[{
        RowBox[{"-", "L"}], "+", 
        SqrtBox[
         RowBox[{
          SuperscriptBox["L", "2"], "+", 
          SuperscriptBox[
           TemplateBox[{RowBox[{
               RowBox[{
                 RowBox[{"-", 
                   SuperscriptBox["\[ExponentialE]", 
                    RowBox[{"\[ImaginaryI]", " ", "\[Theta]"}]]}], " ", "r"}],
                "+", 
               SuperscriptBox["r", "\[Prime]", MultilineFunction -> None]}]},
            "Abs"], "2"]}]]}]], ")"}]}],
    HoldForm],
   HoldForm], TraditionalForm]], "Output",
 CellChangeTimes->{3.539381794231155*^9}],

Cell[BoxData[
 RowBox[{
  TagBox[
   TagBox[
    FractionBox[
     RowBox[{"L", "+", 
      SqrtBox[
       RowBox[{
        SuperscriptBox["L", "2"], "+", 
        SuperscriptBox[
         RowBox[{"(", 
          SuperscriptBox[
           RowBox[{"Abs", "[", 
            RowBox[{
             RowBox[{
              RowBox[{"-", 
               SuperscriptBox["\[ExponentialE]", 
                RowBox[{"\[ImaginaryI]", " ", "\[Theta]"}]]}], " ", "r"}], 
             "+", 
             SuperscriptBox["r", "\[Prime]",
              MultilineFunction->None]}], "]"}], "2"], ")"}], "2"]}]]}], 
     RowBox[{
      RowBox[{"-", "L"}], "+", 
      SqrtBox[
       RowBox[{
        SuperscriptBox["L", "2"], "+", 
        SuperscriptBox[
         RowBox[{"(", 
          SuperscriptBox[
           RowBox[{"Abs", "[", 
            RowBox[{
             RowBox[{
              RowBox[{"-", 
               SuperscriptBox["\[ExponentialE]", 
                RowBox[{"\[ImaginaryI]", " ", "\[Theta]"}]]}], " ", "r"}], 
             "+", 
             SuperscriptBox["r", "\[Prime]",
              MultilineFunction->None]}], "]"}], "2"], ")"}], "2"]}]]}]],
    HoldForm],
   HoldForm], " ", "//", " ", "TraditionalForm"}]], "Input",
 CellChangeTimes->{{3.539381717667776*^9, 3.5393817243021555`*^9}, {
  3.539381756357989*^9, 3.539381767672636*^9}}],

Cell[BoxData[
 FormBox[
  TagBox[
   TagBox[
    FractionBox[
     RowBox[{"L", "+", 
      SqrtBox[
       RowBox[{
        SuperscriptBox["L", "2"], "+", 
        SuperscriptBox[
         RowBox[{"(", 
          SuperscriptBox[
           TemplateBox[{RowBox[{
               RowBox[{
                 RowBox[{"-", 
                   SuperscriptBox["\[ExponentialE]", 
                    RowBox[{"\[ImaginaryI]", " ", "\[Theta]"}]]}], " ", "r"}],
                "+", 
               SuperscriptBox["r", "\[Prime]", MultilineFunction -> None]}]},
            "Abs"], "2"], ")"}], "2"]}]]}], 
     RowBox[{
      RowBox[{"-", "L"}], "+", 
      SqrtBox[
       RowBox[{
        SuperscriptBox["L", "2"], "+", 
        SuperscriptBox[
         RowBox[{"(", 
          SuperscriptBox[
           TemplateBox[{RowBox[{
               RowBox[{
                 RowBox[{"-", 
                   SuperscriptBox["\[ExponentialE]", 
                    RowBox[{"\[ImaginaryI]", " ", "\[Theta]"}]]}], " ", "r"}],
                "+", 
               SuperscriptBox["r", "\[Prime]", MultilineFunction -> None]}]},
            "Abs"], "2"], ")"}], "2"]}]]}]],
    HoldForm],
   HoldForm], TraditionalForm]], "Output",
 CellChangeTimes->{3.5393817686206903`*^9}],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"theta", " ", "=", " ", "\[Theta]"}]], "Input",
 CellChangeTimes->{{3.539381694940476*^9, 3.539381697937647*^9}}],

Cell[BoxData["\[Theta]"], "Output",
 CellChangeTimes->{3.539381698909703*^9}]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[{
 RowBox[{"Clear", "[", 
  RowBox[{"a", ",", " ", "r", ",", " ", "b"}], "]"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{"Element", "[", 
   RowBox[{
    RowBox[{
    "a", " ", "|", " ", "r", " ", "|", " ", "b", " ", "|", " ", "theta"}], 
    ",", " ", "Reals"}], "]"}], "\[IndentingNewLine]", 
  RowBox[{"(*", 
   RowBox[{"Integrate", "[", 
    RowBox[{
     RowBox[{"Log", "[", 
      RowBox[{"a", " ", "+", " ", 
       RowBox[{"Sqrt", "[", 
        RowBox[{
         RowBox[{"a", "^", "2"}], " ", "+", " ", 
         RowBox[{"r", "^", "2"}], " ", "+", " ", 
         RowBox[{"b", "^", "2"}], " ", "-", " ", 
         RowBox[{"2", " ", "a", " ", "b", " ", 
          RowBox[{"Cos", "[", "theta", "]"}]}]}], "]"}]}], "]"}], ",", " ", 
     RowBox[{"{", 
      RowBox[{"theta", ",", " ", "0", ",", " ", 
       RowBox[{"2", " ", "Pi"}]}], "}"}]}], "]"}], 
   "*)"}]}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{"HoldForm", "[", 
   RowBox[{"Integrate", "[", 
    RowBox[{
     RowBox[{"r", " ", 
      RowBox[{"Log", "[", 
       RowBox[{"a", " ", "+", " ", 
        RowBox[{"Sqrt", "[", 
         RowBox[{
          RowBox[{"a", "^", "2"}], " ", "+", " ", 
          RowBox[{"r", "^", "2"}], " ", "+", " ", 
          RowBox[{"b", "^", "2"}], " ", "-", " ", 
          RowBox[{"2", " ", "r", " ", "b", "  ", 
           RowBox[{"Cos", "[", "theta", "]"}]}]}], "]"}]}], "]"}]}], ",", " ", 
     RowBox[{"{", 
      RowBox[{"r", ",", " ", "0", ",", " ", "R"}], "}"}]}], "]"}], "]"}], " ",
   "//", " ", "TraditionalForm"}], "\[IndentingNewLine]", 
 RowBox[{"Integrate", "[", 
  RowBox[{
   RowBox[{"r", " ", 
    RowBox[{"Log", "[", 
     RowBox[{"a", " ", "+", " ", 
      RowBox[{"Sqrt", "[", 
       RowBox[{
        RowBox[{"a", "^", "2"}], " ", "+", " ", 
        RowBox[{"r", "^", "2"}], " ", "+", " ", 
        RowBox[{"b", "^", "2"}], " ", "-", " ", 
        RowBox[{"2", " ", "r", " ", "b", "  ", 
         RowBox[{"Cos", "[", "theta", "]"}]}]}], "]"}]}], "]"}]}], ",", " ", 
   RowBox[{"{", 
    RowBox[{"r", ",", " ", "0", ",", " ", "R"}], "}"}]}], "]"}]}], "Input",
 CellChangeTimes->{{3.5393821118323207`*^9, 3.539382164819351*^9}, {
  3.539382285340245*^9, 3.539382326633607*^9}, {3.53938248666376*^9, 
  3.5393825929058366`*^9}}],

Cell[BoxData[
 RowBox[{
  RowBox[{"(", 
   RowBox[{"a", "|", "r", "|", "b", "|", "\[Theta]"}], ")"}], "\[Element]", 
  "Reals"}]], "Output",
 CellChangeTimes->{3.5393822229786777`*^9, 3.539382327868677*^9, 
  3.539382534792513*^9, 3.53938260065628*^9}],

Cell[BoxData["$Aborted"], "Output",
 CellChangeTimes->{3.5393822229786777`*^9, 3.539382327868677*^9, 
  3.539382534792513*^9, 3.5393837431746283`*^9}]
}, Open  ]],

Cell[BoxData[
 FormBox[
  TagBox[
   RowBox[{
    SubsuperscriptBox["\[Integral]", "0", "R"], 
    RowBox[{
     RowBox[{"r", " ", 
      RowBox[{"log", "(", 
       RowBox[{"a", "+", 
        SqrtBox[
         RowBox[{
          SuperscriptBox["a", "2"], "+", 
          SuperscriptBox["r", "2"], "+", 
          SuperscriptBox["b", "2"], "-", 
          RowBox[{"2", " ", "r", " ", "b", " ", 
           RowBox[{"cos", "(", "\[Theta]", ")"}]}]}]]}], ")"}]}], 
     RowBox[{"\[DifferentialD]", "r"}]}]}],
   HoldForm], TraditionalForm]], "Input",
 CellChangeTimes->{{3.539382713913758*^9, 3.5393827190620527`*^9}}],

Cell[BoxData[
 RowBox[{"HoldForm", "[", " ", 
  RowBox[{"Integrate", "[", 
   RowBox[{
    RowBox[{"Log", "[", 
     RowBox[{"a", " ", "+", " ", 
      RowBox[{"Sqrt", "[", 
       RowBox[{
        RowBox[{"a", "^", "2"}], " ", "+", " ", 
        RowBox[{"r", "^", "2"}], " ", "+", " ", 
        RowBox[{"b", "^", "2"}], " ", "-", " ", 
        RowBox[{"2", " ", "a", " ", "b", " ", 
         RowBox[{"Cos", "[", "theta", "]"}]}]}], "]"}]}], "]"}], ",", " ", 
    RowBox[{"{", 
     RowBox[{"theta", ",", " ", "0", ",", " ", 
      RowBox[{"2", " ", "Pi"}]}], "}"}]}], "]"}], "]"}]], "Input",
 CellChangeTimes->{{3.5393821915088778`*^9, 3.539382194832068*^9}, {
  3.5393822611668625`*^9, 3.5393822625849433`*^9}}],

Cell[BoxData[
 RowBox[{
  TagBox[
   RowBox[{
    SubsuperscriptBox["\[Integral]", "0", 
     RowBox[{"2", " ", "\[Pi]"}]], 
    RowBox[{
     RowBox[{"Log", "[", 
      RowBox[{"a", "+", 
       SqrtBox[
        RowBox[{
         SuperscriptBox["a", "2"], "+", 
         SuperscriptBox["r", "2"], "+", 
         SuperscriptBox["b", "2"], "-", 
         RowBox[{"2", " ", "a", " ", "b", " ", 
          RowBox[{"Cos", "[", "theta", "]"}]}]}]]}], "]"}], 
     RowBox[{"\[DifferentialD]", "theta"}]}]}],
   HoldForm], " ", "//", " ", "TraditionalForm"}]], "Input",
 CellChangeTimes->{{3.5393822738355865`*^9, 3.539382276389733*^9}}],

Cell[BoxData[
 FormBox[
  RowBox[{
   TagBox[
    RowBox[{
     SubsuperscriptBox["\[Integral]", "0", 
      RowBox[{"2", " ", "\[Pi]"}]], 
     RowBox[{
      RowBox[{"log", "(", 
       RowBox[{"a", "+", 
        SqrtBox[
         RowBox[{
          SuperscriptBox["a", "2"], "+", 
          SuperscriptBox["r", "2"], "+", 
          SuperscriptBox["b", "2"], "-", 
          RowBox[{"2", " ", "r", " ", "b", " ", 
           RowBox[{"cos", "(", "theta", ")"}]}]}]]}], ")"}], 
      RowBox[{"\[DifferentialD]", "theta"}]}]}],
    HoldForm], " ", "/.", " ", 
   RowBox[{"theta", " ", "\[Rule]", " "}]}], TraditionalForm]], "Input",
 CellChangeTimes->{{3.539382724207347*^9, 3.5393827396462297`*^9}, 
   3.539383766443959*^9}],

Cell[BoxData[
 RowBox[{
  TagBox[
   RowBox[{
    SubsuperscriptBox["\[Integral]", "0", 
     RowBox[{"2", " ", "\[Pi]"}]], 
    RowBox[{
     RowBox[{"Log", "[", 
      RowBox[{"a", "+", 
       SqrtBox[
        RowBox[{
         SuperscriptBox["a", "2"], "+", 
         SuperscriptBox["r", "2"], "+", 
         SuperscriptBox["b", "2"], "-", 
         RowBox[{"2", " ", "r", " ", "b", " ", 
          RowBox[{"Cos", "[", "\[Theta]", "]"}]}]}]]}], "]"}], 
     RowBox[{"\[DifferentialD]", "\[Theta]"}]}]}],
   HoldForm], " ", "//", " ", "TraditionalForm"}]], "Input",
 CellChangeTimes->{{3.539383769798151*^9, 3.5393837819648466`*^9}}],

Cell[BoxData[
 FormBox["", TraditionalForm]], "Input",
 CellChangeTimes->{{3.53938378691613*^9, 3.5393837869611325`*^9}}],

Cell[BoxData[
 RowBox[{"HoldForm", "[", " ", 
  RowBox[{"Integrate", "[", 
   RowBox[{
    RowBox[{"Log", "[", 
     RowBox[{"a", " ", "+", " ", 
      RowBox[{"Sqrt", "[", 
       RowBox[{
        RowBox[{"a", "^", "2"}], " ", "+", " ", 
        RowBox[{"r", "^", "2"}], " ", "+", " ", 
        RowBox[{"b", "^", "2"}], " ", "-", " ", 
        RowBox[{"2", " ", "r", " ", "b", " ", 
         RowBox[{"Cos", "[", "theta", "]"}]}]}], "]"}]}], "]"}], ",", " ", 
    RowBox[{"{", 
     RowBox[{"theta", ",", " ", "0", ",", " ", 
      RowBox[{"2", " ", "Pi"}]}], "}"}]}], "]"}], "]"}]], "Input",
 CellChangeTimes->{{3.539382665089965*^9, 3.5393826845450783`*^9}}],

Cell[CellGroupData[{

Cell[BoxData[{
 RowBox[{"Clear", "[", 
  RowBox[{
  "hh", ",", " ", "a", ",", " ", "b", ",", " ", "R", ",", " ", "\[Theta]"}], 
  "]"}], "\[IndentingNewLine]", 
 RowBox[{"hh", " ", "=", " ", 
  RowBox[{
   RowBox[{"HoldForm", "[", 
    RowBox[{"Assuming", "[", 
     RowBox[{
      RowBox[{
       RowBox[{"Elements", "[", " ", 
        RowBox[{
         RowBox[{
         "a", " ", "|", " ", "b", " ", "|", " ", "R", " ", "|", " ", 
          "\[Theta]"}], ",", " ", "Reals"}], "]"}], " ", "&&", " ", 
       FormBox[
        RowBox[{
         RowBox[{"(", 
          RowBox[{
           SuperscriptBox["b", "2"], "-", 
           RowBox[{"2", " ", "b", " ", "R", " ", 
            RowBox[{"cos", "(", "\[Theta]", ")"}]}], "+", 
           SuperscriptBox["R", "2"]}], ")"}], " ", ">", " ", "0"}],
        TraditionalForm]}], ",", " ", 
      RowBox[{"Integrate", "[", 
       RowBox[{
        RowBox[{"r", " ", "/", 
         RowBox[{"Sqrt", "[", 
          RowBox[{
           RowBox[{"a", "^", "2"}], " ", "+", " ", 
           RowBox[{"r", "^", "2"}], " ", "-", " ", 
           RowBox[{"2", " ", "r", " ", "b", " ", 
            RowBox[{"Cos", "[", "\[Theta]", "]"}]}], " ", "+", " ", 
           RowBox[{"b", "^", "2"}]}], "]"}]}], ",", " ", 
        RowBox[{"{", 
         RowBox[{"r", ",", " ", "0", ",", " ", "R"}], "}"}]}], "]"}]}], "]"}],
     "]"}], " ", "//", " ", "TraditionalForm"}]}], "\[IndentingNewLine]", 
 RowBox[{"jj", " ", "=", " ", 
  RowBox[{"ReleaseHold", "[", "hh", "]"}]}], "\[IndentingNewLine]", 
 RowBox[{"FullSimplify", "[", "jj", "]"}]}], "Input",
 CellChangeTimes->{{3.5393839083850775`*^9, 3.539384037121441*^9}, {
  3.539385992374275*^9, 3.5393860412450705`*^9}, {3.5393862046394157`*^9, 
  3.539386210513752*^9}}],

Cell[BoxData[
 FormBox[
  TagBox[
   RowBox[{"Assuming", "[", 
    RowBox[{
     RowBox[{
      RowBox[{"Elements", "(", 
       RowBox[{
        RowBox[{"a", "|", "b", "|", "R", "|", "\[Theta]"}], ",", 
        TagBox["\[DoubleStruckCapitalR]",
         Function[{}, Reals]]}], ")"}], "\[And]", 
      RowBox[{
       RowBox[{
        SuperscriptBox["b", "2"], "-", 
        RowBox[{"2", " ", "b", " ", "R", " ", 
         RowBox[{"cos", "(", "\[Theta]", ")"}]}], "+", 
        SuperscriptBox["R", "2"]}], ">", "0"}]}], ",", 
     RowBox[{
      SubsuperscriptBox["\[Integral]", "0", "R"], 
      RowBox[{
       FractionBox["r", 
        SqrtBox[
         RowBox[{
          SuperscriptBox["a", "2"], "+", 
          SuperscriptBox["r", "2"], "-", 
          RowBox[{"2", " ", "r", " ", "b", " ", 
           RowBox[{"cos", "(", "\[Theta]", ")"}]}], "+", 
          SuperscriptBox["b", "2"]}]]], 
       RowBox[{"\[DifferentialD]", "r"}]}]}]}], "]"}],
   HoldForm], TraditionalForm]], "Output",
 CellChangeTimes->{{3.539383984972458*^9, 3.5393840377644777`*^9}, {
  3.5393860227690134`*^9, 3.5393860516996684`*^9}}],

Cell[BoxData[
 FormBox[
  RowBox[{"ConditionalExpression", "[", 
   RowBox[{
    RowBox[{
     FractionBox["1", "2"], " ", 
     SuperscriptBox["\[ExponentialE]", 
      RowBox[{
       RowBox[{"-", "\[ImaginaryI]"}], " ", "\[Theta]"}]], " ", 
     RowBox[{"(", 
      RowBox[{
       RowBox[{"-", 
        RowBox[{"b", " ", 
         RowBox[{"(", 
          RowBox[{"1", "+", 
           SuperscriptBox["\[ExponentialE]", 
            RowBox[{"2", " ", "\[ImaginaryI]", " ", "\[Theta]"}]]}], ")"}], 
         " ", 
         RowBox[{"log", "(", 
          RowBox[{
           RowBox[{"2", " ", 
            SqrtBox[
             RowBox[{
              SuperscriptBox["a", "2"], "+", 
              SuperscriptBox["b", "2"]}]]}], "-", 
           RowBox[{"b", " ", 
            SuperscriptBox["\[ExponentialE]", 
             RowBox[{
              RowBox[{"-", "\[ImaginaryI]"}], " ", "\[Theta]"}]], " ", 
            RowBox[{"(", 
             RowBox[{"1", "+", 
              SuperscriptBox["\[ExponentialE]", 
               RowBox[{"2", " ", "\[ImaginaryI]", " ", "\[Theta]"}]]}], 
             ")"}]}]}], ")"}]}]}], "-", 
       RowBox[{"2", " ", 
        SuperscriptBox["\[ExponentialE]", 
         RowBox[{"\[ImaginaryI]", " ", "\[Theta]"}]], " ", 
        RowBox[{"(", 
         RowBox[{
          SqrtBox[
           RowBox[{
            SuperscriptBox["a", "2"], "+", 
            SuperscriptBox["b", "2"]}]], "-", 
          SqrtBox[
           RowBox[{
            SuperscriptBox["a", "2"], "+", 
            SuperscriptBox["b", "2"], "-", 
            RowBox[{"b", " ", 
             SuperscriptBox["\[ExponentialE]", 
              RowBox[{
               RowBox[{"-", "\[ImaginaryI]"}], " ", "\[Theta]"}]], " ", 
             RowBox[{"(", 
              RowBox[{"1", "+", 
               SuperscriptBox["\[ExponentialE]", 
                RowBox[{"2", " ", "\[ImaginaryI]", " ", "\[Theta]"}]]}], 
              ")"}], " ", "R"}], "+", 
            SuperscriptBox["R", "2"]}]]}], ")"}]}], "+", 
       RowBox[{"b", " ", 
        RowBox[{"(", 
         RowBox[{"1", "+", 
          SuperscriptBox["\[ExponentialE]", 
           RowBox[{"2", " ", "\[ImaginaryI]", " ", "\[Theta]"}]]}], ")"}], 
        " ", 
        RowBox[{"log", "(", 
         RowBox[{
          RowBox[{"2", " ", 
           RowBox[{"(", 
            RowBox[{"R", "+", 
             SqrtBox[
              RowBox[{
               SuperscriptBox["a", "2"], "+", 
               SuperscriptBox["b", "2"], "-", 
               RowBox[{"b", " ", 
                SuperscriptBox["\[ExponentialE]", 
                 RowBox[{
                  RowBox[{"-", "\[ImaginaryI]"}], " ", "\[Theta]"}]], " ", 
                RowBox[{"(", 
                 RowBox[{"1", "+", 
                  SuperscriptBox["\[ExponentialE]", 
                   RowBox[{"2", " ", "\[ImaginaryI]", " ", "\[Theta]"}]]}], 
                 ")"}], " ", "R"}], "+", 
               SuperscriptBox["R", "2"]}]]}], ")"}]}], "-", 
          RowBox[{"b", " ", 
           SuperscriptBox["\[ExponentialE]", 
            RowBox[{
             RowBox[{"-", "\[ImaginaryI]"}], " ", "\[Theta]"}]], " ", 
           RowBox[{"(", 
            RowBox[{"1", "+", 
             SuperscriptBox["\[ExponentialE]", 
              RowBox[{"2", " ", "\[ImaginaryI]", " ", "\[Theta]"}]]}], 
            ")"}]}]}], ")"}]}]}], ")"}]}], ",", 
    RowBox[{
     RowBox[{"(", 
      RowBox[{
       RowBox[{"(", 
        RowBox[{
         RowBox[{
          RowBox[{"Re", "(", 
           RowBox[{
            FractionBox[
             RowBox[{"b", " ", 
              RowBox[{"cos", "(", "\[Theta]", ")"}]}], "R"], "-", 
            FractionBox[
             SqrtBox[
              RowBox[{
               RowBox[{"-", 
                RowBox[{"2", " ", 
                 SuperscriptBox["a", "2"]}]}], "+", 
               RowBox[{
                SuperscriptBox["b", "2"], " ", 
                RowBox[{"cos", "(", 
                 RowBox[{"2", " ", "\[Theta]"}], ")"}]}], "-", 
               SuperscriptBox["b", "2"]}]], 
             RowBox[{
              SqrtBox["2"], " ", "R"}]]}], ")"}], "\[GreaterEqual]", "1"}], 
         "\[And]", 
         RowBox[{
          RowBox[{"Re", "(", 
           FractionBox[
            RowBox[{
             RowBox[{
              SqrtBox["2"], " ", 
              SqrtBox[
               RowBox[{
                RowBox[{"-", 
                 RowBox[{"2", " ", 
                  SuperscriptBox["a", "2"]}]}], "+", 
                RowBox[{
                 SuperscriptBox["b", "2"], " ", 
                 RowBox[{"cos", "(", 
                  RowBox[{"2", " ", "\[Theta]"}], ")"}]}], "-", 
                SuperscriptBox["b", "2"]}]]}], "-", 
             RowBox[{"2", " ", "b", " ", 
              RowBox[{"cos", "(", "\[Theta]", ")"}]}]}], "R"], ")"}], 
          "\[LessEqual]", 
          RowBox[{"-", "2"}]}]}], ")"}], "\[Or]", 
       RowBox[{
        RowBox[{"Re", "(", 
         RowBox[{
          FractionBox[
           RowBox[{"b", " ", 
            RowBox[{"cos", "(", "\[Theta]", ")"}]}], "R"], "-", 
          FractionBox[
           SqrtBox[
            RowBox[{
             RowBox[{"-", 
              RowBox[{"2", " ", 
               SuperscriptBox["a", "2"]}]}], "+", 
             RowBox[{
              SuperscriptBox["b", "2"], " ", 
              RowBox[{"cos", "(", 
               RowBox[{"2", " ", "\[Theta]"}], ")"}]}], "-", 
             SuperscriptBox["b", "2"]}]], 
           RowBox[{
            SqrtBox["2"], " ", "R"}]]}], ")"}], "\[LessEqual]", "0"}], 
       "\[Or]", 
       RowBox[{
        FractionBox[
         RowBox[{
          RowBox[{
           SqrtBox["2"], " ", 
           SqrtBox[
            RowBox[{
             RowBox[{"-", 
              RowBox[{"2", " ", 
               SuperscriptBox["a", "2"]}]}], "+", 
             RowBox[{
              SuperscriptBox["b", "2"], " ", 
              RowBox[{"cos", "(", 
               RowBox[{"2", " ", "\[Theta]"}], ")"}]}], "-", 
             SuperscriptBox["b", "2"]}]]}], "-", 
          RowBox[{"2", " ", "b", " ", 
           RowBox[{"cos", "(", "\[Theta]", ")"}]}]}], "R"], "\[NotElement]", 
        TagBox["\[DoubleStruckCapitalR]",
         Function[{}, Reals]]}]}], ")"}], "\[And]", 
     RowBox[{"(", 
      RowBox[{
       RowBox[{"(", 
        RowBox[{
         RowBox[{
          RowBox[{"Re", "(", 
           FractionBox[
            RowBox[{
             RowBox[{
              SqrtBox["2"], " ", 
              SqrtBox[
               RowBox[{
                RowBox[{"-", 
                 RowBox[{"2", " ", 
                  SuperscriptBox["a", "2"]}]}], "+", 
                RowBox[{
                 SuperscriptBox["b", "2"], " ", 
                 RowBox[{"cos", "(", 
                  RowBox[{"2", " ", "\[Theta]"}], ")"}]}], "-", 
                SuperscriptBox["b", "2"]}]]}], "+", 
             RowBox[{"2", " ", "b", " ", 
              RowBox[{"cos", "(", "\[Theta]", ")"}]}]}], "R"], ")"}], 
          "\[GreaterEqual]", "2"}], "\[And]", 
         RowBox[{
          RowBox[{"Re", "(", 
           RowBox[{
            FractionBox[
             SqrtBox[
              RowBox[{
               RowBox[{"-", 
                RowBox[{"2", " ", 
                 SuperscriptBox["a", "2"]}]}], "+", 
               RowBox[{
                SuperscriptBox["b", "2"], " ", 
                RowBox[{"cos", "(", 
                 RowBox[{"2", " ", "\[Theta]"}], ")"}]}], "-", 
               SuperscriptBox["b", "2"]}]], 
             RowBox[{
              SqrtBox["2"], " ", "R"}]], "+", 
            FractionBox[
             RowBox[{"b", " ", 
              RowBox[{"cos", "(", "\[Theta]", ")"}]}], "R"]}], ")"}], 
          "\[GreaterEqual]", "1"}]}], ")"}], "\[Or]", 
       RowBox[{
        RowBox[{"Re", "(", 
         RowBox[{
          FractionBox[
           SqrtBox[
            RowBox[{
             RowBox[{"-", 
              RowBox[{"2", " ", 
               SuperscriptBox["a", "2"]}]}], "+", 
             RowBox[{
              SuperscriptBox["b", "2"], " ", 
              RowBox[{"cos", "(", 
               RowBox[{"2", " ", "\[Theta]"}], ")"}]}], "-", 
             SuperscriptBox["b", "2"]}]], 
           RowBox[{
            SqrtBox["2"], " ", "R"}]], "+", 
          FractionBox[
           RowBox[{"b", " ", 
            RowBox[{"cos", "(", "\[Theta]", ")"}]}], "R"]}], ")"}], 
        "\[LessEqual]", "0"}], "\[Or]", 
       RowBox[{
        FractionBox[
         RowBox[{
          RowBox[{
           SqrtBox["2"], " ", 
           SqrtBox[
            RowBox[{
             RowBox[{"-", 
              RowBox[{"2", " ", 
               SuperscriptBox["a", "2"]}]}], "+", 
             RowBox[{
              SuperscriptBox["b", "2"], " ", 
              RowBox[{"cos", "(", 
               RowBox[{"2", " ", "\[Theta]"}], ")"}]}], "-", 
             SuperscriptBox["b", "2"]}]]}], "+", 
          RowBox[{"2", " ", "b", " ", 
           RowBox[{"cos", "(", "\[Theta]", ")"}]}]}], "R"], "\[NotElement]", 
        TagBox["\[DoubleStruckCapitalR]",
         Function[{}, Reals]]}]}], ")"}]}]}], "]"}], 
  TraditionalForm]], "Output",
 CellChangeTimes->{{3.539383984972458*^9, 3.5393840377644777`*^9}, 
   3.5393860227690134`*^9, 3.53938614369093*^9}]
}, Open  ]],

Cell[BoxData[""], "Input",
 CellChangeTimes->{{3.5393844654569407`*^9, 3.53938446807009*^9}}],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{
  RowBox[{"(*", " ", 
   RowBox[{"for", " ", "my", " ", 
    RowBox[{"post", ":", " ", 
     ButtonBox[
      RowBox[{
       RowBox[{"http", ":"}], "//", 
       RowBox[{
        RowBox[{
         RowBox[{
          RowBox[{
           RowBox[{"mathematica", ".", "stackexchange", ".", "com"}], "/", 
           "questions"}], "/", "2404"}], "/", "how"}], "-", "to", "-", 
        "specify", "-", "assumptions", "-", "before", "-", "evaluation"}]}],
      BaseStyle->"Hyperlink",
      ButtonData->{
        URL[
        "http://mathematica.stackexchange.com/questions/2404/how-to-specify-\
assumptions-before-evaluation"], None},
      ButtonNote->
       "http://mathematica.stackexchange.com/questions/2404/how-to-specify-\
assumptions-before-evaluation"]}]}], " ", "*)"}], "\[IndentingNewLine]", 
  "\[IndentingNewLine]", 
  RowBox[{
   RowBox[{"Clear", "[", 
    RowBox[{
    "ii", ",", " ", "u", ",", " ", "z", ",", " ", "l", ",", " ", "jj"}], 
    "]"}], "\[IndentingNewLine]", 
   RowBox[{"ii", " ", "=", " ", 
    RowBox[{"Integrate", "[", " ", 
     RowBox[{
      RowBox[{"1", " ", "/", " ", 
       RowBox[{"Sqrt", "[", 
        RowBox[{
         RowBox[{"z", "^", "2"}], " ", "+", " ", 
         RowBox[{"u", "^", "2"}]}], "]"}]}], ",", 
      RowBox[{"{", 
       RowBox[{"z", ",", " ", 
        RowBox[{"-", "l"}], ",", " ", "l"}], "}"}]}], "]"}]}], 
   "\[IndentingNewLine]", 
   RowBox[{"jj", " ", "=", " ", 
    RowBox[{"FullSimplify", "[", 
     RowBox[{"ii", ",", " ", 
      RowBox[{
       RowBox[{"u", " ", ">", " ", "0"}], " ", "&&", " ", 
       RowBox[{"l", " ", ">", " ", "0"}], "&&", " ", 
       RowBox[{"Element", "[", " ", 
        RowBox[{
         RowBox[{"u", " ", "|", " ", "l"}], ",", " ", "Reals"}], "]"}]}]}], 
     " ", "]"}]}]}]}]], "Input",
 CellChangeTimes->{{3.539384713049102*^9, 3.5393847155222435`*^9}, {
  3.539385145352828*^9, 3.5393851970007825`*^9}}],

Cell[BoxData[
 RowBox[{"ConditionalExpression", "[", 
  RowBox[{
   RowBox[{
    RowBox[{"-", 
     RowBox[{"Log", "[", 
      RowBox[{
       RowBox[{"-", "l"}], "+", 
       SqrtBox[
        RowBox[{
         SuperscriptBox["l", "2"], "+", 
         SuperscriptBox["u", "2"]}]]}], "]"}]}], "+", 
    RowBox[{"Log", "[", 
     RowBox[{"l", "+", 
      SqrtBox[
       RowBox[{
        SuperscriptBox["l", "2"], "+", 
        SuperscriptBox["u", "2"]}]]}], "]"}]}], ",", 
   RowBox[{
    RowBox[{
     RowBox[{"Re", "[", 
      FractionBox["u", "l"], "]"}], "\[NotEqual]", "0"}], "||", 
    RowBox[{
     RowBox[{"Im", "[", 
      FractionBox["u", "l"], "]"}], "\[GreaterEqual]", "1"}], "||", 
    RowBox[{
     RowBox[{"Im", "[", 
      FractionBox["u", "l"], "]"}], "\[LessEqual]", 
     RowBox[{"-", "1"}]}]}]}], "]"}]], "Output",
 CellChangeTimes->{3.539384656004839*^9, 3.5393847258578343`*^9}],

Cell[BoxData[
 RowBox[{"Log", "[", 
  FractionBox[
   RowBox[{
    SuperscriptBox["u", "2"], "+", 
    RowBox[{"2", " ", "l", " ", 
     RowBox[{"(", 
      RowBox[{"l", "+", 
       SqrtBox[
        RowBox[{
         SuperscriptBox["l", "2"], "+", 
         SuperscriptBox["u", "2"]}]]}], ")"}]}]}], 
   SuperscriptBox["u", "2"]], "]"}]], "Output",
 CellChangeTimes->{3.539384656004839*^9, 3.539384726961898*^9}]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[{
 RowBox[{"Clear", "[", 
  RowBox[{
  "ii", ",", " ", "hh", ",", " ", "a", ",", " ", "r", ",", " ", "b", ",", " ",
    "\[Theta]"}], "]"}], "\[IndentingNewLine]", 
 RowBox[{"hh", " ", "=", " ", 
  RowBox[{
   RowBox[{"HoldForm", "[", 
    RowBox[{"Integrate", "[", 
     RowBox[{
      RowBox[{"1", " ", "/", 
       RowBox[{"Sqrt", "[", 
        RowBox[{
         RowBox[{"a", "^", "2"}], " ", "+", " ", 
         RowBox[{"r", "^", "2"}], " ", "-", " ", 
         RowBox[{"2", " ", "r", " ", "b", " ", 
          RowBox[{"Cos", "[", "\[Theta]", "]"}]}], " ", "+", " ", 
         RowBox[{"b", "^", "2"}]}], "]"}]}], ",", " ", 
      RowBox[{"{", 
       RowBox[{"\[Theta]", ",", " ", "0", ",", " ", 
        RowBox[{"2", " ", "Pi"}]}], "}"}], ",", " ", 
      RowBox[{"Assumptions", " ", "\[Rule]", " ", 
       RowBox[{"Element", "[", 
        RowBox[{
         RowBox[{
         "a", " ", "|", " ", "b", " ", "|", " ", "r", " ", "|", " ", 
          "\[Theta]"}], ",", " ", "Reals"}], "]"}]}]}], "]"}], "]"}], " ", "//",
    " ", "TraditionalForm"}]}], "\[IndentingNewLine]", 
 RowBox[{"ii", " ", "=", " ", 
  RowBox[{"ReleaseHold", "[", "hh", "]"}]}], "\[IndentingNewLine]", 
 RowBox[{"FullSimplify", "[", 
  RowBox[{"ii", ",", 
   RowBox[{
    RowBox[{
     RowBox[{"(", 
      RowBox[{"r", "-", " ", "b"}], ")"}], "^", "2"}], " ", ">", " ", "0"}]}],
   "]"}]}], "Input",
 CellChangeTimes->{{3.5393853360507355`*^9, 3.5393853449492445`*^9}, {
  3.5393854047236633`*^9, 3.5393854484521646`*^9}, {3.539386252897176*^9, 
  3.539386257985467*^9}, {3.539386292033415*^9, 3.539386312916609*^9}, {
  3.5393864855614834`*^9, 3.5393865252257524`*^9}}],

Cell[BoxData[
 FormBox[
  TagBox[
   RowBox[{"Integrate", "[", 
    RowBox[{
     FractionBox["1", 
      SqrtBox[
       RowBox[{
        SuperscriptBox["a", "2"], "+", 
        SuperscriptBox["r", "2"], "-", 
        RowBox[{"2", " ", "r", " ", "b", " ", 
         RowBox[{"cos", "(", "\[Theta]", ")"}]}], "+", 
        SuperscriptBox["b", "2"]}]]], ",", 
     RowBox[{"{", 
      RowBox[{"\[Theta]", ",", "0", ",", 
       RowBox[{"2", " ", "\[Pi]"}]}], "}"}], ",", 
     RowBox[{"Assumptions", "\[Rule]", 
      RowBox[{
       RowBox[{"(", 
        RowBox[{"a", "|", "b", "|", "r", "|", "\[Theta]"}], ")"}], 
       "\[Element]", 
       TagBox["\[DoubleStruckCapitalR]",
        Function[{}, Reals]]}]}]}], "]"}],
   HoldForm], TraditionalForm]], "Output",
 CellChangeTimes->{
  3.5393853526416845`*^9, {3.539385432200235*^9, 3.539385451451336*^9}, 
   3.5393863150597315`*^9}],

Cell[BoxData["$Aborted"], "Output",
 CellChangeTimes->{
  3.5393853526416845`*^9, {3.539385432200235*^9, 3.539385451451336*^9}, 
   3.539387979836943*^9}]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[""], "Input",
 CellChangeTimes->{{3.5393854863253307`*^9, 3.5393855342640724`*^9}, {
   3.5393856580181513`*^9, 3.539385684370658*^9}, 3.539386300646907*^9, 
   3.539386482911332*^9}],

Cell[BoxData[
 FormBox[
  RowBox[{
   FractionBox[
    RowBox[{"2", " ", 
     TemplateBox[{RowBox[{"-", 
         FractionBox[
          RowBox[{"4", " ", "b", " ", "r"}], 
          RowBox[{
            SuperscriptBox["a", "2"], "+", 
            SuperscriptBox[
             RowBox[{"(", 
               RowBox[{"b", "-", "r"}], ")"}], "2"]}]]}]},
      "EllipticK"]}], 
    SqrtBox[
     RowBox[{
      SuperscriptBox["a", "2"], "+", 
      SuperscriptBox[
       RowBox[{"(", 
        RowBox[{"b", "-", "r"}], ")"}], "2"]}]]], "+", 
   FractionBox[
    RowBox[{"2", " ", 
     TemplateBox[{FractionBox[
        RowBox[{"4", " ", "b", " ", "r"}], 
        RowBox[{
          SuperscriptBox["a", "2"], "+", 
          SuperscriptBox[
           RowBox[{"(", 
             RowBox[{"b", "+", "r"}], ")"}], "2"]}]]},
      "EllipticK"]}], 
    SqrtBox[
     RowBox[{
      SuperscriptBox["a", "2"], "+", 
      SuperscriptBox[
       RowBox[{"(", 
        RowBox[{"b", "+", "r"}], ")"}], "2"]}]]]}], 
  TraditionalForm]], "Output",
 CellChangeTimes->{3.5393855361141787`*^9, 3.539385685935748*^9}]
}, Open  ]]
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
Cell[1257, 32, 131, 3, 83, "Title"],
Cell[1391, 37, 8500, 275, 695, "Text"],
Cell[CellGroupData[{
Cell[9916, 316, 156, 3, 36, "Subsection"],
Cell[10075, 321, 4844, 145, 291, "Text"]
}, Open  ]],
Cell[CellGroupData[{
Cell[14956, 471, 135, 3, 71, "Section"],
Cell[15094, 476, 669, 16, 92, "Input"],
Cell[15766, 494, 167, 3, 52, "Input"],
Cell[15936, 499, 154, 2, 31, "Input"],
Cell[16093, 503, 278, 10, 32, "Input"],
Cell[16374, 515, 276, 7, 21, "Message"],
Cell[16653, 524, 520, 18, 30, "Input"],
Cell[17176, 544, 621, 16, 32, "Input"],
Cell[17800, 562, 124, 2, 30, "Input"],
Cell[17927, 566, 1114, 28, 31, "Input"],
Cell[19044, 596, 1199, 34, 57, "Input"],
Cell[20246, 632, 122, 2, 30, "Input"],
Cell[CellGroupData[{
Cell[20393, 638, 835, 23, 52, "Input"],
Cell[21231, 663, 4653, 123, 98, "Output"]
}, Open  ]],
Cell[CellGroupData[{
Cell[25921, 791, 987, 25, 54, "Input"],
Cell[26911, 818, 2995, 86, 59, "Output"],
Cell[29909, 906, 2720, 78, 59, "Output"]
}, Open  ]],
Cell[32644, 987, 1685, 48, 83, "Input"],
Cell[34332, 1037, 1494, 45, 59, InheritFromParent],
Cell[35829, 1084, 1647, 47, 66, InheritFromParent],
Cell[37479, 1133, 124, 2, 30, InheritFromParent],
Cell[CellGroupData[{
Cell[37628, 1139, 709, 19, 31, "Input"],
Cell[38340, 1160, 2944, 87, 55, "Output"]
}, Open  ]],
Cell[CellGroupData[{
Cell[41321, 1252, 975, 26, 33, "Input"],
Cell[42299, 1280, 1908, 56, 57, "Output"]
}, Open  ]],
Cell[44222, 1339, 969, 26, 72, "Input"],
Cell[45194, 1367, 500, 14, 45, InheritFromParent],
Cell[45697, 1383, 905, 28, 64, "Output"],
Cell[CellGroupData[{
Cell[46627, 1415, 194, 4, 52, "Input"],
Cell[46824, 1421, 879, 28, 64, "Output"]
}, Open  ]],
Cell[47718, 1452, 447, 12, 31, "Input"],
Cell[48168, 1466, 878, 30, 59, InheritFromParent],
Cell[49049, 1498, 940, 32, 68, InheritFromParent],
Cell[49992, 1532, 915, 31, 59, InheritFromParent],
Cell[50910, 1565, 122, 2, 30, InheritFromParent],
Cell[51035, 1569, 1309, 45, 68, "Input"],
Cell[52347, 1616, 1928, 59, 96, InheritFromParent],
Cell[54278, 1677, 1881, 56, 80, "Output"],
Cell[56162, 1735, 1346, 41, 96, InheritFromParent],
Cell[57511, 1778, 1253, 38, 80, "Output"],
Cell[CellGroupData[{
Cell[58789, 1820, 136, 2, 31, "Input"],
Cell[58928, 1824, 77, 1, 30, "Output"]
}, Open  ]],
Cell[CellGroupData[{
Cell[59042, 1830, 2262, 58, 112, "Input"],
Cell[61307, 1890, 252, 6, 30, "Output"],
Cell[61562, 1898, 150, 2, 30, "Output"]
}, Open  ]],
Cell[61727, 1903, 615, 18, 47, InheritFromParent],
Cell[62345, 1923, 713, 17, 31, "Input"],
Cell[63061, 1942, 630, 18, 47, InheritFromParent],
Cell[63694, 1962, 726, 21, 47, InheritFromParent],
Cell[64423, 1985, 636, 18, 47, InheritFromParent],
Cell[65062, 2005, 121, 2, 30, InheritFromParent],
Cell[65186, 2009, 660, 16, 31, "Input"],
Cell[CellGroupData[{
Cell[65871, 2029, 1748, 43, 95, "Input"],
Cell[67622, 2074, 1117, 31, 70, "Output"],
Cell[68742, 2107, 9271, 259, 194, "Output"]
}, Open  ]],
Cell[78028, 2369, 93, 1, 31, "Input"],
Cell[CellGroupData[{
Cell[78146, 2374, 1925, 52, 112, "Input"],
Cell[80074, 2428, 899, 29, 46, "Output"],
Cell[80976, 2459, 413, 13, 64, "Output"]
}, Open  ]],
Cell[CellGroupData[{
Cell[81426, 2477, 1660, 40, 92, "Input"],
Cell[83089, 2519, 883, 26, 73, "Output"],
Cell[83975, 2547, 154, 3, 30, "Output"]
}, Open  ]],
Cell[CellGroupData[{
Cell[84166, 2555, 196, 3, 31, "Input"],
Cell[84365, 2560, 1097, 37, 88, "Output"]
}, Open  ]]
}, Open  ]]
}, Open  ]]
}
]
*)

(* End of internal cache information *)

(* NotebookSignature JxD62OTs196VADKSxDnNLSyx *)
