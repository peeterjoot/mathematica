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
NotebookDataLength[    424930,       7581]
NotebookOptionsPosition[    422836,       7537]
NotebookOutlinePosition[    423195,       7553]
CellTagsIndexPosition[    423152,       7550]
WindowFrame->Normal*)

(* Beginning of Notebook Content *)
Notebook[{

Cell[CellGroupData[{
Cell[BoxData[{
 RowBox[{
  RowBox[{"<<", "peeters`"}], ";"}], "\n", 
 RowBox[{
  RowBox[{
  "peeters`setGitDir", "[", "\"\<../project/figures/phy485-optics\>\"", "]"}],
   "\n"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{"fs", "=", 
   RowBox[{
    RowBox[{"Style", "[", 
     RowBox[{"#", ",", 
      RowBox[{"FontSize", "\[Rule]", "14"}]}], "]"}], "&"}]}], 
  ";"}]}], "Input",ExpressionUUID->"c5f011a9-1d99-4d3d-a391-75a0fe0aaf72"],

Cell[BoxData["\<\"/Users/pjoot/project/figures/phy485-optics\"\>"], "Output",
 CellChangeTimes->{
  3.763854238753543*^9},ExpressionUUID->"964f7c8d-9614-4694-b67e-\
bef0e780482e"]
}, Open  ]],

Cell[BoxData[""], "Input",
 CellChangeTimes->{{3.763854223330171*^9, 
  3.763854228664444*^9}},ExpressionUUID->"57082fec-0466-462c-b866-\
36c3c13fda17"],

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
put-evaluate-here"], "\[IndentingNewLine]", "*)"}], 
  "\[IndentingNewLine]"}], "\[IndentingNewLine]", 
 RowBox[{"Clear", "[", "rValues", "]"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{"rValues", " ", ":=", " ", 
   RowBox[{"{", 
    RowBox[{"0.1", ",", "0.3", ",", "0.6", ",", "0.97"}], "}"}]}], 
  "\[IndentingNewLine]", 
  RowBox[{"(*", "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{"Needs", "[", "\"\<PlotLegends`\>\"", "]"}], 
    "\[IndentingNewLine]", 
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
        RowBox[{"0.95", ",", "0.05"}], "}"}]}]}], "\[IndentingNewLine]", 
     "]"}]}], "\[IndentingNewLine]", "*)"}], 
  "\[IndentingNewLine]"}], "\[IndentingNewLine]"}], "Input",
 CellChangeTimes->{{3.560614960854762*^9, 3.5606150969660015`*^9}, {
   3.560615173402936*^9, 3.560615292144745*^9}, {3.5606219313235517`*^9, 
   3.5606219631134915`*^9}, {3.5606224064318852`*^9, 3.560622535904518*^9}, {
   3.560633695738126*^9, 3.560633746214198*^9}, {3.560634475270808*^9, 
   3.5606345714859433`*^9}, 3.5608941178982663`*^9, 3.763854248967125*^9, {
   3.763854280452979*^9, 
   3.763854284624299*^9}},ExpressionUUID->"ffa095da-e68a-419a-b58b-\
a3a7597c7976"],

Cell[BoxData[
 TagBox[
  StyleBox[
   DynamicModuleBox[{$CellContext`r$$ = 0.1, Typeset`show$$ = True, 
    Typeset`bookmarkList$$ = {}, Typeset`bookmarkMode$$ = "Menu", 
    Typeset`animator$$, Typeset`animvar$$ = 1, Typeset`name$$ = 
    "\"untitled\"", Typeset`specs$$ = {{{
       Hold[$CellContext`r$$], 0.1}, 0.01, 0.99}}, Typeset`size$$ = {
    360., {107., 112.}}, Typeset`update$$ = 0, Typeset`initDone$$, 
    Typeset`skipInitDone$$ = True, $CellContext`r$2658$$ = 0}, 
    DynamicBox[Manipulate`ManipulateBoxes[
     1, StandardForm, "Variables" :> {$CellContext`r$$ = 0.1}, 
      "ControllerVariables" :> {
        Hold[$CellContext`r$$, $CellContext`r$2658$$, 0]}, 
      "OtherVariables" :> {
       Typeset`show$$, Typeset`bookmarkList$$, Typeset`bookmarkMode$$, 
        Typeset`animator$$, Typeset`animvar$$, Typeset`name$$, 
        Typeset`specs$$, Typeset`size$$, Typeset`update$$, Typeset`initDone$$,
         Typeset`skipInitDone$$}, "Body" :> Plot[
        $CellContext`i[$CellContext`r$$, $CellContext`delta], \
{$CellContext`delta, 0, 10 Pi}], 
      "Specifications" :> {{{$CellContext`r$$, 0.1}, 0.01, 0.99}}, 
      "Options" :> {}, "DefaultOptions" :> {}],
     ImageSizeCache->{405., {152., 158.}},
     SingleEvaluation->True],
    Deinitialization:>None,
    DynamicModuleValues:>{},
    SynchronousInitialization->True,
    UndoTrackedVariables:>{Typeset`show$$, Typeset`bookmarkMode$$},
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
   3.560894118941326*^9}, 
   3.76385425092209*^9},ExpressionUUID->"76eafd62-7ce2-4ae7-a6f8-\
e6059b73d717"],

Cell[BoxData[
 TemplateBox[{
  "General","obspkg",
   "\"\\!\\(\\*RowBox[{\\\"\\\\\\\"PlotLegends`\\\\\\\"\\\"}]\\) is now \
obsolete. The legacy version being loaded may conflict with current \
functionality. See the Compatibility Guide for updating information.\"",2,8,1,
   21865510089915180219,"Local"},
  "MessageTemplate"]], "Message", "MSG",
 CellChangeTimes->{
  3.763854251064324*^9},ExpressionUUID->"f405d61c-3af8-4eb9-abfd-\
3caa124f708d"]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{
  RowBox[{"(*", 
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
       "\"\<R = 0.1\>\"", ",", "\"\<R = 0.3\>\"", ",", "\"\<R = 0.6\>\"", 
        ",", "\"\<R = 0.97\>\""}], "}"}]}], "\[IndentingNewLine]", ",", 
     RowBox[{"LegendPosition", "\[Rule]", 
      RowBox[{"{", 
       RowBox[{"0.95", ",", "0.05"}], "}"}]}]}], "\[IndentingNewLine]", "]"}],
    "*)"}], "\[IndentingNewLine]", "\[IndentingNewLine]", 
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
      RowBox[{"0", ",", "1"}], "}"}]}], "\[IndentingNewLine]", ",", " ", 
    RowBox[{"PlotStyle", "\[Rule]", " ", "Thick"}], "\[IndentingNewLine]", 
    ",", 
    RowBox[{"PlotLegends", "\[Rule]", 
     RowBox[{"Placed", "[", 
      RowBox[{
       RowBox[{"{", 
        RowBox[{
        "\"\<R = 0.1\>\"", ",", "\"\<R = 0.3\>\"", ",", "\"\<R = 0.6\>\"", 
         ",", "\"\<R = 0.97\>\""}], "}"}], ",", " ", 
       RowBox[{"{", 
        RowBox[{"Right", ",", " ", "Right"}], "}"}]}], "]"}]}]}], 
   "\[IndentingNewLine]", "\[IndentingNewLine]", "]"}]}]], "Input",
 CellChangeTimes->{{3.7638542631981897`*^9, 3.7638543846035957`*^9}, {
  3.7638544285493193`*^9, 
  3.7638544342291937`*^9}},ExpressionUUID->"280dd2b1-2a68-43bc-a651-\
9f245a2e2d4c"],

