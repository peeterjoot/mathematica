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
NotebookDataLength[     27748,        532]
NotebookOptionsPosition[     27539,        519]
NotebookOutlinePosition[     27934,        535]
CellTagsIndexPosition[     27891,        532]
WindowFrame->Normal*)

(* Beginning of Notebook Content *)
Notebook[{
Cell[BoxData[{
 RowBox[{"<<", "peeters`"}], "\[IndentingNewLine]", 
 RowBox[{"peeters`setGitDir", "[", 
  "\"\<../project/figures/phy454-continuumechanics\>\"", "]"}]}], "Input",Expr\
essionUUID->"520f931f-fb8a-4886-bae5-fc36767b753d"],

Cell[BoxData[{
 RowBox[{"<<", "MaTeX`"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{"SetOptions", "[", 
   RowBox[{"MaTeX", ",", 
    RowBox[{"\"\<Preamble\>\"", "\[Rule]", 
     RowBox[{"{", 
      RowBox[{
      "\"\<\\\\usepackage{xcolor,txfonts}\>\"", ",", 
       "\"\<\\\\definecolor{BlueDarker}{HTML}{0000AA}\>\"", ",", 
       "\"\<\\\\definecolor{RedDarker}{HTML}{AA0000}\>\"", ",", 
       "\"\<\\\\definecolor{PurpleDarker}{HTML}{550055}\>\"", ",", 
       "\"\<\\\\definecolor{OrangeDarker}{HTML}{AA5500}\>\"", ",", 
       "\"\<\\\\definecolor{GreenDarker}{HTML}{00AA00}\>\""}], "}"}]}], ",", 
    "\[IndentingNewLine]", 
    RowBox[{"\"\<FontSize\>\"", " ", "\[Rule]", " ", "18"}]}], "]"}], 
  ";"}]}], "Input",ExpressionUUID->"f9eee6c2-e2d0-45dc-acac-31db379df851"],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"p", " ", "=", " ", 
  RowBox[{"Plot", "[", 
   RowBox[{
    RowBox[{"Erf", "[", "\[Eta]", "]"}], ",", 
    RowBox[{"{", 
     RowBox[{"\[Eta]", ",", 
      RowBox[{"-", "5"}], ",", "5"}], "}"}], ",", " ", "\[IndentingNewLine]", 
    RowBox[{"PlotStyle", "\[Rule]", " ", 
     RowBox[{"{", 
      RowBox[{"Thick", ",", " ", "Black"}], "}"}]}], ",", 
    "\[IndentingNewLine]", 
    RowBox[{"AxesLabel", "\[Rule]", 
     RowBox[{"{", 
      RowBox[{
       RowBox[{"MaTeX", "[", "\"\<\\\\eta\>\"", "]"}], ",", 
       RowBox[{"MaTeX", "[", "\"\<\\\\textrm{erf}(\\\\eta)\>\"", "]"}]}], 
      "}"}]}]}], "]"}]}]], "Input",
 CellChangeTimes->{{3.5409250143748193`*^9, 3.5409250474367104`*^9}, {
  3.8882350993899393`*^9, 3.888235190986229*^9}, {3.8882352686723537`*^9, 
  3.8882352691320877`*^9}},
 CellLabel->
  "In[1076]:=",ExpressionUUID->"76810484-eb37-44b7-bb2d-47cd020062f6"],

Cell[BoxData[
 GraphicsBox[{{{}, {}, 
    TagBox[
     {GrayLevel[0], Thickness[Large], Opacity[1.], LineBox[CompressedData["
1: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
mGXQCnxvFZSwB1uBtfj5zHSfVrA7vOii8do2kP8jN4h7vBUUVdpsl/FsA3fE
bPa+KWsD3ntBboXKP8Cdl/qh/U476OMvd2IHtwPzRL236q/ageuuL29l3rWD
9Md/nz/MaQdt0ys/6OW2Axt72oOtI+2Ap1ZbTK+rHRQImZ25c6oDpEV9jtXc
3gF8bDlFpLZ3Ao1Dt+3YDR2AzjK4ZT3UBeJW3VC/wtcFjsuaITXebqC9aqTm
vngXSNhts8SQ7gYaH76l3N3SBQ57uN9IO9ENdov3iWsbd4HwrigP7oJu0FjK
LRD/vAvI5I1cjn3eA5p5Q4wv4ef2uoVa9+3rA1GGjdO/N/SA8OAXr7+e6QOG
Rzd4q2zrAT1J71pDvPrARFFQ5Q2dHuDf/vmUVnofkC24OF1t3QOqDTrM/MX7
wT3BLco+L3uAzcZthkqT/eDpXar8/PJecKe1do9zzCBQMV+2zqu3FzRnH7zo
njsIpqFep+NEL9AMReFeNYNAOPr6qcOcfWB4b0KvH30IdCU+CK4X6QOnEm88
irkwBI6philI6vUBTTfpxuqtbFC1+c/ivag+MEPdni1mPQzSWzjT+nX7Qazz
2K+XjsPgapqjcrFBPzBqef9vvecweCjM9S/crB+kZEmy5MKGge9bNWEux35g
e4F1WrVwGNBdrupIhPWD6ooW7kMKIyBbQS3Nown//nMfA6/REZCjenCJeXYA
lAr5dC/jGAVSvbV6ny4OgK6H97xe840CjQq3lcfcBsCa63eTvsuNAv3Ejf4m
9weAr/ltHubpUXCRpbYUGTcALNd6oSelo0DRuOWPcs8A8Hx8w1S+fhQ8effO
pYk9AML5bgzldI2Ca2Vniq9NDYCfC55rmjnHgF934/B92iDQaPZwl9YYA7S/
6YZDUoNA4NUV5Y9vxoDMBuuQ+ZODYKPwlaLdqWNAXzlk/ov1INB95HqqmhgD
Oh3BZpfPD4LrN138pxrGgIBNBPzgNgh6Tl/u0V4+DkyCiIbbQYMASVyMKrkx
Dk5NWV2KyxsEl6JtBDpMJgBvhfati6JDINDjWWTgmQlwqGVhREt8CHwwKJPb
7jQBuvao7+KQHgJDi+q7Ah9MgJbAgix7xSHgcJLprJE7AdaJO+f8AEPAfkVq
lf/6SaD06fKpTOsh4NffdVpdaRKYJRW19toOgYR8sYE2zUlAFYhUXYG/e6/T
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
eKA0s8eimxw//2bPGxU88FPzRANp69TPImW1PJAh/da4B7typtrwUjsPLHEV
0unFTvWll3yc54H6osa0fmynWIdMtc28ULeSIT+E3Vwu9phfjRf2Xb3nT/rQ
TIlL1w5eGHNmcJC0gr78lvADvDCo70MCG7tjpDNx4iwvNB4X5BvBPib22O+X
Ay+0dBWyIp2no3P+rQsv7OQ1SCP98km0jPEtXmh+6fWxUWxT7dOv0yN5YdeT
JzfGsAtt+b39Y3hhvIvDd9KqQV9O2STwwiWhPN5xbIF2sTUrsnjhXW+eINIl
vnXhLlW8sGem5eEE9s7qo/4qDAbcRXzRnSLzcYHjAmM5A95TbHcnLSabsv+f
MANWi4zHk5724KeHbGBAUW42zzQ5P+Klt0YgA3LateWQlth/zbJYjwFtC+c6
SD9ylgevDzPgldWb+GewHQruzxuYM6D1YJsF6Q0XdK6mXGVAXW3pMdJhYWPG
vl4M+OOf06pZMp+/Rqta3mPA9zlTGqSbBThHl4UyoL/7d0/STzO/OFz6wIBy
fT+mSdNaHQ7qZTBgnLvJqjnsK7xrFMRzGdBPVHsr6WPm17rLivH7IqUukGZR
1K2VOvF4KtOqSGdf5TLs6mfA8szJftK2g+V7Xo4yYNLsR655bFRnt4GfgwmN
uiO3kHZJjugZFGVCS+Wg+6QlNpyrf7ueCceO/XtO+mfE1hILOSZMmstLJi3j
8zPx1zYmFPXYWku6wXzR8b0BEx74IE72E4H7lSWnz5oy4eGudWS/EVDd98Rg
7SkmvB79BZAO3KqsEnCBCYvK206T3sWwnnDwYcL533PPSQ/dVOqSDmBCNX0l
st8JREzM1v4NZcKgkGVZpMdbQ7P0XzNh4aXOStJxnwo8N+UyYf4gi+ynAsaK
IQ4d+Ux4z79DgDQl5pRFZDETdgxcXUPaPHBqJ+sPE/aW/1EhveysPGVghAlt
b8eQ/Vwgt2FiNGaaCX8We5P9XsDOIL/95BITdpdKO5HO1zpZUMpiwauTBbdJ
uwkG+CbKsqCkaiDZTwakfE94nFFiwbCKfLLfDFQsbLAX28aCJY5FGaQVer8e
fLibBd3bdApINxPD/BcsWFAWbSL72cDDbV+WJG1YcF36Qg9pjcQHww32LNjh
FcsmHRIuWXnAnQWb19+ZJ733otFjhVAWPGzkTfbTAdeQzxyXnrFg1Iei1aTf
fJJ0SHvFgj3FI+tIUygju3cksWBk8rAcaRQeMHyoAPt2vBZp9ufxkyGlLAh1
hSHpdW0ni2p/s2CdsYMO6RsbFV6ebsbjsyvTJ62JCg9enmLBUXVvc9LnOxU/
ZSyw4OYDapaknzIeS85y8UGze3/OkJ4yOjNzW4APNqs12ZNO712KDZPng3L6
nO6k2/nPCdZv5oM9nmvIfkYgqFp2Y60aH/ReI0P2O4LLXpFGsbv5YO4m2l3S
SkLbKVkn+WDTPa5HpC00oi7OW/FBil5kMGl/C3o9tOODNrtkwkj3v6tJLnbF
8UgvI/sxQdwOZ4vGAD64JKIdTbrOqv6HeBgfFJSxe0Oafh+q2kTwweoin1jS
tr/5mYOx+PmGVwmkpWwTsxYJPrjaZl8q6dspHo/u/+SDFvmNGaRbZ/VsBer5
oKiRbjbpl486hCRHcTzUOIL0fH1qX8Iing+naLI/FZyUvpW3lckP18RfI/tX
gUj22kt7pflhkkVJCekO/i0//m7hh0GF7mT/K0ix0VnvCvih71sq2R8L9AQu
VEWb8cODvHnV/82frdcmTTt++Pz2aC3p5s/B935f4Yfh5jz1pN3OZalzBPPD
Zpuuv6T5hVp6lZL44athm1bSsV+pkRZF/DBswL+d9E77TYf9//HDnVdtyf5f
ULPSkOPzAj8sGZ3uIe2Q55HaK7IMeq48SPYPA+6LUTYiqstgxrT1IOlIkaJV
ekeWwUIZXbLfGKh+H/xxxX4Z9Hk3M0z6jJiWYlXUMnjPvX2MdIizb7Dyn2Uw
RASS/cygrIX3s+hRAagv9WmO9DGfI4ovMgXg9jWyZD80+Dp8Pk9CdDk0e6hK
9ksDhZN3jd/cWA4jBRL+M8f6ornnvcvhqcnm/1zbxRsdaiwIHUPG/nPlm6mR
YzmCUFrsv35tUGbduUtQXAj2iv3Xzw1k3q4WffBICELz//q9wf/6weH/+sHB
/wFX/T/E
       "]]},
     Annotation[#, "Charting`Private`Tag$526091#1"]& ]}, {}},
  AspectRatio->NCache[GoldenRatio^(-1), 0.6180339887498948],
  Axes->{True, True},
  AxesLabel->{
    FormBox[
     GraphicsBox[{
       Thickness[0.09199632014719411], 
       StyleBox[{
         FilledCurveBox[{{{1, 4, 3}, {1, 3, 3}, {1, 3, 3}, {1, 3, 3}, {1, 3, 
          3}, {1, 3, 3}, {1, 3, 3}, {1, 3, 3}, {1, 3, 3}, {0, 1, 0}, {1, 3, 
          3}, {0, 1, 0}, {1, 3, 3}, {0, 1, 0}, {1, 3, 3}, {1, 3, 3}, {1, 3, 
          3}, {0, 1, 0}, {1, 3, 3}, {0, 1, 0}, {0, 1, 0}, {1, 3, 3}, {0, 1, 
          0}, {1, 3, 3}}}, CompressedData["
1:eJxTTMoPSmVmYGBgBGJrIGYC4j35NW9nsio71P+2Kjj3QtsBzmc52m94XRfK
V3Jo4fVfP+WonoNw5aSSsywKcH6rArvqmRJJOF9+14J9qeeEHPQV5b/kXNN2
eNOW2220G8F/jcb/DwL3hRzOXw17o/8bwfe/JV2TWKQD54PdE67r8GXfx63p
YkJw+3gc+bxmaHLB+elpQKDGAOefAQGfH/Zg86t14Hywf1dow/l/vpU+mFOo
7RDwxPOS6eQf9mD3hWk7ZE9NKLQo/gnnL7m1/LEhM4MDjC+zUWw+04M/9lv0
8hYz1uhCzWN3gPFnggEnnD8DzOdyWKv6pHkeL4IP9me8DpwPdl8GzHwOh5pP
GwKyf2lC+WwOpw47rc2U04DyGSD2zlFymH9i8pJstb/2xiAwWQFi7v/v9uBw
2yYHdd83e4i4LCQ8p3E4wPgw+0RA8bxEDsrndFC+9iiYYY6Cw4vax9nndXjg
9kHcLQRxn5WWg/onlZezVgo5gMNzoxY0fYg7NIDiT1zX4UD3viaTx9JwPjh9
SMvD+eWHt7nO5FVwqAX7XwfOl1/+wkMvXhvO9784MebfYS2HvyD798vDw+eB
a7zjrEB5B+l5cZqnDTQd1grp8KXbSTjsDLaK+O8u6VB1/8ctY21xhxjVCJlz
NaIOQW8vf5yRKOZwFuQfHgGIuI2Yw36QO5P5HLaD9LXLYPBv8N4WS/2G4DOA
wAIBOB+UDNPcRCDh+00WEg4mkg7ua44uZ5ih5OB1gt12dqimw8pvLyvOPFCC
picteP4Dh58hUn6E5k8A45e12Q==
          "]]}, {
         Thickness[0.09199632014719411]}, StripOnInput -> False]}, {
      ImageSize -> {10.869230386052305`, 23.511820672478205`}, 
       BaselinePosition -> Scaled[0.3169518292168768], 
       ImageSize -> {11., 24.}, 
       PlotRange -> {{0., 10.870000000000001`}, {0., 23.51}}, AspectRatio -> 
       Automatic}], TraditionalForm], 
    FormBox[
     GraphicsBox[{
       Thickness[0.02340823970037453], 
       StyleBox[{
         FilledCurveBox[{{{1, 4, 3}, {1, 3, 3}, {1, 3, 3}, {0, 1, 0}, {1, 3, 
           3}, {1, 3, 3}, {1, 3, 3}, {1, 3, 3}, {1, 3, 3}, {1, 3, 3}, {0, 1, 
           0}}, {{1, 4, 3}, {1, 3, 3}, {0, 1, 0}}}, {CompressedData["
1:eJxTTMoPSmViYGCQA2IQzR8bcN9ouoLDiyztb9Pvqjj8/Q8E+2Ud9ubXvJ2p
quRwBgTWSDkoX3sUzCCj6OCx5uhyBgkxOF+4clLJWRYhOH9/974mk8e8cP0x
qhEy5/ZwOjxJXHjNRF/FgceRz2uGJrvDjAn8VWbdqlA+m8OMmUCwU81BZqPY
fKYHrA5zFinv/PNcA2JujQKc323juSvNSMHh/NWwN/rW2g7yuxbsS10n76Cv
tVL4gouOgwjIPU9kHeJDgtQXZOo6rBHS4UvfJ+1gYgwEm/UcWhXYVc+USED4
xfoOUWD3icD56p9UXs7SFITzwe6aye3Awtkln3xOD+7eBpaj/YbTdaHu/WcP
Crb/8joOC05MXpKt9t3e+wS77eypmnC+x/5aWYvlanC+OygcdyjC/Qu211MW
ar8wnN8Ocu8XSTj/gWu846xAeYeV315WnDmg4AB2nqYiJP7mqjigxycAtSrF
xg==
           "], {{2.7703100000000003`, 13.024999999999999`}, {
           2.9671900000000004`, 14.420299999999996`}, {3.5749999999999993`, 
           15.081299999999997`}, {4.665629999999999, 15.081299999999997`}, {
           5.756250000000001, 15.081299999999997`}, {6.185939999999999, 
           14.581299999999997`}, {6.417189999999998, 13.024999999999999`}, {
           2.7703100000000003`, 13.024999999999999`}}}], 
         FilledCurveBox[{{{1, 4, 3}, {1, 3, 3}, {0, 1, 0}, {1, 3, 3}, {0, 1, 
          0}, {0, 1, 0}, {0, 1, 0}, {1, 3, 3}, {0, 1, 0}, {1, 3, 3}, {1, 3, 
          3}, {1, 3, 3}, {1, 3, 3}, {1, 3, 3}, {1, 3, 3}, {0, 1, 0}, {0, 1, 
          0}, {1, 3, 3}, {0, 1, 0}}}, CompressedData["
1:eJxTTMoPSmVmYGBgBGItIGYC4v8gYK/k4H9Luibxk44DmL9fyWGt6pPmeby6
Dp02nrvShJQdGliO9huK6zqs/Pay4kwDgt/C679+SqoKnJ8Se8eNeYeKg77W
SuELLTpw/p9vpQ/mfNSC88HmMCjB+fyxAfeNzBUg/AoVB9ldC/alvpN3KD+8
zXWmrpKDiTEQCCP4YHf+l3X48fb1AcvDWhh8mPqM/A+tJ0M0HNQ/qbyc5Snv
sMOh6dHxHeoOa4V0+NL1FOB89zVHlzNYKMH5/hcnxvxz1oLz639bFZzL0HaQ
mHqFM8NJ0yEAFF5Gug4zZgKBpRacLzEvTvN0AYIPcw84PFh0HeYsUt75R13b
oRZk3godh5pPGwKyd0H5GjoOMstfeOjJ60DjQ9vB5wS77eypCD44HAt14fzz
V8Pe6P/WhcRXrw6cz8LZJZ/cpwvnb9DLW8y4Rw9in5UuJHyK9SHuY9ZB5Tdr
wflg/1VqOjyIEN9+cYEePDx0FeW/5IjpwPlPQPIJQPUT+KvMutXh+sHpY6mq
Q3xIkPqClXoOm0DuiFGByBvrOcDSHyS96Dqgp0cAzIUosw==
          "]], 
         FilledCurveBox[{{{0, 2, 0}, {0, 1, 0}, {1, 3, 3}, {1, 3, 3}, {1, 3, 
          3}, {1, 3, 3}, {1, 3, 3}, {1, 3, 3}, {1, 3, 3}, {0, 1, 0}, {0, 1, 
          0}, {0, 1, 0}, {0, 1, 0}, {1, 3, 3}, {0, 1, 0}, {0, 1, 0}, {0, 1, 
          0}, {1, 3, 3}, {0, 1, 0}, {0, 1, 0}, {0, 1, 0}}}, CompressedData["
1:eJxTTMoPSmVmYGBgBGINIGYC4jMgkGPikBJ7x41ZQt+B2021lMnKCINfvFX0
9+l5hnA+r//6KakrjByk58Vpnp5g5JCeBgRmxg4lIHV2xqj8eWj8e8YO/CD9
HMYOPV6vWEwMTRwW39/HN6fZyGGL+Y9DKVUmDmB38Rg5/P1W+mDORhOI/fcM
HZ4kLrxm8h/BB7sjwxTOnxBcojJ9vynUXCM4H2zuLAQfbI69scOXnbe6/n41
gbhvm7HDEpA7HhvD+Z83BGTPOm4E59+Wrkk0umrooPqked5ZK2OHCPHtFxni
YO4wcmhkOdpv+NwAHl7iU69wZhwygITbLwOHSJD6fQbw8AX7s0cPg+9/C2jR
J124enS++5qjyxl2KMH5ytceBTPIKDg4ND06PqPbwOFNW263UbS8g+/FiTH/
mvUcTIyBQBjB/w8GshB7Xxhj8GHqwfFbYOSg/knl5SxPeYfTh53WZtoZOcwE
AU4FOB/mHhgf5l5Y+kLnw/wLALrtF2o=
          "]], 
         FilledCurveBox[{{{1, 4, 3}, {1, 3, 3}, {1, 3, 3}, {1, 3, 3}, {0, 1, 
          0}, {1, 3, 3}, {1, 3, 3}, {1, 3, 3}, {1, 3, 3}, {0, 1, 
          0}}}, CompressedData["
1:eJxTTMoPSmVmYGBgBGJpIGYC4jMgoGPlkJ4GBNOMHbjcVEuZblk4qD5pnnd2
l5GD9Lw4zdMBFg6L7+/jm+Ns5NDIcrTfcLm5Q4/XKxaTQkMHialXODOSzBxa
eP3XTzmq77DihYfe/4OmDgG3pGsSjXTg/F9vXx+wZNaA8z3WHF3OUKHs4ND0
6PiMbDMH2V0L9qW+k3c4ddhpbeY/c4eD3fuaTBZLQNyzy8LBxBgERCHuMbB0
CHl7+eOMhcIOTxIXXjORt3L4vO/j1vQwQYfvO291/Q21cohWjZA5VyPk8GlD
QPas5xYOa4R0+NL/iUH46RYOa0H8OkmHDXp5ixnfmDu8acvtNrot5xApvv0i
Q525A9i6y4oQ93mbO8yYwF9l1q0C54PdKacB5/8HgfvakPBpN3dg4eySTz6n
53CwbXn4KSYLiHnNBlDawqF4q+jv0/MMHaIVHD8m81jCwxfmftvKiBWmvsYO
6PEDAMWauvY=
          "]], 
         FilledCurveBox[{{{1, 4, 3}, {1, 3, 3}, {1, 3, 3}, {1, 3, 3}, {1, 3, 
          3}, {1, 3, 3}, {1, 3, 3}, {1, 3, 3}, {1, 3, 3}, {0, 1, 0}, {1, 3, 
          3}, {0, 1, 0}, {1, 3, 3}, {0, 1, 0}, {1, 3, 3}, {1, 3, 3}, {1, 3, 
          3}, {0, 1, 0}, {1, 3, 3}, {0, 1, 0}, {0, 1, 0}, {1, 3, 3}, {0, 1, 
          0}, {1, 3, 3}}}, CompressedData["
1:eJxTTMoPSmVmYGBgBGJrIGYC4inf2OJnbHF0qP9tVXDuhbYDnM9ytN/wui6E
X+Lo0MLrv37KUT2H/bWyFulfHOD8y/nx7OcUEXwON9VSpll2DvqK8l9yrmk7
3JCuSTSaiuBfR+OfOOy0NnOencP5q2Fv9H8j+P63gAqLdOB8sHvCdR026OUt
Zsyxg9tn3/To+AxtWzh/+gT+KrPX1qj8bGuI+dU6cD7Yvyu04fw/30ofzCnU
dugPLlGZnm8NcV+YtsPzLO1v02sR/OtCnxzPP0PwweGxxdphC8hdNboO/0Hg
vA2cP2MmEEjaovItbR3Wqj5pnseL4IP1xevA+WD3ZWg7iE+9wpnBZOtQ82lD
QPYvTQj/kI3DKVC4yGlA5W0czoDAHCWIvh3WDsYgMFnBIT0NBKwdvuz7uDV9
m5zDFJB/va0h9v2XdVB/y7vP4KcNnA+zT6RyUsnZJXIOEiC+kq2D8rVHwQxz
FKDhbwu37zjIHXV2EPdZaTnIzIvTPD3BDhKeG7UcltzfxzfnsL1DAyj+xHUd
PgOVzcp3gPPn2+hcmXUNjf/NwaEW7H8dOF9++QsPvXhtON//4sSYf4e1IP58
7QAPH2Fg9KTddXCQBrnDQNPh685bXX+/2jvsDLaK+O8u6dDj9YrFZKO9Q4xq
hMy5GlGHkq2iv0/X2TucBfmHR8DB5wS77exSe4f93fuaTJL5HNqXh58yanHA
4N/gvS2W+g3BZwCBBQJwPjjY3UQcQM7+v9HBoVWBXfWMiaRDN8j+mY4OXiB7
QjUdsjl/Lkhf7QhNT1rw/AcOP0Ok/AjNnwDN753S
          "]], 
         FilledCurveBox[{{{1, 4, 3}, {1, 3, 3}, {1, 3, 3}, {1, 3, 3}, {0, 1, 
          0}, {1, 3, 3}, {1, 3, 3}, {1, 3, 3}, {1, 3, 3}, {0, 1, 
          0}}}, CompressedData["
1:eJxTTMoPSmVmYGBgBGJpIGYCYuFPjufTbJ0cPu/7uDU9TNCheKvo79PPnBzS
QOCYiEM2588F6drODiFvL3+csVDMgQEEGpwdzoDAG0mHN7z7DGYquTh02nju
ShNSgPCLXBzSQfqXKcP5XifYbWdfVYfza39bFZzL0HGIFN9+kUHOxeFJBJDx
QN9hyje2+Bkhzg6L7+/jm3PYEOKeb04OjxMXXjOZb+RgDAK7nRz8L06M+cds
7NC+PPyUkYsTxL5pxg71IHM1nBxsKyNWmPoaOxzXtJp0+r4TxL06Rg7eIHfI
OjtEKzh+TO4xdABRZ2KdHW5L1yQamRpA7J/i7KCvtVL4AoseRH6ts8N61SfN
83y14fwZM4Fgpzqcb2azN2gao4qDxbWjuSYTnB1A0jM5FR0kpl7hzAhydvgC
Ct9tsg4gbxkLOTu0KrCrnjGRhLjnrBM8fGHuj1aNkDlXI+SAHj8Ax3+60w==

          "]]}, {
         Thickness[0.02340823970037453]}, StripOnInput -> False]}, {
      ImageSize -> {42.71780821917808, 23.511820672478205`}, BaselinePosition -> 
       Scaled[0.3169518292168768], ImageSize -> {43., 24.}, 
       PlotRange -> {{0., 42.720000000000006`}, {0., 23.51}}, AspectRatio -> 
       Automatic}], TraditionalForm]},
  AxesOrigin->{0, 0},
  DisplayFunction->Identity,
  Frame->{{False, False}, {False, False}},
  FrameLabel->{{None, None}, {None, None}},
  FrameTicks->{{Automatic, Automatic}, {Automatic, Automatic}},
  GridLines->{None, None},
  GridLinesStyle->Directive[
    GrayLevel[0.5, 0.4]],
  ImagePadding->All,
  Method->{
   "DefaultBoundaryStyle" -> Automatic, 
    "DefaultGraphicsInteraction" -> {
     "Version" -> 1.2, "TrackMousePosition" -> {True, False}, 
      "Effects" -> {
       "Highlight" -> {"ratio" -> 2}, "HighlightPoint" -> {"ratio" -> 2}, 
        "Droplines" -> {
         "freeformCursorMode" -> True, 
          "placement" -> {"x" -> "All", "y" -> "None"}}}}, "DefaultMeshStyle" -> 
    AbsolutePointSize[6], "ScalingFunctions" -> None, 
    "CoordinatesToolOptions" -> {"DisplayFunction" -> ({
        (Identity[#]& )[
         Part[#, 1]], 
        (Identity[#]& )[
         Part[#, 2]]}& ), "CopiedValueFunction" -> ({
        (Identity[#]& )[
         Part[#, 1]], 
        (Identity[#]& )[
         Part[#, 2]]}& )}},
  PlotRange->{{-5, 5}, {-0.9999999999984626, 0.9999999999984626}},
  PlotRangeClipping->True,
  PlotRangePadding->{{
     Scaled[0.02], 
     Scaled[0.02]}, {
     Scaled[0.05], 
     Scaled[0.05]}},
  Ticks->{Automatic, Automatic}]], "Output",
 CellChangeTimes->{
  3.540924965249009*^9, 3.5409250499788556`*^9, 3.888235119562675*^9, {
   3.888235161661727*^9, 3.8882351918669662`*^9}, 3.8882352748462687`*^9},
 CellLabel->
  "Out[1076]=",ExpressionUUID->"2e12ab49-8268-4c13-a433-3848b95b67a9"]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"peeters`exportForLatex", "[", 
  RowBox[{"\"\<lec17_Error_functionFig2\>\"", ",", "p"}], "]"}]], "Input",
 CellChangeTimes->{3.888235263143368*^9},
 CellLabel->
  "In[1077]:=",ExpressionUUID->"1c459ce9-5650-4ca5-8270-16077b63f712"],

Cell[BoxData[
 RowBox[{"{", 
  RowBox[{"\<\"lec17_Error_functionFig2.eps\"\>", 
   ",", "\<\"lec17_Error_functionFig2pn.png\"\>"}], "}"}]], "Output",
 CellChangeTimes->{3.888235302350251*^9},
 CellLabel->
  "Out[1077]=",ExpressionUUID->"0dbe419a-6dc4-48ed-acaa-cdb597fed920"]
}, Open  ]]
},
WindowSize->{707, 637},
WindowMargins->{{0, Automatic}, {Automatic, 0}},
FrontEndVersion->"12.2 for Mac OS X x86 (64-bit) (December 12, 2020)",
StyleDefinitions->"Default.nb",
ExpressionUUID->"1083ae7e-4530-4f8e-a807-63b11e29ece7"
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
Cell[1235, 30, 235, 4, 52, "Input",ExpressionUUID->"520f931f-fb8a-4886-bae5-fc36767b753d"],
Cell[1473, 36, 782, 16, 199, "Input",ExpressionUUID->"f9eee6c2-e2d0-45dc-acac-31db379df851"],
Cell[CellGroupData[{
Cell[2280, 56, 901, 22, 73, "Input",ExpressionUUID->"76810484-eb37-44b7-bb2d-47cd020062f6"],
Cell[3184, 80, 23769, 418, 258, "Output",ExpressionUUID->"2e12ab49-8268-4c13-a433-3848b95b67a9"]
}, Open  ]],
Cell[CellGroupData[{
Cell[26990, 503, 255, 5, 30, "Input",ExpressionUUID->"1c459ce9-5650-4ca5-8270-16077b63f712"],
Cell[27248, 510, 275, 6, 57, "Output",ExpressionUUID->"0dbe419a-6dc4-48ed-acaa-cdb597fed920"]
}, Open  ]]
}
]
*)

(* NotebookSignature 7v0I93crFqVQXDKqOb5q10u1 *)
