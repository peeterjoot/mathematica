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
NotebookDataLength[     26057,        581]
NotebookOptionsPosition[     25049,        558]
NotebookOutlinePosition[     25445,        574]
CellTagsIndexPosition[     25402,        571]
WindowFrame->Normal*)

(* Beginning of Notebook Content *)
Notebook[{

Cell[CellGroupData[{
Cell[BoxData[{
 RowBox[{"<<", "peeters`"}], "\[IndentingNewLine]", 
 RowBox[{"peeters`setGitDir", "[", 
  "\"\<../project/figures/phy454-continuumechanics\>\"", "]"}]}], "Input",
 CellChangeTimes->{{3.888152687300035*^9, 3.888152714616723*^9}},
 CellLabel->
  "In[314]:=",ExpressionUUID->"0a4ad176-dbee-4d25-99a7-f72af9d89735"],

Cell[BoxData["\<\"peeters`\"\>"], "Output",
 CellChangeTimes->{{3.888152691232243*^9, 3.888152716901205*^9}},
 CellLabel->
  "Out[314]=",ExpressionUUID->"c6a7d29a-21f4-4513-9cf7-09bf7de1df60"],

Cell[BoxData["\<\"/Users/pjoot/project/figures/phy454-continuumechanics\"\>"],\
 "Output",
 CellChangeTimes->{{3.888152691232243*^9, 3.888152716902746*^9}},
 CellLabel->
  "Out[315]=",ExpressionUUID->"6e2fedd3-092a-4da2-9bc3-f45eb10bdabb"]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{
  RowBox[{"(*", " ", 
   RowBox[{
    RowBox[{"Q2", ".", "  ", "check"}], " ", "manual", " ", "calculation"}], 
   " ", "*)"}], "\[IndentingNewLine]", 
  RowBox[{
   RowBox[{"Clear", "[", 
    RowBox[{
    "e", ",", " ", "p", ",", " ", "x", ",", " ", "ee", ",", " ", "ff", ",", 
     " ", "p1", ",", " ", "p2", ",", " ", "p3", ",", " ", "ev", ",", " ", 
     "pl1"}], "]"}], "\[IndentingNewLine]", 
   RowBox[{"e", " ", ":=", " ", 
    RowBox[{"{", 
     RowBox[{
      RowBox[{"{", 
       RowBox[{"4", ",", " ", "1", ",", " ", "1"}], "}"}], ",", " ", 
      RowBox[{"{", 
       RowBox[{"1", ",", " ", "0", ",", " ", "4"}], "}"}], ",", " ", 
      RowBox[{"{", 
       RowBox[{"1", ",", " ", "4", ",", " ", 
        RowBox[{"-", "1"}]}], "}"}]}], "}"}]}], "\[IndentingNewLine]", 
   RowBox[{"e", " ", "//", " ", "MatrixForm"}], "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{"p", "[", "x_", "]"}], " ", "=", " ", 
    RowBox[{"Det", "[", 
     RowBox[{"e", " ", "-", " ", 
      RowBox[{"x", " ", 
       RowBox[{"IdentityMatrix", "[", "3", "]"}]}]}], "]"}]}], 
   "\[IndentingNewLine]", 
   RowBox[{"pl1", "  ", "=", " ", 
    RowBox[{"Plot", "[", 
     RowBox[{
      RowBox[{"p", "[", "x", "]"}], ",", " ", 
      RowBox[{"{", 
       RowBox[{"x", ",", " ", 
        RowBox[{"-", "6"}], ",", " ", "6"}], "}"}], ",", " ", 
      RowBox[{"PlotStyle", " ", "\[Rule]", " ", 
       RowBox[{"{", 
        RowBox[{"Thick", ",", " ", "Black"}], "}"}]}]}], "]"}]}], 
   "\[IndentingNewLine]", 
   RowBox[{"(*", "\[IndentingNewLine]", "\[IndentingNewLine]", 
    RowBox[{
     RowBox[{
      RowBox[{"Table", "[", 
       RowBox[{
        RowBox[{"p", "[", "x", "]"}], ",", " ", 
        RowBox[{"{", 
         RowBox[{"x", ",", " ", "10"}], "}"}]}], "]"}], "\[IndentingNewLine]", 
      RowBox[{"Table", "[", 
       RowBox[{"x", ",", " ", 
        RowBox[{"{", 
         RowBox[{"x", ",", " ", "10"}], "}"}]}], "]"}], "\[IndentingNewLine]", 
      RowBox[{"Solve", "[", 
       RowBox[{
        RowBox[{
         RowBox[{"p", "[", "x", "]"}], " ", "\[Equal]", " ", "0"}], ",", " ", 
        "x", ",", " ", "Reals"}], "]"}]}], " ", "//", " ", 
     RowBox[{"N", "\[IndentingNewLine]", 
      RowBox[{"Re", "[", "%", "]"}]}]}], "\[IndentingNewLine]", "*)"}], 
   "\[IndentingNewLine]", 
   RowBox[{"(*", " ", 
    RowBox[{
     RowBox[{"now", " ", "solve", " ", "for", " ", "eigenvectors"}], ",", " ", 
     RowBox[{
     "letting", " ", "mathematica", " ", "do", " ", "the", " ", "heavy", " ", 
      RowBox[{"lifting", ".", "  ", "Also"}], " ", "check", " ", "the", " ", 
      "characteristic", " ", "equation", " ", "indirectly"}], ",", " ", 
     RowBox[{
     "by", " ", "letting", " ", "mathematica", " ", "solve", " ", "for", " ", 
      "the", " ", "eigenvalues"}]}], " ", "*)"}], "\[IndentingNewLine]", 
   RowBox[{"ev", " ", "=", " ", 
    RowBox[{
     RowBox[{"Eigenvalues", "[", "e", "]"}], " ", "//", " ", "N"}]}], 
   "\[IndentingNewLine]", 
   RowBox[{"(*", " ", 
    RowBox[{
     RowBox[{"should", " ", "equal", " ", "3"}], ",", " ", 
     RowBox[{"the", " ", "trace", " ", "of", " ", "e"}]}], " ", "*)"}], 
   "\[IndentingNewLine]", "\[IndentingNewLine]", 
   RowBox[{"Total", "[", "ev", "]"}], "\[IndentingNewLine]", 
   RowBox[{"ee", " ", ":=", " ", 
    RowBox[{
     RowBox[{"Eigenvectors", "[", "e", "]"}], " ", "//", " ", "N"}]}], 
   "\[IndentingNewLine]", 
   RowBox[{"ff", " ", "=", " ", 
    RowBox[{"Map", "[", 
     RowBox[{"Normalize", ",", " ", "ee"}], "]"}]}], "\[IndentingNewLine]", 
   RowBox[{"(*", " ", 
    RowBox[{
     RowBox[{
     "verify", " ", "normalization", " ", "\[IndentingNewLine]", "p1"}], " ", 
     ":=", " ", 
     RowBox[{
      RowBox[{
       RowBox[{"Part", "[", 
        RowBox[{"ff", ",", " ", "1"}], "]"}], "\[IndentingNewLine]", "p2"}], 
      " ", ":=", " ", 
      RowBox[{
       RowBox[{
        RowBox[{"Part", "[", 
         RowBox[{"ff", ",", " ", "2"}], "]"}], "\[IndentingNewLine]", "p3"}], 
       " ", ":=", " ", 
       RowBox[{
        RowBox[{"Part", "[", 
         RowBox[{"ff", ",", " ", "3"}], "]"}], "\[IndentingNewLine]", 
        RowBox[{"p1", " ", ".", " ", "p1"}], " ", "\[IndentingNewLine]", 
        RowBox[{"p2", " ", ".", " ", "p2"}], "\[IndentingNewLine]", 
        RowBox[{"p3", " ", ".", " ", "p3"}], "\[IndentingNewLine]", 
        RowBox[{"p1", " ", ".", " ", "p2"}], " ", "\[IndentingNewLine]", 
        RowBox[{"p2", " ", ".", " ", "p3"}], "\[IndentingNewLine]", 
        RowBox[{"p3", " ", ".", " ", "p1"}]}]}]}]}], "\[IndentingNewLine]", 
    "*)"}], "\[IndentingNewLine]", "\[IndentingNewLine]", 
   RowBox[{"(*", "\[IndentingNewLine]", 
    RowBox[{
     RowBox[{
      RowBox[{"First", "[", "ee", "]"}], "/", 
      RowBox[{"Sqrt", "[", 
       RowBox[{
        RowBox[{"First", "[", "ee", "]"}], " ", ".", " ", 
        RowBox[{"First", "[", "ee", "]"}]}], "]"}]}], "\[IndentingNewLine]", 
     RowBox[{
      RowBox[{"Second", "[", "ee", "]"}], "/", 
      RowBox[{"Sqrt", "[", 
       RowBox[{
        RowBox[{"First", "[", "ee", "]"}], " ", ".", " ", 
        RowBox[{"First", "[", "ee", "]"}]}], "]"}]}], "\[IndentingNewLine]", 
     RowBox[{
      RowBox[{"Last", "[", "ee", "]"}], "/", 
      RowBox[{"Sqrt", "[", 
       RowBox[{
        RowBox[{"Last", "[", "ee", "]"}], " ", ".", " ", 
        RowBox[{"Last", "[", "ee", "]"}]}], "]"}]}]}], "\[IndentingNewLine]", 
    "*)"}], "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{"-", "55"}], "+", 
    RowBox[{"22", " ", "x"}], "+", 
    RowBox[{"3", " ", 
     SuperscriptBox["x", "2"]}], "-", 
    SuperscriptBox["x", "3"]}], "\[IndentingNewLine]", "\[IndentingNewLine]", 
   RowBox[{"(*", " ", 
    RowBox[{
     RowBox[{
     "conditions", " ", "for", " ", "the", " ", "stress", " ", "to", " ", 
      "be", " ", "positive", " ", 
      RowBox[{"(", "expansive", ")"}], " ", "in", " ", "the", " ", 
      RowBox[{"(", 
       RowBox[{"2", ",", "2"}], ")"}], " ", "component", " ", "at", " ", 
      "the", " ", "point", " ", "1"}], ",", "2", ",", 
     RowBox[{
     "4", " ", "of", " ", "part", " ", "b", " ", "of", " ", "the", " ", 
      RowBox[{"problem", "."}]}]}], " ", "*)"}], "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{"-", 
     RowBox[{"Part", "[", 
      RowBox[{"ev", ",", " ", "2"}], "]"}]}], "/", 
    RowBox[{"(", 
     RowBox[{
      RowBox[{
       RowBox[{"-", 
        RowBox[{"Part", "[", 
         RowBox[{"ev", ",", " ", "2"}], "]"}]}], " ", "*", " ", "2"}], " ", 
      "+", " ", "3"}], ")"}]}]}]}]], "Input",
 CellChangeTimes->{{3.5373640762959137`*^9, 3.537364230822752*^9}, {
  3.53736426225555*^9, 3.5373644864943757`*^9}, {3.537364520437317*^9, 
  3.5373645363072243`*^9}, {3.537364567557012*^9, 3.537364587698164*^9}, {
  3.53736465896424*^9, 3.5373646610873613`*^9}, {3.5373651193075705`*^9, 
  3.5373652233395205`*^9}, {3.53736534117426*^9, 3.537365417501626*^9}, {
  3.5373654962141285`*^9, 3.5373655070067453`*^9}, {3.5373658556316853`*^9, 
  3.5373658623560705`*^9}, {3.537365892461792*^9, 3.537365934100174*^9}, {
  3.5373668525377054`*^9, 3.5373669775938582`*^9}, {3.5373670176381483`*^9, 
  3.537367044100662*^9}, {3.5374455129792385`*^9, 3.5374455661582804`*^9}, {
  3.537459148811751*^9, 3.537459190072111*^9}, {3.537461477443941*^9, 
  3.537461487815534*^9}, {3.537461977197525*^9, 3.53746197815458*^9}, {
  3.888152635442649*^9, 3.888152642085116*^9}, {3.888152763565896*^9, 
  3.8881527708418627`*^9}},
 CellLabel->
  "In[583]:=",ExpressionUUID->"eb519c1f-1c86-4266-8e32-d4df881daab7"],

