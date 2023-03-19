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
NotebookDataLength[     38811,        766]
NotebookOptionsPosition[     38475,        751]
NotebookOutlinePosition[     38902,        768]
CellTagsIndexPosition[     38859,        765]
WindowFrame->Normal*)

(* Beginning of Notebook Content *)
Notebook[{
Cell["Figure: continuumProblemSet2Fig1r2", "Text",
 CellChangeTimes->{{3.8881776290094852`*^9, 
  3.888177636868103*^9}},ExpressionUUID->"0e43f265-bd4a-4567-a894-\
d41544aee7b4"],

Cell[BoxData[{
 RowBox[{"<<", "peeters`"}], "\[IndentingNewLine]", 
 RowBox[{"peeters`setGitDir", "[", 
  "\"\<../project/figures/phy454-continuumechanics\>\"", "]"}]}], "Input",Expr\
essionUUID->"b68b0397-32b1-42c9-8d50-dd9300a47482"],

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
  ";"}]}], "Input",
 CellChangeTimes->{{3.8881766338194532`*^9, 3.888176641596005*^9}, {
  3.888176703435199*^9, 3.8881767035745*^9}},
 CellLabel->
  "In[509]:=",ExpressionUUID->"1e2831f2-b19c-4f79-84f6-013b1c4f77e3"],

Cell[CellGroupData[{

Cell[BoxData[{
 RowBox[{
  RowBox[{"Clear", "[", 
   RowBox[{"p", ",", " ", "t", ",", " ", "g", ",", " ", "x", ",", " ", "y"}], 
   RowBox[{"(*", 
    RowBox[{",", " ", "hugeTex"}], "*)"}], "]"}], "\[IndentingNewLine]", 
  RowBox[{"(*", 
   RowBox[{
    RowBox[{"hugeTex", "[", "var_", "]"}], " ", ":=", " ", 
    RowBox[{"MaTeX", "[", 
     RowBox[{
     "\"\<\\mbox{\\Large $ \>\"", " ", "<>", " ", "var", " ", "<>", 
      "\"\<$}\>\""}], "]"}]}], "*)"}], "\[IndentingNewLine]", 
  RowBox[{"(*", 
   RowBox[{
    RowBox[{"texStyle", "=", 
     RowBox[{"{", 
      RowBox[{
       RowBox[{"FontFamily", "\[Rule]", "\"\<Latin Modern Roman\>\""}], ",", 
       RowBox[{"FontSize", "\[Rule]", "12"}]}], "}"}]}], ";"}], 
   "*)"}]}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{"x", "[", "y_", "]"}], " ", ":=", " ", 
  RowBox[{"1", " ", "-", " ", 
   RowBox[{"y", "^", "2"}]}]}], "\[IndentingNewLine]", 
 RowBox[{"p", " ", ":=", " ", 
  RowBox[{"ParametricPlot", "[", 
   RowBox[{
    RowBox[{"{", 
     RowBox[{
      RowBox[{"x", "[", "y", "]"}], ",", " ", "y"}], "}"}], ",", 
    RowBox[{"{", 
     RowBox[{"y", ",", 
      RowBox[{"-", "1"}], ",", "1"}], "}"}], ",", " ", 
    RowBox[{"Axes", " ", "\[Rule]", " ", "None"}], ",", " ", 
    RowBox[{"PlotStyle", " ", "\[Rule]", " ", 
     RowBox[{"{", 
      RowBox[{"Black", ",", " ", "Thick"}], "}"}]}], ",", " ", 
    RowBox[{"PlotRange", " ", "\[Rule]", " ", 
     RowBox[{"{", 
      RowBox[{
       RowBox[{"{", 
        RowBox[{"0", ",", "3"}], "}"}], ",", 
       RowBox[{"{", 
        RowBox[{
         RowBox[{"-", "1.1"}], ",", " ", "1.1"}], "}"}]}], "}"}]}]}], 
   "]"}]}], "\[IndentingNewLine]", 
 RowBox[{"t", " ", ":=", " ", 
  RowBox[{"Table", "[", " ", 
   RowBox[{
    RowBox[{"Arrow", "[", 
     RowBox[{"{", 
      RowBox[{
       RowBox[{"{", 
        RowBox[{"0", ",", " ", "i"}], "}"}], ",", " ", 
       RowBox[{"{", 
        RowBox[{
         RowBox[{"x", "[", "i", "]"}], " ", ",", " ", "i"}], "}"}]}], "}"}], 
     "]"}], ",", " ", 
    RowBox[{"{", 
     RowBox[{"i", ",", " ", 
      RowBox[{"-", "0.9"}], ",", " ", "0.9", ",", " ", "0.2"}], "}"}]}], 
   "]"}]}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{"g", " ", ":=", " ", 
   RowBox[{"Graphics", "[", "\[IndentingNewLine]", 
    RowBox[{"{", 
     RowBox[{"Thick", ",", "\[IndentingNewLine]", 
      RowBox[{"Arrowheads", "[", ".04", "]"}], ",", "\[IndentingNewLine]", 
      "t", ",", " ", "\[IndentingNewLine]", 
      RowBox[{"Line", "[", 
       RowBox[{"{", 
        RowBox[{
         RowBox[{"{", 
          RowBox[{"0", ",", " ", "1"}], "}"}], ",", " ", 
         RowBox[{"{", 
          RowBox[{"1", ",", " ", "1"}], "}"}]}], "}"}], "]"}], ",", " ", 
      "\[IndentingNewLine]", 
      RowBox[{"Line", "[", 
       RowBox[{"{", 
        RowBox[{
         RowBox[{"{", 
          RowBox[{"0", ",", " ", 
           RowBox[{"-", "1"}]}], "}"}], ",", " ", 
         RowBox[{"{", 
          RowBox[{"0", ",", " ", "1"}], "}"}]}], "}"}], "]"}], ",", " ", 
      "\[IndentingNewLine]", 
      RowBox[{"Line", "[", 
       RowBox[{"{", 
        RowBox[{
         RowBox[{"{", 
          RowBox[{"0", ",", " ", 
           RowBox[{"-", "1"}]}], "}"}], ",", " ", 
         RowBox[{"{", 
          RowBox[{"1", ",", " ", 
           RowBox[{"-", "1"}]}], "}"}]}], "}"}], "]"}], ",", 
      "\[IndentingNewLine]", 
      RowBox[{"Text", "[", 
       RowBox[{
        RowBox[{"MaTeX", "[", "\"\<y = h\>\"", "]"}], ",", " ", 
        RowBox[{"{", 
         RowBox[{"1.2", ",", " ", "1"}], "}"}]}], "]"}], ",", 
      "\[IndentingNewLine]", 
      RowBox[{"Text", "[", 
       RowBox[{
        RowBox[{"MaTeX", "[", "\"\<y = -h\>\"", "]"}], ",", " ", 
        RowBox[{"{", 
         RowBox[{"1.3", ",", " ", 
          RowBox[{"-", "1"}]}], "}"}]}], "]"}], ",", "\[IndentingNewLine]", 
      RowBox[{"Text", "[", 
       RowBox[{
        RowBox[{
        "MaTeX", "[", 
         "\"\<\\\\mathbf{u}(y) = \\\\frac{G }{2 \\\\mu} (h^2-y^2) \
\\\\hat{\\\\mathbf{x}}\>\"", "]"}], ",", " ", 
        RowBox[{"{", 
         RowBox[{"1.7", ",", " ", "0"}], "}"}]}], "]"}]}], 
     "\[IndentingNewLine]", "}"}], "\[IndentingNewLine]", "]"}]}], 
  "\[IndentingNewLine]", "\[IndentingNewLine]"}], "\[IndentingNewLine]", 
 RowBox[{"s", " ", "=", " ", 
  RowBox[{"Show", "[", " ", 
   RowBox[{"p", ",", " ", "g"}], " ", "]"}]}]}], "Input",
 CellChangeTimes->{{3.540621588380855*^9, 3.5406216936708775`*^9}, {
   3.540621730945009*^9, 3.540621731191023*^9}, {3.5406217885523043`*^9, 
   3.540621891864213*^9}, {3.5406222853697205`*^9, 3.540622387450559*^9}, 
   3.5406233268482895`*^9, {3.5407236796343207`*^9, 3.5407237345304604`*^9}, {
   3.5407248139962025`*^9, 3.5407250062391977`*^9}, {3.540725059822263*^9, 
   3.540725078534333*^9}, {3.540729343301781*^9, 3.5407293599757347`*^9}, {
   3.540729525421198*^9, 3.54072956899269*^9}, {3.5407296352084775`*^9, 
   3.540729791061392*^9}, {3.888165833810337*^9, 3.888165834121888*^9}, {
   3.888166198889853*^9, 3.888166407807695*^9}, {3.888166473768527*^9, 
   3.888166565853622*^9}, {3.888166602911117*^9, 3.8881667003208027`*^9}, {
   3.888166780391035*^9, 3.8881667812809143`*^9}, {3.888176648940783*^9, 
   3.88817671471734*^9}, {3.888176758698234*^9, 3.88817682472932*^9}, {
   3.888177123633634*^9, 3.8881771584277067`*^9}, {3.888177608479144*^9, 
   3.888177612634338*^9}},
 EmphasizeSyntaxErrors->
  True,ExpressionUUID->"4d420453-823b-41f9-972e-c858b8f0fb08"],

