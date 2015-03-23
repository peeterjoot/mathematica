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
NotebookDataLength[      7147,        167]
NotebookOptionsPosition[      7590,        159]
NotebookOutlinePosition[      8151,        182]
CellTagsIndexPosition[      8108,        179]
WindowFrame->Normal*)

(* Beginning of Notebook Content *)
Notebook[{
Cell[BoxData[
 TagBox[
  StyleBox[
   DynamicModuleBox[{$CellContext`asz$$ = 
    22.189705962954182`, $CellContext`axes$$ = Graphics3D[{
      RGBColor[1, 0, 0], 
      Arrow[
       Tube[{{0, 0, 0}, {22.189705962954182`, 0, 0}}], 0.05], 
      RGBColor[0, 0, 1], 
      Arrow[
       Tube[{{0, 0, 0}, {0, 22.189705962954182`, 0}}], 0.05], 
      RGBColor[0., 0.19999999999999996`, 0.], 
      Arrow[
       Tube[{{0, 0, 0}, {0, 0, 22.189705962954182`}}], 0.05], 
      Text["\!\(\*SubscriptBox[\(e\), \(1\)]\)", {22.289705962954184`, 0, 0}], 
      Text["\!\(\*SubscriptBox[\(e\), \(2\)]\)", {0, 22.289705962954184`, 0}], 
      Text[
      "\!\(\*SubscriptBox[\(e\), \(3\)]\)", {
       0, 0, 22.289705962954184`}]}], $CellContext`d$$ = Rational[
    1, 4], $CellContext`max$$ = 44.379411925908364`, $CellContext`perfgoal$$ =
     "Quality", $CellContext`toff$$ = 0.1, $CellContext`u0$$ = 0, 
    Typeset`show$$ = True, Typeset`bookmarkList$$ = {}, 
    Typeset`bookmarkMode$$ = "Menu", Typeset`animator$$, Typeset`animvar$$ = 
    1, Typeset`name$$ = "\"untitled\"", Typeset`specs$$ = {{{
       Hold[$CellContext`d$$], 
       Rational[1, 4], "d/\[Lambda]"}, 0.01, 2}, {{
       Hold[$CellContext`u0$$], 0, "\!\(\*SubscriptBox[\(u\), \(0\)]\)"}, 0, 
      2 Pi}, {{
       Hold[$CellContext`perfgoal$$], "Quality", "Performance Goal"}, {
      "Quality", "Speed"}}, {
      Hold[$CellContext`max$$], 0}, {
      Hold[$CellContext`asz$$], 0}, {
      Hold[$CellContext`toff$$], 0}, {
      Hold[$CellContext`axes$$], 0}}, Typeset`size$$ = {240., {258., 265.}}, 
    Typeset`update$$ = 0, Typeset`initDone$$, Typeset`skipInitDone$$ = 
    False, $CellContext`d$8911$$ = 0, $CellContext`u0$8912$$ = 
    0, $CellContext`perfgoal$8913$$ = False}, 
    DynamicBox[Manipulate`ManipulateBoxes[
     1, StandardForm, 
      "Variables" :> {$CellContext`asz$$ = 0, $CellContext`axes$$ = 
        0, $CellContext`d$$ = Rational[1, 4], $CellContext`max$$ = 
        0, $CellContext`perfgoal$$ = "Quality", $CellContext`toff$$ = 
        0, $CellContext`u0$$ = 0}, "ControllerVariables" :> {
        Hold[$CellContext`d$$, $CellContext`d$8911$$, 0], 
        Hold[$CellContext`u0$$, $CellContext`u0$8912$$, 0], 
        Hold[$CellContext`perfgoal$$, $CellContext`perfgoal$8913$$, False]}, 
      "OtherVariables" :> {
       Typeset`show$$, Typeset`bookmarkList$$, Typeset`bookmarkMode$$, 
        Typeset`animator$$, Typeset`animvar$$, Typeset`name$$, 
        Typeset`specs$$, Typeset`size$$, Typeset`update$$, Typeset`initDone$$,
         Typeset`skipInitDone$$}, "Body" :> Column[{
         PolarPlot[Abs[
            $CellContext`af[
            E^(I 2 Pi $CellContext`d$$ Cos[$CellContext`t] + 
              I $CellContext`u0$$)]]^2, {$CellContext`t, 0, Pi}, 
          PolarAxesOrigin -> {0, $CellContext`max$$}, PolarGridLines -> 
          Automatic, PolarAxes -> True, PolarTicks -> {
            Table[{
              N[(Pi/6) $CellContext`i], 
              StringJoin[
               ToString[30 $CellContext`i], 
               "\[Degree]"]}, {$CellContext`i, -5, 6}], Automatic}, 
          PerformanceGoal -> $CellContext`perfgoal$$], 
         Show[
          SphericalPlot3D[Abs[
             $CellContext`af[
             E^(I 2 Pi $CellContext`d$$ Cos[$CellContext`t] + 
               I $CellContext`u0$$)]]^2, {$CellContext`t, 0, 
            Pi}, {$CellContext`p, 0, 2 Pi}, 
           PlotRange -> {-$CellContext`max$$, $CellContext`max$$}, 
           PerformanceGoal -> $CellContext`perfgoal$$, 
           AxesLabel -> {$CellContext`x, $CellContext`y, $CellContext`z}], \
$CellContext`axes$$]}], "Specifications" :> {{{$CellContext`d$$, 
          Rational[1, 4], "d/\[Lambda]"}, 0.01, 2, Appearance -> 
         "Labeled"}, {{$CellContext`u0$$, 0, 
          "\!\(\*SubscriptBox[\(u\), \(0\)]\)"}, 0, 2 Pi, Appearance -> 
         "Labeled"}, {{$CellContext`perfgoal$$, "Quality", 
          "Performance Goal"}, {"Quality", "Speed"}}, {$CellContext`max$$, 0, 
         ControlType -> None}, {$CellContext`asz$$, 0, ControlType -> 
         None}, {$CellContext`toff$$, 0, ControlType -> 
         None}, {$CellContext`axes$$, 0, ControlType -> None}}, 
      "Options" :> {}, "DefaultOptions" :> {}],
     ImageSizeCache->{511., {354., 361.}},
     SingleEvaluation->True],
    Deinitialization:>None,
    DynamicModuleValues:>{},
    Initialization:>({{$CellContext`af[
           Pattern[$CellContext`z, 
            Blank[]]] = (1. - 4.000204360710245*^-16 
           I) + (2.3308937211320773` - 6.625878346402912*^-16 
            I) $CellContext`z + (2.3308937211320773` - 
            3.4450928483976665`*^-16 
            I) $CellContext`z^2 + $CellContext`z^3}; {$CellContext`max$$ = 
          First[
            NMaximize[{Abs[
                $CellContext`af[
                E^(I 2 Pi $CellContext`d$$ Cos[$CellContext`t] + 
                  I $CellContext`u0$$)]]^2, $CellContext`t > 
              0, $CellContext`t < 
              Pi}, {$CellContext`t}]]; $CellContext`asz$$ = \
$CellContext`max$$/2; $CellContext`toff$$ = 0.1; $CellContext`axes$$ = 
          Graphics3D[{Red, 
             Arrow[
              Tube[{{0, 0, 0}, {$CellContext`asz$$, 0, 0}}], 0.05], Blue, 
             Arrow[
              Tube[{{0, 0, 0}, {0, $CellContext`asz$$, 0}}], 0.05], 
             Darker[Green, 0.8], 
             Arrow[
              Tube[{{0, 0, 0}, {0, 0, $CellContext`asz$$}}], 0.05], 
             Text[
             "\!\(\*SubscriptBox[\(e\), \(1\)]\)", {$CellContext`asz$$ + \
$CellContext`toff$$, 0, 0}], 
             Text[
             "\!\(\*SubscriptBox[\(e\), \(2\)]\)", {
              0, $CellContext`asz$$ + $CellContext`toff$$, 0}], 
             Text[
             "\!\(\*SubscriptBox[\(e\), \(3\)]\)", {
              0, 0, $CellContext`asz$$ + $CellContext`toff$$}]}]; Null}}; 
     Typeset`initDone$$ = True),
    SynchronousInitialization->True,
    UnsavedVariables:>{Typeset`initDone$$},
    UntrackedVariables:>{Typeset`size$$}], "Manipulate",
   Deployed->True,
   StripOnInput->False],
  Manipulate`InterpretManipulate[1]]], "Output", "PluginEmbeddedContent"]
},
WindowSize->{545, 738},
WindowMargins->{{519, Automatic}, {Automatic, 13}},
Visible->True,
AuthoredSize->{545.9, 738.51},
ScrollingOptions->{"HorizontalScrollRange"->Fit,
"VerticalScrollRange"->Fit},
ShowCellBracket->False,
Deployed->True,
CellContext->Notebook,
TrackCellChangeTimes->False,
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
Cell[1463, 33, 6123, 124, 717, "Output"]
}
]
*)

(* End of internal cache information *)

(* NotebookSignature DxphrygL3Ry7xCKvdMCbooX# *)
