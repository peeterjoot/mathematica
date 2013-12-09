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
NotebookDataLength[     40431,        918]
NotebookOptionsPosition[     40132,        890]
NotebookOutlinePosition[     40476,        905]
CellTagsIndexPosition[     40433,        902]
WindowFrame->Normal*)

(* Beginning of Notebook Content *)
Notebook[{

Cell[CellGroupData[{
Cell[BoxData[{
 RowBox[{
  RowBox[{"Clear", "[", "s", "]"}], 
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
               RowBox[{"r", ",", " ", "r1", ",", " ", "r2", ",", " ", 
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
               "}"}]}], "]"}], ",", "\[IndentingNewLine]", "Blue", ",", " ", 
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
            "\[IndentingNewLine]", "Red", ",", 
            RowBox[{"Line", "[", 
             RowBox[{"{", 
              RowBox[{
               RowBox[{"{", 
                RowBox[{
                 RowBox[{"-", "5."}], ",", " ", "r1"}], "}"}], ",", 
               RowBox[{"{", 
                RowBox[{"5.", ",", " ", "r1"}], "}"}]}], "}"}], "]"}], ",", 
            "\[IndentingNewLine]", "Green", ",", " ", 
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
     "http://mathematica.stackexchange.com/questions/1669/table-function-with-\
part-call-misbehaving-but-only-after-initial-startup-of-m"], " ", "*)"}], 
  "\[IndentingNewLine]", "]"}], "\[IndentingNewLine]"}], "Input",
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
   3.543414719590335*^9}, 3.543483843683571*^9}],

