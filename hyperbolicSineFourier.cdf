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
NotebookDataLength[     11783,        321]
NotebookOptionsPosition[     11872,        307]
NotebookOutlinePosition[     12214,        322]
CellTagsIndexPosition[     12171,        319]
WindowFrame->Normal*)

(* Beginning of Notebook Content *)
Notebook[{

Cell[CellGroupData[{
Cell[BoxData[{
 RowBox[{"Clear", "[", 
  RowBox[{"ii", ",", " ", "jj"}], "]"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{"ii", " ", "=", " ", 
   RowBox[{"Integrate", "[", " ", 
    RowBox[{
     RowBox[{
      RowBox[{"Sinh", "[", " ", 
       RowBox[{"a", " ", "y"}], " ", "]"}], 
      RowBox[{"Sin", "[", 
       RowBox[{"2", " ", "Pi", " ", "m", "  ", "y"}], "]"}]}], ",", " ", 
     RowBox[{"{", 
      RowBox[{"y", ",", " ", "0", ",", " ", "1"}], "}"}]}], "]"}]}], " ", 
  ";"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{"jj", " ", "=", " ", 
   RowBox[{"Integrate", "[", " ", 
    RowBox[{
     RowBox[{
      RowBox[{"Sinh", "[", " ", 
       RowBox[{"a", " ", "y"}], " ", "]"}], 
      RowBox[{"Cos", "[", 
       RowBox[{"2", " ", "Pi", " ", "m", "  ", "y"}], "]"}]}], ",", " ", 
     RowBox[{"{", 
      RowBox[{"y", ",", " ", "0", ",", " ", "1"}], "}"}]}], "]"}]}], " ", 
  ";"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{"FullSimplify", "[", 
   RowBox[{"ii", ",", " ", 
    RowBox[{"Element", "[", 
     RowBox[{"m", ",", " ", "Integers"}], "]"}]}], "]"}], " ", "//", " ", 
  "TraditionalForm"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{"FullSimplify", "[", 
   RowBox[{"jj", ",", " ", 
    RowBox[{"Element", "[", 
     RowBox[{"m", ",", " ", "Integers"}], "]"}]}], "]"}], " ", "//", " ", 
  "TraditionalForm"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{"Integrate", "[", 
   RowBox[{
    RowBox[{"Sinh", "[", 
     RowBox[{"a", " ", "y"}], "]"}], ",", " ", 
    RowBox[{"{", 
     RowBox[{"y", ",", " ", "0", ",", " ", "1"}], "}"}]}], "]"}], " ", "//", 
  " ", "TraditionalForm"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{"Simplify", "[", 
   RowBox[{
    RowBox[{"Integrate", "[", 
     RowBox[{
      RowBox[{
       RowBox[{"TrigReduce", "[", " ", 
        RowBox[{
         RowBox[{"Sin", "[", " ", 
          RowBox[{"2", " ", "Pi", " ", "m", " ", "y"}], " ", "]"}], " ", 
         RowBox[{"Sin", "[", " ", 
          RowBox[{"2", " ", "Pi", " ", "n", " ", "y"}], "]"}]}], "]"}], " ", "/.",
        " ", 
       RowBox[{"n", " ", "\[Rule]", " ", "m"}]}], ",", " ", 
      RowBox[{"{", 
       RowBox[{"y", ",", " ", "0", ",", " ", "1"}], "}"}]}], "]"}], ",", " ", 
    RowBox[{"Element", "[", 
     RowBox[{"m", ",", " ", "Integers"}], "]"}]}], "]"}], " ", "//", " ", 
  "TraditionalForm"}]}], "Input",
 CellChangeTimes->{{3.545087185535483*^9, 3.5450872432277822`*^9}, {
  3.545087278602806*^9, 3.545087398661673*^9}, {3.5450879103649406`*^9, 
  3.545087949525181*^9}, {3.5450880093096*^9, 3.545088017592074*^9}, {
  3.5450881406581125`*^9, 3.545088159192173*^9}}],

Cell[BoxData[
 FormBox[
  RowBox[{"-", 
   FractionBox[
    RowBox[{"2", " ", "\[Pi]", " ", "m", " ", 
     RowBox[{"sinh", "(", "a", ")"}]}], 
    RowBox[{
     SuperscriptBox["a", "2"], "+", 
     RowBox[{"4", " ", 
      SuperscriptBox["\[Pi]", "2"], " ", 
      SuperscriptBox["m", "2"]}]}]]}], TraditionalForm]], "Output",
 CellChangeTimes->{
  3.545087249173123*^9, 3.5450872986579533`*^9, {3.5450873379452*^9, 
   3.545087399576725*^9}, {3.5450879236417*^9, 3.545087950309225*^9}, {
   3.5450881557209744`*^9, 3.5450881598992133`*^9}}],

