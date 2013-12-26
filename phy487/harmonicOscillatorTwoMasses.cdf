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
NotebookDataLength[     12895,        314]
NotebookOptionsPosition[     13442,        310]
NotebookOutlinePosition[     13785,        325]
CellTagsIndexPosition[     13742,        322]
WindowFrame->Normal*)

(* Beginning of Notebook Content *)
Notebook[{
Cell[TextData[{
 "Here\[CloseCurlyQuote]s an animation of two masses harmonically coupled.  I \
was confused by the fact that the math I was using appeared to indicate the \
masses were passing through each other.  That\[CloseCurlyQuote]s surely the \
case when the ",
 Cell[BoxData[
  FormBox[
   RowBox[{"t", " ", "=", " ", "0"}], TraditionalForm]],
  FormatType->"TraditionalForm"],
 " initial velocity (sine term) is zero, since the cosine will then oscillate \
around zero.  This animation demonstrates this for non-zero initial \
velocities.\n\nThe root cause of the trouble is that the Lagrangian I used to \
model the coupling didn\[CloseCurlyQuote]t include a rest-length for the \
\[OpenCurlyDoubleQuote]spring\[CloseCurlyDoubleQuote] that coupled the \
masses, thus being physically unrealistic.  When that is included, we don\
\[CloseCurlyQuote]t have this trouble."
}], "Text",
 CellChangeTimes->{{3.596589396080334*^9, 3.596589487686574*^9}, {
  3.596589520502451*^9, 3.5965896707860465`*^9}}],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{
  RowBox[{"Manipulate", "[", "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{"DynamicModule", "[", 
     RowBox[{
      RowBox[{"{", 
       RowBox[{
       "mu", ",", " ", "omega", ",", " ", "rcm", ",", " ", "r1", ",", " ", 
        "r2", ",", " ", "dr"}], "}"}], ",", "\[IndentingNewLine]", 
      RowBox[{
       RowBox[{"mu", " ", "=", " ", 
        RowBox[{"m1", " ", 
         RowBox[{"m2", " ", "/", 
          RowBox[{"(", 
           RowBox[{"m1", " ", "+", " ", "m2"}], ")"}]}]}]}], " ", ";", 
       "\[IndentingNewLine]", 
       RowBox[{"omega", " ", "=", " ", 
        RowBox[{"2", " ", 
         RowBox[{"Pi", " ", "/", " ", "tPeriod"}]}]}], " ", ";", 
       "\[IndentingNewLine]", 
       RowBox[{"rcm", " ", "=", " ", 
        RowBox[{"{", 
         RowBox[{"0", ",", " ", "0"}], "}"}]}], " ", ";", 
       "\[IndentingNewLine]", "\[IndentingNewLine]", 
       RowBox[{
        RowBox[{"dr", "[", "t_", "]"}], " ", "=", " ", 
        RowBox[{
         RowBox[{"{", 
          RowBox[{"a", ",", " ", "0"}], "}"}], " ", "+", " ", 
         RowBox[{
          RowBox[{"{", 
           RowBox[{
            RowBox[{"dr0", "-", "a"}], ",", " ", "0"}], "}"}], " ", 
          RowBox[{"Cos", "[", " ", 
           RowBox[{"omega", " ", "t"}], " ", "]"}]}], " ", "+", " ", 
         RowBox[{
          RowBox[{"(", 
           RowBox[{
            RowBox[{"{", 
             RowBox[{"dv0", ",", " ", "0"}], "}"}], "/", "omega"}], ")"}], 
          " ", 
          RowBox[{"Sin", "[", " ", 
           RowBox[{"omega", " ", "t"}], "]"}]}]}]}], " ", ";", 
       "\[IndentingNewLine]", 
       RowBox[{
        RowBox[{"r1", "[", "t_", "]"}], " ", "=", " ", 
        RowBox[{
         RowBox[{
          RowBox[{"(", 
           RowBox[{"mu", "/", "m1"}], ")"}], " ", 
          RowBox[{"dr", "[", "t", "]"}]}], " ", "+", " ", "rcm"}]}], ";", 
       "\[IndentingNewLine]", 
       RowBox[{
        RowBox[{"r2", "[", "t_", "]"}], " ", "=", " ", 
        RowBox[{
         RowBox[{
          RowBox[{"-", 
           RowBox[{"(", 
            RowBox[{"mu", "/", "m2"}], ")"}]}], " ", 
          RowBox[{"dr", "[", "t", "]"}]}], " ", "+", " ", "rcm"}]}], ";", 
       "\[IndentingNewLine]", "\[IndentingNewLine]", 
       RowBox[{"Animate", "[", " ", "\[IndentingNewLine]", 
        RowBox[{
         RowBox[{"Show", "[", 
          RowBox[{"{", "\[IndentingNewLine]", 
           RowBox[{
            RowBox[{"Plot", "[", 
             RowBox[{
              RowBox[{"{", "}"}], ",", " ", 
              RowBox[{"{", 
               RowBox[{"dummy", ",", " ", 
                RowBox[{"-", "2"}], ",", " ", "2"}], "}"}]}], "]"}], ",", 
            "\[IndentingNewLine]", 
            RowBox[{"Graphics", "[", 
             RowBox[{"{", 
              RowBox[{
               RowBox[{"PointSize", "[", 
                RowBox[{
                 RowBox[{"m1", "/", 
                  RowBox[{"(", 
                   RowBox[{"m1", " ", "+", " ", "m2"}], ")"}]}], "/", "10"}], 
                "]"}], ",", " ", 
               RowBox[{"Point", "[", 
                RowBox[{"r1", "[", "t", "]"}], "]"}], ",", "Red", ",", " ", 
               RowBox[{"PointSize", "[", 
                RowBox[{
                 RowBox[{"m2", "/", 
                  RowBox[{"(", 
                   RowBox[{"m1", " ", "+", " ", "m2"}], ")"}]}], "/", "10"}], 
                "]"}], ",", 
               RowBox[{"Point", "[", 
                RowBox[{"r2", "[", "t", "]"}], "]"}]}], "}"}], "]"}]}], 
           "\[IndentingNewLine]", "}"}], "]"}], "\[IndentingNewLine]", ",", 
         " ", 
         RowBox[{"{", 
          RowBox[{"t", ",", " ", "0", ",", " ", 
           RowBox[{"omega", "/", 
            RowBox[{"(", 
             RowBox[{"2", " ", "Pi"}], ")"}]}]}], "}"}]}], "]"}]}]}], 
     "\[IndentingNewLine]", "]"}], "\[IndentingNewLine]", ",", " ", 
    RowBox[{"{", 
     RowBox[{
      RowBox[{"{", 
       RowBox[{"a", ",", " ", "1"}], "}"}], ",", " ", "0", ",", " ", "5"}], 
     "}"}], "\[IndentingNewLine]", ",", 
    RowBox[{"{", 
     RowBox[{
      RowBox[{"{", 
       RowBox[{
       "m1", ",", " ", "1", ",", 
        "\"\<\!\(\*SubscriptBox[\(m\), \(1\)]\)\>\""}], "}"}], ",", " ", 
      "0.1", ",", " ", "5"}], "}"}], "\[IndentingNewLine]", ",", 
    RowBox[{"{", 
     RowBox[{
      RowBox[{"{", 
       RowBox[{
       "m2", ",", " ", "2.55", ",", 
        "\"\<\!\(\*SubscriptBox[\(m\), \(2\)]\)\>\""}], "}"}], ",", " ", 
      "0.1", ",", " ", "5"}], "}"}], "\[IndentingNewLine]", ",", 
    RowBox[{"{", 
     RowBox[{
      RowBox[{"{", 
       RowBox[{
       "dr0", ",", " ", "1.5", ",", " ", 
        "\"\<(\!\(\*SubscriptBox[\(\[CapitalDelta]r\), \
\(0\)]\)\!\(\*SubscriptBox[\()\), \(x\)]\)\>\""}], "}"}], ",", " ", "0.1", 
      ",", " ", "10"}], "}"}], "\[IndentingNewLine]", ",", 
    RowBox[{"{", 
     RowBox[{
      RowBox[{"{", 
       RowBox[{
       "dv0", ",", " ", "1", ",", " ", 
        "\"\<(\!\(\*SubscriptBox[\(\[CapitalDelta]v\), \
\(0\)]\)\!\(\*SubscriptBox[\()\), \(x\)]\)\>\""}], "}"}], ",", " ", "0.1", 
      ",", " ", "10"}], "}"}], "\[IndentingNewLine]", ",", 
    RowBox[{"{", 
     RowBox[{
      RowBox[{"{", 
       RowBox[{"tPeriod", ",", " ", "0.5", ",", " ", "\"\<T\>\""}], "}"}], 
      ",", " ", "0.5", ",", " ", "5"}], "}"}]}], "\[IndentingNewLine]", "]"}],
   "\[IndentingNewLine]", "\[IndentingNewLine]", 
  "\[IndentingNewLine]"}]], "Input",
 CellChangeTimes->{{3.5965356451168823`*^9, 3.596535879479287*^9}, {
   3.5965359184405155`*^9, 3.5965363587987027`*^9}, {3.5965363941287236`*^9, 
   3.596536430286792*^9}, {3.5965365092893105`*^9, 3.596536754489335*^9}, 
   3.596536806771325*^9, {3.5965369348696523`*^9, 3.5965369991353283`*^9}, {
   3.596630928783812*^9, 3.596630964841874*^9}, {3.5966310243322773`*^9, 
   3.596631043385367*^9}}],

Cell[BoxData[
 TagBox[
  StyleBox[
   DynamicModuleBox[{$CellContext`a$$ = 1, $CellContext`dr0$$ = 
    1.5, $CellContext`dv0$$ = 1, $CellContext`m1$$ = 1, $CellContext`m2$$ = 
    2.55, $CellContext`tPeriod$$ = 0.5, Typeset`show$$ = True, 
    Typeset`bookmarkList$$ = {}, Typeset`bookmarkMode$$ = "Menu", 
    Typeset`animator$$, Typeset`animvar$$ = 1, Typeset`name$$ = 
    "\"untitled\"", Typeset`specs$$ = {{{
       Hold[$CellContext`a$$], 1}, 0, 5}, {{
       Hold[$CellContext`m1$$], 1, "\!\(\*SubscriptBox[\(m\), \(1\)]\)"}, 0.1,
       5}, {{
       Hold[$CellContext`m2$$], 2.55, "\!\(\*SubscriptBox[\(m\), \(2\)]\)"}, 
      0.1, 5}, {{
       Hold[$CellContext`dr0$$], 1.5, 
       "(\!\(\*SubscriptBox[\(\[CapitalDelta]r\), \(0\)]\)\!\(\*SubscriptBox[\
\()\), \(x\)]\)"}, 0.1, 10}, {{
       Hold[$CellContext`dv0$$], 1, 
       "(\!\(\*SubscriptBox[\(\[CapitalDelta]v\), \(0\)]\)\!\(\*SubscriptBox[\
\()\), \(x\)]\)"}, 0.1, 10}, {{
       Hold[$CellContext`tPeriod$$], 0.5, "T"}, 0.5, 5}}, Typeset`size$$ = {
    543., {196., 203.}}, Typeset`update$$ = 0, Typeset`initDone$$, 
    Typeset`skipInitDone$$ = True, $CellContext`a$115581$$ = 
    0, $CellContext`m1$115582$$ = 0, $CellContext`m2$115583$$ = 
    0, $CellContext`dr0$115584$$ = 0, $CellContext`dv0$115585$$ = 
    0, $CellContext`tPeriod$115586$$ = 0}, 
    DynamicBox[Manipulate`ManipulateBoxes[
     1, StandardForm, 
      "Variables" :> {$CellContext`a$$ = 1, $CellContext`dr0$$ = 
        1.5, $CellContext`dv0$$ = 1, $CellContext`m1$$ = 1, $CellContext`m2$$ = 
        2.55, $CellContext`tPeriod$$ = 0.5}, "ControllerVariables" :> {
        Hold[$CellContext`a$$, $CellContext`a$115581$$, 0], 
        Hold[$CellContext`m1$$, $CellContext`m1$115582$$, 0], 
        Hold[$CellContext`m2$$, $CellContext`m2$115583$$, 0], 
        Hold[$CellContext`dr0$$, $CellContext`dr0$115584$$, 0], 
        Hold[$CellContext`dv0$$, $CellContext`dv0$115585$$, 0], 
        Hold[$CellContext`tPeriod$$, $CellContext`tPeriod$115586$$, 0]}, 
      "OtherVariables" :> {
       Typeset`show$$, Typeset`bookmarkList$$, Typeset`bookmarkMode$$, 
        Typeset`animator$$, Typeset`animvar$$, Typeset`name$$, 
        Typeset`specs$$, Typeset`size$$, Typeset`update$$, Typeset`initDone$$,
         Typeset`skipInitDone$$}, "Body" :> 
      DynamicModule[{$CellContext`mu, $CellContext`omega, $CellContext`rcm, \
$CellContext`r1, $CellContext`r2, $CellContext`dr}, $CellContext`mu = \
$CellContext`m1$$ ($CellContext`m2$$/($CellContext`m1$$ + $CellContext`m2$$)); \
$CellContext`omega = 
         2 (Pi/$CellContext`tPeriod$$); $CellContext`rcm = {0, 
          0}; $CellContext`dr[
           Pattern[$CellContext`t$, 
            Blank[]]] = {$CellContext`a$$, 
            0} + {$CellContext`dr0$$ - $CellContext`a$$, 0} 
           Cos[$CellContext`omega $CellContext`t$] + ({$CellContext`dv0$$, 
              0}/$CellContext`omega) 
           Sin[$CellContext`omega $CellContext`t$]; $CellContext`r1[
           Pattern[$CellContext`t$, 
            
            Blank[]]] = ($CellContext`mu/$CellContext`m1$$) \
$CellContext`dr[$CellContext`t$] + $CellContext`rcm; $CellContext`r2[
           Pattern[$CellContext`t$, 
            
            Blank[]]] = (-($CellContext`mu/$CellContext`m2$$)) \
$CellContext`dr[$CellContext`t$] + $CellContext`rcm; Animate[
          Show[{
            Plot[{}, {$CellContext`dummy, -2, 2}], 
            Graphics[{
              
              PointSize[($CellContext`m1$$/($CellContext`m1$$ + \
$CellContext`m2$$))/10], 
              Point[
               $CellContext`r1[$CellContext`t]], Red, 
              
              PointSize[($CellContext`m2$$/($CellContext`m1$$ + \
$CellContext`m2$$))/10], 
              Point[
               $CellContext`r2[$CellContext`t]]}]}], {$CellContext`t, 
           0, $CellContext`omega/(2 Pi)}]], 
      "Specifications" :> {{{$CellContext`a$$, 1}, 0, 
         5}, {{$CellContext`m1$$, 1, "\!\(\*SubscriptBox[\(m\), \(1\)]\)"}, 
         0.1, 5}, {{$CellContext`m2$$, 2.55, 
          "\!\(\*SubscriptBox[\(m\), \(2\)]\)"}, 0.1, 
         5}, {{$CellContext`dr0$$, 1.5, 
          
          "(\!\(\*SubscriptBox[\(\[CapitalDelta]r\), \
\(0\)]\)\!\(\*SubscriptBox[\()\), \(x\)]\)"}, 0.1, 
         10}, {{$CellContext`dv0$$, 1, 
          "(\!\(\*SubscriptBox[\(\[CapitalDelta]v\), \
\(0\)]\)\!\(\*SubscriptBox[\()\), \(x\)]\)"}, 0.1, 
         10}, {{$CellContext`tPeriod$$, 0.5, "T"}, 0.5, 5}}, "Options" :> {}, 
      "DefaultOptions" :> {}],
     ImageSizeCache->{606., {349., 356.}},
     SingleEvaluation->True],
    Deinitialization:>None,
    DynamicModuleValues:>{},
    SynchronousInitialization->True,
    UnsavedVariables:>{Typeset`initDone$$},
    UntrackedVariables:>{Typeset`size$$}], "Manipulate",
   Deployed->True,
   StripOnInput->False],
  Manipulate`InterpretManipulate[1]]], "Output",
 CellChangeTimes->{{3.5965366985241337`*^9, 3.59653675527538*^9}, 
   3.5965368135907154`*^9, {3.596536978778164*^9, 3.596536999883371*^9}, 
   3.5965932955483713`*^9, 3.5966309746794367`*^9, 3.5966310620804358`*^9, 
   3.5966314381529465`*^9}]
}, Open  ]]
},
WindowSize->{1240, 729},
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
Cell[1463, 33, 1007, 18, 170, "Text"],
Cell[CellGroupData[{
Cell[2495, 55, 5829, 148, 691, "Input"],
Cell[8327, 205, 5099, 102, 727, "Output"]
}, Open  ]]
}
]
*)

(* End of internal cache information *)

(* NotebookSignature jw0@uHtsLYymnCKcVNwi7jiO *)