Cell[BoxData[
 TagBox[
  RowBox[{"(", "\[NoBreak]", GridBox[{
     {"4", "1", "1"},
     {"1", "0", "4"},
     {"1", "4", 
      RowBox[{"-", "1"}]}
    },
    GridBoxAlignment->{"Columns" -> {{Center}}, "Rows" -> {{Baseline}}},
    GridBoxSpacings->{"Columns" -> {
        Offset[0.27999999999999997`], {
         Offset[0.7]}, 
        Offset[0.27999999999999997`]}, "Rows" -> {
        Offset[0.2], {
         Offset[0.4]}, 
        Offset[0.2]}}], "\[NoBreak]", ")"}],
  Function[BoxForm`e$, 
   MatrixForm[BoxForm`e$]]]], "Output",
 CellChangeTimes->{3.5374620442033577`*^9, 3.888152643007721*^9, 
  3.8881527735126963`*^9, 3.888177458419492*^9},
 CellLabel->
  "Out[585]//MatrixForm=",ExpressionUUID->"77183287-1ff6-4134-84b7-\
004d732636a1"],

Cell[BoxData[
 RowBox[{
  RowBox[{"-", "55"}], "+", 
  RowBox[{"22", " ", "x"}], "+", 
  RowBox[{"3", " ", 
   SuperscriptBox["x", "2"]}], "-", 
  SuperscriptBox["x", "3"]}]], "Output",
 CellChangeTimes->{3.5374620442033577`*^9, 3.888152643007721*^9, 
  3.8881527735126963`*^9, 3.8881774584221277`*^9},
 CellLabel->
  "Out[586]=",ExpressionUUID->"609e78da-cb0d-418e-80c0-1dcefb224ba2"],

Cell[BoxData[
 GraphicsBox[{{{}, {}, 
    TagBox[
     {GrayLevel[0], Thickness[Large], Opacity[1.], LineBox[CompressedData["
1:eJwtmXk0VP//x8e+z9jHllD2MGPLUryKSFlnKFlCiEqoKCQkki2SkHxkS5Kk
lWz3rYQSKXtJSBKK7Ov43e85v7/mPM5939d93ffr+Xze9zkjeyyA5s1MIBAG
mQiE//16Pk6d3twko56cww2bWz1AeE1CwXCdjLIFWroLBTyg0eyey/llMjIx
vJ9myeIBCoOv3k3NkFHXEQ2WsjF3mOD9Udg/TEaHL/Y8KnjkDoEndRyfvSGj
SR5Gjv8ud4iQ/4KOx5GR3DXYWK4+Ctl3tqW1EckoSRlcs52c4e73awF2XKLI
6+OSo8sVexDtoNsoi4ig/eplz4eOW0GLLd20VV4YoZDjzHt5TGC/snzQNjkh
hEz2hwh/oYJBuUvxRw1BRKhxlFHymjZeTTgupKksgKIUTZcfHVdHC0tFt44q
8qMK99oRCnE3apRL064/TUQ9cbdfzm01RdY9yROZ3kTUdcGp+KyuKeqLj887
40pEfrtGi0YsTdHUTBSvvBUR7Wpn+nor1BQJYQGjiTuI6NoQNcbisyk65myV
fmSSD+XKfEgdj9qHCOmc8/O+fMhURKpJstMMGbJFPlP14kVS7K8NOC0tkNJY
MleqCy9K7faJKnS1QKLNOW7z9rxo+etmoGaABZq5Vs1Tt48XDXxwdFVNs0DF
vIue1oq8aGL5T2l8rwUSFD4tfGaCB61bFDqvuh1A43LOwS8DeZCLjdK2ep+D
KB127txziRuVD5Peu9GtEEvT9LfWYG7kl3esosLDCp09WBJzyJ8bOQ1bOS8G
WCG7Q+KfT7lxI7F99zndk6wQ0W/NL2MPN3IXusD2qNEKXcvECibZuJHuW9ES
DS1rFP7XnJhxnQu5Wr+8Nc5hgybPEV7IxHEhiZThxh5hG+S0UuX8MJIL3d4R
yF4ta4P0WVUeoEAutLM/8L2boQ1aFOc1naRxIZ0QgWwlfxsUuK8jFMhcyKjZ
OeTJJxvkmeP4c+IuJ1rbVZ3tuN8WpT7/tbszkxONn5NYz7O2RfUfzmfUpHAi
I9lSqR/2tkhiI908KZITfX+RnG/vYYs6XD89UHPjRHP3Bn9Ohdoio60H/AOl
OZHWbf/ncw9skXiB4dJCDgeaS4gw92azQ2bV720G0znQyZTh1HFuOxT0+UhJ
UxIHWsfkWr357VAHc8iRzHAOpBweLGYtaYeuej6v0XPhQCXG3Xt6KHZofrta
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
/88F2xupmpubRuj/AAeSCpI=
       "]]},
     Annotation[#, "Charting`Private`Tag$325732#1"]& ]}, {}},
  AspectRatio->NCache[GoldenRatio^(-1), 0.6180339887498948],
  Axes->{True, True},
  AxesLabel->{None, None},
  AxesOrigin->{0, 0},
  DisplayFunction->Identity,
  Frame->{{False, False}, {False, False}},
  FrameLabel->{{None, None}, {None, None}},
  FrameTicks->{{Automatic, Automatic}, {Automatic, Automatic}},
  GridLines->{None, None},
  GridLinesStyle->Directive[
    GrayLevel[0.5, 0.4]],
  ImagePadding->All,
  Method->{
   "DefaultBoundaryStyle" -> Automatic, 
    "DefaultGraphicsInteraction" -> {
     "Version" -> 1.2, "TrackMousePosition" -> {True, False}, 
      "Effects" -> {
       "Highlight" -> {"ratio" -> 2}, "HighlightPoint" -> {"ratio" -> 2}, 
        "Droplines" -> {
         "freeformCursorMode" -> True, 
          "placement" -> {"x" -> "All", "y" -> "None"}}}}, "DefaultMeshStyle" -> 
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
  PlotRange->{{-6, 6}, {-79.11249821567891, 136.9999701224503}},
  PlotRangeClipping->True,
  PlotRangePadding->{{
     Scaled[0.02], 
     Scaled[0.02]}, {
     Scaled[0.05], 
     Scaled[0.05]}},
  Ticks->{Automatic, Automatic}]], "Output",
 CellChangeTimes->{3.5374620442033577`*^9, 3.888152643007721*^9, 
  3.8881527735126963`*^9, 3.8881774584612007`*^9},
 CellLabel->
  "Out[587]=",ExpressionUUID->"25b7ae04-3c8b-4c23-91a3-26eaced116fc"],

