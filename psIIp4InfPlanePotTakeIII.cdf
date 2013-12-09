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
NotebookDataLength[     61046,       1878]
NotebookOptionsPosition[     60107,       1832]
NotebookOutlinePosition[     60449,       1847]
CellTagsIndexPosition[     60406,       1844]
WindowFrame->Normal*)

(* Beginning of Notebook Content *)
Notebook[{

Cell[CellGroupData[{
Cell["\<\
Potential for an infinitesimal width plane.  Take III.\
\>", "Title",
 CellChangeTimes->{{3.5390476089522343`*^9, 3.5390476265302396`*^9}, {
  3.53905388213704*^9, 3.5390538842141585`*^9}}],

Cell[TextData[{
 "I\[CloseCurlyQuote]d like to attempt again to evaluate the potential for \
infinite plane distribution.  The general form of our potential takes the \
form\n\n ",
 Cell[BoxData[
  FormBox[
   StyleBox[
    RowBox[{
     RowBox[{"\[Phi]", "(", 
      InterpretationBox[
       StyleBox["x",
        StripOnInput->False,
        FontFamily->"Helvetica",
        FontWeight->Bold],
       $CellContext`bX], ")"}], "=", 
     RowBox[{"G", " ", "\[Rho]", " ", 
      RowBox[{"\[Integral]", 
       RowBox[{
        FormBox[
         FractionBox["1", 
          TemplateBox[{RowBox[{
              InterpretationBox[
               StyleBox[
               "x", StripOnInput -> False, FontFamily -> "Helvetica", 
                FontWeight -> Bold], $CellContext`bX], "-", 
              SuperscriptBox[
               InterpretationBox[
                StyleBox[
                "x", StripOnInput -> False, FontFamily -> "Helvetica", 
                 FontWeight -> Bold], $CellContext`bX], "\[Prime]", 
               MultilineFunction -> None]}]},
           "Abs"]],
         TraditionalForm], 
        RowBox[{"\[DifferentialD]", 
         SuperscriptBox["V", "\[Prime]",
          MultilineFunction->None]}]}]}]}]}],
    FontSize->24], TraditionalForm]]],
 "\n \n We want to evaluate this with cylindrical coordinates ",
 Cell[BoxData[
  FormBox[
   RowBox[{"(", 
    RowBox[{
     RowBox[{"r", "'"}], ",", " ", 
     RowBox[{"\[Theta]", "'"}], ",", " ", 
     RowBox[{"z", "'"}]}], ")"}], TraditionalForm]]],
 " , for a width \[Epsilon], and radius r, at distance z from the plane.\n \n",
 Cell[BoxData[
  StyleBox[
   TagBox[
    RowBox[{
     RowBox[{"\[Phi]", 
      RowBox[{"(", 
       RowBox[{"z", ",", " ", "\[Epsilon]", ",", " ", "r"}], ")"}]}], "=", 
     " ", 
     RowBox[{"2", " ", "\[Pi]", " ", "G", " ", "\[Sigma]", " ", 
      FormBox[
       FractionBox["1", "\[Epsilon]"],
       TraditionalForm], 
      RowBox[{
       SubsuperscriptBox["\[Integral]", 
        RowBox[{
         RowBox[{"r", "'"}], " ", "=", " ", "0"}], "r"], 
       RowBox[{
        RowBox[{"\[DifferentialD]", 
         SuperscriptBox["r", "\[Prime]",
          MultilineFunction->None]}], 
        RowBox[{
         SubsuperscriptBox["\[Integral]", 
          RowBox[{
           RowBox[{"z", "'"}], " ", "=", " ", "0"}], "\[Epsilon]"], 
         RowBox[{
          RowBox[{"\[DifferentialD]", 
           SuperscriptBox["z", "\[Prime]",
            MultilineFunction->None]}], 
          FractionBox[
           SuperscriptBox["r", "\[Prime]",
            MultilineFunction->None], 
           SqrtBox[
            RowBox[{
             SuperscriptBox[
              RowBox[{"(", 
               RowBox[{"z", "-", 
                SuperscriptBox["z", "\[Prime]",
                 MultilineFunction->None]}], ")"}], "2"], "+", 
             SuperscriptBox[
              RowBox[{"(", 
               SuperscriptBox["r", "\[Prime]",
                MultilineFunction->None], ")"}], "2"]}]]]}]}]}]}]}]}],
    HoldForm],
   FontSize->18]], "Input",
  CellChangeTimes->{{3.539049089473915*^9, 3.539049122975831*^9}}],
 "\n\nWith the assumption that we will take the limits ",
 Cell[BoxData[
  FormBox[
   RowBox[{"\[Epsilon]", " ", "\[Rule]", " ", "0"}], TraditionalForm]]],
 ", and ",
 Cell[BoxData[
  FormBox[
   RowBox[{"r", " ", "\[Rule]", " ", 
    RowBox[{"\[Infinity]", ".", "  "}]}], TraditionalForm]]],
 "With ",
 Cell[BoxData[
  FormBox[
   RowBox[{"r", "=", " ", 
    FormBox[
     FractionBox["c", 
      SqrtBox["e"]],
     TraditionalForm]}], TraditionalForm]]],
 ", this does not convege.  How about with ",
 Cell[BoxData[
  FormBox[
   RowBox[{"r", "=", " ", 
    FormBox[
     FractionBox["c", "e"],
     TraditionalForm]}], TraditionalForm]]],
 ", ?\n\nPerforming the r\[CloseCurlyQuote] integration (with  ",
 Cell[BoxData[
  FormBox[
   RowBox[{"r", "=", " ", 
    FormBox[
     FractionBox["c", "e"],
     TraditionalForm]}], TraditionalForm]]],
 ") we find\n\n",
 Cell[BoxData[
  StyleBox[
   TagBox[
    RowBox[{
     RowBox[{"\[Phi]", 
      RowBox[{"(", 
       RowBox[{"z", ",", " ", "\[Epsilon]"}], ")"}]}], "=", " ", 
     RowBox[{"2", " ", "\[Pi]", " ", "G", " ", "\[Sigma]", " ", 
      FormBox[
       FractionBox["1", "\[Epsilon]"],
       TraditionalForm], 
      RowBox[{
       SubsuperscriptBox["\[Integral]", 
        RowBox[{
         RowBox[{"z", "'"}], " ", "=", " ", "0"}], "\[Epsilon]"], 
       RowBox[{
        RowBox[{"(", 
         RowBox[{
          SqrtBox[
           RowBox[{
            FractionBox[
             SuperscriptBox["c", "2"], 
             SuperscriptBox["\[Epsilon]", "2"]], "+", 
            SuperscriptBox[
             RowBox[{"(", 
              RowBox[{"z", "-", 
               RowBox[{"z", "'"}]}], ")"}], "2"]}]], "-", 
          SqrtBox[
           SuperscriptBox[
            RowBox[{"(", 
             RowBox[{"z", "-", 
              RowBox[{"z", "'"}]}], ")"}], "2"]]}], ")"}], 
        RowBox[{"\[DifferentialD]", 
         SuperscriptBox["z", "\[Prime]",
          MultilineFunction->None]}]}]}]}]}],
    HoldForm],
   FontSize->18]], "Input",
  CellChangeTimes->{{3.539049089473915*^9, 3.539049122975831*^9}}],
 "\n\nAttempting to let ",
 StyleBox["Mathematica",
  FontSlant->"Italic"],
 " evaluate this takes a long time.  Long enough that I aborted the attempt \
to evaluate it.\n\nInstead, first evaluating the z\[CloseCurlyQuote] integral \
we have\n\n",
 Cell[BoxData[
  FormBox[
   RowBox[{
    RowBox[{"\[Phi]", "(", 
     RowBox[{"z", ",", " ", "\[Epsilon]", ",", " ", "r"}], ")"}], "=", 
    FractionBox[
     RowBox[{"2", " ", "\[Pi]", " ", "G", " ", "\[Sigma]"}], "\[Epsilon]"]}], 
   TraditionalForm]],
  FontSize->18],
 Cell[BoxData[
  FormBox[
   RowBox[{" ", 
    RowBox[{
     SubsuperscriptBox["\[Integral]", 
      RowBox[{
       RowBox[{"r", "'"}], " ", "=", " ", "0"}], 
      RowBox[{"c", "/", "\[Epsilon]"}]], 
     RowBox[{"(", 
      RowBox[{
       RowBox[{"log", "(", 
        RowBox[{
         SqrtBox[
          RowBox[{
           SuperscriptBox[
            RowBox[{"(", 
             SuperscriptBox["r", "\[Prime]",
              MultilineFunction->None], ")"}], "2"], "+", 
           SuperscriptBox["z", "2"]}]], "+", "z"}], ")"}], "-", 
       RowBox[{"log", "(", 
        RowBox[{
         SqrtBox[
          RowBox[{
           SuperscriptBox[
            RowBox[{"(", 
             SuperscriptBox["r", "\[Prime]",
              MultilineFunction->None], ")"}], "2"], "+", 
           SuperscriptBox[
            RowBox[{"(", 
             RowBox[{"z", "-", "\[Epsilon]"}], ")"}], "2"]}]], "+", "z", "-", 
         "\[Epsilon]"}], ")"}]}], ")"}]}]}], TraditionalForm]],
  FontSize->18],
 StyleBox[" ",
  FontSize->18],
 Cell[BoxData[
  RowBox[{"\[DifferentialD]", 
   SuperscriptBox["r", "\[Prime]",
    MultilineFunction->None]}]],
  CellChangeTimes->{{3.539049089473915*^9, 3.539049122975831*^9}},
  FontSize->18],
 "\n\nThis second integral can then be evaluated in reasonable time:\n\n",
 Cell[BoxData[{
  FormBox[
   RowBox[{"\[Phi]", "(", 
    RowBox[{"z", ",", " ", "\[Epsilon]"}], ")"}], 
   TraditionalForm], "\[IndentingNewLine]", 
  FormBox[
   RowBox[{"=", " ", 
    RowBox[{
     FractionBox[
      RowBox[{"2", " ", "\[Pi]", " ", "G", " ", "\[Sigma]"}], 
      SuperscriptBox["\[Epsilon]", "2"]], " ", 
     RowBox[{"(", 
      RowBox[{
       RowBox[{"c", " ", 
        RowBox[{"log", "(", 
         FractionBox[
          RowBox[{
           SqrtBox[
            RowBox[{
             FractionBox[
              SuperscriptBox["c", "2"], 
              SuperscriptBox["\[Epsilon]", "2"]], "+", 
             SuperscriptBox["z", "2"]}]], "+", "z"}], 
          RowBox[{
           SqrtBox[
            RowBox[{
             FractionBox[
              SuperscriptBox["c", "2"], 
              SuperscriptBox["\[Epsilon]", "2"]], "+", 
             SuperscriptBox[
              RowBox[{"(", 
               RowBox[{"z", "-", "\[Epsilon]"}], ")"}], "2"]}]], "+", "z", 
           "-", "\[Epsilon]"}]], ")"}]}], "+", 
       RowBox[{"\[Epsilon]", " ", 
        RowBox[{"(", 
         RowBox[{
          RowBox[{"z", " ", 
           RowBox[{"log", "(", 
            FractionBox[
             RowBox[{
              RowBox[{"(", 
               RowBox[{"z", "-", "\[Epsilon]"}], ")"}], " ", 
              RowBox[{"(", 
               RowBox[{
                SqrtBox[
                 RowBox[{
                  SuperscriptBox["c", "2"], "+", 
                  RowBox[{
                   SuperscriptBox["z", "2"], " ", 
                   SuperscriptBox["\[Epsilon]", "2"]}]}]], "+", "c"}], 
               ")"}]}], "z"], ")"}]}], "+", 
          RowBox[{
           RowBox[{"(", 
            RowBox[{"\[Epsilon]", "-", "z"}], ")"}], " ", 
           RowBox[{"log", "(", 
            RowBox[{
             SqrtBox[
              RowBox[{
               SuperscriptBox["c", "2"], "+", 
               RowBox[{
                SuperscriptBox["\[Epsilon]", "2"], " ", 
                SuperscriptBox[
                 RowBox[{"(", 
                  RowBox[{"z", "-", "\[Epsilon]"}], ")"}], "2"]}]}]], "+", 
             "c"}], ")"}]}], "-", 
          RowBox[{"\[Epsilon]", " ", 
           RowBox[{"log", "(", 
            RowBox[{"\[Epsilon]", " ", 
             RowBox[{"(", 
              RowBox[{"z", "-", "\[Epsilon]"}], ")"}]}], ")"}]}]}], ")"}]}]}],
       ")"}]}]}], TraditionalForm], "\[IndentingNewLine]", 
  FormBox[
   RowBox[{"=", 
    RowBox[{"2", " ", "\[Pi]", " ", "G", " ", "\[Sigma]", " ", 
     RowBox[{"(", 
      RowBox[{
       RowBox[{
        FormBox[
         FractionBox["c", 
          SuperscriptBox["\[Epsilon]", "2"]],
         TraditionalForm], 
        RowBox[{"log", "(", 
         FormBox[
          FractionBox[
           RowBox[{
            SqrtBox[
             RowBox[{
              SuperscriptBox["c", "2"], "+", 
              RowBox[{
               SuperscriptBox["z", "2"], " ", 
               SuperscriptBox["\[Epsilon]", "2"]}]}]], "+", 
            RowBox[{"z", " ", "\[Epsilon]"}]}], 
           RowBox[{
            SqrtBox[
             RowBox[{
              SuperscriptBox["c", "2"], "+", 
              SuperscriptBox[
               RowBox[{
                SuperscriptBox["\[Epsilon]", "2"], "(", 
                RowBox[{"z", "-", "\[Epsilon]"}], ")"}], "2"]}]], "+", 
            RowBox[{"\[Epsilon]", "(", 
             RowBox[{"z", "-", "\[Epsilon]"}], ")"}]}]],
          TraditionalForm], ")"}]}], "+", 
       RowBox[{
        FormBox[
         FractionBox["z", "\[Epsilon]"],
         TraditionalForm], " ", 
        RowBox[{"log", "(", 
         FractionBox[
          RowBox[{
           RowBox[{"(", 
            RowBox[{"z", "-", "\[Epsilon]"}], ")"}], " ", 
           RowBox[{"(", 
            RowBox[{
             SqrtBox[
              RowBox[{
               SuperscriptBox["c", "2"], "+", 
               RowBox[{
                SuperscriptBox["z", "2"], " ", 
                SuperscriptBox["\[Epsilon]", "2"]}]}]], "+", "c"}], ")"}]}], 
          RowBox[{"z", "(", 
           RowBox[{
            SqrtBox[
             RowBox[{
              SuperscriptBox["c", "2"], "+", 
              RowBox[{
               SuperscriptBox["\[Epsilon]", "2"], " ", 
               SuperscriptBox[
                RowBox[{"(", 
                 RowBox[{"z", "-", "\[Epsilon]"}], ")"}], "2"]}]}]], "+", 
            "c"}], ")"}]], ")"}]}], "+", " ", 
       RowBox[{"log", "(", 
        FractionBox[
         RowBox[{
          SqrtBox[
           RowBox[{
            SuperscriptBox["c", "2"], "+", 
            RowBox[{
             SuperscriptBox["\[Epsilon]", "2"], " ", 
             SuperscriptBox[
              RowBox[{"(", 
               RowBox[{"z", "-", "\[Epsilon]"}], ")"}], "2"]}]}]], "+", "c"}], 
         RowBox[{"\[Epsilon]", " ", 
          RowBox[{"(", 
           RowBox[{"z", "-", "\[Epsilon]"}], ")"}]}]], ")"}]}], ")"}]}]}], 
   TraditionalForm]}],
  FontSize->24],
 "\n\n   Does this have a limit as \[Epsilon] \[Rule] 0?  No, the last term \
is clearly divergent for ",
 Cell[BoxData[
  FormBox[
   RowBox[{"c", " ", "\[NotEqual]", " ", "0"}], TraditionalForm]]],
 ".\n"
}], "Text",
 CellChangeTimes->CompressedData["
1:eJwd0EsoAwAABuBtDSFLSZRlo5lRSh6jedSG2SatvFoj2rJYFJsdzDwPMjs4
aF6jIcvYYcWBFXGQ52wsOVjJu0bJ40CUx/4d/r7T/x/+BHlbhYJEIBBo/sD4
UoEpo/6JS90Jm4Ock0cL9PZZduDxtMAFiw36M8iI5t/B1BvWPRTR9DWZfgs5
PAlk2JMUcGg9qBUalDFaSPnM74LUs0oD9B3+muA2ZZ+c5Vd/0BAFI4XtcXBv
lxoPezfycuCxURSQ7poUwsESWxm8JW2JITvrKGDxe4oMUojkxsDupFUFvbZa
DZwr1XXC4NjTHjjjmR2Gy7s8A5R1LIzB1KK1KfjSInNCyXeiB5JW3dcwrfnL
B3PDE59hFdP6A40fF8Rsv5oCYSg0c9QR0O1kseACM7kabkrFUmhbU8mhY8Cl
gOk19BbYr3hTwdfRFW2grzzXQfs8exx288kTsE79YIZLKocFNl0tOvn4LYR7
DstHpJfQ4db+wX8biOSD
  "]],

Cell[CellGroupData[{

Cell["Calculations for above.", "Section",
 CellChangeTimes->{{3.53905367425815*^9, 3.5390536802014894`*^9}}],

Cell[BoxData[{
 RowBox[{"Clear", "[", 
  RowBox[{
  "ii", ",", " ", "jj", ",", " ", "kk", ",", " ", "mm", ",", " ", "rr", ",", 
   " ", "zz", ",", " ", "r", ",", " ", "e", ",", " ", "scale"}], " ", 
  "]"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{"$Post", "=."}], " ", ";", " ", 
  RowBox[{"(*", " ", 
   RowBox[{
   "clear", " ", "use", " ", "of", " ", "TraditionalForm", " ", "override"}], 
   " ", "*)"}], "\[IndentingNewLine]", 
  RowBox[{"e", " ", ":=", " ", "\[Epsilon]"}]}], "\[IndentingNewLine]", 
 RowBox[{"scale", " ", ":=", " ", 
  RowBox[{
  "2", " ", "Pi", " ", "G", " ", "\[Sigma]"}]}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{"(*", 
   RowBox[{"ii", " ", ":=", " ", 
    RowBox[{
     RowBox[{"scale", " ", 
      RowBox[{"Integrate", "[", " ", 
       RowBox[{
        RowBox[{"rr", "/", 
         RowBox[{"Sqrt", "[", " ", 
          RowBox[{
           RowBox[{
            RowBox[{"(", 
             RowBox[{"z", " ", "-", " ", "zz"}], ")"}], "^", "2"}], " ", "+", 
           " ", 
           RowBox[{"rr", "^", "2"}]}], "]"}]}], ",", " ", 
        RowBox[{"{", 
         RowBox[{"rr", ",", " ", "0", ",", " ", 
          RowBox[{"c", "/", "\[Epsilon]"}]}], "}"}]}], "]"}], 
      "\[IndentingNewLine]", "jj"}], " ", ":=", " ", 
     RowBox[{
      RowBox[{
       RowBox[{"FullSimplify", "[", 
        RowBox[{"ii", ",", " ", 
         RowBox[{
          RowBox[{"c", " ", ">", " ", "0"}], " ", "&&", " ", 
          RowBox[{"z", " ", ">", " ", "e"}], " ", "&&", " ", 
          RowBox[{"e", " ", ">", " ", "0"}], " ", "&&", " ", 
          RowBox[{"Element", "[", " ", 
           RowBox[{
            RowBox[{"e", " ", "|", " ", "c", " ", "|", " ", "zz"}], ",", " ", 
            "Reals"}], "]"}]}]}], "]"}], "\[IndentingNewLine]", "kk"}], " ", 
      "=", " ", 
      RowBox[{"Integrate", "[", 
       RowBox[{"jj", ",", " ", 
        RowBox[{"{", 
         RowBox[{"zz", ",", " ", "0", ",", " ", "e"}], "}"}]}], "]"}]}]}]}], 
   " ", 
   RowBox[{"(*", " ", 
    RowBox[{
     RowBox[{"doesn", "'"}], "t", " ", "complete"}], " ", "*)"}], 
   "\[IndentingNewLine]", "*)"}]}]}], "Input",
 CellChangeTimes->{{3.539047686909693*^9, 3.5390477165733895`*^9}, {
   3.539047974532144*^9, 3.5390480628861976`*^9}, {3.539048095692074*^9, 
   3.5390482031692214`*^9}, {3.5390483498586116`*^9, 
   3.5390483647724648`*^9}, {3.539048438768697*^9, 3.5390485108598204`*^9}, {
   3.5390489348610716`*^9, 3.539048948662861*^9}, {3.5390491696315002`*^9, 
   3.5390491950339527`*^9}, {3.539049707858285*^9, 3.539049833240456*^9}, {
   3.539049972081397*^9, 3.539050100225727*^9}, {3.539050130909482*^9, 
   3.5390501452963047`*^9}, {3.5390501861006384`*^9, 3.539050194446116*^9}, {
   3.539050251956405*^9, 3.5390502588477993`*^9}, {3.539050310033727*^9, 
   3.539050310444751*^9}, {3.5390503936975126`*^9, 3.539050433729802*^9}, 
   3.539050513260351*^9, 3.5390506681732116`*^9, 3.539050765845798*^9, {
   3.539050881011385*^9, 3.5390509189965577`*^9}, {3.539051167597777*^9, 
   3.5390511943763084`*^9}, {3.5390512354966607`*^9, 
   3.5390512360856943`*^9}, {3.539052231444626*^9, 3.539052231892651*^9}, {
   3.5390536024520426`*^9, 3.5390536090394197`*^9}, {3.53905368632584*^9, 
   3.5390536867048616`*^9}, {3.5390572566260495`*^9, 3.539057290847007*^9}, {
   3.539090233467938*^9, 3.5390902359330792`*^9}}],

Cell[BoxData[{
 RowBox[{"ii", " ", ":=", " ", 
  RowBox[{
   RowBox[{"scale", "/", "e"}], " ", 
   RowBox[{"Integrate", "[", " ", 
    RowBox[{
     RowBox[{"1", "/", 
      RowBox[{"Sqrt", "[", " ", 
       RowBox[{
        RowBox[{
         RowBox[{"(", 
          RowBox[{"z", " ", "-", " ", "zz"}], ")"}], "^", "2"}], " ", "+", 
        " ", 
        RowBox[{"rr", "^", "2"}]}], "]"}]}], ",", " ", 
     RowBox[{"{", 
      RowBox[{"zz", ",", " ", "0", ",", " ", "e"}], "}"}]}], 
    "]"}]}]}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{"jj", " ", ":=", " ", 
   RowBox[{"FullSimplify", "[", 
    RowBox[{"ii", ",", " ", 
     RowBox[{
      RowBox[{"c", " ", ">", " ", "0"}], " ", "&&", " ", 
      RowBox[{"z", " ", ">", " ", "e"}], " ", "&&", " ", 
      RowBox[{"e", " ", ">", " ", "0"}], " ", "&&", " ", 
      RowBox[{"Element", "[", " ", 
       RowBox[{
        RowBox[{
        "e", " ", "|", " ", "c", " ", "|", " ", "zz", "|", " ", "rr"}], ",", 
        " ", "Reals"}], "]"}]}]}], "]"}]}], "\[IndentingNewLine]", 
  RowBox[{"(*", 
   RowBox[{
    RowBox[{"jj", " ", "/.", " ", 
     RowBox[{"rr", " ", "\[Rule]", " ", 
      RowBox[{"r", "'"}]}]}], " ", "//", "TraditionalForm"}], 
   "*)"}]}], "\[IndentingNewLine]", 
 RowBox[{"kk", " ", ":=", " ", 
  RowBox[{"Integrate", "[", 
   RowBox[{"jj", ",", " ", 
    RowBox[{"{", 
     RowBox[{"rr", ",", " ", "0", ",", " ", 
      RowBox[{"c", "/", "e"}]}], "}"}]}], "]"}]}], "\[IndentingNewLine]", 
 RowBox[{"mm", " ", ":=", " ", 
  RowBox[{"FullSimplify", "[", 
   RowBox[{"kk", ",", " ", 
    RowBox[{
     RowBox[{"c", " ", ">", " ", "0"}], " ", "&&", " ", 
     RowBox[{"z", " ", ">", " ", "e"}], " ", "&&", " ", 
     RowBox[{"e", " ", ">", " ", "0"}], " ", "&&", " ", 
     RowBox[{"Element", "[", " ", 
      RowBox[{
       RowBox[{"e", " ", "|", " ", "c", " ", "|", " ", "zz", "|", " ", "rr"}],
        ",", " ", "Reals"}], "]"}]}]}], "]"}]}], "\[IndentingNewLine]", 
 RowBox[{"mm", " ", "//", " ", "TraditionalForm"}]}], "Input",
 CellChangeTimes->{{3.5390501969022565`*^9, 3.5390502188795137`*^9}, 
   3.5390502497382784`*^9, {3.5390511980805206`*^9, 3.5390512530126624`*^9}, {
   3.539051540132085*^9, 3.5390515493046093`*^9}, {3.539052197163665*^9, 
   3.539052219724955*^9}, 3.539052893924517*^9, 3.5390535487169695`*^9}],

Cell[CellGroupData[{

Cell[BoxData[
 FormBox[
  RowBox[{"Limit", "[", 
   RowBox[{
    RowBox[{"log", "(", 
     FractionBox[
      RowBox[{
       SqrtBox[
        RowBox[{
         SuperscriptBox["c", "2"], "+", 
         RowBox[{
          SuperscriptBox["\[Epsilon]", "2"], " ", 
          SuperscriptBox[
           RowBox[{"(", 
            RowBox[{"z", "-", "\[Epsilon]"}], ")"}], "2"]}]}]], "+", "c"}], 
      RowBox[{"\[Epsilon]", " ", 
       RowBox[{"(", 
        RowBox[{"z", "-", "\[Epsilon]"}], ")"}]}]], ")"}], ",", " ", 
    RowBox[{"e", " ", "\[Rule]", " ", "0"}]}], "]"}], 
  TraditionalForm]], "Input",
 CellChangeTimes->{{3.5390537901727796`*^9, 3.539053794781043*^9}}],

