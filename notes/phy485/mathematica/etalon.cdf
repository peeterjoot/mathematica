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
NotebookDataLength[    315959,       5582]
NotebookOptionsPosition[    315533,       5552]
NotebookOutlinePosition[    315875,       5567]
CellTagsIndexPosition[    315832,       5564]
WindowFrame->Normal*)

(* Beginning of Notebook Content *)
Notebook[{

Cell[CellGroupData[{
Cell[BoxData[{
 RowBox[{"Clear", "[", 
  RowBox[{"f", ",", " ", "r"}], "]"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{"f", "[", "r_", "]"}], " ", ":=", " ", 
  RowBox[{"4", " ", 
   RowBox[{"r", " ", "/", 
    RowBox[{
     RowBox[{"(", 
      RowBox[{"1", "-", "r"}], ")"}], "^", "2"}]}]}]}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{"i", "[", 
   RowBox[{"r_", ",", " ", "delta_"}], "]"}], " ", ":=", " ", 
  RowBox[{"1", "/", 
   RowBox[{"(", 
    RowBox[{"1", " ", "+", " ", 
     RowBox[{
      RowBox[{"f", "[", "r", "]"}], " ", 
      RowBox[{
       RowBox[{"Sin", "[", 
        RowBox[{"delta", "/", "2"}], "]"}], "^", "2"}]}]}], 
    ")"}]}]}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{"Manipulate", "[", "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{"Plot", "[", 
     RowBox[{
      RowBox[{"i", "[", 
       RowBox[{"r", ",", " ", "delta"}], "]"}], ",", " ", 
      RowBox[{"{", 
       RowBox[{"delta", ",", " ", "0", ",", " ", 
        RowBox[{"10", " ", "Pi"}]}], "}"}]}], "]"}], "\[IndentingNewLine]", 
    ",", "\[IndentingNewLine]", 
    RowBox[{"{", 
     RowBox[{
      RowBox[{"{", 
       RowBox[{"r", ",", " ", "0.1"}], "}"}], ",", " ", "0.01", ",", " ", 
      "0.99"}], "}"}]}], "\[IndentingNewLine]", "]"}], "\[IndentingNewLine]", 
  "\[IndentingNewLine]", "\[IndentingNewLine]", "\[IndentingNewLine]", 
  RowBox[{"(*", 
   RowBox[{"Show", "[", "\[IndentingNewLine]", 
    RowBox[{"Table", "[", " ", 
     RowBox[{
      RowBox[{"Plot", "[", 
       RowBox[{
        RowBox[{"i", "[", 
         RowBox[{"r", ",", " ", "delta"}], "]"}], ",", " ", 
        RowBox[{"{", 
         RowBox[{"delta", ",", " ", "0", ",", " ", 
          RowBox[{"4", " ", "Pi"}]}], "}"}], ",", " ", 
        RowBox[{"PlotRange", " ", "\[Rule]", " ", 
         RowBox[{"{", 
          RowBox[{"0", ",", " ", "1"}], "}"}]}]}], "]"}], ",", " ", 
      RowBox[{"{", 
       RowBox[{"r", ",", " ", 
        RowBox[{"{", 
         RowBox[{"0.1", ",", " ", "0.3", ",", " ", "0.6", ",", " ", "0.97"}], 
         "}"}]}], "}"}]}], "]"}], "\[IndentingNewLine]", "]"}], 
   "\[IndentingNewLine]", "*)"}], "\[IndentingNewLine]", 
  "\[IndentingNewLine]", "\[IndentingNewLine]", 
  RowBox[{"(*", " ", 
   ButtonBox[
    RowBox[{"\[IndentingNewLine]", 
     RowBox[{
      RowBox[{"http", ":"}], "//", 
      RowBox[{
       RowBox[{
        RowBox[{
         RowBox[{
          RowBox[{"mathematica", ".", "stackexchange", ".", "com"}], "/", 
          "questions"}], "/", "13906"}], "/", "given"}], "-", "a", "-", 
       "table", "-", "of", "-", "plots", "-", "with", "-", "some", "-", 
       "parameter", "-", "how", "-", "would", "-", "i", "-", "mark", "-", 
       "each", "-", "of", "-", "the", "-", "plots", "-", "w"}]}]}],
    BaseStyle->"Hyperlink",
    ButtonData->{
      URL[
      "http://mathematica.stackexchange.com/questions/13906/given-a-table-of-\
plots-with-some-parameter-how-would-i-mark-each-of-the-plots-w"], None},
    ButtonNote->
     "http://mathematica.stackexchange.com/questions/13906/given-a-table-of-\
plots-with-some-parameter-how-would-i-mark-each-of-the-plots-w"], " ", "*)"}],
   "\[IndentingNewLine]", 
  RowBox[{"(*", "\[IndentingNewLine]", 
   ButtonBox[
    RowBox[{
     RowBox[{"http", ":"}], "//", 
     RowBox[{
      RowBox[{
       RowBox[{
        RowBox[{
         RowBox[{"mathematica", ".", "stackexchange", ".", "com"}], "/", 
         "questions"}], "/", "6894"}], "/", "why"}], "-", "do", "-", "i", "-",
       "have", "-", "to", "-", "put", "-", "evaluate", "-", "here"}]}],
    BaseStyle->"Hyperlink",
    ButtonData->{
      URL[
      "http://mathematica.stackexchange.com/questions/6894/why-do-i-have-to-\
put-evaluate-here"], None},
    ButtonNote->
     "http://mathematica.stackexchange.com/questions/6894/why-do-i-have-to-\
put-evaluate-here"], "\[IndentingNewLine]", "*)"}]}], "\[IndentingNewLine]", 
 RowBox[{"Needs", "[", "\"\<PlotLegends`\>\"", "]"}], "\[IndentingNewLine]", 
 RowBox[{"Clear", "[", "rValues", "]"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{"rValues", " ", ":=", " ", 
   RowBox[{"{", 
    RowBox[{"0.1", ",", "0.3", ",", "0.6", ",", "0.97"}], "}"}]}], 
  "\[IndentingNewLine]", 
  RowBox[{"(*", 
   RowBox[{"Plot", "[", 
    RowBox[{
     RowBox[{"Evaluate", "@", 
      RowBox[{"Table", "[", 
       RowBox[{
        RowBox[{"i", "[", 
         RowBox[{"r", ",", "delta"}], "]"}], ",", 
        RowBox[{"{", 
         RowBox[{"r", ",", " ", "rValues"}], "}"}]}], "]"}]}], ",", 
     RowBox[{"{", 
      RowBox[{"delta", ",", "0", ",", 
       RowBox[{"4", " ", "Pi"}]}], "}"}], "\[IndentingNewLine]", ",", 
     RowBox[{"PlotRange", "\[Rule]", 
      RowBox[{"{", 
       RowBox[{"0", ",", "1"}], "}"}]}], "\[IndentingNewLine]", ",", 
     RowBox[{"PlotLegend", "\[Rule]", 
      RowBox[{"{", 
       RowBox[{
       "\"\<R = 0.1\>\"", ",", "\"\<R = 0.3\>\"", ",", "\"\<R = 0.6\>\"", 
        ",", "\"\<R = 0.97\>\""}], "}"}]}], "\[IndentingNewLine]", ",", 
     RowBox[{"LegendPosition", "\[Rule]", 
      RowBox[{"{", 
       RowBox[{"0.95", ",", "0.05"}], "}"}]}]}], "\[IndentingNewLine]", "]"}],
    "\[IndentingNewLine]", "*)"}]}], "\[IndentingNewLine]", 
 RowBox[{"Plot", "[", 
  RowBox[{
   RowBox[{"Evaluate", "[", 
    RowBox[{"Table", "[", 
     RowBox[{
      RowBox[{"i", "[", 
       RowBox[{"r", ",", "delta"}], "]"}], ",", 
      RowBox[{"{", 
       RowBox[{"r", ",", " ", "rValues"}], "}"}]}], "]"}], "]"}], ",", 
   RowBox[{"{", 
    RowBox[{"delta", ",", "0", ",", 
     RowBox[{"4", " ", "Pi"}]}], "}"}], "\[IndentingNewLine]", ",", 
   RowBox[{"PlotRange", "\[Rule]", 
    RowBox[{"{", 
     RowBox[{"0", ",", "1"}], "}"}]}], "\[IndentingNewLine]", ",", 
   RowBox[{"PlotLegend", "\[Rule]", 
    RowBox[{"{", 
     RowBox[{
     "\"\<R = 0.1\>\"", ",", "\"\<R = 0.3\>\"", ",", "\"\<R = 0.6\>\"", ",", 
      "\"\<R = 0.97\>\""}], "}"}]}], "\[IndentingNewLine]", ",", 
   RowBox[{"LegendPosition", "\[Rule]", 
    RowBox[{"{", 
     RowBox[{"0.95", ",", "0.05"}], "}"}]}]}], "\[IndentingNewLine]", 
  "]"}], "\[IndentingNewLine]"}], "Input",
 CellChangeTimes->{{3.560614960854762*^9, 3.5606150969660015`*^9}, {
   3.560615173402936*^9, 3.560615292144745*^9}, {3.5606219313235517`*^9, 
   3.5606219631134915`*^9}, {3.5606224064318852`*^9, 3.560622535904518*^9}, {
   3.560633695738126*^9, 3.560633746214198*^9}, {3.560634475270808*^9, 
   3.5606345714859433`*^9}, 3.5608941178982663`*^9}],

