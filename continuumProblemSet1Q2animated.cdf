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
NotebookDataLength[     40012,        882]
NotebookOptionsPosition[     40241,        871]
NotebookOutlinePosition[     40583,        886]
CellTagsIndexPosition[     40540,        883]
WindowFrame->Normal*)

(* Beginning of Notebook Content *)
Notebook[{

Cell[CellGroupData[{
Cell["\<\
Visualizing principle stresses for a given strain tensor.\
\>", "Title",
 CellChangeTimes->{
  3.538436552736147*^9, {3.5384368192733917`*^9, 3.5384368210534935`*^9}}],

Cell[TextData[{
 "For a solid body our problem (phy454 problem set 1, question 2) we are \
given a specific position dependent strain tensor\n\n",
 Cell[BoxData[
  RowBox[{"e", " ", "=", 
   TagBox[
    RowBox[{"(", "\[NoBreak]", GridBox[{
       {
        RowBox[{"2", " ", "y"}], "x", "x"},
       {"x", "0", "z"},
       {"x", "z", 
        RowBox[{"-", "1"}]}
      },
      GridBoxAlignment->{
       "Columns" -> {{Center}}, "ColumnsIndexed" -> {}, 
        "Rows" -> {{Baseline}}, "RowsIndexed" -> {}},
      GridBoxSpacings->{"Columns" -> {
          Offset[0.27999999999999997`], {
           Offset[0.7]}, 
          Offset[0.27999999999999997`]}, "ColumnsIndexed" -> {}, "Rows" -> {
          Offset[0.2], {
           Offset[0.4]}, 
          Offset[0.2]}, "RowsIndexed" -> {}}], "\[NoBreak]", ")"}],
    Function[BoxForm`e$, 
     MatrixForm[BoxForm`e$]]]}]]],
 "\n\nand asked to compute the principle strains and axes at the specific \
point p = (1, 2, 4).  The principle parts were found to be\n\n\[Lambda]_i = \
{5.19684,-4.53206,2.33522}\n\nwith corresponding principle axes\n\n{u_i} = ",
 Cell[BoxData[
  RowBox[{
   TagBox[
    RowBox[{"{", 
     RowBox[{"(", "\[NoBreak]", 
      TagBox[GridBox[{
         {"0.7629095489158699`"},
         {"0.48008246031152163`"},
         {"0.43300098322546604`"}
        },
        GridBoxAlignment->{
         "Columns" -> {{Center}}, "ColumnsIndexed" -> {}, 
          "Rows" -> {{Baseline}}, "RowsIndexed" -> {}},
        GridBoxSpacings->{"Columns" -> {
            Offset[0.27999999999999997`], {
             Offset[0.5599999999999999]}, 
            Offset[0.27999999999999997`]}, "ColumnsIndexed" -> {}, "Rows" -> {
            Offset[0.2], {
             Offset[0.4]}, 
            Offset[0.2]}, "RowsIndexed" -> {}}],
       Column], "\[NoBreak]", ")"}]}],
    Function[BoxForm`e$, 
     MatrixForm[BoxForm`e$]]], ",", 
   TagBox[
    RowBox[{"(", "\[NoBreak]", 
     TagBox[GridBox[{
        {
         RowBox[{"-", "0.010606005252000485`"}]},
        {
         RowBox[{"-", "0.6603723417883454`"}]},
        {"0.7508634249006746`"}
       },
       GridBoxAlignment->{
        "Columns" -> {{Center}}, "ColumnsIndexed" -> {}, 
         "Rows" -> {{Baseline}}, "RowsIndexed" -> {}},
       GridBoxSpacings->{"Columns" -> {
           Offset[0.27999999999999997`], {
            Offset[0.5599999999999999]}, 
           Offset[0.27999999999999997`]}, "ColumnsIndexed" -> {}, "Rows" -> {
           Offset[0.2], {
            Offset[0.4]}, 
           Offset[0.2]}, "RowsIndexed" -> {}}],
      Column], "\[NoBreak]", ")"}],
    Function[BoxForm`e$, 
     MatrixForm[BoxForm`e$]]], ",", 
   TagBox[
    RowBox[{"(", "\[NoBreak]", 
     TagBox[GridBox[{
        {
         RowBox[{"-", "0.6464182336735085`"}]},
        {"0.5774332874906093`"},
        {"0.498712608294806`"}
       },
       GridBoxAlignment->{
        "Columns" -> {{Center}}, "ColumnsIndexed" -> {}, 
         "Rows" -> {{Baseline}}, "RowsIndexed" -> {}},
       GridBoxSpacings->{"Columns" -> {
           Offset[0.27999999999999997`], {
            Offset[0.5599999999999999]}, 
           Offset[0.27999999999999997`]}, "ColumnsIndexed" -> {}, "Rows" -> {
           Offset[0.2], {
            Offset[0.4]}, 
           Offset[0.2]}, "RowsIndexed" -> {}}],
      Column], "\[NoBreak]", ")"}],
    Function[BoxForm`e$, 
     MatrixForm[BoxForm`e$]]]}]],
  CellChangeTimes->{{3.5384334537258935`*^9, 3.538433479243353*^9}, {
    3.538433539834819*^9, 3.5384335612390428`*^9}, 3.5384336000672636`*^9}],
 "} .\n\nWe are also asked whether the body is under compression or \
expansion.  To answer that consider the stress matrix, when expressed in the \
principle axis basis takes the form\n\n",
 Cell[BoxData[
  FormBox[
   SubscriptBox["\[Sigma]", "ij"], TraditionalForm]]],
 " =  ",
 Cell[BoxData[
  FractionBox["E", 
   RowBox[{"1", "+", "\[Nu]"}]]],
  CellChangeTimes->{{3.538435313350258*^9, 3.5384353283071136`*^9}}],
 Cell[BoxData[
  RowBox[{
   RowBox[{"(", 
    RowBox[{
     SubscriptBox["p", "i"], " ", "+", " ", 
     RowBox[{
      RowBox[{"(", 
       RowBox[{"\[Nu]", "/", 
        RowBox[{"(", 
         RowBox[{"1", "-", 
          RowBox[{"2", " ", "\[Nu]"}]}], ")"}]}], ")"}], " ", 
      SubscriptBox["e", "kk"], " ", 
      SubscriptBox["\[Delta]", "ij"]}]}], ")"}], " "}]],
  CellChangeTimes->{{3.538435262780366*^9, 3.5384353269770374`*^9}}],
 ",\n\nalso diagonal.  Observe that this is dependent on the value of Poisson\
\[CloseCurlyQuote]s ration \[Nu].  For the point (1, 2, 4), we can show that \
the principle stresses in the e_1 and e_3 directions are always positive \
(expansion in those directions), and for \[Nu] > 0.375644 the principle \
stresses in the e_2 direction is also positive.\n\nSince the strain tensor in \
question was not amenable to hand calculation, we have to resort to \
numerically finding the principle parts and axes, and having software do this \
for one a range of points is not much harder.\n\nIn the graphic below, this \
point and Poisson\[CloseCurlyQuote]s ratio, are picked using x,y,z,\[Nu] \
sliders (plus one more slider for the plot range, allowing some zoom in and \
out.  \n\nThe orthonormal principle stress axes are multiplied by the \
principle strain values (for a Young\[CloseCurlyQuote]s modulus value of E=1) \
to give an indication of scale, and then coloured blue for expansive \
(positive stress), and red for compressive (negative stress).\n\nThe point at \
which the stress tensor is evaluated is illustrated using a purple vector \
from the origin.\n"
}], "Text",
 CellChangeTimes->{{3.5384365836449146`*^9, 3.5384365855150213`*^9}, 
   3.538436696490369*^9, {3.5384384753561144`*^9, 3.5384385376696787`*^9}, {
   3.5384388455362873`*^9, 3.5384388456232924`*^9}}],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{
  RowBox[{"(*", " ", 
   RowBox[{
    RowBox[{"use", " ", "sliders", " ", "for", " ", "x"}], ",", " ", "y", ",",
     " ", "z", ",", " ", 
    RowBox[{"and", " ", 
     RowBox[{"Poisson", "'"}], "s", " ", "ratio", " ", "\[Nu]"}], ",", " ", 
    RowBox[{"plus", " ", "one", " ", "purely", " ", "visual", " ", 
     RowBox[{"control", ":", " ", "plotRange"}]}]}], " ", "*)"}], 
  "\[IndentingNewLine]", "\[IndentingNewLine]", 
  RowBox[{"Manipulate", "[", " ", "\[IndentingNewLine]", 
   RowBox[{"(*", " ", 
    RowBox[{
     RowBox[{
      RowBox[{"See", ":", " ", "\[IndentingNewLine]", "\[IndentingNewLine]", 
       RowBox[{"http", ":"}]}], "//", 
      RowBox[{
       RowBox[{
        RowBox[{
         RowBox[{
          RowBox[{"mathematica", ".", "stackexchange", ".", "com"}], "/", 
          "questions"}], "/", "1669"}], "/", "table"}], "-", "function", "-", 
       "with", "-", "part", "-", "call", "-", "misbehaving", "-", "but", "-", 
       "only", "-", "after", "-", "initial", "-", "startup", "-", "of", "-", 
       RowBox[{
       "m", " ", "\[IndentingNewLine]", "\[IndentingNewLine]", "for", " ", 
        "why", " ", "the", " ", "Dynamic"}]}]}], ",", " ", 
     RowBox[{"and", " ", "DynamicModule", " ", "were", " ", 
      RowBox[{"used", ".", "  ", 
       RowBox[{"I", "'"}]}], "d", " ", "seen", " ", "this"}], ",", " ", 
     RowBox[{
      RowBox[{
      "but", " ", "forgotten", " ", "about", " ", "the", " ", "issue", " ", 
       "before", " ", "publishing", " ", 
       RowBox[{"the", " ", ".", "cdf", ".", "  ", "Somebody"}], " ", 
       "actually", " ", "read", " ", "my", " ", "blog", " ", "and", " ", 
       "commented", " ", "on", " ", "the", " ", 
       RowBox[{"error", ":", "\[IndentingNewLine]", "\[IndentingNewLine]", 
        RowBox[{"http", ":"}]}]}], "//", 
      RowBox[{
       RowBox[{
        RowBox[{
         RowBox[{
          RowBox[{
           RowBox[{"peeterjoot", ".", "wordpress", ".", "com"}], "/", 
           "2012"}], "/", "02"}], "/", "09"}], "/", "phy456h1s"}], "-", 
       "continuum", "-", "mechanics", "-", "problem", "-", "set", "-", "1", 
       "-", "stress", "-", "strain", "-", "traction", "-", "vector", "-", 
       "force", "-", "free", "-", 
       RowBox[{
        RowBox[{"equilibrium", "/", "#"}], "comment"}], "-", "1985"}]}]}], 
    "\[IndentingNewLine]", "*)"}], "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{"DynamicModule", "[", 
     RowBox[{
      RowBox[{"{", 
       RowBox[{
       "o", ",", " ", "e", ",", " ", "eStrain", ",", " ", "e1", ",", " ", 
        "e2", ",", " ", "e3", ",", " ", "standardBasis", ",", " ", 
        "eigensolution", ",", " ", "stressDiagonalized"}], "}"}], ",", 
      "\[IndentingNewLine]", 
      RowBox[{
       RowBox[{"o", " ", ":=", " ", 
        RowBox[{"{", 
         RowBox[{"0", ",", " ", "0", ",", " ", "0"}], "}"}]}], " ", ";", 
       "\[IndentingNewLine]", 
       RowBox[{"e1", " ", ":=", " ", 
        RowBox[{"{", 
         RowBox[{"1", ",", " ", "0", ",", " ", "0"}], "}"}]}], " ", ";", 
       "\[IndentingNewLine]", 
       RowBox[{"e2", " ", ":=", " ", 
        RowBox[{"{", 
         RowBox[{"0", ",", " ", "1", ",", " ", "0"}], "}"}]}], " ", ";", 
       "\[IndentingNewLine]", 
       RowBox[{"e3", " ", ":=", " ", 
        RowBox[{"{", 
         RowBox[{"0", ",", " ", "0", ",", " ", "1"}], "}"}]}], " ", ";", 
       "\[IndentingNewLine]", 
       RowBox[{"standardBasis", " ", ":=", " ", 
        RowBox[{"{", 
         RowBox[{"e1", ",", " ", "e2", ",", " ", "e3"}], "}"}]}], " ", ";", 
       "\[IndentingNewLine]", 
       RowBox[{
        RowBox[{"eStrain", "[", 
         RowBox[{"x_", ",", " ", "y_", ",", " ", "z_"}], "]"}], " ", ":=", 
        " ", 
        RowBox[{"{", 
         RowBox[{
          RowBox[{"{", 
           RowBox[{
            RowBox[{"2", " ", "y"}], ",", " ", "x", ",", " ", "x"}], "}"}], 
          ",", " ", 
          RowBox[{"{", 
           RowBox[{"x", ",", " ", "0", ",", " ", "z"}], "}"}], ",", " ", 
          RowBox[{"{", 
           RowBox[{"x", ",", " ", "z", ",", " ", 
            RowBox[{"-", "1"}]}], "}"}]}], "}"}]}], " ", ";", 
       "\[IndentingNewLine]", 
       RowBox[{
        RowBox[{"eigensolution", "[", "e_", "]"}], " ", ":=", " ", 
        RowBox[{"Module", "[", 
         RowBox[{
          RowBox[{"{", 
           RowBox[{"ev", ",", "ee"}], "}"}], ",", "\[IndentingNewLine]", 
          RowBox[{
           RowBox[{
            RowBox[{"{", 
             RowBox[{"ev", ",", "ee"}], "}"}], " ", "=", " ", 
            RowBox[{
             RowBox[{"Eigensystem", "[", "e", "]"}], " ", "//", " ", "N"}]}], 
           " ", ";", "\[IndentingNewLine]", 
           RowBox[{"ee", " ", "=", "   ", 
            RowBox[{"Map", "[", " ", 
             RowBox[{"Normalize", ",", " ", "ee"}], " ", "]"}]}], " ", ";", 
           "\[IndentingNewLine]", 
           RowBox[{"{", 
            RowBox[{"ev", ",", " ", "ee"}], "}"}]}]}], "]"}]}], ";", 
       "\[IndentingNewLine]", 
       RowBox[{
        RowBox[{"stressDiagonalized", "[", 
         RowBox[{"ev_", ",", " ", "ee_", ",", " ", "\[Nu]_"}], "]"}], " ", ":=",
         " ", 
        RowBox[{
         RowBox[{"(", 
          RowBox[{"1", "/", 
           RowBox[{"(", 
            RowBox[{"1", "+", "\[Nu]"}], ")"}]}], ")"}], 
         RowBox[{"(", 
          RowBox[{
           RowBox[{"DiagonalMatrix", "[", "ev", "]"}], " ", "+", " ", 
           RowBox[{
            RowBox[{"(", 
             RowBox[{"\[Nu]", "/", 
              RowBox[{"(", 
               RowBox[{"1", "-", 
                RowBox[{"2", " ", "\[Nu]"}]}], ")"}]}], ")"}], " ", 
            RowBox[{"Tr", "[", "ee", "]"}], " ", 
            RowBox[{"IdentityMatrix", "[", "3", "]"}]}]}], ")"}]}]}], " ", 
       ";", "\[IndentingNewLine]", "\[IndentingNewLine]", 
       RowBox[{"Dynamic", "[", "\[IndentingNewLine]", 
        RowBox[{
         RowBox[{"Clear", "[", 
          RowBox[{
          "e", ",", " ", "ee", ",", " ", "ev", ",", " ", "sigmaDiag", ",", 
           " ", "\[Sigma]", ",", " ", "arrows", ",", " ", "labels", ",", " ", 
           "arrowsReference", ",", "  ", "p"}], "]"}], " ", ";", 
         "\[IndentingNewLine]", 
         RowBox[{"(*", " ", 
          RowBox[{
           RowBox[{"For", " ", "Test", " ", "without", " ", 
            RowBox[{
            "manipulate", ":", " ", "\[IndentingNewLine]", "\[Nu]"}]}], " ", ":=",
            " ", 
           RowBox[{
            RowBox[{"0", "\[IndentingNewLine]", "x"}], " ", ":=", " ", 
            RowBox[{
             RowBox[{"1", "\[IndentingNewLine]", "y"}], " ", ":=", " ", 
             RowBox[{"2", "\[IndentingNewLine]", 
              RowBox[{"z", " ", ":=", " ", "4"}]}]}]}]}], " ", "*)"}], 
         "\[IndentingNewLine]", 
         RowBox[{"(*", 
          RowBox[{
           RowBox[{"e", " ", ":=", " ", 
            RowBox[{"{", 
             RowBox[{
              RowBox[{"{", 
               RowBox[{
                RowBox[{"2", " ", "y"}], ",", " ", "x", ",", " ", "x"}], 
               "}"}], ",", " ", 
              RowBox[{"{", 
               RowBox[{"x", ",", " ", "0", ",", " ", "z"}], "}"}], ",", " ", 
              RowBox[{"{", 
               RowBox[{"x", ",", " ", "z", ",", " ", 
                RowBox[{"-", "1"}]}], "}"}]}], "}"}]}], " ", ";"}], "*)"}], 
         "\[IndentingNewLine]", 
         RowBox[{"(*", 
          RowBox[{
           RowBox[{"tr", " ", ":=", " ", 
            RowBox[{"Tr", "[", "e", "]"}]}], " ", ";"}], "*)"}], 
         "\[IndentingNewLine]", 
         RowBox[{"p", " ", ":=", " ", 
          RowBox[{"{", 
           RowBox[{"x", ",", " ", "y", ",", " ", "z"}], "}"}]}], " ", ";", 
         "\[IndentingNewLine]", "\[IndentingNewLine]", 
         RowBox[{"(*", " ", 
          RowBox[{
           RowBox[{"removed", " ", "standalone", " ", "use", " ", "of", " ", 
            RowBox[{"Eigenvalues", "/", 
             RowBox[{"Eigenvectors", ":", " ", 
              RowBox[{"http", ":"}]}]}]}], "//", 
           RowBox[{
            RowBox[{
             RowBox[{
              RowBox[{
               RowBox[{"mathematica", ".", "stackexchange", ".", "com"}], "/",
                "questions"}], "/", "1831"}], "/", "can"}], "-", 
            "eigenvalues", "-", "and", "-", "eigenvectors", "-", "be", "-", 
            "assumed", "-", "to", "-", "return", "-", "the", "-", "same", "-",
             "ordering"}]}], " ", "*)"}], "\[IndentingNewLine]", 
         RowBox[{
          RowBox[{"{", 
           RowBox[{"ev", ",", "ee"}], "}"}], " ", "=", " ", 
          RowBox[{
           RowBox[{"eigensolution", "[", 
            RowBox[{"eStrain", "[", 
             RowBox[{"x", ",", "y", ",", "z"}], "]"}], "]"}], " ", "//", " ", 
           "N"}]}], " ", ";", "\[IndentingNewLine]", "\[IndentingNewLine]", 
         RowBox[{"(*", " ", 
          RowBox[{
          "stress", " ", "matrix", " ", "in", " ", "the", " ", "diagonalized",
            " ", "basis"}], " ", "*)"}], "\[IndentingNewLine]", 
         "\[IndentingNewLine]", 
         RowBox[{"(*", " ", 
          RowBox[{
           RowBox[{
           "this", " ", "is", " ", "not", " ", "really", " ", "\[Sigma]"}], 
           ",", " ", 
           RowBox[{"but", " ", "really", " ", 
            RowBox[{"\[Sigma]", "/", "E"}]}], ",", " ", 
           RowBox[{
           "stress", " ", "tensor", " ", "in", " ", "the", " ", "principle", 
            " ", "strain", " ", "basis"}], ",", " ", 
           RowBox[{"scaled", " ", "by", " ", 
            RowBox[{"Young", "'"}], "s", " ", "modulus", " ", 
            RowBox[{"E", ".", "  ", "Alternately"}]}], ",", " ", 
           RowBox[{
            RowBox[{"this", " ", "is", " ", "stress", " ", "with", " ", "E"}],
             "=", "1"}]}], " ", "*)"}], "\[IndentingNewLine]", 
         RowBox[{"\[Sigma]", " ", "=", " ", 
          RowBox[{"stressDiagonalized", "[", 
           RowBox[{"ev", ",", " ", "ee", ",", " ", "\[Nu]"}], "]"}]}], ";", 
         "\[IndentingNewLine]", 
         RowBox[{"(*", 
          RowBox[{
           RowBox[{
            RowBox[{"(", 
             RowBox[{"1", "/", 
              RowBox[{"(", 
               RowBox[{"1", "+", "\[Nu]"}], ")"}]}], ")"}], 
            RowBox[{"(", 
             RowBox[{
              RowBox[{"DiagonalMatrix", "[", "ev", "]"}], " ", "+", " ", 
              RowBox[{
               RowBox[{"(", 
                RowBox[{"\[Nu]", "/", 
                 RowBox[{"(", 
                  RowBox[{"1", "-", 
                   RowBox[{"2", " ", "\[Nu]"}]}], ")"}]}], ")"}], " ", "tr", 
               " ", 
               RowBox[{"IdentityMatrix", "[", "3", "]"}]}]}], ")"}]}], " ", 
           ";"}], " ", "*)"}], "\[IndentingNewLine]", "\[IndentingNewLine]", 
         RowBox[{"(*", " ", 
          RowBox[{
           RowBox[{
           "Was", " ", "a", " ", "bit", " ", "silly", " ", "to", " ", 
            "compute", " ", "the", " ", "stress", " ", "tensor", " ", "in", 
            " ", "matrix", " ", "form", " ", "in", " ", "this", " ", 
            "basis"}], ",", " ", 
           RowBox[{"since", " ", "it", " ", "is", " ", 
            RowBox[{"diagonal", ".", "  ", "Grab"}], " ", "just", " ", "the", 
            " ", "diagonal", " ", "into", " ", "a", " ", "list"}]}], " ", 
          "*)"}], "\[IndentingNewLine]", 
         RowBox[{"sigmaDiag", " ", "=", " ", 
          RowBox[{"Diagonal", "[", "\[Sigma]", "]"}]}], " ", ";", 
         "\[IndentingNewLine]", "\[IndentingNewLine]", 
         RowBox[{"(*", "\[IndentingNewLine]", 
          RowBox[{
           RowBox[{
           "Taking", " ", "the", " ", "orthonormal", " ", "eigenvectors"}], 
           ",", " ", 
           RowBox[{
           "and", " ", "scaling", " ", "them", " ", "by", " ", "their", " ", 
            "eigenvalues", " ", "to", " ", "get", " ", "a", " ", "feel", " ", 
            "for", " ", "their", " ", "magnitude", " ", "and", " ", 
            RowBox[{"direction", "."}]}]}], "\[IndentingNewLine]", " ", 
          "*)"}], "\[IndentingNewLine]", "\[IndentingNewLine]", " ", 
         RowBox[{"(*", " ", 
          RowBox[{
           RowBox[{"note", ":", " ", 
            RowBox[{
            "sneaky", " ", "multiplication", " ", "of", " ", "lists"}]}], ",",
            " ", 
           RowBox[{
            RowBox[{
            "pairwise", " ", "eigenvalue", " ", "times", " ", "eigenvector", 
             " ", "as", " ", 
             RowBox[{"in", ":", "\[IndentingNewLine]", "a"}]}], " ", "=", " ", 
            RowBox[{
             RowBox[{
              RowBox[{"{", 
               RowBox[{"1.5", ",", " ", "2"}], "}"}], "\[IndentingNewLine]", 
              "b"}], " ", "=", " ", 
             RowBox[{
              RowBox[{"{", 
               RowBox[{"2", ",", " ", "3"}], "}"}], "\[IndentingNewLine]", 
              " ", "a", " ", "b", "\[IndentingNewLine]", 
              "\[IndentingNewLine]", "which", " ", 
              RowBox[{"produces", ":", " ", 
               RowBox[{"{", 
                RowBox[{"3", ",", " ", "6"}], "}"}]}]}]}]}]}], 
          "\[IndentingNewLine]", "*)"}], "\[IndentingNewLine]", 
         RowBox[{"(*", " ", "\[IndentingNewLine]", 
          RowBox[{
           RowBox[{
           "Make", " ", "a", " ", "table", " ", "of", " ", "the", " ", 
            "orthonormal", " ", "principle", " ", "strain", " ", 
            "eigenvectors"}], ",", " ", 
           RowBox[{
           "scaled", " ", "by", " ", "the", " ", "principle", " ", "values", 
            " ", "of", " ", "the", " ", 
            RowBox[{"stress", ".", "  ", "If"}], " ", "the", " ", "stress", 
            " ", "PV", " ", "is", " ", "positive", " ", 
            RowBox[{"(", "expansion", ")"}], " ", "use", " ", "a", " ", 
            "Blue", " ", "arrow"}], ",", " ", 
           RowBox[{"and", " ", "if", " ", "negative", " ", 
            RowBox[{"(", "compression", ")"}]}], ",", " ", 
           RowBox[{"use", " ", "a", " ", "Red", " ", 
            RowBox[{"arrow", "."}]}]}], "\[IndentingNewLine]", "*)"}], 
         "\[IndentingNewLine]", 
         RowBox[{"(*", 
          RowBox[{
           RowBox[{"Clear", "[", "i", "]"}], ";"}], "*)"}], 
         "\[IndentingNewLine]", 
         RowBox[{"scaled", " ", "=", " ", 
          RowBox[{"Table", "[", 
           RowBox[{
            RowBox[{"p", " ", "+", " ", 
             RowBox[{
              RowBox[{"Part", "[", 
               RowBox[{"sigmaDiag", ",", " ", "i"}], "]"}], " ", 
              RowBox[{"Part", "[", 
               RowBox[{"ee", ",", " ", "i"}], "]"}]}]}], ",", " ", 
            RowBox[{"{", 
             RowBox[{"i", ",", " ", "3"}], "}"}]}], "]"}]}], ";", 
         "\[IndentingNewLine]", 
         RowBox[{"arrows", " ", "=", " ", 
          RowBox[{"Table", "[", "\[IndentingNewLine]", 
           RowBox[{
            RowBox[{"{", 
             RowBox[{
              RowBox[{"If", "[", 
               RowBox[{
                RowBox[{
                 RowBox[{"Part", "[", 
                  RowBox[{"sigmaDiag", ",", " ", "i"}], "]"}], ">", "0"}], 
                ",", "Blue", ",", "Red"}], "]"}], ",", "\[IndentingNewLine]", 
              RowBox[{"Arrow", "[", 
               RowBox[{"{", 
                RowBox[{"p", ",", " ", 
                 RowBox[{"Part", "[", 
                  RowBox[{"scaled", ",", " ", "i"}], "]"}]}], "}"}], "]"}]}], 
             "}"}], ",", " ", 
            RowBox[{"{", 
             RowBox[{"i", ",", " ", "3"}], "}"}]}], "]"}]}], " ", ";", 
         "\[IndentingNewLine]", "\[IndentingNewLine]", 
         RowBox[{"labels", " ", "=", 
          RowBox[{"{", " ", 
           RowBox[{
            RowBox[{"Text", "[", 
             RowBox[{
              RowBox[{
               SubscriptBox["\[Lambda]", "1"], 
               SubscriptBox["u", "1"]}], ",", " ", 
              RowBox[{"scaled", "[", 
               RowBox[{"[", "1", "]"}], "]"}]}], "]"}], ",", " ", 
            RowBox[{"Text", "[", 
             RowBox[{
              RowBox[{
               SubscriptBox["\[Lambda]", "2"], 
               SubscriptBox["u", "2"]}], ",", " ", 
              RowBox[{"scaled", "[", 
               RowBox[{"[", "2", "]"}], "]"}]}], "]"}], ",", " ", 
            RowBox[{"Text", "[", 
             RowBox[{
              RowBox[{
               SubscriptBox["\[Lambda]", "3"], 
               SubscriptBox["u", "3"]}], ",", " ", 
              RowBox[{"scaled", "[", 
               RowBox[{"[", "3", "]"}], "]"}]}], "]"}]}], " ", "}"}]}], " ", 
         ";", "\[IndentingNewLine]", "\[IndentingNewLine]", 
         RowBox[{"arrowsReference", " ", "=", " ", 
          RowBox[{"Table", "[", 
           RowBox[{
            RowBox[{"Arrow", "[", 
             RowBox[{"{", 
              RowBox[{"p", ",", " ", 
               RowBox[{"p", " ", "+", " ", 
                RowBox[{"Part", "[", 
                 RowBox[{"standardBasis", ",", " ", "j"}], "]"}]}]}], "}"}], 
             "]"}], ",", " ", 
            RowBox[{"{", 
             RowBox[{"j", ",", " ", "3"}], "}"}]}], "]"}]}], " ", ";", 
         "\[IndentingNewLine]", "\[IndentingNewLine]", "\[IndentingNewLine]", 
         RowBox[{"Graphics3D", "[", 
          RowBox[{
           RowBox[{"{", "\[IndentingNewLine]", 
            RowBox[{
             RowBox[{"Arrowheads", "[", ".05", "]"}], ",", " ", "arrows", ",",
              "\[IndentingNewLine]", "Purple", ",", " ", 
             RowBox[{"Arrow", "[", 
              RowBox[{"{", 
               RowBox[{"o", ",", " ", "p"}], "}"}], "]"}], ",", " ", 
             "\[IndentingNewLine]", "Green", ",", " ", 
             RowBox[{"Arrowheads", "[", ".01", "]"}], ",", " ", 
             "arrowsReference", ",", "\[IndentingNewLine]", "Black", ",", " ",
              "labels"}], "}"}], ",", " ", "\[IndentingNewLine]", 
           RowBox[{"Boxed", " ", "\[Rule]", " ", "True"}], ",", " ", 
           RowBox[{"Axes", " ", "\[Rule]", " ", "True"}], " ", 
           "\[IndentingNewLine]", 
           RowBox[{"(*", 
            RowBox[{",", " ", 
             RowBox[{"ViewVector", "\[Rule]", 
              RowBox[{"{", 
               RowBox[{
                RowBox[{"{", 
                 RowBox[{"5", ",", 
                  RowBox[{"-", "5"}], ",", "5"}], "}"}], ",", 
                RowBox[{"{", 
                 RowBox[{"5", ",", "0", ",", 
                  RowBox[{"-", "5"}]}], "}"}]}], "}"}]}]}], " ", "*)"}], 
           "\[IndentingNewLine]", 
           RowBox[{"(*", 
            RowBox[{",", " ", 
             RowBox[{"SphericalRegion", " ", "\[Rule]", " ", "True"}]}], " ", 
            "*)"}], "\[IndentingNewLine]", 
           RowBox[{"(*", 
            RowBox[{",", " ", 
             RowBox[{"ViewCenter", " ", "\[Rule]", " ", 
              RowBox[{"{", 
               RowBox[{"0", ",", " ", "0", ",", " ", "0"}], "}"}]}]}], " ", 
            "*)"}], "\[IndentingNewLine]", 
           RowBox[{"(*", 
            RowBox[{",", " ", 
             RowBox[{"ViewAngle", " ", "\[Rule]", " ", 
              RowBox[{"Pi", "/", "2"}]}]}], " ", "*)"}], 
           "\[IndentingNewLine]", ",", 
           RowBox[{"PlotRange", " ", "\[Rule]", " ", "plotRange"}]}], " ", 
          RowBox[{"(*", " ", 
           RowBox[{
            RowBox[{"http", ":"}], "//", 
            RowBox[{
             RowBox[{
              RowBox[{
               RowBox[{
                RowBox[{"mathematica", ".", "stackexchange", ".", "com"}], 
                "/", "questions"}], "/", "1481"}], "/", "how"}], "-", "to", 
             "-", "fix", "-", "the", "-", "orientation", "-", "and", "-", 
             "scaling", "-", "of", "-", "graphics3d"}]}], " ", "*)"}], 
          "\[IndentingNewLine]", "]"}]}], "\[IndentingNewLine]", "]"}]}]}], 
     "]"}], ",", " ", "\[IndentingNewLine]", 
    RowBox[{"{", 
     RowBox[{
      RowBox[{"{", 
       RowBox[{"x", ",", " ", "1"}], "}"}], ",", " ", 
      RowBox[{"-", "10"}], ",", " ", "10"}], "}"}], ",", 
    "\[IndentingNewLine]", 
    RowBox[{"{", 
     RowBox[{
      RowBox[{"{", 
       RowBox[{"y", ",", " ", "2"}], "}"}], ",", " ", 
      RowBox[{"-", "10"}], ",", " ", "10"}], "}"}], ",", 
    "\[IndentingNewLine]", 
    RowBox[{"{", 
     RowBox[{
      RowBox[{"{", 
       RowBox[{"z", ",", " ", "4"}], "}"}], ",", " ", 
      RowBox[{"-", "10"}], ",", " ", "10"}], "}"}], ",", 
    "\[IndentingNewLine]", 
    RowBox[{"{", 
     RowBox[{
      RowBox[{"{", 
       RowBox[{"\[Nu]", ",", " ", "0"}], "}"}], ",", " ", 
      RowBox[{"-", "1"}], ",", " ", "0.5"}], "}"}], ",", 
    "\[IndentingNewLine]", 
    RowBox[{"{", 
     RowBox[{
      RowBox[{"{", 
       RowBox[{"plotRange", ",", " ", "7"}], "}"}], ",", " ", "1", ",", " ", 
      "30"}], "}"}]}], "]"}], " "}]], "Input",
 CellOpen->False,
 CellChangeTimes->{{3.512772013714432*^9, 3.512772158903736*^9}, {
   3.5127721894254823`*^9, 3.512772313463577*^9}, {3.5127723673286576`*^9, 
   3.512772381613475*^9}, {3.5127724474482403`*^9, 3.5127725995029373`*^9}, {
   3.512773288069321*^9, 3.512773315401884*^9}, {3.512773453388777*^9, 
   3.512773637965334*^9}, {3.5127736865951157`*^9, 3.5127737659696555`*^9}, {
   3.5127738423360233`*^9, 3.512773898420231*^9}, {3.512773940817656*^9, 
   3.5127740771594543`*^9}, {3.512774258370819*^9, 3.512774289393594*^9}, {
   3.5127743252706456`*^9, 3.5127744589042892`*^9}, {3.5127745179146643`*^9, 
   3.512774568279545*^9}, {3.512776514614869*^9, 3.512776548274794*^9}, {
   3.512776631217538*^9, 3.512776635571787*^9}, {3.512776710523074*^9, 
   3.5127767757258034`*^9}, {3.512776837659346*^9, 3.5127768625997725`*^9}, {
   3.5127769185139704`*^9, 3.512776966528717*^9}, {3.512778175116844*^9, 
   3.512778248917065*^9}, {3.512778523814789*^9, 3.5127785669862576`*^9}, {
   3.5127786256046104`*^9, 3.512778641631527*^9}, {3.512778674167388*^9, 
   3.512778681382801*^9}, {3.512778829158253*^9, 3.5127788582239156`*^9}, {
   3.5127791772591634`*^9, 3.512779207050867*^9}, {3.5127792474581785`*^9, 
   3.512779249723308*^9}, {3.512779417315894*^9, 3.5127794975274816`*^9}, {
   3.5127808419493785`*^9, 3.5127809305224447`*^9}, {3.5127810241558*^9, 
   3.5127810469801054`*^9}, {3.5127811193262434`*^9, 3.51278140058333*^9}, {
   3.5127814419656973`*^9, 3.512781775995803*^9}, {3.5127818779056315`*^9, 
   3.512781878019638*^9}, {3.512781934228853*^9, 3.512781938072073*^9}, {
   3.512781979354434*^9, 3.512781981014529*^9}, {3.5127823727259336`*^9, 
   3.512782485483383*^9}, {3.5127825168561773`*^9, 3.5127825223604927`*^9}, {
   3.5127826418473263`*^9, 3.512782671010995*^9}, {3.512782729515341*^9, 
   3.5127827310834303`*^9}, {3.5127827832874165`*^9, 
   3.5127828639780316`*^9}, {3.512782927629672*^9, 3.512783200434276*^9}, {
   3.512783253620318*^9, 3.5127833128647065`*^9}, {3.512783344275503*^9, 
   3.5127833680538635`*^9}, {3.512783594375808*^9, 3.5127836941795163`*^9}, {
   3.5376541522254286`*^9, 3.5376541568126907`*^9}, {3.537654211480818*^9, 
   3.537654370557916*^9}, {3.5376545325311804`*^9, 3.537654539814597*^9}, {
   3.537654582675049*^9, 3.537654686636995*^9}, {3.5376547400000467`*^9, 
   3.5376547949621906`*^9}, {3.5376548339574213`*^9, 3.5376548494923096`*^9}, 
   3.537655048125671*^9, {3.537655100071642*^9, 3.537655159924065*^9}, {
   3.5376552311211376`*^9, 3.5376553124147873`*^9}, {3.537655353153117*^9, 
   3.5376553912182946`*^9}, {3.537655428539429*^9, 3.53765543169761*^9}, {
   3.537655607847685*^9, 3.5376556485950155`*^9}, {3.537655710703568*^9, 
   3.5376557833637238`*^9}, {3.537655923987767*^9, 3.53765599134262*^9}, {
   3.5376560220283747`*^9, 3.537656070094124*^9}, {3.5376561081182985`*^9, 
   3.5376561170488095`*^9}, {3.537656236909665*^9, 3.5376562684444695`*^9}, {
   3.5376563347482615`*^9, 3.537656402482136*^9}, {3.537656433135889*^9, 
   3.537656501078775*^9}, {3.5376567700211573`*^9, 3.537656981985281*^9}, {
   3.537657061127808*^9, 3.537657123527377*^9}, {3.537657233742681*^9, 
   3.537657261317258*^9}, {3.5376573487572594`*^9, 3.537657355294633*^9}, {
   3.5376577572496243`*^9, 3.537657760051784*^9}, {3.5376579268853264`*^9, 
   3.537658029007168*^9}, {3.537659204487002*^9, 3.537659213000489*^9}, {
   3.53765930254261*^9, 3.5376593879434953`*^9}, {3.5376594674620433`*^9, 
   3.5376595138096943`*^9}, {3.53765958069452*^9, 3.5376596731508083`*^9}, {
   3.5376597486351256`*^9, 3.5376597714544306`*^9}, {3.5376598401773615`*^9, 
   3.5376598877140803`*^9}, {3.537659932655651*^9, 3.537659933090676*^9}, {
   3.537660325303109*^9, 3.537660325387114*^9}, {3.537698547355338*^9, 
   3.537698881004422*^9}, {3.5376989137972975`*^9, 3.5376989674723673`*^9}, {
   3.537699006106578*^9, 3.537699022458513*^9}, {3.5376990572955055`*^9, 
   3.5376992579089794`*^9}, {3.5376992909738708`*^9, 
   3.5376995537128987`*^9}, {3.537699766323059*^9, 3.537699869588966*^9}, {
   3.537699952850728*^9, 3.5377000384736257`*^9}, {3.5377001302118726`*^9, 
   3.5377001737753644`*^9}, {3.5377002234892077`*^9, 3.537700226798397*^9}, {
   3.5377003079070363`*^9, 3.5377003097221403`*^9}, {3.5377005500268846`*^9, 
   3.537700551443966*^9}, {3.5377008964096966`*^9, 3.5377009585912533`*^9}, {
   3.537700989294009*^9, 3.5377010347316084`*^9}, {3.537701172655497*^9, 
   3.537701175644668*^9}, {3.5377013095583277`*^9, 3.537701670061947*^9}, {
   3.537701709652211*^9, 3.537701722538948*^9}, {3.5377017746929317`*^9, 
   3.5377018497202225`*^9}, {3.537702178029001*^9, 3.53770219356689*^9}, {
   3.5377023212121906`*^9, 3.5377023292126484`*^9}, {3.5380480585617585`*^9, 
   3.5380480587837715`*^9}, {3.5380481601775703`*^9, 
   3.5380481866450844`*^9}, {3.5380482439173603`*^9, 3.538048250699748*^9}, {
   3.5380487042216883`*^9, 3.5380487269289865`*^9}, {3.5380597199123526`*^9, 
   3.5380598423333545`*^9}, {3.5380598786004286`*^9, 3.538059909025169*^9}, 
   3.5380599852225275`*^9, 3.5380602161647367`*^9, {3.5380602534998713`*^9, 
   3.5380602761921697`*^9}, {3.5380603184805884`*^9, 
   3.5380603626581154`*^9}, {3.5383911206095915`*^9, 
   3.5383911627770033`*^9}, {3.538391278879644*^9, 3.5383912902892966`*^9}, {
   3.538391374359105*^9, 3.538391414705413*^9}, {3.5383914939239435`*^9, 
   3.5383915307240486`*^9}, {3.538436273350167*^9, 3.5384363965702143`*^9}, {
   3.538438076289289*^9, 3.5384384263343105`*^9}, {3.538438555332689*^9, 
   3.538438590094677*^9}, {3.5384386584435863`*^9, 3.53843866095573*^9}, {
   3.5384386936456*^9, 3.5384387085584526`*^9}, {3.538438767830843*^9, 
   3.538438768060856*^9}, {3.538438856386908*^9, 3.538438865592435*^9}, {
   3.538438911561064*^9, 3.5384389974229746`*^9}, {3.538439036989238*^9, 
   3.538439161185342*^9}, {3.5384392099971333`*^9, 3.538439222212832*^9}, 
   3.5384393773777075`*^9, {3.5384394350840073`*^9, 3.5384394740712376`*^9}, 
   3.538439504810996*^9}],

Cell[BoxData[
 TagBox[
  StyleBox[
   DynamicModuleBox[{$CellContext`plotRange$$ = 7, $CellContext`x$$ = 
    1, $CellContext`y$$ = 2, $CellContext`z$$ = 4, $CellContext`\[Nu]$$ = 0, 
    Typeset`show$$ = True, Typeset`bookmarkList$$ = {}, 
    Typeset`bookmarkMode$$ = "Menu", Typeset`animator$$, Typeset`animvar$$ = 
    1, Typeset`name$$ = "\"untitled\"", Typeset`specs$$ = {{{
       Hold[$CellContext`x$$], 1}, -10, 10}, {{
       Hold[$CellContext`y$$], 2}, -10, 10}, {{
       Hold[$CellContext`z$$], 4}, -10, 10}, {{
       Hold[$CellContext`\[Nu]$$], 0}, -1, 0.5}, {{
       Hold[$CellContext`plotRange$$], 7}, 1, 30}}, Typeset`size$$ = {
    360., {195., 198.}}, Typeset`update$$ = 0, Typeset`initDone$$, 
    Typeset`skipInitDone$$ = True, $CellContext`x$9839$$ = 
    0, $CellContext`y$9840$$ = 0, $CellContext`z$9841$$ = 
    0, $CellContext`\[Nu]$9842$$ = 0, $CellContext`plotRange$9843$$ = 0}, 
    DynamicBox[Manipulate`ManipulateBoxes[
     1, StandardForm, 
      "Variables" :> {$CellContext`plotRange$$ = 7, $CellContext`x$$ = 
        1, $CellContext`y$$ = 2, $CellContext`z$$ = 4, $CellContext`\[Nu]$$ = 
        0}, "ControllerVariables" :> {
        Hold[$CellContext`x$$, $CellContext`x$9839$$, 0], 
        Hold[$CellContext`y$$, $CellContext`y$9840$$, 0], 
        Hold[$CellContext`z$$, $CellContext`z$9841$$, 0], 
        Hold[$CellContext`\[Nu]$$, $CellContext`\[Nu]$9842$$, 0], 
        Hold[$CellContext`plotRange$$, $CellContext`plotRange$9843$$, 0]}, 
      "OtherVariables" :> {
       Typeset`show$$, Typeset`bookmarkList$$, Typeset`bookmarkMode$$, 
        Typeset`animator$$, Typeset`animvar$$, Typeset`name$$, 
        Typeset`specs$$, Typeset`size$$, Typeset`update$$, Typeset`initDone$$,
         Typeset`skipInitDone$$}, "Body" :> 
      DynamicModule[{$CellContext`o, $CellContext`e, $CellContext`eStrain, \
$CellContext`e1, $CellContext`e2, $CellContext`e3, \
$CellContext`standardBasis, $CellContext`eigensolution, \
$CellContext`stressDiagonalized}, $CellContext`o := {0, 0, 
          0}; $CellContext`e1 := {1, 0, 0}; $CellContext`e2 := {0, 1, 
          0}; $CellContext`e3 := {0, 0, 
          1}; $CellContext`standardBasis := {$CellContext`e1, \
$CellContext`e2, $CellContext`e3}; $CellContext`eStrain[
           Pattern[$CellContext`x, 
            Blank[]], 
           Pattern[$CellContext`y, 
            Blank[]], 
           Pattern[$CellContext`z, 
            Blank[]]] := {{
           2 $CellContext`y, $CellContext`x, $CellContext`x}, {$CellContext`x,
             0, $CellContext`z}, {$CellContext`x, $CellContext`z, -1}}; \
$CellContext`eigensolution[
           Pattern[$CellContext`e, 
            Blank[]]] := 
         Module[{$CellContext`ev, $CellContext`ee}, {$CellContext`ev, \
$CellContext`ee} = N[
              Eigensystem[$CellContext`e]]; $CellContext`ee = 
            Map[Normalize, $CellContext`ee]; {$CellContext`ev, \
$CellContext`ee}]; $CellContext`stressDiagonalized[
           Pattern[$CellContext`ev, 
            Blank[]], 
           Pattern[$CellContext`ee, 
            Blank[]], 
           Pattern[$CellContext`\[Nu], 
            Blank[]]] := (1/(1 + $CellContext`\[Nu])) (
           DiagonalMatrix[$CellContext`ev] + ($CellContext`\[Nu]/(1 - 
             2 $CellContext`\[Nu])) Tr[$CellContext`ee] IdentityMatrix[3]); 
        Dynamic[Clear[$CellContext`e, $CellContext`ee, $CellContext`ev, \
$CellContext`sigmaDiag, $CellContext`\[Sigma], $CellContext`arrows, \
$CellContext`labels, $CellContext`arrowsReference, $CellContext`p]; \
$CellContext`p := {$CellContext`x$$, $CellContext`y$$, $CellContext`z$$}; \
{$CellContext`ev, $CellContext`ee} = N[
             $CellContext`eigensolution[
              $CellContext`eStrain[$CellContext`x$$, $CellContext`y$$, \
$CellContext`z$$]]]; $CellContext`\[Sigma] = \
$CellContext`stressDiagonalized[$CellContext`ev, $CellContext`ee, \
$CellContext`\[Nu]$$]; $CellContext`sigmaDiag = 
           Diagonal[$CellContext`\[Sigma]]; $CellContext`scaled = 
           Table[$CellContext`p + 
             Part[$CellContext`sigmaDiag, $CellContext`i] 
              Part[$CellContext`ee, $CellContext`i], {$CellContext`i, 
              3}]; $CellContext`arrows = Table[{
              If[Part[$CellContext`sigmaDiag, $CellContext`i] > 0, Blue, Red], 
              Arrow[{$CellContext`p, 
                Part[$CellContext`scaled, $CellContext`i]}]}, {$CellContext`i,
               3}]; $CellContext`labels = {
             Text[
             Subscript[$CellContext`\[Lambda], 1] 
              Subscript[$CellContext`u, 1], 
              Part[$CellContext`scaled, 1]], 
             Text[
             Subscript[$CellContext`\[Lambda], 2] 
              Subscript[$CellContext`u, 2], 
              Part[$CellContext`scaled, 2]], 
             Text[
             Subscript[$CellContext`\[Lambda], 3] 
              Subscript[$CellContext`u, 3], 
              Part[$CellContext`scaled, 3]]}; $CellContext`arrowsReference = 
           Table[
             
             Arrow[{$CellContext`p, $CellContext`p + 
               Part[$CellContext`standardBasis, $CellContext`j]}], \
{$CellContext`j, 3}]; Graphics3D[{
             Arrowheads[0.05], $CellContext`arrows, Purple, 
             Arrow[{$CellContext`o, $CellContext`p}], Green, 
             Arrowheads[0.01], $CellContext`arrowsReference, 
             Black, $CellContext`labels}, Boxed -> True, Axes -> True, 
            PlotRange -> $CellContext`plotRange$$]]], 
      "Specifications" :> {{{$CellContext`x$$, 1}, -10, 
         10}, {{$CellContext`y$$, 2}, -10, 10}, {{$CellContext`z$$, 4}, -10, 
         10}, {{$CellContext`\[Nu]$$, 0}, -1, 
         0.5}, {{$CellContext`plotRange$$, 7}, 1, 30}}, "Options" :> {}, 
      "DefaultOptions" :> {}],
     ImageSizeCache->{409., {294., 299.}},
     SingleEvaluation->True],
    Deinitialization:>None,
    DynamicModuleValues:>{},
    SynchronousInitialization->True,
    UnsavedVariables:>{Typeset`initDone$$},
    UntrackedVariables:>{Typeset`size$$}], "Manipulate",
   Deployed->True,
   StripOnInput->False],
  Manipulate`InterpretManipulate[1]]], "Output",
 CellChangeTimes->{3.5384391748711243`*^9, 3.5384392261530576`*^9, 
  3.538439378721784*^9, 3.53843950646609*^9, 3.5384395701187315`*^9, 
  3.538439608711939*^9}]
}, Open  ]]
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
Cell[1257, 32, 177, 4, 83, "Title"],
Cell[1437, 38, 5779, 140, 537, "Text"],
Cell[CellGroupData[{
Cell[7241, 182, 26694, 561, 19, "Input",
 CellOpen->False],
Cell[33938, 745, 6275, 122, 610, "Output"]
}, Open  ]]
}, Open  ]]
}
]
*)

(* End of internal cache information *)

(* NotebookSignature MwTm4X0oz42IzDwBZFOam@K1 *)