Cell[BoxData[
 FormBox[
  FractionBox[
   RowBox[{"a", " ", 
    RowBox[{"(", 
     RowBox[{
      RowBox[{"cosh", "(", "a", ")"}], "-", "1"}], ")"}]}], 
   RowBox[{
    SuperscriptBox["a", "2"], "+", 
    RowBox[{"4", " ", 
     SuperscriptBox["\[Pi]", "2"], " ", 
     SuperscriptBox["m", "2"]}]}]], TraditionalForm]], "Output",
 CellChangeTimes->{
  3.545087249173123*^9, 3.5450872986579533`*^9, {3.5450873379452*^9, 
   3.545087399576725*^9}, {3.5450879236417*^9, 3.545087950309225*^9}, {
   3.5450881557209744`*^9, 3.5450881599202147`*^9}}],

Cell[BoxData[
 FormBox[
  FractionBox[
   RowBox[{
    RowBox[{"cosh", "(", "a", ")"}], "-", "1"}], "a"], 
  TraditionalForm]], "Output",
 CellChangeTimes->{
  3.545087249173123*^9, 3.5450872986579533`*^9, {3.5450873379452*^9, 
   3.545087399576725*^9}, {3.5450879236417*^9, 3.545087950309225*^9}, {
   3.5450881557209744`*^9, 3.5450881599222145`*^9}}],

