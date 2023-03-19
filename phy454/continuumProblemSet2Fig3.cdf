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
NotebookDataLength[     73388,       1644]
NotebookOptionsPosition[     71458,       1606]
NotebookOutlinePosition[     71886,       1623]
CellTagsIndexPosition[     71843,       1620]
WindowFrame->Normal*)

(* Beginning of Notebook Content *)
Notebook[{
Cell["Generate figure: continuumProblemSet2Fig3", "Text",
 CellChangeTimes->{{3.8881780434735527`*^9, 
  3.8881780464292173`*^9}},ExpressionUUID->"d319207d-194e-4e72-a9c5-\
db89ccf40e96"],

Cell[BoxData[{
 RowBox[{"<<", "peeters`"}], "\[IndentingNewLine]", 
 RowBox[{"peeters`setGitDir", "[", 
  "\"\<../project/figures/phy454-continuumechanics\>\"", "]"}]}], "Input",Expr\
essionUUID->"ec2ddcd3-68e8-4c42-98f4-a9c631fae60a"],

Cell[BoxData[{
 RowBox[{"<<", "MaTeX`"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{"SetOptions", "[", 
   RowBox[{"MaTeX", ",", 
    RowBox[{"\"\<Preamble\>\"", "\[Rule]", 
     RowBox[{"{", 
      RowBox[{
      "\"\<\\\\usepackage{xcolor,txfonts}\>\"", ",", 
       "\"\<\\\\definecolor{BlueDarker}{HTML}{0000AA}\>\"", ",", 
       "\"\<\\\\definecolor{RedDarker}{HTML}{AA0000}\>\"", ",", 
       "\"\<\\\\definecolor{PurpleDarker}{HTML}{550055}\>\"", ",", 
       "\"\<\\\\definecolor{OrangeDarker}{HTML}{AA5500}\>\"", ",", 
       "\"\<\\\\definecolor{GreenDarker}{HTML}{00AA00}\>\""}], "}"}]}], ",", 
    "\[IndentingNewLine]", 
    RowBox[{"\"\<FontSize\>\"", " ", "\[Rule]", " ", "18"}]}], "]"}], 
  ";"}]}], "Input",ExpressionUUID->"c0551617-f8c8-49a0-b0a8-1bcaafbf1414"],

Cell[CellGroupData[{

Cell[BoxData[{
 RowBox[{
  RowBox[{"Clear", "[", 
   RowBox[{
   "u", ",", " ", "mu1", ",", " ", "mu2", ",", " ", "h", ",", " ", "u0", ",", 
    " ", "c", ",", " ", "p"}], "]"}], "\[IndentingNewLine]", 
  RowBox[{"(*", 
   RowBox[{"mu1", " ", ":=", " ", 
    RowBox[{
     RowBox[{
      SubscriptBox["\[Mu]", "1"], "\[IndentingNewLine]", "mu2"}], " ", ":=", 
     " ", 
     SubscriptBox["\[Mu]", "2"]}]}], "\[IndentingNewLine]", 
   "*)"}]}], "\[IndentingNewLine]", 
 RowBox[{"mu2", " ", "=", " ", 
  RowBox[{
   RowBox[{"ChemicalData", "[", 
    RowBox[{"\"\<Water\>\"", ",", " ", "\"\<Viscosity\>\""}], "]"}], " ", "//",
    " ", "First"}]}], "\[IndentingNewLine]", 
 RowBox[{"mu1", " ", "=", " ", 
  RowBox[{
   RowBox[{"ChemicalData", "[", 
    RowBox[{"\"\<Mercury\>\"", ",", " ", "\"\<Viscosity\>\""}], "]"}], " ", "//",
    " ", "First"}]}], "\[IndentingNewLine]", 
 RowBox[{"c", ":=", " ", 
  RowBox[{
   RowBox[{
    RowBox[{"-", "u0"}], "/", 
    RowBox[{"(", 
     RowBox[{"mu1", "+", " ", "mu2"}], ")"}]}], "/", 
   "h"}]}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{"u", "[", "y_", "]"}], " ", "=", " ", 
  RowBox[{"Piecewise", "[", 
   RowBox[{"{", 
    RowBox[{
     RowBox[{"{", 
      RowBox[{
       RowBox[{"c", " ", "mu2", 
        RowBox[{"(", 
         RowBox[{"y", " ", "+", " ", "h"}], ")"}]}], ",", " ", 
       RowBox[{"y", "<", " ", "0"}]}], "}"}], ",", " ", 
     RowBox[{"{", 
      RowBox[{
       RowBox[{"c", " ", 
        RowBox[{"(", 
         RowBox[{
          RowBox[{"mu1", " ", "y"}], " ", "+", " ", 
          RowBox[{"mu2", " ", "h"}]}], ")"}]}], ",", " ", 
       RowBox[{"y", ">", "0"}]}], "}"}]}], "}"}], 
   "]"}]}], "\[IndentingNewLine]", 
 RowBox[{"h", " ", ":=", " ", "1"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{"u0", " ", ":=", " ", "1"}], "\[IndentingNewLine]", 
  RowBox[{"(*", 
   RowBox[{
    RowBox[{"u", "[", "y", "]"}], "\[IndentingNewLine]", 
    RowBox[{"u", "[", 
     RowBox[{"-", "1"}], "]"}], "\[IndentingNewLine]", 
    RowBox[{"u", "[", "1", "]"}], "\[IndentingNewLine]", 
    RowBox[{"u", "[", "0", "]"}]}], "*)"}]}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{"p", " ", "=", " ", 
   RowBox[{"Plot", "[", 
    RowBox[{
     RowBox[{"u", "[", "y", "]"}], ",", " ", 
     RowBox[{"{", 
      RowBox[{"y", ",", " ", 
       RowBox[{"-", "1"}], ",", " ", "1"}], "}"}], ",", " ", 
     RowBox[{"PlotStyle", "\[Rule]", " ", 
      RowBox[{"{", 
       RowBox[{"Thick", ",", " ", "Black"}], "}"}]}]}], "]"}]}], 
  " "}], "\[IndentingNewLine]", 
 RowBox[{"mu1", "/", "mu2"}], "\[IndentingNewLine]", 
 RowBox[{"mu2", "/", 
  RowBox[{"(", 
   RowBox[{"mu1", " ", "+", " ", "mu2"}], ")"}]}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{"(", 
   RowBox[{
    RowBox[{"mu1", "/", "mu2"}], " ", "+", " ", "1"}], ")"}], " ", "*", " ", 
  RowBox[{"mu2", "/", 
   RowBox[{"(", 
    RowBox[{"mu1", " ", "+", " ", "mu2"}], ")"}]}]}]}], "Input",
 CellChangeTimes->{{3.5407667184014797`*^9, 3.540766916742824*^9}, {
   3.5407669601233053`*^9, 3.540766962234426*^9}, {3.5407670702556047`*^9, 
   3.540767194591716*^9}, {3.540767319127839*^9, 3.5407673237581043`*^9}, {
   3.540767564836893*^9, 3.5407677362516975`*^9}, 3.5407678255488048`*^9, {
   3.5407678598687677`*^9, 3.5407678850492077`*^9}, {3.540768467649531*^9, 
   3.5407684676975336`*^9}, {3.5407689169862313`*^9, 3.540768919705387*^9}, {
   3.540769459438258*^9, 3.540769488958946*^9}, {3.540769585249454*^9, 
   3.54076960231843*^9}, {3.888177854269706*^9, 3.888177907106575*^9}},
 CellLabel->
  "In[628]:=",ExpressionUUID->"7bbec9e6-9b2b-40bc-9e0b-1deca4b8dbe0"],

