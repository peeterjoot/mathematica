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
NotebookDataLength[    111849,       2055]
NotebookOptionsPosition[    111588,       2029]
NotebookOutlinePosition[    111930,       2044]
CellTagsIndexPosition[    111887,       2041]
WindowFrame->Normal*)

(* Beginning of Notebook Content *)
Notebook[{
Cell[BoxData[{
 RowBox[{"Clear", "[", 
  RowBox[{"rho", ",", " ", "mu", ",", " ", "nu"}], 
  "]"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{"rho", " ", "=", " ", 
   RowBox[{"ChemicalData", "[", 
    RowBox[{"\"\<Water\>\"", ",", "\"\<Density\>\""}], "]"}]}], " ", 
  ";"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{"mu", " ", "=", " ", 
   RowBox[{"ChemicalData", "[", 
    RowBox[{"\"\<Water\>\"", ",", "\"\<Viscosity\>\""}], "]"}]}], " ", 
  ";"}], "\[IndentingNewLine]", 
 RowBox[{"nu", " ", "=", " ", 
  RowBox[{"mu", "/", "rho"}]}]}], "Input",
 InitializationCell->True],

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
   RowBox[{"r", " ", "=", " ", "0.1"}], " ", ";", "  ", 
   RowBox[{"(*", " ", 
    RowBox[{"10", " ", "cm", " ", "coffee", " ", "cup"}], " ", "*)"}], 
   "\[IndentingNewLine]", "\[IndentingNewLine]", "\[IndentingNewLine]", 
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
   " ", ";"}], "\[IndentingNewLine]"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{"termTable", "[", 
   RowBox[{"t_", ",", " ", "z_"}], "]"}], " ", "=", " ", 
  RowBox[{
   RowBox[{"Table", "[", " ", 
    RowBox[{
     RowBox[{"term", "[", 
      RowBox[{"t", ",", " ", "z", ",", " ", "jj"}], "]"}], ",", " ", 
     RowBox[{"{", 
      RowBox[{"jj", ",", " ", "n"}], "}"}]}], " ", "]"}], " ", "//", " ", 
   "N"}]}]}], "Input",
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
   3.5443585300342655`*^9}, {3.5443585718676586`*^9, 3.54435861735726*^9}}],

