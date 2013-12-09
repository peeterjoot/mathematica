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
NotebookDataLength[     67363,       1523]
NotebookOptionsPosition[     66934,       1494]
NotebookOutlinePosition[     67275,       1509]
CellTagsIndexPosition[     67232,       1506]
WindowFrame->Normal*)

(* Beginning of Notebook Content *)
Notebook[{

Cell[CellGroupData[{
Cell[BoxData[{
 RowBox[{
  RowBox[{"Clear", "[", 
   RowBox[{
   "u", ",", " ", "mu1", ",", " ", "mu2", ",", " ", "h", ",", " ", "u0", ",", 
    " ", "c"}], "]"}], "\[IndentingNewLine]", 
  RowBox[{"(*", 
   RowBox[{"mu1", " ", ":=", " ", 
    RowBox[{
     RowBox[{
      SubscriptBox["\[Mu]", "1"], "\[IndentingNewLine]", "mu2"}], " ", ":=", 
     " ", 
     SubscriptBox["\[Mu]", "2"]}]}], "\[IndentingNewLine]", 
   "*)"}]}], "\[IndentingNewLine]", 
 RowBox[{"mu2", " ", "=", " ", 
  RowBox[{"ChemicalData", "[", 
   RowBox[{"\"\<Water\>\"", ",", " ", "\"\<Viscosity\>\""}], 
   "]"}]}], "\[IndentingNewLine]", 
 RowBox[{"mu1", " ", "=", " ", 
  RowBox[{"ChemicalData", "[", 
   RowBox[{"\"\<Mercury\>\"", ",", " ", "\"\<Viscosity\>\""}], 
   "]"}]}], "\[IndentingNewLine]", 
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
  RowBox[{"Plot", "[", 
   RowBox[{
    RowBox[{"u", "[", "y", "]"}], ",", " ", 
    RowBox[{"{", 
     RowBox[{"y", ",", " ", 
      RowBox[{"-", "1"}], ",", " ", "1"}], "}"}]}], "]"}], 
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
   3.54076960231843*^9}}],

Cell[BoxData["0.00089000000000000005755812493291045939`2."], "Output",
 CellChangeTimes->{
  3.5407669176568766`*^9, 3.540767185640204*^9, 3.540767336833852*^9, 
   3.5407675681480827`*^9, 3.5407676308476686`*^9, 3.5407676684138174`*^9, {
   3.540767709669177*^9, 3.5407677376897793`*^9}, 3.540767827660926*^9, 
   3.540767889057437*^9, 3.5407684687775955`*^9, 3.5407689436837587`*^9, 
   3.5407691539507847`*^9, {3.540769471625955*^9, 3.5407694915800962`*^9}, 
   3.5407696034384947`*^9}],

Cell[BoxData["0.00152600000000000001268429805634241347`4."], "Output",
 CellChangeTimes->{
  3.5407669176568766`*^9, 3.540767185640204*^9, 3.540767336833852*^9, 
   3.5407675681480827`*^9, 3.5407676308476686`*^9, 3.5407676684138174`*^9, {
   3.540767709669177*^9, 3.5407677376897793`*^9}, 3.540767827660926*^9, 
   3.540767889057437*^9, 3.5407684687775955`*^9, 3.5407689436837587`*^9, 
   3.5407691539507847`*^9, {3.540769471625955*^9, 3.5407694915800962`*^9}, 
   3.5407696034404945`*^9}],

Cell[BoxData[
 TagBox[GridBox[{
    {"\[Piecewise]", GridBox[{
       {
        RowBox[{"-", 
         FractionBox[
          RowBox[{
          "0.36837748344370862238511590681459676454`1.8617940549091447", " ", 
           "u0", " ", 
           RowBox[{"(", 
            RowBox[{"h", "+", "y"}], ")"}]}], "h"]}], 
        RowBox[{"y", "<", "0"}]},
       {
        RowBox[{"-", 
         FractionBox[
          RowBox[{"413.9072847682119084959`2.426323598977769", " ", "u0", " ", 
           RowBox[{"(", 
            RowBox[{
             RowBox[{
             "0.00089000000000000005755812493291045939`2.", " ", "h"}], "+", 
             RowBox[{
             "0.00152600000000000001268429805634241347`4.", " ", "y"}]}], 
            ")"}]}], "h"]}], 
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
  3.5407669176568766`*^9, 3.540767185640204*^9, 3.540767336833852*^9, 
   3.5407675681480827`*^9, 3.5407676308476686`*^9, 3.5407676684138174`*^9, {
   3.540767709669177*^9, 3.5407677376897793`*^9}, 3.540767827660926*^9, 
   3.540767889057437*^9, 3.5407684687775955`*^9, 3.5407689436837587`*^9, 
   3.5407691539507847`*^9, {3.540769471625955*^9, 3.5407694915800962`*^9}, 
   3.5407696034424944`*^9}],

Cell[BoxData[
 GraphicsBox[{{{}, {}, 
    {Hue[0.67, 0.6, 0.6], LineBox[CompressedData["
1:eJxlx30wmwcAx3Evc9etqnSjNW9V5ZBQ4uqlFi+lHXWGtutNnU5olx11zMtS
tGKhpa6s9dJ1K1lzomMqXhLWZprf0jaKCBLxPCUl8zq0xKo1dTu2/b0/vve5
r31i2vFzBnp6ev7/9p/ugRaLW1s6fNRkwzJ0jJakvXUoebuhQzD1FD+f64ZW
oafT6hsd+qLCTAO4dNCcIxPnXujwLSO424YbCR+zorF+UoeOBTpvBzceQdN/
9n3fooOTe1e5ETcVx4sVTV6f63AmOu+yPvcSWINFqUzJMpImxwq2asugVm9f
lDKWkM32CdE+58Lmt7QPfKxfour52W20pbvoSHlitHN8ETEU383oowIkXPNc
GeUsIOWVByXdToj1irwSBM7jj9G/XHhkJ+pMJixvTc6he20htlQrRs0xz4zh
q7P4gcpQ8tQScM4zLriEz6DKWxapPCxFnuHPrIylKVz7Kk3uFvIYjILB/UTD
JCbbMl7l28tQ/XD2Vk3y72jL96Uz17oh1job39s3Ac+5yjuU1R44mAYdPsnV
YMeJsOYZRR/aXUuSp6afofZ0hSpnqB9aWdteb28C/GWu1d3eAcxSq2noHIZR
qEFxUvQQzPIbvd31lTCbYBtPRSlB9dZR61f7Id9onDsdoEJh6NLQgwtPMT5j
q5AGDcP8pOB67O5HcDPPPpIVoEb7mmxnz34xqD2sXfaUEdRrZssWigQoDJO9
+JVCYOyixY+1XgKUe1wKyj1AwMT249aYqWbc3nOw2teLwNcJDaoHgc0QzvMD
Og4RODqbvLt0owkzJUU3BOEE5pd1d1zTGxHaG+LDYxJwNdgQpsTxYXTsEedK
HYEzda4yu/f4MKPlkqE/EagIjSOG79fB9kMa1bCJwMaVrnV/izocXOSNsNsJ
yLez6cZKHr4o/cY5R0rgmeu28tgyLp72BQ2kaAnEx1iLNElVKImAZYwViZer
b/yyn1RCcF9S87ctiYs3B2HiWAmVo8SuYR+JGg1HHjx3A9Z6Dx23XEiI5CpZ
lLIcrSKxZ7MviZbX5x3mx4owatMZ/u4pEgN+ew9Y1RRis7SjXxRLYjl/+NAn
8Rw4rIuiEuJJfLYri/8l2EhVCT/95SyJE/4mBvq92dAvbmOcyyRRIcuyZEZk
wul164wpi8RQlMZDoUhHBKOV2ZVL4nZPNGj1TFT7t6S+zyGxZ9xmebMxEeIG
wYrkMgnK9Ijfzfg4aM0FmclXSTgZp3/nzozBO4XNa+ZlJArUzmqrx3S4rNzL
kV7///8DEywTCg==
      "]], LineBox[CompressedData["
1:eJwBkQNu/CFib1JlAgAAADgAAAACAAAA1vGCnxD4SD8Ak6DWYZvXv3uTRspr
NGA/Y4Tmn/en17/DIImHnRByPyxncjIjwde/Z2cqZrb+gj+8LIpXevPXv7kK
e9XCdZM/27e5oShY2L+gLRXTryKUP6/BYjb8Xti/hlCv0JzPlD+DywvLz2XY
v1SW48t2KZY/K99d9HZz2L/wIUzCKt2YP3sGAkfFjti/Jjkdr5JEnj8bVUrs
YcXYv8mzX0SxiaQ/W/LaNpsy2b814gEegVivP9ss/MsNDdq/I/C7+TrCuT9T
U9hFw6Tbv0mj2c1OWMI/S8I4waRe3b9FTRID9bXHP2tq1hx1EN+/j1/XgDC3
zD8B4gbkilLgv8dOHQ1QEtE/DrNkOvEt4b/tIRV+0prTP9Zcj7i/+uG/dXQr
YY8W1j8xo9imhcPiv9fcEFJmyNg/zA3klWGd479geTznB0zbPyVRvKylaOS/
wys3isMF3j+8uFbE/0TlvyYJvOikSOA/Efm9A8IS5r8dvGtFBYjhP/jVQ7N7
3Oa/APoCqXLi4j8g14tjS7fnv/dRvV7FJeQ/BbGgO4OD6L/bNF8bJYTlPymv
dxTRYOm/cFcQESLc5j/hSW1dFjrqvxmU5FgEHeg/VL0vzsME67+uW6Cn83jp
PwlVtD+H4Ou/Vz1/SMi96j95xQXZsq3sv7FebSI6/Os/fdJ14tV27b/4CkMD
uVXtP8EDqOwOUe6/UtE7Nh2Y7j/ADacesBzvvwo7C8G8ne4/jBT1XT0g77/B
pNpLXKPuP1kbQ53KI++/MHh5YZuu7j/yKN8b5Srvvw4ft4wZxe4/JkQXGRo5
77/JbDLjFfLuP4p6hxOEVe+/QAgpkA5M7z9U52cIWI7vv/hx+BquUe8/Iu61
R+WR77+v28elTVfvP+/0A4dyle+/Hq9mu4xi7z+IAqAFjZzvv/xVpOYKee8/
uh3YAsKq77+3ox89B6bvPyBUSP0rx++/bg3vx6ar7z/sWpY8ucrvvyZ3vlJG
se8/uWHke0bO77+USl1ohbzvP1JvgPpg1e+/cvGakwPT7z+Eirj3lePvvypb
ah6j2O8/UZEGNyPn77/hxDmpQt7vPx2YVHaw6u+/UJjYvoHp7z+2pfD0yvHv
vwgCqEkh7+8/haw+NFj177+/a3fUwPTvP1GzjHPl+O+/dtVGX2D67z8eutqy
cvzvvy4/Fur//+8/6sAo8v//779bnud/
      "]]}, {}}, {{}, {}, {}}},
  AspectRatio->NCache[GoldenRatio^(-1), 0.6180339887498948],
  Axes->True,
  AxesOrigin->{0, 0},
  PlotRange->{{-1, 1}, {-0.9999999742194892, 0.}},
  PlotRangeClipping->True,
  PlotRangePadding->{
    Scaled[0.02], 
    Scaled[0.02]}]], "Output",
 CellChangeTimes->{
  3.5407669176568766`*^9, 3.540767185640204*^9, 3.540767336833852*^9, 
   3.5407675681480827`*^9, 3.5407676308476686`*^9, 3.5407676684138174`*^9, {
   3.540767709669177*^9, 3.5407677376897793`*^9}, 3.540767827660926*^9, 
   3.540767889057437*^9, 3.5407684687775955`*^9, 3.5407689436837587`*^9, 
   3.5407691539507847`*^9, {3.540769471625955*^9, 3.5407694915800962`*^9}, 
   3.540769603451495*^9}],

Cell[BoxData["1.71460674157303361123004801204227345896`1.9956786262173565"], \
"Output",
 CellChangeTimes->{
  3.5407669176568766`*^9, 3.540767185640204*^9, 3.540767336833852*^9, 
   3.5407675681480827`*^9, 3.5407676308476686`*^9, 3.5407676684138174`*^9, {
   3.540767709669177*^9, 3.5407677376897793`*^9}, 3.540767827660926*^9, 
   3.540767889057437*^9, 3.5407684687775955`*^9, 3.5407689436837587`*^9, 
   3.5407691539507847`*^9, {3.540769471625955*^9, 3.5407694915800962`*^9}, 
   3.5407696034544954`*^9}],

Cell[BoxData["0.36837748344370862238511590681459676454`1.8617940549091447"], \
"Output",
 CellChangeTimes->{
  3.5407669176568766`*^9, 3.540767185640204*^9, 3.540767336833852*^9, 
   3.5407675681480827`*^9, 3.5407676308476686`*^9, 3.5407676684138174`*^9, {
   3.540767709669177*^9, 3.5407677376897793`*^9}, 3.540767827660926*^9, 
   3.540767889057437*^9, 3.5407684687775955`*^9, 3.5407689436837587`*^9, 
   3.5407691539507847`*^9, {3.540769471625955*^9, 3.5407694915800962`*^9}, 
   3.5407696034564953`*^9}],

Cell[BoxData["1.00000000000000000000004471356977128787`1.6962355293177886"], \
"Output",
 CellChangeTimes->{
  3.5407669176568766`*^9, 3.540767185640204*^9, 3.540767336833852*^9, 
   3.5407675681480827`*^9, 3.5407676308476686`*^9, 3.5407676684138174`*^9, {
   3.540767709669177*^9, 3.5407677376897793`*^9}, 3.540767827660926*^9, 
   3.540767889057437*^9, 3.5407684687775955`*^9, 3.5407689436837587`*^9, 
   3.5407691539507847`*^9, {3.540769471625955*^9, 3.5407694915800962`*^9}, 
   3.540769603457495*^9}]
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
 CellChangeTimes->{{3.540769004266224*^9, 3.5407690320428123`*^9}}],

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
 CellChangeTimes->{{3.5407690407043076`*^9, 3.5407690466806498`*^9}}],

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
 CellChangeTimes->{{3.5407690548801184`*^9, 3.5407690601234183`*^9}}],

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
 CellChangeTimes->{3.5407690611054745`*^9}]
}, Open  ]],

Cell[CellGroupData[{

Cell["rough calculations.", "Section",
 CellChangeTimes->{{3.540767213305786*^9, 3.5407672171900086`*^9}}],

Cell[CellGroupData[{

Cell["viscosity of mercury", "WolframAlphaLong",
 CellChangeTimes->{{3.540767223006341*^9, 3.540767306468115*^9}, {
  3.5407673853666277`*^9, 3.5407674283430862`*^9}, {3.5407675465348463`*^9, 
  3.5407675481119366`*^9}}],

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
    ImageSizeCache->{631., {214., 219.}},
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
 CellChangeTimes->{3.540767550164054*^9}]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"ChemicalData", "[", "]"}]], "Input",
 CellChangeTimes->{{3.540767344170272*^9, 3.540767347128441*^9}}],

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
          ImageSizeCache->{299., {3., 9.}}],
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
            ImageSizeCache->{54., {1., 9.}}],
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
            ImageSizeCache->{60., {1., 9.}}],
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
            ImageSizeCache->{92., {3., 9.}}],
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
            ImageSizeCache->{78., {1., 9.}}],
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
 CellChangeTimes->{3.5407673481104965`*^9}]
}, Open  ]]
}, Open  ]]
},
WindowSize->{707, 637},
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
Cell[1257, 32, 3190, 85, 372, "Input"],
Cell[4450, 119, 489, 7, 30, "Output"],
Cell[4942, 128, 489, 7, 30, "Output"],
Cell[5434, 137, 2591, 70, 82, "Output"],
Cell[8028, 209, 3375, 62, 239, "Output"],
Cell[11406, 273, 507, 8, 30, "Output"],
Cell[11916, 283, 507, 8, 30, "Output"],
Cell[12426, 293, 505, 8, 30, "Output"]
}, Open  ]],
Cell[12946, 304, 2288, 64, 144, InheritFromParent],
Cell[15237, 370, 2226, 64, 124, InheritFromParent],
Cell[CellGroupData[{
Cell[17488, 438, 2273, 64, 144, InheritFromParent],
Cell[19764, 504, 2118, 61, 60, "Output"]
}, Open  ]],
Cell[CellGroupData[{
Cell[21919, 570, 106, 1, 71, "Section"],
Cell[CellGroupData[{
Cell[22050, 575, 220, 3, 37, "WolframAlphaLong"],
Cell[22273, 580, 30554, 628, 443, "Print"]
}, Open  ]],
Cell[CellGroupData[{
Cell[52864, 1213, 126, 2, 31, "Input"],
Cell[52993, 1217, 13913, 273, 1448, "Output"]
}, Open  ]]
}, Open  ]]
}
]
*)

(* End of internal cache information *)

(* NotebookSignature ov0W0RHtEC2EwBKNPWGY84er *)