Cell[BoxData[
 TagBox[
  GraphicsBox[{InsetBox[
     GraphicsBox[{{{{}, {}, 
         TagBox[
          {RGBColor[0.368417, 0.506779, 0.709798], Thickness[Large], Opacity[
           1.], LineBox[CompressedData["
1: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
2ZdJNKildC9b36uEOSdaW2QekPN31HutHlZC8VlL3JPSaVi8J6vVUkAZu4Sf
dniQ/l/I2fWxPksZ9decqHxcRoPrmfq1nLnKeHD/iYA7r2kojLHt1NFXxuYv
SlzfCnL+ZjOmlrEy7h/aW8mqouGTg/QlJWtl/JmGGzXryP35BKkp2CjjGtQz
+/CJhsu3/xXOtlXGz5zIJ95faFhS39UvtVkZy9Nmb0proCHevtRByE0Z98XW
1Ra00TDuaTbEf0AZTfas5up+p2Fz+KPQmcPKKMTndCLiBw3CH++WTngp4/DC
vJ8b2mk4ut5Lf+iCMn5ffvnRkS4a3h7pesMLUsaH6a/lE7tp0Ah12dV/VRk/
Wuo01/TQ8Llq7a2uCGXcfrbbXbqfhqWrWdPfkpRxesX9A0sGaTC9Xx3yLkUZ
A24Lx+kP0WA44y2Xk6GMjR5XDioM08AqfM25nKOM7TMbn9SP0DBH7miex1Nl
fC/tr5/xmwbF4/JWjs+U8euhoIU+f2iQ0CXPizJl3BRe1vR3lAaRS1Lf5SqU
8dNrV98nYzTw/Xh6aKpSGe+pFcTsGqfhd5RIYF2dMhalGRxO+0sDbzib8bxe
GSfOrJTFCRq67Rxv3m9SxrO1oks+EX8TSU/3+amMSctWTrb9o6HJbZPJ7k5l
lLVcccdxktzvy/EXa7uVMSryb2Y1cY1K0hqTfmV0vOaw1GyKzJfP2i9zBpVx
dKmTVQxx6echF5HfykhfVnk+SvzcMKabHiPn03qWuW6ahvxr1iea/ymjeZzH
7Gjix9zeqfIZZdy45/zAd+KH1jdDHgkycX3BumVqMzQ8iLeQixJlYuw7i+kt
xPETHXHnJJiYlFprfIn4rsN1zmFpJu7fcKv5IXFkrmneZjkm/k00HK7+3/vP
Wd8slykx8dAJ+4AO4ivuQZU6qky0Cyr3/U184e38LdIaTJQL3tE5RRzAavg2
zmLiGyZf+f/ev/oEBh5qn8vEkI85MhPEni1zR97rM7FoXkBdP7G72cezTw2Z
eCs5kL+JeF+kLyPBmIkP7vbeLyZ25WncDDFjYsoewaI7xNttK9W8zZmoA+pW
R4m3pHqmO1kxscQ12WwpsZ0A02SVNRN/NjKSp8l8rHEte2Fow0TnjLbzJcTW
zw+vUbZl4rGC51+8iZcpzv7Cb8fEwNf297SIzbyfu/TZk+Pebk2VZP4X1rp1
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
7P8Bu9Gz2Q==
            "]]},
          Annotation[#, "Charting`Private`Tag$4268#1"]& ], 
         TagBox[
          {RGBColor[0.880722, 0.611041, 0.142051], Thickness[Large], Opacity[
           1.], LineBox[CompressedData["
1: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
            "]]},
          Annotation[#, "Charting`Private`Tag$4268#2"]& ], 
         TagBox[
          {RGBColor[0.560181, 0.691569, 0.194885], Thickness[Large], Opacity[
           1.], LineBox[CompressedData["
1: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
quD//1/y/wD3HUiP
            "]]},
          Annotation[#, "Charting`Private`Tag$4268#3"]& ], 
         TagBox[
          {RGBColor[0.922526, 0.385626, 0.209179], Thickness[Large], Opacity[
           1.], LineBox[CompressedData["
1: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
CtS1M0y+y9Px//+3/gfPPmGt
            "]]},
          Annotation[#, "Charting`Private`Tag$4268#4"]& ]}, {}, {}}, {}},
      AspectRatio->NCache[GoldenRatio^(-1), 0.6180339887498948],
      Axes->{True, True},
      AxesLabel->{None, None},
      AxesOrigin->{0, 0},
      DisplayFunction->Identity,
      Frame->{{False, False}, {False, False}},
      FrameLabel->{{None, None}, {None, None}},
      FrameTicks->{{Automatic, 
         Charting`ScaledFrameTicks[{Identity, Identity}]}, {Automatic, 
         Charting`ScaledFrameTicks[{Identity, Identity}]}},
      GridLines->{None, None},
      GridLinesStyle->Directive[
        GrayLevel[0.5, 0.4]],
      ImagePadding->All,
      Method->{
       "DefaultBoundaryStyle" -> Automatic, "DefaultMeshStyle" -> 
        AbsolutePointSize[6], "ScalingFunctions" -> None, 
        "CoordinatesToolOptions" -> {"DisplayFunction" -> ({
            (Identity[#]& )[
             Part[#, 1]], 
            (Identity[#]& )[
             Part[#, 2]]}& ), "CopiedValueFunction" -> ({
            (Identity[#]& )[
             Part[#, 1]], 
            (Identity[#]& )[
             Part[#, 2]]}& )}},
      PlotLabel->None,
      PlotRange->{{0., 12.56637035790263}, {0, 1}},
      PlotRangeClipping->True,
      PlotRangePadding->{{
         Scaled[0.02], 
         Scaled[0.02]}, {0, 0}},
      Ticks->{Automatic, Automatic}], Scaled[{0.5, 0.5}], Center, 
     Scaled[{1, 1}]], InsetBox[
     TemplateBox[{"\"R = 0.1\"","\"R = 0.3\"","\"R = 0.6\"","\"R = 0.97\""},
      "LineLegend",
      DisplayFunction->(FormBox[
        StyleBox[
         StyleBox[
          PaneBox[
           TagBox[
            GridBox[{{
               TagBox[
                GridBox[{{
                   GraphicsBox[{{
                    Directive[
                    EdgeForm[
                    Directive[
                    Opacity[0.3], 
                    GrayLevel[0]]], 
                    PointSize[0.5], 
                    Opacity[1.], 
                    RGBColor[0.368417, 0.506779, 0.709798], 
                    AbsoluteThickness[1.6], 
                    Thickness[Large]], {
                    LineBox[{{0, 10}, {20, 10}}]}}, {
                    Directive[
                    EdgeForm[
                    Directive[
                    Opacity[0.3], 
                    GrayLevel[0]]], 
                    PointSize[0.5], 
                    Opacity[1.], 
                    RGBColor[0.368417, 0.506779, 0.709798], 
                    AbsoluteThickness[1.6], 
                    Thickness[Large]], {}}}, AspectRatio -> Full, 
                    ImageSize -> {20, 10}, PlotRangePadding -> None, 
                    ImagePadding -> Automatic, 
                    BaselinePosition -> (Scaled[0.1] -> Baseline)], #}, {
                   GraphicsBox[{{
                    Directive[
                    EdgeForm[
                    Directive[
                    Opacity[0.3], 
                    GrayLevel[0]]], 
                    PointSize[0.5], 
                    Opacity[1.], 
                    RGBColor[0.880722, 0.611041, 0.142051], 
                    AbsoluteThickness[1.6], 
                    Thickness[Large]], {
                    LineBox[{{0, 10}, {20, 10}}]}}, {
                    Directive[
                    EdgeForm[
                    Directive[
                    Opacity[0.3], 
                    GrayLevel[0]]], 
                    PointSize[0.5], 
                    Opacity[1.], 
                    RGBColor[0.880722, 0.611041, 0.142051], 
                    AbsoluteThickness[1.6], 
                    Thickness[Large]], {}}}, AspectRatio -> Full, 
                    ImageSize -> {20, 10}, PlotRangePadding -> None, 
                    ImagePadding -> Automatic, 
                    BaselinePosition -> (Scaled[0.1] -> Baseline)], #2}, {
                   GraphicsBox[{{
                    Directive[
                    EdgeForm[
                    Directive[
                    Opacity[0.3], 
                    GrayLevel[0]]], 
                    PointSize[0.5], 
                    Opacity[1.], 
                    RGBColor[0.560181, 0.691569, 0.194885], 
                    AbsoluteThickness[1.6], 
                    Thickness[Large]], {
                    LineBox[{{0, 10}, {20, 10}}]}}, {
                    Directive[
                    EdgeForm[
                    Directive[
                    Opacity[0.3], 
                    GrayLevel[0]]], 
                    PointSize[0.5], 
                    Opacity[1.], 
                    RGBColor[0.560181, 0.691569, 0.194885], 
                    AbsoluteThickness[1.6], 
                    Thickness[Large]], {}}}, AspectRatio -> Full, 
                    ImageSize -> {20, 10}, PlotRangePadding -> None, 
                    ImagePadding -> Automatic, 
                    BaselinePosition -> (Scaled[0.1] -> Baseline)], #3}, {
                   GraphicsBox[{{
                    Directive[
                    EdgeForm[
                    Directive[
                    Opacity[0.3], 
                    GrayLevel[0]]], 
                    PointSize[0.5], 
                    Opacity[1.], 
                    RGBColor[0.922526, 0.385626, 0.209179], 
                    AbsoluteThickness[1.6], 
                    Thickness[Large]], {
                    LineBox[{{0, 10}, {20, 10}}]}}, {
                    Directive[
                    EdgeForm[
                    Directive[
                    Opacity[0.3], 
                    GrayLevel[0]]], 
                    PointSize[0.5], 
                    Opacity[1.], 
                    RGBColor[0.922526, 0.385626, 0.209179], 
                    AbsoluteThickness[1.6], 
                    Thickness[Large]], {}}}, AspectRatio -> Full, 
                    ImageSize -> {20, 10}, PlotRangePadding -> None, 
                    ImagePadding -> Automatic, 
                    BaselinePosition -> (Scaled[0.1] -> Baseline)], #4}}, 
                 GridBoxAlignment -> {
                  "Columns" -> {Center, Left}, "Rows" -> {{Baseline}}}, 
                 AutoDelete -> False, 
                 GridBoxDividers -> {
                  "Columns" -> {{False}}, "Rows" -> {{False}}}, 
                 GridBoxItemSize -> {"Columns" -> {{All}}, "Rows" -> {{All}}},
                  GridBoxSpacings -> {
                  "Columns" -> {{0.5}}, "Rows" -> {{0.8}}}], "Grid"]}}, 
             GridBoxAlignment -> {"Columns" -> {{Left}}, "Rows" -> {{Top}}}, 
             AutoDelete -> False, 
             GridBoxItemSize -> {
              "Columns" -> {{Automatic}}, "Rows" -> {{Automatic}}}, 
             GridBoxSpacings -> {"Columns" -> {{1}}, "Rows" -> {{0}}}], 
            "Grid"], Alignment -> Left, AppearanceElements -> None, 
           ImageMargins -> {{5, 5}, {5, 5}}, ImageSizeAction -> 
           "ResizeToFit"], LineIndent -> 0, StripOnInput -> False], {
         FontFamily -> "Arial"}, Background -> Automatic, StripOnInput -> 
         False], TraditionalForm]& ),
      Editable->True,
      InterpretationFunction:>(RowBox[{"LineLegend", "[", 
         RowBox[{
           RowBox[{"{", 
             RowBox[{
               RowBox[{"Directive", "[", 
                 RowBox[{
                   RowBox[{"Opacity", "[", "1.`", "]"}], ",", 
                   InterpretationBox[
                    ButtonBox[
                    TooltipBox[
                    GraphicsBox[{{
                    GrayLevel[0], 
                    RectangleBox[{0, 0}]}, {
                    GrayLevel[0], 
                    RectangleBox[{1, -1}]}, {
                    RGBColor[0.368417, 0.506779, 0.709798], 
                    RectangleBox[{0, -1}, {2, 1}]}}, DefaultBaseStyle -> 
                    "ColorSwatchGraphics", AspectRatio -> 1, Frame -> True, 
                    FrameStyle -> 
                    RGBColor[
                    0.24561133333333335`, 0.3378526666666667, 
                    0.4731986666666667], FrameTicks -> None, PlotRangePadding -> 
                    None, ImageSize -> 
                    Dynamic[{
                    Automatic, 1.35 CurrentValue["FontCapHeight"]/
                    AbsoluteCurrentValue[Magnification]}]], 
                    "RGBColor[0.368417, 0.506779, 0.709798]"], Appearance -> 
                    None, BaseStyle -> {}, BaselinePosition -> Baseline, 
                    DefaultBaseStyle -> {}, ButtonFunction :> 
                    With[{Typeset`box$ = EvaluationBox[]}, 
                    If[
                    Not[
                    AbsoluteCurrentValue["Deployed"]], 
                    SelectionMove[Typeset`box$, All, Expression]; 
                    FrontEnd`Private`$ColorSelectorInitialAlpha = 1; 
                    FrontEnd`Private`$ColorSelectorInitialColor = 
                    RGBColor[0.368417, 0.506779, 0.709798]; 
                    FrontEnd`Private`$ColorSelectorUseMakeBoxes = True; 
                    MathLink`CallFrontEnd[
                    FrontEnd`AttachCell[Typeset`box$, 
                    FrontEndResource["RGBColorValueSelector"], {
                    0, {Left, Bottom}}, {Left, Top}, 
                    "ClosingActions" -> {
                    "SelectionDeparture", "ParentChanged", 
                    "EvaluatorQuit"}]]]], BaseStyle -> Inherited, Evaluator -> 
                    Automatic, Method -> "Preemptive"], 
                    RGBColor[0.368417, 0.506779, 0.709798], Editable -> False,
                     Selectable -> False], ",", 
                   RowBox[{"AbsoluteThickness", "[", "1.6`", "]"}], ",", 
                   RowBox[{"Thickness", "[", "Large", "]"}]}], "]"}], ",", 
               RowBox[{"Directive", "[", 
                 RowBox[{
                   RowBox[{"Opacity", "[", "1.`", "]"}], ",", 
                   InterpretationBox[
                    ButtonBox[
                    TooltipBox[
                    GraphicsBox[{{
                    GrayLevel[0], 
                    RectangleBox[{0, 0}]}, {
                    GrayLevel[0], 
                    RectangleBox[{1, -1}]}, {
                    RGBColor[0.880722, 0.611041, 0.142051], 
                    RectangleBox[{0, -1}, {2, 1}]}}, DefaultBaseStyle -> 
                    "ColorSwatchGraphics", AspectRatio -> 1, Frame -> True, 
                    FrameStyle -> 
                    RGBColor[
                    0.587148, 0.40736066666666665`, 0.09470066666666668], 
                    FrameTicks -> None, PlotRangePadding -> None, ImageSize -> 
                    Dynamic[{
                    Automatic, 1.35 CurrentValue["FontCapHeight"]/
                    AbsoluteCurrentValue[Magnification]}]], 
                    "RGBColor[0.880722, 0.611041, 0.142051]"], Appearance -> 
                    None, BaseStyle -> {}, BaselinePosition -> Baseline, 
                    DefaultBaseStyle -> {}, ButtonFunction :> 
                    With[{Typeset`box$ = EvaluationBox[]}, 
                    If[
                    Not[
                    AbsoluteCurrentValue["Deployed"]], 
                    SelectionMove[Typeset`box$, All, Expression]; 
                    FrontEnd`Private`$ColorSelectorInitialAlpha = 1; 
                    FrontEnd`Private`$ColorSelectorInitialColor = 
                    RGBColor[0.880722, 0.611041, 0.142051]; 
                    FrontEnd`Private`$ColorSelectorUseMakeBoxes = True; 
                    MathLink`CallFrontEnd[
                    FrontEnd`AttachCell[Typeset`box$, 
                    FrontEndResource["RGBColorValueSelector"], {
                    0, {Left, Bottom}}, {Left, Top}, 
                    "ClosingActions" -> {
                    "SelectionDeparture", "ParentChanged", 
                    "EvaluatorQuit"}]]]], BaseStyle -> Inherited, Evaluator -> 
                    Automatic, Method -> "Preemptive"], 
                    RGBColor[0.880722, 0.611041, 0.142051], Editable -> False,
                     Selectable -> False], ",", 
                   RowBox[{"AbsoluteThickness", "[", "1.6`", "]"}], ",", 
                   RowBox[{"Thickness", "[", "Large", "]"}]}], "]"}], ",", 
               RowBox[{"Directive", "[", 
                 RowBox[{
                   RowBox[{"Opacity", "[", "1.`", "]"}], ",", 
                   InterpretationBox[
                    ButtonBox[
                    TooltipBox[
                    GraphicsBox[{{
                    GrayLevel[0], 
                    RectangleBox[{0, 0}]}, {
                    GrayLevel[0], 
                    RectangleBox[{1, -1}]}, {
                    RGBColor[0.560181, 0.691569, 0.194885], 
                    RectangleBox[{0, -1}, {2, 1}]}}, DefaultBaseStyle -> 
                    "ColorSwatchGraphics", AspectRatio -> 1, Frame -> True, 
                    FrameStyle -> 
                    RGBColor[
                    0.37345400000000006`, 0.461046, 0.12992333333333334`], 
                    FrameTicks -> None, PlotRangePadding -> None, ImageSize -> 
                    Dynamic[{
                    Automatic, 1.35 CurrentValue["FontCapHeight"]/
                    AbsoluteCurrentValue[Magnification]}]], 
                    "RGBColor[0.560181, 0.691569, 0.194885]"], Appearance -> 
                    None, BaseStyle -> {}, BaselinePosition -> Baseline, 
                    DefaultBaseStyle -> {}, ButtonFunction :> 
                    With[{Typeset`box$ = EvaluationBox[]}, 
                    If[
                    Not[
                    AbsoluteCurrentValue["Deployed"]], 
                    SelectionMove[Typeset`box$, All, Expression]; 
                    FrontEnd`Private`$ColorSelectorInitialAlpha = 1; 
                    FrontEnd`Private`$ColorSelectorInitialColor = 
                    RGBColor[0.560181, 0.691569, 0.194885]; 
                    FrontEnd`Private`$ColorSelectorUseMakeBoxes = True; 
                    MathLink`CallFrontEnd[
                    FrontEnd`AttachCell[Typeset`box$, 
                    FrontEndResource["RGBColorValueSelector"], {
                    0, {Left, Bottom}}, {Left, Top}, 
                    "ClosingActions" -> {
                    "SelectionDeparture", "ParentChanged", 
                    "EvaluatorQuit"}]]]], BaseStyle -> Inherited, Evaluator -> 
                    Automatic, Method -> "Preemptive"], 
                    RGBColor[0.560181, 0.691569, 0.194885], Editable -> False,
                     Selectable -> False], ",", 
                   RowBox[{"AbsoluteThickness", "[", "1.6`", "]"}], ",", 
                   RowBox[{"Thickness", "[", "Large", "]"}]}], "]"}], ",", 
               RowBox[{"Directive", "[", 
                 RowBox[{
                   RowBox[{"Opacity", "[", "1.`", "]"}], ",", 
                   InterpretationBox[
                    ButtonBox[
                    TooltipBox[
                    GraphicsBox[{{
                    GrayLevel[0], 
                    RectangleBox[{0, 0}]}, {
                    GrayLevel[0], 
                    RectangleBox[{1, -1}]}, {
                    RGBColor[0.922526, 0.385626, 0.209179], 
                    RectangleBox[{0, -1}, {2, 1}]}}, DefaultBaseStyle -> 
                    "ColorSwatchGraphics", AspectRatio -> 1, Frame -> True, 
                    FrameStyle -> 
                    RGBColor[
                    0.6150173333333333, 0.25708400000000003`, 
                    0.13945266666666667`], FrameTicks -> None, 
                    PlotRangePadding -> None, ImageSize -> 
                    Dynamic[{
                    Automatic, 1.35 CurrentValue["FontCapHeight"]/
                    AbsoluteCurrentValue[Magnification]}]], 
                    "RGBColor[0.922526, 0.385626, 0.209179]"], Appearance -> 
                    None, BaseStyle -> {}, BaselinePosition -> Baseline, 
                    DefaultBaseStyle -> {}, ButtonFunction :> 
                    With[{Typeset`box$ = EvaluationBox[]}, 
                    If[
                    Not[
                    AbsoluteCurrentValue["Deployed"]], 
                    SelectionMove[Typeset`box$, All, Expression]; 
                    FrontEnd`Private`$ColorSelectorInitialAlpha = 1; 
                    FrontEnd`Private`$ColorSelectorInitialColor = 
                    RGBColor[0.922526, 0.385626, 0.209179]; 
                    FrontEnd`Private`$ColorSelectorUseMakeBoxes = True; 
                    MathLink`CallFrontEnd[
                    FrontEnd`AttachCell[Typeset`box$, 
                    FrontEndResource["RGBColorValueSelector"], {
                    0, {Left, Bottom}}, {Left, Top}, 
                    "ClosingActions" -> {
                    "SelectionDeparture", "ParentChanged", 
                    "EvaluatorQuit"}]]]], BaseStyle -> Inherited, Evaluator -> 
                    Automatic, Method -> "Preemptive"], 
                    RGBColor[0.922526, 0.385626, 0.209179], Editable -> False,
                     Selectable -> False], ",", 
                   RowBox[{"AbsoluteThickness", "[", "1.6`", "]"}], ",", 
                   RowBox[{"Thickness", "[", "Large", "]"}]}], "]"}]}], "}"}],
            ",", 
           RowBox[{"{", 
             RowBox[{#, ",", #2, ",", #3, ",", #4}], "}"}], ",", 
           RowBox[{"LegendMarkers", "\[Rule]", "None"}], ",", 
           RowBox[{"LabelStyle", "\[Rule]", 
             RowBox[{"{", "}"}]}], ",", 
           RowBox[{"LegendLayout", "\[Rule]", "\"Column\""}]}], "]"}]& )], 
     Scaled[{1.01, 0.5}], ImageScaled[{0, 0.5}],
     BaseStyle->{FontSize -> Larger},
     FormatType->StandardForm]},
   AspectRatio->NCache[GoldenRatio^(-1), 0.6180339887498948],
   Axes->False,
   AxesLabel->{None, None},
   AxesOrigin->{0, 0},
   DisplayFunction->Identity,
   Frame->False,
   FrameLabel->{{None, None}, {None, None}},
   FrameTicks->{{Automatic, 
      Charting`ScaledFrameTicks[{Identity, Identity}]}, {Automatic, 
      Charting`ScaledFrameTicks[{Identity, Identity}]}},
   ImagePadding->All,
   Method->{
    "DefaultBoundaryStyle" -> Automatic, "DefaultMeshStyle" -> 
     AbsolutePointSize[6], "ScalingFunctions" -> None, 
     "CoordinatesToolOptions" -> {"DisplayFunction" -> ({
         (Identity[#]& )[
          Part[#, 1]], 
         (Identity[#]& )[
          Part[#, 2]]}& ), "CopiedValueFunction" -> ({
         (Identity[#]& )[
          Part[#, 1]], 
         (Identity[#]& )[
          Part[#, 2]]}& )}},
   PlotLabel->None,
   PlotRange->Automatic,
   PlotRangeClipping->False,
   PlotRangePadding->{{
      Scaled[0.02], 
      Scaled[0.02]}, {0, 0}},
   Ticks->{Automatic, Automatic}],
  InterpretTemplate[Legended[
    Graphics[{{{{}, {}, 
        Annotation[{
          Directive[
           Opacity[1.], 
           RGBColor[0.368417, 0.506779, 0.709798], 
           AbsoluteThickness[1.6], 
           Thickness[Large]], 
          Line[CompressedData["
1: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
2ZdJNKildC9b36uEOSdaW2QekPN31HutHlZC8VlL3JPSaVi8J6vVUkAZu4Sf
dniQ/l/I2fWxPksZ9decqHxcRoPrmfq1nLnKeHD/iYA7r2kojLHt1NFXxuYv
SlzfCnL+ZjOmlrEy7h/aW8mqouGTg/QlJWtl/JmGGzXryP35BKkp2CjjGtQz
+/CJhsu3/xXOtlXGz5zIJ95faFhS39UvtVkZy9Nmb0proCHevtRByE0Z98XW
1Ra00TDuaTbEf0AZTfas5up+p2Fz+KPQmcPKKMTndCLiBw3CH++WTngp4/DC
vJ8b2mk4ut5Lf+iCMn5ffvnRkS4a3h7pesMLUsaH6a/lE7tp0Ah12dV/VRk/
Wuo01/TQ8Llq7a2uCGXcfrbbXbqfhqWrWdPfkpRxesX9A0sGaTC9Xx3yLkUZ
A24Lx+kP0WA44y2Xk6GMjR5XDioM08AqfM25nKOM7TMbn9SP0DBH7miex1Nl
fC/tr5/xmwbF4/JWjs+U8euhoIU+f2iQ0CXPizJl3BRe1vR3lAaRS1Lf5SqU
8dNrV98nYzTw/Xh6aKpSGe+pFcTsGqfhd5RIYF2dMhalGRxO+0sDbzib8bxe
GSfOrJTFCRq67Rxv3m9SxrO1oks+EX8TSU/3+amMSctWTrb9o6HJbZPJ7k5l
lLVcccdxktzvy/EXa7uVMSryb2Y1cY1K0hqTfmV0vOaw1GyKzJfP2i9zBpVx
dKmTVQxx6echF5HfykhfVnk+SvzcMKabHiPn03qWuW6ahvxr1iea/ymjeZzH
7Gjix9zeqfIZZdy45/zAd+KH1jdDHgkycX3BumVqMzQ8iLeQixJlYuw7i+kt
xPETHXHnJJiYlFprfIn4rsN1zmFpJu7fcKv5IXFkrmneZjkm/k00HK7+3/vP
Wd8slykx8dAJ+4AO4ivuQZU6qky0Cyr3/U184e38LdIaTJQL3tE5RRzAavg2
zmLiGyZf+f/ev/oEBh5qn8vEkI85MhPEni1zR97rM7FoXkBdP7G72cezTw2Z
eCs5kL+JeF+kLyPBmIkP7vbeLyZ25WncDDFjYsoewaI7xNttK9W8zZmoA+pW
R4m3pHqmO1kxscQ12WwpsZ0A02SVNRN/NjKSp8l8rHEte2Fow0TnjLbzJcTW
zw+vUbZl4rGC51+8iZcpzv7Cb8fEwNf297SIzbyfu/TZk+Pebk2VZP4X1rp1
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
7P8Bu9Gz2Q==
           "]]}, "Charting`Private`Tag$4268#1"], 
        Annotation[{
          Directive[
           Opacity[1.], 
           RGBColor[0.880722, 0.611041, 0.142051], 
           AbsoluteThickness[1.6], 
           Thickness[Large]], 
          Line[CompressedData["
1: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
           "]]}, "Charting`Private`Tag$4268#2"], 
        Annotation[{
          Directive[
           Opacity[1.], 
           RGBColor[0.560181, 0.691569, 0.194885], 
           AbsoluteThickness[1.6], 
           Thickness[Large]], 
          Line[CompressedData["
1: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
quD//1/y/wD3HUiP
           "]]}, "Charting`Private`Tag$4268#3"], 
        Annotation[{
          Directive[
           Opacity[1.], 
           RGBColor[0.922526, 0.385626, 0.209179], 
           AbsoluteThickness[1.6], 
           Thickness[Large]], 
          Line[CompressedData["
1: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
CtS1M0y+y9Px//+3/gfPPmGt
           "]]}, "Charting`Private`Tag$4268#4"]}}, {}, {}}, {
     DisplayFunction -> Identity, Ticks -> {Automatic, Automatic}, 
      AxesOrigin -> {0, 0}, FrameTicks -> {{Automatic, 
         Charting`ScaledFrameTicks[{Identity, Identity}]}, {Automatic, 
         Charting`ScaledFrameTicks[{Identity, Identity}]}}, 
      GridLines -> {None, None}, DisplayFunction -> Identity, 
      PlotRangePadding -> {{
         Scaled[0.02], 
         Scaled[0.02]}, {0, 0}}, PlotRangeClipping -> True, ImagePadding -> 
      All, DisplayFunction -> Identity, AspectRatio -> GoldenRatio^(-1), 
      Axes -> {True, True}, AxesLabel -> {None, None}, AxesOrigin -> {0, 0}, 
      DisplayFunction :> Identity, Frame -> {{False, False}, {False, False}}, 
      FrameLabel -> {{None, None}, {None, None}}, 
      FrameTicks -> {{Automatic, Automatic}, {Automatic, Automatic}}, 
      GridLines -> {None, None}, GridLinesStyle -> Directive[
        GrayLevel[0.5, 0.4]], 
      Method -> {
       "DefaultBoundaryStyle" -> Automatic, "DefaultMeshStyle" -> 
        AbsolutePointSize[6], "ScalingFunctions" -> None, 
        "CoordinatesToolOptions" -> {"DisplayFunction" -> ({
            (Identity[#]& )[
             Part[#, 1]], 
            (Identity[#]& )[
             Part[#, 2]]}& ), "CopiedValueFunction" -> ({
            (Identity[#]& )[
             Part[#, 1]], 
            (Identity[#]& )[
             Part[#, 2]]}& )}}, 
      PlotRange -> {{0., 12.56637035790263}, {0, 1}}, PlotRangeClipping -> 
      True, PlotRangePadding -> {{
         Scaled[0.02], 
         Scaled[0.02]}, {Automatic, Automatic}}, 
      Ticks -> {Automatic, Automatic}}], 
    Placed[
     Unevaluated[
      LineLegend[{
        Directive[
         Opacity[1.], 
         RGBColor[0.368417, 0.506779, 0.709798], 
         AbsoluteThickness[1.6], 
         Thickness[Large]], 
        Directive[
         Opacity[1.], 
         RGBColor[0.880722, 0.611041, 0.142051], 
         AbsoluteThickness[1.6], 
         Thickness[Large]], 
        Directive[
         Opacity[1.], 
         RGBColor[0.560181, 0.691569, 0.194885], 
         AbsoluteThickness[1.6], 
         Thickness[Large]], 
        Directive[
         Opacity[1.], 
         RGBColor[0.922526, 0.385626, 0.209179], 
         AbsoluteThickness[1.6], 
         Thickness[Large]]}, {"R = 0.1", "R = 0.3", "R = 0.6", "R = 0.97"}, 
       LegendMarkers -> None, LabelStyle -> {}, LegendLayout -> "Column"]], {
     Right, Right}, Identity]]& ],
  AutoDelete->True,
  Editable->True,
  SelectWithContents->False,
  Selectable->True]], "Output",
 CellChangeTimes->{{3.763854314308413*^9, 3.763854385367606*^9}, 
   3.763854434976439*^9},ExpressionUUID->"5fad0582-b36b-4421-bd97-\
61f9b5de2e02"]
}, Open  ]],

Cell[CellGroupData[{

Cell["What\[CloseCurlyQuote]s up with the Evaluate above", "Section",
 CellChangeTimes->{{3.56063459398523*^9, 
  3.5606345981554685`*^9}},ExpressionUUID->"b94a62dc-aba5-478e-8ce5-\
45ebfd8538dc"],

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
  3.560634620964773*^9}},ExpressionUUID->"a5eafa9f-b275-4635-a095-\
90caf1d2bf97"],

Cell[BoxData[
 RowBox[{"{", 
  RowBox[{"1", ",", "x", ",", 
   SuperscriptBox["x", "2"]}], "}"}]], "Output",
 CellChangeTimes->{3.5606340540968084`*^9, 
  3.560634200253148*^9},ExpressionUUID->"5c5ce19f-9f36-4709-b234-\
91ad22ccca8a"],

Cell[BoxData[
 RowBox[{"{", 
  RowBox[{"1", ",", "x", ",", 
   SuperscriptBox["x", "2"]}], "}"}]], "Output",
 CellChangeTimes->{3.5606340540968084`*^9, 
  3.560634200253148*^9},ExpressionUUID->"b8599676-8ec4-4d41-b2cf-\
220fb624a6df"],

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
 CellChangeTimes->{3.5606340540968084`*^9, 
  3.5606342002581477`*^9},ExpressionUUID->"881b4459-f60d-4dd3-bc62-\
19c61b04074e"],

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
 CellChangeTimes->{3.5606340540968084`*^9, 
  3.560634200263148*^9},ExpressionUUID->"5d53eaed-5a3e-48ac-9726-\
07da8098381d"],

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
 CellChangeTimes->{3.5606340540968084`*^9, 
  3.5606342002681475`*^9},ExpressionUUID->"dfedbcc4-d6bc-4704-a78f-\
54f2494595c5"]
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
  3.5606449906764*^9}, {3.560645022313466*^9, 
  3.5606450340134864`*^9}},ExpressionUUID->"2743a5e7-14bc-4026-81cb-\
2ad7216621b6"],

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
3rmGMZ+HY5eHHnlpzFjIw2UF7Fq7m3ESD9vfvlTdb884hYd6GS+HUg/GmTzo
zhi6/3Ew41wekvPny1VHMy7koWbPuC1p+2mezcNWflylWTLjCh7cq8a0fM9i
XMvD5nP/RrrmM27k4ZOdbcWd64ybeFC+tMbvXwXjNh68K8VJo+sZd/LQq6d9
dMgLxj28vvO2VvfTVpqfh+K97cmp0Z2MpUKR2+9OknwvY9lQRM1Wq/WTZP4G
hVCIvon1imQYK4Vitf0c98ejGauForA+/lG1ImPNUBiXXe08Pp2xdiheT9XT
WavJGKGYrbl5faU2Y/1QiH0uJEzVYWwUig95rw9uXcfYNBTmB2a8MzdmbBGK
8R5Hh6zcwdi+L/7VrOjvFow5oTCdVPaVZ8/YNxQT3XQftriSXyMUNRvEN8f7
MOaHIn371fWqwYyFoShZ8m7goAjGSaHYtNk/5kos45S+15s01h1ixpmh0ArM
NT2SxDg3FFmFB56Xn2BcGApsCDlRlsa4JBT93Y7qHDzDuCIUF/cccdTOZVwb
iim7r5aevcS4MRQOnPruz1cZN4VieoPVxQEljNtC0aNwMO19KePOUOzq3so7
Ucm4JxSz7hv9Vb5P/pUw6N8d0OD9gLFUGLhFldcOP2IsG4bUkKd+sU+p/mF4
O9W80uAl1T8MwkMcztNmqn8YwvtrLFz0luofhsjLZ99YtlH9w6B2ddK6ne1U
/zDsa78xX4n8WfphmFTY7pPXSfUPg53DhA558neZhsFncOc+HfJ/WfS93o2F
95eSP8w+DF0fPvb0J/8YJwxNR9ZVH+yl+odBJ6dgbjf5zbhhmBHcMkKF/Gn8
MAgkr2yZRP41YRgMj+7tfE2cFIZNejaPPMnvlhIGDSfHPw+IM8NQrRu65w9x
bhhqDnT//EZcGIYV822qLxOXhOFS/ZkXq4krwlAV2z33JOWrDcPIsusNFfT+
Gvte/3pRfTH555r69B38tDKI9LT1PZ9nh2dJk97OMAxLX5lv3UP1D4MIJz5F
/6D6hyNja3ZvYBfVPxzd2ft/LvtK9Q/HRc8LI6o+U/3DsX9clI3KR6p/OKrO
X1c2/ED1D4fGu8m+Ou+o/uHYdTLmwIA3VP9wnJPqPH+gieofjr2GBr+6nlP9
w+Hx+XC+8hOqfzgCLtaPnfyQ6h8O3vjXNh9qqf7hUD946GX4Pap/OBT00qs+
3aH6hyPJ7KCb2m2qfzi0dYoV512n+ocjVWu2kswVqn84Eq9dKb+cR/UPh3NB
o+2881T/cMyQTzcJyaT6hyPG4EHb8VSqfzhcEg5x449R/cPxO+2cr/FBqn84
2vjL575LoPr3Pc97DTJG0VT/cCy4bMoRhFL9wzFZ9eetYwFU/3BM0JvqwvOk
+odjYY/HiyXOVP+++s09E1xpS/UPx5J+h2/OMqf6h6MjbJyC/TaqfwSqzv7+
7ruR6h+Bba9+11qsofpHQMcvR0lpBdU/Ap4zvM0LFlD9I/BiCWfg9FlU/wis
uukodlWh+kdgwcVHYaIJVP8IoCNnR5wc1T8CoXN8D1gPofpH4IL01KujJKj+
Ebh8Y7DhyR9sPzKNQLHyg9ohH2n/j0Cpt0fNxhba/yNQtF6+lvOE9v8I1O6Q
MOPU0P4fARn3k382lNH+H4FGaztIF9H+3/f+/xTmns6l/T8COfKfniml0/4f
Af6JhUaBR2n/j4D4rfBYoZD2/whYlF0xehRB+38EDGUU/zz0p/0/AvZf784r
dKX9PwJ5523Cgmxo/4/ARY3hPNUdtP9HoO6FzfW8DbT/R8D5mvP9abq0/0eg
0I6vF7SQ9v8ILLO0zL+qTvt/BCaJ3lx4qUj7fwRO1s+pey9H+38kvldEpD8f
RPt/JE7dQ3lBL53/IsFRLC8N+ETnv0gMWO63cMZrOv9FosMjJ6fkIZ3/IiF3
4lSpbiWd/yIxU9FhSG4xnf8iMX/425FDcun8F4kf6YVuG0/R+S8SL5tWFnMP
0vkvEh828sJToun8F4mjWiq7zwcytojE7ce2jWdcGdtH4sXwEfyDVow5kciR
cfjjtpWxbySu7dOuXK5P/rhISDllBfQuYcyPREGcUVrmLMbCSDzUnfhAX4lx
UiTO/TVMfCbHOCUSjb5OXpYDGWdGwmTe6oHPuun8H4mTS57e1/9A5/9IKC3Y
s/vsc/KTRSL4hOZSyRrGFX3Pe/O9L0Y3GddGQse4asiBPMaNfetlD6VrTzNu
ikS9fnpA/yTGbZFYs+9n88wYxp2RWO8kuLUpkHFPJETGY046upD/LQqF8roS
PAvGUlEYMj3LUriZsWwUBAvurz6ix1ghCnIKCjOTFzJWikL40Gpxshrd/6Lw
fcrw7qPj6f4XhZJPDxr2y9D9Lwryzm/TY/7S/TkKK5RetgZ1MtaPQquT0jDX
13SfjoJQ/bHQvIGxaRT8nL68Myyn+3UU5vAmRy0pZGwfhZbptc3Tz9B9OwqX
e2c5jD7G2DcKQ4dNEknG0/07CmOvaZd/DWHMj8LxgjqfFje6j0dBcVaH3CNr
xklRMFq0QvLuVrqfR0HBZXberbWMM6Mw8OyD2GuL6b4ehaW9n7qKNBgXRuFL
QdeW65Po/h6FwCf9RpaNYFwRhccWTYLafnSfj0Llz4Eazd9YP6IxCrwbiYbd
b6m/EYWaGduM5RsZt0WhQans0IIq6ndEQXfhgCDzYsY9UZgo2WIWf576H3x8
z3whKkthLMVHgdckrwGJ1A/h432mn7lBBGMFPgJ3+KYd8aH+CB8jAzYd+7qP
sRofb/q1HjYxo34RHzNUHn6+tpGxNh8TC/d9nqtD/SM+ks+dbsuZz1ifj8RU
HXVtVeon8fFJeL7fXQXGpnwcPTC2yH4o9Zf4WFljfXLkX9bfsuej20T7b1kn
9dv4UFneOy6yhbEvH34VtUs3P6L+Gx/acRlZ6pWM+XwMKtPMHFFM/Tg+FmS8
8++XwziJj68P5WwkUqk/x8fq5+VpMgcYZ/ZxcVugKp/6dXwcEWhqbAxgXNin
T2XmxzAX6t/x8e2hzr87lowr+Gian3ds/Fbq5/ExtDX5X4A+40Y+fKKkLDuW
Un+Pj1HCuh7HOYzb+l5fv/xPrzL1+/jIu3P09OExjHv4sOv5pqIvTf3PaMzK
tMgZ9Jf1V6Wi8eeYnc/DL9QPjsa4i9zz+W8ZK0TD6JdyRNoT6g9H4+PHa+qn
qxmrReNV/M3qyzepXxyNA6dTjj65xFg7Go1f60uGnaH+cTT0HF/Ym5xgrB+N
F54G18+IqZ8cjanTiz/IRzE2jcbquKYxCQHUX45G5/sQh4kcxvbRMPjtL1Ns
Q/3maFxYXaPssoOxbzRSNx15MG8j9Z+jceXLREivYsyPhvSh6/Fdi6gfHY3k
UNnmLzMZJ0UjV67OtL8y9aejsa7/5zGqYxlnRqM5U7B0twz1q6NRsEiyNaMf
48JoRHW91RrUTfOLaBi6DVzj28G4IhpVJe4L/zbTPCMahzNClZMeM26Mhlll
7bQ11TTfiManOt1dUrcZt0Vj+ZGhL14W0rwjGsf0z5dWnmfc05fPqZ9GZRrN
P2LwS36e2osjjKViMPpVef1AEc1DYnB2yCm9VVGMFWJw2X2I6EAQzUdicOBY
8v3fHozVYiDM4Mj5OdC8JAZL1nRypC0Za8cg4eyfP7nbaX4Sg/3urfecNjLW
j4FXyL7O5atpnhKDV0+u+KssY2waAwGXF6Q0n+ZLMXi54M2QeeqM7WNguTpU
c8cUmjfFQFM3oN9BBca+MZC+zhG0jaD5UwxUfvKbjAYz5sfAIcZNpuYvzeNi
sE/CStH6B+OkGIT4K6oM+0TzuRiELelVr37LODMGp2c/XXnqBc0rY5Dqscg1
4SHjwhjI1UwpE1XT/DKmb7/U3XCmjHFFDDbVP5d7co3mmTF4Nq9BSfEy48YY
PKg/w/M7T/PNGFx8FbGyPZ1xW58+yzk2Hsk074yBXqTCz5FJjHtiYP981+A7
Qpp/xuIp78YhcTRjqVhIGhdc9AyleWgs/vXfa+EcwFghFovXp2UGetJ8NBZ/
3/SIU50Zq8ViQGaa6is7mpfG4hc32WGeBWPtWEi7HbU9toPmp7HYFTJIcZIJ
Y/1YnDolcyTfkOapsbiRefiV1RrGprEwG7yrazpovhqL/MKbLySXMLaPhWu/
ASd/zKd5ayyOa01eJTGbsW8s2lyeVCip0fw1Fl/W3V5oqsyYH4v2qMWi9IlU
/1h4Fdg9HzqW6h+Lqhq9ifyRVP9YLCk7sWWCDNU/FsPHyEWXDaL6x6J6k+y1
yH5U/1h8FzR9M/9N/oVYzG5P0dzYzbgiFjK9a723fCU/Qyw2K6ffcfvIuDEW
rwfunZ7eRv6GWOg0yiV9aWHcFovnOSMmbnlFfodY/KlJvVT9lHFPLKLav9iZ
PyL/gwACiwHzBj1gLCVAtlOpQlk1+SEEcN8pMeloJWMFAeIyHMEvI3+EAKNV
UsIFNxmrCXBPenJ7xjXySwjgKbfZ6+kVxtoCGPoKVFQuk39CgGRJmd7wi4z1
BTjQv/fH7/PkpxBAB04TBWcZmwrQ8s3WcV4m+UsEOJTV+OZzGmN7AaByOrr0
JPlNBOjUPrYz9wRjXwEunAoxzTtK/hMBqh72D69OYswXIOza3Rd/yT8nFMAv
ysNubSLjJAECdkQpZgjJnyKA7ODoQYrxjDMF2H/js2J2LPlVBJC/rGZvHM24
UIDSW4deDyO/UIkAu/4eim8m/1yFAJLbA53ukX+utk/PZGHgffLPNQogOjj2
xjvyzzUJ8MPRSEuB/ExtApgscX++5z+/kwBFf88XXCf/XI8AOfz55Vrkl5KI
w+o306VukX9OKg7G13OC7MhvJRuHqFsfVJXJj6UQh4xvXZLfyb+lFIfsP62j
XpG/Sy0O/UIf7Wgi/5dmHB7ufvSgh/xh2nEI+PAjRI0YcXi2aI2lK/nJ9OMg
o1PrXU3+M6M4DJqQXKJLbBoHh0lFK2rIr2YRh+CBGl/cie3jAPmux7OIOXFI
Vxr/7R/543zj8Pdisu57Ym4cwgZFlv/H/DgMHVUd3O8/P14c2oUejprESXH4
1eYt8P7PnxeHynn1zfXEmXH4OinMUZ/eb24cTj4LmdFAXBgHrX43J/iQ3pI4
DLFdpjuXnkdFHOy/vz3Wn55fbRyE0Tka7cSNcWjO5n/6QM+7KQ5TbMzf9iP/
XFscnnSMl9WkenXGocz7tIsX1bMnDiaPmyUeUL0l4jF3UW75avo8SMWj5UrH
jVr6vMjGY9tk1w53+jwpxMN/j7ThTPq8KcWjeqXg5W/6PKrF49Xr4lNv6POq
GY8bxuZHW+jzrB0Pk38aZT/p8454xK5+qjSdvg/68fB9Pvq8I31fjOKhbhDm
dIe+T6bxsN18fdcS+r5ZxEPeeEdAKX0f7ePhl/q8ypa+r5x4jP9Rtk7xINU/
HgYno7o/0vedGw/3D1H1DfR7wI9HzQalFw/o90IYj/aiY/Jt9HuSFI+IuiXe
o05T/eMxeMiMAab0e5QZD/u3EcUX6fcqNx5xY/acUMmh+sfj98HczHP0e1cS
j2+3rJ9uoN/Dinjct984b+BVqn88Lj6Ym1NPv6eN8fCovLLpCv3eNsUjSxgg
d5l+j9vi0fWs63sl/V53xsPoWkxPF/2e9/S9fwFfYRH93ksk4OgdxS1C2g+k
ErCiwzJL4hnVPwHT168bw6f9RCEBu+6fS1J9Q/VPwKY7+rOf036kloC6kxcb
Mmm/0kxA6QnLaAHtZ9oJSOBlroui/Q4JWLjoktxh2g/1EzDTO6H5Ju2XRglI
2zY2r99g2v8TIGiRDDel/dYiAb9ONRuV035s3/d+J40cY0D7NScBFYZlNa20
n/sm4OWE/v6Hab/nJuB15RFZazoP8BOw3EgzYRWdF4QJGHd9zpclWrT/J2Cf
oHbuOjpvpCRA64OcoQudRzITMLrf9SVn6LySm4CGueY9v+k8U5iAletWhdjR
eackAdLngitb6TxUkYBKbnNtEJ2XahPQ/3ZvvMZeOv8lYLXV6D+f6bzVlAD9
9QtH3aXzWFsCBu8bX11M57XOPn1ntZTK6DzXk4DCrrMD39B5T0KIH4N2eI0T
MR4gRIpTqZ0tnRelhDA0Uam7Q+dJGSHGWu48iww6Hwoh4n1pr6Hz6Cghjp2Z
EO1F51UFIdYezvGde53xRCGyIlVzJcvp/ChEYcNhlQ46D6sIsSivpOoDnZfV
hDha/PHgPzpPzxRiTKxMkHornS+FuLo6meNI53EtIcqmFdvcovO6thDKXdKG
c/4xXiaESsgthYt03ocQB6TSi9fLMtYTYkp2/xk/6b6gL8S069kbr9F9wlAI
6al/Jh2i+4aRELOS70dG0n1kixD2kwN8Y/+7rwjh2tvYfJruM2ZCvFHXvvCQ
7jsWQoSH7mkYb8rYRgjdR9HaXnRfshfi8FTrqjd0n3ISYmHOQO99nnS/EeLn
xG5VyWDGnn3Pizet4gLd13yFkHR5s8qL7nOBQoR0vQ/bcJTuP0L8zjBwW3Ka
cbgQ8QcCupbm0H1ICGiv/m58hbGgr957q3YG0n1TKEQOuEOL6D66X4gb0jM/
DmtknCTEljFNbzxfMz4mhEVSz6PPdN9NEaKBq5ARTPfhtL7PywZV7Sn96T4t
xJXH+k6P6T6dLcS7KW9UTtJ9O1cIq0kHdYPpPp4vRDFn/mmXWXTfFkJuSamG
uzbjYiG21XDz+XTfL+n7vAben3iR+gGlQtzHMp1P1C+oEGJ6dMifZbaM7wlx
vZ0z8wT1G2qFyGiWyhwZyLhBiA6u2bpD1K9oFKJ54ZG22YmMnwsxP2zQ7kbq
dzQJMSe/JzCR+iFv+j6PaY8nWVxm3Nb3fQkYM2rFLcYdQtx2nTt/1n3y8wnx
LfbMhllPGXf1PW+/QQtWtDLuEWKPYeWVPV8Z/xZCarvHWRH1eyRE+PcvqLGe
+kEDRChINh2uOpaxlAhN1rbj+FMZy4hQv/hH6U/qN8mKEFuy7pn/MsajRHij
y582dB1jBREuXi1xPEP9rIki7Hvx1tPUivx1InTMuztotCtjFREMFim3vqJ+
mZoISnyfR4XUT5spwgpFzSPJ1G/T7Hu9/ZFfE6kfpyXCpwB+8gHq12mLUHpD
3iKN+nnLRJAf2/DlBvX7IMLbKIxso36gngg1vUl+E98w1hfBtKnljdkXxoYi
KL9vH5pF/UYjEXzqlqdLyLB+5BYRZuioOliPo36lCOUlOTJ11M8063t+pSk6
67SofynC6Fq/orvUD7URoeSch4bpJsb2IoSXBul8on6qkwh2Ycuy4xzITyfC
+veDxy30Zewpwiy1D/PfUb/WV9R3vjyRkUL93MC+53sgYZLVSfLfidDq/3i5
Rg7jcBG6byzP+UX9Yn7f85y3aGw99ZMFImxXeTvuAvWbhX3P492onQdaGe/v
ex6eK/1CuhgniaChFT3WtT/rZx8T4eyHm/XWstQ/F+FQtY3BbkXGaSI8upE0
ftdM6qeLsOOy5nOzJYyz++qxJnuGlT7110UwNNc+6rCNcb4IJuq5d7xsqN8u
gv60E3ph7oyLRTDbvjxdzKX+uwjqt/1DTtE8oFSEPf27LS/RvKCirx5yUi/v
0DzhXt/73VIU+pTmDbUiuBc9ftFB84gGEUbOawr4S/OKRhE85o1pG97C+Hnf
90McmD3pC/nzRLjLf2qs/o/xGxF0Xl/fozWM5jl99fMJM1s6gXGHCHV1RtUr
ZtB8R4RQOeWFKxYx7hJhlXTluMWrad4jQqfo68/ZJox/i5A3QWP7ZEua/4ix
k9uSO8SV8QAxBg3xjvhI8yIpMSovaWyuonmSjBjpN3USk2neJCuG0Obzbad0
xqPEKKx3NJ+bT/MiMdK4Xc86aJ41UQybQ/X5J2jepSSGRrGdxZoXjFXESJFS
3dpC8zI1MYasOyvl1cN4phixflc+99K8TVMMtzC9YE95xlp973eJ3/Rmmtdp
iyF7rGw3ZjNeJsbXdc1i0VKaP4ohb/BoUQPNA/XE2D9Y+trgbTSPFGNE5Bqx
hjVjQzFq3t1WXcmh+aQYpVPnvdcJYrxFjNf/bq2dH0PzSjGW6Gvlyh1ibCbG
hlVPE17RvNNCjG9WZ0wO0zzURowBc9fYr7xG80wxpH0GLamjeaqTGP+SBy3Y
+Ijmm2KsNNEsu0TzWM++57N27bbBn2neKYbMhu8mur8YB4qhHvdoht1gmn+L
0fw3YpW7PONwMbYNPyNjN5nm4X318e73BRqMBWIorOOY9V9E83Ex1qgPK8qi
efR+MY5fnO23cCPNy8UQ9/OTzKR59rG+v/dpL/9D8+4UMXwPftJcxGGc1qdX
xirHJIDm6X3P7+mZ3M2RjLPFcD5989R8Ec3XxditpNPznebx+X18wFPxMM3r
C8UQxdhFTbzAuFgMj+DPaSE07y8Rg3u19P1N8gOUirF6cVTla/ILVIhhd/xB
YTP5Ce711Wuh4azr5DeoFcNo1MXjPuRHaOhbn/CBN6yb5vVirJs50iSE/AzP
xTi/Iib2HvkdmsR4HDMso4v8EG/E4GUUKHeTX6JNjOTTCkH15Kfo6Pv8Ka9a
GE1+i04xlhk9qxm7kHGXGKkfplUHk1+jp+/7qTQ27xr5OX731cPaUqqB/B4S
idCeEr71JvlBBiSi2uKpSgT5RaQSwdPN6j/ZjrFMIp6bzQ6KJ7+JbCI2fT+n
Uk9+lFGJSJXlxXaQX0UhESNMp655Sn6WiYnorUH7UfK7KCXiodlt+blCxiqJ
MJdv2nmY/DJqiagwUjFvID/NzES0Hgq91kx+G81ELNLcM+Em+XG0EpEXdmyi
O/l1tBPho51h30V+nmWJWC0ZmrWW/D5IxN85dbGO5AfSS4Tai7fX95BfSD8R
d95VdE2tYGyYiEvhq18XkN/IKBGfw7+tmFDHeEsi+uvqlG34z6+UCFPNoHmb
yM9kloizo16tmfyC/Et9z/epsOwa+aFsEjF1SIGnOvml7BMx9qHvJFvyUzkl
4tndwQJn8ltxEvFjbEbCKvJjeSbCedfF3lbya/kmokgxLXU7+bkCE3HzwQSL
A+T34ibim3XL8BTyg4UnYv3urjgf8ovxE3H+cOCNCeQnEyQiJvQ1X0B+M2Ff
vZ5WPKgkP9r+RNjKyUXXk18tKRG66i1HssjPdiwRyuPSew3+888lwuPG0BNX
idMS8cBiWPD3Pv4fesmPrA==
     "]]}, 
   {Hue[0.9060679774997897, 0.6, 0.6], LineBox[CompressedData["
1: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
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
   3.560644812278946*^9}, 
   3.560645036774691*^9},ExpressionUUID->"321281db-2079-4e25-91e0-\
439d7a4871ee"]
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
 CellChangeTimes->{{3.56067645862833*^9, 
  3.560676460828333*^9}},ExpressionUUID->"91c4a048-984f-4729-934c-\
182c0edc0edb"],

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
 CellChangeTimes->{{3.5606764639743376`*^9, 
  3.5606764883236485`*^9}},ExpressionUUID->"4a514391-82d1-4cdb-802e-\
0cb43d5d301e"]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"etalonFig2", " ", "=", " ", 
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
    RowBox[{"PlotRangePadding", "\[Rule]", ".05"}], "\[IndentingNewLine]", 
    ",", 
    RowBox[{"Frame", "\[Rule]", "True"}], "\[IndentingNewLine]", 
    RowBox[{"(*", 
     RowBox[{",", 
      RowBox[{"ImageSize", "\[Rule]", "400"}]}], "*)"}], 
    "\[IndentingNewLine]", ",", 
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
      "}"}]}]}], "\[IndentingNewLine]", "]"}]}]], "Input",
 CellChangeTimes->{{3.5606765015056667`*^9, 3.560676543493726*^9}, {
   3.5606765927797956`*^9, 3.5606766615958924`*^9}, {3.560676761100033*^9, 
   3.5606767743970513`*^9}, {3.5606769610003138`*^9, 3.56067697249133*^9}, {
   3.560677085108489*^9, 3.5606771738956137`*^9}, {3.5606772239676843`*^9, 
   3.5606773867079134`*^9}, {3.5606774327269783`*^9, 
   3.5606774455289965`*^9}, {3.56067755437715*^9, 3.560677574276178*^9}, {
   3.5606777008954315`*^9, 3.560677753207505*^9}, {3.560677793267562*^9, 
   3.56067790549572*^9}, {3.560716809121153*^9, 3.560716822718172*^9}, {
   3.763854671763515*^9, 3.763854672218876*^9}, 
   3.7638547670728483`*^9},ExpressionUUID->"51b1da0f-2320-4a60-aaad-\
e2a52d4d30de"],

Cell[BoxData[
 GraphicsBox[{{{}, {}, 
    TagBox[
     {RGBColor[1, 0, 0], Thickness[Large], Opacity[1.], 
      LineBox[CompressedData["
1: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

       "]]},
     Annotation[#, "Charting`Private`Tag$4511#1"]& ], 
    TagBox[
     {RGBColor[0, 1, 0], Thickness[Large], Opacity[1.], 
      LineBox[CompressedData["
1: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
2BTxSuNsq2kNNv7/+5v/A0brWqE=
       "]]},
     Annotation[#, "Charting`Private`Tag$4511#2"]& ], 
    TagBox[
     {RGBColor[0, 0, 1], Thickness[Large], Opacity[1.], 
      LineBox[CompressedData["
1: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
E0ZJTi9chjEfV87R2xAXRv//Pdn/AfM1z3I=
       "]]},
     Annotation[#, "Charting`Private`Tag$4511#3"]& ], 
    TagBox[
     {RGBColor[1, 0.5, 0], Thickness[Large], Opacity[1.], 
      LineBox[CompressedData["
1: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
+f/WQFi2SOvPWU70//+P+R9dQ+8l
       "]]},
     Annotation[#, "Charting`Private`Tag$4511#4"]& ]}, {}, {}},
  AspectRatio->NCache[GoldenRatio^(-1), 0.6180339887498948],
  Axes->{True, True},
  AxesLabel->{None, None},
  AxesOrigin->{0, 0},
  DisplayFunction->Identity,
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
  Frame->{{True, True}, {True, True}},
  FrameLabel->{{None, None}, {None, None}},
  FrameTicks->FrontEndValueCache[{{Automatic, 
      Charting`ScaledFrameTicks[{Identity, Identity}]}, {Automatic, 
      Charting`ScaledFrameTicks[{Identity, Identity}]}}, {{Automatic, {{0., 
        FormBox[
         TemplateBox[{0., 0.}, "Spacer2"], TraditionalForm], {0.01, 0.}, {
         AbsoluteThickness[0.1]}}, {0.2, 
        FormBox[
         TemplateBox[{0., 0.}, "Spacer2"], TraditionalForm], {0.01, 0.}, {
         AbsoluteThickness[0.1]}}, {0.4, 
        FormBox[
         TemplateBox[{0., 0.}, "Spacer2"], TraditionalForm], {0.01, 0.}, {
         AbsoluteThickness[0.1]}}, {0.6, 
        FormBox[
         TemplateBox[{0., 0.}, "Spacer2"], TraditionalForm], {0.01, 0.}, {
         AbsoluteThickness[0.1]}}, {0.8, 
        FormBox[
         TemplateBox[{0., 0.}, "Spacer2"], TraditionalForm], {0.01, 0.}, {
         AbsoluteThickness[0.1]}}, {1., 
        FormBox[
         TemplateBox[{0., 0.}, "Spacer2"], TraditionalForm], {0.01, 0.}, {
         AbsoluteThickness[0.1]}}, {-0.2, 
        FormBox[
         TemplateBox[{0., 0.}, "Spacer2"], TraditionalForm], {0.005, 0.}, {
         AbsoluteThickness[0.1]}}, {-0.15, 
        FormBox[
         TemplateBox[{0., 0.}, "Spacer2"], TraditionalForm], {0.005, 0.}, {
         AbsoluteThickness[0.1]}}, {-0.1, 
        FormBox[
         TemplateBox[{0., 0.}, "Spacer2"], TraditionalForm], {0.005, 0.}, {
         AbsoluteThickness[0.1]}}, {-0.05, 
        FormBox[
         TemplateBox[{0., 0.}, "Spacer2"], TraditionalForm], {0.005, 0.}, {
         AbsoluteThickness[0.1]}}, {0.05, 
        FormBox[
         TemplateBox[{0., 0.}, "Spacer2"], TraditionalForm], {0.005, 0.}, {
         AbsoluteThickness[0.1]}}, {0.1, 
        FormBox[
         TemplateBox[{0., 0.}, "Spacer2"], TraditionalForm], {0.005, 0.}, {
         AbsoluteThickness[0.1]}}, {0.15, 
        FormBox[
         TemplateBox[{0., 0.}, "Spacer2"], TraditionalForm], {0.005, 0.}, {
         AbsoluteThickness[0.1]}}, {0.25, 
        FormBox[
         TemplateBox[{0., 0.}, "Spacer2"], TraditionalForm], {0.005, 0.}, {
         AbsoluteThickness[0.1]}}, {0.3, 
        FormBox[
         TemplateBox[{0., 0.}, "Spacer2"], TraditionalForm], {0.005, 0.}, {
         AbsoluteThickness[0.1]}}, {0.35, 
        FormBox[
         TemplateBox[{0., 0.}, "Spacer2"], TraditionalForm], {0.005, 0.}, {
         AbsoluteThickness[0.1]}}, {0.45, 
        FormBox[
         TemplateBox[{0., 0.}, "Spacer2"], TraditionalForm], {0.005, 0.}, {
         AbsoluteThickness[0.1]}}, {0.5, 
        FormBox[
         TemplateBox[{0., 0.}, "Spacer2"], TraditionalForm], {0.005, 0.}, {
         AbsoluteThickness[0.1]}}, {0.55, 
        FormBox[
         TemplateBox[{0., 0.}, "Spacer2"], TraditionalForm], {0.005, 0.}, {
         AbsoluteThickness[0.1]}}, {0.65, 
        FormBox[
         TemplateBox[{0., 0.}, "Spacer2"], TraditionalForm], {0.005, 0.}, {
         AbsoluteThickness[0.1]}}, {0.7, 
        FormBox[
         TemplateBox[{0., 0.}, "Spacer2"], TraditionalForm], {0.005, 0.}, {
         AbsoluteThickness[0.1]}}, {0.75, 
        FormBox[
         TemplateBox[{0., 0.}, "Spacer2"], TraditionalForm], {0.005, 0.}, {
         AbsoluteThickness[0.1]}}, {0.85, 
        FormBox[
         TemplateBox[{0., 0.}, "Spacer2"], TraditionalForm], {0.005, 0.}, {
         AbsoluteThickness[0.1]}}, {0.9, 
        FormBox[
         TemplateBox[{0., 0.}, "Spacer2"], TraditionalForm], {0.005, 0.}, {
         AbsoluteThickness[0.1]}}, {0.95, 
        FormBox[
         TemplateBox[{0., 0.}, "Spacer2"], TraditionalForm], {0.005, 0.}, {
         AbsoluteThickness[0.1]}}, {1.05, 
        FormBox[
         TemplateBox[{0., 0.}, "Spacer2"], TraditionalForm], {0.005, 0.}, {
         AbsoluteThickness[0.1]}}, {1.1, 
        FormBox[
         TemplateBox[{0., 0.}, "Spacer2"], TraditionalForm], {0.005, 0.}, {
         AbsoluteThickness[0.1]}}, {1.15, 
        FormBox[
         TemplateBox[{0., 0.}, "Spacer2"], TraditionalForm], {0.005, 0.}, {
         AbsoluteThickness[0.1]}}, {1.2, 
        FormBox[
         TemplateBox[{0., 0.}, "Spacer2"], TraditionalForm], {0.005, 0.}, {
         AbsoluteThickness[0.1]}}}}, {Automatic, {{0., 
        FormBox[
         TemplateBox[{0., 0.}, "Spacer2"], TraditionalForm], {0.01, 0.}, {
         AbsoluteThickness[0.1]}}, {2., 
        FormBox[
         TemplateBox[{0., 0.}, "Spacer2"], TraditionalForm], {0.01, 0.}, {
         AbsoluteThickness[0.1]}}, {4., 
        FormBox[
         TemplateBox[{0., 0.}, "Spacer2"], TraditionalForm], {0.01, 0.}, {
         AbsoluteThickness[0.1]}}, {6., 
        FormBox[
         TemplateBox[{0., 0.}, "Spacer2"], TraditionalForm], {0.01, 0.}, {
         AbsoluteThickness[0.1]}}, {-2., 
        FormBox[
         TemplateBox[{0., 0.}, "Spacer2"], TraditionalForm], {0.005, 0.}, {
         AbsoluteThickness[0.1]}}, {-1.5, 
        FormBox[
         TemplateBox[{0., 0.}, "Spacer2"], TraditionalForm], {0.005, 0.}, {
         AbsoluteThickness[0.1]}}, {-1., 
        FormBox[
         TemplateBox[{0., 0.}, "Spacer2"], TraditionalForm], {0.005, 0.}, {
         AbsoluteThickness[0.1]}}, {-0.5, 
        FormBox[
         TemplateBox[{0., 0.}, "Spacer2"], TraditionalForm], {0.005, 0.}, {
         AbsoluteThickness[0.1]}}, {0.5, 
        FormBox[
         TemplateBox[{0., 0.}, "Spacer2"], TraditionalForm], {0.005, 0.}, {
         AbsoluteThickness[0.1]}}, {1., 
        FormBox[
         TemplateBox[{0., 0.}, "Spacer2"], TraditionalForm], {0.005, 0.}, {
         AbsoluteThickness[0.1]}}, {1.5, 
        FormBox[
         TemplateBox[{0., 0.}, "Spacer2"], TraditionalForm], {0.005, 0.}, {
         AbsoluteThickness[0.1]}}, {2.5, 
        FormBox[
         TemplateBox[{0., 0.}, "Spacer2"], TraditionalForm], {0.005, 0.}, {
         AbsoluteThickness[0.1]}}, {3., 
        FormBox[
         TemplateBox[{0., 0.}, "Spacer2"], TraditionalForm], {0.005, 0.}, {
         AbsoluteThickness[0.1]}}, {3.5, 
        FormBox[
         TemplateBox[{0., 0.}, "Spacer2"], TraditionalForm], {0.005, 0.}, {
         AbsoluteThickness[0.1]}}, {4.5, 
        FormBox[
         TemplateBox[{0., 0.}, "Spacer2"], TraditionalForm], {0.005, 0.}, {
         AbsoluteThickness[0.1]}}, {5., 
        FormBox[
         TemplateBox[{0., 0.}, "Spacer2"], TraditionalForm], {0.005, 0.}, {
         AbsoluteThickness[0.1]}}, {5.5, 
        FormBox[
         TemplateBox[{0., 0.}, "Spacer2"], TraditionalForm], {0.005, 0.}, {
         AbsoluteThickness[0.1]}}, {6.5, 
        FormBox[
         TemplateBox[{0., 0.}, "Spacer2"], TraditionalForm], {0.005, 0.}, {
         AbsoluteThickness[0.1]}}, {7., 
        FormBox[
         TemplateBox[{0., 0.}, "Spacer2"], TraditionalForm], {0.005, 0.}, {
         AbsoluteThickness[0.1]}}, {7.5, 
        FormBox[
         TemplateBox[{0., 0.}, "Spacer2"], TraditionalForm], {0.005, 0.}, {
         AbsoluteThickness[0.1]}}, {8., 
        FormBox[
         TemplateBox[{0., 0.}, "Spacer2"], TraditionalForm], {0.005, 0.}, {
         AbsoluteThickness[0.1]}}}}}],
  GridLines->{None, None},
  GridLinesStyle->Directive[
    GrayLevel[0.5, 0.4]],
  ImagePadding->All,
  Method->{
   "DefaultBoundaryStyle" -> Automatic, "DefaultMeshStyle" -> 
    AbsolutePointSize[6], "ScalingFunctions" -> None, 
    "CoordinatesToolOptions" -> {"DisplayFunction" -> ({
        (Identity[#]& )[
         Part[#, 1]], 
        (Identity[#]& )[
         Part[#, 2]]}& ), "CopiedValueFunction" -> ({
        (Identity[#]& )[
         Part[#, 1]], 
        (Identity[#]& )[
         Part[#, 2]]}& )}},
  PlotRange->{{0., 6.283185178951315}, {0, 1}},
  PlotRangeClipping->True,
  PlotRangePadding->{{0.05, 0.05}, {0.05, 0.05}},
  Ticks->{Automatic, Automatic}]], "Output",
 CellChangeTimes->{
  3.5606779066107216`*^9, {3.560716813292159*^9, 3.560716823268173*^9}, 
   3.763854673097522*^9, 3.76385472964789*^9, 
   3.76385477008458*^9},ExpressionUUID->"7bad5299-53ce-465f-a205-\
79f4cd3fc247"]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"\[IndentingNewLine]", 
  RowBox[{"peeters`exportForLatex", "[", 
   RowBox[{"\"\<etalonFig2\>\"", ",", "etalonFig2"}], "]"}]}]], "Input",
 CellChangeTimes->{{3.763854731733067*^9, 
  3.7638547625994663`*^9}},ExpressionUUID->"dfe95048-08f1-4c05-aa5e-\
c372e297871c"],

Cell[BoxData[
 RowBox[{"{", 
  RowBox[{"\<\"etalonFig2.eps\"\>", ",", "\<\"etalonFig2pn.png\"\>"}], 
  "}"}]], "Output",
 CellChangeTimes->{
  3.763854775175489*^9},ExpressionUUID->"513e0e0d-b43e-4be6-8572-\
90b5c3e01858"]
}, Open  ]]
}, Open  ]]
},
WindowSize->{Full, Full},
WindowMargins->{{0, Automatic}, {Automatic, 0}},
FrontEndVersion->"11.2 for Mac OS X x86 (32-bit, 64-bit Kernel) (September \
10, 2017)",
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
Cell[1257, 32, 437, 13, 94, "Input",ExpressionUUID->"c5f011a9-1d99-4d3d-a391-75a0fe0aaf72"],
Cell[1697, 47, 179, 3, 34, "Output",ExpressionUUID->"964f7c8d-9614-4694-b67e-bef0e780482e"]
}, Open  ]],
Cell[1891, 53, 152, 3, 30, "Input",ExpressionUUID->"57082fec-0466-462c-b866-36c3c13fda17"],
Cell[CellGroupData[{
Cell[2068, 60, 5764, 145, 751, "Input",ExpressionUUID->"ffa095da-e68a-419a-b58b-a3a7597c7976"],
Cell[7835, 207, 2089, 41, 329, "Output",ExpressionUUID->"76eafd62-7ce2-4ae7-a6f8-e6059b73d717"],
Cell[9927, 250, 450, 10, 24, "Message",ExpressionUUID->"f405d61c-3af8-4eb9-abfd-3caa124f708d"]
}, Open  ]],
Cell[CellGroupData[{
Cell[10414, 265, 2220, 57, 262, "Input",ExpressionUUID->"280dd2b1-2a68-43bc-a651-9f245a2e2d4c"],
Cell[12637, 324, 172302, 2958, 188, "Output",ExpressionUUID->"5fad0582-b36b-4421-bd97-61f9b5de2e02"]
}, Open  ]],
Cell[CellGroupData[{
Cell[184976, 3287, 196, 3, 67, "Section",ExpressionUUID->"b94a62dc-aba5-478e-8ce5-45ebfd8538dc"],
Cell[CellGroupData[{
Cell[185197, 3294, 1725, 51, 159, "Input",ExpressionUUID->"a5eafa9f-b275-4635-a095-90caf1d2bf97"],
Cell[186925, 3347, 234, 6, 37, "Output",ExpressionUUID->"5c5ce19f-9f36-4709-b234-91ad22ccca8a"],
Cell[187162, 3355, 234, 6, 37, "Output",ExpressionUUID->"b8599676-8ec4-4d41-b2cf-220fb624a6df"],
Cell[187399, 3363, 5416, 97, 247, "Output",ExpressionUUID->"881b4459-f60d-4dd3-bc62-19c61b04074e"],
Cell[192818, 3462, 5496, 99, 247, "Output",ExpressionUUID->"5d53eaed-5a3e-48ac-9726-07da8098381d"],
Cell[198317, 3563, 5498, 99, 247, "Output",ExpressionUUID->"dfedbcc4-d6bc-4704-a78f-54f2494595c5"]
}, Open  ]],
Cell[CellGroupData[{
Cell[203852, 3667, 12749, 315, 872, "Input",ExpressionUUID->"2743a5e7-14bc-4026-81cb-2ad7216621b6"],
Cell[216604, 3984, 68502, 1133, 256, "Output",ExpressionUUID->"321281db-2079-4e25-91e0-439d7a4871ee"]
}, Open  ]],
Cell[CellGroupData[{
Cell[285143, 5122, 2083, 60, 94, "Input",ExpressionUUID->"91c4a048-984f-4729-934c-182c0edc0edb"],
Cell[287229, 5184, 75689, 1258, 270, "Output",ExpressionUUID->"4a514391-82d1-4cdb-802e-0cb43d5d301e"]
}, Open  ]],
Cell[CellGroupData[{
Cell[362955, 6447, 3092, 71, 388, "Input",ExpressionUUID->"51b1da0f-2320-4a60-aaad-e2a52d4d30de"],
Cell[366050, 6520, 56207, 994, 247, "Output",ExpressionUUID->"7bad5299-53ce-465f-a205-79f4cd3fc247"]
}, Open  ]],
Cell[CellGroupData[{
Cell[422294, 7519, 289, 6, 52, "Input",ExpressionUUID->"dfe95048-08f1-4c05-aa5e-c372e297871c"],
Cell[422586, 7527, 222, 6, 34, "Output",ExpressionUUID->"513e0e0d-b43e-4be6-8572-90b5c3e01858"]
}, Open  ]]
}, Open  ]]
}
]
*)

(* NotebookSignature 4vD5wZ5pc081oDKQ2@7DNe7y *)
