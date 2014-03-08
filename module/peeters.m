(* ::Package:: *)

Begin["peeters`"]

(* copy this module to a directory in $Path.  Then invoke with <<peeters` *)
ClearAll[setGitDir];

setGitDir::usage = "Peeter's home laptop: set working dir relative to physicsplay/ (like figures/phy487)" ;
setGitDir[where_] := SetDirectory[ "C:/Users/Peeter/cygwin_home/physicsplay/" <> where ] ;


ClearAll[exportForLatex];
exportForLatex::usage = "peeters`exportForLatex[ filename, image, True/False] :: This seems to be the most compact way to export for latex that still retains good resolution.  Use the epstopdf program to convert the resulting .eps file.  Also generate a .png for wordpress posts at the same time. \[IndentingNewLine]Note that the .png displays with some software having a checkerboard background, but that doesn't show up in the eventual web view.\[IndentingNewLine]\[IndentingNewLine]This png file is generated with a different basename so that latex includegraphics doesn't find it.

The last (optional) argument is for whether or not to allow rasterization.
" ;

(*
https://plus.google.com/u/0/103302026148070112829/posts/YtM2TERTpob
*)
exportForLatex[filename_, image_, allowRast_ : False ]  := Module[{output, dir},

dir = Directory[] ;
output =
{Export[filename  <> ".eps",First[ImportString[ExportString[image, "PDF", "AllowRasterization"-> allowRast, Background->None],"PDF"]]]

,Export[filename  <> "pn.png", image, "AllowRasterization"-> allowRast, Background->None, ImageResolution->72*4]
(*,Export[filename  <> ".pdf", image]*)
} ;
{dir <> "/" <> output[[1]], dir <> "/" <> output[[2]] }
]


ClearAll[ reciprocalsForTwoDimSubspace ] ;
reciprocalsForTwoDimSubspace::usage = "For a surface spanned by vectors {a,b}, compute the reciprocal (or dual) basis for that subspace.  That basis in 3D is

\!\(\*SuperscriptBox[\(a\), \(*\)]\) = -b \[CenterDot] (b \[Cross] a )/\[LeftBracketingBar]b \[Cross] a\!\(\*SuperscriptBox[\(\[RightBracketingBar]\), \(2\)]\)
\!\(\*SuperscriptBox[\(b\), \(*\)]\) = -a \[CenterDot] (a \[Cross] b )/\[LeftBracketingBar]b \[Cross] a\!\(\*SuperscriptBox[\(\[RightBracketingBar]\), \(2\)]\)

(We can compute the higher dimensional result using the similar geometric algebra expression:

\!\(\*SuperscriptBox[\(a\), \(*\)]\) = b \[CenterDot] (b \[Wedge] a )/\[LeftBracketingBar](b \[Wedge] a \!\(\*SuperscriptBox[\()\), \(2\)]\)\[RightBracketingBar]
\!\(\*SuperscriptBox[\(b\), \(*\)]\) = a \[CenterDot] (a \[Wedge] b )/\[LeftBracketingBar](b \[Wedge] a \!\(\*SuperscriptBox[\()\), \(2\)]\)\[RightBracketingBar]
)

(This function returns the 3D result for a 2D subspace.)

Example (returning {1,0,1,0}):
\[IndentingNewLine]Module[{a,b,r},\[IndentingNewLine]a = {\!\(\*SubscriptBox[\(f\), \(1\)]\), \!\(\*SubscriptBox[\(f\), \(2\)]\), \!\(\*SubscriptBox[\(f\), \(3\)]\)} ;\[IndentingNewLine]b = {\!\(\*SubscriptBox[\(g\), \(1\)]\), \!\(\*SubscriptBox[\(g\), \(2\)]\), \!\(\*SubscriptBox[\(g\), \(3\)]\)} ;\[IndentingNewLine]r = reciprocalsForTwoDimSubspace[{a,b}] ;\[IndentingNewLine]Simplify[{a . r[[1]], a . r[[2]], b . r[[2]], b . r[[1]]},\[IndentingNewLine]{\!\(\*SubscriptBox[\(f\), \(1\)]\), \!\(\*SubscriptBox[\(f\), \(2\)]\), \!\(\*SubscriptBox[\(f\), \(3\)]\),\!\(\*SubscriptBox[\(g\), \(1\)]\), \!\(\*SubscriptBox[\(g\), \(2\)]\), \!\(\*SubscriptBox[\(g\), \(3\)]\)} \[Element] Reals]\[IndentingNewLine]]
" ;
reciprocalsForTwoDimSubspace[{a_, b_}] := Module[{cross},
cross = Cross[ a, b ] ;

{Cross[ b, cross], Cross[cross, a]}/(cross . cross)
] ;


(* Based on a ListLinePlot version posted in: http://mathematica.stackexchange.com/a/37228/10 *)
ClearAll[springPoints]
springPoints::usage = "springPoints[ point1, point2, numberOfTurns, height, fractionToDrawAsLinesAtEnds ].  Example:

ListLinePlot[springPoints[{1,2},{3,5}], AspectRatio\[Rule]Automatic ]" ;
springPoints[ a1_List, a2_List, n_Integer:8,h_:.05, f_: 0.1 ] :=Module[{n1, d, nd, r, r1 },

n1 = Norm[a1] ;
d = a2 - a1 ;
nd = Norm[d] ;
r = RotationMatrix[ArcTan @@  d ] ;
r1 = r . {n1, 0} ;

{
Table[ a1 -r1 + r . { n1 + nd f + t (1 - 2f) nd, h Sin[ 2 Pi n t]}, {t, 0, 1, 0.01 } ],
Table[ a1 -r1 + r . { n1 + nd f + (1 - 2f) nd + t f nd, 0}, {t, 0, 1, 0.01 } ],
Table[ a1 -r1 + r . { n1 +t f nd, 0}, {t, 0, 1, 0.01 } ]
}
]

(*Show[
ListLinePlot[#, AspectRatio\[Rule]Automatic, PlotStyle \[Rule] Red, PlotRange \[Rule] {{-10,10},{-10,10}} ]
& /@ {springPoints[{1,2},{3,5}], springPoints[{-1,2},{-3,5}]}
]*)


ClearAll[lblPlot];

lblPlot::usage = "
Clear[f, r]
f[r_] := 4 r/(1 - r)^2
i[r_, delta_] := 1/(1 + f[r] Sin[delta/2]^2)
s = Plot[Evaluate@Table[i[r, d], {r, {.1, .3, .6, .97}}], {d, 0, 4 Pi}, PlotRange -> {0, 1}];
lblPlot[s, {FontFamily -> \"xkcd\", 16}]  " ;

(* given-a-table-of-plots-with-some-parameter-how-would-i-mark-each-of-the-plots-w *)

Options[lblPlot] = {maxArrowedLbls -> 5, maxNonArrowedLbls -> 5, optLblsO -> {}};
lblPlot[s_Graphics, myStyle_List: {FontFamily -> "Times", 16}, OptionsPattern[]] :=

 (* Thanks to @WReach, @jVincent and @chris @Rojo for their useful help and code *)
 (* Errors, bugs and bad coding due to belisarius*)

 Module[{myLabel, copyToNewNB, exportLbls, printLbls, u, plotRsrv, 
         safeGuard = {"FeboAsoma"}, optLbls},

  myLabel[{str_, {p1_, p2_, p3_}}] :=
   {Thick, Arrow@BezierCurve[{p3, p2, p1}], 
    Inset[Style[str, myStyle], p3, Background -> White]};

  myLabel[{str_, p1 : {_, _}}] :=
   {Thick, Inset[Style[str, myStyle], p1, Background -> White]};

  copyToNewNB[plot_, list_] := Module[{nb},
    nb = NotebookCreate[];
    NotebookWrite[nb, Cell[BoxData@ToBoxes@plot, "Output"]];
    printLbls[nb, list];
    ];

  exportLbls[list_] := Module[{nb},
    nb = NotebookCreate[];
    printLbls[nb, list];
    ];

  printLbls[nb_, 
    list_] := (NotebookWrite[nb, 
     Cell["Reserve the following expression in your Notebook to \
restore your Labels and Arrows the next time you need to include them \
in the Plot", "Subsection", CellMargins -> {{50, 50}, Inherited}]];
    NotebookWrite[nb, 
     Cell[BoxData@ToBoxes@Join[safeGuard, list, safeGuard], 
      "Output"]];);

  u = Array[(PlotRange /. Options[s, PlotRange])[[All, 1]] +
      Flatten[Differences /@ (PlotRange /. Options[s, PlotRange])/4] # &, 3];

  optLbls = OptionValue[optLblsO];

  Panel@DynamicModule[{pts1 = {}, pts2 = {}, lbl1 = {}, lbl2 = {}, varRsrv = "Label Import Area"},

    If[Head[optLbls] == List && Length@optLbls == 6 && 
      optLbls[[1]] == optLbls[[-1]] == safeGuard[[1]],
     {pts1 = optLbls[[2]], pts2 = optLbls[[3]], lbl1 = optLbls[[4]], 
      lbl2 = optLbls[[5]]}];

    Column[
     {Dynamic@
       Show[
        plotRsrv = Show[s, Epilog -> myLabel /@ Join @@
             {MapIndexed[{lbl1[[#2[[1]]]], #1} &, Partition[pts1, 3]],
              MapIndexed[{lbl2[[#2[[1]]]], #1} &, pts2]}, 
          ImageSize -> 500],
        Graphics[{

          Dynamic@MapIndexed[
            With[{i = #2[[1]]}, Locator[Dynamic[pts1[[i]]]]] &, pts1],

          Dynamic@MapIndexed[
            With[{i = #2[[1]]}, Locator[Dynamic[pts2[[i]]]]] &, pts2]},
         PlotRange -> {{0, 1}, {0, 1}}]],

      InputField[Dynamic@varRsrv, FieldSize -> 55, 
       FieldHint -> "Label Import Area"],

      Row[{
        Button["Add Labeled Arrow", 
         If[Length@pts1 < 3 OptionValue[maxArrowedLbls], 
          AppendTo[lbl1, "Arrow"]; pts1 = pts1~Join~(u)]],
        Button["Add Label", 
         If[Length@pts2 < 
           OptionValue[maxNonArrowedLbls], (AppendTo[lbl2, "Label"]; 
           AppendTo[pts2, u[[2]]])]],
        Button["Copy to new .nb", 
         copyToNewNB[plotRsrv, {pts1, pts2, lbl1, lbl2}]],
        Button["Export Labels", exportLbls[{pts1, pts2, lbl1, lbl2}]],
        Button["Import Labels",
         (*validate the labels set, then import *)
         If[
           Head[varRsrv] == List && Length@varRsrv == 6 && 
            varRsrv[[1]] == varRsrv[[-1]] == safeGuard[[1]],
           {pts1 = varRsrv[[2]], pts2 = varRsrv[[3]], 
            lbl1 = varRsrv[[4]], lbl2 = varRsrv[[5]]}, 
           MessageDialog[
            "You're trying to Import a label set not created by \"Export Labels\""],

           MessageDialog[{Head[varRsrv], 
             varRsrv[[1]] == varRsrv[[-1]] == safeGuard}]]
          ;]}],

      Dynamic@Grid[Transpose[{
          (*arrows*)
          {""}~Join~PadRight[Row[{#,
                InputField[Dynamic[lbl1[[#]]], String],
                Button["Delete" <> ToString@#,
                 (lbl1 = Drop[lbl1, {#, #}];
                  pts1 = Drop[pts1, {3 # - 2, 3 #}])]}] & /@ 
             Range@(Length@pts1/3), Max[Length@lbl1, Length@lbl2], ""],
          (*non- arrows*)
          {""}~Join~PadRight[Row[{#,
                InputField[Dynamic[lbl2[[#]]], String],
                Button["Delete" <> ToString@#,
                 (lbl2 = Drop[lbl2, {#, #}];
                  pts2 = Drop[pts2, {#}])]}] & /@ Range@(Length@pts2),
             Max[Length@lbl1, Length@lbl2], ""]
          }], ItemSize -> 30]}]]
  ]

(*Begin["`Private`"]
positionlabel[g_Graphics,{label_,x_}]:=Module[{p,b,bd,xi,m,ivp,sc},p=PlotRange[g];
b=ImagePad[ImagePad[Binarize@Show[g,ImagePadding->0],-1],1,Black];
bd=ImageDimensions[b];
xi=bd MapThread[Rescale,{x,p}];
m=MinFilter[b,1+Reverse[Rasterize[TraditionalForm@label,"RasterSize"]/2]];
ivp=ImageValuePositions[m,1];
sc=If[ivp=={},x,Scaled[First[Nearest[ivp,xi]]/bd]];
Graphics@Inset[label,sc,Center]]
End[]

addlabels[g_Graphics,labels_]:=Fold[Show[#1,positionlabel[##]]&,g,labels]

addlabels::usage = "The labels must be supplied as a list like {{label1,{x1,y1}},{label2,{x2,y2}},...}.
Here's an example:g=Plot[Sin[x],{x,0,10},Frame\[Rule]True,Epilog\[Rule]{PointSize[Large],Point[{#,Sin[#]}&/@Range[0,10]]}];

labels={Style[#,20],{#,Sin[#]}}&/@Range[0,10];"*)


End[]
