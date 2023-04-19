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
NotebookDataLength[    552271,      10029]
NotebookOptionsPosition[    547026,       9936]
NotebookOutlinePosition[    547422,       9952]
CellTagsIndexPosition[    547379,       9949]
WindowFrame->Normal*)

(* Beginning of Notebook Content *)
Notebook[{

Cell[CellGroupData[{
Cell["Non-bottomless coffee flow visualization.", "Title",
 CellChangeTimes->{{3.544818456211574*^9, 
  3.5448184698073516`*^9}},ExpressionUUID->"d75c00f0-b9f2-47fb-8943-\
b353f690fe12"],

Cell[CellGroupData[{

Cell["main", "Section",
 CellChangeTimes->{{3.5448185128178115`*^9, 
  3.5448185130728264`*^9}},ExpressionUUID->"140947f0-4d96-4236-90a3-\
f8982f0b3c2d"],

Cell[CellGroupData[{

Cell[BoxData[{
 RowBox[{"Clear", "[", "nu", "]"}], "\[IndentingNewLine]", 
 RowBox[{"nu", " ", "=", " ", 
  RowBox[{
   RowBox[{"ChemicalData", "[", 
    RowBox[{"\"\<Water\>\"", ",", " ", "\"\<Viscosity\>\""}], "]"}], "/", 
   RowBox[{"ChemicalData", "[", 
    RowBox[{"\"\<Water\>\"", ",", " ", "\"\<Density\>\""}], 
    "]"}]}]}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{
   RowBox[{"ChemicalData", "[", 
    RowBox[{
    "\"\<Water\>\"", ",", " ", "\"\<Viscosity\>\"", ",", " ", 
     "\"\<Units\>\""}], "]"}], "/", 
   RowBox[{"ChemicalData", "[", 
    RowBox[{
    "\"\<Water\>\"", ",", " ", "\"\<Density\>\"", ",", " ", "\"\<Units\>\""}],
     "]"}]}], "\[IndentingNewLine]"}], "\[IndentingNewLine]", 
 RowBox[{"nu", " ", "=", " ", 
  RowBox[{"nu", " ", "//", " ", "First"}]}]}], "Input",
 InitializationCell->True,
 CellChangeTimes->{{3.5449215281570315`*^9, 3.54492156449411*^9}, {
  3.54492168022773*^9, 3.544921765587612*^9}, {3.890859919023738*^9, 
  3.890859925509139*^9}},
 CellLabel->"In[7]:=",ExpressionUUID->"8ce4552c-75af-4482-9773-9ebcc8bebeea"],

Cell[BoxData[
 TemplateBox[{"8.926350586932`1.9999956570768957*^-7", 
   RowBox[{
     SuperscriptBox["\"m\"", "3"], "\[InvisibleSpace]", "\"s\"", 
     "\[ThinSpace]", "\"Pa\"", "\[InvisibleSpace]", "\"/\"", 
     "\[InvisibleSpace]", "\"kg\""}], 
   "meter cubed second pascals per kilogram", 
   FractionBox[
    RowBox[{
      SuperscriptBox["\"Meters\"", "3"], " ", "\"Pascals\"", " ", 
      "\"Seconds\""}], "\"Kilograms\""]},
  "Quantity"]], "Output",
 CellChangeTimes->{
  3.54492239811279*^9, 3.545084230511465*^9, {3.545085178598693*^9, 
   3.5450851793877378`*^9}, {3.890859826564681*^9, 3.890859826750229*^9}, 
   3.890859926870811*^9},
 CellLabel->"Out[8]=",ExpressionUUID->"1f089d47-fb70-4054-afd1-9e86b07fa393"],

Cell[BoxData[
 FractionBox["\<\"PascalSeconds\"\>", "\<\"KilogramsPerCubicMeter\"\>"]], \
"Output",
 CellChangeTimes->{
  3.54492239811279*^9, 3.545084230511465*^9, {3.545085178598693*^9, 
   3.5450851793877378`*^9}, {3.890859826564681*^9, 3.890859826750229*^9}, 
   3.890859926872175*^9},
 CellLabel->"Out[9]=",ExpressionUUID->"c25bc537-54d3-45c2-9086-e91adea91205"],

Cell[BoxData["8.926350586932`1.9999956570768957*^-7"], "Output",
 CellChangeTimes->{
  3.54492239811279*^9, 3.545084230511465*^9, {3.545085178598693*^9, 
   3.5450851793877378`*^9}, {3.890859826564681*^9, 3.890859826750229*^9}, 
   3.890859926873127*^9},
 CellLabel->"Out[10]=",ExpressionUUID->"d9ce455d-4c24-4498-a2a9-3da2aafc7d35"]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[{
 RowBox[{
  RowBox[{
   RowBox[{"Clear", "[", 
    RowBox[{
    "stirRadius", ",", " ", "n", ",", " ", "stirDepth", ",", " ", "cupRadius",
      ",", " ", "omega", ",", " ", "u", ",", " ", "un", ",", " ", "r", ",", 
     " ", "z"}], "]"}], " ", ";"}], 
  "\[IndentingNewLine]"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{
   RowBox[{"n", " ", "=", " ", "8"}], " ", ";"}], " ", 
  RowBox[{"(*", " ", 
   RowBox[{
   "number", " ", "of", " ", "terms", " ", "in", " ", "the", " ", "Bessel", 
    " ", "series"}], " ", "*)"}]}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{
   RowBox[{"stirDepth", " ", "=", " ", "0.02"}], " ", ";"}], " ", 
  RowBox[{"(*", " ", 
   RowBox[{
   "stir", " ", "at", " ", "2", " ", "cm", " ", "above", " ", "the", " ", 
    "base", " ", "of", " ", "the", " ", "cup"}], " ", 
   "*)"}]}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{
   RowBox[{"cupRadius", " ", "=", " ", "0.50"}], " ", ";"}], "  ", 
  RowBox[{"(*", " ", 
   RowBox[{"10", " ", "cm", " ", "coffee", " ", "cup"}], " ", 
   "*)"}]}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{
   RowBox[{"stirRadius", " ", "=", " ", 
    RowBox[{"0.6", " ", "cupRadius"}]}], " ", ";"}], " ", 
  RowBox[{"(*", " ", 
   RowBox[{"stir", " ", "at", " ", "6", " ", "cm", " ", "radius"}], " ", 
   "*)"}]}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{
   RowBox[{"omega", " ", "=", " ", 
    RowBox[{"2", " ", "Pi"}]}], " ", ";"}], "\[IndentingNewLine]", 
  "\[IndentingNewLine]"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{
   RowBox[{
    RowBox[{"term", "[", 
     RowBox[{"r_", ",", " ", "z_", ",", " ", "jj_"}], "]"}], " ", "=", " ", 
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
       " ", ";", "\[IndentingNewLine]", 
       RowBox[{"stirRadius", " ", "omega", " ", 
        RowBox[{"BesselJ", "[", 
         RowBox[{"1", ",", " ", 
          RowBox[{"zero", " ", 
           RowBox[{"r", "/", "cupRadius"}]}]}], "]"}], " ", 
        RowBox[{"(", 
         RowBox[{"num", "/", "den"}], ")"}], " ", 
        RowBox[{
         RowBox[{"Sinh", "[", " ", 
          RowBox[{"zero", " ", 
           RowBox[{"z", "/", "cupRadius"}]}], "]"}], "/", 
         RowBox[{"Sinh", "[", " ", 
          RowBox[{"zero", " ", 
           RowBox[{"stirDepth", "/", "cupRadius"}]}], "]"}]}]}]}]}], 
     "\[IndentingNewLine]", "]"}]}], " ", ";"}], 
  "\[IndentingNewLine]"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{
   RowBox[{
    RowBox[{"termTable", "[", 
     RowBox[{"r_", ",", " ", "z_"}], "]"}], " ", "=", " ", 
    RowBox[{
     RowBox[{"Table", "[", " ", 
      RowBox[{
       RowBox[{"term", "[", 
        RowBox[{"r", ",", " ", "z", ",", " ", "j"}], "]"}], ",", " ", 
       RowBox[{"{", 
        RowBox[{"j", ",", " ", "n"}], "}"}]}], " ", "]"}], " ", "//", " ", 
     "N"}]}], " ", ";"}], "\[IndentingNewLine]"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{"un", "=", " ", 
   RowBox[{"Function", "[", 
    RowBox[{
     RowBox[{"{", 
      RowBox[{"j", ",", " ", "r", ",", " ", "z"}], "}"}], ",", 
     RowBox[{"Sum", "[", 
      RowBox[{
       RowBox[{
        RowBox[{"termTable", "[", 
         RowBox[{"r", ",", " ", "z"}], "]"}], "[", 
        RowBox[{"[", "i", "]"}], "]"}], ",", " ", 
       RowBox[{"{", 
        RowBox[{"i", ",", " ", "j"}], "}"}]}], "]"}], " ", ",", " ", 
     "HoldFirst"}], "]"}]}], ";"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{
   RowBox[{
    RowBox[{"u", "[", 
     RowBox[{"r_", ",", " ", "z_"}], "]"}], " ", "=", " ", 
    RowBox[{"un", "[", 
     RowBox[{"n", ",", " ", "r", ",", " ", "z"}], "]"}]}], " ", ";"}], 
  "\[IndentingNewLine]", 
  RowBox[{"(*", 
   RowBox[{
    RowBox[{"u", "[", 
     RowBox[{"r", ",", " ", "z"}], "]"}], " ", "//", " ", 
    RowBox[{
    "TraditionalForm", "\[IndentingNewLine]", "stirRadius", " ", "omega", 
     "\[IndentingNewLine]", 
     RowBox[{"u", "[", " ", 
      RowBox[{"stirRadius", ",", " ", "stirDepth"}], "]"}], 
     "\[IndentingNewLine]", 
     RowBox[{"u", "[", " ", 
      RowBox[{"cupRadius", ",", " ", "stirDepth"}], " ", "]"}]}]}], "*)"}], 
  "\[IndentingNewLine]"}], "\[IndentingNewLine]", 
 RowBox[{"Clear", "[", " ", 
  RowBox[{"uSpinDownTerm", ",", " ", "ttSpinDown", ",", " ", "ut"}], " ", 
  "]"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{
   RowBox[{
    RowBox[{"uSpinDownTerm", "[", 
     RowBox[{"r_", ",", " ", "z_", ",", " ", "t_", ",", " ", "j_"}], "]"}], 
    " ", "=", " ", 
    RowBox[{"(*", 
     RowBox[{"HoldForm", "["}], "*)"}], 
    RowBox[{"Module", "[", 
     RowBox[{
      RowBox[{"{", 
       RowBox[{"zz", ",", " ", "dd", ",", " ", "rr", ",", " ", "ss"}], "}"}], 
      ",", "\[IndentingNewLine]", 
      RowBox[{
       RowBox[{"zz", " ", "=", " ", 
        RowBox[{"BesselJZero", "[", 
         RowBox[{"1", ",", " ", "j"}], "]"}]}], "  ", ";", 
       "\[IndentingNewLine]", 
       RowBox[{"dd", " ", "=", " ", "stirDepth"}], " ", ";", 
       "\[IndentingNewLine]", 
       RowBox[{"rr", " ", "=", " ", "cupRadius"}], " ", ";", 
       "\[IndentingNewLine]", 
       RowBox[{"ss", " ", "=", " ", "stirRadius"}], " ", ";", 
       "\[IndentingNewLine]", "\[IndentingNewLine]", 
       RowBox[{
        RowBox[{"(", " ", 
         RowBox[{"omega", " ", 
          RowBox[{"ss", "/", "Pi"}]}], ")"}], " ", 
        RowBox[{
         RowBox[{"(", 
          RowBox[{"-", "1"}], ")"}], "^", 
         RowBox[{"(", 
          RowBox[{"j", "+", "1"}], ")"}]}], " ", 
        RowBox[{"(", 
         RowBox[{"j", "/", 
          RowBox[{"(", 
           RowBox[{
            RowBox[{"j", "^", "2"}], " ", "+", " ", 
            RowBox[{
             RowBox[{"dd", "^", "2"}], " ", 
             RowBox[{
              RowBox[{"zz", "^", "2"}], "/", 
              RowBox[{"(", 
               RowBox[{"4", " ", 
                RowBox[{"rr", "^", "2"}], " ", 
                RowBox[{"Pi", "^", "2"}]}], ")"}]}]}]}], ")"}]}], ")"}], "  ", 
        RowBox[{"Sinh", "[", " ", 
         RowBox[{"dd", " ", 
          RowBox[{"zz", "/", " ", "rr"}]}], " ", "]"}], "  ", 
        RowBox[{"Exp", "[", " ", 
         RowBox[{
          RowBox[{"-", 
           RowBox[{"(", 
            RowBox[{
             RowBox[{
              RowBox[{"zz", "^", "2"}], "/", 
              RowBox[{"rr", "^", "2"}]}], " ", "+", " ", 
             RowBox[{"4", " ", 
              RowBox[{"Pi", "^", "2"}], " ", 
              RowBox[{
               RowBox[{"j", "^", "2"}], "/", 
               RowBox[{"dd", "^", "2"}]}]}]}], ")"}]}], " ", "nu", " ", "t"}],
          "]"}], " ", 
        RowBox[{"BesselJ", "[", 
         RowBox[{"1", ",", " ", 
          RowBox[{"zz", " ", 
           RowBox[{"r", " ", "/", " ", "rr"}]}]}], " ", "]"}], " ", 
        RowBox[{"Sin", "[", " ", 
         RowBox[{"2", " ", "Pi", " ", "j", " ", 
          RowBox[{"z", "/", "dd"}]}], "]"}]}]}]}], " ", "\[IndentingNewLine]",
      "]"}]}], " ", ";"}], "\[IndentingNewLine]", "\[IndentingNewLine]", 
  RowBox[{"(*", 
   RowBox[{"]", " ", ";", "\[IndentingNewLine]", 
    RowBox[{
     RowBox[{"uSpinDownTerm", "[", 
      RowBox[{"r_", ",", " ", "z_", ",", " ", "t_", ",", " ", "j_"}], "]"}], 
     " ", "//", " ", 
     RowBox[{"TraditionalForm", "\[IndentingNewLine]", 
      RowBox[{"ReleaseHold", "[", "uSpinDownTerm", "]"}]}]}]}], "*)"}], 
  "\[IndentingNewLine]"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{
   RowBox[{
    RowBox[{"ttSpinDown", "[", 
     RowBox[{"r_", ",", " ", "z_", ",", " ", "t_"}], "]"}], " ", "=", " ", 
    RowBox[{
     RowBox[{"Table", "[", " ", 
      RowBox[{
       RowBox[{"uSpinDownTerm", "[", 
        RowBox[{"r", ",", " ", "z", ",", " ", "t", ",", " ", "j"}], "]"}], 
       ",", " ", 
       RowBox[{"{", 
        RowBox[{"j", ",", " ", "n"}], "}"}]}], " ", "]"}], " ", "//", " ", 
     "N"}]}], " ", ";"}], "\[IndentingNewLine]"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{"ut", "=", " ", 
   RowBox[{"Function", "[", 
    RowBox[{
     RowBox[{"{", 
      RowBox[{"j", ",", " ", "r", ",", " ", "z", ",", " ", "t"}], "}"}], ",", 
     RowBox[{"Sum", "[", 
      RowBox[{
       RowBox[{
        RowBox[{"ttSpinDown", "[", 
         RowBox[{"r", ",", " ", "z", ",", " ", "t"}], "]"}], "[", 
        RowBox[{"[", "i", "]"}], "]"}], ",", " ", 
       RowBox[{"{", 
        RowBox[{"i", ",", " ", "j"}], "}"}]}], "]"}], " ", ",", " ", 
     "HoldFirst"}], "]"}]}], ";"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{"ut", "[", 
   RowBox[{"n", ",", " ", "r", ",", " ", "z", ",", " ", "t"}], "]"}], " ", "//",
   " ", "TraditionalForm"}]}], "Input",
 CellChangeTimes->{{3.5448185232634087`*^9, 3.5448186704808292`*^9}, {
   3.5448187372346478`*^9, 3.5448188628028297`*^9}, {3.5448189219692135`*^9, 
   3.544818952563964*^9}, {3.5448189887210317`*^9, 3.5448190831264315`*^9}, {
   3.544819116253326*^9, 3.544819194718814*^9}, 3.544820949979209*^9, 
   3.5448210514110107`*^9, {3.5448229869097147`*^9, 3.5448230367105637`*^9}, {
   3.544823374220868*^9, 3.5448233747728996`*^9}, {3.544823439830621*^9, 
   3.5448234484501133`*^9}, {3.544824651754939*^9, 3.5448246908851767`*^9}, {
   3.5448247875997086`*^9, 3.5448248338593545`*^9}, {3.5448254845985746`*^9, 
   3.544825567817334*^9}, {3.5448256356252127`*^9, 3.5448256523151674`*^9}, {
   3.5448256858810873`*^9, 3.5448256880172095`*^9}, {3.5448269976011133`*^9, 
   3.544826999397216*^9}, {3.5448271004409957`*^9, 3.5448271009190226`*^9}, {
   3.544831396376709*^9, 3.5448314076773553`*^9}, {3.544832692958869*^9, 
   3.544832693006872*^9}, {3.544919697383317*^9, 3.544919725961952*^9}, {
   3.544919757732769*^9, 3.544919773215655*^9}, {3.5449212670090947`*^9, 
   3.5449215057677507`*^9}, {3.544921830504325*^9, 3.5449221888248196`*^9}, {
   3.5449222321412973`*^9, 3.544922232831337*^9}, {3.5449223054064875`*^9, 
   3.5449223424716077`*^9}, {3.544922455967099*^9, 3.544922476916298*^9}, 
   3.544922595626087*^9, {3.5449227934184003`*^9, 3.5449228089792905`*^9}, {
   3.5449232054639683`*^9, 3.5449232102222404`*^9}, {3.5449232433601356`*^9, 
   3.544923265330392*^9}, {3.5449234177941127`*^9, 3.5449234220773573`*^9}, {
   3.544923490097248*^9, 3.5449234978306904`*^9}, {3.5449235976413994`*^9, 
   3.5449236309013014`*^9}, {3.5450849435552487`*^9, 3.5450849739449873`*^9}},
 CellLabel->"In[11]:=",ExpressionUUID->"a536dff6-8c90-41cd-bb46-8ec4ad1691c0"],

Cell[BoxData[
 FormBox[
  RowBox[{
   RowBox[{"0.09226650911423055`", " ", 
    SuperscriptBox["2.718281828459045`", 
     RowBox[{
      RowBox[{"-", "0.08815197160535856`"}], " ", "t"}]], " ", 
    TemplateBox[{"1.`", 
      RowBox[{"7.663411940415024`", " ", "r"}]},
     "BesselJ"], " ", 
    RowBox[{"sin", "(", 
     RowBox[{"314.1592653589793`", " ", "z"}], ")"}]}], "-", 
   RowBox[{"0.08525383222267456`", " ", 
    SuperscriptBox["2.718281828459045`", 
     RowBox[{
      RowBox[{"-", "0.35257393263241044`"}], " ", "t"}]], " ", 
    TemplateBox[{"1.`", 
      RowBox[{"14.031173339631245`", " ", "r"}]},
     "BesselJ"], " ", 
    RowBox[{"sin", "(", 
     RowBox[{"628.3185307179587`", " ", "z"}], ")"}]}], "+", 
   RowBox[{"0.08361373740572452`", " ", 
    SuperscriptBox["2.718281828459045`", 
     RowBox[{
      RowBox[{"-", "0.7932654903105055`"}], " ", "t"}]], " ", 
    TemplateBox[{"1.`", 
      RowBox[{"20.346936270125443`", " ", "r"}]},
     "BesselJ"], " ", 
    RowBox[{"sin", "(", 
     RowBox[{"942.4777960769379`", " ", "z"}], ")"}]}], "-", 
   RowBox[{"0.08374297577050788`", " ", 
    SuperscriptBox["2.718281828459045`", 
     RowBox[{
      RowBox[{"-", "1.4102266296556982`"}], " ", "t"}]], " ", 
    TemplateBox[{"1.`", 
      RowBox[{"26.647383872628446`", " ", "r"}]},
     "BesselJ"], " ", 
    RowBox[{"sin", "(", 
     RowBox[{"1256.6370614359173`", " ", "z"}], ")"}]}], "+", 
   RowBox[{"0.0848663845200673`", " ", 
    SuperscriptBox["2.718281828459045`", 
     RowBox[{
      RowBox[{"-", "2.2034573480229147`"}], " ", "t"}]], " ", 
    TemplateBox[{"1.`", 
      RowBox[{"32.94126010175527`", " ", "r"}]},
     "BesselJ"], " ", 
    RowBox[{"sin", "(", 
     RowBox[{"1570.7963267948967`", " ", "z"}], ")"}]}], "-", 
   RowBox[{"0.08672837545025597`", " ", 
    SuperscriptBox["2.718281828459045`", 
     RowBox[{
      RowBox[{"-", "3.1729576446581653`"}], " ", "t"}]], " ", 
    TemplateBox[{"1.`", 
      RowBox[{"39.231717020936486`", " ", "r"}]},
     "BesselJ"], " ", 
    RowBox[{"sin", "(", 
     RowBox[{"1884.9555921538758`", " ", "z"}], ")"}]}], "+", 
   RowBox[{"0.0892316088769435`", " ", 
    SuperscriptBox["2.718281828459045`", 
     RowBox[{
      RowBox[{"-", "4.318727519281907`"}], " ", "t"}]], " ", 
    TemplateBox[{"1.`", 
      RowBox[{"45.520168761185545`", " ", "r"}]},
     "BesselJ"], " ", 
    RowBox[{"sin", "(", 
     RowBox[{"2199.1148575128555`", " ", "z"}], ")"}]}], "-", 
   RowBox[{"0.09234266746635188`", " ", 
    SuperscriptBox["2.718281828459045`", 
     RowBox[{
      RowBox[{"-", "5.640766971771396`"}], " ", "t"}]], " ", 
    TemplateBox[{"1.`", 
      RowBox[{"51.807344175236764`", " ", "r"}]},
     "BesselJ"], " ", 
    RowBox[{"sin", "(", 
     RowBox[{"2513.2741228718346`", " ", "z"}], ")"}]}]}], 
  TraditionalForm]], "Output",
 CellChangeTimes->{
  3.544818878496727*^9, {3.5448233555297985`*^9, 3.5448233820623164`*^9}, 
   3.544823451974315*^9, 3.5448246972765427`*^9, 3.544824810103996*^9, 
   3.5448248406067405`*^9, 3.544825527719041*^9, {3.544825670208191*^9, 
   3.5448256904633493`*^9}, 3.544827016371187*^9, 3.5448271041272063`*^9, 
   3.544831410831536*^9, 3.5448327041215076`*^9, 3.544919224815288*^9, 
   3.544922193641095*^9, 3.5449222365365486`*^9, 3.544922273360655*^9, 
   3.5449224825276184`*^9, 3.5449226051196303`*^9, 3.544922811899458*^9, 
   3.5449232131144056`*^9, 3.54492326843557*^9, 3.544923425600559*^9, 
   3.5449235040740476`*^9, 3.5449236357595797`*^9, 3.545084983751548*^9, 
   3.545085187048176*^9, 3.8908599433287897`*^9},
 CellLabel->
  "Out[25]//TraditionalForm=",ExpressionUUID->"16209c5b-4635-4c86-a85d-\
a36b86474dc9"]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{
  RowBox[{"Module", "[", 
   RowBox[{
    RowBox[{"{", 
     RowBox[{
     "vectors", ",", " ", "r", ",", "  ", "phicap", ",", "  ", "uu", ",", " ",
       "p", ",", " ", 
      RowBox[{"intervals", " ", "=", " ", "20"}]}], "}"}], ",", 
    "\[IndentingNewLine]", 
    RowBox[{
     RowBox[{
      RowBox[{"r", "[", 
       RowBox[{"x_", ",", " ", "y_"}], "]"}], " ", "=", " ", 
      RowBox[{"Sqrt", "[", 
       RowBox[{
        RowBox[{"x", "^", "2"}], " ", "+", " ", 
        RowBox[{"y", "^", "2"}]}], "]"}]}], " ", ";", "\[IndentingNewLine]", 
     RowBox[{
      RowBox[{"phicap", "[", 
       RowBox[{"x_", ",", " ", "y_"}], "]"}], " ", "=", " ", 
      RowBox[{"Piecewise", "[", 
       RowBox[{
        RowBox[{"{", 
         RowBox[{"{", 
          RowBox[{
           RowBox[{
            RowBox[{"{", 
             RowBox[{
              RowBox[{"-", "y"}], ",", " ", "x", ",", " ", "0"}], "}"}], "/", 
            RowBox[{"r", "[", 
             RowBox[{"x", ",", "y"}], "]"}]}], ",", " ", 
           RowBox[{
            RowBox[{
             RowBox[{"r", "[", 
              RowBox[{"x", ",", " ", "y"}], "]"}], " ", ">", " ", "0"}], " ", 
            "&&", " ", 
            RowBox[{
             RowBox[{"r", "[", 
              RowBox[{"x", ",", " ", "y"}], "]"}], " ", "<=", " ", 
             "cupRadius"}]}]}], "}"}], "}"}], ",", " ", "\[IndentingNewLine]", 
        RowBox[{"{", 
         RowBox[{"0", ",", " ", "0", ",", " ", "0"}], "}"}]}], "]"}]}], " ", 
     ";", "\[IndentingNewLine]", 
     RowBox[{"(*", 
      RowBox[{
       RowBox[{
        RowBox[{"phicap", "[", 
         RowBox[{"x_", ",", " ", "y_"}], "]"}], " ", "=", " ", 
        RowBox[{
         RowBox[{"{", 
          RowBox[{
           RowBox[{"-", "y"}], ",", " ", "x", ",", " ", "0"}], "}"}], "/", 
         RowBox[{"r", "[", 
          RowBox[{"x", ",", "y"}], "]"}]}]}], " ", ";"}], "*)"}], 
     "\[IndentingNewLine]", 
     RowBox[{
      RowBox[{"uu", "[", 
       RowBox[{"x_", ",", " ", "y_", ",", " ", "z_"}], "]"}], " ", "=", " ", 
      RowBox[{
       RowBox[{"phicap", "[", 
        RowBox[{"x", ",", " ", "y"}], "]"}], " ", 
       RowBox[{"u", "[", 
        RowBox[{
         RowBox[{"r", "[", 
          RowBox[{"x", ",", " ", "y"}], "]"}], ",", " ", "z"}], "]"}]}]}], 
     " ", ";", "\[IndentingNewLine]", 
     RowBox[{"vectors", " ", "=", "  ", 
      RowBox[{"Table", "[", 
       RowBox[{
        RowBox[{"{", 
         RowBox[{
          RowBox[{"{", 
           RowBox[{"x", ",", " ", "y", ",", " ", "z"}], "}"}], ",", 
          RowBox[{"uu", "[", 
           RowBox[{"x", ",", " ", "y", ",", " ", "z"}], "]"}]}], " ", "}"}], 
        ",", " ", 
        RowBox[{"{", 
         RowBox[{"x", ",", " ", 
          RowBox[{"-", "cupRadius"}], ",", " ", "cupRadius", ",", " ", 
          RowBox[{"2", " ", 
           RowBox[{"cupRadius", "/", "intervals"}]}]}], "}"}], ",", " ", 
        RowBox[{"{", 
         RowBox[{"y", ",", " ", 
          RowBox[{"-", "cupRadius"}], ",", " ", "cupRadius", ",", " ", 
          RowBox[{"2", " ", 
           RowBox[{"cupRadius", "/", "intervals"}]}]}], "}"}], ",", 
        "\[IndentingNewLine]", 
        RowBox[{"{", 
         RowBox[{"z", ",", " ", "0", ",", " ", "stirDepth", ",", " ", 
          RowBox[{"stirDepth", "/", "intervals"}]}], "}"}]}], 
       "\[IndentingNewLine]", "]"}]}], " ", ";", "\[IndentingNewLine]", 
     RowBox[{"p", " ", "=", "\[IndentingNewLine]", 
      RowBox[{"ListVectorPlot3D", "[", 
       RowBox[{"vectors", "\[IndentingNewLine]", 
        RowBox[{"(*", 
         RowBox[{",", " ", 
          RowBox[{"VectorScale", "\[Rule]", 
           RowBox[{"{", 
            RowBox[{"Large", ",", 
             RowBox[{"Scaled", "[", "1.2", "]"}]}], "}"}]}]}], "*)"}], 
        "\[IndentingNewLine]", 
        RowBox[{"(*", 
         RowBox[{",", 
          RowBox[{"PlotRange", "\[Rule]", "All"}]}], "*)"}], 
        "\[IndentingNewLine]", 
        RowBox[{"(*", 
         RowBox[{",", 
          RowBox[{"VectorPoints", "\[Rule]", "Coarse"}]}], "*)"}], 
        "\[IndentingNewLine]", 
        RowBox[{"(*", 
         RowBox[{",", 
          RowBox[{"VectorStyle", "\[Rule]", "\"\<Arrow3D\>\""}]}], "*)"}], 
        "\[IndentingNewLine]", 
        RowBox[{"(*", 
         RowBox[{",", 
          RowBox[{"VectorScale", "\[Rule]", 
           RowBox[{"{", 
            RowBox[{"Automatic", ",", 
             RowBox[{"Scaled", "[", "0.4", "]"}], ",", "Automatic"}], 
            "}"}]}]}], "*)"}], "\[IndentingNewLine]", 
        RowBox[{"(*", 
         RowBox[{",", 
          RowBox[{"VectorColorFunction", "\[Rule]", 
           RowBox[{"{", 
            RowBox[{"\"\<FallColors\>\"", ",", " ", 
             RowBox[{"#5", " ", "&"}]}], "}"}]}]}], "*)"}], 
        "\[IndentingNewLine]", 
        RowBox[{"(*", 
         RowBox[{",", 
          RowBox[{"VectorColorFunction", "\[Rule]", 
           RowBox[{"{", 
            RowBox[{"\"\<DarkRainbow\>\"", ",", " ", 
             RowBox[{"#5", " ", "&"}]}], "}"}]}]}], "*)"}], 
        "\[IndentingNewLine]", 
        RowBox[{"(*", 
         RowBox[{",", " ", 
          RowBox[{"VectorColorFunction", "\[Rule]", "\"\<Rainbow\>\""}]}], 
         "*)"}], "\[IndentingNewLine]", 
        RowBox[{"(*", 
         RowBox[{",", 
          RowBox[{"RegionFunction", "\[Rule]", 
           RowBox[{"(", 
            RowBox[{
             RowBox[{"(", 
              RowBox[{"0", " ", "<", " ", 
               RowBox[{
                RowBox[{
                 RowBox[{"(", "#1", ")"}], "^", "2"}], " ", "+", " ", 
                RowBox[{
                 RowBox[{"(", "#2", ")"}], "^", "2"}]}], "  ", "<", " ", 
               RowBox[{"cupRadius", "^", "2"}]}], ")"}], "&"}], ")"}]}]}], 
         "*)"}], "\[IndentingNewLine]", ",", " ", 
        RowBox[{"VectorPoints", " ", "\[Rule]", " ", "Fine"}], 
        "\[IndentingNewLine]", ",", " ", 
        RowBox[{"VectorScale", " ", "\[Rule]", " ", "Medium"}], 
        "\[IndentingNewLine]", ",", " ", 
        RowBox[{"VectorColorFunction", "\[Rule]", "Hue"}]}], 
       "\[IndentingNewLine]", 
       RowBox[{"(*", 
        RowBox[{",", 
         RowBox[{"VectorColorFunction", "\[Rule]", 
          RowBox[{"Function", "[", 
           RowBox[{"Hue", "[", 
            RowBox[{
             RowBox[{"Log", "[", "#5", "]"}], "/", "3"}], "]"}], "]"}]}]}], 
        "*)"}], "\[IndentingNewLine]", 
       RowBox[{"(*", 
        RowBox[{",", " ", 
         RowBox[{"VectorColorFunction", "\[Rule]", 
          RowBox[{"Function", "[", 
           RowBox[{
            RowBox[{"{", 
             RowBox[{
             "x", ",", "y", ",", "z", ",", "vx", ",", "vy", ",", "vz", ",", 
              "n"}], "}"}], ",", 
            RowBox[{
             RowBox[{"ColorData", "[", "\"\<TemperatureMap\>\"", "]"}], "[", 
             RowBox[{"n", "/", 
              RowBox[{"(", 
               RowBox[{"stirRadius", " ", "omega"}], ")"}]}], "]"}]}], 
           "]"}]}]}], "*)"}], "\[IndentingNewLine]", "]"}]}], " ", ";", 
     "\[IndentingNewLine]", 
     RowBox[{"(*", 
      RowBox[{"vectors", " ", "//", " ", "N"}], "*)"}], "\[IndentingNewLine]",
      "p"}]}], "\[IndentingNewLine]", "]"}], "\[IndentingNewLine]"}]], "Input",
 CellChangeTimes->{{3.54482293472373*^9, 3.544822934969744*^9}, {
   3.544823083839259*^9, 3.5448231884172406`*^9}, {3.5448232436123977`*^9, 
   3.544823343506111*^9}, {3.544823397436196*^9, 3.54482341342311*^9}, {
   3.54482347181145*^9, 3.544823629675479*^9}, {3.5448236950832205`*^9, 
   3.5448236951362233`*^9}, {3.544823732197343*^9, 3.544823732632368*^9}, {
   3.5448237821421995`*^9, 3.5448237855253935`*^9}, {3.544828587933075*^9, 
   3.544828599321727*^9}, {3.544828636710865*^9, 3.5448286670406*^9}, {
   3.5448287112571287`*^9, 3.544828726809018*^9}, 3.5448288342981663`*^9, {
   3.544828942325345*^9, 3.5448289632725434`*^9}, {3.544829004751916*^9, 
   3.544829048162399*^9}, {3.544829330837567*^9, 3.5448293652535353`*^9}, {
   3.5448294002615376`*^9, 3.5448294289511786`*^9}, {3.5448294896976533`*^9, 
   3.5448294944469247`*^9}, {3.544829551446185*^9, 3.544829560723716*^9}, {
   3.5448296245313654`*^9, 3.5448296396582303`*^9}, {3.5448296789024754`*^9, 
   3.5448296807235794`*^9}, {3.5448298198325357`*^9, 
   3.5448298293190784`*^9}, {3.5448299212853384`*^9, 3.544830002381977*^9}, {
   3.5448301567258053`*^9, 3.544830178828069*^9}, 3.544830268127177*^9, 
   3.5448303088965087`*^9, {3.544830405922058*^9, 3.5448304228840284`*^9}, 
   3.544830571160509*^9, 3.5448308442731304`*^9},
 CellLabel->"In[26]:=",ExpressionUUID->"e0abfebf-060c-4339-87f7-7c7cbaf84a43"],

Cell[BoxData[
 Graphics3DBox[{{}, 
   {RGBColor[0.368417, 0.506779, 0.709798], 
    {CapForm["Butt"], 
     Arrowheads[{{0.000021279487269374414`, 1.}}, Appearance -> "Projected"], 
     {RGBColor[1., 0.0037613413217615355`, 0.], 
      Arrow3DBox[TubeBox[{{-0.38886381077264165`, -0.38891396700513614`, 
       0.0022222222222222222`}, {-0.38891396700513614`, -0.38886381077264165`,
        0.0022222222222222222`}}, 3.546581211562402*^-6]]}}, 
    {CapForm["Butt"], 
     Arrowheads[{{0.00004262455135996566, 1.}}, Appearance -> "Projected"], 
     {RGBColor[1., 0.007534273938189173, 0.], 
      Arrow3DBox[TubeBox[{{-0.3888386553733695, -0.3889391224044083, 
       0.0044444444444444444`}, {-0.38893912240440837`, -0.3888386553733694, 
       0.0044444444444444444`}}, 7.104091893327611*^-6]]}}, 
    {CapForm["Butt"], 
     Arrowheads[{{0.00006410118264580588, 1.}}, Appearance -> "Projected"], 
     {RGBColor[1., 0.011330462243154371`, 0.], 
      Arrow3DBox[TubeBox[{{-0.38881334492067066`, -0.38896443285710713`, 
       0.006666666666666666}, {-0.3889644328571071, -0.3888133449206707, 
       0.006666666666666666}}, 0.000010683530440967647`]]}}, 
    {CapForm["Butt"], 
     Arrowheads[{{0.0000857762006014074, 1.}}, Appearance -> "Projected"], 
     {RGBColor[1., 0.015161717181501166`, 0.], 
      Arrow3DBox[TubeBox[{{-0.38878780066703944`, -0.38898997711073835`, 
       0.008888888888888889}, {-0.38898997711073835`, -0.38878780066703944`, 
       0.008888888888888889}}, 0.0000142960334335679]]}}, 
    {CapForm["Butt"], 
     Arrowheads[{{0.00010771767511294654`, 1.}}, Appearance -> "Projected"], 
     {RGBColor[1., 0.019040070719624103`, 0.], 
      Arrow3DBox[TubeBox[{{-0.38876194239134554`, -0.38901583538643225`, 
       0.011111111111111112`}, {-0.38901583538643225`, -0.38876194239134554`, 
       0.011111111111111112`}}, 0.000017952945852157756`]]}}, 
    {CapForm["Butt"], 
     Arrowheads[{{0.00012999536245162244`, 1.}}, Appearance -> "Projected"], 
     {RGBColor[1., 0.02297785290767207, 0.], 
      Arrow3DBox[TubeBox[{{-0.388735687885035, -0.3890420898927428, 
       0.013333333333333332`}, {-0.3890420898927428, -0.388735687885035, 
       0.013333333333333332`}}, 0.000021665893741937073`]]}}, 
    {CapForm["Butt"], 
     Arrowheads[{{0.0001526811543012434, 1.}}, Appearance -> "Projected"], 
     {RGBColor[1., 0.026987771249250336`, 0.], 
      Arrow3DBox[TubeBox[{{-0.3887089524229459, -0.3890688253548319, 
       0.015555555555555555`}, {-0.3890688253548319, -0.3887089524229459, 
       0.015555555555555555`}}, 0.000025446859050207234`]]}}, 
    {CapForm["Butt"], 
     Arrowheads[{{0.00017584953871911262`, 1.}}, Appearance -> "Projected"], 
     {RGBColor[1., 0.031082992180385793`, 0.], 
      Arrow3DBox[TubeBox[{{-0.38868164822006085`, -0.38909612955771694`, 
       0.017777777777777778`}, {-0.3890961295577169, -0.3886816482200609, 
       0.017777777777777778`}}, 0.000029308256453185437`]]}}, 
    {CapForm["Butt"], 
     Arrowheads[{{0.00019957808757672726`, 1.}}, Appearance -> "Projected"], 
     {RGBColor[1., 0.03527722722908322, 0.], 
      Arrow3DBox[TubeBox[{{-0.3886536838570526, -0.38912409392072517`, 
       0.02}, {-0.3891240939207251, -0.3886536838570527, 0.02}}, 
       0.00003326301459612121]]}}, 
    {CapForm["Butt"], 
     Arrowheads[{{0.0017163523255962956`, 1.}}, Appearance -> "Projected"], 
     {RGBColor[1., 0.30338075552481025`, 0.], 
      Arrow3DBox[TubeBox[{{-0.3905400856647609, -0.2754418607438239, 
       0.0022222222222222222`}, {-0.3872376921130169, -0.2801136948117317, 
       0.0022222222222222222`}}, 0.00028605872093271593`]]}}, 
    {CapForm["Butt"], 
     Arrowheads[{{0.003439572795885208, 1.}}, Appearance -> "Projected"], 
     {RGBColor[1., 0.6079755175766162, 0.], 
      Arrow3DBox[TubeBox[{{-0.3921978639639878, -0.2730965780143481, 
       0.0044444444444444444`}, {-0.38557991381379, -0.28245897754120747`, 
       0.0044444444444444444`}}, 0.0005732621326475347]]}}, 
    {CapForm["Butt"], 
     Arrowheads[{{0.005176582478632173, 1.}}, Appearance -> "Projected"], 
     {RGBColor[1., 0.9150076473129172, 0.], 
      Arrow3DBox[TubeBox[{{-0.393868855853273, -0.2707324916054115, 
       0.006666666666666666}, {-0.3839089219245047, -0.2848230639501441, 
       0.006666666666666666}}, 0.0008627637464386955]]}}, 
    {CapForm["Butt"], 
     Arrowheads[{{0.006934408615293941, 1.}}, Appearance -> "Projected"], 
     {RGBColor[0.7742807269511292, 1., 0.], 
      Arrow3DBox[TubeBox[{{-0.3955597947976565, -0.268340018508027, 
       0.008888888888888889}, {-0.3822179829801213, -0.2872155370475285, 
       0.008888888888888889}}, 0.001155734769215657]]}}, 
    {CapForm["Butt"], 
     Arrowheads[{{0.008720238753518517, 1.}}, Appearance -> "Projected"], 
     {RGBColor[0.4586191413350633, 1., 0.], 
      Arrow3DBox[TubeBox[{{-0.39727756735538056`, -0.26590935674532773`, 
       0.011111111111111112`}, {-0.38050021042239723`, -0.28964619881022785`, 
       0.011111111111111112`}}, 0.0014533731255864195`]]}}, 
    {CapForm["Butt"], 
     Arrowheads[{{0.010541476978506383`, 1.}}, Appearance -> "Projected"], 
     {RGBColor[0.13669885699279005`, 1., 0.], 
      Arrow3DBox[TubeBox[{{-0.39902926687362045`, -0.26343040856035116`, 
       0.013333333333333332`}, {-0.3787485109041574, -0.2921251469952044, 
       0.013333333333333332`}}, 0.0017569128297510639`]]}}, 
    {CapForm["Butt"], 
     Arrowheads[{{0.012405802119137594`, 1.}}, Appearance -> "Projected"], 
     {RGBColor[0., 1., 0.19283742834541684`], 
      Arrow3DBox[TubeBox[{{-0.40082224906522973`, -0.26089270090302935`, 
       0.015555555555555555`}, {-0.3769555287125481, -0.29466285465252623`, 
       0.015555555555555555`}}, 0.0020676336865229324`]]}}, 
    {CapForm["Butt"], 
     Arrowheads[{{0.014321227863183145`, 1.}}, Appearance -> "Projected"], 
     {RGBColor[0., 1., 0.5314062062787697], 
      Arrow3DBox[TubeBox[{{-0.4026641894024978, -0.25828530330522464`, 
       0.017777777777777778`}, {-0.37511358837527997`, -0.29727025225033094`, 
       0.017777777777777778`}}, 0.002386871310530524]]}}, 
    {CapForm["Butt"], 
     Arrowheads[{{0.016296166742382143`, 1.}}, Appearance -> "Projected"], 
     {RGBColor[0., 1., 0.8804944676755397], 
      Arrow3DBox[TubeBox[{{-0.4045631441989227, -0.2555967404644155, 
       0.02}, {-0.37321463357885504`, -0.2999588150911401, 0.02}}, 
       0.0027160277903970236`]]}}, 
    {CapForm["Butt"], 
     Arrowheads[{{0.0037155607759840146`, 1.}}, Appearance -> "Projected"], 
     {RGBColor[1., 0.6567588825474732, 0.], 
      Arrow3DBox[TubeBox[{{-0.3913219071044529, -0.16097204348856287`, 
       0.0022222222222222222`}, {-0.3864558706733248, -0.1723612898447705, 
       0.0022222222222222222`}}, 0.0006192601293306691]]}}, 
    {CapForm["Butt"], 
     Arrowheads[{{0.007435330366606999, 1.}}, Appearance -> "Projected"], 
     {RGBColor[0.6857382889529362, 1., 0.], 
      Arrow3DBox[TubeBox[{{-0.39375762995158176`, -0.1552709477546525, 
       0.0044444444444444444`}, {-0.38402014782619603`, -0.17806238557868087`,
        0.0044444444444444444`}}, 0.0012392217277678332`]]}}, 
    {CapForm["Butt"], 
     Arrowheads[{{0.011163516596988379`, 1.}}, Appearance -> "Projected"], 
     {RGBColor[0.02674774345561559, 1., 0.], 
      Arrow3DBox[TubeBox[{{-0.3961987609182487, -0.14955690821486717`, 
       0.006666666666666666}, {-0.3815790168595291, -0.1837764251184662, 
       0.006666666666666666}}, 0.0018605860994980632`]]}}, 
    {CapForm["Butt"], 
     Arrowheads[{{0.014904325155785674`, 1.}}, Appearance -> "Projected"], 
     {RGBColor[0., 1., 0.6344739124461314], 
      Arrow3DBox[TubeBox[{{-0.3986480010993537, -0.14382345647071798`, 
       0.008888888888888889}, {-0.37912977667842407`, -0.18950987686261536`, 
       0.008888888888888889}}, 0.0024840541926309458`]]}}, 
    {CapForm["Butt"], 
     Arrowheads[{{0.018661958130051965`, 1.}}, Appearance -> "Projected"], 
     {RGBColor[0., 0.7013305644570642, 1.], 
      Arrow3DBox[TubeBox[{{-0.40110804773114406`, -0.13806412900558, 
       0.011111111111111112`}, {-0.37666973004663373`, -0.1952692043277534, 
       0.011111111111111112`}}, 0.003110326355008661]]}}, 
    {CapForm["Butt"], 
     Arrowheads[{{0.022440612035978563`, 1.}}, Appearance -> "Projected"], 
     {RGBColor[0., 0.03341940207464944, 1.], 
      Arrow3DBox[TubeBox[{{-0.403581592376702, -0.13227246997965197`, 
       0.013333333333333332`}, {-0.37419618540107574`, -0.2010608633536814, 
       0.013333333333333332`}}, 0.0037401020059964272`]]}}, 
    {CapForm["Butt"], 
     Arrowheads[{{0.026244475178474905`, 1.}}, Appearance -> "Projected"], 
     {RGBColor[0.6389477202658034, 0., 1.], 
      Arrow3DBox[TubeBox[{{-0.40607131865459434`, -0.1264420350462845, 
       0.015555555555555555`}, {-0.3717064591231835, -0.20689129828704886`, 
       0.015555555555555555`}}, 0.004374079196412484]]}}, 
    {CapForm["Butt"], 
     Arrowheads[{{0.030077724180255443`, 1.}}, Appearance -> "Projected"], 
     {RGBColor[1., 0., 0.683490941696637], 
      Arrow3DBox[TubeBox[{{-0.4085798994072911, -0.1205663964343114, 
       0.017777777777777778`}, {-0.3691978783704867, -0.21276693689902193`, 
       0.017777777777777778`}}, 0.0050129540300425735`]]}}, 
    {CapForm["Butt"], 
     Arrowheads[{{0.03394451943981527, 1.}}, Appearance -> "Projected"], 
     {RGBColor[1., 0., 8.881784197001252*^-15], 
      Arrow3DBox[TubeBox[{{-0.4111099931338699, -0.1146391496575524, 
       0.02}, {-0.36666778464390787`, -0.21869418367578097`, 0.02}}, 
       0.005657419906635878]]}}, 
    {CapForm["Butt"], 
     Arrowheads[{{0.003197378434638897, 1.}}, Appearance -> "Projected"], 
     {RGBColor[1., 0.5651654795657867, 0.], 
      Arrow3DBox[TubeBox[{{-0.3896426851737223, -0.050280174139054445`, 
       0.0022222222222222222`}, {-0.38813509260405554`, \
-0.060830936972056715`, 0.0022222222222222222`}}, 0.0005328964057731495]]}}, 
    {CapForm["Butt"], 
     Arrowheads[{{0.006391511980112685, 1.}}, Appearance -> "Projected"], 
     {RGBColor[0.870242604298163, 1., 0.], 
      Arrow3DBox[TubeBox[{{-0.39039574423408385`, -0.04501015046078133, 
       0.0044444444444444444`}, {-0.387382033543694, -0.06610096065032983, 
       0.0044444444444444444`}}, 0.0010652519966854476`]]}}, 
    {CapForm["Butt"], 
     Arrowheads[{{0.009579098113536178, 1.}}, Appearance -> "Projected"], 
     {RGBColor[0.3068080023014823, 1., 0.], 
      Arrow3DBox[TubeBox[{{-0.3911473157378829, -0.03975093741813028, 
       0.006666666666666666}, {-0.3866304620398948, -0.07136017369298088, 
       0.006666666666666666}}, 0.0015965163522560298`]]}}, 
    {CapForm["Butt"], 
     Arrowheads[{{0.01275671860228536, 1.}}, Appearance -> "Projected"], 
     {RGBColor[0., 1., 0.254865082106126], 
      Arrow3DBox[TubeBox[{{-0.39189662303854356`, -0.03450817895731802, 
       0.008888888888888889}, {-0.38588115473923423`, -0.07660293215379314, 
       0.008888888888888889}}, 0.00212611976704756]]}}, 
    {CapForm["Butt"], 
     Arrowheads[{{0.015920780297167557`, 1.}}, Appearance -> "Projected"], 
     {RGBColor[0., 1., 0.8141415273936512], 
      Arrow3DBox[TubeBox[{{-0.39264284971364394`, -0.029287807830545798`, 
       0.011111111111111112`}, {-0.3851349280641339, -0.08182330328056536, 
       0.011111111111111112`}}, 0.0026534633828612596`]]}}, 
    {CapForm["Butt"], 
     Arrowheads[{{0.019067453377964103`, 1.}}, Appearance -> "Projected"], 
     {RGBColor[0., 0.6296556217086025, 1.], 
      Arrow3DBox[TubeBox[{{-0.39338512552830435`, -0.024096147560203382`, 
       0.013333333333333332`}, {-0.3843926522494734, -0.08701496355090778, 
       0.013333333333333332`}}, 0.0031779088963273506`]]}}, 
    {CapForm["Butt"], 
     Arrowheads[{{0.022192607092311408`, 1.}}, Appearance -> "Projected"], 
     {RGBColor[0., 0.07725651294143221, 1.], 
      Arrow3DBox[TubeBox[{{-0.3941225118341824, -0.018940018542725687`, 
       0.015555555555555555`}, {-0.38365526594359534`, -0.09217109256838547, 
       0.015555555555555555`}}, 0.003698767848718568]]}}, 
    {CapForm["Butt"], 
     Arrowheads[{{0.02529174297133399, 1.}}, Appearance -> "Projected"], 
     {RGBColor[0.47054370874397566`, 0., 1.], 
      Arrow3DBox[TubeBox[{{-0.39485398640179015`, -0.013826848319735865`, 
       0.017777777777777778`}, {-0.3829237913759877, -0.0972842627913753, 
       0.017777777777777778`}}, 0.004215290495222332]]}}, 
    {CapForm["Butt"], 
     Arrowheads[{{0.02835992327553546, 1.}}, Appearance -> "Projected"], 
     {RGBColor[1., 0., 0.9871277466481487], 
      Arrow3DBox[TubeBox[{{-0.3955784271771232, -0.008764789725973977, 
       0.02}, {-0.38219935060065463`, -0.10234632138513719`, 0.02}}, 
       0.00472665387925591]]}}, 
    {CapForm["Butt"], 
     Arrowheads[{{0.003197378434638897, 1.}}, Appearance -> "Projected"], 
     {RGBColor[1., 0.5651654795657864, 0.], 
      Arrow3DBox[TubeBox[{{-0.3881350926040555, 0.060830936972056715`, 
       0.0022222222222222222`}, {-0.38964268517372225`, 0.050280174139054445`,
        0.0022222222222222222`}}, 0.0005328964057731495]]}}, 
    {CapForm["Butt"], 
     Arrowheads[{{0.006391511980112685, 1.}}, Appearance -> "Projected"], 
     {RGBColor[0.8702426042981635, 1., 0.], 
      Arrow3DBox[TubeBox[{{-0.38738203354369394`, 0.06610096065032983, 
       0.0044444444444444444`}, {-0.3903957442340838, 0.04501015046078133, 
       0.0044444444444444444`}}, 0.0010652519966854476`]]}}, 
    {CapForm["Butt"], 
     Arrowheads[{{0.009579098113536178, 1.}}, Appearance -> "Projected"], 
     {RGBColor[0.30680800230148275`, 1., 0.], 
      Arrow3DBox[TubeBox[{{-0.3866304620398949, 0.07136017369298088, 
       0.006666666666666666}, {-0.391147315737883, 0.03975093741813028, 
       0.006666666666666666}}, 0.0015965163522560298`]]}}, 
    {CapForm["Butt"], 
     Arrowheads[{{0.01275671860228536, 1.}}, Appearance -> "Projected"], 
     {RGBColor[0., 1., 0.2548650821061256], 
      Arrow3DBox[TubeBox[{{-0.38588115473923423`, 0.07660293215379314, 
       0.008888888888888889}, {-0.39189662303854356`, 0.03450817895731802, 
       0.008888888888888889}}, 0.00212611976704756]]}}, 
    {CapForm["Butt"], 
     Arrowheads[{{0.015920780297167557`, 1.}}, Appearance -> "Projected"], 
     {RGBColor[0., 1., 0.8141415273936508], 
      Arrow3DBox[TubeBox[{{-0.38513492806413385`, 0.08182330328056536, 
       0.011111111111111112`}, {-0.3926428497136439, 0.0292878078305458, 
       0.011111111111111112`}}, 0.0026534633828612596`]]}}, 
    {CapForm["Butt"], 
     Arrowheads[{{0.019067453377964103`, 1.}}, Appearance -> "Projected"], 
     {RGBColor[0., 0.6296556217086033, 1.], 
      Arrow3DBox[TubeBox[{{-0.38439265224947344`, 0.08701496355090778, 
       0.013333333333333332`}, {-0.3933851255283044, 0.024096147560203382`, 
       0.013333333333333332`}}, 0.0031779088963273506`]]}}, 
    {CapForm["Butt"], 
     Arrowheads[{{0.0221926070923114, 1.}}, Appearance -> "Projected"], 
     {RGBColor[0., 0.07725651294143354, 1.], 
      Arrow3DBox[TubeBox[{{-0.3836552659435954, 0.09217109256838546, 
       0.015555555555555555`}, {-0.39412251183418245`, 0.018940018542725694`, 
       0.015555555555555555`}}, 0.0036987678487185667`]]}}, 
    {CapForm["Butt"], 
     Arrowheads[{{0.02529174297133398, 1.}}, Appearance -> "Projected"], 
     {RGBColor[0.47054370874397566`, 0., 1.], 
      Arrow3DBox[TubeBox[{{-0.38292379137598764`, 0.09728426279137528, 
       0.017777777777777778`}, {-0.3948539864017901, 0.013826848319735872`, 
       0.017777777777777778`}}, 0.00421529049522233]]}}, 
    {CapForm["Butt"], 
     Arrowheads[{{0.028359923275535444`, 1.}}, Appearance -> "Projected"], 
     {RGBColor[1., 0., 0.9871277466481487], 
      Arrow3DBox[TubeBox[{{-0.3821993506006546, 0.10234632138513716`, 
       0.02}, {-0.39557842717712316`, 0.008764789725973991, 0.02}}, 
       0.004726653879255908]]}}, 
    {CapForm["Butt"], 
     Arrowheads[{{0.0037155607759840224`, 1.}}, Appearance -> "Projected"], 
     {RGBColor[1., 0.656758882547474, 0.], 
      Arrow3DBox[TubeBox[{{-0.3864558706733249, 0.17236128984477045`, 
       0.0022222222222222222`}, {-0.39132190710445297`, 0.16097204348856278`, 
       0.0022222222222222222`}}, 0.0006192601293306704]]}}, 
    {CapForm["Butt"], 
     Arrowheads[{{0.007435330366607014, 1.}}, Appearance -> "Projected"], 
     {RGBColor[0.6857382889529342, 1., 0.], 
      Arrow3DBox[TubeBox[{{-0.38402014782619603`, 0.17806238557868084`, 
       0.0044444444444444444`}, {-0.39375762995158176`, 0.15527094775465242`, 
       0.0044444444444444444`}}, 0.0012392217277678358`]]}}, 
    {CapForm["Butt"], 
     Arrowheads[{{0.0111635165969884, 1.}}, Appearance -> "Projected"], 
     {RGBColor[0.026747743455612483`, 1., 0.], 
      Arrow3DBox[TubeBox[{{-0.38157901685952905`, 0.18377642511846617`, 
       0.006666666666666666}, {-0.3961987609182487, 0.14955690821486708`, 
       0.006666666666666666}}, 0.0018605860994980667`]]}}, 
    {CapForm["Butt"], 
     Arrowheads[{{0.014904325155785688`, 1.}}, Appearance -> "Projected"], 
     {RGBColor[0., 1., 0.6344739124461354], 
      Arrow3DBox[TubeBox[{{-0.37912977667842407`, 0.18950987686261536`, 
       0.008888888888888889}, {-0.3986480010993537, 0.14382345647071793`, 
       0.008888888888888889}}, 0.002484054192630948]]}}, 
    {CapForm["Butt"], 
     Arrowheads[{{0.018661958130051993`, 1.}}, Appearance -> "Projected"], 
     {RGBColor[0., 0.7013305644570593, 1.], 
      Arrow3DBox[TubeBox[{{-0.3766697300466337, 0.19526920432775338`, 
       0.011111111111111112`}, {-0.4011080477311441, 0.1380641290055799, 
       0.011111111111111112`}}, 0.0031103263550086653`]]}}, 
    {CapForm["Butt"], 
     Arrowheads[{{0.022440612035978583`, 1.}}, Appearance -> "Projected"], 
     {RGBColor[0., 0.03341940207464322, 1.], 
      Arrow3DBox[TubeBox[{{-0.37419618540107574`, 0.20106086335368137`, 
       0.013333333333333332`}, {-0.40358159237670205`, 0.1322724699796519, 
       0.013333333333333332`}}, 0.0037401020059964307`]]}}, 
    {CapForm["Butt"], 
     Arrowheads[{{0.026244475178474946`, 1.}}, Appearance -> "Projected"], 
     {RGBColor[0.6389477202658096, 0., 1.], 
      Arrow3DBox[TubeBox[{{-0.37170645912318345`, 0.20689129828704886`, 
       0.015555555555555555`}, {-0.40607131865459434`, 0.1264420350462844, 
       0.015555555555555555`}}, 0.004374079196412491]]}}, 
    {CapForm["Butt"], 
     Arrowheads[{{0.030077724180255498`, 1.}}, Appearance -> "Projected"], 
     {RGBColor[1., 0., 0.683490941696629], 
      Arrow3DBox[TubeBox[{{-0.3691978783704866, 0.21276693689902199`, 
       0.017777777777777778`}, {-0.4085798994072911, 0.12056639643431127`, 
       0.017777777777777778`}}, 0.005012954030042583]]}}, 
    {CapForm["Butt"], 
     Arrowheads[{{0.033944519439815315`, 1.}}, Appearance -> "Projected"], 
     {RGBColor[1., 0., 0.], 
      Arrow3DBox[TubeBox[{{-0.3666677846439078, 0.218694183675781, 
       0.02}, {-0.4111099931338699, 0.11463914965755226`, 0.02}}, 
       0.005657419906635886]]}}, 
    {CapForm["Butt"], 
     Arrowheads[{{0.0017163523255962956`, 1.}}, Appearance -> "Projected"], 
     {RGBColor[1., 0.3033807555248089, 0.], 
      Arrow3DBox[TubeBox[{{-0.3872376921130169, 0.2801136948117316, 
       0.0022222222222222222`}, {-0.3905400856647609, 0.27544186074382376`, 
       0.0022222222222222222`}}, 0.00028605872093271593`]]}}, 
    {CapForm["Butt"], 
     Arrowheads[{{0.0034395727958851942`, 1.}}, Appearance -> "Projected"], 
     {RGBColor[1., 0.6079755175766139, 0.], 
      Arrow3DBox[TubeBox[{{-0.38557991381379, 0.28245897754120736`, 
       0.0044444444444444444`}, {-0.3921978639639878, 0.27309657801434806`, 
       0.0044444444444444444`}}, 0.0005732621326475323]]}}, 
    {CapForm["Butt"], 
     Arrowheads[{{0.0051765824786321486`, 1.}}, Appearance -> "Projected"], 
     {RGBColor[1., 0.9150076473129136, 0.], 
      Arrow3DBox[TubeBox[{{-0.38390892192450476`, 0.28482306395014395`, 
       0.006666666666666666}, {-0.393868855853273, 0.2707324916054114, 
       0.006666666666666666}}, 0.0008627637464386915]]}}, 
    {CapForm["Butt"], 
     Arrowheads[{{0.006934408615293919, 1.}}, Appearance -> "Projected"], 
     {RGBColor[0.7742807269511345, 1., 0.], 
      Arrow3DBox[TubeBox[{{-0.38221798298012133`, 0.2872155370475284, 
       0.008888888888888889}, {-0.3955597947976565, 0.26834001850802697`, 
       0.008888888888888889}}, 0.001155734769215653]]}}, 
    {CapForm["Butt"], 
     Arrowheads[{{0.008720238753518494, 1.}}, Appearance -> "Projected"], 
     {RGBColor[0.45861914133506954`, 1., 0.], 
      Arrow3DBox[TubeBox[{{-0.3805002104223973, 0.28964619881022774`, 
       0.011111111111111112`}, {-0.39727756735538056`, 0.2659093567453277, 
       0.011111111111111112`}}, 0.0014533731255864156`]]}}, 
    {CapForm["Butt"], 
     Arrowheads[{{0.010541476978506336`, 1.}}, Appearance -> "Projected"], 
     {RGBColor[0.13669885699279716`, 1., 0.], 
      Arrow3DBox[TubeBox[{{-0.3787485109041574, 0.29212514699520425`, 
       0.013333333333333332`}, {-0.39902926687362034`, 0.2634304085603511, 
       0.013333333333333332`}}, 0.001756912829751056]]}}, 
    {CapForm["Butt"], 
     Arrowheads[{{0.01240580211913755, 1.}}, Appearance -> "Projected"], 
     {RGBColor[0., 1., 0.1928374283454075], 
      Arrow3DBox[TubeBox[{{-0.37695552871254817`, 0.29466285465252606`, 
       0.015555555555555555`}, {-0.4008222490652297, 0.2608927009030293, 
       0.015555555555555555`}}, 0.002067633686522925]]}}, 
    {CapForm["Butt"], 
     Arrowheads[{{0.014321227863183081`, 1.}}, Appearance -> "Projected"], 
     {RGBColor[0., 1., 0.531406206278759], 
      Arrow3DBox[TubeBox[{{-0.3751135883752801, 0.29727025225033077`, 
       0.017777777777777778`}, {-0.4026641894024977, 0.2582853033052246, 
       0.017777777777777778`}}, 0.0023868713105305137`]]}}, 
    {CapForm["Butt"], 
     Arrowheads[{{0.016296166742382063`, 1.}}, Appearance -> "Projected"], 
     {RGBColor[0., 1., 0.8804944676755282], 
      Arrow3DBox[TubeBox[{{-0.37321463357885515`, 0.29995881509113986`, 
       0.02}, {-0.40456314419892264`, 0.2555967404644155, 0.02}}, 
       0.0027160277903970106`]]}}, 
    {CapForm["Butt"], 
     Arrowheads[{{0.000021279487269397968`, 1.}}, Appearance -> "Projected"], 
     {RGBColor[1., 0.0037613413217624236`, 0.], 
      Arrow3DBox[TubeBox[{{-0.38891396700513614`, 0.3888638107726416, 
       0.0022222222222222222`}, {-0.3888638107726416, 0.38891396700513614`, 
       0.0022222222222222222`}}, 3.546581211566328*^-6]]}}, 
    {CapForm["Butt"], 
     Arrowheads[{{0.00004262455135996566, 1.}}, Appearance -> "Projected"], 
     {RGBColor[1., 0.00753427393819095, 0.], 
      Arrow3DBox[TubeBox[{{-0.38893912240440837`, 0.38883865537336937`, 
       0.0044444444444444444`}, {-0.3888386553733695, 0.38893912240440826`, 
       0.0044444444444444444`}}, 7.104091893327611*^-6]]}}, 
    {CapForm["Butt"], 
     Arrowheads[{{0.00006410118264582944, 1.}}, Appearance -> "Projected"], 
     {RGBColor[1., 0.011330462243157147`, 0.], 
      Arrow3DBox[TubeBox[{{-0.38896443285710713`, 0.3888133449206706, 
       0.006666666666666666}, {-0.38881334492067066`, 0.3889644328571071, 
       0.006666666666666666}}, 0.000010683530440971574`]]}}, 
    {CapForm["Butt"], 
     Arrowheads[{{0.00008577620060143096, 1.}}, Appearance -> "Projected"], 
     {RGBColor[1., 0.01516171718150483, 0.], 
      Arrow3DBox[TubeBox[{{-0.38898997711073835`, 0.3887878006670394, 
       0.008888888888888889}, {-0.3887878006670394, 0.38898997711073835`, 
       0.008888888888888889}}, 0.000014296033433571827`]]}}, 
    {CapForm["Butt"], 
     Arrowheads[{{0.00010771767511299367`, 1.}}, Appearance -> "Projected"], 
     {RGBColor[1., 0.019040070719628766`, 0.], 
      Arrow3DBox[TubeBox[{{-0.3890158353864323, 0.3887619423913454, 
       0.011111111111111112`}, {-0.3887619423913455, 0.38901583538643225`, 
       0.011111111111111112`}}, 0.00001795294585216561]]}}, 
    {CapForm["Butt"], 
     Arrowheads[{{0.000129995362451646, 1.}}, Appearance -> "Projected"], 
     {RGBColor[1., 0.02297785290767762, 0.], 
      Arrow3DBox[TubeBox[{{-0.38904208989274286`, 0.3887356878850349, 
       0.013333333333333332`}, {-0.388735687885035, 0.38904208989274275`, 
       0.013333333333333332`}}, 0.000021665893741941]]}}, 
    {CapForm["Butt"], 
     Arrowheads[{{0.00015268115430129055`, 1.}}, Appearance -> "Projected"], 
     {RGBColor[1., 0.026987771249256887`, 0.], 
      Arrow3DBox[TubeBox[{{-0.38906882535483195`, 0.3887089524229458, 
       0.015555555555555555`}, {-0.38870895242294584`, 0.3890688253548319, 
       0.015555555555555555`}}, 0.00002544685905021509]]}}, 
    {CapForm["Butt"], 
     Arrowheads[{{0.00017584953871915975`, 1.}}, Appearance -> "Projected"], 
     {RGBColor[1., 0.031082992180393343`, 0.], 
      Arrow3DBox[TubeBox[{{-0.389096129557717, 0.38868164822006074`, 
       0.017777777777777778`}, {-0.38868164822006085`, 0.3890961295577169, 
       0.017777777777777778`}}, 0.00002930825645319329]]}}, 
    {CapForm["Butt"], 
     Arrowheads[{{0.00019957808757677437`, 1.}}, Appearance -> "Projected"], 
     {RGBColor[1., 0.03527722722909188, 0.], 
      Arrow3DBox[TubeBox[{{-0.3891240939207252, 0.3886536838570525, 
       0.02}, {-0.3886536838570526, 0.3891240939207251, 0.02}}, 
       0.000033263014596129064`]]}}, 
    {CapForm["Butt"], 
     Arrowheads[{{0.0017163523255962956`, 1.}}, Appearance -> "Projected"], 
     {RGBColor[1., 0.30338075552481014`, 0.], 
      Arrow3DBox[TubeBox[{{-0.2801136948117317, -0.3872376921130169, 
       0.0022222222222222222`}, {-0.2754418607438239, -0.3905400856647609, 
       0.0022222222222222222`}}, 0.00028605872093271593`]]}}, 
    {CapForm["Butt"], 
     Arrowheads[{{0.003439572795885208, 1.}}, Appearance -> "Projected"], 
     {RGBColor[1., 0.6079755175766162, 0.], 
      Arrow3DBox[TubeBox[{{-0.28245897754120747`, -0.38557991381379, 
       0.0044444444444444444`}, {-0.2730965780143481, -0.3921978639639878, 
       0.0044444444444444444`}}, 0.0005732621326475347]]}}, 
    {CapForm["Butt"], 
     Arrowheads[{{0.005176582478632173, 1.}}, Appearance -> "Projected"], 
     {RGBColor[1., 0.9150076473129172, 0.], 
      Arrow3DBox[TubeBox[{{-0.28482306395014406`, -0.38390892192450476`, 
       0.006666666666666666}, {-0.27073249160541146`, -0.3938688558532731, 
       0.006666666666666666}}, 0.0008627637464386955]]}}, 
    {CapForm["Butt"], 
     Arrowheads[{{0.006934408615293941, 1.}}, Appearance -> "Projected"], 
     {RGBColor[0.7742807269511294, 1., 0.], 
      Arrow3DBox[TubeBox[{{-0.28721553704752856`, -0.3822179829801213, 
       0.008888888888888889}, {-0.2683400185080271, -0.3955597947976565, 
       0.008888888888888889}}, 0.001155734769215657]]}}, 
    {CapForm["Butt"], 
     Arrowheads[{{0.008720238753518527, 1.}}, Appearance -> "Projected"], 
     {RGBColor[0.4586191413350633, 1., 0.], 
      Arrow3DBox[TubeBox[{{-0.28964619881022785`, -0.38050021042239723`, 
       0.011111111111111112`}, {-0.26590935674532773`, -0.3972775673553806, 
       0.011111111111111112`}}, 0.0014533731255864212`]]}}, 
    {CapForm["Butt"], 
     Arrowheads[{{0.010541476978506383`, 1.}}, Appearance -> "Projected"], 
     {RGBColor[0.1366988569927896, 1., 0.], 
      Arrow3DBox[TubeBox[{{-0.2921251469952044, -0.37874851090415734`, 
       0.013333333333333332`}, {-0.26343040856035116`, -0.3990292668736204, 
       0.013333333333333332`}}, 0.0017569128297510639`]]}}, 
    {CapForm["Butt"], 
     Arrowheads[{{0.012405802119137594`, 1.}}, Appearance -> "Projected"], 
     {RGBColor[0., 1., 0.19283742834541684`], 
      Arrow3DBox[TubeBox[{{-0.29466285465252623`, -0.37695552871254806`, 
       0.015555555555555555`}, {-0.26089270090302935`, -0.4008222490652297, 
       0.015555555555555555`}}, 0.0020676336865229324`]]}}, 
    {CapForm["Butt"], 
     Arrowheads[{{0.014321227863183137`, 1.}}, Appearance -> "Projected"], 
     {RGBColor[0., 1., 0.5314062062787688], 
      Arrow3DBox[TubeBox[{{-0.29727025225033094`, -0.37511358837528, 
       0.017777777777777778`}, {-0.25828530330522464`, -0.4026641894024978, 
       0.017777777777777778`}}, 0.0023868713105305228`]]}}, 
    {CapForm["Butt"], 
     Arrowheads[{{0.016296166742382143`, 1.}}, Appearance -> "Projected"], 
     {RGBColor[0., 1., 0.8804944676755402], 
      Arrow3DBox[TubeBox[{{-0.2999588150911401, -0.3732146335788551, 
       0.02}, {-0.2555967404644155, -0.40456314419892275`, 0.02}}, 
       0.0027160277903970236`]]}}, 
    {CapForm["Butt"], 
     Arrowheads[{{0.003213793818528605, 1.}}, Appearance -> "Projected"], 
     {RGBColor[1., 0.5680670467396229, 0.], 
      Arrow3DBox[TubeBox[{{-0.28156527011513943`, -0.27399028544041615`, 
       0.0022222222222222222`}, {-0.27399028544041615`, -0.28156527011513943`,
        0.0022222222222222222`}}, 0.0005356323030881008]]}}, 
    {CapForm["Butt"], 
     Arrowheads[{{0.006424547251479646, 1.}}, Appearance -> "Projected"], 
     {RGBColor[0.8644033220967093, 1., 0.], 
      Arrow3DBox[TubeBox[{{-0.28534917932373555`, -0.27020637623182003`, 
       0.0044444444444444444`}, {-0.27020637623182003`, -0.28534917932373555`,
        0.0044444444444444444`}}, 0.0010707578752466077`]]}}, 
    {CapForm["Butt"], 
     Arrowheads[{{0.009629164999731328, 1.}}, Appearance -> "Projected"], 
     {RGBColor[0.2979582285492395, 1., 0.], 
      Arrow3DBox[TubeBox[{{-0.2891258575585681, -0.26642969799698746`, 
       0.006666666666666666}, {-0.2664296979969875, -0.28912585755856807`, 
       0.006666666666666666}}, 0.0016048608332885547`]]}}, 
    {CapForm["Butt"], 
     Arrowheads[{{0.012824441522040387`, 1.}}, Appearance -> "Projected"], 
     {RGBColor[0., 1., 0.26683571905241], 
      Arrow3DBox[TubeBox[{{-0.29289152705305294`, -0.26266402850250264`, 
       0.008888888888888889}, {-0.26266402850250264`, -0.29289152705305294`, 
       0.008888888888888889}}, 0.0021374069203400647`]]}}, 
    {CapForm["Butt"], 
     Arrowheads[{{0.0160070046418179, 1.}}, Appearance -> "Projected"], 
     {RGBColor[0., 1., 0.8293824580781859], 
      Arrow3DBox[TubeBox[{{-0.29664221365896776`, -0.2589133418965878, 
       0.011111111111111112`}, {-0.2589133418965878, -0.29664221365896776`, 
       0.011111111111111112`}}, 0.0026678341069696497`]]}}, 
    {CapForm["Butt"], 
     Arrowheads[{{0.019173256746355116`, 1.}}, Appearance -> "Projected"], 
     {RGBColor[0., 0.6109539219696623, 1.], 
      Arrow3DBox[TubeBox[{{-0.3003736775490752, -0.2551818780064804, 
       0.013333333333333332`}, {-0.2551818780064804, -0.3003736775490751, 
       0.013333333333333332`}}, 0.003195542791059186]]}}, 
    {CapForm["Butt"], 
     Arrowheads[{{0.022319313624990532`, 1.}}, Appearance -> "Projected"], 
     {RGBColor[0., 0.0548599903622069, 1.], 
      Arrow3DBox[TubeBox[{{-0.3040813411372113, -0.2514742144183443, 
       0.015555555555555555`}, {-0.2514742144183443, -0.3040813411372113, 
       0.015555555555555555`}}, 0.0037198856041650886`]]}}, 
    {CapForm["Butt"], 
     Arrowheads[{{0.025440940937702577`, 1.}}, Appearance -> "Projected"], 
     {RGBColor[0.49691579510680484`, 0., 1.], 
      Arrow3DBox[TubeBox[{{-0.30776021420580435`, -0.24779534134975123`, 
       0.017777777777777778`}, {-0.24779534134975123`, -0.30776021420580435`, 
       0.017777777777777778`}}, 0.004240156822950429]]}}, 
    {CapForm["Butt"], 
     Arrowheads[{{0.028533486183067874`, 1.}}, Appearance -> "Projected"], 
     {RGBColor[1., 0., 0.9564489371560612], 
      Arrow3DBox[TubeBox[{{-0.31140481372934437`, -0.2441507418262112, 
       0.02}, {-0.2441507418262112, -0.31140481372934437`, 0.02}}, 
       0.004755581030511312]]}}, 
    {CapForm["Butt"], 
     Arrowheads[{{0.0034312113778469044`, 1.}}, Appearance -> "Projected"], 
     {RGBColor[1., 0.6064975615160288, 0.], 
      Arrow3DBox[TubeBox[{{-0.2807184508414674, -0.16176199468330832`, 
       0.0022222222222222222`}, {-0.2748371047140882, -0.17157133865002505`, 
       0.0022222222222222222`}}, 0.0005718685629744841]]}}, 
    {CapForm["Butt"], 
     Arrowheads[{{0.006864696873697889, 1.}}, Appearance -> "Projected"], 
     {RGBColor[0.7866029060975439, 1., 0.], 
      Arrow3DBox[TubeBox[{{-0.2836610403893332, -0.15685405251398202`, 
       0.0044444444444444444`}, {-0.27189451516622243`, -0.17647928081935138`,
        0.0044444444444444444`}}, 0.001144116145616315]]}}, 
    {CapForm["Butt"], 
     Arrowheads[{{0.010302762365457007`, 1.}}, Appearance -> "Projected"], 
     {RGBColor[0.17889381812151628`, 1., 0.], 
      Arrow3DBox[TubeBox[{{-0.2866074894242353, -0.15193952415458434`, 
       0.006666666666666666}, {-0.2689480661313203, -0.181393809178749, 
       0.006666666666666666}}, 0.0017171270609095011`]]}}, 
    {CapForm["Butt"], 
     Arrowheads[{{0.013747777551176458`, 1.}}, Appearance -> "Projected"], 
     {RGBColor[0., 1., 0.4300436909501748], 
      Arrow3DBox[TubeBox[{{-0.289559794234585, -0.14701500152992544`, 
       0.008888888888888889}, {-0.2659957613209706, -0.18631833180340793`, 
       0.008888888888888889}}, 0.0022912962585294096`]]}}, 
    {CapForm["Butt"], 
     Arrowheads[{{0.017202208745237427`, 1.}}, Appearance -> "Projected"], 
     {RGBColor[0., 0.9593544355687564, 1.], 
      Arrow3DBox[TubeBox[{{-0.29252003177048785`, -0.14207693717604422`, 
       0.011111111111111112`}, {-0.2630355237850677, -0.19125639615728915`, 
       0.011111111111111112`}}, 0.0028670347908729046`]]}}, 
    {CapForm["Butt"], 
     Arrowheads[{{0.020668653251925045`, 1.}}, Appearance -> "Projected"], 
     {RGBColor[0., 0.34662910071750286`, 1.], 
      Arrow3DBox[TubeBox[{{-0.2954903883288851, -0.13712159464217613`, 
       0.013333333333333332`}, {-0.26006516722667045`, -0.19621173869115724`, 
       0.013333333333333332`}}, 0.0034447755419875076`]]}}, 
    {CapForm["Butt"], 
     Arrowheads[{{0.024149875356503005`, 1.}}, Appearance -> "Projected"], 
     {RGBColor[0.26870830785891275`, 0., 1.], 
      Arrow3DBox[TubeBox[{{-0.2984731895781117, -0.1321449965527333, 
       0.015555555555555555`}, {-0.2570823659774439, -0.20118833678060008`, 
       0.015555555555555555`}}, 0.0040249792260838345`]]}}, 
    {CapForm["Butt"], 
     Arrowheads[{{0.027648844001848572`, 1.}}, Appearance -> "Projected"], 
     {RGBColor[0.8871825775947402, 0., 1.], 
      Arrow3DBox[TubeBox[{{-0.30147093197567626`, -0.12714287022936493`, 
       0.017777777777777778`}, {-0.2540846235798793, -0.20619046310396844`, 
       0.017777777777777778`}}, 0.004608140666974762]]}}, 
    {CapForm["Butt"], 
     Arrowheads[{{0.031168773463089456`, 1.}}, Appearance -> "Projected"], 
     {RGBColor[1., 0., 0.4906381393875394], 
      Arrow3DBox[TubeBox[{{-0.30448631667121623`, -0.12211058897744215`, 
       0.02}, {-0.25106923888433935`, -0.21122274435589122`, 0.02}}, 
       0.005194795577181576]]}}, 
    {CapForm["Butt"], 
     Arrowheads[{{0.003279033723722015, 1.}}, Appearance -> "Projected"], 
     {RGBColor[1., 0.5795987884646606, 0.], 
      Arrow3DBox[TubeBox[{{-0.27884212257848123`, -0.05019514423904475, 
       0.0022222222222222222`}, {-0.2767134329770743, -0.06091596687206641, 
       0.0022222222222222222`}}, 0.0005465056206203358]]}}, 
    {CapForm["Butt"], 
     Arrowheads[{{0.006557682300013195, 1.}}, Appearance -> "Projected"], 
     {RGBColor[0.8408705013532145, 1., 0.], 
      Arrow3DBox[TubeBox[{{-0.2799062570873002, -0.04483534561172584, 
       0.0044444444444444444`}, {-0.27564929846825537`, -0.06627576549938531, 
       0.0044444444444444444`}}, 0.0010929470500021991`]]}}, 
    {CapForm["Butt"], 
     Arrowheads[{{0.009835548475956536, 1.}}, Appearance -> "Projected"], 
     {RGBColor[0.26147808749004, 1., 0.], 
      Arrow3DBox[TubeBox[{{-0.28096996607235325`, -0.03947679195397348, 
       0.006666666666666666}, {-0.27458558948320233`, -0.07163431915713768, 
       0.006666666666666666}}, 0.0016392580793260893`]]}}, 
    {CapForm["Butt"], 
     Arrowheads[{{0.013112210616380808`, 1.}}, Appearance -> "Projected"], 
     {RGBColor[0., 1., 0.31770150223440297`], 
      Arrow3DBox[TubeBox[{{-0.2820330243585451, -0.03412015500713762, 
       0.008888888888888889}, {-0.2735225311970105, -0.07699095610397354, 
       0.008888888888888889}}, 0.002185368436063468]]}}, 
    {CapForm["Butt"], 
     Arrowheads[{{0.016387210032805896`, 1.}}, Appearance -> "Projected"], 
     {RGBColor[0., 1., 0.896587190493757], 
      Arrow3DBox[TubeBox[{{-0.2830951916768104, -0.02876616648425904, 
       0.011111111111111112`}, {-0.2724603638787451, -0.08234494462685213, 
       0.011111111111111112`}}, 0.002731201672134316]]}}, 
    {CapForm["Butt"], 
     Arrowheads[{{0.019660037534553396`, 1.}}, Appearance -> "Projected"], 
     {RGBColor[0., 0.524911026757426, 1.], 
      Arrow3DBox[TubeBox[{{-0.2841562072166462, -0.02341563984395069, 
       0.013333333333333332`}, {-0.27139934833890933`, -0.08769547126716047, 
       0.013333333333333332`}}, 0.003276672922425566]]}}, 
    {CapForm["Butt"], 
     Arrowheads[{{0.022930119119995217`, 1.}}, Appearance -> "Projected"], 
     {RGBColor[0.05310539051543195, 0., 1.], 
      Arrow3DBox[TubeBox[{{-0.28521578385620827`, -0.01806949346187077, 
       0.015555555555555555`}, {-0.27033977169934725`, -0.09304161764924039, 
       0.015555555555555555`}}, 0.003821686519999203]]}}, 
    {CapForm["Butt"], 
     Arrowheads[{{0.02619680071650076, 1.}}, Appearance -> "Projected"], 
     {RGBColor[0.6305208290749551, 0., 1.], 
      Arrow3DBox[TubeBox[{{-0.2862736020401991, -0.012728775349422551`, 
       0.017777777777777778`}, {-0.2692819535153565, -0.09838233576168862, 
       0.017777777777777778`}}, 0.004366133452750127]]}}, 
    {CapForm["Butt"], 
     Arrowheads[{{0.029459331384116213`, 1.}}, Appearance -> "Projected"], 
     {RGBColor[1., 0., 0.7927974464893772], 
      Arrow3DBox[TubeBox[{{-0.2873293030765688, -0.007394690368400014, 
       0.02}, {-0.26822625247898674`, -0.10371642074271115`, 0.02}}, 
       0.004909888564019369]]}}, 
    {CapForm["Butt"], 
     Arrowheads[{{0.003279033723722008, 1.}}, Appearance -> "Projected"], 
     {RGBColor[1., 0.57959878846466, 0.], 
      Arrow3DBox[TubeBox[{{-0.27671343297707435`, 0.0609159668720664, 
       0.0022222222222222222`}, {-0.27884212257848123`, 0.05019514423904476, 
       0.0022222222222222222`}}, 0.0005465056206203346]]}}, 
    {CapForm["Butt"], 
     Arrowheads[{{0.006557682300013193, 1.}}, Appearance -> "Projected"], 
     {RGBColor[0.8408705013532156, 1., 0.], 
      Arrow3DBox[TubeBox[{{-0.27564929846825537`, 0.06627576549938531, 
       0.0044444444444444444`}, {-0.2799062570873002, 0.04483534561172585, 
       0.0044444444444444444`}}, 0.0010929470500021987`]]}}, 
    {CapForm["Butt"], 
     Arrowheads[{{0.009835548475956529, 1.}}, Appearance -> "Projected"], 
     {RGBColor[0.2614780874900422, 1., 0.], 
      Arrow3DBox[TubeBox[{{-0.27458558948320233`, 0.07163431915713767, 
       0.006666666666666666}, {-0.28096996607235325`, 0.039476791953973495`, 
       0.006666666666666666}}, 0.0016392580793260882`]]}}, 
    {CapForm["Butt"], 
     Arrowheads[{{0.0131122106163808, 1.}}, Appearance -> "Projected"], 
     {RGBColor[0., 1., 0.3177015022344012], 
      Arrow3DBox[TubeBox[{{-0.2735225311970105, 0.07699095610397352, 
       0.008888888888888889}, {-0.2820330243585451, 0.03412015500713764, 
       0.008888888888888889}}, 0.0021853684360634666`]]}}, 
    {CapForm["Butt"], 
     Arrowheads[{{0.01638721003280588, 1.}}, Appearance -> "Projected"], 
     {RGBColor[0., 1., 0.8965871904937539], 
      Arrow3DBox[TubeBox[{{-0.27246036387874517`, 0.0823449446268521, 
       0.011111111111111112`}, {-0.28309519167681046`, 0.028766166484259066`, 
       0.011111111111111112`}}, 0.002731201672134313]]}}, 
    {CapForm["Butt"], 
     Arrowheads[{{0.019660037534553372`, 1.}}, Appearance -> "Projected"], 
     {RGBColor[0., 0.5249110267574308, 1.], 
      Arrow3DBox[TubeBox[{{-0.2713993483389094, 0.08769547126716043, 
       0.013333333333333332`}, {-0.2841562072166462, 0.023415639843950724`, 
       0.013333333333333332`}}, 0.003276672922425562]]}}, 
    {CapForm["Butt"], 
     Arrowheads[{{0.022930119119995193`, 1.}}, Appearance -> "Projected"], 
     {RGBColor[0.05310539051542751, 0., 1.], 
      Arrow3DBox[TubeBox[{{-0.2703397716993473, 0.09304161764924035, 
       0.015555555555555555`}, {-0.28521578385620827`, 0.01806949346187081, 
       0.015555555555555555`}}, 0.003821686519999199]]}}, 
    {CapForm["Butt"], 
     Arrowheads[{{0.026196800716500726`, 1.}}, Appearance -> "Projected"], 
     {RGBColor[0.6305208290749507, 0., 1.], 
      Arrow3DBox[TubeBox[{{-0.2692819535153565, 0.09838233576168856, 
       0.017777777777777778`}, {-0.286273602040199, 0.0127287753494226, 
       0.017777777777777778`}}, 0.004366133452750121]]}}, 
    {CapForm["Butt"], 
     Arrowheads[{{0.029459331384116175`, 1.}}, Appearance -> "Projected"], 
     {RGBColor[1., 0., 0.7927974464893826], 
      Arrow3DBox[TubeBox[{{-0.2682262524789868, 0.10371642074271109`, 
       0.02}, {-0.2873293030765688, 0.00739469036840007, 0.02}}, 
       0.004909888564019363]]}}, 
    {CapForm["Butt"], 
     Arrowheads[{{0.0034312113778469417`, 1.}}, Appearance -> "Projected"], 
     {RGBColor[1., 0.6064975615160346, 0.], 
      Arrow3DBox[TubeBox[{{-0.2748371047140882, 0.17157133865002505`, 
       0.0022222222222222222`}, {-0.28071845084146746`, 0.1617619946833082, 
       0.0022222222222222222`}}, 0.0005718685629744903]]}}, 
    {CapForm["Butt"], 
     Arrowheads[{{0.006864696873697957, 1.}}, Appearance -> "Projected"], 
     {RGBColor[0.7866029060975319, 1., 0.], 
      Arrow3DBox[TubeBox[{{-0.2718945151662223, 0.1764792808193514, 
       0.0044444444444444444`}, {-0.2836610403893332, 0.15685405251398185`, 
       0.0044444444444444444`}}, 0.0011441161456163262`]]}}, 
    {CapForm["Butt"], 
     Arrowheads[{{0.01030276236545711, 1.}}, Appearance -> "Projected"], 
     {RGBColor[0.1788938181214983, 1., 0.], 
      Arrow3DBox[TubeBox[{{-0.2689480661313202, 0.18139380917874912`, 
       0.006666666666666666}, {-0.2866074894242354, 0.15193952415458414`, 
       0.006666666666666666}}, 0.0017171270609095185`]]}}, 
    {CapForm["Butt"], 
     Arrowheads[{{0.013747777551176591`, 1.}}, Appearance -> "Projected"], 
     {RGBColor[0., 1., 0.43004369095019923`], 
      Arrow3DBox[TubeBox[{{-0.26599576132097047`, 0.18631833180340807`, 
       0.008888888888888889}, {-0.2895597942345851, 0.1470150015299252, 
       0.008888888888888889}}, 0.0022912962585294318`]]}}, 
    {CapForm["Butt"], 
     Arrowheads[{{0.017202208745237597`, 1.}}, Appearance -> "Projected"], 
     {RGBColor[0., 0.9593544355687258, 1.], 
      Arrow3DBox[TubeBox[{{-0.2630355237850676, 0.19125639615728934`, 
       0.011111111111111112`}, {-0.292520031770488, 0.14207693717604392`, 
       0.011111111111111112`}}, 0.0028670347908729328`]]}}, 
    {CapForm["Butt"], 
     Arrowheads[{{0.020668653251925254`, 1.}}, Appearance -> "Projected"], 
     {RGBColor[0., 0.34662910071746644`, 1.], 
      Arrow3DBox[TubeBox[{{-0.2600651672266703, 0.1962117386911575, 
       0.013333333333333332`}, {-0.29549038832888525`, 0.13712159464217577`, 
       0.013333333333333332`}}, 0.0034447755419875423`]]}}, 
    {CapForm["Butt"], 
     Arrowheads[{{0.02414987535650325, 1.}}, Appearance -> "Projected"], 
     {RGBColor[0.2687083078589563, 0., 1.], 
      Arrow3DBox[TubeBox[{{-0.25708236597744366`, 0.20118833678060039`, 
       0.015555555555555555`}, {-0.29847318957811186`, 0.13214499655273287`, 
       0.015555555555555555`}}, 0.004024979226083875]]}}, 
    {CapForm["Butt"], 
     Arrowheads[{{0.02764884400184885, 1.}}, Appearance -> "Projected"], 
     {RGBColor[0.8871825775947908, 0., 1.], 
      Arrow3DBox[TubeBox[{{-0.2540846235798791, 0.20619046310396877`, 
       0.017777777777777778`}, {-0.30147093197567654`, 0.1271428702293645, 
       0.017777777777777778`}}, 0.004608140666974808]]}}, 
    {CapForm["Butt"], 
     Arrowheads[{{0.031168773463089786`, 1.}}, Appearance -> "Projected"], 
     {RGBColor[1., 0., 0.4906381393874817], 
      Arrow3DBox[TubeBox[{{-0.2510692388843391, 0.21122274435589164`, 
       0.02}, {-0.3044863166712165, 0.12211058897744162`, 0.02}}, 
       0.005194795577181631]]}}, 
    {CapForm["Butt"], 
     Arrowheads[{{0.003213793818528605, 1.}}, Appearance -> "Projected"], 
     {RGBColor[1., 0.5680670467396242, 0.], 
      Arrow3DBox[TubeBox[{{-0.27399028544041615`, 0.2815652701151393, 
       0.0022222222222222222`}, {-0.28156527011513943`, 0.27399028544041604`, 
       0.0022222222222222222`}}, 0.0005356323030881008]]}}, 
    {CapForm["Butt"], 
     Arrowheads[{{0.0064245472514796705`, 1.}}, Appearance -> "Projected"], 
     {RGBColor[0.8644033220967065, 1., 0.], 
      Arrow3DBox[TubeBox[{{-0.27020637623182003`, 0.2853491793237355, 
       0.0044444444444444444`}, {-0.2853491793237356, 0.2702063762318199, 
       0.0044444444444444444`}}, 0.0010707578752466118`]]}}, 
    {CapForm["Butt"], 
     Arrowheads[{{0.009629164999731364, 1.}}, Appearance -> "Projected"], 
     {RGBColor[0.2979582285492355, 1., 0.], 
      Arrow3DBox[TubeBox[{{-0.26642969799698746`, 0.289125857558568, 
       0.006666666666666666}, {-0.2891258575585681, 0.2664296979969873, 
       0.006666666666666666}}, 0.0016048608332885608`]]}}, 
    {CapForm["Butt"], 
     Arrowheads[{{0.012824441522040412`, 1.}}, Appearance -> "Projected"], 
     {RGBColor[0., 1., 0.2668357190524153], 
      Arrow3DBox[TubeBox[{{-0.26266402850250264`, 0.2928915270530529, 
       0.008888888888888889}, {-0.29289152705305294`, 0.2626640285025025, 
       0.008888888888888889}}, 0.0021374069203400686`]]}}, 
    {CapForm["Butt"], 
     Arrowheads[{{0.016007004641817944`, 1.}}, Appearance -> "Projected"], 
     {RGBColor[0., 1., 0.8293824580781921], 
      Arrow3DBox[TubeBox[{{-0.25891334189658777`, 0.2966422136589677, 
       0.011111111111111112`}, {-0.2966422136589678, 0.25891334189658766`, 
       0.011111111111111112`}}, 0.0026678341069696575`]]}}, 
    {CapForm["Butt"], 
     Arrowheads[{{0.019173256746355154`, 1.}}, Appearance -> "Projected"], 
     {RGBColor[0., 0.6109539219696543, 1.], 
      Arrow3DBox[TubeBox[{{-0.2551818780064804, 0.3003736775490751, 
       0.013333333333333332`}, {-0.3003736775490752, 0.25518187800648023`, 
       0.013333333333333332`}}, 0.0031955427910591925`]]}}, 
    {CapForm["Butt"], 
     Arrowheads[{{0.022319313624990598`, 1.}}, Appearance -> "Projected"], 
     {RGBColor[0., 0.05485999036219713, 1.], 
      Arrow3DBox[TubeBox[{{-0.2514742144183442, 0.3040813411372113, 
       0.015555555555555555`}, {-0.30408134113721136`, 0.25147421441834406`, 
       0.015555555555555555`}}, 0.0037198856041650995`]]}}, 
    {CapForm["Butt"], 
     Arrowheads[{{0.02544094093770263, 1.}}, Appearance -> "Projected"], 
     {RGBColor[0.4969157951068146, 0., 1.], 
      Arrow3DBox[TubeBox[{{-0.2477953413497512, 0.30776021420580435`, 
       0.017777777777777778`}, {-0.30776021420580435`, 0.247795341349751, 
       0.017777777777777778`}}, 0.004240156822950438]]}}, 
    {CapForm["Butt"], 
     Arrowheads[{{0.02853348618306794, 1.}}, Appearance -> "Projected"], 
     {RGBColor[1., 0., 0.9564489371560496], 
      Arrow3DBox[TubeBox[{{-0.24415074182621116`, 0.31140481372934437`, 
       0.02}, {-0.3114048137293444, 0.24415074182621097`, 0.02}}, 
       0.0047555810305113235`]]}}, 
    {CapForm["Butt"], 
     Arrowheads[{{0.0017163523255962956`, 1.}}, Appearance -> "Projected"], 
     {RGBColor[1., 0.30338075552480914`, 0.], 
      Arrow3DBox[TubeBox[{{-0.2754418607438239, 0.39054008566476084`, 
       0.0022222222222222222`}, {-0.2801136948117317, 0.38723769211301684`, 
       0.0022222222222222222`}}, 0.00028605872093271593`]]}}, 
    {CapForm["Butt"], 
     Arrowheads[{{0.0034395727958851942`, 1.}}, Appearance -> "Projected"], 
     {RGBColor[1., 0.607975517576614, 0.], 
      Arrow3DBox[TubeBox[{{-0.2730965780143481, 0.39219786396398776`, 
       0.0044444444444444444`}, {-0.2824589775412074, 0.3855799138137899, 
       0.0044444444444444444`}}, 0.0005732621326475323]]}}, 
    {CapForm["Butt"], 
     Arrowheads[{{0.0051765824786321486`, 1.}}, Appearance -> "Projected"], 
     {RGBColor[1., 0.9150076473129138, 0.], 
      Arrow3DBox[TubeBox[{{-0.2707324916054115, 0.39386885585327297`, 
       0.006666666666666666}, {-0.28482306395014406`, 0.3839089219245047, 
       0.006666666666666666}}, 0.0008627637464386915]]}}, 
    {CapForm["Butt"], 
     Arrowheads[{{0.006934408615293919, 1.}}, Appearance -> "Projected"], 
     {RGBColor[0.774280726951134, 1., 0.], 
      Arrow3DBox[TubeBox[{{-0.2683400185080271, 0.39555979479765646`, 
       0.008888888888888889}, {-0.2872155370475285, 0.3822179829801213, 
       0.008888888888888889}}, 0.001155734769215653]]}}, 
    {CapForm["Butt"], 
     Arrowheads[{{0.00872023875351848, 1.}}, Appearance -> "Projected"], 
     {RGBColor[0.45861914133506887`, 1., 0.], 
      Arrow3DBox[TubeBox[{{-0.2659093567453278, 0.3972775673553805, 
       0.011111111111111112`}, {-0.2896461988102278, 0.38050021042239723`, 
       0.011111111111111112`}}, 0.0014533731255864134`]]}}, 
    {CapForm["Butt"], 
     Arrowheads[{{0.010541476978506359`, 1.}}, Appearance -> "Projected"], 
     {RGBColor[0.1366988569927965, 1., 0.], 
      Arrow3DBox[TubeBox[{{-0.2634304085603512, 0.39902926687362034`, 
       0.013333333333333332`}, {-0.2921251469952044, 0.37874851090415734`, 
       0.013333333333333332`}}, 0.0017569128297510598`]]}}, 
    {CapForm["Butt"], 
     Arrowheads[{{0.012405802119137558`, 1.}}, Appearance -> "Projected"], 
     {RGBColor[0., 1., 0.19283742834540885`], 
      Arrow3DBox[TubeBox[{{-0.2608927009030294, 0.4008222490652296, 
       0.015555555555555555`}, {-0.2946628546525262, 0.37695552871254806`, 
       0.015555555555555555`}}, 0.0020676336865229263`]]}}, 
    {CapForm["Butt"], 
     Arrowheads[{{0.01432122786318309, 1.}}, Appearance -> "Projected"], 
     {RGBColor[0., 1., 0.5314062062787603], 
      Arrow3DBox[TubeBox[{{-0.2582853033052247, 0.40266418940249765`, 
       0.017777777777777778`}, {-0.2972702522503309, 0.37511358837527997`, 
       0.017777777777777778`}}, 0.002386871310530515]]}}, 
    {CapForm["Butt"], 
     Arrowheads[{{0.016296166742382073`, 1.}}, Appearance -> "Projected"], 
     {RGBColor[0., 1., 0.8804944676755295], 
      Arrow3DBox[TubeBox[{{-0.25559674046441555`, 0.4045631441989226, 
       0.02}, {-0.29995881509114, 0.3732146335788551, 0.02}}, 
       0.0027160277903970124`]]}}, 
    {CapForm["Butt"], 
     Arrowheads[{{0.0037155607759840146`, 1.}}, Appearance -> "Projected"], 
     {RGBColor[1., 0.6567588825474732, 0.], 
      Arrow3DBox[TubeBox[{{-0.1723612898447705, -0.3864558706733249, 
       0.0022222222222222222`}, {-0.16097204348856287`, -0.39132190710445297`,
        0.0022222222222222222`}}, 0.0006192601293306691]]}}, 
    {CapForm["Butt"], 
     Arrowheads[{{0.007435330366606999, 1.}}, Appearance -> "Projected"], 
     {RGBColor[0.685738288952936, 1., 0.], 
      Arrow3DBox[TubeBox[{{-0.17806238557868087`, -0.38402014782619603`, 
       0.0044444444444444444`}, {-0.1552709477546525, -0.39375762995158176`, 
       0.0044444444444444444`}}, 0.0012392217277678332`]]}}, 
    {CapForm["Butt"], 
     Arrowheads[{{0.011163516596988379`, 1.}}, Appearance -> "Projected"], 
     {RGBColor[0.02674774345561559, 1., 0.], 
      Arrow3DBox[TubeBox[{{-0.1837764251184662, -0.3815790168595291, 
       0.006666666666666666}, {-0.14955690821486717`, -0.3961987609182487, 
       0.006666666666666666}}, 0.0018605860994980632`]]}}, 
    {CapForm["Butt"], 
     Arrowheads[{{0.014904325155785674`, 1.}}, Appearance -> "Projected"], 
     {RGBColor[0., 1., 0.6344739124461314], 
      Arrow3DBox[TubeBox[{{-0.1895098768626154, -0.37912977667842407`, 
       0.008888888888888889}, {-0.143823456470718, -0.3986480010993537, 
       0.008888888888888889}}, 0.0024840541926309458`]]}}, 
    {CapForm["Butt"], 
     Arrowheads[{{0.018661958130051965`, 1.}}, Appearance -> "Projected"], 
     {RGBColor[0., 0.7013305644570642, 1.], 
      Arrow3DBox[TubeBox[{{-0.19526920432775338`, -0.3766697300466337, 
       0.011111111111111112`}, {-0.13806412900558, -0.40110804773114406`, 
       0.011111111111111112`}}, 0.003110326355008661]]}}, 
    {CapForm["Butt"], 
     Arrowheads[{{0.022440612035978563`, 1.}}, Appearance -> "Projected"], 
     {RGBColor[0., 0.03341940207465033, 1.], 
      Arrow3DBox[TubeBox[{{-0.2010608633536814, -0.3741961854010758, 
       0.013333333333333332`}, {-0.13227246997965197`, -0.40358159237670205`, 
       0.013333333333333332`}}, 0.0037401020059964272`]]}}, 
    {CapForm["Butt"], 
     Arrowheads[{{0.026244475178474905`, 1.}}, Appearance -> "Projected"], 
     {RGBColor[0.6389477202658034, 0., 1.], 
      Arrow3DBox[TubeBox[{{-0.20689129828704886`, -0.37170645912318345`, 
       0.015555555555555555`}, {-0.1264420350462845, -0.4060713186545943, 
       0.015555555555555555`}}, 0.004374079196412484]]}}, 
    {CapForm["Butt"], 
     Arrowheads[{{0.030077724180255457`, 1.}}, Appearance -> "Projected"], 
     {RGBColor[1., 0., 0.683490941696637], 
      Arrow3DBox[TubeBox[{{-0.21276693689902199`, -0.3691978783704867, 
       0.017777777777777778`}, {-0.1205663964343114, -0.4085798994072911, 
       0.017777777777777778`}}, 0.005012954030042576]]}}, 
    {CapForm["Butt"], 
     Arrowheads[{{0.03394451943981526, 1.}}, Appearance -> "Projected"], 
     {RGBColor[1., 0., 9.769962616701378*^-15], 
      Arrow3DBox[TubeBox[{{-0.21869418367578097`, -0.36666778464390787`, 
       0.02}, {-0.11463914965755241`, -0.4111099931338699, 0.02}}, 
       0.005657419906635877]]}}, 
    {CapForm["Butt"], 
     Arrowheads[{{0.0034312113778469044`, 1.}}, Appearance -> "Projected"], 
     {RGBColor[1., 0.6064975615160286, 0.], 
      Arrow3DBox[TubeBox[{{-0.17157133865002505`, -0.2748371047140882, 
       0.0022222222222222222`}, {-0.16176199468330832`, -0.2807184508414674, 
       0.0022222222222222222`}}, 0.0005718685629744841]]}}, 
    {CapForm["Butt"], 
     Arrowheads[{{0.006864696873697889, 1.}}, Appearance -> "Projected"], 
     {RGBColor[0.7866029060975439, 1., 0.], 
      Arrow3DBox[TubeBox[{{-0.17647928081935135`, -0.2718945151662224, 
       0.0044444444444444444`}, {-0.156854052513982, -0.28366104038933315`, 
       0.0044444444444444444`}}, 0.001144116145616315]]}}, 
    {CapForm["Butt"], 
     Arrowheads[{{0.010302762365457007`, 1.}}, Appearance -> "Projected"], 
     {RGBColor[0.17889381812151628`, 1., 0.], 
      Arrow3DBox[TubeBox[{{-0.18139380917874903`, -0.2689480661313203, 
       0.006666666666666666}, {-0.15193952415458437`, -0.2866074894242353, 
       0.006666666666666666}}, 0.0017171270609095011`]]}}, 
    {CapForm["Butt"], 
     Arrowheads[{{0.013747777551176458`, 1.}}, Appearance -> "Projected"], 
     {RGBColor[0., 1., 0.4300436909501748], 
      Arrow3DBox[TubeBox[{{-0.18631833180340793`, -0.2659957613209706, 
       0.008888888888888889}, {-0.14701500152992544`, -0.289559794234585, 
       0.008888888888888889}}, 0.0022912962585294096`]]}}, 
    {CapForm["Butt"], 
     Arrowheads[{{0.017202208745237427`, 1.}}, Appearance -> "Projected"], 
     {RGBColor[0., 0.9593544355687573, 1.], 
      Arrow3DBox[TubeBox[{{-0.19125639615728915`, -0.2630355237850677, 
       0.011111111111111112`}, {-0.14207693717604422`, -0.29252003177048785`, 
       0.011111111111111112`}}, 0.0028670347908729046`]]}}, 
    {CapForm["Butt"], 
     Arrowheads[{{0.020668653251925045`, 1.}}, Appearance -> "Projected"], 
     {RGBColor[0., 0.34662910071750375`, 1.], 
      Arrow3DBox[TubeBox[{{-0.19621173869115724`, -0.2600651672266705, 
       0.013333333333333332`}, {-0.13712159464217613`, -0.29549038832888513`, 
       0.013333333333333332`}}, 0.0034447755419875076`]]}}, 
    {CapForm["Butt"], 
     Arrowheads[{{0.024149875356503005`, 1.}}, Appearance -> "Projected"], 
     {RGBColor[0.26870830785891275`, 0., 1.], 
      Arrow3DBox[TubeBox[{{-0.20118833678060008`, -0.2570823659774439, 
       0.015555555555555555`}, {-0.1321449965527333, -0.2984731895781117, 
       0.015555555555555555`}}, 0.0040249792260838345`]]}}, 
    {CapForm["Butt"], 
     Arrowheads[{{0.027648844001848572`, 1.}}, Appearance -> "Projected"], 
     {RGBColor[0.8871825775947411, 0., 1.], 
      Arrow3DBox[TubeBox[{{-0.20619046310396844`, -0.2540846235798793, 
       0.017777777777777778`}, {-0.12714287022936493`, -0.30147093197567626`, 
       0.017777777777777778`}}, 0.004608140666974762]]}}, 
    {CapForm["Butt"], 
     Arrowheads[{{0.031168773463089456`, 1.}}, Appearance -> "Projected"], 
     {RGBColor[1., 0., 0.4906381393875394], 
      Arrow3DBox[TubeBox[{{-0.21122274435589122`, -0.25106923888433935`, 
       0.02}, {-0.12211058897744215`, -0.30448631667121623`, 0.02}}, 
       0.005194795577181576]]}}, 
    {CapForm["Butt"], 
     Arrowheads[{{0.003308510285061615, 1.}}, Appearance -> "Projected"], 
     {RGBColor[1., 0.5848090365682218, 0.], 
      Arrow3DBox[TubeBox[{{-0.17056578343032086`, -0.1627675499030125, 
       0.0022222222222222222`}, {-0.1627675499030125, -0.17056578343032086`, 
       0.0022222222222222222`}}, 0.0005514183808436026]]}}, 
    {CapForm["Butt"], 
     Arrowheads[{{0.00661749568664001, 1.}}, Appearance -> "Projected"], 
     {RGBColor[0.8302979457335304, 1., 0.], 
      Arrow3DBox[TubeBox[{{-0.1744654601241598, -0.15886787320917356`, 
       0.0044444444444444444`}, {-0.15886787320917356`, -0.17446546012415984`,
        0.0044444444444444444`}}, 0.001102915947773335]]}}, 
    {CapForm["Butt"], 
     Arrowheads[{{0.009927435959093161, 1.}}, Appearance -> "Projected"], 
     {RGBColor[0.2452361459949699, 1., 0.], 
      Arrow3DBox[TubeBox[{{-0.1783662621441166, -0.15496707118921677`, 
       0.006666666666666666}, {-0.15496707118921677`, -0.1783662621441166, 
       0.006666666666666666}}, 0.0016545726598488602`]]}}, 
    {CapForm["Butt"], 
     Arrowheads[{{0.013238820218802223`, 1.}}, Appearance -> "Projected"], 
     {RGBColor[0., 1., 0.340080891516239], 
      Arrow3DBox[TubeBox[{{-0.18226876591937438`, -0.151064567413959, 
       0.008888888888888889}, {-0.15106456741395896`, -0.1822687659193744, 
       0.008888888888888889}}, 0.002206470036467037]]}}, 
    {CapForm["Butt"], 
     Arrowheads[{{0.016552151861061255`, 1.}}, Appearance -> "Projected"], 
     {RGBColor[0., 1., 0.9257421464590885], 
      Arrow3DBox[TubeBox[{{-0.1861735647069766, -0.14715976862635677`, 
       0.011111111111111112`}, {-0.1471597686263568, -0.1861735647069766, 
       0.011111111111111112`}}, 0.0027586919768435424`]]}}, 
    {CapForm["Butt"], 
     Arrowheads[{{0.01986795383997147, 1.}}, Appearance -> "Projected"], 
     {RGBColor[0., 0.4881599443118416, 1.], 
      Arrow3DBox[TubeBox[{{-0.19008127481424192`, -0.14325205851909148`, 
       0.013333333333333332`}, {-0.14325205851909145`, -0.19008127481424192`, 
       0.013333333333333332`}}, 0.003311325639995245]]}}, 
    {CapForm["Butt"], 
     Arrowheads[{{0.023186774368067112`, 1.}}, Appearance -> "Projected"], 
     {RGBColor[0.09847152071390575, 0., 1.], 
      Arrow3DBox[TubeBox[{{-0.19399254231583782`, -0.13934079101749555`, 
       0.015555555555555555`}, {-0.13934079101749555`, -0.19399254231583782`, 
       0.015555555555555555`}}, 0.003864462394677852]]}}, 
    {CapForm["Butt"], 
     Arrowheads[{{0.026509193096195708`, 1.}}, Appearance -> "Projected"], 
     {RGBColor[0.6857390000522452, 0., 1.], 
      Arrow3DBox[TubeBox[{{-0.19790805033683934`, -0.13542528299649403`, 
       0.017777777777777778`}, {-0.135425282996494, -0.19790805033683934`, 
       0.017777777777777778`}}, 0.004418198849365952]]}}, 
    {CapForm["Butt"], 
     Arrowheads[{{0.0298358280311218, 1.}}, Appearance -> "Projected"], 
     {RGBColor[1., 0., 0.7262482680265983], 
      Arrow3DBox[TubeBox[{{-0.2018285272052032, -0.13150480612813018`, 
       0.02}, {-0.13150480612813018`, -0.2018285272052032, 0.02}}, 
       0.004972638005186967]]}}, 
    {CapForm["Butt"], 
     Arrowheads[{{0.0032449686532749437`, 1.}}, Appearance -> "Projected"], 
     {RGBColor[1., 0.5735774799867247, 0.], 
      Arrow3DBox[TubeBox[{{-0.1683594143901456, -0.05041900910097761, 
       0.0022222222222222222`}, {-0.16497391894318778`, -0.06069210201013355, 
       0.0022222222222222222`}}, 0.0005408281088791572]]}}, 
    {CapForm["Butt"], 
     Arrowheads[{{0.006489729319099572, 1.}}, Appearance -> "Projected"], 
     {RGBColor[0.8528818036844978, 1., 0.], 
      Arrow3DBox[TubeBox[{{-0.1700518827326275, -0.04528273556210598, 
       0.0044444444444444444`}, {-0.16328145060070584`, -0.06582837554900518, 
       0.0044444444444444444`}}, 0.001081621553183262]]}}, 
    {CapForm["Butt"], 
     Arrowheads[{{0.009734064175966685, 1.}}, Appearance -> "Projected"], 
     {RGBColor[0.2794163529298772, 1., 0.], 
      Arrow3DBox[TubeBox[{{-0.1717437849770313, -0.04014702270482283, 
       0.006666666666666666}, {-0.1615895483563021, -0.07096408840628833, 
       0.006666666666666666}}, 0.0016223440293277808`]]}}, 
    {CapForm["Butt"], 
     Arrowheads[{{0.012977735631088876`, 1.}}, Appearance -> "Projected"], 
     {RGBColor[0., 1., 0.29393183558226044`], 
      Arrow3DBox[TubeBox[{{-0.17343481965659582`, -0.035012188151437945`, 
       0.008888888888888889}, {-0.15989851367673757`, -0.07609892295967322, 
       0.008888888888888889}}, 0.0021629559385148126`]]}}, 
    {CapForm["Butt"], 
     Arrowheads[{{0.016220476134424254`, 1.}}, Appearance -> "Projected"], 
     {RGBColor[0., 1., 0.8671154699686352], 
      Arrow3DBox[TubeBox[{{-0.17512466295468643`, -0.029878594763150714`, 
       0.011111111111111112`}, {-0.15820867037864694`, -0.08123251634796044, 
       0.011111111111111112`}}, 0.002703412689070709]]}}, 
    {CapForm["Butt"], 
     Arrowheads[{{0.01946197747054793, 1.}}, Appearance -> "Projected"], 
     {RGBColor[0., 0.5599199296272932, 1.], 
      Arrow3DBox[TubeBox[{{-0.1768129607136898, -0.024746666811837893`, 
       0.013333333333333332`}, {-0.15652037261964355`, -0.08636444429927327, 
       0.013333333333333332`}}, 0.003243662911757988]]}}, 
    {CapForm["Butt"], 
     Arrowheads[{{0.022701879500947417`, 1.}}, Appearance -> "Projected"], 
     {RGBColor[0.012761979063844464`, 0., 1.], 
      Arrow3DBox[TubeBox[{{-0.1784993200322073, -0.01961690698319757, 
       0.015555555555555555`}, {-0.15483401330112606`, -0.09149420412791359, 
       0.015555555555555555`}}, 0.003783646583491236]]}}, 
    {CapForm["Butt"], 
     Arrowheads[{{0.025939758318860428`, 1.}}, Appearance -> "Projected"], 
     {RGBColor[0.5850862666980614, 0., 1.], 
      Arrow3DBox[TubeBox[{{-0.1801833004221759, -0.014489914269253584`, 
       0.017777777777777778`}, {-0.15315003291115747`, -0.09662119684185758, 
       0.017777777777777778`}}, 0.004323293053143404]]}}, 
    {CapForm["Butt"], 
     Arrowheads[{{0.029175113386887976`, 1.}}, Appearance -> "Projected"], 
     {RGBColor[1., 0., 0.8430355412249062], 
      Arrow3DBox[TubeBox[{{-0.1818644042055461, -0.009366403399883712, 
       0.02}, {-0.15146892912778728`, -0.10174470771122746`, 0.02}}, 
       0.004862518897814663]]}}, 
    {CapForm["Butt"], 
     Arrowheads[{{0.003244968653274925, 1.}}, Appearance -> "Projected"], 
     {RGBColor[1., 0.5735774799867215, 0.], 
      Arrow3DBox[TubeBox[{{-0.16497391894318778`, 0.060692102010133524`, 
       0.0022222222222222222`}, {-0.16835941439014557`, 0.05041900910097764, 
       0.0022222222222222222`}}, 0.0005408281088791542]]}}, 
    {CapForm["Butt"], 
     Arrowheads[{{0.0064897293190995416`, 1.}}, Appearance -> "Projected"], 
     {RGBColor[0.8528818036845038, 1., 0.], 
      Arrow3DBox[TubeBox[{{-0.16328145060070587`, 0.06582837554900514, 
       0.0044444444444444444`}, {-0.17005188273262747`, 0.045282735562106026`,
        0.0044444444444444444`}}, 0.0010816215531832569`]]}}, 
    {CapForm["Butt"], 
     Arrowheads[{{0.009734064175966632, 1.}}, Appearance -> "Projected"], 
     {RGBColor[0.2794163529298861, 1., 0.], 
      Arrow3DBox[TubeBox[{{-0.1615895483563021, 0.07096408840628825, 
       0.006666666666666666}, {-0.17174378497703124`, 0.040147022704822906`, 
       0.006666666666666666}}, 0.0016223440293277722`]]}}, 
    {CapForm["Butt"], 
     Arrowheads[{{0.012977735631088805`, 1.}}, Appearance -> "Projected"], 
     {RGBColor[0., 1., 0.29393183558224756`], 
      Arrow3DBox[TubeBox[{{-0.1598985136767376, 0.0760989229596731, 
       0.008888888888888889}, {-0.17343481965659577`, 0.035012188151438056`, 
       0.008888888888888889}}, 0.002162955938514801]]}}, 
    {CapForm["Butt"], 
     Arrowheads[{{0.016220476134424167`, 1.}}, Appearance -> "Projected"], 
     {RGBColor[0., 1., 0.8671154699686179], 
      Arrow3DBox[TubeBox[{{-0.158208670378647, 0.0812325163479603, 
       0.011111111111111112`}, {-0.17512466295468637`, 0.02987859476315086, 
       0.011111111111111112`}}, 0.0027034126890706947`]]}}, 
    {CapForm["Butt"], 
     Arrowheads[{{0.019461977470547818`, 1.}}, Appearance -> "Projected"], 
     {RGBColor[0., 0.5599199296273127, 1.], 
      Arrow3DBox[TubeBox[{{-0.15652037261964363`, 0.08636444429927309, 
       0.013333333333333332`}, {-0.17681296071368974`, 0.024746666811838066`, 
       0.013333333333333332`}}, 0.0032436629117579695`]]}}, 
    {CapForm["Butt"], 
     Arrowheads[{{0.02270187950094727, 1.}}, Appearance -> "Projected"], 
     {RGBColor[0.012761979063821371`, 0., 1.], 
      Arrow3DBox[TubeBox[{{-0.15483401330112617`, 0.09149420412791337, 
       0.015555555555555555`}, {-0.1784993200322072, 0.01961690698319779, 
       0.015555555555555555`}}, 0.003783646583491212]]}}, 
    {CapForm["Butt"], 
     Arrowheads[{{0.025939758318860275`, 1.}}, Appearance -> "Projected"], 
     {RGBColor[0.5850862666980348, 0., 1.], 
      Arrow3DBox[TubeBox[{{-0.15315003291115756`, 0.09662119684185734, 
       0.017777777777777778`}, {-0.1801833004221758, 0.01448991426925382, 
       0.017777777777777778`}}, 0.004323293053143379]]}}, 
    {CapForm["Butt"], 
     Arrowheads[{{0.029175113386887795`, 1.}}, Appearance -> "Projected"], 
     {RGBColor[1., 0., 0.8430355412249382], 
      Arrow3DBox[TubeBox[{{-0.1514689291277874, 0.10174470771122718`, 
       0.02}, {-0.18186440420554598`, 0.00936640339988399, 0.02}}, 
       0.004862518897814632]]}}, 
    {CapForm["Butt"], 
     Arrowheads[{{0.0033085102850616385`, 1.}}, Appearance -> "Projected"], 
     {RGBColor[1., 0.5848090365682265, 0.], 
      Arrow3DBox[TubeBox[{{-0.16276754990301248`, 0.17056578343032083`, 
       0.0022222222222222222`}, {-0.1705657834303209, 0.16276754990301243`, 
       0.0022222222222222222`}}, 0.0005514183808436065]]}}, 
    {CapForm["Butt"], 
     Arrowheads[{{0.006617495686640063, 1.}}, Appearance -> "Projected"], 
     {RGBColor[0.8302979457335216, 1., 0.], 
      Arrow3DBox[TubeBox[{{-0.15886787320917348`, 0.17446546012415984`, 
       0.0044444444444444444`}, {-0.17446546012415987`, 0.15886787320917345`, 
       0.0044444444444444444`}}, 0.0011029159477733438`]]}}, 
    {CapForm["Butt"], 
     Arrowheads[{{0.009927435959093251, 1.}}, Appearance -> "Projected"], 
     {RGBColor[0.2452361459949559, 1., 0.], 
      Arrow3DBox[TubeBox[{{-0.15496707118921665`, 0.17836626214411666`, 
       0.006666666666666666}, {-0.17836626214411672`, 0.15496707118921663`, 
       0.006666666666666666}}, 0.0016545726598488752`]]}}, 
    {CapForm["Butt"], 
     Arrowheads[{{0.01323882021880233, 1.}}, Appearance -> "Projected"], 
     {RGBColor[0., 1., 0.34008089151625764`], 
      Arrow3DBox[TubeBox[{{-0.15106456741395885`, 0.18226876591937446`, 
       0.008888888888888889}, {-0.18226876591937452`, 0.1510645674139588, 
       0.008888888888888889}}, 0.002206470036467055]]}}, 
    {CapForm["Butt"], 
     Arrowheads[{{0.016552151861061397`, 1.}}, Appearance -> "Projected"], 
     {RGBColor[0., 1., 0.925742146459112], 
      Arrow3DBox[TubeBox[{{-0.14715976862635663`, 0.1861735647069767, 
       0.011111111111111112`}, {-0.18617356470697677`, 0.14715976862635655`, 
       0.011111111111111112`}}, 0.0027586919768435663`]]}}, 
    {CapForm["Butt"], 
     Arrowheads[{{0.01986795383997162, 1.}}, Appearance -> "Projected"], 
     {RGBColor[0., 0.4881599443118132, 1.], 
      Arrow3DBox[TubeBox[{{-0.14325205851909129`, 0.19008127481424203`, 
       0.013333333333333332`}, {-0.19008127481424208`, 0.14325205851909123`, 
       0.013333333333333332`}}, 0.0033113256399952703`]]}}, 
    {CapForm["Butt"], 
     Arrowheads[{{0.0231867743680673, 1.}}, Appearance -> "Projected"], 
     {RGBColor[0.09847152071394039, 0., 1.], 
      Arrow3DBox[TubeBox[{{-0.13934079101749533`, 0.19399254231583798`, 
       0.015555555555555555`}, {-0.19399254231583804`, 0.13934079101749527`, 
       0.015555555555555555`}}, 0.003864462394677883]]}}, 
    {CapForm["Butt"], 
     Arrowheads[{{0.026509193096195937`, 1.}}, Appearance -> "Projected"], 
     {RGBColor[0.6857390000522852, 0., 1.], 
      Arrow3DBox[TubeBox[{{-0.13542528299649376`, 0.19790805033683956`, 
       0.017777777777777778`}, {-0.1979080503368396, 0.1354252829964937, 
       0.017777777777777778`}}, 0.00441819884936599]]}}, 
    {CapForm["Butt"], 
     Arrowheads[{{0.029835828031122058`, 1.}}, Appearance -> "Projected"], 
     {RGBColor[1., 0., 0.7262482680265521], 
      Arrow3DBox[TubeBox[{{-0.13150480612812987`, 0.20182852720520345`, 
       0.02}, {-0.2018285272052035, 0.13150480612812981`, 0.02}}, 
       0.004972638005187009]]}}, 
    {CapForm["Butt"], 
     Arrowheads[{{0.0034312113778468887`, 1.}}, Appearance -> "Projected"], 
     {RGBColor[1., 0.6064975615160271, 0.], 
      Arrow3DBox[TubeBox[{{-0.16176199468330832`, 0.2807184508414673, 
       0.0022222222222222222`}, {-0.17157133865002502`, 0.2748371047140881, 
       0.0022222222222222222`}}, 0.0005718685629744815]]}}, 
    {CapForm["Butt"], 
     Arrowheads[{{0.0068646968736978745`, 1.}}, Appearance -> "Projected"], 
     {RGBColor[0.786602906097547, 1., 0.], 
      Arrow3DBox[TubeBox[{{-0.15685405251398205`, 0.28366104038933304`, 
       0.0044444444444444444`}, {-0.17647928081935135`, 0.27189451516622226`, 
       0.0044444444444444444`}}, 0.0011441161456163123`]]}}, 
    {CapForm["Butt"], 
     Arrowheads[{{0.010302762365456979`, 1.}}, Appearance -> "Projected"], 
     {RGBColor[0.17889381812152094`, 1., 0.], 
      Arrow3DBox[TubeBox[{{-0.1519395241545844, 0.28660748942423514`, 
       0.006666666666666666}, {-0.18139380917874898`, 0.26894806613132016`, 
       0.006666666666666666}}, 0.0017171270609094966`]]}}, 
    {CapForm["Butt"], 
     Arrowheads[{{0.01374777755117642, 1.}}, Appearance -> "Projected"], 
     {RGBColor[0., 1., 0.4300436909501686], 
      Arrow3DBox[TubeBox[{{-0.1470150015299255, 0.2895597942345849, 
       0.008888888888888889}, {-0.18631833180340787`, 0.2659957613209705, 
       0.008888888888888889}}, 0.002291296258529403]]}}, 
    {CapForm["Butt"], 
     Arrowheads[{{0.017202208745237382`, 1.}}, Appearance -> "Projected"], 
     {RGBColor[0., 0.9593544355687644, 1.], 
      Arrow3DBox[TubeBox[{{-0.14207693717604428`, 0.2925200317704877, 
       0.011111111111111112`}, {-0.1912563961572891, 0.26303552378506767`, 
       0.011111111111111112`}}, 0.002867034790872897]]}}, 
    {CapForm["Butt"], 
     Arrowheads[{{0.020668653251925, 1.}}, Appearance -> "Projected"], 
     {RGBColor[0., 0.3466291007175131, 1.], 
      Arrow3DBox[TubeBox[{{-0.13712159464217621`, 0.29549038832888497`, 
       0.013333333333333332`}, {-0.19621173869115718`, 0.2600651672266704, 
       0.013333333333333332`}}, 0.0034447755419875]]}}, 
    {CapForm["Butt"], 
     Arrowheads[{{0.02414987535650293, 1.}}, Appearance -> "Projected"], 
     {RGBColor[0.2687083078589012, 0., 1.], 
      Arrow3DBox[TubeBox[{{-0.1321449965527334, 0.29847318957811153`, 
       0.015555555555555555`}, {-0.20118833678059997`, 0.2570823659774438, 
       0.015555555555555555`}}, 0.0040249792260838215`]]}}, 
    {CapForm["Butt"], 
     Arrowheads[{{0.0276488440018485, 1.}}, Appearance -> "Projected"], 
     {RGBColor[0.8871825775947269, 0., 1.], 
      Arrow3DBox[TubeBox[{{-0.12714287022936505`, 0.3014709319756761, 
       0.017777777777777778`}, {-0.20619046310396832`, 0.25408462357987927`, 
       0.017777777777777778`}}, 0.00460814066697475]]}}, 
    {CapForm["Butt"], 
     Arrowheads[{{0.03116877346308938, 1.}}, Appearance -> "Projected"], 
     {RGBColor[1., 0., 0.49063813938755363`], 
      Arrow3DBox[TubeBox[{{-0.12211058897744226`, 0.30448631667121606`, 
       0.02}, {-0.2112227443558911, 0.2510692388843393, 0.02}}, 
       0.005194795577181563]]}}, 
    {CapForm["Butt"], 
     Arrowheads[{{0.0037155607759840146`, 1.}}, Appearance -> "Projected"], 
     {RGBColor[1., 0.6567588825474734, 0.], 
      Arrow3DBox[TubeBox[{{-0.16097204348856287`, 0.39132190710445286`, 
       0.0022222222222222222`}, {-0.1723612898447705, 0.38645587067332476`, 
       0.0022222222222222222`}}, 0.0006192601293306691]]}}, 
    {CapForm["Butt"], 
     Arrowheads[{{0.0074353303666070064`, 1.}}, Appearance -> "Projected"], 
     {RGBColor[0.6857382889529355, 1., 0.], 
      Arrow3DBox[TubeBox[{{-0.1552709477546525, 0.3937576299515817, 
       0.0044444444444444444`}, {-0.1780623855786809, 0.384020147826196, 
       0.0044444444444444444`}}, 0.0012392217277678345`]]}}, 
    {CapForm["Butt"], 
     Arrowheads[{{0.011163516596988384`, 1.}}, Appearance -> "Projected"], 
     {RGBColor[0.026747743455614703`, 1., 0.], 
      Arrow3DBox[TubeBox[{{-0.14955690821486717`, 0.3961987609182487, 
       0.006666666666666666}, {-0.1837764251184662, 0.38157901685952905`, 
       0.006666666666666666}}, 0.001860586099498064]]}}, 
    {CapForm["Butt"], 
     Arrowheads[{{0.014904325155785682`, 1.}}, Appearance -> "Projected"], 
     {RGBColor[0., 1., 0.6344739124461327], 
      Arrow3DBox[TubeBox[{{-0.14382345647071798`, 0.39864800109935367`, 
       0.008888888888888889}, {-0.1895098768626154, 0.379129776678424, 
       0.008888888888888889}}, 0.002484054192630947]]}}, 
    {CapForm["Butt"], 
     Arrowheads[{{0.01866195813005197, 1.}}, Appearance -> "Projected"], 
     {RGBColor[0., 0.7013305644570629, 1.], 
      Arrow3DBox[TubeBox[{{-0.13806412900558, 0.40110804773114406`, 
       0.011111111111111112`}, {-0.1952692043277534, 0.3766697300466337, 
       0.011111111111111112`}}, 0.0031103263550086614`]]}}, 
    {CapForm["Butt"], 
     Arrowheads[{{0.022440612035978563`, 1.}}, Appearance -> "Projected"], 
     {RGBColor[0., 0.03341940207464855, 1.], 
      Arrow3DBox[TubeBox[{{-0.13227246997965197`, 0.403581592376702, 
       0.013333333333333332`}, {-0.2010608633536814, 0.37419618540107574`, 
       0.013333333333333332`}}, 0.0037401020059964272`]]}}, 
    {CapForm["Butt"], 
     Arrowheads[{{0.02624447517847493, 1.}}, Appearance -> "Projected"], 
     {RGBColor[0.6389477202658043, 0., 1.], 
      Arrow3DBox[TubeBox[{{-0.12644203504628448`, 0.4060713186545943, 
       0.015555555555555555`}, {-0.20689129828704889`, 0.3717064591231834, 
       0.015555555555555555`}}, 0.004374079196412488]]}}, 
    {CapForm["Butt"], 
     Arrowheads[{{0.030077724180255457`, 1.}}, Appearance -> "Projected"], 
     {RGBColor[1., 0., 0.6834909416966362], 
      Arrow3DBox[TubeBox[{{-0.12056639643431138`, 0.40857989940729106`, 
       0.017777777777777778`}, {-0.21276693689902199`, 0.3691978783704866, 
       0.017777777777777778`}}, 0.005012954030042576]]}}, 
    {CapForm["Butt"], 
     Arrowheads[{{0.03394451943981527, 1.}}, Appearance -> "Projected"], 
     {RGBColor[1., 0., 7.105427357601002*^-15], 
      Arrow3DBox[TubeBox[{{-0.1146391496575524, 0.41110999313386987`, 
       0.02}, {-0.21869418367578097`, 0.3666677846439078, 0.02}}, 
       0.005657419906635878]]}}, 
    {CapForm["Butt"], 
     Arrowheads[{{0.003197378434638899, 1.}}, Appearance -> "Projected"], 
     {RGBColor[1., 0.5651654795657867, 0.], 
      Arrow3DBox[TubeBox[{{-0.060830936972056715`, -0.3881350926040555, 
       0.0022222222222222222`}, {-0.05028017413905444, -0.38964268517372225`, 
       0.0022222222222222222`}}, 0.0005328964057731498]]}}, 
    {CapForm["Butt"], 
     Arrowheads[{{0.006391511980112685, 1.}}, Appearance -> "Projected"], 
     {RGBColor[0.870242604298163, 1., 0.], 
      Arrow3DBox[TubeBox[{{-0.06610096065032983, -0.38738203354369394`, 
       0.0044444444444444444`}, {-0.04501015046078133, -0.3903957442340838, 
       0.0044444444444444444`}}, 0.0010652519966854476`]]}}, 
    {CapForm["Butt"], 
     Arrowheads[{{0.009579098113536178, 1.}}, Appearance -> "Projected"], 
     {RGBColor[0.30680800230148275`, 1., 0.], 
      Arrow3DBox[TubeBox[{{-0.07136017369298088, -0.3866304620398949, 
       0.006666666666666666}, {-0.03975093741813028, -0.391147315737883, 
       0.006666666666666666}}, 0.0015965163522560298`]]}}, 
    {CapForm["Butt"], 
     Arrowheads[{{0.01275671860228536, 1.}}, Appearance -> "Projected"], 
     {RGBColor[0., 1., 0.254865082106126], 
      Arrow3DBox[TubeBox[{{-0.07660293215379314, -0.38588115473923423`, 
       0.008888888888888889}, {-0.03450817895731802, -0.39189662303854356`, 
       0.008888888888888889}}, 0.00212611976704756]]}}, 
    {CapForm["Butt"], 
     Arrowheads[{{0.015920780297167557`, 1.}}, Appearance -> "Projected"], 
     {RGBColor[0., 1., 0.8141415273936512], 
      Arrow3DBox[TubeBox[{{-0.08182330328056536, -0.38513492806413385`, 
       0.011111111111111112`}, {-0.029287807830545798`, -0.3926428497136439, 
       0.011111111111111112`}}, 0.0026534633828612596`]]}}, 
    {CapForm["Butt"], 
     Arrowheads[{{0.019067453377964103`, 1.}}, Appearance -> "Projected"], 
     {RGBColor[0., 0.6296556217086025, 1.], 
      Arrow3DBox[TubeBox[{{-0.08701496355090778, -0.38439265224947344`, 
       0.013333333333333332`}, {-0.024096147560203382`, -0.3933851255283044, 
       0.013333333333333332`}}, 0.0031779088963273506`]]}}, 
    {CapForm["Butt"], 
     Arrowheads[{{0.022192607092311408`, 1.}}, Appearance -> "Projected"], 
     {RGBColor[0., 0.07725651294143221, 1.], 
      Arrow3DBox[TubeBox[{{-0.09217109256838547, -0.3836552659435954, 
       0.015555555555555555`}, {-0.018940018542725687`, -0.39412251183418245`,
        0.015555555555555555`}}, 0.003698767848718568]]}}, 
    {CapForm["Butt"], 
     Arrowheads[{{0.02529174297133399, 1.}}, Appearance -> "Projected"], 
     {RGBColor[0.47054370874397566`, 0., 1.], 
      Arrow3DBox[TubeBox[{{-0.0972842627913753, -0.38292379137598764`, 
       0.017777777777777778`}, {-0.013826848319735865`, -0.3948539864017901, 
       0.017777777777777778`}}, 0.004215290495222332]]}}, 
    {CapForm["Butt"], 
     Arrowheads[{{0.02835992327553546, 1.}}, Appearance -> "Projected"], 
     {RGBColor[1., 0., 0.9871277466481487], 
      Arrow3DBox[TubeBox[{{-0.10234632138513719`, -0.3821993506006546, 
       0.02}, {-0.008764789725973977, -0.39557842717712316`, 0.02}}, 
       0.00472665387925591]]}}, 
    {CapForm["Butt"], 
     Arrowheads[{{0.003279033723722015, 1.}}, Appearance -> "Projected"], 
     {RGBColor[1., 0.5795987884646606, 0.], 
      Arrow3DBox[TubeBox[{{-0.06091596687206641, -0.27671343297707435`, 
       0.0022222222222222222`}, {-0.05019514423904475, -0.2788421225784813, 
       0.0022222222222222222`}}, 0.0005465056206203358]]}}, 
    {CapForm["Butt"], 
     Arrowheads[{{0.0065576823000132, 1.}}, Appearance -> "Projected"], 
     {RGBColor[0.8408705013532145, 1., 0.], 
      Arrow3DBox[TubeBox[{{-0.06627576549938533, -0.27564929846825537`, 
       0.0044444444444444444`}, {-0.04483534561172584, -0.2799062570873002, 
       0.0044444444444444444`}}, 0.0010929470500022]]}}, 
    {CapForm["Butt"], 
     Arrowheads[{{0.009835548475956536, 1.}}, Appearance -> "Projected"], 
     {RGBColor[0.26147808749004, 1., 0.], 
      Arrow3DBox[TubeBox[{{-0.07163431915713768, -0.27458558948320233`, 
       0.006666666666666666}, {-0.03947679195397348, -0.28096996607235325`, 
       0.006666666666666666}}, 0.0016392580793260893`]]}}, 
    {CapForm["Butt"], 
     Arrowheads[{{0.013112210616380814`, 1.}}, Appearance -> "Projected"], 
     {RGBColor[0., 1., 0.3177015022344034], 
      Arrow3DBox[TubeBox[{{-0.07699095610397355, -0.2735225311970105, 
       0.008888888888888889}, {-0.034120155007137616`, -0.2820330243585451, 
       0.008888888888888889}}, 0.002185368436063469]]}}, 
    {CapForm["Butt"], 
     Arrowheads[{{0.016387210032805896`, 1.}}, Appearance -> "Projected"], 
     {RGBColor[0., 1., 0.896587190493757], 
      Arrow3DBox[TubeBox[{{-0.08234494462685213, -0.27246036387874517`, 
       0.011111111111111112`}, {-0.02876616648425904, -0.28309519167681046`, 
       0.011111111111111112`}}, 0.002731201672134316]]}}, 
    {CapForm["Butt"], 
     Arrowheads[{{0.019660037534553396`, 1.}}, Appearance -> "Projected"], 
     {RGBColor[0., 0.524911026757426, 1.], 
      Arrow3DBox[TubeBox[{{-0.08769547126716047, -0.2713993483389094, 
       0.013333333333333332`}, {-0.02341563984395069, -0.28415620721664625`, 
       0.013333333333333332`}}, 0.003276672922425566]]}}, 
    {CapForm["Butt"], 
     Arrowheads[{{0.022930119119995217`, 1.}}, Appearance -> "Projected"], 
     {RGBColor[0.05310539051543195, 0., 1.], 
      Arrow3DBox[TubeBox[{{-0.09304161764924039, -0.2703397716993473, 
       0.015555555555555555`}, {-0.01806949346187077, -0.2852157838562083, 
       0.015555555555555555`}}, 0.003821686519999203]]}}, 
    {CapForm["Butt"], 
     Arrowheads[{{0.02619680071650076, 1.}}, Appearance -> "Projected"], 
     {RGBColor[0.6305208290749551, 0., 1.], 
      Arrow3DBox[TubeBox[{{-0.09838233576168862, -0.2692819535153565, 
       0.017777777777777778`}, {-0.012728775349422551`, -0.2862736020401991, 
       0.017777777777777778`}}, 0.004366133452750127]]}}, 
    {CapForm["Butt"], 
     Arrowheads[{{0.029459331384116213`, 1.}}, Appearance -> "Projected"], 
     {RGBColor[1., 0., 0.7927974464893772], 
      Arrow3DBox[TubeBox[{{-0.10371642074271115`, -0.2682262524789868, 
       0.02}, {-0.007394690368400014, -0.28732930307656884`, 0.02}}, 
       0.004909888564019369]]}}, 
    {CapForm["Butt"], 
     Arrowheads[{{0.0032449686532749437`, 1.}}, Appearance -> "Projected"], 
     {RGBColor[1., 0.5735774799867247, 0.], 
      Arrow3DBox[TubeBox[{{-0.06069210201013355, -0.16497391894318778`, 
       0.0022222222222222222`}, {-0.05041900910097761, -0.1683594143901456, 
       0.0022222222222222222`}}, 0.0005408281088791572]]}}, 
    {CapForm["Butt"], 
     Arrowheads[{{0.006489729319099572, 1.}}, Appearance -> "Projected"], 
     {RGBColor[0.8528818036844978, 1., 0.], 
      Arrow3DBox[TubeBox[{{-0.06582837554900518, -0.16328145060070587`, 
       0.0044444444444444444`}, {-0.04528273556210598, -0.17005188273262753`, 
       0.0044444444444444444`}}, 0.001081621553183262]]}}, 
    {CapForm["Butt"], 
     Arrowheads[{{0.009734064175966685, 1.}}, Appearance -> "Projected"], 
     {RGBColor[0.2794163529298772, 1., 0.], 
      Arrow3DBox[TubeBox[{{-0.07096408840628833, -0.16158954835630207`, 
       0.006666666666666666}, {-0.04014702270482283, -0.17174378497703127`, 
       0.006666666666666666}}, 0.0016223440293277808`]]}}, 
    {CapForm["Butt"], 
     Arrowheads[{{0.012977735631088876`, 1.}}, Appearance -> "Projected"], 
     {RGBColor[0., 1., 0.29393183558226], 
      Arrow3DBox[TubeBox[{{-0.07609892295967322, -0.15989851367673755`, 
       0.008888888888888889}, {-0.035012188151437945`, -0.1734348196565958, 
       0.008888888888888889}}, 0.0021629559385148126`]]}}, 
    {CapForm["Butt"], 
     Arrowheads[{{0.016220476134424254`, 1.}}, Appearance -> "Projected"], 
     {RGBColor[0., 1., 0.8671154699686352], 
      Arrow3DBox[TubeBox[{{-0.08123251634796044, -0.15820867037864694`, 
       0.011111111111111112`}, {-0.029878594763150714`, -0.17512466295468643`,
        0.011111111111111112`}}, 0.002703412689070709]]}}, 
    {CapForm["Butt"], 
     Arrowheads[{{0.01946197747054793, 1.}}, Appearance -> "Projected"], 
     {RGBColor[0., 0.5599199296272932, 1.], 
      Arrow3DBox[TubeBox[{{-0.08636444429927327, -0.15652037261964358`, 
       0.013333333333333332`}, {-0.024746666811837893`, -0.17681296071368982`,
        0.013333333333333332`}}, 0.003243662911757988]]}}, 
    {CapForm["Butt"], 
     Arrowheads[{{0.022701879500947417`, 1.}}, Appearance -> "Projected"], 
     {RGBColor[0.012761979063844464`, 0., 1.], 
      Arrow3DBox[TubeBox[{{-0.09149420412791359, -0.1548340133011261, 
       0.015555555555555555`}, {-0.01961690698319757, -0.1784993200322073, 
       0.015555555555555555`}}, 0.003783646583491236]]}}, 
    {CapForm["Butt"], 
     Arrowheads[{{0.025939758318860428`, 1.}}, Appearance -> "Projected"], 
     {RGBColor[0.5850862666980614, 0., 1.], 
      Arrow3DBox[TubeBox[{{-0.09662119684185758, -0.15315003291115747`, 
       0.017777777777777778`}, {-0.014489914269253584`, -0.1801833004221759, 
       0.017777777777777778`}}, 0.004323293053143404]]}}, 
    {CapForm["Butt"], 
     Arrowheads[{{0.029175113386887976`, 1.}}, Appearance -> "Projected"], 
     {RGBColor[1., 0., 0.8430355412249062], 
      Arrow3DBox[TubeBox[{{-0.10174470771122746`, -0.15146892912778728`, 
       0.02}, {-0.009366403399883712, -0.1818644042055461, 0.02}}, 
       0.004862518897814663]]}}, 
    {CapForm["Butt"], 
     Arrowheads[{{0.00356511571588485, 1.}}, Appearance -> "Projected"], 
     {RGBColor[1., 0.6301663611186327, 0.], 
      Arrow3DBox[TubeBox[{{-0.05975708471958376, -0.0513540263915274, 
       0.0022222222222222222`}, {-0.05135402639152739, -0.05975708471958376, 
       0.0022222222222222222`}}, 0.000594185952647475]]}}, 
    {CapForm["Butt"], 
     Arrowheads[{{0.0071376126429318265`, 1.}}, Appearance -> "Projected"], 
     {RGBColor[0.7383625821092505, 1., 0.], 
      Arrow3DBox[TubeBox[{{-0.0639673127243888, -0.04714379838672236, 
       0.0044444444444444444`}, {-0.04714379838672236, -0.0639673127243888, 
       0.0044444444444444444`}}, 0.0011896021071553045`]]}}, 
    {CapForm["Butt"], 
     Arrowheads[{{0.010724912490369031`, 1.}}, Appearance -> "Projected"], 
     {RGBColor[0.1042749756316983, 1., 0.], 
      Arrow3DBox[TubeBox[{{-0.06819498613817598, -0.04291612497293517, 
       0.006666666666666666}, {-0.04291612497293517, -0.068194986138176, 
       0.006666666666666666}}, 0.0017874854150615052`]]}}, 
    {CapForm["Butt"], 
     Arrowheads[{{0.014334518154342241`, 1.}}, Appearance -> "Projected"], 
     {RGBColor[0., 1., 0.5337553851232659], 
      Arrow3DBox[TubeBox[{{-0.0724489472088507, -0.03866216390226046, 
       0.008888888888888889}, {-0.03866216390226046, -0.0724489472088507, 
       0.008888888888888889}}, 0.00238908635905704]]}}, 
    {CapForm["Butt"], 
     Arrowheads[{{0.01797405496232682, 1.}}, Appearance -> "Projected"], 
     {RGBColor[0., 0.822923654430511, 1.], 
      Arrow3DBox[TubeBox[{{-0.07673818247102393, -0.03437292864008723, 
       0.011111111111111112`}, {-0.03437292864008723, -0.07673818247102393, 
       0.011111111111111112`}}, 0.0029956758270544698`]]}}, 
    {CapForm["Butt"], 
     Arrowheads[{{0.021651313340095703`, 1.}}, Appearance -> "Projected"], 
     {RGBColor[0., 0.17293506626585486`, 1.], 
      Arrow3DBox[TubeBox[{{-0.0810718730295163, -0.030039238081594862`, 
       0.013333333333333332`}, {-0.030039238081594862`, -0.0810718730295163, 
       0.013333333333333332`}}, 0.003608552223349284]]}}, 
    {CapForm["Butt"], 
     Arrowheads[{{0.025374292739839023`, 1.}}, Appearance -> "Projected"], 
     {RGBColor[0.48513512494912714`, 0., 1.], 
      Arrow3DBox[TubeBox[{{-0.08545944632914351, -0.02565166478196766, 
       0.015555555555555555`}, {-0.025651664781967648`, -0.0854594463291435, 
       0.015555555555555555`}}, 0.00422904878997317]]}}, 
    {CapForm["Butt"], 
     Arrowheads[{{0.029151246716586903`, 1.}}, Appearance -> "Projected"], 
     {RGBColor[1., 0., 0.8472541904846276], 
      Arrow3DBox[TubeBox[{{-0.08991062927779005, -0.021200481833321114`, 
       0.017777777777777778`}, {-0.021200481833321114`, -0.08991062927779005, 
       0.017777777777777778`}}, 0.004858541119431151]]}}, 
    {CapForm["Butt"], 
     Arrowheads[{{0.03299073057415206, 1.}}, Appearance -> "Projected"], 
     {RGBColor[1., 0., 0.16859078544700168`], 
      Arrow3DBox[TubeBox[{{-0.09443550439769106, -0.016675606713420103`, 
       0.02}, {-0.016675606713420096`, -0.09443550439769105, 0.02}}, 
       0.00549845509569201]]}}, 
    {CapForm["Butt"], 
     Arrowheads[{{0.0035651157158848546`, 1.}}, Appearance -> "Projected"], 
     {RGBColor[1., 0.630166361118633, 0.], 
      Arrow3DBox[TubeBox[{{-0.05135402639152739, 0.05975708471958377, 
       0.0022222222222222222`}, {-0.05975708471958377, 0.05135402639152739, 
       0.0022222222222222222`}}, 0.0005941859526474758]]}}, 
    {CapForm["Butt"], 
     Arrowheads[{{0.0071376126429318265`, 1.}}, Appearance -> "Projected"], 
     {RGBColor[0.7383625821092501, 1., 0.], 
      Arrow3DBox[TubeBox[{{-0.04714379838672236, 0.0639673127243888, 
       0.0044444444444444444`}, {-0.0639673127243888, 0.04714379838672236, 
       0.0044444444444444444`}}, 0.0011896021071553045`]]}}, 
    {CapForm["Butt"], 
     Arrowheads[{{0.010724912490369031`, 1.}}, Appearance -> "Projected"], 
     {RGBColor[0.10427497563169785`, 1., 0.], 
      Arrow3DBox[TubeBox[{{-0.04291612497293517, 0.06819498613817598, 
       0.006666666666666666}, {-0.068194986138176, 0.04291612497293517, 
       0.006666666666666666}}, 0.0017874854150615052`]]}}, 
    {CapForm["Butt"], 
     Arrowheads[{{0.014334518154342241`, 1.}}, Appearance -> "Projected"], 
     {RGBColor[0., 1., 0.5337553851232668], 
      Arrow3DBox[TubeBox[{{-0.03866216390226046, 0.0724489472088507, 
       0.008888888888888889}, {-0.0724489472088507, 0.03866216390226046, 
       0.008888888888888889}}, 0.00238908635905704]]}}, 
    {CapForm["Butt"], 
     Arrowheads[{{0.017974054962326826`, 1.}}, Appearance -> "Projected"], 
     {RGBColor[0., 0.8229236544305092, 1.], 
      Arrow3DBox[TubeBox[{{-0.034372928640087216`, 0.07673818247102393, 
       0.011111111111111112`}, {-0.07673818247102394, 0.03437292864008722, 
       0.011111111111111112`}}, 0.002995675827054471]]}}, 
    {CapForm["Butt"], 
     Arrowheads[{{0.021651313340095703`, 1.}}, Appearance -> "Projected"], 
     {RGBColor[0., 0.17293506626585353`, 1.], 
      Arrow3DBox[TubeBox[{{-0.03003923808159486, 0.0810718730295163, 
       0.013333333333333332`}, {-0.0810718730295163, 0.030039238081594862`, 
       0.013333333333333332`}}, 0.003608552223349284]]}}, 
    {CapForm["Butt"], 
     Arrowheads[{{0.025374292739839037`, 1.}}, Appearance -> "Projected"], 
     {RGBColor[0.4851351249491289, 0., 1.], 
      Arrow3DBox[TubeBox[{{-0.025651664781967648`, 0.08545944632914353, 
       0.015555555555555555`}, {-0.08545944632914351, 0.025651664781967638`, 
       0.015555555555555555`}}, 0.004229048789973173]]}}, 
    {CapForm["Butt"], 
     Arrowheads[{{0.02915124671658692, 1.}}, Appearance -> "Projected"], 
     {RGBColor[1., 0., 0.8472541904846258], 
      Arrow3DBox[TubeBox[{{-0.021200481833321093`, 0.08991062927779006, 
       0.017777777777777778`}, {-0.08991062927779006, 0.021200481833321093`, 
       0.017777777777777778`}}, 0.004858541119431153]]}}, 
    {CapForm["Butt"], 
     Arrowheads[{{0.032990730574152076`, 1.}}, Appearance -> "Projected"], 
     {RGBColor[1., 0., 0.1685907854469999], 
      Arrow3DBox[TubeBox[{{-0.016675606713420082`, 0.09443550439769108, 
       0.02}, {-0.09443550439769108, 0.016675606713420076`, 0.02}}, 
       0.005498455095692013]]}}, 
    {CapForm["Butt"], 
     Arrowheads[{{0.0032449686532749697`, 1.}}, Appearance -> "Projected"], 
     {RGBColor[1., 0.5735774799867293, 0.], 
      Arrow3DBox[TubeBox[{{-0.05041900910097757, 0.16835941439014554`, 
       0.0022222222222222222`}, {-0.06069210201013359, 0.1649739189431877, 
       0.0022222222222222222`}}, 0.0005408281088791616]]}}, 
    {CapForm["Butt"], 
     Arrowheads[{{0.006489729319099624, 1.}}, Appearance -> "Projected"], 
     {RGBColor[0.8528818036844885, 1., 0.], 
      Arrow3DBox[TubeBox[{{-0.04528273556210589, 0.17005188273262747`, 
       0.0044444444444444444`}, {-0.06582837554900527, 0.16328145060070579`, 
       0.0044444444444444444`}}, 0.0010816215531832707`]]}}, 
    {CapForm["Butt"], 
     Arrowheads[{{0.009734064175966759, 1.}}, Appearance -> "Projected"], 
     {RGBColor[0.27941635292986344`, 1., 0.], 
      Arrow3DBox[TubeBox[{{-0.040147022704822705`, 0.17174378497703127`, 
       0.006666666666666666}, {-0.07096408840628846, 0.16158954835630202`, 
       0.006666666666666666}}, 0.0016223440293277932`]]}}, 
    {CapForm["Butt"], 
     Arrowheads[{{0.01297773563108898, 1.}}, Appearance -> "Projected"], 
     {RGBColor[0., 1., 0.29393183558227864`], 
      Arrow3DBox[TubeBox[{{-0.03501218815143777, 0.1734348196565958, 
       0.008888888888888889}, {-0.07609892295967338, 0.15989851367673746`, 
       0.008888888888888889}}, 0.00216295593851483]]}}, 
    {CapForm["Butt"], 
     Arrowheads[{{0.01622047613442439, 1.}}, Appearance -> "Projected"], 
     {RGBColor[0., 1., 0.8671154699686574], 
      Arrow3DBox[TubeBox[{{-0.0298785947631505, 0.17512466295468643`, 
       0.011111111111111112`}, {-0.08123251634796066, 0.15820867037864686`, 
       0.011111111111111112`}}, 0.0027034126890707316`]]}}, 
    {CapForm["Butt"], 
     Arrowheads[{{0.01946197747054809, 1.}}, Appearance -> "Projected"], 
     {RGBColor[0., 0.5599199296272648, 1.], 
      Arrow3DBox[TubeBox[{{-0.024746666811837632`, 0.1768129607136898, 
       0.013333333333333332`}, {-0.08636444429927354, 0.15652037261964344`, 
       0.013333333333333332`}}, 0.0032436629117580146`]]}}, 
    {CapForm["Butt"], 
     Arrowheads[{{0.0227018795009476, 1.}}, Appearance -> "Projected"], 
     {RGBColor[0.012761979063878215`, 0., 1.], 
      Arrow3DBox[TubeBox[{{-0.019616906983197256`, 0.1784993200322073, 
       0.015555555555555555`}, {-0.0914942041279139, 0.15483401330112598`, 
       0.015555555555555555`}}, 0.003783646583491267]]}}, 
    {CapForm["Butt"], 
     Arrowheads[{{0.025939758318860667`, 1.}}, Appearance -> "Projected"], 
     {RGBColor[0.5850862666981032, 0., 1.], 
      Arrow3DBox[TubeBox[{{-0.014489914269253203`, 0.18018330042217592`, 
       0.017777777777777778`}, {-0.09662119684185796, 0.1531500329111573, 
       0.017777777777777778`}}, 0.004323293053143444]]}}, 
    {CapForm["Butt"], 
     Arrowheads[{{0.029175113386888225`, 1.}}, Appearance -> "Projected"], 
     {RGBColor[1., 0., 0.84303554122486], 
      Arrow3DBox[TubeBox[{{-0.009366403399883282, 0.18186440420554612`, 
       0.02}, {-0.10174470771122787`, 0.15146892912778714`, 0.02}}, 
       0.004862518897814704]]}}, 
    {CapForm["Butt"], 
     Arrowheads[{{0.0032790337237220604`, 1.}}, Appearance -> "Projected"], 
     {RGBColor[1., 0.5795987884646691, 0.], 
      Arrow3DBox[TubeBox[{{-0.05019514423904468, 0.2788421225784811, 
       0.0022222222222222222`}, {-0.060915966872066483`, 0.2767134329770742, 
       0.0022222222222222222`}}, 0.0005465056206203434]]}}, 
    {CapForm["Butt"], 
     Arrowheads[{{0.006557682300013294, 1.}}, Appearance -> "Projected"], 
     {RGBColor[0.840870501353197, 1., 0.], 
      Arrow3DBox[TubeBox[{{-0.04483534561172568, 0.27990625708730016`, 
       0.0044444444444444444`}, {-0.06627576549938548, 0.27564929846825525`, 
       0.0044444444444444444`}}, 0.0010929470500022156`]]}}, 
    {CapForm["Butt"], 
     Arrowheads[{{0.00983554847595669, 1.}}, Appearance -> "Projected"], 
     {RGBColor[0.2614780874900142, 1., 0.], 
      Arrow3DBox[TubeBox[{{-0.03947679195397323, 0.2809699660723532, 
       0.006666666666666666}, {-0.07163431915713793, 0.27458558948320216`, 
       0.006666666666666666}}, 0.0016392580793261151`]]}}, 
    {CapForm["Butt"], 
     Arrowheads[{{0.01311221061638101, 1.}}, Appearance -> "Projected"], 
     {RGBColor[0., 1., 0.3177015022344385], 
      Arrow3DBox[TubeBox[{{-0.03412015500713729, 0.28203302435854505`, 
       0.008888888888888889}, {-0.07699095610397387, 0.2735225311970103, 
       0.008888888888888889}}, 0.0021853684360635017`]]}}, 
    {CapForm["Butt"], 
     Arrowheads[{{0.01638721003280615, 1.}}, Appearance -> "Projected"], 
     {RGBColor[0., 1., 0.8965871904938023], 
      Arrow3DBox[TubeBox[{{-0.028766166484258615`, 0.2830951916768104, 
       0.011111111111111112`}, {-0.08234494462685255, 0.272460363878745, 
       0.011111111111111112`}}, 0.002731201672134358]]}}, 
    {CapForm["Butt"], 
     Arrowheads[{{0.0196600375345537, 1.}}, Appearance -> "Projected"], 
     {RGBColor[0., 0.5249110267573727, 1.], 
      Arrow3DBox[TubeBox[{{-0.02341563984395019, 0.2841562072166462, 
       0.013333333333333332`}, {-0.08769547126716097, 0.27139934833890916`, 
       0.013333333333333332`}}, 0.003276672922425617]]}}, 
    {CapForm["Butt"], 
     Arrowheads[{{0.022930119119995585`, 1.}}, Appearance -> "Projected"], 
     {RGBColor[0.05310539051549501, 0., 1.], 
      Arrow3DBox[TubeBox[{{-0.01806949346187018, 0.28521578385620827`, 
       0.015555555555555555`}, {-0.09304161764924099, 0.2703397716993471, 
       0.015555555555555555`}}, 0.003821686519999264]]}}, 
    {CapForm["Butt"], 
     Arrowheads[{{0.026196800716501184`, 1.}}, Appearance -> "Projected"], 
     {RGBColor[0.6305208290750306, 0., 1.], 
      Arrow3DBox[TubeBox[{{-0.01272877534942185, 0.2862736020401991, 
       0.017777777777777778`}, {-0.09838233576168931, 0.2692819535153563, 
       0.017777777777777778`}}, 0.004366133452750197]]}}, 
    {CapForm["Butt"], 
     Arrowheads[{{0.029459331384116702`, 1.}}, Appearance -> "Projected"], 
     {RGBColor[1., 0., 0.7927974464892911], 
      Arrow3DBox[TubeBox[{{-0.007394690368399209, 0.28732930307656884`, 
       0.02}, {-0.10371642074271195`, 0.2682262524789865, 0.02}}, 
       0.00490988856401945]]}}, 
    {CapForm["Butt"], 
     Arrowheads[{{0.0031973784346388885`, 1.}}, Appearance -> "Projected"], 
     {RGBColor[1., 0.5651654795657848, 0.], 
      Arrow3DBox[TubeBox[{{-0.05028017413905446, 0.3896426851737222, 
       0.0022222222222222222`}, {-0.0608309369720567, 0.38813509260405543`, 
       0.0022222222222222222`}}, 0.0005328964057731481]]}}, 
    {CapForm["Butt"], 
     Arrowheads[{{0.006391511980112669, 1.}}, Appearance -> "Projected"], 
     {RGBColor[0.8702426042981668, 1., 0.], 
      Arrow3DBox[TubeBox[{{-0.045010150460781356`, 0.3903957442340838, 
       0.0044444444444444444`}, {-0.0661009606503298, 0.38738203354369394`, 
       0.0044444444444444444`}}, 0.0010652519966854448`]]}}, 
    {CapForm["Butt"], 
     Arrowheads[{{0.009579098113536143, 1.}}, Appearance -> "Projected"], 
     {RGBColor[0.3068080023014885, 1., 0.], 
      Arrow3DBox[TubeBox[{{-0.039750937418130336`, 0.39114731573788286`, 
       0.006666666666666666}, {-0.07136017369298082, 0.3866304620398948, 
       0.006666666666666666}}, 0.001596516352256024]]}}, 
    {CapForm["Butt"], 
     Arrowheads[{{0.012756718602285319`, 1.}}, Appearance -> "Projected"], 
     {RGBColor[0., 1., 0.2548650821061189], 
      Arrow3DBox[TubeBox[{{-0.034508178957318086`, 0.3918966230385435, 
       0.008888888888888889}, {-0.07660293215379307, 0.3858811547392342, 
       0.008888888888888889}}, 0.002126119767047553]]}}, 
    {CapForm["Butt"], 
     Arrowheads[{{0.01592078029716751, 1.}}, Appearance -> "Projected"], 
     {RGBColor[0., 1., 0.8141415273936414], 
      Arrow3DBox[TubeBox[{{-0.029287807830545885`, 0.3926428497136438, 
       0.011111111111111112`}, {-0.08182330328056528, 0.3851349280641338, 
       0.011111111111111112`}}, 0.0026534633828612514`]]}}, 
    {CapForm["Butt"], 
     Arrowheads[{{0.019067453377964037`, 1.}}, Appearance -> "Projected"], 
     {RGBColor[0., 0.629655621708614, 1.], 
      Arrow3DBox[TubeBox[{{-0.024096147560203493`, 0.3933851255283043, 
       0.013333333333333332`}, {-0.08701496355090767, 0.3843926522494734, 
       0.013333333333333332`}}, 0.0031779088963273393`]]}}, 
    {CapForm["Butt"], 
     Arrowheads[{{0.022192607092311335`, 1.}}, Appearance -> "Projected"], 
     {RGBColor[0., 0.07725651294144598, 1.], 
      Arrow3DBox[TubeBox[{{-0.01894001854272581, 0.39412251183418234`, 
       0.015555555555555555`}, {-0.09217109256838535, 0.38365526594359534`, 
       0.015555555555555555`}}, 0.003698767848718556]]}}, 
    {CapForm["Butt"], 
     Arrowheads[{{0.025291742971333898`, 1.}}, Appearance -> "Projected"], 
     {RGBColor[0.47054370874396056`, 0., 1.], 
      Arrow3DBox[TubeBox[{{-0.013826848319736011`, 0.39485398640179004`, 
       0.017777777777777778`}, {-0.09728426279137514, 0.3829237913759876, 
       0.017777777777777778`}}, 0.004215290495222316]]}}, 
    {CapForm["Butt"], 
     Arrowheads[{{0.028359923275535347`, 1.}}, Appearance -> "Projected"], 
     {RGBColor[1., 0., 0.9871277466481665], 
      Arrow3DBox[TubeBox[{{-0.008764789725974158, 0.3955784271771231, 
       0.02}, {-0.102346321385137, 0.3821993506006546, 0.02}}, 
       0.004726653879255891]]}}, 
    {CapForm["Butt"], 
     Arrowheads[{{0.003197378434638897, 1.}}, Appearance -> "Projected"], 
     {RGBColor[1., 0.5651654795657864, 0.], 
      Arrow3DBox[TubeBox[{{0.050280174139054445`, -0.3896426851737223, 
       0.0022222222222222222`}, {0.060830936972056715`, -0.38813509260405554`,
        0.0022222222222222222`}}, 0.0005328964057731495]]}}, 
    {CapForm["Butt"], 
     Arrowheads[{{0.006391511980112685, 1.}}, Appearance -> "Projected"], 
     {RGBColor[0.8702426042981632, 1., 0.], 
      Arrow3DBox[TubeBox[{{0.04501015046078133, -0.39039574423408385`, 
       0.0044444444444444444`}, {0.06610096065032983, -0.387382033543694, 
       0.0044444444444444444`}}, 0.0010652519966854476`]]}}, 
    {CapForm["Butt"], 
     Arrowheads[{{0.009579098113536178, 1.}}, Appearance -> "Projected"], 
     {RGBColor[0.30680800230148275`, 1., 0.], 
      Arrow3DBox[TubeBox[{{0.03975093741813028, -0.3911473157378829, 
       0.006666666666666666}, {0.07136017369298088, -0.3866304620398948, 
       0.006666666666666666}}, 0.0015965163522560298`]]}}, 
    {CapForm["Butt"], 
     Arrowheads[{{0.01275671860228536, 1.}}, Appearance -> "Projected"], 
     {RGBColor[0., 1., 0.2548650821061256], 
      Arrow3DBox[TubeBox[{{0.03450817895731802, -0.39189662303854356`, 
       0.008888888888888889}, {0.07660293215379314, -0.38588115473923423`, 
       0.008888888888888889}}, 0.00212611976704756]]}}, 
    {CapForm["Butt"], 
     Arrowheads[{{0.015920780297167557`, 1.}}, Appearance -> "Projected"], 
     {RGBColor[0., 1., 0.8141415273936508], 
      Arrow3DBox[TubeBox[{{0.0292878078305458, -0.39264284971364394`, 
       0.011111111111111112`}, {0.08182330328056536, -0.3851349280641339, 
       0.011111111111111112`}}, 0.0026534633828612596`]]}}, 
    {CapForm["Butt"], 
     Arrowheads[{{0.019067453377964103`, 1.}}, Appearance -> "Projected"], 
     {RGBColor[0., 0.6296556217086033, 1.], 
      Arrow3DBox[TubeBox[{{0.024096147560203382`, -0.39338512552830435`, 
       0.013333333333333332`}, {0.08701496355090778, -0.3843926522494734, 
       0.013333333333333332`}}, 0.0031779088963273506`]]}}, 
    {CapForm["Butt"], 
     Arrowheads[{{0.0221926070923114, 1.}}, Appearance -> "Projected"], 
     {RGBColor[0., 0.07725651294143265, 1.], 
      Arrow3DBox[TubeBox[{{0.018940018542725694`, -0.3941225118341824, 
       0.015555555555555555`}, {0.09217109256838546, -0.38365526594359534`, 
       0.015555555555555555`}}, 0.0036987678487185667`]]}}, 
    {CapForm["Butt"], 
     Arrowheads[{{0.02529174297133398, 1.}}, Appearance -> "Projected"], 
     {RGBColor[0.47054370874397566`, 0., 1.], 
      Arrow3DBox[TubeBox[{{0.013826848319735872`, -0.39485398640179015`, 
       0.017777777777777778`}, {0.09728426279137528, -0.3829237913759877, 
       0.017777777777777778`}}, 0.00421529049522233]]}}, 
    {CapForm["Butt"], 
     Arrowheads[{{0.028359923275535444`, 1.}}, Appearance -> "Projected"], 
     {RGBColor[1., 0., 0.9871277466481487], 
      Arrow3DBox[TubeBox[{{0.008764789725973991, -0.3955784271771232, 0.02}, {
       0.10234632138513716`, -0.38219935060065463`, 0.02}}, 
       0.004726653879255908]]}}, 
    {CapForm["Butt"], 
     Arrowheads[{{0.003279033723722008, 1.}}, Appearance -> "Projected"], 
     {RGBColor[1., 0.57959878846466, 0.], 
      Arrow3DBox[TubeBox[{{0.05019514423904476, -0.27884212257848123`, 
       0.0022222222222222222`}, {0.0609159668720664, -0.27671343297707435`, 
       0.0022222222222222222`}}, 0.0005465056206203346]]}}, 
    {CapForm["Butt"], 
     Arrowheads[{{0.006557682300013193, 1.}}, Appearance -> "Projected"], 
     {RGBColor[0.8408705013532156, 1., 0.], 
      Arrow3DBox[TubeBox[{{0.04483534561172585, -0.2799062570873002, 
       0.0044444444444444444`}, {0.06627576549938531, -0.27564929846825537`, 
       0.0044444444444444444`}}, 0.0010929470500021987`]]}}, 
    {CapForm["Butt"], 
     Arrowheads[{{0.009835548475956529, 1.}}, Appearance -> "Projected"], 
     {RGBColor[0.2614780874900422, 1., 0.], 
      Arrow3DBox[TubeBox[{{0.039476791953973495`, -0.28096996607235325`, 
       0.006666666666666666}, {0.07163431915713767, -0.27458558948320233`, 
       0.006666666666666666}}, 0.0016392580793260882`]]}}, 
    {CapForm["Butt"], 
     Arrowheads[{{0.0131122106163808, 1.}}, Appearance -> "Projected"], 
     {RGBColor[0., 1., 0.3177015022344012], 
      Arrow3DBox[TubeBox[{{0.03412015500713764, -0.2820330243585451, 
       0.008888888888888889}, {0.07699095610397352, -0.2735225311970105, 
       0.008888888888888889}}, 0.0021853684360634666`]]}}, 
    {CapForm["Butt"], 
     Arrowheads[{{0.016387210032805882`, 1.}}, Appearance -> "Projected"], 
     {RGBColor[0., 1., 0.8965871904937548], 
      Arrow3DBox[TubeBox[{{0.02876616648425906, -0.2830951916768104, 
       0.011111111111111112`}, {0.0823449446268521, -0.2724603638787451, 
       0.011111111111111112`}}, 0.002731201672134314]]}}, 
    {CapForm["Butt"], 
     Arrowheads[{{0.019660037534553372`, 1.}}, Appearance -> "Projected"], 
     {RGBColor[0., 0.5249110267574308, 1.], 
      Arrow3DBox[TubeBox[{{0.023415639843950724`, -0.2841562072166462, 
       0.013333333333333332`}, {0.08769547126716043, -0.2713993483389094, 
       0.013333333333333332`}}, 0.003276672922425562]]}}, 
    {CapForm["Butt"], 
     Arrowheads[{{0.022930119119995193`, 1.}}, Appearance -> "Projected"], 
     {RGBColor[0.05310539051542751, 0., 1.], 
      Arrow3DBox[TubeBox[{{0.01806949346187081, -0.28521578385620827`, 
       0.015555555555555555`}, {0.09304161764924035, -0.2703397716993473, 
       0.015555555555555555`}}, 0.003821686519999199]]}}, 
    {CapForm["Butt"], 
     Arrowheads[{{0.026196800716500726`, 1.}}, Appearance -> "Projected"], 
     {RGBColor[0.6305208290749515, 0., 1.], 
      Arrow3DBox[TubeBox[{{0.012728775349422593`, -0.2862736020401991, 
       0.017777777777777778`}, {0.09838233576168856, -0.26928195351535655`, 
       0.017777777777777778`}}, 0.004366133452750121]]}}, 
    {CapForm["Butt"], 
     Arrowheads[{{0.029459331384116175`, 1.}}, Appearance -> "Projected"], 
     {RGBColor[1., 0., 0.7927974464893826], 
      Arrow3DBox[TubeBox[{{0.00739469036840007, -0.2873293030765688, 0.02}, {
       0.10371642074271109`, -0.2682262524789868, 0.02}}, 
       0.004909888564019363]]}}, 
    {CapForm["Butt"], 
     Arrowheads[{{0.003244968653274925, 1.}}, Appearance -> "Projected"], 
     {RGBColor[1., 0.5735774799867215, 0.], 
      Arrow3DBox[TubeBox[{{0.05041900910097764, -0.1683594143901456, 
       0.0022222222222222222`}, {0.060692102010133524`, -0.1649739189431878, 
       0.0022222222222222222`}}, 0.0005408281088791542]]}}, 
    {CapForm["Butt"], 
     Arrowheads[{{0.0064897293190995355`, 1.}}, Appearance -> "Projected"], 
     {RGBColor[0.8528818036845041, 1., 0.], 
      Arrow3DBox[TubeBox[{{0.04528273556210603, -0.1700518827326275, 
       0.0044444444444444444`}, {0.06582837554900513, -0.1632814506007059, 
       0.0044444444444444444`}}, 0.001081621553183256]]}}, 
    {CapForm["Butt"], 
     Arrowheads[{{0.009734064175966636, 1.}}, Appearance -> "Projected"], 
     {RGBColor[0.2794163529298861, 1., 0.], 
      Arrow3DBox[TubeBox[{{0.040147022704822906`, -0.17174378497703127`, 
       0.006666666666666666}, {0.07096408840628826, -0.16158954835630213`, 
       0.006666666666666666}}, 0.0016223440293277726`]]}}, 
    {CapForm["Butt"], 
     Arrowheads[{{0.012977735631088805`, 1.}}, Appearance -> "Projected"], 
     {RGBColor[0., 1., 0.29393183558224756`], 
      Arrow3DBox[TubeBox[{{0.035012188151438056`, -0.17343481965659577`, 
       0.008888888888888889}, {0.0760989229596731, -0.1598985136767376, 
       0.008888888888888889}}, 0.002162955938514801]]}}, 
    {CapForm["Butt"], 
     Arrowheads[{{0.016220476134424167`, 1.}}, Appearance -> "Projected"], 
     {RGBColor[0., 1., 0.8671154699686179], 
      Arrow3DBox[TubeBox[{{0.02987859476315086, -0.17512466295468637`, 
       0.011111111111111112`}, {0.0812325163479603, -0.158208670378647, 
       0.011111111111111112`}}, 0.0027034126890706947`]]}}, 
    {CapForm["Butt"], 
     Arrowheads[{{0.019461977470547818`, 1.}}, Appearance -> "Projected"], 
     {RGBColor[0., 0.5599199296273136, 1.], 
      Arrow3DBox[TubeBox[{{0.024746666811838073`, -0.17681296071368974`, 
       0.013333333333333332`}, {0.08636444429927309, -0.15652037261964363`, 
       0.013333333333333332`}}, 0.0032436629117579695`]]}}, 
    {CapForm["Butt"], 
     Arrowheads[{{0.02270187950094727, 1.}}, Appearance -> "Projected"], 
     {RGBColor[0.012761979063820483`, 0., 1.], 
      Arrow3DBox[TubeBox[{{0.01961690698319779, -0.1784993200322072, 
       0.015555555555555555`}, {0.09149420412791337, -0.15483401330112617`, 
       0.015555555555555555`}}, 0.003783646583491212]]}}, 
    {CapForm["Butt"], 
     Arrowheads[{{0.025939758318860275`, 1.}}, Appearance -> "Projected"], 
     {RGBColor[0.5850862666980348, 0., 1.], 
      Arrow3DBox[TubeBox[{{0.01448991426925382, -0.1801833004221758, 
       0.017777777777777778`}, {0.09662119684185734, -0.15315003291115756`, 
       0.017777777777777778`}}, 0.004323293053143379]]}}, 
    {CapForm["Butt"], 
     Arrowheads[{{0.029175113386887795`, 1.}}, Appearance -> "Projected"], 
     {RGBColor[1., 0., 0.8430355412249382], 
      Arrow3DBox[TubeBox[{{0.00936640339988399, -0.18186440420554598`, 
       0.02}, {0.10174470771122718`, -0.1514689291277874, 0.02}}, 
       0.004862518897814632]]}}, 
    {CapForm["Butt"], 
     Arrowheads[{{0.0035651157158848546`, 1.}}, Appearance -> "Projected"], 
     {RGBColor[1., 0.630166361118633, 0.], 
      Arrow3DBox[TubeBox[{{0.05135402639152739, -0.05975708471958377, 
       0.0022222222222222222`}, {0.05975708471958377, -0.05135402639152739, 
       0.0022222222222222222`}}, 0.0005941859526474758]]}}, 
    {CapForm["Butt"], 
     Arrowheads[{{0.0071376126429318265`, 1.}}, Appearance -> "Projected"], 
     {RGBColor[0.7383625821092501, 1., 0.], 
      Arrow3DBox[TubeBox[{{0.04714379838672236, -0.0639673127243888, 
       0.0044444444444444444`}, {0.0639673127243888, -0.04714379838672236, 
       0.0044444444444444444`}}, 0.0011896021071553045`]]}}, 
    {CapForm["Butt"], 
     Arrowheads[{{0.010724912490369031`, 1.}}, Appearance -> "Projected"], 
     {RGBColor[0.10427497563169785`, 1., 0.], 
      Arrow3DBox[TubeBox[{{0.04291612497293517, -0.06819498613817598, 
       0.006666666666666666}, {0.068194986138176, -0.04291612497293517, 
       0.006666666666666666}}, 0.0017874854150615052`]]}}, 
    {CapForm["Butt"], 
     Arrowheads[{{0.014334518154342245`, 1.}}, Appearance -> "Projected"], 
     {RGBColor[0., 1., 0.5337553851232668], 
      Arrow3DBox[TubeBox[{{0.03866216390226046, -0.07244894720885071, 
       0.008888888888888889}, {0.0724489472088507, -0.038662163902260446`, 
       0.008888888888888889}}, 0.002389086359057041]]}}, 
    {CapForm["Butt"], 
     Arrowheads[{{0.017974054962326826`, 1.}}, Appearance -> "Projected"], 
     {RGBColor[0., 0.8229236544305092, 1.], 
      Arrow3DBox[TubeBox[{{0.034372928640087216`, -0.07673818247102393, 
       0.011111111111111112`}, {0.07673818247102394, -0.03437292864008722, 
       0.011111111111111112`}}, 0.002995675827054471]]}}, 
    {CapForm["Butt"], 
     Arrowheads[{{0.021651313340095703`, 1.}}, Appearance -> "Projected"], 
     {RGBColor[0., 0.17293506626585398`, 1.], 
      Arrow3DBox[TubeBox[{{0.030039238081594862`, -0.0810718730295163, 
       0.013333333333333332`}, {0.0810718730295163, -0.030039238081594862`, 
       0.013333333333333332`}}, 0.003608552223349284]]}}, 
    {CapForm["Butt"], 
     Arrowheads[{{0.025374292739839033`, 1.}}, Appearance -> "Projected"], 
     {RGBColor[0.4851351249491289, 0., 1.], 
      Arrow3DBox[TubeBox[{{0.025651664781967648`, -0.08545944632914351, 
       0.015555555555555555`}, {0.08545944632914351, -0.025651664781967648`, 
       0.015555555555555555`}}, 0.004229048789973172]]}}, 
    {CapForm["Butt"], 
     Arrowheads[{{0.02915124671658692, 1.}}, Appearance -> "Projected"], 
     {RGBColor[1., 0., 0.8472541904846258], 
      Arrow3DBox[TubeBox[{{0.021200481833321093`, -0.08991062927779006, 
       0.017777777777777778`}, {0.08991062927779006, -0.021200481833321093`, 
       0.017777777777777778`}}, 0.004858541119431153]]}}, 
    {CapForm["Butt"], 
     Arrowheads[{{0.032990730574152076`, 1.}}, Appearance -> "Projected"], 
     {RGBColor[1., 0., 0.1685907854469999], 
      Arrow3DBox[TubeBox[{{0.016675606713420076`, -0.09443550439769108, 
       0.02}, {0.09443550439769108, -0.016675606713420076`, 0.02}}, 
       0.005498455095692013]]}}, 
    {CapForm["Butt"], 
     Arrowheads[{{0.003565115715884853, 1.}}, Appearance -> "Projected"], 
     {RGBColor[1., 0.6301663611186329, 0.], 
      Arrow3DBox[TubeBox[{{0.05975708471958377, 0.05135402639152739, 
       0.0022222222222222222`}, {0.0513540263915274, 0.05975708471958377, 
       0.0022222222222222222`}}, 0.0005941859526474754]]}}, 
    {CapForm["Butt"], 
     Arrowheads[{{0.0071376126429318265`, 1.}}, Appearance -> "Projected"], 
     {RGBColor[0.7383625821092503, 1., 0.], 
      Arrow3DBox[TubeBox[{{0.0639673127243888, 0.04714379838672236, 
       0.0044444444444444444`}, {0.04714379838672236, 0.0639673127243888, 
       0.0044444444444444444`}}, 0.0011896021071553045`]]}}, 
    {CapForm["Butt"], 
     Arrowheads[{{0.010724912490369031`, 1.}}, Appearance -> "Projected"], 
     {RGBColor[0.10427497563169785`, 1., 0.], 
      Arrow3DBox[TubeBox[{{0.06819498613817598, 0.04291612497293517, 
       0.006666666666666666}, {0.04291612497293517, 0.068194986138176, 
       0.006666666666666666}}, 0.0017874854150615052`]]}}, 
    {CapForm["Butt"], 
     Arrowheads[{{0.014334518154342241`, 1.}}, Appearance -> "Projected"], 
     {RGBColor[0., 1., 0.5337553851232668], 
      Arrow3DBox[TubeBox[{{0.0724489472088507, 0.03866216390226046, 
       0.008888888888888889}, {0.03866216390226046, 0.0724489472088507, 
       0.008888888888888889}}, 0.00238908635905704]]}}, 
    {CapForm["Butt"], 
     Arrowheads[{{0.017974054962326833`, 1.}}, Appearance -> "Projected"], 
     {RGBColor[0., 0.8229236544305092, 1.], 
      Arrow3DBox[TubeBox[{{0.07673818247102394, 0.034372928640087216`, 
       0.011111111111111112`}, {0.034372928640087216`, 0.07673818247102394, 
       0.011111111111111112`}}, 0.002995675827054472]]}}, 
    {CapForm["Butt"], 
     Arrowheads[{{0.021651313340095703`, 1.}}, Appearance -> "Projected"], 
     {RGBColor[0., 0.17293506626585398`, 1.], 
      Arrow3DBox[TubeBox[{{0.0810718730295163, 0.030039238081594862`, 
       0.013333333333333332`}, {0.03003923808159486, 0.0810718730295163, 
       0.013333333333333332`}}, 0.003608552223349284]]}}, 
    {CapForm["Butt"], 
     Arrowheads[{{0.025374292739839033`, 1.}}, Appearance -> "Projected"], 
     {RGBColor[0.4851351249491289, 0., 1.], 
      Arrow3DBox[TubeBox[{{0.08545944632914351, 0.025651664781967648`, 
       0.015555555555555555`}, {0.025651664781967648`, 0.08545944632914351, 
       0.015555555555555555`}}, 0.004229048789973172]]}}, 
    {CapForm["Butt"], 
     Arrowheads[{{0.029151246716586927`, 1.}}, Appearance -> "Projected"], 
     {RGBColor[1., 0., 0.8472541904846249], 
      Arrow3DBox[TubeBox[{{0.08991062927779007, 0.021200481833321086`, 
       0.017777777777777778`}, {0.021200481833321086`, 0.08991062927779007, 
       0.017777777777777778`}}, 0.004858541119431154]]}}, 
    {CapForm["Butt"], 
     Arrowheads[{{0.032990730574152076`, 1.}}, Appearance -> "Projected"], 
     {RGBColor[1., 0., 0.1685907854469999], 
      Arrow3DBox[TubeBox[{{0.09443550439769108, 0.016675606713420076`, 
       0.02}, {0.016675606713420076`, 0.09443550439769108, 0.02}}, 
       0.005498455095692013]]}}, 
    {CapForm["Butt"], 
     Arrowheads[{{0.0032449686532749662`, 1.}}, Appearance -> "Projected"], 
     {RGBColor[1., 0.573577479986729, 0.], 
      Arrow3DBox[TubeBox[{{0.060692102010133586`, 0.16497391894318772`, 
       0.0022222222222222222`}, {0.050419009100977574`, 0.16835941439014557`, 
       0.0022222222222222222`}}, 0.000540828108879161]]}}, 
    {CapForm["Butt"], 
     Arrowheads[{{0.006489729319099622, 1.}}, Appearance -> "Projected"], 
     {RGBColor[0.8528818036844892, 1., 0.], 
      Arrow3DBox[TubeBox[{{0.06582837554900527, 0.16328145060070579`, 
       0.0044444444444444444`}, {0.045282735562105894`, 0.17005188273262747`, 
       0.0044444444444444444`}}, 0.0010816215531832703`]]}}, 
    {CapForm["Butt"], 
     Arrowheads[{{0.009734064175966759, 1.}}, Appearance -> "Projected"], 
     {RGBColor[0.27941635292986344`, 1., 0.], 
      Arrow3DBox[TubeBox[{{0.07096408840628846, 0.161589548356302, 
       0.006666666666666666}, {0.040147022704822705`, 0.17174378497703124`, 
       0.006666666666666666}}, 0.0016223440293277932`]]}}, 
    {CapForm["Butt"], 
     Arrowheads[{{0.01297773563108898, 1.}}, Appearance -> "Projected"], 
     {RGBColor[0., 1., 0.29393183558227864`], 
      Arrow3DBox[TubeBox[{{0.07609892295967338, 0.15989851367673746`, 
       0.008888888888888889}, {0.03501218815143777, 0.1734348196565958, 
       0.008888888888888889}}, 0.00216295593851483]]}}, 
    {CapForm["Butt"], 
     Arrowheads[{{0.016220476134424386`, 1.}}, Appearance -> "Projected"], 
     {RGBColor[0., 1., 0.8671154699686574], 
      Arrow3DBox[TubeBox[{{0.08123251634796066, 0.15820867037864683`, 
       0.011111111111111112`}, {0.029878594763150503`, 0.1751246629546864, 
       0.011111111111111112`}}, 0.002703412689070731]]}}, 
    {CapForm["Butt"], 
     Arrowheads[{{0.019461977470548092`, 1.}}, Appearance -> "Projected"], 
     {RGBColor[0., 0.5599199296272643, 1.], 
      Arrow3DBox[TubeBox[{{0.08636444429927354, 0.15652037261964344`, 
       0.013333333333333332`}, {0.024746666811837622`, 0.1768129607136898, 
       0.013333333333333332`}}, 0.0032436629117580155`]]}}, 
    {CapForm["Butt"], 
     Arrowheads[{{0.0227018795009476, 1.}}, Appearance -> "Projected"], 
     {RGBColor[0.012761979063876439`, 0., 1.], 
      Arrow3DBox[TubeBox[{{0.0914942041279139, 0.15483401330112595`, 
       0.015555555555555555`}, {0.01961690698319727, 0.1784993200322073, 
       0.015555555555555555`}}, 0.003783646583491267]]}}, 
    {CapForm["Butt"], 
     Arrowheads[{{0.02593975831886065, 1.}}, Appearance -> "Projected"], 
     {RGBColor[0.5850862666981014, 0., 1.], 
      Arrow3DBox[TubeBox[{{0.09662119684185794, 0.1531500329111573, 
       0.017777777777777778`}, {0.014489914269253217`, 0.18018330042217592`, 
       0.017777777777777778`}}, 0.004323293053143442]]}}, 
    {CapForm["Butt"], 
     Arrowheads[{{0.029175113386888225`, 1.}}, Appearance -> "Projected"], 
     {RGBColor[1., 0., 0.8430355412248618], 
      Arrow3DBox[TubeBox[{{0.10174470771122787`, 0.15146892912778714`, 
       0.02}, {0.009366403399883295, 0.18186440420554612`, 0.02}}, 
       0.004862518897814704]]}}, 
    {CapForm["Butt"], 
     Arrowheads[{{0.00327903372372205, 1.}}, Appearance -> "Projected"], 
     {RGBColor[1., 0.5795987884646668, 0.], 
      Arrow3DBox[TubeBox[{{0.06091596687206646, 0.27671343297707424`, 
       0.0022222222222222222`}, {0.05019514423904469, 0.2788421225784812, 
       0.0022222222222222222`}}, 0.0005465056206203417]]}}, 
    {CapForm["Butt"], 
     Arrowheads[{{0.006557682300013268, 1.}}, Appearance -> "Projected"], 
     {RGBColor[0.8408705013532014, 1., 0.], 
      Arrow3DBox[TubeBox[{{0.06627576549938544, 0.27564929846825525`, 
       0.0044444444444444444`}, {0.04483534561172572, 0.2799062570873001, 
       0.0044444444444444444`}}, 0.0010929470500022113`]]}}, 
    {CapForm["Butt"], 
     Arrowheads[{{0.009835548475956647, 1.}}, Appearance -> "Projected"], 
     {RGBColor[0.2614780874900209, 1., 0.], 
      Arrow3DBox[TubeBox[{{0.07163431915713786, 0.2745855894832022, 
       0.006666666666666666}, {0.03947679195397329, 0.2809699660723532, 
       0.006666666666666666}}, 0.0016392580793261077`]]}}, 
    {CapForm["Butt"], 
     Arrowheads[{{0.013112210616380956`, 1.}}, Appearance -> "Projected"], 
     {RGBColor[0., 1., 0.31770150223442917`], 
      Arrow3DBox[TubeBox[{{0.07699095610397379, 0.27352253119701037`, 
       0.008888888888888889}, {0.03412015500713737, 0.282033024358545, 
       0.008888888888888889}}, 0.0021853684360634926`]]}}, 
    {CapForm["Butt"], 
     Arrowheads[{{0.016387210032806084`, 1.}}, Appearance -> "Projected"], 
     {RGBColor[0., 1., 0.8965871904937908], 
      Arrow3DBox[TubeBox[{{0.08234494462685243, 0.272460363878745, 
       0.011111111111111112`}, {0.02876616648425872, 0.28309519167681035`, 
       0.011111111111111112`}}, 0.0027312016721343473`]]}}, 
    {CapForm["Butt"], 
     Arrowheads[{{0.019660037534553622`, 1.}}, Appearance -> "Projected"], 
     {RGBColor[0., 0.5249110267573869, 1.], 
      Arrow3DBox[TubeBox[{{0.08769547126716085, 0.2713993483389092, 
       0.013333333333333332`}, {0.023415639843950314`, 0.28415620721664614`, 
       0.013333333333333332`}}, 0.003276672922425604]]}}, 
    {CapForm["Butt"], 
     Arrowheads[{{0.022930119119995485`, 1.}}, Appearance -> "Projected"], 
     {RGBColor[0.05310539051547902, 0., 1.], 
      Arrow3DBox[TubeBox[{{0.09304161764924083, 0.27033977169934714`, 
       0.015555555555555555`}, {0.018069493461870326`, 0.2852157838562082, 
       0.015555555555555555`}}, 0.0038216865199992476`]]}}, 
    {CapForm["Butt"], 
     Arrowheads[{{0.026196800716501076`, 1.}}, Appearance -> "Projected"], 
     {RGBColor[0.6305208290750102, 0., 1.], 
      Arrow3DBox[TubeBox[{{0.09838233576168914, 0.26928195351535633`, 
       0.017777777777777778`}, {0.012728775349422024`, 0.28627360204019897`, 
       0.017777777777777778`}}, 0.00436613345275018]]}}, 
    {CapForm["Butt"], 
     Arrowheads[{{0.02945933138411657, 1.}}, Appearance -> "Projected"], 
     {RGBColor[1., 0., 0.7927974464893142], 
      Arrow3DBox[TubeBox[{{0.10371642074271176`, 0.2682262524789866, 0.02}, {
       0.007394690368399411, 0.28732930307656873`, 0.02}}, 
       0.004909888564019429]]}}, 
    {CapForm["Butt"], 
     Arrowheads[{{0.0031973784346388807`, 1.}}, Appearance -> "Projected"], 
     {RGBColor[1., 0.5651654795657839, 0.], 
      Arrow3DBox[TubeBox[{{0.06083093697205669, 0.3881350926040555, 
       0.0022222222222222222`}, {0.05028017413905447, 0.38964268517372225`, 
       0.0022222222222222222`}}, 0.0005328964057731468]]}}, 
    {CapForm["Butt"], 
     Arrowheads[{{0.0063915119801126585`, 1.}}, Appearance -> "Projected"], 
     {RGBColor[0.8702426042981686, 1., 0.], 
      Arrow3DBox[TubeBox[{{0.06610096065032979, 0.38738203354369394`, 
       0.0044444444444444444`}, {0.04501015046078138, 0.3903957442340838, 
       0.0044444444444444444`}}, 0.001065251996685443]]}}, 
    {CapForm["Butt"], 
     Arrowheads[{{0.009579098113536133, 1.}}, Appearance -> "Projected"], 
     {RGBColor[0.3068080023014903, 1., 0.], 
      Arrow3DBox[TubeBox[{{0.07136017369298081, 0.3866304620398948, 
       0.006666666666666666}, {0.03975093741813036, 0.39114731573788286`, 
       0.006666666666666666}}, 0.0015965163522560222`]]}}, 
    {CapForm["Butt"], 
     Arrowheads[{{0.012756718602285293`, 1.}}, Appearance -> "Projected"], 
     {RGBColor[0., 1., 0.2548650821061149], 
      Arrow3DBox[TubeBox[{{0.07660293215379303, 0.3858811547392342, 
       0.008888888888888889}, {0.03450817895731813, 0.3918966230385435, 
       0.008888888888888889}}, 0.002126119767047549]]}}, 
    {CapForm["Butt"], 
     Arrowheads[{{0.015920780297167484`, 1.}}, Appearance -> "Projected"], 
     {RGBColor[0., 1., 0.8141415273936374], 
      Arrow3DBox[TubeBox[{{0.08182330328056524, 0.38513492806413385`, 
       0.011111111111111112`}, {0.029287807830545923`, 0.3926428497136439, 
       0.011111111111111112`}}, 0.0026534633828612475`]]}}, 
    {CapForm["Butt"], 
     Arrowheads[{{0.019067453377964012`, 1.}}, Appearance -> "Projected"], 
     {RGBColor[0., 0.6296556217086193, 1.], 
      Arrow3DBox[TubeBox[{{0.08701496355090763, 0.3843926522494734, 
       0.013333333333333332`}, {0.02409614756020354, 0.3933851255283043, 
       0.013333333333333332`}}, 0.0031779088963273354`]]}}, 
    {CapForm["Butt"], 
     Arrowheads[{{0.0221926070923113, 1.}}, Appearance -> "Projected"], 
     {RGBColor[0., 0.0772565129414513, 1.], 
      Arrow3DBox[TubeBox[{{0.0921710925683853, 0.38365526594359534`, 
       0.015555555555555555`}, {0.018940018542725867`, 0.39412251183418234`, 
       0.015555555555555555`}}, 0.0036987678487185502`]]}}, 
    {CapForm["Butt"], 
     Arrowheads[{{0.025291742971333863`, 1.}}, Appearance -> "Projected"], 
     {RGBColor[0.47054370874395346`, 0., 1.], 
      Arrow3DBox[TubeBox[{{0.09728426279137509, 0.38292379137598764`, 
       0.017777777777777778`}, {0.013826848319736074`, 0.39485398640179004`, 
       0.017777777777777778`}}, 0.00421529049522231]]}}, 
    {CapForm["Butt"], 
     Arrowheads[{{0.028359923275535312`, 1.}}, Appearance -> "Projected"], 
     {RGBColor[1., 0., 0.9871277466481754], 
      Arrow3DBox[TubeBox[{{0.10234632138513694`, 0.3821993506006546, 0.02}, {
       0.008764789725974227, 0.3955784271771231, 0.02}}, 
       0.004726653879255885]]}}, 
    {CapForm["Butt"], 
     Arrowheads[{{0.0037155607759840224`, 1.}}, Appearance -> "Projected"], 
     {RGBColor[1., 0.656758882547474, 0.], 
      Arrow3DBox[TubeBox[{{0.1609720434885628, -0.3913219071044529, 
       0.0022222222222222222`}, {0.17236128984477048`, -0.3864558706733248, 
       0.0022222222222222222`}}, 0.0006192601293306704]]}}, 
    {CapForm["Butt"], 
     Arrowheads[{{0.007435330366607014, 1.}}, Appearance -> "Projected"], 
     {RGBColor[0.6857382889529342, 1., 0.], 
      Arrow3DBox[TubeBox[{{0.15527094775465242`, -0.39375762995158176`, 
       0.0044444444444444444`}, {0.17806238557868084`, -0.38402014782619603`, 
       0.0044444444444444444`}}, 0.0012392217277678358`]]}}, 
    {CapForm["Butt"], 
     Arrowheads[{{0.0111635165969884, 1.}}, Appearance -> "Projected"], 
     {RGBColor[0.026747743455612483`, 1., 0.], 
      Arrow3DBox[TubeBox[{{0.14955690821486708`, -0.39619876091824874`, 
       0.006666666666666666}, {0.18377642511846617`, -0.3815790168595291, 
       0.006666666666666666}}, 0.0018605860994980667`]]}}, 
    {CapForm["Butt"], 
     Arrowheads[{{0.014904325155785688`, 1.}}, Appearance -> "Projected"], 
     {RGBColor[0., 1., 0.6344739124461354], 
      Arrow3DBox[TubeBox[{{0.1438234564707179, -0.3986480010993537, 
       0.008888888888888889}, {0.18950987686261533`, -0.37912977667842407`, 
       0.008888888888888889}}, 0.002484054192630948]]}}, 
    {CapForm["Butt"], 
     Arrowheads[{{0.018661958130051993`, 1.}}, Appearance -> "Projected"], 
     {RGBColor[0., 0.7013305644570593, 1.], 
      Arrow3DBox[TubeBox[{{0.13806412900557988`, -0.4011080477311441, 
       0.011111111111111112`}, {0.19526920432775335`, -0.3766697300466337, 
       0.011111111111111112`}}, 0.0031103263550086653`]]}}, 
    {CapForm["Butt"], 
     Arrowheads[{{0.022440612035978583`, 1.}}, Appearance -> "Projected"], 
     {RGBColor[0., 0.03341940207464322, 1.], 
      Arrow3DBox[TubeBox[{{0.1322724699796519, -0.40358159237670205`, 
       0.013333333333333332`}, {0.20106086335368137`, -0.37419618540107574`, 
       0.013333333333333332`}}, 0.0037401020059964307`]]}}, 
    {CapForm["Butt"], 
     Arrowheads[{{0.02624447517847496, 1.}}, Appearance -> "Projected"], 
     {RGBColor[0.6389477202658105, 0., 1.], 
      Arrow3DBox[TubeBox[{{0.12644203504628437`, -0.40607131865459434`, 
       0.015555555555555555`}, {0.20689129828704889`, -0.37170645912318345`, 
       0.015555555555555555`}}, 0.004374079196412493]]}}, 
    {CapForm["Butt"], 
     Arrowheads[{{0.030077724180255498`, 1.}}, Appearance -> "Projected"], 
     {RGBColor[1., 0., 0.683490941696629], 
      Arrow3DBox[TubeBox[{{0.12056639643431127`, -0.40857989940729117`, 
       0.017777777777777778`}, {0.21276693689902199`, -0.3691978783704867, 
       0.017777777777777778`}}, 0.005012954030042583]]}}, 
    {CapForm["Butt"], 
     Arrowheads[{{0.03394451943981531, 1.}}, Appearance -> "Projected"], 
     {RGBColor[1., 0., 0.], 
      Arrow3DBox[TubeBox[{{0.11463914965755227`, -0.41110999313387, 0.02}, {
       0.21869418367578097`, -0.36666778464390787`, 0.02}}, 
       0.005657419906635885]]}}, 
    {CapForm["Butt"], 
     Arrowheads[{{0.0034312113778469417`, 1.}}, Appearance -> "Projected"], 
     {RGBColor[1., 0.6064975615160346, 0.], 
      Arrow3DBox[TubeBox[{{0.1617619946833082, -0.2807184508414674, 
       0.0022222222222222222`}, {0.17157133865002505`, -0.2748371047140881, 
       0.0022222222222222222`}}, 0.0005718685629744903]]}}, 
    {CapForm["Butt"], 
     Arrowheads[{{0.006864696873697957, 1.}}, Appearance -> "Projected"], 
     {RGBColor[0.7866029060975319, 1., 0.], 
      Arrow3DBox[TubeBox[{{0.15685405251398185`, -0.28366104038933326`, 
       0.0044444444444444444`}, {0.1764792808193514, -0.2718945151662224, 
       0.0044444444444444444`}}, 0.0011441161456163262`]]}}, 
    {CapForm["Butt"], 
     Arrowheads[{{0.01030276236545711, 1.}}, Appearance -> "Projected"], 
     {RGBColor[0.1788938181214983, 1., 0.], 
      Arrow3DBox[TubeBox[{{0.15193952415458414`, -0.28660748942423536`, 
       0.006666666666666666}, {0.18139380917874912`, -0.26894806613132016`, 
       0.006666666666666666}}, 0.0017171270609095185`]]}}, 
    {CapForm["Butt"], 
     Arrowheads[{{0.013747777551176591`, 1.}}, Appearance -> "Projected"], 
     {RGBColor[0., 1., 0.43004369095019923`], 
      Arrow3DBox[TubeBox[{{0.1470150015299252, -0.2895597942345851, 
       0.008888888888888889}, {0.18631833180340807`, -0.26599576132097047`, 
       0.008888888888888889}}, 0.0022912962585294318`]]}}, 
    {CapForm["Butt"], 
     Arrowheads[{{0.017202208745237597`, 1.}}, Appearance -> "Projected"], 
     {RGBColor[0., 0.9593544355687258, 1.], 
      Arrow3DBox[TubeBox[{{0.14207693717604392`, -0.29252003177048796`, 
       0.011111111111111112`}, {0.19125639615728934`, -0.26303552378506756`, 
       0.011111111111111112`}}, 0.0028670347908729328`]]}}, 
    {CapForm["Butt"], 
     Arrowheads[{{0.020668653251925254`, 1.}}, Appearance -> "Projected"], 
     {RGBColor[0., 0.34662910071746644`, 1.], 
      Arrow3DBox[TubeBox[{{0.13712159464217577`, -0.2954903883288853, 
       0.013333333333333332`}, {0.1962117386911575, -0.26006516722667034`, 
       0.013333333333333332`}}, 0.0034447755419875423`]]}}, 
    {CapForm["Butt"], 
     Arrowheads[{{0.02414987535650325, 1.}}, Appearance -> "Projected"], 
     {RGBColor[0.2687083078589563, 0., 1.], 
      Arrow3DBox[TubeBox[{{0.13214499655273287`, -0.2984731895781119, 
       0.015555555555555555`}, {0.20118833678060039`, -0.2570823659774437, 
       0.015555555555555555`}}, 0.004024979226083875]]}}, 
    {CapForm["Butt"], 
     Arrowheads[{{0.02764884400184884, 1.}}, Appearance -> "Projected"], 
     {RGBColor[0.8871825775947908, 0., 1.], 
      Arrow3DBox[TubeBox[{{0.1271428702293645, -0.3014709319756765, 
       0.017777777777777778`}, {0.20619046310396877`, -0.2540846235798791, 
       0.017777777777777778`}}, 0.004608140666974806]]}}, 
    {CapForm["Butt"], 
     Arrowheads[{{0.031168773463089786`, 1.}}, Appearance -> "Projected"], 
     {RGBColor[1., 0., 0.4906381393874817], 
      Arrow3DBox[TubeBox[{{0.12211058897744162`, -0.3044863166712165, 0.02}, {
       0.21122274435589164`, -0.2510692388843391, 0.02}}, 
       0.005194795577181631]]}}, 
    {CapForm["Butt"], 
     Arrowheads[{{0.0033085102850616385`, 1.}}, Appearance -> "Projected"], 
     {RGBColor[1., 0.5848090365682264, 0.], 
      Arrow3DBox[TubeBox[{{0.16276754990301243`, -0.1705657834303209, 
       0.0022222222222222222`}, {0.17056578343032083`, -0.16276754990301248`, 
       0.0022222222222222222`}}, 0.0005514183808436065]]}}, 
    {CapForm["Butt"], 
     Arrowheads[{{0.006617495686640063, 1.}}, Appearance -> "Projected"], 
     {RGBColor[0.8302979457335216, 1., 0.], 
      Arrow3DBox[TubeBox[{{0.15886787320917342`, -0.1744654601241599, 
       0.0044444444444444444`}, {0.1744654601241598, -0.1588678732091735, 
       0.0044444444444444444`}}, 0.0011029159477733438`]]}}, 
    {CapForm["Butt"], 
     Arrowheads[{{0.009927435959093244, 1.}}, Appearance -> "Projected"], 
     {RGBColor[0.2452361459949559, 1., 0.], 
      Arrow3DBox[TubeBox[{{0.15496707118921663`, -0.1783662621441167, 
       0.006666666666666666}, {0.17836626214411666`, -0.15496707118921665`, 
       0.006666666666666666}}, 0.001654572659848874]]}}, 
    {CapForm["Butt"], 
     Arrowheads[{{0.01323882021880233, 1.}}, Appearance -> "Projected"], 
     {RGBColor[0., 1., 0.34008089151625764`], 
      Arrow3DBox[TubeBox[{{0.1510645674139588, -0.18226876591937452`, 
       0.008888888888888889}, {0.18226876591937446`, -0.15106456741395885`, 
       0.008888888888888889}}, 0.002206470036467055]]}}, 
    {CapForm["Butt"], 
     Arrowheads[{{0.016552151861061397`, 1.}}, Appearance -> "Projected"], 
     {RGBColor[0., 1., 0.925742146459112], 
      Arrow3DBox[TubeBox[{{0.14715976862635655`, -0.18617356470697674`, 
       0.011111111111111112`}, {0.1861735647069767, -0.1471597686263566, 
       0.011111111111111112`}}, 0.0027586919768435663`]]}}, 
    {CapForm["Butt"], 
     Arrowheads[{{0.01986795383997162, 1.}}, Appearance -> "Projected"], 
     {RGBColor[0., 0.4881599443118141, 1.], 
      Arrow3DBox[TubeBox[{{0.14325205851909123`, -0.19008127481424208`, 
       0.013333333333333332`}, {0.19008127481424203`, -0.14325205851909129`, 
       0.013333333333333332`}}, 0.0033113256399952703`]]}}, 
    {CapForm["Butt"], 
     Arrowheads[{{0.0231867743680673, 1.}}, Appearance -> "Projected"], 
     {RGBColor[0.09847152071394039, 0., 1.], 
      Arrow3DBox[TubeBox[{{0.13934079101749527`, -0.19399254231583804`, 
       0.015555555555555555`}, {0.19399254231583798`, -0.13934079101749533`, 
       0.015555555555555555`}}, 0.003864462394677883]]}}, 
    {CapForm["Butt"], 
     Arrowheads[{{0.026509193096195937`, 1.}}, Appearance -> "Projected"], 
     {RGBColor[0.6857390000522852, 0., 1.], 
      Arrow3DBox[TubeBox[{{0.1354252829964937, -0.1979080503368396, 
       0.017777777777777778`}, {0.19790805033683956`, -0.13542528299649376`, 
       0.017777777777777778`}}, 0.00441819884936599]]}}, 
    {CapForm["Butt"], 
     Arrowheads[{{0.029835828031122058`, 1.}}, Appearance -> "Projected"], 
     {RGBColor[1., 0., 0.7262482680265521], 
      Arrow3DBox[TubeBox[{{0.13150480612812981`, -0.2018285272052035, 0.02}, {
       0.20182852720520345`, -0.13150480612812987`, 0.02}}, 
       0.004972638005187009]]}}, 
    {CapForm["Butt"], 
     Arrowheads[{{0.0032449686532749697`, 1.}}, Appearance -> "Projected"], 
     {RGBColor[1., 0.573577479986729, 0.], 
      Arrow3DBox[TubeBox[{{0.16497391894318772`, -0.06069210201013359, 
       0.0022222222222222222`}, {0.16835941439014557`, -0.05041900910097757, 
       0.0022222222222222222`}}, 0.0005408281088791616]]}}, 
    {CapForm["Butt"], 
     Arrowheads[{{0.006489729319099628, 1.}}, Appearance -> "Projected"], 
     {RGBColor[0.8528818036844887, 1., 0.], 
      Arrow3DBox[TubeBox[{{0.16328145060070579`, -0.06582837554900528, 
       0.0044444444444444444`}, {0.17005188273262747`, -0.04528273556210589, 
       0.0044444444444444444`}}, 0.0010816215531832714`]]}}, 
    {CapForm["Butt"], 
     Arrowheads[{{0.009734064175966759, 1.}}, Appearance -> "Projected"], 
     {RGBColor[0.2794163529298639, 1., 0.], 
      Arrow3DBox[TubeBox[{{0.161589548356302, -0.07096408840628846, 
       0.006666666666666666}, {0.17174378497703124`, -0.040147022704822705`, 
       0.006666666666666666}}, 0.0016223440293277932`]]}}, 
    {CapForm["Butt"], 
     Arrowheads[{{0.012977735631088987`, 1.}}, Appearance -> "Projected"], 
     {RGBColor[0., 1., 0.2939318355822791], 
      Arrow3DBox[TubeBox[{{0.15989851367673746`, -0.0760989229596734, 
       0.008888888888888889}, {0.1734348196565958, -0.035012188151437765`, 
       0.008888888888888889}}, 0.002162955938514831]]}}, 
    {CapForm["Butt"], 
     Arrowheads[{{0.01622047613442439, 1.}}, Appearance -> "Projected"], 
     {RGBColor[0., 1., 0.8671154699686574], 
      Arrow3DBox[TubeBox[{{0.15820867037864683`, -0.08123251634796066, 
       0.011111111111111112`}, {0.1751246629546864, -0.0298785947631505, 
       0.011111111111111112`}}, 0.0027034126890707316`]]}}, 
    {CapForm["Butt"], 
     Arrowheads[{{0.01946197747054809, 1.}}, Appearance -> "Projected"], 
     {RGBColor[0., 0.5599199296272648, 1.], 
      Arrow3DBox[TubeBox[{{0.15652037261964347`, -0.08636444429927354, 
       0.013333333333333332`}, {0.17681296071368982`, -0.024746666811837632`, 
       0.013333333333333332`}}, 0.0032436629117580146`]]}}, 
    {CapForm["Butt"], 
     Arrowheads[{{0.0227018795009476, 1.}}, Appearance -> "Projected"], 
     {RGBColor[0.012761979063878215`, 0., 1.], 
      Arrow3DBox[TubeBox[{{0.15483401330112595`, -0.0914942041279139, 
       0.015555555555555555`}, {0.17849932003220728`, -0.019616906983197256`, 
       0.015555555555555555`}}, 0.003783646583491267]]}}, 
    {CapForm["Butt"], 
     Arrowheads[{{0.025939758318860667`, 1.}}, Appearance -> "Projected"], 
     {RGBColor[0.5850862666981032, 0., 1.], 
      Arrow3DBox[TubeBox[{{0.15315003291115734`, -0.09662119684185796, 
       0.017777777777777778`}, {0.18018330042217595`, -0.014489914269253203`, 
       0.017777777777777778`}}, 0.004323293053143444]]}}, 
    {CapForm["Butt"], 
     Arrowheads[{{0.02917511338688824, 1.}}, Appearance -> "Projected"], 
     {RGBColor[1., 0., 0.8430355412248591], 
      Arrow3DBox[TubeBox[{{0.15146892912778714`, -0.1017447077112279, 0.02}, {
       0.18186440420554612`, -0.009366403399883268, 0.02}}, 
       0.004862518897814707]]}}, 
    {CapForm["Butt"], 
     Arrowheads[{{0.0032449686532749662`, 1.}}, Appearance -> "Projected"], 
     {RGBColor[1., 0.573577479986729, 0.], 
      Arrow3DBox[TubeBox[{{0.16835941439014554`, 0.050419009100977574`, 
       0.0022222222222222222`}, {0.1649739189431877, 0.060692102010133586`, 
       0.0022222222222222222`}}, 0.000540828108879161]]}}, 
    {CapForm["Butt"], 
     Arrowheads[{{0.006489729319099628, 1.}}, Appearance -> "Projected"], 
     {RGBColor[0.852881803684489, 1., 0.], 
      Arrow3DBox[TubeBox[{{0.17005188273262747`, 0.04528273556210589, 
       0.0044444444444444444`}, {0.16328145060070579`, 0.06582837554900528, 
       0.0044444444444444444`}}, 0.0010816215531832714`]]}}, 
    {CapForm["Butt"], 
     Arrowheads[{{0.009734064175966759, 1.}}, Appearance -> "Projected"], 
     {RGBColor[0.2794163529298639, 1., 0.], 
      Arrow3DBox[TubeBox[{{0.17174378497703127`, 0.040147022704822705`, 
       0.006666666666666666}, {0.16158954835630202`, 0.07096408840628846, 
       0.006666666666666666}}, 0.0016223440293277932`]]}}, 
    {CapForm["Butt"], 
     Arrowheads[{{0.01297773563108898, 1.}}, Appearance -> "Projected"], 
     {RGBColor[0., 1., 0.29393183558227864`], 
      Arrow3DBox[TubeBox[{{0.1734348196565958, 0.03501218815143777, 
       0.008888888888888889}, {0.15989851367673746`, 0.07609892295967338, 
       0.008888888888888889}}, 0.00216295593851483]]}}, 
    {CapForm["Butt"], 
     Arrowheads[{{0.016220476134424386`, 1.}}, Appearance -> "Projected"], 
     {RGBColor[0., 1., 0.8671154699686574], 
      Arrow3DBox[TubeBox[{{0.17512466295468643`, 0.029878594763150503`, 
       0.011111111111111112`}, {0.15820867037864686`, 0.08123251634796066, 
       0.011111111111111112`}}, 0.002703412689070731]]}}, 
    {CapForm["Butt"], 
     Arrowheads[{{0.019461977470548092`, 1.}}, Appearance -> "Projected"], 
     {RGBColor[0., 0.5599199296272643, 1.], 
      Arrow3DBox[TubeBox[{{0.17681296071368982`, 0.024746666811837622`, 
       0.013333333333333332`}, {0.15652037261964347`, 0.08636444429927354, 
       0.013333333333333332`}}, 0.0032436629117580155`]]}}, 
    {CapForm["Butt"], 
     Arrowheads[{{0.0227018795009476, 1.}}, Appearance -> "Projected"], 
     {RGBColor[0.012761979063876439`, 0., 1.], 
      Arrow3DBox[TubeBox[{{0.1784993200322073, 0.01961690698319727, 
       0.015555555555555555`}, {0.15483401330112595`, 0.0914942041279139, 
       0.015555555555555555`}}, 0.003783646583491267]]}}, 
    {CapForm["Butt"], 
     Arrowheads[{{0.02593975831886065, 1.}}, Appearance -> "Projected"], 
     {RGBColor[0.5850862666981014, 0., 1.], 
      Arrow3DBox[TubeBox[{{0.18018330042217592`, 0.014489914269253217`, 
       0.017777777777777778`}, {0.1531500329111573, 0.09662119684185794, 
       0.017777777777777778`}}, 0.004323293053143442]]}}, 
    {CapForm["Butt"], 
     Arrowheads[{{0.029175113386888225`, 1.}}, Appearance -> "Projected"], 
     {RGBColor[1., 0., 0.8430355412248618], 
      Arrow3DBox[TubeBox[{{0.18186440420554612`, 0.009366403399883295, 
       0.02}, {0.15146892912778714`, 0.10174470771122787`, 0.02}}, 
       0.004862518897814704]]}}, 
    {CapForm["Butt"], 
     Arrowheads[{{0.003308510285061615, 1.}}, Appearance -> "Projected"], 
     {RGBColor[1., 0.5848090365682213, 0.], 
      Arrow3DBox[TubeBox[{{0.1705657834303208, 0.16276754990301245`, 
       0.0022222222222222222`}, {0.16276754990301245`, 0.1705657834303208, 
       0.0022222222222222222`}}, 0.0005514183808436026]]}}, 
    {CapForm["Butt"], 
     Arrowheads[{{0.006617495686640004, 1.}}, Appearance -> "Projected"], 
     {RGBColor[0.830297945733532, 1., 0.], 
      Arrow3DBox[TubeBox[{{0.17446546012415975`, 0.1588678732091735, 
       0.0044444444444444444`}, {0.1588678732091735, 0.17446546012415975`, 
       0.0044444444444444444`}}, 0.0011029159477733339`]]}}, 
    {CapForm["Butt"], 
     Arrowheads[{{0.009927435959093161, 1.}}, Appearance -> "Projected"], 
     {RGBColor[0.24523614599497146`, 1., 0.], 
      Arrow3DBox[TubeBox[{{0.17836626214411655`, 0.1549670711892167, 
       0.006666666666666666}, {0.1549670711892167, 0.17836626214411655`, 
       0.006666666666666666}}, 0.0016545726598488602`]]}}, 
    {CapForm["Butt"], 
     Arrowheads[{{0.013238820218802207`, 1.}}, Appearance -> "Projected"], 
     {RGBColor[0., 1., 0.3400808915162363], 
      Arrow3DBox[TubeBox[{{0.18226876591937433`, 0.15106456741395893`, 
       0.008888888888888889}, {0.15106456741395893`, 0.1822687659193743, 
       0.008888888888888889}}, 0.0022064700364670346`]]}}, 
    {CapForm["Butt"], 
     Arrowheads[{{0.016552151861061234`, 1.}}, Appearance -> "Projected"], 
     {RGBColor[0., 1., 0.9257421464590849], 
      Arrow3DBox[TubeBox[{{0.18617356470697652`, 0.14715976862635674`, 
       0.011111111111111112`}, {0.14715976862635674`, 0.18617356470697652`, 
       0.011111111111111112`}}, 0.002758691976843539]]}}, 
    {CapForm["Butt"], 
     Arrowheads[{{0.019867953839971444`, 1.}}, Appearance -> "Projected"], 
     {RGBColor[0., 0.48815994431184606`, 1.], 
      Arrow3DBox[TubeBox[{{0.1900812748142418, 0.14325205851909145`, 
       0.013333333333333332`}, {0.14325205851909142`, 0.19008127481424184`, 
       0.013333333333333332`}}, 0.0033113256399952408`]]}}, 
    {CapForm["Butt"], 
     Arrowheads[{{0.02318677436806708, 1.}}, Appearance -> "Projected"], 
     {RGBColor[0.09847152071390042, 0., 1.], 
      Arrow3DBox[TubeBox[{{0.1939925423158377, 0.13934079101749552`, 
       0.015555555555555555`}, {0.13934079101749552`, 0.19399254231583773`, 
       0.015555555555555555`}}, 0.0038644623946778468`]]}}, 
    {CapForm["Butt"], 
     Arrowheads[{{0.026509193096195666`, 1.}}, Appearance -> "Projected"], 
     {RGBColor[0.685739000052239, 0., 1.], 
      Arrow3DBox[TubeBox[{{0.19790805033683923`, 0.13542528299649403`, 
       0.017777777777777778`}, {0.135425282996494, 0.19790805033683925`, 
       0.017777777777777778`}}, 0.004418198849365945]]}}, 
    {CapForm["Butt"], 
     Arrowheads[{{0.029835828031121753`, 1.}}, Appearance -> "Projected"], 
     {RGBColor[1., 0., 0.7262482680266062], 
      Arrow3DBox[TubeBox[{{0.20182852720520308`, 0.13150480612813018`, 
       0.02}, {0.13150480612813018`, 0.20182852720520308`, 0.02}}, 
       0.004972638005186959]]}}, 
    {CapForm["Butt"], 
     Arrowheads[{{0.0034312113778471646`, 1.}}, Appearance -> "Projected"], 
     {RGBColor[1., 0.6064975615160739, 0.], 
      Arrow3DBox[TubeBox[{{0.17157133865002538`, 0.2748371047140879, 
       0.0022222222222222222`}, {0.16176199468330787`, 0.2807184508414675, 
       0.0022222222222222222`}}, 0.0005718685629745275]]}}, 
    {CapForm["Butt"], 
     Arrowheads[{{0.006864696873698401, 1.}}, Appearance -> "Projected"], 
     {RGBColor[0.7866029060974533, 1., 0.], 
      Arrow3DBox[TubeBox[{{0.17647928081935207`, 0.2718945151662219, 
       0.0044444444444444444`}, {0.15685405251398118`, 0.28366104038933343`, 
       0.0044444444444444444`}}, 0.0011441161456164002`]]}}, 
    {CapForm["Butt"], 
     Arrowheads[{{0.01030276236545778, 1.}}, Appearance -> "Projected"], 
     {RGBColor[0.17889381812137972`, 1., 0.], 
      Arrow3DBox[TubeBox[{{0.18139380917875012`, 0.2689480661313196, 
       0.006666666666666666}, {0.15193952415458314`, 0.2866074894242358, 
       0.006666666666666666}}, 0.0017171270609096301`]]}}, 
    {CapForm["Butt"], 
     Arrowheads[{{0.013747777551177492`, 1.}}, Appearance -> "Projected"], 
     {RGBColor[0., 1., 0.43004369095035777`], 
      Arrow3DBox[TubeBox[{{0.1863183318034094, 0.2659957613209697, 
       0.008888888888888889}, {0.14701500152992386`, 0.2895597942345857, 
       0.008888888888888889}}, 0.002291296258529582]]}}, 
    {CapForm["Butt"], 
     Arrowheads[{{0.017202208745238725`, 1.}}, Appearance -> "Projected"], 
     {RGBColor[0., 0.959354435568526, 1.], 
      Arrow3DBox[TubeBox[{{0.19125639615729104`, 0.2630355237850666, 
       0.011111111111111112`}, {0.14207693717604222`, 0.2925200317704887, 
       0.011111111111111112`}}, 0.002867034790873121]]}}, 
    {CapForm["Butt"], 
     Arrowheads[{{0.020668653251926617`, 1.}}, Appearance -> "Projected"], 
     {RGBColor[0., 0.3466291007172253, 1.], 
      Arrow3DBox[TubeBox[{{0.19621173869115952`, 0.26006516722666917`, 
       0.013333333333333332`}, {0.13712159464217372`, 0.2954903883288862, 
       0.013333333333333332`}}, 0.0034447755419877695`]]}}, 
    {CapForm["Butt"], 
     Arrowheads[{{0.024149875356504844`, 1.}}, Appearance -> "Projected"], 
     {RGBColor[0.2687083078592414, 0., 1.], 
      Arrow3DBox[TubeBox[{{0.20118833678060277`, 0.2570823659774424, 
       0.015555555555555555`}, {0.1321449965527305, 0.298473189578113, 
       0.015555555555555555`}}, 0.004024979226084141]]}}, 
    {CapForm["Butt"], 
     Arrowheads[{{0.027648844001850716`, 1.}}, Appearance -> "Projected"], 
     {RGBColor[0.8871825775951221, 0., 1.], 
      Arrow3DBox[TubeBox[{{0.20619046310397157`, 0.25408462357987754`, 
       0.017777777777777778`}, {0.1271428702293617, 0.30147093197567776`, 
       0.017777777777777778`}}, 0.004608140666975119]]}}, 
    {CapForm["Butt"], 
     Arrowheads[{{0.031168773463091916`, 1.}}, Appearance -> "Projected"], 
     {RGBColor[1., 0., 0.490638139387106], 
      Arrow3DBox[TubeBox[{{0.21122274435589483`, 0.25106923888433735`, 
       0.02}, {0.12211058897743843`, 0.30448631667121795`, 0.02}}, 
       0.005194795577181986]]}}, 
    {CapForm["Butt"], 
     Arrowheads[{{0.0037155607759840068`, 1.}}, Appearance -> "Projected"], 
     {RGBColor[1., 0.6567588825474715, 0.], 
      Arrow3DBox[TubeBox[{{0.17236128984477045`, 0.3864558706733248, 
       0.0022222222222222222`}, {0.16097204348856284`, 0.3913219071044529, 
       0.0022222222222222222`}}, 0.0006192601293306678]]}}, 
    {CapForm["Butt"], 
     Arrowheads[{{0.007435330366606985, 1.}}, Appearance -> "Projected"], 
     {RGBColor[0.6857382889529393, 1., 0.], 
      Arrow3DBox[TubeBox[{{0.1780623855786808, 0.384020147826196, 
       0.0044444444444444444`}, {0.15527094775465247`, 0.3937576299515817, 
       0.0044444444444444444`}}, 0.0012392217277678308`]]}}, 
    {CapForm["Butt"], 
     Arrowheads[{{0.011163516596988355`, 1.}}, Appearance -> "Projected"], 
     {RGBColor[0.026747743455620476`, 1., 0.], 
      Arrow3DBox[TubeBox[{{0.1837764251184661, 0.38157901685952905`, 
       0.006666666666666666}, {0.14955690821486714`, 0.3961987609182486, 
       0.006666666666666666}}, 0.001860586099498059]]}}, 
    {CapForm["Butt"], 
     Arrowheads[{{0.014904325155785636`, 1.}}, Appearance -> "Projected"], 
     {RGBColor[0., 1., 0.6344739124461252], 
      Arrow3DBox[TubeBox[{{0.18950987686261525`, 0.37912977667842407`, 
       0.008888888888888889}, {0.14382345647071798`, 0.39864800109935367`, 
       0.008888888888888889}}, 0.0024840541926309393`]]}}, 
    {CapForm["Butt"], 
     Arrowheads[{{0.018661958130051913`, 1.}}, Appearance -> "Projected"], 
     {RGBColor[0., 0.7013305644570722, 1.], 
      Arrow3DBox[TubeBox[{{0.19526920432775324`, 0.3766697300466337, 
       0.011111111111111112`}, {0.13806412900558002`, 0.401108047731144, 
       0.011111111111111112`}}, 0.0031103263550086523`]]}}, 
    {CapForm["Butt"], 
     Arrowheads[{{0.02244061203597849, 1.}}, Appearance -> "Projected"], 
     {RGBColor[0., 0.03341940207465921, 1.], 
      Arrow3DBox[TubeBox[{{0.20106086335368123`, 0.37419618540107574`, 
       0.013333333333333332`}, {0.13227246997965203`, 0.40358159237670194`, 
       0.013333333333333332`}}, 0.003740102005996415]]}}, 
    {CapForm["Butt"], 
     Arrowheads[{{0.026244475178474856`, 1.}}, Appearance -> "Projected"], 
     {RGBColor[0.6389477202657909, 0., 1.], 
      Arrow3DBox[TubeBox[{{0.20689129828704872`, 0.37170645912318345`, 
       0.015555555555555555`}, {0.12644203504628454`, 0.4060713186545942, 
       0.015555555555555555`}}, 0.004374079196412476]]}}, 
    {CapForm["Butt"], 
     Arrowheads[{{0.030077724180255366`, 1.}}, Appearance -> "Projected"], 
     {RGBColor[1., 0., 0.6834909416966513], 
      Arrow3DBox[TubeBox[{{0.2127669368990218, 0.3691978783704867, 
       0.017777777777777778`}, {0.12056639643431147`, 0.408579899407291, 
       0.017777777777777778`}}, 0.005012954030042561]]}}, 
    {CapForm["Butt"], 
     Arrowheads[{{0.03394451943981518, 1.}}, Appearance -> "Projected"], 
     {RGBColor[1., 0., 2.4868995751603507`*^-14], 
      Arrow3DBox[TubeBox[{{0.21869418367578078`, 0.36666778464390787`, 
       0.02}, {0.11463914965755248`, 0.4111099931338698, 0.02}}, 
       0.005657419906635863]]}}, 
    {CapForm["Butt"], 
     Arrowheads[{{0.0017163523255962956`, 1.}}, Appearance -> "Projected"], 
     {RGBColor[1., 0.3033807555248089, 0.], 
      Arrow3DBox[TubeBox[{{0.27544186074382376`, -0.3905400856647609, 
       0.0022222222222222222`}, {0.2801136948117316, -0.3872376921130169, 
       0.0022222222222222222`}}, 0.00028605872093271593`]]}}, 
    {CapForm["Butt"], 
     Arrowheads[{{0.0034395727958851942`, 1.}}, Appearance -> "Projected"], 
     {RGBColor[1., 0.6079755175766138, 0.], 
      Arrow3DBox[TubeBox[{{0.273096578014348, -0.3921978639639878, 
       0.0044444444444444444`}, {0.2824589775412073, -0.38557991381379, 
       0.0044444444444444444`}}, 0.0005732621326475323]]}}, 
    {CapForm["Butt"], 
     Arrowheads[{{0.0051765824786321486`, 1.}}, Appearance -> "Projected"], 
     {RGBColor[1., 0.9150076473129134, 0.], 
      Arrow3DBox[TubeBox[{{0.2707324916054114, -0.393868855853273, 
       0.006666666666666666}, {0.28482306395014395`, -0.38390892192450476`, 
       0.006666666666666666}}, 0.0008627637464386915]]}}, 
    {CapForm["Butt"], 
     Arrowheads[{{0.006934408615293919, 1.}}, Appearance -> "Projected"], 
     {RGBColor[0.7742807269511345, 1., 0.], 
      Arrow3DBox[TubeBox[{{0.26834001850802697`, -0.39555979479765646`, 
       0.008888888888888889}, {0.2872155370475284, -0.3822179829801213, 
       0.008888888888888889}}, 0.001155734769215653]]}}, 
    {CapForm["Butt"], 
     Arrowheads[{{0.008720238753518494, 1.}}, Appearance -> "Projected"], 
     {RGBColor[0.4586191413350691, 1., 0.], 
      Arrow3DBox[TubeBox[{{0.2659093567453276, -0.3972775673553805, 
       0.011111111111111112`}, {0.2896461988102277, -0.38050021042239723`, 
       0.011111111111111112`}}, 0.0014533731255864156`]]}}, 
    {CapForm["Butt"], 
     Arrowheads[{{0.010541476978506359`, 1.}}, Appearance -> "Projected"], 
     {RGBColor[0.1366988569927967, 1., 0.], 
      Arrow3DBox[TubeBox[{{0.2634304085603511, -0.3990292668736204, 
       0.013333333333333332`}, {0.2921251469952043, -0.3787485109041574, 
       0.013333333333333332`}}, 0.0017569128297510598`]]}}, 
    {CapForm["Butt"], 
     Arrowheads[{{0.012405802119137561`, 1.}}, Appearance -> "Projected"], 
     {RGBColor[0., 1., 0.1928374283454084], 
      Arrow3DBox[TubeBox[{{0.2608927009030293, -0.4008222490652296, 
       0.015555555555555555`}, {0.2946628546525261, -0.3769555287125481, 
       0.015555555555555555`}}, 0.0020676336865229268`]]}}, 
    {CapForm["Butt"], 
     Arrowheads[{{0.014321227863183081`, 1.}}, Appearance -> "Projected"], 
     {RGBColor[0., 1., 0.531406206278759], 
      Arrow3DBox[TubeBox[{{0.2582853033052246, -0.4026641894024977, 
       0.017777777777777778`}, {0.29727025225033077`, -0.3751135883752801, 
       0.017777777777777778`}}, 0.0023868713105305137`]]}}, 
    {CapForm["Butt"], 
     Arrowheads[{{0.016296166742382073`, 1.}}, Appearance -> "Projected"], 
     {RGBColor[0., 1., 0.8804944676755291], 
      Arrow3DBox[TubeBox[{{0.25559674046441544`, -0.40456314419892264`, 
       0.02}, {0.29995881509113986`, -0.37321463357885515`, 0.02}}, 
       0.0027160277903970124`]]}}, 
    {CapForm["Butt"], 
     Arrowheads[{{0.003213793818528605, 1.}}, Appearance -> "Projected"], 
     {RGBColor[1., 0.5680670467396242, 0.], 
      Arrow3DBox[TubeBox[{{0.27399028544041604`, -0.28156527011513943`, 
       0.0022222222222222222`}, {0.2815652701151393, -0.27399028544041615`, 
       0.0022222222222222222`}}, 0.0005356323030881008]]}}, 
    {CapForm["Butt"], 
     Arrowheads[{{0.0064245472514796705`, 1.}}, Appearance -> "Projected"], 
     {RGBColor[0.8644033220967065, 1., 0.], 
      Arrow3DBox[TubeBox[{{0.27020637623181987`, -0.28534917932373555`, 
       0.0044444444444444444`}, {0.28534917932373544`, -0.27020637623182, 
       0.0044444444444444444`}}, 0.0010707578752466118`]]}}, 
    {CapForm["Butt"], 
     Arrowheads[{{0.009629164999731364, 1.}}, Appearance -> "Projected"], 
     {RGBColor[0.2979582285492359, 1., 0.], 
      Arrow3DBox[TubeBox[{{0.26642969799698735`, -0.2891258575585681, 
       0.006666666666666666}, {0.28912585755856807`, -0.26642969799698746`, 
       0.006666666666666666}}, 0.0016048608332885608`]]}}, 
    {CapForm["Butt"], 
     Arrowheads[{{0.0128244415220404, 1.}}, Appearance -> "Projected"], 
     {RGBColor[0., 1., 0.2668357190524153], 
      Arrow3DBox[TubeBox[{{0.2626640285025025, -0.29289152705305294`, 
       0.008888888888888889}, {0.2928915270530528, -0.26266402850250264`, 
       0.008888888888888889}}, 0.0021374069203400664`]]}}, 
    {CapForm["Butt"], 
     Arrowheads[{{0.016007004641817944`, 1.}}, Appearance -> "Projected"], 
     {RGBColor[0., 1., 0.8293824580781921], 
      Arrow3DBox[TubeBox[{{0.25891334189658766`, -0.2966422136589678, 
       0.011111111111111112`}, {0.2966422136589677, -0.25891334189658777`, 
       0.011111111111111112`}}, 0.0026678341069696575`]]}}, 
    {CapForm["Butt"], 
     Arrowheads[{{0.019173256746355154`, 1.}}, Appearance -> "Projected"], 
     {RGBColor[0., 0.6109539219696543, 1.], 
      Arrow3DBox[TubeBox[{{0.25518187800648023`, -0.3003736775490752, 
       0.013333333333333332`}, {0.3003736775490751, -0.2551818780064804, 
       0.013333333333333332`}}, 0.0031955427910591925`]]}}, 
    {CapForm["Butt"], 
     Arrowheads[{{0.022319313624990598`, 1.}}, Appearance -> "Projected"], 
     {RGBColor[0., 0.05485999036219713, 1.], 
      Arrow3DBox[TubeBox[{{0.25147421441834406`, -0.30408134113721136`, 
       0.015555555555555555`}, {0.3040813411372113, -0.2514742144183442, 
       0.015555555555555555`}}, 0.0037198856041650995`]]}}, 
    {CapForm["Butt"], 
     Arrowheads[{{0.02544094093770264, 1.}}, Appearance -> "Projected"], 
     {RGBColor[0.4969157951068146, 0., 1.], 
      Arrow3DBox[TubeBox[{{0.247795341349751, -0.3077602142058044, 
       0.017777777777777778`}, {0.30776021420580435`, -0.2477953413497512, 
       0.017777777777777778`}}, 0.00424015682295044]]}}, 
    {CapForm["Butt"], 
     Arrowheads[{{0.02853348618306794, 1.}}, Appearance -> "Projected"], 
     {RGBColor[1., 0., 0.9564489371560496], 
      Arrow3DBox[TubeBox[{{0.24415074182621097`, -0.3114048137293444, 0.02}, {
       0.31140481372934437`, -0.24415074182621116`, 0.02}}, 
       0.0047555810305113235`]]}}, 
    {CapForm["Butt"], 
     Arrowheads[{{0.0034312113778468887`, 1.}}, Appearance -> "Projected"], 
     {RGBColor[1., 0.6064975615160272, 0.], 
      Arrow3DBox[TubeBox[{{0.27483710471408807`, -0.17157133865002505`, 
       0.0022222222222222222`}, {0.28071845084146724`, -0.16176199468330835`, 
       0.0022222222222222222`}}, 0.0005718685629744815]]}}, 
    {CapForm["Butt"], 
     Arrowheads[{{0.0068646968736978745`, 1.}}, Appearance -> "Projected"], 
     {RGBColor[0.786602906097547, 1., 0.], 
      Arrow3DBox[TubeBox[{{0.2718945151662223, -0.17647928081935133`, 
       0.0044444444444444444`}, {0.2836610403893331, -0.15685405251398202`, 
       0.0044444444444444444`}}, 0.0011441161456163123`]]}}, 
    {CapForm["Butt"], 
     Arrowheads[{{0.010302762365456979`, 1.}}, Appearance -> "Projected"], 
     {RGBColor[0.17889381812152072`, 1., 0.], 
      Arrow3DBox[TubeBox[{{0.2689480661313202, -0.18139380917874898`, 
       0.006666666666666666}, {0.2866074894242352, -0.1519395241545844, 
       0.006666666666666666}}, 0.0017171270609094966`]]}}, 
    {CapForm["Butt"], 
     Arrowheads[{{0.01374777755117642, 1.}}, Appearance -> "Projected"], 
     {RGBColor[0., 1., 0.4300436909501686], 
      Arrow3DBox[TubeBox[{{0.26599576132097047`, -0.18631833180340787`, 
       0.008888888888888889}, {0.28955979423458483`, -0.1470150015299255, 
       0.008888888888888889}}, 0.002291296258529403]]}}, 
    {CapForm["Butt"], 
     Arrowheads[{{0.017202208745237375`, 1.}}, Appearance -> "Projected"], 
     {RGBColor[0., 0.9593544355687653, 1.], 
      Arrow3DBox[TubeBox[{{0.26303552378506767`, -0.1912563961572891, 
       0.011111111111111112`}, {0.2925200317704877, -0.1420769371760443, 
       0.011111111111111112`}}, 0.002867034790872896]]}}, 
    {CapForm["Butt"], 
     Arrowheads[{{0.02066865325192499, 1.}}, Appearance -> "Projected"], 
     {RGBColor[0., 0.34662910071751263`, 1.], 
      Arrow3DBox[TubeBox[{{0.2600651672266704, -0.19621173869115716`, 
       0.013333333333333332`}, {0.2954903883288849, -0.1371215946421762, 
       0.013333333333333332`}}, 0.0034447755419874985`]]}}, 
    {CapForm["Butt"], 
     Arrowheads[{{0.02414987535650293, 1.}}, Appearance -> "Projected"], 
     {RGBColor[0.2687083078589012, 0., 1.], 
      Arrow3DBox[TubeBox[{{0.2570823659774438, -0.20118833678059997`, 
       0.015555555555555555`}, {0.29847318957811153`, -0.1321449965527334, 
       0.015555555555555555`}}, 0.0040249792260838215`]]}}, 
    {CapForm["Butt"], 
     Arrowheads[{{0.0276488440018485, 1.}}, Appearance -> "Projected"], 
     {RGBColor[0.8871825775947269, 0., 1.], 
      Arrow3DBox[TubeBox[{{0.25408462357987927`, -0.20619046310396832`, 
       0.017777777777777778`}, {0.3014709319756761, -0.12714287022936505`, 
       0.017777777777777778`}}, 0.00460814066697475]]}}, 
    {CapForm["Butt"], 
     Arrowheads[{{0.031168773463089373`, 1.}}, Appearance -> "Projected"], 
     {RGBColor[1., 0., 0.49063813938755363`], 
      Arrow3DBox[TubeBox[{{0.2510692388843393, -0.2112227443558911, 0.02}, {
       0.304486316671216, -0.12211058897744226`, 0.02}}, 
       0.005194795577181562]]}}, 
    {CapForm["Butt"], 
     Arrowheads[{{0.0032790337237220604`, 1.}}, Appearance -> "Projected"], 
     {RGBColor[1., 0.5795987884646691, 0.], 
      Arrow3DBox[TubeBox[{{0.27671343297707424`, -0.060915966872066483`, 
       0.0022222222222222222`}, {0.2788421225784812, -0.05019514423904468, 
       0.0022222222222222222`}}, 0.0005465056206203434]]}}, 
    {CapForm["Butt"], 
     Arrowheads[{{0.006557682300013294, 1.}}, Appearance -> "Projected"], 
     {RGBColor[0.840870501353197, 1., 0.], 
      Arrow3DBox[TubeBox[{{0.2756492984682552, -0.06627576549938548, 
       0.0044444444444444444`}, {0.2799062570873001, -0.04483534561172568, 
       0.0044444444444444444`}}, 0.0010929470500022156`]]}}, 
    {CapForm["Butt"], 
     Arrowheads[{{0.00983554847595669, 1.}}, Appearance -> "Projected"], 
     {RGBColor[0.2614780874900142, 1., 0.], 
      Arrow3DBox[TubeBox[{{0.27458558948320216`, -0.07163431915713793, 
       0.006666666666666666}, {0.2809699660723532, -0.03947679195397323, 
       0.006666666666666666}}, 0.0016392580793261151`]]}}, 
    {CapForm["Butt"], 
     Arrowheads[{{0.01311221061638101, 1.}}, Appearance -> "Projected"], 
     {RGBColor[0., 1., 0.31770150223443805`], 
      Arrow3DBox[TubeBox[{{0.2735225311970103, -0.07699095610397387, 
       0.008888888888888889}, {0.28203302435854505`, -0.03412015500713729, 
       0.008888888888888889}}, 0.0021853684360635017`]]}}, 
    {CapForm["Butt"], 
     Arrowheads[{{0.01638721003280615, 1.}}, Appearance -> "Projected"], 
     {RGBColor[0., 1., 0.8965871904938014], 
      Arrow3DBox[TubeBox[{{0.27246036387874495`, -0.08234494462685255, 
       0.011111111111111112`}, {0.28309519167681035`, -0.02876616648425862, 
       0.011111111111111112`}}, 0.002731201672134358]]}}, 
    {CapForm["Butt"], 
     Arrowheads[{{0.0196600375345537, 1.}}, Appearance -> "Projected"], 
     {RGBColor[0., 0.5249110267573727, 1.], 
      Arrow3DBox[TubeBox[{{0.27139934833890916`, -0.08769547126716097, 
       0.013333333333333332`}, {0.2841562072166462, -0.02341563984395019, 
       0.013333333333333332`}}, 0.003276672922425617]]}}, 
    {CapForm["Butt"], 
     Arrowheads[{{0.022930119119995585`, 1.}}, Appearance -> "Projected"], 
     {RGBColor[0.0531053905154959, 0., 1.], 
      Arrow3DBox[TubeBox[{{0.2703397716993471, -0.09304161764924099, 
       0.015555555555555555`}, {0.28521578385620827`, -0.01806949346187018, 
       0.015555555555555555`}}, 0.003821686519999264]]}}, 
    {CapForm["Butt"], 
     Arrowheads[{{0.026196800716501184`, 1.}}, Appearance -> "Projected"], 
     {RGBColor[0.6305208290750297, 0., 1.], 
      Arrow3DBox[TubeBox[{{0.2692819535153563, -0.09838233576168931, 
       0.017777777777777778`}, {0.2862736020401991, -0.012728775349421857`, 
       0.017777777777777778`}}, 0.004366133452750197]]}}, 
    {CapForm["Butt"], 
     Arrowheads[{{0.029459331384116702`, 1.}}, Appearance -> "Projected"], 
     {RGBColor[1., 0., 0.792797446489292], 
      Arrow3DBox[TubeBox[{{0.2682262524789865, -0.10371642074271195`, 0.02}, {
       0.28732930307656884`, -0.007394690368399216, 0.02}}, 
       0.00490988856401945]]}}, 
    {CapForm["Butt"], 
     Arrowheads[{{0.0032790337237220478`, 1.}}, Appearance -> "Projected"], 
     {RGBColor[1., 0.5795987884646668, 0.], 
      Arrow3DBox[TubeBox[{{0.2788421225784811, 0.0501951442390447, 
       0.0022222222222222222`}, {0.2767134329770742, 0.06091596687206646, 
       0.0022222222222222222`}}, 0.0005465056206203413]]}}, 
    {CapForm["Butt"], 
     Arrowheads[{{0.006557682300013268, 1.}}, Appearance -> "Projected"], 
     {RGBColor[0.8408705013532014, 1., 0.], 
      Arrow3DBox[TubeBox[{{0.2799062570873001, 0.04483534561172572, 
       0.0044444444444444444`}, {0.27564929846825525`, 0.06627576549938544, 
       0.0044444444444444444`}}, 0.0010929470500022113`]]}}, 
    {CapForm["Butt"], 
     Arrowheads[{{0.009835548475956647, 1.}}, Appearance -> "Projected"], 
     {RGBColor[0.2614780874900209, 1., 0.], 
      Arrow3DBox[TubeBox[{{0.28096996607235314`, 0.03947679195397329, 
       0.006666666666666666}, {0.27458558948320216`, 0.07163431915713786, 
       0.006666666666666666}}, 0.0016392580793261077`]]}}, 
    {CapForm["Butt"], 
     Arrowheads[{{0.013112210616380956`, 1.}}, Appearance -> "Projected"], 
     {RGBColor[0., 1., 0.3177015022344296], 
      Arrow3DBox[TubeBox[{{0.282033024358545, 0.03412015500713737, 
       0.008888888888888889}, {0.27352253119701037`, 0.07699095610397379, 
       0.008888888888888889}}, 0.0021853684360634926`]]}}, 
    {CapForm["Butt"], 
     Arrowheads[{{0.016387210032806084`, 1.}}, Appearance -> "Projected"], 
     {RGBColor[0., 1., 0.8965871904937908], 
      Arrow3DBox[TubeBox[{{0.28309519167681035`, 0.02876616648425872, 
       0.011111111111111112`}, {0.272460363878745, 0.08234494462685243, 
       0.011111111111111112`}}, 0.0027312016721343473`]]}}, 
    {CapForm["Butt"], 
     Arrowheads[{{0.019660037534553622`, 1.}}, Appearance -> "Projected"], 
     {RGBColor[0., 0.5249110267573869, 1.], 
      Arrow3DBox[TubeBox[{{0.28415620721664614`, 0.023415639843950314`, 
       0.013333333333333332`}, {0.2713993483389092, 0.08769547126716085, 
       0.013333333333333332`}}, 0.003276672922425604]]}}, 
    {CapForm["Butt"], 
     Arrowheads[{{0.022930119119995485`, 1.}}, Appearance -> "Projected"], 
     {RGBColor[0.05310539051547902, 0., 1.], 
      Arrow3DBox[TubeBox[{{0.2852157838562082, 0.018069493461870326`, 
       0.015555555555555555`}, {0.27033977169934714`, 0.09304161764924083, 
       0.015555555555555555`}}, 0.0038216865199992476`]]}}, 
    {CapForm["Butt"], 
     Arrowheads[{{0.026196800716501076`, 1.}}, Appearance -> "Projected"], 
     {RGBColor[0.6305208290750102, 0., 1.], 
      Arrow3DBox[TubeBox[{{0.286273602040199, 0.012728775349422024`, 
       0.017777777777777778`}, {0.2692819535153564, 0.09838233576168914, 
       0.017777777777777778`}}, 0.00436613345275018]]}}, 
    {CapForm["Butt"], 
     Arrowheads[{{0.02945933138411657, 1.}}, Appearance -> "Projected"], 
     {RGBColor[1., 0., 0.7927974464893142], 
      Arrow3DBox[TubeBox[{{0.28732930307656873`, 0.007394690368399411, 
       0.02}, {0.2682262524789866, 0.10371642074271176`, 0.02}}, 
       0.004909888564019429]]}}, 
    {CapForm["Butt"], 
     Arrowheads[{{0.0034312113778471646`, 1.}}, Appearance -> "Projected"], 
     {RGBColor[1., 0.6064975615160739, 0.], 
      Arrow3DBox[TubeBox[{{0.28071845084146746`, 0.16176199468330787`, 
       0.0022222222222222222`}, {0.27483710471408784`, 0.17157133865002538`, 
       0.0022222222222222222`}}, 0.0005718685629745275]]}}, 
    {CapForm["Butt"], 
     Arrowheads[{{0.006864696873698401, 1.}}, Appearance -> "Projected"], 
     {RGBColor[0.7866029060974533, 1., 0.], 
      Arrow3DBox[TubeBox[{{0.2836610403893335, 0.15685405251398118`, 
       0.0044444444444444444`}, {0.27189451516622193`, 0.17647928081935207`, 
       0.0044444444444444444`}}, 0.0011441161456164002`]]}}, 
    {CapForm["Butt"], 
     Arrowheads[{{0.01030276236545778, 1.}}, Appearance -> "Projected"], 
     {RGBColor[0.17889381812137972`, 1., 0.], 
      Arrow3DBox[TubeBox[{{0.28660748942423575`, 0.15193952415458314`, 
       0.006666666666666666}, {0.26894806613131955`, 0.18139380917875012`, 
       0.006666666666666666}}, 0.0017171270609096301`]]}}, 
    {CapForm["Butt"], 
     Arrowheads[{{0.013747777551177492`, 1.}}, Appearance -> "Projected"], 
     {RGBColor[0., 1., 0.43004369095035777`], 
      Arrow3DBox[TubeBox[{{0.28955979423458567`, 0.14701500152992386`, 
       0.008888888888888889}, {0.26599576132096964`, 0.1863183318034094, 
       0.008888888888888889}}, 0.002291296258529582]]}}, 
    {CapForm["Butt"], 
     Arrowheads[{{0.017202208745238735`, 1.}}, Appearance -> "Projected"], 
     {RGBColor[0., 0.959354435568526, 1.], 
      Arrow3DBox[TubeBox[{{0.29252003177048874`, 0.14207693717604222`, 
       0.011111111111111112`}, {0.2630355237850666, 0.19125639615729104`, 
       0.011111111111111112`}}, 0.0028670347908731227`]]}}, 
    {CapForm["Butt"], 
     Arrowheads[{{0.020668653251926617`, 1.}}, Appearance -> "Projected"], 
     {RGBColor[0., 0.3466291007172253, 1.], 
      Arrow3DBox[TubeBox[{{0.2954903883288862, 0.13712159464217374`, 
       0.013333333333333332`}, {0.26006516722666917`, 0.19621173869115954`, 
       0.013333333333333332`}}, 0.0034447755419877695`]]}}, 
    {CapForm["Butt"], 
     Arrowheads[{{0.024149875356504844`, 1.}}, Appearance -> "Projected"], 
     {RGBColor[0.2687083078592414, 0., 1.], 
      Arrow3DBox[TubeBox[{{0.298473189578113, 0.1321449965527305, 
       0.015555555555555555`}, {0.2570823659774424, 0.20118833678060277`, 
       0.015555555555555555`}}, 0.004024979226084141]]}}, 
    {CapForm["Butt"], 
     Arrowheads[{{0.02764884400185073, 1.}}, Appearance -> "Projected"], 
     {RGBColor[0.8871825775951221, 0., 1.], 
      Arrow3DBox[TubeBox[{{0.3014709319756778, 0.1271428702293617, 
       0.017777777777777778`}, {0.25408462357987754`, 0.20619046310397157`, 
       0.017777777777777778`}}, 0.004608140666975122]]}}, 
    {CapForm["Butt"], 
     Arrowheads[{{0.031168773463091923`, 1.}}, Appearance -> "Projected"], 
     {RGBColor[1., 0., 0.4906381393871051], 
      Arrow3DBox[TubeBox[{{0.304486316671218, 0.12211058897743843`, 0.02}, {
       0.25106923888433735`, 0.21122274435589483`, 0.02}}, 
       0.005194795577181987]]}}, 
    {CapForm["Butt"], 
     Arrowheads[{{0.003213793818528581, 1.}}, Appearance -> "Projected"], 
     {RGBColor[1., 0.5680670467396173, 0.], 
      Arrow3DBox[TubeBox[{{0.28156527011513927`, 0.2739902854404161, 
       0.0022222222222222222`}, {0.27399028544041604`, 0.2815652701151393, 
       0.0022222222222222222`}}, 0.0005356323030880968]]}}, 
    {CapForm["Butt"], 
     Arrowheads[{{0.006424547251479599, 1.}}, Appearance -> "Projected"], 
     {RGBColor[0.8644033220967207, 1., 0.], 
      Arrow3DBox[TubeBox[{{0.2853491793237354, 0.27020637623182, 
       0.0044444444444444444`}, {0.27020637623182, 0.2853491793237354, 
       0.0044444444444444444`}}, 0.0010707578752466]]}}, 
    {CapForm["Butt"], 
     Arrowheads[{{0.009629164999731234, 1.}}, Appearance -> "Projected"], 
     {RGBColor[0.2979582285492568, 1., 0.], 
      Arrow3DBox[TubeBox[{{0.2891258575585679, 0.26642969799698746`, 
       0.006666666666666666}, {0.2664296979969875, 0.28912585755856784`, 
       0.006666666666666666}}, 0.0016048608332885391`]]}}, 
    {CapForm["Butt"], 
     Arrowheads[{{0.012824441522040245`, 1.}}, Appearance -> "Projected"], 
     {RGBColor[0., 1., 0.2668357190523878], 
      Arrow3DBox[TubeBox[{{0.29289152705305266`, 0.2626640285025027, 
       0.008888888888888889}, {0.2626640285025027, 0.29289152705305266`, 
       0.008888888888888889}}, 0.002137406920340041]]}}, 
    {CapForm["Butt"], 
     Arrowheads[{{0.016007004641817747`, 1.}}, Appearance -> "Projected"], 
     {RGBColor[0., 1., 0.8293824580781566], 
      Arrow3DBox[TubeBox[{{0.2966422136589675, 0.2589133418965879, 
       0.011111111111111112`}, {0.2589133418965879, 0.2966422136589674, 
       0.011111111111111112`}}, 0.0026678341069696246`]]}}, 
    {CapForm["Butt"], 
     Arrowheads[{{0.01917325674635492, 1.}}, Appearance -> "Projected"], 
     {RGBColor[0., 0.6109539219696969, 1.], 
      Arrow3DBox[TubeBox[{{0.3003736775490748, 0.25518187800648057`, 
       0.013333333333333332`}, {0.2551818780064805, 0.30037367754907485`, 
       0.013333333333333332`}}, 0.003195542791059153]]}}, 
    {CapForm["Butt"], 
     Arrowheads[{{0.02231931362499034, 1.}}, Appearance -> "Projected"], 
     {RGBColor[0., 0.05485999036224687, 1.], 
      Arrow3DBox[TubeBox[{{0.30408134113721097`, 0.2514742144183444, 
       0.015555555555555555`}, {0.2514742144183444, 0.30408134113721097`, 
       0.015555555555555555`}}, 0.003719885604165057]]}}, 
    {CapForm["Butt"], 
     Arrowheads[{{0.025440940937702307`, 1.}}, Appearance -> "Projected"], 
     {RGBColor[0.49691579510675865`, 0., 1.], 
      Arrow3DBox[TubeBox[{{0.3077602142058039, 0.24779534134975142`, 
       0.017777777777777778`}, {0.24779534134975142`, 0.3077602142058039, 
       0.017777777777777778`}}, 0.004240156822950384]]}}, 
    {CapForm["Butt"], 
     Arrowheads[{{0.02853348618306758, 1.}}, Appearance -> "Projected"], 
     {RGBColor[1., 0., 0.9564489371561145], 
      Arrow3DBox[TubeBox[{{0.3114048137293439, 0.24415074182621144`, 0.02}, {
       0.24415074182621144`, 0.3114048137293439, 0.02}}, 
       0.004755581030511263]]}}, 
    {CapForm["Butt"], 
     Arrowheads[{{0.0017163523255962956`, 1.}}, Appearance -> "Projected"], 
     {RGBColor[1., 0.30338075552481014`, 0.], 
      Arrow3DBox[TubeBox[{{0.2801136948117316, 0.38723769211301684`, 
       0.0022222222222222222`}, {0.27544186074382376`, 0.39054008566476084`, 
       0.0022222222222222222`}}, 0.00028605872093271593`]]}}, 
    {CapForm["Butt"], 
     Arrowheads[{{0.003439572795885208, 1.}}, Appearance -> "Projected"], 
     {RGBColor[1., 0.6079755175766162, 0.], 
      Arrow3DBox[TubeBox[{{0.28245897754120736`, 0.3855799138137899, 
       0.0044444444444444444`}, {0.273096578014348, 0.39219786396398776`, 
       0.0044444444444444444`}}, 0.0005732621326475347]]}}, 
    {CapForm["Butt"], 
     Arrowheads[{{0.005176582478632163, 1.}}, Appearance -> "Projected"], 
     {RGBColor[1., 0.915007647312917, 0.], 
      Arrow3DBox[TubeBox[{{0.28482306395014395`, 0.3839089219245047, 
       0.006666666666666666}, {0.27073249160541135`, 0.39386885585327297`, 
       0.006666666666666666}}, 0.0008627637464386938]]}}, 
    {CapForm["Butt"], 
     Arrowheads[{{0.006934408615293941, 1.}}, Appearance -> "Projected"], 
     {RGBColor[0.77428072695113, 1., 0.], 
      Arrow3DBox[TubeBox[{{0.28721553704752845`, 0.3822179829801212, 
       0.008888888888888889}, {0.26834001850802697`, 0.39555979479765646`, 
       0.008888888888888889}}, 0.001155734769215657]]}}, 
    {CapForm["Butt"], 
     Arrowheads[{{0.008720238753518517, 1.}}, Appearance -> "Projected"], 
     {RGBColor[0.45861914133506376`, 1., 0.], 
      Arrow3DBox[TubeBox[{{0.28964619881022774`, 0.3805002104223972, 
       0.011111111111111112`}, {0.2659093567453276, 0.3972775673553805, 
       0.011111111111111112`}}, 0.0014533731255864195`]]}}, 
    {CapForm["Butt"], 
     Arrowheads[{{0.01054147697850639, 1.}}, Appearance -> "Projected"], 
     {RGBColor[0.13669885699279005`, 1., 0.], 
      Arrow3DBox[TubeBox[{{0.2921251469952043, 0.3787485109041573, 
       0.013333333333333332`}, {0.26343040856035105`, 0.3990292668736204, 
       0.013333333333333332`}}, 0.001756912829751065]]}}, 
    {CapForm["Butt"], 
     Arrowheads[{{0.012405802119137594`, 1.}}, Appearance -> "Projected"], 
     {RGBColor[0., 1., 0.1928374283454164], 
      Arrow3DBox[TubeBox[{{0.2946628546525261, 0.37695552871254806`, 
       0.015555555555555555`}, {0.26089270090302924`, 0.4008222490652297, 
       0.015555555555555555`}}, 0.0020676336865229324`]]}}, 
    {CapForm["Butt"], 
     Arrowheads[{{0.014321227863183126`, 1.}}, Appearance -> "Projected"], 
     {RGBColor[0., 1., 0.5314062062787688], 
      Arrow3DBox[TubeBox[{{0.2972702522503308, 0.37511358837527997`, 
       0.017777777777777778`}, {0.25828530330522453`, 0.4026641894024977, 
       0.017777777777777778`}}, 0.002386871310530521]]}}, 
    {CapForm["Butt"], 
     Arrowheads[{{0.016296166742382136`, 1.}}, Appearance -> "Projected"], 
     {RGBColor[0., 1., 0.8804944676755397], 
      Arrow3DBox[TubeBox[{{0.29995881509114, 0.37321463357885504`, 0.02}, {
       0.2555967404644154, 0.40456314419892264`, 0.02}}, 
       0.0027160277903970228`]]}}, 
    {CapForm["Butt"], 
     Arrowheads[{{0.000021279487269397968`, 1.}}, Appearance -> "Projected"], 
     {RGBColor[1., 0.0037613413217624236`, 0.], 
      Arrow3DBox[TubeBox[{{0.3889139670051361, -0.38886381077264165`, 
       0.0022222222222222222`}, {0.38886381077264154`, -0.3889139670051362, 
       0.0022222222222222222`}}, 3.546581211566328*^-6]]}}, 
    {CapForm["Butt"], 
     Arrowheads[{{0.00004262455135996566, 1.}}, Appearance -> "Projected"], 
     {RGBColor[1., 0.00753427393819095, 0.], 
      Arrow3DBox[TubeBox[{{0.3889391224044083, -0.3888386553733694, 
       0.0044444444444444444`}, {0.3888386553733694, -0.3889391224044083, 
       0.0044444444444444444`}}, 7.104091893327611*^-6]]}}, 
    {CapForm["Butt"], 
     Arrowheads[{{0.00006410118264582944, 1.}}, Appearance -> "Projected"], 
     {RGBColor[1., 0.011330462243157147`, 0.], 
      Arrow3DBox[TubeBox[{{0.3889644328571071, -0.38881334492067066`, 
       0.006666666666666666}, {0.3888133449206706, -0.38896443285710713`, 
       0.006666666666666666}}, 0.000010683530440971574`]]}}, 
    {CapForm["Butt"], 
     Arrowheads[{{0.00008577620060143096, 1.}}, Appearance -> "Projected"], 
     {RGBColor[1., 0.01516171718150483, 0.], 
      Arrow3DBox[TubeBox[{{0.3889899771107383, -0.38878780066703944`, 
       0.008888888888888889}, {0.38878780066703933`, -0.3889899771107384, 
       0.008888888888888889}}, 0.000014296033433571827`]]}}, 
    {CapForm["Butt"], 
     Arrowheads[{{0.00010771767511299367`, 1.}}, Appearance -> "Projected"], 
     {RGBColor[1., 0.019040070719628766`, 0.], 
      Arrow3DBox[TubeBox[{{0.38901583538643225`, -0.3887619423913455, 
       0.011111111111111112`}, {0.3887619423913454, -0.3890158353864323, 
       0.011111111111111112`}}, 0.00001795294585216561]]}}, 
    {CapForm["Butt"], 
     Arrowheads[{{0.000129995362451646, 1.}}, Appearance -> "Projected"], 
     {RGBColor[1., 0.02297785290767773, 0.], 
      Arrow3DBox[TubeBox[{{0.3890420898927428, -0.38873568788503493`, 
       0.013333333333333332`}, {0.38873568788503493`, -0.3890420898927428, 
       0.013333333333333332`}}, 0.000021665893741941]]}}, 
    {CapForm["Butt"], 
     Arrowheads[{{0.00015268115430129055`, 1.}}, Appearance -> "Projected"], 
     {RGBColor[1., 0.026987771249256887`, 0.], 
      Arrow3DBox[TubeBox[{{0.3890688253548319, -0.38870895242294584`, 
       0.015555555555555555`}, {0.3887089524229458, -0.38906882535483195`, 
       0.015555555555555555`}}, 0.00002544685905021509]]}}, 
    {CapForm["Butt"], 
     Arrowheads[{{0.00017584953871915975`, 1.}}, Appearance -> "Projected"], 
     {RGBColor[1., 0.031082992180393343`, 0.], 
      Arrow3DBox[TubeBox[{{0.38909612955771694`, -0.3886816482200608, 
       0.017777777777777778`}, {0.3886816482200608, -0.38909612955771694`, 
       0.017777777777777778`}}, 0.00002930825645319329]]}}, 
    {CapForm["Butt"], 
     Arrowheads[{{0.00019957808757677437`, 1.}}, Appearance -> "Projected"], 
     {RGBColor[1., 0.03527722722909188, 0.], 
      Arrow3DBox[TubeBox[{{0.38912409392072517`, -0.38865368385705257`, 
       0.02}, {0.38865368385705257`, -0.38912409392072517`, 0.02}}, 
       0.000033263014596129064`]]}}, 
    {CapForm["Butt"], 
     Arrowheads[{{0.0017163523255962956`, 1.}}, Appearance -> "Projected"], 
     {RGBColor[1., 0.30338075552480914`, 0.], 
      Arrow3DBox[TubeBox[{{0.38723769211301684`, -0.2801136948117317, 
       0.0022222222222222222`}, {0.39054008566476084`, -0.2754418607438239, 
       0.0022222222222222222`}}, 0.00028605872093271593`]]}}, 
    {CapForm["Butt"], 
     Arrowheads[{{0.0034395727958851942`, 1.}}, Appearance -> "Projected"], 
     {RGBColor[1., 0.607975517576614, 0.], 
      Arrow3DBox[TubeBox[{{0.3855799138137899, -0.28245897754120747`, 
       0.0044444444444444444`}, {0.39219786396398776`, -0.27309657801434817`, 
       0.0044444444444444444`}}, 0.0005732621326475323]]}}, 
    {CapForm["Butt"], 
     Arrowheads[{{0.0051765824786321486`, 1.}}, Appearance -> "Projected"], 
     {RGBColor[1., 0.9150076473129138, 0.], 
      Arrow3DBox[TubeBox[{{0.3839089219245047, -0.28482306395014406`, 
       0.006666666666666666}, {0.39386885585327297`, -0.2707324916054115, 
       0.006666666666666666}}, 0.0008627637464386915]]}}, 
    {CapForm["Butt"], 
     Arrowheads[{{0.006934408615293919, 1.}}, Appearance -> "Projected"], 
     {RGBColor[0.774280726951134, 1., 0.], 
      Arrow3DBox[TubeBox[{{0.3822179829801212, -0.2872155370475285, 
       0.008888888888888889}, {0.3955597947976564, -0.2683400185080271, 
       0.008888888888888889}}, 0.001155734769215653]]}}, 
    {CapForm["Butt"], 
     Arrowheads[{{0.00872023875351848, 1.}}, Appearance -> "Projected"], 
     {RGBColor[0.45861914133506887`, 1., 0.], 
      Arrow3DBox[TubeBox[{{0.3805002104223972, -0.2896461988102278, 
       0.011111111111111112`}, {0.39727756735538045`, -0.2659093567453278, 
       0.011111111111111112`}}, 0.0014533731255864134`]]}}, 
    {CapForm["Butt"], 
     Arrowheads[{{0.010541476978506345`, 1.}}, Appearance -> "Projected"], 
     {RGBColor[0.1366988569927967, 1., 0.], 
      Arrow3DBox[TubeBox[{{0.37874851090415734`, -0.29212514699520437`, 
       0.013333333333333332`}, {0.39902926687362034`, -0.2634304085603512, 
       0.013333333333333332`}}, 0.0017569128297510574`]]}}, 
    {CapForm["Butt"], 
     Arrowheads[{{0.01240580211913755, 1.}}, Appearance -> "Projected"], 
     {RGBColor[0., 1., 0.19283742834540885`], 
      Arrow3DBox[TubeBox[{{0.37695552871254806`, -0.2946628546525262, 
       0.015555555555555555`}, {0.40082224906522956`, -0.2608927009030294, 
       0.015555555555555555`}}, 0.002067633686522925]]}}, 
    {CapForm["Butt"], 
     Arrowheads[{{0.01432122786318309, 1.}}, Appearance -> "Projected"], 
     {RGBColor[0., 1., 0.5314062062787603], 
      Arrow3DBox[TubeBox[{{0.37511358837528, -0.2972702522503309, 
       0.017777777777777778`}, {0.4026641894024977, -0.2582853033052247, 
       0.017777777777777778`}}, 0.002386871310530515]]}}, 
    {CapForm["Butt"], 
     Arrowheads[{{0.016296166742382087`, 1.}}, Appearance -> "Projected"], 
     {RGBColor[0., 1., 0.8804944676755304], 
      Arrow3DBox[TubeBox[{{0.3732146335788551, -0.29995881509114003`, 0.02}, {
       0.4045631441989226, -0.25559674046441555`, 0.02}}, 
       0.0027160277903970145`]]}}, 
    {CapForm["Butt"], 
     Arrowheads[{{0.0037155607759840146`, 1.}}, Appearance -> "Projected"], 
     {RGBColor[1., 0.6567588825474734, 0.], 
      Arrow3DBox[TubeBox[{{0.3864558706733248, -0.1723612898447705, 
       0.0022222222222222222`}, {0.3913219071044529, -0.16097204348856287`, 
       0.0022222222222222222`}}, 0.0006192601293306691]]}}, 
    {CapForm["Butt"], 
     Arrowheads[{{0.007435330366606999, 1.}}, Appearance -> "Projected"], 
     {RGBColor[0.6857382889529355, 1., 0.], 
      Arrow3DBox[TubeBox[{{0.384020147826196, -0.17806238557868087`, 
       0.0044444444444444444`}, {0.3937576299515817, -0.1552709477546525, 
       0.0044444444444444444`}}, 0.0012392217277678332`]]}}, 
    {CapForm["Butt"], 
     Arrowheads[{{0.011163516596988384`, 1.}}, Appearance -> "Projected"], 
     {RGBColor[0.026747743455614703`, 1., 0.], 
      Arrow3DBox[TubeBox[{{0.381579016859529, -0.1837764251184662, 
       0.006666666666666666}, {0.3961987609182486, -0.14955690821486717`, 
       0.006666666666666666}}, 0.001860586099498064]]}}, 
    {CapForm["Butt"], 
     Arrowheads[{{0.014904325155785682`, 1.}}, Appearance -> "Projected"], 
     {RGBColor[0., 1., 0.6344739124461327], 
      Arrow3DBox[TubeBox[{{0.379129776678424, -0.1895098768626154, 
       0.008888888888888889}, {0.39864800109935367`, -0.14382345647071798`, 
       0.008888888888888889}}, 0.002484054192630947]]}}, 
    {CapForm["Butt"], 
     Arrowheads[{{0.01866195813005198, 1.}}, Appearance -> "Projected"], 
     {RGBColor[0., 0.701330564457062, 1.], 
      Arrow3DBox[TubeBox[{{0.3766697300466336, -0.1952692043277534, 
       0.011111111111111112`}, {0.401108047731144, -0.13806412900557996`, 
       0.011111111111111112`}}, 0.003110326355008663]]}}, 
    {CapForm["Butt"], 
     Arrowheads[{{0.022440612035978563`, 1.}}, Appearance -> "Projected"], 
     {RGBColor[0., 0.03341940207464855, 1.], 
      Arrow3DBox[TubeBox[{{0.3741961854010757, -0.2010608633536814, 
       0.013333333333333332`}, {0.40358159237670194`, -0.13227246997965197`, 
       0.013333333333333332`}}, 0.0037401020059964272`]]}}, 
    {CapForm["Butt"], 
     Arrowheads[{{0.02624447517847493, 1.}}, Appearance -> "Projected"], 
     {RGBColor[0.6389477202658043, 0., 1.], 
      Arrow3DBox[TubeBox[{{0.3717064591231834, -0.20689129828704889`, 
       0.015555555555555555`}, {0.4060713186545943, -0.12644203504628448`, 
       0.015555555555555555`}}, 0.004374079196412488]]}}, 
    {CapForm["Butt"], 
     Arrowheads[{{0.030077724180255457`, 1.}}, Appearance -> "Projected"], 
     {RGBColor[1., 0., 0.6834909416966362], 
      Arrow3DBox[TubeBox[{{0.3691978783704866, -0.21276693689902199`, 
       0.017777777777777778`}, {0.40857989940729106`, -0.12056639643431138`, 
       0.017777777777777778`}}, 0.005012954030042576]]}}, 
    {CapForm["Butt"], 
     Arrowheads[{{0.03394451943981527, 1.}}, Appearance -> "Projected"], 
     {RGBColor[1., 0., 7.105427357601002*^-15], 
      Arrow3DBox[TubeBox[{{0.3666677846439078, -0.21869418367578097`, 0.02}, {
       0.41110999313386987`, -0.1146391496575524, 0.02}}, 
       0.005657419906635878]]}}, 
    {CapForm["Butt"], 
     Arrowheads[{{0.0031973784346388872`, 1.}}, Appearance -> "Projected"], 
     {RGBColor[1., 0.5651654795657848, 0.], 
      Arrow3DBox[TubeBox[{{0.3881350926040555, -0.0608309369720567, 
       0.0022222222222222222`}, {0.38964268517372225`, -0.050280174139054466`,
        0.0022222222222222222`}}, 0.0005328964057731479]]}}, 
    {CapForm["Butt"], 
     Arrowheads[{{0.006391511980112669, 1.}}, Appearance -> "Projected"], 
     {RGBColor[0.8702426042981668, 1., 0.], 
      Arrow3DBox[TubeBox[{{0.3873820335436939, -0.0661009606503298, 
       0.0044444444444444444`}, {0.39039574423408374`, -0.045010150460781356`,
        0.0044444444444444444`}}, 0.0010652519966854448`]]}}, 
    {CapForm["Butt"], 
     Arrowheads[{{0.009579098113536143, 1.}}, Appearance -> "Projected"], 
     {RGBColor[0.3068080023014885, 1., 0.], 
      Arrow3DBox[TubeBox[{{0.3866304620398948, -0.07136017369298082, 
       0.006666666666666666}, {0.39114731573788286`, -0.039750937418130336`, 
       0.006666666666666666}}, 0.001596516352256024]]}}, 
    {CapForm["Butt"], 
     Arrowheads[{{0.012756718602285319`, 1.}}, Appearance -> "Projected"], 
     {RGBColor[0., 1., 0.2548650821061189], 
      Arrow3DBox[TubeBox[{{0.3858811547392342, -0.07660293215379307, 
       0.008888888888888889}, {0.3918966230385435, -0.034508178957318086`, 
       0.008888888888888889}}, 0.002126119767047553]]}}, 
    {CapForm["Butt"], 
     Arrowheads[{{0.01592078029716751, 1.}}, Appearance -> "Projected"], 
     {RGBColor[0., 1., 0.8141415273936414], 
      Arrow3DBox[TubeBox[{{0.38513492806413385`, -0.08182330328056528, 
       0.011111111111111112`}, {0.3926428497136439, -0.029287807830545885`, 
       0.011111111111111112`}}, 0.0026534633828612514`]]}}, 
    {CapForm["Butt"], 
     Arrowheads[{{0.01906745337796403, 1.}}, Appearance -> "Projected"], 
     {RGBColor[0., 0.6296556217086144, 1.], 
      Arrow3DBox[TubeBox[{{0.3843926522494734, -0.08701496355090765, 
       0.013333333333333332`}, {0.3933851255283043, -0.0240961475602035, 
       0.013333333333333332`}}, 0.0031779088963273384`]]}}, 
    {CapForm["Butt"], 
     Arrowheads[{{0.022192607092311335`, 1.}}, Appearance -> "Projected"], 
     {RGBColor[0., 0.07725651294144598, 1.], 
      Arrow3DBox[TubeBox[{{0.38365526594359534`, -0.09217109256838535, 
       0.015555555555555555`}, {0.39412251183418234`, -0.01894001854272581, 
       0.015555555555555555`}}, 0.003698767848718556]]}}, 
    {CapForm["Butt"], 
     Arrowheads[{{0.025291742971333898`, 1.}}, Appearance -> "Projected"], 
     {RGBColor[0.47054370874396056`, 0., 1.], 
      Arrow3DBox[TubeBox[{{0.38292379137598764`, -0.09728426279137514, 
       0.017777777777777778`}, {0.3948539864017901, -0.013826848319736011`, 
       0.017777777777777778`}}, 0.004215290495222316]]}}, 
    {CapForm["Butt"], 
     Arrowheads[{{0.028359923275535354`, 1.}}, Appearance -> "Projected"], 
     {RGBColor[1., 0., 0.9871277466481665], 
      Arrow3DBox[TubeBox[{{0.3821993506006546, -0.10234632138513701`, 0.02}, {
       0.3955784271771231, -0.00876478972597415, 0.02}}, 
       0.004726653879255892]]}}, 
    {CapForm["Butt"], 
     Arrowheads[{{0.0031973784346388807`, 1.}}, Appearance -> "Projected"], 
     {RGBColor[1., 0.5651654795657839, 0.], 
      Arrow3DBox[TubeBox[{{0.3896426851737222, 0.05028017413905447, 
       0.0022222222222222222`}, {0.38813509260405543`, 0.06083093697205669, 
       0.0022222222222222222`}}, 0.0005328964057731468]]}}, 
    {CapForm["Butt"], 
     Arrowheads[{{0.006391511980112654, 1.}}, Appearance -> "Projected"], 
     {RGBColor[0.8702426042981686, 1., 0.], 
      Arrow3DBox[TubeBox[{{0.39039574423408374`, 0.04501015046078138, 
       0.0044444444444444444`}, {0.3873820335436939, 0.06610096065032978, 
       0.0044444444444444444`}}, 0.0010652519966854424`]]}}, 
    {CapForm["Butt"], 
     Arrowheads[{{0.009579098113536133, 1.}}, Appearance -> "Projected"], 
     {RGBColor[0.3068080023014903, 1., 0.], 
      Arrow3DBox[TubeBox[{{0.39114731573788286`, 0.03975093741813036, 
       0.006666666666666666}, {0.3866304620398948, 0.07136017369298081, 
       0.006666666666666666}}, 0.0015965163522560222`]]}}, 
    {CapForm["Butt"], 
     Arrowheads[{{0.012756718602285293`, 1.}}, Appearance -> "Projected"], 
     {RGBColor[0., 1., 0.2548650821061149], 
      Arrow3DBox[TubeBox[{{0.3918966230385435, 0.03450817895731813, 
       0.008888888888888889}, {0.3858811547392342, 0.07660293215379303, 
       0.008888888888888889}}, 0.002126119767047549]]}}, 
    {CapForm["Butt"], 
     Arrowheads[{{0.015920780297167484`, 1.}}, Appearance -> "Projected"], 
     {RGBColor[0., 1., 0.8141415273936374], 
      Arrow3DBox[TubeBox[{{0.3926428497136438, 0.029287807830545923`, 
       0.011111111111111112`}, {0.3851349280641338, 0.08182330328056524, 
       0.011111111111111112`}}, 0.0026534633828612475`]]}}, 
    {CapForm["Butt"], 
     Arrowheads[{{0.019067453377964012`, 1.}}, Appearance -> "Projected"], 
     {RGBColor[0., 0.6296556217086193, 1.], 
      Arrow3DBox[TubeBox[{{0.3933851255283043, 0.02409614756020354, 
       0.013333333333333332`}, {0.3843926522494734, 0.08701496355090763, 
       0.013333333333333332`}}, 0.0031779088963273354`]]}}, 
    {CapForm["Butt"], 
     Arrowheads[{{0.0221926070923113, 1.}}, Appearance -> "Projected"], 
     {RGBColor[0., 0.0772565129414513, 1.], 
      Arrow3DBox[TubeBox[{{0.39412251183418234`, 0.018940018542725867`, 
       0.015555555555555555`}, {0.38365526594359534`, 0.0921710925683853, 
       0.015555555555555555`}}, 0.0036987678487185502`]]}}, 
    {CapForm["Butt"], 
     Arrowheads[{{0.025291742971333863`, 1.}}, Appearance -> "Projected"], 
     {RGBColor[0.47054370874395346`, 0., 1.], 
      Arrow3DBox[TubeBox[{{0.39485398640179004`, 0.013826848319736074`, 
       0.017777777777777778`}, {0.38292379137598764`, 0.09728426279137509, 
       0.017777777777777778`}}, 0.00421529049522231]]}}, 
    {CapForm["Butt"], 
     Arrowheads[{{0.028359923275535312`, 1.}}, Appearance -> "Projected"], 
     {RGBColor[1., 0., 0.9871277466481754], 
      Arrow3DBox[TubeBox[{{0.3955784271771231, 0.008764789725974227, 0.02}, {
       0.3821993506006546, 0.10234632138513694`, 0.02}}, 
       0.004726653879255885]]}}, 
    {CapForm["Butt"], 
     Arrowheads[{{0.0037155607759840068`, 1.}}, Appearance -> "Projected"], 
     {RGBColor[1., 0.6567588825474715, 0.], 
      Arrow3DBox[TubeBox[{{0.39132190710445286`, 0.1609720434885628, 
       0.0022222222222222222`}, {0.38645587067332476`, 0.17236128984477042`, 
       0.0022222222222222222`}}, 0.0006192601293306678]]}}, 
    {CapForm["Butt"], 
     Arrowheads[{{0.007435330366606985, 1.}}, Appearance -> "Projected"], 
     {RGBColor[0.6857382889529393, 1., 0.], 
      Arrow3DBox[TubeBox[{{0.3937576299515817, 0.15527094775465247`, 
       0.0044444444444444444`}, {0.384020147826196, 0.1780623855786808, 
       0.0044444444444444444`}}, 0.0012392217277678308`]]}}, 
    {CapForm["Butt"], 
     Arrowheads[{{0.011163516596988355`, 1.}}, Appearance -> "Projected"], 
     {RGBColor[0.026747743455620476`, 1., 0.], 
      Arrow3DBox[TubeBox[{{0.3961987609182486, 0.14955690821486717`, 
       0.006666666666666666}, {0.38157901685952905`, 0.18377642511846612`, 
       0.006666666666666666}}, 0.001860586099498059]]}}, 
    {CapForm["Butt"], 
     Arrowheads[{{0.01490432515578563, 1.}}, Appearance -> "Projected"], 
     {RGBColor[0., 1., 0.6344739124461247], 
      Arrow3DBox[TubeBox[{{0.3986480010993536, 0.143823456470718, 
       0.008888888888888889}, {0.379129776678424, 0.18950987686261525`, 
       0.008888888888888889}}, 0.0024840541926309384`]]}}, 
    {CapForm["Butt"], 
     Arrowheads[{{0.018661958130051913`, 1.}}, Appearance -> "Projected"], 
     {RGBColor[0., 0.7013305644570722, 1.], 
      Arrow3DBox[TubeBox[{{0.401108047731144, 0.13806412900558002`, 
       0.011111111111111112`}, {0.3766697300466337, 0.19526920432775324`, 
       0.011111111111111112`}}, 0.0031103263550086523`]]}}, 
    {CapForm["Butt"], 
     Arrowheads[{{0.02244061203597849, 1.}}, Appearance -> "Projected"], 
     {RGBColor[0., 0.03341940207465921, 1.], 
      Arrow3DBox[TubeBox[{{0.40358159237670194`, 0.13227246997965203`, 
       0.013333333333333332`}, {0.37419618540107574`, 0.20106086335368123`, 
       0.013333333333333332`}}, 0.003740102005996415]]}}, 
    {CapForm["Butt"], 
     Arrowheads[{{0.026244475178474856`, 1.}}, Appearance -> "Projected"], 
     {RGBColor[0.6389477202657909, 0., 1.], 
      Arrow3DBox[TubeBox[{{0.4060713186545942, 0.12644203504628454`, 
       0.015555555555555555`}, {0.37170645912318345`, 0.20689129828704872`, 
       0.015555555555555555`}}, 0.004374079196412476]]}}, 
    {CapForm["Butt"], 
     Arrowheads[{{0.030077724180255366`, 1.}}, Appearance -> "Projected"], 
     {RGBColor[1., 0., 0.6834909416966513], 
      Arrow3DBox[TubeBox[{{0.408579899407291, 0.12056639643431147`, 
       0.017777777777777778`}, {0.3691978783704867, 0.2127669368990218, 
       0.017777777777777778`}}, 0.005012954030042561]]}}, 
    {CapForm["Butt"], 
     Arrowheads[{{0.03394451943981518, 1.}}, Appearance -> "Projected"], 
     {RGBColor[1., 0., 2.4868995751603507`*^-14], 
      Arrow3DBox[TubeBox[{{0.4111099931338698, 0.11463914965755248`, 0.02}, {
       0.36666778464390787`, 0.21869418367578078`, 0.02}}, 
       0.005657419906635863]]}}, 
    {CapForm["Butt"], 
     Arrowheads[{{0.0017163523255962956`, 1.}}, Appearance -> "Projected"], 
     {RGBColor[1., 0.30338075552481014`, 0.], 
      Arrow3DBox[TubeBox[{{0.39054008566476084`, 0.27544186074382376`, 
       0.0022222222222222222`}, {0.38723769211301684`, 0.2801136948117316, 
       0.0022222222222222222`}}, 0.00028605872093271593`]]}}, 
    {CapForm["Butt"], 
     Arrowheads[{{0.003439572795885208, 1.}}, Appearance -> "Projected"], 
     {RGBColor[1., 0.6079755175766162, 0.], 
      Arrow3DBox[TubeBox[{{0.39219786396398776`, 0.273096578014348, 
       0.0044444444444444444`}, {0.3855799138137899, 0.28245897754120736`, 
       0.0044444444444444444`}}, 0.0005732621326475347]]}}, 
    {CapForm["Butt"], 
     Arrowheads[{{0.005176582478632163, 1.}}, Appearance -> "Projected"], 
     {RGBColor[1., 0.9150076473129171, 0.], 
      Arrow3DBox[TubeBox[{{0.39386885585327297`, 0.2707324916054114, 
       0.006666666666666666}, {0.3839089219245047, 0.284823063950144, 
       0.006666666666666666}}, 0.0008627637464386938]]}}, 
    {CapForm["Butt"], 
     Arrowheads[{{0.006934408615293941, 1.}}, Appearance -> "Projected"], 
     {RGBColor[0.7742807269511296, 1., 0.], 
      Arrow3DBox[TubeBox[{{0.39555979479765646`, 0.2683400185080269, 
       0.008888888888888889}, {0.3822179829801212, 0.2872155370475284, 
       0.008888888888888889}}, 0.001155734769215657]]}}, 
    {CapForm["Butt"], 
     Arrowheads[{{0.008720238753518517, 1.}}, Appearance -> "Projected"], 
     {RGBColor[0.4586191413350642, 1., 0.], 
      Arrow3DBox[TubeBox[{{0.3972775673553805, 0.2659093567453276, 
       0.011111111111111112`}, {0.3805002104223972, 0.28964619881022774`, 
       0.011111111111111112`}}, 0.0014533731255864195`]]}}, 
    {CapForm["Butt"], 
     Arrowheads[{{0.01054147697850639, 1.}}, Appearance -> "Projected"], 
     {RGBColor[0.1366988569927905, 1., 0.], 
      Arrow3DBox[TubeBox[{{0.3990292668736204, 0.26343040856035105`, 
       0.013333333333333332`}, {0.3787485109041573, 0.2921251469952043, 
       0.013333333333333332`}}, 0.001756912829751065]]}}, 
    {CapForm["Butt"], 
     Arrowheads[{{0.012405802119137608`, 1.}}, Appearance -> "Projected"], 
     {RGBColor[0., 1., 0.19283742834541595`], 
      Arrow3DBox[TubeBox[{{0.4008222490652296, 0.26089270090302924`, 
       0.015555555555555555`}, {0.376955528712548, 0.2946628546525262, 
       0.015555555555555555`}}, 0.0020676336865229346`]]}}, 
    {CapForm["Butt"], 
     Arrowheads[{{0.014321227863183126`, 1.}}, Appearance -> "Projected"], 
     {RGBColor[0., 1., 0.5314062062787688], 
      Arrow3DBox[TubeBox[{{0.4026641894024977, 0.25828530330522453`, 
       0.017777777777777778`}, {0.37511358837527997`, 0.2972702522503308, 
       0.017777777777777778`}}, 0.002386871310530521]]}}, 
    {CapForm["Butt"], 
     Arrowheads[{{0.016296166742382136`, 1.}}, Appearance -> "Projected"], 
     {RGBColor[0., 1., 0.8804944676755397], 
      Arrow3DBox[TubeBox[{{0.40456314419892264`, 0.2555967404644154, 0.02}, {
       0.37321463357885504`, 0.29995881509114, 0.02}}, 
       0.0027160277903970228`]]}}, 
    {CapForm["Butt"], 
     Arrowheads[{{0.000021279487269397968`, 1.}}, Appearance -> "Projected"], 
     {RGBColor[1., 0.0037613413217625347`, 0.], 
      Arrow3DBox[TubeBox[{{0.3888638107726416, 0.3889139670051361, 
       0.0022222222222222222`}, {0.38891396700513614`, 0.38886381077264154`, 
       0.0022222222222222222`}}, 3.546581211566328*^-6]]}}, 
    {CapForm["Butt"], 
     Arrowheads[{{0.00004262455135996566, 1.}}, Appearance -> "Projected"], 
     {RGBColor[1., 0.007534273938191061, 0.], 
      Arrow3DBox[TubeBox[{{0.38883865537336937`, 0.3889391224044083, 
       0.0044444444444444444`}, {0.38893912240440826`, 0.3888386553733694, 
       0.0044444444444444444`}}, 7.104091893327611*^-6]]}}, 
    {CapForm["Butt"], 
     Arrowheads[{{0.00006410118264582944, 1.}}, Appearance -> "Projected"], 
     {RGBColor[1., 0.011330462243157258`, 0.], 
      Arrow3DBox[TubeBox[{{0.3888133449206706, 0.3889644328571071, 
       0.006666666666666666}, {0.3889644328571071, 0.3888133449206706, 
       0.006666666666666666}}, 0.000010683530440971574`]]}}, 
    {CapForm["Butt"], 
     Arrowheads[{{0.00008577620060143096, 1.}}, Appearance -> "Projected"], 
     {RGBColor[1., 0.015161717181504941`, 0.], 
      Arrow3DBox[TubeBox[{{0.3887878006670394, 0.3889899771107383, 
       0.008888888888888889}, {0.38898997711073835`, 0.38878780066703933`, 
       0.008888888888888889}}, 0.000014296033433571827`]]}}, 
    {CapForm["Butt"], 
     Arrowheads[{{0.00010771767511299367`, 1.}}, Appearance -> "Projected"], 
     {RGBColor[1., 0.019040070719628877`, 0.], 
      Arrow3DBox[TubeBox[{{0.3887619423913454, 0.38901583538643225`, 
       0.011111111111111112`}, {0.38901583538643225`, 0.3887619423913454, 
       0.011111111111111112`}}, 0.00001795294585216561]]}}, 
    {CapForm["Butt"], 
     Arrowheads[{{0.000129995362451646, 1.}}, Appearance -> "Projected"], 
     {RGBColor[1., 0.022977852907677843`, 0.], 
      Arrow3DBox[TubeBox[{{0.3887356878850349, 0.3890420898927428, 
       0.013333333333333332`}, {0.38904208989274275`, 0.38873568788503493`, 
       0.013333333333333332`}}, 0.000021665893741941]]}}, 
    {CapForm["Butt"], 
     Arrowheads[{{0.00015268115430129055`, 1.}}, Appearance -> "Projected"], 
     {RGBColor[1., 0.026987771249256998`, 0.], 
      Arrow3DBox[TubeBox[{{0.3887089524229458, 0.3890688253548319, 
       0.015555555555555555`}, {0.3890688253548319, 0.3887089524229458, 
       0.015555555555555555`}}, 0.00002544685905021509]]}}, 
    {CapForm["Butt"], 
     Arrowheads[{{0.00017584953871915975`, 1.}}, Appearance -> "Projected"], 
     {RGBColor[1., 0.031082992180393565`, 0.], 
      Arrow3DBox[TubeBox[{{0.38868164822006074`, 0.38909612955771694`, 
       0.017777777777777778`}, {0.3890961295577169, 0.3886816482200608, 
       0.017777777777777778`}}, 0.00002930825645319329]]}}, 
    {CapForm["Butt"], 
     Arrowheads[{{0.00019957808757677437`, 1.}}, Appearance -> "Projected"], 
     {RGBColor[1., 0.03527722722909199, 0.], 
      Arrow3DBox[TubeBox[{{0.3886536838570525, 0.38912409392072517`, 0.02}, {
       0.3891240939207251, 0.38865368385705257`, 0.02}}, 
       0.000033263014596129064`]]}}}},
  Axes->True,
  BoxRatios->{1, 1, 1},
  DisplayFunction->Identity,
  FaceGridsStyle->Automatic,
  Method->{
   "VectorLengthFunction" -> (#& ), "DefaultBoundaryStyle" -> Automatic, 
    "DefaultGraphicsInteraction" -> {
     "Version" -> 1.2, "TrackMousePosition" -> {True, False}, 
      "Effects" -> {
       "Highlight" -> {"ratio" -> 2}, "HighlightPoint" -> {"ratio" -> 2}, 
        "Droplines" -> {
         "freeformCursorMode" -> True, 
          "placement" -> {"x" -> "All", "y" -> "None"}}}}, "TubePoints" -> 5, 
    "ConePoints" -> 10, "TransparentPolygonMesh" -> True, "TubePoints" -> 20, 
    "ConePoints" -> 20},
  PlotRange->{{-0.5555555555555556, 0.5555555555555556}, {-0.5555555555555556,
    0.5555555555555556}, {-0.0011111111111111111`, 0.021111111111111112`}},
  PlotRangePadding->{{
     Scaled[0.02], 
     Scaled[0.02]}, {
     Scaled[0.02], 
     Scaled[0.02]}, {
     Scaled[0.02], 
     Scaled[0.02]}},
  Ticks->{Automatic, Automatic, Automatic}]], "Output",
 CellChangeTimes->{
  3.5448231983428087`*^9, 3.544823286102828*^9, 3.544823347004311*^9, {
   3.544823401758443*^9, 3.5448234166132927`*^9}, {3.5448234578576517`*^9, 
   3.544823487809365*^9}, {3.544823618412835*^9, 3.5448236354678106`*^9}, 
   3.544823678633279*^9, {3.5448237291621695`*^9, 3.54482375784781*^9}, 
   3.5448238002542353`*^9, 3.544824725849177*^9, 3.5448286878217883`*^9, 
   3.544828747204185*^9, 3.5448288551933613`*^9, 3.5448289837197127`*^9, 
   3.544829069823638*^9, 3.5448293881628456`*^9, 3.5448294804911265`*^9, 
   3.544829585590138*^9, 3.5448296600083942`*^9, 3.544829701104745*^9, 
   3.5448298500122623`*^9, {3.54482999858876*^9, 3.5448300269183807`*^9}, 
   3.5448303190900917`*^9, 3.544830431794538*^9, {3.544830685080025*^9, 
   3.5448307054361897`*^9}, 3.544830853493658*^9, 3.544832802626142*^9, 
   3.890859959406247*^9},
 CellLabel->"Out[26]=",ImageCache->GraphicsData["CompressedBitmap", "\<\
eJzEvQl4VFl2JnhRhCRIkoQkky03gh2xJvsOwb4jhBACJKEH2vd9l9ATkpCE
kATJnlTmAzIha3G5asp2ud22K9zjqcxyue1yd9tte7bw+LPHbXvsGbunv3Hb
3X3nnLvfiBdCWZXdHd93A/Hivbuc8//nnnvu8k5ebiwtqrrcWFZwOXS4/nJt
aVlBQ+hQTT1cCkwiJOn3CAmQEAnC35QQ/69/Tch/7wu/wf4MzCwoKNhYXFz8
bllZGZnGrmHNyXtwbXNJScli+P0/G4/9gD8Wgp++gFv+CySSRPE78CP4XllY
WMjuSOL3HYdr+Ovf4B1Bfi0X/v7zoqIiajz7x/B9CP/Czz8a5f06+3PK7NLS
0r8Sef0WpEF4/sfi/38Gf+PvsswT8Dde/1u4Dqpgz1+C+lJx/3cg9UD6gfj/
P8F9B+F3v3JHxHO/CClZ1A///b54Fushy52Rn5+/A+5HsYlrwUBWVtbfiHtb
IfHqBAfEpT+EFOzu7v6PcSUH/lTc8j5KlD8WWCdaFsVSU3lW68V9/x6upUBp
ooTUqqqqfyd+2g4/mSX8Gr9l1uXLl/Hnv4OEKhdPTqKU/r14EsXKywm8Wl5e
Pk9qSGjyV8Vtl/F6fAmBTULLv4+/J/NrfyCuYVvIa/zaj0Q+edgun3z2gQzw
98/xd5HPF+KZMABUyCJwFH4vg2sIatmcVVeuXPlHce86+Huc7H9kVPOH4hEG
DJ79K38irv0bKCYDnlkEf5+F3/8Pcf0HQpA+RWwRt/yu0YLfFZLYYbTgu+Ia
Y0WQcwMltkDyyifvJQKjf2nk/Rcin6X4HM97siuujULqhvRt+P8T+LcC0mTA
7j/FQyQJsPl3ojpvQzFCpnOgxsj8/4Dw3bNnj6j8aXHnN7AiLJtJRpYC198R
N7WwtvFrreLaR3htMr8WEq36X/FagsymILL/M6IbbqqEf1cBqJrg7/+Epgn+
j+QgU3iGaA6w0reYaEdZ8RUS0Pj5ByN/YeZq4Jn/JNUhTBWW1yCfE3lHfNT2
m2beb3HBIVg9uI73YwP/Z6PICPszeQVcbodb7kNCja1BdEzlxWwFbV6E6xdZ
Mew7sN8sZg77TsWs8dmoSFLzWCwxy/xbXqZ5vyc5xSxYEjM1AXZBfv7QyOCv
2Z8pmIEDlYsYBeI1YSfwEv7MMvtj4/G/jC9f3ivtG/4fi4+IbP/IePwv9OOe
MIuq+lwzyRHxOHtG/ma24M90HrEtIK/y3zBPRxBQ3mPl8ad2M7AcVQ9u4lLM
PJi2Rb3+rZHNn/Bs/ARJZvhng1lgcWY2/5u/UFmL3mBKxT8Z9ZIwvz8wnv1f
xgHELK5MV1zj/9MKVhj5N0Z+fzQ+PjheA/hTbJZS53FZ/lv/5jGpvOWTn8Bg
RN6DH9MR+n1dRRNEEixv+1RHZClNFFOQmeW/0lWMw1SSrqLK7y2fMpK1tNW1
f2WU8ZNxNJXs0+R5us5RmV+Kvk9p7/eMMv7l+NpL9RHDOMVgEeqaWcyPx9Ho
VB8xiDKoafmMprjyvp8YZfxIlxFnKl7zEcNcnzJS9TV13+8aZfxwfHHN8BGD
KCYqaW4UYyHELOY3xxHXm/pZld8cnzIm+zT5d4wy/sU44no/cX7SHMXl9wOd
XxwjNvjUhVlvZp3MXH4tvuWqVpt4LpaBfEXXVOX820Z+vzK+wrYkztJSjpnl
L4+jnO0++U3VjVfXfmzk90vjKGInExIWwzsqm4lmLt8bR/x7VC58+Gcb+N8y
cvmu3TZq1Ifs1XJRz07zEf+PjPx+nv2pnCKZVxK7OaA4gp89ibO3+GRm/y27
ulajgz5NNcpQqjVMgzIrXxhlfMMuw1JPqn5WNX+3rnNsGZbyzDJesD8TonSK
T5a7dZZKNNN9mve5Ucyn8U1RyD3pk98Mn+b90Mjvmc4vDrmn+bOWdZ3uo04z
P0/nF4fhTJ/8WP2YCTFz+chupfSKWSuzdC7KsL2ur6lW/qaR32Oen4lh5bNl
82ctQ/m6jxbM/B76a4G18qJPfjO1FpT9+B+N/O7H56e0kOujQZGfBGNcfnfY
nwnBeMmnOm/waxbX/oWR5W3/JrPnL/NnLZP5phaDqvZvGPmN6fzigFeQOD8L
eGZ+N3V+ssnSwyesNcx4ztYtV5YiYuRyg/05OXaMIHtqCbqi2Awts2BmOMir
5TtaED60hbJCfU2pYbZWjbrvB0YZ/f6qYQ00zJtqcIFPGXP0fUpdv26U0Rtf
hlKX0YET+bmSuAxLhWYZLvszIWrr9ONKDMIz88QwnP3v14wsr/qLhqGq0ac6
htOqxPCrRn6dOr841DbzZy3zO0+LQdXZzK9N5xdnLtt1XZRY5/mo6Z8b+bWM
o6bOxPlZHqGZX+P4Krnqk6UYJlmG5FeMLOvHUUkPf9aynW/ra6rJ/8zIr3Yc
lfQmzs+CkZlf1fhN7vfRwDv6mrJXv2xkWTFOkwcT52cZFTO/svgmK9RwC2bb
zne1SlSTv2/kJ6JkviiEj6wHq9+QT/7v+bThl4z8C+Pbr1QU1OpQrBnUZShW
v+dzn1mG8M98Zkrsa+Hx1ZvqI6oB/GLWPqQbqir2i0YlDA//S8+7BCb47I54
YSowiXGKGXsi1/U1xUfRDsvM/YLRDp7PTz+fk/Qlnt+m2xPH3/uJ626ZVJ+6
/4xzQhN7frOuexxxHvnUfYHGj5L79+LqPtFZpZfft9HGiuVHc5/YtoML9DVl
08368Z5+onNSyV/q7nW8rrHjTCanj3zquhC/2MghvoYvn9NKnuB9a2wJWhp+
wu+3OvxF/JrVW303vn4vnStLnuB9q+z6WVJ7puuntCnqZ7FnnPolnGxLnuB9
aexaQnP7nD9iORCiilZv+p34Kr50si55gvctixehMqhfT1w/q3f2qd9LJ/yS
J3jfEl2/OGJ8k99vOTiL+TXLAfv5uPpNdNYw+UvdvVDX1RyFMbp826euS/Q1
RZdvG3UVBvGl05GpE7yPG7hUP4OojPK3feok6ml5H/H1nNhMZ+qXuHc+l6dv
4CLJxiGr68/xa1YHs1RfU07Lzxl1F07LS2dRJ0/wvnc0BuKGo36TDDwCaHuU
S+22sfaadeae3XjTsP6/+dRNcUmE6FzT7nzTp27cXtgm9FtG3biDltDk/TOf
LJf7qO2bRpaGjxRnothwknmnaT7CNXPZonOJMyS/rhuvjAbLj/WwZi6GTxHn
8/yGFo3KZQW/ZvmaXzfyW2+3zQy5iJiWb36W+M38+MSHf8Tlf9ISUs+u1LJX
+vjMyG+1v+xZe79InJ/V65r5rYzPT2nht/SzSoOrfDTzwsiPYych3H7bJ0ve
JNvCPTeyXOrfZCaen2h1EvlZpcWgyjDzW6yraAJPWqTf88lytdaKMlqfGlku
0FWMQ2FAPxszA2h3PqttTbHrZhnzx9FUsv0su+ZXxhqtPYWQT4wy3hlfe8aM
nZLs7/gUs9anyc+MYt7y16ixfsKu4r/0yW+tT13MMubqMuLMy3QfdQpkWobw
fX1N3ffUKGPW+OKaqR8n8vNjn2L4WMO2SU+MYt7wFxd7/k8T52fZJDO/18cR
DVvawuy33xSrZ+Tyms4lDvN/EZuLNYYzc3k1vm2qLn+p26FkKPKz7M/HRn5T
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
jIjlGXdsIK3VJg8c1DhSCvcxy2s4qq1twKj2JY5qQwZGXm/2ivnV33fWm8Th
bPSRR7lUkpxUTcBpZjCsSMyfcFTAiCq8xnYxiV4d49skEo/AG34SZ4/4HpMY
H50Q65BEcpKrO+nJCnm/TKSwuJPFpp2SwrXviqWj1vHHfqFgOtcTicK1aY9J
0qZF4PkNYCDMOyAhDKpkjLYgZBH4bT96sn7BI4pNFXHBeI2fjloJvR7oOmij
x4Kanfg2UgeUriJq9E4A9/r3yah1JmJSINHL8VjLZNZakLNt6PAmwxf4Jtus
rWAniKCFiDTWBMzk9kTFGrm/0nTFmj03I8OU89udkmEC3oKIxdiuaXvF/uJy
J2VjGCP/eBEf2AKN858SsZgS1shlI5UJ6wKzOCOM/4sPiqofy+VhWFP1+k+I
JaYqg89hUWsBFfV7OVmg/1oBFWagpoT2ElAQMkiFLKTWjN0hoLyeXstjpulM
IzrgM0xTmM4hr/tXDL3/mbiLnu0ubQPn9TbN9lp/Zc40bOVMT0PEZilH9zR5
LK2DbwxLNIqGWDoKrxJLYWYpJuZn/ZQbf6EgIbbnHGKOlnfaGHFPodFsr5XK
0NMFdaz0JYxoQMa8tHepdK+dR86VTDGjSWGkVDIKI6cmYWPky5MqX6bUaQjU
a+jLHk7imZcKKFwiTpZALZhJ7yMBlYDOckOpWgb21OBfsA12WFVBD6j9sqdQ
JUonMVBx5ctO4UpP+7Isexl4Hm88jr58PfI1CX7C4hipTith57WdUzWVTqcT
wiX3O8pMSVZOElkX8dOinKim6tDmClFZVsV00fcluJrkjaZJV3yRtMyE1iU/
WhDWfow1MyGjn3lT6N7gsAPeeynBG+lIlfcMHHOmQjD/+udJCJ7DQHpeWhUj
SKOyfxv3JWla4IGD4OTQWnzTywaLYOvlAAQ5uowQenEfesdgvR+969zSW6LQ
SxeTxjVzw/161TZB+F1RtYr4uA0hH30t0EMKbU0feTJN345YA9M329DXt+y2
pI9CRhaHLpUatVb8/kLBKnFyc42Ylv2Yq/RIoq0NndFu6KMxNTZ9BjGXvr4A
+pQoRtM3OZk+UuAueMGjr327j74Ii2JK8XqWVYqbUdUvUQelrIWhsmAjXmpN
MGEg8GgqhQRvGfdK0GTHL3myYzvCFfUBdxxvyybWshz9mZcNPZtzSZwqPO+H
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
2vBeGzDW4X15z7+HxYk9Ro1kSZSYGEWiPOjhJpuHbD6VQyKuS/iwcwSI0gKi
pBg3DCPeGaBMVmK+Tx2i0fUBGm3VNCrGxcSl0V6cLV6tZqfpLtqKyXAAXPl7
jI+Apf3gz1cYv6FEiEn5Q7/xVqfXxnUrqSZYqe4ak4sn7kZ3WIIlKleGu9Fx
15ixfZvJ8KkeFwzDp7Hdt5rlpb00JINPVXSPBICPqSWmDccdPu2iE16PlOVT
XNgUt2xqol9SUoOJay9N45jbpxR5dPpeF0xcd2nqE4aHqqW4cluDya+WSutq
qWlhMLU5YArEe0f6doxdvdZgmq/+FIj3VkaB6QfPaTCZUoQOgelIAEwcen1Q
6qD0WlLcwRJHHg7TS8CSWaQuxCe3WEq4tg5Xajf5HIrpwO5uut2y6ABnoJfI
hmUGRYygfhB4P6i5P21UsyTlTaRz+CzzbQ+JDpFoeAaJDgNmR6UE0do7edDT
q0IjM5hKm+k3YgOBSAmNoyb4L2Xirk+hfBuJsUiivAwerdCNvrfhZd/KxaPr
GUUx70F8Tu7k9ZjXCdZSJzhgnfD8TjTXGwhpM4tmwJOcTo9ibPCm0UoY/Rsd
Fq2RPb0GiMFzZ7QldMDnjxSihS0hftxHQqE8TaE74AvmohBnLbZPoUZFoRsy
KLRTvF1FoR73vGcpxAVRg+hrYONLjD86FKrWFPojxhfxEIi63fGNtzL9cDYQ
bYUNZ0DEPe0O0AwNonzpacdV4GNv3CcrUKWyc+RcifIyiO7uVWMXunc6fSR4
8OMiSHRli17oLqfj3q1JkOi+z71FvdaJ6xUTAPFSwkmGkIAoFoGj4feuh500
3aNFDo562hqFYTFVLuUWb6pGEsuc4s2LVL5PZetNHM7h21ESJa79nm2ZOdLI
2YkSj/CR1BaylRb4BLMVU2r/RLckYTw++DOCpOv1yx9snzduDNikAdfTs1J2
6UNngoWOOFgpHfo10MEgs5S0B8RpDBOHvQwVwJtDq2TRYbssUjTgYM7SiHlZ
VqvzrpIxJzGPjkrymmPtOIxRto/2syrpJ4GkmNyQWeJAZqnO910h+60epl14
1TdzQYZ7Vx3uKpDJ05DZqCGz2pspNaA7AZjtGFs5D3JjlwiYcJ+IgXGBCZdx
34kPcIMBShRPEpYnqe/Ik1KMDJ7kefOpJJInN4Mn19/xHvsjwyROFsPJ/Qbv
+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
6EWs8fdZrBSh1jZeQM5Q6xKodV3H1bqjTqWBZCazSqHNIvW4QEzrZnVfYBVJ
q7U54lqrWpukJX29BJOqHPOC1boB3wJqxbw7LqaSyT+FXOud/I/2JPs7kWxc
btOs2YBid9I5HPUjrFjKIdkfBiR7JIdkj2esAKdEsqwAJdmjGP8D73lqmtU2
0XOi2mNUbFXbSEukcO6qVNtMQ72XaLJV7Enp929V20j3GfcXQoRq869Ktd1w
ZmaEVSuX9hmps4FLbINsO7QcZ2oTK5ezqFivxXQJev1M9MqlHpLvEaXXvfSu
d0PBp9c52izGoTO7ELE2uQvJHCqy2iwPdt73HdxHvDWwsfrkf2K12QB7K6zN
uxMtYW1uhirjos2kN44aRJfjtS4b6GEKC/Ok/KaEyWW1nIHeO3XJCtMpjnOE
eZ8VphTHFUlxXNJkcjU81UYXPpJ5fp2e7apuJTIdVAS52BekjUDd5AvS3qcF
eUS/rJsXrlp75HHpqghyN/Xy5mrbYD1dYUFi9rTGs2tyA+8kbjSZdDWp9eho
MtXWhFsS330lplADzvEBvGCJI8ck5u6rrhz5Kkopz7RwfdGYvmT22G2hsmiJ
ikKVMNO6IfEhrz9M7hi+FQszRn/mrUIplkOdDZiwrM7TMkegzgKrzg+yqrMV
F83P6fFs6jwMjP3N1VmE582EOod3OYMJ/GR76hyqr6ZcCiLJGtnUeSNdDqpz
tr5yrgmoU+0PJs0KjEJVYpzRZy1kvY2tXbg50fpU9e+j4y1x0RubJWtw3n7q
3cEXP/qj1xdfZRRN8m6jqZidkzEm4V1vNfJsiJCnqTzrmv4gSp5c8c4Tsj5w
3eQCkeqwPK/Q0z9y5anSqpoeC8pzzgJbVrbYN1dtWEnLM7AGpOXZIrcZ3cDU
q+RzRSwU2tfbApXOxekvw2RYjzn8CPxFKBTT5JgYq45MNwRlOjFapkfhCeaS
KafW55LpSfx/ol2ZJq1MT0i6J3uqr8vl7jW+3EnnCtXli7iac4/RKpk2w6zV
mHRP+L1sYxyl1UPQ9hmtVe72927nrFpNilZNpuIRuFQ7JJrMf+O2MN+TNR8z
6mEffwfBXieC3SZF6dugmineZLCRRbsw7guWfw8JFhN7MuWHVDuHeK2gjDdV
VdklVbQKGrvk3Y6z1l3nXZTTw1am3A11mJJpwu9vxD/Owjc/hUtYoSrC+/9b
+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
KEE74enwweIn/yerg/5GOvIWa/Jr1s99TyPH8qUNbwM7fKKCe/N36PDC6Q5s
qpcOb+leh4cdK8FkgTzfdPngjF3OO53lkhu6z+7wSKimpuYf5aP98cviE/0J
fpLyDP8TW2TChAmxbn1aTToJnHUY0Pkx1fnHnpHOf1ZViLVhOJK2/2spwPH2
f6wWRg1X/b+10YHtLarjdx4nObQq5a6MCUogkV4OdjIpQA6VMDWjHNTwv4lG
Miqbh9RXJBp5UTr2AGd21LGDcuxxOpbI8XM/UP3hKSMAtWIbXX6K7q4xd0uv
n5NeZ9ibXn8wl16Pqk0ONh1xex1hngL9RlpDlLu8EBqfTunyQ4H6PapeVfP6
MnNhF7a92PZjK3du6jEc2XSMNNVpKI8690I5Z7hm8KKLNAyFZ1BWP2tQ8bgt
h+RYfOdfsf0Tvrsd/96O/mUZvv4Xyr3h/8NcWeT2WTVNx0ym08bdyGHUGAwg
nldycB0dIweqoXvyl9Tovyd/Gc4kDFpna2OdA6XHUBjNrjCYBHnpRdBZnuJ8
9ub6kkNwK2qm6bxxZTMcw3YUW4OzAHt6CY97foTtA2zvY8O4LlSEsjjApmJ7
klPhXoJscwmSNQkjfqokT3fh2/8iH9UJUOr8fZJQ0Wu0ZP3cjepz2uV0i+Sw
l852kkvzECqgZ3YjB7bRlsNJ1fkBPR5XPb6JevwoKn7qcaN4uOdbo2TIo+l7
voPqW5pV47Ib0jJN0IKvGqnHeZWfo/TUgDz0d/dSeK9kSuiRa+QX2R292e3o
rHkRtfGlTFyN/gi/UoFvPyB24yf0kYIM76n5SSmD6HozHexURLeKIgjQr8VU
h5aQ1+jt0Jja+pkgvKVBW9IU94U8oybW4k3+XuXonXYg4X47ghfB7jHvZimm
1EZSVr/8X+r+PUPD+jdtsjaziAh2Hn4tlP6HqXXN1lejTyY/bHu3fph4NCVp
jE1Wz/YF9ZX/rU4TVCDq+U267gxGuXvkqSlIiOU1FcqztFQ+/YDjhPVz0YCb
V251TmGmWkcc/kldP6je0XOfQ1XvOrBsr3VPzcrs7GzVyq/5HPXpOb6tc+bL
QTFYV1AMJiP3/6xuwDNQNsnt0C7t2KjdMmNdMG+LeCRaHbsiz6Ob8t2Pryop
ozxFFf1LQD9NTHtLiS6YtFT01TFXX3FfHXdgz4mgu+rGwG+n+sa/uv1kwp3C
9DfVCWOnitk6alND3xRiq+VcPODOMs1j8HSWbEH3/9x7MOCfEHBfw/kZr/jI
68r+PoTtwUtI7j0OPIp2Yfdq4nst1V60/Ixvz3dnvurPjJJU83fBoaceAeKM
ub1pykDvdI8Zd1qV8JPndqkEvTf+T0ViWT2gT6xbsNYHMflPtlW8SeCIgAu/
4v7YrPm/z6wrRQJ+rDi0HlQF/dgXvR2c0bp9ZV3TiroNNEM5XvN85s7U2uJb
63JSWOHPsui6MulNz2reZ729mRE6f2FdSs9JlhxDV4ZLPKU+mguj/8q6QtKL
DO6XoNOzP52LWv0b6+T5AWAYbmD3SDc65e+tsxa4t2w09jBz1gcyC1Sf9b9a
J+wVcJtDzAlPBfzywHv8H9YpewdA8g5zyjb3l2cF+v+xztrHlbHtk/1YXcwj
46bs3UCn/1fr7P1csRvX6PaAU/tKJTKqBkv7qNdXBeDttoCL1Lg/NVvVp0VK
9fqaAHnG3OuCfgxQxzRx+b/KzP2mYW7BW13zWlfgBpRWXbhZhTTomuXeDs1I
BAtd6vX3An5skMINuvDenDrZLzz1+vvuD86odIOuyzUWuSS2rF+oXqs0VMrm
cvrsN6mLaZXM/5V2t3d/YF1PvTZxfleG62zMjBx9HT7tTdYlrlfn8tjmoPOX
eH9HRlXEJx5sXeTGAJTIMTqBuchK9yJZNROf+FbrIgMCIHGDexHQj6XZe8pw
7CfW+VWvpAxv/CDgEgtSOyvz7xhmXedmdUJPZj/flZK5iGWIzMXnuveYLSri
a420rjvIiwQGd557zLiyBQHH1I4gOQw98ZXGWVe9JQAaiRyvOs3bzdm5NcG6
8A+9J7SnRnlctKALT8qpm91rTbKue2vADw4auAm67viAbk6vuYqtq/7IvYIB
VdDoRUHAsbFuN2eNPPhiM60L3+Z2le00BG06E3RtBdDc1No867LKKUmpwdfn
6BlwqaHuz8xNwy2yrqcUhadyvFar06CL/djbp9k13TLrYkNcCBlh6gmDdofe
mrnzPN7Eauv8Q90bNtQoCDj/oNQey/wj1lkXGe7+CMODPPeYucgAF0A5qbRN
1jWskMt0FIcc7Aez5s4lqOBzbbPOKyGKR1UmzHm/5+2W7HzZZZ16VEC3xMyp
r86pM9yz7bPOPNp7024U7vMRewV0S/p7P2hdYWzAvQc5g3luB+WmUKqsi4wL
kGmQ56dc7tzMfJ11/rvUt4PiazpPyCvc7B101Dq3Wt7dmHaWWogFEUvXAfy9
ZuscyoaxptEd5wVqu/Vhfvr83/iAWE5Pwb9SPxFKNt2Ax6hSdZC++wet70oN
x3epWl+Jr/+D9Jb+7jf4PFVrDL7QfdZFRU9912rq1eJpUaMh0zpsb8v//xc/
N8XooICLX3G9rzoWCS9atOgf5LM0NisD5Y1y6DK2SE1NDV/y3pTLZy84Va5P
ZJh87r/jsRheUi4T37Fjx9/KWzRCmXIZ5bTmWhApflbB1q1bv6+lJtJ9Uz62
lo6nuUz24j3JqXwkJ1tFvzDdybLWk8ndTsf3S/FYP1etRW5ft27dP8tnh+Lr
bNdIWzulrpH37+TYF3itefidm/H1Qnz/L+X429Kv6a6TtWxIfstLcozZE1Ec
og68yWM9Ai6QtUxGXSChfZN2bDXYnsf/z+DfbdgSCG8+5/2pAMqxHkR+xlz5
5LNGvo9YpxTo51oFoQOpPxrkpZ4st+F5yWqS7qCbPsmd3M6X37bJChP5xKet
16Idcx2W7gyQ4nsZL6CireAhV4kxR6MUl+Px5XxSfg5PynjS7pkQ6PH/ATyG
0zI=\
\>", "ImageResolution" -> \
144.],ExpressionUUID->"507dc5e1-72d6-4eb3-9c44-5d194fa30f8a"]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[{
 RowBox[{"Clear", "[", "m", "]"}], "\[IndentingNewLine]", 
 RowBox[{"m", " ", "=", " ", 
  RowBox[{"Manipulate", "[", "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{"Module", "[", 
     RowBox[{
      RowBox[{"{", 
       RowBox[{"p1", ",", " ", "p2", ",", " ", "g1", ",", " ", "g2"}], "}"}], 
      ",", "\[IndentingNewLine]", "\[IndentingNewLine]", 
      RowBox[{
       RowBox[{"p1", " ", "=", " ", 
        RowBox[{"Plot", "[", "\[IndentingNewLine]", 
         RowBox[{
          RowBox[{"{", 
           RowBox[{"(*", 
            RowBox[{
             RowBox[{"un", "[", 
              RowBox[{"1", ",", " ", "r", ",", " ", "z"}], "]"}], ","}], 
            "*)"}], "\[IndentingNewLine]", 
           RowBox[{"(*", 
            RowBox[{
             RowBox[{"un", "[", 
              RowBox[{"3", ",", " ", "r", ",", " ", "z"}], "]"}], ","}], 
            "*)"}], "\[IndentingNewLine]", 
           RowBox[{"un", "[", 
            RowBox[{"n", ",", " ", "r", ",", " ", "z"}], "]"}], 
           "\[IndentingNewLine]", 
           RowBox[{"(*", 
            RowBox[{"{", 
             RowBox[{
              RowBox[{"un", "[", 
               RowBox[{"n", ",", " ", "r", ",", " ", "z"}], "]"}], ",", "r"}],
              "}"}], "*)"}], "\[IndentingNewLine]", "}"}], 
          "\[IndentingNewLine]", 
          RowBox[{"(*", 
           RowBox[{"Table", "[", 
            RowBox[{
             RowBox[{"un", "[", 
              RowBox[{"j", ",", " ", "r", ",", " ", "z"}], "]"}], ",", 
             RowBox[{"{", 
              RowBox[{"j", ",", " ", "n"}], "}"}]}], "]"}], "*)"}], 
          "\[IndentingNewLine]", ",", " ", 
          RowBox[{"{", 
           RowBox[{"r", ",", " ", "0", ",", " ", "cupRadius"}], "}"}], 
          "\[IndentingNewLine]", 
          RowBox[{"(*", 
           RowBox[{",", " ", 
            RowBox[{"AspectRatio", "\[Rule]", " ", 
             RowBox[{"stirRadius", " ", 
              RowBox[{"omega", "/", "cupRadius"}]}]}]}], "*)"}], 
          "\[IndentingNewLine]", 
          RowBox[{"(*", 
           RowBox[{",", " ", 
            RowBox[{"PlotRange", " ", "\[Rule]", " ", 
             RowBox[{"stirRadius", " ", "omega"}]}], "\[IndentingNewLine]", 
            ",", 
            RowBox[{"AxesOrigin", "\[Rule]", 
             RowBox[{"{", 
              RowBox[{"0", ",", "0"}], "}"}]}]}], "*)"}], 
          "\[IndentingNewLine]", ",", " ", 
          RowBox[{"PlotStyle", "\[Rule]", " ", 
           RowBox[{"{", 
            RowBox[{"Thick", ",", " ", "Black"}], "}"}]}], 
          "\[IndentingNewLine]", ",", 
          RowBox[{"PlotRange", " ", "\[Rule]", " ", 
           RowBox[{"{", 
            RowBox[{
             RowBox[{"{", 
              RowBox[{"0", ",", " ", "cupRadius"}], "}"}], ",", 
             RowBox[{"{", 
              RowBox[{"0", ",", " ", 
               RowBox[{"1.5", " ", "stirRadius", " ", "omega"}]}], "}"}]}], 
            "}"}]}]}], "\[IndentingNewLine]", 
         RowBox[{"(*", "\[IndentingNewLine]", 
          RowBox[{",", " ", 
           RowBox[{"Filling", "\[Rule]", "Axis"}]}], "*)"}], 
         "\[IndentingNewLine]", "]"}]}], " ", ";", "\[IndentingNewLine]", 
       RowBox[{"p2", " ", "=", " ", 
        RowBox[{"Plot", "[", "\[IndentingNewLine]", 
         RowBox[{
          RowBox[{"{", "\[IndentingNewLine]", 
           RowBox[{"ut", "[", 
            RowBox[{"n", ",", " ", "r", ",", " ", "z", ",", " ", "0."}], 
            "]"}], "\[IndentingNewLine]", 
           RowBox[{"(*", 
            RowBox[{"{", 
             RowBox[{
              RowBox[{"un", "[", 
               RowBox[{"n", ",", " ", "r", ",", " ", "z"}], "]"}], ",", "r"}],
              "}"}], "*)"}], "\[IndentingNewLine]", "}"}], 
          "\[IndentingNewLine]", 
          RowBox[{"(*", 
           RowBox[{"Table", "[", 
            RowBox[{
             RowBox[{"un", "[", 
              RowBox[{"j", ",", " ", "r", ",", " ", "z"}], "]"}], ",", 
             RowBox[{"{", 
              RowBox[{"j", ",", " ", "n"}], "}"}]}], "]"}], "*)"}], 
          "\[IndentingNewLine]", ",", " ", 
          RowBox[{"{", 
           RowBox[{"r", ",", " ", "0", ",", " ", "cupRadius"}], "}"}], 
          "\[IndentingNewLine]", 
          RowBox[{"(*", 
           RowBox[{",", " ", 
            RowBox[{"AspectRatio", "\[Rule]", " ", 
             RowBox[{"stirRadius", " ", 
              RowBox[{"omega", "/", "cupRadius"}]}]}]}], "*)"}], 
          "\[IndentingNewLine]", 
          RowBox[{"(*", 
           RowBox[{",", " ", 
            RowBox[{"PlotRange", " ", "\[Rule]", " ", 
             RowBox[{"stirRadius", " ", "omega"}]}], "\[IndentingNewLine]", 
            ",", 
            RowBox[{"AxesOrigin", "\[Rule]", 
             RowBox[{"{", 
              RowBox[{"0", ",", "0"}], "}"}]}]}], "*)"}], 
          "\[IndentingNewLine]", ",", " ", 
          RowBox[{"PlotStyle", "\[Rule]", " ", 
           RowBox[{"{", 
            RowBox[{"Thick", ",", " ", "Black"}], "}"}]}], 
          "\[IndentingNewLine]", ",", 
          RowBox[{"PlotRange", " ", "\[Rule]", " ", 
           RowBox[{"{", 
            RowBox[{
             RowBox[{"{", 
              RowBox[{"0", ",", " ", "cupRadius"}], "}"}], ",", 
             RowBox[{"{", 
              RowBox[{"0", ",", " ", 
               RowBox[{"1.5", " ", "stirRadius", " ", "omega"}]}], "}"}]}], 
            "}"}]}]}], "\[IndentingNewLine]", 
         RowBox[{"(*", "\[IndentingNewLine]", 
          RowBox[{",", " ", 
           RowBox[{"Filling", "\[Rule]", "Axis"}]}], "*)"}], 
         "\[IndentingNewLine]", "]"}]}], " ", ";", "\[IndentingNewLine]", 
       RowBox[{"g1", " ", "=", " ", 
        RowBox[{"Graphics", "[", 
         RowBox[{"Line", "[", 
          RowBox[{"{", 
           RowBox[{
            RowBox[{"{", 
             RowBox[{"stirRadius", ",", " ", "0"}], "}"}], ",", " ", 
            RowBox[{"{", 
             RowBox[{"stirRadius", ",", " ", 
              RowBox[{"stirRadius", " ", "omega"}]}], "}"}]}], "}"}], "]"}], 
         "]"}]}], " ", ";", "\[IndentingNewLine]", 
       RowBox[{"g2", " ", "=", " ", 
        RowBox[{"Graphics", "[", 
         RowBox[{"Line", "[", 
          RowBox[{"{", 
           RowBox[{
            RowBox[{"{", 
             RowBox[{"0", ",", " ", 
              RowBox[{"stirRadius", " ", "omega"}]}], "}"}], ",", " ", 
            RowBox[{"{", 
             RowBox[{"cupRadius", ",", " ", 
              RowBox[{"stirRadius", " ", "omega"}]}], "}"}]}], "}"}], "]"}], 
         "]"}]}], " ", ";", "\[IndentingNewLine]", 
       RowBox[{"Show", "[", 
        RowBox[{"{", 
         RowBox[{"p1", ",", " ", "p2", ",", " ", "g1", ",", " ", "g2"}], 
         "}"}], "]"}]}]}], " ", "\[IndentingNewLine]", "]"}], ",", 
    "\[IndentingNewLine]", 
    RowBox[{"{", 
     RowBox[{
      RowBox[{"{", 
       RowBox[{"z", ",", " ", 
        RowBox[{"stirDepth", "/", "3"}]}], "}"}], ",", " ", "0", ",", " ", 
      "stirDepth"}], "}"}], ",", "\[IndentingNewLine]", 
    RowBox[{"SaveDefinitions", "\[Rule]", "True"}]}], "\[IndentingNewLine]", 
   "]"}]}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{"(*", 
   RowBox[{"With", "[", 
    RowBox[{
     RowBox[{"{", 
      RowBox[{
       RowBox[{"r", " ", "=", " ", "stirRadius"}], ",", " ", 
       RowBox[{"z", " ", "=", " ", "stirDepth"}]}], "}"}], ",", 
     "\[IndentingNewLine]", 
     RowBox[{"{", 
      RowBox[{
       RowBox[{"0.00783779115426792`", " ", 
        RowBox[{"BesselJ", "[", 
         RowBox[{"1.`", ",", 
          RowBox[{"38.31705970207512`", " ", "r"}]}], "]"}], " ", 
        RowBox[{"Sinh", "[", 
         RowBox[{"38.31705970207512`", " ", "z"}], "]"}]}], " ", ",", 
       RowBox[{"u", "[", 
        RowBox[{"r", ",", " ", "z"}], "]"}], ",", "\[IndentingNewLine]", 
       RowBox[{"stirRadius", " ", "omega"}]}], "}"}]}], "]"}], 
   "*)"}]}]}], "Input",
 CellChangeTimes->{{3.5448238701272326`*^9, 3.544823975986287*^9}, {
   3.544824009469202*^9, 3.5448241073428*^9}, {3.544824143579873*^9, 
   3.5448243465994844`*^9}, {3.5448244111291757`*^9, 3.544824500140267*^9}, {
   3.5448245838190527`*^9, 3.5448245856661587`*^9}, {3.5448250218291054`*^9, 
   3.544825098958517*^9}, {3.544825148996379*^9, 3.5448251818372574`*^9}, {
   3.5448252599557257`*^9, 3.544825266462098*^9}, {3.544825328410641*^9, 
   3.54482546004317*^9}, {3.5448257137686825`*^9, 3.5448257534429517`*^9}, {
   3.544826576944053*^9, 3.5448265792801867`*^9}, {3.544826753223136*^9, 
   3.544826781177735*^9}, {3.5448268788033185`*^9, 3.544826907074936*^9}, {
   3.544826937712688*^9, 3.5448269578288383`*^9}, {3.544827004652517*^9, 
   3.544827010061826*^9}, {3.5448272758270273`*^9, 3.5448272930170107`*^9}, {
   3.544827352040386*^9, 3.5448273866233644`*^9}, {3.5448275072992663`*^9, 
   3.544827535459877*^9}, {3.544827576140204*^9, 3.5448276127022953`*^9}, {
   3.544827664748272*^9, 3.5448276653873086`*^9}, {3.5448277841261*^9, 
   3.5448278458896327`*^9}, {3.544922669317302*^9, 3.544922710663667*^9}, {
   3.5449230166951714`*^9, 3.544923020709401*^9}, 3.544923097912816*^9, {
   3.545085238620126*^9, 3.545085265143643*^9}, {3.890860011048625*^9, 
   3.890860040159192*^9}, {3.890860074543524*^9, 3.890860115650785*^9}},
 CellLabel->"In[35]:=",ExpressionUUID->"8f246964-5f5b-4489-b71d-8195cb0224b5"],

Cell[BoxData[
 TagBox[
  StyleBox[
   DynamicModuleBox[{$CellContext`z$$ = 0.02, Typeset`show$$ = True, 
    Typeset`bookmarkList$$ = {}, Typeset`bookmarkMode$$ = "Menu", 
    Typeset`animator$$, Typeset`animvar$$ = 1, Typeset`name$$ = 
    "\"untitled\"", Typeset`specs$$ = {{{
       Hold[$CellContext`z$$], 0.006666666666666666}, 0, 0.02}}, 
    Typeset`size$$ = {360., {110., 115.}}, Typeset`update$$ = 0, 
    Typeset`initDone$$, Typeset`skipInitDone$$ = False}, 
    DynamicBox[Manipulate`ManipulateBoxes[
     1, StandardForm, 
      "Variables" :> {$CellContext`z$$ = 0.006666666666666666}, 
      "ControllerVariables" :> {}, 
      "OtherVariables" :> {
       Typeset`show$$, Typeset`bookmarkList$$, Typeset`bookmarkMode$$, 
        Typeset`animator$$, Typeset`animvar$$, Typeset`name$$, 
        Typeset`specs$$, Typeset`size$$, Typeset`update$$, Typeset`initDone$$,
         Typeset`skipInitDone$$}, "Body" :> 
      Module[{$CellContext`p1$, $CellContext`p2$, $CellContext`g1$, \
$CellContext`g2$}, $CellContext`p1$ = Plot[{
            $CellContext`un[$CellContext`n, $CellContext`r, \
$CellContext`z$$]}, {$CellContext`r, 0, $CellContext`cupRadius}, 
           PlotStyle -> {Thick, Black}, 
           PlotRange -> {{0, $CellContext`cupRadius}, {
             0, 1.5 $CellContext`stirRadius $CellContext`omega}}]; \
$CellContext`p2$ = Plot[{
            $CellContext`ut[$CellContext`n, $CellContext`r, $CellContext`z$$, 
             0.]}, {$CellContext`r, 0, $CellContext`cupRadius}, 
           PlotStyle -> {Thick, Black}, 
           PlotRange -> {{0, $CellContext`cupRadius}, {
             0, 1.5 $CellContext`stirRadius $CellContext`omega}}]; \
$CellContext`g1$ = Graphics[
           
           Line[{{$CellContext`stirRadius, 
              0}, {$CellContext`stirRadius, $CellContext`stirRadius \
$CellContext`omega}}]]; $CellContext`g2$ = Graphics[
           
           Line[{{0, $CellContext`stirRadius $CellContext`omega}, \
{$CellContext`cupRadius, $CellContext`stirRadius $CellContext`omega}}]]; 
        Show[{$CellContext`p1$, $CellContext`p2$, $CellContext`g1$, \
$CellContext`g2$}]], 
      "Specifications" :> {{{$CellContext`z$$, 0.006666666666666666}, 0, 
         0.02}}, "Options" :> {}, "DefaultOptions" :> {}],
     ImageSizeCache->{405., {155., 161.}},
     SingleEvaluation->True],
    Deinitialization:>None,
    DynamicModuleValues:>{},
    Initialization:>({$CellContext`un = 
       Function[{$CellContext`j, $CellContext`r, $CellContext`z}, 
         Sum[
          Part[
           $CellContext`termTable[$CellContext`r, $CellContext`z], \
$CellContext`i], {$CellContext`i, $CellContext`j}], 
         HoldFirst], $CellContext`termTable[
         Pattern[$CellContext`r, 
          Blank[]], 
         Pattern[$CellContext`z, 
          Blank[]]] = {
        27.111898773569695` BesselJ[1., 7.663411940415024 $CellContext`r] 
         Sinh[7.663411940415024 $CellContext`z], (-3.428194548171889) 
         BesselJ[1., 14.031173339631245` $CellContext`r] 
         Sinh[14.031173339631245` $CellContext`z], 4.978065010508693 
         BesselJ[1., 20.346936270125443` $CellContext`r] 
         Sinh[20.346936270125443` $CellContext`z], (-1.5354156153105702`) 
         BesselJ[1., 26.647383872628446` $CellContext`r] 
         Sinh[26.647383872628446` $CellContext`z], 2.1614651978333597` 
         BesselJ[1., 32.94126010175527 $CellContext`r] 
         Sinh[32.94126010175527 $CellContext`z], (-0.8850272603680964) 
         BesselJ[1., 39.231717020936486` $CellContext`r] 
         Sinh[39.231717020936486` $CellContext`z], 1.2031079404758465` 
         BesselJ[1., 45.520168761185545` $CellContext`r] 
         Sinh[45.520168761185545` $CellContext`z], (-0.5693073704277771) 
         BesselJ[1., 51.807344175236764` $CellContext`r] 
         Sinh[51.807344175236764` $CellContext`z]}, $CellContext`n = 
       8, $CellContext`cupRadius = 0.5, $CellContext`stirRadius = 
       0.3, $CellContext`omega = 2 Pi, $CellContext`ut = 
       Function[{$CellContext`j, $CellContext`r, $CellContext`z, \
$CellContext`t}, 
         Sum[
          Part[
           $CellContext`ttSpinDown[$CellContext`r, $CellContext`z, \
$CellContext`t], $CellContext`i], {$CellContext`i, $CellContext`j}], 
         HoldFirst], $CellContext`ttSpinDown[
         Pattern[$CellContext`r, 
          Blank[]], 
         Pattern[$CellContext`z, 
          Blank[]], 
         Pattern[$CellContext`t, 
          Blank[]]] = {(0.09226650911423055 
          BesselJ[1., 7.663411940415024 $CellContext`r] 
          Sin[314.1592653589793 $CellContext`z])/
         2.718281828459045^(
          0.08815197160535856 $CellContext`t), ((-0.08525383222267456) 
          BesselJ[1., 14.031173339631245` $CellContext`r] 
          Sin[628.3185307179587 $CellContext`z])/
         2.718281828459045^(0.35257393263241044` $CellContext`t), (
          0.08361373740572452 BesselJ[1., 20.346936270125443` $CellContext`r] 
          Sin[942.4777960769379 $CellContext`z])/
         2.718281828459045^(
          0.7932654903105055 $CellContext`t), ((-0.08374297577050788) 
          BesselJ[1., 26.647383872628446` $CellContext`r] 
          Sin[1256.6370614359173` $CellContext`z])/
         2.718281828459045^(1.4102266296556982` $CellContext`t), (
          0.0848663845200673 BesselJ[1., 32.94126010175527 $CellContext`r] 
          Sin[1570.7963267948967` $CellContext`z])/
         2.718281828459045^(
          2.2034573480229147` $CellContext`t), ((-0.08672837545025597) 
          BesselJ[1., 39.231717020936486` $CellContext`r] 
          Sin[1884.9555921538758` $CellContext`z])/
         2.718281828459045^(3.1729576446581653` $CellContext`t), (
          0.0892316088769435 BesselJ[1., 45.520168761185545` $CellContext`r] 
          Sin[2199.1148575128555` $CellContext`z])/
         2.718281828459045^(
          4.318727519281907 $CellContext`t), ((-0.09234266746635188) 
          BesselJ[1., 51.807344175236764` $CellContext`r] 
          Sin[2513.2741228718346` $CellContext`z])/
         2.718281828459045^(5.640766971771396 $CellContext`t)}}; 
     Typeset`initDone$$ = True),
    SynchronousInitialization->True,
    UndoTrackedVariables:>{Typeset`show$$, Typeset`bookmarkMode$$},
    UnsavedVariables:>{Typeset`initDone$$},
    UntrackedVariables:>{Typeset`size$$}], "Manipulate",
   Deployed->True,
   StripOnInput->False],
  Manipulate`InterpretManipulate[1]]], "Output",
 CellChangeTimes->{{3.54482690942807*^9, 3.544826959491934*^9}, 
   3.544827059808672*^9, 3.5448271129377103`*^9, 3.5448272959011755`*^9, {
   3.5448273540975037`*^9, 3.5448273891785107`*^9}, 3.544827537730007*^9, {
   3.544827590645034*^9, 3.5448276133863344`*^9}, 3.544827666612379*^9, {
   3.544827823151332*^9, 3.5448278472677116`*^9}, 3.544832849172804*^9, 
   3.544922715096921*^9, 3.5449231029041023`*^9, 3.544923540250117*^9, 
   3.5450852010429764`*^9, {3.545085247137613*^9, 3.5450852659276876`*^9}, 
   3.890859977477251*^9, {3.8908600196820297`*^9, 3.890860040742381*^9}, 
   3.890860124118464*^9},
 CellLabel->"Out[36]=",ExpressionUUID->"326c8ace-0edb-43e1-a691-8776044310af"]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"coffeeCupWithBottomVectorFig2", " ", "=", " ", 
  RowBox[{"DynamicModule", "[", 
   RowBox[{
    RowBox[{"{", 
     RowBox[{"z", "=", "0.02`"}], "}"}], ",", 
    RowBox[{"Module", "[", 
     RowBox[{
      RowBox[{"{", 
       RowBox[{"p1$", ",", "p2$", ",", "g1$", ",", "g2$"}], "}"}], ",", 
      RowBox[{
       RowBox[{"p1$", "=", 
        RowBox[{"Plot", "[", 
         RowBox[{
          RowBox[{"{", 
           RowBox[{"un", "[", 
            RowBox[{"n", ",", "r", ",", "z"}], "]"}], "}"}], ",", 
          RowBox[{"{", 
           RowBox[{"r", ",", "0", ",", "cupRadius"}], "}"}], ",", 
          RowBox[{"PlotStyle", "\[Rule]", 
           RowBox[{"{", 
            RowBox[{"Thick", ",", "Black"}], "}"}]}], ",", 
          RowBox[{"PlotRange", "\[Rule]", 
           RowBox[{"{", 
            RowBox[{
             RowBox[{"{", 
              RowBox[{"0", ",", "cupRadius"}], "}"}], ",", 
             RowBox[{"{", 
              RowBox[{"0", ",", 
               RowBox[{"1.5`", " ", "stirRadius", " ", "omega"}]}], "}"}]}], 
            "}"}]}]}], "]"}]}], ";", 
       RowBox[{"p2$", "=", 
        RowBox[{"Plot", "[", 
         RowBox[{
          RowBox[{"{", 
           RowBox[{"ut", "[", 
            RowBox[{"n", ",", "r", ",", "z", ",", "0.`"}], "]"}], "}"}], ",", 
          RowBox[{"{", 
           RowBox[{"r", ",", "0", ",", "cupRadius"}], "}"}], ",", 
          RowBox[{"PlotStyle", "\[Rule]", 
           RowBox[{"{", 
            RowBox[{"Thick", ",", "Black"}], "}"}]}], ",", 
          RowBox[{"PlotRange", "\[Rule]", 
           RowBox[{"{", 
            RowBox[{
             RowBox[{"{", 
              RowBox[{"0", ",", "cupRadius"}], "}"}], ",", 
             RowBox[{"{", 
              RowBox[{"0", ",", 
               RowBox[{"1.5`", " ", "stirRadius", " ", "omega"}]}], "}"}]}], 
            "}"}]}]}], "]"}]}], ";", 
       RowBox[{"g1$", "=", 
        RowBox[{"Graphics", "[", 
         RowBox[{"Line", "[", 
          RowBox[{"{", 
           RowBox[{
            RowBox[{"{", 
             RowBox[{"stirRadius", ",", "0"}], "}"}], ",", 
            RowBox[{"{", 
             RowBox[{"stirRadius", ",", 
              RowBox[{"stirRadius", " ", "omega"}]}], "}"}]}], "}"}], "]"}], 
         "]"}]}], ";", 
       RowBox[{"g2$", "=", 
        RowBox[{"Graphics", "[", 
         RowBox[{"Line", "[", 
          RowBox[{"{", 
           RowBox[{
            RowBox[{"{", 
             RowBox[{"0", ",", 
              RowBox[{"stirRadius", " ", "omega"}]}], "}"}], ",", 
            RowBox[{"{", 
             RowBox[{"cupRadius", ",", 
              RowBox[{"stirRadius", " ", "omega"}]}], "}"}]}], "}"}], "]"}], 
         "]"}]}], ";", 
       RowBox[{"Show", "[", 
        RowBox[{"{", 
         RowBox[{"p1$", ",", "p2$", ",", "g1$", ",", "g2$"}], "}"}], 
        "]"}]}]}], "]"}]}], "]"}]}]], "Input",
 GeneratedCell->False,
 CellAutoOverwrite->False,
 CellChangeTimes->{
  3.890860289484268*^9, {3.89086041730026*^9, 3.8908604415081472`*^9}},
 CellLabel->"In[38]:=",ExpressionUUID->"bfec9b3d-b898-4920-9294-5c2f817363ed"],

Cell[BoxData[
 DynamicModuleBox[{$CellContext`z$$ = 0.02}, 
  GraphicsBox[{{{{}, {}, 
      TagBox[
       {GrayLevel[0], Thickness[Large], Opacity[1.], LineBox[CompressedData["
1:eJwVm3k8VO8Xx+9ISKiQsqaUVFLfSih1boisISJ7EiUiVFpk14IQicgSsoTs
IVnGvjbDYDCWhJCSrTKL+T2/v+b1ft17n/s853zOuefzx+y0dzO+yoFh2NQ6
DPv/r87VaXLtzNnT9G1Sdd/+vj7NqS7mPiq6GxrjJCaZVd5wNDkusVj0GKRs
oibUVT0B3c7+ojeiGiDrsO10VFUcmDn8/fxC1ASkRl7tU6jKguFDj9XDRR1g
XUvxIqmyHFK2ng95JuoFpM7pkx6lLeDPU7z3qWgQNNTwH5xLpoL5pdQPvxdi
ILIhMcpOfQY2sv2ttKSSwcWT21ZDZxHirpvZyGsmQ1z8+TxX20XYTZG323Iz
GcSIxjPhXotwOrv/ytDnZKidufunKGkRKrJjSz8qpAAx/vK/8MVF+Hlhrkq3
KwUyJ48fehi3BKZZr9o9+d/CiPPFkWHaMuwx+jVdH5oO6o9UGgY1/oKYr9YJ
p9R0eCxxxXnG/C9szksJ5f2YDi1HAiNmXP4CneeCgtF4OggmdWytjvkLpNqP
niPKGaCya4tB2be/cP+w/9q/yQzQm3pi3/voH3RtEhZWwDNh9sn5KNvsVag/
5XqVbJoJQiY3tHw/rUL5jaYyrxuZMKdjHvK8cxXSmr0vfYrNBM6bn+0fLKyC
t+9w0rmfmfDPxWAlTJkOu+bf7bvyOgvsV+dzA+rpcLdLBeKWs+EYxXTRpIMB
Agqlk608OWBektOpMsSA9PDDYQyJHKgT/NQmMMsAst7eAZuzOcCelsGecjPh
QLuw557YHOA7ve345zNMGG2ef1ek9B5437otiRczQasuQ6Dzfi7YU9dbuz1l
wYj0ztK157nA0nawOhvLAi+/RMvDablwk1hgwJvGglSIzopuzwXX0Z0/7KpY
wPjsp2YhkQfG/Lo78V8s+FBpeef75zzY/PrExxqDNdhWsmWEQPgA+xV1iqM4
2GAVxjCZEPkAXSQLSXEBNrx1mGxvkv8AS3IbH0aIskF+a0VFqPkH4NFZYSgf
ZoPaHbuXWws+gGeiisFzKzYcTzR7F3OoAJLlPZZUC9lw6UnH1+ATBSAvVVLl
8YkND73OSN49WwDENUfJ6EY21OkdiLlkWQC8X/pfRA+wQY+15i/1uACuW0vd
0MYw/LLNO+uskQL4pbG1Vn0PhgfpiMfHzxTA78P1t4v2Yfi745GUZ8sFkFRx
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
+Xu6xe/XGaf/B2tUgII=
         "]]},
       Annotation[#, "Charting`Private`Tag$155460#1"]& ]}, {}}, {{{}, {}, 
      TagBox[
       {GrayLevel[0], Thickness[Large], Opacity[1.], 
        LineBox[{{1.020408163265306*^-8, 2.251459951996905*^-22}, {
         0.00015335896027981338`, 3.3837397781502578`*^-18}, {
         0.0003067077164779941, 6.767137523554051*^-18}, {
         0.0006134052288743556, 1.3533114867145813`*^-17}, {
         0.0012268002536670786`, 2.7058525366780665`*^-17}, {
         0.0024535903032525245`, 5.405702192974537*^-17}, {
         0.004907170402423416, 1.0763633812872932`*^-16}, {0.0098143306007652,
          2.1148277594049277`*^-16}, {0.020454178542729323`, 
         4.067445195559313*^-16}, {0.030388941785076045`, 
         5.306831323467046*^-16}, {0.040128824409438026`, 
         5.821482740797204*^-16}, {0.05069423457908056, 
         5.559223277139917*^-16}, {0.06055456004910569, 
         4.63536182443255*^-16}, {0.0712404130644114, 
         3.1148173569044047`*^-16}, {0.08173138546173234, 
         1.3933125265984546`*^-16}, {0.09062432744353661, 0.}}], 
        LineBox[{{0.16369908935269376`, 0.}, {0.17299275412626647`, 
         5.601337430955021*^-17}, {0.18357573667027055`, 
         9.188305125553232*^-17}, {0.19345363451465725`, 
         9.660069441639602*^-17}, {0.2041570599043245, 
         7.501943134835374*^-17}, {0.214665604676007, 
         3.718461178701696*^-17}, {0.224088636745281, 0.}}], 
        LineBox[{{0.27620550870805566`, 0.}, {0.28582998526400755`, 
         3.062246028515142*^-17}, {0.29631009733671004`, 
         5.788921074353586*^-17}, {0.30608512470979515`, 
         7.133554559518879*^-17}, {0.3166856796281608, 
         6.905860135677794*^-17}, {0.32658114984690906`, 
         5.122263593198003*^-17}, {0.33628173944767253`, 
         2.218256067685317*^-17}, {0.34235671611206236`, 0.}}], 
        LineBox[CompressedData["
1:eJwB4QEe/iFib1JlAgAAAB0AAAACAAAAe2IUW6MD3D8AAAAAAAAAABFKciyC
Dtw/cLe6cMi+PjzcLdDTebzcP6UutbrHDnk8sJ4/JORe3T9CSlwKqI6CPF2v
NhEd/t0/IPZ1YgOygzyAhaGB3KrePwhjbkOaH4A8regdmw5M3z+4hbLiJ9py
PIidhWDeTt8/0DGl8xyUcjxkUu0lrlHfP9H6JifOTXI8HLy8sE1X3z+7fE2Q
acBxPIqPW8aMYt8/56vSwaSicDxoNpnxCnnfP2OLy+BhuGw8IoQUSAem3z9c
QXYgsVdjPP44fA3XqN8/rDLucyq/YjzZ7ePSpqvfP8s/qUhnJmI8kFezXUax
3z/+1aYDNfRgPP8qUnOFvN8/kTjPXscaXTzc0Y+eA9PfPwZm6QRMcFM8uIb3
Y9PV3z9QSFXz7DlSPJQ7Xymj2N8/6RTofGEDUTxLpS60Qt7fP3JoIRexK008
unjNyYHp3z8QboNiCXNDPJYtNY9R7N8/SZV0J5EEQTxx4pxUIe/fP3PYuXkZ
LD08KExs38D03z9MBQkuC3IzPAQB1KSQ998/ur6Y31cqLTzgtTtqYPrfP5GI
TYUBcSM8vGqjLzD93z+ezc/wcnATPJcfC/X//98/FcSoNxzvMjtnatx6
         "]]},
       Annotation[#, "Charting`Private`Tag$155517#1"]& ]}, {}}, 
    LineBox[{{0.3, 0}, {0.3, 1.8849555921538759`}}], 
    LineBox[{{0, 1.8849555921538759`}, {0.5, 1.8849555921538759`}}]},
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
           "placement" -> {"x" -> "All", "y" -> "None"}}}}, 
     "DefaultMeshStyle" -> AbsolutePointSize[6], "ScalingFunctions" -> None, 
     "CoordinatesToolOptions" -> {"DisplayFunction" -> ({
         (Identity[#]& )[
          Part[#, 1]], 
         (Identity[#]& )[
          Part[#, 2]]}& ), "CopiedValueFunction" -> ({
         (Identity[#]& )[
          Part[#, 1]], 
         (Identity[#]& )[
          Part[#, 2]]}& )}},
   PlotRange->{{0, 0.5}, {0, 2.8274333882308134`}},
   PlotRangeClipping->True,
   PlotRangePadding->{{0, 0}, {0, 0}},
   Ticks->{Automatic, Automatic}],
  DynamicModuleValues:>{}]], "Output",
 CellChangeTimes->{{3.890860424013723*^9, 3.890860449022519*^9}},
 CellLabel->"Out[38]=",ExpressionUUID->"cf25f347-0cf3-4ec9-b5a1-1df9db45c6a6"]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"{", 
  RowBox[{
   RowBox[{"1", "\[RuleDelayed]", 
    RowBox[{"{", 
     RowBox[{"z", "=", "0.002`"}], "}"}]}], ",", 
   RowBox[{"2", "\[RuleDelayed]", 
    RowBox[{"{", 
     RowBox[{"z", "=", "0.007`"}], "}"}]}], ",", 
   RowBox[{"3", "\[RuleDelayed]", 
    RowBox[{"{", 
     RowBox[{"z", "=", "0.014`"}], "}"}]}], ",", 
   RowBox[{"4", "\[RuleDelayed]", 
    RowBox[{"{", 
     RowBox[{"z", "=", "0.018000000000000002`"}], "}"}]}], ",", 
   RowBox[{"5", "\[RuleDelayed]", 
    RowBox[{"{", 
     RowBox[{"z", "=", "0.02`"}], "}"}]}]}], "}"}]], "Input",
 GeneratedCell->False,
 CellAutoOverwrite->False,
 CellChangeTimes->{
  3.5448310400443277`*^9},ExpressionUUID->"31224acf-4764-45df-b7ae-\
de2a906c179b"],

Cell[BoxData[
 RowBox[{"{", 
  RowBox[{
   RowBox[{"1", "\[RuleDelayed]", 
    RowBox[{"{", 
     RowBox[{"z", "=", "0.002`"}], "}"}]}], ",", 
   RowBox[{"2", "\[RuleDelayed]", 
    RowBox[{"{", 
     RowBox[{"z", "=", "0.007`"}], "}"}]}], ",", 
   RowBox[{"3", "\[RuleDelayed]", 
    RowBox[{"{", 
     RowBox[{"z", "=", "0.014`"}], "}"}]}], ",", 
   RowBox[{"4", "\[RuleDelayed]", 
    RowBox[{"{", 
     RowBox[{"z", "=", "0.018000000000000002`"}], "}"}]}], ",", 
   RowBox[{"5", "\[RuleDelayed]", 
    RowBox[{"{", 
     RowBox[{"z", "=", "0.02`"}], "}"}]}]}], "}"}]], "Output",
 CellChangeTimes->{
  3.5448310456366477`*^9},ExpressionUUID->"297f79cc-32ab-4b83-95fe-\
6f744d79b21a"]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"SetDirectory", "[", 
  "\"\<C:\\\\Users\\\\Peeter\\\\cygwin_home\\\\physicsplay\\\\notes\\\\blogit\
\>\"", "]"}]], "Input",
 CellChangeTimes->{{3.544826595701126*^9, 
  3.544826608929883*^9}},ExpressionUUID->"0516953b-05ed-42f6-829c-\
b91293aa9014"],

Cell[BoxData["\<\"C:\\\\Users\\\\Peeter\\\\cygwin_home\\\\physicsplay\\\\\
notes\\\\blogit\"\>"], "Output",
 CellChangeTimes->{{3.5448265980512605`*^9, 
  3.544826610416968*^9}},ExpressionUUID->"8a6c6688-329e-4695-8afd-\
b4c8b2afc77d"]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"Export", "[", 
  RowBox[{"\"\<bottomlessCoffee5cmRadius.mov\>\"", ",", "m", ",", 
   RowBox[{"\"\<VideoEncoding\>\"", "\[Rule]", "\"\<MPEG-4 Video\>\""}]}], 
  "]"}]], "Input",
 CellChangeTimes->{{3.544826613144124*^9, 3.544826617899396*^9}, {
  3.5448267063254533`*^9, 3.5448267132388487`*^9}, {3.544827887593018*^9, 
  3.54482789375037*^9}, {3.5448328825927153`*^9, 
  3.544832889563114*^9}},ExpressionUUID->"49fac8ef-5833-4b0e-b293-\
534f441c4229"],

Cell[BoxData["\<\"bottomlessCoffee5cmRadius.mov\"\>"], "Output",
 CellChangeTimes->{3.5448282209500847`*^9, 
  3.5448332931852007`*^9},ExpressionUUID->"a70ae20f-ba94-47f0-9187-\
60d2da651f83"]
}, Open  ]]
}, Open  ]],

Cell[CellGroupData[{

Cell["Scratch calculations.", "Section",
 CellChangeTimes->{{3.5448184843151813`*^9, 
  3.5448184871373425`*^9}},ExpressionUUID->"715b3610-a714-4376-8b1a-\
4e3e088d2739"],

Cell[CellGroupData[{

Cell[BoxData[{
 RowBox[{"DSolve", "[", 
  RowBox[{
   RowBox[{
    RowBox[{
     RowBox[{
      RowBox[{"r", "^", "2"}], " ", 
      RowBox[{
       RowBox[{"u", "''"}], "[", "r", "]"}]}], " ", "+", " ", 
     RowBox[{"r", " ", 
      RowBox[{
       RowBox[{"u", "'"}], "[", "r", "]"}]}], " ", "+", " ", 
     RowBox[{
      RowBox[{"u", "[", "r", "]"}], 
      RowBox[{"(", 
       RowBox[{
        RowBox[{"-", "1"}], " ", "+", " ", 
        RowBox[{
         RowBox[{"r", "^", "2"}], "/", 
         RowBox[{"a", "^", "2"}]}]}], ")"}]}]}], " ", "\[Equal]", " ", "0"}], 
   ",", " ", 
   RowBox[{"u", "[", "r", "]"}], ",", " ", "r"}], 
  "]"}], "\[IndentingNewLine]", 
 RowBox[{"DSolve", "[", 
  RowBox[{
   RowBox[{
    RowBox[{
     RowBox[{
      RowBox[{"r", "^", "2"}], " ", 
      RowBox[{
       RowBox[{"u", "''"}], "[", "r", "]"}]}], " ", "+", " ", 
     RowBox[{"r", " ", 
      RowBox[{
       RowBox[{"u", "'"}], "[", "r", "]"}]}], " ", "+", " ", 
     RowBox[{
      RowBox[{"u", "[", "r", "]"}], 
      RowBox[{"(", 
       RowBox[{
        RowBox[{"-", "1"}], " ", "-", " ", 
        RowBox[{
         RowBox[{"r", "^", "2"}], "/", 
         RowBox[{"b", "^", "2"}]}]}], ")"}]}]}], " ", "\[Equal]", " ", "0"}], 
   ",", " ", 
   RowBox[{"u", "[", "r", "]"}], ",", " ", "r"}], "]"}]}], "Input",
 CellChangeTimes->{{3.5444680911019897`*^9, 3.544468148559276*^9}, {
  3.5444682239945908`*^9, 3.5444683055492554`*^9}, {3.544480270683387*^9, 
  3.5444803416544466`*^9}, {3.544480420760971*^9, 
  3.544480421184995*^9}},ExpressionUUID->"d88d4c28-d76c-4721-93cb-\
45d03e4321ba"],

Cell[BoxData[
 RowBox[{"{", 
  RowBox[{"{", 
   RowBox[{
    RowBox[{"u", "[", "r", "]"}], "\[Rule]", 
    RowBox[{
     RowBox[{
      RowBox[{"BesselJ", "[", 
       RowBox[{"1", ",", 
        FractionBox["r", "a"]}], "]"}], " ", 
      RowBox[{"C", "[", "1", "]"}]}], "+", 
     RowBox[{
      RowBox[{"BesselY", "[", 
       RowBox[{"1", ",", 
        FractionBox["r", "a"]}], "]"}], " ", 
      RowBox[{"C", "[", "2", "]"}]}]}]}], "}"}], "}"}]], "Output",
 CellChangeTimes->{{3.5444681336874256`*^9, 3.5444681499313545`*^9}, 
   3.5444682791397448`*^9, 3.5444683187130084`*^9, 3.544480344202592*^9, 
   3.544480422689081*^9},ExpressionUUID->"be5557db-4637-4969-b1f7-\
8f76782c76ef"],

Cell[BoxData[
 RowBox[{"{", 
  RowBox[{"{", 
   RowBox[{
    RowBox[{"u", "[", "r", "]"}], "\[Rule]", 
    RowBox[{
     RowBox[{
      RowBox[{"-", 
       RowBox[{"BesselJ", "[", 
        RowBox[{"1", ",", 
         FractionBox[
          RowBox[{"\[ImaginaryI]", " ", "r"}], "b"]}], "]"}]}], " ", 
      RowBox[{"C", "[", "1", "]"}]}], "+", 
     RowBox[{
      RowBox[{"BesselY", "[", 
       RowBox[{"1", ",", 
        RowBox[{"-", 
         FractionBox[
          RowBox[{"\[ImaginaryI]", " ", "r"}], "b"]}]}], "]"}], " ", 
      RowBox[{"C", "[", "2", "]"}]}]}]}], "}"}], "}"}]], "Output",
 CellChangeTimes->{{3.5444681336874256`*^9, 3.5444681499313545`*^9}, 
   3.5444682791397448`*^9, 3.5444683187130084`*^9, 3.544480344202592*^9, 
   3.5444804227520847`*^9},ExpressionUUID->"9f1dbef7-44a2-4d0a-9d1f-\
8fbc87b45dd7"]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[{
 RowBox[{"Clear", "[", "range", "]"}], "\[IndentingNewLine]", 
 RowBox[{"range", " ", "=", " ", "1"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{"(*", 
   RowBox[{
    RowBox[{"Plot", "[", " ", 
     RowBox[{
      RowBox[{"BesselJ", "[", 
       RowBox[{"1", ",", "r"}], "]"}], ",", 
      RowBox[{"{", 
       RowBox[{"r", ",", "0", ",", "range"}], " ", "}"}], ",", " ", 
      RowBox[{"AxesLabel", " ", "\[Rule]", " ", 
       RowBox[{"{", 
        RowBox[{"r", ",", " ", 
         RowBox[{"BesselJ", "[", 
          RowBox[{"1", ",", "r"}], "]"}]}], "}"}]}]}], "]"}], 
    "\[IndentingNewLine]", 
    RowBox[{"Plot", "[", " ", 
     RowBox[{
      RowBox[{"BesselY", "[", 
       RowBox[{"1", ",", "r"}], "]"}], ",", 
      RowBox[{"{", 
       RowBox[{"r", ",", "0", ",", "range"}], " ", "}"}], ",", " ", 
      RowBox[{"AxesLabel", " ", "\[Rule]", " ", 
       RowBox[{"{", 
        RowBox[{"r", ",", " ", 
         RowBox[{"BesselY", "[", 
          RowBox[{"1", ",", "r"}], "]"}]}], "}"}]}]}], "]"}], 
    "\[IndentingNewLine]", 
    RowBox[{"Plot", "[", " ", 
     RowBox[{
      RowBox[{"Real", "[", 
       RowBox[{"BesselY", "[", 
        RowBox[{"1", ",", 
         RowBox[{
          RowBox[{"-", "I"}], " ", "r"}]}], "]"}], "]"}], ",", 
      RowBox[{"{", 
       RowBox[{"r", ",", "0", ",", "range"}], "}"}], ",", " ", 
      RowBox[{"AxesLabel", " ", "\[Rule]", " ", 
       RowBox[{"{", 
        RowBox[{"r", ",", " ", 
         RowBox[{"Real", "[", 
          RowBox[{"BesselY", "[", 
           RowBox[{"1", ",", 
            RowBox[{
             RowBox[{"-", "I"}], " ", "r"}]}], "]"}], "]"}]}], "}"}]}]}], 
     "]"}], "\[IndentingNewLine]", 
    RowBox[{"Plot", "[", " ", 
     RowBox[{
      RowBox[{"Real", "[", 
       RowBox[{"BesselJ", "[", 
        RowBox[{"1", ",", 
         RowBox[{"I", " ", "r"}]}], "]"}], "]"}], ",", 
      RowBox[{"{", 
       RowBox[{"r", ",", "0", ",", "range"}], "}"}], ",", " ", 
      RowBox[{"AxesLabel", " ", "\[Rule]", " ", 
       RowBox[{"{", 
        RowBox[{"r", ",", " ", 
         RowBox[{"Real", "[", 
          RowBox[{"BesselJ", "[", 
           RowBox[{"1", ",", 
            RowBox[{"I", " ", "r"}]}], "]"}], "]"}]}], "}"}]}]}], "]"}]}], 
   "*)"}]}]}], "Input",
 CellChangeTimes->{{3.5444683627595277`*^9, 3.544468493008978*^9}, {
   3.544468528313997*^9, 3.5444685407077055`*^9}, {3.544468697212657*^9, 
   3.544469067001808*^9}, {3.544480495414241*^9, 3.5444805878915305`*^9}, {
   3.5444806249036474`*^9, 3.5444806367773266`*^9}, {3.544480668559144*^9, 
   3.5444807156618385`*^9}, {3.5444807489347415`*^9, 3.5444807584672866`*^9}, 
   3.5448311407940903`*^9},ExpressionUUID->"167d84b4-f8b3-4934-97af-\
1f21f206ab23"],

Cell[BoxData["1"], "Output",
 CellChangeTimes->{
  3.5444684162195854`*^9, 3.544468464139326*^9, {3.5444685040736103`*^9, 
   3.544468541597757*^9}, 3.5444687523778124`*^9, {3.5444688606820073`*^9, 
   3.544468867980425*^9}, 3.5444688993002157`*^9, 3.5444689755885797`*^9, 
   3.5444690679518623`*^9, 3.5444805983651295`*^9, 3.544480637423363*^9, {
   3.544480701446025*^9, 3.544480716526888*^9}, 3.544480771514033*^9, 
   3.5448311424261837`*^9},ExpressionUUID->"13a0cc61-e34d-402b-9a0b-\
d3fff3f5e520"]
}, Open  ]],

Cell[BoxData[
 RowBox[{"(*", 
  RowBox[{
   RowBox[{"Plot", "[", " ", 
    RowBox[{
     RowBox[{"Cosh", "[", "x", "]"}], ",", " ", 
     RowBox[{"{", 
      RowBox[{"x", ",", " ", "0", ",", " ", "1"}], "}"}]}], "]"}], 
   "\[IndentingNewLine]", 
   RowBox[{"Plot", "[", " ", 
    RowBox[{
     RowBox[{"Sinh", "[", "x", "]"}], ",", " ", 
     RowBox[{"{", 
      RowBox[{"x", ",", " ", "0", ",", " ", "1"}], "}"}]}], "]"}]}], 
  "*)"}]], "Input",
 CellChangeTimes->{{3.5447228682732573`*^9, 3.544722901203141*^9}, 
   3.5448311462694035`*^9},ExpressionUUID->"a543596c-fcfe-4caa-ba62-\
dd4aea47dad4"],

Cell[BoxData[
 RowBox[{"(*", 
  RowBox[{"StreamPlot", "[", 
   RowBox[{
    RowBox[{"{", 
     RowBox[{
      RowBox[{
       RowBox[{"-", "1"}], "-", 
       RowBox[{"x", "^", "2"}], "+", "y"}], ",", 
      RowBox[{"1", "+", "x", "-", 
       RowBox[{"y", "^", "2"}]}]}], "}"}], ",", 
    RowBox[{"{", 
     RowBox[{"x", ",", 
      RowBox[{"-", "3"}], ",", "3"}], "}"}], ",", 
    RowBox[{"{", 
     RowBox[{"y", ",", 
      RowBox[{"-", "3"}], ",", "3"}], "}"}]}], "]"}], "\[IndentingNewLine]", 
  "*)"}]], "Input",
 CellChangeTimes->{3.5448203384272304`*^9, 
  3.544831151522704*^9},ExpressionUUID->"ecdfec07-330d-4703-aa7d-\
2e4168c26910"],

Cell[BoxData[
 RowBox[{"(*", 
  RowBox[{"VectorPlot3D", "[", 
   RowBox[{
    RowBox[{"{", 
     RowBox[{"x", ",", "y", ",", "z"}], "}"}], ",", 
    RowBox[{"{", 
     RowBox[{"x", ",", 
      RowBox[{"-", "1"}], ",", "1"}], "}"}], ",", 
    RowBox[{"{", 
     RowBox[{"y", ",", 
      RowBox[{"-", "1"}], ",", "1"}], "}"}], ",", 
    RowBox[{"{", 
     RowBox[{"z", ",", 
      RowBox[{"-", "1"}], ",", "1"}], "}"}]}], "]"}], "\[IndentingNewLine]", 
  "*)"}]], "Input",
 CellChangeTimes->{3.5448204509346657`*^9, 
  3.544831158861124*^9},ExpressionUUID->"3e65c46c-a973-4ed1-9613-\
38e5fc09812f"],

Cell[BoxData[
 RowBox[{"(*", 
  RowBox[{"Module", "[", 
   RowBox[{
    RowBox[{"{", "vectors", "}"}], ",", "\[IndentingNewLine]", 
    RowBox[{
     RowBox[{"vectors", " ", "=", " ", 
      RowBox[{"Table", "[", 
       RowBox[{
        RowBox[{"{", 
         RowBox[{
          RowBox[{"{", 
           RowBox[{"x", ",", "y", ",", "z"}], "}"}], ",", 
          RowBox[{"{", 
           RowBox[{"y", ",", 
            RowBox[{"x", "-", 
             RowBox[{"x", "^", "3"}]}], ",", "z"}], "}"}]}], "}"}], ",", 
        RowBox[{"{", 
         RowBox[{"x", ",", 
          RowBox[{"-", "1.5"}], ",", "1.5", ",", "0.2"}], "}"}], ",", 
        RowBox[{"{", 
         RowBox[{"y", ",", 
          RowBox[{"-", "2"}], ",", "2", ",", "0.2"}], "}"}], ",", 
        RowBox[{"{", 
         RowBox[{"z", ",", 
          RowBox[{"-", "1"}], ",", "1", ",", "0.1"}], "}"}]}], "]"}]}], ";", 
     "\[IndentingNewLine]", 
     RowBox[{"ListVectorPlot3D", "[", "vectors", "]"}]}]}], "]"}], 
  "*)"}]], "Input",
 CellChangeTimes->{{3.544820536611566*^9, 3.544820553553535*^9}, 
   3.544831163193372*^9},ExpressionUUID->"98a120b0-b092-400f-9fb8-\
7034b299c112"],

Cell[BoxData[
 RowBox[{"(*", 
  RowBox[{"Module", "[", 
   RowBox[{
    RowBox[{"{", 
     RowBox[{"vectors", ",", " ", "r", ",", "  ", "phicap"}], "}"}], ",", 
    "\[IndentingNewLine]", 
    RowBox[{
     RowBox[{
      RowBox[{"r", "[", 
       RowBox[{"x_", ",", " ", "y_"}], "]"}], " ", "=", " ", 
      RowBox[{"Sqrt", "[", 
       RowBox[{
        RowBox[{"x", "^", "2"}], " ", "+", " ", 
        RowBox[{"y", "^", "2"}]}], "]"}]}], " ", ";", "\[IndentingNewLine]", 
     RowBox[{
      RowBox[{"phicap", "[", 
       RowBox[{"x_", ",", " ", "y_"}], "]"}], " ", "=", " ", 
      RowBox[{"Piecewise", "[", 
       RowBox[{
        RowBox[{"{", 
         RowBox[{"{", 
          RowBox[{
           RowBox[{
            RowBox[{"{", 
             RowBox[{
              RowBox[{"-", "y"}], ",", " ", "x"}], "}"}], "/", 
            RowBox[{"r", "[", 
             RowBox[{"x", ",", "y"}], "]"}]}], ",", " ", 
           RowBox[{
            RowBox[{
             RowBox[{"r", "[", 
              RowBox[{"x", ",", " ", "y"}], "]"}], " ", ">", " ", "0"}], " ", 
            "&&", " ", 
            RowBox[{
             RowBox[{"r", "[", 
              RowBox[{"x", ",", " ", "y"}], "]"}], " ", "<=", " ", "1"}]}]}], 
          "}"}], "}"}], ",", " ", 
        RowBox[{"{", 
         RowBox[{"0", ",", " ", "0"}], "}"}]}], "]"}]}], " ", ";", 
     "\[IndentingNewLine]", 
     RowBox[{"vectors", " ", "=", "  ", 
      RowBox[{"Table", "[", 
       RowBox[{
        RowBox[{"{", 
         RowBox[{
          RowBox[{"{", 
           RowBox[{"x", ",", " ", "y"}], "}"}], ",", 
          RowBox[{
           RowBox[{"r", "[", 
            RowBox[{"x", ",", " ", "y"}], "]"}], " ", 
           RowBox[{"phicap", "[", 
            RowBox[{"x", ",", " ", "y"}], "]"}]}]}], "}"}], ",", " ", 
        RowBox[{"{", 
         RowBox[{"x", ",", " ", 
          RowBox[{"-", "1"}], ",", " ", "1", ",", " ", "0.05"}], "}"}], ",", 
        " ", 
        RowBox[{"{", 
         RowBox[{"y", ",", " ", 
          RowBox[{"-", "1"}], ",", " ", "1", ",", " ", "0.05"}], "}"}]}], 
       "]"}]}], " ", ";", "\[IndentingNewLine]", 
     RowBox[{"ListVectorPlot", "[", 
      RowBox[{"vectors", "\[IndentingNewLine]", 
       RowBox[{"(*", 
        RowBox[{",", " ", 
         RowBox[{"VectorScale", "\[Rule]", 
          RowBox[{"{", 
           RowBox[{"Large", ",", 
            RowBox[{"Scaled", "[", "1.2", "]"}]}], "}"}]}]}], "*)"}], 
       "\[IndentingNewLine]", ",", " ", 
       RowBox[{"VectorColorFunction", "\[Rule]", "\"\<Rainbow\>\""}]}], 
      "]"}]}]}], "]"}], "*)"}]], "Input",
 CellChangeTimes->{{3.5448210626216516`*^9, 3.544821225092945*^9}, {
   3.5448212560147133`*^9, 3.544821305167525*^9}, {3.544821341218587*^9, 
   3.5448213538343086`*^9}, {3.5448214018460546`*^9, 3.544821408389429*^9}, {
   3.5448214688918896`*^9, 3.5448215021987944`*^9}, {3.544821560216113*^9, 
   3.5448215714327545`*^9}, 3.544821604852666*^9, {3.544821831264616*^9, 
   3.5448219391697874`*^9}, {3.5448219860644703`*^9, 
   3.5448220264617805`*^9}, {3.544822122745288*^9, 3.5448221503128643`*^9}, {
   3.544822191734234*^9, 3.544822196185488*^9}, 3.544822243826213*^9, {
   3.54482227437096*^9, 3.5448223053097296`*^9}, {3.544822341367792*^9, 
   3.544822358905795*^9}, {3.5448224777085905`*^9, 3.544822489953291*^9}, {
   3.544822715197174*^9, 3.5448227419197025`*^9}, {3.5448227742295504`*^9, 
   3.544822880036602*^9}, 
   3.544831169000704*^9},ExpressionUUID->"c95cb2f5-8ee1-42ed-a089-\
95d137b27af7"],

Cell[BoxData[""], "Input",
 CellChangeTimes->{{3.5448245610627513`*^9, 3.544824564837967*^9}, 
   3.5448311751280546`*^9},ExpressionUUID->"8c68c8b0-1391-4264-ae90-\
a226afec4f2e"],

Cell[BoxData[
 RowBox[{"(*", 
  RowBox[{"VectorPlot3D", "[", 
   RowBox[{
    RowBox[{"{", 
     RowBox[{"x", ",", "y", ",", "z"}], "}"}], ",", 
    RowBox[{"{", 
     RowBox[{"x", ",", 
      RowBox[{"-", "1"}], ",", "1"}], "}"}], ",", 
    RowBox[{"{", 
     RowBox[{"y", ",", 
      RowBox[{"-", "1"}], ",", "1"}], "}"}], ",", 
    RowBox[{"{", 
     RowBox[{"z", ",", 
      RowBox[{"-", "1"}], ",", "1"}], "}"}], ",", 
    RowBox[{"PlotRange", "\[Rule]", "All"}], ",", 
    RowBox[{"VectorPoints", "\[Rule]", "Coarse"}], ",", 
    RowBox[{"VectorStyle", "\[Rule]", "\"\<Arrow3D\>\""}], ",", 
    RowBox[{"VectorScale", "\[Rule]", 
     RowBox[{"{", 
      RowBox[{"Automatic", ",", 
       RowBox[{"Scaled", "[", "0.4", "]"}], ",", "Automatic"}], "}"}]}], ",", 
    RowBox[{"VectorColorFunction", "\[Rule]", "\"\<FallColors\>\""}]}], "]"}],
   "*)"}]], "Input",
 CellChangeTimes->{{3.544828458591677*^9, 3.544828458594678*^9}, 
   3.5448311795793085`*^9},ExpressionUUID->"bf49a3ac-a1f5-47b2-884b-\
4c6d9d715640"],

Cell[BoxData[
 RowBox[{"(*", 
  RowBox[{"ColorData", "[", "\"\<ThermometerColors\>\"", "]"}], 
  "*)"}]], "Input",
 CellChangeTimes->{
  3.544831183657542*^9},ExpressionUUID->"62064c4e-025a-4547-b321-\
416bd6e1723e"],

Cell[CellGroupData[{

Cell[BoxData[{
 RowBox[{"Clear", "[", 
  RowBox[{"ii", ",", " ", "jj"}], "]"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{"ii", " ", "=", " ", 
   RowBox[{"Integrate", "[", " ", 
    RowBox[{
     RowBox[{
      RowBox[{"Sin", "[", " ", 
       RowBox[{"2", " ", "Pi", " ", "j", " ", "y"}], " ", "]"}], " ", 
      RowBox[{"Sinh", "[", " ", 
       RowBox[{"a", " ", "y"}], "]"}]}], ",", " ", 
     RowBox[{"{", 
      RowBox[{"y", ",", " ", "0", ",", " ", "1"}], "}"}]}], "]"}]}], " ", 
  ";"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{"jj", " ", "=", " ", 
   RowBox[{"FullSimplify", "[", 
    RowBox[{"ii", ",", " ", 
     RowBox[{"Element", "[", 
      RowBox[{"j", ",", "Integers"}], "]"}]}], "]"}]}], " ", 
  ";"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{"jj", " ", "/.", " ", 
   RowBox[{"a", " ", "\[Rule]", " ", 
    RowBox[{"(", 
     RowBox[{
      SubscriptBox["\[Lambda]", 
       RowBox[{"j", " "}]], 
      RowBox[{"d", "/", "R"}]}], ")"}]}]}], " ", "//", " ", 
  "TraditionalForm"}]}], "Input",
 CellChangeTimes->{{3.544876341088479*^9, 3.5448764632204647`*^9}, {
  3.545084162725588*^9, 3.5450842000687237`*^9}, {3.5450842445912704`*^9, 
  3.545084245390316*^9}},ExpressionUUID->"43b21e3c-025d-4850-969a-\
9135f0398d15"],

Cell[BoxData[
 FormBox[
  RowBox[{"-", 
   FractionBox[
    RowBox[{"2", " ", "\[Pi]", " ", "j", " ", 
     RowBox[{"sinh", "(", 
      FractionBox[
       RowBox[{"d", " ", 
        SubscriptBox["\[Lambda]", "j"]}], "R"], ")"}]}], 
    RowBox[{
     FractionBox[
      RowBox[{
       SuperscriptBox["d", "2"], " ", 
       SubsuperscriptBox["\[Lambda]", "j", "2"]}], 
      SuperscriptBox["R", "2"]], "+", 
     RowBox[{"4", " ", 
      SuperscriptBox["\[Pi]", "2"], " ", 
      SuperscriptBox["j", "2"]}]}]]}], TraditionalForm]], "Output",
 CellChangeTimes->{{3.5450842329456043`*^9, 
  3.545084246401374*^9}},ExpressionUUID->"7a382b54-3a61-42fc-b64b-\
4a92174c30c2"],

Cell[BoxData["8.900000000000001`*^-7"], "Output",
 CellChangeTimes->{
  3.5449215790819445`*^9, {3.544921681909826*^9, 3.544921733964803*^9}, 
   3.544921769941861*^9},ExpressionUUID->"6221f2eb-5e35-4214-908b-\
5c3799f0ba0e"],

Cell[BoxData[
 FractionBox["\<\"PascalSeconds\"\>", "\<\"KilogramsPerCubicMeter\"\>"]], \
"Output",
 CellChangeTimes->{
  3.5449215790819445`*^9, {3.544921681909826*^9, 3.544921733964803*^9}, 
   3.544921769947861*^9},ExpressionUUID->"16e126e0-a3e8-4b0e-845d-\
c5f8d822110f"]
}, Open  ]],

Cell[BoxData[""], "Input",
 CellChangeTimes->{{3.544921581733096*^9, 
  3.5449215873714185`*^9}},ExpressionUUID->"804cd1e0-0cd4-4a29-aad8-\
5ad111211330"],

Cell[CellGroupData[{

Cell["viscosity/density of water", "WolframAlphaLong",
 CellChangeTimes->{{3.544921592043686*^9, 
  3.5449216519081097`*^9}},ExpressionUUID->"f8077bcb-f7ab-49bc-9867-\
39933ac7800c"],

Cell[BoxData[
 NamespaceBox["WolframAlphaQueryResults",
  DynamicModuleBox[{Typeset`q$$ = "viscosity/density of water", 
   Typeset`opts$$ = {
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
       XMLElement[
       "minput", {}, {
        "ChemicalData[\"Water\", \"Viscosity\"]/ChemicalData[\"Water\", \
\"Density\"]"}], 
       XMLElement["cell", {"compressed" -> False, "string" -> True}, {
         Cell[
          BoxData[
           FormBox[
            TagBox[
             FractionBox[
              FormBox[
               TagBox[
                GridBox[{{
                   StyleBox[
                    TagBox[
                    GridBox[{{
                    StyleBox[
                    TagBox[
                    TagBox["\"water\"", 
                    $CellContext`TagBoxWrapper[
                    "Entity" -> {ChemicalData, "Water"}]], Identity], {
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
              FormBox[
               TagBox[
                GridBox[{{
                   StyleBox[
                    TagBox[
                    GridBox[{{
                    StyleBox[
                    TagBox[
                    TagBox["\"water\"", 
                    $CellContext`TagBoxWrapper[
                    "Entity" -> {ChemicalData, "Water"}]], Identity], {
                    LineIndent -> 0, LineSpacing -> {0.9, 0, 1.5}}], 
                    "\"density\""}}, GridBoxBackground -> {"Columns" -> {
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
               TraditionalForm]], 
             PolynomialForm[#, TraditionalOrder -> False]& ], 
            TraditionalForm]], "Output"]}], 
       XMLElement["dataformats", {}, {"plaintext,minput"}]}]}], 
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
             RowBox[{
               TagBox[
                TagBox[
                 RowBox[{
                   TagBox[
                    RowBox[{"8.9", " ", 
                    SuperscriptBox["10", "-4"]}], 
                    $CellContext`TagBoxWrapper[
                    "StringBoxes" -> RowBox[{"8.9", "\[Times]", 
                    SuperscriptBox["10", "-4"]}]], SyntaxForm -> CenterDot], 
                   "\[NoBreak]", 
                   StyleBox[
                    RowBox[{}], FontFamily -> "Helvetica", FontSize -> 
                    Smaller], "\[InvisibleSpace]", "\[ThickSpace]", 
                   "\[InvisibleSpace]", 
                   StyleBox[
                    RowBox[{
                    SuperscriptBox["\"cm\"", "3"], "\[InvisibleSpace]", 
                    "\"s\"", "\[ThinSpace]", "\"Pa\"", "\[InvisibleSpace]", 
                    "\"/\"", "\[InvisibleSpace]", "\"g\""}], FontFamily -> 
                    "Helvetica", FontSize -> Smaller]}], Identity], #& , 
                SyntaxForm -> Dot], " ", 
               StyleBox[
                
                RowBox[{
                 "\"(\"", "\[NoBreak]", 
                  "\"centimeter cubed second pascals per gram\"", 
                  "\[NoBreak]", "\")\""}], 
                LinebreakAdjustments -> {1, 100, 1, 0, 100}, LineIndent -> 
                0, {FontFamily -> "Helvetica", FontSize -> Smaller}, 
                GrayLevel[0.6], StripOnInput -> False]}], 
             LinebreakAdjustments -> {1, 100, 1, 0, 100}, LineIndent -> 0, 
             ZeroWidthTimes -> False], TraditionalForm]], "Output"]}], 
       XMLElement[
       "dataformats", {}, {
        "plaintext,computabledata,formatteddata,numberdata,quantitydata"}]}], 
     XMLElement["states", {"count" -> "1"}, {
       XMLElement[
       "state", {
        "name" -> "Show details", "input" -> "Result__Show details"}, {}]}]}],
    Typeset`pod3$$ = XMLElement[
   "pod", {"title" -> "Unit conversions", "scanner" -> "Unit", "id" -> 
     "UnitConversion", "position" -> "300", "error" -> "false", "numsubpods" -> 
     "4"}, {
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
                    TagBox["0.89", 
                    $CellContext`TagBoxWrapper["StringBoxes" -> "0.89"]], 
                    "\[NoBreak]", 
                    StyleBox[
                    RowBox[{}], FontFamily -> "Helvetica", FontSize -> 
                    Smaller], "\[InvisibleSpace]", "\[ThickSpace]", 
                    "\[InvisibleSpace]", 
                    StyleBox[
                    "\"cSt\"", FontFamily -> "Helvetica", FontSize -> 
                    Smaller]}], Identity], #& , SyntaxForm -> Dot], " ", 
                   StyleBox[
                    
                    RowBox[{
                    "\"(\"", "\[NoBreak]", "\"centistokes\"", "\[NoBreak]", 
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
                 RowBox[{
                   TagBox[
                    TagBox[
                    RowBox[{
                    TagBox["0.0089", 
                    $CellContext`TagBoxWrapper["StringBoxes" -> "0.0089"]], 
                    "\[NoBreak]", 
                    StyleBox[
                    RowBox[{}], FontFamily -> "Helvetica", FontSize -> 
                    Smaller], "\[InvisibleSpace]", "\[ThickSpace]", 
                    "\[InvisibleSpace]", 
                    StyleBox[
                    "\"St\"", FontFamily -> "Helvetica", FontSize -> 
                    Smaller]}], Identity], #& , SyntaxForm -> Dot], " ", 
                   StyleBox[
                    
                    RowBox[{
                    "\"(\"", "\[NoBreak]", "\"stokes\"", "\[NoBreak]", 
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
            StyleBox[
             RowBox[{
               TagBox[
                TagBox[
                 RowBox[{
                   TagBox["0.89", 
                    $CellContext`TagBoxWrapper["StringBoxes" -> "0.89"]], 
                   "\[NoBreak]", 
                   StyleBox[
                    RowBox[{}], FontFamily -> "Helvetica", FontSize -> 
                    Smaller], "\[InvisibleSpace]", "\[ThickSpace]", 
                   "\[InvisibleSpace]", 
                   StyleBox[
                    RowBox[{
                    SuperscriptBox["\"mm\"", "2"], "\[InvisibleSpace]", 
                    "\"/\"", "\[InvisibleSpace]", "\"s\""}], FontFamily -> 
                    "Helvetica", FontSize -> Smaller]}], Identity], #& , 
                SyntaxForm -> Dot], " ", 
               StyleBox[
                
                RowBox[{
                 "\"(\"", "\[NoBreak]", "\"square millimeters per second\"", 
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
                   TagBox[
                    RowBox[{"8.9", " ", 
                    SuperscriptBox["10", "-7"]}], 
                    $CellContext`TagBoxWrapper[
                    "StringBoxes" -> RowBox[{"8.9", "\[Times]", 
                    SuperscriptBox["10", "-7"]}]], SyntaxForm -> CenterDot], 
                   "\[NoBreak]", 
                   StyleBox[
                    RowBox[{}], FontFamily -> "Helvetica", FontSize -> 
                    Smaller], "\[InvisibleSpace]", "\[ThickSpace]", 
                   "\[InvisibleSpace]", 
                   StyleBox[
                    RowBox[{
                    SuperscriptBox["\"m\"", "2"], "\[InvisibleSpace]", 
                    "\"/\"", "\[InvisibleSpace]", "\"s\""}], FontFamily -> 
                    "Helvetica", FontSize -> Smaller]}], Identity], #& , 
                SyntaxForm -> Dot], " ", 
               StyleBox[
                
                RowBox[{
                 "\"(\"", "\[NoBreak]", "\"square meters per second\"", 
                  "\[NoBreak]", "\")\""}], 
                LinebreakAdjustments -> {1, 100, 1, 0, 100}, LineIndent -> 
                0, {FontFamily -> "Helvetica", FontSize -> Smaller}, 
                GrayLevel[0.6], StripOnInput -> False]}], 
             LinebreakAdjustments -> {1, 100, 1, 0, 100}, LineIndent -> 0, 
             ZeroWidthTimes -> False], TraditionalForm]], "Output"]}], 
       XMLElement[
       "dataformats", {}, {
        "plaintext,computabledata,formatteddata,numberdata,quantitydata"}]}]}]\
, Typeset`pod4$$ = XMLElement[
   "pod", {"title" -> "Interpretations", "scanner" -> "Unit", "id" -> 
     "Interpretation", "position" -> "400", "error" -> "false", "numsubpods" -> 
     "1"}, {
     XMLElement["subpod", {"title" -> ""}, {
       XMLElement["cell", {"compressed" -> False, "string" -> True}, {
         Cell[
          BoxData[
           FormBox[
            TagBox["\"area rate\"", Identity], TraditionalForm]], "Output"]}], 
       XMLElement[
       "dataformats", {}, {"plaintext,computabledata,formatteddata"}]}], 
     XMLElement["states", {"count" -> "1"}, {
       XMLElement[
       "state", {
        "name" -> "More", "input" -> "Interpretation__More"}, {}]}]}], 
   Typeset`pod5$$ = XMLElement[
   "pod", {"title" -> "Basic unit dimensions", "scanner" -> "Unit", "id" -> 
     "BasicUnitDimensions", "position" -> "500", "error" -> "false", 
     "numsubpods" -> "1"}, {
     XMLElement["subpod", {"title" -> ""}, {
       XMLElement["cell", {"compressed" -> False, "string" -> True}, {
         Cell[
          BoxData[
           FormBox[
            TagBox[
             RowBox[{
               TemplateBox[{"\"[length]\"", "2"}, "Superscript", SyntaxForm -> 
                SuperscriptBox], " ", 
               TemplateBox[{"\"[time]\"", 
                 RowBox[{"-", "1"}]}, "Superscript", SyntaxForm -> 
                SuperscriptBox]}], HoldForm], TraditionalForm]], "Output"]}], 
       XMLElement[
       "dataformats", {}, {
        "plaintext,computabledata,formatteddata,formuladata"}]}]}], 
   Typeset`aux1$$ = {True, False, {False}, True}, Typeset`aux2$$ = {
   True, False, {False}, True}, Typeset`aux3$$ = {
   True, False, {False, False, False, False}, True}, Typeset`aux4$$ = {
   True, False, {False}, True}, Typeset`aux5$$ = {True, False, {False}, True},
    Typeset`asyncpods$$ = {}, Typeset`nonpods$$ = {
    XMLElement["sources", {"count" -> "1"}, {
      XMLElement[
      "source", {
       "url" -> 
        "http://www.wolframalpha.com/sources/\
ChemicalDataSourceInformationNotes.html", "text" -> "Chemical data"}, {}]}]}, 
   Typeset`initdone$$ = True, Typeset`queryinfo$$ = {
   "success" -> "true", "error" -> "false", "numpods" -> "5", "datatypes" -> 
    "Chemical,Math", "timedout" -> "", "timedoutpods" -> "", "timing" -> 
    "1.302", "parsetiming" -> "0.465", "parsetimedout" -> "false", 
    "recalculate" -> "", "id" -> 
    "MSPa57471a187c8120f1cb9b00005532c17hc1e91218", "host" -> 
    "http://www4b.wolframalpha.com", "server" -> "11", "related" -> 
    "http://www4b.wolframalpha.com/api/v2/relatedQueries.jsp?id=\
MSPa57481a187c8120f1cb9b00004b5h18di7167a89h&s=11", "version" -> "2.5"}, 
   Typeset`sessioninfo$$ = {
   "TimeZone" -> -4., 
    "Date" -> {2012, 5, 2, 0, 27, 34.5042583`9.290447592716628}, "Line" -> 19,
     "SessionID" -> 23231888014299105866}, Typeset`showpods$$ = {1, 2, 3, 4, 
   5}, Typeset`failedpods$$ = {}, Typeset`chosen$$ = {}, Typeset`open$$ = 
   False, Typeset`newq$$ = "viscosity/density of water"}, 
   DynamicBox[ToBoxes[
     AlphaIntegration`FormatAlphaResults[
      Dynamic[{
       1, {Typeset`pod1$$, Typeset`pod2$$, Typeset`pod3$$, Typeset`pod4$$, 
         Typeset`pod5$$}, {
        Typeset`aux1$$, Typeset`aux2$$, Typeset`aux3$$, Typeset`aux4$$, 
         Typeset`aux5$$}, Typeset`chosen$$, Typeset`open$$, 
        Typeset`elements$$, Typeset`q$$, Typeset`opts$$, Typeset`nonpods$$, 
        Typeset`queryinfo$$, Typeset`sessioninfo$$, Typeset`showpods$$, 
        Typeset`failedpods$$, Typeset`newq$$}]], StandardForm],
    ImageSizeCache->{757., {224., 230.}},
    TrackedSymbols:>{Typeset`showpods$$, Typeset`failedpods$$}],
   DynamicModuleValues:>{},
   Initialization:>If[
     Not[Typeset`initdone$$], WolframAlphaClient`Private`doAsyncUpdates[
       Hold[{
        Typeset`pod1$$, Typeset`pod2$$, Typeset`pod3$$, Typeset`pod4$$, 
         Typeset`pod5$$}], Typeset`asyncpods$$, 
       Dynamic[Typeset`failedpods$$]]; Typeset`asyncpods$$ = {}; 
     Typeset`initdone$$ = True],
   SynchronousInitialization->False],
  BaseStyle->{Deployed -> True},
  DeleteWithContents->True,
  Editable->False,
  SelectWithContents->True]], "Print",
 CellMargins->{{20, 10}, {Inherited, Inherited}},
 CellChangeTimes->{
  3.5449216545212593`*^9},ExpressionUUID->"ec882209-9b98-4de6-a386-\
4b3797f6707f"]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 FormBox[
  RowBox[{"Solve", "[", " ", 
   RowBox[{
    RowBox[{
     SuperscriptBox["2.718281828459045`", 
      RowBox[{
       RowBox[{"-", "0.08789174698518125`"}], " ", "t"}]], " ", " ", 
     "\[Equal]", " ", "0.1"}], ",", " ", "t"}], "]"}], 
  TraditionalForm]], "Input",
 CellChangeTimes->{{3.5449228706938205`*^9, 3.5449228841595907`*^9}, 
   3.5450850094240165`*^9},ExpressionUUID->"9d5c6d95-a050-4cf9-aa8e-\
125dfa5f2437"],

Cell[BoxData[
 RowBox[{
  StyleBox[
   RowBox[{"Solve", "::", "ifun"}], "MessageName"], ":", 
  " ", "\<\"Inverse functions are being used by \[NoBreak]\\!\\(Solve\\)\
\[NoBreak], so some solutions may not be found; use Reduce for complete \
solution information. \\!\\(\\*ButtonBox[\\\"\[RightSkeleton]\\\", \
ButtonStyle->\\\"Link\\\", ButtonFrame->None, \
ButtonData:>\\\"paclet:ref/message/Solve/ifun\\\", ButtonNote -> \
\\\"Solve::ifun\\\"]\\)\"\>"}]], "Message", "MSG",
 CellChangeTimes->{3.544922885302656*^9, 
  3.5450850110821114`*^9},ExpressionUUID->"5c4f60d7-5dc8-4c6f-9cb6-\
fa55656d62f0"],

Cell[BoxData[
 RowBox[{"{", 
  RowBox[{"{", 
   RowBox[{"t", "\[Rule]", "26.19796706717261`"}], "}"}], "}"}]], "Output",
 CellChangeTimes->{3.5449228853306575`*^9, 
  3.545085011088112*^9},ExpressionUUID->"37a2a284-40aa-4e71-88bd-\
3392f4d5f18b"]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[{
 RowBox[{"Clear", "[", 
  RowBox[{"m", ",", " ", "n"}], "]"}], "\[IndentingNewLine]", 
 RowBox[{"Integrate", "[", 
  RowBox[{
   RowBox[{
    RowBox[{"TrigReduce", "[", " ", 
     RowBox[{
      RowBox[{"Sin", "[", 
       RowBox[{"2", " ", "Pi", " ", "m", " ", "x"}], " ", "]"}], " ", 
      RowBox[{"Sin", "[", 
       RowBox[{"2", " ", "Pi", " ", "n", " ", "x"}], "]"}]}], " ", "]"}], " ",
     "/.", " ", 
    RowBox[{"m", " ", "\[Rule]", " ", "n"}]}], ",", " ", 
   RowBox[{"{", 
    RowBox[{"x", ",", " ", "0", ",", " ", "1"}], "}"}]}], "]"}]}], "Input",
 CellChangeTimes->{{3.5450842890888157`*^9, 
  3.5450845022830095`*^9}},ExpressionUUID->"7a7683b4-c898-4faa-9fe2-\
1551d0cf246e"],

Cell[BoxData[
 RowBox[{
  FractionBox["1", "2"], "-", 
  FractionBox[
   RowBox[{"Sin", "[", 
    RowBox[{"4", " ", "n", " ", "\[Pi]"}], "]"}], 
   RowBox[{"8", " ", "n", " ", "\[Pi]"}]]}]], "Output",
 CellChangeTimes->{{3.545084489629286*^9, 
  3.545084503496079*^9}},ExpressionUUID->"61d07e0e-4282-48d7-82ea-\
88c6e410aa69"]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[{
 RowBox[{"<<", " ", "peeters`"}], "\[IndentingNewLine]", 
 RowBox[{"peeters`setGitDir", "[", 
  "\"\<../project/figures/phy454-continuumechanics\>\"", "]"}]}], "Input",
 CellChangeTimes->{{3.8908607617288857`*^9, 3.890860789589164*^9}},
 CellLabel->"In[40]:=",ExpressionUUID->"5ccb5d45-ad92-46c6-886c-0d822ca2106b"],

Cell[BoxData["\<\"peeters`\"\>"], "Output",
 CellChangeTimes->{{3.8908607634817038`*^9, 3.890860790867964*^9}},
 CellLabel->"Out[40]=",ExpressionUUID->"5657fe3f-8d34-4e57-98f2-5dff9f2af7ac"],

Cell[BoxData["\<\"/Users/pjoot/project/figures/phy454-continuumechanics\"\>"],\
 "Output",
 CellChangeTimes->{{3.8908607634817038`*^9, 3.890860790869824*^9}},
 CellLabel->"Out[41]=",ExpressionUUID->"778647db-2d9d-4718-b943-cf02a5db7601"]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"peeters`exportForLatex", "[", 
  RowBox[{
  "\"\<coffeeCupWithBottomVectorFig2\>\"", ",", 
   "coffeeCupWithBottomVectorFig2"}], " ", "]"}]], "Input",
 CellChangeTimes->{{3.8908608446010933`*^9, 3.890860848164978*^9}},
 CellLabel->"In[42]:=",ExpressionUUID->"68734d9d-938d-467b-a82b-fc7515dce733"],

Cell[BoxData[
 RowBox[{"{", 
  RowBox[{"\<\"coffeeCupWithBottomVectorFig2.eps\"\>", 
   ",", "\<\"coffeeCupWithBottomVectorFig2pn.png\"\>"}], "}"}]], "Output",
 CellChangeTimes->{3.8908608513928633`*^9},
 CellLabel->"Out[42]=",ExpressionUUID->"f95b742f-767b-4b86-a0df-d8a2e4c798d2"]
}, Open  ]]
}, Open  ]]
}, Open  ]]
},
WindowSize->{838, 718},
WindowMargins->{{60, Automatic}, {Automatic, 0}},
FrontEndVersion->"12.2 for Mac OS X x86 (64-bit) (December 12, 2020)",
StyleDefinitions->"Default.nb",
ExpressionUUID->"a640bcf6-0062-4020-92f2-d8f5be73f5a7"
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
Cell[1257, 32, 186, 3, 98, "Title",ExpressionUUID->"d75c00f0-b9f2-47fb-8943-b353f690fe12"],
Cell[CellGroupData[{
Cell[1468, 39, 153, 3, 67, "Section",ExpressionUUID->"140947f0-4d96-4236-90a3-f8982f0b3c2d"],
Cell[CellGroupData[{
Cell[1646, 46, 1068, 25, 131, "Input",ExpressionUUID->"8ce4552c-75af-4482-9773-9ebcc8bebeea",
 InitializationCell->True],
Cell[2717, 73, 727, 16, 40, "Output",ExpressionUUID->"1f089d47-fb70-4054-afd1-9e86b07fa393"],
Cell[3447, 91, 367, 7, 54, "Output",ExpressionUUID->"c25bc537-54d3-45c2-9086-e91adea91205"],
Cell[3817, 100, 333, 5, 34, "Output",ExpressionUUID->"d9ce455d-4c24-4498-a2a9-3da2aafc7d35"]
}, Open  ]],
Cell[CellGroupData[{
Cell[4187, 110, 11390, 283, 976, "Input",ExpressionUUID->"a536dff6-8c90-41cd-bb46-8ec4ad1691c0"],
Cell[15580, 395, 3652, 89, 110, "Output",ExpressionUUID->"16209c5b-4635-4c86-a85d-a36b86474dc9"]
}, Open  ]],
Cell[CellGroupData[{
Cell[19269, 489, 8612, 204, 724, "Input",ExpressionUUID->"e0abfebf-060c-4339-87f7-7c7cbaf84a43"],
Cell[27884, 695, 429848, 7230, 401, 201292, 3483, "CachedBoxData", "BoxData", "Output",ExpressionUUID->"507dc5e1-72d6-4eb3-9c44-5d194fa30f8a"]
}, Open  ]],
Cell[CellGroupData[{
Cell[457769, 7930, 9256, 210, 976, "Input",ExpressionUUID->"8f246964-5f5b-4489-b71d-8195cb0224b5"],
Cell[467028, 8142, 7099, 135, 335, "Output",ExpressionUUID->"326c8ace-0edb-43e1-a691-8776044310af"]
}, Open  ]],
Cell[CellGroupData[{
Cell[474164, 8282, 3092, 82, 220, "Input",ExpressionUUID->"bfec9b3d-b898-4920-9294-5c2f817363ed"],
Cell[477259, 8366, 24743, 423, 242, "Output",ExpressionUUID->"cf25f347-0cf3-4ec9-b5a1-1df9db45c6a6"]
}, Open  ]],
Cell[CellGroupData[{
Cell[502039, 8794, 735, 22, 52, "Input",ExpressionUUID->"31224acf-4764-45df-b7ae-de2a906c179b"],
Cell[502777, 8818, 686, 20, 34, "Output",ExpressionUUID->"297f79cc-32ab-4b83-95fe-6f744d79b21a"]
}, Open  ]],
Cell[CellGroupData[{
Cell[503500, 8843, 273, 6, 30, "Input",ExpressionUUID->"0516953b-05ed-42f6-829c-b91293aa9014"],
Cell[503776, 8851, 235, 4, 34, "Output",ExpressionUUID->"8a6c6688-329e-4695-8afd-b4c8b2afc77d"]
}, Open  ]],
Cell[CellGroupData[{
Cell[504048, 8860, 475, 9, 30, "Input",ExpressionUUID->"49fac8ef-5833-4b0e-b293-534f441c4229"],
Cell[504526, 8871, 192, 3, 34, "Output",ExpressionUUID->"a70ae20f-ba94-47f0-9187-60d2da651f83"]
}, Open  ]]
}, Open  ]],
Cell[CellGroupData[{
Cell[504767, 8880, 170, 3, 67, "Section",ExpressionUUID->"715b3610-a714-4376-8b1a-4e3e088d2739"],
Cell[CellGroupData[{
Cell[504962, 8887, 1588, 48, 52, "Input",ExpressionUUID->"d88d4c28-d76c-4721-93cb-45d03e4321ba"],
Cell[506553, 8937, 687, 19, 49, "Output",ExpressionUUID->"be5557db-4637-4969-b1f7-8f76782c76ef"],
Cell[507243, 8958, 825, 23, 51, "Output",ExpressionUUID->"9f1dbef7-44a2-4d0a-9d1f-8fbc87b45dd7"]
}, Open  ]],
Cell[CellGroupData[{
Cell[508105, 8986, 2711, 70, 136, "Input",ExpressionUUID->"167d84b4-f8b3-4934-97af-1f21f206ab23"],
Cell[510819, 9058, 504, 8, 34, "Output",ExpressionUUID->"13a0cc61-e34d-402b-9a0b-d3fff3f5e520"]
}, Open  ]],
Cell[511338, 9069, 600, 17, 52, "Input",ExpressionUUID->"a543596c-fcfe-4caa-ba62-dd4aea47dad4"],
Cell[511941, 9088, 644, 20, 52, "Input",ExpressionUUID->"ecdfec07-330d-4703-aa7d-2e4168c26910"],
Cell[512588, 9110, 596, 18, 52, "Input",ExpressionUUID->"3e65c46c-a973-4ed1-9613-38e5fc09812f"],
Cell[513187, 9130, 1143, 31, 73, "Input",ExpressionUUID->"98a120b0-b092-400f-9fb8-7034b299c112"],
Cell[514333, 9163, 3490, 85, 157, "Input",ExpressionUUID->"c95cb2f5-8ee1-42ed-a089-95d137b27af7"],
Cell[517826, 9250, 179, 3, 30, "Input",ExpressionUUID->"8c68c8b0-1391-4264-ae90-a226afec4f2e"],
Cell[518008, 9255, 1017, 26, 73, "Input",ExpressionUUID->"bf49a3ac-a1f5-47b2-884b-4c6d9d715640"],
Cell[519028, 9283, 216, 6, 30, "Input",ExpressionUUID->"62064c4e-025a-4547-b321-416bd6e1723e"],
Cell[CellGroupData[{
Cell[519269, 9293, 1248, 34, 96, "Input",ExpressionUUID->"43b21e3c-025d-4850-969a-9135f0398d15"],
Cell[520520, 9329, 670, 20, 82, "Output",ExpressionUUID->"7a382b54-3a61-42fc-b64b-4a92174c30c2"],
Cell[521193, 9351, 225, 4, 34, "Output",ExpressionUUID->"6221f2eb-5e35-4214-908b-5c3799f0ba0e"],
Cell[521421, 9357, 275, 6, 54, "Output",ExpressionUUID->"16e126e0-a3e8-4b0e-845d-c5f8d822110f"]
}, Open  ]],
Cell[521711, 9366, 154, 3, 30, "Input",ExpressionUUID->"804cd1e0-0cd4-4a29-aad8-5ad111211330"],
Cell[CellGroupData[{
Cell[521890, 9373, 182, 3, 41, "WolframAlphaLong",ExpressionUUID->"f8077bcb-f7ab-49bc-9867-39933ac7800c"],
Cell[522075, 9378, 21059, 443, 464, "Print",ExpressionUUID->"ec882209-9b98-4de6-a386-4b3797f6707f"]
}, Open  ]],
Cell[CellGroupData[{
Cell[543171, 9826, 447, 12, 33, "Input",ExpressionUUID->"9d5c6d95-a050-4cf9-aa8e-125dfa5f2437"],
Cell[543621, 9840, 602, 12, 41, "Message",ExpressionUUID->"5c4f60d7-5dc8-4c6f-9cb6-fa55656d62f0"],
Cell[544226, 9854, 246, 6, 34, "Output",ExpressionUUID->"37a2a284-40aa-4e71-88bd-3392f4d5f18b"]
}, Open  ]],
Cell[CellGroupData[{
Cell[544509, 9865, 705, 18, 52, "Input",ExpressionUUID->"7a7683b4-c898-4faa-9fe2-1551d0cf246e"],
Cell[545217, 9885, 326, 9, 52, "Output",ExpressionUUID->"61d07e0e-4282-48d7-82ea-88c6e410aa69"]
}, Open  ]],
Cell[CellGroupData[{
Cell[545580, 9899, 330, 5, 52, "Input",ExpressionUUID->"5ccb5d45-ad92-46c6-886c-0d822ca2106b"],
Cell[545913, 9906, 190, 2, 34, "Output",ExpressionUUID->"5657fe3f-8d34-4e57-98f2-5dff9f2af7ac"],
Cell[546106, 9910, 237, 3, 34, "Output",ExpressionUUID->"778647db-2d9d-4718-b943-cf02a5db7601"]
}, Open  ]],
Cell[CellGroupData[{
Cell[546380, 9918, 321, 6, 30, "Input",ExpressionUUID->"68734d9d-938d-467b-a82b-fc7515dce733"],
Cell[546704, 9926, 282, 5, 34, "Output",ExpressionUUID->"f95b742f-767b-4b86-a0df-d8a2e4c798d2"]
}, Open  ]]
}, Open  ]]
}, Open  ]]
}
]
*)

(* NotebookSignature Sw0wUQMSeInFHDw9igkB9jUc *)
