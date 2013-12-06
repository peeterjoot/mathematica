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
NotebookDataLength[     32544,        711]
NotebookOptionsPosition[     33040,        706]
NotebookOutlinePosition[     33383,        721]
CellTagsIndexPosition[     33340,        718]
WindowFrame->Normal*)

(* Beginning of Notebook Content *)
Notebook[{

Cell[CellGroupData[{
Cell[BoxData[
 RowBox[{
  RowBox[{"(*", " ", 
   RowBox[{
    RowBox[{
     RowBox[{"FinanceData", "[", "]"}], " ", 
     RowBox[{"doesn", "'"}], "t", " ", "appear", " ", "to", " ", "have", " ", 
     "Canadian", " ", 
     RowBox[{"listings", ":", " ", 
      RowBox[{"CJR", ".", "B"}]}]}], ",", " ", 
    RowBox[{"or", " ", "the", " ", "symbol", " ", "is", " ", "different"}]}], 
   " ", "*)"}], "\[IndentingNewLine]", 
  RowBox[{
   RowBox[{"Clear", "[", " ", "txCanadian", " ", "]"}], "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{"txCanadian", " ", "=", " ", 
     RowBox[{"{", 
      RowBox[{"\"\<CJR.B\>\"", ",", "40", ",", "22.500", ",", 
       RowBox[{"{", 
        RowBox[{"2012", ",", "7", ",", "23", ",", "0", ",", "0", ",", "0"}], 
        "}"}]}], "}"}]}], " ", ";"}], "\[IndentingNewLine]", 
   "\[IndentingNewLine]", 
   RowBox[{"(*", " ", 
    RowBox[{"{", 
     RowBox[{
     "symbol", ",", " ", "shares", ",", " ", "price", ",", " ", "date"}], 
     "}"}], " ", "*)"}], "\[IndentingNewLine]", 
   RowBox[{"Clear", "[", " ", "tx", " ", "]"}], "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{"tx", " ", "=", " ", 
     RowBox[{"{", "\[IndentingNewLine]", 
      RowBox[{
       RowBox[{"{", 
        RowBox[{"\"\<SSYS\>\"", ",", "9", ",", "92.750", ",", 
         RowBox[{"{", 
          RowBox[{"2013", ",", "9", ",", "13", ",", " ", "0"}], "}"}]}], 
        "}"}], ",", "\[IndentingNewLine]", 
       RowBox[{"{", 
        RowBox[{"\"\<DDD\>\"", ",", "20", ",", "53.260", ",", 
         RowBox[{"{", 
          RowBox[{"2013", ",", "9", ",", "23", ",", " ", "0"}], "}"}]}], 
        "}"}], ",", "\[IndentingNewLine]", 
       RowBox[{"{", 
        RowBox[{"\"\<VJET\>\"", ",", "40", ",", "51.930", ",", 
         RowBox[{"{", 
          RowBox[{"2013", ",", "11", ",", "14", ",", " ", "0"}], "}"}]}], 
        "}"}], ",", "\[IndentingNewLine]", 
       RowBox[{"{", 
        RowBox[{"\"\<DDD\>\"", ",", "27", ",", "72.600", ",", 
         RowBox[{"{", 
          RowBox[{"2013", ",", "11", ",", "21", ",", " ", "0"}], "}"}]}], 
        "}"}], ",", "\[IndentingNewLine]", 
       RowBox[{"{", 
        RowBox[{"\"\<SSYS\>\"", ",", "17", ",", "116.920", ",", 
         RowBox[{"{", 
          RowBox[{"2013", ",", "11", ",", "21", ",", " ", "0"}], "}"}]}], 
        "}"}]}], "\[IndentingNewLine]", "}"}]}], " ", ";"}], 
   "\[IndentingNewLine]", "\[IndentingNewLine]", 
   RowBox[{"(*", " ", 
    RowBox[{"helper", " ", "functions"}], " ", "*)"}], "\[IndentingNewLine]", 
   RowBox[{"ClearAll", "[", " ", "sortTxListByDate", " ", "]"}], 
   "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{
     RowBox[{"sortTxListByDate", "[", "l_", "]"}], " ", ":=", " ", 
     RowBox[{"Sort", "[", 
      RowBox[{"l", ",", " ", 
       RowBox[{
        RowBox[{
         RowBox[{"AbsoluteTime", "[", 
          RowBox[{"#1", "[", 
           RowBox[{"[", "4", "]"}], "]"}], "]"}], " ", "<", " ", 
         RowBox[{"AbsoluteTime", "[", 
          RowBox[{"#2", "[", 
           RowBox[{"[", "4", "]"}], "]"}], "]"}]}], " ", "&"}]}], "]"}]}], 
    " ", ";"}], "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{
     RowBox[{"sortTxListByDate", "::", "usage"}], " ", "=", " ", 
     "\"\<In case it becomes convienent to not order the above list by date.  \
Assuming that Select keeps sort ordering.\>\""}], " ", ";"}], 
   "\[IndentingNewLine]", "\[IndentingNewLine]", 
   RowBox[{"Clear", "[", " ", 
    RowBox[{"ssys", ",", " ", "ddd", ",", " ", "vjet"}], " ", "]"}], " ", 
   "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{"ssys", " ", "=", " ", 
     RowBox[{"Select", "[", " ", 
      RowBox[{"tx", ",", " ", 
       RowBox[{
        RowBox[{
         RowBox[{"#", "[", 
          RowBox[{"[", "1", "]"}], "]"}], " ", "\[Equal]", " ", 
         "\"\<SSYS\>\""}], " ", "&"}]}], " ", "]"}]}], " ", ";"}], 
   "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{"ddd", " ", "=", " ", 
     RowBox[{"Select", "[", " ", 
      RowBox[{"tx", ",", " ", 
       RowBox[{
        RowBox[{
         RowBox[{"#", "[", 
          RowBox[{"[", "1", "]"}], "]"}], " ", "\[Equal]", " ", 
         "\"\<DDD\>\""}], " ", "&"}]}], " ", "]"}]}], " ", ";"}], 
   "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{"vjet", " ", "=", " ", 
     RowBox[{"Select", "[", " ", 
      RowBox[{"tx", ",", " ", 
       RowBox[{
        RowBox[{
         RowBox[{"#", "[", 
          RowBox[{"[", "1", "]"}], "]"}], " ", "\[Equal]", " ", 
         "\"\<VJET\>\""}], " ", "&"}]}], " ", "]"}]}], " ", ";"}], " ", 
   "\[IndentingNewLine]", "\[IndentingNewLine]", 
   RowBox[{"(*", 
    RowBox[{"Module", "[", 
     RowBox[{
      RowBox[{"{", "nWeeks", "}"}], ",", "\[IndentingNewLine]", 
      RowBox[{
       RowBox[{"nWeeks", " ", "=", " ", "2"}], " ", ";", 
       "\[IndentingNewLine]", 
       RowBox[{"DateListPlot", "[", 
        RowBox[{
         RowBox[{
          RowBox[{
           RowBox[{"{", 
            RowBox[{
             RowBox[{
              RowBox[{"#", "[", 
               RowBox[{"[", "4", "]"}], "]"}], " ", "-", " ", 
              RowBox[{"{", 
               RowBox[{"0", ",", " ", "0", ",", " ", "0", ",", " ", 
                RowBox[{"24", "*", "7", "*", "nWeeks"}]}], "}"}]}], " ", ",", 
             " ", 
             RowBox[{
              RowBox[{"#", "[", 
               RowBox[{"[", "2", "]"}], "]"}], "*", 
              RowBox[{"#", "[", 
               RowBox[{"[", "3", "]"}], "]"}]}]}], "}"}], " ", "&"}], "/@", 
          " ", "tx"}], ",", "\[IndentingNewLine]", 
         RowBox[{"PlotRange", " ", "\[Rule]", " ", "Full"}], ",", " ", 
         RowBox[{
         "PlotLabel", " ", "\[Rule]", " ", 
          "\"\<Transaction dollar amount\>\""}]}], "]"}]}]}], 
     "\[IndentingNewLine]", "]"}], "*)"}], "\[IndentingNewLine]", 
   "\[IndentingNewLine]", 
   RowBox[{"ClearAll", "[", " ", 
    RowBox[{"nShares", ",", " ", "bookValue"}], " ", "]"}], 
   "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{
     RowBox[{"nShares", "[", "l_", "]"}], " ", ":=", " ", 
     RowBox[{"Total", "[", 
      RowBox[{"l", "[", 
       RowBox[{"[", 
        RowBox[{"All", ",", " ", "2"}], "]"}], "]"}], "]"}]}], " ", ";"}], 
   "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{
     RowBox[{"nShares", "::", "usage"}], " ", "=", " ", 
     "\"\<Total the number of shares in the given transaction list.  Assumed \
that the symbol is identical for all in the list.\>\""}], " ", ";"}], 
   "\[IndentingNewLine]", 
   RowBox[{"(*", " ", 
    RowBox[{"correct", " ", 
     RowBox[{"nomenclature", "?"}]}], " ", "*)"}], "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{
     RowBox[{"bookValue", "[", "l_", "]"}], " ", ":=", " ", 
     RowBox[{"Sum", "[", " ", 
      RowBox[{
       RowBox[{
        RowBox[{
         RowBox[{"l", "[", 
          RowBox[{"[", "i", "]"}], "]"}], "[", 
         RowBox[{"[", "2", "]"}], "]"}], " ", "*", " ", 
        RowBox[{
         RowBox[{"l", "[", 
          RowBox[{"[", "i", "]"}], "]"}], "[", 
         RowBox[{"[", "3", "]"}], "]"}]}], ",", " ", 
       RowBox[{"{", 
        RowBox[{"i", ",", " ", 
         RowBox[{"Length", "[", "l", "]"}]}], "}"}]}], " ", "]"}]}], " ", 
    ";"}], "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{
     RowBox[{"bookValue", "::", "usage"}], " ", "=", " ", 
     "\"\<sum the initial purchase price times the number of shares for the \
transactions in the list\>\""}], " ", ";"}], "\[IndentingNewLine]", 
   "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{
     RowBox[{"historyAndPoints", "::", "usage"}], " ", "=", " ", 
     "\"\<Plot high, low for the symbol in the transaction list, and the \
specifics of those transactions\>\""}], " ", ";"}], "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{"historyAndPoints", "[", "l_", "]"}], " ", ":=", " ", 
    RowBox[{"Module", "[", 
     RowBox[{
      RowBox[{"{", 
       RowBox[{
       "oldestTx", ",", " ", "n", ",", " ", "data", ",", " ", "lastClose", 
        ",", " ", "ns", ",", " ", "bookVal"}], "}"}], ",", 
      "\[IndentingNewLine]", 
      RowBox[{
       RowBox[{"oldestTx", " ", "=", " ", 
        RowBox[{"l", "[", 
         RowBox[{"[", "1", "]"}], "]"}]}], " ", ";", "\[IndentingNewLine]", 
       RowBox[{"n", " ", "=", " ", "4"}], " ", ";", " ", 
       RowBox[{"(*", " ", 
        RowBox[{
        "include", " ", "this", " ", "many", " ", "weeks", " ", "data", " ", 
         "prior", " ", "to", " ", "initial", " ", "purchase"}], " ", "*)"}], 
       "\[IndentingNewLine]", "\[IndentingNewLine]", 
       RowBox[{"data", " ", "=", "  ", 
        RowBox[{
         RowBox[{
          RowBox[{"FinancialData", "[", " ", 
           RowBox[{
            RowBox[{"oldestTx", "[", 
             RowBox[{"[", "1", "]"}], "]"}], ",", " ", "#", ",", 
            RowBox[{
             RowBox[{"oldestTx", "[", 
              RowBox[{"[", "4", "]"}], "]"}], " ", "-", 
             RowBox[{"{", 
              RowBox[{"0", ",", " ", "0", ",", " ", "0", ",", " ", 
               RowBox[{"24", "*", "7", "*", "4"}]}], "}"}]}]}], "]"}], " ", 
          "&"}], "/@", " ", 
         RowBox[{"{", 
          RowBox[{"\"\<Low\>\"", ",", " ", "\"\<High\>\""}], "}"}]}]}], " ", 
       ";", "\[IndentingNewLine]", "\[IndentingNewLine]", 
       RowBox[{"lastClose", " ", "=", " ", 
        RowBox[{"Last", "[", 
         RowBox[{"Last", "[", " ", 
          RowBox[{"Last", "[", " ", "data", " ", "]"}], " ", "]"}], " ", 
         "]"}]}], ";", "\[IndentingNewLine]", "\[IndentingNewLine]", 
       RowBox[{"ns", "=", 
        RowBox[{"nShares", "[", "l", "]"}]}], " ", ";", "\[IndentingNewLine]", 
       RowBox[{"bookVal", " ", "=", " ", 
        RowBox[{"bookValue", "[", "l", "]"}]}], " ", ";", 
       "\[IndentingNewLine]", "\[IndentingNewLine]", 
       RowBox[{"DateListPlot", "[", " ", "\[IndentingNewLine]", 
        RowBox[{
         RowBox[{"Evaluate", "@", "data"}], "\[IndentingNewLine]", ",", " ", 
         RowBox[{"PlotLabel", " ", "\[Rule]", " ", 
          RowBox[{"Row", "[", 
           RowBox[{"{", 
            RowBox[{
             RowBox[{"oldestTx", "[", 
              RowBox[{"[", "1", "]"}], "]"}], ",", " ", 
             "\"\< Market value = $\>\"", ",", " ", 
             RowBox[{"ns", " ", "lastClose"}], ",", " ", 
             "\"\< Book value = $\>\"", ",", " ", "bookVal"}], " ", "}"}], 
           "]"}]}], "\[IndentingNewLine]", ",", " ", 
         RowBox[{"Joined", " ", "\[Rule]", " ", "True"}], 
         "\[IndentingNewLine]", ",", " ", 
         RowBox[{"Filling", "\[Rule]", "Bottom"}], "\[IndentingNewLine]", ",",
          " ", 
         RowBox[{"Epilog", " ", "\[Rule]", "  ", "\[IndentingNewLine]", 
          RowBox[{"Flatten", "[", " ", 
           RowBox[{
            RowBox[{
             RowBox[{
              RowBox[{"Tooltip", "[", "\[IndentingNewLine]", 
               RowBox[{
                RowBox[{"Text", "[", 
                 RowBox[{
                  RowBox[{"#", "[", 
                   RowBox[{"[", "2", "]"}], "]"}], ",", 
                  RowBox[{"{", 
                   RowBox[{
                    RowBox[{"#", "[", 
                    RowBox[{"[", "4", "]"}], "]"}], ",", 
                    RowBox[{"#", "[", 
                    RowBox[{"[", "3", "]"}], "]"}]}], "}"}]}], "]"}], 
                "\[IndentingNewLine]", ",", " ", 
                RowBox[{"Row", "[", 
                 RowBox[{"{", "\[IndentingNewLine]", 
                  RowBox[{
                   RowBox[{"#", "[", 
                    RowBox[{"[", "3", "]"}], "]"}], ",", " ", "\"\< ($\>\"", 
                   ",", " ", 
                   RowBox[{
                    RowBox[{"#", "[", 
                    RowBox[{"[", "2", "]"}], "]"}], "*", 
                    RowBox[{"#", "[", 
                    RowBox[{"[", "3", "]"}], "]"}]}], ",", "\"\< -> $\>\"", 
                   ",", " ", 
                   RowBox[{
                    RowBox[{"#", "[", 
                    RowBox[{"[", "2", "]"}], "]"}], " ", "*", " ", 
                    "lastClose"}], ",", " ", "\"\<)\>\""}], 
                  "\[IndentingNewLine]", "}"}], "]"}]}], " ", 
               "\[IndentingNewLine]", "]"}], "&"}], "/@", " ", "l"}], ",", 
            " ", "1"}], "]"}]}]}], "\[IndentingNewLine]", "]"}]}]}], 
     "\[IndentingNewLine]", "]"}]}], "\[IndentingNewLine]", 
   "\[IndentingNewLine]", "\[IndentingNewLine]", 
   RowBox[{"historyAndPoints", "[", " ", "ssys", " ", "]"}], 
   "\[IndentingNewLine]", 
   RowBox[{"historyAndPoints", "[", " ", "ddd", " ", "]"}], 
   "\[IndentingNewLine]", 
   RowBox[{"historyAndPoints", "[", " ", "vjet", " ", "]"}], 
   "\[IndentingNewLine]", "\[IndentingNewLine]", 
   "\[IndentingNewLine]"}]}]], "Input",
 CellChangeTimes->{{3.594384933528307*^9, 3.594384940012678*^9}, {
   3.5943855774361367`*^9, 3.594385739818424*^9}, {3.5943858835356445`*^9, 
   3.5943859665963955`*^9}, {3.5943859968101234`*^9, 
   3.5943861061983805`*^9}, {3.5943861557512145`*^9, 3.594386176290389*^9}, {
   3.5943863017725663`*^9, 3.5943865244643035`*^9}, {3.594386562774495*^9, 
   3.594386567083741*^9}, {3.5943866255730867`*^9, 3.5943868013131385`*^9}, {
   3.594386878474552*^9, 3.5943870396187687`*^9}, {3.594387084330326*^9, 
   3.5943871782046957`*^9}, {3.594387222802246*^9, 3.5943873102782497`*^9}, {
   3.5943873435111504`*^9, 3.5943874201275325`*^9}, {3.594387461937924*^9, 
   3.5943874717054825`*^9}, {3.5943876429582777`*^9, 3.594387663089429*^9}, {
   3.594387724884964*^9, 3.5943877571398087`*^9}, {3.5943877965130606`*^9, 
   3.594387807569693*^9}, {3.594387879410802*^9, 3.5943880295653906`*^9}, {
   3.5943880906668854`*^9, 3.5943881077238607`*^9}, {3.5943881882624674`*^9, 
   3.5943882113957906`*^9}, {3.5943882605376015`*^9, 
   3.5943882643848214`*^9}, {3.5943883582111883`*^9, 
   3.5943883611763573`*^9}, {3.5943884470522695`*^9, 
   3.5943885512772307`*^9}, {3.5943885997020006`*^9, 
   3.5943886285976534`*^9}, {3.5943887152906113`*^9, 3.594388735085744*^9}, 
   3.5943911365846233`*^9, {3.594391440551009*^9, 3.5943914570519533`*^9}, {
   3.5943914878697157`*^9, 3.594391578191882*^9}, {3.5943916120648193`*^9, 
   3.594391677795579*^9}, {3.5943917494516773`*^9, 3.594391861429082*^9}, {
   3.594391895366023*^9, 3.5943919628198814`*^9}, {3.5943920001310153`*^9, 
   3.5943920104646063`*^9}, {3.594392046701679*^9, 3.5943920520489845`*^9}, {
   3.5943927664408455`*^9, 3.594392806613144*^9}, {3.5943930316520147`*^9, 
   3.5943930873342*^9}, {3.594393264512334*^9, 3.594393463725728*^9}, {
   3.5944028340517797`*^9, 3.594402885939748*^9}, {3.5944101834610267`*^9, 
   3.594410202212099*^9}, {3.5944103879457226`*^9, 3.5944105133218937`*^9}, 
   3.5944105686160564`*^9}],

Cell[BoxData[
 GraphicsBox[{{}, GraphicsComplexBox[CompressedData["
1:eJx9lW2IVFUYx8eMpAV1pMUQ0UYs2mDJwRf0g+Jcg1y3gtHIdnNyB0MDoRxb
URxRL9gG+WUnSMr94uCqQaQMBLbbvnh3Z/YNVhoEKyJpVjHoGrGyri+l6Hl+
z7ne9UsXluXHOXPuc57zP7+7aNuuTdufikQiefMn/82TeHDedy6Omqe2IWG4
fOAH31kmz/RG4cgZw8yswPGy4S2t/ZM13XD6X8N/b+xY2PIfnHuxw3fWVP3S
nlnznnCsPeCZW4STFw0XJ2tSrf3Md+902PVjzC8s6vSdjPzAhStvGN4tnIfz
tzrt/AjrlRf+aDnKeGSD4XZZ4Hs43mx4+w7zzIW9m4Zvy+uP8f7x+V12/Rwc
e73L/r4ZTmYMtx03zwb647Z12X7d3ywcndcd1P+ucOI1wzt44MxHhj+9YRp0
Gc5/ZbhuLFt97mXtd193sD84nejxnU2mnTfmwLmdPfY8mmHvy2B8mtbfG4x/
oPX/FfBiuPBhr+88lOcwv698YfiFFlPQq4xHuw0fqD63fqwNTvzZa/fbyPxM
9IKtz4MjrYazMt9nP/FOw6+Ydk6ugtPXLtjf76c/uZmeff9Dxr2Vns3DW6yX
PO/Z/rmah4rhFvql9Vf1+c5z5nXZU5qH5Yalfev74GiTYUlb1QzykL/SZ/N1
UvMxo993iGNW87HU8CnOV/ORMrxU+qV5SX9mWNq78S48/nTRd2S72T2a5yVF
2w/Na7KxaOfX8T73SNHmqwUunA34nRT9rS3ZfOyFM5tLtj4fzrslW/86uPxt
KTiP96n/cinIP5x7e8B3+mX+Vdg7OGDHC1up/5sB289jcOxSMF6Gk/cH7P6q
m+hvdtB3wI/h6OlBm9/rWv9Pg0/cv8y9gBNa/+Ih24+v4fjJIZvHCTg9OmTr
OQ3nbg/Z3yepf7x+2L5/FuyODAf3Cy5MDNvzK8KVBSM2z7PYT7RuJOgn4/hN
6yVP+I36hjUP4jfmH9U8iN+eFa7XPIjfqOcQjN9Yzgv9JjpMNbEf/MZ9qNE8
iN+m5BO/naW/MH5jPVfzK36jPyv0/MVv+n7G8Rvn/QmM30RHo6th/Mb9eqD5
nR/4a57WK37T+xj6Tfej9++x377jvuI39tPAfcVv5HmF+kH8xnInYPzG+PXQ
b/y+Tr8X4jfNi34vdvY8cf/xG+fRFvqN82rQ+sVvmg/9Xojf2P8o8/Eb5zFb
/SB+4zhWw/iN/EwwH7+p3/V7J37j/H+jfvym/VA/i9/obw/9wW98X57R+sVv
rH9N+/vYb/r9Cv02qfWL336WfOzTPIjf2N8/MH7T/Or9Er/pfjQf4jd8OAfG
b6z/kuZD/CbbO/45jN/ozwkYv8FrYfzGflP6vRa/8fo46+M3zQuM39QXet9q
Az/lYfwGR7mf+E33A+M3zrsK3+A33v8m4/iNfD2fpr/iN75XR5mP3/DpGRi/
sZ8/YPym5xX6TetnPfzG+rNh/Kb+5f2h31z2g9/gGOP4jXz+yjh+w3fqJ/xG
fXPVx/WBz8ZDv2keQr9xnmPMx2/kaZn6WPzG+f/OOH6b8r1lfAr/7/gjbOzS
dA==
    "], {{{}, 
      {Hue[0.67, 0.6, 0.6], Opacity[0.2], EdgeForm[None], 
       GraphicsGroupBox[{
         PolygonBox[{{1, 159, 38, 37, 36, 35, 34, 33, 32, 31, 30, 29, 28, 27, 
          26, 25, 24, 23, 22, 21, 20, 19, 18, 17, 16, 15, 14, 13, 12, 11, 10, 
          9, 8, 7, 6, 5, 4, 3, 2}}], 
         PolygonBox[{{38, 160, 78, 77, 76, 75, 74, 73, 72, 71, 70, 69, 68, 67,
           66, 65, 64, 63, 62, 61, 60, 59, 58, 57, 56, 55, 54, 53, 52, 51, 50,
           49, 48, 47, 46, 45, 44, 43, 42, 41, 40, 39}}]}]}, {}, 
      {Hue[0.9060679774997897, 0.6, 0.6], Opacity[0.2], EdgeForm[None], 
       GraphicsGroupBox[
        PolygonBox[{{79, 157, 158, 156, 155, 154, 153, 152, 151, 150, 149, 
         148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135,
          134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 
         121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108,
          107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 93, 
         92, 91, 90, 89, 88, 87, 86, 85, 84, 83, 82, 81, 
         80}}]]}, {}, {}, {}, {}, {}, {}}, {{}, {}, 
      {RGBColor[0.24720000000000014`, 0.24, 0.6], 
       LineBox[{1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18,
         19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 
        36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 
        53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 
        70, 71, 72, 73, 74, 75, 76, 77, 78}]}, 
      {RGBColor[0.6, 0.24, 0.4428931686004542], 
       LineBox[{79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 
        94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 
        109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 
        123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 
        137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 
        151, 152, 153, 154, 155, 156}]}}}], {}},
  AspectRatio->NCache[GoldenRatio^(-1), 0.6180339887498948],
  AxesOrigin->{3585600000, 90.},
  Epilog->{
    TagBox[
     TooltipBox[
      InsetBox[
       FormBox["9", TraditionalForm], {3588019200, 92.75}], 
      TemplateBox[{
       "92.75`", "\" ($\"", "834.75`", "\" -> $\"", "1110.96`", "\")\""}, 
       "RowDefault"]], Annotation[#, 
      Row[{92.75, " ($", 834.75, " -> $", 1110.96, ")"}], "Tooltip"]& ], 
    TagBox[
     TooltipBox[
      InsetBox[
       FormBox["17", TraditionalForm], {3593980800, 116.92}], 
      TemplateBox[{
       "116.92`", "\" ($\"", "1987.64`", "\" -> $\"", "2098.48`", "\")\""}, 
       "RowDefault"]], Annotation[#, 
      Row[{116.92, " ($", 1987.64, " -> $", 2098.48, ")"}], "Tooltip"]& ]},
  Frame->True,
  FrameLabel->{None, None},
  FrameTicks->{{Automatic, Automatic}, {{{3586982400, 
       FormBox["\"Sep\"", TraditionalForm], {0.020601132958329826`, 0}}, {
      3589574400, 
       FormBox["\"Oct\"", TraditionalForm], {0.020601132958329826`, 0}}, {
      3592252800, 
       FormBox["\"Nov\"", TraditionalForm], {0.020601132958329826`, 0}}, {
      3594844800, 
       FormBox["\"Dec\"", TraditionalForm], {0.020601132958329826`, 0}}, {
      3585513600, 
       FormBox["\"\"", TraditionalForm], {0.012360679774997897`, 0}}, {
      3588192000, 
       FormBox["\"\"", TraditionalForm], {0.012360679774997897`, 0}}, {
      3590784000, 
       FormBox["\"\"", TraditionalForm], {0.012360679774997897`, 0}}, {
      3593462400, 
       FormBox["\"\"", TraditionalForm], {0.012360679774997897`, 0}}}, {{
      3586982400, 
       FormBox["\"\"", TraditionalForm], {0.020601132958329826`, 0}}, {
      3589574400, 
       FormBox["\"\"", TraditionalForm], {0.020601132958329826`, 0}}, {
      3592252800, 
       FormBox["\"\"", TraditionalForm], {0.020601132958329826`, 0}}, {
      3594844800, 
       FormBox["\"\"", TraditionalForm], {0.020601132958329826`, 0}}, {
      3585513600, 
       FormBox["\"\"", TraditionalForm], {0.012360679774997897`, 0}}, {
      3588192000, 
       FormBox["\"\"", TraditionalForm], {0.012360679774997897`, 0}}, {
      3590784000, 
       FormBox["\"\"", TraditionalForm], {0.012360679774997897`, 0}}, {
      3593462400, 
       FormBox["\"\"", TraditionalForm], {0.012360679774997897`, 0}}}}},
  GridLines->{{{3586982400, 
      GrayLevel[0.8]}, {3589574400, 
      GrayLevel[0.8]}, {3592252800, 
      GrayLevel[0.8]}, {3594844800, 
      GrayLevel[0.8]}}, None},
  Method->{},
  PlotLabel->FormBox[
    TemplateBox[{
     "\"SSYS\"", "\" Market value = $\"", "3209.44`", "\" Book value = $\"", 
      "2822.3900000000003`"}, "RowDefault"], TraditionalForm],
  PlotRange->{{3585600000, 3.5951904*^9}, {89.9, 134.}},
  PlotRangeClipping->True,
  PlotRangePadding->{{191808., 191808.}, {0.8819999999999999, 
   0.8819999999999999}},
  Ticks->None]], "Output",
 CellChangeTimes->{3.594402914371374*^9, 3.5944102121426673`*^9, 
  3.5944109002440243`*^9, 3.59447087154375*^9, 3.59528400086897*^9}],

