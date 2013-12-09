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
NotebookDataLength[     18320,        413]
NotebookOptionsPosition[     18487,        401]
NotebookOutlinePosition[     18829,        416]
CellTagsIndexPosition[     18786,        413]
WindowFrame->Normal*)

(* Beginning of Notebook Content *)
Notebook[{

Cell[CellGroupData[{
Cell[BoxData[
 RowBox[{
  RowBox[{"(*", 
   RowBox[{"Clear", "[", 
    RowBox[{
    "y", ",", " ", "p0", ",", " ", "pf", ",", " ", "n", ",", " ", "p", ",", 
     " ", "q", ",", " ", "i", ",", " ", "theta", ",", " ", "x", ",", " ", 
     "x1", ",", " ", "y1", ",", " ", "x2", ",", " ", "y2", ",", " ", "deltaX",
      ",", " ", "deltaY"}], "]"}], "\[IndentingNewLine]", "*)"}], 
  "\[IndentingNewLine]", 
  RowBox[{
   RowBox[{"Clear", "[", "m", 
    RowBox[{"(*", 
     RowBox[{",", " ", "b", ",", " ", "theta", ",", " ", "j"}], "*)"}], "]"}],
    "\[IndentingNewLine]", "\[IndentingNewLine]", 
   RowBox[{"(*", 
    RowBox[{
     RowBox[{"b", " ", "=", " ", 
      RowBox[{"{", 
       RowBox[{
        RowBox[{"\"\<untitled\>\"", "\[RuleDelayed]", 
         RowBox[{"{", 
          RowBox[{
           RowBox[{"j", "=", "1"}], ",", 
           RowBox[{"n", "=", "8"}], ",", 
           RowBox[{"p", "=", 
            RowBox[{"{", 
             RowBox[{"0.5`", ",", "1"}], "}"}]}], ",", 
           RowBox[{"q", "=", 
            RowBox[{"{", 
             RowBox[{"1", ",", "0.5`"}], "}"}]}]}], "}"}]}], ",", 
        RowBox[{"\"\<untitled 2\>\"", "\[RuleDelayed]", 
         RowBox[{"{", 
          RowBox[{
           RowBox[{"j", "=", "1"}], ",", 
           RowBox[{"n", "=", "8"}], ",", 
           RowBox[{"p", "=", 
            RowBox[{"{", 
             RowBox[{"0.381`", ",", "0.9480000000000001`"}], "}"}]}], ",", 
           RowBox[{"q", "=", 
            RowBox[{"{", 
             RowBox[{"0.9490000000000001`", ",", "0.606`"}], "}"}]}]}], 
          "}"}]}], ",", 
        RowBox[{"\"\<untitled 3\>\"", "\[RuleDelayed]", 
         RowBox[{"{", 
          RowBox[{
           RowBox[{"j", "=", "1"}], ",", 
           RowBox[{"n", "=", "8"}], ",", 
           RowBox[{"p", "=", 
            RowBox[{"{", 
             RowBox[{"0.5`", ",", "0.674`"}], "}"}]}], ",", 
           RowBox[{"q", "=", 
            RowBox[{"{", 
             RowBox[{"0.8300000000000001`", ",", "0.802`"}], "}"}]}]}], 
          "}"}]}], ",", 
        RowBox[{"\"\<untitled 4\>\"", "\[RuleDelayed]", 
         RowBox[{"{", 
          RowBox[{
           RowBox[{"j", "=", "1"}], ",", 
           RowBox[{"n", "=", "8"}], ",", 
           RowBox[{"p", "=", 
            RowBox[{"{", 
             RowBox[{"0.5`", ",", "0.674`"}], "}"}]}], ",", 
           RowBox[{"q", "=", 
            RowBox[{"{", 
             RowBox[{"0.8300000000000001`", ",", "0.802`"}], "}"}]}]}], 
          "}"}]}]}], "}"}]}], " ", ";"}], "\[IndentingNewLine]", "*)"}], 
   "\[IndentingNewLine]", "\[IndentingNewLine]", 
   RowBox[{"m", " ", "=", " ", 
    RowBox[{"Manipulate", "[", "\[IndentingNewLine]", 
     RowBox[{
      RowBox[{"DynamicModule", "[", 
       RowBox[{
        RowBox[{"{", 
         RowBox[{
         "x1", ",", " ", "y1", ",", " ", "x2", ",", " ", "y2", ",", " ", 
          "deltaX", ",", " ", "deltaY", ",", " ", "r0", ",", " ", "rf", ",", 
          " ", "theta0", ",", " ", "j", ",", " ", "p0", ",", " ", "pf"}], 
         "}"}], ",", "\[IndentingNewLine]", 
        RowBox[{
         RowBox[{
          RowBox[{"{", 
           RowBox[{"x1", ",", " ", "y1"}], "}"}], " ", "=", " ", "p"}], " ", 
         ";", "\[IndentingNewLine]", 
         RowBox[{
          RowBox[{"{", 
           RowBox[{"x2", ",", " ", "y2"}], "}"}], " ", "=", " ", "q"}], " ", 
         ";", "\[IndentingNewLine]", 
         RowBox[{"r0", " ", "=", " ", "0"}], " ", ";", "\[IndentingNewLine]", 
         RowBox[{"rf", " ", "=", " ", "1"}], " ", ";", "\[IndentingNewLine]", 
         RowBox[{"deltaX", " ", "=", " ", 
          RowBox[{"x2", " ", "-", " ", "x1"}]}], " ", ";", 
         "\[IndentingNewLine]", 
         RowBox[{"deltaY", " ", "=", " ", 
          RowBox[{"y2", " ", "-", " ", "y1"}]}], " ", ";", 
         "\[IndentingNewLine]", 
         RowBox[{"theta0", " ", "=", " ", 
          RowBox[{
           RowBox[{"2", " ", "Pi"}], " ", "-", " ", 
           RowBox[{"Pi", "/", "3"}]}]}], " ", ";", "\[IndentingNewLine]", 
         RowBox[{"j", " ", "=", " ", "1"}], " ", ";", "\[IndentingNewLine]", 
         "\[IndentingNewLine]", 
         RowBox[{
          RowBox[{"y", "[", 
           RowBox[{
           "vx_", ",", " ", "vx1_", ",", " ", "vy1_", ",", " ", "vtheta_", 
            ",", " ", "vj_"}], "]"}], " ", "=", " ", 
          RowBox[{"vy1", " ", "+", " ", 
           RowBox[{
            RowBox[{"Tan", "[", "vtheta", "]"}], 
            RowBox[{
             RowBox[{"(", 
              RowBox[{"vx", " ", "-", "vx1"}], ")"}], "^", "vj"}]}]}]}], " ", 
         ";", "\[IndentingNewLine]", "\[IndentingNewLine]", 
         RowBox[{"p0", " ", "=", " ", 
          RowBox[{"{", 
           RowBox[{"0.5", ",", " ", "1"}], "}"}]}], " ", ";", 
         "\[IndentingNewLine]", 
         RowBox[{"pf", " ", "=", " ", 
          RowBox[{"{", 
           RowBox[{"0.3", ",", " ", "0.8"}], "}"}]}], " ", ";", 
         "\[IndentingNewLine]", "\[IndentingNewLine]", 
         RowBox[{"Plot", "[", "\[IndentingNewLine]", 
          RowBox[{
           RowBox[{"Table", "[", 
            RowBox[{
             RowBox[{"y", "[", 
              RowBox[{"x", ",", " ", 
               RowBox[{"x1", " ", "+", " ", 
                RowBox[{"u", " ", 
                 RowBox[{"deltaX", " ", "/", "n"}]}]}], ",", " ", 
               RowBox[{"y1", " ", "+", " ", 
                RowBox[{"u", " ", 
                 RowBox[{"deltaY", "/", "n"}]}]}], ",", " ", 
               RowBox[{"theta", " ", "+", " ", 
                RowBox[{"u", " ", 
                 RowBox[{"Pi", "/", 
                  RowBox[{"(", 
                   RowBox[{"2", " ", "n"}], ")"}]}]}]}], ",", " ", "j"}], 
              "]"}], ",", " ", 
             RowBox[{"{", 
              RowBox[{"u", ",", " ", "0", ",", " ", "n", ",", " ", "1"}], 
              "}"}]}], "]"}], "\[IndentingNewLine]", ",", " ", 
           RowBox[{"{", 
            RowBox[{"x", ",", " ", "r0", ",", " ", "rf"}], "}"}], 
           "\[IndentingNewLine]", ",", " ", 
           RowBox[{"PlotRange", " ", "\[Rule]", " ", 
            RowBox[{"{", 
             RowBox[{
              RowBox[{"{", 
               RowBox[{"0", ",", " ", "1"}], "}"}], ",", " ", 
              RowBox[{"{", 
               RowBox[{"0", ",", " ", "1"}], "}"}]}], "}"}]}], 
           "\[IndentingNewLine]", ",", " ", 
           RowBox[{"AspectRatio", "\[Rule]", "Automatic"}]}], 
          "\[IndentingNewLine]", "]"}]}]}], " ", 
       RowBox[{"(*", " ", "Plot", " ", "*)"}], "\[IndentingNewLine]", "]"}], 
      " ", 
      RowBox[{"(*", " ", "DynamicModule", " ", "*)"}], "\[IndentingNewLine]", 
      ",", " ", 
      RowBox[{"{", 
       RowBox[{"n", ",", " ", "1", ",", " ", "8", ",", " ", "1"}], "}"}], 
      "\[IndentingNewLine]", 
      RowBox[{"(*", 
       RowBox[{",", " ", 
        RowBox[{"{", 
         RowBox[{"j", ",", " ", "1", ",", " ", "1.3"}], "}"}]}], "*)"}], 
      "\[IndentingNewLine]", 
      RowBox[{"(*", 
       RowBox[{",", " ", 
        RowBox[{"{", 
         RowBox[{
          RowBox[{"{", 
           RowBox[{"rf", ",", " ", "1"}], "}"}], ",", " ", "0", ",", " ", 
          "10"}], "}"}], "\[IndentingNewLine]", ",", " ", 
        RowBox[{"{", 
         RowBox[{
          RowBox[{"{", 
           RowBox[{"r0", ",", " ", "0"}], "}"}], ",", " ", 
          RowBox[{"-", "10"}], ",", " ", "0"}], "}"}]}], "*)"}], 
      "\[IndentingNewLine]", ",", " ", 
      RowBox[{"{", 
       RowBox[{
        RowBox[{"{", 
         RowBox[{"theta", ",", " ", 
          RowBox[{
           RowBox[{"2", " ", "Pi"}], " ", "-", " ", 
           RowBox[{"Pi", "/", "3"}]}]}], "}"}], ",", " ", "0", ",", " ", 
        RowBox[{"2", " ", "Pi"}]}], "}"}], "\[IndentingNewLine]", ",", " ", 
      RowBox[{"{", 
       RowBox[{
        RowBox[{"{", 
         RowBox[{"p", ",", "p0"}], "}"}], ",", "Locator"}], "}"}], 
      "\[IndentingNewLine]", ",", " ", 
      RowBox[{"{", 
       RowBox[{
        RowBox[{"{", 
         RowBox[{"q", ",", "pf"}], "}"}], ",", "Locator"}], "}"}]}], 
     "\[IndentingNewLine]", 
     RowBox[{"(*", 
      RowBox[{",", " ", 
       RowBox[{"Bookmarks", " ", "\[Rule]", " ", "b"}]}], "*)"}], 
     "\[IndentingNewLine]", "]"}], " "}]}]}]], "Input",
 CellChangeTimes->{{3.5439487798892546`*^9, 3.5439489852480006`*^9}, {
   3.543949029865553*^9, 3.5439490759611893`*^9}, {3.543950146088397*^9, 
   3.5439501543418694`*^9}, {3.543950190342928*^9, 3.5439501908139553`*^9}, {
   3.5439502930748043`*^9, 3.543950295210926*^9}, {3.5439503655449495`*^9, 
   3.543950456731165*^9}, {3.543950491355145*^9, 3.5439505051549344`*^9}, {
   3.54395054283909*^9, 3.5439505471963387`*^9}, {3.5439505970341897`*^9, 
   3.5439506046936274`*^9}, {3.543953287376068*^9, 3.54395334248222*^9}, {
   3.543953372872958*^9, 3.543953376339157*^9}, {3.5439534236598635`*^9, 
   3.54395347221564*^9}, {3.5439535137870183`*^9, 3.5439535366763277`*^9}, {
   3.5439535819569173`*^9, 3.5439536168859153`*^9}, {3.5439536943243446`*^9, 
   3.5439536961664495`*^9}, {3.5439537946480827`*^9, 
   3.5439538458370104`*^9}, {3.54395402451523*^9, 3.5439540414722*^9}, {
   3.543954089737961*^9, 3.543954090714017*^9}, {3.543954405165002*^9, 
   3.5439544285813417`*^9}, {3.5439545118181024`*^9, 
   3.5439545447679873`*^9}, {3.5439547052971687`*^9, 
   3.5439547136826487`*^9}, {3.5439548308553505`*^9, 
   3.5439549567405505`*^9}, {3.5439550532150683`*^9, 3.54395507142211*^9}, {
   3.5439551192598457`*^9, 3.54395512684728*^9}, 3.54395518051935*^9, {
   3.5439564219113536`*^9, 3.543956427689684*^9}, {3.5439564890971966`*^9, 
   3.543956534375786*^9}, {3.5439566040377703`*^9, 3.5439566057258673`*^9}, {
   3.543956729125925*^9, 3.5439568171759615`*^9}, {3.543956895273428*^9, 
   3.543956896923523*^9}, {3.5439569980293055`*^9, 3.543957055200576*^9}, {
   3.5439571307698975`*^9, 3.5439571339840813`*^9}, {3.543964662370681*^9, 
   3.5439647539459186`*^9}, {3.5439647845026665`*^9, 
   3.5439648199916964`*^9}, {3.543964855742741*^9, 3.5439648997712593`*^9}, {
   3.543964954519391*^9, 3.5439649960937686`*^9}, {3.5439650607864685`*^9, 
   3.5439651971472683`*^9}, {3.543965250221304*^9, 3.543965250732333*^9}, {
   3.543965283275194*^9, 3.543965284295253*^9}, {3.543965325528611*^9, 
   3.5439653493469734`*^9}, {3.543965474953158*^9, 3.5439655034447875`*^9}, {
   3.543965591134803*^9, 3.5439656302740417`*^9}, {3.5439657228613377`*^9, 
   3.5439657384732304`*^9}, 3.5439657783365107`*^9, {3.5439658433322277`*^9, 
   3.5439658465254107`*^9}, {3.5439659845883074`*^9, 
   3.5439659933618093`*^9}, {3.5439660561744018`*^9, 3.5439660911174*^9}, {
   3.5439662090261445`*^9, 3.543966279618182*^9}, {3.543966348801139*^9, 
   3.5439663746996202`*^9}, {3.5439665943831854`*^9, 
   3.5439666222107773`*^9}, {3.5439667524142246`*^9, 3.543966752491229*^9}, {
   3.543967080175971*^9, 3.543967080760005*^9}, {3.5439675503628645`*^9, 
   3.5439675614164968`*^9}, {3.543967641041051*^9, 3.5439676683576136`*^9}, {
   3.5439677264649367`*^9, 3.543967762147978*^9}, {3.543967886183072*^9, 
   3.5439678902963076`*^9}, {3.5440042160620933`*^9, 
   3.5440042888732576`*^9}, {3.544004701755873*^9, 3.5440047426172104`*^9}, {
   3.544004781002406*^9, 3.544004845517096*^9}, {3.54400516816255*^9, 
   3.5440051740618877`*^9}, {3.544005214054175*^9, 3.54400525679662*^9}, {
   3.54400574703966*^9, 3.544005818762762*^9}, {3.5440058612331915`*^9, 
   3.5440058855925846`*^9}, {3.5440059705214424`*^9, 
   3.5440060110437603`*^9}, {3.5440067266286893`*^9, 3.544006742689608*^9}, {
   3.544006838415083*^9, 3.5440069029847765`*^9}}],

Cell[BoxData[
 TagBox[
  StyleBox[
   DynamicModuleBox[{$CellContext`n$$ = 6, $CellContext`p$$ = {
    0.5, 1}, $CellContext`q$$ = {0.3, 0.8}, $CellContext`theta$$ = 
    2.3876104167282426`, Typeset`show$$ = True, Typeset`bookmarkList$$ = {}, 
    Typeset`bookmarkMode$$ = "Menu", Typeset`animator$$, Typeset`animvar$$ = 
    1, Typeset`name$$ = "\"untitled\"", Typeset`specs$$ = {{
      Hold[$CellContext`n$$], 1, 8, 1}, {{
       Hold[$CellContext`theta$$], Rational[5, 3] Pi}, 0, 2 Pi}, {{
       Hold[$CellContext`p$$], {0.5, 1}}, Automatic}, {{
       Hold[$CellContext`q$$], {0.3, 0.8}}, Automatic}}, Typeset`size$$ = {
    360., {177., 182.}}, Typeset`update$$ = 0, Typeset`initDone$$, 
    Typeset`skipInitDone$$ = True, $CellContext`n$792$$ = 
    0, $CellContext`theta$793$$ = 0}, 
    DynamicBox[Manipulate`ManipulateBoxes[
     1, StandardForm, 
      "Variables" :> {$CellContext`n$$ = 
        1, $CellContext`p$$ = {0.5, 1}, $CellContext`q$$ = {0.3, 
         0.8}, $CellContext`theta$$ = Rational[5, 3] Pi}, 
      "ControllerVariables" :> {
        Hold[$CellContext`n$$, $CellContext`n$792$$, 0], 
        Hold[$CellContext`theta$$, $CellContext`theta$793$$, 0]}, 
      "OtherVariables" :> {
       Typeset`show$$, Typeset`bookmarkList$$, Typeset`bookmarkMode$$, 
        Typeset`animator$$, Typeset`animvar$$, Typeset`name$$, 
        Typeset`specs$$, Typeset`size$$, Typeset`update$$, Typeset`initDone$$,
         Typeset`skipInitDone$$}, "Body" :> 
      DynamicModule[{$CellContext`x1, $CellContext`y1, $CellContext`x2, \
$CellContext`y2, $CellContext`deltaX, $CellContext`deltaY, $CellContext`r0, \
$CellContext`rf, $CellContext`theta0, $CellContext`j, $CellContext`p0, \
$CellContext`pf}, {$CellContext`x1, $CellContext`y1} = $CellContext`p$$; \
{$CellContext`x2, $CellContext`y2} = $CellContext`q$$; $CellContext`r0 = 
         0; $CellContext`rf = 
         1; $CellContext`deltaX = $CellContext`x2 - $CellContext`x1; \
$CellContext`deltaY = $CellContext`y2 - $CellContext`y1; $CellContext`theta0 = 
         2 Pi - Pi/3; $CellContext`j = 1; $CellContext`y[
           Pattern[$CellContext`vx, 
            Blank[]], 
           Pattern[$CellContext`vx1, 
            Blank[]], 
           Pattern[$CellContext`vy1, 
            Blank[]], 
           Pattern[$CellContext`vtheta, 
            Blank[]], 
           Pattern[$CellContext`vj, 
            Blank[]]] = $CellContext`vy1 + 
          Tan[$CellContext`vtheta] ($CellContext`vx - \
$CellContext`vx1)^$CellContext`vj; $CellContext`p0 = {
          0.5, 1}; $CellContext`pf = {0.3, 0.8}; Plot[
          Table[
           $CellContext`y[$CellContext`x, $CellContext`x1 + $CellContext`u \
($CellContext`deltaX/$CellContext`n$$), $CellContext`y1 + $CellContext`u \
($CellContext`deltaY/$CellContext`n$$), $CellContext`theta$$ + $CellContext`u \
(Pi/(2 $CellContext`n$$)), $CellContext`j], {$CellContext`u, 
            0, $CellContext`n$$, 
            1}], {$CellContext`x, $CellContext`r0, $CellContext`rf}, 
          PlotRange -> {{0, 1}, {0, 1}}, AspectRatio -> Automatic]], 
      "Specifications" :> {{$CellContext`n$$, 1, 8, 
         1}, {{$CellContext`theta$$, Rational[5, 3] Pi}, 0, 2 
         Pi}, {{$CellContext`p$$, {0.5, 1}}, Automatic, ControlType -> 
         Locator}, {{$CellContext`q$$, {0.3, 0.8}}, Automatic, ControlType -> 
         Locator}}, "Options" :> {}, "DefaultOptions" :> {}],
     ImageSizeCache->{415., {240., 245.}},
     SingleEvaluation->True],
    Deinitialization:>None,
    DynamicModuleValues:>{},
    SynchronousInitialization->True,
    UnsavedVariables:>{Typeset`initDone$$},
    UntrackedVariables:>{Typeset`size$$}], "Manipulate",
   Deployed->True,
   StripOnInput->False],
  Manipulate`InterpretManipulate[1]]], "Output",
 CellChangeTimes->{{3.543957026938959*^9, 3.543957056164631*^9}, 
   3.5439571348241296`*^9, 3.5439651509956284`*^9, 3.543965198001317*^9, 
   3.5439652532374763`*^9, 3.543965285371314*^9, 3.5439653668089724`*^9, 
   3.543965636432394*^9, {3.543965739566293*^9, 3.543965763752676*^9}, 
   3.543965996609995*^9, 3.5439666348915024`*^9, 3.543966753439283*^9, {
   3.5439670538974686`*^9, 3.5439670817270603`*^9}, 3.543967554573105*^9, {
   3.54396765046159*^9, 3.5439676696536875`*^9}, 3.543967764484112*^9, 
   3.543967836596236*^9, 3.5439678911293554`*^9, 3.544004167666325*^9, 
   3.5440042913443995`*^9, 3.544004372732054*^9, 3.5440047034149685`*^9, 
   3.544004744042292*^9, 3.544004804038724*^9, 3.5440048487292795`*^9, 
   3.5440049811138515`*^9, 3.544005034006877*^9, 3.544005175081946*^9, 
   3.5440052578126783`*^9, {3.5440057991986437`*^9, 3.544005819752819*^9}, {
   3.5440058627762794`*^9, 3.544005914433234*^9}, 3.544005959020785*^9, {
   3.544005990792602*^9, 3.544006011752801*^9}, 3.5440067433596463`*^9, 
   3.5440068177088985`*^9, 3.544006904735876*^9}]
}, Open  ]],

Cell[BoxData[""], "Input",
 GeneratedCell->False,
 CellAutoOverwrite->False,
 CellChangeTimes->{
  3.544005119465765*^9, {3.544005181223297*^9, 3.5440052092479*^9}}],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"(*", 
  RowBox[{
   RowBox[{
   "SetDirectory", "[", 
    "\"\<C:\\\\Users\\\\Peeter\\\\cygwin_home\\\\physicsplay\\\\notes\\\\\
blogit\>\"", "]"}], "\[IndentingNewLine]", 
   RowBox[{"Export", "[", 
    RowBox[{"\"\<lines.mov\>\"", ",", " ", "m"}], "]"}]}], "*)"}]], "Input",
 CellChangeTimes->{{3.5440052835061474`*^9, 3.5440053249435177`*^9}, 
   3.544006765382906*^9}],

Cell[BoxData["\<\"C:\\\\Users\\\\Peeter\\\\cygwin_home\\\\physicsplay\\\\\
notes\\\\blogit\"\>"], "Output",
 CellChangeTimes->{3.544005325734563*^9}],

Cell[BoxData["\<\"lines.mov\"\>"], "Output",
 CellChangeTimes->{3.544005402679964*^9}]
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
Cell[CellGroupData[{
Cell[1257, 32, 11544, 249, 812, "Input"],
Cell[12804, 283, 4825, 87, 502, "Output"]
}, Open  ]],
Cell[17644, 373, 165, 4, 31, "Input"],
Cell[CellGroupData[{
Cell[17834, 381, 396, 10, 52, "Input"],
Cell[18233, 393, 149, 2, 30, "Output"],
Cell[18385, 397, 86, 1, 30, "Output"]
}, Open  ]]
}
]
*)

(* End of internal cache information *)

(* NotebookSignature Sx0AJLAd1#W2pA1cLLszG0en *)
