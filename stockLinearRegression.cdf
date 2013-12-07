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
NotebookDataLength[     43875,        972]
NotebookOptionsPosition[     44333,        966]
NotebookOutlinePosition[     44676,        981]
CellTagsIndexPosition[     44633,        978]
WindowFrame->Normal*)

(* Beginning of Notebook Content *)
Notebook[{

Cell[CellGroupData[{
Cell[BoxData[{
 RowBox[{"ClearAll", "[", " ", "fDataTimeInSec", " ", 
  "]"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{"fDataTimeInSec", "[", "fData_", "]"}], " ", ":=", 
  RowBox[{
   RowBox[{
    RowBox[{"{", 
     RowBox[{
      RowBox[{
       RowBox[{"AbsoluteTime", "[", 
        RowBox[{"#", "[", 
         RowBox[{"[", "1", "]"}], "]"}], "]"}], "-", 
       RowBox[{"AbsoluteTime", "[", 
        RowBox[{
         RowBox[{"fData", "[", 
          RowBox[{"[", "1", "]"}], "]"}], "[", 
         RowBox[{"[", "1", "]"}], "]"}], "]"}]}], ",", 
      RowBox[{"#", "[", 
       RowBox[{"[", "2", "]"}], "]"}]}], "}"}], " ", "&"}], "/@", " ", 
   "fData"}]}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{
   RowBox[{
    RowBox[{"fDataTimeInSec", "::", "usage"}], " ", "=", " ", 
    "\"\<Take FinancialData[] output and convert all the Date's to time in \
seconds relative to first entry for subsequent manipulation\>\""}], " ", 
   ";"}], "\[IndentingNewLine]"}], "\[IndentingNewLine]", 
 RowBox[{"ClearAll", "[", " ", "fDataAndLinearModel", 
  "]"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{
   RowBox[{"fDataAndLinearModel", "::", "usage"}], " ", "=", " ", 
   "\"\<For a given stock symbol, and some number of weeks, compute a least \
squares linear fit from the 'close, low and high' values for the days in that \
range.\>\""}], " ", ";"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{
   RowBox[{"fDataAndLinearModel", "[", 
    RowBox[{"symbol_", ",", " ", "nWeeks_"}], "]"}], " ", ":=", " ", 
   RowBox[{"Module", "[", " ", 
    RowBox[{
     RowBox[{"{", 
      RowBox[{
      "dateRange", ",", " ", "min", ",", " ", "max", ",", " ", "close", ",", 
       " ", "diffList", ",", "zeroList", ",", "dateFormData", ",", " ", 
       "secondsFormData", ",", " ", "lmDateForm", ",", " ", "lm", ",", " ", 
       "secondsFormLinearModel", ",", " ", 
       "secondsFormDifferenceFromLinearModel", ",", " ", 
       "dateFormLinearModel", ",", " ", "len"}], "}"}], ",", 
     "\[IndentingNewLine]", 
     RowBox[{
      RowBox[{"dateRange", " ", "=", " ", 
       RowBox[{
        RowBox[{"DateList", "[", "]"}], " ", "-", " ", 
        RowBox[{"{", 
         RowBox[{"0", ",", " ", "0", ",", " ", "0", ",", " ", 
          RowBox[{"24", "*", "7", "*", "nWeeks"}], ",", " ", "0", ",", " ", 
          "0"}], "}"}]}]}], " ", ";", "\[IndentingNewLine]", 
      RowBox[{"min", " ", "=", " ", 
       RowBox[{"FinancialData", "[", 
        RowBox[{"symbol", ",", " ", "\"\<Low\>\"", ",", " ", "dateRange"}], 
        "]"}]}], " ", ";", "\[IndentingNewLine]", 
      RowBox[{"max", " ", "=", " ", 
       RowBox[{"FinancialData", "[", 
        RowBox[{"symbol", ",", " ", "\"\<High\>\"", ",", " ", "dateRange"}], 
        "]"}]}], " ", ";", "\[IndentingNewLine]", 
      RowBox[{"close", " ", "=", " ", 
       RowBox[{"FinancialData", "[", 
        RowBox[{"symbol", ",", " ", "dateRange"}], "]"}]}], " ", ";", 
      "\[IndentingNewLine]", 
      RowBox[{"dateFormData", " ", "=", " ", 
       RowBox[{"Sort", "[", 
        RowBox[{"Flatten", "[", 
         RowBox[{
          RowBox[{"{", 
           RowBox[{"min", ",", " ", "max", ",", " ", "close"}], "}"}], ",", 
          " ", "1"}], "]"}], "]"}]}], " ", ";", "\[IndentingNewLine]", 
      "\[IndentingNewLine]", 
      RowBox[{"secondsFormData", " ", "=", " ", 
       RowBox[{"fDataTimeInSec", "[", " ", "dateFormData", " ", "]"}]}], " ", 
      ";", "\[IndentingNewLine]", "\[IndentingNewLine]", 
      RowBox[{"lm", " ", "=", " ", 
       RowBox[{
        RowBox[{
         RowBox[{"Normal", "[", 
          RowBox[{"LinearModelFit", "[", " ", 
           RowBox[{"secondsFormData", ",", "x", ",", " ", "x"}], "]"}], "]"}],
          " ", "/.", " ", 
         RowBox[{
          RowBox[{"a_", "+", " ", 
           RowBox[{"b_", " ", "x"}]}], " ", "\[Rule]", " ", 
          RowBox[{"(", 
           RowBox[{"a", " ", "+", " ", 
            RowBox[{"b", " ", "#"}]}], ")"}]}]}], "&"}]}], " ", ";", 
      "\[IndentingNewLine]", "\[IndentingNewLine]", 
      RowBox[{"secondsFormLinearModel", " ", "=", " ", 
       RowBox[{
        RowBox[{
         RowBox[{"{", 
          RowBox[{
           RowBox[{"#", "[", 
            RowBox[{"[", "1", "]"}], "]"}], ",", 
           RowBox[{"lm", "[", 
            RowBox[{"#", "[", 
             RowBox[{"[", "1", "]"}], "]"}], "]"}]}], "}"}], " ", "&"}], "/@",
         " ", "secondsFormData"}]}], " ", ";", "\[IndentingNewLine]", 
      RowBox[{"secondsFormDifferenceFromLinearModel", " ", "=", " ", 
       RowBox[{
        RowBox[{
         RowBox[{"{", 
          RowBox[{
           RowBox[{"#", "[", 
            RowBox[{"[", "1", "]"}], "]"}], ",", 
           RowBox[{
            RowBox[{"#", "[", 
             RowBox[{"[", "2", "]"}], "]"}], " ", "-", " ", 
            RowBox[{"lm", "[", 
             RowBox[{"#", "[", 
              RowBox[{"[", "1", "]"}], "]"}], "]"}]}]}], "}"}], " ", "&"}], "/@",
         " ", "secondsFormData"}]}], " ", ";", "\[IndentingNewLine]", 
      "\[IndentingNewLine]", 
      RowBox[{"dateFormLinearModel", " ", "=", " ", 
       RowBox[{"Table", "[", " ", 
        RowBox[{
         RowBox[{"{", 
          RowBox[{
           RowBox[{
            RowBox[{"dateFormData", "[", 
             RowBox[{"[", "i", "]"}], "]"}], "[", 
            RowBox[{"[", "1", "]"}], "]"}], ",", " ", 
           RowBox[{
            RowBox[{"secondsFormLinearModel", "[", 
             RowBox[{"[", "i", "]"}], "]"}], "[", 
            RowBox[{"[", "2", "]"}], "]"}]}], "}"}], ",", " ", 
         RowBox[{"{", 
          RowBox[{"i", ",", " ", "1", ",", " ", 
           RowBox[{"Length", "[", "dateFormData", "]"}]}], "}"}]}], "]"}]}], 
      " ", ";", "\[IndentingNewLine]", "\[IndentingNewLine]", 
      RowBox[{
       RowBox[{"diffList", "[", "l_", "]"}], " ", ":=", 
       RowBox[{"Table", "[", " ", "\[IndentingNewLine]", 
        RowBox[{
         RowBox[{"{", "\[IndentingNewLine]", 
          RowBox[{
           RowBox[{
            RowBox[{"l", "[", 
             RowBox[{"[", "i", "]"}], "]"}], "[", 
            RowBox[{"[", "1", "]"}], "]"}], ",", " ", 
           RowBox[{"(*", " ", "date", " ", "*)"}], "\[IndentingNewLine]", 
           RowBox[{
            RowBox[{
             RowBox[{"l", "[", 
              RowBox[{"[", "i", "]"}], "]"}], "[", 
             RowBox[{"[", "2", "]"}], "]"}], " ", "-", 
            RowBox[{"lm", "[", 
             RowBox[{
              RowBox[{"AbsoluteTime", "[", 
               RowBox[{
                RowBox[{"l", "[", 
                 RowBox[{"[", "i", "]"}], "]"}], "[", 
                RowBox[{"[", "1", "]"}], "]"}], "]"}], " ", "-", " ", 
              RowBox[{"AbsoluteTime", "[", 
               RowBox[{
                RowBox[{"l", "[", 
                 RowBox[{"[", "1", "]"}], "]"}], "[", 
                RowBox[{"[", "1", "]"}], "]"}], "]"}]}], "]"}]}]}], " ", 
          RowBox[{"(*", " ", 
           RowBox[{"difference", " ", "from", " ", "linear", " ", "fit"}], 
           " ", "*)"}], "\[IndentingNewLine]", "}"}], ",", " ", 
         RowBox[{"{", 
          RowBox[{"i", ",", " ", "1", ",", " ", 
           RowBox[{"Length", "[", "l", "]"}]}], "}"}]}], "]"}]}], "  ", ";", 
      "\[IndentingNewLine]", "\[IndentingNewLine]", 
      RowBox[{"len", " ", "=", " ", 
       RowBox[{"Length", "[", "min", "]"}]}], " ", ";", "\[IndentingNewLine]",
       "\[IndentingNewLine]", 
      RowBox[{
       RowBox[{"zeroList", "[", "l_", "]"}], " ", ":=", 
       RowBox[{"Table", "[", " ", "\[IndentingNewLine]", 
        RowBox[{
         RowBox[{"{", "\[IndentingNewLine]", 
          RowBox[{
           RowBox[{
            RowBox[{"l", "[", 
             RowBox[{"[", "i", "]"}], "]"}], "[", 
            RowBox[{"[", "1", "]"}], "]"}], ",", " ", 
           RowBox[{"(*", " ", "date", " ", "*)"}], "\[IndentingNewLine]", 
           "0"}], "\[IndentingNewLine]", "}"}], ",", " ", 
         RowBox[{"{", 
          RowBox[{"i", ",", " ", "1", ",", " ", "len"}], "}"}]}], "]"}]}], 
      "  ", ";", "\[IndentingNewLine]", "\[IndentingNewLine]", 
      RowBox[{"{", "\[IndentingNewLine]", 
       RowBox[{
        RowBox[{"\"\<company\>\"", " ", "\[Rule]", " ", 
         RowBox[{"FinancialData", "[", " ", 
          RowBox[{"symbol", ",", " ", "\"\<Company\>\""}], " ", "]"}]}], ",", 
        "\[IndentingNewLine]", 
        RowBox[{"\"\<symbol\>\"", " ", "\[Rule]", " ", "symbol"}], ",", 
        "\[IndentingNewLine]", 
        RowBox[{"\"\<dMin\>\"", "\[Rule]", 
         RowBox[{"diffList", "[", "min", "]"}]}], ",", "\[IndentingNewLine]", 
        RowBox[{"\"\<dMax\>\"", "\[Rule]", 
         RowBox[{"diffList", "[", "max", "]"}]}], ",", "\[IndentingNewLine]", 
        RowBox[{"\"\<dClose\>\"", "\[Rule]", 
         RowBox[{"diffList", "[", "close", "]"}]}], ",", 
        "\[IndentingNewLine]", 
        RowBox[{"\"\<dZero\>\"", "\[Rule]", 
         RowBox[{"zeroList", "[", "min", "]"}]}], ",", "\[IndentingNewLine]", 
        RowBox[{"\"\<min\>\"", "\[Rule]", "min"}], ",", "\[IndentingNewLine]", 
        RowBox[{"\"\<max\>\"", "\[Rule]", "max"}], ",", "\[IndentingNewLine]", 
        RowBox[{"\"\<close\>\"", "\[Rule]", "close"}], ",", 
        "\[IndentingNewLine]", 
        RowBox[{"\"\<model\>\"", "\[Rule]", "dateFormLinearModel"}], ",", 
        "\[IndentingNewLine]", 
        RowBox[{"\"\<lm\>\"", "\[Rule]", "lm"}], ",", "\[IndentingNewLine]", 
        RowBox[{"\"\<nweeks\>\"", " ", "\[Rule]", " ", "nWeeks"}], ",", 
        "\[IndentingNewLine]", 
        RowBox[{"\"\<len\>\"", " ", "\[Rule]", " ", 
         RowBox[{"Length", "[", "min", "]"}]}], ",", "\[IndentingNewLine]", 
        RowBox[{"\"\<vMin\>\"", " ", "\[Rule]", " ", 
         RowBox[{"Min", "[", 
          RowBox[{"Table", "[", 
           RowBox[{
            RowBox[{
             RowBox[{"min", "[", 
              RowBox[{"[", "i", "]"}], "]"}], "[", 
             RowBox[{"[", "2", "]"}], "]"}], ",", " ", 
            RowBox[{"{", 
             RowBox[{"i", ",", " ", "1", ",", " ", "len"}], "}"}]}], "]"}], 
          " ", "]"}]}], ",", "\[IndentingNewLine]", 
        RowBox[{"\"\<vMax\>\"", " ", "\[Rule]", " ", 
         RowBox[{"Max", "[", 
          RowBox[{"Table", "[", 
           RowBox[{
            RowBox[{
             RowBox[{"max", "[", 
              RowBox[{"[", "i", "]"}], "]"}], "[", 
             RowBox[{"[", "2", "]"}], "]"}], ",", " ", 
            RowBox[{"{", 
             RowBox[{"i", ",", " ", "1", ",", " ", "len"}], "}"}]}], "]"}], 
          " ", "]"}]}]}], "\[IndentingNewLine]", "}"}]}]}], 
    "\[IndentingNewLine]", "]"}]}], 
  "\[IndentingNewLine]"}], "\[IndentingNewLine]", 
 RowBox[{"ClearAll", "[", " ", "plotLinearDifference", " ", 
  "]"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{
   RowBox[{
    RowBox[{"plotLinearDifference", "::", "usage"}], " ", "=", " ", 
    "\"\<Plot the difference from that linear fit for the date range, \
consuming results from fDataAndLinearModel[].  Also plot the unscaled values \
of 'close, low, high' against the linear fit.\>\""}], " ", ";"}], 
  "\[IndentingNewLine]"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{
   RowBox[{"plotLinearDifference", "[", " ", 
    RowBox[{"calc_", ",", " ", "lable_"}], " ", "]"}], " ", ":=", " ", 
   "\[IndentingNewLine]", 
   RowBox[{"Module", "[", 
    RowBox[{
     RowBox[{"{", 
      RowBox[{"len", ",", " ", "min", ",", " ", "v"}], "}"}], ",", 
     "\[IndentingNewLine]", "\[IndentingNewLine]", 
     RowBox[{
      RowBox[{
       RowBox[{"v", "[", "s_", "]"}], " ", ":=", " ", 
       RowBox[{"s", " ", "/.", " ", "calc"}]}], " ", ";", 
      "\[IndentingNewLine]", "\[IndentingNewLine]", 
      RowBox[{"min", " ", "=", " ", 
       RowBox[{"v", "[", "\"\<min\>\"", "]"}]}], ";", "\[IndentingNewLine]", 
      RowBox[{"len", " ", "=", " ", 
       RowBox[{"v", "[", "\"\<len\>\"", "]"}]}], " ", ";", 
      "\[IndentingNewLine]", "\[IndentingNewLine]", 
      RowBox[{"(*", 
       RowBox[{
        RowBox[{
        "ListPlot", "[", " ", "secondsFormDifferenceFromLinearModel", " ", 
         "]"}], ","}], "*)"}], "\[IndentingNewLine]", 
      RowBox[{"(*", 
       RowBox[{
        RowBox[{"Show", "[", "\[IndentingNewLine]", 
         RowBox[{
          RowBox[{"ListPlot", "[", " ", 
           RowBox[{"secondsFormData", ",", 
            RowBox[{"PlotLabel", "\[Rule]", " ", "lable"}]}], " ", "]"}], ",",
           "\[IndentingNewLine]", 
          RowBox[{"ListPlot", "[", " ", 
           RowBox[{"secondsFormLinearModel", ",", 
            RowBox[{"Filling", "\[Rule]", "Bottom"}], ",", " ", 
            RowBox[{"Joined", "\[Rule]", "True"}]}], " ", "]"}]}], 
         "\[IndentingNewLine]", "]"}], ","}], "*)"}], "\[IndentingNewLine]", 
      RowBox[{"DateListPlot", "[", 
       RowBox[{
        RowBox[{"{", 
         RowBox[{
          RowBox[{"v", "[", "\"\<dMin\>\"", "]"}], ",", " ", 
          RowBox[{"v", "[", "\"\<dMax\>\"", "]"}], ",", " ", 
          RowBox[{"v", "[", "\"\<dClose\>\"", "]"}], ",", " ", 
          RowBox[{"v", "[", "\"\<dZero\>\"", "]"}]}], "}"}], ",", 
        "\[IndentingNewLine]", 
        RowBox[{"Filling", "\[Rule]", "Bottom"}], ",", " ", 
        "\[IndentingNewLine]", 
        RowBox[{"Joined", "\[Rule]", "True"}], ",", "\[IndentingNewLine]", 
        RowBox[{"PlotLabel", "\[Rule]", " ", 
         RowBox[{"Row", "[", 
          RowBox[{"{", 
           RowBox[{
           "\"\<Lin diff: \>\"", ",", "lable", ",", " ", "\"\< (\>\"", ",", 
            RowBox[{"v", "[", "\"\<nweeks\>\"", " ", "]"}], ",", " ", 
            "\"\< weeks range)\>\""}], "}"}], " ", "]"}]}], ",", 
        "\[IndentingNewLine]", 
        RowBox[{"PlotRange", " ", "\[Rule]", " ", "Full"}], ",", 
        "\[IndentingNewLine]", 
        RowBox[{"PlotLegends", "\[Rule]", 
         RowBox[{"Placed", "[", 
          RowBox[{
           RowBox[{"{", "\[IndentingNewLine]", 
            RowBox[{
             RowBox[{"Row", "[", 
              RowBox[{"{", 
               RowBox[{"\"\<Low = \>\"", ",", " ", 
                RowBox[{
                 RowBox[{"min", "[", 
                  RowBox[{"[", "len", "]"}], "]"}], "[", 
                 RowBox[{"[", "2", "]"}], "]"}]}], "}"}], "]"}], ",", " ", 
             "\[IndentingNewLine]", 
             RowBox[{"Row", "[", 
              RowBox[{"{", 
               RowBox[{"\"\<High = \>\"", ",", " ", 
                RowBox[{
                 RowBox[{
                  RowBox[{"v", "[", "\"\<max\>\"", " ", "]"}], "[", 
                  RowBox[{"[", "len", "]"}], "]"}], "[", 
                 RowBox[{"[", "2", "]"}], "]"}]}], "}"}], "]"}], ",", " ", 
             "\[IndentingNewLine]", 
             RowBox[{"Row", "[", 
              RowBox[{"{", 
               RowBox[{"\"\<Close = \>\"", ",", " ", 
                RowBox[{
                 RowBox[{
                  RowBox[{"v", "[", "\"\<close\>\"", " ", "]"}], "[", 
                  RowBox[{"[", "len", "]"}], "]"}], "[", 
                 RowBox[{"[", "2", "]"}], "]"}]}], "}"}], "]"}], ",", " ", 
             "\[IndentingNewLine]", 
             RowBox[{"Row", "[", 
              RowBox[{"{", "\"\<Linear fit\>\"", "}"}], "]"}]}], 
            "\[IndentingNewLine]", "}"}], ",", " ", "Right"}], 
          RowBox[{"(*", 
           RowBox[{"{", 
            RowBox[{"Left", ",", " ", "Top"}], "}"}], "*)"}], "]"}]}]}], 
       "\[IndentingNewLine]", "]"}]}]}], "\[IndentingNewLine]", "]"}]}], 
  "\[IndentingNewLine]"}], "\[IndentingNewLine]", 
 RowBox[{"Clear", "[", " ", "plotDistAgainstLinearModel", " ", 
  "]"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{
   RowBox[{
    RowBox[{"plotDistAgainstLinearModel", "::", "usage"}], " ", "=", " ", 
    "\"\<Plot the unscaled values of 'close, low, high' against the linear \
fit, consuming results from fDataAndLinearModel[]\>\""}], " ", ";"}], 
  "\[IndentingNewLine]"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{
   RowBox[{"plotDistAgainstLinearModel", "[", " ", 
    RowBox[{"calc_", ",", " ", "lable_", ",", " ", "nWeeks_"}], " ", "]"}], 
   " ", ":=", " ", 
   RowBox[{"Module", "[", 
    RowBox[{
     RowBox[{"{", 
      RowBox[{
      "min", ",", " ", "max", ",", " ", "close", ",", " ", "len", ",", " ", 
       "dMin", ",", " ", "vMin", ",", " ", "vMax", ",", " ", "lm", ",", " ", 
       "dr", ",", " ", "dateFormLinearModel", ",", "  ", "horizonLine", ",", 
       " ", "v"}], "}"}], ",", "\[IndentingNewLine]", "\[IndentingNewLine]", 
     RowBox[{
      RowBox[{
       RowBox[{"v", "[", "s_", "]"}], " ", ":=", " ", 
       RowBox[{"s", " ", "/.", " ", "calc"}]}], " ", ";", 
      "\[IndentingNewLine]", "\[IndentingNewLine]", 
      RowBox[{"min", " ", "=", " ", 
       RowBox[{"v", "[", "\"\<min\>\"", "]"}]}], ";", "\[IndentingNewLine]", 
      RowBox[{"max", " ", "=", " ", 
       RowBox[{"v", "[", "\"\<max\>\"", "]"}]}], ";", "\[IndentingNewLine]", 
      RowBox[{"close", " ", "=", " ", 
       RowBox[{"v", "[", "\"\<close\>\"", "]"}]}], ";", "\[IndentingNewLine]", 
      RowBox[{"len", " ", "=", " ", 
       RowBox[{"v", "[", "\"\<len\>\"", "]"}]}], " ", ";", 
      "\[IndentingNewLine]", 
      RowBox[{"dMin", " ", "=", " ", 
       RowBox[{"v", "[", "\"\<dMin\>\"", "]"}]}], " ", ";", 
      "\[IndentingNewLine]", 
      RowBox[{"vMin", " ", "=", " ", 
       RowBox[{"v", "[", "\"\<vMin\>\"", "]"}]}], " ", ";", 
      "\[IndentingNewLine]", 
      RowBox[{"vMax", " ", "=", " ", 
       RowBox[{"v", "[", "\"\<vMax\>\"", "]"}]}], " ", ";", 
      "\[IndentingNewLine]", 
      RowBox[{"lm", " ", "=", " ", 
       RowBox[{"v", "[", " ", "\"\<lm\>\"", " ", "]"}]}], " ", ";", 
      "\[IndentingNewLine]", "\[IndentingNewLine]", 
      RowBox[{"dr", " ", "=", " ", 
       RowBox[{
        RowBox[{"DateList", "[", "]"}], " ", "+", " ", 
        RowBox[{"{", 
         RowBox[{"0", ",", " ", "0", ",", " ", "0", ",", " ", 
          RowBox[{"24", "*", "7", "*", 
           RowBox[{"nWeeks", "/", "2"}]}], ",", " ", "0", ",", " ", "0"}], 
         "}"}]}]}], " ", ";", "\[IndentingNewLine]", "\[IndentingNewLine]", 
      RowBox[{"dateFormLinearModel", " ", "=", " ", 
       RowBox[{
        RowBox[{"{", "\[IndentingNewLine]", 
         RowBox[{
          RowBox[{"{", 
           RowBox[{
            RowBox[{
             RowBox[{"dMin", "[", 
              RowBox[{"[", "1", "]"}], "]"}], "[", 
             RowBox[{"[", "1", "]"}], "]"}], ",", " ", 
            RowBox[{
             RowBox[{"lm", "[", "0", "]"}], "+", "#"}]}], "}"}], ",", 
          "\[IndentingNewLine]", 
          RowBox[{"{", 
           RowBox[{"dr", ",", " ", 
            RowBox[{
             RowBox[{"lm", "[", 
              RowBox[{
               RowBox[{"AbsoluteTime", "[", "dr", "]"}], "-", 
               RowBox[{"AbsoluteTime", "[", 
                RowBox[{
                 RowBox[{"dMin", "[", 
                  RowBox[{"[", "1", "]"}], "]"}], "[", 
                 RowBox[{"[", "1", "]"}], "]"}], "]"}]}], "]"}], " ", "+", 
             " ", "#"}]}], "}"}]}], "\[IndentingNewLine]", "}"}], " ", 
        "&"}]}], " ", ";", "\[IndentingNewLine]", "\[IndentingNewLine]", 
      RowBox[{"horizonLine", " ", "=", " ", 
       RowBox[{
        RowBox[{"{", "\[IndentingNewLine]", 
         RowBox[{
          RowBox[{"{", 
           RowBox[{
            RowBox[{
             RowBox[{"dMin", "[", 
              RowBox[{"[", "1", "]"}], "]"}], "[", 
             RowBox[{"[", "1", "]"}], "]"}], ",", " ", "#"}], "}"}], ",", 
          "\[IndentingNewLine]", 
          RowBox[{"{", 
           RowBox[{"dr", ",", " ", "#"}], "}"}]}], "\[IndentingNewLine]", 
         "}"}], " ", "&"}]}], " ", ";", "\[IndentingNewLine]", 
      "\[IndentingNewLine]", 
      RowBox[{"Manipulate", "[", "\[IndentingNewLine]", 
       RowBox[{
        RowBox[{"Show", "[", 
         RowBox[{"{", "\[IndentingNewLine]", 
          RowBox[{"DateListPlot", "[", 
           RowBox[{
            RowBox[{"{", 
             RowBox[{"min", ",", " ", "max", ",", " ", "close", ",", " ", 
              RowBox[{"dateFormLinearModel", "[", "0", "]"}], ",", " ", 
              RowBox[{"dateFormLinearModel", "[", "o", "]"}], ",", " ", 
              RowBox[{"horizonLine", "[", "h", "]"}]}], "}"}], ",", 
            "\[IndentingNewLine]", 
            RowBox[{"Filling", "\[Rule]", "Bottom"}], ",", " ", 
            "\[IndentingNewLine]", 
            RowBox[{"Joined", "\[Rule]", "True"}], ",", "\[IndentingNewLine]", 
            RowBox[{"PlotLabel", "\[Rule]", " ", 
             RowBox[{"Row", "[", 
              RowBox[{"{", 
               RowBox[{
               "lable", ",", " ", "\"\< (\>\"", ",", "nWeeks", ",", " ", 
                "\"\< weeks range)\>\""}], "}"}], " ", "]"}]}], ",", 
            "\[IndentingNewLine]", 
            RowBox[{"PlotRange", " ", "\[Rule]", " ", 
             RowBox[{"{", 
              RowBox[{
               RowBox[{"{", 
                RowBox[{"Automatic", ",", " ", "dr"}], "}"}], ",", " ", 
               RowBox[{"{", 
                RowBox[{"Automatic", ",", " ", 
                 RowBox[{"vMax", " ", "+", " ", 
                  RowBox[{
                   RowBox[{"(", 
                    RowBox[{"vMax", "-", "vMin"}], ")"}], "/", "3"}]}]}], 
                "}"}]}], "}"}]}]}], "\[IndentingNewLine]", "]"}], 
          RowBox[{"(*", 
           RowBox[{",", "\[IndentingNewLine]", 
            RowBox[{"Plot", "[", "]"}]}], "*)"}], "\[IndentingNewLine]", 
          "}"}], "]"}], "\[IndentingNewLine]", ",", 
        RowBox[{"{", 
         RowBox[{
          RowBox[{"{", 
           RowBox[{"o", ",", " ", 
            RowBox[{"-", "0.5"}], ",", " ", 
            "\"\<offset from linear fit\>\""}], "}"}], ",", " ", 
          RowBox[{"-", "5"}], ",", " ", "5", ",", " ", 
          RowBox[{"Appearance", " ", "\[Rule]", " ", "\"\<Labeled\>\""}]}], 
         "}"}], " ", 
        RowBox[{"(*", " ", 
         RowBox[{"5", " ", "here", " ", "should", " ", "be", " ", 
          RowBox[{"abs", "[", 
           RowBox[{
           "biggest", " ", "dist", " ", "from", " ", "linear", " ", "fit"}], 
           "]"}]}], " ", "*)"}], "\[IndentingNewLine]", ",", 
        RowBox[{"{", 
         RowBox[{
          RowBox[{"{", 
           RowBox[{"h", ",", " ", 
            RowBox[{
             RowBox[{"close", "[", 
              RowBox[{"[", "len", "]"}], "]"}], "[", 
             RowBox[{"[", "2", "]"}], "]"}], ",", " ", 
            "\"\<price horizon\>\""}], "}"}], ",", " ", "vMin", ",", " ", 
          RowBox[{"vMax", " ", "+", " ", 
           RowBox[{
            RowBox[{"(", 
             RowBox[{"vMax", "-", "vMin"}], ")"}], "/", "3"}]}], ",", " ", 
          RowBox[{"Appearance", " ", "\[Rule]", " ", "\"\<Labeled\>\""}]}], 
         "}"}]}], "\[IndentingNewLine]", "]"}]}]}], "\[IndentingNewLine]", 
    "]"}]}], "\[IndentingNewLine]"}], "\[IndentingNewLine]", 
 RowBox[{"Clear", "[", 
  RowBox[{
  "ssys", ",", " ", "ddd", ",", " ", "vjet", ",", " ", "ibm", ",", " ", "dis",
    ",", " ", "nw"}], "]"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{"nw", " ", "=", " ", "8"}], " ", ";"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{
   RowBox[{"ssys", " ", "=", " ", 
    RowBox[{"fDataAndLinearModel", "[", " ", 
     RowBox[{"\"\<ssys\>\"", ",", " ", "nw"}], " ", "]"}]}], " ", ";"}], 
  "\[IndentingNewLine]", 
  RowBox[{"(*", 
   RowBox[{
    RowBox[{"ddd", " ", "=", " ", 
     RowBox[{"fDataAndLinearModel", "[", " ", 
      RowBox[{"\"\<ddd\>\"", ",", " ", "nw"}], " ", "]"}]}], " ", ";", 
    "\[IndentingNewLine]", 
    RowBox[{"vjet", " ", "=", " ", 
     RowBox[{"fDataAndLinearModel", "[", " ", 
      RowBox[{"\"\<vjet\>\"", ",", " ", "nw"}], " ", "]"}]}], " ", ";", 
    "\[IndentingNewLine]", 
    RowBox[{"ibm", " ", "=", " ", 
     RowBox[{"fDataAndLinearModel", "[", " ", 
      RowBox[{"\"\<IBM\>\"", ",", " ", "nw"}], " ", "]"}]}], " ", ";", 
    "\[IndentingNewLine]", 
    RowBox[{"dis", " ", "=", " ", 
     RowBox[{"fDataAndLinearModel", "[", " ", 
      RowBox[{"\"\<DIS\>\"", ",", " ", "nw"}], " ", "]"}]}], " ", ";"}], 
   "\[IndentingNewLine]", "*)"}]}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{"plotDistAgainstLinearModel", "[", " ", 
   RowBox[{"ssys", ",", " ", "\"\<Stratasys\>\"", ",", " ", "nw"}], " ", 
   "]"}], "\[IndentingNewLine]", 
  RowBox[{"(*", 
   RowBox[{
    RowBox[{"plotDistAgainstLinearModel", "[", " ", 
     RowBox[{"ddd", ",", " ", "\"\<3D Systems\>\"", ",", " ", "nw"}], " ", 
     "]"}], "\[IndentingNewLine]", 
    RowBox[{"plotDistAgainstLinearModel", "[", " ", 
     RowBox[{"vjet", ",", " ", "\"\<Voxeljet\>\"", ",", " ", "nw"}], " ", 
     "]"}], "\[IndentingNewLine]", 
    RowBox[{"plotDistAgainstLinearModel", "[", " ", 
     RowBox[{"ibm", ",", " ", "\"\<IBM\>\"", ",", " ", "nw"}], " ", "]"}], 
    "\[IndentingNewLine]", 
    RowBox[{"plotDistAgainstLinearModel", "[", " ", 
     RowBox[{"dis", ",", " ", "\"\<Disney\>\"", ",", " ", "nw"}], " ", 
     "]"}]}], "*)"}], "\[IndentingNewLine]", "\[IndentingNewLine]", 
  RowBox[{"(*", 
   RowBox[{"Module", "[", 
    RowBox[{
     RowBox[{"{", "data", "}"}], ",", "\[IndentingNewLine]", 
     RowBox[{
      RowBox[{"data", "=", 
       RowBox[{"FinancialData", "[", 
        RowBox[{"\"\<DIS\>\"", ",", "\"\<OHLCV\>\"", ",", 
         RowBox[{
          RowBox[{"DateList", "[", "]"}], " ", "-", " ", 
          RowBox[{"{", 
           RowBox[{
           "0", ",", "3", ",", " ", "0", ",", " ", "0", ",", " ", "0", ",", 
            " ", "0"}], "}"}]}]}], "]"}]}], ";", "\[IndentingNewLine]", 
      "\[IndentingNewLine]", 
      RowBox[{"TradingChart", "[", 
       RowBox[{"data", ",", " ", 
        RowBox[{"{", 
         RowBox[{"(*", 
          RowBox[{"\"\<Volume\>\"", ","}], "*)"}], 
         "\"\<SimpleMovingAverage\>\"", 
         RowBox[{"(*", 
          RowBox[{",", "\"\<BollingerBands\>\""}], "*)"}], "}"}]}], "]"}]}]}],
     " ", "\[IndentingNewLine]", "]"}], "*)"}], "\[IndentingNewLine]", 
  "\[IndentingNewLine]", 
  RowBox[{"(*", 
   RowBox[{"fDataAndLinearModel", "[", " ", 
    RowBox[{
    "\"\<TOR:CA:CJR.B\>\"", ",", " ", "\"\<Corus\>\"", ",", " ", "52"}], " ", 
    "]"}], "*)"}], "\[IndentingNewLine]", 
  "\[IndentingNewLine]"}], "\[IndentingNewLine]"}], "Input",
 CellChangeTimes->{{3.594155853585126*^9, 3.5941558631266713`*^9}, {
   3.5941559033439713`*^9, 3.594155973928009*^9}, {3.5941560425479336`*^9, 
   3.5941560426169376`*^9}, {3.5941587209831314`*^9, 3.594158733560851*^9}, {
   3.5941589019984846`*^9, 3.5941590466597586`*^9}, {3.5941590909742937`*^9, 
   3.594159094745509*^9}, {3.594159127415378*^9, 3.594159127435379*^9}, {
   3.59415915944621*^9, 3.594159238228716*^9}, {3.594159275560851*^9, 
   3.594159407259384*^9}, {3.5941594420413733`*^9, 3.594159684492241*^9}, {
   3.59415990126964*^9, 3.5941599018786745`*^9}, 3.594160053438343*^9, {
   3.5941681740318146`*^9, 3.594168240782633*^9}, {3.59416831766403*^9, 
   3.5941683483217835`*^9}, {3.5941683822227225`*^9, 
   3.5941684133575034`*^9}, {3.594168448471512*^9, 3.5941684524497395`*^9}, {
   3.594168503001631*^9, 3.5941685362365313`*^9}, {3.5941685680943537`*^9, 
   3.5941686798687468`*^9}, {3.594168725626364*^9, 3.594168860473077*^9}, {
   3.594168899217293*^9, 3.594168916846301*^9}, {3.594168997494914*^9, 
   3.5941690984556885`*^9}, {3.5941691425762124`*^9, 3.594169146957463*^9}, {
   3.5941691878678026`*^9, 3.5941691924210634`*^9}, {3.594169243371978*^9, 
   3.5941693384684167`*^9}, {3.5941693736784306`*^9, 
   3.5941694550420847`*^9}, {3.594169495923423*^9, 3.5941696439218874`*^9}, {
   3.594170173155158*^9, 3.594170259802114*^9}, {3.594170604280817*^9, 
   3.594170615463457*^9}, {3.5941710843542757`*^9, 3.5941711308919373`*^9}, {
   3.5941713215198407`*^9, 3.5941714866312847`*^9}, {3.5941724859584427`*^9, 
   3.594172512605967*^9}, {3.594215608539096*^9, 3.5942156746398764`*^9}, {
   3.5942157075227575`*^9, 3.594215711098962*^9}, {3.5942157825520487`*^9, 
   3.5942159568890204`*^9}, {3.5942160346044655`*^9, 3.59421612910087*^9}, 
   3.59421783968471*^9, {3.59421795034604*^9, 3.594218001773981*^9}, {
   3.5942180391141167`*^9, 3.5942180631154895`*^9}, {3.5942181062269554`*^9, 
   3.5942182858122272`*^9}, {3.5942183189341216`*^9, 
   3.5942184976673446`*^9}, {3.5942185632390947`*^9, 
   3.5942186828269353`*^9}, {3.5942187228312235`*^9, 
   3.5942188895457587`*^9}, {3.5942189790458775`*^9, 
   3.5942189827790914`*^9}, {3.594219020329239*^9, 3.5942190792186074`*^9}, {
   3.594219138346989*^9, 3.5942192694424877`*^9}, {3.594219311057868*^9, 
   3.594219424197339*^9}, {3.5942195854555626`*^9, 3.594219602866558*^9}, {
   3.5942577425597544`*^9, 3.594257742635759*^9}, {3.594410954769143*^9, 
   3.594410955483184*^9}, {3.5952840496307583`*^9, 3.5952840502417936`*^9}, {
   3.595284102487782*^9, 3.5952841987652884`*^9}, 3.5952842568646116`*^9, {
   3.5952842957198343`*^9, 3.595284515368397*^9}, {3.595284557287795*^9, 
   3.5952845990241823`*^9}, {3.5952846448888054`*^9, 
   3.5952847236503105`*^9}, {3.5953286591650534`*^9, 
   3.5953287351183977`*^9}, {3.5953287888024683`*^9, 3.595328793929761*^9}, {
   3.5953288929534254`*^9, 3.595328919145923*^9}, 3.5953294812250724`*^9, {
   3.595329574830426*^9, 3.5953297572918625`*^9}, {3.5953298015413933`*^9, 
   3.595329832495164*^9}, {3.59532987893482*^9, 3.5953300370438633`*^9}, {
   3.5953302752034855`*^9, 3.5953303355739384`*^9}, {3.5953303701879177`*^9, 
   3.5953303734801064`*^9}, {3.595330421920877*^9, 3.595330431494425*^9}, {
   3.595330486680581*^9, 3.595330562293906*^9}, {3.5953305980219493`*^9, 
   3.595330618349112*^9}, {3.5953306608625436`*^9, 3.5953306799136333`*^9}, {
   3.5953347146704082`*^9, 3.5953348532473345`*^9}, {3.5953722384529967`*^9, 
   3.5953723118131924`*^9}, {3.5953723422179317`*^9, 3.595372377712962*^9}, {
   3.5953725197770877`*^9, 3.5953725237973175`*^9}, {3.5953725656347103`*^9, 
   3.595372566044734*^9}, {3.595372616225604*^9, 3.5953726200158205`*^9}, {
   3.595372730007112*^9, 3.5953727751426935`*^9}, {3.595372822740416*^9, 
   3.5953728455567207`*^9}, {3.595372899453804*^9, 3.59537299956553*^9}, {
   3.5953730295972476`*^9, 3.5953730510824766`*^9}, {3.5953730953880105`*^9, 
   3.5953733212979317`*^9}, {3.5953733570639777`*^9, 
   3.5953733594951167`*^9}, {3.5953734244538317`*^9, 
   3.5953734410447807`*^9}, {3.595373489582557*^9, 3.5953736107464876`*^9}, {
   3.595373641089223*^9, 3.595373646607538*^9}, {3.595373688840954*^9, 
   3.595373699558567*^9}, {3.595373742063998*^9, 3.5953737758109283`*^9}, {
   3.5953738290379725`*^9, 3.5953739760263805`*^9}, {3.5953740102673388`*^9, 
   3.595374028347373*^9}, {3.595374073316945*^9, 3.5953740958502336`*^9}, {
   3.5953799726351614`*^9, 3.5953799807896276`*^9}, {3.595380167315296*^9, 
   3.5953802538782473`*^9}, {3.5953802969157085`*^9, 
   3.5953803314156823`*^9}, {3.5953804135923824`*^9, 3.59538052422371*^9}, {
   3.5953805635499597`*^9, 3.5953805799308963`*^9}}],

