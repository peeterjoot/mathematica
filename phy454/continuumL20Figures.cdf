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
NotebookDataLength[     42204,        897]
NotebookOptionsPosition[     42042,        877]
NotebookOutlinePosition[     42383,        892]
CellTagsIndexPosition[     42340,        889]
WindowFrame->Normal*)

(* Beginning of Notebook Content *)
Notebook[{

Cell[CellGroupData[{
Cell[BoxData[{
 RowBox[{"Clear", "[", 
  RowBox[{
  "\[Epsilon]", ",", " ", "h", ",", " ", "y", ",", " ", "r", ",", " ", "p", 
   ",", " ", "q", ",", " ", "g", ",", " ", "h2"}], 
  "]"}], "\[IndentingNewLine]", 
 RowBox[{"h", " ", ":=", " ", 
  RowBox[{"Hold", "[", 
   RowBox[{
    RowBox[{"u", "[", "y_", "]"}], " ", "=", " ", 
    RowBox[{
     RowBox[{
      RowBox[{"(", 
       RowBox[{"1", " ", "+", " ", "\[Epsilon]"}], ")"}], " ", 
      RowBox[{"E", "^", 
       RowBox[{"(", 
        RowBox[{
         RowBox[{"-", "y"}], "/", "\[Epsilon]"}], ")"}]}]}], " ", "+", " ", 
     "y", " ", "-", "\[Epsilon]"}]}], "]"}]}], "\[IndentingNewLine]", 
 RowBox[{"h2", " ", ":=", " ", 
  RowBox[{"Hold", "[", 
   RowBox[{
    RowBox[{"u2", "[", "y_", "]"}], " ", "=", " ", 
    RowBox[{"y", " ", "+", " ", 
     RowBox[{
      RowBox[{"(", "  ", 
       RowBox[{
        RowBox[{"E", "^", 
         RowBox[{"(", 
          RowBox[{
           RowBox[{"-", "y"}], "/", "\[Epsilon]"}], ")"}]}], " ", "-", "1"}], 
       ")"}], "/", 
      RowBox[{"(", "  ", 
       RowBox[{
        RowBox[{"E", "^", 
         RowBox[{"(", 
          RowBox[{
           RowBox[{"-", "1"}], "/", "\[Epsilon]"}], ")"}]}], " ", "-", "1"}], 
       ")"}]}]}]}], "]"}]}], "\[IndentingNewLine]", 
 RowBox[{"h", " ", "//", " ", "TraditionalForm"}], "\[IndentingNewLine]", 
 RowBox[{"h2", " ", "//", " ", "TraditionalForm"}], "\[IndentingNewLine]", 
 RowBox[{"\[Epsilon]", ":=", " ", "0.1"}], "\[IndentingNewLine]", 
 RowBox[{"ReleaseHold", "[", "h", "]"}], "\[IndentingNewLine]", 
 RowBox[{"ReleaseHold", "[", "h2", "]"}], "\[IndentingNewLine]", 
 RowBox[{"r", " ", ":=", " ", "2"}], "\[IndentingNewLine]", 
 RowBox[{"p", " ", ":=", " ", 
  RowBox[{"Plot", "[", 
   RowBox[{
    RowBox[{"u", "[", "y", "]"}], ",", " ", 
    RowBox[{"{", 
     RowBox[{"y", ",", " ", "0", ",", " ", "r"}], "}"}]}], 
   RowBox[{"(*", 
    RowBox[{",", " ", 
     RowBox[{"PlotRange", " ", "\[Rule]", " ", 
      RowBox[{"{", " ", 
       RowBox[{"0", ",", " ", "r"}], "}"}]}]}], "*)"}], 
   "]"}]}], "\[IndentingNewLine]", 
 RowBox[{"p2", " ", "=", " ", 
  RowBox[{"Plot", "[", 
   RowBox[{
    RowBox[{"u2", "[", "y", "]"}], ",", " ", 
    RowBox[{"{", 
     RowBox[{"y", ",", " ", "0", ",", " ", "r"}], "}"}], ",", " ", 
    RowBox[{"PlotRange", " ", "\[Rule]", " ", 
     RowBox[{"{", " ", 
      RowBox[{"0", ",", " ", "r"}], "}"}]}]}], "]"}]}], "\[IndentingNewLine]", 
 RowBox[{"q", " ", ":=", " ", 
  RowBox[{"Plot", "[", 
   RowBox[{
    RowBox[{"x", " ", "-", " ", "e"}], ",", " ", 
    RowBox[{"{", 
     RowBox[{"x", ",", " ", "0", ",", " ", "r"}], "}"}]}], 
   "]"}]}], "\[IndentingNewLine]", 
 RowBox[{"Show", "[", 
  RowBox[{"p", ",", " ", "q"}], "]"}], "\[IndentingNewLine]"}], "Input",
 CellChangeTimes->{{3.5420610023673077`*^9, 3.542061113612671*^9}, {
  3.542061154339*^9, 3.542061237816775*^9}, {3.542061274343864*^9, 
  3.54206128667657*^9}, {3.5420613483120947`*^9, 3.5420615553639374`*^9}, {
  3.5420625588523335`*^9, 3.5420626892297907`*^9}, {3.5420627308281703`*^9, 
  3.5420627324982653`*^9}, {3.542096894249032*^9, 3.542096904594624*^9}}],

Cell[BoxData[
 FormBox[
  RowBox[{"Hold", "[", 
   RowBox[{
    RowBox[{"u", "(", "y_", ")"}], "=", 
    RowBox[{
     RowBox[{
      RowBox[{"(", 
       RowBox[{"\[Epsilon]", "+", "1"}], ")"}], " ", 
      SuperscriptBox["\[ExponentialE]", 
       RowBox[{"-", 
        FractionBox["y", "\[Epsilon]"]}]]}], "+", "y", "-", "\[Epsilon]"}]}], 
   "]"}], TraditionalForm]], "Output",
 CellChangeTimes->{{3.5420626575119767`*^9, 3.5420626902168474`*^9}, 
   3.5420627331203012`*^9, 3.5420969057316885`*^9}],

Cell[BoxData[
 FormBox[
  RowBox[{"Hold", "[", 
   RowBox[{
    RowBox[{"u2", "(", "y_", ")"}], "=", 
    RowBox[{
     FractionBox[
      RowBox[{
       SuperscriptBox["\[ExponentialE]", 
        RowBox[{"-", 
         FractionBox["y", "\[Epsilon]"]}]], "-", "1"}], 
      RowBox[{
       SuperscriptBox["\[ExponentialE]", 
        RowBox[{
         RowBox[{"-", "1"}], "/", "\[Epsilon]"}]], "-", "1"}]], "+", "y"}]}], 
   "]"}], TraditionalForm]], "Output",
 CellChangeTimes->{{3.5420626575119767`*^9, 3.5420626902168474`*^9}, 
   3.5420627331203012`*^9, 3.5420969057336893`*^9}],

Cell[BoxData[
 RowBox[{
  RowBox[{"-", "0.1`"}], "+", 
  RowBox[{"1.1`", " ", 
   SuperscriptBox["\[ExponentialE]", 
    RowBox[{
     RowBox[{"-", "10.`"}], " ", "y"}]]}], "+", "y"}]], "Output",
 CellChangeTimes->{{3.5420626575119767`*^9, 3.5420626902168474`*^9}, 
   3.5420627331203012`*^9, 3.5420969057696915`*^9}],

Cell[BoxData[
 RowBox[{
  RowBox[{
   RowBox[{"-", "1.0000454019910097`"}], " ", 
   RowBox[{"(", 
    RowBox[{
     RowBox[{"-", "1"}], "+", 
     SuperscriptBox["\[ExponentialE]", 
      RowBox[{
       RowBox[{"-", "10.`"}], " ", "y"}]]}], ")"}]}], "+", "y"}]], "Output",
 CellChangeTimes->{{3.5420626575119767`*^9, 3.5420626902168474`*^9}, 
   3.5420627331203012`*^9, 3.5420969057716913`*^9}]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 GraphicsBox[{{{}, {}, 
    {Hue[0.67, 0.6, 0.6], LineBox[CompressedData["
1:eJwlxQs8EwgAx/GRyqmE08OjtNCLRg/04i/Ep0gfeYzK41LT4/K4Oolq8ul5
EtWIQ+GDxM0yRoZas+ljHiu3yHNowqwxakhyd5/7fT7fz494POzwSVUCgeD7
r/9+4OTQO87wSbvsW8GObOJjOzVH/XCxnhOS/KNOb06KwbYnqRmlel64XtzS
6H05Hq5NbcxMvRMYS1zlZOedDvKJyZoHeheQSTugJKkXodvilmOC3nU8+ntt
WVcEG1nLDt38Q4+GOPMR+8ue9YhpesTzYdNA13D+yXGxAD43elWNjyYjh6Y7
X50nwOKvEdSqjBTEHRrsf2DZiCgRLUpmlAafBsLrttlmeDzsOOO+7jEUFKbN
TqsWXFMvXX9HLxe122491nBtwyaX+7eZ4blIzVAZ2vekDS03woY73+RCjT7C
VZtog8k88yJSZB6252+K0kr7gLrZXJKoJR/RS5AVKW7H4okUK6O7z0DxGA21
8OlCane0I+tHMZJ8DfwORvVir6Ffbo83A1LtuuLg9F5Ij9jMV6czQMxeyXZ5
2YvVskvB9M3PURj3u3P0vD6EnbY2JXQ9x9RUe8iD+D7onGAU5O1gQkUzL6H1
QT98/bIZY4oykBMHGG+pEox2emnk6LMg1U8huKRLcDNA/aSnIwuTU7ZdaeUS
lAaH6ZfTWEjubtdtlUmgGWp7I8amHKUU5p/F5AHw49qPLLhSgd07OOSl6z9h
61/aCwzV2ejOPhM6TR9EPYkf1GTJRkFA8O0Q/iCCSqKqrvqxEZinev9F1yAS
ysXhfYVsmFqYrVNbNIQhDr0z/2AV9lBVfZ0pQ3j8fn/JlofVcMgLYmSuGMai
uWvHXFa/Qudks5BDkSL1NDnA3PkVCrKHxDHRUpiIzIO0Q19BZN29cM09Keye
tQV31rzCFv2YzSYsKSqfpbAqSBw0tVPzjVRH8NlTVu3azEH68VgfldQReBc8
aji/hAvJNwt4l8mQ4R/nRiFyQe0j2l7gy9Cvc67J14oLfZ2+oNhWGcKuOAht
/bmofMq9FzQlw53Dn1sW0rnYqbuE7rj7M2q+O3Sku9WCOadaSK/5DFMP+VBt
PA8m7g60JpYc+lSXXSHZPNBCXGQadXJo0bPiNSp4IG78pGbdKsc3dU+SRz8P
MuMX495KOd5yKs737ODj8s1eLY7VKKItr/2YGuBjTJO6jVwyiualurok+zdQ
CJvmmbmP4WLzTqR+qUdWwN6kZGMFNEmsgXp1ATIM3erPblQgN8Hy7oyhAMyF
tMY9Fgq8c1vfHrBPAOXF5MPCXQqYNeieN00RIOfrU7sKDwXEb0bzmTYNaH23
OjbtqgIur/M0m6Ib8cF9eWSXSIEVZdo9KipCWFRHCbsvjOPY3RkvyXIhutIL
IuZHjyPnxEBDnbkQottXvmygjsN8WWVlvK8QXhomL4LvjMMhMih52XMhsuw3
TBdkjsM6g5xPs3gLteG5/VH8cfwSkO9f0PMWHYlfDMg6Eyjvd2wU7mmBe9HK
wKM5E+CeyTTwk4ngbLqg9tKTL/i6znYp/Vwb7k9oCfb99hWq00VaBqYdOOUq
fJ/opIT1XFC5Z3EXdhvzGKdmlWi8vr25bpMYWp57SyOKJmGUNDL9TN6Ly3qH
XkuOT2FkUtzz3rIf4Q83xzA0ppErrRJo3vsI5fqitDUvp6G56umoRCKBv5fT
rqe/fsPd0yxKlsknJFwMyDuvOQOlfZHkFHUQhwsbY21rZnBhK69see0QltCM
PyoCv0NczIt/R5RCdHbgqnzpLGbOiNI3Ro/Ax8fkdWz1LMz2LvxBqZJBKfWV
Bvj/gEsOMaRkhRztfOmnkkVzuLgqcG3fsVEESgd/phTPIUQoHSQQxkD4P/t/
ANgwwZM=
      "]]}}, 
   StyleBox[InsetBox[
     StyleBox[
      TagBox[
       RowBox[{
        RowBox[{"u", "(", "y", ")"}], "=", 
        RowBox[{
         RowBox[{
          RowBox[{"(", 
           RowBox[{
            SuperscriptBox["\[ExponentialE]", 
             RowBox[{"-", 
              FractionBox["y", "\[Epsilon]"]}]], "-", "1"}], ")"}], "/", 
          RowBox[{"(", 
           RowBox[{
            SuperscriptBox["\[ExponentialE]", 
             RowBox[{
              RowBox[{"-", "1"}], "/", "\[Epsilon]"}]], "-", "1"}], ")"}]}], 
         "+", "y"}]}],
       HoldForm],
      FontSlant->"Italic",
      Background->GrayLevel[1.]], {0.7417801587902645, 1.6860647092192504`}, {
     Left, Top}, {1.1748070786095552`, 0.5432530537655985}, {{1., 0.}, {0., 
     1.}},
     Alignment->{Left, Top}],
    FontSize->22], 
   StyleBox[InsetBox[
     StyleBox[Cell["With \[Epsilon] = 0.1",
       GeneratedCell->False,
       CellAutoOverwrite->False,
       CellBaseline->Baseline,
       TextAlignment->Left],
      FontSlant->"Italic",
      Background->GrayLevel[1.]], {0.9109798769217741, 1.0843881150719166`}, {
     Left, Baseline}, {0.4182038211732681, 0.17106596617221517`}, {{1., 0.}, {
     0., 1.}},
     Alignment->{Left, Top}],
    FontSize->22], 
   {Hue[0.67, 0.6, 0.6], Thickness[0.004216965034285823], 
    Dashing[{Small, Small}], 
    LineBox[{{0.910979876921774, 
     1.926011160813892}, {-1.0717410292571117`*^-9, 0.9965263685384134}}]}},
  AspectRatio->NCache[GoldenRatio^(-1), 0.6180339887498948],
  Axes->True,
  AxesOrigin->{0, 0},
  ImagePadding->{{9.002041, 1.1}, {16., 6.}},
  ImageSize->{564., Automatic},
  PlotRange->{{-0.04166666666666667, 2.0416666666666665`}, {0., 2.}},
  PlotRangeClipping->True,
  PlotRangePadding->Automatic]], "Input",
 CellChangeTimes->{{3.5420970050003667`*^9, 3.542097167408656*^9}, 
   3.542153364789059*^9}],

Cell[BoxData[
 GraphicsBox[{{{}, {}, 
    {Hue[0.67, 0.6, 0.6], LineBox[CompressedData["
1:eJwVlnk01dsbxkUDiSKUBiFSXdPtFindJ8pMg+o2KClSyOzKUDcqQ0UpQhlS
JJRI5jmOIZzv95zjcMzzHCEZMpzzO78/9trrs9Zee+/3effzrC1z1dH0Gi8P
D88id/x/Nrw2RC8dvvb3Ku8OOQ5nHMuPbHLqlDyKTyqKb0eo4/jrdWT0F8nT
0NGKslSMHocRlZURI2mFAau7Eeka4zhrNVv0XNIN+X9S/kz1+IF2lYAjwZIP
MNl6X2/FyjHEiR/3fyQZhjMaypY1F0bgTY2g/JMfhqiC40KBe0bwj18X73az
F1hh/CEqaPUI1kw73y2IDkeQen3yjYJheDDDPEa3vUTfE/ZzC+lhnAxtsT22
IxaD9+SXJmcG4cv/ReGhZAKeBlhSyPp+7NZ7FpjhlAADf8m1Y+n9YPg5DrdW
JeDg7ZXfjj3phxyf4gdl93e4Ns3MbzfoR+VSgjKTkQiZRK31Wyl9WDMVvm9b
UDI+r1yaKqH0IuvPf8P1e5NxvUHNdvxdL8ydTs06H0gBR93i+sWAXqSNrc2j
DKWgNiH2zJhhL0yHAjVtdT7iroFoWSezB5HtXkey2J+gHHBWNG2qG1pbzid0
nElDRZn9/YCmboxcUF/Bn5qGX1WJOhFF3ZAa9bRMVUqHwNoMXbPAbjjaqMnz
tKUjpVFKyk66G6JWaUnv9mdgv+ZaNbMLXTh3/k3axGQm9nTsNtIfaMd46+nV
bzdloetKoP7Bknb4m/NfO3UkC4+MbunejmzHF0vHTdlhWXB1uPLPgFE7hB0O
+XmrZ6O6zMrZJLsNFfeaL6y8k4MlDyNzTmQrLq4Izsp5l4Mvjhs2vnJvxc+A
w+tsiBwUxyw6e59uhXTw+4rabbkIvLxJb51IK25H/Kv6rCwXV2quW7kHt2DP
R5GVW/jzkaRvs67xeTO+KVdYUFXzEfJtF+O9WzMsPnsU/Hc+H2oCcv55/zQj
OLvTqTslH3xtoqpRm5sxVJrammhSAH6JjhjjpCbENhh8/jO0ELfDU1xEqSwI
cnwv6kmV4OhBjkOMViMibc6aK+qWoMZ5jYnCH42QYypaiDiUgLHh7dNesUb8
ncyybC0qgQqZKfBzqAF5yeFZOcqlENAVumwe2oCxU6OFRkQp+uSNfPZMMrFX
gHXo755SVO9ImytuZ8Kr+Gux6kwpTtRe3OlZw8SqXRGl4lJfUbhv6Nm/CUzI
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
EdsEpzkcDjROC120tmbjf09rHTg=
      "]]}}, GraphicsComplexBox[CompressedData["
1:eJxTTMoPSmViYGAwAmIQ7ZX64uKBl6l2DFDQyLFZvVNyiT2MHxG5cP2Hj1vg
fO7/jTHucvvhfNXAdy8Odx+B88vPWdrP+HISzhffIniPkfE8nL/tkfOZ8zaX
4PxDWXOlI99cgfO/qtnyr829Ducz/VwtIK16C843+5+wLXjdHTj/TIvJuWNa
9+F8+Qmvf6589wDOf/39/r2rBo/g/CWvdp/i63sM5/PJLn//5MkTOL8nc2va
ApVncP43h9VPMuqfw/klRke2iB1+AeffX3ek+6LiKzj/d9aV2ZpVr+F8bUf2
f2m738D57osU0zeKv0OEl2y80sOY93C+zptQ7uu+H+B8Yf4PHEd+Ifgs+2ev
V57zEc7PNtl9k9P7E5y/2jNpwb5vCP7X11ICz6Z9hvO3BrszT3H5AufXe7TO
3/IMwVe863VjcetXON/KvGWKpNE3OD9G7vxPxssI/tdTvY8KGr/D+TNY4kqC
VH4g3H9v6yKmIwg+a21jiGXhTzifYWXc+kdCv+D8olnre4UOIfh7tTs4BPN+
w/mCXkU6TXx/4Pw7uhcuV+5B8DfMs1d5EvcXzo9dbyYo+w/Bb2hd2Hhn1T84
f+0L2dl8Pv/h/Ony3F///0fwAVeG0T0=
    "], {}]},
  AspectRatio->NCache[GoldenRatio^(-1), 0.6180339887498948],
  Axes->True,
  AxesOrigin->{0, 0.30000000000000004`},
  PlotRange->{{0, 2}, {0.23978953389395996`, 1.8999999614509433`}},
  PlotRangeClipping->True,
  PlotRangePadding->{
    Scaled[0.02], 
    Scaled[0.02]}]], "Output",
 CellChangeTimes->{{3.5420626575119767`*^9, 3.5420626902168474`*^9}, 
   3.5420627331203012`*^9, 3.5420969063717256`*^9}]
}, Open  ]],

Cell[BoxData[
 FormBox[
  RowBox[{"Hold", "[", 
   RowBox[{
    RowBox[{"u2", "(", "y_", ")"}], "=", 
    RowBox[{
     FractionBox[
      RowBox[{
       SuperscriptBox["\[ExponentialE]", 
        RowBox[{"-", 
         FractionBox["y", "\[Epsilon]"]}]], "-", "1"}], 
      RowBox[{
       SuperscriptBox["\[ExponentialE]", 
        RowBox[{
         RowBox[{"-", "1"}], "/", "\[Epsilon]"}]], " ", "-", "1"}]], "+", 
     "y"}]}], "]"}], TraditionalForm]], "Input",
 CellChangeTimes->{{3.542096879985216*^9, 3.5420968871246247`*^9}}],

Cell[BoxData[
 RowBox[{
  RowBox[{"-", "0.1`"}], "+", 
  RowBox[{"1.1`", " ", 
   SuperscriptBox["\[ExponentialE]", 
    RowBox[{
     RowBox[{"-", "10.`"}], " ", "y"}]]}], "+", "y"}]], "Output",
 CellChangeTimes->{{3.5420626575119767`*^9, 3.5420626902168474`*^9}, 
   3.542062733148303*^9}],

Cell[BoxData[
 RowBox[{
  RowBox[{"1.0000454019910097`", " ", 
   RowBox[{"(", 
    RowBox[{"1", "+", 
     SuperscriptBox["\[ExponentialE]", 
      RowBox[{
       RowBox[{"-", "10.`"}], " ", "y"}]]}], ")"}]}], "+", "y"}]], "Output",
 CellChangeTimes->{{3.5420626575119767`*^9, 3.5420626902168474`*^9}, 
   3.542062733150303*^9}],

Cell[BoxData[
 GraphicsBox[{{}, {}, 
   {Hue[0.67, 0.6, 0.6], LineBox[CompressedData["
1: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
     "]]}},
  AspectRatio->NCache[GoldenRatio^(-1), 0.6180339887498948],
  Axes->True,
  AxesOrigin->{0, 0},
  PlotRange->{{0, 2}, {0, 2}},
  PlotRangeClipping->True,
  PlotRangePadding->{
    Scaled[0.02], Automatic}]], "Output",
 CellChangeTimes->{{3.5420626575119767`*^9, 3.5420626902168474`*^9}, 
   3.5420627332183065`*^9}],

Cell[BoxData[
 GraphicsBox[{{{}, {}, 
    {Hue[0.67, 0.6, 0.6], LineBox[CompressedData["
1:eJwVlnk01dsbxkUDiSKUBiFSXdPtFindJ8pMg+o2KClSyOzKUDcqQ0UpQhlS
JJRI5jmOIZzv95zjcMzzHCEZMpzzO78/9trrs9Zee+/3effzrC1z1dH0Gi8P
D88id/x/Nrw2RC8dvvb3Ku8OOQ5nHMuPbHLqlDyKTyqKb0eo4/jrdWT0F8nT
0NGKslSMHocRlZURI2mFAau7Eeka4zhrNVv0XNIN+X9S/kz1+IF2lYAjwZIP
MNl6X2/FyjHEiR/3fyQZhjMaypY1F0bgTY2g/JMfhqiC40KBe0bwj18X73az
F1hh/CEqaPUI1kw73y2IDkeQen3yjYJheDDDPEa3vUTfE/ZzC+lhnAxtsT22
IxaD9+SXJmcG4cv/ReGhZAKeBlhSyPp+7NZ7FpjhlAADf8m1Y+n9YPg5DrdW
JeDg7ZXfjj3phxyf4gdl93e4Ns3MbzfoR+VSgjKTkQiZRK31Wyl9WDMVvm9b
UDI+r1yaKqH0IuvPf8P1e5NxvUHNdvxdL8ydTs06H0gBR93i+sWAXqSNrc2j
DKWgNiH2zJhhL0yHAjVtdT7iroFoWSezB5HtXkey2J+gHHBWNG2qG1pbzid0
nElDRZn9/YCmboxcUF/Bn5qGX1WJOhFF3ZAa9bRMVUqHwNoMXbPAbjjaqMnz
tKUjpVFKyk66G6JWaUnv9mdgv+ZaNbMLXTh3/k3axGQm9nTsNtIfaMd46+nV
bzdloetKoP7Bknb4m/NfO3UkC4+MbunejmzHF0vHTdlhWXB1uPLPgFE7hB0O
+XmrZ6O6zMrZJLsNFfeaL6y8k4MlDyNzTmQrLq4Izsp5l4Mvjhs2vnJvxc+A
w+tsiBwUxyw6e59uhXTw+4rabbkIvLxJb51IK25H/Kv6rCwXV2quW7kHt2DP
R5GVW/jzkaRvs67xeTO+KVdYUFXzEfJtF+O9WzMsPnsU/Hc+H2oCcv55/zQj
OLvTqTslH3xtoqpRm5sxVJrammhSAH6JjhjjpCbENhh8/jO0ELfDU1xEqSwI
cnwv6kmV4OhBjkOMViMibc6aK+qWoMZ5jYnCH42QYypaiDiUgLHh7dNesUb8
ncyybC0qgQqZKfBzqAF5yeFZOcqlENAVumwe2oCxU6OFRkQp+uSNfPZMMrFX
gHXo755SVO9ImytuZ8Kr+Gux6kwpTtRe3OlZw8SqXRGl4lJfUbhv6Nm/CUzI
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
EdsEpzkcDjROC120tmbjf09rHTg=
      "]]}}, {{}, {}, 
    {Hue[0.67, 0.6, 0.6], LineBox[CompressedData["
1:eJwVxXk41HkAB2DnollpJJ5JtMhWqs0SpetTCDnWk/TISnnK1bSKsqE9alpK
SiRJudPpnozcTctkS6UcRQgxMQaDmBmG+X1394/3eY0On/AIUFJQUHD7z/87
Bwianw0HbKdddxGm3qrkqtgtDe1l2EMnoLIzIKySa5mVml7K8ITBxpWvLHZX
cl3etD/OYPjDvEup4PVMBdfLX1qbxAjHPpOqEIX9FdxP6y/axTOikVm6ajJI
t5ybvcT9QhwjGRZtqjPW1zlclnrpykuMuyg1O0fLYxRz93vnFE9McqCu+PlB
bmYSl0ZYBxwNueDdyKGVa6fAdI9IUH+ZBz/6hdDuuSJENNkgdfolPJU7+Snu
VdDj0HsUFd/CeciebrWhDk/67V6/3dqCrJmqVy0F/6COmaHvPdqGcvXjzC+0
NxB/v02rMKQdV599eOig1gyl2fxF+qadSE/alcd52gpr4vdkb1E33qXK3Mcc
P+B19IamBrNeBBo2BfnxOrA8cWT2kagPHZWh8WOnuzAi7e15b96P0EveXrvm
PuGusLpx4dUBhJXH3uz6uQ8LDR6M8/l8dA2fqmGzP+PK0bLA7BWD8LY+bxky
2Q/Jjnx+8Nkh1GtGsq1c+Qi34HF06wXYSRJZAwlf0FvEu9xsJETBb9f2Z4oG
McdsS1t9ZgQvNuYESxwEWLNTjQqsHsWMZlujZewwHO8YBbH1RNA5IbL8ky9E
hMEh488HxmEvXDNeuHoUa0f30drdJmB6L3LgTPAYFmtNqPNkE5gSFvR41omg
wk0rNkmfBNNUSTdOaQLHNlR/1HD5iubbRjtC2RPI3304+6nkK+glL74x9Z2E
eGTposGUKfh4sE67yidRttdROdl+GvpVhUdleV9x1ikmizM4jS9FI6r6blMw
+uTckRsjxkU79vYFo1PYvDE6mWEhQXaGUHY2dRoHDN/OKrZKUBdt5RdsI4a4
Mb4/lCWFz4/TTu1DYqSqHAz3WDEDisnrrIiTYHFP2R0l3gyi7JdpHDWTQvUP
lqdN2CyODQxVZbVLofDoYHG/tgyBWs+X7I6awcnbxfHadTJ0KOhOR66aRe2a
WHX68TmYJImOR7TNgu58cu35hfOIKOlIEoTL0L3uXWtUzTxsk6039xnPoSQT
K/gH5dBVvR/n/HwOvsXWdANKjvolGRF/+c/jXEwOqzuPwuCImsCWLkehwCBt
oSvBYvdoxV8fyxGbEePX8xOBSHm0wb5MDn+PMdOiPQSNFXuv6FTIsaympsTN
i+C8sYkep1aOuASfhiuHCSbEf6+deiFHsPWtyQVRBE3pxCusVw7jaB0ntfsE
scIzRSHfUqA2/a7Z/pDAP6v/1DYtCh/HBlru5xPA09lGU5tColeprwObQFLL
4BXoUSBmHqdiaggCrlV8HDGm0N2ckKncSmC7SaLCtKFQcUF6pPU9geGYb6PN
VgrJWw6tzu0gkOU8T9AABZd7P3BsewjYtBtLH9lTqIp885I1TPBdr6W5wJ1C
yjqrhD2jBPPX08TlHhTC+tM9jcYJ2p2Uqy/uo7DK9ZfeZ9MEVx+37FrpQ0FF
se1uopSAGbSZJvWl0Fe2heknI3BYduddgx+FGmbuenM5gXGzRkrKEQo3l9PE
hBDIY8J8AgMp/AsJjobm
      "]]}}},
  AspectRatio->NCache[GoldenRatio^(-1), 0.6180339887498948],
  Axes->True,
  AxesOrigin->{0, 0.30000000000000004`},
  PlotRange->{{0, 2}, {0.23978953389395996`, 1.8999999614509433`}},
  PlotRangeClipping->True,
  PlotRangePadding->{
    Scaled[0.02], 
    Scaled[0.02]}]], "Output",
 CellChangeTimes->{{3.5420626575119767`*^9, 3.5420626902168474`*^9}, 
   3.5420627332253075`*^9}],

Cell[BoxData[
 GraphicsBox[{{{}, {}, 
    {Hue[0.67, 0.6, 0.6], LineBox[CompressedData["
1:eJwVlnk01dsbxkUDiSKUBiFSXdPtFindJ8pMg+o2KClSyOzKUDcqQ0UpQhlS
JJRI5jmOIZzv95zjcMzzHCEZMpzzO78/9trrs9Zee+/3effzrC1z1dH0Gi8P
D88id/x/Nrw2RC8dvvb3Ku8OOQ5nHMuPbHLqlDyKTyqKb0eo4/jrdWT0F8nT
0NGKslSMHocRlZURI2mFAau7Eeka4zhrNVv0XNIN+X9S/kz1+IF2lYAjwZIP
MNl6X2/FyjHEiR/3fyQZhjMaypY1F0bgTY2g/JMfhqiC40KBe0bwj18X73az
F1hh/CEqaPUI1kw73y2IDkeQen3yjYJheDDDPEa3vUTfE/ZzC+lhnAxtsT22
IxaD9+SXJmcG4cv/ReGhZAKeBlhSyPp+7NZ7FpjhlAADf8m1Y+n9YPg5DrdW
JeDg7ZXfjj3phxyf4gdl93e4Ns3MbzfoR+VSgjKTkQiZRK31Wyl9WDMVvm9b
UDI+r1yaKqH0IuvPf8P1e5NxvUHNdvxdL8ydTs06H0gBR93i+sWAXqSNrc2j
DKWgNiH2zJhhL0yHAjVtdT7iroFoWSezB5HtXkey2J+gHHBWNG2qG1pbzid0
nElDRZn9/YCmboxcUF/Bn5qGX1WJOhFF3ZAa9bRMVUqHwNoMXbPAbjjaqMnz
tKUjpVFKyk66G6JWaUnv9mdgv+ZaNbMLXTh3/k3axGQm9nTsNtIfaMd46+nV
bzdloetKoP7Bknb4m/NfO3UkC4+MbunejmzHF0vHTdlhWXB1uPLPgFE7hB0O
+XmrZ6O6zMrZJLsNFfeaL6y8k4MlDyNzTmQrLq4Izsp5l4Mvjhs2vnJvxc+A
w+tsiBwUxyw6e59uhXTw+4rabbkIvLxJb51IK25H/Kv6rCwXV2quW7kHt2DP
R5GVW/jzkaRvs67xeTO+KVdYUFXzEfJtF+O9WzMsPnsU/Hc+H2oCcv55/zQj
OLvTqTslH3xtoqpRm5sxVJrammhSAH6JjhjjpCbENhh8/jO0ELfDU1xEqSwI
cnwv6kmV4OhBjkOMViMibc6aK+qWoMZ5jYnCH42QYypaiDiUgLHh7dNesUb8
ncyybC0qgQqZKfBzqAF5yeFZOcqlENAVumwe2oCxU6OFRkQp+uSNfPZMMrFX
gHXo755SVO9ImytuZ8Kr+Gux6kwpTtRe3OlZw8SqXRGl4lJfUbhv6Nm/CUzI
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
EdsEpzkcDjROC120tmbjf09rHTg=
      "]]}}, {{}, {}, 
    {Hue[0.67, 0.6, 0.6], LineBox[CompressedData["
1:eJwVxXk41HkAB2DnollpJJ5JtMhWqs0SpetTCDnWk/TISnnK1bSKsqE9alpK
SiRJudPpnozcTctkS6UcRQgxMQaDmBmG+X1394/3eY0On/AIUFJQUHD7z/87
Bwianw0HbKdddxGm3qrkqtgtDe1l2EMnoLIzIKySa5mVml7K8ITBxpWvLHZX
cl3etD/OYPjDvEup4PVMBdfLX1qbxAjHPpOqEIX9FdxP6y/axTOikVm6ajJI
t5ybvcT9QhwjGRZtqjPW1zlclnrpykuMuyg1O0fLYxRz93vnFE9McqCu+PlB
bmYSl0ZYBxwNueDdyKGVa6fAdI9IUH+ZBz/6hdDuuSJENNkgdfolPJU7+Snu
VdDj0HsUFd/CeciebrWhDk/67V6/3dqCrJmqVy0F/6COmaHvPdqGcvXjzC+0
NxB/v02rMKQdV599eOig1gyl2fxF+qadSE/alcd52gpr4vdkb1E33qXK3Mcc
P+B19IamBrNeBBo2BfnxOrA8cWT2kagPHZWh8WOnuzAi7e15b96P0EveXrvm
PuGusLpx4dUBhJXH3uz6uQ8LDR6M8/l8dA2fqmGzP+PK0bLA7BWD8LY+bxky
2Q/Jjnx+8Nkh1GtGsq1c+Qi34HF06wXYSRJZAwlf0FvEu9xsJETBb9f2Z4oG
McdsS1t9ZgQvNuYESxwEWLNTjQqsHsWMZlujZewwHO8YBbH1RNA5IbL8ky9E
hMEh488HxmEvXDNeuHoUa0f30drdJmB6L3LgTPAYFmtNqPNkE5gSFvR41omg
wk0rNkmfBNNUSTdOaQLHNlR/1HD5iubbRjtC2RPI3304+6nkK+glL74x9Z2E
eGTposGUKfh4sE67yidRttdROdl+GvpVhUdleV9x1ikmizM4jS9FI6r6blMw
+uTckRsjxkU79vYFo1PYvDE6mWEhQXaGUHY2dRoHDN/OKrZKUBdt5RdsI4a4
Mb4/lCWFz4/TTu1DYqSqHAz3WDEDisnrrIiTYHFP2R0l3gyi7JdpHDWTQvUP
lqdN2CyODQxVZbVLofDoYHG/tgyBWs+X7I6awcnbxfHadTJ0KOhOR66aRe2a
WHX68TmYJImOR7TNgu58cu35hfOIKOlIEoTL0L3uXWtUzTxsk6039xnPoSQT
K/gH5dBVvR/n/HwOvsXWdANKjvolGRF/+c/jXEwOqzuPwuCImsCWLkehwCBt
oSvBYvdoxV8fyxGbEePX8xOBSHm0wb5MDn+PMdOiPQSNFXuv6FTIsaympsTN
i+C8sYkep1aOuASfhiuHCSbEf6+deiFHsPWtyQVRBE3pxCusVw7jaB0ntfsE
scIzRSHfUqA2/a7Z/pDAP6v/1DYtCh/HBlru5xPA09lGU5tColeprwObQFLL
4BXoUSBmHqdiaggCrlV8HDGm0N2ckKncSmC7SaLCtKFQcUF6pPU9geGYb6PN
VgrJWw6tzu0gkOU8T9AABZd7P3BsewjYtBtLH9lTqIp885I1TPBdr6W5wJ1C
yjqrhD2jBPPX08TlHhTC+tM9jcYJ2p2Uqy/uo7DK9ZfeZ9MEVx+37FrpQ0FF
se1uopSAGbSZJvWl0Fe2heknI3BYduddgx+FGmbuenM5gXGzRkrKEQo3l9PE
hBDIY8J8AgMp/AsJjobm
      "]]}}, 
   StyleBox[InsetBox[
     StyleBox[Cell[TextData[Cell[BoxData[
       FormBox[
        RowBox[{
         RowBox[{"u", "(", "y", ")"}], "=", 
         RowBox[{
          RowBox[{
           RowBox[{"(", 
            RowBox[{"\[Epsilon]", "+", "1"}], ")"}], " ", 
           SuperscriptBox["\[ExponentialE]", 
            RowBox[{"-", 
             FractionBox["y", "\[Epsilon]"]}]]}], "+", "y", "-", 
          "\[Epsilon]"}]}], TraditionalForm]]]],
       GeneratedCell->False,
       CellAutoOverwrite->False,
       CellBaseline->Baseline,
       TextAlignment->Left],
      FontSlant->"Italic",
      Background->GrayLevel[1.]], {0.08335763482309033, 1.778033482441677}, {
     Left, Baseline}, {1.0328563685184207`, 0.37665965562210435`}, {{1., 
     0.}, {0., 1.}},
     Alignment->{Left, Top}],
    FontSize->22], 
   StyleBox[InsetBox[
     StyleBox[Cell["with \[Epsilon] = 0.1",
       GeneratedCell->False,
       CellAutoOverwrite->False,
       CellBaseline->Baseline,
       TextAlignment->Left],
      FontSlant->"Italic",
      Background->GrayLevel[1.]], {0.5997858190823002, 1.2693602130371864`}, {
     Left, Baseline}, {0.4835484569477283, 0.2992302371572468}, {{1., 0.}, {
     0., 1.}},
     Alignment->{Left, Top}],
    FontSize->22], 
   {Hue[0.67, 0.6, 0.6], Dashing[{Small, Small}], 
    LineBox[{{0.4167881784024162, 1.2416143983423955`}, {0.3870175941542621, 
     0.039295761568144405`}}]}, 
   {Hue[0.67, 0.6, 0.6], Dashing[{Small, Small}], Arrowheads[
    0.055462571295791074`], EdgeForm[{Hue[0.6699931334401464, 0.6, 0.6], 
    Opacity[1.], AbsoluteThickness[1], Dashing[{Small, Small}]}], FaceForm[
    Opacity[0.34]], 
    ArrowBox[{{0.6370905018387564, 0.23351646443167784`}, {0.2143482055149683,
      0.7606869436326953}}]}, 
   StyleBox[InsetBox[
     StyleBox[Cell["Inner solution",
       GeneratedCell->False,
       CellAutoOverwrite->False,
       CellBaseline->Baseline,
       TextAlignment->Left],
      FontSlant->"Italic",
      Background->GrayLevel[1.]], {0.7234251961584042, 0.3792845759478909}, {
     Left, Top}, {0.5535522158341569, 1.3388381433922092`}, {{1., 0.}, {0., 
     1.}},
     Alignment->{Left, Top}],
    FontSize->22], 
   StyleBox[InsetBox[
     StyleBox[Cell["Outer solution",
       GeneratedCell->False,
       CellAutoOverwrite->False,
       CellBaseline->Baseline,
       TextAlignment->Left],
      FontSlant->"Italic",
      Background->GrayLevel[
       1.]], {1.3634927574937163`, 1.0658909052753902`}, {
     Left, Baseline}, {0.637485246624992, 0.30005091210574425`}, {{1., 0.}, {
     0., 1.}},
     Alignment->{Left, Top}],
    FontSize->22], 
   {Hue[0.67, 0.6, 0.6], Thickness[0.004216965034285823], 
    LineBox[CompressedData["
1:eJx11H1Ik0EcB/CtUpc6W2opQoWWYhNnaq+gHkWSzOmm1DJdb4ov1XC+oMYa
lSJppqKYpTZyf2RqzRc033PzZZrvPi6dL2S+zVBE3ZaSRmX2x3MHPnTwcHw4
7p77fe8462CBf+guEokUtP3967fbiew7pjKyvEvfQ6wBEm4NlSEqByFL2TpW
rxZaQzPCGFotKNncSmEpKgkWnU4uo1noAMXLdm8Ss4pgCu93ms5NB269YKbV
YdXQ9WqB0TK3huDnifERw8E6YOmam24zWQsdldhIDQiph8YGpzIzFhug7Q/r
0doFTdCpfHr2xvpHgq2LVz1rU3VgupFtyhDJoCXJjd3O5BboPgefNJYC+Zdy
ihme0gptL4wxSmK2wfUDrPX6xNR2gvH6krteptdhyB8EdB9ljgLmNX2wmbrM
7YD50mTsAQOrToLx83ELnc20mUTmG8ex3SWfoPOqDWgBIV3QXYEFWIxdN/Qa
2TE7YxH5WKncr0TaA83h+Ju2C3qhH/9QKydd+uB+pK8TcjbWicbr+eJpeNms
oR/WixvPh7IsNmeIBgjG88Vd1hdxNK8c+ZxuhiQcRu60CPoa9PP/4zvn71wf
///Z504jXmCQYHz/VYdmepzJGMF4vcxouoM8GIN5TCtin7EURON53rdsXhq3
HYI24euzwlOQ38jZ0rUFZDezfOMkphJaGTbL3ydFvtvo0C+mfoYmmcQ50gXI
ebdlGXUYMqPGYOWiyzB0J8XPV5mDzOMVlN9cR16rmDNZ5o5Ap+12FAjrkW2u
xg8aWKmg69/JnXIfED3aYXngXtH2/fpDybKZVAFvSeGZp4+04Jufv6bCY5Rg
mdAusPiaFjwsesVxlxDtcqVM1OGqBeab6soe8hh463SycI6KbGXY1Epe0AAp
i7E/IIToDPV59ZE2DbggSYieV4wB/D3EHZfPPs6L14CJ7y1DMXbjYCFW5S3k
IPN8r0fm0TUg6pKhCyl1HGD26qzaPchP9FVhpc2r0JFNc+/no5G5UVqNtR2y
h+3WqRsTK4Txv/BG6sI=
     "]]}, InsetBox[
    StyleBox[Cell["",
      GeneratedCell->False,
      CellAutoOverwrite->False,
      CellBaseline->Baseline,
      TextAlignment->Left],
     FontSize->14,
     FontSlant->"Italic",
     Background->GrayLevel[
      1.]], {0.13694468646976776`, 1.3156032375285027`}, {Left, Baseline},
    Alignment->{Left, Top}], 
   StyleBox[InsetBox[
     StyleBox[
      TagBox[
       RowBox[{"O", "(", "\[Epsilon]", ")"}],
       HoldForm],
      FontSlant->"Italic",
      Background->GrayLevel[1.]], {0.1410546523837029, 1.3414552443368097`}, {
     Left, Baseline}, {0.28579760878227956`, 0.28629641437191894`}, {{1., 
     0.}, {0., 1.}},
     Alignment->{Left, Top}],
    FontSize->22]},
  AspectRatio->NCache[GoldenRatio^(-1), 0.6180339887498948],
  Axes->True,
  AxesOrigin->{0, 0},
  ImagePadding->{{9.002041, 1.1}, {16., 6.}},
  ImageSize->{517., Automatic},
  PlotRange->{{-0.04166666666666667, 2.0416666666666665`}, {0., 2.}},
  PlotRangeClipping->True,
  PlotRangePadding->Automatic]], "Input",
 CellChangeTimes->{{3.54206156625356*^9, 3.542061627802081*^9}, {
  3.5420616936558475`*^9, 3.5420616936558475`*^9}, {3.542062222511096*^9, 
  3.5420623882405753`*^9}, {3.5420624907044363`*^9, 3.542062514796814*^9}, {
  3.5420977017952213`*^9, 3.54209778044972*^9}}],

Cell[BoxData[""], "Input",
 CellChangeTimes->{{3.542061639594755*^9, 3.5420616396347575`*^9}}]
},
WindowSize->{707, 637},
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
Cell[1257, 32, 3119, 79, 292, "Input"],
Cell[4379, 113, 503, 14, 43, "Output"],
Cell[4885, 129, 582, 17, 60, "Output"],
Cell[5470, 148, 317, 8, 30, "Output"],
Cell[5790, 158, 396, 11, 33, "Output"]
}, Open  ]],
Cell[CellGroupData[{
Cell[6223, 174, 3864, 86, 379, "Input"],
Cell[10090, 262, 6417, 111, 235, "Output"]
}, Open  ]],
Cell[16522, 376, 534, 16, 61, "Input"],
Cell[17059, 394, 291, 8, 30, "Output"],
Cell[17353, 404, 330, 9, 33, "Output"],
Cell[17686, 415, 4683, 82, 253, "Output"],
Cell[22372, 499, 7443, 129, 235, "Output"],
Cell[29818, 630, 12123, 242, 350, "Input"],
Cell[41944, 874, 94, 1, 31, "Input"]
}
]
*)

(* End of internal cache information *)

(* NotebookSignature UuDzeFUrBCiB3A1zZ0G6RzOH *)
