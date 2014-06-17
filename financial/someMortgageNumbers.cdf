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
NotebookDataLength[     13067,        307]
NotebookOptionsPosition[     13587,        302]
NotebookOutlinePosition[     13930,        317]
CellTagsIndexPosition[     13887,        314]
WindowFrame->Normal*)

(* Beginning of Notebook Content *)
Notebook[{
Cell[BoxData[{
 RowBox[{
  RowBox[{
   RowBox[{"ClearAll", "[", "  ", 
    RowBox[{"f", ",", " ", "k"}], " ", "]"}], " ", ";"}], 
  "\[IndentingNewLine]"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{
   RowBox[{"f", "[", " ", 
    RowBox[{
    "principle_", ",", "amount_", ",", " ", "interest_", ",", " ", "n_"}], 
    "]"}], " ", "=", " ", 
   RowBox[{
    RowBox[{
     RowBox[{
      RowBox[{"(", 
       RowBox[{
        RowBox[{"-", "principle"}], " ", "+", " ", 
        RowBox[{"amount", "/", "interest"}]}], ")"}], 
      RowBox[{
       RowBox[{"(", 
        RowBox[{"1", " ", "+", " ", "interest"}], ")"}], "^", "n"}]}], " ", 
     "-", " ", 
     RowBox[{"amount", "/", 
      RowBox[{"(", "interest", ")"}]}]}], " ", "//", " ", "Floor"}]}], " ", 
  ";"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{
   RowBox[{"k", "[", 
    RowBox[{"principle_", ",", "amount_", ",", " ", "interest_"}], "]"}], " ",
    "=", " ", "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{"-", " ", 
     RowBox[{"Log", "[", 
      RowBox[{"1", " ", "-", " ", 
       RowBox[{"interest", " ", 
        RowBox[{"principle", "/", "amount"}]}]}], "]"}]}], "/", 
    "\[IndentingNewLine]", 
    RowBox[{"Log", "[", 
     RowBox[{"1", " ", "+", " ", "interest"}], "]"}]}]}], " ", 
  ";"}], "\[IndentingNewLine]"}], "Input",
 InitializationCell->True,
 CellChangeTimes->{{3.61187775687284*^9, 3.6118778278539*^9}, {
  3.6118778922935853`*^9, 3.61187791039262*^9}, {3.6118785895884686`*^9, 
  3.6118787908339787`*^9}, {3.611879035610979*^9, 3.6118790508448505`*^9}, {
  3.6118790861778717`*^9, 3.6118791388838863`*^9}, {3.6118792123390875`*^9, 
  3.6118792701243925`*^9}, {3.611880287342574*^9, 3.6118802888606615`*^9}, {
  3.6120019741917143`*^9, 3.6120020180072203`*^9}, {3.6120020655749407`*^9, 
  3.6120022974962063`*^9}, {3.612002333310254*^9, 3.612002374281598*^9}, {
  3.612002406050415*^9, 3.6120026290091677`*^9}, {3.6120026696554923`*^9, 
  3.61200292836329*^9}, {3.6120039340768127`*^9, 3.612003951171791*^9}, {
  3.612004436378543*^9, 3.6120044509003735`*^9}}],

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
     RowBox[{"mon", " ", "*", " ", "years", " ", "*", " ", "12"}]}], " ", ";",
     "\[IndentingNewLine]", 
    RowBox[{"futureValue", " ", "=", " ", 
     RowBox[{"f", "[", 
      RowBox[{"prin", ",", " ", "mon", ",", " ", "intMon", ",", " ", 
       RowBox[{"years", "*", "12"}]}], "]"}]}], " ", ";", 
    "\[IndentingNewLine]", 
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
           RowBox[{"years", ",", " ", "\"\< yr future value: \>\""}], "}"}], 
          "]"}], ",", " ", "futureValue"}], "}"}], ",", "\[IndentingNewLine]", 
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
      "years", ",", " ", "5", ",", " ", "\"\<Years (for future value)\>\""}], 
      "}"}], ",", " ", "1", ",", " ", "30", ",", " ", "1", ",", " ", 
     RowBox[{"Appearance", "\[Rule]", "\"\<Labeled\>\""}]}], "}"}]}], 
  "\[IndentingNewLine]", "]"}]], "Input",
 CellChangeTimes->{{3.612004010010156*^9, 3.6120042415063972`*^9}, 
   3.612004285114891*^9, {3.6120043162896743`*^9, 3.612004344766303*^9}, {
   3.612004490310628*^9, 3.612004739150861*^9}, {3.612004774001854*^9, 
   3.6120047781060886`*^9}, {3.6120048168083024`*^9, 3.6120048247987595`*^9}}],