Cell[BoxData[
 TagBox[
  StyleBox[
   DynamicModuleBox[{$CellContext`h$$ = 121.75, $CellContext`o$$ = -3.17, 
    Typeset`show$$ = True, Typeset`bookmarkList$$ = {}, 
    Typeset`bookmarkMode$$ = "Menu", Typeset`animator$$, Typeset`animvar$$ = 
    1, Typeset`name$$ = "\"untitled\"", Typeset`specs$$ = {{{
       Hold[$CellContext`o$$], -0.5, "offset from linear fit"}, -5, 5}, {{
       Hold[$CellContext`h$$], 117., "price horizon"}, 97.21, 
      146.26333333333332`}}, Typeset`size$$ = {480., {166., 174.}}, 
    Typeset`update$$ = 0, Typeset`initDone$$, Typeset`skipInitDone$$ = 
    True, $CellContext`o$24703$$ = 0, $CellContext`h$24704$$ = 0}, 
    DynamicBox[Manipulate`ManipulateBoxes[
     1, StandardForm, 
      "Variables" :> {$CellContext`h$$ = 117., $CellContext`o$$ = -0.5}, 
      "ControllerVariables" :> {
        Hold[$CellContext`o$$, $CellContext`o$24703$$, 0], 
        Hold[$CellContext`h$$, $CellContext`h$24704$$, 0]}, 
      "OtherVariables" :> {
       Typeset`show$$, Typeset`bookmarkList$$, Typeset`bookmarkMode$$, 
        Typeset`animator$$, Typeset`animvar$$, Typeset`name$$, 
        Typeset`specs$$, Typeset`size$$, Typeset`update$$, Typeset`initDone$$,
         Typeset`skipInitDone$$}, "Body" :> Show[{
         DateListPlot[{$CellContext`min$24702, $CellContext`max$24702, \
$CellContext`close$24702, 
           $CellContext`dateFormLinearModel$24702[0], 
           $CellContext`dateFormLinearModel$24702[$CellContext`o$$], 
           $CellContext`horizonLine$24702[$CellContext`h$$]}, Filling -> 
          Bottom, Joined -> True, PlotLabel -> 
          Row[{"Stratasys", " (", 8, " weeks range)"}], 
          PlotRange -> {{Automatic, $CellContext`dr$24702}, {
            Automatic, $CellContext`vMax$24702 + ($CellContext`vMax$24702 - \
$CellContext`vMin$24702)/3}}]}], 
      "Specifications" :> {{{$CellContext`o$$, -0.5, 
          "offset from linear fit"}, -5, 5, Appearance -> 
         "Labeled"}, {{$CellContext`h$$, 117., "price horizon"}, 97.21, 
         146.26333333333332`, Appearance -> "Labeled"}}, "Options" :> {}, 
      "DefaultOptions" :> {}],
     ImageSizeCache->{543., {245., 252.}},
     SingleEvaluation->True],
    Deinitialization:>None,
    DynamicModuleValues:>{},
    SynchronousInitialization->True,
    UnsavedVariables:>{Typeset`initDone$$},
    UntrackedVariables:>{Typeset`size$$}], "Manipulate",
   Deployed->True,
   StripOnInput->False],
  Manipulate`InterpretManipulate[1]]], "Output",
 CellChangeTimes->{
  3.5953304949410534`*^9, 3.595330567222188*^9, {3.5953306031102405`*^9, 
   3.5953306207322483`*^9}, {3.595330663528696*^9, 3.5953306808106847`*^9}, 
   3.595334742480999*^9, 3.5953347816042366`*^9, 3.5953348584616327`*^9, 
   3.5953704348018336`*^9, 3.5953723823572273`*^9, 3.5953741559226694`*^9, 
   3.5953800845215607`*^9, 3.595380175972791*^9, 3.5953802707122097`*^9, 
   3.5953803115685472`*^9, 3.5953805291279907`*^9}]
}, Open  ]],

Cell[BoxData[
 RowBox[{"\[IndentingNewLine]", 
  RowBox[{"(*", 
   RowBox[{"DynamicModule", "[", 
    RowBox[{
     RowBox[{"{", 
      RowBox[{
       RowBox[{"symbol", " ", "=", " ", "\"\<\>\""}], ",", " ", "foo"}], 
      "}"}], ",", "\[IndentingNewLine]", 
     RowBox[{
      RowBox[{
       RowBox[{"foo", "[", "t_", "]"}], " ", "=", " ", 
       RowBox[{"If", " ", "[", " ", 
        RowBox[{
         RowBox[{"!", 
          RowBox[{"Equal", "[", 
           RowBox[{"t", ",", " ", "\"\<\>\""}], "]"}]}], ",", " ", 
         RowBox[{"{", 
          RowBox[{"t", ",", " ", "\"\<defined\>\""}], "}"}], ",", " ", 
         RowBox[{"{", 
          RowBox[{"t", ",", " ", "\"\<undefined\>\""}], "}"}]}], " ", "]"}]}],
       " ", ";", "\[IndentingNewLine]", 
      RowBox[{"Column", "[", 
       RowBox[{"{", "\[IndentingNewLine]", 
        RowBox[{
         RowBox[{"Row", "[", 
          RowBox[{"{", 
           RowBox[{"\"\<Text field:\>\"", ",", " ", 
            RowBox[{"InputField", "[", 
             RowBox[{
              RowBox[{"Dynamic", "[", "symbol", "]"}], ",", "String"}], 
             "]"}]}], "}"}], "]"}], ",", "\[IndentingNewLine]", 
         RowBox[{"Dynamic", "@", 
          RowBox[{"foo", "[", "symbol", "]"}]}]}], "\[IndentingNewLine]", 
        "}"}], " ", "]"}]}]}], "\[IndentingNewLine]", "]"}], "*)"}], 
  "\[IndentingNewLine]", "\[IndentingNewLine]", 
  RowBox[{"(*", " ", 
   RowBox[{"also", " ", "works"}], " ", "*)"}], "\[IndentingNewLine]", 
  RowBox[{"(*", 
   RowBox[{"DynamicModule", "[", 
    RowBox[{
     RowBox[{"{", 
      RowBox[{"symbol", " ", "=", " ", "\"\<\>\""}], "}"}], ",", 
     "\[IndentingNewLine]", 
     RowBox[{"Column", "[", 
      RowBox[{"{", "\[IndentingNewLine]", 
       RowBox[{
        RowBox[{"Row", "[", 
         RowBox[{"{", 
          RowBox[{"\"\<Text field:\>\"", ",", " ", 
           RowBox[{"InputField", "[", 
            RowBox[{
             RowBox[{"Dynamic", "[", "symbol", "]"}], ",", "String"}], 
            "]"}]}], "}"}], "]"}], ",", "\[IndentingNewLine]", 
        RowBox[{"Dynamic", "@", 
         RowBox[{"If", " ", "[", " ", 
          RowBox[{
           RowBox[{"!", 
            RowBox[{"Equal", "[", 
             RowBox[{"symbol", ",", " ", "\"\<\>\""}], "]"}]}], ",", " ", 
           "symbol", ",", " ", "\"\<\>\""}], " ", "]"}]}]}], 
       "\[IndentingNewLine]", "}"}], " ", "]"}]}], "\[IndentingNewLine]", 
    "]"}], "*)"}], "\[IndentingNewLine]"}]], "Input",
 CellChangeTimes->{
  3.5953315892186427`*^9, {3.595331962706005*^9, 3.5953320717722435`*^9}, 
   3.595332752277166*^9, {3.5953330913305583`*^9, 3.5953332586391277`*^9}, 
   3.595334321426916*^9, {3.595334356027895*^9, 3.595334360009123*^9}, {
   3.595334394260082*^9, 3.595334415888319*^9}, {3.595334512223829*^9, 
   3.595334517563134*^9}, {3.5953346112084904`*^9, 3.595334699263527*^9}, 
   3.595372416974208*^9}],