Cell[BoxData["\[Infinity]"], "Output",
 CellChangeTimes->{3.5390537969571676`*^9}]
}, Open  ]]
}, Open  ]],

Cell[CellGroupData[{

Cell["Scratch area for generating display output.", "Section",
 CellChangeTimes->{{3.539050476594254*^9, 3.5390504845427084`*^9}}],

Cell[BoxData[
 RowBox[{"\[IndentingNewLine]", "\[IndentingNewLine]", 
  RowBox[{
   RowBox[{
    RowBox[{"(", 
     RowBox[{"1", "/", "\[Epsilon]"}], ")"}], 
    RowBox[{"HoldForm", "[", 
     RowBox[{"2", " ", "Pi", " ", "G", " ", "\[Sigma]", " ", 
      RowBox[{"Integrate", "[", " ", 
       RowBox[{
        RowBox[{"rr", "/", 
         RowBox[{"Sqrt", "[", " ", 
          RowBox[{
           RowBox[{
            RowBox[{"(", 
             RowBox[{"z", " ", "-", " ", "zz"}], ")"}], "^", "2"}], " ", "+", 
           " ", 
           RowBox[{"rr", "^", "2"}]}], "]"}]}], ",", " ", 
        RowBox[{"{", 
         RowBox[{"rr", ",", " ", "0", ",", " ", "r"}], "}"}], ",", " ", 
        RowBox[{"{", 
         RowBox[{"zz", ",", " ", "0", ",", " ", "\[Epsilon]"}], "}"}]}], 
       "]"}]}], "]"}]}], " ", "/.", " ", 
   RowBox[{"{", " ", 
    RowBox[{
     RowBox[{"rr", " ", "\[Rule]", " ", 
      RowBox[{"r", "'"}]}], ",", " ", 
     RowBox[{"zz", " ", "\[Rule]", " ", 
      RowBox[{"z", "'"}]}]}], "}"}]}]}]], "Input",
 CellChangeTimes->{{3.5390489960875735`*^9, 3.5390490696147795`*^9}, {
   3.53904921595815*^9, 3.539049233052127*^9}, 3.539050489024965*^9}],

