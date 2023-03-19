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
NotebookDataLength[    215588,       3884]
NotebookOptionsPosition[    213455,       3839]
NotebookOutlinePosition[    213851,       3855]
CellTagsIndexPosition[    213808,       3852]
WindowFrame->Normal*)

(* Beginning of Notebook Content *)
Notebook[{

Cell[CellGroupData[{
Cell[BoxData[{
 RowBox[{"<<", "peeters`"}], "\[IndentingNewLine]", 
 RowBox[{"peeters`setGitDir", "[", 
  "\"\<../project/figures/phy454-continuumechanics/bw\>\"", "]"}]}], "Input",
 CellChangeTimes->{{3.888236678761759*^9, 3.888236681310058*^9}},
 CellLabel->"In[35]:=",ExpressionUUID->"4e917a9a-d62d-4259-aa36-6da160af22e6"],

Cell[BoxData["\<\"peeters`\"\>"], "Output",
 CellChangeTimes->{3.888236702801622*^9},
 CellLabel->"Out[35]=",ExpressionUUID->"a51d8fba-017a-4053-9a68-3513e3279655"],

Cell[BoxData["\<\"/Users/pjoot/project/figures/phy454-continuumechanics/bw\"\>\
"], "Output",
 CellChangeTimes->{3.88823670280653*^9},
 CellLabel->"Out[36]=",ExpressionUUID->"280c70f1-6bfe-45f3-aa68-9b060bd4adb6"]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[{
 RowBox[{"Clear", "[", 
  RowBox[{"rho", ",", " ", "mu", ",", " ", "nu"}], 
  "]"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{"rho", " ", "=", " ", 
   RowBox[{
    RowBox[{"ChemicalData", "[", 
     RowBox[{"\"\<Water\>\"", ",", "\"\<Density\>\""}], "]"}], " ", "//", " ",
     "First"}]}], ";"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{"mu", " ", "=", " ", 
   RowBox[{
    RowBox[{"ChemicalData", "[", 
     RowBox[{"\"\<Water\>\"", ",", "\"\<Viscosity\>\""}], "]"}], " ", "//", 
    " ", "First"}]}], ";"}], "\[IndentingNewLine]", 
 RowBox[{"nu", " ", "=", " ", 
  RowBox[{"mu", "/", "rho"}]}]}], "Input",
 InitializationCell->True,
 CellChangeTimes->{{3.88823556664767*^9, 3.888235572353266*^9}},
 CellLabel->"In[5]:=",ExpressionUUID->"e745681a-9c50-4277-8e1d-9b7e7f968217"],

Cell[BoxData["8.926350586932`1.9999956570768957*^-7"], "Output",
 CellChangeTimes->{{3.8882355779826736`*^9, 3.888235578076521*^9}, {
  3.888236429448559*^9, 3.888236430479587*^9}},
 CellLabel->"Out[8]=",ExpressionUUID->"c3554324-0fa9-421b-b34c-a1178b1a2dcc"]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[{
 RowBox[{
  RowBox[{"Clear", "[", "phi", "]"}], 
  "\[IndentingNewLine]"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{
   RowBox[{
    RowBox[{"phi", "[", 
     RowBox[{"z_", ",", " ", "a_"}], "]"}], " ", "=", " ", 
    RowBox[{"Piecewise", "[", 
     RowBox[{"{", 
      RowBox[{
       RowBox[{"{", 
        RowBox[{"z", ",", 
         RowBox[{"z", "<", "a"}]}], "}"}], ",", 
       RowBox[{"{", 
        RowBox[{
         RowBox[{
          RowBox[{
           RowBox[{"a", "^", "2"}], "/", 
           RowBox[{"(", 
            RowBox[{"1", " ", "-", " ", 
             RowBox[{"a", "^", "2"}]}], ")"}]}], 
          RowBox[{"(", 
           RowBox[{
            RowBox[{"1", "/", "z"}], " ", "-", " ", "z"}], ")"}]}], ",", 
         RowBox[{"z", ">", "a"}]}], "}"}]}], "}"}], "]"}]}], " ", ";"}], 
  "\[IndentingNewLine]"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{"Clear", "[", 
   RowBox[{
   "a", ",", " ", "n", ",", " ", "termTable", ",", " ", "term", ",", " ", "t",
     ",", " ", "r", ",", " ", "omega"}], "]"}], " ", 
  ";"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{"a", " ", "=", " ", "0.6"}], " ", ";"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{"n", " ", "=", " ", "10"}], " ", ";"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{
   RowBox[{"r", " ", "=", " ", "0.1"}], " ", ";"}], "  ", 
  RowBox[{"(*", " ", 
   RowBox[{"10", " ", "cm", " ", "coffee", " ", "cup"}], " ", "*)"}], 
  "\[IndentingNewLine]", "\[IndentingNewLine]"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{
   RowBox[{
    RowBox[{"term", "[", 
     RowBox[{"t_", ",", " ", "z_", ",", " ", "jj_"}], "]"}], " ", "=", " ", 
    "\[IndentingNewLine]", 
    RowBox[{"Module", "[", 
     RowBox[{
      RowBox[{"{", 
       RowBox[{"zero", ",", " ", "num", ",", " ", "den"}], "}"}], ",", 
      "\[IndentingNewLine]", 
      RowBox[{
       RowBox[{"zero", " ", "=", " ", 
        RowBox[{"BesselJZero", "[", 
         RowBox[{"1", ",", " ", "jj"}], "]"}]}], "  ", ";", 
       "\[IndentingNewLine]", 
       RowBox[{"num", " ", "=", " ", 
        RowBox[{"Integrate", "[", 
         RowBox[{
          RowBox[{"zz", " ", 
           RowBox[{"phi", "[", 
            RowBox[{"zz", ",", " ", "a"}], "]"}], " ", 
           RowBox[{"BesselJ", "[", 
            RowBox[{"1", ",", " ", 
             RowBox[{"zero", " ", "zz"}]}], "]"}]}], ",", 
          RowBox[{"{", 
           RowBox[{"zz", ",", " ", "0", ",", " ", "1"}], "}"}]}], "]"}]}], 
       "  ", ";", "\[IndentingNewLine]", 
       RowBox[{"den", " ", "=", " ", 
        RowBox[{"Integrate", "[", 
         RowBox[{
          RowBox[{"zz", "  ", 
           RowBox[{
            RowBox[{"(", 
             RowBox[{"BesselJ", "[", 
              RowBox[{"1", ",", " ", 
               RowBox[{"zero", " ", "zz"}]}], "]"}], ")"}], "^", "2"}]}], ",", 
          RowBox[{"{", 
           RowBox[{"zz", ",", " ", "0", ",", " ", "1"}], "}"}]}], "]"}]}], 
       " ", ";", "\[IndentingNewLine]", " ", 
       RowBox[{
        RowBox[{"E", "^", 
         RowBox[{"(", 
          RowBox[{
           RowBox[{"-", " ", 
            RowBox[{"zero", "^", "2"}]}], " ", "nu", " ", 
           RowBox[{"t", " ", "/", 
            RowBox[{"r", "^", "2"}]}]}], ")"}]}], " ", 
        RowBox[{"BesselJ", "[", 
         RowBox[{"1", ",", " ", 
          RowBox[{"zero", " ", "z"}]}], "]"}], " ", 
        RowBox[{"num", "/", "den"}]}]}]}], "\[IndentingNewLine]", "]"}]}], 
   " ", ";"}], "\[IndentingNewLine]", "\[IndentingNewLine]", 
  RowBox[{"(*", 
   RowBox[{
    RowBox[{"term", "[", 
     RowBox[{"t", ",", "z", ",", "3"}], "]"}], " ", "//", " ", "N"}], 
   "*)"}]}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{"termTable", "[", 
   RowBox[{"t_", ",", " ", "z_"}], "]"}], " ", "=", " ", 
  RowBox[{"Table", "[", " ", 
   RowBox[{
    RowBox[{
     RowBox[{"term", "[", 
      RowBox[{"t", ",", " ", "z", ",", " ", "jj"}], "]"}], "//", "N"}], ",", 
    " ", 
    RowBox[{"{", 
     RowBox[{"jj", ",", " ", "n"}], "}"}]}], " ", "]"}], " "}]}], "Input",
 CellChangeTimes->{{3.5443495739190054`*^9, 3.54434963520051*^9}, {
   3.544349672591649*^9, 3.5443496820981927`*^9}, {3.544349713384982*^9, 
   3.544350099402061*^9}, {3.544350163498727*^9, 3.544350430371991*^9}, {
   3.544350466572062*^9, 3.544350522024234*^9}, 3.5443505526539855`*^9, {
   3.544350594199362*^9, 3.5443507283920374`*^9}, {3.54435077214754*^9, 
   3.5443508937394943`*^9}, {3.544350977639293*^9, 3.5443510211617823`*^9}, {
   3.544351072832738*^9, 3.5443511503681726`*^9}, {3.544351291307234*^9, 
   3.5443513026878853`*^9}, {3.544351348247491*^9, 3.5443514234887943`*^9}, {
   3.544351482732183*^9, 3.5443515606166377`*^9}, {3.544351689454007*^9, 
   3.5443517418050013`*^9}, {3.544351980666663*^9, 3.544352114221302*^9}, {
   3.5443521543005943`*^9, 3.544352179102013*^9}, {3.5443522274187765`*^9, 
   3.544352306005272*^9}, {3.5443523648436365`*^9, 3.5443523704829597`*^9}, {
   3.544352401720746*^9, 3.544352407433073*^9}, {3.544352463203263*^9, 
   3.5443524710107093`*^9}, {3.544352518138405*^9, 3.544352580484971*^9}, {
   3.5443526527511044`*^9, 3.544352668075981*^9}, {3.544352706053153*^9, 
   3.5443527065191793`*^9}, {3.5443527830295553`*^9, 3.544352945339839*^9}, {
   3.544353043026427*^9, 3.5443530959624543`*^9}, {3.544353134467657*^9, 
   3.5443532764817796`*^9}, {3.5443533579714403`*^9, 3.544353358065446*^9}, {
   3.5443547070596037`*^9, 3.5443547579115124`*^9}, 3.5443549564718695`*^9, {
   3.544355040561679*^9, 3.544355040656685*^9}, {3.5443550854542465`*^9, 
   3.544355134504052*^9}, {3.544355187730097*^9, 3.54435519110929*^9}, {
   3.5443552327436714`*^9, 3.5443553750268097`*^9}, {3.544355460980726*^9, 
   3.5443556241880608`*^9}, 3.544355795233844*^9, {3.544355947046527*^9, 
   3.544355947141533*^9}, {3.5443566252933207`*^9, 3.544356648264634*^9}, {
   3.544356680852498*^9, 3.5443567409129333`*^9}, {3.544356773955824*^9, 
   3.5443567740948315`*^9}, {3.544356809922881*^9, 3.544356906988433*^9}, {
   3.5443569597004476`*^9, 3.54435703562479*^9}, {3.5443571144843006`*^9, 
   3.5443571146743116`*^9}, {3.5443571599188995`*^9, 3.544357174808751*^9}, {
   3.5443572207803802`*^9, 3.544357333029801*^9}, {3.5443574114562864`*^9, 
   3.544357414955487*^9}, 3.5443574537717066`*^9, {3.544357563343974*^9, 
   3.544357683803864*^9}, {3.5443583610275993`*^9, 3.5443583621646643`*^9}, {
   3.544358449425655*^9, 3.5443584572341013`*^9}, {3.544358489875969*^9, 
   3.5443585300342655`*^9}, {3.5443585718676586`*^9, 3.54435861735726*^9}, {
   3.8882363631450357`*^9, 3.888236398812058*^9}, {3.888236435445409*^9, 
   3.888236488770051*^9}, 
   3.888236519988665*^9},ExpressionUUID->"44d0d431-18fc-437c-a320-\
c81d83693f2f"],

Cell[BoxData[
 RowBox[{
  RowBox[{"-", "0.14815809592159382`"}], " ", 
  SuperscriptBox["2.718281828459045`", 
   RowBox[{
    RowBox[{"-", "0.009238724110240406`"}], " ", "t"}]], " ", 
  RowBox[{"BesselJ", "[", 
   RowBox[{"1.`", ",", 
    RowBox[{"10.173468135062722`", " ", "z"}]}], "]"}]}]], "Output",
 CellChangeTimes->{
  3.5443570502216253`*^9, 3.5443571157903757`*^9, 3.5443571826321983`*^9, {
   3.544357323162236*^9, 3.5443573364139943`*^9}, 3.544357433232532*^9, {
   3.544357625843549*^9, 3.544357652501074*^9}, 3.5443580273985167`*^9, 
   3.544358367145949*^9, {3.5443585952799973`*^9, 3.5443586223715467`*^9}, {
   3.888236439268025*^9, 3.888236446468315*^9}, 3.8882365059184523`*^9},
 CellLabel->"Out[32]=",ExpressionUUID->"e0b124e4-b0f8-4054-86cc-90a8648c4ce3"],

Cell[BoxData[
 RowBox[{"{", 
  RowBox[{
   RowBox[{"0.8503297479775555`", " ", 
    SuperscriptBox["2.718281828459045`", 
     RowBox[{
      RowBox[{"-", "0.001310564172586476`"}], " ", "t"}]], " ", 
    RowBox[{"BesselJ", "[", 
     RowBox[{"1.`", ",", 
      RowBox[{"3.831705970207512`", " ", "z"}]}], "]"}]}], ",", 
   RowBox[{
    RowBox[{"-", "0.11999314106862143`"}], " ", 
    SuperscriptBox["2.718281828459045`", 
     RowBox[{
      RowBox[{"-", "0.004393411964750683`"}], " ", "t"}]], " ", 
    RowBox[{"BesselJ", "[", 
     RowBox[{"1.`", ",", 
      RowBox[{"7.015586669815622`", " ", "z"}]}], "]"}]}], ",", 
   RowBox[{
    RowBox[{"-", "0.14815809592159382`"}], " ", 
    SuperscriptBox["2.718281828459045`", 
     RowBox[{
      RowBox[{"-", "0.009238724110240406`"}], " ", "t"}]], " ", 
    RowBox[{"BesselJ", "[", 
     RowBox[{"1.`", ",", 
      RowBox[{"10.173468135062722`", " ", "z"}]}], "]"}]}], ",", 
   RowBox[{"0.10358557839643508`", " ", 
    SuperscriptBox["2.718281828459045`", 
     RowBox[{
      RowBox[{"-", "0.01584612601041104`"}], " ", "t"}]], " ", 
    RowBox[{"BesselJ", "[", 
     RowBox[{"1.`", ",", 
      RowBox[{"13.323691936314223`", " ", "z"}]}], "]"}]}], ",", 
   RowBox[{"0.026043086021717104`", " ", 
    SuperscriptBox["2.718281828459045`", 
     RowBox[{
      RowBox[{"-", "0.024215551538426694`"}], " ", "t"}]], " ", 
    RowBox[{"BesselJ", "[", 
     RowBox[{"1.`", ",", 
      RowBox[{"16.470630050877634`", " ", "z"}]}], "]"}]}], ",", 
   RowBox[{
    RowBox[{"-", "0.0699874705822348`"}], " ", 
    SuperscriptBox["2.718281828459045`", 
     RowBox[{
      RowBox[{"-", "0.03434698184454557`"}], " ", "t"}]], " ", 
    RowBox[{"BesselJ", "[", 
     RowBox[{"1.`", ",", 
      RowBox[{"19.615858510468243`", " ", "z"}]}], "]"}]}], ",", 
   RowBox[{"0.018227524604232312`", " ", 
    SuperscriptBox["2.718281828459045`", 
     RowBox[{
      RowBox[{"-", "0.04624040994018411`"}], " ", "t"}]], " ", 
    RowBox[{"BesselJ", "[", 
     RowBox[{"1.`", ",", 
      RowBox[{"22.760084380592772`", " ", "z"}]}], "]"}]}], ",", 
   RowBox[{"0.0368611803896393`", " ", 
    SuperscriptBox["2.718281828459045`", 
     RowBox[{
      RowBox[{"-", "0.05989583275673122`"}], " ", "t"}]], " ", 
    RowBox[{"BesselJ", "[", 
     RowBox[{"1.`", ",", 
      RowBox[{"25.903672087618382`", " ", "z"}]}], "]"}]}], ",", 
   RowBox[{
    RowBox[{"-", "0.03170001682461716`"}], " ", 
    SuperscriptBox["2.718281828459045`", 
     RowBox[{
      RowBox[{"-", "0.07531324877676811`"}], " ", "t"}]], " ", 
    RowBox[{"BesselJ", "[", 
     RowBox[{"1.`", ",", 
      RowBox[{"29.046828534916855`", " ", "z"}]}], "]"}]}], ",", 
   RowBox[{
    RowBox[{"-", "0.009882240319413049`"}], " ", 
    SuperscriptBox["2.718281828459045`", 
     RowBox[{
      RowBox[{"-", "0.09249265718061342`"}], " ", "t"}]], " ", 
    RowBox[{"BesselJ", "[", 
     RowBox[{"1.`", ",", 
      RowBox[{"32.189679910974405`", " ", "z"}]}], "]"}]}]}], "}"}]], "Output",
 CellChangeTimes->{
  3.5443570502216253`*^9, 3.5443571157903757`*^9, 3.5443571826321983`*^9, {
   3.544357323162236*^9, 3.5443573364139943`*^9}, 3.544357433232532*^9, {
   3.544357625843549*^9, 3.544357652501074*^9}, 3.5443580273985167`*^9, 
   3.544358367145949*^9, {3.5443585952799973`*^9, 3.5443586223715467`*^9}, {
   3.888236439268025*^9, 3.888236446468315*^9}, 3.888236506395203*^9},
 CellLabel->"Out[33]=",ExpressionUUID->"69c37614-61ac-4cc3-aaf6-2dcad91d41d8"]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{
  RowBox[{"(*", 
   RowBox[{
    RowBox[{"termTable", "[", 
     RowBox[{"0", ",", " ", "z"}], "]"}], "[", 
    RowBox[{"[", "2", "]"}], "]"}], "*)"}], "\[IndentingNewLine]", 
  "\[IndentingNewLine]", 
  RowBox[{
   RowBox[{"figTenSixteenColor", " ", "=", " ", 
    RowBox[{"Plot", "[", " ", 
     RowBox[{
      RowBox[{"{", 
       RowBox[{
        RowBox[{"phi", "[", 
         RowBox[{"z", ",", " ", "a"}], "]"}], "\[IndentingNewLine]", ",", " ", 
        RowBox[{"Sum", "[", 
         RowBox[{
          RowBox[{
           RowBox[{"termTable", "[", 
            RowBox[{"0.", ",", " ", "z"}], "]"}], "[", 
           RowBox[{"[", "i", "]"}], "]"}], ",", " ", 
          RowBox[{"{", 
           RowBox[{"i", ",", " ", "1"}], "}"}]}], "]"}], " ", 
        "\[IndentingNewLine]", ",", " ", 
        RowBox[{"Sum", "[", 
         RowBox[{
          RowBox[{
           RowBox[{"termTable", "[", 
            RowBox[{"0.", ",", " ", "z"}], "]"}], "[", 
           RowBox[{"[", "i", "]"}], "]"}], ",", " ", 
          RowBox[{"{", 
           RowBox[{"i", ",", " ", "3"}], "}"}]}], "]"}], " ", 
        "\[IndentingNewLine]", ",", " ", 
        RowBox[{"Sum", "[", 
         RowBox[{
          RowBox[{
           RowBox[{"termTable", "[", 
            RowBox[{"0.", ",", " ", "z"}], "]"}], "[", 
           RowBox[{"[", "i", "]"}], "]"}], ",", " ", 
          RowBox[{"{", 
           RowBox[{"i", ",", " ", "5"}], "}"}]}], "]"}]}], " ", 
       "\[IndentingNewLine]", "}"}], ",", 
      RowBox[{"{", 
       RowBox[{"z", ",", " ", "0", ",", " ", "1"}], "}"}], 
      "\[IndentingNewLine]", ",", " ", 
      RowBox[{"Filling", "\[Rule]", "Axis"}]}], "\[IndentingNewLine]", 
     "]"}]}], "\[IndentingNewLine]", 
   RowBox[{"figTenSixteenBw", " ", "=", " ", 
    RowBox[{"Plot", "[", " ", 
     RowBox[{
      RowBox[{"{", 
       RowBox[{
        RowBox[{"phi", "[", 
         RowBox[{"z", ",", " ", "a"}], "]"}], "\[IndentingNewLine]", ",", " ", 
        RowBox[{"Sum", "[", 
         RowBox[{
          RowBox[{
           RowBox[{"termTable", "[", 
            RowBox[{"0.", ",", " ", "z"}], "]"}], "[", 
           RowBox[{"[", "i", "]"}], "]"}], ",", " ", 
          RowBox[{"{", 
           RowBox[{"i", ",", " ", "1"}], "}"}]}], "]"}], " ", 
        "\[IndentingNewLine]", ",", " ", 
        RowBox[{"Sum", "[", 
         RowBox[{
          RowBox[{
           RowBox[{"termTable", "[", 
            RowBox[{"0.", ",", " ", "z"}], "]"}], "[", 
           RowBox[{"[", "i", "]"}], "]"}], ",", " ", 
          RowBox[{"{", 
           RowBox[{"i", ",", " ", "3"}], "}"}]}], "]"}], " ", 
        "\[IndentingNewLine]", ",", " ", 
        RowBox[{"Sum", "[", 
         RowBox[{
          RowBox[{
           RowBox[{"termTable", "[", 
            RowBox[{"0.", ",", " ", "z"}], "]"}], "[", 
           RowBox[{"[", "i", "]"}], "]"}], ",", " ", 
          RowBox[{"{", 
           RowBox[{"i", ",", " ", "5"}], "}"}]}], "]"}]}], " ", 
       "\[IndentingNewLine]", "}"}], ",", 
      RowBox[{"{", 
       RowBox[{"z", ",", " ", "0", ",", " ", "1"}], "}"}], ",", 
      "\[IndentingNewLine]", 
      RowBox[{"PlotStyle", "\[Rule]", " ", 
       RowBox[{"Directive", "[", 
        RowBox[{"Thick", ",", " ", "Black"}], "]"}]}]}], 
     "\[IndentingNewLine]", 
     RowBox[{"(*", 
      RowBox[{",", " ", 
       RowBox[{"Filling", "\[Rule]", "Axis"}]}], "*)"}], 
     "\[IndentingNewLine]", "]"}]}], "\[IndentingNewLine]", 
   RowBox[{"peeters`exportForLatex", "[", 
    RowBox[{"\"\<bottomlessCoffeeFig17\>\"", ",", "figTenSixteenBw"}], "]"}], 
   "\[IndentingNewLine]"}]}]], "Input",
 CellChangeTimes->{{3.5443551951355205`*^9, 3.5443551967466125`*^9}, {
   3.5443556268182116`*^9, 3.544355744687953*^9}, {3.544355775219699*^9, 
   3.5443557791689253`*^9}, {3.544355836671214*^9, 3.54435584953895*^9}, {
   3.5443559402011356`*^9, 3.544356001048616*^9}, {3.544356921592268*^9, 
   3.5443569315658383`*^9}, {3.544356973966264*^9, 3.544356982491751*^9}, {
   3.544357369495887*^9, 3.5443573902240725`*^9}, {3.5443574888647137`*^9, 
   3.5443575683832626`*^9}, {3.5443576933424096`*^9, 
   3.5443579911204414`*^9}, {3.5443583376922646`*^9, 3.544358338982338*^9}, {
   3.544358376969511*^9, 3.5443583782025814`*^9}, {3.544358549304368*^9, 
   3.5443585569858074`*^9}, {3.5443586244906683`*^9, 3.5443586605647316`*^9}, 
   3.8882365396113043`*^9, {3.888236729293281*^9, 3.8882368584272947`*^9}, {
   3.888236920566104*^9, 3.88823694611465*^9}, 
   3.8882370093835583`*^9},ExpressionUUID->"f13649b3-d7ab-47c9-bc88-\
d25fa52dc57a"],

Cell[BoxData[
 GraphicsBox[{GraphicsComplexBox[CompressedData["
1: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
3//f/axz8qw26zz9/9f1/wvKhao8
    "], {{{}, 
      {RGBColor[0.368417, 0.506779, 0.709798], Opacity[0.2], EdgeForm[None], 
       GraphicsGroupBox[{
         PolygonBox[{{98, 875, 876, 50, 117, 101, 115, 86, 99, 113, 73, 83, 
          96, 111, 63, 71, 81, 94, 109, 55, 60, 68, 78, 91, 106, 49, 48, 47, 
          46, 45, 44, 43, 42, 41, 40, 39, 38, 37, 36, 35, 34, 33, 32, 54, 59, 
          67, 77, 90, 105, 31, 62, 70, 80, 93, 108, 53, 85}}], 
         PolygonBox[{{1, 873, 874, 72, 116, 100, 114, 82, 95, 110, 58, 84, 97,
           112, 66, 76, 89, 104, 30, 61, 69, 79, 92, 107, 52, 57, 65, 75, 88, 
          103, 29, 28, 27, 26, 25, 24, 23, 22, 21, 20, 19, 18, 17, 16, 15, 14,
           13, 12, 11, 10, 9, 8, 7, 6, 5, 4, 3, 2, 51, 56, 64, 74, 87, 
          102}}]}]}, {}, 
      {RGBColor[0.880722, 0.611041, 0.142051], Opacity[0.2], EdgeForm[None], 
       GraphicsGroupBox[PolygonBox[CompressedData["
1:eJwt03WQ1AUYBuCFo7tbaSSUbqRbQjikDOKIO+qOxqNbQUlFOkRSuiWku7tL
6Qbp5nHgj2ff9/1+M7uzO7MZQyKCw6MGAoEoBHmJlKFBgUAYf+qRbuXoQFKK
04rbnsWV+WnKPvsSUfUcNGCVvZXTPCeD25fM1ecwm1nMZAZ/MJ3fmcZUpjCZ
SUxkAuMZx1h+YyVbOMUz0vuMmozRV7CZkzzlY/ca/Krv5d//v7udnfostzdx
gid85FadX/Q9/BN4/2N9Qj2WmdeJqefmOzbax3lMOrsao/VbxNHz0YTd9kXe
ks2uy1L9GjH0z/iWDXZ8WZBmHLMfkVb/glF6ElmMMG7apWQ7YpOXxuxyLyMj
SEhnCtOCC551lZ/Thjd2R5mVr1hify/L0p5EdKEILbnqeTdZkrZEpxOf8g3r
PS8tw4lHAUI46l5CtuahnkZWZaSeWBYllBt2LJmHRuy0E8hCNOe8/Zoseh0W
61eIpufia/62j/Afqe0qjNB3cI5XZHYLZpF++cN/IicNWWcf5gGp7MoM17dz
lpdkcqvNQn0th7hPSrdKDNO3cYYXZHSrxQJ9DQe5Rwq3ivysz2c1B7hLcvcK
/KQPZQg/8gODGcRABtCffvSlD73pRU960J15/MV+7pDMe5fnHULHgwI=
         "]]]}, {}, 
      {RGBColor[0.560181, 0.691569, 0.194885], Opacity[0.2], EdgeForm[None], 
       GraphicsGroupBox[PolygonBox[CompressedData["
1:eJwV0VPMHGAUBNCtbbt/bdu2bdt4q23btm3btm3b7enDyczcL9lNdoOada7W
KXggEAjGL3ooLUMEAq1YqXf3WIB2RCYHzXjmLZRMT11O2nf5RTK7Clv1g1zl
E/HdyrBCX84ylrKExSxiIQuYzzzmMofZzGImM5jOFg5whY/E89mlmaZvZj+X
+UBc91JM1U9wh58EuVVmk76PS7wnjltJpuhPCamnow7H7dv8IKldiY36w/8/
op6KGuy1w8pMNOCi/Y7Yegkm65FkdpryxA4h01KbY3Z4mYVG3LJzyRZ815PI
imzQu8l8tCEC///UrDTmgfcuMjct+Wt3kCmpzh67q8xLa8LQkYzU54L3zjIn
zXlrt5exKM4kO79sS0Sy0YTH7nlkK4KThlocdQ8nM9OQm/Y3EusVWK/f5w8p
7Grs1kPLDNTjvP2GmHoxJuqPCKanpiZH7Bt8JZFdnnX6PX6T3K7KLv0cr4lh
F2WCfpjrfCGhWznW6js5yyuiuxVhvH6Ia3wmgVtZ1ug7OMNLorkVZpy+mu2c
5gVR3QsxVh/DaEYxkhEMZxhDGcJgBjGQAfSnH33pQ2960ZNVbOMUz4niewry
D15Igao=
         "]]]}, {}, 
      {RGBColor[0.922526, 0.385626, 0.209179], Opacity[0.2], EdgeForm[None], 
       GraphicsGroupBox[PolygonBox[CompressedData["
1:eJwNzVOUlWEYhuE9M9l2TZNt2+Zk19RxnWTbmGzbtm3bNie7roNrvffz7bX2
HxbRJbxzcCAQCCKKrkbHkECgE0t1hJuXFgSRhQbc89sP0ukaHNbXiCKZXYEN
ejfneEk8byVYoheziIUsYD7zmMscZjOLmcxgOtOYyhTWs4uzvCCu/y3OZH2I
q3wgqbfyrNM7OcNz4ngrxiR9kCu8J4m3cqzVOzjNM2J7K8pEfZfvpLWrc0Bf
5h2J7bKs0bf4Qiq7Ctv1LzLoWpzST4mlixCp87jNCZCZ+tzxnsNtzDfd2k1D
Nfbb7d1cNOWP3cbNSB0u2e3cbITz1m7pJqIMq+0Obm6a8ddu64ZRl5t2drcR
n3UrNyWV2WbndJvwU6d3a3JSZ3Ub8kTHdAszQf8jk67Hbf2V1Loq+/RvQnVt
Luo3JNSlWaVv8IkUdiW26hM8JoZdiPF6Lxd4TQJvpVipr/OR5HZFtujjPCK6
XZBxeg/neUV8byVZoTdzjIdE81aAsXo5mzjKA0K852eMHs0oRjKC4QxjKEMY
zCAGMoD+9KMvfehNL3rSg+50YxkbOcJ9gn0vH/8Bg/l+Gg==
         "]]]}, {}, {}, {}, {}, {}, {}, {}, {}, {}, {}, {}, {}, {}, {}, {}, \
{}, {}, {}, {}, {}}, {{}, {}, 
      TagBox[
       {RGBColor[0.368417, 0.506779, 0.709798], AbsoluteThickness[1.6], 
        Opacity[1.], 
        LineBox[{1, 102, 87, 74, 64, 56, 51, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 
         12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 
         29, 103, 88, 75, 65, 57, 52, 107, 92, 79, 69, 61, 30, 104, 89, 76, 
         66, 112, 97, 84, 58, 110, 95, 82, 114, 100, 116, 72}], 
        LineBox[{98, 85, 53, 108, 93, 80, 70, 62, 31, 105, 90, 77, 67, 59, 54,
          32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 
         49, 106, 91, 78, 68, 60, 55, 109, 94, 81, 71, 63, 111, 96, 83, 73, 
         113, 99, 86, 115, 101, 117, 50}]},
       Annotation[#, "Charting`Private`Tag$162955#1"]& ], 
      TagBox[
       {RGBColor[0.880722, 0.611041, 0.142051], AbsoluteThickness[1.6], 
        Opacity[1.], LineBox[CompressedData["
1:eJwl01PUnAcUBdD5Y6ux3dhWY6Oxbdtq2Ma22ThpY7Qx27CNbdvOTvKw55xz
v7VmHmYmSaP2ldoFBQKBIC89ZREZnYf6ETaxnF70pg996Ud/fmEAAxnEYIYw
lF/5jWEMZwRFvXcMHulH2cwKRlLMPSaP9WNsYSU/uyXhnX6evYyiuFssnujH
2coqKrol5b1+gX2MpoRbbJ7qJ9hGTTsNwblhr6aSnowP+kX2M4aSbnF4pv/H
X9Sy0xKCm/YaKuvJ+ahfoomenUgcsOvJjIThrt1c5iIqY+1SMi7P9VYyL//r
jWRWIvD1S/uJv91ry3R0JiRtyE93bnneTOakK1HoQCF68IfnVWQKOvHJbi3z
0Y3LdlOZgy5Epj0FOehZfZmJsLSlAPfcW8jcRGOcXVrG44V+ksZ6NiKy3a4j
0xOK2/afVNVT8lm/wiEa2JkJx317PGX0+LzUT7GDunYGQnPHXks1/cdvP/ZA
4Kr4hwmUtRPwSj/NTtZR3S1V0Pf/xjX7XyZSzk7Ia/0Mu1jPJMq7J+KNfpbd
bGAyU5jKNKYzg5nMYjZzmMs85rOAhSxiMb+zhKVU8BmJeaufYw8bqeGWmmBc
tw/TUM9CeB7YLWUefqAjhb/+91nm2Rfy6YIp
         "]]},
       Annotation[#, "Charting`Private`Tag$162955#2"]& ], 
      TagBox[
       {RGBColor[0.560181, 0.691569, 0.194885], AbsoluteThickness[1.6], 
        Opacity[1.], LineBox[CompressedData["
1:eJwNzVOQXVEUBNA3sW3btm3bnNj6i23btm3btm3byfpY1d37VN2bPLhLjc5B
gUDgJz2VwiECgai80E+zndX0ojd96Es/+jOAgQxiMEMYyjCGM4KRjGI0YxjL
OIr4TzRe6mfYwRrGU9Q9Oq/0s+xkLeXdEvJFv85hJlDMLQav9XPsYh0V3BLx
Vb/BESZS3C0mb/Tz7Ka6nZI/+n3WU9FOzDf9JkepbacliMf2JErosXirX6CB
nokw7LFryFT81R+wgUp2Er7rt2isZyU8x+w6Mh0haE0+nrg3kzmIRDsKMtm9
pIxNB97ZLWRuunDRbigz04mwtCE/3djrvaZMTUf+2a1kXrry0G4qs9OZiLSl
AN3Z6L2yTMoPvaXMw229icxGBI7bdWV6QvLUbi5zEpkpdikZh/f6JRrpWQjH
PruWTEOAR/YmqujJ+Knf4QT17AyE4pk9ldJ6XD7ol9nPZqq6JeeXfpeTTKOM
Wzw+6lc4wBamU9Y9Pp/0qxxkKzOYySxmM4e5zGM+C1jIIhazhKUsYzkrWEk5
307AZ/0ah9hGNbcU/NbvcYr6dkZC89wOlrmIQnsK0YNV3v4D446A1Q==
         "]]},
       Annotation[#, "Charting`Private`Tag$162955#3"]& ], 
      TagBox[
       {RGBColor[0.922526, 0.385626, 0.209179], AbsoluteThickness[1.6], 
        Opacity[1.], LineBox[CompressedData["
1:eJwNzVN3XWEYhdGdpLat1LZtM7Xb/ID2prZt27Zt27bdprbmxRzvs74zxtnh
kZ0jOoUEQRBFl9AgyB8WBKHc10fYyDK60o3u9KAnvehNH/rSj/4MYCCDGMwQ
hjKM4YxgJKMYTQHfC+OBPsomljOGgt6j8VAfYzMrKOUtPq/0efYwlkLeovNI
H2cLlezkfNTXWUlpOwGv9QX2Mo7C3mLwWJ9gK5XtFHzSN1hFGTshb/RF6uiM
/Nb7qKZT81Xfpr7OzD89niI6Jk90IzcbJ3UtNz0/dVM3F9t0FTclrflsN3Zz
cFPXc8Npx1+7uZuHjqy2y7qJaMVbO8LNTnsu2XXdTLTlj93MzU0H9tvV3TS0
4ZvdxM3JHd3AzUJAC/IywXtRNxZP9Slq6wz80tupqlPxRd9iDeXsxLzTlzlA
DTst3/VdJlLMjs0zfZodrKW8tyRE6SscZBLFvcXhuT7DTtZRwVtS3uurHGIy
JbzF5YU+yy7WM4WpTGM6M5jJLGYzh7nMYz4LWMgiFrOEkv43Hi/1OXazgYre
kvFBX+MwNe10/ND3aKizEkJL8hHJUr/9B1t3fUk=
         "]]},
       Annotation[#, "Charting`Private`Tag$162955#4"]& ], 
      {RGBColor[0.368417, 0.506779, 0.709798], Opacity[0.2], 
       LineBox[{119, 120, 118}]}}}], {}},
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
         Part[#, 2]]}& )}, "AxesInFront" -> True},
  PlotRange->{{0, 1}, {0., 0.5996811224489795}},
  PlotRangeClipping->True,
  PlotRangePadding->{{
     Scaled[0.02], 
     Scaled[0.02]}, {
     Scaled[0.05], 
     Scaled[0.05]}},
  Ticks->{Automatic, Automatic}]], "Output",
 CellChangeTimes->{
  3.5443558507420187`*^9, {3.5443559829675817`*^9, 3.5443560022456846`*^9}, 
   3.544357142704915*^9, 3.5443573925342045`*^9, {3.54435751781537*^9, 
   3.544357557343631*^9}, {3.5443576899522157`*^9, 3.544357720115941*^9}, 
   3.544357799923506*^9, 3.54435792657475*^9, {3.544357964192901*^9, 
   3.5443579923125095`*^9}, 3.5443583404564223`*^9, 3.544358387374106*^9, 
   3.544358560897031*^9, 3.5443586668990936`*^9, 3.544358700014988*^9, {
   3.888236154085175*^9, 3.888236175237138*^9}, 3.888236540750778*^9, {
   3.888236785197341*^9, 3.88823686169129*^9}, 3.888236957587034*^9},
 CellLabel->"Out[47]=",ExpressionUUID->"874c91a4-73a4-451d-a88d-ff6b871d0348"],

Cell[BoxData[
 GraphicsBox[{{{}, {}, 
    TagBox[
     {GrayLevel[0], Thickness[Large], Opacity[1.], LineBox[CompressedData["
1:eJxNxV1MkgEUAFB0ViYLbGb06aQRYZlUrFitLUGHmzNikcmK1MkYatms5mis
VjM3Vpnl7GfNTZ2YVmuUrECysUSFNIgUUqKyQIUHCme0TEY2rR68t4ezw5Cf
KiiLJZFIvL/+va8s6Or7IuEtHSdIOe0juPyld7Y1teiJXFj4xvO0lSiEDysi
L24SCvjz9suC64QS1iQfuHSVUMO18fpNdcRt+Ii0XRf+3gmTF2uL8+g6mHVw
JmipN8Cq4T38ptnnMM2w2hsTY4aNUwLHyN4BeKCyNVU6bYV/pmdRH1cNwbFR
bWIqyw7vWpQZD3U5YIeaOzy4ZQRe3xiKPpxxwqGIz+vmvIU7v5rslIZRmJL2
4FsgMAZfO95drtn4Dp7L1gaO1Xhg5Q6rYa3lPezrsta7GB/h+cqx5oxz43Bm
zoqFctMnOO8uo+IJzQur0ko3TBb7YPa0hOwRTcBJ1HC89RceZ27WMVsm4RNc
04eVwim4z+l+1CPCk6vCNRVi3HyPlf5SgifRGqsvynBTVEGOnMHJZkpWQIPL
ijISb3Xg3RGBP+c+Xso5W9emxfXtfvdRI16k7jnpeo1r8+Wa3jmcy2bw+FG8
lzIxbp7HnaMltH6SH54tkTZYEvAL2evYuavw5UyPzUrFiWDhssE1OK9afP4V
HR8qpKbkM3Dx7uFnNiYu/y38Yd+Mh7wJN4SZuLLfts2xFV/ouOLYz8ELRHTV
nf/+A5048G8=
       "]], LineBox[CompressedData["
1:eJwVjH1Q03UAhyeOEssFBH+gKaHL05CXQaAox8eTYICoMIl3GC3l0utGgC9w
SjBiNN9id+7G+4uOlykUL7KSGrHDclmHo20KdhPi94MNHONrxpK6g7X++Nxz
zz13Hz9BAe+kC4PB2Ovc//TyiSO6MBr8oOb+zgAaPe7RM7pIGsnleaNj22iM
N0Sl62NpyAUtEW1uNDLKVu28eBr6AHt2GpMGxVdfNxymMRQ0JHrDQWGZvV9n
TKKRrlgZq1ym4NMbFjuRSUMQWJB/dpqC4N6e90xCGn9/OHDwsoqC3brZ3Sx3
dsXt5wUCCrJmi7apnoZVr7I/zqYQemyw/HgTjc2+IVuQRqFw4AjR3KCRWNv6
k2ciBVtJxcPGHhqsSO4VbRiFOVfz1eRRGql9p4ry3Sg88u13G7bRyDwbXHmu
fwaq49z1svdnsUmmdtUyZ1AeJ24dNM/iAy53JKZhGn5PEyYV4jnEMadPFCc9
xf69VTKfEDNmjLouydLvyN6m+2edwYyd2zOFTb9Owv7LNepTkQXnwzWeeulj
1DFzz/DY84jwp1qtXxrx5pTqpsuP8xC9vaFY3qWHa5koJaJwAXNRadluynEw
buX2Up7P0FnLLzINjKGoofea5+gzZPpKY3ebH2DYX7LBQ2hFxsV91THc+/BI
KNpTyVpEzp34xherozAFjBtK1YsQ6r11IxtH0NcC9myuDfdYrBj20F3k9IZ7
bF2zQRga76rpHkCF+IbIdHsJr9y8MGwRKfHV/NZGViJBQseLvj55PSTN4ryp
owRnvCc4nKB6nODZ3vk6mYCZ+i3ne20d3lKr+46kEZi4Ie3WlVpcrsm6f1VA
IA385vUfsuT4OLz+z42lBEqm9+DOHdexvcor7tVOgvHouTpr4SWs7bu4aUJJ
UOfSJjvUIcETG63v7CZgr3GWuie/gDTtTk5sP4G7/9EuFarheJdXLFYT9Ewv
KNtZn8P0W03LeoOz9xhSn/BLcbf65UeGRwQV8L/w8OfzkB3g71ZMEjyXpGgs
nHM43BE4eGiKoOSkqbqaWYzvSsYeiBYIGKGf/WVJPQV5QFhN8iJBHvEK9fTP
RyHVlOJHCILb1rZUOQTYlfjJtGaZ4GB9dGQZLwPMdcZ26UunGwN3sFZ5+EN1
4HTev84/bd6VrKR4qE8rgoJXnZ4qXyk4FoFa39fsDofTGW1kpTM96j+dPLw6

       "]]},
     Annotation[#, "Charting`Private`Tag$163018#1"]& ], 
    TagBox[
     {GrayLevel[0], Thickness[Large], Opacity[1.], LineBox[CompressedData["
1:eJwV1nk4VdsbB3BHbkmhDNelJGVIpdxyheKbIgmhgXSFNJKIRHJlyDxXkpAI
USopQhGKBpF5Os7Z+xzJzCmJhPzW76/zfJ7z7Gev/a71ft8l7+C67wQ/Hx8f
g8HH9//fPSf6GysGDurGmcaFu3Ue1RXYKXOOllZH5q1XRxPstmPzncSUZ9L6
MJu+udLdzhzGde1Pb0sfQIOOrIitnT2sjk+WXZM+jvIjxjomdufA3hi6M1ra
A/LyrzQU7PyRJmkWEiEdBA+jidLrtnEIEHymHC4dj54xj2prmzQcsk7P+/ot
E1dO+D7ayJ+PRXMBNoYr8hBpGO+4VLUEihaj/W8iC8AXO+s2EF4Br09aSBwv
AfMN40P/qypIFSylGIxyLOFI8WfGv8fz7p219dteY8kCznbZ1Fq8drq9zHq4
Ct7f81iRmg34oaQj+ujsO+xZk39WkdcI/qncJcsUazAW9nJosqAZGnP2z/c/
rsUz5ZQVe3e1ojZI/dPbtfUoZWv1rClpg1zc0NT90Qa8UU6zDlbrwNAkTbWq
NUHyo6f04PlOZA6+rBGJaYbs4ZdpOc+YEJHN5vX0tODyXFEdo64LUY6FJ9MU
2pDc9CB8eyELE9tze077tcNgibnR9lg2SjOHkr2C2iGmmLN17TU2AgXX7w8J
b0e/a+s/YjfYEGl4WJlxvR0u3Qv1WElsKNk9TqWy2zEpf/jxoXtsWPrmHzrQ
0A6zJvHKsVI2CkuKaiHfgZzYhKcP+tnw2FRV8OebDiycsEmT16ZwUn1l2tX3
HXgmWj5Zvo3CIY3/Ihd/6oCSkc34v6CwVVvdgb+zA9zxLFaUPgX+HZmio6Md
WFApdqJpL4VYiyCnaplOCMl/2TTsQOHBOf2VHu6d8OTnlViHU0hxT1vE8+oE
v4GUy8NICtEeMxOOvp0o7Pv0eiaawrmLBXV2YZ3Q+3jcNOEahS3+Cj7GqZ24
uC7w88NkClWxAm2rajpR0zE0ceoRBfpxVWSjPBOSG15wJOopNIwIDG9SZiI9
8/7s0kYKFesNTOLXM9F28Wjd4mYKaQ+qF1ttYeIPizdB020UHO69jWaZMOFj
HGFeRlHovf0+ts+LCc1bt3c1jVAYiaq9PlvHhGEUU0hPiAb1cfG4bTMT/qcf
7htfROOTkOmBig7y/y2XPVnCNB6H1Ulc+cwEQ9TTiG8pjXNBn24ITjERz750
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
8SBb+i4hstJG938WcUbn
       "]]},
     Annotation[#, "Charting`Private`Tag$163018#2"]& ], 
    TagBox[
     {GrayLevel[0], Thickness[Large], Opacity[1.], LineBox[CompressedData["
1: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
       "]]},
     Annotation[#, "Charting`Private`Tag$163018#3"]& ], 
    TagBox[
     {GrayLevel[0], Thickness[Large], Opacity[1.], LineBox[CompressedData["
1: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
1xZJ/pyeFsDEtlXn+m5b/f8DKZ6hjQ==
       "]]},
     Annotation[#, "Charting`Private`Tag$163018#4"]& ], {}}, {}},
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
  PlotRange->{{0, 1}, {0., 0.5996811224489795}},
  PlotRangeClipping->True,
  PlotRangePadding->{{
     Scaled[0.02], 
     Scaled[0.02]}, {
     Scaled[0.05], 
     Scaled[0.05]}},
  Ticks->{Automatic, Automatic}]], "Output",
 CellChangeTimes->{
  3.5443558507420187`*^9, {3.5443559829675817`*^9, 3.5443560022456846`*^9}, 
   3.544357142704915*^9, 3.5443573925342045`*^9, {3.54435751781537*^9, 
   3.544357557343631*^9}, {3.5443576899522157`*^9, 3.544357720115941*^9}, 
   3.544357799923506*^9, 3.54435792657475*^9, {3.544357964192901*^9, 
   3.5443579923125095`*^9}, 3.5443583404564223`*^9, 3.544358387374106*^9, 
   3.544358560897031*^9, 3.5443586668990936`*^9, 3.544358700014988*^9, {
   3.888236154085175*^9, 3.888236175237138*^9}, 3.888236540750778*^9, {
   3.888236785197341*^9, 3.88823686169129*^9}, 3.888236958483213*^9},
 CellLabel->"Out[48]=",ExpressionUUID->"b21e3e70-8b13-4445-be20-58fbcaafd8af"],

Cell[BoxData[
 RowBox[{"{", 
  RowBox[{"\<\"bottomlessCoffeeFig17.eps\"\>", 
   ",", "\<\"bottomlessCoffeeFig17pn.png\"\>"}], "}"}]], "Output",
 CellChangeTimes->{
  3.5443558507420187`*^9, {3.5443559829675817`*^9, 3.5443560022456846`*^9}, 
   3.544357142704915*^9, 3.5443573925342045`*^9, {3.54435751781537*^9, 
   3.544357557343631*^9}, {3.5443576899522157`*^9, 3.544357720115941*^9}, 
   3.544357799923506*^9, 3.54435792657475*^9, {3.544357964192901*^9, 
   3.5443579923125095`*^9}, 3.5443583404564223`*^9, 3.544358387374106*^9, 
   3.544358560897031*^9, 3.5443586668990936`*^9, 3.544358700014988*^9, {
   3.888236154085175*^9, 3.888236175237138*^9}, 3.888236540750778*^9, {
   3.888236785197341*^9, 3.88823686169129*^9}, 3.8882369602152576`*^9},
 CellLabel->"Out[49]=",ExpressionUUID->"a2627903-d89a-44a1-a433-d327b6f4f660"]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"Manipulate", "[", "\[IndentingNewLine]", 
  RowBox[{
   RowBox[{"Plot", "[", "\[IndentingNewLine]", 
    RowBox[{
     RowBox[{"{", " ", 
      RowBox[{
       RowBox[{"omega", " ", "r", " ", 
        RowBox[{"phi", "[", 
         RowBox[{"z", ",", " ", "a"}], "]"}]}], "\[IndentingNewLine]", ",", 
       RowBox[{"omega", " ", "r", " ", 
        RowBox[{"Sum", "[", 
         RowBox[{
          RowBox[{
           RowBox[{"termTable", "[", 
            RowBox[{"t", ",", " ", "z"}], "]"}], "[", 
           RowBox[{"[", "i", "]"}], "]"}], ",", " ", 
          RowBox[{"{", 
           RowBox[{"i", ",", " ", "n"}], "}"}]}], "]"}]}]}], " ", 
      "\[IndentingNewLine]", "}"}], ",", 
     RowBox[{"{", 
      RowBox[{"z", ",", " ", "0", ",", " ", "1"}], "}"}]}], 
    "\[IndentingNewLine]", "]"}], " ", 
   RowBox[{"(*", " ", "Plot", " ", "*)"}], "\[IndentingNewLine]", ",", " ", 
   RowBox[{"{", 
    RowBox[{"t", ",", " ", "0.", ",", " ", "1800."}], "}"}], 
   "\[IndentingNewLine]", ",", " ", 
   RowBox[{"{", 
    RowBox[{
     RowBox[{"{", 
      RowBox[{"omega", ",", " ", 
       RowBox[{"2", " ", "Pi"}]}], "}"}], ",", " ", 
     RowBox[{"0.1", " ", "2", " ", "Pi"}], ",", " ", 
     RowBox[{"8", " ", "Pi"}]}], "}"}]}], "\[IndentingNewLine]", 
  "]"}]], "Input",
 CellChangeTimes->{3.8882370187902813`*^9},
 CellLabel->"In[50]:=",ExpressionUUID->"cebd5207-7fe9-465b-bba7-8924b5539dab"],

Cell[BoxData[
 TagBox[
  StyleBox[
   DynamicModuleBox[{$CellContext`omega$$ = 2 Pi, $CellContext`t$$ = 0., 
    Typeset`show$$ = True, Typeset`bookmarkList$$ = {}, 
    Typeset`bookmarkMode$$ = "Menu", Typeset`animator$$, Typeset`animvar$$ = 
    1, Typeset`name$$ = "\"untitled\"", Typeset`specs$$ = {{
      Hold[$CellContext`t$$], 0., 1800.}, {{
       Hold[$CellContext`omega$$], 2 Pi}, 0.6283185307179586, 8 Pi}}, 
    Typeset`size$$ = {360., {109., 113.}}, Typeset`update$$ = 0, 
    Typeset`initDone$$, Typeset`skipInitDone$$ = True}, 
    DynamicBox[Manipulate`ManipulateBoxes[
     1, StandardForm, 
      "Variables" :> {$CellContext`omega$$ = 2 Pi, $CellContext`t$$ = 0.}, 
      "ControllerVariables" :> {}, 
      "OtherVariables" :> {
       Typeset`show$$, Typeset`bookmarkList$$, Typeset`bookmarkMode$$, 
        Typeset`animator$$, Typeset`animvar$$, Typeset`name$$, 
        Typeset`specs$$, Typeset`size$$, Typeset`update$$, Typeset`initDone$$,
         Typeset`skipInitDone$$}, "Body" :> 
      Plot[{$CellContext`omega$$ $CellContext`r \
$CellContext`phi[$CellContext`z, $CellContext`a], $CellContext`omega$$ \
$CellContext`r Sum[
           Part[
            $CellContext`termTable[$CellContext`t$$, $CellContext`z], \
$CellContext`i], {$CellContext`i, $CellContext`n}]}, {$CellContext`z, 0, 1}], 
      "Specifications" :> {{$CellContext`t$$, 0., 
         1800.}, {{$CellContext`omega$$, 2 Pi}, 0.6283185307179586, 8 Pi}}, 
      "Options" :> {}, "DefaultOptions" :> {}],
     ImageSizeCache->{405., {168., 174.}},
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
 CellChangeTimes->{3.8882370267016163`*^9},
 CellLabel->"Out[50]=",ExpressionUUID->"966493b7-cc90-44c8-8713-6e0cc5f5e9c0"]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[{
 RowBox[{"bottomlessCoffeeFig17color", " ", "=", " ", 
  RowBox[{"Plot", "[", 
   RowBox[{
    RowBox[{"Evaluate", "[", 
     RowBox[{"Table", "[", 
      RowBox[{
       RowBox[{"BesselJ", "[", 
        RowBox[{"n", ",", 
         RowBox[{"x", " ", 
          RowBox[{"BesselJZero", "[", 
           RowBox[{"1", ",", " ", "n"}], "]"}]}]}], "]"}], ",", 
       RowBox[{"{", 
        RowBox[{"n", ",", "4"}], "}"}]}], "]"}], "]"}], ",", 
    RowBox[{"{", 
     RowBox[{"x", ",", "0", ",", "2"}], "}"}], ",", 
    RowBox[{"Filling", "\[Rule]", "Axis"}]}], "]"}]}], "\[IndentingNewLine]", 
 RowBox[{"bottomlessCoffeeFig17bw", " ", "=", " ", 
  RowBox[{"Plot", "[", 
   RowBox[{
    RowBox[{"Table", "[", 
     RowBox[{
      RowBox[{"BesselJ", "[", 
       RowBox[{"n", ",", 
        RowBox[{"x", " ", 
         RowBox[{"BesselJZero", "[", 
          RowBox[{"1", ",", " ", "n"}], "]"}]}]}], "]"}], ",", 
      RowBox[{"{", 
       RowBox[{"n", ",", "4"}], "}"}]}], "]"}], ",", 
    RowBox[{"{", 
     RowBox[{"x", ",", "0", ",", "2"}], "}"}], ",", 
    RowBox[{"PlotStyle", "\[Rule]", " ", 
     RowBox[{"Directive", "[", 
      RowBox[{"Thick", ",", " ", "Black"}], "]"}]}]}], "]"}]}]}], "Input",
 CellChangeTimes->{{3.5443539395237036`*^9, 3.5443540009842186`*^9}, {
  3.5443541593872786`*^9, 3.5443541596002913`*^9}, {3.888237072263771*^9, 
  3.8882371350628777`*^9}, {3.888237166457963*^9, 3.8882371683444653`*^9}},
 CellLabel->"In[55]:=",ExpressionUUID->"7149dafb-c6ca-486b-91e1-9b8134fd94cc"],

Cell[BoxData[
 GraphicsBox[{GraphicsComplexBox[CompressedData["
1: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
kVk=
    "], {{
      {RGBColor[0.368417, 0.506779, 0.709798], Opacity[0.2], EdgeForm[None], 
       GraphicsGroupBox[PolygonBox[CompressedData["
1:eJwl0slL1VEYBuDftdoFadOiHEstrRSUIELSrLS1VFY2QJsGc1hULmx2CApB
rSwkSgkrCdo1DwtXZYOrskW5qEVC0V/Q9Hy0eHjf83Hvueccbt6+lrrmtCRJ
UoyxeXaS1LJIX0wmWWSzxYd+yfucZBuV7Defw0u9j4PksNXst3zAKeqp4oB5
Oq/0fg6RG/uZ/ZEPOc121sd+5hmM6xdpJC/2M/srH3GGHRwxy+S9fp3q2N96
Lq/1Sxym3Xopn/QRlsTvpf4/xGNxNvbUi/ii7+SonsUH/Qbn9TK+6xviXPo8
3sS95Fou692yhG/6oKymST8u8/msD8h13NJ75Gru8DPuIWu4F2eOe8oUwzyx
7pVrGKUjzi6LGeGr9VVZxV0arI/JbG4yGW8iKxjSL8hyfujX5MYQbybn8zbO
yjm9lGm9mRN6AVP6bfLjzazTeKp3sos26xw+6sNsosl6Ae/0K7RQQIPZDJ7p
XeymJn7PbCETcTdaKYz9zWbyPN6cPdSyLL5rPosXcXb2xn+d5RRRzApWsop/
+VtXpw==
         "]]]}, 
      {RGBColor[0.368417, 0.506779, 0.709798], Opacity[0.2], EdgeForm[None], 
       GraphicsGroupBox[{
         PolygonBox[{{3144, 3146, 50, 431, 327, 415, 239, 310, 398, 168, 223, 
          294, 382, 113, 153, 208, 279, 367, 73, 96, 136, 191, 262, 350, 49, 
          48, 47, 46}}], PolygonBox[CompressedData["
1:eJwt08lvTXEYBuBjqA5uax7KRm1IkBClqkpEGlNpe7Gmt6aVoTUWIVGJmkoa
EUMTUSHm8Q+gprUhEbWpRCUkEvO48XyJxZP3/b7T87v3nttblFmfXtczSZIe
vPyf81NJMpdCfTjDGMoQBjOIgcxkGbu4y1+WOGCALGcpO7nDH9Ku9ZdrOcoT
CuxWMyPuZQe3+U2NfT+5hhYek2+3ijK9jReMNDeQ1hu5xS+q7QrkeV4z2twY
r6e/Y4K+jyP6I1L6SqbrH5ikN3NGf84IvZ4afZY8wRt9rNzDdr1EtnBTPyt/
yiqZL6/JCtr4aL4oizlEu/myLOc4nfG+ZVGcG5/ZfFXO5iTd5gtyPE0cNpfK
YzzUz8m+1FFqniNP816fKPfHrJfJVp7phXIj1XoXY/TdbNNv8IPF5lSczytG
xfV4bvpbxul74zPpD8jTM0zTT/E0/qfMG6jSt3Kd7yyK9yzrOEgHuXa1lMRr
syWeI9+otM+TGQ5wnxy7FUyN89gcz42vLLTPlbU0c49su+VMifPYxBW+sMA+
RxbHvTTEd8Tn+I24li37kEVvehG/pclxL/Vc4hPz/P0/AY1f4w==
          "]]}]}, 
      {RGBColor[0.880722, 0.611041, 0.142051], Opacity[0.2], EdgeForm[None], 
       GraphicsGroupBox[{PolygonBox[CompressedData["
1:eJwV0LtLlmEAhvEnddG+htQsBQOHHD2l4WYkNAh5+DSlwUEXSyHP2RA46GLq
GijkZOBi5YkGByEPleb59CeUDXkmx37fcHFf9/087/vCm9XYGn0ZF0K4hg8o
jYTwCF8Ni9iKDyEHH12qxE38tR/bnmBdb0Ueluzbtlx80quQjGP7ia0cG3ob
8rFs37Hl4bMeRQoSE0Josv3iAzhx71SvwKbejgKs2Hdt+ZjSq5GKJM8/t/3m
b3Hq3pleiS29AznuDOkR3NfT9R7+j9fwaT7CS/h7nolv3rMnCzDt7LGzcV7D
7/E+3i7j5TP5RfbKW86vyxd6izzSK+Sk/kYO6sXynf5KpskGuSD75JnvnvMq
NOvb7pfJCb2T5/JhfgP1fF4W2jP4a37Fn/IZPsof8jF+F9+9ez/2DzATu4ds
5/16AtL0iN7M//AhnHvmQo9iR+9CEX7YD2Lfxqxei9u4sF/aqrGrd+MBVu2H
tiLM6XW4g0v7Gn5iHf8BkgdWfA==
          "]], PolygonBox[CompressedData["
1:eJwV0jlPlFEAheE7AwkUNCwNFMiIYrDFDhnWGAorGhNkE8FYEEaoiGFPWFqW
BgqBxkQqGgoLQcE/IeugaCtQsz23eHPec+bOzJ0vk+rNtA0mQwgJfMEZeVEQ
Qgt+8QNkc0JIY8fBHqRwa7+2teNAH0UdDu1ntnrs6m/wEHf2G9trHOpjSOPI
/tvWgO96LypRmBtCxvafL8QLxu/UO3DEx1GPcudGbdf8E4593h+9ET/0t6h2
Zk7PwyO9SP/AL/giavUVvRSJeFfZiWP+0mubfILX8AVeiG7+Ld7b/oCP8Yy8
0V/JbX2NN/F1PiIrZJ/ckzPyxF3PeRPex935VvlZ/yj79KdyXh+W+fH5ya9y
Uj72erEc0gfkpd4mt/Ql/pyv8jIk4zPUu/gJn8QzfVEvis9Lr9DH+S1fx6n7
/dWbsa/3owolzg3brvgycpCwddtO+VT83ch6/z9bC37q7/AEuUg632PP8mk0
x/+VbcJ2xzfipm/oKfTzfTkr7wHLt1Xx
          "]]}]}, 
      {RGBColor[0.880722, 0.611041, 0.142051], Opacity[0.2], EdgeForm[None], 
       GraphicsGroupBox[{PolygonBox[CompressedData["
1:eJwV0TtP01EAhvEjKJNcNlQoyAQjMAgtOBBJGFjAKCJITXBwUOti5GLiYMRN
7AYJECdJXHQxCoiDX0AUgbZc9AOAjmpBE39nePI+73tO/701jN69mCkJIRzD
Ii6cDKEbeUMO/3DWhev4gPOlIXzHlv0v6m1prKLT/g2b9k79AQq4ajuK2LP6
T2T0quMh1PERvEeHbQ8b7i3oR/EZesK9Dl7Fs2jVJ/U8BvXDiNeckrNIOX/m
7DXv5z/4HV7JE3yJD/Ey+QRN/Jr9Be/hK/ymTOm7+OrZj/WP/Iasl2PyueyS
8+4/lG/0AXkYv1/8jHptfI7+SK7qaVkp78XPKFvkhPOXvJfn+BVejHjfajmD
pLNpZ694Hz/gt3kFr+Un+BQa9WF9GUl9B+ueM6cXMaHXuJPkFXwazfq4voUB
/U/Ea57q+7ill7tTw4fi74d22za+uNeuj2ETl22/I/Yz8b/HO7TZCvhsb9Pv
YwOXbL8i9tPx/8RbnLPlsWb/hP+fglk/
          "]], PolygonBox[CompressedData["
1:eJwV08lvTWEcxvHTeVBDQpGw0RZt772ssGIhvegoYWNhodc8S6oSEYmahyVF
wspUY6KGoigSnYu/QSdDWxvD2uddfPMM7+895773nDMvtX/dvvQoitIwhsdM
siCKVuID/x7vMIFpBtfiERIZUfQFHfpxTNXV4SHi+s94q18shxsMoEb3C2P6
s/Iotsm5mVE0ha/FA8R0n/DG3FX5Hw7Js80t4veiH9W6Cfw0V0ibsczMGWsj
2CrnyJP5dP44SuQa+Saf5O/z5fwAXofz0pR+Lr2OFfwVM0dpq7ye/g2/gTbK
s2hCbqLt8kY6iTbQCzRB91g/QlvkSton76RV8jh+uG8H3aSbQRvpJbqUng7/
KV/HD/Nb+Gy+gE/jm1AsV8v3UCb3o90159BrWG79srU/OCjPlON8Pn8ecXm3
3IvK8Hzw3f5T8hA2y1nhXHwV7qJU14dX5mLyLvRgTXge+KbPD9dDCxbqevFS
Xx7Oj26sDufHqD4v7McdLND14IW+Dc/xDCPIDftwG/PNdOOpfhg5ulW4hRJ9
F57oy+Qd6Arr4XwY0p+UB5GSM50xm0+G9wPFuk60mmuWf6NBLjRXyufx5xCT
t8udYW84OwbtmU4vYon1E+Hd5mv5r3w9n8Fn8W38Bj6iB+gxWkQrrB2mN+SK
oOF7oUXyR/wHF/dzoQ==
          "]]}]}, 
      {RGBColor[0.560181, 0.691569, 0.194885], Opacity[0.2], EdgeForm[None], 
       GraphicsGroupBox[{
         PolygonBox[{{1208, 3137, 3136, 1206, 1835, 1634, 1478, 1365, 1291, 
          1249, 1867, 1666, 1510, 1397, 1323, 1207, 1836, 1635, 1479, 1366, 
          1292, 1250, 1868, 1667, 1511, 1398, 1324, 1907, 1706, 1550, 1437, 
          1950, 1749, 1593, 1995, 1794, 2040}}], PolygonBox[CompressedData["
1:eJwVzz9I1GEAxvH3TMui3aby/jTW2qaUBaW1CJqVGbimd2uWrmljXaVCW5p1
ZgQKYprXFJxLQ6klWkbDDUEgiKZg9nmHL8/zfX7v7/3dJTtzzdmKEEICD1F/
NIQ6jFWGcPxQCC0HQ5ipCuEi/tm+4Kz9jn3VdhtJvLSfsLfa3/FL2Le12/K2
bX4fi7Zzth7bGu9CCt22EVs1Bvkr52ptV/ksb0Qvn+Q1CPwmf6z/1fvxiJf4
KSx5v4Hf1b/H+zHAizwd4Vk+qh/GtP5HDtmf6Z/1X/KMLMmALRTcm5Rt9k9y
zvnncoWXZRPvk1Px/8lj8r3clBsy4XmHfMKX5Q5/K8v8txzgebnAT+OjvhfP
+u55/Z7+w5mC/lPP6g/0D3omwnP8hX4Ew3zcuynbtfhb+GVU4JbtqW033oGv
zl2w9drW4z04idf2tP26fZ5fwQF8s0/gDTKe3/C8aP8POSVSHw==
          "]], PolygonBox[CompressedData["
1:eJwV0D1MU1EAhuEjtrA4CK2COIgzIyZCKcKGoi7Gn5kCiThQYdLFn0QngRAg
UflR2UhQioMTjoYWJaBojQkDLA4mJtBWWRj06fDm+773nHtz29Op9JWBihDC
IUyi7UgISTyNhHC0KoTOyhAWoiEksMet4Cw/wG9y3ajFM76aP8+/tltR4K5y
T7hd+x6yXDOX5r7aKdThJveSO4xx+7l7NdwF+42dRJG7xg1ze/Z95LgW7jb3
ze7BI3vZPoUTdr/9So/gnf5bTpS/Wd/Qm5DT/8kp74vpXfq6XHRvTv6w2/Q7
ekbfkjG5LIvl3ydLnr0uR+y8LLi/KH/av+QDe0xm7R3ZKD/IA1mSq55PyEH7
i8y7Py+37V79sf5eb0C9fcue06OYLP9n9mf9DKa9K25f1DPOzuGuvWTH8cf5
DXtULzp7iI9cKzfEfbf7cBIz/DH+Er9kt+Mv9wmzOO7ssrO3fAf2uTW8wH9U
2lRh
          "]]}]}, 
      {RGBColor[0.560181, 0.691569, 0.194885], Opacity[0.2], EdgeForm[None], 
       GraphicsGroupBox[{PolygonBox[CompressedData["
1:eJwVzT1Pk1EAhuGDKaBYfoBuDP1cZGSTSYUBtToqtP0B0lZXW11b2SD4uZmo
YcBWa5wILbqoAwMDoVAEMZGExMSEYKImXgx3nvt5znnPO5Sfztw6EULowQzO
R0MYRTMSwlcM9IZwHR+R6wsh3R/CW3tav4PvuG8ft2/bT+nX8AFZe8r+xv5U
H9RfoWRL6XHeRk2/re/hnj6md30zzL9gTn/gbJ83+D/+iOf5SX7Il/hZ+Q4V
nrF3+HO+wlfllJ6UDW8fyR58woh9T67JZ/KJ+wfyp/5eRuW6fCmLMun8l/yt
t2RMdmVLVmXJ+S5f4N94hV/iW/57jn/GrF5z9oPX+V/+kOd4Pz/DmyjrV/U2
JvWEXvfOY/20/gIFW0IvHv8XZdtF26Z7Vf0P5m1ZWx+/ghZu2uK21+7F9QJ2
cNd+wd6x9+qXsYwb9ph90b6BiG0C/wHDAE+3
          "]], PolygonBox[CompressedData["
1:eJwVzDtMk2EchfFXo+3CqoC2QplZcbJFUHTjPihuDniB4IBKAhvexoqJDDoo
oCROxCKFQQkLCQtqawIoDro4kJiYtFDUmvjr8OSc8/y/701cvtE9dDCEcABp
JKtCSGH2UAif8A/nD4ewhN5ICPFoCC+5PMo4xy+ixy3m9oKrt69jGyP8aT7H
37P38Ii7xP3ljuoZjNltbll028ftGfeTeh5P7Um3qD6DQbvOLukreoNcxgP9
Gv9Nf6V/0fPytt0sP3qzKMv2qmyU3+WanJB3fb8jf9hzctfekBN2n/zj/1+y
YL+VR+RX+VqOyrO+/6xP6wt6l35Mn/Zfk57DE/ux2089q0cq32NAP8En9He4
b1+tvIdbdsr+4J07dhEPuYvcb+6M/QadXC03xcXtK9jCTT7Jv+fH7QLS3AVu
n2u159HB1XDPuZjdj00M86f4db6EFi6Ddr6af8b9B3o5VDI=
          "]], PolygonBox[CompressedData["
1:eJwV01dsTmEAxvGD1iy1XRiJKyNRWtSqPe7sC3uE2usGNRNblba2xGjtzQ0J
tWntHUKIkRjVqhoXJFzg9178+zzP/z3n+76TnDYeN2vQzLJRFJVBPX9Wx0RR
SlwUbZVbcB3f0CE2io6iT/koiq8QRZu5uvZYPMYMPpkv4L+iPXcEvflq/Cau
jj0GjzCdb8vn84vtr8jgBnOlXDv7MHpxVbmN3Aa7rJ2DSVxtu5F+Dsvt0fYb
/ZD+UJ+mt9GvufePnq83lzeQrS9yzQf9RPhO/alcYw+SX8JzyB/h82VN+VKe
lGky2fWF8rm9Wx6y78uedpzc4P6f8q99UybJd/KB3CbXu75EP62XkbswUa/F
N9TzsMweZb/WD4Z79al6a/2qz2+mX0eWvdDZF6TbA+0S5zXCs2Gu3dbZQfSw
q4Tvd55tR/ZOTAjPaI8Mz4EpXBJ3xXULwm/Fam4A95lrYx9Ad64ylx2+zx6B
e5jMJ/KX+WK05vajG1+Jz+IycQlFSHK2D12dV3S+jruIT0jk96KLswrO1nLV
7eG4i0l8K/4CX4hW3B505svzGVy8PQx3MJFvyZ/n59ufsYrrz33kWtq7kcLF
hneCy7L/YQeXylXTG+hnsdQeat/GBDvBPueepnoBMu15zoqx0u5nfwjPoB/H
HDvBWS462TF2enhu/T622pnhd+qnwjulb9fH61X1X/plvb48gyX6EP6VfkC/
pafqLfQ8n/tbv6Y3kW/D/6BcJ9NcVyTfh98li+wncoXdN3j3lsrv4f2U8fKF
PCZnyxau/yif2bkyJ7wLsqNdTv4HGAKYlQ==
          "]]}]}, 
      {RGBColor[0.922526, 0.385626, 0.209179], Opacity[0.2], EdgeForm[None], 
       GraphicsGroupBox[{PolygonBox[CompressedData["
1:eJwV0bkv5HEcBuAvxYYlSonCnKbT0dBbrAJD7Zh1VfSWrCOx1vUPODpm2NqR
UMhWmw2FSNwS0YmoZCkkdp8p3vze5/38ppiZeGYkPVwYQiiQaakvDaFOWotC
aCgJofFjCDPFIbxzVmJSaY/au+xn/E3a5JO9yf7d/o9zEpeIPWbvtp/zPC/y
EU9wHw/wOldKu63R1myb5SDLvMo3+qb7KI/xPl/q13qNvq3v6hW+wws/819O
+ExUj+tvnj1uh56/OOLdC/cFXuIyPna/43uu5kn3fh7kD7zhfsKnnOII53iL
y/mBH/mJ0z7bpH/Wf9h/63/0An1FX9Nv9S3vfeVxPuBa2eE9ftWT+d+fE9yb
/948JQO2IVvWFpUOW7OtxTbHhfLTVpX/P+xJe8Z2xdPSKSlJuFW5fXG75v+P
y0WN
          "]], PolygonBox[CompressedData["
1:eJwV0bkv5HEcBuCvjYI1DWbGKGU7DZ1NGFaso2bZzvUH2AJjJI4tFI4/wJI4
phGtI6ESlVjXZis0opPNVm4qnl/x5vc+72cmk5mp6P/RPvAhhJAnU/I5FkKN
NBWEUFsUQvpjCGOFITzwksSl2F5qb7cf8aB8lTp7vX3c/sjLkpASe9zeYT/m
Iem29dpWbGXSbEvbGmwT/MTzvMAXvMIZzvIOn+uXepW+oW/pd/qtfq8nvb5U
T+ivnt/c9jz3+cRtWp/VY77rb7crvuZKHnbv4T7O51X3P/yXP3GK13id43zD
//g/V3OL99fzF37znHQ/8DzkZ7df+qJ+aV/lER7lXa6WTd7m++i3iX5zTnIn
n/IMz/ERZ7iX+znH5dJqa7A12n7yC+ckFf0f9jJ7l/0s+mxpk3JJuqXcvkff
l7PyDuODRkA=
          "]], PolygonBox[CompressedData["
1:eJwV0btPU3EYBuAfJNL2tCRcFgcWNyMsQEsBWQWRzUWKTAzcNBJayn/AZXNA
UHEEHA0BRiwXDU7GBcJCmCAEEIiTK0+HN+d93i8naU4fDU28fFcZQqiQ99KW
CiEjVVEIzxIhfI+HMCxZaU6G0GrP2694QeLywB6zd9tLPCKvbDnbJ1uNtNta
bGlbga/5g0zaCrYN2xNJ2KpscVsP7/AMz/EBj3I/D/BnrpUVXuMzvcO9lTM8
xT/1A/1v+ffqi/qhfZHzPMWbfKQf6436N31df+g73PEd/+MWjrwX4wT/93zu
vu1Z4gb3XfdZnueIf7mf8Ck/5jH3HL/mSl52/81/uE5f1b/q5/qFfql3eiet
t+lF+0352/ESH/ESF7jIW9wkyfJ/Y4tsvbzH4zJgG7R9sdXLU1vGlrVN8y1/
lJQk7En7C/s+v5EuqZbILeXW5/aD38o9XEJGTw==
          "]]}]}, 
      {RGBColor[0.922526, 0.385626, 0.209179], Opacity[0.2], EdgeForm[None], 
       GraphicsGroupBox[{PolygonBox[CompressedData["
1:eJwVz7kvw3Ech/EvFpRqFZuBzcCIupndKyWxO+O22MQf4D42MToSNrE4FzGV
RWwiFsVi9DI8+b2f59Nfm1aMjPePZYcQsrCM2oIQ6jCVG8I9+vJCKM4PIRYJ
IcE7MIk79LrF3YrcivkufrCkN+kNejsv4/sY1lLahHaLHi2mRbU4/+Kn/JjX
2OeY4zN8x/2Jb/J1/v3/Hfa1vag32km7Tf+w3+03PeG/HPIDXsor+SN/4Hs8
hw/xQT7u3Sr+yl/4nXuEr/IVfuNezi/5Be92//Us4oWeMfdvO2Nn3E7sI7va
frbT9pk9a0/b2z6f5ht8jX/xBd7A63krL+G7SGkD2ph2jS4tqhX8/z7fQgbz
elKv01v4KK7QqRfqET3KN/GJOb1er9Wb+R9pI0FC
          "]], PolygonBox[CompressedData["
1:eJwVzrcvxHEcBuAviUQdhSuIxGZiYlOORB1M6qCtrDgk2iL+AWVySsxKwiIm
EYuaCIPYREzCoCUew5t7n/dzd79f6cBox0h6CCFNZqQqN4Rqmc4M4Vb6skIo
zg4hnhNCCbfLlNxIr1uRW8ytmLfkVxbsjfaEvY3jvCHDtkHbpO1aemxxW9RW
xB98wHtcqR9Jksd50/2B13iFf/hMP9Xn7cE7N3A9t7pV8Cu/8LN7Pu/wNse4
jK/4glOcwUM8wEm/L+cnfuRz9zxe4kW+cj/Rj/Vut6///+SIz7jbu/6mv7vt
67t6hX6v3+mH+oQ+pm/4/j2v8jJ/8xwnuI5bOMrrMmjrt03YLqXLFrUV/j+f
U/Ils/Z6e629mcflQjrtEXuBPcrr8ikz9jp7jb2J/wCQl0Uo
          "]], PolygonBox[CompressedData["
1:eJwV0M9L03Ecx/FPP2xZgvcuttbmEjxpGvUf1DZD0Owa2dwS/QdqK+gXtK3+
gX4c25zWTQvKpFMEBdIpViKKhxRPlgYdfHwPL77P5/P9HRuLX5senjoYQjhg
FTvfEcIF6zkaQr/n7rEQ/hwP4V97CO/wAj6HP9pdXuZvvBvjT+yyltOuagk+
Y5NaUXukrVheS2sp7Qwf5It2Rytpr6P3+Ev+nB/BNRviWT7mvo238KbexA18
Cn/Hy7iBY37/TV7gD32ml6/xVf7NvZM/5TX+y72Lf+JL/Ib7f89unvRMu/e5
/+U7fM/9BH/L5/kAb+Ef+AMu49t4zuc28Hr0HfoL/Ay34S/4M67iHM7gK97/
Hf1vvM7juG5FPsEfuH+N/mte5T/5OE/x09Hv5Wf5eytpt7RZ7TCvWFa7pI1q
J/krK2h57b7WsutaUktoKd60Q9pjy+gX9RHtnu0DnaRN0g==
          "]], PolygonBox[CompressedData["
1:eJwV08dzjVEcxvGTghR9Y2HDDJFIFWJGr3sSCUYXzCCVv0AJM3qKskTYCRE9
wkLbEEbfGDMSosxoK0OU+JzFc8/z/f7Ofe9733vu6PKakurEEEKCZHj5NSCE
ooEhJKeHMCAlhP4yWTbIDZmfGkK/tBCSzPvhRvkkW/hCvoAvwkPwMVnKLebW
cx0yj0vmErlknIXbZCtXyzVwz/Bh3Ig/4lo8AefjSfgtPo2b8WD9qCzBZXid
+T28G9fh6/im3qHP5ZP0BD2J/65/1b/yI3znVnwWZ+IM/BI/x+dxCt6Ca3C9
9+bhHvwWPzUfhptwA/5gPgrfw3dwjfk/awHOs040/6i/17vNTukn9UH6I71T
P6Iv1kv1cvvv4l14J27Hc3AiDjgRj8OtUstVc4e491LN5XO5XCEeGJ+tlHGL
uLXcNZnNJXB98fngg9IjVXwel2PvBLxGrsosPvD/4j3gPuemwLparshM8z75
G/eYHeDeSSWXy2W7Xj5eJZdlRnxG8sfsr/374+8sFVwON97+PJyOm6SUK+FW
cpdkevws+c3/8f4M/ZzU4Cr79tnTLZu5bC6Ly8VpuFEWccXcCu4OrsM78EU8
Ld6X9HK/XftLvLbeYj5WPyvVuBLvtf9JvCaux114Ex6PM3EO7sLN+ARO1R/q
D+LZ10v0hfpy+27jnXg7vhD/f/p1fWr8nvIL97qfb9Yv/Od4L/oZfYz+Qn+m
t+hVeoW+J/4Oerf+mB/qnDbgQ/hNPGf6bX1jfJ7WLDzOmm2Wb+8H3BP3mg/H
J/FxnIJH4058P/5H4nnCxXgBXhbPKH6NX+Fb5ql4B96G28xH4g7cjqeY/7D2
Wn9y/wFdwp9Q
          
          "]]}]}, {}, {}, {}, {}, {}, {}, {}, {}, {}, {}, {}, {}, {}, {}, {}, \
{}, {}, {}, {}, {}}, {{}, {}, 
      TagBox[
       {RGBColor[0.368417, 0.506779, 0.709798], AbsoluteThickness[1.6], 
        Opacity[1.], LineBox[CompressedData["
1:eJwV1GWgVFUYBdBHp3T3Q7qRlO6wwRYVBLEpKbEVUEIwABEwAEEa7O7GVrC7
sbtz7R/r7X2+Yc6cuXMvhWMnjZxYpKCg4BZ/ksP8+V5u4kz2oxNFKUZxSlCS
Ugz373+Qm5nK/nSmdN7rtR/lFqZxAF0YbV6Kh/X5nECZvNfsJ7mV6RxIV8aY
l+YRfQFjKZv9zH6W25jBQXTLfuZleFRfyDjKZT+zX+R2ZnIwk81q8bK+ku7Z
37osj+mXMVtvzSf6iZylN+JNfS3l89nWv8odeZ0LrJvzgX4IU/TavKIvkT1Z
pc+THfhCXyUHsm/OLMuxlsetr8ycRfoc2Yab+NR6hezPVsZbz5KFrOMt62Wy
N5u5Md9JdmYD31hfJwezjb1yXeRvcrW8WV4uuzFLv1C24EN9uezLiNwrsg67
9Gvzu+od+VLvkeuml+cJfTFz9bZ8pp/E2Xpj3tbXUSHXzfr33Jt5nZG5x8zq
sjvnpifjc26ezFk5mYqMMPtD3so5HEqvfJ55BZ7Sr+AUKmV/sz/lbZzLYfSm
ct7rtb/k7ZzH4fShClWpRnVqUJNa1Gaom6OOrEs96tMge9vvb3kH53MEfXN2
84o8nd+cU2mYzzP7R96Ze4sj6Zezm1dip34Vp9Eo+5n9K+/Kb8ZR9M9+5pV5
Jvchp1OY/cz+k3dzEUczzawer+rXMyD7W1fhWX0pZ+TaWu/NO/p6Gufz8p8J
94iLs6feko/0Y5iu1+c1/QYW6PvwlT4w59Kr8ly+l+zBMv0S2Y7P9ZVyABPy
e8kmvKtfLfvk+dAXyS5s5Nt8DzmE7Tlzvqcswhruzf0gu7OJ2Tm7bMV6Pra+
RvZjC6OsZ8gGea54PddE9mK1vlB24us8E3JQ5JrJajyfs3Kp3p49+sTcX3pT
3tM30CTXzLoo9+lzOJaZ1g15Q1/DYCZYV+cFfTmTaMoos2Lcr8/lOIbk88xq
8GK+G5Nplv3NivNArjnH516med5rXoIHc3ZGM4wWtKQVrWlD27zmGWgn29OB
jtnP+0vykD6PMQzPec1q8pK+gil5Pqyb8b6+kcV6V77LvSOHsiP3j/X/v4O/
ZQ==
         "]]},
       Annotation[#, "Charting`Private`Tag$354714#1"]& ], 
      TagBox[
       {RGBColor[0.880722, 0.611041, 0.142051], AbsoluteThickness[1.6], 
        Opacity[1.], LineBox[CompressedData["
1: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
         "]]},
       Annotation[#, "Charting`Private`Tag$354714#2"]& ], 
      TagBox[
       {RGBColor[0.560181, 0.691569, 0.194885], AbsoluteThickness[1.6], 
        Opacity[1.], LineBox[CompressedData["
1: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
Ee+Llrn+f0ao6yk=
         "]]},
       Annotation[#, "Charting`Private`Tag$354714#3"]& ], 
      TagBox[
       {RGBColor[0.922526, 0.385626, 0.209179], AbsoluteThickness[1.6], 
        Opacity[1.], LineBox[CompressedData["
1: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
+z/DMTag
         "]]},
       Annotation[#, "Charting`Private`Tag$354714#4"]& ]}}], {}},
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
         Part[#, 2]]}& )}, "AxesInFront" -> True},
  PlotRange->{{0, 2}, {-0.3461261627623216, 0.581865099506474}},
  PlotRangeClipping->True,
  PlotRangePadding->{{
     Scaled[0.02], 
     Scaled[0.02]}, {
     Scaled[0.05], 
     Scaled[0.05]}},
  Ticks->{Automatic, Automatic}]], "Output",
 CellChangeTimes->{3.544353935279461*^9, 3.544354075781497*^9, 
  3.544354192963199*^9, 3.888237113239634*^9, 3.8882371485633583`*^9, 
  3.888237184532221*^9},
 CellLabel->"Out[55]=",ExpressionUUID->"6055aaa7-36b8-4687-aab0-dca76e8e00b6"],