Cell[BoxData[
 TagBox[
  StyleBox[
   DynamicModuleBox[{$CellContext`discountFromPrime$$ = -0.005, \
$CellContext`futureValue$$ = -149992, $CellContext`int$$ = 
    0.024999999999999998`, $CellContext`intMon$$ = 
    0.002083333333333333, $CellContext`mon$$ = 1200, $CellContext`prime$$ = 
    0.03, $CellContext`prin$$ = 200000, $CellContext`principleReduction$$ = 
    50008, $CellContext`totalPaid$$ = 72000, $CellContext`years$$ = 5, 
    Typeset`show$$ = True, Typeset`bookmarkList$$ = {}, 
    Typeset`bookmarkMode$$ = "Menu", Typeset`animator$$, Typeset`animvar$$ = 
    1, Typeset`name$$ = "\"untitled\"", Typeset`specs$$ = {{
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
       Hold[$CellContext`years$$], 5, "Years (for future value)"}, 1, 30, 1}},
     Typeset`size$$ = {456., {58., 65.}}, Typeset`update$$ = 0, 
    Typeset`initDone$$, Typeset`skipInitDone$$ = 
    True, $CellContext`prime$16279$$ = 
    0, $CellContext`discountFromPrime$16280$$ = 0, $CellContext`prin$16281$$ =
     0, $CellContext`mon$16282$$ = 0, $CellContext`years$16283$$ = 0}, 
    DynamicBox[Manipulate`ManipulateBoxes[
     1, StandardForm, 
      "Variables" :> {$CellContext`discountFromPrime$$ = -0.005, \
$CellContext`futureValue$$ = 0, $CellContext`int$$ = 0, $CellContext`intMon$$ = 
        0, $CellContext`mon$$ = 1200, $CellContext`prime$$ = 
        0.03, $CellContext`prin$$ = 200000, $CellContext`principleReduction$$ = 
        0, $CellContext`totalPaid$$ = 0, $CellContext`years$$ = 5}, 
      "ControllerVariables" :> {
        Hold[$CellContext`prime$$, $CellContext`prime$16279$$, 0], 
        Hold[$CellContext`discountFromPrime$$, \
$CellContext`discountFromPrime$16280$$, 0], 
        Hold[$CellContext`prin$$, $CellContext`prin$16281$$, 0], 
        Hold[$CellContext`mon$$, $CellContext`mon$16282$$, 0], 
        Hold[$CellContext`years$$, $CellContext`years$16283$$, 0]}, 
      "OtherVariables" :> {
       Typeset`show$$, Typeset`bookmarkList$$, Typeset`bookmarkMode$$, 
        Typeset`animator$$, Typeset`animvar$$, Typeset`name$$, 
        Typeset`specs$$, Typeset`size$$, Typeset`update$$, Typeset`initDone$$,
         Typeset`skipInitDone$$}, 
      "Body" :> ($CellContext`int$$ = $CellContext`prime$$ + \
$CellContext`discountFromPrime$$; $CellContext`intMon$$ = $CellContext`int$$/
         12; $CellContext`totalPaid$$ = $CellContext`mon$$ \
$CellContext`years$$ 
         12; $CellContext`futureValue$$ = $CellContext`f[$CellContext`prin$$, \
$CellContext`mon$$, $CellContext`intMon$$, $CellContext`years$$ 
          12]; $CellContext`principleReduction$$ = $CellContext`prin$$ + \
$CellContext`futureValue$$; 
       Grid[{{"Yearly interest (prime w/ discount): ", $CellContext`prime$$ + \
$CellContext`discountFromPrime$$}, {
           
           Row[{$CellContext`years$$, 
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
         "Labeled"}, {{$CellContext`years$$, 5, "Years (for future value)"}, 
         1, 30, 1, Appearance -> "Labeled"}}, "Options" :> {}, 
      "DefaultOptions" :> {}],
     ImageSizeCache->{542., {192., 199.}},
     SingleEvaluation->True],
    Deinitialization:>None,
    DynamicModuleValues:>{},
    SynchronousInitialization->True,
    UnsavedVariables:>{Typeset`initDone$$},
    UntrackedVariables:>{Typeset`size$$}], "Manipulate",
   Deployed->True,
   StripOnInput->False],
  Manipulate`InterpretManipulate[1]]], "Output",
 CellChangeTimes->{
  3.6120043730439205`*^9, 3.612004619811035*^9, 3.6120047404279337`*^9, 
   3.612004778565115*^9, {3.612004825563803*^9, 3.612004854657467*^9}}]
}, Open  ]]
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
Cell[1463, 33, 2055, 51, 216, "Input",
 InitializationCell->True],
Cell[CellGroupData[{
Cell[3543, 88, 4864, 115, 666, "Input"],
Cell[8410, 205, 5161, 94, 445, "Output"]
}, Open  ]]
}
]
*)

(* End of internal cache information *)

(* NotebookSignature ex0M4vwONpuHLCwAKgrV#UKW *)
