(* Content-type: application/vnd.wolfram.cdf.text *)

(*** Wolfram CDF File ***)
(* http://www.wolfram.com/cdf *)

(* CreatedBy='Mathematica 9.0' *)

(*************************************************************************)
(*                                                                       *)
(*  The Mathematica License under which this file was created prohibits  *)
(*  restricting third parties in receipt of this file from republishing  *)
(*  or redistributing it by any means, including but not limited to      *)
(*  rights management or terms of use, without the express consent of    *)
(*  Wolfram Research, Inc. For additional information concerning CDF     *)
(*  licensing and redistribution see:                                    *)
(*                                                                       *)
(*        www.wolfram.com/cdf/adopting-cdf/licensing-options.html        *)
(*                                                                       *)
(*************************************************************************)

(*CacheID: 234*)
(* Internal cache information:
NotebookFileLineBreakTest
NotebookFileLineBreakTest
NotebookDataPosition[      1063,         20]
NotebookDataLength[     19303,        456]
NotebookOptionsPosition[     19887,        453]
NotebookOutlinePosition[     20230,        468]
CellTagsIndexPosition[     20187,        465]
WindowFrame->Normal*)

(* Beginning of Notebook Content *)
Notebook[{

Cell[CellGroupData[{
Cell[BoxData[
 RowBox[{
  RowBox[{"Manipulate", "[", "\[IndentingNewLine]", 
   RowBox[{"(*", " ", 
    RowBox[{
     RowBox[{"for", " ", "k", " ", "r"}], " ", "=", " ", 
     RowBox[{"1", " ", 
      RowBox[{"overlay", ":", " ", "see", ":", " ", 
       RowBox[{
        RowBox[{
         ButtonBox[
          RowBox[{
           RowBox[{"http", ":"}], "//", 
           RowBox[{
            RowBox[{
             RowBox[{
              RowBox[{"mathematica", ".", "stackexchange", ".", "com"}], "/", 
              "q"}], "/", "41774"}], "/", "10"}]}],
          BaseStyle->"Hyperlink",
          ButtonData->{
            URL["http://mathematica.stackexchange.com/q/41774/10"], None},
          ButtonNote->"http://mathematica.stackexchange.com/q/41774/10"], " ",
          "..."}], " ", 
        RowBox[{"halirutan", "'"}], "s", " ", "comment"}]}]}]}], " ", "*)"}], 
   "\[IndentingNewLine]", "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{"Column", "[", 
     RowBox[{"{", "\[IndentingNewLine]", "  ", 
      RowBox[{
       RowBox[{"Row", "[", 
        RowBox[{"{", 
         RowBox[{
          RowBox[{"fLabels", "[", 
           RowBox[{"[", "fIndex", "]"}], "]"}], ",", " ", "\"\<(k, r) = \>\"",
           ",", " ", 
          RowBox[{"TraditionalForm", "[", 
           RowBox[{
            RowBox[{"functions", "[", 
             RowBox[{"[", "fIndex", "]"}], "]"}], "[", 
            RowBox[{"k", ",", " ", "r"}], "]"}], "]"}]}], "}"}], "]"}], ",", 
       "\[IndentingNewLine]", 
       RowBox[{"With", "[", 
        RowBox[{
         RowBox[{"{", " ", 
          RowBox[{
           RowBox[{"krmin", " ", "=", " ", "0.01"}], ",", 
           RowBox[{"which", "=", " ", 
            RowBox[{"{", 
             RowBox[{"Re", ",", " ", "Im"}], "}"}]}]}], "}"}], ",", 
         "\[IndentingNewLine]", 
         RowBox[{"Plot3D", "[", " ", 
          RowBox[{
           RowBox[{
            RowBox[{"which", "[", 
             RowBox[{"[", "whichIndex", "]"}], "]"}], "[", 
            RowBox[{
             RowBox[{"functions", "[", 
              RowBox[{"[", "fIndex", "]"}], "]"}], "[", 
             RowBox[{"k", ",", " ", "r"}], "]"}], "]"}], ",", 
           RowBox[{"{", 
            RowBox[{"k", ",", "krmin", ",", " ", "kmax"}], "}"}], ",", " ", 
           RowBox[{"{", 
            RowBox[{"r", ",", "krmin", ",", " ", "rmax"}], "}"}], ",", " ", 
           RowBox[{"AxesLabel", " ", "\[Rule]", " ", 
            RowBox[{"{", 
             RowBox[{"k", ",", " ", "r"}], "}"}]}], ",", " ", 
           RowBox[{"PlotRange", " ", "\[Rule]", " ", 
            RowBox[{"{", 
             RowBox[{"lower", ",", " ", "upper"}], "}"}]}], ",", 
           "\[IndentingNewLine]", 
           RowBox[{"MeshFunctions", "\[Rule]", 
            RowBox[{"{", 
             RowBox[{
              RowBox[{"#1", "#2"}], "&"}], 
             RowBox[{"(*", 
              RowBox[{",", " ", 
               RowBox[{
                RowBox[{"#1", "#2"}], "&"}], ",", " ", 
               RowBox[{
                RowBox[{"#1", "#2"}], "&"}]}], "*)"}], "}"}]}], ",", 
           "\[IndentingNewLine]", 
           RowBox[{"Mesh", "\[Rule]", 
            RowBox[{"{", 
             RowBox[{"{", "1", 
              RowBox[{"(*", 
               RowBox[{",", " ", "5", ",", " ", "10"}], "*)"}], "}"}], 
             "}"}]}], ",", "\[IndentingNewLine]", 
           RowBox[{"MeshStyle", "\[Rule]", "Thick"}]}], "\[IndentingNewLine]",
           "]"}]}], " ", "]"}]}], "\[IndentingNewLine]", "}"}], "]"}], 
    "\[IndentingNewLine]", ",", 
    RowBox[{"{", 
     RowBox[{
      RowBox[{"{", 
       RowBox[{"whichIndex", ",", " ", "1", ",", " ", "\"\<\>\""}], "}"}], 
      ",", " ", 
      RowBox[{"{", 
       RowBox[{
        RowBox[{"1", "\[Rule]", "\"\<Re\>\""}], ",", 
        RowBox[{"2", "\[Rule]", "\"\<Im\>\""}]}], "}"}]}], "}"}], 
    "\[IndentingNewLine]", ",", 
    RowBox[{"{", 
     RowBox[{
      RowBox[{"{", 
       RowBox[{"fIndex", ",", " ", "1", ",", " ", "\"\<f(r,k)\>\""}], "}"}], 
      ",", " ", 
      RowBox[{
       RowBox[{
        RowBox[{"#1", "\[Rule]", " ", 
         RowBox[{"fLabels", "[", 
          RowBox[{"[", "#1", "]"}], "]"}]}], "  ", "&"}], "  ", "/@", 
       RowBox[{"Range", "[", "6", "]"}]}]}], " ", "}"}], 
    "\[IndentingNewLine]", ",", " ", 
    RowBox[{"{", 
     RowBox[{
      RowBox[{"{", 
       RowBox[{"upper", ",", " ", "5", ",", " ", "\"\<Upper\>\""}], "}"}], 
      ",", " ", "0", ",", " ", "20", ",", " ", 
      RowBox[{"Appearance", "->", "\"\<Labeled\>\""}]}], "}"}], 
    "\[IndentingNewLine]", ",", " ", 
    RowBox[{"{", 
     RowBox[{
      RowBox[{"{", 
       RowBox[{"lower", ",", " ", 
        RowBox[{"-", "5"}], ",", " ", "\"\<Lower\>\""}], "}"}], ",", " ", "0",
       ",", " ", 
      RowBox[{"-", "20"}], ",", " ", 
      RowBox[{"Appearance", "->", "\"\<Labeled\>\""}]}], "}"}], 
    "\[IndentingNewLine]", ",", " ", 
    RowBox[{"{", 
     RowBox[{
      RowBox[{"{", 
       RowBox[{"kmax", ",", " ", "5", ",", " ", "\"\<k max\>\""}], "}"}], ",",
       " ", "0", ",", " ", "20", ",", " ", 
      RowBox[{"Appearance", "->", "\"\<Labeled\>\""}]}], "}"}], 
    "\[IndentingNewLine]", ",", " ", 
    RowBox[{"{", 
     RowBox[{
      RowBox[{"{", 
       RowBox[{"rmax", ",", " ", "5", ",", " ", "\"\<r max\>\""}], "}"}], ",",
       " ", "0", ",", " ", "20", ",", " ", 
      RowBox[{"Appearance", "->", "\"\<Labeled\>\""}]}], "}"}], 
    "\[IndentingNewLine]", ",", " ", 
    RowBox[{"Initialization", "\[RuleDelayed]", " ", 
     RowBox[{"{", "\[IndentingNewLine]", 
      RowBox[{
       RowBox[{
        RowBox[{"hPhi", "[", 
         RowBox[{"k_", ",", " ", "r_"}], "]"}], " ", "=", " ", 
        RowBox[{"I", " ", "k", " ", 
         RowBox[{"(", 
          RowBox[{"1", " ", "+", " ", 
           RowBox[{"1", "/", 
            RowBox[{"(", 
             RowBox[{"I", " ", "k", " ", "r"}], ")"}]}]}], ")"}], " ", 
         RowBox[{
          RowBox[{"(", 
           RowBox[{"E", "^", 
            RowBox[{"(", 
             RowBox[{
              RowBox[{"-", " ", "I"}], " ", "k", " ", "r"}], ")"}]}], ")"}], 
          "/", "r"}]}]}], "   ", ";", "\[IndentingNewLine]", 
       RowBox[{
        RowBox[{"eR", "[", 
         RowBox[{"k_", ",", " ", "r_"}], "]"}], " ", "=", "  ", 
        RowBox[{
         RowBox[{"(", 
          RowBox[{"1", " ", "+", " ", 
           RowBox[{"1", "/", 
            RowBox[{"(", 
             RowBox[{"I", " ", "k", " ", "r"}], ")"}]}]}], ")"}], " ", 
         RowBox[{
          RowBox[{"(", 
           RowBox[{"E", "^", 
            RowBox[{"(", 
             RowBox[{
              RowBox[{"-", " ", "I"}], " ", "k", " ", "r"}], ")"}]}], ")"}], 
          "/", 
          RowBox[{"r", "^", "2"}]}]}]}], "   ", ";", "\[IndentingNewLine]", 
       RowBox[{
        RowBox[{"eTheta", "[", 
         RowBox[{"k_", ",", " ", "r_"}], "]"}], " ", "=", " ", 
        RowBox[{"I", " ", "k", " ", 
         RowBox[{"(", 
          RowBox[{"1", " ", "+", " ", 
           RowBox[{"1", "/", 
            RowBox[{"(", 
             RowBox[{"I", " ", "k", " ", "r"}], ")"}]}], " ", "-", " ", 
           RowBox[{"1", "/", 
            RowBox[{
             RowBox[{"(", 
              RowBox[{"k", " ", "r"}], ")"}], "^", "2"}]}]}], " ", ")"}], " ", 
         RowBox[{
          RowBox[{"(", 
           RowBox[{"E", "^", 
            RowBox[{"(", 
             RowBox[{
              RowBox[{"-", " ", "I"}], " ", "k", " ", "r"}], ")"}]}], ")"}], 
          "/", "r"}]}]}], "   ", ";", "\[IndentingNewLine]", 
       RowBox[{
        RowBox[{"wR", "[", 
         RowBox[{"k_", ",", " ", "r_"}], "]"}], " ", "=", "  ", 
        RowBox[{
         RowBox[{"(", 
          RowBox[{"1", " ", "-", " ", 
           RowBox[{"I", "/", 
            RowBox[{
             RowBox[{"(", " ", 
              RowBox[{"k", " ", "r"}], ")"}], "^", "3"}]}]}], ")"}], " ", "/", 
         RowBox[{"r", "^", "2"}]}]}], "   ", ";", "\[IndentingNewLine]", 
       RowBox[{
        RowBox[{"wTheta", "[", 
         RowBox[{"k_", ",", " ", "r_"}], "]"}], " ", "=", " ", 
        RowBox[{"I", " ", "k", " ", 
         RowBox[{
          RowBox[{"(", 
           RowBox[{"1", " ", "+", " ", 
            RowBox[{"1", "/", 
             RowBox[{
              RowBox[{"(", " ", 
               RowBox[{"k", " ", "r"}], ")"}], "^", "2"}]}]}], ")"}], " ", 
          "/", 
          RowBox[{"r", "^", "3"}]}]}]}], " ", ";", "  ", 
       "\[IndentingNewLine]", 
       RowBox[{
        RowBox[{"pAv", "[", 
         RowBox[{"k_", ",", " ", "r_"}], "]"}], " ", "=", " ", 
        RowBox[{
         RowBox[{"k", "^", "2"}], " ", 
         RowBox[{"(", 
          RowBox[{"1", " ", "-", 
           RowBox[{"I", "/", 
            RowBox[{
             RowBox[{"(", " ", 
              RowBox[{"k", " ", "r"}], ")"}], "^", "3"}]}]}], ")"}]}]}], " ", 
       ";", "\[IndentingNewLine]", 
       RowBox[{"functions", " ", "=", " ", 
        RowBox[{"{", 
         RowBox[{
         "hPhi", ",", " ", "eR", ",", " ", "eTheta", ",", " ", "wR", ",", " ",
           "wTheta", ",", " ", "pAv"}], "}"}]}], " ", ";", 
       "\[IndentingNewLine]", 
       RowBox[{"fLabels", " ", "=", " ", 
        RowBox[{"{", 
         RowBox[{
         "\"\<\!\(\*SubscriptBox[\(H\), \(\[Phi]\)]\)\>\"", ",", " ", 
          "\"\<\!\(\*SubscriptBox[\(E\), \(r\)]\)\>\"", ",", 
          "\"\<\!\(\*SubscriptBox[\(E\), \(\[Theta]\)]\)\>\"", ",", 
          "\"\<\!\(\*SubscriptBox[\(W\), \(r\)]\)\>\"", ",", 
          "\"\<\!\(\*SubscriptBox[\(W\), \(\[Theta]\)]\)\>\"", ",", " ", 
          "\"\<\!\(\*SubscriptBox[\(P\), \(av\)]\)\>\""}], "}"}]}], " ", 
       ";"}], "\[IndentingNewLine]", "}"}]}]}], 
   RowBox[{"(*", "\[IndentingNewLine]", 
    RowBox[{",", " ", 
     RowBox[{"SaveDefinitions", "\[Rule]", "True"}]}], "*)"}], 
   "\[IndentingNewLine]", "]"}], "\[IndentingNewLine]", 
  "\[IndentingNewLine]"}]], "Input",
 CellChangeTimes->{{3.6323543281210485`*^9, 3.632354355485614*^9}, {
   3.6323543899295835`*^9, 3.63235439003959*^9}, {3.6323544645488515`*^9, 
   3.632354631382394*^9}, {3.632354726369827*^9, 3.6323547931186447`*^9}, {
   3.6323548325248985`*^9, 3.6323548746743097`*^9}, {3.6323549118034334`*^9, 
   3.6323550137372637`*^9}, {3.6323550441100006`*^9, 
   3.6323550527494946`*^9}, {3.6323550940428567`*^9, 3.632355161186697*^9}, {
   3.6323553449472075`*^9, 3.632355376615019*^9}, {3.632357775187209*^9, 
   3.6323578042888737`*^9}, {3.6323578780660934`*^9, 3.632357919996492*^9}, {
   3.6323579606708183`*^9, 3.6323579622819104`*^9}, {3.632358005304371*^9, 
   3.632358028972725*^9}, {3.632358107878238*^9, 3.632358107950242*^9}, {
   3.632358155934987*^9, 3.632358185747692*^9}, {3.632358283670293*^9, 
   3.63235829306183*^9}, {3.6323583445127726`*^9, 3.632358354818362*^9}, {
   3.63235847821242*^9, 3.632358479901517*^9}, {3.632358775680434*^9, 
   3.63235878295085*^9}, {3.632359270613743*^9, 3.6323593345463996`*^9}, {
   3.63235938158709*^9, 3.6323595613773737`*^9}, {3.632359652439582*^9, 
   3.632359722652598*^9}, {3.6323598512699547`*^9, 3.632360116341116*^9}, {
   3.6323602060122447`*^9, 3.632360347964364*^9}, {3.632360415260213*^9, 
   3.632360531578866*^9}, {3.6323605700350657`*^9, 3.632360575501378*^9}, {
   3.6323606402130795`*^9, 3.6323609292886133`*^9}, {3.6323609604813976`*^9, 
   3.6323611581077013`*^9}, {3.632361468211438*^9, 3.6323615092427855`*^9}, {
   3.6323615472379584`*^9, 3.6323615823299656`*^9}, {3.632361626557495*^9, 
   3.6323616903831453`*^9}, {3.6323617245060973`*^9, 
   3.6323618379265847`*^9}, {3.6323618730835953`*^9, 3.6323618763967853`*^9}, 
   3.632362013693638*^9, {3.6323620787393584`*^9, 3.632362113704358*^9}, {
   3.6323623323593636`*^9, 3.632362345424111*^9}}],

Cell[BoxData[
 TagBox[
  StyleBox[
   DynamicModuleBox[{$CellContext`fIndex$$ = 3, $CellContext`kmax$$ = 
    8.040000000000001, $CellContext`lower$$ = -10.1, $CellContext`rmax$$ = 
    5, $CellContext`upper$$ = 8.68, $CellContext`whichIndex$$ = 1, 
    Typeset`show$$ = True, Typeset`bookmarkList$$ = {}, 
    Typeset`bookmarkMode$$ = "Menu", Typeset`animator$$, Typeset`animvar$$ = 
    1, Typeset`name$$ = "\"untitled\"", Typeset`specs$$ = {{{
       Hold[$CellContext`whichIndex$$], 1, ""}, {1 -> "Re", 2 -> "Im"}}, {{
       Hold[$CellContext`fIndex$$], 1, "f(r,k)"}, {
      1 -> "\!\(\*SubscriptBox[\(H\), \(\[Phi]\)]\)", 2 -> 
       "\!\(\*SubscriptBox[\(E\), \(r\)]\)", 3 -> 
       "\!\(\*SubscriptBox[\(E\), \(\[Theta]\)]\)", 4 -> 
       "\!\(\*SubscriptBox[\(W\), \(r\)]\)", 5 -> 
       "\!\(\*SubscriptBox[\(W\), \(\[Theta]\)]\)", 6 -> 
       "\!\(\*SubscriptBox[\(P\), \(av\)]\)"}}, {{
       Hold[$CellContext`upper$$], 5, "Upper"}, 0, 20}, {{
       Hold[$CellContext`lower$$], -5, "Lower"}, 0, -20}, {{
       Hold[$CellContext`kmax$$], 5, "k max"}, 0, 20}, {{
       Hold[$CellContext`rmax$$], 5, "r max"}, 0, 20}}, Typeset`size$$ = {
    283., {122., 129.}}, Typeset`update$$ = 0, Typeset`initDone$$, 
    Typeset`skipInitDone$$ = False, $CellContext`whichIndex$63452$$ = 
    False, $CellContext`fIndex$63453$$ = False, $CellContext`upper$63454$$ = 
    0, $CellContext`lower$63455$$ = 0, $CellContext`kmax$63456$$ = 
    0, $CellContext`rmax$63457$$ = 0}, 
    DynamicBox[Manipulate`ManipulateBoxes[
     1, StandardForm, 
      "Variables" :> {$CellContext`fIndex$$ = 1, $CellContext`kmax$$ = 
        5, $CellContext`lower$$ = -5, $CellContext`rmax$$ = 
        5, $CellContext`upper$$ = 5, $CellContext`whichIndex$$ = 1}, 
      "ControllerVariables" :> {
        Hold[$CellContext`whichIndex$$, $CellContext`whichIndex$63452$$, 
         False], 
        Hold[$CellContext`fIndex$$, $CellContext`fIndex$63453$$, False], 
        Hold[$CellContext`upper$$, $CellContext`upper$63454$$, 0], 
        Hold[$CellContext`lower$$, $CellContext`lower$63455$$, 0], 
        Hold[$CellContext`kmax$$, $CellContext`kmax$63456$$, 0], 
        Hold[$CellContext`rmax$$, $CellContext`rmax$63457$$, 0]}, 
      "OtherVariables" :> {
       Typeset`show$$, Typeset`bookmarkList$$, Typeset`bookmarkMode$$, 
        Typeset`animator$$, Typeset`animvar$$, Typeset`name$$, 
        Typeset`specs$$, Typeset`size$$, Typeset`update$$, Typeset`initDone$$,
         Typeset`skipInitDone$$}, "Body" :> Column[{
         Row[{
           Part[$CellContext`fLabels, $CellContext`fIndex$$], "(k, r) = ", 
           TraditionalForm[
            
            Part[$CellContext`functions, \
$CellContext`fIndex$$][$CellContext`k, $CellContext`r]]}], 
         With[{$CellContext`krmin$ = 0.01, $CellContext`which$ = {Re, Im}}, 
          Plot3D[
           Part[$CellContext`which$, $CellContext`whichIndex$$][
            
            Part[$CellContext`functions, \
$CellContext`fIndex$$][$CellContext`k, $CellContext`r]], {$CellContext`k, \
$CellContext`krmin$, $CellContext`kmax$$}, {$CellContext`r, \
$CellContext`krmin$, $CellContext`rmax$$}, 
           AxesLabel -> {$CellContext`k, $CellContext`r}, 
           PlotRange -> {$CellContext`lower$$, $CellContext`upper$$}, 
           MeshFunctions -> {# #2& }, Mesh -> {{1}}, MeshStyle -> Thick]]}], 
      "Specifications" :> {{{$CellContext`whichIndex$$, 1, ""}, {
         1 -> "Re", 2 -> "Im"}}, {{$CellContext`fIndex$$, 1, "f(r,k)"}, {
         1 -> "\!\(\*SubscriptBox[\(H\), \(\[Phi]\)]\)", 2 -> 
          "\!\(\*SubscriptBox[\(E\), \(r\)]\)", 3 -> 
          "\!\(\*SubscriptBox[\(E\), \(\[Theta]\)]\)", 4 -> 
          "\!\(\*SubscriptBox[\(W\), \(r\)]\)", 5 -> 
          "\!\(\*SubscriptBox[\(W\), \(\[Theta]\)]\)", 6 -> 
          "\!\(\*SubscriptBox[\(P\), \(av\)]\)"}}, {{$CellContext`upper$$, 5, 
          "Upper"}, 0, 20, Appearance -> 
         "Labeled"}, {{$CellContext`lower$$, -5, "Lower"}, 0, -20, Appearance -> 
         "Labeled"}, {{$CellContext`kmax$$, 5, "k max"}, 0, 20, Appearance -> 
         "Labeled"}, {{$CellContext`rmax$$, 5, "r max"}, 0, 20, Appearance -> 
         "Labeled"}}, "Options" :> {}, "DefaultOptions" :> {}],
     ImageSizeCache->{433., {275., 282.}},
     SingleEvaluation->True],
    Deinitialization:>None,
    DynamicModuleValues:>{},
    Initialization:>({$CellContext`hPhi[
          Pattern[$CellContext`k, 
           Blank[]], 
          Pattern[$CellContext`r, 
           Blank[]]] = ((I $CellContext`k) (1 + 
           1/((I $CellContext`k) $CellContext`r))) (
          E^(((-I) $CellContext`k) $CellContext`r)/$CellContext`r); \
$CellContext`eR[
          Pattern[$CellContext`k, 
           Blank[]], 
          Pattern[$CellContext`r, 
           Blank[]]] = (1 + 1/((I $CellContext`k) $CellContext`r)) (
          E^(((-I) $CellContext`k) $CellContext`r)/$CellContext`r^2); \
$CellContext`eTheta[
          Pattern[$CellContext`k, 
           Blank[]], 
          Pattern[$CellContext`r, 
           Blank[]]] = ((I $CellContext`k) (1 + 
           1/((I $CellContext`k) $CellContext`r) - 
           1/($CellContext`k $CellContext`r)^2)) (
          E^(((-I) $CellContext`k) $CellContext`r)/$CellContext`r); \
$CellContext`wR[
          Pattern[$CellContext`k, 
           Blank[]], 
          Pattern[$CellContext`r, 
           Blank[]]] = (1 - 
          I/($CellContext`k $CellContext`r)^3)/$CellContext`r^2; \
$CellContext`wTheta[
          Pattern[$CellContext`k, 
           Blank[]], 
          Pattern[$CellContext`r, 
           Blank[]]] = (
          I $CellContext`k) ((1 + 
           1/($CellContext`k $CellContext`r)^2)/$CellContext`r^3); \
$CellContext`pAv[
          Pattern[$CellContext`k, 
           Blank[]], 
          Pattern[$CellContext`r, 
           Blank[]]] = $CellContext`k^2 (1 - 
          I/($CellContext`k $CellContext`r)^3); $CellContext`functions = \
{$CellContext`hPhi, $CellContext`eR, $CellContext`eTheta, $CellContext`wR, \
$CellContext`wTheta, $CellContext`pAv}; $CellContext`fLabels = {
         "\!\(\*SubscriptBox[\(H\), \(\[Phi]\)]\)", 
          "\!\(\*SubscriptBox[\(E\), \(r\)]\)", 
          "\!\(\*SubscriptBox[\(E\), \(\[Theta]\)]\)", 
          "\!\(\*SubscriptBox[\(W\), \(r\)]\)", 
          "\!\(\*SubscriptBox[\(W\), \(\[Theta]\)]\)", 
          "\!\(\*SubscriptBox[\(P\), \(av\)]\)"}; Null}; 
     Typeset`initDone$$ = True),
    SynchronousInitialization->True,
    UnsavedVariables:>{Typeset`initDone$$},
    UntrackedVariables:>{Typeset`size$$}], "Manipulate",
   Deployed->True,
   StripOnInput->False],
  Manipulate`InterpretManipulate[1]]], "Output",
 CellChangeTimes->{3.6323621152794485`*^9}]
}, Open  ]]
},
WindowSize->{1584, 765},
WindowMargins->{{0, Automatic}, {Automatic, 0}},
FrontEndVersion->"9.0 for Microsoft Windows (64-bit) (January 25, 2013)",
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
Cell[1485, 35, 11701, 280, 823, "Input"],
Cell[13189, 317, 6682, 133, 579, "Output"]
}, Open  ]]
}
]
*)

(* End of internal cache information *)

(* NotebookSignature Ewp@ncuGUncQ8A1dDC91UBtY *)