Cell[BoxData[
 TagBox[
  RowBox[{"2", " ", "\[Pi]", " ", "G", " ", "\[Sigma]", " ", 
   FormBox[
    FractionBox["1", "\[Epsilon]"],
    TraditionalForm], 
   RowBox[{
    SubsuperscriptBox["\[Integral]", "0", "r"], 
    RowBox[{
     SubsuperscriptBox["\[Integral]", "0", "\[Epsilon]"], 
     RowBox[{
      FractionBox[
       SuperscriptBox["r", "\[Prime]",
        MultilineFunction->None], 
       SqrtBox[
        RowBox[{
         SuperscriptBox[
          RowBox[{"(", 
           RowBox[{"z", "-", 
            SuperscriptBox["z", "\[Prime]",
             MultilineFunction->None]}], ")"}], "2"], "+", 
         SuperscriptBox[
          RowBox[{"(", 
           SuperscriptBox["r", "\[Prime]",
            MultilineFunction->None], ")"}], "2"]}]]], 
      RowBox[{"\[DifferentialD]", 
       SuperscriptBox["z", "\[Prime]",
        MultilineFunction->None]}], 
      RowBox[{"\[DifferentialD]", 
       SuperscriptBox["r", "\[Prime]",
        MultilineFunction->None]}]}]}]}]}],
  HoldForm]], "Input",
 CellChangeTimes->{{3.539049089473915*^9, 3.539049122975831*^9}}],