Cell[BoxData[
 TagBox[
  StyleBox[
   DynamicModuleBox[{$CellContext`r1$$ = 0.3, $CellContext`s2$$ = 
    1.2918285369873044`, $CellContext`v1$$ = 1.4, $CellContext`v2$$ = -1., 
    Typeset`show$$ = True, Typeset`bookmarkList$$ = {}, 
    Typeset`bookmarkMode$$ = "Menu", Typeset`animator$$, Typeset`animvar$$, 
    Typeset`name$$ = "\"untitled\"", Typeset`specs$$ = {{{
       Hold[$CellContext`r1$$], 0.3, 
       Subscript[$CellContext`R, 1]}, 0.01, 2.5}, {{
       Hold[$CellContext`s2$$], 2.1, -Subscript[$CellContext`R, 1] + 
       Subscript[$CellContext`R, 2]}, 1., 2.5}, {{
       Hold[$CellContext`v1$$], 1.4, $CellContext`v}, 0., 2.5}, {{
       Hold[$CellContext`v2$$], -1., ((
         Rational[1, 4] $CellContext`G)/$CellContext`\[Mu]) (-
         Subscript[$CellContext`R, 1]^2 + 
        Subscript[$CellContext`R, 2]^2)}, -3.5, 3.5}}, Typeset`size$$ = {
    360., {45., 48.}}, Typeset`update$$ = 0, Typeset`initDone$$, 
    Typeset`skipInitDone$$ = False, $CellContext`r1$596$$ = 
    0, $CellContext`s2$597$$ = 0, $CellContext`v1$598$$ = 
    0, $CellContext`v2$599$$ = 0}, 
    DynamicBox[Manipulate`ManipulateBoxes[
     1, StandardForm, 
      "Variables" :> {$CellContext`r1$$ = 0.3, $CellContext`s2$$ = 
        2.1, $CellContext`v1$$ = 1.4, $CellContext`v2$$ = -1.}, 
      "ControllerVariables" :> {
        Hold[$CellContext`r1$$, $CellContext`r1$596$$, 0], 
        Hold[$CellContext`s2$$, $CellContext`s2$597$$, 0], 
        Hold[$CellContext`v1$$, $CellContext`v1$598$$, 0], 
        Hold[$CellContext`v2$$, $CellContext`v2$599$$, 0]}, 
      "OtherVariables" :> {
       Typeset`show$$, Typeset`bookmarkList$$, Typeset`bookmarkMode$$, 
        Typeset`animator$$, Typeset`animvar$$, Typeset`name$$, 
        Typeset`specs$$, Typeset`size$$, Typeset`update$$, Typeset`initDone$$,
         Typeset`skipInitDone$$}, "Body" :> Show[
        ReleaseHold[
         $CellContext`s[$CellContext`v1$$, $CellContext`v2$$, \
$CellContext`r1$$, $CellContext`r1$$ + $CellContext`s2$$]]], 
      "Specifications" :> {{{$CellContext`r1$$, 0.3, 
          Subscript[$CellContext`R, 1]}, 0.01, 
         2.5}, {{$CellContext`s2$$, 2.1, -Subscript[$CellContext`R, 1] + 
          Subscript[$CellContext`R, 2]}, 1., 
         2.5}, {{$CellContext`v1$$, 1.4, $CellContext`v}, 0., 
         2.5}, {{$CellContext`v2$$, -1., ((
            Rational[1, 4] $CellContext`G)/$CellContext`\[Mu]) (-
            Subscript[$CellContext`R, 1]^2 + 
           Subscript[$CellContext`R, 2]^2)}, -3.5, 3.5}}, "Options" :> {}, 
      "DefaultOptions" :> {}],
     ImageSizeCache->{409., {135., 140.}},
     SingleEvaluation->True],
    Deinitialization:>None,
    DynamicModuleValues:>{},
    Initialization:>({$CellContext`s[
         Pattern[$CellContext`v1, 
          Blank[]], 
         Pattern[$CellContext`v2, 
          Blank[]], 
         Pattern[$CellContext`r1, 
          Blank[]], 
         Pattern[$CellContext`r2, 
          Blank[]]] := HoldForm[
         Module[{$CellContext`w, $CellContext`width, $CellContext`d, \
$CellContext`plot, $CellContext`g}, $CellContext`w[
             Pattern[$CellContext`rr, 
              Blank[]], 
             Pattern[$CellContext`vv1, 
              Blank[]], 
             Pattern[$CellContext`vv2, 
              Blank[]], 
             Pattern[$CellContext`rr1, 
              Blank[]], 
             Pattern[$CellContext`rr2, 
              Blank[]]] = 
           Module[{$CellContext`rd, $CellContext`gOver4mu}, $CellContext`rd = \
$CellContext`rr2^2 - $CellContext`rr1^2; $CellContext`gOver4mu = \
$CellContext`vv2/$CellContext`rd; $CellContext`gOver4mu ($CellContext`rr2^2 - \
$CellContext`rr^2) + ($CellContext`vv1 - $CellContext`vv2) (
                Log[$CellContext`rr/$CellContext`r2]/
                Log[$CellContext`rr1/$CellContext`rr2])]; $CellContext`width = 
           2.5; $CellContext`d = $CellContext`r1 + ($CellContext`r2 - \
$CellContext`r1)/5; $CellContext`plot = ParametricPlot[{
              $CellContext`w[$CellContext`r, $CellContext`v1, \
$CellContext`v2, $CellContext`r1, $CellContext`r2], $CellContext`r}, \
{$CellContext`r, $CellContext`r1, $CellContext`r2}, Axes -> None, 
             PlotRange -> {{-$CellContext`width, $CellContext`width}, \
{$CellContext`r1, $CellContext`r2}}]; {$CellContext`plot, 
            Graphics[{
              Arrowheads[Medium], 
              Table[
               Arrow[{{0, $CellContext`r}, {
                  $CellContext`w[$CellContext`r, $CellContext`v1, \
$CellContext`v2, $CellContext`r1, $CellContext`r2], $CellContext`r}}], \
{$CellContext`r, $CellContext`r1, $CellContext`r2, ($CellContext`r2 - \
$CellContext`r1)/10.}], Black, 
              Line[{{0, $CellContext`r1}, {0, $CellContext`r2}}], 
              Text[
               Style[
                Style["v", Italic], Bold, 18], {-$CellContext`width + 
                0.3, $CellContext`d}], Blue, 
              
              Arrow[{{-$CellContext`width + 
                 0.4, $CellContext`d}, {-$CellContext`width + 
                 0.9, $CellContext`d}}], 
              Thickness[0.025], Red, 
              Line[{{-5., $CellContext`r1}, {5., $CellContext`r1}}], Green, 
              Line[{{-5., $CellContext`r2}, {5., $CellContext`r2}}], 
              Null}]}]], Attributes[Subscript] = {NHoldRest}}; 
     Typeset`initDone$$ = True),
    SynchronousInitialization->True,
    UnsavedVariables:>{Typeset`initDone$$},
    UntrackedVariables:>{Typeset`size$$}], "Manipulate",
   Deployed->True,
   StripOnInput->False],
  Manipulate`InterpretManipulate[1]]], "Output",
 CellChangeTimes->{
  3.543410151312044*^9, 3.5434101967946463`*^9, 3.5434102651495557`*^9, 
   3.5434103563707733`*^9, 3.543411258752386*^9, 3.5434135679964676`*^9, {
   3.5434144662668457`*^9, 3.5434144870830364`*^9}, 3.5434146683354034`*^9}]
}, Open  ]],