Cell[BoxData[
 GraphicsBox[{{{}, {}, 
    TagBox[
     {GrayLevel[0], Thickness[Large], Opacity[1.], LineBox[CompressedData["
1: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
       "]], LineBox[CompressedData["
1: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
I3M16L0Y98rm5ibkb2YRcV016H9beKt4
       "]], LineBox[CompressedData["
1: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
Rvq0v/os2diFX0/EhAVoZeSAREzcjU1dcFkwsbtguozwUl4OGe7qgkhi1/xz
pynktsK1G1NHu+D7YIx1TZJK7H9t9j52twuPa/h+mPmUk5KMjbF5D7og1hz4
YCCtnMg/k6cpeXehZ5HH252/y0mrppjwXEAXchctixjfQSOmocxXXz52YYMV
T3ZfJ43sNUuKmU/vwr5/QXJ31CpJuEosxamhC7xR7W2GxysJhy+it7mlC+tK
hq/XuFWSrJTnqsndXQCD8benopKoiTilW8504VRaRJeZXRWRrlAtzVDqBtYP
ZzG8qsmdqHXdcmrdEIveVhkcW00abssserqlGxnWbR0ztGoSqCR0+KxWN/Jf
Gy78LvydLPIe+LnUtBs3wjc9ux74nbC0v3Q6uHfjkNIDvirdGvItuv/tzUfd
uMMvMutxrIZ4CqiYePt2I31zSZSITQ0Rrokv/BDUjV+SK5/m3KkhitYJ4W2f
uiH/Md9BK6GGHHdLPmla0w19i+Bz/4RqifRv5tKzdd3wqv6YuUOylvzR3Uxx
ae5Gg77u2eMKteSKYOq2553dWHTP5b7Urlri/TZNjDbZDfGc7c3FZ2tJenZm
JeR6UGjVNOCfWEvuyEw+PKLYg6TEjXxGWbVE22PHbkvlHjgdmrjRV1BLKvWz
P9/Z1oNFhhU6MbW1pLMhxzvdoAfHlUdl/2PWkrjd7D0lR3rwwsy44utkLXF+
v3ucbtKD+/rvbs7joROO/bezI5Y9MFqS8UlVmE7EWXnayld7IKB90DpEiU6a
T81O7LzZgwoFAd5KNTqJyNNK1L/Xg5ObZSzrt9KJiheRsffuQdkhsdVO2nQy
2jP389qTHhT1bb41o0cnWYba/g8DevBtSvmK7SE60RUvnI4I7cHWmSmJJDM6
WXxrXkri+x7UJdcXhZjTSQ1j74X86B5o33j774Q1nVh8KGpgJPRgfXFBwykH
OpHn53vel9qD2eWjnmGX6aTnos7+qSzu/rVfo9Od6eTa5pK0FcU9KFHegUu3
6MR+65qIF9QejDxeuczkHp2c3H7viWB1D4Z+CSxf/IBODu5ovPH4Rw8iA6j7
Ah7Sye5dW215m7j8jjwL/evN7U8z4LBbWw+s1YRWLfajE1mtgR2THT1Q/upa
PONPJ7z7opcODfVg3hupJ8cC6WRMh4ftMNaD7RvkvqS+pJO/ehZdHVM9GIx+
O9YRTCf1B7JqreZ6oEfkLnSE0AnVQDyvaX4vNkaWLU4JpZOcQ86xpot78fq3
RMvRMDqJP1wZ9H1pL955y7d/e0cn4UeV3A8u78XEjIPUVDidPDd+dLFUqhc+
ywafzY+gkwcm7Wbaa3ohN7px3y8uvmqmuTd3XS/ChaV2+kbSid2JEJXtyr1g
blC9zRtFJ8dPja1MVu9F7q5jAoe4WP+0EZ/K9l6ctR8dsOXinZbxQx9392IH
k6l6kIs3Wgs0y+3tBU0tic7DxdJn7ErD9vfC2pm/w5t7vvDZgqSVhr2oHzU8
38Ktz3NOOizQuBeulUYO87h41P7WY6ETvfj803J4nMu/w+HnVR+LXji92Lkw
h9vfz4vqVny2vbBbrZB5mNt/2WV/g/vne8FY1iiYzNUn60rP1qnLvfh90U+s
k6tfnLPummtXe+Fl1/eji6tv2NWIJcM3e3HGUc4ym6v/02sc1gW3Xhxi03NO
c/25f+Pkn05Pbn/XpKerntOJ8620KmufXogKvFISeUontndEspuf9iLx2WFT
ea7fpvcuR5sFcfu9VPNk/mM60XigcPdQeC+0ruSZ7+TmR8nzgX3Zh144fAoV
9efmS+pRi/Hez734IaS0LJGbv9nHL5U00rh+Lby0y56bz5Ln8+vlab24HfBM
5K0lnWS8sCl8970X0xZvRa6epJPYoG/xEnW9iJv5NixpQidPXl97KNzei616
JuEtB+jk2PtO9elxrh+XTkurb+LOU6S29HV2L2xTT7kEcOd124cw/hGePrBM
I08UydGJxCfTtr9L+nDBqWfn22V08iuh5EmtXB/2ZA2tUhivJTWD8wc2r+/D
lm6NvJ2DtaRARc/wpUofVpYb2K39W0si4koFT2j0wWF4uZrrz1pi+7HsaYth
H/7ToibyJ9eSY38XDu051oc09V93Cz7VEh2FA0fen+jDQwkl1SPhtUQhiiJs
a9uH2ivNGT1+taTrHfV5980+6Fy1KZKxrSX1LQIj+m59iNlXKuJxopZQVhkY
xXn2IfnrPK0cw1oS+6ZcxPFpH+6a38tO2F5LLr6ivRiN6sMncem+DwK1ZNC/
Mmimqg+JUa82tEXXkLYKwTGrH33w3tP/LfF1DalefNi0oLEPNbL+V0751ZAE
nyrxhx19iPRaQNvmVEOcH1W/EpjqQ3eJcskKjRoydrfm9TKFfhz/r1Fa0/07
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
48Jeql70rlHYV87jb2VVQXyP5M1V2qO4Wjz6Va+tCpe25jYtOjSKaAdtnT2f
q1BQUxefdXgU1CU3DV3eVmG544j7eaNRZNlSmMefVoHErFMsNePyLyQ1Gs5V
WLYy4OoDm1EwmscNzTZXwSE1Tm/T2VGsJNrhq+SrkHe0VKLt3ChKha3XvOLe
V+d9pvN3XxrFfceLAVHDlcidslsycX0UDbteaarGVkIk2L0t5tYo3MzrlYNe
VeLc5tBk07tcvnWZYgme3Pvx0vcTKQ9GYffkZDafRSXOtuyMdnwyim8fT2/e
tqQSS4jwns6IUbRdrPHtPV0Bm9MbRII+jCI4Xb7lm24F0id0OvZ+HIWBu7+u
gWoFrNVv+77/MopVa+m3ns3QkBrZUWeeMYqMk4vd6aE0nH6UdaW2YhRH6xUq
H1LL8cXANiKfxfXLIVO/dJSCrSpyWpgaxdve4/WudRTkC7czCHsU/6JdPw9m
UlDzw3JlIc8/JNoxjujeo2DM8tSz4sX/IHrNh+XFS4HWVaN7VNl/WN0yqfx+
QRlqQrVO0vdz16cu+2vbU4zxfimRruB/MH+kwXCzz8fLd92UsDf/EBIqtrZ7
aT62HE1zNwn7h+DInasEsvPgknJ4uCCSe37wRv7ri/MweOtB9dv4f+A3qLdc
EZeLvwu6/I2L/sFo/7Fgs9Ys1K1OXpQ3+A9yYQE8jVKpSDc5wPdSdwxqH7xK
HBPD4K7v9T6taww3NEX0c/kSCN3KwUK9dwyihh0S6nEJROH6Icn4/jF4vNkU
qm+USGiRokEfRsagsNbBKvFwEhFnv/MOnB5D85kLIneDk0ns1wxHZ+FxnE3K
6dSVTSM1Yj27VbaPY21Sl2fkvGwiv6Fi8tOOcZgeKqQkHc4m15GQvnb3OOrb
Y/+7+yabSF2+tmmV9jjEBm2pWuo5xK6UZ+3ig+NYXQDXK+a5ZPKm5OIey3Gk
LmyKa43II3KtBxs/eI3DqFPYpnyygPgV7U408xnHjYuJVanShWT0k4o3/5Nx
uL4bHbigXUiKrgpvvRQwju+C9RUajwuJnQD9+ea343DbazpzVKyIxG45daAw
aRznCmbK18oWExHJg7KuqeMIuuk/Eq5VTG7P7hpXyBiH5ly2VrtVMTlYLv3B
J3ccDTOtC9LCi0m/Vfvs0bJxHOofPPp6VQlR8zuf0cYYx8ud95/xLy4lwU4n
nwa0jeNxd1gsUSwlc6YGdvt+c/s97iqwU6eU1KxWFvvYNY6McP7bV+6WEpf0
IUdH5jiWJg+dbekpJWnt19dxFrLwQElm2CezjEiX2XO+LmLhMkVcaltNGfH6
cuKHtSALS2afWIb3lJHjN3Z6FIuycPz3Zc1PEhQysWSmxU+ahcAVur1PrlPI
Lo1HLyU3s9B303vCSZ5K6m0lt7/bysKap/y+N7dRieuzhIY1GixcUtPv2KtP
JfF/G6WUNFmYotuZyTpSiexL1cjt+1lILmkWGE2lkhxStC9HnwXa6gXpS0qp
5ET/ic49h1hguivwdNdRScA+z/V6RixEyOf1/mZRCS+z/quJOQun/t658Hdb
OQmXvny0wYKFW8VaDgJ65WS3/jymuTUL/zVF8w6YlJNr75W32tqxYOGr8XLM
uZx0HX6Q43yFha2tVaICseXE8/ZyizFnFr6PZtaopJeT1TFxMzddWVjpOXhE
tKicnOT81Ha/xcImqVxFSUY5qYjbQHnqyeW7YTRNbjGNONTnO4h6sbD9Irt5
73Iamc9ruvjVYxZkRWyXyK2hEa1T9w+H+bPwmROsKb2NRpL4f/yIC+bq0xLZ
wmdBI4ZbHK6rvWGBN1T7sNQ5Gum1mlmR8pYFzeklu4cdaUQ+Y715dgQLbtEX
TX7ep5GXdvfaKXEs7KCvmvN9RyPqAaKeh76y8CrxZUtgNI1U5X5c+z2RhUYD
PvqpLzSycFmtfX0aVw8boTa5LBqJ0rIXMM9kYViy/Y98Po3gIvtzazYLorIr
W34X08itwnWDnfks6NvxP39TTSPigznPHApZsOKb2R34g0aSJYzUB4pZ+BP/
vVi/kUaO6P6tdSpjofZAolxeC430Od1x/UdlwfnSZePhdhrxfrt0+c0KFoQs
bx391UkjaynRGdNVLCgL/pV42kMjBaM7T96vYUFG6NyXyX4asZD9PjXvBws6
gYcWyA/TiLDk1fTcOhb0+hVCdEdppHDZcpfrjSzkT/QdlxynkWvCWSqbGCz4
VUzvjZigEcVFp3t6WlnwFH5u3jRFI418sx+i2lm420WiStg04jcbYW3Rwd3f
5iljO0MjmlM6q1Z0sbCuKq46eZZGhv911X/vYeFrWndO6hxXryHfQN9+FhJi
yrrP81QQ016VIzpDLPi+TT5dzcULO78vmhlhYcHJYZluLs5qu1qa8Y8FCc0P
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
       "]], LineBox[CompressedData["
1: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
HpMfx6ow3t2nxarAvNo/fOboOHbL25wT4avCyPn6eCvlcagoyse4MCtBUk+U
8NccR4jxzNRfaiUeiFwR/31pHIX07i1lPpWw1Jc17rQYh23sqvdBDyqh577S
u/X6OAR/bsC8ZSUkhmMmq++N4zjJ85HvkUo0ZQwV5nqMI9y8XG6guwKyp+2v
BCWN4wB9EzlnUwW2uqi+Dfg+js3yUe8OM8uxOk2Q4p01Dlc+Gr9hXzm6N2bL
PC8cB9vMz5ZbSeXw7VtctmkaxyuaTfwWxXIMPfKM0FgaR9mPb1+XVcswYrzv
ZtSKCQwuacZ/2lEG8wkBNlH2CazbHX58iK0MOjsGDm3mnADnRIy+bSEF4q9e
fODjn8ApuYVgKwUK6oyq7izvmoD14yvy1htKITV6jrtVdwI+8rrVO0NKkGN0
mvDWn4DhJe+m7TdLoJqvcl/ZcALczpGlFUdLcMF/f0ecKes+PZc/+zqL8Up2
TaLD1Ql41IT/d1ykGDSHn9r8zhPg0HksbPa6EJHL4t66sRPoyYsUeByYCwHe
CU7SwgRe1PNTaJHxaMj3fqG1PIGLR4bk2klf8ObOLo7afxOYq9/Q7zf0GfwV
F9jb/5vE4I9T69T2x4Hfk7w8zjMJ6w1T73Vzo8C3GDa1ZcckfN2/76t9G4y1
g+qd93Um8bU79Xt20UOiKvjXhXndSTA+pCQ/S3QhfNUeU5/pT4Izgcfjt5Y7
wR2d2vLq3CQU+cLtE/Z7E1yXt9R/ujKJ5sTFpIG5twRn4wS58v4kIg+t0gys
jiT+I8JTdkRMwnib/S5N0W9E+3E1zZ6PkxDYK3Zcf2UKkZI7+issahLeWvdT
I3tTiAtZSvz8Xyax/abbbs/6VOJ7co/DirRJvHCZOKXhl0aYRexQ7KJMItVS
e6vNRCaR45xICmFMQl36nliWyU/WN7Dh5bOzkyg84s9r/+MncdVxaWbd/CT0
N2avDd6cT/DY6e72ZE7CKu6G2pqOfOLazfFX99dMYXIjW9kjI4LgN5E7oy86
BVeVX2QOwSLCWj6PukZnCkzhYDGXmBKisK45KUeX9Xt+3L2AshJig82Eyw39
KTgnc19XHishiLhdEuRzUwjXFKhzPEQiBDYG2ruaT+Flo0fX0SISkTdvxT3n
OAVptR+9IWQywRfi0h33cAqHWrl/6fz//yMHw74bPZ5CmsiSXwhbKcFrXWuS
5joF2vuPK/8olRJXO4/G2vhMoWTwyi+3lFKCm+BR6o+cgtv6hpY1zyiE+cU9
fG9jpmA0+TmjN5hCZM6p9p38PIX09Upq2skU4oqs86tPiVPofVG4gtROIdKj
+povZE1hwJpNxFS2jOBUZsav+TEFKo9cfIRaGXG5fdOTnLwp+M9M7LMxLSNW
C+iJCxVN4UJZylDqszLiokfO3frKKTxcFDuRRy4jUrc3nnStmcLPZsork5Yy
YlX+mOD++ikYDv4Oe0orI1JmxPN8W6YgNV6z4/qqcuK/N0r+x6hT6MhU3CMp
WE6clzG1GOmYAjuP3vr74uUE+w2/1Zq/pyCY5vEzWqmcMGWPb5/tm0L9lS/b
XmiXE8mfipPjaFPgrbSLYhiXEyZtc4bso1PIO/PfFau75USSA//uNPoUKL81
tW86lxMr10svmE9O4dXR/dkM93IiUcsysmB2CqtmFvwj35UT8lJiyphn6dcX
qCUZWU4U8PzqIBan4F79pPRUfDmhMfnR+QRzCn/JfROLKeVEXePljUUrGKhw
DM7UyGbxz9qaeZKdgdPaa9n3FpQTvaEdZ4tXMcAXYVMeTSonpi+f9y/hYmDO
uvOVSV058fTEJim1dQzslvO987a5nODY0VpO4mXAWtL6/bX2ciJwVcgNdX4G
TEJnOWu6ywnhIaNVpYIMfBMyyazqLSeiKwRiTm1k4JiTeZgFrZyQSm44QRFm
oPLH60zf4XIiM+B1t8ZWBtyYghx6o+WEsr3+k7JtDNy8QvjG0csJihHvZi0x
BuQa+E6/nSgn9BVqsst3MPB4WU5z41Q5QRX2O6ctwcAmTqbXAUY5Ybmkw6iQ
ZCDPgs7by8J/urle6+xjgMdTZlRyupxwKCqXqZJmoCnttQQHCzNjXladlmXg
5eegSmfW+RdeGrerDzKgqHZ52J1Vn+8WB6feIQZ+Ijdg52Q5EaZDjqtRYGBj
vnjdxfFyYoeMh+oZRQbsRzLz94yx/ORT/V17nIGtbxVt/EfKiUOMlS76YGB7
0raZV4Msv5oLt9afZGBtu5PN1n6WXzkuuQZqDMhOLI+r/2L5FaZs2nCKVf+W
YChHJ8uvp8szZ7UYeNVGuJm1svy68vNtow4DzcYJNboN5YS1yuMDRnoMeA2I
RTRVsfzbqVjbpM/Ak+qN6xilLP9Wz985Z8jAw1lR9a+FLP9GsrlazjEgcOTe
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
Hwv1////PzCe1dHYprQ/1b/whw==
       "]]},
     Annotation[#, "Charting`Private`Tag$417328#1"]& ]}, {}},
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
  PlotRange->{{0, 2}, {-0.3461261627623216, 0.581865099506474}},
  PlotRangeClipping->True,
  PlotRangePadding->{{
     Scaled[0.02], 
     Scaled[0.02]}, {
     Scaled[0.05], 
     Scaled[0.05]}},
  Ticks->{Automatic, Automatic}]], "Output",
 CellChangeTimes->{3.544353935279461*^9, 3.544354075781497*^9, 
  3.544354192963199*^9, 3.888237113239634*^9, 3.8882371485633583`*^9, 
  3.888237235216455*^9},
 CellLabel->"Out[56]=",ExpressionUUID->"1dd9130d-c240-4a7e-8630-cc3dcb17105e"]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"peeters`exportForLatex", "[", 
  RowBox[{"\"\<bottomlessCoffeeFig16\>\"", ",", "bottomlessCoffeeFig17bw"}], 
  "]"}]], "Input",
 CellChangeTimes->{{3.888237229614277*^9, 3.888237234360518*^9}},
 CellLabel->"In[57]:=",ExpressionUUID->"a1bf076d-f9b3-4195-8d97-2ece010c21bc"],

Cell[BoxData[
 RowBox[{"{", 
  RowBox[{"\<\"bottomlessCoffeeFig16.eps\"\>", 
   ",", "\<\"bottomlessCoffeeFig16pn.png\"\>"}], "}"}]], "Output",
 CellChangeTimes->{3.8882372483941813`*^9},
 CellLabel->"Out[57]=",ExpressionUUID->"a43f55ff-db58-4204-b60a-63d059460f0e"]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{
  SuperscriptBox["2.718281828459045`", 
   RowBox[{
    RowBox[{"-", "0.0013066953871490262`"}], " ", "t"}]], " ", "/.", " ", 
  RowBox[{"t", "\[Rule]", " ", "1"}]}]], "Input",
 CellChangeTimes->{{3.544358158308004*^9, 
  3.5443581618202047`*^9}},ExpressionUUID->"fcedf824-f374-40f2-929b-\
89675ddf169f"],

Cell[BoxData["0.9986941579675364`"], "Output",
 CellChangeTimes->{
  3.5443581624732423`*^9},ExpressionUUID->"32f6c8fc-25de-46a2-8ee9-\
f8a10467277a"]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"Plot", "[", 
  RowBox[{
   SuperscriptBox["2.718281828459045`", 
    RowBox[{
     RowBox[{"-", "0.0013066953871490262`"}], " ", "t"}]], ",", " ", 
   RowBox[{"{", 
    RowBox[{"t", ",", " ", "0", ",", " ", "60"}], "}"}]}], "]"}]], "Input",
 CellChangeTimes->{{3.5443582130061326`*^9, 
  3.5443582301981163`*^9}},ExpressionUUID->"8bebc37d-6991-495c-9a4c-\
bff4803cd6d4"],