Cell[BoxData[
 RowBox[{"{", 
  RowBox[{
   RowBox[{"0.8503297479775555`", " ", 
    SuperscriptBox["2.718281828459045`", 
     RowBox[{
      RowBox[{"-", "0.0013066953871490262`"}], " ", "t"}]], " ", 
    RowBox[{"BesselJ", "[", 
     RowBox[{"1.`", ",", 
      RowBox[{"3.831705970207512`", " ", "z"}]}], "]"}]}], ",", 
   RowBox[{
    RowBox[{"-", "0.11999314106861754`"}], " ", 
    SuperscriptBox["2.718281828459045`", 
     RowBox[{
      RowBox[{"-", "0.004380442612630796`"}], " ", "t"}]], " ", 
    RowBox[{"BesselJ", "[", 
     RowBox[{"1.`", ",", 
      RowBox[{"7.0155866698156`", " ", "z"}]}], "]"}]}], ",", 
   RowBox[{
    RowBox[{"-", "0.14815809592159382`"}], " ", 
    SuperscriptBox["2.718281828459045`", 
     RowBox[{
      RowBox[{"-", "0.009211451396667155`"}], " ", "t"}]], " ", 
    RowBox[{"BesselJ", "[", 
     RowBox[{"1.`", ",", 
      RowBox[{"10.173468135062722`", " ", "z"}]}], "]"}]}], ",", 
   RowBox[{"0.10358557839643508`", " ", 
    SuperscriptBox["2.718281828459045`", 
     RowBox[{
      RowBox[{"-", "0.01579934824642861`"}], " ", "t"}]], " ", 
    RowBox[{"BesselJ", "[", 
     RowBox[{"1.`", ",", 
      RowBox[{"13.323691936314223`", " ", "z"}]}], "]"}]}], ",", 
   RowBox[{"0.026043086021717104`", " ", 
    SuperscriptBox["2.718281828459045`", 
     RowBox[{
      RowBox[{"-", "0.02414406723028573`"}], " ", "t"}]], " ", 
    RowBox[{"BesselJ", "[", 
     RowBox[{"1.`", ",", 
      RowBox[{"16.470630050877634`", " ", "z"}]}], "]"}]}], ",", 
   RowBox[{
    RowBox[{"-", "0.0699874705822348`"}], " ", 
    SuperscriptBox["2.718281828459045`", 
     RowBox[{
      RowBox[{"-", "0.034245589554141136`"}], " ", "t"}]], " ", 
    RowBox[{"BesselJ", "[", 
     RowBox[{"1.`", ",", 
      RowBox[{"19.615858510468243`", " ", "z"}]}], "]"}]}], ",", 
   RowBox[{"0.018227524604232312`", " ", 
    SuperscriptBox["2.718281828459045`", 
     RowBox[{
      RowBox[{"-", "0.04610390825004158`"}], " ", "t"}]], " ", 
    RowBox[{"BesselJ", "[", 
     RowBox[{"1.`", ",", 
      RowBox[{"22.760084380592772`", " ", "z"}]}], "]"}]}], ",", 
   RowBox[{"0.0368611803896393`", " ", 
    SuperscriptBox["2.718281828459045`", 
     RowBox[{
      RowBox[{"-", "0.05971902025843451`"}], " ", "t"}]], " ", 
    RowBox[{"BesselJ", "[", 
     RowBox[{"1.`", ",", 
      RowBox[{"25.903672087618382`", " ", "z"}]}], "]"}]}], ",", 
   RowBox[{
    RowBox[{"-", "0.03170001682461716`"}], " ", 
    SuperscriptBox["2.718281828459045`", 
     RowBox[{
      RowBox[{"-", "0.07509092406638054`"}], " ", "t"}]], " ", 
    RowBox[{"BesselJ", "[", 
     RowBox[{"1.`", ",", 
      RowBox[{"29.046828534916855`", " ", "z"}]}], "]"}]}], ",", 
   RowBox[{
    RowBox[{"-", "0.009882240319413049`"}], " ", 
    SuperscriptBox["2.718281828459045`", 
     RowBox[{
      RowBox[{"-", "0.09221961885661803`"}], " ", "t"}]], " ", 
    RowBox[{"BesselJ", "[", 
     RowBox[{"1.`", ",", 
      RowBox[{"32.189679910974405`", " ", "z"}]}], "]"}]}]}], "}"}]], "Output",
 CellChangeTimes->{
  3.5443570502216253`*^9, 3.5443571157903757`*^9, 3.5443571826321983`*^9, {
   3.544357323162236*^9, 3.5443573364139943`*^9}, 3.544357433232532*^9, {
   3.544357625843549*^9, 3.544357652501074*^9}, 3.5443580273985167`*^9, 
   3.544358367145949*^9, {3.5443585952799973`*^9, 3.5443586223715467`*^9}}]
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
       "\[IndentingNewLine]", ","}], " ", "\[IndentingNewLine]", "}"}], ",", 
     RowBox[{"{", 
      RowBox[{"z", ",", " ", "0", ",", " ", "1"}], "}"}], 
     "\[IndentingNewLine]", ",", " ", 
     RowBox[{"Filling", "\[Rule]", "Axis"}]}], "\[IndentingNewLine]", "]"}], 
   "\[IndentingNewLine]", 
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
    "]"}]}]}]], "Input",
 CellChangeTimes->{{3.5443551951355205`*^9, 3.5443551967466125`*^9}, {
  3.5443556268182116`*^9, 3.544355744687953*^9}, {3.544355775219699*^9, 
  3.5443557791689253`*^9}, {3.544355836671214*^9, 3.54435584953895*^9}, {
  3.5443559402011356`*^9, 3.544356001048616*^9}, {3.544356921592268*^9, 
  3.5443569315658383`*^9}, {3.544356973966264*^9, 3.544356982491751*^9}, {
  3.544357369495887*^9, 3.5443573902240725`*^9}, {3.5443574888647137`*^9, 
  3.5443575683832626`*^9}, {3.5443576933424096`*^9, 3.5443579911204414`*^9}, {
  3.5443583376922646`*^9, 3.544358338982338*^9}, {3.544358376969511*^9, 
  3.5443583782025814`*^9}, {3.544358549304368*^9, 3.5443585569858074`*^9}, {
  3.5443586244906683`*^9, 3.5443586605647316`*^9}}],

Cell[BoxData[
 GraphicsBox[GraphicsComplexBox[CompressedData["
1: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
l+v9F12nCvo=
   "], {{
     {Hue[0.67, 0.6, 0.6], Opacity[0.2], EdgeForm[None], 
      GraphicsGroupBox[PolygonBox[{{72, 635, 633}}]]}, 
     {Hue[0.67, 0.6, 0.6], Opacity[0.2], EdgeForm[None], 
      GraphicsGroupBox[{
        PolygonBox[{{113, 636, 637, 50, 118, 101, 116, 86, 99, 114, 73, 83, 
         96, 111, 63, 71, 81, 94, 109, 55, 60, 68, 78, 91, 106, 49, 48, 47, 
         46, 45, 44, 43, 42, 41, 40, 39, 38, 37, 36, 35, 34, 33, 32, 54, 59, 
         67, 77, 90, 105, 31, 62, 70, 80, 93, 108, 53, 85, 98}}], 
        PolygonBox[{{1, 634, 633, 117, 100, 115, 82, 95, 110, 58, 84, 97, 112,
          66, 76, 89, 104, 30, 61, 69, 79, 92, 107, 52, 57, 65, 75, 88, 103, 
         29, 28, 27, 26, 25, 24, 23, 22, 21, 20, 19, 18, 17, 16, 15, 14, 13, 
         12, 11, 10, 9, 8, 7, 6, 5, 4, 3, 2, 51, 56, 64, 74, 87, 
         102}}]}]}, {}, 
     {Hue[0.9060679774997897, 0.6, 0.6], Opacity[0.2], EdgeForm[None], 
      GraphicsGroupBox[PolygonBox[CompressedData["
1:eJwt0WWQlQUYBeDLktKCdC4l0iXdCNKxIC2xgIDALs2ydIcoCKh0iRIKSqd0
h7SEdJfSnc8O/HjuOef9Zr47c29waHhIWFAgEIhGdB+RspdDBL/pkW4V6MpH
lOBr/vMsvixIKH/bl9+/IweNWG1v51+eE+xWm4X6AuYzj1/5hbn8zBxmM4uZ
zGA605jKFCYziZ9YxTZO8YyMvqMWP+or2cpJnpLBvSY/6Pu5RJD9CQ1ZYW/h
BE9I71aDifo+Lkb9VnZ2GrDcvkEcPS/N2Gwf5zHp7OpM0G8TTy9AS/baFwLv
fvyPqc8y8zqx9Tx8ySY7ofyU1vxjPyKtXo3xelJZnPbcssvIMOKSnxbscS8n
O5OYHhThK85H/e+yFB15Y3eT2fiCpXZvWZ4ufEhPitKWa55HyNJ0IhbdyU1T
NnpeVoaTgEK04ph7SdmBh3oaWZXv9SSyGO24aX8g89Gc3XYiWZg2nLNfk1Wv
xxL9KjH1XDRhg32UB6S2qzBO38VZXpHFrS5/6leIoeekMX/ZR7hPKrsyY/Wd
nOElmd1C+ENfz2HukdLtc77Td3CaF2Ryq8NifR2HuEsKt0p8qy9iLQe5Q3L3
iozRv2E0oxjJCIYzjKEMYTCDGMgA+tOPvvThd9ZwgP9J5t2f8RYsIIMi
        "]]]}, {}, 
     {Hue[0.1421359549995791, 0.6, 0.6], Opacity[0.2], EdgeForm[None], 
      GraphicsGroupBox[PolygonBox[CompressedData["
1:eJwV0kOwHFAUBNAf23Z+bNu2bdvexLZt27Zt27btnCxOdfd9VTOLmcAmHat0
CBoQEBCEX/RUujv0YJXeTeanLZHITlOeewsp01GHU/Y9fpPUrsw2/RDX+Ew8
t9Ks1FewnGUsZQmLWcRCFjCfecxlDrOZxUxmsJWDXOUTcX12KabrWzjAFT4S
x70k0/ST3OUXSdwqsVnfz2U+ENutBFP1Z4TQ01KbE/YdfhJoV2ST/oggekqq
s88OIzNSn0v2e2LpxZmiR5TZaMJTO7hMQy2O2+FkZhpy284pm/NDTywrsFHv
KvPSmvB0JAuNeOi9s8xFi/8/Nu1JQTX2eu8i89CK0Pz/U2SgHhe9d5I5aMY7
u52MSTEm2/lkGyKQlcY8cc8tWxKM1NTkmHtYmYkG3LK/k0gvzwb9AX9Jbldl
jx5KpqcuF+y3xNCLMkl/TFA9FTU4at/kGwntcqzX7/OHZHYVduvneUN0uwgT
9SPc4CsJ3MqyTt/FOV4Tza0wE/TDXOcL8d3KsFbfyVleEdWtEOP1NezgDC+J
4l6QcfpYxjCaUYxkBMMZxlCGMJhBDGQA/elHX/rQm16sZjuneUFk31OAf7QF
gcM=
        "]]]}, {}, {}, {}, {}, {}, {}, {}, {}, {}, {}, {}, {}, {}, {}, {}, \
{}, {}, {}, {}, {}, {}, {}}, {{}, {}, 
     {Hue[0.67, 0.6, 0.6], 
      LineBox[{1, 102, 87, 74, 64, 56, 51, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12,
        13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 
       103, 88, 75, 65, 57, 52, 107, 92, 79, 69, 61, 30, 104, 89, 76, 66, 112,
        97, 84, 58, 110, 95, 82, 115, 100, 117, 633, 72}], 
      LineBox[{113, 98, 85, 53, 108, 93, 80, 70, 62, 31, 105, 90, 77, 67, 59, 
       54, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48,
        49, 106, 91, 78, 68, 60, 55, 109, 94, 81, 71, 63, 111, 96, 83, 73, 
       114, 99, 86, 116, 101, 118, 50}]}, 
     {Hue[0.9060679774997897, 0.6, 0.6], LineBox[CompressedData["
1:eJwl01PUXAcYBdD5Y6ux3dhWY6Oxbdtq2Ma22ThpY7Qx27CNbdvOTvKw55zz
3bVmXu4kadS+UrugQCAQ5KOXLCpj8Eg/ymZW0Js+9KUf/fmFAQxkEIMZwlB+
5TeGMZwRjKSY747JY/0YW1jJKIq7x+KJfpytrKKiW1Le6xfYx2hKuMXmqX6C
baymklsyPugX2c8YSrrF4Zn+H39Ry05LCG7aa6isJ+ejfokDjKWUW1ye6//z
N7XtdITklv0HVfQUfNIv01TPQWQO2vVlJsJyz24hcxONcXZpGY8XemuZj5N6
Y5mNiLSnINvd68j0dCEUbSlAD2573lzmohtR6UhhevKn51VlSjrz2W4j89Od
K3YzmZOuRKEDhTjkWQOZmXB8fZF+4r57S5mHHxhvl5HxeamfoomenUjssOvK
DITmjr2WavqP317OQOCq+IeGehbC88CeQFk9Aa/00+yknp2RMNy111FdTxX0
/V2/Zv/LRMrZCXmtn2EX66nhlppgXLcPM4nydiLe6GfZzQYmU8E9MW/1c+xh
I1OYyjSmM4OZzGI2c5jLPOazgIUsYjG/s4SlLONnv5GEd/p59rKJmm5pCM4N
+wiN9KxE4KHdSuYlOp0o8vW/z3LPvgCOZ4Ir
       "]]}, 
     {Hue[0.1421359549995791, 0.6, 0.6], LineBox[CompressedData["
1:eJwNzUOQZVEUBMDfY9u2bdu22WNzN7Zt27Zt27ZtTy4yqurciPeSB3ep0Tko
EAj8pJdSJEQgEI2X+hl2sIbe9KEv/ejPAAYyiMEMYSjDGM4IRjKK0YxhLOMY
T1H/ic4r/Sw7WcsEirnH4LV+jl2so4JbIr7qNzjCRIq7xeSNfp7drKeiW2K+
6Tc5yiRKuMXirX6BPdSwU/FXf8AGKtlJ+K7f4hh17HSE4Ik9mZJ6bN7pF2mo
ZyYse+2aMjX/9IdspLKdlB/6bZro2YjAcbuuTE9I2pCfp+7NZU4i055CTHEv
JePQkfd2S5mHrlyyG8ksdCYcbSlAd/Z5ryXT0IkArclHNx55byZz0IVItKMg
PdjkvYpMxk+9lczLHb2pzE5ETtj1ZAZC8cwOlrmIwlS7tIzLB/0yjfWshGe/
XVumJYjH9maq6sn5pd/lJPXtjITmuT2NMno8PupXOMAWqrml4Ld+j1NMp6xb
fD7pVznIVmZQzj0Bn/VrHGIbM5nFbOYwl3nMZwELWcRilrCUZSxnBStZRXnf
TsgX/TqH2U51t5T80e9zmgZ2JsLwwm4hcxOVDhSmJ6u9/QfzpYDQ
       "]]}, {}, 
     {Hue[0.67, 0.6, 0.6], Opacity[0.2], 
      LineBox[{120, 121, 119}]}}, {{}, {}, {}, {}, {}, {}}}],
  AspectRatio->NCache[GoldenRatio^(-1), 0.6180339887498948],
  Axes->True,
  AxesOrigin->{0, 0},
  Method->{"AxesInFront" -> True},
  PlotRange->{{0, 1}, {-0.0003188775510204467, 0.599645995597825}},
  PlotRangeClipping->True,
  PlotRangePadding->{
    Scaled[0.02], 
    Scaled[0.02]}]], "Output",
 CellChangeTimes->{
  3.5443558507420187`*^9, {3.5443559829675817`*^9, 3.5443560022456846`*^9}, 
   3.544357142704915*^9, 3.5443573925342045`*^9, {3.54435751781537*^9, 
   3.544357557343631*^9}, {3.5443576899522157`*^9, 3.544357720115941*^9}, 
   3.544357799923506*^9, 3.54435792657475*^9, {3.544357964192901*^9, 
   3.5443579923125095`*^9}, 3.5443583404564223`*^9, 3.544358387374106*^9, 
   3.544358560897031*^9, 3.5443586668990936`*^9, 3.544358700014988*^9}],

Cell[BoxData[
 TagBox[
  StyleBox[
   DynamicModuleBox[{$CellContext`omega$$ = 
    1.5104777478459726`, $CellContext`t$$ = 856., Typeset`show$$ = True, 
    Typeset`bookmarkList$$ = {}, Typeset`bookmarkMode$$ = "Menu", 
    Typeset`animator$$, Typeset`animvar$$ = 1, Typeset`name$$ = 
    "\"untitled\"", Typeset`specs$$ = {{
      Hold[$CellContext`t$$], 0., 1800.}, {{
       Hold[$CellContext`omega$$], 2 Pi}, 0.6283185307179586, 8 Pi}}, 
    Typeset`size$$ = {360., {110., 115.}}, Typeset`update$$ = 0, 
    Typeset`initDone$$, Typeset`skipInitDone$$ = 
    True, $CellContext`t$214468$$ = 0, $CellContext`omega$214469$$ = 0}, 
    DynamicBox[Manipulate`ManipulateBoxes[
     1, StandardForm, 
      "Variables" :> {$CellContext`omega$$ = 2 Pi, $CellContext`t$$ = 0.}, 
      "ControllerVariables" :> {
        Hold[$CellContext`t$$, $CellContext`t$214468$$, 0], 
        Hold[$CellContext`omega$$, $CellContext`omega$214469$$, 0]}, 
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
     ImageSizeCache->{409., {182., 187.}},
     SingleEvaluation->True],
    Deinitialization:>None,
    DynamicModuleValues:>{},
    SynchronousInitialization->True,
    UnsavedVariables:>{Typeset`initDone$$},
    UntrackedVariables:>{Typeset`size$$}], "Manipulate",
   Deployed->True,
   StripOnInput->False],
  Manipulate`InterpretManipulate[1]]], "Output",
 CellChangeTimes->{
  3.5443558507420187`*^9, {3.5443559829675817`*^9, 3.5443560022456846`*^9}, 
   3.544357142704915*^9, 3.5443573925342045`*^9, {3.54435751781537*^9, 
   3.544357557343631*^9}, {3.5443576899522157`*^9, 3.544357720115941*^9}, 
   3.544357799923506*^9, 3.54435792657475*^9, {3.544357964192901*^9, 
   3.5443579923125095`*^9}, 3.5443583404564223`*^9, 3.544358387374106*^9, 
   3.544358560897031*^9, 3.5443586668990936`*^9, 3.544358700682026*^9}]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
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
   RowBox[{"Filling", "\[Rule]", "Axis"}]}], "]"}]], "Input",
 CellChangeTimes->{{3.5443539395237036`*^9, 3.5443540009842186`*^9}, {
  3.5443541593872786`*^9, 3.5443541596002913`*^9}}],

Cell[BoxData[
 GraphicsBox[GraphicsComplexBox[CompressedData["
1:eJxEnHk4VG/cuJEiS5GllEiiLNFXIpKPrZKlKKVUshRSIhSVspRsFZVUohTK
TvalPPZ9GcaMfYaxZJcwiOF33t/1znn7p8s1c5xznuWzuO/rkbBxPnOdjYWF
xYCHheX//399pKVk9LpmnFHYgSKGu6YvZ9beIJE4mBzNn9t5MAsuXPyS/mcm
G05f/+3t01IO3Gu+l0+IIZC9f8x1I1sjSJlOjZSHVMC2aysFf8tbwaNJDd7P
1ULqrNu7OM522JrNT2FlbYYfUx3G+tFdkEvTbWjWaIXWbyEh51d6ocwxesfF
iTaQyPa7dORyH8xLH92c6tQOwql7Zl9c6ge2pWS+HVJdYFmfKm8lRgOVNavc
s2k9YDq9ayzvKQ0anio3VclSwS9W3f5jNA3Ew8aXEqf6QJWldanqGg3GF6gU
0gEa6BjcMJEZ6Ie4saK6TS8H4HeybqEMRz9s2vl9enBwELa9lreurKHC8xs5
djF7hiEuneHo9l8v0LWSBx28f0NxsdK80VQnuCtVZAuXj4D34wFVoQAyUNMq
QlokxqD6sYzweEArLDu2fZR5MA6R9s2G18sbQE6bY9WuaAJWTF8k91dXwImv
EvY/tk6BwRXbHY1C+eCx8+ru/svT8IbxM+ZJ6WeQnzjH3W78BwxHEw7mFkQj
gc1/OCv+/QGdtyekzh3PQ+zoY7pk1Ax83/OTcdGnDN1ULurcaPgXkjh2fTZW
q0XJJ21iiul/wVTGgeqy1ITmx7fzDUfMQsl4lJFNcQvKOXtiXbjeHDzobT7K
kkFE3vr+n7OH5yBnvYjlCgsJSfQadMT6z4OWuYarBoGE1FWfhoso0YFPrfzJ
EWkyuizWvMRKpMPzd/IL3fMkNF/3gubiuwC81JvKe9VJ6D27pfuZPYvg4m55
kE+gDQlQcr6yVSyClNft9a7BrWj9I18ztTtLMCMQIGN4n4BYEi3TaVv+gVPY
5+ga5wbkGpn+YkvZP1BJ3dg9sFCFfskFcvLfXgZDIXYaY28p4jdwlffbtAJy
vQ9Dl2ZyUc9+AvH+zxWQDOXW3ZQZhzI+wZ5BSwbcTXsZ++nEPbiSrsK/c5UB
O6RPl97USQQf/y++PUmrYKS/r08U8iF1ZOfHTUZrwGqVl5O/txTeiXPPr62t
gbdRmEzTwSqIETr9LFgkHD4KLTWHHY0Fa8tvVxIoBNBqlBavs+yBn9/+uIWH
E2Ff7BFXLycq9Og7Ca3bT4aM9bFOZYN9sBI6t/labQc8sdMgd1T3g6jXM9u8
G90Qse9Z09FLNGAtM9B5MdELYVKBl7wjsXU66pexQacP/n7VmWOE0GB9xfUJ
FNoPYcvG6hv200B/ptHMlUoDn6hldwXvfuh88l/vfbVB2LxGS/r0uA+MdRWS
y54OwQ/X//Z2B1OAEKl5ofX4LNiei7U2TiYgkviPjb8mZ2Hz0tisZ00r2n7K
zjTu7RxsnOVLVXRoQ4QtI0fkVebhbcw4Y96DhBSC7XMp3fMgu5tB0uIlo/ok
meoXfnQI0Xx1wmInGSW4K9xWk12A2gyFVplEEqr6fTe5v3UBlNbpVzzLbkPn
Z4JCZN2x+S/IPDJmQUTPUz8uR29fgmeGbfSbL1vQ7qeC+hzf1uDQ7WtP/5aV
Q69igO4LkafwIEXF8YDWG1CJMv8WrkiAlHeyTXZ+3VCgt31X5kgryF3+8Ptt
AQWaL/pvS3tOgnkhPULa1z7w7H4fGrijA8aunqq+Ht4Poeoi6jequ6D3vyRf
NaBBVN85LxfjXohfvrgw84oGCXLRWx3bqZD+vj746TsabEnaN6sM/XDsVXj+
AUMaRM6RRfYE0iBv07v+/Kx+0Myjn60YGACp0XCPfZV9oJDh2EhUHoIj1yTF
Lu2ngqariVeN2CykVienWG8loKH1w89Ny2ZhzNSkOf1EKxohnJcVdZqDQzPU
npXNbSghNdfJZdM8qIgH3DXWIqGEgxdPlGbMw74NLf66syTENkNOPWtBh5pv
22K+SZGRX+1qVvQqHSa+7nfuJZKQZSfrCZmkBeBu2jI88K8NLfyb9dY0WoTK
sN+3RAuJiFC577TJ9CJcFMp3+LG5FTmofJjhur8G4pe7z1g/KAPEWV19T6sN
xvPYv45z98GI6rktFxrJYJc5QbTb3Q/eeiZh4NEJIettg7rm+yHx1+zz9Tw9
UFL8vcfBlQZ2scCZFEKBxxrhYdafaJChoXruwvs+4LVjBPA9pMFi79chg75+
8BWPu2LGRQP6ZEVoicoAXFcZ3vPlWD/YlMsr99yehfFjar4XDregSjWvZ/tE
5sAzM9sxWouIjOrvesoXz8E+oa/SQfltaNFDhGvkyjykZ3/aNfOdhLL77kqt
bKADeQdhSF2MjMKvefVVJ9Ghoe4Rnx22XpvELfeRzi2AzB5Dk/67JKRIH90c
uYz93BQVdtC+DfW0hH5aR1yD3m98fWMslWB+beHXaxF3MOwdm+nRegI696ze
CmU0gxWLdvwYXzfkCyjSS163QpSUwnqxyxTQt+GPfKJBgjKXNl4Wnz5QYb3Z
HFnRDj7L+R/iPfuh5oONlM69Lth2SkPaXpEGo86XRGiMHsiP5Q8bw/a3eseI
6zZfKtR9M7ul+ZEG23YG35sW7gfJh88kQi9g8eDepRWvyzTIvmBQINTQDzMm
F0NH8weAu0esu2i4Dz4NB1r28AzBbrZqLfpDKsxdufiynGsWki/xTle8bUaT
nj5NH1NmIferh9tW9lZ0akuzcMeFOah8lJZN7yMiweXoZ6//zYG2Ll/EBwkS
usbZGqr0cR4u/Qx82E8jIbHw/V9UjtPhu05x/wgW/6dnh8nNI3Ro1jdTmx8i
IdnWasHGtwvAUUyddNxBQjVr+x7oH16EX/P8X61+E9Ff02nPxM5FoLdeEB42
bkXBoZeqntusQdjpLwknWkuhuL072n+MCLyvzllRyqlgo9X/Zv8jMoh/DHeR
ZMf2m+NugumuTlgepr0KpPYDTfSoJ6WwGwYSDDJv22PjonQsfocGBdg4JnLX
Y/l/aUuvn6JTH0gs3/A8iNUHqybsN9bn9wORkX35qCgNPjufdBXhHoBP0PBt
g20/iKQfOt5uMQse84s7f/wloMYU4RrXdXOQZv4x4ct6Isrimbo2kjgHz5yF
3C68akPXKlkkuQzmgfz7vzujYSR0J2fKyWlmHt49KfrZK0xGGRxEYlIEHSza
rYTNsJ+PGBw35NBaACvNj9wR2Pf/TaX3Hv29AH4Zw5EFL9vQmuwZN/+fa1Ct
aZlx0rYCznc3nwrb1g2yUlpvycY0OGVqQl2N6oVWDRbFpggahKB9lF5hLM6z
3866/ZoGPKrVzg/s+0FZh/9IqgYNNKyazU7tnofF5yF7t14hoXHLvtXTVfMQ
e+gfvy0rGQ0b+xS63KbDe8NnHvd2k5HQZ+FXNwUX4JbyzrPvEQm5WCZ9kb/S
A/vDN7DKe9FARFD95uFuCiywGBu/wfa3g92rvb7lfbDOezwgwoUGz2WVZirv
zIPQRbFWnl8ktMDN6AkWpYMZh0X8RUky8iyVmhwspoOM8pvA12xkVOjZWOs7
ugaX4spzqj5WgmFje2a0yDUgrQvU5dd2A3mhgoKQC83ANUPKvNLeBaoP1axr
7FshICGp6Yk8Bfzt2i1uC5LA9fxeU63bfSAsaDYt+aEdinLs3+s59sP1kxwf
04y7oNAp5z+uvTQIU6X83k7ugY3JHPH3sDj+JO1lzPQ5KmgvPAl/H4XlA7J6
fgNbP5zjTaU3W9JAOC/aKfE4DW5/fNhe094PddFc+71iB2BOQShj60IfkFm3
fe9bHIT7h/rz332lAoF4ZWspyywcO7Vhw3r9ZnQn03i65MssrNn/+s+nvwWx
HeTmzT01B3OOjy0Laoio7gv/m9g/c7B//RnhQH4SKnPdpHwzbB6IT35dbu8k
oZShju37NOjge6hQi4DtN+mNl0ZGeulwoNR1VmGKhMKakpY/hSzAyp/dKWxy
JHTAT9fDWGERPl+XO3WTQURs71t5yU2LYFl9Ocr6VisS/fkzw9h8DZaDG+qM
H5XCURjmfIGI0FjbI/vvPRU+630323aODEcWy59FzPXBzkfcf7rmOkBIaPp8
DxGL/w39kwavu0G0jsb/yJoGFv+q3cwEKXAsaITyG4tXYqvpIh/N++Bn89Yu
XWx8/bhykmixWPz6MDBeuYcG7hkhA8fmaXArqOCuzp1+mNuj3txmMgvey9JB
Ks0EZDo8MPJucRbODGhknvndiuz2y16q+jwHARKqi2yP2tD2W+6KO7TmoURi
WDb1KQkRxOW2fBueB0f6cTPzLWSkefGxcdRzOkzfP2osuJ2MXK8WXt51aAHy
ErLO7okmIavx1xWbexfA2VjvXfuXNhRmnnXl+I81SI0r7nMTqIC/we4VK9Nd
IHRUsjgNm/f5bcRU1bu9YMlq4eEfjuWzpGX3k6x98HsinlfqLQ1C/3j8MD/b
DxdYm58I6NHg7wZd66vb5kFbY13M9CkSMqgVjQ0smoeJ6YBXH/+RkPtnOWWb
a3SsL4qSM9pDRkbZwV+fblwAEacSY5Y6EuLZdHrrB+UeUFT3OHvHgwYl3T/V
7mRRYK/SreTP2H57bnqteCK1DxYHH5xZvYvlg5Z4Btl+HiTXHXn4M5OEzt9T
8y3np4Nim+cyvwQZbRBosSNn04GkKEk+zElGhvEK2TqUNehPTnfIPFUJOgkd
BolSvRB0f0eyQCgNZlh1j2mnUIGqxcH14gMNNnx6O74UPw+D64o7Lcax9abj
t/eYCR2E549G+mPr8bjTezbXgW7ocl6O3eJEA96bZWSaLQXcN8pNdWDxt20v
10S5Xx/0t0kuNXhj9ZRhZq3yyjyUB88qt2Hzszt3r0VBDB0Os6BREWz+EoIa
+aoqemETR5Bkw3usnmg7d8JVHusDoemTNfZ8z+diLba2zMMLvVDxSA4yurDS
puXtSYfE+JUSqV3YfBvlRa2xUaG9W+qZBjZe77+UHD6zlw6f2ncLb8HqpX1G
t6glc2sQuYN1VGqkEg5+fh+VJWIGdXMcuQe0beHrtaH6KvlmMNOYWrEt7AJ6
WrGw0ZlW8LOe9vHG1nmcg3qRLQsJ9k7+d//49T54Fq3v7fCkHd76+tNnbbC4
+6WTdE2tCyh/fjYX76aB7Ufx06plPdCo4fMl5hlWX36wVr2kRQWXjP/G9mDj
Y3lQ4GLRYh9s9TXIacP2k0+75jd0hAZn7rQ5PentB1W9gYeV7wdgNpl7Xmat
D1xDr9bTpgahmL9T4FcOFYo39XWj5b/wVMnZnrSrGR08ne19NmoWQpTvcbER
WtBlXRnO+JNzkNWDdG79JKI9dw1FUsbnwOmzvrfpRhL6+13+GUfIPDCuPmUV
JZGQ28u09l2qdPAL6XZ4i81vqYDQnbsddNDx3iOw9S8Wn4xEpwOeLYDcgvbV
WCWsPignzJ+WWYTuWLsnBpxtiOuI3oVbtYsgEKmm6/GwFV07MymVZroGZgdU
/SPOlMKK681iviQibD/e4HrqCfb8x7lyeLXJoJLrezlnog+eb2DxEad2gLTn
Y6+hxn44tSd7H+vjbrhxqUbSHovHCpYbu11YKDApojWrgcWbDDeRIYJRH3Co
JmXKBdNAz/6FYcsHrD+6Hy82vY8GFIK86OUxGpz1uHZXB6u/aFd/viEazgJK
sEanfxGQwBOD+7Kzs3BH4v2ehfZWVHJU/3xO5ByI8OhuTHRtQ3chLUfyyDxs
vu75x+oxCa2Znbym0z8P+22EtlM2kxE7mxnX2wA6jDQZRVTtICNeR/ehFMUF
uPS+RPlwLAm9ucGev9i+APUv1vMfTW5DnZMDrd+S1+D+74Kn+uPlUEI7vpbZ
3QWD1o71DB0a1HgJCplZ98KDV8l8x97Q4KlWnc/qBBWO3Z9NvIrlexNjkzPH
T/bDgzaCbvIJGhh3ef22F5iH67fKelNPkND9VfX5PbnzUOj44BPrAgkd0Wed
sbhKB8GLgS2c2Pr/Xawnx8++AGMpd7RZmkmo67rEmdO7ekCKq45Ad6fBG1iN
efGZAr6/+KaCsP0jVt0YtDu2D7jcene/9qRBdBz1CdVmHjx1DivYpZKQf7I5
8SoPHV5V7LXOFyejxqJvks3pdKh8FxtJ4cLq7yNXZWI71uBqVO7k4N5KEObZ
nlnJ3wv550M8Al9g+XVSqCclggo3cxNjXLB+9xAx62hEDFY/kGnaB36TkPm4
+eBRQzqYm6K8Kmw9ClY6Ht3X3A1nnny3NnCkQV/TOs210xSw+28y3hPbT3bR
bnlLHn1wTLN2icsPi48+hB0t9HmIyLo2N7aNjEYtGcKZH+nQ/lBP/bggGT2c
3ORJy+iFF+InfMlYv7d4Em1JkOgDDT2F1b9hNPgpU5aSVT8PfWTP+DB2MhKP
T2J4uNHhoUa85xUsvh7PWFwnOk2BcJmmQ3ew8aohU4KnJOjwaPlt6Qksvt+h
RZlJTK+B2BNDPt6ySrAsL9r49CYVsn663KBj63dIY52lojYd1C1e809g7xcQ
8Yzn8D4KVF3LFvfB6pGYMZ6SjRPzUMVHD0zBnnd3zqvjO4J6gT9mQi4Lyz+p
9HMeN25g+3WsJMcFq68msE1nVk2BmMCndV+x55HW3qG4dysdRBfqCk9g9V2D
sEsaqZQKvKMSKW+w+Fr7IcXR6Bwd9KI2hklh91fn8HWu8qAAr7DCK2ns+gGh
cI/3rHSQcvz05IMoGbVJPU9M7OiFaelY4XQsP7w+u/bk2SM6OK2+utCM9Vuf
R+4eGhCmwvXDAVrz2HzcuPV1OEeeDnzRHYn52PrryzniaPVvDTz2zbPzb6oC
dt3tLlQRPXhGyDl1RfssXH6+bDYo3AxLyqdtupK7gKzvO/PiRCt8nvT44MxJ
gazRmzct6W2QJBu4pdyqDzRpOtXBnu0QdjskRvdqP+xo1JkFxS4QOC89/GoX
DYyMS/yO5fdAuLN+VJo/1l9trmd7dYgKAq8YAzbY8xVbeydmzvZBsZzMXhNb
GuTah5YZqNCgiuMo/QLWp95+d1rS8c0ACC7e3ie/rh+0zj/pHRgdhJEkQq8e
ooKyvIQmLP2FUzYqxTK8zSg8+nd11IdZ0HiofEWlugUFGub7i56YA+vBNlH1
XCJqtXS4fGB0Dnr/ZiHZ9SQUXHYk/VzgPNy4dqcko5WEyDYiKtHKdCjUvnDh
FjYfm0Rcc4pIdPBafDjJwPr/Hm6Sw8qTBSCvRQ47qJDQqu3WQy3Si+A4p/0i
g7cNveR59CivahHqqn6xLfq1osBofyvKqTXgYHN1lD9aCj08Ch/OfCYC3YtH
3dGTCo3VR65zqpKBbvDfzuKRPtAz/Fet3dYBs1u8aP11/XDIZOfxHrdueBw9
M9SG9Z3b+JI2edN7QfvGolcftl/vKzTV3TzRB/LJ8c+2Yv1r3NuljzXh/UA6
Xje9IksDAetHh38P0uD6x9n5wof9cPERY/7MyVlQtpljPZNNQO4tj0rd/szC
c5uMqxqEVjR5rJ0o/34OfFVt9F2c2tBumfrF74fnIWR5+ynFhyQU4XzhRRgF
q3eMgpfebCIjB3KxA78/HZTILjrh2Pq0cG6RmZVfAEedFaND37D6ed+v/5xI
C2Bz4vO1ofQ2tHrYi7c9YQ0Ot0qTdreXQ8KmDNGXLV3wcVaPX0ybBpkKOfo2
5r1QVWvZFY31U8K5B42UaVRYSt7cOofF3x8Pf349qtcPBcaMEy4nafCv/IPs
BN88fG8+9JhVj4T4RAzE3LLm4doS29a98yT0SfTW6fbLdBDb8l/4JWz9K1d8
cTZnXYAt3BuU3FqwfPoq2FlWuAc+ve7Qy3SjgdfMp7aPb7F6L8FNwBPbf799
/Zx/RfeBjpTyurb7NDB4uVJlazUPqaX3vNOTSEi0ym4ldSMdJg4ui69i++9A
GL+fYSodSuZYdknzkFH+swVbIgmr9/feueskWAksxYVDRI5e6Js07ip6jtUj
Nt7faSFU8NLbptWFzWfDZJndYPQ89Eh+vcaL9fOFqEynUJ8O9oGRyd3Yelz+
Q7RYV9kNro7+CxQHGtT5xN3hPU6BfQWXn2hj++nAhX3R4a59sObwY1TiCQ26
Iql64nNYPVxS0T6yFat3DzrcVfhAhy+NdxZMhMjo2uf05D/feuGkwX9pZlj8
LWN3X9QR7YPBMYuXWa9oYKbXQmKtxa4P3Xl1FesX/e4LXZ5zoYNESGrzJBZ/
D9h8UJUdosBliZzwp9h4Wc1MZmmI06H0cqc8CYuHEfsPhZpOrEHJw9DQ6bRK
+HNYilRgRYXl6TtqBlh81ee//TNZkw7Fll830rD3c9Hfq3VcjAIn2CPMVLDP
D68XHTUfnYfjvhucnwmQEY+90gMZ714of9z7XQyLv3z1JaQhOzr8zVE2oGH3
I8uIbrD9RQEu3q8vY7HnKb4ke+GuIFbva4qf/4E9r+XzzvvceVRQ9SsREMDi
p/ztrbU1Z7D7Jxu6XsTuv6dAIrbNiQIbQ9QF2bDrHxyIjRlenQc+jgMWRVh9
Udwu35vX1AsqdhN/Abt+fq8jje0hHW4WXbF5jOXfwEjhGzM8VNhxaubQDux6
loAfm9llsXgilNh+A1t/7KxtcWELa8DeqakksYzl4z2LN6UMqZCyT+NBP/a+
fIW69+PU6BDQtDk3F3sevRSH7zZcWN375klxOJavOtwiXlOs6VB+iPNiGpbf
kl5ccfJOpICrevyud9j95oQn/UuN6fB6gI0jCbueLmrLNXORAkHeDWLJ2Pq4
vGpO4F2igIh3z4GL2PcP/Gy2jtlDBwV2u2s/sN/n5/B+LVOXDsZJ5y9OYdez
VXV9Ot5CgXt5Z65GY9+3q9TmIZjTgaXOfG4Uex+Tc31H8n0psH2L+vXj2Oe5
KiRW0i4qmJn+960Ou1+r6Ztf9op0yAgOf7GKff+nY6ziAcYakLqJF+d3VQGT
d303Mjr0QJDjKJN3TakNCOQZPsF51x2JOweNn8ThvKuGZ59yzGAOzrvqmt19
otXLcN61WWBw+6RWPc671HqOFimtb8V5l9LxB68aXpFx3mXGmnn/tWMXzrue
HW4W9t/Vi/MubrKzgTSRgvOuRU9VUVs+Ks67Th9h1xSa78V5l81cUfbisW6c
d1VpdapxP27HeVfXV4VvZ7DnYPKuHW+nnV+61+C869GSavbvrnycd/3VP3vk
i9Q9xORd+eciRe965SMm73pq/TW6TqkaMXmXmN+Hbtm0ZsTkXaZEi3/vQloR
k3cVLLeA+DwRMXmX0nBBLXcTETF5177bf4femLXivMs37JfAXEsTzrsMr3x8
Xn6pGuddkqOfJff5FuG8q+y/5GIB7yicdxH/7TdbePMdmLzrxb8qSdbEYmDy
Llu3SGOJn1XA5F20A/fzOv5rACbvOtnDw2FT0AxM3iWsU3y6xoAATN41E9q2
rrmnCZi8S8QpZIhttg6YvOulXOUJR/1KYPIudLPrAvVQETB5l6bdvM0xs2/A
5F3HJ1NGvqZH4rzrquy9CyeV8nDe9ZlDyvfNsTKcd9lzn+QwJ1fjvMtuRlxx
37Z6xORdE6PrOP31GhCTd3FH2D9cUa9HTN4VI6T4zEqlBjF5VyZLGrG+rQwx
eVf8KzR92NYW3vc+0M1ZTQP/Ye0FkeIIUErh3yDKWQiKPqJ50irpcC7hXb0b
bxkwLtvq23f+xHmYMfVRqND7DpyHZcu99RMe6sZ5WN3zjb5/pSk4DyPVRTbq
76TiPCzo+mxWUCoF52GucklF/o09OA8LWTgymPSsE+dh926cn1tZxepEF71d
7q6j8PLxeEXIYimafN7whtE4BlltVqqnyuqRAHnSqGb7BFxq56sutWhBBXfC
lZ7fmATu3PViTu5ERL1aoneycAq8Kqrnsje1oZEH/lEnVqZBcfvt68FqRBTD
2B1sHPcHEnk4D4txtCCe38d63AxngHr0xJa9RvU4T7u9QKtK1SgHJk+zXnJO
ksutBSZPWy95Z2fHySZg8rSO1ZCLNDUCMHnaxC2ozuMgAJOnvexPGLwt2whM
nsYfgFIOmGL793952omB9eVjkaXwW/1R5MniZXjXxeF2RLEY0Y9IsDy+vgLa
BqrNW4wr0fFhjpU0XgYkfe1oC86rRRv2FkX6pDFguEDo1N/penR7+61aL7NV
GCgac0nmbkDCeVdf3l1eBU/HqSNhc7U4r0tqEnhsX1aJmLyOlXvKWuKGLvDM
RhwSf54Ick5OF8V5Q6HSr9Niw6M8sGyHL+LRiTB5duKnYVMJ7Nuawzd3ogDn
eeXJ3wJSIttxnidfauqqptiN8zzulCKdN2m9OM+Tuls+PcFGxXmeuN1Vm7RR
Cs7z2gMVa1469eI8r7UgkEZx7sJ5Xl9W5MFvJ8gQavrUsXL7KGivSJ6tPFuM
hqNrQn97jEH1gP7C2ItaFLDLes6zbhzLQ/F1a18JyLXT+P39LZPwcNex2REe
IhJgnTnHcJiC6p9nPI2wevyAkevV8JRp2GVx00jsJRENu/802HL/D/RtPhzv
md+C+JYj/+6QnIHAirg+352NOA/8cX6IlmZWCkweKN0WsOGYfg0weaDjoenv
LmcagckD+9l1xAmCBGDywIGE2SQNZQIweaCllbnwuGATMHlgspPCxY70WmDy
wE1f9GhnH5XDmSw/0/0RyyAZODnPXl6I2MtPCrOor8D1yApflY5yxM81YS84
tAKrSmZjEeQa1G3z6GrmMwbU/366ciG8Hg1fM500klmFDtGwtLNHGpDhJxZO
GeIqFIXdWoTvdThvtMuWM/3OU41M33Q5npL+BBTHBL93FXdhy7X0hPjDmTBF
d1onr/MZ55F8w/cIAYGdOI8cWGARlA3pwXnkFfRU72cgBeeRpybGo3okqDiP
lPkzE7J4iYLzSM7sjUV3hXqgIpSdvLtuFDZNqIpLf69Acw8J7wT2jEPByX+q
RY2N6HPIg/itNyeApY/0s4bRgli4uhs+lUyC1GX++32lRJRcHHrwLfc0xGfK
ZwYsERHBrOEWQ+oPPHlstasN62csngXVBjb/AbE3zUavtQk4v9xJXl53j6sS
mPwyDfVU3GGvBya/FKsNFRHc2gxMfuk8aH6yx5AATH5plOOUrxrSDEx+OXKP
1/GbWAN4lXkMXB9ehoGSt4WvCkrQaPbi6HLYCnzvGl0w+1qFHpZJhp1UYUBo
z02D0551SGl8kXSKjO1/yVqjbNkGtND8LD7FexXsn/3bz5pbj2jNxYJlkmvw
yen7tt+StTgfpfDzeGdfrEBMPno8KnUhzlESqhhxCm2t36CawjP1ihQIm24f
9X+omguhL4xFh9e+QUFiRE6eQgk8DE25qxuWh/NT+/8kB19vbcf56YYU3ai0
pi6cn07mbQlVcuzF+Wkq45xyxiQF56dLCRv4c9coOD8VrSD2OGT34vy0we+D
oUVvF85PlZ7ubDk0RAY2nbjNU1MjcLEujXPxdhGy+Vb1osdoDGa1Li/xXK9B
pZXb9U2/jkP3Sc1v/kBAp17IGv4ZngAHp9RQ9+ZWlGoaZGmuNQW8T7Vc+Njb
UFv2SEnh02lw3krX/5FBREEHNia72/6BXh19fs2NrWiLfyVjetMMLKxLK32w
3Ijz1055xtJD8xJg8tfiDScUBvyrgclfm2W9+w9XNwCTv/ZnS6tp05uByV+d
RLkSjusQgMlf/SoemOk+agImf7W2CileMKsDJn/NzxDTm71eAYHO6/eL+y2D
QdAtk6XVfBS8wVJCe88K/Nx3dvTxlnJE30HZWU1YgcU6hZ8mFjWoyoeiXe/K
AM1dt3hPWdSj3Vx6a9kCq/B54MDTEqy+GOZvqWBDqxD/0ZfKNV+H813SxWH1
7Phq5NkW7jkh/gHON0U92q13G5xvqEix9GRAhOLtopPtkTj/jZ5rm2ff0onz
3/ae96371Htw/jsZfN82z4KC81/PC/eiTHZTcf57KJHy2imAgvPfoS+/0u66
94Cqz56Hhp9GYVf1riNcZuXI5WnTW86lMVCyM5Q61tiAOg8oL03rTEAfl9Ls
YFoL6vmV5y30dhJs2osGbn4iomOb92lM06ZAud5DZnJDG9odFBDNt+UPcOad
8UniICKGNllmvOAPHJXbl9DwjYDz4r093WML0hXA5MUTYcFvzK3rgMmLHRqm
OWtzmoDJi91+iajqHCMAkxcTdc/TklqbgcmLP/wookcnNEDm43/F5q3LEN9h
PeBGRshlkWde4+EKdIagT2XLlciqTej4igQDpDTfpq3tqEOiGy3y7csY0Npv
XOjC34CU7t7PE3RchbMDG/ReDNUjL93Qlo+b12Dew7pvNLQW59FZAvC4gL8S
vUzdss9U+iUMDXhNPCaegzMjgRqOx1IggtT4XmDxNRTmVJ2+59oB670TmgIm
e3F+3de8FNm0hYrz68rwg5cMmig4vyZyGb9+g/U7xg+/x8T8HYerTva+zqwt
KELqzhCb5iTQAy7GjuoS0f2MC8axr6aw+pw0TeZrQ88HlhlObdMQfOiZtbUd
EefbSrXNdy4RG4HJt0XJMlt+yhCAybddpMZGs3YR4HXfkfv+xQtwalxFbiK2
EeQXl35YL61ABd9xn42GteiPnuijD5EMMOy/d/doVT1KQpbdg5qrQDb0NtXf
14AyZA8Ynv6N5bsru3PyTOuQkEyYwoWILyCRXlMh9+4RlIg9Ntnf1AnZQx9L
RjIowOTphfyU34M7qDhPz3/sHKMgR4E951dF9k1MwnPVAftqChHx316QPaI8
DUObHZReDhNxnv69d6r0q1MzMHm6YOvn4ExjAtjM310fe3MBhsvlHqiqNUNE
xn9dEQYMkBj/Zm3bUIf0G9/NHhpjwKz2ML0Qy88/ZcPf6L1dhVhLr5ydj+px
Hm991fzBl8hyxOTxEkMDdtturoM96+STFe7FQzSjYmvjP3/IsnXenhueA8Wl
geOev+JBM7HdtvsXgjjPRvaR/Fyc15/MGVdmI5FxXn8u3yucL7oL5/XO4WnX
1h3vxXm93YG7iwL9FJzX15x7UJrHScV5/Rx/+H1/Ui/O6zPcB9yPb+nGeb3b
1Ssn1ZXa4Yi6sg1b5whUy1g6Wi0UoJikSh5z1TEg23d7CzRWI8v3C3eOvhyH
E2ezlsa4CUjj9/s4uZYJEEtS9j6T1or+3SfZsMtPQWWg/vdTDCKSHo2daXSZ
BnPjm+4bSojI4qVid/yFP5Ccc4T0XhGL73UW67rYZ+BYYvaHZPsmnPcHOZzg
tktFwOT9+oOu8uMS1cDk/dfYF2/VP2oAJu83Hzu4g7WzGZi836HKklftBAGY
vL+50G6dVFoTMHn/xzjfzQNxdcDk/YGFc7OL7RXwtbFq+zbPZdDyXxlOFclH
p/aNfLMWWYESmy0p4yllaHRPu2dM1QpwNnxR0xepQUWbN2e1OzBgUEs25SjW
H5ZcPso5yrkKyVvDjTqONaAsQ7XY6exVyOq74s0iUo/7BDRNlyPbp6sRz/wd
76KoCKCx2e/988wBxCbu26buz4Dq23I3bEve477BeKrgHw9SB+4b+OtNjIvz
9eC+QZ00n0WINgX3DV5vPPzl4S4q7hs8NJufkf5IwX2DJpuztJ9fesDFM7vx
auAobPWffWT6vQylBTYKPhkYA6/A0Gyhkw3o3jp+yR6FCai4IWf8wL8F1W2V
7jTxnoQo3bMPjwYT0WtVd62opikIrvp92p+7DRlKDh3azvkHqtQzXdQliKjp
88pF0fQ/oPTZtCW8nYD7CT3EmcCEzHJg+gmCRtVnS3nqgOknnAoQL5P0bQKm
n+Ac2iwgp0UApp/wfEvP8rW/zcD0Exg5g+IvxxqgoacoxaRmGZ67hbyRYEfo
4PZ3D664rMCd9EiBm/GV6Gzvpi+krQzY0L/jVs1YLeJ/Hyzjns+AMyqN3/JZ
GxCh2rVE/+oqEHeVWNUv1aOTjxbSA9evwbbh4mbZ8lrcf2BjrW9bc6xEuVMN
h6bFg8BbNXFPwJlTkD65uaBiJAl6l9RmUpRfwYeadOe14x1w0ot39mdTL+5L
5EQ104O4qbgvccRtiP69h4L7Em2/fru3neiFMeOndc8p47B2d4N8VysBPfWm
amrum4STL4auH5YhoqqOOFOTR1OQu3I9unpzG6JszVPwLZkGFfMyscEHRNyn
qBR1I/4X3ghMn6LGJyqbIk4Apk+Rp/PZY68cARZ7xKzMsxeg+F7l2qPeRhBj
neU5Mr0CXQrOrxr4a9Ew0WgqPowBVssRCSZp9Uh/y4XBbcqrcKhuVYD1YAN6
fO29jEbvKjBmtqbeeVSHrhas/kBmMWCd7lawLvA+xPxn75L7tRPenpJYFxpN
Aaa/8QKZJrwSp+L+xiDVefCoHgW2ZNxysyVPQvwHtxqpFiKyjNBVHBGfBtUk
zbqff4i4v1FN+AvZus3A9DfWfv7OvYrF9/dcY8I/rRbg4KNItgDbZggskD3k
osWA+aENW2xi69DRyzXXdPoYIAJi+qDcgCwevYjyDF6FY5UPyPmR9bj/Ib3V
WIhzuRxx0vy+npd+DM1n9Me12g+B/NivdNKnLhhuLhdbWqTgfog4F1vmlXkK
WMkctUgymwLdALbRaxvbkJ/P/rDv76fBJ0lziTeGiPsh+guPY8I4CZBPca3M
naVDqzuH9N8jBCDMpBKKvRhASb2baO5Zj57mGdB9xFYhKNEyUlO7AQ1m5d3Z
GfsRokfoGgeMXcHSXC2jxrATZKmm191cKcD0TXSGeD5VYfXelO1J6a6kSWBr
pectYPX24nC3qs7CFIiOcr+eZGlDTN9EwLW1ruJ3EzB9kxKfXbS9JwnAfqhV
bcpgAXSDLXccy2iGvQ9kTlxqYMAbmUHe7eINKHy3T1qf+yoYlLjHzDbVI2UV
+RcXI17B7lB509LMK1AgJ9cpqd0N/UUbLxVsowLTX1FXqHz1tpgC8oE8J+nx
U/CYJVT8IVavMH0V0Zara/ZKBKAEffU+I74AFHKU1wDWvy/njHO/iGOAzbFa
E7GeesTjdL014+QqnD5kKiG3owH1c789ELeE1b8XeQuryihATFsvX+LfA7FP
Yz+ShKmgshJaMsE6BXuvPFGrHCOiimPJ0i/1p4Flzd2C0UVEY84P3GZr6LDz
7ZgayYgAZzTt/WTmGJASsXx3Lzb+TD+GP/TH/uDD5YjpxxBj75+2uDmg2erv
PNpdHQebVORP10Q/hWeWnNfP6uaAhepFs4vi8bCnTd6K/zYCB/Xd361O5eL+
zEzbx+iHWWTcnyEuJ+hNPunC/ZktIoNUp4O9uD8zMNJ54EQXBfdntuqIHczn
oeL+zOOuDm7voV7cn7mx32H5uHw37s/4+dF8Tl5ohwsqXiE8TSPA0yEaeVa9
AJXIHzMKlx8Dgtwty8M+1SiFdfjZwafj8K/qfM2pgWakLGhierJqAp4ECR/Y
F92Kdr1cHuySmAKlAKPka1h/f+oJa3C73TRcVtulfLCaiHR/6bhpnv0DvIRb
oTo6rej1LakNzWt/wPXHfQfe6Cbcv3H7u7PvuRwCpn+jWHtHUGu6Cpj+jchg
143dFxqA6d/UFxy8/Ki2GZj+TYmt3O792Hpl+jeHYsegtLIJmP5NjtVsk3xD
HTD9m8BzGxqu8VVChtf3V4Juy8AxPVt29FseOqCWOjojsALDwvE/PO6XIZvE
s9IvSlfgr4nmHZ7FaqRi/n2815YBmUOb7rrJ1KNNGwp5nqxbhcDrkdu8sPwf
6eC0ZTh9FaTq/g4ela3H/Z62p+RGVoEadN6/j03y0ltQF4mPo/RfhzEL1fWc
qenA/mBNJuHnO9z/ieOq4u3P7cD9H/2V91xF/7px/0fxDu3MLWUK7v8UizpT
ebF4yvR/6ptfyT2Jo+D+j8/rJM2WPCzuuq/QbzwahcSiLU8VTcpQE5exWUnH
GAwECLuyb2hAFbfWVFv3TID6R+v4Ey4tqEyv1/+2+yQ8c+T3CfImonzDyDLX
iikwb/+qY8Dbhqz+CLCJr/sD3AVqocH7iSivafPf7MQ/sD0oK853moD7QrYt
k1v7PMqB6QspJDJEcvtrgekLGc93P2u93gRMX2gx/tOY/FECMH0huYncwzEs
BGD6Qqa7PtWUcDVCV0iUpHH5MrBIcQuyRBYjQbnLvyYdV4BELvv4+H4larAO
OVW2hQF1vRpqji216Dl1t82DLAa41M2obcXyvfid6QraRSx+Xasz4VjXgA5E
yol7s6zBWuhvdZGeWtxHMlbI4v4TUYkMNidpFEc9g4dt9Q22Yfpg6XJ24Y56
EmgpVGf8tQgDzjNxa7r/dYBxDaWAWNyL+0uStXF2dhxU3F8y85ngPz9Awf2l
QVv1FzSLXjic50r1axsHA67Ye0JFBPQwJWL80s5JsHCgX9XbQUQTE3VEabcp
UI/SCM3b1IY4MgWrg3OnQX5gu33SUyLuN/Vc+jIR69YITL+Jq8T/+aPtBGD6
TZfuScz2KhJA7lLYWa30BSgiSbvdX2qE9/7OhXvHVkAvV/+Dy1wNstoxJJ0S
gq33PuKOiC/16F1R20imwipsjvwNHqoN6Jpvw3uljlUI67J8GvG6DnGuu/V7
2P4znJMWc26J8gC+okssy887IT75c4TZGwowfaoLPtKnB7B6lelT1bfdJh8z
ocDGXsldvvWTwGv5+U1eLRE9Tbrxo1hoGt5d0a07NU/EfarUwkH1wv3NwPSp
JMI6RSqweH1QKO6z/qUFMC+X8s3yaAY2ze+0y0cY4Lp8OWf7yzqUH2sVrd+N
9fvpF7KLFBtQgjTXly3+qyBCNHz5PaEe97H23yVJR8hWoAOSRzPmxO9DeHpR
uvx5BfinHTYWEtwF+eerD3jPUnBfy0SB5Wf2Pwo8O2rb42MwBetqm0xGNrSh
5O0h+368nIbSG+kngxKIuK+lm7Y5YZWVAGaj8qd0p+hw/aLgB30ggKHa8Y2V
HgyYuaTS+OZGPSJaVf/bLrIKgl9yyox0G5CCnvT8U+tI4BVxLBBIc4Gmvv1a
vCqdcFQm7125HQWY/te07IcXeVj+HwpjIS58noQCAz6Z4e9EJLbMWrhtcgp2
aI+obWdvQ0z/q3ssz0C0uQmY/pfjl77Dl7B+Kgaelz04tgDCHCXKjaXN8LW0
1Nu6mgGKusd1ArY1oIH6lcwHzqug7FSVH9JVjx5XRfKVmoVBBYkFAqMuQuAT
hkAXlnds45JOTQtRgemTqb/d2x1ZRYEzUUr1DR+nIHpK2Op//l7B9MfOjT1S
O6xAgAfhlzmpIlj9z7ihsoCt33uMJ3pvPmPrMXPFxbmlHl0SppEN9FYh4ux9
mQ27G5DJ26CSkYFOqN3RZcVRSIGvGzrs7t3pgdEXup+CRKiwX+aEE9fCJGjf
5qj/N4jl+4stCdc0pyErPog+00dEP7aZHJgop8PMmzjKDayebPRfK1ScZsCq
j7hIlmYD7qvJmjeb1N8oRysGtu+spW/DaRsxW+gQgp/EKJ/V0R5g+8FbaM1O
hbbr6X37VaZguUXnSC9WbwWvxly9PEAHnY1XFSf0CHAnq2Td6U2rsCvR5+cH
LH9kuG/OCv/WDdYZgROvJKhwS/JUcWXHFFwJdNCww+pJj4yEsNhXdPBhGyf3
6BAgwuTvH6dfDAg6WO5L3tiAdjdNK+yKDYHJPXaFeeZnYM/Br0HH2buhQmTA
yXwzFWIqHjffD5iCbWz+uV7YeDP9OPtAh5ezewiQkUgQWdy0AErAf11EmgBL
Dt3Ux2qrYF9qdGVmfwPSzPXqoen3QF/Lnpe/d1Jhx5OcqmP9kzCSU8sn10FE
h/12pvLLToOQen9vyzgRgeNyYm8BHU6/kNmfjo1nmeABeY0hBqztk+GEww3I
xeSaweUIXzhs/brlR8FRUBfa2kG0nII3mzyPP8P6y51t+RqyS3To9tR21z1M
gEObmmaGJVehwbvgQAQ2H55CVdVFC9h6f3on9RG23ltbc3Jusk7Dc8Msc3sG
EV3iPRNdEk+HoFwh9QQDAqQovdp0roUBLSLFAjJSDWiMeOGT07luyLuc+EZ+
BxU2uA9XiWdMQeHqev1KrL9iNz84szGyBz63t9XXCFBBsjou918jHVL6vNLm
DAnQQW86KbnEAOp9hvA2bH8y/b2u7pTj1A3liOnvZc4LDWTfLNeUPfEqMNMl
Dtr1iyutZp/AdLcZ19ftOcDrLh/H1xIH72+YW8ofRyB50cLFXiQX9/u2330n
kviVjPt9bLfHK497dOF+n+WMX/c62V7c7zvb+vJoKZmC+30h27vM32+i4n7f
XPa9N+cne3G/LzuoNVdGrRv3+xw/Dggr32wHO+VdMa9qRmDDPerlx935iDDJ
PqG0dwyKV3YWv7lYjcxUrrxS8B6Ho6dlrhJqmlFGUvLejpIJsGQNaroV3oqU
32+SrhKdgoHg37bGC0RkY3LgfI/1NMwQ7TiS6rB6wswIBZv8gYCdXqfuGbai
1l/BAScZf0DM8L+DYXlNuB/o8x/jwJWxYmD6gb6HNLYjUhUw/cAH9mej+I81
ANMPtA2u+eKHxSumH6jAntS+Hpt/ph94Xefz0sWWJmD6gXOd/Ze+UeuA6Qd+
Sk664S5fCSptWxtfuyyD7Y0D9LO38lBM6WZudf4VUGtIDX1ztQx9Hud/tA6t
gAkl7bfW72o0+2CWw9qaAWcFT//p3VWPci0WNxFYVoFfxnBSANvfvB4cBtap
q0DkN+NLVarH/cOYq4Nny/bUoIeN7yrOF4aDX/zx4F/R10Bb9GIc5Vw6WMbc
EijSeIf7iepj9mTf7x24n1jSU5z1Z7ob9xMfpHz6WbifgvuJa758mipiVNxP
HNG9K82fSMH9xPu2AY/ysD4iyjWGe9pjFEzSHSqd9pQhSj3PnCVxDFQ3jtKO
DtajW1/u6TSKT0DXb8q20OstSLP78GXG7UkQe2NtwfmAiBrOpa6zRFPwUyp3
iAurT8bOyzl8YfkDVaoDAeEHiUjeTkST9fsfGFPSWbu4TMB9xsfj9TvMLMqB
6TPaND8tZmmoBabP6Ni/586YeRMwfcaqH7sUX2H9MtNnLP21q1aFHdvf/+sz
Fl8545awvRGsBniu1pcsw8Vsa67Ma8XIP6uYcshhBRzem76+YFuJNsadjD/M
x4DHC73fgitq0cl1zo8ZGQxgI0UrvZ2rR1WV+6sVzVch9K/H1VscDSg2ofL8
P8Yq9P6R/mE7Uov7klERA1OFKZUo/PO2EqlL/nCT0dx+bfQY5Px3N0J/IBHy
/+nPy/WFQknEpxN20h0wqO9jWZzbi/uVL4XJ15TXU3G/ktxlNPt8mIL7lVpA
GdW71gt946Ojj5rH4ZPLp0LBdAKi6/wtHds6CTY3Z95IChIRy0Kv4JbbU/Bp
iNuOFxt/UW/dN6E/pmEPP3vS7SAi7l/e4Xw0KWbbCEz/0mh19ErGVgIw/cvU
/MMG27D+W2/7ycbslAWIdUsL1OVogrbq/fyffq/Ak31b7rwZqkFi8J+uYhAD
GvM5ezg+1iNNPoHxNblV0N83/sNTrQF1hNoRUkmrIL1VMfNfVB2SN5RM3F79
CU74xHebpd2DmrVz+jv9OqEt0GeP4EsKMH1P6dMea45Y/mP6nqoFrF0y57F6
2c2bvrlqEkKFQnd3VhLR+2yvv4l80zDVPGJ7D4svTN9TaqA8wWt3MzB9T2GR
ivyLWH3os5118OWFBTiykJwW7NsMmj7X1YiHGZCU+NLr2JM6dLc6paC+gwHd
7rMP9LF8Z/JQP/aq3ypscbjAYZ9ej/ui8Vx1lw/qVKAK3e155VH3IHOCLbT+
9T7od1risPfpgohLdSZf/1Bwn3TPzY+iWgwKRJ64t/PWsSnQdbtSF7C+DZX8
LpjLCZqGvIx1ed9TiLhP+vym5wklBlZvTQW9Dhqng1/BufRWLQJwXnktpX+X
ARGXc6VZberRg5z1DHvhVQiRC/groteAzj7vzc0v+QCmweB7pd4ZnkntC1SU
6wRFqhJ7rRUFmH6qoCfn5lAsX1rtvZz4LHISwnr+E1WJJSKl9ULL60am4HoB
x/hL7PmYfqrqnNRKQFkTMP3UNF133QvHCTClN7qhVGcBDN7usjata4arQ7xR
gxUMeLN1710eoQYUvOtITvUtLN49cj0n3lePju2Mixu1DwVT59nbl9PMwTnd
7r+c3d1w+Ntw1Q1BKjB9V/vDgWaP6ihg9+0YT37EFMgmRa31Y/UK02/V21j4
Y508AWo+FBhJbV0AO1Vx976dWP0vQbASjsbqQx1i23B9PWK7uavznfYqtMic
u6KO5XvOriec3J2dcC3g1NyTHAoEKWk/NbXvgeEI6oWy7VRIQF91P8xMQrcx
9+GpfiJatR0cPa02DWy2IZL1A0QkOFn40qGUDl/1G7PfYfVMcKJhe+YEAwpF
FX1PHG3Afdpt1lwdun7laM/znfFr4jfg9WevE/vNN8E3/6PZPH09wF6ic+fd
Bir8di6TEPlvCp6VF1+RWCOijnWrsV/76EC/+zpnJza+2zjX1kdxr0LwQ5tL
DVj+eB/jSXCO6oZbuzjy+bH94b3fei2DOAX1T5U5fbmw+XoqMC0eSoeWd/O+
L7Sx/sJdk3emkAFqDz5ydKxvQLcsLTMDrINhRWr/sdZcE+C+yv1d4l8XmDx9
4/mQlwpZTa/4rvtNwa7/jAL2Y+PN9HfTNhOSXXcTYDVtv6UmzwJctLpimbwP
6w9+idDqVVah9Gye3fMDDUiKNrT0S7MHHN8eSa7G8k2ECH90W/ckeN17FpzT
RkSGzw9MreyZBhMhwu0zU0T0VdOO0yKPDsXARQ/DxtPnsJc+ojHA+abf19Mq
Daiwr7Wx3MwHFPceJGV+UQNjcVkRdHEKdq6XX/XB3texU8jXhU4HWc83rVLq
WH634Zk7KLEK6l81khnQgK5qKw5FTHZD0Gj73tT/6Yd6aujnV6bgpUJ53CFs
vIv7fy5rxNKhSaT83cxJAjie75XtaGKA0jNOLiWsn2hdKy3SN+yGS7ZBbQys
fxB5vMTBnTwFe+mrT+Ww8Znwi9o0FNoDAkfenrLA+ptnHzcLedTTQV+gx/k2
Fm/ebt9h943OgCoO/aMHdBpwv5gYq04tFS9Hg6J7fD2kLUFItLw+smNe031T
vrxiN1bfz5KVNPUJYP/jIZfKhlUQts95/gubf7tFA27pwG4I76hIaRanQrx2
gG9A7RRY/7Pd7MbThjppea+PeE5B3Q5VugFWv/6xixi+/t8qPNkaYHn6UAOa
VctXdpftgaTSkMBjWP/t+PtI5ZlMOqwr4bm9Axv/f96CvpW9DNCYLV3kVWpA
UWxWiVKxD2Go71OqlYUSuB00+fj29BQEXJVcr8TZhuR5ghYbd6zCTaVdSxew
99v/gXWXcWc3oA2LAnXYeD8Lfp1/6BMd/Fukthli7xNjHk5fVcH6EfVw+atb
qQCvxYP7Y6aAnH9BMBsbz1N6Qy3OVXQIrzvOJYM9D59N1qeUGSy/yKSj/5nP
sadtFdYRd+CoJNX8cdFOqLP0Y2XjX4WMEj83LWx8avW/vS3I6IYdd+XUV7D9
8bzw5suXz6cgYmPF/hzs95sHCyCOsz0w+ID11IwoFXrehhla/6SDRASfZSF2
P2lu9ncjtlPAcaK93B0bz5cFodMfpFfB34bzACe2v8NGLyf1sfbAYS8uucPY
+y0e/q2pl0AHDWmVOkOsH/h7g+ivnDMFcWkit/Sx8S/5q3bhMYEOMWJ6i/bY
59uJfvtjlhkg8zWJnYr1C0zfmjtjawhtsgwxfWuW//3H9K1bFPL1jQLO4b71
wwTLmtqXAbhvfXNNM32L6Vfct+YNXj9zNjIL962dd/s1KDaX4r61q/v++hSs
3mX61kF5tuSbn1px39qIR5hXUKUd960jfmWGHDzfhfvWKfkv8l7XduO+dViO
8nU00oX71ge1I/ePkNtx3/rv9u/0cq1W3LcmRxW47aRU4b71ntv1vPxyibhv
3XhYZqeDRxZi+tYd1y3CeD5UIaZvbbjPZ12jHgH3rSvkDsNNz1bctz6aP7Vj
z3wL7lvL6+/SnrrRiPvWQeFnz2s+KMd9azJvgPJwXwLuW/vtZ6vaZp6Eny/0
0Wu8f//PUmD61lsz81YTntUB07c+1vA3eqd3EzB96zgHLd2jiY3A9K1fO+Tp
V/6tBqZvbfFUtfuRXTHuWyvE+lc4pUfhvvU9DT79onVp+PlCJoObrGoXS/Dz
hcY8ni04767BzxfSfW24fvd0HX6+EPsVpb03L9Xi5wu9lxSoSRsux88X+rHp
+4StSx5+vpCgW4y/1Uc//HyhfRGbKh6Y/sB96++GV8VN/EqB6Vu3vFUYjftb
BUzf2mF/Z02LeQ0wfWu19iumOemVwPStj8vvfz70EuHnC1XLPNzuNZmGny+k
4NnY9P51GO5bNzYcbH3kkYP71t08eerch/7Pt241KPxQmCH1f74152y7socb
7luvj9vq9EYwAvetd2U6zYglJEPTZkFBBa1q6Mifzt22uQhOlMZvanzQAA/v
rVCqlKtwH/sKq12FBgcJ97FjbrGGXpzrwH1snyNhJ29e7MZ97PLsiAz6l27c
x07R9zP8GteJ+9hVYjOpnadJuI9N1DByuMVoxM8fIipaCz/0L0Ha5zLi2VuH
QWf2jcQDhQaUU5DXABIjUGrZOfE8vQUxfW3/a2PE4YhW3NdO//pWhhJHwH3t
Wg63F4XEGtzX9rsyZ1EtXIj72TdFVLvNqPnA9LOPp2n/P7ruPByq/38fuEiU
SJKlokgolEopyVMhFEUKJUuyVJK0arHLkjVCIdmTlH1fjmXGLNaZsg5a7IWM
NUv85ntdn/N6//X7qz/DOXPmvK7rfty3kv37OsDz2dt2NO64sbERih9/JERN
MWH/js+nrmJNwIPxHe9PmITemy0BI2b1qC8pK2/TgPVwLeB9SRJxYWwdW/JQ
nntn9qBX4qoS1I/06qhbCNc6IupHou6ezJdYR0X9SAU5tQW7K6ioH8nHlfCE
j5+E+pG47TuanwpVYeybJlbx1czDm/X965fo8VAi4Rf/5OYCvFtD8A1qKwWR
vq31G0UWQenJYFR0HgHlvZ3iIuQ6t5EBz3uvbF7gnQsgAZ73lnxXmPFHuBbw
vHedTVuI2WgR4PnuyffehRGHMlC+e92m3XkG+RUo3/0pNWhApmxGDc93u3Lt
iU+Zs0X57j/eRT+XboWhfHcJ85VNVEEaPFH0XP47QITWmb6/WXuL4BvpT1qu
cj1MO4UXG87Vovx3r3PX0q2OLyj/zWs/So3a3oHy3/VaQtlyI10o/z0nrh2R
R2Kg/Hc359+4I6ZdKP+d2OdMfJHahvLf7GrJz79ntKC+po12M92fr5didt8O
+J5/Ogh+LRxfLvpTMGPXHNMLLUOgcyXKdoqXhuH5cP9NYyGrE+goH65x16pG
zJqG8uEakO26W6Ue5cNXJTLN242qUB78SnC+9HvJPMDz4DcNh7b7GBAAz4Mr
ujRJZo3Xg0XcTpUeEhOCsHyJCGoTlM3b8Mw9mIR2lUhVhfQG1C+1vfuv3DvO
OsD7pQxOnY+62FOM8uPXskv7NcXzUZ+UbdU/yk7xWtQndWngyY2BQxTUJ7XH
aLq0bYmK+qRUr689ds6IjPqk/Kf/QZ9ADbaafORj8pt5eDRvnMdb9RyuDEym
fVZbgFepCaq+RwqBWGkrLzC2AH+ipU/bKv+XLy/Q9ik4m0oCPF9+kE/iqecm
MuD58gaeMkrnMwLg+fIPj8VfrnSXAZ4n3/Kv057DLBHlySn3CJfXVpegPPmg
lfbh52onUZ6c12C8dONld4hv1c3ZH1EO5tffyso1xkHF0smuWL1aaDB47qD+
KhvlzVfxyCYHyrShvLnX9T+hf3M6Ud685EqAMz2FgfLmDZaxmZgJA+XNpQx2
SYY3daC8ufmczdIG1v18q43pn/N1AI6tctVbTK/FttUrEAtlhwBk/hQznjdh
grMV6nJ3h4Fb/bTla1k6hufTH4eF8Mea01E+3Xh/xzZV92aUN5/h2raw62Il
4HnzzOTwp2JlZOD+MkGsv8eEx5/DawpGG0HA5OA5g+2s72tZ7qzLFk1g5lN8
m1Y/CefapBq8yRSUR89b05nRk1CB+rQ8ZMX++BfVoT6tI/StKwFvqahPS5Zt
v9fF/VTUp1VpE5YiF0nEhCy2Rp2KWgDD5oWzYaz3uJtc9BsbNRZheNuY64Yp
IsqrC6o2tDqZkgHPq88ZzkrurKgDPK9efZPza5lPNeB59PCzj1bHXs1BefQu
NknPmqQqlEfP0Xhl/6WCqIbn0TcVBTX+drREefQXlTls3LOBKI9+oKxMKsU5
BVqqiu71HiHCMC/nvbLLBSBXL3hvVxQVNJb2fjb7XoPy6kPOWa5vVb+gvPqV
TTZ/tT61o7w6sXY2/0dyF8qrr/Ic3ynQyEB59YMc3tb9KV0or/5bqGC872Q7
yqs/22CvX+dCQ31eqWYfmnbMF2KPpe4/nD83CAEe07P3RcmYtOXn+N73QyCZ
Vnld7XMLhufZV73ZEng+nI7y7PvVyFlcOTSUZ+eIyGk4cqkB5dnlw1c96vhd
jfLrCkJkjRiFbMDz60MNFp0pvLWA59fNyHaL8hr1kPPp2322XCY0iRFkc7Ka
YJNw2F0Pq0lgdM3oXTzQiPrHNt73n33OTgK8f4xLt81cKKMM5d27rt7gfxqV
g/rGXE9c+HeO9XzB8+45hC7uyTwy6hv7lD9UmrdCRX1jjk803aZ7yahvzLk/
6cRu9lrMR7LH/fbzeTiuFFmv8kkX9pJkP5JlWc8n6k+6dmMexGWuMw9vX4Bv
g+SV3Gs1KA9/49bDwtNGJMDz8PHdkzrX1Vjfp//Lwy+d0l5XvY0IeB7+dKAD
w7qyAvD8+7y574vzWW9Q/v30Ydt0jbQilH8XnNzsuSB9COXfd4YYMRunXGC4
6hMjTb8MTsfpfZjUfwMB58foXJ9qYHWD79MM488oH+85ystx400ryscbWR+8
f8C4E+Xjg/nvt3R4M1A+Xl5U9pizJwPl4/W9Niv0HO9E+fiYl8+j+V9/he71
/FtKMwfAc8f5l2fFarC9/E4F5v8G4VJ+wuBFm0asv73Ut0B3GIzlJsX3M2kY
nqdXu11x+agHHeXphwhyBCHlFpSPr6xxN+9MLgM8H8/3YIflUgkJ1plvpb2z
ZMKpsrLXIv6NYHv9T8C9tZMw8+G7rNebJshL7Gu9XDgJhabr3OkxVJSf314F
925fLkN9axtyxq91DxNR35pDd2I3xxUq6lt7+13OLt2DivrWPJ4P0o0u1WHD
YBhj5bEAMsNXPQTXVMCJmYcxLxUWYd94VKiEGRHl6/dnlbvvOUkGPF8PhQo5
zXIkwPP1+0r3yfca1QCenz8k4Kpi4vcZ5ed11P9u7g3AUH7eO3TftOp5AZSf
32KPHb7ywRGeRT9QfFlTDP4WaVze2yPA2HA+qqO7FTi+EfYUBXWgfL3hfW6r
ul0MlK/XaD5//UoJA+XrZaz3UUnsXXAhhhn5MW0Qdluwlfzqp2K+sfkC1L9D
IFh6uKv2Gg3bdtWGGHdqBCzvcPX5JtKxm5HUl5NJv+C94LZfydw0TKPE6VdW
yAS0pdwe5PAhAp/znSFtZSZc1mv/wPBvAJ5A+5WSHiaUXp3xJTU3wbXuoymO
gZOsc4bZgUM8DYDn8c/8HjsXvZWA+uaUeho3cqdTUN/cUdWPvW8HqRiex/9s
qe7XW0zCxluqFl+yL0K/wJpT3Uu1sG1u5cGxjEX4cDo60n+YBK7uh3iwc0vw
r+cGn247CfD8fVxbzUTkiB4UWMjKn4nMgxOuFmvMr3jD7X2UMC+xduiaOcJh
y9WF8vnJ2+3md5QzUD4/NXF9WJcUA9b6jn7dcGEIHsbvC3kQ3oxpClYvJMQM
g9K/eZHsi3Ts/Lt+xYWZETjiYLZNcR8dW6NbVzrnx4SnbGzcwtAElVqPBBUO
TQJvbejIbr4mwPP74UKaI4EPSKgPT8eGK/RNExXD8/sFVkdaHzdTsFeiCkdf
mi5CXHXS+KqndXBqzQzX/YVFYH6+lpVqSQZr5/7e0rQlyNJuUNdXqwM8v3+c
pNu7fLca5fd7H4rceVsZqYbn9zt2qTPpcpdRfn/AfTO3WF4Ayu+TjnEtTl5J
hgVuo72GPwmQn8/+ms8lH2h6Mp0WWlSQPrTJldOkBuX7577ynaWO0VG+f1rD
c7vm3XaU7+88lqct4NaF8v3inMEXbzUwUL4/SLHPf5T1Ho/n+5+IBRoLhrSj
fH+/8zEzvx4a6tvDZtIXnFQKMHbSq3E9lUHgzxpcbWtGwvhaMquTI4bgm6hw
cOmTFgzP/yudDYkZ8KWj/P/1P5v33vtKQ/l/prC64Y2+BpT/zySkrTHIr0F5
f1llhZQDVz4BnvdnCvxwzLKrATzvvz4j5hXnEBUuFx4XEHjPBKJuIYjFNAGW
ukuaeHESzKuxFuU7jagfMMuGcVbzGQnwfsCNUXu4HqyrQD5Aaud1iyz9bNQH
2Ly+rV7Zrxr1Ac7TbS6KO5JRH6AXX+jlznkq6gOU8b3nunU7BfUB2l6Sutz4
oBYjnNv3y+jpPCwGnk7q+XcHEy7W+NQqtgAdrjIHTV7mgt9O8wf0hgWIHU99
+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
dQQM93WrebNer3tMxHBfd77OaU1fcxXaUxF/dX4m3+oz2lNpi10xj8yMQ77u
66ifus+pUsD3VETH/L7MHq5F3o6vdeB24LdawL1d0Jnjm8wzKgD3dtUWX5/T
fT8gb/dgblffuL468nYxnlWn80QeIm8XIvQ3ecU6Enm7hDnmt6DXH5G3ix3R
+bPbuBx5O6fRhye6r9L+21vxqe9+eqANebsfuW5sD0U7kbeTfyh7PutgJ/J2
Pn6kpsG1bcjbdQyWta/+0Iz2VR4b3qtUvpKIqRXNGhH6+kDPWurFxrtEDPd3
RXRbn0XRFuTvHtGzR0770JC/89K1kXn/thH5O09Cuczb3Grk756+Mz7Uw/kc
+bt1RD3ZpbPlgPu7LfJqL/q5KYDvs+z/t+Vb29VGwD3e/nERYrEIFXm8NWee
ilq8rEIeL8g7R645IhJ5vGzr09scJwow3OMpaJb8jCISMdzjXbfEglLHKRju
8ejfBys0xUho32Wmqm7o43QZhvu8mzGM6DCHUOTzjvk6M+9456N9F42ezYtC
TbVo32VX6bv1xX4ktO+ifOH04+f5BLTv0tnl2rtZuQTtu4TIWeunXPIF3Os9
1hkxT83Lx3CvV2e5KLXyvgbDvV52+9oXVhVEDPd6E+K3TBdu1aA9mGupxUvj
0floD+ZAzZ7rHnufIa+X0bGQsbC+EPA9GMbtRUkNsRrk9zh0xG3ZgAC432uo
OsHc/6EKcL/n8zH9Pj8PP/J721d7CZx1s0J+z8uppyT9oh/ye79lV/Ufz0oE
yT9pu6/FsN7THjkLGTzMR55vUt07jnPpC/J8/o5qzq1D7cjz/bKJL/eP6ESe
78oPWCjj6ECer2dgSxaHyReYHSOEVh3ugwDvt++i/pZi9w1u2e0L7YeiYysF
Ki31GO77RgT2Gl86Q0O+72l23LFPqS3I9z117kn3v0NGnk/I00Tw35OPgO/N
cLa7R+YpEADfm5mVCn74VK0B8L2Zid+H73PGNgDu/xyeWio5bK5D3i/hEKdO
WGMChns/j5PfiWsEqzHc+7ksSqiXEcmYda28UvftKTA1Jm5ttKJgxKPPfGVF
p2G895FDxfZaDPeACiJxX9LoCWifxuDhRKPZLQzt0/jRjzI32tehfRpv480G
i+N1aJ8mIeK5Av/eatCJ5Ev/rTUPB0JPe+TJJGOrLN6buvyah+MFIUIOYxXI
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
1pWKDA==
   "], {{
     {Hue[0.67, 0.6, 0.6], Opacity[0.2], EdgeForm[None], 
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
     {Hue[0.67, 0.6, 0.6], Opacity[0.2], EdgeForm[None], 
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
     {Hue[0.9060679774997897, 0.6, 0.6], Opacity[0.2], EdgeForm[None], 
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
     {Hue[0.9060679774997897, 0.6, 0.6], Opacity[0.2], EdgeForm[None], 
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
     {Hue[0.1421359549995791, 0.6, 0.6], Opacity[0.2], EdgeForm[None], 
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
     {Hue[0.1421359549995791, 0.6, 0.6], Opacity[0.2], EdgeForm[None], 
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
     {Hue[0.37820393249936934`, 0.6, 0.6], Opacity[0.2], EdgeForm[None], 
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
     {Hue[0.37820393249936934`, 0.6, 0.6], Opacity[0.2], EdgeForm[None], 
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
     {Hue[0.67, 0.6, 0.6], LineBox[CompressedData["
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
     {Hue[0.9060679774997897, 0.6, 0.6], LineBox[CompressedData["
1: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
       "]]}, 
     {Hue[0.1421359549995791, 0.6, 0.6], LineBox[CompressedData["
1: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
Ee+Llrn+f0ao6yk=
       "]]}, 
     {Hue[0.37820393249936934`, 0.6, 0.6], LineBox[CompressedData["
1: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
+z/DMTag
       "]]}}}],
  AspectRatio->NCache[GoldenRatio^(-1), 0.6180339887498948],
  Axes->True,
  AxesOrigin->{0, 0},
  Method->{"AxesInFront" -> True},
  PlotRange->{{0, 2}, {-0.3461261627623216, 0.581865099506474}},
  PlotRangeClipping->True,
  PlotRangePadding->{
    Scaled[0.02], 
    Scaled[0.02]}]], "Output",
 CellChangeTimes->{3.544353935279461*^9, 3.544354075781497*^9, 
  3.544354192963199*^9}],

