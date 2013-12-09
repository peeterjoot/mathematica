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
NotebookDataLength[     22356,        684]
NotebookOptionsPosition[     21552,        641]
NotebookOutlinePosition[     21893,        656]
CellTagsIndexPosition[     21850,        653]
WindowFrame->Normal*)

(* Beginning of Notebook Content *)
Notebook[{

Cell[CellGroupData[{
Cell["\<\
Attempt to verify Bessel1 fourier transform result from page 11 of the \
diffraction notes.\
\>", "Section",
 CellChangeTimes->{{3.559518995513009*^9, 3.55951901650521*^9}}],

Cell[TextData[{
 "For the function\n\n",
 Cell[BoxData[
  FormBox[
   RowBox[{
    RowBox[{"f", "(", 
     RowBox[{"x", ",", " ", "y"}], ")"}], " ", "=", " ", 
    TagBox[GridBox[{
       {"\[Piecewise]", GridBox[{
          {"1", 
           RowBox[{
            RowBox[{
             SuperscriptBox["x", "2"], "+", 
             SuperscriptBox["y", "2"]}], "<", 
            SuperscriptBox["a", "2"]}]},
          {"0", "otherwise"}
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
     Selectable->False]}], TraditionalForm]]],
 "\n\nour Prof\[CloseCurlyQuote]s notes give the Fourier transform as\n\n",
 Cell[BoxData[
  FormBox[
   TagBox[
    RowBox[{
     RowBox[{"f", "(", "k", ")"}], "=", 
     FractionBox[
      RowBox[{"2", " ", "\[Pi]", " ", 
       SuperscriptBox["a", "2"], " ", 
       TemplateBox[{"1",RowBox[{"k", " ", "a"}]},
        "BesselJ"]}], 
      RowBox[{"k", " ", "a"}]]}],
    HoldForm], TraditionalForm]]],
 "\n\nwhere\n\n",
 Cell[BoxData[
  FormBox[
   TagBox[
    RowBox[{"k", "=", 
     SqrtBox[
      RowBox[{
       SubsuperscriptBox["k", "x", "2"], "+", 
       SubsuperscriptBox["k", "y", "2"]}]]}],
    HoldForm], TraditionalForm]]],
 ".\n\nNote that he is using a Fourier transform pairs of the form\n\n",
 Cell[BoxData[
  FormBox[
   TagBox[
    RowBox[{
     RowBox[{"f", "(", "k", ")"}], "=", 
     RowBox[{
      SubsuperscriptBox["\[Integral]", 
       RowBox[{"-", "\[Infinity]"}], "\[Infinity]"], 
      RowBox[{
       RowBox[{
        RowBox[{"exp", "(", 
         RowBox[{"i", " ", "k", " ", "x"}], ")"}], " ", 
        RowBox[{"f", "(", "x", ")"}]}], 
       RowBox[{"\[DifferentialD]", "x"}]}]}]}],
    HoldForm], TraditionalForm]]],
 "\n\n",
 Cell[BoxData[
  FormBox[
   TagBox[
    RowBox[{
     RowBox[{"f", "(", "x", ")"}], "=", 
     RowBox[{
      FormBox[
       FractionBox["1", 
        RowBox[{"2", " ", "\[Pi]"}]],
       TraditionalForm], 
      RowBox[{
       SubsuperscriptBox["\[Integral]", 
        RowBox[{"-", "\[Infinity]"}], "\[Infinity]"], 
       RowBox[{
        RowBox[{"exp", "(", 
         RowBox[{
          RowBox[{"-", "i"}], " ", "k", " ", "x"}], ")"}], " ", 
        RowBox[{"f", "(", "k", ")"}], 
        RowBox[{"\[DifferentialD]", "k"}]}]}]}]}],
    HoldForm], TraditionalForm]]],
 "\n\n",
 StyleBox["Mathematica",
  FontSlant->"Italic"],
 " gives the result:\n\n",
 Cell[BoxData[
  FormBox[
   FractionBox[
    RowBox[{"\[Pi]", " ", "a", " ", 
     RowBox[{"(", 
      RowBox[{
       RowBox[{
        RowBox[{"(", 
         RowBox[{
          RowBox[{"2", " ", "a", " ", "k"}], "-", 
          RowBox[{"\[Pi]", " ", 
           TemplateBox[{"0",RowBox[{"a", " ", "k"}]},
            "StruveH"]}]}], ")"}], " ", 
        TemplateBox[{"1",RowBox[{"a", " ", "k"}]},
         "BesselJ"]}], "+", 
       RowBox[{"\[Pi]", " ", 
        TemplateBox[{"1",RowBox[{"a", " ", "k"}]},
         "StruveH"], " ", 
        TemplateBox[{"0",RowBox[{"a", " ", "k"}]},
         "BesselJ"]}]}], ")"}]}], 
    SuperscriptBox["k", "2"]], TraditionalForm]],
  CellChangeTimes->{3.559519610356176*^9}],
 "\n\nwhich includes the BesselJ[1, ...] term, but has some extra bits that \
aren\[CloseCurlyQuote]t in his result.  It doesn\[CloseCurlyQuote]t look like \
these are neccessarily zero.  What source was used for this transform result?"
}], "Text",
 CellChangeTimes->{{3.5595190853391466`*^9, 3.5595191090925055`*^9}, {
  3.5595192394879637`*^9, 3.5595192484034734`*^9}, {3.559519295163148*^9, 
  3.559519308546913*^9}, {3.559519386065347*^9, 3.559519453929229*^9}, {
  3.5595195808424883`*^9, 3.5595195887879424`*^9}, {3.559519630645336*^9, 
  3.5595196902147436`*^9}}]
}, Open  ]],

Cell[CellGroupData[{

Cell["\<\
Evaluating manually in polar coordinates\
\>", "Section",
 CellChangeTimes->{{3.5595194727063026`*^9, 3.559519478901657*^9}}],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"\[IndentingNewLine]", 
  RowBox[{
   RowBox[{"Clear", "[", 
    RowBox[{"i0", ",", " ", "j"}], "]"}], "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{"i0", "[", 
     RowBox[{"kx_", ",", " ", "ky_", ",", " ", "rho_"}], "]"}], " ", "=", " ", 
    RowBox[{"Integrate", "[", " ", 
     RowBox[{
      RowBox[{"rho", " ", 
       RowBox[{"E", "^", 
        RowBox[{"(", 
         RowBox[{"I", " ", "kx", " ", "rho", " ", 
          RowBox[{"Cos", "[", "theta", "]"}]}], ")"}]}], " ", 
       RowBox[{"E", "^", 
        RowBox[{"(", 
         RowBox[{"I", " ", "ky", " ", "rho", " ", 
          RowBox[{"Sin", "[", "theta", "]"}]}], ")"}]}]}], ",", " ", 
      RowBox[{"{", 
       RowBox[{"theta", ",", " ", "0", ",", " ", 
        RowBox[{"2", " ", "Pi"}]}], "}"}]}], "]"}]}], "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{"j", "[", 
     RowBox[{"k_", ",", " ", "rho_"}], "]"}], " ", "=", " ", 
    RowBox[{
     RowBox[{"i0", "[", 
      RowBox[{"kx", ",", " ", "ky", ",", " ", "rho"}], "]"}], "/.", " ", 
     RowBox[{
      SqrtBox[
       RowBox[{
        SuperscriptBox["kx", "2"], "+", 
        SuperscriptBox["ky", "2"]}]], " ", "\[Rule]", " ", "k"}]}]}], 
   "\[IndentingNewLine]", 
   RowBox[{"FullSimplify", "[", 
    RowBox[{
     RowBox[{"Integrate", "[", " ", 
      RowBox[{
       RowBox[{"rho", " ", 
        RowBox[{"j", "[", 
         RowBox[{"k", ",", " ", "rho"}], "]"}]}], ",", " ", 
       RowBox[{"{", 
        RowBox[{"rho", ",", " ", "0", ",", " ", "a"}], "}"}]}], "]"}], ",", 
     " ", 
     RowBox[{
      RowBox[{"a", " ", ">", " ", "0"}], " ", "&&", " ", 
      RowBox[{"k", " ", ">", " ", "0"}]}]}], "]"}]}]}]], "Input",
 CellChangeTimes->{{3.559516909540698*^9, 3.5595169214673805`*^9}, {
   3.5595171120052786`*^9, 3.559517136389673*^9}, {3.559517197068144*^9, 
   3.5595172427897587`*^9}, {3.559517276414682*^9, 3.5595173086965284`*^9}, 
   3.559517443099216*^9, {3.559517504069703*^9, 3.5595175095820184`*^9}}],

Cell[BoxData[
 RowBox[{"2", " ", "\[Pi]", " ", "rho", " ", 
  RowBox[{"BesselJ", "[", 
   RowBox[{"0", ",", 
    RowBox[{
     SqrtBox[
      RowBox[{
       SuperscriptBox["kx", "2"], "+", 
       SuperscriptBox["ky", "2"]}]], " ", "rho"}]}], "]"}]}]], "Output",
 CellChangeTimes->{
  3.559517150133459*^9, {3.5595172179173365`*^9, 3.5595172459109373`*^9}, {
   3.5595172852681885`*^9, 3.559517310797649*^9}, 3.559517452803771*^9}],

