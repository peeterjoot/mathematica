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
NotebookDataLength[     55056,       1090]
NotebookOptionsPosition[     55637,       1087]
NotebookOutlinePosition[     55980,       1102]
CellTagsIndexPosition[     55937,       1099]
WindowFrame->Normal*)

(* Beginning of Notebook Content *)
Notebook[{

Cell[CellGroupData[{
Cell[BoxData[
 RowBox[{
  RowBox[{"(*", " ", 
   RowBox[{"Must", " ", "use", " ", "yahoo", " ", "style", " ", 
    RowBox[{"symbols", ":", " ", 
     ButtonBox[
      RowBox[{
       RowBox[{"http", ":"}], "//", 
       RowBox[{
        RowBox[{
         RowBox[{
          RowBox[{
           RowBox[{"mathematica", ".", "stackexchange", ".", "com"}], "/", 
           "questions"}], "/", "29975"}], "/", "is"}], "-", "financialdata", 
        "-", "for", "-", "india", "-", "available"}]}],
      BaseStyle->"Hyperlink",
      ButtonData->{
        URL[
        "http://mathematica.stackexchange.com/questions/29975/is-\
financialdata-for-india-available"], None},
      ButtonNote->
       "http://mathematica.stackexchange.com/questions/29975/is-financialdata-\
for-india-available"]}]}], " ", "*)"}], "\[IndentingNewLine]", 
  RowBox[{"(*", " ", 
   RowBox[{
   "symbol", ",", " ", "numberStocksPurchased", ",", " ", "purchasePrice", 
    ",", " ", "year", ",", " ", "month", ",", " ", "day"}], " ", "*)"}], 
  "\[IndentingNewLine]", 
  RowBox[{
   RowBox[{"Clear", "[", " ", 
    RowBox[{"txRaw", ",", " ", "tx"}], " ", "]"}], "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{"txRaw", " ", "=", " ", 
     RowBox[{
     "Import", "[", 
      "\"\<C:\\\\Users\\\\Peeter\\\\Google \
Drive\\\\stockPurchaseTransactions.ods\>\"", "]"}]}], " ", ";"}], 
   "\[IndentingNewLine]", "\[IndentingNewLine]", 
   RowBox[{"(*", " ", 
    RowBox[{"trim", " ", "first", " ", "row"}], " ", "*)"}], 
   "\[IndentingNewLine]", 
   RowBox[{"(*", " ", 
    RowBox[{
    "Format", " ", "for", " ", "each", " ", "row", " ", "after", " ", "this", 
     " ", 
     RowBox[{"is", ":", " ", 
      RowBox[{"{", 
       RowBox[{
       "\"\<sym\>\"", ",", " ", "numberStocksPurchased", ",", " ", 
        "purchasePrice", ",", " ", 
        RowBox[{"{", 
         RowBox[{"year", ",", " ", "month", ",", " ", "day", ",", " ", "0"}], 
         "}"}]}], "}"}]}]}], " ", "*)"}], "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{"tx", " ", "=", " ", 
     RowBox[{
      RowBox[{
       RowBox[{"{", 
        RowBox[{
         RowBox[{"#", "[", 
          RowBox[{"[", "1", "]"}], "]"}], ",", " ", 
         RowBox[{"#", "[", 
          RowBox[{"[", "2", "]"}], "]"}], ",", " ", 
         RowBox[{"#", "[", 
          RowBox[{"[", "3", "]"}], "]"}], ",", 
         RowBox[{"{", 
          RowBox[{
           RowBox[{"#", "[", 
            RowBox[{"[", "4", "]"}], "]"}], ",", " ", 
           RowBox[{"#", "[", 
            RowBox[{"[", "5", "]"}], "]"}], ",", " ", 
           RowBox[{"#", "[", 
            RowBox[{"[", "6", "]"}], "]"}], ",", " ", "0"}], "}"}]}], "}"}], 
       "&"}], "/@", " ", 
      RowBox[{"Rest", "[", 
       RowBox[{"Flatten", "[", 
        RowBox[{"txRaw", ",", " ", "1"}], "]"}], "]"}]}]}], "  ", ";"}], 
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
         RowBox[{"DateTicksFormat", "->", 
          RowBox[{"{", 
           RowBox[{
           "\"\<YearShort\>\"", ",", " ", "\"\</\>\"", ",", " ", 
            "\"\<MonthNameShort\>\""}], 
           RowBox[{"(*", 
            RowBox[{",", "\"\</\>\"", ",", "\"\<Day\>\""}], "*)"}], "}"}]}], 
         "\[IndentingNewLine]", ",", " ", 
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
   "\[IndentingNewLine]", 
   RowBox[{"Clear", "[", "syms", "]"}], "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{"syms", " ", "=", " ", 
     RowBox[{"DeleteDuplicates", "[", " ", 
      RowBox[{"tx", "[", 
       RowBox[{"[", 
        RowBox[{"All", ",", " ", "1"}], "]"}], "]"}], " ", "]"}]}], "  ", 
    ";"}], "\[IndentingNewLine]", "\[IndentingNewLine]", 
   RowBox[{"(*", " ", 
    RowBox[{"FIXME", ":", " ", 
     RowBox[{"cjr", "-", 
      RowBox[{
       RowBox[{"b", ".", "to"}], " ", "date", " ", "range", " ", "not", " ", 
       RowBox[{"working", "."}]}]}]}], " ", "*)"}], "\[IndentingNewLine]", 
   RowBox[{"Clear", "[", "t", "]"}], "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{"t", " ", "=", " ", 
     RowBox[{"Table", "[", " ", 
      RowBox[{
       RowBox[{"Select", "[", " ", 
        RowBox[{"tx", ",", " ", 
         RowBox[{
          RowBox[{
           RowBox[{"#", "[", 
            RowBox[{"[", "1", "]"}], "]"}], " ", "\[Equal]", " ", 
           RowBox[{"syms", "[", 
            RowBox[{"[", "i", "]"}], "]"}]}], " ", "&"}]}], " ", "]"}], " ", 
       ",", " ", 
       RowBox[{"{", 
        RowBox[{"i", ",", " ", 
         RowBox[{"Length", "[", "syms", "]"}]}], "}"}]}], "  ", "]"}]}], " ", 
    ";"}], "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{"Table", "[", " ", 
     RowBox[{
      RowBox[{"historyAndPoints", "[", " ", 
       RowBox[{"t", "[", 
        RowBox[{"[", "i", "]"}], "]"}], " ", "]"}], ",", " ", 
      RowBox[{"{", 
       RowBox[{"i", ",", " ", 
        RowBox[{"Length", "[", "t", "]"}]}], "}"}]}], "]"}], " ", "//", " ", 
    "GraphicsColumn"}], "\[IndentingNewLine]", "\[IndentingNewLine]", 
   "\[IndentingNewLine]", "\[IndentingNewLine]"}]}]], "Input",
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
   3.5944105686160564`*^9, {3.597359156016228*^9, 3.5973591909702272`*^9}, {
   3.597359290355912*^9, 3.597359297122299*^9}, {3.597359331197248*^9, 
   3.5973593511313877`*^9}, {3.5973596373097563`*^9, 3.597359691113834*^9}, {
   3.5973598282926803`*^9, 3.597359849287881*^9}, {3.597360150475108*^9, 
   3.5973602611384373`*^9}, {3.5973603001786704`*^9, 3.597360339565923*^9}, {
   3.597360580921728*^9, 3.597360589024192*^9}, {3.5973611483951855`*^9, 
   3.597361194418818*^9}, {3.5973612583964777`*^9, 3.597361322416139*^9}, {
   3.5973614134063435`*^9, 3.5973614458742003`*^9}, 3.5973614836443605`*^9, {
   3.597361980103757*^9, 3.5973620436523914`*^9}, {3.597362097205455*^9, 
   3.5973621394408703`*^9}, {3.5973622303770714`*^9, 3.597362230896101*^9}, 
   3.5973625801590776`*^9, {3.597362688125253*^9, 3.597362707112339*^9}, {
   3.5973637137939177`*^9, 3.5973637142359433`*^9}}],