Cell[BoxData[
 RowBox[{"{", 
  RowBox[{"5.196843642650065`", ",", 
   RowBox[{"-", "4.532060937388454`"}], ",", "2.3352172947383893`"}], 
  "}"}]], "Output",
 CellChangeTimes->{3.5374620442033577`*^9, 3.888152643007721*^9, 
  3.8881527735126963`*^9, 3.888177458466609*^9},
 CellLabel->
  "Out[588]=",ExpressionUUID->"01e965c2-4638-4d28-b34b-d335c99b6344"],

Cell[BoxData["3.`"], "Output",
 CellChangeTimes->{3.5374620442033577`*^9, 3.888152643007721*^9, 
  3.8881527735126963`*^9, 3.888177458468141*^9},
 CellLabel->
  "Out[589]=",ExpressionUUID->"781378e0-65bd-45ff-ba72-b278ba8a297f"],

Cell[BoxData[
 RowBox[{"{", 
  RowBox[{
   RowBox[{"{", 
    RowBox[{
    "0.7629095489158697`", ",", "0.48008246031152163`", ",", 
     "0.43300098322546593`"}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{
     RowBox[{"-", "0.010606005252000365`"}], ",", 
     RowBox[{"-", "0.6603723417883455`"}], ",", "0.7508634249006746`"}], 
    "}"}], ",", 
   RowBox[{"{", 
    RowBox[{
     RowBox[{"-", "0.6464182336735085`"}], ",", "0.5774332874906094`", ",", 
     "0.498712608294806`"}], "}"}]}], "}"}]], "Output",
 CellChangeTimes->{3.5374620442033577`*^9, 3.888152643007721*^9, 
  3.8881527735126963`*^9, 3.8881774584697437`*^9},
 CellLabel->
  "Out[591]=",ExpressionUUID->"a4d1472a-6968-42f5-b65b-ab28504c8fc2"],

Cell[BoxData[
 RowBox[{
  RowBox[{"-", "55"}], "+", 
  RowBox[{"22", " ", "x"}], "+", 
  RowBox[{"3", " ", 
   SuperscriptBox["x", "2"]}], "-", 
  SuperscriptBox["x", "3"]}]], "Output",
 CellChangeTimes->{3.5374620442033577`*^9, 3.888152643007721*^9, 
  3.8881527735126963`*^9, 3.8881774584715347`*^9},
 CellLabel->
  "Out[592]=",ExpressionUUID->"d56b8b05-2ac3-4b49-8b24-749bcb464f08"],