Cell[BoxData[
 GraphicsBox[{{}, GraphicsComplexBox[CompressedData["
1:eJx9lWtok2cUgKMMioFBhwrKsEspbA4EiysKY2X5KFt62SVtnFLsZuhQQXTL
2J+tImQX/THGTNGxKY5Fax0ULQFB21XbNEmbVrwMsY4NxlIKZX4rWPEyhu7y
nue8n1/zxw9Enr638573nCfVne+3bVscCAQOmX/yv/lCPQOuUx/8uSfxXWPY
cPSyx2/Dyb8M90emu5Z9BWeqB10nf291x4HOJuFSy6C3Hk7fNdxopvdXNAv/
VPWj6+xZZnZ4EQ40Gf6ABXDth4ZluOs667O3DSdkPAPPPz3kOiWzXWQR80Ov
Dtn5dxmPJgxLOLkpjfeIYTk+Mg1XrjzvOidkwxk43GC4at+frQPvsD6x2zCZ
CLN/+hvD2+Ub1/hHvfE4HA9fcJ0X5IvBqZ2G5Tb1X8DZQ4YjBNBC/MOGjxw2
38dw6OYFm7/FcGbHsI2vgfWlbsNtAybCpxivPG94rtX8oQUOzw6XnZ+oHLH5
Lmp+DxjuIYGa38ER+35XuG98ZsTG2xch/iezriMY3Kz532D4knxrWB89a1jS
e281nCxly/KRCY7a9/1V468zvE7iO6Pxbx219/8FTv82au//6WvktyLnOpfl
vDnGA+ty3n5wbUfOvucnzI/vz9n3mYXnn8i7zn/yvQyH1hpewoVYH23P2/1P
vU78n+Vt/Gk4c9qwlENV7xvkd03Bdbhux5vkd1PB5rshSvzJgs1XRSvx9xVs
vBcZD0wV7H5TcCo2Zt/3IPOze8ds/afbiP+HMXveHBy6Zpjj18aI/+GYjTcF
l7rGy7iyd9zGV8P68FWPl3Je4u9xWx/Pwemaos1nNfNrjxdtPHHG45cMD9Ag
cOp+0fbbRo23ecLW5zE4OTnh9RucuTNh83MOLq2a9Hyg8TZOeu+r9xX/BBe8
l/iH9z1JPeIf3m8XjH+Id17rTfxDPpLav+If8v0u++Ef9ntW66upnPGP1qf2
r/jnJXwG4x+tZ98/3L9b+0P8I8sPt2t/iH/I37fEi3+elwf+A8Y/N2hQ7V/x
D+ev1P4Q/2j+NX7xj94fxj/U1ysw/kGnq6h//EM//O77R/Or/XHTm/+P7x+4
HsY/1N8t3z/kM+/7h/tMwPhH/aH5Ff98LvFt0/yKf7R+NP4Zj+vUn+If7vuR
5v+Rf+Z8/5D/pazHP4TbrPGLf3j/rMYv/mH9Lu6Lf+iHMzD+eUYS+K/vH/19
wgf4h/kHGcc/90WAyxnHP7zHlzD+2SIJOwr7/nFh/KP1il8W+Ae/4B/GUzD+
4X334Q/8w3t8r/0r/iGeKd8/en8Y//B7MaT9G/P8Eaf/8A/1vx/GP+orGP/o
fr5/yFfVRvIr/mH9+rfIb6/H2xnHP6pP1uMf6rudfsc/7B9iHP9wn17G8Q/n
vQfjH97jju8f6m8F6/EP67+G8Q/3f6C+FP+oX33/8H5H9b6P/KO/h4wv4MeO
/w+44Zio
    "], {{{}, 
      {Hue[0.67, 0.6, 0.6], Opacity[0.2], EdgeForm[None], 
       GraphicsGroupBox[{
         PolygonBox[{{1, 147, 32, 31, 30, 29, 28, 27, 26, 25, 24, 23, 22, 21, 
          20, 19, 18, 17, 16, 15, 14, 13, 12, 11, 10, 9, 8, 7, 6, 5, 4, 3, 
          2}}], PolygonBox[{{32, 148, 72, 71, 70, 69, 68, 67, 66, 65, 64, 63, 
          62, 61, 60, 59, 58, 57, 56, 55, 54, 53, 52, 51, 50, 49, 48, 47, 46, 
          45, 44, 43, 42, 41, 40, 39, 38, 37, 36, 35, 34, 33}}]}]}, {}, 
      {Hue[0.9060679774997897, 0.6, 0.6], Opacity[0.2], EdgeForm[None], 
       GraphicsGroupBox[
        PolygonBox[{{73, 145, 146, 144, 143, 142, 141, 140, 139, 138, 137, 
         136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123,
          122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 
         109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95,
          94, 93, 92, 91, 90, 89, 88, 87, 86, 85, 84, 83, 82, 81, 80, 79, 78, 
         77, 76, 75, 74}}]]}, {}, {}, {}, {}, {}, {}}, {{}, {}, 
      {RGBColor[0.24720000000000014`, 0.24, 0.6], 
       LineBox[{1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18,
         19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 
        36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 
        53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 
        70, 71, 72}]}, 
      {RGBColor[0.6, 0.24, 0.4428931686004542], 
       LineBox[{73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 
        88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 
        104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 
        118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 
        132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 
        144}]}}}], {}},
  AspectRatio->NCache[GoldenRatio^(-1), 0.6180339887498948],
  AxesOrigin->{3586464000, 47.},
  Epilog->{
    TagBox[
     TooltipBox[
      InsetBox[
       FormBox["20", TraditionalForm], {3588883200, 53.26}], 
      TemplateBox[{
       "53.26`", "\" ($\"", "1065.2`", "\" -> $\"", "1569.`", "\")\""}, 
       "RowDefault"]], Annotation[#, 
      Row[{53.26, " ($", 1065.2, " -> $", 1569., ")"}], "Tooltip"]& ], 
    TagBox[
     TooltipBox[
      InsetBox[
       FormBox["27", TraditionalForm], {3593980800, 72.6}], 
      TemplateBox[{
       "72.6`", "\" ($\"", "1960.1999999999998`", "\" -> $\"", "2118.15`", 
        "\")\""}, "RowDefault"]], Annotation[#, 
      Row[{72.6, " ($", 1960.1999999999998`, " -> $", 2118.15, ")"}], 
      "Tooltip"]& ]},
  Frame->True,
  FrameLabel->{None, None},
  FrameTicks->{{Automatic, Automatic}, {{{3586982400, 
       FormBox["\"Sep\"", TraditionalForm], {0.020601132958329826`, 0}}, {
      3589574400, 
       FormBox["\"Oct\"", TraditionalForm], {0.020601132958329826`, 0}}, {
      3592252800, 
       FormBox["\"Nov\"", TraditionalForm], {0.020601132958329826`, 0}}, {
      3594844800, 
       FormBox["\"Dec\"", TraditionalForm], {0.020601132958329826`, 0}}, {
      3588192000, 
       FormBox["\"\"", TraditionalForm], {0.012360679774997897`, 0}}, {
      3590784000, 
       FormBox["\"\"", TraditionalForm], {0.012360679774997897`, 0}}, {
      3593462400, 
       FormBox["\"\"", TraditionalForm], {0.012360679774997897`, 0}}}, {{
      3586982400, 
       FormBox["\"\"", TraditionalForm], {0.020601132958329826`, 0}}, {
      3589574400, 
       FormBox["\"\"", TraditionalForm], {0.020601132958329826`, 0}}, {
      3592252800, 
       FormBox["\"\"", TraditionalForm], {0.020601132958329826`, 0}}, {
      3594844800, 
       FormBox["\"\"", TraditionalForm], {0.020601132958329826`, 0}}, {
      3588192000, 
       FormBox["\"\"", TraditionalForm], {0.012360679774997897`, 0}}, {
      3590784000, 
       FormBox["\"\"", TraditionalForm], {0.012360679774997897`, 0}}, {
      3593462400, 
       FormBox["\"\"", TraditionalForm], {0.012360679774997897`, 0}}}}},
  GridLines->{{{3586982400, 
      GrayLevel[0.8]}, {3589574400, 
      GrayLevel[0.8]}, {3592252800, 
      GrayLevel[0.8]}, {3594844800, 
      GrayLevel[0.8]}}, None},
  Method->{},
  PlotLabel->FormBox[
    TemplateBox[{
     "\"DDD\"", "\" Market value = $\"", "3687.15`", "\" Book value = $\"", 
      "3025.3999999999996`"}, "RowDefault"], TraditionalForm],
  PlotRange->{{3586464000, 3.5951904*^9}, {47.33, 84.85}},
  PlotRangeClipping->True,
  PlotRangePadding->{{174528., 174528.}, {0.7504, 0.7504}},
  Ticks->None]], "Output",
 CellChangeTimes->{3.594402914371374*^9, 3.5944102121426673`*^9, 
  3.5944109002440243`*^9, 3.59447087154375*^9, 3.595284001595011*^9}],

Cell[BoxData[
 GraphicsBox[{{}, GraphicsComplexBox[CompressedData["
1:eJx1lEtIG1EUhgcRhCAYoVAU1Ij0IQiKbk07t5NJYmrFB1iEgFrRrZF2ZbEE
ii5KQXeim4q2CIWKO12JZtSoWBRBxYUQFxWJLgLSgiC05/xzc3xAL4Twce/c
858zX1L+pr+1N8cwjBB9+JuWt3MlrX5u02qsM4mnjolHE7+fRqtN5t28hOZR
sFGb0Oc/1zPXRIWfMXeNEOPmLpzP5Dpp1cfrMfZ91Y7eN54zN3c4+vkqnI9/
JB4+b1ksfQSe/0H8l9cXsFm1qu87BcfaiScneCnkjxOHTwYfzD2xkP87cYow
1A029ld1vfwA81jbWlp9jfk9h06QeXloLdtPCPlniXtRD+zbI66M0kTOwsh/
TezweHIamVOD62lF1ShBE7P3G7HncCbmj7xE/h3ik5s8sassl6OfqYqknncB
+qmZTup8FS8w3+2k7rfIzf+H+D0XLAZnIhv6vhWcj28SL5byRFFv/nJDz9+H
86mSTZ1vC+wNEx8QesZd7sz6UOAXP/B8yhI/+HHPQ0v8QL4OU/xwz5t3/VhW
4gfmN63ED9y3YIofrdxAoRI/6ni9VeIH2vugxI8BGtdMRokf6O+TJX6gvmnf
88MWP/D+3gXv+tETET/KuN5Sg/gBP8saxA/0fxURP+DTxSvxA/XjLeKHe1+z
+IH+XzeJH/B51hI//GjIEj9uvV/4gXkNBMUP9/6Q+IF8RwHxA/O8DIgfbl5b
/MDv8Zd9zw9b/Lj1/4H9//E/xK7EVQ==
    "], {{{}, 
      {Hue[0.67, 0.6, 0.6], Opacity[0.2], EdgeForm[None], 
       GraphicsGroupBox[
        PolygonBox[{{1, 71, 34, 33, 32, 31, 30, 29, 28, 27, 26, 25, 24, 23, 
         22, 21, 20, 19, 18, 17, 16, 15, 14, 13, 12, 11, 10, 9, 8, 7, 6, 5, 4,
          3, 2}}]]}, {}, 
      {Hue[0.9060679774997897, 0.6, 0.6], Opacity[0.2], EdgeForm[None], 
       GraphicsGroupBox[
        PolygonBox[{{35, 69, 70, 68, 67, 66, 65, 64, 63, 62, 61, 60, 59, 58, 
         57, 56, 55, 54, 53, 52, 51, 50, 49, 48, 47, 46, 45, 44, 43, 42, 41, 
         40, 39, 38, 37, 36}}]]}, {}, {}, {}, {}, {}, {}}, {{}, {}, 
      {RGBColor[0.24720000000000014`, 0.24, 0.6], 
       LineBox[{1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18,
         19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34}]}, 
      {RGBColor[0.6, 0.24, 0.4428931686004542], 
       LineBox[{35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 
        50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 
        67, 68}]}}}], {}},
  AspectRatio->NCache[GoldenRatio^(-1), 0.6180339887498948],
  AxesOrigin->{3591043200, 20.},
  Epilog->{
    TagBox[
     TooltipBox[
      InsetBox[
       FormBox["40", TraditionalForm], {3593376000, 51.93}], 
      TemplateBox[{
       "51.93`", "\" ($\"", "2077.2`", "\" -> $\"", "1727.1999999999998`", 
        "\")\""}, "RowDefault"]], Annotation[#, 
      Row[{51.93, " ($", 2077.2, " -> $", 1727.1999999999998`, ")"}], 
      "Tooltip"]& ]},
  Frame->True,
  FrameLabel->{None, None},
  FrameTicks->{{Automatic, Automatic}, {{{3591302400, 
       FormBox["\"Oct 21\"", TraditionalForm]}, {3592512000, 
       FormBox["\"Nov 04\"", TraditionalForm]}, {3593721600, 
       FormBox["\"Nov 18\"", TraditionalForm]}, {3594931200, 
       FormBox["\"Dec 02\"", TraditionalForm]}, {3596140800, 
       FormBox["\"Dec 16\"", TraditionalForm]}, {3591907200, 
       FormBox["\"\"", TraditionalForm]}, {3593116800, 
       FormBox["\"\"", TraditionalForm]}, {3594326400, 
       FormBox["\"\"", TraditionalForm]}}, {{3591302400, 
       FormBox["\"\"", TraditionalForm]}, {3592512000, 
       FormBox["\"\"", TraditionalForm]}, {3593721600, 
       FormBox["\"\"", TraditionalForm]}, {3594931200, 
       FormBox["\"\"", TraditionalForm]}, {3596140800, 
       FormBox["\"\"", TraditionalForm]}, {3591907200, 
       FormBox["\"\"", TraditionalForm]}, {3593116800, 
       FormBox["\"\"", TraditionalForm]}, {3594326400, 
       FormBox["\"\"", TraditionalForm]}}}},
  GridLines->{{{3591302400, 
      GrayLevel[0.8]}, {3592512000, 
      GrayLevel[0.8]}, {3593721600, 
      GrayLevel[0.8]}, {3594931200, 
      GrayLevel[0.8]}, {3596140800, 
      GrayLevel[0.8]}}, None},
  Method->{},
  PlotLabel->FormBox[
    TemplateBox[{
     "\"VJET\"", "\" Market value = $\"", "1727.1999999999998`", 
      "\" Book value = $\"", "2077.2`"}, "RowDefault"], TraditionalForm],
  PlotRange->{{3591043200, 3.5951904*^9}, {19.3, 70.}},
  PlotRangeClipping->True,
  PlotRangePadding->{{82944., 82944.}, {1.014, 1.014}},
  Ticks->None]], "Output",
 CellChangeTimes->{3.594402914371374*^9, 3.5944102121426673`*^9, 
  3.5944109002440243`*^9, 3.59447087154375*^9, 3.5952840023180523`*^9}]
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
Cell[1485, 35, 14595, 332, 1791, "Input"],
Cell[16083, 369, 6666, 129, 360, "Output"],
Cell[22752, 500, 6222, 121, 364, "Output"],
Cell[28977, 623, 4047, 80, 364, "Output"]
}, Open  ]]
}
]
*)

(* End of internal cache information *)

(* NotebookSignature evpRdgJa6BzquC1pKc8b@CMO *)