Cell[BoxData[
 RowBox[{"HoldForm", "[", 
  StyleBox[
   RowBox[{
    RowBox[{"\[Phi]", 
     RowBox[{"(", 
      RowBox[{"OverVector", "[", "x_", "]"}], ")"}]}], "=", 
    RowBox[{"G", " ", "\[Rho]", " ", 
     RowBox[{"\[Integral]", 
      RowBox[{
       FractionBox["1", 
        TemplateBox[{RowBox[{
            RowBox[{"OverVector", "[", "x", "]"}], "-", 
            SuperscriptBox[
             RowBox[{"OverVector", "[", "x", "]"}], "\[Prime]", 
             MultilineFunction -> None]}]},
         "Abs"]], 
       RowBox[{"\[DifferentialD]", 
        SuperscriptBox["V", "\[Prime]",
         MultilineFunction->None]}]}]}]}]}],
   FontSize->24], 
  StyleBox["]",
   FontSize->24]}]], "Input",
 CellChangeTimes->{{3.5390494423690996`*^9, 3.5390495068687887`*^9}}],

Cell[BoxData[
 TagBox[
  RowBox[{
   RowBox[{"\[Phi]", 
    RowBox[{"(", " ", 
     OverscriptBox["x", "\[RightVector]"], ")"}]}], "=", 
   RowBox[{"G", " ", "\[Rho]", " ", 
    RowBox[{"\[Integral]", 
     RowBox[{
      FractionBox["1", 
       RowBox[{"Abs", "[", 
        RowBox[{
         OverscriptBox["x", "\[RightVector]"], "-", 
         SuperscriptBox[
          OverscriptBox["x", "\[RightVector]"], "\[Prime]",
          MultilineFunction->None]}], "]"}]], 
      RowBox[{"\[DifferentialD]", 
       SuperscriptBox["V", "\[Prime]",
        MultilineFunction->None]}]}]}]}]}],
  HoldForm]], "Input",
 CellChangeTimes->{{3.5390495135051684`*^9, 3.5390495309761677`*^9}}],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{
  RowBox[{"(*", " ", 
   RowBox[{"Nice", " ", "tip", " ", 
    RowBox[{"from", ":", "\[IndentingNewLine]", 
     ButtonBox[
      RowBox[{
       RowBox[{"http", ":"}], "//", 
       RowBox[{
        RowBox[{
         RowBox[{
          RowBox[{
           RowBox[{"mathematica", ".", "stackexchange", ".", "com"}], "/", 
           "questions"}], "/", "1051"}], "/", "how"}], "-", "to", "-", 
        "improve", "-", "the", "-", "typesetting", "-", "of", "-", 
        "mathematical", "-", "contents"}]}],
      BaseStyle->"Hyperlink",
      ButtonData->{
        URL[
        "http://mathematica.stackexchange.com/questions/1051/how-to-improve-\
the-typesetting-of-mathematical-contents"], None},
      ButtonNote->
       "http://mathematica.stackexchange.com/questions/1051/how-to-improve-\
the-typesetting-of-mathematical-contents"]}]}], "\[IndentingNewLine]", "*)"}],
   "\[IndentingNewLine]", "\[IndentingNewLine]", 
  RowBox[{
   RowBox[{"$Post", "=", "TraditionalForm"}], "\[IndentingNewLine]", 
   RowBox[{"HoldForm", "[", 
    RowBox[{"Integrate", "[", 
     RowBox[{
      RowBox[{"x", "^", "2"}], ",", " ", "x"}], "]"}], "]"}]}]}]], "Input",
 CellChangeTimes->{{3.5390498849004107`*^9, 3.5390499384804754`*^9}, {
  3.5390901900094523`*^9, 3.539090213323786*^9}}],

Cell[BoxData[
 FormBox["TraditionalForm", TraditionalForm]], "Output",
 CellChangeTimes->{3.539049942593711*^9}]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[{
 FormBox[
  TagBox[
   RowBox[{"\[Integral]", 
    RowBox[{
     SuperscriptBox["x", "2"], 
     RowBox[{"\[DifferentialD]", "x"}]}]}],
   HoldForm], TraditionalForm], "\[IndentingNewLine]", 
 FormBox[
  RowBox[{"clear", "[", 
   RowBox[{"x", ",", " ", "bX"}], "]"}], 
  TraditionalForm], "\[IndentingNewLine]", 
 FormBox[
  RowBox[{"bX", " ", "=", " ", 
   RowBox[{"\[Integral]", " ", 
    RowBox[{"Style", "[", 
     RowBox[{"x", ",", " ", "Bold"}], "]"}]}]}], TraditionalForm]}], "Input",
 CellChangeTimes->{{3.5390564280466576`*^9, 3.539056463790702*^9}, {
  3.539056666824315*^9, 3.539056671079558*^9}},
 EmphasizeSyntaxErrors->True],