Cell[BoxData[
 FormBox[
  FractionBox["1", "2"], TraditionalForm]], "Output",
 CellChangeTimes->{
  3.545087249173123*^9, 3.5450872986579533`*^9, {3.5450873379452*^9, 
   3.545087399576725*^9}, {3.5450879236417*^9, 3.545087950309225*^9}, {
   3.5450881557209744`*^9, 3.5450881600052195`*^9}}]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[{
 RowBox[{
  RowBox[{"Clear", "[", 
   RowBox[{"f", ",", " ", "g", ",", " ", "n", ",", " ", "m", ",", " ", "a"}], 
   "]"}], "\[IndentingNewLine]"}], "\[IndentingNewLine]", 
 RowBox[{"Manipulate", "[", "\[IndentingNewLine]", 
  RowBox[{
   RowBox[{"Module", "[", 
    RowBox[{
     RowBox[{"{", 
      RowBox[{"g", ",", " ", 
       RowBox[{"a", " ", "=", " ", "2"}]}], "}"}], ",", "\[IndentingNewLine]", 
     RowBox[{
      RowBox[{
       RowBox[{"g", "[", " ", "y_", "]"}], " ", "=", 
       RowBox[{
        RowBox[{
         RowBox[{"(", 
          RowBox[{
           RowBox[{"Cosh", "[", "a", "]"}], " ", "-", " ", "1."}], ")"}], "/",
          "a"}], " ", "+", " ", 
        RowBox[{"2", " ", 
         RowBox[{"Sum", "[", " ", 
          RowBox[{
           RowBox[{
            RowBox[{"(", 
             RowBox[{
              RowBox[{"a", " ", 
               RowBox[{"(", 
                RowBox[{
                 RowBox[{"Cosh", "[", "a", "]"}], " ", "-", " ", "1."}], 
                ")"}], " ", 
               RowBox[{"Cos", "[", " ", 
                RowBox[{"2", " ", "Pi", " ", "i", " ", "y"}], "]"}]}], " ", 
              "-", " ", 
              RowBox[{"2", " ", "Pi", " ", "i", " ", 
               RowBox[{"Sinh", "[", "a", "]"}], "  ", 
               RowBox[{"Sin", "[", " ", 
                RowBox[{"2", " ", "Pi", " ", "i", " ", "y"}], "]"}]}]}], 
             ")"}], "/", 
            RowBox[{"(", 
             RowBox[{
              RowBox[{"a", "^", "2"}], " ", "+", " ", 
              RowBox[{"4", " ", 
               RowBox[{"Pi", "^", "2"}], " ", 
               RowBox[{"i", "^", "2"}]}]}], ")"}]}], ",", " ", 
           RowBox[{"{", 
            RowBox[{"i", ",", " ", "n"}], "}"}]}], "]"}]}]}]}], " ", ";", 
      "\[IndentingNewLine]", 
      RowBox[{"Plot", "[", 
       RowBox[{
        RowBox[{"{", 
         RowBox[{
          RowBox[{"Sinh", "[", "  ", 
           RowBox[{"a", " ", "x"}], " ", "]"}], ",", " ", 
          RowBox[{"g", "[", "x", "]"}]}], "}"}], ",", " ", 
        RowBox[{"{", 
         RowBox[{"x", ",", " ", "0", ",", " ", "1"}], "}"}], 
        "\[IndentingNewLine]", ",", 
        RowBox[{"Filling", "\[Rule]", 
         RowBox[{"{", 
          RowBox[{"1", "\[Rule]", 
           RowBox[{"{", 
            RowBox[{
             RowBox[{"{", "2", "}"}], ",", "Yellow"}], "}"}]}], "}"}]}]}], 
       "\[IndentingNewLine]", "]"}]}]}], "\[IndentingNewLine]", "]"}], ",", 
   "\[IndentingNewLine]", 
   RowBox[{"{", 
    RowBox[{
     RowBox[{"{", 
      RowBox[{"n", ",", " ", "3"}], "}"}], ",", " ", "1", ",", " ", "20", ",",
      " ", "1"}], "}"}]}], "]"}]}], "Input",
 CellChangeTimes->{{3.545088545476267*^9, 3.545088705380413*^9}, {
   3.545088737275237*^9, 3.5450888897869606`*^9}, {3.5451216033933024`*^9, 
   3.5451216078355565`*^9}, {3.5451216670159416`*^9, 
   3.5451219278858624`*^9}, {3.54512199131249*^9, 3.5451220787194896`*^9}, 
   3.545122115547596*^9, {3.5451221839425077`*^9, 3.5451222379986*^9}, {
   3.545122274266674*^9, 3.5451223187692194`*^9}, {3.545122611310952*^9, 
   3.545122615485191*^9}, {3.5451226896404324`*^9, 3.545122751421966*^9}, {
   3.5451236176855135`*^9, 3.5451236674983625`*^9}, {3.5451241113557496`*^9, 
   3.5451241418084917`*^9}}],