Cell[BoxData[
 TagBox[
  StyleBox[
   DynamicModuleBox[{$CellContext`r$$ = 0.1, Typeset`show$$ = True, 
    Typeset`bookmarkList$$ = {}, Typeset`bookmarkMode$$ = "Menu", 
    Typeset`animator$$, Typeset`animvar$$ = 1, Typeset`name$$ = 
    "\"untitled\"", Typeset`specs$$ = {{{
       Hold[$CellContext`r$$], 0.1}, 0.01, 0.99}}, Typeset`size$$ = {
    360., {111., 115.}}, Typeset`update$$ = 0, Typeset`initDone$$, 
    Typeset`skipInitDone$$ = True, $CellContext`r$964$$ = 0}, 
    DynamicBox[Manipulate`ManipulateBoxes[
     1, StandardForm, "Variables" :> {$CellContext`r$$ = 0.1}, 
      "ControllerVariables" :> {
        Hold[$CellContext`r$$, $CellContext`r$964$$, 0]}, 
      "OtherVariables" :> {
       Typeset`show$$, Typeset`bookmarkList$$, Typeset`bookmarkMode$$, 
        Typeset`animator$$, Typeset`animvar$$, Typeset`name$$, 
        Typeset`specs$$, Typeset`size$$, Typeset`update$$, Typeset`initDone$$,
         Typeset`skipInitDone$$}, "Body" :> Plot[
        $CellContext`i[$CellContext`r$$, $CellContext`delta], \
{$CellContext`delta, 0, 10 Pi}], 
      "Specifications" :> {{{$CellContext`r$$, 0.1}, 0.01, 0.99}}, 
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
 CellChangeTimes->{{3.5606150848447804`*^9, 3.560615097808403*^9}, {
   3.5606152345932436`*^9, 3.5606152928155465`*^9}, 3.560621964104532*^9, 
   3.560622410745061*^9, 3.5606337244666233`*^9, 3.560633755441478*^9, 
   3.5606338118930054`*^9, 3.560634482758192*^9, 3.560644010600934*^9, 
   3.5606764821836395`*^9, 3.5607168000891404`*^9, {3.5608941072496576`*^9, 
   3.560894118941326*^9}}],

Cell[BoxData[
 GraphicsBox[{InsetBox[
    GraphicsBox[{{}, {}, 
      {Hue[0.67, 0.6, 0.6], LineBox[CompressedData["
1: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
sP8HxVGz2Q==
        "]]}, 
      {Hue[0.9060679774997897, 0.6, 0.6], LineBox[CompressedData["
1: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
        "]]}, 
      {Hue[0.1421359549995791, 0.6, 0.6], LineBox[CompressedData["
1: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
Ffz//0v+H/5cSJ0=
        "]]}, 
      {Hue[0.37820393249936934`, 0.6, 0.6], LineBox[CompressedData["
1:eJwUmnc81f8Xx2XvPe61XSule22yzsnK+spKyoqGyM6IrChpyUohEhkRZUXJ
zEqSokKTbCIySsnv/v66j+fjft7n8z6v1znv876Px5Xy8Lc9RktDQ/OYnobm
/590zax939RT9Jf3rG1tbS2C7EyTjniaP3Ta3KKfil6EjYeUo8OpMTDzKE5o
hXcBKtfgLU/FBXDV90gz/zUHE/wnfj1KvQZsYa3jceEzcIXYzVHRkAZ+Ljcq
wkcmoWi7822aihsgrdxUOWc5Di2aP5Ts8rLhUs3LwyMLozBicq6tMPU2/FEJ
W3p26wts7GDfEdl2B1xqju2d+/QBLqi8CypsKIBAnzcmjdlDwK+d19BXUwj/
2R/c09nzFu7s8ab/VV4MPKwjK74uA0A2U/tPqvgesLbVSoiZvIYG63/XzfPK
IEHzaGr6jz4wdez+fCqzHAy84yO6Xr+At26p8jmpDyAnRM6/XfQ5VKqStb51
PATzZOMF99ZOCNNM+xjWVgmJatePM1e1g77Or1j25ip4dINe2eFbG9CDi+yd
hmpYMrT16bJohR6Dtufq9TXQEHvfo6+zGVJM5P16amphV1x+rNDeRnA0v8Lr
VvkIhK/veaXN0QDiVkuPfpbXgfhMjlwf12MYt3FwSiyth51Nge6fTeqgbH/D
lmjxY0jiTpJ5UFYLQQcl71YWPIHDAv90E7RqQMvlvKlJXgP8NTCIiZ2ugn+H
Z+dHbj2FscYwT7+6Sug4ui/FP7MRFrnDmevuPIQrJ2rU6TOaIO1krmas6QOw
9SGO3ExtBtJ2/4ia0+XArgXNGXtbwPvDgKD7qzL48TiQZ7SjBQ4OLoiEmpbC
gM7dIzuNWuGa2ELj8a8l8KjxXW1IWyuwDHAfFkwvhkxgYW7BNvhP0fx+9+Ei
iGzVOcTa3Aa8w4EUfqNCMOzI+5fb8AyUNL+77jIpALm9A9Yzu9sh3vW8gpd7
PrA+ZyhQrW8Heh0FO7Yrd+C7udZqlEYHsHy3bW1sz4P+Xu+93TUdkDjRDFas
eVBtlZPJq9oJBXzNaF+XCxn9r+acKzsh6PnwbI1/DrgMqiUvlXeBuzCls0Q4
G9DBc0xHsRt4aOcBWLNAZihTLaG0G7aYt9FEsmTC7Id/Q8LFz4EvHrsdVW7A
Sxflncdke+Dm7/C5pYMZ8PDLkagHBT3wnp5DRvzqdQj71i1llPcC4oTLy5j5
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
de10k+/ydPz//63/AN+jYco=
        "]]}},
     AspectRatio->NCache[GoldenRatio^(-1), 0.6180339887498948],
     Axes->True,
     AxesOrigin->{0, 0},
     DisplayFunction:>$DisplayFunction,
     FormatType->TraditionalForm,
     PlotRange->
      NCache[{{0, 4 Pi}, {0, 1}}, {{0, 12.566370614359172`}, {0, 1}}],
     PlotRangeClipping->True,
     PlotRangePadding->{
       Scaled[0.02], Automatic}], {-1, -0.6180339887498948}, {
    Left, Bottom}, {2, 1.2360679774997896`}], GraphicsGroupBox[{
     {GrayLevel[0], 
      RectangleBox[{1., 0.}, {1.5553719008264464`, 0.7999999999999999}]}, 
     {GrayLevel[1], EdgeForm[{GrayLevel[0], Thickness[0.001]}], 
      GraphicsGroupBox[{
        RectangleBox[{0.95, 0.05}, {1.5053719008264463`, 0.85}], InsetBox[
         GraphicsBox[{{{InsetBox[
              GraphicsBox[
               {Hue[0.37820393249936846`, 0.6, 0.6], 
                LineBox[{{0, 0}, {1, 0}}]}], {0.08, 0.08}, {
              Left, Bottom}, {1, 1}], 
             InsetBox["\<\"R = 0.97\"\>", {1.2100000000000002`, 0.58}, {-1, 0},
               Automatic, {1, 0}]}, {InsetBox[
              GraphicsBox[
               {Hue[0.1421359549995791, 0.6, 0.6], 
                LineBox[{{0, 0}, {1, 0}}]}], {0.08, 1.24}, {
              Left, Bottom}, {1, 1}], 
             InsetBox["\<\"R = 0.6\"\>", {1.2100000000000002`, 1.74}, {-1, 0},
               Automatic, {1, 0}]}, {InsetBox[
              GraphicsBox[
               {Hue[0.9060679774997897, 0.6, 0.6], 
                LineBox[{{0, 0}, {1, 0}}]}], {0.08, 2.4}, {
              Left, Bottom}, {1, 1}], 
             InsetBox["\<\"R = 0.3\"\>", {1.2100000000000002`, 2.9}, {-1, 0}, 
              Automatic, {1, 0}]}, {InsetBox[
              GraphicsBox[
               {Hue[0.67, 0.6, 0.6], 
                LineBox[{{0, 0}, {1, 0}}]}], {0.08, 3.56}, {
              Left, Bottom}, {1, 1}], 
             InsetBox["\<\"R = 0.1\"\>", \
{1.2100000000000002`, 4.0600000000000005`}, {-1, 0}, Automatic, {1, 0}]}}, {}},
          AspectRatio->1.44047619047619,
          FormatType->TraditionalForm,
          
          PlotRange->{{-0.1, 3.26}, {-0.1, 
           4.739999999999999}}], {0.95, 0.05}, {
         Left, Bottom}, {0.5553719008264464, 0.7999999999999999}]}]}}]},
  AspectRatio->Automatic,
  Background->None,
  ColorOutput->Automatic,
  ImageSize->Automatic,
  PlotRange->All]], "Output",
 CellChangeTimes->{{3.5606150848447804`*^9, 3.560615097808403*^9}, {
   3.5606152345932436`*^9, 3.5606152928155465`*^9}, 3.560621964104532*^9, 
   3.560622410745061*^9, 3.5606337244666233`*^9, 3.560633755441478*^9, 
   3.5606338118930054`*^9, 3.560634482758192*^9, 3.560644010600934*^9, 
   3.5606764821836395`*^9, 3.5607168000891404`*^9, {3.5608941072496576`*^9, 
   3.560894120071391*^9}}]
}, Open  ]],

Cell[CellGroupData[{

Cell["\<\
What\[CloseCurlyQuote]s up with the Evaluate above\
\>", "Section",
 CellChangeTimes->{{3.56063459398523*^9, 3.5606345981554685`*^9}}],

Cell[CellGroupData[{

Cell[BoxData[{
 RowBox[{"Table", "[", 
  RowBox[{
   RowBox[{"x", "^", "k"}], ",", 
   RowBox[{"{", 
    RowBox[{"k", ",", "0", ",", "2"}], "}"}]}], "]"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{"Evaluate", "@", 
   RowBox[{"Table", "[", 
    RowBox[{
     RowBox[{"x", "^", "k"}], ",", 
     RowBox[{"{", 
      RowBox[{"k", ",", "0", ",", "2"}], "}"}]}], "]"}]}], 
  "\[IndentingNewLine]"}], "\[IndentingNewLine]", 
 RowBox[{"Plot", "[", 
  RowBox[{
   RowBox[{"Table", "[", 
    RowBox[{
     RowBox[{"x", "^", "k"}], ",", 
     RowBox[{"{", 
      RowBox[{"k", ",", "0", ",", "2"}], "}"}]}], "]"}], ",", 
   RowBox[{"{", 
    RowBox[{"x", ",", "0", ",", "1"}], "}"}]}], "]"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{"Plot", "[", 
   RowBox[{
    RowBox[{"{", 
     RowBox[{"1", ",", "x", ",", 
      SuperscriptBox["x", "2"]}], "}"}], ",", 
    RowBox[{"{", 
     RowBox[{"x", ",", "0", ",", "1"}], "}"}]}], "]"}], "\[IndentingNewLine]", 
  RowBox[{"(*", " ", 
   RowBox[{
    RowBox[{
     RowBox[{"note", " ", "that", " ", 
      RowBox[{"Evaluate", "@"}]}], " ", "..."}], " ", "=", " ", 
    RowBox[{"Evaluate", "[", "...", "]"}]}], " ", 
   "*)"}]}], "\[IndentingNewLine]", 
 RowBox[{"Plot", "[", 
  RowBox[{
   RowBox[{"Evaluate", "@", 
    RowBox[{"Table", "[", 
     RowBox[{
      RowBox[{"x", "^", "k"}], ",", 
      RowBox[{"{", 
       RowBox[{"k", ",", "0", ",", "2"}], "}"}]}], "]"}]}], ",", 
   RowBox[{"{", 
    RowBox[{"x", ",", "0", ",", "1"}], "}"}]}], "]"}]}], "Input",
 CellChangeTimes->{{3.560634001991228*^9, 3.560634053361766*^9}, {
  3.560634185539872*^9, 3.5606341987661085`*^9}, {3.560634601742674*^9, 
  3.560634620964773*^9}}],

Cell[BoxData[
 RowBox[{"{", 
  RowBox[{"1", ",", "x", ",", 
   SuperscriptBox["x", "2"]}], "}"}]], "Output",
 CellChangeTimes->{3.5606340540968084`*^9, 3.560634200253148*^9}],

Cell[BoxData[
 RowBox[{"{", 
  RowBox[{"1", ",", "x", ",", 
   SuperscriptBox["x", "2"]}], "}"}]], "Output",
 CellChangeTimes->{3.5606340540968084`*^9, 3.560634200253148*^9}],

Cell[BoxData[
 GraphicsBox[{{}, {}, 
   {Hue[0.67, 0.6, 0.6], LineBox[CompressedData["
1:eJxTTMoPSmViYGAwAWIQ7ZX64uKBl6F2DGDwwX6BqH9bl2SLPYzfyLFZvVNy
CpwfEblw/YePS+B87v+NMe5y6+F81cB3Lw53b4Hzy89Z2s/4shPOF98ieI+R
cT+cv+2R85nzNofg/ENZc6Uj3xyB87+q2fKvzT0O5zP9XC0grXoKzjf7n7At
eN0ZOP9Mi8m5Y1rn4Xz5Ca9/rnx3Ac5//f3+vasGl+D8Ja92n+Lruwzn88ku
f//kyRU4vydza9oClWtw/jeH1U8y6q/D+SVGR7aIHb4B599fd6T7ouItOP93
1pXZmlW34XxtR/Z/abvvwPnuixTTN4rfQ4SXbLzSw5j7cL7Om1Du674P4Hxh
/g8cR34h+Cz7Z69XnvMQzs822X2T0/sRnL/aM2nBvm8I/tfXUgLPpj2G87cG
uzNPcXkC59d7tM7f8gzBV7zrdWNx61M438q8ZYqk0TM4P0bu/E/Gywj+11O9
jwoan8P5M1jiSoJUXiDcf2/rIqYjCD5rbWOIZeFLOJ9hZdz6R0Kv4PyiWet7
hQ4h+Hu1OzgE817D+YJeRTpNfG/g/Du6Fy5X7kHwN8yzV3kS9xbOj11vJij7
D8FvaF3YeGfVOzh/7QvZ2Xw+7+F8pRYRD/ZlCP50ee6v//8j+ACgshGH
     "]], LineBox[CompressedData["
1:eJxFxW0w03EcAPCNdZRrjMr9adxE5SlOUlKpuMhDneHk8nRCWk/InXR1WrdJ
nua6nZTnh5R2jGyuMnHsdDnPo1GzMUtj83RndnRZ9cL39+JzH0r8XWqiHg6H
C/7n/wGJypGu+fAz2xN8LFJkmLv39kcrS8paMV84cED8vhwLgyMStB3PsQR4
yuWpTwGWDlftvZydizFgumHroWcYG74SWc1dWa2DjXT0KD8rLmwXsqTsyePB
GYOe3iVrH2FzHkmKx3fCbXKf/qFT3XA3rdwyUi2ENQdPGzfe/gLrbXBMLO36
YA9dXFtoUz/cz3Af7HUYgq2LVBsNS8OwSiuTjruOwnUL7X3EQhFMJL9ZVijG
4Pwb/KQq22/w+lmOIjlLDKe7CXn7eiZgWZMwb4TyHf5NGyu1f/ADdjxnsJXU
LoH9aijXW8ylcAY51mYmSgY7qcONxMHTsJnxiqFwE03oLOUeKJuBb7q3T+4M
lMOci/FVn9fRGpWFyVzxLMwP9dNn+yrgLH9mJW8OTZkKmKhl/oRPHmewMbc5
OMpqaAMvQmv6CuQp9F9wCSEmnWqrhM2k/Bo9IXrHI3qYZ+o8jGuI4cpNF+C0
V9wC0250h2OOIemOCiYFpDk9IaphifOwKFOAbq7wtlXELMLRXA8SeQv9mFlN
l7xbghuV5FJi0DKcU86Mk15CJ1AX7ZpC0PsFgubgCHQu62pvfjw62ePl6q5M
tA1jj79BPXrrxMPd4rfoycXZ0XoOuiiiNfpCC1rnQL3HFKAlI6wKfRH6Q7b2
mmgczfaKta+dQAe+PsI7L0V/uj/wlT6PLnY+xgpRo1PlZWGUZfThoFuyrjU0
AT9WV6RFT/O9aHGbaAGt1sX1D/qFtZFGp0P/BaO4ekM=
     "]], LineBox[CompressedData["
1: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
l0zPzRHYjtWjv/N/9SW6zA==
     "]]}},
  AspectRatio->NCache[GoldenRatio^(-1), 0.6180339887498948],
  Axes->True,
  AxesOrigin->{0, 0},
  PlotRange->{{0, 1}, {0., 1.}},
  PlotRangeClipping->True,
  PlotRangePadding->{
    Scaled[0.02], 
    Scaled[0.02]}]], "Output",
 CellChangeTimes->{3.5606340540968084`*^9, 3.5606342002581477`*^9}],

Cell[BoxData[
 GraphicsBox[{{}, {}, 
   {Hue[0.67, 0.6, 0.6], LineBox[CompressedData["
1:eJxTTMoPSmViYGAwAWIQ7ZX64uKBl6F2DGDwwX6BqH9bl2SLPYzfyLFZvVNy
CpwfEblw/YePS+B87v+NMe5y6+F81cB3Lw53b4Hzy89Z2s/4shPOF98ieI+R
cT+cv+2R85nzNofg/ENZc6Uj3xyB87+q2fKvzT0O5zP9XC0grXoKzjf7n7At
eN0ZOP9Mi8m5Y1rn4Xz5Ca9/rnx3Ac5//f3+vasGl+D8Ja92n+Lruwzn88ku
f//kyRU4vydza9oClWtw/jeH1U8y6q/D+SVGR7aIHb4B599fd6T7ouItOP93
1pXZmlW34XxtR/Z/abvvwPnuixTTN4rfQ4SXbLzSw5j7cL7Om1Du674P4Hxh
/g8cR34h+Cz7Z69XnvMQzs822X2T0/sRnL/aM2nBvm8I/tfXUgLPpj2G87cG
uzNPcXkC59d7tM7f8gzBV7zrdWNx61M438q8ZYqk0TM4P0bu/E/Gywj+11O9
jwoan8P5M1jiSoJUXiDcf2/rIqYjCD5rbWOIZeFLOJ9hZdz6R0Kv4PyiWet7
hQ4h+Hu1OzgE817D+YJeRTpNfG/g/Du6Fy5X7kHwN8yzV3kS9xbOj11vJij7
D8FvaF3YeGfVOzh/7QvZ2Xw+7+F8pRYRD/ZlCP50ee6v//8j+ACgshGH
     "]]}, 
   {Hue[0.9060679774997897, 0.6, 0.6], LineBox[CompressedData["
1:eJxFxW0w03EcAPCNdZRrjMr9adxE5SlOUlKpuMhDneHk8nRCWk/InXR1WrdJ
nua6nZTnh5R2jGyuMnHsdDnPo1GzMUtj83RndnRZ9cL39+JzH0r8XWqiHg6H
C/7n/wGJypGu+fAz2xN8LFJkmLv39kcrS8paMV84cED8vhwLgyMStB3PsQR4
yuWpTwGWDlftvZydizFgumHroWcYG74SWc1dWa2DjXT0KD8rLmwXsqTsyePB
GYOe3iVrH2FzHkmKx3fCbXKf/qFT3XA3rdwyUi2ENQdPGzfe/gLrbXBMLO36
YA9dXFtoUz/cz3Af7HUYgq2LVBsNS8OwSiuTjruOwnUL7X3EQhFMJL9ZVijG
4Pwb/KQq22/w+lmOIjlLDKe7CXn7eiZgWZMwb4TyHf5NGyu1f/ADdjxnsJXU
LoH9aijXW8ylcAY51mYmSgY7qcONxMHTsJnxiqFwE03oLOUeKJuBb7q3T+4M
lMOci/FVn9fRGpWFyVzxLMwP9dNn+yrgLH9mJW8OTZkKmKhl/oRPHmewMbc5
OMpqaAMvQmv6CuQp9F9wCSEmnWqrhM2k/Bo9IXrHI3qYZ+o8jGuI4cpNF+C0
V9wC0250h2OOIemOCiYFpDk9IaphifOwKFOAbq7wtlXELMLRXA8SeQv9mFlN
l7xbghuV5FJi0DKcU86Mk15CJ1AX7ZpC0PsFgubgCHQu62pvfjw62ePl6q5M
tA1jj79BPXrrxMPd4rfoycXZ0XoOuiiiNfpCC1rnQL3HFKAlI6wKfRH6Q7b2
mmgczfaKta+dQAe+PsI7L0V/uj/wlT6PLnY+xgpRo1PlZWGUZfThoFuyrjU0
AT9WV6RFT/O9aHGbaAGt1sX1D/qFtZFGp0P/BaO4ekM=
     "]]}, 
   {Hue[0.1421359549995791, 0.6, 0.6], LineBox[CompressedData["
1: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
l0zPzRHYjtWjv/N/9SW6zA==
     "]]}},
  AspectRatio->NCache[GoldenRatio^(-1), 0.6180339887498948],
  Axes->True,
  AxesOrigin->{0, 0},
  PlotRange->{{0, 1}, {0., 1.}},
  PlotRangeClipping->True,
  PlotRangePadding->{
    Scaled[0.02], 
    Scaled[0.02]}]], "Output",
 CellChangeTimes->{3.5606340540968084`*^9, 3.560634200263148*^9}],

Cell[BoxData[
 GraphicsBox[{{}, {}, 
   {Hue[0.67, 0.6, 0.6], LineBox[CompressedData["
1:eJxTTMoPSmViYGAwAWIQ7ZX64uKBl6F2DGDwwX6BqH9bl2SLPYzfyLFZvVNy
CpwfEblw/YePS+B87v+NMe5y6+F81cB3Lw53b4Hzy89Z2s/4shPOF98ieI+R
cT+cv+2R85nzNofg/ENZc6Uj3xyB87+q2fKvzT0O5zP9XC0grXoKzjf7n7At
eN0ZOP9Mi8m5Y1rn4Xz5Ca9/rnx3Ac5//f3+vasGl+D8Ja92n+Lruwzn88ku
f//kyRU4vydza9oClWtw/jeH1U8y6q/D+SVGR7aIHb4B599fd6T7ouItOP93
1pXZmlW34XxtR/Z/abvvwPnuixTTN4rfQ4SXbLzSw5j7cL7Om1Du674P4Hxh
/g8cR34h+Cz7Z69XnvMQzs822X2T0/sRnL/aM2nBvm8I/tfXUgLPpj2G87cG
uzNPcXkC59d7tM7f8gzBV7zrdWNx61M438q8ZYqk0TM4P0bu/E/Gywj+11O9
jwoan8P5M1jiSoJUXiDcf2/rIqYjCD5rbWOIZeFLOJ9hZdz6R0Kv4PyiWet7
hQ4h+Hu1OzgE817D+YJeRTpNfG/g/Du6Fy5X7kHwN8yzV3kS9xbOj11vJij7
D8FvaF3YeGfVOzh/7QvZ2Xw+7+F8pRYRD/ZlCP50ee6v//8j+ACgshGH
     "]]}, 
   {Hue[0.9060679774997897, 0.6, 0.6], LineBox[CompressedData["
1:eJxFxW0w03EcAPCNdZRrjMr9adxE5SlOUlKpuMhDneHk8nRCWk/InXR1WrdJ
nua6nZTnh5R2jGyuMnHsdDnPo1GzMUtj83RndnRZ9cL39+JzH0r8XWqiHg6H
C/7n/wGJypGu+fAz2xN8LFJkmLv39kcrS8paMV84cED8vhwLgyMStB3PsQR4
yuWpTwGWDlftvZydizFgumHroWcYG74SWc1dWa2DjXT0KD8rLmwXsqTsyePB
GYOe3iVrH2FzHkmKx3fCbXKf/qFT3XA3rdwyUi2ENQdPGzfe/gLrbXBMLO36
YA9dXFtoUz/cz3Af7HUYgq2LVBsNS8OwSiuTjruOwnUL7X3EQhFMJL9ZVijG
4Pwb/KQq22/w+lmOIjlLDKe7CXn7eiZgWZMwb4TyHf5NGyu1f/ADdjxnsJXU
LoH9aijXW8ylcAY51mYmSgY7qcONxMHTsJnxiqFwE03oLOUeKJuBb7q3T+4M
lMOci/FVn9fRGpWFyVzxLMwP9dNn+yrgLH9mJW8OTZkKmKhl/oRPHmewMbc5
OMpqaAMvQmv6CuQp9F9wCSEmnWqrhM2k/Bo9IXrHI3qYZ+o8jGuI4cpNF+C0
V9wC0250h2OOIemOCiYFpDk9IaphifOwKFOAbq7wtlXELMLRXA8SeQv9mFlN
l7xbghuV5FJi0DKcU86Mk15CJ1AX7ZpC0PsFgubgCHQu62pvfjw62ePl6q5M
tA1jj79BPXrrxMPd4rfoycXZ0XoOuiiiNfpCC1rnQL3HFKAlI6wKfRH6Q7b2
mmgczfaKta+dQAe+PsI7L0V/uj/wlT6PLnY+xgpRo1PlZWGUZfThoFuyrjU0
AT9WV6RFT/O9aHGbaAGt1sX1D/qFtZFGp0P/BaO4ekM=
     "]]}, 
   {Hue[0.1421359549995791, 0.6, 0.6], LineBox[CompressedData["
1:eJwVlWk01AsYxm2VVBNaNBNX2UppUtlS5rGVLSpbiSayJHUZJUo3jIxSRF2X
MIUYJcugQcaSLVpQthBGISH8c+OqVK4+vOc55znP7/f1XX/cx9pdREhI6M78
/U5z9+HmyhE72pT1zNZJkYrdYkYURh9ZAxEGed6d+hdoO5Jvsx+RjfFU/f4B
L/0E2qCsEjNAxQr+Rbz9Vp7ZNIvGjoI7ZFto5/8w2KFfQlOKlOPMyTtgxQlT
X3l+De2HuWu8iwodwg4vxZQ9G2ijYW21LnEu0Iiv2bLKrpV2yG2m/BbZDZwv
5XwZ/S5arRGluIbtgbYqW1XKdB9NXVEvb0r+JARCtbtJ/AEaW8Q5UzntFPK6
suyiBR9p4v2h9+xVvOHyyeWYpOcYjf+upbHGloEZypds06zPNMYBN3OnOF/k
OrEVFtt9ofVuvWIURfaDl6bSzGL9b7TY5DWVyo7nwGgQsTdn/qCZL3+4u4Lt
j4Fg0xyJ6Tla0USDJiF/AUvuht1bwBfFaTq94IpLILwUqqs5TxZAoYmgrku7
CBHNHX0swSLcyJHeeFAlCB1ieUsXei7FHrn09JETwZCpLpXLaCEhqC5Rsso2
BPXhl1YZZUlCQ0styiGOiZgNEnKidiuQsmp/+DVyGHwqDq8S1SfjYmN8rT0/
DGPt2SSbtxTYs96JKDqywOJRFhoxZbF02je4lB0OiXojQmRaHufbYs+PyUcg
P8XdTpivCJvI3qLHlREQPPM3zyxRAtVYZTrM5RoS22JpqU+UMfio2Fcu7Tr4
cTOKTMEGHPz7rZeVyg2kPz00IOSpBjULxUxK/Q0YSLx+vTFxC8RFT38cOhGN
P7fblae0UHGs5Ff+E9sYFK2uMdPPUscq1Rjq4bibED9hQBGy2wGm+KMNEeRY
fHc6mz6HndhkcvNqASMWs3uz1nXK6qKF5TPSXR8L0zU8A4+fulASVcui+v+D
ZobOmbTnu1H3M53a1hKHqh+sugMm+lj6JU5TPjIBlRqErb27MQq3nYszHUjA
VrdbJT6TxqAzbGZ8dROxZ9Hdz67Be8AdX15SO5wItwcT7T0pe2E9fHW31x42
AuzPXZL8borbvYFGhb/u4qPLGv3gBVYwkHVIF9gl4+lLw5d7uFYYPaK9QDwn
GWaZ7Rs/HtmPP8YuuOZsSUHascQtvY4H4HNSS1moJwVXN5+2aq45CGk37gOO
zj18S3xrpldpi8MOqdzPk+lgdPZvUDrlCKLbVuIehQNHD9W8VW8cEU4Xd7cx
4mDsmb3mGwMnPHL1oRTFcvBjiYdW7dqjIHnrsS5qZ+B9hP0K2y46noZ2HVl4
6T6cCsBO1XPB9myphbLiD2Fi8TV+6xZ3PKc+dW5Uf4i4nqubbvu4wzn/fGmQ
w0Nod0bu8ixwR1RRH+P9w4fwJRGdtJ0eGK7M6c6wzEK9v6xwncUJ3G03y9/2
dzZmtNYu2h12EkvmmE4mf3DBOPdgpM7QG7dPHqKr7eXierJiV3SMN5Ta1Jyl
vLmICGo3KBN4g5bZ4dpdzoW2Y28Q/vJBSWZcYTE1D5z6itaZowyM24yVWTTl
QXUy2GE2wxd2D+Jfnl1WgC/k8K79dD+wj4bu81hfAMufuYOnrvuhX/rPxsOa
BZDZdTa75LEffC4ZvtI7WgCxukbf0RXnEGE93rIopwA7yS9bUxrOofyH4duk
fY+wqnBoytkkAMoHJ4ZrrvNwozo1i3o8EJRgE90TqTw0JFUZCBICIZmTcl2i
mAevZGv6s+ZAfBe3oR7s56Fc+dmmfYYX8bqy+KxApxCdVGEpaZW/EKjO/PX1
QyGqtmdJx3+9hKblK1dS9YtREeIzXT0YgoCmnbg9VQKz3uMBF5exQKIWfngu
zsff5B3B5lQW0qPUI2dl+ahml4vu2M9C874NXfQ9fHQECF8+cJOFzS9XnlWO
46M9xPhI+epw9NUTGQXapaAIik/RVa7ApIpDagwsw+unNpSKwxGQ4UkJhIWf
YMLMOePL4hso6jdqeLW7Gi8Ck7P5z2NR7XVnrcNYLchnHiwJdUrCtIre8pw/
6+HBuZK9bkMqRL5lSa5VfoGgoVrhACcOtOaci2xyG3BnrRv1GS8TDWEaTXWb
XkFxoxad4pgL+ZhP3zInXoM0x53d9Skfn2b6BO3qLWiY6Tbyz+UhfbT0BelG
K9hMiueBoWKQ5O4Tg4NtCE5OerfQrBSRJws9UpTewGltxL9LORX4Tz9r0DO4
AwwpjrSCQRX8ttfyVtd0wjl48pSJag36cmuvN69/C2JZtv6aQ08x69WWpBrY
jaBqRuzX+HpsNlj0y6O0B0oKN0v0Gp7D5N76E/kyArxq0lUL2teAALljCu+d
+hDUYVkvXN4EtTG7JR2W77BQo6Z+453XWLH8s3jt93f4sdfBrF+sBWJPkriK
7PeoGz0S9cSlFac0SrsWW/QjlGm8Wmu0DVlmx1Mq/utHyNoQGYnAN5j+RJEc
ihuA8deuyMnZDhTamIjGGg9C4/T9mfjsLgSbspJ5Q4OIPp8rX23ZjfW95p1p
rA/w20Gz3vSlB7raYbHk7UN4XOyn4/pCAKc/Xn0Tbh3CEePr5Fsm7zD9Iqqf
wfwIcppTr5zxe9wWo/tZKw0j4MDH4XStfqwQFN4TqR1GtM6RWN6mASy4xLTd
6TuC+m67bYG6gxDKpHP7pUfxddw4tJT2AWcSuVHS1aMQJdE2zBwbQvnmq+JS
3p+w/HKEjfblj5AyP6MWShrDT+9KF6+EYfRsed16oWwM2eNTFpubRpB3F0qD
9HHIvDg+uHp6FEe5WlJyv8ah+Xz+a8qOIYSVyux5OIGpjL4n467jyBmWSyLt
I3Dt1KSUFHsCV++wnAVWBL49U9C7mToBN+tx5dyDBAqjXg1J3Z+AbFlZnuUh
AtKWSYUrCyZwLdqxLvI4AYe0Wf11zybgqZUwKXGBgGZuH2n/1AQUwlaaLsog
IK6neWWJJYFfOn8t63hA4OflVmaSNYGu8YGWjCwCetvHv28+TCDm0KOje/MJ
pNXe8rRyJTC3yfosq4yASFXGtoR5b09z9F3RVgIL1/wbuHfe+zh8xrW1nUBF
696jgnlP7K5jqmmdBGr+W13hP++x4FB5hgICuWdUZx/Me/jnG58zRwisMZRx
XTHviduiGX1wjMA2HZOd3HnOt59tu54g8M8//0ZZzHMb953uq5wiYBheWsCa
58SE29JjZghEkrtCFed37wp3eTl/J6C48kxz1fyuzCttq/pPAgv8w+/+7uPl
l0zPzRHYjtWjv/N/9SW6zA==
     "]]}},
  AspectRatio->NCache[GoldenRatio^(-1), 0.6180339887498948],
  Axes->True,
  AxesOrigin->{0, 0},
  PlotRange->{{0, 1}, {0., 1.}},
  PlotRangeClipping->True,
  PlotRangePadding->{
    Scaled[0.02], 
    Scaled[0.02]}]], "Output",
 CellChangeTimes->{3.5606340540968084`*^9, 3.5606342002681475`*^9}]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{
  RowBox[{"(*", " ", 
   RowBox[{"try", ":", " ", 
    ButtonBox[
     RowBox[{
      RowBox[{"http", ":"}], "//", 
      RowBox[{
       RowBox[{
        RowBox[{
         RowBox[{
          RowBox[{"mathematica", ".", "stackexchange", ".", "com"}], "/", 
          "questions"}], "/", "4444"}], "/", "labeling"}], "-", "individual", 
       "-", "curves", "-", "in", "-", "mathematica"}]}],
     BaseStyle->"Hyperlink",
     ButtonData->{
       URL[
       "http://mathematica.stackexchange.com/questions/4444/labeling-\
individual-curves-in-mathematica"], None},
     ButtonNote->
      "http://mathematica.stackexchange.com/questions/4444/labeling-\
individual-curves-in-mathematica"]}], " ", "*)"}], "\[IndentingNewLine]", 
  RowBox[{
   RowBox[{
    RowBox[{"Clear", "[", "dynamicLabeled", "]"}], ";"}], "\n", 
   RowBox[{
    RowBox[{"dynamicLabeled", "[", 
     RowBox[{"plot_", ",", "labelling_"}], "]"}], ":=", 
    RowBox[{"DynamicModule", "[", 
     RowBox[{
      RowBox[{"{", 
       RowBox[{"p", ",", "x", ",", "x1", ",", "x2", ",", 
        RowBox[{"storedlabels", "=", 
         RowBox[{"{", "}"}]}], ",", "currentlabel", ",", "aspect", ",", 
        "distances", ",", "xs", ",", "rs", ",", "res", ",", "ind", ",", "ps", 
        ",", "ps1", ",", "curves", ",", "labels", ",", "pt"}], "}"}], ",", 
      RowBox[{
       RowBox[{"curves", "=", 
        RowBox[{"labelling", "[", 
         RowBox[{"[", 
          RowBox[{"All", ",", "1"}], "]"}], "]"}]}], ";", 
       "\[IndentingNewLine]", 
       RowBox[{"labels", "=", 
        RowBox[{"labelling", "[", 
         RowBox[{"[", 
          RowBox[{"All", ",", "2"}], "]"}], "]"}]}], ";", 
       "\[IndentingNewLine]", 
       RowBox[{"aspect", "=", 
        RowBox[{
         RowBox[{"Options", "[", 
          RowBox[{"plot", ",", "AspectRatio"}], "]"}], "[", 
         RowBox[{"[", 
          RowBox[{"1", ",", "2"}], "]"}], "]"}]}], ";", "\[IndentingNewLine]", 
       RowBox[{"Dynamic", "[", 
        RowBox[{
         RowBox[{"p", "=", 
          RowBox[{"MousePosition", "[", "\"\<Graphics\>\"", "]"}]}], ";", 
         "\[IndentingNewLine]", 
         RowBox[{"If", "[", 
          RowBox[{
           RowBox[{"p", "=!=", "None"}], ",", 
           RowBox[{
            RowBox[{"pt", "=", 
             RowBox[{"{", 
              RowBox[{
               RowBox[{"p", "[", 
                RowBox[{"[", "1", "]"}], "]"}], ",", 
               RowBox[{
                RowBox[{"p", "[", 
                 RowBox[{"[", "2", "]"}], "]"}], "/", "aspect"}]}], "}"}]}], 
            ";", "\[IndentingNewLine]", 
            RowBox[{"Switch", "[", 
             RowBox[{"curves", ",", 
              RowBox[{"_", "?", 
               RowBox[{"(", 
                RowBox[{
                 RowBox[{"VectorQ", "[", 
                  RowBox[{"#", ",", "AtomQ"}], "]"}], "&"}], ")"}]}], ",", 
              RowBox[{"(*", 
               RowBox[{"list", " ", "of", " ", "functions"}], "*)"}], 
              RowBox[{
               RowBox[{"rs", "=", 
                RowBox[{
                 RowBox[{
                  RowBox[{"Quiet", "@", 
                   RowBox[{"FindMinimum", "[", 
                    RowBox[{
                    RowBox[{"Norm", "[", 
                    RowBox[{"pt", "-", 
                    RowBox[{"{", 
                    RowBox[{"x", ",", 
                    RowBox[{
                    RowBox[{"#", "[", "x", "]"}], "/", "aspect"}]}], "}"}]}], 
                    "]"}], ",", 
                    RowBox[{"{", 
                    RowBox[{"x", ",", 
                    RowBox[{"p", "[", 
                    RowBox[{"[", "1", "]"}], "]"}]}], "}"}]}], "]"}]}], "&"}],
                  "/@", "curves"}]}], ";", "\[IndentingNewLine]", 
               RowBox[{"res", "=", 
                RowBox[{
                 RowBox[{
                  RowBox[{"{", 
                   RowBox[{
                    RowBox[{"#", "[", 
                    RowBox[{"[", "1", "]"}], "]"}], ",", 
                    RowBox[{"#", "[", 
                    RowBox[{"[", 
                    RowBox[{"2", ",", "1", ",", "2"}], "]"}], "]"}]}], "}"}], 
                  "&"}], "/@", "rs"}]}], ";", "\[IndentingNewLine]", 
               RowBox[{"distances", "=", 
                RowBox[{"res", "[", 
                 RowBox[{"[", 
                  RowBox[{"All", ",", "1"}], "]"}], "]"}]}], ";", 
               "\[IndentingNewLine]", 
               RowBox[{"xs", "=", 
                RowBox[{"res", "[", 
                 RowBox[{"[", 
                  RowBox[{"All", ",", "2"}], "]"}], "]"}]}], ";", 
               "\[IndentingNewLine]", 
               RowBox[{"ps", "=", 
                RowBox[{"Quiet", "@", 
                 RowBox[{"MapThread", "[", 
                  RowBox[{
                   RowBox[{
                    RowBox[{"{", 
                    RowBox[{"#1", ",", 
                    RowBox[{"#2", "[", "#1", "]"}]}], "}"}], "&"}], ",", 
                   RowBox[{"{", 
                    RowBox[{"xs", ",", "curves"}], "}"}]}], "]"}]}]}], ";"}], 
              ",", "_", ",", 
              RowBox[{"(*", 
               RowBox[{
               "functions", " ", "is", " ", "a", " ", "list", " ", "of", " ", 
                "data"}], "*)"}], 
              RowBox[{
               RowBox[{"ps1", "=", 
                RowBox[{
                 RowBox[{
                  RowBox[{"Flatten", "[", 
                   RowBox[{"Nearest", "[", 
                    RowBox[{"#", ",", "pt", ",", "1"}], "]"}], "]"}], "&"}], "/@", 
                 RowBox[{"(", 
                  RowBox[{"curves", "/.", 
                   RowBox[{
                    RowBox[{"{", 
                    RowBox[{
                    RowBox[{"x_", "?", "NumericQ"}], ",", 
                    RowBox[{"y_", "?", "NumericQ"}]}], "}"}], 
                    "\[RuleDelayed]", 
                    RowBox[{"{", 
                    RowBox[{"x", ",", 
                    RowBox[{"y", "/", "aspect"}]}], "}"}]}]}], ")"}]}]}], ";",
                "\[IndentingNewLine]", 
               RowBox[{"distances", "=", 
                RowBox[{
                 RowBox[{
                  RowBox[{"Norm", "[", 
                   RowBox[{"#", "-", "pt"}], "]"}], "&"}], "/@", "ps1"}]}], 
               ";", "\[IndentingNewLine]", 
               RowBox[{"ps", "=", 
                RowBox[{"ps1", "/.", 
                 RowBox[{
                  RowBox[{"{", 
                   RowBox[{
                    RowBox[{"x_", "?", "NumericQ"}], ",", 
                    RowBox[{"y_", "?", "NumericQ"}]}], "}"}], 
                  "\[RuleDelayed]", 
                  RowBox[{"{", 
                   RowBox[{"x", ",", 
                    RowBox[{"y", "*", "aspect"}]}], "}"}]}]}]}], ";"}]}], 
             "]"}], ";", "\[IndentingNewLine]", 
            RowBox[{"ind", "=", 
             RowBox[{
              RowBox[{"Flatten", "[", 
               RowBox[{"Position", "[", 
                RowBox[{"distances", ",", 
                 RowBox[{"Min", "[", "distances", "]"}]}], "]"}], "]"}], "[", 
              RowBox[{"[", "1", "]"}], "]"}]}], ";"}]}], "]"}], ";", 
         "\[IndentingNewLine]", 
         RowBox[{"MouseAppearance", "[", 
          RowBox[{
           RowBox[{"EventHandler", "[", 
            RowBox[{
             RowBox[{"currentPlot", "=", 
              RowBox[{"Show", "[", 
               RowBox[{"plot", ",", 
                RowBox[{"Epilog", "\[Rule]", 
                 RowBox[{"{", 
                  RowBox[{"storedlabels", ",", 
                   RowBox[{"If", "[", 
                    RowBox[{
                    RowBox[{"p", "=!=", "None"}], ",", 
                    RowBox[{"currentlabel", "=", 
                    RowBox[{"{", 
                    RowBox[{
                    RowBox[{"Text", "[", 
                    RowBox[{
                    RowBox[{"Style", "[", 
                    RowBox[{
                    RowBox[{"labels", "[", 
                    RowBox[{"[", "ind", "]"}], "]"}], ",", "13"}], "]"}], ",",
                     "p", ",", 
                    RowBox[{"{", 
                    RowBox[{"0", ",", 
                    RowBox[{"Sign", "[", 
                    RowBox[{
                    RowBox[{
                    RowBox[{"ps", "[", 
                    RowBox[{"[", "ind", "]"}], "]"}], "[", 
                    RowBox[{"[", "2", "]"}], "]"}], "-", 
                    RowBox[{"p", "[", 
                    RowBox[{"[", "2", "]"}], "]"}]}], "]"}]}], "}"}]}], "]"}],
                     ",", 
                    RowBox[{"Arrow", "[", 
                    RowBox[{"{", 
                    RowBox[{"p", ",", 
                    RowBox[{"ps", "[", 
                    RowBox[{"[", "ind", "]"}], "]"}]}], "}"}], "]"}]}], 
                    "}"}]}]}], "]"}]}], "}"}]}]}], "]"}]}], ",", 
             RowBox[{"{", 
              RowBox[{
               RowBox[{"{", 
                RowBox[{"\"\<MouseClicked\>\"", ",", "1"}], "}"}], 
               "\[RuleDelayed]", 
               RowBox[{"(", 
                RowBox[{"AppendTo", "[", 
                 RowBox[{"storedlabels", ",", "currentlabel"}], "]"}], 
                ")"}]}], "}"}]}], "]"}], ",", 
           RowBox[{"Graphics", "[", 
            RowBox[{"{", 
             RowBox[{
              RowBox[{"PointSize", "[", "0", "]"}], ",", 
              RowBox[{"Point", "[", 
               RowBox[{"{", 
                RowBox[{"0", ",", "0"}], "}"}], "]"}]}], "}"}], "]"}]}], 
          "]"}]}], "]"}]}]}], "]"}]}], "\[IndentingNewLine]", 
   "\[IndentingNewLine]", 
   RowBox[{"functions", " ", "=", " ", "\[IndentingNewLine]", 
    RowBox[{"data1", " ", ":=", " ", 
     RowBox[{"Table", "[", 
      RowBox[{
       RowBox[{"Table", "[", 
        RowBox[{
         RowBox[{"i", "[", 
          RowBox[{"r", ",", "delta"}], "]"}], ",", " ", 
         RowBox[{"{", 
          RowBox[{"delta", ",", " ", "0", ",", " ", 
           RowBox[{"4", " ", "Pi"}], ",", " ", "0.01"}], "}"}]}], "]"}], " ", 
       ",", 
       RowBox[{"{", 
        RowBox[{"r", ",", " ", "rValues"}], "}"}]}], "]"}]}]}], 
   "\[IndentingNewLine]", 
   RowBox[{"(*", 
    RowBox[{"d1", " ", ":=", " ", 
     RowBox[{
      RowBox[{
       RowBox[{"data1", "[", 
        RowBox[{"[", "1", "]"}], "]"}], "\[IndentingNewLine]", "d2"}], " ", ":=",
       " ", 
      RowBox[{
       RowBox[{
        RowBox[{"data1", "[", 
         RowBox[{"[", "2", "]"}], "]"}], "\[IndentingNewLine]", "d3"}], " ", ":=",
        " ", 
       RowBox[{
        RowBox[{
         RowBox[{"data1", "[", 
          RowBox[{"[", "3", "]"}], "]"}], "\[IndentingNewLine]", "d4"}], " ", 
        ":=", " ", 
        RowBox[{"data1", "[", 
         RowBox[{"[", "4", "]"}], "]"}]}]}]}]}], "*)"}], 
   "\[IndentingNewLine]", 
   RowBox[{"fp", " ", "=", " ", 
    RowBox[{"ListPlot", "[", " ", 
     RowBox[{"data1", "\[IndentingNewLine]", ",", 
      RowBox[{"PlotRange", "\[Rule]", 
       RowBox[{"{", 
        RowBox[{"0", ",", "1"}], "}"}]}], "\[IndentingNewLine]", ",", " ", 
      RowBox[{"Joined", " ", "\[Rule]", " ", "True"}]}], 
     "\[IndentingNewLine]", "]"}]}], "\[IndentingNewLine]", 
   "\[IndentingNewLine]", 
   RowBox[{"(*", 
    RowBox[{"dynamicLabeled", "[", 
     RowBox[{"fp", ",", "\[IndentingNewLine]", 
      RowBox[{"{", "\[IndentingNewLine]", 
       RowBox[{
        RowBox[{"{", 
         RowBox[{
          RowBox[{"data1", "[", 
           RowBox[{"[", "1", "]"}], "]"}], ",", "\"\<R = 0.1\>\""}], "}"}], 
        ",", "\[IndentingNewLine]", 
        RowBox[{"{", 
         RowBox[{
          RowBox[{"data1", "[", 
           RowBox[{"[", "2", "]"}], "]"}], ",", "\"\<R = 0.3\>\""}], "}"}], 
        ",", "\[IndentingNewLine]", 
        RowBox[{"{", 
         RowBox[{
          RowBox[{"data1", "[", 
           RowBox[{"[", "3", "]"}], "]"}], ",", "\"\<R = 0.6\>\""}], "}"}], 
        ",", "\[IndentingNewLine]", 
        RowBox[{"{", 
         RowBox[{
          RowBox[{"data1", "[", 
           RowBox[{"[", "4", "]"}], "]"}], ",", "\"\<R = 0.97\>\""}], "}"}]}],
        "\[IndentingNewLine]", "}"}]}], "]"}], "*)"}]}]}]], "Input",
 CellChangeTimes->{{3.5606439410248117`*^9, 3.560643941040412*^9}, {
  3.560644015499343*^9, 3.5606440722230425`*^9}, {3.560644105115556*^9, 
  3.560644123242788*^9}, {3.5606441648802605`*^9, 3.5606441657850623`*^9}, {
  3.5606442618980227`*^9, 3.560644456200177*^9}, {3.5606444886180344`*^9, 
  3.5606446391713552`*^9}, {3.5606446831040325`*^9, 3.5606447155988894`*^9}, {
  3.5606447519031534`*^9, 3.560644810516143*^9}, {3.560644967323159*^9, 
  3.5606449906764*^9}, {3.560645022313466*^9, 3.5606450340134864`*^9}}],

Cell[BoxData[
 GraphicsBox[{{}, {}, 
   {Hue[0.67, 0.6, 0.6], LineBox[CompressedData["
1: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
xkZBWHP5b/8fIdSvCsJ9XT/LegFjThD+/vUNuX6Y+ldBsGxvnFSQzlgYBAu1
Nb+L86ifFoS55suf1JQwzg2Ci5aU++dq0h8EhadXQyc8I/1BqD8xt9ykjfQH
QfPE8B+HvpP+ILwKKqh615/6j8E4s9Lkl64sY9lgDFCrWJ41ifqhwZhx9cqa
8RqMNYOxvyqy8oA29UeDUZ251nfCGsZGwfCwvCd51oT6pcHYNu7oBD1Lxpxg
3Az95NzqQv3TYBQ752eIAhkLg7HWU+C5Oob6qcFIuF0e3C+JcW4wRkpau5ad
pv5qMMQ7R3wS5jGuDcawpOknrW9SvzUYAd75s5bXMO4MhtMgx0WTXpD+ECQu
zraQbCf9IdAQh6//3EP6QzC3++z+pkGsv60ZgkPnI148GkX98RCsCla6VafM
2CgEw78vfFmrSf3yEBx+Pude/QrGnBAMe6g47akh9c9DUD6hjNuyk7EwBB+C
xF6f7amfHoI6n/SkP96Mc0NgEVoXNCyC+vkhUE44WKCYyLg2BMif+VjzJOOm
Pj1DeE6rchh3hqA7X3vQtmvU/+dCf07eXPu7jKW4qMmXCfB7wliWixGdSs7R
7xgrcBH2OE506DvNC7i4dfMy55Qkm4+ocXEs944oeyRjTS5+1xf6X5zMWJuL
+as35+bPonkLF0m/5ly+uJSxPhejf5UNz17H2IgLu2s2S1O2Mzbl4uyj5cXx
towtuHj20F7Wx4OxPRcNlm2XTHmMOVwEJubMmJ/A2JcL17iMdwOP03yHiwrj
Sw61ZxjzubB/dGOmuJCxkAtl08vp68sZJ3Ex/ONBo5/1jFO48NvmdfJ4M+NM
LjzkQkcs+sw4lwvOuZGyZb8ZF3LRapI2dq00zeO4kE37eLh4LOMKLr7eeD5k
2jTGtX2vl5z2JGQe40YuBKml/vdWMm7iwtx6pLn0BsZtXPTcufZNeyfjTi6C
TWzObt/LuIcL98uyXbaeNP/jIf74umXWPMZSPLy8Pv7rxnjGsjzsU5kcpnaU
sQIPH/NizT5nMFbi4cnXxe2p+YzVeGgemHdU9yZjTR5WtS95Wl3NWJuHV5+e
yek9pXkjD1O2u19Ia2Wsz0P6usIpn78yNuIhvNW4RvkfY1MeJA8/mbZyKJv3
WvDgcqxDuGosY3seUvIWBc6ZypjDw9uR4Sb95zD25SHLozS0aAnNl3kwtlX2
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
idMS8cBiWPD3Pv4fesmPrA==
     "]]}, 
   {Hue[0.9060679774997897, 0.6, 0.6], LineBox[CompressedData["
1:eJxV3HlYjV3UP/AkJKUQolIqFCKZMn8pRCGEyJCKokFzp/k0n8YzFIoQQuZ6
iMyZoxCSDJFEmRoMCcnb73rXeq/r9/zj+ly3ffZZ933OPnuvtTyDHbcs2SAv
Jyf3QUFO7v/9+b//Nc34//+Ug7P//qyIf41kRWSr/Elp/8tWQ+HnGUPD/rDV
EZtj1fDnJ1sDKXWLDoR8Y2uh/2lv/P3C1kXGKsuPkXVsPXyugnyParYBbOe8
19zxlD0UezJV203usw0RYP5978Pr7OEYXTbMNLyQPRKdvoZ1n3SMPQqRVU/z
FfawTRCo9bLmrYQ9Br+77RA+i2Sb4rjRwB313uyxqHv40kV9PXscxky1nO+w
iD0eKQe6FT+Yyp6AC1dWJ280Yk+E0jfnDYZ92WYYXrt01gA59iR8KcgZM+1j
A3kyjCPM12U8Zk9BqVte79EX2VNxoE37eJcc9jT4PUk6pJvEno41ka8lMd7s
GVAQt/WYsIIN3LevujdpKlkIjHlxfGe6Ll+fiT07P1haKfD1mbCZFl7gWPeF
rs9CceS3ktd3yMJZUFPeEXH7KF83h9Pzq3cHpfB1c8j7/Dr20YOvW8DjwHIj
k4V83QIrSu9YfDfm67NxZmyowlQVvj4bOcGT3ZU/f6brc/A64lPo5rtk4Ry0
eKuPtc/l63MxI3pz7NtYvj4Xufk+TopOfN0S+zuZnL4/g69bwjKk2naKFl+f
hyuGd/ovbf1E1+fh4uxe1weWk+Xmo77omOr2k3x9Pt4MXp5bmsjXrdBaud2w
aANft8LhplrNAPB1a7xVvtr2dSBft8bmjJ9jp/z4SNcXwLDlTf+lD8jCBXgb
efHT9MN8fSF+6Cm9lo/m6wtRObyryv7VfH0RLowxCNWfwNcXYWnWLm2RKl+3
QfEW5Xvl9R/+17DByD59bFSukYU2eJ2htnz8TnKRDVYNfRNo40eWW4wvykcm
Oi7g8YuRoJ8v5zmUxy/Gp4bpwwL/1dP4xehpkFQvrCTLLYG36qnNqflkLEHD
5nMX9yWShUvQOEJcUeTE45cg67FB5qepPH4pUkqi7w/px+OXYuOqRiOfxjoa
vxTdLilbPi4mFy3Fy6+9TlrtI8vZIvTe7/tVIWTYwrzieqfkZTzeFhW7jyTZ
jebxthim7rtzdncevwx+nvnzl719T+OXIdNeY3fCJbJwGcYqlMTWbicXLYOt
+L8qFx+y3HJkllR49F3A45djVO65jw3DePxyTB5R8OOHPI9fDvXt9tojX72j
8StwwudZlewcGSuwwXjl3hFbycIVSB/gWvTTi1y0Am9CV0e1WvN4O4QILmqP
NuLxdqhNPVCY1YXH20FNMm7TrJpaGm8HpcIv4wdfIcutxOAHBv0mZ5GxEv+0
N3xNCSILV+KB0rMc7RU8fiX2TMz/9WEcj1+F+22JJ7/15vGrMFe7InBK81sa
vwp70if9vPqAXLQKLet/3ow/QZazx9Fxi7xSUsiwh6DmdcBjdx5vj0xJt0Wr
rHm8PR6HzHLSG8njV8NygajPSGUevxoPPh0qCPxcQ+NXw//C3q1d7pGLViNm
ulzLk+NkuTXorzJa7UMqGWtQMKBMfYYXj18DgymqIysX8/g1OP39m//psTx+
LaoD85XK+/L4tej94vvvCa1vaPxalESNsal6Ti5aC6MLn5RvXyLLrUP/yE7G
37PJWAfNkOYDzjE8fh2e6um6aLjy+HW4rqu5StWaxzug8uVzx3kmZF0H9Jwr
73BLnV/PAdkvtEbE/ar+Xzs4wLbueYboFVnogAw166B718nZDng9XCPD9jC5
yAElK89c1BaTqx0QmLjviKE/WW49Bs+TDva3J+uuR//fe6vkZ5GxHs9Dxdsf
GvL863EKrxXeqPL86+GRo523vuE1zb8e2x5FREZeIhetx7P2m091U8jV6zHy
c1G3GWvIco4IOyJc/8KYrOuIj0v3mvxof0XzO2LswK0Xk8rIDo4oO/3Jcvc+
stARx2Zs7zvSn5ztiFc7Rq0bZ0kucoS9vfG6M5rkake8Wz3GOr+xiuZ3QpPC
hFUGN8i6Ttgx5975nplkOMEkcPmuLZ5kByc0yI8dPceCLHTCmF6/dkoHkrOd
EDosR2Vx80ua3wlfn10/Fl1MrnbC8ozcbMNsspwzCg6kqs4QkHWdMWfe7UG3
bMhwhvmc6q8XjcgOztide+ekXmey0Bm1334JWl6+oPmdkXVV4j3xLLnIGb1e
Bl6slZKrnfHrTVToX3ey3AZkRqSUCy3Juhswe15GnYcBGRugb15beV2O7LAB
JwerlEZWPaf5N2DCQr13B8+Tszdg5PnLlqYZ5KINmJ6so6UfQK7ucP6kWIEt
WW4jzOzvHxkzlqy7EUGC8NMLepOxEX1HVt0taX5G82/EzMWR/Y8+JAs3Ylvv
fjc/5pOzN6Jx1+Z/CTJy0UYE/hV+i/clV2+E+aCsB29tyXIuWKy84HrWBLKu
Cz66RfzL1yDDBeUTY8/o/amk+V1wpmSwVkMVWeiCczPTN/S5Ss52gfPwvXek
OeQiFww/sFPoKiJXu8C22uPGNneynCsWdd1bprmYrOuK9N3ONS3jyXBFpctW
s2GaPL8rLPKv9zkmx/O7YqjZpDMx75/S/B2vJ253yislF7liZt9qx1GnyNWu
GBbu8/tvJlluE8a39PMbFEnW3YRRb9oHil3J2IQlU0ZPXWRDdtiEIdnRQ9ea
kYWboPwnb/gFXZ5/E+69m7tzQ3eefxOKCs+Urv5aQfNvwlobq77ZL8hym1Ga
NO7eqJtk3c24FR+9UPEkGZsxJXPkjxGZZIfNuKakqJMZTRZuRt/sRyMWeZKz
N2NZjXHYgpXkos0YaZYdkGbB82/GwtL0MF0Tnt8NprPtf33T5PndsMRm2FIV
RZ7fDXs7q7W4fX9C83dc76+6SPUNWegGt9//SlvukbPdoHJjd/XgC+QiN1R0
jm8T55Kr3SDva7oV28hy7pCKfuqOjSHruqP7124aLj5kuCPvq+f3Fw48vzv+
HVE1lS7i+d3xfN7+hXHTeX53jDA6e+e8Mc/vDtenRwxGafP87limeqLmtTLP
74Fdey6LHrSV0/weWGJ+cFfbZzI88MS99fDGKrKDB2YpqJmp3CcLPRA9UKW8
8TI52wOQPerRM49c5IHTVzpvcdlLrvbAFjl58R8ZWc4TjVYf2+/E8PyeML0s
W/oogOf3RJ2WSF99E8/viWV2PbqJ7Xl+TxxSVM2YtZDn94RH/TifUTN5fk8M
X1BiumQcz++J+N13BceH8fxb0FD6qHaGJs+/BVOKDQd0V+X5t0D956lzip15
/i1IOPnHbfrPxzT/FqTnGzw9/ImcvQXyOQ3751eTi7Zgdnp+qO4TcvUW/Bdk
rzLiLlnOCwUXPTpvvkJW88Kca79Vqk6Tdb1gHrq/KvoI2cQLX9rTDdZmk+EF
ea24bW7byDZeuNu5oP5oMtnBC1Gfax8OiiZ7eWF9kb3SjSB+/17Y/+i11U4v
ssQLL3cWLM5x4Xg6HLar8tVacp4XAsQPd89fzvF5wd6rs3PdAnKZF9YOWfXh
9GyO1wsL/m5p/m8auckL+8Jt8GY8x++NmWsDds4YxfF7wzPizp17Qzl+b8z+
m5WWpMPxe+PMtOPXBBocvzfceg7S29qL4/dGYokgvFqJ4/dGruTIgVUKHL83
PvrKu3Ruf0TxeyO7ZHTa859kiTeWhaPtdTM52xtb1+zx7/OZnOcNl6Te5X7v
yUXeOP/x3JfOb8hl3riwQ2VH0QtytTfmhb3MP1JBbvJGZvF81WsPyXI+6JFT
ltL1HlnNBxvLzJQExWRdH/jb73Hsd4Ns4gP9dV4Bb66Q4YMhpRuHPrtAtvHB
LCTZ/j1LdvCBRb1p7YLTZC8fHPNoP3c3j+P3wdCmygu+xzl+H1Qo/SyzPMLx
+yD+3ZM38w5x/D64tnhyZUAOx++Dp99G73mwl+P3QUOgor7tHo7fB70fr1qs
sIvj98EqifyA6h0cvy/6DNfZXJfB8ftCe0ufCQO3c/y+WPU9ZotgK8fvC2uZ
vZJ8Osfvi+qGoj9nZBy/L5z76E7eLuX4fXGp55BL+yQcvy/u778Y9kzM8fui
n4J6wBS2xBc7tmXsLU7l+H3RteRnm5Cd5wulX4PinNlFHbaeMtWXXeaL9vPn
dI6zq31xVHmuaW9+/SZf9Kh/ELCPLeeHLs3C5jX8/tT84NJ865AFv39dP/Tv
uSh7Ocdn4odkxW5v09I4fj9EJWsHtfH9sPFDTYK8h2Qbx++HDztc7i7i++vl
B0EAdk/m+y/0Q6bn9RabLI7fDyP/bHor283x+6HQptlPjp9vnh9Wdra/lLmf
4/dDScGXB2sPcvx+CCoff3XRYY7fD0dWdz3kfozj98OOk0EZBSc5fn9keX89
PvwUx++PAf5anUrPcPz+iM//cizzPMfvD8M5h+6lXeb4/ZEhqhCev8bx+2OI
zvJ3Krc5fn88GLpIM7WE4/dHnfNkiyllHL8/Fse8ier7hOP3x/i1Dn+0nnP8
/jBZOPTx4tccvz/KpT9NTtdy/P4IO9Uw1eIjx+8Pa7lwXfkmjt8fC7t7d234
wfH7Qza6YaBiG8cfgElTBEk28rz+BcDyb2PcbUVe/wIwvm3rNA9VXv8C8HO4
8puZ/Xj9C0D6kRU5s7V5/QtA69aaCwIDXv8C0Pg0bM2LEbz+BWB4D6cij7G8
/gdA3XmCtskUXv8D4JqjeELPnNf/AOhorDwx24rX/wDU7Oxvn7mU1/8AbDl2
8Kv2al7/A/AjvOPXy5nX/wBo6ym9Pe/B638AxIe+XXkcwOt/IFKWvRQPEnL8
gThaHZ2xM4HjD4TCcaPBVmkcfyB+9xP7GO/i+APx8dqvilmHOP5AXP02fkdS
PscfiPd1Gd0VL3L8gbCa2tmv8BbHHwjjZW+Ndj3k+ANhUDox7MxLjr/j+lvp
VYV6jj8Qg9v6W4u+cfwdr6cu8p35j+MPRJT5ZIlJD95vBGLjdP22Zf3JTR2v
96Ki93/6vP8QwD8jccxsE7KaALIhGmdVp/F+RIDrn/517j2fbCJAxna3YOsV
vD8RoOs+k/ArzmQbAVZVPvJz8+H9igBbauJu2gjJXgLY3hr3bEsq758EOO4a
PPBOFlkiwAfFEz9WH+X9lADJhdWVI86T8wRIK60eO+EO768EGGg5VRBaSS4T
YOQM8wH/6jh+AepMlJIv/+T4BTi9wn3uhW68/wzCrgaVGz/6k9WCELF5bain
Ie+Hg6BwcMfnIZPIJkGQ+3dfpjWf98dBaHB61rDEnmwThDk2blF33Hm/HATt
Mz0eCsPJXkHIfazhECTh/XMQuny7c+bUPrIkCPd6j1lrUsD76SBs9Z/6pvE2
OS8It/oVln59zvvrILyRX3RyUgO5LAizpMkDbnbi80YQssOqdm3tS24KwstX
krKjRnz+CIbjr8q5itPJasFI+liy8+gSPo8E4/dw543bXMgmwbB+JzS/E8rn
k2DcGvS+zEJGtgnGwpNTT3TP5fNSMFS79g7TuEz2CsaHs0+rvcv5/BSM6+U1
4f0+kSXBuCLn1t5Vns9zwTBamKBoMYCcF4xn5RMs75vw+S4YOzpbbT5oSS4L
xpDcIO17DnzeDIbiEZve5kHkpmCk+I3/oyjj82cIano4JuscJauFYMmdNyHx
N/g8GoJl51MiZ74im4Rg3G7FFQtb+XwagrSw82dP9KbzsE0IxjwtcXAy5vNy
CMav0e3lYUn2CkHBtMUJpU58fg6Bd/PBpKgIsiQEC5N6vxTv5PN8CH5HDcWP
s+S8EHz73jPiVDmf70PQc0nC+pJmclkIhgte5E9T5XxDCK4Z353Sw5jcFIL6
X6ml46w4/xCKnMX3TC9sIquF4m6f+Ol7RJyPCEU3a7Wrbw6RTUJxa7x8SvRt
zk+E4kOAcUBsHdkmFKcSkxbXd6P8iUMoBLajfxwzJHt1vP7DcWbl8zh/E4pZ
b09+XetGloRikP6OvwtSOJ8TCtOiK6b7TpLzQmFoe9R99SPO74Ti+hFJXNgP
clkoIr0mrO46gPNNoeh9+dWdn1PJTaGwCRh1bMl6zj+FQebWp7p/HFktDKtn
Hp5leZTzUWEY+E8rv7aMbBKG2rlixYYWzk+F4fSIH0M2aFM+zCYMm2J/vptv
wfmyMCx7VmaQ7Ub2CoPZIaPLG9I4fxaGJr1vyVkXyJIw9J0Dt9m15Oww6Blr
m65XofxeXsf1/5zPNU0gF4XhyIT0p98dyGVhsBXvWu+ZRK4Owxm5s8PXniE3
hXWcWIwUbr7h/GM4JJs1L+1XofykWjiKXqzW+zOJrBuOpW9GtpdsJJuEY+Ro
OY3+6ZwfDUdpD4txVVfJNuE4pqejrtPE+dJwFHwe7V81iPKrXuG4tNuy14CF
ZGE4BqYa7n4URpZ0jP9tek/pBOdzwxE3St/q2ityXjg8m1+9buvG+eWO8V+u
vK/UJZeF4++DHNGPSZxvDsflUQq9li4lN3WMf25c3OzO+ecILJun9e1hHFkt
Aum+Fo+/ZXM+OgKTtJwPrrhANolAWcTCg3+fcH46Ar7rzyq+byLbREDOq61d
TZny5w4R6P73c0H4MLJXBAr/iZeNNuf8fARmrK2X019HlkTgvuDsk5Uh5OwI
JDRP+/x4OzkvApLjv5dLT3M+PwKXerjqyR6SyyIgWnjWtqKBXB2B2gmJX9Yo
U32hKQI9Hxx5Zzic6w9CPHK+OmqiJVlRCIXTiqdEG8lqQnjNklumHUvWEEKx
Savx+36yrhC1lwOXql4nGwrR+jTYyr2GbCLE9UfJ23vIU33FTAjzuecbPg/m
eosQG06taVedRbYUYszlm5v8HMk2Qsi9e3ZnQDTZTgjv7EvH/u0nOwhxUs1n
65CbZFchTswK+JP4nuwlxJvBG+ePVqT6kkCIJyMy3vQazvUpIU7/PdfH1Jos
EmLnE7ehYk+yRAg/gxeLDaXkDCHaFq4uajtFzhbi7JXOqT2eknOF+OUxvXjp
b3KeED06bfYo16Z6WqEQQ865uyfP5HqcEBOtFuQEbyAXC6H/+u7bXQnkMiG2
Of2o/36cXCmEs8cth/BH5GohPr04/97sJ7leCJ0IDwV9LaoXNgkx/Z/pmCkz
ya1C3Jx39mHERq4/RmLO3ayJjUlkxUhsP6e9Nz6frBaJb2UnzeY+JWtEQvLf
EfWRf8m6kbhp3zxhnD7VQw0jMfjX7uQ188gmkUgMPPvlwBayWSS+mrzU6rGN
662RmNWvy+3Ei2TLSAy6MD1a7y3ZJhL/jng8etCd6rt2kWjz7q8jMSE7ROLS
zTGXHFaQXSNROK31w/RwslckcnvcKRl2gCyIhMGw7j4apVxfjsQSB7UnKt/I
okiMeqBdoTCQ6teSSNj0XTbjN8gZkbhbf+P6RxdydiT6rA389yiVnBuJTi7J
gScLyHmRsP6zdkfoS3JhJIrXFFyZ0Jnq70WRWNrYZvjciFwcibi/0k5ONuSy
SExs7bPuXgC5MhIyv1sz++4iV0dimsO/9AnXyfWRmHp132jjD+SmSGStPFb+
vSf1F7RGdpyPbo9NGMf9B1GI8fzx4d1KsmIUOq+dFdU1gqwWhVJhQsD7/WSN
KFwaZWkSWUzWjcIAG2H3R5/JhlFQHnpkQbka9U+YRKEopGBy9DiyWRTUZgyU
f76CjCjc9Gm98ziYbNnhNXNPuO0i20RBVNrnWtYVsl0Utgy/p+b4huwQhcVG
e/eckaf+ENco1GW989yqT/aKQpKOJOSXOVkQhUKFC0VVTtxPEoV1yhMnTYsm
i6KwfpLRm977yJIorNI8fXZlETkjCitKjhYpvyJnR2HenaVdh/0h50ZB/HTI
zv39qV8mr+N+VWfvDBtLLozCktpBJnkLyUVRuFCRlzphE7k4Ck1L/rX1iCaX
RaHfl1GPRmSRK6Og+OGWQHqaXN0xf49ML7NScn0UFEwO22i9JTdF4d+8PnfM
fpFbozDNqSEnoSf3G0Xj65gRpUr6ZMVopDxwn104gawWjTjN5xNT55E1ovFl
8fvPInuybjSy16g+ynEnG0bj0BZJ8KtQskk08ly77TVNJptFw/RQD6PdO8iI
hln5ad1BuWTLaLxdrHbt5GmyTTTaf0X72RSR7aKhWa91/+9dskM0Ng+4k15Q
TnaNhu2l4Cv+VWSvaHzSHxc49R1ZEI1Mqz/9FT+ThdGIMjg95mkzWRQNw7PV
otwWsqRjft85/UN+kzOikaAkUF7I/W/Z0Vg20/y+LvfH5UZjt6P8r6/svGjk
filbd4NdGI2TdvuVt7aTizruf8lMbGgjF0fD6MUQn/G/yGXRGLJuik3XH+TK
jvtzPOZyZSO5Ohq+Sfsqjn8g10cjeR7q4mrITdHQP+jsu+E5uTUaz/vkjrF6
yM8/BpNGL+4x+TY//xh8mGKnOe4iP/8YqO1ccnxKHj//GAyZOXfq0v38/GPw
wMLDO2wrP/8YDPjvid6lOH7+MbCt6rSkbyA//xiYRrgMT9jIzz8Gqk1v/2ku
4+cfgzs1OgsezuLnHwMzxXf5x0bz849BhZJLc74mP/8YjF0R2VTblZ9/DFwN
P52a10yfd68YtNs4ra19ThbEYPfEJ6POXed+thg8CxWElx4li2IgOP/5sl4a
WRID39tLBEVB5IwYfHzrPPfIOnJ2DKqHiV/UWpBzYzA/tvsPPyP+/sfg6L7v
jutU+Psfg0O3gjsdbqL1oigGg+Razi5/TC6Ogf0hrUCPAnJZDAznjJ/4dRu5
MgYetUtaPgSSq2Mw9dCOMyvtyPUxuLU7LXSOGbkpBgriyAUF/cmtMSj0KDE+
2sL9bbGImu6pY/yErBgLk3ehujhFVouF0O+40QcJWSMWLzy/jzT2JOvGYvua
Ueq9rMiGsejbp/JK5jBe/2Ox98WTLqWdef2Pxa+H8/KOvabfC8QiNzQoFBfI
lrE4U3JtQPI2sk0siiKyDdO9yXaxqG65NGmNNdkhFlcWDrz3aSjZNRYriyYv
tuhE9oqFYk93PbcX9HsoiEXNo96JzgXcDxeLIIHS5XFisigWl8S9q1+7kiWx
CJw5/++mWeSMWNyJPqfyVJOcHYt5F+q+Df/Bv/+xGLEpInTTff79j4VaVPua
bYf497/j73fxNSsQcj9dLJxczbfeWUkujsVmF/m6ClNyWSxSihckVPcgV8ZC
fs/Zog+1tF+pjoVDxrnzPy6R62Oh9yo/pdt2clMsZvX9YKbnRW6NhX+XvTmW
87h/Lg5zfEbsC9MjK8bhX57i5+t/aP+lFodX8SpDBz0ha8RhRq24KvUEWTcO
mT8zEzREvP+Lw1Nr/aRL63n/F4e9mxcZC6fw/i8OPzLyDzj25f1fHOqctqq7
NNJ+0jIO2YFWseI7ZJs4OPsHN1TtJ9vFQdfZ19Q2nOwQhyDHBJ3vdmTXOMSa
u3tdGUv2ikPjtdjSsz3Jgo7rciuLX33g/rY4nG55+278TbIoDk375LdeziZL
4jB9x+OxwaHkjDi03NZW3WxHzo5Dfv+zjuJx5Nw4qD/4tPKTGjmvw+veq0Z8
ofNAYRy+BfaXWN3lfrg49B21u2LxIXJxx/xyeWWyGHJZHOZnyK1RdSRXxsFE
1ci6eAa5Og5bDvZcf1mbXB+HHRcsF3/9Q+efpjjsext70/k5uTUO63s0rex3
jvvf4jEhSry7WwZZMR77nxzrPymQrBaPgo1jph9dTtaIR25OV+HaCWTdeNx5
5oul/ciG8WgICq5MaOHzXzxWvDXZLv+UbBaPHrGa1y6d5X63eCivi9l6IYNs
GQ/HR2UWbUFkm3g8LXzyO8KebBePHxeNns+ZRnaIR98v/n9tdMiu8dgecyNw
dyeyVzw21t+zHV1L52FBPGaUm2d2vs3n73hUnB1ornmELIpHvPnDeQEpfB6P
h/mQM7vVvckZ8Rj4c4Rxiy2fz+NRuf7T84GTyLnx8AowF0Vp83k9Hm9m2qkZ
y5ML47Fnz7p5A+s4fxEPh0UvFeaXkovjYbb0qerFfM5nxOPtzv5jvbaTK+PR
rGg3dmMY5zfi4Xk95OEuJ3J9PIS/iu72m8/5jnioyX+tLDMht8YjsDH9v5L+
nP8QYc+Ysf16tlN+RVEE0SzloV3ukdVEsFOyaArJImuIsHfTjBJvd+6XE2FS
QoLi+6lkQxF++w/+8VSFbCJCWLebz+a8pnyQmQjL9Sb9GZPP+SMR/tsg3pER
TbYUocF204+g5ZxPEuGb8qQ5T4zIdiJc2Rpx4/Bf7ocTofC14oGWh2RXEYzD
hgy8cJDsJcLMYTVLW0LIAhGsB00THlrM/XMinPJbWXJvGFkkwq2leetc2zkf
J8KGedgY8IScIULI8fNdfx7j/JwIScYnXT7EkHNFqE4uOGG9hpwngvehrXK6
E8iFIoy86RHpqMr9eSLoWD217fOB8onFIuhWdt895jq5TITEZ20RF3eRK0Uw
PBCvfUrA+U0RnAyEmeq25HoRJmhX9qsezflOEdINzhWqK5NbRXg9e8++/Hru
f0tA02af1oKbZMUEbBTvfqW7n6yWAKu7w4ObhWSNBPibPWgauo775RJQ8LD7
pqJpZMME1JuaKl3SIpsk4MDG5DbNNsoPmyUgpWDVppcvOH+cgOfxDcF/L5At
E3DRoXB1eBbnkxMwrm35lLVhZLsE3N1+wCJrLffjJWCO551DE0F2TcBoz+lb
R+uRvRJQY/p2erQCWZAAu7kKlWPqOP+eAP3zG7dOvksWJcCm+5LjWcc5H58A
JY/MFSuk5IwEOMfn3Nvkz/n5BFyKCJz/eCU5NwGnxOeV0qZzvj4BO7tdtc7V
JxcmYGGZ2KZ3d87fJyB0y9sVZQ1UTyhOwPj08QfflHM9IwEHTa4JZ18gVybg
x5DkUX/2cn0jAaPi17d2SiDXdzyPwNeGK7243pGAT4f9leXsyK0JmBm1qfnH
DK5/JOJ8TeWwyYZkxUTM3H+xU6ka10MSsfj8x0dHflF9RiMRvwZoND+p4fpQ
ItItnp+yLiUbJuJ9Vq5fzzNcL0rEc7+q1IHZZLNEDHt1Zp1XItePEvFoxoo5
qv5ky0Q8O3Vzf8s6riclImV0w/MhVmS7ROwJ2muTNYHrS4kQNKW7rdQjuybC
Qd8xfXVPrjclog1x4w/8pvqYIBFha9ZfMK3j+lsinsrGpyuUk0Ud8bUNMRl4
letxiYhOH9/J9wQ5IxG7P8wO6ZnF9blEGF3tq/45gZybiE7bZpj3EHC9LhFj
5Myi3DaSCxNxrbO1tfIyrt8losFyz6Av5uTiRCjOGC5QGcv1vET8HVH4zF2P
XNlxv43e3VTqzf10iejWW+vq+07k+kQMX5O+WO4r1zsTkda46N/yGnJrIopf
ath+fMT13yR80I54ce46WTEJudMq9G6e5npwEpp/m57rcZCskYTBb11Hp2zn
+nASSmu7acxLIBsmQeflym4zQrhenIT/BjikeXqQzZJwprZs6dN1XD9OwsJf
6jWCJWTLJLzuPPvZktlcT06C0cBhFc5mZLskPDYdGXhiBNeXk2CY5bF6tA7Z
NQnHfY4Mq+vN9eYkjNaYHfqkK1nQEc9R/Pv1m+vvSYiImb7CtpEsSsLNoyEj
a99yPT4J9WvuGx6uJGckYVXS/p/77nF9PgmX17bNfniNnJuETrfdro0t5Hp9
EpS6qmvfPU4uTOr4vuR0S9/P9fskuI1YPl6aSS5OQmbUp1VXxVzPT8LRiqOj
DOLIlUnYZ+Doei6U+xuScCp51VWhL7k+CVB2+B60mfsdkmAz4/ylnPXk1iRc
NRrxQm4l9z8kI03xS49UG7JiMgJG5KlZW3I/RDJeVWQcnQyyRjJejJqWvdKM
+yOS0Tx8/6lcE7JhMganTT82zIj7JZJh0bVxccVgslkyuiu1e5weyP0TyTho
oF1ytQ/ZMhn+cs7j25W5nyIZ+zMXBm/qSrZLhkrABdfOctxfkYzYug9lJb+o
n8U1GTF2gphr37jfJhkJ+x2X130hC5Kh7y+nObme+2+S8a6wc+75GrIoGWN6
BZa7VnE/TjLGr7oosKgkZyTj/cQkzwWPuT8nGQtONkqi75Nzk6FXYnnx/R3u
10nGJau59wNukgs77rfj5wNjr3L/TjIMgkT62pfIxcnY2vm84dhz3M+TjA9r
3TP8C8iVHff7fMXy2nzu70lGJ7WQeREnyPXJEOgOWTHnKPf7dMQb98FlUi65
NRnxJQYb7A5w/08KdKTBk/bvIyumQHq5vGxANvdDpaDxiqPGRe6f00jB7/sZ
7Qk7uT8qBZGWo32jM8mGKShX0XPJ5f45kxSs+3qytJX758xS4Dx+1Xa//+uf
S0FNt9oLmtxPZpmCE4OWmDRw/5lNCm7YfPz0ifvT7FJwbebYOnW2QwqOanzX
3MT9bK4peDdrXGw99795pcDTfIpOGluQgtWpkjpXtjAFu73+vNzEFqXgR+fo
f1vZkhTMGe1p84WdkQKNU+aPtvB82SnYNOuuSJvfT24KCg8pBrWw81KwqmX2
4d8cT2EKOhd3Hzyc4y1KwY44rQ8xfD+KUzD1WnyPHtw/V5aCkLRtaRf5flam
4FH3ipRMvt/VKZh7sK/iPn4e9SmYVOPSq+L/+h1TsOia3vnx/DxbUyDzr+5z
lZ+3XCoy5YRjBPx5UEzFze9Dhtnz50UtFeljpylt5s+TRioaLwU25/DnTTcV
/uIH33v8x88/FYWx8cZ7+PNqkgrHpSPPrOXPs1kqxkZsPTKfP+9IRbnn+2FO
/H2wTIVrmNg6l78vNql4qb3IbOBdfv6peKg4Vvkcf98cUmEckPkxhr+PrqkY
4mj6M4y/r16peFAltyKHv8+CVHRyW23Syt93YSrSnL4eCeL1QJSKu263Gw0b
+PmnorXRzKjrd37+qeh1vD2q129+/qmwshg53IrXo9xUBD4zXXCK16u8VIy/
WKM5X4XX/1TkaHrcVlXn9T8Ve29siFLQ5PU/Fas+3hAa6vH6nwq1X/U/Q3g9
rUxFg0/GoH+83lan4k5FZ+P/eD2uT0Wq5PbqrbxeN6Vi6bcv9bm8nremomBq
s8oXXu/lxPDce6m7I/8eKIrx0vGUpqIjr/9iLPqSG/Oaf080xHjV/jmunn9v
dMUIqrDcqB/G678Y3dzkXSX8e2UixvIjrx6NlvD6L4bLFf3GTjt4/Rejs8PO
rt1yeP0XQ3vwVucZJ3j9F+Pmw/plR/n31E6MxS9bDa2u8/rf4eOnjXXuk13F
6KK7s2DYM+63E6O48WKfDbVkgRgzR13Jesq/90IxDl+qOhjxh3//xXh8/0vC
mm7cjyZGhKPDHu8+5Awx1tyzmHWR9xvZYiycbvVg2khyrhgL5tzOaeH9Sp4Y
K9f/p1fH+5lCMVoiThxRXcr9ax2vJ1HM9nIgF4tR1/WCi5In97OJ8drZy7WK
91OVYvS6FKv0kfdb1WJYjVcpNMkg14vRKabsZT7v15rEMNu09L1HAe//xGgY
XGG+4Qbv/yT4V75iY8ZjsoIESa0ZRd3e8n5Qgt8ntG+f4v2ksgTCgSZNWfLc
LydBl4M1p67zflRdgrWzeicb6pM1JJBtc/1ewvtZLQmU9NZuPmHB/XUSWCya
6lHG+2EDCW7564SbupANJai806rzhPfTIyXIMJM8LUzkfjwJakbFjXjF+/Fx
EvjMW5Yz+yTZTALJ56WljbyfnyqB9GrB6Cre76Pj72ukrO5ZT7aQQDyitCb6
D9lSglTzObbTVek8YS1BzLk8i+n6fD6RwPjJ/nkxE8m2EjTG7PytZs3nFQky
v/xsqnUgr5Zg5IO/t+UC+PzScb8vVmhtSCI7SzBNX5raey+fZyT4T1f3cvez
ZHcJLPXsF1rd4/ONBEMX/H379C3ZT4L3R3KG5P0mCyToqfHwQnkvOs+FSvCz
qcZmjhH/+ykJngcNkHaZSY6R4Hi7ZHiflWSRBNUHcW+LNzm54378+jlcK5Es
kUC15+qfGvvJ6RJ8c66t23iRnCHBzA1PT3WtIGdJsCtojvqvRu7vk+BKcfcb
05XoPJwjQV3MhYhKAz5PS6B5778ut2eQj0ngodnet4c9n68l0J6yxudAAPm0
BGOuTn61TcbnbQlU5A8Mqj5BvijBnPA5vyNL+PwtwbWiNZPC6sk3JEDu6QOP
ulC+oLjjfvTdrhStTy7t+Dy2Fo8TzySXdXyeC0K+/lxHLpdAvWJWn8vh5EoJ
9FQVXWt2kV923L+Q9msbLnF/ngSzB279aVlFrpWgIMT1efJfcn3H92nH2Jmm
gyif8lkCxydX5CfPIDdJkKJQ3pLjQP4ugekuvRbfKHJrx/14NeH5oRxymwTr
fzuEzbzN+R8phkzce37mR7KCFJIfUo/DKpQvUpTi/k4bn6AxZGUpZtluOPDf
Mu6Xk2L/9sNvlwWT1aVoCTBWct5D1pBi/g7NlqobZC0p5tTvjLnxkfvrpHh/
97RMoxflwwykkOsy4u/ziWRDKcKUHbKV15FHSvHrxSi7E3Fkk473M/r2v6IT
5HFSTNCO9579lGwmhWunx3FT5Si/N1WK54c+9T9kxP++VorsY9f+xC4lW0ih
3+let+dhZEspLESPVXNyydZSqF+4+q72MdlGCsc5Pit3/SPbSuErCzK7P4Lz
lR3xDmlYILAjr5bixoNRjlmx3B8nhcG2g5OnnCI7S3HGPDVz2RuyqxRXM49O
+6xK+VR3KX5071nzbzr300mR+al4mtST7CfFQc2jnffuJguk2Pvz25vRD8ih
Ujg9lJ+pI8f/flqKqllKN95rkGOkmNG26U7DGLJIis2dJbsmWpGTpWjSeZRw
1ZkskcKlaEZ5cjg5XQql5T5XMjPIGVKM0lmdWP8fOUuKuSv7egXd438vLsWV
x4cOWdeTc6R4/LLSybEz59OlmB7V/Oj8IPKxjs+nTuyg5ZM5vy5Fw7gJbuOW
k09LsU8YVLnMh/PtUkxdsUJ4PpV8UYra8SMCHY9y/5wUbknrSxYUk29IMaZg
bGzoO3KxFIXGjgcb5KmeUCrF5E+fjXJ0yWVS9Gy403nXdHJ5x/1uz9R9tppc
KUVclv0GuxDySymu62qdHLiDXC1FTr9Dj3TOkWul2PZgbJZLJbleitcTez1o
/kn+LMXfr4uGXO7P9R0pjhVvXlQ6kfxdija3L9807bjeI4Vn7oCTxwTkto77
KZ/UOzyT6z8yPKmszBGfJyvI4KY18U31C64HyZB+uO9E779kZRlurLvcHTpU
b1KT4VD3ryetZ5LVZRg0JsZ3mxNZQwa53z8kWnFkLRl09dQmvsol68owf25o
3PMSsoEMG7etkao1kg1lUFH6sCqiN9XTRspgu/5vxZAJZBMZ9v0+/0F+FXmc
DNevarr0DSebyZDlmNR79T7yVBnUWiJ2P7nF/78LGcas73NM+IlsIYP3vl13
7dW4HinrOL/bBG4YT7aWodntsVbWKq5PyjDSuLZ3ewTZVobj3j92JRzgeqUM
dhceNUwtIa+WYcmJ2Xr9mrl+KYNB1GX06U/1UGcZJhf+m2Y6jewqg7rPvVYv
J7K7DMk3siffSyB7ydDouu6sRR7Zr+P9j9ZQeVJBFsjQnnnjeshfcqgMYxXV
Fkww4P63jniqDRTkrcgxMoQPExq/9OZ+OBlufS5puZpBTpbhTc+rAXlXyBIZ
8s+rHc95T06XwctgedROFe6Xk8H1i1qxdBw5S4aDx3LNYuy5f06Glb2CA7dE
kXNkuK3eoGZzmOvpMlzJ2xmsV0Y+JsOGVL8+b1u4vi5D5aC/+qnaVI8/LcPr
ZMkrHQtyoQyfv+WtS99Mvthxfy2cT9RJuP9OhlFmuy/2PUu+IcPuc2ddBlZx
P54M5arfBc3y1E9QKsMpQ/WD2wzJZTLoWLZKuywkl8uQ6GBzb5IvuVIG50X2
T0dlkF/K8J9xwaDqi+RqGfa/GCc/7w25VgZpTeVD5y7UL1EvQ79L1x+MMiJ/
liFKNHfMPmtyU8f3sW8n3fNbyN9l6DpL/oK3jNzaEY9XD40bp8ltMvg3P7Y4
VsH9H2kQ9VxvOaSVrJCGTu5uBsMHUL+IYhoclj2qKJhEVk6DOFLL/vpKsloa
8m91ObYgiKyehr8GA24uyiBrpKEufHnOjTNkrTREmr+1OlRO1k3DyOk3r39t
JhukIerEQc19PalfxjANTef2uecNJ49MQ6LZgBcac8gmaTh0X5RR4UAel4b6
8Z7vaoPJZmk4nTCsz4x08tQ0GKx9Hlt9jIw0bLa3P3PjBtkiDaXK/cbVvSBb
pkFX9O2g+VeydRpeJkx/+KQb9yd1vN8d0dJMLbJtGuJK3WoTTbhfKQ3RuyTv
D5iTV6dBIXpuxXvud3JIQ9kRp77zXcjOadAL/Dy8lPulXNPwcNbtG5viye5p
ePx3yTmdbdzf1nE/J31X/MT9WH5p2GYheV3M/VqCNPh3atl6hvu5Qjvev/HY
U/nc7yVMg9Wb8i9nuR8sJg2C/r2Nb3O/mCgN00a9TqjifrLkNAQv/rDoF/eb
SdJwtlbQrtFETu+IV23yvCncr5aRBtv8jxrruJ8tKw3H2j8nRXO/W3bH583+
cssh7ofLScOrp4trS/41zvgfaJoGmw==
     "]]}, 
   {Hue[0.1421359549995791, 0.6, 0.6], LineBox[CompressedData["
1:eJxV23lYzF34P/BBFEKJlK0oKY8libKUdwtCKCXZkvbSMu3TPtVU0z4zJaGI
yhqlLNkSkhCyJyGyJFvWSuI33+t7n+91/Z5/nut1ffrMmXvOzOecc9+3CU5+
q137cjic9zIczv/8/3//61j4//+fg8Nn059/+vOFLIcholTlc9+ZFfDT1jEg
4DXzCKhldt+YdIdZBSUjO+9/qmAeiz5Tix+8lzCro7zNeNVCb+aJyCmzyFUF
syaWJqg6HhrKrIXQYS26mo2fydqYlp/deiWPeQruh28YWruReSr8M5/6blVh
no5wld7VnXc+kXVxINC1b2k880wY6z+Z8mQWsx66T4ZaX2j5SJ6FwvSEZYUp
zPo4Mc/wzL2ZzLPxrLE0V/LoA3kOPHf1v6MdxmwAtwOKN5+oMhviyPRl09oq
28lzYfnmZUS2HfM8PBuj/Grs9/fk+dA86PP7fAbzAhScji08qsNshJTauuea
NW1kY1wad7lyjQPzQnBH3JrL7XpHBpY6tjvslZD5QKn7blWlaey6CUap69h9
vPaWrpvg7oOlstbOZI4pFqbemOP07w1dN4Xje+XRxnlkjhm8302dwpnHrptB
f5uJ8aXG13TdHBusYw9u55H55vBKdLTdrsquL8LCb//e3D3XStcXIXbN7Ca7
zWTOYpx+82j/LBl2fTE4N340BR5+RdeX4LBapfGE1WT+Eti4Hf5m1vOSrlsg
qkwv41UxmW8BlQQ1o76r2fWlSOgd27z/XwtdXwo3h79K94+ROcvQMud6oHAz
u74MVf1Dkq8psuvLETLy4je11Bd0fTmu7j+vfennc7puiZ+7NJ74OpP5lmiR
nLqr8eAZXV+Bs6Uax54sIfNXoE23o1tY1UzXV0Kk2rtKx5DMX4mCE+dDj594
StdXYSlfjz9Kn8xfhZgVjY1Wp5rouhXaxgo8Vs8nwwoeOV77FK48ob+3wqXv
63bErCBXW2H2ewvFrKZGut8aWhm2mcZeZFjjbOYSj+A/j+l+a5wcXXNriphc
bY1FX7WbrLXJnNWoGLF017NLj+j+1dC0lh97aROZvxqbHw/x+dLzkO5fjckf
LEs25JE5NjiX1Fe+25gMG2w4e7TxbOsDut8GDmvdo7NTyNU2WLIzLT1sFplj
Cy2DO1Wbnt+n+22xz7nyl34qmW8LY88jFt/nkqttsdczsDut/R7dvwbH1d1j
f+WRsQape6ZmaFqT+WtQOkdLRl6WXL0Gr+TF//ZW3aX77dCit+nh01Ay7DDH
qVapVI/Mt8PkvxVxil8a6H47/HR8q9FdQuasxdk/v/Q2epOxFnc26U6aOY3M
X4vvaxNWP3t+h+5fi19Vx1eMciNz7PGzVzPy75fbdL89jtbcSI+NJPPtsWTp
w4LMweRqe0RZzIJK/i26fx3017zbMngmGesQ9t8i13XX6un+dVBfrKr4fTO5
eh1MUqvE13/fpPvXIyp2Uujt7WSsR61WQ/n3OWT+eryffnXbf4036P712Dcp
6rZHBJmzARlHbrrtVidjAwZcq7108dp1un8DEgYe21HNJVdvgLXy/d7sMWTO
RpxuE1jNrKuj+zcCQ/6Zp4SQ+RvxrWnTs2wtcvVGVOXkeixuvEb3b0LQ8jh+
dioZm7BQ5p5sMMj8Tbjeq6f9/Fct3b8J9cs2WdUeI3McMM3WQE/TgwwHSJI5
lz5PJPMd0JmYMGPci6t0vwO0Xm/6vD+PzNmMroezDsdvIGMzzp4fuezIGDJ/
My6V3f008lkN3b8Za0Zs+HhuD5njiAFT5t3b5kxWd0TR/v6OedpkSK/rvhXW
fb7yv3Z0RFKFhr/SKTLfETvCz3uHRJMLHDH/Rf+/7UvI1Y6wirZ74DWc3CJ9
vStnbnx5dpnG3wIUlrwNPExW34IZzq12X0PJ2AJ1fZUAp8Vkxy2Qj3118tJI
Mn8LXM7mXB349hKNvwXh/tM9Z58mV2+BR5Zh2sJkcssW1EjuLtDYSOY4wXZV
4eGnM8jqTriU8nGSiwwZTog4kzm+8kk1je+EWf+0Ne6XkvlOKNb6r6UskVzg
hBcu/dRWOJCrnXC30uxq4RxyixNCKu/fLxtG5jhj6fxV9S33LtL4zrh447fT
hSQynCE4vFCuw4js6IyaEIdk/59VNL4ztCJfvJp3jFzgjFCNeQsXeZCrnRH5
OPFnsga5xVm6Hs0X9m25QOO74N66L4UH88nqLuDmTx8fspEMF9xSWfXDZSzZ
0QX/9bdd5vfsPI3vgl8jGj0z95ALXDB2M+fSRSdytQvSw0Nf/tYit7igV8iN
mf/xHI3vCpVvx7mR5WR1V5SIDxypDCPDFXnjIhd/MCE7uiI/eW7IsMFkvit+
63akqz88S+O74nTm617VAnK1K07aXVnduZXc4grnA0/1TxiSOW7IXLTZ3XIA
Wd0NXpkHr517cIbGd8ML+UTLv4VkRzcEe6b2Vwgi893wsMR99CdzcoEbjifh
hliZXO0GTtrwrb/bKml8qXWUPTXOkznucDDXWTxQRFZ3R9Ryox0HXchwR1Xu
9SF/55Id3fF3oKnzAAUy3x2R+8XeVW9P0/juKJi1Y5hGFbnaHa9zj5vPzCG3
uCP+x0zlt75kjge0zLr3GFuQ1T2gGd0z1HAiGR4IH3Gv4M6fUzS+B1oKVxX2
bSTzPcBpVA66XUEu8JB+3vp8XRG52gPT954z0/Iht3gg6p7b0qPLyBxP3Nec
O+WKNlndE3sma6a7ypLhieniUi3J25M0vifctxdWLq4l8z1x4dxJxdj95ALp
33caDFmYRK72lH4eNyTRHuQW6XicoTlGy8gcLzgHblQOn0pW98LIcdHj9YaR
4YVFQ11rnL+doPG9IGho0x7yiMz3QuRyQejUs+QCLwxLGPn24m5ytReqp+85
cTWe3OIFp2+Dpy3wJHO2opP7fd+EVWT1rUh56xgYNJuMrfjqtktm1lg2/lb8
2//l6oZ+bPytqFscMeNTewWNvxVh4u5Lb+6Rq7fi9wHxAPNz5JatyBm8P2NA
EZnjjbLo4u//pZPVvWE189mj8hAyvGGga/lyhyPZ0Rs98rwrL5aR+d7YeMp0
dvxsNr43/oVe+hmnzsb3xkLVkTefDWbje6N5uFmcpLOcxvdB+f1hX/a0ktV9
8EC+6YNMAxk+KOwNWVd9nuzog4bKYWp3D5H5Ppi+4Z/OnO3kAh+0Tiv3+Swg
V/vA8GhCa1cAucUHvT6HUmy3sPF9Mespx4Njxcb3hV1t/8QeYza+L6xqjvww
n87G98U9a/PrT8ex8X2RfcZ5/MUhbHxfWJyuVfrce5zG94XvPcPb7p/JLb74
uTUi9L8XZI4fJoRPMzZsIKv7YdTnijXpl8jwQ1HVxF86FWRHPyhna20cUkzm
+6FV4UvdnO3kAj8YVqjGFSez8f2QtDz/rn0kG98Pm2VO9bfyY+Nz8azzLjfF
iazAhdmqaE9ZO/Z+uFj23nZZ7VKyLhev4tv9a43Y++PCwO2Cqawe2YqLR0ma
GkIt9n65GKe3MMpiDJnLxXOVN1VLFNj75yL7Xc66hP5kEVf6xPO7zOkpo3i4
2DJlRMCZDnIZF2s+Hnx97C25movv1tU7WprJDVxct181YuV9cgsXDaYFTb+u
kzu4WCe/OKSpmszxx2wzhaCu02QFfwwy+udsVUpW98erw4ZPXu4n6/rjRdIf
z5LdZPjDf8vO0tIcspU/xne6Lf6QQXb0h6Zu+S2HJDLXH1auF94N5JP5/gjv
PT73I48s8kfP+tyt/QNY/P6oUVmlvWYri98fvG1x4566sPj9sflmUU+OA4vf
H3sD3wQL7Vn8/jgROMW0dDWL3x+Hs+RUB69g8QdAI/L8yV1LWPwBaP+t8cjR
lMUfAE766XnrjVj8ARg3TbA/yZDFH4CjrpNetM1i8QdgSfHFkqgZLP4AXHnw
+8mi/1j8ARgyvXeWyWQWfwDerHZL8dNg8Qeget+y0gY1Fn8ARt6ZHuoylsUf
gLVH+52ZosriD0CfxRNXaiiz+KWvr24xfKUSiz8A8+qyWg8rsPgDcCgrdt/c
oSz+QMzPb5v5ezCLPxCmvZ0hHwey+AMxdL7+OgU5Fn8gejuDLrsOYPEHovD+
q90fZVj8gTgp/Nlc1I/FH4gY0wCfjL4s/kAkTfEyO9SHxR+IedPn2v7ksPgD
4fZHsD2AuSAQG+YtkJ3AXBaInR3b9nCYqwPxcbriZkXmhkC0vgtabMPcEoiq
fg32tcwdgdh9OGyXFxufEwS9WkVlsPenEIR3Z2PvLWbvXz0IB+x7m6NZfLpB
8OgnY97Wn8UfhGIlJ5V4WRZ/EDh+ej6r2OfnGISl61rWrmCfLzcI86N1OiKH
sPil4+urWz0fxuIPgknXtGz/4Sz+IAzSVH46ZySLPwhnn3Utmq7C4g9Cqald
19oxLP4gzLqlqHJiPIs/CB0/g2+ZTmTxB0GsaGgmo8XiD8airZH7u3RY/ME4
mdekpT6dxR+MmZpOv8L1WPzBqJq7Z+lAAxZ/MG637ll7cz6LPxg8y+51l8Di
D0bP2ltpHxax+IPBj2qYvmw5iz8Yva9WxT6zYvEHY+EFg7piOxZ/MJR+qi4r
3MjiD0bp8NlWj5xY/MEI4UZoLfRk8QdD99TOMc/9WPzBGLi7X2xFCIs/GAKZ
b4cvRrH4Q3DGPLijbwKLPwQmr3hHotJY/CFYEHfLUDebxR+CJn29rtF5LP4Q
yCs6WBoXsfhD8Exj0K6dJSz+EKif7LHUPcniD8HU1qG3/11g8YfAa7tJ+sBr
LP4QZDys+rOigcUfAjv3dvGtJyz+EDx/631V2MriD0G4DpT4n1j8IVg25Pzv
ik4Wfwh2HSn8q9mX1peOEAi+6RXfl2frXyiaDkzlVY9i618oJje2yXycyNa/
ULyqcG62m87Wv1DUPrPM6jOPrX+hKJ466vLHRWz9C0V9q1x/1dVs/QuFwMXy
T6IDW/9C8WlDH0uDrWz9C8Ufv5V5U3hs/QvFP9/AHVsS2HoeilMyzd+bJeSy
UCR06TnmF7D1PRRju4K3Fx4jN4RiwbeBazvOs/U+FEv7NzgKbrL4QxHTf36E
YxOLn4eTu139E96z+HloHKmj9KOLxc8DjunPPipH+xtdHhadnnT8uArbH/GQ
t7jAta8O2YqH/kUecwrmsv0SD4u3RsmnLSNzeZjjqfeodgPbP/Ewbq5lkrUP
WcRDzoGxqtNi2H6Kh8SWPSnrxeQyHkp8drY0FbL9HQ9XB1dOKj1FbuBh+MYj
Xo3X2X6Ph/O8lbVrn5E7eDAOqFkz/Svb/4XhyPldCzb1p/2pQhiis74WvVFl
++EwzNuQc7FuOlk3DF9lZ9XImrP9cRjcRX5fC9eRrcKwPXh0+m4/tl+W2s36
dVcCmRuGxQOPLD+Rx/bPUndsUbtXQRaFwfQa/4rNTbafDoOkaljRvFZyWRjq
F5rNFvaw/XUYhv088t1oBJ0HGsKgOM3DZdM0dt4Iw+79diPbFpM7wjD69rL8
F47s/BEOB55p3qIIskI4uFr558bksPNIOIY+tz3mfJysGw67QsOZarfY+SQc
TgXag63ek63C8UrWdkhXf3ZeC0dWNU9JVYPMDYfnO02Zk2Dnt3CMMvjdcMuB
LArHCJfvIa5R7DwnvT/yyN+oPHJZOBI3HohUPc/Od+FwWbxXcV4zuSEclccf
tb/8w8574YjaYm+qNJ7Okx3h8H6wcXPDQnb+jIDdxG05Y5zIChGYsl6wrFPA
zqMR+Bv05IPrQbJuBAZ/v9ntWc/OpxFYbRjRd8BXslUELC5aFS5QpvOzYwQ4
c12TFRaQuRHwL2/zFziR+RF48jh9yq5kskhqvy7x2uPsPB+BMu0ZueefkMsi
MOG+wsJbfen8Xx2BqZNv7UybSm6IwLsZW+712rF8g/T+yFHqmnHkjghoGcjf
63uM5R8i0W50cll+E1khEvdcfft0ylL+Qj0SF/oNileaQ9aNhEara8AvF5Yf
iUThLZnkwmyyVSRkb5RsH3+V5Uukrzd3UNLWX2RuJGT+rrXP0KZ8Cz8Sz+rl
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
ZiLC7L+FZnNY/1wmhoTqPlA1JVtkYmDqlOUzV7J+ukxoVcmYpaxn638muCN2
OkxyZ+t/Jnye1pr3C2LrfyZOl4YXaMay9T8Tk2RvqqdksPU/E/9MB4Tp57H1
PxORK645ah5m638mjGsHZq+vZOt/JtwuGd9/zPYTudL3O86pNe8hW/8zMcxf
IePwa7b+Z2J2fv7ePj/Y+p+Jhu7/vu7rR/uZykysmVFjm6nE+tcyMfaMz6Fr
bD9Ulwk1FYu7lvqsny0Tq84WVagtIjdmInHXBCMTO7b/y4R8cc3mcne2/8tE
n7ujlILC2P4vE3+VF9smpbL9Xyb2Tp6r9Ynt9zgiHPlzWry/jCwjQolZYvGJ
K2w/KAL3kCBE5TFZXoQo+Xtq99vZ/lAE3fxPl9/8JY8QwebbkyRrJdqvqogw
SNUkf5Q2eawIAQd2GM41Yv11Ivg9scw5vZqsKcLCi8+6szzI2iK8TFA8diea
PFWE3S9V+ntvY/14IgwvPGvvVULWF6EoJmZQ/RWyoQguyi/iJU/JC0S4Oc93
zsXvrH9PhKGZQ/Ns5Ok8YC5CH56agfUkdh4RoTmoTHLGmGwpwqk3J0wz7Nn5
RIQTy+e+bggg24qwYujOcfHp7Lwiwva753bvP0jeKMIhz0UTjGrY+UWEttCn
HhYtZBfp+7m4yezGH3aeEWHbfK3kGlU6T3mL4DB02bi5BqyfToRhFs2fdNaQ
g0T4U6j3IzeQzBNBznTqbKGEHClCuF/4pe7jrP9OhN6MDye/3CULRFgws3K+
9zeyUIQ5fveE/kp0nkyTfn65Bi19ZpNFIkxfZi5RW0vOFuFwz6De+jByrgiv
1I6myeeT80Qwf3PqXEs1+/diIvQti1KyfEMuEsHUOXaq9SB2nhbhRmbDsW8z
yCUiuBb4rZ5lx87XItiNvfJiZBT5hAjzVHtn5Bex87YIGb/Sp9XXk8+LMDA6
90HxT/bv40SIEHjOmqZG+YAaEWq1v3u5LiXXiTDp9vJS6yByvdRfdS1+7mH9
dtLvf2e62Kae/ECETFXZP37d5Ebp9zlDOGTlZMpnNItQrNi05esacov0+/Rz
zpFNCeTXImg2t5fnnCS3ibDD9Pu6grfkjyJ8ldu/I1qF8i0dInwfvUkwezn5
hwjHPSYvvh5N7pLO57qYScYV5D8iXH4zQJDbxv79oxg9qUtfNI+nfJCMGFss
BHeH2ZHlxKi8ETh8TgZZXgwdFR2e7TWyghhhDa87/fpQfmqEGCtWdO9PX0BW
EWPCg4pz5TzyWDEMR67IeH2S9deJcX7Wyx3aP8iaYuRn+0UJZlG+TFuM1BOv
/vQGkqeKsX+Ret9dJ8m6YnxrnLB7SxdZX4yN9sqD7BdQvs5QjKrctIOCWPIC
MbIsDwz4fI0MMRL2rX+2cxjlA83F8GyuGC6xJ1uI4THtv3NN+8iWYpjqcsZE
fiZbiXG6sOF+1TjKR9qK8X5cpuC7OctXivHH4P6QFm/yRjHOxCTzhNtY/lKM
12Lj9x1VZBcxhuZ3FIx7T/YQY6/Tu97hIyif6i1G4RtJ5MOFrJ9OjI8/uZWe
3uQgMSzrur0f7CDzpK9/MytkdB05UgybTxn30cn678Q4y5tcbDmZ8sECMQJv
inTN7MlC6XwPkGvRSSGnibGq47PZgAtkkRizF3xRet5BzhaDv0FL9/Qkylfn
ijFy+Pp92zeQ86Tj/5i9J0HC/r24GC96xElJN8hF0u/fxsvvC/uxfLo0vqqO
uJdG5BLp38vGYEkYy6+LIa4LNGk+ST4hhi2v4/GB7yzfLkZj+vGU43qUzz8v
hklqrnKfQNY/J0bnQHB3nyDXiKFUv+OquJNcJ8auuzkxrfOpnlAv/bzcnpjl
xZIbxGhV9v9VU0d+IMZyl4JzbopUr2gUo3dUSXfKBnKzGJe+VKyff4DcIkbD
5uzbsT/Ir8WIkL+b5mFG9ZI2MY6kJSn/ziJ/FKPoi6ehyVtyhxgDvKrll86j
eswP6feD6987VkTuEuOC97DaunfkP2LcHP4h2N6E1X8kMDDRCWjMI8tI8ETz
aeia36weJIGJ/qjdzeuoniQvwV8nRfuIc2QFCUZX6oYuVKN61AgJ9s1Vn2aQ
QFaRILu5cYj/J/JYCdRe71X8s5bqXeoSeNXLbH9XQ9aUoFd43MVMn+pl2hJ8
il11RG0/eaoEE+wMZNNHU71NV4LoboW4PDFZX4KHB7RvlPanep2hdPzPFko/
zMgLJChY6bC0KJ4M6d+firt3vYZsLkH+R9uVvrJUL7SQ4Mohg5xdy8mWEjTk
br2wQUy2kiDP65/CmUayrQQ36kWjqiaweqUEO1IaRcHe5I0SiPN6gtoryY4S
jF2/8/tkWaqHukjg4JoTMHct2UOCBLOktCmHyN4SbHj1YKhsL5krff8Zvp1N
q6keGyTBXeURAeWHyTwJ1v6Z9HCHDNVzIyVYdKEjP9+RzJfOxxI37xtVZIEE
r04Y/J2qRvVioQQfudC5F0tOkyDpmt7D2rdkkQSZL4J+jFpJ9ehsCcw6xkTe
O03OlaDW89v6fppUz86ToCg/yO+0hPXPSRC5+lhkTz+qjxdJ0J72alxzKOun
k2Di5TeVrp/JJRJ826foV+RO9fYyCVovVMoXtZJPSHDO7d8vPyeq11dKcOfw
31FKr8nnJTi+d+T17R5U76+WwNVwxTnZDnKNBIEl5c+2hlO/QJ0E61zTTepl
qZ+gXoJTV9b8mZFLbpCg9IONbP5/1I/wQIL1O+6MVblMbpSA4+6w9N406mdo
lqDSzkt1YiS5RTofM2SFPTfJryW4vKeyZNM46pdok2C+vvq2xVzyRwk2Vlz5
r6KG3CHB8rNp4/aMpn6MHxI8PjCsSiaA3CXBHJ1j7c03yH8kmPG07OP4Saz/
Iwv2vIj11XyyTBZs+st1nXjG+kGyMMX6Rc7n+dRPIp8F/W93fm7cRVbIgt2O
soJPPeQRWfBRTGpI3UT9KipZOOMWbqleTR6bBZ11MpZiDep3Uc/CXY3X6y8n
kTWzEJDmtDD7I1k7CxYnBK2vramfZmoW/Fofm2SeJutmobhvmt3WcdSPo5+F
OvW8kSvjyYZZ/1NPdBv4nrwgCxrlptreK6nfB1ngCLcZmlaQzbMw98wfoe0o
6heyyILx0ChDz3CyZRZufCupNGsmW2VB63jZn6IF1I9km4XDY9vLl+9i/UpZ
eNt0IvlHJ3ljFpwfbIpZv5r6nRyzYH52tZHBYbJLFjJDV0ab/SN7ZCGkfGCM
gTX1U3lnodX+BO/mHjJX+vlrGmpWtpODstD9rtf89Ezq1+JlYX7i4bmCIHJk
Fk71kRU3l5P5WUi5O3gv/yNZkAWZwQ/H6U9g/XBZGLl33LEqK3JaFpYa1oZ/
DGf9cVnY8uTlqYw95OwsGBVcHxdZxfrlsiAxu+sifkzOy8Kz6Vt2H29n/XNZ
eGoTmlbL+uGKsmDKb26p/vtl4f8DxHpNhQ==
     "]]}, 
   {Hue[0.37820393249936934`, 0.6, 0.6], LineBox[CompressedData["
1:eJxV3HlYTd37P/CDogiZI0Mo85CIRt4RiqiEBqS5NJ7muU7DqXOqU2eIIhRC
IUKUIcUTMkTmEDIlNJGhTP36Xp97/fF7/nmu17Xbrb3OOnvvtdb9zkQnv3Wu
vTkczkc5Duf//v+//9qX/P//56DhfMvxv2+ayQrQUPjxbeXmRrIyZg86FJ68
uIE8HK4aY5q1Y56QVbDV5NoTrtU98ljcW1A6bpPBTbIaBj/+7+NppyryJKTl
OFd9XVhJVsedErPTQqvz5CmIeAjb3Moz5Gl4LtgddHfJKfIMnLylumxUvxPk
WUgy3Dri0PEj5Dko3NXWJJp9mKwJ03V/3ltZ5JPnYWavkMK7X/aRtTD+ozjc
tSWXPB8N+445zdm+m7wAz83naA+4uJOsjXtGEm/tVVnkhVjgJtgya/Z28iIc
SPmbv3WjjKyDJWM1i3XPS8i6yB379Lm3uZish8P8onsvx6aT9XFp+vuieW9S
yQYoLXSuPP5OSDbEqrmTNVtVBeTFUOWXzGzmJZGX4PbtLxeqBvLJgHbOQrOY
8oT/mQfUpPi6vUqNp+NGWH7Rsv+a4Dg6boS7zwedOBHCo+NLEfjjyJfzY2Lp
+FLM4n3vP8Q3mo4vw6Lyv58d3kbS8WUIDf+qMjs0go4b49Xy52fdp4TTcWP4
efaFU2soHV+O5eYlzRW3Q+j4ciTGdpt7VgTT8RV4N/73leSqIDq+As+WGJsF
Pguk4ythtXrqlTPdAXR8Jbpz5L52a5E5JhieJNmnEehPx00g4MStGF3BpeOm
OHwo3LppBJlnik3OZQbcFl86vgo1LZx2/mUfOr4KduMfvz56yJuOr0bU4RCn
PTledHw1LpzNtZmf60nHzaBc3zbcsXgbHTeDv+5Y4bw7HnR8DV7f0X5U9dOd
jq/Bw1EbJqydReashb7b5aNDvNzo+Fp8CZ8w2/m0Kx03x+ti7+X5cmSeObwt
Mucts3eh4xa4Y7N617kK5/8ZFiiR281PnUbmWaBZb4brimyn/7nSAu+irhjy
BpE5ljiiqvv+cYojnW+JKx96r29TIvMs8a16uUJwpgOdbwnue4+w0RPJnHWw
HP94ylTXrXT+OqQv7Nq1WGJP568Dv2SI36+rW+j8dfjiqmD0rjeZY4Ul+1tj
RCs30/lWyNhYfjNdtonOt8IExYneyY12dL4V/g5svDMWZM56dOheVvqVa0vn
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
ebh8GerXl3oXF7Qu+X90Zi+N
     "]]}},
  AspectRatio->NCache[GoldenRatio^(-1), 0.6180339887498948],
  Axes->True,
  AxesOrigin->{0, 0},
  PlotRange->{{0, 1257.}, {0, 1}},
  PlotRangeClipping->True,
  PlotRangePadding->{
    Scaled[0.02], Automatic}]], "Output",
 CellChangeTimes->{
  3.5606441160823755`*^9, 3.5606443233188076`*^9, 3.560644382333048*^9, {
   3.5606444693978004`*^9, 3.5606445476771946`*^9}, {3.56064463637895*^9, 
   3.5606446399045563`*^9}, 3.5606447163164907`*^9, {3.5606447906727824`*^9, 
   3.560644812278946*^9}, 3.560645036774691*^9}]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{
  RowBox[{"Plot", "[", 
   RowBox[{
    RowBox[{"Evaluate", "@", 
     RowBox[{"Table", "[", 
      RowBox[{
       RowBox[{"i", "[", 
        RowBox[{"r", ",", "delta"}], "]"}], ",", 
       RowBox[{"{", 
        RowBox[{"r", ",", 
         RowBox[{"{", 
          RowBox[{"0.1", ",", "0.3", ",", "0.6", ",", "0.97"}], "}"}]}], 
        "}"}]}], "]"}]}], ",", 
    RowBox[{"{", 
     RowBox[{"delta", ",", "0", ",", 
      RowBox[{"4", " ", "Pi"}]}], "}"}], ",", 
    RowBox[{"PlotRange", "\[Rule]", 
     RowBox[{"{", 
      RowBox[{"Automatic", ",", 
       RowBox[{"{", 
        RowBox[{"0", ",", "1"}], "}"}]}], "}"}]}], ",", 
    RowBox[{"PlotStyle", "\[Rule]", 
     RowBox[{"(", 
      RowBox[{
       RowBox[{
        RowBox[{"Directive", "[", 
         RowBox[{"Thick", ",", "#"}], "]"}], "&"}], "/@", 
       RowBox[{"{", 
        RowBox[{"Red", ",", "Green", ",", "Blue", ",", "Orange"}], "}"}]}], 
      ")"}]}], ",", 
    RowBox[{"PlotRangePadding", "\[Rule]", ".05"}], ",", 
    RowBox[{"Frame", "\[Rule]", "True"}], ",", 
    RowBox[{"ImageSize", "\[Rule]", "400"}], ",", 
    RowBox[{"Epilog", "\[Rule]", 
     RowBox[{"{", 
      RowBox[{"Table", "[", 
       RowBox[{
        RowBox[{
         RowBox[{"(", 
          RowBox[{
           RowBox[{"Style", "[", 
            RowBox[{
             RowBox[{"Text", "[", 
              RowBox[{"r", ",", 
               RowBox[{"{", 
                RowBox[{"#", ",", 
                 RowBox[{"i", "[", 
                  RowBox[{"r", ",", "#"}], "]"}]}], "}"}]}], "]"}], ",", "12",
              ",", 
             RowBox[{"Background", "\[Rule]", "White"}]}], "]"}], "&"}], 
          ")"}], "/@", 
         RowBox[{"(", "#", ")"}]}], ",", 
        RowBox[{"{", 
         RowBox[{"r", ",", 
          RowBox[{"{", 
           RowBox[{"0.1", ",", "0.3", ",", "0.6", ",", "0.97"}], "}"}]}], 
         "}"}]}], "]"}], "}"}]}]}], "]"}], "\[IndentingNewLine]"}]], "Input",
 CellChangeTimes->{{3.56067645862833*^9, 3.560676460828333*^9}}],

Cell[BoxData[
 GraphicsBox[{{}, {}, 
   {RGBColor[1, 0, 0], Thickness[Large], LineBox[CompressedData["
1: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
sP8HxVGz2Q==
     "]]}, 
   {RGBColor[0, 1, 0], Thickness[Large], LineBox[CompressedData["
1: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
     "]]}, 
   {RGBColor[0, 0, 1], Thickness[Large], LineBox[CompressedData["
1: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
Ffz//0v+H/5cSJ0=
     "]]}, 
   {RGBColor[1, 0.5, 0], Thickness[Large], LineBox[CompressedData["
1:eJwUmnc81f8Xx2XvPe61XSule22yzsnK+spKyoqGyM6IrChpyUohEhkRZUXJ
zEqSokKTbCIySsnv/v66j+fjft7n8z6v1znv876Px5Xy8Lc9RktDQ/OYnobm
/590zax939RT9Jf3rG1tbS2C7EyTjniaP3Ta3KKfil6EjYeUo8OpMTDzKE5o
hXcBKtfgLU/FBXDV90gz/zUHE/wnfj1KvQZsYa3jceEzcIXYzVHRkAZ+Ljcq
wkcmoWi7822aihsgrdxUOWc5Di2aP5Ts8rLhUs3LwyMLozBicq6tMPU2/FEJ
W3p26wts7GDfEdl2B1xqju2d+/QBLqi8CypsKIBAnzcmjdlDwK+d19BXUwj/
2R/c09nzFu7s8ab/VV4MPKwjK74uA0A2U/tPqvgesLbVSoiZvIYG63/XzfPK
IEHzaGr6jz4wdez+fCqzHAy84yO6Xr+At26p8jmpDyAnRM6/XfQ5VKqStb51
PATzZOMF99ZOCNNM+xjWVgmJatePM1e1g77Or1j25ip4dINe2eFbG9CDi+yd
hmpYMrT16bJohR6Dtufq9TXQEHvfo6+zGVJM5P16amphV1x+rNDeRnA0v8Lr
VvkIhK/veaXN0QDiVkuPfpbXgfhMjlwf12MYt3FwSiyth51Nge6fTeqgbH/D
lmjxY0jiTpJ5UFYLQQcl71YWPIHDAv90E7RqQMvlvKlJXgP8NTCIiZ2ugn+H
Z+dHbj2FscYwT7+6Sug4ui/FP7MRFrnDmevuPIQrJ2rU6TOaIO1krmas6QOw
9SGO3ExtBtJ2/4ia0+XArgXNGXtbwPvDgKD7qzL48TiQZ7SjBQ4OLoiEmpbC
gM7dIzuNWuGa2ELj8a8l8KjxXW1IWyuwDHAfFkwvhkxgYW7BNvhP0fx+9+Ei
iGzVOcTa3Aa8w4EUfqNCMOzI+5fb8AyUNL+77jIpALm9A9Yzu9sh3vW8gpd7
PrA+ZyhQrW8Heh0FO7Yrd+C7udZqlEYHsHy3bW1sz4P+Xu+93TUdkDjRDFas
eVBtlZPJq9oJBXzNaF+XCxn9r+acKzsh6PnwbI1/DrgMqiUvlXeBuzCls0Q4
G9DBc0xHsRt4aOcBWLNAZihTLaG0G7aYt9FEsmTC7Id/Q8LFz4EvHrsdVW7A
Sxflncdke+Dm7/C5pYMZ8PDLkagHBT3wnp5DRvzqdQj71i1llPcC4oTLy5j5
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
de10k+/ydPz//63/AN+jYco=
     "]]}},
  AspectRatio->NCache[GoldenRatio^(-1), 0.6180339887498948],
  Axes->True,
  AxesOrigin->{0, 0},
  Epilog->{{
     Slot[
      Style[
       Text[0.1, {1, 0.8980646319752139}], 12, Background -> GrayLevel[1]]], 
     Slot[
      Style[
       Text[0.3, {1, 0.639838193347657}], 12, Background -> GrayLevel[1]]], 
     Slot[
      Style[
       Text[0.6, {1, 0.2248336548312542}], 12, Background -> GrayLevel[1]]], 
     Slot[
      Style[
       Text[0.97, {1, 0.0010081621630757798`}], 12, Background -> 
       GrayLevel[1]]]}},
  Frame->True,
  ImageSize->400,
  PlotRange->{{0., 12.56637035790263}, {0, 1}},
  PlotRangeClipping->True,
  PlotRangePadding->0.05]], "Output",
 CellChangeTimes->{{3.5606764639743376`*^9, 3.5606764883236485`*^9}}]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"Plot", "[", "\[IndentingNewLine]", 
  RowBox[{
   RowBox[{"Evaluate", "@", 
    RowBox[{"Table", "[", 
     RowBox[{
      RowBox[{"i", "[", 
       RowBox[{"r", ",", "delta"}], "]"}], ",", 
      RowBox[{"{", 
       RowBox[{"r", ",", 
        RowBox[{"{", 
         RowBox[{"0.1", ",", "0.3", ",", "0.6", ",", "0.97"}], "}"}]}], 
       "}"}]}], "]"}]}], ",", 
   RowBox[{"{", 
    RowBox[{"delta", ",", "0", ",", 
     RowBox[{"2", " ", "Pi"}]}], "}"}], "\[IndentingNewLine]", ",", 
   RowBox[{"PlotRange", "\[Rule]", 
    RowBox[{"{", 
     RowBox[{"Automatic", ",", 
      RowBox[{"{", 
       RowBox[{"0", ",", "1"}], "}"}]}], "}"}]}], "\[IndentingNewLine]", ",", 
   RowBox[{"PlotStyle", "\[Rule]", 
    RowBox[{"(", 
     RowBox[{
      RowBox[{
       RowBox[{"Directive", "[", 
        RowBox[{"Thick", ",", "#"}], "]"}], "&"}], "/@", 
      RowBox[{"{", 
       RowBox[{"Red", ",", "Green", ",", "Blue", ",", "Orange"}], "}"}]}], 
     ")"}]}], "\[IndentingNewLine]", ",", 
   RowBox[{"PlotRangePadding", "\[Rule]", ".05"}], "\[IndentingNewLine]", ",", 
   RowBox[{"Frame", "\[Rule]", "True"}], "\[IndentingNewLine]", 
   RowBox[{"(*", 
    RowBox[{",", 
     RowBox[{"ImageSize", "\[Rule]", "400"}]}], "*)"}], "\[IndentingNewLine]",
    ",", 
   RowBox[{"Epilog", "\[Rule]", 
    RowBox[{"{", "\[IndentingNewLine]", 
     RowBox[{"Table", "[", "\[IndentingNewLine]", 
      RowBox[{
       RowBox[{"Style", "[", "\[IndentingNewLine]", 
        RowBox[{
         RowBox[{"Text", "[", "  ", 
          RowBox[{
           RowBox[{"\"\<R = \>\"", " ", "<>", " ", 
            RowBox[{"ToString", "[", "r", "]"}]}], " ", ",", 
           RowBox[{"{", 
            RowBox[{"Pi", ",", 
             RowBox[{"i", "[", 
              RowBox[{"r", ",", "Pi"}], "]"}]}], "}"}]}], "]"}], 
         "\[IndentingNewLine]", ",", "12", "\[IndentingNewLine]", ",", 
         RowBox[{"Background", "\[Rule]", "White"}]}], "\[IndentingNewLine]", 
        "]"}], "\[IndentingNewLine]", ",", 
       RowBox[{"{", 
        RowBox[{"r", ",", 
         RowBox[{"{", 
          RowBox[{"0.1", ",", "0.3", ",", "0.6", ",", "0.97"}], "}"}]}], 
        "}"}]}], "\[IndentingNewLine]", "]"}], "\[IndentingNewLine]", 
     "}"}]}]}], "\[IndentingNewLine]", "]"}]], "Input",
 CellChangeTimes->{{3.5606765015056667`*^9, 3.560676543493726*^9}, {
  3.5606765927797956`*^9, 3.5606766615958924`*^9}, {3.560676761100033*^9, 
  3.5606767743970513`*^9}, {3.5606769610003138`*^9, 3.56067697249133*^9}, {
  3.560677085108489*^9, 3.5606771738956137`*^9}, {3.5606772239676843`*^9, 
  3.5606773867079134`*^9}, {3.5606774327269783`*^9, 3.5606774455289965`*^9}, {
  3.56067755437715*^9, 3.560677574276178*^9}, {3.5606777008954315`*^9, 
  3.560677753207505*^9}, {3.560677793267562*^9, 3.56067790549572*^9}, {
  3.560716809121153*^9, 3.560716822718172*^9}}],

Cell[BoxData[
 GraphicsBox[{{}, {}, 
   {RGBColor[1, 0, 0], Thickness[Large], LineBox[CompressedData["
1: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

     "]]}, 
   {RGBColor[0, 1, 0], Thickness[Large], LineBox[CompressedData["
1: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
2BTxSuNsq2kNNv7/+5v/A2/TWqI=
     "]]}, 
   {RGBColor[0, 0, 1], Thickness[Large], LineBox[CompressedData["
1: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
msWEUbLzc9dhzMeVc/Q2xIXR//+f7P8Ah/TPdA==
     "]]}, 
   {RGBColor[1, 0.5, 0], Thickness[Large], LineBox[CompressedData["
1:eJw1m3k81N/3x+1m7PuMVikSmrHvnEt2IhKRfc8Wsm8JCZUQUtmyS5KliAjZ
k+wfQmQvsmRX8Z3fH7+/3o/n433nfc8953XOPeePOWV7w9CBgoyMTJySjOz/
npQf6HpmJG8rhST8Ozw8XAW+Hw3yJx5ZwSbZzLLx5CrsvybajybdgBfvSwg/
wlahfBuGWF/5Qy3nUr7gzArMcTjvvk26BTbP+7C7bCtwn7uD8VVdJHCMFm59
4/oFBQLmWWSv7oL2w/MV+rtL8FU9qjk/6SFUNUTHxwT+gH1BBsGQ5kRgjN7Y
8BFchLtiw975dY/AIIbK5tbXeXiu7EK1W/oY8Hb5XOu6s0DQkrh4qvAJ3Jax
1mvnmoG6Swcp2tnPINVqW2ty5TsMWSWdzUjKgl8s1cXd6ZNQLk6QmWnNhhjV
tU0onQB/6Ufj/s3PIWzo4/zviTFQkt8NZ/iQA9aGXfYL578CFVjwPa/LBeGO
yO8fn41Al0pzp2RNHvQLPPu6xfcfJKqf9eiqyodjN6o3PnUNwQm99bcbpYVw
rJhtwttiAGYNjK/FvCiCG3OjM6Ma/VBype7wWGExCF2KMDul3gfepjx55bkv
INL7l16zcS/IWNzRVM8uAdPV5qlnaz1wYP1z+Wv6S3Cc4hgdN/wMrfb6iTee
lMK/gLiez32fwNCN+2taUhkM7vGsdh7rBAYZ+JCq8RqObO2ydM+2w9o7L9bv
ra/hU01ErWNTGwzI59kJqZbDR4mVgf3XrfC2fviNb3M5TFaef8pQ0QJPAItp
RBWgbxDYgT5+hJAmeTO6DxWgyZQzbTrTDBdasw8y6yqhyXT+VZdOE/BrDFz6
IVsF/A6xkvxJjUDXSZ0rXlMF7Rq+5wbbPkBvt4tGR9UbUDyalXtMox4q9TKe
sIm/BX7TkkM23veQ2vtlybz8LZzj6LAHxjqwGJRIWC+tBtm9COV+5neAjJ2m
5YVrwDK0eUWBrwbOjDyRiH5RAx4HOazT6tXwc+xg5EjhO6gtTPCvKHkDny1E
hRz4auGWCdXojV9V8HrSLrQstxbOOBorxcpUgf9MxynV7Dr49KtDJnKxAswc
/tyMP/EePIpUra/qVoDSwvm2kfT30Oyc9d2zuhyolpJc3J/Uw/znu9rvnr+G
BbfW99W4BlBeWVjh5XkNXSs7TBSpDTBVfvRqlGYZJP42r0xN+gAjFaIqNQGl
8IDzqUIjYyM8/CVo9uLBS+gvv3NS0rARLgtlrCmUlsC1n+ZzJ8YaYeO24sEg
9gVkR2t2PDrZBPSNtrgGtWKY5ZUowdg3QeaBiQxjXBF4XKP3+r3cBDq5TrFY
wUKo3Nm+7CTaDF7Rr2inogpg99G01LhvMxxXpt93n8+H293v/rYeNINV8lya
zvs8SFZ0jnnC0gLzMDUc9CIHRkcvuzJdaYGl22rmumI5cMIP9CKftIDk+MfD
+w3PofAVF4c7byskvN3vjZrJhmVtip3vjq3gtdtrOhKcDSILv0aNS1rhahXo
DOCyofZkaxaSaINjmpy9QlWZcFD3OuJNQBt4bpc4HifLhAtX0x0E69vAqyui
/JRhBnQn3BTiUG+H4zf2ZI1o02GSnLd6waQD6lli9z6UPYEzmYxPzdNJrHvK
PZbvCTjL7YX0TXXA5N3PshlZafDbu1el7noniJwqS9nIegxUs2E98cFdYCMc
MXPQnQJa4S7llI1d8J7twq1S6xSIP2acHED1Cea3XcgCd5IBd+W8me2DT/DQ
6nB99XwyCLaNzUlmdcPzytCTznVJcMO2vePFTDfQs8W0/LNPgqqDipKTAp/h
8t5NhhmWJFCUjvPCln+GaCVmde0biXCpSObfeHMPkH3diQ5WTYAU1TNTBrRf
QFv5Idfq34fwdYr5Y5vOF4i/CfZOPg/Bjnsh5vXgF8A5SOHs3eNBvlWbTuVm
L3BoV75Mj7oPLIMFX6Qf9QIl3ZllPu77MDtNkXK+shfI4jV66F7fg3iyupPc
G71wPPeGTs5sHEzLC0muefdB+M+IK2pOsVCtfXd/LqkPREfJz8wyxMJ905kP
YxV9gKXTobWrigFJ/2fa7b/7ACXnrndjYiCmgt4607sfbG6V3PnbGg0WTU58
yUn9QD85PXAhMBrEej/+jK3oB1V8XiYjIRrGfwX7+v7uh9f5u0Nk6XeAeG45
Ttd7AJZpVR2sY6JgOKv7zb7XIPwcOCLc+CwCSl4JBK8lDsIDEWeho3YREF4f
hebLB2HXOelDgFAEnBtT+NS3Pgi3P9zyOf3hNoRwlU4VeQ3BIWeg4eP1cDDg
wxZkJg6Bmr3wgkNjOPBLOLgmlw8B84/MXbqEcOg1OL59a30IyqN8bFtFw+H0
gwf0Jl7DAMK+xbt/w2D32Y9e3cRhCHx5L/dfQRh0v1BLVSkfhu48I9vrhmHg
1/GPh7A+DGtu8t7GpaHQRekhRe31H4BWznqtdwh4BunZVHqOQGHkoNW8ZBBo
eygUYRJGIJCsh9t9MxBO2wquWpSNQOjq+K2flYEwrEUTilkZgVdSxRJvJQNB
kbshzcJ1FNp9RAdYVQOAruZ8L63jV/hO08kpGeMHsyVHcRZ3voJjQ+jFU0Z+
0JCFtazI+wrywvrxH3n8wOvu3JL5zFewm3/Jdvy9L4wYZ9BWWI8Bw35BRPe+
D+RvMYD5tXHYcusMfJxyE8J+7N8pDxqH2ZF78rdcb8LVicVumqfjkGhyVHpN
+SYwtLaYlY+MQ518dp79mjd4J4f40RhPANlnz1uml70BiS+Xvr70DaZbVgSL
iV5w5OzXTWrPb3CeHdN6ltELNo50yF97+A1ENewamZc8oYAir5O65xuceZsg
w1nkCYz91+bMdCZB7erL2E5+T3CvcYinOD0Fiu2v/nG5epDubwMecokpMBc1
vHEo7AFrowoVh6pToCXYIl686g4+f9iH/zpOgRnZuYsS/u4QpNR8fOfFFCQG
+FwZineD6JYTpUti3+Fhceu34QkX0LxCBz8vfIdVPqWZsBcugJ3f6l00+g6f
dYK56v1d4D7t5805v+9wM/7U/m92F3ikHawwVfsdZMv982kvX4fs3v8+DapM
wyMOhmGGn05ga/PRYuDyNIj3lnAe/+AEp3+/Wu2zn4a5rqmm3GQnKGCPZv8S
PQ1HWtZzGJWdoNRY4lpn1zQwhjhQ8Gc5Qu14ws96wxlIlOokctxwgMFFLWyh
7Sw0ZH/TizKyg9UnAmqR3rOwljcaVyxtB6S0vG0VMQuVcDKY9agdoNKWXVzO
LOQeV9cqmLaFEi9YjPk+CyGiR/Y++9hCxL5Eu4v1HHyk1B/3yrOBjBJ2Sg3P
ORD2qGpzvmcDNea/lU6Hz4F/+69fqd428Kuh7O1Y1hwUDHl5pCrbwNVIwQLd
yTmQtCvAsU5bA5GB5w7Bch68qNg5bgpbg3b9QSOdxzxcDJ5sT+WyBnuPib/z
ofMQweqQsUhmDU97n/pkZcyDnkLllXMvrYAmhdOeZWIekj2Oy5FTW8H4cfoL
v68tgDl9jc2tNguII26TvTVdBEW1tOGeiGsQ5K8lNO+yCDVif6PZLa/B9Q/p
V7hCFsHeLd43X/YaaOpfeOGXuQg8bIsVpetmQHsj4bL0zCIcTeP7T8bBDKJe
CRbUuP2AeOfv5PdNTcFnO7R3MfQH1L0veacmawp2Sn37+Ic/IMLVOBxxm4JK
j79+YPkPOGvpf2d79CqQr7Tsym7/AM+e93sGllch7LyVTt2tn6C7/W1Q1tsE
PHwrfJcSfkKadnlt9RUTsKinzj6a8xNsRuu/uMmagMLFl5vBLT9hMM/0chC5
Cfxx28tQwC6BpMyvKvZkYwh4+WitPmkJnjLQ73Q3XwEvoY6Uxvxl0FzR6me9
YASzDrPh2W+XYdpO2mhJ2AiMs8ncwtuXwcv9xegSlxHIccqqoB/LEPk1Jsp6
6TJQHBavfBD+BYxPGIqZUi9DUv89jQ+Vv+CVzpER8d+GUBGov1fftAKdz45c
DftoAGeqXGcz+lcg2O6m+dNyA0hdufsllNSn302X6hzIMoAgu8Z8RepVoAhU
n8gIMQCVi6KG9ZqrcLFg73iMtAEM8LCXvP+yChKOfx+GV1yCfTvXVxMea9B/
TuTNnp8+WLNuBLz3W4PsYheB3Gv60NoQdOFZ2BrwfMpZvYn0IYE7buRq/BrY
TnlciqPTh7NfiigGS9eA+ZWbZUS2HhjJzRt3La/BycqiXzYDF+EVi83hW5d1
IEh6qbFe1gWOhsXOFO91aDY9feyUgi4Eunom+wStw3dxfYFLfLqg2nbrnFjc
OtTlKVPQ7+rAWHDm5dLidRg6MvXhV6YOYBbGCnMX1+HeWVZq2d/aYFtvfCnB
8Td8XTYejivVArG3eDbuG7/hbGhHdnCaFlCUfR147v8bbBSPzcdGakFOtqVJ
ZcxvoKl8jD0w1YLpSEfL4Re/gekBxaISRgtstf3cjq3+BkvJ6nPb1zXB9r+U
mCL/DZDFn+35iTRI96WJtmj4BkiwvlwQJGoARSc3Q23MBkR+rkuKOK4BObUZ
Dz892YBSlrB9/311mM7IT12p24BNv9FXfm/Uwdb+TZ4E2SacpYmqek5UB7v1
wcbGmE3QKk9ZfCWuBtZBCSY1CZsQUKnomManBuaUuitlaZsQqEu8k4RTA2PO
j0ezijahUEpMueaPKmjKlvuFdmzCs3Oim20tqkC4/UBYDrMFpohza8xUFXZZ
1NMq725B8H8Y7IWHF2DzCTmx5OEWPFVw/swWeQHWeetbcx5vgdnJfrM1vwvw
U0JiI7FwCwQ6vcIHLS/AxFVePc/2LWhMzuxWIl6A5uwDyvO023DtUeu9uH4V
uC9SfaMgehs2DlZfh/GqQJfYf/O+8dtQFzn4AI9XAYzkjoVa6jZQH9W9Vc+o
AlGy0rqz+dvAvh1vJ7CnDMEq1QK8rdsw8Ew9IbxXGVyMqr9nUO4Av5RTy/nb
yqARUH05JXwHvjuJDR75iSAq6L8u+5gduF12deDPFILmkB1liYQdMLMdEZ3/
D4HSbWmRgawdSD2LHR9uRSAVV83A+mEHvo0+ecSfg+BMenXr/X87QHGX94Kv
OQKKxmrpqKBdWKIQIVKUAbxgZCv4F7ELRQeng5MyAAyvuXH439sF8bpLSZL3
AXK3edavp+/Cy7mM95XXAVTPx73Qb9gFntBklQd8ANFPzY8fpdgDjbWlkqxs
JaDzJaesiN2DLU0cRVauIlQ0X/MSStoDdy7fcLNkRTBjeTuZ93QPKq3bf/Dd
UYSSEpf3j0v2oHuHRmjZURF0pwd8Qz/vQdCFe0QJIUWI1y9Y1GTdh1X73R/Z
bxWAVVCnZzJtH3yX8hecR+RhnjaLtSN7Hx7bNP/3/ZM81M79NnpdtA/5/erp
jh/kwf7507Hwmn2oCD10fVQgDzX4n4unRvZBh2v6ZYCvPFjSxlLa4/4AVn9Q
0JFTHl7OtskspvyB7guapT4WcqCZpZK7lvQXhLSuvx2il4W7Hb0TEc/+gs/l
xmQmclloW7fEc+b9BYz/6X2DbRlQUw1+IPvmL5yXrDq3OyUDKj8q/SP++wve
t6I+N76VAQVxPl2OY/9gm2i+ImMvAyLttFvS+f+gh09bw69NGnCr3eq3qg+g
pfDLtfl8KUhL/GDz48MBGN927XiUIQV4iYqQyx0HoKXJ8UMzhcSBjyvOjh7A
Le1x/q4oKThCaXuid/8ARvvGas7aS8EJ3M4Wj9IhzBMKwjTPSAE/nMpvbjmE
ngmr38vFkvC0vZac8joZcoN0ZtVOCVibeh246kaGVH4I2OE/SoDGfsH6mCcZ
UqfN2Fh/LwGbwo++VwWQoedZ6zVVryVAL8m1yTGGDO1xRBgHpEkAhcWx212F
ZMjb+MTehrMEuP4OJUuaJ0OjAZmDmYwSoHBc+ZDHnhxtcr88OWMvDprmg962
zuRopngIF2QlDkbPnOZz3chRo84DZi4zcXDljv/M70uO1DX8ls31xeEp59gz
4WhylLzGNscnJw67jL4yMkXk6ND6tuBzFnHSfFPkpb9Mjk56Ns3wNImB0BTL
bKgPBZoV9pbwIYqB3gJPs18ABXqxzXLFV0gMPFdEsm+EUKCQk1yUQWfFoOrv
JXObKAo0eVn034OTYqDAnTiomkyBZMTsT08xi4GuIWsrfRUFEsEqMguti4Jb
C2vBkw0KpMq2U639VhTiP52KStqhQFFK+wM1FaLwul/U9t4fChSb2icqWCYK
m1MGJ0IpKRGdn8oLriJRCPmXmGrNToli/+UbcD0VhftSbHfPilOiRIfnma/C
RKG0iM35jTcl2j8MGpLQFoWooQ/KlP6USGBW7cJHdVEwp3A/ahBMieqyw6Wv
XBAFOvP2nuVISsTdXVMcqSAKjswhkmdSKBFxhPYmHVEUePzmKB5VUyKxxY7E
eg5RSL5Qk+H5lxJlPRGweTEtAq6eDv4NZFSIzKtAMn9SBFQy2AwYqKnQgdVX
rdxxEVjfdqMqYqRCHLY654qHRUDvxSnXyRNUqNJN5v5YlwhgWO/J6ClTISfD
04KjlSIQ8s1iQCiaCrkJf74vGCMCmxqKGQ5xVEiwYW045Y4IuJUfc8qKp0Lm
o0exVJEicC1qbJ/tMRVS5mE5+SNUBOQETXn3C6nQpnTW7NBNEdjzNfLq6KRC
0Wpf/WSsRcCPUYfZgZEawWthQZy8CKz4CY5mslIjXQps8LiMCDhOYXNHOKlR
iY1QVJ6UCBhXdkjpnqBGmOt97xTEREDSVN1SnEiNyEN37z84R7IvT7mU3IAa
dS3llJThRcBLQUYnM5ka/XRMXhhdJwKZR/Kth2nU6FD04mu9FSLEZ61VhqdT
o1JCzGr7TyK8oCg+ZpdHjSxPC3a1zxBhuoN75WwVNZLhl6r/O0QEoyt/EsoH
qFEx4yt6uToiSHk0DLew0SAf3wDT7RgitGQdoX/LRYM4yykebd8hgmGfHxQe
oUHaJuyMfyKI4CFBLIrlpUGNcaXvWUKJULifFagnRoOwrkmTHl5EwN+9fWzE
gAbd2Vb5uWlGhP0sVdulBBr0ngEpnRAlgtKOYpJoCg1STOm/7UEgwm096Wb/
JzSo1Kww4aMQETD/zvFS5dCg6uJ2bAg/ETjNmKePVdIgEQ0LJf5jRBDh+Gqj
N0SDAheiLS0xRLjpOpCYPEqDKvq4s/apifC2ubvp6wQN8mOlf/SMkgiKXh9O
Oc3ToI8E/4dLBwTQ7sn7fmuHBvVJn6z6uEUAh5gbNuXctMjqr0/k5VkCFE06
J+4cp0Xi4tNX5aYJsCxl26TIS4vsKKu7+aYI4D1ndKpLkBZ9f1QfRzdOgHAV
ue/T8rRIdmBeiX6QAE//UtlwWJLW03JFL7YQoNfzqbV/Di1aeYvnoH9BAMEE
lj8+BbQoI9zVMaOIAJFl0SneL2hRtJ9WjnghAaRWvLvcK2hRe/eXAdc8AmS4
6kjYN9Oi0QspdPRZBHBx/EtrME2L3tuxilGlEKDljneO3jwtAgm67sFHBDie
v6ig+5MWqWgeUStOIu0/M+il8ZsWhc8J9FskEEDapnRMkQKDjnDQa27dIwCV
uWWZIC8GXWp/dW4ikgCWwYNaAvwYdFH8t/dSBAGqn2rP8gliUO6VgaR/t0n7
j0pxnxLDoPSSZKPz4QToM2aOxKlgkGFx7EBtCOl8fneOc6pj0APZ060LwQSI
SvlTzaaNQTEVI7F4EssMLiwzGmLQP4E/cXcCCZBp0GhMZYtBBR6qNg/8CLDr
KbVO7kiyj354asSXAIYJL+8dXietPxEqIkBi6i9pjfteGFQy91Kp/yYB3HS9
BNdvk37/wJHRyIsAba4LLSt3MOjTEReqBk8CnLxnYbUci0GJCjsdQiTu79RK
XkjEIMqY++/YbhBAVoP3YOI5BgW2nRJlcieARG5XTHs+BkUbH46nuRGAcOjN
Xl6MQcSdB4SzJOat/igQVY5B8Tfnm/RcCXCM3a3S/Q0G9VVqUi66EIDrBoeS
yTsMcvh8/0cUienPOlwWbMIgmsSD3M7rBKCJZPzG3opBFs/6/b1ITDb5xvlf
BwaJwNDqMRJvptKE9faS/K/R9inMmQArv19hagcxaIr8OlGSxIt6Jo9yRzBI
jiJXatWJABM0RUV+UxjkW3qV6EHiEdtL4tazGDSSlcojTuL+ht16rUUManFc
q/rjSIDuI881xZcxyCxcZ7mdxG1+WgPH1jBIReBh22MSN/avW9BsYlCmSd4F
VxLXEp4uru5g0HKLr50KiaviVG6O/sGgxZlVvuMkLpv/+a/5EIPuz5Hd++NA
gBcqj2JeUmLRanVa0gSJ8zLl2VNpsUiCpljhI4kz92cybtFjUZwMX+xLEqcZ
3xe4zoxFtD4UAU9InFQhUWnIjkW1T6WxcSS+zzShqIDDolideoUwEke73Ong
O4pFUtMP2PxIfLvt/GXmk1hk4p8f50XiEN7hiV1eLDKaIs/3JLFfWJjzND8W
WZbl2NwksedX/o1Pglh0Uzy2MZDELlJfQt8QsMgxoKYpksT2Sf6YLDEsGlGX
dEgkseXKyUcxUlgkd4amJIfEV7U7jnvLYdGUofijahJfLvAsuqaERdT9bcd7
SaxHwS2upoJF/Rbd2ssk1rRsqieoY5HLDYMjDCR/qdRe18RrY9GmgsN9IokV
uNgGyPWwqOEd/rkxiaW8ay2WDLCImBp29TaJRXpsFwevYNE+lFSUkZgvuvJf
oQUWLdlX6uNI8eWZvhaTaINFVh6NSZdIfESJij3YAYvWbXYCHpCYadtIQM8d
i05qmxLZSPrBGP6rkPbCopbaj4emJKZ4la94yheL/mP872Y+iXcctg03Q7Co
MyxOQ4Okx99NmRMT4VjkRxdQmEHi5eMazu1RWBRiVFyyQ+KpocehT+9j0TnR
O8/fkvTeqSZbhNJJ51FS17Qm5UtAexjhVjYW2YbMt0+QWECrpao+D4sOztxL
siLlW7SufpNcKRYFvsPQeXoQQPWyw1eJBiwyp/aIayHl6+bgC+ubzVj0vPqd
iz0pv3ON1+bL20j20T9Ow3iT7DcL3iB8waIq/+BvFqR60GidyHBuCos+nCs4
rkCqJ57Tw0lOs1jkVCzge0Dik/bHuAsWSfpkdjze6k+AMKdCvtPrWDRWO2hj
RapHCh71Sscp6BCbik17O6meVQf/8GQ9Q4fExrR9nKMI4PiPsKMvQIeg6yar
5x1Svt/yCY0XpkMX9SNoQ6IJ4BNxGEsvSYc+x5aTPY8hgFgsZy61Oul7T+Nl
Tj4gwKtU5aE9JzqkaSd06VcqSV/4u9dk3OgQ3axGh1waARifdn/386RDFRW/
c+8/IdW3DJOVjQA6VNi9FaOYTqqvee60K7F0pHpjeHLwOQHyy5/ITpfQoQzz
QbGhUpKe/1wTHCmjQ1Ubbaf0ykj6UTtxtKeSDplEZK10vSbA+5Gcv+/q6FBS
2d6Z3koCDByWfEj8RIc4rkVyY2sJQK7XoKa8RIc+8P3rk2wn1YfH4VLSq3Ro
nNf+73IHKR+/q5w9v0GHju35sBZ1EQDv247h/kOHguLpD8/1EICY3vtpjY4e
Nc80kVkMEcDi57RBtiA9smardgkn3a+8EvkqqQR6tITbLPGbJ9WzUCfx+2L0
SF6kYN5zkeQ/1mWOADl6dH/SXtdrmQD3ZLb+09emRzsF2VvPNwnwLprW8vA6
PQrxyy36SLrvOU8Lu1gW06P6qvqLLKT+ISHpnnFxKem9ZNr6+/NEoKNYUtks
p0fpFmsuHiKk/ul78dG4Wnr06vDB7KQkEZYzz35+84keCatcO/UPkfqfI6dF
GFfokSntDTneq0TwYTuyXSfGgLouJF87HUeE1duB0zTSDGjimz69xwMiuKyP
9BjIM6A/9Mpd9QlEsO59XLhwgQEN+/8X6vaYCLrxnKbsVxiQxL8jWzT5RDhN
x/rexZ8B5R0P2RNtIkI/OSaCm9QcefEe1t/4R4SV0ieWlxoZ0FEJL6pCMhHA
mgnJ321hQMvUju/TKEQAVehtbnYzoL6MyMVIGhF4ZZvi2DvBgMoWnxgGMonA
vY+8OncPGZBrkG3I9xMioHpHkWNLhRGJvFTeKVMWAWvRL2tCGoyoTSG9b+OC
CARPWH+21WFEEZ4XnOTURaBCMiq69zIj+nSVueuLtgjwzHftltgzIs8PIilH
jUTgr/rVCdtoRmQm/jFKxkkE3mBuFvR2MqLluZaLSQ9FYD7k9q+Gz4zoI6Mg
okwSAfz6Q4nSPkbUuH+63i+Z1I+PvmyOHWVEyQvS5g5PSPa9mP+m8oMRHWNa
MrLJFYF+HTPcGwwTukDp4zhULQJr8coxTzSY0Mv8Js4a0nzAS3npy10dJnSu
5j+u0DkRMPK35PLTZ0LrqQu9qosiUGMVnGdowoRm3sv7jf8SgVsibxrpnZiQ
MgdbhfCeCDD1C+yFRjOhZfw7E0MWURDmZHGxbWVCwbpJjA1IFNjL6l7mdzIh
7q/jZKdURWFf02l18TMTKhqMdrqrIQodIQ0+N4aZkP28ZpqlnijYz7rdCllg
Qsbslp1S5qKQUdmZnIplRp2NxREJAaLAZBj5oesiM6JRp/qwXykKq/HbHOLD
zOjH09v9SEoMltdONJ//ykzq3wzO6siJwU9DjRsC35hR/pQ6l6mSGMxypXUe
n2dGTo85Pt9SF4OvmbJhmG1mlB2zv7BrLAa2Jg0bK3QsaMzdWyg9QAwuOpFb
tAiyoD7tcdPaBjE4ffcu8YYLCxrWGL3y11gcvIclwmzdWBBLGX3Qz2vi0Mg3
3X3FgwUxz/3qGbcWB8sWBRcFbxZkJ8iA73Ehzbvkv/OwQSxI4U3anZkwcWAL
MT+SF8uCLLVjusYLxYHCS5R6tIgFpZaGvD/1Txymzca+qiywoCBLxs3ONxLA
oGhSaP2DBQUbfWRxJM3vkicHboYtsSCq1XMIQ5rvY2a6GGpXWZCqD8OKZa8E
EN1qlUR3WdA773UB4yUJCAl9knMSy4rKn97T8eKVBM5sE5e/gqyo7QaZ350U
SdCcG9h748GKlHdc6NITpCBUKD64zJMVxdtz+1inSUGFl+a/Im9WRC5KmyuU
LQVHD96TpfuxoljmLZfhMilY4SqgjQhjRf5EfYuwL1KQrBnAqRfPitRke2uP
s0jDVMkx0flSVhQsSVP1KVUaOH8PV0yWsaIszhJRvyxp0JZJlBgtZ0W6Ui1X
BYqkobKFWqb7DSuKWnNrzn0nDdETK0oV9ayI60TG5M64NAgzN+mGfWZFkouM
asf4ZCDA28GZ6xcrssVo8SfUyUCMzoqT3Cppv3twh6VNBh6f8XeyXGdFdnpV
p5/1ysDb4RjHgi1WhBE4p/dlTgY25F7aSx2wIgOqrIIqFlnwoNywNmZmQ+Ui
HQxhzrJglxxumirKhoSHp/vteeTA2x1rWivOhm709+irCctBhHrS1W+SbKgd
J1IsKiMH2bu5JvxybIjtl7Eg4ZIcfDNvv/JWhQ1lxivtV4fLwVU+JsPhy2zo
g63g+6OzcqD39pk2lx8buvBblzOhSh6cN2wPOQPYUPK7mowzTfIQKSJYxRnE
hgwCXcVaP8tDzYua45xhbIi1Q+Gd4II88GYNrbFHs6GYDKfPMUcUYPsu82PW
VDakscc1mRGpAJmmkTMMb9nQ+3TxiVQrRahJ1U5jqGFD9JwvKbrcFWFggPUi
Qy0bemjCzUcfoggYvey39A1siGPUNb86TRG8Vepj6drYUOk2e1BdvyKoC+0Q
McNs6DnV28NQLSVY+esSQrnNhs5Xkg17qgCYXtU5t7fDhn5WhTBIGQK0VAoN
r+yxIeo27T06W4AnLsvEr//YEPGgQ3X2NoDqiPvMa2p2FGHxtt+4GeBZpae2
JSc70uxBI/ynEWi6+OHfSbCjHQn85fulCCpbjVtfSbGjEFOZl2FvEZw4Je2d
J8OO6PdrFII+INj4b+fTQwV2lP1CTuJBH4JMtcBbjqrsKOmV5uDpbQSbPCHz
7EbsqCiSa+iEsjI8/+92lcdNduT7JUem6JsyzLeKTMb7sqOO5/mcNT+UQbhq
Elvmz45Sg21bBjeV4W2CotVqMDs6tu82I0GvAt1ae1jPKHbkxO+kniSjArt1
nlZeKeyI8qcH80CKCuhlW9H5VLOjOqkFRHbtAiTHM0kmv2NHpQ1WQv1OF2A0
pN6qqo4dVY30p1T6XAB706NvNj+wIw7tzzr58RcgkO0/K98OdsQsULSi/vEC
5EXpvfEbZUer6oKaT4iqsO+saB34hx2pW0RNS3GqgXadIPL9x46Iq7FvhE6r
wTNGPI/XITviZ2ihFBVVA4WK35POlBxINtTG3/2iGoT9KbS6Ss+BLrou3X8d
rQaU8WxW0kc50IwMvsDvrxowVC5YbMlxoBOiE3rtW+pgTj2kuK7AgcZamJ+R
0WhAqUnz8V9KHMi98dvWRS4N0PubPjGrwoG+1FqY8klrQIKaocWgNgc6SP7k
0xWoARwj780rzTjQ/YspbfSUmnD8X+I1ryAOROejcdyZXws0py++exzCgTSD
kkIO5bTApx2LawjjQEoV9P9V6mtBV+LtfrpIDvQ6x8/IJ1AL/Pi9tPLucaDH
k2ruZj1a0Kt/Sfq/dA60xo7PWw7VhogcJnbFDxzIabJOrX9LB0rvdnnaNXEg
Dxo5gWAmXRhxi+6J/ciBjCbOdGie1QWC9EHscDsHSiXvtblsqgtjn36RefZy
oPSQSSbCB12Q2OpeyfnOgcL+3tJSSLoI8xr3ujBUnCjuzrD9PxN9sNWx5uGj
4URP2BIndX31YUJP0k8Zw4kELcN/dSbpw+CVyVNBDJwIn4mR1+vRh2Y78cAl
Dk70OuwqY+vpS5Bxa+xsDx8n6owQY3n0/BIYVQvdeaTBia7Zfn219toAemvJ
xsq0OBET79zt4WYD0GkYEunW4UQ8/PLUXwcNQKX11jjVJU6UstzFK79nACID
A+J+VzlRgHkovfsFQ2BYDZ6+ep0TlXdqJ3dPGMJH/m44cY8TPWxe3b0vbATa
8ZPaXA840VoQnYCMshH0bv2+wvSQE93LSs+kNjaCby3cbgdJnIjvk0AiJtwI
dm2d0r495USrd4iU1UNGIJxFsZ75ghNpPCQv/nv3CqTiZHNOdnGiu2kTcQl0
JnDslm4prpsTSV4b8BE4YwK581Y1zD2ciIA5sfBL0QRev4nuOezjRGaUZzgp
vU3g0+XB/clRThTrR1NuO24CZAk3Lmf/4EQP1HjZzGuvggumgOoUlgul+/WN
vMw0g08UMQ8u0HMhJZZw12dNZiD87zqXIyMXemGa9q5/1gxW188LlLByIa+U
nfITwtfAZ+yNjuQRLiQZeHxIpeEahL5qTdIS4kJf2aRTg9fN4VtR4VG381zI
iPNqtxm3BaDc2Lx4IhfaTHRvSFC2AIq0i28HxLkQpky1g+qRBUTfHhq1UOBC
zjafv56Ts4QEozke74tcKP7tlWGTp1awrtdenKzPhVhbD//wdFiBoVaxWLUB
F3KhbXMy3LYCTiV31b9XSPuVvI/aO2cNT89uOUVbciGDRzfyzsZZQ94+VdnT
G1zIroEz3OCKDVRnn1H8mEiyX6fvFuGYHZw5VA1uesSF7nbEBa/J2EGChcO7
Dylc6OPWwtLWFTtwPlIg+f4JF5o3iwvqSbCDI8lnCW+ec6E9s7/SPVh7CLkr
eLKwnOS/w5sb/VgHWJzTtsiv5EL/Zf5pkBJygCuqrs9y33Ch6Qt+X5d1HYBA
/hKX/Y4LmTBdVDZKdIDJoPMsT5q40JNre3cJJxxBxUOE/F4fyb4+JwMuLSd4
1X0JYge40C+q61oCnk5wVMgr9O4QF0rg2GjIeuwEmwvle5GjXCiIbL2oZcEJ
8m3Ef4d850KPj0UHMT1wBswVqRmPdS5UafIgZmf5OvhUGp9y3yDtt3LJjuOo
C3xn9bdy3eJCfX+SBsu0XKC2p3rMaY8LtbLVfbxe5AKumrKD1uQ49PlrdvkJ
N1fokVdoNWTFIYx7YokBkzvE1fj+UWfHodGDcgxR1R00JMtE5Tlx6DzxDXNB
kDs0EngzT3Pj0FnpPV2XH+5QeQrjv8mDQ3RF3gbxPR6QRjsokCqCQ2se1Oeb
zD3hShSjVZwYDjkX3rzEHuoJbOQaKWESOPSu9Itne4Yn3Nt/R+4kg0MFGSyz
16Y8IexX1ldphEOPvGL3bV28wG7A9f6oPg71uVm/9HrkDTyX8ps/G+DQIKO1
2etabxjv/rbbdBmH1s8L77lPe4Nxm4HDCxMcSt4cKPQQvwma76SVgq1wqGJR
q65l7CYQsijXjt3AIdO56sY5DV/4eVSRn9ULh1roum1FAnyhMM3PnPomDtko
t7nwFvsCT9KPjl9+OOTpkjCOYfQD9jtfnjeE4ZAflewDmQk/2HV5dtk6Hofm
B9gFCDkB8DAol/ZWAg7ly+44ls0EAH9cSV1GEg51SpVoyPEHwpXiutNjqThE
/kP2ceSrQKhYGNu4koVDrD93Xt/rDgKtnZlCn+c49CZlQ50MFwxTNMvXHuXi
kNwf/J8y22Bg5v/7sbcQhzadHXvG/wWDm/2xZJ3XJH/T/W6RVw0FSp8zmi4V
OPTzzrdXJk9C4Wmk8N+YKhzaNSfNCquh0JmjYN9Wg0NdwoPXc56HAf93cwnl
JhzillhJOc0QDlMWGYNS/Th07EbltdbS2+Dvnh9zZRCHrlRuFnrP3wam0FIF
n2EcUrenXhfniQDF9Pq88q84VFLa0Mn0OAKefp3wEZ7BoVzmi327SZEg+nNO
QGcOhyg4Nr/ghiKhY+/X+PUFHDrQG2qKxUfBDv5AtXAJh9gDNU/cy40CI5MT
nLybJPt8Rcc5P92BJUf+TrSNQ8huPW8cHw0RfoRQq10cKjdJ0dR0jobyFKW5
9L84NJupyafEcBeYBi3f4KjxaIEq9IDBJQbyZxyvS9HiETvhTZ11WwwobHgc
v4LFk+7j686tZ2LBle3WnSRGPCoO3Q4hX4yFjktZVxi58Iim5d4Ef9w9cGmZ
a6DF49EnHzlt+/V7wCgjLEBxBI841Iukl8zug+HJd/vbx/FIAc+dfFTyAYz9
6s+a4iOt54//y4l5CGE23Nixs3gUMJGPLYl8CDxDVt5D5/Do3iduKg7yBLB/
v6zadR6PgsbP8h2LSoCVOJqflZJ4hBk0j2jISISEA93Lr6TxaPCIfNi9xUQQ
9370vkgWj6wTms7JSCZBgCnPwwxFPDo5IOPjNZgEFAJyEnfV8EhtxvOdgXAy
5D0Lz7itgUdKHJ8XqGOSQYO5nSZEC49sOEy5ifPJcH/78qjnRTzKabiUKP8i
BThb3cPMruDRfV3291uXH0ONTNWCkQkefQjOr6FqewxmL/cv6Zvikeu/eX1z
+TTIfHT3tKoF6f2xSFZnkSeAaHvuK1nhUUgmWarN6ycwE8SxLWODRx53R9II
Ek9BwPZ5x3kHPBIfZDH9rvEMuoYWRAWc8OjMyCXxoyPPwF2L8Iz3Oh49qbxB
2eeWDhUide44dzyq7CY6euVlgMLhIBu5Lx7pipiIEs9lwzfvoyF//PBo7PEG
/6nobLg9bzO3FYBHeRPW9VLz2dD2eaX6ZwgeFZyh87V6/RyclSVPzYWR4p15
nafpSA7QvQmOmwzHo9tYh86ZmBzQT8dYDEbhUVNPsNppr1z4zazf1hNN0k/u
dHDOUi4kR6YQO2PwKGxhd6TQJQ9GXHgpGu7j0RCZIbWwfz7YyioUFibjkU4o
7UuFvkK4/uvz1ngq6Txf0O3XcUXg+dxKle0JKb6yhbNpusVwCxv5PSQDjzbi
WYInll5AdD2HSEUWHrHGftO07CqBeK+CsIXnePSFgedNZuVLSB/tPGpYgEfy
xECu88WvIPfBNZe7RXiUvkqRQ1NdBi+Uf9W8f4FHfxhufzO//hreFbMYny3D
o1vD/3k1PSuHRoucPPNyPLpBJyRurlwBHawSG4mVeLSv+UeHeq0ChgNNEv5W
49E29+7x865VMHH+xzfRWjz6dufIo7Oyb2D2e9B5p/d4tMdewirE/haWUxhC
0hvwqGq+JvT0/lvY0Mrs6mvEI8k1gQa21WrY/0fkpv1IWj9ZdpR9owYoKpqc
FFpJ/qAyXzClrQWWI3NUhZ2keJ1NuHrO8T3gevwuj3/Co4uX30JjZT2ciMDk
sPbgUTDN3koT7gPwSz1dU+8l6evhrwBm7UY4/1MIQvrx6FRfrEUoZxNIZNY/
KB/EI72x0tKrq02gYKg/Pj+MR3E8F5dWRppBu9Y70GAMj2wvTs5LfG8BAw+q
jugJPNIg3JFQomyDq7ypXO8n8Uh1zFylQb4drIfPOqx/x6PxE7lCY/c7wCnu
XSX/LB6dDT7nvLnbCR5KOhTm8yQ9D59aK4z4BH6/xy8lLpL0zFWk/p/wZ4gy
I1v5s4xHYuebGHv8e+EeU5KC6CopnnIVj97c7YOk5tP3HNdJ8bfVyuAs64en
fm9Gn23gUaP8AhxbG4DnghoCfVt4lHIJ7eAuDkHRtxE/ml3S+apx5Dc6huF1
kkur/D4eTT+IEE+0H4GG/Qe2BQek+pa6xPQUMw6tr06Wj5Fxo3cBmtmPOb5B
t235IQslN/qVSI1NOjMFY12D6cG03OhjayslW+o0TIc5Lr3GciMOadnywKUZ
+Cm2KztPz41aHvKO/b00B7tPj/53iYUbkVHP23rJLcKhXilfNBs3ciYK5396
/QNoKMGnjoMbzUywnfpydAkYq3ub17i40bFY9PPLjWXgcLVl5efmRimnWB/1
Zv2Coyc3ra4d5UauNpI8zpkrwDtw51XCcW6kY92d+8dyFQTv4v61nuRGT1uH
cGf+WwVR+WKdP6e40f//P+Z/QlrvKg==
     "]]}},
  AspectRatio->NCache[GoldenRatio^(-1), 0.6180339887498948],
  Axes->True,
  AxesOrigin->{0, 0},
  Epilog->{{
     StyleBox[
      InsetBox[
       FormBox["\"R = 0.1\"", TraditionalForm], 
       NCache[{Pi, 0.6694214876033058}, {3.141592653589793, 
        0.6694214876033058}]], 12, Background -> GrayLevel[1], StripOnInput -> 
      False], 
     StyleBox[
      InsetBox[
       FormBox["\"R = 0.3\"", TraditionalForm], 
       NCache[{Pi, 0.28994082840236685`}, {3.141592653589793, 
        0.28994082840236685`}]], 12, Background -> GrayLevel[1], StripOnInput -> 
      False], 
     StyleBox[
      InsetBox[
       FormBox["\"R = 0.6\"", TraditionalForm], 
       NCache[{Pi, 0.06250000000000001}, {3.141592653589793, 
        0.06250000000000001}]], 12, Background -> GrayLevel[1], StripOnInput -> 
      False], 
     StyleBox[
      InsetBox[
       FormBox["\"R = 0.97\"", TraditionalForm], 
       NCache[{Pi, 0.00023190497049653473`}, {3.141592653589793, 
        0.00023190497049653473`}]], 12, Background -> GrayLevel[1], 
      StripOnInput -> False]}},
  Frame->True,
  PlotRange->{{0., 6.283185178951315}, {0, 1}},
  PlotRangeClipping->True,
  PlotRangePadding->0.05]], "Output",
 CellChangeTimes->{
  3.5606779066107216`*^9, {3.560716813292159*^9, 3.560716823268173*^9}}]
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
Cell[1257, 32, 6400, 162, 758, "Input"],
Cell[7660, 196, 1937, 38, 336, "Output"],
Cell[9600, 236, 77636, 1292, 228, "Output"]
}, Open  ]],
Cell[CellGroupData[{
Cell[87273, 1533, 144, 3, 71, "Section"],
Cell[CellGroupData[{
Cell[87442, 1540, 1668, 50, 155, "Input"],
Cell[89113, 1592, 174, 4, 33, "Output"],
Cell[89290, 1598, 174, 4, 33, "Output"],
Cell[89467, 1604, 5356, 95, 245, "Output"],
Cell[94826, 1701, 5436, 97, 245, "Output"],
Cell[100265, 1800, 5438, 97, 245, "Output"]
}, Open  ]],
Cell[CellGroupData[{
Cell[105740, 1902, 12689, 313, 732, "Input"],
Cell[118432, 2217, 68441, 1131, 253, "Output"]
}, Open  ]],
Cell[CellGroupData[{
Cell[186910, 3353, 2023, 58, 72, "Input"],
Cell[188936, 3413, 75629, 1256, 268, "Output"]
}, Open  ]],
Cell[CellGroupData[{
Cell[264602, 4674, 2846, 66, 372, "Input"],
Cell[267451, 4742, 48054, 806, 243, "Output"]
}, Open  ]]
}, Open  ]]
}
]
*)

(* End of internal cache information *)

(* NotebookSignature FvplBFrBbxbO0AK5kTYs@a9O *)
