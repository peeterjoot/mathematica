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
NotebookDataLength[      3941,        101]
NotebookOptionsPosition[      4373,         93]
NotebookOutlinePosition[      4946,        116]
CellTagsIndexPosition[      4903,        113]
WindowFrame->Normal*)

(* Beginning of Notebook Content *)
Notebook[{
Cell[BoxData[
 TagBox[
  StyleBox[
   DynamicModuleBox[{$CellContext`d$$ = 0.75, $CellContext`r$$ = 20, 
    Typeset`show$$ = True, Typeset`bookmarkList$$ = {}, 
    Typeset`bookmarkMode$$ = "Menu", Typeset`animator$$, Typeset`animvar$$ = 
    1, Typeset`name$$ = "\"untitled\"", Typeset`specs$$ = {{{
       Hold[$CellContext`d$$], 
       Rational[1, 4], "d/\[Lambda]"}, 0.01, 5}, {{
       Hold[$CellContext`r$$], 20, "power gain (dB)"}, 20, 40}}, 
    Typeset`size$$ = {480., {236., 244.}}, Typeset`update$$ = 0, 
    Typeset`initDone$$, Typeset`skipInitDone$$ = 
    True, $CellContext`d$56424$$ = 0, $CellContext`r$56425$$ = 0}, 
    DynamicBox[Manipulate`ManipulateBoxes[
     1, StandardForm, 
      "Variables" :> {$CellContext`d$$ = Rational[1, 4], $CellContext`r$$ = 
        20}, "ControllerVariables" :> {
        Hold[$CellContext`d$$, $CellContext`d$56424$$, 0], 
        Hold[$CellContext`r$$, $CellContext`r$56425$$, 0]}, 
      "OtherVariables" :> {
       Typeset`show$$, Typeset`bookmarkList$$, Typeset`bookmarkMode$$, 
        Typeset`animator$$, Typeset`animvar$$, Typeset`name$$, 
        Typeset`specs$$, Typeset`size$$, Typeset`update$$, Typeset`initDone$$,
         Typeset`skipInitDone$$}, "Body" :> 
      Module[{$CellContext`m$, $CellContext`z0$, $CellContext`f$, \
$CellContext`max$}, $CellContext`m$ = 3; $CellContext`z0$ = N[
           
           Cosh[(1/$CellContext`m$) 
            ArcCosh[10^($CellContext`r$$/20)]]]; $CellContext`f$ := (
           4 $CellContext`z0$^3 Cos[Pi $CellContext`d$$ Cos[#]]^3 - 
           3 $CellContext`z0$ 
           Cos[Pi $CellContext`d$$ Cos[#]])^2& ; $CellContext`max$ = Part[
           NMaximize[
            $CellContext`f$[$CellContext`th], {$CellContext`th, 0, 2 Pi}], 1]; 
        PolarPlot[
          $CellContext`f$[$CellContext`t], {$CellContext`t, 0, 2 Pi}, 
          PlotStyle -> Directive[
            Thickness[Large], Red, Dashed], 
          PolarAxesOrigin -> {0, $CellContext`max$}, PolarGridLines -> 
          Automatic, PolarAxes -> True, PolarTicks -> {
            Table[{
              N[(Pi/6) $CellContext`i], 
              StringJoin[
               ToString[30 $CellContext`i], 
               "\[Degree]"]}, {$CellContext`i, -5, 6}], Automatic}]], 
      "Specifications" :> {{{$CellContext`d$$, 
          Rational[1, 4], "d/\[Lambda]"}, 0.01, 5, Appearance -> 
         "Labeled"}, {{$CellContext`r$$, 20, "power gain (dB)"}, 20, 40, 
         Appearance -> "Labeled"}}, "Options" :> {}, "DefaultOptions" :> {}],
     ImageSizeCache->{543., {315., 322.}},
     SingleEvaluation->True],
    Deinitialization:>None,
    DynamicModuleValues:>{},
    SynchronousInitialization->True,
    UnsavedVariables:>{Typeset`initDone$$},
    UntrackedVariables:>{Typeset`size$$}], "Manipulate",
   Deployed->True,
   StripOnInput->False],
  Manipulate`InterpretManipulate[1]]], "Output", "PluginEmbeddedContent"]
},
WindowSize->{579, 658},
WindowMargins->{{502, Automatic}, {Automatic, 53}},
Visible->True,
AuthoredSize->{579.82, 658.1700000000001},
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
Cell[1463, 33, 2906, 58, 639, "Output"]
}
]
*)

(* End of internal cache information *)

(* NotebookSignature JwTpWVxfPXKbmCwMX7EB95td *)
