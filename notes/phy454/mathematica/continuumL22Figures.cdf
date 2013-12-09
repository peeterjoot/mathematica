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
NotebookDataLength[      7664,        206]
NotebookOptionsPosition[      8050,        202]
NotebookOutlinePosition[      8391,        217]
CellTagsIndexPosition[      8348,        214]
WindowFrame->Normal*)

(* Beginning of Notebook Content *)
Notebook[{
Cell[BoxData[{
 RowBox[{
  RowBox[{
   RowBox[{
    RowBox[{"rectGraphic", "[", 
     RowBox[{"w_", ",", " ", "h_"}], "]"}], " ", ":=", " ", 
    RowBox[{"Graphics", "[", 
     RowBox[{"{", "\[IndentingNewLine]", 
      RowBox[{
       RowBox[{"Line", "[", 
        RowBox[{"{", 
         RowBox[{
          RowBox[{"{", 
           RowBox[{"0", ",", "0"}], "}"}], ",", 
          RowBox[{"{", 
           RowBox[{"0", ",", "h"}], "}"}]}], "}"}], "]"}], ",", 
       "\[IndentingNewLine]", 
       RowBox[{"Line", "[", 
        RowBox[{"{", 
         RowBox[{
          RowBox[{"{", 
           RowBox[{"0", ",", "h"}], "}"}], ",", 
          RowBox[{"{", 
           RowBox[{"w", ",", "h"}], "}"}]}], "}"}], "]"}], ",", 
       "\[IndentingNewLine]", 
       RowBox[{"Line", "[", 
        RowBox[{"{", 
         RowBox[{
          RowBox[{"{", 
           RowBox[{"w", ",", "h"}], "}"}], ",", 
          RowBox[{"{", 
           RowBox[{"w", ",", "0"}], "}"}]}], "}"}], "]"}], ",", 
       "\[IndentingNewLine]", 
       RowBox[{"Line", "[", 
        RowBox[{"{", 
         RowBox[{
          RowBox[{"{", 
           RowBox[{"w", ",", "0"}], "}"}], ",", 
          RowBox[{"{", 
           RowBox[{"0", ",", "0"}], "}"}]}], "}"}], "]"}]}], "}"}], " ", 
     "]"}]}], " ", ";"}], "\[IndentingNewLine]", 
  RowBox[{"(*", " ", 
   RowBox[{"create", " ", "a", " ", "drawing", " ", "area"}], " ", 
   "*)"}]}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{"rectGraphic", "[", 
   RowBox[{"400", ",", " ", "300"}], "]"}], 
  "\[IndentingNewLine]"}], "\[IndentingNewLine]"}], "Input",
 CellChangeTimes->{{3.5425568563908668`*^9, 3.5425571230611196`*^9}}],