Cell[BoxData[
 GraphicsBox[{{{{}, {}, 
     TagBox[
      {GrayLevel[0], Thickness[Large], Opacity[1.], FaceForm[Opacity[0.3]], 
       LineBox[CompressedData["
1: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
WN/Cc+f//R8C/wuHryEX
        "]]},
      Annotation[#, "Charting`Private`Tag$324228#1"]& ]}, {}}, 
   {Thickness[Large], Arrowheads[
    0.04], {ArrowBox[{{0, -0.9}, {0.18999999999999995`, -0.9}}], 
     ArrowBox[{{0, -0.7}, {0.51, -0.7}}], ArrowBox[{{0, -0.5}, {0.75, -0.5}}],
      ArrowBox[{{0, -0.29999999999999993`}, {0.91, -0.29999999999999993`}}], 
     ArrowBox[{{0, -0.09999999999999998}, {0.99, -0.09999999999999998}}], 
     ArrowBox[{{0, 0.09999999999999998}, {0.99, 0.09999999999999998}}], 
     ArrowBox[{{0, 0.30000000000000016`}, {0.9099999999999999, 
       0.30000000000000016`}}], 
     ArrowBox[{{0, 0.5000000000000001}, {0.7499999999999999, 
       0.5000000000000001}}], 
     ArrowBox[{{0, 0.7000000000000001}, {0.5099999999999999, 
       0.7000000000000001}}], 
     ArrowBox[{{0, 0.9}, {0.18999999999999995`, 0.9}}]}, 
    LineBox[{{0, 1}, {1, 1}}], LineBox[{{0, -1}, {0, 1}}], 
    LineBox[{{0, -1}, {1, -1}}], InsetBox[
     FormBox[
      GraphicsBox[
       {Thickness[0.024820054604120127`], 
        FilledCurveBox[{{{1, 4, 3}, {1, 3, 3}, {1, 3, 3}, {1, 3, 3}, {1, 3, 
         3}, {1, 3, 3}, {1, 3, 3}, {1, 3, 3}, {1, 3, 3}, {1, 3, 3}, {1, 3, 
         3}, {1, 3, 3}, {1, 3, 3}, {1, 3, 3}, {1, 3, 3}, {1, 3, 3}, {1, 3, 
         3}, {0, 1, 0}, {1, 3, 3}, {0, 1, 0}, {1, 3, 3}, {1, 3, 3}, {1, 3, 
         3}, {0, 1, 0}}}, CompressedData["
1:eJxTTMoPSmVmYGBgBGJnIGYC4jMg4PPFfq3qk+Z5vroO/8Hgu318SJD6gkxd
B/et/seT2X7Z+9+Srkks0nWYf2Lykmy1v3B+jGqEzLk9bA4wvsxGsflMDzgc
wOb16jjc4L0tllrG7+Cxv1bWIl3N4b5rvOOsjwIOoj1er1hEVBzUP6m8nLVS
CEKflIfzTYyBYLIcnA92Z46sw5u23G4jayGHHcFWEf/dZSDymoIO64V0+NL/
STns797XZPKY16EvotufUUDCoUW8ljWTjduhVYFd9YyJmAPIWONiTge3NUeX
M0SIOhiB+WwO6WlAcEzYYavXBos5O1kg9hsLQ/3DBOcvubX8sSEzgr8YzGd0
0AC5IxOm/p89OFz+CDv4P/G8ZDr5l70HyL4bIg45UxMKLYq/20P0izrAwh/G
h4T/azifuyqfh9HhEdw8GB/s70whOJ8BBBYIOCwR5lw26+Y7iHwnn0PNi6Zf
03Z+h/Mh7md1gPHB+h4IQ8NP0mHGTBCQhseP8rVHwQw2Cg7VnzYEZFdpQPmK
DutB8curDeeD4/usDpz/JEJ8+8UHug78sQH3jcIVHFp4/ddPOaoHtVcOzj8A
ji8ZOH8NyB37pB026OUtZrRB8GHpC8YHp8+XOg4PQOkpUMZBX2ul8IUWHYe/
oODbLwtxD68OJL1IyzvU/7YqOLdCG8KfLe+gryj/JScMjX9NC86fs0h55590
TYcv+z5uTf8m4/AiS/vb9LlqDiFvL3+c8RCajiYrQtJBsajDDoemR8d3qDoE
geQTRRxOHXZam3lPAxKf8QJw/0HClw/Oh6RPBB+WfsH+36PnULC8ZMM/fwQf
kt944HyI/dwQerMeND2xOWwBydfoQdPbX/sHoPhQ0HPwAOfnP/YNLEf7DcVh
6n/Yg9X/0YWnR0j4Iviw8gEAtmS+Fw==
         "]], 
        FilledCurveBox[{{{0, 2, 0}, {0, 1, 0}, {0, 1, 0}, {0, 1, 0}}, {{0, 2, 
         0}, {0, 1, 0}, {0, 1, 0}, {0, 1, 0}}}, {{{24.164099999999998`, 
         13.399999999999999`}, {24.164099999999998`, 14.401599999999997`}, {
         15.009399999999998`, 14.401599999999997`}, {15.009399999999998`, 
         13.399999999999999`}, {24.164099999999998`, 13.399999999999999`}}, {{
         24.164099999999998`, 9.770310000000002}, {24.164099999999998`, 
         10.771900000000002`}, {15.009399999999998`, 10.771900000000002`}, {
         15.009399999999998`, 9.770310000000002}, {24.164099999999998`, 
         9.770310000000002}}}], FilledCurveBox[CompressedData["
1:eJxTTMoPymNmYGBgBGIpIIaxWZDYzGSyGaB8BjQ2qWqoZRep5pCqHgCxNwJb

         "], CompressedData["
1:eJxd021IU1EYB/Bpkgx8gcL6ELqtbazc2tqmUsPyf69IsyJLIS2FpTY1TC3K
GJJJKRruQyaaOlcZBktwvUGlhGWIaL6VpkIKKWKo4ZcspZq57tld96IHDpcf
z73nnuc5z5FkFCSaNwkEAh9mxjDTl5lN0apR27FYJAu3Veg1UrjS8rrXRmi0
rCxYBjrF+PH0eK7tFQ3p+EySIE3Mxqt5Z2cx49oG59NwblEFZT/m7VlPIOHM
vi/h1hsgwy7FcIHJf6idRhtuzPRY5KhwJPfpVmn0ddHOc192oWe3obpfEYuE
4dtpa6VKzm4yTCrOfsJKUebQHjjmjWr3Ao2ywIQnNd1qxMkLfW1VvJ+p85t9
VinOZ7o+Kc2nKBS7DBeGclSoWdlsqi8D6huYsV+B2fQH4xF1FG4lXZbV3dfD
kvIoctBKsXm91KPVOpkj8Kcgny29N1ikh4j6njngBOvTerwtDt2XLfPawPtn
+0Tl32WdNw/eU2+C7PoM3p79nOV96UWIqz/Lu94fr8uBZRIP8f6/Awhm0jP3
6tb75gYbddheOyrMeQ4c6fU/0DimZeN3Aevhb34RJ7TIFf5uym4EUsVM4KiW
3U+N1wFa7v+evnHsxUOSQPNBNi93KGqrgouiXDGcSRndKUBUdEfinesy9vsr
YM+/Tc7uZwQwkkLNKdjziafwYezkouZ1OPyaqw0+XykkTOy4mr6kwiTz0EXS
nEkZzMn0+nghDU14y9aPZbydpICBvEvI+c8ruX5dXSmctl9U4jOJm2mISGNN
hbPrz1EwtnY7BBYpSJs0vKdwiLhNwrqdYvvdLubsuR9q3p5ylIQhgJzDNIXF
8jyrLjUUmqqmX9owmvP/+7LOMzQUS7IFW7wInaSfzsdiOs5E2d7txMb7/Q/i
984u
         "]]},
       AspectRatio->Automatic,
       BaselinePosition->Scaled[0.3169518292168768],
       ImageSize->{40.288906600249064`, 23.511820672478205`},
       PlotRange->{{0., 40.290000000000006`}, {0., 23.51}}],
      TraditionalForm], {1.2, 1}], InsetBox[
     FormBox[
      GraphicsBox[
       {Thickness[0.019346101760495258`], 
        FilledCurveBox[{{{1, 4, 3}, {1, 3, 3}, {1, 3, 3}, {1, 3, 3}, {1, 3, 
         3}, {1, 3, 3}, {1, 3, 3}, {1, 3, 3}, {1, 3, 3}, {1, 3, 3}, {1, 3, 
         3}, {1, 3, 3}, {1, 3, 3}, {1, 3, 3}, {1, 3, 3}, {1, 3, 3}, {1, 3, 
         3}, {0, 1, 0}, {1, 3, 3}, {0, 1, 0}, {1, 3, 3}, {1, 3, 3}, {1, 3, 
         3}, {0, 1, 0}}}, CompressedData["
1:eJxTTMoPSmVmYGBgBGJnIGYC4jMg4PPFfq3qk+Z5vroO/8Hgu318SJD6gkxd
B/et/seT2X7Z+9+Srkks0nWYf2Lykmy1v3B+jGqEzLk9bA4wvsxGsflMDzgc
wOb16jjc4L0tllrG7+Cxv1bWIl3N4b5rvOOsjwIOoj1er1hEVBzUP6m8nLVS
CEKflIfzTYyBYLIcnA92Z46sw5u23G4jayGHHcFWEf/dZSDymoIO64V0+NL/
STns797XZPKY16EvotufUUDCoUW8ljWTjduhVYFd9YyJmAPIWONiTge3NUeX
M0SIOhiB+WwO6WlAcEzYYavXBos5O1kg9hsLQ/3DBOcvubX8sSEzgr8YzGd0
0AC5IxOm/p89OFz+CDv4P/G8ZDr5l70HyL4bIg45UxMKLYq/20P0izrAwh/G
h4T/azifuyqfh9HhEdw8GB/s70whOJ8BBBYIOCwR5lw26+Y7iHwnn0PNi6Zf
03Z+h/Mh7md1gPHB+h4IQ8NP0mHGTBCQhseP8rVHwQw2Cg7VnzYEZFdpQPmK
DutB8curDeeD4/usDpz/JEJ8+8UHug78sQH3jcIVHFp4/ddPOaoHtVcOzj8A
ji8ZOH8NyB37pB026OUtZrRB8GHpC8YHp8+XOg4PQOkpUMZBX2ul8IUWHYe/
oODbLwtxD68OJL1IyzvU/7YqOLdCG8KfLe+gryj/JScMjX9NC86fs0h55590
TYcv+z5uTf8m4/AiS/vb9LlqDiFvL3+c8RCajiYrQtJBsajDDoemR8d3qDoE
geQTRRxOHXZam3lPAxKf8QJw/0HClw/Oh6RPBB+WfsH+36PnULC8ZMM/fwQf
kt944HyI/dwQerMeND2xOWwBydfoQdPbX/sHoPhQ0HPwAOfnP/YNLEf7DcVh
6n/Yg9X/0YWnR0j4Iviw8gEAtmS+Fw==
         "]], 
        FilledCurveBox[{{{0, 2, 0}, {0, 1, 0}, {0, 1, 0}, {0, 1, 0}}, {{0, 2, 
         0}, {0, 1, 0}, {0, 1, 0}, {0, 1, 0}}}, {{{24.164099999999998`, 
         13.399999999999999`}, {24.164099999999998`, 14.401599999999997`}, {
         15.009399999999998`, 14.401599999999997`}, {15.009399999999998`, 
         13.399999999999999`}, {24.164099999999998`, 13.399999999999999`}}, {{
         24.164099999999998`, 9.770310000000002}, {24.164099999999998`, 
         10.771900000000002`}, {15.009399999999998`, 10.771900000000002`}, {
         15.009399999999998`, 9.770310000000002}, {24.164099999999998`, 
         9.770310000000002}}}], 
        FilledCurveBox[{{{0, 2, 0}, {0, 1, 0}, {0, 1, 0}, {0, 1, 0}}}, {{{
         40.564099999999996`, 11.595300000000002`}, {40.564099999999996`, 
         12.5953}, {31.409399999999994`, 12.5953}, {31.409399999999994`, 
         11.595300000000002`}, {40.564099999999996`, 11.595300000000002`}}}], 
        FilledCurveBox[CompressedData["
1:eJxTTMoPymNmYGBgBGIpIIaxWZDYzGSyGaB8BjQ2qWqoZRep5pCqHgCxNwJb

         "], CompressedData["
1:eJxTTMoPSmVmYGBgBGJ7IGYC4kv58eznGD0dwjnF2o31lR10Jyz4Ydjm4bDy
28uKMwcUHNSeNM87m+XhoHztUTBDjAJE3g3BnwkChmh8RQ+HtUI6fOnrEHyw
eQyKcD5EvSLcvDMgMEfZgWXxJCvGXA+HHQ5Nj45XqDrsvNX1N3W9h8Opw05r
M+9pOPyOyT3675aHg//FiTH/mrXh/P8gEK8D57Nwdsknn9N1uCldk2g018Oh
hdd//ZSjeg4VEStMzzoj+E8SF14zWe8O50/5xhY/g8fdofa3VcG5DB2HE5pW
k06buznMALnbUt1BYuoVzgwvd4f+4BKV6fONHdZ0385gsHd3SE8Dgm3GDg/2
8c0x3uXmoAoKtypjhxCgsv8JUH6UscOXDQHZs667QvhWCP4XkEe/GjmYGAOB
sBucL/LJ8XyaKIIPdo84gr/shYfef0mo+b+gfEs3h68geVGo/QVuDvxA76We
MELld6DxPYwcvE6w285OdXPwBtFXDSHyAW4O3V6vWEwCDR0W2OhcmeXn5hCt
4Pgx2ccQ4h53KJ/HEG7/Z5C/lhtA4pPVFRI//2Ud6kDhugHBb1sefsqIx83B
zGZv0LRGFYh+TTdI/O9Qhbin1c3BY3+trMVzdUj8/HFzOH817I3+bi0Hi2tH
c01muDv43wJG9CcdB1A0pr5A8N/w7jOYyeWBKq/h4aCvtVL4QguCvxYUgLwI
fj3InS+04en1z7fSB3MKtR14QPISHg7yy4EOva8FMX+Wu4PHmqPLGSqUIem4
xt3BHcTfoQjh57hD0vscBTgfnD/0EHxwcNTLOYC8PWOyu8Obttxuo2hZh8TD
l7VTLyL4sPyCwp/m4aD+SeXlLE95h0+gcJf3dHjgGu8466CSA3r+BgB5rsr7

         "]]},
       AspectRatio->Automatic,
       BaselinePosition->Scaled[0.3169518292168768],
       ImageSize->{51.694117061021174`, 23.511820672478205`},
       PlotRange->{{0., 51.690000000000005`}, {0., 23.51}}],
      TraditionalForm], {1.3, -1}], InsetBox[
     FormBox[
      GraphicsBox[
       {Thickness[0.0068989306657468085`], 
        FilledCurveBox[{{{1, 4, 3}, {0, 1, 0}, {0, 1, 0}, {1, 3, 3}, {0, 1, 
         0}, {0, 1, 0}, {0, 1, 0}, {1, 3, 3}, {0, 1, 0}, {1, 3, 3}, {1, 3, 
         3}, {0, 1, 0}, {0, 1, 0}, {0, 1, 0}, {1, 3, 3}, {0, 1, 0}, {1, 3, 
         3}, {1, 3, 3}, {0, 1, 0}}}, CompressedData["
1:eJxTTMoPSmVmYGBgBGIVIGYC4u3BVhH/22Uc9tfKWqQfMXB405bbbTRb3kHj
Le8+A05Dh5kgsFLBwaHp0fEZ0oYOZ88AwR8lB0cQ39rQQbTH6xWLiSpEPhrB
N9BaKXzhiKHDA9d4x1kLlR0ixLdfZDhn6GBiDALKEHM5jeD8k4ed1maeQ/BP
gfh2lg7paUDAJoHBL1jTfTvjgoXDDLBB0g6RIPP3WTh82fdxa3qZjEMjy9F+
w3YEX2LqFc6MQ+Zw/uG25eGnNhlB9EtKOWzUy1vMKGMEcddMCQj90tDBbc3R
5QwzxOB8jU8qL2etFIbz3cHyQhD/uhjB+WD/6BnD+TD3BzzxvGQ6+Ys9Oh/m
H7D/1Bgc7EHhudrCARTcZ3wYHcRB7m9C8GH+gfFl5sVpnnYwhvPB4b3O0MEI
FJzFHA7/QWC/gYM6yP2aQnB+yNvLH2c8FIXzg0D8RAl4/MPSB9i8dwg+LL0A
AM/EBI4=
         "]], 
        FilledCurveBox[{{{1, 4, 3}, {1, 3, 3}, {1, 3, 3}, {1, 3, 3}, {0, 1, 
         0}, {1, 3, 3}, {1, 3, 3}, {1, 3, 3}, {1, 3, 3}, {0, 1, 
         0}}}, CompressedData["
1:eJxTTMoPSmVmYGBgBGJpIGYC4vQ0IHAzcEgF0WK2Du77a2Utnus6qDxpnnfW
ysYhI/9D68krOg5L7u/jm3PY2sHcZm/QtEZthx6vVywmH60ckmPvuDH/0HA4
1LY8/FSSpUMDy9F+w+3qDhpvefcZzDSH8/98K30wp9EUzt+ol7eY0cbYYYv5
j0MpXJoOjk2Pjs+oNnQ4vmtHL5uBDkR9oD7EPct1HWbMBAFdiHum6DnIzIvT
PH1Bx6H2t1XBOQsDh+kT+KvMVms79AeXqEzPN3A4fthpbaadjoP41CucGUx6
DrLLX3jo1etB+boOMiD+fn2HKSB93DoO14U+OZ43M3R4nrjwmom+tgPYukwj
iPtOaTl4n2C3nX3UGM5/AlLXbwrnM4BAgTkkfBy1HRpB/nxu4bDVAegxCx0H
E2MgYLaC+MNS16Fkq+jv03LWDm+KgQxvPXj4wtxvUxmxwvSsjQN6/AAAgW22
Jg==
         "]], 
        FilledCurveBox[{{{1, 4, 3}, {1, 3, 3}, {1, 3, 3}, {1, 3, 3}, {1, 3, 
         3}, {1, 3, 3}, {1, 3, 3}, {1, 3, 3}, {1, 3, 3}, {1, 3, 3}, {1, 3, 3},
          {1, 3, 3}, {1, 3, 3}, {1, 3, 3}, {1, 3, 3}, {1, 3, 3}, {1, 3, 3}, {
         0, 1, 0}, {1, 3, 3}, {0, 1, 0}, {1, 3, 3}, {1, 3, 3}, {1, 3, 3}, {0, 
         1, 0}}}, CompressedData["
1:eJxdlHtIU1Ecx9eSRWBFL4xKeqhFbnP3td1jUP1U6PFPSUkZrGCFudofrppQ
4YReI5TYhGILZNAIV5QYZOQClyhpubQE7aFlYFKCSSXVH2mznXPuvYf8weHy
2d35nt/je+66IxV7y+bqdLo5qVWUWvrUCgYWnbMZeXizZLLg5QYE5cdw8GDJ
vbP0lYTo7z4eNk4siHP5CLxTm929LYwPZjzq08UFjTOu98936kV4i/d1yvB+
VZVDGBDh1sf4wvoHErT7oge610uQvj2nUl8jwurw4U2JgET3neI15vD52YxJ
nkMcDGK9SgmiYzvzZuo4+p6TwL/Pkx3cxkEH1o+IUB/Jik3Ps8D5tKd+focI
VZP3i10r82hdy0T4evrh8qm7ZsrNAkxPjLflfzLBlxPG30GvAKEbOEw0r0LG
tE+z2CCAs+L75efNJnjizUTl/Tw86yhsPJ400bz8PIzh81xmqn+IV/abQe2/
yqT/nZzG6XuarpWd4TQ9lcl5EuOuxy1XDcVG2HK29Lb1A0fzjuTSPjl4jek8
BY27se6wBJnkjxZ4QcKmzYfUk4ZgK9ZttVK+hOh8DfL//JnxyXu1Q043ggYs
uxjRuY8gqMb+uSJrPOq4+Vpaw/hXbLDm74ANSrGvwoxVf6lM/PFThpzRi+Ge
PzZYgetpl4HYd79M8/HJtB+NMrThvEoU7pEhRPo+i8dtGu/uq7MnRRt9Zsng
SY0v0SvRZ9gKZDy7BJDEVBRZwb624MdRu/I+KdG6vlkhQeYmavWRfTHGxJ9R
xqp/Sf3DCNy4jwHG5L5VMyZ9KBGp7jsEMziaBOVeIuq3Vl7RUe5zAw9wYaQr
VIuo/1y8oos0P5J74WGsfh/+AbjF1wE=
         "]], 
        FilledCurveBox[{{{1, 4, 3}, {1, 3, 3}, {1, 3, 3}, {1, 3, 3}, {0, 1, 
         0}, {1, 3, 3}, {1, 3, 3}, {1, 3, 3}, {1, 3, 3}, {0, 1, 
         0}}}, CompressedData["
1:eJxTTMoPSmVmYGBgBGJpIGYC4v21shbpUywdpk/grzJbre1Qz3K03/C5lcOf
t68PWCbrOuSv6b6dUWDtIDMvTvN0gJ7DjJlAIGnjoKMo/yXnm75DyVbR36fj
bB003vLuM+g0hPD/2TqYGANBsDGcr/qked7ZLFM4/wDI3i3mDj4n2G1nh9o6
FILtsXQ40rY8/NQha4cl9/fxzXG2hriH3drhSeLCaybyNg7/QaDfysH34sSY
f802DstfeOj9X2jpkJoGBGK2EH9kWzrYVEasMD1r46AOctdNK4czILDG2kFf
a6XwhRBrhxgFx4/JPNYON6RrEo2uQumtUPudbBzEp17hzGiygIiX2jjcEPrk
eF7NHM4HmxdjCueDw6fB2IHDTbWUycrGwQBkD4uRw/HDTmsz91k7PM/S/jb9
rYFDuPj2iwx21g41nzYEZM/Sh7hnixU8fGHuB+uz03FAjx8AZRi6Mw==
         "]], 
        FilledCurveBox[{{{0, 2, 0}, {0, 1, 0}, {0, 1, 0}, {0, 1, 0}}, {{0, 2, 
         0}, {0, 1, 0}, {0, 1, 0}, {0, 1, 0}}}, {{{46.1641, 22.9}, {46.1641, 
         23.901600000000002`}, {37.00939999999999, 23.901600000000002`}, {
         37.00939999999999, 22.9}, {46.1641, 22.9}}, {{46.1641, 
         19.270299999999995`}, {46.1641, 20.271899999999995`}, {
         37.00939999999999, 20.271899999999995`}, {37.00939999999999, 
         19.270299999999995`}, {46.1641, 19.270299999999995`}}}], 
        FilledCurveBox[{{{0, 2, 0}, {1, 3, 3}, {1, 3, 3}, {1, 3, 3}, {1, 3, 
         3}, {1, 3, 3}, {1, 3, 3}, {1, 3, 3}, {0, 1, 0}, {1, 3, 3}, {0, 1, 
         0}, {0, 1, 0}, {0, 1, 0}, {1, 3, 3}, {1, 3, 3}, {1, 3, 3}, {1, 3, 
         3}, {1, 3, 3}, {1, 3, 3}, {1, 3, 3}, {1, 3, 3}, {1, 3, 3}, {1, 3, 
         3}, {0, 1, 0}, {0, 1, 0}}}, CompressedData["
1:eJxTTMoPSmVmYGBgBGI7IGYCYuFPjufTZAMdGECgwsWhfXn4KSOeQIeQEpXp
/xtcHM6AwI8Ahwf7+OYYe7k4fGeLn+HzNMDBxBgEXBw+bwjInnUcwZd+/chM
ag+Cn54GBOug+q1cHLq9XrGYTEWY9x8EogMcSraK/j6d5+Kg/qR53lmtALj9
RzWtJp3+7o/qHhE/OF8E5P5YH4edt7r+pm53gvOPg/Ttd4Dzwf5ScYCIz/dx
SIm948bMYe+Qw/lzQTq3r0OMguPHZB07iHvqfR2OtAE1ONk6PElceM1E3c+h
nuVov+FxGwfdCQt+GL5D8D+A/L/dH86/D/KXXoBDhPj2iwxythD/t0HD4zGU
vy/AARzucx0cNjx8OXXThQAH7xPstrNlHR1Wd9/OYHgcAAknS0eIOt1AiLlO
CP4akLp0R4elLzz0/v/0x+DD1IPDkysA4i97R4eZICAZ4JAN8re1I0SdHIIP
Vucc4DDlGzCiTRwdvKub9X3CEO6D8ffXylqkf3GA88HmHHKAxIN/gMNykDsa
HSDiZgEOPSD/bLR3yI9nPycpG+DwBRRu6XZw94DDx9nO4bGI7Mmn3AGQ+OCx
cxAA+fepP0T9cluHVFD49fk75IM8XGDrsAdknzqCb37taK4Jgx+cD7Y30hdi
/mE7OB8cjr0OcD44/JY7OiQcvqydetIX4q6TTg46oPiu84P4p9PZ4YZ0TaLR
Uz9Iuvrq7PAnJvfovyJ/eHoPBqVLFkT6h4UHSn7oC4DrB8f/hgBI+uxxhsT/
4QAHV9VSplkBzhB3nQ5wcAfxFZzh6WWjXt5ixj1O8PzIuniSFeNWJwf0/AwA
BNOq1Q==
         "]], 
        FilledCurveBox[{{{0, 2, 0}, {0, 1, 0}, {0, 1, 0}}}, {{{53.4359, 
         21.0988}, {71.9961, 21.0988}, {71.9961, 22.1031}, {53.4359, 
         22.1031}}}], 
        FilledCurveBox[{{{0, 2, 0}, {1, 3, 3}, {0, 1, 0}, {0, 1, 0}, {1, 3, 
         3}, {1, 3, 3}, {1, 3, 3}, {1, 3, 3}, {0, 1, 0}, {1, 3, 3}, {1, 3, 
         3}, {1, 3, 3}, {0, 1, 0}, {0, 1, 0}, {0, 1, 0}, {0, 1, 
         0}}}, CompressedData["
1:eJxTTMoPSmVmYGBgBGJFIGYCYvGpVzgzPvk5zJgJAjIOU76xxc+44ufQqsCu
euaLjMN/EKj3cwh+e/njjIcSDvf38c0xTvJziFaNkDlnI+FgYgwEv33hfPNr
R3NNbnjD+S6qpUyzInwdwMZnKjnsrZW1SFfxc5jS3hp1eY+qg88JdtvZtX4O
mfkfWk+WaMD5xw87rc2004bz/W9J1yRe0nNoXR5+yugI1LyTBg66Exb8MLzm
A+fz+K+fkhqB4Cccvqyd+tDbwUBrpfCFFAOI/3q8Hc5fDXujH63vkMP5c0G6
s7eDz8WJMf+U9RxCSlSm/1fwdpBd/sJD778OxL+/vCDuKNWC8LW8HTz2Az3i
ruUg7/gx+Uyrt0P9b6uCcyd04f5fq/qked5bPYcI8e0XGcp84PzUNCAw84Xz
a0H6dvg6+ILsf6wD5/95+/qA5WNNOH+HQ9Oj4xLqDl82BGTP8vd12JNf83bm
UWWHp4kLr5n0+zikg8ydpuBwXNNq0unvXg47gq0i/i8XhvPPgIGQA8jZ6SV+
cD56/AMAgtPyvQ==
         "]], 
        FilledCurveBox[{{{1, 4, 3}, {1, 3, 3}, {1, 3, 3}, {1, 3, 3}, {0, 1, 
         0}, {0, 1, 0}, {0, 1, 0}, {1, 3, 3}, {1, 3, 3}, {1, 3, 3}, {0, 1, 
         0}, {0, 1, 0}, {0, 1, 0}, {1, 3, 3}, {0, 1, 0}, {0, 1, 0}, {0, 1, 
         0}, {1, 3, 3}, {1, 3, 3}, {1, 3, 3}, {1, 3, 3}, {0, 1, 0}, {1, 3, 
         3}}}, CompressedData["
1:eJxTTMoPSmVmYGBgBGIjIGYCYunXj8ykLgQ6yO9asC/VT8IBxo9SjZA5t0fC
oX/BD8Nn5wIdjEHgs4TD9aO5Jg2nEXzv6mZ9n11o8rsDHd605XYb7RZx2NpS
c2FzLYKvaTXpdH0Ogj8TBFIDHTQ+qbyctVIUzhepnFRylkUczg9+e/njjIcS
Dvnx7OckCwMdZoAlpCHm1QQ6tCqwq54pkXNwVS1lmnUm0OFV8VbR39qaEPWZ
gQ7iU69wZizScKhdty2pnjfQIQbsP2mIu7kDHUJA5idKO8TmHv236XiAwwPX
eMdZhaIONjpXZj1rRPA3PHw5dZMDgg8OL50AB3WQ+zUl4fx2kHu+SMP5vRHd
/owXZBzS04BALwDqflmIeQYBDmuEdPjS7eTg9sHc3+31isVEN8AhM/9D68kt
Gg4hJSrT/yf4O5wBAyEI38DfYcmt5Y8NmbkcRD45nk+76ufwxO9lwl/5r/Z/
YoAeOuTnYLt2kb3J5/f2e2tlLdJ7/OH8q6D44g9wYACBB6IO7qDwE8DkK4DS
xzlRiHtEAxwOdu9rMmEWcvi8ISB7VjqCL+4R8EfiMIIPDt/fAdD4FXfg+Lkg
fTMbNH5bJBxqQPHBGuhgAk4/4g77Qe5jgfKL0fifxeD82aDgsxRyuL+Pb46x
VyDcPnCwxiL44PhPRPD/g8B6BB+W3iHuE3NAzw8A8eBNiA==
         "]], 
        FilledCurveBox[{{{1, 4, 3}, {1, 3, 3}, {1, 3, 3}, {1, 3, 3}, {0, 1, 
         0}, {1, 3, 3}, {1, 3, 3}, {1, 3, 3}, {1, 3, 3}, {0, 1, 
         0}}}, CompressedData["
1:eJxTTMoPSmVmYGBgBGJpIGYC4vQ0IJgX7JAKosVsHba21FzY7BnsoPKked5Z
KxuHnbe6/qaqBzssub+Pb85ha4fgEpXp//8EOfR4vWIx+WjlUBGxwvTs6iCH
Q23Lw08lWTrE5h79t6k5yEHjLe8+g5nmcP6fb6UP5jSawvkb9fIWM9oYOxy+
rJ0quS7IwbHp0fEZ1YYOqiB7hYIh6gP1Ie5xDHaYMRMEdCHuiQ92kJkXp3n6
go7Dmu7bGQyzgx2mT+CvMlut7bDh4cupm1YEOxw/7LQ2007HoSCe/Zykb7CD
7PIXHnr1eg75IL4uUD+Iv1/fAeQtY75gh+tCnxzPmxk6cPxckL75U5AD2LpM
I4j7ngU5eJ9gt5191BjOf5K48JpJvymczwACBeaQ8PkS5NDIcrTf8LmFw2MR
2ZNPhYMdTIyBgNkKos4k2KFkq+jv03LWDt7Vzfo+YYjwhbnfphIUsDYO6PED
ABUCv9o=
         "]], FilledCurveBox[CompressedData["
1:eJxTTMoPymNmYGBgBGIpIIaxWZDYzGSyGaB8BjQ2qWqoZRep5pCqHgCxNwJb

         "], CompressedData["
1:eJxTTMoPSmVmYGBgBGJ7IGYC4hfb1zM/fxDq8HlDQPYscWMHCY+APxKLQx0K
1nTfznhg6CD0yfF82tRQhwjx7RcZ1hlC5JsR/DMgUIHGLwh1aGQ52m94HcEH
m8dgBOeD1esZwc07edhpbaafsUNToOfchmmhDjEKjh+TbUwcYnOP/tu0PdTh
SeLCaybvTR1q121Lqj8b6rDihYfef0dzOJ8BBDYg+GD70y0c3vLuM5i5LtTh
UNvy8FOPLBxsdK7MetaI4H8B+dscwfeqbtb3eRbicKBW1iJ9i7nDExHZk0+r
QyDuljF16PF6xWLCGurQG1yiMl3e1uHq0VyThv8hDqlpQGBm61AQz35Ocm+I
g8qT5nlnf9k4aFlNOl0/IcRBFcS/ZeNQEbHC9Kw3VH4Xgv91562uv6U2DjNB
IBPB5/y5IH1zFoIPdk82gh8CdMb/HKh5VVB+DVR+qo2DJsj+GSEOPP7rp6R6
oPE50PgnrCHunBTi4HOC3XZ2qDVEviME4u+LVg4BcmJZvu0hkPg5YwVxTzOU
32MFtx8crupWDs2g+HwU7PAfDAwg4WoRAucfuaydKpkW4iAzL07z9AFjiP4S
qHkxJhD3LApxWHJ/H9+cYlNI/NwLcXiRpf1t+l0zB5nXj8ykdEIdNEAR/dPc
ARSNRiEI/je2+Bk+qWjyJaEOElOvcGYcQvBvgBJ6G4IPdmeJOTy91v62Kjhn
AZXPCXWYAIr/92YOP0Dm64Y6bNTLW8xoY+wASgZpclB+jBGELwZN7+cM4Xxw
+pyO4IODQ97QARysmqEO10HuuWbgsOHhy6mbPBB8WH5B4a8OdRAH+SfIEJKe
3oc6SIPC84GRA3r+BgB6Ncz5
         "]], 
        FilledCurveBox[{{{0, 2, 0}, {1, 3, 3}, {0, 1, 0}, {0, 1, 0}, {1, 3, 
         3}, {1, 3, 3}, {1, 3, 3}, {1, 3, 3}, {0, 1, 0}, {1, 3, 3}, {1, 3, 
         3}, {1, 3, 3}, {0, 1, 0}, {0, 1, 0}, {0, 1, 0}, {0, 1, 
         0}}}, CompressedData["
1:eJxTTMoPSmVmYGBgBGJFIGYC4p23uv6mNoc7RIhvv8ggZ+XwYvt65ucV4Q7h
IL6elUOAnFiWb3S4QyPL0X7DckuHMyAQEO6wxfzHoZQoS4cND19O3aSD4BfE
s5+TzA2D8ysjVpie/RzmULJV9PfpPmsHE2MgsA53UH/Lu89gp41DU6Dn3Iao
cAcbkMK1tnB+Pci+5XZwfkrsHTfmF/YOteu2JdVLhjt83hCQPSvfweHIZe1U
yWNhcD7YH7MQ/EWTrBh9C8Ic2peHnzLycXB4A7R2ZlCYwwa9vMWMPA4Q/1qE
OUydwF9lttoewtcJc9hfK2uR7mIP8b98mIPEvDjN0wl2DjKvH5lJGYQ5yID4
AXYObSBzA8IcpoD0d9vD/f/nW+mDOR/tHQ6AzFmC4IPD4zmCXwPyj2i4g8qT
5nlnrRB8cHjo2sH54HAztnVwUy1lmvUhzKH+t1XBOQ4bhx6vVywma8McpoPs
f20FCS+5MEg89VjA+WlgYAHxT3g4nI8e/wAVz+Cb
         "]], 
        FilledCurveBox[{{{0, 2, 0}, {0, 1, 0}, {0, 1, 0}, {0, 1, 0}}}, {{{
         109.16399999999997`, 21.095299999999998`}, {109.16399999999997`, 
         22.095299999999998`}, {100.009, 22.095299999999998`}, {100.009, 
         21.095299999999998`}, {109.16399999999997`, 21.095299999999998`}}}], 
        FilledCurveBox[{{{1, 4, 3}, {1, 3, 3}, {1, 3, 3}, {1, 3, 3}, {1, 3, 
         3}, {1, 3, 3}, {1, 3, 3}, {1, 3, 3}, {1, 3, 3}, {1, 3, 3}, {1, 3, 
         3}, {1, 3, 3}, {1, 3, 3}, {1, 3, 3}, {1, 3, 3}, {1, 3, 3}, {1, 3, 
         3}, {0, 1, 0}, {1, 3, 3}, {0, 1, 0}, {1, 3, 3}, {1, 3, 3}, {1, 3, 
         3}, {0, 1, 0}}}, CompressedData["
1:eJxdlG1IU1EYx5fVTDCNyhdERUsL3OZmbu4OqR41sqjMMkrlnEtZ0kpIM7OS
FCpUSiT3IVSyQhGWNct0oRUO03BqsTKkkmEvmmXZMEUI0bR77t3dIQ+cD797
7n1e/s//3NCM7P2ZSyUSyRJuJ3Dbjdsh9pmik/UI3q+einu9gQF1NLdaECgj
Gta8UTPgM2j7k/IMwUbHSotKx4C81HfQZqXs6SYr9fXALvZbdtBLEYDhA4nX
rYXpvwPnfyRhqP9k8appUcNcw+TbPRkYPLeHn3W7Fg2js9yDQgx+NwY89LlR
LlaR/GGUKyu8C2LsKiFePgbj2I7IBYMKvpPzTAzXU/LCKreqhPjxGGrq1j+Z
c1eCuykw/ZgMw8WppuSsgEjwTtWZe4Ix/Drz2Gf2vkJgKYY5x3iHbkQOgcqh
MOkMgqpqsuRCPz8p83qMLGI7An327+JesxyCisf3tdkQ9HTFN56Yl4OCC3ep
HcEYyZelAH8S/5H4vQJE/UXm9S+jnPilYO2DczSeyHw+NWXr07ZyabIMNFfj
Do9WIEHPuggIj1phCmymzNc7S9lh7N6lNWAI4gVVwiuyPFnXfOpvvghpSmdh
y4XUu5p2jcAFrDBfqfZ//kb5tKnMrs9hoJEUyLLQWWI81DfMQNOtCWN3LGXu
7Vx9KGVrvuVOgDcLqX6t/ZLblEV/icz7Y1oLrcGc4P4s+JN+OrVAxh2rdNZT
ooWHuXqDYxsLHYVBzPEDTt7NQhXxk2wRj8e4OKnfgOajY8DcwyVcx0IeN76X
NjV85uROfI6BH8/OTTC0t7zy1D0MKCRu8ihynldj+Hqk9p16QgMTRN807Opv
gaxEyrw/EyiL/uX7/8gAsV/zZsr8fdNR5v0b6axnkIFVVzr6apdjSCPnFkbw
cy+CHDKPCud97kIAl4etVWWM4D8zEt4vYlx+5O9/HmXx//APHuXmGA==
         "]], 
        FilledCurveBox[{{{0, 2, 0}, {1, 3, 3}, {0, 1, 0}, {0, 1, 0}, {1, 3, 
         3}, {1, 3, 3}, {1, 3, 3}, {1, 3, 3}, {0, 1, 0}, {1, 3, 3}, {1, 3, 
         3}, {1, 3, 3}, {0, 1, 0}, {0, 1, 0}, {0, 1, 0}, {0, 1, 
         0}}}, CompressedData["
1:eJxTTMoPSmVmYGBgBGJFIGYCYvNOx4SnLAkOEeLbLzLIWTnMeb/8mPf/eIdw
EF/PyqHG3jRu18N4h0aWo/2G5ZYOa2SiUqyvxztsMf9xKCXK0sG/d3qe0GYE
/03gDrnWz3FwvjhLGJ9uVbxDyVbR36f7rB1mzASCg/EO6m959xnstHEwBdn/
IN7BpjJihelaWzi/HmTfcjs4PyX2jhvzC3sHkPX358c7fN4QkD0r38FBZJ37
wyofBH/Fx0u+SQoIvmzr68Ad3+Ic2peHnzLycXCQ0b+rwnYzzmGDXt5iRh4H
iH/3xzlMncBfZbba3kH05rnvwZvjHPbXylqku9g7gJy/aWmcg8S8OM3TCXYO
HjxM2u3b4hxkQPwAOweb+8AQuBbnMAWkv9se7v8/30ofzPlo79AOdP4FrXg4
f8JbYIjmIfhTnLtzns+Od1B50jzvrBWCDw4PXTs438QYBGwdnlxQuv2zDBg+
v60KznHYONxRYWucahzvMB1k/2srh/VFGRPfLolzOAMCPRZwfhoYWED8czce
zkePfwDUgunk
         "]], 
        FilledCurveBox[{{{1, 4, 3}, {1, 3, 3}, {1, 3, 3}, {1, 3, 3}, {0, 1, 
         0}, {1, 3, 3}, {1, 3, 3}, {1, 3, 3}, {1, 3, 3}, {0, 1, 
         0}}}, CompressedData["
1:eJxTTMoPSmVmYGBgBGJpIGYC4q8aMf2HTBMcpk/grzJbre2QvadkskRCgsOf
t68PWCbrOqRPfFtjX5jgIDMvTvN0gJ5DehoQtCU46CjKf8n5pu9wfXGBLdf6
BAeNt7z7DDoNIfzDCQ4mxkAQbAznqz5pnnc2yxTOP1Ara5G+xdzhxrnvwY/X
JjgUrum+nVFg6ZBsfd+/tzrBYcn9fXxznK0h7klJcHiSuPCaibyNw/vlx7zN
QxMcfC9OjPnXbOPwsy5rT4l5gkMqyF1itg5A05bONkhwsKmMWGF61sYBqJsl
LC7B4QwIrLF2yBdqPnAqN8EhRsHxYzKPtUP80wtKt2sTHG5I1yQabYXa353g
ID71CmdGkwVEfiJQXuiT43k1czgfbF6MKZwPDp8GY4dwyy0nyroSHAy0Vgpf
YDFyiN/lycME9M/zLO1v098aOOQ8/73yY1aCQ82nDQHZs/Qh7olEhC/M/ccP
O63NtNNxQI8fABWBwgA=
         "]], 
        FilledCurveBox[{{{0, 2, 0}, {0, 1, 0}, {0, 1, 0}, {0, 1, 0}, {0, 1, 
         0}, {0, 1, 0}, {0, 1, 0}}}, {{{142.258, 26.365599999999997`}, {
         140.02200000000002`, 29.35159999999999}, {138.91399999999996`, 
         29.35159999999999}, {136.69699999999997`, 26.365599999999997`}, {
         137.30499999999998`, 26.365599999999997`}, {139.46899999999997`, 
         28.20779999999999}, {141.64999999999998`, 26.365599999999997`}, {
         142.258, 26.365599999999997`}}}], FilledCurveBox[CompressedData["
1:eJxTTMoPymNmYGBgBGJFIIaxWaBsBiifAY3NCJXHpwaXemqxSbWXGPfQ0y/E
2AUAbyICaQ==
         "], CompressedData["
1:eJxllAtIU2EUx+cc9MAeFGVUhAaWZYV3m9tdMTsFDcMCK2JKD3fUajrwEVoZ
2ktJymD2EJeGEVIqVAjZW8TU2nS1FgkWK4rMNEIL1EIk7H73ft8+yAMflx/n
3HPO9z/n3si0nJ0HQlUqVYh0LNJRSyd6r7N9bBQhOfzhG1W2ADFlC9/7fiDE
rm6c7y+lPIBwWvPcKVQJIDZ7jrT2IVwl1iWARNcXOxHMhckNcR/jwHhuk63f
Q/MtE5X4t/T9MhF0xD7R9x+LINf/hZB7uzxg93Pu7th8JzPeBC+JVUxlFu+9
seXBSCUCnPnidnlF6BiTMlTTem4R3IlSR9c4d0Y0HbY3Ijw7W2/tbhfhaf7l
RZq71F/PObyyZ4Y9jTO7j5yvAUFFzG9U2IUwmBXzu8psVPq7gtAwmLBuMpL6
LyC4KuYcN3gN8PrPrr6bJQhRX0tqX2UZoOfY9xXCKeovN8A7nxRQjHCQ2C3q
L0Ionlif63tE/ZkI0UOzWmMLjZD6ZGuYeg9CCukvXgzyStnPOY/o1SRCb12u
eWY610vOV8D1ZMz0DiEL8M02hVn8mDwwm1K/VYSf9S8SjeO2oJ7kujUarl9q
v395YDtCxr4PllCXHg5dHCraaEbIv79gwjusg5x5JW3daxFGm5Ic1VYdSN32
1kUjjBAO1yn5ptP97BSUen9pvaMCTBIbsAX3mbH8nIyF9LnJpuYEnMIs3tEi
DVyPwXwyr+H7z1jWL8BZ1iNCq+i9AWFJ7f5V3s9aJX8Sgp7s/T2dcv8dCEuJ
v43yboRtnmnmmn7KKVSP2XoIjJ/IaslACLNEFajP68Bqkj6obK6HPK88hC4y
n2GtMt+TtF+rVtnHUtqfijP7fhnL+36JchG/v5zPwfVhzPRj/4//mcX/A+SC
CYM=
         "]]},
       AspectRatio->Automatic,
       BaselinePosition->Scaled[0.4060467649757386],
       ImageSize->{144.95034620174346`, 41.8480099626401},
       PlotRange->{{0., 144.95000000000002`}, {0., 41.849999999999994`}}],
      TraditionalForm], {1.7, 0}]}},
  Axes->{False, False},
  AxesLabel->{None, None},
  AxesOrigin->{0, 0},
  DisplayFunction->Identity,
  FrameLabel->{{None, None}, {None, None}},
  FrameTicks->{{Automatic, Automatic}, {Automatic, Automatic}},
  GridLinesStyle->Directive[
    GrayLevel[0.5, 0.4]],
  ImagePadding->All,
  Method->{
   "DefaultGraphicsInteraction" -> {
     "Version" -> 1.2, "TrackMousePosition" -> {True, False}, 
      "Effects" -> {
       "Highlight" -> {"ratio" -> 2}, "HighlightPoint" -> {"ratio" -> 2}, 
        "Droplines" -> {
         "freeformCursorMode" -> True, 
          "placement" -> {"x" -> "All", "y" -> "None"}}}}, "ScalingFunctions" -> 
    None},
  PlotRange->{{0, 3}, {-1.1, 1.1}},
  PlotRangeClipping->True,
  PlotRangePadding->{{0, 0}, {0, 0}},
  Ticks->{Automatic, Automatic}]], "Output",
 CellChangeTimes->{{3.54072970483346*^9, 3.5407297649118958`*^9}, 
   3.5407297958656664`*^9, 3.888166260092194*^9, {3.888166314382937*^9, 
   3.8881664085599537`*^9}, {3.888166492756212*^9, 3.888166566590418*^9}, {
   3.888166603373765*^9, 3.8881666279052353`*^9}, {3.888166665889263*^9, 
   3.888166701235343*^9}, {3.8881766895070753`*^9, 3.888176715605455*^9}, {
   3.888176812402019*^9, 3.888176825559639*^9}, {3.8881771248371363`*^9, 
   3.888177158887516*^9}},
 CellLabel->
  "Out[580]=",ExpressionUUID->"5ccef4c9-9620-4ca3-8c87-c610d0d6f426"]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"peeters`exportForLatex", "[", 
  RowBox[{"\"\<continuumProblemSet2Fig1r2\>\"", ",", "s"}], "]"}]], "Input",
 CellChangeTimes->{3.8881658360709343`*^9, 3.888177373612908*^9},
 CellLabel->
  "In[582]:=",ExpressionUUID->"94e8a220-f1e1-43c8-b965-e6526e5d57d9"],

Cell[BoxData[
 RowBox[{"{", 
  RowBox[{"\<\"continuumProblemSet2Fig1r2.eps\"\>", 
   ",", "\<\"continuumProblemSet2Fig1r2pn.png\"\>"}], "}"}]], "Output",
 CellChangeTimes->{3.888177170876769*^9, 3.8881773763128347`*^9},
 CellLabel->
  "Out[582]=",ExpressionUUID->"3fb0e5db-446d-476b-994f-76db19234228"]
}, Open  ]]
},
WindowSize->{1584, 765},
WindowMargins->{{0, Automatic}, {Automatic, 0}},
Magnification:>1.25 Inherited,
FrontEndVersion->"12.2 for Mac OS X x86 (64-bit) (December 12, 2020)",
StyleDefinitions->"Default.nb",
ExpressionUUID->"3caa263b-8aed-4048-b6a1-f4a1df084e3a"
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
Cell[1235, 30, 178, 3, 44, "Text",ExpressionUUID->"0e43f265-bd4a-4567-a894-d41544aee7b4"],
Cell[1416, 35, 235, 4, 64, "Input",ExpressionUUID->"b68b0397-32b1-42c9-8d50-dd9300a47482"],
Cell[1654, 41, 925, 20, 142, "Input",ExpressionUUID->"1e2831f2-b19c-4f79-84f6-013b1c4f77e3"],
Cell[CellGroupData[{
Cell[2604, 65, 5436, 137, 558, "Input",ExpressionUUID->"4d420453-823b-41f9-972e-c858b8f0fb08"],
Cell[8043, 204, 29794, 526, 351, "Output",ExpressionUUID->"5ccef4c9-9620-4ca3-8c87-c610d0d6f426"]
}, Open  ]],
Cell[CellGroupData[{
Cell[37874, 735, 280, 5, 37, "Input",ExpressionUUID->"94e8a220-f1e1-43c8-b965-e6526e5d57d9"],
Cell[38157, 742, 302, 6, 42, "Output",ExpressionUUID->"3fb0e5db-446d-476b-994f-76db19234228"]
}, Open  ]]
}
]
*)

(* NotebookSignature 1upHPxdAOfLB3Ag54F#Zjqx6 *)