Cell[CellGroupData[{

Cell["\<\
Misc stuff for generating figures and animations.\
\>", "Section",
 CellChangeTimes->{{3.543414510964402*^9, 3.5434145323616257`*^9}, {
  3.5434145676826468`*^9, 3.5434145695867553`*^9}}],

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
        RowBox[{"r1", "+", "s2"}]}], "]"}], "]"}], "]"}]}], "]"}]}]], "Input",
 GeneratedCell->False,
 CellAutoOverwrite->False,
 CellChangeTimes->{
  3.5434107967249603`*^9, {3.5434108708331985`*^9, 3.543410872185276*^9}}],

Cell[BoxData[
 DynamicModuleBox[{$CellContext`r1$$ = 0.335, $CellContext`s2$$ = 
  2.5, $CellContext`v1$$ = 0.525, $CellContext`v2$$ = -0.54}, 
  GraphicsBox[{{{}, {}, 
     {Hue[0.67, 0.6, 0.6], LineBox[CompressedData["
1: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
eRGd+D/MhcMK
       "]]}}, 
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
       StyleBox[
        StyleBox["\<\"v\"\>",
         StripOnInput->False,
         FontSlant->Italic],
        StripOnInput->False,
        FontSize->18,
        FontWeight->Bold], {-2.2, 0.835}]}, 
     {RGBColor[0, 0, 1], ArrowBox[{{-2.1, 0.835}, {-1.6, 0.835}}]}, 
     {RGBColor[1, 0, 0], Thickness[0.025], 
      LineBox[{{-5., 0.335}, {5., 0.335}}], 
      {RGBColor[0, 1, 0], LineBox[{{-5., 2.835}, {5., 2.835}}]}}}},
   Axes->None,
   AxesOrigin->{0, 0.5},
   PlotRange->{{-2.5, 2.5}, {0.335, 2.835}},
   PlotRangeClipping->True,
   PlotRangePadding->{Automatic, Automatic}],
  DynamicModuleValues:>{}]], "Output",
 CellChangeTimes->{{3.5434108057894783`*^9, 3.543410835437174*^9}}]
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
   3.5434108813027973`*^9}, 3.543413589056672*^9}],

Cell[BoxData["\<\"twoCylinderFig4.png\"\>"], "Output",
 CellChangeTimes->{{3.543370611382701*^9, 3.543370635751095*^9}, 
   3.543401465369237*^9, 3.5434108331170416`*^9, 3.543410883979951*^9}]
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
        FontWeight->Bold], {-2.2, 1.6248938110351565`}]}, 
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
 CellChangeTimes->{3.543369149987114*^9}],

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
   3.543413534852572*^9}, 3.543413614382121*^9}],

Cell[BoxData["\<\"twoCylindersFig5.flv\"\>"], "Output",
 CellChangeTimes->{{3.5433707782422447`*^9, 3.543370807257904*^9}, 
   3.5434013205429535`*^9, 3.543401485062363*^9, 3.5434019167880564`*^9, 
   3.5434025431378813`*^9, 3.5434115119168663`*^9}]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"Directory", "[", "]"}]], "Input",
 CellChangeTimes->{{3.54340136787166*^9, 3.543401369808771*^9}}],

Cell[BoxData["\<\"C:\\\\Users\\\\Peeter\\\\Documents\"\>"], "Output",
 CellChangeTimes->{3.543401370990839*^9}]
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
   3.5434115760095325`*^9}],

Cell[BoxData[
 FormBox["", TraditionalForm]], "Input",
 CellChangeTimes->{{3.543411212873762*^9, 3.5434112376451793`*^9}, 
   3.54341158085281*^9}]
}, Open  ]]
},
WindowSize->{1584, 765},
WindowMargins->{{18, Automatic}, {Automatic, 21}},
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
Cell[1257, 32, 14191, 313, 1044, "Input"],
Cell[15451, 347, 5807, 117, 292, "Output"]
}, Open  ]],
Cell[CellGroupData[{
Cell[21295, 469, 197, 4, 71, "Section"],
Cell[CellGroupData[{
Cell[21517, 477, 1071, 29, 72, "Input"],
Cell[22591, 508, 7212, 127, 195, "Output"]
}, Open  ]],
Cell[CellGroupData[{
Cell[29840, 640, 876, 22, 92, "Input"],
Cell[30719, 664, 192, 2, 30, "Output"]
}, Open  ]],
Cell[30926, 669, 3881, 77, 174, "Input"],
Cell[CellGroupData[{
Cell[34832, 750, 3870, 93, 307, "Input"],
Cell[38705, 845, 249, 3, 30, "Output"]
}, Open  ]],
Cell[CellGroupData[{
Cell[38991, 853, 122, 2, 31, "Input"],
Cell[39116, 857, 111, 1, 30, "Output"]
}, Open  ]],
Cell[39242, 861, 724, 21, 31, "Input"],
Cell[39969, 884, 147, 3, 30, "Input"]
}, Open  ]]
}
]
*)

(* End of internal cache information *)

(* NotebookSignature 3wTcJlBOhEfg7B1Lb1u3CsNb *)