Cell[BoxData[
 RowBox[{"2", " ", "\[Pi]", " ", "rho", " ", 
  RowBox[{"BesselJ", "[", 
   RowBox[{"0", ",", 
    RowBox[{"k", " ", "rho"}]}], "]"}]}]], "Output",
 CellChangeTimes->{
  3.559517150133459*^9, {3.5595172179173365`*^9, 3.5595172459109373`*^9}, {
   3.5595172852681885`*^9, 3.559517310797649*^9}, 3.559517452805771*^9}]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{
  FractionBox[
   RowBox[{"a", " ", "\[Pi]", " ", 
    RowBox[{"(", 
     RowBox[{
      RowBox[{
       RowBox[{"BesselJ", "[", 
        RowBox[{"1", ",", 
         RowBox[{"a", " ", "k"}]}], "]"}], " ", 
       RowBox[{"(", 
        RowBox[{
         RowBox[{"2", " ", "a", " ", "k"}], "-", 
         RowBox[{"\[Pi]", " ", 
          RowBox[{"StruveH", "[", 
           RowBox[{"0", ",", 
            RowBox[{"a", " ", "k"}]}], "]"}]}]}], ")"}]}], "+", 
      RowBox[{"\[Pi]", " ", 
       RowBox[{"BesselJ", "[", 
        RowBox[{"0", ",", 
         RowBox[{"a", " ", "k"}]}], "]"}], " ", 
       RowBox[{"StruveH", "[", 
        RowBox[{"1", ",", 
         RowBox[{"a", " ", "k"}]}], "]"}]}]}], ")"}]}], 
   SuperscriptBox["k", "2"]], " ", "//", " ", "TraditionalForm"}]], "Input",
 CellChangeTimes->{{3.5595196035727882`*^9, 3.5595196095661306`*^9}}],

Cell[BoxData[
 FormBox[
  FractionBox[
   RowBox[{"\[Pi]", " ", "a", " ", 
    RowBox[{"(", 
     RowBox[{
      RowBox[{
       RowBox[{"(", 
        RowBox[{
         RowBox[{"2", " ", "a", " ", "k"}], "-", 
         RowBox[{"\[Pi]", " ", 
          TemplateBox[{"0",RowBox[{"a", " ", "k"}]},
           "StruveH"]}]}], ")"}], " ", 
       TemplateBox[{"1",RowBox[{"a", " ", "k"}]},
        "BesselJ"]}], "+", 
      RowBox[{"\[Pi]", " ", 
       TemplateBox[{"1",RowBox[{"a", " ", "k"}]},
        "StruveH"], " ", 
       TemplateBox[{"0",RowBox[{"a", " ", "k"}]},
        "BesselJ"]}]}], ")"}]}], 
   SuperscriptBox["k", "2"]], TraditionalForm]], "Output",
 CellChangeTimes->{3.559519610356176*^9}]
}, Open  ]]
}, Open  ]],

Cell[CellGroupData[{

Cell["\<\
Attempt to evaluate in Cartesian coordinates:\
\>", "Section",
 CellChangeTimes->{{3.559518948104297*^9, 3.559518959424945*^9}}],

Cell[BoxData[
 RowBox[{
  RowBox[{"(*", 
   RowBox[{
   "Verify", " ", "that", " ", "the", " ", "FourierParameters", " ", "give", 
    " ", "the", " ", "result", " ", "in", " ", "the", " ", 
    RowBox[{"Prof", "'"}], "s", " ", "transform", " ", 
    RowBox[{"table", ":"}]}], "*)"}], "\[IndentingNewLine]", 
  RowBox[{"(*", 
   RowBox[{"FourierTransform", "[", 
    RowBox[{
     RowBox[{"Exp", "[", 
      RowBox[{
       RowBox[{"-", 
        RowBox[{"x", "^", "2"}]}], "/", 
       RowBox[{"a", "^", "2"}]}], "]"}], ",", "x", ",", "k", ",", 
     RowBox[{"FourierParameters", "\[Rule]", 
      RowBox[{"{", 
       RowBox[{"1", ",", "1"}], "}"}]}]}], "]"}], "*)"}]}]], "Input",
 CellChangeTimes->{{3.5595178824013424`*^9, 3.5595178897207613`*^9}, {
  3.5595188952662754`*^9, 3.5595189208737397`*^9}}],

Cell[CellGroupData[{

Cell[BoxData[{
 RowBox[{"Clear", "[", 
  RowBox[{"f", ",", " ", "x", ",", " ", "y", ",", " ", "a"}], 
  "]"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{"f", "[", 
   RowBox[{"x_", ",", " ", "y_", ",", " ", "a_"}], "]"}], " ", "=", " ", 
  RowBox[{"Piecewise", "[", 
   RowBox[{"{", 
    RowBox[{"{", 
     RowBox[{"1", ",", 
      RowBox[{
       RowBox[{
        RowBox[{"x", "^", "2"}], " ", "+", " ", 
        RowBox[{"y", "^", "2"}]}], " ", "<", " ", 
       RowBox[{"a", "^", "2"}]}]}], "}"}], "}"}], "]"}]}]}], "Input",
 CellChangeTimes->{{3.5595180131548214`*^9, 3.55951814793653*^9}, {
  3.559518205413818*^9, 3.559518206941905*^9}, {3.559518281624177*^9, 
  3.55951828955063*^9}}],