Cell[BoxData[
 RowBox[{
  RowBox[{"(*", 
   RowBox[{
    RowBox[{
     RowBox[{"Clear", "[", "lm", "]"}], "\[IndentingNewLine]", 
     "\[IndentingNewLine]", 
     RowBox[{"lm", "[", 
      RowBox[{"symbol_", ",", " ", "nWeeks_"}], "]"}]}], " ", ":=", " ", 
    RowBox[{
     RowBox[{
      RowBox[{"Module", "[", " ", 
       RowBox[{
        RowBox[{"{", 
         RowBox[{
         "dateRange", ",", " ", "min", ",", " ", "max", ",", " ", "close", 
          ",", " ", "diffList", ",", "zeroList", ",", "dateFormData", ",", 
          " ", "secondsFormData", ",", " ", "lmDateForm", ",", " ", "lm", ",",
           " ", "secondsFormLinearModel", ",", " ", 
          "secondsFormDifferenceFromLinearModel", ",", " ", 
          "dateFormLinearModel", ",", " ", "len", ",", " ", "lmx"}], "}"}], 
        ",", "\[IndentingNewLine]", 
        RowBox[{
         RowBox[{"dateRange", " ", "=", " ", 
          RowBox[{
           RowBox[{"DateList", "[", "]"}], " ", "-", " ", 
           RowBox[{"{", 
            RowBox[{"0", ",", " ", "0", ",", " ", "0", ",", " ", 
             RowBox[{"24", "*", "7", "*", "nWeeks"}], ",", " ", "0", ",", " ",
              "0"}], "}"}]}]}], " ", ";", "\[IndentingNewLine]", 
         RowBox[{"min", " ", "=", " ", 
          RowBox[{"FinancialData", "[", 
           RowBox[{"symbol", ",", " ", "\"\<Low\>\"", ",", " ", "dateRange"}],
            "]"}]}], " ", ";", "\[IndentingNewLine]", 
         RowBox[{"max", " ", "=", " ", 
          RowBox[{"FinancialData", "[", 
           RowBox[{
           "symbol", ",", " ", "\"\<High\>\"", ",", " ", "dateRange"}], 
           "]"}]}], " ", ";", "\[IndentingNewLine]", 
         RowBox[{"close", " ", "=", " ", 
          RowBox[{"FinancialData", "[", 
           RowBox[{"symbol", ",", " ", "dateRange"}], "]"}]}], " ", ";", 
         "\[IndentingNewLine]", 
         RowBox[{"dateFormData", " ", "=", " ", 
          RowBox[{"Sort", "[", 
           RowBox[{"Flatten", "[", 
            RowBox[{
             RowBox[{"{", 
              RowBox[{"min", ",", " ", "max", ",", " ", "close"}], "}"}], ",",
              " ", "1"}], "]"}], "]"}]}], " ", ";", "\[IndentingNewLine]", 
         "\[IndentingNewLine]", 
         RowBox[{"secondsFormData", " ", "=", " ", 
          RowBox[{"fDataTimeInSec", "[", " ", "dateFormData", " ", "]"}]}], 
         " ", ";", "\[IndentingNewLine]", "\[IndentingNewLine]", 
         "\[IndentingNewLine]", "\[IndentingNewLine]", "lmx"}]}], " ", 
       "\[IndentingNewLine]", "]"}], "\[IndentingNewLine]", 
      RowBox[{"Clear", "[", "u", "]"}], "\[IndentingNewLine]", "u"}], " ", 
     "=", " ", 
     RowBox[{
      RowBox[{"lm", "[", 
       RowBox[{"\"\<ssys\>\"", ",", " ", "2"}], "]"}], " ", 
      "\[IndentingNewLine]", 
      RowBox[{"u", "[", "t", "]"}]}]}]}], "*)"}], "\[IndentingNewLine]", 
  RowBox[{"(*", 
   RowBox[{
    RowBox[{
     RowBox[{"u", "[", "w", "]"}], "/.", " ", 
     RowBox[{
      RowBox[{"a_", " ", "+", " ", 
       RowBox[{"b_", "  ", "w"}]}], "\[Rule]", " ", 
      RowBox[{"(", 
       RowBox[{"a", " ", "+", " ", "b"}], " ", ")"}]}]}], "&"}], "*)"}], 
  "\[IndentingNewLine]"}]], "Input",
 CellChangeTimes->{{3.5953702902225647`*^9, 3.595370302065242*^9}, {
   3.595370343507612*^9, 3.59537035693038*^9}, 3.5953705389727917`*^9, {
   3.5953705909237633`*^9, 3.595370608399763*^9}, {3.595370661459798*^9, 
   3.595370663921939*^9}, {3.5953709011045046`*^9, 3.5953709029526105`*^9}, {
   3.5953710006681995`*^9, 3.595371011292807*^9}, {3.5953712854234867`*^9, 
   3.595371297404172*^9}, {3.595371453377093*^9, 3.595371744341735*^9}, {
   3.5953717804458003`*^9, 3.5953718524589195`*^9}, {3.5953719621951957`*^9, 
   3.595372043866867*^9}, {3.5953721365421677`*^9, 3.595372160796555*^9}, {
   3.5953721923423595`*^9, 3.595372230503542*^9}, 3.5953724294539213`*^9}],

Cell[BoxData[
 RowBox[{
  RowBox[{"DynamicModule", "[", 
   RowBox[{
    RowBox[{"{", 
     RowBox[{
      RowBox[{"nw", " ", "=", " ", "8"}], ",", " ", 
      RowBox[{"symbol", " ", "=", " ", "\"\<\>\""}], ",", " ", "dw", ",", " ",
       "ds"}], "}"}], ",", "\[IndentingNewLine]", 
    RowBox[{
     RowBox[{"dw", " ", "=", " ", 
      RowBox[{"Dynamic", "[", "nw", "]"}]}], " ", ";", "\[IndentingNewLine]", 
     RowBox[{"ds", " ", "=", " ", 
      RowBox[{"Dynamic", "[", "symbol", "]"}]}], " ", ";", 
     "\[IndentingNewLine]", 
     RowBox[{"Row", "[", 
      RowBox[{"{", "\[IndentingNewLine]", 
       RowBox[{
        RowBox[{"Column", "[", 
         RowBox[{"{", "\[IndentingNewLine]", 
          RowBox[{
           RowBox[{"Row", "[", 
            RowBox[{"{", "\[IndentingNewLine]", 
             RowBox[{"\"\<Number of Weeks:\>\"", ",", " ", 
              RowBox[{"Slider", "[", 
               RowBox[{"dw", ",", 
                RowBox[{"{", 
                 RowBox[{"1", ",", "52", ",", "1"}], "}"}]}], "]"}], ",", " ",
               "dw"}], "\[IndentingNewLine]", "}"}], "]"}], ",", 
           "\[IndentingNewLine]", 
           RowBox[{"Row", "[", 
            RowBox[{"{", 
             RowBox[{"\"\<Stock Symbol:\>\"", ",", " ", 
              RowBox[{"InputField", "[", 
               RowBox[{"ds", ",", "String"}], "]"}]}], "}"}], "]"}]}], 
          "\[IndentingNewLine]", "}"}], "]"}], ",", "\[IndentingNewLine]", 
        "\[IndentingNewLine]", 
        RowBox[{"Dynamic", "@", 
         RowBox[{"If", " ", "[", " ", 
          RowBox[{
           RowBox[{"!", 
            RowBox[{"Equal", "[", 
             RowBox[{"symbol", ",", " ", "\"\<\>\""}], "]"}]}], ",", " ", 
           "\[IndentingNewLine]", 
           RowBox[{"plotDistAgainstLinearModel", "[", " ", 
            RowBox[{
             RowBox[{"fDataAndLinearModel", "[", " ", 
              RowBox[{"symbol", ",", " ", "nw"}], " ", "]"}], ",", " ", 
             RowBox[{"FinancialData", "[", " ", 
              RowBox[{"symbol", ",", " ", "\"\<Company\>\""}], " ", "]"}], 
             ",", " ", "nw"}], " ", "]"}], "\[IndentingNewLine]", ",", " ", 
           "\"\<... waiting for stock ticker symbol ...\>\""}], " ", 
          "]"}]}]}], "\[IndentingNewLine]", "}"}], "\[IndentingNewLine]", 
      "]"}]}]}], "\[IndentingNewLine]", "]"}], 
  "\[IndentingNewLine]"}]], "Input"]
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
Cell[1485, 35, 30823, 662, 4041, "Input"],
Cell[32311, 699, 2919, 54, 519, "Output"]
}, Open  ]],
Cell[35245, 756, 2881, 69, 441, "Input"],
Cell[38129, 827, 3818, 81, 566, "Input"],
Cell[41950, 910, 2379, 54, 466, "Input"]
}
]
*)

(* End of internal cache information *)

(* NotebookSignature ov0KenHZ1kbkqD1uyNOa3vgC *)
