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
NotebookDataLength[    159260,       2861]
NotebookOptionsPosition[    159840,       2858]
NotebookOutlinePosition[    160183,       2873]
CellTagsIndexPosition[    160140,       2870]
WindowFrame->Normal*)

(* Beginning of Notebook Content *)
Notebook[{

Cell[CellGroupData[{
Cell[BoxData[
 RowBox[{
  RowBox[{"Manipulate", "[", "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{"tick", ";", "\[IndentingNewLine]", 
     RowBox[{"If", " ", "[", " ", 
      RowBox[{"bRefreshPlot", ",", 
       RowBox[{"(", " ", "\[IndentingNewLine]", 
        RowBox[{
         RowBox[{"plot", " ", "=", " ", 
          RowBox[{"ParametricPlot3D", "[", "\[IndentingNewLine]", 
           RowBox[{
            RowBox[{"f", "[", 
             RowBox[{"fn", ",", " ", "av", ",", "bv", ",", 
              RowBox[{"{", 
               RowBox[{"u", ",", "v"}], "}"}]}], "]"}], ",", 
            RowBox[{"{", 
             RowBox[{"u", ",", 
              RowBox[{"-", "av"}], ",", "av"}], "}"}], ",", " ", 
            RowBox[{"{", 
             RowBox[{"v", ",", " ", 
              RowBox[{"-", "bv"}], ",", "bv"}], "}"}], ",", " ", 
            RowBox[{"ImageSize", "\[Rule]", "300"}], ",", " ", 
            RowBox[{"PerformanceGoal", "\[Rule]", "\"\<Quality\>\""}]}], 
           "\[IndentingNewLine]", "]"}]}], " ", ";", "\[IndentingNewLine]", 
         RowBox[{"bRefreshPlot", " ", "=", " ", "False"}]}], " ", ")"}], 
       "\[IndentingNewLine]", ","}], " ", "]"}], " ", ";", 
     "\[IndentingNewLine]", 
     RowBox[{"If", " ", "[", " ", 
      RowBox[{"bRefreshPointDependent", ",", 
       RowBox[{"(", "\[IndentingNewLine]", 
        RowBox[{
         RowBox[{
          RowBox[{"{", 
           RowBox[{"fp", ",", " ", "fup", ",", " ", "fvp"}], "}"}], " ", "=", 
          " ", 
          RowBox[{"{", 
           RowBox[{
            RowBox[{"f", "[", 
             RowBox[{"fn", ",", " ", "av", ",", " ", "bv", ",", "p"}], "]"}], 
            ",", 
            RowBox[{"fu", "[", 
             RowBox[{"fn", ",", " ", "av", ",", " ", "bv", ",", "p"}], "]"}], 
            ",", 
            RowBox[{"fv", "[", 
             RowBox[{"fn", ",", " ", "av", ",", " ", "bv", ",", " ", "p"}], 
             "]"}]}], "}"}]}], "  ", ";", "\[IndentingNewLine]", 
         RowBox[{"r", " ", "=", " ", 
          RowBox[{"reciprocalsForTwoDimSubspace", "[", " ", 
           RowBox[{"{", 
            RowBox[{"fup", ",", " ", "fvp"}], "}"}], " ", "]"}]}], " ", ";", 
         "\[IndentingNewLine]", "\[IndentingNewLine]", 
         RowBox[{"bRefreshPointDependent", " ", "=", " ", "False"}], " ", 
         ";"}], "\[IndentingNewLine]", ")"}], ","}], "]"}], " ", ";", 
     "\[IndentingNewLine]", "\[IndentingNewLine]", 
     RowBox[{"Column", "[", 
      RowBox[{"{", "\[IndentingNewLine]", 
       RowBox[{"Show", "[", 
        RowBox[{"{", "\[IndentingNewLine]", 
         RowBox[{"plot", ",", "\[IndentingNewLine]", 
          RowBox[{"Graphics3D", "[", 
           RowBox[{"{", "\[IndentingNewLine]", "\[IndentingNewLine]", 
            RowBox[{"Black", ",", "\[IndentingNewLine]", 
             RowBox[{"Arrowheads", "[", "0.03", "]"}], ",", 
             "\[IndentingNewLine]", 
             RowBox[{"Arrow", "[", 
              RowBox[{"Tube", "[", 
               RowBox[{
                RowBox[{"{", 
                 RowBox[{"fp", ",", " ", 
                  RowBox[{"fp", " ", "+", " ", 
                   RowBox[{"scale", " ", "fup"}]}]}], "}"}], ",", "0.02"}], 
               "]"}], "]"}], ",", "\[IndentingNewLine]", 
             RowBox[{"Arrow", "[", 
              RowBox[{"Tube", "[", 
               RowBox[{
                RowBox[{"{", 
                 RowBox[{"fp", ",", " ", 
                  RowBox[{"fp", " ", "+", " ", 
                   RowBox[{"scale", " ", "fvp"}]}]}], "}"}], ",", "0.02"}], 
               "]"}], "]"}], ",", "\[IndentingNewLine]", "Blue", ",", 
             "\[IndentingNewLine]", 
             RowBox[{"Arrow", "[", 
              RowBox[{"Tube", "[", 
               RowBox[{
                RowBox[{"{", 
                 RowBox[{"fp", ",", " ", 
                  RowBox[{"fp", " ", "+", " ", 
                   RowBox[{"scale", " ", 
                    RowBox[{"r", "[", 
                    RowBox[{"[", "1", "]"}], "]"}]}]}]}], "}"}], ",", 
                "0.02"}], "]"}], "]"}], ",", "\[IndentingNewLine]", 
             RowBox[{"Arrow", "[", 
              RowBox[{"Tube", "[", 
               RowBox[{
                RowBox[{"{", 
                 RowBox[{"fp", ",", " ", 
                  RowBox[{"fp", " ", "+", " ", 
                   RowBox[{"scale", " ", 
                    RowBox[{"r", "[", 
                    RowBox[{"[", "2", "]"}], "]"}]}]}]}], "}"}], ",", 
                "0.02"}], "]"}], "]"}], ",", "\[IndentingNewLine]", 
             RowBox[{"Lighter", "[", "Gray", "]"}], ",", 
             "\[IndentingNewLine]", 
             RowBox[{"Opacity", "[", "0.5", "]"}], ",", "\[IndentingNewLine]", 
             RowBox[{"Polygon", "[", 
              RowBox[{"{", " ", 
               RowBox[{
                RowBox[{"fp", " ", "+", " ", "fup", " ", "+", " ", "fvp"}], 
                ",", 
                RowBox[{"fp", " ", "-", " ", "fup", " ", "+", " ", "fvp"}], 
                ",", " ", 
                RowBox[{"fp", " ", "-", " ", "fup", " ", "-", " ", "fvp"}], 
                ",", " ", 
                RowBox[{"fp", " ", "+", " ", "fup", " ", "-", " ", "fvp"}]}], 
               " ", "}"}], "]"}]}], "\[IndentingNewLine]", "}"}], 
           "\[IndentingNewLine]", "]"}]}], "}"}], "]"}], 
       "\[IndentingNewLine]", "}"}], " ", "]"}]}], "\[IndentingNewLine]", ",",
     "\[IndentingNewLine]", 
    RowBox[{"Grid", "[", 
     RowBox[{"{", "\[IndentingNewLine]", 
      RowBox[{
       RowBox[{"{", "\[IndentingNewLine]", 
        RowBox[{
         RowBox[{"Slider2D", "[", " ", 
          RowBox[{
           RowBox[{"Dynamic", "[", 
            RowBox[{"p", ",", " ", 
             RowBox[{
              RowBox[{"(", " ", "\[IndentingNewLine]", 
               RowBox[{
                RowBox[{"p", " ", "=", " ", "#"}], " ", ";", 
                "\[IndentingNewLine]", 
                RowBox[{"bRefreshPointDependent", " ", "=", " ", "True"}], 
                " ", ";", "\[IndentingNewLine]", 
                RowBox[{"tick", "=", 
                 RowBox[{"Not", "[", "tick", "]"}]}]}], ")"}], "&"}]}], "]"}],
            "\[IndentingNewLine]", ",", "\[IndentingNewLine]", 
           RowBox[{"{", 
            RowBox[{
             RowBox[{"{", 
              RowBox[{
               RowBox[{"-", "1"}], ",", 
               RowBox[{"-", "1"}]}], "}"}], ",", 
             RowBox[{"{", 
              RowBox[{"1", ",", "1"}], "}"}]}], "}"}]}], " ", 
          "\[IndentingNewLine]", "]"}], ",", "\[IndentingNewLine]", 
         RowBox[{"Row", "[", 
          RowBox[{"{", 
           RowBox[{
            RowBox[{"Text", "[", "\"\<p = \>\"", "]"}], ",", 
            RowBox[{"Dynamic", "@", 
             RowBox[{"MatrixForm", "@", "p"}]}]}], " ", "}"}], "]"}]}], 
        "\[IndentingNewLine]", "}"}], ",", "\[IndentingNewLine]", 
       RowBox[{"{", "\[IndentingNewLine]", 
        RowBox[{
         RowBox[{"Slider", "[", " ", 
          RowBox[{
           RowBox[{"Dynamic", "[", 
            RowBox[{"av", ",", " ", 
             RowBox[{
              RowBox[{"(", " ", "\[IndentingNewLine]", 
               RowBox[{
                RowBox[{"av", " ", "=", " ", 
                 RowBox[{"checkAgainstRange", "[", 
                  RowBox[{"#", ",", " ", "1", ",", "0.05", ",", " ", "2"}], 
                  "]"}]}], " ", ";", "\[IndentingNewLine]", 
                RowBox[{"bRefreshPointDependent", " ", "=", " ", "True"}], 
                " ", ";", "\[IndentingNewLine]", 
                RowBox[{"bRefreshPlot", " ", "=", " ", "True"}], " ", ";", 
                "\[IndentingNewLine]", 
                RowBox[{"tick", "=", 
                 RowBox[{"Not", "[", "tick", "]"}]}]}], ")"}], "&"}]}], "]"}],
            "\[IndentingNewLine]", ",", 
           RowBox[{"{", 
            RowBox[{"0.05", ",", " ", "2"}], "}"}], ",", " ", 
           RowBox[{"Appearance", "\[Rule]", "Tiny"}]}], "\[IndentingNewLine]",
           "]"}], ",", "\[IndentingNewLine]", 
         RowBox[{"Row", "[", 
          RowBox[{"{", 
           RowBox[{
            RowBox[{"Text", "[", "\"\<a = \>\"", "]"}], ",", " ", 
            RowBox[{"Dynamic", "@", "av"}]}], "}"}], "]"}]}], 
        "\[IndentingNewLine]", "}"}], ",", "\[IndentingNewLine]", 
       RowBox[{"{", "\[IndentingNewLine]", 
        RowBox[{
         RowBox[{"Slider", "[", " ", 
          RowBox[{
           RowBox[{"Dynamic", "[", 
            RowBox[{"bv", ",", " ", 
             RowBox[{
              RowBox[{"(", " ", "\[IndentingNewLine]", 
               RowBox[{
                RowBox[{"bv", " ", "=", " ", 
                 RowBox[{"checkAgainstRange", "[", 
                  RowBox[{"#", ",", " ", "1", ",", "0.05", ",", " ", "2"}], 
                  "]"}]}], " ", ";", "\[IndentingNewLine]", 
                RowBox[{"bRefreshPointDependent", " ", "=", " ", "True"}], 
                " ", ";", "\[IndentingNewLine]", 
                RowBox[{"bRefreshPlot", " ", "=", " ", "True"}], " ", ";", 
                "\[IndentingNewLine]", 
                RowBox[{"tick", "=", 
                 RowBox[{"Not", "[", "tick", "]"}]}]}], ")"}], "&"}]}], "]"}],
            "\[IndentingNewLine]", ",", 
           RowBox[{"{", 
            RowBox[{"0.05", ",", " ", "2"}], "}"}], ",", " ", 
           RowBox[{"Appearance", "\[Rule]", "Tiny"}]}], "\[IndentingNewLine]",
           "]"}], ",", "\[IndentingNewLine]", 
         RowBox[{"Row", "[", 
          RowBox[{"{", 
           RowBox[{
            RowBox[{"Text", "[", "\"\<b = \>\"", "]"}], ",", " ", 
            RowBox[{"Dynamic", "@", "bv"}]}], "}"}], "]"}]}], 
        "\[IndentingNewLine]", "}"}], ",", "\[IndentingNewLine]", 
       RowBox[{"{", "\[IndentingNewLine]", 
        RowBox[{
         RowBox[{"Slider", "[", " ", 
          RowBox[{
           RowBox[{"Dynamic", "[", 
            RowBox[{"scale", ",", " ", 
             RowBox[{
              RowBox[{"(", " ", "\[IndentingNewLine]", 
               RowBox[{
                RowBox[{"scale", " ", "=", " ", 
                 RowBox[{"checkAgainstRange", "[", 
                  RowBox[{"#", ",", "0.3", ",", "0.05", ",", " ", "1"}], 
                  "]"}]}], " ", ";", "\[IndentingNewLine]", 
                RowBox[{"tick", "=", 
                 RowBox[{"Not", "[", "tick", "]"}]}]}], ")"}], "&"}]}], "]"}],
            "\[IndentingNewLine]", ",", 
           RowBox[{"{", 
            RowBox[{"0.05", ",", " ", "1"}], "}"}], ",", " ", 
           RowBox[{"Appearance", "\[Rule]", "Tiny"}]}], "\[IndentingNewLine]",
           "]"}], ",", "\[IndentingNewLine]", 
         RowBox[{"Row", "[", 
          RowBox[{"{", 
           RowBox[{
            RowBox[{"Text", "[", "\"\<scale = \>\"", "]"}], ",", " ", 
            RowBox[{"Dynamic", "@", "scale"}]}], "}"}], "]"}]}], 
        "\[IndentingNewLine]", "}"}], ",", "\[IndentingNewLine]", 
       RowBox[{"{", "\[IndentingNewLine]", 
        RowBox[{
         RowBox[{"Dynamic", "@", 
          RowBox[{"SetterBar", "[", 
           RowBox[{
            RowBox[{"Dynamic", "[", 
             RowBox[{"fn", ",", " ", 
              RowBox[{
               RowBox[{"(", " ", "\[IndentingNewLine]", 
                RowBox[{
                 RowBox[{"fn", "=", " ", "#"}], " ", ";", 
                 "\[IndentingNewLine]", 
                 RowBox[{"bRefreshPointDependent", " ", "=", " ", "True"}], 
                 " ", ";", "\[IndentingNewLine]", 
                 RowBox[{"bRefreshPlot", " ", "=", " ", "True"}], " ", ";", 
                 "\[IndentingNewLine]", "\[IndentingNewLine]", 
                 RowBox[{"tick", "=", 
                  RowBox[{"Not", "[", "tick", "]"}]}]}], ")"}], "&"}]}], 
             "]"}], "\[IndentingNewLine]", ",", " ", 
            RowBox[{
             RowBox[{
              RowBox[{"(", 
               RowBox[{"#", " ", "\[Rule]", "  ", 
                RowBox[{"TraditionalForm", "[", " ", 
                 RowBox[{
                  RowBox[{"zFunc", "[", 
                   RowBox[{"[", "#", "]"}], "]"}], "[", 
                  RowBox[{"x", " ", ",", "y", ",", " ", "a", ",", " ", "b"}], 
                  " ", "]"}], "]"}]}], ")"}], "&"}], "/@", " ", 
             RowBox[{"Range", "[", "3", "]"}]}]}], "\[IndentingNewLine]", 
           "]"}]}], ",", "\[IndentingNewLine]", 
         RowBox[{"Text", "[", "\"\<z(x, y)\>\"", "]"}]}], 
        "\[IndentingNewLine]", "}"}]}], "\[IndentingNewLine]", "}"}], "]"}], 
    "\[IndentingNewLine]", ",", 
    RowBox[{"{", 
     RowBox[{
      RowBox[{"{", 
       RowBox[{"scale", ",", "0.3"}], "}"}], ",", "None"}], "}"}], 
    "\[IndentingNewLine]", ",", 
    RowBox[{"{", 
     RowBox[{
      RowBox[{"{", 
       RowBox[{"av", ",", "1"}], "}"}], ",", " ", "None"}], "}"}], 
    "\[IndentingNewLine]", ",", 
    RowBox[{"{", 
     RowBox[{
      RowBox[{"{", 
       RowBox[{"bv", ",", " ", "1"}], "}"}], ",", " ", "None"}], "}"}], 
    "\[IndentingNewLine]", ",", 
    RowBox[{"{", 
     RowBox[{
      RowBox[{"{", 
       RowBox[{"tick", ",", "False"}], "}"}], ",", "None"}], "}"}], 
    "\[IndentingNewLine]", ",", 
    RowBox[{"{", 
     RowBox[{
      RowBox[{"{", 
       RowBox[{"bRefreshPointDependent", ",", " ", "True"}], "}"}], ",", " ", 
      "None"}], "}"}], "\[IndentingNewLine]", ",", 
    RowBox[{"{", 
     RowBox[{
      RowBox[{"{", 
       RowBox[{"bRefreshPlot", ",", " ", "True"}], "}"}], ",", " ", "None"}], 
     "}"}], "\[IndentingNewLine]", ",", 
    RowBox[{"{", 
     RowBox[{"plot", ",", " ", "None"}], "}"}], "\[IndentingNewLine]", ",", 
    RowBox[{"{", 
     RowBox[{
      RowBox[{"{", 
       RowBox[{"fn", ",", " ", "2"}], "}"}], ",", " ", "None"}], "}"}], 
    "\[IndentingNewLine]", ",", 
    RowBox[{"{", 
     RowBox[{"fp", ",", " ", "None"}], "}"}], "\[IndentingNewLine]", ",", 
    RowBox[{"{", 
     RowBox[{"fup", ",", " ", "None"}], "}"}], "\[IndentingNewLine]", ",", 
    RowBox[{"{", 
     RowBox[{"fvp", ",", " ", "None"}], "}"}], "\[IndentingNewLine]", ",", 
    RowBox[{"{", 
     RowBox[{"r", ",", " ", "None"}], "}"}], "\[IndentingNewLine]", ",", 
    RowBox[{"{", 
     RowBox[{
      RowBox[{"{", 
       RowBox[{"p", ",", 
        RowBox[{"{", 
         RowBox[{
          RowBox[{"1", "/", "2"}], ",", 
          RowBox[{"1", "/", "2"}]}], "}"}]}], " ", "}"}], ",", " ", "None"}], 
     "}"}], "\[IndentingNewLine]", "\[IndentingNewLine]", ",", 
    RowBox[{"TrackedSymbols", "\[RuleDelayed]", 
     RowBox[{"{", "tick", "}"}]}], "\[IndentingNewLine]", ",", 
    RowBox[{"ControlPlacement", "\[Rule]", "Left"}], "\[IndentingNewLine]", 
    ",", 
    RowBox[{"SaveDefinitions", "\[Rule]", "True"}], "\[IndentingNewLine]", 
    ",", " ", 
    RowBox[{"Initialization", " ", "\[RuleDelayed]", " ", 
     RowBox[{"{", "\[IndentingNewLine]", 
      RowBox[{"(*", 
       RowBox[{
        RowBox[{
         RowBox[{
          RowBox[{"ClearAll", "[", " ", "reciprocalsForTwoDimSubspace", "]"}],
           "\[IndentingNewLine]", 
          RowBox[{"reciprocalsForTwoDimSubspace", "::", "usage"}]}], " ", "=",
          " ", "\"\<For a surface spanned by vectors {a,b}, compute the \
reciprocal (or dual) basis for that subspace.  That basis in 3D is\n\n\
\!\(\*SuperscriptBox[\(a\), \(*\)]\) = -b . (b \[Cross] a )/|(b \[Cross] a \
)^2|\n\!\(\*SuperscriptBox[\(b\), \(*\)]\) = -a . (a \[Cross] b )/|(b \
\[Cross] a )^2|\n\n(We can compute the higher dimensional result using the \
similar geometric algebra expression:\n\n\!\(\*SuperscriptBox[\(a\), \(*\)]\) \
= b . (b \[Wedge] a )/|(b \[Wedge] a )^2|\n\!\(\*SuperscriptBox[\(b\), \(*\)]\
\) = a . (a \[Wedge] b )/|(b \[Wedge] a )^2|\n)\n\n(This function returns the \
3D result for a 2D subspace.)\n\nExample (returning {1,0,1,0}):\n\
\[IndentingNewLine]Module[{a,b,r},\[IndentingNewLine]a = {\!\(\*SubscriptBox[\
\(f\), \(1\)]\), \!\(\*SubscriptBox[\(f\), \(2\)]\), \
\!\(\*SubscriptBox[\(f\), \(3\)]\)} ;\[IndentingNewLine]b = \
{\!\(\*SubscriptBox[\(g\), \(1\)]\), \!\(\*SubscriptBox[\(g\), \(2\)]\), \!\(\
\*SubscriptBox[\(g\), \(3\)]\)} ;\[IndentingNewLine]r = \
reciprocalsForTwoDimSubspace[{a,b}] ;\[IndentingNewLine]Simplify[{a . r[[1]], \
a . r[[2]], b . r[[2]], b . \
r[[1]]},\[IndentingNewLine]{\!\(\*SubscriptBox[\(f\), \(1\)]\), \
\!\(\*SubscriptBox[\(f\), \(2\)]\), \!\(\*SubscriptBox[\(f\), \
\(3\)]\),\!\(\*SubscriptBox[\(g\), \(1\)]\), \!\(\*SubscriptBox[\(g\), \(2\)]\
\), \!\(\*SubscriptBox[\(g\), \(3\)]\)} \[Element] Reals]\[IndentingNewLine]]\
\n\>\""}], " ", ";"}], "*)"}], "\[IndentingNewLine]", 
      RowBox[{
       RowBox[{
        RowBox[{"reciprocalsForTwoDimSubspace", "[", 
         RowBox[{"{", 
          RowBox[{"a_", ",", " ", "b_"}], "}"}], "]"}], " ", ":=", " ", 
        RowBox[{"Module", "[", 
         RowBox[{
          RowBox[{"{", "cross", "}"}], ",", "\[IndentingNewLine]", 
          RowBox[{
           RowBox[{"cross", " ", "=", " ", 
            RowBox[{"Cross", "[", " ", 
             RowBox[{"a", ",", " ", "b"}], " ", "]"}]}], " ", ";", 
           "\[IndentingNewLine]", "\[IndentingNewLine]", 
           RowBox[{
            RowBox[{"{", 
             RowBox[{
              RowBox[{"Cross", "[", " ", 
               RowBox[{"b", ",", " ", "cross"}], "]"}], ",", " ", 
              RowBox[{"Cross", "[", 
               RowBox[{"cross", ",", " ", "a"}], "]"}]}], "}"}], "/", 
            RowBox[{"(", 
             RowBox[{"cross", " ", ".", " ", "cross"}], ")"}]}]}]}], 
         "\[IndentingNewLine]", "]"}]}], " ", ";", "\[IndentingNewLine]", 
       "\[IndentingNewLine]", 
       RowBox[{"(*", 
        RowBox[{"ClearAll", "[", 
         RowBox[{
         "f", ",", "fu", ",", "fv", ",", "f1", ",", "f2", ",", "zFunc", ",", 
          "paraboloid", ",", " ", "saddle", ",", " ", "sine"}], "]"}], "*)"}],
        "\[IndentingNewLine]", 
       RowBox[{"paraboloid", " ", ":=", " ", 
        RowBox[{
         RowBox[{
          RowBox[{"-", 
           RowBox[{
            RowBox[{"(", 
             RowBox[{"#1", "/", "#3"}], ")"}], "^", "2"}]}], "+", 
          RowBox[{
           RowBox[{"(", 
            RowBox[{"#2", "/", "#4"}], ")"}], "^", "2"}]}], " ", "&"}]}], " ",
        ";", "\[IndentingNewLine]", 
       RowBox[{"saddle", " ", ":=", " ", 
        RowBox[{
         RowBox[{
          RowBox[{
           RowBox[{"(", 
            RowBox[{"#1", "/", "#3"}], ")"}], "^", "2"}], "+", 
          RowBox[{
           RowBox[{"(", 
            RowBox[{"#2", "/", "#4"}], ")"}], "^", "2"}]}], " ", "&"}]}], " ",
        ";", "\[IndentingNewLine]", 
       RowBox[{"sine", " ", ":=", " ", 
        RowBox[{
         RowBox[{"Sin", "[", 
          RowBox[{
           RowBox[{"(", 
            RowBox[{"#1", "/", "#3"}], ")"}], "+", 
           RowBox[{
            RowBox[{"(", 
             RowBox[{"#2", "/", "#4"}], ")"}], "^", "2"}]}], "]"}], " ", 
         "&"}]}], " ", ";", "\[IndentingNewLine]", 
       RowBox[{"zFunc", " ", ":=", " ", 
        RowBox[{"{", 
         RowBox[{"paraboloid", ",", " ", "saddle", ",", " ", "sine"}], 
         "}"}]}], "  ", ";", "\[IndentingNewLine]", 
       RowBox[{
        RowBox[{"f", "[", "n_Integer", "]"}], " ", ":=", " ", 
        RowBox[{
         RowBox[{"{", 
          RowBox[{"#1", ",", " ", "#2", ",", " ", 
           RowBox[{
            RowBox[{"zFunc", " ", "[", 
             RowBox[{"[", "n", "]"}], "]"}], "[", "##", "]"}]}], "}"}], " ", 
         "&"}]}], " ", ";", "\[IndentingNewLine]", "\[IndentingNewLine]", 
       RowBox[{"(*", " ", 
        RowBox[{
        "Replace", " ", "trick", " ", "to", " ", "evaluate", " ", "before", 
         " ", "numeric", " ", 
         RowBox[{"subst", ":", " ", 
          ButtonBox[
           RowBox[{
            RowBox[{"http", ":"}], "//", 
            RowBox[{
             RowBox[{
              RowBox[{
               RowBox[{"mathematica", ".", "stackexchange", ".", "com"}], "/",
                "a"}], "/", "31071"}], "/", "10"}]}],
           BaseStyle->"Hyperlink",
           ButtonData->{
             URL["http://mathematica.stackexchange.com/a/31071/10"], None},
           ButtonNote->"http://mathematica.stackexchange.com/a/31071/10"]}]}],
         " ", "*)"}], "\[IndentingNewLine]", 
       RowBox[{
        RowBox[{"f1", "[", "n_Integer", "]"}], " ", ":=", " ", 
        RowBox[{
         RowBox[{
          RowBox[{"D", "[", 
           RowBox[{
            RowBox[{
             RowBox[{"f", "[", "n", "]"}], "[", 
             RowBox[{"t", ",", "#2", ",", "#3", ",", " ", "#4"}], "]"}], ",", 
            "t"}], "]"}], "/.", " ", 
          RowBox[{"t", " ", "\[Rule]", " ", "#1"}]}], "&"}]}], "  ", ";", 
       "\[IndentingNewLine]", 
       RowBox[{
        RowBox[{"f2", "[", "n_Integer", "]"}], " ", ":=", " ", 
        RowBox[{
         RowBox[{
          RowBox[{"D", "[", 
           RowBox[{
            RowBox[{
             RowBox[{"f", "[", "n", "]"}], "[", 
             RowBox[{"#1", ",", "t", ",", "#3", ",", "#4"}], "]"}], ",", 
            "t"}], "]"}], "/.", " ", 
          RowBox[{"t", " ", "\[Rule]", " ", "#2"}]}], "&"}]}], ";", 
       "\[IndentingNewLine]", "\[IndentingNewLine]", 
       RowBox[{
        RowBox[{"f", "[", 
         RowBox[{"n_Integer", ",", " ", "s1_", ",", " ", "s2_", ",", 
          RowBox[{"{", 
           RowBox[{"u_", ",", " ", "v_"}], "}"}]}], "]"}], " ", ":=", " ", 
        RowBox[{
         RowBox[{"f", "[", "n", "]"}], "[", 
         RowBox[{"u", ",", "v", ",", " ", "s1", ",", " ", "s2"}], "]"}]}], 
       " ", ";", "\[IndentingNewLine]", 
       RowBox[{
        RowBox[{"fu", "[", 
         RowBox[{"n_Integer", ",", " ", "s1_", ",", " ", "s2_", ",", " ", 
          RowBox[{"{", 
           RowBox[{"u_", ",", " ", "v_"}], "}"}]}], "]"}], " ", ":=", " ", 
        RowBox[{
         RowBox[{"(", 
          RowBox[{"f1", "[", "n", "]"}], ")"}], "[", 
         RowBox[{"u", ",", "v", ",", " ", "s1", ",", " ", "s2"}], "]"}]}], 
       " ", ";", "\[IndentingNewLine]", 
       RowBox[{
        RowBox[{"fv", "[", 
         RowBox[{"n_Integer", ",", " ", "s1_", ",", " ", "s2_", ",", " ", 
          RowBox[{"{", 
           RowBox[{"u_", ",", " ", "v_"}], "}"}]}], "]"}], " ", ":=", " ", 
        RowBox[{
         RowBox[{"(", 
          RowBox[{"f2", "[", "n", "]"}], ")"}], "[", 
         RowBox[{"u", ",", "v", ",", " ", "s1", ",", " ", "s2"}], "]"}]}], 
       " ", ";", "\[IndentingNewLine]", "\[IndentingNewLine]", 
       "\[IndentingNewLine]", "\[IndentingNewLine]", 
       RowBox[{"(*", 
        RowBox[{
         RowBox[{"ClearAll", "[", "checkAgainstRange", "]"}], " ", ";", 
         "\[IndentingNewLine]", 
         RowBox[{
          RowBox[{"checkAgainstRange", "::", "usage"}], " ", "=", " ", 
          "\"\<This is to deal with InputForm Manipulators, that allow \
non-numeric values to be passed, or values that exceed the range specified in \
the Manipulator.\>\""}], " ", ";"}], "*)"}], "\[IndentingNewLine]", 
       RowBox[{
        RowBox[{"checkAgainstRange", "[", 
         RowBox[{
         "v_", ",", "default_", ",", "lowerLimit_", ",", " ", "upperLimit_", 
          ",", " ", 
          RowBox[{"typeFunc_", " ", ":", " ", "NumberQ"}]}], "]"}], " ", ":=",
         " ", "\[IndentingNewLine]", 
        RowBox[{"Module", "[", 
         RowBox[{
          RowBox[{"{", "result", "}"}], ",", "\[IndentingNewLine]", 
          RowBox[{
           RowBox[{"result", " ", "=", " ", 
            RowBox[{"If", " ", "[", " ", 
             RowBox[{
              RowBox[{"typeFunc", "[", "v", "]"}], ",", "v", ",", " ", 
              "default"}], "]"}]}], " ", ";", "\[IndentingNewLine]", 
           "\[IndentingNewLine]", 
           RowBox[{"result", " ", "=", " ", 
            RowBox[{"If", " ", "[", " ", 
             RowBox[{
              RowBox[{"result", " ", "<=", " ", "upperLimit"}], ",", " ", 
              "result", ",", "default"}], " ", "]"}]}], " ", ";", 
           "\[IndentingNewLine]", 
           RowBox[{"result", " ", "=", " ", 
            RowBox[{"If", " ", "[", " ", 
             RowBox[{
              RowBox[{"result", " ", ">=", " ", "lowerLimit"}], ",", " ", 
              "result", ",", "default"}], " ", "]"}]}], " ", ";", 
           "\[IndentingNewLine]", "\[IndentingNewLine]", "result"}]}], 
         "\[IndentingNewLine]", "]"}]}], " ", ";"}], "\[IndentingNewLine]", 
      "}"}]}]}], "\[IndentingNewLine]", "]"}], " "}]], "Input",
 CellChangeTimes->{{3.6028486396694283`*^9, 3.602848766330673*^9}, {
   3.602848830148323*^9, 3.6028488331484947`*^9}, {3.6028489219605746`*^9, 
   3.602848936863427*^9}, {3.6028490538941207`*^9, 3.6028490646217346`*^9}, {
   3.6028491045200167`*^9, 3.6028494323467674`*^9}, {3.602850959563119*^9, 
   3.602851067370285*^9}, {3.60285109805504*^9, 3.6028514589076796`*^9}, {
   3.60285158549592*^9, 3.602851588687103*^9}, {3.6028516222520227`*^9, 
   3.602851968155807*^9}, {3.602852020436797*^9, 3.6028520761599846`*^9}, {
   3.602852156751594*^9, 3.602852218629133*^9}, {3.6028522821767683`*^9, 
   3.602852416044425*^9}, {3.6028524567277517`*^9, 3.602852466002282*^9}, {
   3.6028525899423714`*^9, 3.6028527133024273`*^9}, {3.6028527539827538`*^9, 
   3.6028527809782977`*^9}, {3.602852817434383*^9, 3.602852862229945*^9}, {
   3.602852929659802*^9, 3.6028529756934347`*^9}, {3.602853019798958*^9, 
   3.6028534633343267`*^9}, {3.6028534973262706`*^9, 3.60285350273658*^9}, {
   3.60285362617064*^9, 3.602853693710503*^9}, {3.6028537565910997`*^9, 
   3.6028537926641626`*^9}, {3.602853874124822*^9, 3.602853943529792*^9}, {
   3.602853984843155*^9, 3.602854044392561*^9}, 3.602854075962367*^9, {
   3.602854145036318*^9, 3.6028541629563427`*^9}, {3.602855812585696*^9, 
   3.6028559256001596`*^9}, {3.602856185645034*^9, 3.602856302910741*^9}, {
   3.6028565100935907`*^9, 3.602856524776431*^9}, {3.602856671604829*^9, 
   3.60285680064921*^9}, {3.602856835372196*^9, 3.6028568930454946`*^9}, {
   3.6028569296735897`*^9, 3.602856931532696*^9}, {3.602856966619703*^9, 
   3.6028569672497387`*^9}, {3.6028570401229067`*^9, 3.602857092465901*^9}, {
   3.6028571600187645`*^9, 3.6028571610288224`*^9}, {3.602857220133203*^9, 
   3.60285722288636*^9}, {3.60285725696831*^9, 3.6028572598224735`*^9}, {
   3.6028578273329325`*^9, 3.602857866086149*^9}, {3.6028582981738634`*^9, 
   3.6028583127556973`*^9}, 3.602858367726842*^9, {3.602858413760474*^9, 
   3.602858443441172*^9}, {3.602858534363373*^9, 3.6028585564976387`*^9}, {
   3.602859555551781*^9, 3.602859575162903*^9}, {3.602859706693426*^9, 
   3.6028597254394984`*^9}, {3.6028597634346714`*^9, 
   3.6028597928443537`*^9}, {3.6028598929750805`*^9, 3.60285991639542*^9}, {
   3.602860020275362*^9, 3.6028600411265545`*^9}, {3.6028600944316034`*^9, 
   3.602860153658991*^9}, {3.602860268595565*^9, 3.6028603154392443`*^9}, {
   3.6028603681662602`*^9, 3.602860432978967*^9}, {3.6028605176728115`*^9, 
   3.6028605607142735`*^9}, {3.6028606026306705`*^9, 3.602860668667448*^9}, {
   3.6028607295379295`*^9, 3.602860781440898*^9}, {3.602860821668199*^9, 
   3.6028609412110367`*^9}, {3.602861000450425*^9, 3.602861059334793*^9}, {
   3.602870662669999*^9, 3.6028707038003516`*^9}, {3.6028707357031765`*^9, 
   3.6028707706061726`*^9}, {3.6028708196229763`*^9, 3.602870867511715*^9}, {
   3.6028709058779097`*^9, 3.6028709812252192`*^9}, {3.60287104696898*^9, 
   3.6028711645737066`*^9}, {3.6028712290723953`*^9, 
   3.6028713634710827`*^9}, {3.6028714302049*^9, 3.6028714307259293`*^9}, {
   3.602871482752905*^9, 3.60287157444915*^9}, {3.6028717693822994`*^9, 
   3.602871830146775*^9}, {3.602872022293765*^9, 3.6028720532165337`*^9}, {
   3.602873796906267*^9, 3.6028738520714226`*^9}, {3.6028738841302557`*^9, 
   3.602873890450618*^9}, {3.6028739600155964`*^9, 3.6028739626507473`*^9}, {
   3.6028740534089384`*^9, 3.602874082396596*^9}, {3.602874119761733*^9, 
   3.6028741959690924`*^9}, {3.602874228757968*^9, 3.6028742447188807`*^9}, {
   3.602874550353362*^9, 3.6028745839192815`*^9}, 3.602874622686499*^9, {
   3.602874685133071*^9, 3.60287469141143*^9}, {3.602874935081367*^9, 
   3.6028749389755898`*^9}, 3.602875011336728*^9, 3.6028755716457767`*^9, 
   3.6028757565353518`*^9, 3.602875858316173*^9, 3.6028759039407825`*^9, 
   3.6028759490413623`*^9, {3.602894121669739*^9, 3.602894133861436*^9}, {
   3.6028944050019445`*^9, 3.6028945140381813`*^9}, {3.6028963428377824`*^9, 
   3.602896353563396*^9}, {3.602896656817741*^9, 3.6028966575237813`*^9}, {
   3.6028967617857447`*^9, 3.6028967844800425`*^9}, 3.6028968507148314`*^9, {
   3.6029297985940113`*^9, 3.6029298367221923`*^9}, {3.602930153092288*^9, 
   3.6029302277115555`*^9}, {3.6029302619825163`*^9, 3.602930307720132*^9}, {
   3.6029306128685856`*^9, 3.602930618780924*^9}, {3.6029306685997734`*^9, 
   3.602930668771783*^9}, {3.602932316942053*^9, 3.602932329280759*^9}, {
   3.602932390456258*^9, 3.6029323915713215`*^9}, {3.6029325169134903`*^9, 
   3.6029325402508254`*^9}, {3.602932572206653*^9, 3.602932584078332*^9}}],

Cell[BoxData[
 TagBox[
  StyleBox[
   DynamicModuleBox[{$CellContext`av$$ = 
    0.5720000000000001, $CellContext`bRefreshPlot$$ = 
    False, $CellContext`bRefreshPointDependent$$ = False, $CellContext`bv$$ = 
    0.42, $CellContext`fn$$ = 
    3, $CellContext`fp$$ = {-0.21999999999999997`, -0.10999999999999999`, \
-0.31078733910518835`}, $CellContext`fup$$ = {
    1, 0, 1.6616774015061875`}, $CellContext`fvp$$ = {
    0, 1, -1.1854052392604228`}, $CellContext`p$$ = {-0.21999999999999997`, \
-0.10999999999999999`}, $CellContext`plot$$ = Graphics3D[
     GraphicsComplex[CompressedData["
1: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
p/yhXqf8oV6n/KFep/yhXqf8oV6n/KFep/yhXqf8oV6n/KFep/yhXqegXlcw
kwcoR1au6nPrQ6ia+KDVnIXd0xRvMzvLgytDmHeIadWgb2qasupJqYdTbkcw
r+VvE7A/IU053OPfyuXSo5iXfHij+7LmRnv7H1blLpV9ou5bY9o65zqjPfiV
U51yz/ph8C7TC7w6ZemvTl1S50Dj6kY/XXWuzClRK1sLvxRuD472eK7Zev/K
4K9/Lyx/J5mfC1wd2Ds41+xU7h98vxgnOMbpmqm/F55XCahkZWltlir1VP6g
p/IHPZU/6KlAzyM6V6FzwkP18o5PZ1TMF3DbWYHFPbbcVNE/6odDO51vvuuD
0T/qt6febzXt8MVYX9DP612Ji1Y6p3J79LPs9tDtJs+M+Yv3WKhIm6blPxkc
7zF6Z6/6G3cZ48+d2c9FNX1vxM2LFxNVP10f5mGt4qKDvkczH5K53u1TY99n
qWCfN1YtouvM7S+c3bz8YKEI5mhfZ/3F9tPHPFfP6O+L2/eaHbGv9s5A5mg/
6OaDrlMKBqtTM+eRyu2r9XhunsvuLnO0PxX/rpqzk5f6I3OeHuH25Q+k9dtf
dhdztL90+8fJbRnvK17nCtp/SV3b3vfzNQUc7etVfGCzd7OHMlr/u9z++PGN
6Raz/Jij/SKX2PzDwx+xfaJ9ntdplcaUesoc7ccGmiws6BbMdov2w+L8Inrs
jWKO9qfDqt/95/Nztme0X5Ot4+q7/eOYo32Wb4uTh/WMZTtH+691B16t4pzA
HO1PlPQp/Ep9wfaG9oEVqwTXmZvEHO1vu5q+87v0ku0K/EyQWzXV8aUKbqdz
BRzzhft5V2CwS3CSulYfj2EPZkl1g5a9YI5+wGGf4NI+wWsLOwQfKOwN/KSw
K/ALwn7AGwg7AXcQ9gA+Trx3cPl+weV7BMf7wnyHbhv7T1sckO0Vvy+0l++r
gP5+FfgBvBduL94L2v8bt9Zk5eZ41h/8KfkN6A9+nvwD9AfvSX4A+oNXofkO
/cFz0byG/jx+mr/QH9yV5in0B89L8xG64XmhG/SJyYw/bytjt1jdHPv1BeuD
fib37+EaV8rQB+2X9Hb4cHNzLOsDXu3Z4+z5VkeyPuCfik3MUrJLCM8Xi8x1
wUvxfjVt7aeicSreI3ifAt2/JWwy1l/O14Y9flxtUirbD9blWtmSXW+EvWKO
uLqAb6Gvm5QUjlvQ/q9GDz/W3GSsy2if5VB8u5mPjXgG7WNofcF40H6mScdu
Fy4Z6zXW8R0jVl3T/Ak44s8Fs4fMrjc2meMutG/g3+2evbsRL6H91MV3Zhxq
ZMS9aO/VMdk2sJix7qN9csS+wKXjjDgN7e/OsPtkGmbEA2iP9RrPi/ZYZ/G8
aI91WcQJyh/iBAVxAuwW3ORyrcj1NZI5XgVveKZfw2W1UzheBa9u31TNejOV
dQP3ji1xvZSHEa+Cz4wd7fgs3dABvKNdj2tXjqbJOESRcQjiWMQteF7EMyeD
YltV7XCW8wisI5gvmBeoJzu2s2te1SWG5wW4Tbce/cNXPGO/AV6127YPIys/
Yb8BPu1Tlbetjz9gvwF+dO9G0+llXNlvgPce8NWp6tyL7DfAC47r+yD3HW+2
T/6OsG9C9+jtIWyH4JbXW2w6HRDJ9gbuUqrEu5seht8Gb5rwNHRC8QTWE7zW
4Z7lDmVNYj1RB57Vpv3LZ/tfsp8B9y0R83r6IWMdBJ98zWPU19rGOgi+bPr3
uoluxjoIXi5529zAEcY6CD4yf+6+JZs+Yj3BN46IO/RPh7OsJ/g8nbOe4AP1
flhP8FL632U9wR30cbKe4BP052I9wb11HVhPcHtdN9YT9d675cyshjc39ARf
+6Z7y0I1DD3Blwv7BJ8s7BO8irBP8CnCPsH3CvsE7y/sE7ywsE+u55N94nlR
dw2Yvs4t8UsCPy/4vJ2z4z9ciOPnBX9R+/vrzzmNdRzcJ+1r5Z4mYbxOcZ1z
6DKHvu7xqvADCvyA8D/qH/yPCv/z+f6yCRULPVdCx8y9l54eos7e3dHs0EeD
tys/9OTcIsHKyTrttjd4maaEd9r2YbZzNHOr7WvD05LTlEn9a/a7OyBKmXJi
R9SyV09V+w95utv9SOX2bfX2qmx/Mqzl5g/VghTfHdkS5jw0+gcP3lbKsuBn
oz3+bnTveVYfMp5reEnTYynNgpWn+viVAlkCKt5Zn6ZY/IxI6BsSynxZnuS5
puFpSqnYM9U8Z4QzXzgkLPLiD+N5wWeRDvi74NXs27f0v2twrFO5Hrf9b92M
x+leb1KxB4HGc6H9eO+QqGXpRj9Y166k1Rzp+zZNidDbq9Czbay5bdGDB1X0
A75u2Jt6iwYYOuM9PohpWW/5JOPvIp/dOn/CZi9PY5x4LxgndMP47Vs1+ZhT
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
PjT1cZF3QRn5BeuW9c2Fr6Yhj9RHvQ9dXNL1Kq/73oXvrXj8+LGa4/TCv5qk
HWLddjR+UmTDLW+1/ttNVV+UuM+6jaL6hpNY94No/DtSzhU/PjqIdTtA4/d+
vyK+5tUII46l8V9pHP/lebsY1q0Rjf/q3IPPNb8H3dJf6+MfZHl0pHlqIq/7
XjT+f3JGHLday3oq22j8sxqVdYrYZcxf3Q5vqCW8Q8f6bDLyhU6Z7+umests
QuVcnYx8QberW+ravm4DjllEss7P9f2BKvYHQmeXzHl0R11W2bOdZs/Q2S5z
vtxVJ1o+2Bhkd4nj2FaZ8/qeesKuW+MmQ51ZZ1Oqb6wScexcGn/EYIcTH7Y8
Yp070vjrlg8MMqsczDoXoPHf2eC5ZnT556xzOI2/872sXfJ4xbDOR2n8bov/
GqfZM3SeSuM/6nl/oGlVI461oPHfXeZ2JK+LYc+6nu5q7nzpX01yGPmprpuH
6rh/S1rufEZ+Oj2z//NqJce8dTqdj2adc9L+NOxThQ5tqP9BuQ5ld25xm3UI
pf639nP0c/Q28tPJ1P/umKIJBy49ZR2yiH3dGH/PTDtfqN7wfTMv93pj/D0y
+Xr1hXuF1f0eGOP/3lbrZ7s6ffPJ0JzORn7dg/b9Yp8zxh86UO+/26l9xyem
G/WBCtT/npCqXyYFGvWBOOp/R5PuSzz3GPWBptT/WdqfjPG3zJxHrkrBVovH
J1gY4y+c+bzHlG32tmV9Vxvjf5mp22HlvJfpG5NlxvgX0f7bWmL8VtT/nt3N
XAJf3+Txl6P+W0x+n2yzxo/H/4H6z/loa+nBScb4t1H/58T4AzLntafSweH+
mzI5E3j8+nNdUUIcbg/16B7H43fJ9DOXlMM9GkX2tDLspzDtB/YQ9hNG/Q9u
fHTt4r8e8vjbUf/uE09ZFzoVyON3o/5bLol+OndvGI+/JPVvTfaDebRMtzfl
7rOuT/zOG/WNNN0+ldw9UuYqa436Rn/dnhWnPUNdWhTl+aXq+wTuKd8aV1oR
c8dYF/R9BXeV+FE799Z5b+Tdbvr8VTolr3zR1fsZ6xBL+5nfCX9VUvcPSv2J
+bbXne7H/qq77k+ULAs3mPY8f4v91VLd/yht3E1SGvod4PrGVKobfBL1DUsa
f4FNx49HOwawzvNp/C432ibuqfWUdXan8d8cG7Jh5/pI1vkFjb+b8FdlaPyH
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
/fzQDXzLzG3lF7lEsG7gEU5tixZqGsS6gVf64T34X897rBt4h9RT4VU6HeLz
isGLFLt/t5P1VdYN/OqmPq21/f/QDbzqirF3OjqEsm7g1iU693PuF8W6gY8/
sN32U9E41g18X99cZo42CawbuLdv+6TYLkn8O1nw9qcKlSi/n89/Zt7hoNdT
bX8gdKbvy+qGE1FtGmSPZ53B8xy/bavVl6Az+IOL9vljhkWzzuCB5fPd+HI5
jHUGX1GgbA+vmgGsM3iz2Lf2+xffYp3B59RQ69buPJLP3wbPYddmiVbPhM7g
0Q9rnNrzwp91Bg8r03z+9FlhrDP4i8f+pcop0awz+NIz9SZtSoxjncG7KZOC
PlZKZJ3By+7pq9rG8rnxzPNOTh1+vGgK66xQvXFA6eWer54Y55mDH7Nu+K33
hFjWE9ypT+TAz7UjWU/woHnZ3JwTg1lPcKv+Wzed7feY9QQPfl7/2L6151hP
8BXnn/Rz/Xqa9QS/fPZl9JuSXqwn+NSCA0euCX7CeoK7nZ10tUnt56wneJ8D
nze3fB/DejKvPCRuqa1xnjn4zoRLCx/ZGeeZg69fWaVtn/fG+tKe6p/9h2Rb
ND4iQdyD4OSJexB+vTfByRP3JkB/9BM2bldIrq1x4t4EJ095bwLah2Q5/LFH
TJS4T8HJU96ngPZd4mfVyX/6qbhnwclT3rOA9u/LlF28qrC/uH/ByVPev4D2
RbZZ1E1oeUPcy+DkKe9lQPtTMzYUdE3fwH4M7RuK+xrQvqdd2eq2De4ov97j
4OQp73FA+4jS1e/e+hkg7ndw8pT3O6D9ynae9T0dwsW9D06e8t4HtLc4f/jd
wcvR4j4IJ095HwTa9+7TvLNd/3hxT4STp7wnAu0jfTrs/bo0Udwf4eQp749A
+14rnGO1+hjssC7VXQeQfcIOwf/Jt6VIv2OGHYKHkx3CrsBhb7AfcCuyK9gJ
+AeyH9gDeHGyE7x38AVkD3i/4N3oveM9guP94n2BO9J7xHsBb0HvC/qD471A
Z3DoDz0bUR0Y/hN6gnvf/mvGxEcvWU9wF+FXwbcJvwoeIvwqeG/hV8FjhF8F
nyL8KriH8KvgtsKvgrsKv8rjEX6VufCr4NKvgq8TfvU47dfaKOIB8LwiHgD3
EvEAeIiIB8DXiHgAvK2IB8Av1/o1HgD/Mf3XeAA8QsQD4MEiHgCPFfEA+GIR
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
f8+YKPU+2TP41LNVR2v7GM3InsFzPl93SdvH2IPsGfzJlUGHtH2MsGfwfHf1
86MqkD2DHzvz6OdVh3BlLtkz79vZ6x6u7UtsRPYM/rnnowbavsRgsmfwVicf
rtb2JaKejPW34Im/vmnfiWDP4OM75juj1WlRTwbvHDThodfRa1wf5nV84MD2
YZN3K076dyLmAQXynm+eYZ/mVLcBb0DnPrlR3RW82MUVpbXvR6iXgpv0mTVN
qys2proZ1vFNMaElCoWcVedS3Qz8W4N1jVp4uCvXqW4G7j6kqvvu115K9geZ
3++YV+tSIWZNy2Bljf69j/nh8tt2e61/rlSlOhv453v6+UtjqA4M3mquY4El
W18oVSmuxrqWQnF1aVqXsR61ofN8ltF3NDyvE+0TGEzxFfiLeg0mHp2ZohSn
fsBbUz8/6bskxoN9FxSnGXUJ+m5I4+S6wRb6rkr3oHH7PfQ9kb4HcfsH9L0V
7x3t+2WLeX4sY73OSjrz/vMWJz+aHQqluqjxvbsMfe8uQ3bC+/Opvrea3gvX
/4McQu6/8VVTxfdx2qetVqT3hfZF9+p10WSxz7wVfTcvQf4Z7feSfy5KfhXj
wXmMy+i7MNrfpe/C6+g7KdqfpO+k3+m9oH01+l68lN472r+m76dXKO5F+2L0
HXkI2QPa1/Rt7abFOZXI3tDefdyJIdq+nbfiez3t82f7QT8N6TyZKMo7uM7j
kKWZts/HTXzfp98XKD70O0e0d6TzOiaK7/70uwbFl9ZHtM9P6yPlO8zz0nd/
Pc704fXUl+xnEdkD+Euyh39IB/DzpEM8PRd4RXou/E4THOeNrCJ7xnranex5
M8UD8Ksj6HyJ9fTeMR+x/wfPi/mYc45+roIj2Q94Lto31Y/yCPY/pSv8Y/U1
jXXmPJp+19yL2sPPoL0ftQfH76BHkP3A/ySSP8H5Hmi/ufieM7sz1iOc7wFe
ymX8nYCMeYHzPcC/NOnZ2MTbj88TAM9ydomtti+Uzx8mvuXYFAstHsB5AuAm
4lw7+btOnDsBPiKw711Nf/zOF/z029ddtH3L+N0r59H0+308F3QYcqZrn1Nf
T/O5JeC1+8x6c+zraX4u8GuJJ7vlj7jPzwXeVpxnCD5rUOu5S8zD+bnAW9F+
TowffJfjsQETH73k3+eCn3OdX0fb947nAjcLsv+x4ZTxe2oeD60LeC7kHem5
39S9lGGHeC7w9eIcS/D4Cr0aa/4QzwXeeoS/jfbe8VzgZrQfGOMHDw4x/6nl
dxg/+GiaRxgP8osZz/c3P52k8nkU4Onp6sqVNUddx3jAl5WyyK3dc4Tx8O8u
aR84/i74uveeNbVzMKAb+MxtFkO071l8bgPxNi2OlNHuL/j1HMs7arfJs3b8
9/w08DEbC548xr9XcrDg39nR7wF/Pc/wjvrtbc3c/z1HC3zIyx3P/6sP/Orv
zxVx8vz9uSJOnjhX5NfzQ5w8f39+iJPn788PcfKU54fAf9b3iBhYeIlxfgh4
m3lTymr5GuwBvBJ9R8B4wIvsT12p+QGMh+vAiak2mh/4k9/GeOC3OzRNnp4x
H1XML/BNTS6r2nz89bz3K8q57//s0eYjxgO+9dbgfhn5F48HvAmtmxgPeO1e
g2y1+Yt5hzzo7+O+EzV9ME7wJeKcdvARwq7An2z41a7As5Nd4bnAi35rtVjT
E88Fflqcrw7+Vdgh+CBhh8ibVop5Cp6erqz57zwFnyrmKfglMU/B14p5Cj6D
5imfo0jrcrjwV+AWwl9xvkb+Cu2xjk8Xfhu8BfltcKzLp2idwjldWHfyUV0L
5xrx+QC2CVc1+zQXdS1vqmuhH15HHl5sotkh1kHwJ1TXQv+8f9h9di6rjPwd
/YN/cjq/XrPDHaKu9ZbqWvi7vB/YY66tcQ72LeaFPCKnGfPUqGtdpLoWxsO/
K7dqFKjdW4fxgKdePdxb+06H8YAXC9rXTvNvmEfsz6kOgHHyfuCybb5n4Xvr
bjHP90+//Nr3Nb5Xhfi27GXOaX4P8wX8OtUBMH744acjDsxwnmacQwjuse/H
TO33OOL8c1Wef86/vxZ+gH8/Tn4AzwVepFLAZs1u8VzgQ3dUu6/ZLZ8PT1wV
55aDFxN+ANyd/ACeC3mBPN+ef9dcpuORDPvn5wIvRN/L8FzgbckPY56C76P8
Ds8Fflqcew++Vfht8PPCb3N74bfBm/7qtznvkPcUgJudXWKjvXfoAN6jdAVb
7b1DB/CZ9J2U77shvlvcUwA+27H3Ue394nnBs1jHhv43jgLHuon+4Z/zCzsB
HyjsBPwK2QmeF371rZiP4KXEfOTfu4n5CJ5dzEfw3GI+gjuJ+QjuKeYj/Hay
8G/g34R/A/8u7vcBL2z2azwMnkp1OTwXeJzwh+AFhD8EPy/u5eF6oIiHwUdR
PIzn5bqQWC/492vivifwNSKvAf/Z+9e8Btxd5DXgLSmv4XPXic8Q6xG4vL+J
82KR1/Dv1yiv8Rf5ctU5v97zBd672K/5KefXIj8FTxP5Kdfx3H/NT8HXiPwU
/DvV/cR9Xoq8zwt8mMhPOU6g/BQ68O/I6Dsj/BXs4aptWn+tPeIx8Ee+mz9r
7aEb/JtX/p6DMvTnuBG8aPeUVNcMe8D4madZx2nvHfEM+GH6PTg4/I/5zP+e
w+DA+1270vmEGCfv86R42P8P30cwTvDvtI8R4wTfIc6FBk+hcwDQP+LwR6QD
7Ac8lNY1vHfww+K8VvBaQjfeHyh0A19DusEeeN8jrWsYJ/xwmIgrwM+LuAK8
K8UV6Ie/d1B8Bf3BW1PeCj+DeWcq6gbgbcQ58/K7POYR7KGuyPvAW1HeBz3B
P9L7xXi4TivyPnBXkfeBrxbnA4v8VNyn7OT5+/uUOf8V9yk7ef7+PmUnz9/f
p+zk+fv7lJ08f3+fMu9P4/WX99+KeANcxhvg9hRvYDzgs0RcAZ4+Qo8r0D/s
U8Z14EUoroP+sJORYzvM73vROO9O1ifBkaeMEu1lfRLvHXmEp/B74PB7aC/3
OUBnuX/jf9HgSvg=
      "], {{{
         EdgeForm[], 
         GraphicsGroup[{
           Polygon[CompressedData["
1:eJw1mwn8FlMXx5+ZuTMPJUJZIluJdiKlhUTSImlRiVIh2StCZI8XoezbW1H2
7IpC0SqlkC1kS0hUaJPS+/v63ffz6XR/c+bMfWbucu7Z/vv3v6jLhWmpVDov
lEqZ2vP13+FinChc5KXSf4tS6U1dl4XHCr8lvL3wo8IzhbcTHic8XXgX0Tui
g/VsJfGfEP9dXQ9T37fq+jzxd1T7pPjzxW8ufiFcW/zjy6XSA7r3qn5/V/EP
FH2YlEq7SW62qKFkeureXuL/KLy7eHNEhwi31bMP6tkpur+D2sfV5zzd20M0
V3SoZBqo/UJ0vPBOknlKMu/p+lg9e6euJ+jZymqfEX+x+DsLPyv8gfC+ovdF
TfTsE+L3FP0ifJbay/U+pwsfINlVoo8kd4zaXdRvDfV5kK6XiFpJZj+1i0RN
hWullj1a+GC1H/Oc8DF67g71O17PHijeh6KjxK8i3iT1+4mu20nmIV1Plcxu
ap8X/zPxqwo/J/ypcE21vxXut6HoS1Fb5rfwXJ8svKfkX9b1N6nn/Ns473uI
/5L4X+u6jvCdkr9M/Fa6/lXUU7i2+LeLP0y4sXjfiToJj0RW94YI3yI8QvgS
4SN0/3vRScJHqf1FdIrw0WpXiXowp5J9Ub+7TNfVhF8RXiG8N3PL9wjfrD6H
63qo5Jvoermos/Ahar8SnSBcXfdfk/xqxk5jdYmur9dY1VR7g54fLJlTtLa2
qO0tai6ZIbp3tWSO0zNrU8/pQPEGBb/zIPV3bvBvnSn+OcHfmws/ontv6JnL
hS8Sv7v4NYSvE75Y+FLhC4W7sU6ErxG+SPgytTfp+lzhK9VeHDwmV6odpOsL
wOp7SPCYXy48OHisqqVeC42E90o954cJ7516LRzO/Eq2mugLfetDeravqJu+
cXe134pel9xW3XuVfSz5v4VfYa8L/y78vDC6oVLqfVxD+E/xX0itK+4V3qR2
heg64eXIiuqog1vYXxKqJ3yr8IfC10vmB3QAlFoH1BTuonsbRd8LHy7529hH
uk50fwr6Rvy64vfjG8Rfr35eFF+fVvpL+GVh3Sqt1Zj9JBolXnUxfiy8//dm
HRXWFzuk1g0HSH6l5JYl1jM7q7OaosXC80WPJdYzG9W+JPmcMWHfi+4Qb4ro
ZtFm9ov6/k40FTm1f6A3dW8v4R8K6691up6GjpT8hsTrZVfhTYn1axX0kmQ3
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
hY9DrcsW0Q7iP8X5kRiT91zHfAm+H+2BJcLv5a53wsdfkLueCj/9b/ZBcJyX
35kYf2tm7lq7PXQ9K3edA2vv2tgnduA7ueuOqgqvSZyfJf4yO3fdEeuffDm5
YfLC2GHjEp/70Pi4BhZF/F3Jdho+2tcl7+2nE9s/qd6xUnDsbmJ8V3wH8lrd
M8sWur8ts35YnDsOjy3O2sB+osYmE29T7nVCXozYLXUyy3X9ZNQh5NO6ZuYR
bybuvJPwxuCaHNYnuQhyEvr3r97aGHXXwDiefAPzis+JzcnvUl+Cb0N8Idd6
+kD4NdHrie1M4tOz45j8Uzjmgw7YWjhGhC7pF20qnvs52C/GHhgQbc43Eq//
N+KaZ52jQ9lf5NLJqTMXjPfcOObkCLZG23t9Zp8Q2wVfDRuO/TI19oMenh33
MO9JPQBxgyVxDdAHOXp8/ilxzLFz8K+/EV4a9RL4s8R2K3O9f7Rj18YxZM+w
XwYJ7xf8PLYiviq/zzrAxvq25DwmGL10bBxTxpMxeDOOw83xfbCZsevTwjL0
j17jWfQdsQDssYwzs2ybbELUD9ST7i6qGly3QP4f35p5pz7utdQ1cugx7CR0
Q7lw3hY/mn3DnuwY1zvrnjmnDoI6AfrE36FegpoIakrI55JbwR9m7awoub5s
Vuoas3cTr0XWIesJHvbP+rhG0VfUwO4SXC+xMa5p+lmQGLO2K+gdHyvcL7wF
8TerxGfRJ8wb84euwNZ6sPA3Mzefx3HDH9kjeI8yt5/G+WVdfBLXBjkj4rD4
Mdh+1I18G9fF53FtkKt6NbEMeRjyMdXjGOLnoNOei/13jmPAWJDj3BCfIZ/F
PqsVPDbYefNjP9QC/Roch/ktc+4cm4JaoNXBsRd8A+Kc2NrUbRA/wC9ALxMP
x/a8KXOsFL2Kf0KMFBv/P5n9fnQstjdxLPx8anSIY3OG4y8QeyDWQB75t+DY
Ef4X8XjOa2wG8gOcv9iTR5cdp8B/JLfDOY7tTlwBXU0NWN/gmAk1VBsL105x
zrCf0UnUnuBHU39C7W4PyXco+dwiR4CdTp0lfi56nrrZs4JjI4erv1Zlx0Sa
khMrOz+E/0NchLOA+hXiB/hK1LUQ58C3wo+h9vJt9XOE2uPKzqlgixLjx/ag
drptcF3c98LnlO3zMEf4wuQnt0b9zLlHrW/34HgpdcsnBdf4sX/Z49Qr/BPP
COxE7EfqtVgD1Dx3Dq5jpP5qdeE6NuTLqc8e6rdPCK6RY/zOjmPIOxSpzwzs
N3JB5H4aq4/WZecesA/Iy2BX4rOQS8FGwl4hj4Nv1ETybcrO5WBLkxfCRsK3
JKaEb0fdGHYX+gnbm1wHdgXnPLW47E30NnYWdhV116cE12qW4pnIfiLOQU0s
sQjiH9RCEIugZpU9sjrqb/T4/+uw1sQ9S66TfAl7azf8xcL1vjjrk1l7JftM
+CboOur5mwbXT1In3Ci4voL6/ybB9ZOsH+rPG7IOhb9nbaSuuT0quL6FmPmR
wf2Tx6YGDx1eoeyYP35nxbJzATdyBpadr8FeRqdVjXbdb4m/j7Hi7w74mwHq
S3coO9fAPt6+7JwO9js1ty0ls69kKpWds2BP857jC8edd079vtRDUrt7aHA9
BjXnfYLzRPydQuvgOmr+pqBVcK01Nc3EjogPET8hb0bObCJruOwcZAv1eWLZ
OUjqMH8qXHN5pNr2ZedKicOQ5ySXOVTPTsvtg1Nv0yA4Ns4+IgZLjKmZnu1Q
dh63uXDHsvPKzOk3heeSXDA5YfLE+OP8rQKxZmpa6gbXGFMPUye49pg6q8OD
a6H5W48jguuxqWlvHFzvzd9xHBNcW05dTe3gGmZqZuoF18NQm0TNE/Uw+0V7
j7OF+vMstc/L31wcG1wzTO1Q/eAaOf6uoVNw7TE1keRb8bFa6pt21DdWy7w+
yFNViGPVsuw8waWp748rubbk1eBaNWpRJgfXqtHPosK5DeqL3hf/iZLrTF4J
rmEjxzElOFdOjuO14Fw2OnNxtEWpnZsT/FvUgM0Nrl2h9mlecK0L9TBTg+vB
jiUOULhmDt1CHS01tMwdNSrUB7BOqGMhh41eXRr9I+qjFgbnZ6nteSY4t0I9
z7PBORTqXt4MrqeinmdmcN0gdTJvBOfBqfmZFVxbSC6XvB75XGoRVwXnPqjT
+ya49oYa2jXBuYxnUvuyX5as676IPiO1SfOD861jU/vNxJmp11oeHLug9uY5
4ftKrr2ZFJzzogbv2+D6FvzuZYXrw9g71IZRu0B90bTg+jHGsIrmunbmOqXZ
wTV7N6bmEdvh7yzm5vbrqWl8Ozjvz35ZFv0yfPOvC9cEswepaaG2gL/TmRFc
m0Gd4VvBMdL/AW0ZoZM=
            "]], 
           Polygon[CompressedData["
1:eJwtmwn8FtMXxmfmzp23RNqjhRYqFUKLijalFCGltCupLEX2nbLvhFQSIfua
bNnKvkb0t4cW2ZckO//n65nPp/tpnjl35n3fmXvPec5zzq/puKmDpmRJkswJ
SZLr/zdjkjxVJMk1wnXSJHlD+EnhK4VrCR8m/Lfw0cJ/a34bXXSN8G+y1RFe
L/uPGnOE3xJ+R8dPy36D5jfSua+Ff9KYq+O3ZX9Xx8/IfqPsjXXuIN3vR+Em
+lK7y/667EuEL5W9huyDZP9BeFvZO8l+n+xfalwq20/CV+v4WdmHyz5DuIfm
LxRuILyr8EuyPyF8uu5X6JrzdLxMY6Ts58m+o+ZfJ/yXbPWEz9fxcxqjZD9f
uJqOZ2vkwlsLv6j7vKDRVfP30DhXtqUaI2Q/V/addb/rhTPhrYQv0PHzGuOE
L+X7yz6gomese1wk/L2+3w8as3Sv34W/1fF3GjOF+2sM1Px7dX1rXd9L9v2E
7xHeQbin8De6z3ca52vuOuH9Zb9P9jay7yXcT/gofV49/d9FeF/9/63sW8m+
i3B34S+Eqwk3Ez6r8HpYp3ueJHyFjo/U9YXmNRbupv/X6dxmmt9UeJC+a0X4
LX1+A+ENwlH4deEVwn01/27hZprfWXgP4bXCVYWbCI/R/N81FpXfv4vsa8rn
x/N+SnigPv9ZfZ/rhW/Q3BdknyT7VcKdZV8tnJTP+0HZ22r+25o/QPe8QHi5
xrE6PkX2vTX/Ls1vWq63XsJ3CDcSbi/cQrimxvLUv6mnjm+XvaHsu8k+Wvhh
4S7Cg8r38Z3w1uV6e0Gf9Zjw8fr8TNe3lf1a4T90XFf21sIzhTcJ1xZuL3yD
8Obl8+8gPE94C+Hmwh2FbxSuLryd8G7Cc8v3xfO/Rp/3gcZput+Fwtfq+EON
01Ovr1k6/ljjTOFLhK/S9T30fK7T9ztS+EDh73W/bXS/juXzv1m4tnAr7Jp3
j44/1vEPGoWO/9a5O3S/zYU7af58zd9S57cX/lc2HMuC1OulsY631fhM+Evh
LXTcRONz4fs0ftV321LXr9ZxI9m3Ked/yrMTrqXj7XnGwg35/pr/vsapwtOF
D9Dn3a3P/oh3gY/R3A90vyt07gmd20zHt2oM07wvhFfI/iH+TfYlwjfqXp9o
nKVrZwlXkX08e4q9o3MThB/V/F6af4jOXanjWzTqCrcWrsh+qOZ/y9rS/A90
fKJG0PFwjVU6vlqjto7HaXyi48s1aur4UI0X9dmP634n44+Fp+jdXM760P2O
1Lkf2McaI4T/0thBn3e17Bs1t5bwYcKPCPfUnGHCL+uakRpfsVc1537d/xuN
y3W8QedekW20xtf4Sp37WMcXa2yp47EaH+n4LI2KjkdqfKjjUzWijkdoVNFn
zdEYrHNrdI/JuvfzGofLdrTwdTr+SOMM4YuFW+r7XaX5G4RrCo+S7V591x+F
a/D8dPyP7nWX8BalP7qt3E/4pwc0/2eNebL/zPqTbYFGHdl3EH5f107TSGU/
RONzXf8x8Uf2V2X/vVyPd8u2ns/X8SLZO8t+YOkPvirXO/c7WPgh4d2E+wvf
I/yK8FHC1wrPF+6td3Qvz0X4IH23Iyr+HO5/hvBrGkfr844XvlvHrWV/Vfae
OneCcCo8Q7iq8KnCr2ocpePjNP9YfKvsffV544Uf1+e9pXOnCC8QfgzfxHoR
vln4GNZP9LsZJ3yz7H10/X26/2nCh2tuFeE+mj9aeBK+V3hv4TGsscL+6lPN
nyJ8p65/UXiy7FcL36V7r9O4SPf/Hiz7S7IfIftMfp/wy8QI4Wv4PoXj7ee6
3zHcX9c+Gv1uxgrPKBz/18t+Jt9Ptuc0Jsh+lPDR+M/ovXOo8O26fz9938c0
/xzhO4T7Cz8RvP9Z/3/qfrvo8/cRfkL4beFThW8RXiK8Qvg04Vu5v/AeFa9x
ntdJ+Frh/rIfLjxO9t91bmfhvuwn4feELxR+UPgEfLXm7yM8QfhQ2X/TuZ2E
9xY+T9+9kP1a3b+ufsMy2d+V/RzZ75Y9FZ4YzF1uk/054ZWyT5f9Hp0bK/yr
8I7CfYTHC/8h3E64n/Bx+H7dv5/wYaxf3es1jb10r+U8D9k7yH6T7G8K76Pr
v9a5esI7C68t3yd7/znhc+FP0b5psvBR8ISK9zzP/3zZlmqMl/0I4QGyf6P7
1df92gl/W/KP6bJX53lq7isaRwpPg0/AB6N9y0Thi3W8TOOw1PHnHPhgtC+c
JDxR9++szz9K99yP/S+8r/BTwf5kSmF/+ZnwVOFdiC2F/Qn+Bf71qfA/wlWF
T9a9M11/nuZX07m/9P8gjdWyLRQeU/qzOrnjy3OyLdPoLFsXjUt1/dsax6Xe
Tw9p3muaf6x+/1zh6YX57he65gzig+a+p3FK6vU6tow/9XVdG+EP9P/u+j4v
af6emvNvxKnZVy/T4SXCb2lMS+1fiPefl/4Tf/+5bLnwq6ljxBDZHxTetVz/
1aLjU232geYMxhdVHIeJv4uE2wuvCI6Xg3X+gXL/sL5mC/eSfUHw+7tM81do
HK+5pwsHeBkxVHgz4aU6fkfXn63zdwm/p+uO0NjId9OcO8vf93jqmNpb89cL
19T8ljwf2WsIr5H9D+Fhsm8Q3l72bsLDhX8WbiHcXXiE8EbhlsI9iInl9St1
/WI4huyT9P1/0HfoK7xI+HXZp2n+DZp/auH8Yo3sJ7CfZO9ecYxm/Y0U/kX2
ViW/fkX4feGLhB+CbwjfL9xWuDf+Fv8tfIzwnMTP86eSX8J3L9XxIN3/rWA+
8aDs+wk/HczH9hK+U3Maa36HxHzrXY394QrCY2RfLHtX2Q8Sflj4DeHjhOcJ
n6bPD7rfBbpmi9R86B2Ngak5206aP0vz/xWuL9xUttN17UId7546Hm4q8wny
iz6sE+FaJf87o3A+uBZewzWy3yRcQ/YW7Efhrvr8M2UfXMZ74jtrgDzzIvID
2WcJb0XOpv9/DM4FeT9p+Xx+1rnLhGdrfl/hxcI7CV8vvLfwIuEdU/u7m3n2
Ov4mcewbUjFPIQbW0OdviU+QbVDq2HNQxTyBGERsGVwxTyPGbMgcC4exF3XN
5bL3lH2+7NvAOTLHYrhQpfz+yzWuhN9o9NXxAtnPTp1vbCp/HzZyuCt0v710
v5t1btvU/PYPHd+SmhP/WvojuPTNwr+UfOKQYP67MbOvH5WaL5AbTq74c7j/
T5lj+9DU+XmfYN/fKzXfmKP5+2j+ozq/c+pYuWvhvc6e/wuuU9jXdsgcy3Yu
HHuIacQiYhLv9svMsWiXwrGRmETu3rJwbk4OT+xsVzgWEkPJLcgxuN8HmXP5
FoVzDXJ61t6Ohfcaa5C9v4PGnol9AHupVeFcjT11h37PARXn4eTfL5V8Ft+5
Z+lvDqyYB+NTb4nOH1n3rPcJhfWMjrrX/rqmpmzPkAPquFmwr2ld2Pfgc/AF
bQv7GnwCvqdNYV+ED9pK11bTeFr3fi91LrhdYe4Kh/0lM1cYnTr+kC+8qc95
jLWZOlYcpu8wLHPMILeZwPvPnOOwD74kF0+9H9gHcKcTU+8H3utXGienfr+3
B/u2KTpuzvMI3rtTdbxdaq45Rvc/MDPnhKuOFR6UmbMS6w8RHpA55j8YHNtO
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
fwp/HG8=
            "]], 
           Polygon[CompressedData["
1:eJwt13m8z1Uex/HfvT/uxcO+r23Ivu9r1mTfyZKMomSLrKlMEkNEE9JEaZCU
UtnSRgslW0UkqUb7lGayNNp7fuZ7/3jf3/m8zvuc73bO53PupSMm9BmfmUql
9lFumuzPW3RTRip1Kp1Kzaa+4h9pDfazeBCVyEql8mGvG1wpVyp1Wt8yv7Wx
TP3/oPHme1DckhZrX8+7Da/HV9r4HeJ8dIm+llh5bLe4FNXBbsAaYP8Vd6Ch
WH2sFPa8OC9djBXJSm6+XPxgFXk2UCusgOu9SHfp64JdyvsuT2VqhXXELsEO
xn1QE6wPVgU7EfdBV2L5xX/g28Vl/Z7wvN38VsKPYFWpDV9XrCJ2WFyFrsBa
YeWwN8QlqTbWF6uKfSSuS52wzthl2Hviy6k1ts4zrKVXPcNMbB22mqcM7RIX
ocL0trE9+Grz3SpeyzcMK4t9Ia5O7eMbGHcW7+n+j/BeT6N4ZmDTaaT273wr
/Lage7WvM3YL353xbFguY8f5/av4Oqpvzu/i+Wkg/8j4lvpPi+tTF2wUVgH7
XtyAumIjsHrGfhvviQZg18a74vtSXCO+O/YXrC7fv+OdUH+sWTwb9qq4aLxr
bBBWDftU3JC6YXux7uar5f5nYGuwu+K7YVme42a/s8WnqLd2W74lfC/xbceu
MF95bBq2Gqua7T6xdth92N/pf+La9JV2TapFj5lrIF3D9zo1d63W8Q749ugv
Hd/dfAfFragszxRsclwn9gxWHJsgfjDuWbzc+Anaq/CHqYJ76YY3jvXNN4cW
GDuVbwrN1y7tugP89qchfPN5NptjdlayX2OPPoSvjD7sC+xg7Avx27GP4/vG
N9deS7eEP/Ylllu8jiZjg7Eaxp8yf2PqgW0SV6bjOe8k3s02vtZYOeOmih/h
ew5rZ74S2E5aiL0XaxRrGOuOb2NcV9zM2PzYDdgS7Bjf32JvYbtpF/ZIrF2s
WOQgvhVYb77LsQ9j/1FHbJ54DX679rO8z9FiY4/SdO/tG/Eaulf8Pk3Dvhav
TifjmmH5tJ9JJ3PMMd/KePfa67HHqYP4YvxA5Kp4N/oeEJekrZF46Q/zvsHX
zXxV4h1jD+sq7vu256uaTtZFrI8hfDWxzyJXUU++4Vgd7JvIadQPWyjeZL4z
2jcaf5aGxX7G0/wDxJ/ru1q7OvYv4xpRd2yD+CLaL76IKtCPfIuwc8adpz7u
+VB8n8iL+vvSROw1vi54ZZ6J2MpU8j4bxXWxgZnJu10Q+5n3iP5O+Ls0VFwL
/5ynKfXS9zrW1fjL9U/CVmEviG+J/IOdiHHmm2vcw7zT9D+JbaS7sVXY1Hgm
8RN0WNwr7idqm/me0tdPXCz2nHYlbLC+rTl7+mtxS2oR9UZcNNYWX8XI5eb6
JzXF8hqziW5LJWugYeQX8WPpZD30xErE2jKuXOQnbGk8L5bB8yCNw9aIP6ZZ
kWP5duGN+HJjL8Z3wIvztcDyYq9huaImYV/lfLd9OTUhakNjviy+l7QvGFuC
rz1WCHsbKxS1BmuLFYjaLy4QNR37D3aN+brHWsaOYw2xXHwviM+ZrxjWBsuP
vYnlj/qLtcMKYnvFBaPeYt9jQ83XzXzrsQ+wJlg238vin81XEjuVU9925uyN
2CPTeO7mnRPfM/YdfjQr2R/V0knuixyYGeuM8vI9Kj5keA/t4rGH4z1F/cGa
YnmwV8S/mqsUtgfraGwN883FN2G38szD59IM7fwZybq9mu+qyAOZyRr+DBuI
dcAewfZjJ7OSWtE+8nWsXdrN1wGrHutT/DTfaWwI1jXWC3YM+w4bjHWJHIsd
xb7FBmGdIxdj72OLo95FDXNfuePb0CRsgt/r9Z+L98J/bexdvkf5Loj70f2R
S+LQp72CxkatF4/IndTOqKFjI08bO5F3FPYjNi/yEXZznBew89jd2IfGNcHz
xPWw21zrONYYy478g83ETmLNYy+lkzUea/0lc3XGL4n7wJabd0lWcs6Ms2Vl
/cVyJfcxHZvPtyCd3NMkbCa2KHJ11AasGnaBnjbXDxn/f8TUGPFYvinxTDQc
+1g8jHpGfuDdEOcOvp/pGe3zGcm5uK74d9qGZVA+7JOcPL5F/Bvf71Sb5zfa
jP0izsP3ovgqk1zsGmPwZdjt4vlRu+g27YK81bV/ok08Z8WaqVr+/ErPYT9h
SkKqpvgXejbOHlgcfxdHHjdPUfGdkefFb9KVOmu67jzeZ/h2Ym2xitgd2OOR
T7FOxlyE3YQtxbbGXojzQzo5t8f5fTPWHiuJjcAWYTviGlgFbDR2P/ZUXAMr
gl0T6wWbFWfb+N/A/Y3xe4f4ZWrjXi6L+sm3PvaRvlNxTsT2Uhv+q/iKYO/w
lIjvw7cl9hFWKp2cT+OcOtJco/Fh2j9g4+J5xKNj/Ub9iHWp74k4g8Q7Fw+O
cxO2Me4FKxz1BJuLfYmNMHY4tp/au5deWEm+Yzzlo2ZG3sWu4xvBc4A68g3E
yvB9kpnUlKgtT8Z5EivEMyT2DDYAKx05PzOpKVFb7jHXGbyHeQ7zvhfnQJ7x
cU6Ps2TU28inOeerD3JqdNTq0Twzjb2VboyFa47+2qW0T+q/jJrHmToreb54
pn3xXqhgdnIWLaM9km9U5Ji4D6wZtlT8irGfYv2xNthD2F7so6irWAtsOfZG
1P04w2HNsWXYzjjHRq6i+7B2UWux/bE/+Opi92DbYm9h/bAr4gyKvRX5FOsT
5+XIV9ie2L9YX6x11FDszThTRy7B6sVZEtuOncB6Yy2xByIPY+/E2QJrEHkD
24EdivMLVh9bhD2PHcG6Y00jZ2IvYwdiz2B1Ig9hW7FdWDusEjYrcgl2Q1ay
BmPdncEmRN7BCtBJ775c1BKsQXaSh3qkkzoR9SL+F28d3yQ7Oe/k4T+RlZz5
m6ST/z3if5BF5qgWa1f/LL8L496osPYh/cWpuuv/CacF0Zw=
            "]], 
           Polygon[CompressedData["
1:eJwlz1suQ1EUxvEd6rx4MYLSB5chSBiFIUiIEKc31etpe5KqokqCSMzEyFwr
fjt9+LK+77/WXnvv0mH5IF0KIaxRQu1CCOsrIXyCr8sh5GALS9WB2qdzvqnX
ogqfY0Mq812sR2927Mqr/LFdR/TOZ+ZKet9yRT4x08PuaAf/wyd4E7/FBuqD
Oot38096z3SWLHbFs6d8HbugK3nTnh97crmqN8K6tIF/4Wl8E97BOsni7nhX
O3q9KdXMVinj95zZpz5/bW4L/5VHct2ZMXZJRfwDf8GHeAPL1Ht1Gt8a/6L3
SDfytvm5+bHc0Jtg/z49Mpg=
            "]]}]}, {}, {}, {}, {}}, {{}, {}, {}, {
         Line[{497, 686, 1681, 498, 1761, 697, 522, 1765, 709, 535, 1771, 722,
           550, 1779, 737, 565, 1788, 752, 580, 1799, 919, 760, 1882, 588, 
          920, 768, 1889, 596, 942, 1861, 776, 607, 957, 1868, 787, 622, 1809,
           802, 637, 1817, 816, 651, 1827, 828, 663, 1837, 840, 675}], 
         Line[{499, 687, 1682, 500, 698, 1691, 523, 1766, 710, 536, 1772, 723,
           551, 1780, 738, 566, 1789, 877, 753, 581, 1800, 878, 761, 1883, 
          589, 921, 769, 1890, 597, 943, 777, 1894, 608, 958, 1869, 788, 623, 
          1810, 803, 638, 1818, 817, 652, 1828, 829, 664, 1838, 841, 676}], 
         Line[{501, 688, 1683, 502, 699, 1692, 524, 711, 1701, 537, 1773, 724,
           552, 1781, 739, 567, 1790, 879, 754, 582, 1801, 880, 762, 1884, 
          590, 922, 770, 1891, 598, 944, 778, 1895, 609, 959, 789, 1738, 624, 
          1811, 804, 639, 1819, 818, 653, 1829, 830, 665, 1839, 842, 677}], 
         Line[{503, 689, 1684, 504, 700, 1693, 525, 712, 1702, 538, 725, 1708,
           553, 1782, 740, 568, 1791, 881, 882, 984, 1875, 883, 884, 1720, 
          991, 923, 924, 1726, 998, 945, 946, 1732, 610, 790, 1739, 625, 805, 
          1747, 640, 1820, 819, 654, 1830, 831, 666, 1840, 843, 678}], 
         Line[{505, 690, 1685, 506, 701, 1694, 526, 713, 1703, 539, 726, 1709,
           554, 741, 1715, 569, 1792, 885, 886, 985, 1876, 887, 888, 1721, 
          992, 925, 926, 1727, 999, 947, 1862, 948, 611, 791, 1740, 626, 806, 
          1748, 641, 820, 1753, 655, 1831, 832, 667, 1841, 844, 679}], 
         Line[{507, 691, 1686, 508, 702, 1695, 527, 714, 1704, 540, 727, 1710,
           555, 742, 1716, 570, 889, 1850, 890, 986, 1877, 891, 892, 1722, 
          993, 927, 1857, 928, 1000, 949, 1863, 950, 612, 792, 1741, 627, 807,
           1749, 642, 821, 1754, 656, 833, 1756, 668, 1842, 845, 680}], 
         Line[{509, 692, 1687, 511, 703, 1696, 528, 715, 1705, 541, 728, 1711,
           556, 743, 1717, 571, 893, 1852, 895, 987, 896, 1853, 1854, 898, 
          994, 929, 1859, 931, 1001, 951, 1865, 953, 613, 793, 1742, 628, 808,
           1750, 643, 822, 1755, 657, 834, 1757, 669, 846, 1758, 681}], 
         Line[{513, 694, 1688, 514, 1763, 705, 530, 1768, 717, 543, 1775, 730,
           558, 1784, 745, 573, 1793, 899, 756, 584, 1803, 900, 764, 1886, 
          592, 932, 772, 1892, 600, 954, 1866, 780, 615, 1807, 795, 630, 1813,
           810, 645, 1822, 824, 659, 1833, 836, 671, 1844, 978, 979, 848, 
          683}], 
         Line[{515, 1049, 1050, 695, 1689, 516, 706, 1697, 531, 1769, 718, 
          544, 1776, 731, 559, 1785, 746, 574, 1794, 901, 757, 585, 1804, 902,
           765, 1887, 593, 933, 773, 1893, 601, 955, 781, 1733, 616, 1808, 
          796, 631, 1814, 811, 646, 1823, 825, 660, 1834, 970, 837, 672, 1845,
           868, 980, 849, 684}], 
         Line[{518, 1021, 851, 1016, 852, 1690, 1044, 1042, 1061, 1043, 1699, 
          533, 720, 1707, 546, 733, 1712, 561, 1787, 748, 576, 1796, 905, 906,
           988, 1878, 907, 908, 1723, 995, 935, 936, 1729, 603, 783, 1735, 
          618, 798, 1744, 633, 813, 1751, 648, 1825, 964, 965, 966, 1872, 864,
           972, 865, 1031, 974, 1010, 870, 1036, 871, 1025, 1019}], 
         Line[{519, 1022, 853, 1002, 854, 1027, 1902, 875, 1052, 855, 1051, 
          856, 1700, 1047, 1045, 1900, 1046, 547, 734, 1713, 562, 749, 1718, 
          577, 1797, 909, 910, 989, 1879, 911, 912, 1724, 996, 937, 938, 1730,
           604, 784, 1736, 619, 799, 1745, 634, 814, 1752, 649, 859, 1847, 
          860, 968, 1873, 866, 973, 867, 1032, 976, 1874, 1011, 872, 1038, 
          873, 1056, 1037, 1026}], 
         Line[{520, 1004, 1005, 1003, 1029, 1028, 1899, 1030, 1023, 1024, 
          1017, 1898, 857, 1018, 1054, 1055, 1053, 1901, 858, 548, 735, 1714, 
          563, 750, 1719, 578, 913, 1855, 914, 990, 1880, 915, 916, 1725, 997,
           939, 940, 1731, 605, 785, 1737, 620, 800, 1746, 635, 961, 1871, 
          962, 963, 861, 1848, 967, 862, 969, 1006, 1896, 1007, 975, 1009, 
          1008, 1014, 1897, 1012, 1013, 981, 1040, 1039, 982}], 
         Line[{674, 839, 977, 1836, 662, 827, 1826, 650, 815, 1816, 636, 801, 
          1870, 960, 621, 786, 1867, 956, 606, 775, 1860, 941, 595, 767, 1856,
           918, 587, 1881, 759, 917, 1798, 579, 751, 1849, 876, 564, 736, 
          1778, 549, 721, 1770, 534, 708, 1764, 521, 696, 1760, 496, 685, 874,
           983}], 
         Line[{682, 847, 1843, 670, 835, 1832, 658, 823, 1821, 644, 809, 1812,
           629, 794, 1806, 614, 779, 1864, 952, 599, 771, 1858, 930, 591, 
          1885, 763, 897, 1802, 583, 755, 1851, 894, 572, 744, 1783, 557, 729,
           1774, 542, 716, 1767, 529, 704, 1762, 512, 693, 1759, 510}], 
         Line[{1020, 850, 1015, 1058, 1903, 1059, 517, 1062, 1041, 1060, 707, 
          1698, 532, 719, 1706, 545, 1777, 732, 560, 1786, 747, 575, 1795, 
          903, 758, 586, 1805, 904, 766, 1888, 594, 934, 774, 1728, 602, 782, 
          1734, 617, 797, 1743, 632, 1815, 812, 647, 1824, 826, 661, 1835, 
          863, 971, 838, 673, 1033, 1846, 869, 1057, 1034, 1035, 1048}]}, {
         Line[{1064, 1373, 685, 1063, 1681, 1272, 1065, 1682, 1273, 1066, 
          1683, 1274, 1067, 1684, 1275, 1068, 1685, 1276, 1069, 1686, 1277, 
          1070, 1687, 1558, 1759, 1071, 1688, 1278, 1072, 1547, 1689, 1279, 
          1548, 1362, 1543, 1903, 1553, 1280, 1524, 1631, 1690, 1544, 1554, 
          1281, 1503, 1527, 1551, 1902, 1678, 1374, 1505, 1540, 1282, 1504, 
          1679, 1899, 1530, 1529, 1375, 1518, 1519, 1283, 1528}], 
         Line[{1074, 1559, 1760, 1073, 1560, 1761, 1075, 1691, 1284, 1076, 
          1692, 1285, 1077, 1693, 1286, 1078, 1694, 1287, 1079, 1695, 1288, 
          1080, 1696, 1561, 1762, 1081, 1562, 1763, 1082, 1697, 1289, 1083, 
          1542, 1698, 1290, 1557, 1680, 1699, 1291, 1549, 1632, 1700, 1546, 
          1555, 1556, 1525, 1898, 1363, 1526, 1531, 1533, 1532, 1552, 1376}], 
         Line[{1085, 1563, 1764, 1084, 1564, 1765, 1086, 1565, 1766, 1087, 
          1701, 1292, 1088, 1702, 1293, 1089, 1703, 1294, 1090, 1704, 1295, 
          1091, 1705, 1566, 1767, 1092, 1567, 1768, 1093, 1568, 1769, 1094, 
          1706, 1296, 1095, 1707, 1297, 1096, 1900, 1545, 1298, 1550, 1901, 
          1364, 1299, 1377}], 
         Line[{1098, 1569, 1770, 1097, 1570, 1771, 1099, 1571, 1772, 1100, 
          1572, 1773, 1101, 1708, 1300, 1102, 1709, 1301, 1103, 1710, 1302, 
          1104, 1711, 1573, 1774, 1105, 1574, 1775, 1106, 1575, 1776, 1107, 
          1576, 1777, 1108, 1712, 1303, 1109, 1713, 1304, 1110, 1714, 1305, 
          1111}], 
         Line[{1113, 1577, 1778, 1112, 1578, 1779, 1114, 1579, 1780, 1115, 
          1580, 1781, 1116, 1581, 1782, 1117, 1715, 1306, 1118, 1716, 1307, 
          1119, 1717, 1582, 1783, 1120, 1583, 1784, 1121, 1584, 1785, 1122, 
          1585, 1786, 1123, 1586, 1787, 1124, 1718, 1308, 1125, 1719, 1309, 
          1126}], 
         Line[{1140, 1411, 1410, 1855, 1139, 1408, 1797, 1659, 1138, 1406, 
          1796, 1656, 1137, 1654, 1795, 1403, 1136, 1652, 1794, 1400, 1135, 
          1650, 1793, 1397, 1134, 1851, 1394, 1393, 1852, 1133, 1391, 1390, 
          1850, 1132, 1388, 1792, 1644, 1131, 1386, 1791, 1641, 1130, 1639, 
          1790, 1383, 1129, 1637, 1789, 1380, 1128, 1788, 1587, 1127, 1849, 
          1379, 1378, 1460}], 
         Line[{1143, 1414, 1473, 1881, 1310, 1142, 1418, 1474, 1882, 1311, 
          1145, 1382, 1475, 1883, 1312, 1147, 1385, 1476, 1884, 1313, 1149, 
          1643, 1720, 1477, 1314, 1151, 1646, 1721, 1478, 1315, 1153, 1648, 
          1722, 1479, 1316, 1155, 1854, 1396, 1480, 1885, 1317, 1157, 1399, 
          1481, 1886, 1318, 1159, 1402, 1482, 1887, 1319, 1161, 1405, 1483, 
          1888, 1320, 1163, 1658, 1723, 1484, 1321, 1165, 1661, 1724, 1485, 
          1322, 1167, 1663, 1725, 1486, 1323, 1427}], 
         Line[{1168, 1412, 1472, 1880, 1662, 1166, 1409, 1471, 1879, 1660, 
          1164, 1407, 1470, 1878, 1657, 1162, 1655, 1805, 1469, 1404, 1160, 
          1653, 1804, 1468, 1401, 1158, 1651, 1803, 1467, 1398, 1156, 1649, 
          1802, 1466, 1395, 1853, 1154, 1392, 1465, 1877, 1647, 1152, 1389, 
          1464, 1876, 1645, 1150, 1387, 1463, 1875, 1642, 1148, 1640, 1801, 
          1462, 1384, 1146, 1638, 1800, 1461, 1381, 1144, 1665, 1799, 1417, 
          1141, 1664, 1798, 1413, 1416}], 
         Line[{1170, 1415, 1487, 1588, 1856, 1169, 1419, 1488, 1889, 1324, 
          1171, 1420, 1489, 1890, 1325, 1172, 1421, 1490, 1891, 1326, 1173, 
          1666, 1726, 1491, 1327, 1174, 1667, 1727, 1492, 1328, 1175, 1857, 
          1422, 1493, 1329, 1176, 1859, 1423, 1494, 1589, 1858, 1177, 1424, 
          1495, 1892, 1330, 1178, 1425, 1496, 1893, 1331, 1179, 1426, 1728, 
          1332, 1180, 1668, 1729, 1333, 1181, 1669, 1730, 1334, 1182, 1670, 
          1731, 1335, 1437}], 
         Line[{1184, 1428, 1497, 1590, 1860, 1183, 1429, 1498, 1591, 1861, 
          1185, 1430, 1499, 1894, 1336, 1186, 1431, 1500, 1895, 1337, 1187, 
          1671, 1732, 1338, 1188, 1862, 1432, 1339, 1189, 1863, 1433, 1340, 
          1190, 1865, 1434, 1592, 1864, 1191, 1435, 1593, 1866, 1192, 1436, 
          1733, 1341, 1193, 1734, 1342, 1194, 1735, 1343, 1195, 1736, 1344, 
          1196, 1737, 1345, 1197}], 
         Line[{1199, 1438, 1501, 1594, 1867, 1198, 1439, 1595, 1868, 1200, 
          1440, 1596, 1869, 1201, 1441, 1738, 1346, 1202, 1739, 1347, 1203, 
          1740, 1348, 1204, 1741, 1349, 1205, 1742, 1597, 1806, 1206, 1598, 
          1807, 1207, 1599, 1808, 1208, 1743, 1350, 1209, 1744, 1351, 1210, 
          1745, 1352, 1211, 1746, 1353, 1212}], 
         Line[{1214, 1442, 1502, 1443, 1870, 1213, 1600, 1809, 1215, 1601, 
          1810, 1216, 1602, 1811, 1217, 1747, 1354, 1218, 1748, 1355, 1219, 
          1749, 1356, 1220, 1750, 1603, 1812, 1221, 1604, 1813, 1222, 1605, 
          1814, 1223, 1606, 1815, 1224, 1751, 1357, 1225, 1752, 1358, 1226, 
          1871, 1444, 1445, 1227}], 
         Line[{1229, 1607, 1816, 1228, 1608, 1817, 1230, 1609, 1818, 1231, 
          1610, 1819, 1232, 1611, 1820, 1233, 1753, 1359, 1234, 1754, 1360, 
          1235, 1755, 1612, 1821, 1236, 1613, 1822, 1237, 1614, 1823, 1238, 
          1615, 1824, 1239, 1672, 1825, 1447, 1240, 1847, 1365, 1366, 1241, 
          1848, 1367, 1446, 1368, 1242}], 
         Line[{1244, 1616, 1826, 1243, 1617, 1827, 1245, 1618, 1828, 1246, 
          1619, 1829, 1247, 1620, 1830, 1248, 1621, 1831, 1249, 1756, 1361, 
          1250, 1757, 1622, 1832, 1251, 1623, 1833, 1252, 1451, 1834, 1673, 
          1253, 1369, 1835, 1633, 1254, 1634, 1872, 1448, 1370, 1255, 1635, 
          1873, 1449, 1536, 1535, 1256, 1896, 1506, 1507, 1450, 1509, 1508, 
          1257}], 
         Line[{1271, 1522, 1541, 1523, 1456, 1516, 1517, 1897, 1677, 1270, 
          1514, 1521, 1515, 1455, 1676, 1874, 1537, 1513, 1269, 1511, 1520, 
          1512, 1454, 1010, 1534, 1510, 1268, 1538, 1539, 1846, 1453, 1372, 
          1267, 1636, 1845, 1452, 1371, 1266, 1675, 1844, 1459, 1265, 1843, 
          1630, 1758, 1264, 1842, 1629, 1263, 1841, 1628, 1262, 1840, 1627, 
          1261, 1839, 1626, 1260, 1838, 1625, 1259, 1837, 1624, 1258, 1674, 
          1836, 1457, 1458}]}}}, VertexNormals -> CompressedData["
1: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
GZgQoPi5V2cINs/15cSpxaAAhN2PjX6NG83qs5NGRiFe9af/4bQQPL2Mvk91
fxwmKbTk3v49CuzUaiNyzs8XCj9T54TI8wXG5Jwa1utkyO99/Ua1n/q9+CLA
nZ/83qWv/oS6eDeAzmRPasv2frCdq395Qo8NDq990kkd7vZy52YocaDjvWcR
qQNXYPdOMpfFPJ+9oOYynJLdXUzm8qZFz0OJDtGdu/racYdm8I7evYvokCNz
PXkZlI76R99/0PlBO6jOHz5IdFRwToCaQ3UhzjjQN3nPiIZqvje8Hi8dAc15
Y0899IrAfM0A62AsDayicn07RUdAXipmOvm80taB1RFGNDDhShiSz7/1imoh
nzcrW/j6QCwN9T9MyyCfd1rh5BPbloqY2sNaEF0CvS2ztu0NGwWPnLk5Phvr
QejXg0zZuWz0TeHMfpzTD1e1904IeZdB9v5nN2xU6ej8OCRzcgsPBouzokhf
pITqcHujgsADxiNJX1jIVRfJltZgqJTZ97jbLJxtnKduqD4I7u3zI8l7R8/4
WotHl+Bz/gUW5L1q9GdB5L0vFjn/ot4Lizgva+Oo9ypLDS7+Y9qCfAVjiZYU
Dt/9/RP2OKoSeEfm3yZ99NZ0O+ttUC4YlqksIH3kmbbvd+ajJvh3437GwndD
aPfQ/FHGji5IiLtVSO5R4lakK3WPGCful0buse+WiAPpL8O2h0lLHOnY1P3F
nfTX7ghDG9IX3OL4BYyCajR3LzlE+uKD3Ksewg/RJozW1roSMKzWVyb8EIGC
gqS/fpxY++5hwXNseiBkRfrLhXns4L1NNBTwuH3XK5qNP1P29Dob9EFnwjTp
uawGPLru+TlLZh8WZrlypG+xoUKVvn1tTj0WmB1p7J3PxGnG62/NKuSAYcdy
dytmJTolO72PSO/ETk0wV5PhgV+06JZr8Z9QvsR81t6hbtSnq0rbKXKhL8i9
6+CvDxhuqLDh+h8aVpxVsRDpH4bbIQkeB3ob0JTneUcZKT7fOb0yMLMfVBT5
jhmzSnH5kjc/nE534s3tT04/d+PBS7e3riFOpTgx6tF6pL4dN6XUSNo08yD7
5rPu5JA08GgxuqxSWAbaGnIR9z1HYVrokQqCk1n33W8cVaXDg59dHgQnEkJW
g+Mb3oJhbdDeCP6PIGvkoHf5xCjE7I72kZKrhejFh1sFK1jAsHccYU4OgKVJ
FBI+j9nus2rBmgFYeX5LCeHzp4lJx5dza2Exb9rl1mAWPDvKiFlJ9e/tsJmC
YZlNEHfN4WYHgwNe7W+KmMIMaLmpz2mm5lRYr8z2PGpOKbPw1aOyCihMmPeV
PP/Ul6dNPYe6jvFM8tzM3VSOzJ1WKUiy/9gApTZrXpO5U6KizSI8c2Xl6O3n
0a/BQWXjG8IzYvrfVMl7NUdPOlDvxRlrrrDJe2mhKT6E9+QCzGzdRbrgdcID
P8J7b3qeziZ41rYwSaLwjFxaSQDBs7z/9WqC26edJnUUboG+55oFwa2uRcAX
pexWnGNZrB5wlAP9as0bSL5qe/nUwA7KH6WAjw7lj+CvuMgS4o+Uj7H4SO66
/06Cs2YuG7SzuHEkd53n+ess8Ucqby2vU/4I1ie4GRF/dPtJxByS934fflXO
N9APt0vzy0jeW/Dv6VHiB+c/Ulmo7NcHcZ8+bSd+sE5N05fw6vfEvbXb98fB
WCsjm/DqDROXxRouhbji0Y96tlkTHp2mqN1lOAK+X+PDJTmvcVBx8KDb7DJM
0FpZeODKKPwQzjK811EEBlqff1/QpUGcgFZFgfQIiLw6JbB9WRn4rajY01tO
BzE5ocfLJHmwvnWfMcmBB+PKdZuOc+C68ks9kgOXJUqPPaf80esXB55S/gje
HdfaSfyRdIiiH+GfvLW3tR7fZkGd95gg4Z/n31K9iH80TkvupvwjvMyIXEL8
456MJjHSR4+4nfepPoImk+fjx6g+ktRkyRK/rGyXb0n5ZSiLeidA/PKLBb4J
atxG3JJV9qLjEhNGHebHxM7nwPy0g291zKuggisSqWzMhK0Zl6edkB4CCX2p
CtKPKQ1Dk1Q/gndNxibSj/9OXUNxLStwPeApn+ftgtZjX10/U/xpqh4t8bGq
BsMWxRgFtPSitDhmJZcNQkDEiZkKd5NQfsHL7vpP73H6g9shwq8pnhl11Nyg
Xg75QfkObpSvTp67OvbqZh5IXs+3IP2+MXRnPtXvsMXc/xnp9/iwf+NnKH2i
rzJXPjKpFZJ/HL9N9EnXXaOPZP7SZ0Y/pOYvBFtxhqyo+TuNyVElvOQQMDpJ
8RIEWzBdCS/lyzEy9Ke3YNOXDR/fWPaB9coiviEpNkTv+nRkbU41mgQPHL1y
qwNeer73UVXnQXN8+Vbi911nPDxE+X1YtvVOCPH7AblWG16UU3iL2jngaD0I
10QUnza9onQ4v/Ud8Y2leO9tgMLxhCbYfbwwOHrmCKzkU/L+GNaG8lotpw+/
5oF0J79FpHM16K189KU4thlz5AbaJN2GYXgBZ4vxvUqQPdwmHRrRhnO2efA9
SOfBq6NzLh1bXw2evlw+3fBmvCw/zXml3TBM0qP0Nj2k7k8yKT7yXhtqPdwg
Y/yGB0bZS7c8sKwG73mvJLWuNWPbj5GkNGoerVm8tkhvdTVoS3zYEXO7DV9i
/TP5Fzz4umXeMsFv1SD77ZyFsWszFi1wu3NWaRh2TD8ZJmRbCzJ8TLdC3zYc
XPuzXO4BD36ZxF8eF6qFDaIt6YpGzTjOJ2Bz/x8P6sT6RQby66Gsj1VmcqoN
j/0QfrzTnwfG+nq5fEl1kMvyaR8Wb8Ztr1z5jmXwQCpfJbGkrxHyH27pPmDc
hqJbf3TIWPOgIrPO8crf+v+z9+47tfc+ZnMx0HomDWW9r/abG3IhiS3z9VJF
x//Z3145tb996kzzorK6Vtx/3z6J8YkLyf+0olw/02C1sOws3/BG3G6qIB64
mwPW0z5++LOdCSlcVoq6aSvOtX8i37CZCwcHJ/hGTNtg4N/TMZpwLdZW7+Oc
PN8Hjzxmmzu7DcCP2fkOFo4tOC/n6e9likPwR7hpu5dxF9hM8V7SFO/xzf8f
3hvYYk5PF3oHEzeCC48cqcNnjyLa/7JGQH/d7V47oxowaRV/K/KFhW+qK38+
HB6Aq7cK7/2za4SGl05MLxEONum6u/GnMqHYrP5t4Vo6rqz/5OXvyAXRjWqv
LfUbIHvijqU60PHjr/XnznlzweJKRrRLcj0wsnTbu3fRMc0isKTuGhdW8W1a
LX2gHs7IbKth76ajb1v4w+JALjwv0XLr16yHdaUmngmGdLxkZ8CLu8oFnQ/r
C7Rt6qm50Cz6VIuOak+qtUY8ufAh+fI72/f1sG9Ov4qnIh0P489aC3su5Nxv
Y4c7/t9972NT+95rSg3pnxs6sS3+sq6CGBfOzwx8rljXBFmhBblHr3SilFzN
0bIPQ/DOJ/rI87pmUNsVar6TvxMVlp9yktMfAvuCT9NmxrSB5gmliizlDkRD
x0RjLw7c2eYhHXuLDt8PqjYW57fhsMrFPM+5gzAteo9iviQTUmtrQjR1Gfir
j7Hk8B4OnJVS+2zS2gz0JI1ufVsGvlwsx1vqw4FNQZ4jMx7SYIvJVub3cwx8
P8P2WslDDogbSAmVYBMcU7U7UelH+dgZZkprXnOg/WjQDaZaExwfmvVG/joD
Qz+n3fbP5oDr1qGVHhONsD7tcPmLawxcmW29oiiLmvu+u6P0/zbC9yix2D2+
DDTlf/OMnswBwdjdydqG/31/+/Rxc7G5VgwMlE9om6T8263xh6oeTTTIcnmf
+kWdgRs7/mwZBA4IX1mY/0+1BX4vvSB2dzoDKxtH7w2PDkL5y2vfnixtg7PJ
9hWLT/dg28a/v3MvDEK2d7jM4cIOKKkdiEn26EaHxocKa7MGQKlYQbRpfzf0
Bg2e02RQeNPRZ9AvskEkYnmc+WMmCL7/o/RzZQeqxAoUaR3uA/HbKpuvf+mD
1GT/9LiCXvSvLQ0w6+mH8RdB+5b1d8Lhhd/n5AizsPRTd5eZBhvC1gneO9Pf
DvGpgi2T2iyUxx12lh5sOJ196kW0axt0yt/Y+8SWhQkDm/aUxbHhc47mkoMn
WmHPY36PoQss/MtWv/74HRvWzvQfGclvgfb4RT8P+bNwgXf15+oS6nt0zyXS
HFogU3CVytIrlL63vrkmo5QNtbWR83xs//v+9iCuO+Nqz8IzDfIeIvFsaDk+
o9LKtBW81eeHrdNhoSWfzSpRbzZI8ykXcw62wReF0Ii1c1hYG+ZqZKnNBqPR
LxdP1rQDZ9e2h+3Yi3lR2j0SrH7oHrC7FVXfCfFubRIndvfiHdm1Snut+yHs
cFPerevdsEsmurAslolOUtLCJnf6wOHbr/CPc5mwxXbdxqxbDOxgj1ofNWVB
jeHK0HZXFtx3Ni/J3tKPSoduT8hdZYBPpuTjmMNM0OyL73ze3Y97MfGX8HQm
JLDPrTzKx4DpEwNhqWZsLLoqx7pjw4T+79f8c8e6YJ/d5qATT9gYrbuvvPEh
EzxTlnacdKHDVgmNzEAaG0VM+JVOlDIh6mDQihCrTph3iOsl8o2NKcMXJofo
TBjRPz0ondYBGww1Ja35B3DowIe3cweZUJjctva87X/f3zYps5vtPMxGvRbH
8JJWJvCv9Rm6R+uAHCkL76KPbGzX4Ha75zGh8X7ig5THnWAbq7ax4TYbf8cJ
19XeZkJ+Y+KidBodbrLdF1/cyEbH+nQdfX0m3JRyTTOm6hlYmd8klNaPKxPi
rEoYDIgrNAviO8EA7u+R5tdjfXg7X/zrk90McM+82raKyYTr0uf5lNpZOPdz
zbqkvm54O08i5Cul9/kXpz05LTuANNWPsW/+NUC/qGnB0c19sJHfOc9AYxBn
HU07IdTRCA9O0oOWJPVCy6LFGrHTOeh+3+PKLK8msLi9uHjsJBMqp/Jk+ak8
uXAqTy63iDU33T6EMZdD4JsrDX6FsqU7jnRD3IDPY1PJIZyTF6U4ew8Ndhzs
buH+6wZ7ES0PbOCgIkfKhCNJg/itB3edFGD8nxw4byoHrknKPVxFH0AvpdKA
vhd2RQ4fBfNW7+sHcW/eo5SNHJS4c/jc9Vz7ov/5y4JLPPeXd+SH8LZkypXy
4uNFRzcopmw7/9/z23z7I3O1crjosu35hdxLDkUuL3+ZcX/2wPGNGUsUQ7jY
H+ny2/iYQ9HFbQ79xfoMCLHuTMnR4WK08M7nGysdit4Oh5v0lvy/3HVwKnct
mMpdpycKS5WtGMCbRz7IifE34hedx2YvlPsgj9e8UYPqVmYfs+JFdyMOz+6I
2/K0F+zvpyqR+gvHX/1E1R+VbtgUkPr/t7zU8N4VY1J/7U85t6n648YNonNJ
/dNqXkSQ+nv/Gj1L1R9PFf+rJPX3+SrpQuo/EmUQSdUfL/4U2UHq7zTdkzvN
joMhF5X6vr5vwvCvAvlK1QwId9mwq65sEDd4smedMGjCYevOuMp6Jsi42Op0
sQdQ6I3e9r7oRozVu5DEW86Ca5J3hNa9YuNHJ7XdL+IbkHP/1j+7mj64Wmbb
f0ezH132zbx7iJozL0+K1007SNX/UO23Y739eGv6yd9fhJgo8XT8lennHvBa
Uq909yAbf7yLFY86xkQh1w73RT1dsHcqR+VO5ag/pnLU7b86n5N+TwhtMaT6
HRsWys0j/W5xP+wU6fddWh2LuXQmIjOihfT7peezZ5J+zw9Pqqb6HSsOn5Ui
/f7f9oEXfpn17xTV7/tcVqRQ/Y67BrLaSb//S7zqQvr9a4naBNXvqPSeFUj6
PZc/SZ70+y5XnQGq3/HBrgUzSb/TlwXPJv0ubd9oSfU7Yum+x6Tfna9EVZB+
x96ss1S/Y3GykT/p9/WbHWtIv79ydxZ6upuBx0+N15F+/27B+rme6nfd0JN7
qH7HwAWhN0i/S3NTPGYU9SJKBT4bZ/TjTYOgHZvonbBLp/jfO2p+BZzlfqbm
F541PeBD5teC5XwfyfzKL9h7nppfqJFtEUHm11JGvQ6ZX+3WJ45S8wtDaz1E
yPx6G1PgSOZX98HHkdT8Qj7Nxi4yv6orrLlkfv3mufPVlLAx2SolisyvXw4C
K8j8cvjpq0HNL7y7KICfzK+RqX3g1Kl94B1T+8Bu6yWOk/nVkSxyjZpfeFNW
L5/Mr8xFu26Q+cW/TWszNb+weUtVJplfneo+t8j8egCR5tT8Qq+nZS5kfl13
yL9H5tdnxoohan7h5oNCfmR+mVTKi5H59a+PuYWaX3h6deYbMr++RR7NIfNr
2ef0edT8Qtrk9Dtkfn2edFcm88s9y8mOml8475XQbTK/nk1z8CN6TJjfbA2l
x3D27SY60WPzvFTqiR5bnpD9g9JjeEKjhk702G8FThPRY194gncpPYaZ8xZP
FFN6bMGR/kNEjz2Mn6tB6THMrv7jSfSYQ6P9M6LHcgUSIyk9hsLMwMVEj/E1
JOUTPRY2w28dpcfwjrXgLaLHDrqZ3iN67NA/8RRKj+FI2t/HRI8dmNoHHpja
B14xtQ8cGCYuTPTYv28Heig9hvTbBWuIHsuZjEgkeuy6udc2So/hj9ybb4ke
82e2ziJ6rCcw/z6lx6j7HOMRPZZ8UqKU6LH3Sqn/KD2GATHVi4gei/ePeUj0
2KDofaLHUG3VlTlEj/mujfQmesyTN0mn9BhmvA5/TPQY5n+IIb4gNM0sgPIF
WLjZ+jHxBQcl2DuIL2jpz/GmfAE2H0wNJr4gofBBGfEFXc36VZQvwLjEchni
C7abxecTX7BpLPIp5QvwCv/6E8QX7BCacZL4AnmR62OUL8ABiUMZxBdE1U7n
J77gThroUL4Aoy6y3xBfcMowdSXxBdqWMY2UL8Azg7cYxBf8773fiKm93w+f
D7YQX2A46KdH+QKM7GI+Jb6g2mtmHvEF11sGiC/AoynZ1sQX+OhFWRFfsDhK
zZHyBXhAPnU68QXNTP5G4gvC/jg/pXwBnjfTlCe+gPPkuBPx4wUP489Rfhw9
OBE7iB9/dClmDvHdSk+uClK+G+ubc04R3z0R1xdF/PWG8BA5Y7LHGxK8mvjr
ButHmsRH33t0LpHy0Tjb1UyC+OhLO7Y6Eb98fTm7gvLLmOfw5zzxy4eGXT4Q
X+zlZfCE8sXYyF6XRXwxHNOjE/97jGvdSflfNDb4+R//+7/3dXdP7etaWu1b
QfysKX9+IuVnsfZLwSPiZ+saqwqIbz07sn4p5VtRMClSlPhWvtA0WTHPFmx9
Pi5xWWMI/3y+tcrxLx1+T+0teE3tLeyY2lswM738XjO+Gf8JLTO45TGM8t4M
rTffKuDPnPBhkleM3FjZIek2jHdVf2wgeYXh6ZZ/OuHN2O0aSHIJ/DNvvi7J
JZYd3LqY5A9uL66S/AFT3Q69J/nDhJHsEZIzNE12hpxVGka+3NhokjPom3Xn
kzxhfYCA1f1/PFzVOyhO8gSFa/mDJDeQKbX6bZvBQ2mNyQySG/zvPVu3qT3b
KxEl8SQfaLnh3WpuyMU1d1iSlys6oODwImXi96+Wbfh2YzcHPSb4+4jfv2SE
6s2Ur9dUV42nfD1mSriGEl8/NsfqhY1KG66bv/w8fzUPKpVmOwe0fYI92hNz
1ne04mGFxHGPfh48dK/d0H/4E6T6bL4o4NmKrx+G//k2wYOTXx5cGLv4CVIe
tZ6/OLsVHdVFVw7zDcMp7StB+gbVsCFs7tnyBy1oYQiv7/7lgTHN6tfwQA2U
tyXci5FsQTXn5EVXBniwjz9QZtK0HmZ2fO/Q8WvGTZNlRmVpPLhMZ8639WqE
8f/y/wO4ZBjJuNu34oawhir3Wi5cNTU4UG/VDDp3fuzIPtSCN6ToZ9RFuTA2
8/jN8M52mG29qNLsFg1vBQb+sHPnQP14SkmmJwNMW1xDsws7McqyceXuSC78
GdWttWmqBwMn34XtVp1kPr5xqePCP1Ut+fiuOogONI0a5HVg87m6kuo/XFgg
fnnsY2stdGcLBDw814EfH+no3ZPlAbNTxF3ySi2sNXT71/G5HZu77pyZTZ1/
9/Z14uJttZB2PKFyzL4dJ2y+rMvV48F1syA575E6iNAvNxWvakMDMVPbmzo8
iD9Toxc9UQ8N/yX/ebmq7p6leSf+WjMkvUCJC9Lui7MNW5uAq8n0q73SgSOv
JfeojQ1B5CyWJGNZC8ikhLlFObWjqoqWwhynIfC2MtR7kd4OelP59uz/lW8L
tAgsfMPPwKdOz/g3xXBA+2LL33GlZlCdP3/O2bQenNH6xjlz5hBET4Q0zL7a
BCFeQhtOa/dgad4D8LQdgt0ps1ZbWzeCgkb9w3tZ3fhj6y2/rhdDoFr8gG77
tAH0ZhSa8WS60e/D4+olvUOge5t/s45eA7T0aqTxLnZh34NdN03EuLD7eOZb
8+0NsCZ5vGn6Rzru7TWJeruBC70WS3vfRTeA6FQO4/6/cpgz7qXuV+YysNz8
+/w/qRwIn2729UkiDeyyFvhfhx7caR6dTUvmwNWRri/yf5sh4ezIsfdq3biu
bKlO71UOPDz0Z+VSsTbIXmKMXwfoOBit3T+0mANGmWbLX6l2QuFmY51A8U40
6jSat15pEJYaFPAnUj60aYamw2XvXlQN/1QXd5gNuufeChjN6gSjinfDK9x7
cc7ozFUXZQZg7p7sOCGPNpDKvlH6XK8XbxyJkgrPHYCfmYnjS8NboLnJfeO8
ab34vG35OcOtg+BY9fvNZ81mkEm7yT2UykRZa+9LZ14NQtPcu+vmHaDBiQZj
eqAJE7fsMtN/JsSBv+JHnB9S82X1pWtn+lgMfPy5XXWnBQesN+aOrXrRBM//
Vw5TPpXDmMxTXMIQYmFe3fv7KwQHQCD51QnLPy2Uz50pUxfYiwKy4X5uGgPA
sxXniZS1wiOf83Ve35i446DAnjv7B0D45opG38XtoNh//Y8spV/f7pxXprRz
APLl7n6RW9EJjS6JguDKQK72bHe+b2y4OaGt66LYDQpXY5Yphncjn5v+b8HV
bPieLl6vv5vy9w5xh5UUO5F2y+B448k+OLN0c8L3sD4Q4nNY+5OvH/WTFi3K
12KC/FUbFfUBBryqDjbz3d2Pn8cuCvI59QI4HB4ZcumG/OtXEhX39qPiT/r4
AXsWiKgcnvG2rRP0h74o28r3YxK/iWixZh+8xSpu/0A71H2Zy65r7cOGN5va
V/zog71nwxKyLrXBgUL5pVfO9WHLQ7k1N570A7d/yc55fq1wJjWbseovC9+I
xdq4q7FhglfYMqO/BQSmchj2VA4jOpXD7Gnt/Ft0k41ppquPH7vcC5x7joYr
nDvgnuzLC19/9mPa9/y7T//1wvGDSt6N7R2QO/pzYe2+fvT91j3d0IkFzjZr
tcexE4Yu5L88EdqHezZoKPBnssBFImubjWoXOOHEksl4FlbnGs+qqWNBwoHy
5RnWPbD8WFyjnG8v2ini7MInLPh6SVNeUpMJpnee2rB/M7Dqvvtvrc+9cMX8
cSKNek+66N6U33/YaLPSrmlIgAYXgtTBsZeqn93OLa3tA7hTfsj/W0ELZGwU
v3tgTi/s+7KHu3rVIDZbF2faFbTD2D4tP9UIBsyd2mPXm9pj/z21x947nhck
OcTB3W1NPjsjWqBxpshA1WQXGDpfW3WM8pv3XDbNFQ5tg8Ohr9rNdLshqI6j
6587iJf7y8LMrTugl+8Rhz7UDWZTe91+U3vd4VN73UYLxVzEuwdQ0lG/wWD4
KUQvFNdT3tUPpsYJk9KKHHx1xmy3iVYGfB/Mj8+OZ0GLzr76h384qLP3jJGT
XBHYV7WBrFEvvJrat/8xtW8fMrVvL7lydXpnOhe9V+5MlLVKgHsH08t8vvaA
vKDNrxfnuPjmWLf9zh1ZUGzIFt6pyQDuj+75H4W5WPHA1njDNYQ++z0arBcM
yJ3aP185tX/OmNo/v2xia7XbZAC3FPblyVTWoejLwbfy7n0wqVP2JTORqvN1
taWDWI3+2+iX7i9igVZMblVmGge7fJ+J7eVV4L5TtY1nZv6/Pe0ZY///Pe1X
T4z0lkcOIX5h8coFG9HG9IJdY0E31d97pD9mDaGngNa57V9qka/zW7hIcg9s
3fFTRyllCC/+lJAQLalEy32+M6ZT81Rnar/abmq/umtqv3o8PeN38JV+3F2Z
o9N6qAdv/lRMvFnGhJX31fb3h7IxMmTkrd/TbpzmHvZ8xnsG5LvPP+J8fgC3
hhV1it/rwiiduIfG33rg9tSec+bUnrPK1J7zkP6NccmTAyj1+5HlG34mZs7Q
8NU52AkvHzHnMLIH8BWPdyVGlIELlpv6Qggd3smptR1nD2BKi/K6uIXd6M2/
zWtsMTXvKl/SxiYHsDHZsrpjVyea2+z+6KvEgHUOm+031A5gbq66kWJJG+rU
yPPdc2OCh0ZCFlD3csI0XGZCtAXj+I+ESI33wi76zH/Xbdk4vqBHgKfShDO/
zS5mlfTB4czZqWZiLHQvVgp7ZNSPcKH4dlUVHXYZmL+hl7JQNu1cIFOyH2O6
PQ1nu3dC2+unKiud+jAgR2xbzqc+9Bf7Uzx4rgOmTe0z10ztM++b2mfOOLdD
83NCP+ZMUzk6kMlCCTsjo7tt7XBgjtoBg9VsvO60v7x6JeXX43NdI8vbIU3Z
ZYHzIzbm/p1hez64F21+2E86fm+HH1P5BnMq33CcyjecH/hezupmoeWysaWj
4mwMkJ3GvddE8V7hPrFnqn24S+OAUIplPw4oKG03NmqH1cxTEsYUTwZcfLK+
9lYf3tq0o/mgTCeUTq44MHm3D1unV812esJCjfJZnunHuoBbmVkV7deHQU1h
Ql/CenF53quQF5IMiF+83tNsTR8WXzIRUj/AROXZhW6na5kQUpuxqfUcCyOC
LdvGcnpw4fb11x60s2B3VbAt/S7lr3ME7+/7PIgHZs6X2P6Aml/rDMMz5zBR
9Jfi7cisQfz0QMEtX6EF7o306GZfZ2LNphN/73sNYiUn9ohrTjP8sOsPWfyD
iRfUUxL5Ng2i5OFN6W98m+HT7pXi/+x7cfyOjO2L3gEM4wzWK3r9f3R9eTyU
7fc/WVLWSovSjkQK2Vp0aJFkTSFJlHapqGgRqUQlFSlJG0JplUrJISWyjp3B
zJhhmBmUIm387uvp/nye59vv+fzVq+s1r9vMdZ/rfd7vc851TjUsjdOPvVPQ
guaSsb+GhVN2pH1bxzSlGvZfyo6ao87FZaIOBScNPuY7Rhply9WA6I/4hjkd
33AyY4l9RDYe2ird4Ty5Az+8Zmz7qlcNjrlFrefFObhe9KCnObods43e21XU
10CS28NF03Q5GCa5KPLyJz4qrcj41Sasg4E0eee5izm4Wem7skiLj+Iy1zIt
Q5kQdvhGkcxMDq7bHPMkQ7cNJ6b7R44sboaYlE3TdUrZmBerG+wv4uGaBd4L
WnZx4Pau0GLD543o1HlP+qGGEOsDx3te7WNAwTvtVI2NTbhnd5+U16AAg97s
HdpSyoDilKd2vGHNqGY9ZxezQoBjiiQ4+m8ZcOruO5ZNWjNWzPx0M/GmAPua
8rPyGxlwM1J5TMdyFp6Xn925c5sA0x583eykWgHDU8JNHJgs1FP5Xlg+U4Ay
B/WPpJysgCUeX3cH6LNx/XW+qRevA8OLL9vUjP/7XvOfcYzwU7FLwvc0ovWd
EPGYJgE+dReu/ilWBdH2xhG52IgKknWeMz0E2MJe6AxKNeC647FjEa8RmZ0l
322yO/C9hfiBiU8pHuieufDQu0Z8knvIQr+lHXeOmbFdMLURPr40P24qVY+p
pQFDt4eKcImqnt0QlxJQedd9UCu4Hg+OXDVr52YRfo5VWqD7qASuzJjbxumv
xyjfLwYLzUVofOXWROosQ9ho76WKPpS++PDixQgVET4cSDni9rkUOJ43Rx1r
bsBMV7n1s0VCnLet16W+twwKd6bt+mLJxMf6LlZVmZQ/GTp9UfWtclBb/Nxa
No2JGuPrm/ccE6KL85Ok5N0MWEXHJQzouMQlOi4xsOhS6C3bOvzQV5C6k/Jj
v3R4Li2CKgiSHnxgtqYO/XaEzVsuL8SKOH28L1EHghlLbjlp1eE0s+eP13sJ
8NB48UczPjVAEn0PcQR9D9GZvoeYMHb2BY8f1Ribd+NAjEcnKti7HnVyLYSU
dyNGpbrWYOvu18JE6MSjl69tYG37APrac6eXP6lBKZlpm45M6sTtW/R2xQQX
gYB1N8V+aC0WP95Zx+wX4eznjybzGorBUf94ZYtTLX54k3U/vESEBVJlDsUn
SsE3UUM09mYt+o7qiV0VJ8IZvcEi9SXlkLg/W+INh3pOxHHxz54itBRwMup3
MCD/j7iELR2XuPp4TsSBg1X4xWvSMHlrIW4N+b5aeVMDDMaMmvCQU4nLdKZ0
npAWYMHWR4KEIyzolOgNHHuuAvMVzIf7F/BRJqqw8uhKLnyv+H3/VJK+f9pB
3z+999rn0KzwDNxwTUfMNLYIhoXXJl2c2g0Dq0N75qS+xdMipcvis+rB7Xp8
W2GfCPbRdYA36DpAX7oOUOT2ux5vj+3vejxruh7Pha6rSaDrahh0Xc2xJ6OO
ZByvRBW70GHxr7lQbKQ98NmYD6q+gs/b5EowZJNpzdnNjZDZ5y4+J1sIHTet
bshMr8f9Z0N5QlmKf7us7thxphVuPO/+fM2eibmjix/3HGzDuLljD0fObwH5
81UJqFKHue5de+znt6FwvePF+fFceL19yD3ynPDmxnrqOThvYXU3eY6urgRn
skcFTpoxf2GKFweL3nrdO2DaAWl/3G9dSduVs2/uz2EeNXiqdMZlhgMf9Vji
Dom1LdC457LkwhdVGFeRYnIvleIX84YV3RzFg+qjTy+Q35ulktt27TUXI1/P
GfuF+r3hdP2eFl2/t5Su37s8dHcbiRvsPWLG3bi3A4/lbGGSuMEy+t5rA33v
NZC+91pdyl49fFw+XneUNLQ3YuIzK5PXYT4iMOiedZG8XxmR1PP5sUU4SSie
T95vv9bvOuR09991yHl0HfKniN/1e59jftfvXafr9xbxZK+Sc7R19I591DmC
h5wLYeQcDaHrmqLpuqZguq5pRvJhmQiKd5mXPBxC8S7I2HzkCeFdzIVbdxJ+
1ek/N47iVxAyuPw+4Vdfp39hEN7Y/M1qk52oADa5HK4lvPE/90+t/rh/+h8+
PPTO/+XD66X8u+9PbsdW7a3XujyaYe0MnoLMqCaoSM4+9o3Xjv6a23d/P9MA
/A2+LvsNmsE9Ok95T6YA6w0NpU9VFoIdd0N83QY22LZtD1ZUFGJvoF3xprMI
ucJNxxVusCFjhz9biuLz/ou6lwZrscFul5yhdiETQO7ZPrmDHTi3bahfbmId
/DzM6lfkNkFmhGm/S64Ata7nmzwaUgZLRYOytUEssImfLXNzvxB5DvIfbCwy
4Gr0pX6WERtC3tYf236Ej3UpB7VHj+TA/PUNr63aG6Dt1SXHxp4OjHAdFt0W
VwMz0oOPJDKbwKC6+ZTuNQFqfpt5c/rwCnA3OKJneKsZIr1SX856IsSj9R/U
x7olASuFpbexhwXKdL5Yic4XV9H54ourPkiMo3is0kcroHgsHLXgniM8Fui+
VdZ03ypxum+VOb2+iF6XoNdHoLUt4fM7H464TvF50G8Z7kP4/H/6MuXUp9z6
Z1+m7iEJEwhPNpFdtIXiyeCp33KO8OQgGe50wv+jtD9XQE8ppFpqXSf8f8fH
k62EP6f0e32KH90MKXsywwl/Tp80fgXRBStvl/jK5xXC3o6O4UQX2NK67Pz/
uG/rSOsdFq13biRnLHb50YZKvi2rAr42wgi/xwrsDjbssDt8Yts7PvL1Zhxt
samHE72b5seu4IBDrXHyfsrfJzgvXz66rABWLbORSJ/dAgfgdqfmxw7c0K25
W1o+Gw665D0yd2sBpRlG7BdFrThBQVxnd3QTnPj8bnirdgu4q3g8H7Tm43y3
mcI9h2pgXNWZIKxugTkZzQmT9rXjhDmrxTYeLgZl6aDF4Ru4sOZHiWrO+A48
s2JW0TfNdChu3RpX/IQLittYerCUh3OUrLVKTjbBEKe+q8sovbxl3aKXn7wo
PHKKrpL1q4Q78Xt2Pn3Ig8iYLn5mVxv+4OWWHzMtg9FnOg/otvPg1MJfVbwq
PlqtkgbT8ltwzVb5SYRjK4yIPrWJ6EHZ1QrTKT0IV9nuL4geXNM2fifRuezl
CjpWnbfwaLDmEqJzh271+U504gNJ1WA+FkOfQn0w0Ylreet/Ef3ra9UZYrsw
HXNU224S/auUPK6Y6N+yzpiUHVOyURRSs5Do34e0fuyn7/lm0voxrqz4MDmn
+t7rNTefRfysGR1Mzqn7gl3y5FxPKt15nzrXqJ3TdIWc6+lqklLk3O3dxZtp
Z5GBFyJf9ZFzt7bpZDc5p5c/tjVQ5xSf6DwXJ+fUs0spk5yjxMDQNhW3JDR0
k9Ul58in9nEgOXd2C8d/pM4dXtB4q07O3X/s/LZ2aeo/7fyN5+mHRKdXJ2v6
TluXhJ5bq/OITn9D99Eyoftoia373Udrm43JV6LftXSHv7FYkoFdv+RliH5X
dnZSJPo9dfrE2/onEHU8woyIfl9C619DWv820/r3VPX2DmKHOyNelQ6Vz8aY
3lf3iR3KznC9Sez23ceLnyi7xfP+eweeUHZrYeY/ntiV8o1EuR+a6WhoGBxL
7MrmjnI8sUNLsReXKTvEhbkzTIkdTm2S/stOTtqz7kD5LXxsrP6Y2InI+haH
2NWqjb+cQ0zLsHPAcC+xK8h9epvEc0Yu2K0qlKhCz3ufjEk8p1fL4sn6D3ys
+hyS4TxQg5evHbeSlW+Bqj5OE4nnzDa0/LExqx7Z3bv8STwngtbjD2g9rk/r
8bCrZ/YRnDd1m5BO4TwmcQ9YEpyflzCRQ/yCqtbpBsovYJL25V9DKb8QrNa6
leB2Xv68lxRu4/yQxg6C27N79jEIzk+su7qRwnmcKHFxOsH5ndd9lxMcXrVG
r5nCYXzWetqH4HDAjSJfgtvKjj8tKNxGywtX0whu59Dv14J+vwN0n7SJ9+sC
SdzJYHhK/rLoGrzlt6KexJ1+0Pq3ida/O2n9uzBRV5XEo7Z5LF097Fwdihv9
+EDiUWXTdhmReNQ4WUGFk1sDTp0h2UDiUVdqVQ8Z9/OQe8uwVcqSg0q3jr+I
bGPDx4QW7YD5rShoPRs89lgLrhyvIVHr1QzPFpxnLDdoxe2Su645hXFxQ8Yz
S5d8JkjQer+I1vurab2/DtT1pvu1YLSUmpXQsw13zhELNRzKhGfvxAuZ09g4
f336aXYoF8tORzrFRXDh9KeeU0JtJq74GinI2MdD8XUT4i+e4IHJj6VRPvMa
0E/cZ/rVbTy8rdGj8LqZB/3TfK64b2rEzrcWT+JU2lHpsLHBnHEU/l9N/6wn
xUTNNOXtS5a3o9xxywCnHBZEnwtwMqirQ620FUOma7ejje7CjyrU75XdsWrS
XJ0aNJjaM9x3Bxc1FWzsw3ltsCysAsw0azDXN9eAH9GKPW2R66JbeWBX1K60
Kq8cdxxZHHPWlo0XrYxTpOcLQBQ4c+WrtfWYHn2f33xQgN7s/H3Mw/WQQvPD
UTQ/tKX5oevChmc9N6pxG8iNqp3Ox9w+w84Jy7lwtNm39OE8BiaerPmc6tOC
ylpDLqmmt8OJuiHGatMYaGD4q1xdjIcp286I9RzgQ8Q5r1xBXA6683cU17xj
4Ifz4q339ndBOX2/4zB9v6OEvt+h7fbuMsmvWR0LDBhSTOmUx+PXkvzaCU9t
uzOra3D3yXg55YmUjp5yojH1Zj106SzS0FtYjbdnuPhggwBHRSveWh/FBMer
8U1ZbypRftOU4m2/2vHo/LH3v2zgwMHs4RfkZEtAIcB7xPL1LRC5527KyNkd
ULt6siepp538zk7u0PAOWOp9EUg97ZrXKwtI3rO123jZ6QOd4LasZRnJe7pM
stwyWdSBqUNz63bPqoIDplah4xJZsNlCJfj8DAH6XGAvfeJaBatHdm2MRuq8
ODj3yFsK0CBVSfuHXxVMTiuf9nHR/+6rOaJ/9EgsbkfB1xHPPlhXQt/bX5Gp
FP/M21FjEkzxgSFlr9QVblSAxWXr++tVuNCfeuqVzIM23Fwb9HT3HQa4FqVZ
Wb7ngXir8gNST2U+2VBCRXxLtr5uzEpST1WZ4T2R1F/NKs36RuqvGkxm8Uj9
1SKTzL/qteL6Hl6M0t6S3bogy57Ua/2vvpTaSz2SSD3YaKPzoaQebJRu8CNS
DxYkp3OV1I+NNVILIPVjv//lArcqcDWpNxt27lS/wlfP7Fu1Azmk3kxSP3Ad
2U8dC67anllVmNk38SDZz3kyP/eR/WyOfH2B2k+8bdG0huxnxz15PtnPKVVW
AdR+4uSplaPJfv6vvo5b/NfViT97DOYrLsSVb85Hi5UKIWm7usF4/SVNV24x
1IRPT5+1tAXD93xq1ljSAc6ZFWXz2QwoYEoXBQr4qNahezLAigvsOSFyooNl
YDPwobl/DQ+bl4neP9vJB0vmnueNxSXINlSXnnq+CeUtbBlNG4VQHDI2fGXm
OzS+zeRJ3K9BFzm3dy67OuGe5Davl5WRYOUfv8Xi+W3Y8K2sL+xbN7xZM9ma
pZiBK2QGM59fzMclb82neW3qBsfYC8lGqmV4d0OPj+uJFuxvHLExpqMdFs36
rYOWevzWQa9pHWToa79hekIWvGm5+OjwSgZEDt8jWxLbBTL5V5UeLimEu7Pm
XjjjyQL7EHuVaVpCiJd87PBd9jFoJZqqLW/Lg8mOUoG/wrtBku77NILW3U20
7l4UYsPzk8tFtzVyrC2R1dB/88jl2MpOMHlenqkRnIN6jJITU1MY8CF1/N2u
Q10geVs04EDhkpG/XR6FS5CroxxJcGlztm86qXt/c9PF2mN9Gbz6GfyI1L1L
0fcBVej7gI70fUBjy1MbeK9uQPvAhpkT3Z5hD/uXenZjN6TQul5E63o3Wtc7
TGrbS/Z5Son7nkXPb2PInIAfZJ8PDm01JPvsJPHBNfNiPgRdylUk+3xtgkwD
l3r+Ifae5dPcnsGYB7ljyfPPLj0bSerwo2IDh8v2cCGif/czUoev7/47biBu
/ztuYEHHDYbvPB1P9p9Tdv35oZUMPDrqqQ7Zf4vZcTZk/9UivbNPe7JwgXni
KrL/3UY97mT/N9eenbCsLQ/1pu29QPZ/mrfUL+e1FXhkSde6GZ08TC0cu3zF
1jZwoHX35ze/dbczrbv76PqNA3T9hiVdv2FI6+5CWnefo3V3Cn1Pcyx9T3Mu
fU9T0ynu0bEluZgyYqauVHU17tGbadXzthPU6ftxZvT9uDBaXy+m78cF0/fj
VOn7cZUBSjfIOfJ6cHaAOkfQ5XPNnpyjW7mdmULqHI2Q2DDr2xoelPKCzpBz
tIjOp8vS+fRuOp8udeZk3JmnVTjKaM3Wxutt4FYfuClnCg+GSOxoJ3EMY1n5
uwwHPuCsVCBxjPEZyr3jRjFQZ/XPTTFdXAifYOp5NYwPhrMVo0hcZe7BsiD7
+W3QcDY+lMRVxpaoCEgcRjv0dGbPwTbwVpq/n8RhOuLqdIifnXl6vxXlZ2F4
08cVxM960/v2yfH3vs2n903P+dA6Er8Sy1TR9S/gw/GVu+6T+FWO5b3XxB+t
HDuujfJHcNi68jzxR94xLpnEn84bsmXqXZ8WGDHm0QHiT6fQcSdvOu7Eo+NO
e2eNUSR8wO6h5BSKD8Boj0mLCR9ION5jfnZrBUrp+LhG7OXA4v4rNgZzO0Bz
jk92ZV8VjhW6WuWXt8C+gdnC+Lt8UKLf42T6PV78T5yEtpNK2k5O0nYiS+PA
OBoHqmkccKXvsyTT91mk6fss5n/URXTQ71GcxbhBeEXA61JNilfAUbGIesIr
Nv5xH/AnfR9whdu1o1zDOmQnj6ooLBRBUvXEX3KCIjgXxclymlmHn8ph45s8
EUxUWHw6xr8Y7r1nz+UY1eGoh3vV338QgUbG4CrzmiIYn1P4Pk2vDtcq3xJ5
vRWBnWnt2jb7YkgbOa9ws3odRi1ldkVkiGBObfqEw1tKQK0iQK5ckeIhQzUc
wuJEMKP851O+QRnUP9TatVlUiwXxP7+W7hHBsc4Fzk3fyuGDZf21kU9q0Vx+
qYG5lgh0FjbN/TSkEqaXvjHdaVOLzntLm2ofCmGn+bqaLsUaSG88FTP+fA12
OTGLdr8XwLDrZYXvSxrAc9iIKWY2TFx7RqoQcoXg2zj9Wdu2ciiM77e5qMfE
vaOmrhQlCeF0rWqy5woGcFaGfTrixkRbmfp6zXIh2KelOcxklMHNoNRqvicT
q4a+ijCuFlJ44dG/2L8MXnqEKW9wZ6KfVJDLAoYQGle/qk1+VQbX99xysnFg
Yts1jc+n84QQqrTRKnpVOVxoP3/az4SJPhPUk/JThWA3/PZAjjoD8pdVn5dT
ZGLCdpMDoqNCCLnw+NAdnwqoN5se+aiogTpi15PHzBNC+sg5BwKcqiC5Md3N
eF0D3v7Vcvp7ngB80roDzqjXQtpQq+tOUfX41udg8JqeDjBzfqyp4s6Et6/G
i8/61oylV5EvpyWAw1ZFsfG9lZDh8mhd8YNmHLxX5Pq2swM6bydOP3yxGvbd
eCGUn8FCC8MNSWp2Aljo76dSy60AI0XTqcvNWRg/HY5qeAmg97KMXoRZBdyS
G1Jvbc3C6Z1mHre9BRCf9lNJ6ScDdF4fL2euYOGGymVHu7YLoPzSlUZ1pQro
Ntynf24eC7kVfreurqOeM8XgQ87RClgtrRn5fBwLR74eSLYEAdze3B7ku6oS
DvC/zt/DaUbhpnfJDEUBrJSQWFJ8swrk5M8GGYY1Y8euj27aeR0QLR7BjIqs
gaiOje+29DWhnXCV8rFlHVA5pHtHiXs9zC7QW8T92YhP18Zf1N3VDr23Lod8
OtQEEWxpR2/KHrojXAY3MSkcf7flTlYRByy65+2vvsJB2+64b6tf8GHngkLG
vNt1cOKhVgvLjIPLq0UTtCz5cKV57aTFGkyQLajqMCjnoNOZ3VfaBygeE2GS
ksqpAcfoC+fv9HAwv3AIM0WrHc4pFlyZ+awaKnYdO7FRugVNF7ve8l3SDst8
dB1tJaphrPKG6ssKLai2bbPbEpt2ym4Nti7MrAKl0IGqELkWZO+4uebSinZo
WCpIesSoAsVb2UfLBzmYvmz6rRrjdti8wZvNsq0G6z2H2kLaOLhGjas4b3Q7
cIfHMwQLaqBhm8SgRRYHI87Uc5DJh+WF32LkHtbCmILPkQ0BHAzo5JgPBvFh
z/EAqSml9aBfvvTzUTkOJl5c9EFF1AY5vWmbT9U0QoqHy+iPzmy85T9WfM2X
VvA4M3r7PkqPK9T2bnkytxmTra8cDl7IA3OTDe9Pp3AhaZJ3m/z5evQfE3d9
qBgHgvevmne3nQ8Pt/KarjG5yFZvn/lcjgezleoWhes0w/LMnnWmalzMyeKI
Oty5kG0+rKuihA2BU9i7J9rzsFXvg9/AIR7MLfmYuCKDCTM6yz1SrvIw58ey
W165PMg6YDQy81s9hKW6W3ws4KFHQMNdpogHXwUD8cuq6qCh6fmr/S08NJI5
ULVHshXMf21f9XJWHfDPqMWJCXlYFuIdlyjbCloHZwnYvbXA29i8NY/LQ85M
v/BDEq1wZLJf+AXtOtiTm9D4uIiH9k8CRuYJeKCRl1ExvqIOzMpiRujd4GHG
WW55zmseaB4fU9vbVw9qxsp7vjtR+jbVNOPnPgr/Z7x52/qECQyrV1cTWrm4
MdrD+fEQHgQNj8KX1D4kz2FYBepz0fzrtqdbbbgwZTYUPWOwwdPg3vThii24
Lf9KaolaCwzi+sLguVzYnPDe8g6lu+9MqT/frc2Gm+rHdUK2tUHWlsZXm360
YtSt01K6SU2QMaTSca6QA/E3AxN2lrRh/MjBgcmPm+E6wzXRcBMbTl7//tjZ
iY/fZRPGwQYWTF7wTDrjLKULJi+as/4BH1fOGmX2qpQFXSrJ6/eKNYHOul8/
V3H5KBVmH5Agwwbr3UuX60g1woUFqb0lP/k4Xvh2BIxjg1FQ4g/TcCYYqmpe
XTBA6YEh7AV21LrxgsGDE08wgXv70bwCPh+7LldeqKKe01E4at3xXibsC3F9
t+0ZHxWlfv3wLGOB7yan/RtbG0HShd87fBMfvcye7tDyYEHclnFDyr2a4fL5
x31X2G34VDFo0OxJMxz6aWTQtJwNv0LzRkqPa0Pfm1yrZXea4Pzc5F2b33PA
tqIpoJPy01lSN+9xJanvbWztubaIC4ccXnf1fmlBocOeyH7velAdnL0pdlcb
DD0yTtcznI9RvDKdVFEZPHu4tNxZkwfd9BwEcTGxuf+cg/CfuQliYmI5/5yb
UNe059Hp3Ha0ezK6/sS7cijK3So9+kALMOm5CdRzmv85NyF5gbv9qfMdWDTT
KS3VlgGXr2xXnqXH+e88BerzaWQeQT49TyHkU+8Zl3ECrGJG9QZROsJnvb7t
BEv2f+csUJ8XkrkGofSchatPF1vN2yXA+7PGjTtG8U2j1Q97R7uy/jt/QVws
OJTMR5Cl5y/45Y1b8+aqAI1Gn12/YYABDuddZ4y93wze9FwGMbHgw/+cy7DP
fkRI8R0BLj7xeXSfVAW0vO0re3z073gp9X1u/lMXK608Yl17UYCVSh0pJv0M
2KxydvuYYorH0nMcqOfb/3OOg5qX6eGNbgL0cbOc6l3JAN+zRyV/xrL+O9+B
+v5h5PtH/Ge+g6+0qfPPDuxfuFkq+yIDit2lnQ8d+nvuA/V9uv6aQ0HPfRhz
evc1+80dKDOuzHSMDgNufHyfL3fw73kQ1PP/mmchQ8+D2PaaFWQa3I6NF+tP
5V8sh035Zm1JFK9eQc+JoL5/yz/nRBydfzklRIOPkx/r9n9fVQZ51Toqq1J4
/50fIS6WY0LsqoyeH8GU8pWbOKkVs5ceOR6WWAzHLrirRn9ug2KfphnEPoUe
knmUfaLCBNUiYp9nDkmx7t5txWFfWL3qB0pwQVJo7hh3CtefiSUTO7wcM3Pm
yXflKF/PEiN2OCL9mgWxtx4/6R+UveHsqxMVib05cn1DiF29Lb27JDiFgUmV
Sy2JXbkl7zIj9qN3I20LZT/YuWmogNjPSFWllcRO7s6IS6PsBH3qCicQO1mQ
qBxA7EG7cJ0XZQ9Y7hj+ltiDxKiri8l7942S+Eq9d/wRNsadvHfRsei95P3y
Ln/1od4v+qfx+39Q7zf+WMtc8h6Pyc53oN4j6j4zcSDv8VbBjGjyvj5GiIVS
7wvvfx+ZS96Xo8fhAPJe0PNgCfVeMHbUOTZ5LxVGd26T/b/rFnngx6oyrNvX
OIrsf+uCyQ8Jfj4ynGZB4Scu8cuyJPjZcvwST+oBD2dv059pMbYRZZt+Rit8
54K1QvUlgqtf75eaTnncjPMdP8cSXB1j15RAcPVFb85qClfRQWbCl6cUru74
9GgKwVWNMTcPU7iKgrXNKwmurj5i0UVw9Ru+vUThKp7RG2pEcFVG8VsbwVWz
kObZFK5iVVuhgOBqx8OnZwiuvj8d7ELhKqrd3Lmd4OrHpBxtgquiuOf3KVzF
Jc55VgRXsb79OcHV7R7f9TeWsfBFUJcXwdUD2pXtBFe/r1h1i8JVHNP49VMZ
havDJN8JCK4eWTve0PxJM256k65NcNX/yvZhBFcnSCsdoXAVeYXvvAiuvrlT
tJfgakzCg0oKVzE7NdqV4KpymXU7wdVIYdNzClfReob2eoKr81Q6Swkf2Dj8
lTnFB3DGQZEG4QP7hr+xJnxgZ/EtaYE7F0e2J3MIH1g0+70H4QO6KoqnKT6A
87U2RBI+0Jb4woHwAbtvTs8oPoDvd+UPvKD4wP5lxsaED9SGLkOKD+C0Ge1n
CB9gO/HTCB+IeqLaTvEBDP+21JzwAeOzH84SPnBb0f0BxQdw8pSsesIHvGXV
XQkfsEhKiaP4ADLsLh4kfMBvxfYywgfCD6ipUXwA75UfzCN8YLXtFSnCB76w
wjgUH0BjCfECwgf0f+3zInyg1iToHcUHcPZk1jPCB55azb9A+EDvVpMtFB/A
atNljwkfEP/qsITwgQshU99QfAAjbyi8JXxgWavEZMIHjvmuTaf4ABYPhr4l
fOB+7uAywge2rYq4QvEBlPP7MpPwAdYc1y2E3xa6Dx++5gUfF7wZzCL81u84
k0H47duz++dQ/BbXYIkk4bcnwpWZhN/Cm9Zkit/iq96Vlwi//WYSGEL4rVih
VQfFb3FtbM4pwm+Dfij4E36bHZX1gOK3KF0WsoTw22FKbwsIvzUpqdtG8Vvc
LvnahfDb+y1WhYTfFjwy8qT4LSqkeF8h/Fbsdrof4bfKl6elUfwWBbqvKwm/
3X+poJHw23nmDSoUv8X40JR3hN+WTlHqI/xWxdxISPFbvHJC8Szht/o+K8IJ
vz39NXAFxW9xU27Jj8kUvzVdyOki/HYUL6uM4rc4IzHGnfDb7rGpowi/ld+l
I0nxWxx2J2UL4bcRd5hbCb8ddoZN+C1WX8rKJ/z2k6hYQPhtyFSHSxS/xdeP
cxcRfvv5qHWbNqW/4uB7D6W/8KDc8TCiv95G3jYl+kvulcY2Sn9h+BkdBaK/
1oTpVBD9Zafy+iGlvzA0smIY0V8VP6qGEf1lmBB+itJfmCP0mE7017rXt/OI
/mqRSdtG6S+8seupJNFf3T2nXhP95VOTd5LSX+jyPJlB9JfoqMI0or/WKYmn
UPoLa0XhOUR/ST5yCSb666hG/31Kf+GmhuX+RH8JR/yYQ/TX+KfeaZT+wlOb
Py0g+qtt4hR/or8mvb/uQekvvOk5rYborxT7jjyiv3YddhxN6S+MTn+wjegv
nas25kR/XS7vOk/pL3SQVj1J9FeqxVV3or8ejQ/6SukvjLijmEb017pgD3N9
Xi1yjfuNZZfy0EDT4fvBx61wq3XdnjJuOTYkjlEeHt6ItiE12164C2Hri5/D
iN4vwB3llN5H8xO1KUTv345qMyR6f/n7U46U3sctygsuE73f4r2hmeh9uZI5
bErvo98D4Xyi9xX0X74lej9x9JIoSu+j/N7hrUTvHz+0WprofZ0nmuspvY+J
l1e/J3rf21x1JdH7c7r7+ii9j7M1ny8hej9vWc8xovdDJw9LofQ+SselfiN6
X+GK3xmi97XN5AMovY/7jt/1J3p/8osnEUTvs692Eb2PelHb/9L7CRVPNhK9
P14mOYzS+2i3ee8RovfP9zikEr2/ok73EKX3UT/OyIjo/fMRHJsfmnXYZj4q
qSiuHdlV3reajrGhmhcmeWZiNbq3xGr3H2jFNJUZw3ebt0L5Wj8LFa1i7HMb
3bTJsxEn77B+VV4ihKlGv/vmcab97puXSvfN2y9atZvEkR7Ur6spLBShjPNR
IYkjvUo4NIPEi8SF7ZrvP4jQWbNwKYkXaZRYZpN40TwH226vtyKU45bZkngR
95RSHokX7Tlz/WNEhgjv2Hspk3jRzaNDh5F40RtL5VVhpF7O68tjEi/S1cvx
JvEizjAOiRehbflpFxIv+rRy4i0SL3J+vVPfXEuEx2UPzyPxIie/GytJvGiY
79G62odCnCq5sYXEi2zCnu5Mu1qDvAzt2KOtAtx4UH8AVjZAkJjlKhONarTw
9GqSV+/AuIgd9aNesWGDzwJ/z1QGenmPHe/fxcOX2RqX7cPbINDa27hw9Bts
m/FhyQblaqxOcPxSyuoE00u3O1dOyIAg+Wffw34VwqPxwVGNJt1QIj4x0Vqv
HPL1n3YvWE3xvMGsdb2z22H9iRF5JcZ16JbAWCVbLAL1ddPchmcXwbdHAzUu
c+twhvrOCY/yRaBtm2n8Vr0YbsQXbB5HvV8FGQMTs0wRWN3fYBkxvQRutyxo
HKlch4HLlnm53xJB1D3msGOMUjg7sGW35edaPDCk4br5IRHUjU1Jn/WoHJY+
LtGte12L07bslj80XwQT3miZZl6sAJ4kT/JLdg1KjJktdXSYEC49OtZXe6ke
1maGKGzcV41QvHb2+bAO+L57ikLWUDY8iDx/bsXRCuTPDf0pkGoDhk2p7dmV
rbAwwthu6fN3aGWatplVUQ9mFY5+Ee9E8FYvoTBs9QMwVgsIsjZ6gyPZF+Un
X++GkBs2zQUlpTDwXjN0vXsL5rTezM6Q7YCqaj+pgY1M7J9p8eNMjRCsK9UG
b3iUQcd8v/2O1DkNbRTNzKsSgl1Df0BGUBmY5b1wjHFi4rQ9RzwKC4WQX8ZT
75hUDjthatQQcybWzwwNLUsXQnvQyhNJNeUg6j2Q9EiViQ+3nLWuPyeEvh9R
J2S+M0BoUxvt11iPjouG+iZZCiChcqpNd149NAeuNrVIrKPwZLxOx+QOsIqB
4FOyLBCLXKkVaViDz0MnfLdJoPThaZdtg+lcuNBwr3M3hc87l4xu+OotgAnz
s040fmPAzdn2WyRsWfhtkkyQiY8AHLr7D77uZoDsy09rti1mYfZT9pHtXgJQ
T1mmOt60AjxnX4ouovzCSR8d7qCNADLyTvr8bKdwe7JBhNjuJsy2ilzp3tgO
jAVXu/adZIJ+/vDZCxQb8eH5Oxc8n/LhwyJJzpYVbAjxLNizd389lhuK3fNO
aAWOr+mX4louhL18Gv1+bhUes3uvs1CbA0tTfm1dSO3/rsILo47LtyBvlrmv
gnU7SLNl4pLfVMH08HfJVym+sZiR/vaTbTsc3LxQUHa/CqqvcHmpQ1swePVM
D/el7TCSNzAj5XsVvNTljlR9yca+pwd0K85SeoOviieeNoOBpZ7u41gWll7f
K5B0bIXx+Tf8y9gcCFBbN2ehRSNmOVR1qU+keAx8ZHvvbIUaoev96nYeyqXr
y0gMb4UnCyUvzpSoA48lwrvTKb51LVGhPVO2FVw9vLfE9tfCp1279ggKWnCU
g9Udm18t8PHmmGlzb3BAc/nanIpNHLzjg9mDtzjgp/wutGkJDzpp/S4mpvuX
fr9P6/d6Wo9T8r2J6LWBP+YYioux7/1Td/+tr4MF/9TX/0tH7/ofevk/ulhM
zOzmv80xFBN7ZP9vcwzFxDzC/m2OISWvO8n3OU7r2cV/6NY/5xhSf/cvfTqF
1qf+/9WhwSb/nGOI9BxD6vvnk/jGL3qOYe3IzXVyse24mD0yMiCrHCfmrvva
eb8FlKT2d0rt78BDU82NRlozcI2pxo+9rhyIOz/K/pmUAD8v+Ri79h4DXz9f
t1VhMxtmdiT+mu4pwMHM65eutjHw/fp+1XlBLPC3/VDMjRLgm3htYZ90Be7t
HLGvFptBpeNpxKlEAX4aTHx5XakCb9efLXMIboah382Gt22idCt3yvUhHAZ+
4QTIax5kQaqbD0djuAD3jChofnibgS93+Y9x8mDDOZVF9fsOd6D3m8ue38wY
6Lrt0bE3jhzANXvDg2+345upty4q3SvH4QXFa9YltcDGtYMxfFc+uobtc1e6
UIbe+SVlMlt5ECu7t3va9lZs3VCx7DSrGLcPuf7tW0obMI9sHlTW5GP4khh2
0XYWxrSJVV+TZ4F5rLHYl9N8nO/pxmwVsrBEWbjV3LEJ1G3NKgbf87Fs85WN
Lyay0Zlhs+62XiNUYcE6rXY+8syiGGv12fgxsFu/NIoJ3ASnc5xuPmpWWcY9
MGJjC2ffxVwfJvyqavy0xIePey74hD1/wUJT/uKJy1ubQE7jwEyeFB+fdp+K
i/nQjAKrDmlbCucjH73QkXZoQ6Hjes9xpU24d2q5/2MfDmSOd95XbtyKCjcD
Ricta0TT9PtjrjhxgTsxZzf3EBdfF0ypPFxdjyxXu82qzFY4u6Pyrhelg5Ji
5p//Lt6KVWe/n9QYWw9vdiv0e1XxsN/xarJnPw+r/Hndx0Lr4EbN7oBOHg8X
b33PSZNqxSPjH2nwJtfBhWkhrk+odcdon2urKP31QKVqbItmHUysWl0pM4qH
pkGTnGeo89Df6cmL905NsFvG75Uc9X3SFqmc0T7BRYswxdInpmwQyz556PSx
FpztoJUcF9iCtwsXvS3c1QJDM+yMi5vZKHbB0f0msvHV4WHQSuHPuSGKeYcp
fGOtulKavLQdny9Y2tfzrQr4o/JVA2Vb8HzWuF+tyynelX/73OimKpBNKVB6
IdmCXX3zZ2qZtlPsdIyBQL0auKPVTW8+YmNBh7/zWLc29Bz2XkfOiQWK71Ns
tm1m4TzxGc28bh5+k943U7CjBfx0NoQOmFF2YKqhYUadA8F+6753DhWwNFft
ZokWC4feDco0thHgbLwx05PyC8o2x+8d0WZiuskwwfmrFJ9cZbW9+CoDNK4U
50/MqML9sn2teVHtsKuFo7vhIQd4T1Lm1d96hz+Ldxpor6qGxyeFq/sedML2
oYNdzJRq1Lnvo/zWtgUWJ7Mu61K6ZoC3/NsZnQbcDRl1E+a24UtTm6fL+6nv
aZ92hPiXtEXMG5R/wbS50T+Jf7lWO1OskXpOQHfyrzzbFhQ670oiz+mdGJNE
/I6mZdpIyu/gvQXa/sTvyE+UOPJ6cT2Ojgg44/qyA11kbszKOtAI8s8SgPjZ
1NAJbZSfxdcedgeJn+1+EljRubMGg37cn4WpAmQ5vwn47MGENTUTWsjvvaww
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
xZ+bYarJzIkrEgTo1XxaLFmxArrjhAkLTzaD3g2PJck3qP3V7Rz1Wa4CjgzX
HRoc1Qxa9nmJzocFeNUuYtzSLwz4un+SvWgSC9TtVw/Povb9lvua3X5vGCBZ
dGqE+Dg2MGMm7eh50YFVcgdkC/cw4LqfpMlzIRuU/U7reQ2241j/Jzl2n8uh
yIZhv2ZsC2Q+9Xm/ks/HkfdWC94YlsOWwn19d+9xoWJ9W5wttOF45e6RnbNK
4dBX433xL/+eZ0Tpwch/m2dEdO6/zTOi/KzWv80zotY9/m2ekZiYWOq/zTOi
Pt//b/OMqM9n/3Oe0Th6npG4mNlTMs+o9I95RhQefvu3eUbU93f/t3lG1N/d
9G/zjKj1Of82z4haD/63eUbU3w3+5zyjXanmuzsftWHNsE1r7GpK0UAivj7J
oBU+x7KGDdVvRx0xzxKfXeWosTFC+8ESLoxclHyJ2Kfz8LWfKPvEHsfrXcQ+
my3L7xD7rJ8bMF06nIEbg+w1iX32rI21IvZZdmr+Mco+8dz6mQ+IfZ6MtLYi
9vmk79Nzyj5R9WTwSWKfnJWDI4l96k2cbU/ZJzamW1wh9tmxYsk8Yp/dV5dv
ouwTOcILP4Io+1TZ8/Mqsc99CppbKPvENNWbS4l9tieqihP7HM81e0nZJ3YY
N8kS+2y9+y2+xbMVL0cdlVk+tAm9jpjOGsdqgUkRKnu+eLXh1cXftJ97NKPe
mq+be5U5IGSOzOiV46Pt2lmzz1I6SXJ6SojUKRYYz+xcNnCQj6fX/op8wGBh
xswXMx4kNcFGxgr2+CNclHn97TyHyUX9U9Y5vOssGPIHDuvROPw17ek4Eu8d
7SZU8VCuhmdLn5eReK/iickjrSdkwLW8mK+hvwqxcZXgPon33pZW0bg6fCOa
N2tJfrrmAFMfl6Z/G+yGUfG/5w050vOGPtDzhn7Rc4gW0etl9Ppbeg5RLD2H
aCI9h2iAXmfQ6xPodb7u0gS+BAOVwianzZrHwzk8o5JtK/nAF9X7kHjs9vie
xOaKekzcphxP4rFJjfNGjXL/gDnTDrvqLGbhhLPn0jdPE4L7JycTl6zXOOT7
4Q0+RxiYzgxjJZ3rgrV+gdEkfuspWpxga/QG7O3kv0+63g1Fuj8PXqd+b1qG
/ThenAMeNvv01++tS+JP2r7sHVxuq5y5Zks94MYAYV+LCE5vcHzu9j0Xvo4p
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

       "]], {
     Axes -> True, ImageSize -> 300, Method -> {}, 
      PlotRange -> {{-0.5719999182857144, 
       0.5719999182857144}, {-0.41999993999999996`, 
       0.41999993999999996`}, {-0.8414709076218443, 0.9999998003655539}}, 
      PlotRangePadding -> {
        Scaled[0.02], 
        Scaled[0.02], 
        Scaled[0.02]}}], $CellContext`r$$ = {{0.4655476595928872, 
    0.38126690769178606`, 0.32163423533513263`}, {0.38126690769178606`, 
    0.728012314830304, -0.22944700779236446`}}, $CellContext`scale$$ = 
    0.3, $CellContext`tick$$ = False, Typeset`show$$ = True, 
    Typeset`bookmarkList$$ = {}, Typeset`bookmarkMode$$ = "Menu", 
    Typeset`animator$$, Typeset`animvar$$ = 1, Typeset`name$$ = 
    "\"untitled\"", Typeset`specs$$ = {{
      Hold[
       Grid[{{
          Slider2D[
           
           Dynamic[$CellContext`p$$, ($CellContext`p$$ = #; \
$CellContext`bRefreshPointDependent$$ = True; $CellContext`tick$$ = 
             Not[$CellContext`tick$$])& ], {{-1, -1}, {1, 1}}], 
          Row[{
            Text["p = "], 
            Dynamic[
             MatrixForm[$CellContext`p$$]]}]}, {
          Slider[
           
           Dynamic[$CellContext`av$$, ($CellContext`av$$ = \
$CellContext`checkAgainstRange[#, 1, 0.05, 
               2]; $CellContext`bRefreshPointDependent$$ = 
             True; $CellContext`bRefreshPlot$$ = True; $CellContext`tick$$ = 
             Not[$CellContext`tick$$])& ], {0.05, 2}, Appearance -> Tiny], 
          Row[{
            Text["a = "], 
            Dynamic[$CellContext`av$$]}]}, {
          Slider[
           
           Dynamic[$CellContext`bv$$, ($CellContext`bv$$ = \
$CellContext`checkAgainstRange[#, 1, 0.05, 
               2]; $CellContext`bRefreshPointDependent$$ = 
             True; $CellContext`bRefreshPlot$$ = True; $CellContext`tick$$ = 
             Not[$CellContext`tick$$])& ], {0.05, 2}, Appearance -> Tiny], 
          Row[{
            Text["b = "], 
            Dynamic[$CellContext`bv$$]}]}, {
          Slider[
           
           Dynamic[$CellContext`scale$$, ($CellContext`scale$$ = \
$CellContext`checkAgainstRange[#, 0.3, 0.05, 1]; $CellContext`tick$$ = 
             Not[$CellContext`tick$$])& ], {0.05, 1}, Appearance -> Tiny], 
          Row[{
            Text["scale = "], 
            Dynamic[$CellContext`scale$$]}]}, {
          Dynamic[
           SetterBar[
            
            Dynamic[$CellContext`fn$$, ($CellContext`fn$$ = #; \
$CellContext`bRefreshPointDependent$$ = True; $CellContext`bRefreshPlot$$ = 
              True; $CellContext`tick$$ = Not[$CellContext`tick$$])& ], 
            Map[# -> TraditionalForm[
               
               Part[$CellContext`zFunc, #][$CellContext`x, $CellContext`y, \
$CellContext`a, $CellContext`b]]& , 
             Range[3]]]], 
          Text["z(x, y)"]}}]], Manipulate`Dump`ThisIsNotAControl}, {{
       Hold[$CellContext`scale$$], 0.3}, 0}, {{
       Hold[$CellContext`av$$], 1}, 0}, {{
       Hold[$CellContext`bv$$], 1}, 0}, {{
       Hold[$CellContext`tick$$], False}, 0}, {{
       Hold[$CellContext`bRefreshPointDependent$$], True}, 0}, {{
       Hold[$CellContext`bRefreshPlot$$], True}, 0}, {
      Hold[$CellContext`plot$$], 0}, {{
       Hold[$CellContext`fn$$], 2}, 0}, {
      Hold[$CellContext`fp$$], 0}, {
      Hold[$CellContext`fup$$], 0}, {
      Hold[$CellContext`fvp$$], 0}, {
      Hold[$CellContext`r$$], 0}, {{
       Hold[$CellContext`p$$], {
        Rational[1, 2], 
        Rational[1, 2]}}, 0}}, Typeset`size$$ = {400., {231.5, 238.5}}, 
    Typeset`update$$ = 0, Typeset`initDone$$, Typeset`skipInitDone$$ = False}, 
    DynamicBox[Manipulate`ManipulateBoxes[
     1, StandardForm, 
      "Variables" :> {$CellContext`av$$ = 1, $CellContext`bRefreshPlot$$ = 
        True, $CellContext`bRefreshPointDependent$$ = True, $CellContext`bv$$ = 
        1, $CellContext`fn$$ = 2, $CellContext`fp$$ = 0, $CellContext`fup$$ = 
        0, $CellContext`fvp$$ = 0, $CellContext`p$$ = {
          Rational[1, 2], 
          Rational[1, 2]}, $CellContext`plot$$ = 0, $CellContext`r$$ = 
        0, $CellContext`scale$$ = 0.3, $CellContext`tick$$ = False}, 
      "ControllerVariables" :> {}, 
      "OtherVariables" :> {
       Typeset`show$$, Typeset`bookmarkList$$, Typeset`bookmarkMode$$, 
        Typeset`animator$$, Typeset`animvar$$, Typeset`name$$, 
        Typeset`specs$$, Typeset`size$$, Typeset`update$$, Typeset`initDone$$,
         Typeset`skipInitDone$$}, 
      "Body" :> ($CellContext`tick$$; 
       If[$CellContext`bRefreshPlot$$, $CellContext`plot$$ = ParametricPlot3D[
            $CellContext`f[$CellContext`fn$$, $CellContext`av$$, \
$CellContext`bv$$, {$CellContext`u, $CellContext`v}], {$CellContext`u, \
-$CellContext`av$$, $CellContext`av$$}, {$CellContext`v, -$CellContext`bv$$, \
$CellContext`bv$$}, ImageSize -> 300, PerformanceGoal -> 
            "Quality"]; $CellContext`bRefreshPlot$$ = False, Null]; 
       If[$CellContext`bRefreshPointDependent$$, {$CellContext`fp$$, \
$CellContext`fup$$, $CellContext`fvp$$} = {
            $CellContext`f[$CellContext`fn$$, $CellContext`av$$, \
$CellContext`bv$$, $CellContext`p$$], 
            $CellContext`fu[$CellContext`fn$$, $CellContext`av$$, \
$CellContext`bv$$, $CellContext`p$$], 
            $CellContext`fv[$CellContext`fn$$, $CellContext`av$$, \
$CellContext`bv$$, $CellContext`p$$]}; $CellContext`r$$ = \
$CellContext`reciprocalsForTwoDimSubspace[{$CellContext`fup$$, \
$CellContext`fvp$$}]; $CellContext`bRefreshPointDependent$$ = False; Null, 
         Null]; Column[{
          Show[{$CellContext`plot$$, 
            Graphics3D[{Black, 
              Arrowheads[0.03], 
              Arrow[
               
               Tube[{$CellContext`fp$$, $CellContext`fp$$ + \
$CellContext`scale$$ $CellContext`fup$$}, 0.02]], 
              Arrow[
               
               Tube[{$CellContext`fp$$, $CellContext`fp$$ + \
$CellContext`scale$$ $CellContext`fvp$$}, 0.02]], Blue, 
              Arrow[
               
               Tube[{$CellContext`fp$$, $CellContext`fp$$ + \
$CellContext`scale$$ Part[$CellContext`r$$, 1]}, 0.02]], 
              Arrow[
               
               Tube[{$CellContext`fp$$, $CellContext`fp$$ + \
$CellContext`scale$$ Part[$CellContext`r$$, 2]}, 0.02]], 
              Lighter[Gray], 
              Opacity[0.5], 
              
              Polygon[{$CellContext`fp$$ + $CellContext`fup$$ + \
$CellContext`fvp$$, $CellContext`fp$$ - $CellContext`fup$$ + \
$CellContext`fvp$$, $CellContext`fp$$ - $CellContext`fup$$ - \
$CellContext`fvp$$, $CellContext`fp$$ + $CellContext`fup$$ - \
$CellContext`fvp$$}]}]}]}]), "Specifications" :> {
        Grid[{{
           Slider2D[
            
            Dynamic[$CellContext`p$$, ($CellContext`p$$ = #; \
$CellContext`bRefreshPointDependent$$ = True; $CellContext`tick$$ = 
              Not[$CellContext`tick$$])& ], {{-1, -1}, {1, 1}}], 
           Row[{
             Text["p = "], 
             Dynamic[
              MatrixForm[$CellContext`p$$]]}]}, {
           Slider[
            
            Dynamic[$CellContext`av$$, ($CellContext`av$$ = \
$CellContext`checkAgainstRange[#, 1, 0.05, 
                2]; $CellContext`bRefreshPointDependent$$ = 
              True; $CellContext`bRefreshPlot$$ = True; $CellContext`tick$$ = 
              Not[$CellContext`tick$$])& ], {0.05, 2}, Appearance -> Tiny], 
           Row[{
             Text["a = "], 
             Dynamic[$CellContext`av$$]}]}, {
           Slider[
            
            Dynamic[$CellContext`bv$$, ($CellContext`bv$$ = \
$CellContext`checkAgainstRange[#, 1, 0.05, 
                2]; $CellContext`bRefreshPointDependent$$ = 
              True; $CellContext`bRefreshPlot$$ = True; $CellContext`tick$$ = 
              Not[$CellContext`tick$$])& ], {0.05, 2}, Appearance -> Tiny], 
           Row[{
             Text["b = "], 
             Dynamic[$CellContext`bv$$]}]}, {
           Slider[
            
            Dynamic[$CellContext`scale$$, ($CellContext`scale$$ = \
$CellContext`checkAgainstRange[#, 0.3, 0.05, 1]; $CellContext`tick$$ = 
              Not[$CellContext`tick$$])& ], {0.05, 1}, Appearance -> Tiny], 
           Row[{
             Text["scale = "], 
             Dynamic[$CellContext`scale$$]}]}, {
           Dynamic[
            SetterBar[
             
             Dynamic[$CellContext`fn$$, ($CellContext`fn$$ = #; \
$CellContext`bRefreshPointDependent$$ = True; $CellContext`bRefreshPlot$$ = 
               True; $CellContext`tick$$ = Not[$CellContext`tick$$])& ], 
             Map[# -> TraditionalForm[
                
                Part[$CellContext`zFunc, #][$CellContext`x, $CellContext`y, \
$CellContext`a, $CellContext`b]]& , 
              Range[3]]]], 
           Text["z(x, y)"]}}], {{$CellContext`scale$$, 0.3}, 0, ControlType -> 
         None}, {{$CellContext`av$$, 1}, 0, ControlType -> 
         None}, {{$CellContext`bv$$, 1}, 0, ControlType -> 
         None}, {{$CellContext`tick$$, False}, 0, ControlType -> 
         None}, {{$CellContext`bRefreshPointDependent$$, True}, 0, 
         ControlType -> None}, {{$CellContext`bRefreshPlot$$, True}, 0, 
         ControlType -> None}, {$CellContext`plot$$, 0, ControlType -> 
         None}, {{$CellContext`fn$$, 2}, 0, ControlType -> 
         None}, {$CellContext`fp$$, 0, ControlType -> 
         None}, {$CellContext`fup$$, 0, ControlType -> 
         None}, {$CellContext`fvp$$, 0, ControlType -> 
         None}, {$CellContext`r$$, 0, ControlType -> 
         None}, {{$CellContext`p$$, {
           Rational[1, 2], 
           Rational[1, 2]}}, 0, ControlType -> None}}, 
      "Options" :> {
       TrackedSymbols :> {$CellContext`tick$$}, ControlPlacement -> Left}, 
      "DefaultOptions" :> {}],
     ImageSizeCache->{826., {271., 278.}},
     SingleEvaluation->True],
    Deinitialization:>None,
    DynamicModuleValues:>{},
    Initialization:>({{$CellContext`f[
           Pattern[$CellContext`n, 
            Blank[Integer]]] := {#, #2, 
           Part[$CellContext`zFunc, $CellContext`n][
            SlotSequence[1]]}& , $CellContext`f[
           Pattern[$CellContext`n, 
            Blank[Integer]], 
           Pattern[$CellContext`s1, 
            Blank[]], 
           Pattern[$CellContext`s2, 
            Blank[]], {
            Pattern[$CellContext`u, 
             Blank[]], 
            Pattern[$CellContext`v, 
             
             Blank[]]}] := $CellContext`f[$CellContext`n][$CellContext`u, \
$CellContext`v, $CellContext`s1, $CellContext`s2], $CellContext`zFunc := \
{$CellContext`paraboloid, $CellContext`saddle, $CellContext`sine}, \
$CellContext`paraboloid := -(#/#3)^2 + (#2/#4)^2& , $CellContext`saddle := \
(#/#3)^2 + (#2/#4)^2& , $CellContext`sine := 
         Sin[#/#3 + (#2/#4)^2]& , $CellContext`fu[
           Pattern[$CellContext`n, 
            Blank[Integer]], 
           Pattern[$CellContext`s1, 
            Blank[]], 
           Pattern[$CellContext`s2, 
            Blank[]], {
            Pattern[$CellContext`u, 
             Blank[]], 
            Pattern[$CellContext`v, 
             
             Blank[]]}] := $CellContext`f1[$CellContext`n][$CellContext`u, \
$CellContext`v, $CellContext`s1, $CellContext`s2], $CellContext`f1[
           Pattern[$CellContext`n, 
            Blank[Integer]]] := ((ReplaceAll[
             D[
              $CellContext`f[$CellContext`n][$CellContext`t, #2, #3, #4], \
$CellContext`t], $CellContext`t -> #]& ) $CellContext`f2[
             Pattern[$CellContext`n, 
              Blank[Integer]]] := ReplaceAll[
            D[
             $CellContext`f[$CellContext`n][#, $CellContext`t, #3, #4], \
$CellContext`t], $CellContext`t -> #2]& ), $CellContext`fv[
           Pattern[$CellContext`n, 
            Blank[Integer]], 
           Pattern[$CellContext`s1, 
            Blank[]], 
           Pattern[$CellContext`s2, 
            Blank[]], {
            Pattern[$CellContext`u, 
             Blank[]], 
            Pattern[$CellContext`v, 
             
             Blank[]]}] := $CellContext`f2[$CellContext`n][$CellContext`u, \
$CellContext`v, $CellContext`s1, $CellContext`s2], \
$CellContext`reciprocalsForTwoDimSubspace[{
            Pattern[$CellContext`a, 
             Blank[]], 
            Pattern[$CellContext`b, 
             Blank[]]}] := 
         Module[{$CellContext`cross}, $CellContext`cross = 
            Cross[$CellContext`a, $CellContext`b]; {
              Cross[$CellContext`b, $CellContext`cross], 
              Cross[$CellContext`cross, $CellContext`a]}/
            Dot[$CellContext`cross, $CellContext`cross]], \
$CellContext`checkAgainstRange[
           Pattern[$CellContext`v, 
            Blank[]], 
           Pattern[$CellContext`default, 
            Blank[]], 
           Pattern[$CellContext`lowerLimit, 
            Blank[]], 
           Pattern[$CellContext`upperLimit, 
            Blank[]], 
           Optional[
            Pattern[$CellContext`typeFunc, 
             Blank[]], NumberQ]] := 
         Module[{$CellContext`result}, $CellContext`result = If[
              $CellContext`typeFunc[$CellContext`v], $CellContext`v, \
$CellContext`default]; $CellContext`result = 
            If[$CellContext`result <= $CellContext`upperLimit, \
$CellContext`result, $CellContext`default]; $CellContext`result = 
            If[$CellContext`result >= $CellContext`lowerLimit, \
$CellContext`result, $CellContext`default]; $CellContext`result]}; \
{$CellContext`reciprocalsForTwoDimSubspace[{
             Pattern[$CellContext`a, 
              Blank[]], 
             Pattern[$CellContext`b, 
              Blank[]]}] := 
          Module[{$CellContext`cross}, $CellContext`cross = 
             Cross[$CellContext`a, $CellContext`b]; {
               Cross[$CellContext`b, $CellContext`cross], 
               Cross[$CellContext`cross, $CellContext`a]}/
             Dot[$CellContext`cross, $CellContext`cross]]; \
$CellContext`paraboloid := -(#/#3)^2 + (#2/#4)^2& ; $CellContext`saddle := \
(#/#3)^2 + (#2/#4)^2& ; $CellContext`sine := 
          Sin[#/#3 + (#2/#4)^2]& ; $CellContext`zFunc := \
{$CellContext`paraboloid, $CellContext`saddle, $CellContext`sine}; \
$CellContext`f[
            Pattern[$CellContext`n, 
             Blank[Integer]]] := {#, #2, 
            Part[$CellContext`zFunc, $CellContext`n][
             SlotSequence[1]]}& ; $CellContext`f1[
            Pattern[$CellContext`n, 
             Blank[Integer]]] := ReplaceAll[
            D[
             $CellContext`f[$CellContext`n][$CellContext`t, #2, #3, #4], \
$CellContext`t], $CellContext`t -> #]& ; $CellContext`f2[
            Pattern[$CellContext`n, 
             Blank[Integer]]] := ReplaceAll[
            D[
             $CellContext`f[$CellContext`n][#, $CellContext`t, #3, #4], \
$CellContext`t], $CellContext`t -> #2]& ; $CellContext`f[
            Pattern[$CellContext`n, 
             Blank[Integer]], 
            Pattern[$CellContext`s1, 
             Blank[]], 
            Pattern[$CellContext`s2, 
             Blank[]], {
             Pattern[$CellContext`u, 
              Blank[]], 
             Pattern[$CellContext`v, 
              
              Blank[]]}] := $CellContext`f[$CellContext`n][$CellContext`u, \
$CellContext`v, $CellContext`s1, $CellContext`s2]; $CellContext`fu[
            Pattern[$CellContext`n, 
             Blank[Integer]], 
            Pattern[$CellContext`s1, 
             Blank[]], 
            Pattern[$CellContext`s2, 
             Blank[]], {
             Pattern[$CellContext`u, 
              Blank[]], 
             Pattern[$CellContext`v, 
              
              Blank[]]}] := $CellContext`f1[$CellContext`n][$CellContext`u, \
$CellContext`v, $CellContext`s1, $CellContext`s2]; $CellContext`fv[
            Pattern[$CellContext`n, 
             Blank[Integer]], 
            Pattern[$CellContext`s1, 
             Blank[]], 
            Pattern[$CellContext`s2, 
             Blank[]], {
             Pattern[$CellContext`u, 
              Blank[]], 
             Pattern[$CellContext`v, 
              
              Blank[]]}] := $CellContext`f2[$CellContext`n][$CellContext`u, \
$CellContext`v, $CellContext`s1, $CellContext`s2]; \
$CellContext`checkAgainstRange[
            Pattern[$CellContext`v, 
             Blank[]], 
            Pattern[$CellContext`default, 
             Blank[]], 
            Pattern[$CellContext`lowerLimit, 
             Blank[]], 
            Pattern[$CellContext`upperLimit, 
             Blank[]], 
            Optional[
             Pattern[$CellContext`typeFunc, 
              Blank[]], NumberQ]] := 
          Module[{$CellContext`result}, $CellContext`result = If[
               $CellContext`typeFunc[$CellContext`v], $CellContext`v, \
$CellContext`default]; $CellContext`result = 
             
             If[$CellContext`result <= $CellContext`upperLimit, \
$CellContext`result, $CellContext`default]; $CellContext`result = 
             If[$CellContext`result >= $CellContext`lowerLimit, \
$CellContext`result, $CellContext`default]; $CellContext`result]; Null}}; 
     Typeset`initDone$$ = True),
    SynchronousInitialization->True,
    UnsavedVariables:>{Typeset`initDone$$},
    UntrackedVariables:>{Typeset`size$$}], "Manipulate",
   Deployed->True,
   StripOnInput->False],
  Manipulate`InterpretManipulate[1]]], "Output",
 CellChangeTimes->{
  3.6028583693329334`*^9, 3.6028584159285984`*^9, 3.6028596925536175`*^9, 
   3.6028597314098396`*^9, 3.602859796595568*^9, {3.6028599094050207`*^9, 
   3.6028599182495265`*^9}, 3.6028600439917183`*^9, 3.6028601590673003`*^9, {
   3.602860350347241*^9, 3.6028604343120437`*^9}, 3.602860523612151*^9, 
   3.602860561513319*^9, 3.6028606218467703`*^9, 3.6028607060285845`*^9, {
   3.602860772112365*^9, 3.6028607824369555`*^9}, 3.602860865520707*^9, {
   3.602860895674432*^9, 3.6028609128164124`*^9}, 3.602860946492338*^9, 
   3.602861061829935*^9, 3.6028709892726793`*^9, 3.6028710493231144`*^9, {
   3.602871092138563*^9, 3.6028711652187433`*^9}, {3.602871254130829*^9, 
   3.602871279060254*^9}, {3.602871338793671*^9, 3.602871364557145*^9}, 
   3.602871615325488*^9, 3.602871666463413*^9, 3.6028718398433294`*^9, 
   3.602871910514372*^9, 3.602874058916253*^9, 3.6028742008393707`*^9, 
   3.6028742488881187`*^9, {3.6028746760415506`*^9, 3.602874696590726*^9}, 
   3.6028747618914614`*^9, 3.6028755733758755`*^9, {3.602875763743764*^9, 
   3.602875777374543*^9}, 3.6028758604092927`*^9, {3.602875904875836*^9, 
   3.602875950680456*^9}, 3.602894136535589*^9, 3.6028963565115643`*^9, 
   3.602896660258938*^9, {3.6028967746474805`*^9, 3.602896785355093*^9}, 
   3.602896852648942*^9, 3.602930232748844*^9, {3.6029302630305758`*^9, 
   3.60293027988354*^9}, 3.602930619715977*^9, 3.6029324105204053`*^9, {
   3.6029325614850397`*^9, 3.6029326011623096`*^9}}]
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
Cell[1485, 35, 28881, 610, 4179, "Input"],
Cell[30369, 647, 129455, 2208, 571, "Output"]
}, Open  ]]
}
]
*)

(* End of internal cache information *)

(* NotebookSignature LvTN7ptvC9dFCAK#GrQ@zJrY *)