Cell[BoxData[
 TagBox[
  RowBox[{"\[Integral]", 
   RowBox[{
    SuperscriptBox["x", "2"], 
    RowBox[{"\[DifferentialD]", "x"}]}]}],
  HoldForm]], "Output",
 CellChangeTimes->{{3.5390564390242853`*^9, 3.539056469109006*^9}, 
   3.5390566730836725`*^9}],

Cell[BoxData[
 RowBox[{
  StyleBox[
   RowBox[{"$RecursionLimit", "::", "reclim"}], "MessageName"], 
  RowBox[{
  ":", " "}], "\<\"Recursion depth of \[NoBreak]\\!\\(256\\)\[NoBreak] \
exceeded. \\!\\(\\*ButtonBox[\\\"\[RightSkeleton]\\\", \
ButtonStyle->\\\"Link\\\", ButtonFrame->None, \
ButtonData:>\\\"paclet:ref/message/$RecursionLimit/reclim\\\", ButtonNote -> \
\\\"$RecursionLimit::reclim\\\"]\\)\"\>"}]], "Message", "MSG",
 CellChangeTimes->{{3.5390564391852946`*^9, 3.5390564691110063`*^9}, 
   3.539056673085673*^9}],

Cell[BoxData[
 RowBox[{"clear", "[", 
  RowBox[{
   StyleBox[
    StyleBox[
     StyleBox[
      StyleBox[
       StyleBox[
        StyleBox[
         StyleBox[
          StyleBox[
           StyleBox[
            StyleBox[
             StyleBox[
              StyleBox[
               StyleBox[
                StyleBox[
                 StyleBox[
                  StyleBox[
                   StyleBox[
                    StyleBox[
                    StyleBox[
                    StyleBox[
                    StyleBox[
                    StyleBox[
                    StyleBox[
                    StyleBox[
                    StyleBox[
                    StyleBox[
                    StyleBox[
                    StyleBox[
                    StyleBox[
                    StyleBox[
                    StyleBox[
                    StyleBox[
                    StyleBox[
                    StyleBox[
                    StyleBox[
                    StyleBox[
                    StyleBox[
                    StyleBox[
                    StyleBox[
                    StyleBox[
                    StyleBox[
                    StyleBox[
                    StyleBox[
                    StyleBox[
                    StyleBox[
                    StyleBox[
                    StyleBox[
                    StyleBox[
                    StyleBox[
                    StyleBox[
                    StyleBox[
                    StyleBox[
                    StyleBox[
                    StyleBox[
                    StyleBox[
                    StyleBox[
                    StyleBox[
                    StyleBox[
                    StyleBox[
                    StyleBox[
                    StyleBox[
                    StyleBox[
                    StyleBox[
                    StyleBox[
                    StyleBox[
                    StyleBox[
                    StyleBox[
                    StyleBox[
                    StyleBox[
                    StyleBox[
                    StyleBox[
                    StyleBox[
                    StyleBox[
                    StyleBox[
                    StyleBox[
                    StyleBox[
                    StyleBox[
                    StyleBox[
                    StyleBox[
                    StyleBox[
                    StyleBox[
                    StyleBox[
                    StyleBox[
                    StyleBox[
                    StyleBox[
                    StyleBox[
                    StyleBox[
                    StyleBox[
                    StyleBox[
                    StyleBox[
                    StyleBox[
                    StyleBox[
                    StyleBox[
                    StyleBox[
                    StyleBox[
                    StyleBox[
                    StyleBox[
                    StyleBox[
                    StyleBox[
                    StyleBox[
                    StyleBox[
                    StyleBox[
                    StyleBox[
                    StyleBox[
                    StyleBox[
                    StyleBox[
                    StyleBox[
                    StyleBox[
                    StyleBox[
                    StyleBox[
                    StyleBox[
                    StyleBox[
                    StyleBox[
                    StyleBox[
                    StyleBox[
                    StyleBox[
                    StyleBox[
                    StyleBox[
                    StyleBox[
                    StyleBox[
                    StyleBox[
                    StyleBox[
                    StyleBox[
                    StyleBox[
                    StyleBox[
                    StyleBox[
                    StyleBox[
                    StyleBox[
                    StyleBox[
                    StyleBox[
                    StyleBox[
                    StyleBox[
                    StyleBox[
                    StyleBox[
                    StyleBox[
                    StyleBox[
                    StyleBox[
                    StyleBox[
                    StyleBox[
                    StyleBox[
                    StyleBox[
                    StyleBox[
                    StyleBox[
                    StyleBox[
                    StyleBox[
                    StyleBox[
                    StyleBox[
                    StyleBox[
                    StyleBox[
                    StyleBox[
                    StyleBox[
                    StyleBox[
                    StyleBox[
                    StyleBox[
                    StyleBox[
                    StyleBox[
                    StyleBox[
                    StyleBox[
                    StyleBox[
                    StyleBox[
                    StyleBox[
                    StyleBox[
                    StyleBox[
                    StyleBox[
                    StyleBox[
                    StyleBox[
                    StyleBox[
                    StyleBox[
                    StyleBox[
                    StyleBox[
                    StyleBox[
                    StyleBox[
                    StyleBox[
                    StyleBox[
                    StyleBox[
                    StyleBox[
                    StyleBox[
                    StyleBox[
                    StyleBox[
                    StyleBox[
                    StyleBox[
                    StyleBox[
                    StyleBox[
                    StyleBox[
                    StyleBox[
                    StyleBox[
                    StyleBox[
                    StyleBox[
                    StyleBox[
                    StyleBox[
                    StyleBox[
                    StyleBox[
                    StyleBox[
                    StyleBox[
                    StyleBox[
                    StyleBox[
                    StyleBox[
                    StyleBox[
                    StyleBox[
                    StyleBox[
                    StyleBox[
                    StyleBox[
                    StyleBox[
                    StyleBox[
                    StyleBox[
                    StyleBox[
                    StyleBox[
                    StyleBox[
                    StyleBox[
                    StyleBox[
                    StyleBox[
                    StyleBox[
                    StyleBox[
                    StyleBox[
                    StyleBox[
                    StyleBox[
                    StyleBox[
                    StyleBox[
                    StyleBox[
                    StyleBox[
                    StyleBox[
                    StyleBox[
                    StyleBox[
                    StyleBox[
                    StyleBox[
                    StyleBox[
                    StyleBox[
                    StyleBox[
                    StyleBox[
                    StyleBox[
                    StyleBox[
                    StyleBox[
                    StyleBox[
                    StyleBox[
                    StyleBox[
                    StyleBox[
                    StyleBox[
                    StyleBox[
                    StyleBox[
                    StyleBox[
                    StyleBox[
                    StyleBox[
                    StyleBox[
                    StyleBox[
                    StyleBox[
                    StyleBox[
                    StyleBox[
                    StyleBox[
                    StyleBox[
                    StyleBox[
                    StyleBox[
                    StyleBox[
                    StyleBox[
                    StyleBox[
                    StyleBox[
                    RowBox[{"Hold", "[", 
                    StyleBox["x",
                    StripOnInput->False,
                    FontWeight->Bold], "]"}],
                    StripOnInput->False,
                    FontWeight->Bold],
                    StripOnInput->False,
                    FontWeight->Bold],
                    StripOnInput->False,
                    FontWeight->Bold],
                    StripOnInput->False,
                    FontWeight->Bold],
                    StripOnInput->False,
                    FontWeight->Bold],
                    StripOnInput->False,
                    FontWeight->Bold],
                    StripOnInput->False,
                    FontWeight->Bold],
                    StripOnInput->False,
                    FontWeight->Bold],
                    StripOnInput->False,
                    FontWeight->Bold],
                    StripOnInput->False,
                    FontWeight->Bold],
                    StripOnInput->False,
                    FontWeight->Bold],
                    StripOnInput->False,
                    FontWeight->Bold],
                    StripOnInput->False,
                    FontWeight->Bold],
                    StripOnInput->False,
                    FontWeight->Bold],
                    StripOnInput->False,
                    FontWeight->Bold],
                    StripOnInput->False,
                    FontWeight->Bold],
                    StripOnInput->False,
                    FontWeight->Bold],
                    StripOnInput->False,
                    FontWeight->Bold],
                    StripOnInput->False,
                    FontWeight->Bold],
                    StripOnInput->False,
                    FontWeight->Bold],
                    StripOnInput->False,
                    FontWeight->Bold],
                    StripOnInput->False,
                    FontWeight->Bold],
                    StripOnInput->False,
                    FontWeight->Bold],
                    StripOnInput->False,
                    FontWeight->Bold],
                    StripOnInput->False,
                    FontWeight->Bold],
                    StripOnInput->False,
                    FontWeight->Bold],
                    StripOnInput->False,
                    FontWeight->Bold],
                    StripOnInput->False,
                    FontWeight->Bold],
                    StripOnInput->False,
                    FontWeight->Bold],
                    StripOnInput->False,
                    FontWeight->Bold],
                    StripOnInput->False,
                    FontWeight->Bold],
                    StripOnInput->False,
                    FontWeight->Bold],
                    StripOnInput->False,
                    FontWeight->Bold],
                    StripOnInput->False,
                    FontWeight->Bold],
                    StripOnInput->False,
                    FontWeight->Bold],
                    StripOnInput->False,
                    FontWeight->Bold],
                    StripOnInput->False,
                    FontWeight->Bold],
                    StripOnInput->False,
                    FontWeight->Bold],
                    StripOnInput->False,
                    FontWeight->Bold],
                    StripOnInput->False,
                    FontWeight->Bold],
                    StripOnInput->False,
                    FontWeight->Bold],
                    StripOnInput->False,
                    FontWeight->Bold],
                    StripOnInput->False,
                    FontWeight->Bold],
                    StripOnInput->False,
                    FontWeight->Bold],
                    StripOnInput->False,
                    FontWeight->Bold],
                    StripOnInput->False,
                    FontWeight->Bold],
                    StripOnInput->False,
                    FontWeight->Bold],
                    StripOnInput->False,
                    FontWeight->Bold],
                    StripOnInput->False,
                    FontWeight->Bold],
                    StripOnInput->False,
                    FontWeight->Bold],
                    StripOnInput->False,
                    FontWeight->Bold],
                    StripOnInput->False,
                    FontWeight->Bold],
                    StripOnInput->False,
                    FontWeight->Bold],
                    StripOnInput->False,
                    FontWeight->Bold],
                    StripOnInput->False,
                    FontWeight->Bold],
                    StripOnInput->False,
                    FontWeight->Bold],
                    StripOnInput->False,
                    FontWeight->Bold],
                    StripOnInput->False,
                    FontWeight->Bold],
                    StripOnInput->False,
                    FontWeight->Bold],
                    StripOnInput->False,
                    FontWeight->Bold],
                    StripOnInput->False,
                    FontWeight->Bold],
                    StripOnInput->False,
                    FontWeight->Bold],
                    StripOnInput->False,
                    FontWeight->Bold],
                    StripOnInput->False,
                    FontWeight->Bold],
                    StripOnInput->False,
                    FontWeight->Bold],
                    StripOnInput->False,
                    FontWeight->Bold],
                    StripOnInput->False,
                    FontWeight->Bold],
                    StripOnInput->False,
                    FontWeight->Bold],
                    StripOnInput->False,
                    FontWeight->Bold],
                    StripOnInput->False,
                    FontWeight->Bold],
                    StripOnInput->False,
                    FontWeight->Bold],
                    StripOnInput->False,
                    FontWeight->Bold],
                    StripOnInput->False,
                    FontWeight->Bold],
                    StripOnInput->False,
                    FontWeight->Bold],
                    StripOnInput->False,
                    FontWeight->Bold],
                    StripOnInput->False,
                    FontWeight->Bold],
                    StripOnInput->False,
                    FontWeight->Bold],
                    StripOnInput->False,
                    FontWeight->Bold],
                    StripOnInput->False,
                    FontWeight->Bold],
                    StripOnInput->False,
                    FontWeight->Bold],
                    StripOnInput->False,
                    FontWeight->Bold],
                    StripOnInput->False,
                    FontWeight->Bold],
                    StripOnInput->False,
                    FontWeight->Bold],
                    StripOnInput->False,
                    FontWeight->Bold],
                    StripOnInput->False,
                    FontWeight->Bold],
                    StripOnInput->False,
                    FontWeight->Bold],
                    StripOnInput->False,
                    FontWeight->Bold],
                    StripOnInput->False,
                    FontWeight->Bold],
                    StripOnInput->False,
                    FontWeight->Bold],
                    StripOnInput->False,
                    FontWeight->Bold],
                    StripOnInput->False,
                    FontWeight->Bold],
                    StripOnInput->False,
                    FontWeight->Bold],
                    StripOnInput->False,
                    FontWeight->Bold],
                    StripOnInput->False,
                    FontWeight->Bold],
                    StripOnInput->False,
                    FontWeight->Bold],
                    StripOnInput->False,
                    FontWeight->Bold],
                    StripOnInput->False,
                    FontWeight->Bold],
                    StripOnInput->False,
                    FontWeight->Bold],
                    StripOnInput->False,
                    FontWeight->Bold],
                    StripOnInput->False,
                    FontWeight->Bold],
                    StripOnInput->False,
                    FontWeight->Bold],
                    StripOnInput->False,
                    FontWeight->Bold],
                    StripOnInput->False,
                    FontWeight->Bold],
                    StripOnInput->False,
                    FontWeight->Bold],
                   StripOnInput->False,
                   FontWeight->Bold],
                  StripOnInput->False,
                  FontWeight->Bold],
                 StripOnInput->False,
                 FontWeight->Bold],
                StripOnInput->False,
                FontWeight->Bold],
               StripOnInput->False,
               FontWeight->Bold],
              StripOnInput->False,
              FontWeight->Bold],
             StripOnInput->False,
             FontWeight->Bold],
            StripOnInput->False,
            FontWeight->Bold],
           StripOnInput->False,
           FontWeight->Bold],
          StripOnInput->False,
          FontWeight->Bold],
         StripOnInput->False,
         FontWeight->Bold],
        StripOnInput->False,
        FontWeight->Bold],
       StripOnInput->False,
       FontWeight->Bold],
      StripOnInput->False,
      FontWeight->Bold],
     StripOnInput->False,
     FontWeight->Bold],
    StripOnInput->False,
    FontWeight->Bold],
   StripOnInput->False,
   FontWeight->Bold],
  StripOnInput->False,
  FontWeight->Bold],
 StripOnInput->False,
 FontWeight->Bold],
StripOnInput->False,
FontWeight->Bold],
StripOnInput->False,
FontWeight->Bold],
StripOnInput->False,
FontWeight->Bold],
StripOnInput->False,
FontWeight->Bold],
StripOnInput->False,
FontWeight->Bold],
StripOnInput->False,
FontWeight->Bold],
StripOnInput->False,
FontWeight->Bold],
StripOnInput->False,
FontWeight->Bold],
StripOnInput->False,
FontWeight->Bold],
StripOnInput->False,
FontWeight->Bold],
StripOnInput->False,
FontWeight->Bold],
StripOnInput->False,
FontWeight->Bold],
StripOnInput->False,
FontWeight->Bold],
StripOnInput->False,
FontWeight->Bold],
StripOnInput->False,
FontWeight->Bold],
StripOnInput->False,
FontWeight->Bold],
StripOnInput->False,
FontWeight->Bold],
StripOnInput->False,
FontWeight->Bold],
StripOnInput->False,
FontWeight->Bold],
StripOnInput->False,
FontWeight->Bold],
StripOnInput->False,
FontWeight->Bold],
StripOnInput->False,
FontWeight->Bold],
StripOnInput->False,
FontWeight->Bold],
StripOnInput->False,
FontWeight->Bold],
StripOnInput->False,
FontWeight->Bold],
StripOnInput->False,
FontWeight->Bold],
StripOnInput->False,
FontWeight->Bold],
StripOnInput->False,
FontWeight->Bold],
StripOnInput->False,
FontWeight->Bold],
StripOnInput->False,
FontWeight->Bold],
StripOnInput->False,
FontWeight->Bold],
StripOnInput->False,
FontWeight->Bold],
StripOnInput->False,
FontWeight->Bold],
StripOnInput->False,
FontWeight->Bold],
StripOnInput->False,
FontWeight->Bold],
StripOnInput->False,
FontWeight->Bold],
StripOnInput->False,
FontWeight->Bold],
StripOnInput->False,
FontWeight->Bold],
StripOnInput->False,
FontWeight->Bold],
StripOnInput->False,
FontWeight->Bold],
StripOnInput->False,
FontWeight->Bold],
StripOnInput->False,
FontWeight->Bold],
StripOnInput->False,
FontWeight->Bold],
StripOnInput->False,
FontWeight->Bold],
StripOnInput->False,
FontWeight->Bold],
StripOnInput->False,
FontWeight->Bold],
StripOnInput->False,
FontWeight->Bold],
StripOnInput->False,
FontWeight->Bold],
StripOnInput->False,
FontWeight->Bold],
StripOnInput->False,
FontWeight->Bold],
StripOnInput->False,
FontWeight->Bold],
StripOnInput->False,
FontWeight->Bold],
StripOnInput->False,
FontWeight->Bold],
StripOnInput->False,
FontWeight->Bold],
StripOnInput->False,
FontWeight->Bold],
StripOnInput->False,
FontWeight->Bold],
StripOnInput->False,
FontWeight->Bold],
StripOnInput->False,
FontWeight->Bold],
StripOnInput->False,
FontWeight->Bold],
StripOnInput->False,
FontWeight->Bold],
StripOnInput->False,
FontWeight->Bold],
StripOnInput->False,
FontWeight->Bold],
StripOnInput->False,
FontWeight->Bold],
StripOnInput->False,
FontWeight->Bold],
StripOnInput->False,
FontWeight->Bold],
StripOnInput->False,
FontWeight->Bold],
StripOnInput->False,
FontWeight->Bold],
StripOnInput->False,
FontWeight->Bold],
StripOnInput->False,
FontWeight->Bold],
StripOnInput->False,
FontWeight->Bold],
StripOnInput->False,
FontWeight->Bold],
StripOnInput->False,
FontWeight->Bold],
StripOnInput->False,
FontWeight->Bold],
StripOnInput->False,
FontWeight->Bold],
StripOnInput->False,
FontWeight->Bold],
StripOnInput->False,
FontWeight->Bold],
StripOnInput->False,
FontWeight->Bold],
StripOnInput->False,
FontWeight->Bold],
StripOnInput->False,
FontWeight->Bold],
StripOnInput->False,
FontWeight->Bold],
StripOnInput->False,
FontWeight->Bold],
StripOnInput->False,
FontWeight->Bold],
StripOnInput->False,
FontWeight->Bold],
StripOnInput->False,
FontWeight->Bold],
StripOnInput->False,
FontWeight->Bold],
StripOnInput->False,
FontWeight->Bold],
StripOnInput->False,
FontWeight->Bold],
StripOnInput->False,
FontWeight->Bold],
StripOnInput->False,
FontWeight->Bold],
StripOnInput->False,
FontWeight->Bold],
StripOnInput->False,
FontWeight->Bold],
StripOnInput->False,
FontWeight->Bold],
StripOnInput->False,
FontWeight->Bold],
StripOnInput->False,
FontWeight->Bold],
StripOnInput->False,
FontWeight->Bold],
StripOnInput->False,
FontWeight->Bold],
StripOnInput->False,
FontWeight->Bold],
StripOnInput->False,
FontWeight->Bold],
StripOnInput->False,
FontWeight->Bold],
StripOnInput->False,
FontWeight->Bold],
StripOnInput->False,
FontWeight->Bold],
StripOnInput->False,
FontWeight->Bold],
StripOnInput->False,
FontWeight->Bold],
StripOnInput->False,
FontWeight->Bold],
StripOnInput->False,
FontWeight->Bold],
StripOnInput->False,
FontWeight->Bold],
StripOnInput->False,
FontWeight->Bold],
StripOnInput->False,
FontWeight->Bold],
StripOnInput->False,
FontWeight->Bold],
StripOnInput->False,
FontWeight->Bold],
StripOnInput->False,
FontWeight->Bold],
StripOnInput->False,
FontWeight->Bold],
StripOnInput->False,
FontWeight->Bold],
StripOnInput->False,
FontWeight->Bold],
StripOnInput->False,
FontWeight->Bold],
StripOnInput->False,
FontWeight->Bold],
StripOnInput->False,
FontWeight->Bold],
StripOnInput->False,
FontWeight->Bold],
StripOnInput->False,
FontWeight->Bold],
StripOnInput->False,
FontWeight->Bold],
StripOnInput->False,
FontWeight->Bold],
StripOnInput->False,
FontWeight->Bold],
StripOnInput->False,
FontWeight->Bold],
StripOnInput->False,
FontWeight->Bold],
StripOnInput->False,
FontWeight->Bold],
StripOnInput->False,
FontWeight->Bold],
StripOnInput->False,
FontWeight->Bold],
StripOnInput->False,
FontWeight->Bold],
StripOnInput->False,
FontWeight->Bold],
StripOnInput->False,
FontWeight->Bold],
StripOnInput->False,
FontWeight->Bold],
StripOnInput->False,
FontWeight->Bold], ",", "bX"}], "]"}]], "Output",
 CellChangeTimes->{{3.5390564390242853`*^9, 3.539056469109006*^9}, 
   3.5390566730906734`*^9}],

Cell[BoxData[
 RowBox[{
  StyleBox[
   RowBox[{"Integrate", "::", "nodiffd"}], "MessageName"], 
  RowBox[{
  ":", " "}], "\<\"\[NoBreak]\\!\\(\[Integral] \\(\\(Style[\\(\\(x, \
Bold\\)\\)]\\)\\)\\)\[NoBreak] cannot be interpreted. Integrals are entered \
in the form \\!\\(\[Integral]f\[DifferentialD]x\\), where \\!\\(\
\[DifferentialD]\\) is entered as \[EscapeKey]dd\[EscapeKey]. \
\\!\\(\\*ButtonBox[\\\"\[RightSkeleton]\\\", ButtonStyle->\\\"Link\\\", \
ButtonFrame->None, ButtonData:>\\\"paclet:ref/message/Integrate/nodiffd\\\", \
ButtonNote -> \\\"Integrate::nodiffd\\\"]\\)\"\>"}]], "Message", "MSG",
 CellChangeTimes->{{3.5390564391852946`*^9, 3.5390564691110063`*^9}, 
   3.539056673155677*^9}]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{
  RowBox[{"(*", " ", "\[IndentingNewLine]", 
   RowBox[{
    ButtonBox[
     RowBox[{
      RowBox[{"http", ":"}], "//", 
      RowBox[{
       RowBox[{
        RowBox[{
         RowBox[{
          RowBox[{"tex", ".", "stackexchange", ".", "com"}], "/", 
          "questions"}], "/", "45640"}], "/", "what"}], "-", "font", "-", 
       "does", "-", "mathbf", "-", "use"}]}],
     BaseStyle->"Hyperlink",
     ButtonData->{
       URL[
       "http://tex.stackexchange.com/questions/45640/what-font-does-mathbf-\
use"], None},
     ButtonNote->
      "http://tex.stackexchange.com/questions/45640/what-font-does-mathbf-\
use"], "\[IndentingNewLine]", 
    ButtonBox[
     RowBox[{
      RowBox[{"http", ":"}], "//", 
      RowBox[{
       RowBox[{
        RowBox[{
         RowBox[{
          RowBox[{"mathematica", ".", "stackexchange", ".", "com"}], "/", 
          "questions"}], "/", "2248"}], "/", "bold"}], "-", "face", "-", 
       "formatting", "-", "for", "-", "vectors", "-", "instead", "-", "of", 
       "-", "overarrows", "-", "like", "-", "latex", "-", "mathbf"}]}],
     BaseStyle->"Hyperlink",
     ButtonData->{
       URL[
       "http://mathematica.stackexchange.com/questions/2248/bold-face-\
formatting-for-vectors-instead-of-overarrows-like-latex-mathbf"], None},
     ButtonNote->
      "http://mathematica.stackexchange.com/questions/2248/bold-face-\
formatting-for-vectors-instead-of-overarrows-like-latex-mathbf"]}], 
   "\[IndentingNewLine]", "*)"}], "\[IndentingNewLine]", 
  "\[IndentingNewLine]", 
  RowBox[{
   RowBox[{"clear", "[", 
    RowBox[{"bX", ",", " ", "v", ",", " ", "bStyleX", ",", " ", "x"}], "]"}], 
   "\[IndentingNewLine]", 
   RowBox[{"(*", 
    RowBox[{"bStyleX", " ", "=", " ", 
     RowBox[{"Style", "[", 
      RowBox[{"x", ",", " ", "Bold", ",", " ", 
       RowBox[{"FontFamily", "\[Rule]", "\"\<Helvetica\>\""}]}], "]"}]}], 
    "*)"}], "\[IndentingNewLine]", 
   RowBox[{"bStyleX", " ", "=", " ", 
    RowBox[{"Style", "[", 
     RowBox[{"x", ",", " ", "Bold", ",", " ", 
      RowBox[{"FontFamily", "\[Rule]", "\"\<Computer Modern\>\""}]}], "]"}]}],
    "\[IndentingNewLine]", 
   RowBox[{"v", " ", "=", " ", 
    RowBox[{"Interpretation", "[", 
     RowBox[{"bStyleX", ",", " ", "bX"}], "]"}]}], "\[IndentingNewLine]", 
   "bX", "\[IndentingNewLine]", "v", "\[IndentingNewLine]", "x"}]}]], "Input",
 CellChangeTimes->{{3.539089096060882*^9, 3.539089108986622*^9}, {
   3.5390894331121607`*^9, 3.539089438073444*^9}, {3.5390896344136744`*^9, 
   3.5390896573729877`*^9}, {3.5390899256063294`*^9, 
   3.5390899260893574`*^9}, {3.539089959970295*^9, 3.5390899812585125`*^9}, 
   3.539090026281088*^9, {3.539090071848694*^9, 3.5390901417466917`*^9}}],

Cell[BoxData[
 RowBox[{"clear", "[", 
  RowBox[{"bX", ",", 
   InterpretationBox[
    StyleBox["x",
     StripOnInput->False,
     FontFamily->"Computer Modern",
     FontWeight->Bold],
    $CellContext`bX], ",", 
   StyleBox["x",
    StripOnInput->False,
    FontFamily->"Computer Modern",
    FontWeight->Bold], ",", "x"}], "]"}]], "Output",
 CellChangeTimes->{{3.5390890975709686`*^9, 3.5390891099636774`*^9}, {
  3.539089647551426*^9, 3.5390896588780737`*^9}}],

Cell[BoxData[
 StyleBox["x",
  StripOnInput->False,
  FontFamily->"Computer Modern",
  FontWeight->Bold]], "Output",
 CellChangeTimes->{{3.5390890975709686`*^9, 3.5390891099636774`*^9}, {
  3.539089647551426*^9, 3.5390896588800735`*^9}}],

