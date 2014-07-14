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
NotebookDataLength[      4852,        139]
NotebookOptionsPosition[      5425,        135]
NotebookOutlinePosition[      5767,        150]
CellTagsIndexPosition[      5724,        147]
WindowFrame->Normal*)

(* Beginning of Notebook Content *)
Notebook[{

Cell[CellGroupData[{
Cell[BoxData[
 RowBox[{"Manipulate", "[", 
  RowBox[{
   RowBox[{
    RowBox[{"r", "=", 
     RowBox[{"Range", "[", "n", "]"}]}], ";", "\[IndentingNewLine]", 
    RowBox[{"powers", "=", 
     RowBox[{
      RowBox[{"(", 
       RowBox[{
        RowBox[{
         RowBox[{"(", 
          RowBox[{"n", "-", "1"}], ")"}], " ", "#"}], "&"}], ")"}], "@", 
      "r"}]}], ";", "\[IndentingNewLine]", 
    RowBox[{"ones", "=", 
     RowBox[{
      RowBox[{
       RowBox[{"Mod", "[", 
        RowBox[{"#", ",", "n"}], "]"}], "&"}], "@", "powers"}]}], ";", 
    "\[IndentingNewLine]", 
    RowBox[{"tens", "=", 
     RowBox[{
      RowBox[{
       RowBox[{"Quotient", "[", 
        RowBox[{"#", ",", "n"}], "]"}], "&"}], "@", "powers"}]}], ";", 
    "\[IndentingNewLine]", 
    RowBox[{
     RowBox[{"Prepend", "[", 
      RowBox[{
       RowBox[{
        RowBox[{"{", 
         RowBox[{"r", ",", "powers", ",", "ones", ",", "tens", ",", 
          RowBox[{"ones", "+", "tens"}]}], "}"}], "//", "Transpose"}], ",", 
       RowBox[{"{", 
        RowBox[{
         RowBox[{"Row", "[", 
          RowBox[{"{", 
           RowBox[{"\"\<d \[Element] [1, \>\"", ",", "n", ",", "\"\<]\>\""}], 
           "}"}], "]"}], ",", 
         RowBox[{"Row", "[", 
          RowBox[{"{", 
           RowBox[{
            RowBox[{"(", 
             RowBox[{"n", "-", "1"}], ")"}], ",", "\"\< \[Cross] d\>\""}], 
           "}"}], "]"}], ",", "\"\<ones\>\"", ",", "\"\<''tens''\>\"", ",", 
         "\"\<sum\>\""}], "}"}]}], "]"}], "//", "TableForm"}]}], ",", 
   RowBox[{"{", 
    RowBox[{
     RowBox[{"{", 
      RowBox[{"n", ",", "10", ",", "\"\<n\>\""}], "}"}], ",", "1", ",", "20", 
     ",", "1"}], "}"}]}], "]"}]], "Input",
 CellOpen->False,
 CellChangeTimes->{{3.6143359263771105`*^9, 3.6143359263861113`*^9}}],

Cell[BoxData[
 TagBox[
  StyleBox[
   DynamicModuleBox[{$CellContext`n$$ = 10, Typeset`show$$ = True, 
    Typeset`bookmarkList$$ = {}, Typeset`bookmarkMode$$ = "Menu", 
    Typeset`animator$$, Typeset`animvar$$ = 1, Typeset`name$$ = 
    "\"untitled\"", Typeset`specs$$ = {{{
       Hold[$CellContext`n$$], 10, "n"}, 1, 20, 1}}, Typeset`size$$ = {
    454., {108.5, 115.5}}, Typeset`update$$ = 0, Typeset`initDone$$, 
    Typeset`skipInitDone$$ = True, $CellContext`n$356$$ = 0}, 
    DynamicBox[Manipulate`ManipulateBoxes[
     1, StandardForm, "Variables" :> {$CellContext`n$$ = 10}, 
      "ControllerVariables" :> {
        Hold[$CellContext`n$$, $CellContext`n$356$$, 0]}, 
      "OtherVariables" :> {
       Typeset`show$$, Typeset`bookmarkList$$, Typeset`bookmarkMode$$, 
        Typeset`animator$$, Typeset`animvar$$, Typeset`name$$, 
        Typeset`specs$$, Typeset`size$$, Typeset`update$$, Typeset`initDone$$,
         Typeset`skipInitDone$$}, 
      "Body" :> ($CellContext`r = 
        Range[$CellContext`n$$]; $CellContext`powers = (($CellContext`n$$ - 
          1) #& )[$CellContext`r]; $CellContext`ones = (
         Mod[#, $CellContext`n$$]& )[$CellContext`powers]; $CellContext`tens = \
(Quotient[#, $CellContext`n$$]& )[$CellContext`powers]; TableForm[
         Prepend[
          
          Transpose[{$CellContext`r, $CellContext`powers, $CellContext`ones, \
$CellContext`tens, $CellContext`ones + $CellContext`tens}], {
           Row[{"d \[Element] [1, ", $CellContext`n$$, "]"}], 
           Row[{$CellContext`n$$ - 1, " \[Cross] d"}], "ones", "''tens''", 
           "sum"}]]), 
      "Specifications" :> {{{$CellContext`n$$, 10, "n"}, 1, 20, 1}}, 
      "Options" :> {}, "DefaultOptions" :> {}],
     ImageSizeCache->{517., {169., 176.}},
     SingleEvaluation->True],
    Deinitialization:>None,
    DynamicModuleValues:>{},
    SynchronousInitialization->True,
    UnsavedVariables:>{Typeset`initDone$$},
    UntrackedVariables:>{Typeset`size$$}], "Manipulate",
   Deployed->True,
   StripOnInput->False],
  Manipulate`InterpretManipulate[1]]], "Output",
 CellChangeTimes->{3.6143359319134274`*^9}]
}, Open  ]]
},
WindowSize->{707, 637},
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
Cell[1485, 35, 1792, 52, 25, "Input",
 CellOpen->False],
Cell[3280, 89, 2129, 43, 367, "Output"]
}, Open  ]]
}
]
*)

(* End of internal cache information *)

(* NotebookSignature 9uT7RNiDUnuNgB1HHGPDvOve *)
