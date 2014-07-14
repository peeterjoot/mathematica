(* Content-type: application/vnd.wolfram.cdf.text *)

(*** Wolfram CDF File ***)
(* http://www.wolfram.com/cdf *)

(* CreatedBy='Mathematica 9.0' *)

(*************************************************************************)
(*                                                                       *)
(*  The Mathematica License under which this file was created prohibits  *)
(*  restricting third parties in receipt of this file from republishing  *)
(*  or redistributing it by any means, including but not limited to      *)
(*  rights management or terms of use, without the express consent of    *)
(*  Wolfram Research, Inc. For additional information concerning CDF     *)
(*  licensing and redistribution see:                                    *)
(*                                                                       *)
(*        www.wolfram.com/cdf/adopting-cdf/licensing-options.html        *)
(*                                                                       *)
(*************************************************************************)

(*CacheID: 234*)
(* Internal cache information:
NotebookFileLineBreakTest
NotebookFileLineBreakTest
NotebookDataPosition[      1063,         20]
NotebookDataLength[     14989,        355]
NotebookOptionsPosition[     15537,        351]
NotebookOutlinePosition[     15880,        366]
CellTagsIndexPosition[     15837,        363]
WindowFrame->Normal*)

(* Beginning of Notebook Content *)
Notebook[{

Cell[CellGroupData[{
Cell[BoxData[
 RowBox[{"Manipulate", "[", "\[IndentingNewLine]", 
  RowBox[{
   RowBox[{
    RowBox[{"int", " ", "=", " ", 
     RowBox[{"prime", " ", "+", " ", "discountFromPrime"}]}], " ", ";", 
    "\[IndentingNewLine]", 
    RowBox[{"intMon", " ", "=", " ", 
     RowBox[{"int", "/", "12"}]}], " ", ";", "\[IndentingNewLine]", 
    RowBox[{"totalPaid", " ", "=", " ", 
     RowBox[{"mon", " ", "*", " ", "months"}]}], " ", ";", 
    "\[IndentingNewLine]", 
    RowBox[{"futureValue", " ", "=", " ", 
     RowBox[{"f", "[", 
      RowBox[{
      "prin", ",", " ", "mon", ",", " ", "intMon", ",", " ", "months"}], 
      "]"}]}], " ", ";", "\[IndentingNewLine]", 
    RowBox[{"principleReduction", " ", "=", " ", 
     RowBox[{"prin", " ", "+", " ", "futureValue"}]}], "  ", ";", 
    "\[IndentingNewLine]", 
    RowBox[{"Grid", "[", 
     RowBox[{"{", "\[IndentingNewLine]", 
      RowBox[{
       RowBox[{"{", 
        RowBox[{"\"\<Yearly interest (prime w/ discount): \>\"", ",", " ", 
         RowBox[{"prime", " ", "+", " ", "discountFromPrime"}]}], "}"}], ",", 
       "\[IndentingNewLine]", 
       RowBox[{"{", 
        RowBox[{
         RowBox[{"Row", "[", 
          RowBox[{"{", 
           RowBox[{
            RowBox[{"months", " ", "*", " ", "12"}], ",", " ", 
            "\"\< yr future value: \>\""}], "}"}], "]"}], ",", " ", 
         "futureValue"}], "}"}], ",", "\[IndentingNewLine]", 
       RowBox[{"{", 
        RowBox[{"\"\<Amortization period: \>\"", ",", " ", 
         RowBox[{
          RowBox[{"k", "[", 
           RowBox[{"prin", ",", " ", "mon", ",", " ", "intMon"}], "]"}], "/", 
          "12"}]}], "}"}], ",", "\[IndentingNewLine]", 
       RowBox[{"{", 
        RowBox[{"\"\<Total paid: \>\"", ",", " ", "totalPaid"}], "}"}], ",", 
       "\[IndentingNewLine]", 
       RowBox[{"{", 
        RowBox[{
        "\"\<Principle reduction: \>\"", ",", "  ", "principleReduction"}], 
        "}"}], ",", "\[IndentingNewLine]", 
       RowBox[{"{", 
        RowBox[{"\"\<Interest payments: \>\"", ",", " ", 
         RowBox[{"totalPaid", " ", "-", " ", "principleReduction"}]}], 
        "}"}]}], "\[IndentingNewLine]", "}"}], "]"}]}], ",", 
   "\[IndentingNewLine]", 
   RowBox[{"{", 
    RowBox[{"int", ",", " ", "None"}], "}"}], ",", "\[IndentingNewLine]", 
   RowBox[{"{", 
    RowBox[{"intMon", ",", " ", "None"}], "}"}], ",", "\[IndentingNewLine]", 
   RowBox[{"{", 
    RowBox[{"totalPaid", ",", " ", "None"}], "}"}], ",", 
   "\[IndentingNewLine]", 
   RowBox[{"{", 
    RowBox[{"principleReduction", ",", " ", "None"}], "}"}], ",", 
   "\[IndentingNewLine]", 
   RowBox[{"{", 
    RowBox[{"futureValue", ",", " ", "None"}], "}"}], ",", 
   "\[IndentingNewLine]", 
   RowBox[{"{", 
    RowBox[{
     RowBox[{"{", 
      RowBox[{"prime", ",", " ", "0.03", ",", " ", "\"\<prime rate\>\""}], 
      "}"}], ",", " ", "0.01", ",", " ", "0.1", ",", " ", 
     RowBox[{"Appearance", "\[Rule]", "\"\<Labeled\>\""}]}], "}"}], ",", 
   "\[IndentingNewLine]", 
   RowBox[{"{", 
    RowBox[{
     RowBox[{"{", 
      RowBox[{"discountFromPrime", ",", " ", 
       RowBox[{"-", "0.005"}], ",", " ", "\"\<discount\>\""}], "}"}], ",", 
     " ", 
     RowBox[{"-", "0.01"}], ",", " ", "0.01", ",", " ", 
     RowBox[{"Appearance", "\[Rule]", "\"\<Labeled\>\""}]}], "}"}], ",", 
   "\[IndentingNewLine]", 
   RowBox[{"(*", 
    RowBox[{
     RowBox[{"{", 
      RowBox[{
       RowBox[{"{", 
        RowBox[{
        "int", ",", " ", "0.03", ",", " ", "\"\<Yearly interest rate\>\""}], 
        "}"}], ",", " ", "0.01", ",", " ", "0.15", ",", " ", 
       RowBox[{"Appearance", "\[Rule]", "\"\<Labeled\>\""}]}], "}"}], ","}], 
    "*)"}], "\[IndentingNewLine]", 
   RowBox[{"{", 
    RowBox[{
     RowBox[{"{", 
      RowBox[{"prin", ",", " ", "200000", ",", " ", "\"\<Principle\>\""}], 
      "}"}], ",", " ", "50000", ",", " ", "400000", ",", " ", 
     RowBox[{"Appearance", "\[Rule]", "\"\<Labeled\>\""}]}], "}"}], ",", 
   "\[IndentingNewLine]", 
   RowBox[{"{", 
    RowBox[{
     RowBox[{"{", 
      RowBox[{"mon", ",", " ", "1200", ",", " ", "\"\<Monthly payment\>\""}], 
      "}"}], ",", " ", "800", ",", " ", "2000", ",", " ", 
     RowBox[{"Appearance", "\[Rule]", "\"\<Labeled\>\""}]}], "}"}], ",", 
   "\[IndentingNewLine]", 
   RowBox[{"{", 
    RowBox[{
     RowBox[{"{", 
      RowBox[{
      "months", ",", " ", "60", ",", " ", 
       "\"\<Months (for future value)\>\""}], "}"}], ",", " ", "1", ",", " ", 
     RowBox[{"30", "*", "12"}], ",", " ", "1", ",", " ", 
     RowBox[{"Appearance", "\[Rule]", "\"\<Labeled\>\""}]}], "}"}], ",", 
   "\[IndentingNewLine]", 
   RowBox[{"(*", 
    RowBox[{
     RowBox[{"{", 
      RowBox[{"f", ",", " ", "None"}], "}"}], ",", "\[IndentingNewLine]", 
     RowBox[{"{", 
      RowBox[{"k", ",", " ", "None"}], "}"}], ","}], "*)"}], 
   "\[IndentingNewLine]", 
   RowBox[{
   "Initialization", " ", "\[RuleDelayed]", " ", "\[IndentingNewLine]", 
    RowBox[{"{", "\[IndentingNewLine]", 
     RowBox[{
      RowBox[{
       RowBox[{"f", "[", " ", 
        RowBox[{
        "principle_", ",", "amount_", ",", " ", "interest_", ",", " ", "n_"}],
         "]"}], " ", ":=", " ", 
       RowBox[{
        RowBox[{
         RowBox[{
          RowBox[{"(", 
           RowBox[{
            RowBox[{"-", "principle"}], " ", "+", " ", 
            RowBox[{"amount", "/", "interest"}]}], ")"}], 
          RowBox[{
           RowBox[{"(", 
            RowBox[{"1", " ", "+", " ", "interest"}], ")"}], "^", "n"}]}], 
         " ", "-", " ", 
         RowBox[{"amount", "/", 
          RowBox[{"(", "interest", ")"}]}]}], " ", "//", " ", "Floor"}]}], 
      " ", ";", "\[IndentingNewLine]", 
      RowBox[{
       RowBox[{"k", "[", 
        RowBox[{"principle_", ",", "amount_", ",", " ", "interest_"}], "]"}], 
       " ", ":=", " ", "\[IndentingNewLine]", 
       RowBox[{
        RowBox[{"-", " ", 
         RowBox[{"Log", "[", 
          RowBox[{"1", " ", "-", " ", 
           RowBox[{"interest", " ", 
            RowBox[{"principle", "/", "amount"}]}]}], "]"}]}], "/", 
        "\[IndentingNewLine]", 
        RowBox[{"Log", "[", 
         RowBox[{"1", " ", "+", " ", "interest"}], "]"}]}]}], " ", ";"}], 
     "\[IndentingNewLine]", "}"}]}], ",", "\[IndentingNewLine]", 
   RowBox[{"SaveDefinitions", "\[Rule]", "True"}]}], "\[IndentingNewLine]", 
  "]"}]], "Input",
 CellChangeTimes->{{3.612004010010156*^9, 3.6120042415063972`*^9}, 
   3.612004285114891*^9, {3.6120043162896743`*^9, 3.612004344766303*^9}, {
   3.612004490310628*^9, 3.612004739150861*^9}, {3.612004774001854*^9, 
   3.6120047781060886`*^9}, {3.6120048168083024`*^9, 
   3.6120048247987595`*^9}, {3.612010601205151*^9, 3.6120106306038322`*^9}, {
   3.612010683846878*^9, 3.612010713630581*^9}, {3.6139918959681635`*^9, 
   3.6139919395346556`*^9}, {3.613991988177438*^9, 3.6139919886164627`*^9}}],

Cell[BoxData[
 TagBox[
  StyleBox[
   DynamicModuleBox[{$CellContext`discountFromPrime$$ = -0.005, \
$CellContext`futureValue$$ = -149992, $CellContext`int$$ = 
    0.024999999999999998`, $CellContext`intMon$$ = 
    0.002083333333333333, $CellContext`mon$$ = 1200, $CellContext`months$$ = 
    60, $CellContext`prime$$ = 0.03, $CellContext`prin$$ = 
    200000, $CellContext`principleReduction$$ = 
    50008, $CellContext`totalPaid$$ = 72000, Typeset`show$$ = True, 
    Typeset`bookmarkList$$ = {}, Typeset`bookmarkMode$$ = "Menu", 
    Typeset`animator$$, Typeset`animvar$$ = 1, Typeset`name$$ = 
    "\"untitled\"", Typeset`specs$$ = {{
      Hold[$CellContext`int$$], 0}, {
      Hold[$CellContext`intMon$$], 0}, {
      Hold[$CellContext`totalPaid$$], 0}, {
      Hold[$CellContext`principleReduction$$], 0}, {
      Hold[$CellContext`futureValue$$], 0}, {{
       Hold[$CellContext`prime$$], 0.03, "prime rate"}, 0.01, 0.1}, {{
       Hold[$CellContext`discountFromPrime$$], -0.005, "discount"}, -0.01, 
      0.01}, {{
       Hold[$CellContext`prin$$], 200000, "Principle"}, 50000, 400000}, {{
       Hold[$CellContext`mon$$], 1200, "Monthly payment"}, 800, 2000}, {{
       Hold[$CellContext`months$$], 60, "Months (for future value)"}, 1, 360, 
      1}}, Typeset`size$$ = {456., {58., 65.}}, Typeset`update$$ = 0, 
    Typeset`initDone$$, Typeset`skipInitDone$$ = 
    False, $CellContext`prime$3223$$ = 
    0, $CellContext`discountFromPrime$3224$$ = 0, $CellContext`prin$3225$$ = 
    0, $CellContext`mon$3226$$ = 0, $CellContext`months$3227$$ = 0}, 
    DynamicBox[Manipulate`ManipulateBoxes[
     1, StandardForm, 
      "Variables" :> {$CellContext`discountFromPrime$$ = -0.005, \
$CellContext`futureValue$$ = 0, $CellContext`int$$ = 0, $CellContext`intMon$$ = 
        0, $CellContext`mon$$ = 1200, $CellContext`months$$ = 
        60, $CellContext`prime$$ = 0.03, $CellContext`prin$$ = 
        200000, $CellContext`principleReduction$$ = 
        0, $CellContext`totalPaid$$ = 0}, "ControllerVariables" :> {
        Hold[$CellContext`prime$$, $CellContext`prime$3223$$, 0], 
        Hold[$CellContext`discountFromPrime$$, \
$CellContext`discountFromPrime$3224$$, 0], 
        Hold[$CellContext`prin$$, $CellContext`prin$3225$$, 0], 
        Hold[$CellContext`mon$$, $CellContext`mon$3226$$, 0], 
        Hold[$CellContext`months$$, $CellContext`months$3227$$, 0]}, 
      "OtherVariables" :> {
       Typeset`show$$, Typeset`bookmarkList$$, Typeset`bookmarkMode$$, 
        Typeset`animator$$, Typeset`animvar$$, Typeset`name$$, 
        Typeset`specs$$, Typeset`size$$, Typeset`update$$, Typeset`initDone$$,
         Typeset`skipInitDone$$}, 
      "Body" :> ($CellContext`int$$ = $CellContext`prime$$ + \
$CellContext`discountFromPrime$$; $CellContext`intMon$$ = $CellContext`int$$/
         12; $CellContext`totalPaid$$ = $CellContext`mon$$ \
$CellContext`months$$; $CellContext`futureValue$$ = \
$CellContext`f[$CellContext`prin$$, $CellContext`mon$$, \
$CellContext`intMon$$, $CellContext`months$$]; \
$CellContext`principleReduction$$ = $CellContext`prin$$ + \
$CellContext`futureValue$$; 
       Grid[{{"Yearly interest (prime w/ discount): ", $CellContext`prime$$ + \
$CellContext`discountFromPrime$$}, {
           
           Row[{$CellContext`months$$ 12, 
             " yr future value: "}], $CellContext`futureValue$$}, {
          "Amortization period: ", $CellContext`k[$CellContext`prin$$, \
$CellContext`mon$$, $CellContext`intMon$$]/12}, {
          "Total paid: ", $CellContext`totalPaid$$}, {
          "Principle reduction: ", $CellContext`principleReduction$$}, {
          "Interest payments: ", $CellContext`totalPaid$$ - \
$CellContext`principleReduction$$}}]), 
      "Specifications" :> {{$CellContext`int$$, 0, ControlType -> 
         None}, {$CellContext`intMon$$, 0, ControlType -> 
         None}, {$CellContext`totalPaid$$, 0, ControlType -> 
         None}, {$CellContext`principleReduction$$, 0, ControlType -> 
         None}, {$CellContext`futureValue$$, 0, ControlType -> 
         None}, {{$CellContext`prime$$, 0.03, "prime rate"}, 0.01, 0.1, 
         Appearance -> 
         "Labeled"}, {{$CellContext`discountFromPrime$$, -0.005, 
          "discount"}, -0.01, 0.01, Appearance -> 
         "Labeled"}, {{$CellContext`prin$$, 200000, "Principle"}, 50000, 
         400000, Appearance -> 
         "Labeled"}, {{$CellContext`mon$$, 1200, "Monthly payment"}, 800, 
         2000, Appearance -> 
         "Labeled"}, {{$CellContext`months$$, 60, 
          "Months (for future value)"}, 1, 360, 1, Appearance -> "Labeled"}}, 
      "Options" :> {}, "DefaultOptions" :> {}],
     ImageSizeCache->{556., {192., 199.}},
     SingleEvaluation->True],
    Deinitialization:>None,
    DynamicModuleValues:>{},
    Initialization:>({{$CellContext`f[
           Pattern[$CellContext`principle, 
            Blank[]], 
           Pattern[$CellContext`amount, 
            Blank[]], 
           Pattern[$CellContext`interest, 
            Blank[]], 
           Pattern[$CellContext`n, 
            Blank[]]] := 
         Floor[(-$CellContext`principle + \
$CellContext`amount/$CellContext`interest) (
              1 + $CellContext`interest)^$CellContext`n - \
$CellContext`amount/$CellContext`interest], $CellContext`k[
           Pattern[$CellContext`principle, 
            Blank[]], 
           Pattern[$CellContext`amount, 
            Blank[]], 
           Pattern[$CellContext`interest, 
            Blank[]]] := -
          Log[1 - $CellContext`interest \
($CellContext`principle/$CellContext`amount)]/Log[
          1 + $CellContext`interest]}; {$CellContext`f[
            Pattern[$CellContext`principle, 
             Blank[]], 
            Pattern[$CellContext`amount, 
             Blank[]], 
            Pattern[$CellContext`interest, 
             Blank[]], 
            Pattern[$CellContext`n, 
             Blank[]]] := 
          Floor[(-$CellContext`principle + \
$CellContext`amount/$CellContext`interest) (
               1 + $CellContext`interest)^$CellContext`n - \
$CellContext`amount/$CellContext`interest]; $CellContext`k[
            Pattern[$CellContext`principle, 
             Blank[]], 
            Pattern[$CellContext`amount, 
             Blank[]], 
            Pattern[$CellContext`interest, 
             Blank[]]] := (-
            Log[1 - $CellContext`interest \
($CellContext`principle/$CellContext`amount)])/Log[1 + $CellContext`interest]; 
         Null}}; Typeset`initDone$$ = True),
    SynchronousInitialization->True,
    UnsavedVariables:>{Typeset`initDone$$},
    UntrackedVariables:>{Typeset`size$$}], "Manipulate",
   Deployed->True,
   StripOnInput->False],
  Manipulate`InterpretManipulate[1]]], "Output",
 CellChangeTimes->{
  3.6120043730439205`*^9, 3.612004619811035*^9, 3.6120047404279337`*^9, 
   3.612004778565115*^9, {3.612004825563803*^9, 3.612004854657467*^9}, 
   3.612007361774866*^9, 3.6120076168984585`*^9, {3.612010660262529*^9, 
   3.6120106696340647`*^9}, {3.6120107069011965`*^9, 3.612010714688642*^9}, {
   3.6139919779428525`*^9, 3.613991989451511*^9}, 3.6139922202907143`*^9}]
}, Open  ]],

Cell[BoxData[""], "Input",
 CellChangeTimes->{{3.613992215978467*^9, 3.613992217406549*^9}}]
},
WindowSize->{1134, 694},
WindowMargins->{{0, Automatic}, {Automatic, 0}},
FrontEndVersion->"9.0 for Microsoft Windows (64-bit) (January 25, 2013)",
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
Cell[1485, 35, 6840, 167, 941, "Input"],
Cell[8328, 204, 7098, 141, 413, "Output"]
}, Open  ]],
Cell[15441, 348, 92, 1, 39, "Input"]
}
]
*)

(* End of internal cache information *)

(* NotebookSignature lvpjhMtSmqB2yDwNmETBKJ3W *)