Cell[BoxData[
 InterpretationBox[
  StyleBox["x",
   StripOnInput->False,
   FontFamily->"Computer Modern",
   FontWeight->Bold],
  $CellContext`bX]], "Output",
 CellChangeTimes->{{3.5390890975709686`*^9, 3.5390891099636774`*^9}, {
  3.539089647551426*^9, 3.539089658881074*^9}}],

Cell[BoxData["bX"], "Output",
 CellChangeTimes->{{3.5390890975709686`*^9, 3.5390891099636774`*^9}, {
  3.539089647551426*^9, 3.5390896588820734`*^9}}],

Cell[BoxData[
 InterpretationBox[
  StyleBox["x",
   StripOnInput->False,
   FontFamily->"Computer Modern",
   FontWeight->Bold],
  $CellContext`bX]], "Output",
 CellChangeTimes->{{3.5390890975709686`*^9, 3.5390891099636774`*^9}, {
  3.539089647551426*^9, 3.539089658883074*^9}}],

Cell[BoxData["x"], "Output",
 CellChangeTimes->{{3.5390890975709686`*^9, 3.5390891099636774`*^9}, {
  3.539089647551426*^9, 3.5390896588840737`*^9}}]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{
  RowBox[{"(*", " ", 
   RowBox[{"nice", " ", 
    RowBox[{
    "technique", ":", "\[IndentingNewLine]", "\[IndentingNewLine]", " ", 
     RowBox[{
      ButtonBox[
       RowBox[{
        RowBox[{"http", ":"}], "//", 
        RowBox[{
         RowBox[{
          RowBox[{
           RowBox[{
            RowBox[{"mathematica", ".", "stackexchange", ".", "com"}], "/", 
            "questions"}], "/", "2248"}], "/", "bold"}], "-", "face", "-", 
         "formatting", "-", "for", "-", "vectors", "-", "instead", "-", "of", 
         "-", "overarrows", "-", "like", "-", "latex", "-", 
         RowBox[{
          RowBox[{"mathbf", "/", "2269"}], "#2269"}]}]}],
       BaseStyle->"Hyperlink",
       ButtonData->{
         URL[
         "http://mathematica.stackexchange.com/questions/2248/bold-face-\
formatting-for-vectors-instead-of-overarrows-like-latex-mathbf/2269#2269"], 
         None},
       ButtonNote->
        "http://mathematica.stackexchange.com/questions/2248/bold-face-\
formatting-for-vectors-instead-of-overarrows-like-latex-mathbf/2269#2269"], 
      " ", "\[IndentingNewLine]", 
      RowBox[{"followup", ":", "\[IndentingNewLine]", "\[IndentingNewLine]", 
       ButtonBox[
        RowBox[{
         RowBox[{"http", ":"}], "//", 
         RowBox[{
          RowBox[{
           RowBox[{
            RowBox[{
             RowBox[{"mathematica", ".", "stackexchange", ".", "com"}], "/", 
             "questions"}], "/", "2277"}], "/", "overriding"}], "-", "the", 
          "-", "format", "-", "of", "-", "copy", "-", "as", "-", "latex"}]}],
        BaseStyle->"Hyperlink",
        ButtonData->{
          URL[
          "http://mathematica.stackexchange.com/questions/2277/overriding-the-\
format-of-copy-as-latex"], None},
        ButtonNote->
         "http://mathematica.stackexchange.com/questions/2277/overriding-the-\
format-of-copy-as-latex"]}]}]}]}], "\[IndentingNewLine]", "*)"}], 
  "\[IndentingNewLine]", "\[IndentingNewLine]", 
  RowBox[{
   RowBox[{"Clear", "[", "bX", "]"}], "\[IndentingNewLine]", 
   RowBox[{"(*", 
    RowBox[{
     RowBox[{"Format", "[", 
      RowBox[{"OverVector", "[", "v_", "]"}], "]"}], ":=", 
     RowBox[{
      RowBox[{
       RowBox[{"Style", "[", 
        RowBox[{
         RowBox[{"HoldForm", "[", "v", "]"}], ",", 
         RowBox[{"FontFamily", "\[Rule]", "\"\<Arial Black\>\""}]}], "]"}], 
       "\[IndentingNewLine]", "bX"}], " ", "=", " ", 
      RowBox[{
       RowBox[{
        RowBox[{"OverVector", "[", "x", "]"}], "\[IndentingNewLine]", 
        RowBox[{"Abs", "[", 
         RowBox[{"bX", " ", "-", " ", 
          RowBox[{"bX", "'"}]}], "]"}]}], "//", " ", 
       RowBox[{
        RowBox[{"TraditionalForm", "\[IndentingNewLine]", 
         RowBox[{"Cross", "[", " ", 
          RowBox[{"bX", ",", " ", "bX"}], "]"}]}], " ", "/.", " ", 
        RowBox[{"bX", " ", "\[Rule]", " ", 
         RowBox[{"{", 
          RowBox[{"1", ",", " ", "0", ",", " ", "1"}], "}"}]}]}]}]}]}], 
    "*)"}], "\[IndentingNewLine]", 
   RowBox[{"Clear", "[", "vecX", "]"}], "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{"Format", "[", 
     RowBox[{"boldVector", "[", "v_", "]"}], "]"}], ":=", 
    RowBox[{"Style", "[", 
     RowBox[{
      RowBox[{"HoldForm", "[", "v", "]"}], ",", 
      RowBox[{"FontFamily", "\[Rule]", "\"\<Arial Black\>\""}]}], "]"}]}], 
   "\[IndentingNewLine]", 
   RowBox[{"vecX", " ", ":=", " ", 
    RowBox[{"boldVector", "[", "x", "]"}]}], "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{"Abs", "[", 
     RowBox[{"vecX", " ", "-", " ", 
      RowBox[{"vecX", "'"}]}], "]"}], "//", " ", "TraditionalForm"}], 
   "\[IndentingNewLine]"}]}]], "Input",
 CellChangeTimes->{{3.5390941818817744`*^9, 3.539094198532727*^9}, {
  3.5390944880012836`*^9, 3.539094503790187*^9}, {3.53909456644377*^9, 
  3.5390946108363094`*^9}, {3.5390950051638637`*^9, 3.539095209856571*^9}, {
  3.5390952736732216`*^9, 3.5390953135144997`*^9}, {3.5390955920174294`*^9, 
  3.5390956138076763`*^9}, {3.539096022316041*^9, 3.5390960474174767`*^9}}],

Cell[BoxData[
 FormBox[
  TemplateBox[{RowBox[{
      FormBox[
       StyleBox[
        TagBox["x", HoldForm], StripOnInput -> False, FontFamily -> 
        "Arial Black"], TraditionalForm], "-", 
      SuperscriptBox[
       FormBox[
        StyleBox[
         TagBox["x", HoldForm], StripOnInput -> False, FontFamily -> 
         "Arial Black"], TraditionalForm], "\[Prime]", MultilineFunction -> 
       None]}]},
   "Abs"], TraditionalForm]], "Output",
 CellChangeTimes->{{3.539094185338972*^9, 3.5390941991937647`*^9}, {
   3.5390946018537955`*^9, 3.5390946116813574`*^9}, {3.539095009492111*^9, 
   3.5390950511264925`*^9}, 3.539095088057605*^9, {3.5390951291499553`*^9, 
   3.539095176323653*^9}, 3.539095210498608*^9, {3.539095288897092*^9, 
   3.539095314234541*^9}, 3.5390956160968065`*^9}]
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
Cell[1257, 32, 199, 4, 83, "Title"],
Cell[1459, 38, 12762, 381, 846, "Text"],
Cell[CellGroupData[{
Cell[14246, 423, 109, 1, 71, "Section"],
Cell[14358, 426, 3325, 73, 172, "Input"],
Cell[17686, 501, 2299, 57, 132, "Input"],
Cell[CellGroupData[{
Cell[20010, 562, 667, 20, 67, "Input"],
Cell[20680, 584, 82, 1, 30, "Output"]
}, Open  ]]
}, Open  ]],
Cell[CellGroupData[{
Cell[20811, 591, 130, 1, 71, "Section"],
Cell[20944, 594, 1168, 30, 72, "Input"],
Cell[22115, 626, 1077, 32, 57, "Input"],
Cell[23195, 660, 773, 23, 76, "Input"],
Cell[23971, 685, 680, 20, 52, "Input"],
Cell[CellGroupData[{
Cell[24676, 709, 1299, 32, 132, "Input"],
Cell[25978, 743, 112, 2, 30, "Output"]
}, Open  ]],
Cell[CellGroupData[{
Cell[26127, 750, 653, 19, 98, "Input"],
Cell[26783, 771, 254, 8, 43, "Output"],
Cell[27040, 781, 527, 11, 21, "Message"],
Cell[27570, 794, 22575, 773, 30, "Output"],
Cell[50148, 1569, 705, 13, 34, "Message"]
}, Open  ]],
Cell[CellGroupData[{
Cell[50890, 1587, 2727, 66, 252, "Input"],
Cell[53620, 1655, 464, 14, 30, "Output"],
Cell[54087, 1671, 237, 6, 30, "Output"],
Cell[54327, 1679, 279, 8, 30, "Output"],
Cell[54609, 1689, 150, 2, 30, "Output"],
Cell[54762, 1693, 279, 8, 30, "Output"],
Cell[55044, 1703, 149, 2, 30, "Output"]
}, Open  ]],
Cell[CellGroupData[{
Cell[55230, 1710, 4034, 97, 372, "Input"],
Cell[59267, 1809, 800, 18, 44, "Output"]
}, Open  ]]
}, Open  ]]
}, Open  ]]
}
]
*)

(* End of internal cache information *)

(* NotebookSignature LxpOfKjV@nh0BBKBD924NpTy *)
