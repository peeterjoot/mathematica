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
NotebookDataLength[     48081,       1072]
NotebookOptionsPosition[     46322,       1034]
NotebookOutlinePosition[     46750,       1051]
CellTagsIndexPosition[     46707,       1048]
WindowFrame->Normal*)

(* Beginning of Notebook Content *)
Notebook[{
Cell[TextData[StyleBox["Figures for twoCylinderFig2, twoCylinderFig4",
 FontWeight->"Plain"]], "Input",
 CellChangeTimes->{{3.888184847479247*^9, 3.888184905375058*^9}},
 FormatType->
  "TextForm",ExpressionUUID->"5925ed5a-534f-4d10-a4cb-9c91afbfe35d"],

Cell[BoxData[{
 RowBox[{
  RowBox[{"Clear", "[", 
   RowBox[{"s", ",", " ", "blue", ",", " ", "red", ",", " ", "green"}], "]"}],
   "\[IndentingNewLine]"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{"blue", " ", "=", " ", "Blue"}], ";"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{"red", " ", "=", " ", "Red"}], ";"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{
   RowBox[{"green", " ", "=", " ", "Green"}], ";"}], 
  "\[IndentingNewLine]"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{"blue", " ", "=", " ", "Black"}], ";"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{"red", " ", "=", " ", "Black"}], ";"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{
   RowBox[{"green", " ", "=", " ", "Black"}], ";"}], "\[IndentingNewLine]", 
  "\[IndentingNewLine]"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{
   RowBox[{"s", "[", 
    RowBox[{"v1_", ",", " ", "v2_", ",", " ", "r1_", ",", " ", "r2_"}], "]"}],
    " ", ":=", "\[IndentingNewLine]", 
   RowBox[{"HoldForm", "[", 
    RowBox[{"Module", "[", 
     RowBox[{
      RowBox[{"{", 
       RowBox[{
       "w", ",", " ", "width", ",", " ", "d", ",", " ", "plot", ",", " ", 
        "g"}], "}"}], ",", "\[IndentingNewLine]", "\[IndentingNewLine]", 
      RowBox[{
       RowBox[{
        RowBox[{"w", "[", 
         RowBox[{
         "rr_", ",", " ", "vv1_", ",", " ", "vv2_", ",", " ", "rr1_", ",", 
          " ", "rr2_"}], "]"}], " ", "=", " ", "\[IndentingNewLine]", 
        RowBox[{"Module", "[", 
         RowBox[{
          RowBox[{"{", 
           RowBox[{"rd", ",", " ", "gOver4mu"}], "}"}], ",", 
          "\[IndentingNewLine]", 
          RowBox[{
           RowBox[{"rd", " ", "=", " ", 
            RowBox[{
             RowBox[{"rr2", "^", "2"}], " ", "-", " ", 
             RowBox[{"rr1", "^", "2"}]}]}], " ", ";", "\[IndentingNewLine]", 
           RowBox[{"(*", " ", 
            RowBox[{
             RowBox[{
              RowBox[{"with", ":", " ", "G"}], " ", "=", " ", 
              RowBox[{
               RowBox[{"-", "dp"}], "/", "dz"}]}], ",", " ", 
             RowBox[{
              RowBox[{"writing", " ", "vv2"}], " ", "=", " ", 
              RowBox[{
               RowBox[{"(", 
                RowBox[{
                 RowBox[{"rr2", "^", "2"}], " ", "-", " ", 
                 RowBox[{"rr1", "^", "2"}]}], ")"}], " ", 
               RowBox[{"G", "/", 
                RowBox[{"(", 
                 RowBox[{"4", " ", "mu"}], ")"}]}]}]}]}], " ", "*)"}], 
           "\[IndentingNewLine]", 
           RowBox[{"gOver4mu", " ", "=", " ", 
            RowBox[{"vv2", "/", "rd"}]}], " ", ";", "\[IndentingNewLine]", 
           RowBox[{
            RowBox[{"gOver4mu", 
             RowBox[{"(", 
              RowBox[{
               RowBox[{"rr2", "^", "2"}], " ", "-", " ", 
               RowBox[{"rr", "^", "2"}]}], ")"}]}], "  ", "+", " ", 
            RowBox[{
             RowBox[{"(", 
              RowBox[{"vv1", " ", "-", "vv2"}], ")"}], 
             RowBox[{
              RowBox[{"Log", "[", 
               RowBox[{"rr", "/", "rr2"}], "]"}], "/", 
              RowBox[{"Log", "[", 
               RowBox[{"rr1", "/", "rr2"}], "]"}]}]}]}]}]}], " ", 
         "\[IndentingNewLine]", "]"}]}], " ", ";", "\[IndentingNewLine]", 
       "\[IndentingNewLine]", 
       RowBox[{"width", " ", "=", " ", "2.5"}], " ", ";", 
       "\[IndentingNewLine]", 
       RowBox[{"d", " ", "=", " ", 
        RowBox[{"r1", "+", " ", 
         RowBox[{
          RowBox[{"(", 
           RowBox[{"r2", "-", "r1"}], ")"}], "/", "5"}]}]}], " ", ";", 
       "\[IndentingNewLine]", "\[IndentingNewLine]", 
       RowBox[{"plot", " ", "=", " ", 
        RowBox[{"ParametricPlot", "[", 
         RowBox[{
          RowBox[{"{", 
           RowBox[{
            RowBox[{"w", "[", 
             RowBox[{
             "r", ",", " ", "v1", ",", " ", "v2", ",", " ", "r1", ",", " ", 
              "r2"}], "]"}], ",", " ", "r"}], "}"}], ",", 
          RowBox[{"{", 
           RowBox[{"r", ",", " ", "r1", ",", " ", "r2"}], "}"}], ",", " ", 
          RowBox[{"Axes", " ", "\[Rule]", " ", "None"}], ",", " ", 
          RowBox[{"PlotRange", " ", "\[Rule]", " ", 
           RowBox[{"{", 
            RowBox[{
             RowBox[{"{", 
              RowBox[{
               RowBox[{"-", "width"}], ",", " ", "width"}], "}"}], ",", " ", 
             RowBox[{"{", 
              RowBox[{"r1", ",", " ", "r2"}], "}"}]}], "}"}]}]}], "]"}]}], 
       " ", ";", "\[IndentingNewLine]", 
       RowBox[{"{", 
        RowBox[{"plot", ",", "\[IndentingNewLine]", 
         RowBox[{"Graphics", "[", 
          RowBox[{"{", "\[IndentingNewLine]", 
           RowBox[{"(*", " ", 
            RowBox[{"The", " ", "velocity", " ", 
             RowBox[{"field", ":"}]}], " ", "*)"}], "\[IndentingNewLine]", 
           RowBox[{
            RowBox[{"Arrowheads", "[", "Medium", "]"}], ",", 
            "\[IndentingNewLine]", 
            RowBox[{"Table", "[", 
             RowBox[{
              RowBox[{"Arrow", "[", 
               RowBox[{"{", 
                RowBox[{
                 RowBox[{"{", 
                  RowBox[{"0", ",", " ", "r"}], "}"}], ",", 
                 RowBox[{"{", 
                  RowBox[{
                   RowBox[{"w", "[", 
                    RowBox[{
                    "r", ",", " ", "v1", ",", " ", "v2", ",", " ", "r1", ",", 
                    " ", "r2"}], "]"}], ",", " ", "r"}], "}"}]}], "}"}], 
               "]"}], ",", 
              RowBox[{"{", 
               RowBox[{
               "r", ",", " ", "r1", " ", ",", " ", "r2", " ", ",", " ", 
                RowBox[{
                 RowBox[{"(", 
                  RowBox[{"r2", "-", "r1"}], ")"}], "/", "10."}]}], "}"}]}], 
             " ", "]"}], " ", ",", "\[IndentingNewLine]", 
            RowBox[{"(*", " ", 
             RowBox[{
              RowBox[{"vertical", " ", "line", " ", "at", " ", "z"}], " ", 
              "=", " ", "0"}], " ", "*)"}], "\[IndentingNewLine]", "Black", 
            ",", " ", 
            RowBox[{"Line", "[", 
             RowBox[{"{", 
              RowBox[{
               RowBox[{"{", 
                RowBox[{"0", ",", " ", "r1"}], "}"}], ",", " ", 
               RowBox[{"{", 
                RowBox[{"0", ",", " ", "r2"}], "}"}]}], "}"}], "]"}], ",", 
            "\[IndentingNewLine]", 
            RowBox[{"(*", " ", 
             RowBox[{
              RowBox[{"velocity", " ", "direction", " ", 
               RowBox[{"indicator", ".", "  ", "Fix"}]}], ",", " ", 
              RowBox[{"if", " ", "allowing", " ", "for", " ", "negative", " ", 
               RowBox[{"velocity", "."}]}]}], " ", "*)"}], 
            "\[IndentingNewLine]", 
            RowBox[{"(*", 
             RowBox[{
              RowBox[{"Text", "[", 
               RowBox[{
                RowBox[{"Style", "[", 
                 RowBox[{
                  RowBox[{"Style", "[", 
                   RowBox[{"\"\<v\>\"", ",", "Italic"}], "]"}], ",", " ", 
                  "Bold", ",", " ", "18"}], "]"}], ",", " ", 
                RowBox[{"{", 
                 RowBox[{
                  RowBox[{
                   RowBox[{"-", "width"}], " ", "+", " ", ".3"}], ",", "d"}], 
                 "}"}]}], "]"}], ","}], "*)"}], "\[IndentingNewLine]", 
            RowBox[{"Text", "[", 
             RowBox[{
              RowBox[{"MaTeX", "[", "\"\<v\>\"", "]"}], ",", " ", 
              RowBox[{"{", 
               RowBox[{
                RowBox[{
                 RowBox[{"-", "width"}], " ", "+", " ", ".3"}], ",", "d"}], 
               "}"}]}], "]"}], ",", "\[IndentingNewLine]", "blue", ",", " ", 
            "\[IndentingNewLine]", 
            RowBox[{"Arrow", "[", 
             RowBox[{"{", "\[IndentingNewLine]", 
              RowBox[{
               RowBox[{"{", 
                RowBox[{
                 RowBox[{
                  RowBox[{"-", "width"}], " ", "+", " ", ".4"}], ",", "d"}], 
                "}"}], ",", "\[IndentingNewLine]", 
               RowBox[{"{", 
                RowBox[{
                 RowBox[{
                  RowBox[{"-", "width"}], "+", ".9"}], ",", "d"}], "}"}]}], 
              "\[IndentingNewLine]", "}"}], "]"}], ",", "\[IndentingNewLine]", 
            RowBox[{"(*", " ", 
             RowBox[{"cylinder", " ", "interface", " ", "indicators"}], " ", 
             "*)"}], "\[IndentingNewLine]", 
            RowBox[{"Thickness", "[", "0.025", "]"}], ",", 
            "\[IndentingNewLine]", "red", ",", 
            RowBox[{"Line", "[", 
             RowBox[{"{", 
              RowBox[{
               RowBox[{"{", 
                RowBox[{
                 RowBox[{"-", "5."}], ",", " ", "r1"}], "}"}], ",", 
               RowBox[{"{", 
                RowBox[{"5.", ",", " ", "r1"}], "}"}]}], "}"}], "]"}], ",", 
            "\[IndentingNewLine]", "green", ",", " ", 
            RowBox[{"Line", "[", 
             RowBox[{"{", 
              RowBox[{
               RowBox[{"{", 
                RowBox[{
                 RowBox[{"-", "5."}], ",", " ", "r2"}], "}"}], ",", 
               RowBox[{"{", 
                RowBox[{"5.", ",", " ", "r2"}], "}"}]}], "}"}], "]"}], ","}], 
           "\[IndentingNewLine]", "}"}], "]"}]}], "\[IndentingNewLine]", 
        "}"}]}]}], "\[IndentingNewLine]", " ", "]"}], "]"}]}], " ", 
  RowBox[{"(*", " ", 
   RowBox[{"HoldForm", " ", "Module"}], " ", "*)"}], "\[IndentingNewLine]", 
  "\[IndentingNewLine]", 
  RowBox[{"(*", 
   RowBox[{"Show", "[", 
    RowBox[{"ReleaseHold", "[", 
     RowBox[{"s", "[", 
      RowBox[{"1.", ",", " ", "2.5", ",", " ", "5."}], "]"}], " ", "]"}], 
    "]"}], " ", "*)"}], "\[IndentingNewLine]"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{"Manipulate", "[", "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{"Show", "[", 
     RowBox[{"ReleaseHold", "[", 
      RowBox[{"s", "[", 
       RowBox[{"v1", ",", " ", "v2", ",", " ", "r1", ",", " ", 
        RowBox[{"r1", " ", "+", " ", "s2"}]}], "]"}], " ", "]"}], "]"}], 
    "\[IndentingNewLine]", ",", " ", 
    RowBox[{"{", 
     RowBox[{
      RowBox[{"{", 
       RowBox[{"r1", ",", " ", ".3", ",", " ", 
        SubscriptBox["R", "1"]}], "}"}], ",", " ", ".01", ",", " ", "2.5"}], 
     " ", "}"}], "\[IndentingNewLine]", ",", " ", 
    RowBox[{"{", 
     RowBox[{
      RowBox[{"{", 
       RowBox[{"s2", ",", " ", "2.1", ",", " ", 
        RowBox[{
         SubscriptBox["R", "2"], "-", " ", 
         SubscriptBox["R", "1"]}]}], "}"}], ",", "1.", ",", " ", "2.5"}], " ",
      "}"}], "\[IndentingNewLine]", ",", " ", 
    RowBox[{"{", 
     RowBox[{
      RowBox[{"{", 
       RowBox[{"v1", ",", " ", "1.4", ",", " ", "v"}], "}"}], ",", " ", "0.", 
      ",", " ", "2.5"}], " ", "}"}], "\[IndentingNewLine]", ",", " ", 
    RowBox[{"{", 
     RowBox[{
      RowBox[{"{", 
       RowBox[{"v2", ",", " ", 
        RowBox[{"-", "1."}], ",", " ", 
        RowBox[{
         FormBox[
          FractionBox[
           RowBox[{"G", " "}], 
           RowBox[{"4", "\[Mu]"}]],
          TraditionalForm], " ", 
         RowBox[{"(", 
          RowBox[{
           SubsuperscriptBox["R", "2", "2"], "-", 
           SubsuperscriptBox["R", "1", "2"]}], ")"}]}]}], "}"}], ",", " ", 
      RowBox[{"-", "3.5"}], ",", " ", "3.5"}], " ", "}"}], 
    "\[IndentingNewLine]", ",", " ", 
    RowBox[{"SaveDefinitions", "\[Rule]", "True"}]}], " ", 
   RowBox[{"(*", " ", 
    ButtonBox[
     RowBox[{
      RowBox[{"http", ":"}], "//", 
      RowBox[{
       RowBox[{
        RowBox[{
         RowBox[{
          RowBox[{"mathematica", ".", "stackexchange", ".", "com"}], "/", 
          "questions"}], "/", "1669"}], "/", "table"}], "-", "function", "-", 
       "with", "-", "part", "-", "call", "-", "misbehaving", "-", "but", "-", 
       "only", "-", "after", "-", "initial", "-", "startup", "-", "of", "-", 
       "m"}]}],
     BaseStyle->"Hyperlink",
     ButtonData->{
       URL[
       "http://mathematica.stackexchange.com/questions/1669/table-function-\
with-part-call-misbehaving-but-only-after-initial-startup-of-m"], None},
     ButtonNote->
      "http://mathematica.stackexchange.com/questions/1669/table-function-\
with-part-call-misbehaving-but-only-after-initial-startup-of-m"], " ", "*)"}],
    "\[IndentingNewLine]", "]"}], "\[IndentingNewLine]", 
  "\[IndentingNewLine]"}], "\[IndentingNewLine]"}], "Input",
 CellChangeTimes->{{3.5433627128849325`*^9, 3.5433627761425505`*^9}, {
   3.543362808238387*^9, 3.5433628311786985`*^9}, {3.5433628829076576`*^9, 
   3.5433630003133726`*^9}, {3.543363037940525*^9, 3.543363123667428*^9}, {
   3.5433631587684355`*^9, 3.543363300223527*^9}, {3.5433633730046897`*^9, 
   3.5433634615317526`*^9}, {3.5433635689418964`*^9, 
   3.5433636412520323`*^9}, {3.5433637063307543`*^9, 3.543363824979541*^9}, {
   3.5433638646068077`*^9, 3.5433638926934137`*^9}, {3.5433639402561345`*^9, 
   3.5433641193873796`*^9}, {3.543364167382125*^9, 3.543364209483533*^9}, {
   3.5433644623149943`*^9, 3.5433644841402426`*^9}, {3.5433646130536165`*^9, 
   3.543364654087963*^9}, {3.5433647009266424`*^9, 3.5433647217438326`*^9}, {
   3.543365027056296*^9, 3.5433650738119698`*^9}, {3.5433652355342197`*^9, 
   3.5433653383911033`*^9}, {3.543365382888648*^9, 3.543365410574232*^9}, 
   3.543365446127265*^9, {3.543365561149844*^9, 3.5433655661401296`*^9}, {
   3.5433656119847517`*^9, 3.543365758966159*^9}, {3.543365800658543*^9, 
   3.543365878187978*^9}, {3.543365916135148*^9, 3.5433659538383045`*^9}, {
   3.543366102574812*^9, 3.543366169574644*^9}, {3.543366236794489*^9, 
   3.5433662474881*^9}, {3.5433662843092065`*^9, 3.543366350505993*^9}, {
   3.5433665339824867`*^9, 3.5433665709676027`*^9}, {3.5433666097518206`*^9, 
   3.543366702699137*^9}, {3.5433668047949767`*^9, 3.5433669598328447`*^9}, {
   3.543366997504999*^9, 3.543367186586814*^9}, {3.543367220472752*^9, 
   3.543367270554617*^9}, {3.5433673280879073`*^9, 3.5433673385795074`*^9}, 
   3.543367417875043*^9, {3.5433674495738564`*^9, 3.5433674663808174`*^9}, {
   3.543367579754302*^9, 3.543367679412002*^9}, {3.5433677315899863`*^9, 
   3.5433677849840403`*^9}, {3.5433678201230497`*^9, 3.543368074178581*^9}, {
   3.543368131965886*^9, 3.5433681420714645`*^9}, {3.543368199012721*^9, 
   3.5433682512157073`*^9}, {3.5433682988174295`*^9, 3.54336832224577*^9}, {
   3.543368360447955*^9, 3.5433683670443325`*^9}, {3.5433684034424143`*^9, 
   3.543368452549223*^9}, {3.5433685155968285`*^9, 3.5433685159938517`*^9}, {
   3.5433685568911905`*^9, 3.5433686049989424`*^9}, {3.543368660119095*^9, 
   3.5433686601610975`*^9}, {3.5433686902578187`*^9, 3.543368706812766*^9}, {
   3.5433687472080765`*^9, 3.543368764598071*^9}, {3.543368808503582*^9, 
   3.543368934221773*^9}, 3.5433689909350166`*^9, {3.543369969778003*^9, 
   3.5433699703970385`*^9}, {3.543370587731348*^9, 3.543370590947532*^9}, 
   3.5434014590298743`*^9, {3.543406234309005*^9, 3.5434062998697543`*^9}, {
   3.5434076488609123`*^9, 3.5434079665960855`*^9}, {3.543410045905016*^9, 
   3.543410075896731*^9}, {3.5434101148759604`*^9, 3.54341014843888*^9}, {
   3.5434101882591577`*^9, 3.5434101934644556`*^9}, {3.543410248705615*^9, 
   3.5434102630604362`*^9}, {3.543410317519551*^9, 3.5434103409068885`*^9}, {
   3.5434110898457255`*^9, 3.5434111274878783`*^9}, 3.543411255214184*^9, {
   3.5434143836161184`*^9, 3.5434144863299932`*^9}, {3.54341461564839*^9, 
   3.5434146168044558`*^9}, 3.543414665725254*^9, {3.543414696613021*^9, 
   3.543414719590335*^9}, 3.543483843683571*^9, {3.88818292191227*^9, 
   3.888183033911139*^9}, {3.888183265979154*^9, 3.88818328331653*^9}, {
   3.8881833391212177`*^9, 3.888183370593957*^9}, {3.88818418461642*^9, 
   3.8881842189284697`*^9}},ExpressionUUID->"2db45222-2d86-4391-bdce-\
c2904440b9bb"],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"twoCylinderFig2", " ", "=", " ", 
  RowBox[{"Show", "[", 
   RowBox[{"ReleaseHold", "[", 
    RowBox[{"s", "[", 
     RowBox[{"1.4", ",", " ", 
      RowBox[{"-", "1"}], ",", "2.5", ",", " ", 
      RowBox[{"2.5", " ", "+", " ", "1.5"}]}], "]"}], "]"}], "]"}]}]], "Input",
 CellChangeTimes->{{3.8881842408362503`*^9, 3.888184328752981*^9}},
 CellLabel->
  "In[954]:=",ExpressionUUID->"3ed48447-13a8-4a4b-b227-87614186596e"],

Cell[BoxData[
 GraphicsBox[{{{{}, {}, 
     TagBox[
      {RGBColor[0.368417, 0.506779, 0.709798], AbsoluteThickness[1.6], 
       Opacity[1.], FaceForm[Opacity[0.3]], LineBox[CompressedData["
1:eJxVjXlYzAkcxifN1TTTz5FWNFlKSKJZOnZrvl86pJNQaasZ23Q5os1ZIjtN
p5TNMaqdTahWOmgTgxQdk5ikw3Qg4yi6dJjVUrut//bzPO/zPu/z/vFZ8NNu
j8BpJBLJdSr/ddBXVED6ChkdJ4RnYgNUoL3LjzM8tfWtikkX+CpY0iEVKNXI
WL2ILez2UYH7n/vqq9XJ6JDdBf7uKpCE9P2aSCNjauLc0wJLFVg3tS2aRZAx
9vHqtCyGCg7lFDob6ZPRU5eiuFH8EUbsfjzrYk3G14HLeKUDYzA8qpZdEE3G
brl9GNd6DFosiPwyKRnbqo4OF54chXyvRuMU1ZTfdl1mSNcIJLzs0D9gQUEP
UWn4VfMRcCG5zmTupWCQ7yTI44ZBL5FxoLSMgqSkTe7yZx/g2UCk5xIVBdtX
kQYFth/gl56Nqx05VHRq6xxv4w7BKue9osgIKgqGkKc9axDqbSdavEqoyB13
a2WP9oP7HKvfp/VTsbEmPm15VR8oPSs77prQMEtusOfGH+/B27ho9pJQGn6S
2LvCsXfQGdxTlXOZhlFyf6lE0Avux5p737+nYeI7Rs0Tfg/krTAinhvRkWm9
3VLf9S1oOlbnvgqmY1SDZEvQxjew6aPM5tRFOrr5hBYXOryGPKaug9dbOrLl
hKzF4RUM/DOvvsdIAyvF9ywi/JSgkyByNgjQwLonohp20Etwifwewi9qoJBl
mXIwthsC1Tw5219qoM/m2vuO3i9gt8AweyWbgXMVW09eT3kGcWbcoxr+DMyv
CC2T9XXCsfQKv5QMBtKEP0eIzToggZdUaNDFQLHxm8/WSQqIoWkcjNfTxG2+
iePt9Kfgaze45oy3JppWZakbhreCXZ9+dPk5TXRz1RbTJ5th+uLr5cI2TdSj
SHdQMp/AIy5pF3smEzn2R+zjDJrgbOXp9HoPJioXXxgLzWoEu6cnb36bysQQ
/rVXnQ0PYdKrfUPSYyaOxHEFujYPIHNXfI+ExcJVP1hEDzXUwVJe76eY9SyM
W7u+eZtlDVRLT0XtS2LhJbWc+1rKe2BbkDehXcdCzncn2HY7K0FOoQ7X0rWQ
Kji0cOHS2+Bk/Q3PYb0W9jenDXL6yuEyLfXhHpEWMprMbLn7SkHHxqOgsFYL
vS+JWpwVRRBEO5x4Wp3AmJWWoZomeZBX6K10AgJjl2UkK60k8PFOzJWZMQSu
3Jx9frFvKhgFEPtFtwmsNTx+LrjrBGQssuCn3yFw0P63YKnvCWD1+judryDQ
JF9fKPZLgbGdRfp3Kgn8kmGSY85Phqr9rnVj1QSaHzZuHQ+JB9+k5DmCRwSW
zL+8Z/mMo5B+lXZr7XMCrweGjfF0jgB174pLG14QWH1GOlo+Lxoizb1S/bsJ
rBB1+SuMooB/KzcgUjnlO9R3u4N7AExr7JnX3hLoeKEsWdYXBg8UQr8FQwRK
ckXnOv/eCdzMgnUrPhBIT9UJs2LsgKt+zWY2wwT2loXzWpcGg1i5kLp1lEDT
LVK2Xrs/BPZXFaX9ReBksfrEwGcfUBS9E0s+EWhpeNNqy3wvcAmfIbwyPvXf
bQqqa3QDjorvJftMILmkXjZ77jrIvZGwpu0LgU4Ra3awG7igG1Wy7PUEgc/t
wkQymSkct1HMHpkkkPQ/puO/Xacfrg==
        "]]},
      Annotation[#, "Charting`Private`Tag$446927#1"]& ]}, {}}, 
   {Arrowheads[
    Medium], {ArrowBox[{{0, 2.5}, {1.4, 2.5}}], 
     ArrowBox[{{0, 2.65}, {1.1816897061501148`, 2.65}}], 
     ArrowBox[{{0, 2.8}, {0.9843817219924191, 2.8}}], 
     ArrowBox[{{0, 2.95}, {0.8063648764245323, 2.95}}], 
     ArrowBox[{{0, 3.1}, {0.6461827790859807, 3.1}}], 
     ArrowBox[{{0, 3.25}, {0.5025856230707306, 3.25}}], 
     ArrowBox[{{0, 3.4000000000000004`}, {0.37449287177565765`, 
       3.4000000000000004`}}], 
     ArrowBox[{{0, 3.5500000000000003`}, {0.2609640074173877, 
       3.5500000000000003`}}], 
     ArrowBox[{{0, 3.7}, {0.16117533739678663`, 3.7}}], 
     ArrowBox[{{0, 3.85}, {0.07440141273342668, 3.85}}], 
     ArrowBox[{{0, 4.}, {0., 4.}}]}, 
    {GrayLevel[0], LineBox[{{0, 2.5}, {0, 4.}}], InsetBox[
      FormBox[
       GraphicsBox[
        {Thickness[0.10050251256281406`], 
         FilledCurveBox[{{{1, 4, 3}, {1, 3, 3}, {1, 3, 3}, {1, 3, 3}, {1, 3, 
          3}, {1, 3, 3}, {1, 3, 3}, {1, 3, 3}, {1, 3, 3}, {1, 3, 3}, {1, 3, 
          3}, {0, 1, 0}, {1, 3, 3}, {1, 3, 3}, {1, 3, 3}, {1, 3, 3}, {0, 1, 
          0}}}, CompressedData["
1:eJxTTMoPSmVmYGBgBGIDIGZigIFv9vEhQeoLMnUd5p2YvCRb7ae9/y3pmsQi
XYecqQmFFsW/4fwZM0HgH5wvs1FsPtMDFgcY/wwI+LA51LMc7Te8ruNQuLxk
wz9/Doh4j6ZDjGqEzLk9nA6Z+R9aT4qoO5gYA0Ext8NaIR2+9HWKcL77mqPL
GSzk4fwv+z5uTTeTheqH8rfJQPk8cP6OYKuI/+oCcH5fRLc/4wUxh735NW9n
qio5vGnL7TaSloP4w1LdofzwNteZvgoOv96+PmDJrOmgfO1RMIONooO+ovyX
nDBtOL/2t1XBuRU6cD4LZ5d88jlduP4WXv/1U47qQewtk4PzD3TvazJ5LAPn
P3CNd5x1URqi3w+N36cL55+/GvZG/7eOwxpQuNjJOKxVfdI8r1fHYTvIf+2y
UHltuH3rwfLaUP1yDv4XJ8b8c0bw60Huf6EF54P966wJCQdJKYcZE/irzLxV
HTLSgIBNFBJeS5Uc5Hct2Jd6Tshh5beXFWcaFCF8PyGHN8VbRX93qzn8B4H7
gg5zFinv/JOu4XAfZP5HAYh7eLUdWsRrWTPZ+CHxuFkPzoeFByT+eOF8iDw6
n8dhg17eYsY9sPDkcngQIb794gI9ePqCpBM9h35QfBcwODSA0p+4ngMsfT8B
qX+g64Ce3gHcmT11
          "]]},
        AspectRatio->Automatic,
        BaselinePosition->Scaled[0.3169518292168768],
        ImageSize->{9.954669987546701, 23.511820672478205`},
        PlotRange->{{0., 9.950000000000001}, {0., 23.51}}],
       TraditionalForm], {-2.2, 2.8}]}, 
    {GrayLevel[0], ArrowBox[{{-2.1, 2.8}, {-1.6, 2.8}}]}, 
    {GrayLevel[0], Thickness[0.025], LineBox[{{-5., 2.5}, {5., 2.5}}], 
     {GrayLevel[0], LineBox[{{-5., 4.}, {5., 4.}}]}}}},
  Axes->{False, False},
  AxesLabel->{None, None},
  AxesOrigin->{0, 2.5},
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
  PlotRange->{{-2.5, 2.5}, {2.5, 4.}},
  PlotRangeClipping->True,
  PlotRangePadding->{{0, 0}, {0, 0}},
  Ticks->{Automatic, Automatic}]], "Output",
 CellChangeTimes->{
  3.543410151312044*^9, 3.5434101967946463`*^9, 3.5434102651495557`*^9, 
   3.5434103563707733`*^9, 3.543411258752386*^9, 3.5434135679964676`*^9, {
   3.5434144662668457`*^9, 3.5434144870830364`*^9}, 3.5434146683354034`*^9, {
   3.8881828617977343`*^9, 3.888182866258685*^9}, {3.888182959590303*^9, 
   3.8881829737078953`*^9}, 3.888183054129846*^9, {3.888183344828746*^9, 
   3.888183377042852*^9}, {3.888184120341105*^9, 3.888184126377561*^9}, {
   3.8881842343397017`*^9, 3.8881843302692127`*^9}},
 CellLabel->
  "Out[954]=",ExpressionUUID->"80fc31ce-a311-4891-9d36-c1fb92741104"]
}, Open  ]],

Cell[CellGroupData[{

Cell["Misc stuff for generating figures and animations.", "Section",
 CellChangeTimes->{{3.543414510964402*^9, 3.5434145323616257`*^9}, {
  3.5434145676826468`*^9, 
  3.5434145695867553`*^9}},ExpressionUUID->"fb1d35d2-8861-4579-bb7d-\
e1b362d238b8"],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{
  RowBox[{"(*", " ", 
   RowBox[{
    RowBox[{
    "This", " ", "line", " ", "was", " ", "generated", " ", "by", " ", 
     "Clicking", " ", "the"}], " ", "+", " ", 
    RowBox[{
    "in", " ", "the", " ", "top", " ", "right", " ", "corner", " ", "of", " ",
      "Manipulate", " ", "and", " ", "selecting", " ", "Paste", " ", 
     "Snapshot"}]}], " ", "*)"}], "\[IndentingNewLine]", 
  "\[IndentingNewLine]", 
  RowBox[{"twoCylinderFig4", " ", "=", " ", 
   RowBox[{"DynamicModule", "[", 
    RowBox[{
     RowBox[{"{", 
      RowBox[{
       RowBox[{"r1", "=", "0.335`"}], ",", 
       RowBox[{"s2", "=", "2.5`"}], ",", 
       RowBox[{"v1", "=", "0.525`"}], ",", 
       RowBox[{"v2", "=", 
        RowBox[{"-", "0.54`"}]}]}], "}"}], ",", 
     RowBox[{"Show", "[", 
      RowBox[{"ReleaseHold", "[", 
       RowBox[{"s", "[", 
        RowBox[{"v1", ",", "v2", ",", "r1", ",", 
         RowBox[{"r1", "+", "s2"}]}], "]"}], "]"}], "]"}]}], 
    "]"}]}]}]], "Input",
 GeneratedCell->False,
 CellAutoOverwrite->False,
 CellChangeTimes->{
  3.5434107967249603`*^9, {3.5434108708331985`*^9, 3.543410872185276*^9}, {
   3.888184579404504*^9, 3.888184580183588*^9}},
 CellLabel->
  "In[955]:=",ExpressionUUID->"1f5ab8de-5dae-4c36-9412-d927a9e7a086"],

Cell[BoxData[
 DynamicModuleBox[{$CellContext`r1$$ = 0.335, $CellContext`s2$$ = 
  2.5, $CellContext`v1$$ = 0.525, $CellContext`v2$$ = -0.54}, 
  GraphicsBox[{{{{}, {}, 
      TagBox[
       {RGBColor[0.368417, 0.506779, 0.709798], AbsoluteThickness[1.6], 
        Opacity[1.], FaceForm[Opacity[0.3]], LineBox[CompressedData["
1:eJwd1nk8VN/7APChTHZaVEQlKqRIQn3Vc/VBKklISJJEloQoRAsqskQkH6Xs
IXuYuZMcRZukIpmk7LuUNczMnd/5/Oafeb1fZ86c+zz3nOc8ik7nLE4L0mg0
MQEa7b/vhv//dILPLtHWTO8W8GaVnUW1ndA4MvB+W0gLGPFKCxmsTlBPeVVT
G9kCjujBODO3E/pnrub3ZLTAncaRb7zwTrAr+Rui1NIClvOVLVG7O2GPUp9y
5o6v0M/sL1jj0QHLRGp8MwRb4ZNlnK2i8w9gfvGXTE9kw4MdL/yFfb7Bob3K
rbu538HuUqysxvavsOKS2i9ZtQ7IrX+XTp1sBgnXEWG+Uhfsvx3B+pj5CXSp
7lMvvnSD1dXsy+NPGmDe/8bpjDO98HbcUrBn41twPva+2HJ1P9AmI7LylevA
w/zUNZGGAQh/IFBBPKsB8Q2P537YD4Gm4uhpkQoWWLlFs0KlRsA+rMekebwc
tGMU1hlnj8KnYAYtJLwYymoEFktuG4OV9TKyZTrZwD550ySn+zd4l7JrpFuT
4b2PfUIR6w9cPfPqZxQzBC4PvdowkTgONQo72Eo6VxFtiM3T9ZgAxz5963Wm
d1Ej20BFYtskRFzI++ahlI68r3Au1ItNgWPwquCg+znIYbmY7IqvU2DubUE6
/HqC1jp7dBwonYbgzkl1ZFKCSnf4D4VGzIDJ0V7pB9vKUCz/i/G+w39Bv7I4
oVWoHEHw9bd/1WaB+3iL6ZuQCqQ/FJW6fWYWpg7GhsuFVSCpvLFUi7lZ0E4Y
8HKPqEDdZw4/PMedhfaxq8doCRUocnD5ozzBOagi5DIW5lagrwPpaQpSc9Cu
mmtx7nMFOtfPyBRSweMSzOxPipUoo6cnr8V2Dmaf+Gf+YFYi4Z//q/R/PgeE
ZcWi2ueVqLJT4+jXmjnIvdn3JOtlJTrdozSrUzcHNjnOlfYNlejloNjO2fo5
YF4Z7XnUUYmCJ78/D2LPgbBP+9rzQgz0Rzj41ZXJOXB08lx22IyB2NuqvkSq
zkPypGu1SAsD5UbqT6benQeVa54ZiM1AK3tDPtclz4N+5KijbzsDRexGxSP3
50GvaPG5xh4Gcp008NyRMQ/ezvXfHScYaMPxvX1fiuYhOMXkyG9JJsrUtGgV
ezsP9uOmTyuMmOhhq+uzwPl5+FMUWLloHxNJauX9m8abB6s2r3RrUya6HD18
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
iujE/wHPhcMM
         "]]},
       Annotation[#, "Charting`Private`Tag$447265#1"]& ]}, {}}, 
    {Arrowheads[
     Medium], {ArrowBox[{{0, 0.335}, {0.5249999999999999, 0.335}}], 
      ArrowBox[{{0, 0.585}, {0.2626708648259225, 0.585}}], 
      ArrowBox[{{0, 0.835}, {0.10942225889512125`, 0.835}}], 
      ArrowBox[{{0, 1.085}, {0.011524574625061346`, 1.085}}], 
      ArrowBox[{{0, 1.335}, {-0.05065201461117702, 1.335}}], 
      ArrowBox[{{0, 1.585}, {-0.08650951900352499, 1.585}}], 
      ArrowBox[{{0, 1.835}, {-0.10128657564384128`, 1.835}}], 
      ArrowBox[{{0, 2.085}, {-0.09820328815290821, 2.085}}], 
      ArrowBox[{{0, 2.335}, {-0.07938119364065195, 2.335}}], 
      ArrowBox[{{0, 2.585}, {-0.046292335282845196`, 2.585}}], 
      ArrowBox[{{0, 2.835}, {5.5363860376600504`*^-17, 2.835}}]}, 
     {GrayLevel[0], LineBox[{{0, 0.335}, {0, 2.835}}], InsetBox[
       FormBox[
        GraphicsBox[
         {Thickness[0.10050251256281406`], 
          FilledCurveBox[{{{1, 4, 3}, {1, 3, 3}, {1, 3, 3}, {1, 3, 3}, {1, 3, 
           3}, {1, 3, 3}, {1, 3, 3}, {1, 3, 3}, {1, 3, 3}, {1, 3, 3}, {1, 3, 
           3}, {0, 1, 0}, {1, 3, 3}, {1, 3, 3}, {1, 3, 3}, {1, 3, 3}, {0, 1, 
           0}}}, CompressedData["
1:eJxTTMoPSmVmYGBgBGIDIGZigIFv9vEhQeoLMnUd5p2YvCRb7ae9/y3pmsQi
XYecqQmFFsW/4fwZM0HgH5wvs1FsPtMDFgcY/wwI+LA51LMc7Te8ruNQuLxk
wz9/Doh4j6ZDjGqEzLk9nA6Z+R9aT4qoO5gYA0Ext8NaIR2+9HWKcL77mqPL
GSzk4fwv+z5uTTeTheqH8rfJQPk8cP6OYKuI/+oCcH5fRLc/4wUxh735NW9n
qio5vGnL7TaSloP4w1LdofzwNteZvgoOv96+PmDJrOmgfO1RMIONooO+ovyX
nDBtOL/2t1XBuRU6cD4LZ5d88jlduP4WXv/1U47qQewtk4PzD3TvazJ5LAPn
P3CNd5x1URqi3w+N36cL55+/GvZG/7eOwxpQuNjJOKxVfdI8r1fHYTvIf+2y
UHltuH3rwfLaUP1yDv4XJ8b8c0bw60Huf6EF54P966wJCQdJKYcZE/irzLxV
HTLSgIBNFBJeS5Uc5Hct2Jd6Tshh5beXFWcaFCF8PyGHN8VbRX93qzn8B4H7
gg5zFinv/JOu4XAfZP5HAYh7eLUdWsRrWTPZ+CHxuFkPzoeFByT+eOF8iDw6
n8dhg17eYsY9sPDkcngQIb794gI9ePqCpBM9h35QfBcwODSA0p+4ngMsfT8B
qX+g64Ce3gHcmT11
           "]]},
         AspectRatio->Automatic,
         BaselinePosition->Scaled[0.3169518292168768],
         ImageSize->{9.954669987546701, 23.511820672478205`},
         PlotRange->{{0., 9.950000000000001}, {0., 23.51}}],
        TraditionalForm], {-2.2, 0.835}]}, 
     {GrayLevel[0], ArrowBox[{{-2.1, 0.835}, {-1.6, 0.835}}]}, 
     {GrayLevel[0], Thickness[0.025], LineBox[{{-5., 0.335}, {5., 0.335}}], 
      {GrayLevel[0], LineBox[{{-5., 2.835}, {5., 2.835}}]}}}},
   Axes->{False, False},
   AxesLabel->{None, None},
   AxesOrigin->{0, 0.335},
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
           "placement" -> {"x" -> "All", "y" -> "None"}}}}, 
     "ScalingFunctions" -> None},
   PlotRange->{{-2.5, 2.5}, {0.335, 2.835}},
   PlotRangeClipping->True,
   PlotRangePadding->{{0, 0}, {0, 0}},
   Ticks->{Automatic, Automatic}],
  DynamicModuleValues:>{}]], "Output",
 CellChangeTimes->{{3.5434108057894783`*^9, 3.543410835437174*^9}, 
   3.8881845810935163`*^9},
 CellLabel->
  "Out[955]=",ExpressionUUID->"f54cc18d-6812-4e20-acf6-ac4d05153053"]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{
  RowBox[{"(*", 
   RowBox[{
   "SetDirectory", "[", " ", 
    "\"\<C:\\\\Users\\\\Peeter\\\\cygwin_home\\\\physicsplay\\\\notes\\\\\
blogit\>\"", " ", "]"}], " ", "*)"}], "\[IndentingNewLine]", 
  "\[IndentingNewLine]", 
  RowBox[{"(*", 
   RowBox[{"Export", "[", 
    RowBox[{"\"\<twoCylinderFig4.png\>\"", ",", " ", "%"}], "]"}], "*)"}], 
  "\[IndentingNewLine]", 
  RowBox[{"(*", 
   RowBox[{"Export", "[", 
    RowBox[{"\"\<twoCylindersFig3.avi\>\"", ",", " ", "m"}], "]"}], 
   "*)"}]}]], "Input",
 GeneratedCell->False,
 CellAutoOverwrite->False,
 CellChangeTimes->{
  3.5433690420699415`*^9, {3.5433692364520597`*^9, 3.5433692513779135`*^9}, {
   3.5433700309044995`*^9, 3.543370063855384*^9}, {3.543370607270466*^9, 
   3.5433706342770104`*^9}, 3.543401447296203*^9, {3.5434108448857145`*^9, 
   3.5434108813027973`*^9}, 
   3.543413589056672*^9},ExpressionUUID->"0643ab34-fb01-4345-b6f6-\
ff2361b52372"],

Cell[BoxData["\<\"twoCylinderFig4.png\"\>"], "Output",
 CellChangeTimes->{{3.543370611382701*^9, 3.543370635751095*^9}, 
   3.543401465369237*^9, 3.5434108331170416`*^9, 
   3.543410883979951*^9},ExpressionUUID->"3910176d-b30a-4a75-b60f-\
e7067d00919e"]
}, Open  ]],

Cell[BoxData[
 DynamicModuleBox[{$CellContext`r1$$ = 
  1.1820938110351564`, $CellContext`s2$$ = 2.214, $CellContext`v$$ = 1.56}, 
  GraphicsBox[{{{}, {}, 
     {Hue[0.67, 0.6, 0.6], LineBox[CompressedData["
1:eJwtxQ1QknccwPFHVFQoLSVtZ+VbcpZlLbSt3Pn7l2+1SRYLC7UXKVJrmy8r
38rS8I2M1qW0wllaYFY2C5OaZTM1dTWdpCikcZma701B8FEwtt3te/e5rws7
jsEhYBhG/9d/13lE/lSvxcGbRqP1jKghaY7y4zY1DrvdUzbeHFdDlUygbPuI
w3GH2k3H/lbDpJHp9XYIhyp9ENJPq6F+canaqMRhQ2M43RHTwEHJihf7nuGw
nnk2OsJeA7TlWH5qLg5rk2VFPVs1ENxMv7rKEQfqkziz3iINJF4pPtK4cQau
c77pkkdOwyvey3HTWB1Qcpr6zBdroc2+yEol1kIV1md377kWks8urbVWToOy
WBhEz9TBhJJ/AneaBsN9jcTNewayJhXign0aEH8Yc9JoZ6BUX72oWKSG1CRu
1aaHOJRGpA9ZzE/B9lM1GVLOLMjcV+ZEh0xBiejijjXUORj1FymtKiZBs5UY
plDOQf7pzxIVtpOQ4OuYpefpoUIQtLS17yMkhf0lcdhuAH61Deb9ZAKSh1wd
j+oNkEZ0sW3gjoNRuCSr+uk8sG09oopZY/Cg/JZdStonOEOKWkz8ehQOrFH2
xnsa4auIjjyv1SNQ+Pp2GXvMCEkOzDq+2zCwZxYwA0MxxLgaHem/cAieXaZ0
M+9j6EBK4y9OhA+wrv/YeKmNCVI9KypZZj0I10YvreDFmCC2m9T6E2kAdnGt
ZOMtJsgS++3czPJ+IHSHloy5EhCNUlZjuvk9tHQPEqgnCSjmQk10WnAfyGJf
Dfa+ISDuOuznhNh3oJBmDHp5m6K9b4YuXptTgZsgmzNfaIqG11/6ooH2FrjO
b1Ispk2RT2fNSduCHug78qm8IsQMVar0LGq3Erh+iay2CjOU/SisHAcFuMmq
qflEc+RIr6OyHnWBYtH2XO5+c1SB7Yk6TJFDe59nDF5rjoQccctEQQc0f6/i
WDoQ0Z1QG/XErAxM8t/1FyYTkdhSroPMdth0SHL6qYyIcuUp/GWebZAz3FHh
tNoCtQoyCwJdX4GDMSDCyLNAD/nm86F7W6CsPZua1m+BKFnxN3btfwEpNPvE
hABLtITry5Ck18NBf91O0U1L5EPOZxAe/A5B1mUhiQZL1OIqHcmzqoG4o+KW
p5FWKE1C/PM7+UO4nHk86obUCn3MOn/PQVgJrwML+A3WJHSNdkp8t1MEjCKT
zVE/kFB5bryXi1wA7XfBVNhMQoW8AZ+16QLg+TnHePxBQsH7wll+7gLYKsNa
pS9JqKlzbCruRCFU655f7mgloQGGNWuRfQEItwSsXthJQiZxo2mBey/Coe5t
uzLekRCFT1fN1mWDjsC4fmSWhHh+A6Iw22yoFGww086RUE3IcHrtoSyI8bCL
5RpISBJawL5N5EIPvXNDiZGEVL16+WxIBtRdCWtSmpMREZtowKUn4JxXxESI
LRmd177P04QfB//nvoweOzJy4z2mE4yJYPh22aPYJWTEkchaI4LjIS71bUbO
UjIyuYq3GR5wYHfjAUrdCjKSMVldn+vZsHAPSt3hTEbb0l8+vhBwEJpGnFW9
LmSEr/WcPVPJhC9t3t+aXUlGDVeEtz38d8JUaf2CPCoZmZX5d2/5NRDueN9M
sPcgowH3c4ob93zgcDO3S7SKjLD/Wx5+2JfmSUb/AJ4IRno=
       "]]}}, 
    {Arrowheads[
     Medium], {
      ArrowBox[{{0, 1.1820938110351564`}, {1.56, 1.1820938110351564`}}], 
      ArrowBox[{{0, 1.4034938110351565`}, {1.3062266798304967`, 
        1.4034938110351565`}}], 
      ArrowBox[{{0, 1.6248938110351565`}, {1.0897034686050262`, 
        1.6248938110351565`}}], 
      ArrowBox[{{0, 1.8462938110351566`}, {0.9008816119976979, 
        1.8462938110351566`}}], 
      ArrowBox[{{0, 2.0676938110351566`}, {0.7334703036218212, 
        2.0676938110351566`}}], 
      ArrowBox[{{0, 2.2890938110351566`}, {0.5831047865750991, 
        2.2890938110351566`}}], 
      ArrowBox[{{0, 2.5104938110351567`}, {0.4466324002840867, 
        2.5104938110351567`}}], 
      ArrowBox[{{0, 2.7318938110351567`}, {0.32170156149300577`, 
        2.7318938110351567`}}], 
      ArrowBox[{{0, 2.9532938110351568`}, {0.2065114301288589, 
        2.9532938110351568`}}], 
      ArrowBox[{{0, 3.174693811035157}, {0.0996523143005463, 
        3.174693811035157}}], 
      ArrowBox[{{0, 3.3960938110351564`}, {0., 3.3960938110351564`}}]}, 
     {GrayLevel[0], 
      LineBox[{{0, 1.1820938110351564`}, {0, 3.3960938110351564`}}], InsetBox[
       StyleBox[
        StyleBox["\<\"v\"\>",
         StripOnInput->False,
         FontSlant->Italic],
        StripOnInput->False,
        FontSize->18,
        FontWeight->Bold], {-2.2, 1.6248938110351565}]}, 
     {RGBColor[0, 0, 1], 
      ArrowBox[{{-2.1, 1.6248938110351565`}, {-1.6, 1.6248938110351565`}}]}, 
     {RGBColor[1, 0, 0], Thickness[0.025], 
      LineBox[{{-5., 1.1820938110351564`}, {5., 1.1820938110351564`}}], 
      {RGBColor[0, 1, 0], 
       LineBox[{{-5., 3.3960938110351564`}, {5., 3.3960938110351564`}}]}}}},
   Axes->None,
   AxesOrigin->{0, 1.5},
   PlotRange->{{-2.5, 2.5}, {1.1820938110351564`, 3.3960938110351564`}},
   PlotRangeClipping->True,
   PlotRangePadding->{Automatic, Automatic}],
  DynamicModuleValues:>{}]], "Input",
 CellChangeTimes->{
  3.543369149987114*^9},ExpressionUUID->"16976b89-3e2d-43c7-be0d-\
f32ce4be8123"],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{
  RowBox[{"(*", " ", 
   RowBox[{
    RowBox[{"for", " ", "export"}], ",", " ", 
    RowBox[{"fix", " ", 
     RowBox[{"r2", ".", "  ", "It"}], " ", "changes", " ", "the", " ", 
     "scaling", " ", "of", " ", "the", " ", "image"}], ",", " ", 
    RowBox[{"and", " ", "makes", " ", "ffmpeg", " ", "choke"}]}], " ", "*)"}],
   "\[IndentingNewLine]", 
  RowBox[{
   ButtonBox[
    RowBox[{
     RowBox[{"http", ":"}], "//", 
     RowBox[{
      RowBox[{
       RowBox[{
        RowBox[{
         RowBox[{"mathematica", ".", "stackexchange", ".", "com"}], "/", 
         "questions"}], "/", "4229"}], "/", "export"}], "-", "animation", "-",
       "of", "-", "a", "-", "manipulate", "-", "autorun", "-", "sequence"}]}],
    BaseStyle->"Hyperlink",
    ButtonData->{
      URL[
      "http://mathematica.stackexchange.com/questions/4229/export-animation-\
of-a-manipulate-autorun-sequence"], None},
    ButtonNote->
     "http://mathematica.stackexchange.com/questions/4229/export-animation-of-\
a-manipulate-autorun-sequence"], "\[IndentingNewLine]", 
   RowBox[{"(*", 
    RowBox[{"Module", "[", 
     RowBox[{
      RowBox[{"{", 
       RowBox[{"m2", ",", " ", "s2"}], "}"}], ",", "\[IndentingNewLine]", 
      RowBox[{
       RowBox[{"s2", " ", "=", " ", "2.1"}], " ", ";", " ", 
       "\[IndentingNewLine]", 
       RowBox[{"m2", " ", "=", " ", 
        RowBox[{"Manipulate", "[", "\[IndentingNewLine]", 
         RowBox[{
          RowBox[{"Show", "[", 
           RowBox[{"ReleaseHold", "[", 
            RowBox[{"s", "[", 
             RowBox[{"v1", ",", " ", "v2", ",", " ", "r1", ",", " ", 
              RowBox[{"r1", " ", "+", " ", "s2"}]}], "]"}], " ", "]"}], "]"}],
           "\[IndentingNewLine]", ",", " ", 
          RowBox[{"{", 
           RowBox[{
            RowBox[{"{", 
             RowBox[{"r1", ",", " ", ".3", ",", " ", 
              SubscriptBox["R", "1"]}], "}"}], ",", " ", ".01", ",", " ", 
            "2.5"}], " ", "}"}], "\[IndentingNewLine]", 
          RowBox[{"(*", 
           RowBox[{",", " ", 
            RowBox[{"{", 
             RowBox[{
              RowBox[{"{", 
               RowBox[{"s2", ",", " ", "2.1", ",", " ", 
                RowBox[{
                 SubscriptBox["R", "2"], "-", " ", 
                 SubscriptBox["R", "1"]}]}], "}"}], ",", "1.", ",", " ", 
              "2.5"}], " ", "}"}]}], "*)"}], "\[IndentingNewLine]", ",", " ", 
          RowBox[{"{", 
           RowBox[{
            RowBox[{"{", 
             RowBox[{"v1", ",", " ", "1.4", ",", " ", "v"}], "}"}], ",", " ", 
            "0.", ",", " ", "2.5"}], " ", "}"}], "\[IndentingNewLine]", ",", 
          " ", 
          RowBox[{"{", 
           RowBox[{
            RowBox[{"{", 
             RowBox[{"v2", ",", " ", 
              RowBox[{"-", "1."}], ",", " ", 
              RowBox[{
               FormBox[
                FractionBox[
                 RowBox[{"G", " "}], 
                 RowBox[{"4", "\[Mu]"}]],
                TraditionalForm], " ", 
               RowBox[{"(", 
                RowBox[{
                 SubsuperscriptBox["R", "2", "2"], "-", 
                 SubsuperscriptBox["R", "1", "2"]}], ")"}]}]}], "}"}], ",", 
            " ", 
            RowBox[{"-", "3.5"}], ",", " ", "3.5"}], " ", "}"}]}], 
         "\[IndentingNewLine]", "]"}]}], " ", ";", "\[IndentingNewLine]", 
       RowBox[{"Export", "[", 
        RowBox[{"\"\<twoCylindersFig5.flv\>\"", ",", " ", "m2"}], "]"}]}]}], 
     "\[IndentingNewLine]", "]"}], "*)"}]}]}]], "Input",
 CellChangeTimes->{{3.543370761353279*^9, 3.543370883184247*^9}, {
   3.543401476252859*^9, 3.5434014776209373`*^9}, {3.5434018697573667`*^9, 
   3.5434018798729453`*^9}, {3.5434024839384956`*^9, 3.543402485161566*^9}, {
   3.543411315649641*^9, 3.5434114176914773`*^9}, {3.54341350300375*^9, 
   3.543413534852572*^9}, 
   3.543413614382121*^9},ExpressionUUID->"88b661ea-0ec8-4fcb-8be2-\
550d1108bc85"],

Cell[BoxData["\<\"twoCylindersFig5.flv\"\>"], "Output",
 CellChangeTimes->{{3.5433707782422447`*^9, 3.543370807257904*^9}, 
   3.5434013205429535`*^9, 3.543401485062363*^9, 3.5434019167880564`*^9, 
   3.5434025431378813`*^9, 
   3.5434115119168663`*^9},ExpressionUUID->"9b7dcb64-6909-40ff-99c6-\
8ec6ede46e5c"]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"Directory", "[", "]"}]], "Input",
 CellChangeTimes->{{3.54340136787166*^9, 
  3.543401369808771*^9}},ExpressionUUID->"128a6c24-e98f-4bd6-b391-\
70236984d8c9"],

Cell[BoxData["\<\"C:\\\\Users\\\\Peeter\\\\Documents\"\>"], "Output",
 CellChangeTimes->{
  3.543401370990839*^9},ExpressionUUID->"d5e737b4-4a85-4d45-94e6-\
79c3d2bc8b8d"]
}, Open  ]],

Cell[BoxData[
 RowBox[{"(*", 
  RowBox[{
   RowBox[{
    RowBox[{
     RowBox[{"(", 
      RowBox[{
       RowBox[{"r2", "^", "2"}], " ", "-", " ", 
       RowBox[{"r1", "^", "2"}]}], ")"}], " ", 
     RowBox[{"G", "/", 
      RowBox[{"(", 
       RowBox[{"4", " ", "mu"}], ")"}]}]}], "  ", "/.", " ", 
    RowBox[{"{", 
     RowBox[{
      RowBox[{"mu", " ", "\[Rule]", " ", "\[Mu]"}], ",", " ", 
      RowBox[{"r2", " ", "\[Rule]", " ", 
       SubscriptBox["R", "2"]}], ",", " ", 
      RowBox[{"r1", " ", "\[Rule]", " ", 
       SubscriptBox["R", "1"]}]}], "}"}]}], " ", "//", " ", 
   "TraditionalForm"}], "*)"}]], "Input",
 CellChangeTimes->{{3.543411166119088*^9, 3.5434112061463776`*^9}, 
   3.5434115760095325`*^9},ExpressionUUID->"af7f875f-be35-4eb6-9eae-\
b5cadbc53c16"],

Cell[BoxData[
 FormBox["", TraditionalForm]], "Input",
 CellChangeTimes->{{3.543411212873762*^9, 3.5434112376451793`*^9}, 
   3.54341158085281*^9},ExpressionUUID->"871ed746-5a14-4658-a410-\
621dda121dcd"],

Cell[BoxData[{
 RowBox[{"<<", "peeters`"}], "\[IndentingNewLine]", 
 RowBox[{"peeters`setGitDir", "[", 
  "\"\<../project/figures/phy454-continuumechanics\>\"", "]"}]}], "Input",Expr\
essionUUID->"deb35262-291c-4783-bd84-96090d5df323"],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"\[IndentingNewLine]", "\[IndentingNewLine]", "\[IndentingNewLine]", 
  RowBox[{
   RowBox[{"peeters`exportForLatex", "[", 
    RowBox[{"\"\<twoCylinderFig2\>\"", ",", "twoCylinderFig2"}], "]"}], 
   "\[IndentingNewLine]", 
   RowBox[{"peeters`exportForLatex", "[", 
    RowBox[{"\"\<twoCylinderFig4\>\"", ",", "twoCylinderFig4"}], 
    "]"}]}]}]], "Input",
 CellChangeTimes->{{3.888184590746039*^9, 3.888184618941647*^9}, {
  3.8881846569246607`*^9, 3.88818470340875*^9}},
 CellLabel->
  "In[956]:=",ExpressionUUID->"c915a6b6-9d29-479f-87f6-6ee01fd39aa1"],

Cell[BoxData[
 RowBox[{"{", 
  RowBox[{"\<\"twoCylinderFig2.eps\"\>", 
   ",", "\<\"twoCylinderFig2pn.png\"\>"}], "}"}]], "Output",
 CellChangeTimes->{3.888184724530716*^9},
 CellLabel->
  "Out[956]=",ExpressionUUID->"9e958100-3ec4-4d8d-bbab-423d52914c33"],

Cell[BoxData[
 RowBox[{"{", 
  RowBox[{"\<\"twoCylinderFig4.eps\"\>", 
   ",", "\<\"twoCylinderFig4pn.png\"\>"}], "}"}]], "Output",
 CellChangeTimes->{3.8881847249825907`*^9},
 CellLabel->
  "Out[957]=",ExpressionUUID->"ee05e2a6-037f-4d85-a7f6-47e5ae0a016c"]
}, Open  ]]
}, Open  ]]
},
WindowSize->{1584, 765},
WindowMargins->{{18, Automatic}, {Automatic, 21}},
Magnification:>1.5 Inherited,
FrontEndVersion->"12.2 for Mac OS X x86 (64-bit) (December 12, 2020)",
StyleDefinitions->"Default.nb",
ExpressionUUID->"722b627b-3fda-4524-94e3-5ff4a8155373"
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
Cell[1235, 30, 252, 4, 40, "Input",ExpressionUUID->"5925ed5a-534f-4d10-a4cb-9c91afbfe35d"],
Cell[1490, 36, 15695, 347, 2061, "Input",ExpressionUUID->"2db45222-2d86-4391-bdce-c2904440b9bb"],
Cell[CellGroupData[{
Cell[17210, 387, 447, 10, 46, "Input",ExpressionUUID->"3ed48447-13a8-4a4b-b227-87614186596e"],
Cell[17660, 399, 5594, 109, 188, "Output",ExpressionUUID->"80fc31ce-a311-4891-9d36-c1fb92741104"]
}, Open  ]],
Cell[CellGroupData[{
Cell[23291, 513, 249, 4, 101, "Section",ExpressionUUID->"fb1d35d2-8861-4579-bb7d-e1b362d238b8"],
Cell[CellGroupData[{
Cell[23565, 521, 1270, 34, 109, "Input",ExpressionUUID->"1f5ab8de-5dae-4c36-9412-d927a9e7a086"],
Cell[24838, 557, 9244, 167, 296, "Output",ExpressionUUID->"f54cc18d-6812-4e20-acf6-ac4d05153053"]
}, Open  ]],
Cell[CellGroupData[{
Cell[34119, 729, 937, 24, 140, "Input",ExpressionUUID->"0643ab34-fb01-4345-b6f6-ff2361b52372"],
Cell[35059, 755, 253, 4, 52, "Output",ExpressionUUID->"3910176d-b30a-4a75-b60f-e7067d00919e"]
}, Open  ]],
Cell[35327, 762, 3940, 79, 259, "Input",ExpressionUUID->"16976b89-3e2d-43c7-be0d-f32ce4be8123"],
Cell[CellGroupData[{
Cell[39292, 845, 3931, 95, 475, "Input",ExpressionUUID->"88b661ea-0ec8-4fcb-8be2-550d1108bc85"],
Cell[43226, 942, 310, 5, 52, "Output",ExpressionUUID->"9b7dcb64-6909-40ff-99c6-8ec6ede46e5c"]
}, Open  ]],
Cell[CellGroupData[{
Cell[43573, 952, 182, 4, 46, "Input",ExpressionUUID->"128a6c24-e98f-4bd6-b391-70236984d8c9"],
Cell[43758, 958, 171, 3, 52, "Output",ExpressionUUID->"d5e737b4-4a85-4d45-94e6-79c3d2bc8b8d"]
}, Open  ]],
Cell[43944, 964, 781, 22, 46, "Input",ExpressionUUID->"af7f875f-be35-4eb6-9eae-b5cadbc53c16"],
Cell[44728, 988, 204, 4, 41, "Input",ExpressionUUID->"871ed746-5a14-4658-a410-621dda121dcd"],
Cell[44935, 994, 235, 4, 78, "Input",ExpressionUUID->"deb35262-291c-4783-bd84-96090d5df323"],
Cell[CellGroupData[{
Cell[45195, 1002, 579, 12, 171, "Input",ExpressionUUID->"c915a6b6-9d29-479f-87f6-6ee01fd39aa1"],
Cell[45777, 1016, 256, 6, 52, "Output",ExpressionUUID->"9e958100-3ec4-4d8d-bbab-423d52914c33"],
Cell[46036, 1024, 258, 6, 52, "Output",ExpressionUUID->"ee05e2a6-037f-4d85-a7f6-47e5ae0a016c"]
}, Open  ]]
}, Open  ]]
}
]
*)

(* NotebookSignature vvDZ@@FDCYWzcDgoLx#tiDT8 *)