Cell[BoxData["8.900000000000001`*^-7"], "Output",
 CellChangeTimes->{3.5443567605610576`*^9}]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{
  SuperscriptBox["2.718281828459045`", 
   RowBox[{
    RowBox[{"-", "0.0013066953871490262`"}], " ", "t"}]], " ", "/.", " ", 
  RowBox[{"t", "\[Rule]", " ", "1"}]}]], "Input",
 CellChangeTimes->{{3.544358158308004*^9, 3.5443581618202047`*^9}}],

Cell[BoxData["0.9986941579675364`"], "Output",
 CellChangeTimes->{3.5443581624732423`*^9}]
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
 CellChangeTimes->{{3.5443582130061326`*^9, 3.5443582301981163`*^9}}],

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
 CellChangeTimes->{3.5443582356784296`*^9}]
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
Cell[1235, 30, 583, 16, 92, "Input",
 InitializationCell->True],
Cell[CellGroupData[{
Cell[1843, 50, 6311, 138, 392, "Input"],
Cell[8157, 190, 3293, 82, 73, "Output"]
}, Open  ]],
Cell[CellGroupData[{
Cell[11487, 277, 3424, 81, 372, "Input"],
Cell[14914, 360, 15767, 266, 245, "Output"],
Cell[30684, 628, 2535, 49, 386, "Output"]
}, Open  ]],
Cell[CellGroupData[{
Cell[33256, 682, 638, 17, 31, "Input"],
Cell[33897, 701, 74737, 1253, 234, "Output"],
Cell[108637, 1956, 93, 1, 30, "Output"]
}, Open  ]],
Cell[CellGroupData[{
Cell[108767, 1962, 268, 6, 33, "Input"],
Cell[109038, 1970, 90, 1, 30, "Output"]
}, Open  ]],
Cell[CellGroupData[{
Cell[109165, 1976, 334, 8, 38, "Input"],
Cell[109502, 1986, 2070, 40, 243, "Output"]
}, Open  ]]
}
]
*)

(* End of internal cache information *)

(* NotebookSignature Mx0hrYUhshaieBK5XJEDJL74 *)