Cell[BoxData[
 TagBox[GridBox[{
    {"\[Piecewise]", GridBox[{
       {"1", 
        RowBox[{
         RowBox[{
          SuperscriptBox["x", "2"], "+", 
          SuperscriptBox["y", "2"]}], "<", 
         SuperscriptBox["a", "2"]}]},
       {"0", 
        TagBox["True",
         "PiecewiseDefault",
         AutoDelete->True]}
      },
      AllowedDimensions->{2, Automatic},
      Editable->True,
      GridBoxAlignment->{
       "Columns" -> {{Left}}, "ColumnsIndexed" -> {}, "Rows" -> {{Baseline}}, 
        "RowsIndexed" -> {}},
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
  Selectable->False]], "Output",
 CellChangeTimes->{3.5595181490415936`*^9}]
}, Open  ]],

Cell[BoxData[
 RowBox[{
  RowBox[{"(*", 
   RowBox[{
   "This", " ", "burns", " ", "a", " ", "lot", " ", "of", " ", "CPU", " ", 
    "and", " ", "the", " ", "second", " ", "transform", " ", 
    RowBox[{"doesn", "'"}], "t", " ", "complete", " ", "in", " ", "a", " ", 
    "reasonable", " ", "amount", " ", "of", " ", 
    RowBox[{"time", "."}]}], "*)"}], "\[IndentingNewLine]", 
  RowBox[{"(*", 
   RowBox[{
    RowBox[{
     RowBox[{"Clear", "[", 
      RowBox[{"kx", ",", " ", "ky", ",", " ", "fx"}], "]"}], 
     "\[IndentingNewLine]", 
     RowBox[{"fx", "[", 
      RowBox[{"kx_", ",", " ", "y_", ",", " ", "a_"}], "]"}]}], " ", "=", " ", 
    RowBox[{
     RowBox[{"FourierTransform", "[", 
      RowBox[{
       RowBox[{"f", "[", 
        RowBox[{"x", ",", " ", "y", ",", " ", "a"}], "]"}], ",", "x", ",", 
       "kx", ",", 
       RowBox[{"FourierParameters", "\[Rule]", 
        RowBox[{"{", 
         RowBox[{"1", ",", "1"}], "}"}]}]}], "]"}], "\[IndentingNewLine]", 
     RowBox[{"FourierTransform", "[", 
      RowBox[{
       RowBox[{"fx", "[", 
        RowBox[{"kx", ",", " ", "y", ",", " ", "a"}], "]"}], ",", "y", ",", 
       "ky", ",", 
       RowBox[{"FourierParameters", "\[Rule]", 
        RowBox[{"{", 
         RowBox[{"1", ",", "1"}], "}"}]}]}], "]"}]}]}], "\[IndentingNewLine]",
    "*)"}], "\[IndentingNewLine]", "\[IndentingNewLine]", 
  RowBox[{"(*", 
   RowBox[{
   "This", " ", "one", " ", "also", " ", "burns", " ", "a", " ", "lot", " ", 
    "of", " ", "CPU", " ", "and", " ", 
    RowBox[{"doesn", "'"}], "t", " ", "complete", " ", "in", " ", "a", " ", 
    "reasonable", " ", "amount", " ", "of", " ", "time"}], "*)"}], 
  "\[IndentingNewLine]", 
  RowBox[{"(*", 
   RowBox[{
    RowBox[{
     RowBox[{"Clear", "[", 
      RowBox[{"kx", ",", " ", "ky", ",", " ", "fx", ",", " ", "a"}], "]"}], 
     "\[IndentingNewLine]", 
     RowBox[{"fx", "[", 
      RowBox[{"kx_", ",", " ", "ky_", ",", " ", "a_"}], "]"}]}], " ", "=", 
    " ", 
    RowBox[{"FourierTransform", "[", 
     RowBox[{
      RowBox[{"f", "[", 
       RowBox[{"x", ",", " ", "y", ",", " ", "a"}], "]"}], ",", 
      RowBox[{"{", 
       RowBox[{"x", ",", " ", "y"}], "}"}], ",", 
      RowBox[{"{", 
       RowBox[{"kx", ",", "ky"}], "}"}], ",", " ", 
      RowBox[{"FourierParameters", "\[Rule]", 
       RowBox[{"{", 
        RowBox[{"1", ",", "1"}], "}"}]}]}], "]"}]}], "*)"}]}]], "Input",
 CellChangeTimes->{{3.5595181822534933`*^9, 3.559518298899165*^9}, {
  3.5595183440537477`*^9, 3.559518391760476*^9}, {3.5595187600225396`*^9, 
  3.559518864773531*^9}}]
}, Open  ]],

