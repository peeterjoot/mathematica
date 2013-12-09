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
NotebookDataLength[     37941,       1036]
NotebookOptionsPosition[     38218,       1028]
NotebookOutlinePosition[     38559,       1043]
CellTagsIndexPosition[     38516,       1040]
WindowFrame->Normal*)

(* Beginning of Notebook Content *)
Notebook[{

Cell[CellGroupData[{
Cell[BoxData[{
 RowBox[{
  RowBox[{"Clear", "[", 
   RowBox[{"p", ",", " ", "n"}], "]"}], "\[IndentingNewLine]", 
  RowBox[{"(*", 
   RowBox[{"p", " ", "=", " ", 
    RowBox[{"RandomVariate", "[", 
     RowBox[{
      RowBox[{"NormalDistribution", "[", "]"}], ",", " ", "n"}], "]"}]}], 
   "*)"}]}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{"n", " ", ":=", "60"}], "\[IndentingNewLine]", 
  RowBox[{"(*", 
   RowBox[{"p", " ", "=", " ", 
    RowBox[{
     RowBox[{"RandomVariate", "[", 
      RowBox[{
       RowBox[{"RayleighDistribution", "[", "1", "]"}], ",", " ", "n"}], 
      "]"}], "\[IndentingNewLine]", "\[IndentingNewLine]", 
     RowBox[{"ListPlot", "[", "p", "]"}], "\[IndentingNewLine]", 
     RowBox[{"Show", "[", "\[IndentingNewLine]", 
      RowBox[{
       RowBox[{"Histogram", "[", 
        RowBox[{"p", ",", "n", ",", "\"\<ProbabilityDensity\>\""}], "]"}], 
       ",", "\[IndentingNewLine]", 
       RowBox[{"Plot", "[", 
        RowBox[{
         RowBox[{"PDF", "[", 
          RowBox[{
           RowBox[{"RayleighDistribution", "[", "1", "]"}], ",", "x"}], "]"}],
          ",", 
         RowBox[{"{", 
          RowBox[{"x", ",", "0", ",", "10"}], "}"}], ",", 
         RowBox[{"PlotStyle", "\[Rule]", "Thick"}]}], "]"}]}], "]"}]}]}], 
   "*)"}], "\[IndentingNewLine]"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{"p", " ", "=", " ", 
   RowBox[{"RandomVariate", "[", 
    RowBox[{
     RowBox[{"UniformDistribution", "[", 
      RowBox[{"{", 
       RowBox[{"0", ",", " ", "10"}], "}"}], "]"}], ",", " ", "n"}], "]"}]}], 
  "\[IndentingNewLine]"}], "\[IndentingNewLine]", 
 RowBox[{"ListPlot", "[", "p", "]"}], "\[IndentingNewLine]", 
 RowBox[{"Show", "[", "\[IndentingNewLine]", 
  RowBox[{
   RowBox[{"Histogram", "[", " ", 
    RowBox[{"p", ",", "n", ",", "\"\<ProbabilityDensity\>\""}], "]"}], ",", 
   "\[IndentingNewLine]", 
   RowBox[{"Plot", "[", " ", 
    RowBox[{
     RowBox[{"PDF", "[", 
      RowBox[{
       RowBox[{"UniformDistribution", "[", 
        RowBox[{"{", 
         RowBox[{"0", ",", " ", "10"}], "}"}], "]"}], ",", "x"}], "]"}], ",", 
     RowBox[{"{", 
      RowBox[{"x", ",", "0", ",", "10"}], "}"}], ",", 
     RowBox[{"PlotStyle", "\[Rule]", "Thick"}]}], "]"}]}], "]"}]}], "Input",
 CellChangeTimes->{{3.5601244389737644`*^9, 3.5601244499383917`*^9}, {
   3.560124496727068*^9, 3.560124544184782*^9}, {3.5601245968867965`*^9, 
   3.5601246169019413`*^9}, {3.56012466145249*^9, 3.560124790351862*^9}, 
   3.5601248282300286`*^9, {3.5601248839532156`*^9, 3.560124885105282*^9}, {
   3.5601255805420585`*^9, 3.560125689009262*^9}, {3.5601257321107273`*^9, 
   3.560125786044812*^9}}],

Cell[BoxData[
 RowBox[{"{", 
  RowBox[{
  "1.904416944398161`", ",", "8.134250755412829`", ",", "8.674942511390448`", 
   ",", "3.8030951066320853`", ",", "7.147569887414779`", ",", 
   "9.18210227457958`", ",", "4.979606605054393`", ",", "9.258116305490415`", 
   ",", "7.9691262141836`", ",", "9.01608414933662`", ",", 
   "6.947074446852255`", ",", "8.357831676766242`", ",", "7.22508251220048`", 
   ",", "1.7733585249819743`", ",", "4.397395157397012`", ",", 
   "1.0940976796076445`", ",", "7.485578293776371`", ",", 
   "7.855603756281326`", ",", "7.599525417227685`", ",", 
   "2.8070904807696806`", ",", "6.562546545854907`", ",", 
   "6.017723418471817`", ",", "0.30470829270576516`", ",", 
   "1.932975793460514`", ",", "4.850246069066589`", ",", "8.79158725034489`", 
   ",", "4.888627472759673`", ",", "0.17580760823626917`", ",", 
   "2.04974484698157`", ",", "9.81090646755365`", ",", "3.1205340251464957`", 
   ",", "8.163255852516038`", ",", "1.636520877856956`", ",", 
   "4.266744849196273`", ",", "3.6393249237825493`", ",", 
   "6.071692475256366`", ",", "0.40211438222319984`", ",", 
   "4.466134744767613`", ",", "0.7070365311360227`", ",", 
   "1.0820594154070324`", ",", "3.553553234806458`", ",", "7.77668571434446`",
    ",", "6.240555250964679`", ",", "8.363123679739822`", ",", 
   "0.27344347910874944`", ",", "9.011458585771045`", ",", 
   "2.3583665792871944`", ",", "6.122641187138743`", ",", 
   "4.073302211306313`", ",", "9.262108600780373`", ",", "7.402948302649776`",
    ",", "8.029662847854205`", ",", "6.9365900206952915`", ",", 
   "9.327413714509373`", ",", "7.39209304421059`", ",", "5.059943142230807`", 
   ",", "2.5201547286033765`", ",", "3.203277947934218`", ",", 
   "1.482498731389125`", ",", "4.761379577340502`"}], "}"}]], "Output",
 CellChangeTimes->{{3.5601244444320765`*^9, 3.560124450668433*^9}, {
   3.5601245126479783`*^9, 3.560124544972827*^9}, 3.5601246181060104`*^9, 
   3.560124694664389*^9, {3.5601247258341722`*^9, 3.5601247911309066`*^9}, 
   3.5601248292050843`*^9, 3.560124885929329*^9, 3.560125612101864*^9, {
   3.5601256741004095`*^9, 3.5601256904993477`*^9}, 3.5601257893630023`*^9}],

Cell[BoxData[
 GraphicsBox[{{}, 
   {Hue[0.67, 0.6, 0.6], PointBox[CompressedData["
1:eJw1kmtIU2Ecxg+ittBypoims22aWYTO3LzkzEedtzltaqhBFzQVCm+BgYmX
o40YlFdyRnjDQqMSlmUlLFwftPqQaIGasJp+WIVWCrJMyi74fw8cDr/z43nf
//vwSgorsosdOI5T/nv/f7ef1ThjxJKtrnorjn5AuTJ3xaQSYxsFUMlvCTtO
SoiFsDbcED8v3U3siRupja1+XX7E3rjw8FyT8rSU2A+fe8q3RMsexGIY1E5v
D+iYl6L7UmZfoXUfcSC4ifoQpYD5IGjLsfTmtS9xMKRn7j1RPGXzHcK84tGO
Whvb/zAEXpmy4bO/6DwhaKnoePHN4E5eBv2ovr20cY18GLj7wxUxayLyR9AG
/6KAUjZPOIqqjL+/FPsTy2G83ruwXOVMrMCrkdvhrthLHIHp2RqvoD3exJEw
V/5R5PHvaL8ocPZm5+qvrO9oyCenPw2WsH6OwprdtqLuZH3HYD4r8tR6M/NK
cAOLvhZ+kvKxKLqY128t5sgfA6dbkYT2BRDHwXSZu7ZgFxADpo8lSYYc6o8H
2j746GShm7RePAZGplr3u1NffDzyj48V5op2UT4BDwo6zOfT6Hx8Asxd0fZY
03vKJ6IlOqws28LyibBOpXm49NvIq6AX3NSLtNQ/r4J5lM8aLnOl9ZOwofvZ
kONL/fNJWPfuE52wsz6TUTsxk788xuZPBmdz9PThZ2j9FKjUuTaLk5R8Cu4E
CjXfLQ6UT4W8Z3yws47Nn4rVAInJLV1IPg3Kx1E+4VdZPg3iyrma3m52P9TQ
LDpshLqx/dUwd2ZXuY+z+5mOyeCoiYEhlk+Hvv7lLN/O8hpMcyGmglhP8hrc
NS4uJh90JJ+BVS5Hpu3fST4DsvlNg/bZDzpfJpSeTV5DLh74C8278/M=
     "]]}, {}},
  AspectRatio->NCache[GoldenRatio^(-1), 0.6180339887498948],
  Axes->True,
  AxesOrigin->{0, 0},
  PlotRange->{{0., 60.}, {0., 9.81090646755365}},
  PlotRangeClipping->True,
  PlotRangePadding->{
    Scaled[0.02], 
    Scaled[0.02]}]], "Output",
 CellChangeTimes->{{3.5601244444320765`*^9, 3.560124450668433*^9}, {
   3.5601245126479783`*^9, 3.560124544972827*^9}, 3.5601246181060104`*^9, 
   3.560124694664389*^9, {3.5601247258341722`*^9, 3.5601247911309066`*^9}, 
   3.5601248292050843`*^9, 3.560124885929329*^9, 3.560125612101864*^9, {
   3.5601256741004095`*^9, 3.5601256904993477`*^9}, 3.5601257893680024`*^9}],

Cell[BoxData[
 GraphicsBox[{
   {RGBColor[0.798413061722744, 0.824719615472648, 0.968322270542458], 
    EdgeForm[Opacity[0.7]], {}, 
    {RGBColor[0.798413061722744, 0.824719615472648, 0.968322270542458], 
     EdgeForm[Opacity[0.7]], 
     TagBox[
      TooltipBox[
       TagBox[
        DynamicBox[{
          FEPrivate`If[
           CurrentValue["MouseOver"], 
           EdgeForm[{
             GrayLevel[0.5], 
             AbsoluteThickness[1.5], 
             Opacity[0.66]}], {}, {}], 
          
          RectangleBox[{0., 0.}, {0.2, 0.08333333333333333}, "RoundingRadius" -> 
           0]},
         ImageSizeCache->{{20.5, 28.12008163265306}, {30.92564309016811, 
          94.43368479858943}}],
        StatusArea[#, 0.08333333333333333]& ,
        TagBoxNote->"0.08333333333333333"],
       StyleBox["0.08333333333333333`", {
         GrayLevel[0]}, StripOnInput -> False]],
      Annotation[#, 
       Style[0.08333333333333333, {
         GrayLevel[0]}], "Tooltip"]& ], 
     TagBox[
      TooltipBox[
       TagBox[
        DynamicBox[{
          FEPrivate`If[
           CurrentValue["MouseOver"], 
           EdgeForm[{
             GrayLevel[0.5], 
             AbsoluteThickness[1.5], 
             Opacity[0.66]}], {}, {}], 
          
          RectangleBox[{0.2, 0.}, {0.4, 0.16666666666666666`}, 
           "RoundingRadius" -> 0]},
         ImageSizeCache->{{27.12008163265306, 
          34.74016326530612}, {-31.582398618253208`, 94.43368479858943}}],
        StatusArea[#, 0.16666666666666666`]& ,
        TagBoxNote->"0.16666666666666666"],
       StyleBox["0.16666666666666666`", {
         GrayLevel[0]}, StripOnInput -> False]],
      Annotation[#, 
       Style[0.16666666666666666`, {
         GrayLevel[0]}], "Tooltip"]& ], 
     TagBox[
      TooltipBox[
       TagBox[
        DynamicBox[{
          FEPrivate`If[
           CurrentValue["MouseOver"], 
           EdgeForm[{
             GrayLevel[0.5], 
             AbsoluteThickness[1.5], 
             Opacity[0.66]}], {}, {}], 
          
          RectangleBox[{0.4, 0.}, {0.6, 0.08333333333333333}, 
           "RoundingRadius" -> 0]},
         ImageSizeCache->{{33.74016326530612, 41.36024489795918}, {
          30.92564309016811, 94.43368479858943}}],
        StatusArea[#, 0.08333333333333333]& ,
        TagBoxNote->"0.08333333333333333"],
       StyleBox["0.08333333333333333`", {
         GrayLevel[0]}, StripOnInput -> False]],
      Annotation[#, 
       Style[0.08333333333333333, {
         GrayLevel[0]}], "Tooltip"]& ], 
     TagBox[
      TooltipBox[
       TagBox[
        DynamicBox[{
          FEPrivate`If[
           CurrentValue["MouseOver"], 
           EdgeForm[{
             GrayLevel[0.5], 
             AbsoluteThickness[1.5], 
             Opacity[0.66]}], {}, {}], 
          
          RectangleBox[{0.6, 0.}, {0.8, 0.08333333333333333}, 
           "RoundingRadius" -> 0]},
         ImageSizeCache->{{40.36024489795918, 47.980326530612246`}, {
          30.92564309016811, 94.43368479858943}}],
        StatusArea[#, 0.08333333333333333]& ,
        TagBoxNote->"0.08333333333333333"],
       StyleBox["0.08333333333333333`", {
         GrayLevel[0]}, StripOnInput -> False]],
      Annotation[#, 
       Style[0.08333333333333333, {
         GrayLevel[0]}], "Tooltip"]& ], {}, 
     TagBox[
      TooltipBox[
       TagBox[
        DynamicBox[{
          FEPrivate`If[
           CurrentValue["MouseOver"], 
           EdgeForm[{
             GrayLevel[0.5], 
             AbsoluteThickness[1.5], 
             Opacity[0.66]}], {}, {}], 
          
          RectangleBox[{1., 0.}, {1.2, 0.16666666666666666`}, 
           "RoundingRadius" -> 0]},
         ImageSizeCache->{{53.6004081632653, 
          61.22048979591836}, {-31.582398618253208`, 94.43368479858943}}],
        StatusArea[#, 0.16666666666666666`]& ,
        TagBoxNote->"0.16666666666666666"],
       StyleBox["0.16666666666666666`", {
         GrayLevel[0]}, StripOnInput -> False]],
      Annotation[#, 
       Style[0.16666666666666666`, {
         GrayLevel[0]}], "Tooltip"]& ], {}, 
     TagBox[
      TooltipBox[
       TagBox[
        DynamicBox[{
          FEPrivate`If[
           CurrentValue["MouseOver"], 
           EdgeForm[{
             GrayLevel[0.5], 
             AbsoluteThickness[1.5], 
             Opacity[0.66]}], {}, {}], 
          
          RectangleBox[{1.4, 0.}, {1.6, 0.08333333333333333}, 
           "RoundingRadius" -> 0]},
         ImageSizeCache->{{66.84057142857142, 74.46065306122449}, {
          30.92564309016811, 94.43368479858943}}],
        StatusArea[#, 0.08333333333333333]& ,
        TagBoxNote->"0.08333333333333333"],
       StyleBox["0.08333333333333333`", {
         GrayLevel[0]}, StripOnInput -> False]],
      Annotation[#, 
       Style[0.08333333333333333, {
         GrayLevel[0]}], "Tooltip"]& ], 
     TagBox[
      TooltipBox[
       TagBox[
        DynamicBox[{
          FEPrivate`If[
           CurrentValue["MouseOver"], 
           EdgeForm[{
             GrayLevel[0.5], 
             AbsoluteThickness[1.5], 
             Opacity[0.66]}], {}, {}], 
          
          RectangleBox[{1.6, 0.}, {1.8, 0.16666666666666666`}, 
           "RoundingRadius" -> 0]},
         ImageSizeCache->{{73.46065306122449, 
          81.08073469387753}, {-31.582398618253208`, 94.43368479858943}}],
        StatusArea[#, 0.16666666666666666`]& ,
        TagBoxNote->"0.16666666666666666"],
       StyleBox["0.16666666666666666`", {
         GrayLevel[0]}, StripOnInput -> False]],
      Annotation[#, 
       Style[0.16666666666666666`, {
         GrayLevel[0]}], "Tooltip"]& ], 
     TagBox[
      TooltipBox[
       TagBox[
        DynamicBox[{
          FEPrivate`If[
           CurrentValue["MouseOver"], 
           EdgeForm[{
             GrayLevel[0.5], 
             AbsoluteThickness[1.5], 
             Opacity[0.66]}], {}, {}], 
          
          RectangleBox[{1.8, 0.}, {2., 0.16666666666666666`}, 
           "RoundingRadius" -> 0]},
         ImageSizeCache->{{80.08073469387753, 
          87.7008163265306}, {-31.582398618253208`, 94.43368479858943}}],
        StatusArea[#, 0.16666666666666666`]& ,
        TagBoxNote->"0.16666666666666666"],
       StyleBox["0.16666666666666666`", {
         GrayLevel[0]}, StripOnInput -> False]],
      Annotation[#, 
       Style[0.16666666666666666`, {
         GrayLevel[0]}], "Tooltip"]& ], 
     TagBox[
      TooltipBox[
       TagBox[
        DynamicBox[{
          FEPrivate`If[
           CurrentValue["MouseOver"], 
           EdgeForm[{
             GrayLevel[0.5], 
             AbsoluteThickness[1.5], 
             Opacity[0.66]}], {}, {}], 
          
          RectangleBox[{2., 0.}, {2.2, 0.08333333333333333}, "RoundingRadius" -> 
           0]},
         ImageSizeCache->{{86.7008163265306, 94.32089795918367}, {
          30.92564309016811, 94.43368479858943}}],
        StatusArea[#, 0.08333333333333333]& ,
        TagBoxNote->"0.08333333333333333"],
       StyleBox["0.08333333333333333`", {
         GrayLevel[0]}, StripOnInput -> False]],
      Annotation[#, 
       Style[0.08333333333333333, {
         GrayLevel[0]}], "Tooltip"]& ], 
     TagBox[
      TooltipBox[
       TagBox[
        DynamicBox[{
          FEPrivate`If[
           CurrentValue["MouseOver"], 
           EdgeForm[{
             GrayLevel[0.5], 
             AbsoluteThickness[1.5], 
             Opacity[0.66]}], {}, {}], 
          
          RectangleBox[{2.2, 0.}, {2.4, 0.08333333333333333}, 
           "RoundingRadius" -> 0]},
         ImageSizeCache->{{93.32089795918367, 100.94097959183672`}, {
          30.92564309016811, 94.43368479858943}}],
        StatusArea[#, 0.08333333333333333]& ,
        TagBoxNote->"0.08333333333333333"],
       StyleBox["0.08333333333333333`", {
         GrayLevel[0]}, StripOnInput -> False]],
      Annotation[#, 
       Style[0.08333333333333333, {
         GrayLevel[0]}], "Tooltip"]& ], 
     TagBox[
      TooltipBox[
       TagBox[
        DynamicBox[{
          FEPrivate`If[
           CurrentValue["MouseOver"], 
           EdgeForm[{
             GrayLevel[0.5], 
             AbsoluteThickness[1.5], 
             Opacity[0.66]}], {}, {}], 
          
          RectangleBox[{2.4, 0.}, {2.6, 0.08333333333333333}, 
           "RoundingRadius" -> 0]},
         ImageSizeCache->{{99.94097959183672, 107.56106122448978`}, {
          30.92564309016811, 94.43368479858943}}],
        StatusArea[#, 0.08333333333333333]& ,
        TagBoxNote->"0.08333333333333333"],
       StyleBox["0.08333333333333333`", {
         GrayLevel[0]}, StripOnInput -> False]],
      Annotation[#, 
       Style[0.08333333333333333, {
         GrayLevel[0]}], "Tooltip"]& ], {}, 
     TagBox[
      TooltipBox[
       TagBox[
        DynamicBox[{
          FEPrivate`If[
           CurrentValue["MouseOver"], 
           EdgeForm[{
             GrayLevel[0.5], 
             AbsoluteThickness[1.5], 
             Opacity[0.66]}], {}, {}], 
          
          RectangleBox[{2.8, 0.}, {3., 0.08333333333333333}, "RoundingRadius" -> 
           0]},
         ImageSizeCache->{{113.18114285714283`, 120.8012244897959}, {
          30.92564309016811, 94.43368479858943}}],
        StatusArea[#, 0.08333333333333333]& ,
        TagBoxNote->"0.08333333333333333"],
       StyleBox["0.08333333333333333`", {
         GrayLevel[0]}, StripOnInput -> False]],
      Annotation[#, 
       Style[0.08333333333333333, {
         GrayLevel[0]}], "Tooltip"]& ], 
     TagBox[
      TooltipBox[
       TagBox[
        DynamicBox[{
          FEPrivate`If[
           CurrentValue["MouseOver"], 
           EdgeForm[{
             GrayLevel[0.5], 
             AbsoluteThickness[1.5], 
             Opacity[0.66]}], {}, {}], 
          
          RectangleBox[{3., 0.}, {3.2, 0.08333333333333333}, "RoundingRadius" -> 
           0]},
         ImageSizeCache->{{119.8012244897959, 127.42130612244897`}, {
          30.92564309016811, 94.43368479858943}}],
        StatusArea[#, 0.08333333333333333]& ,
        TagBoxNote->"0.08333333333333333"],
       StyleBox["0.08333333333333333`", {
         GrayLevel[0]}, StripOnInput -> False]],
      Annotation[#, 
       Style[0.08333333333333333, {
         GrayLevel[0]}], "Tooltip"]& ], 
     TagBox[
      TooltipBox[
       TagBox[
        DynamicBox[{
          FEPrivate`If[
           CurrentValue["MouseOver"], 
           EdgeForm[{
             GrayLevel[0.5], 
             AbsoluteThickness[1.5], 
             Opacity[0.66]}], {}, {}], 
          
          RectangleBox[{3.2, 0.}, {3.4, 0.08333333333333333}, 
           "RoundingRadius" -> 0]},
         ImageSizeCache->{{126.42130612244897`, 134.04138775510202`}, {
          30.92564309016811, 94.43368479858943}}],
        StatusArea[#, 0.08333333333333333]& ,
        TagBoxNote->"0.08333333333333333"],
       StyleBox["0.08333333333333333`", {
         GrayLevel[0]}, StripOnInput -> False]],
      Annotation[#, 
       Style[0.08333333333333333, {
         GrayLevel[0]}], "Tooltip"]& ], 
     TagBox[
      TooltipBox[
       TagBox[
        DynamicBox[{
          FEPrivate`If[
           CurrentValue["MouseOver"], 
           EdgeForm[{
             GrayLevel[0.5], 
             AbsoluteThickness[1.5], 
             Opacity[0.66]}], {}, {}], 
          
          RectangleBox[{3.4, 0.}, {3.6, 0.08333333333333333}, 
           "RoundingRadius" -> 0]},
         ImageSizeCache->{{133.04138775510202`, 140.66146938775506`}, {
          30.92564309016811, 94.43368479858943}}],
        StatusArea[#, 0.08333333333333333]& ,
        TagBoxNote->"0.08333333333333333"],
       StyleBox["0.08333333333333333`", {
         GrayLevel[0]}, StripOnInput -> False]],
      Annotation[#, 
       Style[0.08333333333333333, {
         GrayLevel[0]}], "Tooltip"]& ], 
     TagBox[
      TooltipBox[
       TagBox[
        DynamicBox[{
          FEPrivate`If[
           CurrentValue["MouseOver"], 
           EdgeForm[{
             GrayLevel[0.5], 
             AbsoluteThickness[1.5], 
             Opacity[0.66]}], {}, {}], 
          
          RectangleBox[{3.6, 0.}, {3.8, 0.08333333333333333}, 
           "RoundingRadius" -> 0]},
         ImageSizeCache->{{139.66146938775506`, 147.28155102040813`}, {
          30.92564309016811, 94.43368479858943}}],
        StatusArea[#, 0.08333333333333333]& ,
        TagBoxNote->"0.08333333333333333"],
       StyleBox["0.08333333333333333`", {
         GrayLevel[0]}, StripOnInput -> False]],
      Annotation[#, 
       Style[0.08333333333333333, {
         GrayLevel[0]}], "Tooltip"]& ], 
     TagBox[
      TooltipBox[
       TagBox[
        DynamicBox[{
          FEPrivate`If[
           CurrentValue["MouseOver"], 
           EdgeForm[{
             GrayLevel[0.5], 
             AbsoluteThickness[1.5], 
             Opacity[0.66]}], {}, {}], 
          
          RectangleBox[{3.8, 0.}, {4., 0.08333333333333333}, "RoundingRadius" -> 
           0]},
         ImageSizeCache->{{146.28155102040813`, 153.9016326530612}, {
          30.92564309016811, 94.43368479858943}}],
        StatusArea[#, 0.08333333333333333]& ,
        TagBoxNote->"0.08333333333333333"],
       StyleBox["0.08333333333333333`", {
         GrayLevel[0]}, StripOnInput -> False]],
      Annotation[#, 
       Style[0.08333333333333333, {
         GrayLevel[0]}], "Tooltip"]& ], 
     TagBox[
      TooltipBox[
       TagBox[
        DynamicBox[{
          FEPrivate`If[
           CurrentValue["MouseOver"], 
           EdgeForm[{
             GrayLevel[0.5], 
             AbsoluteThickness[1.5], 
             Opacity[0.66]}], {}, {}], 
          
          RectangleBox[{4., 0.}, {4.2, 0.08333333333333333}, "RoundingRadius" -> 
           0]},
         ImageSizeCache->{{152.9016326530612, 160.52171428571427`}, {
          30.92564309016811, 94.43368479858943}}],
        StatusArea[#, 0.08333333333333333]& ,
        TagBoxNote->"0.08333333333333333"],
       StyleBox["0.08333333333333333`", {
         GrayLevel[0]}, StripOnInput -> False]],
      Annotation[#, 
       Style[0.08333333333333333, {
         GrayLevel[0]}], "Tooltip"]& ], 
     TagBox[
      TooltipBox[
       TagBox[
        DynamicBox[{
          FEPrivate`If[
           CurrentValue["MouseOver"], 
           EdgeForm[{
             GrayLevel[0.5], 
             AbsoluteThickness[1.5], 
             Opacity[0.66]}], {}, {}], 
          
          RectangleBox[{4.2, 0.}, {4.4, 0.16666666666666666`}, 
           "RoundingRadius" -> 0]},
         ImageSizeCache->{{159.52171428571427`, 
          167.14179591836734`}, {-31.582398618253208`, 94.43368479858943}}],
        StatusArea[#, 0.16666666666666666`]& ,
        TagBoxNote->"0.16666666666666666"],
       StyleBox["0.16666666666666666`", {
         GrayLevel[0]}, StripOnInput -> False]],
      Annotation[#, 
       Style[0.16666666666666666`, {
         GrayLevel[0]}], "Tooltip"]& ], 
     TagBox[
      TooltipBox[
       TagBox[
        DynamicBox[{
          FEPrivate`If[
           CurrentValue["MouseOver"], 
           EdgeForm[{
             GrayLevel[0.5], 
             AbsoluteThickness[1.5], 
             Opacity[0.66]}], {}, {}], 
          
          RectangleBox[{4.4, 0.}, {4.6, 0.08333333333333333}, 
           "RoundingRadius" -> 0]},
         ImageSizeCache->{{166.14179591836734`, 173.76187755102038`}, {
          30.92564309016811, 94.43368479858943}}],
        StatusArea[#, 0.08333333333333333]& ,
        TagBoxNote->"0.08333333333333333"],
       StyleBox["0.08333333333333333`", {
         GrayLevel[0]}, StripOnInput -> False]],
      Annotation[#, 
       Style[0.08333333333333333, {
         GrayLevel[0]}], "Tooltip"]& ], 
     TagBox[
      TooltipBox[
       TagBox[
        DynamicBox[{
          FEPrivate`If[
           CurrentValue["MouseOver"], 
           EdgeForm[{
             GrayLevel[0.5], 
             AbsoluteThickness[1.5], 
             Opacity[0.66]}], {}, {}], 
          
          RectangleBox[{4.6, 0.}, {4.8, 0.08333333333333333}, 
           "RoundingRadius" -> 0]},
         ImageSizeCache->{{172.76187755102038`, 180.38195918367344`}, {
          30.92564309016811, 94.43368479858943}}],
        StatusArea[#, 0.08333333333333333]& ,
        TagBoxNote->"0.08333333333333333"],
       StyleBox["0.08333333333333333`", {
         GrayLevel[0]}, StripOnInput -> False]],
      Annotation[#, 
       Style[0.08333333333333333, {
         GrayLevel[0]}], "Tooltip"]& ], 
     TagBox[
      TooltipBox[
       TagBox[
        DynamicBox[{
          FEPrivate`If[
           CurrentValue["MouseOver"], 
           EdgeForm[{
             GrayLevel[0.5], 
             AbsoluteThickness[1.5], 
             Opacity[0.66]}], {}, {}], 
          RectangleBox[{4.8, 0.}, {5., 0.25}, "RoundingRadius" -> 0]},
         ImageSizeCache->{{179.38195918367344`, 
          187.00204081632648`}, {-94.09044032667454, 94.43368479858943}}],
        StatusArea[#, 0.25]& ,
        TagBoxNote->"0.25"],
       StyleBox["0.25`", {
         GrayLevel[0]}, StripOnInput -> False]],
      Annotation[#, 
       Style[0.25, {
         GrayLevel[0]}], "Tooltip"]& ], 
     TagBox[
      TooltipBox[
       TagBox[
        DynamicBox[{
          FEPrivate`If[
           CurrentValue["MouseOver"], 
           EdgeForm[{
             GrayLevel[0.5], 
             AbsoluteThickness[1.5], 
             Opacity[0.66]}], {}, {}], 
          
          RectangleBox[{5., 0.}, {5.2, 0.08333333333333333}, "RoundingRadius" -> 
           0]},
         ImageSizeCache->{{186.00204081632648`, 193.62212244897955`}, {
          30.92564309016811, 94.43368479858943}}],
        StatusArea[#, 0.08333333333333333]& ,
        TagBoxNote->"0.08333333333333333"],
       StyleBox["0.08333333333333333`", {
         GrayLevel[0]}, StripOnInput -> False]],
      Annotation[#, 
       Style[0.08333333333333333, {
         GrayLevel[0]}], "Tooltip"]& ], {}, {}, {}, {}, 
     TagBox[
      TooltipBox[
       TagBox[
        DynamicBox[{
          FEPrivate`If[
           CurrentValue["MouseOver"], 
           EdgeForm[{
             GrayLevel[0.5], 
             AbsoluteThickness[1.5], 
             Opacity[0.66]}], {}, {}], 
          RectangleBox[{6., 0.}, {6.2, 0.25}, "RoundingRadius" -> 0]},
         ImageSizeCache->{{219.1024489795918, 
          226.72253061224487`}, {-94.09044032667454, 94.43368479858943}}],
        StatusArea[#, 0.25]& ,
        TagBoxNote->"0.25"],
       StyleBox["0.25`", {
         GrayLevel[0]}, StripOnInput -> False]],
      Annotation[#, 
       Style[0.25, {
         GrayLevel[0]}], "Tooltip"]& ], 
     TagBox[
      TooltipBox[
       TagBox[
        DynamicBox[{
          FEPrivate`If[
           CurrentValue["MouseOver"], 
           EdgeForm[{
             GrayLevel[0.5], 
             AbsoluteThickness[1.5], 
             Opacity[0.66]}], {}, {}], 
          
          RectangleBox[{6.2, 0.}, {6.4, 0.08333333333333333}, 
           "RoundingRadius" -> 0]},
         ImageSizeCache->{{225.72253061224487`, 233.34261224489794`}, {
          30.92564309016811, 94.43368479858943}}],
        StatusArea[#, 0.08333333333333333]& ,
        TagBoxNote->"0.08333333333333333"],
       StyleBox["0.08333333333333333`", {
         GrayLevel[0]}, StripOnInput -> False]],
      Annotation[#, 
       Style[0.08333333333333333, {
         GrayLevel[0]}], "Tooltip"]& ], 
     TagBox[
      TooltipBox[
       TagBox[
        DynamicBox[{
          FEPrivate`If[
           CurrentValue["MouseOver"], 
           EdgeForm[{
             GrayLevel[0.5], 
             AbsoluteThickness[1.5], 
             Opacity[0.66]}], {}, {}], 
          
          RectangleBox[{6.4, 0.}, {6.6, 0.08333333333333333}, 
           "RoundingRadius" -> 0]},
         ImageSizeCache->{{232.34261224489794`, 239.96269387755098`}, {
          30.92564309016811, 94.43368479858943}}],
        StatusArea[#, 0.08333333333333333]& ,
        TagBoxNote->"0.08333333333333333"],
       StyleBox["0.08333333333333333`", {
         GrayLevel[0]}, StripOnInput -> False]],
      Annotation[#, 
       Style[0.08333333333333333, {
         GrayLevel[0]}], "Tooltip"]& ], {}, 
     TagBox[
      TooltipBox[
       TagBox[
        DynamicBox[{
          FEPrivate`If[
           CurrentValue["MouseOver"], 
           EdgeForm[{
             GrayLevel[0.5], 
             AbsoluteThickness[1.5], 
             Opacity[0.66]}], {}, {}], 
          
          RectangleBox[{6.8, 0.}, {7., 0.16666666666666666`}, 
           "RoundingRadius" -> 0]},
         ImageSizeCache->{{245.58277551020404`, 
          253.2028571428571}, {-31.582398618253208`, 94.43368479858943}}],
        StatusArea[#, 0.16666666666666666`]& ,
        TagBoxNote->"0.16666666666666666"],
       StyleBox["0.16666666666666666`", {
         GrayLevel[0]}, StripOnInput -> False]],
      Annotation[#, 
       Style[0.16666666666666666`, {
         GrayLevel[0]}], "Tooltip"]& ], 
     TagBox[
      TooltipBox[
       TagBox[
        DynamicBox[{
          FEPrivate`If[
           CurrentValue["MouseOver"], 
           EdgeForm[{
             GrayLevel[0.5], 
             AbsoluteThickness[1.5], 
             Opacity[0.66]}], {}, {}], 
          
          RectangleBox[{7., 0.}, {7.2, 0.08333333333333333}, "RoundingRadius" -> 
           0]},
         ImageSizeCache->{{252.2028571428571, 259.8229387755101}, {
          30.92564309016811, 94.43368479858943}}],
        StatusArea[#, 0.08333333333333333]& ,
        TagBoxNote->"0.08333333333333333"],
       StyleBox["0.08333333333333333`", {
         GrayLevel[0]}, StripOnInput -> False]],
      Annotation[#, 
       Style[0.08333333333333333, {
         GrayLevel[0]}], "Tooltip"]& ], 
     TagBox[
      TooltipBox[
       TagBox[
        DynamicBox[{
          FEPrivate`If[
           CurrentValue["MouseOver"], 
           EdgeForm[{
             GrayLevel[0.5], 
             AbsoluteThickness[1.5], 
             Opacity[0.66]}], {}, {}], 
          
          RectangleBox[{7.2, 0.}, {7.4, 0.16666666666666666`}, 
           "RoundingRadius" -> 0]},
         ImageSizeCache->{{258.8229387755101, 
          266.4430204081632}, {-31.582398618253208`, 94.43368479858943}}],
        StatusArea[#, 0.16666666666666666`]& ,
        TagBoxNote->"0.16666666666666666"],
       StyleBox["0.16666666666666666`", {
         GrayLevel[0]}, StripOnInput -> False]],
      Annotation[#, 
       Style[0.16666666666666666`, {
         GrayLevel[0]}], "Tooltip"]& ], 
     TagBox[
      TooltipBox[
       TagBox[
        DynamicBox[{
          FEPrivate`If[
           CurrentValue["MouseOver"], 
           EdgeForm[{
             GrayLevel[0.5], 
             AbsoluteThickness[1.5], 
             Opacity[0.66]}], {}, {}], 
          RectangleBox[{7.4, 0.}, {7.6, 0.25}, "RoundingRadius" -> 0]},
         ImageSizeCache->{{265.4430204081632, 
          273.06310204081626`}, {-94.09044032667454, 94.43368479858943}}],
        StatusArea[#, 0.25]& ,
        TagBoxNote->"0.25"],
       StyleBox["0.25`", {
         GrayLevel[0]}, StripOnInput -> False]],
      Annotation[#, 
       Style[0.25, {
         GrayLevel[0]}], "Tooltip"]& ], 
     TagBox[
      TooltipBox[
       TagBox[
        DynamicBox[{
          FEPrivate`If[
           CurrentValue["MouseOver"], 
           EdgeForm[{
             GrayLevel[0.5], 
             AbsoluteThickness[1.5], 
             Opacity[0.66]}], {}, {}], 
          
          RectangleBox[{7.6, 0.}, {7.8, 0.08333333333333333}, 
           "RoundingRadius" -> 0]},
         ImageSizeCache->{{272.06310204081626`, 279.68318367346933`}, {
          30.92564309016811, 94.43368479858943}}],
        StatusArea[#, 0.08333333333333333]& ,
        TagBoxNote->"0.08333333333333333"],
       StyleBox["0.08333333333333333`", {
         GrayLevel[0]}, StripOnInput -> False]],
      Annotation[#, 
       Style[0.08333333333333333, {
         GrayLevel[0]}], "Tooltip"]& ], 
     TagBox[
      TooltipBox[
       TagBox[
        DynamicBox[{
          FEPrivate`If[
           CurrentValue["MouseOver"], 
           EdgeForm[{
             GrayLevel[0.5], 
             AbsoluteThickness[1.5], 
             Opacity[0.66]}], {}, {}], 
          
          RectangleBox[{7.8, 0.}, {8., 0.16666666666666666`}, 
           "RoundingRadius" -> 0]},
         ImageSizeCache->{{278.68318367346933`, 
          286.3032653061224}, {-31.582398618253208`, 94.43368479858943}}],
        StatusArea[#, 0.16666666666666666`]& ,
        TagBoxNote->"0.16666666666666666"],
       StyleBox["0.16666666666666666`", {
         GrayLevel[0]}, StripOnInput -> False]],
      Annotation[#, 
       Style[0.16666666666666666`, {
         GrayLevel[0]}], "Tooltip"]& ], 
     TagBox[
      TooltipBox[
       TagBox[
        DynamicBox[{
          FEPrivate`If[
           CurrentValue["MouseOver"], 
           EdgeForm[{
             GrayLevel[0.5], 
             AbsoluteThickness[1.5], 
             Opacity[0.66]}], {}, {}], 
          RectangleBox[{8., 0.}, {8.2, 0.25}, "RoundingRadius" -> 0]},
         ImageSizeCache->{{285.3032653061224, 
          292.9233469387754}, {-94.09044032667454, 94.43368479858943}}],
        StatusArea[#, 0.25]& ,
        TagBoxNote->"0.25"],
       StyleBox["0.25`", {
         GrayLevel[0]}, StripOnInput -> False]],
      Annotation[#, 
       Style[0.25, {
         GrayLevel[0]}], "Tooltip"]& ], 
     TagBox[
      TooltipBox[
       TagBox[
        DynamicBox[{
          FEPrivate`If[
           CurrentValue["MouseOver"], 
           EdgeForm[{
             GrayLevel[0.5], 
             AbsoluteThickness[1.5], 
             Opacity[0.66]}], {}, {}], 
          
          RectangleBox[{8.2, 0.}, {8.4, 0.16666666666666666`}, 
           "RoundingRadius" -> 0]},
         ImageSizeCache->{{291.9233469387754, 
          299.54342857142854`}, {-31.582398618253208`, 94.43368479858943}}],
        StatusArea[#, 0.16666666666666666`]& ,
        TagBoxNote->"0.16666666666666666"],
       StyleBox["0.16666666666666666`", {
         GrayLevel[0]}, StripOnInput -> False]],
      Annotation[#, 
       Style[0.16666666666666666`, {
         GrayLevel[0]}], "Tooltip"]& ], {}, 
     TagBox[
      TooltipBox[
       TagBox[
        DynamicBox[{
          FEPrivate`If[
           CurrentValue["MouseOver"], 
           EdgeForm[{
             GrayLevel[0.5], 
             AbsoluteThickness[1.5], 
             Opacity[0.66]}], {}, {}], 
          
          RectangleBox[{8.6, 0.}, {8.8, 0.16666666666666666`}, 
           "RoundingRadius" -> 0]},
         ImageSizeCache->{{305.16351020408155`, 
          312.7835918367347}, {-31.582398618253208`, 94.43368479858943}}],
        StatusArea[#, 0.16666666666666666`]& ,
        TagBoxNote->"0.16666666666666666"],
       StyleBox["0.16666666666666666`", {
         GrayLevel[0]}, StripOnInput -> False]],
      Annotation[#, 
       Style[0.16666666666666666`, {
         GrayLevel[0]}], "Tooltip"]& ], {}, 
     TagBox[
      TooltipBox[
       TagBox[
        DynamicBox[{
          FEPrivate`If[
           CurrentValue["MouseOver"], 
           EdgeForm[{
             GrayLevel[0.5], 
             AbsoluteThickness[1.5], 
             Opacity[0.66]}], {}, {}], 
          RectangleBox[{9., 0.}, {9.2, 0.25}, "RoundingRadius" -> 0]},
         ImageSizeCache->{{318.4036734693877, 
          326.02375510204075`}, {-94.09044032667454, 94.43368479858943}}],
        StatusArea[#, 0.25]& ,
        TagBoxNote->"0.25"],
       StyleBox["0.25`", {
         GrayLevel[0]}, StripOnInput -> False]],
      Annotation[#, 
       Style[0.25, {
         GrayLevel[0]}], "Tooltip"]& ], 
     TagBox[
      TooltipBox[
       TagBox[
        DynamicBox[{
          FEPrivate`If[
           CurrentValue["MouseOver"], 
           EdgeForm[{
             GrayLevel[0.5], 
             AbsoluteThickness[1.5], 
             Opacity[0.66]}], {}, {}], 
          RectangleBox[{9.2, 0.}, {9.4, 0.25}, "RoundingRadius" -> 0]},
         ImageSizeCache->{{325.02375510204075`, 
          332.6438367346938}, {-94.09044032667454, 94.43368479858943}}],
        StatusArea[#, 0.25]& ,
        TagBoxNote->"0.25"],
       StyleBox["0.25`", {
         GrayLevel[0]}, StripOnInput -> False]],
      Annotation[#, 
       Style[0.25, {
         GrayLevel[0]}], "Tooltip"]& ], {}, {}, 
     TagBox[
      TooltipBox[
       TagBox[
        DynamicBox[{
          FEPrivate`If[
           CurrentValue["MouseOver"], 
           EdgeForm[{
             GrayLevel[0.5], 
             AbsoluteThickness[1.5], 
             Opacity[0.66]}], {}, {}], 
          
          RectangleBox[{9.8, 0.}, {10., 0.08333333333333333}, 
           "RoundingRadius" -> 0]},
         ImageSizeCache->{{344.88399999999996`, 352.50408163265297`}, {
          30.92564309016811, 94.43368479858943}}],
        StatusArea[#, 0.08333333333333333]& ,
        TagBoxNote->"0.08333333333333333"],
       StyleBox["0.08333333333333333`", {
         GrayLevel[0]}, StripOnInput -> False]],
      Annotation[#, 
       Style[0.08333333333333333, {
         GrayLevel[0]}], "Tooltip"]& ]}, {}, {}}, {{}, {}, 
    {Hue[0.67, 0.6, 0.6], Thickness[Large], LineBox[CompressedData["
1:eJxTTMoPSmViYGAwAWIQPbcuic0wpdtu1kwQ2GnPfvuR+lv5nfYw/sJT8wtf
y5+E89et77ydo3cLzk+3vzjzTdFjOD/vqebjLetewvlcii3q9y0+wPl9Aqe1
FiZ8hvOTbofsZz7zDc4vPNqSlK/+C87fWMATLOH5F+Ge6uxXBuEMDjB+0/w/
gV/eMML5DJcfOOypYobz1UrSKkK0WOH8J1+nh3HvZYPzvZ5m1U4q5IDz/Z5M
0JaT44LzXx1OajixlhvO1xO8Jusczwvnc9l/TbzzmQ/Od38b9V0pVADOv3Eo
hTFKRxDO39pxJE7hK4Kfxlr64Nw5ITg/uah6K88sYThfP137nE+iCJx/XkiH
u9RSFM7fva5ptg6zGJxfzagVcOYugs91p8ojb4s4nP90meKU+TUScP4UDUmW
naGScP6EWWnHExWk4PyoKbHneJ4j+D9clv6cv08azn/81KniULsMnL/I1lD6
bKIsnL+2tVQwXVcOzm8PTfZm/orgm95ZuLL9rDycP0Nz9tqz3gpwfv2B3hne
OxF8X+nQpadUFOF8x7zj0YKdCP58mSSVM18RfJXDy6f5RSsh/Kd7SOvSPgQ/
7TPLxZNaynB+0sZPCp39CP6ESzy9R44j+Ps+q/38/x/BBwCAVqLp
      "]]}}},
  AspectRatio->NCache[GoldenRatio^(-1), 0.6180339887498948],
  Axes->{True, True},
  AxesOrigin->{0., 0},
  FrameTicks->{{Automatic, Automatic}, {Automatic, Automatic}},
  GridLines->{None, None},
  PlotRange->{{0., 10.}, {All, All}},
  PlotRangePadding->{{
     Scaled[0.02], 
     Scaled[0.02]}, {
     Scaled[0.02], 
     Scaled[0.1]}},
  Ticks->{Automatic, Automatic}]], "Output",
 CellChangeTimes->{{3.5601244444320765`*^9, 3.560124450668433*^9}, {
   3.5601245126479783`*^9, 3.560124544972827*^9}, 3.5601246181060104`*^9, 
   3.560124694664389*^9, {3.5601247258341722`*^9, 3.5601247911309066`*^9}, 
   3.5601248292050843`*^9, 3.560124885929329*^9, 3.560125612101864*^9, {
   3.5601256741004095`*^9, 3.5601256904993477`*^9}, 3.5601257899130335`*^9}]
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
Cell[1257, 32, 2639, 64, 332, "Input"],
Cell[3899, 98, 2155, 33, 145, "Output"],
Cell[6057, 133, 1628, 31, 250, "Output"],
Cell[7688, 166, 30514, 859, 240, "Output"]
}, Open  ]]
}
]
*)

(* End of internal cache information *)

(* NotebookSignature dvDzy#87kOfScDKEmliB@P2b *)