Cell[BoxData["0.0008900000000000001`2."], "Output",
 CellChangeTimes->{
  3.5407669176568766`*^9, 3.540767185640204*^9, 3.540767336833852*^9, 
   3.5407675681480827`*^9, 3.5407676308476686`*^9, 3.5407676684138174`*^9, {
   3.540767709669177*^9, 3.5407677376897793`*^9}, 3.540767827660926*^9, 
   3.540767889057437*^9, 3.5407684687775955`*^9, 3.5407689436837587`*^9, 
   3.5407691539507847`*^9, {3.540769471625955*^9, 3.5407694915800962`*^9}, 
   3.5407696034384947`*^9, {3.888177843207191*^9, 3.888177880804356*^9}, 
   3.8881779149856787`*^9},
 CellLabel->
  "Out[629]=",ExpressionUUID->"1db7d789-85f3-4802-bc51-b200062cd2e2"],

Cell[BoxData["0.001526`4."], "Output",
 CellChangeTimes->{
  3.5407669176568766`*^9, 3.540767185640204*^9, 3.540767336833852*^9, 
   3.5407675681480827`*^9, 3.5407676308476686`*^9, 3.5407676684138174`*^9, {
   3.540767709669177*^9, 3.5407677376897793`*^9}, 3.540767827660926*^9, 
   3.540767889057437*^9, 3.5407684687775955`*^9, 3.5407689436837587`*^9, 
   3.5407691539507847`*^9, {3.540769471625955*^9, 3.5407694915800962`*^9}, 
   3.5407696034384947`*^9, {3.888177843207191*^9, 3.888177880804356*^9}, 
   3.888177914987706*^9},
 CellLabel->
  "Out[630]=",ExpressionUUID->"232f5de8-09d6-4390-8eaa-871efcc45aa1"],

Cell[BoxData[
 TagBox[GridBox[{
    {"\[Piecewise]", GridBox[{
       {
        RowBox[{"-", 
         FractionBox[
          RowBox[{"0.3683774834437086365`1.8617940549091476", " ", "u0", " ", 
           RowBox[{"(", 
            RowBox[{"h", "+", "y"}], ")"}]}], "h"]}], 
        RowBox[{"y", "<", "0"}]},
       {
        RowBox[{"-", 
         FractionBox[
          RowBox[{"413.9072847682118992087`2.426323598977768", " ", "u0", " ", 
           RowBox[{"(", 
            RowBox[{
             RowBox[{"0.0008900000000000001`2.", " ", "h"}], "+", 
             RowBox[{"0.001526`4.", " ", "y"}]}], ")"}]}], "h"]}], 
        RowBox[{"y", ">", "0"}]},
       {"0", 
        TagBox["True",
         "PiecewiseDefault",
         AutoDelete->True]}
      },
      AllowedDimensions->{2, Automatic},
      Editable->True,
      GridBoxAlignment->{"Columns" -> {{Left}}, "Rows" -> {{Baseline}}},
      GridBoxItemSize->{"Columns" -> {{Automatic}}, "Rows" -> {{1.}}},
      GridBoxSpacings->{"Columns" -> {
          Offset[0.27999999999999997`], {
           Offset[0.84]}, 
          Offset[0.27999999999999997`]}, "Rows" -> {
          Offset[0.2], {
           Offset[0.4]}, 
          Offset[0.2]}},
      Selectable->True]}
   },
   GridBoxAlignment->{"Columns" -> {{Left}}, "Rows" -> {{Baseline}}},
   GridBoxItemSize->{"Columns" -> {{Automatic}}, "Rows" -> {{1.}}},
   GridBoxSpacings->{"Columns" -> {
       Offset[0.27999999999999997`], {
        Offset[0.35]}, 
       Offset[0.27999999999999997`]}, "Rows" -> {
       Offset[0.2], {
        Offset[0.4]}, 
       Offset[0.2]}}],
  "Piecewise",
  DeleteWithContents->True,
  Editable->False,
  SelectWithContents->True,
  Selectable->False,
  StripWrapperBoxes->True]], "Output",
 CellChangeTimes->{
  3.5407669176568766`*^9, 3.540767185640204*^9, 3.540767336833852*^9, 
   3.5407675681480827`*^9, 3.5407676308476686`*^9, 3.5407676684138174`*^9, {
   3.540767709669177*^9, 3.5407677376897793`*^9}, 3.540767827660926*^9, 
   3.540767889057437*^9, 3.5407684687775955`*^9, 3.5407689436837587`*^9, 
   3.5407691539507847`*^9, {3.540769471625955*^9, 3.5407694915800962`*^9}, 
   3.5407696034384947`*^9, {3.888177843207191*^9, 3.888177880804356*^9}, 
   3.888177914989832*^9},
 CellLabel->
  "Out[632]=",ExpressionUUID->"d73a2901-b151-44dc-9a1a-e9196df5ed3a"],

Cell[BoxData[
 GraphicsBox[{{{}, {}, 
    TagBox[
     {GrayLevel[0], Thickness[Large], Opacity[1.], LineBox[CompressedData["
1:eJwVxXtQ0wUAB3AecWeJCBYo8RIRDth4jZNnvGQayBFDzQs5jIG2DuQgHqGg
YANlcoLJw3yM5W5DIWI8NkgX7hvqEBivDfj9hAmTxwhQmIkSch1Uf3zuY5+U
fviUgZ6eXsB//t89xGJxc1OHzxpscg0dGbL09w6c9+s6hFGPCQt4bmgWezmt
vNOhNybCNJgXBJpzdNLcSx2uMsO6bHjR8DUrHu8jdWhbCOJv4yUgdOav3ptN
Oji5d5Qb8dJwuKS/wftrHU4w8i/q884jd7A4jSVbRvLU+IXNmjKMjGxd7GQu
IafQN1zznAebP9I/8bV+harnJ7fQlu6iLfWJ0faJRcRS/DYYB0VIvOL1eoy9
gNQ3npQMOzHWKvI5CJnHn2N/u/DJdghMJi1vTM2ha3UhrlQjBfeQV+bwZS1u
UZlK/ogM7NPMMy6Rs6jykUcr93ci3/CX3MylaVz5Ll3hFv4YzAuDe4m6KUy1
ZL4psJej+qH2BjflBVoK/IJYq12QapyNf90zCa+5yjuUlW44mIbuP8pTY9uR
iMbZ/l60unJSpmeeoeZ4hersUB808pbdPj4EhMs8q7s9A9BSq2loH4YR3aAk
mTEEs4J6H3d9JcwmC42nY5Sg+uiotSt9UKzXzx0PVqGIvjT04MxTTMza9neG
DsP8qOjHuJ2P4GaecyA7eAStq/Lt3XuloHbn7rCnjKJWrS1bKBahKEL+8ncK
gfFzFj/XeItQ7nk+NM+DgInt582x0424vWtftZ83ge8T61QPQhohnhcGtwUQ
OKhN2Vm63oBZTvE1USSB+WXdHdeMetB7wn35LAKuBuvi1HghjA49Yl8SEDgh
cJXbfSSEGS2PpN8jUEGPJ4bvC2D7KY1q2EBg/VLHWqCFAPsW+aOFrQQUWwuD
jJV8fFP6g/PZTgLPXLeUx5Xx8LQ3dCBVQyAh1lqiTq4CJwqWsVYkXq288895
UgnRfRn3H1sS564PwsSxEipHmV3dHhJcNVsRNncN1noPHTddSEgUKnmMshzN
EqlXox+JprenHebHizFm0x754TESA/67Pay4RdgobeuTxJFYLhgO+CKBDYc1
SUxiAomvdmQLv0Uh0lTiL387SeJIoImBfk8O9EtamKeySFTIsy1ZUVlwets8
a5pLYihG7dnfn4EoZjOrI4/E7W4GaLUsVAc2pX3MJrFrwmZ5oz4J0jrRa9lF
EpSZUf/rCfHQmIuyUi6TcDLO+MmdFYsPihpXzctI+Bt53HuhpWNqaOJx7VUS
/wIpzgpi
       "]], LineBox[CompressedData["
1:eJwBkQNu/CFib1JlAgAAADgAAAACAAAAOQUvp+DlRD9kaDG0GJrXv3uTRspr
NGA/ZITmn/en17/DIImHnRByPy1ncjIjwde/Z2cqZrb+gj+8LIpXevPXv7kK
e9XCdZM/3Le5oShY2L+gLRXTryKUP7DBYjb8Xti/hlCv0JzPlD+EywvLz2XY
v1SW48t2KZY/K99d9HZz2L/wIUzCKt2YP3wGAkfFjti/Jjkdr5JEnj8cVUrs
YcXYv8mzX0SxiaQ/XPLaNpsy2b814gEegVivP9ws/MsNDdq/I/C7+TrCuT9T
U9hFw6Tbv0mj2c1OWMI/TcI4waRe3b9FTRID9bXHP2xq1hx1EN+/j1/XgDC3
zD8B4gbkilLgv8dOHQ1QEtE/DrNkOvEt4b/tIRV+0prTP9Zcj7i/+uG/dXQr
YY8W1j8xo9imhcPiv9fcEFJmyNg/zQ3klWGd479geTznB0zbPyVRvKylaOS/
wys3isMF3j+9uFbE/0TlvyYJvOikSOA/Efm9A8IS5r8dvGtFBYjhP/nVQ7N7
3Oa/APoCqXLi4j8g14tjS7fnv/dRvV7FJeQ/BbGgO4OD6L/bNF8bJYTlPyqv
dxTRYOm/cFcQESLc5j/hSW1dFjrqvxmU5FgEHeg/VL0vzsME67+uW6Cn83jp
PwlVtD+H4Ou/Vz1/SMi96j95xQXZsq3sv7FebSI6/Os/fdJ14tV27b/4CkMD
uVXtP8EDqOwOUe6/UtE7Nh2Y7j/ADacesBzvvwo7C8G8ne4/jhT1XT0g77/B
pNpLXKPuP1obQ53KI++/MHh5YZuu7j/0KN8b5Srvvw4ft4wZxe4/JkQXGRo5
77/JbDLjFfLuP4p6hxOEVe+/QAgpkA5M7z9W52cIWI7vv/hx+BquUe8/Iu61
R+WR77+v28elTVfvP+/0A4dyle+/Hq9mu4xi7z+IAqAFjZzvv/xVpOYKee8/
uh3YAsKq77+3ox89B6bvPyBUSP0rx++/bg3vx6ar7z/sWpY8ucrvvyZ3vlJG
se8/uWHke0bO77+USl1ohbzvP1JvgPpg1e+/cvGakwPT7z+Girj3lePvvypb
ah6j2O8/UpEGNyPn77/hxDmpQt7vPx+YVHaw6u+/UJjYvoHp7z+4pfD0yvHv
vwgCqEkh7+8/haw+NFj177+/a3fUwPTvP1GzjHPl+O+/dtVGX2D67z8eutqy
cvzvvy4/Fur//+8/6sAo8v//77+DHeXg
       "]]},
     Annotation[#, "Charting`Private`Tag$336387#1"]& ], {}}, {}},
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
  PlotRange->{{-1, 1}, {-0.9999999742194892, 0.}},
  PlotRangeClipping->True,
  PlotRangePadding->{{
     Scaled[0.02], 
     Scaled[0.02]}, {
     Scaled[0.05], 
     Scaled[0.05]}},
  Ticks->{Automatic, Automatic}]], "Output",
 CellChangeTimes->{
  3.5407669176568766`*^9, 3.540767185640204*^9, 3.540767336833852*^9, 
   3.5407675681480827`*^9, 3.5407676308476686`*^9, 3.5407676684138174`*^9, {
   3.540767709669177*^9, 3.5407677376897793`*^9}, 3.540767827660926*^9, 
   3.540767889057437*^9, 3.5407684687775955`*^9, 3.5407689436837587`*^9, 
   3.5407691539507847`*^9, {3.540769471625955*^9, 3.5407694915800962`*^9}, 
   3.5407696034384947`*^9, {3.888177843207191*^9, 3.888177880804356*^9}, 
   3.8881779150394363`*^9},
 CellLabel->
  "Out[635]=",ExpressionUUID->"f2a6ef28-65f5-4ed9-aaa1-11e3f0f76db4"],

Cell[BoxData["1.7146067415730335068`1.9956786262173574"], "Output",
 CellChangeTimes->{
  3.5407669176568766`*^9, 3.540767185640204*^9, 3.540767336833852*^9, 
   3.5407675681480827`*^9, 3.5407676308476686`*^9, 3.5407676684138174`*^9, {
   3.540767709669177*^9, 3.5407677376897793`*^9}, 3.540767827660926*^9, 
   3.540767889057437*^9, 3.5407684687775955`*^9, 3.5407689436837587`*^9, 
   3.5407691539507847`*^9, {3.540769471625955*^9, 3.5407694915800962`*^9}, 
   3.5407696034384947`*^9, {3.888177843207191*^9, 3.888177880804356*^9}, 
   3.888177915042858*^9},
 CellLabel->
  "Out[636]=",ExpressionUUID->"f420878e-e819-4966-ba0c-a4915430940c"],

Cell[BoxData["0.3683774834437086365`1.8617940549091476"], "Output",
 CellChangeTimes->{
  3.5407669176568766`*^9, 3.540767185640204*^9, 3.540767336833852*^9, 
   3.5407675681480827`*^9, 3.5407676308476686`*^9, 3.5407676684138174`*^9, {
   3.540767709669177*^9, 3.5407677376897793`*^9}, 3.540767827660926*^9, 
   3.540767889057437*^9, 3.5407684687775955`*^9, 3.5407689436837587`*^9, 
   3.5407691539507847`*^9, {3.540769471625955*^9, 3.5407694915800962`*^9}, 
   3.5407696034384947`*^9, {3.888177843207191*^9, 3.888177880804356*^9}, 
   3.888177915044527*^9},
 CellLabel->
  "Out[637]=",ExpressionUUID->"0df8eacc-7ff7-4ee4-a3e4-b70aa5e1540b"],

Cell[BoxData["0.9999999999999999999`1.696235529317793"], "Output",
 CellChangeTimes->{
  3.5407669176568766`*^9, 3.540767185640204*^9, 3.540767336833852*^9, 
   3.5407675681480827`*^9, 3.5407676308476686`*^9, 3.5407676684138174`*^9, {
   3.540767709669177*^9, 3.5407677376897793`*^9}, 3.540767827660926*^9, 
   3.540767889057437*^9, 3.5407684687775955`*^9, 3.5407689436837587`*^9, 
   3.5407691539507847`*^9, {3.540769471625955*^9, 3.5407694915800962`*^9}, 
   3.5407696034384947`*^9, {3.888177843207191*^9, 3.888177880804356*^9}, 
   3.888177915046273*^9},
 CellLabel->
  "Out[638]=",ExpressionUUID->"84fd053d-0318-4f95-94a1-f5969c24cf4d"]
}, Open  ]],

Cell[BoxData[
 TagBox[GridBox[{
    {"\[Piecewise]", GridBox[{
       {
        RowBox[{
         RowBox[{
         "-", "0.36837748344370862238511590681459676454`1.8617940549091447"}],
          " ", 
         RowBox[{"(", 
          RowBox[{"1", "+", "y"}], ")"}]}], 
        RowBox[{"y", "<", "0"}]},
       {
        RowBox[{
         RowBox[{"(", 
          RowBox[{
           RowBox[{"-", "413.9072847682119084959`2.426323598977769"}], " ", 
           "0.00089000000000000005755812493291045939`2."}], " ", ")"}], 
         RowBox[{
          RowBox[{"(", 
           RowBox[{"0.00089000000000000005755812493291045939`2.", "+", 
            RowBox[{
            "0.00152600000000000001268429805634241347`4.", " ", "y"}]}], 
           ")"}], "/", "0.00089000000000000005755812493291045939`2."}]}], 
        RowBox[{"y", ">", "0"}]},
       {"0", 
        TagBox["True",
         "PiecewiseDefault",
         AutoDelete->True]}
      },
      AllowedDimensions->{2, Automatic},
      Editable->True,
      GridBoxAlignment->{
       "Columns" -> {{Left}}, "ColumnsIndexed" -> {}, "Rows" -> {{Baseline}}, 
        "RowsIndexed" -> {}},
      GridBoxItemSize->{
       "Columns" -> {{Automatic}}, "ColumnsIndexed" -> {}, "Rows" -> {{1.}}, 
        "RowsIndexed" -> {}},
      GridBoxSpacings->{"Columns" -> {
          Offset[0.27999999999999997`], {
           Offset[0.84]}, 
          Offset[0.27999999999999997`]}, "ColumnsIndexed" -> {}, "Rows" -> {
          Offset[0.2], {
           Offset[0.4]}, 
          Offset[0.2]}, "RowsIndexed" -> {}},
      Selectable->True]}
   },
   GridBoxAlignment->{
    "Columns" -> {{Left}}, "ColumnsIndexed" -> {}, "Rows" -> {{Baseline}}, 
     "RowsIndexed" -> {}},
   GridBoxItemSize->{
    "Columns" -> {{Automatic}}, "ColumnsIndexed" -> {}, "Rows" -> {{1.}}, 
     "RowsIndexed" -> {}},
   GridBoxSpacings->{"Columns" -> {
       Offset[0.27999999999999997`], {
        Offset[0.35]}, 
       Offset[0.27999999999999997`]}, "ColumnsIndexed" -> {}, "Rows" -> {
       Offset[0.2], {
        Offset[0.4]}, 
       Offset[0.2]}, "RowsIndexed" -> {}}],
  "Piecewise",
  DeleteWithContents->True,
  Editable->False,
  SelectWithContents->True,
  Selectable->False]], "Input",
 CellChangeTimes->{{3.540769004266224*^9, 
  3.5407690320428123`*^9}},ExpressionUUID->"05e34c34-d426-45cc-86dc-\
025115696e09"],

Cell[BoxData[
 TagBox[GridBox[{
    {"\[Piecewise]", GridBox[{
       {
        RowBox[{
         RowBox[{
         "-", "0.36837748344370862238511590681459676454`1.8617940549091447"}],
          " ", 
         RowBox[{"(", 
          RowBox[{"1", "+", "y"}], ")"}]}], 
        RowBox[{"y", "<", "0"}]},
       {
        RowBox[{
         RowBox[{"-", 
          RowBox[{"(", 
           RowBox[{
           "413.9072847682119084959`1.624392398350306", " ", "/", 
            "0.00089000000000000005755812493291045939`2."}], ")"}]}], 
         RowBox[{"(", 
          RowBox[{"0.00089000000000000005755812493291045939`2.", "+", 
           RowBox[{
           "0.00152600000000000001268429805634241347`4.", " ", "y"}]}], 
          ")"}]}], 
        RowBox[{"y", ">", "0"}]},
       {"0", 
        TagBox["True",
         "PiecewiseDefault",
         AutoDelete->True]}
      },
      AllowedDimensions->{2, Automatic},
      Editable->True,
      GridBoxAlignment->{
       "Columns" -> {{Left}}, "ColumnsIndexed" -> {}, "Rows" -> {{Baseline}}, 
        "RowsIndexed" -> {}},
      GridBoxItemSize->{
       "Columns" -> {{Automatic}}, "ColumnsIndexed" -> {}, "Rows" -> {{1.}}, 
        "RowsIndexed" -> {}},
      GridBoxSpacings->{"Columns" -> {
          Offset[0.27999999999999997`], {
           Offset[0.84]}, 
          Offset[0.27999999999999997`]}, "ColumnsIndexed" -> {}, "Rows" -> {
          Offset[0.2], {
           Offset[0.4]}, 
          Offset[0.2]}, "RowsIndexed" -> {}},
      Selectable->True]}
   },
   GridBoxAlignment->{
    "Columns" -> {{Left}}, "ColumnsIndexed" -> {}, "Rows" -> {{Baseline}}, 
     "RowsIndexed" -> {}},
   GridBoxItemSize->{
    "Columns" -> {{Automatic}}, "ColumnsIndexed" -> {}, "Rows" -> {{1.}}, 
     "RowsIndexed" -> {}},
   GridBoxSpacings->{"Columns" -> {
       Offset[0.27999999999999997`], {
        Offset[0.35]}, 
       Offset[0.27999999999999997`]}, "ColumnsIndexed" -> {}, "Rows" -> {
       Offset[0.2], {
        Offset[0.4]}, 
       Offset[0.2]}, "RowsIndexed" -> {}}],
  "Piecewise",
  DeleteWithContents->True,
  Editable->False,
  SelectWithContents->True,
  Selectable->False]], "Input",
 CellChangeTimes->{{3.5407690407043076`*^9, 
  3.5407690466806498`*^9}},ExpressionUUID->"bbaaeebc-0585-4ff4-8a39-\
38a6f5a80649"],

Cell[CellGroupData[{

Cell[BoxData[
 TagBox[GridBox[{
    {"\[Piecewise]", GridBox[{
       {
        RowBox[{
         RowBox[{
         "-", "0.36837748344370862238511590681459676454`1.8617940549091447"}],
          " ", 
         RowBox[{"(", 
          RowBox[{"1", "+", "y"}], ")"}]}], 
        RowBox[{"y", "<", "0"}]},
       {
        RowBox[{
         RowBox[{"-", "465064.36490810323789624`1.4717656381506572"}], " ", 
         RowBox[{"(", 
          RowBox[{
           RowBox[{
           "0.00089000000000000005755812493291045939`2.", "/", 
            "0.00089000000000000005755812493291045939`2."}], "+", 
           RowBox[{"0.00152600000000000001268429805634241347`4.", " ", 
            RowBox[{
            "y", "/", "0.00089000000000000005755812493291045939`2."}]}]}], 
          ")"}]}], 
        RowBox[{"y", ">", "0"}]},
       {"0", 
        TagBox["True",
         "PiecewiseDefault",
         AutoDelete->True]}
      },
      AllowedDimensions->{2, Automatic},
      Editable->True,
      GridBoxAlignment->{
       "Columns" -> {{Left}}, "ColumnsIndexed" -> {}, "Rows" -> {{Baseline}}, 
        "RowsIndexed" -> {}},
      GridBoxItemSize->{
       "Columns" -> {{Automatic}}, "ColumnsIndexed" -> {}, "Rows" -> {{1.}}, 
        "RowsIndexed" -> {}},
      GridBoxSpacings->{"Columns" -> {
          Offset[0.27999999999999997`], {
           Offset[0.84]}, 
          Offset[0.27999999999999997`]}, "ColumnsIndexed" -> {}, "Rows" -> {
          Offset[0.2], {
           Offset[0.4]}, 
          Offset[0.2]}, "RowsIndexed" -> {}},
      Selectable->True]}
   },
   GridBoxAlignment->{
    "Columns" -> {{Left}}, "ColumnsIndexed" -> {}, "Rows" -> {{Baseline}}, 
     "RowsIndexed" -> {}},
   GridBoxItemSize->{
    "Columns" -> {{Automatic}}, "ColumnsIndexed" -> {}, "Rows" -> {{1.}}, 
     "RowsIndexed" -> {}},
   GridBoxSpacings->{"Columns" -> {
       Offset[0.27999999999999997`], {
        Offset[0.35]}, 
       Offset[0.27999999999999997`]}, "ColumnsIndexed" -> {}, "Rows" -> {
       Offset[0.2], {
        Offset[0.4]}, 
       Offset[0.2]}, "RowsIndexed" -> {}}],
  "Piecewise",
  DeleteWithContents->True,
  Editable->False,
  SelectWithContents->True,
  Selectable->False]], "Input",
 CellChangeTimes->{{3.5407690548801184`*^9, 
  3.5407690601234183`*^9}},ExpressionUUID->"89621cca-9b69-4b54-8a0e-\
e062c78ebc8e"],

Cell[BoxData[
 TagBox[GridBox[{
    {"\[Piecewise]", GridBox[{
       {
        RowBox[{
         RowBox[{
         "-", "0.36837748344370862238511590681459676454`1.8617940549091447"}],
          " ", 
         RowBox[{"(", 
          RowBox[{"1", "+", "y"}], ")"}]}], 
        RowBox[{"y", "<", "0"}]},
       {
        RowBox[{
         RowBox[{"-", "465064.36490810323789624`1.4717656381506572"}], " ", 
         RowBox[{"(", 
          RowBox[{
          "0.99999999999999999999999588246814974568`1.6989700043360185", "+", 
           RowBox[{
           "1.71460674157303361123004801204227345896`1.9956786262173565", " ",
             "y"}]}], ")"}]}], 
        RowBox[{"y", ">", "0"}]},
       {"0", 
        TagBox["True",
         "PiecewiseDefault",
         AutoDelete->True]}
      },
      AllowedDimensions->{2, Automatic},
      Editable->True,
      GridBoxAlignment->{
       "Columns" -> {{Left}}, "ColumnsIndexed" -> {}, "Rows" -> {{Baseline}}, 
        "RowsIndexed" -> {}},
      GridBoxItemSize->{
       "Columns" -> {{Automatic}}, "ColumnsIndexed" -> {}, "Rows" -> {{1.}}, 
        "RowsIndexed" -> {}},
      GridBoxSpacings->{"Columns" -> {
          Offset[0.27999999999999997`], {
           Offset[0.84]}, 
          Offset[0.27999999999999997`]}, "ColumnsIndexed" -> {}, "Rows" -> {
          Offset[0.2], {
           Offset[0.4]}, 
          Offset[0.2]}, "RowsIndexed" -> {}},
      Selectable->True]}
   },
   GridBoxAlignment->{
    "Columns" -> {{Left}}, "ColumnsIndexed" -> {}, "Rows" -> {{Baseline}}, 
     "RowsIndexed" -> {}},
   GridBoxItemSize->{
    "Columns" -> {{Automatic}}, "ColumnsIndexed" -> {}, "Rows" -> {{1.}}, 
     "RowsIndexed" -> {}},
   GridBoxSpacings->{"Columns" -> {
       Offset[0.27999999999999997`], {
        Offset[0.35]}, 
       Offset[0.27999999999999997`]}, "ColumnsIndexed" -> {}, "Rows" -> {
       Offset[0.2], {
        Offset[0.4]}, 
       Offset[0.2]}, "RowsIndexed" -> {}}],
  "Piecewise",
  DeleteWithContents->True,
  Editable->False,
  SelectWithContents->True,
  Selectable->False]], "Output",
 CellChangeTimes->{
  3.5407690611054745`*^9},ExpressionUUID->"e9104be5-7ac3-43a0-9a2a-\
95bbe22046b1"]
}, Open  ]],

Cell[CellGroupData[{

Cell["rough calculations.", "Section",
 CellChangeTimes->{{3.540767213305786*^9, 
  3.5407672171900086`*^9}},ExpressionUUID->"d4ac8ee6-932c-41a5-9b3e-\
4394a68a05a8"],

Cell[CellGroupData[{

Cell["viscosity of mercury", "WolframAlphaLong",
 CellChangeTimes->{{3.540767223006341*^9, 3.540767306468115*^9}, {
  3.5407673853666277`*^9, 3.5407674283430862`*^9}, {3.5407675465348463`*^9, 
  3.5407675481119366`*^9}},ExpressionUUID->"f9237e92-cf9d-41a6-bae9-\
285ac723593e"],

Cell[BoxData[
 NamespaceBox["WolframAlphaQueryResults",
  DynamicModuleBox[{Typeset`q$$ = "viscosity of mercury", Typeset`opts$$ = {
   AppearanceElements -> {
     "Warnings", "Assumptions", "Brand", "Pods", "PodMenus", "Unsuccessful", 
      "Sources"}, Asynchronous -> All, 
    TimeConstraint -> {30, Automatic, Automatic, Automatic}, 
    Method -> {
     "Formats" -> {"cell", "minput", "msound", "dataformats"}, "Server" -> 
      "http://api.wolframalpha.com/v1/"}}, Typeset`elements$$ = {
   "Warnings", "Assumptions", "Brand", "Pods", "PodMenus", "Unsuccessful", 
    "Sources"}, Typeset`pod1$$ = XMLElement[
   "pod", {"title" -> "Input interpretation", "scanner" -> "Identity", "id" -> 
     "Input", "position" -> "100", "error" -> "false", "numsubpods" -> "1"}, {
     XMLElement["subpod", {"title" -> ""}, {
       XMLElement["minput", {}, {"ChemicalData[\"Mercury\", \"Viscosity\"]"}], 
       XMLElement["cell", {"compressed" -> False, "string" -> True}, {
         Cell[
          BoxData[
           FormBox[
            TagBox[
             FormBox[
              TagBox[
               GridBox[{{
                  StyleBox[
                   TagBox[
                    GridBox[{{
                    StyleBox[
                    TagBox[
                    TagBox["\"mercury\"", 
                    $CellContext`TagBoxWrapper[
                    "Entity" -> {ChemicalData, "Mercury"}]], Identity], {
                    LineIndent -> 0, LineSpacing -> {0.9, 0, 1.5}}], 
                    "\"dynamic viscosity\""}}, 
                    GridBoxBackground -> {"Columns" -> {
                    GrayLevel[0.949], None}, "Rows" -> {{None}}}, 
                    GridBoxItemSize -> {
                    "Columns" -> {{Automatic}}, "Rows" -> {{Automatic}}}, 
                    ColumnsEqual -> False, RowsEqual -> False, 
                    GridBoxDividers -> {"Columns" -> {
                    GrayLevel[0.84], 
                    GrayLevel[0.84], 
                    GrayLevel[0.84]}, "Rows" -> {{
                    GrayLevel[0.84]}}, 
                    "RowsIndexed" -> {
                    1 -> GrayLevel[0.84], -1 -> GrayLevel[0.84]}}, 
                    GridBoxSpacings -> {
                    "Columns" -> {1, 1, 1}, "Rows" -> {{0.3}}}, 
                    GridBoxAlignment -> {
                    "Columns" -> {{Left}}, "Rows" -> {{Baseline}}}, 
                    AllowScriptLevelChange -> False, BaselinePosition -> 1], 
                    $CellContext`TagBoxWrapper["Separator" -> " | "]], 
                   LineSpacing -> {1, 0, 1.5}, LineIndent -> 0]}}, 
                GridBoxItemSize -> {
                 "Columns" -> {{Automatic}}, "Rows" -> {{Automatic}}}, 
                ColumnsEqual -> False, RowsEqual -> False, 
                GridBoxSpacings -> {"Columns" -> {{
                    AbsoluteThickness[-1]}}, "Rows" -> {{0}}}, 
                AllowScriptLevelChange -> False], 
               $CellContext`TagBoxWrapper["Separator" -> " | "]], 
              TraditionalForm], 
             PolynomialForm[#, TraditionalOrder -> False]& ], 
            TraditionalForm]], "Output"]}], 
       XMLElement[
       "dataformats", {}, {
        "plaintext,minput,computabledata,formatteddata"}]}]}], 
   Typeset`pod2$$ = XMLElement[
   "pod", {"title" -> "Result", "scanner" -> "Data", "id" -> "Result", 
     "position" -> "200", "error" -> "false", "numsubpods" -> "1", "primary" -> 
     "true"}, {
     XMLElement["subpod", {"title" -> ""}, {
       XMLElement["cell", {"compressed" -> False, "string" -> True}, {
         Cell[
          BoxData[
           FormBox[
            StyleBox[
             TemplateBox[{
               StyleBox[
                RowBox[{
                  TagBox[
                   TagBox[
                    RowBox[{
                    TagBox["0.001526", 
                    $CellContext`TagBoxWrapper["StringBoxes" -> "0.001526"]], 
                    "\[InvisibleSpace]", 
                    StyleBox[
                    RowBox[{}], FontFamily -> "Helvetica", FontSize -> 
                    Smaller], "\[InvisibleSpace]", "\[ThickSpace]", 
                    "\[InvisibleSpace]", 
                    StyleBox[
                    
                    RowBox[{
                    "\"Pa\"", "\[InvisibleSpace]", "\"\[ThinSpace]\"", 
                    "\[InvisibleSpace]", "\"s\""}], FontFamily -> "Helvetica",
                     FontSize -> Smaller]}], Identity], #& , SyntaxForm -> 
                   Dot], " ", 
                  StyleBox[
                   
                   RowBox[{
                    "\"(\"", "\[NoBreak]", "\"pascal seconds\"", "\[NoBreak]",
                     "\")\""}], LinebreakAdjustments -> {1, 100, 1, 0, 100}, 
                   LineIndent -> 0, {
                   FontFamily -> "Helvetica", FontSize -> Smaller}, 
                   GrayLevel[0.6], StripOnInput -> False]}], 
                LinebreakAdjustments -> {1, 100, 1, 0, 100}, LineIndent -> 0, 
                ZeroWidthTimes -> False], "\" \"", 
               StyleBox[
                RowBox[{"\"(\"", "\[NoBreak]", 
                  TemplateBox[{"\"at \"", 
                    StyleBox[
                    TagBox[
                    TagBox[
                    RowBox[{
                    TagBox["25", 
                    $CellContext`TagBoxWrapper["StringBoxes" -> "25"]], 
                    "\[InvisibleSpace]", 
                    StyleBox[
                    RowBox[{}], FontFamily -> "Helvetica", FontSize -> 
                    Smaller], "\[InvisibleSpace]", "\[ThickSpace]", 
                    "\[InvisibleSpace]", 
                    StyleBox[
                    "\"\[Degree]C\"", FontFamily -> "Helvetica", FontSize -> 
                    Smaller]}], Identity], #& , SyntaxForm -> Dot], 
                    LinebreakAdjustments -> {1, 100, 1, 0, 100}, LineIndent -> 
                    0, ZeroWidthTimes -> False]}, "Row", 
                   DisplayFunction -> (
                    RowBox[{#, "\[InvisibleSpace]", #2}]& ), 
                   InterpretationFunction -> (RowBox[{
                    StyleBox[
                    "Row", FontFamily -> "Bitstream Vera Sans", 
                    FontSize -> -1 + Inherited], "[", 
                    RowBox[{"{", 
                    RowBox[{#, ",", #2}], "}"}], "]"}]& )], "\[NoBreak]", 
                  "\")\""}], LinebreakAdjustments -> {1, 100, 1, 0, 100}, 
                LineIndent -> 0, {FontFamily -> "Verdana", FontSize -> 10}, 
                GrayLevel[0.5], StripOnInput -> False]}, "Row", 
              DisplayFunction -> (
               RowBox[{#, "\[InvisibleSpace]", #2, 
                 "\[InvisibleSpace]", #3}]& ), 
              InterpretationFunction -> (RowBox[{
                 StyleBox[
                 "Row", FontFamily -> "Bitstream Vera Sans", 
                  FontSize -> -1 + Inherited], "[", 
                 RowBox[{"{", 
                   RowBox[{#, ",", #2, ",", #3}], "}"}], "]"}]& )], 
             LineIndent -> 0], TraditionalForm]], "Output"]}], 
       XMLElement[
       "dataformats", {}, {
        "plaintext,computabledata,formatteddata,numberdata,quantitydata"}]}]}]\
, Typeset`pod3$$ = XMLElement[
   "pod", {"title" -> "Unit conversions", "scanner" -> "Unit", "id" -> 
     "UnitConversion", "position" -> "300", "error" -> "false", "numsubpods" -> 
     "5"}, {
     XMLElement["subpod", {"title" -> ""}, {
       XMLElement["cell", {"compressed" -> False, "string" -> True}, {
         Cell[
          BoxData[
           FormBox[
            StyleBox[
             RowBox[{
               TagBox[
                TagBox[
                 RowBox[{
                   TagBox["1.526", 
                    $CellContext`TagBoxWrapper["StringBoxes" -> "1.526"]], 
                   "\[InvisibleSpace]", 
                   StyleBox[
                    RowBox[{}], FontFamily -> "Helvetica", FontSize -> 
                    Smaller], "\[InvisibleSpace]", "\[ThickSpace]", 
                   "\[InvisibleSpace]", 
                   StyleBox[
                    
                    RowBox[{
                    "\"mPa\"", "\[InvisibleSpace]", "\"\[ThinSpace]\"", 
                    "\[InvisibleSpace]", "\"s\""}], FontFamily -> "Helvetica",
                     FontSize -> Smaller]}], Identity], #& , SyntaxForm -> 
                Dot], " ", 
               StyleBox[
                
                RowBox[{
                 "\"(\"", "\[NoBreak]", "\"millipascal seconds\"", 
                  "\[NoBreak]", "\")\""}], 
                LinebreakAdjustments -> {1, 100, 1, 0, 100}, LineIndent -> 
                0, {FontFamily -> "Helvetica", FontSize -> Smaller}, 
                GrayLevel[0.6], StripOnInput -> False]}], 
             LinebreakAdjustments -> {1, 100, 1, 0, 100}, LineIndent -> 0, 
             ZeroWidthTimes -> False], TraditionalForm]], "Output"]}], 
       XMLElement[
       "dataformats", {}, {
        "plaintext,computabledata,formatteddata,numberdata,quantitydata"}]}], 
     XMLElement["subpod", {"title" -> ""}, {
       XMLElement["cell", {"compressed" -> False, "string" -> True}, {
         Cell[
          BoxData[
           FormBox[
            TagBox[
             GridBox[{{
                StyleBox[
                 RowBox[{
                   TagBox[
                    TagBox[
                    RowBox[{
                    TagBox["1.526", 
                    $CellContext`TagBoxWrapper["StringBoxes" -> "1.526"]], 
                    "\[InvisibleSpace]", 
                    StyleBox[
                    RowBox[{}], FontFamily -> "Helvetica", FontSize -> 
                    Smaller], "\[InvisibleSpace]", "\[ThickSpace]", 
                    "\[InvisibleSpace]", 
                    StyleBox[
                    "\"cP\"", FontFamily -> "Helvetica", FontSize -> 
                    Smaller]}], Identity], #& , SyntaxForm -> Dot], " ", 
                   StyleBox[
                    
                    RowBox[{
                    "\"(\"", "\[NoBreak]", "\"centipoise\"", "\[NoBreak]", 
                    "\")\""}], LinebreakAdjustments -> {1, 100, 1, 0, 100}, 
                    LineIndent -> 0, {
                    FontFamily -> "Helvetica", FontSize -> Smaller}, 
                    GrayLevel[0.6], StripOnInput -> False]}], 
                 LinebreakAdjustments -> {1, 100, 1, 0, 100}, LineIndent -> 0,
                  ZeroWidthTimes -> False]}, {
                TemplateBox[{"\" \"", 
                  StyleBox[
                   
                   RowBox[{
                    "\"(\"", "\[NoBreak]", "\"unit officially deprecated\"", 
                    "\[NoBreak]", "\")\""}], 
                   LinebreakAdjustments -> {1, 100, 1, 0, 100}, LineIndent -> 
                   0, {FontFamily -> "Verdana", FontSize -> 10}, 
                   GrayLevel[0.5], StripOnInput -> False]}, "Row", 
                 DisplayFunction -> (RowBox[{#, "\[InvisibleSpace]", #2}]& ), 
                 InterpretationFunction -> (RowBox[{
                    StyleBox[
                    "Row", FontFamily -> "Bitstream Vera Sans", 
                    FontSize -> -1 + Inherited], "[", 
                    RowBox[{"{", 
                    RowBox[{#, ",", #2}], "}"}], "]"}]& )]}}, 
              GridBoxAlignment -> {"Columns" -> {{Left}}}, 
              AllowScriptLevelChange -> False, 
              GridBoxItemSize -> {
               "Columns" -> {{Automatic}}, "Rows" -> {{Automatic}}}, 
              GridBoxSpacings -> {
               "Columns" -> {{Automatic}}, "Rows" -> {{0}}}], "Column"], 
            TraditionalForm]], "Output"]}], 
       XMLElement[
       "dataformats", {}, {
        "plaintext,computabledata,formatteddata,numberdata,quantitydata"}]}], 
     XMLElement["subpod", {"title" -> ""}, {
       XMLElement["cell", {"compressed" -> False, "string" -> True}, {
         Cell[
          BoxData[
           FormBox[
            TagBox[
             GridBox[{{
                StyleBox[
                 TagBox[
                  TagBox[
                   RowBox[{
                    TagBox["0.01526", 
                    $CellContext`TagBoxWrapper["StringBoxes" -> "0.01526"]], 
                    "\[InvisibleSpace]", " ", 
                    StyleBox[
                    "\"poise\"", LinebreakAdjustments -> {1, 100, 1, 0, 100}, 
                    LineIndent -> 0, {
                    FontFamily -> "Helvetica", FontSize -> Smaller}, 
                    StripOnInput -> False]}], Identity], #& , SyntaxForm -> 
                  Dot], LinebreakAdjustments -> {1, 100, 1, 0, 100}, 
                 LineIndent -> 0, ZeroWidthTimes -> False]}, {
                TemplateBox[{"\" \"", 
                  StyleBox[
                   
                   RowBox[{
                    "\"(\"", "\[NoBreak]", "\"unit officially deprecated\"", 
                    "\[NoBreak]", "\")\""}], 
                   LinebreakAdjustments -> {1, 100, 1, 0, 100}, LineIndent -> 
                   0, {FontFamily -> "Verdana", FontSize -> 10}, 
                   GrayLevel[0.5], StripOnInput -> False]}, "Row", 
                 DisplayFunction -> (RowBox[{#, "\[InvisibleSpace]", #2}]& ), 
                 InterpretationFunction -> (RowBox[{
                    StyleBox[
                    "Row", FontFamily -> "Bitstream Vera Sans", 
                    FontSize -> -1 + Inherited], "[", 
                    RowBox[{"{", 
                    RowBox[{#, ",", #2}], "}"}], "]"}]& )]}}, 
              GridBoxAlignment -> {"Columns" -> {{Left}}}, 
              AllowScriptLevelChange -> False, 
              GridBoxItemSize -> {
               "Columns" -> {{Automatic}}, "Rows" -> {{Automatic}}}, 
              GridBoxSpacings -> {
               "Columns" -> {{Automatic}}, "Rows" -> {{0}}}], "Column"], 
            TraditionalForm]], "Output"]}], 
       XMLElement[
       "dataformats", {}, {
        "plaintext,computabledata,formatteddata,numberdata,quantitydata"}]}], 
     XMLElement["subpod", {"title" -> ""}, {
       XMLElement["cell", {"compressed" -> False, "string" -> True}, {
         Cell[
          BoxData[
           FormBox[
            StyleBox[
             RowBox[{
               TagBox[
                TagBox[
                 RowBox[{
                   TagBox["0.001526", 
                    $CellContext`TagBoxWrapper["StringBoxes" -> "0.001526"]], 
                   "\[InvisibleSpace]", 
                   StyleBox[
                    RowBox[{}], FontFamily -> "Helvetica", FontSize -> 
                    Smaller], "\[InvisibleSpace]", "\[ThickSpace]", 
                   "\[InvisibleSpace]", 
                   StyleBox[
                    RowBox[{
                    
                    RowBox[{
                    "\"N\"", "\[InvisibleSpace]", "\"\[ThinSpace]\"", 
                    "\[InvisibleSpace]", "\"s\""}], "\[InvisibleSpace]", 
                    "\"/\"", "\[InvisibleSpace]", 
                    SuperscriptBox["\"m\"", "2"]}], FontFamily -> "Helvetica",
                     FontSize -> Smaller]}], Identity], #& , SyntaxForm -> 
                Dot], " ", 
               StyleBox[
                
                RowBox[{
                 "\"(\"", "\[NoBreak]", "\"newton seconds per square meter\"",
                   "\[NoBreak]", "\")\""}], 
                LinebreakAdjustments -> {1, 100, 1, 0, 100}, LineIndent -> 
                0, {FontFamily -> "Helvetica", FontSize -> Smaller}, 
                GrayLevel[0.6], StripOnInput -> False]}], 
             LinebreakAdjustments -> {1, 100, 1, 0, 100}, LineIndent -> 0, 
             ZeroWidthTimes -> False], TraditionalForm]], "Output"]}], 
       XMLElement[
       "dataformats", {}, {
        "plaintext,computabledata,formatteddata,numberdata,quantitydata"}]}], 
     XMLElement["subpod", {"title" -> ""}, {
       XMLElement["cell", {"compressed" -> False, "string" -> True}, {
         Cell[
          BoxData[
           FormBox[
            StyleBox[
             RowBox[{
               TagBox[
                TagBox[
                 RowBox[{
                   TagBox["0.01526", 
                    $CellContext`TagBoxWrapper["StringBoxes" -> "0.01526"]], 
                   "\[InvisibleSpace]", 
                   StyleBox[
                    RowBox[{}], FontFamily -> "Helvetica", FontSize -> 
                    Smaller], "\[InvisibleSpace]", "\[ThickSpace]", 
                   "\[InvisibleSpace]", 
                   StyleBox[
                    RowBox[{
                    
                    RowBox[{
                    "\"dyne\"", "\[InvisibleSpace]", "\"\[ThinSpace]\"", 
                    "\[InvisibleSpace]", "\"s\""}], "\[InvisibleSpace]", 
                    "\"/\"", "\[InvisibleSpace]", 
                    SuperscriptBox["\"cm\"", "2"]}], FontFamily -> 
                    "Helvetica", FontSize -> Smaller]}], Identity], #& , 
                SyntaxForm -> Dot], " ", 
               StyleBox[
                
                RowBox[{
                 "\"(\"", "\[NoBreak]", 
                  "\"dyne seconds per square centimeter\"", "\[NoBreak]", 
                  "\")\""}], LinebreakAdjustments -> {1, 100, 1, 0, 100}, 
                LineIndent -> 0, {
                FontFamily -> "Helvetica", FontSize -> Smaller}, 
                GrayLevel[0.6], StripOnInput -> False]}], 
             LinebreakAdjustments -> {1, 100, 1, 0, 100}, LineIndent -> 0, 
             ZeroWidthTimes -> False], TraditionalForm]], "Output"]}], 
       XMLElement[
       "dataformats", {}, {
        "plaintext,computabledata,formatteddata,numberdata,quantitydata"}]}]}]\
, Typeset`pod4$$ = XMLElement[
   "pod", {"title" -> "Comparisons as dynamic viscosity", "scanner" -> "Unit",
      "id" -> "ComparisonAsDynamicViscosity", "position" -> "400", "error" -> 
     "false", "numsubpods" -> "3"}, {
     XMLElement["subpod", {"title" -> ""}, {
       XMLElement["cell", {"compressed" -> False, "string" -> True}, {
         Cell[
          BoxData[
           FormBox[
            FormBox[
             TemplateBox[{"\" \[TildeTilde] \"", 
               
               TemplateBox[{"\"\"", "0", "\".\"", "7", "8"}, "Row", 
                DisplayFunction -> (
                 RowBox[{#, "\[InvisibleSpace]", #2, "\[InvisibleSpace]", #3, 
                   "\[InvisibleSpace]", #4, "\[InvisibleSpace]", #5}]& ), 
                InterpretationFunction -> (RowBox[{
                   StyleBox[
                   "Row", FontFamily -> "Bitstream Vera Sans", 
                    FontSize -> -1 + Inherited], "[", 
                   RowBox[{"{", 
                    RowBox[{#, ",", #2, ",", #3, ",", #4, ",", #5}], "}"}], 
                   "]"}]& )], "\" \"", 
               StyleBox["\"\[Times]\"", 
                GrayLevel[0.3], FontSize -> 10.219999999999999`, StripOnInput -> 
                False], "\"\[MediumSpace]\"", 
               StyleBox[
               "\"propanol viscosity at 25 \[Degree]C\"", FontFamily -> 
                "Helvetica", FontSize -> Smaller, StripOnInput -> False], 
               "\" \"", 
               StyleBox[
                RowBox[{"\"(\"", "\[NoBreak]", 
                  TemplateBox[{"\"\[TildeTilde]\[ThinSpace]\"", 
                    StyleBox[
                    TagBox[
                    TagBox[
                    RowBox[{
                    TagBox["1.9", 
                    $CellContext`TagBoxWrapper["StringBoxes" -> "1.9"]], 
                    "\[InvisibleSpace]", 
                    StyleBox[
                    RowBox[{}], FontFamily -> "Helvetica", FontSize -> 
                    Smaller], "\[InvisibleSpace]", "\[ThickSpace]", 
                    "\[InvisibleSpace]", 
                    StyleBox[
                    "\"cP\"", FontFamily -> "Helvetica", FontSize -> 
                    Smaller]}], Identity], #& , SyntaxForm -> Dot], 
                    LinebreakAdjustments -> {1, 100, 1, 0, 100}, LineIndent -> 
                    0, ZeroWidthTimes -> False], "\"\[MediumSpace]\""}, "Row",
                    DisplayFunction -> (
                    RowBox[{#, "\[InvisibleSpace]", #2, 
                    "\[InvisibleSpace]", #3}]& ), 
                   InterpretationFunction -> (RowBox[{
                    StyleBox[
                    "Row", FontFamily -> "Bitstream Vera Sans", 
                    FontSize -> -1 + Inherited], "[", 
                    RowBox[{"{", 
                    RowBox[{#, ",", #2, ",", #3}], "}"}], "]"}]& )], 
                  "\[NoBreak]", "\")\""}], 
                LinebreakAdjustments -> {1, 100, 1, 0, 100}, LineIndent -> 
                0, {FontFamily -> "Verdana", FontSize -> 10}, 
                GrayLevel[0.5], StripOnInput -> False]}, "Row", 
              DisplayFunction -> (
               RowBox[{#, "\[InvisibleSpace]", #2, "\[InvisibleSpace]", #3, 
                 "\[InvisibleSpace]", #4, "\[InvisibleSpace]", #5, 
                 "\[InvisibleSpace]", #6, "\[InvisibleSpace]", #7, 
                 "\[InvisibleSpace]", #8}]& ), 
              InterpretationFunction -> (RowBox[{
                 StyleBox[
                 "Row", FontFamily -> "Bitstream Vera Sans", 
                  FontSize -> -1 + Inherited], "[", 
                 RowBox[{"{", 
                   
                   RowBox[{#, ",", #2, ",", #3, ",", #4, ",", #5, ",", #6, 
                    ",", #7, ",", #8}], "}"}], "]"}]& )], TraditionalForm], 
            TraditionalForm]], "Output"]}], 
       XMLElement["dataformats", {}, {"plaintext"}]}], 
     XMLElement["subpod", {"title" -> ""}, {
       XMLElement["cell", {"compressed" -> False, "string" -> True}, {
         Cell[
          BoxData[
           FormBox[
            FormBox[
             TemplateBox[{"\" \[TildeTilde] \"", 
               
               TemplateBox[{"\"\"", "0", "\".\"", "8", "2"}, "Row", 
                DisplayFunction -> (
                 RowBox[{#, "\[InvisibleSpace]", #2, "\[InvisibleSpace]", #3, 
                   "\[InvisibleSpace]", #4, "\[InvisibleSpace]", #5}]& ), 
                InterpretationFunction -> (RowBox[{
                   StyleBox[
                   "Row", FontFamily -> "Bitstream Vera Sans", 
                    FontSize -> -1 + Inherited], "[", 
                   RowBox[{"{", 
                    RowBox[{#, ",", #2, ",", #3, ",", #4, ",", #5}], "}"}], 
                   "]"}]& )], "\" \"", 
               StyleBox["\"\[Times]\"", 
                GrayLevel[0.3], FontSize -> 10.219999999999999`, StripOnInput -> 
                False], "\"\[MediumSpace]\"", 
               StyleBox[
               "\"nitrobenzene viscosity at 25 \[Degree]C\"", FontFamily -> 
                "Helvetica", FontSize -> Smaller, StripOnInput -> False], 
               "\" \"", 
               StyleBox[
                RowBox[{"\"(\"", "\[NoBreak]", 
                  TemplateBox[{"\"\[TildeTilde]\[ThinSpace]\"", 
                    StyleBox[
                    TagBox[
                    TagBox[
                    RowBox[{
                    TagBox["1.9", 
                    $CellContext`TagBoxWrapper["StringBoxes" -> "1.9"]], 
                    "\[InvisibleSpace]", 
                    StyleBox[
                    RowBox[{}], FontFamily -> "Helvetica", FontSize -> 
                    Smaller], "\[InvisibleSpace]", "\[ThickSpace]", 
                    "\[InvisibleSpace]", 
                    StyleBox[
                    "\"cP\"", FontFamily -> "Helvetica", FontSize -> 
                    Smaller]}], Identity], #& , SyntaxForm -> Dot], 
                    LinebreakAdjustments -> {1, 100, 1, 0, 100}, LineIndent -> 
                    0, ZeroWidthTimes -> False], "\"\[MediumSpace]\""}, "Row",
                    DisplayFunction -> (
                    RowBox[{#, "\[InvisibleSpace]", #2, 
                    "\[InvisibleSpace]", #3}]& ), 
                   InterpretationFunction -> (RowBox[{
                    StyleBox[
                    "Row", FontFamily -> "Bitstream Vera Sans", 
                    FontSize -> -1 + Inherited], "[", 
                    RowBox[{"{", 
                    RowBox[{#, ",", #2, ",", #3}], "}"}], "]"}]& )], 
                  "\[NoBreak]", "\")\""}], 
                LinebreakAdjustments -> {1, 100, 1, 0, 100}, LineIndent -> 
                0, {FontFamily -> "Verdana", FontSize -> 10}, 
                GrayLevel[0.5], StripOnInput -> False]}, "Row", 
              DisplayFunction -> (
               RowBox[{#, "\[InvisibleSpace]", #2, "\[InvisibleSpace]", #3, 
                 "\[InvisibleSpace]", #4, "\[InvisibleSpace]", #5, 
                 "\[InvisibleSpace]", #6, "\[InvisibleSpace]", #7, 
                 "\[InvisibleSpace]", #8}]& ), 
              InterpretationFunction -> (RowBox[{
                 StyleBox[
                 "Row", FontFamily -> "Bitstream Vera Sans", 
                  FontSize -> -1 + Inherited], "[", 
                 RowBox[{"{", 
                   
                   RowBox[{#, ",", #2, ",", #3, ",", #4, ",", #5, ",", #6, 
                    ",", #7, ",", #8}], "}"}], "]"}]& )], TraditionalForm], 
            TraditionalForm]], "Output"]}], 
       XMLElement["dataformats", {}, {"plaintext"}]}], 
     XMLElement["subpod", {"title" -> ""}, {
       XMLElement["cell", {"compressed" -> False, "string" -> True}, {
         Cell[
          BoxData[
           FormBox[
            FormBox[
             TemplateBox[{"\" \[TildeTilde] \"", 
               StyleBox[
               "\"mercury viscosity at 25 \[Degree]C\"", FontFamily -> 
                "Helvetica", FontSize -> Smaller, StripOnInput -> False], 
               "\" \"", 
               StyleBox[
                RowBox[{"\"(\"", "\[NoBreak]", 
                  TemplateBox[{"\"\[MediumSpace]\"", 
                    StyleBox[
                    TagBox[
                    TagBox[
                    RowBox[{
                    TagBox["1.526", 
                    $CellContext`TagBoxWrapper["StringBoxes" -> "1.526"]], 
                    "\[InvisibleSpace]", 
                    StyleBox[
                    RowBox[{}], FontFamily -> "Helvetica", FontSize -> 
                    Smaller], "\[InvisibleSpace]", "\[ThickSpace]", 
                    "\[InvisibleSpace]", 
                    StyleBox[
                    "\"cP\"", FontFamily -> "Helvetica", FontSize -> 
                    Smaller]}], Identity], #& , SyntaxForm -> Dot], 
                    LinebreakAdjustments -> {1, 100, 1, 0, 100}, LineIndent -> 
                    0, ZeroWidthTimes -> False], "\"\[MediumSpace]\""}, "Row",
                    DisplayFunction -> (
                    RowBox[{#, "\[InvisibleSpace]", #2, 
                    "\[InvisibleSpace]", #3}]& ), 
                   InterpretationFunction -> (RowBox[{
                    StyleBox[
                    "Row", FontFamily -> "Bitstream Vera Sans", 
                    FontSize -> -1 + Inherited], "[", 
                    RowBox[{"{", 
                    RowBox[{#, ",", #2, ",", #3}], "}"}], "]"}]& )], 
                  "\[NoBreak]", "\")\""}], 
                LinebreakAdjustments -> {1, 100, 1, 0, 100}, LineIndent -> 
                0, {FontFamily -> "Verdana", FontSize -> 10}, 
                GrayLevel[0.5], StripOnInput -> False]}, "Row", 
              DisplayFunction -> (
               RowBox[{#, "\[InvisibleSpace]", #2, "\[InvisibleSpace]", #3, 
                 "\[InvisibleSpace]", #4}]& ), 
              InterpretationFunction -> (RowBox[{
                 StyleBox[
                 "Row", FontFamily -> "Bitstream Vera Sans", 
                  FontSize -> -1 + Inherited], "[", 
                 RowBox[{"{", 
                   RowBox[{#, ",", #2, ",", #3, ",", #4}], "}"}], "]"}]& )], 
             TraditionalForm], TraditionalForm]], "Output"]}], 
       XMLElement["dataformats", {}, {"plaintext"}]}]}], Typeset`aux1$$ = {
   True, False, {False}, True}, Typeset`aux2$$ = {True, False, {False}, True},
    Typeset`aux3$$ = {True, False, {False, False, False, False, False}, True},
    Typeset`aux4$$ = {True, False, {False, False, False}, True}, 
   Typeset`asyncpods$$ = {}, Typeset`nonpods$$ = {
    XMLElement["sources", {"count" -> "1"}, {
      XMLElement[
      "source", {
       "url" -> 
        "http://www.wolframalpha.com/sources/\
ChemicalDataSourceInformationNotes.html", "text" -> "Chemical data"}, {}]}]}, 
   Typeset`initdone$$ = True, Typeset`queryinfo$$ = {
   "success" -> "true", "error" -> "false", "numpods" -> "4", "datatypes" -> 
    "Chemical", "timedout" -> "", "timedoutpods" -> "", "timing" -> "1.305", 
    "parsetiming" -> "0.321", "parsetimedout" -> "false", "recalculate" -> "",
     "id" -> "MSPa58811a0f2074e78ch26g00003e5g64651978igb2", "host" -> 
    "http://www4a.wolframalpha.com", "server" -> "52", "related" -> 
    "http://www4a.wolframalpha.com/api/v2/relatedQueries.jsp?id=\
MSPa58821a0f2074e78ch26g00000ecc43gd78ga1i21&s=52", "version" -> "2.5"}, 
   Typeset`sessioninfo$$ = {
   "TimeZone" -> -4., 
    "Date" -> {2012, 3, 14, 22, 32, 30.1430525`9.231762137289438}, "Line" -> 
    25, "SessionID" -> 23204674308220390077}, Typeset`showpods$$ = {1, 2, 3, 
   4}, Typeset`failedpods$$ = {}, Typeset`chosen$$ = {}, Typeset`open$$ = 
   False, Typeset`newq$$ = "viscosity of mercury"}, 
   DynamicBox[ToBoxes[
     AlphaIntegration`FormatAlphaResults[
      Dynamic[{
       1, {Typeset`pod1$$, Typeset`pod2$$, Typeset`pod3$$, Typeset`pod4$$}, {
        Typeset`aux1$$, Typeset`aux2$$, Typeset`aux3$$, Typeset`aux4$$}, 
        Typeset`chosen$$, Typeset`open$$, Typeset`elements$$, Typeset`q$$, 
        Typeset`opts$$, Typeset`nonpods$$, Typeset`queryinfo$$, 
        Typeset`sessioninfo$$, Typeset`showpods$$, Typeset`failedpods$$, 
        Typeset`newq$$}]], StandardForm],
    ImageSizeCache->{1098., {304., 312.}},
    TrackedSymbols:>{Typeset`showpods$$, Typeset`failedpods$$}],
   DynamicModuleValues:>{},
   Initialization:>If[
     Not[Typeset`initdone$$], WolframAlphaClient`Private`doAsyncUpdates[
       Hold[{Typeset`pod1$$, Typeset`pod2$$, Typeset`pod3$$, Typeset`pod4$$}],
        Typeset`asyncpods$$, 
       Dynamic[Typeset`failedpods$$]]; Typeset`asyncpods$$ = {}; 
     Typeset`initdone$$ = True],
   SynchronousInitialization->False],
  BaseStyle->{Deployed -> True},
  DeleteWithContents->True,
  Editable->False,
  SelectWithContents->True]], "Print",
 CellMargins->{{20, 10}, {Inherited, Inherited}},
 CellChangeTimes->{
  3.540767550164054*^9},ExpressionUUID->"2f026d13-7cb9-420d-9319-\
902709d23bfe"]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"ChemicalData", "[", "]"}]], "Input",
 CellChangeTimes->{{3.540767344170272*^9, 
  3.540767347128441*^9}},ExpressionUUID->"f44e94b0-5320-4044-8e8e-\
1bb3b65b4d89"],

Cell[BoxData[
 InterpretationBox[
  TagBox[
   PanelBox[GridBox[{
      {
       StyleBox[
        StyleBox[
         DynamicBox[ToBoxes[
           FEPrivate`FrontEndResource["FEStrings", "sizeExplanation"], 
           StandardForm],
          ImageSizeCache->{403., {3., 12.}}],
         StripOnInput->False,
         DynamicUpdating->True], "Panel",
        StripOnInput->False,
        Background->None]},
      {
       ItemBox[
        TagBox[
         RowBox[{"{", 
          
          RowBox[{"\<\"LiquidHydrogen\"\>", ",", "\<\"MolecularHydrogen\"\>", 
           ",", "\<\"DeuteriumHydride\"\>", ",", "\<\"LiquidHelium\"\>", 
           ",", "\<\"Helium\"\>", ",", "\<\"TritiumHydride\"\>", 
           ",", "\<\"MolecularDeuterium\"\>", ",", "\<\"TritiumDeuteride\"\>",
            ",", "\<\"HydrogenT2\"\>", ",", "\<\"Lithium\"\>", 
           ",", "\<\"LithiumHydride\"\>", ",", "\<\"LithiumDeuteride\"\>", 
           ",", "\<\"Beryllium\"\>", ",", "\<\"Boron\"\>", 
           ",", "\<\"BerylliumHydride\"\>", ",", "\<\"Diamond\"\>", 
           ",", "\<\"ActivatedCharcoal\"\>", ",", "\<\"Graphite\"\>", 
           ",", "\<\"Carbon13\"\>", ",", "\<\"LiquidMethane\"\>", 
           ",", "\<\"Methane\"\>", ",", "\<\"Ammonia\"\>", 
           ",", "\<\"Methane13C1\"\>", ",", "\<\"MethaneD1\"\>", 
           ",", "\<\"Steam\"\>", ",", "\<\"Ice\"\>", ",", "\<\"Water\"\>", 
           ",", "\<\"Ammonia15N1\"\>", ",", "\<\"MethaneD2\"\>", 
           ",", "\<\"MethaneD3\"\>", ",", "\<\"DeuteriumFluoride\"\>", 
           ",", "\<\"HydrogenFluoride\"\>", ",", "\<\"Water18O1\"\>", 
           ",", "\<\"DeuteriumOxide\"\>", ",", "\<\"DeuteratedAmmonia\"\>", 
           ",", "\<\"DeuteratedMethane\"\>", ",", "\<\"LiquidNeon\"\>", 
           ",", "\<\"Neon\"\>", ",", "\<\"DeuteratedAmmonia15N1\"\>", 
           ",", "\<\"DeuteratedMethane13C1\"\>", 
           ",", "\<\"LithiumBorohydride\"\>", ",", "\<\"Methyllithium\"\>", 
           ",", "\<\"WaterT2\"\>", ",", "\<\"LithiumAmide\"\>", 
           ",", "\<\"Sodium\"\>", ",", "\<\"LithiumHydroxide\"\>", 
           ",", "\<\"SodiumHydride\"\>", ",", "\<\"Magnesium\"\>", 
           ",", "\<\"BoronNitride\"\>", 
           ",", "\<\"LithiumDeuteroxideDeuteriumOxide\"\>", 
           ",", "\<\"BerylliumOxide\"\>", ",", "\<\"LithiumFluoride\"\>", 
           ",", "\<\"Acetylene\"\>", ",", "\<\"MagnesiumHydride\"\>", 
           ",", "\<\"Aluminum\"\>", ",", "\<\"HydrogenCyanide\"\>", 
           ",", "\<\"Diborane\"\>", ",", "\<\"BoraneAmmoniaComplex\"\>", 
           ",", "\<\"CarbonMonoxide\"\>", ",", "\<\"LiquidNitrogen\"\>", 
           ",", "\<\"MolecularNitrogen\"\>", 
           ",", "\<\"DeuteratedAcetylene\"\>", 
           ",", "\<\"PolyEthyleneChlorosulfonated\"\>", 
           ",", "\<\"Polyethylene\"\>", ",", "\<\"Ethylene\"\>", 
           ",", "\<\"PolyethyleneMonoalcohol\"\>", ",", "\<\"Silicon\"\>", 
           ",", "\<\"DryAir\"\>", ",", "\<\"LiquidAir\"\>", 
           ",", "\<\"CarbonMonoxide13C1\"\>", ",", "\<\"LithiumOxide\"\>", 
           ",", "\<\"MolecularNitrogen15\"\>", ",", "\<\"NitricOxide\"\>", 
           ",", "\<\"PolyOxymethylene,acetateEndCapped\"\>", 
           ",", "\<\"Formaldehyde\"\>", ",", "\<\"Paraformaldehyde\"\>", 
           ",", "\<\"BerylliumCarbide\"\>", ",", "\<\"Ethylene13C2\"\>", 
           ",", "\<\"Ethane\"\>", ",", "\<\"BerylliumBoride\"\>", 
           ",", "\<\"BlackPhosphorus\"\>", ",", "\<\"RedPhosphorus\"\>", 
           ",", "\<\"NitricOxide15N1\"\>", 
           ",", "\<\"FormaldehydeHydrate13C1\"\>", ",", "\<\"Methylamine\"\>",
            ",", "\<\"Ethane13C1\"\>", ",", "\<\"EthaneD1\"\>", 
           ",", "\<\"Sulfur32\"\>", ",", "\<\"LiquidOxygen\"\>", 
           ",", "\<\"MolecularOxygen\"\>", 
           ",", "\<\"DeuteratedParaformaldehyde\"\>", 
           ",", "\<\"FormaldehydeDeuteriumOxideD4\"\>", 
           ",", "\<\"Methanol\"\>", ",", "\<\"Hydrazine\"\>", 
           ",", "\<\"Ethane13C2\"\>", ",", "\<\"MixedSulfur\"\>", 
           ",", "\<\"DeuteratedEthylene\"\>", ",", "\<\"PolyethyleneD4\"\>", 
           ",", "\<\"TerminalDimethyl\"\>", ",", "\<\"Silane\"\>", 
           ",", "\<\"NitricOxide15N1,18O1\"\>", ",", "\<\"Hydroxylamine\"\>", 
           ",", "\<\"Methanol13C1\"\>", ",", "\<\"Methanol(O)D1\"\>", 
           ",", "\<\"MethanolD1\"\>", ",", "\<\"DeuteratedDiborane\"\>", 
           ",", "\<\"SodiumBorohydride\"\>", 
           ",", "\<\"LithiumAluminumAlloy\"\>", ",", "\<\"Sulfur34\"\>", ",", 
           RowBox[{"\[LeftSkeleton]", "43770", "\[RightSkeleton]"}], 
           ",", "\<\"AcrylamidomethylCelluloseAcetatePropionate\"\>", 
           ",", "\<\"PolyAcrylicAcidCoAcrylamidePotassiumSalt\"\>", 
           ",", "\<\"PolyPropyleneGlycol,Tolylene2,4DiisocyanateTerminated\"\>\
", ",", "\<\"Poly4StyrenesulfonicAcidCoMaleicAcidSodiumSalt\"\>", 
           ",", "\<\"CelluloseAcetateTrimellitate\"\>", 
           ",", "\<\"PolyStyreneComaleicAcid,PartialIsobutylmethylMixedEster\"\
\>", ",", "\<\"PolyStyreneCoMaleicAcid,PartialSecButylmethylMixedEster\"\>", 
           ",", "\<\"PolyStyreneCoMaleicAcid,PartialIsobutylEster\"\>", 
           ",", "\<\"PolyAcrylicAcidPartialPotassiumSalt\"\>", 
           ",", "\<\"PolyAcrylicAcidPartialSodiumSalt\"\>", 
           ",", "\<\"Polypropylene,Chlorinated\"\>", 
           ",", "\<\"CellulosePropionate\"\>", 
           ",", "\<\"Poly1,\
6HexanediolneopentylGlycoldiEthyleneGlycolAltAdipicAcidDiol\"\>", 
           ",", "\<\"\
PolyTrimethylolpropanediPropyleneGlycolAltAdipicAcidphthalicAnhydride,polyol\"\
\>", ",", \
"\<\"PolyDiEthyleneGlycoltrimethylolpropaneAltAdipicAcid,polyol\"\>", 
           ",", "\<\"AceticAcid,alkylC6toC8estersMixture\"\>", 
           ",", "\<\"AceticAcid,alkylC7toC9estersMixture\"\>", 
           ",", "\<\"AceticAcid,alkylC8toC10estersMixture\"\>", 
           ",", "\<\"AceticAcid,alkylC9toC11estersMixture\"\>", 
           ",", "\<\"AceticAcid,alkylC11ToC14estersMixture\"\>", 
           ",", "\<\"Polyisoprene,Chlorinated\"\>", 
           ",", "\<\"GlycolicAcidEthoxylateLaurylEther\"\>", 
           ",", "\<\"GlycolicAcidEthoxylateOleylEther\"\>", 
           ",", "\<\"GlycolicAcidEthoxylate4TertButylphenylEther\"\>", 
           ",", "\<\"GlycolicAcidEthoxylate4NonylphenylEther\"\>", 
           ",", "\<\"Polyoxyethylene18tridecylEther\"\>", 
           ",", "\<\"PolyAlpha,BetaDLAsparticAcidSodiumSalt\"\>", 
           ",", "\<\"PolyDimethylsiloxaneCodiphenylsiloxane,DivinylTerminated\
\"\>", ",", "\<\"TitaniumIV2Ethyl1,3Hexanediolate\"\>", 
           ",", "\<\"PolyAcrylamideCoAcrylicAcidPartialSodiumSalt\"\>", 
           ",", "\<\"PolyThiophene2,5Diyl,bromineTerminated\"\>", 
           ",", "\<\"Poly1TetradeceneSulfone\"\>", 
           ",", "\<\"PSSIsooctylSubstituted\"\>", 
           ",", "\<\"PolyanilineemeraldineSaltShortChain,GraftedToLignin\"\>",
            ",", "\<\"Brij35\"\>", ",", "\<\"NitroblueTetrazolium\"\>", 
           ",", "\<\"18:3,18:3Monogalactosyldiacylglycerol\"\>", 
           ",", "\<\"4CoumaroylCoA\"\>", ",", "\<\"Shikonin\"\>", 
           ",", "\<\"16Oxosteroid\"\>", ",", "\<\"HydroxyLysine\"\>", 
           ",", "\<\"3AcetylpyridineNAD\"\>", ",", "\<\"Deoxyshikonin\"\>", 
           ",", "\<\"Phosphatidylcholine\"\>", ",", "\<\"GinsenosideRd\"\>", 
           ",", "\<\"AdenosineThiamineTriphosphate\"\>", 
           ",", "\<\"SNMethylcanadine\"\>", ",", "\<\"LOctanoylcarnitine\"\>",
            ",", "\<\"Streptidine6Phosphate\"\>", 
           ",", "\<\"PrenylPPGlcNAcManNAc\"\>", 
           ",", "\<\"3HydroxyN6,N6,N6TrimethylLLysine\"\>", 
           ",", "\<\"FormylIsoglutamine\"\>", ",", "\<\"GinsenosideRb1\"\>", 
           ",", "\<\"Z22Furyl35Nitro2FurylAcrylamide\"\>", 
           ",", "\<\"Vinylacetate\"\>", ",", "\<\"BacteriochlorophyllC\"\>", 
           ",", "\<\"FeMoCofactor\"\>", 
           ",", "\<\"Threo3HydroxyLAspartate\"\>", 
           ",", "\<\"AlphaChaconine\"\>", ",", "\<\"Pyrazine2Carboxylate\"\>",
            ",", "\<\"O1,4AlphaLDihydrostreptosylStreptidine6Phosphate\"\>", 
           ",", "\<\"23Carboxy3MethylammonioPropylLHistidine\"\>", 
           ",", "\<\"1,2Dehydroreticuline\"\>", 
           ",", "\<\"2Oxo3Hydroxy4Phosphobutanoate\"\>", 
           ",", "\<\"FerricDicitrate\"\>", ",", "\<\"MToluate\"\>", 
           ",", "\<\"12OxoCis9Dodecenoate\"\>", 
           ",", "\<\"Sulfoquinovosyldiacylglycerol\"\>", 
           ",", "\<\"BetaChaconine\"\>", ",", "\<\"StreptothricinF\"\>", 
           ",", "\<\"Cobyrate\"\>", ",", "\<\"CoenzymeF430\"\>", 
           ",", "\<\"MiraxanthinV\"\>", 
           ",", "\<\"18:2,18:2SnGlycerol3Phosphocholine\"\>", 
           ",", "\<\"18:3,18:3Phosphatidylcholine\"\>", 
           ",", "\<\"18:1,18:3Phosphatidylcholine\"\>", 
           ",", "\<\"18:1,18:2Phosphatidylcholine\"\>", 
           ",", "\<\"18:1,18:1SnGlycerol3Phosphocholine\"\>", 
           ",", "\<\"18:0,18:2Phosphatidylcholine\"\>", 
           ",", "\<\"18:0,18:1Phosphatidylcholine\"\>", 
           ",", "\<\"18:0,18:3Phosphatidylcholine\"\>", 
           ",", "\<\"16:0,18:2Phosphatidylcholine\"\>", 
           ",", "\<\"16:0,18:3Phosphatidylcholine\"\>", 
           ",", "\<\"116:1Lysophosphatidylcholine\"\>", 
           ",", "\<\"118:3Lysophosphatidylcholine\"\>", 
           ",", "\<\"AlphaChamigrene\"\>", ",", "\<\"4Toluenecarboxylate\"\>",
            ",", "\<\"4Hydroxyphenyllactate\"\>", ",", "\<\"Cobyrinate\"\>", 
           ",", "\<\"Ag4\"\>", ",", "\<\"Betanin\"\>", 
           ",", "\<\"GomphreninI\"\>", ",", "\<\"Amaranthin\"\>", 
           ",", "\<\"116:0Lysophosphatidylcholine\"\>", 
           ",", "\<\"118:0Lysophosphatidylcholine\"\>", 
           ",", "\<\"2Hydroxylaminobenzoate\"\>", 
           ",", "\<\"1Carboxymethylpyridinium\"\>", 
           ",", "\<\"AdenosylcobinamideGDP\"\>", 
           ",", "\<\"118:1Lysophosphatidylcholine\"\>", 
           ",", "\<\"118:2Lysophosphatidylcholine\"\>", 
           ",", "\<\"Ubiquinol6\"\>", ",", "\<\"OSinapoylcholine\"\>", 
           ",", "\<\"3Hexaprenyl4Hydroxybenzoate\"\>", 
           ",", "\<\"16:0,18:1Phosphatidylcholine\"\>", 
           ",", "\<\"NMethylvaline\"\>", ",", "\<\"Isowillardiine\"\>", 
           ",", "\<\"7Methylinosine\"\>", ",", "\<\"Ununseptium\"\>"}], "}"}],
         Short[#, 80]& ],
        Background->GrayLevel[1],
        BaseStyle->{Deployed -> False},
        Frame->True,
        FrameStyle->GrayLevel[0, 0.2],
        StripOnInput->False]},
      {
       RowBox[{
        ButtonBox[
         StyleBox[
          StyleBox[
           DynamicBox[ToBoxes[
             FEPrivate`FrontEndResource["FEStrings", "sizeShowLess"], 
             StandardForm],
            ImageSizeCache->{67., {0., 11.}}],
           StripOnInput->False,
           DynamicUpdating->True], "Panel",
          StripOnInput->False,
          Background->None],
         Appearance->Automatic,
         ButtonFunction:>OutputSizeLimit`ButtonFunction[
          Identity, 22, 23204674308220390077, 80/2],
         Enabled->True,
         Evaluator->Automatic,
         Method->"Queued"], "\[ThinSpace]", 
        ButtonBox[
         StyleBox[
          StyleBox[
           DynamicBox[ToBoxes[
             FEPrivate`FrontEndResource["FEStrings", "sizeShowMore"], 
             StandardForm],
            ImageSizeCache->{75., {0., 11.}}],
           StripOnInput->False,
           DynamicUpdating->True], "Panel",
          StripOnInput->False,
          Background->None],
         Appearance->Automatic,
         ButtonFunction:>OutputSizeLimit`ButtonFunction[
          Identity, 22, 23204674308220390077, 80 2],
         Enabled->True,
         Evaluator->Automatic,
         Method->"Queued"], "\[ThinSpace]", 
        ButtonBox[
         StyleBox[
          StyleBox[
           DynamicBox[ToBoxes[
             FEPrivate`FrontEndResource["FEStrings", "sizeShowAll"], 
             StandardForm],
            ImageSizeCache->{55., {0., 11.}}],
           StripOnInput->False,
           DynamicUpdating->True], "Panel",
          StripOnInput->False,
          Background->None],
         Appearance->Automatic,
         ButtonFunction:>OutputSizeLimit`ButtonFunction[
          Identity, 22, 23204674308220390077, Infinity],
         Enabled->True,
         Evaluator->Automatic,
         Method->"Queued"], "\[ThinSpace]", 
        ButtonBox[
         StyleBox[
          StyleBox[
           DynamicBox[ToBoxes[
             FEPrivate`FrontEndResource["FEStrings", "sizeChangeLimit"], 
             StandardForm],
            ImageSizeCache->{98., {0., 12.}}],
           StripOnInput->False,
           DynamicUpdating->True], "Panel",
          StripOnInput->False,
          Background->None],
         Appearance->Automatic,
         ButtonFunction:>FrontEndExecute[{
            FrontEnd`SetOptions[
            FrontEnd`$FrontEnd, 
             FrontEnd`PreferencesSettings -> {"Page" -> "Evaluation"}], 
            FrontEnd`FrontEndToken["PreferencesDialog"]}],
         Evaluator->None,
         Method->"Preemptive"]}]}
     },
     GridBoxAlignment->{
      "Columns" -> {{Left}}, "ColumnsIndexed" -> {}, "Rows" -> {{Baseline}}, 
       "RowsIndexed" -> {}},
     GridBoxDividers->{
      "Columns" -> {{False}}, "ColumnsIndexed" -> {}, "Rows" -> {{False}}, 
       "RowsIndexed" -> {}},
     GridBoxItemSize->{
      "Columns" -> {{Automatic}}, "ColumnsIndexed" -> {}, "Rows" -> {{1.}}, 
       "RowsIndexed" -> {}},
     GridBoxSpacings->{"Columns" -> {
         Offset[0.27999999999999997`], {
          Offset[0.5599999999999999]}, 
         Offset[0.27999999999999997`]}, "ColumnsIndexed" -> {}, "Rows" -> {
         Offset[0.2], {
          Offset[1.2]}, 
         Offset[0.2]}, "RowsIndexed" -> {}}],
    DefaultBaseStyle->{},
    FrameMargins->5],
   Deploy,
   DefaultBaseStyle->"Deploy"],
  Out[22]]], "Output",
 CellChangeTimes->{
  3.5407673481104965`*^9},ExpressionUUID->"b034b982-82ea-4d4d-a8f9-\
1f40dc40f5ea"]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"peeters`exportForLatex", "[", 
  RowBox[{"\"\<continuumProblemSet2Fig3\>\"", ",", "p"}], "]"}]], "Input",
 CellChangeTimes->{
  3.888177825449461*^9, {3.8881779469551086`*^9, 3.8881779594983873`*^9}},
 CellLabel->
  "In[639]:=",ExpressionUUID->"af2aa933-377d-4c56-9730-315fe1847d61"],

Cell[BoxData[
 RowBox[{"{", 
  RowBox[{"\<\"continuumProblemSet2Fig3.eps\"\>", 
   ",", "\<\"continuumProblemSet2Fig3pn.png\"\>"}], "}"}]], "Output",
 CellChangeTimes->{3.888177964349308*^9},
 CellLabel->
  "Out[639]=",ExpressionUUID->"26e3ab02-d2f0-4e21-a97b-5e399bd3d344"]
}, Open  ]]
}, Open  ]]
},
WindowSize->{1187, 995},
WindowMargins->{{Automatic, 258}, {Automatic, 0}},
Magnification:>1.5 Inherited,
FrontEndVersion->"12.2 for Mac OS X x86 (64-bit) (December 12, 2020)",
StyleDefinitions->"Default.nb",
ExpressionUUID->"966fef5e-9b45-42bb-b90b-3bdf56795d87"
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
Cell[1235, 30, 187, 3, 53, "Text",ExpressionUUID->"d319207d-194e-4e72-a9c5-db89ccf40e96"],
Cell[1425, 35, 235, 4, 78, "Input",ExpressionUUID->"ec2ddcd3-68e8-4c42-98f4-a9c631fae60a"],
Cell[1663, 41, 782, 16, 264, "Input",ExpressionUUID->"c0551617-f8c8-49a0-b0a8-1bcaafbf1414"],
Cell[CellGroupData[{
Cell[2470, 61, 3581, 93, 574, "Input",ExpressionUUID->"7bbec9e6-9b2b-40bc-9e0b-1deca4b8dbe0"],
Cell[6054, 156, 627, 10, 52, "Output",ExpressionUUID->"1db7d789-85f3-4802-bc51-b200062cd2e2"],
Cell[6684, 168, 612, 10, 52, "Output",ExpressionUUID->"232f5de8-09d6-4390-8eaa-871efcc45aa1"],
Cell[7299, 180, 2313, 61, 129, "Output",ExpressionUUID->"d73a2901-b151-44dc-9a1a-e9196df5ed3a"],
Cell[9615, 243, 4745, 98, 358, "Output",ExpressionUUID->"f2a6ef28-65f5-4ed9-aaa1-11e3f0f76db4"],
Cell[14363, 343, 641, 10, 52, "Output",ExpressionUUID->"f420878e-e819-4966-ba0c-a4915430940c"],
Cell[15007, 355, 641, 10, 52, "Output",ExpressionUUID->"0df8eacc-7ff7-4ee4-a3e4-b70aa5e1540b"],
Cell[15651, 367, 640, 10, 52, "Output",ExpressionUUID->"84fd053d-0318-4f95-94a1-f5969c24cf4d"]
}, Open  ]],
Cell[16306, 380, 2348, 66, 227, "Input",ExpressionUUID->"05e34c34-d426-45cc-86dc-025115696e09"],
Cell[18657, 448, 2286, 66, 195, "Input",ExpressionUUID->"bbaaeebc-0585-4ff4-8a39-38a6f5a80649"],
Cell[CellGroupData[{
Cell[20968, 518, 2333, 66, 227, "Input",ExpressionUUID->"89621cca-9b69-4b54-8a0e-e062c78ebc8e"],
Cell[23304, 586, 2178, 63, 103, "Output",ExpressionUUID->"e9104be5-7ac3-43a0-9a2a-95bbe22046b1"]
}, Open  ]],
Cell[CellGroupData[{
Cell[25519, 654, 166, 3, 101, "Section",ExpressionUUID->"d4ac8ee6-932c-41a5-9b3e-4394a68a05a8"],
Cell[CellGroupData[{
Cell[25710, 661, 277, 4, 61, "WolframAlphaLong",ExpressionUUID->"f9237e92-cf9d-41a6-bae9-285ac723593e"],
Cell[25990, 667, 30615, 630, 630, "Print",ExpressionUUID->"2f026d13-7cb9-420d-9319-902709d23bfe"]
}, Open  ]],
Cell[CellGroupData[{
Cell[56642, 1302, 186, 4, 46, "Input",ExpressionUUID->"f44e94b0-5320-4044-8e8e-1bb3b65b4d89"],
Cell[56831, 1308, 13978, 275, 2157, "Output",ExpressionUUID->"b034b982-82ea-4d4d-a8f9-1f40dc40f5ea"]
}, Open  ]],
Cell[CellGroupData[{
Cell[70846, 1588, 307, 6, 46, "Input",ExpressionUUID->"af2aa933-377d-4c56-9730-315fe1847d61"],
Cell[71156, 1596, 274, 6, 52, "Output",ExpressionUUID->"26e3ab02-d2f0-4e21-a97b-5e399bd3d344"]
}, Open  ]]
}, Open  ]]
}
]
*)

(* NotebookSignature Owpd4skvL0VbnB1kG2Do@qHF *)