Cell[BoxData["0.37566438605563757`"], "Output",
 CellChangeTimes->{3.5374620442033577`*^9, 3.888152643007721*^9, 
  3.8881527735126963`*^9, 3.888177458473364*^9},
 CellLabel->
  "Out[593]=",ExpressionUUID->"6dfb8eba-38c3-428d-a4bb-fa006942f810"]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"peeters`exportForLatex", "[", 
  RowBox[{"\"\<problemSet1Q2__Characteristic_equationFig1\>\"", ",", "pl1"}], 
  "]"}]], "Input",
 CellChangeTimes->{{3.88815278008372*^9, 3.888152805341351*^9}},
 CellLabel->
  "In[594]:=",ExpressionUUID->"097669d7-b054-4646-a373-e3b619a78359"],

Cell[BoxData[
 RowBox[{"{", 
  RowBox[{"\<\"problemSet1Q2__Characteristic_equationFig1.eps\"\>", 
   ",", "\<\"problemSet1Q2__Characteristic_equationFig1pn.png\"\>"}], 
  "}"}]], "Output",
 CellChangeTimes->{3.8881528440155973`*^9, 3.88817746394978*^9},
 CellLabel->
  "Out[594]=",ExpressionUUID->"22671a1e-07c6-4dfd-8c46-d3f5518c9938"]
}, Open  ]]
},
WindowSize->{1584, 765},
WindowMargins->{{0, Automatic}, {Automatic, 0}},
FrontEndVersion->"12.2 for Mac OS X x86 (64-bit) (December 12, 2020)",
StyleDefinitions->"Default.nb",
ExpressionUUID->"3e681a13-024a-4f4e-8e29-cb74c2c4ae43"
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
Cell[1257, 32, 327, 6, 52, "Input",ExpressionUUID->"0a4ad176-dbee-4d25-99a7-f72af9d89735"],
Cell[1587, 40, 192, 3, 34, "Output",ExpressionUUID->"c6a7d29a-21f4-4513-9cf7-09bf7de1df60"],
Cell[1782, 45, 239, 4, 34, "Output",ExpressionUUID->"6e2fedd3-092a-4da2-9bc3-f45eb10bdabb"]
}, Open  ]],
Cell[CellGroupData[{
Cell[2058, 54, 7515, 177, 871, "Input",ExpressionUUID->"eb519c1f-1c86-4266-8e32-d4df881daab7"],
Cell[9576, 233, 748, 22, 76, "Output",ExpressionUUID->"77183287-1ff6-4134-84b7-004d732636a1"],
Cell[10327, 257, 385, 10, 34, "Output",ExpressionUUID->"609e78da-cb0d-418e-80c0-1dcefb224ba2"],
Cell[10715, 269, 11704, 211, 240, "Output",ExpressionUUID->"25b7ae04-3c8b-4c23-91a3-26eaced116fc"],
Cell[22422, 482, 355, 8, 34, "Output",ExpressionUUID->"01e965c2-4638-4d28-b34b-d335c99b6344"],
Cell[22780, 492, 228, 4, 34, "Output",ExpressionUUID->"781378e0-65bd-45ff-ba72-b278ba8a297f"],
Cell[23011, 498, 710, 19, 34, "Output",ExpressionUUID->"a4d1472a-6968-42f5-b65b-ab28504c8fc2"],
Cell[23724, 519, 385, 10, 34, "Output",ExpressionUUID->"d56b8b05-2ac3-4b49-8b24-749bcb464f08"],
Cell[24112, 531, 245, 4, 34, "Output",ExpressionUUID->"6dfb8eba-38c3-428d-a4bb-fa006942f810"]
}, Open  ]],
Cell[CellGroupData[{
Cell[24394, 540, 300, 6, 30, "Input",ExpressionUUID->"097669d7-b054-4646-a373-e3b619a78359"],
Cell[24697, 548, 336, 7, 57, "Output",ExpressionUUID->"22671a1e-07c6-4dfd-8c46-d3f5518c9938"]
}, Open  ]]
}
]
*)

(* NotebookSignature 6upqdQOmndP0vCKcFffYgknS *)
