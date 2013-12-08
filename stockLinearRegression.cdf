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
NotebookDataLength[     62663,       1259]
NotebookOptionsPosition[     63124,       1252]
NotebookOutlinePosition[     63467,       1267]
CellTagsIndexPosition[     63424,       1264]
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
    RowBox[{"calc_", ",", " ", "o_", ",", " ", "h_"}], " ", "]"}], " ", ":=", 
   " ", 
   RowBox[{"Module", "[", 
    RowBox[{
     RowBox[{"{", 
      RowBox[{
      "min", ",", " ", "max", ",", " ", "close", ",", " ", "len", ",", " ", 
       "dMin", ",", " ", "vMin", ",", " ", "vMax", ",", " ", "lm", ",", " ", 
       "label", ",", " ", "nWeeks", ",", " ", "dr", ",", " ", 
       "dateFormLinearModel", ",", "  ", "horizonLine", ",", " ", "v"}], 
      "}"}], ",", "\[IndentingNewLine]", "\[IndentingNewLine]", 
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
      "\[IndentingNewLine]", 
      RowBox[{"label", " ", "=", " ", 
       RowBox[{"v", "[", "\"\<company\>\"", "]"}]}], " ", ";", 
      "\[IndentingNewLine]", 
      RowBox[{"nWeeks", " ", "=", " ", 
       RowBox[{"v", "[", " ", "\"\<nweeks\>\"", " ", "]"}]}], " ", ";", 
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
           "label", ",", " ", "\"\< (\>\"", ",", "nWeeks", ",", " ", 
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
                RowBox[{"vMax", "-", "vMin"}], ")"}], "/", "3"}]}]}], "}"}]}],
           "}"}]}]}], "\[IndentingNewLine]", "]"}]}]}], "\[IndentingNewLine]",
     "]"}]}], "\[IndentingNewLine]"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{
   RowBox[{
   "manipulatePlotDistAgainstLinearModel", "[", " ", "calc_", " ", "]"}], " ",
    ":=", "\[IndentingNewLine]", 
   RowBox[{"Module", "[", 
    RowBox[{
     RowBox[{"{", 
      RowBox[{
      "v", ",", " ", "close", ",", " ", "len", ",", " ", "vMin", ",", " ", 
       "vMax"}], "}"}], ",", "\[IndentingNewLine]", 
     RowBox[{
      RowBox[{
       RowBox[{"v", "[", "s_", "]"}], " ", ":=", " ", 
       RowBox[{"s", " ", "/.", " ", "calc"}]}], " ", ";", 
      "\[IndentingNewLine]", "\[IndentingNewLine]", 
      RowBox[{"close", " ", "=", " ", 
       RowBox[{"v", "[", "\"\<close\>\"", "]"}]}], ";", "\[IndentingNewLine]", 
      RowBox[{"len", " ", "=", " ", 
       RowBox[{"v", "[", "\"\<len\>\"", "]"}]}], " ", ";", 
      "\[IndentingNewLine]", 
      RowBox[{"vMin", " ", "=", " ", 
       RowBox[{"v", "[", "\"\<vMin\>\"", "]"}]}], " ", ";", 
      "\[IndentingNewLine]", 
      RowBox[{"vMax", " ", "=", " ", 
       RowBox[{"v", "[", "\"\<vMax\>\"", "]"}]}], " ", ";", 
      "\[IndentingNewLine]", "\[IndentingNewLine]", 
      RowBox[{"Manipulate", "[", "\[IndentingNewLine]", 
       RowBox[{
        RowBox[{"plotDistAgainstLinearModel", "[", " ", 
         RowBox[{"calc", ",", " ", "o", ",", " ", "h"}], " ", "]"}], 
        "\[IndentingNewLine]", ",", 
        RowBox[{"{", 
         RowBox[{
          RowBox[{"{", 
           RowBox[{"o", ",", " ", 
            RowBox[{"-", "0.5"}], ",", " ", 
            "\"\<offset from linear fit\>\""}], "}"}], ",", " ", 
          RowBox[{"vMin", " ", "-", " ", "vMax"}], ",", " ", 
          RowBox[{"vMax", " ", "-", " ", "vMin"}], ",", " ", 
          RowBox[{"Appearance", " ", "\[Rule]", " ", "\"\<Labeled\>\""}]}], 
         "}"}], " ", "\[IndentingNewLine]", ",", 
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
  RowBox[{
  "manipulatePlotDistAgainstLinearModel", "[", " ", "ssys", " ", "]"}], 
  "\[IndentingNewLine]", 
  RowBox[{"(*", 
   RowBox[{
    RowBox[{"plotDistAgainstLinearModel", "[", " ", "ddd", " ", "]"}], 
    "\[IndentingNewLine]", 
    RowBox[{"plotDistAgainstLinearModel", "[", " ", "vjet", " ", "]"}], 
    "\[IndentingNewLine]", 
    RowBox[{"plotDistAgainstLinearModel", "[", " ", "ibm", " ", "]"}], 
    "\[IndentingNewLine]", 
    RowBox[{"plotDistAgainstLinearModel", "[", " ", "dis", " ", "]"}]}], 
   "*)"}], "\[IndentingNewLine]", "\[IndentingNewLine]", 
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
   3.5953805635499597`*^9, 3.5953805799308963`*^9}, {3.5954256479143066`*^9, 
   3.595425670409593*^9}, {3.595425705389594*^9, 3.595425738927512*^9}, {
   3.5954257798448524`*^9, 3.5954258563362274`*^9}, {3.595426005896782*^9, 
   3.5954260457420607`*^9}, {3.5954260835982265`*^9, 3.595426274302134*^9}, 
   3.595426307345024*^9}],

Cell[BoxData[
 TagBox[
  StyleBox[
   DynamicModuleBox[{$CellContext`h$$ = 117., $CellContext`o$$ = -0.5, 
    Typeset`show$$ = True, Typeset`bookmarkList$$ = {}, 
    Typeset`bookmarkMode$$ = "Menu", Typeset`animator$$, Typeset`animvar$$ = 
    1, Typeset`name$$ = "\"untitled\"", Typeset`specs$$ = {{{
       Hold[$CellContext`o$$], -0.5, "offset from linear fit"}, -32., 32.}, {{
       Hold[$CellContext`h$$], 117., "price horizon"}, 102., 
      144.66666666666666`}}, Typeset`size$$ = {480., {166., 174.}}, 
    Typeset`update$$ = 0, Typeset`initDone$$, Typeset`skipInitDone$$ = 
    True, $CellContext`o$11994$$ = 0, $CellContext`h$11995$$ = 0}, 
    DynamicBox[Manipulate`ManipulateBoxes[
     1, StandardForm, 
      "Variables" :> {$CellContext`h$$ = 117., $CellContext`o$$ = -0.5}, 
      "ControllerVariables" :> {
        Hold[$CellContext`o$$, $CellContext`o$11994$$, 0], 
        Hold[$CellContext`h$$, $CellContext`h$11995$$, 0]}, 
      "OtherVariables" :> {
       Typeset`show$$, Typeset`bookmarkList$$, Typeset`bookmarkMode$$, 
        Typeset`animator$$, Typeset`animvar$$, Typeset`name$$, 
        Typeset`specs$$, Typeset`size$$, Typeset`update$$, Typeset`initDone$$,
         Typeset`skipInitDone$$}, 
      "Body" :> $CellContext`plotDistAgainstLinearModel[{
        "company" -> "Stratasys", "symbol" -> "ssys", 
         "dMin" -> {{{2013, 10, 14}, -6.555022094828644}, {{2013, 10, 
            15}, -5.511019603828657}, {{2013, 10, 16}, -2.557017112828703}, {{
            2013, 10, 17}, -2.393014621828698}, {{2013, 10, 
            18}, -1.5890121308287064`}, {{2013, 10, 
            21}, -0.017004657828749714`}, {{2013, 10, 
            22}, -4.933002166828786}, {{2013, 10, 23}, -5.318999675828792}, {{
            2013, 10, 24}, -4.614997184828837}, {{2013, 10, 
            25}, -3.820994693828837}, {{2013, 10, 28}, -6.738987220828889}, {{
            2013, 10, 29}, -8.33498472982889}, {{2013, 10, 
            30}, -4.000982238828925}, {{2013, 10, 31}, -3.326979747828929}, {{
            2013, 11, 1}, -0.3629772568289411}, {{2013, 11, 
            4}, -0.7109697838290003}, {{2013, 11, 5}, 0.8130327071709758}, {{
            2013, 11, 6}, -2.0929648018290266`}, {{2013, 11, 7}, 
            1.981037689170961}, {{2013, 11, 8}, 0.29504018017092903`}, {{2013,
             11, 11}, 2.977047653170871}, {{2013, 11, 12}, 
            5.901050144170867}, {{2013, 11, 13}, 5.195052635170853}, {{2013, 
            11, 14}, 5.829055126170829}, {{2013, 11, 15}, 
            6.61305761717081}, {{2013, 11, 18}, 7.1550650901707655`}, {{2013, 
            11, 19}, -3.2709324188292754`}, {{2013, 11, 
            20}, -11.136929927829271`}, {{2013, 11, 
            21}, -6.4229274368292835`}, {{2013, 11, 
            22}, -5.328924945829314}, {{2013, 11, 25}, -4.766917472829363}, {{
            2013, 11, 26}, -6.2729149818293735`}, {{2013, 11, 
            27}, -3.8889124908293837`}, {{2013, 11, 
            29}, -5.490907508829423}, {{2013, 12, 2}, -6.068900035829472}, {{
            2013, 12, 3}, -3.794897544829496}, {{2013, 12, 
            4}, -2.910895053829506}, {{2013, 12, 5}, -3.7668925628295256`}, {{
            2013, 12, 6}, -7.092890071829544}}, 
         "dMax" -> {{{2013, 10, 14}, -2.0550220948286437`}, {{2013, 10, 
            15}, -1.0110196038286574`}, {{2013, 10, 16}, 
            0.7329828871713033}, {{2013, 10, 17}, 2.306985378171305}, {{2013, 
            10, 18}, 2.300987869171294}, {{2013, 10, 21}, 
            2.3829953421712418`}, {{2013, 10, 22}, 1.4269978331712139`}, {{
            2013, 10, 23}, -2.548999675828796}, {{2013, 10, 
            24}, -1.2649971848288288`}, {{2013, 10, 
            25}, -1.2109946938288374`}, {{2013, 10, 
            28}, -3.5689872208288875`}, {{2013, 10, 
            29}, -3.3949847298288915`}, {{2013, 10, 
            30}, -0.38098223882892057`}, {{2013, 10, 31}, 
            1.5830202521710675`}, {{2013, 11, 1}, 4.017022743171054}, {{2013, 
            11, 4}, 3.9390302161710053`}, {{2013, 11, 5}, 
            5.403032707170979}, {{2013, 11, 6}, 4.867035198170967}, {{2013, 
            11, 7}, 8.741037689170952}, {{2013, 11, 8}, 5.495040180170932}, {{
            2013, 11, 11}, 12.18704765317085}, {{2013, 11, 12}, 
            9.321050144170869}, {{2013, 11, 13}, 9.46505263517085}, {{2013, 
            11, 14}, 10.069055126170824`}, {{2013, 11, 15}, 
            9.25305761717081}, {{2013, 11, 18}, 15.435065090170767`}, {{2013, 
            11, 19}, 9.649067581170712}, {{2013, 11, 20}, 
            1.9030700721707348`}, {{2013, 11, 21}, -1.4229274368292835`}, {{
            2013, 11, 22}, 0.7910750541706904}, {{2013, 11, 
            25}, -1.1869174728293643`}, {{2013, 11, 
            26}, -1.8029149818293746`}, {{2013, 11, 
            27}, -0.7889124908293894}, {{2013, 11, 
            29}, -1.9609075088294219`}, {{2013, 12, 
            2}, -2.7389000358294737`}, {{2013, 12, 3}, 0.6651024551704978}, {{
            2013, 12, 4}, 1.669104946170492}, {{2013, 12, 5}, 
            0.013107437170475578`}, {{2013, 12, 6}, -1.2128900718295483`}}, 
         "dClose" -> {{{2013, 10, 14}, -4.185022094828639}, {{2013, 10, 
            15}, -1.3310196038286506`}, {{2013, 10, 16}, 
            0.592982887171317}, {{2013, 10, 17}, 0.2269853781713067}, {{2013, 
            10, 18}, 1.1509878691712885`}, {{2013, 10, 21}, 
            0.8229953421712395}, {{2013, 10, 22}, -1.4430021668287765`}, {{
            2013, 10, 23}, -3.808999675828801}, {{2013, 10, 
            24}, -1.604997184828818}, {{2013, 10, 25}, -3.690994693828827}, {{
            2013, 10, 28}, -6.418987220828882}, {{2013, 10, 
            29}, -3.9149847298288876`}, {{2013, 10, 
            30}, -0.46098223882891887`}, {{2013, 10, 
            31}, -0.1369797478289314}, {{2013, 11, 1}, 3.89702274317105}, {{
            2013, 11, 4}, 0.9290302161710002}, {{2013, 11, 5}, 
            3.5430327071709797`}, {{2013, 11, 6}, -0.7829648018290385}, {{
            2013, 11, 7}, 2.731037689170961}, {{2013, 11, 8}, 
            3.345040180170926}, {{2013, 11, 11}, 10.557047653170883`}, {{2013,
             11, 12}, 7.421050144170863}, {{2013, 11, 13}, 
            8.21505263517085}, {{2013, 11, 14}, 6.679055126170823}, {{2013, 
            11, 15}, 7.273057617170821}, {{2013, 11, 18}, 
            9.605065090170754}, {{2013, 11, 19}, -1.9309324188292578`}, {{
            2013, 11, 20}, -6.896929927829277}, {{2013, 11, 
            21}, -2.4129274368292783`}, {{2013, 11, 
            22}, -2.738924945829311}, {{2013, 11, 
            25}, -2.7869174728293586`}, {{2013, 11, 
            26}, -2.702914981829366}, {{2013, 11, 
            27}, -2.5689124908293905`}, {{2013, 11, 
            29}, -3.940907508829426}, {{2013, 12, 
            2}, -3.7289000358294686`}, {{2013, 12, 
            3}, -0.3648975448295033}, {{2013, 12, 4}, -0.320895053829517}, {{
            2013, 12, 5}, -2.8368925628295187`}, {{2013, 12, 
            6}, -6.712890071829548}}, 
         "dZero" -> {{{2013, 10, 14}, 0}, {{2013, 10, 15}, 0}, {{2013, 10, 
            16}, 0}, {{2013, 10, 17}, 0}, {{2013, 10, 18}, 0}, {{2013, 10, 
            21}, 0}, {{2013, 10, 22}, 0}, {{2013, 10, 23}, 0}, {{2013, 10, 
            24}, 0}, {{2013, 10, 25}, 0}, {{2013, 10, 28}, 0}, {{2013, 10, 
            29}, 0}, {{2013, 10, 30}, 0}, {{2013, 10, 31}, 0}, {{2013, 11, 1},
             0}, {{2013, 11, 4}, 0}, {{2013, 11, 5}, 0}, {{2013, 11, 6}, 
            0}, {{2013, 11, 7}, 0}, {{2013, 11, 8}, 0}, {{2013, 11, 11}, 
            0}, {{2013, 11, 12}, 0}, {{2013, 11, 13}, 0}, {{2013, 11, 14}, 
            0}, {{2013, 11, 15}, 0}, {{2013, 11, 18}, 0}, {{2013, 11, 19}, 
            0}, {{2013, 11, 20}, 0}, {{2013, 11, 21}, 0}, {{2013, 11, 22}, 
            0}, {{2013, 11, 25}, 0}, {{2013, 11, 26}, 0}, {{2013, 11, 27}, 
            0}, {{2013, 11, 29}, 0}, {{2013, 12, 2}, 0}, {{2013, 12, 3}, 
            0}, {{2013, 12, 4}, 0}, {{2013, 12, 5}, 0}, {{2013, 12, 6}, 0}}, 
         "min" -> {{{2013, 10, 14}, 102.}, {{2013, 10, 15}, 103.33}, {{2013, 
            10, 16}, 106.56999999999998`}, {{2013, 10, 17}, 107.02}, {{2013, 
            10, 18}, 108.11}, {{2013, 10, 21}, 110.54}, {{2013, 10, 22}, 
            105.91}, {{2013, 10, 23}, 105.81}, {{2013, 10, 24}, 
            106.79999999999998`}, {{2013, 10, 25}, 107.88}, {{2013, 10, 28}, 
            105.82}, {{2013, 10, 29}, 104.51}, {{2013, 10, 30}, 109.13}, {{
            2013, 10, 31}, 110.09}, {{2013, 11, 1}, 113.34}, {{2013, 11, 4}, 
            113.85}, {{2013, 11, 5}, 115.66}, {{2013, 11, 6}, 113.04}, {{2013,
             11, 7}, 117.4}, {{2013, 11, 8}, 116.}, {{2013, 11, 11}, 
            119.53999999999999`}, {{2013, 11, 12}, 122.75}, {{2013, 11, 13}, 
            122.33}, {{2013, 11, 14}, 123.25}, {{2013, 11, 15}, 124.32}, {{
            2013, 11, 18}, 125.72}, {{2013, 11, 19}, 115.57999999999998`}, {{
            2013, 11, 20}, 108.}, {{2013, 11, 21}, 113.}, {{2013, 11, 22}, 
            114.38}, {{2013, 11, 25}, 115.8}, {{2013, 11, 26}, 114.58}, {{
            2013, 11, 27}, 117.25}, {{2013, 11, 29}, 116.22}, {{2013, 12, 2}, 
            116.5}, {{2013, 12, 3}, 119.06}, {{2013, 12, 4}, 120.23}, {{2013, 
            12, 5}, 119.66}, {{2013, 12, 6}, 116.62}}, 
         "max" -> {{{2013, 10, 14}, 106.5}, {{2013, 10, 15}, 107.83}, {{2013, 
            10, 16}, 109.85999999999999`}, {{2013, 10, 17}, 111.72}, {{2013, 
            10, 18}, 112.}, {{2013, 10, 21}, 112.94}, {{2013, 10, 22}, 
            112.27}, {{2013, 10, 23}, 108.58}, {{2013, 10, 24}, 
            110.14999999999999`}, {{2013, 10, 25}, 110.49}, {{2013, 10, 28}, 
            108.99}, {{2013, 10, 29}, 109.45}, {{2013, 10, 30}, 112.75}, {{
            2013, 10, 31}, 115.}, {{2013, 11, 1}, 117.72}, {{2013, 11, 4}, 
            118.5}, {{2013, 11, 5}, 120.25}, {{2013, 11, 6}, 120.}, {{2013, 
            11, 7}, 124.16}, {{2013, 11, 8}, 121.2}, {{2013, 11, 11}, 
            128.74999999999997`}, {{2013, 11, 12}, 126.17}, {{2013, 11, 13}, 
            126.6}, {{2013, 11, 14}, 127.49}, {{2013, 11, 15}, 126.96}, {{
            2013, 11, 18}, 134.}, {{2013, 11, 19}, 128.49999999999997`}, {{
            2013, 11, 20}, 121.04}, {{2013, 11, 21}, 118.}, {{2013, 11, 22}, 
            120.5}, {{2013, 11, 25}, 119.38}, {{2013, 11, 26}, 119.05}, {{
            2013, 11, 27}, 120.35}, {{2013, 11, 29}, 119.75}, {{2013, 12, 2}, 
            119.83}, {{2013, 12, 3}, 123.52}, {{2013, 12, 4}, 124.81}, {{2013,
             12, 5}, 123.44}, {{2013, 12, 6}, 122.5}}, 
         "close" -> {{{2013, 10, 14}, 104.37}, {{2013, 10, 15}, 107.51}, {{
            2013, 10, 16}, 109.72}, {{2013, 10, 17}, 109.64}, {{2013, 10, 18},
             110.85}, {{2013, 10, 21}, 111.38}, {{2013, 10, 22}, 109.4}, {{
            2013, 10, 23}, 107.32}, {{2013, 10, 24}, 109.81}, {{2013, 10, 25},
             108.01}, {{2013, 10, 28}, 106.14}, {{2013, 10, 29}, 108.93}, {{
            2013, 10, 30}, 112.67}, {{2013, 10, 31}, 113.28}, {{2013, 11, 1}, 
            117.6}, {{2013, 11, 4}, 115.49}, {{2013, 11, 5}, 118.39}, {{2013, 
            11, 6}, 114.35}, {{2013, 11, 7}, 118.15}, {{2013, 11, 8}, 
            119.05}, {{2013, 11, 11}, 127.12}, {{2013, 11, 12}, 124.27}, {{
            2013, 11, 13}, 125.35}, {{2013, 11, 14}, 124.1}, {{2013, 11, 15}, 
            124.98}, {{2013, 11, 18}, 128.17}, {{2013, 11, 19}, 116.92}, {{
            2013, 11, 20}, 112.24}, {{2013, 11, 21}, 117.01}, {{2013, 11, 22},
             116.97}, {{2013, 11, 25}, 117.78}, {{2013, 11, 26}, 118.15}, {{
            2013, 11, 27}, 118.57}, {{2013, 11, 29}, 117.77}, {{2013, 12, 2}, 
            118.84}, {{2013, 12, 3}, 122.49}, {{2013, 12, 4}, 122.82}, {{2013,
             12, 5}, 120.59}, {{2013, 12, 6}, 117.}}, 
         "model" -> {{{2013, 10, 14}, 108.55502209482864`}, {{2013, 10, 14}, 
            108.55502209482864`}, {{2013, 10, 14}, 108.55502209482864`}, {{
            2013, 10, 15}, 108.84101960382866`}, {{2013, 10, 15}, 
            108.84101960382866`}, {{2013, 10, 15}, 108.84101960382866`}, {{
            2013, 10, 16}, 109.12701711282868`}, {{2013, 10, 16}, 
            109.12701711282868`}, {{2013, 10, 16}, 109.12701711282868`}, {{
            2013, 10, 17}, 109.4130146218287}, {{2013, 10, 17}, 
            109.4130146218287}, {{2013, 10, 17}, 109.4130146218287}, {{2013, 
            10, 18}, 109.6990121308287}, {{2013, 10, 18}, 
            109.6990121308287}, {{2013, 10, 18}, 109.6990121308287}, {{2013, 
            10, 21}, 110.55700465782876`}, {{2013, 10, 21}, 
            110.55700465782876`}, {{2013, 10, 21}, 110.55700465782876`}, {{
            2013, 10, 22}, 110.84300216682878`}, {{2013, 10, 22}, 
            110.84300216682878`}, {{2013, 10, 22}, 110.84300216682878`}, {{
            2013, 10, 23}, 111.1289996758288}, {{2013, 10, 23}, 
            111.1289996758288}, {{2013, 10, 23}, 111.1289996758288}, {{2013, 
            10, 24}, 111.41499718482882`}, {{2013, 10, 24}, 
            111.41499718482882`}, {{2013, 10, 24}, 111.41499718482882`}, {{
            2013, 10, 25}, 111.70099469382883`}, {{2013, 10, 25}, 
            111.70099469382883`}, {{2013, 10, 25}, 111.70099469382883`}, {{
            2013, 10, 28}, 112.55898722082888`}, {{2013, 10, 28}, 
            112.55898722082888`}, {{2013, 10, 28}, 112.55898722082888`}, {{
            2013, 10, 29}, 112.8449847298289}, {{2013, 10, 29}, 
            112.8449847298289}, {{2013, 10, 29}, 112.8449847298289}, {{2013, 
            10, 30}, 113.13098223882892`}, {{2013, 10, 30}, 
            113.13098223882892`}, {{2013, 10, 30}, 113.13098223882892`}, {{
            2013, 10, 31}, 113.41697974782893`}, {{2013, 10, 31}, 
            113.41697974782893`}, {{2013, 10, 31}, 113.41697974782893`}, {{
            2013, 11, 1}, 113.70297725682894`}, {{2013, 11, 1}, 
            113.70297725682894`}, {{2013, 11, 1}, 113.70297725682894`}, {{
            2013, 11, 4}, 114.560969783829}, {{2013, 11, 4}, 
            114.560969783829}, {{2013, 11, 4}, 114.560969783829}, {{2013, 11, 
            5}, 114.84696729282902`}, {{2013, 11, 5}, 114.84696729282902`}, {{
            2013, 11, 5}, 114.84696729282902`}, {{2013, 11, 6}, 
            115.13296480182903`}, {{2013, 11, 6}, 115.13296480182903`}, {{
            2013, 11, 6}, 115.13296480182903`}, {{2013, 11, 7}, 
            115.41896231082904`}, {{2013, 11, 7}, 115.41896231082904`}, {{
            2013, 11, 7}, 115.41896231082904`}, {{2013, 11, 8}, 
            115.70495981982907`}, {{2013, 11, 8}, 115.70495981982907`}, {{
            2013, 11, 8}, 115.70495981982907`}, {{2013, 11, 11}, 
            116.56295234682912`}, {{2013, 11, 11}, 116.56295234682912`}, {{
            2013, 11, 11}, 116.56295234682912`}, {{2013, 11, 12}, 
            116.84894985582913`}, {{2013, 11, 12}, 116.84894985582913`}, {{
            2013, 11, 12}, 116.84894985582913`}, {{2013, 11, 13}, 
            117.13494736482915`}, {{2013, 11, 13}, 117.13494736482915`}, {{
            2013, 11, 13}, 117.13494736482915`}, {{2013, 11, 14}, 
            117.42094487382917`}, {{2013, 11, 14}, 117.42094487382917`}, {{
            2013, 11, 14}, 117.42094487382917`}, {{2013, 11, 15}, 
            117.70694238282918`}, {{2013, 11, 15}, 117.70694238282918`}, {{
            2013, 11, 15}, 117.70694238282918`}, {{2013, 11, 18}, 
            118.56493490982923`}, {{2013, 11, 18}, 118.56493490982923`}, {{
            2013, 11, 18}, 118.56493490982923`}, {{2013, 11, 19}, 
            118.85093241882926`}, {{2013, 11, 19}, 118.85093241882926`}, {{
            2013, 11, 19}, 118.85093241882926`}, {{2013, 11, 20}, 
            119.13692992782927`}, {{2013, 11, 20}, 119.13692992782927`}, {{
            2013, 11, 20}, 119.13692992782927`}, {{2013, 11, 21}, 
            119.42292743682928`}, {{2013, 11, 21}, 119.42292743682928`}, {{
            2013, 11, 21}, 119.42292743682928`}, {{2013, 11, 22}, 
            119.70892494582931`}, {{2013, 11, 22}, 119.70892494582931`}, {{
            2013, 11, 22}, 119.70892494582931`}, {{2013, 11, 25}, 
            120.56691747282936`}, {{2013, 11, 25}, 120.56691747282936`}, {{
            2013, 11, 25}, 120.56691747282936`}, {{2013, 11, 26}, 
            120.85291498182937`}, {{2013, 11, 26}, 120.85291498182937`}, {{
            2013, 11, 26}, 120.85291498182937`}, {{2013, 11, 27}, 
            121.13891249082938`}, {{2013, 11, 27}, 121.13891249082938`}, {{
            2013, 11, 27}, 121.13891249082938`}, {{2013, 11, 29}, 
            121.71090750882942`}, {{2013, 11, 29}, 121.71090750882942`}, {{
            2013, 11, 29}, 121.71090750882942`}, {{2013, 12, 2}, 
            122.56890003582947`}, {{2013, 12, 2}, 122.56890003582947`}, {{
            2013, 12, 2}, 122.56890003582947`}, {{2013, 12, 3}, 
            122.8548975448295}, {{2013, 12, 3}, 122.8548975448295}, {{2013, 
            12, 3}, 122.8548975448295}, {{2013, 12, 4}, 
            123.14089505382951`}, {{2013, 12, 4}, 123.14089505382951`}, {{
            2013, 12, 4}, 123.14089505382951`}, {{2013, 12, 5}, 
            123.42689256282952`}, {{2013, 12, 5}, 123.42689256282952`}, {{
            2013, 12, 5}, 123.42689256282952`}, {{2013, 12, 6}, 
            123.71289007182955`}, {{2013, 12, 6}, 123.71289007182955`}, {{
            2013, 12, 6}, 123.71289007182955`}}, "lm" -> (ReplaceAll[
           Normal[
            
            LinearModelFit[$CellContext`secondsFormData$10285, \
$CellContext`x, $CellContext`x]], Pattern[$CellContext`a, 
              Blank[]] + Pattern[$CellContext`b, 
               
               Blank[]] $CellContext`x -> $CellContext`a + $CellContext`b #]& \
), "nweeks" -> 8, "len" -> 39, "vMin" -> 102., "vMax" -> 
         134.}, $CellContext`o$$, $CellContext`h$$], 
      "Specifications" :> {{{$CellContext`o$$, -0.5, 
          "offset from linear fit"}, -32., 32., Appearance -> 
         "Labeled"}, {{$CellContext`h$$, 117., "price horizon"}, 102., 
         144.66666666666666`, Appearance -> "Labeled"}}, "Options" :> {}, 
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
   3.5953803115685472`*^9, 3.5953805291279907`*^9, 3.595382395505741*^9, 
   3.5954258639926653`*^9, 3.5954260262069435`*^9, 3.5954263585139503`*^9}]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{
  RowBox[{
   RowBox[{
    RowBox[{
     RowBox[{
      RowBox[{
       RowBox[{"DynamicModule", "[", 
        RowBox[{
         RowBox[{"{", 
          RowBox[{
           RowBox[{"nw", " ", "=", " ", "8"}], ",", " ", 
           RowBox[{"symbol", " ", "=", " ", "\"\<\>\""}], ",", " ", "dw", ",",
            " ", "ds", ",", " ", 
           RowBox[{"o", " ", "=", " ", 
            RowBox[{"-", "0.5"}]}], ",", " ", "h", ",", " ", "do", ",", " ", 
           "dh", ",", " ", "data", ",", " ", "plotIf", ",", " ", "vMin", ",", 
           " ", "vMax", ",", " ", "v"}], "}"}], ",", "\[IndentingNewLine]", 
         "\[IndentingNewLine]", 
         RowBox[{
          RowBox[{"dw", " ", "=", " ", 
           RowBox[{"Dynamic", "[", "nw", "]"}]}], " ", ";", 
          "\[IndentingNewLine]", 
          RowBox[{"ds", " ", "=", " ", 
           RowBox[{"Dynamic", "[", "symbol", "]"}]}], " ", ";", 
          "\[IndentingNewLine]", 
          RowBox[{"do", " ", "=", " ", 
           RowBox[{"Dynamic", "[", "o", "]"}]}], " ", ";", 
          "\[IndentingNewLine]", 
          RowBox[{"dh", " ", "=", " ", 
           RowBox[{"Dynamic", "[", " ", "h", " ", "]"}]}], " ", ";", 
          "\[IndentingNewLine]", "\[IndentingNewLine]", 
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
                    RowBox[{"1", ",", "52", ",", "1"}], "}"}]}], "]"}], ",", 
                   " ", "dw"}], "\[IndentingNewLine]", "}"}], "]"}], ",", 
                "\[IndentingNewLine]", 
                RowBox[{"Row", "[", 
                 RowBox[{"{", "\"\<Offset from linear fit:\>\"", "}"}], "]"}],
                 ",", 
                RowBox[{"Slider", "[", 
                 RowBox[{"do", ",", 
                  RowBox[{"{", 
                   RowBox[{
                    RowBox[{"vMin", " ", "-", " ", "vMax"}], ",", " ", 
                    RowBox[{"vMax", " ", "-", " ", "vMin"}]}], "}"}]}], "]"}],
                 ",", " ", "do"}], "\[IndentingNewLine]", "}"}], "]"}], ",", 
             "\[IndentingNewLine]", "\[IndentingNewLine]", 
             RowBox[{"Row", "[", 
              RowBox[{"{", 
               RowBox[{"\"\<Stock Symbol:\>\"", ",", " ", 
                RowBox[{"InputField", "[", 
                 RowBox[{"ds", ",", "String"}], "]"}]}], "}"}], "]"}]}], 
            "\[IndentingNewLine]", "}"}], "]"}]}], ",", "\[IndentingNewLine]",
          "\[IndentingNewLine]", 
         RowBox[{"Dynamic", "@", "plotIf"}]}], "\[IndentingNewLine]"}], "}"}],
       "\[IndentingNewLine]"}], "]"}], "\[IndentingNewLine]", 
    RowBox[{",", "\[IndentingNewLine]", 
     RowBox[{"Initialization", "\[RuleDelayed]", 
      RowBox[{"{", "\[IndentingNewLine]", "\[IndentingNewLine]", 
       RowBox[{"(*", " ", 
        RowBox[{
         RowBox[{"Not", " ", 
          RowBox[{"right", ".", "  ", 
           RowBox[{"Don", "'"}]}], "t", " ", "want", " ", "data", " ", "as", 
          " ", "init"}], ",", " ", 
         RowBox[{
         "only", " ", "want", " ", "that", " ", "if", " ", "symbol", " ", 
          RowBox[{"changes", ".", " ", "Same"}], " ", "deal", " ", "for", " ",
           "offset", " ", 
          RowBox[{"slider", "."}]}]}], "  ", "*)"}], "\[IndentingNewLine]", 
       RowBox[{
        RowBox[{"data", " ", "=", " ", 
         RowBox[{"fDataAndLinearModel", "[", " ", 
          RowBox[{"symbol", ",", " ", "nw"}], " ", "]"}]}], " ", ";", 
        "\[IndentingNewLine]", "\[IndentingNewLine]", 
        RowBox[{
         RowBox[{"v", "[", "s_", "]"}], " ", ":=", " ", 
         RowBox[{"s", " ", "/.", " ", "data"}]}], " ", ";", 
        "\[IndentingNewLine]", "\[IndentingNewLine]", 
        RowBox[{"vMin", " ", "=", " ", 
         RowBox[{"v", "[", "\"\<vMin\>\"", "]"}]}], " ", ";", 
        "\[IndentingNewLine]", 
        RowBox[{"vMax", " ", "=", " ", 
         RowBox[{"v", "[", "\"\<vMax\>\"", "]"}]}], " ", ";", 
        "\[IndentingNewLine]", "\[IndentingNewLine]", 
        RowBox[{"o", " ", "=", " ", 
         RowBox[{"-", "0.5"}]}], " ", ";", "\[IndentingNewLine]", 
        "\[IndentingNewLine]", 
        RowBox[{"plotIf", ":=", 
         RowBox[{"If", "[", 
          RowBox[{
           RowBox[{"!", 
            RowBox[{"Equal", "[", 
             RowBox[{"symbol", ",", " ", "\"\<\>\""}], "]"}]}], ",", " ", 
           RowBox[{"plotDistAgainstLinearModel", "[", " ", 
            RowBox[{"data", ",", "  ", "do", ",", " ", "dh"}], " ", "]"}], 
           ",", "  ", "\"\<... waiting for stock ticker symbol ...\>\""}], 
          " ", "]"}]}], " ", ";"}], "\[IndentingNewLine]", "}"}]}]}], 
    "\[IndentingNewLine]"}], "]"}], "\[IndentingNewLine]"}]], "Input",
 CellChangeTimes->{{3.5954264430167837`*^9, 3.595426478196796*^9}, {
  3.59542651724603*^9, 3.5954265194481554`*^9}, {3.5954269166868763`*^9, 
  3.5954269456975355`*^9}, {3.5954280035010386`*^9, 3.595428040368147*^9}, {
  3.5954280723379755`*^9, 3.5954281569058123`*^9}, {3.595428193888928*^9, 
  3.5954282456218867`*^9}, {3.5954282985739155`*^9, 3.5954282989559374`*^9}, {
  3.5954283301037188`*^9, 3.595428332953882*^9}, {3.5954283802265863`*^9, 
  3.59542850652781*^9}, {3.595428541551813*^9, 3.5954285814490952`*^9}}],

Cell[BoxData[
 DynamicModuleBox[{$CellContext`nw$$ = 8, $CellContext`symbol$$ = 
  "ssys", $CellContext`dw$$ = Dynamic[$CellContext`nw$$], $CellContext`ds$$ = 
  Dynamic[$CellContext`symbol$$], $CellContext`o$$ = -0.5, $CellContext`h$$, \
$CellContext`do$$ = Dynamic[$CellContext`o$$], $CellContext`dh$$ = 
  Dynamic[$CellContext`h$$], $CellContext`data$$ = {
  "company" -> FinancialData["", "Company"], "symbol" -> "", "dMin" -> {{
      Part[
      "", 1], -LinearModelFit[{{
          0, {2013, 12, 7, -1331, 5, 33.6649227`9.279752520747596}}, {
          0, "High"}, {0, "Low"}}, $CellContext`x, $CellContext`x] + 
      Part["", 2]}, {
      Part[
      "Low", 1], -
       LinearModelFit[{{
          0, {2013, 12, 7, -1331, 5, 33.6649227`9.279752520747596}}, {
          0, "High"}, {0, "Low"}}, $CellContext`x, $CellContext`x] + 
      Part["Low", 2]}, {
     2013, 12 - LinearModelFit[{{
        0, {2013, 12, 7, -1331, 5, 33.6649227`9.279752520747596}}, {
        0, "High"}, {0, "Low"}}, $CellContext`x, $CellContext`x]}}, 
   "dMax" -> {{
      Part[
      "", 1], -LinearModelFit[{{
          0, {2013, 12, 7, -1331, 5, 33.6649227`9.279752520747596}}, {
          0, "High"}, {0, "Low"}}, $CellContext`x, $CellContext`x] + 
      Part["", 2]}, {
      Part[
      "High", 1], -
       LinearModelFit[{{
          0, {2013, 12, 7, -1331, 5, 33.6649227`9.279752520747596}}, {
          0, "High"}, {0, "Low"}}, $CellContext`x, $CellContext`x] + 
      Part["High", 2]}, {
     2013, 12 - LinearModelFit[{{
        0, {2013, 12, 7, -1331, 5, 33.6649227`9.279752520747596}}, {
        0, "High"}, {0, "Low"}}, $CellContext`x, $CellContext`x]}}, 
   "dClose" -> {{
      Part[
      "", 1], -LinearModelFit[{{
          0, {2013, 12, 7, -1331, 5, 33.6649227`9.279752520747596}}, {
          0, "High"}, {0, "Low"}}, $CellContext`x, $CellContext`x] + 
      Part["", 2]}, {
     2013, 12 - LinearModelFit[{{
        0, {2013, 12, 7, -1331, 5, 33.6649227`9.279752520747596}}, {
        0, "High"}, {0, "Low"}}, $CellContext`x, $CellContext`x]}}, 
   "dZero" -> {{
      Part["", 1], 0}, {
      Part["Low", 1], 0}, {2013, 0}}, "min" -> 
   FinancialData[
    "", "Low", {2013, 12, 7, -1331, 5, 33.6649227`9.279752520747596}], "max" -> 
   FinancialData[
    "", "High", {2013, 12, 7, -1331, 5, 33.6649227`9.279752520747596}], 
   "close" -> FinancialData[
    "", {2013, 12, 7, -1331, 5, 33.6649227`9.279752520747596}], 
   "model" -> {{"", 
      LinearModelFit[{{
        0, {2013, 12, 7, -1331, 5, 33.6649227`9.279752520747596}}, {
        0, "High"}, {0, "Low"}}, $CellContext`x, $CellContext`x]}, {"", 
      LinearModelFit[{{
        0, {2013, 12, 7, -1331, 5, 33.6649227`9.279752520747596}}, {
        0, "High"}, {0, "Low"}}, $CellContext`x, $CellContext`x]}, {"", 
      LinearModelFit[{{
        0, {2013, 12, 7, -1331, 5, 33.6649227`9.279752520747596}}, {
        0, "High"}, {0, "Low"}}, $CellContext`x, $CellContext`x]}}, 
   "lm" -> (ReplaceAll[
     Normal[
      LinearModelFit[$CellContext`secondsFormData$22989, $CellContext`x, \
$CellContext`x]], Pattern[$CellContext`a, 
        Blank[]] + Pattern[$CellContext`b, 
         Blank[]] $CellContext`x -> $CellContext`a + $CellContext`b #]& ), 
   "nweeks" -> 8, "len" -> 3, "vMin" -> Min[12, 
     Part["", 2], 
     Part["Low", 2]], "vMax" -> Max[12, 
     Part["", 2], 
     Part["High", 2]]}, $CellContext`plotIf$$ = 
  "... waiting for stock ticker symbol ...", $CellContext`vMin$$ = Min[12, 
   Part["", 2], 
   Part["Low", 2]], $CellContext`vMax$$ = Max[12, 
   Part["", 2], 
   Part["High", 2]], $CellContext`v$$}, 
  TemplateBox[{TagBox[
     GridBox[{{
        TemplateBox[{"\"Number of Weeks:\"", 
          SliderBox[
           Dynamic[$CellContext`nw$$], {1, 52, 1}], 
          DynamicBox[
           ToBoxes[$CellContext`nw$$, StandardForm], 
           ImageSizeCache -> {10., {0., 11.}}]}, "RowDefault"]}, {
        TemplateBox[{"\"Stock Symbol:\"", 
          InputFieldBox[
           Dynamic[$CellContext`symbol$$], String]}, "RowDefault"]}}, 
      DefaultBaseStyle -> "Column", 
      GridBoxAlignment -> {"Columns" -> {{Left}}}, 
      GridBoxItemSize -> {
       "Columns" -> {{Automatic}}, "Rows" -> {{Automatic}}}], "Column"],
    DynamicBox[
     ToBoxes[$CellContext`plotIf$$, StandardForm], 
     ImageSizeCache -> {390., {3., 12.}}]},
   "RowDefault"],
  DynamicModuleValues:>{{DownValues[$CellContext`v$$] = {HoldPattern[
         $CellContext`v$$[
          Pattern[$CellContext`s$, 
           Blank[]]]] :> ReplaceAll[$CellContext`s$, $CellContext`data$$]}}},
  Initialization:>{$CellContext`data$$ = \
$CellContext`fDataAndLinearModel[$CellContext`symbol$$, $CellContext`nw$$]; \
$CellContext`v$$[
       Pattern[$CellContext`s$, 
        Blank[]]] := 
     ReplaceAll[$CellContext`s$, $CellContext`data$$]; $CellContext`vMin$$ = \
$CellContext`v$$["vMin"]; $CellContext`vMax$$ = $CellContext`v$$[
      "vMax"]; $CellContext`plotIf$$ := If[
       Not[$CellContext`symbol$$ == ""], 
       $CellContext`plotDistAgainstLinearModel[$CellContext`data$$, \
$CellContext`do$$, $CellContext`dh$$], 
       "... waiting for stock ticker symbol ..."]; Null}]], "Output",
 CellChangeTimes->{{3.59542828045988*^9, 3.5954283025791445`*^9}, 
   3.5954283336639223`*^9}]
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
Cell[1485, 35, 31855, 689, 4316, "Input"],
Cell[33343, 726, 18861, 284, 519, "Output"]
}, Open  ]],
Cell[CellGroupData[{
Cell[52241, 1015, 5597, 116, 966, "Input"],
Cell[57841, 1133, 5267, 116, 84, "Output"]
}, Open  ]]
}
]
*)

(* End of internal cache information *)

(* NotebookSignature jvpScqupXipGADwY3LY@JHLv *)
