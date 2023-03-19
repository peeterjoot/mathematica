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
NotebookDataLength[    770412,      14661]
NotebookOptionsPosition[    768300,      14616]
NotebookOutlinePosition[    768727,      14633]
CellTagsIndexPosition[    768684,      14630]
WindowFrame->Normal*)

(* Beginning of Notebook Content *)
Notebook[{

Cell[CellGroupData[{
Cell["\<\
Illustrating superposition of shear and channel flows in two layers of \
liquids.\
\>", "Title",
 CellChangeTimes->{{3.5418036855253916`*^9, 3.5418036978170943`*^9}, {
  3.5418037295829115`*^9, 
  3.541803742599656*^9}},ExpressionUUID->"a1a343d4-d5e3-4a3e-8241-\
cb1e712afea6"],

Cell[TextData[{
 StyleBox["The Navier-Stokes equation for a one dimensional flow in the \
abscence of any sort of pressure gradient reduces to just\n\n",
  FontSize->24],
 Cell[BoxData[
  FormBox[
   RowBox[{
    RowBox[{
     RowBox[{"u", "''"}], 
     RowBox[{"(", "y", ")"}]}], " ", "=", " ", 
    RowBox[{
     RowBox[{"-", "P"}], "/", "\[Mu]"}]}], TraditionalForm]],ExpressionUUID->
  "38c80683-5812-4b1b-bf5e-f2ef9564541a"],
 StyleBox["\n\nwhere ",
  FontSize->24],
 Cell[BoxData[
  FormBox[
   RowBox[{"P", " ", "=", 
    RowBox[{
     RowBox[{"-", "dp"}], "/", "dx"}]}], TraditionalForm]],ExpressionUUID->
  "34f95f77-e0e1-4fce-9bf2-199c6541efc3"],
 StyleBox["  is the pressure gradient.  With two layers we have the same form \
equation for both, but different integration constants, and different \
respective viscosities.  If the bottom surface (1) is moving at rate ",
  FontSize->24],
 Cell[BoxData[
  FormBox[
   SubscriptBox["v", "1"], TraditionalForm]],ExpressionUUID->
  "bf57a06b-61d0-46d4-8d9f-6d46134b7c9b"],
 StyleBox[", and the top with rate ",
  FontSize->24],
 Cell[BoxData[
  FormBox[
   SubscriptBox["v", "2"], TraditionalForm]],ExpressionUUID->
  "927a92c1-763a-4ab8-9b4a-b1228fbfaca1"],
 StyleBox[", and the heights are ",
  FontSize->24],
 Cell[BoxData[
  FormBox[
   SubscriptBox["h", "1"], TraditionalForm]],ExpressionUUID->
  "9cc894d0-6fa6-448d-90ee-1e75cfb5d655"],
 StyleBox[", and ",
  FontSize->24],
 Cell[BoxData[
  FormBox[
   SubscriptBox["h", "2"], TraditionalForm]],ExpressionUUID->
  "9800fb7a-1314-4513-aa6b-93772f38c7b2"],
 StyleBox[" respectively, we find after matching the all the appropriate \
boundary value conditions that the velocity has the following profile.\n\n",
  FontSize->24],
 Cell[BoxData[
  FormBox[
   RowBox[{
    StyleBox[
     RowBox[{"u", "(", "y", ")"}],
     FontSize->24], 
    StyleBox[" ",
     FontSize->24], 
    StyleBox["=",
     FontSize->24], " ", 
    StyleBox[
     TagBox[GridBox[{
        {"\[Piecewise]", GridBox[{
           {
            RowBox[{
             FractionBox[
              RowBox[{
               SubscriptBox["h", "1"], " ", 
               RowBox[{"(", 
                RowBox[{
                 FractionBox["y", 
                  SubscriptBox["h", "1"]], "+", "1"}], ")"}], " ", 
               RowBox[{"(", 
                RowBox[{
                 FractionBox[
                  RowBox[{
                   SubsuperscriptBox["h", "1", "2"], " ", "P"}], 
                  RowBox[{"2", " ", 
                   SubscriptBox["\[Mu]", "1"]}]], "-", 
                 FractionBox[
                  RowBox[{
                   SubsuperscriptBox["h", "2", "2"], " ", "P"}], 
                  RowBox[{"2", " ", 
                   SubscriptBox["\[Mu]", "2"]}]], "-", 
                 SubscriptBox["v", "1"], "+", 
                 SubscriptBox["v", "2"]}], ")"}]}], 
              RowBox[{
               SubscriptBox["\[Mu]", "1"], " ", 
               RowBox[{"(", 
                RowBox[{
                 FractionBox[
                  SubscriptBox["h", "1"], 
                  SubscriptBox["\[Mu]", "1"]], "+", 
                 FractionBox[
                  SubscriptBox["h", "2"], 
                  SubscriptBox["\[Mu]", "2"]]}], ")"}]}]], "+", 
             FractionBox[
              RowBox[{
               SubsuperscriptBox["h", "1", "2"], " ", "P", " ", 
               RowBox[{"(", 
                RowBox[{
                 FractionBox[
                  SuperscriptBox["y", "2"], 
                  SubsuperscriptBox["h", "1", "2"]], "-", "1"}], ")"}]}], 
              RowBox[{"2", " ", 
               SubscriptBox["\[Mu]", "1"]}]], "+", 
             SubscriptBox["v", "1"]}], 
            RowBox[{"y", "<", "0"}]},
           {
            RowBox[{
             FractionBox[
              RowBox[{
               SubscriptBox["h", "2"], " ", 
               RowBox[{"(", 
                RowBox[{
                 FractionBox["y", 
                  SubscriptBox["h", "2"]], "-", "1"}], ")"}], " ", 
               RowBox[{"(", 
                RowBox[{
                 FractionBox[
                  RowBox[{
                   SubsuperscriptBox["h", "1", "2"], " ", "P"}], 
                  RowBox[{"2", " ", 
                   SubscriptBox["\[Mu]", "1"]}]], "-", 
                 FractionBox[
                  RowBox[{
                   SubsuperscriptBox["h", "2", "2"], " ", "P"}], 
                  RowBox[{"2", " ", 
                   SubscriptBox["\[Mu]", "2"]}]], "-", 
                 SubscriptBox["v", "1"], "+", 
                 SubscriptBox["v", "2"]}], ")"}]}], 
              RowBox[{
               SubscriptBox["\[Mu]", "2"], " ", 
               RowBox[{"(", 
                RowBox[{
                 FractionBox[
                  SubscriptBox["h", "1"], 
                  SubscriptBox["\[Mu]", "1"]], "+", 
                 FractionBox[
                  SubscriptBox["h", "2"], 
                  SubscriptBox["\[Mu]", "2"]]}], ")"}]}]], "+", 
             FractionBox[
              RowBox[{
               SubsuperscriptBox["h", "2", "2"], " ", "P", " ", 
               RowBox[{"(", 
                RowBox[{
                 FractionBox[
                  SuperscriptBox["y", "2"], 
                  SubsuperscriptBox["h", "2", "2"]], "-", "1"}], ")"}]}], 
              RowBox[{"2", " ", 
               SubscriptBox["\[Mu]", "2"]}]], "+", 
             SubscriptBox["v", "2"]}], 
            RowBox[{"y", "\[GreaterEqual]", "0"}]}
          },
          AllowedDimensions->{2, Automatic},
          Editable->True,
          
          GridBoxAlignment->{
           "Columns" -> {{Left}}, "ColumnsIndexed" -> {}, 
            "Rows" -> {{Baseline}}, "RowsIndexed" -> {}},
          
          GridBoxItemSize->{
           "Columns" -> {{Automatic}}, "ColumnsIndexed" -> {}, 
            "Rows" -> {{1.}}, "RowsIndexed" -> {}},
          GridBoxSpacings->{"Columns" -> {
              Offset[0.27999999999999997`], {
               Offset[0.84]}, 
              Offset[0.27999999999999997`]}, "ColumnsIndexed" -> {}, "Rows" -> {
              Offset[0.2], {
               Offset[0.4]}, 
              Offset[0.2]}, "RowsIndexed" -> {}},
          Selectable->True]}
       },
       GridBoxAlignment->{
        "Columns" -> {{Left}}, "ColumnsIndexed" -> {}, "Rows" -> {{Baseline}},
          "RowsIndexed" -> {}},
       GridBoxItemSize->{
        "Columns" -> {{Automatic}}, "ColumnsIndexed" -> {}, "Rows" -> {{1.}}, 
         "RowsIndexed" -> {}},
       GridBoxSpacings->{"Columns" -> {
           Offset[0.27999999999999997`], {
            Offset[0.35]}, 
           Offset[0.27999999999999997`]}, "ColumnsIndexed" -> {}, "Rows" -> {
           Offset[0.2], {
            Offset[0.4]}, 
           Offset[0.2]}, "RowsIndexed" -> {}}],
      "Piecewise",
      DeleteWithContents->True,
      Editable->False,
      SelectWithContents->True,
      Selectable->False],
     FontSize->36]}], TraditionalForm]],
  FontSize->24,ExpressionUUID->"8c47c773-e1f8-421b-87d6-77dedbadf1e1"],
 StyleBox["\n\nThis can be viewed as the superpositon of a channel flow \
(parabolic profile due to external constant pressure gradient, and boundaries \
fixed), and a shear flow (no pressure gradient, but boundaries dragging the \
fluid at the respective interfaces).  With so many parameters in the mix, use \
of some slider controls to vary things is a nice way to visualize the plots, \
and the superposition effect.",
  FontSize->24]
}], "Text",
 CellChangeTimes->{{3.5418037199003572`*^9, 3.541803931285448*^9}, {
  3.541804164149767*^9, 3.5418041869930735`*^9}, {3.5418042813494706`*^9, 
  3.541804515514864*^9}, {3.5418045949394073`*^9, 3.541804611826373*^9}, {
  3.541804652557702*^9, 3.5418046532067394`*^9}, {3.5418046843995237`*^9, 
  3.5418046915949354`*^9}},ExpressionUUID->"42420202-8670-4edc-98eb-\
7fc91cfff367"],

Cell[BoxData[
 RowBox[{
  RowBox[{"(*", " ", 
   RowBox[{"create", " ", "initialization", " ", "cell"}], " ", "*)"}], 
  "\[IndentingNewLine]", 
  RowBox[{
   RowBox[{"Clear", "[", "  ", 
    RowBox[{"mu1d", ",", " ", "mu2d"}], " ", "]"}], "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{"mu1d", "=", " ", 
     RowBox[{
      RowBox[{"ChemicalData", "[", 
       RowBox[{"\"\<Mercury\>\"", ",", " ", "\"\<Viscosity\>\""}], "]"}], " ",
       "//", " ", "First"}]}], ";"}], "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{"mu2d", " ", "=", " ", 
     RowBox[{
      RowBox[{"ChemicalData", "[", 
       RowBox[{"\"\<Water\>\"", ",", " ", "\"\<Viscosity\>\""}], "]"}], " ", "//",
       " ", "First"}]}], ";"}], "\[IndentingNewLine]"}]}]], "Input",
 InitializationCell->True,
 CellChangeTimes->{{3.5419261849832363`*^9, 3.541926237359232*^9}, {
  3.888178501436688*^9, 3.8881785071316643`*^9}},
 CellLabel->
  "In[643]:=",ExpressionUUID->"01c26d4b-f3f9-46c6-b6b2-6e6cf4914a75"],

Cell[CellGroupData[{

Cell[BoxData[{
 RowBox[{
  RowBox[{"Clear", "[", 
   RowBox[{
   "h1d", ",", " ", "h2d", ",", "  ", "v1d", ",", " ", "v2d", ",", " ", 
    "vPressure", ",", " ", "muRange", ",", " ", "muDefMin", ",", " ", 
    "muDefMax", ",", " ", "uComposite", ",", " ", "uNoPressureGrad", ",", " ",
     "uNoShear"}], "]"}], "\[IndentingNewLine]", 
  RowBox[{"(*", " ", 
   RowBox[{"implement", " ", "as", " ", 
    RowBox[{"sliders", ":"}]}], " ", "*)"}]}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{
   RowBox[{"h1d", " ", ":=", " ", "0.005"}], "  ", ";"}], " ", 
  RowBox[{"(*", " ", 
   RowBox[{"0.5", " ", "cm"}], " ", "*)"}], " "}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{
   RowBox[{"h2d", " ", ":=", " ", "0.07"}], "  ", ";"}], " ", 
  RowBox[{"(*", " ", 
   RowBox[{"7", " ", "cm"}], " ", "*)"}], " ", 
  "\[IndentingNewLine]"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{
   RowBox[{"v1d", " ", ":=", " ", "0.01"}], " ", ";"}], " ", 
  RowBox[{"(*", " ", 
   RowBox[{"1", " ", 
    RowBox[{"cm", "/", "s"}]}], " ", "*)"}], " "}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{
   RowBox[{"v2d", " ", ":=", " ", 
    RowBox[{"-", "0.02"}]}], " ", ";"}], " ", 
  RowBox[{"(*", " ", 
   RowBox[{"2", " ", 
    RowBox[{"cm", "/", "s"}]}], " ", "*)"}]}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{
   RowBox[{"vPressure", " ", ":=", " ", "0.1"}], "  ", ";"}], 
  RowBox[{"(*", " ", 
   RowBox[{"10", " ", 
    RowBox[{"cm", "/", "s"}]}], " ", "*)"}], " ", "\[IndentingNewLine]", 
  "\[IndentingNewLine]", 
  RowBox[{"(*", " ", 
   RowBox[{
    ButtonBox["",
     BaseStyle->"Hyperlink",
     ButtonData->"",
     ButtonNote->
      "http://mathematica.stackexchange.com/questions/3549/how-to-save-\
chemicaldata-queries-so-that-they-are-available-immediately-on-not"], 
    ButtonBox[
     RowBox[{
      RowBox[{"http", ":"}], "//", 
      RowBox[{
       RowBox[{
        RowBox[{
         RowBox[{
          RowBox[{"mathematica", ".", "stackexchange", ".", "com"}], "/", 
          "questions"}], "/", "3549"}], "/", "how"}], "-", "to", "-", "save", 
       "-", "chemicaldata", "-", "queries", "-", "so", "-", "that", "-", 
       "they", "-", "are", "-", "available", "-", "immediately", "-", "on", 
       "-", "not"}]}],
     BaseStyle->"Hyperlink",
     ButtonData->{
       URL[
       "http://mathematica.stackexchange.com/questions/3549/how-to-save-\
chemicaldata-queries-so-that-they-are-available-immediately-on-not"], None},
     ButtonNote->
      "http://mathematica.stackexchange.com/questions/3549/how-to-save-\
chemicaldata-queries-so-that-they-are-available-immediately-on-not"]}], " ", 
   "*)"}], "\[IndentingNewLine]", 
  RowBox[{"(*", 
   RowBox[{
    RowBox[{"ChemicalData", "[", 
     RowBox[{"All", ",", "\"\<Preload\>\""}], "]"}], "\n", 
    RowBox[{"RebuildPacletData", "[", "]"}]}], "*)"}], 
  "\[IndentingNewLine]"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{"muRange", " ", ":=", " ", 
   RowBox[{"{", 
    RowBox[{"mu1d", ",", " ", "mu2d"}], "}"}]}], " ", 
  ";"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{"muDefMin", " ", ":=", " ", 
   RowBox[{"Min", "[", "muRange", "]"}]}], " ", ";"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{
   RowBox[{"muDefMax", " ", ":=", " ", 
    RowBox[{"Max", "[", "muRange", "]"}]}], " ", ";"}], 
  "\[IndentingNewLine]"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{
   RowBox[{"uComposite", "[", 
    RowBox[{
    "y_", ",", " ", "pressureGradient_", ",", "mu1_", ",", " ", "mu2_", ",", 
     " ", "h1_", ",", " ", "h2_", ",", "  ", "v1_", ",", " ", "v2_"}], "]"}], 
   " ", ":=", " ", 
   RowBox[{"Module", "[", 
    RowBox[{
     RowBox[{"{", 
      RowBox[{
      "u1", ",", " ", "u2", ",", " ", "a", ",", " ", "hr1", ",", " ", "hr2", 
       ",", " ", "gp1", ",", " ", "gp2"}], "}"}], ",", "\[IndentingNewLine]", 
     "\[IndentingNewLine]", 
     RowBox[{"(*", " ", 
      RowBox[{
      "some", " ", "scratch", " ", "vars", " ", "that", " ", "show", " ", 
       "up", " ", "in", " ", "the", " ", "expressions", " ", "a", " ", 
       "bunch"}], " ", "*)"}], "\[IndentingNewLine]", 
     RowBox[{
      RowBox[{"hr1", " ", ":=", " ", 
       RowBox[{"h1", "/", "mu1"}]}], " ", ";", "\[IndentingNewLine]", 
      RowBox[{"hr2", " ", ":=", " ", 
       RowBox[{"h2", "/", "mu2"}]}], " ", ";", "\[IndentingNewLine]", 
      RowBox[{"gp1", " ", ":=", " ", 
       RowBox[{
        RowBox[{"(", 
         RowBox[{"pressureGradient", "/", "2"}], ")"}], "h1", " ", "hr1"}]}], 
      " ", ";", "\[IndentingNewLine]", 
      RowBox[{"gp2", " ", ":=", " ", 
       RowBox[{
        RowBox[{"(", 
         RowBox[{"pressureGradient", "/", "2"}], ")"}], "h2", " ", "hr2"}]}], 
      " ", ";", "\[IndentingNewLine]", "\[IndentingNewLine]", 
      "\[IndentingNewLine]", 
      RowBox[{"a", " ", ":=", " ", 
       RowBox[{
        RowBox[{"(", 
         RowBox[{
         "v2", " ", "-", " ", "v1", " ", "+", " ", "gp1", " ", "-", " ", 
          "gp2"}], ")"}], "/", 
        RowBox[{"(", 
         RowBox[{"hr1", " ", "+", " ", "hr2"}], ")"}]}]}], " ", ";", 
      "\[IndentingNewLine]", 
      RowBox[{
       RowBox[{"u1", "[", "t_", "]"}], " ", "=", " ", 
       RowBox[{
        RowBox[{"gp1", " ", 
         RowBox[{"(", " ", 
          RowBox[{
           RowBox[{
            RowBox[{"t", "^", "2"}], "/", 
            RowBox[{"h1", "^", "2"}]}], " ", "-", " ", "1"}], " ", ")"}]}], 
        " ", "+", " ", 
        RowBox[{"a", " ", "hr1", " ", 
         RowBox[{"(", " ", 
          RowBox[{
           RowBox[{"t", "/", "h1"}], " ", "+", " ", "1"}], ")"}]}], " ", "+", 
        " ", "v1"}]}], " ", ";", "\[IndentingNewLine]", 
      RowBox[{
       RowBox[{"u2", "[", "t_", "]"}], " ", "=", " ", 
       RowBox[{
        RowBox[{"gp2", " ", 
         RowBox[{"(", " ", 
          RowBox[{
           RowBox[{
            RowBox[{"t", "^", "2"}], "/", 
            RowBox[{"h2", "^", "2"}]}], " ", "-", " ", "1"}], " ", ")"}]}], 
        " ", "+", " ", 
        RowBox[{"a", " ", "hr2", " ", 
         RowBox[{"(", " ", 
          RowBox[{
           RowBox[{"t", "/", "h2"}], " ", "-", " ", "1"}], ")"}]}], " ", "+", 
        " ", "v2"}]}], " ", ";", "\[IndentingNewLine]", "\[IndentingNewLine]",
       " ", 
      RowBox[{"Piecewise", "[", 
       RowBox[{"{", 
        RowBox[{
         RowBox[{"{", 
          RowBox[{
           RowBox[{"u1", "[", "y", "]"}], ",", 
           RowBox[{"y", "<", "0"}]}], "}"}], ",", 
         RowBox[{"{", 
          RowBox[{
           RowBox[{"u2", "[", "y", "]"}], ",", 
           RowBox[{"y", ">=", "0"}]}], "}"}]}], "}"}], "]"}]}]}], "]"}]}], 
  "\[IndentingNewLine]"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{
   RowBox[{"uNoPressureGrad", "[", 
    RowBox[{
    "y_", ",", " ", "mu1_", ",", " ", "mu2_", ",", " ", "h1_", ",", " ", 
     "h2_", ",", "  ", "v1_", ",", " ", "v2_"}], "]"}], " ", ":=", " ", 
   RowBox[{"Module", "[", 
    RowBox[{
     RowBox[{"{", 
      RowBox[{"u1", ",", " ", "u2", ",", " ", "a"}], "}"}], ",", 
     "\[IndentingNewLine]", "\[IndentingNewLine]", 
     RowBox[{
      RowBox[{"a", " ", "=", " ", 
       RowBox[{
        RowBox[{"(", 
         RowBox[{"v2", " ", "-", " ", "v1"}], ")"}], " ", 
        RowBox[{"mu1", "/", 
         RowBox[{"(", 
          RowBox[{
           RowBox[{"h1", " ", "mu2"}], " ", "+", " ", 
           RowBox[{"h2", " ", "mu1"}]}], ")"}]}]}]}], " ", ";", 
      "\[IndentingNewLine]", "\[IndentingNewLine]", 
      RowBox[{
       RowBox[{"u2", "[", "t_", "]"}], " ", "=", " ", 
       RowBox[{
        RowBox[{"a", " ", 
         RowBox[{"(", " ", 
          RowBox[{"t", " ", "-", " ", "h2"}], ")"}]}], " ", "+", " ", 
        "v2"}]}], " ", ";", "\[IndentingNewLine]", 
      RowBox[{
       RowBox[{"u1", "[", "t_", "]"}], " ", "=", " ", 
       RowBox[{
        RowBox[{"a", "  ", 
         RowBox[{"(", 
          RowBox[{"mu2", "/", "mu1"}], ")"}], " ", 
         RowBox[{"(", 
          RowBox[{"t", " ", "+", " ", "h1"}], ")"}]}], " ", "+", " ", 
        "v1"}]}], " ", ";", "\[IndentingNewLine]", "\[IndentingNewLine]", " ", 
      RowBox[{"Piecewise", "[", 
       RowBox[{"{", 
        RowBox[{
         RowBox[{"{", 
          RowBox[{
           RowBox[{"u1", "[", "y", "]"}], ",", 
           RowBox[{"y", "<", "0"}]}], "}"}], ",", 
         RowBox[{"{", 
          RowBox[{
           RowBox[{"u2", "[", "y", "]"}], ",", 
           RowBox[{"y", ">", "0"}]}], "}"}]}], "}"}], "]"}]}]}], "]"}]}], 
  "\[IndentingNewLine]"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{
   RowBox[{"uNoShear", "[", 
    RowBox[{
    "y_", ",", " ", "pressureGradient_", ",", "mu1_", ",", " ", "mu2_", ",", 
     " ", "h1_", ",", " ", "h2_"}], "]"}], " ", ":=", " ", 
   RowBox[{"uComposite", "[", 
    RowBox[{
    "y", ",", " ", "pressureGradient", ",", "mu1", ",", " ", "mu2", ",", " ", 
     "h1", ",", " ", "h2", ",", " ", "0", ",", " ", "0"}], "]"}]}], " ", 
  "\[IndentingNewLine]"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{"green", " ", "=", " ", "Green"}], ";"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{"green", " ", "=", " ", "Black"}], ";"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{"red", " ", "=", " ", "Red"}], ";"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{
   RowBox[{"red", " ", "=", " ", "Black"}], ";"}], 
  "\[IndentingNewLine]"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{"Manipulate", "[", "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{"Module", "[", 
     RowBox[{
      RowBox[{"{", " ", 
       RowBox[{
       "f1", ",", " ", "f2", ",", " ", "f3", ",", " ", "a1", ",", " ", "a2", 
        ",", " ", "a3", ",", " ", "p", ",", " ", "t1", ",", " ", "t2", ",", 
        " ", "t3", ",", " ", "s1", ",", " ", "s2", ",", " ", "s3"}], "}"}], 
      ",", "\[IndentingNewLine]", "\[IndentingNewLine]", 
      RowBox[{
       RowBox[{
        RowBox[{"f1", "[", 
         RowBox[{"y_", ",", " ", "w_"}], "]"}], " ", ":=", " ", 
        RowBox[{"uNoPressureGrad", "[", " ", 
         RowBox[{
         "y", ",", " ", "mu1", ",", " ", "mu2", ",", "  ", "h1", ",", " ", 
          "h2", ",", "  ", "v1", ",", " ", "v2"}], " ", "]"}]}], " ", ";", 
       "\[IndentingNewLine]", 
       RowBox[{
        RowBox[{"f2", "[", 
         RowBox[{"y_", ",", " ", "w_"}], "]"}], " ", ":=", " ", 
        RowBox[{"uNoShear", "[", 
         RowBox[{"y", ",", " ", 
          RowBox[{"3", " ", "w", "  ", 
           RowBox[{
            RowBox[{"(", 
             RowBox[{
              RowBox[{"mu1", "/", "h1"}], " ", "+", " ", 
              RowBox[{"mu2", "/", "h2"}]}], ")"}], "/", "2"}]}], ",", "mu1", 
          ",", " ", "mu2", ",", " ", "h1", ",", " ", "h2"}], "]"}]}], " ", 
       ";", "\[IndentingNewLine]", 
       RowBox[{
        RowBox[{"f3", "[", 
         RowBox[{"y_", ",", " ", "w_"}], "]"}], " ", ":=", " ", 
        RowBox[{"uComposite", "[", " ", 
         RowBox[{"y", ",", " ", 
          RowBox[{"3", " ", "w", "  ", 
           RowBox[{
            RowBox[{"(", 
             RowBox[{
              RowBox[{"mu1", "/", "h1"}], " ", "+", " ", 
              RowBox[{"mu2", "/", "h2"}]}], ")"}], "/", "2"}]}], ",", "mu1", 
          ",", " ", "mu2", ",", " ", "h1", ",", " ", "h2", ",", "  ", "v1", 
          ",", " ", "v2"}], "]"}]}], " ", ";", "\[IndentingNewLine]", 
       "\[IndentingNewLine]", 
       RowBox[{"s1", " ", "=", " ", 
        RowBox[{"-", "0.1"}]}], " ", ";", "\[IndentingNewLine]", 
       RowBox[{"s2", " ", "=", " ", "0"}], " ", ";", "\[IndentingNewLine]", 
       RowBox[{"s3", " ", "=", " ", "0.1"}], " ", ";", "\[IndentingNewLine]", 
       RowBox[{"p", " ", "=", " ", 
        RowBox[{"ParametricPlot", "[", "\[IndentingNewLine]", 
         RowBox[{
          RowBox[{"{", "\[IndentingNewLine]", 
           RowBox[{
            RowBox[{"{", 
             RowBox[{
              RowBox[{"s1", " ", "+", " ", 
               RowBox[{"f1", "[", 
                RowBox[{"r", ",", " ", "vp"}], "]"}]}], ",", " ", "r"}], 
             "}"}], ",", "\[IndentingNewLine]", 
            RowBox[{"{", 
             RowBox[{
              RowBox[{"s2", " ", "+", " ", 
               RowBox[{"f2", "[", 
                RowBox[{"r", ",", " ", "vp"}], "]"}]}], ",", " ", "r"}], 
             "}"}], ",", "\[IndentingNewLine]", 
            RowBox[{"{", 
             RowBox[{
              RowBox[{"s3", " ", "+", " ", 
               RowBox[{"f3", "[", 
                RowBox[{"r", ",", " ", "vp"}], "]"}]}], ",", " ", "r"}], 
             "}"}]}], "\[IndentingNewLine]", "}"}], "\[IndentingNewLine]", 
          ",", " ", 
          RowBox[{"{", 
           RowBox[{"r", ",", 
            RowBox[{"-", "h1"}], ",", "h2"}], "}"}], "\[IndentingNewLine]", 
          ",", " ", 
          RowBox[{"PlotStyle", "\[Rule]", 
           RowBox[{"Directive", "[", 
            RowBox[{"Black", ",", "Thick"}], "]"}]}]}], "]"}]}], "  ", ";", 
       "\[IndentingNewLine]", "\[IndentingNewLine]", 
       RowBox[{"t1", " ", "=", " ", 
        RowBox[{"Table", "[", " ", 
         RowBox[{
          RowBox[{"Arrow", "[", 
           RowBox[{"{", 
            RowBox[{
             RowBox[{"{", 
              RowBox[{"s1", ",", " ", "i"}], "}"}], ",", " ", 
             RowBox[{"{", 
              RowBox[{
               RowBox[{"s1", " ", "+", " ", 
                RowBox[{"f1", "[", 
                 RowBox[{"i", ",", " ", "vp"}], "]"}]}], ",", " ", "i"}], 
              "}"}]}], "}"}], "]"}], ",", " ", 
          RowBox[{"{", 
           RowBox[{"i", ",", " ", 
            RowBox[{"-", "h1"}], ",", " ", "h2", ",", " ", 
            RowBox[{
             RowBox[{"(", 
              RowBox[{"h2", " ", "+", "h1"}], ")"}], "/", "10"}]}], "}"}]}], 
         "]"}]}], " ", ";", "\[IndentingNewLine]", 
       RowBox[{"t2", " ", "=", " ", 
        RowBox[{"Table", "[", " ", 
         RowBox[{
          RowBox[{"Arrow", "[", 
           RowBox[{"{", 
            RowBox[{
             RowBox[{"{", 
              RowBox[{"s2", ",", " ", "i"}], "}"}], ",", " ", 
             RowBox[{"{", 
              RowBox[{
               RowBox[{"s2", " ", "+", " ", 
                RowBox[{"f2", "[", 
                 RowBox[{"i", ",", " ", "vp"}], "]"}]}], ",", " ", "i"}], 
              "}"}]}], "}"}], "]"}], ",", " ", 
          RowBox[{"{", 
           RowBox[{"i", ",", " ", 
            RowBox[{"-", "h1"}], ",", " ", "h2", ",", " ", 
            RowBox[{
             RowBox[{"(", 
              RowBox[{"h2", " ", "+", "h1"}], ")"}], "/", "10"}]}], "}"}]}], 
         "]"}]}], " ", ";", "\[IndentingNewLine]", 
       RowBox[{"t3", " ", "=", " ", 
        RowBox[{"Table", "[", " ", 
         RowBox[{
          RowBox[{"Arrow", "[", 
           RowBox[{"{", 
            RowBox[{
             RowBox[{"{", 
              RowBox[{"s3", ",", " ", "i"}], "}"}], ",", " ", 
             RowBox[{"{", 
              RowBox[{
               RowBox[{"s3", " ", "+", " ", 
                RowBox[{"f3", "[", 
                 RowBox[{"i", ",", " ", "vp"}], "]"}]}], ",", " ", "i"}], 
              "}"}]}], "}"}], "]"}], ",", " ", 
          RowBox[{"{", 
           RowBox[{"i", ",", " ", 
            RowBox[{"-", "h1"}], ",", " ", "h2", ",", " ", 
            RowBox[{
             RowBox[{"(", 
              RowBox[{"h2", " ", "+", "h1"}], ")"}], "/", "10"}]}], "}"}]}], 
         "]"}]}], " ", ";", "\[IndentingNewLine]", "\[IndentingNewLine]", 
       "\[IndentingNewLine]", "\[IndentingNewLine]", 
       RowBox[{"Show", "[", 
        RowBox[{"{", 
         RowBox[{"p", ",", " ", "\[IndentingNewLine]", 
          RowBox[{"Graphics", "[", " ", 
           RowBox[{"{", " ", "\[IndentingNewLine]", 
            RowBox[{
             RowBox[{"Arrowheads", "[", ".025", "]"}], ",", " ", "t1", ",", 
             " ", "t2", ",", " ", "t3", ",", "\[IndentingNewLine]", "green", 
             ",", " ", "\[IndentingNewLine]", 
             RowBox[{"Line", "[", 
              RowBox[{"{", 
               RowBox[{
                RowBox[{"{", 
                 RowBox[{"s1", ",", 
                  RowBox[{"-", "h1"}]}], "}"}], ",", " ", 
                RowBox[{"{", 
                 RowBox[{"s1", ",", " ", "h2"}], "}"}]}], "}"}], "]"}], ",", 
             " ", "\[IndentingNewLine]", "red", ",", " ", 
             "\[IndentingNewLine]", 
             RowBox[{"Line", "[", 
              RowBox[{"{", 
               RowBox[{
                RowBox[{"{", 
                 RowBox[{"s3", ",", 
                  RowBox[{"-", "h1"}]}], "}"}], ",", " ", 
                RowBox[{"{", 
                 RowBox[{"s3", ",", " ", "h2"}], "}"}]}], "}"}], "]"}]}], " ",
             "}"}], " ", "]"}]}], "\[IndentingNewLine]", "}"}], " ", 
        "]"}]}]}], "\[IndentingNewLine]", "]"}], "\[IndentingNewLine]", ",", 
    "\[IndentingNewLine]", 
    RowBox[{"{", 
     RowBox[{
      RowBox[{"{", 
       RowBox[{"mu1", ",", " ", "muDefMax"}], "}"}], ",", " ", "muDefMin", 
      ",", "  ", "muDefMax", ",", 
      RowBox[{"Appearance", "\[Rule]", "\"\<Labeled\>\""}]}], "}"}], 
    "\[IndentingNewLine]", ",", "\[IndentingNewLine]", 
    RowBox[{"{", 
     RowBox[{
      RowBox[{"{", 
       RowBox[{"mu2", ",", " ", "muDefMin"}], "}"}], ",", " ", "muDefMin", 
      ",", "  ", "muDefMax", ",", 
      RowBox[{"Appearance", "\[Rule]", "\"\<Labeled\>\""}]}], "}"}], 
    "\[IndentingNewLine]", ",", "\[IndentingNewLine]", 
    RowBox[{"{", 
     RowBox[{
      RowBox[{"{", 
       RowBox[{"h1", ",", " ", 
        RowBox[{"Max", "[", 
         RowBox[{"{", 
          RowBox[{"h1d", ",", " ", "h2d"}], "}"}], "]"}]}], "}"}], ",", " ", 
      "0", ",", "  ", 
      RowBox[{"Max", "[", 
       RowBox[{"{", 
        RowBox[{"h1d", ",", " ", "h2d"}], "}"}], "]"}], ",", 
      RowBox[{"Appearance", "\[Rule]", "\"\<Labeled\>\""}]}], "}"}], 
    "\[IndentingNewLine]", ",", "\[IndentingNewLine]", 
    RowBox[{"{", 
     RowBox[{
      RowBox[{"{", 
       RowBox[{"h2", ",", " ", 
        RowBox[{"Max", "[", 
         RowBox[{"{", 
          RowBox[{"h1d", ",", " ", "h2d"}], "}"}], "]"}]}], "}"}], ",", " ", 
      "0", ",", "  ", 
      RowBox[{"Max", "[", 
       RowBox[{"{", 
        RowBox[{"h1d", ",", " ", "h2d"}], "}"}], "]"}], ",", 
      RowBox[{"Appearance", "\[Rule]", "\"\<Labeled\>\""}]}], "}"}], 
    "\[IndentingNewLine]", ",", "\[IndentingNewLine]", 
    RowBox[{"{", 
     RowBox[{
      RowBox[{"{", 
       RowBox[{"v1", ",", " ", 
        RowBox[{"(*", "v1d", "*)"}], " ", "0"}], "}"}], ",", " ", 
      RowBox[{
       RowBox[{"-", "5"}], " ", 
       RowBox[{"Abs", "[", "v1d", "]"}]}], ",", "  ", 
      RowBox[{"5", " ", 
       RowBox[{"Abs", "[", "v2d", "]"}]}], ",", 
      RowBox[{"Appearance", "\[Rule]", "\"\<Labeled\>\""}]}], "}"}], 
    "\[IndentingNewLine]", ",", "\[IndentingNewLine]", 
    RowBox[{"{", 
     RowBox[{
      RowBox[{"{", 
       RowBox[{"v2", ",", " ", "v2d"}], "}"}], ",", " ", 
      RowBox[{
       RowBox[{"-", "5"}], " ", 
       RowBox[{"Abs", "[", "v2d", "]"}]}], ",", "  ", 
      RowBox[{"5", " ", 
       RowBox[{"Abs", "[", "v2d", "]"}]}], ",", 
      RowBox[{"Appearance", "\[Rule]", "\"\<Labeled\>\""}]}], "}"}], " ", 
    "\[IndentingNewLine]", ",", "\[IndentingNewLine]", 
    RowBox[{"{", 
     RowBox[{
      RowBox[{"{", 
       RowBox[{"vp", ",", " ", 
        RowBox[{"5", " ", "vPressure"}]}], "}"}], ",", " ", 
      RowBox[{
       RowBox[{"-", "5"}], " ", 
       RowBox[{"Abs", "[", "vPressure", "]"}]}], ",", "  ", 
      RowBox[{"5", " ", 
       RowBox[{"Abs", "[", "vPressure", "]"}]}], ",", 
      RowBox[{"Appearance", "\[Rule]", "\"\<Labeled\>\""}]}], "}"}], ",", 
    "\[IndentingNewLine]", 
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
         "with", "-", "part", "-", "call", "-", "misbehaving", "-", "but", 
        "-", "only", "-", "after", "-", "initial", "-", "startup", "-", "of", 
        "-", 
        RowBox[{
         RowBox[{"m", "/", "1670"}], "#1670"}]}]}],
      BaseStyle->"Hyperlink",
      ButtonData->{
        URL[
        "http://mathematica.stackexchange.com/questions/1669/table-function-\
with-part-call-misbehaving-but-only-after-initial-startup-of-m/1670#1670"], 
        None},
      ButtonNote->
       "http://mathematica.stackexchange.com/questions/1669/table-function-\
with-part-call-misbehaving-but-only-after-initial-startup-of-m/1670#1670"], 
     " ", "*)"}], " ", 
    RowBox[{"SaveDefinitions", "\[Rule]", "True"}]}], "]"}], 
  "\[IndentingNewLine]", "\[IndentingNewLine]", "\[IndentingNewLine]", 
  "\[IndentingNewLine]", "\[IndentingNewLine]", 
  "\[IndentingNewLine]"}], "\[IndentingNewLine]"}], "Input",
 CellChangeTimes->{{3.5414627169191494`*^9, 3.541462963116231*^9}, {
   3.54146299702717*^9, 3.5414630289149942`*^9}, {3.541463063246958*^9, 
   3.541463174081297*^9}, {3.5414632125324965`*^9, 3.5414632157276793`*^9}, {
   3.541463269781771*^9, 3.541463348630281*^9}, {3.541463381051135*^9, 
   3.5414633957109737`*^9}, {3.5414635603263893`*^9, 
   3.5414636424850883`*^9}, {3.5414637282369933`*^9, 
   3.5414638156199913`*^9}, {3.5414638656818542`*^9, 3.54146387469037*^9}, {
   3.5414639202739773`*^9, 3.5414639932741528`*^9}, {3.541464260069412*^9, 
   3.54146435864305*^9}, {3.5414644054977303`*^9, 3.5414646187289267`*^9}, 
   3.541464719088667*^9, {3.5414648505301847`*^9, 3.5414648573665757`*^9}, 
   3.5414907846379895`*^9, {3.5414908379630394`*^9, 3.541491001419389*^9}, {
   3.541491112915766*^9, 3.541491115828933*^9}, {3.5414911471237226`*^9, 
   3.541491272245879*^9}, {3.5414913328803473`*^9, 3.541491420362351*^9}, 
   3.541491481206831*^9, {3.5414915511618323`*^9, 3.541491907140193*^9}, {
   3.541492025432959*^9, 3.5414920421179132`*^9}, {3.541492081726179*^9, 
   3.541492092848815*^9}, {3.5414921665150285`*^9, 3.541492191916481*^9}, {
   3.5414923296203575`*^9, 3.5414923326425304`*^9}, {3.541635880831171*^9, 
   3.541636015874895*^9}, {3.541636052797007*^9, 3.5416361896858363`*^9}, {
   3.5416362255488877`*^9, 3.5416363276467276`*^9}, {3.541636361648672*^9, 
   3.5416365156434803`*^9}, {3.541636550224458*^9, 3.541636695790784*^9}, 
   3.5416367539331093`*^9, {3.54163678645497*^9, 3.5416369034266605`*^9}, {
   3.5416369678143425`*^9, 3.5416369680133543`*^9}, 3.541637057854493*^9, {
   3.541637094226573*^9, 3.5416371058002353`*^9}, {3.5416377558464155`*^9, 
   3.541637765643976*^9}, {3.541637806884335*^9, 3.5416382490486255`*^9}, {
   3.5416382885488844`*^9, 3.541638323201867*^9}, {3.541673083681239*^9, 
   3.541673086529402*^9}, {3.5416731168521357`*^9, 3.5416732177719083`*^9}, {
   3.541692024040759*^9, 3.541692110778721*^9}, {3.541694005924117*^9, 
   3.5416940445893283`*^9}, {3.5416940917260246`*^9, 3.541694121950753*^9}, {
   3.5416941792840323`*^9, 3.5416941796650543`*^9}, {3.541694455688842*^9, 
   3.541694470030662*^9}, {3.5416945206025543`*^9, 3.541694528178988*^9}, {
   3.541716162936817*^9, 3.541716205002223*^9}, 3.541716236209008*^9, {
   3.5417163036058626`*^9, 3.5417163306854115`*^9}, {3.541718434357339*^9, 
   3.541718525407546*^9}, {3.541718757540824*^9, 3.54171877232967*^9}, {
   3.541719048636473*^9, 3.541719052543697*^9}, {3.5417191691723676`*^9, 
   3.5417194369246817`*^9}, 3.541719467640439*^9, 3.5417195202074456`*^9, {
   3.5417196795125575`*^9, 3.5417198575797424`*^9}, {3.5417199128369026`*^9, 
   3.541719915537057*^9}, {3.541719992915483*^9, 3.5417200775773253`*^9}, {
   3.541720115381488*^9, 3.5417201678664894`*^9}, {3.541720254756459*^9, 
   3.541720273722544*^9}, {3.5417203052793493`*^9, 3.541720341610427*^9}, {
   3.5417205966110125`*^9, 3.5417206115108643`*^9}, {3.541721186740766*^9, 
   3.541721200030526*^9}, {3.5417233621951947`*^9, 3.5417234798909264`*^9}, {
   3.5417235507129774`*^9, 3.54172356264466*^9}, {3.541752899853052*^9, 
   3.5417530736309915`*^9}, {3.541753132366351*^9, 3.5417532368743286`*^9}, 
   3.5417533004569654`*^9, {3.5417533691218925`*^9, 3.541753418257703*^9}, {
   3.541753455855853*^9, 3.5417534605231204`*^9}, {3.5417535315041804`*^9, 
   3.541753612552816*^9}, {3.5417536593244915`*^9, 3.5417537548569555`*^9}, {
   3.5417538705665736`*^9, 3.5417539737684765`*^9}, {3.541754008324453*^9, 
   3.541754085334858*^9}, {3.5417541182527404`*^9, 3.5417541369078074`*^9}, {
   3.5417541693956656`*^9, 3.541754173600906*^9}, {3.5417544926511545`*^9, 
   3.541754592816884*^9}, 3.54175506130768*^9, {3.54175688362191*^9, 
   3.541756948809639*^9}, {3.541757058012885*^9, 3.5417571033364773`*^9}, {
   3.5417572462866535`*^9, 3.5417573035389285`*^9}, {3.541767277236771*^9, 
   3.541767327026619*^9}, {3.541767360448531*^9, 3.541767555914711*^9}, {
   3.541767604476488*^9, 3.5417680048663893`*^9}, {3.541768042149522*^9, 
   3.541768201603642*^9}, {3.5417682492723684`*^9, 3.5417684049102707`*^9}, {
   3.5417959274436545`*^9, 3.541795998227703*^9}, {3.541796057314083*^9, 
   3.5417961327113953`*^9}, 3.5417961632081394`*^9, {3.5417971495745564`*^9, 
   3.54179724632909*^9}, {3.5417972915106745`*^9, 3.541797350434045*^9}, {
   3.5417979938348455`*^9, 3.5417979943208733`*^9}, 3.541798293246971*^9, {
   3.541799514065798*^9, 3.5417995149068456`*^9}, {3.541803134280862*^9, 
   3.5418031699239006`*^9}, {3.541803246575285*^9, 3.541803247208321*^9}, 
   3.541804127401665*^9, {3.5418045541470737`*^9, 3.541804559171361*^9}, {
   3.5418052040252447`*^9, 3.5418052731041956`*^9}, {3.5418060654735165`*^9, 
   3.5418060665555787`*^9}, {3.541806848300292*^9, 3.5418068513374653`*^9}, {
   3.541806913816039*^9, 3.5418069668170705`*^9}, 3.541807307652565*^9, {
   3.5418078121274195`*^9, 3.541807814255541*^9}, {3.5418081040361156`*^9, 
   3.541808105267186*^9}, {3.541808484563881*^9, 3.541808505860099*^9}, {
   3.5419262025502405`*^9, 3.5419262223513737`*^9}, {3.542148515808713*^9, 
   3.5421486144553556`*^9}, {3.5421487787867546`*^9, 
   3.5421487796238027`*^9}, {3.542285563615657*^9, 3.5422855681059136`*^9}, {
   3.8881786622057667`*^9, 3.8881786712695932`*^9}, {3.888178782122508*^9, 
   3.888178825781424*^9}, {3.888178903107573*^9, 3.8881789031995497`*^9}, {
   3.888178963974427*^9, 3.88817898974767*^9}, {3.8881790556863203`*^9, 
   3.888179064333683*^9}, {3.888179114788026*^9, 3.888179128300036*^9}, 
   3.888179180312297*^9, {3.888179846192773*^9, 3.88817985615333*^9}},
 CellLabel->
  "In[790]:=",ExpressionUUID->"c4c442b2-1d6f-4160-bd3a-3ec04a4fd5fc"],

Cell[BoxData[
 TagBox[
  StyleBox[
   DynamicModuleBox[{$CellContext`h1$$ = 0.07, $CellContext`h2$$ = 
    0.07, $CellContext`mu1$$ = 0.0008900000000000002, $CellContext`mu2$$ = 
    0.001526, $CellContext`v1$$ = 
    0, $CellContext`v2$$ = -0.02, $CellContext`vp$$ = 0.5, Typeset`show$$ = 
    True, Typeset`bookmarkList$$ = {}, Typeset`bookmarkMode$$ = "Menu", 
    Typeset`animator$$, Typeset`animvar$$ = 1, Typeset`name$$ = 
    "\"untitled\"", Typeset`specs$$ = {{{
       Hold[$CellContext`mu1$$], 0.001526`4.}, 0.0008900000000000001`2., 
      0.001526`4.}, {{
       Hold[$CellContext`mu2$$], 0.0008900000000000001`2.}, 
      0.0008900000000000001`2., 0.001526`4.}, {{
       Hold[$CellContext`h1$$], 0.07}, 0, 0.07}, {{
       Hold[$CellContext`h2$$], 0.07}, 0, 0.07}, {{
       Hold[$CellContext`v1$$], 0}, -0.05, 0.1}, {{
       Hold[$CellContext`v2$$], -0.02}, -0.1, 0.1}, {{
       Hold[$CellContext`vp$$], 0.5}, -0.5, 0.5}}, Typeset`size$$ = {
    450., {140., 147.}}, Typeset`update$$ = 0, Typeset`initDone$$, 
    Typeset`skipInitDone$$ = False}, 
    DynamicBox[Manipulate`ManipulateBoxes[
     1, StandardForm, 
      "Variables" :> {$CellContext`h1$$ = 0.07, $CellContext`h2$$ = 
        0.07, $CellContext`mu1$$ = 0.001526`4., $CellContext`mu2$$ = 
        0.0008900000000000001`2., $CellContext`v1$$ = 
        0, $CellContext`v2$$ = -0.02, $CellContext`vp$$ = 0.5}, 
      "ControllerVariables" :> {}, 
      "OtherVariables" :> {
       Typeset`show$$, Typeset`bookmarkList$$, Typeset`bookmarkMode$$, 
        Typeset`animator$$, Typeset`animvar$$, Typeset`name$$, 
        Typeset`specs$$, Typeset`size$$, Typeset`update$$, Typeset`initDone$$,
         Typeset`skipInitDone$$}, "Body" :> 
      Module[{$CellContext`f1$, $CellContext`f2$, $CellContext`f3$, \
$CellContext`a1$, $CellContext`a2$, $CellContext`a3$, $CellContext`p$, \
$CellContext`t1$, $CellContext`t2$, $CellContext`t3$, $CellContext`s1$, \
$CellContext`s2$, $CellContext`s3$}, $CellContext`f1$[
           Pattern[$CellContext`y$, 
            Blank[]], 
           Pattern[$CellContext`w$, 
            
            Blank[]]] := $CellContext`uNoPressureGrad[$CellContext`y$, \
$CellContext`mu1$$, $CellContext`mu2$$, $CellContext`h1$$, $CellContext`h2$$, \
$CellContext`v1$$, $CellContext`v2$$]; $CellContext`f2$[
           Pattern[$CellContext`y$, 
            Blank[]], 
           Pattern[$CellContext`w$, 
            Blank[]]] := $CellContext`uNoShear[$CellContext`y$, 
           3 $CellContext`w$ (($CellContext`mu1$$/$CellContext`h1$$ + \
$CellContext`mu2$$/$CellContext`h2$$)/
            2), $CellContext`mu1$$, $CellContext`mu2$$, $CellContext`h1$$, \
$CellContext`h2$$]; $CellContext`f3$[
           Pattern[$CellContext`y$, 
            Blank[]], 
           Pattern[$CellContext`w$, 
            Blank[]]] := $CellContext`uComposite[$CellContext`y$, 
           3 $CellContext`w$ (($CellContext`mu1$$/$CellContext`h1$$ + \
$CellContext`mu2$$/$CellContext`h2$$)/
            2), $CellContext`mu1$$, $CellContext`mu2$$, $CellContext`h1$$, \
$CellContext`h2$$, $CellContext`v1$$, $CellContext`v2$$]; $CellContext`s1$ = \
-0.1; $CellContext`s2$ = 0; $CellContext`s3$ = 0.1; $CellContext`p$ = 
         ParametricPlot[{{$CellContext`s1$ + $CellContext`f1$[$CellContext`r, \
$CellContext`vp$$], $CellContext`r}, {$CellContext`s2$ + \
$CellContext`f2$[$CellContext`r, $CellContext`vp$$], $CellContext`r}, \
{$CellContext`s3$ + $CellContext`f3$[$CellContext`r, $CellContext`vp$$], \
$CellContext`r}}, {$CellContext`r, -$CellContext`h1$$, $CellContext`h2$$}, 
           PlotStyle -> Directive[Black, Thick]]; $CellContext`t1$ = Table[
           
           Arrow[{{$CellContext`s1$, $CellContext`i}, {$CellContext`s1$ + \
$CellContext`f1$[$CellContext`i, $CellContext`vp$$], $CellContext`i}}], \
{$CellContext`i, -$CellContext`h1$$, $CellContext`h2$$, ($CellContext`h2$$ + \
$CellContext`h1$$)/10}]; $CellContext`t2$ = Table[
           
           Arrow[{{$CellContext`s2$, $CellContext`i}, {$CellContext`s2$ + \
$CellContext`f2$[$CellContext`i, $CellContext`vp$$], $CellContext`i}}], \
{$CellContext`i, -$CellContext`h1$$, $CellContext`h2$$, ($CellContext`h2$$ + \
$CellContext`h1$$)/10}]; $CellContext`t3$ = Table[
           
           Arrow[{{$CellContext`s3$, $CellContext`i}, {$CellContext`s3$ + \
$CellContext`f3$[$CellContext`i, $CellContext`vp$$], $CellContext`i}}], \
{$CellContext`i, -$CellContext`h1$$, $CellContext`h2$$, ($CellContext`h2$$ + \
$CellContext`h1$$)/10}]; Show[{$CellContext`p$, 
           Graphics[{
             Arrowheads[
             0.025], $CellContext`t1$, $CellContext`t2$, $CellContext`t3$, \
$CellContext`green, 
             
             Line[{{$CellContext`s1$, -$CellContext`h1$$}, {$CellContext`s1$, \
$CellContext`h2$$}}], $CellContext`red, 
             
             Line[{{$CellContext`s3$, -$CellContext`h1$$}, {$CellContext`s3$, \
$CellContext`h2$$}}]}]}]], 
      "Specifications" :> {{{$CellContext`mu1$$, 0.001526`4.}, 
         0.0008900000000000001`2., 0.001526`4., Appearance -> 
         "Labeled"}, {{$CellContext`mu2$$, 0.0008900000000000001`2.}, 
         0.0008900000000000001`2., 0.001526`4., Appearance -> 
         "Labeled"}, {{$CellContext`h1$$, 0.07}, 0, 0.07, Appearance -> 
         "Labeled"}, {{$CellContext`h2$$, 0.07}, 0, 0.07, Appearance -> 
         "Labeled"}, {{$CellContext`v1$$, 0}, -0.05, 0.1, Appearance -> 
         "Labeled"}, {{$CellContext`v2$$, -0.02}, -0.1, 0.1, Appearance -> 
         "Labeled"}, {{$CellContext`vp$$, 0.5}, -0.5, 0.5, Appearance -> 
         "Labeled"}}, "Options" :> {}, "DefaultOptions" :> {}],
     ImageSizeCache->{505., {280., 287.}},
     SingleEvaluation->True],
    Deinitialization:>None,
    DynamicModuleValues:>{},
    Initialization:>({$CellContext`a1 := Table[
         Plot[$CellContext`uInf[$CellContext`y] - \
$CellContext`uFour[$CellContext`y, 
           0, $CellContext`i], {$CellContext`y, -$CellContext`h, \
$CellContext`h}, PlotStyle -> {Thick}, 
          PlotRange -> {0, 0.04}], {$CellContext`i, 1}], $CellContext`uInf[
         Pattern[$CellContext`y, 
          Blank[]]] := ($CellContext`pG $CellContext`h^2 (
          1 - ($CellContext`y/$CellContext`h)^2))/(
        2 $CellContext`\[Mu]), $CellContext`pG = 
       0.5340000000000001, $CellContext`h := 1, $CellContext`\[Mu] = 
       0.0008900000000000001`2., $CellContext`uFour[
         Pattern[$CellContext`y, 
          Blank[]], 
         Pattern[$CellContext`t, 
          Blank[]], 
         Pattern[$CellContext`m, 
          Blank[]]] := 
       16 $CellContext`pG ($CellContext`h^2/($CellContext`\[Mu] Pi^3)) 
        Sum[(((-1)^$CellContext`n/(2 $CellContext`n + 1)^3) 
           Cos[(2 $CellContext`n + 1) 
             Pi ($CellContext`y/(2 $CellContext`h))])/
          E^(((2 $CellContext`n + 1) (Pi/(
              2 $CellContext`h)))^2 $CellContext`\[Nu] $CellContext`t), \
{$CellContext`n, 0, $CellContext`m}], $CellContext`t := Table[
         Arrow[{{0, $CellContext`i}, {
            $CellContext`x[$CellContext`i], $CellContext`i}}], \
{$CellContext`i, -0.9, 0.9, 0.2}], $CellContext`\[Nu] = 
       8.926350586932`1.9999956570768957*^-7, $CellContext`a2 := Table[
         Plot[$CellContext`uInf[$CellContext`y] - \
$CellContext`uFour[$CellContext`y, 
           0, $CellContext`i], {$CellContext`y, -$CellContext`h, \
$CellContext`h}, PlotStyle -> {Thick}], {$CellContext`i, 5}], $CellContext`p = 
       Graphics[{{{{}, {}, 
            Annotation[{
              Directive[
               Opacity[1.], 
               AbsoluteThickness[1.6], 
               Thickness[Large], 
               GrayLevel[0]], 
              Line[CompressedData["
1:eJwVxXtQ0wUAB3AecWeJCBYo8RIRDth4jZNnvGQayBFDzQs5jIG2DuQgHqGg
YANlcoLJw3yM5W5DIWI8NkgX7hvqEBivDfj9hAmTxwhQmIkSch1Uf3zuY5+U
fviUgZ6eXsB//t89xGJxc1OHzxpscg0dGbL09w6c9+s6hFGPCQt4bmgWezmt
vNOhNybCNJgXBJpzdNLcSx2uMsO6bHjR8DUrHu8jdWhbCOJv4yUgdOav3ptN
Oji5d5Qb8dJwuKS/wftrHU4w8i/q884jd7A4jSVbRvLU+IXNmjKMjGxd7GQu
IafQN1zznAebP9I/8bV+harnJ7fQlu6iLfWJ0faJRcRS/DYYB0VIvOL1eoy9
gNQ3npQMOzHWKvI5CJnHn2N/u/DJdghMJi1vTM2ha3UhrlQjBfeQV+bwZS1u
UZlK/ogM7NPMMy6Rs6jykUcr93ci3/CX3MylaVz5Ll3hFv4YzAuDe4m6KUy1
ZL4psJej+qH2BjflBVoK/IJYq12QapyNf90zCa+5yjuUlW44mIbuP8pTY9uR
iMbZ/l60unJSpmeeoeZ4hersUB808pbdPj4EhMs8q7s9A9BSq2loH4YR3aAk
mTEEs4J6H3d9JcwmC42nY5Sg+uiotSt9UKzXzx0PVqGIvjT04MxTTMza9neG
DsP8qOjHuJ2P4GaecyA7eAStq/Lt3XuloHbn7rCnjKJWrS1bKBahKEL+8ncK
gfFzFj/XeItQ7nk+NM+DgInt582x0424vWtftZ83ge8T61QPQhohnhcGtwUQ
OKhN2Vm63oBZTvE1USSB+WXdHdeMetB7wn35LAKuBuvi1HghjA49Yl8SEDgh
cJXbfSSEGS2PpN8jUEGPJ4bvC2D7KY1q2EBg/VLHWqCFAPsW+aOFrQQUWwuD
jJV8fFP6g/PZTgLPXLeUx5Xx8LQ3dCBVQyAh1lqiTq4CJwqWsVYkXq288895
UgnRfRn3H1sS564PwsSxEipHmV3dHhJcNVsRNncN1noPHTddSEgUKnmMshzN
EqlXox+JprenHebHizFm0x754TESA/67Pay4RdgobeuTxJFYLhgO+CKBDYc1
SUxiAomvdmQLv0Uh0lTiL387SeJIoImBfk8O9EtamKeySFTIsy1ZUVlwets8
a5pLYihG7dnfn4EoZjOrI4/E7W4GaLUsVAc2pX3MJrFrwmZ5oz4J0jrRa9lF
EpSZUf/rCfHQmIuyUi6TcDLO+MmdFYsPihpXzctI+Bt53HuhpWNqaOJx7VUS
/wIpzgpi
               "]], 
              Line[CompressedData["
1:eJwBkQNu/CFib1JlAgAAADgAAAACAAAAOQUvp+DlRD9kaDG0GJrXv3uTRspr
NGA/ZITmn/en17/DIImHnRByPy1ncjIjwde/Z2cqZrb+gj+8LIpXevPXv7kK
e9XCdZM/3Le5oShY2L+gLRXTryKUP7DBYjb8Xti/hlCv0JzPlD+EywvLz2XY
v1SW48t2KZY/K99d9HZz2L/wIUzCKt2YP3wGAkfFjti/Jjkdr5JEnj8cVUrs
YcXYv8mzX0SxiaQ/XPLaNpsy2b814gEegVivP9ws/MsNDdq/I/C7+TrCuT9T
U9hFw6Tbv0mj2c1OWMI/TcI4waRe3b9FTRID9bXHP2xq1hx1EN+/j1/XgDC3
zD8B4gbkilLgv8dOHQ1QEtE/DrNkOvEt4b/tIRV+0prTP9Zcj7i/+uG/dXQr
YY8W1j8xo9imhcPiv9fcEFJmyNg/zQ3klWGd479geTznB0zbPyVRvKylaOS/
wys3isMF3j+9uFbE/0TlvyYJvOikSOA/Efm9A8IS5r8dvGtFBYjhP/nVQ7N7
3Oa/APoCqXLi4j8g14tjS7fnv/dRvV7FJeQ/BbGgO4OD6L/bNF8bJYTlPyqv
dxTRYOm/cFcQESLc5j/hSW1dFjrqvxmU5FgEHeg/VL0vzsME67+uW6Cn83jp
PwlVtD+H4Ou/Vz1/SMi96j95xQXZsq3sv7FebSI6/Os/fdJ14tV27b/4CkMD
uVXtP8EDqOwOUe6/UtE7Nh2Y7j/ADacesBzvvwo7C8G8ne4/jhT1XT0g77/B
pNpLXKPuP1obQ53KI++/MHh5YZuu7j/0KN8b5Srvvw4ft4wZxe4/JkQXGRo5
77/JbDLjFfLuP4p6hxOEVe+/QAgpkA5M7z9W52cIWI7vv/hx+BquUe8/Iu61
R+WR77+v28elTVfvP+/0A4dyle+/Hq9mu4xi7z+IAqAFjZzvv/xVpOYKee8/
uh3YAsKq77+3ox89B6bvPyBUSP0rx++/bg3vx6ar7z/sWpY8ucrvvyZ3vlJG
se8/uWHke0bO77+USl1ohbzvP1JvgPpg1e+/cvGakwPT7z+Girj3lePvvypb
ah6j2O8/UpEGNyPn77/hxDmpQt7vPx+YVHaw6u+/UJjYvoHp7z+4pfD0yvHv
vwgCqEkh7+8/haw+NFj177+/a3fUwPTvP1GzjHPl+O+/dtVGX2D67z8eutqy
cvzvvy4/Fur//+8/6sAo8v//77+DHeXg
               "]]}, "Charting`Private`Tag$336387#1"], {}}}, {}}, {
         DisplayFunction -> Identity, Ticks -> {Automatic, Automatic}, 
          AxesOrigin -> {0, 0}, 
          FrameTicks -> {{Automatic, Automatic}, {Automatic, Automatic}}, 
          GridLines -> {None, None}, DisplayFunction -> Identity, 
          PlotRangePadding -> {{
             Scaled[0.02], 
             Scaled[0.02]}, {
             Scaled[0.05], 
             Scaled[0.05]}}, PlotRangeClipping -> True, ImagePadding -> All, 
          DisplayFunction -> Identity, AspectRatio -> GoldenRatio^(-1), 
          Axes -> {True, True}, AxesLabel -> {None, None}, 
          AxesOrigin -> {0, 0}, DisplayFunction :> Identity, 
          Frame -> {{False, False}, {False, False}}, 
          FrameLabel -> {{None, None}, {None, None}}, 
          FrameTicks -> {{Automatic, Automatic}, {Automatic, Automatic}}, 
          GridLines -> {None, None}, GridLinesStyle -> Directive[
            GrayLevel[0.5, 0.4]], 
          Method -> {
           "DefaultBoundaryStyle" -> Automatic, 
            "DefaultGraphicsInteraction" -> {
             "Version" -> 1.2, "TrackMousePosition" -> {True, False}, 
              "Effects" -> {
               "Highlight" -> {"ratio" -> 2}, 
                "HighlightPoint" -> {"ratio" -> 2}, 
                "Droplines" -> {
                 "freeformCursorMode" -> True, 
                  "placement" -> {"x" -> "All", "y" -> "None"}}}}, 
            "DefaultMeshStyle" -> AbsolutePointSize[6], "ScalingFunctions" -> 
            None, "CoordinatesToolOptions" -> {"DisplayFunction" -> ({
                (Identity[#]& )[
                 Part[#, 1]], 
                (Identity[#]& )[
                 Part[#, 2]]}& ), "CopiedValueFunction" -> ({
                (Identity[#]& )[
                 Part[#, 1]], 
                (Identity[#]& )[
                 Part[#, 2]]}& )}}, 
          PlotRange -> {{-1, 1}, {-0.9999999742194892, 0.}}, 
          PlotRangeClipping -> True, PlotRangePadding -> {{
             Scaled[0.02], 
             Scaled[0.02]}, {
             Scaled[0.02], 
             Scaled[0.02]}}, 
          Ticks -> {Automatic, Automatic}}], $CellContext`uNoPressureGrad[
         Pattern[$CellContext`y, 
          Blank[]], 
         Pattern[$CellContext`mu1, 
          Blank[]], 
         Pattern[$CellContext`mu2, 
          Blank[]], 
         Pattern[$CellContext`h1, 
          Blank[]], 
         Pattern[$CellContext`h2, 
          Blank[]], 
         Pattern[$CellContext`v1, 
          Blank[]], 
         Pattern[$CellContext`v2, 
          Blank[]]] := 
       Module[{$CellContext`u1, $CellContext`u2, $CellContext`a}, \
$CellContext`a = ($CellContext`v2 - $CellContext`v1) \
($CellContext`mu1/($CellContext`h1 $CellContext`mu2 + $CellContext`h2 \
$CellContext`mu1)); $CellContext`u2[
            Pattern[$CellContext`t, 
             
             Blank[]]] = $CellContext`a ($CellContext`t - $CellContext`h2) + \
$CellContext`v2; $CellContext`u1[
            Pattern[$CellContext`t, 
             
             Blank[]]] = $CellContext`a ($CellContext`mu2/$CellContext`mu1) \
($CellContext`t + $CellContext`h1) + $CellContext`v1; Piecewise[{{
             $CellContext`u1[$CellContext`y], $CellContext`y < 0}, {
             $CellContext`u2[$CellContext`y], $CellContext`y > 
             0}}]], $CellContext`mu1$$ = 0.001526`4., $CellContext`mu2$$ = 
       0.0008900000000000001`2., $CellContext`a = {
         Graphics[{{{{{}, {}, 
              Annotation[{
                Directive[
                 Opacity[1.], 
                 AbsoluteThickness[1.6], 
                 FaceForm[
                  Opacity[0.3]], 
                 GrayLevel[0], 
                 Thickness[Large]], 
                Line[CompressedData["
1:eJwVz31Q03UABnCi0pDlkbw53t8s4Hg53kWCY77gxYUJxLqg5K1NuuRlYgrC
QgTuOORNKGEbMEAYLARZ8rLf9o0HcbHRAfIWCJGtkzdvQwwKjxJqPnfPPff5
87FPSo9i6evp6R3T9dXyea9CQRsptSnSSLA8tMGz5FP4/sXaQM+aBF7aU/x6
nVPq6fFLyxKoQjb5TQIKS2tXhSfUEmw/Ca8T11NYzAu20/9FgiiPlw1UE4Wx
ziH7vAEJDB6ca5kXU+gyGHPKvilBltbxLl1GgXP/D9fUAAkmS+cEMb9RMDzn
7uN5qRuub8WOBu1RyDw/uDqUcxd6CzbKXBsZbr/H+eyMWReidmi8bIYMuwz2
SFnVHTRvjXTZJcnwzbhLW6dzB9KCugUFRTK49Hpx8xvFkM4/imK0y9DWXRiW
a9uO16InIsQqGSJsRNc+kYqgoP9pO6aRwXrF8N6KdyuK5Wo/AU0OE7tQJlN5
GyP3Dpkp3OR4nAatNqkZRTupY+0fyTFlXpAToG4Ew6JWFZAhxyLLdVvxrAFX
ijX869VypJydW76uFsAtIj/AuU8O/hcWpFxdC7V22TxrVg7Lz//JjDO5hYML
mQ8LduR4bpBsVWlYjfebJ34OtCAwEaSIivwrsdLPrO8IJqDfX2cMf1CCt51s
j2UlEMQI/d+wPlEIn6/6LDauESSUXjTWnOZi5r/LU/YtBKwOvjrInIPqYFZY
q87vWjz16n2agcicaJlzK8FqcUCBB8nA+LZns6eI4Ev2zBH7xAyo1tc4we0E
C8etZmnMdPz4a+w7n94h0Hi8rmniXkBrf8jZyh4C2v5Jk9FRNpL/dlMY9xKU
L6X2D3DYcPCxPFqjs9HQgViJGRvCrhe2DX26P9yTwlsJLPBauzc6pARWW/0u
iX8lo6zaoUJJCNx/bwjZtkzE1+n7xvcUBHVp8xOhs0yU91l35v1EcKBHWkE5
MiHa9S3VGya4slNzxpsTg7kbyeH6SoKoQuaoI+1jBLYPDr85QmDAn1buOx6J
XfVV0MYI1ksEXF7caZg6VzWU6awyjf23ZPsUPNLF3IPjBC2Nh7Nzb55E/O5c
kNFDgti+7y7FKxkYpPtJjScJKh7YzoWzj2I+4cOab3UOm6+bcq/zw2Zb8mXT
KYKXz+jjRlPecPCv8jWfJpj2dS7pzHFFEFdsXKtzaIJDfuaqE6IVg5uHZwji
zAOfXxTZ4ILho0mezv5p7o/3uMZweyJUben8g9h3afH8fvwPgRAFDA==
                 "]], 
                Line[CompressedData["
1:eJwVzX1Q03UcB3DWJRDK8oAj2BKEdHkdLeXBNLVPMyC4znTAGJjhGkdzjRoP
d1LNIi9AEYFdg7u1CBCChgjsK6Ejf7/vh4eQ4sGLhyHriA4U5cAjBCcNBfr1
x/ve79df7yClNi7tGRcXl31c/m/PmZTe320MXm0IvzuhcoOL+YPZ2jEGu7Wu
NFgUDMdfMvlV3GbQbYqfmX8gHFZSwpQOO4MN/oa+vdFRsHsszfHTJIOrEbKc
0n4ZmLvfynVy/qw7njlYnAjbifC5d/9m0HEsjjf3nhy2Xhx6cYHzouZoUeRw
EixKDkWGTzE4cym2yjn+PjQ3+Rg67jA461p1Z8+yAkLyu3fbZxkczTJsrnBR
wa7woHSPZQZlO+mr1uJMGK7vj9rqyuKCJmzlvP0MFJtUsc0CFisWD29MFOWB
oDdmaV7M4qPb2JZccgGS3P3XByQsynVnEy776MHc92dYdCKLikTTXxhggMuX
igaUahYFR3zzfRzl8BU56xF4hkWx4GmUkDWC8rA6K1vP/YUm+/7S+T0478Mh
TS2LJ1X+m4zfVkI13z30yXUWabaZ5/ZHNazGYqG4n8W6Tkfp1MEaENEbBbxJ
FttXV14pr6kFZWtDU/oSi7X2tsEyUR1I2YLXdZsopkXXbbTq60EaI5sPElBc
Szq2P9DfDMFb1JGnxBS7Ei25qaYGqL+rcYmTUDw5LZH18hrhjTcV90ZkFEe8
S0Nzzl2Br6+8/ZrzFMXAEc+q6OUmMManb6M6isYvJX7/yFugS1cQIdRTfPSR
cSDzEwtUWkstwlqK7mPm0SdBBPaW6AozOP/rPeQM2kngVqpK2cP5vtQZELOL
wAYffLQ/Urw5GKsuExP4MG0hp6uOYl7P3FrIAQI7vI6A2kyR1xbyckoCgUaN
x61rTRRXDZbPOwoIREoe129upjg3NF55r5DAhO90roKz/Xner1uKCXh2te/x
aKFoLZLykw0EPvVTl39goXj6m6Wah1UEQnt6TzzbSnE5K3wguJ1An6k1Ipnz
tOXEwxiGQGpGFb+Z8/BCnq8WCZQJczrkP1O8+rFNcaOHwONM0Y7GNooZytOO
+GECJe94rW1wVlRXCr6wERBtW7clXKN4dPImVI8TkP9mO7fOWXz8hQsPJgks
/tCpiL9OMcAILV7TBM5nN+03c/YcU43umyGwPfY7rzXOT731zpRZAu0B+fNS
K8UHUiu3CPwHaIzcaQ==
                 "]]}, "Charting`Private`Tag$375975#1"], 
              Annotation[{
                Directive[
                 Opacity[1.], 
                 AbsoluteThickness[1.6], 
                 FaceForm[
                  Opacity[0.3]], 
                 GrayLevel[0], 
                 Thickness[Large]], 
                Line[CompressedData["
1:eJw11nk4VdsbB3BDmSshiRIiQyUihVhCyq0kJEUiZAiZSuYzOY4McQg3QuZz
duKEBskbDcjQ4VLJEGWI5N4KIem3+uO3n2c/+/n8tdez3nd936V47qKNBx8P
D08Tfv98//9MHX8gH/uZAxpTvBfyRiQR+8en+upPHEjeudDe9WEL8rq54ezI
KAfEH4yn6b/XQSOfwvPMhjgw/fzZZsG3Zqg/xkiBr4cD9cPRewpabFF7eaNi
TD0HVGS/n3972w3dEW5XDkvlQNPVvufmwcEosGFYw28PB1KOJI5nNlKRqPMO
nZ0hlbDH6xRboTQRBXs+GW+MqICexEdJBpeZqFA10MlK+g505N+bJt3NQL/2
n29JYt4GNcVOY32fGyi6Q720XI2ANqWszzxauUi9RjuKnM+CtAGl2A/cfFRa
SbOI3FwGzUdC+yKsCtBR+RLSyQclwPXze/KltRBtGhOtGttVDIOEwOnStcVI
SsHE3r6pEPTVBwVJuiVo0B+mps4VQKhQRP5O61LUtZ4asWcoHzwq2tXmDMpQ
v4fG3LPpXMi/VmHbKcNCXtZvRilD2WAVdqF3Ro6FHjppraN2Z8MUpcJWejML
iXjHm1Obs2Fu9pWKrQoLEWTDQmplNpg4BplUa7PQ9N08FxopG6qVjI5J/cVC
Ieu8+mIVskG8eLLrcBgLkd/NcxkuN6A0tDgoq5OFbrjL1iUPZYGjovRr0W4W
ihxZmD7TkwV5JvuCol6zkLN7r+KOl1nw5n2ZnWMfCym5Z8W1VmXBz3z+Rt5R
FmK7SdsKxWWBiiYYL/xgodpzEpPkHVnAG2L1hLmRjd65iMhcCs+EW6/8DNrl
2ahuaOIv84uZ0Jlv+mWlIhvlurRESbpnwvtCsV+BKmx0zoXxkXM0E6q2Kz3X
1WSjybMCFdMKmWBgafvDHbHRojOfhVdTBvxT3v7xogsbyZ1ZDHaUygAhqe9d
OefYqON3tsVeoQyojCazm9zZiFJgtGHd0nVwc+2VWO/NRp/GSfUdH6+DsdOl
5pxANroXJChsWnUduKrOTWYUNrJmSOWq2VwHD+nvkjwFbESv0myevZYOmqL6
4pOFbKRvz73RRU0HnxWfZjqL2WhqPtCvIjQdTFeQQ7NZbGRrXCPhfTYdvPXz
XNdx2EihxfBMv2Y6pIclthQBGz0aPPStsT0NnI5rfNLuY6P/hN02poimQUbm
fFddPxvpKiR8M+RJgxHlHZ8PDLJRmF5V8/gMExqlWgpthtmIz43/EhpkAs2y
bbf9OBtJ1RW2T1cyYbMgz8DK73h9/iPRR+2ZUNm1ca+gMIEoXR7DIrdSoeBn
1auTIgR68Snp/r3rqcC+wEkvESWQ6O+apHNXU2FJ4X2J8WoCpW8TMKgNToWi
oZVTDpIEKqGVML0tUkGsmrSwexOBWvXGzZo/p4AesU2RuZNAUtleJbF6KVDb
P5gKWgTS6LbZiDRSIC/oweCkNoFMVhkx5zelQHzroJihLoF8Y9ZGX1iZAsPa
87UNewlEbwohCsquAYt7xtlrP4FGHGREDEaSQe9QaGqwKYHEW6dmb7cmg4Ly
/fxIMwLtM2oY3lyVDDLCbFvGAQKlKfo8XElJhsQ4J1G6JYFMJx95dW5OhmT7
mQbZ4wTKjzjb5OWYBApSIff5bQjU9kWnqs80CST1ZOMnsefPCuVZaSSBTGnv
E44dgY6Zcy7rLiQCYaRC2epAoGUx/q08mYkwuu/fwyxnAjnlltAyuxIg2qSH
P+AsgRjiEQEitQlwpWw4U9eFQNWUY05RtxIgsdjP7r4r3l/PeR23gAQwsLPZ
XOhOoNqdf33UXJ0At6lWS5I+BNrQ8GX/C8urEPm2L7IGmzkyl0NoXwV3Pbsv
dhcIJCLEM5+y4SqQVgnkJvkSaMlK4o7jRDyMqvkbj/kTaKhfT/YrIx4iX9ga
h14k0Ckek0uvA+JB009ZUyCAQF1bLLmPHOKht4c+sCmQQM98HOl0tXhwkbKO
0A0mUNl8zDe5ZgY0LCYtVmMrbow/ylvJAIPJe946IQS6gZhlY5kMuDLSsl7j
EoES6UXOHE8GKFnM3F2+TKAAqZaXFoIMUKs/PWoeTqA9WhKFgRZxIKNn6VaE
XWkrt2yvGQfK95U6eSMIpBaqfGqfdBzQujMi72HL1uutERyjQ2AkVUIwCu/3
YceInFg6bDd6ucYeO/Si+2uyHx2WBZaWCrD/Y/ppe56gw9cahVK9aAJ96I0Z
11ahAy/Z3+BADO5vzyLbpmexQL266j4VGyWU37l9OxYUbmZueYL94M49YWZ6
LBQM+LbtIhGIPdsMTu6xwBB9IOSNvWVDl6zpkViIM53WvYmds6/vkqpuLHS3
yp35jZ1M/bLtG38syMtLntpBJpBg6Rz9zWcaUMNmzU9hk17+Hq77hwYZhyOm
2NhBayWy4gppYNEoX8bF/qwr9903gQZrTMttZ7DdHZStbIJpMOWUEL6bQqAT
eXorNpnRwMd3SfQ49n+sI+fzt9PA0qKn0wc7sfpc8xZpGqROrmujYKvCFY3S
31TYd6p+MQu7sSU5UWOCCkeYHWfKsZ27i6bLu6jQeN1iFrAXBmutteuokOO2
tYGLnT7BvVtdTIV3P/0a3mNrzYxJ7b1GhRjnTXNT2G3LS5cfXaECPUH37Dy2
p7Bkr/E5KsxQqpZ4qQTik1I3bDxMhWfmNzqEsXPl0c0Du6mwxP3UvQbbQP3E
72Z5KmSp5q2Rwu7RueB6RAj70ONoaewAY/LTV18p8EvHTGk9tphlpoptHwWa
JrQW12GX2ZbHvX5GgRlvuoAktpnz04lTdyjAqDY7uBp70Kv38EAmBUgtXnWC
2OHB/5a7kCkwWDbr8Ruvd130SvERHwrk20yazWJXMuSCPO0o8PyFhf0E9pE0
7e5JIwpYrxS92Yc9fvOgnr8qBUxW75Fpw6aUncn6Kk6BjOGXTbXY8lXBiyGL
ZLCOeUGUYj98HO80/5EM/uPqz5jYds159RHtZPi6YVY88k/9umoUft8jQ5+0
GtMNO2GglULJJ8Pbi8+1d/yp17cfFvHBZJhu3Wm95k+9fq1iiZ0hg8833sJ/
cX8sCCqLpliQ4VruwOifftLaZP0qYwMZ9JXHe2Kx21TPa8vyk+FQiMOiM7bn
rsi0m1MkSA8OGhLFzj1YdrIISMBVkit4j/vXwKb+oSqLBEE527I42D1O3XIE
kwQfp6mK1thiQTxDHA8SkMQlWKH4vITlOHiBKAlGJBZWGWGrWw2kx07GAPH+
YCkPtoub8KnExzHg9XZjKAWfx44k1+G/3WLglkVRQgA+r6wPa79VV0TDtpyW
NFXsoR9G9x5RokGmzp7bH0kg6VU+4Y0nokHZsWxsPzZtTyMf92cUfF+nzpjD
+eGSGCT5+WAU9MjNP83E7t9eaq+2PgosomM/6mE7tPf97TEWCVyHvnb/MAJZ
rz6gMESLhET34GPPQ/H8SVm/o6chAgatdrNOYNdpHQmQSI0AuF4z9hHn195O
UtUxlwjQ0P8qtojzTUtiUv/lcjiUvLYTWIXzTzG9zgIMw8GrWDg6Eedjru7X
+CWRcKjlRvYKY8v2qLTrvwuDFUa5hss4XyWkr9lWXwmD/b7tt9txHvNlubqw
aq6Ak8qAqSDO8w/ZAuFpO0NhuS50zh3nvfM+w8fc5cuwk8NNeuJNoHf9F3lW
d1wGg4rHnoFeOL839dIZvpdhnpfW/NCDQE/ziLQo1iWQ5Gs0GsXzp6jQutxz
Swh0+PL/KMHzzIO4MWS4PhA0ZxSCuHj+bZWd0K6ZCAAPuqX0vDXub8YeqmZd
APi0Purdf4xA3ue7VRRdA6DmjfJROIz/b7rxtZj9RbBZEBpzNcd5pcn/+VaU
L9x12TB0AM9vMcFOqba28+BrlhWpq4PzcMTvfn3geeDVVjJV3IXndaPIaY70
eajbfvLQ7J/7QZR5XoaLB1wqObA/bhuBNn6/r+464wZTBbqjNkoE2vE+13hO
zhX4npyeZeD7R45/L9fktT2kUacV3n5gI2ah7ki/pyD8DyuNTxY=
                 "]], 
                Line[CompressedData["
1:eJwtjn001XcAh10Uwix0Q+uW3rwcaeQ0Ip9QTtaa6/UmL/dmM6nkIq+5zJlb
5u6WyLqz4nq54ZeNb2Z5yx2Wakklr01erizkKC/32L0Ta+fsc85znj+efz6m
oVHeYaoqKir73/Ofd7AFy0EjFLqq7F4Ohmtg3DBCR9lKIbHNp8lJ6I85qymT
sRYKcqY3bepzFjJD+3OJlMLbU56CA11HQca+lKORwniRR6GiPxAL+5wTttyi
MLG6cMxmngNX77m45QIK3TG52tdUwrGgYLP14yj4bW/eWSeMhqPJvLQ9lgJX
OcZ91RCNROnC2uQYClmPtX6hT0SjV+SW9SKKQnOS39441xgwLuh1XD1Jwbxz
2t12MQYvvThXBtgUluI3cCo5Z3FEPP5JjgeF4vuJOeLdCeBvTvujz5jCzKnd
i5kDKVDqfa9mZkShrZbZmL6GB+s1z5fP0imIViLTkh156GNMOuoaUHDLLdc4
fZ2HbQ+2PrHWed8bNhp5Hk9Ftan28T3LFXDR0nRYN5mGHFnRNtZoBT71OXOH
mZKOr0ve2A6XVODaW9eVQUEGEoPTLRo/qsBCn7Q24GIWgs4Z0CKF5WCdS/el
DLOhFPzMshkuA8c//4WUkQtPv5vbhi3LYHKEzjeU58F+RUBlRtyAtcnSwQ13
RPjh3va6XXwJZmwD6A0tP6Js/1z37YJSsMONV4lyCnD7mFwou1yC5thymsYT
MVZU9b3V+cWQtMgvjToV4766uIecLkK9ctEyr7gE9dPNeyYsxCgZqH10ZYcE
I4Mn2rb2XkeYu2SlJvsGSuM67R8u5ePdUabDJuNyOFdH6y5qidDqX532RX4F
DrgOMnab5YEtc/G7R7uJFTVJJWfkMp4ZXLJNuFAJZmDfzMVAITY90y10n/8J
QXYNblrd5yHiuRi9YVXhxMyqTvpEKha+EnVER1Yjdt5S7aGIC83e8u5/TAla
MzRoNSwu/jZ4qjDdTuARcOFcNp2LV14KxiFzAubV0Q6WeRTaH3lEXLEmWF/Z
Y/ZgYyQy7k69s3Ik+FN1Mb9BPQK0WiuzEF+CX8MY8f2tHChzq5N+O09g7FWe
r+HMwdTT/oK/viVgnJ/lusWwMaBH+11HSKAT+1y6MyQYdQKvDwJyCXhjh5q0
7AIQ/81c8WwhQRNDtGu4j4n5GLuOLfXv//IUrg5XPSGrDpo91ESQ0juozUk9
gq6ZDHqUlEDz2exn5LAHbp3s4TTeJXis9P0uVLYf3NB4uU8XweTqIZuki/vA
EReYJPcQqB12X8dnOcBzqB3ifgLZiZq9pa8+hvWx9VnTQwSefK7iTLAFGCJU
6csIJGLZ2oNTm6HbG95tP06wxymZl/f6QywZZCtCJghU/t+0Vx2D/5rgX9dV
7rk=
                 "]]}, "Charting`Private`Tag$375975#2"], 
              Annotation[{
                Directive[
                 Opacity[1.], 
                 AbsoluteThickness[1.6], 
                 FaceForm[
                  Opacity[0.3]], 
                 GrayLevel[0], 
                 Thickness[Large]], 
                Line[CompressedData["
1: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
                 "]], 
                Line[CompressedData["
1:eJwVjn1MzHEAhytybZGpdvTiUlZkuVnOhuijdnKMpavTi6bG0hR6sQolM6dS
ruKKE3qVpaT75vfLdam7H3mJNL1cOlN0S7W0QoW7juSPZ89fz/Y4H44TRpmZ
mJhw5/nv/r9XZt4MM+iS84Y+RrOw4G/kbEgzA5Fry3qFJAHC3MBjrDsMJmI3
/srSpoFHl/lsTWJw+5vv3MccMWIlmhjhbgbT71V0aG42+NOdYVaODIJTLwRV
2+aD//6GxndYjcgDRf0qjhR2xenGkjo17PexL9nOFOK+etZ7PEkNrr1xp0Oz
DP4xJztqPNWY8AxlK5lbyIs9/nn1JxUiou3MZdeKMdnpKnDnq9ByqsqU9a4U
jWNpXRnVLahkZvIGt5UjMWXXjWzLFjQafq0rLK8A9+doqVLUjAot/bbArRIO
tRnjOyqeIMqvcu5R/j3szVrG5vc14U/I/i1OdlVwkbrVC1hNeHpAfv5I0X2s
ikg31HopEaHzEb00rYFhkzElRdSIbps8z5TMB1iZ+HqwJkkBp+4lJX5TtVjj
5u398+pjyM75rJgMrkMIWxJz82oDpo/K2hNOyNHh3ut59yYNi96qnllngj0r
X2m3F9L4bdOpd3YlMPDFfb35NEYC9BzBWoLJDQf7F2XRePF297ECLgEv9eLC
iGQa4udjfzy8CNy0za8mhTRMaY81h4IIGpTatVJLGgap/Iw6g+AMz7ptOYvG
WGdf8fBlgnidLXPLjIZ2qWnrYgnB1IfTijI9BUVOgFWolCDIu6m1coRC8sUf
5d9LCM51uAfmPqMwlchrd2kkiMoxj7dQUdDJw78LnhCkp9UMXVBS6JoQs+NU
BH6zIk0ioVAfo4lsej7/G+vas7eEQvzh5JnALoLaNmEdU0QhsrTY/qyGIDR8
j27TdQr+Ay9Q2jffc2T+jhIK3LDl2eMDBJn7Ji7nZlHgyFBnrSMwyq0cTcQU
lvRG92z+QlAh0JsnnKdgtMnXHxolSLV9uGvwLIXxAAXn0leCf/BSdlc=
                 "]]}, "Charting`Private`Tag$375975#3"], {}}}, {}}, {
            Arrowheads[0.015], {
             Arrow[{{-0.1, -0.07}, {-0.1, -0.07}}], 
             
             Arrow[{{-0.1, -0.05600000000000001}, {-0.10252649006622518`, \
-0.05600000000000001}}], 
             Arrow[{{-0.1, -0.042}, {-0.10505298013245033`, -0.042}}], 
             
             Arrow[{{-0.1, -0.027999999999999997`}, {-0.1075794701986755, \
-0.027999999999999997`}}], 
             
             Arrow[{{-0.1, -0.013999999999999999`}, {-0.11010596026490067`, \
-0.013999999999999999`}}], 
             Arrow[{{-0.1, 0.}, {-0.1, 0.}}], 
             
             Arrow[{{-0.1, 0.014000000000000012`}, {-0.11410596026490066`, 
              0.014000000000000012`}}], 
             
             Arrow[{{-0.1, 0.02800000000000001}, {-0.11557947019867551`, 
              0.02800000000000001}}], 
             
             Arrow[{{-0.1, 0.04200000000000001}, {-0.11705298013245033`, 
              0.04200000000000001}}], 
             
             Arrow[{{-0.1, 0.05600000000000002}, {-0.11852649006622518`, 
              0.05600000000000002}}], 
             Arrow[{{-0.1, 0.07}, {-0.12000000000000001`, 0.07}}]}, {
             Arrow[{{0, -0.07}, {0., -0.07}}], 
             
             Arrow[{{0, -0.05600000000000001}, {
               0.021901348314606738`, -0.05600000000000001}}], 
             Arrow[{{0, -0.042}, {0.03810202247191012, -0.042}}], 
             
             Arrow[{{0, -0.027999999999999997`}, {
               0.04860202247191013, -0.027999999999999997`}}], 
             
             Arrow[{{0, -0.013999999999999999`}, {
               0.053401348314606745`, -0.013999999999999999`}}], 
             Arrow[{{0, 0.}, {0.05250000000000001, 0.}}], 
             
             Arrow[{{0, 0.014000000000000012`}, {0.04864954128440368, 
               0.014000000000000012`}}], 
             
             Arrow[{{0, 0.02800000000000001}, {0.04147431192660551, 
               0.02800000000000001}}], 
             
             Arrow[{{0, 0.04200000000000001}, {0.03097431192660551, 
               0.04200000000000001}}], 
             
             Arrow[{{0, 0.05600000000000002}, {0.01714954128440365, 
               0.05600000000000002}}], 
             Arrow[{{0, 0.07}, {0., 0.07}}]}, {
             Arrow[{{0.1, -0.07}, {0.1, -0.07}}], 
             
             Arrow[{{0.1, -0.05600000000000001}, {
              0.11937485824838158`, -0.05600000000000001}}], 
             Arrow[{{0.1, -0.042}, {0.1330490423394598, -0.042}}], 
             Arrow[{{0.1, -0.027999999999999997`}, {
              0.14102255227323462`, -0.027999999999999997`}}], 
             
             Arrow[{{0.1, -0.013999999999999999`}, {
              0.1432953880497061, -0.013999999999999999`}}], 
             Arrow[{{0.1, 0.}, {0.13986754966887419`, 0.}}], 
             
             Arrow[{{0.1, 0.014000000000000012`}, {0.13454358101950303`, 
              0.014000000000000012`}}], 
             
             Arrow[{{0.1, 0.02800000000000001}, {0.12589484172793003`, 
              0.02800000000000001}}], 
             
             Arrow[{{0.1, 0.04200000000000001}, {0.11392133179415517`, 
              0.04200000000000001}}], 
             
             Arrow[{{0.1, 0.05600000000000002}, {0.09862305121817849, 
              0.05600000000000002}}], 
             Arrow[{{0.1, 0.07}, {0.08, 0.07}}]}, 
            RGBColor[0, 1, 0], 
            Line[{{-0.1, -0.07}, {-0.1, 0.07}}], 
            RGBColor[1, 0, 0], 
            Line[{{0.1, -0.07}, {0.1, 0.07}}]}}, {
          DisplayFunction -> Identity, PlotRangePadding -> {{
              Scaled[0.05], 
              Scaled[0.05]}, {
              Scaled[0.05], 
              Scaled[0.05]}}, PlotRangeClipping -> True, ImagePadding -> All, 
           DisplayFunction -> Identity, Axes -> {True, True}, 
           AxesLabel -> {None, None}, AxesOrigin -> {0, 0}, DisplayFunction :> 
           Identity, FrameLabel -> {{None, None}, {None, None}}, 
           FrameTicks -> {{Automatic, Automatic}, {Automatic, Automatic}}, 
           GridLinesStyle -> Directive[
             GrayLevel[0.5, 0.4]], 
           Method -> {
            "DefaultGraphicsInteraction" -> {
              "Version" -> 1.2, "TrackMousePosition" -> {True, False}, 
               "Effects" -> {
                "Highlight" -> {"ratio" -> 2}, 
                 "HighlightPoint" -> {"ratio" -> 2}, 
                 "Droplines" -> {
                  "freeformCursorMode" -> True, 
                   "placement" -> {"x" -> "All", "y" -> "None"}}}}, 
             "ScalingFunctions" -> None}, 
           PlotRange -> {{-0.12000000000000001`, 
            0.14332463899970493`}, {-0.07, 0.07}}, PlotRangeClipping -> True, 
           PlotRangePadding -> {
             Scaled[0.02], 
             Scaled[0.02]}, Ticks -> {Automatic, Automatic}}], 
         Graphics[{{{{{}, {}, 
              Annotation[{
                Directive[
                 Opacity[1.], 
                 AbsoluteThickness[1.6], 
                 FaceForm[
                  Opacity[0.3]], 
                 GrayLevel[0], 
                 Thickness[Large]], 
                Line[CompressedData["
1:eJwVz31Q03UABnCi0pDlkbw53t8s4Hg53kWCY77gxYUJxLqg5K1NuuRlYgrC
QgTuOORNKGEbMEAYLARZ8rLf9o0HcbHRAfIWCJGtkzdvQwwKjxJqPnfPPff5
87FPSo9i6evp6R3T9dXyea9CQRsptSnSSLA8tMGz5FP4/sXaQM+aBF7aU/x6
nVPq6fFLyxKoQjb5TQIKS2tXhSfUEmw/Ca8T11NYzAu20/9FgiiPlw1UE4Wx
ziH7vAEJDB6ca5kXU+gyGHPKvilBltbxLl1GgXP/D9fUAAkmS+cEMb9RMDzn
7uN5qRuub8WOBu1RyDw/uDqUcxd6CzbKXBsZbr/H+eyMWReidmi8bIYMuwz2
SFnVHTRvjXTZJcnwzbhLW6dzB9KCugUFRTK49Hpx8xvFkM4/imK0y9DWXRiW
a9uO16InIsQqGSJsRNc+kYqgoP9pO6aRwXrF8N6KdyuK5Wo/AU0OE7tQJlN5
GyP3Dpkp3OR4nAatNqkZRTupY+0fyTFlXpAToG4Ew6JWFZAhxyLLdVvxrAFX
ijX869VypJydW76uFsAtIj/AuU8O/hcWpFxdC7V22TxrVg7Lz//JjDO5hYML
mQ8LduR4bpBsVWlYjfebJ34OtCAwEaSIivwrsdLPrO8IJqDfX2cMf1CCt51s
j2UlEMQI/d+wPlEIn6/6LDauESSUXjTWnOZi5r/LU/YtBKwOvjrInIPqYFZY
q87vWjz16n2agcicaJlzK8FqcUCBB8nA+LZns6eI4Ev2zBH7xAyo1tc4we0E
C8etZmnMdPz4a+w7n94h0Hi8rmniXkBrf8jZyh4C2v5Jk9FRNpL/dlMY9xKU
L6X2D3DYcPCxPFqjs9HQgViJGRvCrhe2DX26P9yTwlsJLPBauzc6pARWW/0u
iX8lo6zaoUJJCNx/bwjZtkzE1+n7xvcUBHVp8xOhs0yU91l35v1EcKBHWkE5
MiHa9S3VGya4slNzxpsTg7kbyeH6SoKoQuaoI+1jBLYPDr85QmDAn1buOx6J
XfVV0MYI1ksEXF7caZg6VzWU6awyjf23ZPsUPNLF3IPjBC2Nh7Nzb55E/O5c
kNFDgti+7y7FKxkYpPtJjScJKh7YzoWzj2I+4cOab3UOm6+bcq/zw2Zb8mXT
KYKXz+jjRlPecPCv8jWfJpj2dS7pzHFFEFdsXKtzaIJDfuaqE6IVg5uHZwji
zAOfXxTZ4ILho0mezv5p7o/3uMZweyJUben8g9h3afH8fvwPgRAFDA==
                 "]], 
                Line[CompressedData["
1:eJwVzX1Q03UcB3DWJRDK8oAj2BKEdHkdLeXBNLVPMyC4znTAGJjhGkdzjRoP
d1LNIi9AEYFdg7u1CBCChgjsK6Ejf7/vh4eQ4sGLhyHriA4U5cAjBCcNBfr1
x/ve79df7yClNi7tGRcXl31c/m/PmZTe320MXm0IvzuhcoOL+YPZ2jEGu7Wu
NFgUDMdfMvlV3GbQbYqfmX8gHFZSwpQOO4MN/oa+vdFRsHsszfHTJIOrEbKc
0n4ZmLvfynVy/qw7njlYnAjbifC5d/9m0HEsjjf3nhy2Xhx6cYHzouZoUeRw
EixKDkWGTzE4cym2yjn+PjQ3+Rg67jA461p1Z8+yAkLyu3fbZxkczTJsrnBR
wa7woHSPZQZlO+mr1uJMGK7vj9rqyuKCJmzlvP0MFJtUsc0CFisWD29MFOWB
oDdmaV7M4qPb2JZccgGS3P3XByQsynVnEy776MHc92dYdCKLikTTXxhggMuX
igaUahYFR3zzfRzl8BU56xF4hkWx4GmUkDWC8rA6K1vP/YUm+/7S+T0478Mh
TS2LJ1X+m4zfVkI13z30yXUWabaZ5/ZHNazGYqG4n8W6Tkfp1MEaENEbBbxJ
FttXV14pr6kFZWtDU/oSi7X2tsEyUR1I2YLXdZsopkXXbbTq60EaI5sPElBc
Szq2P9DfDMFb1JGnxBS7Ei25qaYGqL+rcYmTUDw5LZH18hrhjTcV90ZkFEe8
S0Nzzl2Br6+8/ZrzFMXAEc+q6OUmMManb6M6isYvJX7/yFugS1cQIdRTfPSR
cSDzEwtUWkstwlqK7mPm0SdBBPaW6AozOP/rPeQM2kngVqpK2cP5vtQZELOL
wAYffLQ/Urw5GKsuExP4MG0hp6uOYl7P3FrIAQI7vI6A2kyR1xbyckoCgUaN
x61rTRRXDZbPOwoIREoe129upjg3NF55r5DAhO90roKz/Xner1uKCXh2te/x
aKFoLZLykw0EPvVTl39goXj6m6Wah1UEQnt6TzzbSnE5K3wguJ1An6k1Ipnz
tOXEwxiGQGpGFb+Z8/BCnq8WCZQJczrkP1O8+rFNcaOHwONM0Y7GNooZytOO
+GECJe94rW1wVlRXCr6wERBtW7clXKN4dPImVI8TkP9mO7fOWXz8hQsPJgks
/tCpiL9OMcAILV7TBM5nN+03c/YcU43umyGwPfY7rzXOT731zpRZAu0B+fNS
K8UHUiu3CPwHaIzcaQ==
                 "]]}, "Charting`Private`Tag$376697#1"], 
              Annotation[{
                Directive[
                 Opacity[1.], 
                 AbsoluteThickness[1.6], 
                 FaceForm[
                  Opacity[0.3]], 
                 GrayLevel[0], 
                 Thickness[Large]], 
                Line[CompressedData["
1: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
                 "]], 
                Line[CompressedData["
1:eJwtiXkwnAcAR5eZ1lWpqUQTxgriGN1oiWiFzs8R97mWFRGsKCqoIyFxxShp
HVHKapesI8t+n4gOXxq6CCqCJBPEGVKVhqgj6oh7Ec10+mbevD+e+vlI9yBJ
Go1m/s7/utrox0wnEdNp9Go8RAp2b/54XHyBxJUO1j2zHDZYM9d/I0JJrLu5
S8y7eMGY7RvQHEJiOcw1+/TAGZjaijaeBZKYvmlftj3qA+M4tu6ED4nZ98um
DFY5EEsZkXRHEkMxBXJ8WggaxBcVo7RJeGq1HhflRGOtYW3GWYtElHgqaqYp
Gpk6DX16x0hk9cncVZqNRrPWzuhLdRKt8Z6nYi1jYPJTzsBpVRK6vQs2hpsx
qLIdCphQJLEbp8Kp4VyC1cLssj+NhODhlfzyE5cRa/ZpP3+EwGLYic2MsSTs
OGtqagwT6Kh3a06VTcbcw7d+xCAB3n5ESoJpMnbFYdzbTwlYFVRJhZckY99V
baPq8bvfpHrYNeAq4lvmuJGtBCxkpE0OzaXAnJA3ZwgJOLC+aXFLSoVC7Y9O
gZEE+MuW++PZ6XhkwHyguS3E2rO2eu8fsrAkt8JpSxTCKzHVo/pgHhKaRAzH
qUpw2MV/ttELUDl/yDzNuhLKzkrXDq4XgplyqtCLXwF95V1rlRYehAfU2zOH
BFg09FZqar+B/C3W879kBfAPOfIeL78UnFpjM0LtJlovVklIPS1H2f2+7kCj
cgjb13NfmgngKz168vOrpWgUb+oVCipwmt7rz7bno2KsvoerLYRV+46Dv0ox
gmyE+7/mEVgi7vYblPyMvTNuJmpHqmCc0PGJSLoQ99l1KYHFtyBupDU7fZsP
/0kLz26J23jbdVT/ll0uBhVzDS9/X4PpyF0F1bpMqA3Kl9ms/oL+fyxVMrbT
wEu2OLzkVYviz6zXFOUSsRbMexIdUQdZvWzrQLkISI9UDe2oU2Dp9ljEF4Vj
S7F/W12Lgvk4YzRJJxwzzG26nS6F4K+sB52swtDVYx/K1afA3XguqZAQivTO
+T2GKYUUDZ6t5qsgSNQzdPw8KOwZ1PeKPXwhLqiL//07Cgs5hEtO+DnM94+W
/p1J4aznoOROmg/GPpR48EEOhepjL6S+vuMNUTbzgHcBBfnutvQMeTbi0t4I
VsooPDrpUNAV74zVGKMnGo0UZFyKld0rHTFZd27F7h6FGtMAWW6vPQYW05Ui
2ygQPJamqYYN7lwY5jR3UnjdwI1lXP8SUefj1lkDFORsBHLV4ybglJcqJwxT
EKSWxHAZxnCd6EL5KIWszcZg/8Lj0D/7cdbCBIXKS5bK7QbaoPNQ+9EkhaNF
Ti+2ilQhPxIy9MU0Bb+5whvWfHnsKuZt+81SoP3PAlNEv/aawr9O2ewJ
                 "]]}, "Charting`Private`Tag$376697#2"], 
              Annotation[{
                Directive[
                 Opacity[1.], 
                 AbsoluteThickness[1.6], 
                 FaceForm[
                  Opacity[0.3]], 
                 GrayLevel[0], 
                 Thickness[Large]], 
                Line[CompressedData["
1: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
tW/qHQ==
                 "]], 
                Line[CompressedData["
1:eJwVjn0s1HEAh49VGh0tN6FiboU1aZOZhn1SC72T9yhyQ6UXb4uKlBxRh07m
hnkdnV7vy/eX47iXFk2jvPTiJMtNL15S56XQi/THs+e/Z49VxLnDkbosFst+
if8eqRaxO4xUELY6jgxG68Hxb+QJyagS/pvkW6SCOBwsXLzr3KnEZMy2n9fV
KTB11vdaJ1ai9PvOxcEbGUhLz751+ooSM28VTHBuDk4FdUxVBSoReOmq311O
PkYiBvbusVEiPKD4vcKiAIOZ9SuEEwqYHzDhc2YLEaY6OA2+Avbmv3evaxVh
Y/KRymVsBSYdgk2aVSXI8NzAcy6UIyzabLlIWIZdKR6WBgZyyBPEOnrdFch+
HiJwSm9FjWo2b9i1CtZJXy8oZlrQtPBzc2FVNXh6qRvW+7agWs103baugWNU
zIs8KkOkR81iQ34tyjn7Wo6yZPgT5L3d0kyMiuWy+TmPZjwJkKTxiuvATs06
nihsQpjG3f+Zzj0MsIviE9ul6DPOc0jKug8Jx6jWjSWFZR+73GP6AQLctprV
OjVClOpu+i3wEVL0ta4dvo8xEyXqjDsjwee+l6XxyQxWvhG/+mVFsMOwPSE3
kcGccc+81SYCLydBY10sg88+8xZetgRBh3L5QycYtHftOXnbnuB6TYiLezCD
jLaxP3YuBBs1XMPx7Qx0GDubY34EPqU87+4FioUCyQVlJoHtzSSV+gfFWE9/
2adsgocnQ8s1UxRqI52nqwQEzV9FlVNjFNIbPobBBQQas/cKg3cU569NVWnL
Cc7qCnlcGcV0vGMnt4lgRRet5DZSaCShWq+WpV++eD+3gaJ3MsPknIKgV647
anmPov7U63BZG8EP/3QXTglFbMT5Wd9eggmB3QejIorwijLzi68J8hruaPUL
KA4NtaOin0D9bHXIYg6F/ZG1ORNDBGmP/9bPZVJYiPBojWapL2xN0qZTsN9E
v3L+SNATeqBu9DLFb+P8+WNfCC5xHnoOX6SY8JFa8McJ/gGP3HL8
                 "]]}, "Charting`Private`Tag$376697#3"], {}}}, {}}, {
            Arrowheads[0.015], {
             Arrow[{{-0.1, -0.07}, {-0.1, -0.07}}], 
             
             Arrow[{{-0.1, -0.05600000000000001}, {-0.10252649006622518`, \
-0.05600000000000001}}], 
             Arrow[{{-0.1, -0.042}, {-0.10505298013245033`, -0.042}}], 
             
             Arrow[{{-0.1, -0.027999999999999997`}, {-0.1075794701986755, \
-0.027999999999999997`}}], 
             
             Arrow[{{-0.1, -0.013999999999999999`}, {-0.11010596026490067`, \
-0.013999999999999999`}}], 
             Arrow[{{-0.1, 0.}, {-0.1, 0.}}], 
             
             Arrow[{{-0.1, 0.014000000000000012`}, {-0.11410596026490066`, 
              0.014000000000000012`}}], 
             
             Arrow[{{-0.1, 0.02800000000000001}, {-0.11557947019867551`, 
              0.02800000000000001}}], 
             
             Arrow[{{-0.1, 0.04200000000000001}, {-0.11705298013245033`, 
              0.04200000000000001}}], 
             
             Arrow[{{-0.1, 0.05600000000000002}, {-0.11852649006622518`, 
              0.05600000000000002}}], 
             Arrow[{{-0.1, 0.07}, {-0.12000000000000001`, 0.07}}]}, {
             Arrow[{{0, -0.07}, {0., -0.07}}], 
             
             Arrow[{{0, -0.05600000000000001}, {
               0.019163679775280894`, -0.05600000000000001}}], 
             Arrow[{{0, -0.042}, {0.033339269662921354`, -0.042}}], 
             
             Arrow[{{0, -0.027999999999999997`}, {
               0.042526769662921356`, -0.027999999999999997`}}], 
             
             Arrow[{{0, -0.013999999999999999`}, {
               0.04672617977528091, -0.013999999999999999`}}], 
             Arrow[{{0, 0.}, {0.045937500000000006`, 0.}}], 
             
             Arrow[{{0, 0.014000000000000012`}, {0.04256834862385321, 
               0.014000000000000012`}}], 
             
             Arrow[{{0, 0.02800000000000001}, {0.03629002293577982, 
               0.02800000000000001}}], 
             
             Arrow[{{0, 0.04200000000000001}, {0.02710252293577982, 
               0.04200000000000001}}], 
             
             Arrow[{{0, 0.05600000000000002}, {0.015005848623853194`, 
               0.05600000000000002}}], 
             Arrow[{{0, 0.07}, {0., 0.07}}]}, {
             Arrow[{{0.1, -0.07}, {0.1, -0.07}}], 
             Arrow[{{0.1, -0.05600000000000001}, {
              0.11663718970905573`, -0.05600000000000001}}], 
             Arrow[{{0.1, -0.042}, {0.12828628953047103`, -0.042}}], 
             
             Arrow[{{0.1, -0.027999999999999997`}, {
              0.13494729946424586`, -0.027999999999999997`}}], 
             
             Arrow[{{0.1, -0.013999999999999999`}, {
              0.13662021951038025`, -0.013999999999999999`}}], 
             Arrow[{{0.1, 0.}, {0.1333050496688742, 0.}}], 
             
             Arrow[{{0.1, 0.014000000000000012`}, {0.12846238835895257`, 
              0.014000000000000012`}}], 
             
             Arrow[{{0.1, 0.02800000000000001}, {0.12071055273710432`, 
              0.02800000000000001}}], 
             
             Arrow[{{0.1, 0.04200000000000001}, {0.11004954280332949`, 
              0.04200000000000001}}], 
             
             Arrow[{{0.1, 0.05600000000000002}, {0.09647935855762803, 
              0.05600000000000002}}], 
             Arrow[{{0.1, 0.07}, {0.08, 0.07}}]}, 
            RGBColor[0, 1, 0], 
            Line[{{-0.1, -0.07}, {-0.1, 0.07}}], 
            RGBColor[1, 0, 0], 
            Line[{{0.1, -0.07}, {0.1, 0.07}}]}}, {
          DisplayFunction -> Identity, PlotRangePadding -> {{
              Scaled[0.05], 
              Scaled[0.05]}, {
              Scaled[0.05], 
              Scaled[0.05]}}, PlotRangeClipping -> True, ImagePadding -> All, 
           DisplayFunction -> Identity, Axes -> {True, True}, 
           AxesLabel -> {None, None}, AxesOrigin -> {0, 0}, DisplayFunction :> 
           Identity, FrameLabel -> {{None, None}, {None, None}}, 
           FrameTicks -> {{Automatic, Automatic}, {Automatic, Automatic}}, 
           GridLinesStyle -> Directive[
             GrayLevel[0.5, 0.4]], 
           Method -> {
            "DefaultGraphicsInteraction" -> {
              "Version" -> 1.2, "TrackMousePosition" -> {True, False}, 
               "Effects" -> {
                "Highlight" -> {"ratio" -> 2}, 
                 "HighlightPoint" -> {"ratio" -> 2}, 
                 "Droplines" -> {
                  "freeformCursorMode" -> True, 
                   "placement" -> {"x" -> "All", "y" -> "None"}}}}, 
             "ScalingFunctions" -> None}, 
           PlotRange -> {{-0.12000000000000001`, 
            0.13668780493450575`}, {-0.07, 0.07}}, PlotRangeClipping -> True, 
           PlotRangePadding -> {
             Scaled[0.02], 
             Scaled[0.02]}, Ticks -> {Automatic, Automatic}}], 
         Graphics[{{{{{}, {}, 
              Annotation[{
                Directive[
                 Opacity[1.], 
                 AbsoluteThickness[1.6], 
                 FaceForm[
                  Opacity[0.3]], 
                 GrayLevel[0], 
                 Thickness[Large]], 
                Line[CompressedData["
1:eJwVz31Q03UABnCi0pDlkbw53t8s4Hg53kWCY77gxYUJxLqg5K1NuuRlYgrC
QgTuOORNKGEbMEAYLARZ8rLf9o0HcbHRAfIWCJGtkzdvQwwKjxJqPnfPPff5
87FPSo9i6evp6R3T9dXyea9CQRsptSnSSLA8tMGz5FP4/sXaQM+aBF7aU/x6
nVPq6fFLyxKoQjb5TQIKS2tXhSfUEmw/Ca8T11NYzAu20/9FgiiPlw1UE4Wx
ziH7vAEJDB6ca5kXU+gyGHPKvilBltbxLl1GgXP/D9fUAAkmS+cEMb9RMDzn
7uN5qRuub8WOBu1RyDw/uDqUcxd6CzbKXBsZbr/H+eyMWReidmi8bIYMuwz2
SFnVHTRvjXTZJcnwzbhLW6dzB9KCugUFRTK49Hpx8xvFkM4/imK0y9DWXRiW
a9uO16InIsQqGSJsRNc+kYqgoP9pO6aRwXrF8N6KdyuK5Wo/AU0OE7tQJlN5
GyP3Dpkp3OR4nAatNqkZRTupY+0fyTFlXpAToG4Ew6JWFZAhxyLLdVvxrAFX
ijX869VypJydW76uFsAtIj/AuU8O/hcWpFxdC7V22TxrVg7Lz//JjDO5hYML
mQ8LduR4bpBsVWlYjfebJ34OtCAwEaSIivwrsdLPrO8IJqDfX2cMf1CCt51s
j2UlEMQI/d+wPlEIn6/6LDauESSUXjTWnOZi5r/LU/YtBKwOvjrInIPqYFZY
q87vWjz16n2agcicaJlzK8FqcUCBB8nA+LZns6eI4Ev2zBH7xAyo1tc4we0E
C8etZmnMdPz4a+w7n94h0Hi8rmniXkBrf8jZyh4C2v5Jk9FRNpL/dlMY9xKU
L6X2D3DYcPCxPFqjs9HQgViJGRvCrhe2DX26P9yTwlsJLPBauzc6pARWW/0u
iX8lo6zaoUJJCNx/bwjZtkzE1+n7xvcUBHVp8xOhs0yU91l35v1EcKBHWkE5
MiHa9S3VGya4slNzxpsTg7kbyeH6SoKoQuaoI+1jBLYPDr85QmDAn1buOx6J
XfVV0MYI1ksEXF7caZg6VzWU6awyjf23ZPsUPNLF3IPjBC2Nh7Nzb55E/O5c
kNFDgti+7y7FKxkYpPtJjScJKh7YzoWzj2I+4cOab3UOm6+bcq/zw2Zb8mXT
KYKXz+jjRlPecPCv8jWfJpj2dS7pzHFFEFdsXKtzaIJDfuaqE6IVg5uHZwji
zAOfXxTZ4ILho0mezv5p7o/3uMZweyJUben8g9h3afH8fvwPgRAFDA==
                 "]], 
                Line[CompressedData["
1:eJwVzX1Q03UcB3DWJRDK8oAj2BKEdHkdLeXBNLVPMyC4znTAGJjhGkdzjRoP
d1LNIi9AEYFdg7u1CBCChgjsK6Ejf7/vh4eQ4sGLhyHriA4U5cAjBCcNBfr1
x/ve79df7yClNi7tGRcXl31c/m/PmZTe320MXm0IvzuhcoOL+YPZ2jEGu7Wu
NFgUDMdfMvlV3GbQbYqfmX8gHFZSwpQOO4MN/oa+vdFRsHsszfHTJIOrEbKc
0n4ZmLvfynVy/qw7njlYnAjbifC5d/9m0HEsjjf3nhy2Xhx6cYHzouZoUeRw
EixKDkWGTzE4cym2yjn+PjQ3+Rg67jA461p1Z8+yAkLyu3fbZxkczTJsrnBR
wa7woHSPZQZlO+mr1uJMGK7vj9rqyuKCJmzlvP0MFJtUsc0CFisWD29MFOWB
oDdmaV7M4qPb2JZccgGS3P3XByQsynVnEy776MHc92dYdCKLikTTXxhggMuX
igaUahYFR3zzfRzl8BU56xF4hkWx4GmUkDWC8rA6K1vP/YUm+/7S+T0478Mh
TS2LJ1X+m4zfVkI13z30yXUWabaZ5/ZHNazGYqG4n8W6Tkfp1MEaENEbBbxJ
FttXV14pr6kFZWtDU/oSi7X2tsEyUR1I2YLXdZsopkXXbbTq60EaI5sPElBc
Szq2P9DfDMFb1JGnxBS7Ei25qaYGqL+rcYmTUDw5LZH18hrhjTcV90ZkFEe8
S0Nzzl2Br6+8/ZrzFMXAEc+q6OUmMManb6M6isYvJX7/yFugS1cQIdRTfPSR
cSDzEwtUWkstwlqK7mPm0SdBBPaW6AozOP/rPeQM2kngVqpK2cP5vtQZELOL
wAYffLQ/Urw5GKsuExP4MG0hp6uOYl7P3FrIAQI7vI6A2kyR1xbyckoCgUaN
x61rTRRXDZbPOwoIREoe129upjg3NF55r5DAhO90roKz/Xner1uKCXh2te/x
aKFoLZLykw0EPvVTl39goXj6m6Wah1UEQnt6TzzbSnE5K3wguJ1An6k1Ipnz
tOXEwxiGQGpGFb+Z8/BCnq8WCZQJczrkP1O8+rFNcaOHwONM0Y7GNooZytOO
+GECJe94rW1wVlRXCr6wERBtW7clXKN4dPImVI8TkP9mO7fOWXz8hQsPJgks
/tCpiL9OMcAILV7TBM5nN+03c/YcU43umyGwPfY7rzXOT731zpRZAu0B+fNS
K8UHUiu3CPwHaIzcaQ==
                 "]]}, "Charting`Private`Tag$377418#1"], 
              Annotation[{
                Directive[
                 Opacity[1.], 
                 AbsoluteThickness[1.6], 
                 FaceForm[
                  Opacity[0.3]], 
                 GrayLevel[0], 
                 Thickness[Large]], 
                Line[CompressedData["
1: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
                 "]], 
                Line[CompressedData["
1:eJwtjmkwnAcAhm0mrogaRzSuNSJCM6yETBJH8tZGNugkjnVrWZR1RBxtHAnZ
mjiKOGpptwi7+61mSSQ+6bZIHIkI0zoSx6IlbamjasRZ12ZUZ/rOPPP8eP68
RiGxHmH75OTkPtzjPwdmz7VeNBOhQXjqz3G2Iur6r+TYaYiQ3MF8ap/vjR8E
lp5R6iKsu3lQ5q/4YMZ5ktapJsJStGue44AvOmtVNmMPijAtcK7aGg1A8sNr
Y9/KizCnUDV1cpWFhpbro+c3CAwlcFUq5NhI2cnu6h0h4GXSatGYH4865j9q
w1ICcdtTcbPN8SgvTMr/dZhAbr/y99pz8RA0NJjODBJoTfGyvU5PgE+1ythy
PwGzvgWG1UYCrp5zspzqIiBL1GM9YH0O27MLNRY/EhB2JxfzrZMQ5vvbSDCX
wGK09caXY6mQ5dXTDYoJdEjcnqQfSIMo27htpIgAbzeGc8MuDUdGFhecCwhc
4IoVr95Nw7hUV984Z683Gxx2Db4FR7/ubvEtAg7KSjaH/uJgMTIlgBJJwIV5
rcUtNR2CZuvwWVsCFUv03fG8DOgpGAXdGRZibaRN4leQi8yKvnb1KCF8bqZ7
1moVQTb3nBI2KwDLu2yijcqFjPNFgClLAN3L2pla66WI3p3jHOvng6Yru6jX
wsNjL/2fpoz5WLTy025+Vo4dVnSb5mIlgtg68rziSmgqLQ0N+t9F62diiuIr
Pjj79W5mdZWj+tl64R/2QpgrxrUfMC5D0/bG8VIhAe1Qqsf4eR6IMUlvybFq
iKsLBspYXyOMUb37uOg72I2WRfHOleCdr5uNoY4YJxwPuaQoFuO5dz0ntKwG
YaEuD3uaCxE06eDVRbmP3cyNfV+9ysWgZqFVUvYDpGUYWd/fnwXDQdUqxmod
GPd+XlEwTAcvzeHwW59H6E/I0FWnJWEtnNcTH1MPWkx7xonpCChJxUM7RiSM
L+Wl37kdgU3N11tGJiTeyn/UNGoUgVn3LaqTGYnUkzVjDoFsvOx1jiyhkdBw
+H3CWxqGjM75d+Z2JEzoNmt5HSGgSMxNAz1JFPEsSMejftjm1qe0Z5G4lyJj
q3zii/nXo5UzOSS+OSopaSj1wZga5cXBfBLO0ilXoYI3GvPc3/PjkqiqPX1Z
cdYDibdXhMtVJPRpn3b1XXDGasKpniNNJDyoditR5CVM1n+87PSUxAR/Wqmb
ysDAYoZ2bBsJRqBk68UmHQ1Rw6wnnSTOJHMGuEwbxIUkrjMHSFhmhk//cvw0
WPxK3RvDJOiNa/0ExRqub16CP0qCaaDqmxjwAWj+7+cuvCEhC9Wy01QwBpWH
RxqTJDaXBsvYQTpQlbKHzk7v/fE/Y88KVoZMs2grcI6E3P9bcG+kZv5N4l/q
IerF
                 "]]}, "Charting`Private`Tag$377418#2"], 
              Annotation[{
                Directive[
                 Opacity[1.], 
                 AbsoluteThickness[1.6], 
                 FaceForm[
                  Opacity[0.3]], 
                 GrayLevel[0], 
                 Thickness[Large]], 
                Line[CompressedData["
1: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
8vUpsilbZ7DXRRD+D3/FJpQ=
                 "]], 
                Line[CompressedData["
1:eJwVxX0s1GEAB/C7tlKty3QS2g4ZqskWFsn2TS2xagjpWsmulysxLkUUpc77
vKxDNzVEJ6VyTz0/7g53KKqNosvLraO6okJSSCSqPz772Aii9h5bwGKxnP75
/7DPLbtW90Y4E9ePeqERjs6FdxmZNSLYTr1BkS1CvnuITvtTg9FTLlPpuguY
Ojtw4xejwY2xbfP6LDEcviVEc6I0mOjRMPycTPDik1dG2WsQcj456K5pHpb0
bb5U0qFG2L6iPg1PgvROoenHeDUs95ilmE4WIIJdceI2Tw0ny9kdqxukqFrd
KyO0AaPOfDNV03Uk2L4Y2L2rAYeFFgulV4shtRf+HOmshzqmkm3UUQr+XQ+f
QX49ZE2Tue89y6CLlRyc6KuDcmZqfUFZOa6ZmxQl+tehXMe059vLsMfKX97f
osIxb9n8o7wK/CgVC+LWqvBnv/9mK4tK8M75ed1JVaJ5n/zikaI7+F2U98zj
iwKHDV7BT9lVUA1sjBS5KaDl5jrHpd3D9trA8JeZtbDSckq8x+9DHGQ9Efym
BtJEL/NvIdUomQsynl5Zg4nj0jZRpByspOeLvEIYLO6ufP3bhsBt/jHnbSCD
X9zOaRs7ggKHwsIL/gw+BUzzfNYSNEU2bajxZdDa7nsy34lA/9LltK0nA3HL
0B/HLQQ2w2mBg9YM2IyjQ2gQwXDi1zjOEMWMRB7fmErQ80GvvD5IMdTZWzyY
QTA0Vp647gOFzpj9ZFk2wSWWMnO7nkKRFbCcLyGInpxTiV5QxF75Ufa9hCB0
00xMzUOK8dOubWuUBBXLj2o9qykM8oPffeoJuDky2lxF8WpUbBalITh0uXq2
7RbFw/CusLoWgtqtb8veFFJEC2InA18ROO5dZBIqoQgrLbZM6CJoXbqQ/S6X
wq+/FaW9BBGijOOGdAqnA6syR/oJYq2M9YIUCp4U1SsMBJVnIrSGZApOt/C1
+wDBfPTN3YIkillu3nToZ4Lzpg92vk+gGAlQ8FKGCf4CuuJ50w==
                 "]]}, "Charting`Private`Tag$377418#3"], {}}}, {}}, {
            Arrowheads[0.015], {
             Arrow[{{-0.1, -0.07}, {-0.1, -0.07}}], 
             
             Arrow[{{-0.1, -0.05600000000000001}, {-0.10252649006622518`, \
-0.05600000000000001}}], 
             Arrow[{{-0.1, -0.042}, {-0.10505298013245033`, -0.042}}], 
             
             Arrow[{{-0.1, -0.027999999999999997`}, {-0.1075794701986755, \
-0.027999999999999997`}}], 
             
             Arrow[{{-0.1, -0.013999999999999999`}, {-0.11010596026490067`, \
-0.013999999999999999`}}], 
             Arrow[{{-0.1, 0.}, {-0.1, 0.}}], 
             
             Arrow[{{-0.1, 0.014000000000000012`}, {-0.11410596026490066`, 
              0.014000000000000012`}}], 
             
             Arrow[{{-0.1, 0.02800000000000001}, {-0.11557947019867551`, 
              0.02800000000000001}}], 
             
             Arrow[{{-0.1, 0.04200000000000001}, {-0.11705298013245033`, 
              0.04200000000000001}}], 
             
             Arrow[{{-0.1, 0.05600000000000002}, {-0.11852649006622518`, 
              0.05600000000000002}}], 
             Arrow[{{-0.1, 0.07}, {-0.12000000000000001`, 0.07}}]}, {
             Arrow[{{0, -0.07}, {0., -0.07}}], 
             
             Arrow[{{0, -0.05600000000000001}, {
               0.016426011235955055`, -0.05600000000000001}}], 
             Arrow[{{0, -0.042}, {0.02857651685393259, -0.042}}], 
             
             Arrow[{{0, -0.027999999999999997`}, {
               0.0364515168539326, -0.027999999999999997`}}], 
             
             Arrow[{{0, -0.013999999999999999`}, {
               0.040051011235955065`, -0.013999999999999999`}}], 
             Arrow[{{0, 0.}, {0.039375000000000014`, 0.}}], 
             
             Arrow[{{0, 0.014000000000000012`}, {0.03648715596330276, 
               0.014000000000000012`}}], 
             
             Arrow[{{0, 0.02800000000000001}, {0.031105733944954132`, 
               0.02800000000000001}}], 
             
             Arrow[{{0, 0.04200000000000001}, {0.023230733944954132`, 
               0.04200000000000001}}], 
             
             Arrow[{{0, 0.05600000000000002}, {0.01286215596330274, 
               0.05600000000000002}}], 
             Arrow[{{0, 0.07}, {0., 0.07}}]}, {
             Arrow[{{0.1, -0.07}, {0.1, -0.07}}], 
             
             Arrow[{{0.1, -0.05600000000000001}, {
              0.1138995211697299, -0.05600000000000001}}], 
             Arrow[{{0.1, -0.042}, {0.12352353672148227`, -0.042}}], 
             
             Arrow[{{0.1, -0.027999999999999997`}, {
              0.12887204665525712`, -0.027999999999999997`}}], 
             
             Arrow[{{0.1, -0.013999999999999999`}, {
              0.1299450509710544, -0.013999999999999999`}}], 
             Arrow[{{0.1, 0.}, {0.1267425496688742, 0.}}], 
             
             Arrow[{{0.1, 0.014000000000000012`}, {0.1223811956984021, 
              0.014000000000000012`}}], 
             
             Arrow[{{0.1, 0.02800000000000001}, {0.11552626374627864`, 
              0.02800000000000001}}], 
             
             Arrow[{{0.1, 0.04200000000000001}, {0.1061777538125038, 
              0.04200000000000001}}], 
             
             Arrow[{{0.1, 0.05600000000000002}, {0.09433566589707758, 
              0.05600000000000002}}], 
             Arrow[{{0.1, 0.07}, {0.08, 0.07}}]}, 
            RGBColor[0, 1, 0], 
            Line[{{-0.1, -0.07}, {-0.1, 0.07}}], 
            RGBColor[1, 0, 0], 
            Line[{{0.1, -0.07}, {0.1, 0.07}}]}}, {
          DisplayFunction -> Identity, PlotRangePadding -> {{
              Scaled[0.05], 
              Scaled[0.05]}, {
              Scaled[0.05], 
              Scaled[0.05]}}, PlotRangeClipping -> True, ImagePadding -> All, 
           DisplayFunction -> Identity, Axes -> {True, True}, 
           AxesLabel -> {None, None}, AxesOrigin -> {0, 0}, DisplayFunction :> 
           Identity, FrameLabel -> {{None, None}, {None, None}}, 
           FrameTicks -> {{Automatic, Automatic}, {Automatic, Automatic}}, 
           GridLinesStyle -> Directive[
             GrayLevel[0.5, 0.4]], 
           Method -> {
            "DefaultGraphicsInteraction" -> {
              "Version" -> 1.2, "TrackMousePosition" -> {True, False}, 
               "Effects" -> {
                "Highlight" -> {"ratio" -> 2}, 
                 "HighlightPoint" -> {"ratio" -> 2}, 
                 "Droplines" -> {
                  "freeformCursorMode" -> True, 
                   "placement" -> {"x" -> "All", "y" -> "None"}}}}, 
             "ScalingFunctions" -> None}, 
           PlotRange -> {{-0.12000000000000001`, 
            0.13007762914438992`}, {-0.07, 0.07}}, PlotRangeClipping -> True, 
           PlotRangePadding -> {
             Scaled[0.02], 
             Scaled[0.02]}, Ticks -> {Automatic, Automatic}}], 
         Graphics[{{{{{}, {}, 
              Annotation[{
                Directive[
                 Opacity[1.], 
                 AbsoluteThickness[1.6], 
                 FaceForm[
                  Opacity[0.3]], 
                 GrayLevel[0], 
                 Thickness[Large]], 
                Line[CompressedData["
1:eJwVz31Q03UABnCi0pDlkbw53t8s4Hg53kWCY77gxYUJxLqg5K1NuuRlYgrC
QgTuOORNKGEbMEAYLARZ8rLf9o0HcbHRAfIWCJGtkzdvQwwKjxJqPnfPPff5
87FPSo9i6evp6R3T9dXyea9CQRsptSnSSLA8tMGz5FP4/sXaQM+aBF7aU/x6
nVPq6fFLyxKoQjb5TQIKS2tXhSfUEmw/Ca8T11NYzAu20/9FgiiPlw1UE4Wx
ziH7vAEJDB6ca5kXU+gyGHPKvilBltbxLl1GgXP/D9fUAAkmS+cEMb9RMDzn
7uN5qRuub8WOBu1RyDw/uDqUcxd6CzbKXBsZbr/H+eyMWReidmi8bIYMuwz2
SFnVHTRvjXTZJcnwzbhLW6dzB9KCugUFRTK49Hpx8xvFkM4/imK0y9DWXRiW
a9uO16InIsQqGSJsRNc+kYqgoP9pO6aRwXrF8N6KdyuK5Wo/AU0OE7tQJlN5
GyP3Dpkp3OR4nAatNqkZRTupY+0fyTFlXpAToG4Ew6JWFZAhxyLLdVvxrAFX
ijX869VypJydW76uFsAtIj/AuU8O/hcWpFxdC7V22TxrVg7Lz//JjDO5hYML
mQ8LduR4bpBsVWlYjfebJ34OtCAwEaSIivwrsdLPrO8IJqDfX2cMf1CCt51s
j2UlEMQI/d+wPlEIn6/6LDauESSUXjTWnOZi5r/LU/YtBKwOvjrInIPqYFZY
q87vWjz16n2agcicaJlzK8FqcUCBB8nA+LZns6eI4Ev2zBH7xAyo1tc4we0E
C8etZmnMdPz4a+w7n94h0Hi8rmniXkBrf8jZyh4C2v5Jk9FRNpL/dlMY9xKU
L6X2D3DYcPCxPFqjs9HQgViJGRvCrhe2DX26P9yTwlsJLPBauzc6pARWW/0u
iX8lo6zaoUJJCNx/bwjZtkzE1+n7xvcUBHVp8xOhs0yU91l35v1EcKBHWkE5
MiHa9S3VGya4slNzxpsTg7kbyeH6SoKoQuaoI+1jBLYPDr85QmDAn1buOx6J
XfVV0MYI1ksEXF7caZg6VzWU6awyjf23ZPsUPNLF3IPjBC2Nh7Nzb55E/O5c
kNFDgti+7y7FKxkYpPtJjScJKh7YzoWzj2I+4cOab3UOm6+bcq/zw2Zb8mXT
KYKXz+jjRlPecPCv8jWfJpj2dS7pzHFFEFdsXKtzaIJDfuaqE6IVg5uHZwji
zAOfXxTZ4ILho0mezv5p7o/3uMZweyJUben8g9h3afH8fvwPgRAFDA==
                 "]], 
                Line[CompressedData["
1:eJwVzX1Q03UcB3DWJRDK8oAj2BKEdHkdLeXBNLVPMyC4znTAGJjhGkdzjRoP
d1LNIi9AEYFdg7u1CBCChgjsK6Ejf7/vh4eQ4sGLhyHriA4U5cAjBCcNBfr1
x/ve79df7yClNi7tGRcXl31c/m/PmZTe320MXm0IvzuhcoOL+YPZ2jEGu7Wu
NFgUDMdfMvlV3GbQbYqfmX8gHFZSwpQOO4MN/oa+vdFRsHsszfHTJIOrEbKc
0n4ZmLvfynVy/qw7njlYnAjbifC5d/9m0HEsjjf3nhy2Xhx6cYHzouZoUeRw
EixKDkWGTzE4cym2yjn+PjQ3+Rg67jA461p1Z8+yAkLyu3fbZxkczTJsrnBR
wa7woHSPZQZlO+mr1uJMGK7vj9rqyuKCJmzlvP0MFJtUsc0CFisWD29MFOWB
oDdmaV7M4qPb2JZccgGS3P3XByQsynVnEy776MHc92dYdCKLikTTXxhggMuX
igaUahYFR3zzfRzl8BU56xF4hkWx4GmUkDWC8rA6K1vP/YUm+/7S+T0478Mh
TS2LJ1X+m4zfVkI13z30yXUWabaZ5/ZHNazGYqG4n8W6Tkfp1MEaENEbBbxJ
FttXV14pr6kFZWtDU/oSi7X2tsEyUR1I2YLXdZsopkXXbbTq60EaI5sPElBc
Szq2P9DfDMFb1JGnxBS7Ei25qaYGqL+rcYmTUDw5LZH18hrhjTcV90ZkFEe8
S0Nzzl2Br6+8/ZrzFMXAEc+q6OUmMManb6M6isYvJX7/yFugS1cQIdRTfPSR
cSDzEwtUWkstwlqK7mPm0SdBBPaW6AozOP/rPeQM2kngVqpK2cP5vtQZELOL
wAYffLQ/Urw5GKsuExP4MG0hp6uOYl7P3FrIAQI7vI6A2kyR1xbyckoCgUaN
x61rTRRXDZbPOwoIREoe129upjg3NF55r5DAhO90roKz/Xner1uKCXh2te/x
aKFoLZLykw0EPvVTl39goXj6m6Wah1UEQnt6TzzbSnE5K3wguJ1An6k1Ipnz
tOXEwxiGQGpGFb+Z8/BCnq8WCZQJczrkP1O8+rFNcaOHwONM0Y7GNooZytOO
+GECJe94rW1wVlRXCr6wERBtW7clXKN4dPImVI8TkP9mO7fOWXz8hQsPJgks
/tCpiL9OMcAILV7TBM5nN+03c/YcU43umyGwPfY7rzXOT731zpRZAu0B+fNS
K8UHUiu3CPwHaIzcaQ==
                 "]]}, "Charting`Private`Tag$378146#1"], 
              Annotation[{
                Directive[
                 Opacity[1.], 
                 AbsoluteThickness[1.6], 
                 FaceForm[
                  Opacity[0.3]], 
                 GrayLevel[0], 
                 Thickness[Large]], 
                Line[CompressedData["
1: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
QgF7Rlvqy6kEBliYW9bpYXs4KlnZBDJARDLz1HHsQ2ydf2R2MaDlXnhxAPan
Uksv4l8GzO3bcI+GnVjn1q4ozoCcG0mQiq0M59SKl+jw4EdDLhu7tSM5UW2a
Dv5S5JEKbOe+wrnKXjpckbH8eRP758gda60mOhgv3jzXip0+3XOj7hodfO6O
v+jE1vw6Iap3iQ6CR3sl+rC7Fv+ENJ6jg/ZAlMEQtjePyOBONzq80PpkOIbN
Iapq0LqPDr995eQnsPPWo6u7t9HhKk3o3TS2vuqhpfb1dGg+dy9uFrt/68nj
ltx0cNmvIziH7b+Teu/JZxpEUHyDl81vnrnBdogG0iznpg/YJbaVsc/v00CP
Q3R8BnuX873pw1U06LeOn53CHvEZ3PcqkwYfw1v6x7EvBH6sdKXSID7uNvs1
tljEyjXjvjQoCAywGMSuZkoFeNvRwGDHbP9TbMs0rb73hjSwebvRpAN78uoe
HT9lGkz7KFwCbFrJsazPa2jwt2ukqQ57fW3gr6BfVGAJOnWWYN++G+e08JYK
1zSz7+Rg27Wzm8O6qaCreSU+abl+vfVySw1U2Lv6sEEEdsKrThqNoMKkpxRy
Wq7X/A+zuEAqBL2WYZkv1+uvQCn/MSrQdMcebFuuF5cSX4oZFSToZU+W95Om
jPWTyxJUKAypvvYF77cuZS8tSU4qVO4NdRrC9t5yMe3qbBTsYO45VYydt6fE
oRCioPWb9YMEbH2b5tvKpVHw0FhqyQ+736lPqpwVBVbB86JbsPkDKKM1nlFg
bVHeUYbPy/lcRx/gi4LH5Y0qMdiqVq/So99HQudMoo8rtqs7z+HEu5FgwhUQ
L4T9OOn42BX3SFCqMHPwwuez9I3QfN31CMhe4dykhz36w7ChkRYBl7bpcPBi
iwv4Xmg9FAHf9VQ1S3EeMHRbOXp+h8OtSgmxlzgvXBMDRGb2hIOXUNjLPOzh
f4vtVdaGw6zfVis3bMfuoSueExeBurbU6N0mElmv3i03yrgIA+tLDg7hfDJK
Wave3xIGlgdb4jKwmzQt/YVTwyAzXMvfClvvaVTtAdcwuH1PfG8TzjdN4ffb
Hy1eAJVV3xSZy3mY3mQGBhfAjevhY13sPO3PcX94L0AQx5zyhDLOr/4N3dtf
ngeFCZN3O7GFxS/Z1p07DyXulMRRnMccWcddS+vPwRHdR3HjON/f5Ky6kLY5
FGSf80pGYjvvMLjbsxgCd/3yHddhvxw+Q1n9OAQYSc9HzeRxfssMxjBPhYA+
1UYmXZZE99jlaeGlwWBpfMXsI+4/hQXWld6KQbBCye1ICe5nnuXZowZrz0Ju
lt0eBeyNktNa9dP+QPn6QSAH98NJpi5do8kfFF3EVOKESHTCq2+D/HF/6Fml
m+IgiOc3kX7Ob38GnuU82HwX99sZDc4ZMvwU+A8LVpTj/s3P9VS0q8sLlNRe
d1Owk8dP32w+6wWE86EOO9zv17TyHqkR94JvYTr7fy7/H4Sbsi+7egIPs5Op
/ZtA0l9uqh7/6g5974yeBH4jkPrrvJ3fpY4Dxy3HK2LTBMr1G+wxem4PO4Qz
RNu6CTRfoD0+7M0F/wPl2yc2
                 "]], 
                Line[CompressedData["
1:eJwtkHkwnAcAxWnGVUdmIkFQRia2GWElS9tsjr64qQnrvmO7LIMQV8UZI44E
dYx1rGv3K0O0ieFrqCNCdROJVFQcG6ZoSbFURbrZ0WVlqzN9M2/e/Ob98Wae
Ceu6J/sDBQWFywf+L1MNdI3PjxFI7LD+Yz5SBYfbh53m+wikCrwGLpb4Qjd4
ctvigCUMT8UNNz9UXYqUjfcQ2I5xL7af9IebVqhUpZvAyjcufOlsEPpWC4p8
OgiIlPmvz4qZiErqUQttJjCdyFFvUIgEXVafcbqQgI/poEVvSQLY2zufBd8h
EL/7On6tPwH3ds65fn2bQNEval06ogTkIzplI5/AYJrP+a9sE5HUVfgb7xaB
U+ObjrSdRFhaDcjWMgjIUgyY95nJOJP3hrUXS6DpWWoFYXUD3sllixQGga0Y
q507c5mQjV5i6bkTEHQzHuZ8mIUQR2djNTcCXHlsdvqFLDg+SHAQuRKw47Sp
XGvMwg8hOraNTgd9/0d67l/ehJakVbb0OQEbNVX6sfVsNFispAjNCXzhFfeI
kZmDMyMz2THKBBq2beXzxXkQdi2J18P4ePdqqDugtAi0QH+bZ508+GXkeH93
tBw71Lr2fWEjmL51C0NGHDSbCf+qljRA/4pO/lFJFZTl1JmNQw2g6sscDB5x
kU23bM1YrcMWLUCnf7geExPU5+yRWoRGHlfiVvDAJhPPBqVwMZjUpqgycfBb
bnWEA6UGLcOSsqWLTZAqqbouPq1C3+6OWVVTM0R34+xZ1pVonut+UUlpgUaR
SaCwpQJsxxb5g/JWFKjlHJIvlGPfn0E3Pt4Gd8PxiWSNUvzk25kdVvctpj05
q/L4IoQu2/g8VbyH9/bjr1L9CzClXUa7cfs+jtQ6+tADbsF4SpPvKG5H8nBb
pXphJrhZNnpv/Dqg2C24rOWRhHcR3LGE2E4wOiWC/cFwqArbpvdMSIjZLsP8
2HD8o/1SamJKot4yqs7aMBxrHlIj51MkOO81fv80LQwjL1yiKqkkyopXehtp
LOQ92dg3v0CiQtBls+4QerBj/vFVbxIn5C2cUrE3djmdaT8WkAhle+YUXvHG
xstZ3mohiSlxNSX6rhfmDis+1ighsXZbVDMf6IneYg+tAA6JEMOg0xo57kjJ
/bvpLZ/ENcrNPaGmA8SJ1mMn+kjUbv06mjtoh+XO4LfOAyQ0laNVZHG2mNzK
07k+RGLUiUo08oDvo2eYD5+QyKNHW+7pf4J4VorEa5KEx2OzIfU0GpgETz99
hoRgoSYwot0S7osjIGZJ6NsxXUpMTEEN1C3aXCTR3DrW87zLGEZcdBxZJjHu
HOQrPHkMmsLI6XMrJOx/np1PpyhBpl0uvSoiofC/Nj16jfL/JPEvWgfvkw==

                 "]]}, "Charting`Private`Tag$378146#2"], 
              Annotation[{
                Directive[
                 Opacity[1.], 
                 AbsoluteThickness[1.6], 
                 FaceForm[
                  Opacity[0.3]], 
                 GrayLevel[0], 
                 Thickness[Large]], 
                Line[CompressedData["
1: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
79Xwf0JH7FE=
                 "]], 
                Line[CompressedData["
1:eJwVjX1MzHEAhzt2y1DicvTiUhuu1EVaY9o+ztYLW6tQOdKbKTKKplIicyW9
KL3YT6hWohL15fur6+V+J5R/OtL70Ysur2lRrqWU5I/Pnj3bs30sQyL2HVuk
p6cnWdh/at8Hxie/4NCucvzYF6YP8dygnJNz8NnA2SkyziDdtcrfyYfD2Mlt
UymaC1DF15TXm3G483P3fF+aHF4arVLar4SuR8XKrqfiuDTShbmrhF/85QMV
xlnYo+PCK/cpEeSb368S5cDBfJ2Vk74Sph7CJOPJPMRK5/oNFY2QmM66mCkZ
OKh8KgL8GzHmIBPWN91GxPzF48G8RgSGmfCZ7AKMtl1Vv2YawEWV8fTbimCd
arL45tYGlDZNZg45FyM9egesX9WjbmbKJq+4BK3WpcJBj3qUaFh17sZShPY6
Ztv11OGYa+n806z7cLHjltzwqsPcQa8dFiZluDMynCJrUeC5b/Wlo/nl+Ka4
Zc/bpUCgVurzivcQ+crWsNNltegQZDrEXK1Et4yRBK+uhUWHQaHrr0d4enLl
G35iDZgE6dofflV4PqEYEvey0IUyrWdOVcNE/CJyhROLJd1lnX8sCSQ/mx7Y
b2PxW/B22nIDwfDawnOeW1h88Z4WuYsJbNJ1XRk2LFrUe07kSgi2zCwr51uw
kDePzNnuJBDpRpkhfRY81nZTwAGC5MCYwr0aipmc6vPPkhd85+4nR7opRt72
Fny+RiCO/X44soNCs4L3cnkGgZtAE5WrplCkeRvKcgj+tq2v6WmiiL4yUTxe
SOAZHiLfW0Hx66xjq1XdQu8l4Ps9oNBW+4+7NxL03yw2P3qPon1MLoxQEXx1
8TeKK6B4Et4V1NBMELvZeWlJNkVkSPTk/naCcOEHaWUmRVBRgWlcF8FscIgR
m07hOdCCot6Ff9NFZ5uTKSSH1qSODhCcTrHgq69QiBhUrdISXPQ1s+9MpDDo
Duvc/onALmnyx7sEillB1nTAV4J448duQ3EUo94KUdJ3gn/QHXBR
                 "]]}, "Charting`Private`Tag$378146#3"], {}}}, {}}, {
            Arrowheads[0.015], {
             Arrow[{{-0.1, -0.07}, {-0.1, -0.07}}], 
             
             Arrow[{{-0.1, -0.05600000000000001}, {-0.10252649006622518`, \
-0.05600000000000001}}], 
             Arrow[{{-0.1, -0.042}, {-0.10505298013245033`, -0.042}}], 
             
             Arrow[{{-0.1, -0.027999999999999997`}, {-0.1075794701986755, \
-0.027999999999999997`}}], 
             
             Arrow[{{-0.1, -0.013999999999999999`}, {-0.11010596026490067`, \
-0.013999999999999999`}}], 
             Arrow[{{-0.1, 0.}, {-0.1, 0.}}], 
             
             Arrow[{{-0.1, 0.014000000000000012`}, {-0.11410596026490066`, 
              0.014000000000000012`}}], 
             
             Arrow[{{-0.1, 0.02800000000000001}, {-0.11557947019867551`, 
              0.02800000000000001}}], 
             
             Arrow[{{-0.1, 0.04200000000000001}, {-0.11705298013245033`, 
              0.04200000000000001}}], 
             
             Arrow[{{-0.1, 0.05600000000000002}, {-0.11852649006622518`, 
              0.05600000000000002}}], 
             Arrow[{{-0.1, 0.07}, {-0.12000000000000001`, 0.07}}]}, {
             Arrow[{{0, -0.07}, {0., -0.07}}], 
             
             Arrow[{{0, -0.05600000000000001}, {
               0.013688342696629212`, -0.05600000000000001}}], 
             Arrow[{{0, -0.042}, {0.023813764044943824`, -0.042}}], 
             
             Arrow[{{0, -0.027999999999999997`}, {
               0.030376264044943826`, -0.027999999999999997`}}], 
             
             Arrow[{{0, -0.013999999999999999`}, {
               0.033375842696629215`, -0.013999999999999999`}}], 
             Arrow[{{0, 0.}, {0.03281250000000001, 0.}}], 
             Arrow[{{0, 0.014000000000000012`}, {0.0304059633027523, 
               0.014000000000000012`}}], 
             
             Arrow[{{0, 0.02800000000000001}, {0.02592144495412844, 
               0.02800000000000001}}], 
             
             Arrow[{{0, 0.04200000000000001}, {0.019358944954128442`, 
               0.04200000000000001}}], 
             
             Arrow[{{0, 0.05600000000000002}, {0.010718463302752283`, 
               0.05600000000000002}}], 
             Arrow[{{0, 0.07}, {0., 0.07}}]}, {
             Arrow[{{0.1, -0.07}, {0.1, -0.07}}], 
             
             Arrow[{{0.1, -0.05600000000000001}, {
              0.11116185263040405`, -0.05600000000000001}}], 
             Arrow[{{0.1, -0.042}, {0.1187607839124935, -0.042}}], 
             
             Arrow[{{0.1, -0.027999999999999997`}, {
              0.12279679384626833`, -0.027999999999999997`}}], 
             
             Arrow[{{0.1, -0.013999999999999999`}, {
              0.12326988243172857`, -0.013999999999999999`}}], 
             Arrow[{{0.1, 0.}, {0.12018004966887419`, 0.}}], 
             
             Arrow[{{0.1, 0.014000000000000012`}, {0.11630000303785164`, 
              0.014000000000000012`}}], 
             
             Arrow[{{0.1, 0.02800000000000001}, {0.11034197475545295`, 
              0.02800000000000001}}], 
             
             Arrow[{{0.1, 0.04200000000000001}, {0.10230596482167811`, 
              0.04200000000000001}}], 
             
             Arrow[{{0.1, 0.05600000000000002}, {0.09219197323652711, 
              0.05600000000000002}}], 
             Arrow[{{0.1, 0.07}, {0.08, 0.07}}]}, 
            RGBColor[0, 1, 0], 
            Line[{{-0.1, -0.07}, {-0.1, 0.07}}], 
            RGBColor[1, 0, 0], 
            Line[{{0.1, -0.07}, {0.1, 0.07}}]}}, {
          DisplayFunction -> Identity, PlotRangePadding -> {{
              Scaled[0.05], 
              Scaled[0.05]}, {
              Scaled[0.05], 
              Scaled[0.05]}}, PlotRangeClipping -> True, ImagePadding -> All, 
           DisplayFunction -> Identity, Axes -> {True, True}, 
           AxesLabel -> {None, None}, AxesOrigin -> {0, 0}, DisplayFunction :> 
           Identity, FrameLabel -> {{None, None}, {None, None}}, 
           FrameTicks -> {{Automatic, Automatic}, {Automatic, Automatic}}, 
           GridLinesStyle -> Directive[
             GrayLevel[0.5, 0.4]], 
           Method -> {
            "DefaultGraphicsInteraction" -> {
              "Version" -> 1.2, "TrackMousePosition" -> {True, False}, 
               "Effects" -> {
                "Highlight" -> {"ratio" -> 2}, 
                 "HighlightPoint" -> {"ratio" -> 2}, 
                 "Droplines" -> {
                  "freeformCursorMode" -> True, 
                   "placement" -> {"x" -> "All", "y" -> "None"}}}}, 
             "ScalingFunctions" -> None}, 
           PlotRange -> {{-0.12000000000000001`, 
            0.12351011029982947`}, {-0.07, 0.07}}, PlotRangeClipping -> True, 
           PlotRangePadding -> {
             Scaled[0.02], 
             Scaled[0.02]}, Ticks -> {Automatic, Automatic}}], 
         Graphics[{{{{{}, {}, 
              Annotation[{
                Directive[
                 Opacity[1.], 
                 AbsoluteThickness[1.6], 
                 FaceForm[
                  Opacity[0.3]], 
                 GrayLevel[0], 
                 Thickness[Large]], 
                Line[CompressedData["
1:eJwVz31Q03UABnCi0pDlkbw53t8s4Hg53kWCY77gxYUJxLqg5K1NuuRlYgrC
QgTuOORNKGEbMEAYLARZ8rLf9o0HcbHRAfIWCJGtkzdvQwwKjxJqPnfPPff5
87FPSo9i6evp6R3T9dXyea9CQRsptSnSSLA8tMGz5FP4/sXaQM+aBF7aU/x6
nVPq6fFLyxKoQjb5TQIKS2tXhSfUEmw/Ca8T11NYzAu20/9FgiiPlw1UE4Wx
ziH7vAEJDB6ca5kXU+gyGHPKvilBltbxLl1GgXP/D9fUAAkmS+cEMb9RMDzn
7uN5qRuub8WOBu1RyDw/uDqUcxd6CzbKXBsZbr/H+eyMWReidmi8bIYMuwz2
SFnVHTRvjXTZJcnwzbhLW6dzB9KCugUFRTK49Hpx8xvFkM4/imK0y9DWXRiW
a9uO16InIsQqGSJsRNc+kYqgoP9pO6aRwXrF8N6KdyuK5Wo/AU0OE7tQJlN5
GyP3Dpkp3OR4nAatNqkZRTupY+0fyTFlXpAToG4Ew6JWFZAhxyLLdVvxrAFX
ijX869VypJydW76uFsAtIj/AuU8O/hcWpFxdC7V22TxrVg7Lz//JjDO5hYML
mQ8LduR4bpBsVWlYjfebJ34OtCAwEaSIivwrsdLPrO8IJqDfX2cMf1CCt51s
j2UlEMQI/d+wPlEIn6/6LDauESSUXjTWnOZi5r/LU/YtBKwOvjrInIPqYFZY
q87vWjz16n2agcicaJlzK8FqcUCBB8nA+LZns6eI4Ev2zBH7xAyo1tc4we0E
C8etZmnMdPz4a+w7n94h0Hi8rmniXkBrf8jZyh4C2v5Jk9FRNpL/dlMY9xKU
L6X2D3DYcPCxPFqjs9HQgViJGRvCrhe2DX26P9yTwlsJLPBauzc6pARWW/0u
iX8lo6zaoUJJCNx/bwjZtkzE1+n7xvcUBHVp8xOhs0yU91l35v1EcKBHWkE5
MiHa9S3VGya4slNzxpsTg7kbyeH6SoKoQuaoI+1jBLYPDr85QmDAn1buOx6J
XfVV0MYI1ksEXF7caZg6VzWU6awyjf23ZPsUPNLF3IPjBC2Nh7Nzb55E/O5c
kNFDgti+7y7FKxkYpPtJjScJKh7YzoWzj2I+4cOab3UOm6+bcq/zw2Zb8mXT
KYKXz+jjRlPecPCv8jWfJpj2dS7pzHFFEFdsXKtzaIJDfuaqE6IVg5uHZwji
zAOfXxTZ4ILho0mezv5p7o/3uMZweyJUben8g9h3afH8fvwPgRAFDA==
                 "]], 
                Line[CompressedData["
1:eJwVzX1Q03UcB3DWJRDK8oAj2BKEdHkdLeXBNLVPMyC4znTAGJjhGkdzjRoP
d1LNIi9AEYFdg7u1CBCChgjsK6Ejf7/vh4eQ4sGLhyHriA4U5cAjBCcNBfr1
x/ve79df7yClNi7tGRcXl31c/m/PmZTe320MXm0IvzuhcoOL+YPZ2jEGu7Wu
NFgUDMdfMvlV3GbQbYqfmX8gHFZSwpQOO4MN/oa+vdFRsHsszfHTJIOrEbKc
0n4ZmLvfynVy/qw7njlYnAjbifC5d/9m0HEsjjf3nhy2Xhx6cYHzouZoUeRw
EixKDkWGTzE4cym2yjn+PjQ3+Rg67jA461p1Z8+yAkLyu3fbZxkczTJsrnBR
wa7woHSPZQZlO+mr1uJMGK7vj9rqyuKCJmzlvP0MFJtUsc0CFisWD29MFOWB
oDdmaV7M4qPb2JZccgGS3P3XByQsynVnEy776MHc92dYdCKLikTTXxhggMuX
igaUahYFR3zzfRzl8BU56xF4hkWx4GmUkDWC8rA6K1vP/YUm+/7S+T0478Mh
TS2LJ1X+m4zfVkI13z30yXUWabaZ5/ZHNazGYqG4n8W6Tkfp1MEaENEbBbxJ
FttXV14pr6kFZWtDU/oSi7X2tsEyUR1I2YLXdZsopkXXbbTq60EaI5sPElBc
Szq2P9DfDMFb1JGnxBS7Ei25qaYGqL+rcYmTUDw5LZH18hrhjTcV90ZkFEe8
S0Nzzl2Br6+8/ZrzFMXAEc+q6OUmMManb6M6isYvJX7/yFugS1cQIdRTfPSR
cSDzEwtUWkstwlqK7mPm0SdBBPaW6AozOP/rPeQM2kngVqpK2cP5vtQZELOL
wAYffLQ/Urw5GKsuExP4MG0hp6uOYl7P3FrIAQI7vI6A2kyR1xbyckoCgUaN
x61rTRRXDZbPOwoIREoe129upjg3NF55r5DAhO90roKz/Xner1uKCXh2te/x
aKFoLZLykw0EPvVTl39goXj6m6Wah1UEQnt6TzzbSnE5K3wguJ1An6k1Ipnz
tOXEwxiGQGpGFb+Z8/BCnq8WCZQJczrkP1O8+rFNcaOHwONM0Y7GNooZytOO
+GECJe94rW1wVlRXCr6wERBtW7clXKN4dPImVI8TkP9mO7fOWXz8hQsPJgks
/tCpiL9OMcAILV7TBM5nN+03c/YcU43umyGwPfY7rzXOT731zpRZAu0B+fNS
K8UHUiu3CPwHaIzcaQ==
                 "]]}, "Charting`Private`Tag$378867#1"], 
              Annotation[{
                Directive[
                 Opacity[1.], 
                 AbsoluteThickness[1.6], 
                 FaceForm[
                  Opacity[0.3]], 
                 GrayLevel[0], 
                 Thickness[Large]], 
                Line[CompressedData["
1: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
                 "]], 
                Line[CompressedData["
1:eJwtjn001XcAh10UilnoFq1bishBC8eIfLyUkzVzvXUTur9spjdvV97dzJkb
Y7fkkuu3xo1sVja+meUtd7HellTeNXm5Mi85ytuxeydm5+xzznOeP55/PoYh
kT6hykpKSs6r/Odd3OzloCEa7ZU2r/rD1DCqd0pT0UwjocW30VF4BLPmkwYj
d2kssH0Yk59ykBnSKyJSGm/PeGUfaD8KMvL5AhpojF7zKJb3BmJ+v1P8jls0
xtcWj+ydo+DqMxu7XESjkydaf1UpDPNyLlcnloa/cZNFrTAaDgZz0vsxNKIU
I1Fj9dFIkM5vSOLRyHqq8QtzPBrdYresl5E0mhL998W68sDK0G4tOE3DtG3K
3WqRh1feVF4fl8ZS3BaqgjoHT8noR7keNEoeJuRKrOMh2J76R48+jekz1ouZ
fSlQaF9RMdlMo6WG3ZC2jg/LdS+WzzFpiFfCU5Mc+OhhTTho6dJwE5Wrnf2O
D6NHO59Zaq72+q2bvU6cR5Xh+hO2y4Vw0VC33ziRilzZNSPOcCE+9o24w05J
w5elb6wGSwtx9a3rSn92OhKC03Y3fFCI+R5pTcDFLAQl6zLChWJwktP8bujl
QJH9M2fvYAGoI/RLKUsEL/+bRoNmBTDwZAr0FvJht5J9I/PUFVgaLB3cckeM
wgfGtXsE+Zi2CmDW3/0WPzjPdt4uygM3TH+NOLcIt48tCGWXRWiKKWeoPZNg
RVnHR1WQi7K7C5eGHUvwUFXSRc5eRp1i0Sy/pBR1U02247tzUNpX8yRvVxmG
+k+27OwWItS9bKU653tcj22ze7yUhXdH2fbb9MvhVBWttaiRieYjVamf0T/i
gGs/y9pEAK7Mxf8B4yZWVMoqqKE0dOhesorPqAA7sGf6YiAf2zq0it3nfkKQ
Tb2bRmccxHyXzW84lTg5vaaNOR6B+S/ErdHhVYiZM1N5LKag3l3e+Y8hQXO6
GqOaQ+Fv3edyQ2MCj4CM5BwmhTFvOeuQKQG7YLiVY8rF/Scep/IsCTZVdJk8
2hqM9HuT78wdCP5UXqTrVQPAqDE3Oe5H8GsoK663mQ2FqCrxtwsE+t7ltJoT
G5PPe4v++pqAdWEmyo3nhT5txu+aQgLNmBdSi+OeqM32fi9ARMAfOdSoYeOB
uK9mS2aKCRpZ4j2DPc6Y49m07qhb/cuXu9oXALKqoJlDjQQp3f3rqfP70T6d
zoyUEqh3zHxCDtvj1ukuquEewVOF3zchsg8RFRK34NtOMLF2YG/iRQtQkiKD
pC4ClcPuGwWc3fAauA9JL4HsZPW+62PbYXlsU9bUAIGXIEoeEawPlhiVOjKC
Molsw8HJ96HVHdZpN0pg65jEz3+thCXdHPnxcQKl/zflXcsSvCb4F8996sk=

                 "]]}, "Charting`Private`Tag$378867#2"], 
              Annotation[{
                Directive[
                 Opacity[1.], 
                 AbsoluteThickness[1.6], 
                 FaceForm[
                  Opacity[0.3]], 
                 GrayLevel[0], 
                 Thickness[Large]], 
                Line[CompressedData["
1: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
qsn5qzhGj7M1RnqvLIf/AUZrvNo=
                 "]], 
                Line[CompressedData["
1:eJwVj31Q03UAhzdRiCbUwaSGHQTHS2cGgagoeh/GCUqewWS8qQFHAQnnIZhA
vIToCBnyogNvojHEqDEN98XvDzbYWMhbR9rpQAQDDBIl5BYvcjBejuiPzz33
/Pd8HGKTj8ZtYLFY3uv7n9PO6bfPbdGioc7rxVCCGRKDP+6I4mrRnmza6uji
iL75kuwjVlqYjVqm5Pt4QXHwdLGdpRZ1PEnPrgB/HDO77l66SYulnaHppb+H
opNu3r24UYuM9hDNvuIwBFvop2PWfT74KHvy83B06cKzPEy0mE4KKjqgj4DH
tqCpP1hajN8MlBkHjsNki2H/8rIGE6ayvz3mYiD1m5LxZjXoS5VwbrASULj6
T9SpYQ1CnVs/URWn4ILQ7C/pPQ0MSTsWLg5moyCvoDE7T4Mb035rQ0Wi9Y7P
OGmHNXjzVMdElojRYB59to2rQXhWnlDBLYOYcyBU3deCmLDKYZ2dBCPxeveL
5S2wPWKTz52vgChPGJImaIGb7Yr/Vq0Uqtjees7GFhg8I22a264j7k/312eb
mhGdwNskvVIFfpb8R2V0M1rPyNlmj6phPLmo9TdvRm3bfOnovhr4pj13iFKq
oV5a2FZRcwssnz0S38Nq3BpkHpa71CL3Mu+b7AkV4gJq1+6V/QSpeqFekaHC
akTwHnueHLZfZDwyN1Xhfpgy98vKOjztr7nafbUJ0WP80G72bWRWJMQm8ZrQ
a13qmV5wB1+vDM3Oyhph32shC5j7BaPnNygYp0ZIc/jv/xt+F+MvP6ARlQze
xEsfpJxSwlOveTbMZfBWv7xv2YHAaVTHP2fFYNH6sdHBmeDTt+VCx3cZvBIY
7Q59RHBF4fpdHIdB18PAk+VuBCKnF89fsRmIOidXt/sQbF0VjAwZKNjMdtco
IcGHfHZ3wW8USxLlt79+T7BT8rPCvoti8vFA1ctCgq/WPPc2tVMMvsPu2FxM
YOFiPDHeSqEqElhGSggu3fEj+xmKtAuzNTMyAt+qnvKRmxRzqV4PHNUEE5fv
70qRUYwpT8wc0hDIZTKRyQ8UeoPIJllHcMbc3MlVStGQ+CSmpZNgr821lMQS
itOxafMhegLFM3XqUhFFTHWVbeYTgh1qnb24kCJopAvVA+t/OzJz5CIKt2Pv
iadGCOJn3N12n6ewk+Ku1RiB0LtH3JlLYdGf0Oc9TnD8WqAkJIdixbrMGDVB
kMWtPziaSTElUNnlvyb4D3Rfu14=
                 "]]}, "Charting`Private`Tag$378867#3"], {}}}, {}}, {
            Arrowheads[0.015], {
             Arrow[{{-0.1, -0.07}, {-0.1, -0.07}}], 
             
             Arrow[{{-0.1, -0.05600000000000001}, {-0.10252649006622518`, \
-0.05600000000000001}}], 
             Arrow[{{-0.1, -0.042}, {-0.10505298013245033`, -0.042}}], 
             
             Arrow[{{-0.1, -0.027999999999999997`}, {-0.1075794701986755, \
-0.027999999999999997`}}], 
             
             Arrow[{{-0.1, -0.013999999999999999`}, {-0.11010596026490067`, \
-0.013999999999999999`}}], 
             Arrow[{{-0.1, 0.}, {-0.1, 0.}}], 
             
             Arrow[{{-0.1, 0.014000000000000012`}, {-0.11410596026490066`, 
              0.014000000000000012`}}], 
             
             Arrow[{{-0.1, 0.02800000000000001}, {-0.11557947019867551`, 
              0.02800000000000001}}], 
             
             Arrow[{{-0.1, 0.04200000000000001}, {-0.11705298013245033`, 
              0.04200000000000001}}], 
             
             Arrow[{{-0.1, 0.05600000000000002}, {-0.11852649006622518`, 
              0.05600000000000002}}], 
             Arrow[{{-0.1, 0.07}, {-0.12000000000000001`, 0.07}}]}, {
             Arrow[{{0, -0.07}, {0., -0.07}}], 
             
             Arrow[{{0, -0.05600000000000001}, {
               0.010950674157303369`, -0.05600000000000001}}], 
             Arrow[{{0, -0.042}, {0.01905101123595506, -0.042}}], 
             
             Arrow[{{0, -0.027999999999999997`}, {
               0.024301011235955065`, -0.027999999999999997`}}], 
             
             Arrow[{{0, -0.013999999999999999`}, {
               0.026700674157303372`, -0.013999999999999999`}}], 
             Arrow[{{0, 0.}, {0.026250000000000006`, 0.}}], 
             
             Arrow[{{0, 0.014000000000000012`}, {0.02432477064220184, 
               0.014000000000000012`}}], 
             
             Arrow[{{0, 0.02800000000000001}, {0.020737155963302754`, 
               0.02800000000000001}}], 
             
             Arrow[{{0, 0.04200000000000001}, {0.015487155963302754`, 
               0.04200000000000001}}], 
             
             Arrow[{{0, 0.05600000000000002}, {0.008574770642201825, 
               0.05600000000000002}}], 
             Arrow[{{0, 0.07}, {0., 0.07}}]}, {
             Arrow[{{0.1, -0.07}, {0.1, -0.07}}], 
             
             Arrow[{{0.1, -0.05600000000000001}, {
              0.10842418409107821`, -0.05600000000000001}}], 
             Arrow[{{0.1, -0.042}, {0.11399803110350473`, -0.042}}], 
             
             Arrow[{{0.1, -0.027999999999999997`}, {
              0.11672154103727958`, -0.027999999999999997`}}], 
             
             Arrow[{{0.1, -0.013999999999999999`}, {
              0.11659471389240272`, -0.013999999999999999`}}], 
             Arrow[{{0.1, 0.}, {0.11361754966887419`, 0.}}], 
             
             Arrow[{{0.1, 0.014000000000000012`}, {0.11021881037730118`, 
              0.014000000000000012`}}], 
             
             Arrow[{{0.1, 0.02800000000000001}, {0.10515768576462727`, 
              0.02800000000000001}}], 
             
             Arrow[{{0.1, 0.04200000000000001}, {0.09843417583085243, 
              0.04200000000000001}}], 
             
             Arrow[{{0.1, 0.05600000000000002}, {0.09004828057597666, 
              0.05600000000000002}}], 
             Arrow[{{0.1, 0.07}, {0.08, 0.07}}]}, 
            RGBColor[0, 1, 0], 
            Line[{{-0.1, -0.07}, {-0.1, 0.07}}], 
            RGBColor[1, 0, 0], 
            Line[{{0.1, -0.07}, {0.1, 0.07}}]}}, {
          DisplayFunction -> Identity, PlotRangePadding -> {{
              Scaled[0.05], 
              Scaled[0.05]}, {
              Scaled[0.05], 
              Scaled[0.05]}}, PlotRangeClipping -> True, ImagePadding -> All, 
           DisplayFunction -> Identity, Axes -> {True, True}, 
           AxesLabel -> {None, None}, AxesOrigin -> {0, 0}, DisplayFunction :> 
           Identity, FrameLabel -> {{None, None}, {None, None}}, 
           FrameTicks -> {{Automatic, Automatic}, {Automatic, Automatic}}, 
           GridLinesStyle -> Directive[
             GrayLevel[0.5, 0.4]], 
           Method -> {
            "DefaultGraphicsInteraction" -> {
              "Version" -> 1.2, "TrackMousePosition" -> {True, False}, 
               "Effects" -> {
                "Highlight" -> {"ratio" -> 2}, 
                 "HighlightPoint" -> {"ratio" -> 2}, 
                 "Droplines" -> {
                  "freeformCursorMode" -> True, 
                   "placement" -> {"x" -> "All", "y" -> "None"}}}}, 
             "ScalingFunctions" -> None}, 
           PlotRange -> {{-0.12000000000000001`, 
            0.11701723880479975`}, {-0.07, 0.07}}, PlotRangeClipping -> True, 
           PlotRangePadding -> {
             Scaled[0.02], 
             Scaled[0.02]}, Ticks -> {Automatic, Automatic}}], 
         Graphics[{{{{{}, {}, 
              Annotation[{
                Directive[
                 Opacity[1.], 
                 AbsoluteThickness[1.6], 
                 FaceForm[
                  Opacity[0.3]], 
                 GrayLevel[0], 
                 Thickness[Large]], 
                Line[CompressedData["
1:eJwVz31Q03UABnCi0pDlkbw53t8s4Hg53kWCY77gxYUJxLqg5K1NuuRlYgrC
QgTuOORNKGEbMEAYLARZ8rLf9o0HcbHRAfIWCJGtkzdvQwwKjxJqPnfPPff5
87FPSo9i6evp6R3T9dXyea9CQRsptSnSSLA8tMGz5FP4/sXaQM+aBF7aU/x6
nVPq6fFLyxKoQjb5TQIKS2tXhSfUEmw/Ca8T11NYzAu20/9FgiiPlw1UE4Wx
ziH7vAEJDB6ca5kXU+gyGHPKvilBltbxLl1GgXP/D9fUAAkmS+cEMb9RMDzn
7uN5qRuub8WOBu1RyDw/uDqUcxd6CzbKXBsZbr/H+eyMWReidmi8bIYMuwz2
SFnVHTRvjXTZJcnwzbhLW6dzB9KCugUFRTK49Hpx8xvFkM4/imK0y9DWXRiW
a9uO16InIsQqGSJsRNc+kYqgoP9pO6aRwXrF8N6KdyuK5Wo/AU0OE7tQJlN5
GyP3Dpkp3OR4nAatNqkZRTupY+0fyTFlXpAToG4Ew6JWFZAhxyLLdVvxrAFX
ijX869VypJydW76uFsAtIj/AuU8O/hcWpFxdC7V22TxrVg7Lz//JjDO5hYML
mQ8LduR4bpBsVWlYjfebJ34OtCAwEaSIivwrsdLPrO8IJqDfX2cMf1CCt51s
j2UlEMQI/d+wPlEIn6/6LDauESSUXjTWnOZi5r/LU/YtBKwOvjrInIPqYFZY
q87vWjz16n2agcicaJlzK8FqcUCBB8nA+LZns6eI4Ev2zBH7xAyo1tc4we0E
C8etZmnMdPz4a+w7n94h0Hi8rmniXkBrf8jZyh4C2v5Jk9FRNpL/dlMY9xKU
L6X2D3DYcPCxPFqjs9HQgViJGRvCrhe2DX26P9yTwlsJLPBauzc6pARWW/0u
iX8lo6zaoUJJCNx/bwjZtkzE1+n7xvcUBHVp8xOhs0yU91l35v1EcKBHWkE5
MiHa9S3VGya4slNzxpsTg7kbyeH6SoKoQuaoI+1jBLYPDr85QmDAn1buOx6J
XfVV0MYI1ksEXF7caZg6VzWU6awyjf23ZPsUPNLF3IPjBC2Nh7Nzb55E/O5c
kNFDgti+7y7FKxkYpPtJjScJKh7YzoWzj2I+4cOab3UOm6+bcq/zw2Zb8mXT
KYKXz+jjRlPecPCv8jWfJpj2dS7pzHFFEFdsXKtzaIJDfuaqE6IVg5uHZwji
zAOfXxTZ4ILho0mezv5p7o/3uMZweyJUben8g9h3afH8fvwPgRAFDA==
                 "]], 
                Line[CompressedData["
1:eJwVzX1Q03UcB3DWJRDK8oAj2BKEdHkdLeXBNLVPMyC4znTAGJjhGkdzjRoP
d1LNIi9AEYFdg7u1CBCChgjsK6Ejf7/vh4eQ4sGLhyHriA4U5cAjBCcNBfr1
x/ve79df7yClNi7tGRcXl31c/m/PmZTe320MXm0IvzuhcoOL+YPZ2jEGu7Wu
NFgUDMdfMvlV3GbQbYqfmX8gHFZSwpQOO4MN/oa+vdFRsHsszfHTJIOrEbKc
0n4ZmLvfynVy/qw7njlYnAjbifC5d/9m0HEsjjf3nhy2Xhx6cYHzouZoUeRw
EixKDkWGTzE4cym2yjn+PjQ3+Rg67jA461p1Z8+yAkLyu3fbZxkczTJsrnBR
wa7woHSPZQZlO+mr1uJMGK7vj9rqyuKCJmzlvP0MFJtUsc0CFisWD29MFOWB
oDdmaV7M4qPb2JZccgGS3P3XByQsynVnEy776MHc92dYdCKLikTTXxhggMuX
igaUahYFR3zzfRzl8BU56xF4hkWx4GmUkDWC8rA6K1vP/YUm+/7S+T0478Mh
TS2LJ1X+m4zfVkI13z30yXUWabaZ5/ZHNazGYqG4n8W6Tkfp1MEaENEbBbxJ
FttXV14pr6kFZWtDU/oSi7X2tsEyUR1I2YLXdZsopkXXbbTq60EaI5sPElBc
Szq2P9DfDMFb1JGnxBS7Ei25qaYGqL+rcYmTUDw5LZH18hrhjTcV90ZkFEe8
S0Nzzl2Br6+8/ZrzFMXAEc+q6OUmMManb6M6isYvJX7/yFugS1cQIdRTfPSR
cSDzEwtUWkstwlqK7mPm0SdBBPaW6AozOP/rPeQM2kngVqpK2cP5vtQZELOL
wAYffLQ/Urw5GKsuExP4MG0hp6uOYl7P3FrIAQI7vI6A2kyR1xbyckoCgUaN
x61rTRRXDZbPOwoIREoe129upjg3NF55r5DAhO90roKz/Xner1uKCXh2te/x
aKFoLZLykw0EPvVTl39goXj6m6Wah1UEQnt6TzzbSnE5K3wguJ1An6k1Ipnz
tOXEwxiGQGpGFb+Z8/BCnq8WCZQJczrkP1O8+rFNcaOHwONM0Y7GNooZytOO
+GECJe94rW1wVlRXCr6wERBtW7clXKN4dPImVI8TkP9mO7fOWXz8hQsPJgks
/tCpiL9OMcAILV7TBM5nN+03c/YcU43umyGwPfY7rzXOT731zpRZAu0B+fNS
K8UHUiu3CPwHaIzcaQ==
                 "]]}, "Charting`Private`Tag$379616#1"], 
              Annotation[{
                Directive[
                 Opacity[1.], 
                 AbsoluteThickness[1.6], 
                 FaceForm[
                  Opacity[0.3]], 
                 GrayLevel[0], 
                 Thickness[Large]], 
                Line[CompressedData["
1:eJw11nk0ldsbB3BXGZskKlMpZEhFuZRpa9JtkoiUQ2RMKUMi8xmR+bw7s5OQ
oUzHUEKeyA0VSVKiDLnmNJcG+u3++L1r7fWuz9p/7LWevff32WtOnrNwERQQ
EGgm48///9/U4epV7Ek+GA8xFN91zxpf/zZWXznGB+vmLzqGXYuQe6bMieH/
+LAS99p1tyug4bHAKzsH+DCill8q3rQB9YUZKQo+40OmhbGlb4kRaituXBNW
zwe9/DNpu5gHUYlYm/LFRD5omLeqjWraIe+GQQ1PPT70+Fj0vsnxRAvsN2zZ
dL4M1i++F2YT4od83e6ONgaVgollatdRfhDKUfWmmS0vgbQZ0YoBITqa3e7a
Gsstgv4X8u+uP2ai0Hb1/GK1GyArW14mkMtB6lXaIfSsQqAdqGy23BaF8stY
psGrC2D9p82tt/2i0cFVeeFHq/OgRjk3a5gfixRGFlSMbL4G7X+JiwSlxSMp
RRNr6+YcmOSNCDnkJ6DXZ2Fq6mQ2HDelVSsFJ6LOFcwgvYEsiNmZxtuqyUV9
Lhpfm6Z5UH3j3lxGJxe5mz//jzGQDj/TJHK+dXHRbZqWNLMrHTZn36s3f85F
4qeidjFb0uHijC1trpeLbtANcphl6eDdZKW15z8umi6/4sAKTweRl54G8d+4
6Ly0ey9bMR3afm56PSNLIfrLmY5IhzSol/lltdmOQmnOsnVxAykglJowIHqC
QsHD36ftnqVAgFax9GsHCtk796zZ8CAFBvNDw1jOFFrrnBLxsCIF6qoZhxtO
U+i603JL0YgUyDy55N2PixSqOSk5Qd+QAoLP9SXOXqbQSwfxlX6ByXDbtnNS
JplCdQPj+3adS4bMmQ/eTSkU4jm0hixzTobRwNYQ6QwKnXSIfMM/mAwRV3uo
/GwKTZwQLp1WTIapC6G3o0sp9MNe0NS9OQnsd7ycsGyhkJzdD19bqSQQPqTL
+9JKofbf6aZbRZNAaPUgXH5IIUa2kYz0r8sgLqZk9qSdQmOj4fXtby7DJiGb
pL+fUeimj4jYjorL0JfJeVY+SCHzSCmemsVleGT+dXH4dwpxKja2fInH4NSi
EfPuB4W2WXekdTIxmM8r8bf7RaGpGW/PUn8MW+5lper8ppClcZXkqRMYJE7r
iXXMx0ix1cCubyMGLVv15NolGNW+/udjYxsFwndWn3VRxui9mJN8wgIKyrz1
ebEqGOkoRn80EKDgeq+jV+U6jC7qVrSMfuYC93H3j1k1jASd5vmh11xQ0jtW
EL4BI6m6nLbpMi4cE7rrsksXo21nh0MPWnNhPk/a419TjBidLoPiVxOh5tf9
3oY9GN0fi71183Ii3JVgv6v7B6MFv6tiT15KhHob1dmSfRjh9cL6Nb6JEOw+
n88wwyiPlcc9ZZoI4hGKQWNWGD3UHd3ZMpkAp+4OpBQ7kfXT3fPYugkQo+JW
HO+MkUaXhTzSSIAZK3FVLxeMTBYZcWcUEiB/Zf5eTTeMzoQtDT0tlAAeKvoH
Ej0w4jSfv5FdEA/htPumi70xGrZZKa4/HAdqF2SKu4klHk59KXoYByttowIy
fTAyNGoYXF0RB50cMF53HiNqjcdtIUYcXHdhRyr7Y7Rjotb9yeo4mDTxX9oV
jFFW0Ilmd9tYkFmS3MoIwejR2y0VvTtiIa7g6cimUIxmToheMdOIBQujHHN2
GEaHdvEv6HyPAZPp9EF5BkZzC+etE0iOgSLPTzNzHIxovDxWcmc0nHjfL4gj
MIqUCPISr4mG48bj3qqRGFUyDtFCrkaDhqFF2N4oUl+3mS1OXtGgCSFHA6Mx
qtm0783GxdHQMKQ/GxePkUzD2+33914Cu6FcBdEEjLjDXzNuaF+CR2q/+WHE
4qICMwkyl0DxEkvXIxGjX2aSJbbjUVDE6yzRpDAa6NOV/RAZBa+76s+mEh8T
MPHr9oqCocPp2fMxRp1KeztqbaLAWVHFtZu4ycOWw1GLgr1LgmluSRgVzIR9
lGuJBMngidpm4jXyUQf/KouEok1749clY5SGuAUjyZFAO/08sZ84hpNrz3eL
hDQdPWGUipGXVOsDU5FI4C2eX1SRjpGelmSOt2kE4LEL+34Sl1nKzVlvjABb
sZe07RkYqfkrHzNcHgHOq71ftRDL1usuERnhgHXm0MF/M0m999sGZbA5MFj8
PFqAh5H/OeduuicHTITuGOkTv+d6artZccAv0ma2gHioJ2xUW4UDDQOdk75X
yPl2y7VsbmLDG9V9rdnEKLq4pKiIDS+q+LIdxNUlN8W4mA36eYdl1mVhdP1L
C9Cc2ZAneum+GbGSTKfsjgNsGOGXj/oRZxj2+qnqsEm/6GIDcRzz7fqP89iQ
Yt0uOEQskv+V83ySBUpy1Z8Er2IU/uD3YN1TFpQH0LRNiH2WSqZE5LCgaumK
UBrxpI7cpzPRLIj50GDsT+xso2xm4csCPntMroDY6orufIWdLDA7PNtSR/y+
8IBrliYLbn0+odBBHFN5skVpOQvenpOQGSJWhQCN/N9MmG5cXPeRuLE1LkZj
nAm1b48LC2ZjZN+VO13cyQSL95+/LSH+/rrGXLuOCVUP+hLkifF4R3nlNSYM
B0s+USXW+jwitTWeCf3CSdXaxI/mfl2oDWBCnrvbHn1iN7FlPcYnmbA1mxOy
nVhQSt2gcT8TcMWn43uIeatQ5u6/mXAno6R/P7G+utXvllVMKLe7teAQ8bMt
px0PiDLB5+uifnNiL2P6vccfGDDnWn7sMPHCvckqlr0MsCrNDfozX2BZHNHd
xICAx8O7zIh32t8bP1bCALdmn6p9xK/de/a/SmaAYrJZ227iQN93xQ50BuQZ
B8QgYulQIYlhDwbM3Hn3UY+4LFLOx+0IA6SlqwQ2ER+gtLsmjBjwa2dLlTLx
aOYe3bOqDODvU5eUIWYU2KV8kGCAtvoL6YXEqyp8f5z/QYfg/q67s6Tet+9E
0Wbe0IHruXrZNPGRliv1QW108Ht6a+GrP/vXWaX4+yYdlJfyih8QR796yGBk
0eHNsiP/Xf2zXx+/mUb50uHzC6XgaGL72UWFC+3o0OG3vcaX+LuI8oIEUzpM
6bpq/jlPWgrmj5Nk6KBp6+mgTPxI1VVbdh4ddI82GogQu20OpjKnwqG022qs
hZxP3p6Co7kQDvLH8e18Yn2L+tuqheFwpEpxM5v4Ga1L7gY3nLxv1soYEi/0
ERjgu4SDQ0xbfSq5LxczbNxhAZlvD3zgSaxu9gqzJ8KgYdQvxITYwUnsWMyd
MDDPtuoZJPexPdZxMNUpDGZ0at2liAuHln6sLA0Fxb+fl7wi93vgm9HNWkYo
LFu0PeMa8fJFHoGNVqFgu2vujDYxS69RsONnCPh3rBrZSvLBIcZn2eSeEBiU
+tH5geRJn2a+tdqKELi5KlejkNimrTfVZSQYMhjOssuIzRfvVhxgBcOp6KSf
T0k+mSSs2PCsIQjUfo4ahxPXaR3wkkwMAnMt0bcaxFufhFcccgiC/onKqKAU
Ul/JiW0P5gJhNguaxEjercF1pmAQCEsMI+wLST7ydD5E/RIPhJgMBac9xLLP
VNq2vbwI94pvFoVexkhyebxlZcBF0F6atv0lyWPBFEeHwqoAEO5T8dlN8nwo
XTiQ2uQPd9t6qh+S/Lc3NLjTMXcBhlk0D3Pil33nBBa3X4AzO9sXWcWR/Fbo
4USeuQCBfzlZ74/B6N6VG1RIoR/E0w9PT5L+k5tjXuymdB7SE3dsmyX9zeVG
2oDBCm9YeyvFika8TnZcu2rcC9qUb0nUkH44GqnH3FjnBYkvDjh5B2F0yrVL
ZY2jF7Rc7b34OICsv0O+e6H1OZir4ZzZ60vyauO8yashZ4Ajusxdh/TvhSJP
pB49cgXuZh87N1eSh8Oet+q9XaExN/VDCun3Eo3ix/nLXSHWcfvXb3/eByG7
riQ5uMALw89e1xwwkv90S93xsxNsDhxdX38Mow39POOvco4wT2J+9Qh5f2Sc
7ekw6baG0qHylWs1MCov0xnucxOB/wHcy1a1
                 "]], 
                Line[CompressedData["
1:eJwtj3kwnAcAxW0mrogaVjSuNSKOZlgJmYgjXols0EncLFpWlB1EHG1cIVvN
ImywfGu6FXVWsyQS36bbInEkIkzrSByLlrSljqoRZ12bUZ3pm3nz++P983uG
V+K8Iw7Iycl9uN//GJIz33bBTABx9ek/J9iKaBi4nGuvIUBKp89Th3x//FBl
6RutLsCGpzdl4XIAZt2m6F1qAizHePBcBpnoqlfZijsswEyVW8X2WDBSHl4b
/1pegHmFiulTayyIW6+POW4SGE4kVMrk2EjdzenuGyXgZ9xm0ZSfgAaff9RG
pATid6bj51oScLcwOf/XEQJ5A8rfa80noEosNp0dItCW6md33TkRAbUq4ysD
BMz6FxlWm4m4es7VcrqbgCxJl/WA9Tnszi7WWfxIoLonpbjSOhkRzN9GwwgC
SzHWm7fH0yHjNTrrFxPolHg+yTyUgW9zjNpH+QSEe7GcNPsMHBtdWnQrIHCe
ECle/SYDE1IdPaPc/b1F/6hH2E24BPb0iG4ScFJWsj3yFwdLUanBlCgC7j7X
Wj3TM1HVYh05Z0egbNl5b4LHha6CYeidkWKsj7ZLAgvykFXW36EeXYyAG5m+
9Zp8yOafUyLmisDyL51sp+3/4HwRbMoqgs4lrSzNjRLE7M1zTAb4oOvILui2
CvHYT++naSM+lqwCtVqe3cUuK6adulSAULa2vLC4HFSl5eGhoHy0fSaiKL6q
BOeg7o3sbh5qn20U/uFQDXPF+I5DRnlo3tk8UVJdA61wmveE423UjEv6BCa1
ENUWDJayshHBqN17zP8O9mOl0cJzXLxjetoaaItw0uWIe6ril3ju38gJL61D
RLj7w94WDkKnnPy6Kfexl7V5oOhVGoaohVbJOQ+QwTW0vn8wCQZDqhWMtQYw
7v28qmCQAGGG09G3AY8wkMjVUaezsR4p7E2IbQQ9toN7coYJJaloeNeQhNFF
XuadW0xsUV9vGxqTeCv/UfOYIRNzXts0VzMS6afqxp1CAvCyzy1KQCeh4fT7
pL/UD9yuhXfm9iSMnW3XeZ3eoEjMTUN8SfCFFqTLcTfsEI2pHdkk7qXK2Cqf
uGLh9Vj5bC6Jr45LBOKSixhXo7w4nE/CTTrtUa3AQBPP671AgkRF/ZlLinPO
SLq1Wr1SQUKP/ml3/3lbrCWe7j3WTMKbZr8aTdpgqvHjFdenJCYrZ5R6aGcw
uMTVimsnwQiRbL/YsoI4eoT1pIuETQpnkPD5APFXkjZ8BklYZkXO/HLCBKzK
cp20ERLOTesDNRQjeLx5icoxEj76qsykYG3Qg97PW3xDQhauaU9VoIImxCON
KRJby0Ol7FBlqErZw2dn9n2CbBxYYduOMip/O2SehNz/WfRqomX9TeJf/DDn
1A==
                 "]]}, "Charting`Private`Tag$379616#2"], 
              Annotation[{
                Directive[
                 Opacity[1.], 
                 AbsoluteThickness[1.6], 
                 FaceForm[
                  Opacity[0.3]], 
                 GrayLevel[0], 
                 Thickness[Large]], 
                Line[CompressedData["
1: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
i35roYK/dqLekY3K8tQHei7xwf8DOJ0S
                 "]], 
                Line[CompressedData["
1:eJwVx31Q03UAx/GNK/AufApuwUw8QLA4o3ho4fnwSU8WVPKgbDxowKE4wyOC
SnCQafEw2CHoxCbReNitA4HcF75jDz+EiIcAoWSAjlBPCMEmoTSmDgSzP973
urd7Utr+ZDsWixX0ov9dSTs7LhYxaKoLnLolcoB+xmaXdZRBZ5p9m4e3B4Q5
66cqjzBwmFiTnrc9EL/7RMVPJzKoc5X18/jB6KrYEhAWy2DxXUFmyTUBMj35
F3tjGGR1HmjdUSzEmRTP9j0v3hqxn20Oi4ZiGzeJF83g0fFw6V5jDB6PP53l
Chjcqw6ttJkOYrOfmDMWweC+feVffpZEfLmxWPdmCIORDNkrFSwRzMuWoNd5
DARebW/pitORnZRweGk9g7njAU8kYzkIL4jp3DVjQMWjPc9vSXNR3dgUc1lv
wMLNdk3s2SIsD+1TmaUGRGefibrsXIp+jz70CA1IFJbfbneToZAU7PzT3QDu
Pk6es7UM5zrqe2+b9fDlPgvecFWOXfaRzbp6Peb8YzmGjh9wUHs3tShVjwSR
68vy8wpc9OrLPu+tR9sXtWyH61XoD72ZZb2rg6rDWjKxowYLX+W9JLukg37x
iU9ZjRKBHw+urQnRQTmmGbzgrYL8wxXBNZsWyXzV8+bSn/Ag2E/QVaXFckzE
tk2utZD/4ehiCNbiV6H6m8PldeheqF8u/qcFCZO7Bb+x6xGXavfJsaIWDDuV
+GcWNGBJ4a7N9WnBpuHVlXxLI9aVW3KT+zSQf73b5WH0FawaP50vOaTBwlH5
QHqqGh/ltOxtsFCsulE7suROwDVeHb8+T/HUacjm7kVwakkdYH1IMRNpcwt5
g2CpN8575yxFz2Dopxd8CUxhrZz+KYrcbvPy1u0ELvZaT9MoBVuzdUt8FIHB
QzrXpaVYlKlP/pJPMGV2VE5oKMxDJsV0IUF1vthlpZlibC27y7GYYCTIlc9T
U+ikkWtiZQQbJEcalLUUJ777t2a+kuAdo78q4xKFJSNwwENPIBlOPyb9nmJS
fWg+pJUgo7ZiVllGYZzL5aS1E6wMaN4bOUfRlDKayHQTLLIem/yKKD5POmE9
YCT4WyFThkgoEqsUXPEoQcq6jW8n5FOE3+lBlYlg82cWifRbCt+414pm7xDE
x70fXX2awk2OK69OEvhwT063nKJYfUM0EnSPoLDxR95ADsUzp1Jb/H2CbOef
P5gQU8xG6tzyHhD8B83UyT0=
                 "]]}, "Charting`Private`Tag$379616#3"], {}}}, {}}, {
            Arrowheads[0.015], {
             Arrow[{{-0.1, -0.07}, {-0.1, -0.07}}], 
             
             Arrow[{{-0.1, -0.05600000000000001}, {-0.10252649006622518`, \
-0.05600000000000001}}], 
             Arrow[{{-0.1, -0.042}, {-0.10505298013245033`, -0.042}}], 
             
             Arrow[{{-0.1, -0.027999999999999997`}, {-0.1075794701986755, \
-0.027999999999999997`}}], 
             
             Arrow[{{-0.1, -0.013999999999999999`}, {-0.11010596026490067`, \
-0.013999999999999999`}}], 
             Arrow[{{-0.1, 0.}, {-0.1, 0.}}], 
             
             Arrow[{{-0.1, 0.014000000000000012`}, {-0.11410596026490066`, 
              0.014000000000000012`}}], 
             
             Arrow[{{-0.1, 0.02800000000000001}, {-0.11557947019867551`, 
              0.02800000000000001}}], 
             
             Arrow[{{-0.1, 0.04200000000000001}, {-0.11705298013245033`, 
              0.04200000000000001}}], 
             
             Arrow[{{-0.1, 0.05600000000000002}, {-0.11852649006622518`, 
              0.05600000000000002}}], 
             Arrow[{{-0.1, 0.07}, {-0.12000000000000001`, 0.07}}]}, {
             Arrow[{{0, -0.07}, {0., -0.07}}], 
             
             Arrow[{{0, -0.05600000000000001}, {
               0.008213005617977527, -0.05600000000000001}}], 
             Arrow[{{0, -0.042}, {0.014288258426966296`, -0.042}}], 
             
             Arrow[{{0, -0.027999999999999997`}, {
               0.0182257584269663, -0.027999999999999997`}}], 
             
             Arrow[{{0, -0.013999999999999999`}, {
               0.020025505617977533`, -0.013999999999999999`}}], 
             Arrow[{{0, 0.}, {0.019687500000000007`, 0.}}], 
             
             Arrow[{{0, 0.014000000000000012`}, {0.01824357798165138, 
               0.014000000000000012`}}], 
             
             Arrow[{{0, 0.02800000000000001}, {0.015552866972477066`, 
               0.02800000000000001}}], 
             Arrow[{{0, 0.04200000000000001}, {0.011615366972477066`, 
               0.04200000000000001}}], 
             
             Arrow[{{0, 0.05600000000000002}, {0.00643107798165137, 
               0.05600000000000002}}], 
             Arrow[{{0, 0.07}, {0., 0.07}}]}, {
             Arrow[{{0.1, -0.07}, {0.1, -0.07}}], 
             
             Arrow[{{0.1, -0.05600000000000001}, {
              0.10568651555175237`, -0.05600000000000001}}], 
             Arrow[{{0.1, -0.042}, {0.10923527829451597`, -0.042}}], 
             
             Arrow[{{0.1, -0.027999999999999997`}, {
              0.11064628822829081`, -0.027999999999999997`}}], 
             
             Arrow[{{0.1, -0.013999999999999999`}, {
              0.10991954535307688`, -0.013999999999999999`}}], 
             Arrow[{{0.1, 0.}, {0.10705504966887418`, 0.}}], 
             
             Arrow[{{0.1, 0.014000000000000012`}, {0.10413761771675072`, 
              0.014000000000000012`}}], 
             
             Arrow[{{0.1, 0.02800000000000001}, {0.09997339677380157, 
              0.02800000000000001}}], 
             
             Arrow[{{0.1, 0.04200000000000001}, {0.09456238684002674, 
              0.04200000000000001}}], 
             
             Arrow[{{0.1, 0.05600000000000002}, {0.08790458791542621, 
              0.05600000000000002}}], 
             Arrow[{{0.1, 0.07}, {0.08, 0.07}}]}, 
            RGBColor[0, 1, 0], 
            Line[{{-0.1, -0.07}, {-0.1, 0.07}}], 
            RGBColor[1, 0, 0], 
            Line[{{0.1, -0.07}, {0.1, 0.07}}]}}, {
          DisplayFunction -> Identity, PlotRangePadding -> {{
              Scaled[0.05], 
              Scaled[0.05]}, {
              Scaled[0.05], 
              Scaled[0.05]}}, PlotRangeClipping -> True, ImagePadding -> All, 
           DisplayFunction -> Identity, Axes -> {True, True}, 
           AxesLabel -> {None, None}, AxesOrigin -> {0, 0}, DisplayFunction :> 
           Identity, FrameLabel -> {{None, None}, {None, None}}, 
           FrameTicks -> {{Automatic, Automatic}, {Automatic, Automatic}}, 
           GridLinesStyle -> Directive[
             GrayLevel[0.5, 0.4]], 
           Method -> {
            "DefaultGraphicsInteraction" -> {
              "Version" -> 1.2, "TrackMousePosition" -> {True, False}, 
               "Effects" -> {
                "Highlight" -> {"ratio" -> 2}, 
                 "HighlightPoint" -> {"ratio" -> 2}, 
                 "Droplines" -> {
                  "freeformCursorMode" -> True, 
                   "placement" -> {"x" -> "All", "y" -> "None"}}}}, 
             "ScalingFunctions" -> None}, 
           PlotRange -> {{-0.12000000000000001`, 
            0.11067366635759632`}, {-0.07, 0.07}}, PlotRangeClipping -> True, 
           PlotRangePadding -> {
             Scaled[0.02], 
             Scaled[0.02]}, Ticks -> {Automatic, Automatic}}], 
         Graphics[{{{{{}, {}, 
              Annotation[{
                Directive[
                 Opacity[1.], 
                 AbsoluteThickness[1.6], 
                 FaceForm[
                  Opacity[0.3]], 
                 GrayLevel[0], 
                 Thickness[Large]], 
                Line[CompressedData["
1:eJwVz31Q03UABnCi0pDlkbw53t8s4Hg53kWCY77gxYUJxLqg5K1NuuRlYgrC
QgTuOORNKGEbMEAYLARZ8rLf9o0HcbHRAfIWCJGtkzdvQwwKjxJqPnfPPff5
87FPSo9i6evp6R3T9dXyea9CQRsptSnSSLA8tMGz5FP4/sXaQM+aBF7aU/x6
nVPq6fFLyxKoQjb5TQIKS2tXhSfUEmw/Ca8T11NYzAu20/9FgiiPlw1UE4Wx
ziH7vAEJDB6ca5kXU+gyGHPKvilBltbxLl1GgXP/D9fUAAkmS+cEMb9RMDzn
7uN5qRuub8WOBu1RyDw/uDqUcxd6CzbKXBsZbr/H+eyMWReidmi8bIYMuwz2
SFnVHTRvjXTZJcnwzbhLW6dzB9KCugUFRTK49Hpx8xvFkM4/imK0y9DWXRiW
a9uO16InIsQqGSJsRNc+kYqgoP9pO6aRwXrF8N6KdyuK5Wo/AU0OE7tQJlN5
GyP3Dpkp3OR4nAatNqkZRTupY+0fyTFlXpAToG4Ew6JWFZAhxyLLdVvxrAFX
ijX869VypJydW76uFsAtIj/AuU8O/hcWpFxdC7V22TxrVg7Lz//JjDO5hYML
mQ8LduR4bpBsVWlYjfebJ34OtCAwEaSIivwrsdLPrO8IJqDfX2cMf1CCt51s
j2UlEMQI/d+wPlEIn6/6LDauESSUXjTWnOZi5r/LU/YtBKwOvjrInIPqYFZY
q87vWjz16n2agcicaJlzK8FqcUCBB8nA+LZns6eI4Ev2zBH7xAyo1tc4we0E
C8etZmnMdPz4a+w7n94h0Hi8rmniXkBrf8jZyh4C2v5Jk9FRNpL/dlMY9xKU
L6X2D3DYcPCxPFqjs9HQgViJGRvCrhe2DX26P9yTwlsJLPBauzc6pARWW/0u
iX8lo6zaoUJJCNx/bwjZtkzE1+n7xvcUBHVp8xOhs0yU91l35v1EcKBHWkE5
MiHa9S3VGya4slNzxpsTg7kbyeH6SoKoQuaoI+1jBLYPDr85QmDAn1buOx6J
XfVV0MYI1ksEXF7caZg6VzWU6awyjf23ZPsUPNLF3IPjBC2Nh7Nzb55E/O5c
kNFDgti+7y7FKxkYpPtJjScJKh7YzoWzj2I+4cOab3UOm6+bcq/zw2Zb8mXT
KYKXz+jjRlPecPCv8jWfJpj2dS7pzHFFEFdsXKtzaIJDfuaqE6IVg5uHZwji
zAOfXxTZ4ILho0mezv5p7o/3uMZweyJUben8g9h3afH8fvwPgRAFDA==
                 "]], 
                Line[CompressedData["
1:eJwVzX1Q03UcB3DWJRDK8oAj2BKEdHkdLeXBNLVPMyC4znTAGJjhGkdzjRoP
d1LNIi9AEYFdg7u1CBCChgjsK6Ejf7/vh4eQ4sGLhyHriA4U5cAjBCcNBfr1
x/ve79df7yClNi7tGRcXl31c/m/PmZTe320MXm0IvzuhcoOL+YPZ2jEGu7Wu
NFgUDMdfMvlV3GbQbYqfmX8gHFZSwpQOO4MN/oa+vdFRsHsszfHTJIOrEbKc
0n4ZmLvfynVy/qw7njlYnAjbifC5d/9m0HEsjjf3nhy2Xhx6cYHzouZoUeRw
EixKDkWGTzE4cym2yjn+PjQ3+Rg67jA461p1Z8+yAkLyu3fbZxkczTJsrnBR
wa7woHSPZQZlO+mr1uJMGK7vj9rqyuKCJmzlvP0MFJtUsc0CFisWD29MFOWB
oDdmaV7M4qPb2JZccgGS3P3XByQsynVnEy776MHc92dYdCKLikTTXxhggMuX
igaUahYFR3zzfRzl8BU56xF4hkWx4GmUkDWC8rA6K1vP/YUm+/7S+T0478Mh
TS2LJ1X+m4zfVkI13z30yXUWabaZ5/ZHNazGYqG4n8W6Tkfp1MEaENEbBbxJ
FttXV14pr6kFZWtDU/oSi7X2tsEyUR1I2YLXdZsopkXXbbTq60EaI5sPElBc
Szq2P9DfDMFb1JGnxBS7Ei25qaYGqL+rcYmTUDw5LZH18hrhjTcV90ZkFEe8
S0Nzzl2Br6+8/ZrzFMXAEc+q6OUmMManb6M6isYvJX7/yFugS1cQIdRTfPSR
cSDzEwtUWkstwlqK7mPm0SdBBPaW6AozOP/rPeQM2kngVqpK2cP5vtQZELOL
wAYffLQ/Urw5GKsuExP4MG0hp6uOYl7P3FrIAQI7vI6A2kyR1xbyckoCgUaN
x61rTRRXDZbPOwoIREoe129upjg3NF55r5DAhO90roKz/Xner1uKCXh2te/x
aKFoLZLykw0EPvVTl39goXj6m6Wah1UEQnt6TzzbSnE5K3wguJ1An6k1Ipnz
tOXEwxiGQGpGFb+Z8/BCnq8WCZQJczrkP1O8+rFNcaOHwONM0Y7GNooZytOO
+GECJe94rW1wVlRXCr6wERBtW7clXKN4dPImVI8TkP9mO7fOWXz8hQsPJgks
/tCpiL9OMcAILV7TBM5nN+03c/YcU43umyGwPfY7rzXOT731zpRZAu0B+fNS
K8UHUiu3CPwHaIzcaQ==
                 "]]}, "Charting`Private`Tag$380375#1"], 
              Annotation[{
                Directive[
                 Opacity[1.], 
                 AbsoluteThickness[1.6], 
                 FaceForm[
                  Opacity[0.3]], 
                 GrayLevel[0], 
                 Thickness[Large]], 
                Line[CompressedData["
1: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
                 "]], 
                Line[CompressedData["
1:eJwtjns41XcAhx0Uwix0QnNKkcuD5vIYkY9LeVgzx/Uk4mQTKrnl7iTLcfkZ
mcucWeNENisb38xyy1ks1ZLKXZPLkbnkketj50ysPc8+z/M+7x/vPx+toAiP
YEkJCQm7d/zng4E5m/7jFHpqzV+NhMhgSjVMQdxOIaHDs9Um1wfLhnMak/co
rDE9aHOfspAVNFRIBBQWz7nlHO05ATL5+RpaKExddykXDflh9Yht/P7bFGa2
l0+arLDh4LEcu1lGoS+6UP6aRAhWRYGByrEUvHXajBpzo2CtsSLojKEQKZ6M
nG6OQoJgdWdSNAXqqdwv9JkoDPAcqZcRFNoSvQ/HOkSDkanUVXKWgl73vJPp
ejReubOLhgMpbMTtYdewL8KVP/VRgQuFiocJBXyzeHD3pf4xqE5h4ZzZetZw
CsRKX0vpqlHoaGC2pO3gwHjHi82LdAq8rfDUJGsOBhmz1ooqFBwLq2XOf8eB
9qMDz4wV3vVmTTW305dQpyV/2mIzG/Zysla7ZlNRILyuzZrIxseeF+4yU9Jw
ufKN6VhlNq4tOmyN5KQj4VSafssH2VgdFDT45lHwT1ahhedmgZWc5nVTNR/i
nJ9ZJmOZYPuUvhQwCuHmfUt7zCATGq50rupaMSy3cm5mhWXAWGPj2J67PHzz
QKfxEJeLBVNfevO9b/GD3XLfnbJ0BIaob+MVlOHOybVc4VdX0BZTTZN5xseW
pLKHNPcLVN1buzphU4GH0vx+cj4NTeJ1g+KKSjTNt1nM6F9G5XDDk6KDVRgf
Ce04MMBBsFPVVn3+97gR2235eCMJb08wrfaqV8O2LkpxXS4B7T51qZ+V/oij
DiMMM91YBArtvR/QbmFLqqqGPR6FXpWrpvGZNWD6DS7k+YVjb69iudPKT/A3
b3aU6zsDHsde7Q2rFqEL27rpMwFYPcPrigqvQ8yKgdRjHhOyA9V9/2gRtKfL
0OpZTPyt8lykpUPg4puZnE9nYtpdxHDWI2CWTHSx9NzQ+cQlrMiYYHdNv+4j
TVek3597a2hN8KfkemmztAtoDYa6AV4EvwYz4oba7SAurEv8LYNA3b26VMbW
DnPPh8r+yiZgZCxFOkYDw0q03xVyCRRiXgiMAo6gMcf9Pd9CAs6kc6ucuRXi
rixXLJUTtDJ4h8YGP8RKtHnX/qZ3fzkiB6uSQxDW+S85txKkDIzIsy8ZoWch
nR4hIJDtXfqEHNfH7bP97Jb7BE/FXl8GCfchMihuzbOHYHb7qElinibY/DKN
pH4CqeNOu7gsdbiNdoI/RCAMrT98Y/p9GJ/cTc2PErhxI0UXTsmBwUOtspCg
ii/ceWxOAooDIX2WUwQWNkmc4teLthsq+aKAGQKJ/zfv3sjgvib4F+GM59g=

                 "]]}, "Charting`Private`Tag$380375#2"], 
              Annotation[{
                Directive[
                 Opacity[1.], 
                 AbsoluteThickness[1.6], 
                 FaceForm[
                  Opacity[0.3]], 
                 GrayLevel[0], 
                 Thickness[Large]], 
                Line[CompressedData["
1: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
0nwN7oDzSvg/h5kS+g==
                 "]], 
                Line[CompressedData["
1:eJwVi2lQ1GUAh3ehIAdXJ44ltgZnKQENYcLNQBh+wSyIMSj3USnEOWDKkWiC
DpqgCS3XYq4LLlcrbCLwwru7/78QhIRQiMilMIPMgCiGiCBuypXRh2eeeT48
wqikgFg9DofjtM7/3nhDaZTGsmhUiabG4g2xIbPbvZBh0ZFk0GplbYX7esU+
LzQsDCc2pWS7iLDIc3Koa2KhspD+tcvLEw6OdBfvOovlT4OP5/cEw7YoUyer
ZfF9R2CLqyQEjV1HJR+tt84vgDuzLxRpTWPeLtdYzB/anyseCEOzpPJZnIrF
o4q9ZUsjX0Hsa/Bco2TxxKDs4SeLkfB7vaPfWcFiKFVqVMqJxxf/rhn35LEI
3tq6g5GkIDVZ+/hAMou5Qztf/Th6EuaSbXc5vixK5z3ejOVm4c9LgqvjNixe
3m9Th+flYI/cddhEn0VoxpmgX00LYLR73/bBEQaRIfIHbZZSiFZdfezqGQh8
+dmmuou4wtV388xiYC9Y9Xz/Nxk6VXe0sYEM5hzD+TfaS+AnLZxXfMggIt7i
bVmRAjN9fwccfaZF63c1XMO75ZBv0+xUMloo23X5E66VqE77eLrrBy3Y5Vfb
L1ZWIeHANz/pe2lRNaruLbZWgug//ExgpEWsl/JNU8FVuA0krjzo1mAtzM95
i0UN+B4VEYnZGtwMaciMlqvQZKyOCRJrEDHpHtzFvYbdnldCY1fUGDTJdzx+
vhZ57nEZfLUaWwZ5ZV6L1+FGpiLMjqghO+X+3vPQetj1TYUxlmq8jJPdTjnc
gBjrhrr0AYp37tUMrQgJ3u1oThP2U7w26V8SbiXomWWNu/sopv2XLL1tCWKm
JXdMeylu9e5NKLYnsDtR7FvbRZHVObNm50LA3/xBwmALBVdtZ3MwiCDoLTO+
XjXFsrThxO/nCIo8UkuqlBQz/SOKxxcIxnk3/xH/QjG6mfvHRgmB3MfZ4XwF
BZPrvylcSqCKPle9oZTi2NkXlQtlBEKDErVBIcViqui2FUtgayaUK/MpJhu+
XvBuIXAll4PEeRQDc1n8pDaCnIIonzO5FI2Jw5HNnQQtTwM+X8qmSI46pgsc
WP+jDw/9nEURWa4QpA8TlMenu4nOUuwfv4XyEQKt+bfFR05T2H9pnjM7ThDc
4XfaKJPCUoZ640kCzqqNR80pCt69+CGnRwRM+8Ko+CTFqknB0sEnBBmmdXsm
0ilm/RnL7KcE/wFzLbg2
                 "]]}, "Charting`Private`Tag$380375#3"], {}}}, {}}, {
            Arrowheads[0.015], {
             Arrow[{{-0.1, -0.07}, {-0.1, -0.07}}], 
             
             Arrow[{{-0.1, -0.05600000000000001}, {-0.10252649006622518`, \
-0.05600000000000001}}], 
             Arrow[{{-0.1, -0.042}, {-0.10505298013245033`, -0.042}}], 
             
             Arrow[{{-0.1, -0.027999999999999997`}, {-0.1075794701986755, \
-0.027999999999999997`}}], 
             
             Arrow[{{-0.1, -0.013999999999999999`}, {-0.11010596026490067`, \
-0.013999999999999999`}}], 
             Arrow[{{-0.1, 0.}, {-0.1, 0.}}], 
             
             Arrow[{{-0.1, 0.014000000000000012`}, {-0.11410596026490066`, 
              0.014000000000000012`}}], 
             
             Arrow[{{-0.1, 0.02800000000000001}, {-0.11557947019867551`, 
              0.02800000000000001}}], 
             
             Arrow[{{-0.1, 0.04200000000000001}, {-0.11705298013245033`, 
              0.04200000000000001}}], 
             
             Arrow[{{-0.1, 0.05600000000000002}, {-0.11852649006622518`, 
              0.05600000000000002}}], 
             Arrow[{{-0.1, 0.07}, {-0.12000000000000001`, 0.07}}]}, {
             Arrow[{{0, -0.07}, {0., -0.07}}], 
             
             Arrow[{{0, -0.05600000000000001}, {
               0.005475337078651684, -0.05600000000000001}}], 
             Arrow[{{0, -0.042}, {0.00952550561797753, -0.042}}], 
             
             Arrow[{{0, -0.027999999999999997`}, {
               0.012150505617977533`, -0.027999999999999997`}}], 
             
             Arrow[{{0, -0.013999999999999999`}, {
               0.013350337078651686`, -0.013999999999999999`}}], 
             Arrow[{{0, 0.}, {0.013125000000000003`, 0.}}], 
             
             Arrow[{{0, 0.014000000000000012`}, {0.01216238532110092, 
               0.014000000000000012`}}], 
             
             Arrow[{{0, 0.02800000000000001}, {0.010368577981651377`, 
               0.02800000000000001}}], 
             
             Arrow[{{0, 0.04200000000000001}, {0.007743577981651377, 
               0.04200000000000001}}], 
             
             Arrow[{{0, 0.05600000000000002}, {0.004287385321100913, 
               0.05600000000000002}}], 
             Arrow[{{0, 0.07}, {0., 0.07}}]}, {
             Arrow[{{0.1, -0.07}, {0.1, -0.07}}], 
             
             Arrow[{{0.1, -0.05600000000000001}, {
              0.10294884701242653`, -0.05600000000000001}}], 
             Arrow[{{0.1, -0.042}, {0.10447252548552721`, -0.042}}], 
             
             Arrow[{{0.1, -0.027999999999999997`}, {
              0.10457103541930204`, -0.027999999999999997`}}], 
             
             Arrow[{{0.1, -0.013999999999999999`}, {
              0.10324437681375104`, -0.013999999999999999`}}], 
             Arrow[{{0.1, 0.}, {0.10049254966887418`, 0.}}], 
             
             Arrow[{{0.1, 0.014000000000000012`}, {0.09805642505620026, 
              0.014000000000000012`}}], 
             
             Arrow[{{0.1, 0.02800000000000001}, {0.09478910778297589, 
              0.02800000000000001}}], 
             
             Arrow[{{0.1, 0.04200000000000001}, {0.09069059784920105, 
              0.04200000000000001}}], 
             
             Arrow[{{0.1, 0.05600000000000002}, {0.08576089525487575, 
              0.05600000000000002}}], 
             Arrow[{{0.1, 0.07}, {0.08, 0.07}}]}, 
            RGBColor[0, 1, 0], 
            Line[{{-0.1, -0.07}, {-0.1, 0.07}}], 
            RGBColor[1, 0, 0], 
            Line[{{0.1, -0.07}, {0.1, 0.07}}]}}, {
          DisplayFunction -> Identity, PlotRangePadding -> {{
              Scaled[0.05], 
              Scaled[0.05]}, {
              Scaled[0.05], 
              Scaled[0.05]}}, PlotRangeClipping -> True, ImagePadding -> All, 
           DisplayFunction -> Identity, Axes -> {True, True}, 
           AxesLabel -> {None, None}, AxesOrigin -> {0, 0}, DisplayFunction :> 
           Identity, FrameLabel -> {{None, None}, {None, None}}, 
           FrameTicks -> {{Automatic, Automatic}, {Automatic, Automatic}}, 
           GridLinesStyle -> Directive[
             GrayLevel[0.5, 0.4]], 
           Method -> {
            "DefaultGraphicsInteraction" -> {
              "Version" -> 1.2, "TrackMousePosition" -> {True, False}, 
               "Effects" -> {
                "Highlight" -> {"ratio" -> 2}, 
                 "HighlightPoint" -> {"ratio" -> 2}, 
                 "Droplines" -> {
                  "freeformCursorMode" -> True, 
                   "placement" -> {"x" -> "All", "y" -> "None"}}}}, 
             "ScalingFunctions" -> None}, 
           PlotRange -> {{-0.12000000000000001`, 
            0.10470333063156392`}, {-0.07, 0.07}}, PlotRangeClipping -> True, 
           PlotRangePadding -> {
             Scaled[0.02], 
             Scaled[0.02]}, Ticks -> {Automatic, Automatic}}], 
         Graphics[{{{{{}, {}, 
              Annotation[{
                Directive[
                 Opacity[1.], 
                 AbsoluteThickness[1.6], 
                 FaceForm[
                  Opacity[0.3]], 
                 GrayLevel[0], 
                 Thickness[Large]], 
                Line[CompressedData["
1:eJwVz31Q03UABnCi0pDlkbw53t8s4Hg53kWCY77gxYUJxLqg5K1NuuRlYgrC
QgTuOORNKGEbMEAYLARZ8rLf9o0HcbHRAfIWCJGtkzdvQwwKjxJqPnfPPff5
87FPSo9i6evp6R3T9dXyea9CQRsptSnSSLA8tMGz5FP4/sXaQM+aBF7aU/x6
nVPq6fFLyxKoQjb5TQIKS2tXhSfUEmw/Ca8T11NYzAu20/9FgiiPlw1UE4Wx
ziH7vAEJDB6ca5kXU+gyGHPKvilBltbxLl1GgXP/D9fUAAkmS+cEMb9RMDzn
7uN5qRuub8WOBu1RyDw/uDqUcxd6CzbKXBsZbr/H+eyMWReidmi8bIYMuwz2
SFnVHTRvjXTZJcnwzbhLW6dzB9KCugUFRTK49Hpx8xvFkM4/imK0y9DWXRiW
a9uO16InIsQqGSJsRNc+kYqgoP9pO6aRwXrF8N6KdyuK5Wo/AU0OE7tQJlN5
GyP3Dpkp3OR4nAatNqkZRTupY+0fyTFlXpAToG4Ew6JWFZAhxyLLdVvxrAFX
ijX869VypJydW76uFsAtIj/AuU8O/hcWpFxdC7V22TxrVg7Lz//JjDO5hYML
mQ8LduR4bpBsVWlYjfebJ34OtCAwEaSIivwrsdLPrO8IJqDfX2cMf1CCt51s
j2UlEMQI/d+wPlEIn6/6LDauESSUXjTWnOZi5r/LU/YtBKwOvjrInIPqYFZY
q87vWjz16n2agcicaJlzK8FqcUCBB8nA+LZns6eI4Ev2zBH7xAyo1tc4we0E
C8etZmnMdPz4a+w7n94h0Hi8rmniXkBrf8jZyh4C2v5Jk9FRNpL/dlMY9xKU
L6X2D3DYcPCxPFqjs9HQgViJGRvCrhe2DX26P9yTwlsJLPBauzc6pARWW/0u
iX8lo6zaoUJJCNx/bwjZtkzE1+n7xvcUBHVp8xOhs0yU91l35v1EcKBHWkE5
MiHa9S3VGya4slNzxpsTg7kbyeH6SoKoQuaoI+1jBLYPDr85QmDAn1buOx6J
XfVV0MYI1ksEXF7caZg6VzWU6awyjf23ZPsUPNLF3IPjBC2Nh7Nzb55E/O5c
kNFDgti+7y7FKxkYpPtJjScJKh7YzoWzj2I+4cOab3UOm6+bcq/zw2Zb8mXT
KYKXz+jjRlPecPCv8jWfJpj2dS7pzHFFEFdsXKtzaIJDfuaqE6IVg5uHZwji
zAOfXxTZ4ILho0mezv5p7o/3uMZweyJUben8g9h3afH8fvwPgRAFDA==
                 "]], 
                Line[CompressedData["
1:eJwVzX1Q03UcB3DWJRDK8oAj2BKEdHkdLeXBNLVPMyC4znTAGJjhGkdzjRoP
d1LNIi9AEYFdg7u1CBCChgjsK6Ejf7/vh4eQ4sGLhyHriA4U5cAjBCcNBfr1
x/ve79df7yClNi7tGRcXl31c/m/PmZTe320MXm0IvzuhcoOL+YPZ2jEGu7Wu
NFgUDMdfMvlV3GbQbYqfmX8gHFZSwpQOO4MN/oa+vdFRsHsszfHTJIOrEbKc
0n4ZmLvfynVy/qw7njlYnAjbifC5d/9m0HEsjjf3nhy2Xhx6cYHzouZoUeRw
EixKDkWGTzE4cym2yjn+PjQ3+Rg67jA461p1Z8+yAkLyu3fbZxkczTJsrnBR
wa7woHSPZQZlO+mr1uJMGK7vj9rqyuKCJmzlvP0MFJtUsc0CFisWD29MFOWB
oDdmaV7M4qPb2JZccgGS3P3XByQsynVnEy776MHc92dYdCKLikTTXxhggMuX
igaUahYFR3zzfRzl8BU56xF4hkWx4GmUkDWC8rA6K1vP/YUm+/7S+T0478Mh
TS2LJ1X+m4zfVkI13z30yXUWabaZ5/ZHNazGYqG4n8W6Tkfp1MEaENEbBbxJ
FttXV14pr6kFZWtDU/oSi7X2tsEyUR1I2YLXdZsopkXXbbTq60EaI5sPElBc
Szq2P9DfDMFb1JGnxBS7Ei25qaYGqL+rcYmTUDw5LZH18hrhjTcV90ZkFEe8
S0Nzzl2Br6+8/ZrzFMXAEc+q6OUmMManb6M6isYvJX7/yFugS1cQIdRTfPSR
cSDzEwtUWkstwlqK7mPm0SdBBPaW6AozOP/rPeQM2kngVqpK2cP5vtQZELOL
wAYffLQ/Urw5GKsuExP4MG0hp6uOYl7P3FrIAQI7vI6A2kyR1xbyckoCgUaN
x61rTRRXDZbPOwoIREoe129upjg3NF55r5DAhO90roKz/Xner1uKCXh2te/x
aKFoLZLykw0EPvVTl39goXj6m6Wah1UEQnt6TzzbSnE5K3wguJ1An6k1Ipnz
tOXEwxiGQGpGFb+Z8/BCnq8WCZQJczrkP1O8+rFNcaOHwONM0Y7GNooZytOO
+GECJe94rW1wVlRXCr6wERBtW7clXKN4dPImVI8TkP9mO7fOWXz8hQsPJgks
/tCpiL9OMcAILV7TBM5nN+03c/YcU43umyGwPfY7rzXOT731zpRZAu0B+fNS
K8UHUiu3CPwHaIzcaQ==
                 "]]}, "Charting`Private`Tag$381136#1"], 
              Annotation[{
                Directive[
                 Opacity[1.], 
                 AbsoluteThickness[1.6], 
                 FaceForm[
                  Opacity[0.3]], 
                 GrayLevel[0], 
                 Thickness[Large]], 
                Line[CompressedData["
1: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
                 "]], 
                Line[CompressedData["
1:eJwtjn001XcAh+9FIcxCN7SuFHk5oXCMlI+XcrJWrteb8nLZzEup68rL/dXN
nNwYU+Yyd9a4kc3KxjezvOUO621J5V1TuLIkR3m5x+6dmJ2zzznPef54/vmY
Rp3yj1ah0Wjuq/zn7RG5y6GjFLprHF8Mx6hjwiBOW9lOIa0joGVPXjDmdkwZ
j7dRkLP86VOH2ciOGhQRKYW3x31z93UfARn/VI5mChNXfMoUg8ewsNctdesN
CpNry8Z3zXPg6T+XvFxKoZcn0rpMi8GCIiJCL5lCkHmrTUNeIlyN56V3kihw
lePcl02JSJMurKd4FHIeaf7CmExEv9gr59kpCq38oN3Jnjwws3Q7i+MpWHZN
e9sv8vDCj1M4FEFhKWUTp5pzGockEx8W+FAov5dWIHFIhXBL+h8DRhRmjjss
Zg+dhVL3a1ULQwod9azmjHUC2K57unyaQUG8kpBOuQowwHzlqqNPwUtUpX7i
OwHM7m97bKu92ps2G/pGnkOtqVak0zIfHpoaLhtepaNAdsWMPcbHRwEnb7HO
ZuDzijf2IxV8XH7ruTKcm4m0sAyr5g/4WBiQ1odczEHoGX16Ql4a2GcyAq8Z
5EOZ+zN710gqOMElz6RMEXyDrpuNWKfC+BBDaCAvgvNK7rXsuBTYGi/t33RL
jG/umjfYCZMxYx/CaGr7Fj+4z/XeLD2NiBijNeKCUtw8Ks+TfZWE1qQquvpj
CVZU9PzVhDxUtskvje0pxz01SR85kYhG5aJ1UXkFGqdbnSatuKgYqn9YuL0S
o8OxHdv6ExDtXblSl/89riZ3OT9Yise7IywXE6MquNUm6ixqxqI9uDb9k5If
sc9zmOlgEY0ImUfQXfp1rKhWVnNGI9Gjf8k+NasarGMDMxePhcGkR6fMe/4n
hDo2eWn2BkMs8DB8w65B7MyaLsbkYSx8Ju5MTKhF0ry16gOxOzT6q3r/MSVo
z1Sn17Hd8bf+E4WpOYFPSNaZfIY7XvopmAcsCVjFY51sS+DOQ5+4QluCjdV9
Fvc370Xm7al3O1wJ/lRZLGlScwG9fodFeCDBr9HMlMH2nVCKavm/XSAw8qsq
UXfbiakng6V/fUHAvDDL9eLZYUiX/rt2HoF20lOpTbgNGnL93gsREQjGD7Ro
Oloh5fxc+WwZQQtTbDcysAXzPMfOrY2rfwUKT5diE8hqQ2cPtBCc7R/W4pzb
jO6ZTMYpKYFGz+zH5KARbsT3cZpvEzxSBn4ZJXsf3KgUeUA3wau1z3fxL+qA
Iyk1pvoIVA96bxCyNeH7/A4kgwSy2LrdV1/SYHt0Y870cwJfIVdxMkzhxhSj
Rk9GUCmRrd8/9dZNpz+m13mCwGkPJSh6Peq2pJ+vCJ8koP2/ab8GpvA1wb89
YeXm
                 "]]}, "Charting`Private`Tag$381136#2"], 
              Annotation[{
                Directive[
                 Opacity[1.], 
                 AbsoluteThickness[1.6], 
                 FaceForm[
                  Opacity[0.3]], 
                 GrayLevel[0], 
                 Thickness[Large]], 
                Line[CompressedData["
1:eJwd1gdQFOcXAHCChS4YmvSuoCAKoYmyByjFAKJUIdLvsBAENBJAiogNkSpF
epFy3N3eHaDsGeWJVCNYIBGJCBipUuSPcIgF/99mZ3Z2fvPN7L73vd19TyPo
9BGqoICAwCA6yWvhLfLgYbOHCdVLM1zw67ZquYtcvzLV0jTFhbytip39yMdL
FPzHxrkQHHkmUaKQh41NxZbZjnIhgsIpSEQeStynLvg3F9zaj1D9inhYL+uR
RmILFw4EW4ZuLOFhuEivdkwWFzKTahbVkMPY39rr0rlwqNc+0AJ5u8dO6qvr
XNi+rD91CrmmPKPa7DK6X8KF4mfIZWZHtvJjuXD6nFtZVikPy6QObDsTwoUX
3wolBMp5WGTr2+2/mnFB/eSmAXnksQ+CxgE/caFXkplgiOypqm3ptpsLNkK0
437Ie+JoP1vs4EJ+zV/V95DXm8yc2qDGhZma4u6wCh5WULfELNnIBSt8gNVc
ycNaMoQMn/7NAQ+77L1PkHe16Jq19nHgsXw0fRi5atYRa3rGgV4aqGyo4mFX
HdMOFT7mgNWdgxGuyIfXbY6gPeBAj7TTg1HksXOK3LXbHMgdWOVP3uZhYn4G
xoZnOTApumbPRw7S2/XVI5ID0eHJceureRixZNRxPpwDLp1iqerItOvmXn8e
58AooX7AC/khYRtHPcaBdLqbMSCfk/ZpK7LjAG/Uh/kEuXf4l7RHthzQcPhX
6BWydr2/xzSFA/W1kbQF5BcU6qSpJQdK6dmtajU8TD88QqzPkAOSvDcffkf+
t/uym7ACB6SXJjMvIlvcvKZsKMcBN/8omXTkTP+0cQ9pDtzoFGqrRN7Hz4qu
kuDAu4GfWv5ELtAqKbIS5IDCxgJ92VoeVvyV1jX9kg3L+6uXVZAP5oQdNXvB
hk1NRhVbkVf0omZSnrBhVfNpmRnyEa94SfWHbODaCll6Iws35Hh50tnAyEye
zkE+E/pw8lEcGz7c+N5ciHx2e46swTk2RCtonqwgPUe1zY9gg+trrxgc+dwZ
sbJTVDYYil627UKOSfT0lDnEhowYQ8Ne5FgbvZQERzYYRyes9ZHe8JU7ZcsG
OxUJh2Hk89crJB6YsyFXZu7yR+TE/Nl2qiYbfuQ/yviEnOQDi8+U2dBPtTr/
jbRKtvoeeTaoLugICNXxsOQqs/ObxNkwwm5u3IJ8iZ1s3LyMw+/r7g0qI1+O
8gjUWMDBYzzwnTppE92M6+9xGHSrrNBFvvpH73v/ERzEhsYfmyJf79pSKfwY
h9YKGYk9yGmpM8+i2nC4tzxlvI+0c8u3oQc4RDsk69sip/cHH+U24LDH3n7t
AHJGnukVJRYONn9xGx2QM4+K3LlUi4PSrejHzshZI7iUTzEOc8/79FyRsysv
WLXn4SCY3//rEdJU97CdWTh86u0o90S+ObPaJXgZh1dWzRneyLl4z3JYEg5f
9rkE+SDnRZZpDcTiIDEZ1nAMOX9lfyLjNFrPXDL0Ry64J8+SPYmDwWONrADS
8e//SQzBoTJj6e9A5FuUB8Lv/XDwHQtbC0IuXJdp6n4UB++uVNEQ5KLOoJAW
NxwKzF0+ky6+ZpKt64LyMW/upZJ2En6Y7YDDvx0dKTTkEsnXc19tUH5vY9RC
kUv7WEqh+3CwTOsv+c+5SY4vzHDobe/7TrrM2y3a0gjFcz36wHHkcqWt1dX6
OPwx2hpOumL4U5/kNhzk27lxpCsrngjEauDQbGIf9p9DSneOKeFQaJJMIV21
LfIXFzkcnul/WiDvL/5V2weTwiFBa3MS6XPPX3ntEsWBrtA7R8Y7cjvNQ2M9
Dq6S+ntIO8RQ3H5cY0HU+p1UMr8G5yXXdZ9YILnaF07mr6RZ57L0Pxbozil6
BSOn8H2dxmdYcH90gyq5f/N/Sh58Oc6Cnv6cNnK/vcva7LtGWODd2W5P1qP1
TPQBYpAFfkRBPVmv7Q47bOn9LHhLl5z1JeutPEIp7GXBcKGeOFnftYVsq+td
LPC6PiFK1j+0w27v+Vb0vJOOt92Q94TjZn53WFB39IPVYeTbNkEmh9goXgdz
wgVZQl7OmEJnwSGtRjtH5FGI36lZguKXGve1Q3a8uVtfOp8F8V95h8j3ueH4
uN76LBbc6nfq30t+T5uddSZSWBDYIhpsQeY3LqA1kMCCqrpTL0zI/O41qXf/
zoKiOLmDO8l8gpWV68NY4K4kxVBBft4082O4OwtWfpgwVCDjvVYm5e/CArkp
vxwZsl7H3Da5OrCgo8GCL0rWZ+MfIkZ7WTBnnbODj753Je9UAb4WC8K0L1Qv
IKfoW61NqLCAtvHHtffI8wKLXwbk0X53K/88gvyQfnSFJ8aCYPuX7p3ItC+6
8/EfmdCiM9QGyM+fDc2EzzHh5rpLm3nIFrczp/0nmcB9AA4MZHHnT2PWr5nQ
vGNwazpyQ2nX6w1tTJieL6pwRv5mTXt8I5sJHUx6xgHkXa5vHCbSmDDhXRew
DznIz73b6goTVuN+Z+gjd8badH2IY0LAXPCYCHJ6o2rHYSoTjOJD37Wg/7mq
zsBDWXMmUNVSBO4guxq7UMKNmPCGnSXAQE627oBOfSaUFCXS85AnjjW2RGsw
wb+0pjQMGc/LuD8oyoQpVw05aWQrYQei5A0DogacgoSQI+TAjD/AAIrTiawv
qD9Vaps2u/QxgC3wW8E75I3W2ne/dzKg5+aAYwPy0xiBpkAOA8ROPrY4iOw3
Q7B1LjKgqNvfJQT104SnerUsXQZscWXibsgK8xf4aZoMWP0+MGuD3CTxz4Ew
ZQaMv+oR1ECedkod2y7FgJOn9XNfo37t/uS9Rt1KPegYtrkdRNbrZhRXdtaD
36qL+SbU//9qNcjOD6mHwzeS3FfR/BD+9tLbc371UOeY5TKGLPLD8C5P73pI
snQd4iFbUdKfyTjVw9C6/X7ByPSWefFs43qw27buKxvNIwl/sK+kCaJ1YqTU
sAw9787u+AvldAh5cXdWDlnuB6/j8YV0OPuyTmENzUPrnc+7xdykw46aN1I9
yKNjnXqRV+mw5Jt6loZcIPPLy4AIOqyoL0jlonlK+OxlQwqFDiA1VzKI5rUp
o9dv10bqwPMKU1iggIfVclLszqvVQQWF6f42H+2n6a+NIwp1oNsrnvIIWea+
h7qtTB3M+S+kpSAnd239LCJSB45h1vZCyL8Md7PyF2vhkLqYn1AeD5MSl5Bt
7KiFnOW9Mos5qJ+G5r6bPlULAh6KVZEZPMxZtSbJi6iBxqbjNx2Qw+6cfmDd
UAObrkmGqCGnOVl83sGsgQcZtNKedB72Z2zPGYHyGhCU3ZOog2w/sEijX6kB
je/n/vc8jYdZZ2LOXzxrgHfYoWBTKg8zERxUKFuuBqcFhw/aKTxMZUKsccKo
Gk7+uxjVEI3yUad4enZVwVpgqUrzCR42HA6zs0GVYPq+x/+GNw/rk78YZzZa
DtMft/XW26F5l7qd3z5fCs1Vyax9u9F87DownjxaBBf3DSVrK6J+FKJ4P320
AIw0UhUeCaL/wbHPZ3xl8mDvmnVy0CSBLYgEK2eK5QDj599SF58QmEzR8ZpL
pplwLbjib10mgSm0zll3OqYCv/2+63AqgXmUma5XsU2BgKPfkz6eILCAtCjp
Gft4MDip/9xyP4FRGYWjlvKRMLZ+4WO9LYFtVZzefWc6Ahxd939WQJ68anZx
5/0IUF4txVesCewE7S8djcAImMxWvsvFCOwfG+WX4p6nUT82p6hbEtjMznUz
FfFhULiZT5ncTWDiQi9kenpoIPzo2d0jyOljvza3RNJAU2uPZMsuApN6JOrD
laNB4MrD0JuGKJ/4/WV5AVQQnMprxgwITPljs17gUjC8nA7uy9QlMIORUiu+
UiDA6eQlZTUCKw4ffE556Ql1K3zeFVUCE20iMnhanuBrqRG8qEJg0av5LkaR
HqDBzwvoUiawIymePVri7rDVQkg4QpHARAr7uzbaHAbF5c/C92UJbC61KP6W
rz3UWDwR0UHulvX5kso/AN8sDs/fkCGw2+VbYs5n7QeR8IQgf2kC87mbe9a/
yxqKq46tCGwmsIw2tYGDNHOI7Xwte0KKwOwGi/sMik1As1pyywtJAvs6r/BU
qs8I+nILuso3EVj/T7qprLjtMFg7d1YYmRKgeeHMpDbU//ZpQ4QEgfnKWyxE
1aiC3XcidkCcwEzDDYbX4qXBxrxyNgy5gf7T2FCoEPwfHd0QpQ==
                 "]], 
                Line[CompressedData["
1:eJwVzH0w23cAx/HY5qld6y4si1j1uPXhWrWt083Q+5SVsjbTaISwQ+0yh3YZ
vepKKRt9ckoF07QVD7WiD3z5Jr/oIp6GtdR5ioedaimtmWUezyiz7I/Pve/1
z8cuXOoneYPFYjkb9n+t36pzlW5Uo7rcaXw4whRizk/JFRvUaJaaaO232yPw
MqfmoLkapqObY9JcncCdtWHFmahRbi17/ImXJ663HXDpYKmxss//TGa7P35n
1QojDf6++ZjGLUOEF++3BpsYvHjUz2jqywDw9yg+OLDOYCbaN/1gTyCScURf
vcZgoshHsTwYDElkdlvOCoNJE8WLj+bD4NDb+YfPAoO+WNnGm6wI3P3X9K+z
rxj4b9PuUWfEICrJIqqhk4E++uOlS0Pn8Cx7ZbipmsHNGY/14fRUzKX8MM/O
Y7AwUK8UX72Ca+G7jffHMwhISBFWWGXhsKDX6nkQgzCR/Gm9rQzPvOYCk9wY
8PicNKvFXFS4B9Xc28LAkbfqaVOXj8P8Ixr2axX0e8Wch4034CX1OFUzpEJo
hLVxfnYBEL9hl4iqoD1VZmTaVYgo81y9MEuF0sbFzFG3YgSf7n60Gq1C7crS
rtziEtz6dtFM8rkKJUPKJznbS/FY02Yd+Z4KEq/S9Zqsn3Et5HbR0owSa4FH
P9tqXYYcuu8Or0WJJlHV+a/l5Sj6UNvOu6FE6Ji7f5vRXfC2OPuFn1Ci1zJz
75mL92A3XoEyKLG1d5PCa/4+Tv6mc2lhK5Gf6M79O6ASvs3euyefUyx8k98R
c7IKSV3lXB9CYdZf1vfajsCM1lrEVlH8Y9m9bLeNgDvSNCuvpHglWLb13knQ
YdwYN32fovWJT2SOI8H5khOpVysoUlum1hxcCdjclAedJRRGSocdIUIC/UTB
fuRRrMiqzjZcIPCQD8gkuRRT3YMFLy8T2OSa69JzKIYsjH59O4PgeIiYO5hN
oU4XbBbLCD5FWbE0kyLux7niWYXh3+XNVvklivlYpw77WoJHoq72+osUY1Vf
zXprCEwf5mnGL1D06FM50nqCd4QWoY5pFNVRurBfWggS+yvvNKRQfBcet3is
hyBixyHjiWSKsMICXryOYEA7wDc32HekFYWDBF80jisESRSOQe9emR4h4Dsc
Lz+dSGGbj0r2GEH/0/5b189RbOqP6HOeIHip80ysS6BYtcxaDpkkSLB6cGg0
nmJaoLZN+5PgP8shvR8=
                 "]]}, "Charting`Private`Tag$381136#3"], {}}}, {}}, {
            Arrowheads[0.015], {
             Arrow[{{-0.1, -0.07}, {-0.1, -0.07}}], 
             
             Arrow[{{-0.1, -0.05600000000000001}, {-0.10252649006622518`, \
-0.05600000000000001}}], 
             Arrow[{{-0.1, -0.042}, {-0.10505298013245033`, -0.042}}], 
             
             Arrow[{{-0.1, -0.027999999999999997`}, {-0.1075794701986755, \
-0.027999999999999997`}}], 
             
             Arrow[{{-0.1, -0.013999999999999999`}, {-0.11010596026490067`, \
-0.013999999999999999`}}], 
             Arrow[{{-0.1, 0.}, {-0.1, 0.}}], 
             
             Arrow[{{-0.1, 0.014000000000000012`}, {-0.11410596026490066`, 
              0.014000000000000012`}}], 
             
             Arrow[{{-0.1, 0.02800000000000001}, {-0.11557947019867551`, 
              0.02800000000000001}}], 
             
             Arrow[{{-0.1, 0.04200000000000001}, {-0.11705298013245033`, 
              0.04200000000000001}}], 
             
             Arrow[{{-0.1, 0.05600000000000002}, {-0.11852649006622518`, 
              0.05600000000000002}}], 
             Arrow[{{-0.1, 0.07}, {-0.12000000000000001`, 0.07}}]}, {
             Arrow[{{0, -0.07}, {0., -0.07}}], 
             
             Arrow[{{0, -0.05600000000000001}, {
               0.002737668539325842, -0.05600000000000001}}], 
             Arrow[{{0, -0.042}, {0.004762752808988765, -0.042}}], 
             
             Arrow[{{0, -0.027999999999999997`}, {
               0.006075252808988766, -0.027999999999999997`}}], 
             
             Arrow[{{0, -0.013999999999999999`}, {
               0.006675168539325843, -0.013999999999999999`}}], 
             Arrow[{{0, 0.}, {0.0065625000000000015`, 0.}}], 
             
             Arrow[{{0, 0.014000000000000012`}, {0.00608119266055046, 
               0.014000000000000012`}}], 
             
             Arrow[{{0, 0.02800000000000001}, {0.005184288990825688, 
               0.02800000000000001}}], 
             
             Arrow[{{0, 0.04200000000000001}, {0.0038717889908256886`, 
               0.04200000000000001}}], 
             
             Arrow[{{0, 0.05600000000000002}, {0.0021436926605504563`, 
               0.05600000000000002}}], 
             Arrow[{{0, 0.07}, {0., 0.07}}]}, {
             Arrow[{{0.1, -0.07}, {0.1, -0.07}}], 
             
             Arrow[{{0.1, -0.05600000000000001}, {
              0.10021117847310068`, -0.05600000000000001}}], 
             Arrow[{{0.1, -0.042}, {0.09970977267653844, -0.042}}], 
             Arrow[{{0.1, -0.027999999999999997`}, {
              0.09849578261031328, -0.027999999999999997`}}], 
             
             Arrow[{{0.1, -0.013999999999999999`}, {
              0.09656920827442518, -0.013999999999999999`}}], 
             Arrow[{{0.1, 0.}, {0.09393004966887418, 0.}}], 
             
             Arrow[{{0.1, 0.014000000000000012`}, {0.09197523239564981, 
              0.014000000000000012`}}], 
             
             Arrow[{{0.1, 0.02800000000000001}, {0.0896048187921502, 
              0.02800000000000001}}], 
             
             Arrow[{{0.1, 0.04200000000000001}, {0.08681880885837537, 
              0.04200000000000001}}], 
             
             Arrow[{{0.1, 0.05600000000000002}, {0.08361720259432529, 
              0.05600000000000002}}], 
             Arrow[{{0.1, 0.07}, {0.08, 0.07}}]}, 
            RGBColor[0, 1, 0], 
            Line[{{-0.1, -0.07}, {-0.1, 0.07}}], 
            RGBColor[1, 0, 0], 
            Line[{{0.1, -0.07}, {0.1, 0.07}}]}}, {
          DisplayFunction -> Identity, PlotRangePadding -> {{
              Scaled[0.05], 
              Scaled[0.05]}, {
              Scaled[0.05], 
              Scaled[0.05]}}, PlotRangeClipping -> True, ImagePadding -> All, 
           DisplayFunction -> Identity, Axes -> {True, True}, 
           AxesLabel -> {None, None}, AxesOrigin -> {0, 0}, DisplayFunction :> 
           Identity, FrameLabel -> {{None, None}, {None, None}}, 
           FrameTicks -> {{Automatic, Automatic}, {Automatic, Automatic}}, 
           GridLinesStyle -> Directive[
             GrayLevel[0.5, 0.4]], 
           Method -> {
            "DefaultGraphicsInteraction" -> {
              "Version" -> 1.2, "TrackMousePosition" -> {True, False}, 
               "Effects" -> {
                "Highlight" -> {"ratio" -> 2}, 
                 "HighlightPoint" -> {"ratio" -> 2}, 
                 "Droplines" -> {
                  "freeformCursorMode" -> True, 
                   "placement" -> {"x" -> "All", "y" -> "None"}}}}, 
             "ScalingFunctions" -> None}, 
           PlotRange -> {{-0.12000000000000001`, 
            0.10022595424540302`}, {-0.07, 0.07}}, PlotRangeClipping -> True, 
           PlotRangePadding -> {
             Scaled[0.02], 
             Scaled[0.02]}, Ticks -> {Automatic, Automatic}}], 
         Graphics[{{{{{}, {}, 
              Annotation[{
                Directive[
                 Opacity[1.], 
                 AbsoluteThickness[1.6], 
                 FaceForm[
                  Opacity[0.3]], 
                 GrayLevel[0], 
                 Thickness[Large]], 
                Line[CompressedData["
1:eJwVz31Q03UABnCi0pDlkbw53t8s4Hg53kWCY77gxYUJxLqg5K1NuuRlYgrC
QgTuOORNKGEbMEAYLARZ8rLf9o0HcbHRAfIWCJGtkzdvQwwKjxJqPnfPPff5
87FPSo9i6evp6R3T9dXyea9CQRsptSnSSLA8tMGz5FP4/sXaQM+aBF7aU/x6
nVPq6fFLyxKoQjb5TQIKS2tXhSfUEmw/Ca8T11NYzAu20/9FgiiPlw1UE4Wx
ziH7vAEJDB6ca5kXU+gyGHPKvilBltbxLl1GgXP/D9fUAAkmS+cEMb9RMDzn
7uN5qRuub8WOBu1RyDw/uDqUcxd6CzbKXBsZbr/H+eyMWReidmi8bIYMuwz2
SFnVHTRvjXTZJcnwzbhLW6dzB9KCugUFRTK49Hpx8xvFkM4/imK0y9DWXRiW
a9uO16InIsQqGSJsRNc+kYqgoP9pO6aRwXrF8N6KdyuK5Wo/AU0OE7tQJlN5
GyP3Dpkp3OR4nAatNqkZRTupY+0fyTFlXpAToG4Ew6JWFZAhxyLLdVvxrAFX
ijX869VypJydW76uFsAtIj/AuU8O/hcWpFxdC7V22TxrVg7Lz//JjDO5hYML
mQ8LduR4bpBsVWlYjfebJ34OtCAwEaSIivwrsdLPrO8IJqDfX2cMf1CCt51s
j2UlEMQI/d+wPlEIn6/6LDauESSUXjTWnOZi5r/LU/YtBKwOvjrInIPqYFZY
q87vWjz16n2agcicaJlzK8FqcUCBB8nA+LZns6eI4Ev2zBH7xAyo1tc4we0E
C8etZmnMdPz4a+w7n94h0Hi8rmniXkBrf8jZyh4C2v5Jk9FRNpL/dlMY9xKU
L6X2D3DYcPCxPFqjs9HQgViJGRvCrhe2DX26P9yTwlsJLPBauzc6pARWW/0u
iX8lo6zaoUJJCNx/bwjZtkzE1+n7xvcUBHVp8xOhs0yU91l35v1EcKBHWkE5
MiHa9S3VGya4slNzxpsTg7kbyeH6SoKoQuaoI+1jBLYPDr85QmDAn1buOx6J
XfVV0MYI1ksEXF7caZg6VzWU6awyjf23ZPsUPNLF3IPjBC2Nh7Nzb55E/O5c
kNFDgti+7y7FKxkYpPtJjScJKh7YzoWzj2I+4cOab3UOm6+bcq/zw2Zb8mXT
KYKXz+jjRlPecPCv8jWfJpj2dS7pzHFFEFdsXKtzaIJDfuaqE6IVg5uHZwji
zAOfXxTZ4ILho0mezv5p7o/3uMZweyJUben8g9h3afH8fvwPgRAFDA==
                 "]], 
                Line[CompressedData["
1:eJwVzX1Q03UcB3DWJRDK8oAj2BKEdHkdLeXBNLVPMyC4znTAGJjhGkdzjRoP
d1LNIi9AEYFdg7u1CBCChgjsK6Ejf7/vh4eQ4sGLhyHriA4U5cAjBCcNBfr1
x/ve79df7yClNi7tGRcXl31c/m/PmZTe320MXm0IvzuhcoOL+YPZ2jEGu7Wu
NFgUDMdfMvlV3GbQbYqfmX8gHFZSwpQOO4MN/oa+vdFRsHsszfHTJIOrEbKc
0n4ZmLvfynVy/qw7njlYnAjbifC5d/9m0HEsjjf3nhy2Xhx6cYHzouZoUeRw
EixKDkWGTzE4cym2yjn+PjQ3+Rg67jA461p1Z8+yAkLyu3fbZxkczTJsrnBR
wa7woHSPZQZlO+mr1uJMGK7vj9rqyuKCJmzlvP0MFJtUsc0CFisWD29MFOWB
oDdmaV7M4qPb2JZccgGS3P3XByQsynVnEy776MHc92dYdCKLikTTXxhggMuX
igaUahYFR3zzfRzl8BU56xF4hkWx4GmUkDWC8rA6K1vP/YUm+/7S+T0478Mh
TS2LJ1X+m4zfVkI13z30yXUWabaZ5/ZHNazGYqG4n8W6Tkfp1MEaENEbBbxJ
FttXV14pr6kFZWtDU/oSi7X2tsEyUR1I2YLXdZsopkXXbbTq60EaI5sPElBc
Szq2P9DfDMFb1JGnxBS7Ei25qaYGqL+rcYmTUDw5LZH18hrhjTcV90ZkFEe8
S0Nzzl2Br6+8/ZrzFMXAEc+q6OUmMManb6M6isYvJX7/yFugS1cQIdRTfPSR
cSDzEwtUWkstwlqK7mPm0SdBBPaW6AozOP/rPeQM2kngVqpK2cP5vtQZELOL
wAYffLQ/Urw5GKsuExP4MG0hp6uOYl7P3FrIAQI7vI6A2kyR1xbyckoCgUaN
x61rTRRXDZbPOwoIREoe129upjg3NF55r5DAhO90roKz/Xner1uKCXh2te/x
aKFoLZLykw0EPvVTl39goXj6m6Wah1UEQnt6TzzbSnE5K3wguJ1An6k1Ipnz
tOXEwxiGQGpGFb+Z8/BCnq8WCZQJczrkP1O8+rFNcaOHwONM0Y7GNooZytOO
+GECJe94rW1wVlRXCr6wERBtW7clXKN4dPImVI8TkP9mO7fOWXz8hQsPJgks
/tCpiL9OMcAILV7TBM5nN+03c/YcU43umyGwPfY7rzXOT731zpRZAu0B+fNS
K8UHUiu3CPwHaIzcaQ==
                 "]]}, "Charting`Private`Tag$381873#1"], 
              Annotation[{
                Directive[
                 Opacity[1.], 
                 AbsoluteThickness[1.6], 
                 FaceForm[
                  Opacity[0.3]], 
                 GrayLevel[0], 
                 Thickness[Large]], 
                Line[CompressedData["
1:eJxF1H0sFHAYB3BntTKprTO6k+Na5WVoUWhqXJb4gyh3UsLoUA0djXlLcnoh
XI52Q3e3u9155yTbKd0581LLNe/cJjvmbVwiScRUK8/zbM9+v88/v+9+zx8P
NSL+MlNfT0/P70//PXdKFyCn5Cw0KndcvTaneD2HjnlJCpuaRk/NpQo8teix
zHOW+kNodV07NVOBrjdQH015jmapJmxjXdCGofZOJ+7JwInRbbPtaQ1gsRUr
xM+kHrxFi/qQX1QLvv/JpqLOugZs03wyI0tYBa6Qsb3SLSrBvhTpgyC5FGw+
Y9g04ygBG1t6MBjdYvB4nFKnixCB+02z01y0Qvw/0/ZHxyIf5+U/Mv1QWwYu
vUluLdDywGY3NhKvG78ALxlEHuYYcjG/LEaa48wBk1RfaF0+uWC6wHmXuScb
HP4sgbhwMQPMrCnVupmywOVxml6PYQb4X7133bltnKYnF36ku8P7xxT28nwW
ePGO09oTTTq4fOn89lgeG/x9RNkcXJALDkrLCqw25oDDGaWflRQumOxrkmO8
WgJ2IG9eMHvHwzzHYJM3qjJwWDRpN6+ID1YkVhL29ArBEtVq4cRZEbhlY822
RCQGizXN6uLjEjDTS7LdxJGCt676n7EgVYLbGbLMyNIqzJ+k0bsJNeABYqFj
8uNasMWAkcBrpQ7My6Ad+hrUgPOJ4vWwYmXgvcOVg7+ojeCfxL516jH0bMA6
xdsa3aX2uVXsgGZ3zm/ZuaEJzXZWoYHoDa4spe0Rer5vlD/zFK05QOjYl4+W
5wXsD+aik7K/iZYF6JWEUz1HWtCTspBl71Z0/yLbJF6JfnV7KPxtJ/puRNLq
lX50uJBPTh1CXxrvcheOoh2umebqxtEUnnvDwUm00XD0oOs0epPIWQ+dQ//f
Z+6/AbdlRm4=
                 "]]}, "Charting`Private`Tag$381873#2"], 
              Annotation[{
                Directive[
                 Opacity[1.], 
                 AbsoluteThickness[1.6], 
                 FaceForm[
                  Opacity[0.3]], 
                 GrayLevel[0], 
                 Thickness[Large]], 
                Line[CompressedData["
1:eJwVxwlM03cYxnEmBuVIZFCFchWUIeBwEwsdc/oCRZqZiEqkBqrSgq2IBcqR
KdDKxHq0GwXUcpVxeJR5IFTl1/9/Y7wDnbAEdKDDYZhW5KgBjEaOsQ6y+iTf
PPn4pWTFi5fZ2Nh8ae3D11R/GA1Teyif05MG3CXjVrtZfX3e3HHXbEBb3nSV
toqGtB+YyaNjBpTORFaVV9Iwai6o55oMuG2XuUKlpWG4aKvvsj8NOLKcczG/
nIa+5i6/og4DbpA90SSqaLhl3+efX27A9thVSmY+DdmdL4MzOAZM1Qsq/06g
wfFgyObP8lrRYcOQZJ5NQ+7hXye6CluQnciQEgYNl9dn749bcwtHIgJq6HcU
LEZJfi85fxPPwxGlSz8FJx4GNTUH3sAH88WVLc0UBLVtUpxsuIbyxCTTOzUF
Ta3KWDnrR2SbUsZU6RTs9NF/u4/So4wZ7SrhUeA97nhnPPQq3jwWv1gZQAHD
N5LP776MR4t8vbPsKHieiVNTKZewJeI3sfqVEQbcThVyTA343l2XbukywrA4
eO7+mzr85TqvqrXeCGm7n44Vm3S4ctxgcVAYoeaQR7vGVIV7Y3d6/rzfCJ4H
/s0VMCowIBFTWyKM8NY+1avM8QL+U5aStuBuBIYuTX86vAzjCoe1Z2cJMDun
ox58rcbAVYyFnwYIJNSHL/fmKvGjHrl7zG0Cwu9zXCd5ChRubhd+XEpAfKPG
tMUtGxtn+6ZKNAQCPF5vanstw1fGF8cdrJ44xzm1sV2Gkq9sy21LCByRPPnE
TyRD6fYdnbNqAs+ivQad+Fl4fN9ffs/OEJjcaDvZqJBiaeHMyKUTBJxW9DN6
eyXYv9Uui2W1ZjTD2JEtQRcbd4tOQcC5yyHJsEaCWuUWV62cAEMRU18hFKOu
pJh7toCA13tjkGgmFZvqna8c/YZAyIu6bXOeIsR7n4rZmQRqM4f+iBzkY5N8
9Zk7GQQc7lKl9Do+asKW9KFWH1uojAvNTsADTY/Mn0sJxCv5veuc9qJFnSMN
SSdgX/O42y56D3LiqdwACYFptU5RLeAhy7Hx4lUxgZ7VSRb13Ha0u69q87f6
SoN7vrw8BgfDBPNrDxFIItq85O4ozGMuFbBSCJTeYz3dIfkCBQPjujoRgdih
2oGQ2jDkfveo3dvq/94wHzoPhKLLYsOSp5DAY3agurkwGBfaVCxdMoFI4dqT
uRP++DIzJ9LDaoFbxNscvQ/2rBeIqg8SCM8Meb6kcMWVuy+kg9W3r7FHhw+v
wP8BevrVAg==
                 "]], 
                Line[CompressedData["
1:eJwVx3881HcAx3Fnlh6PiZXbyW2PKx7qzOLxSHgo7K09/Ki20eV3JWYPrlgT
PWShWeYsv23HdjXDmLBUPvl8v6dlLtR5II9xjrGhB1bTZXJxj3ZK9t0fr8fr
8bSLSz4Ub2piYuLJ9f/FQdqkE9EsbjS5/TUhNUfj1XhV91EW3cnrOuy32+MP
q4vC746wMJ+2TJF5ucFHuzboE8WiyVbe5xHgD7PoAZ/CUBYr7mHppf1hKEp+
2rqb82fdIe3exeHg59g4zYWwMBw8xNMFRcCh4SOBP+fFpOBCP00k/PSGhZcS
Fg9+3F9tHDuCPJmoJjWYxdy66tmdS7FYfy3Z9PABFtpU+WuVJlJYrG3scfRl
Ebatw7mtOAVxRdJ/7J1ZLCTtenZhPAsNiv5HuZtZVC6+tzZRmAvhJzrfQDMW
y7+rmKiSAkw4Cd0T9AwiMs+H/swvQ9HxyLX5CQax4ZcmVSI5Cr5uSBjsZSD8
UCDjGyrAnieOfCUDF+EL/zd/VUCz2HtbVctgwTVK8Evn9/B6f8nQU8ogRmr7
quKbKpQ7vMPzzGTQcbqRZz5Ygz2PTjeZHWdQ32konfauhWVaevPOMAY3V545
VdTWQZOdL1P7MqgbZwbKt9djNq35udKZQXxA/Vpr2WXM6iYDN9oyWI08uHuL
bSM2ifsW+swYdIW3ZH98qQklQT2u03qKmJm9YT28K1hZ1nwQM0kxbF3qmv5V
M2jek1f29FFsGd5QHbB0FZX31W+kKSkU5/ZufhJxHanK5lWbOorlBMW9lJMt
+DajLsemjGL9aKP2uR3By5+UTV2lFP9aDxntthEk/NY/eJLz3xKjaJ8jgbvD
suhOCYV6YP+JcheC4QG/W6eKKXLv6lZ3eBG8bvdwqbeAgsfsEB8LJcjvcYzP
klGsyFvO3s4jWNR7F4k564bGqh7mE0S+JWnV5FKMW/HuWBQTiFPO8t7m3FYo
sYySE6iFfT+M5FCc+fJprb6awPTTpFGXLyiWUt3u2d8kSFRkr45nU8y0HNXv
aycY6pI7yDhrFnIFySqCGpv21D8/p7iROBJ76y7Bu50WVhfOUZyKO2MI0RBc
frzVYxfn2JoqYcYIgaXAPXoqiyJ4So2aMYLJxOgrbpxdDtsUzE8R+FWkaO5n
UogUuL5phqBZJTMWcN4wKtV6PiDg6y5u9eD8wrrMeGyOIJN/LXA6g2Je0iaS
PSb4DwFSwQU=
                 "]]}, "Charting`Private`Tag$381873#3"], {}}}, {}}, {
            Arrowheads[0.015], {
             Arrow[{{-0.1, -0.07}, {-0.1, -0.07}}], 
             
             Arrow[{{-0.1, -0.05600000000000001}, {-0.10252649006622518`, \
-0.05600000000000001}}], 
             Arrow[{{-0.1, -0.042}, {-0.10505298013245033`, -0.042}}], 
             
             Arrow[{{-0.1, -0.027999999999999997`}, {-0.1075794701986755, \
-0.027999999999999997`}}], 
             
             Arrow[{{-0.1, -0.013999999999999999`}, {-0.11010596026490067`, \
-0.013999999999999999`}}], 
             Arrow[{{-0.1, 0.}, {-0.1, 0.}}], 
             
             Arrow[{{-0.1, 0.014000000000000012`}, {-0.11410596026490066`, 
              0.014000000000000012`}}], 
             
             Arrow[{{-0.1, 0.02800000000000001}, {-0.11557947019867551`, 
              0.02800000000000001}}], 
             
             Arrow[{{-0.1, 0.04200000000000001}, {-0.11705298013245033`, 
              0.04200000000000001}}], 
             
             Arrow[{{-0.1, 0.05600000000000002}, {-0.11852649006622518`, 
              0.05600000000000002}}], 
             Arrow[{{-0.1, 0.07}, {-0.12000000000000001`, 0.07}}]}, {
             Arrow[{{0, -0.07}, {0., -0.07}}], 
             Arrow[{{0, -0.05600000000000001}, {0., -0.05600000000000001}}], 
             Arrow[{{0, -0.042}, {0., -0.042}}], 
             
             Arrow[{{0, -0.027999999999999997`}, {
               0., -0.027999999999999997`}}], 
             
             Arrow[{{0, -0.013999999999999999`}, {
               0., -0.013999999999999999`}}], 
             Arrow[{{0, 0.}, {0., 0.}}], 
             Arrow[{{0, 0.014000000000000012`}, {0., 0.014000000000000012`}}], 
             Arrow[{{0, 0.02800000000000001}, {0., 0.02800000000000001}}], 
             Arrow[{{0, 0.04200000000000001}, {0., 0.04200000000000001}}], 
             Arrow[{{0, 0.05600000000000002}, {0., 0.05600000000000002}}], 
             Arrow[{{0, 0.07}, {0., 0.07}}]}, {
             Arrow[{{0.1, -0.07}, {0.1, -0.07}}], 
             
             Arrow[{{0.1, -0.05600000000000001}, {
              0.09747350993377484, -0.05600000000000001}}], 
             Arrow[{{0.1, -0.042}, {0.09494701986754968, -0.042}}], 
             Arrow[{{0.1, -0.027999999999999997`}, {
              0.09242052980132451, -0.027999999999999997`}}], 
             
             Arrow[{{0.1, -0.013999999999999999`}, {
              0.08989403973509935, -0.013999999999999999`}}], 
             Arrow[{{0.1, 0.}, {0.08736754966887418, 0.}}], 
             
             Arrow[{{0.1, 0.014000000000000012`}, {0.08589403973509935, 
              0.014000000000000012`}}], 
             
             Arrow[{{0.1, 0.02800000000000001}, {0.0844205298013245, 
              0.02800000000000001}}], 
             
             Arrow[{{0.1, 0.04200000000000001}, {0.08294701986754968, 
              0.04200000000000001}}], 
             
             Arrow[{{0.1, 0.05600000000000002}, {0.08147350993377483, 
              0.05600000000000002}}], 
             Arrow[{{0.1, 0.07}, {0.08, 0.07}}]}, 
            RGBColor[0, 1, 0], 
            Line[{{-0.1, -0.07}, {-0.1, 0.07}}], 
            RGBColor[1, 0, 0], 
            Line[{{0.1, -0.07}, {0.1, 0.07}}]}}, {
          DisplayFunction -> Identity, PlotRangePadding -> {{
              Scaled[0.05], 
              Scaled[0.05]}, {
              Scaled[0.05], 
              Scaled[0.05]}}, PlotRangeClipping -> True, ImagePadding -> All, 
           DisplayFunction -> Identity, Axes -> {True, True}, 
           AxesLabel -> {None, None}, AxesOrigin -> {0, 0}, DisplayFunction :> 
           Identity, FrameLabel -> {{None, None}, {None, None}}, 
           FrameTicks -> {{Automatic, Automatic}, {Automatic, Automatic}}, 
           GridLinesStyle -> Directive[
             GrayLevel[0.5, 0.4]], 
           Method -> {
            "DefaultGraphicsInteraction" -> {
              "Version" -> 1.2, "TrackMousePosition" -> {True, False}, 
               "Effects" -> {
                "Highlight" -> {"ratio" -> 2}, 
                 "HighlightPoint" -> {"ratio" -> 2}, 
                 "Droplines" -> {
                  "freeformCursorMode" -> True, 
                   "placement" -> {"x" -> "All", "y" -> "None"}}}}, 
             "ScalingFunctions" -> None}, 
           PlotRange -> {{-0.12000000000000001`, 0.1}, {-0.07, 0.07}}, 
           PlotRangeClipping -> True, PlotRangePadding -> {
             Scaled[0.02], 
             Scaled[0.02]}, Ticks -> {Automatic, Automatic}}], 
         Graphics[{{{{{}, {}, 
              Annotation[{
                Directive[
                 Opacity[1.], 
                 AbsoluteThickness[1.6], 
                 FaceForm[
                  Opacity[0.3]], 
                 GrayLevel[0], 
                 Thickness[Large]], 
                Line[CompressedData["
1:eJwVz31Q03UABnCi0pDlkbw53t8s4Hg53kWCY77gxYUJxLqg5K1NuuRlYgrC
QgTuOORNKGEbMEAYLARZ8rLf9o0HcbHRAfIWCJGtkzdvQwwKjxJqPnfPPff5
87FPSo9i6evp6R3T9dXyea9CQRsptSnSSLA8tMGz5FP4/sXaQM+aBF7aU/x6
nVPq6fFLyxKoQjb5TQIKS2tXhSfUEmw/Ca8T11NYzAu20/9FgiiPlw1UE4Wx
ziH7vAEJDB6ca5kXU+gyGHPKvilBltbxLl1GgXP/D9fUAAkmS+cEMb9RMDzn
7uN5qRuub8WOBu1RyDw/uDqUcxd6CzbKXBsZbr/H+eyMWReidmi8bIYMuwz2
SFnVHTRvjXTZJcnwzbhLW6dzB9KCugUFRTK49Hpx8xvFkM4/imK0y9DWXRiW
a9uO16InIsQqGSJsRNc+kYqgoP9pO6aRwXrF8N6KdyuK5Wo/AU0OE7tQJlN5
GyP3Dpkp3OR4nAatNqkZRTupY+0fyTFlXpAToG4Ew6JWFZAhxyLLdVvxrAFX
ijX869VypJydW76uFsAtIj/AuU8O/hcWpFxdC7V22TxrVg7Lz//JjDO5hYML
mQ8LduR4bpBsVWlYjfebJ34OtCAwEaSIivwrsdLPrO8IJqDfX2cMf1CCt51s
j2UlEMQI/d+wPlEIn6/6LDauESSUXjTWnOZi5r/LU/YtBKwOvjrInIPqYFZY
q87vWjz16n2agcicaJlzK8FqcUCBB8nA+LZns6eI4Ev2zBH7xAyo1tc4we0E
C8etZmnMdPz4a+w7n94h0Hi8rmniXkBrf8jZyh4C2v5Jk9FRNpL/dlMY9xKU
L6X2D3DYcPCxPFqjs9HQgViJGRvCrhe2DX26P9yTwlsJLPBauzc6pARWW/0u
iX8lo6zaoUJJCNx/bwjZtkzE1+n7xvcUBHVp8xOhs0yU91l35v1EcKBHWkE5
MiHa9S3VGya4slNzxpsTg7kbyeH6SoKoQuaoI+1jBLYPDr85QmDAn1buOx6J
XfVV0MYI1ksEXF7caZg6VzWU6awyjf23ZPsUPNLF3IPjBC2Nh7Nzb55E/O5c
kNFDgti+7y7FKxkYpPtJjScJKh7YzoWzj2I+4cOab3UOm6+bcq/zw2Zb8mXT
KYKXz+jjRlPecPCv8jWfJpj2dS7pzHFFEFdsXKtzaIJDfuaqE6IVg5uHZwji
zAOfXxTZ4ILho0mezv5p7o/3uMZweyJUben8g9h3afH8fvwPgRAFDA==
                 "]], 
                Line[CompressedData["
1:eJwVzX1Q03UcB3DWJRDK8oAj2BKEdHkdLeXBNLVPMyC4znTAGJjhGkdzjRoP
d1LNIi9AEYFdg7u1CBCChgjsK6Ejf7/vh4eQ4sGLhyHriA4U5cAjBCcNBfr1
x/ve79df7yClNi7tGRcXl31c/m/PmZTe320MXm0IvzuhcoOL+YPZ2jEGu7Wu
NFgUDMdfMvlV3GbQbYqfmX8gHFZSwpQOO4MN/oa+vdFRsHsszfHTJIOrEbKc
0n4ZmLvfynVy/qw7njlYnAjbifC5d/9m0HEsjjf3nhy2Xhx6cYHzouZoUeRw
EixKDkWGTzE4cym2yjn+PjQ3+Rg67jA461p1Z8+yAkLyu3fbZxkczTJsrnBR
wa7woHSPZQZlO+mr1uJMGK7vj9rqyuKCJmzlvP0MFJtUsc0CFisWD29MFOWB
oDdmaV7M4qPb2JZccgGS3P3XByQsynVnEy776MHc92dYdCKLikTTXxhggMuX
igaUahYFR3zzfRzl8BU56xF4hkWx4GmUkDWC8rA6K1vP/YUm+/7S+T0478Mh
TS2LJ1X+m4zfVkI13z30yXUWabaZ5/ZHNazGYqG4n8W6Tkfp1MEaENEbBbxJ
FttXV14pr6kFZWtDU/oSi7X2tsEyUR1I2YLXdZsopkXXbbTq60EaI5sPElBc
Szq2P9DfDMFb1JGnxBS7Ei25qaYGqL+rcYmTUDw5LZH18hrhjTcV90ZkFEe8
S0Nzzl2Br6+8/ZrzFMXAEc+q6OUmMManb6M6isYvJX7/yFugS1cQIdRTfPSR
cSDzEwtUWkstwlqK7mPm0SdBBPaW6AozOP/rPeQM2kngVqpK2cP5vtQZELOL
wAYffLQ/Urw5GKsuExP4MG0hp6uOYl7P3FrIAQI7vI6A2kyR1xbyckoCgUaN
x61rTRRXDZbPOwoIREoe129upjg3NF55r5DAhO90roKz/Xner1uKCXh2te/x
aKFoLZLykw0EPvVTl39goXj6m6Wah1UEQnt6TzzbSnE5K3wguJ1An6k1Ipnz
tOXEwxiGQGpGFb+Z8/BCnq8WCZQJczrkP1O8+rFNcaOHwONM0Y7GNooZytOO
+GECJe94rW1wVlRXCr6wERBtW7clXKN4dPImVI8TkP9mO7fOWXz8hQsPJgks
/tCpiL9OMcAILV7TBM5nN+03c/YcU43umyGwPfY7rzXOT731zpRZAu0B+fNS
K8UHUiu3CPwHaIzcaQ==
                 "]]}, "Charting`Private`Tag$382264#1"], 
              Annotation[{
                Directive[
                 Opacity[1.], 
                 AbsoluteThickness[1.6], 
                 FaceForm[
                  Opacity[0.3]], 
                 GrayLevel[0], 
                 Thickness[Large]], 
                Line[CompressedData["
1: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
8Y6PwnrDCss5YhcbBTOLwCjM2MXT9zIpnMrT+mGrURS8vFeEfyX+u+y4W/7O
KJia9HZ5ESfUOLVsl4xCyvSGdiaxEi6qlnxj4cDphuUs4qbWpATVKRaOp3ae
qSC27ymarehmoemKyTyIl4bqzDXqWchx/qmRQ5w+xblbc4OFN//4NL4lVp+b
kNh/mYUI+60LM8TtqysXHl1kISZe8+wisbugeJ++EwtzzOoVbhYFHgkV3aZj
LDw1vtopSJwrc/Da4b0srHDe96wn1lE59a1FhoUspbz1EsS9e845HhcgPvo4
XJLYT5/xx8tPTPy7x0iejEaImGYqWvYz0TylvryBuNSyIvbVUybmPGP4xImN
7P+YOn2bCXaN0ZF1xEMefccGM5mIbPWo5yemB/5V4cBgYqh03vUbWe+G8DWi
Y15M5FtMG80TV7KlA9ytmHj23MR6ivh4mkbPtB4T5muEr/UTT147ouWrxITB
un2b2omZpWeyPokykTHyormOWKY6cDlomQHziOflJcQPH8fZLY4y4Dup8jSV
2Kolr4HqYODT5nnR0O/1666V/XaPgX5J5VRn4vjBNiYzn4HX559p7Pper89f
TeICGZht222+/nu9/l1bJnKGAa/P3IV/kf5Y4lcQTjZh4HLu4Pj3flLfav4y
YzMD2gqTvdHE7UpuGlK8DBwNslm2J3b/OTTt2kwk0gMDhoWJc4+U/laESHDk
pQvekv7VsWh4qFQWiYCcHVlVxL12PdLlqZEYnWXJmROLBHANV7lGIlJUrCyE
nBdajo0HhCMxJra0Vo9YxWwwPXo6AuVvj5RwETs4C55OeBwBj9dbQpjkPHYm
Oo78xzkC102K4v3IeS179+Pnmjvh2JHTmqZEPPxV794jZjg21VtzBkIpSK71
ojedCoeCbenEIeKofU08nH/C8GWDCnuB5IdDQoD4hyNh6JVe/COTeGBnibXy
xjCYhEePahHbdPT/x3UiFByb/g5fGgXzdYdlh6NCkeASePJZCJk/yRt39TaS
PjHbW3aKuF79uJ9YCgVcqZ0YJfm1vyuy+iTJbVXtTyLLJN/Uxaa1X6zSUfzK
im8tyT+59HoT6NLhcUMwPIHkY67mp7gVITrqOKF9gsRSvYod2m9o+EEvV3eV
5KuY5GXLmos0HPLuuNVB8pgny9GhrPYi7BQHDflJnr/L5qOn7Q7Ban3IggvJ
e/sDuo85qxewu4qT+MSTwpuB81zrOi9A585jd38Pkt9b+2LY3hewyB3V8tCV
wh955WlhZcEQ52nSGyfzp6jQvMJ9exA6vXm/FpN55lp+dVh3oz/U5mQDOGT+
/SQ1pVE75QfXGFPJRXPS3+x9LLV6P3i1Peo7dJKCp1uPopyjH2r/VDiBY+T/
hlteiVifh8WSwISjMckrNd4P18O8cddh8/BhMr9F+Lsk2tvd4G2UFaq5h+Th
mM/9Bn83cGvIG8r9TOZ1k9DvVZJuqN/529H57/eDMOO8DAdXBBcfPhS7g8KW
L/dVHOecMVOgOW4hT2HX21z9BWlH8Dz5fZ5N7h85vn0cg1fWSGPNyr5+R8fd
Qs2xAXd+/A/ChI8U
                 "]], 
                Line[CompressedData["
1:eJwBEQTu+yFib1JlAgAAAEAAAAACAAAAJl+L/lzger+yrzTk3GcHP+UUaQz6
wnq/eMNTvDyNVj/yLOoa48F6v/VQUgHqTlc/iGLYk7G/er/wa0+LRNJYP7Hj
ZPU/u3q/5aFJn/nYWz/0PT53IrJ6v+gGn+Mx82A/QlLydf6eer/UcpMLnABn
P/T5X18SdXq/VSW+LbiNcT87GvO/xnN6v3D643DnunE/eL/0EXpyer+Kzwm0
FuhxP9aYQ4rdb3q/vnlVOnVCcj8ehw/Ml2p6vyjO7EYy93I/5FFglNlfer/8
dhtgrGB0P02g5TeSSXq/osh4kqAzdz+FIH/K1xl6v+5rM/eI2Xw/+g+WAycY
er/DtVC7gQp9Py4K2v50Fnq/mP9tf3o7fT/XHuk7DRN6v0OTqAdsnX0/JMkj
0C4Mer+Yuh0YT2F+P7AhC2E2/nm/QQkIORXpfz+S4qEkV+F5v0pTbr1QfIE/
gKPvMt+jeb+c8EL/3IuEP3hdgSm7HHm/9Ne/tVmOij9cexMBbY14v1d7gVSq
FJA/+ouuVzHfd79gVprdvx6TP09VqyTfKne/Gk0WhRT1lT84/4uqiGl2vy4a
/EUbvZg/mccluC+Fdb/uMlkWusGbP6dA8tS3nnS/X2cZBZiSnj+3WvWN4pFz
v75zqAEH0KA//wISUgSFcr+lwfWP4TyiP8gEoNWxbHG/ufr3KpWioz+57L42
6Clwv6PZtc2UJqU/4NxowyPWbb9lRqX/s5CmP6R1zjjL/Gq//VhQOR8ZqD8+
sHEN9wlov8JWsH9jmqk/RELcHjMnZb9f4kFVxwGrP/8Dpaxg4GG/0xOPMneH
rD9QW9fujltdvx/TDZ9G860/XDS6QwnUVr+YfUEY71evP2juBc4W6E6/9GaY
zHFtsD9z8yoDy5hAvwjWqNT7IbE/woQHAbNXQL/4E9H5ISWxP0lZh3uQFkC/
51H5HkgosT9Ql+HMVyg/v8bNSWmULrE/F6zVJ8kdPb+Exer9LDuxP9sC95q6
BDm/AbUsJ15UsT+2ZR522MIwv/qTsHnAhrE/GVGomgc+ML/q0die5omxPx6G
8XBDci+/2Q8BxAyNsT8Mc9q/LV4tv7iLUQ5Zk7E/feNIvAk0Kb92g/Ki8Z+x
P7wemC/f1yC/83I0zCK5sT/CfflCOZcfv+KwXPFIvLE/fNbcC2B+Hb/S7oQW
b7+xPwjT8UyxSxm/smrVYLvFsT/P+lSMYuIQv3BidvVT0rE/6QbeMXmODb9g
oJ4aetWxPwNLRhWFVwm/T97GP6DYsT/iaLM6pOcAvy5aF4rs3rE/T4Vw+W5d
+b4emD+vEuKxP6Wg4hFF6vC+DdZn1DjlsT82PHp9levgvvwTkPle6LE/AAAA
AAAAAADsUbgeheuxP92SBVU=
                 "]]}, "Charting`Private`Tag$382264#2"], 
              Annotation[{
                Directive[
                 Opacity[1.], 
                 AbsoluteThickness[1.6], 
                 FaceForm[
                  Opacity[0.3]], 
                 GrayLevel[0], 
                 Thickness[Large]], 
                Line[CompressedData["
1:eJwVxw881Hccx3FTj/LnZjy6uvxn4mIPWZJbiz7Iny1l8ci12IRypxk5fyZx
M3M9NGtc/nR1DLHOTOKn7/3ufgsfYbMMGWG2C9s4ijzYHx4zeux6Px6vx/vx
tI89Hxanr6en96auFy+/8WIMLISqbS7NUwg730q7cJ2Bb1bn2skchcnCjoST
MgbivzQ/PT1DYXqGCbW9jIHpuYtVh6cofDnKrqxEyoAmx9tOf4TClADLrtJ8
BvobO+1z2ik0EyfSt9MZuGPYvyvzKoWKorw19zAGRPd/c0nkUfh6ehtveAsD
xlGu+9zSmvHcd27TEZ1qSBV2zHZmNWF/tkK2OVcNtVzReyE77qBG0lzs6KWG
DV/Bgy+Kb+NlOuXbjg0VfDzgXNe4uwGbPZ2kbq0qcFbuFedW12PtawbqP8Qq
qGuWBGbbfo3ChAZuTYAKjtkoPjmpVmCx30FenZEKrLXGd7Xut3CR1ZIvHqGB
befD5/fU4lhFjRW3loaJJFxYiK1B7mdtCflJNAxx8rJ4U9W44W1icBRo0MS5
rHQvVmIXxcpzMKEh/vjYzKdT5VhYmJ+2PKkE+VmL1sKp65iRYGpNaCVYvr+W
Gsm+hqbEK2D9cyUsGZ6xkhqXoP/oO4F6AiWwy+MVlzylyC7h8LWHlGB+/5nv
928X4KlTCTdlFkoIr/LcbH1YgjWea02lawSir6Rsmw8SY8l68LJ2nEBcg3zq
IEeEUdqGmWSdnSye7FU+ScZs26zVtZ8JzF7m5e1pTcamHGHqKzqfEzxytI9J
xqXVjL4DowR+8bMaZfHP4+89GZtKhwjM79k0f1P8IUpm/pRE/UiAtfUndl+f
AOWMF3ehl0DhdKKqXSRA/cf/aDN1Nu00iqB2CLDXjG4ve0CALfavuhYdhx77
kh4O9BCw+kvlHPP3GbwQ3pYe2E3AdbLy0IplDCJnbCS4jUBF0vigzygfb73k
ETbZSsCIqIsYBz52uP36NEXnjH9lIe6icJS/ayCS3yMQJuH3ObBO4KDm8eBT
hoChfLhni18onmhKn5DSBJ4VlItvRAahTPORrZPOP2yP+K9gJQBNQzqz7ykJ
fFW9MzP7qj/WbPCuaAmBCLos7XSPLwYXVT73vkugqMt27IjgDfSaWLZ/1EIg
cLxiyLViP8aKimI+0Hl90XzAdMgdQ8/W75dRBIY9dhc0Zrmgebdjr6vOPtGv
5qbO7kJO/MLF7mYCkZwDSykKGzxyfCMoUmfPJNeJ5+Jt+FAomTPTuaXeY1oj
3Ir/Azeb41Q=
                 "]], 
                Line[CompressedData["
1:eJwV1nk4lVsXAPCcBjKkTJWhgYxJJSniLmRKgyFjXCFUMiW6iTSgug1SkmM+
znnPccwOrzKXkAa5vhBJRBFShkhEvvX+8T7v8/tnP3uvtfbaa6NHgI0XbdGi
RaP4UX8t+tfkYwUkFGVpfe46zg+/jLX+dOWTUBuwrFpeSR5cHshcGcojgb93
xenoPVrg8ehTxtJcErLWxr3UNjUB/wknQwsuCbM77f6588oO9Ls3iwuiz9Ue
rtS7bQ/GPSd+vcgkYcrKhm/4kAPMbdg0vw89dsrypvEbRxBkpY9acEjoz9iX
PtPhDJyM7HNWBAmDy9I/bf/hBp+vr5TxYZDQGhQnlLLoOPguyGS000mwU6ze
Unr7NBxJehwYfZOE76d2TF9/Fw4BaSk/TSNISBkzWui6GQVG9jYxYUEkTLY/
LnGKuQFKPwS87pwgwSHssm22RCw0XvwwNONKgpt90ofH6+JgZ5dLsLwDCdIH
paIlpuKhtkYgLcyKBA3pOROZKjqMKe+luaPvxujXbHlBh3WfX4eaoidpF/UM
2ugQ5trKXIUu/8q3w+sbHfY6s7u4liSYVvFvKJBLhIVgh9HOQyS4uonPGkUk
grrqXOzBgyTEcNTyfSAJHO+b1fta4Hk0naTKa5LhSsO5IEf0kx0SMfONybBN
7vw2Y/Q9rf+WGnYkg8S2b90y6J3aJlMN35Nh0eT9pY37SAjX2d7aJpMC/pPD
oVvRggbL742HpEBSe+EfmjkJSgfLRFTVUkHJeaB+zIyEXweDo313poI230hq
N/rloa3zBQap8JE8fqkc7WfFHtF2SAWH8g2iZ9Dk4buvjKNSoVM/8fAXUxKM
jpz81607FbYrE+e6TEg4enztUvq9NPiY9HjhJdrNROzD67Q0CNyWmlRGWUGo
ZHFOGqjVpAklUO6Z8wyoTQOx0IpOG7SHw8c608k0KDRy3tJkTIK3WWbUlF06
KOhrES17SXgUJ30lS5gBRSNxrDp0KW21f50YA9ZVlzwsoXxa/EjPGgY8eAZr
6JQthTUlFRkw4+f3/G/KQn96L+kz4KbU1g8jRpivyF5DR38GDDbt71iLrj7D
5eNvZkBy62uFFeif3N5T5W0MOKF14xINvaVb+q3fewZY04r8vhpivZnfzm4d
YIBze5VUNTpMLugwc54Btt7PWN7o3Q172PqbM+DN6uSsOgO8b9L/mQdfzYDn
bidkK9DDlgLFyrcyoGNxIIOH3hhtKPf+bgaYOGp0paFjR4vHDVMzwEn3uPx5
dEAdPUmUzADPTy+GdqDV/T1GsnszQPCFjSdmB9g1U3d69ZiwW8VdIQ9946W7
6zkjJhzK/jPBRvu3vFYXNWeC5uovtQlo7X72C73DTGiJ81MPRz8XsF9MP8mE
6DXWa8yB2t/Ds4ceMGELx/qjIbrJUd6kP5kJ1fa9pXvQRe4x4uEZTIjfkJ+8
FR12xrswK5cJ6x3mldeghROkhpfUMoFpGeQ88hcJW7vP/l0xyoQ6IS/1L2iJ
L32bbaaY8N/wgEgf+tfoodnBWSYkraLTOtBP+JQTpJaxQIRWWFSHtlFsbz4t
ywK/NhmBJ2htjb3pAvIsIF9J+VegpXcV+KUrs2B2Q/mpIvQn82uCrzVZ4O7/
cEsGOth3l7HKPhb8cUzmT0U7hrDEHh9iwRVv0Qk6Wi9CtNfOlgVGw8SvWPTS
2C8XIo+yIPV+dONl9IPihEfdISx4Gix3xxtdNjutFs9kQetFza3H0FoTV1TZ
XBaoba/tO4ouHBJRKclnAfOqQ5QTmtuhoNhWzoK6uf28g9R6Dy3XS7aw4KfO
X98s0GL5nXKK71jgK5erZ46OYXvJ7uxhgWL7rORedPT9sLV2X1nQIOlZpEOd
JyhTPH4xAdLRO27sQo+d1BRjLyegMCkiZCf6lHvVyhJRArJLr13djvawahFp
kyFAuMYkdyu628xVuH8jAcUBF/u3oI/AkOCUMgGNj73uqaGtNRb4JbUIMHAX
W6aKblS8sUxRl8B7oXtbGW0uJ7l0pwEBEw+6lZXQdRKMxSamBGzb/KdtE9pA
eDPN7gCu75WYoICuXPxwkZcNAedNC33l0bt+GywEOxLQOmtlvQGtMWw/d9+T
gONNnW7r0dm9vbOEDwF/mX+MXIdWfOc7QwYScOSEe7kcmtE8PV13loAyDdcl
lGWfX/nZGk6AS/Jbd1k0/bHI1OcrBOzNf/lGhqq3R/Qfk9cJ8D+u60A5Nl9h
YskdArqfKY5Ko4U4+WMS8QTcbbyVRPlqqs7opmQCrp8LcKJMi6/7ppVBQN3L
15spR9yyHDHOxPVrM1dRno3sHLbNI4DfY16Q8tkwryHPYgJWZDatpjweNPYl
uAz3f09mN2Vfn7CBqMcEDCl8PkV50H1Z//16AqqcVYopezrd/US8wvjoDIpQ
+/1oJdtH/g/jW60QTtnFPPNjXTsBzYOd85TbQbOn9QMBZJlIHHV+m11VHz5/
IuD9tso9VHyaNMy7JocIMDs0ME3ZQqmlc8kYAdOrbjVQ8X0m5/pO4icBw2F5
2VT8jSSH2jfNESB/yyKDyk+VcPBbLRob0oyO5WxE716y0GoswAbX9OnnVD7J
3/+22K5ggweTf5bK97YfEm88JdiQvT/uL0V07nB6c7A0G5bdlaOpoFnvSl7f
V2KD5/iUN1Vf9gkXLPTV2XCi51kXVX+CdiYN/dvRnja/qfoMbG59oq3PhmO/
hQmqfhViUvR7jHC9DU/+pur77X7P8mvmbDAUW7mEqn+9hh/FHYfZ0NmTO6aN
Ho2q2HbZiQ3Se4y+70YzjSLzVI+y4W6Svaw+WqBaLPO8Dxsc5xWNTdGt5PYk
2cts2LL7Wil1H68FzUjVX2VD1qJe/f1o3W01cX632JCgGxFmRdVjjtXt6gQ2
HLA5+tSZyi8z4JJbPhtcZqOqXdHr3XbNC5BsfL9Zr9zRb+QWQnllbAg1frHm
BBXPxJgztHo2yK2qjAhBL4nN8ybe4/mVOLRQ9KODIZ8O9OJ6L64nhKN9hPTd
pgbYsLt012Qkuvlqo5MpdvqXOnqhceiUC18PDApwwLaxh1dC9adTqjvUtTkg
VWljUo7+ojJe0LqHA5d0qoeq0UkDpeoXDDmw/0OE13P0Ig9zpaYDHCh/zlHp
ou6/4/G1gcc4MKdx98My7O9epuyF4lgOiKsKzwqjCydu5rY94EC/eIiaOHo2
LchpOoUDFRUrG9ajY6ahWDeLAxq2AaM66FJup3dNDZr7Yu40WkhoZVPTBAdm
8hQcQ9H2j36eH/vFgYvEqYZLaMaxD8piCxyoOlbfewetVZl92U4oExbUGEsL
0K5+Jju7FDIhrWti+Tia99/5lCHbTJD7vpmYQc+Fue8Tcs4E+zEbGxq+n6Yq
5j/V3TNh7pnPsDi685KkVaBfJohU1SzfjV6iWbh4OjoTDjQKL41CO9zv91ny
KBO0/1n9XQ3f93lHK531a7mw2mDdm53oyY6TFpvWc0G36MgLA/SIY6SzqiIX
zO8Fj9ujOx0fXtixnQsRhuoqUeiHjrJPzfZx4YhLztY+tL/joEVgKBdeRg5y
cnHe+OhwyaXmHRcmg4nxMnR7e6Lfsx4uuIs+sGxANzkUR7zq5wLNQNqkD13p
MMBoG+eCayxHai3OO3SHA/1Dy7Pg6remwzfQ1g5r/MV0syA20VU7DOerp/aF
F48lZQGN3+3dv+ixlGWifIwsMCLX3Kaj139ySUtjZ4FGU4HSQ3R4wPKqd4VZ
kLMQLD+B1r7uMWvZkAVmTs56fji/ZZVJhOhNZgHfl4SZAJwPY2VDfSQPZUO4
b3NiJs6fR/sM7Rr4cmBTYghfJXrT6kcS3fw5UDBSE96MHt6v3jopkgM+Alb5
M+izJVKH5aVzIELMaP4AzrMx179aXdDMAcnTFyym0ZUa8Qd2HMsBmqM188h+
EtaGDe5Nr8uBzkY/Mxect1vE72j+cy0X/th1DZ1BN68wDFS6nQsWAr6pN9FN
y3/ktd3LBYfB77sq0M8X7FW10nLB+MEVXRmc3yu/rtswTuaCf1ZvSDeaU5sv
cqovF/jzIupPW5MQeqZp0FU/D0xVtZ6/ssV4tYikm/7Ig5c/H41tcsH4XzBc
M+pQAPE5K5vNvLA+vOmNp/0KoXBT6ki/P/abt9zW3xt5MBlfslc8AOcf8f/N
bFTkQfGT1gID9BfrmXXmKjzst8oNyehnr/edvK/BA+VfshM2gSRE1Q/Pq+/h
gYjafp360yTwlagru9ryQCGr6FZZMN6/uMLQJ1d5wNjHjBpCD/+vI23gXx7E
s+h314aQ8E6Ur074Ng++RyYOh6JLb1qvcIrjge3Pr/Q9ZzH+kRPM8XQeTGS0
DDz9h4QfQVqN8mU8EOzU2DqJ7it0GTev5EHKq9hbiuewn32Pkgp4zAP19yeu
XkcX+bS5VdTzYFHuybOWodi/Pc5OHX7Dg/6CWe/LaDdGmvT5Nh4Y+93zLUZb
dj8DRgcPAiXePlx9HueBI6tvjHTzQO/P5d/70OvoUCDWx4MrGVp24WiRt8db
d/fzwOjPt9p89Jx47IzrIA/CJPLNetEj1qXror/y4P9lmhYC
                 "]]}, "Charting`Private`Tag$382264#3"], {}}}, {}}, {
            Arrowheads[0.015], {
             Arrow[{{-0.1, -0.07}, {-0.1, -0.07}}], 
             
             Arrow[{{-0.1, -0.05600000000000001}, {-0.10252649006622518`, \
-0.05600000000000001}}], 
             Arrow[{{-0.1, -0.042}, {-0.10505298013245033`, -0.042}}], 
             
             Arrow[{{-0.1, -0.027999999999999997`}, {-0.1075794701986755, \
-0.027999999999999997`}}], 
             
             Arrow[{{-0.1, -0.013999999999999999`}, {-0.11010596026490067`, \
-0.013999999999999999`}}], 
             Arrow[{{-0.1, 0.}, {-0.1, 0.}}], 
             
             Arrow[{{-0.1, 0.014000000000000012`}, {-0.11410596026490066`, 
              0.014000000000000012`}}], 
             
             Arrow[{{-0.1, 0.02800000000000001}, {-0.11557947019867551`, 
              0.02800000000000001}}], 
             
             Arrow[{{-0.1, 0.04200000000000001}, {-0.11705298013245033`, 
              0.04200000000000001}}], 
             
             Arrow[{{-0.1, 0.05600000000000002}, {-0.11852649006622518`, 
              0.05600000000000002}}], 
             Arrow[{{-0.1, 0.07}, {-0.12000000000000001`, 0.07}}]}, {
             Arrow[{{0, -0.07}, {0., -0.07}}], 
             
             Arrow[{{0, -0.05600000000000001}, {-0.002737668539325842, \
-0.05600000000000001}}], 
             Arrow[{{0, -0.042}, {-0.004762752808988765, -0.042}}], 
             
             Arrow[{{0, -0.027999999999999997`}, {-0.006075252808988766, \
-0.027999999999999997`}}], 
             
             Arrow[{{0, -0.013999999999999999`}, {-0.006675168539325843, \
-0.013999999999999999`}}], 
             Arrow[{{0, 0.}, {-0.0065625000000000015`, 0.}}], 
             
             Arrow[{{0, 0.014000000000000012`}, {-0.00608119266055046, 
               0.014000000000000012`}}], 
             
             Arrow[{{0, 0.02800000000000001}, {-0.005184288990825688, 
               0.02800000000000001}}], 
             
             Arrow[{{0, 0.04200000000000001}, {-0.0038717889908256886`, 
               0.04200000000000001}}], 
             
             Arrow[{{0, 0.05600000000000002}, {-0.0021436926605504563`, 
               0.05600000000000002}}], 
             Arrow[{{0, 0.07}, {0., 0.07}}]}, {
             Arrow[{{0.1, -0.07}, {0.1, -0.07}}], 
             
             Arrow[{{0.1, -0.05600000000000001}, {
              0.094735841394449, -0.05600000000000001}}], 
             Arrow[{{0.1, -0.042}, {0.0901842670585609, -0.042}}], 
             
             Arrow[{{0.1, -0.027999999999999997`}, {
              0.08634527699233574, -0.027999999999999997`}}], 
             
             Arrow[{{0.1, -0.013999999999999999`}, {
              0.08321887119577351, -0.013999999999999999`}}], 
             Arrow[{{0.1, 0.}, {0.08080504966887417, 0.}}], 
             
             Arrow[{{0.1, 0.014000000000000012`}, {0.07981284707454889, 
              0.014000000000000012`}}], 
             
             Arrow[{{0.1, 0.02800000000000001}, {0.07923624081049882, 
              0.02800000000000001}}], 
             
             Arrow[{{0.1, 0.04200000000000001}, {0.07907523087672398, 
              0.04200000000000001}}], 
             
             Arrow[{{0.1, 0.05600000000000002}, {0.07932981727322438, 
              0.05600000000000002}}], 
             Arrow[{{0.1, 0.07}, {0.08, 0.07}}]}, 
            RGBColor[0, 1, 0], 
            Line[{{-0.1, -0.07}, {-0.1, 0.07}}], 
            RGBColor[1, 0, 0], 
            Line[{{0.1, -0.07}, {0.1, 0.07}}]}}, {
          DisplayFunction -> Identity, PlotRangePadding -> {{
              Scaled[0.05], 
              Scaled[0.05]}, {
              Scaled[0.05], 
              Scaled[0.05]}}, PlotRangeClipping -> True, ImagePadding -> All, 
           DisplayFunction -> Identity, Axes -> {True, True}, 
           AxesLabel -> {None, None}, AxesOrigin -> {0, 0}, DisplayFunction :> 
           Identity, FrameLabel -> {{None, None}, {None, None}}, 
           FrameTicks -> {{Automatic, Automatic}, {Automatic, Automatic}}, 
           GridLinesStyle -> Directive[
             GrayLevel[0.5, 0.4]], 
           Method -> {
            "DefaultGraphicsInteraction" -> {
              "Version" -> 1.2, "TrackMousePosition" -> {True, False}, 
               "Effects" -> {
                "Highlight" -> {"ratio" -> 2}, 
                 "HighlightPoint" -> {"ratio" -> 2}, 
                 "Droplines" -> {
                  "freeformCursorMode" -> True, 
                   "placement" -> {"x" -> "All", "y" -> "None"}}}}, 
             "ScalingFunctions" -> None}, 
           PlotRange -> {{-0.12000000000000001`, 0.1}, {-0.07, 0.07}}, 
           PlotRangeClipping -> True, PlotRangePadding -> {
             Scaled[0.02], 
             Scaled[0.02]}, Ticks -> {Automatic, Automatic}}], 
         Graphics[{{{{{}, {}, 
              Annotation[{
                Directive[
                 Opacity[1.], 
                 AbsoluteThickness[1.6], 
                 FaceForm[
                  Opacity[0.3]], 
                 GrayLevel[0], 
                 Thickness[Large]], 
                Line[CompressedData["
1:eJwVz31Q03UABnCi0pDlkbw53t8s4Hg53kWCY77gxYUJxLqg5K1NuuRlYgrC
QgTuOORNKGEbMEAYLARZ8rLf9o0HcbHRAfIWCJGtkzdvQwwKjxJqPnfPPff5
87FPSo9i6evp6R3T9dXyea9CQRsptSnSSLA8tMGz5FP4/sXaQM+aBF7aU/x6
nVPq6fFLyxKoQjb5TQIKS2tXhSfUEmw/Ca8T11NYzAu20/9FgiiPlw1UE4Wx
ziH7vAEJDB6ca5kXU+gyGHPKvilBltbxLl1GgXP/D9fUAAkmS+cEMb9RMDzn
7uN5qRuub8WOBu1RyDw/uDqUcxd6CzbKXBsZbr/H+eyMWReidmi8bIYMuwz2
SFnVHTRvjXTZJcnwzbhLW6dzB9KCugUFRTK49Hpx8xvFkM4/imK0y9DWXRiW
a9uO16InIsQqGSJsRNc+kYqgoP9pO6aRwXrF8N6KdyuK5Wo/AU0OE7tQJlN5
GyP3Dpkp3OR4nAatNqkZRTupY+0fyTFlXpAToG4Ew6JWFZAhxyLLdVvxrAFX
ijX869VypJydW76uFsAtIj/AuU8O/hcWpFxdC7V22TxrVg7Lz//JjDO5hYML
mQ8LduR4bpBsVWlYjfebJ34OtCAwEaSIivwrsdLPrO8IJqDfX2cMf1CCt51s
j2UlEMQI/d+wPlEIn6/6LDauESSUXjTWnOZi5r/LU/YtBKwOvjrInIPqYFZY
q87vWjz16n2agcicaJlzK8FqcUCBB8nA+LZns6eI4Ev2zBH7xAyo1tc4we0E
C8etZmnMdPz4a+w7n94h0Hi8rmniXkBrf8jZyh4C2v5Jk9FRNpL/dlMY9xKU
L6X2D3DYcPCxPFqjs9HQgViJGRvCrhe2DX26P9yTwlsJLPBauzc6pARWW/0u
iX8lo6zaoUJJCNx/bwjZtkzE1+n7xvcUBHVp8xOhs0yU91l35v1EcKBHWkE5
MiHa9S3VGya4slNzxpsTg7kbyeH6SoKoQuaoI+1jBLYPDr85QmDAn1buOx6J
XfVV0MYI1ksEXF7caZg6VzWU6awyjf23ZPsUPNLF3IPjBC2Nh7Nzb55E/O5c
kNFDgti+7y7FKxkYpPtJjScJKh7YzoWzj2I+4cOab3UOm6+bcq/zw2Zb8mXT
KYKXz+jjRlPecPCv8jWfJpj2dS7pzHFFEFdsXKtzaIJDfuaqE6IVg5uHZwji
zAOfXxTZ4ILho0mezv5p7o/3uMZweyJUben8g9h3afH8fvwPgRAFDA==
                 "]], 
                Line[CompressedData["
1:eJwVzX1Q03UcB3DWJRDK8oAj2BKEdHkdLeXBNLVPMyC4znTAGJjhGkdzjRoP
d1LNIi9AEYFdg7u1CBCChgjsK6Ejf7/vh4eQ4sGLhyHriA4U5cAjBCcNBfr1
x/ve79df7yClNi7tGRcXl31c/m/PmZTe320MXm0IvzuhcoOL+YPZ2jEGu7Wu
NFgUDMdfMvlV3GbQbYqfmX8gHFZSwpQOO4MN/oa+vdFRsHsszfHTJIOrEbKc
0n4ZmLvfynVy/qw7njlYnAjbifC5d/9m0HEsjjf3nhy2Xhx6cYHzouZoUeRw
EixKDkWGTzE4cym2yjn+PjQ3+Rg67jA461p1Z8+yAkLyu3fbZxkczTJsrnBR
wa7woHSPZQZlO+mr1uJMGK7vj9rqyuKCJmzlvP0MFJtUsc0CFisWD29MFOWB
oDdmaV7M4qPb2JZccgGS3P3XByQsynVnEy776MHc92dYdCKLikTTXxhggMuX
igaUahYFR3zzfRzl8BU56xF4hkWx4GmUkDWC8rA6K1vP/YUm+/7S+T0478Mh
TS2LJ1X+m4zfVkI13z30yXUWabaZ5/ZHNazGYqG4n8W6Tkfp1MEaENEbBbxJ
FttXV14pr6kFZWtDU/oSi7X2tsEyUR1I2YLXdZsopkXXbbTq60EaI5sPElBc
Szq2P9DfDMFb1JGnxBS7Ei25qaYGqL+rcYmTUDw5LZH18hrhjTcV90ZkFEe8
S0Nzzl2Br6+8/ZrzFMXAEc+q6OUmMManb6M6isYvJX7/yFugS1cQIdRTfPSR
cSDzEwtUWkstwlqK7mPm0SdBBPaW6AozOP/rPeQM2kngVqpK2cP5vtQZELOL
wAYffLQ/Urw5GKsuExP4MG0hp6uOYl7P3FrIAQI7vI6A2kyR1xbyckoCgUaN
x61rTRRXDZbPOwoIREoe129upjg3NF55r5DAhO90roKz/Xner1uKCXh2te/x
aKFoLZLykw0EPvVTl39goXj6m6Wah1UEQnt6TzzbSnE5K3wguJ1An6k1Ipnz
tOXEwxiGQGpGFb+Z8/BCnq8WCZQJczrkP1O8+rFNcaOHwONM0Y7GNooZytOO
+GECJe94rW1wVlRXCr6wERBtW7clXKN4dPImVI8TkP9mO7fOWXz8hQsPJgks
/tCpiL9OMcAILV7TBM5nN+03c/YcU43umyGwPfY7rzXOT731zpRZAu0B+fNS
K8UHUiu3CPwHaIzcaQ==
                 "]]}, "Charting`Private`Tag$383025#1"], 
              Annotation[{
                Directive[
                 Opacity[1.], 
                 AbsoluteThickness[1.6], 
                 FaceForm[
                  Opacity[0.3]], 
                 GrayLevel[0], 
                 Thickness[Large]], 
                Line[CompressedData["
1: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
0QFPYfwPM1yadQ==
                 "]], 
                Line[CompressedData["
1:eJwtjns41Xccxx0Uwix0QnNKkcvjMpfHiHxcysOaOa4nESebUMktdydZjsvP
yFzmzBonslnZ+DLLLZ9hqZZU7ppcjswlj1wfO2di9jx7P8/ref3x+uetERju
HiQuJiZmu8N/PhqQveU3QWFdjdnr0WApmFYOlRN1UBjf6dFqneMNK/rzalPt
FK4z3Wnzn7IgM3C4gCCFSxdds0/0ngYy9fk6tFA4fcu5TDjsC2vHbeIO11E4
u7tsyniVDfbuKzFbpRT2RxXI3hQLhjVhQIBiDIVeWm0GjTmRYKW2il3RFEaI
piJmmiMhHtf2JkZRSD2T+YU+GwmDPAfqVTiFbQlex2Lso4CRodBdfIFCnZ4F
R5ONKHjtxi4cCaBwM/YAu5p9BVz40x/lO1NY/ig+n28aB9xDKX8MqVK4eNF0
I3MkGUQKX0toq1DY2cBsSd3DAcM9L7eu0CnkbYelJFpxYIgxZyWvRKFDQZXU
pe84oPn4yHNDuZ3erK7ieu4q1GrInjPfykI7GWnLfXMpkC+4pcmazMKPPS7f
ZyanwrWKtybjFVl4c8l+ezQ7DeLPpuq2fJCFa0PY4JNLgV+SEi0sJxNZSame
d5TzQJT9M8t4PAPZ3iWvkFEArl53Ncf1MlDNhc5VXi8Ci+3sO5mh6Wiotnny
wH0efPNQq9GIy8VFEx96c/u38IPtSv+90jQMCFbdxcsvhXtn1nMEX13Htugq
mtRzPmyLK7pLcr/Ayvb1G5PW5fBIkj9ALqVik2hDr6i8ApoW2sxnda9hxUjD
08KjlTAxGtJ5ZJCDQY6V2/V538PtmB6LJ5uJ+O400/KgahXY1EbKb8jEY4d3
bcpnJT/CCftRhql2DAYI7Lwe0u7CtkRlNXsiEvuUbpjEZVQD03doMdc3DA/2
yZc5rv4EfmbNDjL955HHsVN5y6qBkMVdPfRZf1w7z+uODKuF6FU9iSc8JkoP
VvX/o0GgI02KVs9i4t9KL4QaWgScfTKS8uhMnHETMpx0CDCLJ7tZOq7Y9dQ5
tNCQwP7qAe3H6i6Y9mD+nb4VgT/FN0qaJZ2R1qCv7e9J4NcgRuxwhy2KCmoT
fksnoOpWVSJlY4vzL4ZL/8oiwEhfjnCIAhxRoP0ul0NALvolGvgfx8Zst/d8
CghwppxaZcwsMfb6SvlyGYFWBs9ofOhDXI0y6z7ctPOXI7S3LDZCQa3fslMr
geTBUVn2VQPsXUyjhyMB6b7lT8gpXay7MMBueUDgmcjzy0DBIYwIjF336CUw
t3vMOCFXHdn8UrXEAQISpxz3cVmq6DrWBfxhAoKQ+mO3Z95HwzP7qYUxAq7c
COHlszLI4EGNooBAJV+w9+S8GMoPBvdbTBMwt07kFL1ZattUyhP6zxIQ+38L
bo0M7hsC/wKBzAdH
                 "]]}, "Charting`Private`Tag$383025#2"], 
              Annotation[{
                Directive[
                 Opacity[1.], 
                 AbsoluteThickness[1.6], 
                 FaceForm[
                  Opacity[0.3]], 
                 GrayLevel[0], 
                 Thickness[Large]], 
                Line[CompressedData["
1:eJwVz30w23ccB3Cl5dLkdqZp1FPIZFp2TNXT7NqPp3J6VJtNbLQjVKotqXhY
Z6RGVVW3krqlE0pWE60Ozb6JJOZ80LVo6VZWYozsjtKhp7NjtNX9+r573/te
f745Sad5KaYmJiYBVN+svOpN9LBwWMc+P69Cz67I6LGremhanetUz6nwzwuV
+2xkeki9ZpMwPaPCs+vj/VVX9DA992VdiFGF42mfVF67pIeJgr1Opo9VuKnk
9fNWiR4Gm3s4BZ0qXL1oPvlaoIcW2iA3V6pCqWE1I/I9PYi7/3JL91PhRoij
oU+rA/pn7nvez76NfQklgs5oHWQd75rtyWtFocL/Dm9RC/U7xUcOslpw5NeA
S9ISLbwKEvZ/c+VHLHDPXxK5aeHsQ9fG5l23sCqnv7T1fhu4anZLChU38f4r
TfnjjDZovF0clu94A+Uryyfandogiq38KlanxLZT3vFzgxpweEInT7wa0PP6
21bJxRpgOgXy+b31GNrOtZ8CDUyKcGEh6ToqDBpx8ZoahqzP5fkZFWieXNhQ
87MaJlLcVn55Vov9ukfpsnw1pB4anSkyViPT7+jiaLAa5MdsOy4bv0N5xTC7
2VINdkfXs+KZMlx/q90lYpLAEi3ZvoJeiVK7vVwLQoBZnao871uBY0081v5S
Ajbdi0H3IsqwrL4nIjuJQEyd72aHkGIMaTgTPhNMIPHrzG3z4RK8d3e8sINL
IOWW3PihtRjtRy9OfkTZxfbpbs3TDGRdYH0+70xgttTvnEdHBv7X8yDGjvIJ
4e/vcgQZmNPUMCrhEPgj2H6EwT+NUf7WM1FsAvMeZvPfS9IwN/q5i+0OAgyL
R8yBASEe88ma0lkTuDydru0UC/Ef/fBQLGXLnq1xKpYQN2o9T8pY1B9JaJ0s
MQUHDJ/Gs7YTsF/Wugr+TcYD9JPhHCsC7lO1+1bsBIinCsOSGQRqRGO/BY7w
sb6Ex6ZT3qrWleud+bjsqvMgdAJn1q4e9BLH4AgtaM2MMq+YP+DM+BiVHhE+
N2gEaPLhXvPgw5jJ2BPxwpzAYlm1pCo+HC1bIpuUlPu2x70oW9mPNob1EB7l
HxQ7cvOloSi6y+Q0bSEQ1/ZtdkJvEDpvgaIjmwmU33EcPSD0R4e/XzbSKIeN
1Qy51/hgUWy0udaMwMtnNg8th7xQ+kCVZkV52HtXWXOeGwYMdWd3mRIITHyn
MGuWi1ECoUZEOd76g6VMJRsHv6jzcKDsK3Kf3JBsQ1lBjnB6E4GfbnpPTxy3
wP8BTarQ1g==
                 "]], 
                Line[CompressedData["
1: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
LNqP4fdEn5z4hp40K5O+OcGA/wMUbEsg
                 "]]}, "Charting`Private`Tag$383025#3"], {}}}, {}}, {
            Arrowheads[0.015], {
             Arrow[{{-0.1, -0.07}, {-0.1, -0.07}}], 
             
             Arrow[{{-0.1, -0.05600000000000001}, {-0.10252649006622518`, \
-0.05600000000000001}}], 
             Arrow[{{-0.1, -0.042}, {-0.10505298013245033`, -0.042}}], 
             
             Arrow[{{-0.1, -0.027999999999999997`}, {-0.1075794701986755, \
-0.027999999999999997`}}], 
             
             Arrow[{{-0.1, -0.013999999999999999`}, {-0.11010596026490067`, \
-0.013999999999999999`}}], 
             Arrow[{{-0.1, 0.}, {-0.1, 0.}}], 
             
             Arrow[{{-0.1, 0.014000000000000012`}, {-0.11410596026490066`, 
              0.014000000000000012`}}], 
             
             Arrow[{{-0.1, 0.02800000000000001}, {-0.11557947019867551`, 
              0.02800000000000001}}], 
             
             Arrow[{{-0.1, 0.04200000000000001}, {-0.11705298013245033`, 
              0.04200000000000001}}], 
             
             Arrow[{{-0.1, 0.05600000000000002}, {-0.11852649006622518`, 
              0.05600000000000002}}], 
             Arrow[{{-0.1, 0.07}, {-0.12000000000000001`, 0.07}}]}, {
             Arrow[{{0, -0.07}, {0., -0.07}}], 
             
             Arrow[{{0, -0.05600000000000001}, {-0.005475337078651684, \
-0.05600000000000001}}], 
             Arrow[{{0, -0.042}, {-0.00952550561797753, -0.042}}], 
             
             Arrow[{{0, -0.027999999999999997`}, {-0.012150505617977533`, \
-0.027999999999999997`}}], 
             
             Arrow[{{0, -0.013999999999999999`}, {-0.013350337078651686`, \
-0.013999999999999999`}}], 
             Arrow[{{0, 0.}, {-0.013125000000000003`, 0.}}], 
             
             Arrow[{{0, 0.014000000000000012`}, {-0.01216238532110092, 
               0.014000000000000012`}}], 
             
             Arrow[{{0, 0.02800000000000001}, {-0.010368577981651377`, 
               0.02800000000000001}}], 
             
             Arrow[{{0, 0.04200000000000001}, {-0.007743577981651377, 
               0.04200000000000001}}], 
             
             Arrow[{{0, 0.05600000000000002}, {-0.004287385321100913, 
               0.05600000000000002}}], 
             Arrow[{{0, 0.07}, {0., 0.07}}]}, {
             Arrow[{{0.1, -0.07}, {0.1, -0.07}}], 
             
             Arrow[{{0.1, -0.05600000000000001}, {
              0.09199817285512316, -0.05600000000000001}}], 
             Arrow[{{0.1, -0.042}, {0.08542151424957214, -0.042}}], 
             
             Arrow[{{0.1, -0.027999999999999997`}, {
              0.08027002418334697, -0.027999999999999997`}}], 
             
             Arrow[{{0.1, -0.013999999999999999`}, {
              0.07654370265644767, -0.013999999999999999`}}], 
             Arrow[{{0.1, 0.}, {0.07424254966887417, 0.}}], 
             
             Arrow[{{0.1, 0.014000000000000012`}, {0.07373165441399843, 
              0.014000000000000012`}}], 
             
             Arrow[{{0.1, 0.02800000000000001}, {0.07405195181967314, 
              0.02800000000000001}}], 
             
             Arrow[{{0.1, 0.04200000000000001}, {0.0752034418858983, 
              0.04200000000000001}}], 
             
             Arrow[{{0.1, 0.05600000000000002}, {0.07718612461267393, 
              0.05600000000000002}}], 
             Arrow[{{0.1, 0.07}, {0.08, 0.07}}]}, 
            RGBColor[0, 1, 0], 
            Line[{{-0.1, -0.07}, {-0.1, 0.07}}], 
            RGBColor[1, 0, 0], 
            Line[{{0.1, -0.07}, {0.1, 0.07}}]}}, {
          DisplayFunction -> Identity, PlotRangePadding -> {{
              Scaled[0.05], 
              Scaled[0.05]}, {
              Scaled[0.05], 
              Scaled[0.05]}}, PlotRangeClipping -> True, ImagePadding -> All, 
           DisplayFunction -> Identity, Axes -> {True, True}, 
           AxesLabel -> {None, None}, AxesOrigin -> {0, 0}, DisplayFunction :> 
           Identity, FrameLabel -> {{None, None}, {None, None}}, 
           FrameTicks -> {{Automatic, Automatic}, {Automatic, Automatic}}, 
           GridLinesStyle -> Directive[
             GrayLevel[0.5, 0.4]], 
           Method -> {
            "DefaultGraphicsInteraction" -> {
              "Version" -> 1.2, "TrackMousePosition" -> {True, False}, 
               "Effects" -> {
                "Highlight" -> {"ratio" -> 2}, 
                 "HighlightPoint" -> {"ratio" -> 2}, 
                 "Droplines" -> {
                  "freeformCursorMode" -> True, 
                   "placement" -> {"x" -> "All", "y" -> "None"}}}}, 
             "ScalingFunctions" -> None}, 
           PlotRange -> {{-0.12000000000000001`, 0.1}, {-0.07, 0.07}}, 
           PlotRangeClipping -> True, PlotRangePadding -> {
             Scaled[0.02], 
             Scaled[0.02]}, Ticks -> {Automatic, Automatic}}], 
         Graphics[{{{{{}, {}, 
              Annotation[{
                Directive[
                 Opacity[1.], 
                 AbsoluteThickness[1.6], 
                 FaceForm[
                  Opacity[0.3]], 
                 GrayLevel[0], 
                 Thickness[Large]], 
                Line[CompressedData["
1:eJwVz31Q03UABnCi0pDlkbw53t8s4Hg53kWCY77gxYUJxLqg5K1NuuRlYgrC
QgTuOORNKGEbMEAYLARZ8rLf9o0HcbHRAfIWCJGtkzdvQwwKjxJqPnfPPff5
87FPSo9i6evp6R3T9dXyea9CQRsptSnSSLA8tMGz5FP4/sXaQM+aBF7aU/x6
nVPq6fFLyxKoQjb5TQIKS2tXhSfUEmw/Ca8T11NYzAu20/9FgiiPlw1UE4Wx
ziH7vAEJDB6ca5kXU+gyGHPKvilBltbxLl1GgXP/D9fUAAkmS+cEMb9RMDzn
7uN5qRuub8WOBu1RyDw/uDqUcxd6CzbKXBsZbr/H+eyMWReidmi8bIYMuwz2
SFnVHTRvjXTZJcnwzbhLW6dzB9KCugUFRTK49Hpx8xvFkM4/imK0y9DWXRiW
a9uO16InIsQqGSJsRNc+kYqgoP9pO6aRwXrF8N6KdyuK5Wo/AU0OE7tQJlN5
GyP3Dpkp3OR4nAatNqkZRTupY+0fyTFlXpAToG4Ew6JWFZAhxyLLdVvxrAFX
ijX869VypJydW76uFsAtIj/AuU8O/hcWpFxdC7V22TxrVg7Lz//JjDO5hYML
mQ8LduR4bpBsVWlYjfebJ34OtCAwEaSIivwrsdLPrO8IJqDfX2cMf1CCt51s
j2UlEMQI/d+wPlEIn6/6LDauESSUXjTWnOZi5r/LU/YtBKwOvjrInIPqYFZY
q87vWjz16n2agcicaJlzK8FqcUCBB8nA+LZns6eI4Ev2zBH7xAyo1tc4we0E
C8etZmnMdPz4a+w7n94h0Hi8rmniXkBrf8jZyh4C2v5Jk9FRNpL/dlMY9xKU
L6X2D3DYcPCxPFqjs9HQgViJGRvCrhe2DX26P9yTwlsJLPBauzc6pARWW/0u
iX8lo6zaoUJJCNx/bwjZtkzE1+n7xvcUBHVp8xOhs0yU91l35v1EcKBHWkE5
MiHa9S3VGya4slNzxpsTg7kbyeH6SoKoQuaoI+1jBLYPDr85QmDAn1buOx6J
XfVV0MYI1ksEXF7caZg6VzWU6awyjf23ZPsUPNLF3IPjBC2Nh7Nzb55E/O5c
kNFDgti+7y7FKxkYpPtJjScJKh7YzoWzj2I+4cOab3UOm6+bcq/zw2Zb8mXT
KYKXz+jjRlPecPCv8jWfJpj2dS7pzHFFEFdsXKtzaIJDfuaqE6IVg5uHZwji
zAOfXxTZ4ILho0mezv5p7o/3uMZweyJUben8g9h3afH8fvwPgRAFDA==
                 "]], 
                Line[CompressedData["
1:eJwVzX1Q03UcB3DWJRDK8oAj2BKEdHkdLeXBNLVPMyC4znTAGJjhGkdzjRoP
d1LNIi9AEYFdg7u1CBCChgjsK6Ejf7/vh4eQ4sGLhyHriA4U5cAjBCcNBfr1
x/ve79df7yClNi7tGRcXl31c/m/PmZTe320MXm0IvzuhcoOL+YPZ2jEGu7Wu
NFgUDMdfMvlV3GbQbYqfmX8gHFZSwpQOO4MN/oa+vdFRsHsszfHTJIOrEbKc
0n4ZmLvfynVy/qw7njlYnAjbifC5d/9m0HEsjjf3nhy2Xhx6cYHzouZoUeRw
EixKDkWGTzE4cym2yjn+PjQ3+Rg67jA461p1Z8+yAkLyu3fbZxkczTJsrnBR
wa7woHSPZQZlO+mr1uJMGK7vj9rqyuKCJmzlvP0MFJtUsc0CFisWD29MFOWB
oDdmaV7M4qPb2JZccgGS3P3XByQsynVnEy776MHc92dYdCKLikTTXxhggMuX
igaUahYFR3zzfRzl8BU56xF4hkWx4GmUkDWC8rA6K1vP/YUm+/7S+T0478Mh
TS2LJ1X+m4zfVkI13z30yXUWabaZ5/ZHNazGYqG4n8W6Tkfp1MEaENEbBbxJ
FttXV14pr6kFZWtDU/oSi7X2tsEyUR1I2YLXdZsopkXXbbTq60EaI5sPElBc
Szq2P9DfDMFb1JGnxBS7Ei25qaYGqL+rcYmTUDw5LZH18hrhjTcV90ZkFEe8
S0Nzzl2Br6+8/ZrzFMXAEc+q6OUmMManb6M6isYvJX7/yFugS1cQIdRTfPSR
cSDzEwtUWkstwlqK7mPm0SdBBPaW6AozOP/rPeQM2kngVqpK2cP5vtQZELOL
wAYffLQ/Urw5GKsuExP4MG0hp6uOYl7P3FrIAQI7vI6A2kyR1xbyckoCgUaN
x61rTRRXDZbPOwoIREoe129upjg3NF55r5DAhO90roKz/Xner1uKCXh2te/x
aKFoLZLykw0EPvVTl39goXj6m6Wah1UEQnt6TzzbSnE5K3wguJ1An6k1Ipnz
tOXEwxiGQGpGFb+Z8/BCnq8WCZQJczrkP1O8+rFNcaOHwONM0Y7GNooZytOO
+GECJe94rW1wVlRXCr6wERBtW7clXKN4dPImVI8TkP9mO7fOWXz8hQsPJgks
/tCpiL9OMcAILV7TBM5nN+03c/YcU43umyGwPfY7rzXOT731zpRZAu0B+fNS
K8UHUiu3CPwHaIzcaQ==
                 "]]}, "Charting`Private`Tag$383778#1"], 
              Annotation[{
                Directive[
                 Opacity[1.], 
                 AbsoluteThickness[1.6], 
                 FaceForm[
                  Opacity[0.3]], 
                 GrayLevel[0], 
                 Thickness[Large]], 
                Line[CompressedData["
1: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

                 "]], 
                Line[CompressedData["
1:eJwtjnkwnAcchm0mLBHNsKJxrRFxNMNKyEQcya9EBJ3EsY5Fy4qyg4ijjStk
q1mEDZZvTbeijlUNEolPui0SfhIRpnUkzt2WtKWOqhFnWTajOtN35pnnj+ef
1/hKvG/kPiUlpQ/3+M+hufMdFyyEWCI+9ecEhwqNg5fzHLWEmNrFfOpUEAA/
VFv7xWgKccPbl7JwORBmPaYY3YeEuBzrxXcdYkF3g/pW/EEhzlR7VMqlIZD6
8Jrsa2UhzqtUTp9cY0Nz+3XpuU0CR5II9XIlDqTt5Pb0jxPob9ph1VKQCI3M
fw6NjhGYsD2dMNeWCHeLUgp+HSUwf1Dte535RKhubjafHSawI83f4bpLEgTW
qstWBgm0GFh0s9lMgqtn3a2newhUJOuzH7A/B4czi/VWPxIo7k0tqbJNgUjW
b+PhBIFLsbabt2UZoOA3uRiWENgl8X6SdSATvs01wXEBgaLdOG66YyYcHV9a
9Cgk8DxRR736TSZMjOkZmOTt9TbDI17hN8E1qLe37iaBzmqq9of/4sJSdFoI
JZpAT+a1du+MLKhus42acyCwfNlld4LPA30V47A7oyW4Po6SoMJ8yC4f6NSM
KcHAG1l+DdoCUMw/p0TOFSM7oGwS6QQouF+EmLOLUe+STrb2RinE7s5zzQYF
yNBTXNBvF8Fjf4Ofpk0EuGQTpNP27C7ssGORtlSIYRxdZVFJBdBUl0eGgwuw
47M6CvVVFXD369/I6eFj7bONoj+cxGBJTeg8YJKPrdubx0vFNaATQfedOHcb
a2SSfqFZLdTVFg6VsXMw0q1297HgO3CUlsWIzvLwHcvb3ki3Dk64HvZMo36J
zwOauBFl9RAZ4fmwr42LYVPO/j2U+7Cbvbmv+FU6DtOKbFJyH0Amz9j2/v5k
NBrWqHRbawS3ez+vqhgloijT+cjbwEcwmMTT02RwcD1K1JcY1wSMuE7eiRkW
qo7VjewYk2BykZ915xYLt2iv5camJLxV/qhVaszCOR853d2ChIyT9TLn0EB8
2e8RLWSQoOX8+2TAmD/yuhfeWTqSYOpiv87v8kWKxNI81I8EgciKdD3mgdtE
U1pnDgn30hQc9U/cceG1tGI2j4SvjkmEzaUXUXaI8uJgAQkeY9NeYhU3bOH7
vBdEkFDZcPoSdc4Fk2+tilcqSTBgfNozcN4e15JO9R1tJcGX7rgaQ9rhVNPH
K+5PSZismlHtpZ/GoSWeTjyS4BYqkb/YssHmmFH2k24S7FK5QwTzA0y4krzB
HCLBOjtq5pfjZsiuqtBLHyXBpWV9sIZigl5vXkKVlASmoQYrOUQXGcHv5y++
IUERoe1IU6EhXQSPtKZI2FoeLuOEqaHGGGfkzMzen2A7J3a4vENBE8hD50lQ
+n+LPi307L9J+BeccAdD
                 "]]}, "Charting`Private`Tag$383778#2"], 
              Annotation[{
                Directive[
                 Opacity[1.], 
                 AbsoluteThickness[1.6], 
                 FaceForm[
                  Opacity[0.3]], 
                 GrayLevel[0], 
                 Thickness[Large]], 
                Line[CompressedData["
1:eJwV0A0w1HkYB3CjIjElbxulvOUteiEv18s9XkpXV06pVV5KtEudl5bSsTZt
uyKHVi+75+VQalkiP5a1pX2iLrmTpCs5G3vaSCKV6tLL3L9n5plnPjPfmWfm
axkRv42hqaGh8SO1325B/reRw8utTQvTRwlaRG91XCWSQ+WH5wrpc4KbKphz
+87KIfp30z3qZwQzOJJBc4Ec1M9TSnxVBCvZgrzyE3JQpq210HxIUHD7qcVf
iXK4W91qmaYgqBSWzAj0l0ONzl2b5DyCbMuYYcZ0ObBa/nWM9SDYYcD9RRHd
BLq7nV2XHapFuyllv+UTGSRG3RhuZV9BjVt/jpfukkGZHSvU36QG75n9wfvS
1QhfvJntOacvY9LFdFvzoEY42ulQXm1fhTxpDHdZbwM4NKzgcEsl+PpeZFRb
ZAOU1/L9UhdVYCd3zeXuT1LYslB8LKhJjI/POqc55EnBfEi3fsjlEiZ4sIp+
cJWCkYUXnd5WhrU94vkiZT30x+HLlxEXcJ59zREuvx66aTy2h6oU9TMnfcY8
6kHJcHx/a7wYO1G4U2e0DqIDep4dVxVi/oALU3GpDgr2mTXnqn7D6w1CC/GB
OpgfNpUYYiRE9X6PmcLldTChE7lAoHsGn4Q7as7WqAOjwmhxursAi1tzHpXd
J2DaMuZ9e2MWXhszfRNQSWBHift0c18+ysK2jbZLCExINjNLnfh4I0i2ypdy
tjTijrUJH6dGtJTuFQRa23OzHUd4OCuj2d5KTGD55JCR5ykeFpdxX8y8QEBv
o2hxYN9xLGImzqEVUPk3H/xOJnJRbfiu3+1XAuHZCYajGziY5DXw+GoWAaVT
Od2exsGaa8aeXpR33u3LZwylon5xlO3mkwQCZq+3UPFT8bRBSWt0BgEvAc35
YQsbC66GfpTyCFiebfbD1Sl4RcswPD+VwGChVsqZZUdwXDtj2hLKu9esvt71
NQm7gzboXWcT+EcZrzG7Mwmzn17eMphCoNu890RmTBIqKnUFK5IJ3CypOsOR
HEab/2iGTw8TuFgWUB1lfQg/5v5scDqeAKOqQLWaxsLHbVE97pRtzUZWNIwc
xNpxMtkXR2A404O3tPkg+mgt97SjvJ/592LLvQdxKvTBYEsM9d9nwSM9ejw2
VTTe1j5AYHTptNHznBiMk7+683Af1Z/2faOODiY6EYkonXKuOlamYDFxUEgU
bpT1W2cFExMmujhVGYsiCRhx1pUIwxnIPLp+OCyCwIK3Moe9k5Fo1mJi+nkP
AeeB4u/fz9+LClwiSwkhUBTX2+X1iI7ndVkv3CnPkjadklvT0dbmXMLbYAJH
Por8XVg70OBaMjeW8jY+vcNabzuyj0nzGbsI6BQ8aNPy2YqC/RP1jCACY1mF
nPyQDZiZZuVmR/mOcfCnrPfr0SrCVXeETvVXOi85NW8drsp53RBLObjx3KE9
bd44lTIwg72DwKmbi3o2MT3x6zvtpUDZr7eo27nIDS+snVM1jfLncdNO/W4X
7HK5WpazncCDlfZZ1WxH3KUKWxRI2Svcips4bIP8YNWreZRDaN9NJIgX4k/n
vY0HAgm4xzn3f+UYYqiIqW6kXCdZqVZGaeP/cc5kpg==
                 "]], 
                Line[CompressedData["
1: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
8YufCfg/OGbN0w==
                 "]]}, "Charting`Private`Tag$383778#3"], {}}}, {}}, {
            Arrowheads[0.015], {
             Arrow[{{-0.1, -0.07}, {-0.1, -0.07}}], 
             
             Arrow[{{-0.1, -0.05600000000000001}, {-0.10252649006622518`, \
-0.05600000000000001}}], 
             Arrow[{{-0.1, -0.042}, {-0.10505298013245033`, -0.042}}], 
             
             Arrow[{{-0.1, -0.027999999999999997`}, {-0.1075794701986755, \
-0.027999999999999997`}}], 
             
             Arrow[{{-0.1, -0.013999999999999999`}, {-0.11010596026490067`, \
-0.013999999999999999`}}], 
             Arrow[{{-0.1, 0.}, {-0.1, 0.}}], 
             
             Arrow[{{-0.1, 0.014000000000000012`}, {-0.11410596026490066`, 
              0.014000000000000012`}}], 
             
             Arrow[{{-0.1, 0.02800000000000001}, {-0.11557947019867551`, 
              0.02800000000000001}}], 
             
             Arrow[{{-0.1, 0.04200000000000001}, {-0.11705298013245033`, 
              0.04200000000000001}}], 
             
             Arrow[{{-0.1, 0.05600000000000002}, {-0.11852649006622518`, 
              0.05600000000000002}}], 
             Arrow[{{-0.1, 0.07}, {-0.12000000000000001`, 0.07}}]}, {
             Arrow[{{0, -0.07}, {0., -0.07}}], 
             
             Arrow[{{0, -0.05600000000000001}, {-0.008213005617977527, \
-0.05600000000000001}}], 
             Arrow[{{0, -0.042}, {-0.014288258426966296`, -0.042}}], 
             
             Arrow[{{0, -0.027999999999999997`}, {-0.0182257584269663, \
-0.027999999999999997`}}], 
             
             Arrow[{{0, -0.013999999999999999`}, {-0.020025505617977533`, \
-0.013999999999999999`}}], 
             Arrow[{{0, 0.}, {-0.019687500000000007`, 0.}}], 
             
             Arrow[{{0, 0.014000000000000012`}, {-0.01824357798165138, 
               0.014000000000000012`}}], 
             
             Arrow[{{0, 0.02800000000000001}, {-0.015552866972477066`, 
               0.02800000000000001}}], 
             
             Arrow[{{0, 0.04200000000000001}, {-0.011615366972477066`, 
               0.04200000000000001}}], 
             
             Arrow[{{0, 0.05600000000000002}, {-0.00643107798165137, 
               0.05600000000000002}}], 
             Arrow[{{0, 0.07}, {0., 0.07}}]}, {
             Arrow[{{0.1, -0.07}, {0.1, -0.07}}], 
             
             Arrow[{{0.1, -0.05600000000000001}, {
              0.08926050431579731, -0.05600000000000001}}], 
             Arrow[{{0.1, -0.042}, {0.08065876144058337, -0.042}}], 
             Arrow[{{0.1, -0.027999999999999997`}, {
              0.0741947713743582, -0.027999999999999997`}}], 
             
             Arrow[{{0.1, -0.013999999999999999`}, {
              0.06986853411712181, -0.013999999999999999`}}], 
             Arrow[{{0.1, 0.}, {0.06768004966887417, 0.}}], 
             
             Arrow[{{0.1, 0.014000000000000012`}, {0.06765046175344797, 
              0.014000000000000012`}}], 
             
             Arrow[{{0.1, 0.02800000000000001}, {0.06886766282884745, 
              0.02800000000000001}}], 
             
             Arrow[{{0.1, 0.04200000000000001}, {0.07133165289507261, 
              0.04200000000000001}}], 
             
             Arrow[{{0.1, 0.05600000000000002}, {0.07504243195212347, 
              0.05600000000000002}}], 
             Arrow[{{0.1, 0.07}, {0.08, 0.07}}]}, 
            RGBColor[0, 1, 0], 
            Line[{{-0.1, -0.07}, {-0.1, 0.07}}], 
            RGBColor[1, 0, 0], 
            Line[{{0.1, -0.07}, {0.1, 0.07}}]}}, {
          DisplayFunction -> Identity, PlotRangePadding -> {{
              Scaled[0.05], 
              Scaled[0.05]}, {
              Scaled[0.05], 
              Scaled[0.05]}}, PlotRangeClipping -> True, ImagePadding -> All, 
           DisplayFunction -> Identity, Axes -> {True, True}, 
           AxesLabel -> {None, None}, AxesOrigin -> {0, 0}, DisplayFunction :> 
           Identity, FrameLabel -> {{None, None}, {None, None}}, 
           FrameTicks -> {{Automatic, Automatic}, {Automatic, Automatic}}, 
           GridLinesStyle -> Directive[
             GrayLevel[0.5, 0.4]], 
           Method -> {
            "DefaultGraphicsInteraction" -> {
              "Version" -> 1.2, "TrackMousePosition" -> {True, False}, 
               "Effects" -> {
                "Highlight" -> {"ratio" -> 2}, 
                 "HighlightPoint" -> {"ratio" -> 2}, 
                 "Droplines" -> {
                  "freeformCursorMode" -> True, 
                   "placement" -> {"x" -> "All", "y" -> "None"}}}}, 
             "ScalingFunctions" -> None}, 
           PlotRange -> {{-0.12000000000000001`, 0.1}, {-0.07, 0.07}}, 
           PlotRangeClipping -> True, PlotRangePadding -> {
             Scaled[0.02], 
             Scaled[0.02]}, Ticks -> {Automatic, Automatic}}], 
         Graphics[{{{{{}, {}, 
              Annotation[{
                Directive[
                 Opacity[1.], 
                 AbsoluteThickness[1.6], 
                 FaceForm[
                  Opacity[0.3]], 
                 GrayLevel[0], 
                 Thickness[Large]], 
                Line[CompressedData["
1:eJwVz31Q03UABnCi0pDlkbw53t8s4Hg53kWCY77gxYUJxLqg5K1NuuRlYgrC
QgTuOORNKGEbMEAYLARZ8rLf9o0HcbHRAfIWCJGtkzdvQwwKjxJqPnfPPff5
87FPSo9i6evp6R3T9dXyea9CQRsptSnSSLA8tMGz5FP4/sXaQM+aBF7aU/x6
nVPq6fFLyxKoQjb5TQIKS2tXhSfUEmw/Ca8T11NYzAu20/9FgiiPlw1UE4Wx
ziH7vAEJDB6ca5kXU+gyGHPKvilBltbxLl1GgXP/D9fUAAkmS+cEMb9RMDzn
7uN5qRuub8WOBu1RyDw/uDqUcxd6CzbKXBsZbr/H+eyMWReidmi8bIYMuwz2
SFnVHTRvjXTZJcnwzbhLW6dzB9KCugUFRTK49Hpx8xvFkM4/imK0y9DWXRiW
a9uO16InIsQqGSJsRNc+kYqgoP9pO6aRwXrF8N6KdyuK5Wo/AU0OE7tQJlN5
GyP3Dpkp3OR4nAatNqkZRTupY+0fyTFlXpAToG4Ew6JWFZAhxyLLdVvxrAFX
ijX869VypJydW76uFsAtIj/AuU8O/hcWpFxdC7V22TxrVg7Lz//JjDO5hYML
mQ8LduR4bpBsVWlYjfebJ34OtCAwEaSIivwrsdLPrO8IJqDfX2cMf1CCt51s
j2UlEMQI/d+wPlEIn6/6LDauESSUXjTWnOZi5r/LU/YtBKwOvjrInIPqYFZY
q87vWjz16n2agcicaJlzK8FqcUCBB8nA+LZns6eI4Ev2zBH7xAyo1tc4we0E
C8etZmnMdPz4a+w7n94h0Hi8rmniXkBrf8jZyh4C2v5Jk9FRNpL/dlMY9xKU
L6X2D3DYcPCxPFqjs9HQgViJGRvCrhe2DX26P9yTwlsJLPBauzc6pARWW/0u
iX8lo6zaoUJJCNx/bwjZtkzE1+n7xvcUBHVp8xOhs0yU91l35v1EcKBHWkE5
MiHa9S3VGya4slNzxpsTg7kbyeH6SoKoQuaoI+1jBLYPDr85QmDAn1buOx6J
XfVV0MYI1ksEXF7caZg6VzWU6awyjf23ZPsUPNLF3IPjBC2Nh7Nzb55E/O5c
kNFDgti+7y7FKxkYpPtJjScJKh7YzoWzj2I+4cOab3UOm6+bcq/zw2Zb8mXT
KYKXz+jjRlPecPCv8jWfJpj2dS7pzHFFEFdsXKtzaIJDfuaqE6IVg5uHZwji
zAOfXxTZ4ILho0mezv5p7o/3uMZweyJUben8g9h3afH8fvwPgRAFDA==
                 "]], 
                Line[CompressedData["
1:eJwVzX1Q03UcB3DWJRDK8oAj2BKEdHkdLeXBNLVPMyC4znTAGJjhGkdzjRoP
d1LNIi9AEYFdg7u1CBCChgjsK6Ejf7/vh4eQ4sGLhyHriA4U5cAjBCcNBfr1
x/ve79df7yClNi7tGRcXl31c/m/PmZTe320MXm0IvzuhcoOL+YPZ2jEGu7Wu
NFgUDMdfMvlV3GbQbYqfmX8gHFZSwpQOO4MN/oa+vdFRsHsszfHTJIOrEbKc
0n4ZmLvfynVy/qw7njlYnAjbifC5d/9m0HEsjjf3nhy2Xhx6cYHzouZoUeRw
EixKDkWGTzE4cym2yjn+PjQ3+Rg67jA461p1Z8+yAkLyu3fbZxkczTJsrnBR
wa7woHSPZQZlO+mr1uJMGK7vj9rqyuKCJmzlvP0MFJtUsc0CFisWD29MFOWB
oDdmaV7M4qPb2JZccgGS3P3XByQsynVnEy776MHc92dYdCKLikTTXxhggMuX
igaUahYFR3zzfRzl8BU56xF4hkWx4GmUkDWC8rA6K1vP/YUm+/7S+T0478Mh
TS2LJ1X+m4zfVkI13z30yXUWabaZ5/ZHNazGYqG4n8W6Tkfp1MEaENEbBbxJ
FttXV14pr6kFZWtDU/oSi7X2tsEyUR1I2YLXdZsopkXXbbTq60EaI5sPElBc
Szq2P9DfDMFb1JGnxBS7Ei25qaYGqL+rcYmTUDw5LZH18hrhjTcV90ZkFEe8
S0Nzzl2Br6+8/ZrzFMXAEc+q6OUmMManb6M6isYvJX7/yFugS1cQIdRTfPSR
cSDzEwtUWkstwlqK7mPm0SdBBPaW6AozOP/rPeQM2kngVqpK2cP5vtQZELOL
wAYffLQ/Urw5GKsuExP4MG0hp6uOYl7P3FrIAQI7vI6A2kyR1xbyckoCgUaN
x61rTRRXDZbPOwoIREoe129upjg3NF55r5DAhO90roKz/Xner1uKCXh2te/x
aKFoLZLykw0EPvVTl39goXj6m6Wah1UEQnt6TzzbSnE5K3wguJ1An6k1Ipnz
tOXEwxiGQGpGFb+Z8/BCnq8WCZQJczrkP1O8+rFNcaOHwONM0Y7GNooZytOO
+GECJe94rW1wVlRXCr6wERBtW7clXKN4dPImVI8TkP9mO7fOWXz8hQsPJgks
/tCpiL9OMcAILV7TBM5nN+03c/YcU43umyGwPfY7rzXOT731zpRZAu0B+fNS
K8UHUiu3CPwHaIzcaQ==
                 "]]}, "Charting`Private`Tag$384515#1"], 
              Annotation[{
                Directive[
                 Opacity[1.], 
                 AbsoluteThickness[1.6], 
                 FaceForm[
                  Opacity[0.3]], 
                 GrayLevel[0], 
                 Thickness[Large]], 
                Line[CompressedData["
1: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
cLtQZ6TfXRj/A5Q1pdY=
                 "]], 
                Line[CompressedData["
1:eJwtjn001Xccx10Uwix0Q+uWIg8HzcMxIp9QDmvmerzJw73ZDJXnPLuZMzfG
SC65fmvcyGZl48ssT/kMS7Wk8qzJw5V5yFGejt07MTtn73Ne5/XH65+3dlCk
R7C0lJTUiW3+8xF2zqb/BIV1NRavRkPkYFo9TEnSQWFip2erba4PLBvNa021
U7jG9KDNf8qCrKBhPkEK315wyznZewbI1Odr0ELh9E2XMvGwH6wet0s4VEfh
7M6yKdMVDjh4LMdtllLYH8NXvCEVAqtiNls1jkJv3TbjxtxosNFawa5YCqMk
U1EzzdGQiKu7k2MozH6q8At9NhoGBY7ZLyMpbEvyPhbnEAOMTJXu4vMU6vcs
OJmtx8Ard07hCJvCjfh9nGrOJXAVTn9U4EJh+cPEAqF5AvAOpv0xpEnh4gXz
9ayRVJCoXJfR06Cws4HZkr6LCya7XmxeolMo2ApPS7bhwhBjzkZZjUJHfpXc
xe+4oPPo8DMTpe3evF/D7dxlqNVWPGe5WYL2CvLWe+bSoEB0U4c1WYIfe0bc
Y6amw5cVb8zGK0rwxluHrdGcDEgMSDdo+aAEV4ewwTcvG/xT1GjhuQJkpaR7
3VbPB0nOzyzT8WLk+FAvkcEHN+87OuOGxajlSueprxWB1VbO7ayw62iitXFq
3z0BlDzQbTzKK8JFM196c/u38MOJ5f67pYXIDtHcISgohbtn13JF1/jYFltF
k3smhC1pVQ9ZXgFWtq9dnbQth4eywgFy8Ro2SdYNi8oroGmhzXLWIB8rRhqe
FB6phInR0M7Dg7kY7FS5VZ//PdyK67F6vJGN784wrQ9oVoFdbbTyukIWdvjU
pn1G/QgnHUYZ5no8ZIvsvR/Q7sCWTGU1ZyId+9SumiVkVgPTb2gxz4+LB/qU
y5xWfgJ/i2ZHhf54FHDtNd6waiB0cUcPfTYCV78QdEeH10LsiqHMYwEH5Qer
+v/RJtCRIUerZ3Hwb7XnYm1dAi6+mSn5dA7OuIsZzvoEmMWT3Sx9NnY9cQkr
NCGwt3pA79H+AMy4P//OyIbAn9LrVLOsL9IajPQCvQj8GsyIH+5gooRfm/Tb
FQKa7lWUnB0T558Pl/71NQHGlaUoxxg3HFGh/a6US0Ap9gUaB7piY477e758
Atwp51YFCxeM/2q5fKmMQCtDcHR86ASuxFh0H2ra/ssVO1gXA4pq/ZecWwmk
Do4qci4fx97FDHokEpDvW/qEnLbGuvMDnJb7BJ5KvL4JEn2IUUHxa569BOZ2
jpkm5RkjR1iqlTxAQOa00x4eywDdxrpAOExAFFp/7NbMQTQ5uzd7YYyAGy9K
HBGgiQwB1KiKCFQKRbtPzb+PyoMh/VbTBCxtk7lFr6VwQy1fHDhLQOr/Lbg3
MnivCfwLb70KOA==
                 "]]}, "Charting`Private`Tag$384515#2"], 
              Annotation[{
                Directive[
                 Opacity[1.], 
                 AbsoluteThickness[1.6], 
                 FaceForm[
                  Opacity[0.3]], 
                 GrayLevel[0], 
                 Thickness[Large]], 
                Line[CompressedData["
1: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
                 "]], 
                Line[CompressedData["
1:eJwV1Xk8ldkfB3BKSJgSxlJEQyplq6zTx76U7WZN0SWy71mjughdlFCZCiFS
0ePqmmyFaBmRkiyNn7KGkSypUYbf8cfzel7v13me8/qe8z3n+5VxCzzksYqD
g4NNnpV3zaSb460DFCru7Bnu8+RBu4huGI24KZD7say8LGqNDO4rEtsb8j8/
WrMNvHQjX17iMTGh11csd6HBxji40YwCz4Bg8DntPdi1y6gml9j65aWwgjXq
WJjWT4ohvlYpHF3frokKde0yTWJFpkT8wnGgoFFqe40phTvimS37jI0gOCWc
cZ341YVOc6N7xnjPxXcmlnh2tWi7zXpTZMxMD+sT60xlvw16fwBnn7M+vjWh
4OlqFWCnbo1J4zzvauIfkkFU37g1HpanhOcRp3alTx+/QUOAgesmf+Lygx0h
IZw2cPJYviq48v1eu4iLL+1wy7bc9ZsxhcgmmzqdNHtQn6uf9RPPWx/inLB0
ANfmbjcW8bSvVYphhyOsHkz8cZ3Yf8Hi9UzmYTjN2fslEk8kmovk2TmBFaQ5
5Ew8km+Wt9BzBItlVNIBYjcl0+Hia0fBe/n0c3Xij3XG222POoNOlxcXJn7f
bfDg/gcXbJjM4eo0IvvNnTekMkeHS0Rv/FPi2xZSiby2rvAp9c99SHwiK0fh
A9sVzRtvFuUQD8nc8E8Nd4OQ8f6MS8QFXpLrj3e7YYvsXolEYjp1rUJT4zhO
dSsuBhH36/zxfZQk5K/yXfaexDnxYtceObmjWy3poAvx0ZarOlm17iiia/bZ
EUts+PWDzyYPqKkb8loS9zpcYejFeiDu4e12Y+LsXJHfxPo9kD5wXFWX2H4k
69nU/hM4VhmprEUsoijs/TTvBKZUR//aQ9wZkrnuBocnfncqXVIizqwWuh/i
6gnznS9f7SQ+xJFhbfbEE5uK9bUUiNebbJiT3uqF0hYhPTni9rT0y9/ivbCY
rT0kS3yh8xeNtmEvrNvwaIsMsbnkxfeFRt74W/XqgjTxOjfB2Ohib/gu/eW/
4paSNGkajw/qQu1iV5z8hf/JNi8ftGZoKmwhNtmX6r70wgc5R8IDVubjjl3H
8267L3a/Wme9lbi5iXnnHtMXpycWWlfiiefjM4/7xxfp5bojK/Hq085POZr7
wXXLx2xFYo5s3ktKZX6Y1ez5pExc35+kxi3oD8P/FDr2Ep+W4+nqC/CHnU+H
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
/wFe1DrN
                 "]]}, "Charting`Private`Tag$384515#3"], {}}}, {}}, {
            Arrowheads[0.015], {
             Arrow[{{-0.1, -0.07}, {-0.1, -0.07}}], 
             
             Arrow[{{-0.1, -0.05600000000000001}, {-0.10252649006622518`, \
-0.05600000000000001}}], 
             Arrow[{{-0.1, -0.042}, {-0.10505298013245033`, -0.042}}], 
             
             Arrow[{{-0.1, -0.027999999999999997`}, {-0.1075794701986755, \
-0.027999999999999997`}}], 
             
             Arrow[{{-0.1, -0.013999999999999999`}, {-0.11010596026490067`, \
-0.013999999999999999`}}], 
             Arrow[{{-0.1, 0.}, {-0.1, 0.}}], 
             
             Arrow[{{-0.1, 0.014000000000000012`}, {-0.11410596026490066`, 
              0.014000000000000012`}}], 
             
             Arrow[{{-0.1, 0.02800000000000001}, {-0.11557947019867551`, 
              0.02800000000000001}}], 
             
             Arrow[{{-0.1, 0.04200000000000001}, {-0.11705298013245033`, 
              0.04200000000000001}}], 
             
             Arrow[{{-0.1, 0.05600000000000002}, {-0.11852649006622518`, 
              0.05600000000000002}}], 
             Arrow[{{-0.1, 0.07}, {-0.12000000000000001`, 0.07}}]}, {
             Arrow[{{0, -0.07}, {0., -0.07}}], 
             
             Arrow[{{0, -0.05600000000000001}, {-0.010950674157303369`, \
-0.05600000000000001}}], 
             Arrow[{{0, -0.042}, {-0.01905101123595506, -0.042}}], 
             
             Arrow[{{0, -0.027999999999999997`}, {-0.024301011235955065`, \
-0.027999999999999997`}}], 
             
             Arrow[{{0, -0.013999999999999999`}, {-0.026700674157303372`, \
-0.013999999999999999`}}], 
             Arrow[{{0, 0.}, {-0.026250000000000006`, 0.}}], 
             
             Arrow[{{0, 0.014000000000000012`}, {-0.02432477064220184, 
               0.014000000000000012`}}], 
             
             Arrow[{{0, 0.02800000000000001}, {-0.020737155963302754`, 
               0.02800000000000001}}], 
             
             Arrow[{{0, 0.04200000000000001}, {-0.015487155963302754`, 
               0.04200000000000001}}], 
             
             Arrow[{{0, 0.05600000000000002}, {-0.008574770642201825, 
               0.05600000000000002}}], 
             Arrow[{{0, 0.07}, {0., 0.07}}]}, {
             Arrow[{{0.1, -0.07}, {0.1, -0.07}}], 
             
             Arrow[{{0.1, -0.05600000000000001}, {
              0.08652283577647148, -0.05600000000000001}}], 
             Arrow[{{0.1, -0.042}, {0.07589600863159461, -0.042}}], 
             
             Arrow[{{0.1, -0.027999999999999997`}, {
              0.06811951856536944, -0.027999999999999997`}}], 
             
             Arrow[{{0.1, -0.013999999999999999`}, {
              0.06319336557779598, -0.013999999999999999`}}], 
             Arrow[{{0.1, 0.}, {0.06111754966887417, 0.}}], 
             
             Arrow[{{0.1, 0.014000000000000012`}, {0.061569269092897505`, 
              0.014000000000000012`}}], 
             
             Arrow[{{0.1, 0.02800000000000001}, {0.06368337383802175, 
              0.02800000000000001}}], 
             
             Arrow[{{0.1, 0.04200000000000001}, {0.06745986390424692, 
              0.04200000000000001}}], 
             
             Arrow[{{0.1, 0.05600000000000002}, {0.072898739291573, 
              0.05600000000000002}}], 
             Arrow[{{0.1, 0.07}, {0.08, 0.07}}]}, 
            RGBColor[0, 1, 0], 
            Line[{{-0.1, -0.07}, {-0.1, 0.07}}], 
            RGBColor[1, 0, 0], 
            Line[{{0.1, -0.07}, {0.1, 0.07}}]}}, {
          DisplayFunction -> Identity, PlotRangePadding -> {{
              Scaled[0.05], 
              Scaled[0.05]}, {
              Scaled[0.05], 
              Scaled[0.05]}}, PlotRangeClipping -> True, ImagePadding -> All, 
           DisplayFunction -> Identity, Axes -> {True, True}, 
           AxesLabel -> {None, None}, AxesOrigin -> {0, 0}, DisplayFunction :> 
           Identity, FrameLabel -> {{None, None}, {None, None}}, 
           FrameTicks -> {{Automatic, Automatic}, {Automatic, Automatic}}, 
           GridLinesStyle -> Directive[
             GrayLevel[0.5, 0.4]], 
           Method -> {
            "DefaultGraphicsInteraction" -> {
              "Version" -> 1.2, "TrackMousePosition" -> {True, False}, 
               "Effects" -> {
                "Highlight" -> {"ratio" -> 2}, 
                 "HighlightPoint" -> {"ratio" -> 2}, 
                 "Droplines" -> {
                  "freeformCursorMode" -> True, 
                   "placement" -> {"x" -> "All", "y" -> "None"}}}}, 
             "ScalingFunctions" -> None}, 
           PlotRange -> {{-0.12000000000000001`, 0.1}, {-0.07, 0.07}}, 
           PlotRangeClipping -> True, PlotRangePadding -> {
             Scaled[0.02], 
             Scaled[0.02]}, Ticks -> {Automatic, Automatic}}], 
         Graphics[{{{{{}, {}, 
              Annotation[{
                Directive[
                 Opacity[1.], 
                 AbsoluteThickness[1.6], 
                 FaceForm[
                  Opacity[0.3]], 
                 GrayLevel[0], 
                 Thickness[Large]], 
                Line[CompressedData["
1:eJwVz31Q03UABnCi0pDlkbw53t8s4Hg53kWCY77gxYUJxLqg5K1NuuRlYgrC
QgTuOORNKGEbMEAYLARZ8rLf9o0HcbHRAfIWCJGtkzdvQwwKjxJqPnfPPff5
87FPSo9i6evp6R3T9dXyea9CQRsptSnSSLA8tMGz5FP4/sXaQM+aBF7aU/x6
nVPq6fFLyxKoQjb5TQIKS2tXhSfUEmw/Ca8T11NYzAu20/9FgiiPlw1UE4Wx
ziH7vAEJDB6ca5kXU+gyGHPKvilBltbxLl1GgXP/D9fUAAkmS+cEMb9RMDzn
7uN5qRuub8WOBu1RyDw/uDqUcxd6CzbKXBsZbr/H+eyMWReidmi8bIYMuwz2
SFnVHTRvjXTZJcnwzbhLW6dzB9KCugUFRTK49Hpx8xvFkM4/imK0y9DWXRiW
a9uO16InIsQqGSJsRNc+kYqgoP9pO6aRwXrF8N6KdyuK5Wo/AU0OE7tQJlN5
GyP3Dpkp3OR4nAatNqkZRTupY+0fyTFlXpAToG4Ew6JWFZAhxyLLdVvxrAFX
ijX869VypJydW76uFsAtIj/AuU8O/hcWpFxdC7V22TxrVg7Lz//JjDO5hYML
mQ8LduR4bpBsVWlYjfebJ34OtCAwEaSIivwrsdLPrO8IJqDfX2cMf1CCt51s
j2UlEMQI/d+wPlEIn6/6LDauESSUXjTWnOZi5r/LU/YtBKwOvjrInIPqYFZY
q87vWjz16n2agcicaJlzK8FqcUCBB8nA+LZns6eI4Ev2zBH7xAyo1tc4we0E
C8etZmnMdPz4a+w7n94h0Hi8rmniXkBrf8jZyh4C2v5Jk9FRNpL/dlMY9xKU
L6X2D3DYcPCxPFqjs9HQgViJGRvCrhe2DX26P9yTwlsJLPBauzc6pARWW/0u
iX8lo6zaoUJJCNx/bwjZtkzE1+n7xvcUBHVp8xOhs0yU91l35v1EcKBHWkE5
MiHa9S3VGya4slNzxpsTg7kbyeH6SoKoQuaoI+1jBLYPDr85QmDAn1buOx6J
XfVV0MYI1ksEXF7caZg6VzWU6awyjf23ZPsUPNLF3IPjBC2Nh7Nzb55E/O5c
kNFDgti+7y7FKxkYpPtJjScJKh7YzoWzj2I+4cOab3UOm6+bcq/zw2Zb8mXT
KYKXz+jjRlPecPCv8jWfJpj2dS7pzHFFEFdsXKtzaIJDfuaqE6IVg5uHZwji
zAOfXxTZ4ILho0mezv5p7o/3uMZweyJUben8g9h3afH8fvwPgRAFDA==
                 "]], 
                Line[CompressedData["
1:eJwVzX1Q03UcB3DWJRDK8oAj2BKEdHkdLeXBNLVPMyC4znTAGJjhGkdzjRoP
d1LNIi9AEYFdg7u1CBCChgjsK6Ejf7/vh4eQ4sGLhyHriA4U5cAjBCcNBfr1
x/ve79df7yClNi7tGRcXl31c/m/PmZTe320MXm0IvzuhcoOL+YPZ2jEGu7Wu
NFgUDMdfMvlV3GbQbYqfmX8gHFZSwpQOO4MN/oa+vdFRsHsszfHTJIOrEbKc
0n4ZmLvfynVy/qw7njlYnAjbifC5d/9m0HEsjjf3nhy2Xhx6cYHzouZoUeRw
EixKDkWGTzE4cym2yjn+PjQ3+Rg67jA461p1Z8+yAkLyu3fbZxkczTJsrnBR
wa7woHSPZQZlO+mr1uJMGK7vj9rqyuKCJmzlvP0MFJtUsc0CFisWD29MFOWB
oDdmaV7M4qPb2JZccgGS3P3XByQsynVnEy776MHc92dYdCKLikTTXxhggMuX
igaUahYFR3zzfRzl8BU56xF4hkWx4GmUkDWC8rA6K1vP/YUm+/7S+T0478Mh
TS2LJ1X+m4zfVkI13z30yXUWabaZ5/ZHNazGYqG4n8W6Tkfp1MEaENEbBbxJ
FttXV14pr6kFZWtDU/oSi7X2tsEyUR1I2YLXdZsopkXXbbTq60EaI5sPElBc
Szq2P9DfDMFb1JGnxBS7Ei25qaYGqL+rcYmTUDw5LZH18hrhjTcV90ZkFEe8
S0Nzzl2Br6+8/ZrzFMXAEc+q6OUmMManb6M6isYvJX7/yFugS1cQIdRTfPSR
cSDzEwtUWkstwlqK7mPm0SdBBPaW6AozOP/rPeQM2kngVqpK2cP5vtQZELOL
wAYffLQ/Urw5GKsuExP4MG0hp6uOYl7P3FrIAQI7vI6A2kyR1xbyckoCgUaN
x61rTRRXDZbPOwoIREoe129upjg3NF55r5DAhO90roKz/Xner1uKCXh2te/x
aKFoLZLykw0EPvVTl39goXj6m6Wah1UEQnt6TzzbSnE5K3wguJ1An6k1Ipnz
tOXEwxiGQGpGFb+Z8/BCnq8WCZQJczrkP1O8+rFNcaOHwONM0Y7GNooZytOO
+GECJe94rW1wVlRXCr6wERBtW7clXKN4dPImVI8TkP9mO7fOWXz8hQsPJgks
/tCpiL9OMcAILV7TBM5nN+03c/YcU43umyGwPfY7rzXOT731zpRZAu0B+fNS
K8UHUiu3CPwHaIzcaQ==
                 "]]}, "Charting`Private`Tag$385255#1"], 
              Annotation[{
                Directive[
                 Opacity[1.], 
                 AbsoluteThickness[1.6], 
                 FaceForm[
                  Opacity[0.3]], 
                 GrayLevel[0], 
                 Thickness[Large]], 
                Line[CompressedData["
1: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
                 "]], 
                Line[CompressedData["
1:eJwtiQkw3HcYhmnGVUdmIkFQRiY0I6wEbSNHv7gWNXHfR3aLZRDiqjhjxJGg
jrGOdf/KEG1i+De2jsh+1U0kUlFxbJiiJcVSFelmZ4uVrc70nXnmmWdeo7Dr
XqwP5OTkLh/wn9P0tA3PjxH06rb+Yz5KCQ53DTvNDxBM43sPXSz1A+2QyW3z
gxZ7eMlvuPlD9aUo6Xgfwe1Y9xKHyQBw02DsKHEJrnzj0rIzGwwDq4XFvt0E
hYotr8+KmBCd3KfCaCM4ncRWbZSLAhtpQ+bpIoK+xjzz/tJEYG1LPgu5QzBh
93XC2mAi3JOcc/36NsHiX1R6tYSJUAAxqRsFBHnpvue/skuC5N6i35pvETw1
vkm3lCSBhdWQdC2ToDRVj3mfmQJn8t+E7cURbH2WVkmsboBPSvmiiQfBrVgr
yZ25LJCOXgrTcSfI53o8zP0wG0LpzoYqbgQ5sricjAvZQH+Q6Ch0JWjP7lS6
1pQNP4Rq2TU5HfyDH+m4f3kTNMQd0qXPCdqqKNscW8+BRvOVVIEZwS+84x95
ZOXCmZGZnFhFgo3bdrL5knwQ9C6J1sNb8N0r5AaWFYNlUIDts55m9M/M9fnu
aAVIaPVd+4ImZPrVL6ABG9pMBX/ViBtR94pWwVFxNSjKaDMbhxqRpit11HvE
gRwbi47M1XrcsgzUGhxugIkJ2nPWSB0yoo4rcCqbgUUlnQ1O5SAvuVNeaYIA
L68m0tGkFtuHxeVLF1thR0HZdfFpNQ7sSkyrW9tAeDfeIcy6CtvmuC+qTNpB
rdgoSNBeiSx6u+xBRQcUquQeki1U4H6Ah43h8U5w1x+fSFErw5/8enLC67+F
aS/2qiyhGBnLtr5P5e/Be4fxV2kBhTilWW554/Z9OFJH97UJvIWGU+otdFEX
pAx3VqkWZSEn21bnjX83yHP5lzU8k/FdJGcsMa4HPHrE/H1eBCoLOqf3jCgQ
sVyGW+Ii8B/NlztGxhQ0WETXW+tH4JrnjoHzKQrY79V+/zQ9HEdeuERX0Sgo
L1npb7IMw/wnG/tmFyio5PfarjsyUJ5r9vFVHwpOyNrZZSIf3GX3pP9YSAGD
5ZVbdMUHN17ONq8WUTAlqjGJueuNc4flH6uVUrB2W1g7H+SF/SWeGoFsCkL1
g0+r5bpjat7frW9bKLhmcnNPoO6IoiTrsRMDFNRt/Tqax7PH5Z6Qt85DFKgr
xihJ4+1wcitf6zpSMOpEI03NgN/HzDAfPqEg3ybGYk/3E0wISxV7T1Lg+dgU
VdMtkUmadTNmKOAv1AZFdlmg++IIkFkKdO2ZLqVGxkgL0i7eXKSgrWOs73mv
IRpwoPvIMgXjzsF+gpPHUF0QNX1uhQKHn2fnM0wUUKpZsXNVSIHc/9v07Dco
+JOCfwH6OA8C
                 "]]}, "Charting`Private`Tag$385255#2"], 
              Annotation[{
                Directive[
                 Opacity[1.], 
                 AbsoluteThickness[1.6], 
                 FaceForm[
                  Opacity[0.3]], 
                 GrayLevel[0], 
                 Thickness[Large]], 
                Line[CompressedData["
1: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
pXEoLaujhXZDjf74qI8o/gPX87Rk
                 "]], 
                Line[CompressedData["
1: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
OK5WsfNtvAjjzjW6ye8F+D+PVIk+
                 "]]}, "Charting`Private`Tag$385255#3"], {}}}, {}}, {
            Arrowheads[0.015], {
             Arrow[{{-0.1, -0.07}, {-0.1, -0.07}}], 
             
             Arrow[{{-0.1, -0.05600000000000001}, {-0.10252649006622518`, \
-0.05600000000000001}}], 
             Arrow[{{-0.1, -0.042}, {-0.10505298013245033`, -0.042}}], 
             
             Arrow[{{-0.1, -0.027999999999999997`}, {-0.1075794701986755, \
-0.027999999999999997`}}], 
             
             Arrow[{{-0.1, -0.013999999999999999`}, {-0.11010596026490067`, \
-0.013999999999999999`}}], 
             Arrow[{{-0.1, 0.}, {-0.1, 0.}}], 
             
             Arrow[{{-0.1, 0.014000000000000012`}, {-0.11410596026490066`, 
              0.014000000000000012`}}], 
             
             Arrow[{{-0.1, 0.02800000000000001}, {-0.11557947019867551`, 
              0.02800000000000001}}], 
             
             Arrow[{{-0.1, 0.04200000000000001}, {-0.11705298013245033`, 
              0.04200000000000001}}], 
             
             Arrow[{{-0.1, 0.05600000000000002}, {-0.11852649006622518`, 
              0.05600000000000002}}], 
             Arrow[{{-0.1, 0.07}, {-0.12000000000000001`, 0.07}}]}, {
             Arrow[{{0, -0.07}, {0., -0.07}}], 
             
             Arrow[{{0, -0.05600000000000001}, {-0.013688342696629212`, \
-0.05600000000000001}}], 
             Arrow[{{0, -0.042}, {-0.023813764044943824`, -0.042}}], 
             
             Arrow[{{0, -0.027999999999999997`}, {-0.030376264044943826`, \
-0.027999999999999997`}}], 
             
             Arrow[{{0, -0.013999999999999999`}, {-0.033375842696629215`, \
-0.013999999999999999`}}], 
             Arrow[{{0, 0.}, {-0.03281250000000001, 0.}}], 
             
             Arrow[{{0, 0.014000000000000012`}, {-0.0304059633027523, 
               0.014000000000000012`}}], 
             
             Arrow[{{0, 0.02800000000000001}, {-0.02592144495412844, 
               0.02800000000000001}}], 
             
             Arrow[{{0, 0.04200000000000001}, {-0.019358944954128442`, 
               0.04200000000000001}}], 
             
             Arrow[{{0, 0.05600000000000002}, {-0.010718463302752283`, 
               0.05600000000000002}}], 
             Arrow[{{0, 0.07}, {0., 0.07}}]}, {
             Arrow[{{0.1, -0.07}, {0.1, -0.07}}], 
             
             Arrow[{{0.1, -0.05600000000000001}, {
              0.08378516723714563, -0.05600000000000001}}], 
             Arrow[{{0.1, -0.042}, {0.07113325582260585, -0.042}}], 
             
             Arrow[{{0.1, -0.027999999999999997`}, {
              0.06204426575638068, -0.027999999999999997`}}], 
             
             Arrow[{{0.1, -0.013999999999999999`}, {
              0.05651819703847012, -0.013999999999999999`}}], 
             Arrow[{{0.1, 0.}, {0.05455504966887417, 0.}}], 
             
             Arrow[{{0.1, 0.014000000000000012`}, {0.055488076432347044`, 
              0.014000000000000012`}}], 
             
             Arrow[{{0.1, 0.02800000000000001}, {0.05849908484719607, 
              0.02800000000000001}}], 
             
             Arrow[{{0.1, 0.04200000000000001}, {0.06358807491342124, 
              0.04200000000000001}}], 
             
             Arrow[{{0.1, 0.05600000000000002}, {0.07075504663102256, 
              0.05600000000000002}}], 
             Arrow[{{0.1, 0.07}, {0.08, 0.07}}]}, 
            RGBColor[0, 1, 0], 
            Line[{{-0.1, -0.07}, {-0.1, 0.07}}], 
            RGBColor[1, 0, 0], 
            Line[{{0.1, -0.07}, {0.1, 0.07}}]}}, {
          DisplayFunction -> Identity, PlotRangePadding -> {{
              Scaled[0.05], 
              Scaled[0.05]}, {
              Scaled[0.05], 
              Scaled[0.05]}}, PlotRangeClipping -> True, ImagePadding -> All, 
           DisplayFunction -> Identity, Axes -> {True, True}, 
           AxesLabel -> {None, None}, AxesOrigin -> {0, 0}, DisplayFunction :> 
           Identity, FrameLabel -> {{None, None}, {None, None}}, 
           FrameTicks -> {{Automatic, Automatic}, {Automatic, Automatic}}, 
           GridLinesStyle -> Directive[
             GrayLevel[0.5, 0.4]], 
           Method -> {
            "DefaultGraphicsInteraction" -> {
              "Version" -> 1.2, "TrackMousePosition" -> {True, False}, 
               "Effects" -> {
                "Highlight" -> {"ratio" -> 2}, 
                 "HighlightPoint" -> {"ratio" -> 2}, 
                 "Droplines" -> {
                  "freeformCursorMode" -> True, 
                   "placement" -> {"x" -> "All", "y" -> "None"}}}}, 
             "ScalingFunctions" -> None}, 
           PlotRange -> {{-0.12000000000000001`, 0.1}, {-0.07, 0.07}}, 
           PlotRangeClipping -> True, PlotRangePadding -> {
             Scaled[0.02], 
             Scaled[0.02]}, Ticks -> {Automatic, Automatic}}], 
         Graphics[{{{{{}, {}, 
              Annotation[{
                Directive[
                 Opacity[1.], 
                 AbsoluteThickness[1.6], 
                 FaceForm[
                  Opacity[0.3]], 
                 GrayLevel[0], 
                 Thickness[Large]], 
                Line[CompressedData["
1:eJwVz31Q03UABnCi0pDlkbw53t8s4Hg53kWCY77gxYUJxLqg5K1NuuRlYgrC
QgTuOORNKGEbMEAYLARZ8rLf9o0HcbHRAfIWCJGtkzdvQwwKjxJqPnfPPff5
87FPSo9i6evp6R3T9dXyea9CQRsptSnSSLA8tMGz5FP4/sXaQM+aBF7aU/x6
nVPq6fFLyxKoQjb5TQIKS2tXhSfUEmw/Ca8T11NYzAu20/9FgiiPlw1UE4Wx
ziH7vAEJDB6ca5kXU+gyGHPKvilBltbxLl1GgXP/D9fUAAkmS+cEMb9RMDzn
7uN5qRuub8WOBu1RyDw/uDqUcxd6CzbKXBsZbr/H+eyMWReidmi8bIYMuwz2
SFnVHTRvjXTZJcnwzbhLW6dzB9KCugUFRTK49Hpx8xvFkM4/imK0y9DWXRiW
a9uO16InIsQqGSJsRNc+kYqgoP9pO6aRwXrF8N6KdyuK5Wo/AU0OE7tQJlN5
GyP3Dpkp3OR4nAatNqkZRTupY+0fyTFlXpAToG4Ew6JWFZAhxyLLdVvxrAFX
ijX869VypJydW76uFsAtIj/AuU8O/hcWpFxdC7V22TxrVg7Lz//JjDO5hYML
mQ8LduR4bpBsVWlYjfebJ34OtCAwEaSIivwrsdLPrO8IJqDfX2cMf1CCt51s
j2UlEMQI/d+wPlEIn6/6LDauESSUXjTWnOZi5r/LU/YtBKwOvjrInIPqYFZY
q87vWjz16n2agcicaJlzK8FqcUCBB8nA+LZns6eI4Ev2zBH7xAyo1tc4we0E
C8etZmnMdPz4a+w7n94h0Hi8rmniXkBrf8jZyh4C2v5Jk9FRNpL/dlMY9xKU
L6X2D3DYcPCxPFqjs9HQgViJGRvCrhe2DX26P9yTwlsJLPBauzc6pARWW/0u
iX8lo6zaoUJJCNx/bwjZtkzE1+n7xvcUBHVp8xOhs0yU91l35v1EcKBHWkE5
MiHa9S3VGya4slNzxpsTg7kbyeH6SoKoQuaoI+1jBLYPDr85QmDAn1buOx6J
XfVV0MYI1ksEXF7caZg6VzWU6awyjf23ZPsUPNLF3IPjBC2Nh7Nzb55E/O5c
kNFDgti+7y7FKxkYpPtJjScJKh7YzoWzj2I+4cOab3UOm6+bcq/zw2Zb8mXT
KYKXz+jjRlPecPCv8jWfJpj2dS7pzHFFEFdsXKtzaIJDfuaqE6IVg5uHZwji
zAOfXxTZ4ILho0mezv5p7o/3uMZweyJUben8g9h3afH8fvwPgRAFDA==
                 "]], 
                Line[CompressedData["
1:eJwVzX1Q03UcB3DWJRDK8oAj2BKEdHkdLeXBNLVPMyC4znTAGJjhGkdzjRoP
d1LNIi9AEYFdg7u1CBCChgjsK6Ejf7/vh4eQ4sGLhyHriA4U5cAjBCcNBfr1
x/ve79df7yClNi7tGRcXl31c/m/PmZTe320MXm0IvzuhcoOL+YPZ2jEGu7Wu
NFgUDMdfMvlV3GbQbYqfmX8gHFZSwpQOO4MN/oa+vdFRsHsszfHTJIOrEbKc
0n4ZmLvfynVy/qw7njlYnAjbifC5d/9m0HEsjjf3nhy2Xhx6cYHzouZoUeRw
EixKDkWGTzE4cym2yjn+PjQ3+Rg67jA461p1Z8+yAkLyu3fbZxkczTJsrnBR
wa7woHSPZQZlO+mr1uJMGK7vj9rqyuKCJmzlvP0MFJtUsc0CFisWD29MFOWB
oDdmaV7M4qPb2JZccgGS3P3XByQsynVnEy776MHc92dYdCKLikTTXxhggMuX
igaUahYFR3zzfRzl8BU56xF4hkWx4GmUkDWC8rA6K1vP/YUm+/7S+T0478Mh
TS2LJ1X+m4zfVkI13z30yXUWabaZ5/ZHNazGYqG4n8W6Tkfp1MEaENEbBbxJ
FttXV14pr6kFZWtDU/oSi7X2tsEyUR1I2YLXdZsopkXXbbTq60EaI5sPElBc
Szq2P9DfDMFb1JGnxBS7Ei25qaYGqL+rcYmTUDw5LZH18hrhjTcV90ZkFEe8
S0Nzzl2Br6+8/ZrzFMXAEc+q6OUmMManb6M6isYvJX7/yFugS1cQIdRTfPSR
cSDzEwtUWkstwlqK7mPm0SdBBPaW6AozOP/rPeQM2kngVqpK2cP5vtQZELOL
wAYffLQ/Urw5GKsuExP4MG0hp6uOYl7P3FrIAQI7vI6A2kyR1xbyckoCgUaN
x61rTRRXDZbPOwoIREoe129upjg3NF55r5DAhO90roKz/Xner1uKCXh2te/x
aKFoLZLykw0EPvVTl39goXj6m6Wah1UEQnt6TzzbSnE5K3wguJ1An6k1Ipnz
tOXEwxiGQGpGFb+Z8/BCnq8WCZQJczrkP1O8+rFNcaOHwONM0Y7GNooZytOO
+GECJe94rW1wVlRXCr6wERBtW7clXKN4dPImVI8TkP9mO7fOWXz8hQsPJgks
/tCpiL9OMcAILV7TBM5nN+03c/YcU43umyGwPfY7rzXOT731zpRZAu0B+fNS
K8UHUiu3CPwHaIzcaQ==
                 "]]}, "Charting`Private`Tag$385984#1"], 
              Annotation[{
                Directive[
                 Opacity[1.], 
                 AbsoluteThickness[1.6], 
                 FaceForm[
                  Opacity[0.3]], 
                 GrayLevel[0], 
                 Thickness[Large]], 
                Line[CompressedData["
1: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
Wlj5sSBgjysUEdvk6c9V2s6CxcGZ1gbit8X73PK1Wbj28ahSJ3Fs9fFWlaUs
vD4jJTdMrI5ArcKfTEw1L2x4T9zcFh+r9ZKJ+tdHRIV5FBy7qanSLias3n78
soj46/M6S90GJmru9icqEqe+7Kys/puJkRDph+rEOh9HZTYlMDEgmlarS3x/
9se5+kAmCjzcdxkSu0ss6TU9zsQmHid0K7GwjKZR814mUqs+HNlFzF2xJXfn
H0zcyCkb2EtsqGnzs3UFE5UO1+YdIH608eSxfeJM+H5eMGBJ7G1Kv/XgHQOz
bpWHDxLP352uZt3HgE05FfxrvMi6NLLnNgOBD0Z2WBBvd7z18nAZA+4tvjV7
iJ979O59ls6AcrpF+07iIL83pU50BgpMA2O3EMuGiUiNeDIwfePNewPiiigF
X/e/GJCVrRFaT7wvRbd7woSBH9tba1SJx3J36Z9WZ0CwR1NajphR5JDxTooB
Xc0nsvOJV1T5fTv7jY6Qge6bM6Te129E06Zf0JHstXLJFPFfrXmNwe10+P97
bf6zX+vXVaP88yodqou5pXeJY57dYzDy6Xix5K//Lv1ar/dfzKP96Pj4RCUk
hthxZkHxfAc6Ov231vkRfxVTnZdoTscrfTftX/tJR8nyQZocHdr2Xk6qxPfV
3XTl59Chf6jZSIzYfUNISu6rCJT32Iy3kv3J3VV0iOxKKB5JvV5IbGjVeF29
OAJ/1ShvYBM/onUrXEmOIPeb3+WMief7Cg0KXCPgFNvemEnOy/kcOw/MI+Md
QXe9iDUtnqWyJ8LRNOYfakbs5CxxOPZGOCx5Nr1D5Dx2xB0bynQOx7RevYcM
cfHw4vfV5WFQ/uNx2TNyvge/mFytZ4RhyYKtOX8TL13gGdRsEwb7HbOndIlZ
Bs3Cnd9DEdC5YnQTyQenWN8lk7tCMSTzresdyZN+7UJbjWWhuLqC0iomtmvv
y3QdDUEOw0V+CbHlwp3Kg6wQnIhJ+/4vySezxGVrHzUFQ+P7mGkEcYPOPm/p
pGBY6oi/1iLe9DCi6oBTMAYmqqODM0h9pSc2350Nwkw+bkuQvFuV2mAOoyAs
Mo50LCb5yNV7F/1DMgixOUrOu4jlH6m1b356HrdKr5aEXaQgvTTBujrwPHQX
Z219SvJYOOOYU3FNIET71Xx3kjwfzhYNSlkfgJvtvbX3SP47Ghvd6Jw9hxEW
zdOS+Gn/GaGFHedwanvHApt4kt9KvZyoU+cQ9Juz7d5YCrfyrqSEFvsjgX5w
apL0H4pvWequchbZSds2z5D+5nola9BomQ9+v5ZhQyNeLf9St+alN9pVr0nV
kX44FmXAXNfgjaQn+5x9gimccOtWW3XMG62X+s4/CCTzb1PsmW97BrN1nFO7
/UherZszeSn0FDjiSzz0SP+eL/ZQ5v59NyRv8HVwdyN5OOJ1rdHHDc1U5rsM
0u+lmiWPCJa6Ie7Y1s9fft0PQnfkpTm54onxR++/nSgofrimeeyjMzYEja1p
PExh7QDX9LPCMcyRmls7Su4fOad7O816bFE+XLn8dy3y/xV6I/3uYvgfVZ7F
Ng==
                 "]], 
                Line[CompressedData["
1:eJwtjnkwnAcchm0mrogaVjSuNSJCM6yETBJW8iuRjdVJ3HfLoqwj4miDTcjW
xFHEUUu7RVj7rQaJxCfdFgk/iQjTOhLHoiVtKbZqxFnXZlRn+s488/zx/PMa
h8Z5hO9TUFD4cI//HJQta79oLsZi0ak/JzjK0DBwJYehJcaUTs+n9vk+8EO1
lVe0phjX3Two81d8YZY1Re/SEONSjGue06AfdNWrbcYdFONMNatqaywQUh5e
G/9WUYwyparpk6tsaGq7PnZ+g8DhRL5ahQIHuDvZ3X2jBHqbtls25ydAg+c/
GiNSAuO3p+PnWhOgvDA5/9cRAnMHVL/XkSVAdVOT2ewQge1cb7vrjongW6M2
vjxAoHn/AtN6IxGunnO2mu4mUJ6kz37A/hzszi7UWf5IoKgnpVhokwzhfr+N
hvAJXIyx2fhyPBXkeY2OhsUEdkrcnqQfSANxtgmOFhEo2I3l3WCkwZHRxQVW
AYEX+LXKV++mwYRUz8AkZ6+3Gh52DbkFTv49PbW3CHRQVbE99BcPFqO4gZQo
Al08r7W5paZDdatNxJwdgRVLjrsTeRmgr2QcfGdEhGujKPEvyIXMiv4OzWgR
+t5M96rXLgK57DklfK4a2T5lk0jjg5z3RaAZuxr1Lutkaq+XQsyujHdsQIh0
PflF/TYBPPY2+GnaRIiL1v46rc/KYYcdg9TFSgzm6CoKiiuBqrI0PBRwF9s/
q6UovxICb7/+zazucqx5tl74h70ILJTjOw6YlGHL9sbxUhEBOmE0j4nzAiTG
JX0lx2qgtqZgsIz9NYYza3YfF30HjLGyaMG5Enzn52ZrpFsLJ5wOuXCVi/G5
TyMvrKwOwsNcHva2FmLwlIN3N+U+7GZu7PvqVS4OUQutk7MfQFqGsc39/Vlo
NKRexVxtAOa9n1eUjNJRkOZw+K3vIxhIzNDTpCfjWoSgNyG2EeixHRknZiJR
RVo7vGNMgsmlvPQ7tyNxk/p6y9iUhLeKH7WMGUfinPsWzdmchNSTdeMOQRx8
2ceKKqGToOXw+6SPNBwzuubfWTBIMHW0XcvrDEWKxMIsyIuEIoEl6XTUH7f5
jdyOLBLuceUctU/8cP71WOVsDgnfHJWUNJX64rgG5cXBfBJY0mlXkZIPNue5
v+fPJ6Gq/vRl5TkPTLq9IlquIsGA/ml3/wUWriae6j3SQoIHjbESTV7CqcaP
l52fkjApnFHpoTFxcDFDJw5JYAZJtl5sOmJT9Aj7SRcJZ1J4g3xPW4wPTVr3
HCTBKjNi5pfjp5EtrNS7MUKCY/PaAEGxQdc3L0E4RoKnobpfUuAHSA94P3fh
DQnyMG0GVckEaQJ4pDVFwubSUBknWBfVpZzhszN7fwLO2LNDVFFOLdoKkpGg
8P8W3JtpmX+T8C+KYQo0
                 "]]}, "Charting`Private`Tag$385984#2"], 
              Annotation[{
                Directive[
                 Opacity[1.], 
                 AbsoluteThickness[1.6], 
                 FaceForm[
                  Opacity[0.3]], 
                 GrayLevel[0], 
                 Thickness[Large]], 
                Line[CompressedData["
1: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
                 "]], 
                Line[CompressedData["
1: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

                 "]]}, "Charting`Private`Tag$385984#3"], {}}}, {}}, {
            Arrowheads[0.015], {
             Arrow[{{-0.1, -0.07}, {-0.1, -0.07}}], 
             
             Arrow[{{-0.1, -0.05600000000000001}, {-0.10252649006622518`, \
-0.05600000000000001}}], 
             Arrow[{{-0.1, -0.042}, {-0.10505298013245033`, -0.042}}], 
             
             Arrow[{{-0.1, -0.027999999999999997`}, {-0.1075794701986755, \
-0.027999999999999997`}}], 
             
             Arrow[{{-0.1, -0.013999999999999999`}, {-0.11010596026490067`, \
-0.013999999999999999`}}], 
             Arrow[{{-0.1, 0.}, {-0.1, 0.}}], 
             
             Arrow[{{-0.1, 0.014000000000000012`}, {-0.11410596026490066`, 
              0.014000000000000012`}}], 
             
             Arrow[{{-0.1, 0.02800000000000001}, {-0.11557947019867551`, 
              0.02800000000000001}}], 
             
             Arrow[{{-0.1, 0.04200000000000001}, {-0.11705298013245033`, 
              0.04200000000000001}}], 
             
             Arrow[{{-0.1, 0.05600000000000002}, {-0.11852649006622518`, 
              0.05600000000000002}}], 
             Arrow[{{-0.1, 0.07}, {-0.12000000000000001`, 0.07}}]}, {
             Arrow[{{0, -0.07}, {0., -0.07}}], 
             
             Arrow[{{0, -0.05600000000000001}, {-0.016426011235955055`, \
-0.05600000000000001}}], 
             Arrow[{{0, -0.042}, {-0.02857651685393259, -0.042}}], 
             
             Arrow[{{0, -0.027999999999999997`}, {-0.0364515168539326, \
-0.027999999999999997`}}], 
             
             Arrow[{{0, -0.013999999999999999`}, {-0.040051011235955065`, \
-0.013999999999999999`}}], 
             Arrow[{{0, 0.}, {-0.039375000000000014`, 0.}}], 
             
             Arrow[{{0, 0.014000000000000012`}, {-0.03648715596330276, 
               0.014000000000000012`}}], 
             
             Arrow[{{0, 0.02800000000000001}, {-0.031105733944954132`, 
               0.02800000000000001}}], 
             
             Arrow[{{0, 0.04200000000000001}, {-0.023230733944954132`, 
               0.04200000000000001}}], 
             
             Arrow[{{0, 0.05600000000000002}, {-0.01286215596330274, 
               0.05600000000000002}}], 
             Arrow[{{0, 0.07}, {0., 0.07}}]}, {
             Arrow[{{0.1, -0.07}, {0.1, -0.07}}], 
             
             Arrow[{{0.1, -0.05600000000000001}, {
              0.08104749869781978, -0.05600000000000001}}], 
             Arrow[{{0.1, -0.042}, {0.06637050301361708, -0.042}}], 
             
             Arrow[{{0.1, -0.027999999999999997`}, {
              0.055969012947391907`, -0.027999999999999997`}}], 
             
             Arrow[{{0.1, -0.013999999999999999`}, {
              0.04984302849914427, -0.013999999999999999`}}], 
             Arrow[{{0.1, 0.}, {0.04799254966887417, 0.}}], 
             
             Arrow[{{0.1, 0.014000000000000012`}, {0.049406883771796584`, 
              0.014000000000000012`}}], 
             
             Arrow[{{0.1, 0.02800000000000001}, {0.053314795856370376`, 
              0.02800000000000001}}], 
             
             Arrow[{{0.1, 0.04200000000000001}, {0.059716285922595536`, 
              0.04200000000000001}}], 
             
             Arrow[{{0.1, 0.05600000000000002}, {0.0686113539704721, 
              0.05600000000000002}}], 
             Arrow[{{0.1, 0.07}, {0.08, 0.07}}]}, 
            RGBColor[0, 1, 0], 
            Line[{{-0.1, -0.07}, {-0.1, 0.07}}], 
            RGBColor[1, 0, 0], 
            Line[{{0.1, -0.07}, {0.1, 0.07}}]}}, {
          DisplayFunction -> Identity, PlotRangePadding -> {{
              Scaled[0.05], 
              Scaled[0.05]}, {
              Scaled[0.05], 
              Scaled[0.05]}}, PlotRangeClipping -> True, ImagePadding -> All, 
           DisplayFunction -> Identity, Axes -> {True, True}, 
           AxesLabel -> {None, None}, AxesOrigin -> {0, 0}, DisplayFunction :> 
           Identity, FrameLabel -> {{None, None}, {None, None}}, 
           FrameTicks -> {{Automatic, Automatic}, {Automatic, Automatic}}, 
           GridLinesStyle -> Directive[
             GrayLevel[0.5, 0.4]], 
           Method -> {
            "DefaultGraphicsInteraction" -> {
              "Version" -> 1.2, "TrackMousePosition" -> {True, False}, 
               "Effects" -> {
                "Highlight" -> {"ratio" -> 2}, 
                 "HighlightPoint" -> {"ratio" -> 2}, 
                 "Droplines" -> {
                  "freeformCursorMode" -> True, 
                   "placement" -> {"x" -> "All", "y" -> "None"}}}}, 
             "ScalingFunctions" -> None}, 
           PlotRange -> {{-0.12000000000000001`, 0.1}, {-0.07, 0.07}}, 
           PlotRangeClipping -> True, PlotRangePadding -> {
             Scaled[0.02], 
             Scaled[0.02]}, Ticks -> {Automatic, Automatic}}], 
         Graphics[{{{{{}, {}, 
              Annotation[{
                Directive[
                 Opacity[1.], 
                 AbsoluteThickness[1.6], 
                 FaceForm[
                  Opacity[0.3]], 
                 GrayLevel[0], 
                 Thickness[Large]], 
                Line[CompressedData["
1:eJwVz31Q03UABnCi0pDlkbw53t8s4Hg53kWCY77gxYUJxLqg5K1NuuRlYgrC
QgTuOORNKGEbMEAYLARZ8rLf9o0HcbHRAfIWCJGtkzdvQwwKjxJqPnfPPff5
87FPSo9i6evp6R3T9dXyea9CQRsptSnSSLA8tMGz5FP4/sXaQM+aBF7aU/x6
nVPq6fFLyxKoQjb5TQIKS2tXhSfUEmw/Ca8T11NYzAu20/9FgiiPlw1UE4Wx
ziH7vAEJDB6ca5kXU+gyGHPKvilBltbxLl1GgXP/D9fUAAkmS+cEMb9RMDzn
7uN5qRuub8WOBu1RyDw/uDqUcxd6CzbKXBsZbr/H+eyMWReidmi8bIYMuwz2
SFnVHTRvjXTZJcnwzbhLW6dzB9KCugUFRTK49Hpx8xvFkM4/imK0y9DWXRiW
a9uO16InIsQqGSJsRNc+kYqgoP9pO6aRwXrF8N6KdyuK5Wo/AU0OE7tQJlN5
GyP3Dpkp3OR4nAatNqkZRTupY+0fyTFlXpAToG4Ew6JWFZAhxyLLdVvxrAFX
ijX869VypJydW76uFsAtIj/AuU8O/hcWpFxdC7V22TxrVg7Lz//JjDO5hYML
mQ8LduR4bpBsVWlYjfebJ34OtCAwEaSIivwrsdLPrO8IJqDfX2cMf1CCt51s
j2UlEMQI/d+wPlEIn6/6LDauESSUXjTWnOZi5r/LU/YtBKwOvjrInIPqYFZY
q87vWjz16n2agcicaJlzK8FqcUCBB8nA+LZns6eI4Ev2zBH7xAyo1tc4we0E
C8etZmnMdPz4a+w7n94h0Hi8rmniXkBrf8jZyh4C2v5Jk9FRNpL/dlMY9xKU
L6X2D3DYcPCxPFqjs9HQgViJGRvCrhe2DX26P9yTwlsJLPBauzc6pARWW/0u
iX8lo6zaoUJJCNx/bwjZtkzE1+n7xvcUBHVp8xOhs0yU91l35v1EcKBHWkE5
MiHa9S3VGya4slNzxpsTg7kbyeH6SoKoQuaoI+1jBLYPDr85QmDAn1buOx6J
XfVV0MYI1ksEXF7caZg6VzWU6awyjf23ZPsUPNLF3IPjBC2Nh7Nzb55E/O5c
kNFDgti+7y7FKxkYpPtJjScJKh7YzoWzj2I+4cOab3UOm6+bcq/zw2Zb8mXT
KYKXz+jjRlPecPCv8jWfJpj2dS7pzHFFEFdsXKtzaIJDfuaqE6IVg5uHZwji
zAOfXxTZ4ILho0mezv5p7o/3uMZweyJUben8g9h3afH8fvwPgRAFDA==
                 "]], 
                Line[CompressedData["
1:eJwVzX1Q03UcB3DWJRDK8oAj2BKEdHkdLeXBNLVPMyC4znTAGJjhGkdzjRoP
d1LNIi9AEYFdg7u1CBCChgjsK6Ejf7/vh4eQ4sGLhyHriA4U5cAjBCcNBfr1
x/ve79df7yClNi7tGRcXl31c/m/PmZTe320MXm0IvzuhcoOL+YPZ2jEGu7Wu
NFgUDMdfMvlV3GbQbYqfmX8gHFZSwpQOO4MN/oa+vdFRsHsszfHTJIOrEbKc
0n4ZmLvfynVy/qw7njlYnAjbifC5d/9m0HEsjjf3nhy2Xhx6cYHzouZoUeRw
EixKDkWGTzE4cym2yjn+PjQ3+Rg67jA461p1Z8+yAkLyu3fbZxkczTJsrnBR
wa7woHSPZQZlO+mr1uJMGK7vj9rqyuKCJmzlvP0MFJtUsc0CFisWD29MFOWB
oDdmaV7M4qPb2JZccgGS3P3XByQsynVnEy776MHc92dYdCKLikTTXxhggMuX
igaUahYFR3zzfRzl8BU56xF4hkWx4GmUkDWC8rA6K1vP/YUm+/7S+T0478Mh
TS2LJ1X+m4zfVkI13z30yXUWabaZ5/ZHNazGYqG4n8W6Tkfp1MEaENEbBbxJ
FttXV14pr6kFZWtDU/oSi7X2tsEyUR1I2YLXdZsopkXXbbTq60EaI5sPElBc
Szq2P9DfDMFb1JGnxBS7Ei25qaYGqL+rcYmTUDw5LZH18hrhjTcV90ZkFEe8
S0Nzzl2Br6+8/ZrzFMXAEc+q6OUmMManb6M6isYvJX7/yFugS1cQIdRTfPSR
cSDzEwtUWkstwlqK7mPm0SdBBPaW6AozOP/rPeQM2kngVqpK2cP5vtQZELOL
wAYffLQ/Urw5GKsuExP4MG0hp6uOYl7P3FrIAQI7vI6A2kyR1xbyckoCgUaN
x61rTRRXDZbPOwoIREoe129upjg3NF55r5DAhO90roKz/Xner1uKCXh2te/x
aKFoLZLykw0EPvVTl39goXj6m6Wah1UEQnt6TzzbSnE5K3wguJ1An6k1Ipnz
tOXEwxiGQGpGFb+Z8/BCnq8WCZQJczrkP1O8+rFNcaOHwONM0Y7GNooZytOO
+GECJe94rW1wVlRXCr6wERBtW7clXKN4dPImVI8TkP9mO7fOWXz8hQsPJgks
/tCpiL9OMcAILV7TBM5nN+03c/YcU43umyGwPfY7rzXOT731zpRZAu0B+fNS
K8UHUiu3CPwHaIzcaQ==
                 "]]}, "Charting`Private`Tag$386720#1"], 
              Annotation[{
                Directive[
                 Opacity[1.], 
                 AbsoluteThickness[1.6], 
                 FaceForm[
                  Opacity[0.3]], 
                 GrayLevel[0], 
                 Thickness[Large]], 
                Line[CompressedData["
1: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
Swj/A5wylqs=
                 "]], 
                Line[CompressedData["
1:eJwtiXkwnAccQJeZ1lWp6SaaMAjiGN1oiWiFzs8R921ZEcGKooI6EhJXjJLW
kS21q13iyrLfJ6LDl4Yuwq8iSDJBnCFVaYg6oo44dxHNdPpm3rw/nub5GK9Q
aRqNZvnO/7rWHOiZRWJ8l8mriXAZcHjzx+OSCyRe6WTes+CwgDl7/TcigsQN
Dy+pBTdfMGUFBLeGk7gS6Z53evAMmNuLNp+FkDhz07FCPOYPpoks/Ul/Eufe
r5g2WmODRMaEVHcmcTieq1BKC4cmyUV6rC6JPjrtx0WcOFhvWp911SExVjId
O9sSBzl6Tf0Gx0jM7Ze7qzwXB606O2MvNUlsT/I5lWAdD2Y/cQZPq5Go37do
Z7wVDzX2w8GTdBJ3E1XZdexLYLM4txJEI1Hw8Eph5YnLkGDx6UDpKIFLkSe2
ssdTYcdVW1trhMDORo/WDPk0mH/4NpAYIpC/H52ebJ4Gu5JI3u2nBNpwa2Si
ytJg311js+bxu9+idtg9+Coktc3zYtoJtJKTNTs0nw6WhKIlQ0igE/ObNo/U
DFCq/9ElJIbA0hXr/Ym8LHhk5PlAWyzE9WfY6PdDLiwrrLIxRYi+KRnetQcL
ILlFxHCerkY2q+RPVOdC9cIhy0zbalRxVb52cKMIPNNPFfmWVqGhyq6tahsf
hAc0O3KGBbhk7Kfc0nEDCreZz/+SF2BQ+JH3+IXlwK43tSA0bmL7xRopmaeV
UHG/vyfEpBKFHRv5Ly0EECA7dvLzq+XYLNkyKBJUwWn1viCWYylWjTf28nSF
YNOx4xSkWoKhdsL9XwsIWCbuDhiV/Yx7ZzzMNI7UgGly5yci2SK8z2pIDym5
BZJmWqvLt4UYNGXl0yN1G952HzW85ZCPQ/R848vf18FMzK6SWkMOagwpVtit
/QID/1irZoszkZ9mdXjZtx5KPrNdpyuk4HoY/0lcdAPIG+TZhihEo+xozfCO
JgVM/V6rpOIo3KYPiDV1KLCcYIyl6kXhrKdY3UGfgrCvbIdcbCKxu9cxgmdI
AW/zubRScgRmdS3sMcwpSNfi22u/CkWpRoZeoDcFe0aNfRLvAJRwG5J+/46C
RQ7hxok6hwsDY+V/51Bw1mdIeifTH8c/lHrwAYeC2mMvZL6+44eiPM8DflwK
FHswK1uRhYmZbwSrFRQ8OunE7U5yxbV4kydazRTIuZWoeFU741TDuVWHexTU
mQfL8/occXApSzkGKSD4TG1zLTu8c2GE3dpFwesmXgLj+pcYez5xgzlIgYKd
QKF2wgzZleUqySMUCDLK4nkMU3Sf7IbKMQpyt5rDgoqOo+HZj3MXJymovmSt
0mGki+p8qP9oioKjxS4vtovVUHE0fPiLGQoC54tu2JYq4i69QBw4RwHtfxY9
RerXXlPwL24ZC5g=
                 "]]}, "Charting`Private`Tag$386720#2"], 
              Annotation[{
                Directive[
                 Opacity[1.], 
                 AbsoluteThickness[1.6], 
                 FaceForm[
                  Opacity[0.3]], 
                 GrayLevel[0], 
                 Thickness[Large]], 
                Line[CompressedData["
1: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
                 "]], 
                Line[CompressedData["
1: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
                 "]]}, "Charting`Private`Tag$386720#3"], {}}}, {}}, {
            Arrowheads[0.015], {
             Arrow[{{-0.1, -0.07}, {-0.1, -0.07}}], 
             
             Arrow[{{-0.1, -0.05600000000000001}, {-0.10252649006622518`, \
-0.05600000000000001}}], 
             Arrow[{{-0.1, -0.042}, {-0.10505298013245033`, -0.042}}], 
             
             Arrow[{{-0.1, -0.027999999999999997`}, {-0.1075794701986755, \
-0.027999999999999997`}}], 
             
             Arrow[{{-0.1, -0.013999999999999999`}, {-0.11010596026490067`, \
-0.013999999999999999`}}], 
             Arrow[{{-0.1, 0.}, {-0.1, 0.}}], 
             
             Arrow[{{-0.1, 0.014000000000000012`}, {-0.11410596026490066`, 
              0.014000000000000012`}}], 
             
             Arrow[{{-0.1, 0.02800000000000001}, {-0.11557947019867551`, 
              0.02800000000000001}}], 
             
             Arrow[{{-0.1, 0.04200000000000001}, {-0.11705298013245033`, 
              0.04200000000000001}}], 
             
             Arrow[{{-0.1, 0.05600000000000002}, {-0.11852649006622518`, 
              0.05600000000000002}}], 
             Arrow[{{-0.1, 0.07}, {-0.12000000000000001`, 0.07}}]}, {
             Arrow[{{0, -0.07}, {0., -0.07}}], 
             
             Arrow[{{0, -0.05600000000000001}, {-0.019163679775280894`, \
-0.05600000000000001}}], 
             Arrow[{{0, -0.042}, {-0.033339269662921354`, -0.042}}], 
             
             Arrow[{{0, -0.027999999999999997`}, {-0.042526769662921356`, \
-0.027999999999999997`}}], 
             
             Arrow[{{0, -0.013999999999999999`}, {-0.04672617977528091, \
-0.013999999999999999`}}], 
             Arrow[{{0, 0.}, {-0.045937500000000006`, 0.}}], 
             
             Arrow[{{0, 0.014000000000000012`}, {-0.04256834862385321, 
               0.014000000000000012`}}], 
             
             Arrow[{{0, 0.02800000000000001}, {-0.03629002293577982, 
               0.02800000000000001}}], 
             
             Arrow[{{0, 0.04200000000000001}, {-0.02710252293577982, 
               0.04200000000000001}}], 
             
             Arrow[{{0, 0.05600000000000002}, {-0.015005848623853194`, 
               0.05600000000000002}}], 
             Arrow[{{0, 0.07}, {0., 0.07}}]}, {
             Arrow[{{0.1, -0.07}, {0.1, -0.07}}], 
             
             Arrow[{{0.1, -0.05600000000000001}, {
              0.07830983015849394, -0.05600000000000001}}], 
             Arrow[{{0.1, -0.042}, {0.06160775020462832, -0.042}}], 
             
             Arrow[{{0.1, -0.027999999999999997`}, {
              0.04989376013840315, -0.027999999999999997`}}], 
             
             Arrow[{{0.1, -0.013999999999999999`}, {
              0.043167859959818436`, -0.013999999999999999`}}], 
             Arrow[{{0.1, 0.}, {0.04143004966887417, 0.}}], 
             
             Arrow[{{0.1, 0.014000000000000012`}, {0.04332569111124612, 
              0.014000000000000012`}}], 
             
             Arrow[{{0.1, 0.02800000000000001}, {0.048130506865544695`, 
              0.02800000000000001}}], 
             
             Arrow[{{0.1, 0.04200000000000001}, {0.055844496931769856`, 
              0.04200000000000001}}], 
             
             Arrow[{{0.1, 0.05600000000000002}, {0.06646766130992164, 
              0.05600000000000002}}], 
             Arrow[{{0.1, 0.07}, {0.08, 0.07}}]}, 
            RGBColor[0, 1, 0], 
            Line[{{-0.1, -0.07}, {-0.1, 0.07}}], 
            RGBColor[1, 0, 0], 
            Line[{{0.1, -0.07}, {0.1, 0.07}}]}}, {
          DisplayFunction -> Identity, PlotRangePadding -> {{
              Scaled[0.05], 
              Scaled[0.05]}, {
              Scaled[0.05], 
              Scaled[0.05]}}, PlotRangeClipping -> True, ImagePadding -> All, 
           DisplayFunction -> Identity, Axes -> {True, True}, 
           AxesLabel -> {None, None}, AxesOrigin -> {0, 0}, DisplayFunction :> 
           Identity, FrameLabel -> {{None, None}, {None, None}}, 
           FrameTicks -> {{Automatic, Automatic}, {Automatic, Automatic}}, 
           GridLinesStyle -> Directive[
             GrayLevel[0.5, 0.4]], 
           Method -> {
            "DefaultGraphicsInteraction" -> {
              "Version" -> 1.2, "TrackMousePosition" -> {True, False}, 
               "Effects" -> {
                "Highlight" -> {"ratio" -> 2}, 
                 "HighlightPoint" -> {"ratio" -> 2}, 
                 "Droplines" -> {
                  "freeformCursorMode" -> True, 
                   "placement" -> {"x" -> "All", "y" -> "None"}}}}, 
             "ScalingFunctions" -> None}, 
           PlotRange -> {{-0.12000000000000001`, 0.1}, {-0.07, 0.07}}, 
           PlotRangeClipping -> True, PlotRangePadding -> {
             Scaled[0.02], 
             Scaled[0.02]}, Ticks -> {Automatic, Automatic}}], 
         Graphics[{{{{{}, {}, 
              Annotation[{
                Directive[
                 Opacity[1.], 
                 AbsoluteThickness[1.6], 
                 FaceForm[
                  Opacity[0.3]], 
                 GrayLevel[0], 
                 Thickness[Large]], 
                Line[CompressedData["
1:eJwVz31Q03UABnCi0pDlkbw53t8s4Hg53kWCY77gxYUJxLqg5K1NuuRlYgrC
QgTuOORNKGEbMEAYLARZ8rLf9o0HcbHRAfIWCJGtkzdvQwwKjxJqPnfPPff5
87FPSo9i6evp6R3T9dXyea9CQRsptSnSSLA8tMGz5FP4/sXaQM+aBF7aU/x6
nVPq6fFLyxKoQjb5TQIKS2tXhSfUEmw/Ca8T11NYzAu20/9FgiiPlw1UE4Wx
ziH7vAEJDB6ca5kXU+gyGHPKvilBltbxLl1GgXP/D9fUAAkmS+cEMb9RMDzn
7uN5qRuub8WOBu1RyDw/uDqUcxd6CzbKXBsZbr/H+eyMWReidmi8bIYMuwz2
SFnVHTRvjXTZJcnwzbhLW6dzB9KCugUFRTK49Hpx8xvFkM4/imK0y9DWXRiW
a9uO16InIsQqGSJsRNc+kYqgoP9pO6aRwXrF8N6KdyuK5Wo/AU0OE7tQJlN5
GyP3Dpkp3OR4nAatNqkZRTupY+0fyTFlXpAToG4Ew6JWFZAhxyLLdVvxrAFX
ijX869VypJydW76uFsAtIj/AuU8O/hcWpFxdC7V22TxrVg7Lz//JjDO5hYML
mQ8LduR4bpBsVWlYjfebJ34OtCAwEaSIivwrsdLPrO8IJqDfX2cMf1CCt51s
j2UlEMQI/d+wPlEIn6/6LDauESSUXjTWnOZi5r/LU/YtBKwOvjrInIPqYFZY
q87vWjz16n2agcicaJlzK8FqcUCBB8nA+LZns6eI4Ev2zBH7xAyo1tc4we0E
C8etZmnMdPz4a+w7n94h0Hi8rmniXkBrf8jZyh4C2v5Jk9FRNpL/dlMY9xKU
L6X2D3DYcPCxPFqjs9HQgViJGRvCrhe2DX26P9yTwlsJLPBauzc6pARWW/0u
iX8lo6zaoUJJCNx/bwjZtkzE1+n7xvcUBHVp8xOhs0yU91l35v1EcKBHWkE5
MiHa9S3VGya4slNzxpsTg7kbyeH6SoKoQuaoI+1jBLYPDr85QmDAn1buOx6J
XfVV0MYI1ksEXF7caZg6VzWU6awyjf23ZPsUPNLF3IPjBC2Nh7Nzb55E/O5c
kNFDgti+7y7FKxkYpPtJjScJKh7YzoWzj2I+4cOab3UOm6+bcq/zw2Zb8mXT
KYKXz+jjRlPecPCv8jWfJpj2dS7pzHFFEFdsXKtzaIJDfuaqE6IVg5uHZwji
zAOfXxTZ4ILho0mezv5p7o/3uMZweyJUben8g9h3afH8fvwPgRAFDA==
                 "]], 
                Line[CompressedData["
1:eJwVzX1Q03UcB3DWJRDK8oAj2BKEdHkdLeXBNLVPMyC4znTAGJjhGkdzjRoP
d1LNIi9AEYFdg7u1CBCChgjsK6Ejf7/vh4eQ4sGLhyHriA4U5cAjBCcNBfr1
x/ve79df7yClNi7tGRcXl31c/m/PmZTe320MXm0IvzuhcoOL+YPZ2jEGu7Wu
NFgUDMdfMvlV3GbQbYqfmX8gHFZSwpQOO4MN/oa+vdFRsHsszfHTJIOrEbKc
0n4ZmLvfynVy/qw7njlYnAjbifC5d/9m0HEsjjf3nhy2Xhx6cYHzouZoUeRw
EixKDkWGTzE4cym2yjn+PjQ3+Rg67jA461p1Z8+yAkLyu3fbZxkczTJsrnBR
wa7woHSPZQZlO+mr1uJMGK7vj9rqyuKCJmzlvP0MFJtUsc0CFisWD29MFOWB
oDdmaV7M4qPb2JZccgGS3P3XByQsynVnEy776MHc92dYdCKLikTTXxhggMuX
igaUahYFR3zzfRzl8BU56xF4hkWx4GmUkDWC8rA6K1vP/YUm+/7S+T0478Mh
TS2LJ1X+m4zfVkI13z30yXUWabaZ5/ZHNazGYqG4n8W6Tkfp1MEaENEbBbxJ
FttXV14pr6kFZWtDU/oSi7X2tsEyUR1I2YLXdZsopkXXbbTq60EaI5sPElBc
Szq2P9DfDMFb1JGnxBS7Ei25qaYGqL+rcYmTUDw5LZH18hrhjTcV90ZkFEe8
S0Nzzl2Br6+8/ZrzFMXAEc+q6OUmMManb6M6isYvJX7/yFugS1cQIdRTfPSR
cSDzEwtUWkstwlqK7mPm0SdBBPaW6AozOP/rPeQM2kngVqpK2cP5vtQZELOL
wAYffLQ/Urw5GKsuExP4MG0hp6uOYl7P3FrIAQI7vI6A2kyR1xbyckoCgUaN
x61rTRRXDZbPOwoIREoe129upjg3NF55r5DAhO90roKz/Xner1uKCXh2te/x
aKFoLZLykw0EPvVTl39goXj6m6Wah1UEQnt6TzzbSnE5K3wguJ1An6k1Ipnz
tOXEwxiGQGpGFb+Z8/BCnq8WCZQJczrkP1O8+rFNcaOHwONM0Y7GNooZytOO
+GECJe94rW1wVlRXCr6wERBtW7clXKN4dPImVI8TkP9mO7fOWXz8hQsPJgks
/tCpiL9OMcAILV7TBM5nN+03c/YcU43umyGwPfY7rzXOT731zpRZAu0B+fNS
K8UHUiu3CPwHaIzcaQ==
                 "]]}, "Charting`Private`Tag$387453#1"], 
              Annotation[{
                Directive[
                 Opacity[1.], 
                 AbsoluteThickness[1.6], 
                 FaceForm[
                  Opacity[0.3]], 
                 GrayLevel[0], 
                 Thickness[Large]], 
                Line[CompressedData["
1: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
0QFPYfwPQ3iyNg==
                 "]], 
                Line[CompressedData["
1:eJwtjn881Hccxx0KYRZ1oXWlSHlICw8j8vajPFgz51eXqLtshkrOyc8c85hT
YyTHullxflz4ZuPDLL/yHtavJZXfmqiTkTyUH/ewu8mtPR57PR7Px/OP5z8v
k9BovzBVFRUVl/f8553s7NWQ5xTW19q+HA3XgMkNkTqKTgoTu/zbnHKOwILl
jPFEB4Uyph9t5nMWXAwdFhKk8O1pn+yDvUeBTHwpg1YKJ0u9SuTDwbB0wDlh
ez2F02tLJvYtcsDNbyFutZjCfp5Q+6pKOCzJ2Wz9OAoDzdr3NOXEgKPxIt6J
pZCrmOBOtcRAIi6tT+ZRmPVI6xf6dAwMityznkVT2J4UuD/OjQeMC3rdV05R
uKtn1sN6mQcvfTkFI2wKV+I3c2o458BbPPlJvheFZfcS88U2CSDYlvbHkBGF
c6dtli+OpIBC73s1c0MKuxqZrenr+GC17unqOTqFImVUWrIjH4YYrxx1DSh0
F1ZpnLnGB9P7Ox5b6bzvLVsMfU6mQp2J9km71Wp01dJ02PgqDfKlpaasF9X4
qf/ZW8yUdPi6/I31eHk1Xn3rphzNzoDE4+m7Wz+qxqUhbAzKzYKQ8wa0qJwq
ZJ1PD6A25IEi+2fWvvFK5BwpeoYMIfgE3jAdt6hEY2+6YIOsEOyV2dTFyOto
ZbxyaPMtEfxw16xpr0CCc9ZB9JaOH6HSZaH/ZnEFssON1ojyi+HmMVmO9HI5
tsdW0TQei0Gpqu+nLihDSYfs0gunMrinLh4gZ0qxWbFsUVhWDs2z7XbTu8VY
PtL4sGCnBJ6PRnTtGLyGYR4SZUPedaiI67F/sFKE744yHbYaVYFzXYzuspYI
O4/UpX1RVA0H3UYZNuaFyJa6Bt6l3QClmqSG8/wy9hlcsk64UAPM4KG53OAc
3NqnW+Kx+BOE2La4a/VnoojvaviGVQsRc2t66NOpuPSVqDsmqg5iFy3UHoi4
qDlY1f+PCYHODA1aA4uLfxs8kZuYEfAKunA+j87FKV85w3MXAeaVF92sXdF4
56FXZIEVgU01A+b3t0Rhxu2Zd5aOBP5UXS5qUY9EWqOl+YkAAr+GMeKHOzmo
ENYl/ZZJwMi3qkjDmYMzT4aL//qWACNznuvOY+OIHu13nRwCOrFPcc+J49iU
7ftBkJAAf8KzTcs2COO/WSibLyHQxhDtHR9i4iLPtnt78/u/fLmbwxUflNaF
zHu2EUgZHNXmpHpj71wGPRoJaPbNf0YOe2H9qQFO620CjxQB34VKXZAbGi/z
7yXwau3YvqTcA8gRFxsnDxBQO+yxUcByQJ+xOyAeJiCNaNhfMfUxWh3blDU7
RsBHwJWfPb4bGSKo1ZcSkIil6w/NbEPdwfB++0kCdk7J/MLXH+KKQZ78xDQB
lf8369vEELwm8C93lQ4o
                 "]]}, "Charting`Private`Tag$387453#2"], 
              Annotation[{
                Directive[
                 Opacity[1.], 
                 AbsoluteThickness[1.6], 
                 FaceForm[
                  Opacity[0.3]], 
                 GrayLevel[0], 
                 Thickness[Large]], 
                Line[CompressedData["
1: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
                 "]], 
                Line[CompressedData["
1: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
                 "]]}, "Charting`Private`Tag$387453#3"], {}}}, {}}, {
            Arrowheads[0.015], {
             Arrow[{{-0.1, -0.07}, {-0.1, -0.07}}], 
             
             Arrow[{{-0.1, -0.05600000000000001}, {-0.10252649006622518`, \
-0.05600000000000001}}], 
             Arrow[{{-0.1, -0.042}, {-0.10505298013245033`, -0.042}}], 
             
             Arrow[{{-0.1, -0.027999999999999997`}, {-0.1075794701986755, \
-0.027999999999999997`}}], 
             
             Arrow[{{-0.1, -0.013999999999999999`}, {-0.11010596026490067`, \
-0.013999999999999999`}}], 
             Arrow[{{-0.1, 0.}, {-0.1, 0.}}], 
             
             Arrow[{{-0.1, 0.014000000000000012`}, {-0.11410596026490066`, 
              0.014000000000000012`}}], 
             
             Arrow[{{-0.1, 0.02800000000000001}, {-0.11557947019867551`, 
              0.02800000000000001}}], 
             
             Arrow[{{-0.1, 0.04200000000000001}, {-0.11705298013245033`, 
              0.04200000000000001}}], 
             
             Arrow[{{-0.1, 0.05600000000000002}, {-0.11852649006622518`, 
              0.05600000000000002}}], 
             Arrow[{{-0.1, 0.07}, {-0.12000000000000001`, 0.07}}]}, {
             Arrow[{{0, -0.07}, {0., -0.07}}], 
             
             Arrow[{{0, -0.05600000000000001}, {-0.021901348314606738`, \
-0.05600000000000001}}], 
             Arrow[{{0, -0.042}, {-0.03810202247191012, -0.042}}], 
             
             Arrow[{{0, -0.027999999999999997`}, {-0.04860202247191013, \
-0.027999999999999997`}}], 
             
             Arrow[{{0, -0.013999999999999999`}, {-0.053401348314606745`, \
-0.013999999999999999`}}], 
             Arrow[{{0, 0.}, {-0.05250000000000001, 0.}}], 
             
             Arrow[{{0, 0.014000000000000012`}, {-0.04864954128440368, 
               0.014000000000000012`}}], 
             
             Arrow[{{0, 0.02800000000000001}, {-0.04147431192660551, 
               0.02800000000000001}}], 
             
             Arrow[{{0, 0.04200000000000001}, {-0.03097431192660551, 
               0.04200000000000001}}], 
             
             Arrow[{{0, 0.05600000000000002}, {-0.01714954128440365, 
               0.05600000000000002}}], 
             Arrow[{{0, 0.07}, {0., 0.07}}]}, {
             Arrow[{{0.1, -0.07}, {0.1, -0.07}}], 
             
             Arrow[{{0.1, -0.05600000000000001}, {
              0.0755721616191681, -0.05600000000000001}}], 
             Arrow[{{0.1, -0.042}, {0.05684499739563955, -0.042}}], 
             
             Arrow[{{0.1, -0.027999999999999997`}, {
              0.04381850732941438, -0.027999999999999997`}}], 
             
             Arrow[{{0.1, -0.013999999999999999`}, {
              0.03649269142049259, -0.013999999999999999`}}], 
             Arrow[{{0.1, 0.}, {0.03486754966887416, 0.}}], 
             
             Arrow[{{0.1, 0.014000000000000012`}, {0.03724449845069566, 
              0.014000000000000012`}}], 
             
             Arrow[{{0.1, 0.02800000000000001}, {0.042946217874719, 
              0.02800000000000001}}], 
             
             Arrow[{{0.1, 0.04200000000000001}, {0.05197270794094416, 
              0.04200000000000001}}], 
             
             Arrow[{{0.1, 0.05600000000000002}, {0.06432396864937118, 
              0.05600000000000002}}], 
             Arrow[{{0.1, 0.07}, {0.08, 0.07}}]}, 
            RGBColor[0, 1, 0], 
            Line[{{-0.1, -0.07}, {-0.1, 0.07}}], 
            RGBColor[1, 0, 0], 
            Line[{{0.1, -0.07}, {0.1, 0.07}}]}}, {
          DisplayFunction -> Identity, PlotRangePadding -> {{
              Scaled[0.05], 
              Scaled[0.05]}, {
              Scaled[0.05], 
              Scaled[0.05]}}, PlotRangeClipping -> True, ImagePadding -> All, 
           DisplayFunction -> Identity, Axes -> {True, True}, 
           AxesLabel -> {None, None}, AxesOrigin -> {0, 0}, DisplayFunction :> 
           Identity, FrameLabel -> {{None, None}, {None, None}}, 
           FrameTicks -> {{Automatic, Automatic}, {Automatic, Automatic}}, 
           GridLinesStyle -> Directive[
             GrayLevel[0.5, 0.4]], 
           Method -> {
            "DefaultGraphicsInteraction" -> {
              "Version" -> 1.2, "TrackMousePosition" -> {True, False}, 
               "Effects" -> {
                "Highlight" -> {"ratio" -> 2}, 
                 "HighlightPoint" -> {"ratio" -> 2}, 
                 "Droplines" -> {
                  "freeformCursorMode" -> True, 
                   "placement" -> {"x" -> "All", "y" -> "None"}}}}, 
             "ScalingFunctions" -> None}, 
           PlotRange -> {{-0.12000000000000001`, 0.1}, {-0.07, 0.07}}, 
           PlotRangeClipping -> True, PlotRangePadding -> {
             Scaled[0.02], 
             Scaled[0.02]}, 
           Ticks -> {Automatic, Automatic}}]}, $CellContext`uNoShear[
         Pattern[$CellContext`y, 
          Blank[]], 
         Pattern[$CellContext`pressureGradient, 
          Blank[]], 
         Pattern[$CellContext`mu1, 
          Blank[]], 
         Pattern[$CellContext`mu2, 
          Blank[]], 
         Pattern[$CellContext`h1, 
          Blank[]], 
         Pattern[$CellContext`h2, 
          
          Blank[]]] := $CellContext`uComposite[$CellContext`y, \
$CellContext`pressureGradient, $CellContext`mu1, $CellContext`mu2, \
$CellContext`h1, $CellContext`h2, 0, 0], $CellContext`uComposite[
         Pattern[$CellContext`y, 
          Blank[]], 
         Pattern[$CellContext`pressureGradient, 
          Blank[]], 
         Pattern[$CellContext`mu1, 
          Blank[]], 
         Pattern[$CellContext`mu2, 
          Blank[]], 
         Pattern[$CellContext`h1, 
          Blank[]], 
         Pattern[$CellContext`h2, 
          Blank[]], 
         Pattern[$CellContext`v1, 
          Blank[]], 
         Pattern[$CellContext`v2, 
          Blank[]]] := 
       Module[{$CellContext`u1, $CellContext`u2, $CellContext`a, \
$CellContext`hr1, $CellContext`hr2, $CellContext`gp1, $CellContext`gp2}, \
$CellContext`hr1 := $CellContext`h1/$CellContext`mu1; $CellContext`hr2 := \
$CellContext`h2/$CellContext`mu2; $CellContext`gp1 := \
($CellContext`pressureGradient/
            2) $CellContext`h1 $CellContext`hr1; $CellContext`gp2 := \
($CellContext`pressureGradient/
            2) $CellContext`h2 $CellContext`hr2; $CellContext`a := \
($CellContext`v2 - $CellContext`v1 + $CellContext`gp1 - \
$CellContext`gp2)/($CellContext`hr1 + $CellContext`hr2); $CellContext`u1[
            Pattern[$CellContext`t, 
             Blank[]]] = $CellContext`gp1 ($CellContext`t^2/$CellContext`h1^2 - 
             1) + $CellContext`a $CellContext`hr1 \
($CellContext`t/$CellContext`h1 + 1) + $CellContext`v1; $CellContext`u2[
            Pattern[$CellContext`t, 
             Blank[]]] = $CellContext`gp2 ($CellContext`t^2/$CellContext`h2^2 - 
             1) + $CellContext`a $CellContext`hr2 \
($CellContext`t/$CellContext`h2 - 1) + $CellContext`v2; Piecewise[{{
             $CellContext`u1[$CellContext`y], $CellContext`y < 0}, {
             $CellContext`u2[$CellContext`y], $CellContext`y >= 
             0}}]], $CellContext`green = GrayLevel[0], $CellContext`red = 
       GrayLevel[0]}; Typeset`initDone$$ = True),
    SynchronousInitialization->True,
    UndoTrackedVariables:>{Typeset`show$$, Typeset`bookmarkMode$$},
    UnsavedVariables:>{Typeset`initDone$$},
    UntrackedVariables:>{Typeset`size$$}], "Manipulate",
   Deployed->True,
   StripOnInput->False],
  Manipulate`InterpretManipulate[1]]], "Output",
 CellChangeTimes->{
  3.888178762700425*^9, 3.888178857820685*^9, 3.888178917642714*^9, {
   3.88817905686421*^9, 3.888179066523164*^9}, {3.888179115767684*^9, 
   3.888179129158204*^9}, {3.8881798477664347`*^9, 3.8881798568808403`*^9}},
 CellLabel->
  "Out[806]=",ExpressionUUID->"92b42176-7d98-45c8-8775-c36d93d65326"]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"mu2gtmu1", " ", "=", " ", 
  RowBox[{"DynamicModule", "[", 
   RowBox[{
    RowBox[{"{", 
     RowBox[{
      RowBox[{"h1", "=", "0.07`"}], ",", 
      RowBox[{"h2", "=", "0.07`"}], ",", 
      RowBox[{"mu1", "=", "0.0008900000000000002`"}], ",", 
      RowBox[{"mu2", "=", "0.001526`"}], ",", 
      RowBox[{"v1", "=", "0"}], ",", 
      RowBox[{"v2", "=", 
       RowBox[{"-", "0.02`"}]}], ",", 
      RowBox[{"vp", "=", "0.5`"}]}], "}"}], ",", 
    RowBox[{"Module", "[", 
     RowBox[{
      RowBox[{"{", 
       RowBox[{
       "f1$", ",", "f2$", ",", "f3$", ",", "a1$", ",", "a2$", ",", "a3$", ",",
         "p$", ",", "t1$", ",", "t2$", ",", "t3$", ",", "s1$", ",", "s2$", 
        ",", "s3$"}], "}"}], ",", 
      RowBox[{
       RowBox[{
        RowBox[{"f1$", "[", 
         RowBox[{"y$_", ",", "w$_"}], "]"}], ":=", 
        RowBox[{"uNoPressureGrad", "[", 
         RowBox[{
         "y$", ",", "mu1", ",", "mu2", ",", "h1", ",", "h2", ",", "v1", ",", 
          "v2"}], "]"}]}], ";", 
       RowBox[{
        RowBox[{"f2$", "[", 
         RowBox[{"y$_", ",", "w$_"}], "]"}], ":=", 
        RowBox[{"uNoShear", "[", 
         RowBox[{"y$", ",", 
          RowBox[{
           FractionBox["3", "2"], " ", "w$", " ", 
           RowBox[{"(", 
            RowBox[{
             FractionBox["mu1", "h1"], "+", 
             FractionBox["mu2", "h2"]}], ")"}]}], ",", "mu1", ",", "mu2", ",",
           "h1", ",", "h2"}], "]"}]}], ";", 
       RowBox[{
        RowBox[{"f3$", "[", 
         RowBox[{"y$_", ",", "w$_"}], "]"}], ":=", 
        RowBox[{"uComposite", "[", 
         RowBox[{"y$", ",", 
          RowBox[{
           FractionBox["3", "2"], " ", "w$", " ", 
           RowBox[{"(", 
            RowBox[{
             FractionBox["mu1", "h1"], "+", 
             FractionBox["mu2", "h2"]}], ")"}]}], ",", "mu1", ",", "mu2", ",",
           "h1", ",", "h2", ",", "v1", ",", "v2"}], "]"}]}], ";", 
       RowBox[{"s1$", "=", 
        RowBox[{"-", "0.1`"}]}], ";", 
       RowBox[{"s2$", "=", "0"}], ";", 
       RowBox[{"s3$", "=", "0.1`"}], ";", 
       RowBox[{"p$", "=", 
        RowBox[{"ParametricPlot", "[", 
         RowBox[{
          RowBox[{"{", 
           RowBox[{
            RowBox[{"{", 
             RowBox[{
              RowBox[{"s1$", "+", 
               RowBox[{"f1$", "[", 
                RowBox[{"r", ",", "vp"}], "]"}]}], ",", "r"}], "}"}], ",", 
            RowBox[{"{", 
             RowBox[{
              RowBox[{"s2$", "+", 
               RowBox[{"f2$", "[", 
                RowBox[{"r", ",", "vp"}], "]"}]}], ",", "r"}], "}"}], ",", 
            RowBox[{"{", 
             RowBox[{
              RowBox[{"s3$", "+", 
               RowBox[{"f3$", "[", 
                RowBox[{"r", ",", "vp"}], "]"}]}], ",", "r"}], "}"}]}], "}"}],
           ",", 
          RowBox[{"{", 
           RowBox[{"r", ",", 
            RowBox[{"-", "h1"}], ",", "h2"}], "}"}], ",", 
          RowBox[{"PlotStyle", "\[Rule]", 
           RowBox[{"Directive", "[", 
            RowBox[{"Black", ",", "Thick"}], "]"}]}]}], "]"}]}], ";", 
       RowBox[{"t1$", "=", 
        RowBox[{"Table", "[", 
         RowBox[{
          RowBox[{"Arrow", "[", 
           RowBox[{"{", 
            RowBox[{
             RowBox[{"{", 
              RowBox[{"s1$", ",", "i"}], "}"}], ",", 
             RowBox[{"{", 
              RowBox[{
               RowBox[{"s1$", "+", 
                RowBox[{"f1$", "[", 
                 RowBox[{"i", ",", "vp"}], "]"}]}], ",", "i"}], "}"}]}], 
            "}"}], "]"}], ",", 
          RowBox[{"{", 
           RowBox[{"i", ",", 
            RowBox[{"-", "h1"}], ",", "h2", ",", 
            FractionBox[
             RowBox[{"h2", "+", "h1"}], "10"]}], "}"}]}], "]"}]}], ";", 
       RowBox[{"t2$", "=", 
        RowBox[{"Table", "[", 
         RowBox[{
          RowBox[{"Arrow", "[", 
           RowBox[{"{", 
            RowBox[{
             RowBox[{"{", 
              RowBox[{"s2$", ",", "i"}], "}"}], ",", 
             RowBox[{"{", 
              RowBox[{
               RowBox[{"s2$", "+", 
                RowBox[{"f2$", "[", 
                 RowBox[{"i", ",", "vp"}], "]"}]}], ",", "i"}], "}"}]}], 
            "}"}], "]"}], ",", 
          RowBox[{"{", 
           RowBox[{"i", ",", 
            RowBox[{"-", "h1"}], ",", "h2", ",", 
            FractionBox[
             RowBox[{"h2", "+", "h1"}], "10"]}], "}"}]}], "]"}]}], ";", 
       RowBox[{"t3$", "=", 
        RowBox[{"Table", "[", 
         RowBox[{
          RowBox[{"Arrow", "[", 
           RowBox[{"{", 
            RowBox[{
             RowBox[{"{", 
              RowBox[{"s3$", ",", "i"}], "}"}], ",", 
             RowBox[{"{", 
              RowBox[{
               RowBox[{"s3$", "+", 
                RowBox[{"f3$", "[", 
                 RowBox[{"i", ",", "vp"}], "]"}]}], ",", "i"}], "}"}]}], 
            "}"}], "]"}], ",", 
          RowBox[{"{", 
           RowBox[{"i", ",", 
            RowBox[{"-", "h1"}], ",", "h2", ",", 
            FractionBox[
             RowBox[{"h2", "+", "h1"}], "10"]}], "}"}]}], "]"}]}], ";", 
       RowBox[{"Show", "[", 
        RowBox[{"{", 
         RowBox[{"p$", ",", 
          RowBox[{"Graphics", "[", 
           RowBox[{"{", 
            RowBox[{
             RowBox[{"Arrowheads", "[", "0.025`", "]"}], ",", "t1$", ",", 
             "t2$", ",", "t3$", ",", "green", ",", 
             RowBox[{"Line", "[", 
              RowBox[{"{", 
               RowBox[{
                RowBox[{"{", 
                 RowBox[{"s1$", ",", 
                  RowBox[{"-", "h1"}]}], "}"}], ",", 
                RowBox[{"{", 
                 RowBox[{"s1$", ",", "h2"}], "}"}]}], "}"}], "]"}], ",", 
             "red", ",", 
             RowBox[{"Line", "[", 
              RowBox[{"{", 
               RowBox[{
                RowBox[{"{", 
                 RowBox[{"s3$", ",", 
                  RowBox[{"-", "h1"}]}], "}"}], ",", 
                RowBox[{"{", 
                 RowBox[{"s3$", ",", "h2"}], "}"}]}], "}"}], "]"}]}], "}"}], 
           "]"}]}], "}"}], "]"}]}]}], "]"}]}], "]"}]}]], "Input",
 GeneratedCell->False,
 CellAutoOverwrite->False,
 CellChangeTimes->{{3.8881798909341297`*^9, 3.8881799093238277`*^9}, {
  3.888180580669318*^9, 3.888180584483521*^9}},
 CellLabel->
  "In[817]:=",ExpressionUUID->"84e5432e-b760-4bbe-94ff-d74093ee35a8"],

Cell[BoxData[
 DynamicModuleBox[{$CellContext`h1$$ = 0.07, $CellContext`h2$$ = 
  0.07, $CellContext`mu1$$ = 0.0008900000000000002, $CellContext`mu2$$ = 
  0.001526, $CellContext`v1$$ = 
  0, $CellContext`v2$$ = -0.02, $CellContext`vp$$ = 0.5}, 
  GraphicsBox[{{{{}, {}, 
      TagBox[
       {GrayLevel[0], Thickness[Large], Opacity[1.], FaceForm[Opacity[0.3]], 
        LineBox[CompressedData["
1:eJwVz31Q03UABnCi0pDlkbw53t8s4Hg53kWCY77gxYUJxLqg5K1NuuRlYgrC
QgTuOORNKGEbMEAYLARZ8rLf9o0HcbHRAfIWCJGtkzdvQwwKjxJqPnfPPff5
87FPSo9i6evp6R3T9dXyea9CQRsptSnSSLA8tMGz5FP4/sXaQM+aBF7aU/x6
nVPq6fFLyxKoQjb5TQIKS2tXhSfUEmw/Ca8T11NYzAu20/9FgiiPlw1UE4Wx
ziH7vAEJDB6ca5kXU+gyGHPKvilBltbxLl1GgXP/D9fUAAkmS+cEMb9RMDzn
7uN5qRuub8WOBu1RyDw/uDqUcxd6CzbKXBsZbr/H+eyMWReidmi8bIYMuwz2
SFnVHTRvjXTZJcnwzbhLW6dzB9KCugUFRTK49Hpx8xvFkM4/imK0y9DWXRiW
a9uO16InIsQqGSJsRNc+kYqgoP9pO6aRwXrF8N6KdyuK5Wo/AU0OE7tQJlN5
GyP3Dpkp3OR4nAatNqkZRTupY+0fyTFlXpAToG4Ew6JWFZAhxyLLdVvxrAFX
ijX869VypJydW76uFsAtIj/AuU8O/hcWpFxdC7V22TxrVg7Lz//JjDO5hYML
mQ8LduR4bpBsVWlYjfebJ34OtCAwEaSIivwrsdLPrO8IJqDfX2cMf1CCt51s
j2UlEMQI/d+wPlEIn6/6LDauESSUXjTWnOZi5r/LU/YtBKwOvjrInIPqYFZY
q87vWjz16n2agcicaJlzK8FqcUCBB8nA+LZns6eI4Ev2zBH7xAyo1tc4we0E
C8etZmnMdPz4a+w7n94h0Hi8rmniXkBrf8jZyh4C2v5Jk9FRNpL/dlMY9xKU
L6X2D3DYcPCxPFqjs9HQgViJGRvCrhe2DX26P9yTwlsJLPBauzc6pARWW/0u
iX8lo6zaoUJJCNx/bwjZtkzE1+n7xvcUBHVp8xOhs0yU91l35v1EcKBHWkE5
MiHa9S3VGya4slNzxpsTg7kbyeH6SoKoQuaoI+1jBLYPDr85QmDAn1buOx6J
XfVV0MYI1ksEXF7caZg6VzWU6awyjf23ZPsUPNLF3IPjBC2Nh7Nzb55E/O5c
kNFDgti+7y7FKxkYpPtJjScJKh7YzoWzj2I+4cOab3UOm6+bcq/zw2Zb8mXT
KYKXz+jjRlPecPCv8jWfJpj2dS7pzHFFEFdsXKtzaIJDfuaqE6IVg5uHZwji
zAOfXxTZ4ILho0mezv5p7o/3uMZweyJUben8g9h3afH8fvwPgRAFDA==
         "]], LineBox[CompressedData["
1:eJwVzX1Q03UcB3DWJRDK8oAj2BKEdHkdLeXBNLVPMyC4znTAGJjhGkdzjRoP
d1LNIi9AEYFdg7u1CBCChgjsK6Ejf7/vh4eQ4sGLhyHriA4U5cAjBCcNBfr1
x/ve79df7yClNi7tGRcXl31c/m/PmZTe320MXm0IvzuhcoOL+YPZ2jEGu7Wu
NFgUDMdfMvlV3GbQbYqfmX8gHFZSwpQOO4MN/oa+vdFRsHsszfHTJIOrEbKc
0n4ZmLvfynVy/qw7njlYnAjbifC5d/9m0HEsjjf3nhy2Xhx6cYHzouZoUeRw
EixKDkWGTzE4cym2yjn+PjQ3+Rg67jA461p1Z8+yAkLyu3fbZxkczTJsrnBR
wa7woHSPZQZlO+mr1uJMGK7vj9rqyuKCJmzlvP0MFJtUsc0CFisWD29MFOWB
oDdmaV7M4qPb2JZccgGS3P3XByQsynVnEy776MHc92dYdCKLikTTXxhggMuX
igaUahYFR3zzfRzl8BU56xF4hkWx4GmUkDWC8rA6K1vP/YUm+/7S+T0478Mh
TS2LJ1X+m4zfVkI13z30yXUWabaZ5/ZHNazGYqG4n8W6Tkfp1MEaENEbBbxJ
FttXV14pr6kFZWtDU/oSi7X2tsEyUR1I2YLXdZsopkXXbbTq60EaI5sPElBc
Szq2P9DfDMFb1JGnxBS7Ei25qaYGqL+rcYmTUDw5LZH18hrhjTcV90ZkFEe8
S0Nzzl2Br6+8/ZrzFMXAEc+q6OUmMManb6M6isYvJX7/yFugS1cQIdRTfPSR
cSDzEwtUWkstwlqK7mPm0SdBBPaW6AozOP/rPeQM2kngVqpK2cP5vtQZELOL
wAYffLQ/Urw5GKsuExP4MG0hp6uOYl7P3FrIAQI7vI6A2kyR1xbyckoCgUaN
x61rTRRXDZbPOwoIREoe129upjg3NF55r5DAhO90roKz/Xner1uKCXh2te/x
aKFoLZLykw0EPvVTl39goXj6m6Wah1UEQnt6TzzbSnE5K3wguJ1An6k1Ipnz
tOXEwxiGQGpGFb+Z8/BCnq8WCZQJczrkP1O8+rFNcaOHwONM0Y7GNooZytOO
+GECJe94rW1wVlRXCr6wERBtW7clXKN4dPImVI8TkP9mO7fOWXz8hQsPJgks
/tCpiL9OMcAILV7TBM5nN+03c/YcU43umyGwPfY7rzXOT731zpRZAu0B+fNS
K8UHUiu3CPwHaIzcaQ==
         "]]},
       Annotation[#, "Charting`Private`Tag$418788#1"]& ], 
      TagBox[
       {GrayLevel[0], Thickness[Large], Opacity[1.], FaceForm[Opacity[0.3]], 
        LineBox[CompressedData["
1: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
0QFPYfwPQ3iyNg==
         "]], LineBox[CompressedData["
1:eJwtjn881Hccxx0KYRZ1oXWlSHlICw8j8vajPFgz51eXqLtshkrOyc8c85hT
YyTHullxflz4ZuPDLL/yHtavJZXfmqiTkTyUH/ewu8mtPR57PR7Px/OP5z8v
k9BovzBVFRUVl/f8553s7NWQ5xTW19q+HA3XgMkNkTqKTgoTu/zbnHKOwILl
jPFEB4Uyph9t5nMWXAwdFhKk8O1pn+yDvUeBTHwpg1YKJ0u9SuTDwbB0wDlh
ez2F02tLJvYtcsDNbyFutZjCfp5Q+6pKOCzJ2Wz9OAoDzdr3NOXEgKPxIt6J
pZCrmOBOtcRAIi6tT+ZRmPVI6xf6dAwMityznkVT2J4UuD/OjQeMC3rdV05R
uKtn1sN6mQcvfTkFI2wKV+I3c2o458BbPPlJvheFZfcS88U2CSDYlvbHkBGF
c6dtli+OpIBC73s1c0MKuxqZrenr+GC17unqOTqFImVUWrIjH4YYrxx1DSh0
F1ZpnLnGB9P7Ox5b6bzvLVsMfU6mQp2J9km71Wp01dJ02PgqDfKlpaasF9X4
qf/ZW8yUdPi6/I31eHk1Xn3rphzNzoDE4+m7Wz+qxqUhbAzKzYKQ8wa0qJwq
ZJ1PD6A25IEi+2fWvvFK5BwpeoYMIfgE3jAdt6hEY2+6YIOsEOyV2dTFyOto
ZbxyaPMtEfxw16xpr0CCc9ZB9JaOH6HSZaH/ZnEFssON1ojyi+HmMVmO9HI5
tsdW0TQei0Gpqu+nLihDSYfs0gunMrinLh4gZ0qxWbFsUVhWDs2z7XbTu8VY
PtL4sGCnBJ6PRnTtGLyGYR4SZUPedaiI67F/sFKE744yHbYaVYFzXYzuspYI
O4/UpX1RVA0H3UYZNuaFyJa6Bt6l3QClmqSG8/wy9hlcsk64UAPM4KG53OAc
3NqnW+Kx+BOE2La4a/VnoojvaviGVQsRc2t66NOpuPSVqDsmqg5iFy3UHoi4
qDlY1f+PCYHODA1aA4uLfxs8kZuYEfAKunA+j87FKV85w3MXAeaVF92sXdF4
56FXZIEVgU01A+b3t0Rhxu2Zd5aOBP5UXS5qUY9EWqOl+YkAAr+GMeKHOzmo
ENYl/ZZJwMi3qkjDmYMzT4aL//qWACNznuvOY+OIHu13nRwCOrFPcc+J49iU
7ftBkJAAf8KzTcs2COO/WSibLyHQxhDtHR9i4iLPtnt78/u/fLmbwxUflNaF
zHu2EUgZHNXmpHpj71wGPRoJaPbNf0YOe2H9qQFO620CjxQB34VKXZAbGi/z
7yXwau3YvqTcA8gRFxsnDxBQO+yxUcByQJ+xOyAeJiCNaNhfMfUxWh3blDU7
RsBHwJWfPb4bGSKo1ZcSkIil6w/NbEPdwfB++0kCdk7J/MLXH+KKQZ78xDQB
lf8369vEELwm8C93lQ4o
         "]]},
       Annotation[#, "Charting`Private`Tag$418788#2"]& ], 
      TagBox[
       {GrayLevel[0], Thickness[Large], Opacity[1.], FaceForm[Opacity[0.3]], 
        LineBox[CompressedData["
1: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
         "]], LineBox[CompressedData["
1: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
         "]]},
       Annotation[#, "Charting`Private`Tag$418788#3"]& ], {}}, {}}, 
    {Arrowheads[
     0.025], {ArrowBox[{{-0.1, -0.07}, {-0.1, -0.07}}], 
      ArrowBox[{{-0.1, -0.05600000000000001}, {-0.10252649006622518`, \
-0.05600000000000001}}], 
      ArrowBox[{{-0.1, -0.042}, {-0.10505298013245033`, -0.042}}], 
      ArrowBox[{{-0.1, -0.027999999999999997`}, {-0.1075794701986755, \
-0.027999999999999997`}}], 
      ArrowBox[{{-0.1, -0.013999999999999999`}, {-0.11010596026490067`, \
-0.013999999999999999`}}], ArrowBox[{{-0.1, 0.}, {-0.1, 0.}}], 
      ArrowBox[{{-0.1, 0.014000000000000012`}, {-0.11410596026490066`, 
       0.014000000000000012`}}], 
      ArrowBox[{{-0.1, 0.02800000000000001}, {-0.11557947019867551`, 
       0.02800000000000001}}], 
      ArrowBox[{{-0.1, 0.04200000000000001}, {-0.11705298013245033`, 
       0.04200000000000001}}], 
      ArrowBox[{{-0.1, 0.05600000000000002}, {-0.11852649006622518`, 
       0.05600000000000002}}], 
      ArrowBox[{{-0.1, 0.07}, {-0.12000000000000001`, 0.07}}]}, {
      ArrowBox[{{0, -0.07}, {0., -0.07}}], 
      ArrowBox[{{
        0, -0.05600000000000001}, {-0.021901348314606738`, \
-0.05600000000000001}}], 
      ArrowBox[{{0, -0.042}, {-0.03810202247191012, -0.042}}], 
      ArrowBox[{{
        0, -0.027999999999999997`}, {-0.04860202247191013, \
-0.027999999999999997`}}], 
      ArrowBox[{{
        0, -0.013999999999999999`}, {-0.053401348314606745`, \
-0.013999999999999999`}}], ArrowBox[{{0, 0.}, {-0.05250000000000001, 0.}}], 
      ArrowBox[{{0, 0.014000000000000012`}, {-0.04864954128440368, 
        0.014000000000000012`}}], 
      ArrowBox[{{0, 0.02800000000000001}, {-0.04147431192660551, 
        0.02800000000000001}}], 
      ArrowBox[{{0, 0.04200000000000001}, {-0.03097431192660551, 
        0.04200000000000001}}], 
      ArrowBox[{{0, 0.05600000000000002}, {-0.01714954128440365, 
        0.05600000000000002}}], ArrowBox[{{0, 0.07}, {0., 0.07}}]}, {
      ArrowBox[{{0.1, -0.07}, {0.1, -0.07}}], 
      ArrowBox[{{0.1, -0.05600000000000001}, {
       0.0755721616191681, -0.05600000000000001}}], 
      ArrowBox[{{0.1, -0.042}, {0.05684499739563955, -0.042}}], 
      ArrowBox[{{0.1, -0.027999999999999997`}, {
       0.04381850732941438, -0.027999999999999997`}}], 
      ArrowBox[{{0.1, -0.013999999999999999`}, {
       0.03649269142049259, -0.013999999999999999`}}], 
      ArrowBox[{{0.1, 0.}, {0.03486754966887416, 0.}}], 
      ArrowBox[{{0.1, 0.014000000000000012`}, {0.03724449845069566, 
       0.014000000000000012`}}], 
      ArrowBox[{{0.1, 0.02800000000000001}, {0.042946217874719, 
       0.02800000000000001}}], 
      ArrowBox[{{0.1, 0.04200000000000001}, {0.05197270794094416, 
       0.04200000000000001}}], 
      ArrowBox[{{0.1, 0.05600000000000002}, {0.06432396864937118, 
       0.05600000000000002}}], ArrowBox[{{0.1, 0.07}, {0.08, 0.07}}]}, 
     {GrayLevel[0], LineBox[{{-0.1, -0.07}, {-0.1, 0.07}}]}, 
     {GrayLevel[0], LineBox[{{0.1, -0.07}, {0.1, 0.07}}]}}},
   Axes->{True, True},
   AxesLabel->{None, None},
   AxesOrigin->{0, 0},
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
   PlotRange->{{-0.12000000000000001`, 0.1}, {-0.07, 0.07}},
   PlotRangeClipping->True,
   PlotRangePadding->{{
      Scaled[0.05], 
      Scaled[0.05]}, {
      Scaled[0.05], 
      Scaled[0.05]}},
   Ticks->{Automatic, Automatic}],
  DynamicModuleValues:>{}]], "Output",
 CellChangeTimes->{3.88817991638763*^9, 3.888180587802272*^9},
 CellLabel->
  "Out[817]=",ExpressionUUID->"bf2b607a-6cd8-4489-99a7-ad1b75f91c6c"]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"mu1gtmu2", " ", "=", 
  RowBox[{"DynamicModule", "[", 
   RowBox[{
    RowBox[{"{", 
     RowBox[{
      RowBox[{"h1", "=", "0.07`"}], ",", 
      RowBox[{"h2", "=", "0.07`"}], ",", 
      RowBox[{"mu1", "=", "0.001526`4."}], ",", 
      RowBox[{"mu2", "=", "0.0008900000000000001`2."}], ",", 
      RowBox[{"v1", "=", "0"}], ",", 
      RowBox[{"v2", "=", 
       RowBox[{"-", "0.02`"}]}], ",", 
      RowBox[{"vp", "=", "0.5`"}]}], "}"}], ",", 
    RowBox[{"Module", "[", 
     RowBox[{
      RowBox[{"{", 
       RowBox[{
       "f1$", ",", "f2$", ",", "f3$", ",", "a1$", ",", "a2$", ",", "a3$", ",",
         "p$", ",", "t1$", ",", "t2$", ",", "t3$", ",", "s1$", ",", "s2$", 
        ",", "s3$"}], "}"}], ",", 
      RowBox[{
       RowBox[{
        RowBox[{"f1$", "[", 
         RowBox[{"y$_", ",", "w$_"}], "]"}], ":=", 
        RowBox[{"uNoPressureGrad", "[", 
         RowBox[{
         "y$", ",", "mu1", ",", "mu2", ",", "h1", ",", "h2", ",", "v1", ",", 
          "v2"}], "]"}]}], ";", 
       RowBox[{
        RowBox[{"f2$", "[", 
         RowBox[{"y$_", ",", "w$_"}], "]"}], ":=", 
        RowBox[{"uNoShear", "[", 
         RowBox[{"y$", ",", 
          RowBox[{
           FractionBox["3", "2"], " ", "w$", " ", 
           RowBox[{"(", 
            RowBox[{
             FractionBox["mu1", "h1"], "+", 
             FractionBox["mu2", "h2"]}], ")"}]}], ",", "mu1", ",", "mu2", ",",
           "h1", ",", "h2"}], "]"}]}], ";", 
       RowBox[{
        RowBox[{"f3$", "[", 
         RowBox[{"y$_", ",", "w$_"}], "]"}], ":=", 
        RowBox[{"uComposite", "[", 
         RowBox[{"y$", ",", 
          RowBox[{
           FractionBox["3", "2"], " ", "w$", " ", 
           RowBox[{"(", 
            RowBox[{
             FractionBox["mu1", "h1"], "+", 
             FractionBox["mu2", "h2"]}], ")"}]}], ",", "mu1", ",", "mu2", ",",
           "h1", ",", "h2", ",", "v1", ",", "v2"}], "]"}]}], ";", 
       RowBox[{"s1$", "=", 
        RowBox[{"-", "0.1`"}]}], ";", 
       RowBox[{"s2$", "=", "0"}], ";", 
       RowBox[{"s3$", "=", "0.1`"}], ";", 
       RowBox[{"p$", "=", 
        RowBox[{"ParametricPlot", "[", 
         RowBox[{
          RowBox[{"{", 
           RowBox[{
            RowBox[{"{", 
             RowBox[{
              RowBox[{"s1$", "+", 
               RowBox[{"f1$", "[", 
                RowBox[{"r", ",", "vp"}], "]"}]}], ",", "r"}], "}"}], ",", 
            RowBox[{"{", 
             RowBox[{
              RowBox[{"s2$", "+", 
               RowBox[{"f2$", "[", 
                RowBox[{"r", ",", "vp"}], "]"}]}], ",", "r"}], "}"}], ",", 
            RowBox[{"{", 
             RowBox[{
              RowBox[{"s3$", "+", 
               RowBox[{"f3$", "[", 
                RowBox[{"r", ",", "vp"}], "]"}]}], ",", "r"}], "}"}]}], "}"}],
           ",", 
          RowBox[{"{", 
           RowBox[{"r", ",", 
            RowBox[{"-", "h1"}], ",", "h2"}], "}"}], ",", 
          RowBox[{"PlotStyle", "\[Rule]", 
           RowBox[{"Directive", "[", 
            RowBox[{"Black", ",", "Thick"}], "]"}]}]}], "]"}]}], ";", 
       RowBox[{"t1$", "=", 
        RowBox[{"Table", "[", 
         RowBox[{
          RowBox[{"Arrow", "[", 
           RowBox[{"{", 
            RowBox[{
             RowBox[{"{", 
              RowBox[{"s1$", ",", "i"}], "}"}], ",", 
             RowBox[{"{", 
              RowBox[{
               RowBox[{"s1$", "+", 
                RowBox[{"f1$", "[", 
                 RowBox[{"i", ",", "vp"}], "]"}]}], ",", "i"}], "}"}]}], 
            "}"}], "]"}], ",", 
          RowBox[{"{", 
           RowBox[{"i", ",", 
            RowBox[{"-", "h1"}], ",", "h2", ",", 
            FractionBox[
             RowBox[{"h2", "+", "h1"}], "10"]}], "}"}]}], "]"}]}], ";", 
       RowBox[{"t2$", "=", 
        RowBox[{"Table", "[", 
         RowBox[{
          RowBox[{"Arrow", "[", 
           RowBox[{"{", 
            RowBox[{
             RowBox[{"{", 
              RowBox[{"s2$", ",", "i"}], "}"}], ",", 
             RowBox[{"{", 
              RowBox[{
               RowBox[{"s2$", "+", 
                RowBox[{"f2$", "[", 
                 RowBox[{"i", ",", "vp"}], "]"}]}], ",", "i"}], "}"}]}], 
            "}"}], "]"}], ",", 
          RowBox[{"{", 
           RowBox[{"i", ",", 
            RowBox[{"-", "h1"}], ",", "h2", ",", 
            FractionBox[
             RowBox[{"h2", "+", "h1"}], "10"]}], "}"}]}], "]"}]}], ";", 
       RowBox[{"t3$", "=", 
        RowBox[{"Table", "[", 
         RowBox[{
          RowBox[{"Arrow", "[", 
           RowBox[{"{", 
            RowBox[{
             RowBox[{"{", 
              RowBox[{"s3$", ",", "i"}], "}"}], ",", 
             RowBox[{"{", 
              RowBox[{
               RowBox[{"s3$", "+", 
                RowBox[{"f3$", "[", 
                 RowBox[{"i", ",", "vp"}], "]"}]}], ",", "i"}], "}"}]}], 
            "}"}], "]"}], ",", 
          RowBox[{"{", 
           RowBox[{"i", ",", 
            RowBox[{"-", "h1"}], ",", "h2", ",", 
            FractionBox[
             RowBox[{"h2", "+", "h1"}], "10"]}], "}"}]}], "]"}]}], ";", 
       RowBox[{"Show", "[", 
        RowBox[{"{", 
         RowBox[{"p$", ",", 
          RowBox[{"Graphics", "[", 
           RowBox[{"{", 
            RowBox[{
             RowBox[{"Arrowheads", "[", "0.025`", "]"}], ",", "t1$", ",", 
             "t2$", ",", "t3$", ",", "green", ",", 
             RowBox[{"Line", "[", 
              RowBox[{"{", 
               RowBox[{
                RowBox[{"{", 
                 RowBox[{"s1$", ",", 
                  RowBox[{"-", "h1"}]}], "}"}], ",", 
                RowBox[{"{", 
                 RowBox[{"s1$", ",", "h2"}], "}"}]}], "}"}], "]"}], ",", 
             "red", ",", 
             RowBox[{"Line", "[", 
              RowBox[{"{", 
               RowBox[{
                RowBox[{"{", 
                 RowBox[{"s3$", ",", 
                  RowBox[{"-", "h1"}]}], "}"}], ",", 
                RowBox[{"{", 
                 RowBox[{"s3$", ",", "h2"}], "}"}]}], "}"}], "]"}]}], "}"}], 
           "]"}]}], "}"}], "]"}]}]}], "]"}]}], "]"}]}]], "Input",
 GeneratedCell->False,
 CellAutoOverwrite->False,
 CellChangeTimes->{
  3.888179880947012*^9, {3.888179921383069*^9, 3.888179926421896*^9}, {
   3.8881805912661333`*^9, 3.8881805934567747`*^9}},
 CellLabel->
  "In[818]:=",ExpressionUUID->"4b0532e1-a0d5-44de-9af0-3c591ae2e3c5"],

Cell[BoxData[
 DynamicModuleBox[{$CellContext`h1$$ = 0.07, $CellContext`h2$$ = 
  0.07, $CellContext`mu1$$ = 0.001526`4., $CellContext`mu2$$ = 
  0.0008900000000000001`2., $CellContext`v1$$ = 
  0, $CellContext`v2$$ = -0.02, $CellContext`vp$$ = 0.5}, 
  GraphicsBox[{{{{}, {}, 
      TagBox[
       {GrayLevel[0], Thickness[Large], Opacity[1.], FaceForm[Opacity[0.3]], 
        LineBox[CompressedData["
1:eJwVz38wlHkABnBXTaV1ro7W0ba1qQ6DO064HFmiwzHV1LpBrF+Lq+S1GSeW
0pq52yubbuqyhPxKsc6WX+/7dZ5wk+5OuqzIxdpullWWaaa404/r3p6ZZ575
/PkIEo7tT15mZma2k+27VZW+Cw3Tvk5+0awGjc35h6dYX/9nprt1RgPSl+jr
pqKRetk2zjClwficy+M7rA0zJyoD9RrwA3od/i2jMV7gu3nZAw2qnz7tEFXQ
uKvuFRR0a3Dd54sRqxoazeZ3t+aUaMBM6D4sbqJB9Tx2Ouqlgal6fbtdDw1O
rMtnnxxvwb08n67QYRrSlFvG3tyfIVfWp9gZadR8TMVEcJsRZr/ct/AVjTdC
yW9nzzeh74+IrLOWDPIHHa+qHRoRvvDD6Kf2DBzb3GSnqq6hIdJyUurF4GqL
PDhvUwPaBgtCokIZhPPrT0Z21kN7+++Jh7EMNk5zbk6716FW6/HgJcXAerO/
SNRfgyDbAapLzkCXDpMpoRpLkwe8uaUMhmxO53rpqxBLBuKtmhiMJzst/jpf
gWEbz7aGWwxS945OFerLwFMb1BPDDFRJdl3F+kvgRhaatxsZbDj0UhptfRGC
wnXK7a8ZPDNP5J3j/AhdjzJ75wcE1mWp9UWe59BU+Pb7aXsC25454e0QBb7K
axW6exMcrPRcsTFQjgrF1zGCMALxmUyr2T0yvGc3X9UQR5DcqNL72FAocT4T
tsB6u90Tt7YnGdiyy2lRKCYwfud12rUrAwFJkrBHrNMkw9sE8RmQN+sW3k8g
+CuAN2IhOoaVgfdCpUkEs67LZ6/IjsDiSMsL3zQCi1X3rQcGJCjPj6hUsC42
HO3opiRwLjGFjLJe27smSsOVILzdoTLjG/aPbHflRXEyis2uhNQcJuA973CM
f5GIdRdKKlanE7hMVvgtbogHtzvzS20mQXn62J/+IyIopuoovpRgTWunkrYX
4Y3FmCqNdfbSTxHu1EEYonfNvWW9Xy4asLc4gJtLnPPOWQTmKm3/yoB92Luj
7lFRNsGcokxWGr0HfTEPV9xnfWd91CvFYhC85BxX3rcEtVUf5eSV7AZfS528
wTqq/cLxuH4hTBl+2yZzCJR9m0ZDJd4QX6IinE4QBI+VD7mU78AwarOzWL+e
tx1cO+QOYsn5nZNLoPVwUKhzneDq6fdcxNpfvOWU1LgV1YcoXjXraJvPn2XW
88Etqg2aY+2Z7qL7T2aFYC1+EeQR3LjmYRhPWYX/Adln+Io=
         "]], LineBox[CompressedData["
1:eJwVx39Q03Ucx/GNC6kJeAfIr7pxjANEkUrQA8XeBzqCS3EoP8QfSBRNQ49f
HRYi4jVMmMBqgJP47fHTYvsI1OD7/X7ekLEuBokINEzt+KEhEv4YHA0hWn+8
7vl6uCelHky24PF4geb9X+/RXHYph8GbLQHT96VW0O7vMWify+Ct1HVU5CWC
jZK8CKc8Bq0mbNPzdwWA4fLOUKGMwRYXZf+OMDEkLrf5+15hcHl7zNkSfQyo
H4sstGZ/fusQG1wUC6vD5UN7ihhclBzkz0bGQcWN3DNHixl8nnJAvnf4MIwc
i2wqVDD4qC6ixmQ4CmH4t+uTUgZn1tVMvWtMhK0yX4vGKgZHMpTrK3lSWLZp
HXJTMxjjSbdqi9JBuZJJuNsMzqf4L10ez4GmQOkpJyODlc9D1+7LZRCor3yq
38jiwu/YGV9cCP2BdWTzDhbjzl2MbnVQwJjxt0hxPIuJsRUPUKiEiQL924Js
Fl33O+Y7LJZBSpbgD58KFv1cV8RvcipI1WQct+RYnN8W79jd+y1k9rV4yB+w
eELqYqn6phpeegt6B3gc0sxmvtVQLaQlB9Vr3Tls6F0smQiuh9Om1v1rIRx2
LS9tLqu/DlP3xEP8ZA6vj3cOlno1wJGr6vK2fA6TwxrW2hWN8EFdaIBTC4er
hyVBbi7N0M13rryn5/CnWM2FjypaYNNu9v3wOQ5PTIbE/MK/AXa6gv70DRTv
2pdsO/vVd/DKx+tr8TsU3e7a1IQZv4ek6ddEn0koqs6HOD+LU8PeOevChEyK
C5+oBtLPaMDz9tR2o5Li62PNI6/cCXwc3a2RlVL8x/6Oyd2TQP24YotjGcW/
okzC8E0EhNO73YPKKeoGI06V+hFwNl21vqCiKOubXfXdRUDgsW9KUEWR3+nr
nRBN4FlWh0LUSHFZqfmi5xIBv5XC9R1mz94xVD8uIHD64oeXxE0Uxzfwf7Yu
IjAjt8052UxRK4+yjVcSmKg9KW1rpZj15cv6FzUERvrfem+nmqIxI2BA1EXA
TmLU6s2e1Bx7Ec4SkIz+6n9cQ3F4XuaYigQG/8zyySMUb346msj0EdAtDDno
2immJWUtHhomYJndVBLXQTGxtto1e5TAnrXzgidmH3iog1oDgZ43tvCsf6Do
d8SpcO4hgX+L+eeqzBaqQG03SSDYwbDo9yNFmzHpSOAjAtnX2tJ6zF6xV5gS
Zgh0CfOfRmkpzkVpzY/Af4BM3DQ=
         "]]},
       Annotation[#, "Charting`Private`Tag$420432#1"]& ], 
      TagBox[
       {GrayLevel[0], Thickness[Large], Opacity[1.], FaceForm[Opacity[0.3]], 
        LineBox[CompressedData["
1:eJwBMQPO/CFib1JlAgAAADIAAAACAAAAAAAAAAAAAADsUbgeheuxvy2EO0Cw
PQ6/qvfovrTosb+G3R34ljsev2idGV/k5bG/OJLiZ2Q3Lr/k6HqfQ+Cxv/T3
a0f/Lj6/3H89IALVsb9Ww34GNR5Ov82twiF/vrG/W1ukhKD8Xb+uCc0keZGx
vyyL74B3uW2/ccHhKm03sb+ZQSbhwWF+vwteLTMvdLC/fKTzrnwohr9zZ8Dn
wnuvvxVaMBJNuoy/oydxXE4Wrr9jqW8678eRv/1BZsmNkqy/8+4OZTvVlL9+
zimnrSirv7li45Wr/Ze/KbUxfYGgqb+kflNoo/Cav6ewhEZ8H6i/55buAUeO
nb9NHqaAV7imv7OwzLFWH6C/HeYLs+Yypb+9iqrs806hvxQgQFZWx6O/FiY8
Rf1nor/ebr/s7GKiv/hxu+lRhqO/0heDezfgoL83NvtJCYCkv9xlKvbE7p6/
FDrsH7B7pb9oUNflguCbv0664aV6X6a/mmQavI7gmL/fvB8vuSKnvxtd+nNb
FJa/g14Mg7njp7/wCWMckAuTv9Pj6IRAhqi/FJtopoU2kL9EeeaYKSOpvxnB
7UHGSYq/edL/xMmpqb9VnzYEHUOEvxbZlbObq6m/8KlMZqAshL9m7x+WbK2p
v4y0YsgjFoS/KUsQNwuxqb/CyY6MKumDvy6/Yeg7uKm/MPTmFDiPg781mccI
a8apvwxJlyVT24K/MBWfQADiqb/C8vdGiXOBv+YsfYwGFqq/YIxyE+tHfb9L
jXQDtxeqv9wsp1YoF32/rL5UP2YZqr9YzduZZeZ8v2aUzwXBHKq/UA5FIOCE
fL+5C6/NZyOqv0CQFy3VwXu/3SkVSXowqr8hlLxGvzt6vxckfu6ySaq/4psG
epMvd79WEMPzcniqv2WrmuA7F3G/dbpIOL15qr8mGukxtelwv4wAImoGe6q/
54g3gy68cL+nYM+VlX2qv2lm1CUhYXC/g3AVDaeCqr/aQhzWDFZvv+DOTnuW
jKq/6y4D66F9bL8thnZWp5+qvwwH0RTMzGa/Et+ZB5HCqr+cbtnQQNZWvyZf
i/5c4Kq/cro05NxnB785P6fM
         "]], LineBox[CompressedData["
1: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
         "]]},
       Annotation[#, "Charting`Private`Tag$420432#2"]& ], 
      TagBox[
       {GrayLevel[0], Thickness[Large], Opacity[1.], FaceForm[Opacity[0.3]], 
        LineBox[CompressedData["
1:eJwBEQLu/SFib1JlAgAAACAAAAACAAAAmpmZmZmZuT/sUbgeheuxvxl9rBGG
lbk/qvfovrTosb8CaBEQc5G5P2idGV/k5bG/D1TRn06JuT/k6HqfQ+Cxvx6F
KQsMebk/3H89IALVsb8LSzsRoFi5P82twiF/vrG/HGbk2iwYuT+uCc0keZGx
vyDZTGTZmLg/ccHhKm03sb8uLAtf/Iu3PwteLTMvdLC/1UEZ4diZtj9zZ8Dn
wnuvv22YRinPtLU/oydxXE4Wrr+QJZQntcW0P/1BZsmNkqy/tKug5Fbvsz9+
zimnrSirvzllLnaXELM/KbUxfYGgqb/j+w96lj+yP6ewhEZ8H6i/xr43KUeF
sT9NHqaAV7imvwcUavyuxLA/HeYLs+Yypb8yGqlnvhmwPxQgQFZWx6O/xw2S
PfD0rj/ebr/s7GKiv380AQzora0/0heDezfgoL92udFYNo6sP9xlKvbE7p6/
rPwN3GRpqz9oUNflguCbv+JRu2QwXao/mmQavI7gmL9e+0EkQXSpPxtd+nNb
FJa/pAM3xV+KqD/wCWMckAuTv9r+XfKwwac/FJtopoU2kL/L54C5b/umPxnB
7UHGSYq/V5v9HThMpj9VnzYEHUOEv0YkOCEduqU/YIxyE+tHfb8QIscwoi6l
P2WrmuA7F3G/KgvnzS6+pD+cbtnQQNZWv7ZgW+zFjaQ/sqQ05NxnB7+4BAUV

         "]], LineBox[CompressedData["
1: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
4+CsxL0dn4O5GLQskb88wMH/AOzf7cA=
         "]]},
       Annotation[#, "Charting`Private`Tag$420432#3"]& ], {}}, {}}, 
    {Arrowheads[
     0.025], {ArrowBox[{{-0.1, -0.07}, {-0.1, -0.07}}], 
      ArrowBox[{{-0.1, -0.05600000000000001}, {-0.10147350993377484`, \
-0.05600000000000001}}], 
      ArrowBox[{{-0.1, -0.042}, {-0.10294701986754967`, -0.042}}], 
      ArrowBox[{{-0.1, -0.027999999999999997`}, {-0.1044205298013245, \
-0.027999999999999997`}}], 
      ArrowBox[{{-0.1, -0.013999999999999999`}, {-0.10589403973509934`, \
-0.013999999999999999`}}], ArrowBox[{{-0.1, 0.}, {-0.1, 0.}}], 
      ArrowBox[{{-0.1, 0.014000000000000012`}, {-0.10989403973509934`, 
       0.014000000000000012`}}], 
      ArrowBox[{{-0.1, 0.02800000000000001}, {-0.11242052980132451`, 
       0.02800000000000001}}], 
      ArrowBox[{{-0.1, 0.04200000000000001}, {-0.11494701986754968`, 
       0.04200000000000001}}], 
      ArrowBox[{{-0.1, 0.05600000000000002}, {-0.11747350993377484`, 
       0.05600000000000002}}], 
      ArrowBox[{{-0.1, 0.07}, {-0.12000000000000001`, 0.07}}]}, {
      ArrowBox[{{0, -0.07}, {0., -0.07}}], 
      ArrowBox[{{
        0, -0.05600000000000001}, {-0.017149541284403668`, \
-0.05600000000000001}}], 
      ArrowBox[{{0, -0.042}, {-0.030974311926605512`, -0.042}}], 
      ArrowBox[{{
        0, -0.027999999999999997`}, {-0.041474311926605514`, \
-0.027999999999999997`}}], 
      ArrowBox[{{
        0, -0.013999999999999999`}, {-0.04864954128440368, \
-0.013999999999999999`}}], ArrowBox[{{0, 0.}, {-0.05250000000000001, 0.}}], 
      ArrowBox[{{0, 0.014000000000000012`}, {-0.05340134831460675, 
        0.014000000000000012`}}], 
      ArrowBox[{{0, 0.02800000000000001}, {-0.04860202247191011, 
        0.02800000000000001}}], 
      ArrowBox[{{0, 0.04200000000000001}, {-0.03810202247191011, 
        0.04200000000000001}}], 
      ArrowBox[{{0, 0.05600000000000002}, {-0.02190134831460672, 
        0.05600000000000002}}], ArrowBox[{{0, 0.07}, {0., 0.07}}]}, {
      ArrowBox[{{0.1, -0.07}, {0.1, -0.07}}], 
      ArrowBox[{{0.1, -0.05600000000000001}, {
       0.0813769487818215, -0.05600000000000001}}], 
      ArrowBox[{{0.1, -0.042}, {0.06607866820584482, -0.042}}], 
      ArrowBox[{{0.1, -0.027999999999999997`}, {
       0.054105158272069985`, -0.027999999999999997`}}], 
      ArrowBox[{{0.1, -0.013999999999999999`}, {
       0.04545641898049699, -0.013999999999999999`}}], 
      ArrowBox[{{0.1, 0.}, {0.04013245033112582, 0.}}], 
      ArrowBox[{{0.1, 0.014000000000000012`}, {0.03670461195029391, 
       0.014000000000000012`}}], 
      ArrowBox[{{0.1, 0.02800000000000001}, {0.03897744772676538, 
       0.02800000000000001}}], 
      ArrowBox[{{0.1, 0.04200000000000001}, {0.04695095766054022, 
       0.04200000000000001}}], 
      ArrowBox[{{0.1, 0.05600000000000002}, {0.06062514175161845, 
       0.05600000000000002}}], ArrowBox[{{0.1, 0.07}, {0.08, 0.07}}]}, 
     {GrayLevel[0], LineBox[{{-0.1, -0.07}, {-0.1, 0.07}}]}, 
     {GrayLevel[0], LineBox[{{0.1, -0.07}, {0.1, 0.07}}]}}},
   Axes->{True, True},
   AxesLabel->{None, None},
   AxesOrigin->{0, 0},
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
   PlotRange->{{-0.12000000000000001`, 0.1}, {-0.07, 0.07}},
   PlotRangeClipping->True,
   PlotRangePadding->{{
      Scaled[0.05], 
      Scaled[0.05]}, {
      Scaled[0.05], 
      Scaled[0.05]}},
   Ticks->{Automatic, Automatic}],
  DynamicModuleValues:>{}]], "Output",
 CellChangeTimes->{3.888179928324409*^9, 3.8881805952183247`*^9},
 CellLabel->
  "Out[818]=",ExpressionUUID->"f9bac356-f348-44b8-916f-bf9199082c68"]
}, Open  ]],

Cell[CellGroupData[{

Cell["\<\
Scratch calculations and functions to generate .avi files (minimized)\
\>", "Section",
 CellChangeTimes->{{3.541927161076065*^9, 
  3.5419272269898357`*^9}},ExpressionUUID->"a3b402cc-f7ad-473d-8441-\
3c2a2f7c094e"],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{
  RowBox[{"(*", 
   StyleBox[
    RowBox[{
    "Calculations", " ", "to", " ", "generate", " ", "a", " ", "table", " ", 
     "of", " ", "images", " ", "to", " ", "save", " ", 
     RowBox[{"to", ".", "avi"}]}], "Subsection"], "\n", "*)"}], 
  "\[IndentingNewLine]", 
  RowBox[{"(*", " ", 
   RowBox[{"Some", " ", "checks"}], " ", "*)"}], "\[IndentingNewLine]", 
  RowBox[{"(*", 
   RowBox[{
    RowBox[{"u1", "[", "0", "]"}], " ", "-", " ", 
    RowBox[{
     RowBox[{"u2", "[", "0", "]"}], "\[IndentingNewLine]", 
     RowBox[{"FullSimplify", "[", "%", "]"}]}]}], "*)"}], 
  "\[IndentingNewLine]", 
  RowBox[{"(*", 
   RowBox[{
    RowBox[{
     RowBox[{"FullSimplify", "[", 
      RowBox[{
       RowBox[{"mu1", " ", 
        RowBox[{
         RowBox[{"u1", "'"}], "[", "0", "]"}]}], " ", "-", " ", 
       RowBox[{"mu2", " ", 
        RowBox[{
         RowBox[{"u2", "'"}], "[", "0", "]"}]}]}], "]"}], 
     "\[IndentingNewLine]", 
     RowBox[{"u1", "[", 
      RowBox[{"-", "h1"}], "]"}], "\[IndentingNewLine]", 
     RowBox[{"u2", "[", "h2", "]"}], "\[IndentingNewLine]", 
     RowBox[{"Clear", "[", 
      RowBox[{"u1Avg", ",", " ", "u2Avg"}], "]"}], "\[IndentingNewLine]", 
     "u1Avg"}], " ", "=", " ", 
    RowBox[{
     RowBox[{
      RowBox[{"(", 
       RowBox[{"1", "/", "h1"}], ")"}], " ", 
      RowBox[{"Integrate", "[", 
       RowBox[{
        RowBox[{"u1", "[", "y", "]"}], ",", " ", 
        RowBox[{"{", 
         RowBox[{"y", ",", " ", 
          RowBox[{"-", "h1"}], ",", " ", "0"}], "}"}]}], "]"}], 
      "\[IndentingNewLine]", "u2Avg"}], " ", "=", " ", 
     RowBox[{
      RowBox[{
       RowBox[{"(", 
        RowBox[{"1", "/", "h2"}], ")"}], " ", 
       RowBox[{"Integrate", "[", 
        RowBox[{
         RowBox[{"u2", "[", "y", "]"}], ",", " ", 
         RowBox[{"{", 
          RowBox[{"y", ",", " ", "0", ",", " ", "h2"}], "}"}]}], "]"}], 
       "\[IndentingNewLine]", 
       RowBox[{"Clear", "[", 
        RowBox[{"p1", ",", " ", "p2"}], "]"}], "\[IndentingNewLine]", "p1"}], 
      " ", "=", " ", 
      RowBox[{
       RowBox[{
        RowBox[{"ParametricPlot", "[", 
         RowBox[{
          RowBox[{"{", 
           RowBox[{
            RowBox[{"u1", "[", "y", "]"}], ",", " ", "y"}], "}"}], ",", " ", 
          RowBox[{"{", 
           RowBox[{"y", ",", 
            RowBox[{"-", "h1"}], ",", "0"}], "}"}], ",", " ", 
          RowBox[{"PlotStyle", " ", "\[Rule]", " ", "Black"}]}], "]"}], 
        "\[IndentingNewLine]", "p2"}], " ", "=", " ", 
       RowBox[{"ParametricPlot", "[", 
        RowBox[{
         RowBox[{"{", 
          RowBox[{
           RowBox[{"u2", "[", "y", "]"}], ",", " ", "y"}], "}"}], ",", " ", 
         RowBox[{"{", 
          RowBox[{"y", ",", "0", ",", " ", "h2"}], "}"}], ",", " ", 
         RowBox[{"PlotStyle", " ", "\[Rule]", " ", "Black"}]}], "]"}]}]}]}]}],
    "\[IndentingNewLine]", "*)"}], "\[IndentingNewLine]", 
  RowBox[{
   RowBox[{"Clear", "[", 
    RowBox[{"gg", ",", " ", "vv", ",", " ", "vp", ",", " ", "a"}], "]"}], 
   "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{"vv", " ", ":=", " ", 
     RowBox[{"5", " ", 
      RowBox[{"Abs", "[", "vPressure", "]"}]}]}], " ", ";"}], 
   "\[IndentingNewLine]", 
   RowBox[{"a", "  ", "=", " ", 
    RowBox[{"Table", "[", "\[IndentingNewLine]", 
     RowBox[{
      RowBox[{"Show", "[", 
       RowBox[{"Module", "[", 
        RowBox[{
         RowBox[{"{", 
          RowBox[{
          "v1", ",", " ", "v2", ",", " ", "h1", ",", " ", "h2", ",", " ", 
           "mu1", ",", " ", "mu2", ",", " ", "f1", ",", " ", "f2", ",", " ", 
           "f3", ",", " ", "a1", ",", " ", "a2", ",", " ", "a3", ",", " ", 
           "p", ",", " ", "t1", ",", " ", "t2", ",", " ", "t3", ",", " ", 
           "s1", ",", " ", "s2", ",", " ", "s3"}], "}"}], ",", 
         "\[IndentingNewLine]", "\[IndentingNewLine]", 
         RowBox[{
          RowBox[{"v1", " ", ":=", " ", "0"}], " ", ";", 
          "\[IndentingNewLine]", 
          RowBox[{"v2", " ", ":=", " ", "v2d"}], " ", ";", 
          "\[IndentingNewLine]", "\[IndentingNewLine]", 
          RowBox[{"h1", " ", ":=", " ", 
           RowBox[{"Max", "[", 
            RowBox[{"{", 
             RowBox[{"h1d", ",", " ", "h2d"}], "}"}], "]"}]}], " ", ";", 
          "\[IndentingNewLine]", 
          RowBox[{"h2", " ", ":=", " ", 
           RowBox[{"Max", "[", 
            RowBox[{"{", 
             RowBox[{"h1d", ",", " ", "h2d"}], "}"}], "]"}]}], " ", ";", 
          "\[IndentingNewLine]", "\[IndentingNewLine]", 
          RowBox[{"mu2", " ", ":=", " ", "muDefMax"}], " ", ";", 
          "\[IndentingNewLine]", 
          RowBox[{"mu1", " ", ":=", " ", "muDefMin"}], " ", ";", 
          "\[IndentingNewLine]", "\[IndentingNewLine]", "\[IndentingNewLine]", 
          RowBox[{
           RowBox[{"f1", "[", 
            RowBox[{"y_", ",", " ", "w_"}], "]"}], " ", ":=", " ", 
           RowBox[{"uNoPressureGrad", "[", " ", 
            RowBox[{
            "y", ",", " ", "mu1", ",", " ", "mu2", ",", "  ", "h1", ",", " ", 
             "h2", ",", "  ", "v1", ",", " ", "v2"}], " ", "]"}]}], " ", ";", 
          "\[IndentingNewLine]", 
          RowBox[{
           RowBox[{"f2", "[", 
            RowBox[{"y_", ",", " ", "w_"}], "]"}], " ", ":=", " ", 
           RowBox[{"uNoShear", "[", 
            RowBox[{"y", ",", " ", 
             RowBox[{"3", " ", "w", "  ", 
              RowBox[{
               RowBox[{"(", 
                RowBox[{
                 RowBox[{"mu1", "/", "h1"}], " ", "+", " ", 
                 RowBox[{"mu2", "/", "h2"}]}], ")"}], "/", "2"}]}], ",", 
             "mu1", ",", " ", "mu2", ",", " ", "h1", ",", " ", "h2"}], 
            "]"}]}], " ", ";", "\[IndentingNewLine]", 
          RowBox[{
           RowBox[{"f3", "[", 
            RowBox[{"y_", ",", " ", "w_"}], "]"}], " ", ":=", " ", 
           RowBox[{"uComposite", "[", " ", 
            RowBox[{"y", ",", " ", 
             RowBox[{"3", " ", "w", "  ", 
              RowBox[{
               RowBox[{"(", 
                RowBox[{
                 RowBox[{"mu1", "/", "h1"}], " ", "+", " ", 
                 RowBox[{"mu2", "/", "h2"}]}], ")"}], "/", "2"}]}], ",", 
             "mu1", ",", " ", "mu2", ",", " ", "h1", ",", " ", "h2", ",", 
             "  ", "v1", ",", " ", "v2"}], "]"}]}], " ", ";", 
          "\[IndentingNewLine]", "\[IndentingNewLine]", 
          RowBox[{"s1", " ", "=", " ", 
           RowBox[{"-", "0.1"}]}], " ", ";", "\[IndentingNewLine]", 
          RowBox[{"s2", " ", "=", " ", "0"}], " ", ";", "\[IndentingNewLine]", 
          RowBox[{"s3", " ", "=", " ", "0.1"}], " ", ";", 
          "\[IndentingNewLine]", 
          RowBox[{"p", " ", "=", " ", 
           RowBox[{"ParametricPlot", "[", "\[IndentingNewLine]", 
            RowBox[{
             RowBox[{"{", "\[IndentingNewLine]", 
              RowBox[{
               RowBox[{"{", 
                RowBox[{
                 RowBox[{"s1", " ", "+", " ", 
                  RowBox[{"f1", "[", 
                   RowBox[{"r", ",", " ", "vp"}], "]"}]}], ",", " ", "r"}], 
                "}"}], ",", "\[IndentingNewLine]", 
               RowBox[{"{", 
                RowBox[{
                 RowBox[{"s2", " ", "+", " ", 
                  RowBox[{"f2", "[", 
                   RowBox[{"r", ",", " ", "vp"}], "]"}]}], ",", " ", "r"}], 
                "}"}], ",", "\[IndentingNewLine]", 
               RowBox[{"{", 
                RowBox[{
                 RowBox[{"s3", " ", "+", " ", 
                  RowBox[{"f3", "[", 
                   RowBox[{"r", ",", " ", "vp"}], "]"}]}], ",", " ", "r"}], 
                "}"}]}], "\[IndentingNewLine]", "}"}], "\[IndentingNewLine]", 
             ",", " ", 
             RowBox[{"{", 
              RowBox[{"r", ",", 
               RowBox[{"-", "h1"}], ",", "h2"}], "}"}], "\[IndentingNewLine]",
              ",", " ", 
             RowBox[{"PlotStyle", "\[Rule]", " ", "Thick"}]}], 
            RowBox[{"(*", 
             RowBox[{"Directive", "[", 
              RowBox[{"Black", ",", "Thick"}], "]"}], "*)"}], " ", "]"}]}], 
          "  ", ";", "\[IndentingNewLine]", "\[IndentingNewLine]", 
          RowBox[{"t1", " ", "=", " ", 
           RowBox[{"Table", "[", " ", 
            RowBox[{
             RowBox[{"Arrow", "[", 
              RowBox[{"{", 
               RowBox[{
                RowBox[{"{", 
                 RowBox[{"s1", ",", " ", "i"}], "}"}], ",", " ", 
                RowBox[{"{", 
                 RowBox[{
                  RowBox[{"s1", " ", "+", " ", 
                   RowBox[{"f1", "[", 
                    RowBox[{"i", ",", " ", "vp"}], "]"}]}], ",", " ", "i"}], 
                 "}"}]}], "}"}], "]"}], ",", " ", 
             RowBox[{"{", 
              RowBox[{"i", ",", " ", 
               RowBox[{"-", "h1"}], ",", " ", "h2", ",", " ", 
               RowBox[{
                RowBox[{"(", 
                 RowBox[{"h2", " ", "+", "h1"}], ")"}], "/", "10"}]}], 
              "}"}]}], "]"}]}], " ", ";", "\[IndentingNewLine]", 
          RowBox[{"t2", " ", "=", " ", 
           RowBox[{"Table", "[", " ", 
            RowBox[{
             RowBox[{"Arrow", "[", 
              RowBox[{"{", 
               RowBox[{
                RowBox[{"{", 
                 RowBox[{"s2", ",", " ", "i"}], "}"}], ",", " ", 
                RowBox[{"{", 
                 RowBox[{
                  RowBox[{"s2", " ", "+", " ", 
                   RowBox[{"f2", "[", 
                    RowBox[{"i", ",", " ", "vp"}], "]"}]}], ",", " ", "i"}], 
                 "}"}]}], "}"}], "]"}], ",", " ", 
             RowBox[{"{", 
              RowBox[{"i", ",", " ", 
               RowBox[{"-", "h1"}], ",", " ", "h2", ",", " ", 
               RowBox[{
                RowBox[{"(", 
                 RowBox[{"h2", " ", "+", "h1"}], ")"}], "/", "10"}]}], 
              "}"}]}], "]"}]}], " ", ";", "\[IndentingNewLine]", 
          RowBox[{"t3", " ", "=", " ", 
           RowBox[{"Table", "[", " ", 
            RowBox[{
             RowBox[{"Arrow", "[", 
              RowBox[{"{", 
               RowBox[{
                RowBox[{"{", 
                 RowBox[{"s3", ",", " ", "i"}], "}"}], ",", " ", 
                RowBox[{"{", 
                 RowBox[{
                  RowBox[{"s3", " ", "+", " ", 
                   RowBox[{"f3", "[", 
                    RowBox[{"i", ",", " ", "vp"}], "]"}]}], ",", " ", "i"}], 
                 "}"}]}], "}"}], "]"}], ",", " ", 
             RowBox[{"{", 
              RowBox[{"i", ",", " ", 
               RowBox[{"-", "h1"}], ",", " ", "h2", ",", " ", 
               RowBox[{
                RowBox[{"(", 
                 RowBox[{"h2", " ", "+", "h1"}], ")"}], "/", "10"}]}], 
              "}"}]}], "]"}]}], " ", ";", "\[IndentingNewLine]", 
          "\[IndentingNewLine]", 
          RowBox[{"{", 
           RowBox[{"p", ",", " ", 
            RowBox[{"Graphics", "[", " ", 
             RowBox[{"{", " ", 
              RowBox[{
               RowBox[{"Arrowheads", "[", ".015", "]"}], ",", " ", "t1", ",", 
               " ", "t2", ",", " ", "t3", " ", ",", "Green", ",", " ", 
               RowBox[{"Line", "[", 
                RowBox[{"{", 
                 RowBox[{
                  RowBox[{"{", 
                   RowBox[{"s1", ",", 
                    RowBox[{"-", "h1"}]}], "}"}], ",", " ", 
                  RowBox[{"{", 
                   RowBox[{"s1", ",", " ", "h2"}], "}"}]}], "}"}], "]"}], ",",
                " ", "Red", ",", " ", 
               RowBox[{"Line", "[", 
                RowBox[{"{", 
                 RowBox[{
                  RowBox[{"{", 
                   RowBox[{"s3", ",", 
                    RowBox[{"-", "h1"}]}], "}"}], ",", " ", 
                  RowBox[{"{", 
                   RowBox[{"s3", ",", " ", "h2"}], "}"}]}], "}"}], "]"}]}], 
              " ", "}"}], " ", "]"}]}], "}"}]}]}], " ", "\[IndentingNewLine]",
         "]"}], "\[IndentingNewLine]", "]"}], " ", "\[IndentingNewLine]", ",", 
      RowBox[{"{", 
       RowBox[{"vp", ",", " ", 
        RowBox[{"-", "vv"}], ",", "  ", "vv", ",", " ", 
        RowBox[{"10", " ", 
         RowBox[{"vv", "/", "80"}]}]}], "}"}]}], "]"}]}], " ", 
   "\[IndentingNewLine]", "\[IndentingNewLine]", "\n", "\[IndentingNewLine]", 
   "\[IndentingNewLine]", "\[IndentingNewLine]", "\n", 
   RowBox[{"(*", 
    StyleBox[
     RowBox[{"scratch", " ", "output", " ", "for", " ", 
      RowBox[{"formatting", "."}]}], "Subsection"], "*)"}], 
   "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{"uComposite", "[", 
     RowBox[{"y", ",", " ", "P", ",", 
      SubscriptBox["\[Mu]", "1"], ",", " ", 
      SubscriptBox["\[Mu]", "2"], ",", " ", 
      SubscriptBox["h", "1"], ",", " ", 
      SubscriptBox["h", "2"], ",", "  ", 
      SubscriptBox["v", "1"], ",", " ", 
      SubscriptBox["v", "2"]}], "]"}], " ", "//", " ", "TraditionalForm"}], 
   "\n", 
   TagBox[GridBox[{
      {"\[Piecewise]", GridBox[{
         {
          RowBox[{
           FractionBox[
            RowBox[{
             SubscriptBox["h", "1"], " ", 
             RowBox[{"(", 
              RowBox[{
               FractionBox["y", 
                SubscriptBox["h", "1"]], "+", "1"}], ")"}], " ", 
             RowBox[{"(", 
              RowBox[{
               FractionBox[
                RowBox[{
                 SubsuperscriptBox["h", "1", "2"], " ", "P"}], 
                RowBox[{"2", " ", 
                 SubscriptBox["\[Mu]", "1"]}]], "-", 
               FractionBox[
                RowBox[{
                 SubsuperscriptBox["h", "2", "2"], " ", "P"}], 
                RowBox[{"2", " ", 
                 SubscriptBox["\[Mu]", "2"]}]], "-", 
               SubscriptBox["v", "1"], "+", 
               SubscriptBox["v", "2"]}], ")"}]}], 
            RowBox[{
             SubscriptBox["\[Mu]", "1"], " ", 
             RowBox[{"(", 
              RowBox[{
               FractionBox[
                SubscriptBox["h", "1"], 
                SubscriptBox["\[Mu]", "1"]], "+", 
               FractionBox[
                SubscriptBox["h", "2"], 
                SubscriptBox["\[Mu]", "2"]]}], ")"}]}]], "+", 
           FractionBox[
            RowBox[{
             SubsuperscriptBox["h", "1", "2"], " ", "P", " ", 
             RowBox[{"(", 
              RowBox[{
               FractionBox[
                SuperscriptBox["y", "2"], 
                SubsuperscriptBox["h", "1", "2"]], "-", "1"}], ")"}]}], 
            RowBox[{"2", " ", 
             SubscriptBox["\[Mu]", "1"]}]], "+", 
           SubscriptBox["v", "1"]}], 
          RowBox[{"y", "<", "0"}]},
         {
          RowBox[{
           FractionBox[
            RowBox[{
             SubscriptBox["h", "2"], " ", 
             RowBox[{"(", 
              RowBox[{
               FractionBox["y", 
                SubscriptBox["h", "2"]], "-", "1"}], ")"}], " ", 
             RowBox[{"(", 
              RowBox[{
               FractionBox[
                RowBox[{
                 SubsuperscriptBox["h", "1", "2"], " ", "P"}], 
                RowBox[{"2", " ", 
                 SubscriptBox["\[Mu]", "1"]}]], "-", 
               FractionBox[
                RowBox[{
                 SubsuperscriptBox["h", "2", "2"], " ", "P"}], 
                RowBox[{"2", " ", 
                 SubscriptBox["\[Mu]", "2"]}]], "-", 
               SubscriptBox["v", "1"], "+", 
               SubscriptBox["v", "2"]}], ")"}]}], 
            RowBox[{
             SubscriptBox["\[Mu]", "2"], " ", 
             RowBox[{"(", 
              RowBox[{
               FractionBox[
                SubscriptBox["h", "1"], 
                SubscriptBox["\[Mu]", "1"]], "+", 
               FractionBox[
                SubscriptBox["h", "2"], 
                SubscriptBox["\[Mu]", "2"]]}], ")"}]}]], "+", 
           FractionBox[
            RowBox[{
             SubsuperscriptBox["h", "2", "2"], " ", "P", " ", 
             RowBox[{"(", 
              RowBox[{
               FractionBox[
                SuperscriptBox["y", "2"], 
                SubsuperscriptBox["h", "2", "2"]], "-", "1"}], ")"}]}], 
            RowBox[{"2", " ", 
             SubscriptBox["\[Mu]", "2"]}]], "+", 
           SubscriptBox["v", "2"]}], 
          RowBox[{"y", "\[GreaterEqual]", "0"}]}
        },
        AllowedDimensions->{2, Automatic},
        Editable->True,
        GridBoxAlignment->{
         "Columns" -> {{Left}}, "ColumnsIndexed" -> {}, 
          "Rows" -> {{Baseline}}, "RowsIndexed" -> {}},
        GridBoxItemSize->{
         "Columns" -> {{Automatic}}, "ColumnsIndexed" -> {}, "Rows" -> {{1.}},
           "RowsIndexed" -> {}},
        GridBoxSpacings->{"Columns" -> {
            Offset[0.27999999999999997`], {
             Offset[0.84]}, 
            Offset[0.27999999999999997`]}, "ColumnsIndexed" -> {}, "Rows" -> {
            Offset[0.2], {
             Offset[0.4]}, 
            Offset[0.2]}, "RowsIndexed" -> {}},
        Selectable->True]}
     },
     GridBoxAlignment->{
      "Columns" -> {{Left}}, "ColumnsIndexed" -> {}, "Rows" -> {{Baseline}}, 
       "RowsIndexed" -> {}},
     GridBoxItemSize->{
      "Columns" -> {{Automatic}}, "ColumnsIndexed" -> {}, "Rows" -> {{1.}}, 
       "RowsIndexed" -> {}},
     GridBoxSpacings->{"Columns" -> {
         Offset[0.27999999999999997`], {
          Offset[0.35]}, 
         Offset[0.27999999999999997`]}, "ColumnsIndexed" -> {}, "Rows" -> {
         Offset[0.2], {
          Offset[0.4]}, 
         Offset[0.2]}, "RowsIndexed" -> {}}],
    "Piecewise",
    DeleteWithContents->True,
    Editable->False,
    SelectWithContents->True,
    Selectable->False], "\n"}]}]], "Input",
 CellChangeTimes->{{3.541927295941779*^9, 3.5419273074874396`*^9}, {
   3.541927380139595*^9, 3.54192738949613*^9}, 3.541927451242662*^9, {
   3.5419288113824577`*^9, 3.541928821376029*^9}, 3.5422855776894617`*^9, {
   3.54228562294005*^9, 3.5422856512026663`*^9}, 3.5422857360785213`*^9, {
   3.5422858620707273`*^9, 3.542285870144189*^9}, {3.542413950911969*^9, 
   3.5424139510069747`*^9}, {3.5424140199109154`*^9, 
   3.5424140201279283`*^9}, {3.5424147057731447`*^9, 
   3.5424147066921973`*^9}, {3.888179805717016*^9, 3.888179808051264*^9}, {
   3.88817997734938*^9, 3.8881799823707542`*^9}},
 CellLabel->
  "In[809]:=",ExpressionUUID->"7a29a36d-35ae-4bf9-a0f3-ccfc615a8622"],

Cell[BoxData[
 RowBox[{"{", 
  RowBox[{
   GraphicsBox[{{{{}, {}, 
       TagBox[
        {RGBColor[0.368417, 0.506779, 0.709798], Thickness[Large], Opacity[
         1.], FaceForm[Opacity[0.3]], LineBox[CompressedData["
1:eJwVz31Q03UABnCi0pDlkbw53t8s4Hg53kWCY77gxYUJxLqg5K1NuuRlYgrC
QgTuOORNKGEbMEAYLARZ8rLf9o0HcbHRAfIWCJGtkzdvQwwKjxJqPnfPPff5
87FPSo9i6evp6R3T9dXyea9CQRsptSnSSLA8tMGz5FP4/sXaQM+aBF7aU/x6
nVPq6fFLyxKoQjb5TQIKS2tXhSfUEmw/Ca8T11NYzAu20/9FgiiPlw1UE4Wx
ziH7vAEJDB6ca5kXU+gyGHPKvilBltbxLl1GgXP/D9fUAAkmS+cEMb9RMDzn
7uN5qRuub8WOBu1RyDw/uDqUcxd6CzbKXBsZbr/H+eyMWReidmi8bIYMuwz2
SFnVHTRvjXTZJcnwzbhLW6dzB9KCugUFRTK49Hpx8xvFkM4/imK0y9DWXRiW
a9uO16InIsQqGSJsRNc+kYqgoP9pO6aRwXrF8N6KdyuK5Wo/AU0OE7tQJlN5
GyP3Dpkp3OR4nAatNqkZRTupY+0fyTFlXpAToG4Ew6JWFZAhxyLLdVvxrAFX
ijX869VypJydW76uFsAtIj/AuU8O/hcWpFxdC7V22TxrVg7Lz//JjDO5hYML
mQ8LduR4bpBsVWlYjfebJ34OtCAwEaSIivwrsdLPrO8IJqDfX2cMf1CCt51s
j2UlEMQI/d+wPlEIn6/6LDauESSUXjTWnOZi5r/LU/YtBKwOvjrInIPqYFZY
q87vWjz16n2agcicaJlzK8FqcUCBB8nA+LZns6eI4Ev2zBH7xAyo1tc4we0E
C8etZmnMdPz4a+w7n94h0Hi8rmniXkBrf8jZyh4C2v5Jk9FRNpL/dlMY9xKU
L6X2D3DYcPCxPFqjs9HQgViJGRvCrhe2DX26P9yTwlsJLPBauzc6pARWW/0u
iX8lo6zaoUJJCNx/bwjZtkzE1+n7xvcUBHVp8xOhs0yU91l35v1EcKBHWkE5
MiHa9S3VGya4slNzxpsTg7kbyeH6SoKoQuaoI+1jBLYPDr85QmDAn1buOx6J
XfVV0MYI1ksEXF7caZg6VzWU6awyjf23ZPsUPNLF3IPjBC2Nh7Nzb55E/O5c
kNFDgti+7y7FKxkYpPtJjScJKh7YzoWzj2I+4cOab3UOm6+bcq/zw2Zb8mXT
KYKXz+jjRlPecPCv8jWfJpj2dS7pzHFFEFdsXKtzaIJDfuaqE6IVg5uHZwji
zAOfXxTZ4ILho0mezv5p7o/3uMZweyJUben8g9h3afH8fvwPgRAFDA==
          "]], LineBox[CompressedData["
1:eJwVzX1Q03UcB3DWJRDK8oAj2BKEdHkdLeXBNLVPMyC4znTAGJjhGkdzjRoP
d1LNIi9AEYFdg7u1CBCChgjsK6Ejf7/vh4eQ4sGLhyHriA4U5cAjBCcNBfr1
x/ve79df7yClNi7tGRcXl31c/m/PmZTe320MXm0IvzuhcoOL+YPZ2jEGu7Wu
NFgUDMdfMvlV3GbQbYqfmX8gHFZSwpQOO4MN/oa+vdFRsHsszfHTJIOrEbKc
0n4ZmLvfynVy/qw7njlYnAjbifC5d/9m0HEsjjf3nhy2Xhx6cYHzouZoUeRw
EixKDkWGTzE4cym2yjn+PjQ3+Rg67jA461p1Z8+yAkLyu3fbZxkczTJsrnBR
wa7woHSPZQZlO+mr1uJMGK7vj9rqyuKCJmzlvP0MFJtUsc0CFisWD29MFOWB
oDdmaV7M4qPb2JZccgGS3P3XByQsynVnEy776MHc92dYdCKLikTTXxhggMuX
igaUahYFR3zzfRzl8BU56xF4hkWx4GmUkDWC8rA6K1vP/YUm+/7S+T0478Mh
TS2LJ1X+m4zfVkI13z30yXUWabaZ5/ZHNazGYqG4n8W6Tkfp1MEaENEbBbxJ
FttXV14pr6kFZWtDU/oSi7X2tsEyUR1I2YLXdZsopkXXbbTq60EaI5sPElBc
Szq2P9DfDMFb1JGnxBS7Ei25qaYGqL+rcYmTUDw5LZH18hrhjTcV90ZkFEe8
S0Nzzl2Br6+8/ZrzFMXAEc+q6OUmMManb6M6isYvJX7/yFugS1cQIdRTfPSR
cSDzEwtUWkstwlqK7mPm0SdBBPaW6AozOP/rPeQM2kngVqpK2cP5vtQZELOL
wAYffLQ/Urw5GKsuExP4MG0hp6uOYl7P3FrIAQI7vI6A2kyR1xbyckoCgUaN
x61rTRRXDZbPOwoIREoe129upjg3NF55r5DAhO90roKz/Xner1uKCXh2te/x
aKFoLZLykw0EPvVTl39goXj6m6Wah1UEQnt6TzzbSnE5K3wguJ1An6k1Ipnz
tOXEwxiGQGpGFb+Z8/BCnq8WCZQJczrkP1O8+rFNcaOHwONM0Y7GNooZytOO
+GECJe94rW1wVlRXCr6wERBtW7clXKN4dPImVI8TkP9mO7fOWXz8hQsPJgks
/tCpiL9OMcAILV7TBM5nN+03c/YcU43umyGwPfY7rzXOT731zpRZAu0B+fNS
K8UHUiu3CPwHaIzcaQ==
          "]]},
        Annotation[#, "Charting`Private`Tag$404800#1"]& ], 
       TagBox[
        {RGBColor[0.880722, 0.611041, 0.142051], Thickness[Large], Opacity[
         1.], FaceForm[Opacity[0.3]], LineBox[CompressedData["
1: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
          "]], LineBox[CompressedData["
1:eJwtjn001XcAh10Uwix0Q+uW3rwcaeQ0Ip9QTtaa6/UmL/dmM6nkIq+5zJlb
5u6WyLqz4nq54ZeNb2Z5yx2Wakklr01erizkKC/32L0Ta+fsc85znj+efz6m
oVHeYaoqKir73/Ofd7AFy0EjFLqq7F4Ohmtg3DBCR9lKIbHNp8lJ6I85qymT
sRYKcqY3bepzFjJD+3OJlMLbU56CA11HQca+lKORwniRR6GiPxAL+5wTttyi
MLG6cMxmngNX77m45QIK3TG52tdUwrGgYLP14yj4bW/eWSeMhqPJvLQ9lgJX
OcZ91RCNROnC2uQYClmPtX6hT0SjV+SW9SKKQnOS39441xgwLuh1XD1Jwbxz
2t12MQYvvThXBtgUluI3cCo5Z3FEPP5JjgeF4vuJOeLdCeBvTvujz5jCzKnd
i5kDKVDqfa9mZkShrZbZmL6GB+s1z5fP0imIViLTkh156GNMOuoaUHDLLdc4
fZ2HbQ+2PrHWed8bNhp5Hk9Ftan28T3LFXDR0nRYN5mGHFnRNtZoBT71OXOH
mZKOr0ve2A6XVODaW9eVQUEGEoPTLRo/qsBCn7Q24GIWgs4Z0CKF5WCdS/el
DLOhFPzMshkuA8c//4WUkQtPv5vbhi3LYHKEzjeU58F+RUBlRtyAtcnSwQ13
RPjh3va6XXwJZmwD6A0tP6Js/1z37YJSsMONV4lyCnD7mFwou1yC5thymsYT
MVZU9b3V+cWQtMgvjToV4766uIecLkK9ctEyr7gE9dPNeyYsxCgZqH10ZYcE
I4Mn2rb2XkeYu2SlJvsGSuM67R8u5ePdUabDJuNyOFdH6y5qidDqX532RX4F
DrgOMnab5YEtc/G7R7uJFTVJJWfkMp4ZXLJNuFAJZmDfzMVAITY90y10n/8J
QXYNblrd5yHiuRi9YVXhxMyqTvpEKha+EnVER1Yjdt5S7aGIC83e8u5/TAla
MzRoNSwu/jZ4qjDdTuARcOFcNp2LV14KxiFzAubV0Q6WeRTaH3lEXLEmWF/Z
Y/ZgYyQy7k69s3Ik+FN1Mb9BPQK0WiuzEF+CX8MY8f2tHChzq5N+O09g7FWe
r+HMwdTT/oK/viVgnJ/lusWwMaBH+11HSKAT+1y6MyQYdQKvDwJyCXhjh5q0
7AIQ/81c8WwhQRNDtGu4j4n5GLuOLfXv//IUrg5XPSGrDpo91ESQ0juozUk9
gq6ZDHqUlEDz2exn5LAHbp3s4TTeJXis9P0uVLYf3NB4uU8XweTqIZuki/vA
EReYJPcQqB12X8dnOcBzqB3ifgLZiZq9pa8+hvWx9VnTQwSefK7iTLAFGCJU
6csIJGLZ2oNTm6HbG95tP06wxymZl/f6QywZZCtCJghU/t+0Vx2D/5rgX9dV
7rk=
          "]]},
        Annotation[#, "Charting`Private`Tag$404800#2"]& ], 
       TagBox[
        {RGBColor[0.560181, 0.691569, 0.194885], Thickness[Large], Opacity[
         1.], FaceForm[Opacity[0.3]], LineBox[CompressedData["
1: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
          "]], LineBox[CompressedData["
1:eJwVjn1MzHEAhytybZGpdvTiUlZkuVnOhuijdnKMpavTi6bG0hR6sQolM6dS
ruKKE3qVpaT75vfLdam7H3mJNL1cOlN0S7W0QoW7juSPZ89fz/Y4H44TRpmZ
mJhw5/nv/r9XZt4MM+iS84Y+RrOw4G/kbEgzA5Fry3qFJAHC3MBjrDsMJmI3
/srSpoFHl/lsTWJw+5vv3MccMWIlmhjhbgbT71V0aG42+NOdYVaODIJTLwRV
2+aD//6GxndYjcgDRf0qjhR2xenGkjo17PexL9nOFOK+etZ7PEkNrr1xp0Oz
DP4xJztqPNWY8AxlK5lbyIs9/nn1JxUiou3MZdeKMdnpKnDnq9ByqsqU9a4U
jWNpXRnVLahkZvIGt5UjMWXXjWzLFjQafq0rLK8A9+doqVLUjAot/bbArRIO
tRnjOyqeIMqvcu5R/j3szVrG5vc14U/I/i1OdlVwkbrVC1hNeHpAfv5I0X2s
ikg31HopEaHzEb00rYFhkzElRdSIbps8z5TMB1iZ+HqwJkkBp+4lJX5TtVjj
5u398+pjyM75rJgMrkMIWxJz82oDpo/K2hNOyNHh3ut59yYNi96qnllngj0r
X2m3F9L4bdOpd3YlMPDFfb35NEYC9BzBWoLJDQf7F2XRePF297ECLgEv9eLC
iGQa4udjfzy8CNy0za8mhTRMaY81h4IIGpTatVJLGgap/Iw6g+AMz7ptOYvG
WGdf8fBlgnidLXPLjIZ2qWnrYgnB1IfTijI9BUVOgFWolCDIu6m1coRC8sUf
5d9LCM51uAfmPqMwlchrd2kkiMoxj7dQUdDJw78LnhCkp9UMXVBS6JoQs+NU
BH6zIk0ioVAfo4lsej7/G+vas7eEQvzh5JnALoLaNmEdU0QhsrTY/qyGIDR8
j27TdQr+Ay9Q2jffc2T+jhIK3LDl2eMDBJn7Ji7nZlHgyFBnrSMwyq0cTcQU
lvRG92z+QlAh0JsnnKdgtMnXHxolSLV9uGvwLIXxAAXn0leCf/BSdlc=
          "]]},
        Annotation[#, "Charting`Private`Tag$404800#3"]& ], {}}, {}}, 
     {Arrowheads[
      0.015], {ArrowBox[{{-0.1, -0.07}, {-0.1, -0.07}}], 
       ArrowBox[{{-0.1, -0.05600000000000001}, {-0.10252649006622518`, \
-0.05600000000000001}}], 
       ArrowBox[{{-0.1, -0.042}, {-0.10505298013245033`, -0.042}}], 
       ArrowBox[{{-0.1, -0.027999999999999997`}, {-0.1075794701986755, \
-0.027999999999999997`}}], 
       ArrowBox[{{-0.1, -0.013999999999999999`}, {-0.11010596026490067`, \
-0.013999999999999999`}}], ArrowBox[{{-0.1, 0.}, {-0.1, 0.}}], 
       ArrowBox[{{-0.1, 0.014000000000000012`}, {-0.11410596026490066`, 
        0.014000000000000012`}}], 
       ArrowBox[{{-0.1, 0.02800000000000001}, {-0.11557947019867551`, 
        0.02800000000000001}}], 
       ArrowBox[{{-0.1, 0.04200000000000001}, {-0.11705298013245033`, 
        0.04200000000000001}}], 
       ArrowBox[{{-0.1, 0.05600000000000002}, {-0.11852649006622518`, 
        0.05600000000000002}}], 
       ArrowBox[{{-0.1, 0.07}, {-0.12000000000000001`, 0.07}}]}, {
       ArrowBox[{{0, -0.07}, {0., -0.07}}], 
       ArrowBox[{{0, -0.05600000000000001}, {
         0.021901348314606738`, -0.05600000000000001}}], 
       ArrowBox[{{0, -0.042}, {0.03810202247191012, -0.042}}], 
       ArrowBox[{{0, -0.027999999999999997`}, {
         0.04860202247191013, -0.027999999999999997`}}], 
       ArrowBox[{{0, -0.013999999999999999`}, {
         0.053401348314606745`, -0.013999999999999999`}}], 
       ArrowBox[{{0, 0.}, {0.05250000000000001, 0.}}], 
       ArrowBox[{{0, 0.014000000000000012`}, {0.04864954128440368, 
         0.014000000000000012`}}], 
       ArrowBox[{{0, 0.02800000000000001}, {0.04147431192660551, 
         0.02800000000000001}}], 
       ArrowBox[{{0, 0.04200000000000001}, {0.03097431192660551, 
         0.04200000000000001}}], 
       ArrowBox[{{0, 0.05600000000000002}, {0.01714954128440365, 
         0.05600000000000002}}], ArrowBox[{{0, 0.07}, {0., 0.07}}]}, {
       ArrowBox[{{0.1, -0.07}, {0.1, -0.07}}], 
       ArrowBox[{{0.1, -0.05600000000000001}, {
        0.11937485824838158`, -0.05600000000000001}}], 
       ArrowBox[{{0.1, -0.042}, {0.1330490423394598, -0.042}}], 
       ArrowBox[{{0.1, -0.027999999999999997`}, {
        0.14102255227323462`, -0.027999999999999997`}}], 
       ArrowBox[{{0.1, -0.013999999999999999`}, {
        0.1432953880497061, -0.013999999999999999`}}], 
       ArrowBox[{{0.1, 0.}, {0.13986754966887419`, 0.}}], 
       ArrowBox[{{0.1, 0.014000000000000012`}, {0.13454358101950303`, 
        0.014000000000000012`}}], 
       ArrowBox[{{0.1, 0.02800000000000001}, {0.12589484172793003`, 
        0.02800000000000001}}], 
       ArrowBox[{{0.1, 0.04200000000000001}, {0.11392133179415517`, 
        0.04200000000000001}}], 
       ArrowBox[{{0.1, 0.05600000000000002}, {0.09862305121817849, 
        0.05600000000000002}}], ArrowBox[{{0.1, 0.07}, {0.08, 0.07}}]}, 
      {RGBColor[0, 1, 0], LineBox[{{-0.1, -0.07}, {-0.1, 0.07}}]}, 
      {RGBColor[1, 0, 0], LineBox[{{0.1, -0.07}, {0.1, 0.07}}]}}},
    Axes->{True, True},
    AxesLabel->{None, None},
    AxesOrigin->{0, 0},
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
    PlotRange->{{-0.12000000000000001`, 0.14332463899970493`}, {-0.07, 0.07}},
    PlotRangeClipping->True,
    PlotRangePadding->{{
       Scaled[0.05], 
       Scaled[0.05]}, {
       Scaled[0.05], 
       Scaled[0.05]}},
    Ticks->{Automatic, Automatic}], ",", 
   GraphicsBox[{{{{}, {}, 
       TagBox[
        {RGBColor[0.368417, 0.506779, 0.709798], Thickness[Large], Opacity[
         1.], FaceForm[Opacity[0.3]], LineBox[CompressedData["
1:eJwVz31Q03UABnCi0pDlkbw53t8s4Hg53kWCY77gxYUJxLqg5K1NuuRlYgrC
QgTuOORNKGEbMEAYLARZ8rLf9o0HcbHRAfIWCJGtkzdvQwwKjxJqPnfPPff5
87FPSo9i6evp6R3T9dXyea9CQRsptSnSSLA8tMGz5FP4/sXaQM+aBF7aU/x6
nVPq6fFLyxKoQjb5TQIKS2tXhSfUEmw/Ca8T11NYzAu20/9FgiiPlw1UE4Wx
ziH7vAEJDB6ca5kXU+gyGHPKvilBltbxLl1GgXP/D9fUAAkmS+cEMb9RMDzn
7uN5qRuub8WOBu1RyDw/uDqUcxd6CzbKXBsZbr/H+eyMWReidmi8bIYMuwz2
SFnVHTRvjXTZJcnwzbhLW6dzB9KCugUFRTK49Hpx8xvFkM4/imK0y9DWXRiW
a9uO16InIsQqGSJsRNc+kYqgoP9pO6aRwXrF8N6KdyuK5Wo/AU0OE7tQJlN5
GyP3Dpkp3OR4nAatNqkZRTupY+0fyTFlXpAToG4Ew6JWFZAhxyLLdVvxrAFX
ijX869VypJydW76uFsAtIj/AuU8O/hcWpFxdC7V22TxrVg7Lz//JjDO5hYML
mQ8LduR4bpBsVWlYjfebJ34OtCAwEaSIivwrsdLPrO8IJqDfX2cMf1CCt51s
j2UlEMQI/d+wPlEIn6/6LDauESSUXjTWnOZi5r/LU/YtBKwOvjrInIPqYFZY
q87vWjz16n2agcicaJlzK8FqcUCBB8nA+LZns6eI4Ev2zBH7xAyo1tc4we0E
C8etZmnMdPz4a+w7n94h0Hi8rmniXkBrf8jZyh4C2v5Jk9FRNpL/dlMY9xKU
L6X2D3DYcPCxPFqjs9HQgViJGRvCrhe2DX26P9yTwlsJLPBauzc6pARWW/0u
iX8lo6zaoUJJCNx/bwjZtkzE1+n7xvcUBHVp8xOhs0yU91l35v1EcKBHWkE5
MiHa9S3VGya4slNzxpsTg7kbyeH6SoKoQuaoI+1jBLYPDr85QmDAn1buOx6J
XfVV0MYI1ksEXF7caZg6VzWU6awyjf23ZPsUPNLF3IPjBC2Nh7Nzb55E/O5c
kNFDgti+7y7FKxkYpPtJjScJKh7YzoWzj2I+4cOab3UOm6+bcq/zw2Zb8mXT
KYKXz+jjRlPecPCv8jWfJpj2dS7pzHFFEFdsXKtzaIJDfuaqE6IVg5uHZwji
zAOfXxTZ4ILho0mezv5p7o/3uMZweyJUben8g9h3afH8fvwPgRAFDA==
          "]], LineBox[CompressedData["
1:eJwVzX1Q03UcB3DWJRDK8oAj2BKEdHkdLeXBNLVPMyC4znTAGJjhGkdzjRoP
d1LNIi9AEYFdg7u1CBCChgjsK6Ejf7/vh4eQ4sGLhyHriA4U5cAjBCcNBfr1
x/ve79df7yClNi7tGRcXl31c/m/PmZTe320MXm0IvzuhcoOL+YPZ2jEGu7Wu
NFgUDMdfMvlV3GbQbYqfmX8gHFZSwpQOO4MN/oa+vdFRsHsszfHTJIOrEbKc
0n4ZmLvfynVy/qw7njlYnAjbifC5d/9m0HEsjjf3nhy2Xhx6cYHzouZoUeRw
EixKDkWGTzE4cym2yjn+PjQ3+Rg67jA461p1Z8+yAkLyu3fbZxkczTJsrnBR
wa7woHSPZQZlO+mr1uJMGK7vj9rqyuKCJmzlvP0MFJtUsc0CFisWD29MFOWB
oDdmaV7M4qPb2JZccgGS3P3XByQsynVnEy776MHc92dYdCKLikTTXxhggMuX
igaUahYFR3zzfRzl8BU56xF4hkWx4GmUkDWC8rA6K1vP/YUm+/7S+T0478Mh
TS2LJ1X+m4zfVkI13z30yXUWabaZ5/ZHNazGYqG4n8W6Tkfp1MEaENEbBbxJ
FttXV14pr6kFZWtDU/oSi7X2tsEyUR1I2YLXdZsopkXXbbTq60EaI5sPElBc
Szq2P9DfDMFb1JGnxBS7Ei25qaYGqL+rcYmTUDw5LZH18hrhjTcV90ZkFEe8
S0Nzzl2Br6+8/ZrzFMXAEc+q6OUmMManb6M6isYvJX7/yFugS1cQIdRTfPSR
cSDzEwtUWkstwlqK7mPm0SdBBPaW6AozOP/rPeQM2kngVqpK2cP5vtQZELOL
wAYffLQ/Urw5GKsuExP4MG0hp6uOYl7P3FrIAQI7vI6A2kyR1xbyckoCgUaN
x61rTRRXDZbPOwoIREoe129upjg3NF55r5DAhO90roKz/Xner1uKCXh2te/x
aKFoLZLykw0EPvVTl39goXj6m6Wah1UEQnt6TzzbSnE5K3wguJ1An6k1Ipnz
tOXEwxiGQGpGFb+Z8/BCnq8WCZQJczrkP1O8+rFNcaOHwONM0Y7GNooZytOO
+GECJe94rW1wVlRXCr6wERBtW7clXKN4dPImVI8TkP9mO7fOWXz8hQsPJgks
/tCpiL9OMcAILV7TBM5nN+03c/YcU43umyGwPfY7rzXOT731zpRZAu0B+fNS
K8UHUiu3CPwHaIzcaQ==
          "]]},
        Annotation[#, "Charting`Private`Tag$405522#1"]& ], 
       TagBox[
        {RGBColor[0.880722, 0.611041, 0.142051], Thickness[Large], Opacity[
         1.], FaceForm[Opacity[0.3]], LineBox[CompressedData["
1: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
          "]], LineBox[CompressedData["
1:eJwtiXkwnAcAR5eZ1lWpqUQTxgriGN1oiWiFzs8R97mWFRGsKCqoIyFxxShp
HVHKapesI8t+n4gOXxq6CCqCJBPEGVKVhqgj6oh7Ec10+mbevD+e+vlI9yBJ
Go1m/s7/utrox0wnEdNp9Go8RAp2b/54XHyBxJUO1j2zHDZYM9d/I0JJrLu5
S8y7eMGY7RvQHEJiOcw1+/TAGZjaijaeBZKYvmlftj3qA+M4tu6ED4nZ98um
DFY5EEsZkXRHEkMxBXJ8WggaxBcVo7RJeGq1HhflRGOtYW3GWYtElHgqaqYp
Gpk6DX16x0hk9cncVZqNRrPWzuhLdRKt8Z6nYi1jYPJTzsBpVRK6vQs2hpsx
qLIdCphQJLEbp8Kp4VyC1cLssj+NhODhlfzyE5cRa/ZpP3+EwGLYic2MsSTs
OGtqagwT6Kh3a06VTcbcw7d+xCAB3n5ESoJpMnbFYdzbTwlYFVRJhZckY99V
baPq8bvfpHrYNeAq4lvmuJGtBCxkpE0OzaXAnJA3ZwgJOLC+aXFLSoVC7Y9O
gZEE+MuW++PZ6XhkwHyguS3E2rO2eu8fsrAkt8JpSxTCKzHVo/pgHhKaRAzH
qUpw2MV/ttELUDl/yDzNuhLKzkrXDq4XgplyqtCLXwF95V1rlRYehAfU2zOH
BFg09FZqar+B/C3W879kBfAPOfIeL78UnFpjM0LtJlovVklIPS1H2f2+7kCj
cgjb13NfmgngKz168vOrpWgUb+oVCipwmt7rz7bno2KsvoerLYRV+46Dv0ox
gmyE+7/mEVgi7vYblPyMvTNuJmpHqmCc0PGJSLoQ99l1KYHFtyBupDU7fZsP
/0kLz26J23jbdVT/ll0uBhVzDS9/X4PpyF0F1bpMqA3Kl9ms/oL+fyxVMrbT
wEu2OLzkVYviz6zXFOUSsRbMexIdUQdZvWzrQLkISI9UDe2oU2Dp9ljEF4Vj
S7F/W12Lgvk4YzRJJxwzzG26nS6F4K+sB52swtDVYx/K1afA3XguqZAQivTO
+T2GKYUUDZ6t5qsgSNQzdPw8KOwZ1PeKPXwhLqiL//07Cgs5hEtO+DnM94+W
/p1J4aznoOROmg/GPpR48EEOhepjL6S+vuMNUTbzgHcBBfnutvQMeTbi0t4I
VsooPDrpUNAV74zVGKMnGo0UZFyKld0rHTFZd27F7h6FGtMAWW6vPQYW05Ui
2ygQPJamqYYN7lwY5jR3UnjdwI1lXP8SUefj1lkDFORsBHLV4ybglJcqJwxT
EKSWxHAZxnCd6EL5KIWszcZg/8Lj0D/7cdbCBIXKS5bK7QbaoPNQ+9EkhaNF
Ti+2ilQhPxIy9MU0Bb+5whvWfHnsKuZt+81SoP3PAlNEv/aawr9O2ewJ
          "]]},
        Annotation[#, "Charting`Private`Tag$405522#2"]& ], 
       TagBox[
        {RGBColor[0.560181, 0.691569, 0.194885], Thickness[Large], Opacity[
         1.], FaceForm[Opacity[0.3]], LineBox[CompressedData["
1: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
tW/qHQ==
          "]], LineBox[CompressedData["
1:eJwVjn0s1HEAh49VGh0tN6FiboU1aZOZhn1SC72T9yhyQ6UXb4uKlBxRh07m
hnkdnV7vy/eX47iXFk2jvPTiJMtNL15S56XQi/THs+e/Z49VxLnDkbosFst+
if8eqRaxO4xUELY6jgxG68Hxb+QJyagS/pvkW6SCOBwsXLzr3KnEZMy2n9fV
KTB11vdaJ1ai9PvOxcEbGUhLz751+ooSM28VTHBuDk4FdUxVBSoReOmq311O
PkYiBvbusVEiPKD4vcKiAIOZ9SuEEwqYHzDhc2YLEaY6OA2+Avbmv3evaxVh
Y/KRymVsBSYdgk2aVSXI8NzAcy6UIyzabLlIWIZdKR6WBgZyyBPEOnrdFch+
HiJwSm9FjWo2b9i1CtZJXy8oZlrQtPBzc2FVNXh6qRvW+7agWs103baugWNU
zIs8KkOkR81iQ34tyjn7Wo6yZPgT5L3d0kyMiuWy+TmPZjwJkKTxiuvATs06
nihsQpjG3f+Zzj0MsIviE9ul6DPOc0jKug8Jx6jWjSWFZR+73GP6AQLctprV
OjVClOpu+i3wEVL0ta4dvo8xEyXqjDsjwee+l6XxyQxWvhG/+mVFsMOwPSE3
kcGccc+81SYCLydBY10sg88+8xZetgRBh3L5QycYtHftOXnbnuB6TYiLezCD
jLaxP3YuBBs1XMPx7Qx0GDubY34EPqU87+4FioUCyQVlJoHtzSSV+gfFWE9/
2adsgocnQ8s1UxRqI52nqwQEzV9FlVNjFNIbPobBBQQas/cKg3cU569NVWnL
Cc7qCnlcGcV0vGMnt4lgRRet5DZSaCShWq+WpV++eD+3gaJ3MsPknIKgV647
anmPov7U63BZG8EP/3QXTglFbMT5Wd9eggmB3QejIorwijLzi68J8hruaPUL
KA4NtaOin0D9bHXIYg6F/ZG1ORNDBGmP/9bPZVJYiPBojWapL2xN0qZTsN9E
v3L+SNATeqBu9DLFb+P8+WNfCC5xHnoOX6SY8JFa8McJ/gGP3HL8
          "]]},
        Annotation[#, "Charting`Private`Tag$405522#3"]& ], {}}, {}}, 
     {Arrowheads[
      0.015], {ArrowBox[{{-0.1, -0.07}, {-0.1, -0.07}}], 
       ArrowBox[{{-0.1, -0.05600000000000001}, {-0.10252649006622518`, \
-0.05600000000000001}}], 
       ArrowBox[{{-0.1, -0.042}, {-0.10505298013245033`, -0.042}}], 
       ArrowBox[{{-0.1, -0.027999999999999997`}, {-0.1075794701986755, \
-0.027999999999999997`}}], 
       ArrowBox[{{-0.1, -0.013999999999999999`}, {-0.11010596026490067`, \
-0.013999999999999999`}}], ArrowBox[{{-0.1, 0.}, {-0.1, 0.}}], 
       ArrowBox[{{-0.1, 0.014000000000000012`}, {-0.11410596026490066`, 
        0.014000000000000012`}}], 
       ArrowBox[{{-0.1, 0.02800000000000001}, {-0.11557947019867551`, 
        0.02800000000000001}}], 
       ArrowBox[{{-0.1, 0.04200000000000001}, {-0.11705298013245033`, 
        0.04200000000000001}}], 
       ArrowBox[{{-0.1, 0.05600000000000002}, {-0.11852649006622518`, 
        0.05600000000000002}}], 
       ArrowBox[{{-0.1, 0.07}, {-0.12000000000000001`, 0.07}}]}, {
       ArrowBox[{{0, -0.07}, {0., -0.07}}], 
       ArrowBox[{{0, -0.05600000000000001}, {
         0.019163679775280894`, -0.05600000000000001}}], 
       ArrowBox[{{0, -0.042}, {0.033339269662921354`, -0.042}}], 
       ArrowBox[{{0, -0.027999999999999997`}, {
         0.042526769662921356`, -0.027999999999999997`}}], 
       ArrowBox[{{0, -0.013999999999999999`}, {
         0.04672617977528091, -0.013999999999999999`}}], 
       ArrowBox[{{0, 0.}, {0.045937500000000006`, 0.}}], 
       ArrowBox[{{0, 0.014000000000000012`}, {0.04256834862385321, 
         0.014000000000000012`}}], 
       ArrowBox[{{0, 0.02800000000000001}, {0.03629002293577982, 
         0.02800000000000001}}], 
       ArrowBox[{{0, 0.04200000000000001}, {0.02710252293577982, 
         0.04200000000000001}}], 
       ArrowBox[{{0, 0.05600000000000002}, {0.015005848623853194`, 
         0.05600000000000002}}], ArrowBox[{{0, 0.07}, {0., 0.07}}]}, {
       ArrowBox[{{0.1, -0.07}, {0.1, -0.07}}], 
       ArrowBox[{{0.1, -0.05600000000000001}, {
        0.11663718970905573`, -0.05600000000000001}}], 
       ArrowBox[{{0.1, -0.042}, {0.12828628953047103`, -0.042}}], 
       ArrowBox[{{0.1, -0.027999999999999997`}, {
        0.13494729946424586`, -0.027999999999999997`}}], 
       ArrowBox[{{0.1, -0.013999999999999999`}, {
        0.13662021951038025`, -0.013999999999999999`}}], 
       ArrowBox[{{0.1, 0.}, {0.1333050496688742, 0.}}], 
       ArrowBox[{{0.1, 0.014000000000000012`}, {0.12846238835895257`, 
        0.014000000000000012`}}], 
       ArrowBox[{{0.1, 0.02800000000000001}, {0.12071055273710432`, 
        0.02800000000000001}}], 
       ArrowBox[{{0.1, 0.04200000000000001}, {0.11004954280332949`, 
        0.04200000000000001}}], 
       ArrowBox[{{0.1, 0.05600000000000002}, {0.09647935855762803, 
        0.05600000000000002}}], ArrowBox[{{0.1, 0.07}, {0.08, 0.07}}]}, 
      {RGBColor[0, 1, 0], LineBox[{{-0.1, -0.07}, {-0.1, 0.07}}]}, 
      {RGBColor[1, 0, 0], LineBox[{{0.1, -0.07}, {0.1, 0.07}}]}}},
    Axes->{True, True},
    AxesLabel->{None, None},
    AxesOrigin->{0, 0},
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
    PlotRange->{{-0.12000000000000001`, 0.13668780493450575`}, {-0.07, 0.07}},
    PlotRangeClipping->True,
    PlotRangePadding->{{
       Scaled[0.05], 
       Scaled[0.05]}, {
       Scaled[0.05], 
       Scaled[0.05]}},
    Ticks->{Automatic, Automatic}], ",", 
   GraphicsBox[{{{{}, {}, 
       TagBox[
        {RGBColor[0.368417, 0.506779, 0.709798], Thickness[Large], Opacity[
         1.], FaceForm[Opacity[0.3]], LineBox[CompressedData["
1:eJwVz31Q03UABnCi0pDlkbw53t8s4Hg53kWCY77gxYUJxLqg5K1NuuRlYgrC
QgTuOORNKGEbMEAYLARZ8rLf9o0HcbHRAfIWCJGtkzdvQwwKjxJqPnfPPff5
87FPSo9i6evp6R3T9dXyea9CQRsptSnSSLA8tMGz5FP4/sXaQM+aBF7aU/x6
nVPq6fFLyxKoQjb5TQIKS2tXhSfUEmw/Ca8T11NYzAu20/9FgiiPlw1UE4Wx
ziH7vAEJDB6ca5kXU+gyGHPKvilBltbxLl1GgXP/D9fUAAkmS+cEMb9RMDzn
7uN5qRuub8WOBu1RyDw/uDqUcxd6CzbKXBsZbr/H+eyMWReidmi8bIYMuwz2
SFnVHTRvjXTZJcnwzbhLW6dzB9KCugUFRTK49Hpx8xvFkM4/imK0y9DWXRiW
a9uO16InIsQqGSJsRNc+kYqgoP9pO6aRwXrF8N6KdyuK5Wo/AU0OE7tQJlN5
GyP3Dpkp3OR4nAatNqkZRTupY+0fyTFlXpAToG4Ew6JWFZAhxyLLdVvxrAFX
ijX869VypJydW76uFsAtIj/AuU8O/hcWpFxdC7V22TxrVg7Lz//JjDO5hYML
mQ8LduR4bpBsVWlYjfebJ34OtCAwEaSIivwrsdLPrO8IJqDfX2cMf1CCt51s
j2UlEMQI/d+wPlEIn6/6LDauESSUXjTWnOZi5r/LU/YtBKwOvjrInIPqYFZY
q87vWjz16n2agcicaJlzK8FqcUCBB8nA+LZns6eI4Ev2zBH7xAyo1tc4we0E
C8etZmnMdPz4a+w7n94h0Hi8rmniXkBrf8jZyh4C2v5Jk9FRNpL/dlMY9xKU
L6X2D3DYcPCxPFqjs9HQgViJGRvCrhe2DX26P9yTwlsJLPBauzc6pARWW/0u
iX8lo6zaoUJJCNx/bwjZtkzE1+n7xvcUBHVp8xOhs0yU91l35v1EcKBHWkE5
MiHa9S3VGya4slNzxpsTg7kbyeH6SoKoQuaoI+1jBLYPDr85QmDAn1buOx6J
XfVV0MYI1ksEXF7caZg6VzWU6awyjf23ZPsUPNLF3IPjBC2Nh7Nzb55E/O5c
kNFDgti+7y7FKxkYpPtJjScJKh7YzoWzj2I+4cOab3UOm6+bcq/zw2Zb8mXT
KYKXz+jjRlPecPCv8jWfJpj2dS7pzHFFEFdsXKtzaIJDfuaqE6IVg5uHZwji
zAOfXxTZ4ILho0mezv5p7o/3uMZweyJUben8g9h3afH8fvwPgRAFDA==
          "]], LineBox[CompressedData["
1:eJwVzX1Q03UcB3DWJRDK8oAj2BKEdHkdLeXBNLVPMyC4znTAGJjhGkdzjRoP
d1LNIi9AEYFdg7u1CBCChgjsK6Ejf7/vh4eQ4sGLhyHriA4U5cAjBCcNBfr1
x/ve79df7yClNi7tGRcXl31c/m/PmZTe320MXm0IvzuhcoOL+YPZ2jEGu7Wu
NFgUDMdfMvlV3GbQbYqfmX8gHFZSwpQOO4MN/oa+vdFRsHsszfHTJIOrEbKc
0n4ZmLvfynVy/qw7njlYnAjbifC5d/9m0HEsjjf3nhy2Xhx6cYHzouZoUeRw
EixKDkWGTzE4cym2yjn+PjQ3+Rg67jA461p1Z8+yAkLyu3fbZxkczTJsrnBR
wa7woHSPZQZlO+mr1uJMGK7vj9rqyuKCJmzlvP0MFJtUsc0CFisWD29MFOWB
oDdmaV7M4qPb2JZccgGS3P3XByQsynVnEy776MHc92dYdCKLikTTXxhggMuX
igaUahYFR3zzfRzl8BU56xF4hkWx4GmUkDWC8rA6K1vP/YUm+/7S+T0478Mh
TS2LJ1X+m4zfVkI13z30yXUWabaZ5/ZHNazGYqG4n8W6Tkfp1MEaENEbBbxJ
FttXV14pr6kFZWtDU/oSi7X2tsEyUR1I2YLXdZsopkXXbbTq60EaI5sPElBc
Szq2P9DfDMFb1JGnxBS7Ei25qaYGqL+rcYmTUDw5LZH18hrhjTcV90ZkFEe8
S0Nzzl2Br6+8/ZrzFMXAEc+q6OUmMManb6M6isYvJX7/yFugS1cQIdRTfPSR
cSDzEwtUWkstwlqK7mPm0SdBBPaW6AozOP/rPeQM2kngVqpK2cP5vtQZELOL
wAYffLQ/Urw5GKsuExP4MG0hp6uOYl7P3FrIAQI7vI6A2kyR1xbyckoCgUaN
x61rTRRXDZbPOwoIREoe129upjg3NF55r5DAhO90roKz/Xner1uKCXh2te/x
aKFoLZLykw0EPvVTl39goXj6m6Wah1UEQnt6TzzbSnE5K3wguJ1An6k1Ipnz
tOXEwxiGQGpGFb+Z8/BCnq8WCZQJczrkP1O8+rFNcaOHwONM0Y7GNooZytOO
+GECJe94rW1wVlRXCr6wERBtW7clXKN4dPImVI8TkP9mO7fOWXz8hQsPJgks
/tCpiL9OMcAILV7TBM5nN+03c/YcU43umyGwPfY7rzXOT731zpRZAu0B+fNS
K8UHUiu3CPwHaIzcaQ==
          "]]},
        Annotation[#, "Charting`Private`Tag$406243#1"]& ], 
       TagBox[
        {RGBColor[0.880722, 0.611041, 0.142051], Thickness[Large], Opacity[
         1.], FaceForm[Opacity[0.3]], LineBox[CompressedData["
1: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
          "]], LineBox[CompressedData["
1:eJwtjmkwnAcAhm0mrogaRzSuNSJCM6yETBJH8tZGNugkjnVrWZR1RBxtHAnZ
mjiKOGpptwi7+61mSSQ+6bZIHIkI0zoSx6IlbamjasRZ12ZUZ/rOPPP8eP68
RiGxHmH75OTkPtzjPwdmz7VeNBOhQXjqz3G2Iur6r+TYaYiQ3MF8ap/vjR8E
lp5R6iKsu3lQ5q/4YMZ5ktapJsJStGue44AvOmtVNmMPijAtcK7aGg1A8sNr
Y9/KizCnUDV1cpWFhpbro+c3CAwlcFUq5NhI2cnu6h0h4GXSatGYH4865j9q
w1ICcdtTcbPN8SgvTMr/dZhAbr/y99pz8RA0NJjODBJoTfGyvU5PgE+1ythy
PwGzvgWG1UYCrp5zspzqIiBL1GM9YH0O27MLNRY/EhB2JxfzrZMQ5vvbSDCX
wGK09caXY6mQ5dXTDYoJdEjcnqQfSIMo27htpIgAbzeGc8MuDUdGFhecCwhc
4IoVr95Nw7hUV984Z683Gxx2Db4FR7/ubvEtAg7KSjaH/uJgMTIlgBJJwIV5
rcUtNR2CZuvwWVsCFUv03fG8DOgpGAXdGRZibaRN4leQi8yKvnb1KCF8bqZ7
1moVQTb3nBI2KwDLu2yijcqFjPNFgClLAN3L2pla66WI3p3jHOvng6Yru6jX
wsNjL/2fpoz5WLTy025+Vo4dVnSb5mIlgtg68rziSmgqLQ0N+t9F62diiuIr
Pjj79W5mdZWj+tl64R/2QpgrxrUfMC5D0/bG8VIhAe1Qqsf4eR6IMUlvybFq
iKsLBspYXyOMUb37uOg72I2WRfHOleCdr5uNoY4YJxwPuaQoFuO5dz0ntKwG
YaEuD3uaCxE06eDVRbmP3cyNfV+9ysWgZqFVUvYDpGUYWd/fnwXDQdUqxmod
GPd+XlEwTAcvzeHwW59H6E/I0FWnJWEtnNcTH1MPWkx7xonpCChJxUM7RiSM
L+Wl37kdgU3N11tGJiTeyn/UNGoUgVn3LaqTGYnUkzVjDoFsvOx1jiyhkdBw
+H3CWxqGjM75d+Z2JEzoNmt5HSGgSMxNAz1JFPEsSMejftjm1qe0Z5G4lyJj
q3zii/nXo5UzOSS+OSopaSj1wZga5cXBfBLO0ilXoYI3GvPc3/PjkqiqPX1Z
cdYDibdXhMtVJPRpn3b1XXDGasKpniNNJDyoditR5CVM1n+87PSUxAR/Wqmb
ysDAYoZ2bBsJRqBk68UmHQ1Rw6wnnSTOJHMGuEwbxIUkrjMHSFhmhk//cvw0
WPxK3RvDJOiNa/0ExRqub16CP0qCaaDqmxjwAWj+7+cuvCEhC9Wy01QwBpWH
RxqTJDaXBsvYQTpQlbKHzk7v/fE/Y88KVoZMs2grcI6E3P9bcG+kZv5N4l/q
IerF
          "]]},
        Annotation[#, "Charting`Private`Tag$406243#2"]& ], 
       TagBox[
        {RGBColor[0.560181, 0.691569, 0.194885], Thickness[Large], Opacity[
         1.], FaceForm[Opacity[0.3]], LineBox[CompressedData["
1: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
8vUpsilbZ7DXRRD+D3/FJpQ=
          "]], LineBox[CompressedData["
1:eJwVxX0s1GEAB/C7tlKty3QS2g4ZqskWFsn2TS2xagjpWsmulysxLkUUpc77
vKxDNzVEJ6VyTz0/7g53KKqNosvLraO6okJSSCSqPz772Aii9h5bwGKxnP75
/7DPLbtW90Y4E9ePeqERjs6FdxmZNSLYTr1BkS1CvnuITvtTg9FTLlPpuguY
Ojtw4xejwY2xbfP6LDEcviVEc6I0mOjRMPycTPDik1dG2WsQcj456K5pHpb0
bb5U0qFG2L6iPg1PgvROoenHeDUs95ilmE4WIIJdceI2Tw0ny9kdqxukqFrd
KyO0AaPOfDNV03Uk2L4Y2L2rAYeFFgulV4shtRf+HOmshzqmkm3UUQr+XQ+f
QX49ZE2Tue89y6CLlRyc6KuDcmZqfUFZOa6ZmxQl+tehXMe059vLsMfKX97f
osIxb9n8o7wK/CgVC+LWqvBnv/9mK4tK8M75ed1JVaJ5n/zikaI7+F2U98zj
iwKHDV7BT9lVUA1sjBS5KaDl5jrHpd3D9trA8JeZtbDSckq8x+9DHGQ9Efym
BtJEL/NvIdUomQsynl5Zg4nj0jZRpByspOeLvEIYLO6ufP3bhsBt/jHnbSCD
X9zOaRs7ggKHwsIL/gw+BUzzfNYSNEU2bajxZdDa7nsy34lA/9LltK0nA3HL
0B/HLQQ2w2mBg9YM2IyjQ2gQwXDi1zjOEMWMRB7fmErQ80GvvD5IMdTZWzyY
QTA0Vp647gOFzpj9ZFk2wSWWMnO7nkKRFbCcLyGInpxTiV5QxF75Ufa9hCB0
00xMzUOK8dOubWuUBBXLj2o9qykM8oPffeoJuDky2lxF8WpUbBalITh0uXq2
7RbFw/CusLoWgtqtb8veFFJEC2InA18ROO5dZBIqoQgrLbZM6CJoXbqQ/S6X
wq+/FaW9BBGijOOGdAqnA6syR/oJYq2M9YIUCp4U1SsMBJVnIrSGZApOt/C1
+wDBfPTN3YIkillu3nToZ4Lzpg92vk+gGAlQ8FKGCf4CuuJ50w==
          "]]},
        Annotation[#, "Charting`Private`Tag$406243#3"]& ], {}}, {}}, 
     {Arrowheads[
      0.015], {ArrowBox[{{-0.1, -0.07}, {-0.1, -0.07}}], 
       ArrowBox[{{-0.1, -0.05600000000000001}, {-0.10252649006622518`, \
-0.05600000000000001}}], 
       ArrowBox[{{-0.1, -0.042}, {-0.10505298013245033`, -0.042}}], 
       ArrowBox[{{-0.1, -0.027999999999999997`}, {-0.1075794701986755, \
-0.027999999999999997`}}], 
       ArrowBox[{{-0.1, -0.013999999999999999`}, {-0.11010596026490067`, \
-0.013999999999999999`}}], ArrowBox[{{-0.1, 0.}, {-0.1, 0.}}], 
       ArrowBox[{{-0.1, 0.014000000000000012`}, {-0.11410596026490066`, 
        0.014000000000000012`}}], 
       ArrowBox[{{-0.1, 0.02800000000000001}, {-0.11557947019867551`, 
        0.02800000000000001}}], 
       ArrowBox[{{-0.1, 0.04200000000000001}, {-0.11705298013245033`, 
        0.04200000000000001}}], 
       ArrowBox[{{-0.1, 0.05600000000000002}, {-0.11852649006622518`, 
        0.05600000000000002}}], 
       ArrowBox[{{-0.1, 0.07}, {-0.12000000000000001`, 0.07}}]}, {
       ArrowBox[{{0, -0.07}, {0., -0.07}}], 
       ArrowBox[{{0, -0.05600000000000001}, {
         0.016426011235955055`, -0.05600000000000001}}], 
       ArrowBox[{{0, -0.042}, {0.02857651685393259, -0.042}}], 
       ArrowBox[{{0, -0.027999999999999997`}, {
         0.0364515168539326, -0.027999999999999997`}}], 
       ArrowBox[{{0, -0.013999999999999999`}, {
         0.040051011235955065`, -0.013999999999999999`}}], 
       ArrowBox[{{0, 0.}, {0.039375000000000014`, 0.}}], 
       ArrowBox[{{0, 0.014000000000000012`}, {0.03648715596330276, 
         0.014000000000000012`}}], 
       ArrowBox[{{0, 0.02800000000000001}, {0.031105733944954132`, 
         0.02800000000000001}}], 
       ArrowBox[{{0, 0.04200000000000001}, {0.023230733944954132`, 
         0.04200000000000001}}], 
       ArrowBox[{{0, 0.05600000000000002}, {0.01286215596330274, 
         0.05600000000000002}}], ArrowBox[{{0, 0.07}, {0., 0.07}}]}, {
       ArrowBox[{{0.1, -0.07}, {0.1, -0.07}}], 
       ArrowBox[{{0.1, -0.05600000000000001}, {
        0.1138995211697299, -0.05600000000000001}}], 
       ArrowBox[{{0.1, -0.042}, {0.12352353672148227`, -0.042}}], 
       ArrowBox[{{0.1, -0.027999999999999997`}, {
        0.12887204665525712`, -0.027999999999999997`}}], 
       ArrowBox[{{0.1, -0.013999999999999999`}, {
        0.1299450509710544, -0.013999999999999999`}}], 
       ArrowBox[{{0.1, 0.}, {0.1267425496688742, 0.}}], 
       ArrowBox[{{0.1, 0.014000000000000012`}, {0.1223811956984021, 
        0.014000000000000012`}}], 
       ArrowBox[{{0.1, 0.02800000000000001}, {0.11552626374627864`, 
        0.02800000000000001}}], 
       ArrowBox[{{0.1, 0.04200000000000001}, {0.1061777538125038, 
        0.04200000000000001}}], 
       ArrowBox[{{0.1, 0.05600000000000002}, {0.09433566589707758, 
        0.05600000000000002}}], ArrowBox[{{0.1, 0.07}, {0.08, 0.07}}]}, 
      {RGBColor[0, 1, 0], LineBox[{{-0.1, -0.07}, {-0.1, 0.07}}]}, 
      {RGBColor[1, 0, 0], LineBox[{{0.1, -0.07}, {0.1, 0.07}}]}}},
    Axes->{True, True},
    AxesLabel->{None, None},
    AxesOrigin->{0, 0},
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
    PlotRange->{{-0.12000000000000001`, 0.13007762914438992`}, {-0.07, 0.07}},
    PlotRangeClipping->True,
    PlotRangePadding->{{
       Scaled[0.05], 
       Scaled[0.05]}, {
       Scaled[0.05], 
       Scaled[0.05]}},
    Ticks->{Automatic, Automatic}], ",", 
   GraphicsBox[{{{{}, {}, 
       TagBox[
        {RGBColor[0.368417, 0.506779, 0.709798], Thickness[Large], Opacity[
         1.], FaceForm[Opacity[0.3]], LineBox[CompressedData["
1:eJwVz31Q03UABnCi0pDlkbw53t8s4Hg53kWCY77gxYUJxLqg5K1NuuRlYgrC
QgTuOORNKGEbMEAYLARZ8rLf9o0HcbHRAfIWCJGtkzdvQwwKjxJqPnfPPff5
87FPSo9i6evp6R3T9dXyea9CQRsptSnSSLA8tMGz5FP4/sXaQM+aBF7aU/x6
nVPq6fFLyxKoQjb5TQIKS2tXhSfUEmw/Ca8T11NYzAu20/9FgiiPlw1UE4Wx
ziH7vAEJDB6ca5kXU+gyGHPKvilBltbxLl1GgXP/D9fUAAkmS+cEMb9RMDzn
7uN5qRuub8WOBu1RyDw/uDqUcxd6CzbKXBsZbr/H+eyMWReidmi8bIYMuwz2
SFnVHTRvjXTZJcnwzbhLW6dzB9KCugUFRTK49Hpx8xvFkM4/imK0y9DWXRiW
a9uO16InIsQqGSJsRNc+kYqgoP9pO6aRwXrF8N6KdyuK5Wo/AU0OE7tQJlN5
GyP3Dpkp3OR4nAatNqkZRTupY+0fyTFlXpAToG4Ew6JWFZAhxyLLdVvxrAFX
ijX869VypJydW76uFsAtIj/AuU8O/hcWpFxdC7V22TxrVg7Lz//JjDO5hYML
mQ8LduR4bpBsVWlYjfebJ34OtCAwEaSIivwrsdLPrO8IJqDfX2cMf1CCt51s
j2UlEMQI/d+wPlEIn6/6LDauESSUXjTWnOZi5r/LU/YtBKwOvjrInIPqYFZY
q87vWjz16n2agcicaJlzK8FqcUCBB8nA+LZns6eI4Ev2zBH7xAyo1tc4we0E
C8etZmnMdPz4a+w7n94h0Hi8rmniXkBrf8jZyh4C2v5Jk9FRNpL/dlMY9xKU
L6X2D3DYcPCxPFqjs9HQgViJGRvCrhe2DX26P9yTwlsJLPBauzc6pARWW/0u
iX8lo6zaoUJJCNx/bwjZtkzE1+n7xvcUBHVp8xOhs0yU91l35v1EcKBHWkE5
MiHa9S3VGya4slNzxpsTg7kbyeH6SoKoQuaoI+1jBLYPDr85QmDAn1buOx6J
XfVV0MYI1ksEXF7caZg6VzWU6awyjf23ZPsUPNLF3IPjBC2Nh7Nzb55E/O5c
kNFDgti+7y7FKxkYpPtJjScJKh7YzoWzj2I+4cOab3UOm6+bcq/zw2Zb8mXT
KYKXz+jjRlPecPCv8jWfJpj2dS7pzHFFEFdsXKtzaIJDfuaqE6IVg5uHZwji
zAOfXxTZ4ILho0mezv5p7o/3uMZweyJUben8g9h3afH8fvwPgRAFDA==
          "]], LineBox[CompressedData["
1:eJwVzX1Q03UcB3DWJRDK8oAj2BKEdHkdLeXBNLVPMyC4znTAGJjhGkdzjRoP
d1LNIi9AEYFdg7u1CBCChgjsK6Ejf7/vh4eQ4sGLhyHriA4U5cAjBCcNBfr1
x/ve79df7yClNi7tGRcXl31c/m/PmZTe320MXm0IvzuhcoOL+YPZ2jEGu7Wu
NFgUDMdfMvlV3GbQbYqfmX8gHFZSwpQOO4MN/oa+vdFRsHsszfHTJIOrEbKc
0n4ZmLvfynVy/qw7njlYnAjbifC5d/9m0HEsjjf3nhy2Xhx6cYHzouZoUeRw
EixKDkWGTzE4cym2yjn+PjQ3+Rg67jA461p1Z8+yAkLyu3fbZxkczTJsrnBR
wa7woHSPZQZlO+mr1uJMGK7vj9rqyuKCJmzlvP0MFJtUsc0CFisWD29MFOWB
oDdmaV7M4qPb2JZccgGS3P3XByQsynVnEy776MHc92dYdCKLikTTXxhggMuX
igaUahYFR3zzfRzl8BU56xF4hkWx4GmUkDWC8rA6K1vP/YUm+/7S+T0478Mh
TS2LJ1X+m4zfVkI13z30yXUWabaZ5/ZHNazGYqG4n8W6Tkfp1MEaENEbBbxJ
FttXV14pr6kFZWtDU/oSi7X2tsEyUR1I2YLXdZsopkXXbbTq60EaI5sPElBc
Szq2P9DfDMFb1JGnxBS7Ei25qaYGqL+rcYmTUDw5LZH18hrhjTcV90ZkFEe8
S0Nzzl2Br6+8/ZrzFMXAEc+q6OUmMManb6M6isYvJX7/yFugS1cQIdRTfPSR
cSDzEwtUWkstwlqK7mPm0SdBBPaW6AozOP/rPeQM2kngVqpK2cP5vtQZELOL
wAYffLQ/Urw5GKsuExP4MG0hp6uOYl7P3FrIAQI7vI6A2kyR1xbyckoCgUaN
x61rTRRXDZbPOwoIREoe129upjg3NF55r5DAhO90roKz/Xner1uKCXh2te/x
aKFoLZLykw0EPvVTl39goXj6m6Wah1UEQnt6TzzbSnE5K3wguJ1An6k1Ipnz
tOXEwxiGQGpGFb+Z8/BCnq8WCZQJczrkP1O8+rFNcaOHwONM0Y7GNooZytOO
+GECJe94rW1wVlRXCr6wERBtW7clXKN4dPImVI8TkP9mO7fOWXz8hQsPJgks
/tCpiL9OMcAILV7TBM5nN+03c/YcU43umyGwPfY7rzXOT731zpRZAu0B+fNS
K8UHUiu3CPwHaIzcaQ==
          "]]},
        Annotation[#, "Charting`Private`Tag$406971#1"]& ], 
       TagBox[
        {RGBColor[0.880722, 0.611041, 0.142051], Thickness[Large], Opacity[
         1.], FaceForm[Opacity[0.3]], LineBox[CompressedData["
1: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
QgF7Rlvqy6kEBliYW9bpYXs4KlnZBDJARDLz1HHsQ2ydf2R2MaDlXnhxAPan
Uksv4l8GzO3bcI+GnVjn1q4ozoCcG0mQiq0M59SKl+jw4EdDLhu7tSM5UW2a
Dv5S5JEKbOe+wrnKXjpckbH8eRP758gda60mOhgv3jzXip0+3XOj7hodfO6O
v+jE1vw6Iap3iQ6CR3sl+rC7Fv+ENJ6jg/ZAlMEQtjePyOBONzq80PpkOIbN
Iapq0LqPDr995eQnsPPWo6u7t9HhKk3o3TS2vuqhpfb1dGg+dy9uFrt/68nj
ltx0cNmvIziH7b+Teu/JZxpEUHyDl81vnrnBdogG0iznpg/YJbaVsc/v00CP
Q3R8BnuX873pw1U06LeOn53CHvEZ3PcqkwYfw1v6x7EvBH6sdKXSID7uNvs1
tljEyjXjvjQoCAywGMSuZkoFeNvRwGDHbP9TbMs0rb73hjSwebvRpAN78uoe
HT9lGkz7KFwCbFrJsazPa2jwt2ukqQ57fW3gr6BfVGAJOnWWYN++G+e08JYK
1zSz7+Rg27Wzm8O6qaCreSU+abl+vfVySw1U2Lv6sEEEdsKrThqNoMKkpxRy
Wq7X/A+zuEAqBL2WYZkv1+uvQCn/MSrQdMcebFuuF5cSX4oZFSToZU+W95Om
jPWTyxJUKAypvvYF77cuZS8tSU4qVO4NdRrC9t5yMe3qbBTsYO45VYydt6fE
oRCioPWb9YMEbH2b5tvKpVHw0FhqyQ+736lPqpwVBVbB86JbsPkDKKM1nlFg
bVHeUYbPy/lcRx/gi4LH5Y0qMdiqVq/So99HQudMoo8rtqs7z+HEu5FgwhUQ
L4T9OOn42BX3SFCqMHPwwuez9I3QfN31CMhe4dykhz36w7ChkRYBl7bpcPBi
iwv4Xmg9FAHf9VQ1S3EeMHRbOXp+h8OtSgmxlzgvXBMDRGb2hIOXUNjLPOzh
f4vtVdaGw6zfVis3bMfuoSueExeBurbU6N0mElmv3i03yrgIA+tLDg7hfDJK
Wave3xIGlgdb4jKwmzQt/YVTwyAzXMvfClvvaVTtAdcwuH1PfG8TzjdN4ffb
Hy1eAJVV3xSZy3mY3mQGBhfAjevhY13sPO3PcX94L0AQx5zyhDLOr/4N3dtf
ngeFCZN3O7GFxS/Z1p07DyXulMRRnMccWcddS+vPwRHdR3HjON/f5Ky6kLY5
FGSf80pGYjvvMLjbsxgCd/3yHddhvxw+Q1n9OAQYSc9HzeRxfssMxjBPhYA+
1UYmXZZE99jlaeGlwWBpfMXsI+4/hQXWld6KQbBCye1ICe5nnuXZowZrz0Ju
lt0eBeyNktNa9dP+QPn6QSAH98NJpi5do8kfFF3EVOKESHTCq2+D/HF/6Fml
m+IgiOc3kX7Ob38GnuU82HwX99sZDc4ZMvwU+A8LVpTj/s3P9VS0q8sLlNRe
d1Owk8dP32w+6wWE86EOO9zv17TyHqkR94JvYTr7fy7/H4Sbsi+7egIPs5Op
/ZtA0l9uqh7/6g5974yeBH4jkPrrvJ3fpY4Dxy3HK2LTBMr1G+wxem4PO4Qz
RNu6CTRfoD0+7M0F/wPl2yc2
          "]], LineBox[CompressedData["
1:eJwtkHkwnAcAxWnGVUdmIkFQRia2GWElS9tsjr64qQnrvmO7LIMQV8UZI44E
dYx1rGv3K0O0ieFrqCNCdROJVFQcG6ZoSbFURbrZ0WVlqzN9M2/e/Ob98Wae
Ceu6J/sDBQWFywf+L1MNdI3PjxFI7LD+Yz5SBYfbh53m+wikCrwGLpb4Qjd4
ctvigCUMT8UNNz9UXYqUjfcQ2I5xL7af9IebVqhUpZvAyjcufOlsEPpWC4p8
OgiIlPmvz4qZiErqUQttJjCdyFFvUIgEXVafcbqQgI/poEVvSQLY2zufBd8h
EL/7On6tPwH3ds65fn2bQNEval06ogTkIzplI5/AYJrP+a9sE5HUVfgb7xaB
U+ObjrSdRFhaDcjWMgjIUgyY95nJOJP3hrUXS6DpWWoFYXUD3sllixQGga0Y
q507c5mQjV5i6bkTEHQzHuZ8mIUQR2djNTcCXHlsdvqFLDg+SHAQuRKw47Sp
XGvMwg8hOraNTgd9/0d67l/ehJakVbb0OQEbNVX6sfVsNFispAjNCXzhFfeI
kZmDMyMz2THKBBq2beXzxXkQdi2J18P4ePdqqDugtAi0QH+bZ508+GXkeH93
tBw71Lr2fWEjmL51C0NGHDSbCf+qljRA/4pO/lFJFZTl1JmNQw2g6sscDB5x
kU23bM1YrcMWLUCnf7geExPU5+yRWoRGHlfiVvDAJhPPBqVwMZjUpqgycfBb
bnWEA6UGLcOSsqWLTZAqqbouPq1C3+6OWVVTM0R34+xZ1pVonut+UUlpgUaR
SaCwpQJsxxb5g/JWFKjlHJIvlGPfn0E3Pt4Gd8PxiWSNUvzk25kdVvctpj05
q/L4IoQu2/g8VbyH9/bjr1L9CzClXUa7cfs+jtQ6+tADbsF4SpPvKG5H8nBb
pXphJrhZNnpv/Dqg2C24rOWRhHcR3LGE2E4wOiWC/cFwqArbpvdMSIjZLsP8
2HD8o/1SamJKot4yqs7aMBxrHlIj51MkOO81fv80LQwjL1yiKqkkyopXehtp
LOQ92dg3v0CiQtBls+4QerBj/vFVbxIn5C2cUrE3djmdaT8WkAhle+YUXvHG
xstZ3mohiSlxNSX6rhfmDis+1ighsXZbVDMf6IneYg+tAA6JEMOg0xo57kjJ
/bvpLZ/ENcrNPaGmA8SJ1mMn+kjUbv06mjtoh+XO4LfOAyQ0laNVZHG2mNzK
07k+RGLUiUo08oDvo2eYD5+QyKNHW+7pf4J4VorEa5KEx2OzIfU0GpgETz99
hoRgoSYwot0S7osjIGZJ6NsxXUpMTEEN1C3aXCTR3DrW87zLGEZcdBxZJjHu
HOQrPHkMmsLI6XMrJOx/np1PpyhBpl0uvSoiofC/Nj16jfL/JPEvWgfvkw==

          "]]},
        Annotation[#, "Charting`Private`Tag$406971#2"]& ], 
       TagBox[
        {RGBColor[0.560181, 0.691569, 0.194885], Thickness[Large], Opacity[
         1.], FaceForm[Opacity[0.3]], LineBox[CompressedData["
1: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
79Xwf0JH7FE=
          "]], LineBox[CompressedData["
1:eJwVjX1MzHEAhzt2y1DicvTiUhuu1EVaY9o+ztYLW6tQOdKbKTKKplIicyW9
KL3YT6hWohL15fur6+V+J5R/OtL70Ysur2lRrqWU5I/Pnj3bs30sQyL2HVuk
p6cnWdh/at8Hxie/4NCucvzYF6YP8dygnJNz8NnA2SkyziDdtcrfyYfD2Mlt
UymaC1DF15TXm3G483P3fF+aHF4arVLar4SuR8XKrqfiuDTShbmrhF/85QMV
xlnYo+PCK/cpEeSb368S5cDBfJ2Vk74Sph7CJOPJPMRK5/oNFY2QmM66mCkZ
OKh8KgL8GzHmIBPWN91GxPzF48G8RgSGmfCZ7AKMtl1Vv2YawEWV8fTbimCd
arL45tYGlDZNZg45FyM9egesX9WjbmbKJq+4BK3WpcJBj3qUaFh17sZShPY6
Ztv11OGYa+n806z7cLHjltzwqsPcQa8dFiZluDMynCJrUeC5b/Wlo/nl+Ka4
Zc/bpUCgVurzivcQ+crWsNNltegQZDrEXK1Et4yRBK+uhUWHQaHrr0d4enLl
G35iDZgE6dofflV4PqEYEvey0IUyrWdOVcNE/CJyhROLJd1lnX8sCSQ/mx7Y
b2PxW/B22nIDwfDawnOeW1h88Z4WuYsJbNJ1XRk2LFrUe07kSgi2zCwr51uw
kDePzNnuJBDpRpkhfRY81nZTwAGC5MCYwr0aipmc6vPPkhd85+4nR7opRt72
Fny+RiCO/X44soNCs4L3cnkGgZtAE5WrplCkeRvKcgj+tq2v6WmiiL4yUTxe
SOAZHiLfW0Hx66xjq1XdQu8l4Ps9oNBW+4+7NxL03yw2P3qPon1MLoxQEXx1
8TeKK6B4Et4V1NBMELvZeWlJNkVkSPTk/naCcOEHaWUmRVBRgWlcF8FscIgR
m07hOdCCot6Ff9NFZ5uTKSSH1qSODhCcTrHgq69QiBhUrdISXPQ1s+9MpDDo
Duvc/onALmnyx7sEillB1nTAV4J448duQ3EUo94KUdJ3gn/QHXBR
          "]]},
        Annotation[#, "Charting`Private`Tag$406971#3"]& ], {}}, {}}, 
     {Arrowheads[
      0.015], {ArrowBox[{{-0.1, -0.07}, {-0.1, -0.07}}], 
       ArrowBox[{{-0.1, -0.05600000000000001}, {-0.10252649006622518`, \
-0.05600000000000001}}], 
       ArrowBox[{{-0.1, -0.042}, {-0.10505298013245033`, -0.042}}], 
       ArrowBox[{{-0.1, -0.027999999999999997`}, {-0.1075794701986755, \
-0.027999999999999997`}}], 
       ArrowBox[{{-0.1, -0.013999999999999999`}, {-0.11010596026490067`, \
-0.013999999999999999`}}], ArrowBox[{{-0.1, 0.}, {-0.1, 0.}}], 
       ArrowBox[{{-0.1, 0.014000000000000012`}, {-0.11410596026490066`, 
        0.014000000000000012`}}], 
       ArrowBox[{{-0.1, 0.02800000000000001}, {-0.11557947019867551`, 
        0.02800000000000001}}], 
       ArrowBox[{{-0.1, 0.04200000000000001}, {-0.11705298013245033`, 
        0.04200000000000001}}], 
       ArrowBox[{{-0.1, 0.05600000000000002}, {-0.11852649006622518`, 
        0.05600000000000002}}], 
       ArrowBox[{{-0.1, 0.07}, {-0.12000000000000001`, 0.07}}]}, {
       ArrowBox[{{0, -0.07}, {0., -0.07}}], 
       ArrowBox[{{0, -0.05600000000000001}, {
         0.013688342696629212`, -0.05600000000000001}}], 
       ArrowBox[{{0, -0.042}, {0.023813764044943824`, -0.042}}], 
       ArrowBox[{{0, -0.027999999999999997`}, {
         0.030376264044943826`, -0.027999999999999997`}}], 
       ArrowBox[{{0, -0.013999999999999999`}, {
         0.033375842696629215`, -0.013999999999999999`}}], 
       ArrowBox[{{0, 0.}, {0.03281250000000001, 0.}}], 
       ArrowBox[{{0, 0.014000000000000012`}, {0.0304059633027523, 
         0.014000000000000012`}}], 
       ArrowBox[{{0, 0.02800000000000001}, {0.02592144495412844, 
         0.02800000000000001}}], 
       ArrowBox[{{0, 0.04200000000000001}, {0.019358944954128442`, 
         0.04200000000000001}}], 
       ArrowBox[{{0, 0.05600000000000002}, {0.010718463302752283`, 
         0.05600000000000002}}], ArrowBox[{{0, 0.07}, {0., 0.07}}]}, {
       ArrowBox[{{0.1, -0.07}, {0.1, -0.07}}], 
       ArrowBox[{{0.1, -0.05600000000000001}, {
        0.11116185263040405`, -0.05600000000000001}}], 
       ArrowBox[{{0.1, -0.042}, {0.1187607839124935, -0.042}}], 
       ArrowBox[{{0.1, -0.027999999999999997`}, {
        0.12279679384626833`, -0.027999999999999997`}}], 
       ArrowBox[{{0.1, -0.013999999999999999`}, {
        0.12326988243172857`, -0.013999999999999999`}}], 
       ArrowBox[{{0.1, 0.}, {0.12018004966887419`, 0.}}], 
       ArrowBox[{{0.1, 0.014000000000000012`}, {0.11630000303785164`, 
        0.014000000000000012`}}], 
       ArrowBox[{{0.1, 0.02800000000000001}, {0.11034197475545295`, 
        0.02800000000000001}}], 
       ArrowBox[{{0.1, 0.04200000000000001}, {0.10230596482167811`, 
        0.04200000000000001}}], 
       ArrowBox[{{0.1, 0.05600000000000002}, {0.09219197323652711, 
        0.05600000000000002}}], ArrowBox[{{0.1, 0.07}, {0.08, 0.07}}]}, 
      {RGBColor[0, 1, 0], LineBox[{{-0.1, -0.07}, {-0.1, 0.07}}]}, 
      {RGBColor[1, 0, 0], LineBox[{{0.1, -0.07}, {0.1, 0.07}}]}}},
    Axes->{True, True},
    AxesLabel->{None, None},
    AxesOrigin->{0, 0},
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
    PlotRange->{{-0.12000000000000001`, 0.12351011029982947`}, {-0.07, 0.07}},
    PlotRangeClipping->True,
    PlotRangePadding->{{
       Scaled[0.05], 
       Scaled[0.05]}, {
       Scaled[0.05], 
       Scaled[0.05]}},
    Ticks->{Automatic, Automatic}], ",", 
   GraphicsBox[{{{{}, {}, 
       TagBox[
        {RGBColor[0.368417, 0.506779, 0.709798], Thickness[Large], Opacity[
         1.], FaceForm[Opacity[0.3]], LineBox[CompressedData["
1:eJwVz31Q03UABnCi0pDlkbw53t8s4Hg53kWCY77gxYUJxLqg5K1NuuRlYgrC
QgTuOORNKGEbMEAYLARZ8rLf9o0HcbHRAfIWCJGtkzdvQwwKjxJqPnfPPff5
87FPSo9i6evp6R3T9dXyea9CQRsptSnSSLA8tMGz5FP4/sXaQM+aBF7aU/x6
nVPq6fFLyxKoQjb5TQIKS2tXhSfUEmw/Ca8T11NYzAu20/9FgiiPlw1UE4Wx
ziH7vAEJDB6ca5kXU+gyGHPKvilBltbxLl1GgXP/D9fUAAkmS+cEMb9RMDzn
7uN5qRuub8WOBu1RyDw/uDqUcxd6CzbKXBsZbr/H+eyMWReidmi8bIYMuwz2
SFnVHTRvjXTZJcnwzbhLW6dzB9KCugUFRTK49Hpx8xvFkM4/imK0y9DWXRiW
a9uO16InIsQqGSJsRNc+kYqgoP9pO6aRwXrF8N6KdyuK5Wo/AU0OE7tQJlN5
GyP3Dpkp3OR4nAatNqkZRTupY+0fyTFlXpAToG4Ew6JWFZAhxyLLdVvxrAFX
ijX869VypJydW76uFsAtIj/AuU8O/hcWpFxdC7V22TxrVg7Lz//JjDO5hYML
mQ8LduR4bpBsVWlYjfebJ34OtCAwEaSIivwrsdLPrO8IJqDfX2cMf1CCt51s
j2UlEMQI/d+wPlEIn6/6LDauESSUXjTWnOZi5r/LU/YtBKwOvjrInIPqYFZY
q87vWjz16n2agcicaJlzK8FqcUCBB8nA+LZns6eI4Ev2zBH7xAyo1tc4we0E
C8etZmnMdPz4a+w7n94h0Hi8rmniXkBrf8jZyh4C2v5Jk9FRNpL/dlMY9xKU
L6X2D3DYcPCxPFqjs9HQgViJGRvCrhe2DX26P9yTwlsJLPBauzc6pARWW/0u
iX8lo6zaoUJJCNx/bwjZtkzE1+n7xvcUBHVp8xOhs0yU91l35v1EcKBHWkE5
MiHa9S3VGya4slNzxpsTg7kbyeH6SoKoQuaoI+1jBLYPDr85QmDAn1buOx6J
XfVV0MYI1ksEXF7caZg6VzWU6awyjf23ZPsUPNLF3IPjBC2Nh7Nzb55E/O5c
kNFDgti+7y7FKxkYpPtJjScJKh7YzoWzj2I+4cOab3UOm6+bcq/zw2Zb8mXT
KYKXz+jjRlPecPCv8jWfJpj2dS7pzHFFEFdsXKtzaIJDfuaqE6IVg5uHZwji
zAOfXxTZ4ILho0mezv5p7o/3uMZweyJUben8g9h3afH8fvwPgRAFDA==
          "]], LineBox[CompressedData["
1:eJwVzX1Q03UcB3DWJRDK8oAj2BKEdHkdLeXBNLVPMyC4znTAGJjhGkdzjRoP
d1LNIi9AEYFdg7u1CBCChgjsK6Ejf7/vh4eQ4sGLhyHriA4U5cAjBCcNBfr1
x/ve79df7yClNi7tGRcXl31c/m/PmZTe320MXm0IvzuhcoOL+YPZ2jEGu7Wu
NFgUDMdfMvlV3GbQbYqfmX8gHFZSwpQOO4MN/oa+vdFRsHsszfHTJIOrEbKc
0n4ZmLvfynVy/qw7njlYnAjbifC5d/9m0HEsjjf3nhy2Xhx6cYHzouZoUeRw
EixKDkWGTzE4cym2yjn+PjQ3+Rg67jA461p1Z8+yAkLyu3fbZxkczTJsrnBR
wa7woHSPZQZlO+mr1uJMGK7vj9rqyuKCJmzlvP0MFJtUsc0CFisWD29MFOWB
oDdmaV7M4qPb2JZccgGS3P3XByQsynVnEy776MHc92dYdCKLikTTXxhggMuX
igaUahYFR3zzfRzl8BU56xF4hkWx4GmUkDWC8rA6K1vP/YUm+/7S+T0478Mh
TS2LJ1X+m4zfVkI13z30yXUWabaZ5/ZHNazGYqG4n8W6Tkfp1MEaENEbBbxJ
FttXV14pr6kFZWtDU/oSi7X2tsEyUR1I2YLXdZsopkXXbbTq60EaI5sPElBc
Szq2P9DfDMFb1JGnxBS7Ei25qaYGqL+rcYmTUDw5LZH18hrhjTcV90ZkFEe8
S0Nzzl2Br6+8/ZrzFMXAEc+q6OUmMManb6M6isYvJX7/yFugS1cQIdRTfPSR
cSDzEwtUWkstwlqK7mPm0SdBBPaW6AozOP/rPeQM2kngVqpK2cP5vtQZELOL
wAYffLQ/Urw5GKsuExP4MG0hp6uOYl7P3FrIAQI7vI6A2kyR1xbyckoCgUaN
x61rTRRXDZbPOwoIREoe129upjg3NF55r5DAhO90roKz/Xner1uKCXh2te/x
aKFoLZLykw0EPvVTl39goXj6m6Wah1UEQnt6TzzbSnE5K3wguJ1An6k1Ipnz
tOXEwxiGQGpGFb+Z8/BCnq8WCZQJczrkP1O8+rFNcaOHwONM0Y7GNooZytOO
+GECJe94rW1wVlRXCr6wERBtW7clXKN4dPImVI8TkP9mO7fOWXz8hQsPJgks
/tCpiL9OMcAILV7TBM5nN+03c/YcU43umyGwPfY7rzXOT731zpRZAu0B+fNS
K8UHUiu3CPwHaIzcaQ==
          "]]},
        Annotation[#, "Charting`Private`Tag$407692#1"]& ], 
       TagBox[
        {RGBColor[0.880722, 0.611041, 0.142051], Thickness[Large], Opacity[
         1.], FaceForm[Opacity[0.3]], LineBox[CompressedData["
1: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
          "]], LineBox[CompressedData["
1:eJwtjn001XcAh10UilnoFq1bishBC8eIfLyUkzVzvXUTur9spjdvV97dzJkb
Y7fkkuu3xo1sVja+meUtd7HellTeNXm5Mi85ytuxeydm5+xzznOeP55/PoYh
kT6hykpKSs6r/Odd3OzloCEa7ZU2r/rD1DCqd0pT0UwjocW30VF4BLPmkwYj
d2kssH0Yk59ykBnSKyJSGm/PeGUfaD8KMvL5AhpojF7zKJb3BmJ+v1P8jls0
xtcWj+ydo+DqMxu7XESjkydaf1UpDPNyLlcnloa/cZNFrTAaDgZz0vsxNKIU
I1Fj9dFIkM5vSOLRyHqq8QtzPBrdYresl5E0mhL998W68sDK0G4tOE3DtG3K
3WqRh1feVF4fl8ZS3BaqgjoHT8noR7keNEoeJuRKrOMh2J76R48+jekz1ouZ
fSlQaF9RMdlMo6WG3ZC2jg/LdS+WzzFpiFfCU5Mc+OhhTTho6dJwE5Wrnf2O
D6NHO59Zaq72+q2bvU6cR5Xh+hO2y4Vw0VC33ziRilzZNSPOcCE+9o24w05J
w5elb6wGSwtx9a3rSn92OhKC03Y3fFCI+R5pTcDFLAQl6zLChWJwktP8bujl
QJH9M2fvYAGoI/RLKUsEL/+bRoNmBTDwZAr0FvJht5J9I/PUFVgaLB3cckeM
wgfGtXsE+Zi2CmDW3/0WPzjPdt4uygM3TH+NOLcIt48tCGWXRWiKKWeoPZNg
RVnHR1WQi7K7C5eGHUvwUFXSRc5eRp1i0Sy/pBR1U02247tzUNpX8yRvVxmG
+k+27OwWItS9bKU653tcj22ze7yUhXdH2fbb9MvhVBWttaiRieYjVamf0T/i
gGs/y9pEAK7Mxf8B4yZWVMoqqKE0dOhesorPqAA7sGf6YiAf2zq0it3nfkKQ
Tb2bRmccxHyXzW84lTg5vaaNOR6B+S/ErdHhVYiZM1N5LKag3l3e+Y8hQXO6
GqOaQ+Fv3edyQ2MCj4CM5BwmhTFvOeuQKQG7YLiVY8rF/Scep/IsCTZVdJk8
2hqM9HuT78wdCP5UXqTrVQPAqDE3Oe5H8GsoK663mQ2FqCrxtwsE+t7ltJoT
G5PPe4v++pqAdWEmyo3nhT5txu+aQgLNmBdSi+OeqM32fi9ARMAfOdSoYeOB
uK9mS2aKCRpZ4j2DPc6Y49m07qhb/cuXu9oXALKqoJlDjQQp3f3rqfP70T6d
zoyUEqh3zHxCDtvj1ukuquEewVOF3zchsg8RFRK34NtOMLF2YG/iRQtQkiKD
pC4ClcPuGwWc3fAauA9JL4HsZPW+62PbYXlsU9bUAIGXIEoeEawPlhiVOjKC
Molsw8HJ96HVHdZpN0pg65jEz3+thCXdHPnxcQKl/zflXcsSvCb4F8996sk=

          "]]},
        Annotation[#, "Charting`Private`Tag$407692#2"]& ], 
       TagBox[
        {RGBColor[0.560181, 0.691569, 0.194885], Thickness[Large], Opacity[
         1.], FaceForm[Opacity[0.3]], LineBox[CompressedData["
1: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
qsn5qzhGj7M1RnqvLIf/AUZrvNo=
          "]], LineBox[CompressedData["
1:eJwVj31Q03UAhzdRiCbUwaSGHQTHS2cGgagoeh/GCUqewWS8qQFHAQnnIZhA
vIToCBnyogNvojHEqDEN98XvDzbYWMhbR9rpQAQDDBIl5BYvcjBejuiPzz33
/Pd8HGKTj8ZtYLFY3uv7n9PO6bfPbdGioc7rxVCCGRKDP+6I4mrRnmza6uji
iL75kuwjVlqYjVqm5Pt4QXHwdLGdpRZ1PEnPrgB/HDO77l66SYulnaHppb+H
opNu3r24UYuM9hDNvuIwBFvop2PWfT74KHvy83B06cKzPEy0mE4KKjqgj4DH
tqCpP1hajN8MlBkHjsNki2H/8rIGE6ayvz3mYiD1m5LxZjXoS5VwbrASULj6
T9SpYQ1CnVs/URWn4ILQ7C/pPQ0MSTsWLg5moyCvoDE7T4Mb035rQ0Wi9Y7P
OGmHNXjzVMdElojRYB59to2rQXhWnlDBLYOYcyBU3deCmLDKYZ2dBCPxeveL
5S2wPWKTz52vgChPGJImaIGb7Yr/Vq0Uqtjees7GFhg8I22a264j7k/312eb
mhGdwNskvVIFfpb8R2V0M1rPyNlmj6phPLmo9TdvRm3bfOnovhr4pj13iFKq
oV5a2FZRcwssnz0S38Nq3BpkHpa71CL3Mu+b7AkV4gJq1+6V/QSpeqFekaHC
akTwHnueHLZfZDwyN1Xhfpgy98vKOjztr7nafbUJ0WP80G72bWRWJMQm8ZrQ
a13qmV5wB1+vDM3Oyhph32shC5j7BaPnNygYp0ZIc/jv/xt+F+MvP6ARlQze
xEsfpJxSwlOveTbMZfBWv7xv2YHAaVTHP2fFYNH6sdHBmeDTt+VCx3cZvBIY
7Q59RHBF4fpdHIdB18PAk+VuBCKnF89fsRmIOidXt/sQbF0VjAwZKNjMdtco
IcGHfHZ3wW8USxLlt79+T7BT8rPCvoti8vFA1ctCgq/WPPc2tVMMvsPu2FxM
YOFiPDHeSqEqElhGSggu3fEj+xmKtAuzNTMyAt+qnvKRmxRzqV4PHNUEE5fv
70qRUYwpT8wc0hDIZTKRyQ8UeoPIJllHcMbc3MlVStGQ+CSmpZNgr821lMQS
itOxafMhegLFM3XqUhFFTHWVbeYTgh1qnb24kCJopAvVA+t/OzJz5CIKt2Pv
iadGCOJn3N12n6ewk+Ku1RiB0LtH3JlLYdGf0Oc9TnD8WqAkJIdixbrMGDVB
kMWtPziaSTElUNnlvyb4D3Rfu14=
          "]]},
        Annotation[#, "Charting`Private`Tag$407692#3"]& ], {}}, {}}, 
     {Arrowheads[
      0.015], {ArrowBox[{{-0.1, -0.07}, {-0.1, -0.07}}], 
       ArrowBox[{{-0.1, -0.05600000000000001}, {-0.10252649006622518`, \
-0.05600000000000001}}], 
       ArrowBox[{{-0.1, -0.042}, {-0.10505298013245033`, -0.042}}], 
       ArrowBox[{{-0.1, -0.027999999999999997`}, {-0.1075794701986755, \
-0.027999999999999997`}}], 
       ArrowBox[{{-0.1, -0.013999999999999999`}, {-0.11010596026490067`, \
-0.013999999999999999`}}], ArrowBox[{{-0.1, 0.}, {-0.1, 0.}}], 
       ArrowBox[{{-0.1, 0.014000000000000012`}, {-0.11410596026490066`, 
        0.014000000000000012`}}], 
       ArrowBox[{{-0.1, 0.02800000000000001}, {-0.11557947019867551`, 
        0.02800000000000001}}], 
       ArrowBox[{{-0.1, 0.04200000000000001}, {-0.11705298013245033`, 
        0.04200000000000001}}], 
       ArrowBox[{{-0.1, 0.05600000000000002}, {-0.11852649006622518`, 
        0.05600000000000002}}], 
       ArrowBox[{{-0.1, 0.07}, {-0.12000000000000001`, 0.07}}]}, {
       ArrowBox[{{0, -0.07}, {0., -0.07}}], 
       ArrowBox[{{0, -0.05600000000000001}, {
         0.010950674157303369`, -0.05600000000000001}}], 
       ArrowBox[{{0, -0.042}, {0.01905101123595506, -0.042}}], 
       ArrowBox[{{0, -0.027999999999999997`}, {
         0.024301011235955065`, -0.027999999999999997`}}], 
       ArrowBox[{{0, -0.013999999999999999`}, {
         0.026700674157303372`, -0.013999999999999999`}}], 
       ArrowBox[{{0, 0.}, {0.026250000000000006`, 0.}}], 
       ArrowBox[{{0, 0.014000000000000012`}, {0.02432477064220184, 
         0.014000000000000012`}}], 
       ArrowBox[{{0, 0.02800000000000001}, {0.020737155963302754`, 
         0.02800000000000001}}], 
       ArrowBox[{{0, 0.04200000000000001}, {0.015487155963302754`, 
         0.04200000000000001}}], 
       ArrowBox[{{0, 0.05600000000000002}, {0.008574770642201825, 
         0.05600000000000002}}], ArrowBox[{{0, 0.07}, {0., 0.07}}]}, {
       ArrowBox[{{0.1, -0.07}, {0.1, -0.07}}], 
       ArrowBox[{{0.1, -0.05600000000000001}, {
        0.10842418409107821`, -0.05600000000000001}}], 
       ArrowBox[{{0.1, -0.042}, {0.11399803110350473`, -0.042}}], 
       ArrowBox[{{0.1, -0.027999999999999997`}, {
        0.11672154103727958`, -0.027999999999999997`}}], 
       ArrowBox[{{0.1, -0.013999999999999999`}, {
        0.11659471389240272`, -0.013999999999999999`}}], 
       ArrowBox[{{0.1, 0.}, {0.11361754966887419`, 0.}}], 
       ArrowBox[{{0.1, 0.014000000000000012`}, {0.11021881037730118`, 
        0.014000000000000012`}}], 
       ArrowBox[{{0.1, 0.02800000000000001}, {0.10515768576462727`, 
        0.02800000000000001}}], 
       ArrowBox[{{0.1, 0.04200000000000001}, {0.09843417583085243, 
        0.04200000000000001}}], 
       ArrowBox[{{0.1, 0.05600000000000002}, {0.09004828057597666, 
        0.05600000000000002}}], ArrowBox[{{0.1, 0.07}, {0.08, 0.07}}]}, 
      {RGBColor[0, 1, 0], LineBox[{{-0.1, -0.07}, {-0.1, 0.07}}]}, 
      {RGBColor[1, 0, 0], LineBox[{{0.1, -0.07}, {0.1, 0.07}}]}}},
    Axes->{True, True},
    AxesLabel->{None, None},
    AxesOrigin->{0, 0},
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
    PlotRange->{{-0.12000000000000001`, 0.11701723880479975`}, {-0.07, 0.07}},
    PlotRangeClipping->True,
    PlotRangePadding->{{
       Scaled[0.05], 
       Scaled[0.05]}, {
       Scaled[0.05], 
       Scaled[0.05]}},
    Ticks->{Automatic, Automatic}], ",", 
   GraphicsBox[{{{{}, {}, 
       TagBox[
        {RGBColor[0.368417, 0.506779, 0.709798], Thickness[Large], Opacity[
         1.], FaceForm[Opacity[0.3]], LineBox[CompressedData["
1:eJwVz31Q03UABnCi0pDlkbw53t8s4Hg53kWCY77gxYUJxLqg5K1NuuRlYgrC
QgTuOORNKGEbMEAYLARZ8rLf9o0HcbHRAfIWCJGtkzdvQwwKjxJqPnfPPff5
87FPSo9i6evp6R3T9dXyea9CQRsptSnSSLA8tMGz5FP4/sXaQM+aBF7aU/x6
nVPq6fFLyxKoQjb5TQIKS2tXhSfUEmw/Ca8T11NYzAu20/9FgiiPlw1UE4Wx
ziH7vAEJDB6ca5kXU+gyGHPKvilBltbxLl1GgXP/D9fUAAkmS+cEMb9RMDzn
7uN5qRuub8WOBu1RyDw/uDqUcxd6CzbKXBsZbr/H+eyMWReidmi8bIYMuwz2
SFnVHTRvjXTZJcnwzbhLW6dzB9KCugUFRTK49Hpx8xvFkM4/imK0y9DWXRiW
a9uO16InIsQqGSJsRNc+kYqgoP9pO6aRwXrF8N6KdyuK5Wo/AU0OE7tQJlN5
GyP3Dpkp3OR4nAatNqkZRTupY+0fyTFlXpAToG4Ew6JWFZAhxyLLdVvxrAFX
ijX869VypJydW76uFsAtIj/AuU8O/hcWpFxdC7V22TxrVg7Lz//JjDO5hYML
mQ8LduR4bpBsVWlYjfebJ34OtCAwEaSIivwrsdLPrO8IJqDfX2cMf1CCt51s
j2UlEMQI/d+wPlEIn6/6LDauESSUXjTWnOZi5r/LU/YtBKwOvjrInIPqYFZY
q87vWjz16n2agcicaJlzK8FqcUCBB8nA+LZns6eI4Ev2zBH7xAyo1tc4we0E
C8etZmnMdPz4a+w7n94h0Hi8rmniXkBrf8jZyh4C2v5Jk9FRNpL/dlMY9xKU
L6X2D3DYcPCxPFqjs9HQgViJGRvCrhe2DX26P9yTwlsJLPBauzc6pARWW/0u
iX8lo6zaoUJJCNx/bwjZtkzE1+n7xvcUBHVp8xOhs0yU91l35v1EcKBHWkE5
MiHa9S3VGya4slNzxpsTg7kbyeH6SoKoQuaoI+1jBLYPDr85QmDAn1buOx6J
XfVV0MYI1ksEXF7caZg6VzWU6awyjf23ZPsUPNLF3IPjBC2Nh7Nzb55E/O5c
kNFDgti+7y7FKxkYpPtJjScJKh7YzoWzj2I+4cOab3UOm6+bcq/zw2Zb8mXT
KYKXz+jjRlPecPCv8jWfJpj2dS7pzHFFEFdsXKtzaIJDfuaqE6IVg5uHZwji
zAOfXxTZ4ILho0mezv5p7o/3uMZweyJUben8g9h3afH8fvwPgRAFDA==
          "]], LineBox[CompressedData["
1:eJwVzX1Q03UcB3DWJRDK8oAj2BKEdHkdLeXBNLVPMyC4znTAGJjhGkdzjRoP
d1LNIi9AEYFdg7u1CBCChgjsK6Ejf7/vh4eQ4sGLhyHriA4U5cAjBCcNBfr1
x/ve79df7yClNi7tGRcXl31c/m/PmZTe320MXm0IvzuhcoOL+YPZ2jEGu7Wu
NFgUDMdfMvlV3GbQbYqfmX8gHFZSwpQOO4MN/oa+vdFRsHsszfHTJIOrEbKc
0n4ZmLvfynVy/qw7njlYnAjbifC5d/9m0HEsjjf3nhy2Xhx6cYHzouZoUeRw
EixKDkWGTzE4cym2yjn+PjQ3+Rg67jA461p1Z8+yAkLyu3fbZxkczTJsrnBR
wa7woHSPZQZlO+mr1uJMGK7vj9rqyuKCJmzlvP0MFJtUsc0CFisWD29MFOWB
oDdmaV7M4qPb2JZccgGS3P3XByQsynVnEy776MHc92dYdCKLikTTXxhggMuX
igaUahYFR3zzfRzl8BU56xF4hkWx4GmUkDWC8rA6K1vP/YUm+/7S+T0478Mh
TS2LJ1X+m4zfVkI13z30yXUWabaZ5/ZHNazGYqG4n8W6Tkfp1MEaENEbBbxJ
FttXV14pr6kFZWtDU/oSi7X2tsEyUR1I2YLXdZsopkXXbbTq60EaI5sPElBc
Szq2P9DfDMFb1JGnxBS7Ei25qaYGqL+rcYmTUDw5LZH18hrhjTcV90ZkFEe8
S0Nzzl2Br6+8/ZrzFMXAEc+q6OUmMManb6M6isYvJX7/yFugS1cQIdRTfPSR
cSDzEwtUWkstwlqK7mPm0SdBBPaW6AozOP/rPeQM2kngVqpK2cP5vtQZELOL
wAYffLQ/Urw5GKsuExP4MG0hp6uOYl7P3FrIAQI7vI6A2kyR1xbyckoCgUaN
x61rTRRXDZbPOwoIREoe129upjg3NF55r5DAhO90roKz/Xner1uKCXh2te/x
aKFoLZLykw0EPvVTl39goXj6m6Wah1UEQnt6TzzbSnE5K3wguJ1An6k1Ipnz
tOXEwxiGQGpGFb+Z8/BCnq8WCZQJczrkP1O8+rFNcaOHwONM0Y7GNooZytOO
+GECJe94rW1wVlRXCr6wERBtW7clXKN4dPImVI8TkP9mO7fOWXz8hQsPJgks
/tCpiL9OMcAILV7TBM5nN+03c/YcU43umyGwPfY7rzXOT731zpRZAu0B+fNS
K8UHUiu3CPwHaIzcaQ==
          "]]},
        Annotation[#, "Charting`Private`Tag$408441#1"]& ], 
       TagBox[
        {RGBColor[0.880722, 0.611041, 0.142051], Thickness[Large], Opacity[
         1.], FaceForm[Opacity[0.3]], LineBox[CompressedData["
1:eJw11nk0ldsbB3BXGZskKlMpZEhFuZRpa9JtkoiUQ2RMKUMi8xmR+bw7s5OQ
oUzHUEKeyA0VSVKiDLnmNJcG+u3++L1r7fWuz9p/7LWevff32WtOnrNwERQQ
EGgm48///9/U4epV7Ek+GA8xFN91zxpf/zZWXznGB+vmLzqGXYuQe6bMieH/
+LAS99p1tyug4bHAKzsH+DCill8q3rQB9YUZKQo+40OmhbGlb4kRaituXBNW
zwe9/DNpu5gHUYlYm/LFRD5omLeqjWraIe+GQQ1PPT70+Fj0vsnxRAvsN2zZ
dL4M1i++F2YT4od83e6ONgaVgollatdRfhDKUfWmmS0vgbQZ0YoBITqa3e7a
Gsstgv4X8u+uP2ai0Hb1/GK1GyArW14mkMtB6lXaIfSsQqAdqGy23BaF8stY
psGrC2D9p82tt/2i0cFVeeFHq/OgRjk3a5gfixRGFlSMbL4G7X+JiwSlxSMp
RRNr6+YcmOSNCDnkJ6DXZ2Fq6mQ2HDelVSsFJ6LOFcwgvYEsiNmZxtuqyUV9
Lhpfm6Z5UH3j3lxGJxe5mz//jzGQDj/TJHK+dXHRbZqWNLMrHTZn36s3f85F
4qeidjFb0uHijC1trpeLbtANcphl6eDdZKW15z8umi6/4sAKTweRl54G8d+4
6Ly0ey9bMR3afm56PSNLIfrLmY5IhzSol/lltdmOQmnOsnVxAykglJowIHqC
QsHD36ftnqVAgFax9GsHCtk796zZ8CAFBvNDw1jOFFrrnBLxsCIF6qoZhxtO
U+i603JL0YgUyDy55N2PixSqOSk5Qd+QAoLP9SXOXqbQSwfxlX6ByXDbtnNS
JplCdQPj+3adS4bMmQ/eTSkU4jm0hixzTobRwNYQ6QwKnXSIfMM/mAwRV3uo
/GwKTZwQLp1WTIapC6G3o0sp9MNe0NS9OQnsd7ycsGyhkJzdD19bqSQQPqTL
+9JKofbf6aZbRZNAaPUgXH5IIUa2kYz0r8sgLqZk9qSdQmOj4fXtby7DJiGb
pL+fUeimj4jYjorL0JfJeVY+SCHzSCmemsVleGT+dXH4dwpxKja2fInH4NSi
EfPuB4W2WXekdTIxmM8r8bf7RaGpGW/PUn8MW+5lper8ppClcZXkqRMYJE7r
iXXMx0ix1cCubyMGLVv15NolGNW+/udjYxsFwndWn3VRxui9mJN8wgIKyrz1
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
7ekw6baG0qHylWs1MCov0xnucxOB/wHcy1a1
          "]], LineBox[CompressedData["
1:eJwtj3kwnAcAxW0mrogaVjSuNSKOZlgJmYgjXols0EncLFpWlB1EHG1cIVvN
ImywfGu6FXVWsyQS36bbInEkIkzrSByLlrSljqoRZ12bUZ3pm3nz++P983uG
V+K8Iw7Iycl9uN//GJIz33bBTABx9ek/J9iKaBi4nGuvIUBKp89Th3x//FBl
6RutLsCGpzdl4XIAZt2m6F1qAizHePBcBpnoqlfZijsswEyVW8X2WDBSHl4b
/1pegHmFiulTayyIW6+POW4SGE4kVMrk2EjdzenuGyXgZ9xm0ZSfgAaff9RG
pATid6bj51oScLcwOf/XEQJ5A8rfa80noEosNp0dItCW6md33TkRAbUq4ysD
BMz6FxlWm4m4es7VcrqbgCxJl/WA9Tnszi7WWfxIoLonpbjSOhkRzN9GwwgC
SzHWm7fH0yHjNTrrFxPolHg+yTyUgW9zjNpH+QSEe7GcNPsMHBtdWnQrIHCe
ECle/SYDE1IdPaPc/b1F/6hH2E24BPb0iG4ScFJWsj3yFwdLUanBlCgC7j7X
Wj3TM1HVYh05Z0egbNl5b4LHha6CYeidkWKsj7ZLAgvykFXW36EeXYyAG5m+
9Zp8yOafUyLmisDyL51sp+3/4HwRbMoqgs4lrSzNjRLE7M1zTAb4oOvILui2
CvHYT++naSM+lqwCtVqe3cUuK6adulSAULa2vLC4HFSl5eGhoHy0fSaiKL6q
BOeg7o3sbh5qn20U/uFQDXPF+I5DRnlo3tk8UVJdA61wmveE423UjEv6BCa1
ENUWDJayshHBqN17zP8O9mOl0cJzXLxjetoaaItw0uWIe6ril3ju38gJL61D
RLj7w94WDkKnnPy6Kfexl7V5oOhVGoaohVbJOQ+QwTW0vn8wCQZDqhWMtQYw
7v28qmCQAGGG09G3AY8wkMjVUaezsR4p7E2IbQQ9toN7coYJJaloeNeQhNFF
XuadW0xsUV9vGxqTeCv/UfOYIRNzXts0VzMS6afqxp1CAvCyzy1KQCeh4fT7
pL/UD9yuhXfm9iSMnW3XeZ3eoEjMTUN8SfCFFqTLcTfsEI2pHdkk7qXK2Cqf
uGLh9Vj5bC6Jr45LBOKSixhXo7w4nE/CTTrtUa3AQBPP671AgkRF/ZlLinPO
SLq1Wr1SQUKP/ml3/3lbrCWe7j3WTMKbZr8aTdpgqvHjFdenJCYrZ5R6aGcw
uMTVimsnwQiRbL/YsoI4eoT1pIuETQpnkPD5APFXkjZ8BklYZkXO/HLCBKzK
cp20ERLOTesDNRQjeLx5icoxEj76qsykYG3Qg97PW3xDQhauaU9VoIImxCON
KRJby0Ol7FBlqErZw2dn9n2CbBxYYduOMip/O2SehNz/WfRqomX9TeJf/DDn
1A==
          "]]},
        Annotation[#, "Charting`Private`Tag$408441#2"]& ], 
       TagBox[
        {RGBColor[0.560181, 0.691569, 0.194885], Thickness[Large], Opacity[
         1.], FaceForm[Opacity[0.3]], LineBox[CompressedData["
1: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
i35roYK/dqLekY3K8tQHei7xwf8DOJ0S
          "]], LineBox[CompressedData["
1:eJwVx31Q03UAx/GNK/AufApuwUw8QLA4o3ho4fnwSU8WVPKgbDxowKE4wyOC
SnCQafEw2CHoxCbReNitA4HcF75jDz+EiIcAoWSAjlBPCMEmoTSmDgSzP973
urd7Utr+ZDsWixX0ov9dSTs7LhYxaKoLnLolcoB+xmaXdZRBZ5p9m4e3B4Q5
66cqjzBwmFiTnrc9EL/7RMVPJzKoc5X18/jB6KrYEhAWy2DxXUFmyTUBMj35
F3tjGGR1HmjdUSzEmRTP9j0v3hqxn20Oi4ZiGzeJF83g0fFw6V5jDB6PP53l
Chjcqw6ttJkOYrOfmDMWweC+feVffpZEfLmxWPdmCIORDNkrFSwRzMuWoNd5
DARebW/pitORnZRweGk9g7njAU8kYzkIL4jp3DVjQMWjPc9vSXNR3dgUc1lv
wMLNdk3s2SIsD+1TmaUGRGefibrsXIp+jz70CA1IFJbfbneToZAU7PzT3QDu
Pk6es7UM5zrqe2+b9fDlPgvecFWOXfaRzbp6Peb8YzmGjh9wUHs3tShVjwSR
68vy8wpc9OrLPu+tR9sXtWyH61XoD72ZZb2rg6rDWjKxowYLX+W9JLukg37x
iU9ZjRKBHw+urQnRQTmmGbzgrYL8wxXBNZsWyXzV8+bSn/Ag2E/QVaXFckzE
tk2utZD/4ehiCNbiV6H6m8PldeheqF8u/qcFCZO7Bb+x6xGXavfJsaIWDDuV
+GcWNGBJ4a7N9WnBpuHVlXxLI9aVW3KT+zSQf73b5WH0FawaP50vOaTBwlH5
QHqqGh/ltOxtsFCsulE7suROwDVeHb8+T/HUacjm7kVwakkdYH1IMRNpcwt5
g2CpN8575yxFz2Dopxd8CUxhrZz+KYrcbvPy1u0ELvZaT9MoBVuzdUt8FIHB
QzrXpaVYlKlP/pJPMGV2VE5oKMxDJsV0IUF1vthlpZlibC27y7GYYCTIlc9T
U+ikkWtiZQQbJEcalLUUJ777t2a+kuAdo78q4xKFJSNwwENPIBlOPyb9nmJS
fWg+pJUgo7ZiVllGYZzL5aS1E6wMaN4bOUfRlDKayHQTLLIem/yKKD5POmE9
YCT4WyFThkgoEqsUXPEoQcq6jW8n5FOE3+lBlYlg82cWifRbCt+414pm7xDE
x70fXX2awk2OK69OEvhwT063nKJYfUM0EnSPoLDxR95ADsUzp1Jb/H2CbOef
P5gQU8xG6tzyHhD8B83UyT0=
          "]]},
        Annotation[#, "Charting`Private`Tag$408441#3"]& ], {}}, {}}, 
     {Arrowheads[
      0.015], {ArrowBox[{{-0.1, -0.07}, {-0.1, -0.07}}], 
       ArrowBox[{{-0.1, -0.05600000000000001}, {-0.10252649006622518`, \
-0.05600000000000001}}], 
       ArrowBox[{{-0.1, -0.042}, {-0.10505298013245033`, -0.042}}], 
       ArrowBox[{{-0.1, -0.027999999999999997`}, {-0.1075794701986755, \
-0.027999999999999997`}}], 
       ArrowBox[{{-0.1, -0.013999999999999999`}, {-0.11010596026490067`, \
-0.013999999999999999`}}], ArrowBox[{{-0.1, 0.}, {-0.1, 0.}}], 
       ArrowBox[{{-0.1, 0.014000000000000012`}, {-0.11410596026490066`, 
        0.014000000000000012`}}], 
       ArrowBox[{{-0.1, 0.02800000000000001}, {-0.11557947019867551`, 
        0.02800000000000001}}], 
       ArrowBox[{{-0.1, 0.04200000000000001}, {-0.11705298013245033`, 
        0.04200000000000001}}], 
       ArrowBox[{{-0.1, 0.05600000000000002}, {-0.11852649006622518`, 
        0.05600000000000002}}], 
       ArrowBox[{{-0.1, 0.07}, {-0.12000000000000001`, 0.07}}]}, {
       ArrowBox[{{0, -0.07}, {0., -0.07}}], 
       ArrowBox[{{0, -0.05600000000000001}, {
         0.008213005617977527, -0.05600000000000001}}], 
       ArrowBox[{{0, -0.042}, {0.014288258426966296`, -0.042}}], 
       ArrowBox[{{0, -0.027999999999999997`}, {
         0.0182257584269663, -0.027999999999999997`}}], 
       ArrowBox[{{0, -0.013999999999999999`}, {
         0.020025505617977533`, -0.013999999999999999`}}], 
       ArrowBox[{{0, 0.}, {0.019687500000000007`, 0.}}], 
       ArrowBox[{{0, 0.014000000000000012`}, {0.01824357798165138, 
         0.014000000000000012`}}], 
       ArrowBox[{{0, 0.02800000000000001}, {0.015552866972477066`, 
         0.02800000000000001}}], 
       ArrowBox[{{0, 0.04200000000000001}, {0.011615366972477066`, 
         0.04200000000000001}}], 
       ArrowBox[{{0, 0.05600000000000002}, {0.00643107798165137, 
         0.05600000000000002}}], ArrowBox[{{0, 0.07}, {0., 0.07}}]}, {
       ArrowBox[{{0.1, -0.07}, {0.1, -0.07}}], 
       ArrowBox[{{0.1, -0.05600000000000001}, {
        0.10568651555175237`, -0.05600000000000001}}], 
       ArrowBox[{{0.1, -0.042}, {0.10923527829451597`, -0.042}}], 
       ArrowBox[{{0.1, -0.027999999999999997`}, {
        0.11064628822829081`, -0.027999999999999997`}}], 
       ArrowBox[{{0.1, -0.013999999999999999`}, {
        0.10991954535307688`, -0.013999999999999999`}}], 
       ArrowBox[{{0.1, 0.}, {0.10705504966887418`, 0.}}], 
       ArrowBox[{{0.1, 0.014000000000000012`}, {0.10413761771675072`, 
        0.014000000000000012`}}], 
       ArrowBox[{{0.1, 0.02800000000000001}, {0.09997339677380157, 
        0.02800000000000001}}], 
       ArrowBox[{{0.1, 0.04200000000000001}, {0.09456238684002674, 
        0.04200000000000001}}], 
       ArrowBox[{{0.1, 0.05600000000000002}, {0.08790458791542621, 
        0.05600000000000002}}], ArrowBox[{{0.1, 0.07}, {0.08, 0.07}}]}, 
      {RGBColor[0, 1, 0], LineBox[{{-0.1, -0.07}, {-0.1, 0.07}}]}, 
      {RGBColor[1, 0, 0], LineBox[{{0.1, -0.07}, {0.1, 0.07}}]}}},
    Axes->{True, True},
    AxesLabel->{None, None},
    AxesOrigin->{0, 0},
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
    PlotRange->{{-0.12000000000000001`, 0.11067366635759632`}, {-0.07, 0.07}},
    PlotRangeClipping->True,
    PlotRangePadding->{{
       Scaled[0.05], 
       Scaled[0.05]}, {
       Scaled[0.05], 
       Scaled[0.05]}},
    Ticks->{Automatic, Automatic}], ",", 
   GraphicsBox[{{{{}, {}, 
       TagBox[
        {RGBColor[0.368417, 0.506779, 0.709798], Thickness[Large], Opacity[
         1.], FaceForm[Opacity[0.3]], LineBox[CompressedData["
1:eJwVz31Q03UABnCi0pDlkbw53t8s4Hg53kWCY77gxYUJxLqg5K1NuuRlYgrC
QgTuOORNKGEbMEAYLARZ8rLf9o0HcbHRAfIWCJGtkzdvQwwKjxJqPnfPPff5
87FPSo9i6evp6R3T9dXyea9CQRsptSnSSLA8tMGz5FP4/sXaQM+aBF7aU/x6
nVPq6fFLyxKoQjb5TQIKS2tXhSfUEmw/Ca8T11NYzAu20/9FgiiPlw1UE4Wx
ziH7vAEJDB6ca5kXU+gyGHPKvilBltbxLl1GgXP/D9fUAAkmS+cEMb9RMDzn
7uN5qRuub8WOBu1RyDw/uDqUcxd6CzbKXBsZbr/H+eyMWReidmi8bIYMuwz2
SFnVHTRvjXTZJcnwzbhLW6dzB9KCugUFRTK49Hpx8xvFkM4/imK0y9DWXRiW
a9uO16InIsQqGSJsRNc+kYqgoP9pO6aRwXrF8N6KdyuK5Wo/AU0OE7tQJlN5
GyP3Dpkp3OR4nAatNqkZRTupY+0fyTFlXpAToG4Ew6JWFZAhxyLLdVvxrAFX
ijX869VypJydW76uFsAtIj/AuU8O/hcWpFxdC7V22TxrVg7Lz//JjDO5hYML
mQ8LduR4bpBsVWlYjfebJ34OtCAwEaSIivwrsdLPrO8IJqDfX2cMf1CCt51s
j2UlEMQI/d+wPlEIn6/6LDauESSUXjTWnOZi5r/LU/YtBKwOvjrInIPqYFZY
q87vWjz16n2agcicaJlzK8FqcUCBB8nA+LZns6eI4Ev2zBH7xAyo1tc4we0E
C8etZmnMdPz4a+w7n94h0Hi8rmniXkBrf8jZyh4C2v5Jk9FRNpL/dlMY9xKU
L6X2D3DYcPCxPFqjs9HQgViJGRvCrhe2DX26P9yTwlsJLPBauzc6pARWW/0u
iX8lo6zaoUJJCNx/bwjZtkzE1+n7xvcUBHVp8xOhs0yU91l35v1EcKBHWkE5
MiHa9S3VGya4slNzxpsTg7kbyeH6SoKoQuaoI+1jBLYPDr85QmDAn1buOx6J
XfVV0MYI1ksEXF7caZg6VzWU6awyjf23ZPsUPNLF3IPjBC2Nh7Nzb55E/O5c
kNFDgti+7y7FKxkYpPtJjScJKh7YzoWzj2I+4cOab3UOm6+bcq/zw2Zb8mXT
KYKXz+jjRlPecPCv8jWfJpj2dS7pzHFFEFdsXKtzaIJDfuaqE6IVg5uHZwji
zAOfXxTZ4ILho0mezv5p7o/3uMZweyJUben8g9h3afH8fvwPgRAFDA==
          "]], LineBox[CompressedData["
1:eJwVzX1Q03UcB3DWJRDK8oAj2BKEdHkdLeXBNLVPMyC4znTAGJjhGkdzjRoP
d1LNIi9AEYFdg7u1CBCChgjsK6Ejf7/vh4eQ4sGLhyHriA4U5cAjBCcNBfr1
x/ve79df7yClNi7tGRcXl31c/m/PmZTe320MXm0IvzuhcoOL+YPZ2jEGu7Wu
NFgUDMdfMvlV3GbQbYqfmX8gHFZSwpQOO4MN/oa+vdFRsHsszfHTJIOrEbKc
0n4ZmLvfynVy/qw7njlYnAjbifC5d/9m0HEsjjf3nhy2Xhx6cYHzouZoUeRw
EixKDkWGTzE4cym2yjn+PjQ3+Rg67jA461p1Z8+yAkLyu3fbZxkczTJsrnBR
wa7woHSPZQZlO+mr1uJMGK7vj9rqyuKCJmzlvP0MFJtUsc0CFisWD29MFOWB
oDdmaV7M4qPb2JZccgGS3P3XByQsynVnEy776MHc92dYdCKLikTTXxhggMuX
igaUahYFR3zzfRzl8BU56xF4hkWx4GmUkDWC8rA6K1vP/YUm+/7S+T0478Mh
TS2LJ1X+m4zfVkI13z30yXUWabaZ5/ZHNazGYqG4n8W6Tkfp1MEaENEbBbxJ
FttXV14pr6kFZWtDU/oSi7X2tsEyUR1I2YLXdZsopkXXbbTq60EaI5sPElBc
Szq2P9DfDMFb1JGnxBS7Ei25qaYGqL+rcYmTUDw5LZH18hrhjTcV90ZkFEe8
S0Nzzl2Br6+8/ZrzFMXAEc+q6OUmMManb6M6isYvJX7/yFugS1cQIdRTfPSR
cSDzEwtUWkstwlqK7mPm0SdBBPaW6AozOP/rPeQM2kngVqpK2cP5vtQZELOL
wAYffLQ/Urw5GKsuExP4MG0hp6uOYl7P3FrIAQI7vI6A2kyR1xbyckoCgUaN
x61rTRRXDZbPOwoIREoe129upjg3NF55r5DAhO90roKz/Xner1uKCXh2te/x
aKFoLZLykw0EPvVTl39goXj6m6Wah1UEQnt6TzzbSnE5K3wguJ1An6k1Ipnz
tOXEwxiGQGpGFb+Z8/BCnq8WCZQJczrkP1O8+rFNcaOHwONM0Y7GNooZytOO
+GECJe94rW1wVlRXCr6wERBtW7clXKN4dPImVI8TkP9mO7fOWXz8hQsPJgks
/tCpiL9OMcAILV7TBM5nN+03c/YcU43umyGwPfY7rzXOT731zpRZAu0B+fNS
K8UHUiu3CPwHaIzcaQ==
          "]]},
        Annotation[#, "Charting`Private`Tag$409200#1"]& ], 
       TagBox[
        {RGBColor[0.880722, 0.611041, 0.142051], Thickness[Large], Opacity[
         1.], FaceForm[Opacity[0.3]], LineBox[CompressedData["
1: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
          "]], LineBox[CompressedData["
1:eJwtjns41XcAhx0Uwix0QnNKkcuD5vIYkY9LeVgzx/Uk4mQTKrnl7iTLcfkZ
mcucWeNENisb38xyy1ks1ZLKXZPLkbnkketj50ysPc8+z/M+7x/vPx+toAiP
YEkJCQm7d/zng4E5m/7jFHpqzV+NhMhgSjVMQdxOIaHDs9Um1wfLhnMak/co
rDE9aHOfspAVNFRIBBQWz7nlHO05ATL5+RpaKExddykXDflh9Yht/P7bFGa2
l0+arLDh4LEcu1lGoS+6UP6aRAhWRYGByrEUvHXajBpzo2CtsSLojKEQKZ6M
nG6OQoJgdWdSNAXqqdwv9JkoDPAcqZcRFNoSvQ/HOkSDkanUVXKWgl73vJPp
ejReubOLhgMpbMTtYdewL8KVP/VRgQuFiocJBXyzeHD3pf4xqE5h4ZzZetZw
CsRKX0vpqlHoaGC2pO3gwHjHi82LdAq8rfDUJGsOBhmz1ooqFBwLq2XOf8eB
9qMDz4wV3vVmTTW305dQpyV/2mIzG/Zysla7ZlNRILyuzZrIxseeF+4yU9Jw
ufKN6VhlNq4tOmyN5KQj4VSafssH2VgdFDT45lHwT1ahhedmgZWc5nVTNR/i
nJ9ZJmOZYPuUvhQwCuHmfUt7zCATGq50rupaMSy3cm5mhWXAWGPj2J67PHzz
QKfxEJeLBVNfevO9b/GD3XLfnbJ0BIaob+MVlOHOybVc4VdX0BZTTZN5xseW
pLKHNPcLVN1buzphU4GH0vx+cj4NTeJ1g+KKSjTNt1nM6F9G5XDDk6KDVRgf
Ce04MMBBsFPVVn3+97gR2235eCMJb08wrfaqV8O2LkpxXS4B7T51qZ+V/oij
DiMMM91YBArtvR/QbmFLqqqGPR6FXpWrpvGZNWD6DS7k+YVjb69iudPKT/A3
b3aU6zsDHsde7Q2rFqEL27rpMwFYPcPrigqvQ8yKgdRjHhOyA9V9/2gRtKfL
0OpZTPyt8lykpUPg4puZnE9nYtpdxHDWI2CWTHSx9NzQ+cQlrMiYYHdNv+4j
TVek3597a2hN8KfkemmztAtoDYa6AV4EvwYz4oba7SAurEv8LYNA3b26VMbW
DnPPh8r+yiZgZCxFOkYDw0q03xVyCRRiXgiMAo6gMcf9Pd9CAs6kc6ucuRXi
rixXLJUTtDJ4h8YGP8RKtHnX/qZ3fzkiB6uSQxDW+S85txKkDIzIsy8ZoWch
nR4hIJDtXfqEHNfH7bP97Jb7BE/FXl8GCfchMihuzbOHYHb7qElinibY/DKN
pH4CqeNOu7gsdbiNdoI/RCAMrT98Y/p9GJ/cTc2PErhxI0UXTsmBwUOtspCg
ii/ceWxOAooDIX2WUwQWNkmc4teLthsq+aKAGQKJ/zfv3sjgvib4F+GM59g=

          "]]},
        Annotation[#, "Charting`Private`Tag$409200#2"]& ], 
       TagBox[
        {RGBColor[0.560181, 0.691569, 0.194885], Thickness[Large], Opacity[
         1.], FaceForm[Opacity[0.3]], LineBox[CompressedData["
1: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
0nwN7oDzSvg/h5kS+g==
          "]], LineBox[CompressedData["
1:eJwVi2lQ1GUAh3ehIAdXJ44ltgZnKQENYcLNQBh+wSyIMSj3USnEOWDKkWiC
DpqgCS3XYq4LLlcrbCLwwru7/78QhIRQiMilMIPMgCiGiCBuypXRh2eeeT48
wqikgFg9DofjtM7/3nhDaZTGsmhUiabG4g2xIbPbvZBh0ZFk0GplbYX7esU+
LzQsDCc2pWS7iLDIc3Koa2KhspD+tcvLEw6OdBfvOovlT4OP5/cEw7YoUyer
ZfF9R2CLqyQEjV1HJR+tt84vgDuzLxRpTWPeLtdYzB/anyseCEOzpPJZnIrF
o4q9ZUsjX0Hsa/Bco2TxxKDs4SeLkfB7vaPfWcFiKFVqVMqJxxf/rhn35LEI
3tq6g5GkIDVZ+/hAMou5Qztf/Th6EuaSbXc5vixK5z3ejOVm4c9LgqvjNixe
3m9Th+flYI/cddhEn0VoxpmgX00LYLR73/bBEQaRIfIHbZZSiFZdfezqGQh8
+dmmuou4wtV388xiYC9Y9Xz/Nxk6VXe0sYEM5hzD+TfaS+AnLZxXfMggIt7i
bVmRAjN9fwccfaZF63c1XMO75ZBv0+xUMloo23X5E66VqE77eLrrBy3Y5Vfb
L1ZWIeHANz/pe2lRNaruLbZWgug//ExgpEWsl/JNU8FVuA0krjzo1mAtzM95
i0UN+B4VEYnZGtwMaciMlqvQZKyOCRJrEDHpHtzFvYbdnldCY1fUGDTJdzx+
vhZ57nEZfLUaWwZ5ZV6L1+FGpiLMjqghO+X+3vPQetj1TYUxlmq8jJPdTjnc
gBjrhrr0AYp37tUMrQgJ3u1oThP2U7w26V8SbiXomWWNu/sopv2XLL1tCWKm
JXdMeylu9e5NKLYnsDtR7FvbRZHVObNm50LA3/xBwmALBVdtZ3MwiCDoLTO+
XjXFsrThxO/nCIo8UkuqlBQz/SOKxxcIxnk3/xH/QjG6mfvHRgmB3MfZ4XwF
BZPrvylcSqCKPle9oZTi2NkXlQtlBEKDErVBIcViqui2FUtgayaUK/MpJhu+
XvBuIXAll4PEeRQDc1n8pDaCnIIonzO5FI2Jw5HNnQQtTwM+X8qmSI46pgsc
WP+jDw/9nEURWa4QpA8TlMenu4nOUuwfv4XyEQKt+bfFR05T2H9pnjM7ThDc
4XfaKJPCUoZ640kCzqqNR80pCt69+CGnRwRM+8Ko+CTFqknB0sEnBBmmdXsm
0ilm/RnL7KcE/wFzLbg2
          "]]},
        Annotation[#, "Charting`Private`Tag$409200#3"]& ], {}}, {}}, 
     {Arrowheads[
      0.015], {ArrowBox[{{-0.1, -0.07}, {-0.1, -0.07}}], 
       ArrowBox[{{-0.1, -0.05600000000000001}, {-0.10252649006622518`, \
-0.05600000000000001}}], 
       ArrowBox[{{-0.1, -0.042}, {-0.10505298013245033`, -0.042}}], 
       ArrowBox[{{-0.1, -0.027999999999999997`}, {-0.1075794701986755, \
-0.027999999999999997`}}], 
       ArrowBox[{{-0.1, -0.013999999999999999`}, {-0.11010596026490067`, \
-0.013999999999999999`}}], ArrowBox[{{-0.1, 0.}, {-0.1, 0.}}], 
       ArrowBox[{{-0.1, 0.014000000000000012`}, {-0.11410596026490066`, 
        0.014000000000000012`}}], 
       ArrowBox[{{-0.1, 0.02800000000000001}, {-0.11557947019867551`, 
        0.02800000000000001}}], 
       ArrowBox[{{-0.1, 0.04200000000000001}, {-0.11705298013245033`, 
        0.04200000000000001}}], 
       ArrowBox[{{-0.1, 0.05600000000000002}, {-0.11852649006622518`, 
        0.05600000000000002}}], 
       ArrowBox[{{-0.1, 0.07}, {-0.12000000000000001`, 0.07}}]}, {
       ArrowBox[{{0, -0.07}, {0., -0.07}}], 
       ArrowBox[{{0, -0.05600000000000001}, {
         0.005475337078651684, -0.05600000000000001}}], 
       ArrowBox[{{0, -0.042}, {0.00952550561797753, -0.042}}], 
       ArrowBox[{{0, -0.027999999999999997`}, {
         0.012150505617977533`, -0.027999999999999997`}}], 
       ArrowBox[{{0, -0.013999999999999999`}, {
         0.013350337078651686`, -0.013999999999999999`}}], 
       ArrowBox[{{0, 0.}, {0.013125000000000003`, 0.}}], 
       ArrowBox[{{0, 0.014000000000000012`}, {0.01216238532110092, 
         0.014000000000000012`}}], 
       ArrowBox[{{0, 0.02800000000000001}, {0.010368577981651377`, 
         0.02800000000000001}}], 
       ArrowBox[{{0, 0.04200000000000001}, {0.007743577981651377, 
         0.04200000000000001}}], 
       ArrowBox[{{0, 0.05600000000000002}, {0.004287385321100913, 
         0.05600000000000002}}], ArrowBox[{{0, 0.07}, {0., 0.07}}]}, {
       ArrowBox[{{0.1, -0.07}, {0.1, -0.07}}], 
       ArrowBox[{{0.1, -0.05600000000000001}, {
        0.10294884701242653`, -0.05600000000000001}}], 
       ArrowBox[{{0.1, -0.042}, {0.10447252548552721`, -0.042}}], 
       ArrowBox[{{0.1, -0.027999999999999997`}, {
        0.10457103541930204`, -0.027999999999999997`}}], 
       ArrowBox[{{0.1, -0.013999999999999999`}, {
        0.10324437681375104`, -0.013999999999999999`}}], 
       ArrowBox[{{0.1, 0.}, {0.10049254966887418`, 0.}}], 
       ArrowBox[{{0.1, 0.014000000000000012`}, {0.09805642505620026, 
        0.014000000000000012`}}], 
       ArrowBox[{{0.1, 0.02800000000000001}, {0.09478910778297589, 
        0.02800000000000001}}], 
       ArrowBox[{{0.1, 0.04200000000000001}, {0.09069059784920105, 
        0.04200000000000001}}], 
       ArrowBox[{{0.1, 0.05600000000000002}, {0.08576089525487575, 
        0.05600000000000002}}], ArrowBox[{{0.1, 0.07}, {0.08, 0.07}}]}, 
      {RGBColor[0, 1, 0], LineBox[{{-0.1, -0.07}, {-0.1, 0.07}}]}, 
      {RGBColor[1, 0, 0], LineBox[{{0.1, -0.07}, {0.1, 0.07}}]}}},
    Axes->{True, True},
    AxesLabel->{None, None},
    AxesOrigin->{0, 0},
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
    PlotRange->{{-0.12000000000000001`, 0.10470333063156392`}, {-0.07, 0.07}},
    PlotRangeClipping->True,
    PlotRangePadding->{{
       Scaled[0.05], 
       Scaled[0.05]}, {
       Scaled[0.05], 
       Scaled[0.05]}},
    Ticks->{Automatic, Automatic}], ",", 
   GraphicsBox[{{{{}, {}, 
       TagBox[
        {RGBColor[0.368417, 0.506779, 0.709798], Thickness[Large], Opacity[
         1.], FaceForm[Opacity[0.3]], LineBox[CompressedData["
1:eJwVz31Q03UABnCi0pDlkbw53t8s4Hg53kWCY77gxYUJxLqg5K1NuuRlYgrC
QgTuOORNKGEbMEAYLARZ8rLf9o0HcbHRAfIWCJGtkzdvQwwKjxJqPnfPPff5
87FPSo9i6evp6R3T9dXyea9CQRsptSnSSLA8tMGz5FP4/sXaQM+aBF7aU/x6
nVPq6fFLyxKoQjb5TQIKS2tXhSfUEmw/Ca8T11NYzAu20/9FgiiPlw1UE4Wx
ziH7vAEJDB6ca5kXU+gyGHPKvilBltbxLl1GgXP/D9fUAAkmS+cEMb9RMDzn
7uN5qRuub8WOBu1RyDw/uDqUcxd6CzbKXBsZbr/H+eyMWReidmi8bIYMuwz2
SFnVHTRvjXTZJcnwzbhLW6dzB9KCugUFRTK49Hpx8xvFkM4/imK0y9DWXRiW
a9uO16InIsQqGSJsRNc+kYqgoP9pO6aRwXrF8N6KdyuK5Wo/AU0OE7tQJlN5
GyP3Dpkp3OR4nAatNqkZRTupY+0fyTFlXpAToG4Ew6JWFZAhxyLLdVvxrAFX
ijX869VypJydW76uFsAtIj/AuU8O/hcWpFxdC7V22TxrVg7Lz//JjDO5hYML
mQ8LduR4bpBsVWlYjfebJ34OtCAwEaSIivwrsdLPrO8IJqDfX2cMf1CCt51s
j2UlEMQI/d+wPlEIn6/6LDauESSUXjTWnOZi5r/LU/YtBKwOvjrInIPqYFZY
q87vWjz16n2agcicaJlzK8FqcUCBB8nA+LZns6eI4Ev2zBH7xAyo1tc4we0E
C8etZmnMdPz4a+w7n94h0Hi8rmniXkBrf8jZyh4C2v5Jk9FRNpL/dlMY9xKU
L6X2D3DYcPCxPFqjs9HQgViJGRvCrhe2DX26P9yTwlsJLPBauzc6pARWW/0u
iX8lo6zaoUJJCNx/bwjZtkzE1+n7xvcUBHVp8xOhs0yU91l35v1EcKBHWkE5
MiHa9S3VGya4slNzxpsTg7kbyeH6SoKoQuaoI+1jBLYPDr85QmDAn1buOx6J
XfVV0MYI1ksEXF7caZg6VzWU6awyjf23ZPsUPNLF3IPjBC2Nh7Nzb55E/O5c
kNFDgti+7y7FKxkYpPtJjScJKh7YzoWzj2I+4cOab3UOm6+bcq/zw2Zb8mXT
KYKXz+jjRlPecPCv8jWfJpj2dS7pzHFFEFdsXKtzaIJDfuaqE6IVg5uHZwji
zAOfXxTZ4ILho0mezv5p7o/3uMZweyJUben8g9h3afH8fvwPgRAFDA==
          "]], LineBox[CompressedData["
1:eJwVzX1Q03UcB3DWJRDK8oAj2BKEdHkdLeXBNLVPMyC4znTAGJjhGkdzjRoP
d1LNIi9AEYFdg7u1CBCChgjsK6Ejf7/vh4eQ4sGLhyHriA4U5cAjBCcNBfr1
x/ve79df7yClNi7tGRcXl31c/m/PmZTe320MXm0IvzuhcoOL+YPZ2jEGu7Wu
NFgUDMdfMvlV3GbQbYqfmX8gHFZSwpQOO4MN/oa+vdFRsHsszfHTJIOrEbKc
0n4ZmLvfynVy/qw7njlYnAjbifC5d/9m0HEsjjf3nhy2Xhx6cYHzouZoUeRw
EixKDkWGTzE4cym2yjn+PjQ3+Rg67jA461p1Z8+yAkLyu3fbZxkczTJsrnBR
wa7woHSPZQZlO+mr1uJMGK7vj9rqyuKCJmzlvP0MFJtUsc0CFisWD29MFOWB
oDdmaV7M4qPb2JZccgGS3P3XByQsynVnEy776MHc92dYdCKLikTTXxhggMuX
igaUahYFR3zzfRzl8BU56xF4hkWx4GmUkDWC8rA6K1vP/YUm+/7S+T0478Mh
TS2LJ1X+m4zfVkI13z30yXUWabaZ5/ZHNazGYqG4n8W6Tkfp1MEaENEbBbxJ
FttXV14pr6kFZWtDU/oSi7X2tsEyUR1I2YLXdZsopkXXbbTq60EaI5sPElBc
Szq2P9DfDMFb1JGnxBS7Ei25qaYGqL+rcYmTUDw5LZH18hrhjTcV90ZkFEe8
S0Nzzl2Br6+8/ZrzFMXAEc+q6OUmMManb6M6isYvJX7/yFugS1cQIdRTfPSR
cSDzEwtUWkstwlqK7mPm0SdBBPaW6AozOP/rPeQM2kngVqpK2cP5vtQZELOL
wAYffLQ/Urw5GKsuExP4MG0hp6uOYl7P3FrIAQI7vI6A2kyR1xbyckoCgUaN
x61rTRRXDZbPOwoIREoe129upjg3NF55r5DAhO90roKz/Xner1uKCXh2te/x
aKFoLZLykw0EPvVTl39goXj6m6Wah1UEQnt6TzzbSnE5K3wguJ1An6k1Ipnz
tOXEwxiGQGpGFb+Z8/BCnq8WCZQJczrkP1O8+rFNcaOHwONM0Y7GNooZytOO
+GECJe94rW1wVlRXCr6wERBtW7clXKN4dPImVI8TkP9mO7fOWXz8hQsPJgks
/tCpiL9OMcAILV7TBM5nN+03c/YcU43umyGwPfY7rzXOT731zpRZAu0B+fNS
K8UHUiu3CPwHaIzcaQ==
          "]]},
        Annotation[#, "Charting`Private`Tag$409961#1"]& ], 
       TagBox[
        {RGBColor[0.880722, 0.611041, 0.142051], Thickness[Large], Opacity[
         1.], FaceForm[Opacity[0.3]], LineBox[CompressedData["
1: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
          "]], LineBox[CompressedData["
1:eJwtjn001XcAh+9FIcxCN7SuFHk5oXCMlI+XcrJWrteb8nLZzEup68rL/dXN
nNwYU+Yyd9a4kc3KxjezvOUO621J5V1TuLIkR3m5x+6dmJ2zzznPef54/vmY
Rp3yj1ah0Wjuq/zn7RG5y6GjFLprHF8Mx6hjwiBOW9lOIa0joGVPXjDmdkwZ
j7dRkLP86VOH2ciOGhQRKYW3x31z93UfARn/VI5mChNXfMoUg8ewsNctdesN
CpNry8Z3zXPg6T+XvFxKoZcn0rpMi8GCIiJCL5lCkHmrTUNeIlyN56V3kihw
lePcl02JSJMurKd4FHIeaf7CmExEv9gr59kpCq38oN3Jnjwws3Q7i+MpWHZN
e9sv8vDCj1M4FEFhKWUTp5pzGockEx8W+FAov5dWIHFIhXBL+h8DRhRmjjss
Zg+dhVL3a1ULQwod9azmjHUC2K57unyaQUG8kpBOuQowwHzlqqNPwUtUpX7i
OwHM7m97bKu92ps2G/pGnkOtqVak0zIfHpoaLhtepaNAdsWMPcbHRwEnb7HO
ZuDzijf2IxV8XH7ruTKcm4m0sAyr5g/4WBiQ1odczEHoGX16Ql4a2GcyAq8Z
5EOZ+zN710gqOMElz6RMEXyDrpuNWKfC+BBDaCAvgvNK7rXsuBTYGi/t33RL
jG/umjfYCZMxYx/CaGr7Fj+4z/XeLD2NiBijNeKCUtw8Ks+TfZWE1qQquvpj
CVZU9PzVhDxUtskvje0pxz01SR85kYhG5aJ1UXkFGqdbnSatuKgYqn9YuL0S
o8OxHdv6ExDtXblSl/89riZ3OT9Yise7IywXE6MquNUm6ixqxqI9uDb9k5If
sc9zmOlgEY0ImUfQXfp1rKhWVnNGI9Gjf8k+NasarGMDMxePhcGkR6fMe/4n
hDo2eWn2BkMs8DB8w65B7MyaLsbkYSx8Ju5MTKhF0ry16gOxOzT6q3r/MSVo
z1Sn17Hd8bf+E4WpOYFPSNaZfIY7XvopmAcsCVjFY51sS+DOQ5+4QluCjdV9
Fvc370Xm7al3O1wJ/lRZLGlScwG9fodFeCDBr9HMlMH2nVCKavm/XSAw8qsq
UXfbiakng6V/fUHAvDDL9eLZYUiX/rt2HoF20lOpTbgNGnL93gsREQjGD7Ro
Oloh5fxc+WwZQQtTbDcysAXzPMfOrY2rfwUKT5diE8hqQ2cPtBCc7R/W4pzb
jO6ZTMYpKYFGz+zH5KARbsT3cZpvEzxSBn4ZJXsf3KgUeUA3wau1z3fxL+qA
Iyk1pvoIVA96bxCyNeH7/A4kgwSy2LrdV1/SYHt0Y870cwJfIVdxMkzhxhSj
Rk9GUCmRrd8/9dZNpz+m13mCwGkPJSh6Peq2pJ+vCJ8koP2/ab8GpvA1wb89
YeXm
          "]]},
        Annotation[#, "Charting`Private`Tag$409961#2"]& ], 
       TagBox[
        {RGBColor[0.560181, 0.691569, 0.194885], Thickness[Large], Opacity[
         1.], FaceForm[Opacity[0.3]], LineBox[CompressedData["
1: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
          "]], LineBox[CompressedData["
1:eJwVzH0w23cAx/HY5qld6y4si1j1uPXhWrWt083Q+5SVsjbTaISwQ+0yh3YZ
vepKKRt9ckoF07QVD7WiD3z5Jr/oIp6GtdR5ioedaimtmWUezyiz7I/Pve/1
z8cuXOoneYPFYjkb9n+t36pzlW5Uo7rcaXw4whRizk/JFRvUaJaaaO232yPw
MqfmoLkapqObY9JcncCdtWHFmahRbi17/ImXJ663HXDpYKmxss//TGa7P35n
1QojDf6++ZjGLUOEF++3BpsYvHjUz2jqywDw9yg+OLDOYCbaN/1gTyCScURf
vcZgoshHsTwYDElkdlvOCoNJE8WLj+bD4NDb+YfPAoO+WNnGm6wI3P3X9K+z
rxj4b9PuUWfEICrJIqqhk4E++uOlS0Pn8Cx7ZbipmsHNGY/14fRUzKX8MM/O
Y7AwUK8UX72Ca+G7jffHMwhISBFWWGXhsKDX6nkQgzCR/Gm9rQzPvOYCk9wY
8PicNKvFXFS4B9Xc28LAkbfqaVOXj8P8Ixr2axX0e8Wch4034CX1OFUzpEJo
hLVxfnYBEL9hl4iqoD1VZmTaVYgo81y9MEuF0sbFzFG3YgSf7n60Gq1C7crS
rtziEtz6dtFM8rkKJUPKJznbS/FY02Yd+Z4KEq/S9Zqsn3Et5HbR0owSa4FH
P9tqXYYcuu8Or0WJJlHV+a/l5Sj6UNvOu6FE6Ji7f5vRXfC2OPuFn1Ci1zJz
75mL92A3XoEyKLG1d5PCa/4+Tv6mc2lhK5Gf6M79O6ASvs3euyefUyx8k98R
c7IKSV3lXB9CYdZf1vfajsCM1lrEVlH8Y9m9bLeNgDvSNCuvpHglWLb13knQ
YdwYN32fovWJT2SOI8H5khOpVysoUlum1hxcCdjclAedJRRGSocdIUIC/UTB
fuRRrMiqzjZcIPCQD8gkuRRT3YMFLy8T2OSa69JzKIYsjH59O4PgeIiYO5hN
oU4XbBbLCD5FWbE0kyLux7niWYXh3+XNVvklivlYpw77WoJHoq72+osUY1Vf
zXprCEwf5mnGL1D06FM50nqCd4QWoY5pFNVRurBfWggS+yvvNKRQfBcet3is
hyBixyHjiWSKsMICXryOYEA7wDc32HekFYWDBF80jisESRSOQe9emR4h4Dsc
Lz+dSGGbj0r2GEH/0/5b189RbOqP6HOeIHip80ysS6BYtcxaDpkkSLB6cGg0
nmJaoLZN+5PgP8shvR8=
          "]]},
        Annotation[#, "Charting`Private`Tag$409961#3"]& ], {}}, {}}, 
     {Arrowheads[
      0.015], {ArrowBox[{{-0.1, -0.07}, {-0.1, -0.07}}], 
       ArrowBox[{{-0.1, -0.05600000000000001}, {-0.10252649006622518`, \
-0.05600000000000001}}], 
       ArrowBox[{{-0.1, -0.042}, {-0.10505298013245033`, -0.042}}], 
       ArrowBox[{{-0.1, -0.027999999999999997`}, {-0.1075794701986755, \
-0.027999999999999997`}}], 
       ArrowBox[{{-0.1, -0.013999999999999999`}, {-0.11010596026490067`, \
-0.013999999999999999`}}], ArrowBox[{{-0.1, 0.}, {-0.1, 0.}}], 
       ArrowBox[{{-0.1, 0.014000000000000012`}, {-0.11410596026490066`, 
        0.014000000000000012`}}], 
       ArrowBox[{{-0.1, 0.02800000000000001}, {-0.11557947019867551`, 
        0.02800000000000001}}], 
       ArrowBox[{{-0.1, 0.04200000000000001}, {-0.11705298013245033`, 
        0.04200000000000001}}], 
       ArrowBox[{{-0.1, 0.05600000000000002}, {-0.11852649006622518`, 
        0.05600000000000002}}], 
       ArrowBox[{{-0.1, 0.07}, {-0.12000000000000001`, 0.07}}]}, {
       ArrowBox[{{0, -0.07}, {0., -0.07}}], 
       ArrowBox[{{0, -0.05600000000000001}, {
         0.002737668539325842, -0.05600000000000001}}], 
       ArrowBox[{{0, -0.042}, {0.004762752808988765, -0.042}}], 
       ArrowBox[{{0, -0.027999999999999997`}, {
         0.006075252808988766, -0.027999999999999997`}}], 
       ArrowBox[{{0, -0.013999999999999999`}, {
         0.006675168539325843, -0.013999999999999999`}}], 
       ArrowBox[{{0, 0.}, {0.0065625000000000015`, 0.}}], 
       ArrowBox[{{0, 0.014000000000000012`}, {0.00608119266055046, 
         0.014000000000000012`}}], 
       ArrowBox[{{0, 0.02800000000000001}, {0.005184288990825688, 
         0.02800000000000001}}], 
       ArrowBox[{{0, 0.04200000000000001}, {0.0038717889908256886`, 
         0.04200000000000001}}], 
       ArrowBox[{{0, 0.05600000000000002}, {0.0021436926605504563`, 
         0.05600000000000002}}], ArrowBox[{{0, 0.07}, {0., 0.07}}]}, {
       ArrowBox[{{0.1, -0.07}, {0.1, -0.07}}], 
       ArrowBox[{{0.1, -0.05600000000000001}, {
        0.10021117847310068`, -0.05600000000000001}}], 
       ArrowBox[{{0.1, -0.042}, {0.09970977267653844, -0.042}}], 
       ArrowBox[{{0.1, -0.027999999999999997`}, {
        0.09849578261031328, -0.027999999999999997`}}], 
       ArrowBox[{{0.1, -0.013999999999999999`}, {
        0.09656920827442518, -0.013999999999999999`}}], 
       ArrowBox[{{0.1, 0.}, {0.09393004966887418, 0.}}], 
       ArrowBox[{{0.1, 0.014000000000000012`}, {0.09197523239564981, 
        0.014000000000000012`}}], 
       ArrowBox[{{0.1, 0.02800000000000001}, {0.0896048187921502, 
        0.02800000000000001}}], 
       ArrowBox[{{0.1, 0.04200000000000001}, {0.08681880885837537, 
        0.04200000000000001}}], 
       ArrowBox[{{0.1, 0.05600000000000002}, {0.08361720259432529, 
        0.05600000000000002}}], ArrowBox[{{0.1, 0.07}, {0.08, 0.07}}]}, 
      {RGBColor[0, 1, 0], LineBox[{{-0.1, -0.07}, {-0.1, 0.07}}]}, 
      {RGBColor[1, 0, 0], LineBox[{{0.1, -0.07}, {0.1, 0.07}}]}}},
    Axes->{True, True},
    AxesLabel->{None, None},
    AxesOrigin->{0, 0},
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
    PlotRange->{{-0.12000000000000001`, 0.10022595424540302`}, {-0.07, 0.07}},
    PlotRangeClipping->True,
    PlotRangePadding->{{
       Scaled[0.05], 
       Scaled[0.05]}, {
       Scaled[0.05], 
       Scaled[0.05]}},
    Ticks->{Automatic, Automatic}], ",", 
   GraphicsBox[{{{{}, {}, 
       TagBox[
        {RGBColor[0.368417, 0.506779, 0.709798], Thickness[Large], Opacity[
         1.], FaceForm[Opacity[0.3]], LineBox[CompressedData["
1:eJwVz31Q03UABnCi0pDlkbw53t8s4Hg53kWCY77gxYUJxLqg5K1NuuRlYgrC
QgTuOORNKGEbMEAYLARZ8rLf9o0HcbHRAfIWCJGtkzdvQwwKjxJqPnfPPff5
87FPSo9i6evp6R3T9dXyea9CQRsptSnSSLA8tMGz5FP4/sXaQM+aBF7aU/x6
nVPq6fFLyxKoQjb5TQIKS2tXhSfUEmw/Ca8T11NYzAu20/9FgiiPlw1UE4Wx
ziH7vAEJDB6ca5kXU+gyGHPKvilBltbxLl1GgXP/D9fUAAkmS+cEMb9RMDzn
7uN5qRuub8WOBu1RyDw/uDqUcxd6CzbKXBsZbr/H+eyMWReidmi8bIYMuwz2
SFnVHTRvjXTZJcnwzbhLW6dzB9KCugUFRTK49Hpx8xvFkM4/imK0y9DWXRiW
a9uO16InIsQqGSJsRNc+kYqgoP9pO6aRwXrF8N6KdyuK5Wo/AU0OE7tQJlN5
GyP3Dpkp3OR4nAatNqkZRTupY+0fyTFlXpAToG4Ew6JWFZAhxyLLdVvxrAFX
ijX869VypJydW76uFsAtIj/AuU8O/hcWpFxdC7V22TxrVg7Lz//JjDO5hYML
mQ8LduR4bpBsVWlYjfebJ34OtCAwEaSIivwrsdLPrO8IJqDfX2cMf1CCt51s
j2UlEMQI/d+wPlEIn6/6LDauESSUXjTWnOZi5r/LU/YtBKwOvjrInIPqYFZY
q87vWjz16n2agcicaJlzK8FqcUCBB8nA+LZns6eI4Ev2zBH7xAyo1tc4we0E
C8etZmnMdPz4a+w7n94h0Hi8rmniXkBrf8jZyh4C2v5Jk9FRNpL/dlMY9xKU
L6X2D3DYcPCxPFqjs9HQgViJGRvCrhe2DX26P9yTwlsJLPBauzc6pARWW/0u
iX8lo6zaoUJJCNx/bwjZtkzE1+n7xvcUBHVp8xOhs0yU91l35v1EcKBHWkE5
MiHa9S3VGya4slNzxpsTg7kbyeH6SoKoQuaoI+1jBLYPDr85QmDAn1buOx6J
XfVV0MYI1ksEXF7caZg6VzWU6awyjf23ZPsUPNLF3IPjBC2Nh7Nzb55E/O5c
kNFDgti+7y7FKxkYpPtJjScJKh7YzoWzj2I+4cOab3UOm6+bcq/zw2Zb8mXT
KYKXz+jjRlPecPCv8jWfJpj2dS7pzHFFEFdsXKtzaIJDfuaqE6IVg5uHZwji
zAOfXxTZ4ILho0mezv5p7o/3uMZweyJUben8g9h3afH8fvwPgRAFDA==
          "]], LineBox[CompressedData["
1:eJwVzX1Q03UcB3DWJRDK8oAj2BKEdHkdLeXBNLVPMyC4znTAGJjhGkdzjRoP
d1LNIi9AEYFdg7u1CBCChgjsK6Ejf7/vh4eQ4sGLhyHriA4U5cAjBCcNBfr1
x/ve79df7yClNi7tGRcXl31c/m/PmZTe320MXm0IvzuhcoOL+YPZ2jEGu7Wu
NFgUDMdfMvlV3GbQbYqfmX8gHFZSwpQOO4MN/oa+vdFRsHsszfHTJIOrEbKc
0n4ZmLvfynVy/qw7njlYnAjbifC5d/9m0HEsjjf3nhy2Xhx6cYHzouZoUeRw
EixKDkWGTzE4cym2yjn+PjQ3+Rg67jA461p1Z8+yAkLyu3fbZxkczTJsrnBR
wa7woHSPZQZlO+mr1uJMGK7vj9rqyuKCJmzlvP0MFJtUsc0CFisWD29MFOWB
oDdmaV7M4qPb2JZccgGS3P3XByQsynVnEy776MHc92dYdCKLikTTXxhggMuX
igaUahYFR3zzfRzl8BU56xF4hkWx4GmUkDWC8rA6K1vP/YUm+/7S+T0478Mh
TS2LJ1X+m4zfVkI13z30yXUWabaZ5/ZHNazGYqG4n8W6Tkfp1MEaENEbBbxJ
FttXV14pr6kFZWtDU/oSi7X2tsEyUR1I2YLXdZsopkXXbbTq60EaI5sPElBc
Szq2P9DfDMFb1JGnxBS7Ei25qaYGqL+rcYmTUDw5LZH18hrhjTcV90ZkFEe8
S0Nzzl2Br6+8/ZrzFMXAEc+q6OUmMManb6M6isYvJX7/yFugS1cQIdRTfPSR
cSDzEwtUWkstwlqK7mPm0SdBBPaW6AozOP/rPeQM2kngVqpK2cP5vtQZELOL
wAYffLQ/Urw5GKsuExP4MG0hp6uOYl7P3FrIAQI7vI6A2kyR1xbyckoCgUaN
x61rTRRXDZbPOwoIREoe129upjg3NF55r5DAhO90roKz/Xner1uKCXh2te/x
aKFoLZLykw0EPvVTl39goXj6m6Wah1UEQnt6TzzbSnE5K3wguJ1An6k1Ipnz
tOXEwxiGQGpGFb+Z8/BCnq8WCZQJczrkP1O8+rFNcaOHwONM0Y7GNooZytOO
+GECJe94rW1wVlRXCr6wERBtW7clXKN4dPImVI8TkP9mO7fOWXz8hQsPJgks
/tCpiL9OMcAILV7TBM5nN+03c/YcU43umyGwPfY7rzXOT731zpRZAu0B+fNS
K8UHUiu3CPwHaIzcaQ==
          "]]},
        Annotation[#, "Charting`Private`Tag$410698#1"]& ], 
       TagBox[
        {RGBColor[0.880722, 0.611041, 0.142051], Thickness[Large], Opacity[
         1.], FaceForm[Opacity[0.3]], LineBox[CompressedData["
1:eJxF1H0sFHAYB3BntTKprTO6k+Na5WVoUWhqXJb4gyh3UsLoUA0djXlLcnoh
XI52Q3e3u9155yTbKd0581LLNe/cJjvmbVwiScRUK8/zbM9+v88/v+9+zx8P
NSL+MlNfT0/P70//PXdKFyCn5Cw0KndcvTaneD2HjnlJCpuaRk/NpQo8teix
zHOW+kNodV07NVOBrjdQH015jmapJmxjXdCGofZOJ+7JwInRbbPtaQ1gsRUr
xM+kHrxFi/qQX1QLvv/JpqLOugZs03wyI0tYBa6Qsb3SLSrBvhTpgyC5FGw+
Y9g04ygBG1t6MBjdYvB4nFKnixCB+02z01y0Qvw/0/ZHxyIf5+U/Mv1QWwYu
vUluLdDywGY3NhKvG78ALxlEHuYYcjG/LEaa48wBk1RfaF0+uWC6wHmXuScb
HP4sgbhwMQPMrCnVupmywOVxml6PYQb4X7133bltnKYnF36ku8P7xxT28nwW
ePGO09oTTTq4fOn89lgeG/x9RNkcXJALDkrLCqw25oDDGaWflRQumOxrkmO8
WgJ2IG9eMHvHwzzHYJM3qjJwWDRpN6+ID1YkVhL29ArBEtVq4cRZEbhlY822
RCQGizXN6uLjEjDTS7LdxJGCt676n7EgVYLbGbLMyNIqzJ+k0bsJNeABYqFj
8uNasMWAkcBrpQ7My6Ad+hrUgPOJ4vWwYmXgvcOVg7+ojeCfxL516jH0bMA6
xdsa3aX2uVXsgGZ3zm/ZuaEJzXZWoYHoDa4spe0Rer5vlD/zFK05QOjYl4+W
5wXsD+aik7K/iZYF6JWEUz1HWtCTspBl71Z0/yLbJF6JfnV7KPxtJ/puRNLq
lX50uJBPTh1CXxrvcheOoh2umebqxtEUnnvDwUm00XD0oOs0epPIWQ+dQ//f
Z+6/AbdlRm4=
          "]]},
        Annotation[#, "Charting`Private`Tag$410698#2"]& ], 
       TagBox[
        {RGBColor[0.560181, 0.691569, 0.194885], Thickness[Large], Opacity[
         1.], FaceForm[Opacity[0.3]], LineBox[CompressedData["
1:eJwVxwlM03cYxnEmBuVIZFCFchWUIeBwEwsdc/oCRZqZiEqkBqrSgq2IBcqR
KdDKxHq0GwXUcpVxeJR5IFTl1/9/Y7wDnbAEdKDDYZhW5KgBjEaOsQ6y+iTf
PPn4pWTFi5fZ2Nh8ae3D11R/GA1Teyif05MG3CXjVrtZfX3e3HHXbEBb3nSV
toqGtB+YyaNjBpTORFaVV9Iwai6o55oMuG2XuUKlpWG4aKvvsj8NOLKcczG/
nIa+5i6/og4DbpA90SSqaLhl3+efX27A9thVSmY+DdmdL4MzOAZM1Qsq/06g
wfFgyObP8lrRYcOQZJ5NQ+7hXye6CluQnciQEgYNl9dn749bcwtHIgJq6HcU
LEZJfi85fxPPwxGlSz8FJx4GNTUH3sAH88WVLc0UBLVtUpxsuIbyxCTTOzUF
Ta3KWDnrR2SbUsZU6RTs9NF/u4/So4wZ7SrhUeA97nhnPPQq3jwWv1gZQAHD
N5LP776MR4t8vbPsKHieiVNTKZewJeI3sfqVEQbcThVyTA343l2XbukywrA4
eO7+mzr85TqvqrXeCGm7n44Vm3S4ctxgcVAYoeaQR7vGVIV7Y3d6/rzfCJ4H
/s0VMCowIBFTWyKM8NY+1avM8QL+U5aStuBuBIYuTX86vAzjCoe1Z2cJMDun
ox58rcbAVYyFnwYIJNSHL/fmKvGjHrl7zG0Cwu9zXCd5ChRubhd+XEpAfKPG
tMUtGxtn+6ZKNAQCPF5vanstw1fGF8cdrJ44xzm1sV2Gkq9sy21LCByRPPnE
TyRD6fYdnbNqAs+ivQad+Fl4fN9ffs/OEJjcaDvZqJBiaeHMyKUTBJxW9DN6
eyXYv9Uui2W1ZjTD2JEtQRcbd4tOQcC5yyHJsEaCWuUWV62cAEMRU18hFKOu
pJh7toCA13tjkGgmFZvqna8c/YZAyIu6bXOeIsR7n4rZmQRqM4f+iBzkY5N8
9Zk7GQQc7lKl9Do+asKW9KFWH1uojAvNTsADTY/Mn0sJxCv5veuc9qJFnSMN
SSdgX/O42y56D3LiqdwACYFptU5RLeAhy7Hx4lUxgZ7VSRb13Ha0u69q87f6
SoN7vrw8BgfDBPNrDxFIItq85O4ozGMuFbBSCJTeYz3dIfkCBQPjujoRgdih
2oGQ2jDkfveo3dvq/94wHzoPhKLLYsOSp5DAY3agurkwGBfaVCxdMoFI4dqT
uRP++DIzJ9LDaoFbxNscvQ/2rBeIqg8SCM8Meb6kcMWVuy+kg9W3r7FHhw+v
wP8BevrVAg==
          "]], LineBox[CompressedData["
1:eJwVx3881HcAx3Fnlh6PiZXbyW2PKx7qzOLxSHgo7K09/Ki20eV3JWYPrlgT
PWShWeYsv23HdjXDmLBUPvl8v6dlLtR5II9xjrGhB1bTZXJxj3ZK9t0fr8fr
8bSLSz4Ub2piYuLJ9f/FQdqkE9EsbjS5/TUhNUfj1XhV91EW3cnrOuy32+MP
q4vC746wMJ+2TJF5ucFHuzboE8WiyVbe5xHgD7PoAZ/CUBYr7mHppf1hKEp+
2rqb82fdIe3exeHg59g4zYWwMBw8xNMFRcCh4SOBP+fFpOBCP00k/PSGhZcS
Fg9+3F9tHDuCPJmoJjWYxdy66tmdS7FYfy3Z9PABFtpU+WuVJlJYrG3scfRl
Ebatw7mtOAVxRdJ/7J1ZLCTtenZhPAsNiv5HuZtZVC6+tzZRmAvhJzrfQDMW
y7+rmKiSAkw4Cd0T9AwiMs+H/swvQ9HxyLX5CQax4ZcmVSI5Cr5uSBjsZSD8
UCDjGyrAnieOfCUDF+EL/zd/VUCz2HtbVctgwTVK8Evn9/B6f8nQU8ogRmr7
quKbKpQ7vMPzzGTQcbqRZz5Ygz2PTjeZHWdQ32konfauhWVaevPOMAY3V545
VdTWQZOdL1P7MqgbZwbKt9djNq35udKZQXxA/Vpr2WXM6iYDN9oyWI08uHuL
bSM2ifsW+swYdIW3ZH98qQklQT2u03qKmJm9YT28K1hZ1nwQM0kxbF3qmv5V
M2jek1f29FFsGd5QHbB0FZX31W+kKSkU5/ZufhJxHanK5lWbOorlBMW9lJMt
+DajLsemjGL9aKP2uR3By5+UTV2lFP9aDxntthEk/NY/eJLz3xKjaJ8jgbvD
suhOCYV6YP+JcheC4QG/W6eKKXLv6lZ3eBG8bvdwqbeAgsfsEB8LJcjvcYzP
klGsyFvO3s4jWNR7F4k564bGqh7mE0S+JWnV5FKMW/HuWBQTiFPO8t7m3FYo
sYySE6iFfT+M5FCc+fJprb6awPTTpFGXLyiWUt3u2d8kSFRkr45nU8y0HNXv
aycY6pI7yDhrFnIFySqCGpv21D8/p7iROBJ76y7Bu50WVhfOUZyKO2MI0RBc
frzVYxfn2JoqYcYIgaXAPXoqiyJ4So2aMYLJxOgrbpxdDtsUzE8R+FWkaO5n
UogUuL5phqBZJTMWcN4wKtV6PiDg6y5u9eD8wrrMeGyOIJN/LXA6g2Je0iaS
PSb4DwFSwQU=
          "]]},
        Annotation[#, "Charting`Private`Tag$410698#3"]& ], {}}, {}}, 
     {Arrowheads[
      0.015], {ArrowBox[{{-0.1, -0.07}, {-0.1, -0.07}}], 
       ArrowBox[{{-0.1, -0.05600000000000001}, {-0.10252649006622518`, \
-0.05600000000000001}}], 
       ArrowBox[{{-0.1, -0.042}, {-0.10505298013245033`, -0.042}}], 
       ArrowBox[{{-0.1, -0.027999999999999997`}, {-0.1075794701986755, \
-0.027999999999999997`}}], 
       ArrowBox[{{-0.1, -0.013999999999999999`}, {-0.11010596026490067`, \
-0.013999999999999999`}}], ArrowBox[{{-0.1, 0.}, {-0.1, 0.}}], 
       ArrowBox[{{-0.1, 0.014000000000000012`}, {-0.11410596026490066`, 
        0.014000000000000012`}}], 
       ArrowBox[{{-0.1, 0.02800000000000001}, {-0.11557947019867551`, 
        0.02800000000000001}}], 
       ArrowBox[{{-0.1, 0.04200000000000001}, {-0.11705298013245033`, 
        0.04200000000000001}}], 
       ArrowBox[{{-0.1, 0.05600000000000002}, {-0.11852649006622518`, 
        0.05600000000000002}}], 
       ArrowBox[{{-0.1, 0.07}, {-0.12000000000000001`, 0.07}}]}, {
       ArrowBox[{{0, -0.07}, {0., -0.07}}], 
       ArrowBox[{{0, -0.05600000000000001}, {0., -0.05600000000000001}}], 
       ArrowBox[{{0, -0.042}, {0., -0.042}}], 
       ArrowBox[{{0, -0.027999999999999997`}, {0., -0.027999999999999997`}}], 
       ArrowBox[{{0, -0.013999999999999999`}, {0., -0.013999999999999999`}}], 
       ArrowBox[{{0, 0.}, {0., 0.}}], 
       ArrowBox[{{0, 0.014000000000000012`}, {0., 0.014000000000000012`}}], 
       ArrowBox[{{0, 0.02800000000000001}, {0., 0.02800000000000001}}], 
       ArrowBox[{{0, 0.04200000000000001}, {0., 0.04200000000000001}}], 
       ArrowBox[{{0, 0.05600000000000002}, {0., 0.05600000000000002}}], 
       ArrowBox[{{0, 0.07}, {0., 0.07}}]}, {
       ArrowBox[{{0.1, -0.07}, {0.1, -0.07}}], 
       ArrowBox[{{0.1, -0.05600000000000001}, {
        0.09747350993377484, -0.05600000000000001}}], 
       ArrowBox[{{0.1, -0.042}, {0.09494701986754968, -0.042}}], 
       ArrowBox[{{0.1, -0.027999999999999997`}, {
        0.09242052980132451, -0.027999999999999997`}}], 
       ArrowBox[{{0.1, -0.013999999999999999`}, {
        0.08989403973509935, -0.013999999999999999`}}], 
       ArrowBox[{{0.1, 0.}, {0.08736754966887418, 0.}}], 
       ArrowBox[{{0.1, 0.014000000000000012`}, {0.08589403973509935, 
        0.014000000000000012`}}], 
       ArrowBox[{{0.1, 0.02800000000000001}, {0.0844205298013245, 
        0.02800000000000001}}], 
       ArrowBox[{{0.1, 0.04200000000000001}, {0.08294701986754968, 
        0.04200000000000001}}], 
       ArrowBox[{{0.1, 0.05600000000000002}, {0.08147350993377483, 
        0.05600000000000002}}], ArrowBox[{{0.1, 0.07}, {0.08, 0.07}}]}, 
      {RGBColor[0, 1, 0], LineBox[{{-0.1, -0.07}, {-0.1, 0.07}}]}, 
      {RGBColor[1, 0, 0], LineBox[{{0.1, -0.07}, {0.1, 0.07}}]}}},
    Axes->{True, True},
    AxesLabel->{None, None},
    AxesOrigin->{0, 0},
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
    PlotRange->{{-0.12000000000000001`, 0.1}, {-0.07, 0.07}},
    PlotRangeClipping->True,
    PlotRangePadding->{{
       Scaled[0.05], 
       Scaled[0.05]}, {
       Scaled[0.05], 
       Scaled[0.05]}},
    Ticks->{Automatic, Automatic}], ",", 
   GraphicsBox[{{{{}, {}, 
       TagBox[
        {RGBColor[0.368417, 0.506779, 0.709798], Thickness[Large], Opacity[
         1.], FaceForm[Opacity[0.3]], LineBox[CompressedData["
1:eJwVz31Q03UABnCi0pDlkbw53t8s4Hg53kWCY77gxYUJxLqg5K1NuuRlYgrC
QgTuOORNKGEbMEAYLARZ8rLf9o0HcbHRAfIWCJGtkzdvQwwKjxJqPnfPPff5
87FPSo9i6evp6R3T9dXyea9CQRsptSnSSLA8tMGz5FP4/sXaQM+aBF7aU/x6
nVPq6fFLyxKoQjb5TQIKS2tXhSfUEmw/Ca8T11NYzAu20/9FgiiPlw1UE4Wx
ziH7vAEJDB6ca5kXU+gyGHPKvilBltbxLl1GgXP/D9fUAAkmS+cEMb9RMDzn
7uN5qRuub8WOBu1RyDw/uDqUcxd6CzbKXBsZbr/H+eyMWReidmi8bIYMuwz2
SFnVHTRvjXTZJcnwzbhLW6dzB9KCugUFRTK49Hpx8xvFkM4/imK0y9DWXRiW
a9uO16InIsQqGSJsRNc+kYqgoP9pO6aRwXrF8N6KdyuK5Wo/AU0OE7tQJlN5
GyP3Dpkp3OR4nAatNqkZRTupY+0fyTFlXpAToG4Ew6JWFZAhxyLLdVvxrAFX
ijX869VypJydW76uFsAtIj/AuU8O/hcWpFxdC7V22TxrVg7Lz//JjDO5hYML
mQ8LduR4bpBsVWlYjfebJ34OtCAwEaSIivwrsdLPrO8IJqDfX2cMf1CCt51s
j2UlEMQI/d+wPlEIn6/6LDauESSUXjTWnOZi5r/LU/YtBKwOvjrInIPqYFZY
q87vWjz16n2agcicaJlzK8FqcUCBB8nA+LZns6eI4Ev2zBH7xAyo1tc4we0E
C8etZmnMdPz4a+w7n94h0Hi8rmniXkBrf8jZyh4C2v5Jk9FRNpL/dlMY9xKU
L6X2D3DYcPCxPFqjs9HQgViJGRvCrhe2DX26P9yTwlsJLPBauzc6pARWW/0u
iX8lo6zaoUJJCNx/bwjZtkzE1+n7xvcUBHVp8xOhs0yU91l35v1EcKBHWkE5
MiHa9S3VGya4slNzxpsTg7kbyeH6SoKoQuaoI+1jBLYPDr85QmDAn1buOx6J
XfVV0MYI1ksEXF7caZg6VzWU6awyjf23ZPsUPNLF3IPjBC2Nh7Nzb55E/O5c
kNFDgti+7y7FKxkYpPtJjScJKh7YzoWzj2I+4cOab3UOm6+bcq/zw2Zb8mXT
KYKXz+jjRlPecPCv8jWfJpj2dS7pzHFFEFdsXKtzaIJDfuaqE6IVg5uHZwji
zAOfXxTZ4ILho0mezv5p7o/3uMZweyJUben8g9h3afH8fvwPgRAFDA==
          "]], LineBox[CompressedData["
1:eJwVzX1Q03UcB3DWJRDK8oAj2BKEdHkdLeXBNLVPMyC4znTAGJjhGkdzjRoP
d1LNIi9AEYFdg7u1CBCChgjsK6Ejf7/vh4eQ4sGLhyHriA4U5cAjBCcNBfr1
x/ve79df7yClNi7tGRcXl31c/m/PmZTe320MXm0IvzuhcoOL+YPZ2jEGu7Wu
NFgUDMdfMvlV3GbQbYqfmX8gHFZSwpQOO4MN/oa+vdFRsHsszfHTJIOrEbKc
0n4ZmLvfynVy/qw7njlYnAjbifC5d/9m0HEsjjf3nhy2Xhx6cYHzouZoUeRw
EixKDkWGTzE4cym2yjn+PjQ3+Rg67jA461p1Z8+yAkLyu3fbZxkczTJsrnBR
wa7woHSPZQZlO+mr1uJMGK7vj9rqyuKCJmzlvP0MFJtUsc0CFisWD29MFOWB
oDdmaV7M4qPb2JZccgGS3P3XByQsynVnEy776MHc92dYdCKLikTTXxhggMuX
igaUahYFR3zzfRzl8BU56xF4hkWx4GmUkDWC8rA6K1vP/YUm+/7S+T0478Mh
TS2LJ1X+m4zfVkI13z30yXUWabaZ5/ZHNazGYqG4n8W6Tkfp1MEaENEbBbxJ
FttXV14pr6kFZWtDU/oSi7X2tsEyUR1I2YLXdZsopkXXbbTq60EaI5sPElBc
Szq2P9DfDMFb1JGnxBS7Ei25qaYGqL+rcYmTUDw5LZH18hrhjTcV90ZkFEe8
S0Nzzl2Br6+8/ZrzFMXAEc+q6OUmMManb6M6isYvJX7/yFugS1cQIdRTfPSR
cSDzEwtUWkstwlqK7mPm0SdBBPaW6AozOP/rPeQM2kngVqpK2cP5vtQZELOL
wAYffLQ/Urw5GKsuExP4MG0hp6uOYl7P3FrIAQI7vI6A2kyR1xbyckoCgUaN
x61rTRRXDZbPOwoIREoe129upjg3NF55r5DAhO90roKz/Xner1uKCXh2te/x
aKFoLZLykw0EPvVTl39goXj6m6Wah1UEQnt6TzzbSnE5K3wguJ1An6k1Ipnz
tOXEwxiGQGpGFb+Z8/BCnq8WCZQJczrkP1O8+rFNcaOHwONM0Y7GNooZytOO
+GECJe94rW1wVlRXCr6wERBtW7clXKN4dPImVI8TkP9mO7fOWXz8hQsPJgks
/tCpiL9OMcAILV7TBM5nN+03c/YcU43umyGwPfY7rzXOT731zpRZAu0B+fNS
K8UHUiu3CPwHaIzcaQ==
          "]]},
        Annotation[#, "Charting`Private`Tag$411089#1"]& ], 
       TagBox[
        {RGBColor[0.880722, 0.611041, 0.142051], Thickness[Large], Opacity[
         1.], FaceForm[Opacity[0.3]], LineBox[CompressedData["
1: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
8Y6PwnrDCss5YhcbBTOLwCjM2MXT9zIpnMrT+mGrURS8vFeEfyX+u+y4W/7O
KJia9HZ5ESfUOLVsl4xCyvSGdiaxEi6qlnxj4cDphuUs4qbWpATVKRaOp3ae
qSC27ymarehmoemKyTyIl4bqzDXqWchx/qmRQ5w+xblbc4OFN//4NL4lVp+b
kNh/mYUI+60LM8TtqysXHl1kISZe8+wisbugeJ++EwtzzOoVbhYFHgkV3aZj
LDw1vtopSJwrc/Da4b0srHDe96wn1lE59a1FhoUspbz1EsS9e845HhcgPvo4
XJLYT5/xx8tPTPy7x0iejEaImGYqWvYz0TylvryBuNSyIvbVUybmPGP4xImN
7P+YOn2bCXaN0ZF1xEMefccGM5mIbPWo5yemB/5V4cBgYqh03vUbWe+G8DWi
Y15M5FtMG80TV7KlA9ytmHj23MR6ivh4mkbPtB4T5muEr/UTT147ouWrxITB
un2b2omZpWeyPokykTHyormOWKY6cDlomQHziOflJcQPH8fZLY4y4Dup8jSV
2Kolr4HqYODT5nnR0O/1666V/XaPgX5J5VRn4vjBNiYzn4HX559p7Pper89f
TeICGZht222+/nu9/l1bJnKGAa/P3IV/kf5Y4lcQTjZh4HLu4Pj3flLfav4y
YzMD2gqTvdHE7UpuGlK8DBwNslm2J3b/OTTt2kwk0gMDhoWJc4+U/laESHDk
pQvekv7VsWh4qFQWiYCcHVlVxL12PdLlqZEYnWXJmROLBHANV7lGIlJUrCyE
nBdajo0HhCMxJra0Vo9YxWwwPXo6AuVvj5RwETs4C55OeBwBj9dbQpjkPHYm
Oo78xzkC102K4v3IeS179+Pnmjvh2JHTmqZEPPxV794jZjg21VtzBkIpSK71
ojedCoeCbenEIeKofU08nH/C8GWDCnuB5IdDQoD4hyNh6JVe/COTeGBnibXy
xjCYhEePahHbdPT/x3UiFByb/g5fGgXzdYdlh6NCkeASePJZCJk/yRt39TaS
PjHbW3aKuF79uJ9YCgVcqZ0YJfm1vyuy+iTJbVXtTyLLJN/Uxaa1X6zSUfzK
im8tyT+59HoT6NLhcUMwPIHkY67mp7gVITrqOKF9gsRSvYod2m9o+EEvV3eV
5KuY5GXLmos0HPLuuNVB8pgny9GhrPYi7BQHDflJnr/L5qOn7Q7Ban3IggvJ
e/sDuo85qxewu4qT+MSTwpuB81zrOi9A585jd38Pkt9b+2LY3hewyB3V8tCV
wh955WlhZcEQ52nSGyfzp6jQvMJ9exA6vXm/FpN55lp+dVh3oz/U5mQDOGT+
/SQ1pVE75QfXGFPJRXPS3+x9LLV6P3i1Peo7dJKCp1uPopyjH2r/VDiBY+T/
hlteiVifh8WSwISjMckrNd4P18O8cddh8/BhMr9F+Lsk2tvd4G2UFaq5h+Th
mM/9Bn83cGvIG8r9TOZ1k9DvVZJuqN/529H57/eDMOO8DAdXBBcfPhS7g8KW
L/dVHOecMVOgOW4hT2HX21z9BWlH8Dz5fZ5N7h85vn0cg1fWSGPNyr5+R8fd
Qs2xAXd+/A/ChI8U
          "]], LineBox[CompressedData["
1:eJwBEQTu+yFib1JlAgAAAEAAAAACAAAAJl+L/lzger+yrzTk3GcHP+UUaQz6
wnq/eMNTvDyNVj/yLOoa48F6v/VQUgHqTlc/iGLYk7G/er/wa0+LRNJYP7Hj
ZPU/u3q/5aFJn/nYWz/0PT53IrJ6v+gGn+Mx82A/QlLydf6eer/UcpMLnABn
P/T5X18SdXq/VSW+LbiNcT87GvO/xnN6v3D643DnunE/eL/0EXpyer+Kzwm0
FuhxP9aYQ4rdb3q/vnlVOnVCcj8ehw/Ml2p6vyjO7EYy93I/5FFglNlfer/8
dhtgrGB0P02g5TeSSXq/osh4kqAzdz+FIH/K1xl6v+5rM/eI2Xw/+g+WAycY
er/DtVC7gQp9Py4K2v50Fnq/mP9tf3o7fT/XHuk7DRN6v0OTqAdsnX0/JMkj
0C4Mer+Yuh0YT2F+P7AhC2E2/nm/QQkIORXpfz+S4qEkV+F5v0pTbr1QfIE/
gKPvMt+jeb+c8EL/3IuEP3hdgSm7HHm/9Ne/tVmOij9cexMBbY14v1d7gVSq
FJA/+ouuVzHfd79gVprdvx6TP09VqyTfKne/Gk0WhRT1lT84/4uqiGl2vy4a
/EUbvZg/mccluC+Fdb/uMlkWusGbP6dA8tS3nnS/X2cZBZiSnj+3WvWN4pFz
v75zqAEH0KA//wISUgSFcr+lwfWP4TyiP8gEoNWxbHG/ufr3KpWioz+57L42
6Clwv6PZtc2UJqU/4NxowyPWbb9lRqX/s5CmP6R1zjjL/Gq//VhQOR8ZqD8+
sHEN9wlov8JWsH9jmqk/RELcHjMnZb9f4kFVxwGrP/8Dpaxg4GG/0xOPMneH
rD9QW9fujltdvx/TDZ9G860/XDS6QwnUVr+YfUEY71evP2juBc4W6E6/9GaY
zHFtsD9z8yoDy5hAvwjWqNT7IbE/woQHAbNXQL/4E9H5ISWxP0lZh3uQFkC/
51H5HkgosT9Ql+HMVyg/v8bNSWmULrE/F6zVJ8kdPb+Exer9LDuxP9sC95q6
BDm/AbUsJ15UsT+2ZR522MIwv/qTsHnAhrE/GVGomgc+ML/q0die5omxPx6G
8XBDci+/2Q8BxAyNsT8Mc9q/LV4tv7iLUQ5Zk7E/feNIvAk0Kb92g/Ki8Z+x
P7wemC/f1yC/83I0zCK5sT/CfflCOZcfv+KwXPFIvLE/fNbcC2B+Hb/S7oQW
b7+xPwjT8UyxSxm/smrVYLvFsT/P+lSMYuIQv3BidvVT0rE/6QbeMXmODb9g
oJ4aetWxPwNLRhWFVwm/T97GP6DYsT/iaLM6pOcAvy5aF4rs3rE/T4Vw+W5d
+b4emD+vEuKxP6Wg4hFF6vC+DdZn1DjlsT82PHp9levgvvwTkPle6LE/AAAA
AAAAAADsUbgeheuxP92SBVU=
          "]]},
        Annotation[#, "Charting`Private`Tag$411089#2"]& ], 
       TagBox[
        {RGBColor[0.560181, 0.691569, 0.194885], Thickness[Large], Opacity[
         1.], FaceForm[Opacity[0.3]], LineBox[CompressedData["
1:eJwVxw881Hccx3FTj/LnZjy6uvxn4mIPWZJbiz7Iny1l8ci12IRypxk5fyZx
M3M9NGtc/nR1DLHOTOKn7/3ufgsfYbMMGWG2C9s4ijzYHx4zeux6Px6vx/vx
tI89Hxanr6en96auFy+/8WIMLISqbS7NUwg730q7cJ2Bb1bn2skchcnCjoST
MgbivzQ/PT1DYXqGCbW9jIHpuYtVh6cofDnKrqxEyoAmx9tOf4TClADLrtJ8
BvobO+1z2ik0EyfSt9MZuGPYvyvzKoWKorw19zAGRPd/c0nkUfh6ehtveAsD
xlGu+9zSmvHcd27TEZ1qSBV2zHZmNWF/tkK2OVcNtVzReyE77qBG0lzs6KWG
DV/Bgy+Kb+NlOuXbjg0VfDzgXNe4uwGbPZ2kbq0qcFbuFedW12PtawbqP8Qq
qGuWBGbbfo3ChAZuTYAKjtkoPjmpVmCx30FenZEKrLXGd7Xut3CR1ZIvHqGB
befD5/fU4lhFjRW3loaJJFxYiK1B7mdtCflJNAxx8rJ4U9W44W1icBRo0MS5
rHQvVmIXxcpzMKEh/vjYzKdT5VhYmJ+2PKkE+VmL1sKp65iRYGpNaCVYvr+W
Gsm+hqbEK2D9cyUsGZ6xkhqXoP/oO4F6AiWwy+MVlzylyC7h8LWHlGB+/5nv
928X4KlTCTdlFkoIr/LcbH1YgjWea02lawSir6Rsmw8SY8l68LJ2nEBcg3zq
IEeEUdqGmWSdnSye7FU+ScZs26zVtZ8JzF7m5e1pTcamHGHqKzqfEzxytI9J
xqXVjL4DowR+8bMaZfHP4+89GZtKhwjM79k0f1P8IUpm/pRE/UiAtfUndl+f
AOWMF3ehl0DhdKKqXSRA/cf/aDN1Nu00iqB2CLDXjG4ve0CALfavuhYdhx77
kh4O9BCw+kvlHPP3GbwQ3pYe2E3AdbLy0IplDCJnbCS4jUBF0vigzygfb73k
ETbZSsCIqIsYBz52uP36NEXnjH9lIe6icJS/ayCS3yMQJuH3ObBO4KDm8eBT
hoChfLhni18onmhKn5DSBJ4VlItvRAahTPORrZPOP2yP+K9gJQBNQzqz7ykJ
fFW9MzP7qj/WbPCuaAmBCLos7XSPLwYXVT73vkugqMt27IjgDfSaWLZ/1EIg
cLxiyLViP8aKimI+0Hl90XzAdMgdQ8/W75dRBIY9dhc0Zrmgebdjr6vOPtGv
5qbO7kJO/MLF7mYCkZwDSykKGzxyfCMoUmfPJNeJ5+Jt+FAomTPTuaXeY1oj
3Ir/Azeb41Q=
          "]], LineBox[CompressedData["
1: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
          "]]},
        Annotation[#, "Charting`Private`Tag$411089#3"]& ], {}}, {}}, 
     {Arrowheads[
      0.015], {ArrowBox[{{-0.1, -0.07}, {-0.1, -0.07}}], 
       ArrowBox[{{-0.1, -0.05600000000000001}, {-0.10252649006622518`, \
-0.05600000000000001}}], 
       ArrowBox[{{-0.1, -0.042}, {-0.10505298013245033`, -0.042}}], 
       ArrowBox[{{-0.1, -0.027999999999999997`}, {-0.1075794701986755, \
-0.027999999999999997`}}], 
       ArrowBox[{{-0.1, -0.013999999999999999`}, {-0.11010596026490067`, \
-0.013999999999999999`}}], ArrowBox[{{-0.1, 0.}, {-0.1, 0.}}], 
       ArrowBox[{{-0.1, 0.014000000000000012`}, {-0.11410596026490066`, 
        0.014000000000000012`}}], 
       ArrowBox[{{-0.1, 0.02800000000000001}, {-0.11557947019867551`, 
        0.02800000000000001}}], 
       ArrowBox[{{-0.1, 0.04200000000000001}, {-0.11705298013245033`, 
        0.04200000000000001}}], 
       ArrowBox[{{-0.1, 0.05600000000000002}, {-0.11852649006622518`, 
        0.05600000000000002}}], 
       ArrowBox[{{-0.1, 0.07}, {-0.12000000000000001`, 0.07}}]}, {
       ArrowBox[{{0, -0.07}, {0., -0.07}}], 
       ArrowBox[{{
         0, -0.05600000000000001}, {-0.002737668539325842, \
-0.05600000000000001}}], 
       ArrowBox[{{0, -0.042}, {-0.004762752808988765, -0.042}}], 
       ArrowBox[{{
         0, -0.027999999999999997`}, {-0.006075252808988766, \
-0.027999999999999997`}}], 
       ArrowBox[{{
         0, -0.013999999999999999`}, {-0.006675168539325843, \
-0.013999999999999999`}}], ArrowBox[{{0, 0.}, {-0.0065625000000000015`, 0.}}],
        ArrowBox[{{0, 0.014000000000000012`}, {-0.00608119266055046, 
         0.014000000000000012`}}], 
       ArrowBox[{{0, 0.02800000000000001}, {-0.005184288990825688, 
         0.02800000000000001}}], 
       ArrowBox[{{0, 0.04200000000000001}, {-0.0038717889908256886`, 
         0.04200000000000001}}], 
       ArrowBox[{{0, 0.05600000000000002}, {-0.0021436926605504563`, 
         0.05600000000000002}}], ArrowBox[{{0, 0.07}, {0., 0.07}}]}, {
       ArrowBox[{{0.1, -0.07}, {0.1, -0.07}}], 
       ArrowBox[{{0.1, -0.05600000000000001}, {
        0.094735841394449, -0.05600000000000001}}], 
       ArrowBox[{{0.1, -0.042}, {0.0901842670585609, -0.042}}], 
       ArrowBox[{{0.1, -0.027999999999999997`}, {
        0.08634527699233574, -0.027999999999999997`}}], 
       ArrowBox[{{0.1, -0.013999999999999999`}, {
        0.08321887119577351, -0.013999999999999999`}}], 
       ArrowBox[{{0.1, 0.}, {0.08080504966887417, 0.}}], 
       ArrowBox[{{0.1, 0.014000000000000012`}, {0.07981284707454889, 
        0.014000000000000012`}}], 
       ArrowBox[{{0.1, 0.02800000000000001}, {0.07923624081049882, 
        0.02800000000000001}}], 
       ArrowBox[{{0.1, 0.04200000000000001}, {0.07907523087672398, 
        0.04200000000000001}}], 
       ArrowBox[{{0.1, 0.05600000000000002}, {0.07932981727322438, 
        0.05600000000000002}}], ArrowBox[{{0.1, 0.07}, {0.08, 0.07}}]}, 
      {RGBColor[0, 1, 0], LineBox[{{-0.1, -0.07}, {-0.1, 0.07}}]}, 
      {RGBColor[1, 0, 0], LineBox[{{0.1, -0.07}, {0.1, 0.07}}]}}},
    Axes->{True, True},
    AxesLabel->{None, None},
    AxesOrigin->{0, 0},
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
    PlotRange->{{-0.12000000000000001`, 0.1}, {-0.07, 0.07}},
    PlotRangeClipping->True,
    PlotRangePadding->{{
       Scaled[0.05], 
       Scaled[0.05]}, {
       Scaled[0.05], 
       Scaled[0.05]}},
    Ticks->{Automatic, Automatic}], ",", 
   GraphicsBox[{{{{}, {}, 
       TagBox[
        {RGBColor[0.368417, 0.506779, 0.709798], Thickness[Large], Opacity[
         1.], FaceForm[Opacity[0.3]], LineBox[CompressedData["
1:eJwVz31Q03UABnCi0pDlkbw53t8s4Hg53kWCY77gxYUJxLqg5K1NuuRlYgrC
QgTuOORNKGEbMEAYLARZ8rLf9o0HcbHRAfIWCJGtkzdvQwwKjxJqPnfPPff5
87FPSo9i6evp6R3T9dXyea9CQRsptSnSSLA8tMGz5FP4/sXaQM+aBF7aU/x6
nVPq6fFLyxKoQjb5TQIKS2tXhSfUEmw/Ca8T11NYzAu20/9FgiiPlw1UE4Wx
ziH7vAEJDB6ca5kXU+gyGHPKvilBltbxLl1GgXP/D9fUAAkmS+cEMb9RMDzn
7uN5qRuub8WOBu1RyDw/uDqUcxd6CzbKXBsZbr/H+eyMWReidmi8bIYMuwz2
SFnVHTRvjXTZJcnwzbhLW6dzB9KCugUFRTK49Hpx8xvFkM4/imK0y9DWXRiW
a9uO16InIsQqGSJsRNc+kYqgoP9pO6aRwXrF8N6KdyuK5Wo/AU0OE7tQJlN5
GyP3Dpkp3OR4nAatNqkZRTupY+0fyTFlXpAToG4Ew6JWFZAhxyLLdVvxrAFX
ijX869VypJydW76uFsAtIj/AuU8O/hcWpFxdC7V22TxrVg7Lz//JjDO5hYML
mQ8LduR4bpBsVWlYjfebJ34OtCAwEaSIivwrsdLPrO8IJqDfX2cMf1CCt51s
j2UlEMQI/d+wPlEIn6/6LDauESSUXjTWnOZi5r/LU/YtBKwOvjrInIPqYFZY
q87vWjz16n2agcicaJlzK8FqcUCBB8nA+LZns6eI4Ev2zBH7xAyo1tc4we0E
C8etZmnMdPz4a+w7n94h0Hi8rmniXkBrf8jZyh4C2v5Jk9FRNpL/dlMY9xKU
L6X2D3DYcPCxPFqjs9HQgViJGRvCrhe2DX26P9yTwlsJLPBauzc6pARWW/0u
iX8lo6zaoUJJCNx/bwjZtkzE1+n7xvcUBHVp8xOhs0yU91l35v1EcKBHWkE5
MiHa9S3VGya4slNzxpsTg7kbyeH6SoKoQuaoI+1jBLYPDr85QmDAn1buOx6J
XfVV0MYI1ksEXF7caZg6VzWU6awyjf23ZPsUPNLF3IPjBC2Nh7Nzb55E/O5c
kNFDgti+7y7FKxkYpPtJjScJKh7YzoWzj2I+4cOab3UOm6+bcq/zw2Zb8mXT
KYKXz+jjRlPecPCv8jWfJpj2dS7pzHFFEFdsXKtzaIJDfuaqE6IVg5uHZwji
zAOfXxTZ4ILho0mezv5p7o/3uMZweyJUben8g9h3afH8fvwPgRAFDA==
          "]], LineBox[CompressedData["
1:eJwVzX1Q03UcB3DWJRDK8oAj2BKEdHkdLeXBNLVPMyC4znTAGJjhGkdzjRoP
d1LNIi9AEYFdg7u1CBCChgjsK6Ejf7/vh4eQ4sGLhyHriA4U5cAjBCcNBfr1
x/ve79df7yClNi7tGRcXl31c/m/PmZTe320MXm0IvzuhcoOL+YPZ2jEGu7Wu
NFgUDMdfMvlV3GbQbYqfmX8gHFZSwpQOO4MN/oa+vdFRsHsszfHTJIOrEbKc
0n4ZmLvfynVy/qw7njlYnAjbifC5d/9m0HEsjjf3nhy2Xhx6cYHzouZoUeRw
EixKDkWGTzE4cym2yjn+PjQ3+Rg67jA461p1Z8+yAkLyu3fbZxkczTJsrnBR
wa7woHSPZQZlO+mr1uJMGK7vj9rqyuKCJmzlvP0MFJtUsc0CFisWD29MFOWB
oDdmaV7M4qPb2JZccgGS3P3XByQsynVnEy776MHc92dYdCKLikTTXxhggMuX
igaUahYFR3zzfRzl8BU56xF4hkWx4GmUkDWC8rA6K1vP/YUm+/7S+T0478Mh
TS2LJ1X+m4zfVkI13z30yXUWabaZ5/ZHNazGYqG4n8W6Tkfp1MEaENEbBbxJ
FttXV14pr6kFZWtDU/oSi7X2tsEyUR1I2YLXdZsopkXXbbTq60EaI5sPElBc
Szq2P9DfDMFb1JGnxBS7Ei25qaYGqL+rcYmTUDw5LZH18hrhjTcV90ZkFEe8
S0Nzzl2Br6+8/ZrzFMXAEc+q6OUmMManb6M6isYvJX7/yFugS1cQIdRTfPSR
cSDzEwtUWkstwlqK7mPm0SdBBPaW6AozOP/rPeQM2kngVqpK2cP5vtQZELOL
wAYffLQ/Urw5GKsuExP4MG0hp6uOYl7P3FrIAQI7vI6A2kyR1xbyckoCgUaN
x61rTRRXDZbPOwoIREoe129upjg3NF55r5DAhO90roKz/Xner1uKCXh2te/x
aKFoLZLykw0EPvVTl39goXj6m6Wah1UEQnt6TzzbSnE5K3wguJ1An6k1Ipnz
tOXEwxiGQGpGFb+Z8/BCnq8WCZQJczrkP1O8+rFNcaOHwONM0Y7GNooZytOO
+GECJe94rW1wVlRXCr6wERBtW7clXKN4dPImVI8TkP9mO7fOWXz8hQsPJgks
/tCpiL9OMcAILV7TBM5nN+03c/YcU43umyGwPfY7rzXOT731zpRZAu0B+fNS
K8UHUiu3CPwHaIzcaQ==
          "]]},
        Annotation[#, "Charting`Private`Tag$411850#1"]& ], 
       TagBox[
        {RGBColor[0.880722, 0.611041, 0.142051], Thickness[Large], Opacity[
         1.], FaceForm[Opacity[0.3]], LineBox[CompressedData["
1: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
0QFPYfwPM1yadQ==
          "]], LineBox[CompressedData["
1:eJwtjns41Xccxx0Uwix0QnNKkcvjMpfHiHxcysOaOa4nESebUMktdydZjsvP
yFzmzBonslnZ+DLLLZ9hqZZU7ppcjswlj1wfO2di9jx7P8/ref3x+uetERju
HiQuJiZmu8N/PhqQveU3QWFdjdnr0WApmFYOlRN1UBjf6dFqneMNK/rzalPt
FK4z3Wnzn7IgM3C4gCCFSxdds0/0ngYy9fk6tFA4fcu5TDjsC2vHbeIO11E4
u7tsyniVDfbuKzFbpRT2RxXI3hQLhjVhQIBiDIVeWm0GjTmRYKW2il3RFEaI
piJmmiMhHtf2JkZRSD2T+YU+GwmDPAfqVTiFbQlex2Lso4CRodBdfIFCnZ4F
R5ONKHjtxi4cCaBwM/YAu5p9BVz40x/lO1NY/ig+n28aB9xDKX8MqVK4eNF0
I3MkGUQKX0toq1DY2cBsSd3DAcM9L7eu0CnkbYelJFpxYIgxZyWvRKFDQZXU
pe84oPn4yHNDuZ3erK7ieu4q1GrInjPfykI7GWnLfXMpkC+4pcmazMKPPS7f
ZyanwrWKtybjFVl4c8l+ezQ7DeLPpuq2fJCFa0PY4JNLgV+SEi0sJxNZSame
d5TzQJT9M8t4PAPZ3iWvkFEArl53Ncf1MlDNhc5VXi8Ci+3sO5mh6Wiotnny
wH0efPNQq9GIy8VFEx96c/u38IPtSv+90jQMCFbdxcsvhXtn1nMEX13Htugq
mtRzPmyLK7pLcr/Ayvb1G5PW5fBIkj9ALqVik2hDr6i8ApoW2sxnda9hxUjD
08KjlTAxGtJ5ZJCDQY6V2/V538PtmB6LJ5uJ+O400/KgahXY1EbKb8jEY4d3
bcpnJT/CCftRhql2DAYI7Lwe0u7CtkRlNXsiEvuUbpjEZVQD03doMdc3DA/2
yZc5rv4EfmbNDjL955HHsVN5y6qBkMVdPfRZf1w7z+uODKuF6FU9iSc8JkoP
VvX/o0GgI02KVs9i4t9KL4QaWgScfTKS8uhMnHETMpx0CDCLJ7tZOq7Y9dQ5
tNCQwP7qAe3H6i6Y9mD+nb4VgT/FN0qaJZ2R1qCv7e9J4NcgRuxwhy2KCmoT
fksnoOpWVSJlY4vzL4ZL/8oiwEhfjnCIAhxRoP0ul0NALvolGvgfx8Zst/d8
CghwppxaZcwsMfb6SvlyGYFWBs9ofOhDXI0y6z7ctPOXI7S3LDZCQa3fslMr
geTBUVn2VQPsXUyjhyMB6b7lT8gpXay7MMBueUDgmcjzy0DBIYwIjF336CUw
t3vMOCFXHdn8UrXEAQISpxz3cVmq6DrWBfxhAoKQ+mO3Z95HwzP7qYUxAq7c
COHlszLI4EGNooBAJV+w9+S8GMoPBvdbTBMwt07kFL1ZattUyhP6zxIQ+38L
bo0M7hsC/wKBzAdH
          "]]},
        Annotation[#, "Charting`Private`Tag$411850#2"]& ], 
       TagBox[
        {RGBColor[0.560181, 0.691569, 0.194885], Thickness[Large], Opacity[
         1.], FaceForm[Opacity[0.3]], LineBox[CompressedData["
1:eJwVz30w23ccB3Cl5dLkdqZp1FPIZFp2TNXT7NqPp3J6VJtNbLQjVKotqXhY
Z6RGVVW3krqlE0pWE60Ozb6JJOZ80LVo6VZWYozsjtKhp7NjtNX9+r573/te
f745Sad5KaYmJiYBVN+svOpN9LBwWMc+P69Cz67I6LGremhanetUz6nwzwuV
+2xkeki9ZpMwPaPCs+vj/VVX9DA992VdiFGF42mfVF67pIeJgr1Opo9VuKnk
9fNWiR4Gm3s4BZ0qXL1oPvlaoIcW2iA3V6pCqWE1I/I9PYi7/3JL91PhRoij
oU+rA/pn7nvez76NfQklgs5oHWQd75rtyWtFocL/Dm9RC/U7xUcOslpw5NeA
S9ISLbwKEvZ/c+VHLHDPXxK5aeHsQ9fG5l23sCqnv7T1fhu4anZLChU38f4r
TfnjjDZovF0clu94A+Uryyfandogiq38KlanxLZT3vFzgxpweEInT7wa0PP6
21bJxRpgOgXy+b31GNrOtZ8CDUyKcGEh6ToqDBpx8ZoahqzP5fkZFWieXNhQ
87MaJlLcVn55Vov9ukfpsnw1pB4anSkyViPT7+jiaLAa5MdsOy4bv0N5xTC7
2VINdkfXs+KZMlx/q90lYpLAEi3ZvoJeiVK7vVwLQoBZnao871uBY0081v5S
Ajbdi0H3IsqwrL4nIjuJQEyd72aHkGIMaTgTPhNMIPHrzG3z4RK8d3e8sINL
IOWW3PihtRjtRy9OfkTZxfbpbs3TDGRdYH0+70xgttTvnEdHBv7X8yDGjvIJ
4e/vcgQZmNPUMCrhEPgj2H6EwT+NUf7WM1FsAvMeZvPfS9IwN/q5i+0OAgyL
R8yBASEe88ma0lkTuDydru0UC/Ef/fBQLGXLnq1xKpYQN2o9T8pY1B9JaJ0s
MQUHDJ/Gs7YTsF/Wugr+TcYD9JPhHCsC7lO1+1bsBIinCsOSGQRqRGO/BY7w
sb6Ex6ZT3qrWleud+bjsqvMgdAJn1q4e9BLH4AgtaM2MMq+YP+DM+BiVHhE+
N2gEaPLhXvPgw5jJ2BPxwpzAYlm1pCo+HC1bIpuUlPu2x70oW9mPNob1EB7l
HxQ7cvOloSi6y+Q0bSEQ1/ZtdkJvEDpvgaIjmwmU33EcPSD0R4e/XzbSKIeN
1Qy51/hgUWy0udaMwMtnNg8th7xQ+kCVZkV52HtXWXOeGwYMdWd3mRIITHyn
MGuWi1ECoUZEOd76g6VMJRsHv6jzcKDsK3Kf3JBsQ1lBjnB6E4GfbnpPTxy3
wP8BTarQ1g==
          "]], LineBox[CompressedData["
1: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
LNqP4fdEn5z4hp40K5O+OcGA/wMUbEsg
          "]]},
        Annotation[#, "Charting`Private`Tag$411850#3"]& ], {}}, {}}, 
     {Arrowheads[
      0.015], {ArrowBox[{{-0.1, -0.07}, {-0.1, -0.07}}], 
       ArrowBox[{{-0.1, -0.05600000000000001}, {-0.10252649006622518`, \
-0.05600000000000001}}], 
       ArrowBox[{{-0.1, -0.042}, {-0.10505298013245033`, -0.042}}], 
       ArrowBox[{{-0.1, -0.027999999999999997`}, {-0.1075794701986755, \
-0.027999999999999997`}}], 
       ArrowBox[{{-0.1, -0.013999999999999999`}, {-0.11010596026490067`, \
-0.013999999999999999`}}], ArrowBox[{{-0.1, 0.}, {-0.1, 0.}}], 
       ArrowBox[{{-0.1, 0.014000000000000012`}, {-0.11410596026490066`, 
        0.014000000000000012`}}], 
       ArrowBox[{{-0.1, 0.02800000000000001}, {-0.11557947019867551`, 
        0.02800000000000001}}], 
       ArrowBox[{{-0.1, 0.04200000000000001}, {-0.11705298013245033`, 
        0.04200000000000001}}], 
       ArrowBox[{{-0.1, 0.05600000000000002}, {-0.11852649006622518`, 
        0.05600000000000002}}], 
       ArrowBox[{{-0.1, 0.07}, {-0.12000000000000001`, 0.07}}]}, {
       ArrowBox[{{0, -0.07}, {0., -0.07}}], 
       ArrowBox[{{
         0, -0.05600000000000001}, {-0.005475337078651684, \
-0.05600000000000001}}], 
       ArrowBox[{{0, -0.042}, {-0.00952550561797753, -0.042}}], 
       ArrowBox[{{
         0, -0.027999999999999997`}, {-0.012150505617977533`, \
-0.027999999999999997`}}], 
       ArrowBox[{{
         0, -0.013999999999999999`}, {-0.013350337078651686`, \
-0.013999999999999999`}}], ArrowBox[{{0, 0.}, {-0.013125000000000003`, 0.}}], 
       ArrowBox[{{0, 0.014000000000000012`}, {-0.01216238532110092, 
         0.014000000000000012`}}], 
       ArrowBox[{{0, 0.02800000000000001}, {-0.010368577981651377`, 
         0.02800000000000001}}], 
       ArrowBox[{{0, 0.04200000000000001}, {-0.007743577981651377, 
         0.04200000000000001}}], 
       ArrowBox[{{0, 0.05600000000000002}, {-0.004287385321100913, 
         0.05600000000000002}}], ArrowBox[{{0, 0.07}, {0., 0.07}}]}, {
       ArrowBox[{{0.1, -0.07}, {0.1, -0.07}}], 
       ArrowBox[{{0.1, -0.05600000000000001}, {
        0.09199817285512316, -0.05600000000000001}}], 
       ArrowBox[{{0.1, -0.042}, {0.08542151424957214, -0.042}}], 
       ArrowBox[{{0.1, -0.027999999999999997`}, {
        0.08027002418334697, -0.027999999999999997`}}], 
       ArrowBox[{{0.1, -0.013999999999999999`}, {
        0.07654370265644767, -0.013999999999999999`}}], 
       ArrowBox[{{0.1, 0.}, {0.07424254966887417, 0.}}], 
       ArrowBox[{{0.1, 0.014000000000000012`}, {0.07373165441399843, 
        0.014000000000000012`}}], 
       ArrowBox[{{0.1, 0.02800000000000001}, {0.07405195181967314, 
        0.02800000000000001}}], 
       ArrowBox[{{0.1, 0.04200000000000001}, {0.0752034418858983, 
        0.04200000000000001}}], 
       ArrowBox[{{0.1, 0.05600000000000002}, {0.07718612461267393, 
        0.05600000000000002}}], ArrowBox[{{0.1, 0.07}, {0.08, 0.07}}]}, 
      {RGBColor[0, 1, 0], LineBox[{{-0.1, -0.07}, {-0.1, 0.07}}]}, 
      {RGBColor[1, 0, 0], LineBox[{{0.1, -0.07}, {0.1, 0.07}}]}}},
    Axes->{True, True},
    AxesLabel->{None, None},
    AxesOrigin->{0, 0},
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
    PlotRange->{{-0.12000000000000001`, 0.1}, {-0.07, 0.07}},
    PlotRangeClipping->True,
    PlotRangePadding->{{
       Scaled[0.05], 
       Scaled[0.05]}, {
       Scaled[0.05], 
       Scaled[0.05]}},
    Ticks->{Automatic, Automatic}], ",", 
   GraphicsBox[{{{{}, {}, 
       TagBox[
        {RGBColor[0.368417, 0.506779, 0.709798], Thickness[Large], Opacity[
         1.], FaceForm[Opacity[0.3]], LineBox[CompressedData["
1:eJwVz31Q03UABnCi0pDlkbw53t8s4Hg53kWCY77gxYUJxLqg5K1NuuRlYgrC
QgTuOORNKGEbMEAYLARZ8rLf9o0HcbHRAfIWCJGtkzdvQwwKjxJqPnfPPff5
87FPSo9i6evp6R3T9dXyea9CQRsptSnSSLA8tMGz5FP4/sXaQM+aBF7aU/x6
nVPq6fFLyxKoQjb5TQIKS2tXhSfUEmw/Ca8T11NYzAu20/9FgiiPlw1UE4Wx
ziH7vAEJDB6ca5kXU+gyGHPKvilBltbxLl1GgXP/D9fUAAkmS+cEMb9RMDzn
7uN5qRuub8WOBu1RyDw/uDqUcxd6CzbKXBsZbr/H+eyMWReidmi8bIYMuwz2
SFnVHTRvjXTZJcnwzbhLW6dzB9KCugUFRTK49Hpx8xvFkM4/imK0y9DWXRiW
a9uO16InIsQqGSJsRNc+kYqgoP9pO6aRwXrF8N6KdyuK5Wo/AU0OE7tQJlN5
GyP3Dpkp3OR4nAatNqkZRTupY+0fyTFlXpAToG4Ew6JWFZAhxyLLdVvxrAFX
ijX869VypJydW76uFsAtIj/AuU8O/hcWpFxdC7V22TxrVg7Lz//JjDO5hYML
mQ8LduR4bpBsVWlYjfebJ34OtCAwEaSIivwrsdLPrO8IJqDfX2cMf1CCt51s
j2UlEMQI/d+wPlEIn6/6LDauESSUXjTWnOZi5r/LU/YtBKwOvjrInIPqYFZY
q87vWjz16n2agcicaJlzK8FqcUCBB8nA+LZns6eI4Ev2zBH7xAyo1tc4we0E
C8etZmnMdPz4a+w7n94h0Hi8rmniXkBrf8jZyh4C2v5Jk9FRNpL/dlMY9xKU
L6X2D3DYcPCxPFqjs9HQgViJGRvCrhe2DX26P9yTwlsJLPBauzc6pARWW/0u
iX8lo6zaoUJJCNx/bwjZtkzE1+n7xvcUBHVp8xOhs0yU91l35v1EcKBHWkE5
MiHa9S3VGya4slNzxpsTg7kbyeH6SoKoQuaoI+1jBLYPDr85QmDAn1buOx6J
XfVV0MYI1ksEXF7caZg6VzWU6awyjf23ZPsUPNLF3IPjBC2Nh7Nzb55E/O5c
kNFDgti+7y7FKxkYpPtJjScJKh7YzoWzj2I+4cOab3UOm6+bcq/zw2Zb8mXT
KYKXz+jjRlPecPCv8jWfJpj2dS7pzHFFEFdsXKtzaIJDfuaqE6IVg5uHZwji
zAOfXxTZ4ILho0mezv5p7o/3uMZweyJUben8g9h3afH8fvwPgRAFDA==
          "]], LineBox[CompressedData["
1:eJwVzX1Q03UcB3DWJRDK8oAj2BKEdHkdLeXBNLVPMyC4znTAGJjhGkdzjRoP
d1LNIi9AEYFdg7u1CBCChgjsK6Ejf7/vh4eQ4sGLhyHriA4U5cAjBCcNBfr1
x/ve79df7yClNi7tGRcXl31c/m/PmZTe320MXm0IvzuhcoOL+YPZ2jEGu7Wu
NFgUDMdfMvlV3GbQbYqfmX8gHFZSwpQOO4MN/oa+vdFRsHsszfHTJIOrEbKc
0n4ZmLvfynVy/qw7njlYnAjbifC5d/9m0HEsjjf3nhy2Xhx6cYHzouZoUeRw
EixKDkWGTzE4cym2yjn+PjQ3+Rg67jA461p1Z8+yAkLyu3fbZxkczTJsrnBR
wa7woHSPZQZlO+mr1uJMGK7vj9rqyuKCJmzlvP0MFJtUsc0CFisWD29MFOWB
oDdmaV7M4qPb2JZccgGS3P3XByQsynVnEy776MHc92dYdCKLikTTXxhggMuX
igaUahYFR3zzfRzl8BU56xF4hkWx4GmUkDWC8rA6K1vP/YUm+/7S+T0478Mh
TS2LJ1X+m4zfVkI13z30yXUWabaZ5/ZHNazGYqG4n8W6Tkfp1MEaENEbBbxJ
FttXV14pr6kFZWtDU/oSi7X2tsEyUR1I2YLXdZsopkXXbbTq60EaI5sPElBc
Szq2P9DfDMFb1JGnxBS7Ei25qaYGqL+rcYmTUDw5LZH18hrhjTcV90ZkFEe8
S0Nzzl2Br6+8/ZrzFMXAEc+q6OUmMManb6M6isYvJX7/yFugS1cQIdRTfPSR
cSDzEwtUWkstwlqK7mPm0SdBBPaW6AozOP/rPeQM2kngVqpK2cP5vtQZELOL
wAYffLQ/Urw5GKsuExP4MG0hp6uOYl7P3FrIAQI7vI6A2kyR1xbyckoCgUaN
x61rTRRXDZbPOwoIREoe129upjg3NF55r5DAhO90roKz/Xner1uKCXh2te/x
aKFoLZLykw0EPvVTl39goXj6m6Wah1UEQnt6TzzbSnE5K3wguJ1An6k1Ipnz
tOXEwxiGQGpGFb+Z8/BCnq8WCZQJczrkP1O8+rFNcaOHwONM0Y7GNooZytOO
+GECJe94rW1wVlRXCr6wERBtW7clXKN4dPImVI8TkP9mO7fOWXz8hQsPJgks
/tCpiL9OMcAILV7TBM5nN+03c/YcU43umyGwPfY7rzXOT731zpRZAu0B+fNS
K8UHUiu3CPwHaIzcaQ==
          "]]},
        Annotation[#, "Charting`Private`Tag$412603#1"]& ], 
       TagBox[
        {RGBColor[0.880722, 0.611041, 0.142051], Thickness[Large], Opacity[
         1.], FaceForm[Opacity[0.3]], LineBox[CompressedData["
1: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

          "]], LineBox[CompressedData["
1:eJwtjnkwnAcchm0mLBHNsKJxrRFxNMNKyEQcya9EBJ3EsY5Fy4qyg4ijjStk
q1mEDZZvTbeijlUNEolPui0SfhIRpnUkzt2WtKWOqhFnWTajOtN35pnnj+ef
1/hKvG/kPiUlpQ/3+M+hufMdFyyEWCI+9ecEhwqNg5fzHLWEmNrFfOpUEAA/
VFv7xWgKccPbl7JwORBmPaYY3YeEuBzrxXcdYkF3g/pW/EEhzlR7VMqlIZD6
8Jrsa2UhzqtUTp9cY0Nz+3XpuU0CR5II9XIlDqTt5Pb0jxPob9ph1VKQCI3M
fw6NjhGYsD2dMNeWCHeLUgp+HSUwf1Dte535RKhubjafHSawI83f4bpLEgTW
qstWBgm0GFh0s9lMgqtn3a2newhUJOuzH7A/B4czi/VWPxIo7k0tqbJNgUjW
b+PhBIFLsbabt2UZoOA3uRiWENgl8X6SdSATvs01wXEBgaLdOG66YyYcHV9a
9Cgk8DxRR736TSZMjOkZmOTt9TbDI17hN8E1qLe37iaBzmqq9of/4sJSdFoI
JZpAT+a1du+MLKhus42acyCwfNlld4LPA30V47A7oyW4Po6SoMJ8yC4f6NSM
KcHAG1l+DdoCUMw/p0TOFSM7oGwS6QQouF+EmLOLUe+STrb2RinE7s5zzQYF
yNBTXNBvF8Fjf4Ofpk0EuGQTpNP27C7ssGORtlSIYRxdZVFJBdBUl0eGgwuw
47M6CvVVFXD369/I6eFj7bONoj+cxGBJTeg8YJKPrdubx0vFNaATQfedOHcb
a2SSfqFZLdTVFg6VsXMw0q1297HgO3CUlsWIzvLwHcvb3ki3Dk64HvZMo36J
zwOauBFl9RAZ4fmwr42LYVPO/j2U+7Cbvbmv+FU6DtOKbFJyH0Amz9j2/v5k
NBrWqHRbawS3ez+vqhgloijT+cjbwEcwmMTT02RwcD1K1JcY1wSMuE7eiRkW
qo7VjewYk2BykZ915xYLt2iv5camJLxV/qhVaszCOR853d2ChIyT9TLn0EB8
2e8RLWSQoOX8+2TAmD/yuhfeWTqSYOpiv87v8kWKxNI81I8EgciKdD3mgdtE
U1pnDgn30hQc9U/cceG1tGI2j4SvjkmEzaUXUXaI8uJgAQkeY9NeYhU3bOH7
vBdEkFDZcPoSdc4Fk2+tilcqSTBgfNozcN4e15JO9R1tJcGX7rgaQ9rhVNPH
K+5PSZismlHtpZ/GoSWeTjyS4BYqkb/YssHmmFH2k24S7FK5QwTzA0y4krzB
HCLBOjtq5pfjZsiuqtBLHyXBpWV9sIZigl5vXkKVlASmoQYrOUQXGcHv5y++
IUERoe1IU6EhXQSPtKZI2FoeLuOEqaHGGGfkzMzen2A7J3a4vENBE8hD50lQ
+n+LPi307L9J+BeccAdD
          "]]},
        Annotation[#, "Charting`Private`Tag$412603#2"]& ], 
       TagBox[
        {RGBColor[0.560181, 0.691569, 0.194885], Thickness[Large], Opacity[
         1.], FaceForm[Opacity[0.3]], LineBox[CompressedData["
1:eJwV0A0w1HkYB3CjIjElbxulvOUteiEv18s9XkpXV06pVV5KtEudl5bSsTZt
uyKHVi+75+VQalkiP5a1pX2iLrmTpCs5G3vaSCKV6tLL3L9n5plnPjPfmWfm
axkRv42hqaGh8SO1325B/reRw8utTQvTRwlaRG91XCWSQ+WH5wrpc4KbKphz
+87KIfp30z3qZwQzOJJBc4Ec1M9TSnxVBCvZgrzyE3JQpq210HxIUHD7qcVf
iXK4W91qmaYgqBSWzAj0l0ONzl2b5DyCbMuYYcZ0ObBa/nWM9SDYYcD9RRHd
BLq7nV2XHapFuyllv+UTGSRG3RhuZV9BjVt/jpfukkGZHSvU36QG75n9wfvS
1QhfvJntOacvY9LFdFvzoEY42ulQXm1fhTxpDHdZbwM4NKzgcEsl+PpeZFRb
ZAOU1/L9UhdVYCd3zeXuT1LYslB8LKhJjI/POqc55EnBfEi3fsjlEiZ4sIp+
cJWCkYUXnd5WhrU94vkiZT30x+HLlxEXcJ59zREuvx66aTy2h6oU9TMnfcY8
6kHJcHx/a7wYO1G4U2e0DqIDep4dVxVi/oALU3GpDgr2mTXnqn7D6w1CC/GB
OpgfNpUYYiRE9X6PmcLldTChE7lAoHsGn4Q7as7WqAOjwmhxursAi1tzHpXd
J2DaMuZ9e2MWXhszfRNQSWBHift0c18+ysK2jbZLCExINjNLnfh4I0i2ypdy
tjTijrUJH6dGtJTuFQRa23OzHUd4OCuj2d5KTGD55JCR5ykeFpdxX8y8QEBv
o2hxYN9xLGImzqEVUPk3H/xOJnJRbfiu3+1XAuHZCYajGziY5DXw+GoWAaVT
Od2exsGaa8aeXpR33u3LZwylon5xlO3mkwQCZq+3UPFT8bRBSWt0BgEvAc35
YQsbC66GfpTyCFiebfbD1Sl4RcswPD+VwGChVsqZZUdwXDtj2hLKu9esvt71
NQm7gzboXWcT+EcZrzG7Mwmzn17eMphCoNu890RmTBIqKnUFK5IJ3CypOsOR
HEab/2iGTw8TuFgWUB1lfQg/5v5scDqeAKOqQLWaxsLHbVE97pRtzUZWNIwc
xNpxMtkXR2A404O3tPkg+mgt97SjvJ/592LLvQdxKvTBYEsM9d9nwSM9ejw2
VTTe1j5AYHTptNHznBiMk7+683Af1Z/2faOODiY6EYkonXKuOlamYDFxUEgU
bpT1W2cFExMmujhVGYsiCRhx1pUIwxnIPLp+OCyCwIK3Moe9k5Fo1mJi+nkP
AeeB4u/fz9+LClwiSwkhUBTX2+X1iI7ndVkv3CnPkjadklvT0dbmXMLbYAJH
Por8XVg70OBaMjeW8jY+vcNabzuyj0nzGbsI6BQ8aNPy2YqC/RP1jCACY1mF
nPyQDZiZZuVmR/mOcfCnrPfr0SrCVXeETvVXOi85NW8drsp53RBLObjx3KE9
bd44lTIwg72DwKmbi3o2MT3x6zvtpUDZr7eo27nIDS+snVM1jfLncdNO/W4X
7HK5WpazncCDlfZZ1WxH3KUKWxRI2Svcips4bIP8YNWreZRDaN9NJIgX4k/n
vY0HAgm4xzn3f+UYYqiIqW6kXCdZqVZGaeP/cc5kpg==
          "]], LineBox[CompressedData["
1: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
8YufCfg/OGbN0w==
          "]]},
        Annotation[#, "Charting`Private`Tag$412603#3"]& ], {}}, {}}, 
     {Arrowheads[
      0.015], {ArrowBox[{{-0.1, -0.07}, {-0.1, -0.07}}], 
       ArrowBox[{{-0.1, -0.05600000000000001}, {-0.10252649006622518`, \
-0.05600000000000001}}], 
       ArrowBox[{{-0.1, -0.042}, {-0.10505298013245033`, -0.042}}], 
       ArrowBox[{{-0.1, -0.027999999999999997`}, {-0.1075794701986755, \
-0.027999999999999997`}}], 
       ArrowBox[{{-0.1, -0.013999999999999999`}, {-0.11010596026490067`, \
-0.013999999999999999`}}], ArrowBox[{{-0.1, 0.}, {-0.1, 0.}}], 
       ArrowBox[{{-0.1, 0.014000000000000012`}, {-0.11410596026490066`, 
        0.014000000000000012`}}], 
       ArrowBox[{{-0.1, 0.02800000000000001}, {-0.11557947019867551`, 
        0.02800000000000001}}], 
       ArrowBox[{{-0.1, 0.04200000000000001}, {-0.11705298013245033`, 
        0.04200000000000001}}], 
       ArrowBox[{{-0.1, 0.05600000000000002}, {-0.11852649006622518`, 
        0.05600000000000002}}], 
       ArrowBox[{{-0.1, 0.07}, {-0.12000000000000001`, 0.07}}]}, {
       ArrowBox[{{0, -0.07}, {0., -0.07}}], 
       ArrowBox[{{
         0, -0.05600000000000001}, {-0.008213005617977527, \
-0.05600000000000001}}], 
       ArrowBox[{{0, -0.042}, {-0.014288258426966296`, -0.042}}], 
       ArrowBox[{{
         0, -0.027999999999999997`}, {-0.0182257584269663, \
-0.027999999999999997`}}], 
       ArrowBox[{{
         0, -0.013999999999999999`}, {-0.020025505617977533`, \
-0.013999999999999999`}}], ArrowBox[{{0, 0.}, {-0.019687500000000007`, 0.}}], 
       ArrowBox[{{0, 0.014000000000000012`}, {-0.01824357798165138, 
         0.014000000000000012`}}], 
       ArrowBox[{{0, 0.02800000000000001}, {-0.015552866972477066`, 
         0.02800000000000001}}], 
       ArrowBox[{{0, 0.04200000000000001}, {-0.011615366972477066`, 
         0.04200000000000001}}], 
       ArrowBox[{{0, 0.05600000000000002}, {-0.00643107798165137, 
         0.05600000000000002}}], ArrowBox[{{0, 0.07}, {0., 0.07}}]}, {
       ArrowBox[{{0.1, -0.07}, {0.1, -0.07}}], 
       ArrowBox[{{0.1, -0.05600000000000001}, {
        0.08926050431579731, -0.05600000000000001}}], 
       ArrowBox[{{0.1, -0.042}, {0.08065876144058337, -0.042}}], 
       ArrowBox[{{0.1, -0.027999999999999997`}, {
        0.0741947713743582, -0.027999999999999997`}}], 
       ArrowBox[{{0.1, -0.013999999999999999`}, {
        0.06986853411712181, -0.013999999999999999`}}], 
       ArrowBox[{{0.1, 0.}, {0.06768004966887417, 0.}}], 
       ArrowBox[{{0.1, 0.014000000000000012`}, {0.06765046175344797, 
        0.014000000000000012`}}], 
       ArrowBox[{{0.1, 0.02800000000000001}, {0.06886766282884745, 
        0.02800000000000001}}], 
       ArrowBox[{{0.1, 0.04200000000000001}, {0.07133165289507261, 
        0.04200000000000001}}], 
       ArrowBox[{{0.1, 0.05600000000000002}, {0.07504243195212347, 
        0.05600000000000002}}], ArrowBox[{{0.1, 0.07}, {0.08, 0.07}}]}, 
      {RGBColor[0, 1, 0], LineBox[{{-0.1, -0.07}, {-0.1, 0.07}}]}, 
      {RGBColor[1, 0, 0], LineBox[{{0.1, -0.07}, {0.1, 0.07}}]}}},
    Axes->{True, True},
    AxesLabel->{None, None},
    AxesOrigin->{0, 0},
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
    PlotRange->{{-0.12000000000000001`, 0.1}, {-0.07, 0.07}},
    PlotRangeClipping->True,
    PlotRangePadding->{{
       Scaled[0.05], 
       Scaled[0.05]}, {
       Scaled[0.05], 
       Scaled[0.05]}},
    Ticks->{Automatic, Automatic}], ",", 
   GraphicsBox[{{{{}, {}, 
       TagBox[
        {RGBColor[0.368417, 0.506779, 0.709798], Thickness[Large], Opacity[
         1.], FaceForm[Opacity[0.3]], LineBox[CompressedData["
1:eJwVz31Q03UABnCi0pDlkbw53t8s4Hg53kWCY77gxYUJxLqg5K1NuuRlYgrC
QgTuOORNKGEbMEAYLARZ8rLf9o0HcbHRAfIWCJGtkzdvQwwKjxJqPnfPPff5
87FPSo9i6evp6R3T9dXyea9CQRsptSnSSLA8tMGz5FP4/sXaQM+aBF7aU/x6
nVPq6fFLyxKoQjb5TQIKS2tXhSfUEmw/Ca8T11NYzAu20/9FgiiPlw1UE4Wx
ziH7vAEJDB6ca5kXU+gyGHPKvilBltbxLl1GgXP/D9fUAAkmS+cEMb9RMDzn
7uN5qRuub8WOBu1RyDw/uDqUcxd6CzbKXBsZbr/H+eyMWReidmi8bIYMuwz2
SFnVHTRvjXTZJcnwzbhLW6dzB9KCugUFRTK49Hpx8xvFkM4/imK0y9DWXRiW
a9uO16InIsQqGSJsRNc+kYqgoP9pO6aRwXrF8N6KdyuK5Wo/AU0OE7tQJlN5
GyP3Dpkp3OR4nAatNqkZRTupY+0fyTFlXpAToG4Ew6JWFZAhxyLLdVvxrAFX
ijX869VypJydW76uFsAtIj/AuU8O/hcWpFxdC7V22TxrVg7Lz//JjDO5hYML
mQ8LduR4bpBsVWlYjfebJ34OtCAwEaSIivwrsdLPrO8IJqDfX2cMf1CCt51s
j2UlEMQI/d+wPlEIn6/6LDauESSUXjTWnOZi5r/LU/YtBKwOvjrInIPqYFZY
q87vWjz16n2agcicaJlzK8FqcUCBB8nA+LZns6eI4Ev2zBH7xAyo1tc4we0E
C8etZmnMdPz4a+w7n94h0Hi8rmniXkBrf8jZyh4C2v5Jk9FRNpL/dlMY9xKU
L6X2D3DYcPCxPFqjs9HQgViJGRvCrhe2DX26P9yTwlsJLPBauzc6pARWW/0u
iX8lo6zaoUJJCNx/bwjZtkzE1+n7xvcUBHVp8xOhs0yU91l35v1EcKBHWkE5
MiHa9S3VGya4slNzxpsTg7kbyeH6SoKoQuaoI+1jBLYPDr85QmDAn1buOx6J
XfVV0MYI1ksEXF7caZg6VzWU6awyjf23ZPsUPNLF3IPjBC2Nh7Nzb55E/O5c
kNFDgti+7y7FKxkYpPtJjScJKh7YzoWzj2I+4cOab3UOm6+bcq/zw2Zb8mXT
KYKXz+jjRlPecPCv8jWfJpj2dS7pzHFFEFdsXKtzaIJDfuaqE6IVg5uHZwji
zAOfXxTZ4ILho0mezv5p7o/3uMZweyJUben8g9h3afH8fvwPgRAFDA==
          "]], LineBox[CompressedData["
1:eJwVzX1Q03UcB3DWJRDK8oAj2BKEdHkdLeXBNLVPMyC4znTAGJjhGkdzjRoP
d1LNIi9AEYFdg7u1CBCChgjsK6Ejf7/vh4eQ4sGLhyHriA4U5cAjBCcNBfr1
x/ve79df7yClNi7tGRcXl31c/m/PmZTe320MXm0IvzuhcoOL+YPZ2jEGu7Wu
NFgUDMdfMvlV3GbQbYqfmX8gHFZSwpQOO4MN/oa+vdFRsHsszfHTJIOrEbKc
0n4ZmLvfynVy/qw7njlYnAjbifC5d/9m0HEsjjf3nhy2Xhx6cYHzouZoUeRw
EixKDkWGTzE4cym2yjn+PjQ3+Rg67jA461p1Z8+yAkLyu3fbZxkczTJsrnBR
wa7woHSPZQZlO+mr1uJMGK7vj9rqyuKCJmzlvP0MFJtUsc0CFisWD29MFOWB
oDdmaV7M4qPb2JZccgGS3P3XByQsynVnEy776MHc92dYdCKLikTTXxhggMuX
igaUahYFR3zzfRzl8BU56xF4hkWx4GmUkDWC8rA6K1vP/YUm+/7S+T0478Mh
TS2LJ1X+m4zfVkI13z30yXUWabaZ5/ZHNazGYqG4n8W6Tkfp1MEaENEbBbxJ
FttXV14pr6kFZWtDU/oSi7X2tsEyUR1I2YLXdZsopkXXbbTq60EaI5sPElBc
Szq2P9DfDMFb1JGnxBS7Ei25qaYGqL+rcYmTUDw5LZH18hrhjTcV90ZkFEe8
S0Nzzl2Br6+8/ZrzFMXAEc+q6OUmMManb6M6isYvJX7/yFugS1cQIdRTfPSR
cSDzEwtUWkstwlqK7mPm0SdBBPaW6AozOP/rPeQM2kngVqpK2cP5vtQZELOL
wAYffLQ/Urw5GKsuExP4MG0hp6uOYl7P3FrIAQI7vI6A2kyR1xbyckoCgUaN
x61rTRRXDZbPOwoIREoe129upjg3NF55r5DAhO90roKz/Xner1uKCXh2te/x
aKFoLZLykw0EPvVTl39goXj6m6Wah1UEQnt6TzzbSnE5K3wguJ1An6k1Ipnz
tOXEwxiGQGpGFb+Z8/BCnq8WCZQJczrkP1O8+rFNcaOHwONM0Y7GNooZytOO
+GECJe94rW1wVlRXCr6wERBtW7clXKN4dPImVI8TkP9mO7fOWXz8hQsPJgks
/tCpiL9OMcAILV7TBM5nN+03c/YcU43umyGwPfY7rzXOT731zpRZAu0B+fNS
K8UHUiu3CPwHaIzcaQ==
          "]]},
        Annotation[#, "Charting`Private`Tag$413340#1"]& ], 
       TagBox[
        {RGBColor[0.880722, 0.611041, 0.142051], Thickness[Large], Opacity[
         1.], FaceForm[Opacity[0.3]], LineBox[CompressedData["
1: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
cLtQZ6TfXRj/A5Q1pdY=
          "]], LineBox[CompressedData["
1:eJwtjn001Xccx10Uwix0Q+uWIg8HzcMxIp9QDmvmerzJw73ZDJXnPLuZMzfG
SC65fmvcyGZl48ssT/kMS7Wk8qzJw5V5yFGejt07MTtn73Ne5/XH65+3dlCk
R7C0lJTUiW3+8xF2zqb/BIV1NRavRkPkYFo9TEnSQWFip2erba4PLBvNa021
U7jG9KDNf8qCrKBhPkEK315wyznZewbI1Odr0ELh9E2XMvGwH6wet0s4VEfh
7M6yKdMVDjh4LMdtllLYH8NXvCEVAqtiNls1jkJv3TbjxtxosNFawa5YCqMk
U1EzzdGQiKu7k2MozH6q8At9NhoGBY7ZLyMpbEvyPhbnEAOMTJXu4vMU6vcs
OJmtx8Ard07hCJvCjfh9nGrOJXAVTn9U4EJh+cPEAqF5AvAOpv0xpEnh4gXz
9ayRVJCoXJfR06Cws4HZkr6LCya7XmxeolMo2ApPS7bhwhBjzkZZjUJHfpXc
xe+4oPPo8DMTpe3evF/D7dxlqNVWPGe5WYL2CvLWe+bSoEB0U4c1WYIfe0bc
Y6amw5cVb8zGK0rwxluHrdGcDEgMSDdo+aAEV4ewwTcvG/xT1GjhuQJkpaR7
3VbPB0nOzyzT8WLk+FAvkcEHN+87OuOGxajlSueprxWB1VbO7ayw62iitXFq
3z0BlDzQbTzKK8JFM196c/u38MOJ5f67pYXIDtHcISgohbtn13JF1/jYFltF
k3smhC1pVQ9ZXgFWtq9dnbQth4eywgFy8Ro2SdYNi8oroGmhzXLWIB8rRhqe
FB6phInR0M7Dg7kY7FS5VZ//PdyK67F6vJGN784wrQ9oVoFdbbTyukIWdvjU
pn1G/QgnHUYZ5no8ZIvsvR/Q7sCWTGU1ZyId+9SumiVkVgPTb2gxz4+LB/qU
y5xWfgJ/i2ZHhf54FHDtNd6waiB0cUcPfTYCV78QdEeH10LsiqHMYwEH5Qer
+v/RJtCRIUerZ3Hwb7XnYm1dAi6+mSn5dA7OuIsZzvoEmMWT3Sx9NnY9cQkr
NCGwt3pA79H+AMy4P//OyIbAn9LrVLOsL9IajPQCvQj8GsyIH+5gooRfm/Tb
FQKa7lWUnB0T558Pl/71NQHGlaUoxxg3HFGh/a6US0Ap9gUaB7piY477e758
Atwp51YFCxeM/2q5fKmMQCtDcHR86ASuxFh0H2ra/ssVO1gXA4pq/ZecWwmk
Do4qci4fx97FDHokEpDvW/qEnLbGuvMDnJb7BJ5KvL4JEn2IUUHxa569BOZ2
jpkm5RkjR1iqlTxAQOa00x4eywDdxrpAOExAFFp/7NbMQTQ5uzd7YYyAGy9K
HBGgiQwB1KiKCFQKRbtPzb+PyoMh/VbTBCxtk7lFr6VwQy1fHDhLQOr/Lbg3
MnivCfwLb70KOA==
          "]]},
        Annotation[#, "Charting`Private`Tag$413340#2"]& ], 
       TagBox[
        {RGBColor[0.560181, 0.691569, 0.194885], Thickness[Large], Opacity[
         1.], FaceForm[Opacity[0.3]], LineBox[CompressedData["
1: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
          "]], LineBox[CompressedData["
1:eJwV1Xk8ldkfB3BKSJgSxlJEQyplq6zTx76U7WZN0SWy71mjughdlFCZCiFS
0ePqmmyFaBmRkiyNn7KGkSypUYbf8cfzel7v13me8/qe8z3n+5VxCzzksYqD
g4NNnpV3zaSb460DFCru7Bnu8+RBu4huGI24KZD7say8LGqNDO4rEtsb8j8/
WrMNvHQjX17iMTGh11csd6HBxji40YwCz4Bg8DntPdi1y6gml9j65aWwgjXq
WJjWT4ohvlYpHF3frokKde0yTWJFpkT8wnGgoFFqe40phTvimS37jI0gOCWc
cZ341YVOc6N7xnjPxXcmlnh2tWi7zXpTZMxMD+sT60xlvw16fwBnn7M+vjWh
4OlqFWCnbo1J4zzvauIfkkFU37g1HpanhOcRp3alTx+/QUOAgesmf+Lygx0h
IZw2cPJYviq48v1eu4iLL+1wy7bc9ZsxhcgmmzqdNHtQn6uf9RPPWx/inLB0
ANfmbjcW8bSvVYphhyOsHkz8cZ3Yf8Hi9UzmYTjN2fslEk8kmovk2TmBFaQ5
5Ew8km+Wt9BzBItlVNIBYjcl0+Hia0fBe/n0c3Xij3XG222POoNOlxcXJn7f
bfDg/gcXbJjM4eo0IvvNnTekMkeHS0Rv/FPi2xZSiby2rvAp9c99SHwiK0fh
A9sVzRtvFuUQD8nc8E8Nd4OQ8f6MS8QFXpLrj3e7YYvsXolEYjp1rUJT4zhO
dSsuBhH36/zxfZQk5K/yXfaexDnxYtceObmjWy3poAvx0ZarOlm17iiia/bZ
EUts+PWDzyYPqKkb8loS9zpcYejFeiDu4e12Y+LsXJHfxPo9kD5wXFWX2H4k
69nU/hM4VhmprEUsoijs/TTvBKZUR//aQ9wZkrnuBocnfncqXVIizqwWuh/i
6gnznS9f7SQ+xJFhbfbEE5uK9bUUiNebbJiT3uqF0hYhPTni9rT0y9/ivbCY
rT0kS3yh8xeNtmEvrNvwaIsMsbnkxfeFRt74W/XqgjTxOjfB2Ohib/gu/eW/
4paSNGkajw/qQu1iV5z8hf/JNi8ftGZoKmwhNtmX6r70wgc5R8IDVubjjl3H
8267L3a/Wme9lbi5iXnnHtMXpycWWlfiiefjM4/7xxfp5bojK/Hq085POZr7
wXXLx2xFYo5s3ktKZX6Y1ez5pExc35+kxi3oD8P/FDr2Ep+W4+nqC/CHnU+H
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
/wFe1DrN
          "]]},
        Annotation[#, "Charting`Private`Tag$413340#3"]& ], {}}, {}}, 
     {Arrowheads[
      0.015], {ArrowBox[{{-0.1, -0.07}, {-0.1, -0.07}}], 
       ArrowBox[{{-0.1, -0.05600000000000001}, {-0.10252649006622518`, \
-0.05600000000000001}}], 
       ArrowBox[{{-0.1, -0.042}, {-0.10505298013245033`, -0.042}}], 
       ArrowBox[{{-0.1, -0.027999999999999997`}, {-0.1075794701986755, \
-0.027999999999999997`}}], 
       ArrowBox[{{-0.1, -0.013999999999999999`}, {-0.11010596026490067`, \
-0.013999999999999999`}}], ArrowBox[{{-0.1, 0.}, {-0.1, 0.}}], 
       ArrowBox[{{-0.1, 0.014000000000000012`}, {-0.11410596026490066`, 
        0.014000000000000012`}}], 
       ArrowBox[{{-0.1, 0.02800000000000001}, {-0.11557947019867551`, 
        0.02800000000000001}}], 
       ArrowBox[{{-0.1, 0.04200000000000001}, {-0.11705298013245033`, 
        0.04200000000000001}}], 
       ArrowBox[{{-0.1, 0.05600000000000002}, {-0.11852649006622518`, 
        0.05600000000000002}}], 
       ArrowBox[{{-0.1, 0.07}, {-0.12000000000000001`, 0.07}}]}, {
       ArrowBox[{{0, -0.07}, {0., -0.07}}], 
       ArrowBox[{{
         0, -0.05600000000000001}, {-0.010950674157303369`, \
-0.05600000000000001}}], 
       ArrowBox[{{0, -0.042}, {-0.01905101123595506, -0.042}}], 
       ArrowBox[{{
         0, -0.027999999999999997`}, {-0.024301011235955065`, \
-0.027999999999999997`}}], 
       ArrowBox[{{
         0, -0.013999999999999999`}, {-0.026700674157303372`, \
-0.013999999999999999`}}], ArrowBox[{{0, 0.}, {-0.026250000000000006`, 0.}}], 
       ArrowBox[{{0, 0.014000000000000012`}, {-0.02432477064220184, 
         0.014000000000000012`}}], 
       ArrowBox[{{0, 0.02800000000000001}, {-0.020737155963302754`, 
         0.02800000000000001}}], 
       ArrowBox[{{0, 0.04200000000000001}, {-0.015487155963302754`, 
         0.04200000000000001}}], 
       ArrowBox[{{0, 0.05600000000000002}, {-0.008574770642201825, 
         0.05600000000000002}}], ArrowBox[{{0, 0.07}, {0., 0.07}}]}, {
       ArrowBox[{{0.1, -0.07}, {0.1, -0.07}}], 
       ArrowBox[{{0.1, -0.05600000000000001}, {
        0.08652283577647148, -0.05600000000000001}}], 
       ArrowBox[{{0.1, -0.042}, {0.07589600863159461, -0.042}}], 
       ArrowBox[{{0.1, -0.027999999999999997`}, {
        0.06811951856536944, -0.027999999999999997`}}], 
       ArrowBox[{{0.1, -0.013999999999999999`}, {
        0.06319336557779598, -0.013999999999999999`}}], 
       ArrowBox[{{0.1, 0.}, {0.06111754966887417, 0.}}], 
       ArrowBox[{{0.1, 0.014000000000000012`}, {0.061569269092897505`, 
        0.014000000000000012`}}], 
       ArrowBox[{{0.1, 0.02800000000000001}, {0.06368337383802175, 
        0.02800000000000001}}], 
       ArrowBox[{{0.1, 0.04200000000000001}, {0.06745986390424692, 
        0.04200000000000001}}], 
       ArrowBox[{{0.1, 0.05600000000000002}, {0.072898739291573, 
        0.05600000000000002}}], ArrowBox[{{0.1, 0.07}, {0.08, 0.07}}]}, 
      {RGBColor[0, 1, 0], LineBox[{{-0.1, -0.07}, {-0.1, 0.07}}]}, 
      {RGBColor[1, 0, 0], LineBox[{{0.1, -0.07}, {0.1, 0.07}}]}}},
    Axes->{True, True},
    AxesLabel->{None, None},
    AxesOrigin->{0, 0},
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
    PlotRange->{{-0.12000000000000001`, 0.1}, {-0.07, 0.07}},
    PlotRangeClipping->True,
    PlotRangePadding->{{
       Scaled[0.05], 
       Scaled[0.05]}, {
       Scaled[0.05], 
       Scaled[0.05]}},
    Ticks->{Automatic, Automatic}], ",", 
   GraphicsBox[{{{{}, {}, 
       TagBox[
        {RGBColor[0.368417, 0.506779, 0.709798], Thickness[Large], Opacity[
         1.], FaceForm[Opacity[0.3]], LineBox[CompressedData["
1:eJwVz31Q03UABnCi0pDlkbw53t8s4Hg53kWCY77gxYUJxLqg5K1NuuRlYgrC
QgTuOORNKGEbMEAYLARZ8rLf9o0HcbHRAfIWCJGtkzdvQwwKjxJqPnfPPff5
87FPSo9i6evp6R3T9dXyea9CQRsptSnSSLA8tMGz5FP4/sXaQM+aBF7aU/x6
nVPq6fFLyxKoQjb5TQIKS2tXhSfUEmw/Ca8T11NYzAu20/9FgiiPlw1UE4Wx
ziH7vAEJDB6ca5kXU+gyGHPKvilBltbxLl1GgXP/D9fUAAkmS+cEMb9RMDzn
7uN5qRuub8WOBu1RyDw/uDqUcxd6CzbKXBsZbr/H+eyMWReidmi8bIYMuwz2
SFnVHTRvjXTZJcnwzbhLW6dzB9KCugUFRTK49Hpx8xvFkM4/imK0y9DWXRiW
a9uO16InIsQqGSJsRNc+kYqgoP9pO6aRwXrF8N6KdyuK5Wo/AU0OE7tQJlN5
GyP3Dpkp3OR4nAatNqkZRTupY+0fyTFlXpAToG4Ew6JWFZAhxyLLdVvxrAFX
ijX869VypJydW76uFsAtIj/AuU8O/hcWpFxdC7V22TxrVg7Lz//JjDO5hYML
mQ8LduR4bpBsVWlYjfebJ34OtCAwEaSIivwrsdLPrO8IJqDfX2cMf1CCt51s
j2UlEMQI/d+wPlEIn6/6LDauESSUXjTWnOZi5r/LU/YtBKwOvjrInIPqYFZY
q87vWjz16n2agcicaJlzK8FqcUCBB8nA+LZns6eI4Ev2zBH7xAyo1tc4we0E
C8etZmnMdPz4a+w7n94h0Hi8rmniXkBrf8jZyh4C2v5Jk9FRNpL/dlMY9xKU
L6X2D3DYcPCxPFqjs9HQgViJGRvCrhe2DX26P9yTwlsJLPBauzc6pARWW/0u
iX8lo6zaoUJJCNx/bwjZtkzE1+n7xvcUBHVp8xOhs0yU91l35v1EcKBHWkE5
MiHa9S3VGya4slNzxpsTg7kbyeH6SoKoQuaoI+1jBLYPDr85QmDAn1buOx6J
XfVV0MYI1ksEXF7caZg6VzWU6awyjf23ZPsUPNLF3IPjBC2Nh7Nzb55E/O5c
kNFDgti+7y7FKxkYpPtJjScJKh7YzoWzj2I+4cOab3UOm6+bcq/zw2Zb8mXT
KYKXz+jjRlPecPCv8jWfJpj2dS7pzHFFEFdsXKtzaIJDfuaqE6IVg5uHZwji
zAOfXxTZ4ILho0mezv5p7o/3uMZweyJUben8g9h3afH8fvwPgRAFDA==
          "]], LineBox[CompressedData["
1:eJwVzX1Q03UcB3DWJRDK8oAj2BKEdHkdLeXBNLVPMyC4znTAGJjhGkdzjRoP
d1LNIi9AEYFdg7u1CBCChgjsK6Ejf7/vh4eQ4sGLhyHriA4U5cAjBCcNBfr1
x/ve79df7yClNi7tGRcXl31c/m/PmZTe320MXm0IvzuhcoOL+YPZ2jEGu7Wu
NFgUDMdfMvlV3GbQbYqfmX8gHFZSwpQOO4MN/oa+vdFRsHsszfHTJIOrEbKc
0n4ZmLvfynVy/qw7njlYnAjbifC5d/9m0HEsjjf3nhy2Xhx6cYHzouZoUeRw
EixKDkWGTzE4cym2yjn+PjQ3+Rg67jA461p1Z8+yAkLyu3fbZxkczTJsrnBR
wa7woHSPZQZlO+mr1uJMGK7vj9rqyuKCJmzlvP0MFJtUsc0CFisWD29MFOWB
oDdmaV7M4qPb2JZccgGS3P3XByQsynVnEy776MHc92dYdCKLikTTXxhggMuX
igaUahYFR3zzfRzl8BU56xF4hkWx4GmUkDWC8rA6K1vP/YUm+/7S+T0478Mh
TS2LJ1X+m4zfVkI13z30yXUWabaZ5/ZHNazGYqG4n8W6Tkfp1MEaENEbBbxJ
FttXV14pr6kFZWtDU/oSi7X2tsEyUR1I2YLXdZsopkXXbbTq60EaI5sPElBc
Szq2P9DfDMFb1JGnxBS7Ei25qaYGqL+rcYmTUDw5LZH18hrhjTcV90ZkFEe8
S0Nzzl2Br6+8/ZrzFMXAEc+q6OUmMManb6M6isYvJX7/yFugS1cQIdRTfPSR
cSDzEwtUWkstwlqK7mPm0SdBBPaW6AozOP/rPeQM2kngVqpK2cP5vtQZELOL
wAYffLQ/Urw5GKsuExP4MG0hp6uOYl7P3FrIAQI7vI6A2kyR1xbyckoCgUaN
x61rTRRXDZbPOwoIREoe129upjg3NF55r5DAhO90roKz/Xner1uKCXh2te/x
aKFoLZLykw0EPvVTl39goXj6m6Wah1UEQnt6TzzbSnE5K3wguJ1An6k1Ipnz
tOXEwxiGQGpGFb+Z8/BCnq8WCZQJczrkP1O8+rFNcaOHwONM0Y7GNooZytOO
+GECJe94rW1wVlRXCr6wERBtW7clXKN4dPImVI8TkP9mO7fOWXz8hQsPJgks
/tCpiL9OMcAILV7TBM5nN+03c/YcU43umyGwPfY7rzXOT731zpRZAu0B+fNS
K8UHUiu3CPwHaIzcaQ==
          "]]},
        Annotation[#, "Charting`Private`Tag$414080#1"]& ], 
       TagBox[
        {RGBColor[0.880722, 0.611041, 0.142051], Thickness[Large], Opacity[
         1.], FaceForm[Opacity[0.3]], LineBox[CompressedData["
1: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
          "]], LineBox[CompressedData["
1:eJwtiQkw3HcYhmnGVUdmIkFQRiY0I6wEbSNHv7gWNXHfR3aLZRDiqjhjxJGg
jrGOdf/KEG1i+De2jsh+1U0kUlFxbJiiJcVSFelmZ4uVrc70nXnmmWdeo7Dr
XqwP5OTkLh/wn9P0tA3PjxH06rb+Yz5KCQ53DTvNDxBM43sPXSz1A+2QyW3z
gxZ7eMlvuPlD9aUo6Xgfwe1Y9xKHyQBw02DsKHEJrnzj0rIzGwwDq4XFvt0E
hYotr8+KmBCd3KfCaCM4ncRWbZSLAhtpQ+bpIoK+xjzz/tJEYG1LPgu5QzBh
93XC2mAi3JOcc/36NsHiX1R6tYSJUAAxqRsFBHnpvue/skuC5N6i35pvETw1
vkm3lCSBhdWQdC2ToDRVj3mfmQJn8t+E7cURbH2WVkmsboBPSvmiiQfBrVgr
yZ25LJCOXgrTcSfI53o8zP0wG0LpzoYqbgQ5sricjAvZQH+Q6Ch0JWjP7lS6
1pQNP4Rq2TU5HfyDH+m4f3kTNMQd0qXPCdqqKNscW8+BRvOVVIEZwS+84x95
ZOXCmZGZnFhFgo3bdrL5knwQ9C6J1sNb8N0r5AaWFYNlUIDts55m9M/M9fnu
aAVIaPVd+4ImZPrVL6ABG9pMBX/ViBtR94pWwVFxNSjKaDMbhxqRpit11HvE
gRwbi47M1XrcsgzUGhxugIkJ2nPWSB0yoo4rcCqbgUUlnQ1O5SAvuVNeaYIA
L68m0tGkFtuHxeVLF1thR0HZdfFpNQ7sSkyrW9tAeDfeIcy6CtvmuC+qTNpB
rdgoSNBeiSx6u+xBRQcUquQeki1U4H6Ah43h8U5w1x+fSFErw5/8enLC67+F
aS/2qiyhGBnLtr5P5e/Be4fxV2kBhTilWW554/Z9OFJH97UJvIWGU+otdFEX
pAx3VqkWZSEn21bnjX83yHP5lzU8k/FdJGcsMa4HPHrE/H1eBCoLOqf3jCgQ
sVyGW+Ii8B/NlztGxhQ0WETXW+tH4JrnjoHzKQrY79V+/zQ9HEdeuERX0Sgo
L1npb7IMw/wnG/tmFyio5PfarjsyUJ5r9vFVHwpOyNrZZSIf3GX3pP9YSAGD
5ZVbdMUHN17ONq8WUTAlqjGJueuNc4flH6uVUrB2W1g7H+SF/SWeGoFsCkL1
g0+r5bpjat7frW9bKLhmcnNPoO6IoiTrsRMDFNRt/Tqax7PH5Z6Qt85DFKgr
xihJ4+1wcitf6zpSMOpEI03NgN/HzDAfPqEg3ybGYk/3E0wISxV7T1Lg+dgU
VdMtkUmadTNmKOAv1AZFdlmg++IIkFkKdO2ZLqVGxkgL0i7eXKSgrWOs73mv
IRpwoPvIMgXjzsF+gpPHUF0QNX1uhQKHn2fnM0wUUKpZsXNVSIHc/9v07Dco
+JOCfwH6OA8C
          "]]},
        Annotation[#, "Charting`Private`Tag$414080#2"]& ], 
       TagBox[
        {RGBColor[0.560181, 0.691569, 0.194885], Thickness[Large], Opacity[
         1.], FaceForm[Opacity[0.3]], LineBox[CompressedData["
1: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
pXEoLaujhXZDjf74qI8o/gPX87Rk
          "]], LineBox[CompressedData["
1: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
OK5WsfNtvAjjzjW6ye8F+D+PVIk+
          "]]},
        Annotation[#, "Charting`Private`Tag$414080#3"]& ], {}}, {}}, 
     {Arrowheads[
      0.015], {ArrowBox[{{-0.1, -0.07}, {-0.1, -0.07}}], 
       ArrowBox[{{-0.1, -0.05600000000000001}, {-0.10252649006622518`, \
-0.05600000000000001}}], 
       ArrowBox[{{-0.1, -0.042}, {-0.10505298013245033`, -0.042}}], 
       ArrowBox[{{-0.1, -0.027999999999999997`}, {-0.1075794701986755, \
-0.027999999999999997`}}], 
       ArrowBox[{{-0.1, -0.013999999999999999`}, {-0.11010596026490067`, \
-0.013999999999999999`}}], ArrowBox[{{-0.1, 0.}, {-0.1, 0.}}], 
       ArrowBox[{{-0.1, 0.014000000000000012`}, {-0.11410596026490066`, 
        0.014000000000000012`}}], 
       ArrowBox[{{-0.1, 0.02800000000000001}, {-0.11557947019867551`, 
        0.02800000000000001}}], 
       ArrowBox[{{-0.1, 0.04200000000000001}, {-0.11705298013245033`, 
        0.04200000000000001}}], 
       ArrowBox[{{-0.1, 0.05600000000000002}, {-0.11852649006622518`, 
        0.05600000000000002}}], 
       ArrowBox[{{-0.1, 0.07}, {-0.12000000000000001`, 0.07}}]}, {
       ArrowBox[{{0, -0.07}, {0., -0.07}}], 
       ArrowBox[{{
         0, -0.05600000000000001}, {-0.013688342696629212`, \
-0.05600000000000001}}], 
       ArrowBox[{{0, -0.042}, {-0.023813764044943824`, -0.042}}], 
       ArrowBox[{{
         0, -0.027999999999999997`}, {-0.030376264044943826`, \
-0.027999999999999997`}}], 
       ArrowBox[{{
         0, -0.013999999999999999`}, {-0.033375842696629215`, \
-0.013999999999999999`}}], ArrowBox[{{0, 0.}, {-0.03281250000000001, 0.}}], 
       ArrowBox[{{0, 0.014000000000000012`}, {-0.0304059633027523, 
         0.014000000000000012`}}], 
       ArrowBox[{{0, 0.02800000000000001}, {-0.02592144495412844, 
         0.02800000000000001}}], 
       ArrowBox[{{0, 0.04200000000000001}, {-0.019358944954128442`, 
         0.04200000000000001}}], 
       ArrowBox[{{0, 0.05600000000000002}, {-0.010718463302752283`, 
         0.05600000000000002}}], ArrowBox[{{0, 0.07}, {0., 0.07}}]}, {
       ArrowBox[{{0.1, -0.07}, {0.1, -0.07}}], 
       ArrowBox[{{0.1, -0.05600000000000001}, {
        0.08378516723714563, -0.05600000000000001}}], 
       ArrowBox[{{0.1, -0.042}, {0.07113325582260585, -0.042}}], 
       ArrowBox[{{0.1, -0.027999999999999997`}, {
        0.06204426575638068, -0.027999999999999997`}}], 
       ArrowBox[{{0.1, -0.013999999999999999`}, {
        0.05651819703847012, -0.013999999999999999`}}], 
       ArrowBox[{{0.1, 0.}, {0.05455504966887417, 0.}}], 
       ArrowBox[{{0.1, 0.014000000000000012`}, {0.055488076432347044`, 
        0.014000000000000012`}}], 
       ArrowBox[{{0.1, 0.02800000000000001}, {0.05849908484719607, 
        0.02800000000000001}}], 
       ArrowBox[{{0.1, 0.04200000000000001}, {0.06358807491342124, 
        0.04200000000000001}}], 
       ArrowBox[{{0.1, 0.05600000000000002}, {0.07075504663102256, 
        0.05600000000000002}}], ArrowBox[{{0.1, 0.07}, {0.08, 0.07}}]}, 
      {RGBColor[0, 1, 0], LineBox[{{-0.1, -0.07}, {-0.1, 0.07}}]}, 
      {RGBColor[1, 0, 0], LineBox[{{0.1, -0.07}, {0.1, 0.07}}]}}},
    Axes->{True, True},
    AxesLabel->{None, None},
    AxesOrigin->{0, 0},
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
    PlotRange->{{-0.12000000000000001`, 0.1}, {-0.07, 0.07}},
    PlotRangeClipping->True,
    PlotRangePadding->{{
       Scaled[0.05], 
       Scaled[0.05]}, {
       Scaled[0.05], 
       Scaled[0.05]}},
    Ticks->{Automatic, Automatic}], ",", 
   GraphicsBox[{{{{}, {}, 
       TagBox[
        {RGBColor[0.368417, 0.506779, 0.709798], Thickness[Large], Opacity[
         1.], FaceForm[Opacity[0.3]], LineBox[CompressedData["
1:eJwVz31Q03UABnCi0pDlkbw53t8s4Hg53kWCY77gxYUJxLqg5K1NuuRlYgrC
QgTuOORNKGEbMEAYLARZ8rLf9o0HcbHRAfIWCJGtkzdvQwwKjxJqPnfPPff5
87FPSo9i6evp6R3T9dXyea9CQRsptSnSSLA8tMGz5FP4/sXaQM+aBF7aU/x6
nVPq6fFLyxKoQjb5TQIKS2tXhSfUEmw/Ca8T11NYzAu20/9FgiiPlw1UE4Wx
ziH7vAEJDB6ca5kXU+gyGHPKvilBltbxLl1GgXP/D9fUAAkmS+cEMb9RMDzn
7uN5qRuub8WOBu1RyDw/uDqUcxd6CzbKXBsZbr/H+eyMWReidmi8bIYMuwz2
SFnVHTRvjXTZJcnwzbhLW6dzB9KCugUFRTK49Hpx8xvFkM4/imK0y9DWXRiW
a9uO16InIsQqGSJsRNc+kYqgoP9pO6aRwXrF8N6KdyuK5Wo/AU0OE7tQJlN5
GyP3Dpkp3OR4nAatNqkZRTupY+0fyTFlXpAToG4Ew6JWFZAhxyLLdVvxrAFX
ijX869VypJydW76uFsAtIj/AuU8O/hcWpFxdC7V22TxrVg7Lz//JjDO5hYML
mQ8LduR4bpBsVWlYjfebJ34OtCAwEaSIivwrsdLPrO8IJqDfX2cMf1CCt51s
j2UlEMQI/d+wPlEIn6/6LDauESSUXjTWnOZi5r/LU/YtBKwOvjrInIPqYFZY
q87vWjz16n2agcicaJlzK8FqcUCBB8nA+LZns6eI4Ev2zBH7xAyo1tc4we0E
C8etZmnMdPz4a+w7n94h0Hi8rmniXkBrf8jZyh4C2v5Jk9FRNpL/dlMY9xKU
L6X2D3DYcPCxPFqjs9HQgViJGRvCrhe2DX26P9yTwlsJLPBauzc6pARWW/0u
iX8lo6zaoUJJCNx/bwjZtkzE1+n7xvcUBHVp8xOhs0yU91l35v1EcKBHWkE5
MiHa9S3VGya4slNzxpsTg7kbyeH6SoKoQuaoI+1jBLYPDr85QmDAn1buOx6J
XfVV0MYI1ksEXF7caZg6VzWU6awyjf23ZPsUPNLF3IPjBC2Nh7Nzb55E/O5c
kNFDgti+7y7FKxkYpPtJjScJKh7YzoWzj2I+4cOab3UOm6+bcq/zw2Zb8mXT
KYKXz+jjRlPecPCv8jWfJpj2dS7pzHFFEFdsXKtzaIJDfuaqE6IVg5uHZwji
zAOfXxTZ4ILho0mezv5p7o/3uMZweyJUben8g9h3afH8fvwPgRAFDA==
          "]], LineBox[CompressedData["
1:eJwVzX1Q03UcB3DWJRDK8oAj2BKEdHkdLeXBNLVPMyC4znTAGJjhGkdzjRoP
d1LNIi9AEYFdg7u1CBCChgjsK6Ejf7/vh4eQ4sGLhyHriA4U5cAjBCcNBfr1
x/ve79df7yClNi7tGRcXl31c/m/PmZTe320MXm0IvzuhcoOL+YPZ2jEGu7Wu
NFgUDMdfMvlV3GbQbYqfmX8gHFZSwpQOO4MN/oa+vdFRsHsszfHTJIOrEbKc
0n4ZmLvfynVy/qw7njlYnAjbifC5d/9m0HEsjjf3nhy2Xhx6cYHzouZoUeRw
EixKDkWGTzE4cym2yjn+PjQ3+Rg67jA461p1Z8+yAkLyu3fbZxkczTJsrnBR
wa7woHSPZQZlO+mr1uJMGK7vj9rqyuKCJmzlvP0MFJtUsc0CFisWD29MFOWB
oDdmaV7M4qPb2JZccgGS3P3XByQsynVnEy776MHc92dYdCKLikTTXxhggMuX
igaUahYFR3zzfRzl8BU56xF4hkWx4GmUkDWC8rA6K1vP/YUm+/7S+T0478Mh
TS2LJ1X+m4zfVkI13z30yXUWabaZ5/ZHNazGYqG4n8W6Tkfp1MEaENEbBbxJ
FttXV14pr6kFZWtDU/oSi7X2tsEyUR1I2YLXdZsopkXXbbTq60EaI5sPElBc
Szq2P9DfDMFb1JGnxBS7Ei25qaYGqL+rcYmTUDw5LZH18hrhjTcV90ZkFEe8
S0Nzzl2Br6+8/ZrzFMXAEc+q6OUmMManb6M6isYvJX7/yFugS1cQIdRTfPSR
cSDzEwtUWkstwlqK7mPm0SdBBPaW6AozOP/rPeQM2kngVqpK2cP5vtQZELOL
wAYffLQ/Urw5GKsuExP4MG0hp6uOYl7P3FrIAQI7vI6A2kyR1xbyckoCgUaN
x61rTRRXDZbPOwoIREoe129upjg3NF55r5DAhO90roKz/Xner1uKCXh2te/x
aKFoLZLykw0EPvVTl39goXj6m6Wah1UEQnt6TzzbSnE5K3wguJ1An6k1Ipnz
tOXEwxiGQGpGFb+Z8/BCnq8WCZQJczrkP1O8+rFNcaOHwONM0Y7GNooZytOO
+GECJe94rW1wVlRXCr6wERBtW7clXKN4dPImVI8TkP9mO7fOWXz8hQsPJgks
/tCpiL9OMcAILV7TBM5nN+03c/YcU43umyGwPfY7rzXOT731zpRZAu0B+fNS
K8UHUiu3CPwHaIzcaQ==
          "]]},
        Annotation[#, "Charting`Private`Tag$414809#1"]& ], 
       TagBox[
        {RGBColor[0.880722, 0.611041, 0.142051], Thickness[Large], Opacity[
         1.], FaceForm[Opacity[0.3]], LineBox[CompressedData["
1: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
Wlj5sSBgjysUEdvk6c9V2s6CxcGZ1gbit8X73PK1Wbj28ahSJ3Fs9fFWlaUs
vD4jJTdMrI5ArcKfTEw1L2x4T9zcFh+r9ZKJ+tdHRIV5FBy7qanSLias3n78
soj46/M6S90GJmru9icqEqe+7Kys/puJkRDph+rEOh9HZTYlMDEgmlarS3x/
9se5+kAmCjzcdxkSu0ss6TU9zsQmHid0K7GwjKZR814mUqs+HNlFzF2xJXfn
H0zcyCkb2EtsqGnzs3UFE5UO1+YdIH608eSxfeJM+H5eMGBJ7G1Kv/XgHQOz
bpWHDxLP352uZt3HgE05FfxrvMi6NLLnNgOBD0Z2WBBvd7z18nAZA+4tvjV7
iJ979O59ls6AcrpF+07iIL83pU50BgpMA2O3EMuGiUiNeDIwfePNewPiiigF
X/e/GJCVrRFaT7wvRbd7woSBH9tba1SJx3J36Z9WZ0CwR1NajphR5JDxTooB
Xc0nsvOJV1T5fTv7jY6Qge6bM6Te129E06Zf0JHstXLJFPFfrXmNwe10+P97
bf6zX+vXVaP88yodqou5pXeJY57dYzDy6Xix5K//Lv1ar/dfzKP96Pj4RCUk
hthxZkHxfAc6Ov231vkRfxVTnZdoTscrfTftX/tJR8nyQZocHdr2Xk6qxPfV
3XTl59Chf6jZSIzYfUNISu6rCJT32Iy3kv3J3VV0iOxKKB5JvV5IbGjVeF29
OAJ/1ShvYBM/onUrXEmOIPeb3+WMief7Cg0KXCPgFNvemEnOy/kcOw/MI+Md
QXe9iDUtnqWyJ8LRNOYfakbs5CxxOPZGOCx5Nr1D5Dx2xB0bynQOx7RevYcM
cfHw4vfV5WFQ/uNx2TNyvge/mFytZ4RhyYKtOX8TL13gGdRsEwb7HbOndIlZ
Bs3Cnd9DEdC5YnQTyQenWN8lk7tCMSTzresdyZN+7UJbjWWhuLqC0iomtmvv
y3QdDUEOw0V+CbHlwp3Kg6wQnIhJ+/4vySezxGVrHzUFQ+P7mGkEcYPOPm/p
pGBY6oi/1iLe9DCi6oBTMAYmqqODM0h9pSc2350Nwkw+bkuQvFuV2mAOoyAs
Mo50LCb5yNV7F/1DMgixOUrOu4jlH6m1b356HrdKr5aEXaQgvTTBujrwPHQX
Z219SvJYOOOYU3FNIET71Xx3kjwfzhYNSlkfgJvtvbX3SP47Ghvd6Jw9hxEW
zdOS+Gn/GaGFHedwanvHApt4kt9KvZyoU+cQ9Juz7d5YCrfyrqSEFvsjgX5w
apL0H4pvWequchbZSds2z5D+5nola9BomQ9+v5ZhQyNeLf9St+alN9pVr0nV
kX44FmXAXNfgjaQn+5x9gimccOtWW3XMG62X+s4/CCTzb1PsmW97BrN1nFO7
/UherZszeSn0FDjiSzz0SP+eL/ZQ5v59NyRv8HVwdyN5OOJ1rdHHDc1U5rsM
0u+lmiWPCJa6Ie7Y1s9fft0PQnfkpTm54onxR++/nSgofrimeeyjMzYEja1p
PExh7QDX9LPCMcyRmls7Su4fOad7O816bFE+XLn8dy3y/xV6I/3uYvgfVZ7F
Ng==
          "]], LineBox[CompressedData["
1:eJwtjnkwnAcchm0mrogaVjSuNSJCM6yETBJW8iuRjdVJ3HfLoqwj4miDTcjW
xFHEUUu7RVj7rQaJxCfdFgk/iQjTOhLHoiVtKbZqxFnXZlRn+s488/zx/PMa
h8Z5hO9TUFD4cI//HJQta79oLsZi0ak/JzjK0DBwJYehJcaUTs+n9vk+8EO1
lVe0phjX3Two81d8YZY1Re/SEONSjGue06AfdNWrbcYdFONMNatqaywQUh5e
G/9WUYwyparpk6tsaGq7PnZ+g8DhRL5ahQIHuDvZ3X2jBHqbtls25ydAg+c/
GiNSAuO3p+PnWhOgvDA5/9cRAnMHVL/XkSVAdVOT2ewQge1cb7vrjongW6M2
vjxAoHn/AtN6IxGunnO2mu4mUJ6kz37A/hzszi7UWf5IoKgnpVhokwzhfr+N
hvAJXIyx2fhyPBXkeY2OhsUEdkrcnqQfSANxtgmOFhEo2I3l3WCkwZHRxQVW
AYEX+LXKV++mwYRUz8AkZ6+3Gh52DbkFTv49PbW3CHRQVbE99BcPFqO4gZQo
Al08r7W5paZDdatNxJwdgRVLjrsTeRmgr2QcfGdEhGujKPEvyIXMiv4OzWgR
+t5M96rXLgK57DklfK4a2T5lk0jjg5z3RaAZuxr1Lutkaq+XQsyujHdsQIh0
PflF/TYBPPY2+GnaRIiL1v46rc/KYYcdg9TFSgzm6CoKiiuBqrI0PBRwF9s/
q6UovxICb7/+zazucqx5tl74h70ILJTjOw6YlGHL9sbxUhEBOmE0j4nzAiTG
JX0lx2qgtqZgsIz9NYYza3YfF30HjLGyaMG5Enzn52ZrpFsLJ5wOuXCVi/G5
TyMvrKwOwsNcHva2FmLwlIN3N+U+7GZu7PvqVS4OUQutk7MfQFqGsc39/Vlo
NKRexVxtAOa9n1eUjNJRkOZw+K3vIxhIzNDTpCfjWoSgNyG2EeixHRknZiJR
RVo7vGNMgsmlvPQ7tyNxk/p6y9iUhLeKH7WMGUfinPsWzdmchNSTdeMOQRx8
2ceKKqGToOXw+6SPNBwzuubfWTBIMHW0XcvrDEWKxMIsyIuEIoEl6XTUH7f5
jdyOLBLuceUctU/8cP71WOVsDgnfHJWUNJX64rgG5cXBfBJY0mlXkZIPNue5
v+fPJ6Gq/vRl5TkPTLq9IlquIsGA/ml3/wUWriae6j3SQoIHjbESTV7CqcaP
l52fkjApnFHpoTFxcDFDJw5JYAZJtl5sOmJT9Aj7SRcJZ1J4g3xPW4wPTVr3
HCTBKjNi5pfjp5EtrNS7MUKCY/PaAEGxQdc3L0E4RoKnobpfUuAHSA94P3fh
DQnyMG0GVckEaQJ4pDVFwubSUBknWBfVpZzhszN7fwLO2LNDVFFOLdoKkpGg
8P8W3JtpmX+T8C+KYQo0
          "]]},
        Annotation[#, "Charting`Private`Tag$414809#2"]& ], 
       TagBox[
        {RGBColor[0.560181, 0.691569, 0.194885], Thickness[Large], Opacity[
         1.], FaceForm[Opacity[0.3]], LineBox[CompressedData["
1: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
          "]], LineBox[CompressedData["
1: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

          "]]},
        Annotation[#, "Charting`Private`Tag$414809#3"]& ], {}}, {}}, 
     {Arrowheads[
      0.015], {ArrowBox[{{-0.1, -0.07}, {-0.1, -0.07}}], 
       ArrowBox[{{-0.1, -0.05600000000000001}, {-0.10252649006622518`, \
-0.05600000000000001}}], 
       ArrowBox[{{-0.1, -0.042}, {-0.10505298013245033`, -0.042}}], 
       ArrowBox[{{-0.1, -0.027999999999999997`}, {-0.1075794701986755, \
-0.027999999999999997`}}], 
       ArrowBox[{{-0.1, -0.013999999999999999`}, {-0.11010596026490067`, \
-0.013999999999999999`}}], ArrowBox[{{-0.1, 0.}, {-0.1, 0.}}], 
       ArrowBox[{{-0.1, 0.014000000000000012`}, {-0.11410596026490066`, 
        0.014000000000000012`}}], 
       ArrowBox[{{-0.1, 0.02800000000000001}, {-0.11557947019867551`, 
        0.02800000000000001}}], 
       ArrowBox[{{-0.1, 0.04200000000000001}, {-0.11705298013245033`, 
        0.04200000000000001}}], 
       ArrowBox[{{-0.1, 0.05600000000000002}, {-0.11852649006622518`, 
        0.05600000000000002}}], 
       ArrowBox[{{-0.1, 0.07}, {-0.12000000000000001`, 0.07}}]}, {
       ArrowBox[{{0, -0.07}, {0., -0.07}}], 
       ArrowBox[{{
         0, -0.05600000000000001}, {-0.016426011235955055`, \
-0.05600000000000001}}], 
       ArrowBox[{{0, -0.042}, {-0.02857651685393259, -0.042}}], 
       ArrowBox[{{
         0, -0.027999999999999997`}, {-0.0364515168539326, \
-0.027999999999999997`}}], 
       ArrowBox[{{
         0, -0.013999999999999999`}, {-0.040051011235955065`, \
-0.013999999999999999`}}], ArrowBox[{{0, 0.}, {-0.039375000000000014`, 0.}}], 
       ArrowBox[{{0, 0.014000000000000012`}, {-0.03648715596330276, 
         0.014000000000000012`}}], 
       ArrowBox[{{0, 0.02800000000000001}, {-0.031105733944954132`, 
         0.02800000000000001}}], 
       ArrowBox[{{0, 0.04200000000000001}, {-0.023230733944954132`, 
         0.04200000000000001}}], 
       ArrowBox[{{0, 0.05600000000000002}, {-0.01286215596330274, 
         0.05600000000000002}}], ArrowBox[{{0, 0.07}, {0., 0.07}}]}, {
       ArrowBox[{{0.1, -0.07}, {0.1, -0.07}}], 
       ArrowBox[{{0.1, -0.05600000000000001}, {
        0.08104749869781978, -0.05600000000000001}}], 
       ArrowBox[{{0.1, -0.042}, {0.06637050301361708, -0.042}}], 
       ArrowBox[{{0.1, -0.027999999999999997`}, {
        0.055969012947391907`, -0.027999999999999997`}}], 
       ArrowBox[{{0.1, -0.013999999999999999`}, {
        0.04984302849914427, -0.013999999999999999`}}], 
       ArrowBox[{{0.1, 0.}, {0.04799254966887417, 0.}}], 
       ArrowBox[{{0.1, 0.014000000000000012`}, {0.049406883771796584`, 
        0.014000000000000012`}}], 
       ArrowBox[{{0.1, 0.02800000000000001}, {0.053314795856370376`, 
        0.02800000000000001}}], 
       ArrowBox[{{0.1, 0.04200000000000001}, {0.059716285922595536`, 
        0.04200000000000001}}], 
       ArrowBox[{{0.1, 0.05600000000000002}, {0.0686113539704721, 
        0.05600000000000002}}], ArrowBox[{{0.1, 0.07}, {0.08, 0.07}}]}, 
      {RGBColor[0, 1, 0], LineBox[{{-0.1, -0.07}, {-0.1, 0.07}}]}, 
      {RGBColor[1, 0, 0], LineBox[{{0.1, -0.07}, {0.1, 0.07}}]}}},
    Axes->{True, True},
    AxesLabel->{None, None},
    AxesOrigin->{0, 0},
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
    PlotRange->{{-0.12000000000000001`, 0.1}, {-0.07, 0.07}},
    PlotRangeClipping->True,
    PlotRangePadding->{{
       Scaled[0.05], 
       Scaled[0.05]}, {
       Scaled[0.05], 
       Scaled[0.05]}},
    Ticks->{Automatic, Automatic}], ",", 
   GraphicsBox[{{{{}, {}, 
       TagBox[
        {RGBColor[0.368417, 0.506779, 0.709798], Thickness[Large], Opacity[
         1.], FaceForm[Opacity[0.3]], LineBox[CompressedData["
1:eJwVz31Q03UABnCi0pDlkbw53t8s4Hg53kWCY77gxYUJxLqg5K1NuuRlYgrC
QgTuOORNKGEbMEAYLARZ8rLf9o0HcbHRAfIWCJGtkzdvQwwKjxJqPnfPPff5
87FPSo9i6evp6R3T9dXyea9CQRsptSnSSLA8tMGz5FP4/sXaQM+aBF7aU/x6
nVPq6fFLyxKoQjb5TQIKS2tXhSfUEmw/Ca8T11NYzAu20/9FgiiPlw1UE4Wx
ziH7vAEJDB6ca5kXU+gyGHPKvilBltbxLl1GgXP/D9fUAAkmS+cEMb9RMDzn
7uN5qRuub8WOBu1RyDw/uDqUcxd6CzbKXBsZbr/H+eyMWReidmi8bIYMuwz2
SFnVHTRvjXTZJcnwzbhLW6dzB9KCugUFRTK49Hpx8xvFkM4/imK0y9DWXRiW
a9uO16InIsQqGSJsRNc+kYqgoP9pO6aRwXrF8N6KdyuK5Wo/AU0OE7tQJlN5
GyP3Dpkp3OR4nAatNqkZRTupY+0fyTFlXpAToG4Ew6JWFZAhxyLLdVvxrAFX
ijX869VypJydW76uFsAtIj/AuU8O/hcWpFxdC7V22TxrVg7Lz//JjDO5hYML
mQ8LduR4bpBsVWlYjfebJ34OtCAwEaSIivwrsdLPrO8IJqDfX2cMf1CCt51s
j2UlEMQI/d+wPlEIn6/6LDauESSUXjTWnOZi5r/LU/YtBKwOvjrInIPqYFZY
q87vWjz16n2agcicaJlzK8FqcUCBB8nA+LZns6eI4Ev2zBH7xAyo1tc4we0E
C8etZmnMdPz4a+w7n94h0Hi8rmniXkBrf8jZyh4C2v5Jk9FRNpL/dlMY9xKU
L6X2D3DYcPCxPFqjs9HQgViJGRvCrhe2DX26P9yTwlsJLPBauzc6pARWW/0u
iX8lo6zaoUJJCNx/bwjZtkzE1+n7xvcUBHVp8xOhs0yU91l35v1EcKBHWkE5
MiHa9S3VGya4slNzxpsTg7kbyeH6SoKoQuaoI+1jBLYPDr85QmDAn1buOx6J
XfVV0MYI1ksEXF7caZg6VzWU6awyjf23ZPsUPNLF3IPjBC2Nh7Nzb55E/O5c
kNFDgti+7y7FKxkYpPtJjScJKh7YzoWzj2I+4cOab3UOm6+bcq/zw2Zb8mXT
KYKXz+jjRlPecPCv8jWfJpj2dS7pzHFFEFdsXKtzaIJDfuaqE6IVg5uHZwji
zAOfXxTZ4ILho0mezv5p7o/3uMZweyJUben8g9h3afH8fvwPgRAFDA==
          "]], LineBox[CompressedData["
1:eJwVzX1Q03UcB3DWJRDK8oAj2BKEdHkdLeXBNLVPMyC4znTAGJjhGkdzjRoP
d1LNIi9AEYFdg7u1CBCChgjsK6Ejf7/vh4eQ4sGLhyHriA4U5cAjBCcNBfr1
x/ve79df7yClNi7tGRcXl31c/m/PmZTe320MXm0IvzuhcoOL+YPZ2jEGu7Wu
NFgUDMdfMvlV3GbQbYqfmX8gHFZSwpQOO4MN/oa+vdFRsHsszfHTJIOrEbKc
0n4ZmLvfynVy/qw7njlYnAjbifC5d/9m0HEsjjf3nhy2Xhx6cYHzouZoUeRw
EixKDkWGTzE4cym2yjn+PjQ3+Rg67jA461p1Z8+yAkLyu3fbZxkczTJsrnBR
wa7woHSPZQZlO+mr1uJMGK7vj9rqyuKCJmzlvP0MFJtUsc0CFisWD29MFOWB
oDdmaV7M4qPb2JZccgGS3P3XByQsynVnEy776MHc92dYdCKLikTTXxhggMuX
igaUahYFR3zzfRzl8BU56xF4hkWx4GmUkDWC8rA6K1vP/YUm+/7S+T0478Mh
TS2LJ1X+m4zfVkI13z30yXUWabaZ5/ZHNazGYqG4n8W6Tkfp1MEaENEbBbxJ
FttXV14pr6kFZWtDU/oSi7X2tsEyUR1I2YLXdZsopkXXbbTq60EaI5sPElBc
Szq2P9DfDMFb1JGnxBS7Ei25qaYGqL+rcYmTUDw5LZH18hrhjTcV90ZkFEe8
S0Nzzl2Br6+8/ZrzFMXAEc+q6OUmMManb6M6isYvJX7/yFugS1cQIdRTfPSR
cSDzEwtUWkstwlqK7mPm0SdBBPaW6AozOP/rPeQM2kngVqpK2cP5vtQZELOL
wAYffLQ/Urw5GKsuExP4MG0hp6uOYl7P3FrIAQI7vI6A2kyR1xbyckoCgUaN
x61rTRRXDZbPOwoIREoe129upjg3NF55r5DAhO90roKz/Xner1uKCXh2te/x
aKFoLZLykw0EPvVTl39goXj6m6Wah1UEQnt6TzzbSnE5K3wguJ1An6k1Ipnz
tOXEwxiGQGpGFb+Z8/BCnq8WCZQJczrkP1O8+rFNcaOHwONM0Y7GNooZytOO
+GECJe94rW1wVlRXCr6wERBtW7clXKN4dPImVI8TkP9mO7fOWXz8hQsPJgks
/tCpiL9OMcAILV7TBM5nN+03c/YcU43umyGwPfY7rzXOT731zpRZAu0B+fNS
K8UHUiu3CPwHaIzcaQ==
          "]]},
        Annotation[#, "Charting`Private`Tag$415545#1"]& ], 
       TagBox[
        {RGBColor[0.880722, 0.611041, 0.142051], Thickness[Large], Opacity[
         1.], FaceForm[Opacity[0.3]], LineBox[CompressedData["
1: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
Swj/A5wylqs=
          "]], LineBox[CompressedData["
1:eJwtiXkwnAccQJeZ1lWp6SaaMAjiGN1oiWiFzs8R921ZEcGKooI6EhJXjJLW
kS21q13iyrLfJ6LDl4Yuwq8iSDJBnCFVaYg6oo44dxHNdPpm3rw/nub5GK9Q
aRqNZvnO/7rWHOiZRWJ8l8mriXAZcHjzx+OSCyRe6WTes+CwgDl7/TcigsQN
Dy+pBTdfMGUFBLeGk7gS6Z53evAMmNuLNp+FkDhz07FCPOYPpoks/Ul/Eufe
r5g2WmODRMaEVHcmcTieq1BKC4cmyUV6rC6JPjrtx0WcOFhvWp911SExVjId
O9sSBzl6Tf0Gx0jM7Ze7qzwXB606O2MvNUlsT/I5lWAdD2Y/cQZPq5Go37do
Z7wVDzX2w8GTdBJ3E1XZdexLYLM4txJEI1Hw8Eph5YnLkGDx6UDpKIFLkSe2
ssdTYcdVW1trhMDORo/WDPk0mH/4NpAYIpC/H52ebJ4Gu5JI3u2nBNpwa2Si
ytJg311js+bxu9+idtg9+Coktc3zYtoJtJKTNTs0nw6WhKIlQ0igE/ObNo/U
DFCq/9ElJIbA0hXr/Ym8LHhk5PlAWyzE9WfY6PdDLiwrrLIxRYi+KRnetQcL
ILlFxHCerkY2q+RPVOdC9cIhy0zbalRxVb52cKMIPNNPFfmWVqGhyq6tahsf
hAc0O3KGBbhk7Kfc0nEDCreZz/+SF2BQ+JH3+IXlwK43tSA0bmL7xRopmaeV
UHG/vyfEpBKFHRv5Ly0EECA7dvLzq+XYLNkyKBJUwWn1viCWYylWjTf28nSF
YNOx4xSkWoKhdsL9XwsIWCbuDhiV/Yx7ZzzMNI7UgGly5yci2SK8z2pIDym5
BZJmWqvLt4UYNGXl0yN1G952HzW85ZCPQ/R848vf18FMzK6SWkMOagwpVtit
/QID/1irZoszkZ9mdXjZtx5KPrNdpyuk4HoY/0lcdAPIG+TZhihEo+xozfCO
JgVM/V6rpOIo3KYPiDV1KLCcYIyl6kXhrKdY3UGfgrCvbIdcbCKxu9cxgmdI
AW/zubRScgRmdS3sMcwpSNfi22u/CkWpRoZeoDcFe0aNfRLvAJRwG5J+/46C
RQ7hxok6hwsDY+V/51Bw1mdIeifTH8c/lHrwAYeC2mMvZL6+44eiPM8DflwK
FHswK1uRhYmZbwSrFRQ8OunE7U5yxbV4kydazRTIuZWoeFU741TDuVWHexTU
mQfL8/occXApSzkGKSD4TG1zLTu8c2GE3dpFwesmXgLj+pcYez5xgzlIgYKd
QKF2wgzZleUqySMUCDLK4nkMU3Sf7IbKMQpyt5rDgoqOo+HZj3MXJymovmSt
0mGki+p8qP9oioKjxS4vtovVUHE0fPiLGQoC54tu2JYq4i69QBw4RwHtfxY9
RerXXlPwL24ZC5g=
          "]]},
        Annotation[#, "Charting`Private`Tag$415545#2"]& ], 
       TagBox[
        {RGBColor[0.560181, 0.691569, 0.194885], Thickness[Large], Opacity[
         1.], FaceForm[Opacity[0.3]], LineBox[CompressedData["
1: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
          "]], LineBox[CompressedData["
1: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
          "]]},
        Annotation[#, "Charting`Private`Tag$415545#3"]& ], {}}, {}}, 
     {Arrowheads[
      0.015], {ArrowBox[{{-0.1, -0.07}, {-0.1, -0.07}}], 
       ArrowBox[{{-0.1, -0.05600000000000001}, {-0.10252649006622518`, \
-0.05600000000000001}}], 
       ArrowBox[{{-0.1, -0.042}, {-0.10505298013245033`, -0.042}}], 
       ArrowBox[{{-0.1, -0.027999999999999997`}, {-0.1075794701986755, \
-0.027999999999999997`}}], 
       ArrowBox[{{-0.1, -0.013999999999999999`}, {-0.11010596026490067`, \
-0.013999999999999999`}}], ArrowBox[{{-0.1, 0.}, {-0.1, 0.}}], 
       ArrowBox[{{-0.1, 0.014000000000000012`}, {-0.11410596026490066`, 
        0.014000000000000012`}}], 
       ArrowBox[{{-0.1, 0.02800000000000001}, {-0.11557947019867551`, 
        0.02800000000000001}}], 
       ArrowBox[{{-0.1, 0.04200000000000001}, {-0.11705298013245033`, 
        0.04200000000000001}}], 
       ArrowBox[{{-0.1, 0.05600000000000002}, {-0.11852649006622518`, 
        0.05600000000000002}}], 
       ArrowBox[{{-0.1, 0.07}, {-0.12000000000000001`, 0.07}}]}, {
       ArrowBox[{{0, -0.07}, {0., -0.07}}], 
       ArrowBox[{{
         0, -0.05600000000000001}, {-0.019163679775280894`, \
-0.05600000000000001}}], 
       ArrowBox[{{0, -0.042}, {-0.033339269662921354`, -0.042}}], 
       ArrowBox[{{
         0, -0.027999999999999997`}, {-0.042526769662921356`, \
-0.027999999999999997`}}], 
       ArrowBox[{{
         0, -0.013999999999999999`}, {-0.04672617977528091, \
-0.013999999999999999`}}], ArrowBox[{{0, 0.}, {-0.045937500000000006`, 0.}}], 
       ArrowBox[{{0, 0.014000000000000012`}, {-0.04256834862385321, 
         0.014000000000000012`}}], 
       ArrowBox[{{0, 0.02800000000000001}, {-0.03629002293577982, 
         0.02800000000000001}}], 
       ArrowBox[{{0, 0.04200000000000001}, {-0.02710252293577982, 
         0.04200000000000001}}], 
       ArrowBox[{{0, 0.05600000000000002}, {-0.015005848623853194`, 
         0.05600000000000002}}], ArrowBox[{{0, 0.07}, {0., 0.07}}]}, {
       ArrowBox[{{0.1, -0.07}, {0.1, -0.07}}], 
       ArrowBox[{{0.1, -0.05600000000000001}, {
        0.07830983015849394, -0.05600000000000001}}], 
       ArrowBox[{{0.1, -0.042}, {0.06160775020462832, -0.042}}], 
       ArrowBox[{{0.1, -0.027999999999999997`}, {
        0.04989376013840315, -0.027999999999999997`}}], 
       ArrowBox[{{0.1, -0.013999999999999999`}, {
        0.043167859959818436`, -0.013999999999999999`}}], 
       ArrowBox[{{0.1, 0.}, {0.04143004966887417, 0.}}], 
       ArrowBox[{{0.1, 0.014000000000000012`}, {0.04332569111124612, 
        0.014000000000000012`}}], 
       ArrowBox[{{0.1, 0.02800000000000001}, {0.048130506865544695`, 
        0.02800000000000001}}], 
       ArrowBox[{{0.1, 0.04200000000000001}, {0.055844496931769856`, 
        0.04200000000000001}}], 
       ArrowBox[{{0.1, 0.05600000000000002}, {0.06646766130992164, 
        0.05600000000000002}}], ArrowBox[{{0.1, 0.07}, {0.08, 0.07}}]}, 
      {RGBColor[0, 1, 0], LineBox[{{-0.1, -0.07}, {-0.1, 0.07}}]}, 
      {RGBColor[1, 0, 0], LineBox[{{0.1, -0.07}, {0.1, 0.07}}]}}},
    Axes->{True, True},
    AxesLabel->{None, None},
    AxesOrigin->{0, 0},
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
    PlotRange->{{-0.12000000000000001`, 0.1}, {-0.07, 0.07}},
    PlotRangeClipping->True,
    PlotRangePadding->{{
       Scaled[0.05], 
       Scaled[0.05]}, {
       Scaled[0.05], 
       Scaled[0.05]}},
    Ticks->{Automatic, Automatic}], ",", 
   GraphicsBox[{{{{}, {}, 
       TagBox[
        {RGBColor[0.368417, 0.506779, 0.709798], Thickness[Large], Opacity[
         1.], FaceForm[Opacity[0.3]], LineBox[CompressedData["
1:eJwVz31Q03UABnCi0pDlkbw53t8s4Hg53kWCY77gxYUJxLqg5K1NuuRlYgrC
QgTuOORNKGEbMEAYLARZ8rLf9o0HcbHRAfIWCJGtkzdvQwwKjxJqPnfPPff5
87FPSo9i6evp6R3T9dXyea9CQRsptSnSSLA8tMGz5FP4/sXaQM+aBF7aU/x6
nVPq6fFLyxKoQjb5TQIKS2tXhSfUEmw/Ca8T11NYzAu20/9FgiiPlw1UE4Wx
ziH7vAEJDB6ca5kXU+gyGHPKvilBltbxLl1GgXP/D9fUAAkmS+cEMb9RMDzn
7uN5qRuub8WOBu1RyDw/uDqUcxd6CzbKXBsZbr/H+eyMWReidmi8bIYMuwz2
SFnVHTRvjXTZJcnwzbhLW6dzB9KCugUFRTK49Hpx8xvFkM4/imK0y9DWXRiW
a9uO16InIsQqGSJsRNc+kYqgoP9pO6aRwXrF8N6KdyuK5Wo/AU0OE7tQJlN5
GyP3Dpkp3OR4nAatNqkZRTupY+0fyTFlXpAToG4Ew6JWFZAhxyLLdVvxrAFX
ijX869VypJydW76uFsAtIj/AuU8O/hcWpFxdC7V22TxrVg7Lz//JjDO5hYML
mQ8LduR4bpBsVWlYjfebJ34OtCAwEaSIivwrsdLPrO8IJqDfX2cMf1CCt51s
j2UlEMQI/d+wPlEIn6/6LDauESSUXjTWnOZi5r/LU/YtBKwOvjrInIPqYFZY
q87vWjz16n2agcicaJlzK8FqcUCBB8nA+LZns6eI4Ev2zBH7xAyo1tc4we0E
C8etZmnMdPz4a+w7n94h0Hi8rmniXkBrf8jZyh4C2v5Jk9FRNpL/dlMY9xKU
L6X2D3DYcPCxPFqjs9HQgViJGRvCrhe2DX26P9yTwlsJLPBauzc6pARWW/0u
iX8lo6zaoUJJCNx/bwjZtkzE1+n7xvcUBHVp8xOhs0yU91l35v1EcKBHWkE5
MiHa9S3VGya4slNzxpsTg7kbyeH6SoKoQuaoI+1jBLYPDr85QmDAn1buOx6J
XfVV0MYI1ksEXF7caZg6VzWU6awyjf23ZPsUPNLF3IPjBC2Nh7Nzb55E/O5c
kNFDgti+7y7FKxkYpPtJjScJKh7YzoWzj2I+4cOab3UOm6+bcq/zw2Zb8mXT
KYKXz+jjRlPecPCv8jWfJpj2dS7pzHFFEFdsXKtzaIJDfuaqE6IVg5uHZwji
zAOfXxTZ4ILho0mezv5p7o/3uMZweyJUben8g9h3afH8fvwPgRAFDA==
          "]], LineBox[CompressedData["
1:eJwVzX1Q03UcB3DWJRDK8oAj2BKEdHkdLeXBNLVPMyC4znTAGJjhGkdzjRoP
d1LNIi9AEYFdg7u1CBCChgjsK6Ejf7/vh4eQ4sGLhyHriA4U5cAjBCcNBfr1
x/ve79df7yClNi7tGRcXl31c/m/PmZTe320MXm0IvzuhcoOL+YPZ2jEGu7Wu
NFgUDMdfMvlV3GbQbYqfmX8gHFZSwpQOO4MN/oa+vdFRsHsszfHTJIOrEbKc
0n4ZmLvfynVy/qw7njlYnAjbifC5d/9m0HEsjjf3nhy2Xhx6cYHzouZoUeRw
EixKDkWGTzE4cym2yjn+PjQ3+Rg67jA461p1Z8+yAkLyu3fbZxkczTJsrnBR
wa7woHSPZQZlO+mr1uJMGK7vj9rqyuKCJmzlvP0MFJtUsc0CFisWD29MFOWB
oDdmaV7M4qPb2JZccgGS3P3XByQsynVnEy776MHc92dYdCKLikTTXxhggMuX
igaUahYFR3zzfRzl8BU56xF4hkWx4GmUkDWC8rA6K1vP/YUm+/7S+T0478Mh
TS2LJ1X+m4zfVkI13z30yXUWabaZ5/ZHNazGYqG4n8W6Tkfp1MEaENEbBbxJ
FttXV14pr6kFZWtDU/oSi7X2tsEyUR1I2YLXdZsopkXXbbTq60EaI5sPElBc
Szq2P9DfDMFb1JGnxBS7Ei25qaYGqL+rcYmTUDw5LZH18hrhjTcV90ZkFEe8
S0Nzzl2Br6+8/ZrzFMXAEc+q6OUmMManb6M6isYvJX7/yFugS1cQIdRTfPSR
cSDzEwtUWkstwlqK7mPm0SdBBPaW6AozOP/rPeQM2kngVqpK2cP5vtQZELOL
wAYffLQ/Urw5GKsuExP4MG0hp6uOYl7P3FrIAQI7vI6A2kyR1xbyckoCgUaN
x61rTRRXDZbPOwoIREoe129upjg3NF55r5DAhO90roKz/Xner1uKCXh2te/x
aKFoLZLykw0EPvVTl39goXj6m6Wah1UEQnt6TzzbSnE5K3wguJ1An6k1Ipnz
tOXEwxiGQGpGFb+Z8/BCnq8WCZQJczrkP1O8+rFNcaOHwONM0Y7GNooZytOO
+GECJe94rW1wVlRXCr6wERBtW7clXKN4dPImVI8TkP9mO7fOWXz8hQsPJgks
/tCpiL9OMcAILV7TBM5nN+03c/YcU43umyGwPfY7rzXOT731zpRZAu0B+fNS
K8UHUiu3CPwHaIzcaQ==
          "]]},
        Annotation[#, "Charting`Private`Tag$416278#1"]& ], 
       TagBox[
        {RGBColor[0.880722, 0.611041, 0.142051], Thickness[Large], Opacity[
         1.], FaceForm[Opacity[0.3]], LineBox[CompressedData["
1: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
0QFPYfwPQ3iyNg==
          "]], LineBox[CompressedData["
1:eJwtjn881Hccxx0KYRZ1oXWlSHlICw8j8vajPFgz51eXqLtshkrOyc8c85hT
YyTHullxflz4ZuPDLL/yHtavJZXfmqiTkTyUH/ewu8mtPR57PR7Px/OP5z8v
k9BovzBVFRUVl/f8553s7NWQ5xTW19q+HA3XgMkNkTqKTgoTu/zbnHKOwILl
jPFEB4Uyph9t5nMWXAwdFhKk8O1pn+yDvUeBTHwpg1YKJ0u9SuTDwbB0wDlh
ez2F02tLJvYtcsDNbyFutZjCfp5Q+6pKOCzJ2Wz9OAoDzdr3NOXEgKPxIt6J
pZCrmOBOtcRAIi6tT+ZRmPVI6xf6dAwMityznkVT2J4UuD/OjQeMC3rdV05R
uKtn1sN6mQcvfTkFI2wKV+I3c2o458BbPPlJvheFZfcS88U2CSDYlvbHkBGF
c6dtli+OpIBC73s1c0MKuxqZrenr+GC17unqOTqFImVUWrIjH4YYrxx1DSh0
F1ZpnLnGB9P7Ox5b6bzvLVsMfU6mQp2J9km71Wp01dJ02PgqDfKlpaasF9X4
qf/ZW8yUdPi6/I31eHk1Xn3rphzNzoDE4+m7Wz+qxqUhbAzKzYKQ8wa0qJwq
ZJ1PD6A25IEi+2fWvvFK5BwpeoYMIfgE3jAdt6hEY2+6YIOsEOyV2dTFyOto
ZbxyaPMtEfxw16xpr0CCc9ZB9JaOH6HSZaH/ZnEFssON1ojyi+HmMVmO9HI5
tsdW0TQei0Gpqu+nLihDSYfs0gunMrinLh4gZ0qxWbFsUVhWDs2z7XbTu8VY
PtL4sGCnBJ6PRnTtGLyGYR4SZUPedaiI67F/sFKE744yHbYaVYFzXYzuspYI
O4/UpX1RVA0H3UYZNuaFyJa6Bt6l3QClmqSG8/wy9hlcsk64UAPM4KG53OAc
3NqnW+Kx+BOE2La4a/VnoojvaviGVQsRc2t66NOpuPSVqDsmqg5iFy3UHoi4
qDlY1f+PCYHODA1aA4uLfxs8kZuYEfAKunA+j87FKV85w3MXAeaVF92sXdF4
56FXZIEVgU01A+b3t0Rhxu2Zd5aOBP5UXS5qUY9EWqOl+YkAAr+GMeKHOzmo
ENYl/ZZJwMi3qkjDmYMzT4aL//qWACNznuvOY+OIHu13nRwCOrFPcc+J49iU
7ftBkJAAf8KzTcs2COO/WSibLyHQxhDtHR9i4iLPtnt78/u/fLmbwxUflNaF
zHu2EUgZHNXmpHpj71wGPRoJaPbNf0YOe2H9qQFO620CjxQB34VKXZAbGi/z
7yXwau3YvqTcA8gRFxsnDxBQO+yxUcByQJ+xOyAeJiCNaNhfMfUxWh3blDU7
RsBHwJWfPb4bGSKo1ZcSkIil6w/NbEPdwfB++0kCdk7J/MLXH+KKQZ78xDQB
lf8369vEELwm8C93lQ4o
          "]]},
        Annotation[#, "Charting`Private`Tag$416278#2"]& ], 
       TagBox[
        {RGBColor[0.560181, 0.691569, 0.194885], Thickness[Large], Opacity[
         1.], FaceForm[Opacity[0.3]], LineBox[CompressedData["
1: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
          "]], LineBox[CompressedData["
1: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
          "]]},
        Annotation[#, "Charting`Private`Tag$416278#3"]& ], {}}, {}}, 
     {Arrowheads[
      0.015], {ArrowBox[{{-0.1, -0.07}, {-0.1, -0.07}}], 
       ArrowBox[{{-0.1, -0.05600000000000001}, {-0.10252649006622518`, \
-0.05600000000000001}}], 
       ArrowBox[{{-0.1, -0.042}, {-0.10505298013245033`, -0.042}}], 
       ArrowBox[{{-0.1, -0.027999999999999997`}, {-0.1075794701986755, \
-0.027999999999999997`}}], 
       ArrowBox[{{-0.1, -0.013999999999999999`}, {-0.11010596026490067`, \
-0.013999999999999999`}}], ArrowBox[{{-0.1, 0.}, {-0.1, 0.}}], 
       ArrowBox[{{-0.1, 0.014000000000000012`}, {-0.11410596026490066`, 
        0.014000000000000012`}}], 
       ArrowBox[{{-0.1, 0.02800000000000001}, {-0.11557947019867551`, 
        0.02800000000000001}}], 
       ArrowBox[{{-0.1, 0.04200000000000001}, {-0.11705298013245033`, 
        0.04200000000000001}}], 
       ArrowBox[{{-0.1, 0.05600000000000002}, {-0.11852649006622518`, 
        0.05600000000000002}}], 
       ArrowBox[{{-0.1, 0.07}, {-0.12000000000000001`, 0.07}}]}, {
       ArrowBox[{{0, -0.07}, {0., -0.07}}], 
       ArrowBox[{{
         0, -0.05600000000000001}, {-0.021901348314606738`, \
-0.05600000000000001}}], 
       ArrowBox[{{0, -0.042}, {-0.03810202247191012, -0.042}}], 
       ArrowBox[{{
         0, -0.027999999999999997`}, {-0.04860202247191013, \
-0.027999999999999997`}}], 
       ArrowBox[{{
         0, -0.013999999999999999`}, {-0.053401348314606745`, \
-0.013999999999999999`}}], ArrowBox[{{0, 0.}, {-0.05250000000000001, 0.}}], 
       ArrowBox[{{0, 0.014000000000000012`}, {-0.04864954128440368, 
         0.014000000000000012`}}], 
       ArrowBox[{{0, 0.02800000000000001}, {-0.04147431192660551, 
         0.02800000000000001}}], 
       ArrowBox[{{0, 0.04200000000000001}, {-0.03097431192660551, 
         0.04200000000000001}}], 
       ArrowBox[{{0, 0.05600000000000002}, {-0.01714954128440365, 
         0.05600000000000002}}], ArrowBox[{{0, 0.07}, {0., 0.07}}]}, {
       ArrowBox[{{0.1, -0.07}, {0.1, -0.07}}], 
       ArrowBox[{{0.1, -0.05600000000000001}, {
        0.0755721616191681, -0.05600000000000001}}], 
       ArrowBox[{{0.1, -0.042}, {0.05684499739563955, -0.042}}], 
       ArrowBox[{{0.1, -0.027999999999999997`}, {
        0.04381850732941438, -0.027999999999999997`}}], 
       ArrowBox[{{0.1, -0.013999999999999999`}, {
        0.03649269142049259, -0.013999999999999999`}}], 
       ArrowBox[{{0.1, 0.}, {0.03486754966887416, 0.}}], 
       ArrowBox[{{0.1, 0.014000000000000012`}, {0.03724449845069566, 
        0.014000000000000012`}}], 
       ArrowBox[{{0.1, 0.02800000000000001}, {0.042946217874719, 
        0.02800000000000001}}], 
       ArrowBox[{{0.1, 0.04200000000000001}, {0.05197270794094416, 
        0.04200000000000001}}], 
       ArrowBox[{{0.1, 0.05600000000000002}, {0.06432396864937118, 
        0.05600000000000002}}], ArrowBox[{{0.1, 0.07}, {0.08, 0.07}}]}, 
      {RGBColor[0, 1, 0], LineBox[{{-0.1, -0.07}, {-0.1, 0.07}}]}, 
      {RGBColor[1, 0, 0], LineBox[{{0.1, -0.07}, {0.1, 0.07}}]}}},
    Axes->{True, True},
    AxesLabel->{None, None},
    AxesOrigin->{0, 0},
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
    PlotRange->{{-0.12000000000000001`, 0.1}, {-0.07, 0.07}},
    PlotRangeClipping->True,
    PlotRangePadding->{{
       Scaled[0.05], 
       Scaled[0.05]}, {
       Scaled[0.05], 
       Scaled[0.05]}},
    Ticks->{Automatic, Automatic}]}], "}"}]], "Output",
 CellChangeTimes->{
  3.542285653663807*^9, 3.542285873428377*^9, 3.5424139727892203`*^9, {
   3.542414002789936*^9, 3.5424140237571354`*^9}, 3.542414711582477*^9, 
   3.8881798233993587`*^9, 3.888179984858232*^9},
 CellLabel->
  "Out[811]=",ExpressionUUID->"3ae58bd8-7013-4266-bb3e-e979e0ce7133"],

Cell[BoxData[
 FormBox[
  TagBox[GridBox[{
     {"\[Piecewise]", GridBox[{
        {
         RowBox[{
          FractionBox[
           RowBox[{
            SubscriptBox["1", "1"], " ", 
            RowBox[{"(", 
             RowBox[{
              FractionBox["y", 
               SubscriptBox["1", "1"]], "+", "1"}], ")"}], " ", 
            RowBox[{"(", 
             RowBox[{
              FractionBox[
               RowBox[{
                SubsuperscriptBox["1", "1", "2"], " ", "P"}], 
               RowBox[{"2", " ", 
                SubscriptBox["0.0008900000000000001`2.", "1"]}]], "-", 
              FractionBox[
               RowBox[{
                SubsuperscriptBox["1", "2", "2"], " ", "P"}], 
               RowBox[{"2", " ", 
                SubscriptBox["0.0008900000000000001`2.", "2"]}]], "-", 
              SubscriptBox["v", "1"], "+", 
              SubscriptBox["v", "2"]}], ")"}]}], 
           RowBox[{
            SubscriptBox["0.0008900000000000001`2.", "1"], " ", 
            RowBox[{"(", 
             RowBox[{
              FractionBox[
               SubscriptBox["1", "1"], 
               SubscriptBox["0.0008900000000000001`2.", "1"]], "+", 
              FractionBox[
               SubscriptBox["1", "2"], 
               SubscriptBox["0.0008900000000000001`2.", "2"]]}], ")"}]}]], 
          "+", 
          FractionBox[
           RowBox[{
            SubsuperscriptBox["1", "1", "2"], " ", "P", " ", 
            RowBox[{"(", 
             RowBox[{
              FractionBox[
               SuperscriptBox["y", "2"], 
               SubsuperscriptBox["1", "1", "2"]], "-", "1"}], ")"}]}], 
           RowBox[{"2", " ", 
            SubscriptBox["0.0008900000000000001`2.", "1"]}]], "+", 
          SubscriptBox["v", "1"]}], 
         RowBox[{"y", "<", "0"}]},
        {
         RowBox[{
          FractionBox[
           RowBox[{
            SubscriptBox["1", "2"], " ", 
            RowBox[{"(", 
             RowBox[{
              FractionBox["y", 
               SubscriptBox["1", "2"]], "-", "1"}], ")"}], " ", 
            RowBox[{"(", 
             RowBox[{
              FractionBox[
               RowBox[{
                SubsuperscriptBox["1", "1", "2"], " ", "P"}], 
               RowBox[{"2", " ", 
                SubscriptBox["0.0008900000000000001`2.", "1"]}]], "-", 
              FractionBox[
               RowBox[{
                SubsuperscriptBox["1", "2", "2"], " ", "P"}], 
               RowBox[{"2", " ", 
                SubscriptBox["0.0008900000000000001`2.", "2"]}]], "-", 
              SubscriptBox["v", "1"], "+", 
              SubscriptBox["v", "2"]}], ")"}]}], 
           RowBox[{
            SubscriptBox["0.0008900000000000001`2.", "2"], " ", 
            RowBox[{"(", 
             RowBox[{
              FractionBox[
               SubscriptBox["1", "1"], 
               SubscriptBox["0.0008900000000000001`2.", "1"]], "+", 
              FractionBox[
               SubscriptBox["1", "2"], 
               SubscriptBox["0.0008900000000000001`2.", "2"]]}], ")"}]}]], 
          "+", 
          FractionBox[
           RowBox[{
            SubsuperscriptBox["1", "2", "2"], " ", "P", " ", 
            RowBox[{"(", 
             RowBox[{
              FractionBox[
               SuperscriptBox["y", "2"], 
               SubsuperscriptBox["1", "2", "2"]], "-", "1"}], ")"}]}], 
           RowBox[{"2", " ", 
            SubscriptBox["0.0008900000000000001`2.", "2"]}]], "+", 
          SubscriptBox["v", "2"]}], 
         RowBox[{"y", "\[GreaterEqual]", "0"}]}
       },
       AllowedDimensions->{2, Automatic},
       Editable->True,
       GridBoxAlignment->{"Columns" -> {{Left}}, "Rows" -> {{Baseline}}},
       GridBoxItemSize->{"Columns" -> {{Automatic}}, "Rows" -> {{1.}}},
       GridBoxSpacings->{"Columns" -> {
           Offset[0.27999999999999997`], {
            Offset[0.84]}, 
           Offset[0.27999999999999997`]}, "Rows" -> {
           Offset[0.2], {
            Offset[0.4]}, 
           Offset[0.2]}},
       Selectable->True]}
    },
    GridBoxAlignment->{"Columns" -> {{Left}}, "Rows" -> {{Baseline}}},
    GridBoxItemSize->{"Columns" -> {{Automatic}}, "Rows" -> {{1.}}},
    GridBoxSpacings->{"Columns" -> {
        Offset[0.27999999999999997`], {
         Offset[0.35]}, 
        Offset[0.27999999999999997`]}, "Rows" -> {
        Offset[0.2], {
         Offset[0.4]}, 
        Offset[0.2]}}],
   "Piecewise",
   DeleteWithContents->True,
   Editable->False,
   SelectWithContents->True,
   Selectable->False,
   StripWrapperBoxes->True], TraditionalForm]], "Output",
 CellChangeTimes->{
  3.542285653663807*^9, 3.542285873428377*^9, 3.5424139727892203`*^9, {
   3.542414002789936*^9, 3.5424140237571354`*^9}, 3.542414711582477*^9, 
   3.8881798233993587`*^9, 3.8881799849071712`*^9},
 CellLabel->
  "Out[812]//TraditionalForm=",ExpressionUUID->"c3e38f6c-283e-4f9a-8ce7-\
3decad67b4fc"],

Cell[BoxData[
 TagBox[GridBox[{
    {"\[Piecewise]", GridBox[{
       {
        RowBox[{
         FractionBox[
          RowBox[{"P", " ", 
           RowBox[{"(", 
            RowBox[{
             RowBox[{"-", "1"}], "+", 
             FractionBox[
              SuperscriptBox["y", "2"], 
              SubsuperscriptBox["1", "1", "2"]]}], ")"}], " ", 
           SubsuperscriptBox["1", "1", "2"]}], 
          RowBox[{"2", " ", 
           SubscriptBox["0.0008900000000000001`2.", "1"]}]], "+", 
         SubscriptBox["v", "1"], "+", 
         FractionBox[
          RowBox[{
           RowBox[{"(", 
            RowBox[{"1", "+", 
             FractionBox["y", 
              SubscriptBox["1", "1"]]}], ")"}], " ", 
           SubscriptBox["1", "1"], " ", 
           RowBox[{"(", 
            RowBox[{
             FractionBox[
              RowBox[{"P", " ", 
               SubsuperscriptBox["1", "1", "2"]}], 
              RowBox[{"2", " ", 
               SubscriptBox["0.0008900000000000001`2.", "1"]}]], "-", 
             FractionBox[
              RowBox[{"P", " ", 
               SubsuperscriptBox["1", "2", "2"]}], 
              RowBox[{"2", " ", 
               SubscriptBox["0.0008900000000000001`2.", "2"]}]], "-", 
             SubscriptBox["v", "1"], "+", 
             SubscriptBox["v", "2"]}], ")"}]}], 
          RowBox[{
           SubscriptBox["0.0008900000000000001`2.", "1"], " ", 
           RowBox[{"(", 
            RowBox[{
             FractionBox[
              SubscriptBox["1", "1"], 
              SubscriptBox["0.0008900000000000001`2.", "1"]], "+", 
             FractionBox[
              SubscriptBox["1", "2"], 
              SubscriptBox["0.0008900000000000001`2.", "2"]]}], ")"}]}]]}], 
        RowBox[{"y", "<", "0"}]},
       {
        RowBox[{
         FractionBox[
          RowBox[{"P", " ", 
           RowBox[{"(", 
            RowBox[{
             RowBox[{"-", "1"}], "+", 
             FractionBox[
              SuperscriptBox["y", "2"], 
              SubsuperscriptBox["1", "2", "2"]]}], ")"}], " ", 
           SubsuperscriptBox["1", "2", "2"]}], 
          RowBox[{"2", " ", 
           SubscriptBox["0.0008900000000000001`2.", "2"]}]], "+", 
         SubscriptBox["v", "2"], "+", 
         FractionBox[
          RowBox[{
           RowBox[{"(", 
            RowBox[{
             RowBox[{"-", "1"}], "+", 
             FractionBox["y", 
              SubscriptBox["1", "2"]]}], ")"}], " ", 
           SubscriptBox["1", "2"], " ", 
           RowBox[{"(", 
            RowBox[{
             FractionBox[
              RowBox[{"P", " ", 
               SubsuperscriptBox["1", "1", "2"]}], 
              RowBox[{"2", " ", 
               SubscriptBox["0.0008900000000000001`2.", "1"]}]], "-", 
             FractionBox[
              RowBox[{"P", " ", 
               SubsuperscriptBox["1", "2", "2"]}], 
              RowBox[{"2", " ", 
               SubscriptBox["0.0008900000000000001`2.", "2"]}]], "-", 
             SubscriptBox["v", "1"], "+", 
             SubscriptBox["v", "2"]}], ")"}]}], 
          RowBox[{
           SubscriptBox["0.0008900000000000001`2.", "2"], " ", 
           RowBox[{"(", 
            RowBox[{
             FractionBox[
              SubscriptBox["1", "1"], 
              SubscriptBox["0.0008900000000000001`2.", "1"]], "+", 
             FractionBox[
              SubscriptBox["1", "2"], 
              SubscriptBox["0.0008900000000000001`2.", "2"]]}], ")"}]}]]}], 
        RowBox[{"y", "\[GreaterEqual]", "0"}]},
       {"0", 
        TagBox["True",
         "PiecewiseDefault",
         AutoDelete->True]}
      },
      AllowedDimensions->{2, Automatic},
      Editable->True,
      GridBoxAlignment->{"Columns" -> {{Left}}, "Rows" -> {{Baseline}}},
      GridBoxItemSize->{"Columns" -> {{Automatic}}, "Rows" -> {{1.}}},
      GridBoxSpacings->{"Columns" -> {
          Offset[0.27999999999999997`], {
           Offset[0.84]}, 
          Offset[0.27999999999999997`]}, "Rows" -> {
          Offset[0.2], {
           Offset[0.4]}, 
          Offset[0.2]}},
      Selectable->True]}
   },
   GridBoxAlignment->{"Columns" -> {{Left}}, "Rows" -> {{Baseline}}},
   GridBoxItemSize->{"Columns" -> {{Automatic}}, "Rows" -> {{1.}}},
   GridBoxSpacings->{"Columns" -> {
       Offset[0.27999999999999997`], {
        Offset[0.35]}, 
       Offset[0.27999999999999997`]}, "Rows" -> {
       Offset[0.2], {
        Offset[0.4]}, 
       Offset[0.2]}}],
  "Piecewise",
  DeleteWithContents->True,
  Editable->False,
  SelectWithContents->True,
  Selectable->False,
  StripWrapperBoxes->True]], "Output",
 CellChangeTimes->{
  3.542285653663807*^9, 3.542285873428377*^9, 3.5424139727892203`*^9, {
   3.542414002789936*^9, 3.5424140237571354`*^9}, 3.542414711582477*^9, 
   3.8881798233993587`*^9, 3.888179984912284*^9},
 CellLabel->
  "Out[813]=",ExpressionUUID->"066c7200-04fe-4a8c-9f8e-716a502042f9"]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"SetDirectory", "[", 
  "\"\<C:\\\\Users\\\\Peeter\\\\cygwin_home\\\\physicsplay\\\\notes\\\\blogit\
\>\"", "]"}]], "Input",
 CellChangeTimes->{{3.5422857175544615`*^9, 
  3.542285726204956*^9}},ExpressionUUID->"663ea21e-3b37-4e6e-90d3-\
678e98b42a68"],

Cell[BoxData["\<\"C:\\\\Users\\\\Peeter\\\\cygwin_home\\\\physicsplay\\\\\
notes\\\\blogit\"\>"], "Output",
 CellChangeTimes->{3.542285727471029*^9, 
  3.5424140596981916`*^9},ExpressionUUID->"9b8153ff-5777-4792-a9c8-\
4520f79bcbb4"]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{
  RowBox[{"(*", 
   RowBox[{"Export", "[", 
    RowBox[{
    "\"\<animatedTwoLayerFlowMu1GreaterThanMu2Try3.avi\>\"", ",", " ", "a"}], 
    "]"}], "*)"}], "\[IndentingNewLine]", 
  RowBox[{
   RowBox[{"Export", "[", 
    RowBox[{
    "\"\<animatedTwoLayerFlowMu2GreaterThanMu1Try3.avi\>\"", ",", " ", "a"}], 
    "]"}], "\[IndentingNewLine]"}]}]], "Input",
 CellChangeTimes->{{3.542285813028922*^9, 3.5422858218544273`*^9}, {
   3.5422858823138857`*^9, 3.542285889410291*^9}, 3.542286235773102*^9, {
   3.5424140721499033`*^9, 3.5424140810134106`*^9}, {3.5424141296581926`*^9, 
   3.542414131033272*^9}, {3.5424147187068844`*^9, 
   3.542414730656568*^9}},ExpressionUUID->"bb7d61df-b4af-42fb-a27a-\
3abe574064e4"],

Cell[BoxData["\<\"animatedTwoLayerFlowMu2GreaterThanMu1Try3.avi\"\>"], \
"Output",
 CellChangeTimes->{3.542285844467721*^9, 3.5422858946095886`*^9, 
  3.5424140852046504`*^9, 3.5424141372216253`*^9, 
  3.5424147372039423`*^9},ExpressionUUID->"1b51c8bb-01aa-4feb-be0d-\
4f8f76ec9e87"]
}, Open  ]],

Cell[BoxData[{
 RowBox[{"<<", "peeters`"}], "\[IndentingNewLine]", 
 RowBox[{"peeters`setGitDir", "[", 
  "\"\<../project/figures/phy454-continuumechanics\>\"", "]"}]}], "Input",
 CellChangeTimes->{{3.888179241897952*^9, 3.88817932045571*^9}, {
   3.888179356052094*^9, 3.8881793898918324`*^9}, {3.888179432954856*^9, 
   3.888179459039557*^9}, {3.888179743600759*^9, 3.888179751905396*^9}, 
   3.888180010892851*^9, 
   3.888180079309024*^9},ExpressionUUID->"4c51d58d-9ac2-4550-aaa4-\
7b634d127edd"],

Cell[CellGroupData[{

Cell[BoxData[{
 RowBox[{"peeters`exportForLatex", "[", 
  RowBox[{"\"\<continuumProblemSet2Fig6mu1Gtmu2\>\"", ",", "mu1gtmu2"}], 
  "]"}], "\[IndentingNewLine]", 
 RowBox[{"peeters`exportForLatex", "[", 
  RowBox[{"\"\<continuumProblemSet2Fig6mu2Gtmu1\>\"", ",", "mu2gtmu1"}], 
  "]"}]}], "Input",
 CellChangeTimes->{{3.888180005928773*^9, 3.888180043825204*^9}, {
  3.88818008384201*^9, 3.888180086075433*^9}, {3.888180417597314*^9, 
  3.8881804226195707`*^9}, {3.888180979709234*^9, 3.888181000179141*^9}},
 CellLabel->
  "In[821]:=",ExpressionUUID->"935f2e62-dc84-4078-be96-56a0adf4970d"],

Cell[BoxData[
 RowBox[{"{", 
  RowBox[{"\<\"continuumProblemSet2Fig6mu1Gtmu2.eps\"\>", 
   ",", "\<\"continuumProblemSet2Fig6mu1Gtmu2pn.png\"\>"}], "}"}]], "Output",
 CellChangeTimes->{3.888180441703637*^9, 3.8881806038121*^9, 
  3.888181253915318*^9},
 CellLabel->
  "Out[821]=",ExpressionUUID->"e35ec76e-0069-46e3-8f84-0400c073f4b8"],

Cell[BoxData[
 RowBox[{"{", 
  RowBox[{"\<\"continuumProblemSet2Fig6mu2Gtmu1.eps\"\>", 
   ",", "\<\"continuumProblemSet2Fig6mu2Gtmu1pn.png\"\>"}], "}"}]], "Output",
 CellChangeTimes->{3.888180441703637*^9, 3.8881806038121*^9, 
  3.888181255380207*^9},
 CellLabel->
  "Out[822]=",ExpressionUUID->"8be34eff-6f95-4c5c-b50e-49584a4d019e"]
}, Open  ]]
}, Open  ]]
}, Open  ]]
},
WindowSize->{1584, 765},
WindowMargins->{{0, Automatic}, {Automatic, 0}},
Magnification:>1.25 Inherited,
FrontEndVersion->"12.2 for Mac OS X x86 (64-bit) (December 12, 2020)",
StyleDefinitions->"Default.nb",
ExpressionUUID->"64f5a068-f472-4f8c-8bc4-058186bef73e"
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
Cell[1257, 32, 287, 7, 200, "Title",ExpressionUUID->"a1a343d4-d5e3-4a3e-8241-cb1e712afea6"],
Cell[1547, 41, 7880, 206, 896, "Text",ExpressionUUID->"42420202-8670-4edc-98eb-7fc91cfff367"],
Cell[9430, 249, 976, 24, 162, "Input",ExpressionUUID->"01c26d4b-f3f9-46c6-b6b2-6e6cf4914a75",
 InitializationCell->True],
Cell[CellGroupData[{
Cell[10431, 277, 26433, 605, 2750, "Input",ExpressionUUID->"c4c442b2-1d6f-4160-bd3a-3ec04a4fd5fc"],
Cell[36867, 884, 344310, 6458, 590, "Output",ExpressionUUID->"92b42176-7d98-45c8-8775-c36d93d65326"]
}, Open  ]],
Cell[CellGroupData[{
Cell[381214, 7347, 6351, 172, 465, "Input",ExpressionUUID->"84e5432e-b760-4bbe-94ff-d74093ee35a8"],
Cell[387568, 7521, 18766, 337, 328, "Output",ExpressionUUID->"bf2b607a-6cd8-4489-99a7-ad1b75f91c6c"]
}, Open  ]],
Cell[CellGroupData[{
Cell[406371, 7863, 6376, 173, 465, "Input",ExpressionUUID->"4b0532e1-a0d5-44de-9af0-3c591ae2e3c5"],
Cell[412750, 8038, 18265, 329, 328, "Output",ExpressionUUID->"f9bac356-f348-44b8-916f-bf9199082c68"]
}, Open  ]],
Cell[CellGroupData[{
Cell[431052, 8372, 224, 5, 84, "Section",ExpressionUUID->"a3b402cc-f7ad-473d-8441-3c2a2f7c094e"],
Cell[CellGroupData[{
Cell[431301, 8381, 18306, 446, 1845, "Input",ExpressionUUID->"7a29a36d-35ae-4bf9-a0f3-ccfc615a8622"],
Cell[449610, 8829, 305427, 5422, 692, "Output",ExpressionUUID->"3ae58bd8-7013-4266-bb3e-e979e0ce7133"],
Cell[755040, 14253, 4906, 131, 185, "Output",ExpressionUUID->"c3e38f6c-283e-4f9a-8ce7-3decad67b4fc"],
Cell[759949, 14386, 4896, 134, 189, "Output",ExpressionUUID->"066c7200-04fe-4a8c-9f8e-716a502042f9"]
}, Open  ]],
Cell[CellGroupData[{
Cell[764882, 14525, 275, 6, 37, "Input",ExpressionUUID->"663ea21e-3b37-4e6e-90d3-678e98b42a68"],
Cell[765160, 14533, 233, 4, 42, "Output",ExpressionUUID->"9b8153ff-5777-4792-a9c8-4520f79bcbb4"]
}, Open  ]],
Cell[CellGroupData[{
Cell[765430, 14542, 737, 17, 90, "Input",ExpressionUUID->"bb7d61df-b4af-42fb-a27a-3abe574064e4"],
Cell[766170, 14561, 283, 5, 42, "Output",ExpressionUUID->"1b51c8bb-01aa-4feb-be0d-4f8f76ec9e87"]
}, Open  ]],
Cell[766468, 14569, 500, 9, 64, "Input",ExpressionUUID->"4c51d58d-9ac2-4550-aaa4-7b634d127edd"],
Cell[CellGroupData[{
Cell[766993, 14582, 591, 11, 64, "Input",ExpressionUUID->"935f2e62-dc84-4078-be96-56a0adf4970d"],
Cell[767587, 14595, 335, 7, 42, "Output",ExpressionUUID->"e35ec76e-0069-46e3-8f84-0400c073f4b8"],
Cell[767925, 14604, 335, 7, 42, "Output",ExpressionUUID->"8be34eff-6f95-4c5c-b50e-49584a4d019e"]
}, Open  ]]
}, Open  ]]
}, Open  ]]
}
]
*)

(* NotebookSignature Wwp36sCvFR9FZA161HYE7aWb *)