Cell[CellGroupData[{

Cell["Formatting, to hide.", "Section",
 CellChangeTimes->{{3.559519554117959*^9, 3.559519559360259*^9}}],

Cell[CellGroupData[{

Cell[BoxData[{
 RowBox[{
  RowBox[{"f", "[", 
   RowBox[{"x", ",", " ", "y", ",", " ", "a"}], "]"}], " ", "//", " ", 
  "TraditionalForm"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{"HoldForm", "[", " ", 
   RowBox[{
    RowBox[{"f", "[", "k", "]"}], " ", "=", " ", 
    RowBox[{"2", " ", "Pi", " ", 
     RowBox[{"a", "^", "2"}], " ", 
     RowBox[{
      RowBox[{"BesselJ", "[", 
       RowBox[{"1", ",", " ", 
        RowBox[{"k", " ", "a"}]}], "]"}], "/", " ", 
      RowBox[{"(", 
       RowBox[{"k", " ", "a"}], ")"}]}]}]}], " ", "]"}], " ", "//", " ", 
  "TraditionalForm"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{"HoldForm", "[", " ", 
   RowBox[{"k", " ", "=", " ", 
    RowBox[{"Sqrt", "[", " ", 
     RowBox[{
      RowBox[{
       SubscriptBox["k", "x"], "^", "2"}], " ", "+", " ", 
      RowBox[{
       SubscriptBox["k", "y"], "^", "2"}]}], " ", "]"}]}], " ", "]"}], " ", "//",
   " ", "TraditionalForm"}]}], "Input",
 CellChangeTimes->{{3.559519054769398*^9, 3.559519064157935*^9}, {
  3.559519122060247*^9, 3.559519229968419*^9}, {3.559519263802354*^9, 
  3.5595192829284477`*^9}}],

Cell[BoxData[
 FormBox[
  TagBox[GridBox[{
     {"\[Piecewise]", GridBox[{
        {"1", 
         RowBox[{
          RowBox[{
           SuperscriptBox["x", "2"], "+", 
           SuperscriptBox["y", "2"]}], "<", 
          SuperscriptBox["a", "2"]}]},
        {"0", 
         TagBox["True",
          "PiecewiseDefault",
          AutoDelete->True]}
       },
       AllowedDimensions->{2, Automatic},
       Editable->True,
       GridBoxAlignment->{
        "Columns" -> {{Left}}, "ColumnsIndexed" -> {}, "Rows" -> {{Baseline}},
          "RowsIndexed" -> {}},
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
   Selectable->False], TraditionalForm]], "Output",
 CellChangeTimes->{{3.5595191765823655`*^9, 3.5595191990136485`*^9}, 
   3.559519231020479*^9, 3.559519283874502*^9}]
}, Closed]],

Cell[BoxData[
 FormBox["", TraditionalForm]], "Input",
 CellChangeTimes->{{3.5595195646855636`*^9, 3.559519564725566*^9}}],

Cell[BoxData[
 FormBox["", TraditionalForm]], "Input",
 CellChangeTimes->{{3.559519289683834*^9, 3.5595192898078413`*^9}}],

Cell[CellGroupData[{

Cell[BoxData[
 FormBox["", TraditionalForm]], "Input",
 CellChangeTimes->{{3.5595192343876715`*^9, 3.5595192344366746`*^9}}],

Cell[BoxData[
 FormBox[
  TagBox[
   RowBox[{"k", "=", 
    SqrtBox[
     RowBox[{
      SuperscriptBox["k_x", "2"], "+", 
      SuperscriptBox["k_y", "2"]}]]}],
   HoldForm], TraditionalForm]], "Output",
 CellChangeTimes->{{3.5595191765823655`*^9, 3.5595191990136485`*^9}, 
   3.5595192310284796`*^9}]
}, Closed]],

Cell[BoxData[
 FormBox["", TraditionalForm]], "Input",
 CellChangeTimes->{{3.5595190710863314`*^9, 3.5595190757806*^9}}],

Cell[BoxData[
 RowBox[{
  RowBox[{"HoldForm", "[", " ", 
   RowBox[{
    RowBox[{"f", "[", "k", "]"}], " ", "=", " ", 
    RowBox[{"Integrate", "[", " ", 
     RowBox[{
      RowBox[{
       RowBox[{"Exp", "[", 
        RowBox[{"i", " ", "k", " ", "x"}], "]"}], " ", 
       RowBox[{"f", "[", "x", "]"}]}], ",", " ", 
      RowBox[{"{", 
       RowBox[{"x", ",", " ", 
        RowBox[{"-", "Infinity"}], ",", " ", "Infinity"}], "}"}]}], "]"}]}], 
   "]"}], " ", "//", " ", "TraditionalForm"}]], "Input",
 CellChangeTimes->{{3.559519315294299*^9, 3.559519373259615*^9}}],

Cell[BoxData[
 FormBox["", TraditionalForm]], "Input",
 CellChangeTimes->{{3.5595193804810276`*^9, 3.5595193805120296`*^9}}]
}, Closed]]
},
WindowSize->{702, 637},
WindowMargins->{{5, Automatic}, {Automatic, 0}},
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
Cell[1257, 32, 183, 4, 97, "Section"],
Cell[1443, 38, 4948, 146, 512, "Text"]
}, Open  ]],
Cell[CellGroupData[{
Cell[6428, 189, 135, 3, 71, "Section"],
Cell[CellGroupData[{
Cell[6588, 196, 1969, 50, 141, "Input"],
Cell[8560, 248, 432, 11, 43, "Output"],
Cell[8995, 261, 330, 7, 30, "Output"]
}, Open  ]],
Cell[CellGroupData[{
Cell[9362, 273, 879, 25, 69, InheritFromParent],
Cell[10244, 300, 702, 21, 64, "Output"]
}, Open  ]]
}, Open  ]],
Cell[CellGroupData[{
Cell[10995, 327, 138, 3, 71, "Section"],
Cell[11136, 332, 804, 20, 72, "Input"],
Cell[CellGroupData[{
Cell[11965, 356, 692, 18, 52, "Input"],
Cell[12660, 376, 1661, 49, 46, "Output"]
}, Open  ]],
Cell[14336, 428, 2563, 64, 252, "Input"]
}, Open  ]],
Cell[CellGroupData[{
Cell[16936, 497, 105, 1, 71, "Section"],
Cell[CellGroupData[{
Cell[17066, 502, 1106, 30, 72, "Input"],
Cell[18175, 534, 1811, 51, 64, "Output"]
}, Closed]],
Cell[20001, 588, 122, 2, 30, InheritFromParent],
Cell[20126, 592, 122, 2, 30, InheritFromParent],
Cell[CellGroupData[{
Cell[20273, 598, 124, 2, 30, InheritFromParent],
Cell[20400, 602, 302, 10, 52, "Output"]
}, Closed]],
Cell[20717, 615, 120, 2, 30, InheritFromParent],
Cell[20840, 619, 569, 15, 52, "Input"],
Cell[21412, 636, 124, 2, 30, InheritFromParent]
}, Closed]]
}
]
*)

(* End of internal cache information *)

(* NotebookSignature yxD51z@JGxxBwBgZToaF6AtF *)