Cell[BoxData[
 GraphicsBox[{LineBox[{{0, 0}, {0, 300}}], LineBox[{{0, 300}, {400, 300}}], 
   LineBox[{{400, 300}, {400, 0}}], LineBox[{{400, 0}, {0, 0}}], 
   {Thickness[0.00041686938347033507`], 
    LineBox[{{60.17085751128303, 223.3771760154739}, {369.6486137975499, 
     223.37717601547402`}}]}, 
   {Thickness[0.00041686938347033507`], 
    LineBox[{{60.170857511283025`, 70.25016118633155}, {369.64861379754973`, 
     70.25016118633167}}]}, 
   {Thickness[0.00041686938347033507`], 
    LineBox[{{68.23017408123789, 31.56544165054811}, {102.88523533204379`, 
     70.25016118633175}}]}, 
   {Thickness[0.00041686938347033507`], 
    LineBox[{{120.21276595744669`, 31.56544165054811}, {154.8678272082526, 
     70.25016118633175}}]}, 
   {Thickness[0.00041686938347033507`], 
    LineBox[{{165.74790457769177`, 31.565441650548166`}, {200.40296582849766`,
      70.25016118633181}}]}, 
   {Thickness[0.00041686938347033507`], 
    LineBox[{{211.28304319793668`, 31.565441650548053`}, {245.9381044487426, 
     70.2501611863317}}]}, 
   {Thickness[0.00041686938347033507`], 
    LineBox[{{255.60928433268845`, 31.565441650548166`}, {290.26434558349433`,
      70.25016118633181}}]}, 
   {Thickness[0.00041686938347033507`], 
    LineBox[{{298.3236621534493, 31.565441650548337`}, {332.97872340425516`, 
     70.25016118633198}}]}, 
   StyleBox[InsetBox[
     StyleBox[Cell[TextData[Cell[BoxData[
       FormBox[
        SubscriptBox["T", "0"], TraditionalForm]]]],
       GeneratedCell->False,
       CellAutoOverwrite->False,
       CellBaseline->Baseline,
       TextAlignment->Left],
      FontSlant->"Italic",
      Background->GrayLevel[1.]], {24.70986460348162, 71.05609284332695}, {
     Left, Baseline},
     Alignment->{Left, Top}],
    FontSize->28], 
   StyleBox[InsetBox[
     StyleBox[Cell[TextData[Cell[BoxData[
       FormBox[
        SubscriptBox["T", "1"], TraditionalForm]]]],
       GeneratedCell->False,
       CellAutoOverwrite->False,
       CellBaseline->Baseline,
       TextAlignment->Left],
      FontSlant->"Italic",
      Background->GrayLevel[1.]], {24.70986460348155, 215.72082527401693`}, {
     Left, Baseline},
     Alignment->{Left, Top}],
    FontSize->28], 
   {Thickness[0.00041686938347033507`], Arrowheads[0.055462571295791074`], 
    EdgeForm[{GrayLevel[0.], Opacity[1.], Thickness[
    0.00041686938347033507`]}], FaceForm[{Hue[0.67, 0.6, 0.6], Opacity[
    0.34]}], ArrowBox[{{120.21276595744669`, 149.63442940038686`}, {
     236.66989039329457`, 149.63442940038698`}}]}, 
   InsetBox["", {145.5996131528046, 170.99161831076725`}, {Left, Baseline},
    Alignment->{Left, Top}], InsetBox[
    StyleBox[
     TagBox[
      RowBox[{"u", " ", "=", " ", "0"}],
      HoldForm],
     FontSize->28,
     FontSlant->"Italic",
     Background->GrayLevel[1.]], {137.54029658284975`, 170.99161831076725`}, {
    Left, Baseline},
    Alignment->{Left, Top}], 
   {Thickness[0.00041686938347033507`], Arrowheads[0.055462571295791074`], 
    EdgeForm[{GrayLevel[0.], Opacity[1.], Thickness[
    0.00041686938347033507`]}], FaceForm[{Hue[0.67, 0.6, 0.6], Opacity[
    0.34]}], ArrowBox[{{68.23017408123789, 70.25016118633175}, {
     68.23017408123786, 223.37717601547416`}}]}, InsetBox[
    StyleBox[Cell["z",
      GeneratedCell->False,
      CellAutoOverwrite->False,
      CellBaseline->Baseline,
      TextAlignment->Left],
     FontSize->28,
     FontSlant->"Italic",
     Background->GrayLevel[1.]], {77.09542230818826, 191.94584139264992`}, {
    Left, Baseline},
    Alignment->{Left, Top}], 
   {Thickness[0.00041686938347033507`], Arrowheads[0.055462571295791074`], 
    EdgeForm[{GrayLevel[0.], Opacity[1.], Thickness[
    0.00041686938347033507`]}], FaceForm[{Hue[0.67, 0.6, 0.6], Opacity[
    0.34]}], ArrowBox[{{68.23017408123789, 70.25016118633181}, {
     17.4564796905222, 12.223081882656516`}}]}, InsetBox[
    StyleBox[Cell["x",
      GeneratedCell->False,
      CellAutoOverwrite->False,
      CellBaseline->Baseline,
      TextAlignment->Left],
     FontSize->28,
     FontSlant->"Italic",
     Background->GrayLevel[1.]], {8.591231463571887, 37.20696324951649}, {
    Left, Baseline},
    Alignment->{Left, Top}], 
   {Thickness[0.00041686938347033507`], Arrowheads[0.055462571295791074`], 
    EdgeForm[{GrayLevel[0.], Opacity[1.], Thickness[
    0.00041686938347033507`]}], FaceForm[{Hue[0.67, 0.6, 0.6], Opacity[
    0.34]}], ArrowBox[{{68.23017408123789, 70.25016118633181}, {
     193.95551257253376`, 70.25016118633192}}]}, InsetBox[
    StyleBox[Cell["y",
      GeneratedCell->False,
      CellAutoOverwrite->False,
      CellBaseline->Baseline,
      TextAlignment->Left],
     FontSize->28,
     FontSlant->"Italic",
     Background->GrayLevel[1.]], {183.4784010315924, 84.35396518375256}, {
    Left, Baseline},
    Alignment->{Left, Top}]},
  ImagePadding->{{0., 1.}, {1., 0.}},
  ImageSize->{518., Automatic},
  PlotRange->{{-8.333333333333334, 408.3333333333333}, {-8., 308.}},
  PlotRangePadding->Automatic]], "Input",
 CellChangeTimes->{{3.5425571515747504`*^9, 3.542557282278226*^9}, {
  3.5425573182272825`*^9, 3.5425573789507556`*^9}, {3.5425574174259562`*^9, 
  3.54255745682821*^9}}]
},
WindowSize->{874, 721},
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
Cell[1235, 30, 1648, 48, 192, "Input"],
Cell[2886, 80, 5160, 120, 408, InheritFromParent]
}
]
*)

(* End of internal cache information *)

(* NotebookSignature cuD@N6XbRJmlQD1wSf@fYip9 *)