Cell[BoxData[
 GraphicsBox[{{}, {InsetBox[
     GraphicsBox[{{}, GraphicsComplexBox[CompressedData["
1:eJx9ln9o1GUYwK8fZA3Uk4YmQzuxaMGoQ5P6Y+Ldopyr4DSyLZc7DBdJ5eWi
6MQ6sAVJsBOy2v7xcGoQaYPAtrad3+32093oCqyIolti1NeIxZpZKfY+n+d9
d/OfvjDGh/f7fd/ned7n/by3asfuLTuvDwQCWfMn/80TuXLKj07mzVNVHzFc
2PuZH10rzw0NwoHjhnmzCIcLhre1Dc5W9sHxfwz/trl7Zeu/cPqObj+6vuyb
zsT6p4RDnY4XbhOOTRrOzVY2tg3yfuqvbjt/iPe7VvX40YR8kIKLjxh+STgD
Z/7sse8HmK+w8nPLQcYDmwx3ygSfwuEWwzubzbMU9v4wfFGWP8T60xW9dv40
HHq4137fAscShjvazbOJ+qQ6em29Lm8VDi7vc/E/KRx50HAzD5x4wfCbF0yB
zsKZ9w3XTiXLT96l9R7oc/nB8Ui/H91iynlhCZze1W/3owX23nXj12n8WTf+
jMb/q+PVcNezWT96VZ43+L540PDtrSagexgP9hneW35y41QHHPk5a/Nt4P1E
8LSNz4MDbYaT8r5PPuEew3ebcs4+AMfPnbbfv0Z90gs9u/5Vxr37PdsPjzFf
7JRn65fSfigabqVeGn/ZgB+91SyXPKr9cJ9hKd/GATjYZFi6rWwB/ZD5YcD2
1xHtjwWDfpR2TGp/rDF8lP3V/mg0vEbqpf0Sf8uwlHfzJXj6xpwflXSTL2s/
35uz9dB+jTXk7Pu1rJfan7P91Qp3nXD8RCP1rRqy/fEKnNg6ZOPz4UxqyMZf
Axc+GnL78TTxnx1y/Q+nHx/2o4Py/k+wt2/YjndtJ/4Ph209D8Ghr9x4AY5d
Hrb5lTdR3+SIHwVfhIPHRmz/ntf4vxi55vwl/nYc0fhXj9p6fACHj4zafpyB
4/lRG88xOH1x1H4fI/7pujG7/iI4NT7mzhfcNTNm9y8HF1eM235eRD7B2nFX
T8Yje8bdeYML04aL0j9fsn6g4oztz08YDz9k+Bb5vgOO7zYs7V35jta7/Yzt
v4Nw6LYJlz8cq5mw5+ES86eed1yp8b83Yft/UuP3Jtx8xJ/YkHe+pf6Z5/Ku
HnAg68Y9OPxL3p5fH8bnuj+cH3zOfoxp/4vPqc8B7X/xOfnWaf+Lz1nvdRif
63oln0s2jU3kh881P+1/8fm884jPT9BPMD5nvpSeV/E5/bBO+118ruszjs/p
7z0wPhf95qthfE49r+h5rXC+Xq7xis/VPyWfaz7qmzmff4yf8Dn51OMnfM75
Xac+FJ8z3WEYnzN+vuRzvq/V+1F8rv2h9+Ou/mt8h8/Zj46Sz9mveo1ffK77
r/ej+Jz887yPz9mPxepD8TnbUQ3jc87LDO/jc73P9H4Xn7P/3xE/Ptd66H0k
Pqe+/dQHn3Of3qTxi8+Z/5zWd87nel+XfD6r8YvPv5b+eFX7QXxOfr/D+Fz7
V30iPtd8tD/E55yXJXp+xefMf6f2h/hc0mt/G8bn1OcwjM/hDTA+J99G/X0i
Pmf5sJ7f/Y49GJ+rH9UvVc7HGRifw0HOMz7XfGB8zn6X6XkWn7P+o4zjc/pr
WZz6is853wd4H59zfxyH8Tn5/Ajjc92vks81fubD58y/GMbnet+of+Z8niIf
fA6HGMfn9Oe36se887v6GJ8T31K9f+qcv6dLPtd+KPmc/ZzifXxOP63V+0d8
zv5/zzg+13prPcXn+CWr96P4vFry36fxis/pt2XMh8+5L7ZrvcXnnIcevR/F
59pvej/WOO7T+MXn5H8z4/hcf/9q/J7z+wrqi8/1/oDxOes3w/ic/d0B43N+
37Xr/ojP5/2eYnwe/+/4fxRcj0M=
        "], {{{}, 
          {Hue[0.67, 0.6, 0.6], Opacity[0.2], EdgeForm[None], 
           GraphicsGroupBox[{
             PolygonBox[{{1, 189, 38, 37, 36, 35, 34, 33, 32, 31, 30, 29, 28, 
              27, 26, 25, 24, 23, 22, 21, 20, 19, 18, 17, 16, 15, 14, 13, 12, 
              11, 10, 9, 8, 7, 6, 5, 4, 3, 2}}], 
             PolygonBox[{{38, 190, 93, 92, 91, 90, 89, 88, 87, 86, 85, 84, 83,
               82, 81, 80, 79, 78, 77, 76, 75, 74, 73, 72, 71, 70, 69, 68, 67,
               66, 65, 64, 63, 62, 61, 60, 59, 58, 57, 56, 55, 54, 53, 52, 51,
               50, 49, 48, 47, 46, 45, 44, 43, 42, 41, 40, 39}}]}]}, {}, 
          {Hue[0.9060679774997897, 0.6, 0.6], Opacity[0.2], EdgeForm[None], 
           GraphicsGroupBox[
            PolygonBox[{{94, 187, 188, 186, 185, 184, 183, 182, 181, 180, 179,
              178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166,
              165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153,
              152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140,
              139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127,
              126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114,
              113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101,
              100, 99, 98, 97, 96, 95}}]]}, {}, {}, {}, {}, {}, {}}, {{}, {}, 
          {RGBColor[0.24720000000000014`, 0.24, 0.6], 
           LineBox[{1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17,
             18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 
            34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 
            50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 
            66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 
            82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93}]}, 
          {RGBColor[0.6, 0.24, 0.4428931686004542], 
           LineBox[{94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106,
             107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 
            120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 
            133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 
            146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 
            159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 
            172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 
            185, 186}]}}}], {}},
      AspectRatio->NCache[GoldenRatio^(-1), 0.6180339887498948],
      AxesOrigin->{3585600000, 90.},
      Epilog->{
        TagBox[
         TooltipBox[
          InsetBox[
           FormBox["9", TraditionalForm], {3588019200, 92.75}], 
          
          TemplateBox[{
           "92.75`", "\" ($\"", "834.75`", "\" -> $\"", "1195.29`", "\")\""}, 
           "RowDefault"]], Annotation[#, 
          Row[{92.75, " ($", 834.75, " -> $", 1195.29, ")"}], "Tooltip"]& ], 
        TagBox[
         TooltipBox[
          InsetBox[
           FormBox["17", TraditionalForm], {3593980800, 116.92}], 
          
          TemplateBox[{
           "116.92`", "\" ($\"", "1987.64`", "\" -> $\"", "2257.77`", 
            "\")\""}, "RowDefault"]], Annotation[#, 
          Row[{116.92, " ($", 1987.64, " -> $", 2257.77, ")"}], "Tooltip"]& ]},
      Frame->True,
      FrameLabel->{None, None},
      FrameTicks->{{Automatic, Automatic}, {{{3586982400, 
           FormBox["\"13/Sep\"", TraditionalForm], {
           0.020601132958329826`, 0}}, {3589574400, 
           FormBox["\"13/Oct\"", TraditionalForm], {
           0.020601132958329826`, 0}}, {3592252800, 
           FormBox["\"13/Nov\"", TraditionalForm], {
           0.020601132958329826`, 0}}, {3594844800, 
           FormBox["\"13/Dec\"", TraditionalForm], {
           0.020601132958329826`, 0}}, {3585513600, 
           FormBox["\"\"", TraditionalForm], {0.012360679774997897`, 0}}, {
          3588192000, 
           FormBox["\"\"", TraditionalForm], {0.012360679774997897`, 0}}, {
          3590784000, 
           FormBox["\"\"", TraditionalForm], {0.012360679774997897`, 0}}, {
          3593462400, 
           FormBox["\"\"", TraditionalForm], {0.012360679774997897`, 0}}, {
          3596054400, 
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
           FormBox["\"\"", TraditionalForm], {0.012360679774997897`, 0}}, {
          3596054400, 
           FormBox["\"\"", TraditionalForm], {0.012360679774997897`, 0}}}}},
      GridLines->{{{3586982400, 
          GrayLevel[0.8]}, {3589574400, 
          GrayLevel[0.8]}, {3592252800, 
          GrayLevel[0.8]}, {3594844800, 
          GrayLevel[0.8]}}, None},
      Method->{},
      PlotLabel->FormBox[
        TemplateBox[{
         "\"SSYS\"", "\" Market value = $\"", "3453.06`", 
          "\" Book value = $\"", "2822.3900000000003`"}, "RowDefault"], 
        TraditionalForm],
      PlotRange->{{3585600000, 3.5970912*^9}, {89.9, 134.}},
      PlotRangeClipping->True,
      PlotRangePadding->{{229824., 229824.}, {0.8819999999999999, 
       0.8819999999999999}},
      Ticks->None], {189., -120.14580741297955`}, 
     ImageScaled[{0.5, 0.5}], {360., 222.49223594996212`}], InsetBox[
     GraphicsBox[{{}, GraphicsComplexBox[CompressedData["
1:eJx9lmtoXEUUgNdaCEaESCuklMYNBdtioUstFsTQvYa6efjYJLUlmNal0hYl
2lX/2BRhfbQ/ROyW+kqpuBqjWLQsLWhi2mSzu3nu9mExSgV1S6AktwEjbSPi
c8535nqTP14I4cu5M3PmzJzvpnrn3uZdiwKBwEnzI7/NE+zqcZ2a8u+74u/X
hQ1Hz3q8HU78ZvhE5HLH0jfhdHWv6+RurG47tLNeuNTY642HU9cN15nXT5Q1
CF+o+tp19i81M9wHB+oNP8cAOPSCYQl3fMv4zK+G4xJPw7PL+1ynZKaL3MT7
wQf77PvXiUfjhiWd7ITme9SwLB+5DFcsO+06H8uEk3C41nDVgatNPTsYH3/G
MJUIM3/qXcO75RnW/Ae9eAyOhc+4zj3ytMDJpw3LbmpehzNvGY6QQCP59xs+
2mmefXBw+oyt3yI4vaff5lfL+NJhw809JsPbiVecNjzTZP7QCIev9C9YP14x
YOs9ovU9ZLiLAmp9ewfs+Z1jv7HJAZvv8Qj535ZxHcHybVr/jYaL8qxlfPRL
w1LeG6vhRCmzoB7p8kF7vj9o/hsMr5f8Tmn+Twza/V+CUz8O2v2/8hD1Lcu6
zllZb4Z4YH3Wmw8OtWXteb7M+7GDWXs+V+DZxTnX+UeeTXBwneFb2BDjo605
O//nD5P/qzmbfwpOf2FYrkNV9yPUd23eddhu26PUd2ve1rs2Sv6JvK1XWRP5
H8/bfMeJBybydr4JONkyZM/3CO9nXhqy9z/VTP6fDtn1ZuDgRcMsv66F/P8c
svkm4VLH8AKu6B62+a1kfPi8x0tYL/77sL0fq+DUyhFbz2reD300YvOJEY8V
DffQIHBybsT22xbNt2HU3s8P4cTYqNdvcPraqK3PV3BpxZjnA823bsw7X833
+TF7PzrhC7OG75Tlf4IDy8ftfBsZH9o87vUrHNs77vkKTnZ68RIcrCzY+zKn
9XygYPdXuYX82wv2fhSJp98p2PVWES9lCja/aTi+qWjrsXgr9XyqaPe35zHy
7S/a+t9MPDRVtPO3w/i2fN79FN+S3yf0H77V92F8y/nMan+Jb9lfQn0lvuV+
Pcl8+Jb57tJ+ql/I+Fb7UX0lvr0ff8P4VvvX9y3nfVh9IL7luFrVB+Jb6vke
+eLbNXKhp2B8+x1CUl+Jb1l/mfpAfKv3TfMX3+r+YXxLP22G8S3nvYJ+x7f0
/8++b7W+6oNp7/2/fN/CNTC+pd9+8X1LPXO+b9nPKIxv1ZdaX/Hta5LfLq2v
+Fb7RfOf9HiDfi/Et+z3Ra3/f76d8X1L/ZcwHt+SboPmL77l/DOav/iW8e3s
F99y/07B+JZ++tv3rX6P8R++5f0jxPHtnAj/DuL4lvN4A8a3j0vBjsG+b10Y
3+p9xafzfItP8S3xJIxvOd8D+BLfch4fqK/Et+Qz4ftW9w/jW76PfeqrFs+X
MfoZ33L/D8L4Vv2sfrjovZ/xfUu9qrT/xbeMv5f+xrfwbuL4Vj8XjMe33O9W
/IVvmT+o/hLfsp9u4viW9Z6F8S3ncc33LfevkvH4lvFvq6/Et+z/D/0+iG/1
e+L7lvM7BuNb7l8djG81Xxjfar+xP3xL/DMY38JrYHzL+vthfMt+EzC+1fP3
fTsvjm8Zfyv1xbd8T76B8S33JeP7VvOF8S3j795GvlNe/BLs+1b/3yE+j/83
/i/13lCJ
        "], {{{}, 
          {Hue[0.67, 0.6, 0.6], Opacity[0.2], EdgeForm[None], 
           GraphicsGroupBox[{
             PolygonBox[{{1, 177, 32, 31, 30, 29, 28, 27, 26, 25, 24, 23, 22, 
              21, 20, 19, 18, 17, 16, 15, 14, 13, 12, 11, 10, 9, 8, 7, 6, 5, 
              4, 3, 2}}], 
             PolygonBox[{{32, 178, 87, 86, 85, 84, 83, 82, 81, 80, 79, 78, 77,
               76, 75, 74, 73, 72, 71, 70, 69, 68, 67, 66, 65, 64, 63, 62, 61,
               60, 59, 58, 57, 56, 55, 54, 53, 52, 51, 50, 49, 48, 47, 46, 45,
               44, 43, 42, 41, 40, 39, 38, 37, 36, 35, 34, 33}}]}]}, {}, 
          {Hue[0.9060679774997897, 0.6, 0.6], Opacity[0.2], EdgeForm[None], 
           GraphicsGroupBox[
            PolygonBox[{{88, 175, 176, 174, 173, 172, 171, 170, 169, 168, 167,
              166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154,
              153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141,
              140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128,
              127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115,
              114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102,
              101, 100, 99, 98, 97, 96, 95, 94, 93, 92, 91, 90, 
             89}}]]}, {}, {}, {}, {}, {}, {}}, {{}, {}, 
          {RGBColor[0.24720000000000014`, 0.24, 0.6], 
           LineBox[{1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17,
             18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 
            34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 
            50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 
            66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 
            82, 83, 84, 85, 86, 87}]}, 
          {RGBColor[0.6, 0.24, 0.4428931686004542], 
           LineBox[{88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 
            102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 
            115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 
            128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 
            141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 
            154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 
            167, 168, 169, 170, 171, 172, 173, 174}]}}}], {}},
      AspectRatio->NCache[GoldenRatio^(-1), 0.6180339887498948],
      AxesOrigin->{3586464000, 48.},
      Epilog->{
        TagBox[
         TooltipBox[
          InsetBox[
           FormBox["20", TraditionalForm], {3588883200, 53.26}], 
          TemplateBox[{
           "53.26`", "\" ($\"", "1065.2`", "\" -> $\"", "1908.`", "\")\""}, 
           "RowDefault"]], Annotation[#, 
          Row[{53.26, " ($", 1065.2, " -> $", 1908., ")"}], "Tooltip"]& ], 
        TagBox[
         TooltipBox[
          InsetBox[
           FormBox["27", TraditionalForm], {3593980800, 72.6}], 
          
          TemplateBox[{
           "72.6`", "\" ($\"", "1960.1999999999998`", "\" -> $\"", "2575.8`", 
            "\")\""}, "RowDefault"]], Annotation[#, 
          Row[{72.6, " ($", 1960.1999999999998`, " -> $", 2575.8, ")"}], 
          "Tooltip"]& ]},
      Frame->True,
      FrameLabel->{None, None},
      FrameTicks->{{Automatic, Automatic}, {{{3586982400, 
           FormBox["\"13/Sep\"", TraditionalForm], {
           0.020601132958329826`, 0}}, {3589574400, 
           FormBox["\"13/Oct\"", TraditionalForm], {
           0.020601132958329826`, 0}}, {3592252800, 
           FormBox["\"13/Nov\"", TraditionalForm], {
           0.020601132958329826`, 0}}, {3594844800, 
           FormBox["\"13/Dec\"", TraditionalForm], {
           0.020601132958329826`, 0}}, {3588192000, 
           FormBox["\"\"", TraditionalForm], {0.012360679774997897`, 0}}, {
          3590784000, 
           FormBox["\"\"", TraditionalForm], {0.012360679774997897`, 0}}, {
          3593462400, 
           FormBox["\"\"", TraditionalForm], {0.012360679774997897`, 0}}, {
          3596054400, 
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
           FormBox["\"\"", TraditionalForm], {0.012360679774997897`, 0}}, {
          3596054400, 
           FormBox["\"\"", TraditionalForm], {0.012360679774997897`, 0}}}}},
      GridLines->{{{3586982400, 
          GrayLevel[0.8]}, {3589574400, 
          GrayLevel[0.8]}, {3592252800, 
          GrayLevel[0.8]}, {3594844800, 
          GrayLevel[0.8]}}, None},
      Method->{},
      PlotLabel->FormBox[
        TemplateBox[{
         "\"DDD\"", "\" Market value = $\"", "4483.8`", "\" Book value = $\"",
           "3025.3999999999996`"}, "RowDefault"], TraditionalForm],
      PlotRange->{{3586464000, 3.5970912*^9}, {47.33, 95.4}},
      PlotRangeClipping->True,
      PlotRangePadding->{{212544., 212544.}, {0.9614000000000001, 
       0.9614000000000001}},
      Ticks->None], {189., -360.43742223893867`}, 
     ImageScaled[{0.5, 0.5}], {360., 222.49223594996215`}], InsetBox[
     GraphicsBox[{{}, GraphicsComplexBox[CompressedData["
1:eJx1lU1IVFEUxwcJhCHKIMiKdET6AsEht03Olx+ZyWhQCEKWGASBY7UyioEo
IgRdFbZJtBCEwl2uZHS0ccaJIihpEYxBIVOLASkSgrrnd+57o4seiPx413v/
55z7e9ZcHujqL/N4PP3mR36bp+LifCH0Jmee9oag4fHPhkcWfh7rqQ8Kvytf
sDwCe04s2PXDJ4X9PS6fEu69b5ide1lf3JEqhK7Ic4T3vvqUfe9pFI51p+zf
17E+cdfwve+ds1WH4ZkXhv/K8xQO1i3a/b7B8fOGn4zJEyJ/wnDr2tDel0cj
5J82nDfYcgn2fFi05+2MCo+eWyqEnsUD3tVUs3Dy9pJTTwv5pwz3cx7se2/4
eI/pyHor+f8YTkl7ytqF80OvCyFzmknQIVzx3LB3dTIeaDtD/reG10p54psO
11DPeG3a9ns39fgn0jZfbZj+5tK23v2a/5fhW3LgAbjYtmz3m2d9ImN4tko6
ynkzG8u2/z7W5w9lbL4sXNFq+KNB72M4eD1j1ye1n8WM02/29xzM2n6Xw/6m
rO1HWPMOZO28muHRsaw9bxr2Va7Y/RNwLLzi5Kf+xLUVZ17wzCOH2+F80uFh
ON6Y27bf+FXDjGOXzn/O4Q7Yv56z+dOsxwftf4C/Fx/YL6/1iw8S37tP9xMf
6Ec388MHXQ+XfEiSDx/ozwSMD+z3ivX40CUD26P1iw8N8tzQ+sUHxnkHxodB
cz0mi1q/+EB/H5IPHzg/2ET+kg8wPnBfb3L/Sz70tQnjQ7WcN3ea/OIDPlbD
+ED9m6zHB+bx4yzzER90Hp30V3zQ/WLkFx+o/wK+4APzmNL84kOAgnRe4sOW
+4wP9GtQ84sPur/6Kz6Q7xP3GR/o5waMD5qXfuAD35+v8BYfYHzQ+6z9FB/4
HjxgP3ygnlXNKz7o9yXi+sD8v3Df8IF6fke2+xCMuD5oPWHXB/Ufxgf9HpV8
0O817/GB+xGLuj5o/qjrg84/6vpAnsqo68OW/w+8/x//A1d5fXw=
        "], {{{}, 
          {Hue[0.67, 0.6, 0.6], Opacity[0.2], EdgeForm[None], 
           GraphicsGroupBox[
            PolygonBox[{{1, 101, 49, 48, 47, 46, 45, 44, 43, 42, 41, 40, 39, 
             38, 37, 36, 35, 34, 33, 32, 31, 30, 29, 28, 27, 26, 25, 24, 23, 
             22, 21, 20, 19, 18, 17, 16, 15, 14, 13, 12, 11, 10, 9, 8, 7, 6, 
             5, 4, 3, 2}}]]}, {}, 
          {Hue[0.9060679774997897, 0.6, 0.6], Opacity[0.2], EdgeForm[None], 
           GraphicsGroupBox[
            PolygonBox[{{50, 99, 100, 98, 97, 96, 95, 94, 93, 92, 91, 90, 89, 
             88, 87, 86, 85, 84, 83, 82, 81, 80, 79, 78, 77, 76, 75, 74, 73, 
             72, 71, 70, 69, 68, 67, 66, 65, 64, 63, 62, 61, 60, 59, 58, 57, 
             56, 55, 54, 53, 52, 51}}]]}, {}, {}, {}, {}, {}, {}}, {{}, {}, 
          {RGBColor[0.24720000000000014`, 0.24, 0.6], 
           LineBox[{1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17,
             18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 
            34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49}]}, 
          {RGBColor[0.6, 0.24, 0.4428931686004542], 
           LineBox[{50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 
            64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 
            80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 
            96, 97, 98}]}}}], {}},
      AspectRatio->NCache[GoldenRatio^(-1), 0.6180339887498948],
      AxesOrigin->{3591043200, 20.},
      Epilog->{
        TagBox[
         TooltipBox[
          InsetBox[
           FormBox["40", TraditionalForm], {3593376000, 51.93}], 
          
          TemplateBox[{
           "51.93`", "\" ($\"", "2077.2`", "\" -> $\"", "1607.6`", "\")\""}, 
           "RowDefault"]], Annotation[#, 
          Row[{51.93, " ($", 2077.2, " -> $", 1607.6, ")"}], "Tooltip"]& ]},
      Frame->True,
      FrameLabel->{None, None},
      FrameTicks->{{Automatic, Automatic}, {{{3592252800, 
           FormBox["\"13/Nov\"", TraditionalForm], {
           0.020601132958329826`, 0}}, {3594844800, 
           FormBox["\"13/Dec\"", TraditionalForm], {
           0.020601132958329826`, 0}}, {3593462400, 
           FormBox["\"\"", TraditionalForm], {0.012360679774997897`, 0}}, {
          3596054400, 
           FormBox["\"\"", TraditionalForm], {0.012360679774997897`, 0}}}, {{
          3592252800, 
           FormBox["\"\"", TraditionalForm], {0.020601132958329826`, 0}}, {
          3594844800, 
           FormBox["\"\"", TraditionalForm], {0.020601132958329826`, 0}}, {
          3593462400, 
           FormBox["\"\"", TraditionalForm], {0.012360679774997897`, 0}}, {
          3596054400, 
           FormBox["\"\"", TraditionalForm], {0.012360679774997897`, 0}}}}},
      GridLines->{{{3592252800, 
          GrayLevel[0.8]}, {3594844800, 
          GrayLevel[0.8]}}, None},
      Method->{},
      PlotLabel->FormBox[
        TemplateBox[{
         "\"VJET\"", "\" Market value = $\"", "1607.6`", 
          "\" Book value = $\"", "2077.2`"}, "RowDefault"], TraditionalForm],
      PlotRange->{{3591043200, 3.5970912*^9}, {19.3, 70.}},
      PlotRangeClipping->True,
      PlotRangePadding->{{120960., 120960.}, {1.014, 1.014}},
      Ticks->None], {189., -600.7290370648977}, 
     ImageScaled[{0.5, 0.5}], {360., 222.49223594996215`}], InsetBox[
     GraphicsBox[{{}, GraphicsComplexBox[CompressedData["
1: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
fV9bqa/4x/9HINf/wf/v9f8DhxREqg==
        "], {{{}, 
          {Hue[0.67, 0.6, 0.6], Opacity[0.2], EdgeForm[None], 
           GraphicsGroupBox[{
             PolygonBox[{{1, 793, 14, 13, 12, 11, 10, 9, 8, 7, 6, 5, 4, 3, 
              2}}], PolygonBox[CompressedData["
1:eJwl0lV4FgQUBuB/dI+OkaO7u7tzdMPo2ujujW6UUFpBaVAwwASDblA6FJTu
BoWXh4v3fN/NuTonNDwyLCJGIBAIYpyRRIbEDARm6NOZxlSmMJlJRBPFRCYw
Puj97ljGMJpRjGQEwxnGUIYwmEEMZAD9iSSCfvSlD73pRU960J1udKUL4XSm
Ex3pQHva0ZY2tKYVLWlBc5rRlDCa0JhGNKQB9alHXepQm1rUpAbVqUZVqlCZ
SlSkAuUpR1nKUJpSlKQExSlGUYpQmEIUpAD5yUde8pCbXOQkB9nJRlZCyUJm
MpGRDKQnhHSkJQ2pSUVKUpCcZCQl+N3tSUwiEpKA+MQjLnGITSxiEoOgoPfP
80b8z3+85hUvecFznvGUJzzmEQ95wH3ucZc73OYWN7nBdf7lH65xlb/5iytc
5hIXucB5znGWM5zmT/7gFCc5wXGOcZQjHOYQBznAfvaxlz38zm/8yi/sZhc/
8xM/8gPf8x072cG3fMPXfMV2tvElX7CVLWxmExvZwHrWsZbP+Yw1rOZTPmEV
K1nBcpaxlCV8zEcsZhELWcCHfMB85jGXOcxmFjOZwXSmMZUpTGYS0UQxkQmM
ZxxjGcNoRjGSEQxnGEMZwmAGMZAB9CeSCPrRlz70phc96UF3utGVLoTTmU50
pAPtaUdb2tCaVrSkBc1pRlPCaEJjGtGQBtSnHnWpQ21qUZMaVKcaValCZSpR
kQqUpxxlKUNpSlGSEhSnGEUpQmEKUZAC5CcfeclDbnKRkxxkJxtZCSULmclE
RjKQnhDSkZY0pCYVKUlBcpKRlGDeAopqqAY=
              "]]}]}, {}, 
          {Hue[0.9060679774997897, 0.6, 0.6], Opacity[0.2], EdgeForm[None], 
           GraphicsGroupBox[PolygonBox[CompressedData["
1:eJwl1WecDwQcBvD/3VmHM+/sEhWVUJGMoiFtRRGy0kQlezYkI9ln3tnb2fts
Z+/jnD0OZx93OHv29enF93n7e/N8nl+xZq1q/xIcCASC6C/6kT8kEChAPiII
Jy95yE0ucpKDMLKTjayEkoXMZCIjGQghmCACPHL0IQ+4zz3ucofb3OImN7hO
Ote4yhXSSOUyl0jhIhc4zznOcobTJHOKk5wgieMc4yhHOMwhDnKA/ewjkb0k
sIfdxLOLnexgO9vYyhY2s4mNbGA964hjLWtYzSpWsoLlLCOWpSxhMYtYyALm
M4+5zGE2s5hJDDOYzjSmMoXJTGIiExjPOMYyhtFEE8UoRjKC4QxjKJEMYTCD
GMgA+tOPf+nLP/ShN73oyd/04C+68yd/8Du/0Y2udKEznehIB9rTjra0oTW/
0orHxf2Zn2hJC5rzIz/wPd/xLd/QjK9pShMa04iGfEUD6lOPL6lLHb7gc2pT
i8/4lJp8wsd8xId8wPu8Rw3epTrv8DZv8SbVqMobvE4VKlOJirxGBV6lPOV4
hZd5ibKUoTQvUooXeJ7nKEkJnuUZnqY4xXiKojzJExShMIUoSAHyk48IwslL
HnKTi5zkIIzsZCMroWQhM5nISAZCCCaIAI/szEMecJ973OUOt7nFTW5wnXSu
cZUrpJHKZS6RwkUucJ5znOUMp0nmFCc5QRLHOcZRjnCYQxzkAPvZRyJ7SWAP
u4lnFzvZwXa2sZUtbGYTG9nAetYRx1rWsJpVrGQFy1lGLEtZwmIWsZAFzGce
c5nDbGYxkxhmMJ1pTGUKk5nERCYwnnGMZQyjiSaKUYxkBMMZxlAiGcJgBjGQ
AUH//4z/AGGY3y0=
             "]]]}, {}, {}, {}, {}, {}, {}}, {{}, {}, 
          {RGBColor[0.24720000000000014`, 0.24, 0.6], LineBox[CompressedData["
1:eJwl1WV7EAQUBeCN7u4eMLobRneMGt0wOkdvozuluztsQWmUMOhUGoMw6FAa
hXePH95zf8E5Nyg8ImxAYEBAwEwRc2MRmzjEJR7xSUBCEpGYJCQlGclJQUpS
kZo0pCUd6clARjKRmSxkJRvZyUEQOclFboLJQ17ykZ8CFKQQhSlCUYpRnBKU
pBSlKUNZylGeCoRQkUpUpgpVqUZ1alCTWtSmDnWpR30aEEpDGtGYJjQljGY0
pwUtaUVr2tCWdrSnAx3pRGe6EE5XutGdHvSkF73pQ1/60Z8BRDCQQQxmCEMZ
xnAiiSKaEYxkFKMZw1jGMZ4JTGQSk5nCVKYxnRnM5ANmMZs5zGUe81nAQhax
mCUsZRnLWcFKVrGaNaxlHevZwEY2sZktbOVDPuJjPuFTPuNzvmAb2/mSr9jB
Tnaxmz3sZR/7+ZpvOMBBDnGYb/mO7/mBIxzlGMc5wUlOcZoznOUc5/mRn7jA
RS5xmStc5RrX+Zlf+JXfuMFNbnGb3/mDP/mLO9zlHvd5wEMe8ZgnPOVv/uEZ
z3nBS17xmje85V/+4x0x5Q8kFrGJQ1ziEZ8EJCQRiUlCUpKRnBSkJBWpSUNa
0pGeDGQkE5nJQlaykZ0cBJGTXOQmmDzkJR/5KUBBClGYIhSlGMUpQUlKUZoy
lKUc5alACBWpRGWqUJVqVKcGNalFbepQl3rUpwGhNKQRjWlCU8JoRnNa0JJW
tKYNbWlHezrQkU50pgvhdKUb3elBT3rRmz70pR/9iRnvCAYyiMEMYSjDGE4k
UUQzgpGMYjRjGMs4xjOBiUxiMlOYyjSmMyPw/1/xHilYqE4=
            "]]}, 
          {RGBColor[0.6, 0.24, 0.4428931686004542], LineBox[CompressedData["
1:eJwV02V7FgQAheGXjY7RKUgqIiLSSEkrYYCAgKhIdxk0qHQz2OgYXaO7u0aM
7u7ujsHth/v5A+c6WRu0rd4mViAQGCSDGcJQhjGcUEYwkjDCGcVoxjCWcYxn
AhOZxGQimMJUpjGdGcxkFrOZw1zmEcl8FrCQRSxmCUtZxnJWsJJVrGYNa1nH
ejawkU1sZgtb2cZ2drCTXewmij3sZR/7ieYABznEYY5wlGMc5wQnOcVpznCW
c5znAhe5xGWucJVrXOcGN7nFbe5wl3vc5wEPecRjnvCUZzznBS95xWve8JYY
3v0/alAgEIsggolNHOISj/gkICGJSEwSQkhKMpKTgpSkIjVpSEs60pOBD8hI
Jj4kM1nISjayk4OP+JicfEIuPiU3n5GHz8nLF+QjPwUoSCEKU4SifEkxilOC
kpTiK0pThrKUozwVqMjXfEMlKlOFqnzLd3zPD1SjOj9Sg5rU4idqU4e6/Ew9
fuFXfqM+v9OAhjSiMU1oSjOa04KWtKI1bWhLO9rTgT/4k7/4m450ojNd6Eo3
utODnvzDv/xHL3rTh770oz8DGMggBjOEoQxjOKGMYCRhhDOK0YxhLOMYzwQm
MonJRDCFqUxjOjOYySxmM4e5zCOS+SxgIYtYzBKWsozlrGAlq1jNGtayjvVs
YCOb2MwWtrKN7exgJ7vYTRR72Ms+9hPNAQ5yiMMc4SjHOM4JTnKK05zhLOc4
zwUuconLXOEq17jODW5yi9vc4S73uM8DHvKIxzzhKc94zgte8orXvOEtMbwj
EOz/BBFMbOIQl3jEJwEJSURikhBCUpKRnBSkJBWpScN75DLe9A==
            "]]}}}], {}},
      AspectRatio->NCache[GoldenRatio^(-1), 0.6180339887498948],
      AxesOrigin->{3549571200, 20.400000000000002`},
      Epilog->{
        TagBox[
         TooltipBox[
          InsetBox[
           FormBox["40", TraditionalForm], {3551990400, 22.5}], 
          
          TemplateBox[{
           "22.5`", "\" ($\"", "900.`", "\" -> $\"", "1033.5860627177701`", 
            "\")\""}, "RowDefault"]], Annotation[#, 
          Row[{22.5, " ($", 900., " -> $", 1033.5860627177701`, ")"}], 
          "Tooltip"]& ]},
      Frame->True,
      FrameLabel->{None, None},
      FrameTicks->{{Automatic, Automatic}, {{{3550089600, 
           FormBox["\"12/Jul\"", TraditionalForm]}, {3565987200, 
           FormBox["\"13/Jan\"", TraditionalForm]}, {3581625600, 
           FormBox["\"13/Jul\"", TraditionalForm]}, {3597523200, 
           FormBox["\"14/Jan\"", TraditionalForm]}, {3555446400, 
           FormBox["\"\"", TraditionalForm]}, {3560716800, 
           FormBox["\"\"", TraditionalForm]}, {3571084800, 
           FormBox["\"\"", TraditionalForm]}, {3576355200, 
           FormBox["\"\"", TraditionalForm]}, {3586982400, 
           FormBox["\"\"", TraditionalForm]}, {3592252800, 
           FormBox["\"\"", TraditionalForm]}}, {{3550089600, 
           FormBox["\"\"", TraditionalForm]}, {3565987200, 
           FormBox["\"\"", TraditionalForm]}, {3581625600, 
           FormBox["\"\"", TraditionalForm]}, {3597523200, 
           FormBox["\"\"", TraditionalForm]}, {3555446400, 
           FormBox["\"\"", TraditionalForm]}, {3560716800, 
           FormBox["\"\"", TraditionalForm]}, {3571084800, 
           FormBox["\"\"", TraditionalForm]}, {3576355200, 
           FormBox["\"\"", TraditionalForm]}, {3586982400, 
           FormBox["\"\"", TraditionalForm]}, {3592252800, 
           FormBox["\"\"", TraditionalForm]}}}},
      GridLines->{{{3550089600, 
          GrayLevel[0.8]}, {3565987200, 
          GrayLevel[0.8]}, {3581625600, 
          GrayLevel[0.8]}, {3597523200, 
          GrayLevel[0.8]}}, None},
      Method->{},
      PlotLabel->FormBox[
        TemplateBox[{
         "\"CJR-B.TO\"", "\" Market value = $\"", "1033.5860627177701`", 
          "\" Book value = $\"", "900.`"}, "RowDefault"], TraditionalForm],
      PlotRange->{{3549571200, 3.5970912*^9}, {20.478094382022473`, 
        25.83965156794425}},
      PlotRangeClipping->True,
      PlotRangePadding->{{950400., 950400.}, {0.10723114371843558`, 
       0.10723114371843558`}},
      Ticks->None], {189., -841.0206518908569}, 
     ImageScaled[{0.5, 0.5}], {360., 222.49223594996204`}]}, {}},
  ContentSelectable->True,
  ImageSize->{460.424379275924, Automatic},
  PlotRangePadding->{6, 5}]], "Output",
 CellChangeTimes->{
  3.594402914371374*^9, 3.5944102121426673`*^9, 3.5944109002440243`*^9, 
   3.59447087154375*^9, 3.59528400086897*^9, 3.5973409048265686`*^9, 
   3.5973410788735237`*^9, 3.5973596465762863`*^9, {3.597359850351942*^9, 
   3.59735986500278*^9}, 3.597360262991544*^9, {3.59736117556874*^9, 
   3.5973611956088862`*^9}, 3.597361362714444*^9, {3.5973614282101903`*^9, 
   3.5973614468732576`*^9}, 3.5973621469583006`*^9, 3.597362578528985*^9, 
   3.5973637184331837`*^9}]
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
Cell[1485, 35, 16444, 374, 1666, "Input"],
Cell[17932, 411, 37689, 673, 1504, "Output"]
}, Open  ]]
}
]
*)

(* End of internal cache information *)

(* NotebookSignature uw01DZc52bLyCDKRICPUv5Ty *)