Cell[BoxData[
 GraphicsBox[{{}, {}, 
   {Hue[0.67, 0.6, 0.6], LineBox[CompressedData["
1:eJwV0H881AcYB3A/2sS66yK7q1FTril0UZ3O4XmuEx2+Mk1l/SJdvLYjpZBl
jtdCkRblRFrZTVH5lfRzkVJpyYTuULHKmur7/bpwflS7fffH83pe738+r8/z
2G3ZHiw3MTIyIpj5f+ufNd+2z6r1us21NxgMNHSc4O2RaHNB0/fqcAtjtG7d
wtOWwLUv39sXMY4PKteYamvA2JQTIGQ8jeLmjmsaoVM6VKz4l4be64HbhzWP
wEL2S1DXBxp87F8/1Wmeg2Jkv65mnIZxjdvRQc07kMfn2EUO0XBLelrdVmKK
9ftGi27302DTe+XvLU4sHClsKWV30TBdsbncTGqFKxIfxRY/oCHXxedaYAgP
Dw3F3pxbT0NXwaIGHccWRW2TYo/W0JClTmk1mWGH33OeFhvUNHCPvNifVzwX
A1bfe16hoiHjG5nXIz0fw1QRxMosGuJEpzY3pzmgWxf/u55kGrzpiaSYFwtQ
3DCDtW4HDakeX4fPXOaMF/fbZvLkNLhXHKv9sV6A/tHi3va1NCjGdMp7LBfk
Zz/JSfBn7nPkPHMOcUVpfOxUrhcNHmfPnczPX4z8F2duTCyiQWfpF7amcQle
gPHcJnsaXmaHrdlpJkTlK8W2g1waZHSCrF/ohuUD+pviz2h4GzE5rjZlGZ6+
e5Tzz0eK+SfXJKNRhKY9IrZ2kALLlnk5VbQ7yh8fCT//kgKbzMogodADD76b
2pmqoaDAUcSxivTEqnVNxuI/KLg/U7J06LAXNkQr1cJ6CtxtGn8WPAZUq37L
cq2hgG1asis8DTFq4NNJlqUUzEqd7RE6T4LKENPqdwUUmPM31AXflWDhIcrh
82wKFnrOqEzYuBypPUmTbJQU7HxmecvPSIotYo6nfRwF9FB2iKxAin37xMCO
pMBXcKdQ5uyNr21EWtF6Cm4Mid+PPvTGVdZTqKhACmKcXLvb5CuwzMi6PHE5
BZ7U1o5Qcx+c4r6rNXspBSvseQSrxAdZXj8Yp86nwEF5ILHRzRfP9NwLqrOl
YIFcVM/v9kX1RxcHHYcC+Y2on2p3rER2/p8DFp9QUH+yY6vOWoadJq6zHcdI
GD5jGBVckmFZwpym7DckRPDPmhcSfmisWOv8oJcE3YI8Yc2gHyb62jlZtZNw
Wf3+r5FMfxzuN1vjdpeEb73nonhWAHKMHBqLrpHwRXTGlYUNAdgcsKx3ciUJ
1haKamItgZLqvebBv5KgliYnDYYSWCQoaLJl7JqcI83bQGCzdmraQAkJgYNV
ndpwArllVh+UjNMfj4xHKAi8JIgerjxFwlhJyvKkVAIf+kTqWSdJ6BbntZee
JZDlGAf3j5MQtVt9XFZBIK/Z0iyfsb7iovxtFYFlyezWcMaWc7SjLnUEtn01
M2y8iAT/ybY2vzcQmBiTlu7A+HpH6db2TgIt3PJfph8jwY992TleSyCh01cH
M9b6Nut5PQTSly6kzGI8fPVN5qY+pn+kxKaugATnU4vOD7wmcBqeD+1XMXnd
kvhsksBD/tT8asZ+01eDYJDA9ZuyJvYy3paxu23XCIGrVF3HpzMebkgv5I4R
uPj6gZi+fBLSJlQRVycIfNKvwnOMOUvKnDZ+JLDUytgqkfGJ6KsjBgPTx/tO
v5Txf8JKWv8=
     "]]}},
  AspectRatio->NCache[GoldenRatio^(-1), 0.6180339887498948],
  Axes->True,
  AxesOrigin->{0, 0.924},
  PlotRange->{{0, 60}, {0.9245929229529376, 0.9999999983999648}},
  PlotRangeClipping->True,
  PlotRangePadding->{
    Scaled[0.02], 
    Scaled[0.02]}]], "Output",
 CellChangeTimes->{
  3.5443582356784296`*^9},ExpressionUUID->"343cfa33-7909-40fb-828b-\
fccf91b71099"]
}, Open  ]]
},
WindowSize->{1584, 765},
WindowMargins->{{0, Automatic}, {Automatic, 0}},
FrontEndVersion->"12.2 for Mac OS X x86 (64-bit) (December 12, 2020)",
StyleDefinitions->"Default.nb",
ExpressionUUID->"7e37472f-67d2-445b-bb24-bf9275446d13"
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
Cell[1257, 32, 326, 5, 52, "Input",ExpressionUUID->"4e917a9a-d62d-4259-aa36-6da160af22e6"],
Cell[1586, 39, 164, 2, 34, "Output",ExpressionUUID->"a51d8fba-017a-4053-9a68-3513e3279655"],
Cell[1753, 43, 213, 3, 34, "Output",ExpressionUUID->"280c70f1-6bfe-45f3-aa68-9b060bd4adb6"]
}, Open  ]],
Cell[CellGroupData[{
Cell[2003, 51, 802, 20, 110, "Input",ExpressionUUID->"e745681a-9c50-4277-8e1d-9b7e7f968217",
 InitializationCell->True],
Cell[2808, 73, 259, 3, 34, "Output",ExpressionUUID->"c3554324-0fa9-421b-b34c-a1178b1a2dcc"]
}, Open  ]],
Cell[CellGroupData[{
Cell[3104, 81, 6673, 149, 430, "Input",ExpressionUUID->"44d0d431-18fc-437c-a320-c81d83693f2f"],
Cell[9780, 232, 777, 15, 34, "Output",ExpressionUUID->"e0b124e4-b0f8-4054-86cc-90a8648c4ce3"],
Cell[10560, 249, 3445, 84, 102, "Output",ExpressionUUID->"69c37614-61ac-4cc3-aaf6-2dcad91d41d8"]
}, Open  ]],
Cell[CellGroupData[{
Cell[14042, 338, 4552, 109, 409, "Input",ExpressionUUID->"f13649b3-d7ab-47c9-bc88-d25fa52dc57a"],
Cell[18597, 449, 22284, 388, 239, "Output",ExpressionUUID->"874c91a4-73a4-451d-a88d-ff6b871d0348"],
Cell[40884, 839, 19866, 350, 239, "Output",ExpressionUUID->"b21e3e70-8b13-4445-be20-58fbcaafd8af"],
Cell[60753, 1191, 828, 13, 34, "Output",ExpressionUUID->"a2627903-d89a-44a1-a433-d327b6f4f660"]
}, Open  ]],
Cell[CellGroupData[{
Cell[61618, 1209, 1419, 36, 199, "Input",ExpressionUUID->"cebd5207-7fe9-465b-bba7-8924b5539dab"],
Cell[63040, 1247, 2048, 41, 361, "Output",ExpressionUUID->"966493b7-cc90-44c8-8713-6e0cc5f5e9c0"]
}, Open  ]],
Cell[CellGroupData[{
Cell[65125, 1293, 1512, 37, 52, "Input",ExpressionUUID->"7149dafb-c6ca-486b-91e1-9b8134fd94cc"],
Cell[66640, 1332, 76648, 1298, 231, "Output",ExpressionUUID->"6055aaa7-36b8-4687-aab0-dca76e8e00b6"],
Cell[143291, 2632, 66464, 1110, 231, "Output",ExpressionUUID->"1dd9130d-c240-4a7e-8630-cc3dcb17105e"]
}, Open  ]],
Cell[CellGroupData[{
Cell[209792, 3747, 296, 5, 30, "Input",ExpressionUUID->"a1bf076d-f9b3-4195-8d97-2ece010c21bc"],
Cell[210091, 3754, 266, 5, 34, "Output",ExpressionUUID->"a43f55ff-db58-4204-b60a-63d059460f0e"]
}, Open  ]],
Cell[CellGroupData[{
Cell[210394, 3764, 328, 8, 31, "Input",ExpressionUUID->"fcedf824-f374-40f2-929b-89675ddf169f"],
Cell[210725, 3774, 150, 3, 34, "Output",ExpressionUUID->"32f6c8fc-25de-46a2-8ee9-f8a10467277a"]
}, Open  ]],
Cell[CellGroupData[{
Cell[210912, 3782, 394, 10, 34, "Input",ExpressionUUID->"8bebc37d-6991-495c-9a4c-bff4803cd6d4"],
Cell[211309, 3794, 2130, 42, 246, "Output",ExpressionUUID->"343cfa33-7909-40fb-828b-fccf91b71099"]
}, Open  ]]
}
]
*)

(* NotebookSignature jv0WmyHYz4lS9DwUgEJQSfSS *)