Cell[BoxData[
 TagBox[
  StyleBox[
   DynamicModuleBox[{$CellContext`n$$ = 3, Typeset`show$$ = True, 
    Typeset`bookmarkList$$ = {}, Typeset`bookmarkMode$$ = "Menu", 
    Typeset`animator$$, Typeset`animvar$$ = 1, Typeset`name$$ = 
    "\"untitled\"", Typeset`specs$$ = {{{
       Hold[$CellContext`n$$], 3}, 1, 20, 1}}, Typeset`size$$ = {
    360., {111., 115.}}, Typeset`update$$ = 0, Typeset`initDone$$, 
    Typeset`skipInitDone$$ = True, $CellContext`n$7378$$ = 0}, 
    DynamicBox[Manipulate`ManipulateBoxes[
     1, StandardForm, "Variables" :> {$CellContext`n$$ = 3}, 
      "ControllerVariables" :> {
        Hold[$CellContext`n$$, $CellContext`n$7378$$, 0]}, 
      "OtherVariables" :> {
       Typeset`show$$, Typeset`bookmarkList$$, Typeset`bookmarkMode$$, 
        Typeset`animator$$, Typeset`animvar$$, Typeset`name$$, 
        Typeset`specs$$, Typeset`size$$, Typeset`update$$, Typeset`initDone$$,
         Typeset`skipInitDone$$}, "Body" :> 
      Module[{$CellContext`g$, $CellContext`a$ = 2}, $CellContext`g$[
           Pattern[$CellContext`y$, 
            Blank[]]] = (Cosh[$CellContext`a$] - 1.)/$CellContext`a$ + 
          2 Sum[($CellContext`a$ (Cosh[$CellContext`a$] - 1.) 
               Cos[2 Pi $CellContext`i $CellContext`y$] - 2 Pi $CellContext`i 
              Sinh[$CellContext`a$] 
              Sin[2 Pi $CellContext`i $CellContext`y$])/($CellContext`a$^2 + 
             4 Pi^2 $CellContext`i^2), {$CellContext`i, $CellContext`n$$}]; 
        Plot[{
           Sinh[$CellContext`a$ $CellContext`x], 
           $CellContext`g$[$CellContext`x]}, {$CellContext`x, 0, 1}, 
          Filling -> {1 -> {{2}, Yellow}}]], 
      "Specifications" :> {{{$CellContext`n$$, 3}, 1, 20, 1}}, 
      "Options" :> {}, "DefaultOptions" :> {}],
     ImageSizeCache->{409., {157., 162.}},
     SingleEvaluation->True],
    Deinitialization:>None,
    DynamicModuleValues:>{},
    SynchronousInitialization->True,
    UnsavedVariables:>{Typeset`initDone$$},
    UntrackedVariables:>{Typeset`size$$}], "Manipulate",
   Deployed->True,
   StripOnInput->False],
  Manipulate`InterpretManipulate[1]]], "Output",
 CellChangeTimes->{{3.545123628767147*^9, 3.5451236681984024`*^9}, {
  3.545124113029845*^9, 3.545124144681656*^9}}]
}, Open  ]],

Cell[BoxData[
 RowBox[{"(*", 
  RowBox[{"Plot", "[", 
   RowBox[{
    RowBox[{"{", 
     RowBox[{
      RowBox[{"Sin", "[", "x", "]"}], ",", " ", 
      RowBox[{"Sin", "[", 
       RowBox[{"2", " ", "x"}], "]"}], ",", " ", 
      RowBox[{
       RowBox[{"Sin", "[", "x", "]"}], " ", "+", " ", 
       RowBox[{"Sin", "[", 
        RowBox[{"2", " ", "x"}], "]"}]}]}], "}"}], ",", " ", 
    RowBox[{"{", 
     RowBox[{"x", ",", " ", "0", ",", " ", 
      RowBox[{"2", " ", "Pi"}]}], "}"}]}], "]"}], "*)"}]], "Input",
 CellChangeTimes->{{3.545123831412738*^9, 3.545123844246472*^9}, {
   3.5451238758022766`*^9, 3.5451239087381606`*^9}, {3.54512394735837*^9, 
   3.545123967589527*^9}, 3.545124099420067*^9}]
},
WindowSize->{1155, 637},
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
Cell[1257, 32, 2607, 69, 152, "Input"],
Cell[3867, 103, 542, 14, 65, "Output"],
Cell[4412, 119, 545, 15, 65, "Output"],
Cell[4960, 136, 352, 9, 62, "Output"],
Cell[5315, 147, 292, 6, 62, "Output"]
}, Open  ]],
Cell[CellGroupData[{
Cell[5644, 158, 3259, 80, 212, "Input"],
Cell[8906, 240, 2243, 44, 336, "Output"]
}, Open  ]],
Cell[11164, 287, 704, 18, 31, "Input"]
}
]
*)

(* End of internal cache information *)

(* NotebookSignature 3xpbdNcLvo7OKAwsX@fWeff5 *)
