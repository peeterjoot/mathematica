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
NotebookDataLength[    808954,      12287]
NotebookOptionsPosition[    807960,      12247]
NotebookOutlinePosition[    808314,      12263]
CellTagsIndexPosition[    808271,      12260]
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
  RowBox[{"nw", " ", "=", " ", "24"}], " ", ";"}], "\[IndentingNewLine]", 
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
   3.595426307345024*^9, {3.706915134633953*^9, 
   3.7069151373833*^9}},ExpressionUUID->"3a855e0c-ec77-43be-8d64-\
556f543295b6"],

Cell[BoxData[
 TagBox[
  StyleBox[
   DynamicModuleBox[{$CellContext`h$$ = 
    27.579999923706055`, $CellContext`o$$ = -0.5, Typeset`show$$ = True, 
    Typeset`bookmarkList$$ = {}, Typeset`bookmarkMode$$ = "Menu", 
    Typeset`animator$$, Typeset`animvar$$ = 1, Typeset`name$$ = 
    "\"untitled\"", Typeset`specs$$ = {{{
       Hold[$CellContext`o$$], -0.5, "offset from linear fit"}, -14., 14.}, {{
       Hold[$CellContext`h$$], 27.579999923706055`, "price horizon"}, 
      16.8799991607666, 35.546665827433266`}}, Typeset`size$$ = {
    360., {123., 127.}}, Typeset`update$$ = 0, Typeset`initDone$$, 
    Typeset`skipInitDone$$ = True, $CellContext`o$26856$$ = 
    0, $CellContext`h$26857$$ = 0}, 
    DynamicBox[Manipulate`ManipulateBoxes[
     1, StandardForm, 
      "Variables" :> {$CellContext`h$$ = 
        27.579999923706055`, $CellContext`o$$ = -0.5}, "ControllerVariables" :> {
        Hold[$CellContext`o$$, $CellContext`o$26856$$, 0], 
        Hold[$CellContext`h$$, $CellContext`h$26857$$, 0]}, 
      "OtherVariables" :> {
       Typeset`show$$, Typeset`bookmarkList$$, Typeset`bookmarkMode$$, 
        Typeset`animator$$, Typeset`animvar$$, Typeset`name$$, 
        Typeset`specs$$, Typeset`size$$, Typeset`update$$, Typeset`initDone$$,
         Typeset`skipInitDone$$}, 
      "Body" :> $CellContext`plotDistAgainstLinearModel[{
        "company" -> "Stratasys", "symbol" -> "ssys", 
         "dMin" -> {{{2017, 1, 3}, -0.30284371129291543`}, {{2017, 1, 4}, 
            0.7528621530508062}, {{2017, 1, 5}, 0.31856633892773445`}, {{2017,
             1, 6}, 0.34427151662594824`}, {{2017, 1, 9}, 
            0.3213866682508666}, {{2017, 1, 10}, 1.0570928377703694`}, {{2017,
             1, 11}, 0.932796489589677}, {{2017, 1, 12}, 
            0.47850212505156264`}, {{2017, 1, 13}, 1.0742069975739987`}, {{
            2017, 1, 17}, 1.027028089836584}, {{2017, 1, 18}, 
            1.1227329623590165`}, {{2017, 1, 19}, 0.9484373771177772}, {{2017,
             1, 20}, 1.4341416392886508`}, {{2017, 1, 23}, 
            0.691257477559077}, {{2017, 1, 24}, 1.0069635707846345`}, {{2017, 
            1, 25}, 1.1126667648402702`}, {{2017, 1, 26}, 
            1.1483721714203199`}, {{2017, 1, 27}, 0.7840779594700997}, {{2017,
             1, 30}, 0.271193339976854}, {{2017, 1, 31}, 
            0.2968985176750678}, {{2017, 2, 1}, 0.37260293243382847`}, {{2017,
             2, 2}, 0.44830734719258913`}, {{2017, 2, 3}, 
            0.5540124485968612}, {{2017, 2, 6}, 0.2211281342793967}, {{2017, 
            2, 7}, -0.07316638284660826}, {{2017, 2, 
            8}, -0.1374613577362851}, {{2017, 2, 9}, 0.18824305702247557`}, {{
            2017, 2, 10}, 1.3839483110146347`}, {{2017, 2, 13}, 
            1.2810635389334983`}, {{2017, 2, 14}, 1.8567679536922626`}, {{
            2017, 2, 15}, 1.3224736654480935`}, {{2017, 2, 16}, 
            0.7881774698552917}, {{2017, 2, 17}, 0.6038835630808492}, {{2017, 
            2, 21}, 0.2867041975797662}, {{2017, 2, 22}, 
            0.2924089175143081}, {{2017, 2, 23}, 0.06811409521252187}, {{2017,
             2, 24}, -0.40618072708926434`}, {{2017, 2, 
            27}, -0.35906588064012723`}, {{2017, 2, 
            28}, -1.08336070294191}, {{2017, 3, 1}, -1.047657203710493}, {{
            2017, 3, 2}, -1.4119514156607167`}, {{2017, 3, 
            3}, -1.836247000901956}, {{2017, 3, 6}, -1.9591322307467642`}, {{
            2017, 3, 7}, -1.933427053048547}, {{2017, 3, 
            8}, -1.8577207309411534`}, {{2017, 3, 
            9}, -3.3020167739460646`}, {{2017, 3, 
            10}, -3.3863102992507805`}, {{2017, 3, 
            13}, -2.879196368328987}, {{2017, 3, 
            14}, -2.7434905802792073`}, {{2017, 3, 
            15}, -2.5477853262870482`}, {{2017, 3, 
            16}, -2.072081292998014}, {{2017, 3, 
            17}, -1.8563755812421832`}, {{2017, 3, 20}, -2.09926165032039}, {{
            2017, 3, 21}, -2.6335559385645553`}, {{2017, 3, 
            22}, -3.4078499979268884`}, {{2017, 3, 
            23}, -3.562145125404456}, {{2017, 3, 24}, -3.256441168409367}, {{
            2017, 3, 27}, -3.7693257879026127`}, {{2017, 3, 
            28}, -3.3336207627922896`}, {{2017, 3, 
            29}, -3.317915813975908}, {{2017, 3, 30}, -2.662211475511093}, {{
            2017, 3, 31}, -2.5865051534036994`}, {{2017, 4, 
            3}, -2.849389772896945}, {{2017, 4, 4}, -3.1936854344321297`}, {{
            2017, 4, 5}, -3.227979722676295}, {{2017, 4, 
            6}, -3.252275689387261}, {{2017, 4, 7}, -3.026569748749594}, {{
            2017, 4, 10}, -3.1394547497125664`}, {{2017, 4, 
            11}, -2.9237509453053683`}, {{2017, 4, 
            12}, -2.7380459201950416`}, {{2017, 4, 
            13}, -2.7623399795573746`}, {{2017, 4, 
            17}, -2.9795208709373675`}, {{2017, 4, 
            18}, -1.883815998414935}, {{2017, 4, 19}, -0.8181099051893739}, {{
            2017, 4, 20}, -0.14240510896088665`}, {{2017, 4, 
            21}, -0.1267001601445088}, {{2017, 4, 
            24}, -0.31958508481353576`}, {{2017, 4, 
            25}, -0.31388036487899384`}, {{2017, 4, 
            26}, -0.21817549235655775`}, {{2017, 4, 27}, 
            0.17753052457505447`}, {{2017, 4, 28}, 0.08323486303986982}, {{
            2017, 5, 1}, 0.00035054872240536383`}, {{2017, 5, 2}, 
            0.47605458201143946`}, {{2017, 5, 3}, 0.7717602174733251}, {{2017,
             5, 4}, 0.14746577664126903`}, {{2017, 5, 5}, 
            0.6131695810484672}, {{2017, 5, 8}, 1.1102851904370539`}, {{2017, 
            5, 9}, 1.3259909021928884`}, {{2017, 5, 10}, 
            2.521696156185051}, {{2017, 5, 11}, 3.2273997317104133`}, {{2017, 
            5, 12}, 3.4431054434662443`}, {{2017, 5, 15}, 
            2.8802196795638153`}, {{2017, 5, 16}, 1.0959253913196498`}, {{
            2017, 5, 17}, 1.4816311793694261`}, {{2017, 5, 18}, 
            1.187334754894792}, {{2017, 5, 19}, 1.7530408481203494`}, {{2017, 
            5, 22}, 1.7301559997452642`}, {{2017, 5, 23}, 
            1.655860795973755}, {{2017, 5, 24}, 1.7215649818506797`}, {{2017, 
            5, 25}, 1.6472697780791705`}, {{2017, 5, 26}, 1.4829763290684}, {{
            2017, 5, 30}, 0.4157950562186805}, {{2017, 5, 
            31}, -0.478499842377051}, {{2017, 6, 1}, 0.15720594567272883`}, {{
            2017, 6, 2}, 0.47291013154965356`}, {{2017, 6, 5}, 
            0.4100262749958574}, {{2017, 6, 6}, 0.12573007940305914`}, {{2017,
             6, 7}, 0.16143548598310886`}, {{2017, 6, 8}, 
            0.20714112144499808`}, {{2017, 6, 9}, -0.8471536245628428}, {{
            2017, 6, 12}, -2.0500387781137093`}, {{2017, 6, 
            13}, -1.4843345922367845`}, {{2017, 6, 
            14}, -1.6686284990112235`}, {{2017, 6, 
            15}, -2.162923779076678}, {{2017, 6, 
            16}, -1.6172181436147923`}, {{2017, 6, 
            19}, -1.4201036786353853`}}, 
         "dMax" -> {{{2017, 1, 3}, 0.7471574331162643}, {{2017, 1, 4}, 
            1.322861847875025}, {{2017, 1, 5}, 1.178566949279297}, {{2017, 1, 
            6}, 0.7942722795654014}, {{2017, 1, 9}, 1.481386515662976}, {{
            2017, 1, 10}, 2.2970926088885335`}, {{2017, 1, 11}, 
            1.4227981680564739`}, {{2017, 1, 12}, 1.2185018961697267`}, {{
            2017, 1, 13}, 1.6642071501618894`}, {{2017, 1, 17}, 
            1.4370279372486934`}, {{2017, 1, 18}, 1.5427330386529619`}, {{
            2017, 1, 19}, 2.0884367667662147`}, {{2017, 1, 20}, 
            1.9641423259341586`}, {{2017, 1, 23}, 1.441257477559077}, {{2017, 
            1, 24}, 1.5569628078451814`}, {{2017, 1, 25}, 
            1.602668443307067}, {{2017, 1, 26}, 1.5783724765961011`}, {{2017, 
            1, 27}, 1.3640778831761544`}, {{2017, 1, 30}, 
            0.771193339976854}, {{2017, 1, 31}, 0.76689783102956}, {{2017, 2, 
            1}, 1.1226029324338285`}, {{2017, 2, 2}, 0.7683070420168079}, {{
            2017, 2, 3}, 0.9140130589484237}, {{2017, 2, 6}, 
            0.7611271424581076}, {{2017, 2, 7}, 0.5368323201563214}, {{2017, 
            2, 8}, 0.32253772673637116`}, {{2017, 2, 9}, 
            1.3682433621982568`}, {{2017, 2, 10}, 2.043948158426744}, {{2017, 
            2, 13}, 2.121063691521389}, {{2017, 2, 14}, 2.2467673433407}, {{
            2017, 2, 15}, 2.162473818035984}, {{2017, 2, 16}, 
            1.7381782327947448`}, {{2017, 2, 17}, 1.1338823423777242`}, {{
            2017, 2, 21}, 1.1467029005826959`}, {{2017, 2, 22}, 
            0.7624082308688003}, {{2017, 2, 23}, 0.44811325597912344`}, {{
            2017, 2, 24}, 0.17381919661679035`}, {{2017, 2, 27}, 
            0.30093396677198214`}, {{2017, 2, 28}, 0.10663792376707448`}, {{
            2017, 3, 1}, -0.5876562118892039}, {{2017, 3, 
            2}, -0.7519515682486073}, {{2017, 3, 3}, -1.0462460853746123`}, {{
            2017, 3, 6}, -1.279131925570983}, {{2017, 3, 
            7}, -1.5934269004606563`}, {{2017, 3, 
            8}, -1.0477212649987706`}, {{2017, 3, 
            9}, -1.9220157058308303`}, {{2017, 3, 
            10}, -2.6663109858962883`}, {{2017, 3, 
            13}, -1.9591962920350419`}, {{2017, 3, 
            14}, -2.1634906565731526`}, {{2017, 3, 
            15}, -1.9577851736991576`}, {{2017, 3, 
            16}, -1.602081979643522}, {{2017, 3, 
            17}, -1.4363755049482378`}, {{2017, 3, 
            20}, -1.6192602007354289`}, {{2017, 3, 
            21}, -1.3635554808008834`}, {{2017, 3, 
            22}, -2.6078507608663415`}, {{2017, 3, 
            23}, -3.1021460409317996`}, {{2017, 3, 
            24}, -2.826440863233586}, {{2017, 3, 27}, -2.989325101257105}, {{
            2017, 3, 28}, -2.8036200761467818`}, {{2017, 3, 
            29}, -2.357914822154619}, {{2017, 3, 30}, -2.372210559983749}, {{
            2017, 3, 31}, -2.0465061452249884`}, {{2017, 4, 
            3}, -2.2793900780727263`}, {{2017, 4, 
            4}, -2.6936854344321297`}, {{2017, 4, 5}, -2.69798094337942}, {{
            2017, 4, 6}, -2.732275231623589}, {{2017, 4, 
            7}, -2.606569672455649}, {{2017, 4, 10}, -2.239455131182293}, {{
            2017, 4, 11}, -2.3837500297780245`}, {{2017, 4, 
            12}, -2.178044546904026}, {{2017, 4, 
            13}, -2.3223394454997575`}, {{2017, 4, 
            17}, -2.4695206420555316`}, {{2017, 4, 
            18}, -0.12381576953309903`}, {{2017, 4, 19}, 
            0.1518894081651183}, {{2017, 4, 20}, 0.7375940518057149}, {{2017, 
            4, 21}, 0.17329907691603808`}, {{2017, 4, 24}, 
            0.26041483889251893`}, {{2017, 4, 25}, 0.08611925365127959}, {{
            2017, 4, 26}, 0.9318241261737157}, {{2017, 4, 27}, 
            0.777530906044781}, {{2017, 4, 28}, 0.34323509192170576`}, {{2017,
             5, 1}, 0.870349480607171}, {{2017, 5, 2}, 
            1.0560545057174942`}, {{2017, 5, 3}, 1.6117603700612158`}, {{2017,
             5, 4}, 1.4774657003473237`}, {{2017, 5, 5}, 
            1.5231694284605766`}, {{2017, 5, 8}, 2.030285266730999}, {{2017, 
            5, 9}, 2.715990291841326}, {{2017, 5, 10}, 4.031694477718254}, {{
            2017, 5, 11}, 4.527400876119593}, {{2017, 5, 12}, 
            4.783105596054135}, {{2017, 5, 15}, 5.080220442503268}, {{2017, 5,
             16}, 5.145924628380197}, {{2017, 5, 17}, 4.751629729784465}, {{
            2017, 5, 18}, 2.577336051891862}, {{2017, 5, 19}, 
            2.5330396274172244`}, {{2017, 5, 22}, 2.610155160511866}, {{2017, 
            5, 23}, 2.8158606433858644`}, {{2017, 5, 24}, 
            2.431565973671969}, {{2017, 5, 25}, 2.287271075076241}, {{2017, 5,
             26}, 2.1229757187168374`}, {{2017, 5, 30}, 
            1.6057955902762977`}, {{2017, 5, 31}, 0.37150053909267555`}, {{
            2017, 6, 1}, 1.117205030145385}, {{2017, 6, 2}, 
            1.2629110470769973`}, {{2017, 6, 5}, 0.8700253594685137}, {{2017, 
            6, 6}, 0.7757316052819654}, {{2017, 6, 7}, 
            1.0914357911588901`}, {{2017, 6, 8}, 1.1871406636813262`}, {{2017,
             6, 9}, 1.6028452310279775`}, {{2017, 6, 
            12}, -0.7800383203500374}, {{2017, 6, 
            13}, -0.6843334478276049}, {{2017, 6, 
            14}, -0.6286294908325125}, {{2017, 6, 
            15}, -1.1029243131342952`}, {{2017, 6, 
            16}, -0.9772187539663548}, {{2017, 6, 
            19}, -0.18010390751722127`}}, 
         "dClose" -> {{{2017, 1, 3}, 0.7071565175889205}, {{2017, 1, 4}, 
            0.9628612375234624}, {{2017, 1, 5}, 0.45856763592480476`}, {{2017,
             1, 6}, 0.6042717455077842}, {{2017, 1, 9}, 1.181387278602429}, {{
            2017, 1, 10}, 1.14709299035826}, {{2017, 1, 11}, 
            1.1727981680564739`}, {{2017, 1, 12}, 1.0785025065212892`}, {{
            2017, 1, 13}, 1.5442082182771237`}, {{2017, 1, 17}, 
            1.3570280135426387`}, {{2017, 1, 18}, 1.3027332675347978`}, {{
            2017, 1, 19}, 1.6684366904722694`}, {{2017, 1, 20}, 
            1.4841427836978305`}, {{2017, 1, 23}, 1.14125824049853}, {{2017, 
            1, 24}, 1.3369634944906892`}, {{2017, 1, 25}, 
            1.402667680367614}, {{2017, 1, 26}, 1.2483725528900464`}, {{2017, 
            1, 27}, 0.9240773491185372}, {{2017, 1, 30}, 
            0.561192348155565}, {{2017, 1, 31}, 0.7368971443840522}, {{2017, 
            2, 1}, 0.6226029324338285}, {{2017, 2, 2}, 0.5483077286623157}, {{
            2017, 2, 3}, 0.7440129826544783}, {{2017, 2, 6}, 
            0.23112836316123264`}, {{2017, 2, 7}, 0.20683239645026674`}, {{
            2017, 2, 8}, 0.21253711638480866`}, {{2017, 2, 9}, 
            1.2882434384922021`}, {{2017, 2, 10}, 1.6239480821327987`}, {{
            2017, 2, 13}, 2.05106399669717}, {{2017, 2, 14}, 
            2.0867674959285907`}, {{2017, 2, 15}, 1.6224729025086404`}, {{
            2017, 2, 16}, 0.8981780802068542}, {{2017, 2, 17}, 
            1.123884020844521}, {{2017, 2, 21}, 0.8067027479948052}, {{2017, 
            2, 22}, 0.45240876492641746`}, {{2017, 2, 23}, 
            0.2481124930396703}, {{2017, 2, 24}, -0.09618126114688152}, {{
            2017, 2, 27}, 0.22093404306592745`}, {{2017, 2, 
            28}, -1.0133610081176911`}, {{2017, 3, 
            1}, -0.6976568222407664}, {{2017, 3, 2}, -1.3919509578970448`}, {{
            2017, 3, 3}, -1.626246009080667}, {{2017, 3, 
            6}, -1.6191320781588736`}, {{2017, 3, 
            7}, -1.7434265189909297`}, {{2017, 3, 
            8}, -1.2377217990563878`}, {{2017, 3, 9}, -3.192016163594502}, {{
            2017, 3, 10}, -2.716312130305468}, {{2017, 3, 
            13}, -1.9691965209168778`}, {{2017, 3, 
            14}, -2.333490732867098}, {{2017, 3, 15}, -2.027786775872009}, {{
            2017, 3, 16}, -1.6520812167040688`}, {{2017, 3, 
            17}, -1.616375810124019}, {{2017, 3, 
            20}, -1.7392610399688273`}, {{2017, 3, 
            21}, -2.5535560148585006`}, {{2017, 3, 
            22}, -3.4078499979268884`}, {{2017, 3, 
            23}, -3.1121462698136355`}, {{2017, 3, 
            24}, -3.1364403291759686`}, {{2017, 3, 
            27}, -3.0793252538449956`}, {{2017, 3, 28}, -2.92362091538018}, {{
            2017, 3, 29}, -2.5379151273304004`}, {{2017, 3, 
            30}, -2.422209797044296}, {{2017, 3, 
            31}, -2.2865059163431525`}, {{2017, 4, 
            3}, -2.7193906121303435`}, {{2017, 4, 4}, -3.123685739607911}, {{
            2017, 4, 5}, -3.1379814774370374`}, {{2017, 4, 
            6}, -2.752275689387261}, {{2017, 4, 7}, -2.766571427216391}, {{
            2017, 4, 10}, -2.6494549785944024`}, {{2017, 4, 
            11}, -2.3837500297780245`}, {{2017, 4, 
            12}, -2.5480453861374244`}, {{2017, 4, 
            13}, -2.612340361027101}, {{2017, 4, 17}, -2.569521023525258}, {{
            2017, 4, 18}, -0.16381477771180997`}, {{2017, 4, 
            19}, -0.07811013407120981}, {{2017, 4, 20}, 
            0.24759428068755085`}, {{2017, 4, 21}, -0.09669947349900099}, {{
            2017, 4, 24}, -0.279584169286192}, {{2017, 4, 
            25}, -0.013879220469814157`}, {{2017, 4, 26}, 
            0.851824202467661}, {{2017, 4, 27}, 0.31752991422349197`}, {{2017,
             4, 28}, 0.18323524450959638`}, {{2017, 5, 1}, 
            0.7503505487224054}, {{2017, 5, 2}, 1.0160554975387832`}, {{2017, 
            5, 3}, 1.2317593019459814`}, {{2017, 5, 4}, 0.677464555938144}, {{
            2017, 5, 5}, 1.4831704202818656`}, {{2017, 5, 8}, 
            2.0002845800854914`}, {{2017, 5, 9}, 2.5759909021928884`}, {{2017,
             5, 10}, 3.801694935481926}, {{2017, 5, 11}, 
            4.247400189474085}, {{2017, 5, 12}, 4.483104451644955}, {{2017, 5,
             15}, 4.26022074767905}, {{2017, 5, 16}, 4.9259253150257045`}, {{
            2017, 5, 17}, 2.001629729784465}, {{2017, 5, 18}, 
            2.147335746716081}, {{2017, 5, 19}, 2.0530400851808963`}, {{2017, 
            5, 22}, 2.540155465687647}, {{2017, 5, 23}, 
            2.0558604145040285`}, {{2017, 5, 24}, 1.8015649055567344`}, {{
            2017, 5, 25}, 2.037271075076241}, {{2017, 5, 26}, 
            1.762975108365275}, {{2017, 5, 30}, 0.4357955139823524}, {{2017, 
            5, 31}, 0.20150046279873024`}, {{2017, 6, 1}, 
            1.0672057930848382`}, {{2017, 6, 2}, 0.9429113522527786}, {{2017, 
            6, 5}, 0.5800263512898027}, {{2017, 6, 6}, 0.5657306134606763}, {{
            2017, 6, 7}, 0.5014356385709995}, {{2017, 6, 8}, 
            1.1371414266207793`}, {{2017, 6, 9}, -0.7671537008567881}, {{2017,
             6, 12}, -1.2100386255258186`}, {{2017, 6, 
            13}, -0.8643337530033861}, {{2017, 6, 
            14}, -1.3986280412475516`}, {{2017, 6, 
            15}, -1.2529239316645686`}, {{2017, 6, 
            16}, -1.407219059142136}, {{2017, 6, 19}, -0.34010375492933065`}},
          "dZero" -> {{{2017, 1, 3}, 0}, {{2017, 1, 4}, 0}, {{2017, 1, 5}, 
            0}, {{2017, 1, 6}, 0}, {{2017, 1, 9}, 0}, {{2017, 1, 10}, 0}, {{
            2017, 1, 11}, 0}, {{2017, 1, 12}, 0}, {{2017, 1, 13}, 0}, {{2017, 
            1, 17}, 0}, {{2017, 1, 18}, 0}, {{2017, 1, 19}, 0}, {{2017, 1, 
            20}, 0}, {{2017, 1, 23}, 0}, {{2017, 1, 24}, 0}, {{2017, 1, 25}, 
            0}, {{2017, 1, 26}, 0}, {{2017, 1, 27}, 0}, {{2017, 1, 30}, 0}, {{
            2017, 1, 31}, 0}, {{2017, 2, 1}, 0}, {{2017, 2, 2}, 0}, {{2017, 2,
             3}, 0}, {{2017, 2, 6}, 0}, {{2017, 2, 7}, 0}, {{2017, 2, 8}, 
            0}, {{2017, 2, 9}, 0}, {{2017, 2, 10}, 0}, {{2017, 2, 13}, 0}, {{
            2017, 2, 14}, 0}, {{2017, 2, 15}, 0}, {{2017, 2, 16}, 0}, {{2017, 
            2, 17}, 0}, {{2017, 2, 21}, 0}, {{2017, 2, 22}, 0}, {{2017, 2, 
            23}, 0}, {{2017, 2, 24}, 0}, {{2017, 2, 27}, 0}, {{2017, 2, 28}, 
            0}, {{2017, 3, 1}, 0}, {{2017, 3, 2}, 0}, {{2017, 3, 3}, 0}, {{
            2017, 3, 6}, 0}, {{2017, 3, 7}, 0}, {{2017, 3, 8}, 0}, {{2017, 3, 
            9}, 0}, {{2017, 3, 10}, 0}, {{2017, 3, 13}, 0}, {{2017, 3, 14}, 
            0}, {{2017, 3, 15}, 0}, {{2017, 3, 16}, 0}, {{2017, 3, 17}, 0}, {{
            2017, 3, 20}, 0}, {{2017, 3, 21}, 0}, {{2017, 3, 22}, 0}, {{2017, 
            3, 23}, 0}, {{2017, 3, 24}, 0}, {{2017, 3, 27}, 0}, {{2017, 3, 
            28}, 0}, {{2017, 3, 29}, 0}, {{2017, 3, 30}, 0}, {{2017, 3, 31}, 
            0}, {{2017, 4, 3}, 0}, {{2017, 4, 4}, 0}, {{2017, 4, 5}, 0}, {{
            2017, 4, 6}, 0}, {{2017, 4, 7}, 0}, {{2017, 4, 10}, 0}, {{2017, 4,
             11}, 0}, {{2017, 4, 12}, 0}, {{2017, 4, 13}, 0}, {{2017, 4, 17}, 
            0}, {{2017, 4, 18}, 0}, {{2017, 4, 19}, 0}, {{2017, 4, 20}, 0}, {{
            2017, 4, 21}, 0}, {{2017, 4, 24}, 0}, {{2017, 4, 25}, 0}, {{2017, 
            4, 26}, 0}, {{2017, 4, 27}, 0}, {{2017, 4, 28}, 0}, {{2017, 5, 1},
             0}, {{2017, 5, 2}, 0}, {{2017, 5, 3}, 0}, {{2017, 5, 4}, 0}, {{
            2017, 5, 5}, 0}, {{2017, 5, 8}, 0}, {{2017, 5, 9}, 0}, {{2017, 5, 
            10}, 0}, {{2017, 5, 11}, 0}, {{2017, 5, 12}, 0}, {{2017, 5, 15}, 
            0}, {{2017, 5, 16}, 0}, {{2017, 5, 17}, 0}, {{2017, 5, 18}, 0}, {{
            2017, 5, 19}, 0}, {{2017, 5, 22}, 0}, {{2017, 5, 23}, 0}, {{2017, 
            5, 24}, 0}, {{2017, 5, 25}, 0}, {{2017, 5, 26}, 0}, {{2017, 5, 
            30}, 0}, {{2017, 5, 31}, 0}, {{2017, 6, 1}, 0}, {{2017, 6, 2}, 
            0}, {{2017, 6, 5}, 0}, {{2017, 6, 6}, 0}, {{2017, 6, 7}, 0}, {{
            2017, 6, 8}, 0}, {{2017, 6, 9}, 0}, {{2017, 6, 12}, 0}, {{2017, 6,
             13}, 0}, {{2017, 6, 14}, 0}, {{2017, 6, 15}, 0}, {{2017, 6, 16}, 
            0}, {{2017, 6, 19}, 0}}, 
         "min" -> {{{2017, 1, 3}, 16.8799991607666}, {{2017, 1, 4}, 18}, {{
            2017, 1, 5}, 17.6299991607666}, {{2017, 1, 6}, 
            17.719999313354492`}, {{2017, 1, 9}, 17.889999389648438`}, {{2017,
             1, 10}, 18.690000534057617`}, {{2017, 1, 11}, 
            18.6299991607666}, {{2017, 1, 12}, 18.239999771118164`}, {{2017, 
            1, 13}, 18.899999618530273`}, {{2017, 1, 17}, 
            19.110000610351562`}, {{2017, 1, 18}, 19.270000457763672`}, {{
            2017, 1, 19}, 19.15999984741211}, {{2017, 1, 20}, 
            19.709999084472656`}, {{2017, 1, 23}, 19.15999984741211}, {{2017, 
            1, 24}, 19.540000915527344`}, {{2017, 1, 25}, 
            19.709999084472656`}, {{2017, 1, 26}, 19.809999465942383`}, {{
            2017, 1, 27}, 19.510000228881836`}, {{2017, 1, 30}, 
            19.190000534057617`}, {{2017, 1, 31}, 19.280000686645508`}, {{
            2017, 2, 1}, 19.420000076293945`}, {{2017, 2, 2}, 
            19.559999465942383`}, {{2017, 2, 3}, 19.729999542236328`}, {{2017,
             2, 6}, 19.59000015258789}, {{2017, 2, 7}, 
            19.360000610351562`}, {{2017, 2, 8}, 19.360000610351562`}, {{2017,
             2, 9}, 19.75}, {{2017, 2, 10}, 21.010000228881836`}, {{2017, 2, 
            13}, 21.100000381469727`}, {{2017, 2, 14}, 
            21.739999771118164`}, {{2017, 2, 15}, 21.270000457763672`}, {{
            2017, 2, 16}, 20.799999237060547`}, {{2017, 2, 17}, 
            20.68000030517578}, {{2017, 2, 21}, 20.6200008392334}, {{2017, 2, 
            22}, 20.690000534057617`}, {{2017, 2, 23}, 
            20.530000686645508`}, {{2017, 2, 24}, 20.1200008392334}, {{2017, 
            2, 27}, 20.360000610351562`}, {{2017, 2, 28}, 
            19.700000762939453`}, {{2017, 3, 1}, 19.799999237060547`}, {{2017,
             3, 2}, 19.5}, {{2017, 3, 3}, 19.139999389648438`}, {{2017, 3, 6},
             19.209999084472656`}, {{2017, 3, 7}, 19.299999237060547`}, {{
            2017, 3, 8}, 19.440000534057617`}, {{2017, 3, 9}, 
            18.059999465942383`}, {{2017, 3, 10}, 18.040000915527344`}, {{
            2017, 3, 13}, 18.739999771118164`}, {{2017, 3, 14}, 
            18.940000534057617`}, {{2017, 3, 15}, 19.200000762939453`}, {{
            2017, 3, 16}, 19.739999771118164`}, {{2017, 3, 17}, 
            20.020000457763672`}, {{2017, 3, 20}, 19.969999313354492`}, {{
            2017, 3, 21}, 19.5}, {{2017, 3, 22}, 18.790000915527344`}, {{2017,
             3, 23}, 18.700000762939453`}, {{2017, 3, 24}, 
            19.06999969482422}, {{2017, 3, 27}, 18.75}, {{2017, 3, 28}, 
            19.25}, {{2017, 3, 29}, 19.329999923706055`}, {{2017, 3, 30}, 
            20.049999237060547`}, {{2017, 3, 31}, 20.190000534057617`}, {{
            2017, 4, 3}, 20.1200008392334}, {{2017, 4, 4}, 
            19.84000015258789}, {{2017, 4, 5}, 19.8700008392334}, {{2017, 4, 
            6}, 19.90999984741211}, {{2017, 4, 7}, 20.200000762939453`}, {{
            2017, 4, 10}, 20.280000686645508`}, {{2017, 4, 11}, 
            20.559999465942383`}, {{2017, 4, 12}, 20.809999465942383`}, {{
            2017, 4, 13}, 20.850000381469727`}, {{2017, 4, 17}, 
            20.889999389648438`}, {{2017, 4, 18}, 22.049999237060547`}, {{
            2017, 4, 19}, 23.18000030517578}, {{2017, 4, 20}, 
            23.920000076293945`}, {{2017, 4, 21}, 24}, {{2017, 4, 24}, 24}, {{
            2017, 4, 25}, 24.06999969482422}, {{2017, 4, 26}, 
            24.229999542236328`}, {{2017, 4, 27}, 24.690000534057617`}, {{
            2017, 4, 28}, 24.65999984741211}, {{2017, 5, 1}, 
            24.770000457763672`}, {{2017, 5, 2}, 25.309999465942383`}, {{2017,
             5, 3}, 25.670000076293945`}, {{2017, 5, 4}, 
            25.110000610351562`}, {{2017, 5, 5}, 25.639999389648438`}, {{2017,
             5, 8}, 26.329999923706055`}, {{2017, 5, 9}, 
            26.610000610351562`}, {{2017, 5, 10}, 27.8700008392334}, {{2017, 
            5, 11}, 28.639999389648438`}, {{2017, 5, 12}, 
            28.920000076293945`}, {{2017, 5, 15}, 28.549999237060547`}, {{
            2017, 5, 16}, 26.829999923706055`}, {{2017, 5, 17}, 
            27.280000686645508`}, {{2017, 5, 18}, 27.049999237060547`}, {{
            2017, 5, 19}, 27.68000030517578}, {{2017, 5, 22}, 
            27.850000381469727`}, {{2017, 5, 23}, 27.84000015258789}, {{2017, 
            5, 24}, 27.969999313354492`}, {{2017, 5, 25}, 
            27.959999084472656`}, {{2017, 5, 26}, 27.860000610351562`}, {{
            2017, 5, 30}, 27.049999237060547`}, {{2017, 5, 31}, 
            26.219999313354492`}, {{2017, 6, 1}, 26.920000076293945`}, {{2017,
             6, 2}, 27.299999237060547`}, {{2017, 6, 5}, 
            27.43000030517578}, {{2017, 6, 6}, 27.209999084472656`}, {{2017, 
            6, 7}, 27.309999465942383`}, {{2017, 6, 8}, 
            27.420000076293945`}, {{2017, 6, 9}, 26.43000030517578}, {{2017, 
            6, 12}, 25.420000076293945`}, {{2017, 6, 13}, 
            26.049999237060547`}, {{2017, 6, 14}, 25.93000030517578}, {{2017, 
            6, 15}, 25.5}, {{2017, 6, 16}, 26.110000610351562`}, {{2017, 6, 
            19}, 26.5}}, 
         "max" -> {{{2017, 1, 3}, 17.93000030517578}, {{2017, 1, 4}, 
            18.56999969482422}, {{2017, 1, 5}, 18.489999771118164`}, {{2017, 
            1, 6}, 18.170000076293945`}, {{2017, 1, 9}, 
            19.049999237060547`}, {{2017, 1, 10}, 19.93000030517578}, {{2017, 
            1, 11}, 19.1200008392334}, {{2017, 1, 12}, 
            18.979999542236328`}, {{2017, 1, 13}, 19.489999771118164`}, {{
            2017, 1, 17}, 19.520000457763672`}, {{2017, 1, 18}, 
            19.690000534057617`}, {{2017, 1, 19}, 20.299999237060547`}, {{
            2017, 1, 20}, 20.239999771118164`}, {{2017, 1, 23}, 
            19.90999984741211}, {{2017, 1, 24}, 20.09000015258789}, {{2017, 1,
             25}, 20.200000762939453`}, {{2017, 1, 26}, 
            20.239999771118164`}, {{2017, 1, 27}, 20.09000015258789}, {{2017, 
            1, 30}, 19.690000534057617`}, {{2017, 1, 31}, 19.75}, {{2017, 2, 
            1}, 20.170000076293945`}, {{2017, 2, 2}, 19.8799991607666}, {{
            2017, 2, 3}, 20.09000015258789}, {{2017, 2, 6}, 
            20.1299991607666}, {{2017, 2, 7}, 19.969999313354492`}, {{2017, 2,
             8}, 19.81999969482422}, {{2017, 2, 9}, 20.93000030517578}, {{
            2017, 2, 10}, 21.670000076293945`}, {{2017, 2, 13}, 
            21.940000534057617`}, {{2017, 2, 14}, 22.1299991607666}, {{2017, 
            2, 15}, 22.110000610351562`}, {{2017, 2, 16}, 21.75}, {{2017, 2, 
            17}, 21.209999084472656`}, {{2017, 2, 21}, 
            21.479999542236328`}, {{2017, 2, 22}, 21.15999984741211}, {{2017, 
            2, 23}, 20.90999984741211}, {{2017, 2, 24}, 
            20.700000762939453`}, {{2017, 2, 27}, 21.020000457763672`}, {{
            2017, 2, 28}, 20.889999389648438`}, {{2017, 3, 1}, 
            20.260000228881836`}, {{2017, 3, 2}, 20.15999984741211}, {{2017, 
            3, 3}, 19.93000030517578}, {{2017, 3, 6}, 19.889999389648438`}, {{
            2017, 3, 7}, 19.639999389648438`}, {{2017, 3, 8}, 20.25}, {{2017, 
            3, 9}, 19.440000534057617`}, {{2017, 3, 10}, 
            18.760000228881836`}, {{2017, 3, 13}, 19.65999984741211}, {{2017, 
            3, 14}, 19.520000457763672`}, {{2017, 3, 15}, 
            19.790000915527344`}, {{2017, 3, 16}, 20.209999084472656`}, {{
            2017, 3, 17}, 20.440000534057617`}, {{2017, 3, 20}, 
            20.450000762939453`}, {{2017, 3, 21}, 20.770000457763672`}, {{
            2017, 3, 22}, 19.59000015258789}, {{2017, 3, 23}, 
            19.15999984741211}, {{2017, 3, 24}, 19.5}, {{2017, 3, 27}, 
            19.530000686645508`}, {{2017, 3, 28}, 19.780000686645508`}, {{
            2017, 3, 29}, 20.290000915527344`}, {{2017, 3, 30}, 
            20.34000015258789}, {{2017, 3, 31}, 20.729999542236328`}, {{2017, 
            4, 3}, 20.690000534057617`}, {{2017, 4, 4}, 20.34000015258789}, {{
            2017, 4, 5}, 20.399999618530273`}, {{2017, 4, 6}, 
            20.43000030517578}, {{2017, 4, 7}, 20.6200008392334}, {{2017, 4, 
            10}, 21.18000030517578}, {{2017, 4, 11}, 21.100000381469727`}, {{
            2017, 4, 12}, 21.3700008392334}, {{2017, 4, 13}, 
            21.290000915527344`}, {{2017, 4, 17}, 21.399999618530273`}, {{
            2017, 4, 18}, 23.809999465942383`}, {{2017, 4, 19}, 
            24.149999618530273`}, {{2017, 4, 20}, 24.799999237060547`}, {{
            2017, 4, 21}, 24.299999237060547`}, {{2017, 4, 24}, 
            24.579999923706055`}, {{2017, 4, 25}, 24.469999313354492`}, {{
            2017, 4, 26}, 25.3799991607666}, {{2017, 4, 27}, 
            25.290000915527344`}, {{2017, 4, 28}, 24.920000076293945`}, {{
            2017, 5, 1}, 25.639999389648438`}, {{2017, 5, 2}, 
            25.889999389648438`}, {{2017, 5, 3}, 26.510000228881836`}, {{2017,
             5, 4}, 26.440000534057617`}, {{2017, 5, 5}, 
            26.549999237060547`}, {{2017, 5, 8}, 27.25}, {{2017, 5, 9}, 
            28}, {{2017, 5, 10}, 29.3799991607666}, {{2017, 5, 11}, 
            29.940000534057617`}, {{2017, 5, 12}, 30.260000228881836`}, {{
            2017, 5, 15}, 30.75}, {{2017, 5, 16}, 30.8799991607666}, {{2017, 
            5, 17}, 30.549999237060547`}, {{2017, 5, 18}, 
            28.440000534057617`}, {{2017, 5, 19}, 28.459999084472656`}, {{
            2017, 5, 22}, 28.729999542236328`}, {{2017, 5, 23}, 29}, {{2017, 
            5, 24}, 28.68000030517578}, {{2017, 5, 25}, 
            28.600000381469727`}, {{2017, 5, 26}, 28.5}, {{2017, 5, 30}, 
            28.239999771118164`}, {{2017, 5, 31}, 27.06999969482422}, {{2017, 
            6, 1}, 27.8799991607666}, {{2017, 6, 2}, 28.09000015258789}, {{
            2017, 6, 5}, 27.889999389648438`}, {{2017, 6, 6}, 
            27.860000610351562`}, {{2017, 6, 7}, 28.239999771118164`}, {{2017,
             6, 8}, 28.399999618530273`}, {{2017, 6, 9}, 28.8799991607666}, {{
            2017, 6, 12}, 26.690000534057617`}, {{2017, 6, 13}, 
            26.850000381469727`}, {{2017, 6, 14}, 26.969999313354492`}, {{
            2017, 6, 15}, 26.559999465942383`}, {{2017, 6, 16}, 26.75}, {{
            2017, 6, 19}, 27.739999771118164`}}, 
         "close" -> {{{2017, 1, 3}, 17.889999389648438`}, {{2017, 1, 4}, 
            18.209999084472656`}, {{2017, 1, 5}, 17.770000457763672`}, {{2017,
             1, 6}, 17.979999542236328`}, {{2017, 1, 9}, 18.75}, {{2017, 1, 
            10}, 18.780000686645508`}, {{2017, 1, 11}, 18.8700008392334}, {{
            2017, 1, 12}, 18.84000015258789}, {{2017, 1, 13}, 
            19.3700008392334}, {{2017, 1, 17}, 19.440000534057617`}, {{2017, 
            1, 18}, 19.450000762939453`}, {{2017, 1, 19}, 
            19.8799991607666}, {{2017, 1, 20}, 19.760000228881836`}, {{2017, 
            1, 23}, 19.610000610351562`}, {{2017, 1, 24}, 
            19.8700008392334}, {{2017, 1, 25}, 20}, {{2017, 1, 26}, 
            19.90999984741211}, {{2017, 1, 27}, 19.649999618530273`}, {{2017, 
            1, 30}, 19.479999542236328`}, {{2017, 1, 31}, 
            19.719999313354492`}, {{2017, 2, 1}, 19.670000076293945`}, {{2017,
             2, 2}, 19.65999984741211}, {{2017, 2, 3}, 
            19.920000076293945`}, {{2017, 2, 6}, 19.600000381469727`}, {{2017,
             2, 7}, 19.639999389648438`}, {{2017, 2, 8}, 
            19.709999084472656`}, {{2017, 2, 9}, 20.850000381469727`}, {{2017,
             2, 10}, 21.25}, {{2017, 2, 13}, 21.8700008392334}, {{2017, 2, 
            14}, 21.969999313354492`}, {{2017, 2, 15}, 21.56999969482422}, {{
            2017, 2, 16}, 20.90999984741211}, {{2017, 2, 17}, 
            21.200000762939453`}, {{2017, 2, 21}, 21.139999389648438`}, {{
            2017, 2, 22}, 20.850000381469727`}, {{2017, 2, 23}, 
            20.709999084472656`}, {{2017, 2, 24}, 20.43000030517578}, {{2017, 
            2, 27}, 20.940000534057617`}, {{2017, 2, 28}, 
            19.770000457763672`}, {{2017, 3, 1}, 20.149999618530273`}, {{2017,
             3, 2}, 19.520000457763672`}, {{2017, 3, 3}, 
            19.350000381469727`}, {{2017, 3, 6}, 19.549999237060547`}, {{2017,
             3, 7}, 19.489999771118164`}, {{2017, 3, 8}, 
            20.059999465942383`}, {{2017, 3, 9}, 18.170000076293945`}, {{2017,
             3, 10}, 18.709999084472656`}, {{2017, 3, 13}, 
            19.649999618530273`}, {{2017, 3, 14}, 19.350000381469727`}, {{
            2017, 3, 15}, 19.719999313354492`}, {{2017, 3, 16}, 
            20.15999984741211}, {{2017, 3, 17}, 20.260000228881836`}, {{2017, 
            3, 20}, 20.329999923706055`}, {{2017, 3, 21}, 
            19.579999923706055`}, {{2017, 3, 22}, 18.790000915527344`}, {{
            2017, 3, 23}, 19.149999618530273`}, {{2017, 3, 24}, 
            19.190000534057617`}, {{2017, 3, 27}, 19.440000534057617`}, {{
            2017, 3, 28}, 19.65999984741211}, {{2017, 3, 29}, 
            20.110000610351562`}, {{2017, 3, 30}, 20.290000915527344`}, {{
            2017, 3, 31}, 20.489999771118164`}, {{2017, 4, 3}, 20.25}, {{2017,
             4, 4}, 19.90999984741211}, {{2017, 4, 5}, 
            19.959999084472656`}, {{2017, 4, 6}, 20.40999984741211}, {{2017, 
            4, 7}, 20.459999084472656`}, {{2017, 4, 10}, 
            20.770000457763672`}, {{2017, 4, 11}, 21.100000381469727`}, {{
            2017, 4, 12}, 21}, {{2017, 4, 13}, 21}, {{2017, 4, 17}, 
            21.299999237060547`}, {{2017, 4, 18}, 23.770000457763672`}, {{
            2017, 4, 19}, 23.920000076293945`}, {{2017, 4, 20}, 
            24.309999465942383`}, {{2017, 4, 21}, 24.030000686645508`}, {{
            2017, 4, 24}, 24.040000915527344`}, {{2017, 4, 25}, 
            24.3700008392334}, {{2017, 4, 26}, 25.299999237060547`}, {{2017, 
            4, 27}, 24.829999923706055`}, {{2017, 4, 28}, 
            24.760000228881836`}, {{2017, 5, 1}, 25.520000457763672`}, {{2017,
             5, 2}, 25.850000381469727`}, {{2017, 5, 3}, 26.1299991607666}, {{
            2017, 5, 4}, 25.639999389648438`}, {{2017, 5, 5}, 
            26.510000228881836`}, {{2017, 5, 8}, 27.219999313354492`}, {{2017,
             5, 9}, 27.860000610351562`}, {{2017, 5, 10}, 
            29.149999618530273`}, {{2017, 5, 11}, 29.65999984741211}, {{2017, 
            5, 12}, 29.959999084472656`}, {{2017, 5, 15}, 
            29.93000030517578}, {{2017, 5, 16}, 30.65999984741211}, {{2017, 5,
             17}, 27.799999237060547`}, {{2017, 5, 18}, 
            28.010000228881836`}, {{2017, 5, 19}, 27.979999542236328`}, {{
            2017, 5, 22}, 28.65999984741211}, {{2017, 5, 23}, 
            28.239999771118164`}, {{2017, 5, 24}, 28.049999237060547`}, {{
            2017, 5, 25}, 28.350000381469727`}, {{2017, 5, 26}, 
            28.139999389648438`}, {{2017, 5, 30}, 27.06999969482422}, {{2017, 
            5, 31}, 26.899999618530273`}, {{2017, 6, 1}, 
            27.829999923706055`}, {{2017, 6, 2}, 27.770000457763672`}, {{2017,
             6, 5}, 27.600000381469727`}, {{2017, 6, 6}, 
            27.649999618530273`}, {{2017, 6, 7}, 27.649999618530273`}, {{2017,
             6, 8}, 28.350000381469727`}, {{2017, 6, 9}, 
            26.510000228881836`}, {{2017, 6, 12}, 26.260000228881836`}, {{
            2017, 6, 13}, 26.670000076293945`}, {{2017, 6, 14}, 
            26.200000762939453`}, {{2017, 6, 15}, 26.40999984741211}, {{2017, 
            6, 16}, 26.31999969482422}, {{2017, 6, 19}, 27.579999923706055`}},
          "model" -> {{{2017, 1, 3}, 17.182842872059517`}, {{2017, 1, 3}, 
            17.182842872059517`}, {{2017, 1, 3}, 17.182842872059517`}, {{2017,
             1, 4}, 17.247137846949194`}, {{2017, 1, 4}, 
            17.247137846949194`}, {{2017, 1, 4}, 17.247137846949194`}, {{2017,
             1, 5}, 17.311432821838867`}, {{2017, 1, 5}, 
            17.311432821838867`}, {{2017, 1, 5}, 17.311432821838867`}, {{2017,
             1, 6}, 17.375727796728544`}, {{2017, 1, 6}, 
            17.375727796728544`}, {{2017, 1, 6}, 17.375727796728544`}, {{2017,
             1, 9}, 17.56861272139757}, {{2017, 1, 9}, 17.56861272139757}, {{
            2017, 1, 9}, 17.56861272139757}, {{2017, 1, 10}, 
            17.632907696287248`}, {{2017, 1, 10}, 17.632907696287248`}, {{
            2017, 1, 10}, 17.632907696287248`}, {{2017, 1, 11}, 
            17.697202671176925`}, {{2017, 1, 11}, 17.697202671176925`}, {{
            2017, 1, 11}, 17.697202671176925`}, {{2017, 1, 12}, 
            17.7614976460666}, {{2017, 1, 12}, 17.7614976460666}, {{2017, 1, 
            12}, 17.7614976460666}, {{2017, 1, 13}, 17.825792620956275`}, {{
            2017, 1, 13}, 17.825792620956275`}, {{2017, 1, 13}, 
            17.825792620956275`}, {{2017, 1, 17}, 18.08297252051498}, {{2017, 
            1, 17}, 18.08297252051498}, {{2017, 1, 17}, 18.08297252051498}, {{
            2017, 1, 18}, 18.147267495404655`}, {{2017, 1, 18}, 
            18.147267495404655`}, {{2017, 1, 18}, 18.147267495404655`}, {{
            2017, 1, 19}, 18.211562470294332`}, {{2017, 1, 19}, 
            18.211562470294332`}, {{2017, 1, 19}, 18.211562470294332`}, {{
            2017, 1, 20}, 18.275857445184005`}, {{2017, 1, 20}, 
            18.275857445184005`}, {{2017, 1, 20}, 18.275857445184005`}, {{
            2017, 1, 23}, 18.468742369853032`}, {{2017, 1, 23}, 
            18.468742369853032`}, {{2017, 1, 23}, 18.468742369853032`}, {{
            2017, 1, 24}, 18.53303734474271}, {{2017, 1, 24}, 
            18.53303734474271}, {{2017, 1, 24}, 18.53303734474271}, {{2017, 1,
             25}, 18.597332319632386`}, {{2017, 1, 25}, 
            18.597332319632386`}, {{2017, 1, 25}, 18.597332319632386`}, {{
            2017, 1, 26}, 18.661627294522063`}, {{2017, 1, 26}, 
            18.661627294522063`}, {{2017, 1, 26}, 18.661627294522063`}, {{
            2017, 1, 27}, 18.725922269411736`}, {{2017, 1, 27}, 
            18.725922269411736`}, {{2017, 1, 27}, 18.725922269411736`}, {{
            2017, 1, 30}, 18.918807194080763`}, {{2017, 1, 30}, 
            18.918807194080763`}, {{2017, 1, 30}, 18.918807194080763`}, {{
            2017, 1, 31}, 18.98310216897044}, {{2017, 1, 31}, 
            18.98310216897044}, {{2017, 1, 31}, 18.98310216897044}, {{2017, 2,
             1}, 19.047397143860117`}, {{2017, 2, 1}, 19.047397143860117`}, {{
            2017, 2, 1}, 19.047397143860117`}, {{2017, 2, 2}, 
            19.111692118749794`}, {{2017, 2, 2}, 19.111692118749794`}, {{2017,
             2, 2}, 19.111692118749794`}, {{2017, 2, 3}, 
            19.175987093639467`}, {{2017, 2, 3}, 19.175987093639467`}, {{2017,
             2, 3}, 19.175987093639467`}, {{2017, 2, 6}, 
            19.368872018308494`}, {{2017, 2, 6}, 19.368872018308494`}, {{2017,
             2, 6}, 19.368872018308494`}, {{2017, 2, 7}, 
            19.43316699319817}, {{2017, 2, 7}, 19.43316699319817}, {{2017, 2, 
            7}, 19.43316699319817}, {{2017, 2, 8}, 19.497461968087848`}, {{
            2017, 2, 8}, 19.497461968087848`}, {{2017, 2, 8}, 
            19.497461968087848`}, {{2017, 2, 9}, 19.561756942977524`}, {{2017,
             2, 9}, 19.561756942977524`}, {{2017, 2, 9}, 
            19.561756942977524`}, {{2017, 2, 10}, 19.6260519178672}, {{2017, 
            2, 10}, 19.6260519178672}, {{2017, 2, 10}, 19.6260519178672}, {{
            2017, 2, 13}, 19.81893684253623}, {{2017, 2, 13}, 
            19.81893684253623}, {{2017, 2, 13}, 19.81893684253623}, {{2017, 2,
             14}, 19.8832318174259}, {{2017, 2, 14}, 19.8832318174259}, {{
            2017, 2, 14}, 19.8832318174259}, {{2017, 2, 15}, 
            19.94752679231558}, {{2017, 2, 15}, 19.94752679231558}, {{2017, 2,
             15}, 19.94752679231558}, {{2017, 2, 16}, 20.011821767205255`}, {{
            2017, 2, 16}, 20.011821767205255`}, {{2017, 2, 16}, 
            20.011821767205255`}, {{2017, 2, 17}, 20.076116742094932`}, {{
            2017, 2, 17}, 20.076116742094932`}, {{2017, 2, 17}, 
            20.076116742094932`}, {{2017, 2, 21}, 20.333296641653632`}, {{
            2017, 2, 21}, 20.333296641653632`}, {{2017, 2, 21}, 
            20.333296641653632`}, {{2017, 2, 22}, 20.39759161654331}, {{2017, 
            2, 22}, 20.39759161654331}, {{2017, 2, 22}, 20.39759161654331}, {{
            2017, 2, 23}, 20.461886591432986`}, {{2017, 2, 23}, 
            20.461886591432986`}, {{2017, 2, 23}, 20.461886591432986`}, {{
            2017, 2, 24}, 20.526181566322663`}, {{2017, 2, 24}, 
            20.526181566322663`}, {{2017, 2, 24}, 20.526181566322663`}, {{
            2017, 2, 27}, 20.71906649099169}, {{2017, 2, 27}, 
            20.71906649099169}, {{2017, 2, 27}, 20.71906649099169}, {{2017, 2,
             28}, 20.783361465881363`}, {{2017, 2, 28}, 
            20.783361465881363`}, {{2017, 2, 28}, 20.783361465881363`}, {{
            2017, 3, 1}, 20.84765644077104}, {{2017, 3, 1}, 
            20.84765644077104}, {{2017, 3, 1}, 20.84765644077104}, {{2017, 3, 
            2}, 20.911951415660717`}, {{2017, 3, 2}, 20.911951415660717`}, {{
            2017, 3, 2}, 20.911951415660717`}, {{2017, 3, 3}, 
            20.976246390550394`}, {{2017, 3, 3}, 20.976246390550394`}, {{2017,
             3, 3}, 20.976246390550394`}, {{2017, 3, 6}, 
            21.16913131521942}, {{2017, 3, 6}, 21.16913131521942}, {{2017, 3, 
            6}, 21.16913131521942}, {{2017, 3, 7}, 21.233426290109094`}, {{
            2017, 3, 7}, 21.233426290109094`}, {{2017, 3, 7}, 
            21.233426290109094`}, {{2017, 3, 8}, 21.29772126499877}, {{2017, 
            3, 8}, 21.29772126499877}, {{2017, 3, 8}, 21.29772126499877}, {{
            2017, 3, 9}, 21.362016239888447`}, {{2017, 3, 9}, 
            21.362016239888447`}, {{2017, 3, 9}, 21.362016239888447`}, {{2017,
             3, 10}, 21.426311214778124`}, {{2017, 3, 10}, 
            21.426311214778124`}, {{2017, 3, 10}, 21.426311214778124`}, {{
            2017, 3, 13}, 21.61919613944715}, {{2017, 3, 13}, 
            21.61919613944715}, {{2017, 3, 13}, 21.61919613944715}, {{2017, 3,
             14}, 21.683491114336825`}, {{2017, 3, 14}, 
            21.683491114336825`}, {{2017, 3, 14}, 21.683491114336825`}, {{
            2017, 3, 15}, 21.7477860892265}, {{2017, 3, 15}, 
            21.7477860892265}, {{2017, 3, 15}, 21.7477860892265}, {{2017, 3, 
            16}, 21.812081064116178`}, {{2017, 3, 16}, 
            21.812081064116178`}, {{2017, 3, 16}, 21.812081064116178`}, {{
            2017, 3, 17}, 21.876376039005855`}, {{2017, 3, 17}, 
            21.876376039005855`}, {{2017, 3, 17}, 21.876376039005855`}, {{
            2017, 3, 20}, 22.069260963674882`}, {{2017, 3, 20}, 
            22.069260963674882`}, {{2017, 3, 20}, 22.069260963674882`}, {{
            2017, 3, 21}, 22.133555938564555`}, {{2017, 3, 21}, 
            22.133555938564555`}, {{2017, 3, 21}, 22.133555938564555`}, {{
            2017, 3, 22}, 22.197850913454232`}, {{2017, 3, 22}, 
            22.197850913454232`}, {{2017, 3, 22}, 22.197850913454232`}, {{
            2017, 3, 23}, 22.26214588834391}, {{2017, 3, 23}, 
            22.26214588834391}, {{2017, 3, 23}, 22.26214588834391}, {{2017, 3,
             24}, 22.326440863233586`}, {{2017, 3, 24}, 
            22.326440863233586`}, {{2017, 3, 24}, 22.326440863233586`}, {{
            2017, 3, 27}, 22.519325787902613`}, {{2017, 3, 27}, 
            22.519325787902613`}, {{2017, 3, 27}, 22.519325787902613`}, {{
            2017, 3, 28}, 22.58362076279229}, {{2017, 3, 28}, 
            22.58362076279229}, {{2017, 3, 28}, 22.58362076279229}, {{2017, 3,
             29}, 22.647915737681963`}, {{2017, 3, 29}, 
            22.647915737681963`}, {{2017, 3, 29}, 22.647915737681963`}, {{
            2017, 3, 30}, 22.71221071257164}, {{2017, 3, 30}, 
            22.71221071257164}, {{2017, 3, 30}, 22.71221071257164}, {{2017, 3,
             31}, 22.776505687461317`}, {{2017, 3, 31}, 
            22.776505687461317`}, {{2017, 3, 31}, 22.776505687461317`}, {{
            2017, 4, 3}, 22.969390612130343`}, {{2017, 4, 3}, 
            22.969390612130343`}, {{2017, 4, 3}, 22.969390612130343`}, {{2017,
             4, 4}, 23.03368558702002}, {{2017, 4, 4}, 23.03368558702002}, {{
            2017, 4, 4}, 23.03368558702002}, {{2017, 4, 5}, 
            23.097980561909694`}, {{2017, 4, 5}, 23.097980561909694`}, {{2017,
             4, 5}, 23.097980561909694`}, {{2017, 4, 6}, 
            23.16227553679937}, {{2017, 4, 6}, 23.16227553679937}, {{2017, 4, 
            6}, 23.16227553679937}, {{2017, 4, 7}, 23.226570511689047`}, {{
            2017, 4, 7}, 23.226570511689047`}, {{2017, 4, 7}, 
            23.226570511689047`}, {{2017, 4, 10}, 23.419455436358074`}, {{
            2017, 4, 10}, 23.419455436358074`}, {{2017, 4, 10}, 
            23.419455436358074`}, {{2017, 4, 11}, 23.48375041124775}, {{2017, 
            4, 11}, 23.48375041124775}, {{2017, 4, 11}, 23.48375041124775}, {{
            2017, 4, 12}, 23.548045386137424`}, {{2017, 4, 12}, 
            23.548045386137424`}, {{2017, 4, 12}, 23.548045386137424`}, {{
            2017, 4, 13}, 23.6123403610271}, {{2017, 4, 13}, 
            23.6123403610271}, {{2017, 4, 13}, 23.6123403610271}, {{2017, 4, 
            17}, 23.869520260585805`}, {{2017, 4, 17}, 
            23.869520260585805`}, {{2017, 4, 17}, 23.869520260585805`}, {{
            2017, 4, 18}, 23.933815235475482`}, {{2017, 4, 18}, 
            23.933815235475482`}, {{2017, 4, 18}, 23.933815235475482`}, {{
            2017, 4, 19}, 23.998110210365155`}, {{2017, 4, 19}, 
            23.998110210365155`}, {{2017, 4, 19}, 23.998110210365155`}, {{
            2017, 4, 20}, 24.062405185254832`}, {{2017, 4, 20}, 
            24.062405185254832`}, {{2017, 4, 20}, 24.062405185254832`}, {{
            2017, 4, 21}, 24.12670016014451}, {{2017, 4, 21}, 
            24.12670016014451}, {{2017, 4, 21}, 24.12670016014451}, {{2017, 4,
             24}, 24.319585084813536`}, {{2017, 4, 24}, 
            24.319585084813536`}, {{2017, 4, 24}, 24.319585084813536`}, {{
            2017, 4, 25}, 24.383880059703213`}, {{2017, 4, 25}, 
            24.383880059703213`}, {{2017, 4, 25}, 24.383880059703213`}, {{
            2017, 4, 26}, 24.448175034592886`}, {{2017, 4, 26}, 
            24.448175034592886`}, {{2017, 4, 26}, 24.448175034592886`}, {{
            2017, 4, 27}, 24.512470009482563`}, {{2017, 4, 27}, 
            24.512470009482563`}, {{2017, 4, 27}, 24.512470009482563`}, {{
            2017, 4, 28}, 24.57676498437224}, {{2017, 4, 28}, 
            24.57676498437224}, {{2017, 4, 28}, 24.57676498437224}, {{2017, 5,
             1}, 24.769649909041267`}, {{2017, 5, 1}, 24.769649909041267`}, {{
            2017, 5, 1}, 24.769649909041267`}, {{2017, 5, 2}, 
            24.833944883930943`}, {{2017, 5, 2}, 24.833944883930943`}, {{2017,
             5, 2}, 24.833944883930943`}, {{2017, 5, 3}, 
            24.89823985882062}, {{2017, 5, 3}, 24.89823985882062}, {{2017, 5, 
            3}, 24.89823985882062}, {{2017, 5, 4}, 24.962534833710293`}, {{
            2017, 5, 4}, 24.962534833710293`}, {{2017, 5, 4}, 
            24.962534833710293`}, {{2017, 5, 5}, 25.02682980859997}, {{2017, 
            5, 5}, 25.02682980859997}, {{2017, 5, 5}, 25.02682980859997}, {{
            2017, 5, 8}, 25.219714733269}, {{2017, 5, 8}, 25.219714733269}, {{
            2017, 5, 8}, 25.219714733269}, {{2017, 5, 9}, 
            25.284009708158674`}, {{2017, 5, 9}, 25.284009708158674`}, {{2017,
             5, 9}, 25.284009708158674`}, {{2017, 5, 10}, 
            25.348304683048347`}, {{2017, 5, 10}, 25.348304683048347`}, {{
            2017, 5, 10}, 25.348304683048347`}, {{2017, 5, 11}, 
            25.412599657938024`}, {{2017, 5, 11}, 25.412599657938024`}, {{
            2017, 5, 11}, 25.412599657938024`}, {{2017, 5, 12}, 
            25.4768946328277}, {{2017, 5, 12}, 25.4768946328277}, {{2017, 5, 
            12}, 25.4768946328277}, {{2017, 5, 15}, 25.66977955749673}, {{
            2017, 5, 15}, 25.66977955749673}, {{2017, 5, 15}, 
            25.66977955749673}, {{2017, 5, 16}, 25.734074532386405`}, {{2017, 
            5, 16}, 25.734074532386405`}, {{2017, 5, 16}, 
            25.734074532386405`}, {{2017, 5, 17}, 25.79836950727608}, {{2017, 
            5, 17}, 25.79836950727608}, {{2017, 5, 17}, 25.79836950727608}, {{
            2017, 5, 18}, 25.862664482165755`}, {{2017, 5, 18}, 
            25.862664482165755`}, {{2017, 5, 18}, 25.862664482165755`}, {{
            2017, 5, 19}, 25.926959457055432`}, {{2017, 5, 19}, 
            25.926959457055432`}, {{2017, 5, 19}, 25.926959457055432`}, {{
            2017, 5, 22}, 26.119844381724462`}, {{2017, 5, 22}, 
            26.119844381724462`}, {{2017, 5, 22}, 26.119844381724462`}, {{
            2017, 5, 23}, 26.184139356614136`}, {{2017, 5, 23}, 
            26.184139356614136`}, {{2017, 5, 23}, 26.184139356614136`}, {{
            2017, 5, 24}, 26.248434331503812`}, {{2017, 5, 24}, 
            26.248434331503812`}, {{2017, 5, 24}, 26.248434331503812`}, {{
            2017, 5, 25}, 26.312729306393486`}, {{2017, 5, 25}, 
            26.312729306393486`}, {{2017, 5, 25}, 26.312729306393486`}, {{
            2017, 5, 26}, 26.377024281283163`}, {{2017, 5, 26}, 
            26.377024281283163`}, {{2017, 5, 26}, 26.377024281283163`}, {{
            2017, 5, 30}, 26.634204180841866`}, {{2017, 5, 30}, 
            26.634204180841866`}, {{2017, 5, 30}, 26.634204180841866`}, {{
            2017, 5, 31}, 26.698499155731543`}, {{2017, 5, 31}, 
            26.698499155731543`}, {{2017, 5, 31}, 26.698499155731543`}, {{
            2017, 6, 1}, 26.762794130621216`}, {{2017, 6, 1}, 
            26.762794130621216`}, {{2017, 6, 1}, 26.762794130621216`}, {{2017,
             6, 2}, 26.827089105510893`}, {{2017, 6, 2}, 
            26.827089105510893`}, {{2017, 6, 2}, 26.827089105510893`}, {{2017,
             6, 5}, 27.019974030179924`}, {{2017, 6, 5}, 
            27.019974030179924`}, {{2017, 6, 5}, 27.019974030179924`}, {{2017,
             6, 6}, 27.084269005069597`}, {{2017, 6, 6}, 
            27.084269005069597`}, {{2017, 6, 6}, 27.084269005069597`}, {{2017,
             6, 7}, 27.148563979959274`}, {{2017, 6, 7}, 
            27.148563979959274`}, {{2017, 6, 7}, 27.148563979959274`}, {{2017,
             6, 8}, 27.212858954848947`}, {{2017, 6, 8}, 
            27.212858954848947`}, {{2017, 6, 8}, 27.212858954848947`}, {{2017,
             6, 9}, 27.277153929738624`}, {{2017, 6, 9}, 
            27.277153929738624`}, {{2017, 6, 9}, 27.277153929738624`}, {{2017,
             6, 12}, 27.470038854407655`}, {{2017, 6, 12}, 
            27.470038854407655`}, {{2017, 6, 12}, 27.470038854407655`}, {{
            2017, 6, 13}, 27.53433382929733}, {{2017, 6, 13}, 
            27.53433382929733}, {{2017, 6, 13}, 27.53433382929733}, {{2017, 6,
             14}, 27.598628804187005`}, {{2017, 6, 14}, 
            27.598628804187005`}, {{2017, 6, 14}, 27.598628804187005`}, {{
            2017, 6, 15}, 27.662923779076678`}, {{2017, 6, 15}, 
            27.662923779076678`}, {{2017, 6, 15}, 27.662923779076678`}, {{
            2017, 6, 16}, 27.727218753966355`}, {{2017, 6, 16}, 
            27.727218753966355`}, {{2017, 6, 16}, 27.727218753966355`}, {{
            2017, 6, 19}, 27.920103678635385`}, {{2017, 6, 19}, 
            27.920103678635385`}, {{2017, 6, 19}, 27.920103678635385`}}, 
         "lm" -> (ReplaceAll[
           Normal[
            
            LinearModelFit[$CellContext`secondsFormData$17340, \
$CellContext`x, $CellContext`x]], Pattern[$CellContext`a, 
              Blank[]] + Pattern[$CellContext`b, 
               
               Blank[]] $CellContext`x -> $CellContext`a + $CellContext`b #]& \
), "nweeks" -> 24, "len" -> 116, "vMin" -> 16.8799991607666, "vMax" -> 
         30.8799991607666}, $CellContext`o$$, $CellContext`h$$], 
      "Specifications" :> {{{$CellContext`o$$, -0.5, 
          "offset from linear fit"}, -14., 14., Appearance -> 
         "Labeled"}, {{$CellContext`h$$, 27.579999923706055`, 
          "price horizon"}, 16.8799991607666, 35.546665827433266`, Appearance -> 
         "Labeled"}}, "Options" :> {}, "DefaultOptions" :> {}],
     ImageSizeCache->{405., {182., 188.}},
     SingleEvaluation->True],
    Deinitialization:>None,
    DynamicModuleValues:>{},
    SynchronousInitialization->True,
    UndoTrackedVariables:>{Typeset`show$$, Typeset`bookmarkMode$$},
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
   3.5954258639926653`*^9, 3.5954260262069435`*^9, 3.5954263585139503`*^9, 
   3.706915036546838*^9, 
   3.7069151490208282`*^9},ExpressionUUID->"26c4fa5d-2783-43b7-be26-\
3ffef855c36d"]
}, Open  ]],

Cell[BoxData["\[IndentingNewLine]"], "Input",
 CellChangeTimes->{{3.5954264430167837`*^9, 3.595426478196796*^9}, {
   3.59542651724603*^9, 3.5954265194481554`*^9}, {3.5954269166868763`*^9, 
   3.5954269456975355`*^9}, {3.5954280035010386`*^9, 3.595428040368147*^9}, {
   3.5954280723379755`*^9, 3.5954281569058123`*^9}, {3.595428193888928*^9, 
   3.5954282456218867`*^9}, {3.5954282985739155`*^9, 
   3.5954282989559374`*^9}, {3.5954283301037188`*^9, 3.595428332953882*^9}, {
   3.5954283802265863`*^9, 3.59542850652781*^9}, {3.595428541551813*^9, 
   3.5954285814490952`*^9}, 3.706915817604141*^9},
 EmphasizeSyntaxErrors->
  True,ExpressionUUID->"d64b0b2f-880c-4c96-b4eb-a3141fef245f"],

Cell[BoxData["\n"], "Input",
 CellChangeTimes->{{3.595501678976596*^9, 3.5955017024559393`*^9}, {
   3.5955023346020956`*^9, 3.5955023874281173`*^9}, {3.595502432972722*^9, 
   3.595502433271739*^9}, 
   3.5955034303627696`*^9},ExpressionUUID->"99c763cf-5dd4-49ee-99e2-\
1e443f7b6fa5"],

Cell[CellGroupData[{

Cell[BoxData[{
 RowBox[{
  RowBox[{"Clear", "[", 
   RowBox[{"xtc", ",", " ", "nw"}], "]"}], "\[IndentingNewLine]", 
  RowBox[{"(*", 
   RowBox[{
    RowBox[{"https", ":"}], "//", 
    RowBox[{
     RowBox[{
      RowBox[{"www", ".", "dividendearner", ".", "com"}], "/", "top"}], "-", 
     "canadian", "-", "dividend", "-", 
     RowBox[{"stocks", "/"}]}]}], "*)"}]}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{
   RowBox[{"nw", " ", "=", " ", "52"}], " ", ";"}], "\[IndentingNewLine]", 
  RowBox[{"(*", " ", 
   RowBox[{"TSX", " ", "\[Rule]", " ", "TO"}], " ", 
   "*)"}]}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{
   RowBox[{"xtc", " ", "=", " ", 
    RowBox[{"fDataAndLinearModel", "[", " ", 
     RowBox[{"\"\<TO:XTC\>\"", ",", " ", "nw"}], " ", "]"}]}], " ", ";"}], 
  "\[IndentingNewLine]", "\[IndentingNewLine]", 
  RowBox[{"(*", 
   RowBox[{
    RowBox[{"dateRange", " ", "=", " ", 
     RowBox[{
      RowBox[{"DateList", "[", "]"}], " ", "-", " ", 
      RowBox[{"{", 
       RowBox[{"0", ",", " ", "0", ",", " ", "0", ",", " ", 
        RowBox[{"24", "*", "7", "*", "nWeeks"}], ",", " ", "0", ",", " ", 
        "0"}], "}"}]}]}], " ", ";", "\[IndentingNewLine]", 
    RowBox[{"close", " ", "=", " ", 
     RowBox[{"FinancialData", "[", 
      RowBox[{"symbol", ",", " ", "dateRange"}], "]"}]}], " ", ";"}], "*)"}], 
  "\[IndentingNewLine]", "\[IndentingNewLine]", 
  RowBox[{"(*", 
   RowBox[{
    RowBox[{
    "find", " ", "the", " ", "stock", " ", "symbols", " ", "that", " ", 
     "start", " ", "with", " ", "T", "\[IndentingNewLine]", 
     RowBox[{"https", ":"}]}], "//", 
    RowBox[{
     RowBox[{
      RowBox[{
       RowBox[{"mathematica", ".", "stackexchange", ".", "com"}], "/", "a"}], 
      "/", "124692"}], "/", "10"}]}], "*)"}], "\[IndentingNewLine]", 
  RowBox[{"(*", 
   RowBox[{
    RowBox[{
     RowBox[{"Pick", "[", 
      RowBox[{"#", ",", 
       RowBox[{"#", "//", 
        RowBox[{
         RowBox[{"StringStartsQ", "[", 
          RowBox[{"#", ",", "\"\<T\>\""}], "]"}], "&"}]}], ",", "True"}], 
      "]"}], "&"}], "/@", " ", 
    RowBox[{"FinancialData", "[", "]"}]}], "*)"}], "\[IndentingNewLine]", 
  "\[IndentingNewLine]"}], "\[IndentingNewLine]", 
 RowBox[{"manipulatePlotDistAgainstLinearModel", "[", " ", "xtc", " ", 
  "]"}]}], "Input",
 CellChangeTimes->{{3.706915193557496*^9, 3.706915235185934*^9}, {
  3.70691527865868*^9, 3.706915279011147*^9}, {3.706915376703993*^9, 
  3.70691540209368*^9}, {3.706915491439332*^9, 3.7069155035789213`*^9}, {
  3.706915540411648*^9, 3.7069155668094883`*^9}, {3.706915694334227*^9, 
  3.706915774611219*^9}, {3.706915821820039*^9, 3.706915927789222*^9}, {
  3.706915974330721*^9, 3.706915974959342*^9}, {3.706916011959531*^9, 
  3.7069160170053596`*^9}},ExpressionUUID->"eb2eba1b-9ee6-4ce5-a263-\
46a51c207d96"],

Cell[BoxData[
 TagBox[
  StyleBox[
   DynamicModuleBox[{$CellContext`h$$ = 
    10.9399995803833, $CellContext`o$$ = -0.5, Typeset`show$$ = True, 
    Typeset`bookmarkList$$ = {}, Typeset`bookmarkMode$$ = "Menu", 
    Typeset`animator$$, Typeset`animvar$$ = 1, Typeset`name$$ = 
    "\"untitled\"", Typeset`specs$$ = {{{
       Hold[$CellContext`o$$], -0.5, 
       "offset from linear fit"}, -12.87313175201416, 12.87313175201416}, {{
       Hold[$CellContext`h$$], 10.9399995803833, "price horizon"}, 0, 
      17.16417566935221}}, Typeset`size$$ = {360., {123., 127.}}, 
    Typeset`update$$ = 0, Typeset`initDone$$, Typeset`skipInitDone$$ = 
    True, $CellContext`o$110884$$ = 0, $CellContext`h$110885$$ = 0}, 
    DynamicBox[Manipulate`ManipulateBoxes[
     1, StandardForm, 
      "Variables" :> {$CellContext`h$$ = 
        10.9399995803833, $CellContext`o$$ = -0.5}, "ControllerVariables" :> {
        Hold[$CellContext`o$$, $CellContext`o$110884$$, 0], 
        Hold[$CellContext`h$$, $CellContext`h$110885$$, 0]}, 
      "OtherVariables" :> {
       Typeset`show$$, Typeset`bookmarkList$$, Typeset`bookmarkMode$$, 
        Typeset`animator$$, Typeset`animvar$$, Typeset`name$$, 
        Typeset`specs$$, Typeset`size$$, Typeset`update$$, Typeset`initDone$$,
         Typeset`skipInitDone$$}, 
      "Body" :> $CellContext`plotDistAgainstLinearModel[{
        "company" -> "Exco Technologies", "symbol" -> "TO:XTC", 
         "dMin" -> {{{2016, 6, 20}, 0.5669472317321276}, {{2016, 6, 21}, 
            0.6661456581614758}, {{2016, 6, 22}, 0.3852886570395544}, {{2016, 
            6, 23}, 0.5916819839815979}, {{2016, 6, 24}, 
            0.13541566584307674`}, {{2016, 6, 27}, 0.20887459259205876`}, {{
            2016, 6, 28}, 0.24960229300822334`}, {{2016, 6, 
            29}, -11.598556458296803`}, {{2016, 6, 30}, 
            0.29207911718039625`}, {{2016, 7, 4}, 0.34779597200667745`}, {{
            2016, 7, 5}, 0.49572048028417015`}, {{2016, 7, 6}, 
            0.273333251501116}, {{2016, 7, 7}, 0.26533582374345244`}, {{2016, 
            7, 8}, 0.3547886523334469}, {{2016, 7, 11}, 
            0.4964629492606516}, {{2016, 7, 12}, 0.7028572298770115}, {{2016, 
            7, 13}, 0.8020547026320433}, {{2016, 7, 14}, 
            0.9792131434046532}, {{2016, 7, 15}, 1.0881562139990422`}, {{2016,
             7, 18}, 0.94722629339695}, {{2016, 7, 19}, 
            0.7150944204488567}, {{2016, 7, 20}, 0.7655677187043768}, {{2016, 
            7, 21}, 0.9134903196332367}, {{2016, 7, 22}, 
            0.8177882333672724}, {{2016, 7, 25}, 0.7450736829434046}, {{2016, 
            7, 26}, 0.8247809136940418}, {{2016, 7, 27}, 
            0.7193351369373548}, {{2016, 7, 28}, 0.9744535920532265}, {{2016, 
            7, 29}, 0.5669104947398989}, {{2016, 8, 2}, 
            0.36925897188063317`}, {{2016, 8, 3}, 0.176107582941329}, {{2016, 
            8, 4}, 0.021935724336497486`}, {{2016, 8, 5}, 
            0.13087879493088472`}, {{2016, 8, 8}, 0.1848484333497904}, {{2016,
             8, 9}, 0.48869106296517373`}, {{2016, 8, 10}, 
            0.26630478785643596`}, {{2016, 8, 11}, 0.27779760210316695`}, {{
            2016, 8, 12}, 0.23082159768534716`}, {{2016, 8, 15}, 
            0.31402516859937}, {{2016, 8, 16}, 0.2767938083465893}, {{2016, 8,
             17}, 0.37599128110162106`}, {{2016, 8, 18}, 
            0.38748504902266845`}, {{2016, 8, 19}, 0.4379583472781885}, {{
            2016, 8, 22}, 0.3457516475012934}, {{2016, 8, 23}, 
            0.4352044760912861}, {{2016, 8, 24}, 0.3882284716734663}, {{2016, 
            8, 25}, 0.46793665609841995`}, {{2016, 8, 26}, 
            0.45019553785003374`}, {{2016, 8, 29}, 0.3969693220819277}, {{
            2016, 8, 30}, 0.3012681894902798}, {{2016, 8, 31}, 
            0.2542912313981436}, {{2016, 9, 1}, 0.2268045153104019}, {{2016, 
            9, 2}, 0.25778757156152743`}, {{2016, 9, 6}, 
            0.2355453657188633}, {{2016, 9, 7}, 0.23729353580055523`}, {{2016,
             9, 8}, 0.23904170588224716`}, {{2016, 9, 9}, 
            0.27977035997272814`}, {{2016, 9, 12}, 0.2850148702178057}, {{
            2016, 9, 13}, 0.08092197584637262}, {{2016, 9, 14}, 
            0.13168042272249814`}, {{2016, 9, 15}, 0.11382581723045959`}, {{
            2016, 9, 16}, -0.13927544658677427`}, {{2016, 9, 19}, 
            0.12081849755722907`}, {{2016, 9, 20}, 0.31860396011938974`}, {{
            2016, 9, 21}, 0.36936145332119885`}, {{2016, 9, 22}, 
            0.4593254513447853}, {{2016, 9, 23}, 0.41206525198067645`}, {{
            2016, 9, 26}, 0.417309762225754}, {{2016, 9, 27}, 
            0.330841150691235}, {{2016, 9, 28}, 0.34239118539695035`}, {{2016,
             9, 29}, 0.23631789094006805`}, {{2016, 9, 30}, 
            0.19885764885134982`}, {{2016, 10, 3}, 0.4491497283713297}, {{
            2016, 10, 4}, 0.43129512287929117`}, {{2016, 10, 5}, 
            0.050769618949752626`}, {{2016, 10, 6}, -0.05530367550712967}, {{
            2016, 10, 7}, 0.1914920638494646}, {{2016, 10, 11}, 
            0.1298707381337536}, {{2016, 10, 12}, -0.09382302446277713}, {{
            2016, 10, 13}, -0.1410860848498352}, {{2016, 10, 
            14}, -0.03151549655525265}, {{2016, 10, 17}, 
            0.12075698305017646`}, {{2016, 10, 18}, 0.17151542992630198`}, {{
            2016, 10, 19}, 0.16346078170965406`}, {{2016, 10, 20}, 
            0.10639681037288895`}, {{2016, 10, 21}, 0.11794684507860431`}, {{
            2016, 10, 24}, -0.08264780178081033}, {{2016, 10, 
            25}, -0.3455499765477512}, {{2016, 10, 
            26}, -0.33400089551635226`}, {{2016, 10, 
            27}, -0.21463034994637908`}, {{2016, 10, 
            28}, -0.15407003844623013`}, {{2016, 10, 
            31}, -0.26644790368943383`}, {{2016, 11, 
            1}, -0.8038041952776638}, {{2016, 11, 2}, -1.233338068653003}, {{
            2016, 11, 3}, -0.7218929381220924}, {{2016, 11, 
            4}, -0.9357857897689161}, {{2016, 11, 7}, -0.9893524672679792}, {{
            2016, 11, 8}, -1.056216395880135}, {{2016, 11, 
            9}, -1.1622906440113336`}, {{2016, 11, 
            10}, -1.2781638957436066`}, {{2016, 11, 
            11}, -1.2764157256619146`}, {{2016, 11, 
            14}, -1.1731525691766027`}, {{2016, 11, 
            15}, -1.2988286392072155`}, {{2016, 11, 
            16}, -1.2872776508271837`}, {{2016, 11, 
            17}, -1.2757285697957848`}, {{2016, 11, 
            18}, -1.254376670466046}, {{2016, 11, 
            21}, -1.2099247017248747`}, {{2016, 11, 
            22}, -1.2473839901392765`}, {{2016, 11, 
            23}, -1.1476181274916666`}, {{2016, 11, 
            24}, -1.106662498913881}, {{2016, 11, 
            25}, -1.0755068276114859`}, {{2016, 11, 
            28}, -1.119272594160842}, {{2016, 11, 29}, -1.1077225594551265`}, 
           {{2016, 11, 30}, -0.988351060210837}, {{2016, 12, 
            1}, -0.9768010255051216}, {{2016, 12, 
            2}, -1.4749489049229414`}, {{2016, 12, 5}, -1.43049693618177}, {{
            2016, 12, 6}, -1.6247870122548633`}, {{2016, 12, 
            7}, -1.5838304300027612`}, {{2016, 12, 
            8}, -1.4546580198087646`}, {{2016, 12, 
            9}, -1.3254865632890844`}, {{2016, 12, 
            12}, -0.3901006040693975}, {{2016, 12, 
            13}, -0.556021730252354}, {{2016, 12, 
            14}, -0.8896131063742754}, {{2016, 12, 15}, -0.87800203651231}, {{
            2016, 12, 16}, -0.7776248686278837}, {{2016, 12, 
            19}, -0.9893641535488218}, {{2016, 12, 20}, -1.02706853626254}, {{
            2016, 12, 21}, -0.7886098177799692}, {{2016, 12, 
            22}, -0.7375471487969101}, {{2016, 12, 
            23}, -0.7160731791546713}, {{2016, 12, 
            28}, -0.8552758254503114}, {{2016, 12, 
            29}, -0.8239389560277992}, {{2016, 12, 
            30}, -0.7827382331506971}, {{2017, 1, 3}, -0.7856094062785175}, {{
            2017, 1, 4}, -0.6655064388335443}, {{2017, 1, 
            5}, -0.6144428161761688}, {{2017, 1, 
            6}, -0.42529955026928157`}, {{2017, 1, 
            9}, -0.05512774815408861}, {{2017, 1, 
            10}, -0.40844301648792225`}, {{2017, 1, 
            11}, -0.3179287483837694}, {{2017, 1, 12}, -0.306317678521804}, {{
            2017, 1, 13}, -0.3341591614552488}, {{2017, 1, 
            16}, -0.7037057965348801}, {{2017, 1, 
            17}, -0.7315463257940067}, {{2017, 1, 
            18}, -0.8580168065301859}, {{2017, 1, 
            19}, -0.8562686364484939}, {{2017, 1, 
            20}, -0.8347937131319387}, {{2017, 1, 
            23}, -0.7900976037657692}, {{2017, 1, 
            24}, -0.7784865339038021}, {{2017, 1, 
            25}, -0.6485206666785555}, {{2017, 1, 26}, -0.656635396377137}, {{
            2017, 1, 27}, -0.8817339212417341}, {{2017, 1, 
            30}, -0.9849813085796661}, {{2017, 1, 
            31}, -1.1706291879974842`}, {{2017, 2, 
            1}, -1.2083335707112024`}, {{2017, 2, 2}, -0.6641240053658386}, {{
            2017, 2, 3}, -1.066755679949674}, {{2017, 2, 
            6}, -1.031922470363778}, {{2017, 2, 7}, -0.9611330481458538}, {{
            2017, 2, 8}, -0.5648688868532243}, {{2017, 2, 
            9}, -0.44476591940825116`}, {{2017, 2, 
            10}, -0.058362750547262365`}, {{2017, 2, 
            13}, -0.03339244074163972}, {{2017, 2, 
            14}, -0.21903936648514133`}, {{2017, 2, 
            15}, -0.108800252494758}, {{2017, 2, 
            16}, -0.01828503071628873}, {{2017, 2, 17}, 
            0.15113243563005163`}, {{2017, 2, 21}, 0.11867351683572736`}, {{
            2017, 2, 22}, 0.2289145381747435}, {{2017, 2, 23}, 
            0.1221698569991112}, {{2017, 2, 24}, -0.23114636500904062`}, {{
            2017, 2, 27}, -0.038506758938769536`}, {{2017, 2, 28}, 
            0.15063650696811948`}, {{2017, 3, 1}, 0.24115172874658874`}, {{
            2017, 3, 2}, 0.4401588481080658}, {{2017, 3, 3}, 
            0.4320441184094843}, {{2017, 3, 6}, 0.7627652750778999}, {{2017, 
            3, 7}, 1.0110859396664278`}, {{2017, 3, 8}, 
            1.2199550051338637`}, {{2017, 3, 9}, 1.093485478072001}, {{2017, 
            3, 10}, 0.8881127527679507}, {{2017, 3, 13}, 
            0.9226865629397842}, {{2017, 3, 14}, 0.6762448068740152}, {{2017, 
            3, 15}, 0.6482106817286581}, {{2017, 3, 16}, 
            0.4811899690588852}, {{2017, 3, 17}, 0.4928658887743662}, {{2017, 
            3, 20}, 0.4881826493856529}, {{2017, 3, 21}, 
            0.5296408643281847}, {{2017, 3, 22}, 0.28319910826241745`}, {{
            2017, 3, 23}, 0.31472957357116016`}, {{2017, 3, 24}, 
            0.40582653668263724`}, {{2017, 3, 27}, 0.4408533421547638}, {{
            2017, 3, 28}, 0.4426015122364557}, {{2017, 3, 29}, 
            0.5039161801208838}, {{2017, 3, 30}, 0.39646101157952884`}, {{
            2017, 3, 31}, 0.15001830183944342`}, {{2017, 4, 
            3}, -0.29147924571577377`}, {{2017, 4, 
            4}, -0.06139569507988263}, {{2017, 4, 
            5}, -0.06957527463197799}, {{2017, 4, 6}, -0.2167414417084892}, {{
            2017, 4, 7}, -0.2050664756673246}, {{2017, 4, 
            10}, -0.14025546761951446`}, {{2017, 4, 
            11}, -0.2278560905676077}, {{2017, 4, 
            12}, -0.3750213039698025}, {{2017, 4, 
            13}, -0.3236353393934799}, {{2017, 4, 
            17}, -0.19751157080987625`}, {{2017, 4, 
            18}, -0.06670456283755932}, {{2017, 4, 
            19}, -0.015318598261238492`}, {{2017, 4, 20}, 
            0.026139616681295053`}, {{2017, 4, 21}, -0.06146005259248177}, {{
            2017, 4, 24}, -0.09592558720824584}, {{2017, 4, 
            25}, -0.13388746198739376`}, {{2017, 4, 
            26}, -0.1420670415394909}, {{2017, 4, 27}, 
            0.008594512026089518}, {{2017, 4, 28}, 0.0996914751375666}, {{
            2017, 5, 1}, 0.19428382473811112`}, {{2017, 5, 2}, 
            0.32509083271042805`}, {{2017, 5, 3}, 0.35662225169348716`}, {{
            2017, 5, 4}, 0.33851492250760273`}, {{2017, 5, 5}, 
            0.3601185918568728}, {{2017, 5, 8}, 0.5242042352196243}, {{2017, 
            5, 9}, 0.5755911534702616}, {{2017, 5, 10}, 0.557482870610059}, {{
            2017, 5, 11}, 0.5195209958309128}, {{2017, 5, 12}, 
            0.5907634133491282}, {{2017, 5, 15}, 0.5562969250590477}, {{2017, 
            5, 16}, 0.3793484627554857}, {{2017, 5, 17}, 
            0.1329067066897167}, {{2017, 5, 18}, 0.04530608374162526}, {{2017,
             5, 19}, 0.07683654905036796}, {{2017, 5, 23}, 
            0.11361247827850285`}, {{2017, 5, 24}, 0.22456398698324165`}, {{
            2017, 5, 25}, 0.25609540596630254`}, {{2017, 5, 26}, 
            0.3471914154034632}, {{2017, 5, 29}, 0.36236367528232805`}, {{
            2017, 5, 30}, 0.3541840957302309}, {{2017, 5, 31}, 
            0.19709113269424705`}, {{2017, 6, 1}, 0.21869480204351888`}, {{
            2017, 6, 2}, 0.3197185611144686}, {{2017, 6, 5}, 
            0.2653975272311264}, {{2017, 6, 6}, 0.0983768145613535}, {{2017, 
            6, 7}, -0.05871614847463036}, {{2017, 6, 
            8}, -0.017257933532096814`}, {{2017, 6, 
            9}, -0.09493176052071739}, {{2017, 6, 
            12}, -0.13932409109595412`}, {{2017, 6, 
            13}, -0.1384447183165083}, {{2017, 6, 
            14}, -0.4266965100878437}, {{2017, 6, 
            15}, -0.27494872147587657`}, {{2017, 6, 
            16}, -0.2332005895411573}, {{2017, 6, 19}, -0.06795623188397215}},
          "dMax" -> {{{2016, 6, 20}, 0.7910816769225573}, {{2016, 6, 21}, 
            0.7733405586741711}, {{2016, 6, 22}, 0.7361091984213903}, {{2016, 
            6, 23}, 0.7378573685030823}, {{2016, 6, 24}, 
            0.5349603817244244}, {{2016, 6, 27}, 0.481735119630633}, {{2016, 
            6, 28}, 0.38603303336466865`}, {{2016, 6, 
            29}, -11.598556458296803`}, {{2016, 6, 30}, 
            0.3602944873586189}, {{2016, 7, 4}, 1.0299458590916384`}, {{2016, 
            7, 5}, 0.8855195983261623}, {{2016, 7, 6}, 0.5754277110348074}, {{
            2016, 7, 7}, 0.3530404822517532}, {{2016, 7, 8}, 
            0.549688211354443}, {{2016, 7, 11}, 0.7985583624686594}, {{2016, 
            7, 12}, 0.9367372729067966}, {{2016, 7, 13}, 
            1.250324546687219}, {{2016, 7, 14}, 1.300797844942739}, {{2016, 7,
             15}, 1.2733101751806828`}, {{2016, 7, 18}, 1.093400724244118}, {{
            2016, 7, 19}, 0.9587200613179974}, {{2016, 7, 20}, 
            0.9117421495515448}, {{2016, 7, 21}, 1.1083898786542328`}, {{2016,
             7, 22}, 1.1101380487359247`}, {{2016, 7, 25}, 
            0.9302285977993616}, {{2016, 7, 26}, 0.912486525876659}, {{2016, 
            7, 27}, 1.0214286427967298`}, {{2016, 7, 28}, 
            1.110882425061039}, {{2016, 7, 29}, 1.0444152249645082`}, {{2016, 
            8, 2}, 0.798037620257098}, {{2016, 8, 3}, 
            0.49769228447941494`}, {{2016, 8, 4}, 0.3240301838701889}, {{2016,
             8, 5}, 0.45246349646897066`}, {{2016, 8, 8}, 
            0.4577080067140482}, {{2016, 8, 9}, 0.6543557358167362}, {{2016, 
            8, 10}, 0.597634133559561}, {{2016, 8, 11}, 
            0.47269716112416305`}, {{2016, 8, 12}, 0.36725043069315966`}, {{
            2016, 8, 15}, 0.5673954536335497}, {{2016, 8, 16}, 
            0.5106738513763744}, {{2016, 8, 17}, 0.5903820358013281}, {{2016, 
            8, 18}, 0.6603436687126099}, {{2016, 8, 19}, 
            0.5256630057864893}, {{2016, 8, 22}, 0.5991228862097895}, {{2016, 
            8, 23}, 0.5521449744433369}, {{2016, 8, 24}, 
            0.5441485003599897}, {{2016, 8, 25}, 0.5264073821116035}, {{2016, 
            8, 26}, 0.5281555521932955}, {{2016, 8, 29}, 
            0.49441957842958395`}, {{2016, 8, 30}, 0.4864221506719204}, {{
            2016, 8, 31}, 0.4394451925797842}, {{2016, 9, 1}, 
            0.3632333483182144}, {{2016, 9, 2}, 0.4526861769082071}, {{2016, 
            9, 6}, 0.3524849103965977}, {{2016, 9, 7}, 0.3542330804782896}, {{
            2016, 9, 8}, 0.4241966207382042}, {{2016, 9, 9}, 
            0.3772187089717516}, {{2016, 9, 12}, 0.37271857505179007`}, {{
            2016, 9, 13}, 0.37497886824139215`}, {{2016, 9, 14}, 
            0.24930184453646298`}, {{2016, 9, 15}, 0.24124814999413147`}, {{
            2016, 9, 16}, 0.2724028676222101}, {{2016, 9, 19}, 
            0.35606229485947516`}, {{2016, 9, 20}, 0.48523470505347177`}, {{
            2016, 9, 21}, 0.49678473975918713`}, {{2016, 9, 22}, 
            0.5573450512593361}, {{2016, 9, 23}, 0.559093221341028}, {{2016, 
            9, 26}, 0.5251302730900118}, {{2016, 9, 27}, 
            0.45826443712922327`}, {{2016, 9, 28}, 0.46981447183493863`}, {{
            2016, 9, 29}, 0.3539402664283493}, {{2016, 9, 30}, 
            0.4733108119983225}, {{2016, 10, 3}, 0.5765749221579508}, {{2016, 
            10, 4}, 0.6273324153597599}, {{2016, 10, 5}, 
            0.5310619392012175}, {{2016, 10, 6}, 0.3073662692560539}, {{2016, 
            10, 7}, 0.33852098688413257`}, {{2016, 10, 11}, 
            0.34551366721090204`}, {{2016, 10, 12}, 0.16102640943614865`}, {{
            2016, 10, 13}, 0.04514934300661011}, {{2016, 10, 14}, 
            0.25273762386711063`}, {{2016, 10, 17}, 0.24818122316248115`}, {{
            2016, 10, 18}, 0.2597303041938801}, {{2016, 10, 19}, 
            0.261478474275572}, {{2016, 10, 20}, 0.23382105048519364`}, {{
            2016, 10, 21}, 0.20616458036913166`}, {{2016, 10, 24}, 
            0.17220163211811546`}, {{2016, 10, 
            25}, -0.022088443954977777`}, {{2016, 10, 26}, 
            0.13649051378540555`}, {{2016, 10, 27}, 0.03041721932852326}, {{
            2016, 10, 28}, -0.016843933709902004`}, {{2016, 10, 
            31}, -0.09981620508103539}, {{2016, 11, 
            1}, -0.13727549349543722`}, {{2016, 11, 
            2}, -0.40998048656071795`}, {{2016, 11, 
            3}, -0.4572406859248268}, {{2016, 11, 4}, -0.582917709629756}, {{
            2016, 11, 7}, -0.7933151747875105}, {{2016, 11, 
            8}, -0.9287931094421467}, {{2016, 11, 
            9}, -1.0054598563526422`}, {{2016, 11, 
            10}, -1.0233144618446808`}, {{2016, 11, 
            11}, -1.14899148554961}, {{2016, 11, 14}, -1.114341381432462}, {{
            2016, 11, 15}, -1.132196940598817}, {{2016, 11, 
            16}, -1.1108450412690782`}, {{2016, 11, 
            17}, -1.1287006004354332`}, {{2016, 11, 
            18}, -1.077943107233624}, {{2016, 11, 
            21}, -1.1021041908606168`}, {{2016, 11, 
            22}, -1.0513466976588077`}, {{2016, 11, 
            23}, -1.0397966629530924`}, {{2016, 11, 
            24}, -1.0380484928714004`}, {{2016, 11, 
            25}, -0.9088751290030874}, {{2016, 11, 
            28}, -1.031055812544631}, {{2016, 11, 29}, -0.901882448676318}, {{
            2016, 11, 30}, -0.586474610625876}, {{2016, 12, 
            1}, -0.3004723664475044}, {{2016, 12, 2}, -0.5143652180943281}, {{
            2016, 12, 5}, -1.0874326280152662`}, {{2016, 12, 
            6}, -1.222909608995586}, {{2016, 12, 7}, -1.3583884973245386`}, {{
            2016, 12, 8}, -1.3370356443204834`}, {{2016, 12, 
            9}, -0.18846645220510005`}, {{2016, 12, 
            12}, -0.16325295544879204`}, {{2016, 12, 
            13}, -0.23054603750333058`}, {{2016, 12, 
            14}, -0.3274259115500566}, {{2016, 12, 
            15}, -0.6610182413462944}, {{2016, 12, 
            16}, -0.45214726853022746`}, {{2016, 12, 
            19}, -0.6540255610195249}, {{2016, 12, 
            20}, -0.6917289900589267}, {{2016, 12, 
            21}, -0.5716250689396372}, {{2016, 12, 
            22}, -0.6191923514336288}, {{2016, 12, 
            23}, -0.16374888411072597`}, {{2016, 12, 
            28}, -0.28322668452013566`}, {{2016, 12, 
            29}, -0.705584158664518}, {{2016, 12, 
            30}, -0.6249318366663221}, {{2017, 1, 3}, -0.5587627113322284}, {{
            2017, 1, 4}, -0.43865974388725526`}, {{2017, 1, 
            5}, -0.358006468214743}, {{2017, 1, 6}, -0.13927450296703547`}, {{
            2017, 1, 9}, 0.2308972991481575}, {{2017, 1, 10}, 
            0.2326454692298512}, {{2017, 1, 11}, 0.0469985434863478}, {{2017, 
            1, 12}, -0.010430685113600902`}, {{2017, 1, 
            13}, -0.11717441261491679`}, {{2017, 1, 
            16}, -0.30918789797530977`}, {{2017, 1, 
            17}, -0.544150276294495}, {{2017, 1, 18}, -0.6410320576898538}, {{
            2017, 1, 19}, -0.5899684350324783}, {{2017, 1, 
            20}, -0.6572615170870169}, {{2017, 1, 
            23}, -0.6322912072813942}, {{2017, 1, 
            24}, -0.6206791837451107}, {{2017, 1, 
            25}, -0.23427792223275468`}, {{2017, 1, 
            26}, -0.3804722951808479}, {{2017, 1, 
            27}, -0.6252985269546247}, {{2017, 1, 
            30}, -0.7679975134136505}, {{2017, 1, 
            31}, -0.9832331384979724}, {{2017, 2, 1}, -0.9124446699543665}, {{
            2017, 2, 2}, -0.299195759821405}, {{2017, 2, 
            3}, -0.8201822317685217}, {{2017, 2, 6}, -0.795211921962899}, {{
            2017, 2, 7}, -0.5173016043592327}, {{2017, 2, 
            8}, -0.3478841380128923}, {{2017, 2, 
            9}, -0.010795468053270696`}, {{2017, 2, 10}, 
            0.10930749939170248`}, {{2017, 2, 13}, 0.13427685552300872`}, {{
            2017, 2, 14}, -0.03164427065994602}, {{2017, 2, 15}, 
            0.14763609546666778`}, {{2017, 2, 16}, 0.31705451548732455`}, {{
            2017, 2, 17}, 0.3188026855690165}, {{2017, 2, 21}, 
            0.35538406523660626`}, {{2017, 2, 22}, 0.3571322353182982}, {{
            2017, 2, 23}, 0.3095649528243065}, {{2017, 2, 24}, 
            0.14364382664135}, {{2017, 2, 27}, 0.3658730857267578}, {{2017, 2,
             28}, 0.3183058032327679}, {{2017, 3, 1}, 0.72443572532862}, {{
            2017, 3, 2}, 0.6275539439332611}, {{2017, 3, 3}, 
            0.7377940115979609}, {{2017, 3, 6}, 1.1178296671677437`}, {{2017, 
            3, 7}, 1.21820683505217}, {{2017, 3, 8}, 1.318584002936598}, {{
            2017, 3, 9}, 1.4584137236164345`}, {{2017, 3, 10}, 
            1.0952336481536928`}, {{2017, 3, 13}, 1.0418176511966202`}, {{
            2017, 3, 14}, 0.9840012308242105}, {{2017, 3, 15}, 
            0.8666183126490683}, {{2017, 3, 16}, 0.7988722352942368}, {{2017, 
            3, 17}, 0.8204759046435068}, {{2017, 3, 20}, 
            0.8356491181966881}, {{2017, 3, 21}, 0.6686274518525988}, {{2017, 
            3, 22}, 0.6207378274396635}, {{2017, 3, 23}, 
            0.5033549092645195}, {{2017, 3, 24}, 0.5745954194341021}, {{2017, 
            3, 27}, 0.7188265172035919}, {{2017, 3, 28}, 
            0.7602856858204401}, {{2017, 3, 29}, 0.6726850628723486}, {{2017, 
            3, 30}, 0.5950121895580445}, {{2017, 3, 31}, 
            0.5769048603721583}, {{2017, 4, 3}, 0.3935259422725075}, {{2017, 
            4, 4}, 0.2959975696906252}, {{2017, 4, 5}, 
            0.15875915224790482`}, {{2017, 4, 6}, 0.061231733340338934`}, {{
            2017, 4, 7}, -0.006513390340176173}, {{2017, 4, 
            10}, -0.040978924955940244`}, {{2017, 4, 
            11}, -0.07894175340940457}, {{2017, 4, 
            12}, -0.15661367304939233`}, {{2017, 4, 
            13}, -0.22435975040422207`}, {{2017, 4, 17}, 
            0.23930273735662766`}, {{2017, 4, 18}, 0.19141311294369068`}, {{
            2017, 4, 19}, 0.23287132788622245`}, {{2017, 4, 20}, 
            0.20483720274086537`}, {{2017, 4, 21}, 0.03781553639677604}, {{
            2017, 4, 24}, 0.0728423418689026}, {{2017, 4, 
            25}, -0.0048295777710851695`}, {{2017, 4, 
            26}, -0.07257470145160028}, {{2017, 4, 27}, 
            0.2468566885397614}, {{2017, 4, 28}, 0.34788140128502754`}, {{
            2017, 5, 1}, 0.36305366116389237`}, {{2017, 5, 2}, 
            0.45415062427536945`}, {{2017, 5, 3}, 0.5353188840787411}, {{2017,
             5, 4}, 0.5867048486550637}, {{2017, 5, 5}, 
            0.7274396062611697}, {{2017, 5, 8}, 0.8121051599022415}, {{2017, 
            5, 9}, 0.7245045369541483}, {{2017, 5, 10}, 
            0.6468316636398441}, {{2017, 5, 11}, 0.6287252881282761}, {{2017, 
            5, 12}, 0.630473458209968}, {{2017, 5, 15}, 0.725066761484829}, {{
            2017, 5, 16}, 0.6672484337637865}, {{2017, 5, 17}, 
            0.41087892806422843`}, {{2017, 5, 18}, 0.2736414642958245}, {{
            2017, 5, 19}, 0.3051719296045672}, {{2017, 5, 23}, 
            0.391585653327331}, {{2017, 5, 24}, 0.3933338234090229}, {{2017, 
            5, 25}, 0.4149374927582947}, {{2017, 5, 26}, 
            0.4266124587994593}, {{2017, 5, 29}, 0.41200242345127336`}, {{
            2017, 5, 30}, 0.42367834316675435`}, {{2017, 5, 31}, 
            0.37578776507950096`}, {{2017, 6, 1}, 0.37753593516119466`}, {{
            2017, 6, 2}, 0.4289228534118319}, {{2017, 6, 5}, 
            0.4242396140231186}, {{2017, 6, 6}, 0.3267112414412363}, {{2017, 
            6, 7}, 0.21925607289988136`}, {{2017, 6, 8}, 
            0.22100424298157506`}, {{2017, 6, 9}, 0.04405578067801308}, {{
            2017, 6, 12}, 0.009589292387932602}, {{2017, 6, 13}, 
            0.06155509094862843}, {{2017, 6, 14}, -0.04669734932124214}, {{
            2017, 6, 15}, -0.09494841630009532}, {{2017, 6, 
            16}, -0.023200551394184643`}, {{2017, 6, 19}, 
            0.012043691822082536`}}, 
         "dClose" -> {{{2016, 6, 20}, 0.7228663067443346}, {{2016, 6, 21}, 
            0.6661456581614758}, {{2016, 6, 22}, 0.589933813899906}, {{2016, 
            6, 23}, 0.5916819839815979}, {{2016, 6, 24}, 
            0.2815900966902447}, {{2016, 6, 27}, 0.3355587814348322}, {{2016, 
            6, 28}, 0.2885827770170124}, {{2016, 6, 
            29}, -11.598556458296803`}, {{2016, 6, 30}, 
            0.29207911718039625`}, {{2016, 7, 4}, 0.8642811862400759}, {{2016,
             7, 5}, 0.5347000106186428}, {{2016, 7, 6}, 
            0.2928234935055105}, {{2016, 7, 7}, 0.28482606574784697`}, {{2016,
             7, 8}, 0.4912184390155758}, {{2016, 7, 11}, 
            0.5451890311087961}, {{2016, 7, 12}, 0.8587763048892185}, {{2016, 
            7, 13}, 0.9872105711623167}, {{2016, 7, 14}, 
            1.0766614924036766`}, {{2016, 7, 15}, 1.0881562139990422`}, {{
            2016, 7, 18}, 0.94722629339695}, {{2016, 7, 19}, 
            0.8027990789571575}, {{2016, 7, 20}, 0.9117421495515448}, {{2016, 
            7, 21}, 1.0694093946454437`}, {{2016, 7, 22}, 
            0.8957482477105341}, {{2016, 7, 25}, 0.9009927579556116}, {{2016, 
            7, 26}, 0.8540157998634754}, {{2016, 7, 27}, 
            0.9142346959583509}, {{2016, 7, 28}, 1.0231768128784218`}, {{2016,
             7, 29}, 0.7325761212657778}, {{2016, 8, 2}, 
            0.39849290437575036`}, {{2016, 8, 3}, 0.24432199944523525`}, {{
            2016, 8, 4}, 0.10963942917048186`}, {{2016, 8, 5}, 
            0.16985832526535738`}, {{2016, 8, 8}, 0.4577080067140482}, {{2016,
             8, 9}, 0.5276705932996464}, {{2016, 8, 10}, 
            0.3345192043603422}, {{2016, 8, 11}, 0.4044817909459404}, {{2016, 
            8, 12}, 0.2698011280198198}, {{2016, 8, 15}, 0.31402516859937}, {{
            2016, 8, 16}, 0.4424584811981518}, {{2016, 8, 17}, 
            0.4539512954448828}, {{2016, 8, 18}, 0.4849343516960083}, {{2016, 
            8, 19}, 0.4574476356082666}, {{2016, 8, 22}, 
            0.5016716761878168}, {{2016, 8, 23}, 0.45469567176999703`}, {{
            2016, 8, 24}, 0.4954233721861616}, {{2016, 8, 25}, 
            0.4874268981028145}, {{2016, 8, 26}, 0.4891750681845064}, {{2016, 
            8, 29}, 0.41645956408632223`}, {{2016, 8, 30}, 
            0.4376970224980923}, {{2016, 8, 31}, 0.3517405340714834}, {{2016, 
            9, 1}, 0.3145091738187027}, {{2016, 9, 2}, 0.3454922300698282}, {{
            2016, 9, 6}, 0.284269540218375}, {{2016, 9, 7}, 
            0.2665284219699888}, {{2016, 9, 8}, 0.3852161367294151}, {{2016, 
            9, 9}, 0.27977035997272814`}, {{2016, 9, 12}, 
            0.2850148702178057}, {{2016, 9, 13}, 0.1789415757609234}, {{2016, 
            9, 14}, 0.14148228734652157`}, {{2016, 9, 15}, 
            0.18243791592430725`}, {{2016, 9, 16}, 0.13517676288588198`}, {{
            2016, 9, 19}, 0.35606229485947516`}, {{2016, 9, 20}, 
            0.4068207417356007}, {{2016, 9, 21}, 0.4575772812630934}, {{2016, 
            9, 22}, 0.4593254513447853}, {{2016, 9, 23}, 
            0.5198857628449343}, {{2016, 9, 26}, 0.42711067317546103`}, {{
            2016, 9, 27}, 0.3798504738113522}, {{2016, 9, 28}, 
            0.3815986438930441}, {{2016, 9, 29}, 0.26572253113782196`}, {{
            2016, 9, 30}, 0.4243024425525217}, {{2016, 10, 3}, 
            0.5079609161154703}, {{2016, 10, 4}, 0.45089789845302164`}, {{
            2016, 10, 5}, 0.18799572368608075`}, {{2016, 10, 6}, 
            0.17994202914374924`}, {{2016, 10, 7}, 0.30911443933774585`}, {{
            2016, 10, 11}, 0.16907915030416376`}, {{2016, 10, 
            12}, -0.08402115983875369}, {{2016, 10, 
            13}, -0.013659937388897703`}, {{2016, 10, 14}, 
            0.1939273897972864}, {{2016, 10, 17}, 0.1599644415462702}, {{2016,
             10, 18}, 0.19111820550003245`}, {{2016, 10, 19}, 
            0.1732636000079939}, {{2016, 10, 20}, 0.1456042688689827}, {{2016,
             10, 21}, 0.14735243895067462`}, {{2016, 10, 24}, 
            0.0545783029555178}, {{2016, 10, 25}, -0.17891827793935278`}, {{
            2016, 10, 26}, 0.07767837236694852}, {{2016, 10, 
            27}, -0.08720515615975799}, {{2016, 10, 
            28}, -0.12466539824847622`}, {{2016, 10, 
            31}, -0.10961902337937524`}, {{2016, 11, 
            1}, -0.6665761831927028}, {{2016, 11, 2}, -0.4981972681769289}, {{
            2016, 11, 3}, -0.6728817076533424}, {{2016, 11, 
            4}, -0.8377661898543654}, {{2016, 11, 7}, -0.9011347319774519}, {{
            2016, 11, 8}, -0.9974061618103107}, {{2016, 11, 
            9}, -1.054468225798443}, {{2016, 11, 
            10}, -1.1703443385536652`}, {{2016, 11, 
            11}, -1.1685961684719732`}, {{2016, 11, 
            14}, -1.1535497936028722`}, {{2016, 11, 
            15}, -1.132196940598817}, {{2016, 11, 16}, -1.218665552133336}, {{
            2016, 11, 17}, -1.167908058931527}, {{2016, 11, 
            18}, -1.097546836481671}, {{2016, 11, 
            21}, -1.1903209724768278`}, {{2016, 11, 
            22}, -1.0611485622828312`}, {{2016, 11, 
            23}, -1.0888059860732096`}, {{2016, 11, 
            24}, -1.0478503574954239`}, {{2016, 11, 
            25}, -1.046102187413732}, {{2016, 11, 
            28}, -1.0898670002887716`}, {{2016, 11, 
            29}, -1.048911371710986}, {{2016, 11, 
            30}, -0.8217184079281221}, {{2016, 12, 
            1}, -0.5847264405441841}, {{2016, 12, 
            2}, -1.3769312123570234`}, {{2016, 12, 5}, -1.273667102197395}, {{
            2016, 12, 6}, -1.5561739598866993`}, {{2016, 12, 
            7}, -1.377991272898269}, {{2016, 12, 8}, -1.3370356443204834`}, {{
            2016, 12, 9}, -0.2276748643755102}, {{2016, 12, 
            12}, -0.29147160626666313`}, {{2016, 12, 
            13}, -0.32917408163174855`}, {{2016, 12, 
            14}, -0.7515325094504473}, {{2016, 12, 
            15}, -0.7103327402476616}, {{2016, 12, 
            16}, -0.7283103697265165}, {{2016, 12, 
            19}, -0.9893641535488218}, {{2016, 12, 
            20}, -0.721317689399747}, {{2016, 12, 
            21}, -0.7886098177799692}, {{2016, 12, 
            22}, -0.6882326498955429}, {{2016, 12, 
            23}, -0.4300481318524252}, {{2016, 12, 
            28}, -0.7665097274278505}, {{2016, 12, 
            29}, -0.7351728580053383}, {{2016, 12, 
            30}, -0.6446585899011854}, {{2017, 1, 3}, -0.6573907554606464}, {{
            2017, 1, 4}, -0.5866022869170404}, {{2017, 1, 
            5}, -0.4862251190326141}, {{2017, 1, 
            6}, -0.21817865488353938`}, {{2017, 1, 9}, 
            0.07309090266378249}, {{2017, 1, 10}, -0.37885527082141834`}, {{
            2017, 1, 11}, -0.09108205343748033}, {{2017, 1, 
            12}, -0.306317678521804}, {{2017, 1, 13}, -0.3242962616749754}, {{
            2017, 1, 16}, -0.6050767987321457}, {{2017, 1, 
            17}, -0.6427802277715458}, {{2017, 1, 
            18}, -0.7988384541742288}, {{2017, 1, 19}, -0.767502538426033}, {{
            2017, 1, 20}, -0.6572615170870169}, {{2017, 1, 
            23}, -0.7111944055235817}, {{2017, 1, 
            24}, -0.6601317365405208}, {{2017, 1, 25}, -0.42167301805795}, {{
            2017, 1, 26}, -0.6467724965968635}, {{2017, 1, 
            27}, -0.8324194223403669}, {{2017, 1, 
            30}, -0.9258048635723419}, {{2017, 1, 31}, -1.0818630899750232`}, 
           {{2017, 2, 1}, -0.9518972227497766}, {{2017, 2, 
            2}, -0.5457692080025573}, {{2017, 2, 3}, -0.9089483297909826}, {{
            2017, 2, 6}, -0.9727441180078209}, {{2017, 2, 
            7}, -0.5962048026014202}, {{2017, 2, 
            8}, -0.43665023603535325`}, {{2017, 2, 
            9}, -0.06011092062895429}, {{2017, 2, 10}, 
            0.05012914703574545}, {{2017, 2, 13}, 0.035647857720274345`}, {{
            2017, 2, 14}, -0.09082071566727024}, {{2017, 2, 15}, 
            0.11804834980016388`}, {{2017, 2, 16}, 0.23815131724513705`}, {{
            2017, 2, 17}, 0.18072113497087194`}, {{2017, 2, 21}, 
            0.2567550674338719}, {{2017, 2, 22}, 0.3078167827426146}, {{2017, 
            2, 23}, 0.14189565655965808`}, {{2017, 2, 
            24}, -0.08320286830493906}, {{2017, 2, 27}, 
            0.27710698770429687`}, {{2017, 2, 28}, 0.2098148593240765}, {{
            2017, 3, 1}, 0.5173138762685614}, {{2017, 3, 2}, 
            0.5091981928956635}, {{2017, 3, 3}, 0.6884804663709101}, {{2017, 
            3, 6}, 1.0981038676071968`}, {{2017, 3, 7}, 
            1.1688923361508028`}, {{2017, 3, 8}, 1.2791333574898207`}, {{2017,
             3, 9}, 1.093485478072001}, {{2017, 3, 10}, 
            0.9571530512298647}, {{2017, 3, 13}, 0.9524698118411514}, {{2017, 
            3, 14}, 0.7755213495375894}, {{2017, 3, 15}, 
            0.7673417699854941}, {{2017, 3, 16}, 0.640031102176561}, {{2017, 
            3, 17}, 0.6715615674853037}, {{2017, 3, 20}, 
            0.6172414872762779}, {{2017, 3, 21}, 0.5792786588228136}, {{2017, 
            3, 22}, 0.31298140348946824`}, {{2017, 3, 23}, 
            0.4140061162347344}, {{2017, 3, 24}, 0.5051030793462115}, {{2017, 
            3, 27}, 0.6394064274819122}, {{2017, 3, 28}, 
            0.5418780549000299}, {{2017, 3, 29}, 0.6230472683777197}, {{2017, 
            3, 30}, 0.44609785239984134`}, {{2017, 3, 31}, 
            0.26914939009627936`}, {{2017, 4, 3}, -0.03336156993452377}, {{
            2017, 4, 4}, 0.02795214427558612}, {{2017, 4, 5}, 
            0.01977256472349076}, {{2017, 4, 6}, -0.08768260381786419}, {{
            2017, 4, 7}, -0.07600763777669961}, {{2017, 4, 
            10}, -0.12039996835193634`}, {{2017, 4, 
            11}, -0.1980737953405569}, {{2017, 4, 
            12}, -0.2956012142481228}, {{2017, 4, 
            13}, -0.23428750003801113`}, {{2017, 4, 17}, 
            0.23930273735662766`}, {{2017, 4, 18}, 0.07228202468685474}, {{
            2017, 4, 19}, 0.004536901006339633}, {{2017, 4, 20}, 
            0.036067366315084115`}, {{2017, 4, 
            21}, -0.0018945084640638044`}, {{2017, 4, 
            24}, -0.056215542347406}, {{2017, 4, 
            25}, -0.10410516676034298`}, {{2017, 4, 
            26}, -0.13213929190570184`}, {{2017, 4, 27}, 
            0.18729114441134342`}, {{2017, 4, 28}, 0.16918381522545722`}, {{
            2017, 5, 1}, 0.31341491299494706`}, {{2017, 5, 2}, 
            0.3648018312455843}, {{2017, 5, 3}, 0.525391134444952}, {{2017, 5,
             4}, 0.38815271700223164`}, {{2017, 5, 5}, 0.6083085180043337}, {{
            2017, 5, 8}, 0.6631908227440384}, {{2017, 5, 9}, 
            0.6153011983311014}, {{2017, 5, 10}, 0.6170493684127933}, {{2017, 
            5, 11}, 0.618797538494487}, {{2017, 5, 12}, 
            0.6006902093086008}, {{2017, 5, 15}, 0.6158624691874657}, {{2017, 
            5, 16}, 0.41905850761632557`}, {{2017, 5, 17}, 
            0.2619655445803417}, {{2017, 5, 18}, 0.05523383337541432}, {{2017,
             5, 19}, 0.2555341351099383}, {{2017, 5, 23}, 
            0.11361247827850285`}, {{2017, 5, 24}, 0.35362282487386665`}, {{
            2017, 5, 25}, 0.3652987445893494}, {{2017, 5, 26}, 
            0.38690241393861946`}, {{2017, 5, 29}, 0.36236367528232805`}, {{
            2017, 5, 30}, 0.37403959499780903`}, {{2017, 5, 31}, 
            0.19709113269424705`}, {{2017, 6, 1}, 0.32789814066656575`}, {{
            2017, 6, 2}, 0.40906735414425377`}, {{2017, 6, 5}, 
            0.35474536658659517`}, {{2017, 6, 6}, 0.11823136015461522`}, {{
            2017, 6, 7}, 0.050487190148416516`}, {{2017, 6, 
            8}, -0.017257933532096814`}, {{2017, 6, 
            9}, -0.055219808311244734`}, {{2017, 6, 
            12}, -0.02019300283911818}, {{2017, 6, 
            13}, -0.11844521422715282`}, {{2017, 6, 
            14}, -0.20669719673335152`}, {{2017, 6, 
            15}, -0.11494887406376719`}, {{2017, 6, 
            16}, -0.03320078027602058}, {{2017, 6, 
            19}, -0.037956498912780745`}}, 
         "dZero" -> {{{2016, 6, 20}, 0}, {{2016, 6, 21}, 0}, {{2016, 6, 22}, 
            0}, {{2016, 6, 23}, 0}, {{2016, 6, 24}, 0}, {{2016, 6, 27}, 0}, {{
            2016, 6, 28}, 0}, {{2016, 6, 29}, 0}, {{2016, 6, 30}, 0}, {{2016, 
            7, 4}, 0}, {{2016, 7, 5}, 0}, {{2016, 7, 6}, 0}, {{2016, 7, 7}, 
            0}, {{2016, 7, 8}, 0}, {{2016, 7, 11}, 0}, {{2016, 7, 12}, 0}, {{
            2016, 7, 13}, 0}, {{2016, 7, 14}, 0}, {{2016, 7, 15}, 0}, {{2016, 
            7, 18}, 0}, {{2016, 7, 19}, 0}, {{2016, 7, 20}, 0}, {{2016, 7, 
            21}, 0}, {{2016, 7, 22}, 0}, {{2016, 7, 25}, 0}, {{2016, 7, 26}, 
            0}, {{2016, 7, 27}, 0}, {{2016, 7, 28}, 0}, {{2016, 7, 29}, 0}, {{
            2016, 8, 2}, 0}, {{2016, 8, 3}, 0}, {{2016, 8, 4}, 0}, {{2016, 8, 
            5}, 0}, {{2016, 8, 8}, 0}, {{2016, 8, 9}, 0}, {{2016, 8, 10}, 
            0}, {{2016, 8, 11}, 0}, {{2016, 8, 12}, 0}, {{2016, 8, 15}, 0}, {{
            2016, 8, 16}, 0}, {{2016, 8, 17}, 0}, {{2016, 8, 18}, 0}, {{2016, 
            8, 19}, 0}, {{2016, 8, 22}, 0}, {{2016, 8, 23}, 0}, {{2016, 8, 
            24}, 0}, {{2016, 8, 25}, 0}, {{2016, 8, 26}, 0}, {{2016, 8, 29}, 
            0}, {{2016, 8, 30}, 0}, {{2016, 8, 31}, 0}, {{2016, 9, 1}, 0}, {{
            2016, 9, 2}, 0}, {{2016, 9, 6}, 0}, {{2016, 9, 7}, 0}, {{2016, 9, 
            8}, 0}, {{2016, 9, 9}, 0}, {{2016, 9, 12}, 0}, {{2016, 9, 13}, 
            0}, {{2016, 9, 14}, 0}, {{2016, 9, 15}, 0}, {{2016, 9, 16}, 0}, {{
            2016, 9, 19}, 0}, {{2016, 9, 20}, 0}, {{2016, 9, 21}, 0}, {{2016, 
            9, 22}, 0}, {{2016, 9, 23}, 0}, {{2016, 9, 26}, 0}, {{2016, 9, 
            27}, 0}, {{2016, 9, 28}, 0}, {{2016, 9, 29}, 0}, {{2016, 9, 30}, 
            0}, {{2016, 10, 3}, 0}, {{2016, 10, 4}, 0}, {{2016, 10, 5}, 0}, {{
            2016, 10, 6}, 0}, {{2016, 10, 7}, 0}, {{2016, 10, 11}, 0}, {{2016,
             10, 12}, 0}, {{2016, 10, 13}, 0}, {{2016, 10, 14}, 0}, {{2016, 
            10, 17}, 0}, {{2016, 10, 18}, 0}, {{2016, 10, 19}, 0}, {{2016, 10,
             20}, 0}, {{2016, 10, 21}, 0}, {{2016, 10, 24}, 0}, {{2016, 10, 
            25}, 0}, {{2016, 10, 26}, 0}, {{2016, 10, 27}, 0}, {{2016, 10, 
            28}, 0}, {{2016, 10, 31}, 0}, {{2016, 11, 1}, 0}, {{2016, 11, 2}, 
            0}, {{2016, 11, 3}, 0}, {{2016, 11, 4}, 0}, {{2016, 11, 7}, 0}, {{
            2016, 11, 8}, 0}, {{2016, 11, 9}, 0}, {{2016, 11, 10}, 0}, {{2016,
             11, 11}, 0}, {{2016, 11, 14}, 0}, {{2016, 11, 15}, 0}, {{2016, 
            11, 16}, 0}, {{2016, 11, 17}, 0}, {{2016, 11, 18}, 0}, {{2016, 11,
             21}, 0}, {{2016, 11, 22}, 0}, {{2016, 11, 23}, 0}, {{2016, 11, 
            24}, 0}, {{2016, 11, 25}, 0}, {{2016, 11, 28}, 0}, {{2016, 11, 
            29}, 0}, {{2016, 11, 30}, 0}, {{2016, 12, 1}, 0}, {{2016, 12, 2}, 
            0}, {{2016, 12, 5}, 0}, {{2016, 12, 6}, 0}, {{2016, 12, 7}, 0}, {{
            2016, 12, 8}, 0}, {{2016, 12, 9}, 0}, {{2016, 12, 12}, 0}, {{2016,
             12, 13}, 0}, {{2016, 12, 14}, 0}, {{2016, 12, 15}, 0}, {{2016, 
            12, 16}, 0}, {{2016, 12, 19}, 0}, {{2016, 12, 20}, 0}, {{2016, 12,
             21}, 0}, {{2016, 12, 22}, 0}, {{2016, 12, 23}, 0}, {{2016, 12, 
            28}, 0}, {{2016, 12, 29}, 0}, {{2016, 12, 30}, 0}, {{2017, 1, 3}, 
            0}, {{2017, 1, 4}, 0}, {{2017, 1, 5}, 0}, {{2017, 1, 6}, 0}, {{
            2017, 1, 9}, 0}, {{2017, 1, 10}, 0}, {{2017, 1, 11}, 0}, {{2017, 
            1, 12}, 0}, {{2017, 1, 13}, 0}, {{2017, 1, 16}, 0}, {{2017, 1, 
            17}, 0}, {{2017, 1, 18}, 0}, {{2017, 1, 19}, 0}, {{2017, 1, 20}, 
            0}, {{2017, 1, 23}, 0}, {{2017, 1, 24}, 0}, {{2017, 1, 25}, 0}, {{
            2017, 1, 26}, 0}, {{2017, 1, 27}, 0}, {{2017, 1, 30}, 0}, {{2017, 
            1, 31}, 0}, {{2017, 2, 1}, 0}, {{2017, 2, 2}, 0}, {{2017, 2, 3}, 
            0}, {{2017, 2, 6}, 0}, {{2017, 2, 7}, 0}, {{2017, 2, 8}, 0}, {{
            2017, 2, 9}, 0}, {{2017, 2, 10}, 0}, {{2017, 2, 13}, 0}, {{2017, 
            2, 14}, 0}, {{2017, 2, 15}, 0}, {{2017, 2, 16}, 0}, {{2017, 2, 
            17}, 0}, {{2017, 2, 21}, 0}, {{2017, 2, 22}, 0}, {{2017, 2, 23}, 
            0}, {{2017, 2, 24}, 0}, {{2017, 2, 27}, 0}, {{2017, 2, 28}, 0}, {{
            2017, 3, 1}, 0}, {{2017, 3, 2}, 0}, {{2017, 3, 3}, 0}, {{2017, 3, 
            6}, 0}, {{2017, 3, 7}, 0}, {{2017, 3, 8}, 0}, {{2017, 3, 9}, 
            0}, {{2017, 3, 10}, 0}, {{2017, 3, 13}, 0}, {{2017, 3, 14}, 0}, {{
            2017, 3, 15}, 0}, {{2017, 3, 16}, 0}, {{2017, 3, 17}, 0}, {{2017, 
            3, 20}, 0}, {{2017, 3, 21}, 0}, {{2017, 3, 22}, 0}, {{2017, 3, 
            23}, 0}, {{2017, 3, 24}, 0}, {{2017, 3, 27}, 0}, {{2017, 3, 28}, 
            0}, {{2017, 3, 29}, 0}, {{2017, 3, 30}, 0}, {{2017, 3, 31}, 0}, {{
            2017, 4, 3}, 0}, {{2017, 4, 4}, 0}, {{2017, 4, 5}, 0}, {{2017, 4, 
            6}, 0}, {{2017, 4, 7}, 0}, {{2017, 4, 10}, 0}, {{2017, 4, 11}, 
            0}, {{2017, 4, 12}, 0}, {{2017, 4, 13}, 0}, {{2017, 4, 17}, 0}, {{
            2017, 4, 18}, 0}, {{2017, 4, 19}, 0}, {{2017, 4, 20}, 0}, {{2017, 
            4, 21}, 0}, {{2017, 4, 24}, 0}, {{2017, 4, 25}, 0}, {{2017, 4, 
            26}, 0}, {{2017, 4, 27}, 0}, {{2017, 4, 28}, 0}, {{2017, 5, 1}, 
            0}, {{2017, 5, 2}, 0}, {{2017, 5, 3}, 0}, {{2017, 5, 4}, 0}, {{
            2017, 5, 5}, 0}, {{2017, 5, 8}, 0}, {{2017, 5, 9}, 0}, {{2017, 5, 
            10}, 0}, {{2017, 5, 11}, 0}, {{2017, 5, 12}, 0}, {{2017, 5, 15}, 
            0}, {{2017, 5, 16}, 0}, {{2017, 5, 17}, 0}, {{2017, 5, 18}, 0}, {{
            2017, 5, 19}, 0}, {{2017, 5, 23}, 0}, {{2017, 5, 24}, 0}, {{2017, 
            5, 25}, 0}, {{2017, 5, 26}, 0}, {{2017, 5, 29}, 0}, {{2017, 5, 
            30}, 0}, {{2017, 5, 31}, 0}, {{2017, 6, 1}, 0}, {{2017, 6, 2}, 
            0}, {{2017, 6, 5}, 0}, {{2017, 6, 6}, 0}, {{2017, 6, 7}, 0}, {{
            2017, 6, 8}, 0}, {{2017, 6, 9}, 0}, {{2017, 6, 12}, 0}, {{2017, 6,
             13}, 0}, {{2017, 6, 14}, 0}, {{2017, 6, 15}, 0}, {{2017, 6, 16}, 
            0}, {{2017, 6, 19}, 0}}, 
         "min" -> {{{2016, 6, 20}, 12.18123722076416}, {{2016, 6, 21}, 
            12.278687477111816`}, {{2016, 6, 22}, 11.996082305908203`}, {{
            2016, 6, 23}, 12.200727462768555`}, {{2016, 6, 24}, 
            11.74271297454834}, {{2016, 6, 27}, 11.810927391052246`}, {{2016, 
            6, 28}, 11.849906921386719`}, {{2016, 6, 29}, 0}, {{2016, 6, 30}, 
            11.888887405395508`}, {{2016, 7, 4}, 11.93761157989502}, {{2016, 
            7, 5}, 12.08378791809082}, {{2016, 7, 6}, 11.859652519226074`}, {{
            2016, 7, 7}, 11.849906921386719`}, {{2016, 7, 8}, 
            11.93761157989502}, {{2016, 7, 11}, 12.074041366577148`}, {{2016, 
            7, 12}, 12.278687477111816`}, {{2016, 7, 13}, 
            12.376136779785156`}, {{2016, 7, 14}, 12.551547050476074`}, {{
            2016, 7, 15}, 12.65874195098877}, {{2016, 7, 18}, 
            12.512567520141602`}, {{2016, 7, 19}, 12.278687477111816`}, {{
            2016, 7, 20}, 12.327412605285645`}, {{2016, 7, 21}, 
            12.473587036132812`}, {{2016, 7, 22}, 12.376136779785156`}, {{
            2016, 7, 25}, 12.298177719116211`}, {{2016, 7, 26}, 
            12.376136779785156`}, {{2016, 7, 27}, 12.268942832946777`}, {{
            2016, 7, 28}, 12.522313117980957`}, {{2016, 7, 29}, 
            12.113021850585938`}, {{2016, 8, 2}, 11.908377647399902`}, {{2016,
             8, 3}, 11.713478088378906`}, {{2016, 8, 4}, 
            11.557558059692383`}, {{2016, 8, 5}, 11.664752960205078`}, {{2016,
             8, 8}, 11.713478088378906`}, {{2016, 8, 9}, 
            12.015572547912598`}, {{2016, 8, 10}, 11.791438102722168`}, {{
            2016, 8, 11}, 11.801182746887207`}, {{2016, 8, 12}, 
            11.752458572387695`}, {{2016, 8, 15}, 11.83041763305664}, {{2016, 
            8, 16}, 11.791438102722168`}, {{2016, 8, 17}, 
            11.888887405395508`}, {{2016, 8, 18}, 11.898633003234863`}, {{
            2016, 8, 19}, 11.947358131408691`}, {{2016, 8, 22}, 
            11.849906921386719`}, {{2016, 8, 23}, 11.93761157989502}, {{2016, 
            8, 24}, 11.888887405395508`}, {{2016, 8, 25}, 
            11.96684741973877}, {{2016, 8, 26}, 11.947358131408691`}, {{2016, 
            8, 29}, 11.888887405395508`}, {{2016, 8, 30}, 
            11.791438102722168`}, {{2016, 8, 31}, 11.74271297454834}, {{2016, 
            9, 1}, 11.713478088378906`}, {{2016, 9, 2}, 11.74271297454834}, {{
            2016, 9, 6}, 11.713478088378906`}, {{2016, 9, 7}, 
            11.713478088378906`}, {{2016, 9, 8}, 11.713478088378906`}, {{2016,
             9, 9}, 11.752458572387695`}, {{2016, 9, 12}, 
            11.752458572387695`}, {{2016, 9, 13}, 11.54661750793457}, {{2016, 
            9, 14}, 11.595627784729004`}, {{2016, 9, 15}, 
            11.576025009155273`}, {{2016, 9, 16}, 11.321175575256348`}, {{
            2016, 9, 19}, 11.576025009155273`}, {{2016, 9, 20}, 
            11.772062301635742`}, {{2016, 9, 21}, 11.82107162475586}, {{2016, 
            9, 22}, 11.909287452697754`}, {{2016, 9, 23}, 
            11.860279083251953`}, {{2016, 9, 26}, 11.860279083251953`}, {{
            2016, 9, 27}, 11.772062301635742`}, {{2016, 9, 28}, 
            11.781864166259766`}, {{2016, 9, 29}, 11.674042701721191`}, {{
            2016, 9, 30}, 11.634834289550781`}, {{2016, 10, 3}, 
            11.879881858825684`}, {{2016, 10, 4}, 11.860279083251953`}, {{
            2016, 10, 5}, 11.478005409240723`}, {{2016, 10, 6}, 
            11.370183944702148`}, {{2016, 10, 7}, 11.61523151397705}, {{2016, 
            10, 11}, 11.54661750793457}, {{2016, 10, 12}, 
            11.321175575256348`}, {{2016, 10, 13}, 11.272164344787598`}, {{
            2016, 10, 14}, 11.379986763000488`}, {{2016, 10, 17}, 
            11.52701473236084}, {{2016, 10, 18}, 11.576025009155273`}, {{2016,
             10, 19}, 11.566222190856934`}, {{2016, 10, 20}, 
            11.507410049438477`}, {{2016, 10, 21}, 11.5172119140625}, {{2016, 
            10, 24}, 11.311372756958008`}, {{2016, 10, 25}, 
            11.046722412109375`}, {{2016, 10, 26}, 11.056523323059082`}, {{
            2016, 10, 27}, 11.174145698547363`}, {{2016, 10, 28}, 
            11.23295783996582}, {{2016, 10, 31}, 11.115335464477539`}, {{2016,
             11, 1}, 10.576231002807617`}, {{2016, 11, 2}, 
            10.144948959350586`}, {{2016, 11, 3}, 10.654645919799805`}, {{
            2016, 11, 4}, 10.439004898071289`}, {{2016, 11, 7}, 
            10.380193710327148`}, {{2016, 11, 8}, 10.3115816116333}, {{2016, 
            11, 9}, 10.20375919342041}, {{2016, 11, 10}, 
            10.086137771606445`}, {{2016, 11, 11}, 10.086137771606445`}, {{
            2016, 11, 14}, 10.18415641784668}, {{2016, 11, 15}, 
            10.056732177734375`}, {{2016, 11, 16}, 10.066534996032715`}, {{
            2016, 11, 17}, 10.076335906982422`}, {{2016, 11, 18}, 
            10.095939636230469`}, {{2016, 11, 21}, 10.135147094726562`}, {{
            2016, 11, 22}, 10.095939636230469`}, {{2016, 11, 23}, 
            10.193957328796387`}, {{2016, 11, 24}, 10.23316478729248}, {{2016,
             11, 25}, 10.262572288513184`}, {{2016, 11, 28}, 
            10.21356201171875}, {{2016, 11, 29}, 10.223363876342773`}, {{2016,
             11, 30}, 10.340987205505371`}, {{2016, 12, 1}, 
            10.350789070129395`}, {{2016, 12, 2}, 9.850893020629883}, {{2016, 
            12, 5}, 9.890100479125977}, {{2016, 12, 6}, 9.694062232971191}, {{
            2016, 12, 7}, 9.733270645141602}, {{2016, 12, 8}, 
            9.860694885253906}, {{2016, 12, 9}, 9.988118171691895}, {{2016, 
            12, 12}, 10.918259620666504`}, {{2016, 12, 13}, 
            10.750590324401855`}, {{2016, 12, 14}, 10.415250778198242`}, {{
            2016, 12, 15}, 10.425113677978516`}, {{2016, 12, 16}, 
            10.52374267578125}, {{2016, 12, 19}, 10.306758880615234`}, {{2016,
             12, 20}, 10.267306327819824`}, {{2016, 12, 21}, 
            10.504016876220703`}, {{2016, 12, 22}, 10.55333137512207}, {{2016,
             12, 23}, 10.573057174682617`}, {{2016, 12, 28}, 
            10.425113677978516`}, {{2016, 12, 29}, 10.454702377319336`}, {{
            2016, 12, 30}, 10.494154930114746`}, {{2017, 1, 3}, 
            10.484291076660156`}, {{2017, 1, 4}, 10.602645874023438`}, {{2017,
             1, 5}, 10.651961326599121`}, {{2017, 1, 6}, 
            10.839356422424316`}, {{2017, 1, 9}, 11.204283714294434`}, {{2017,
             1, 10}, 10.849220275878906`}, {{2017, 1, 11}, 
            10.937986373901367`}, {{2017, 1, 12}, 10.94784927368164}, {{2017, 
            1, 13}, 10.918259620666504`}, {{2017, 1, 16}, 
            10.543468475341797`}, {{2017, 1, 17}, 10.513879776000977`}, {{
            2017, 1, 18}, 10.385661125183105`}, {{2017, 1, 19}, 
            10.385661125183105`}, {{2017, 1, 20}, 10.405387878417969`}, {{
            2017, 1, 23}, 10.444839477539062`}, {{2017, 1, 24}, 
            10.454702377319336`}, {{2017, 1, 25}, 10.58292007446289}, {{2017, 
            1, 26}, 10.573057174682617`}, {{2017, 1, 27}, 
            10.346210479736328`}, {{2017, 1, 30}, 10.23771858215332}, {{2017, 
            1, 31}, 10.050322532653809`}, {{2017, 2, 1}, 
            10.010869979858398`}, {{2017, 2, 2}, 10.55333137512207}, {{2017, 
            2, 3}, 10.148951530456543`}, {{2017, 2, 6}, 
            10.178540229797363`}, {{2017, 2, 7}, 10.247581481933594`}, {{2017,
             2, 8}, 10.642097473144531`}, {{2017, 2, 9}, 
            10.760452270507812`}, {{2017, 2, 10}, 11.14510726928711}, {{2017, 
            2, 13}, 11.164833068847656`}, {{2017, 2, 14}, 
            10.977437973022461`}, {{2017, 2, 15}, 11.085928916931152`}, {{
            2017, 2, 16}, 11.17469596862793}, {{2017, 2, 17}, 
            11.342365264892578`}, {{2017, 2, 21}, 11.302913665771484`}, {{
            2017, 2, 22}, 11.411406517028809`}, {{2017, 2, 23}, 
            11.302913665771484`}, {{2017, 2, 24}, 10.94784927368164}, {{2017, 
            2, 27}, 11.135244369506836`}, {{2017, 2, 28}, 
            11.322639465332031`}, {{2017, 3, 1}, 11.411406517028809`}, {{2017,
             3, 2}, 11.608665466308594`}, {{2017, 3, 3}, 
            11.59880256652832}, {{2017, 3, 6}, 11.92427921295166}, {{2017, 3, 
            7}, 12.170851707458496`}, {{2017, 3, 8}, 12.377972602844238`}, {{
            2017, 3, 9}, 12.249754905700684`}, {{2017, 3, 10}, 
            12.042634010314941`}, {{2017, 3, 13}, 12.0719633102417}, {{2017, 
            3, 14}, 11.823773384094238`}, {{2017, 3, 15}, 
            11.793991088867188`}, {{2017, 3, 16}, 11.625222206115723`}, {{
            2017, 3, 17}, 11.635149955749512`}, {{2017, 3, 20}, 
            11.625222206115723`}, {{2017, 3, 21}, 11.664932250976562`}, {{
            2017, 3, 22}, 11.416742324829102`}, {{2017, 3, 23}, 
            11.446524620056152`}, {{2017, 3, 24}, 11.535873413085938`}, {{
            2017, 3, 27}, 11.565655708312988`}, {{2017, 3, 28}, 
            11.565655708312988`}, {{2017, 3, 29}, 11.625222206115723`}, {{
            2017, 3, 30}, 11.516018867492676`}, {{2017, 3, 31}, 
            11.267827987670898`}, {{2017, 4, 3}, 10.821085929870605`}, {{2017,
             4, 4}, 11.049421310424805`}, {{2017, 4, 5}, 
            11.039493560791016`}, {{2017, 4, 6}, 10.890579223632812`}, {{2017,
             4, 7}, 10.900506019592285`}, {{2017, 4, 10}, 
            10.96007251739502}, {{2017, 4, 11}, 10.870723724365234`}, {{2017, 
            4, 12}, 10.721810340881348`}, {{2017, 4, 13}, 
            10.771448135375977`}, {{2017, 4, 17}, 10.890579223632812`}, {{
            2017, 4, 18}, 11.019638061523438`}, {{2017, 4, 19}, 
            11.069275856018066`}, {{2017, 4, 20}, 11.108985900878906`}, {{
            2017, 4, 21}, 11.019638061523438`}, {{2017, 4, 24}, 
            10.979928016662598`}, {{2017, 4, 25}, 10.940217971801758`}, {{
            2017, 4, 26}, 10.930290222167969`}, {{2017, 4, 27}, 
            11.079203605651855`}, {{2017, 4, 28}, 11.16855239868164}, {{2017, 
            5, 1}, 11.25790023803711}, {{2017, 5, 2}, 11.386959075927734`}, {{
            2017, 5, 3}, 11.416742324829102`}, {{2017, 5, 4}, 
            11.396886825561523`}, {{2017, 5, 5}, 11.416742324829102`}, {{2017,
             5, 8}, 11.575583457946777`}, {{2017, 5, 9}, 
            11.625222206115723`}, {{2017, 5, 10}, 11.605365753173828`}, {{
            2017, 5, 11}, 11.565655708312988`}, {{2017, 5, 12}, 
            11.635149955749512`}, {{2017, 5, 15}, 11.595438957214355`}, {{
            2017, 5, 16}, 11.416742324829102`}, {{2017, 5, 17}, 
            11.16855239868164}, {{2017, 5, 18}, 11.079203605651855`}, {{2017, 
            5, 19}, 11.108985900878906`}, {{2017, 5, 23}, 
            11.138769149780273`}, {{2017, 5, 24}, 11.24797248840332}, {{2017, 
            5, 25}, 11.277755737304688`}, {{2017, 5, 26}, 
            11.367103576660156`}, {{2017, 5, 29}, 11.377031326293945`}, {{
            2017, 5, 30}, 11.367103576660156`}, {{2017, 5, 31}, 
            11.20826244354248}, {{2017, 6, 1}, 11.228117942810059`}, {{2017, 
            6, 2}, 11.327393531799316`}, {{2017, 6, 5}, 
            11.267827987670898`}, {{2017, 6, 6}, 11.099059104919434`}, {{2017,
             6, 7}, 10.940217971801758`}, {{2017, 6, 8}, 
            10.979928016662598`}, {{2017, 6, 9}, 10.900506019592285`}, {{2017,
             6, 12}, 10.850869178771973`}, {{2017, 6, 13}, 
            10.850000381469727`}, {{2017, 6, 14}, 10.5600004196167}, {{2017, 
            6, 15}, 10.710000038146973`}, {{2017, 6, 16}, 10.75}, {{2017, 6, 
            19}, 10.90999984741211}}, 
         "max" -> {{{2016, 6, 20}, 12.40537166595459}, {{2016, 6, 21}, 
            12.385882377624512`}, {{2016, 6, 22}, 12.346902847290039`}, {{
            2016, 6, 23}, 12.346902847290039`}, {{2016, 6, 24}, 
            12.142257690429688`}, {{2016, 6, 27}, 12.08378791809082}, {{2016, 
            6, 28}, 11.986337661743164`}, {{2016, 6, 29}, 0}, {{2016, 6, 30}, 
            11.95710277557373}, {{2016, 7, 4}, 12.61976146697998}, {{2016, 7, 
            5}, 12.473587036132812`}, {{2016, 7, 6}, 12.161746978759766`}, {{
            2016, 7, 7}, 11.93761157989502}, {{2016, 7, 8}, 
            12.132511138916016`}, {{2016, 7, 11}, 12.376136779785156`}, {{
            2016, 7, 12}, 12.512567520141602`}, {{2016, 7, 13}, 
            12.824406623840332`}, {{2016, 7, 14}, 12.87313175201416}, {{2016, 
            7, 15}, 12.84389591217041}, {{2016, 7, 18}, 12.65874195098877}, {{
            2016, 7, 19}, 12.522313117980957`}, {{2016, 7, 20}, 
            12.473587036132812`}, {{2016, 7, 21}, 12.668486595153809`}, {{
            2016, 7, 22}, 12.668486595153809`}, {{2016, 7, 25}, 
            12.483332633972168`}, {{2016, 7, 26}, 12.463842391967773`}, {{
            2016, 7, 27}, 12.571036338806152`}, {{2016, 7, 28}, 
            12.65874195098877}, {{2016, 7, 29}, 12.590526580810547`}, {{2016, 
            8, 2}, 12.337156295776367`}, {{2016, 8, 3}, 
            12.035062789916992`}, {{2016, 8, 4}, 11.859652519226074`}, {{2016,
             8, 5}, 11.986337661743164`}, {{2016, 8, 8}, 
            11.986337661743164`}, {{2016, 8, 9}, 12.18123722076416}, {{2016, 
            8, 10}, 12.122767448425293`}, {{2016, 8, 11}, 
            11.996082305908203`}, {{2016, 8, 12}, 11.888887405395508`}, {{
            2016, 8, 15}, 12.08378791809082}, {{2016, 8, 16}, 
            12.025318145751953`}, {{2016, 8, 17}, 12.103278160095215`}, {{
            2016, 8, 18}, 12.171491622924805`}, {{2016, 8, 19}, 
            12.035062789916992`}, {{2016, 8, 22}, 12.103278160095215`}, {{
            2016, 8, 23}, 12.05455207824707}, {{2016, 8, 24}, 
            12.044807434082031`}, {{2016, 8, 25}, 12.025318145751953`}, {{
            2016, 8, 26}, 12.025318145751953`}, {{2016, 8, 29}, 
            11.986337661743164`}, {{2016, 8, 30}, 11.976592063903809`}, {{
            2016, 8, 31}, 11.92786693572998}, {{2016, 9, 1}, 
            11.849906921386719`}, {{2016, 9, 2}, 11.93761157989502}, {{2016, 
            9, 6}, 11.83041763305664}, {{2016, 9, 7}, 11.83041763305664}, {{
            2016, 9, 8}, 11.898633003234863`}, {{2016, 9, 9}, 
            11.849906921386719`}, {{2016, 9, 12}, 11.84016227722168}, {{2016, 
            9, 13}, 11.84067440032959}, {{2016, 9, 14}, 
            11.713249206542969`}, {{2016, 9, 15}, 11.703447341918945`}, {{
            2016, 9, 16}, 11.732853889465332`}, {{2016, 9, 19}, 
            11.81126880645752}, {{2016, 9, 20}, 11.938693046569824`}, {{2016, 
            9, 21}, 11.948494911193848`}, {{2016, 9, 22}, 
            12.007307052612305`}, {{2016, 9, 23}, 12.007307052612305`}, {{
            2016, 9, 26}, 11.968099594116211`}, {{2016, 9, 27}, 
            11.89948558807373}, {{2016, 9, 28}, 11.909287452697754`}, {{2016, 
            9, 29}, 11.791665077209473`}, {{2016, 9, 30}, 
            11.909287452697754`}, {{2016, 10, 3}, 12.007307052612305`}, {{
            2016, 10, 4}, 12.056316375732422`}, {{2016, 10, 5}, 
            11.958297729492188`}, {{2016, 10, 6}, 11.732853889465332`}, {{
            2016, 10, 7}, 11.762260437011719`}, {{2016, 10, 11}, 
            11.762260437011719`}, {{2016, 10, 12}, 11.576025009155273`}, {{
            2016, 10, 13}, 11.458399772644043`}, {{2016, 10, 14}, 
            11.664239883422852`}, {{2016, 10, 17}, 11.654438972473145`}, {{
            2016, 10, 18}, 11.664239883422852`}, {{2016, 10, 19}, 
            11.664239883422852`}, {{2016, 10, 20}, 11.634834289550781`}, {{
            2016, 10, 21}, 11.605429649353027`}, {{2016, 10, 24}, 
            11.566222190856934`}, {{2016, 10, 25}, 11.370183944702148`}, {{
            2016, 10, 26}, 11.52701473236084}, {{2016, 10, 27}, 
            11.419193267822266`}, {{2016, 10, 28}, 11.370183944702148`}, {{
            2016, 10, 31}, 11.281967163085938`}, {{2016, 11, 1}, 
            11.242759704589844`}, {{2016, 11, 2}, 10.968306541442871`}, {{
            2016, 11, 3}, 10.91929817199707}, {{2016, 11, 4}, 
            10.79187297821045}, {{2016, 11, 7}, 10.576231002807617`}, {{2016, 
            11, 8}, 10.439004898071289`}, {{2016, 11, 9}, 
            10.360589981079102`}, {{2016, 11, 10}, 10.340987205505371`}, {{
            2016, 11, 11}, 10.21356201171875}, {{2016, 11, 14}, 
            10.24296760559082}, {{2016, 11, 15}, 10.223363876342773`}, {{2016,
             11, 16}, 10.24296760559082}, {{2016, 11, 17}, 
            10.223363876342773`}, {{2016, 11, 18}, 10.27237319946289}, {{2016,
             11, 21}, 10.24296760559082}, {{2016, 11, 22}, 
            10.291976928710938`}, {{2016, 11, 23}, 10.301778793334961`}, {{
            2016, 11, 24}, 10.301778793334961`}, {{2016, 11, 25}, 
            10.429203987121582`}, {{2016, 11, 28}, 10.301778793334961`}, {{
            2016, 11, 29}, 10.429203987121582`}, {{2016, 11, 30}, 
            10.742863655090332`}, {{2016, 12, 1}, 11.027117729187012`}, {{
            2016, 12, 2}, 10.811476707458496`}, {{2016, 12, 5}, 
            10.23316478729248}, {{2016, 12, 6}, 10.095939636230469`}, {{2016, 
            12, 7}, 9.958712577819824}, {{2016, 12, 8}, 9.978317260742188}, {{
            2016, 12, 9}, 11.125138282775879`}, {{2016, 12, 12}, 
            11.14510726928711}, {{2016, 12, 13}, 11.076066017150879`}, {{2016,
             12, 14}, 10.977437973022461`}, {{2016, 12, 15}, 
            10.642097473144531`}, {{2016, 12, 16}, 10.849220275878906`}, {{
            2016, 12, 19}, 10.642097473144531`}, {{2016, 12, 20}, 
            10.602645874023438`}, {{2016, 12, 21}, 10.721001625061035`}, {{
            2016, 12, 22}, 10.671686172485352`}, {{2016, 12, 23}, 
            11.125381469726562`}, {{2016, 12, 28}, 10.997162818908691`}, {{
            2016, 12, 29}, 10.573057174682617`}, {{2016, 12, 30}, 
            10.651961326599121`}, {{2017, 1, 3}, 10.711137771606445`}, {{2017,
             1, 4}, 10.829492568969727`}, {{2017, 1, 5}, 
            10.908397674560547`}, {{2017, 1, 6}, 11.125381469726562`}, {{2017,
             1, 9}, 11.49030876159668}, {{2017, 1, 10}, 11.49030876159668}, {{
            2017, 1, 11}, 11.302913665771484`}, {{2017, 1, 12}, 
            11.243736267089844`}, {{2017, 1, 13}, 11.135244369506836`}, {{
            2017, 1, 16}, 10.937986373901367`}, {{2017, 1, 17}, 
            10.701275825500488`}, {{2017, 1, 18}, 10.602645874023438`}, {{
            2017, 1, 19}, 10.651961326599121`}, {{2017, 1, 20}, 
            10.58292007446289}, {{2017, 1, 23}, 10.602645874023438`}, {{2017, 
            1, 24}, 10.612509727478027`}, {{2017, 1, 25}, 
            10.997162818908691`}, {{2017, 1, 26}, 10.849220275878906`}, {{
            2017, 1, 27}, 10.602645874023438`}, {{2017, 1, 30}, 
            10.454702377319336`}, {{2017, 1, 31}, 10.23771858215332}, {{2017, 
            2, 1}, 10.306758880615234`}, {{2017, 2, 2}, 
            10.918259620666504`}, {{2017, 2, 3}, 10.395524978637695`}, {{2017,
             2, 6}, 10.415250778198242`}, {{2017, 2, 7}, 
            10.691412925720215`}, {{2017, 2, 8}, 10.859082221984863`}, {{2017,
             2, 9}, 11.194422721862793`}, {{2017, 2, 10}, 
            11.312777519226074`}, {{2017, 2, 13}, 11.332502365112305`}, {{
            2017, 2, 14}, 11.164833068847656`}, {{2017, 2, 15}, 
            11.342365264892578`}, {{2017, 2, 16}, 11.510035514831543`}, {{
            2017, 2, 17}, 11.510035514831543`}, {{2017, 2, 21}, 
            11.539624214172363`}, {{2017, 2, 22}, 11.539624214172363`}, {{
            2017, 2, 23}, 11.49030876159668}, {{2017, 2, 24}, 
            11.322639465332031`}, {{2017, 2, 27}, 11.539624214172363`}, {{
            2017, 2, 28}, 11.49030876159668}, {{2017, 3, 1}, 
            11.89469051361084}, {{2017, 3, 2}, 11.796060562133789`}, {{2017, 
            3, 3}, 11.904552459716797`}, {{2017, 3, 6}, 
            12.279343605041504`}, {{2017, 3, 7}, 12.377972602844238`}, {{2017,
             3, 8}, 12.476601600646973`}, {{2017, 3, 9}, 
            12.614683151245117`}, {{2017, 3, 10}, 12.249754905700684`}, {{
            2017, 3, 13}, 12.191094398498535`}, {{2017, 3, 14}, 
            12.131529808044434`}, {{2017, 3, 15}, 12.012398719787598`}, {{
            2017, 3, 16}, 11.942904472351074`}, {{2017, 3, 17}, 
            11.962759971618652`}, {{2017, 3, 20}, 11.972688674926758`}, {{
            2017, 3, 21}, 11.803918838500977`}, {{2017, 3, 22}, 
            11.754281044006348`}, {{2017, 3, 23}, 11.635149955749512`}, {{
            2017, 3, 24}, 11.704642295837402`}, {{2017, 3, 27}, 
            11.843628883361816`}, {{2017, 3, 28}, 11.883339881896973`}, {{
            2017, 3, 29}, 11.793991088867188`}, {{2017, 3, 30}, 
            11.714570045471191`}, {{2017, 3, 31}, 11.694714546203613`}, {{
            2017, 4, 3}, 11.506091117858887`}, {{2017, 4, 4}, 
            11.406814575195312`}, {{2017, 4, 5}, 11.267827987670898`}, {{2017,
             4, 6}, 11.16855239868164}, {{2017, 4, 7}, 
            11.099059104919434`}, {{2017, 4, 10}, 11.059349060058594`}, {{
            2017, 4, 11}, 11.019638061523438`}, {{2017, 4, 12}, 
            10.940217971801758`}, {{2017, 4, 13}, 10.870723724365234`}, {{
            2017, 4, 17}, 11.327393531799316`}, {{2017, 4, 18}, 
            11.277755737304688`}, {{2017, 4, 19}, 11.317465782165527`}, {{
            2017, 4, 20}, 11.287683486938477`}, {{2017, 4, 21}, 
            11.118913650512695`}, {{2017, 4, 24}, 11.148695945739746`}, {{
            2017, 4, 25}, 11.069275856018066`}, {{2017, 4, 26}, 
            10.99978256225586}, {{2017, 4, 27}, 11.317465782165527`}, {{2017, 
            4, 28}, 11.416742324829102`}, {{2017, 5, 1}, 
            11.42667007446289}, {{2017, 5, 2}, 11.516018867492676`}, {{2017, 
            5, 3}, 11.595438957214355`}, {{2017, 5, 4}, 
            11.645076751708984`}, {{2017, 5, 5}, 11.784063339233398`}, {{2017,
             5, 8}, 11.863484382629395`}, {{2017, 5, 9}, 
            11.77413558959961}, {{2017, 5, 10}, 11.694714546203613`}, {{2017, 
            5, 11}, 11.674860000610352`}, {{2017, 5, 12}, 
            11.674860000610352`}, {{2017, 5, 15}, 11.764208793640137`}, {{
            2017, 5, 16}, 11.704642295837402`}, {{2017, 5, 17}, 
            11.446524620056152`}, {{2017, 5, 18}, 11.307538986206055`}, {{
            2017, 5, 19}, 11.337321281433105`}, {{2017, 5, 23}, 
            11.416742324829102`}, {{2017, 5, 24}, 11.416742324829102`}, {{
            2017, 5, 25}, 11.43659782409668}, {{2017, 5, 26}, 
            11.446524620056152`}, {{2017, 5, 29}, 11.42667007446289}, {{2017, 
            5, 30}, 11.43659782409668}, {{2017, 5, 31}, 
            11.386959075927734`}, {{2017, 6, 1}, 11.386959075927734`}, {{2017,
             6, 2}, 11.43659782409668}, {{2017, 6, 5}, 11.42667007446289}, {{
            2017, 6, 6}, 11.327393531799316`}, {{2017, 6, 7}, 
            11.21819019317627}, {{2017, 6, 8}, 11.21819019317627}, {{2017, 6, 
            9}, 11.039493560791016`}, {{2017, 6, 12}, 10.99978256225586}, {{
            2017, 6, 13}, 11.050000190734863`}, {{2017, 6, 14}, 
            10.9399995803833}, {{2017, 6, 15}, 10.890000343322754`}, {{2017, 
            6, 16}, 10.960000038146973`}, {{2017, 6, 19}, 
            10.989999771118164`}}, 
         "close" -> {{{2016, 6, 20}, 12.337156295776367`}, {{2016, 6, 21}, 
            12.278687477111816`}, {{2016, 6, 22}, 12.200727462768555`}, {{
            2016, 6, 23}, 12.200727462768555`}, {{2016, 6, 24}, 
            11.888887405395508`}, {{2016, 6, 27}, 11.93761157989502}, {{2016, 
            6, 28}, 11.888887405395508`}, {{2016, 6, 29}, 0}, {{2016, 6, 30}, 
            11.888887405395508`}, {{2016, 7, 4}, 12.454096794128418`}, {{2016,
             7, 5}, 12.122767448425293`}, {{2016, 7, 6}, 
            11.879142761230469`}, {{2016, 7, 7}, 11.869397163391113`}, {{2016,
             7, 8}, 12.074041366577148`}, {{2016, 7, 11}, 
            12.122767448425293`}, {{2016, 7, 12}, 12.434606552124023`}, {{
            2016, 7, 13}, 12.56129264831543}, {{2016, 7, 14}, 
            12.648995399475098`}, {{2016, 7, 15}, 12.65874195098877}, {{2016, 
            7, 18}, 12.512567520141602`}, {{2016, 7, 19}, 
            12.366392135620117`}, {{2016, 7, 20}, 12.473587036132812`}, {{
            2016, 7, 21}, 12.62950611114502}, {{2016, 7, 22}, 
            12.454096794128418`}, {{2016, 7, 25}, 12.454096794128418`}, {{
            2016, 7, 26}, 12.40537166595459}, {{2016, 7, 27}, 
            12.463842391967773`}, {{2016, 7, 28}, 12.571036338806152`}, {{
            2016, 7, 29}, 12.278687477111816`}, {{2016, 8, 2}, 
            11.93761157989502}, {{2016, 8, 3}, 11.781692504882812`}, {{2016, 
            8, 4}, 11.645261764526367`}, {{2016, 8, 5}, 11.70373249053955}, {{
            2016, 8, 8}, 11.986337661743164`}, {{2016, 8, 9}, 
            12.05455207824707}, {{2016, 8, 10}, 11.859652519226074`}, {{2016, 
            8, 11}, 11.92786693572998}, {{2016, 8, 12}, 
            11.791438102722168`}, {{2016, 8, 15}, 11.83041763305664}, {{2016, 
            8, 16}, 11.95710277557373}, {{2016, 8, 17}, 11.96684741973877}, {{
            2016, 8, 18}, 11.996082305908203`}, {{2016, 8, 19}, 
            11.96684741973877}, {{2016, 8, 22}, 12.005826950073242`}, {{2016, 
            8, 23}, 11.95710277557373}, {{2016, 8, 24}, 
            11.996082305908203`}, {{2016, 8, 25}, 11.986337661743164`}, {{
            2016, 8, 26}, 11.986337661743164`}, {{2016, 8, 29}, 
            11.908377647399902`}, {{2016, 8, 30}, 11.92786693572998}, {{2016, 
            8, 31}, 11.84016227722168}, {{2016, 9, 1}, 
            11.801182746887207`}, {{2016, 9, 2}, 11.83041763305664}, {{2016, 
            9, 6}, 11.762202262878418`}, {{2016, 9, 7}, 11.74271297454834}, {{
            2016, 9, 8}, 11.859652519226074`}, {{2016, 9, 9}, 
            11.752458572387695`}, {{2016, 9, 12}, 11.752458572387695`}, {{
            2016, 9, 13}, 11.644637107849121`}, {{2016, 9, 14}, 
            11.605429649353027`}, {{2016, 9, 15}, 11.644637107849121`}, {{
            2016, 9, 16}, 11.595627784729004`}, {{2016, 9, 19}, 
            11.81126880645752}, {{2016, 9, 20}, 11.860279083251953`}, {{2016, 
            9, 21}, 11.909287452697754`}, {{2016, 9, 22}, 
            11.909287452697754`}, {{2016, 9, 23}, 11.968099594116211`}, {{
            2016, 9, 26}, 11.87007999420166}, {{2016, 9, 27}, 
            11.82107162475586}, {{2016, 9, 28}, 11.82107162475586}, {{2016, 9,
             29}, 11.703447341918945`}, {{2016, 9, 30}, 
            11.860279083251953`}, {{2016, 10, 3}, 11.938693046569824`}, {{
            2016, 10, 4}, 11.879881858825684`}, {{2016, 10, 5}, 
            11.61523151397705}, {{2016, 10, 6}, 11.605429649353027`}, {{2016, 
            10, 7}, 11.732853889465332`}, {{2016, 10, 11}, 
            11.58582592010498}, {{2016, 10, 12}, 11.330977439880371`}, {{2016,
             10, 13}, 11.399590492248535`}, {{2016, 10, 14}, 
            11.605429649353027`}, {{2016, 10, 17}, 11.566222190856934`}, {{
            2016, 10, 18}, 11.595627784729004`}, {{2016, 10, 19}, 
            11.576025009155273`}, {{2016, 10, 20}, 11.54661750793457}, {{2016,
             10, 21}, 11.54661750793457}, {{2016, 10, 24}, 
            11.448598861694336`}, {{2016, 10, 25}, 11.213354110717773`}, {{
            2016, 10, 26}, 11.468202590942383`}, {{2016, 10, 27}, 
            11.301570892333984`}, {{2016, 10, 28}, 11.262362480163574`}, {{
            2016, 10, 31}, 11.272164344787598`}, {{2016, 11, 1}, 
            10.713459014892578`}, {{2016, 11, 2}, 10.88008975982666}, {{2016, 
            11, 3}, 10.703657150268555`}, {{2016, 11, 4}, 
            10.53702449798584}, {{2016, 11, 7}, 10.468411445617676`}, {{2016, 
            11, 8}, 10.370391845703125`}, {{2016, 11, 9}, 
            10.3115816116333}, {{2016, 11, 10}, 10.193957328796387`}, {{2016, 
            11, 11}, 10.193957328796387`}, {{2016, 11, 14}, 
            10.20375919342041}, {{2016, 11, 15}, 10.223363876342773`}, {{2016,
             11, 16}, 10.135147094726562`}, {{2016, 11, 17}, 
            10.18415641784668}, {{2016, 11, 18}, 10.252769470214844`}, {{2016,
             11, 21}, 10.15475082397461}, {{2016, 11, 22}, 
            10.282175064086914`}, {{2016, 11, 23}, 10.252769470214844`}, {{
            2016, 11, 24}, 10.291976928710938`}, {{2016, 11, 25}, 
            10.291976928710938`}, {{2016, 11, 28}, 10.24296760559082}, {{2016,
             11, 29}, 10.282175064086914`}, {{2016, 11, 30}, 
            10.507619857788086`}, {{2016, 12, 1}, 10.742863655090332`}, {{
            2016, 12, 2}, 9.9489107131958}, {{2016, 12, 5}, 
            10.046930313110352`}, {{2016, 12, 6}, 9.762675285339355}, {{2016, 
            12, 7}, 9.939109802246094}, {{2016, 12, 8}, 9.978317260742188}, {{
            2016, 12, 9}, 11.085929870605469`}, {{2016, 12, 12}, 
            11.016888618469238`}, {{2016, 12, 13}, 10.977437973022461`}, {{
            2016, 12, 14}, 10.55333137512207}, {{2016, 12, 15}, 
            10.592782974243164`}, {{2016, 12, 16}, 10.573057174682617`}, {{
            2016, 12, 19}, 10.306758880615234`}, {{2016, 12, 20}, 
            10.573057174682617`}, {{2016, 12, 21}, 10.504016876220703`}, {{
            2016, 12, 22}, 10.602645874023438`}, {{2016, 12, 23}, 
            10.859082221984863`}, {{2016, 12, 28}, 10.513879776000977`}, {{
            2016, 12, 29}, 10.543468475341797`}, {{2016, 12, 30}, 
            10.632234573364258`}, {{2017, 1, 3}, 10.612509727478027`}, {{2017,
             1, 4}, 10.681550025939941`}, {{2017, 1, 5}, 
            10.780179023742676`}, {{2017, 1, 6}, 11.046477317810059`}, {{2017,
             1, 9}, 11.332502365112305`}, {{2017, 1, 10}, 
            10.87880802154541}, {{2017, 1, 11}, 11.164833068847656`}, {{2017, 
            1, 12}, 10.94784927368164}, {{2017, 1, 13}, 
            10.928122520446777`}, {{2017, 1, 16}, 10.642097473144531`}, {{
            2017, 1, 17}, 10.602645874023438`}, {{2017, 1, 18}, 
            10.444839477539062`}, {{2017, 1, 19}, 10.474427223205566`}, {{
            2017, 1, 20}, 10.58292007446289}, {{2017, 1, 23}, 
            10.52374267578125}, {{2017, 1, 24}, 10.573057174682617`}, {{2017, 
            1, 25}, 10.809767723083496`}, {{2017, 1, 26}, 
            10.58292007446289}, {{2017, 1, 27}, 10.395524978637695`}, {{2017, 
            1, 30}, 10.296895027160645`}, {{2017, 1, 31}, 
            10.13908863067627}, {{2017, 2, 1}, 10.267306327819824`}, {{2017, 
            2, 2}, 10.671686172485352`}, {{2017, 2, 3}, 
            10.306758880615234`}, {{2017, 2, 6}, 10.23771858215332}, {{2017, 
            2, 7}, 10.612509727478027`}, {{2017, 2, 8}, 
            10.770316123962402`}, {{2017, 2, 9}, 11.14510726928711}, {{2017, 
            2, 10}, 11.253599166870117`}, {{2017, 2, 13}, 
            11.23387336730957}, {{2017, 2, 14}, 11.105656623840332`}, {{2017, 
            2, 15}, 11.312777519226074`}, {{2017, 2, 16}, 
            11.431132316589355`}, {{2017, 2, 17}, 11.371953964233398`}, {{
            2017, 2, 21}, 11.440995216369629`}, {{2017, 2, 22}, 
            11.49030876159668}, {{2017, 2, 23}, 11.322639465332031`}, {{2017, 
            2, 24}, 11.095792770385742`}, {{2017, 2, 27}, 
            11.450858116149902`}, {{2017, 2, 28}, 11.381817817687988`}, {{
            2017, 3, 1}, 11.687568664550781`}, {{2017, 3, 2}, 
            11.677704811096191`}, {{2017, 3, 3}, 11.855238914489746`}, {{2017,
             3, 6}, 12.259617805480957`}, {{2017, 3, 7}, 
            12.328658103942871`}, {{2017, 3, 8}, 12.437150955200195`}, {{2017,
             3, 9}, 12.249754905700684`}, {{2017, 3, 10}, 
            12.111674308776855`}, {{2017, 3, 13}, 12.101746559143066`}, {{
            2017, 3, 14}, 11.923049926757812`}, {{2017, 3, 15}, 
            11.913122177124023`}, {{2017, 3, 16}, 11.784063339233398`}, {{
            2017, 3, 17}, 11.81384563446045}, {{2017, 3, 20}, 
            11.754281044006348`}, {{2017, 3, 21}, 11.714570045471191`}, {{
            2017, 3, 22}, 11.446524620056152`}, {{2017, 3, 23}, 
            11.545801162719727`}, {{2017, 3, 24}, 11.635149955749512`}, {{
            2017, 3, 27}, 11.764208793640137`}, {{2017, 3, 28}, 
            11.664932250976562`}, {{2017, 3, 29}, 11.744353294372559`}, {{
            2017, 3, 30}, 11.565655708312988`}, {{2017, 3, 31}, 
            11.386959075927734`}, {{2017, 4, 3}, 11.079203605651855`}, {{2017,
             4, 4}, 11.138769149780273`}, {{2017, 4, 5}, 
            11.128841400146484`}, {{2017, 4, 6}, 11.019638061523438`}, {{2017,
             4, 7}, 11.02956485748291}, {{2017, 4, 10}, 
            10.979928016662598`}, {{2017, 4, 11}, 10.900506019592285`}, {{
            2017, 4, 12}, 10.801230430603027`}, {{2017, 4, 13}, 
            10.860795974731445`}, {{2017, 4, 17}, 11.327393531799316`}, {{
            2017, 4, 18}, 11.158624649047852`}, {{2017, 4, 19}, 
            11.089131355285645`}, {{2017, 4, 20}, 11.118913650512695`}, {{
            2017, 4, 21}, 11.079203605651855`}, {{2017, 4, 24}, 
            11.019638061523438`}, {{2017, 4, 25}, 10.970000267028809`}, {{
            2017, 4, 26}, 10.940217971801758`}, {{2017, 4, 27}, 
            11.25790023803711}, {{2017, 4, 28}, 11.238044738769531`}, {{2017, 
            5, 1}, 11.377031326293945`}, {{2017, 5, 2}, 11.42667007446289}, {{
            2017, 5, 3}, 11.585511207580566`}, {{2017, 5, 4}, 
            11.446524620056152`}, {{2017, 5, 5}, 11.664932250976562`}, {{2017,
             5, 8}, 11.714570045471191`}, {{2017, 5, 9}, 
            11.664932250976562`}, {{2017, 5, 10}, 11.664932250976562`}, {{
            2017, 5, 11}, 11.664932250976562`}, {{2017, 5, 12}, 
            11.645076751708984`}, {{2017, 5, 15}, 11.655004501342773`}, {{
            2017, 5, 16}, 11.456452369689941`}, {{2017, 5, 17}, 
            11.297611236572266`}, {{2017, 5, 18}, 11.089131355285645`}, {{
            2017, 5, 19}, 11.287683486938477`}, {{2017, 5, 23}, 
            11.138769149780273`}, {{2017, 5, 24}, 11.377031326293945`}, {{
            2017, 5, 25}, 11.386959075927734`}, {{2017, 5, 26}, 
            11.406814575195312`}, {{2017, 5, 29}, 11.377031326293945`}, {{
            2017, 5, 30}, 11.386959075927734`}, {{2017, 5, 31}, 
            11.20826244354248}, {{2017, 6, 1}, 11.337321281433105`}, {{2017, 
            6, 2}, 11.416742324829102`}, {{2017, 6, 5}, 
            11.357175827026367`}, {{2017, 6, 6}, 11.118913650512695`}, {{2017,
             6, 7}, 11.049421310424805`}, {{2017, 6, 8}, 
            10.979928016662598`}, {{2017, 6, 9}, 10.940217971801758`}, {{2017,
             6, 12}, 10.970000267028809`}, {{2017, 6, 13}, 
            10.869999885559082`}, {{2017, 6, 14}, 10.779999732971191`}, {{
            2017, 6, 15}, 10.869999885559082`}, {{2017, 6, 16}, 
            10.949999809265137`}, {{2017, 6, 19}, 10.9399995803833}}, 
         "model" -> {{{2016, 6, 20}, 11.614289989032033`}, {{2016, 6, 20}, 
            11.614289989032033`}, {{2016, 6, 20}, 11.614289989032033`}, {{
            2016, 6, 21}, 11.61254181895034}, {{2016, 6, 21}, 
            11.61254181895034}, {{2016, 6, 21}, 11.61254181895034}, {{2016, 6,
             22}, 11.610793648868649`}, {{2016, 6, 22}, 
            11.610793648868649`}, {{2016, 6, 22}, 11.610793648868649`}, {{
            2016, 6, 23}, 11.609045478786957`}, {{2016, 6, 23}, 
            11.609045478786957`}, {{2016, 6, 23}, 11.609045478786957`}, {{
            2016, 6, 24}, 11.607297308705263`}, {{2016, 6, 24}, 
            11.607297308705263`}, {{2016, 6, 24}, 11.607297308705263`}, {{
            2016, 6, 27}, 11.602052798460187`}, {{2016, 6, 27}, 
            11.602052798460187`}, {{2016, 6, 27}, 11.602052798460187`}, {{
            2016, 6, 28}, 11.600304628378495`}, {{2016, 6, 28}, 
            11.600304628378495`}, {{2016, 6, 28}, 11.600304628378495`}, {{
            2016, 6, 29}, 11.598556458296803`}, {{2016, 6, 29}, 
            11.598556458296803`}, {{2016, 6, 29}, 11.598556458296803`}, {{
            2016, 6, 30}, 11.596808288215112`}, {{2016, 6, 30}, 
            11.596808288215112`}, {{2016, 6, 30}, 11.596808288215112`}, {{
            2016, 7, 4}, 11.589815607888342`}, {{2016, 7, 4}, 
            11.589815607888342`}, {{2016, 7, 4}, 11.589815607888342`}, {{2016,
             7, 5}, 11.58806743780665}, {{2016, 7, 5}, 11.58806743780665}, {{
            2016, 7, 5}, 11.58806743780665}, {{2016, 7, 6}, 
            11.586319267724958`}, {{2016, 7, 6}, 11.586319267724958`}, {{2016,
             7, 6}, 11.586319267724958`}, {{2016, 7, 7}, 
            11.584571097643266`}, {{2016, 7, 7}, 11.584571097643266`}, {{2016,
             7, 7}, 11.584571097643266`}, {{2016, 7, 8}, 
            11.582822927561573`}, {{2016, 7, 8}, 11.582822927561573`}, {{2016,
             7, 8}, 11.582822927561573`}, {{2016, 7, 11}, 
            11.577578417316497`}, {{2016, 7, 11}, 11.577578417316497`}, {{
            2016, 7, 11}, 11.577578417316497`}, {{2016, 7, 12}, 
            11.575830247234805`}, {{2016, 7, 12}, 11.575830247234805`}, {{
            2016, 7, 12}, 11.575830247234805`}, {{2016, 7, 13}, 
            11.574082077153113`}, {{2016, 7, 13}, 11.574082077153113`}, {{
            2016, 7, 13}, 11.574082077153113`}, {{2016, 7, 14}, 
            11.572333907071421`}, {{2016, 7, 14}, 11.572333907071421`}, {{
            2016, 7, 14}, 11.572333907071421`}, {{2016, 7, 15}, 
            11.570585736989727`}, {{2016, 7, 15}, 11.570585736989727`}, {{
            2016, 7, 15}, 11.570585736989727`}, {{2016, 7, 18}, 
            11.565341226744652`}, {{2016, 7, 18}, 11.565341226744652`}, {{
            2016, 7, 18}, 11.565341226744652`}, {{2016, 7, 19}, 
            11.56359305666296}, {{2016, 7, 19}, 11.56359305666296}, {{2016, 7,
             19}, 11.56359305666296}, {{2016, 7, 20}, 11.561844886581268`}, {{
            2016, 7, 20}, 11.561844886581268`}, {{2016, 7, 20}, 
            11.561844886581268`}, {{2016, 7, 21}, 11.560096716499576`}, {{
            2016, 7, 21}, 11.560096716499576`}, {{2016, 7, 21}, 
            11.560096716499576`}, {{2016, 7, 22}, 11.558348546417884`}, {{
            2016, 7, 22}, 11.558348546417884`}, {{2016, 7, 22}, 
            11.558348546417884`}, {{2016, 7, 25}, 11.553104036172806`}, {{
            2016, 7, 25}, 11.553104036172806`}, {{2016, 7, 25}, 
            11.553104036172806`}, {{2016, 7, 26}, 11.551355866091114`}, {{
            2016, 7, 26}, 11.551355866091114`}, {{2016, 7, 26}, 
            11.551355866091114`}, {{2016, 7, 27}, 11.549607696009422`}, {{
            2016, 7, 27}, 11.549607696009422`}, {{2016, 7, 27}, 
            11.549607696009422`}, {{2016, 7, 28}, 11.54785952592773}, {{2016, 
            7, 28}, 11.54785952592773}, {{2016, 7, 28}, 11.54785952592773}, {{
            2016, 7, 29}, 11.546111355846039`}, {{2016, 7, 29}, 
            11.546111355846039`}, {{2016, 7, 29}, 11.546111355846039`}, {{
            2016, 8, 2}, 11.53911867551927}, {{2016, 8, 2}, 
            11.53911867551927}, {{2016, 8, 2}, 11.53911867551927}, {{2016, 8, 
            3}, 11.537370505437577`}, {{2016, 8, 3}, 11.537370505437577`}, {{
            2016, 8, 3}, 11.537370505437577`}, {{2016, 8, 4}, 
            11.535622335355885`}, {{2016, 8, 4}, 11.535622335355885`}, {{2016,
             8, 4}, 11.535622335355885`}, {{2016, 8, 5}, 
            11.533874165274193`}, {{2016, 8, 5}, 11.533874165274193`}, {{2016,
             8, 5}, 11.533874165274193`}, {{2016, 8, 8}, 
            11.528629655029116`}, {{2016, 8, 8}, 11.528629655029116`}, {{2016,
             8, 8}, 11.528629655029116`}, {{2016, 8, 9}, 
            11.526881484947424`}, {{2016, 8, 9}, 11.526881484947424`}, {{2016,
             8, 9}, 11.526881484947424`}, {{2016, 8, 10}, 
            11.525133314865732`}, {{2016, 8, 10}, 11.525133314865732`}, {{
            2016, 8, 10}, 11.525133314865732`}, {{2016, 8, 11}, 
            11.52338514478404}, {{2016, 8, 11}, 11.52338514478404}, {{2016, 8,
             11}, 11.52338514478404}, {{2016, 8, 12}, 11.521636974702348`}, {{
            2016, 8, 12}, 11.521636974702348`}, {{2016, 8, 12}, 
            11.521636974702348`}, {{2016, 8, 15}, 11.51639246445727}, {{2016, 
            8, 15}, 11.51639246445727}, {{2016, 8, 15}, 11.51639246445727}, {{
            2016, 8, 16}, 11.514644294375579`}, {{2016, 8, 16}, 
            11.514644294375579`}, {{2016, 8, 16}, 11.514644294375579`}, {{
            2016, 8, 17}, 11.512896124293887`}, {{2016, 8, 17}, 
            11.512896124293887`}, {{2016, 8, 17}, 11.512896124293887`}, {{
            2016, 8, 18}, 11.511147954212195`}, {{2016, 8, 18}, 
            11.511147954212195`}, {{2016, 8, 18}, 11.511147954212195`}, {{
            2016, 8, 19}, 11.509399784130503`}, {{2016, 8, 19}, 
            11.509399784130503`}, {{2016, 8, 19}, 11.509399784130503`}, {{
            2016, 8, 22}, 11.504155273885425`}, {{2016, 8, 22}, 
            11.504155273885425`}, {{2016, 8, 22}, 11.504155273885425`}, {{
            2016, 8, 23}, 11.502407103803733`}, {{2016, 8, 23}, 
            11.502407103803733`}, {{2016, 8, 23}, 11.502407103803733`}, {{
            2016, 8, 24}, 11.500658933722042`}, {{2016, 8, 24}, 
            11.500658933722042`}, {{2016, 8, 24}, 11.500658933722042`}, {{
            2016, 8, 25}, 11.49891076364035}, {{2016, 8, 25}, 
            11.49891076364035}, {{2016, 8, 25}, 11.49891076364035}, {{2016, 8,
             26}, 11.497162593558658`}, {{2016, 8, 26}, 
            11.497162593558658`}, {{2016, 8, 26}, 11.497162593558658`}, {{
            2016, 8, 29}, 11.49191808331358}, {{2016, 8, 29}, 
            11.49191808331358}, {{2016, 8, 29}, 11.49191808331358}, {{2016, 8,
             30}, 11.490169913231888`}, {{2016, 8, 30}, 
            11.490169913231888`}, {{2016, 8, 30}, 11.490169913231888`}, {{
            2016, 8, 31}, 11.488421743150196`}, {{2016, 8, 31}, 
            11.488421743150196`}, {{2016, 8, 31}, 11.488421743150196`}, {{
            2016, 9, 1}, 11.486673573068504`}, {{2016, 9, 1}, 
            11.486673573068504`}, {{2016, 9, 1}, 11.486673573068504`}, {{2016,
             9, 2}, 11.484925402986812`}, {{2016, 9, 2}, 
            11.484925402986812`}, {{2016, 9, 2}, 11.484925402986812`}, {{2016,
             9, 6}, 11.477932722660043`}, {{2016, 9, 6}, 
            11.477932722660043`}, {{2016, 9, 6}, 11.477932722660043`}, {{2016,
             9, 7}, 11.476184552578351`}, {{2016, 9, 7}, 
            11.476184552578351`}, {{2016, 9, 7}, 11.476184552578351`}, {{2016,
             9, 8}, 11.474436382496659`}, {{2016, 9, 8}, 
            11.474436382496659`}, {{2016, 9, 8}, 11.474436382496659`}, {{2016,
             9, 9}, 11.472688212414967`}, {{2016, 9, 9}, 
            11.472688212414967`}, {{2016, 9, 9}, 11.472688212414967`}, {{2016,
             9, 12}, 11.46744370216989}, {{2016, 9, 12}, 
            11.46744370216989}, {{2016, 9, 12}, 11.46744370216989}, {{2016, 9,
             13}, 11.465695532088198`}, {{2016, 9, 13}, 
            11.465695532088198`}, {{2016, 9, 13}, 11.465695532088198`}, {{
            2016, 9, 14}, 11.463947362006506`}, {{2016, 9, 14}, 
            11.463947362006506`}, {{2016, 9, 14}, 11.463947362006506`}, {{
            2016, 9, 15}, 11.462199191924814`}, {{2016, 9, 15}, 
            11.462199191924814`}, {{2016, 9, 15}, 11.462199191924814`}, {{
            2016, 9, 16}, 11.460451021843122`}, {{2016, 9, 16}, 
            11.460451021843122`}, {{2016, 9, 16}, 11.460451021843122`}, {{
            2016, 9, 19}, 11.455206511598044`}, {{2016, 9, 19}, 
            11.455206511598044`}, {{2016, 9, 19}, 11.455206511598044`}, {{
            2016, 9, 20}, 11.453458341516352`}, {{2016, 9, 20}, 
            11.453458341516352`}, {{2016, 9, 20}, 11.453458341516352`}, {{
            2016, 9, 21}, 11.45171017143466}, {{2016, 9, 21}, 
            11.45171017143466}, {{2016, 9, 21}, 11.45171017143466}, {{2016, 9,
             22}, 11.449962001352969`}, {{2016, 9, 22}, 
            11.449962001352969`}, {{2016, 9, 22}, 11.449962001352969`}, {{
            2016, 9, 23}, 11.448213831271277`}, {{2016, 9, 23}, 
            11.448213831271277`}, {{2016, 9, 23}, 11.448213831271277`}, {{
            2016, 9, 26}, 11.4429693210262}, {{2016, 9, 26}, 
            11.4429693210262}, {{2016, 9, 26}, 11.4429693210262}, {{2016, 9, 
            27}, 11.441221150944507`}, {{2016, 9, 27}, 
            11.441221150944507`}, {{2016, 9, 27}, 11.441221150944507`}, {{
            2016, 9, 28}, 11.439472980862815`}, {{2016, 9, 28}, 
            11.439472980862815`}, {{2016, 9, 28}, 11.439472980862815`}, {{
            2016, 9, 29}, 11.437724810781123`}, {{2016, 9, 29}, 
            11.437724810781123`}, {{2016, 9, 29}, 11.437724810781123`}, {{
            2016, 9, 30}, 11.435976640699431`}, {{2016, 9, 30}, 
            11.435976640699431`}, {{2016, 9, 30}, 11.435976640699431`}, {{
            2016, 10, 3}, 11.430732130454354`}, {{2016, 10, 3}, 
            11.430732130454354`}, {{2016, 10, 3}, 11.430732130454354`}, {{
            2016, 10, 4}, 11.428983960372662`}, {{2016, 10, 4}, 
            11.428983960372662`}, {{2016, 10, 4}, 11.428983960372662`}, {{
            2016, 10, 5}, 11.42723579029097}, {{2016, 10, 5}, 
            11.42723579029097}, {{2016, 10, 5}, 11.42723579029097}, {{2016, 
            10, 6}, 11.425487620209278`}, {{2016, 10, 6}, 
            11.425487620209278`}, {{2016, 10, 6}, 11.425487620209278`}, {{
            2016, 10, 7}, 11.423739450127586`}, {{2016, 10, 7}, 
            11.423739450127586`}, {{2016, 10, 7}, 11.423739450127586`}, {{
            2016, 10, 11}, 11.416746769800817`}, {{2016, 10, 11}, 
            11.416746769800817`}, {{2016, 10, 11}, 11.416746769800817`}, {{
            2016, 10, 12}, 11.414998599719125`}, {{2016, 10, 12}, 
            11.414998599719125`}, {{2016, 10, 12}, 11.414998599719125`}, {{
            2016, 10, 13}, 11.413250429637433`}, {{2016, 10, 13}, 
            11.413250429637433`}, {{2016, 10, 13}, 11.413250429637433`}, {{
            2016, 10, 14}, 11.411502259555741`}, {{2016, 10, 14}, 
            11.411502259555741`}, {{2016, 10, 14}, 11.411502259555741`}, {{
            2016, 10, 17}, 11.406257749310663`}, {{2016, 10, 17}, 
            11.406257749310663`}, {{2016, 10, 17}, 11.406257749310663`}, {{
            2016, 10, 18}, 11.404509579228971`}, {{2016, 10, 18}, 
            11.404509579228971`}, {{2016, 10, 18}, 11.404509579228971`}, {{
            2016, 10, 19}, 11.40276140914728}, {{2016, 10, 19}, 
            11.40276140914728}, {{2016, 10, 19}, 11.40276140914728}, {{2016, 
            10, 20}, 11.401013239065588`}, {{2016, 10, 20}, 
            11.401013239065588`}, {{2016, 10, 20}, 11.401013239065588`}, {{
            2016, 10, 21}, 11.399265068983896`}, {{2016, 10, 21}, 
            11.399265068983896`}, {{2016, 10, 21}, 11.399265068983896`}, {{
            2016, 10, 24}, 11.394020558738818`}, {{2016, 10, 24}, 
            11.394020558738818`}, {{2016, 10, 24}, 11.394020558738818`}, {{
            2016, 10, 25}, 11.392272388657126`}, {{2016, 10, 25}, 
            11.392272388657126`}, {{2016, 10, 25}, 11.392272388657126`}, {{
            2016, 10, 26}, 11.390524218575434`}, {{2016, 10, 26}, 
            11.390524218575434`}, {{2016, 10, 26}, 11.390524218575434`}, {{
            2016, 10, 27}, 11.388776048493742`}, {{2016, 10, 27}, 
            11.388776048493742`}, {{2016, 10, 27}, 11.388776048493742`}, {{
            2016, 10, 28}, 11.38702787841205}, {{2016, 10, 28}, 
            11.38702787841205}, {{2016, 10, 28}, 11.38702787841205}, {{2016, 
            10, 31}, 11.381783368166973`}, {{2016, 10, 31}, 
            11.381783368166973`}, {{2016, 10, 31}, 11.381783368166973`}, {{
            2016, 11, 1}, 11.380035198085281`}, {{2016, 11, 1}, 
            11.380035198085281`}, {{2016, 11, 1}, 11.380035198085281`}, {{
            2016, 11, 2}, 11.378287028003589`}, {{2016, 11, 2}, 
            11.378287028003589`}, {{2016, 11, 2}, 11.378287028003589`}, {{
            2016, 11, 3}, 11.376538857921897`}, {{2016, 11, 3}, 
            11.376538857921897`}, {{2016, 11, 3}, 11.376538857921897`}, {{
            2016, 11, 4}, 11.374790687840205`}, {{2016, 11, 4}, 
            11.374790687840205`}, {{2016, 11, 4}, 11.374790687840205`}, {{
            2016, 11, 7}, 11.369546177595128`}, {{2016, 11, 7}, 
            11.369546177595128`}, {{2016, 11, 7}, 11.369546177595128`}, {{
            2016, 11, 8}, 11.367798007513436`}, {{2016, 11, 8}, 
            11.367798007513436`}, {{2016, 11, 8}, 11.367798007513436`}, {{
            2016, 11, 9}, 11.366049837431744`}, {{2016, 11, 9}, 
            11.366049837431744`}, {{2016, 11, 9}, 11.366049837431744`}, {{
            2016, 11, 10}, 11.364301667350052`}, {{2016, 11, 10}, 
            11.364301667350052`}, {{2016, 11, 10}, 11.364301667350052`}, {{
            2016, 11, 11}, 11.36255349726836}, {{2016, 11, 11}, 
            11.36255349726836}, {{2016, 11, 11}, 11.36255349726836}, {{2016, 
            11, 14}, 11.357308987023282`}, {{2016, 11, 14}, 
            11.357308987023282`}, {{2016, 11, 14}, 11.357308987023282`}, {{
            2016, 11, 15}, 11.35556081694159}, {{2016, 11, 15}, 
            11.35556081694159}, {{2016, 11, 15}, 11.35556081694159}, {{2016, 
            11, 16}, 11.353812646859899`}, {{2016, 11, 16}, 
            11.353812646859899`}, {{2016, 11, 16}, 11.353812646859899`}, {{
            2016, 11, 17}, 11.352064476778207`}, {{2016, 11, 17}, 
            11.352064476778207`}, {{2016, 11, 17}, 11.352064476778207`}, {{
            2016, 11, 18}, 11.350316306696515`}, {{2016, 11, 18}, 
            11.350316306696515`}, {{2016, 11, 18}, 11.350316306696515`}, {{
            2016, 11, 21}, 11.345071796451437`}, {{2016, 11, 21}, 
            11.345071796451437`}, {{2016, 11, 21}, 11.345071796451437`}, {{
            2016, 11, 22}, 11.343323626369745`}, {{2016, 11, 22}, 
            11.343323626369745`}, {{2016, 11, 22}, 11.343323626369745`}, {{
            2016, 11, 23}, 11.341575456288053`}, {{2016, 11, 23}, 
            11.341575456288053`}, {{2016, 11, 23}, 11.341575456288053`}, {{
            2016, 11, 24}, 11.339827286206361`}, {{2016, 11, 24}, 
            11.339827286206361`}, {{2016, 11, 24}, 11.339827286206361`}, {{
            2016, 11, 25}, 11.33807911612467}, {{2016, 11, 25}, 
            11.33807911612467}, {{2016, 11, 25}, 11.33807911612467}, {{2016, 
            11, 28}, 11.332834605879592`}, {{2016, 11, 28}, 
            11.332834605879592`}, {{2016, 11, 28}, 11.332834605879592`}, {{
            2016, 11, 29}, 11.3310864357979}, {{2016, 11, 29}, 
            11.3310864357979}, {{2016, 11, 29}, 11.3310864357979}, {{2016, 11,
             30}, 11.329338265716208`}, {{2016, 11, 30}, 
            11.329338265716208`}, {{2016, 11, 30}, 11.329338265716208`}, {{
            2016, 12, 1}, 11.327590095634516`}, {{2016, 12, 1}, 
            11.327590095634516`}, {{2016, 12, 1}, 11.327590095634516`}, {{
            2016, 12, 2}, 11.325841925552824`}, {{2016, 12, 2}, 
            11.325841925552824`}, {{2016, 12, 2}, 11.325841925552824`}, {{
            2016, 12, 5}, 11.320597415307747`}, {{2016, 12, 5}, 
            11.320597415307747`}, {{2016, 12, 5}, 11.320597415307747`}, {{
            2016, 12, 6}, 11.318849245226055`}, {{2016, 12, 6}, 
            11.318849245226055`}, {{2016, 12, 6}, 11.318849245226055`}, {{
            2016, 12, 7}, 11.317101075144363`}, {{2016, 12, 7}, 
            11.317101075144363`}, {{2016, 12, 7}, 11.317101075144363`}, {{
            2016, 12, 8}, 11.31535290506267}, {{2016, 12, 8}, 
            11.31535290506267}, {{2016, 12, 8}, 11.31535290506267}, {{2016, 
            12, 9}, 11.313604734980979`}, {{2016, 12, 9}, 
            11.313604734980979`}, {{2016, 12, 9}, 11.313604734980979`}, {{
            2016, 12, 12}, 11.308360224735901`}, {{2016, 12, 12}, 
            11.308360224735901`}, {{2016, 12, 12}, 11.308360224735901`}, {{
            2016, 12, 13}, 11.30661205465421}, {{2016, 12, 13}, 
            11.30661205465421}, {{2016, 12, 13}, 11.30661205465421}, {{2016, 
            12, 14}, 11.304863884572518`}, {{2016, 12, 14}, 
            11.304863884572518`}, {{2016, 12, 14}, 11.304863884572518`}, {{
            2016, 12, 15}, 11.303115714490826`}, {{2016, 12, 15}, 
            11.303115714490826`}, {{2016, 12, 15}, 11.303115714490826`}, {{
            2016, 12, 16}, 11.301367544409134`}, {{2016, 12, 16}, 
            11.301367544409134`}, {{2016, 12, 16}, 11.301367544409134`}, {{
            2016, 12, 19}, 11.296123034164056`}, {{2016, 12, 19}, 
            11.296123034164056`}, {{2016, 12, 19}, 11.296123034164056`}, {{
            2016, 12, 20}, 11.294374864082364`}, {{2016, 12, 20}, 
            11.294374864082364`}, {{2016, 12, 20}, 11.294374864082364`}, {{
            2016, 12, 21}, 11.292626694000672`}, {{2016, 12, 21}, 
            11.292626694000672`}, {{2016, 12, 21}, 11.292626694000672`}, {{
            2016, 12, 22}, 11.29087852391898}, {{2016, 12, 22}, 
            11.29087852391898}, {{2016, 12, 22}, 11.29087852391898}, {{2016, 
            12, 23}, 11.289130353837288`}, {{2016, 12, 23}, 
            11.289130353837288`}, {{2016, 12, 23}, 11.289130353837288`}, {{
            2016, 12, 28}, 11.280389503428827`}, {{2016, 12, 28}, 
            11.280389503428827`}, {{2016, 12, 28}, 11.280389503428827`}, {{
            2016, 12, 29}, 11.278641333347135`}, {{2016, 12, 29}, 
            11.278641333347135`}, {{2016, 12, 29}, 11.278641333347135`}, {{
            2016, 12, 30}, 11.276893163265443`}, {{2016, 12, 30}, 
            11.276893163265443`}, {{2016, 12, 30}, 11.276893163265443`}, {{
            2017, 1, 3}, 11.269900482938674`}, {{2017, 1, 3}, 
            11.269900482938674`}, {{2017, 1, 3}, 11.269900482938674`}, {{2017,
             1, 4}, 11.268152312856982`}, {{2017, 1, 4}, 
            11.268152312856982`}, {{2017, 1, 4}, 11.268152312856982`}, {{2017,
             1, 5}, 11.26640414277529}, {{2017, 1, 5}, 11.26640414277529}, {{
            2017, 1, 5}, 11.26640414277529}, {{2017, 1, 6}, 
            11.264655972693598`}, {{2017, 1, 6}, 11.264655972693598`}, {{2017,
             1, 6}, 11.264655972693598`}, {{2017, 1, 9}, 
            11.259411462448522`}, {{2017, 1, 9}, 11.259411462448522`}, {{2017,
             1, 9}, 11.259411462448522`}, {{2017, 1, 10}, 
            11.257663292366829`}, {{2017, 1, 10}, 11.257663292366829`}, {{
            2017, 1, 10}, 11.257663292366829`}, {{2017, 1, 11}, 
            11.255915122285137`}, {{2017, 1, 11}, 11.255915122285137`}, {{
            2017, 1, 11}, 11.255915122285137`}, {{2017, 1, 12}, 
            11.254166952203445`}, {{2017, 1, 12}, 11.254166952203445`}, {{
            2017, 1, 12}, 11.254166952203445`}, {{2017, 1, 13}, 
            11.252418782121753`}, {{2017, 1, 13}, 11.252418782121753`}, {{
            2017, 1, 13}, 11.252418782121753`}, {{2017, 1, 16}, 
            11.247174271876677`}, {{2017, 1, 16}, 11.247174271876677`}, {{
            2017, 1, 16}, 11.247174271876677`}, {{2017, 1, 17}, 
            11.245426101794983`}, {{2017, 1, 17}, 11.245426101794983`}, {{
            2017, 1, 17}, 11.245426101794983`}, {{2017, 1, 18}, 
            11.243677931713291`}, {{2017, 1, 18}, 11.243677931713291`}, {{
            2017, 1, 18}, 11.243677931713291`}, {{2017, 1, 19}, 
            11.2419297616316}, {{2017, 1, 19}, 11.2419297616316}, {{2017, 1, 
            19}, 11.2419297616316}, {{2017, 1, 20}, 11.240181591549907`}, {{
            2017, 1, 20}, 11.240181591549907`}, {{2017, 1, 20}, 
            11.240181591549907`}, {{2017, 1, 23}, 11.234937081304832`}, {{
            2017, 1, 23}, 11.234937081304832`}, {{2017, 1, 23}, 
            11.234937081304832`}, {{2017, 1, 24}, 11.233188911223138`}, {{
            2017, 1, 24}, 11.233188911223138`}, {{2017, 1, 24}, 
            11.233188911223138`}, {{2017, 1, 25}, 11.231440741141446`}, {{
            2017, 1, 25}, 11.231440741141446`}, {{2017, 1, 25}, 
            11.231440741141446`}, {{2017, 1, 26}, 11.229692571059754`}, {{
            2017, 1, 26}, 11.229692571059754`}, {{2017, 1, 26}, 
            11.229692571059754`}, {{2017, 1, 27}, 11.227944400978062`}, {{
            2017, 1, 27}, 11.227944400978062`}, {{2017, 1, 27}, 
            11.227944400978062`}, {{2017, 1, 30}, 11.222699890732986`}, {{
            2017, 1, 30}, 11.222699890732986`}, {{2017, 1, 30}, 
            11.222699890732986`}, {{2017, 1, 31}, 11.220951720651293`}, {{
            2017, 1, 31}, 11.220951720651293`}, {{2017, 1, 31}, 
            11.220951720651293`}, {{2017, 2, 1}, 11.2192035505696}, {{2017, 2,
             1}, 11.2192035505696}, {{2017, 2, 1}, 11.2192035505696}, {{2017, 
            2, 2}, 11.217455380487909`}, {{2017, 2, 2}, 
            11.217455380487909`}, {{2017, 2, 2}, 11.217455380487909`}, {{2017,
             2, 3}, 11.215707210406217`}, {{2017, 2, 3}, 
            11.215707210406217`}, {{2017, 2, 3}, 11.215707210406217`}, {{2017,
             2, 6}, 11.210462700161141`}, {{2017, 2, 6}, 
            11.210462700161141`}, {{2017, 2, 6}, 11.210462700161141`}, {{2017,
             2, 7}, 11.208714530079448`}, {{2017, 2, 7}, 
            11.208714530079448`}, {{2017, 2, 7}, 11.208714530079448`}, {{2017,
             2, 8}, 11.206966359997756`}, {{2017, 2, 8}, 
            11.206966359997756`}, {{2017, 2, 8}, 11.206966359997756`}, {{2017,
             2, 9}, 11.205218189916064`}, {{2017, 2, 9}, 
            11.205218189916064`}, {{2017, 2, 9}, 11.205218189916064`}, {{2017,
             2, 10}, 11.203470019834372`}, {{2017, 2, 10}, 
            11.203470019834372`}, {{2017, 2, 10}, 11.203470019834372`}, {{
            2017, 2, 13}, 11.198225509589296`}, {{2017, 2, 13}, 
            11.198225509589296`}, {{2017, 2, 13}, 11.198225509589296`}, {{
            2017, 2, 14}, 11.196477339507602`}, {{2017, 2, 14}, 
            11.196477339507602`}, {{2017, 2, 14}, 11.196477339507602`}, {{
            2017, 2, 15}, 11.19472916942591}, {{2017, 2, 15}, 
            11.19472916942591}, {{2017, 2, 15}, 11.19472916942591}, {{2017, 2,
             16}, 11.192980999344218`}, {{2017, 2, 16}, 
            11.192980999344218`}, {{2017, 2, 16}, 11.192980999344218`}, {{
            2017, 2, 17}, 11.191232829262526`}, {{2017, 2, 17}, 
            11.191232829262526`}, {{2017, 2, 17}, 11.191232829262526`}, {{
            2017, 2, 21}, 11.184240148935757`}, {{2017, 2, 21}, 
            11.184240148935757`}, {{2017, 2, 21}, 11.184240148935757`}, {{
            2017, 2, 22}, 11.182491978854065`}, {{2017, 2, 22}, 
            11.182491978854065`}, {{2017, 2, 22}, 11.182491978854065`}, {{
            2017, 2, 23}, 11.180743808772373`}, {{2017, 2, 23}, 
            11.180743808772373`}, {{2017, 2, 23}, 11.180743808772373`}, {{
            2017, 2, 24}, 11.178995638690681`}, {{2017, 2, 24}, 
            11.178995638690681`}, {{2017, 2, 24}, 11.178995638690681`}, {{
            2017, 2, 27}, 11.173751128445605`}, {{2017, 2, 27}, 
            11.173751128445605`}, {{2017, 2, 27}, 11.173751128445605`}, {{
            2017, 2, 28}, 11.172002958363912`}, {{2017, 2, 28}, 
            11.172002958363912`}, {{2017, 2, 28}, 11.172002958363912`}, {{
            2017, 3, 1}, 11.17025478828222}, {{2017, 3, 1}, 
            11.17025478828222}, {{2017, 3, 1}, 11.17025478828222}, {{2017, 3, 
            2}, 11.168506618200528`}, {{2017, 3, 2}, 11.168506618200528`}, {{
            2017, 3, 2}, 11.168506618200528`}, {{2017, 3, 3}, 
            11.166758448118836`}, {{2017, 3, 3}, 11.166758448118836`}, {{2017,
             3, 3}, 11.166758448118836`}, {{2017, 3, 6}, 
            11.16151393787376}, {{2017, 3, 6}, 11.16151393787376}, {{2017, 3, 
            6}, 11.16151393787376}, {{2017, 3, 7}, 11.159765767792068`}, {{
            2017, 3, 7}, 11.159765767792068`}, {{2017, 3, 7}, 
            11.159765767792068`}, {{2017, 3, 8}, 11.158017597710375`}, {{2017,
             3, 8}, 11.158017597710375`}, {{2017, 3, 8}, 
            11.158017597710375`}, {{2017, 3, 9}, 11.156269427628683`}, {{2017,
             3, 9}, 11.156269427628683`}, {{2017, 3, 9}, 
            11.156269427628683`}, {{2017, 3, 10}, 11.15452125754699}, {{2017, 
            3, 10}, 11.15452125754699}, {{2017, 3, 10}, 11.15452125754699}, {{
            2017, 3, 13}, 11.149276747301915`}, {{2017, 3, 13}, 
            11.149276747301915`}, {{2017, 3, 13}, 11.149276747301915`}, {{
            2017, 3, 14}, 11.147528577220223`}, {{2017, 3, 14}, 
            11.147528577220223`}, {{2017, 3, 14}, 11.147528577220223`}, {{
            2017, 3, 15}, 11.14578040713853}, {{2017, 3, 15}, 
            11.14578040713853}, {{2017, 3, 15}, 11.14578040713853}, {{2017, 3,
             16}, 11.144032237056837`}, {{2017, 3, 16}, 
            11.144032237056837`}, {{2017, 3, 16}, 11.144032237056837`}, {{
            2017, 3, 17}, 11.142284066975146`}, {{2017, 3, 17}, 
            11.142284066975146`}, {{2017, 3, 17}, 11.142284066975146`}, {{
            2017, 3, 20}, 11.13703955673007}, {{2017, 3, 20}, 
            11.13703955673007}, {{2017, 3, 20}, 11.13703955673007}, {{2017, 3,
             21}, 11.135291386648378`}, {{2017, 3, 21}, 
            11.135291386648378`}, {{2017, 3, 21}, 11.135291386648378`}, {{
            2017, 3, 22}, 11.133543216566684`}, {{2017, 3, 22}, 
            11.133543216566684`}, {{2017, 3, 22}, 11.133543216566684`}, {{
            2017, 3, 23}, 11.131795046484992`}, {{2017, 3, 23}, 
            11.131795046484992`}, {{2017, 3, 23}, 11.131795046484992`}, {{
            2017, 3, 24}, 11.1300468764033}, {{2017, 3, 24}, 
            11.1300468764033}, {{2017, 3, 24}, 11.1300468764033}, {{2017, 3, 
            27}, 11.124802366158224`}, {{2017, 3, 27}, 
            11.124802366158224`}, {{2017, 3, 27}, 11.124802366158224`}, {{
            2017, 3, 28}, 11.123054196076533`}, {{2017, 3, 28}, 
            11.123054196076533`}, {{2017, 3, 28}, 11.123054196076533`}, {{
            2017, 3, 29}, 11.121306025994839`}, {{2017, 3, 29}, 
            11.121306025994839`}, {{2017, 3, 29}, 11.121306025994839`}, {{
            2017, 3, 30}, 11.119557855913147`}, {{2017, 3, 30}, 
            11.119557855913147`}, {{2017, 3, 30}, 11.119557855913147`}, {{
            2017, 3, 31}, 11.117809685831455`}, {{2017, 3, 31}, 
            11.117809685831455`}, {{2017, 3, 31}, 11.117809685831455`}, {{
            2017, 4, 3}, 11.11256517558638}, {{2017, 4, 3}, 
            11.11256517558638}, {{2017, 4, 3}, 11.11256517558638}, {{2017, 4, 
            4}, 11.110817005504687`}, {{2017, 4, 4}, 11.110817005504687`}, {{
            2017, 4, 4}, 11.110817005504687`}, {{2017, 4, 5}, 
            11.109068835422994`}, {{2017, 4, 5}, 11.109068835422994`}, {{2017,
             4, 5}, 11.109068835422994`}, {{2017, 4, 6}, 
            11.107320665341302`}, {{2017, 4, 6}, 11.107320665341302`}, {{2017,
             4, 6}, 11.107320665341302`}, {{2017, 4, 7}, 
            11.10557249525961}, {{2017, 4, 7}, 11.10557249525961}, {{2017, 4, 
            7}, 11.10557249525961}, {{2017, 4, 10}, 11.100327985014534`}, {{
            2017, 4, 10}, 11.100327985014534`}, {{2017, 4, 10}, 
            11.100327985014534`}, {{2017, 4, 11}, 11.098579814932842`}, {{
            2017, 4, 11}, 11.098579814932842`}, {{2017, 4, 11}, 
            11.098579814932842`}, {{2017, 4, 12}, 11.09683164485115}, {{2017, 
            4, 12}, 11.09683164485115}, {{2017, 4, 12}, 11.09683164485115}, {{
            2017, 4, 13}, 11.095083474769456`}, {{2017, 4, 13}, 
            11.095083474769456`}, {{2017, 4, 13}, 11.095083474769456`}, {{
            2017, 4, 17}, 11.088090794442689`}, {{2017, 4, 17}, 
            11.088090794442689`}, {{2017, 4, 17}, 11.088090794442689`}, {{
            2017, 4, 18}, 11.086342624360997`}, {{2017, 4, 18}, 
            11.086342624360997`}, {{2017, 4, 18}, 11.086342624360997`}, {{
            2017, 4, 19}, 11.084594454279305`}, {{2017, 4, 19}, 
            11.084594454279305`}, {{2017, 4, 19}, 11.084594454279305`}, {{
            2017, 4, 20}, 11.082846284197611`}, {{2017, 4, 20}, 
            11.082846284197611`}, {{2017, 4, 20}, 11.082846284197611`}, {{
            2017, 4, 21}, 11.08109811411592}, {{2017, 4, 21}, 
            11.08109811411592}, {{2017, 4, 21}, 11.08109811411592}, {{2017, 4,
             24}, 11.075853603870844`}, {{2017, 4, 24}, 
            11.075853603870844`}, {{2017, 4, 24}, 11.075853603870844`}, {{
            2017, 4, 25}, 11.074105433789152`}, {{2017, 4, 25}, 
            11.074105433789152`}, {{2017, 4, 25}, 11.074105433789152`}, {{
            2017, 4, 26}, 11.07235726370746}, {{2017, 4, 26}, 
            11.07235726370746}, {{2017, 4, 26}, 11.07235726370746}, {{2017, 4,
             27}, 11.070609093625766`}, {{2017, 4, 27}, 
            11.070609093625766`}, {{2017, 4, 27}, 11.070609093625766`}, {{
            2017, 4, 28}, 11.068860923544074`}, {{2017, 4, 28}, 
            11.068860923544074`}, {{2017, 4, 28}, 11.068860923544074`}, {{
            2017, 5, 1}, 11.063616413298998`}, {{2017, 5, 1}, 
            11.063616413298998`}, {{2017, 5, 1}, 11.063616413298998`}, {{2017,
             5, 2}, 11.061868243217306`}, {{2017, 5, 2}, 
            11.061868243217306`}, {{2017, 5, 2}, 11.061868243217306`}, {{2017,
             5, 3}, 11.060120073135614`}, {{2017, 5, 3}, 
            11.060120073135614`}, {{2017, 5, 3}, 11.060120073135614`}, {{2017,
             5, 4}, 11.05837190305392}, {{2017, 5, 4}, 11.05837190305392}, {{
            2017, 5, 4}, 11.05837190305392}, {{2017, 5, 5}, 
            11.056623732972229`}, {{2017, 5, 5}, 11.056623732972229`}, {{2017,
             5, 5}, 11.056623732972229`}, {{2017, 5, 8}, 
            11.051379222727153`}, {{2017, 5, 8}, 11.051379222727153`}, {{2017,
             5, 8}, 11.051379222727153`}, {{2017, 5, 9}, 
            11.049631052645461`}, {{2017, 5, 9}, 11.049631052645461`}, {{2017,
             5, 9}, 11.049631052645461`}, {{2017, 5, 10}, 
            11.04788288256377}, {{2017, 5, 10}, 11.04788288256377}, {{2017, 5,
             10}, 11.04788288256377}, {{2017, 5, 11}, 11.046134712482075`}, {{
            2017, 5, 11}, 11.046134712482075`}, {{2017, 5, 11}, 
            11.046134712482075`}, {{2017, 5, 12}, 11.044386542400384`}, {{
            2017, 5, 12}, 11.044386542400384`}, {{2017, 5, 12}, 
            11.044386542400384`}, {{2017, 5, 15}, 11.039142032155308`}, {{
            2017, 5, 15}, 11.039142032155308`}, {{2017, 5, 15}, 
            11.039142032155308`}, {{2017, 5, 16}, 11.037393862073616`}, {{
            2017, 5, 16}, 11.037393862073616`}, {{2017, 5, 16}, 
            11.037393862073616`}, {{2017, 5, 17}, 11.035645691991924`}, {{
            2017, 5, 17}, 11.035645691991924`}, {{2017, 5, 17}, 
            11.035645691991924`}, {{2017, 5, 18}, 11.03389752191023}, {{2017, 
            5, 18}, 11.03389752191023}, {{2017, 5, 18}, 11.03389752191023}, {{
            2017, 5, 19}, 11.032149351828538`}, {{2017, 5, 19}, 
            11.032149351828538`}, {{2017, 5, 19}, 11.032149351828538`}, {{
            2017, 5, 23}, 11.02515667150177}, {{2017, 5, 23}, 
            11.02515667150177}, {{2017, 5, 23}, 11.02515667150177}, {{2017, 5,
             24}, 11.023408501420079`}, {{2017, 5, 24}, 
            11.023408501420079`}, {{2017, 5, 24}, 11.023408501420079`}, {{
            2017, 5, 25}, 11.021660331338385`}, {{2017, 5, 25}, 
            11.021660331338385`}, {{2017, 5, 25}, 11.021660331338385`}, {{
            2017, 5, 26}, 11.019912161256693`}, {{2017, 5, 26}, 
            11.019912161256693`}, {{2017, 5, 26}, 11.019912161256693`}, {{
            2017, 5, 29}, 11.014667651011617`}, {{2017, 5, 29}, 
            11.014667651011617`}, {{2017, 5, 29}, 11.014667651011617`}, {{
            2017, 5, 30}, 11.012919480929925`}, {{2017, 5, 30}, 
            11.012919480929925`}, {{2017, 5, 30}, 11.012919480929925`}, {{
            2017, 5, 31}, 11.011171310848233`}, {{2017, 5, 31}, 
            11.011171310848233`}, {{2017, 5, 31}, 11.011171310848233`}, {{
            2017, 6, 1}, 11.00942314076654}, {{2017, 6, 1}, 
            11.00942314076654}, {{2017, 6, 1}, 11.00942314076654}, {{2017, 6, 
            2}, 11.007674970684848`}, {{2017, 6, 2}, 11.007674970684848`}, {{
            2017, 6, 2}, 11.007674970684848`}, {{2017, 6, 5}, 
            11.002430460439772`}, {{2017, 6, 5}, 11.002430460439772`}, {{2017,
             6, 5}, 11.002430460439772`}, {{2017, 6, 6}, 
            11.00068229035808}, {{2017, 6, 6}, 11.00068229035808}, {{2017, 6, 
            6}, 11.00068229035808}, {{2017, 6, 7}, 10.998934120276388`}, {{
            2017, 6, 7}, 10.998934120276388`}, {{2017, 6, 7}, 
            10.998934120276388`}, {{2017, 6, 8}, 10.997185950194694`}, {{2017,
             6, 8}, 10.997185950194694`}, {{2017, 6, 8}, 
            10.997185950194694`}, {{2017, 6, 9}, 10.995437780113003`}, {{2017,
             6, 9}, 10.995437780113003`}, {{2017, 6, 9}, 
            10.995437780113003`}, {{2017, 6, 12}, 10.990193269867927`}, {{
            2017, 6, 12}, 10.990193269867927`}, {{2017, 6, 12}, 
            10.990193269867927`}, {{2017, 6, 13}, 10.988445099786235`}, {{
            2017, 6, 13}, 10.988445099786235`}, {{2017, 6, 13}, 
            10.988445099786235`}, {{2017, 6, 14}, 10.986696929704543`}, {{
            2017, 6, 14}, 10.986696929704543`}, {{2017, 6, 14}, 
            10.986696929704543`}, {{2017, 6, 15}, 10.98494875962285}, {{2017, 
            6, 15}, 10.98494875962285}, {{2017, 6, 15}, 10.98494875962285}, {{
            2017, 6, 16}, 10.983200589541157`}, {{2017, 6, 16}, 
            10.983200589541157`}, {{2017, 6, 16}, 10.983200589541157`}, {{
            2017, 6, 19}, 10.977956079296082`}, {{2017, 6, 19}, 
            10.977956079296082`}, {{2017, 6, 19}, 10.977956079296082`}}, 
         "lm" -> (ReplaceAll[
           Normal[
            
            LinearModelFit[$CellContext`secondsFormData$91648, \
$CellContext`x, $CellContext`x]], Pattern[$CellContext`a, 
              Blank[]] + Pattern[$CellContext`b, 
               
               Blank[]] $CellContext`x -> $CellContext`a + $CellContext`b #]& \
), "nweeks" -> 52, "len" -> 251, "vMin" -> 0, "vMax" -> 
         12.87313175201416}, $CellContext`o$$, $CellContext`h$$], 
      "Specifications" :> {{{$CellContext`o$$, -0.5, 
          "offset from linear fit"}, -12.87313175201416, 12.87313175201416, 
         Appearance -> 
         "Labeled"}, {{$CellContext`h$$, 10.9399995803833, "price horizon"}, 
         0, 17.16417566935221, Appearance -> "Labeled"}}, "Options" :> {}, 
      "DefaultOptions" :> {}],
     ImageSizeCache->{405., {182., 188.}},
     SingleEvaluation->True],
    Deinitialization:>None,
    DynamicModuleValues:>{},
    SynchronousInitialization->True,
    UndoTrackedVariables:>{Typeset`show$$, Typeset`bookmarkMode$$},
    UnsavedVariables:>{Typeset`initDone$$},
    UntrackedVariables:>{Typeset`size$$}], "Manipulate",
   Deployed->True,
   StripOnInput->False],
  Manipulate`InterpretManipulate[1]]], "Output",
 CellChangeTimes->{3.70691593607578*^9, 3.7069159838824577`*^9, 
  3.706916072658453*^9},ExpressionUUID->"5468df09-1184-414e-ad91-\
862a810e829e"]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[{
 RowBox[{
  RowBox[{"Clear", "[", 
   RowBox[{"tfii", ",", " ", "nw"}], "]"}], "\[IndentingNewLine]", 
  RowBox[{"(*", 
   RowBox[{
    RowBox[{"https", ":"}], "//", 
    RowBox[{
     RowBox[{
      RowBox[{"www", ".", "dividendearner", ".", "com"}], "/", "top"}], "-", 
     "canadian", "-", "dividend", "-", 
     RowBox[{"stocks", "/"}]}]}], "*)"}]}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{
   RowBox[{"nw", " ", "=", " ", "52"}], " ", ";"}], "\[IndentingNewLine]", 
  RowBox[{"(*", " ", 
   RowBox[{"TSX", " ", "\[Rule]", " ", "TO"}], " ", 
   "*)"}]}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{
   RowBox[{"tfii", " ", "=", " ", 
    RowBox[{"fDataAndLinearModel", "[", " ", 
     RowBox[{"\"\<TO:TFII\>\"", ",", " ", "nw"}], " ", "]"}]}], " ", ";"}], 
  "\[IndentingNewLine]", "\[IndentingNewLine]", "\[IndentingNewLine]", 
  "\[IndentingNewLine]"}], "\[IndentingNewLine]", 
 RowBox[{"manipulatePlotDistAgainstLinearModel", "[", " ", "tfii", " ", 
  "]"}]}], "Input",
 CellChangeTimes->{{3.706916122812904*^9, 3.706916135010483*^9}, 
   3.706916284630143*^9},ExpressionUUID->"d7221e33-c8fe-4693-95a8-\
a14df5e2f0fb"],

Cell[BoxData[
 TagBox[
  StyleBox[
   DynamicModuleBox[{$CellContext`h$$ = 
    27.440000534057617`, $CellContext`o$$ = -0.5, Typeset`show$$ = True, 
    Typeset`bookmarkList$$ = {}, Typeset`bookmarkMode$$ = "Menu", 
    Typeset`animator$$, Typeset`animvar$$ = 1, Typeset`name$$ = 
    "\"untitled\"", Typeset`specs$$ = {{{
       Hold[$CellContext`o$$], -0.5, 
       "offset from linear fit"}, -9.172918319702148, 9.172918319702148}, {{
       Hold[$CellContext`h$$], 27.440000534057617`, "price horizon"}, 
      26.440000534057617`, 38.670558293660484`}}, Typeset`size$$ = {
    360., {123., 127.}}, Typeset`update$$ = 0, Typeset`initDone$$, 
    Typeset`skipInitDone$$ = True, $CellContext`o$122863$$ = 
    0, $CellContext`h$122864$$ = 0}, 
    DynamicBox[Manipulate`ManipulateBoxes[
     1, StandardForm, 
      "Variables" :> {$CellContext`h$$ = 
        27.440000534057617`, $CellContext`o$$ = -0.5}, "ControllerVariables" :> {
        Hold[$CellContext`o$$, $CellContext`o$122863$$, 0], 
        Hold[$CellContext`h$$, $CellContext`h$122864$$, 0]}, 
      "OtherVariables" :> {
       Typeset`show$$, Typeset`bookmarkList$$, Typeset`bookmarkMode$$, 
        Typeset`animator$$, Typeset`animvar$$, Typeset`name$$, 
        Typeset`specs$$, Typeset`size$$, Typeset`update$$, Typeset`initDone$$,
         Typeset`skipInitDone$$}, 
      "Body" :> $CellContext`plotDistAgainstLinearModel[{
        "company" -> Missing["NotAvailable"], "symbol" -> "TO:TFII", 
         "dMin" -> {{{2016, 12, 13}, -1.545105332498494}, {{2016, 12, 
            14}, -2.231612284919237}, {{2016, 12, 15}, -2.033513829625136}, {{
            2016, 12, 16}, -1.1893544307275121`}, {{2016, 12, 
            19}, -0.9727484264174748}, {{2016, 12, 
            20}, -0.9933198624807957}, {{2016, 12, 
            21}, -1.3617649862882502`}, {{2016, 12, 
            22}, -1.2332427944218836`}, {{2016, 12, 
            23}, -1.422774801774267}, {{2016, 12, 
            28}, -1.1180964291123487`}, {{2016, 12, 
            29}, -0.651634021181529}, {{2016, 12, 
            30}, -0.5131707282409437}, {{2017, 1, 3}, -0.5159238492032046}, {{
            2017, 1, 4}, -0.8644905855594942}, {{2017, 1, 
            5}, -0.5172985023356986}, {{2017, 1, 6}, -1.1640486798540977`}, {{
            2017, 1, 9}, -1.504056597663201}, {{2017, 1, 10}, 
            0.025924334437547714`}, {{2017, 1, 11}, -1.1575537483542888`}, {{
            2017, 1, 12}, -0.37302951181018784`}, {{2017, 1, 
            13}, -0.22462511779538374`}, {{2017, 1, 16}, 
            0.04167494779395753}, {{2017, 1, 17}, -0.4062875405154571}, {{
            2017, 1, 18}, -0.4268551618815124}, {{2017, 1, 
            19}, -0.27845458256397393`}, {{2017, 1, 
            20}, -0.3288378777581471}, {{2017, 1, 
            23}, -0.5296932687117817}, {{2017, 1, 
            24}, -0.09304653460908696}, {{2017, 1, 25}, 
            0.31378071096822424`}, {{2017, 1, 26}, 0.26339741577404396`}, {{
            2017, 1, 27}, 0.6304678864490043}, {{2017, 1, 30}, 
            1.204888679577408}, {{2017, 1, 31}, 1.174379957137134}, {{2017, 2,
             1}, 1.1935691106734225`}, {{2017, 2, 2}, 0.9841549011726016}, {{
            2017, 2, 3}, 0.9437088923553745}, {{2017, 2, 6}, 
            1.1106093912943251`}, {{2017, 2, 7}, 1.0502888097231917`}, {{2017,
             2, 8}, 0.6719025848415114}, {{2017, 2, 9}, 
            0.8700010401356195}, {{2017, 2, 10}, 1.2867693867871424`}, {{2017,
             2, 13}, 1.4437325993491328`}, {{2017, 2, 14}, 
            1.8306814574752721`}, {{2017, 2, 15}, 2.048658300220545}, {{2017, 
            2, 16}, 1.5708801380830053`}, {{2017, 2, 
            17}, -0.9544196152410578}, {{2017, 2, 21}, 
            0.34489215942656415`}, {{2017, 2, 22}, 0.4634770649159776}, {{
            2017, 2, 23}, 0.5820581557081255}, {{2017, 2, 24}, 
            0.49191808561160855`}, {{2017, 2, 27}, 0.41033683406227084`}, {{
            2017, 2, 28}, 0.4494043750497312}, {{2017, 3, 1}, 
            0.6673850324922768}, {{2017, 3, 2}, 0.08027001732739336}, {{2017, 
            3, 3}, -0.029752254917568166`}, {{2017, 3, 
            6}, -0.13120998656944494`}, {{2017, 3, 
            7}, -0.10207973195893061`}, {{2017, 3, 
            8}, -0.05307108989725151}, {{2017, 3, 
            9}, -0.44139841585315054`}, {{2017, 3, 
            10}, -0.33275270408931945`}, {{2017, 3, 
            13}, -0.3149382036855286}, {{2017, 3, 
            14}, -0.3653253135769745}, {{2017, 3, 
            15}, -0.34613425269204967`}, {{2017, 3, 
            16}, -0.843792709629394}, {{2017, 3, 17}, -0.9836344703997426}, {{
            2017, 3, 20}, -0.9161240013680221}, {{2017, 3, 
            21}, -0.9565700101852492}, {{2017, 3, 22}, -1.086470669881379}, {{
            2017, 3, 23}, -0.8883703072386453}, {{2017, 3, 
            24}, -0.3722100233312631}, {{2017, 3, 
            27}, -0.4836088560573515}, {{2017, 3, 
            28}, -0.2855084934146177}, {{2017, 3, 
            29}, -0.06934553921914954}, {{2017, 3, 30}, 
            0.3596622636091311}, {{2017, 3, 31}, 0.20867014273136064`}, {{
            2017, 4, 3}, 0.1656974422074171}, {{2017, 4, 4}, 
            0.1847053976235884}, {{2017, 4, 5}, 0.08371442115499761}, {{2017, 
            4, 6}, -0.03727701307726505}, {{2017, 4, 7}, 
            0.0017314001025781067`}, {{2017, 4, 10}, 0.03875671593605645}, {{
            2017, 4, 11}, -0.40223441312042496`}, {{2017, 4, 
            12}, -0.6332245503556209}, {{2017, 4, 13}, -0.744217663054684}, {{
            2017, 4, 17}, -0.6981827133382339}, {{2017, 4, 
            18}, -0.41917262169159386`}, {{2017, 4, 
            19}, -0.530165734390657}, {{2017, 4, 
            20}, -0.41115549015612274`}, {{2017, 4, 
            21}, -0.07214783991572915}, {{2017, 4, 24}, 
            0.4548791543845425}, {{2017, 4, 25}, 0.5838877201522799}, {{2017, 
            4, 26}, -0.19710356149209574`}, {{2017, 4, 
            27}, -0.27809598754564746`}, {{2017, 4, 
            28}, -0.22908734548396836`}, {{2017, 5, 
            1}, -0.29206050377158377`}, {{2017, 5, 
            2}, -0.6330531587069714}, {{2017, 5, 3}, -1.0840445166452923`}, {{
            2017, 5, 4}, -1.115035798289668}, {{2017, 5, 
            5}, -1.2560257829369696`}, {{2017, 5, 8}, -0.8589998567519288}, {{
            2017, 5, 9}, -0.6299928168631013}, {{2017, 5, 
            10}, -0.42098432738930924`}, {{2017, 5, 
            11}, -0.35197522756395827`}, {{2017, 5, 
            12}, -0.962966432914385}, {{2017, 5, 15}, -0.7959400489656723}, {{
            2017, 5, 16}, -0.5369323224313369}, {{2017, 5, 
            17}, -1.587922154490748}, {{2017, 5, 18}, -1.498914504250358}, {{
            2017, 5, 19}, -1.2799057858947336`}, {{2017, 5, 
            23}, -0.843871446529846}, {{2017, 5, 24}, -0.7948628044681669}, {{
            2017, 5, 25}, -0.6958530179973046}, {{2017, 5, 
            26}, -0.5968451388750751}, {{2017, 5, 
            29}, -0.32981837345663934`}, {{2017, 5, 
            30}, -0.2508109520980817}, {{2017, 5, 
            31}, -0.5118017759787818}, {{2017, 6, 1}, -0.6227929813292121}, {{
            2017, 6, 2}, -0.6737847207372596}, {{2017, 6, 
            5}, -0.43675864196432457`}, {{2017, 6, 
            6}, -0.4277509154299892}, {{2017, 6, 
            7}, -0.30874067119545856`}, {{2017, 6, 8}, 
            0.08026812345411116}, {{2017, 6, 9}, 0.5792756211066141}, {{2017, 
            6, 12}, 0.7463020050553268}, {{2017, 6, 13}, 
            0.8353096552957169}, {{2017, 6, 14}, 0.21431822106345422`}, {{
            2017, 6, 15}, -0.46667267911119126`}, {{2017, 6, 
            16}, -0.6276631215221684}, {{2017, 6, 19}, -0.1806379582765807}}, 
         "dMax" -> {{{2016, 12, 13}, -1.2270435038852128`}, {{2016, 12, 
            14}, -1.2277327378000962`}, {{2016, 12, 
            15}, -1.0395715688829483`}, {{2016, 12, 
            16}, -0.7321362605614965}, {{2016, 12, 
            19}, -0.48571839712059983`}, {{2016, 12, 
            20}, -0.5361016923147801}, {{2016, 12, 
            21}, -0.9542485067960627}, {{2016, 12, 
            22}, -1.0742080654179773`}, {{2016, 12, 
            23}, -1.0550189118816888`}, {{2016, 12, 
            28}, -0.5117960751084425}, {{2016, 12, 
            29}, -0.43296412982410715`}, {{2016, 12, 
            30}, -0.5131707282409437}, {{2017, 1, 3}, -0.5159238492032046}, {{
            2017, 1, 4}, -0.2681275179325411}, {{2017, 1, 5}, 
            0.1784603172443795}, {{2017, 1, 6}, -0.41859579899472266`}, {{
            2017, 1, 9}, -0.6492668637764822}, {{2017, 1, 10}, 
            0.025924334437547714`}, {{2017, 1, 11}, -0.2530699531882732}, {{
            2017, 1, 12}, 0.06430645620739028}, {{2017, 1, 13}, 
            0.023856632692897506`}, {{2017, 1, 16}, 0.25039992337989503`}, {{
            2017, 1, 17}, 0.12049926368376163`}, {{2017, 1, 
            18}, -0.10879333326823115`}, {{2017, 1, 19}, 
            0.04954834712352607}, {{2017, 1, 20}, 0.0786786017340404}, {{2017,
             1, 23}, -0.09235730069420356}, {{2017, 1, 24}, 
            0.4536224717385693}, {{2017, 1, 25}, 0.7610539653627555}, {{2017, 
            1, 26}, 0.8001253210474815}, {{2017, 1, 27}, 
            1.6840453095447074`}, {{2017, 1, 30}, 1.6223424454465487`}, {{
            2017, 1, 31}, 1.5421396617269778`}, {{2017, 2, 1}, 
            1.5513915288863132`}, {{2017, 2, 2}, 1.640156945850336}, {{2017, 
            2, 3}, 1.3214058833221713`}, {{2017, 2, 6}, 1.557886460386122}, {{
            2017, 2, 7}, 1.4180446996157698`}, {{2017, 2, 8}, 
            1.0992974517848708`}, {{2017, 2, 9}, 1.297395907078979}, {{2017, 
            2, 10}, 1.5451922383496424`}, {{2017, 2, 13}, 
            1.990401605696789}, {{2017, 2, 14}, 2.1885038756881627`}, {{2017, 
            2, 15}, 2.5058764703865606`}, {{2017, 2, 16}, 
            2.435607158346677}, {{2017, 2, 17}, 0.9837689376153875}, {{2017, 
            2, 21}, 1.0704666528347673`}, {{2017, 2, 22}, 
            0.8709897297108995}, {{2017, 2, 23}, 0.8802415968702348}, {{2017, 
            2, 24}, 0.7205214486487179}, {{2017, 2, 27}, 
            0.8874295769821927}, {{2017, 2, 28}, 0.9165560168954343}, {{2017, 
            3, 1}, 1.1742934492403236`}, {{2017, 3, 2}, 
            0.8356639992609871}, {{2017, 3, 3}, 0.38770151095157246`}, {{2017,
             3, 6}, 0.3856414386014535}, {{2017, 3, 7}, 
            0.32531322763579595`}, {{2017, 3, 8}, 0.24511044391622505`}, {{
            2017, 3, 9}, 0.03569623441540415}, {{2017, 3, 10}, 
            0.035003185803258674`}, {{2017, 3, 13}, 0.23173080266212764`}, {{
            2017, 3, 14}, 0.11176742934294737`}, {{2017, 3, 
            15}, -0.1274662686832606}, {{2017, 3, 
            16}, -0.10827711514697214`}, {{2017, 3, 
            17}, -0.37733030169857074`}, {{2017, 3, 
            20}, -0.49866832815024864`}, {{2017, 3, 
            21}, -0.38008342266083517`}, {{2017, 3, 
            22}, -0.7783480349936838}, {{2017, 3, 
            23}, -0.043521674426145296`}, {{2017, 3, 24}, 
            0.02536726243533849}, {{2017, 3, 27}, 0.1723931886203829}, {{2017,
             3, 28}, 0.2810369930355776}, {{2017, 3, 29}, 
            0.5306529349019442}, {{2017, 3, 30}, 0.7596618821394046}, {{2017, 
            3, 31}, 0.628670219025306}, {{2017, 4, 3}, 0.6056960689164015}, {{
            2017, 4, 4}, 0.5547062368569868}, {{2017, 4, 5}, 
            0.493714268567107}, {{2017, 4, 6}, 0.30272313951062557`}, {{2017, 
            4, 7}, 0.26173162898441404`}, {{2017, 4, 10}, 
            0.6587575551694549}, {{2017, 4, 11}, 0.7377668838766454}, {{2017, 
            4, 12}, -0.07322508441323805}, {{2017, 4, 
            13}, -0.1742160608818324}, {{2017, 4, 
            17}, -0.1481815689290542}, {{2017, 4, 
            18}, -0.11917338463104699`}, {{2017, 4, 19}, 
            0.0098351811366868}, {{2017, 4, 20}, 0.08884450984387726}, {{2017,
             4, 21}, 0.20785284672977866`}, {{2017, 4, 24}, 
            0.7348779336814175}, {{2017, 4, 25}, 0.9438864231552095}, {{2017, 
            4, 26}, 0.8328952178047793}, {{2017, 4, 
            27}, -0.0680949957243584}, {{2017, 4, 28}, 
            0.41091204416446914`}, {{2017, 5, 1}, 0.3679393436405256}, {{2017,
             5, 2}, 0.11694684129302857`}, {{2017, 5, 
            3}, -0.47404390629372983`}, {{2017, 5, 
            4}, -0.8250348827623242}, {{2017, 5, 5}, -0.8460259355248603}, {{
            2017, 5, 8}, -0.4389997804579835}, {{2017, 5, 
            9}, -0.2799924353933747}, {{2017, 5, 10}, -0.1909828778043483}, {{
            2017, 5, 11}, -0.0819747698002864}, {{2017, 5, 
            12}, -0.1029658225628225}, {{2017, 5, 
            15}, -0.14594043043539884`}, {{2017, 5, 
            16}, -0.02693209354950099}, {{2017, 5, 
            17}, -0.4079237566635996}, {{2017, 5, 
            18}, -0.4189145805443033}, {{2017, 5, 
            19}, -0.7499050992492258}, {{2017, 5, 23}, -0.343871446529846}, {{
            2017, 5, 24}, -0.41486173635293255`}, {{2017, 5, 
            25}, -0.1958530179973046}, {{2017, 5, 26}, -0.106845367756911}, {{
            2017, 5, 29}, -0.09981883122031121}, {{2017, 5, 30}, 
            0.3091885138443011}, {{2017, 5, 31}, 0.14819807143332753`}, {{
            2017, 6, 1}, -0.18279244727159494`}, {{2017, 6, 
            2}, -0.3737854836767127}, {{2017, 6, 5}, 0.03324067139016762}, {{
            2017, 6, 6}, -0.047749847314754845`}, {{2017, 6, 7}, 
            0.4112586421590336}, {{2017, 6, 8}, 0.8302681234541112}, {{2017, 
            6, 9}, 0.9492764603400126}, {{2017, 6, 12}, 
            1.3863013947037643`}, {{2017, 6, 13}, 1.3853107997048966`}, {{
            2017, 6, 14}, 0.9843186788271261}, {{2017, 6, 15}, 
            0.15332816012220718`}, {{2017, 6, 16}, -0.3176636555797856}, {{
            2017, 6, 19}, 0.6093629572507631}}, 
         "dClose" -> {{{2016, 12, 13}, -1.2866786662387284`}, {{2016, 12, 
            14}, -2.092459758063768}, {{2016, 12, 
            15}, -1.1886613821153702`}, {{2016, 12, 
            16}, -0.8215909114404027}, {{2016, 12, 
            19}, -0.6646276988784123}, {{2016, 12, 
            20}, -0.7945283585745457}, {{2016, 12, 
            21}, -1.1232167074796564`}, {{2016, 12, 
            22}, -1.1835411037480554`}, {{2016, 12, 
            23}, -1.1544108491375482`}, {{2016, 12, 
            28}, -0.7105799496201612}, {{2016, 12, 
            29}, -0.5621793703026228}, {{2016, 12, 
            30}, -0.5131707282409437}, {{2017, 1, 3}, -0.5159238492032046}, {{
            2017, 1, 4}, -0.546428756946213}, {{2017, 1, 
            5}, -0.49742011488452675`}, {{2017, 1, 
            6}, -0.9056258282915977}, {{2017, 1, 9}, -1.3847824582589041`}, {{
            2017, 1, 10}, 0.025924334437547714`}, {{2017, 1, 
            11}, -0.27294452594217944`}, {{2017, 1, 
            12}, -0.11460666024768784`}, {{2017, 1, 
            13}, -0.07553530456296187}, {{2017, 1, 16}, 
            0.1112512112216919}, {{2017, 1, 17}, -0.3466523781619415}, {{2017,
             1, 18}, -0.2479458601236999}, {{2017, 1, 
            19}, -0.1492393420854583}, {{2017, 1, 
            20}, -0.2791400017815846}, {{2017, 1, 
            23}, -0.20169033902428168`}, {{2017, 1, 24}, 
            0.41386569683622554`}, {{2017, 1, 25}, 0.7610539653627555}, {{
            2017, 1, 26}, 0.6112749182154502}, {{2017, 1, 27}, 
            1.6343436188708793`}, {{2017, 1, 30}, 1.4732526322141268`}, {{
            2017, 1, 31}, 1.273775709090259}, {{2017, 2, 1}, 
            1.491752551835532}, {{2017, 2, 2}, 1.1233074280280704`}, {{2017, 
            2, 3}, 1.0431008296112338`}, {{2017, 2, 6}, 
            1.3491576701029189`}, {{2017, 2, 7}, 1.119865073150926}, {{2017, 
            2, 8}, 0.9502038238551833}, {{2017, 2, 9}, 1.148306093846557}, {{
            2017, 2, 10}, 1.2867693867871424`}, {{2017, 2, 13}, 
            1.761794427962414}, {{2017, 2, 14}, 1.9698339843307409`}, {{2017, 
            2, 15}, 2.386598516284998}, {{2017, 2, 16}, 
            1.5907585255341772`}, {{2017, 2, 17}, 0.8048558211603094}, {{2017,
             2, 21}, 0.8418632897976579}, {{2017, 2, 22}, 
            0.8709897297108995}, {{2017, 2, 23}, 0.8504259230421098}, {{2017, 
            2, 24}, 0.5813727364905148}, {{2017, 2, 27}, 
            0.8277905999314115}, {{2017, 2, 28}, 0.5587374133798093}, {{2017, 
            3, 1}, 0.786655357199308}, {{2017, 3, 2}, 0.139905179680909}, {{
            2017, 3, 3}, 0.2386155124164162}, {{2017, 3, 6}, 
            0.027819020388562876`}, {{2017, 3, 7}, 0.18616451547759283`}, {{
            2017, 3, 8}, -0.013312407646274949`}, {{2017, 3, 
            9}, -0.3022458889976818}, {{2017, 3, 
            10}, -0.09420823997799133}, {{2017, 3, 13}, 
            0.08263717473244014}, {{2017, 3, 14}, -0.3355058250515839}, {{
            2017, 3, 15}, -0.26662070288736217`}, {{2017, 3, 
            16}, -0.7642791598247065}, {{2017, 3, 
            17}, -0.9836344703997426}, {{2017, 3, 
            20}, -0.8167282494148971}, {{2017, 3, 
            21}, -0.9168113279342727}, {{2017, 3, 
            22}, -0.9175005618491525}, {{2017, 3, 
            23}, -0.32182291343981717`}, {{2017, 3, 24}, 
            0.0054869676355338015`}, {{2017, 3, 27}, 0.003423080588156324}, {{
            2017, 3, 28}, 0.18164505577971823`}, {{2017, 3, 29}, 
            0.40065377413534264`}, {{2017, 3, 30}, 0.6996624161970217}, {{
            2017, 3, 31}, 0.20867014273136064`}, {{2017, 4, 3}, 
            0.31569706073769055`}, {{2017, 4, 4}, 0.2947060079751509}, {{2017,
             4, 5}, 0.11371320045187261`}, {{2017, 4, 6}, 
            0.0327226817469537}, {{2017, 4, 7}, 0.10173178157230467`}, {{2017,
             4, 10}, 0.5987580892270721}, {{2017, 4, 
            11}, -0.2822335738870265}, {{2017, 4, 
            12}, -0.18322569476480055`}, {{2017, 4, 
            13}, -0.5042159845878871}, {{2017, 4, 
            17}, -0.18818248445639796`}, {{2017, 4, 
            18}, -0.23917422386444542`}, {{2017, 4, 
            19}, -0.42016512403909445`}, {{2017, 4, 
            20}, -0.06115701603502899}, {{2017, 4, 21}, 
            0.12785292302372397`}, {{2017, 4, 24}, 0.49487816256325345`}, {{
            2017, 4, 25}, 0.8738867283309908}, {{2017, 4, 26}, 
            0.03289598074423239}, {{2017, 4, 27}, -0.27809598754564746`}, {{
            2017, 4, 28}, 0.25091219675235976`}, {{2017, 5, 1}, 
            0.04793964881630686}, {{2017, 5, 2}, -0.5730517854159558}, {{2017,
             5, 3}, -1.0240431433542767`}, {{2017, 5, 
            4}, -1.0650346538804882`}, {{2017, 5, 
            5}, -1.0060257829369696`}, {{2017, 5, 8}, -0.7090002382216554}, {{
            2017, 5, 9}, -0.40999159615997627`}, {{2017, 5, 
            10}, -0.3809834118619655}, {{2017, 5, 
            11}, -0.26197507497606765`}, {{2017, 5, 
            12}, -0.8129668143841116}, {{2017, 5, 
            15}, -0.39594043043539884`}, {{2017, 5, 
            16}, -0.4769309491403213}, {{2017, 5, 
            17}, -1.4879236803696543`}, {{2017, 5, 
            18}, -0.8389146568382486}, {{2017, 5, 19}, -0.939905633306843}, {{
            2017, 5, 23}, -0.5338719805874632}, {{2017, 5, 
            24}, -0.5948620415287138}, {{2017, 5, 
            25}, -0.2258537046428124}, {{2017, 5, 
            26}, -0.4368452914629657}, {{2017, 5, 
            29}, -0.18981898380820184`}, {{2017, 5, 30}, 
            0.1891895819595355}, {{2017, 5, 31}, -0.2518015470969459}, {{2017,
             6, 1}, -0.5627935153868293}, {{2017, 6, 
            2}, -0.47378395779780647`}, {{2017, 6, 
            5}, -0.1367594049037777}, {{2017, 6, 
            6}, -0.32775053396026266`}, {{2017, 6, 7}, 
            0.24125856586508831`}, {{2017, 6, 8}, 0.7402679708662205}, {{2017,
             6, 9}, 0.6192765366339579}, {{2017, 6, 12}, 
            1.3263019287613815`}, {{2017, 6, 13}, 0.9153095790017716}, {{2017,
             6, 14}, 0.27431959435446984`}, {{2017, 6, 
            15}, -0.38667275540513657`}, {{2017, 6, 
            16}, -0.4276642659313481}, {{2017, 6, 19}, 0.5193628046628724}}, 
         "dZero" -> {{{2016, 12, 13}, 0}, {{2016, 12, 14}, 0}, {{2016, 12, 
            15}, 0}, {{2016, 12, 16}, 0}, {{2016, 12, 19}, 0}, {{2016, 12, 
            20}, 0}, {{2016, 12, 21}, 0}, {{2016, 12, 22}, 0}, {{2016, 12, 
            23}, 0}, {{2016, 12, 28}, 0}, {{2016, 12, 29}, 0}, {{2016, 12, 
            30}, 0}, {{2017, 1, 3}, 0}, {{2017, 1, 4}, 0}, {{2017, 1, 5}, 
            0}, {{2017, 1, 6}, 0}, {{2017, 1, 9}, 0}, {{2017, 1, 10}, 0}, {{
            2017, 1, 11}, 0}, {{2017, 1, 12}, 0}, {{2017, 1, 13}, 0}, {{2017, 
            1, 16}, 0}, {{2017, 1, 17}, 0}, {{2017, 1, 18}, 0}, {{2017, 1, 
            19}, 0}, {{2017, 1, 20}, 0}, {{2017, 1, 23}, 0}, {{2017, 1, 24}, 
            0}, {{2017, 1, 25}, 0}, {{2017, 1, 26}, 0}, {{2017, 1, 27}, 0}, {{
            2017, 1, 30}, 0}, {{2017, 1, 31}, 0}, {{2017, 2, 1}, 0}, {{2017, 
            2, 2}, 0}, {{2017, 2, 3}, 0}, {{2017, 2, 6}, 0}, {{2017, 2, 7}, 
            0}, {{2017, 2, 8}, 0}, {{2017, 2, 9}, 0}, {{2017, 2, 10}, 0}, {{
            2017, 2, 13}, 0}, {{2017, 2, 14}, 0}, {{2017, 2, 15}, 0}, {{2017, 
            2, 16}, 0}, {{2017, 2, 17}, 0}, {{2017, 2, 21}, 0}, {{2017, 2, 
            22}, 0}, {{2017, 2, 23}, 0}, {{2017, 2, 24}, 0}, {{2017, 2, 27}, 
            0}, {{2017, 2, 28}, 0}, {{2017, 3, 1}, 0}, {{2017, 3, 2}, 0}, {{
            2017, 3, 3}, 0}, {{2017, 3, 6}, 0}, {{2017, 3, 7}, 0}, {{2017, 3, 
            8}, 0}, {{2017, 3, 9}, 0}, {{2017, 3, 10}, 0}, {{2017, 3, 13}, 
            0}, {{2017, 3, 14}, 0}, {{2017, 3, 15}, 0}, {{2017, 3, 16}, 0}, {{
            2017, 3, 17}, 0}, {{2017, 3, 20}, 0}, {{2017, 3, 21}, 0}, {{2017, 
            3, 22}, 0}, {{2017, 3, 23}, 0}, {{2017, 3, 24}, 0}, {{2017, 3, 
            27}, 0}, {{2017, 3, 28}, 0}, {{2017, 3, 29}, 0}, {{2017, 3, 30}, 
            0}, {{2017, 3, 31}, 0}, {{2017, 4, 3}, 0}, {{2017, 4, 4}, 0}, {{
            2017, 4, 5}, 0}, {{2017, 4, 6}, 0}, {{2017, 4, 7}, 0}, {{2017, 4, 
            10}, 0}, {{2017, 4, 11}, 0}, {{2017, 4, 12}, 0}, {{2017, 4, 13}, 
            0}, {{2017, 4, 17}, 0}, {{2017, 4, 18}, 0}, {{2017, 4, 19}, 0}, {{
            2017, 4, 20}, 0}, {{2017, 4, 21}, 0}, {{2017, 4, 24}, 0}, {{2017, 
            4, 25}, 0}, {{2017, 4, 26}, 0}, {{2017, 4, 27}, 0}, {{2017, 4, 
            28}, 0}, {{2017, 5, 1}, 0}, {{2017, 5, 2}, 0}, {{2017, 5, 3}, 
            0}, {{2017, 5, 4}, 0}, {{2017, 5, 5}, 0}, {{2017, 5, 8}, 0}, {{
            2017, 5, 9}, 0}, {{2017, 5, 10}, 0}, {{2017, 5, 11}, 0}, {{2017, 
            5, 12}, 0}, {{2017, 5, 15}, 0}, {{2017, 5, 16}, 0}, {{2017, 5, 
            17}, 0}, {{2017, 5, 18}, 0}, {{2017, 5, 19}, 0}, {{2017, 5, 23}, 
            0}, {{2017, 5, 24}, 0}, {{2017, 5, 25}, 0}, {{2017, 5, 26}, 0}, {{
            2017, 5, 29}, 0}, {{2017, 5, 30}, 0}, {{2017, 5, 31}, 0}, {{2017, 
            6, 1}, 0}, {{2017, 6, 2}, 0}, {{2017, 6, 5}, 0}, {{2017, 6, 6}, 
            0}, {{2017, 6, 7}, 0}, {{2017, 6, 8}, 0}, {{2017, 6, 9}, 0}, {{
            2017, 6, 12}, 0}, {{2017, 6, 13}, 0}, {{2017, 6, 14}, 0}, {{2017, 
            6, 15}, 0}, {{2017, 6, 16}, 0}, {{2017, 6, 19}, 0}}, 
         "min" -> {{{2016, 12, 13}, 34.58915710449219}, {{2016, 12, 14}, 
            33.853641510009766`}, {{2016, 12, 15}, 34.00273132324219}, {{2016,
             12, 16}, 34.797882080078125`}, {{2016, 12, 19}, 
            34.867462158203125`}, {{2016, 12, 20}, 34.797882080078125`}, {{
            2016, 12, 21}, 34.380428314208984`}, {{2016, 12, 22}, 
            34.45994186401367}, {{2016, 12, 23}, 34.22140121459961}, {{2016, 
            12, 28}, 34.281036376953125`}, {{2016, 12, 29}, 
            34.698490142822266`}, {{2016, 12, 30}, 34.78794479370117}, {{2017,
             1, 3}, 34.58915710449219}, {{2017, 1, 4}, 34.19158172607422}, {{
            2017, 1, 5}, 34.48976516723633}, {{2017, 1, 6}, 
            33.79400634765625}, {{2017, 1, 9}, 33.30697250366211}, {{2017, 1, 
            10}, 34.78794479370117}, {{2017, 1, 11}, 33.555458068847656`}, {{
            2017, 1, 12}, 34.29097366333008}, {{2017, 1, 13}, 
            34.3903694152832}, {{2017, 1, 16}, 34.5096435546875}, {{2017, 1, 
            17}, 34.012672424316406`}, {{2017, 1, 18}, 33.94309616088867}, {{
            2017, 1, 19}, 34.04248809814453}, {{2017, 1, 20}, 
            33.94309616088867}, {{2017, 1, 23}, 33.59521484375}, {{2017, 1, 
            24}, 33.982852935791016`}, {{2017, 1, 25}, 34.34067153930664}, {{
            2017, 1, 26}, 34.24127960205078}, {{2017, 1, 27}, 
            34.55934143066406}, {{2017, 1, 30}, 34.98673629760742}, {{2017, 1,
             31}, 34.90721893310547}, {{2017, 2, 1}, 34.87739944458008}, {{
            2017, 2, 2}, 34.61897659301758}, {{2017, 2, 3}, 
            34.52952194213867}, {{2017, 2, 6}, 34.54939651489258}, {{2017, 2, 
            7}, 34.440067291259766`}, {{2017, 2, 8}, 34.012672424316406`}, {{
            2017, 2, 9}, 34.16176223754883}, {{2017, 2, 10}, 
            34.52952194213867}, {{2017, 2, 13}, 34.539459228515625`}, {{2017, 
            2, 14}, 34.87739944458008}, {{2017, 2, 15}, 35.04636764526367}, {{
            2017, 2, 16}, 34.51958084106445}, {{2017, 2, 17}, 
            31.94527244567871}, {{2017, 2, 21}, 33.04854965209961}, {{2017, 2,
             22}, 33.118125915527344`}, {{2017, 2, 23}, 33.18769836425781}, {{
            2017, 2, 24}, 33.04854965209961}, {{2017, 2, 27}, 
            32.819942474365234`}, {{2017, 2, 28}, 32.810001373291016`}, {{
            2017, 3, 1}, 32.978973388671875`}, {{2017, 3, 2}, 
            32.34284973144531}, {{2017, 3, 3}, 32.18381881713867}, {{2017, 3, 
            6}, 31.935335159301758`}, {{2017, 3, 7}, 31.915456771850586`}, {{
            2017, 3, 8}, 31.915456771850586`}, {{2017, 3, 9}, 
            31.478120803833008`}, {{2017, 3, 10}, 31.537757873535156`}, {{
            2017, 3, 13}, 31.408546447753906`}, {{2017, 3, 14}, 
            31.30915069580078}, {{2017, 3, 15}, 31.279333114624023`}, {{2017, 
            3, 16}, 30.732666015625}, {{2017, 3, 17}, 30.54381561279297}, {{
            2017, 3, 20}, 30.46430015563965}, {{2017, 3, 21}, 
            30.374845504760742`}, {{2017, 3, 22}, 30.19593620300293}, {{2017, 
            3, 23}, 30.345027923583984`}, {{2017, 3, 24}, 
            30.812179565429688`}, {{2017, 3, 27}, 30.553754806518555`}, {{
            2017, 3, 28}, 30.70284652709961}, {{2017, 3, 29}, 
            30.8700008392334}, {{2017, 3, 30}, 31.25}, {{2017, 3, 31}, 
            31.049999237060547`}, {{2017, 4, 3}, 30.860000610351562`}, {{2017,
             4, 4}, 30.829999923706055`}, {{2017, 4, 5}, 
            30.68000030517578}, {{2017, 4, 6}, 30.510000228881836`}, {{2017, 
            4, 7}, 30.5}, {{2017, 4, 10}, 30.389999389648438`}, {{2017, 4, 
            11}, 29.899999618530273`}, {{2017, 4, 12}, 29.6200008392334}, {{
            2017, 4, 13}, 29.459999084472656`}, {{2017, 4, 17}, 
            29.309999465942383`}, {{2017, 4, 18}, 29.540000915527344`}, {{
            2017, 4, 19}, 29.3799991607666}, {{2017, 4, 20}, 
            29.450000762939453`}, {{2017, 4, 21}, 29.739999771118164`}, {{
            2017, 4, 24}, 30.1200008392334}, {{2017, 4, 25}, 
            30.200000762939453`}, {{2017, 4, 26}, 29.3700008392334}, {{2017, 
            4, 27}, 29.239999771118164`}, {{2017, 4, 28}, 
            29.239999771118164`}, {{2017, 5, 1}, 29.030000686645508`}, {{2017,
             5, 2}, 28.639999389648438`}, {{2017, 5, 3}, 
            28.139999389648438`}, {{2017, 5, 4}, 28.059999465942383`}, {{2017,
             5, 5}, 27.8700008392334}, {{2017, 5, 8}, 28.1200008392334}, {{
            2017, 5, 9}, 28.299999237060547`}, {{2017, 5, 10}, 
            28.459999084472656`}, {{2017, 5, 11}, 28.479999542236328`}, {{
            2017, 5, 12}, 27.81999969482422}, {{2017, 5, 15}, 
            27.84000015258789}, {{2017, 5, 16}, 28.049999237060547`}, {{2017, 
            5, 17}, 26.950000762939453`}, {{2017, 5, 18}, 
            26.989999771118164`}, {{2017, 5, 19}, 27.15999984741211}, {{2017, 
            5, 23}, 27.399999618530273`}, {{2017, 5, 24}, 
            27.399999618530273`}, {{2017, 5, 25}, 27.450000762939453`}, {{
            2017, 5, 26}, 27.5}, {{2017, 5, 29}, 27.6200008392334}, {{2017, 5,
             30}, 27.649999618530273`}, {{2017, 5, 31}, 27.34000015258789}, {{
            2017, 6, 1}, 27.18000030517578}, {{2017, 6, 2}, 
            27.079999923706055`}, {{2017, 6, 5}, 27.170000076293945`}, {{2017,
             6, 6}, 27.1299991607666}, {{2017, 6, 7}, 27.200000762939453`}, {{
            2017, 6, 8}, 27.540000915527344`}, {{2017, 6, 9}, 
            27.989999771118164`}, {{2017, 6, 12}, 28.010000228881836`}, {{
            2017, 6, 13}, 28.049999237060547`}, {{2017, 6, 14}, 
            27.3799991607666}, {{2017, 6, 15}, 26.649999618530273`}, {{2017, 
            6, 16}, 26.440000534057617`}, {{2017, 6, 19}, 
            26.739999771118164`}}, 
         "max" -> {{{2016, 12, 13}, 34.90721893310547}, {{2016, 12, 14}, 
            34.857521057128906`}, {{2016, 12, 15}, 34.996673583984375`}, {{
            2016, 12, 16}, 35.25510025024414}, {{2016, 12, 19}, 
            35.3544921875}, {{2016, 12, 20}, 35.25510025024414}, {{2016, 12, 
            21}, 34.78794479370117}, {{2016, 12, 22}, 34.61897659301758}, {{
            2016, 12, 23}, 34.58915710449219}, {{2016, 12, 28}, 
            34.88733673095703}, {{2016, 12, 29}, 34.91716003417969}, {{2016, 
            12, 30}, 34.78794479370117}, {{2017, 1, 3}, 34.58915710449219}, {{
            2017, 1, 4}, 34.78794479370117}, {{2017, 1, 5}, 
            35.185523986816406`}, {{2017, 1, 6}, 34.539459228515625`}, {{2017,
             1, 9}, 34.16176223754883}, {{2017, 1, 10}, 34.78794479370117}, {{
            2017, 1, 11}, 34.45994186401367}, {{2017, 1, 12}, 
            34.728309631347656`}, {{2017, 1, 13}, 34.638851165771484`}, {{
            2017, 1, 16}, 34.71836853027344}, {{2017, 1, 17}, 
            34.539459228515625`}, {{2017, 1, 18}, 34.26115798950195}, {{2017, 
            1, 19}, 34.37049102783203}, {{2017, 1, 20}, 34.35061264038086}, {{
            2017, 1, 23}, 34.03255081176758}, {{2017, 1, 24}, 
            34.52952194213867}, {{2017, 1, 25}, 34.78794479370117}, {{2017, 1,
             26}, 34.77800750732422}, {{2017, 1, 27}, 35.612918853759766`}, {{
            2017, 1, 30}, 35.40419006347656}, {{2017, 1, 31}, 
            35.27497863769531}, {{2017, 2, 1}, 35.23522186279297}, {{2017, 2, 
            2}, 35.27497863769531}, {{2017, 2, 3}, 34.90721893310547}, {{2017,
             2, 6}, 34.996673583984375`}, {{2017, 2, 7}, 
            34.807823181152344`}, {{2017, 2, 8}, 34.440067291259766`}, {{2017,
             2, 9}, 34.58915710449219}, {{2017, 2, 10}, 34.78794479370117}, {{
            2017, 2, 13}, 35.08612823486328}, {{2017, 2, 14}, 
            35.23522186279297}, {{2017, 2, 15}, 35.50358581542969}, {{2017, 2,
             16}, 35.384307861328125`}, {{2017, 2, 17}, 
            33.883460998535156`}, {{2017, 2, 21}, 33.77412414550781}, {{2017, 
            2, 22}, 33.525638580322266`}, {{2017, 2, 23}, 
            33.48588180541992}, {{2017, 2, 24}, 33.27715301513672}, {{2017, 2,
             27}, 33.297035217285156`}, {{2017, 2, 28}, 33.27715301513672}, {{
            2017, 3, 1}, 33.48588180541992}, {{2017, 3, 2}, 
            33.098243713378906`}, {{2017, 3, 3}, 32.60127258300781}, {{2017, 
            3, 6}, 32.452186584472656`}, {{2017, 3, 7}, 32.34284973144531}, {{
            2017, 3, 8}, 32.21363830566406}, {{2017, 3, 9}, 
            31.955215454101562`}, {{2017, 3, 10}, 31.905513763427734`}, {{
            2017, 3, 13}, 31.955215454101562`}, {{2017, 3, 14}, 
            31.786243438720703`}, {{2017, 3, 15}, 31.498001098632812`}, {{
            2017, 3, 16}, 31.468181610107422`}, {{2017, 3, 17}, 
            31.15011978149414}, {{2017, 3, 20}, 30.881755828857422`}, {{2017, 
            3, 21}, 30.951332092285156`}, {{2017, 3, 22}, 
            30.504058837890625`}, {{2017, 3, 23}, 31.189876556396484`}, {{
            2017, 3, 24}, 31.20975685119629}, {{2017, 3, 27}, 
            31.20975685119629}, {{2017, 3, 28}, 31.269392013549805`}, {{2017, 
            3, 29}, 31.469999313354492`}, {{2017, 3, 30}, 
            31.649999618530273`}, {{2017, 3, 31}, 31.469999313354492`}, {{
            2017, 4, 3}, 31.299999237060547`}, {{2017, 4, 4}, 
            31.200000762939453`}, {{2017, 4, 5}, 31.09000015258789}, {{2017, 
            4, 6}, 30.850000381469727`}, {{2017, 4, 7}, 
            30.760000228881836`}, {{2017, 4, 10}, 31.010000228881836`}, {{
            2017, 4, 11}, 31.040000915527344`}, {{2017, 4, 12}, 
            30.18000030517578}, {{2017, 4, 13}, 30.030000686645508`}, {{2017, 
            4, 17}, 29.860000610351562`}, {{2017, 4, 18}, 
            29.84000015258789}, {{2017, 4, 19}, 29.920000076293945`}, {{2017, 
            4, 20}, 29.950000762939453`}, {{2017, 4, 21}, 
            30.020000457763672`}, {{2017, 4, 24}, 30.399999618530273`}, {{
            2017, 4, 25}, 30.559999465942383`}, {{2017, 4, 26}, 
            30.399999618530273`}, {{2017, 4, 27}, 29.450000762939453`}, {{
            2017, 4, 28}, 29.8799991607666}, {{2017, 5, 1}, 
            29.690000534057617`}, {{2017, 5, 2}, 29.389999389648438`}, {{2017,
             5, 3}, 28.75}, {{2017, 5, 4}, 28.350000381469727`}, {{2017, 5, 
            5}, 28.280000686645508`}, {{2017, 5, 8}, 28.540000915527344`}, {{
            2017, 5, 9}, 28.649999618530273`}, {{2017, 5, 10}, 
            28.690000534057617`}, {{2017, 5, 11}, 28.75}, {{2017, 5, 12}, 
            28.68000030517578}, {{2017, 5, 15}, 28.489999771118164`}, {{2017, 
            5, 16}, 28.559999465942383`}, {{2017, 5, 17}, 
            28.1299991607666}, {{2017, 5, 18}, 28.06999969482422}, {{2017, 5, 
            19}, 27.690000534057617`}, {{2017, 5, 23}, 
            27.899999618530273`}, {{2017, 5, 24}, 27.780000686645508`}, {{
            2017, 5, 25}, 27.950000762939453`}, {{2017, 5, 26}, 
            27.989999771118164`}, {{2017, 5, 29}, 27.850000381469727`}, {{
            2017, 5, 30}, 28.209999084472656`}, {{2017, 5, 31}, 28}, {{2017, 
            6, 1}, 27.6200008392334}, {{2017, 6, 2}, 27.3799991607666}, {{
            2017, 6, 5}, 27.639999389648438`}, {{2017, 6, 6}, 
            27.510000228881836`}, {{2017, 6, 7}, 27.920000076293945`}, {{2017,
             6, 8}, 28.290000915527344`}, {{2017, 6, 9}, 
            28.360000610351562`}, {{2017, 6, 12}, 28.649999618530273`}, {{
            2017, 6, 13}, 28.600000381469727`}, {{2017, 6, 14}, 
            28.149999618530273`}, {{2017, 6, 15}, 27.270000457763672`}, {{
            2017, 6, 16}, 26.75}, {{2017, 6, 19}, 27.530000686645508`}}, 
         "close" -> {{{2016, 12, 13}, 34.84758377075195}, {{2016, 12, 14}, 
            33.992794036865234`}, {{2016, 12, 15}, 34.84758377075195}, {{2016,
             12, 16}, 35.165645599365234`}, {{2016, 12, 19}, 
            35.17558288574219}, {{2016, 12, 20}, 34.996673583984375`}, {{2016,
             12, 21}, 34.61897659301758}, {{2016, 12, 22}, 
            34.5096435546875}, {{2016, 12, 23}, 34.48976516723633}, {{2016, 
            12, 28}, 34.68855285644531}, {{2016, 12, 29}, 
            34.78794479370117}, {{2016, 12, 30}, 34.78794479370117}, {{2017, 
            1, 3}, 34.58915710449219}, {{2017, 1, 4}, 34.5096435546875}, {{
            2017, 1, 5}, 34.5096435546875}, {{2017, 1, 6}, 
            34.05242919921875}, {{2017, 1, 9}, 33.426246643066406`}, {{2017, 
            1, 10}, 34.78794479370117}, {{2017, 1, 11}, 
            34.440067291259766`}, {{2017, 1, 12}, 34.54939651489258}, {{2017, 
            1, 13}, 34.539459228515625`}, {{2017, 1, 16}, 
            34.579219818115234`}, {{2017, 1, 17}, 34.07230758666992}, {{2017, 
            1, 18}, 34.122005462646484`}, {{2017, 1, 19}, 
            34.17170333862305}, {{2017, 1, 20}, 33.992794036865234`}, {{2017, 
            1, 23}, 33.9232177734375}, {{2017, 1, 24}, 34.48976516723633}, {{
            2017, 1, 25}, 34.78794479370117}, {{2017, 1, 26}, 
            34.58915710449219}, {{2017, 1, 27}, 35.56321716308594}, {{2017, 1,
             30}, 35.25510025024414}, {{2017, 1, 31}, 35.006614685058594`}, {{
            2017, 2, 1}, 35.17558288574219}, {{2017, 2, 2}, 
            34.75812911987305}, {{2017, 2, 3}, 34.62891387939453}, {{2017, 2, 
            6}, 34.78794479370117}, {{2017, 2, 7}, 34.5096435546875}, {{2017, 
            2, 8}, 34.29097366333008}, {{2017, 2, 9}, 34.440067291259766`}, {{
            2017, 2, 10}, 34.52952194213867}, {{2017, 2, 13}, 
            34.857521057128906`}, {{2017, 2, 14}, 35.01655197143555}, {{2017, 
            2, 15}, 35.384307861328125`}, {{2017, 2, 16}, 
            34.539459228515625`}, {{2017, 2, 17}, 33.70454788208008}, {{2017, 
            2, 21}, 33.5455207824707}, {{2017, 2, 22}, 
            33.525638580322266`}, {{2017, 2, 23}, 33.4560661315918}, {{2017, 
            2, 24}, 33.138004302978516`}, {{2017, 2, 27}, 
            33.237396240234375`}, {{2017, 2, 28}, 32.919334411621094`}, {{
            2017, 3, 1}, 33.098243713378906`}, {{2017, 3, 2}, 
            32.40248489379883}, {{2017, 3, 3}, 32.452186584472656`}, {{2017, 
            3, 6}, 32.094364166259766`}, {{2017, 3, 7}, 32.20370101928711}, {{
            2017, 3, 8}, 31.955215454101562`}, {{2017, 3, 9}, 
            31.617273330688477`}, {{2017, 3, 10}, 31.776302337646484`}, {{
            2017, 3, 13}, 31.806121826171875`}, {{2017, 3, 14}, 
            31.338970184326172`}, {{2017, 3, 15}, 31.35884666442871}, {{2017, 
            3, 16}, 30.812179565429688`}, {{2017, 3, 17}, 
            30.54381561279297}, {{2017, 3, 20}, 30.563695907592773`}, {{2017, 
            3, 21}, 30.41460418701172}, {{2017, 3, 22}, 
            30.364906311035156`}, {{2017, 3, 23}, 30.911575317382812`}, {{
            2017, 3, 24}, 31.189876556396484`}, {{2017, 3, 27}, 
            31.040786743164062`}, {{2017, 3, 28}, 31.170000076293945`}, {{
            2017, 3, 29}, 31.34000015258789}, {{2017, 3, 30}, 
            31.59000015258789}, {{2017, 3, 31}, 31.049999237060547`}, {{2017, 
            4, 3}, 31.010000228881836`}, {{2017, 4, 4}, 
            30.940000534057617`}, {{2017, 4, 5}, 30.709999084472656`}, {{2017,
             4, 6}, 30.579999923706055`}, {{2017, 4, 7}, 
            30.600000381469727`}, {{2017, 4, 10}, 30.950000762939453`}, {{
            2017, 4, 11}, 30.020000457763672`}, {{2017, 4, 12}, 
            30.06999969482422}, {{2017, 4, 13}, 29.700000762939453`}, {{2017, 
            4, 17}, 29.81999969482422}, {{2017, 4, 18}, 
            29.719999313354492`}, {{2017, 4, 19}, 29.489999771118164`}, {{
            2017, 4, 20}, 29.799999237060547`}, {{2017, 4, 21}, 
            29.940000534057617`}, {{2017, 4, 24}, 30.15999984741211}, {{2017, 
            4, 25}, 30.489999771118164`}, {{2017, 4, 26}, 
            29.600000381469727`}, {{2017, 4, 27}, 29.239999771118164`}, {{
            2017, 4, 28}, 29.719999313354492`}, {{2017, 5, 1}, 
            29.3700008392334}, {{2017, 5, 2}, 28.700000762939453`}, {{2017, 5,
             3}, 28.200000762939453`}, {{2017, 5, 4}, 28.110000610351562`}, {{
            2017, 5, 5}, 28.1200008392334}, {{2017, 5, 8}, 
            28.270000457763672`}, {{2017, 5, 9}, 28.520000457763672`}, {{2017,
             5, 10}, 28.5}, {{2017, 5, 11}, 28.56999969482422}, {{2017, 5, 
            12}, 27.969999313354492`}, {{2017, 5, 15}, 
            28.239999771118164`}, {{2017, 5, 16}, 28.110000610351562`}, {{
            2017, 5, 17}, 27.049999237060547`}, {{2017, 5, 18}, 
            27.649999618530273`}, {{2017, 5, 19}, 27.5}, {{2017, 5, 23}, 
            27.709999084472656`}, {{2017, 5, 24}, 27.600000381469727`}, {{
            2017, 5, 25}, 27.920000076293945`}, {{2017, 5, 26}, 
            27.65999984741211}, {{2017, 5, 29}, 27.760000228881836`}, {{2017, 
            5, 30}, 28.09000015258789}, {{2017, 5, 31}, 
            27.600000381469727`}, {{2017, 6, 1}, 27.239999771118164`}, {{2017,
             6, 2}, 27.280000686645508`}, {{2017, 6, 5}, 
            27.469999313354492`}, {{2017, 6, 6}, 27.229999542236328`}, {{2017,
             6, 7}, 27.75}, {{2017, 6, 8}, 28.200000762939453`}, {{2017, 6, 
            9}, 28.030000686645508`}, {{2017, 6, 12}, 28.59000015258789}, {{
            2017, 6, 13}, 28.1299991607666}, {{2017, 6, 14}, 
            27.440000534057617`}, {{2017, 6, 15}, 26.729999542236328`}, {{
            2017, 6, 16}, 26.639999389648438`}, {{2017, 6, 19}, 
            27.440000534057617`}}, 
         "model" -> {{{2016, 12, 13}, 36.13426243699068}, {{2016, 12, 13}, 
            36.13426243699068}, {{2016, 12, 13}, 36.13426243699068}, {{2016, 
            12, 14}, 36.085253794929}, {{2016, 12, 14}, 36.085253794929}, {{
            2016, 12, 14}, 36.085253794929}, {{2016, 12, 15}, 
            36.03624515286732}, {{2016, 12, 15}, 36.03624515286732}, {{2016, 
            12, 15}, 36.03624515286732}, {{2016, 12, 16}, 
            35.98723651080564}, {{2016, 12, 16}, 35.98723651080564}, {{2016, 
            12, 16}, 35.98723651080564}, {{2016, 12, 19}, 
            35.8402105846206}, {{2016, 12, 19}, 35.8402105846206}, {{2016, 12,
             19}, 35.8402105846206}, {{2016, 12, 20}, 35.79120194255892}, {{
            2016, 12, 20}, 35.79120194255892}, {{2016, 12, 20}, 
            35.79120194255892}, {{2016, 12, 21}, 35.742193300497235`}, {{2016,
             12, 21}, 35.742193300497235`}, {{2016, 12, 21}, 
            35.742193300497235`}, {{2016, 12, 22}, 35.693184658435555`}, {{
            2016, 12, 22}, 35.693184658435555`}, {{2016, 12, 22}, 
            35.693184658435555`}, {{2016, 12, 23}, 35.644176016373876`}, {{
            2016, 12, 23}, 35.644176016373876`}, {{2016, 12, 23}, 
            35.644176016373876`}, {{2016, 12, 28}, 35.399132806065474`}, {{
            2016, 12, 28}, 35.399132806065474`}, {{2016, 12, 28}, 
            35.399132806065474`}, {{2016, 12, 29}, 35.350124164003795`}, {{
            2016, 12, 29}, 35.350124164003795`}, {{2016, 12, 29}, 
            35.350124164003795`}, {{2016, 12, 30}, 35.301115521942116`}, {{
            2016, 12, 30}, 35.301115521942116`}, {{2016, 12, 30}, 
            35.301115521942116`}, {{2017, 1, 3}, 35.10508095369539}, {{2017, 
            1, 3}, 35.10508095369539}, {{2017, 1, 3}, 35.10508095369539}, {{
            2017, 1, 4}, 35.05607231163371}, {{2017, 1, 4}, 
            35.05607231163371}, {{2017, 1, 4}, 35.05607231163371}, {{2017, 1, 
            5}, 35.00706366957203}, {{2017, 1, 5}, 35.00706366957203}, {{2017,
             1, 5}, 35.00706366957203}, {{2017, 1, 6}, 34.95805502751035}, {{
            2017, 1, 6}, 34.95805502751035}, {{2017, 1, 6}, 
            34.95805502751035}, {{2017, 1, 9}, 34.81102910132531}, {{2017, 1, 
            9}, 34.81102910132531}, {{2017, 1, 9}, 34.81102910132531}, {{2017,
             1, 10}, 34.762020459263624`}, {{2017, 1, 10}, 
            34.762020459263624`}, {{2017, 1, 10}, 34.762020459263624`}, {{
            2017, 1, 11}, 34.713011817201945`}, {{2017, 1, 11}, 
            34.713011817201945`}, {{2017, 1, 11}, 34.713011817201945`}, {{
            2017, 1, 12}, 34.664003175140266`}, {{2017, 1, 12}, 
            34.664003175140266`}, {{2017, 1, 12}, 34.664003175140266`}, {{
            2017, 1, 13}, 34.61499453307859}, {{2017, 1, 13}, 
            34.61499453307859}, {{2017, 1, 13}, 34.61499453307859}, {{2017, 1,
             16}, 34.46796860689354}, {{2017, 1, 16}, 34.46796860689354}, {{
            2017, 1, 16}, 34.46796860689354}, {{2017, 1, 17}, 
            34.41895996483186}, {{2017, 1, 17}, 34.41895996483186}, {{2017, 1,
             17}, 34.41895996483186}, {{2017, 1, 18}, 34.369951322770184`}, {{
            2017, 1, 18}, 34.369951322770184`}, {{2017, 1, 18}, 
            34.369951322770184`}, {{2017, 1, 19}, 34.320942680708505`}, {{
            2017, 1, 19}, 34.320942680708505`}, {{2017, 1, 19}, 
            34.320942680708505`}, {{2017, 1, 20}, 34.27193403864682}, {{2017, 
            1, 20}, 34.27193403864682}, {{2017, 1, 20}, 34.27193403864682}, {{
            2017, 1, 23}, 34.12490811246178}, {{2017, 1, 23}, 
            34.12490811246178}, {{2017, 1, 23}, 34.12490811246178}, {{2017, 1,
             24}, 34.0758994704001}, {{2017, 1, 24}, 34.0758994704001}, {{
            2017, 1, 24}, 34.0758994704001}, {{2017, 1, 25}, 
            34.026890828338416`}, {{2017, 1, 25}, 34.026890828338416`}, {{
            2017, 1, 25}, 34.026890828338416`}, {{2017, 1, 26}, 
            33.97788218627674}, {{2017, 1, 26}, 33.97788218627674}, {{2017, 1,
             26}, 33.97788218627674}, {{2017, 1, 27}, 33.92887354421506}, {{
            2017, 1, 27}, 33.92887354421506}, {{2017, 1, 27}, 
            33.92887354421506}, {{2017, 1, 30}, 33.781847618030014`}, {{2017, 
            1, 30}, 33.781847618030014`}, {{2017, 1, 30}, 
            33.781847618030014`}, {{2017, 1, 31}, 33.732838975968335`}, {{
            2017, 1, 31}, 33.732838975968335`}, {{2017, 1, 31}, 
            33.732838975968335`}, {{2017, 2, 1}, 33.683830333906656`}, {{2017,
             2, 1}, 33.683830333906656`}, {{2017, 2, 1}, 
            33.683830333906656`}, {{2017, 2, 2}, 33.63482169184498}, {{2017, 
            2, 2}, 33.63482169184498}, {{2017, 2, 2}, 33.63482169184498}, {{
            2017, 2, 3}, 33.5858130497833}, {{2017, 2, 3}, 
            33.5858130497833}, {{2017, 2, 3}, 33.5858130497833}, {{2017, 2, 
            6}, 33.43878712359825}, {{2017, 2, 6}, 33.43878712359825}, {{2017,
             2, 6}, 33.43878712359825}, {{2017, 2, 7}, 
            33.389778481536574`}, {{2017, 2, 7}, 33.389778481536574`}, {{2017,
             2, 7}, 33.389778481536574`}, {{2017, 2, 8}, 
            33.340769839474895`}, {{2017, 2, 8}, 33.340769839474895`}, {{2017,
             2, 8}, 33.340769839474895`}, {{2017, 2, 9}, 
            33.29176119741321}, {{2017, 2, 9}, 33.29176119741321}, {{2017, 2, 
            9}, 33.29176119741321}, {{2017, 2, 10}, 33.24275255535153}, {{
            2017, 2, 10}, 33.24275255535153}, {{2017, 2, 10}, 
            33.24275255535153}, {{2017, 2, 13}, 33.09572662916649}, {{2017, 2,
             13}, 33.09572662916649}, {{2017, 2, 13}, 33.09572662916649}, {{
            2017, 2, 14}, 33.046717987104806`}, {{2017, 2, 14}, 
            33.046717987104806`}, {{2017, 2, 14}, 33.046717987104806`}, {{
            2017, 2, 15}, 32.99770934504313}, {{2017, 2, 15}, 
            32.99770934504313}, {{2017, 2, 15}, 32.99770934504313}, {{2017, 2,
             16}, 32.94870070298145}, {{2017, 2, 16}, 32.94870070298145}, {{
            2017, 2, 16}, 32.94870070298145}, {{2017, 2, 17}, 
            32.89969206091977}, {{2017, 2, 17}, 32.89969206091977}, {{2017, 2,
             17}, 32.89969206091977}, {{2017, 2, 21}, 32.703657492673045`}, {{
            2017, 2, 21}, 32.703657492673045`}, {{2017, 2, 21}, 
            32.703657492673045`}, {{2017, 2, 22}, 32.654648850611366`}, {{
            2017, 2, 22}, 32.654648850611366`}, {{2017, 2, 22}, 
            32.654648850611366`}, {{2017, 2, 23}, 32.60564020854969}, {{2017, 
            2, 23}, 32.60564020854969}, {{2017, 2, 23}, 32.60564020854969}, {{
            2017, 2, 24}, 32.556631566488}, {{2017, 2, 24}, 
            32.556631566488}, {{2017, 2, 24}, 32.556631566488}, {{2017, 2, 
            27}, 32.40960564030296}, {{2017, 2, 27}, 32.40960564030296}, {{
            2017, 2, 27}, 32.40960564030296}, {{2017, 2, 28}, 
            32.360596998241284`}, {{2017, 2, 28}, 32.360596998241284`}, {{
            2017, 2, 28}, 32.360596998241284`}, {{2017, 3, 1}, 
            32.3115883561796}, {{2017, 3, 1}, 32.3115883561796}, {{2017, 3, 
            1}, 32.3115883561796}, {{2017, 3, 2}, 32.26257971411792}, {{2017, 
            3, 2}, 32.26257971411792}, {{2017, 3, 2}, 32.26257971411792}, {{
            2017, 3, 3}, 32.21357107205624}, {{2017, 3, 3}, 
            32.21357107205624}, {{2017, 3, 3}, 32.21357107205624}, {{2017, 3, 
            6}, 32.0665451458712}, {{2017, 3, 6}, 32.0665451458712}, {{2017, 
            3, 6}, 32.0665451458712}, {{2017, 3, 7}, 32.01753650380952}, {{
            2017, 3, 7}, 32.01753650380952}, {{2017, 3, 7}, 
            32.01753650380952}, {{2017, 3, 8}, 31.968527861747837`}, {{2017, 
            3, 8}, 31.968527861747837`}, {{2017, 3, 8}, 
            31.968527861747837`}, {{2017, 3, 9}, 31.91951921968616}, {{2017, 
            3, 9}, 31.91951921968616}, {{2017, 3, 9}, 31.91951921968616}, {{
            2017, 3, 10}, 31.870510577624476`}, {{2017, 3, 10}, 
            31.870510577624476`}, {{2017, 3, 10}, 31.870510577624476`}, {{
            2017, 3, 13}, 31.723484651439435`}, {{2017, 3, 13}, 
            31.723484651439435`}, {{2017, 3, 13}, 31.723484651439435`}, {{
            2017, 3, 14}, 31.674476009377756`}, {{2017, 3, 14}, 
            31.674476009377756`}, {{2017, 3, 14}, 31.674476009377756`}, {{
            2017, 3, 15}, 31.625467367316073`}, {{2017, 3, 15}, 
            31.625467367316073`}, {{2017, 3, 15}, 31.625467367316073`}, {{
            2017, 3, 16}, 31.576458725254394`}, {{2017, 3, 16}, 
            31.576458725254394`}, {{2017, 3, 16}, 31.576458725254394`}, {{
            2017, 3, 17}, 31.52745008319271}, {{2017, 3, 17}, 
            31.52745008319271}, {{2017, 3, 17}, 31.52745008319271}, {{2017, 3,
             20}, 31.38042415700767}, {{2017, 3, 20}, 31.38042415700767}, {{
            2017, 3, 20}, 31.38042415700767}, {{2017, 3, 21}, 
            31.33141551494599}, {{2017, 3, 21}, 31.33141551494599}, {{2017, 3,
             21}, 31.33141551494599}, {{2017, 3, 22}, 31.28240687288431}, {{
            2017, 3, 22}, 31.28240687288431}, {{2017, 3, 22}, 
            31.28240687288431}, {{2017, 3, 23}, 31.23339823082263}, {{2017, 3,
             23}, 31.23339823082263}, {{2017, 3, 23}, 31.23339823082263}, {{
            2017, 3, 24}, 31.18438958876095}, {{2017, 3, 24}, 
            31.18438958876095}, {{2017, 3, 24}, 31.18438958876095}, {{2017, 3,
             27}, 31.037363662575906`}, {{2017, 3, 27}, 
            31.037363662575906`}, {{2017, 3, 27}, 31.037363662575906`}, {{
            2017, 3, 28}, 30.988355020514227`}, {{2017, 3, 28}, 
            30.988355020514227`}, {{2017, 3, 28}, 30.988355020514227`}, {{
            2017, 3, 29}, 30.939346378452548`}, {{2017, 3, 29}, 
            30.939346378452548`}, {{2017, 3, 29}, 30.939346378452548`}, {{
            2017, 3, 30}, 30.89033773639087}, {{2017, 3, 30}, 
            30.89033773639087}, {{2017, 3, 30}, 30.89033773639087}, {{2017, 3,
             31}, 30.841329094329186`}, {{2017, 3, 31}, 
            30.841329094329186`}, {{2017, 3, 31}, 30.841329094329186`}, {{
            2017, 4, 3}, 30.694303168144145`}, {{2017, 4, 3}, 
            30.694303168144145`}, {{2017, 4, 3}, 30.694303168144145`}, {{2017,
             4, 4}, 30.645294526082466`}, {{2017, 4, 4}, 30.645294526082466`},
            {{2017, 4, 4}, 30.645294526082466`}, {{2017, 4, 5}, 
            30.596285884020784`}, {{2017, 4, 5}, 30.596285884020784`}, {{2017,
             4, 5}, 30.596285884020784`}, {{2017, 4, 6}, 30.5472772419591}, {{
            2017, 4, 6}, 30.5472772419591}, {{2017, 4, 6}, 
            30.5472772419591}, {{2017, 4, 7}, 30.498268599897422`}, {{2017, 4,
             7}, 30.498268599897422`}, {{2017, 4, 7}, 30.498268599897422`}, {{
            2017, 4, 10}, 30.35124267371238}, {{2017, 4, 10}, 
            30.35124267371238}, {{2017, 4, 10}, 30.35124267371238}, {{2017, 4,
             11}, 30.3022340316507}, {{2017, 4, 11}, 30.3022340316507}, {{
            2017, 4, 11}, 30.3022340316507}, {{2017, 4, 12}, 
            30.25322538958902}, {{2017, 4, 12}, 30.25322538958902}, {{2017, 4,
             12}, 30.25322538958902}, {{2017, 4, 13}, 30.20421674752734}, {{
            2017, 4, 13}, 30.20421674752734}, {{2017, 4, 13}, 
            30.20421674752734}, {{2017, 4, 17}, 30.008182179280617`}, {{2017, 
            4, 17}, 30.008182179280617`}, {{2017, 4, 17}, 
            30.008182179280617`}, {{2017, 4, 18}, 29.959173537218938`}, {{
            2017, 4, 18}, 29.959173537218938`}, {{2017, 4, 18}, 
            29.959173537218938`}, {{2017, 4, 19}, 29.91016489515726}, {{2017, 
            4, 19}, 29.91016489515726}, {{2017, 4, 19}, 29.91016489515726}, {{
            2017, 4, 20}, 29.861156253095576`}, {{2017, 4, 20}, 
            29.861156253095576`}, {{2017, 4, 20}, 29.861156253095576`}, {{
            2017, 4, 21}, 29.812147611033893`}, {{2017, 4, 21}, 
            29.812147611033893`}, {{2017, 4, 21}, 29.812147611033893`}, {{
            2017, 4, 24}, 29.665121684848856`}, {{2017, 4, 24}, 
            29.665121684848856`}, {{2017, 4, 24}, 29.665121684848856`}, {{
            2017, 4, 25}, 29.616113042787173`}, {{2017, 4, 25}, 
            29.616113042787173`}, {{2017, 4, 25}, 29.616113042787173`}, {{
            2017, 4, 26}, 29.567104400725494`}, {{2017, 4, 26}, 
            29.567104400725494`}, {{2017, 4, 26}, 29.567104400725494`}, {{
            2017, 4, 27}, 29.51809575866381}, {{2017, 4, 27}, 
            29.51809575866381}, {{2017, 4, 27}, 29.51809575866381}, {{2017, 4,
             28}, 29.469087116602132`}, {{2017, 4, 28}, 
            29.469087116602132`}, {{2017, 4, 28}, 29.469087116602132`}, {{
            2017, 5, 1}, 29.32206119041709}, {{2017, 5, 1}, 
            29.32206119041709}, {{2017, 5, 1}, 29.32206119041709}, {{2017, 5, 
            2}, 29.27305254835541}, {{2017, 5, 2}, 29.27305254835541}, {{2017,
             5, 2}, 29.27305254835541}, {{2017, 5, 3}, 29.22404390629373}, {{
            2017, 5, 3}, 29.22404390629373}, {{2017, 5, 3}, 
            29.22404390629373}, {{2017, 5, 4}, 29.17503526423205}, {{2017, 5, 
            4}, 29.17503526423205}, {{2017, 5, 4}, 29.17503526423205}, {{2017,
             5, 5}, 29.126026622170368`}, {{2017, 5, 5}, 
            29.126026622170368`}, {{2017, 5, 5}, 29.126026622170368`}, {{2017,
             5, 8}, 28.979000695985327`}, {{2017, 5, 8}, 
            28.979000695985327`}, {{2017, 5, 8}, 28.979000695985327`}, {{2017,
             5, 9}, 28.929992053923648`}, {{2017, 5, 9}, 
            28.929992053923648`}, {{2017, 5, 9}, 28.929992053923648`}, {{2017,
             5, 10}, 28.880983411861965`}, {{2017, 5, 10}, 
            28.880983411861965`}, {{2017, 5, 10}, 28.880983411861965`}, {{
            2017, 5, 11}, 28.831974769800286`}, {{2017, 5, 11}, 
            28.831974769800286`}, {{2017, 5, 11}, 28.831974769800286`}, {{
            2017, 5, 12}, 28.782966127738604`}, {{2017, 5, 12}, 
            28.782966127738604`}, {{2017, 5, 12}, 28.782966127738604`}, {{
            2017, 5, 15}, 28.635940201553563`}, {{2017, 5, 15}, 
            28.635940201553563`}, {{2017, 5, 15}, 28.635940201553563`}, {{
            2017, 5, 16}, 28.586931559491884`}, {{2017, 5, 16}, 
            28.586931559491884`}, {{2017, 5, 16}, 28.586931559491884`}, {{
            2017, 5, 17}, 28.5379229174302}, {{2017, 5, 17}, 
            28.5379229174302}, {{2017, 5, 17}, 28.5379229174302}, {{2017, 5, 
            18}, 28.488914275368522`}, {{2017, 5, 18}, 
            28.488914275368522`}, {{2017, 5, 18}, 28.488914275368522`}, {{
            2017, 5, 19}, 28.439905633306843`}, {{2017, 5, 19}, 
            28.439905633306843`}, {{2017, 5, 19}, 28.439905633306843`}, {{
            2017, 5, 23}, 28.24387106506012}, {{2017, 5, 23}, 
            28.24387106506012}, {{2017, 5, 23}, 28.24387106506012}, {{2017, 5,
             24}, 28.19486242299844}, {{2017, 5, 24}, 28.19486242299844}, {{
            2017, 5, 24}, 28.19486242299844}, {{2017, 5, 25}, 
            28.145853780936758`}, {{2017, 5, 25}, 28.145853780936758`}, {{
            2017, 5, 25}, 28.145853780936758`}, {{2017, 5, 26}, 
            28.096845138875075`}, {{2017, 5, 26}, 28.096845138875075`}, {{
            2017, 5, 26}, 28.096845138875075`}, {{2017, 5, 29}, 
            27.949819212690038`}, {{2017, 5, 29}, 27.949819212690038`}, {{
            2017, 5, 29}, 27.949819212690038`}, {{2017, 5, 30}, 
            27.900810570628355`}, {{2017, 5, 30}, 27.900810570628355`}, {{
            2017, 5, 30}, 27.900810570628355`}, {{2017, 5, 31}, 
            27.851801928566672`}, {{2017, 5, 31}, 27.851801928566672`}, {{
            2017, 5, 31}, 27.851801928566672`}, {{2017, 6, 1}, 
            27.802793286504993`}, {{2017, 6, 1}, 27.802793286504993`}, {{2017,
             6, 1}, 27.802793286504993`}, {{2017, 6, 2}, 
            27.753784644443314`}, {{2017, 6, 2}, 27.753784644443314`}, {{2017,
             6, 2}, 27.753784644443314`}, {{2017, 6, 5}, 
            27.60675871825827}, {{2017, 6, 5}, 27.60675871825827}, {{2017, 6, 
            5}, 27.60675871825827}, {{2017, 6, 6}, 27.55775007619659}, {{2017,
             6, 6}, 27.55775007619659}, {{2017, 6, 6}, 27.55775007619659}, {{
            2017, 6, 7}, 27.50874143413491}, {{2017, 6, 7}, 
            27.50874143413491}, {{2017, 6, 7}, 27.50874143413491}, {{2017, 6, 
            8}, 27.459732792073233`}, {{2017, 6, 8}, 27.459732792073233`}, {{
            2017, 6, 8}, 27.459732792073233`}, {{2017, 6, 9}, 
            27.41072415001155}, {{2017, 6, 9}, 27.41072415001155}, {{2017, 6, 
            9}, 27.41072415001155}, {{2017, 6, 12}, 27.26369822382651}, {{
            2017, 6, 12}, 27.26369822382651}, {{2017, 6, 12}, 
            27.26369822382651}, {{2017, 6, 13}, 27.21468958176483}, {{2017, 6,
             13}, 27.21468958176483}, {{2017, 6, 13}, 27.21468958176483}, {{
            2017, 6, 14}, 27.165680939703147`}, {{2017, 6, 14}, 
            27.165680939703147`}, {{2017, 6, 14}, 27.165680939703147`}, {{
            2017, 6, 15}, 27.116672297641465`}, {{2017, 6, 15}, 
            27.116672297641465`}, {{2017, 6, 15}, 27.116672297641465`}, {{
            2017, 6, 16}, 27.067663655579786`}, {{2017, 6, 16}, 
            27.067663655579786`}, {{2017, 6, 16}, 27.067663655579786`}, {{
            2017, 6, 19}, 26.920637729394745`}, {{2017, 6, 19}, 
            26.920637729394745`}, {{2017, 6, 19}, 26.920637729394745`}}, 
         "lm" -> (ReplaceAll[
           Normal[
            
            LinearModelFit[$CellContext`secondsFormData$111934, \
$CellContext`x, $CellContext`x]], Pattern[$CellContext`a, 
              Blank[]] + Pattern[$CellContext`b, 
               
               Blank[]] $CellContext`x -> $CellContext`a + $CellContext`b #]& \
), "nweeks" -> 52, "len" -> 129, "vMin" -> 26.440000534057617`, "vMax" -> 
         35.612918853759766`}, $CellContext`o$$, $CellContext`h$$], 
      "Specifications" :> {{{$CellContext`o$$, -0.5, 
          "offset from linear fit"}, -9.172918319702148, 9.172918319702148, 
         Appearance -> 
         "Labeled"}, {{$CellContext`h$$, 27.440000534057617`, 
          "price horizon"}, 26.440000534057617`, 38.670558293660484`, 
         Appearance -> "Labeled"}}, "Options" :> {}, "DefaultOptions" :> {}],
     ImageSizeCache->{405., {182., 188.}},
     SingleEvaluation->True],
    Deinitialization:>None,
    DynamicModuleValues:>{},
    SynchronousInitialization->True,
    UndoTrackedVariables:>{Typeset`show$$, Typeset`bookmarkMode$$},
    UnsavedVariables:>{Typeset`initDone$$},
    UntrackedVariables:>{Typeset`size$$}], "Manipulate",
   Deployed->True,
   StripOnInput->False],
  Manipulate`InterpretManipulate[1]]], "Output",
 CellChangeTimes->{
  3.706916143852912*^9},ExpressionUUID->"08c88493-cf3c-4dec-ae17-\
e87dca76155b"]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"\[IndentingNewLine]", "\[IndentingNewLine]", "\[IndentingNewLine]", 
  RowBox[{"manipulatePlotDistAgainstLinearModel", "[", " ", 
   RowBox[{"fDataAndLinearModel", "[", " ", 
    RowBox[{"\"\<BKCC\>\"", ",", " ", "52"}], " ", "]"}], "  ", 
   "]"}]}]], "Input",
 CellChangeTimes->{{3.7069162689757223`*^9, 
  3.7069163072365*^9}},ExpressionUUID->"cced4ec7-5f45-434a-a0c0-d35eca704587"],

Cell[BoxData[
 TagBox[
  StyleBox[
   DynamicModuleBox[{$CellContext`h$$ = 7.5, $CellContext`o$$ = -0.5, 
    Typeset`show$$ = True, Typeset`bookmarkList$$ = {}, 
    Typeset`bookmarkMode$$ = "Menu", Typeset`animator$$, Typeset`animvar$$ = 
    1, Typeset`name$$ = "\"untitled\"", Typeset`specs$$ = {{{
       Hold[$CellContext`o$$], -0.5, 
       "offset from linear fit"}, -1.7651262283325195`, 
      1.7651262283325195`}, {{
       Hold[$CellContext`h$$], 7.5, "price horizon"}, 6.263786315917969, 
      8.617287953694662}}, Typeset`size$$ = {360., {122., 126.}}, 
    Typeset`update$$ = 0, Typeset`initDone$$, Typeset`skipInitDone$$ = 
    True, $CellContext`o$143556$$ = 0, $CellContext`h$143557$$ = 0}, 
    DynamicBox[Manipulate`ManipulateBoxes[
     1, StandardForm, 
      "Variables" :> {$CellContext`h$$ = 7.5, $CellContext`o$$ = -0.5}, 
      "ControllerVariables" :> {
        Hold[$CellContext`o$$, $CellContext`o$143556$$, 0], 
        Hold[$CellContext`h$$, $CellContext`h$143557$$, 0]}, 
      "OtherVariables" :> {
       Typeset`show$$, Typeset`bookmarkList$$, Typeset`bookmarkMode$$, 
        Typeset`animator$$, Typeset`animvar$$, Typeset`name$$, 
        Typeset`specs$$, Typeset`size$$, Typeset`update$$, Typeset`initDone$$,
         Typeset`skipInitDone$$}, 
      "Body" :> $CellContext`plotDistAgainstLinearModel[{
        "company" -> "BlackRock Kelso Capital Corporation", "symbol" -> 
         "BKCC", "dMin" -> {{{2016, 6, 20}, -0.5274429083301815}, {{2016, 6, 
            21}, -0.5179397471881737}, {{2016, 6, 22}, -0.454127217912621}, {{
            2016, 6, 23}, -0.4355727338336006}, {{2016, 6, 
            24}, -0.5799496920153233}, {{2016, 6, 
            27}, -0.5876488381974543}, {{2016, 6, 
            28}, -0.5600430311814222}, {{2016, 6, 
            29}, -0.49622907139439487`}, {{2016, 6, 
            30}, -0.3962093430221625}, {{2016, 7, 
            1}, -0.32334406029812346`}, {{2016, 7, 
            5}, -0.32154052217540396`}, {{2016, 7, 
            6}, -0.2848824385480446}, {{2016, 7, 
            7}, -0.32063875311404466`}, {{2016, 7, 
            8}, -0.19346362541930162`}, {{2016, 7, 
            11}, -0.13780065001940134`}, {{2016, 7, 
            12}, -0.12829796571455176`}, {{2016, 7, 
            13}, -0.13689888095804115`}, {{2016, 7, 
            14}, -0.08213624410802556}, {{2016, 7, 
            15}, -0.05452996025483614}, {{2016, 7, 18}, 
            0.028287937630416593`}, {{2016, 7, 19}, 0.010635222612756401`}, {{
            2016, 7, 20}, -0.007017015567745588}, {{2016, 7, 21}, 
            0.07489815958183055}, {{2016, 7, 22}, 0.1568161957543559}, {{2016,
             7, 25}, 0.13101297318672778`}, {{2016, 7, 26}, 
            0.16767153365124532`}, {{2016, 7, 27}, 0.15907061840775505`}, {{
            2016, 7, 28}, -0.039617138418986286`}, {{2016, 7, 29}, 
            0.17807598701745508`}, {{2016, 8, 1}, 0.17037684083532412`}, {{
            2016, 8, 2}, 0.1074651269468152}, {{2016, 8, 3}, 
            0.15317501034834446`}, {{2016, 8, 4}, 0.1898330939757038}, {{2016,
             8, 5}, 0.2083871012175651}, {{2016, 8, 8}, 
            0.2731018763916362}, {{2016, 8, 9}, 0.24639783843696428`}, {{2016,
             8, 10}, 0.328314444098015}, {{2016, 8, 11}, 
            0.3468689281770345}, {{2016, 8, 12}, 0.34731981270771506`}, {{
            2016, 8, 15}, 0.3758278656222638}, {{2016, 8, 16}, 
            0.3581746737674454}, {{2016, 8, 17}, 0.37672963468362397`}, {{
            2016, 8, 18}, 0.39528364192548526`}, {{2016, 8, 19}, 
            0.49530480080919226`}, {{2016, 8, 22}, 0.5328641766607536}, {{
            2016, 8, 23}, 0.57857215271365}, {{2016, 8, 24}, 
            0.47945514707709336`}, {{2016, 8, 25}, 0.46180290889659137`}, {{
            2016, 8, 26}, 0.462253793427271}, {{2016, 8, 29}, 
            0.5179172456643304}, {{2016, 8, 30}, 0.4912127308725003}, {{2016, 
            8, 31}, 0.5369221374368713}, {{2016, 9, 1}, 0.528321222193382}, {{
            2016, 9, 2}, 0.546874752598085}, {{2016, 9, 6}, 
            0.5758336900433143}, {{2016, 9, 7}, 0.5581804981884959}, {{2016, 
            9, 8}, 0.6038903815900252}, {{2016, 9, 9}, 0.5590822672498552}, {{
            2016, 9, 12}, 0.37940130954428763`}, {{2016, 9, 13}, 
            0.3526963179152993}, {{2016, 9, 14}, 0.38935440154265866`}, {{
            2016, 9, 15}, 0.3703331638809555}, {{2016, 9, 16}, 
            0.3522255462143704}, {{2016, 9, 19}, 0.35357819980640937`}, {{
            2016, 9, 20}, 0.38186874498162027`}, {{2016, 9, 21}, 
            0.35447996886776956`}, {{2016, 9, 22}, 0.30853269055665233`}, {{
            2016, 9, 23}, 0.3646614658649199}, {{2016, 9, 26}, 
            0.2917762959706316}, {{2016, 9, 27}, 0.2643884735310964}, {{2016, 
            9, 28}, 0.2833992907705163}, {{2016, 9, 29}, 
            0.3395271124044674}, {{2016, 9, 30}, 0.3399779969351471}, {{2016, 
            10, 3}, 0.3320509225913959}, {{2016, 10, 4}, 
            0.16546861162647009`}, {{2016, 10, 5}, 0.19375820312736458`}, {{
            2016, 10, 6}, 0.20348881559383614`}, {{2016, 10, 7}, 
            0.16682126521850993`}, {{2016, 10, 10}, 0.16817391881054888`}, {{
            2016, 10, 11}, 0.07582704714616106}, {{2016, 10, 12}, 
            0.07627793167684072}, {{2016, 10, 13}, 0.03961038130151451}, {{
            2016, 10, 14}, -0.10841342746614568`}, {{2016, 10, 
            17}, -0.09778104593831483}, {{2016, 10, 
            18}, -0.0509319985658383}, {{2016, 10, 
            19}, -0.031921658163576616`}, {{2016, 10, 
            20}, -0.031470773632896965`}, {{2016, 10, 
            21}, -0.031019889102216425`}, {{2016, 10, 
            24}, -0.02966723551017747}, {{2016, 10, 
            25}, -0.08489424175708571}, {{2016, 10, 
            26}, -0.13084199690536025`}, {{2016, 10, 
            27}, -0.1396703634733134}, {{2016, 10, 
            28}, -0.25057573733496774`}, {{2016, 10, 
            31}, -0.33274063516504704`}, {{2016, 11, 
            1}, -0.3879676414119553}, {{2016, 11, 
            2}, -0.45247485243181274`}, {{2016, 11, 
            3}, -0.9345674363764749}, {{2016, 11, 
            4}, -1.0269133543665472`}, {{2016, 11, 
            7}, -0.9791620610955523}, {{2016, 11, 8}, -0.9508719927574996}, {{
            2016, 11, 9}, -0.9504211082268199}, {{2016, 11, 
            10}, -0.7458171627830534}, {{2016, 11, 
            11}, -0.5597726732108699}, {{2016, 11, 
            14}, -0.5120213799398758}, {{2016, 11, 
            15}, -0.5115704954091953}, {{2016, 11, 
            16}, -0.5575182505574707}, {{2016, 11, 
            17}, -0.5477876380910001}, {{2016, 11, 
            18}, -0.5658962094319024}, {{2016, 11, 
            21}, -0.4995859371264837}, {{2016, 11, 
            22}, -0.4156175011736849}, {{2016, 11, 
            23}, -0.46156573315911853`}, {{2016, 11, 
            25}, -0.488502194230815}, {{2016, 11, 
            28}, -0.43147212669834634`}, {{2016, 11, 
            29}, -0.4310212421676667}, {{2016, 11, 
            30}, -0.4584095414443592}, {{2016, 12, 
            1}, -0.4301194731063065}, {{2016, 12, 2}, -0.5410243701308026}, {{
            2016, 12, 5}, -0.5396717165387628}, {{2016, 12, 
            6}, -0.5021019202649191}, {{2016, 12, 7}, -0.4366938938580187}, {{
            2016, 12, 8}, -0.36200566267816914`}, {{2016, 12, 
            9}, -0.2594782476909465}, {{2016, 12, 
            12}, -0.1560481099680473}, {{2016, 12, 
            13}, -0.22055579782506296`}, {{2016, 12, 
            14}, -0.23866436916596534`}, {{2016, 12, 
            15}, -0.28225559507840003`}, {{2016, 12, 
            16}, -0.34855666748741765`}, {{2016, 12, 
            19}, -0.26137952430187283`}, {{2016, 12, 
            20}, -0.33721733987495206`}, {{2016, 12, 
            21}, -0.3463022448340185}, {{2016, 12, 
            22}, -0.40306848142760643`}, {{2016, 12, 
            23}, -0.5361224644506377}, {{2016, 12, 
            27}, -0.5533914589817268}, {{2016, 12, 
            28}, -0.5910846860843479}, {{2016, 12, 
            29}, -0.6287783900241273}, {{2016, 12, 
            30}, -0.7046162055972074}, {{2017, 1, 3}, -0.6646680790040289}, {{
            2017, 1, 4}, -0.3209178055878512}, {{2017, 1, 
            5}, -0.33953897687382106`}, {{2017, 1, 
            6}, -0.24372733642273126`}, {{2017, 1, 
            9}, -0.20423009436023332`}, {{2017, 1, 
            10}, -0.25146006462691606`}, {{2017, 1, 
            11}, -0.2414729137693321}, {{2017, 1, 
            12}, -0.25055829556555675`}, {{2017, 1, 
            13}, -0.2977877889950822}, {{2017, 1, 
            17}, -0.39134548362993105`}, {{2017, 1, 
            18}, -0.43857450022229827`}, {{2017, 1, 
            19}, -0.4381236156916186}, {{2017, 1, 
            20}, -0.3518482415674322}, {{2017, 1, 
            23}, -0.2837426773613796}, {{2017, 1, 
            24}, -0.27375552650379564`}, {{2017, 1, 
            25}, -0.3209854967704784}, {{2017, 1, 
            26}, -0.21563711315532608`}, {{2017, 1, 
            27}, -0.3010111950553105}, {{2017, 1, 
            30}, -0.33780312993372963`}, {{2017, 1, 
            31}, -0.35642430121970037`}, {{2017, 2, 
            1}, -0.3464376271992746}, {{2017, 2, 
            2}, -0.35552253215834106`}, {{2017, 2, 
            3}, -0.27878294752390165`}, {{2017, 2, 
            6}, -0.19160532750119774`}, {{2017, 2, 
            7}, -0.1530098545000591}, {{2017, 2, 
            8}, -0.19070355843983844`}, {{2017, 2, 
            9}, -0.16164482860276141`}, {{2017, 2, 
            10}, -0.12304983243878098`}, {{2017, 2, 13}, 
            0.040416964524840004`}, {{2017, 2, 14}, 0.02179531640171195}, {{
            2017, 2, 15}, 0.0317829440964541}, {{2017, 2, 16}, 
            0.032233828627133754`}, {{2017, 2, 17}, 0.08036461428086028}, {{
            2017, 2, 21}, 0.08216815240357978}, {{2017, 2, 22}, 
            0.07308324744451333}, {{2017, 2, 23}, 0.12121450993539806`}, {{
            2017, 2, 24}, 0.16934577242628368`}, {{2017, 2, 27}, 
            0.18023516918238514`}, {{2017, 2, 28}, 0.04718023248503744}, {{
            2017, 3, 1}, 0.16206440558993673`}, {{2017, 3, 2}, 
            0.06715405736304803}, {{2017, 3, 3}, 0.048532886077077286`}, {{
            2017, 3, 6}, 0.08802965130241791}, {{2017, 3, 7}, 
            0.012191835729337797`}, {{2017, 3, 8}, -0.08271851249755091}, {{
            2017, 3, 9}, -0.27298913980769157`}, {{2017, 3, 
            10}, -0.17717702251944356`}, {{2017, 3, 13}, 
            0.024433886077479094`}, {{2017, 3, 14}, -0.07047646214940961}, {{
            2017, 3, 15}, -0.10817064292634715`}, {{2017, 3, 
            16}, -0.1007307561678834}, {{2017, 3, 
            17}, -0.0612092654055143}, {{2017, 3, 
            20}, -0.0012499872102038623`}, {{2017, 3, 
            21}, -0.09847633351448426}, {{2017, 3, 
            22}, -0.19570363349308195`}, {{2017, 3, 
            23}, -0.15618166589355464`}, {{2017, 3, 
            24}, -0.13619476299129296`}, {{2017, 3, 
            27}, -0.1836812016538918}, {{2017, 3, 
            28}, -0.12462369251994065`}, {{2017, 3, 
            29}, -0.026495577154300065`}, {{2017, 3, 30}, 
            0.03256193197965107}, {{2017, 3, 31}, 0.07208342274202106}, {{
            2017, 4, 3}, -0.004705612966477091}, {{2017, 4, 
            4}, -0.1214675008051822}, {{2017, 4, 5}, -0.1405521578089255}, {{
            2017, 4, 6}, -0.14010127327824584`}, {{2017, 4, 
            7}, -0.12011484721314236`}, {{2017, 4, 
            10}, -0.13829773515552635`}, {{2017, 4, 
            11}, -0.15738239215927052`}, {{2017, 4, 
            12}, -0.21553765539470415`}, {{2017, 4, 
            13}, -0.2150867708640245}, {{2017, 4, 
            17}, -0.18398063569540657`}, {{2017, 4, 
            18}, -0.1737617419789359}, {{2017, 4, 
            19}, -0.12447176519361758`}, {{2017, 4, 
            20}, -0.1728599729175757}, {{2017, 4, 
            21}, -0.08449891306340973}, {{2017, 4, 
            24}, -0.09291426865716179}, {{2017, 4, 
            25}, -0.08269537494069024}, {{2017, 4, 
            26}, -0.06270942571274496}, {{2017, 4, 
            27}, -0.09156161506512195}, {{2017, 4, 
            28}, -0.0911107305344423}, {{2017, 5, 
            1}, -0.07999006775661144}, {{2017, 5, 
            2}, -0.07953918322593179}, {{2017, 5, 
            3}, -0.020482150929138854`}, {{2017, 5, 4}, 
            0.019039816670388454`}, {{2017, 5, 5}, 0.1660070242906686}, {{
            2017, 5, 8}, 0.13805612716249271`}, {{2017, 5, 9}, 
            0.07013237790410987}, {{2017, 5, 10}, 0.06081573008615759}, {{
            2017, 5, 11}, 0.031963540733780604`}, {{2017, 5, 12}, 
            0.032414425264460256`}, {{2017, 5, 15}, 0.06307015273955674}, {{
            2017, 5, 16}, 0.08305657880466022}, {{2017, 5, 17}, 
            0.09327499568397268}, {{2017, 5, 18}, 0.09372588021465234}, {{
            2017, 5, 19}, 0.08440923239669917}, {{2017, 5, 22}, 
            0.17367206131222535`}, {{2017, 5, 23}, 0.22296108442322726`}, {{
            2017, 5, 24}, 0.22341196895390691`}, {{2017, 5, 25}, 
            0.24339839501901128`}, {{2017, 5, 26}, 0.24384927954969093`}, {{
            2017, 5, 30}, 0.27495636839262527`}, {{2017, 5, 31}, 
            0.3242453915036272}, {{2017, 6, 1}, 0.39307090982336934`}, {{2017,
             6, 2}, 0.40328980353984}, {{2017, 6, 5}, 
            0.32649981415702634`}, {{2017, 6, 6}, 0.29764810164180755`}, {{
            2017, 6, 7}, 0.2785634446380634}, {{2017, 6, 8}, 
            0.17156908914799107`}, {{2017, 6, 9}, 0.18178798286446263`}, {{
            2017, 6, 12}, 0.2808178672914625}, {{2017, 6, 13}, 
            0.14452043791833358`}, {{2017, 6, 14}, 0.23288054409818404`}, {{
            2017, 6, 15}, 0.19984744654268205`}, {{2017, 6, 16}, 
            0.24029829292638905`}, {{2017, 6, 19}, 0.29165113725329217`}}, 
         "dMax" -> {{{2016, 6, 20}, -0.4459767103626522}, {{2016, 6, 
            21}, -0.3912155040241112}, {{2016, 6, 
            22}, -0.39076461949343155`}, {{2016, 6, 
            23}, -0.3360034131548897}, {{2016, 6, 
            24}, -0.3174489290758702}, {{2016, 6, 27}, -0.433769195710882}, {{
            2016, 6, 28}, -0.4423696341172132}, {{2016, 6, 
            29}, -0.3785566280045023}, {{2016, 6, 
            30}, -0.30569134528046327`}, {{2016, 7, 
            1}, -0.22377521645657072`}, {{2016, 7, 
            5}, -0.2129194017225231}, {{2016, 7, 6}, -0.1943653944806618}, {{
            2016, 7, 7}, -0.1667591106274724}, {{2016, 7, 
            8}, -0.08484155129210436}, {{2016, 7, 
            11}, -0.06538577498888376}, {{2016, 7, 
            12}, -0.06493489045820411}, {{2016, 7, 
            13}, -0.046380406379183725`}, {{2016, 7, 
            14}, -0.045929521848504073`}, {{2016, 7, 15}, 
            0.03598660697538847}, {{2016, 7, 18}, 0.10070185898661776`}, {{
            2016, 7, 19}, 0.15546354216231695`}, {{2016, 7, 20}, 
            0.14686262691882668`}, {{2016, 7, 21}, 0.18352071054618602`}, {{
            2016, 7, 22}, 0.21112651756221723`}, {{2016, 7, 25}, 
            0.23963457047676684`}, {{2016, 7, 26}, 0.22198185545910665`}, {{
            2016, 7, 27}, 0.2676912620234777}, {{2016, 7, 28}, 
            0.35866062113301567`}, {{2016, 7, 29}, 0.2776448308590078}, {{
            2016, 8, 1}, 0.26089483857702334`}, {{2016, 8, 2}, 
            0.17987952514017458`}, {{2016, 8, 3}, 0.2527438541898972}, {{2016,
             8, 4}, 0.2622474921690632}, {{2016, 8, 5}, 
            0.30795594505911783`}, {{2016, 8, 8}, 0.3093085986511577}, {{2016,
             8, 9}, 0.35501848205268693`}, {{2016, 8, 10}, 
            0.4097806420655443}, {{2016, 8, 11}, 0.4283346493074056}, {{2016, 
            8, 12}, 0.4559414099977541}, {{2016, 8, 15}, 
            0.4572940635897931}, {{2016, 8, 16}, 0.4577449481204727}, {{2016, 
            8, 17}, 0.44914403287698335`}, {{2016, 8, 18}, 
            0.5582146073490692}, {{2016, 8, 19}, 0.5948726909764286}, {{2016, 
            8, 22}, 0.5871740216314567}, {{2016, 8, 23}, 
            0.6419352279699977}, {{2016, 8, 24}, 0.6242820361151793}, {{2016, 
            8, 25}, 0.5613707990638277}, {{2016, 8, 26}, 
            0.5527698838203374}, {{2016, 8, 29}, 0.5903302133462152}, {{2016, 
            8, 30}, 0.6812986187814358}, {{2016, 8, 31}, 
            0.6455423042154358}, {{2016, 9, 1}, 0.5735792673899152}, {{2016, 
            9, 2}, 0.6917045026591202}, {{2016, 9, 6}, 0.7116106866558631}, {{
            2016, 9, 7}, 0.6396471729931834}, {{2016, 9, 8}, 
            0.6491493804608748}, {{2016, 9, 9}, 0.6496002649915544}, {{2016, 
            9, 12}, 0.596642596775733}, {{2016, 9, 13}, 
            0.44321383881984033`}, {{2016, 9, 14}, 0.5432345208663891}, {{
            2016, 9, 15}, 0.4816894222732895}, {{2016, 9, 16}, 
            0.42646336970069854`}, {{2016, 9, 19}, 0.4927731651689582}, {{
            2016, 9, 20}, 0.465385342729423}, {{2016, 9, 21}, 
            0.48439472945736917`}, {{2016, 9, 22}, 0.503405546696789}, {{2016,
             9, 23}, 0.4481780636127226}, {{2016, 9, 26}, 
            0.4124122822987566}, {{2016, 9, 27}, 0.3386253433431081}, {{2016, 
            9, 28}, 0.38547582122705926`}, {{2016, 9, 29}, 
            0.40448616162932094`}, {{2016, 9, 30}, 0.4606144601004303}, {{
            2016, 10, 3}, 0.47124684162826114`}, {{2016, 10, 4}, 
            0.4067405842827201}, {{2016, 10, 5}, 0.35151262436149544`}, {{
            2016, 10, 6}, 0.3055648692132209}, {{2016, 10, 7}, 
            0.25033833980347087`}, {{2016, 10, 10}, 0.26097024449414263`}, {{
            2016, 10, 11}, 0.19646351031144427`}, {{2016, 10, 12}, 
            0.19691439484212392`}, {{2016, 10, 13}, 0.12312745588647545`}, {{
            2016, 10, 14}, 0.15141752422452814`}, {{2016, 10, 
            17}, -0.023543699289144904`}, {{2016, 10, 18}, 
            0.01402609698469881}, {{2016, 10, 19}, 0.014476981515378462`}, {{
            2016, 10, 20}, 0.005648138110267098}, {{2016, 10, 21}, 
            0.024658001675371466`}, {{2016, 10, 24}, 0.02601065526741042}, {{
            2016, 10, 25}, -0.01065737194507399}, {{2016, 10, 
            26}, -0.05660417341903212}, {{2016, 10, 
            27}, -0.06543301682414349}, {{2016, 10, 
            28}, -0.1021010440366279}, {{2016, 10, 
            31}, -0.23066410470850407`}, {{2016, 11, 
            1}, -0.2766118598567795}, {{2016, 11, 
            2}, -0.33183886610368774`}, {{2016, 11, 
            3}, -0.4520239679011331}, {{2016, 11, 4}, -0.7949211096460882}, {{
            2016, 11, 7}, -0.8585260747674273}, {{2016, 11, 
            8}, -0.8395162112023238}, {{2016, 11, 9}, -0.7091496124077281}, {{
            2016, 11, 10}, -0.5138249180625944}, {{2016, 11, 
            11}, -0.48553532656169995`}, {{2016, 11, 
            14}, -0.4285047821920731}, {{2016, 11, 
            15}, -0.42805389766139257`}, {{2016, 11, 
            16}, -0.464721924873877}, {{2016, 11, 
            17}, -0.5013894752492032}, {{2016, 11, 
            18}, -0.44526069994093564`}, {{2016, 11, 
            21}, -0.41606838570436455`}, {{2016, 11, 
            22}, -0.3506608361346224}, {{2016, 11, 
            23}, -0.35020995160394275`}, {{2016, 11, 
            25}, -0.3771464126756392}, {{2016, 11, 
            28}, -0.3386748473404362}, {{2016, 11, 
            29}, -0.30110552790375067`}, {{2016, 11, 
            30}, -0.3284938271804432}, {{2016, 12, 
            1}, -0.3280429426497635}, {{2016, 12, 2}, -0.3925496768324628}, {{
            2016, 12, 5}, -0.46543436988959286`}, {{2016, 12, 
            6}, -0.3536277038037374}, {{2016, 12, 7}, -0.3160579075298937}, {{
            2016, 12, 8}, -0.17641158079950703`}, {{2016, 12, 
            9}, -0.16668144517019456`}, {{2016, 12, 12}, 
            0.04810399727072223}, {{2016, 12, 13}, 0.0578350865743511}, {{
            2016, 12, 14}, 0.058285971105030754`}, {{2016, 12, 
            15}, -0.024780695786407847`}, {{2016, 12, 
            16}, -0.17690673462608952`}, {{2016, 12, 
            19}, -0.18509082419811307`}, {{2016, 12, 
            20}, -0.18463993966743253`}, {{2016, 12, 
            21}, -0.26047775524051264`}, {{2016, 12, 
            22}, -0.31724303815978416`}, {{2016, 12, 
            23}, -0.3835455410802764}, {{2016, 12, 
            27}, -0.47710228204080884`}, {{2016, 12, 
            28}, -0.4766513975101292}, {{2016, 12, 
            29}, -0.49527304563325814`}, {{2016, 12, 
            30}, -0.561574594879434}, {{2017, 1, 
            3}, -0.31183242379162657`}, {{2017, 1, 
            4}, -0.03483506098946254}, {{2017, 1, 
            5}, -0.11067335339969997`}, {{2017, 1, 
            6}, -0.1579028468292254}, {{2017, 1, 
            9}, -0.16608550588977433`}, {{2017, 1, 
            10}, -0.18470715401290239`}, {{2017, 1, 
            11}, -0.14611168101176375`}, {{2017, 1, 
            12}, -0.1456607964810841}, {{2017, 1, 
            13}, -0.16428196776705484`}, {{2017, 1, 
            17}, -0.20062301811479433`}, {{2017, 1, 
            18}, -0.30506915583142913`}, {{2017, 1, 
            19}, -0.33322659344430416`}, {{2017, 1, 
            20}, -0.24695121932011777`}, {{2017, 1, 
            23}, -0.18838192144096944`}, {{2017, 1, 
            24}, -0.19746682640003588`}, {{2017, 1, 
            25}, -0.14933604074630846`}, {{2017, 1, 
            26}, -0.12981310039897842`}, {{2017, 1, 
            27}, -0.19611417280799603`}, {{2017, 1, 
            30}, -0.21383357503260658`}, {{2017, 1, 
            31}, -0.2705993347890363}, {{2017, 2, 
            1}, -0.26061313760576876`}, {{2017, 2, 2}, -0.269697565727677}, {{
            2017, 2, 3}, -0.08806095884592313}, {{2017, 2, 
            6}, -0.058100459947486804`}, {{2017, 2, 
            7}, -0.07672163123345754}, {{2017, 2, 
            8}, -0.09534327935658649}, {{2017, 2, 
            9}, -0.06628359584519306}, {{2017, 2, 10}, 
            0.08674468889300613}, {{2017, 2, 13}, 0.13577772044525016`}, {{
            2017, 2, 14}, 0.10762028283237601`}, {{2017, 2, 15}, 
            0.16528781165016504`}, {{2017, 2, 16}, 0.11805831822063961`}, {{
            2017, 2, 17}, 0.16618958071152434`}, {{2017, 2, 21}, 
            0.2442818189380036}, {{2017, 2, 22}, 0.23519691397893716`}, {{
            2017, 2, 23}, 0.2833281764698219}, {{2017, 2, 24}, 
            0.28377906100050243`}, {{2017, 2, 27}, 0.2755954482656371}, {{
            2017, 2, 28}, 0.23790222116301596`}, {{2017, 3, 1}, 
            0.2574251615103469}, {{2017, 3, 2}, 0.19112313542701287`}, {{2017,
             3, 3}, 0.19157401995769252`}, {{2017, 3, 6}, 
            0.18339136089714447`}, {{2017, 3, 7}, 0.13616091379330264`}, {{
            2017, 3, 8}, 0.08893142036377721}, {{2017, 3, 
            9}, -0.025050983679761885`}, {{2017, 3, 10}, 
            0.1375135673853416}, {{2017, 3, 13}, 0.12933043148763534`}, {{
            2017, 3, 14}, 0.05349261591455523}, {{2017, 3, 15}, 
            0.04440771095548879}, {{2017, 3, 16}, 0.09462370550203847}, {{
            2017, 3, 17}, 0.17321627933325523`}, {{2017, 3, 20}, 
            0.194104474459718}, {{2017, 3, 21}, 0.07734258662101379}, {{2017, 
            3, 22}, -0.07849038428653898}, {{2017, 3, 
            23}, -0.04873642587280269}, {{2017, 3, 
            24}, -0.018981990621908196`}, {{2017, 3, 
            27}, -0.08600349398177265}, {{2017, 3, 
            28}, -0.007410920150555889}, {{2017, 3, 29}, 
            0.04187857979760423}, {{2017, 3, 30}, 0.14977518118619404`}, {{
            2017, 3, 31}, 0.15022606571687458`}, {{2017, 4, 3}, 
            0.2004168578892358}, {{2017, 4, 4}, 0.025048822284417405`}, {{
            2017, 4, 5}, -0.0038038439051168993`}, {{2017, 4, 
            6}, -0.052191574791917716`}, {{2017, 4, 
            7}, -0.022437616378181424`}, {{2017, 4, 
            10}, -0.06015604585498924}, {{2017, 4, 
            11}, -0.04993715213851857}, {{2017, 4, 
            12}, -0.039718735259206106`}, {{2017, 4, 
            13}, -0.10764153084327255`}, {{2017, 4, 
            17}, -0.09607046037192024}, {{2017, 4, 
            18}, -0.09561957584124059}, {{2017, 4, 
            19}, -0.056098085078871485`}, {{2017, 4, 
            20}, -0.06541473289682376}, {{2017, 4, 
            21}, -0.04542830683172028}, {{2017, 4, 
            24}, -0.03430812089104851}, {{2017, 4, 25}, 
            0.005213846708479686}, {{2017, 4, 26}, 0.015432740424950353`}, {{
            2017, 4, 27}, -0.02318745811321765}, {{2017, 4, 
            28}, -0.003201032048114172}, {{2017, 5, 
            1}, -0.021383919990498157`}, {{2017, 5, 2}, 
            0.01813804760902915}, {{2017, 5, 3}, 0.057659538371398256`}, {{
            2017, 5, 4}, 0.22416228752610134`}, {{2017, 5, 5}, 
            0.26368425512562954`}, {{2017, 5, 8}, 0.2650369087176685}, {{2017,
             5, 9}, 0.20688116864507666`}, {{2017, 5, 10}, 
            0.1389578962238529}, {{2017, 5, 11}, 0.1687123314747474}, {{2017, 
            5, 12}, 0.1398596652852122}, {{2017, 5, 15}, 
            0.1705158695974669}, {{2017, 5, 16}, 0.16119874494235553`}, {{
            2017, 5, 17}, 0.16164962947303518`}, {{2017, 5, 18}, 
            0.19140358788677148`}, {{2017, 5, 19}, 0.2406930878349316}, {{
            2017, 5, 22}, 0.32018743072750855`}, {{2017, 5, 23}, 
            0.35970939832703586`}, {{2017, 5, 24}, 0.31132166744023504`}, {{
            2017, 5, 25}, 0.36061116738839605`}, {{2017, 5, 26}, 
            0.34152651038465187`}, {{2017, 5, 30}, 0.3628655900417952}, {{
            2017, 5, 31}, 0.42192357601290453`}, {{2017, 6, 1}, 
            0.432141992892217}, {{2017, 6, 2}, 0.500967034374801}, {{2017, 6, 
            5}, 0.4437130633635693}, {{2017, 6, 6}, 0.36602178175655364`}, {{
            2017, 6, 7}, 0.3762406754730243}, {{2017, 6, 8}, 
            0.4157626430725516}, {{2017, 6, 9}, 0.27946521369942356`}, {{2017,
             6, 12}, 0.37849509812642346`}, {{2017, 6, 13}, 
            0.3691779734713121}, {{2017, 6, 14}, 0.4087004179079985}, {{2017, 
            6, 15}, 0.4298474656161684}, {{2017, 6, 16}, 
            0.32029869346960194`}, {{2017, 6, 19}, 0.37165106095934686`}}, 
         "dClose" -> {{{2016, 6, 20}, -0.47313163284800375`}, {{2016, 6, 
            21}, -0.4274222262836327}, {{2016, 6, 
            22}, -0.4179200188159413}, {{2016, 6, 
            23}, -0.3812619351885811}, {{2016, 6, 
            24}, -0.3989146502062413}, {{2016, 6, 
            27}, -0.5604939157121027}, {{2016, 6, 
            28}, -0.5419394316330823}, {{2016, 6, 
            29}, -0.40571155048985386`}, {{2016, 6, 
            30}, -0.30569134528046327`}, {{2016, 7, 
            1}, -0.259981461878934}, {{2016, 7, 5}, -0.2129194017225231}, {{
            2016, 7, 6}, -0.25772703922553486`}, {{2016, 7, 
            7}, -0.18486271017581224`}, {{2016, 7, 
            8}, -0.11199790428893053`}, {{2016, 7, 
            11}, -0.11064525069689157`}, {{2016, 7, 
            12}, -0.07398716706953223}, {{2016, 7, 
            13}, -0.09163940525003333}, {{2016, 7, 
            14}, -0.05498084478551579}, {{2016, 7, 15}, 
            0.02693528403837675}, {{2016, 7, 18}, 0.07354550598979159}, {{
            2016, 7, 19}, 0.11925634306563726`}, {{2016, 7, 20}, 
            0.13781130398181496`}, {{2016, 7, 21}, 0.16541711099784617`}, {{
            2016, 7, 22}, 0.16586799552852582`}, {{2016, 7, 25}, 
            0.21247917115425707`}, {{2016, 7, 26}, 0.18577513319958516`}, {{
            2016, 7, 27}, 0.19527781750443474`}, {{2016, 7, 28}, 
            0.24098722406880668`}, {{2016, 7, 29}, 0.232385355151}, {{2016, 8,
             1}, 0.17942864060949404`}, {{2016, 8, 2}, 
            0.13462004943216677`}, {{2016, 8, 3}, 0.24369253125288548`}, {{
            2016, 8, 4}, 0.2350906623350788}, {{2016, 8, 5}, 
            0.30795594505911783`}, {{2016, 8, 8}, 0.2731018763916362}, {{2016,
             8, 9}, 0.3369153593415053}, {{2016, 8, 10}, 
            0.38262571958019276`}, {{2016, 8, 11}, 0.3830766041108724}, {{
            2016, 8, 12}, 0.39257833474140647`}, {{2016, 8, 15}, 
            0.41203506471894347`}, {{2016, 8, 16}, 0.43058907196080476`}, {{
            2016, 8, 17}, 0.4310399564914853}, {{2016, 8, 18}, 
            0.5401114846378876}, {{2016, 8, 19}, 0.5767686145909305}, {{2016, 
            8, 22}, 0.5509663456976188}, {{2016, 8, 23}, 
            0.6238311515844996}, {{2016, 8, 24}, 0.5518681147589781}, {{2016, 
            8, 25}, 0.479906031607773}, {{2016, 8, 26}, 
            0.5346677147834722}, {{2016, 8, 29}, 0.5722266137978753}, {{2016, 
            8, 30}, 0.6360400967477444}, {{2016, 8, 31}, 
            0.5731283828592346}, {{2016, 9, 1}, 0.5464238680674054}, {{2016, 
            9, 2}, 0.673599949436464}, {{2016, 9, 6}, 0.6210931657513221}, {{
            2016, 9, 7}, 0.6124922505078318}, {{2016, 9, 8}, 
            0.6400980575238631}, {{2016, 9, 9}, 0.5952899431836931}, {{2016, 
            9, 12}, 0.4880219531600103}, {{2016, 9, 13}, 
            0.3798521940749673}, {{2016, 9, 14}, 0.42556160063933834`}, {{
            2016, 9, 15}, 0.45385119214023284`}, {{2016, 9, 16}, 
            0.37078404841163604`}, {{2016, 9, 19}, 0.372136702003675}, {{2016,
             9, 20}, 0.4004282008532023}, {{2016, 9, 21}, 
            0.3730384710650352}, {{2016, 9, 22}, 0.3642105813342402}, {{2016, 
            9, 23}, 0.41105962870671675`}, {{2016, 9, 26}, 
            0.3010560239064226}, {{2016, 9, 27}, 0.3200668411458425}, {{2016, 
            9, 28}, 0.357636160582528}, {{2016, 9, 29}, 
            0.3766455473104733}, {{2016, 9, 30}, 0.37709643184115293`}, {{
            2016, 10, 3}, 0.3413306505271869}, {{2016, 10, 4}, 
            0.24898568621143102`}, {{2016, 10, 5}, 0.3236739173912806}, {{
            2016, 10, 6}, 0.20348881559383614`}, {{2016, 10, 7}, 
            0.18538024425293376`}, {{2016, 10, 10}, 0.1867328978449727}, {{
            2016, 10, 11}, 0.12222568682511614`}, {{2016, 10, 12}, 
            0.1226765713557958}, {{2016, 10, 13}, 0.10456847685205162`}, {{
            2016, 10, 14}, -0.062014787787190606`}, {{2016, 10, 
            17}, -0.05138288309651795}, {{2016, 10, 
            18}, -0.023092814758465252`}, {{2016, 10, 
            19}, -0.0226419302277856}, {{2016, 10, 
            20}, -0.031470773632896965`}, {{2016, 10, 
            21}, -0.02174016116642541}, {{2016, 10, 
            24}, -0.001828051702804423}, {{2016, 10, 
            25}, -0.04777580685107985}, {{2016, 10, 
            26}, -0.1030028130979872}, {{2016, 10, 
            27}, -0.10255192856730755`}, {{2016, 10, 
            28}, -0.19489784655737985`}, {{2016, 10, 
            31}, -0.314181179293465}, {{2016, 11, 1}, -0.3879676414119553}, {{
            2016, 11, 2}, -0.40607621275285766`}, {{2016, 11, 
            3}, -0.7860917894038186}, {{2016, 11, 4}, -0.9990741705591741}, {{
            2016, 11, 7}, -0.9513228772881792}, {{2016, 11, 
            8}, -0.8673549181725386}, {{2016, 11, 9}, -0.774107231121107}, {{
            2016, 11, 10}, -0.5509438298057585}, {{2016, 11, 
            11}, -0.5226537614677058}, {{2016, 11, 
            14}, -0.502742128841243}, {{2016, 11, 
            15}, -0.48373178843898046`}, {{2016, 11, 
            16}, -0.5296790667500977}, {{2016, 11, 
            17}, -0.5013894752492032}, {{2016, 11, 
            18}, -0.45453995103956846`}, {{2016, 11, 
            21}, -0.46246750222047783`}, {{2016, 11, 
            22}, -0.39705852213926107`}, {{2016, 11, 
            23}, -0.4337265493517455}, {{2016, 11, 
            25}, -0.3771464126756392}, {{2016, 11, 
            28}, -0.4221923987625553}, {{2016, 11, 
            29}, -0.3753428745529206}, {{2016, 11, 
            30}, -0.4027311738296131}, {{2016, 12, 
            1}, -0.4301194731063065}, {{2016, 12, 2}, -0.5224649142592206}, {{
            2016, 12, 5}, -0.4747140978253839}, {{2016, 12, 
            6}, -0.4000258666455343}, {{2016, 12, 
            7}, -0.33461688656431754`}, {{2016, 12, 
            8}, -0.18569130873529804`}, {{2016, 12, 
            9}, -0.1852404242046184}, {{2016, 12, 12}, 
            0.029545018236298404`}, {{2016, 12, 13}, -0.1927161371805317}, {{
            2016, 12, 14}, -0.025231580317088387`}, {{2016, 12, 
            15}, -0.27271885191433753`}, {{2016, 12, 
            16}, -0.224588066260611}, {{2016, 12, 
            19}, -0.21369866950450955`}, {{2016, 12, 
            20}, -0.2609286397711923}, {{2016, 12, 
            21}, -0.3367664553442724}, {{2016, 12, 
            22}, -0.35538762663024315`}, {{2016, 12, 
            23}, -0.47890582016352834`}, {{2016, 12, 
            27}, -0.5343189263279182}, {{2016, 12, 
            28}, -0.5624763639407933}, {{2016, 12, 
            29}, -0.5620254794101136}, {{2016, 12, 
            30}, -0.6283275054934476}, {{2017, 1, 
            3}, -0.35951327858898985`}, {{2017, 1, 
            4}, -0.11112423793038051`}, {{2017, 1, 
            5}, -0.18696157666630153`}, {{2017, 1, 
            6}, -0.18651069213562188`}, {{2017, 1, 
            9}, -0.20423009436023332`}, {{2017, 1, 
            10}, -0.24192379830001176`}, {{2017, 1, 
            11}, -0.16518373682841414`}, {{2017, 1, 
            12}, -0.22194949658484386`}, {{2017, 1, 
            13}, -0.2787152563412736}, {{2017, 1, 
            17}, -0.37227342781328066`}, {{2017, 1, 
            18}, -0.4004303885889975}, {{2017, 1, 
            19}, -0.35229912609811276`}, {{2017, 1, 
            20}, -0.24695121932011777`}, {{2017, 1, 
            23}, -0.2360622994011745}, {{2017, 1, 
            24}, -0.23561141487049486`}, {{2017, 1, 
            25}, -0.15887135339889635`}, {{2017, 1, 
            26}, -0.1774930015220253}, {{2017, 1, 
            27}, -0.21518622862464643`}, {{2017, 1, 
            30}, -0.27105021931971596`}, {{2017, 1, 
            31}, -0.3468885117299543}, {{2017, 2, 
            1}, -0.28922098291216525`}, {{2017, 2, 
            2}, -0.2887700983814856}, {{2017, 2, 
            3}, -0.11666928098947782`}, {{2017, 2, 
            6}, -0.0771725157641372}, {{2017, 2, 
            7}, -0.13393779868340872`}, {{2017, 2, 
            8}, -0.10487906884633258`}, {{2017, 2, 
            9}, -0.12350071696946063`}, {{2017, 2, 10}, 
            0.048600577259705346`}, {{2017, 2, 13}, 0.11670566462859977`}, {{
            2017, 2, 14}, 0.040867849055520544`}, {{2017, 2, 15}, 
            0.13667948950661035`}, {{2017, 2, 16}, 0.09898578556683102}, {{
            2017, 2, 17}, 0.15665379122177825`}, {{2017, 2, 21}, 
            0.15845732934449774`}, {{2017, 2, 22}, 0.21612485816228677`}, {{
            2017, 2, 23}, 0.2642561206531715}, {{2017, 2, 24}, 
            0.27424279467359813`}, {{2017, 2, 27}, 0.2469871261220824}, {{
            2017, 2, 28}, 0.1520772547323519}, {{2017, 3, 1}, 
            0.17160019507968283`}, {{2017, 3, 2}, 0.1243707016501574}, {{2017,
             3, 3}, 0.18203870730510463`}, {{2017, 3, 6}, 
            0.135710029262623}, {{2017, 3, 7}, 0.06940848001644717}, {{2017, 
            3, 8}, 0.012642720260017448`}, {{2017, 3, 
            9}, -0.1966999628667736}, {{2017, 3, 10}, 0.1279777778955955}, {{
            2017, 3, 13}, 0.06257799771077988}, {{2017, 3, 
            14}, -0.02279656102636274}, {{2017, 3, 15}, 
            0.006263122485029804}, {{2017, 3, 16}, -0.06166014993619395}, {{
            2017, 3, 17}, 0.06577103931250328}, {{2017, 3, 20}, 
            0.018285554324219966`}, {{2017, 3, 21}, -0.06917373646858582}, {{
            2017, 3, 22}, -0.14686454123844328`}, {{2017, 3, 
            23}, -0.14641365670776363`}, {{2017, 3, 
            24}, -0.08735614757381249}, {{2017, 3, 
            27}, -0.11530656786482929`}, {{2017, 3, 
            28}, -0.03671399403361253}, {{2017, 3, 29}, 
            0.03211104744897142}, {{2017, 3, 30}, 0.08140054739713154}, {{
            2017, 3, 31}, 0.15022606571687458`}, {{2017, 4, 3}, 
            0.04413300245100338}, {{2017, 4, 4}, -0.06286135303906892}, {{
            2017, 4, 5}, -0.11124860708871065`}, {{2017, 4, 
            6}, -0.052191574791917716`}, {{2017, 4, 
            7}, -0.09081129649292752}, {{2017, 4, 
            10}, -0.1089941844353115}, {{2017, 4, 
            11}, -0.059705161324309586`}, {{2017, 4, 
            12}, -0.1764670491630147}, {{2017, 4, 
            13}, -0.1369450815634874}, {{2017, 4, 
            17}, -0.12537353425497688`}, {{2017, 4, 
            18}, -0.1053871081898734}, {{2017, 4, 
            19}, -0.11470423284498477`}, {{2017, 4, 
            20}, -0.07518226524545657}, {{2017, 4, 
            21}, -0.08449891306340973}, {{2017, 4, 
            24}, -0.06361119477410515}, {{2017, 4, 
            25}, -0.0533927778947918}, {{2017, 4, 
            26}, -0.03340635182968832}, {{2017, 4, 
            27}, -0.052491008833432495`}, {{2017, 4, 
            28}, -0.052040124302752844`}, {{2017, 5, 
            1}, -0.07999006775661144}, {{2017, 5, 
            2}, -0.0013974939253946772`}, {{2017, 5, 
            3}, -0.0009466093947150256}, {{2017, 5, 4}, 
            0.1948587368058865}, {{2017, 5, 5}, 0.2343807044054147}, {{2017, 
            5, 8}, 0.17712721023134037`}, {{2017, 5, 9}, 
            0.0896679194385337}, {{2017, 5, 10}, 0.0705832624347904}, {{2017, 
            5, 11}, 0.13940878075453256`}, {{2017, 5, 12}, 
            0.08125304068194072}, {{2017, 5, 15}, 0.15098032806304307`}, {{
            2017, 5, 16}, 0.1318956710592989}, {{2017, 5, 17}, 
            0.15188209712440237`}, {{2017, 5, 18}, 0.142564972469291}, {{2017,
             5, 19}, 0.19185447241745113`}, {{2017, 5, 22}, 
            0.2811168244958191}, {{2017, 5, 23}, 0.29133571821228976`}, {{
            2017, 5, 24}, 0.25271551967412176`}, {{2017, 5, 25}, 
            0.2629339365534351}, {{2017, 5, 26}, 0.3024559041529624}, {{2017, 
            5, 30}, 0.3530980576931624}, {{2017, 5, 31}, 
            0.3926200252926897}, {{2017, 6, 1}, 0.41260645135779317`}, {{2017,
             6, 2}, 0.43259287742289665`}, {{2017, 6, 5}, 
            0.365570897225874}, {{2017, 6, 6}, 0.336718707873497}, {{2017, 6, 
            7}, 0.3176340508697528}, {{2017, 6, 8}, 0.1813370983337821}, {{
            2017, 6, 9}, 0.2501616629792087}, {{2017, 6, 12}, 
            0.36872708894063244`}, {{2017, 6, 13}, 0.291036284170775}, {{2017,
             6, 14}, 0.37939686718778365`}, {{2017, 6, 15}, 
            0.33984778986543596`}, {{2017, 6, 16}, 0.27029850273473865`}, {{
            2017, 6, 19}, 0.31165111817980584`}}, 
         "dZero" -> {{{2016, 6, 20}, 0}, {{2016, 6, 21}, 0}, {{2016, 6, 22}, 
            0}, {{2016, 6, 23}, 0}, {{2016, 6, 24}, 0}, {{2016, 6, 27}, 0}, {{
            2016, 6, 28}, 0}, {{2016, 6, 29}, 0}, {{2016, 6, 30}, 0}, {{2016, 
            7, 1}, 0}, {{2016, 7, 5}, 0}, {{2016, 7, 6}, 0}, {{2016, 7, 7}, 
            0}, {{2016, 7, 8}, 0}, {{2016, 7, 11}, 0}, {{2016, 7, 12}, 0}, {{
            2016, 7, 13}, 0}, {{2016, 7, 14}, 0}, {{2016, 7, 15}, 0}, {{2016, 
            7, 18}, 0}, {{2016, 7, 19}, 0}, {{2016, 7, 20}, 0}, {{2016, 7, 
            21}, 0}, {{2016, 7, 22}, 0}, {{2016, 7, 25}, 0}, {{2016, 7, 26}, 
            0}, {{2016, 7, 27}, 0}, {{2016, 7, 28}, 0}, {{2016, 7, 29}, 0}, {{
            2016, 8, 1}, 0}, {{2016, 8, 2}, 0}, {{2016, 8, 3}, 0}, {{2016, 8, 
            4}, 0}, {{2016, 8, 5}, 0}, {{2016, 8, 8}, 0}, {{2016, 8, 9}, 
            0}, {{2016, 8, 10}, 0}, {{2016, 8, 11}, 0}, {{2016, 8, 12}, 0}, {{
            2016, 8, 15}, 0}, {{2016, 8, 16}, 0}, {{2016, 8, 17}, 0}, {{2016, 
            8, 18}, 0}, {{2016, 8, 19}, 0}, {{2016, 8, 22}, 0}, {{2016, 8, 
            23}, 0}, {{2016, 8, 24}, 0}, {{2016, 8, 25}, 0}, {{2016, 8, 26}, 
            0}, {{2016, 8, 29}, 0}, {{2016, 8, 30}, 0}, {{2016, 8, 31}, 0}, {{
            2016, 9, 1}, 0}, {{2016, 9, 2}, 0}, {{2016, 9, 6}, 0}, {{2016, 9, 
            7}, 0}, {{2016, 9, 8}, 0}, {{2016, 9, 9}, 0}, {{2016, 9, 12}, 
            0}, {{2016, 9, 13}, 0}, {{2016, 9, 14}, 0}, {{2016, 9, 15}, 0}, {{
            2016, 9, 16}, 0}, {{2016, 9, 19}, 0}, {{2016, 9, 20}, 0}, {{2016, 
            9, 21}, 0}, {{2016, 9, 22}, 0}, {{2016, 9, 23}, 0}, {{2016, 9, 
            26}, 0}, {{2016, 9, 27}, 0}, {{2016, 9, 28}, 0}, {{2016, 9, 29}, 
            0}, {{2016, 9, 30}, 0}, {{2016, 10, 3}, 0}, {{2016, 10, 4}, 0}, {{
            2016, 10, 5}, 0}, {{2016, 10, 6}, 0}, {{2016, 10, 7}, 0}, {{2016, 
            10, 10}, 0}, {{2016, 10, 11}, 0}, {{2016, 10, 12}, 0}, {{2016, 10,
             13}, 0}, {{2016, 10, 14}, 0}, {{2016, 10, 17}, 0}, {{2016, 10, 
            18}, 0}, {{2016, 10, 19}, 0}, {{2016, 10, 20}, 0}, {{2016, 10, 
            21}, 0}, {{2016, 10, 24}, 0}, {{2016, 10, 25}, 0}, {{2016, 10, 
            26}, 0}, {{2016, 10, 27}, 0}, {{2016, 10, 28}, 0}, {{2016, 10, 
            31}, 0}, {{2016, 11, 1}, 0}, {{2016, 11, 2}, 0}, {{2016, 11, 3}, 
            0}, {{2016, 11, 4}, 0}, {{2016, 11, 7}, 0}, {{2016, 11, 8}, 0}, {{
            2016, 11, 9}, 0}, {{2016, 11, 10}, 0}, {{2016, 11, 11}, 0}, {{
            2016, 11, 14}, 0}, {{2016, 11, 15}, 0}, {{2016, 11, 16}, 0}, {{
            2016, 11, 17}, 0}, {{2016, 11, 18}, 0}, {{2016, 11, 21}, 0}, {{
            2016, 11, 22}, 0}, {{2016, 11, 23}, 0}, {{2016, 11, 25}, 0}, {{
            2016, 11, 28}, 0}, {{2016, 11, 29}, 0}, {{2016, 11, 30}, 0}, {{
            2016, 12, 1}, 0}, {{2016, 12, 2}, 0}, {{2016, 12, 5}, 0}, {{2016, 
            12, 6}, 0}, {{2016, 12, 7}, 0}, {{2016, 12, 8}, 0}, {{2016, 12, 
            9}, 0}, {{2016, 12, 12}, 0}, {{2016, 12, 13}, 0}, {{2016, 12, 14},
             0}, {{2016, 12, 15}, 0}, {{2016, 12, 16}, 0}, {{2016, 12, 19}, 
            0}, {{2016, 12, 20}, 0}, {{2016, 12, 21}, 0}, {{2016, 12, 22}, 
            0}, {{2016, 12, 23}, 0}, {{2016, 12, 27}, 0}, {{2016, 12, 28}, 
            0}, {{2016, 12, 29}, 0}, {{2016, 12, 30}, 0}, {{2017, 1, 3}, 
            0}, {{2017, 1, 4}, 0}, {{2017, 1, 5}, 0}, {{2017, 1, 6}, 0}, {{
            2017, 1, 9}, 0}, {{2017, 1, 10}, 0}, {{2017, 1, 11}, 0}, {{2017, 
            1, 12}, 0}, {{2017, 1, 13}, 0}, {{2017, 1, 17}, 0}, {{2017, 1, 
            18}, 0}, {{2017, 1, 19}, 0}, {{2017, 1, 20}, 0}, {{2017, 1, 23}, 
            0}, {{2017, 1, 24}, 0}, {{2017, 1, 25}, 0}, {{2017, 1, 26}, 0}, {{
            2017, 1, 27}, 0}, {{2017, 1, 30}, 0}, {{2017, 1, 31}, 0}, {{2017, 
            2, 1}, 0}, {{2017, 2, 2}, 0}, {{2017, 2, 3}, 0}, {{2017, 2, 6}, 
            0}, {{2017, 2, 7}, 0}, {{2017, 2, 8}, 0}, {{2017, 2, 9}, 0}, {{
            2017, 2, 10}, 0}, {{2017, 2, 13}, 0}, {{2017, 2, 14}, 0}, {{2017, 
            2, 15}, 0}, {{2017, 2, 16}, 0}, {{2017, 2, 17}, 0}, {{2017, 2, 
            21}, 0}, {{2017, 2, 22}, 0}, {{2017, 2, 23}, 0}, {{2017, 2, 24}, 
            0}, {{2017, 2, 27}, 0}, {{2017, 2, 28}, 0}, {{2017, 3, 1}, 0}, {{
            2017, 3, 2}, 0}, {{2017, 3, 3}, 0}, {{2017, 3, 6}, 0}, {{2017, 3, 
            7}, 0}, {{2017, 3, 8}, 0}, {{2017, 3, 9}, 0}, {{2017, 3, 10}, 
            0}, {{2017, 3, 13}, 0}, {{2017, 3, 14}, 0}, {{2017, 3, 15}, 0}, {{
            2017, 3, 16}, 0}, {{2017, 3, 17}, 0}, {{2017, 3, 20}, 0}, {{2017, 
            3, 21}, 0}, {{2017, 3, 22}, 0}, {{2017, 3, 23}, 0}, {{2017, 3, 
            24}, 0}, {{2017, 3, 27}, 0}, {{2017, 3, 28}, 0}, {{2017, 3, 29}, 
            0}, {{2017, 3, 30}, 0}, {{2017, 3, 31}, 0}, {{2017, 4, 3}, 0}, {{
            2017, 4, 4}, 0}, {{2017, 4, 5}, 0}, {{2017, 4, 6}, 0}, {{2017, 4, 
            7}, 0}, {{2017, 4, 10}, 0}, {{2017, 4, 11}, 0}, {{2017, 4, 12}, 
            0}, {{2017, 4, 13}, 0}, {{2017, 4, 17}, 0}, {{2017, 4, 18}, 0}, {{
            2017, 4, 19}, 0}, {{2017, 4, 20}, 0}, {{2017, 4, 21}, 0}, {{2017, 
            4, 24}, 0}, {{2017, 4, 25}, 0}, {{2017, 4, 26}, 0}, {{2017, 4, 
            27}, 0}, {{2017, 4, 28}, 0}, {{2017, 5, 1}, 0}, {{2017, 5, 2}, 
            0}, {{2017, 5, 3}, 0}, {{2017, 5, 4}, 0}, {{2017, 5, 5}, 0}, {{
            2017, 5, 8}, 0}, {{2017, 5, 9}, 0}, {{2017, 5, 10}, 0}, {{2017, 5,
             11}, 0}, {{2017, 5, 12}, 0}, {{2017, 5, 15}, 0}, {{2017, 5, 16}, 
            0}, {{2017, 5, 17}, 0}, {{2017, 5, 18}, 0}, {{2017, 5, 19}, 0}, {{
            2017, 5, 22}, 0}, {{2017, 5, 23}, 0}, {{2017, 5, 24}, 0}, {{2017, 
            5, 25}, 0}, {{2017, 5, 26}, 0}, {{2017, 5, 30}, 0}, {{2017, 5, 
            31}, 0}, {{2017, 6, 1}, 0}, {{2017, 6, 2}, 0}, {{2017, 6, 5}, 
            0}, {{2017, 6, 6}, 0}, {{2017, 6, 7}, 0}, {{2017, 6, 8}, 0}, {{
            2017, 6, 9}, 0}, {{2017, 6, 12}, 0}, {{2017, 6, 13}, 0}, {{2017, 
            6, 14}, 0}, {{2017, 6, 15}, 0}, {{2017, 6, 16}, 0}, {{2017, 6, 
            19}, 0}}, 
         "min" -> {{{2016, 6, 20}, 6.825027942657471}, {{2016, 6, 21}, 
            6.834080219268799}, {{2016, 6, 22}, 6.897441864013672}, {{2016, 6,
             23}, 6.915545463562012}, {{2016, 6, 24}, 6.770717620849609}, {{
            2016, 6, 27}, 6.7616658210754395`}, {{2016, 6, 28}, 
            6.788820743560791}, {{2016, 6, 29}, 6.852183818817139}, {{2016, 6,
             30}, 6.951752662658691}, {{2016, 7, 1}, 7.024167060852051}, {{
            2016, 7, 5}, 7.024167060852051}, {{2016, 7, 6}, 
            7.0603742599487305`}, {{2016, 7, 7}, 7.024167060852051}, {{2016, 
            7, 8}, 7.150891304016113}, {{2016, 7, 11}, 7.205201625823975}, {{
            2016, 7, 12}, 7.2142534255981445`}, {{2016, 7, 13}, 
            7.205201625823975}, {{2016, 7, 14}, 7.2595133781433105`}, {{2016, 
            7, 15}, 7.28666877746582}, {{2016, 7, 18}, 7.368134021759033}, {{
            2016, 7, 19}, 7.350030422210693}, {{2016, 7, 20}, 
            7.331927299499512}, {{2016, 7, 21}, 7.413391590118408}, {{2016, 7,
             22}, 7.494858741760254}, {{2016, 7, 25}, 7.467702865600586}, {{
            2016, 7, 26}, 7.503910541534424}, {{2016, 7, 27}, 
            7.494858741760254}, {{2016, 7, 28}, 7.295720100402832}, {{2016, 7,
             29}, 7.512962341308594}, {{2016, 8, 1}, 7.503910541534424}, {{
            2016, 8, 2}, 7.440547943115234}, {{2016, 8, 3}, 
            7.485806941986084}, {{2016, 8, 4}, 7.522014141082764}, {{2016, 8, 
            5}, 7.540117263793945}, {{2016, 8, 8}, 7.603479385375977}, {{2016,
             8, 9}, 7.576324462890625}, {{2016, 8, 10}, 7.657790184020996}, {{
            2016, 8, 11}, 7.675893783569336}, {{2016, 8, 12}, 
            7.675893783569336}, {{2016, 8, 15}, 7.703049182891846}, {{2016, 8,
             16}, 7.684945106506348}, {{2016, 8, 17}, 7.703049182891846}, {{
            2016, 8, 18}, 7.721152305603027}, {{2016, 8, 19}, 
            7.820722579956055}, {{2016, 8, 22}, 7.856929302215576}, {{2016, 8,
             23}, 7.902186393737793}, {{2016, 8, 24}, 7.802618503570557}, {{
            2016, 8, 25}, 7.784515380859375}, {{2016, 8, 26}, 
            7.784515380859375}, {{2016, 8, 29}, 7.8388261795043945`}, {{2016, 
            8, 30}, 7.811670780181885}, {{2016, 8, 31}, 7.856929302215576}, {{
            2016, 9, 1}, 7.847877502441406}, {{2016, 9, 2}, 
            7.86598014831543}, {{2016, 9, 6}, 7.8931355476379395`}, {{2016, 9,
             7}, 7.875031471252441}, {{2016, 9, 8}, 7.920290470123291}, {{
            2016, 9, 9}, 7.875031471252441}, {{2016, 9, 12}, 
            7.693997859954834}, {{2016, 9, 13}, 7.666841983795166}, {{2016, 9,
             14}, 7.703049182891846}, {{2016, 9, 15}, 7.683577060699463}, {{
            2016, 9, 16}, 7.665018558502197}, {{2016, 9, 19}, 
            7.665018558502197}, {{2016, 9, 20}, 7.6928582191467285`}, {{2016, 
            9, 21}, 7.665018558502197}, {{2016, 9, 22}, 7.6186203956604}, {{
            2016, 9, 23}, 7.674298286437988}, {{2016, 9, 26}, 
            7.60006046295166}, {{2016, 9, 27}, 7.572221755981445}, {{2016, 9, 
            28}, 7.5907816886901855`}, {{2016, 9, 29}, 7.646458625793457}, {{
            2016, 9, 30}, 7.646458625793457}, {{2016, 10, 3}, 
            7.637178897857666}, {{2016, 10, 4}, 7.4701457023620605`}, {{2016, 
            10, 5}, 7.497984409332275}, {{2016, 10, 6}, 7.507264137268066}, {{
            2016, 10, 7}, 7.4701457023620605`}, {{2016, 10, 10}, 
            7.4701457023620605`}, {{2016, 10, 11}, 7.377347946166992}, {{2016,
             10, 12}, 7.377347946166992}, {{2016, 10, 13}, 
            7.340229511260986}, {{2016, 10, 14}, 7.1917548179626465`}, {{2016,
             10, 17}, 7.2010345458984375`}, {{2016, 10, 18}, 
            7.247432708740234}, {{2016, 10, 19}, 7.265992164611816}, {{2016, 
            10, 20}, 7.265992164611816}, {{2016, 10, 21}, 
            7.265992164611816}, {{2016, 10, 24}, 7.265992164611816}, {{2016, 
            10, 25}, 7.2103142738342285`}, {{2016, 10, 26}, 
            7.163915634155273}, {{2016, 10, 27}, 7.154636383056641}, {{2016, 
            10, 28}, 7.043280124664307}, {{2016, 10, 31}, 
            6.9597625732421875`}, {{2016, 11, 1}, 6.9040846824646}, {{2016, 
            11, 2}, 6.8391265869140625`}, {{2016, 11, 3}, 
            6.356583118438721}, {{2016, 11, 4}, 6.263786315917969}, {{2016, 
            11, 7}, 6.310184955596924}, {{2016, 11, 8}, 6.338024139404297}, {{
            2016, 11, 9}, 6.338024139404297}, {{2016, 11, 10}, 
            6.542177200317383}, {{2016, 11, 11}, 6.727770805358887}, {{2016, 
            11, 14}, 6.774169445037842}, {{2016, 11, 15}, 
            6.774169445037842}, {{2016, 11, 16}, 6.727770805358887}, {{2016, 
            11, 17}, 6.737050533294678}, {{2016, 11, 18}, 
            6.718491077423096}, {{2016, 11, 21}, 6.783448696136475}, {{2016, 
            11, 22}, 6.866966247558594}, {{2016, 11, 23}, 
            6.8205671310424805`}, {{2016, 11, 25}, 6.792728900909424}, {{2016,
             11, 28}, 6.8484063148498535`}, {{2016, 11, 29}, 
            6.8484063148498535`}, {{2016, 11, 30}, 6.8205671310424805`}, {{
            2016, 12, 1}, 6.8484063148498535`}, {{2016, 12, 2}, 
            6.737050533294678}, {{2016, 12, 5}, 6.737050533294678}, {{2016, 
            12, 6}, 6.774169445037842}, {{2016, 12, 7}, 
            6.8391265869140625`}, {{2016, 12, 8}, 6.913363933563232}, {{2016, 
            12, 9}, 7.015440464019775}, {{2016, 12, 12}, 
            7.117517948150635}, {{2016, 12, 13}, 7.0525593757629395`}, {{2016,
             12, 14}, 7.033999919891357}, {{2016, 12, 15}, 
            6.989957809448242}, {{2016, 12, 16}, 6.923205852508545}, {{2016, 
            12, 19}, 7.009030342102051}, {{2016, 12, 20}, 
            6.932741641998291}, {{2016, 12, 21}, 6.923205852508545}, {{2016, 
            12, 22}, 6.865988731384277}, {{2016, 12, 23}, 
            6.732483863830566}, {{2016, 12, 27}, 6.713411331176758}, {{2016, 
            12, 28}, 6.675267219543457}, {{2016, 12, 29}, 
            6.637122631072998}, {{2016, 12, 30}, 6.560833930969238}, {{2017, 
            1, 3}, 6.598978519439697}, {{2017, 1, 4}, 6.942277908325195}, {{
            2017, 1, 5}, 6.923205852508545}, {{2017, 1, 6}, 
            7.018566608428955}, {{2017, 1, 9}, 7.056711196899414}, {{2017, 1, 
            10}, 7.009030342102051}, {{2017, 1, 11}, 7.018566608428955}, {{
            2017, 1, 12}, 7.009030342102051}, {{2017, 1, 13}, 
            6.961349964141846}, {{2017, 1, 17}, 6.865988731384277}, {{2017, 1,
             18}, 6.8183088302612305`}, {{2017, 1, 19}, 
            6.8183088302612305`}, {{2017, 1, 20}, 6.904133319854736}, {{2017, 
            1, 23}, 6.97088623046875}, {{2017, 1, 24}, 6.980422496795654}, {{
            2017, 1, 25}, 6.932741641998291}, {{2017, 1, 26}, 
            7.037639141082764}, {{2017, 1, 27}, 6.9518141746521}, {{2017, 1, 
            30}, 6.913669586181641}, {{2017, 1, 31}, 6.89459753036499}, {{
            2017, 2, 1}, 6.904133319854736}, {{2017, 2, 2}, 
            6.89459753036499}, {{2017, 2, 3}, 6.97088623046875}, {{2017, 2, 
            6}, 7.056711196899414}, {{2017, 2, 7}, 7.094855785369873}, {{2017,
             2, 8}, 7.056711196899414}, {{2017, 2, 9}, 
            7.0853190422058105`}, {{2017, 2, 10}, 7.123463153839111}, {{2017, 
            2, 13}, 7.285577297210693}, {{2017, 2, 14}, 7.266504764556885}, {{
            2017, 2, 15}, 7.276041507720947}, {{2017, 2, 16}, 
            7.276041507720947}, {{2017, 2, 17}, 7.323721408843994}, {{2017, 2,
             21}, 7.323721408843994}, {{2017, 2, 22}, 7.314185619354248}, {{
            2017, 2, 23}, 7.361865997314453}, {{2017, 2, 24}, 
            7.409546375274658}, {{2017, 2, 27}, 7.419083118438721}, {{2017, 2,
             28}, 7.285577297210693}, {{2017, 3, 1}, 7.400010585784912}, {{
            2017, 3, 2}, 7.304649353027344}, {{2017, 3, 3}, 
            7.285577297210693}, {{2017, 3, 6}, 7.323721408843994}, {{2017, 3, 
            7}, 7.247432708740234}, {{2017, 3, 8}, 7.152071475982666}, {{2017,
             3, 9}, 6.961349964141846}, {{2017, 3, 10}, 7.056711196899414}, {{
            2017, 3, 13}, 7.256969451904297}, {{2017, 3, 14}, 
            7.1616082191467285`}, {{2017, 3, 15}, 7.123463153839111}, {{2017, 
            3, 16}, 7.1304521560668945`}, {{2017, 3, 17}, 
            7.169522762298584}, {{2017, 3, 20}, 7.2281293869018555`}, {{2017, 
            3, 21}, 7.1304521560668945`}, {{2017, 3, 22}, 
            7.032773971557617}, {{2017, 3, 23}, 7.071845054626465}, {{2017, 3,
             24}, 7.091381072998047}, {{2017, 3, 27}, 7.042541980743408}, {{
            2017, 3, 28}, 7.10114860534668}, {{2017, 3, 29}, 
            7.198825836181641}, {{2017, 3, 30}, 7.257432460784912}, {{2017, 3,
             31}, 7.296503067016602}, {{2017, 4, 3}, 7.2183613777160645`}, {{
            2017, 4, 4}, 7.10114860534668}, {{2017, 4, 5}, 
            7.081613063812256}, {{2017, 4, 6}, 7.081613063812256}, {{2017, 4, 
            7}, 7.10114860534668}, {{2017, 4, 10}, 7.081613063812256}, {{2017,
             4, 11}, 7.062077522277832}, {{2017, 4, 12}, 
            7.003471374511719}, {{2017, 4, 13}, 7.003471374511719}, {{2017, 4,
             17}, 7.032773971557617}, {{2017, 4, 18}, 7.042541980743408}, {{
            2017, 4, 19}, 7.091381072998047}, {{2017, 4, 20}, 
            7.042541980743408}, {{2017, 4, 21}, 7.1304521560668945`}, {{2017, 
            4, 24}, 7.1206841468811035`}, {{2017, 4, 25}, 
            7.1304521560668945`}, {{2017, 4, 26}, 7.14998722076416}, {{2017, 
            4, 27}, 7.1206841468811035`}, {{2017, 4, 28}, 
            7.1206841468811035`}, {{2017, 5, 1}, 7.1304521560668945`}, {{2017,
             5, 2}, 7.1304521560668945`}, {{2017, 5, 3}, 
            7.189058303833008}, {{2017, 5, 4}, 7.2281293869018555`}, {{2017, 
            5, 5}, 7.374645709991455}, {{2017, 5, 8}, 7.34534215927124}, {{
            2017, 5, 9}, 7.276967525482178}, {{2017, 5, 10}, 
            7.267199993133545}, {{2017, 5, 11}, 7.237896919250488}, {{2017, 5,
             12}, 7.237896919250488}, {{2017, 5, 15}, 7.267199993133545}, {{
            2017, 5, 16}, 7.286735534667969}, {{2017, 5, 17}, 
            7.296503067016602}, {{2017, 5, 18}, 7.296503067016602}, {{2017, 5,
             19}, 7.286735534667969}, {{2017, 5, 22}, 7.374645709991455}, {{
            2017, 5, 23}, 7.423483848571777}, {{2017, 5, 24}, 
            7.423483848571777}, {{2017, 5, 25}, 7.443019390106201}, {{2017, 5,
             26}, 7.443019390106201}, {{2017, 5, 30}, 7.472322940826416}, {{
            2017, 5, 31}, 7.521161079406738}, {{2017, 6, 1}, 
            7.589535713195801}, {{2017, 6, 2}, 7.599303722381592}, {{2017, 6, 
            5}, 7.521161079406738}, {{2017, 6, 6}, 7.49185848236084}, {{2017, 
            6, 7}, 7.472322940826416}, {{2017, 6, 8}, 7.364877700805664}, {{
            2017, 6, 9}, 7.374645709991455}, {{2017, 6, 12}, 
            7.472322940826416}, {{2017, 6, 13}, 7.335574626922607}, {{2017, 6,
             14}, 7.423483848571777}, {{2017, 6, 15}, 7.389999866485596}, {{
            2017, 6, 16}, 7.429999828338623}, {{2017, 6, 19}, 
            7.480000019073486}}, 
         "max" -> {{{2016, 6, 20}, 6.906494140625}, {{2016, 6, 21}, 
            6.960804462432861}, {{2016, 6, 22}, 6.960804462432861}, {{2016, 6,
             23}, 7.015114784240723}, {{2016, 6, 24}, 7.0332183837890625`}, {{
            2016, 6, 27}, 6.915545463562012}, {{2016, 6, 28}, 
            6.906494140625}, {{2016, 6, 29}, 6.969856262207031}, {{2016, 6, 
            30}, 7.042270660400391}, {{2016, 7, 1}, 7.1237359046936035`}, {{
            2016, 7, 5}, 7.132788181304932}, {{2016, 7, 6}, 
            7.150891304016113}, {{2016, 7, 7}, 7.178046703338623}, {{2016, 7, 
            8}, 7.2595133781433105`}, {{2016, 7, 11}, 7.277616500854492}, {{
            2016, 7, 12}, 7.277616500854492}, {{2016, 7, 13}, 
            7.295720100402832}, {{2016, 7, 14}, 7.295720100402832}, {{2016, 7,
             15}, 7.377185344696045}, {{2016, 7, 18}, 7.440547943115234}, {{
            2016, 7, 19}, 7.494858741760254}, {{2016, 7, 20}, 
            7.485806941986084}, {{2016, 7, 21}, 7.522014141082764}, {{2016, 7,
             22}, 7.549169063568115}, {{2016, 7, 25}, 7.576324462890625}, {{
            2016, 7, 26}, 7.558220863342285}, {{2016, 7, 27}, 
            7.603479385375977}, {{2016, 7, 28}, 7.693997859954834}, {{2016, 7,
             29}, 7.6125311851501465`}, {{2016, 8, 1}, 7.594428539276123}, {{
            2016, 8, 2}, 7.512962341308594}, {{2016, 8, 3}, 
            7.585375785827637}, {{2016, 8, 4}, 7.594428539276123}, {{2016, 8, 
            5}, 7.639686107635498}, {{2016, 8, 8}, 7.639686107635498}, {{2016,
             8, 9}, 7.684945106506348}, {{2016, 8, 10}, 7.739256381988525}, {{
            2016, 8, 11}, 7.757359504699707}, {{2016, 8, 12}, 
            7.784515380859375}, {{2016, 8, 15}, 7.784515380859375}, {{2016, 8,
             16}, 7.784515380859375}, {{2016, 8, 17}, 7.775463581085205}, {{
            2016, 8, 18}, 7.884083271026611}, {{2016, 8, 19}, 
            7.920290470123291}, {{2016, 8, 22}, 7.911239147186279}, {{2016, 8,
             23}, 7.965549468994141}, {{2016, 8, 24}, 7.947445392608643}, {{
            2016, 8, 25}, 7.884083271026611}, {{2016, 8, 26}, 
            7.875031471252441}, {{2016, 8, 29}, 7.911239147186279}, {{2016, 8,
             30}, 8.00175666809082}, {{2016, 8, 31}, 7.965549468994141}, {{
            2016, 9, 1}, 7.8931355476379395`}, {{2016, 9, 2}, 
            8.010809898376465}, {{2016, 9, 6}, 8.028912544250488}, {{2016, 9, 
            7}, 7.956498146057129}, {{2016, 9, 8}, 7.965549468994141}, {{2016,
             9, 9}, 7.965549468994141}, {{2016, 9, 12}, 7.911239147186279}, {{
            2016, 9, 13}, 7.757359504699707}, {{2016, 9, 14}, 
            7.856929302215576}, {{2016, 9, 15}, 7.794933319091797}, {{2016, 9,
             16}, 7.739256381988525}, {{2016, 9, 19}, 7.804213523864746}, {{
            2016, 9, 20}, 7.776374816894531}, {{2016, 9, 21}, 
            7.794933319091797}, {{2016, 9, 22}, 7.813493251800537}, {{2016, 9,
             23}, 7.757814884185791}, {{2016, 9, 26}, 7.720696449279785}, {{
            2016, 9, 27}, 7.646458625793457}, {{2016, 9, 28}, 
            7.6928582191467285`}, {{2016, 9, 29}, 7.7114176750183105`}, {{
            2016, 9, 30}, 7.76709508895874}, {{2016, 10, 3}, 
            7.776374816894531}, {{2016, 10, 4}, 7.7114176750183105`}, {{2016, 
            10, 5}, 7.655738830566406}, {{2016, 10, 6}, 7.609340190887451}, {{
            2016, 10, 7}, 7.5536627769470215`}, {{2016, 10, 10}, 
            7.562942028045654}, {{2016, 10, 11}, 7.497984409332275}, {{2016, 
            10, 12}, 7.497984409332275}, {{2016, 10, 13}, 
            7.423746585845947}, {{2016, 10, 14}, 7.45158576965332}, {{2016, 
            10, 17}, 7.275271892547607}, {{2016, 10, 18}, 
            7.3123908042907715`}, {{2016, 10, 19}, 7.3123908042907715`}, {{
            2016, 10, 20}, 7.3031110763549805`}, {{2016, 10, 21}, 
            7.321670055389404}, {{2016, 10, 24}, 7.321670055389404}, {{2016, 
            10, 25}, 7.28455114364624}, {{2016, 10, 26}, 
            7.238153457641602}, {{2016, 10, 27}, 7.2288737297058105`}, {{2016,
             10, 28}, 7.1917548179626465`}, {{2016, 10, 31}, 
            7.0618391036987305`}, {{2016, 11, 1}, 7.015440464019775}, {{2016, 
            11, 2}, 6.9597625732421875`}, {{2016, 11, 3}, 
            6.8391265869140625`}, {{2016, 11, 4}, 6.495778560638428}, {{2016, 
            11, 7}, 6.430820941925049}, {{2016, 11, 8}, 6.449379920959473}, {{
            2016, 11, 9}, 6.579295635223389}, {{2016, 11, 10}, 
            6.774169445037842}, {{2016, 11, 11}, 6.802008152008057}, {{2016, 
            11, 14}, 6.8576860427856445`}, {{2016, 11, 15}, 
            6.8576860427856445`}, {{2016, 11, 16}, 6.8205671310424805`}, {{
            2016, 11, 17}, 6.783448696136475}, {{2016, 11, 18}, 
            6.8391265869140625`}, {{2016, 11, 21}, 6.866966247558594}, {{2016,
             11, 22}, 6.931922912597656}, {{2016, 11, 23}, 
            6.931922912597656}, {{2016, 11, 25}, 6.9040846824646}, {{2016, 11,
             28}, 6.941203594207764}, {{2016, 11, 29}, 
            6.9783220291137695`}, {{2016, 11, 30}, 6.9504828453063965`}, {{
            2016, 12, 1}, 6.9504828453063965`}, {{2016, 12, 2}, 
            6.885525226593018}, {{2016, 12, 5}, 6.811287879943848}, {{2016, 
            12, 6}, 6.922643661499023}, {{2016, 12, 7}, 
            6.9597625732421875`}, {{2016, 12, 8}, 7.0989580154418945`}, {{
            2016, 12, 9}, 7.108237266540527}, {{2016, 12, 12}, 
            7.321670055389404}, {{2016, 12, 13}, 7.3309502601623535`}, {{2016,
             12, 14}, 7.3309502601623535`}, {{2016, 12, 15}, 
            7.247432708740234}, {{2016, 12, 16}, 7.094855785369873}, {{2016, 
            12, 19}, 7.0853190422058105`}, {{2016, 12, 20}, 
            7.0853190422058105`}, {{2016, 12, 21}, 7.009030342102051}, {{2016,
             12, 22}, 6.9518141746521}, {{2016, 12, 23}, 
            6.885060787200928}, {{2016, 12, 27}, 6.789700508117676}, {{2016, 
            12, 28}, 6.789700508117676}, {{2016, 12, 29}, 
            6.770627975463867}, {{2016, 12, 30}, 6.703875541687012}, {{2017, 
            1, 3}, 6.9518141746521}, {{2017, 1, 4}, 7.228360652923584}, {{
            2017, 1, 5}, 7.152071475982666}, {{2017, 1, 6}, 
            7.104391098022461}, {{2017, 1, 9}, 7.094855785369873}, {{2017, 1, 
            10}, 7.0757832527160645`}, {{2017, 1, 11}, 7.113927841186523}, {{
            2017, 1, 12}, 7.113927841186523}, {{2017, 1, 13}, 
            7.094855785369873}, {{2017, 1, 17}, 7.056711196899414}, {{2017, 1,
             18}, 6.9518141746521}, {{2017, 1, 19}, 6.923205852508545}, {{
            2017, 1, 20}, 7.009030342102051}, {{2017, 1, 23}, 
            7.06624698638916}, {{2017, 1, 24}, 7.056711196899414}, {{2017, 1, 
            25}, 7.104391098022461}, {{2017, 1, 26}, 7.123463153839111}, {{
            2017, 1, 27}, 7.056711196899414}, {{2017, 1, 30}, 
            7.037639141082764}, {{2017, 1, 31}, 6.980422496795654}, {{2017, 2,
             1}, 6.989957809448242}, {{2017, 2, 2}, 6.980422496795654}, {{
            2017, 2, 3}, 7.1616082191467285`}, {{2017, 2, 6}, 
            7.190216064453125}, {{2017, 2, 7}, 7.171144008636475}, {{2017, 2, 
            8}, 7.152071475982666}, {{2017, 2, 9}, 7.180680274963379}, {{2017,
             2, 10}, 7.333257675170898}, {{2017, 2, 13}, 
            7.3809380531311035`}, {{2017, 2, 14}, 7.352329730987549}, {{2017, 
            2, 15}, 7.409546375274658}, {{2017, 2, 16}, 7.361865997314453}, {{
            2017, 2, 17}, 7.409546375274658}, {{2017, 2, 21}, 
            7.485835075378418}, {{2017, 2, 22}, 7.476299285888672}, {{2017, 2,
             23}, 7.523979663848877}, {{2017, 2, 24}, 7.523979663848877}, {{
            2017, 2, 27}, 7.514443397521973}, {{2017, 2, 28}, 
            7.476299285888672}, {{2017, 3, 1}, 7.495371341705322}, {{2017, 3, 
            2}, 7.428618431091309}, {{2017, 3, 3}, 7.428618431091309}, {{2017,
             3, 6}, 7.419083118438721}, {{2017, 3, 7}, 7.371401786804199}, {{
            2017, 3, 8}, 7.323721408843994}, {{2017, 3, 9}, 
            7.209288120269775}, {{2017, 3, 10}, 7.371401786804199}, {{2017, 3,
             13}, 7.361865997314453}, {{2017, 3, 14}, 7.285577297210693}, {{
            2017, 3, 15}, 7.276041507720947}, {{2017, 3, 16}, 
            7.325806617736816}, {{2017, 3, 17}, 7.4039483070373535`}, {{2017, 
            3, 20}, 7.423483848571777}, {{2017, 3, 21}, 7.306271076202393}, {{
            2017, 3, 22}, 7.14998722076416}, {{2017, 3, 23}, 
            7.179290294647217}, {{2017, 3, 24}, 7.208593845367432}, {{2017, 3,
             27}, 7.140219688415527}, {{2017, 3, 28}, 7.2183613777160645`}, {{
            2017, 3, 29}, 7.267199993133545}, {{2017, 3, 30}, 
            7.374645709991455}, {{2017, 3, 31}, 7.374645709991455}, {{2017, 4,
             3}, 7.423483848571777}, {{2017, 4, 4}, 7.247664928436279}, {{
            2017, 4, 5}, 7.2183613777160645`}, {{2017, 4, 6}, 
            7.169522762298584}, {{2017, 4, 7}, 7.198825836181641}, {{2017, 4, 
            10}, 7.159754753112793}, {{2017, 4, 11}, 7.169522762298584}, {{
            2017, 4, 12}, 7.179290294647217}, {{2017, 4, 13}, 
            7.110916614532471}, {{2017, 4, 17}, 7.1206841468811035`}, {{2017, 
            4, 18}, 7.1206841468811035`}, {{2017, 4, 19}, 
            7.159754753112793}, {{2017, 4, 20}, 7.14998722076416}, {{2017, 4, 
            21}, 7.169522762298584}, {{2017, 4, 24}, 7.179290294647217}, {{
            2017, 4, 25}, 7.2183613777160645`}, {{2017, 4, 26}, 
            7.2281293869018555`}, {{2017, 4, 27}, 7.189058303833008}, {{2017, 
            4, 28}, 7.208593845367432}, {{2017, 5, 1}, 7.189058303833008}, {{
            2017, 5, 2}, 7.2281293869018555`}, {{2017, 5, 3}, 
            7.267199993133545}, {{2017, 5, 4}, 7.433251857757568}, {{2017, 5, 
            5}, 7.472322940826416}, {{2017, 5, 8}, 7.472322940826416}, {{2017,
             5, 9}, 7.4137163162231445`}, {{2017, 5, 10}, 
            7.34534215927124}, {{2017, 5, 11}, 7.374645709991455}, {{2017, 5, 
            12}, 7.34534215927124}, {{2017, 5, 15}, 7.374645709991455}, {{
            2017, 5, 16}, 7.364877700805664}, {{2017, 5, 17}, 
            7.364877700805664}, {{2017, 5, 18}, 7.394180774688721}, {{2017, 5,
             19}, 7.443019390106201}, {{2017, 5, 22}, 7.521161079406738}, {{
            2017, 5, 23}, 7.560232162475586}, {{2017, 5, 24}, 
            7.5113935470581055`}, {{2017, 5, 25}, 7.560232162475586}, {{2017, 
            5, 26}, 7.540696620941162}, {{2017, 5, 30}, 7.560232162475586}, {{
            2017, 5, 31}, 7.618839263916016}, {{2017, 6, 1}, 
            7.628606796264648}, {{2017, 6, 2}, 7.696980953216553}, {{2017, 6, 
            5}, 7.638374328613281}, {{2017, 6, 6}, 7.560232162475586}, {{2017,
             6, 7}, 7.570000171661377}, {{2017, 6, 8}, 7.609071254730225}, {{
            2017, 6, 9}, 7.472322940826416}, {{2017, 6, 12}, 
            7.570000171661377}, {{2017, 6, 13}, 7.560232162475586}, {{2017, 6,
             14}, 7.599303722381592}, {{2017, 6, 15}, 7.619999885559082}, {{
            2017, 6, 16}, 7.510000228881836}, {{2017, 6, 19}, 
            7.559999942779541}}, 
         "close" -> {{{2016, 6, 20}, 6.879339218139648}, {{2016, 6, 21}, 
            6.92459774017334}, {{2016, 6, 22}, 6.933649063110352}, {{2016, 6, 
            23}, 6.969856262207031}, {{2016, 6, 24}, 6.951752662658691}, {{
            2016, 6, 27}, 6.788820743560791}, {{2016, 6, 28}, 
            6.806924343109131}, {{2016, 6, 29}, 6.94270133972168}, {{2016, 6, 
            30}, 7.042270660400391}, {{2016, 7, 1}, 7.08752965927124}, {{2016,
             7, 5}, 7.132788181304932}, {{2016, 7, 6}, 7.08752965927124}, {{
            2016, 7, 7}, 7.159943103790283}, {{2016, 7, 8}, 
            7.232357025146484}, {{2016, 7, 11}, 7.232357025146484}, {{2016, 7,
             12}, 7.268564224243164}, {{2016, 7, 13}, 7.250461101531982}, {{
            2016, 7, 14}, 7.28666877746582}, {{2016, 7, 15}, 
            7.368134021759033}, {{2016, 7, 18}, 7.413391590118408}, {{2016, 7,
             19}, 7.458651542663574}, {{2016, 7, 20}, 7.476755619049072}, {{
            2016, 7, 21}, 7.503910541534424}, {{2016, 7, 22}, 
            7.503910541534424}, {{2016, 7, 25}, 7.549169063568115}, {{2016, 7,
             26}, 7.522014141082764}, {{2016, 7, 27}, 7.531065940856934}, {{
            2016, 7, 28}, 7.576324462890625}, {{2016, 7, 29}, 
            7.567271709442139}, {{2016, 8, 1}, 7.512962341308594}, {{2016, 8, 
            2}, 7.467702865600586}, {{2016, 8, 3}, 7.576324462890625}, {{2016,
             8, 4}, 7.567271709442139}, {{2016, 8, 5}, 7.639686107635498}, {{
            2016, 8, 8}, 7.603479385375977}, {{2016, 8, 9}, 
            7.666841983795166}, {{2016, 8, 10}, 7.712101459503174}, {{2016, 8,
             11}, 7.712101459503174}, {{2016, 8, 12}, 7.721152305603027}, {{
            2016, 8, 15}, 7.739256381988525}, {{2016, 8, 16}, 
            7.757359504699707}, {{2016, 8, 17}, 7.757359504699707}, {{2016, 8,
             18}, 7.86598014831543}, {{2016, 8, 19}, 7.902186393737793}, {{
            2016, 8, 22}, 7.875031471252441}, {{2016, 8, 23}, 
            7.947445392608643}, {{2016, 8, 24}, 7.875031471252441}, {{2016, 8,
             25}, 7.802618503570557}, {{2016, 8, 26}, 7.856929302215576}, {{
            2016, 8, 29}, 7.8931355476379395`}, {{2016, 8, 30}, 
            7.956498146057129}, {{2016, 8, 31}, 7.8931355476379395`}, {{2016, 
            9, 1}, 7.86598014831543}, {{2016, 9, 2}, 7.992705345153809}, {{
            2016, 9, 6}, 7.938395023345947}, {{2016, 9, 7}, 
            7.929343223571777}, {{2016, 9, 8}, 7.956498146057129}, {{2016, 9, 
            9}, 7.911239147186279}, {{2016, 9, 12}, 7.802618503570557}, {{
            2016, 9, 13}, 7.693997859954834}, {{2016, 9, 14}, 
            7.739256381988525}, {{2016, 9, 15}, 7.76709508895874}, {{2016, 9, 
            16}, 7.683577060699463}, {{2016, 9, 19}, 7.683577060699463}, {{
            2016, 9, 20}, 7.7114176750183105`}, {{2016, 9, 21}, 
            7.683577060699463}, {{2016, 9, 22}, 7.674298286437988}, {{2016, 9,
             23}, 7.720696449279785}, {{2016, 9, 26}, 7.609340190887451}, {{
            2016, 9, 27}, 7.627900123596191}, {{2016, 9, 28}, 
            7.665018558502197}, {{2016, 9, 29}, 7.683577060699463}, {{2016, 9,
             30}, 7.683577060699463}, {{2016, 10, 3}, 7.646458625793457}, {{
            2016, 10, 4}, 7.5536627769470215`}, {{2016, 10, 5}, 
            7.627900123596191}, {{2016, 10, 6}, 7.507264137268066}, {{2016, 
            10, 7}, 7.488704681396484}, {{2016, 10, 10}, 
            7.488704681396484}, {{2016, 10, 11}, 7.423746585845947}, {{2016, 
            10, 12}, 7.423746585845947}, {{2016, 10, 13}, 
            7.405187606811523}, {{2016, 10, 14}, 7.238153457641602}, {{2016, 
            10, 17}, 7.247432708740234}, {{2016, 10, 18}, 
            7.275271892547607}, {{2016, 10, 19}, 7.275271892547607}, {{2016, 
            10, 20}, 7.265992164611816}, {{2016, 10, 21}, 
            7.275271892547607}, {{2016, 10, 24}, 7.2938313484191895`}, {{2016,
             10, 25}, 7.247432708740234}, {{2016, 10, 26}, 
            7.1917548179626465`}, {{2016, 10, 27}, 7.1917548179626465`}, {{
            2016, 10, 28}, 7.0989580154418945`}, {{2016, 10, 31}, 
            6.9783220291137695`}, {{2016, 11, 1}, 6.9040846824646}, {{2016, 
            11, 2}, 6.885525226593018}, {{2016, 11, 3}, 6.505058765411377}, {{
            2016, 11, 4}, 6.291625499725342}, {{2016, 11, 7}, 
            6.338024139404297}, {{2016, 11, 8}, 6.421541213989258}, {{2016, 
            11, 9}, 6.51433801651001}, {{2016, 11, 10}, 6.737050533294678}, {{
            2016, 11, 11}, 6.764889717102051}, {{2016, 11, 14}, 
            6.783448696136475}, {{2016, 11, 15}, 6.802008152008057}, {{2016, 
            11, 16}, 6.75560998916626}, {{2016, 11, 17}, 
            6.783448696136475}, {{2016, 11, 18}, 6.82984733581543}, {{2016, 
            11, 21}, 6.8205671310424805`}, {{2016, 11, 22}, 
            6.885525226593018}, {{2016, 11, 23}, 6.8484063148498535`}, {{2016,
             11, 25}, 6.9040846824646}, {{2016, 11, 28}, 
            6.8576860427856445`}, {{2016, 11, 29}, 6.9040846824646}, {{2016, 
            11, 30}, 6.876245498657227}, {{2016, 12, 1}, 
            6.8484063148498535`}, {{2016, 12, 2}, 6.75560998916626}, {{2016, 
            12, 5}, 6.802008152008057}, {{2016, 12, 6}, 6.876245498657227}, {{
            2016, 12, 7}, 6.941203594207764}, {{2016, 12, 8}, 
            7.0896782875061035`}, {{2016, 12, 9}, 7.0896782875061035`}, {{
            2016, 12, 12}, 7.3031110763549805`}, {{2016, 12, 13}, 
            7.080399036407471}, {{2016, 12, 14}, 7.247432708740234}, {{2016, 
            12, 15}, 6.999494552612305}, {{2016, 12, 16}, 
            7.047174453735352}, {{2016, 12, 19}, 7.056711196899414}, {{2016, 
            12, 20}, 7.009030342102051}, {{2016, 12, 21}, 
            6.932741641998291}, {{2016, 12, 22}, 6.913669586181641}, {{2016, 
            12, 23}, 6.789700508117676}, {{2016, 12, 27}, 
            6.732483863830566}, {{2016, 12, 28}, 6.703875541687012}, {{2016, 
            12, 29}, 6.703875541687012}, {{2016, 12, 30}, 
            6.637122631072998}, {{2017, 1, 3}, 6.904133319854736}, {{2017, 1, 
            4}, 7.152071475982666}, {{2017, 1, 5}, 7.0757832527160645`}, {{
            2017, 1, 6}, 7.0757832527160645`}, {{2017, 1, 9}, 
            7.056711196899414}, {{2017, 1, 10}, 7.018566608428955}, {{2017, 1,
             11}, 7.094855785369873}, {{2017, 1, 12}, 7.037639141082764}, {{
            2017, 1, 13}, 6.980422496795654}, {{2017, 1, 17}, 
            6.885060787200928}, {{2017, 1, 18}, 6.856452941894531}, {{2017, 1,
             19}, 6.904133319854736}, {{2017, 1, 20}, 7.009030342102051}, {{
            2017, 1, 23}, 7.018566608428955}, {{2017, 1, 24}, 
            7.018566608428955}, {{2017, 1, 25}, 7.094855785369873}, {{2017, 1,
             26}, 7.0757832527160645`}, {{2017, 1, 27}, 7.037639141082764}, {{
            2017, 1, 30}, 6.980422496795654}, {{2017, 1, 31}, 
            6.904133319854736}, {{2017, 2, 1}, 6.961349964141846}, {{2017, 2, 
            2}, 6.961349964141846}, {{2017, 2, 3}, 7.132999897003174}, {{2017,
             2, 6}, 7.171144008636475}, {{2017, 2, 7}, 7.113927841186523}, {{
            2017, 2, 8}, 7.14253568649292}, {{2017, 2, 9}, 
            7.123463153839111}, {{2017, 2, 10}, 7.295113563537598}, {{2017, 2,
             13}, 7.361865997314453}, {{2017, 2, 14}, 7.285577297210693}, {{
            2017, 2, 15}, 7.3809380531311035`}, {{2017, 2, 16}, 
            7.3427934646606445`}, {{2017, 2, 17}, 7.400010585784912}, {{2017, 
            2, 21}, 7.400010585784912}, {{2017, 2, 22}, 
            7.4572272300720215`}, {{2017, 2, 23}, 7.504907608032227}, {{2017, 
            2, 24}, 7.514443397521973}, {{2017, 2, 27}, 7.485835075378418}, {{
            2017, 2, 28}, 7.390474319458008}, {{2017, 3, 1}, 
            7.409546375274658}, {{2017, 3, 2}, 7.361865997314453}, {{2017, 3, 
            3}, 7.419083118438721}, {{2017, 3, 6}, 7.371401786804199}, {{2017,
             3, 7}, 7.304649353027344}, {{2017, 3, 8}, 7.247432708740234}, {{
            2017, 3, 9}, 7.037639141082764}, {{2017, 3, 10}, 
            7.361865997314453}, {{2017, 3, 13}, 7.295113563537598}, {{2017, 3,
             14}, 7.209288120269775}, {{2017, 3, 15}, 7.237896919250488}, {{
            2017, 3, 16}, 7.169522762298584}, {{2017, 3, 17}, 
            7.296503067016602}, {{2017, 3, 20}, 7.247664928436279}, {{2017, 3,
             21}, 7.159754753112793}, {{2017, 3, 22}, 7.081613063812256}, {{
            2017, 3, 23}, 7.081613063812256}, {{2017, 3, 24}, 
            7.140219688415527}, {{2017, 3, 27}, 7.110916614532471}, {{2017, 3,
             28}, 7.189058303833008}, {{2017, 3, 29}, 7.257432460784912}, {{
            2017, 3, 30}, 7.306271076202393}, {{2017, 3, 31}, 
            7.374645709991455}, {{2017, 4, 3}, 7.267199993133545}, {{2017, 4, 
            4}, 7.159754753112793}, {{2017, 4, 5}, 7.110916614532471}, {{2017,
             4, 6}, 7.169522762298584}, {{2017, 4, 7}, 
            7.1304521560668945`}, {{2017, 4, 10}, 7.110916614532471}, {{2017, 
            4, 11}, 7.159754753112793}, {{2017, 4, 12}, 7.042541980743408}, {{
            2017, 4, 13}, 7.081613063812256}, {{2017, 4, 17}, 
            7.091381072998047}, {{2017, 4, 18}, 7.110916614532471}, {{2017, 4,
             19}, 7.10114860534668}, {{2017, 4, 20}, 7.140219688415527}, {{
            2017, 4, 21}, 7.1304521560668945`}, {{2017, 4, 24}, 
            7.14998722076416}, {{2017, 4, 25}, 7.159754753112793}, {{2017, 4, 
            26}, 7.179290294647217}, {{2017, 4, 27}, 7.159754753112793}, {{
            2017, 4, 28}, 7.159754753112793}, {{2017, 5, 1}, 
            7.1304521560668945`}, {{2017, 5, 2}, 7.208593845367432}, {{2017, 
            5, 3}, 7.208593845367432}, {{2017, 5, 4}, 7.4039483070373535`}, {{
            2017, 5, 5}, 7.443019390106201}, {{2017, 5, 8}, 
            7.384413242340088}, {{2017, 5, 9}, 7.296503067016602}, {{2017, 5, 
            10}, 7.276967525482178}, {{2017, 5, 11}, 7.34534215927124}, {{
            2017, 5, 12}, 7.286735534667969}, {{2017, 5, 15}, 
            7.355110168457031}, {{2017, 5, 16}, 7.335574626922607}, {{2017, 5,
             17}, 7.355110168457031}, {{2017, 5, 18}, 7.34534215927124}, {{
            2017, 5, 19}, 7.394180774688721}, {{2017, 5, 22}, 
            7.482090473175049}, {{2017, 5, 23}, 7.49185848236084}, {{2017, 5, 
            24}, 7.452787399291992}, {{2017, 5, 25}, 7.462554931640625}, {{
            2017, 5, 26}, 7.501626014709473}, {{2017, 5, 30}, 
            7.550464630126953}, {{2017, 5, 31}, 7.589535713195801}, {{2017, 6,
             1}, 7.609071254730225}, {{2017, 6, 2}, 7.628606796264648}, {{
            2017, 6, 5}, 7.560232162475586}, {{2017, 6, 6}, 
            7.530929088592529}, {{2017, 6, 7}, 7.5113935470581055`}, {{2017, 
            6, 8}, 7.374645709991455}, {{2017, 6, 9}, 7.443019390106201}, {{
            2017, 6, 12}, 7.560232162475586}, {{2017, 6, 13}, 
            7.482090473175049}, {{2017, 6, 14}, 7.570000171661377}, {{2017, 6,
             15}, 7.53000020980835}, {{2017, 6, 16}, 7.460000038146973}, {{
            2017, 6, 19}, 7.5}}, 
         "model" -> {{{2016, 6, 20}, 7.352470850987652}, {{2016, 6, 20}, 
            7.352470850987652}, {{2016, 6, 20}, 7.352470850987652}, {{2016, 6,
             21}, 7.3520199664569725`}, {{2016, 6, 21}, 
            7.3520199664569725`}, {{2016, 6, 21}, 7.3520199664569725`}, {{
            2016, 6, 22}, 7.351569081926293}, {{2016, 6, 22}, 
            7.351569081926293}, {{2016, 6, 22}, 7.351569081926293}, {{2016, 6,
             23}, 7.351118197395612}, {{2016, 6, 23}, 7.351118197395612}, {{
            2016, 6, 23}, 7.351118197395612}, {{2016, 6, 24}, 
            7.350667312864933}, {{2016, 6, 24}, 7.350667312864933}, {{2016, 6,
             24}, 7.350667312864933}, {{2016, 6, 27}, 7.349314659272894}, {{
            2016, 6, 27}, 7.349314659272894}, {{2016, 6, 27}, 
            7.349314659272894}, {{2016, 6, 28}, 7.348863774742213}, {{2016, 6,
             28}, 7.348863774742213}, {{2016, 6, 28}, 7.348863774742213}, {{
            2016, 6, 29}, 7.3484128902115335`}, {{2016, 6, 29}, 
            7.3484128902115335`}, {{2016, 6, 29}, 7.3484128902115335`}, {{
            2016, 6, 30}, 7.347962005680854}, {{2016, 6, 30}, 
            7.347962005680854}, {{2016, 6, 30}, 7.347962005680854}, {{2016, 7,
             1}, 7.347511121150174}, {{2016, 7, 1}, 7.347511121150174}, {{
            2016, 7, 1}, 7.347511121150174}, {{2016, 7, 5}, 
            7.345707583027455}, {{2016, 7, 5}, 7.345707583027455}, {{2016, 7, 
            5}, 7.345707583027455}, {{2016, 7, 6}, 7.345256698496775}, {{2016,
             7, 6}, 7.345256698496775}, {{2016, 7, 6}, 7.345256698496775}, {{
            2016, 7, 7}, 7.344805813966095}, {{2016, 7, 7}, 
            7.344805813966095}, {{2016, 7, 7}, 7.344805813966095}, {{2016, 7, 
            8}, 7.344354929435415}, {{2016, 7, 8}, 7.344354929435415}, {{2016,
             7, 8}, 7.344354929435415}, {{2016, 7, 11}, 7.343002275843376}, {{
            2016, 7, 11}, 7.343002275843376}, {{2016, 7, 11}, 
            7.343002275843376}, {{2016, 7, 12}, 7.342551391312696}, {{2016, 7,
             12}, 7.342551391312696}, {{2016, 7, 12}, 7.342551391312696}, {{
            2016, 7, 13}, 7.342100506782016}, {{2016, 7, 13}, 
            7.342100506782016}, {{2016, 7, 13}, 7.342100506782016}, {{2016, 7,
             14}, 7.341649622251336}, {{2016, 7, 14}, 7.341649622251336}, {{
            2016, 7, 14}, 7.341649622251336}, {{2016, 7, 15}, 
            7.3411987377206565`}, {{2016, 7, 15}, 7.3411987377206565`}, {{
            2016, 7, 15}, 7.3411987377206565`}, {{2016, 7, 18}, 
            7.339846084128617}, {{2016, 7, 18}, 7.339846084128617}, {{2016, 7,
             18}, 7.339846084128617}, {{2016, 7, 19}, 7.339395199597937}, {{
            2016, 7, 19}, 7.339395199597937}, {{2016, 7, 19}, 
            7.339395199597937}, {{2016, 7, 20}, 7.338944315067257}, {{2016, 7,
             20}, 7.338944315067257}, {{2016, 7, 20}, 7.338944315067257}, {{
            2016, 7, 21}, 7.338493430536578}, {{2016, 7, 21}, 
            7.338493430536578}, {{2016, 7, 21}, 7.338493430536578}, {{2016, 7,
             22}, 7.338042546005898}, {{2016, 7, 22}, 7.338042546005898}, {{
            2016, 7, 22}, 7.338042546005898}, {{2016, 7, 25}, 
            7.336689892413858}, {{2016, 7, 25}, 7.336689892413858}, {{2016, 7,
             25}, 7.336689892413858}, {{2016, 7, 26}, 7.3362390078831785`}, {{
            2016, 7, 26}, 7.3362390078831785`}, {{2016, 7, 26}, 
            7.3362390078831785`}, {{2016, 7, 27}, 7.335788123352499}, {{2016, 
            7, 27}, 7.335788123352499}, {{2016, 7, 27}, 7.335788123352499}, {{
            2016, 7, 28}, 7.335337238821818}, {{2016, 7, 28}, 
            7.335337238821818}, {{2016, 7, 28}, 7.335337238821818}, {{2016, 7,
             29}, 7.334886354291139}, {{2016, 7, 29}, 7.334886354291139}, {{
            2016, 7, 29}, 7.334886354291139}, {{2016, 8, 1}, 
            7.3335337006991}, {{2016, 8, 1}, 7.3335337006991}, {{2016, 8, 1}, 
            7.3335337006991}, {{2016, 8, 2}, 7.333082816168419}, {{2016, 8, 
            2}, 7.333082816168419}, {{2016, 8, 2}, 7.333082816168419}, {{2016,
             8, 3}, 7.3326319316377395`}, {{2016, 8, 3}, 
            7.3326319316377395`}, {{2016, 8, 3}, 7.3326319316377395`}, {{2016,
             8, 4}, 7.33218104710706}, {{2016, 8, 4}, 7.33218104710706}, {{
            2016, 8, 4}, 7.33218104710706}, {{2016, 8, 5}, 
            7.33173016257638}, {{2016, 8, 5}, 7.33173016257638}, {{2016, 8, 
            5}, 7.33173016257638}, {{2016, 8, 8}, 7.33037750898434}, {{2016, 
            8, 8}, 7.33037750898434}, {{2016, 8, 8}, 7.33037750898434}, {{
            2016, 8, 9}, 7.329926624453661}, {{2016, 8, 9}, 
            7.329926624453661}, {{2016, 8, 9}, 7.329926624453661}, {{2016, 8, 
            10}, 7.329475739922981}, {{2016, 8, 10}, 7.329475739922981}, {{
            2016, 8, 10}, 7.329475739922981}, {{2016, 8, 11}, 
            7.329024855392301}, {{2016, 8, 11}, 7.329024855392301}, {{2016, 8,
             11}, 7.329024855392301}, {{2016, 8, 12}, 7.328573970861621}, {{
            2016, 8, 12}, 7.328573970861621}, {{2016, 8, 12}, 
            7.328573970861621}, {{2016, 8, 15}, 7.327221317269582}, {{2016, 8,
             15}, 7.327221317269582}, {{2016, 8, 15}, 7.327221317269582}, {{
            2016, 8, 16}, 7.326770432738902}, {{2016, 8, 16}, 
            7.326770432738902}, {{2016, 8, 16}, 7.326770432738902}, {{2016, 8,
             17}, 7.326319548208222}, {{2016, 8, 17}, 7.326319548208222}, {{
            2016, 8, 17}, 7.326319548208222}, {{2016, 8, 18}, 
            7.325868663677542}, {{2016, 8, 18}, 7.325868663677542}, {{2016, 8,
             18}, 7.325868663677542}, {{2016, 8, 19}, 7.325417779146862}, {{
            2016, 8, 19}, 7.325417779146862}, {{2016, 8, 19}, 
            7.325417779146862}, {{2016, 8, 22}, 7.324065125554823}, {{2016, 8,
             22}, 7.324065125554823}, {{2016, 8, 22}, 7.324065125554823}, {{
            2016, 8, 23}, 7.323614241024143}, {{2016, 8, 23}, 
            7.323614241024143}, {{2016, 8, 23}, 7.323614241024143}, {{2016, 8,
             24}, 7.323163356493463}, {{2016, 8, 24}, 7.323163356493463}, {{
            2016, 8, 24}, 7.323163356493463}, {{2016, 8, 25}, 
            7.322712471962784}, {{2016, 8, 25}, 7.322712471962784}, {{2016, 8,
             25}, 7.322712471962784}, {{2016, 8, 26}, 7.322261587432104}, {{
            2016, 8, 26}, 7.322261587432104}, {{2016, 8, 26}, 
            7.322261587432104}, {{2016, 8, 29}, 7.320908933840064}, {{2016, 8,
             29}, 7.320908933840064}, {{2016, 8, 29}, 7.320908933840064}, {{
            2016, 8, 30}, 7.3204580493093845`}, {{2016, 8, 30}, 
            7.3204580493093845`}, {{2016, 8, 30}, 7.3204580493093845`}, {{
            2016, 8, 31}, 7.320007164778705}, {{2016, 8, 31}, 
            7.320007164778705}, {{2016, 8, 31}, 7.320007164778705}, {{2016, 9,
             1}, 7.319556280248024}, {{2016, 9, 1}, 7.319556280248024}, {{
            2016, 9, 1}, 7.319556280248024}, {{2016, 9, 2}, 
            7.319105395717345}, {{2016, 9, 2}, 7.319105395717345}, {{2016, 9, 
            2}, 7.319105395717345}, {{2016, 9, 6}, 7.317301857594625}, {{2016,
             9, 6}, 7.317301857594625}, {{2016, 9, 6}, 7.317301857594625}, {{
            2016, 9, 7}, 7.3168509730639455`}, {{2016, 9, 7}, 
            7.3168509730639455`}, {{2016, 9, 7}, 7.3168509730639455`}, {{2016,
             9, 8}, 7.316400088533266}, {{2016, 9, 8}, 7.316400088533266}, {{
            2016, 9, 8}, 7.316400088533266}, {{2016, 9, 9}, 
            7.315949204002586}, {{2016, 9, 9}, 7.315949204002586}, {{2016, 9, 
            9}, 7.315949204002586}, {{2016, 9, 12}, 7.314596550410546}, {{
            2016, 9, 12}, 7.314596550410546}, {{2016, 9, 12}, 
            7.314596550410546}, {{2016, 9, 13}, 7.314145665879867}, {{2016, 9,
             13}, 7.314145665879867}, {{2016, 9, 13}, 7.314145665879867}, {{
            2016, 9, 14}, 7.313694781349187}, {{2016, 9, 14}, 
            7.313694781349187}, {{2016, 9, 14}, 7.313694781349187}, {{2016, 9,
             15}, 7.313243896818507}, {{2016, 9, 15}, 7.313243896818507}, {{
            2016, 9, 15}, 7.313243896818507}, {{2016, 9, 16}, 
            7.312793012287827}, {{2016, 9, 16}, 7.312793012287827}, {{2016, 9,
             16}, 7.312793012287827}, {{2016, 9, 19}, 7.311440358695788}, {{
            2016, 9, 19}, 7.311440358695788}, {{2016, 9, 19}, 
            7.311440358695788}, {{2016, 9, 20}, 7.310989474165108}, {{2016, 9,
             20}, 7.310989474165108}, {{2016, 9, 20}, 7.310989474165108}, {{
            2016, 9, 21}, 7.310538589634428}, {{2016, 9, 21}, 
            7.310538589634428}, {{2016, 9, 21}, 7.310538589634428}, {{2016, 9,
             22}, 7.310087705103748}, {{2016, 9, 22}, 7.310087705103748}, {{
            2016, 9, 22}, 7.310087705103748}, {{2016, 9, 23}, 
            7.309636820573068}, {{2016, 9, 23}, 7.309636820573068}, {{2016, 9,
             23}, 7.309636820573068}, {{2016, 9, 26}, 7.308284166981029}, {{
            2016, 9, 26}, 7.308284166981029}, {{2016, 9, 26}, 
            7.308284166981029}, {{2016, 9, 27}, 7.307833282450349}, {{2016, 9,
             27}, 7.307833282450349}, {{2016, 9, 27}, 7.307833282450349}, {{
            2016, 9, 28}, 7.307382397919669}, {{2016, 9, 28}, 
            7.307382397919669}, {{2016, 9, 28}, 7.307382397919669}, {{2016, 9,
             29}, 7.30693151338899}, {{2016, 9, 29}, 7.30693151338899}, {{
            2016, 9, 29}, 7.30693151338899}, {{2016, 9, 30}, 
            7.30648062885831}, {{2016, 9, 30}, 7.30648062885831}, {{2016, 9, 
            30}, 7.30648062885831}, {{2016, 10, 3}, 7.30512797526627}, {{2016,
             10, 3}, 7.30512797526627}, {{2016, 10, 3}, 7.30512797526627}, {{
            2016, 10, 4}, 7.3046770907355905`}, {{2016, 10, 4}, 
            7.3046770907355905`}, {{2016, 10, 4}, 7.3046770907355905`}, {{
            2016, 10, 5}, 7.304226206204911}, {{2016, 10, 5}, 
            7.304226206204911}, {{2016, 10, 5}, 7.304226206204911}, {{2016, 
            10, 6}, 7.30377532167423}, {{2016, 10, 6}, 7.30377532167423}, {{
            2016, 10, 6}, 7.30377532167423}, {{2016, 10, 7}, 
            7.303324437143551}, {{2016, 10, 7}, 7.303324437143551}, {{2016, 
            10, 7}, 7.303324437143551}, {{2016, 10, 10}, 
            7.301971783551512}, {{2016, 10, 10}, 7.301971783551512}, {{2016, 
            10, 10}, 7.301971783551512}, {{2016, 10, 11}, 
            7.301520899020831}, {{2016, 10, 11}, 7.301520899020831}, {{2016, 
            10, 11}, 7.301520899020831}, {{2016, 10, 12}, 
            7.3010700144901515`}, {{2016, 10, 12}, 7.3010700144901515`}, {{
            2016, 10, 12}, 7.3010700144901515`}, {{2016, 10, 13}, 
            7.300619129959472}, {{2016, 10, 13}, 7.300619129959472}, {{2016, 
            10, 13}, 7.300619129959472}, {{2016, 10, 14}, 
            7.300168245428792}, {{2016, 10, 14}, 7.300168245428792}, {{2016, 
            10, 14}, 7.300168245428792}, {{2016, 10, 17}, 
            7.298815591836752}, {{2016, 10, 17}, 7.298815591836752}, {{2016, 
            10, 17}, 7.298815591836752}, {{2016, 10, 18}, 
            7.298364707306073}, {{2016, 10, 18}, 7.298364707306073}, {{2016, 
            10, 18}, 7.298364707306073}, {{2016, 10, 19}, 
            7.297913822775393}, {{2016, 10, 19}, 7.297913822775393}, {{2016, 
            10, 19}, 7.297913822775393}, {{2016, 10, 20}, 
            7.297462938244713}, {{2016, 10, 20}, 7.297462938244713}, {{2016, 
            10, 20}, 7.297462938244713}, {{2016, 10, 21}, 
            7.297012053714033}, {{2016, 10, 21}, 7.297012053714033}, {{2016, 
            10, 21}, 7.297012053714033}, {{2016, 10, 24}, 
            7.295659400121994}, {{2016, 10, 24}, 7.295659400121994}, {{2016, 
            10, 24}, 7.295659400121994}, {{2016, 10, 25}, 
            7.295208515591314}, {{2016, 10, 25}, 7.295208515591314}, {{2016, 
            10, 25}, 7.295208515591314}, {{2016, 10, 26}, 
            7.294757631060634}, {{2016, 10, 26}, 7.294757631060634}, {{2016, 
            10, 26}, 7.294757631060634}, {{2016, 10, 27}, 
            7.294306746529954}, {{2016, 10, 27}, 7.294306746529954}, {{2016, 
            10, 27}, 7.294306746529954}, {{2016, 10, 28}, 
            7.293855861999274}, {{2016, 10, 28}, 7.293855861999274}, {{2016, 
            10, 28}, 7.293855861999274}, {{2016, 10, 31}, 
            7.2925032084072345`}, {{2016, 10, 31}, 7.2925032084072345`}, {{
            2016, 10, 31}, 7.2925032084072345`}, {{2016, 11, 1}, 
            7.292052323876555}, {{2016, 11, 1}, 7.292052323876555}, {{2016, 
            11, 1}, 7.292052323876555}, {{2016, 11, 2}, 7.291601439345875}, {{
            2016, 11, 2}, 7.291601439345875}, {{2016, 11, 2}, 
            7.291601439345875}, {{2016, 11, 3}, 7.291150554815196}, {{2016, 
            11, 3}, 7.291150554815196}, {{2016, 11, 3}, 7.291150554815196}, {{
            2016, 11, 4}, 7.290699670284516}, {{2016, 11, 4}, 
            7.290699670284516}, {{2016, 11, 4}, 7.290699670284516}, {{2016, 
            11, 7}, 7.289347016692476}, {{2016, 11, 7}, 7.289347016692476}, {{
            2016, 11, 7}, 7.289347016692476}, {{2016, 11, 8}, 
            7.288896132161796}, {{2016, 11, 8}, 7.288896132161796}, {{2016, 
            11, 8}, 7.288896132161796}, {{2016, 11, 9}, 7.288445247631117}, {{
            2016, 11, 9}, 7.288445247631117}, {{2016, 11, 9}, 
            7.288445247631117}, {{2016, 11, 10}, 7.287994363100436}, {{2016, 
            11, 10}, 7.287994363100436}, {{2016, 11, 10}, 
            7.287994363100436}, {{2016, 11, 11}, 7.287543478569757}, {{2016, 
            11, 11}, 7.287543478569757}, {{2016, 11, 11}, 
            7.287543478569757}, {{2016, 11, 14}, 7.286190824977718}, {{2016, 
            11, 14}, 7.286190824977718}, {{2016, 11, 14}, 
            7.286190824977718}, {{2016, 11, 15}, 7.285739940447037}, {{2016, 
            11, 15}, 7.285739940447037}, {{2016, 11, 15}, 
            7.285739940447037}, {{2016, 11, 16}, 7.2852890559163574`}, {{2016,
             11, 16}, 7.2852890559163574`}, {{2016, 11, 16}, 
            7.2852890559163574`}, {{2016, 11, 17}, 7.284838171385678}, {{2016,
             11, 17}, 7.284838171385678}, {{2016, 11, 17}, 
            7.284838171385678}, {{2016, 11, 18}, 7.284387286854998}, {{2016, 
            11, 18}, 7.284387286854998}, {{2016, 11, 18}, 
            7.284387286854998}, {{2016, 11, 21}, 7.283034633262958}, {{2016, 
            11, 21}, 7.283034633262958}, {{2016, 11, 21}, 
            7.283034633262958}, {{2016, 11, 22}, 7.282583748732279}, {{2016, 
            11, 22}, 7.282583748732279}, {{2016, 11, 22}, 
            7.282583748732279}, {{2016, 11, 23}, 7.282132864201599}, {{2016, 
            11, 23}, 7.282132864201599}, {{2016, 11, 23}, 
            7.282132864201599}, {{2016, 11, 25}, 7.281231095140239}, {{2016, 
            11, 25}, 7.281231095140239}, {{2016, 11, 25}, 
            7.281231095140239}, {{2016, 11, 28}, 7.2798784415482}, {{2016, 11,
             28}, 7.2798784415482}, {{2016, 11, 28}, 7.2798784415482}, {{2016,
             11, 29}, 7.27942755701752}, {{2016, 11, 29}, 
            7.27942755701752}, {{2016, 11, 29}, 7.27942755701752}, {{2016, 11,
             30}, 7.27897667248684}, {{2016, 11, 30}, 7.27897667248684}, {{
            2016, 11, 30}, 7.27897667248684}, {{2016, 12, 1}, 
            7.27852578795616}, {{2016, 12, 1}, 7.27852578795616}, {{2016, 12, 
            1}, 7.27852578795616}, {{2016, 12, 2}, 7.27807490342548}, {{2016, 
            12, 2}, 7.27807490342548}, {{2016, 12, 2}, 7.27807490342548}, {{
            2016, 12, 5}, 7.2767222498334405`}, {{2016, 12, 5}, 
            7.2767222498334405`}, {{2016, 12, 5}, 7.2767222498334405`}, {{
            2016, 12, 6}, 7.276271365302761}, {{2016, 12, 6}, 
            7.276271365302761}, {{2016, 12, 6}, 7.276271365302761}, {{2016, 
            12, 7}, 7.275820480772081}, {{2016, 12, 7}, 7.275820480772081}, {{
            2016, 12, 7}, 7.275820480772081}, {{2016, 12, 8}, 
            7.275369596241402}, {{2016, 12, 8}, 7.275369596241402}, {{2016, 
            12, 8}, 7.275369596241402}, {{2016, 12, 9}, 7.274918711710722}, {{
            2016, 12, 9}, 7.274918711710722}, {{2016, 12, 9}, 
            7.274918711710722}, {{2016, 12, 12}, 7.273566058118682}, {{2016, 
            12, 12}, 7.273566058118682}, {{2016, 12, 12}, 
            7.273566058118682}, {{2016, 12, 13}, 7.273115173588002}, {{2016, 
            12, 13}, 7.273115173588002}, {{2016, 12, 13}, 
            7.273115173588002}, {{2016, 12, 14}, 7.272664289057323}, {{2016, 
            12, 14}, 7.272664289057323}, {{2016, 12, 14}, 
            7.272664289057323}, {{2016, 12, 15}, 7.272213404526642}, {{2016, 
            12, 15}, 7.272213404526642}, {{2016, 12, 15}, 
            7.272213404526642}, {{2016, 12, 16}, 7.271762519995963}, {{2016, 
            12, 16}, 7.271762519995963}, {{2016, 12, 16}, 
            7.271762519995963}, {{2016, 12, 19}, 7.270409866403924}, {{2016, 
            12, 19}, 7.270409866403924}, {{2016, 12, 19}, 
            7.270409866403924}, {{2016, 12, 20}, 7.269958981873243}, {{2016, 
            12, 20}, 7.269958981873243}, {{2016, 12, 20}, 
            7.269958981873243}, {{2016, 12, 21}, 7.269508097342563}, {{2016, 
            12, 21}, 7.269508097342563}, {{2016, 12, 21}, 
            7.269508097342563}, {{2016, 12, 22}, 7.269057212811884}, {{2016, 
            12, 22}, 7.269057212811884}, {{2016, 12, 22}, 
            7.269057212811884}, {{2016, 12, 23}, 7.268606328281204}, {{2016, 
            12, 23}, 7.268606328281204}, {{2016, 12, 23}, 
            7.268606328281204}, {{2016, 12, 27}, 7.266802790158485}, {{2016, 
            12, 27}, 7.266802790158485}, {{2016, 12, 27}, 
            7.266802790158485}, {{2016, 12, 28}, 7.266351905627805}, {{2016, 
            12, 28}, 7.266351905627805}, {{2016, 12, 28}, 
            7.266351905627805}, {{2016, 12, 29}, 7.265901021097125}, {{2016, 
            12, 29}, 7.265901021097125}, {{2016, 12, 29}, 
            7.265901021097125}, {{2016, 12, 30}, 7.265450136566446}, {{2016, 
            12, 30}, 7.265450136566446}, {{2016, 12, 30}, 
            7.265450136566446}, {{2017, 1, 3}, 7.263646598443726}, {{2017, 1, 
            3}, 7.263646598443726}, {{2017, 1, 3}, 7.263646598443726}, {{2017,
             1, 4}, 7.2631957139130465`}, {{2017, 1, 4}, 
            7.2631957139130465`}, {{2017, 1, 4}, 7.2631957139130465`}, {{2017,
             1, 5}, 7.262744829382366}, {{2017, 1, 5}, 7.262744829382366}, {{
            2017, 1, 5}, 7.262744829382366}, {{2017, 1, 6}, 
            7.262293944851686}, {{2017, 1, 6}, 7.262293944851686}, {{2017, 1, 
            6}, 7.262293944851686}, {{2017, 1, 9}, 7.260941291259647}, {{2017,
             1, 9}, 7.260941291259647}, {{2017, 1, 9}, 7.260941291259647}, {{
            2017, 1, 10}, 7.260490406728967}, {{2017, 1, 10}, 
            7.260490406728967}, {{2017, 1, 10}, 7.260490406728967}, {{2017, 1,
             11}, 7.260039522198287}, {{2017, 1, 11}, 7.260039522198287}, {{
            2017, 1, 11}, 7.260039522198287}, {{2017, 1, 12}, 
            7.2595886376676075`}, {{2017, 1, 12}, 7.2595886376676075`}, {{
            2017, 1, 12}, 7.2595886376676075`}, {{2017, 1, 13}, 
            7.259137753136928}, {{2017, 1, 13}, 7.259137753136928}, {{2017, 1,
             13}, 7.259137753136928}, {{2017, 1, 17}, 7.257334215014208}, {{
            2017, 1, 17}, 7.257334215014208}, {{2017, 1, 17}, 
            7.257334215014208}, {{2017, 1, 18}, 7.256883330483529}, {{2017, 1,
             18}, 7.256883330483529}, {{2017, 1, 18}, 7.256883330483529}, {{
            2017, 1, 19}, 7.256432445952849}, {{2017, 1, 19}, 
            7.256432445952849}, {{2017, 1, 19}, 7.256432445952849}, {{2017, 1,
             20}, 7.2559815614221685`}, {{2017, 1, 20}, 
            7.2559815614221685`}, {{2017, 1, 20}, 7.2559815614221685`}, {{
            2017, 1, 23}, 7.25462890783013}, {{2017, 1, 23}, 
            7.25462890783013}, {{2017, 1, 23}, 7.25462890783013}, {{2017, 1, 
            24}, 7.25417802329945}, {{2017, 1, 24}, 7.25417802329945}, {{2017,
             1, 24}, 7.25417802329945}, {{2017, 1, 25}, 7.253727138768769}, {{
            2017, 1, 25}, 7.253727138768769}, {{2017, 1, 25}, 
            7.253727138768769}, {{2017, 1, 26}, 7.25327625423809}, {{2017, 1, 
            26}, 7.25327625423809}, {{2017, 1, 26}, 7.25327625423809}, {{2017,
             1, 27}, 7.25282536970741}, {{2017, 1, 27}, 7.25282536970741}, {{
            2017, 1, 27}, 7.25282536970741}, {{2017, 1, 30}, 
            7.25147271611537}, {{2017, 1, 30}, 7.25147271611537}, {{2017, 1, 
            30}, 7.25147271611537}, {{2017, 1, 31}, 7.251021831584691}, {{
            2017, 1, 31}, 7.251021831584691}, {{2017, 1, 31}, 
            7.251021831584691}, {{2017, 2, 1}, 7.250570947054011}, {{2017, 2, 
            1}, 7.250570947054011}, {{2017, 2, 1}, 7.250570947054011}, {{2017,
             2, 2}, 7.250120062523331}, {{2017, 2, 2}, 7.250120062523331}, {{
            2017, 2, 2}, 7.250120062523331}, {{2017, 2, 3}, 
            7.249669177992652}, {{2017, 2, 3}, 7.249669177992652}, {{2017, 2, 
            3}, 7.249669177992652}, {{2017, 2, 6}, 7.248316524400612}, {{2017,
             2, 6}, 7.248316524400612}, {{2017, 2, 6}, 7.248316524400612}, {{
            2017, 2, 7}, 7.247865639869932}, {{2017, 2, 7}, 
            7.247865639869932}, {{2017, 2, 7}, 7.247865639869932}, {{2017, 2, 
            8}, 7.2474147553392525`}, {{2017, 2, 8}, 7.2474147553392525`}, {{
            2017, 2, 8}, 7.2474147553392525`}, {{2017, 2, 9}, 
            7.246963870808572}, {{2017, 2, 9}, 7.246963870808572}, {{2017, 2, 
            9}, 7.246963870808572}, {{2017, 2, 10}, 7.246512986277892}, {{
            2017, 2, 10}, 7.246512986277892}, {{2017, 2, 10}, 
            7.246512986277892}, {{2017, 2, 13}, 7.245160332685853}, {{2017, 2,
             13}, 7.245160332685853}, {{2017, 2, 13}, 7.245160332685853}, {{
            2017, 2, 14}, 7.244709448155173}, {{2017, 2, 14}, 
            7.244709448155173}, {{2017, 2, 14}, 7.244709448155173}, {{2017, 2,
             15}, 7.244258563624493}, {{2017, 2, 15}, 7.244258563624493}, {{
            2017, 2, 15}, 7.244258563624493}, {{2017, 2, 16}, 
            7.2438076790938135`}, {{2017, 2, 16}, 7.2438076790938135`}, {{
            2017, 2, 16}, 7.2438076790938135`}, {{2017, 2, 17}, 
            7.243356794563134}, {{2017, 2, 17}, 7.243356794563134}, {{2017, 2,
             17}, 7.243356794563134}, {{2017, 2, 21}, 7.241553256440414}, {{
            2017, 2, 21}, 7.241553256440414}, {{2017, 2, 21}, 
            7.241553256440414}, {{2017, 2, 22}, 7.241102371909735}, {{2017, 2,
             22}, 7.241102371909735}, {{2017, 2, 22}, 7.241102371909735}, {{
            2017, 2, 23}, 7.240651487379055}, {{2017, 2, 23}, 
            7.240651487379055}, {{2017, 2, 23}, 7.240651487379055}, {{2017, 2,
             24}, 7.2402006028483745`}, {{2017, 2, 24}, 
            7.2402006028483745`}, {{2017, 2, 24}, 7.2402006028483745`}, {{
            2017, 2, 27}, 7.238847949256336}, {{2017, 2, 27}, 
            7.238847949256336}, {{2017, 2, 27}, 7.238847949256336}, {{2017, 2,
             28}, 7.238397064725656}, {{2017, 2, 28}, 7.238397064725656}, {{
            2017, 2, 28}, 7.238397064725656}, {{2017, 3, 1}, 
            7.237946180194975}, {{2017, 3, 1}, 7.237946180194975}, {{2017, 3, 
            1}, 7.237946180194975}, {{2017, 3, 2}, 7.237495295664296}, {{2017,
             3, 2}, 7.237495295664296}, {{2017, 3, 2}, 7.237495295664296}, {{
            2017, 3, 3}, 7.237044411133616}, {{2017, 3, 3}, 
            7.237044411133616}, {{2017, 3, 3}, 7.237044411133616}, {{2017, 3, 
            6}, 7.235691757541576}, {{2017, 3, 6}, 7.235691757541576}, {{2017,
             3, 6}, 7.235691757541576}, {{2017, 3, 7}, 7.235240873010897}, {{
            2017, 3, 7}, 7.235240873010897}, {{2017, 3, 7}, 
            7.235240873010897}, {{2017, 3, 8}, 7.234789988480217}, {{2017, 3, 
            8}, 7.234789988480217}, {{2017, 3, 8}, 7.234789988480217}, {{2017,
             3, 9}, 7.234339103949537}, {{2017, 3, 9}, 7.234339103949537}, {{
            2017, 3, 9}, 7.234339103949537}, {{2017, 3, 10}, 
            7.233888219418858}, {{2017, 3, 10}, 7.233888219418858}, {{2017, 3,
             10}, 7.233888219418858}, {{2017, 3, 13}, 7.232535565826818}, {{
            2017, 3, 13}, 7.232535565826818}, {{2017, 3, 13}, 
            7.232535565826818}, {{2017, 3, 14}, 7.232084681296138}, {{2017, 3,
             14}, 7.232084681296138}, {{2017, 3, 14}, 7.232084681296138}, {{
            2017, 3, 15}, 7.2316337967654585`}, {{2017, 3, 15}, 
            7.2316337967654585`}, {{2017, 3, 15}, 7.2316337967654585`}, {{
            2017, 3, 16}, 7.231182912234778}, {{2017, 3, 16}, 
            7.231182912234778}, {{2017, 3, 16}, 7.231182912234778}, {{2017, 3,
             17}, 7.230732027704098}, {{2017, 3, 17}, 7.230732027704098}, {{
            2017, 3, 17}, 7.230732027704098}, {{2017, 3, 20}, 
            7.229379374112059}, {{2017, 3, 20}, 7.229379374112059}, {{2017, 3,
             20}, 7.229379374112059}, {{2017, 3, 21}, 7.228928489581379}, {{
            2017, 3, 21}, 7.228928489581379}, {{2017, 3, 21}, 
            7.228928489581379}, {{2017, 3, 22}, 7.228477605050699}, {{2017, 3,
             22}, 7.228477605050699}, {{2017, 3, 22}, 7.228477605050699}, {{
            2017, 3, 23}, 7.2280267205200195`}, {{2017, 3, 23}, 
            7.2280267205200195`}, {{2017, 3, 23}, 7.2280267205200195`}, {{
            2017, 3, 24}, 7.22757583598934}, {{2017, 3, 24}, 
            7.22757583598934}, {{2017, 3, 24}, 7.22757583598934}, {{2017, 3, 
            27}, 7.2262231823973}, {{2017, 3, 27}, 7.2262231823973}, {{2017, 
            3, 27}, 7.2262231823973}, {{2017, 3, 28}, 7.22577229786662}, {{
            2017, 3, 28}, 7.22577229786662}, {{2017, 3, 28}, 
            7.22577229786662}, {{2017, 3, 29}, 7.225321413335941}, {{2017, 3, 
            29}, 7.225321413335941}, {{2017, 3, 29}, 7.225321413335941}, {{
            2017, 3, 30}, 7.224870528805261}, {{2017, 3, 30}, 
            7.224870528805261}, {{2017, 3, 30}, 7.224870528805261}, {{2017, 3,
             31}, 7.2244196442745805`}, {{2017, 3, 31}, 
            7.2244196442745805`}, {{2017, 3, 31}, 7.2244196442745805`}, {{
            2017, 4, 3}, 7.2230669906825415`}, {{2017, 4, 3}, 
            7.2230669906825415`}, {{2017, 4, 3}, 7.2230669906825415`}, {{2017,
             4, 4}, 7.222616106151862}, {{2017, 4, 4}, 7.222616106151862}, {{
            2017, 4, 4}, 7.222616106151862}, {{2017, 4, 5}, 
            7.222165221621181}, {{2017, 4, 5}, 7.222165221621181}, {{2017, 4, 
            5}, 7.222165221621181}, {{2017, 4, 6}, 7.221714337090502}, {{2017,
             4, 6}, 7.221714337090502}, {{2017, 4, 6}, 7.221714337090502}, {{
            2017, 4, 7}, 7.221263452559822}, {{2017, 4, 7}, 
            7.221263452559822}, {{2017, 4, 7}, 7.221263452559822}, {{2017, 4, 
            10}, 7.219910798967782}, {{2017, 4, 10}, 7.219910798967782}, {{
            2017, 4, 10}, 7.219910798967782}, {{2017, 4, 11}, 
            7.2194599144371026`}, {{2017, 4, 11}, 7.2194599144371026`}, {{
            2017, 4, 11}, 7.2194599144371026`}, {{2017, 4, 12}, 
            7.219009029906423}, {{2017, 4, 12}, 7.219009029906423}, {{2017, 4,
             12}, 7.219009029906423}, {{2017, 4, 13}, 7.218558145375743}, {{
            2017, 4, 13}, 7.218558145375743}, {{2017, 4, 13}, 
            7.218558145375743}, {{2017, 4, 17}, 7.216754607253024}, {{2017, 4,
             17}, 7.216754607253024}, {{2017, 4, 17}, 7.216754607253024}, {{
            2017, 4, 18}, 7.216303722722344}, {{2017, 4, 18}, 
            7.216303722722344}, {{2017, 4, 18}, 7.216303722722344}, {{2017, 4,
             19}, 7.2158528381916645`}, {{2017, 4, 19}, 
            7.2158528381916645`}, {{2017, 4, 19}, 7.2158528381916645`}, {{
            2017, 4, 20}, 7.215401953660984}, {{2017, 4, 20}, 
            7.215401953660984}, {{2017, 4, 20}, 7.215401953660984}, {{2017, 4,
             21}, 7.214951069130304}, {{2017, 4, 21}, 7.214951069130304}, {{
            2017, 4, 21}, 7.214951069130304}, {{2017, 4, 24}, 
            7.213598415538265}, {{2017, 4, 24}, 7.213598415538265}, {{2017, 4,
             24}, 7.213598415538265}, {{2017, 4, 25}, 7.213147531007585}, {{
            2017, 4, 25}, 7.213147531007585}, {{2017, 4, 25}, 
            7.213147531007585}, {{2017, 4, 26}, 7.212696646476905}, {{2017, 4,
             26}, 7.212696646476905}, {{2017, 4, 26}, 7.212696646476905}, {{
            2017, 4, 27}, 7.2122457619462255`}, {{2017, 4, 27}, 
            7.2122457619462255`}, {{2017, 4, 27}, 7.2122457619462255`}, {{
            2017, 4, 28}, 7.211794877415546}, {{2017, 4, 28}, 
            7.211794877415546}, {{2017, 4, 28}, 7.211794877415546}, {{2017, 5,
             1}, 7.210442223823506}, {{2017, 5, 1}, 7.210442223823506}, {{
            2017, 5, 1}, 7.210442223823506}, {{2017, 5, 2}, 
            7.209991339292826}, {{2017, 5, 2}, 7.209991339292826}, {{2017, 5, 
            2}, 7.209991339292826}, {{2017, 5, 3}, 7.209540454762147}, {{2017,
             5, 3}, 7.209540454762147}, {{2017, 5, 3}, 7.209540454762147}, {{
            2017, 5, 4}, 7.209089570231467}, {{2017, 5, 4}, 
            7.209089570231467}, {{2017, 5, 4}, 7.209089570231467}, {{2017, 5, 
            5}, 7.2086386857007865`}, {{2017, 5, 5}, 7.2086386857007865`}, {{
            2017, 5, 5}, 7.2086386857007865`}, {{2017, 5, 8}, 
            7.2072860321087475`}, {{2017, 5, 8}, 7.2072860321087475`}, {{2017,
             5, 8}, 7.2072860321087475`}, {{2017, 5, 9}, 
            7.206835147578068}, {{2017, 5, 9}, 7.206835147578068}, {{2017, 5, 
            9}, 7.206835147578068}, {{2017, 5, 10}, 7.206384263047387}, {{
            2017, 5, 10}, 7.206384263047387}, {{2017, 5, 10}, 
            7.206384263047387}, {{2017, 5, 11}, 7.205933378516708}, {{2017, 5,
             11}, 7.205933378516708}, {{2017, 5, 11}, 7.205933378516708}, {{
            2017, 5, 12}, 7.205482493986028}, {{2017, 5, 12}, 
            7.205482493986028}, {{2017, 5, 12}, 7.205482493986028}, {{2017, 5,
             15}, 7.204129840393988}, {{2017, 5, 15}, 7.204129840393988}, {{
            2017, 5, 15}, 7.204129840393988}, {{2017, 5, 16}, 
            7.2036789558633085`}, {{2017, 5, 16}, 7.2036789558633085`}, {{
            2017, 5, 16}, 7.2036789558633085`}, {{2017, 5, 17}, 
            7.203228071332629}, {{2017, 5, 17}, 7.203228071332629}, {{2017, 5,
             17}, 7.203228071332629}, {{2017, 5, 18}, 7.202777186801949}, {{
            2017, 5, 18}, 7.202777186801949}, {{2017, 5, 18}, 
            7.202777186801949}, {{2017, 5, 19}, 7.20232630227127}, {{2017, 5, 
            19}, 7.20232630227127}, {{2017, 5, 19}, 7.20232630227127}, {{2017,
             5, 22}, 7.20097364867923}, {{2017, 5, 22}, 7.20097364867923}, {{
            2017, 5, 22}, 7.20097364867923}, {{2017, 5, 23}, 
            7.20052276414855}, {{2017, 5, 23}, 7.20052276414855}, {{2017, 5, 
            23}, 7.20052276414855}, {{2017, 5, 24}, 7.20007187961787}, {{2017,
             5, 24}, 7.20007187961787}, {{2017, 5, 24}, 7.20007187961787}, {{
            2017, 5, 25}, 7.19962099508719}, {{2017, 5, 25}, 
            7.19962099508719}, {{2017, 5, 25}, 7.19962099508719}, {{2017, 5, 
            26}, 7.19917011055651}, {{2017, 5, 26}, 7.19917011055651}, {{2017,
             5, 26}, 7.19917011055651}, {{2017, 5, 30}, 7.197366572433791}, {{
            2017, 5, 30}, 7.197366572433791}, {{2017, 5, 30}, 
            7.197366572433791}, {{2017, 5, 31}, 7.196915687903111}, {{2017, 5,
             31}, 7.196915687903111}, {{2017, 5, 31}, 7.196915687903111}, {{
            2017, 6, 1}, 7.196464803372431}, {{2017, 6, 1}, 
            7.196464803372431}, {{2017, 6, 1}, 7.196464803372431}, {{2017, 6, 
            2}, 7.196013918841752}, {{2017, 6, 2}, 7.196013918841752}, {{2017,
             6, 2}, 7.196013918841752}, {{2017, 6, 5}, 7.194661265249712}, {{
            2017, 6, 5}, 7.194661265249712}, {{2017, 6, 5}, 
            7.194661265249712}, {{2017, 6, 6}, 7.194210380719032}, {{2017, 6, 
            6}, 7.194210380719032}, {{2017, 6, 6}, 7.194210380719032}, {{2017,
             6, 7}, 7.193759496188353}, {{2017, 6, 7}, 7.193759496188353}, {{
            2017, 6, 7}, 7.193759496188353}, {{2017, 6, 8}, 
            7.193308611657673}, {{2017, 6, 8}, 7.193308611657673}, {{2017, 6, 
            8}, 7.193308611657673}, {{2017, 6, 9}, 7.1928577271269925`}, {{
            2017, 6, 9}, 7.1928577271269925`}, {{2017, 6, 9}, 
            7.1928577271269925`}, {{2017, 6, 12}, 7.1915050735349535`}, {{
            2017, 6, 12}, 7.1915050735349535`}, {{2017, 6, 12}, 
            7.1915050735349535`}, {{2017, 6, 13}, 7.191054189004274}, {{2017, 
            6, 13}, 7.191054189004274}, {{2017, 6, 13}, 7.191054189004274}, {{
            2017, 6, 14}, 7.190603304473593}, {{2017, 6, 14}, 
            7.190603304473593}, {{2017, 6, 14}, 7.190603304473593}, {{2017, 6,
             15}, 7.190152419942914}, {{2017, 6, 15}, 7.190152419942914}, {{
            2017, 6, 15}, 7.190152419942914}, {{2017, 6, 16}, 
            7.189701535412234}, {{2017, 6, 16}, 7.189701535412234}, {{2017, 6,
             16}, 7.189701535412234}, {{2017, 6, 19}, 7.188348881820194}, {{
            2017, 6, 19}, 7.188348881820194}, {{2017, 6, 19}, 
            7.188348881820194}}, "lm" -> (ReplaceAll[
           Normal[
            
            LinearModelFit[$CellContext`secondsFormData$123944, \
$CellContext`x, $CellContext`x]], Pattern[$CellContext`a, 
              Blank[]] + Pattern[$CellContext`b, 
               
               Blank[]] $CellContext`x -> $CellContext`a + $CellContext`b #]& \
), "nweeks" -> 52, "len" -> 252, "vMin" -> 6.263786315917969, "vMax" -> 
         8.028912544250488}, $CellContext`o$$, $CellContext`h$$], 
      "Specifications" :> {{{$CellContext`o$$, -0.5, 
          "offset from linear fit"}, -1.7651262283325195`, 
         1.7651262283325195`, Appearance -> 
         "Labeled"}, {{$CellContext`h$$, 7.5, "price horizon"}, 
         6.263786315917969, 8.617287953694662, Appearance -> "Labeled"}}, 
      "Options" :> {}, "DefaultOptions" :> {}],
     ImageSizeCache->{405., {181., 187.}},
     SingleEvaluation->True],
    Deinitialization:>None,
    DynamicModuleValues:>{},
    SynchronousInitialization->True,
    UndoTrackedVariables:>{Typeset`show$$, Typeset`bookmarkMode$$},
    UnsavedVariables:>{Typeset`initDone$$},
    UntrackedVariables:>{Typeset`size$$}], "Manipulate",
   Deployed->True,
   StripOnInput->False],
  Manipulate`InterpretManipulate[1]]], "Output",
 CellChangeTimes->{
  3.7069163211380663`*^9},ExpressionUUID->"27436c77-536d-4d12-a7e0-\
140d0c40cf40"]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"manipulatePlotDistAgainstLinearModel", "[", " ", 
  RowBox[{"fDataAndLinearModel", "[", " ", 
   RowBox[{"\"\<CMCT\>\"", ",", " ", "52"}], " ", "]"}], "  ", "]"}]], "Input",
 CellChangeTimes->{{3.706916549087626*^9, 
  3.706916550789734*^9}},ExpressionUUID->"e2057645-5c21-4aef-a244-\
fb158b90dbae"],

Cell[BoxData[
 TagBox[
  StyleBox[
   DynamicModuleBox[{$CellContext`h$$ = 
    16.649999618530273`, $CellContext`o$$ = -0.5, Typeset`show$$ = True, 
    Typeset`bookmarkList$$ = {}, Typeset`bookmarkMode$$ = "Menu", 
    Typeset`animator$$, Typeset`animvar$$ = 1, Typeset`name$$ = 
    "\"untitled\"", Typeset`specs$$ = {{{
       Hold[$CellContext`o$$], -0.5, 
       "offset from linear fit"}, -5.949038505554199, 5.949038505554199}, {{
       Hold[$CellContext`h$$], 16.649999618530273`, "price horizon"}, 
      12.1668119430542, 20.098863283793133`}}, Typeset`size$$ = {
    360., {123., 127.}}, Typeset`update$$ = 0, Typeset`initDone$$, 
    Typeset`skipInitDone$$ = True, $CellContext`o$161113$$ = 
    0, $CellContext`h$161114$$ = 0}, 
    DynamicBox[Manipulate`ManipulateBoxes[
     1, StandardForm, 
      "Variables" :> {$CellContext`h$$ = 
        16.649999618530273`, $CellContext`o$$ = -0.5}, "ControllerVariables" :> {
        Hold[$CellContext`o$$, $CellContext`o$161113$$, 0], 
        Hold[$CellContext`h$$, $CellContext`h$161114$$, 0]}, 
      "OtherVariables" :> {
       Typeset`show$$, Typeset`bookmarkList$$, Typeset`bookmarkMode$$, 
        Typeset`animator$$, Typeset`animvar$$, Typeset`name$$, 
        Typeset`specs$$, Typeset`size$$, Typeset`update$$, Typeset`initDone$$,
         Typeset`skipInitDone$$}, 
      "Body" :> $CellContext`plotDistAgainstLinearModel[{
        "company" -> Missing["NotAvailable"], "symbol" -> "CMCT", 
         "dMin" -> {{{2016, 8, 19}, 0.3843423338962957}, {{2016, 8, 22}, 
            0.1669783015430948}, {{2016, 8, 23}, 0.16146615694928634`}, {{
            2016, 8, 24}, 0.23126471944776483`}, {{2016, 8, 25}, 
            0.1839129752445814}, {{2016, 8, 26}, 0.17003233852430988`}, {{
            2016, 8, 29}, 0.6053582399479644}, {{2016, 8, 30}, 
            0.7923061554737849}, {{2016, 8, 31}, 1.2219222228550741`}, {{2016,
             9, 1}, 0.6808675901631229}, {{2016, 9, 2}, 
            0.8510804287846465}, {{2016, 9, 6}, 0.16797342450609598`}, {{2016,
             9, 7}, 0.2377719870045727}, {{2016, 9, 
            8}, -0.7300385508387475}, {{2016, 9, 9}, -0.5598276195658549}, {{
            2016, 9, 12}, -0.7604546676661261}, {{2016, 9, 
            13}, -0.7241291199991924}, {{2016, 9, 
            14}, -0.5539162813776688}, {{2016, 9, 
            15}, -0.3753368579783114}, {{2016, 9, 
            16}, -0.38084900257211984`}, {{2016, 9, 
            19}, -0.3973854363535434}, {{2016, 9, 20}, 
            0.01585032096915384}, {{2016, 9, 21}, 0.052781451827005554`}, {{
            2016, 9, 22}, 0.35284944639335336`}, {{2016, 9, 23}, 
            0.25396591050316}, {{2016, 9, 26}, -0.13605990316107608`}, {{2016,
             9, 27}, 0.019708584264158446`}, {{2016, 9, 
            28}, -0.053711847377988065`}, {{2016, 9, 
            29}, -0.2544563833292184}, {{2016, 9, 
            30}, -0.11566711343328073`}, {{2016, 10, 3}, 
            0.09698346450404571}, {{2016, 10, 4}, -0.1546920483148586}, {{
            2016, 10, 5}, 0.04351780721340326}, {{2016, 10, 
            6}, -0.11478631430911612`}, {{2016, 10, 
            7}, -0.10332114872225873`}, {{2016, 10, 
            10}, -0.07741621440065494}, {{2016, 10, 
            11}, -0.0914151067361626}, {{2016, 10, 
            12}, -0.05448588322694192}, {{2016, 10, 
            13}, -0.24674367143647302`}, {{2016, 10, 
            14}, -0.1503938622949299}, {{2016, 10, 
            17}, -0.25181493963104096`}, {{2016, 10, 
            18}, -0.05360603777709372}, {{2016, 10, 
            19}, -0.14400187225127326`}, {{2016, 10, 
            20}, -0.18346672985777523`}, {{2016, 10, 
            21}, -0.07014247155851727}, {{2016, 10, 
            24}, -0.2564453314263666}, {{2016, 10, 
            25}, -0.09219104993374927}, {{2016, 10, 26}, 
            0.24183156499392844`}, {{2016, 10, 
            27}, -0.060773971018337036`}, {{2016, 10, 
            28}, -0.06628611561214548}, {{2016, 10, 
            31}, -0.16770433192530554`}, {{2016, 11, 
            1}, -0.21565975197077414`}, {{2016, 11, 
            2}, -0.26361421834192633`}, {{2016, 11, 
            3}, -0.31156677736444394`}, {{2016, 11, 
            4}, -0.27463850752954144`}, {{2016, 11, 7}, 
            0.17568582986823422`}, {{2016, 11, 8}, 0.17017368527442578`}, {{
            2016, 11, 9}, -0.3021992304985801}, {{2016, 11, 
            10}, -0.2652690533150448}, {{2016, 11, 
            11}, -0.35566393411490616`}, {{2016, 11, 
            14}, -0.11755025192953283`}, {{2016, 11, 
            15}, -0.29282977628408347`}, {{2016, 11, 
            16}, -0.12857454111714972`}, {{2016, 11, 
            17}, -0.431179123455097}, {{2016, 11, 
            18}, -0.3263425665718547}, {{2016, 11, 
            21}, -0.2834593683952704}, {{2016, 11, 
            22}, -0.373857110218081}, {{2016, 11, 
            23}, -0.37936925481188943`}, {{2016, 11, 
            25}, -0.30550794677050064`}, {{2016, 11, 
            28}, -0.33902264440690466`}, {{2016, 11, 
            29}, -0.4039525136100881}, {{2016, 11, 
            30}, -0.4179542669685432}, {{2016, 12, 
            1}, -0.4659068259910626}, {{2016, 12, 2}, -0.4289785561561601}, {{
            2016, 12, 5}, -0.41156132325057193`}, {{2016, 12, 
            6}, -0.3237011228736755}, {{2016, 12, 7}, -0.4989796935539097}, {{
            2016, 12, 8}, -0.5469341599250619}, {{2016, 12, 
            9}, -0.46756356831281387`}, {{2016, 12, 
            12}, -0.2718903005561515}, {{2016, 12, 
            13}, -0.3198447669273037}, {{2016, 12, 
            14}, -0.3520483482886885}, {{2016, 12, 
            15}, -0.314509726891286}, {{2016, 12, 
            16}, -0.19086385146556317`}, {{2016, 12, 
            19}, -0.20740028524698673`}, {{2016, 12, 
            20}, -0.3851212158515356}, {{2016, 12, 
            21}, -0.1753728547690745}, {{2016, 12, 22}, 
            0.03437550631338837}, {{2016, 12, 23}, -0.05724007761147476}, {{
            2016, 12, 27}, 0.00681478334434793}, {{2016, 12, 28}, 
            0.08740798543022876}, {{2016, 12, 29}, -0.004209505843267181}, {{
            2016, 12, 30}, -0.2680338757788725}, {{2017, 1, 
            3}, -0.20397806114873163`}, {{2017, 1, 
            4}, -0.12338581273716898`}, {{2017, 1, 
            5}, -0.12889795733097564`}, {{2017, 1, 
            6}, -0.09135933593357315}, {{2017, 1, 
            9}, -0.06484309637515295}, {{2017, 1, 
            10}, -0.0703552409689614}, {{2017, 1, 
            11}, -0.07586738556276806}, {{2017, 1, 
            12}, -0.08137953015657651}, {{2017, 1, 
            13}, -0.0007863280706956743}, {{2017, 1, 
            17}, -0.19504369245666986`}, {{2017, 1, 
            18}, -0.0541782735739158}, {{2017, 1, 
            19}, -0.16301721565307403`}, {{2017, 1, 
            20}, -0.16852936024688248`}, {{2017, 1, 
            23}, -0.18506579402830603`}, {{2017, 1, 
            24}, -0.23362870461332363`}, {{2017, 1, 
            25}, -0.3682979155523469}, {{2017, 1, 
            26}, -0.28770566714078427`}, {{2017, 1, 
            27}, -0.3362695314001183}, {{2017, 1, 
            30}, -0.18059813284511606`}, {{2017, 1, 
            31}, -0.6166312887914636}, {{2017, 2, 1}, -0.3207785347036314}, {{
            2017, 2, 2}, -0.24879701169489898`}, {{2017, 2, 
            3}, -0.20264671122034805`}, {{2017, 2, 
            6}, -0.4774953703435685}, {{2017, 2, 
            7}, -0.39690312193200405`}, {{2017, 2, 
            8}, -0.3163108735204414}, {{2017, 2, 
            9}, -0.44237031273094907`}, {{2017, 2, 
            10}, -0.30150489384819323`}, {{2017, 2, 
            13}, -0.3524823218923121}, {{2017, 2, 
            14}, -0.41826763695731195`}, {{2017, 2, 
            15}, -0.3290656168172319}, {{2017, 2, 
            16}, -0.5326168162816458}, {{2017, 2, 
            17}, -0.45202456787008316`}, {{2017, 2, 
            21}, -0.3879687532399423}, {{2017, 2, 
            22}, -0.3504301318425398}, {{2017, 2, 
            23}, -0.35594227643634824`}, {{2017, 2, 
            24}, -0.3614544210301549}, {{2017, 2, 
            27}, -0.3349381814717347}, {{2017, 2, 
            28}, -0.4696064387364416}, {{2017, 3, 
            1}, -0.38901514399919357`}, {{2017, 3, 
            2}, -0.43757805458421295`}, {{2017, 3, 
            3}, -0.4430901991780214}, {{2017, 3, 
            6}, -0.45962663295944495`}, {{2017, 3, 
            7}, -0.4651387775532516}, {{2017, 3, 
            8}, -0.47065092214706006`}, {{2017, 3, 
            9}, -0.4761630667408667}, {{2017, 3, 
            10}, -0.09420782699629626}, {{2017, 3, 13}, 
            0.1906206379039208}, {{2017, 3, 14}, 0.18510849331011237`}, {{
            2017, 3, 15}, -0.24231298355908493`}, {{2017, 3, 16}, 
            0.36881496278948944`}, {{2017, 3, 17}, 0.022867790119509124`}, {{
            2017, 3, 20}, 0.17218485670429828`}, {{2017, 3, 
            21}, -0.09520244047740078}, {{2017, 3, 
            22}, -0.0570696799808772}, {{2017, 3, 
            23}, -0.06258182457468386}, {{2017, 3, 24}, 0.281074808297328}, {{
            2017, 3, 27}, -0.04098359051095102}, {{2017, 3, 
            28}, -0.00285083001442743}, {{2017, 3, 
            29}, -0.08692475744514816}, {{2017, 3, 30}, 
            0.029771693236922303`}, {{2017, 3, 31}, 0.024259548643115636`}, {{
            2017, 4, 3}, -0.12321541510656964`}, {{2017, 4, 4}, 
            0.04585587535821567}, {{2017, 4, 5}, 0.17128130705835254`}, {{
            2017, 4, 6}, 0.2967076924328076}, {{2017, 4, 
            7}, -0.014325463513539916`}, {{2017, 4, 10}, 
            0.10007567899898184`}, {{2017, 4, 11}, 0.19058423295253846`}, {{
            2017, 4, 12}, 0.11266913425716751`}, {{2017, 4, 13}, 
            0.5689337230617966}, {{2017, 4, 17}, 0.48472369906889057`}, {{
            2017, 4, 18}, 0.31936524862791416`}, {{2017, 4, 19}, 
            0.4292963337093987}, {{2017, 4, 20}, 0.423784189115592}, {{2017, 
            4, 21}, 0.41827204452178357`}, {{2017, 4, 24}, 
            0.40173561074036}, {{2017, 4, 25}, 0.04101125453766663}, {{2017, 
            4, 26}, 0.04437972517823319}, {{2017, 4, 27}, 
            0.11879025667085052`}, {{2017, 4, 28}, -0.0643284705645577}, {{
            2017, 5, 1}, -0.03646373552273907}, {{2017, 5, 
            2}, -0.30838480040463345`}, {{2017, 5, 
            3}, -0.6691101102816432}, {{2017, 5, 4}, -0.7190234236986939}, {{
            2017, 5, 5}, -0.5025278168276586}, {{2017, 5, 
            8}, -0.5190642506090821}, {{2017, 5, 9}, -0.5245763952028888}, {{
            2017, 5, 10}, -0.48568641729913864`}, {{2017, 5, 
            11}, -0.5356006843905057}, {{2017, 5, 
            12}, -0.45230953766351156`}, {{2017, 5, 
            15}, -0.20243609748253277`}, {{2017, 5, 
            16}, -0.42995599354118497`}, {{2017, 5, 
            17}, -0.36442607728294085`}, {{2017, 5, 
            18}, -0.3077758225847571}, {{2017, 5, 
            19}, -0.5352957186434093}, {{2017, 5, 
            22}, -0.4896707068071571}, {{2017, 5, 
            23}, -0.46854100569783874`}, {{2017, 5, 
            24}, -0.4740531502916472}, {{2017, 5, 
            25}, -0.5239674173830124}, {{2017, 5, 
            26}, -0.26306968801441855`}, {{2017, 5, 
            30}, -0.5515281403520529}, {{2017, 5, 
            31}, -0.4238358248018166}, {{2017, 6, 
            1}, -0.38494584689806643`}, {{2017, 6, 
            2}, -0.48814094437273425`}, {{2017, 6, 
            5}, -0.36259325645005447`}, {{2017, 6, 
            6}, -0.5457110300111481}, {{2017, 6, 7}, -0.6400264659257573}, {{
            2017, 6, 8}, -0.6188986721650718}, {{2017, 6, 
            9}, -0.5178462949693294}, {{2017, 6, 
            12}, -0.22357168596510846`}, {{2017, 6, 13}, 
            0.6767093594435245}, {{2017, 6, 14}, 2.3850987346251085`}, {{2017,
             6, 15}, 1.9622110254561047`}, {{2017, 6, 16}, 
            1.595868573855462}, {{2017, 6, 19}, 1.64933374224689}}, 
         "dMax" -> {{{2016, 8, 19}, 0.585169932468073}, {{2016, 8, 22}, 
            0.6188396830738565}, {{2016, 8, 23}, 0.4459720010654973}, {{2016, 
            8, 24}, 0.47393096395460077`}, {{2016, 8, 25}, 
            0.43494771187788217`}, {{2016, 8, 26}, 1.0319174093250911`}, {{
            2016, 8, 29}, 1.1994763582340973`}, {{2016, 8, 30}, 
            0.9931337540455623}, {{2016, 8, 31}, 1.2219222228550741`}, {{2016,
             9, 1}, 1.333556570265662}, {{2016, 9, 2}, 
            1.2945742718632598`}, {{2016, 9, 6}, 1.2474211707829514`}, {{2016,
             9, 7}, 1.158229826970393}, {{2016, 9, 8}, 
            0.48329457904406503`}, {{2016, 9, 9}, -0.3171604213847026}, {{
            2016, 9, 12}, -0.12450076446788394`}, {{2016, 9, 
            13}, -0.38104859936930957`}, {{2016, 9, 14}, 
            0.10714119085133511`}, {{2016, 9, 15}, 0.2438819683156339}, {{
            2016, 9, 16}, 0.004071117667137969}, {{2016, 9, 
            19}, -0.06267150050149262}, {{2016, 9, 20}, 
            0.31294275871329447`}, {{2016, 9, 21}, 1.0628970753011266`}, {{
            2016, 9, 22}, 0.9809889422429627}, {{2016, 9, 23}, 
            0.4576860032765975}, {{2016, 9, 26}, 0.3223122129277911}, {{2016, 
            9, 27}, 0.25738139005029126`}, {{2016, 9, 28}, 
            0.47256760208490256`}, {{2016, 9, 29}, 0.01717199649255896}, {{
            2016, 9, 30}, 0.028636208405098174`}, {{2016, 10, 3}, 
            0.6657052357442801}, {{2016, 10, 4}, 0.5753084475957859}, {{2016, 
            10, 5}, 0.3406102449575439}, {{2016, 10, 6}, 
            0.39451677864742685`}, {{2016, 10, 7}, 0.49086563411465534`}, {{
            2016, 10, 10}, 0.14328214222776303`}, {{2016, 10, 11}, 
            0.1123040323629585}, {{2016, 10, 12}, -0.05448588322694192}, {{
            2016, 10, 13}, 0.32197809980376135`}, {{2016, 10, 14}, 
            0.26553593201659353`}, {{2016, 10, 17}, 0.12167444025177154`}, {{
            2016, 10, 18}, 0.20104503186401956`}, {{2016, 10, 19}, 
            0.19553288727021112`}, {{2016, 10, 20}, 0.06269473101868961}, {{
            2016, 10, 21}, -0.07014247155851727}, {{2016, 10, 
            24}, -0.08667890533994083}, {{2016, 10, 25}, 
            0.12001769793002026`}, {{2016, 10, 26}, 0.24183156499392844`}, {{
            2016, 10, 27}, -0.060773971018337036`}, {{2016, 10, 
            28}, -0.02384379383480173}, {{2016, 10, 
            31}, -0.16770433192530554`}, {{2016, 11, 
            1}, -0.13077606209040304`}, {{2016, 11, 
            2}, -0.22117189656458258`}, {{2016, 11, 3}, 
            0.19773440824346622`}, {{2016, 11, 4}, -0.01998743788842816}, {{
            2016, 11, 7}, 0.21812815164557797`}, {{2016, 11, 8}, 
            0.17017368527442578`}, {{2016, 11, 9}, -0.13243185073783792`}, {{
            2016, 11, 10}, -0.25677944455039636`}, {{2016, 11, 
            11}, -0.35566393411490616`}, {{2016, 11, 14}, 
            0.13710081771158045`}, {{2016, 11, 15}, 0.08914730501474466}, {{
            2016, 11, 16}, 0.041192838643592466`}, {{2016, 11, 
            17}, -0.431179123455097}, {{2016, 11, 
            18}, -0.26692293461384686`}, {{2016, 11, 
            21}, -0.2834593683952704}, {{2016, 11, 
            22}, -0.2889715129890771}, {{2016, 11, 
            23}, -0.2520432431541746}, {{2016, 11, 
            25}, -0.30550794677050064`}, {{2016, 11, 
            28}, -0.27960396612321325`}, {{2016, 11, 
            29}, -0.24267474261399435`}, {{2016, 11, 
            30}, -0.12085992187576977`}, {{2016, 12, 
            1}, -0.33858081433334775`}, {{2016, 12, 
            2}, -0.2931648430824296}, {{2016, 12, 
            5}, -0.27574761017684146`}, {{2016, 12, 
            6}, -0.15393278943861688`}, {{2016, 12, 
            7}, -0.15944493403242532`}, {{2016, 12, 8}, 
            0.08969303734056311}, {{2016, 12, 9}, -0.4251212465354701}, {{
            2016, 12, 12}, -0.05968059901806555}, {{2016, 12, 13}, 
            0.1045746361488682}, {{2016, 12, 14}, 0.33678488840564746`}, {{
            2016, 12, 15}, 0.07296051847004215}, {{2016, 12, 
            16}, -0.061707738794664735`}, {{2016, 12, 
            19}, -0.07824417257608829}, {{2016, 12, 
            20}, -0.040703643830051206`}, {{2016, 12, 21}, 
            0.03988765090719504}, {{2016, 12, 22}, 0.03437550631338837}, {{
            2016, 12, 23}, 0.11496870839926743`}, {{2016, 12, 27}, 
            0.22207528902061746`}, {{2016, 12, 28}, 0.2165631444268108}, {{
            2016, 12, 29}, 0.08189584083642032}, {{2016, 12, 30}, 
            0.033331022902768126`}, {{2017, 1, 3}, 0.011282444527537905`}, {{
            2017, 1, 4}, 0.03160152246790915}, {{2017, 1, 
            5}, -0.0858471913397647}, {{2017, 1, 
            6}, -0.031085211788065337`}, {{2017, 1, 9}, 
            0.15041740930111658`}, {{2017, 1, 10}, -0.0703552409689614}, {{
            2017, 1, 11}, -0.07586738556276806}, {{2017, 1, 
            12}, -0.08137953015657651}, {{2017, 1, 
            13}, -0.0007863280706956743}, {{2017, 1, 
            17}, -0.06588757978577142}, {{2017, 1, 
            18}, -0.0541782735739158}, {{2017, 1, 
            19}, -0.16301721565307403`}, {{2017, 1, 
            20}, -0.16852936024688248`}, {{2017, 1, 
            23}, -0.18506579402830603`}, {{2017, 1, 
            24}, -0.1905779386221127}, {{2017, 1, 
            25}, -0.23053107747861645`}, {{2017, 1, 
            26}, -0.28770566714078427`}, {{2017, 1, 
            27}, -0.3190490342687706}, {{2017, 1, 
            30}, -0.18059813284511606`}, {{2017, 1, 
            31}, -0.40137078311519403`}, {{2017, 2, 
            1}, -0.19162242203273294`}, {{2017, 2, 
            2}, -0.1971345666265396}, {{2017, 2, 
            3}, -0.20264671122034805`}, {{2017, 2, 
            6}, -0.3913909773381974}, {{2017, 2, 
            7}, -0.39690312193200405`}, {{2017, 2, 
            8}, -0.3163108735204414}, {{2017, 2, 
            9}, -0.44237031273094907`}, {{2017, 2, 
            10}, -0.2842843967168456}, {{2017, 2, 
            13}, -0.2577681571584254}, {{2017, 2, 
            14}, -0.32355347222342523`}, {{2017, 2, 
            15}, -0.31184511968588424`}, {{2017, 2, 
            16}, -0.27430459093984894`}, {{2017, 2, 
            17}, -0.30564795806783707`}, {{2017, 2, 
            21}, -0.3018653139088876}, {{2017, 2, 
            22}, -0.30737745850269604`}, {{2017, 2, 
            23}, -0.35594227643634824`}, {{2017, 2, 
            24}, -0.31840174769031115`}, {{2017, 2, 
            27}, -0.3349381814717347}, {{2017, 2, 
            28}, -0.34045032606554315`}, {{2017, 3, 
            1}, -0.3459624706593498}, {{2017, 3, 
            2}, -0.35147461525315826`}, {{2017, 3, 
            3}, -0.43448042744950577`}, {{2017, 3, 6}, -0.416575866968234}, {{
            2017, 3, 7}, -0.3962558353535446}, {{2017, 3, 
            8}, -0.4276001561558491}, {{2017, 3, 9}, 0.2987745629588403}, {{
            2017, 3, 10}, 0.2502116523738209}, {{2017, 3, 13}, 
            0.1906206379039208}, {{2017, 3, 14}, 0.18510849331011237`}, {{
            2017, 3, 15}, 0.2657016953959932}, {{2017, 3, 16}, 
            0.4561076339931027}, {{2017, 3, 17}, 0.4505954893992943}, {{2017, 
            3, 20}, 0.17218485670429828`}, {{2017, 3, 21}, 
            0.5158395822276773}, {{2017, 3, 22}, 0.5539713890498845}, {{2017, 
            3, 23}, 0.5048152930400622}, {{2017, 3, 24}, 
            0.3247178060390272}, {{2017, 3, 27}, 0.30818137225760367`}, {{
            2017, 3, 28}, 0.20665043646506476`}, {{2017, 3, 29}, 
            0.2098663192150081}, {{2017, 3, 30}, 0.23054207134971527`}, {{
            2017, 3, 31}, 0.15519712493706095`}, {{2017, 4, 3}, 
            0.05136801995202411}, {{2017, 4, 4}, 0.15060650859796176`}, {{
            2017, 4, 5}, 0.258572070913333}, {{2017, 4, 6}, 
            0.3316236165050732}, {{2017, 4, 7}, 0.40467420842249524`}, {{2017,
             4, 10}, 0.4055966903515209}, {{2017, 4, 11}, 
            0.3564377333187494}, {{2017, 4, 12}, 0.556684637186855}, {{2017, 
            4, 13}, 0.6399767375881638}, {{2017, 4, 17}, 
            0.5291239142178163}, {{2017, 4, 18}, 0.37264703268553134`}, {{
            2017, 4, 19}, 0.4736994098812737}, {{2017, 4, 20}, 
            0.450426034818717}, {{2017, 4, 21}, 0.5958795808377015}, {{2017, 
            4, 24}, 0.712547607200321}, {{2017, 4, 25}, 
            0.41398469661530335`}, {{2017, 4, 26}, 0.04437972517823319}, {{
            2017, 4, 27}, 0.2963958856381357}, {{2017, 4, 28}, 
            0.06887598957948526}, {{2017, 5, 1}, 0.05233955579806171}, {{2017,
             5, 2}, -0.041975880116547515`}, {{2017, 5, 
            3}, -0.13629036235683856`}, {{2017, 5, 
            4}, -0.5858180098803345}, {{2017, 5, 5}, -0.5025278168276586}, {{
            2017, 5, 8}, -0.2881758839098634}, {{2017, 5, 
            9}, -0.4091322118532794}, {{2017, 5, 10}, -0.3080807883318535}, {{
            2017, 5, 11}, -0.19814874957605255`}, {{2017, 5, 
            12}, -0.45230953766351156`}, {{2017, 5, 
            15}, -0.20243609748253277`}, {{2017, 5, 
            16}, -0.42995599354118497`}, {{2017, 5, 
            17}, -0.1690592178469057}, {{2017, 5, 18}, 
            0.04743638902412961}, {{2017, 5, 19}, -0.22448467585776477`}, {{
            2017, 5, 22}, -0.19661994081594614`}, {{2017, 5, 
            23}, -0.46854100569783874`}, {{2017, 5, 
            24}, -0.4740531502916472}, {{2017, 5, 25}, 0.2752622045041946}, {{
            2017, 5, 26}, 0.4029545200544291}, {{2017, 5, 30}, 
            0.5141104018232401}, {{2017, 5, 31}, -0.3350325334810158}, {{2017,
             6, 1}, 0.014668487208378878`}, {{2017, 6, 
            2}, -0.3016547001710741}, {{2017, 6, 
            5}, -0.36259325645005447`}, {{2017, 6, 
            6}, -0.4569086923646637}, {{2017, 6, 7}, -0.5956252971025151}, {{
            2017, 6, 8}, -0.4679329815522788}, {{2017, 6, 
            9}, -0.5178462949693294}, {{2017, 6, 12}, 0.6200591047453408}, {{
            2017, 6, 13}, 2.7458240445021183`}, {{2017, 6, 14}, 
            3.0067208201963975`}, {{2017, 6, 15}, 3.6672319299971203`}, {{
            2017, 6, 16}, 3.1958689553251887`}, {{2017, 6, 19}, 
            2.729333665952945}}, 
         "dClose" -> {{{2016, 8, 19}, 0.585169932468073}, {{2016, 8, 22}, 
            0.1669783015430948}, {{2016, 8, 23}, 0.387396370877509}, {{2016, 
            8, 24}, 0.3316780418964953}, {{2016, 8, 25}, 
            0.20064805214887826`}, {{2016, 8, 26}, 0.8896654409413021}, {{
            2016, 8, 29}, 0.8312903612248199}, {{2016, 8, 30}, 
            0.9931337540455623}, {{2016, 8, 31}, 1.2219222228550741`}, {{2016,
             9, 1}, 0.6808675901631229}, {{2016, 9, 2}, 
            1.1941609494145293`}, {{2016, 9, 6}, 0.17634096295824442`}, {{
            2016, 9, 7}, 0.4720706930592602}, {{2016, 9, 
            8}, -0.4622687373011498}, {{2016, 9, 9}, -0.5347240505350932}, {{
            2016, 9, 12}, -0.3755364547755011}, {{2016, 9, 
            13}, -0.4981979523966533}, {{2016, 9, 
            14}, -0.4032958208674149}, {{2016, 9, 15}, 
            0.22714593773702063`}, {{2016, 9, 16}, -0.012664912911475312`}, {{
            2016, 9, 19}, -0.06267150050149262}, {{2016, 9, 20}, 
            0.14317537895255228`}, {{2016, 9, 21}, 0.8591760288533727}, {{
            2016, 9, 22}, 0.5735478030217713}, {{2016, 9, 23}, 
            0.25396591050316}, {{2016, 9, 26}, -0.03419890310004092}, {{2016, 
            9, 27}, 0.24889273495995923`}, {{2016, 9, 28}, 
            0.06512455551507834}, {{2016, 9, 29}, -0.016782623868769164`}, {{
            2016, 9, 30}, 0.011659851898750517`}, {{2016, 10, 3}, 
            0.3261695225484793}, {{2016, 10, 4}, 0.17635500979061014`}, {{
            2016, 10, 5}, 0.10293553182277826`}, {{2016, 10, 6}, 
            0.13137705391598153`}, {{2016, 10, 7}, 0.007027552754792055}, {{
            2016, 10, 10}, -0.060438904219990874`}, {{2016, 10, 
            11}, -0.0914151067361626}, {{2016, 10, 
            12}, -0.05448588322694192}, {{2016, 10, 13}, 
            0.05883837507231604}, {{2016, 10, 14}, 0.0533262304785076}, {{
            2016, 10, 17}, -0.04809389318328705}, {{2016, 10, 
            18}, -0.05360603777709372}, {{2016, 10, 19}, 
            0.06820687561249628}, {{2016, 10, 20}, -0.022188958861681485`}, {{
            2016, 10, 21}, -0.07014247155851727}, {{2016, 10, 
            24}, -0.08667890533994083}, {{2016, 10, 
            25}, -0.049749681830721926`}, {{2016, 10, 26}, 
            0.24183156499392844`}, {{2016, 10, 
            27}, -0.060773971018337036`}, {{2016, 10, 
            28}, -0.06628611561214548}, {{2016, 10, 
            31}, -0.16770433192530554`}, {{2016, 11, 
            1}, -0.21565975197077414`}, {{2016, 11, 
            2}, -0.22117189656458258`}, {{2016, 11, 
            3}, -0.269126362935733}, {{2016, 11, 4}, -0.01998743788842816}, {{
            2016, 11, 7}, 0.17568582986823422`}, {{2016, 11, 8}, 
            0.17017368527442578`}, {{2016, 11, 9}, -0.23429189712455667`}, {{
            2016, 11, 10}, -0.2652690533150448}, {{2016, 11, 
            11}, -0.35566393411490616`}, {{2016, 11, 
            14}, -0.032665608374845334`}, {{2016, 11, 15}, 
            0.08914730501474466}, {{2016, 11, 16}, -0.12857454111714972`}, {{
            2016, 11, 17}, -0.431179123455097}, {{2016, 11, 
            18}, -0.26692293461384686`}, {{2016, 11, 
            21}, -0.2834593683952704}, {{2016, 11, 
            22}, -0.373857110218081}, {{2016, 11, 
            23}, -0.2944836575828855}, {{2016, 11, 
            25}, -0.30550794677050064`}, {{2016, 11, 
            28}, -0.3220443805519242}, {{2016, 11, 
            29}, -0.24267474261399435`}, {{2016, 11, 
            30}, -0.4179542669685432}, {{2016, 12, 
            1}, -0.42346641156235165`}, {{2016, 12, 
            2}, -0.38653623437881635`}, {{2016, 12, 
            5}, -0.36062939270857974`}, {{2016, 12, 
            6}, -0.15393278943861688`}, {{2016, 12, 
            7}, -0.45653927912519876`}, {{2016, 12, 
            8}, -0.3771658264900033}, {{2016, 12, 9}, -0.4251212465354701}, {{
            2016, 12, 12}, -0.14456524257275305`}, {{2016, 12, 
            13}, -0.3198447669273037}, {{2016, 12, 14}, 
            0.03541998972400684}, {{2016, 12, 15}, -0.27145705355144223`}, {{
            2016, 12, 16}, -0.10475945846019208`}, {{2016, 12, 
            19}, -0.16434856558145938`}, {{2016, 12, 
            20}, -0.1870812073066137}, {{2016, 12, 21}, 
            0.03988765090719504}, {{2016, 12, 22}, 0.03437550631338837}, {{
            2016, 12, 23}, 0.028863361719579927`}, {{2016, 12, 27}, 
            0.22207528902061746`}, {{2016, 12, 28}, 0.2165631444268108}, {{
            2016, 12, 29}, -0.004209505843267181}, {{2016, 12, 
            30}, -0.22498215611334516`}, {{2017, 1, 
            3}, -0.031770228812305845`}, {{2017, 1, 
            4}, -0.08033504674595804}, {{2017, 1, 
            5}, -0.12889795733097564`}, {{2017, 1, 
            6}, -0.0483066625937294}, {{2017, 1, 9}, -0.06484309637515295}, {{
            2017, 1, 10}, -0.0703552409689614}, {{2017, 1, 
            11}, -0.07586738556276806}, {{2017, 1, 
            12}, -0.08137953015657651}, {{2017, 1, 
            13}, -0.0007863280706956743}, {{2017, 1, 
            17}, -0.06588757978577142}, {{2017, 1, 
            18}, -0.0541782735739158}, {{2017, 1, 
            19}, -0.16301721565307403`}, {{2017, 1, 
            20}, -0.16852936024688248`}, {{2017, 1, 
            23}, -0.18506579402830603`}, {{2017, 1, 
            24}, -0.23362870461332363`}, {{2017, 1, 
            25}, -0.23914084920713208`}, {{2017, 1, 
            26}, -0.28770566714078427`}, {{2017, 1, 
            27}, -0.3362695314001183}, {{2017, 1, 
            30}, -0.18059813284511606`}, {{2017, 1, 
            31}, -0.40137078311519403`}, {{2017, 2, 
            1}, -0.3207785347036314}, {{2017, 2, 2}, -0.1971345666265396}, {{
            2017, 2, 3}, -0.20264671122034805`}, {{2017, 2, 
            6}, -0.3913909773381974}, {{2017, 2, 
            7}, -0.39690312193200405`}, {{2017, 2, 
            8}, -0.3163108735204414}, {{2017, 2, 
            9}, -0.44237031273094907`}, {{2017, 2, 
            10}, -0.2842843967168456}, {{2017, 2, 
            13}, -0.30082083049826913`}, {{2017, 2, 
            14}, -0.41826763695731195`}, {{2017, 2, 
            15}, -0.3290656168172319}, {{2017, 2, 
            16}, -0.5326168162816458}, {{2017, 2, 
            17}, -0.36592017486471207`}, {{2017, 2, 
            21}, -0.34491798724873135`}, {{2017, 2, 
            22}, -0.3504301318425398}, {{2017, 2, 
            23}, -0.35594227643634824`}, {{2017, 2, 
            24}, -0.31840174769031115`}, {{2017, 2, 
            27}, -0.3349381814717347}, {{2017, 2, 
            28}, -0.34045032606554315`}, {{2017, 3, 
            1}, -0.3459624706593498}, {{2017, 3, 
            2}, -0.35147461525315826`}, {{2017, 3, 
            3}, -0.43448042744950577`}, {{2017, 3, 
            6}, -0.45962663295944495`}, {{2017, 3, 
            7}, -0.3962558353535446}, {{2017, 3, 
            8}, -0.47065092214706006`}, {{2017, 3, 
            9}, -0.2609035147389136}, {{2017, 3, 10}, 0.2502116523738209}, {{
            2017, 3, 13}, 0.1906206379039208}, {{2017, 3, 14}, 
            0.18510849331011237`}, {{2017, 3, 15}, -0.07871492295117477}, {{
            2017, 3, 16}, 0.4561076339931027}, {{2017, 3, 17}, 
            0.4505954893992943}, {{2017, 3, 20}, 0.17218485670429828`}, {{
            2017, 3, 21}, 0.16667271211048984`}, {{2017, 3, 22}, 
            0.5103274376338689}, {{2017, 3, 23}, -0.06258182457468386}, {{
            2017, 3, 24}, 0.281074808297328}, {{2017, 3, 27}, 
            0.0026613145793810133`}, {{2017, 3, 28}, 0.20665043646506476`}, {{
            2017, 3, 29}, 0.07892874292106278}, {{2017, 3, 30}, 
            0.23054207134971527`}, {{2017, 3, 31}, 0.024259548643115636`}, {{
            2017, 4, 3}, 0.05136801995202411}, {{2017, 4, 4}, 
            0.13314854656182895`}, {{2017, 4, 5}, 0.2149290731716338}, {{2017,
             4, 6}, 0.2967076924328076}, {{2017, 4, 7}, 
            0.16025701787073743`}, {{2017, 4, 10}, 0.10007567899898184`}, {{
            2017, 4, 11}, 0.2691469694637689}, {{2017, 4, 12}, 
            0.556684637186855}, {{2017, 4, 13}, 0.5689337230617966}, {{2017, 
            4, 17}, 0.48472369906889057`}, {{2017, 4, 18}, 
            0.35488580221678134`}, {{2017, 4, 19}, 0.4381769489437737}, {{
            2017, 4, 20}, 0.450426034818717}, {{2017, 4, 21}, 
            0.5958795808377015}, {{2017, 4, 24}, 0.40173561074036}, {{2017, 4,
             25}, 0.04101125453766663}, {{2017, 4, 26}, 
            0.04437972517823319}, {{2017, 4, 27}, 0.2075935479916513}, {{2017,
             4, 28}, 0.06887598957948526}, {{2017, 5, 
            1}, -0.03646373552273907}, {{2017, 5, 
            2}, -0.30838480040463345`}, {{2017, 5, 
            3}, -0.5359056501376003}, {{2017, 5, 4}, -0.6657416396410767}, {{
            2017, 5, 5}, -0.5025278168276586}, {{2017, 5, 
            8}, -0.2881758839098634}, {{2017, 5, 9}, -0.5245763952028888}, {{
            2017, 5, 10}, -0.3080807883318535}, {{2017, 5, 
            11}, -0.4467973930697049}, {{2017, 5, 
            12}, -0.45230953766351156`}, {{2017, 5, 
            15}, -0.20243609748253277`}, {{2017, 5, 
            16}, -0.42995599354118497`}, {{2017, 5, 
            17}, -0.36442607728294085`}, {{2017, 5, 
            18}, -0.21897253126395633`}, {{2017, 5, 
            19}, -0.22448467585776477`}, {{2017, 5, 
            22}, -0.4630288611040321}, {{2017, 5, 
            23}, -0.46854100569783874`}, {{2017, 5, 
            24}, -0.4740531502916472}, {{2017, 5, 
            25}, -0.5239674173830124}, {{2017, 5, 26}, 0.3141502750593119}, {{
            2017, 5, 30}, -0.5515281403520529}, {{2017, 5, 
            31}, -0.3350325334810158}, {{2017, 6, 
            1}, -0.38494584689806643`}, {{2017, 6, 
            2}, -0.3460568226686327}, {{2017, 6, 
            5}, -0.36259325645005447`}, {{2017, 6, 
            6}, -0.4569086923646637}, {{2017, 6, 7}, -0.6400264659257573}, {{
            2017, 6, 8}, -0.512334150375521}, {{2017, 6, 
            9}, -0.5178462949693294}, {{2017, 6, 12}, 0.6111784895109658}, {{
            2017, 6, 13}, 2.390610879218915}, {{2017, 6, 14}, 
            2.473901072271593}, {{2017, 6, 15}, 2.2463811762129406`}, {{2017, 
            6, 16}, 2.895869718264642}, {{2017, 6, 19}, 2.179332521543765}}, 
         "dZero" -> {{{2016, 8, 19}, 0}, {{2016, 8, 22}, 0}, {{2016, 8, 23}, 
            0}, {{2016, 8, 24}, 0}, {{2016, 8, 25}, 0}, {{2016, 8, 26}, 0}, {{
            2016, 8, 29}, 0}, {{2016, 8, 30}, 0}, {{2016, 8, 31}, 0}, {{2016, 
            9, 1}, 0}, {{2016, 9, 2}, 0}, {{2016, 9, 6}, 0}, {{2016, 9, 7}, 
            0}, {{2016, 9, 8}, 0}, {{2016, 9, 9}, 0}, {{2016, 9, 12}, 0}, {{
            2016, 9, 13}, 0}, {{2016, 9, 14}, 0}, {{2016, 9, 15}, 0}, {{2016, 
            9, 16}, 0}, {{2016, 9, 19}, 0}, {{2016, 9, 20}, 0}, {{2016, 9, 
            21}, 0}, {{2016, 9, 22}, 0}, {{2016, 9, 23}, 0}, {{2016, 9, 26}, 
            0}, {{2016, 9, 27}, 0}, {{2016, 9, 28}, 0}, {{2016, 9, 29}, 0}, {{
            2016, 9, 30}, 0}, {{2016, 10, 3}, 0}, {{2016, 10, 4}, 0}, {{2016, 
            10, 5}, 0}, {{2016, 10, 6}, 0}, {{2016, 10, 7}, 0}, {{2016, 10, 
            10}, 0}, {{2016, 10, 11}, 0}, {{2016, 10, 12}, 0}, {{2016, 10, 
            13}, 0}, {{2016, 10, 14}, 0}, {{2016, 10, 17}, 0}, {{2016, 10, 
            18}, 0}, {{2016, 10, 19}, 0}, {{2016, 10, 20}, 0}, {{2016, 10, 
            21}, 0}, {{2016, 10, 24}, 0}, {{2016, 10, 25}, 0}, {{2016, 10, 
            26}, 0}, {{2016, 10, 27}, 0}, {{2016, 10, 28}, 0}, {{2016, 10, 
            31}, 0}, {{2016, 11, 1}, 0}, {{2016, 11, 2}, 0}, {{2016, 11, 3}, 
            0}, {{2016, 11, 4}, 0}, {{2016, 11, 7}, 0}, {{2016, 11, 8}, 0}, {{
            2016, 11, 9}, 0}, {{2016, 11, 10}, 0}, {{2016, 11, 11}, 0}, {{
            2016, 11, 14}, 0}, {{2016, 11, 15}, 0}, {{2016, 11, 16}, 0}, {{
            2016, 11, 17}, 0}, {{2016, 11, 18}, 0}, {{2016, 11, 21}, 0}, {{
            2016, 11, 22}, 0}, {{2016, 11, 23}, 0}, {{2016, 11, 25}, 0}, {{
            2016, 11, 28}, 0}, {{2016, 11, 29}, 0}, {{2016, 11, 30}, 0}, {{
            2016, 12, 1}, 0}, {{2016, 12, 2}, 0}, {{2016, 12, 5}, 0}, {{2016, 
            12, 6}, 0}, {{2016, 12, 7}, 0}, {{2016, 12, 8}, 0}, {{2016, 12, 
            9}, 0}, {{2016, 12, 12}, 0}, {{2016, 12, 13}, 0}, {{2016, 12, 14},
             0}, {{2016, 12, 15}, 0}, {{2016, 12, 16}, 0}, {{2016, 12, 19}, 
            0}, {{2016, 12, 20}, 0}, {{2016, 12, 21}, 0}, {{2016, 12, 22}, 
            0}, {{2016, 12, 23}, 0}, {{2016, 12, 27}, 0}, {{2016, 12, 28}, 
            0}, {{2016, 12, 29}, 0}, {{2016, 12, 30}, 0}, {{2017, 1, 3}, 
            0}, {{2017, 1, 4}, 0}, {{2017, 1, 5}, 0}, {{2017, 1, 6}, 0}, {{
            2017, 1, 9}, 0}, {{2017, 1, 10}, 0}, {{2017, 1, 11}, 0}, {{2017, 
            1, 12}, 0}, {{2017, 1, 13}, 0}, {{2017, 1, 17}, 0}, {{2017, 1, 
            18}, 0}, {{2017, 1, 19}, 0}, {{2017, 1, 20}, 0}, {{2017, 1, 23}, 
            0}, {{2017, 1, 24}, 0}, {{2017, 1, 25}, 0}, {{2017, 1, 26}, 0}, {{
            2017, 1, 27}, 0}, {{2017, 1, 30}, 0}, {{2017, 1, 31}, 0}, {{2017, 
            2, 1}, 0}, {{2017, 2, 2}, 0}, {{2017, 2, 3}, 0}, {{2017, 2, 6}, 
            0}, {{2017, 2, 7}, 0}, {{2017, 2, 8}, 0}, {{2017, 2, 9}, 0}, {{
            2017, 2, 10}, 0}, {{2017, 2, 13}, 0}, {{2017, 2, 14}, 0}, {{2017, 
            2, 15}, 0}, {{2017, 2, 16}, 0}, {{2017, 2, 17}, 0}, {{2017, 2, 
            21}, 0}, {{2017, 2, 22}, 0}, {{2017, 2, 23}, 0}, {{2017, 2, 24}, 
            0}, {{2017, 2, 27}, 0}, {{2017, 2, 28}, 0}, {{2017, 3, 1}, 0}, {{
            2017, 3, 2}, 0}, {{2017, 3, 3}, 0}, {{2017, 3, 6}, 0}, {{2017, 3, 
            7}, 0}, {{2017, 3, 8}, 0}, {{2017, 3, 9}, 0}, {{2017, 3, 10}, 
            0}, {{2017, 3, 13}, 0}, {{2017, 3, 14}, 0}, {{2017, 3, 15}, 0}, {{
            2017, 3, 16}, 0}, {{2017, 3, 17}, 0}, {{2017, 3, 20}, 0}, {{2017, 
            3, 21}, 0}, {{2017, 3, 22}, 0}, {{2017, 3, 23}, 0}, {{2017, 3, 
            24}, 0}, {{2017, 3, 27}, 0}, {{2017, 3, 28}, 0}, {{2017, 3, 29}, 
            0}, {{2017, 3, 30}, 0}, {{2017, 3, 31}, 0}, {{2017, 4, 3}, 0}, {{
            2017, 4, 4}, 0}, {{2017, 4, 5}, 0}, {{2017, 4, 6}, 0}, {{2017, 4, 
            7}, 0}, {{2017, 4, 10}, 0}, {{2017, 4, 11}, 0}, {{2017, 4, 12}, 
            0}, {{2017, 4, 13}, 0}, {{2017, 4, 17}, 0}, {{2017, 4, 18}, 0}, {{
            2017, 4, 19}, 0}, {{2017, 4, 20}, 0}, {{2017, 4, 21}, 0}, {{2017, 
            4, 24}, 0}, {{2017, 4, 25}, 0}, {{2017, 4, 26}, 0}, {{2017, 4, 
            27}, 0}, {{2017, 4, 28}, 0}, {{2017, 5, 1}, 0}, {{2017, 5, 2}, 
            0}, {{2017, 5, 3}, 0}, {{2017, 5, 4}, 0}, {{2017, 5, 5}, 0}, {{
            2017, 5, 8}, 0}, {{2017, 5, 9}, 0}, {{2017, 5, 10}, 0}, {{2017, 5,
             11}, 0}, {{2017, 5, 12}, 0}, {{2017, 5, 15}, 0}, {{2017, 5, 16}, 
            0}, {{2017, 5, 17}, 0}, {{2017, 5, 18}, 0}, {{2017, 5, 19}, 0}, {{
            2017, 5, 22}, 0}, {{2017, 5, 23}, 0}, {{2017, 5, 24}, 0}, {{2017, 
            5, 25}, 0}, {{2017, 5, 26}, 0}, {{2017, 5, 30}, 0}, {{2017, 5, 
            31}, 0}, {{2017, 6, 1}, 0}, {{2017, 6, 2}, 0}, {{2017, 6, 5}, 
            0}, {{2017, 6, 6}, 0}, {{2017, 6, 7}, 0}, {{2017, 6, 8}, 0}, {{
            2017, 6, 9}, 0}, {{2017, 6, 12}, 0}, {{2017, 6, 13}, 0}, {{2017, 
            6, 14}, 0}, {{2017, 6, 15}, 0}, {{2017, 6, 16}, 0}, {{2017, 6, 
            19}, 0}}, 
         "min" -> {{{2016, 8, 19}, 13.179317474365234`}, {{2016, 8, 22}, 
            12.978489875793457`}, {{2016, 8, 23}, 12.978489875793457`}, {{
            2016, 8, 24}, 13.053800582885742`}, {{2016, 8, 25}, 
            13.011960983276367`}, {{2016, 8, 26}, 13.003592491149902`}, {{
            2016, 8, 29}, 13.45545482635498}, {{2016, 8, 30}, 
            13.64791488647461}, {{2016, 8, 31}, 14.083043098449707`}, {{2016, 
            9, 1}, 13.547500610351562`}, {{2016, 9, 2}, 
            13.723225593566895`}, {{2016, 9, 6}, 13.062167167663574`}, {{2016,
             9, 7}, 13.13747787475586}, {{2016, 9, 8}, 
            12.175179481506348`}, {{2016, 9, 9}, 12.350902557373047`}, {{2016,
             9, 12}, 12.1668119430542}, {{2016, 9, 13}, 
            12.208649635314941`}, {{2016, 9, 14}, 12.384374618530273`}, {{
            2016, 9, 15}, 12.568466186523438`}, {{2016, 9, 16}, 
            12.568466186523438`}, {{2016, 9, 19}, 12.568466186523438`}, {{
            2016, 9, 20}, 12.987214088439941`}, {{2016, 9, 21}, 
            13.029657363891602`}, {{2016, 9, 22}, 13.335237503051758`}, {{
            2016, 9, 23}, 13.241866111755371`}, {{2016, 9, 26}, 
            12.868376731872559`}, {{2016, 9, 27}, 13.029657363891602`}, {{
            2016, 9, 28}, 12.961749076843262`}, {{2016, 9, 29}, 
            12.76651668548584}, {{2016, 9, 30}, 12.910818099975586`}, {{2016, 
            10, 3}, 13.140005111694336`}, {{2016, 10, 4}, 
            12.893841743469238`}, {{2016, 10, 5}, 13.097563743591309`}, {{
            2016, 10, 6}, 12.944771766662598`}, {{2016, 10, 7}, 
            12.961749076843262`}, {{2016, 10, 10}, 13.004190444946289`}, {{
            2016, 10, 11}, 12.99570369720459}, {{2016, 10, 12}, 
            13.038145065307617`}, {{2016, 10, 13}, 12.851399421691895`}, {{
            2016, 10, 14}, 12.953261375427246`}, {{2016, 10, 17}, 
            12.868376731872559`}, {{2016, 10, 18}, 13.072097778320312`}, {{
            2016, 10, 19}, 12.987214088439941`}, {{2016, 10, 20}, 
            12.953261375427246`}, {{2016, 10, 21}, 13.072097778320312`}, {{
            2016, 10, 24}, 12.902331352233887`}, {{2016, 10, 25}, 
            13.072097778320312`}, {{2016, 10, 26}, 13.411632537841797`}, {{
            2016, 10, 27}, 13.11453914642334}, {{2016, 10, 28}, 
            13.11453914642334}, {{2016, 10, 31}, 13.029657363891602`}, {{2016,
             11, 1}, 12.987214088439941`}, {{2016, 11, 2}, 
            12.944771766662598`}, {{2016, 11, 3}, 12.902331352233887`}, {{
            2016, 11, 4}, 12.944771766662598`}, {{2016, 11, 7}, 
            13.411632537841797`}, {{2016, 11, 8}, 13.411632537841797`}, {{
            2016, 11, 9}, 12.944771766662598`}, {{2016, 11, 10}, 
            12.987214088439941`}, {{2016, 11, 11}, 12.902331352233887`}, {{
            2016, 11, 14}, 13.156981468200684`}, {{2016, 11, 15}, 
            12.987214088439941`}, {{2016, 11, 16}, 13.156981468200684`}, {{
            2016, 11, 17}, 12.859889030456543`}, {{2016, 11, 18}, 
            12.970237731933594`}, {{2016, 11, 21}, 13.029657363891602`}, {{
            2016, 11, 22}, 12.944771766662598`}, {{2016, 11, 23}, 
            12.944771766662598`}, {{2016, 11, 25}, 13.029657363891602`}, {{
            2016, 11, 28}, 13.012679100036621`}, {{2016, 11, 29}, 
            12.953261375427246`}, {{2016, 11, 30}, 12.944771766662598`}, {{
            2016, 12, 1}, 12.902331352233887`}, {{2016, 12, 2}, 
            12.944771766662598`}, {{2016, 12, 5}, 12.97872543334961}, {{2016, 
            12, 6}, 13.072097778320312`}, {{2016, 12, 7}, 
            12.902331352233887`}, {{2016, 12, 8}, 12.859889030456543`}, {{
            2016, 12, 9}, 12.944771766662598`}, {{2016, 12, 12}, 
            13.156981468200684`}, {{2016, 12, 13}, 13.11453914642334}, {{2016,
             12, 14}, 13.087847709655762`}, {{2016, 12, 15}, 
            13.130898475646973`}, {{2016, 12, 16}, 13.260056495666504`}, {{
            2016, 12, 19}, 13.260056495666504`}, {{2016, 12, 20}, 
            13.087847709655762`}, {{2016, 12, 21}, 13.303108215332031`}, {{
            2016, 12, 22}, 13.5183687210083}, {{2016, 12, 23}, 
            13.432265281677246`}, {{2016, 12, 27}, 13.5183687210083}, {{2016, 
            12, 28}, 13.604474067687988`}, {{2016, 12, 29}, 
            13.5183687210083}, {{2016, 12, 30}, 13.260056495666504`}, {{2017, 
            1, 3}, 13.346160888671875`}, {{2017, 1, 4}, 
            13.432265281677246`}, {{2017, 1, 5}, 13.432265281677246`}, {{2017,
             1, 6}, 13.475316047668457`}, {{2017, 1, 9}, 13.5183687210083}, {{
            2017, 1, 10}, 13.5183687210083}, {{2017, 1, 11}, 
            13.5183687210083}, {{2017, 1, 12}, 13.5183687210083}, {{2017, 1, 
            13}, 13.604474067687988`}, {{2017, 1, 17}, 
            13.432265281677246`}, {{2017, 1, 18}, 13.578642845153809`}, {{
            2017, 1, 19}, 13.475316047668457`}, {{2017, 1, 20}, 
            13.475316047668457`}, {{2017, 1, 23}, 13.475316047668457`}, {{
            2017, 1, 24}, 13.432265281677246`}, {{2017, 1, 25}, 
            13.303108215332031`}, {{2017, 1, 26}, 13.389212608337402`}, {{
            2017, 1, 27}, 13.346160888671875`}, {{2017, 1, 30}, 
            13.5183687210083}, {{2017, 1, 31}, 13.087847709655762`}, {{2017, 
            2, 1}, 13.389212608337402`}, {{2017, 2, 2}, 
            13.466706275939941`}, {{2017, 2, 3}, 13.5183687210083}, {{2017, 2,
             6}, 13.260056495666504`}, {{2017, 2, 7}, 13.346160888671875`}, {{
            2017, 2, 8}, 13.432265281677246`}, {{2017, 2, 9}, 
            13.311717987060547`}, {{2017, 2, 10}, 13.45809555053711}, {{2017, 
            2, 13}, 13.423654556274414`}, {{2017, 2, 14}, 
            13.363381385803223`}, {{2017, 2, 15}, 13.45809555053711}, {{2017, 
            2, 16}, 13.260056495666504`}, {{2017, 2, 17}, 
            13.346160888671875`}, {{2017, 2, 21}, 13.432265281677246`}, {{
            2017, 2, 22}, 13.475316047668457`}, {{2017, 2, 23}, 
            13.475316047668457`}, {{2017, 2, 24}, 13.475316047668457`}, {{
            2017, 2, 27}, 13.5183687210083}, {{2017, 2, 28}, 
            13.389212608337402`}, {{2017, 3, 1}, 13.475316047668457`}, {{2017,
             3, 2}, 13.432265281677246`}, {{2017, 3, 3}, 
            13.432265281677246`}, {{2017, 3, 6}, 13.432265281677246`}, {{2017,
             3, 7}, 13.432265281677246`}, {{2017, 3, 8}, 
            13.432265281677246`}, {{2017, 3, 9}, 13.432265281677246`}, {{2017,
             3, 10}, 13.819732666015625`}, {{2017, 3, 13}, 
            14.121097564697266`}, {{2017, 3, 14}, 14.121097564697266`}, {{
            2017, 3, 15}, 13.699188232421875`}, {{2017, 3, 16}, 
            14.315828323364258`}, {{2017, 3, 17}, 13.975393295288086`}, {{
            2017, 3, 20}, 14.141246795654297`}, {{2017, 3, 21}, 
            13.879371643066406`}, {{2017, 3, 22}, 13.923016548156738`}, {{
            2017, 3, 23}, 13.923016548156738`}, {{2017, 3, 24}, 
            14.272185325622559`}, {{2017, 3, 27}, 13.966663360595703`}, {{
            2017, 3, 28}, 14.010308265686035`}, {{2017, 3, 29}, 
            13.931746482849121`}, {{2017, 3, 30}, 14.053955078125}, {{2017, 3,
             31}, 14.053955078125}, {{2017, 4, 3}, 13.923016548156738`}, {{
            2017, 4, 4}, 14.097599983215332`}, {{2017, 4, 5}, 
            14.228537559509277`}, {{2017, 4, 6}, 14.359476089477539`}, {{2017,
             4, 7}, 14.053955078125}, {{2017, 4, 10}, 14.184892654418945`}, {{
            2017, 4, 11}, 14.280913352966309`}, {{2017, 4, 12}, 
            14.208510398864746`}, {{2017, 4, 13}, 14.670287132263184`}, {{
            2017, 4, 17}, 14.608125686645508`}, {{2017, 4, 18}, 
            14.44827938079834}, {{2017, 4, 19}, 14.563722610473633`}, {{2017, 
            4, 20}, 14.563722610473633`}, {{2017, 4, 21}, 
            14.563722610473633`}, {{2017, 4, 24}, 14.563722610473633`}, {{
            2017, 4, 25}, 14.208510398864746`}, {{2017, 4, 26}, 
            14.217391014099121`}, {{2017, 4, 27}, 14.297313690185547`}, {{
            2017, 4, 28}, 14.119707107543945`}, {{2017, 5, 1}, 
            14.164108276367188`}, {{2017, 5, 2}, 13.897699356079102`}, {{2017,
             5, 3}, 13.542486190795898`}, {{2017, 5, 4}, 
            13.498085021972656`}, {{2017, 5, 5}, 13.7200927734375}, {{2017, 5,
             8}, 13.7200927734375}, {{2017, 5, 9}, 13.7200927734375}, {{2017, 
            5, 10}, 13.764494895935059`}, {{2017, 5, 11}, 
            13.7200927734375}, {{2017, 5, 12}, 13.8088960647583}, {{2017, 5, 
            15}, 14.075305938720703`}, {{2017, 5, 16}, 13.85329818725586}, {{
            2017, 5, 17}, 13.92434024810791}, {{2017, 5, 18}, 
            13.986502647399902`}, {{2017, 5, 19}, 13.764494895935059`}, {{
            2017, 5, 22}, 13.826656341552734`}, {{2017, 5, 23}, 
            13.85329818725586}, {{2017, 5, 24}, 13.85329818725586}, {{2017, 5,
             25}, 13.8088960647583}, {{2017, 5, 26}, 14.075305938720703`}, {{
            2017, 5, 30}, 13.8088960647583}, {{2017, 5, 31}, 
            13.942100524902344`}, {{2017, 6, 1}, 13.986502647399902`}, {{2017,
             6, 2}, 13.888819694519043`}, {{2017, 6, 5}, 
            14.030903816223145`}, {{2017, 6, 6}, 13.85329818725586}, {{2017, 
            6, 7}, 13.764494895935059`}, {{2017, 6, 8}, 13.79113483428955}, {{
            2017, 6, 9}, 13.897699356079102`}, {{2017, 6, 12}, 
            14.208510398864746`}, {{2017, 6, 13}, 15.114303588867188`}, {{
            2017, 6, 14}, 16.828205108642578`}, {{2017, 6, 15}, 
            16.410829544067383`}, {{2017, 6, 16}, 16.049999237060547`}, {{
            2017, 6, 19}, 16.1200008392334}}, 
         "max" -> {{{2016, 8, 19}, 13.380145072937012`}, {{2016, 8, 22}, 
            13.430351257324219`}, {{2016, 8, 23}, 13.262995719909668`}, {{
            2016, 8, 24}, 13.296466827392578`}, {{2016, 8, 25}, 
            13.262995719909668`}, {{2016, 8, 26}, 13.865477561950684`}, {{
            2016, 8, 29}, 14.049572944641113`}, {{2016, 8, 30}, 
            13.848742485046387`}, {{2016, 8, 31}, 14.083043098449707`}, {{
            2016, 9, 1}, 14.200189590454102`}, {{2016, 9, 2}, 
            14.166719436645508`}, {{2016, 9, 6}, 14.14161491394043}, {{2016, 
            9, 7}, 14.05793571472168}, {{2016, 9, 8}, 13.38851261138916}, {{
            2016, 9, 9}, 12.5935697555542}, {{2016, 9, 12}, 
            12.802765846252441`}, {{2016, 9, 13}, 12.551730155944824`}, {{
            2016, 9, 14}, 13.045432090759277`}, {{2016, 9, 15}, 
            13.187685012817383`}, {{2016, 9, 16}, 12.953386306762695`}, {{
            2016, 9, 19}, 12.903180122375488`}, {{2016, 9, 20}, 
            13.284306526184082`}, {{2016, 9, 21}, 14.039772987365723`}, {{
            2016, 9, 22}, 13.963376998901367`}, {{2016, 9, 23}, 
            13.445586204528809`}, {{2016, 9, 26}, 13.326748847961426`}, {{
            2016, 9, 27}, 13.267330169677734`}, {{2016, 9, 28}, 
            13.488028526306152`}, {{2016, 9, 29}, 13.038145065307617`}, {{
            2016, 9, 30}, 13.055121421813965`}, {{2016, 10, 3}, 
            13.70872688293457}, {{2016, 10, 4}, 13.623842239379883`}, {{2016, 
            10, 5}, 13.39465618133545}, {{2016, 10, 6}, 13.45407485961914}, {{
            2016, 10, 7}, 13.555935859680176`}, {{2016, 10, 10}, 
            13.224888801574707`}, {{2016, 10, 11}, 13.199422836303711`}, {{
            2016, 10, 12}, 13.038145065307617`}, {{2016, 10, 13}, 
            13.420121192932129`}, {{2016, 10, 14}, 13.36919116973877}, {{2016,
             10, 17}, 13.241866111755371`}, {{2016, 10, 18}, 
            13.326748847961426`}, {{2016, 10, 19}, 13.326748847961426`}, {{
            2016, 10, 20}, 13.199422836303711`}, {{2016, 10, 21}, 
            13.072097778320312`}, {{2016, 10, 24}, 13.072097778320312`}, {{
            2016, 10, 25}, 13.284306526184082`}, {{2016, 10, 26}, 
            13.411632537841797`}, {{2016, 10, 27}, 13.11453914642334}, {{2016,
             10, 28}, 13.156981468200684`}, {{2016, 10, 31}, 
            13.029657363891602`}, {{2016, 11, 1}, 13.072097778320312`}, {{
            2016, 11, 2}, 12.987214088439941`}, {{2016, 11, 3}, 
            13.411632537841797`}, {{2016, 11, 4}, 13.199422836303711`}, {{
            2016, 11, 7}, 13.45407485961914}, {{2016, 11, 8}, 
            13.411632537841797`}, {{2016, 11, 9}, 13.11453914642334}, {{2016, 
            11, 10}, 12.99570369720459}, {{2016, 11, 11}, 
            12.902331352233887`}, {{2016, 11, 14}, 13.411632537841797`}, {{
            2016, 11, 15}, 13.36919116973877}, {{2016, 11, 16}, 
            13.326748847961426`}, {{2016, 11, 17}, 12.859889030456543`}, {{
            2016, 11, 18}, 13.029657363891602`}, {{2016, 11, 21}, 
            13.029657363891602`}, {{2016, 11, 22}, 13.029657363891602`}, {{
            2016, 11, 23}, 13.072097778320312`}, {{2016, 11, 25}, 
            13.029657363891602`}, {{2016, 11, 28}, 13.072097778320312`}, {{
            2016, 11, 29}, 13.11453914642334}, {{2016, 11, 30}, 
            13.241866111755371`}, {{2016, 12, 1}, 13.029657363891602`}, {{
            2016, 12, 2}, 13.080585479736328`}, {{2016, 12, 5}, 
            13.11453914642334}, {{2016, 12, 6}, 13.241866111755371`}, {{2016, 
            12, 7}, 13.241866111755371`}, {{2016, 12, 8}, 
            13.496516227722168`}, {{2016, 12, 9}, 12.987214088439941`}, {{
            2016, 12, 12}, 13.36919116973877}, {{2016, 12, 13}, 
            13.538958549499512`}, {{2016, 12, 14}, 13.776680946350098`}, {{
            2016, 12, 15}, 13.5183687210083}, {{2016, 12, 16}, 
            13.389212608337402`}, {{2016, 12, 19}, 13.389212608337402`}, {{
            2016, 12, 20}, 13.432265281677246`}, {{2016, 12, 21}, 
            13.5183687210083}, {{2016, 12, 22}, 13.5183687210083}, {{2016, 12,
             23}, 13.604474067687988`}, {{2016, 12, 27}, 
            13.73362922668457}, {{2016, 12, 28}, 13.73362922668457}, {{2016, 
            12, 29}, 13.604474067687988`}, {{2016, 12, 30}, 
            13.561421394348145`}, {{2017, 1, 3}, 13.561421394348145`}, {{2017,
             1, 4}, 13.587252616882324`}, {{2017, 1, 5}, 
            13.475316047668457`}, {{2017, 1, 6}, 13.535590171813965`}, {{2017,
             1, 9}, 13.73362922668457}, {{2017, 1, 10}, 13.5183687210083}, {{
            2017, 1, 11}, 13.5183687210083}, {{2017, 1, 12}, 
            13.5183687210083}, {{2017, 1, 13}, 13.604474067687988`}, {{2017, 
            1, 17}, 13.561421394348145`}, {{2017, 1, 18}, 
            13.578642845153809`}, {{2017, 1, 19}, 13.475316047668457`}, {{
            2017, 1, 20}, 13.475316047668457`}, {{2017, 1, 23}, 
            13.475316047668457`}, {{2017, 1, 24}, 13.475316047668457`}, {{
            2017, 1, 25}, 13.440875053405762`}, {{2017, 1, 26}, 
            13.389212608337402`}, {{2017, 1, 27}, 13.363381385803223`}, {{
            2017, 1, 30}, 13.5183687210083}, {{2017, 1, 31}, 
            13.303108215332031`}, {{2017, 2, 1}, 13.5183687210083}, {{2017, 2,
             2}, 13.5183687210083}, {{2017, 2, 3}, 13.5183687210083}, {{2017, 
            2, 6}, 13.346160888671875`}, {{2017, 2, 7}, 
            13.346160888671875`}, {{2017, 2, 8}, 13.432265281677246`}, {{2017,
             2, 9}, 13.311717987060547`}, {{2017, 2, 10}, 
            13.475316047668457`}, {{2017, 2, 13}, 13.5183687210083}, {{2017, 
            2, 14}, 13.45809555053711}, {{2017, 2, 15}, 
            13.475316047668457`}, {{2017, 2, 16}, 13.5183687210083}, {{2017, 
            2, 17}, 13.492537498474121`}, {{2017, 2, 21}, 
            13.5183687210083}, {{2017, 2, 22}, 13.5183687210083}, {{2017, 2, 
            23}, 13.475316047668457`}, {{2017, 2, 24}, 13.5183687210083}, {{
            2017, 2, 27}, 13.5183687210083}, {{2017, 2, 28}, 
            13.5183687210083}, {{2017, 3, 1}, 13.5183687210083}, {{2017, 3, 
            2}, 13.5183687210083}, {{2017, 3, 3}, 13.440875053405762`}, {{
            2017, 3, 6}, 13.475316047668457`}, {{2017, 3, 7}, 
            13.501148223876953`}, {{2017, 3, 8}, 13.475316047668457`}, {{2017,
             3, 9}, 14.207202911376953`}, {{2017, 3, 10}, 
            14.164152145385742`}, {{2017, 3, 13}, 14.121097564697266`}, {{
            2017, 3, 14}, 14.121097564697266`}, {{2017, 3, 15}, 
            14.207202911376953`}, {{2017, 3, 16}, 14.403120994567871`}, {{
            2017, 3, 17}, 14.403120994567871`}, {{2017, 3, 20}, 
            14.141246795654297`}, {{2017, 3, 21}, 14.490413665771484`}, {{
            2017, 3, 22}, 14.5340576171875}, {{2017, 3, 23}, 
            14.490413665771484`}, {{2017, 3, 24}, 14.315828323364258`}, {{
            2017, 3, 27}, 14.315828323364258`}, {{2017, 3, 28}, 
            14.219809532165527`}, {{2017, 3, 29}, 14.228537559509277`}, {{
            2017, 3, 30}, 14.254725456237793`}, {{2017, 3, 31}, 
            14.184892654418945`}, {{2017, 4, 3}, 14.097599983215332`}, {{2017,
             4, 4}, 14.202350616455078`}, {{2017, 4, 5}, 
            14.315828323364258`}, {{2017, 4, 6}, 14.394392013549805`}, {{2017,
             4, 7}, 14.472954750061035`}, {{2017, 4, 10}, 
            14.490413665771484`}, {{2017, 4, 11}, 14.44676685333252}, {{2017, 
            4, 12}, 14.652525901794434`}, {{2017, 4, 13}, 
            14.74133014678955}, {{2017, 4, 17}, 14.652525901794434`}, {{2017, 
            4, 18}, 14.501561164855957`}, {{2017, 4, 19}, 
            14.608125686645508`}, {{2017, 4, 20}, 14.590364456176758`}, {{
            2017, 4, 21}, 14.74133014678955}, {{2017, 4, 24}, 
            14.874534606933594`}, {{2017, 4, 25}, 14.581483840942383`}, {{
            2017, 4, 26}, 14.217391014099121`}, {{2017, 4, 27}, 
            14.474919319152832`}, {{2017, 4, 28}, 14.252911567687988`}, {{
            2017, 5, 1}, 14.252911567687988`}, {{2017, 5, 2}, 
            14.164108276367188`}, {{2017, 5, 3}, 14.075305938720703`}, {{2017,
             5, 4}, 13.631290435791016`}, {{2017, 5, 5}, 13.7200927734375}, {{
            2017, 5, 8}, 13.950981140136719`}, {{2017, 5, 9}, 
            13.83553695678711}, {{2017, 5, 10}, 13.942100524902344`}, {{2017, 
            5, 11}, 14.057544708251953`}, {{2017, 5, 12}, 
            13.8088960647583}, {{2017, 5, 15}, 14.075305938720703`}, {{2017, 
            5, 16}, 13.85329818725586}, {{2017, 5, 17}, 
            14.119707107543945`}, {{2017, 5, 18}, 14.341714859008789`}, {{
            2017, 5, 19}, 14.075305938720703`}, {{2017, 5, 22}, 
            14.119707107543945`}, {{2017, 5, 23}, 13.85329818725586}, {{2017, 
            5, 24}, 13.85329818725586}, {{2017, 5, 25}, 
            14.608125686645508`}, {{2017, 5, 26}, 14.74133014678955}, {{2017, 
            5, 30}, 14.874534606933594`}, {{2017, 5, 31}, 
            14.030903816223145`}, {{2017, 6, 1}, 14.386116981506348`}, {{2017,
             6, 2}, 14.075305938720703`}, {{2017, 6, 5}, 
            14.030903816223145`}, {{2017, 6, 6}, 13.942100524902344`}, {{2017,
             6, 7}, 13.8088960647583}, {{2017, 6, 8}, 13.942100524902344`}, {{
            2017, 6, 9}, 13.897699356079102`}, {{2017, 6, 12}, 
            15.052141189575195`}, {{2017, 6, 13}, 17.18341827392578}, {{2017, 
            6, 14}, 17.449827194213867`}, {{2017, 6, 15}, 
            18.1158504486084}, {{2017, 6, 16}, 17.649999618530273`}, {{2017, 
            6, 19}, 17.200000762939453`}}, 
         "close" -> {{{2016, 8, 19}, 13.380145072937012`}, {{2016, 8, 22}, 
            12.978489875793457`}, {{2016, 8, 23}, 13.20442008972168}, {{2016, 
            8, 24}, 13.154213905334473`}, {{2016, 8, 25}, 
            13.028696060180664`}, {{2016, 8, 26}, 13.723225593566895`}, {{
            2016, 8, 29}, 13.681386947631836`}, {{2016, 8, 30}, 
            13.848742485046387`}, {{2016, 8, 31}, 14.083043098449707`}, {{
            2016, 9, 1}, 13.547500610351562`}, {{2016, 9, 2}, 
            14.066306114196777`}, {{2016, 9, 6}, 13.070534706115723`}, {{2016,
             9, 7}, 13.371776580810547`}, {{2016, 9, 8}, 
            12.442949295043945`}, {{2016, 9, 9}, 12.376006126403809`}, {{2016,
             9, 12}, 12.551730155944824`}, {{2016, 9, 13}, 
            12.43458080291748}, {{2016, 9, 14}, 12.534995079040527`}, {{2016, 
            9, 15}, 13.17094898223877}, {{2016, 9, 16}, 
            12.936650276184082`}, {{2016, 9, 19}, 12.903180122375488`}, {{
            2016, 9, 20}, 13.11453914642334}, {{2016, 9, 21}, 
            13.836051940917969`}, {{2016, 9, 22}, 13.555935859680176`}, {{
            2016, 9, 23}, 13.241866111755371`}, {{2016, 9, 26}, 
            12.970237731933594`}, {{2016, 9, 27}, 13.258841514587402`}, {{
            2016, 9, 28}, 13.080585479736328`}, {{2016, 9, 29}, 
            13.004190444946289`}, {{2016, 9, 30}, 13.038145065307617`}, {{
            2016, 10, 3}, 13.36919116973877}, {{2016, 10, 4}, 
            13.224888801574707`}, {{2016, 10, 5}, 13.156981468200684`}, {{
            2016, 10, 6}, 13.190935134887695`}, {{2016, 10, 7}, 
            13.072097778320312`}, {{2016, 10, 10}, 13.021167755126953`}, {{
            2016, 10, 11}, 12.99570369720459}, {{2016, 10, 12}, 
            13.038145065307617`}, {{2016, 10, 13}, 13.156981468200684`}, {{
            2016, 10, 14}, 13.156981468200684`}, {{2016, 10, 17}, 
            13.072097778320312`}, {{2016, 10, 18}, 13.072097778320312`}, {{
            2016, 10, 19}, 13.199422836303711`}, {{2016, 10, 20}, 
            13.11453914642334}, {{2016, 10, 21}, 13.072097778320312`}, {{2016,
             10, 24}, 13.072097778320312`}, {{2016, 10, 25}, 
            13.11453914642334}, {{2016, 10, 26}, 13.411632537841797`}, {{2016,
             10, 27}, 13.11453914642334}, {{2016, 10, 28}, 
            13.11453914642334}, {{2016, 10, 31}, 13.029657363891602`}, {{2016,
             11, 1}, 12.987214088439941`}, {{2016, 11, 2}, 
            12.987214088439941`}, {{2016, 11, 3}, 12.944771766662598`}, {{
            2016, 11, 4}, 13.199422836303711`}, {{2016, 11, 7}, 
            13.411632537841797`}, {{2016, 11, 8}, 13.411632537841797`}, {{
            2016, 11, 9}, 13.012679100036621`}, {{2016, 11, 10}, 
            12.987214088439941`}, {{2016, 11, 11}, 12.902331352233887`}, {{
            2016, 11, 14}, 13.241866111755371`}, {{2016, 11, 15}, 
            13.36919116973877}, {{2016, 11, 16}, 13.156981468200684`}, {{2016,
             11, 17}, 12.859889030456543`}, {{2016, 11, 18}, 
            13.029657363891602`}, {{2016, 11, 21}, 13.029657363891602`}, {{
            2016, 11, 22}, 12.944771766662598`}, {{2016, 11, 23}, 
            13.029657363891602`}, {{2016, 11, 25}, 13.029657363891602`}, {{
            2016, 11, 28}, 13.029657363891602`}, {{2016, 11, 29}, 
            13.11453914642334}, {{2016, 11, 30}, 12.944771766662598`}, {{2016,
             12, 1}, 12.944771766662598`}, {{2016, 12, 2}, 
            12.987214088439941`}, {{2016, 12, 5}, 13.029657363891602`}, {{
            2016, 12, 6}, 13.241866111755371`}, {{2016, 12, 7}, 
            12.944771766662598`}, {{2016, 12, 8}, 13.029657363891602`}, {{
            2016, 12, 9}, 12.987214088439941`}, {{2016, 12, 12}, 
            13.284306526184082`}, {{2016, 12, 13}, 13.11453914642334}, {{2016,
             12, 14}, 13.475316047668457`}, {{2016, 12, 15}, 
            13.173951148986816`}, {{2016, 12, 16}, 13.346160888671875`}, {{
            2016, 12, 19}, 13.303108215332031`}, {{2016, 12, 20}, 
            13.285887718200684`}, {{2016, 12, 21}, 13.5183687210083}, {{2016, 
            12, 22}, 13.5183687210083}, {{2016, 12, 23}, 13.5183687210083}, {{
            2016, 12, 27}, 13.73362922668457}, {{2016, 12, 28}, 
            13.73362922668457}, {{2016, 12, 29}, 13.5183687210083}, {{2016, 
            12, 30}, 13.303108215332031`}, {{2017, 1, 3}, 
            13.5183687210083}, {{2017, 1, 4}, 13.475316047668457`}, {{2017, 1,
             5}, 13.432265281677246`}, {{2017, 1, 6}, 13.5183687210083}, {{
            2017, 1, 9}, 13.5183687210083}, {{2017, 1, 10}, 
            13.5183687210083}, {{2017, 1, 11}, 13.5183687210083}, {{2017, 1, 
            12}, 13.5183687210083}, {{2017, 1, 13}, 13.604474067687988`}, {{
            2017, 1, 17}, 13.561421394348145`}, {{2017, 1, 18}, 
            13.578642845153809`}, {{2017, 1, 19}, 13.475316047668457`}, {{
            2017, 1, 20}, 13.475316047668457`}, {{2017, 1, 23}, 
            13.475316047668457`}, {{2017, 1, 24}, 13.432265281677246`}, {{
            2017, 1, 25}, 13.432265281677246`}, {{2017, 1, 26}, 
            13.389212608337402`}, {{2017, 1, 27}, 13.346160888671875`}, {{
            2017, 1, 30}, 13.5183687210083}, {{2017, 1, 31}, 
            13.303108215332031`}, {{2017, 2, 1}, 13.389212608337402`}, {{2017,
             2, 2}, 13.5183687210083}, {{2017, 2, 3}, 13.5183687210083}, {{
            2017, 2, 6}, 13.346160888671875`}, {{2017, 2, 7}, 
            13.346160888671875`}, {{2017, 2, 8}, 13.432265281677246`}, {{2017,
             2, 9}, 13.311717987060547`}, {{2017, 2, 10}, 
            13.475316047668457`}, {{2017, 2, 13}, 13.475316047668457`}, {{
            2017, 2, 14}, 13.363381385803223`}, {{2017, 2, 15}, 
            13.45809555053711}, {{2017, 2, 16}, 13.260056495666504`}, {{2017, 
            2, 17}, 13.432265281677246`}, {{2017, 2, 21}, 
            13.475316047668457`}, {{2017, 2, 22}, 13.475316047668457`}, {{
            2017, 2, 23}, 13.475316047668457`}, {{2017, 2, 24}, 
            13.5183687210083}, {{2017, 2, 27}, 13.5183687210083}, {{2017, 2, 
            28}, 13.5183687210083}, {{2017, 3, 1}, 13.5183687210083}, {{2017, 
            3, 2}, 13.5183687210083}, {{2017, 3, 3}, 13.440875053405762`}, {{
            2017, 3, 6}, 13.432265281677246`}, {{2017, 3, 7}, 
            13.501148223876953`}, {{2017, 3, 8}, 13.432265281677246`}, {{2017,
             3, 9}, 13.6475248336792}, {{2017, 3, 10}, 
            14.164152145385742`}, {{2017, 3, 13}, 14.121097564697266`}, {{
            2017, 3, 14}, 14.121097564697266`}, {{2017, 3, 15}, 
            13.862786293029785`}, {{2017, 3, 16}, 14.403120994567871`}, {{
            2017, 3, 17}, 14.403120994567871`}, {{2017, 3, 20}, 
            14.141246795654297`}, {{2017, 3, 21}, 14.141246795654297`}, {{
            2017, 3, 22}, 14.490413665771484`}, {{2017, 3, 23}, 
            13.923016548156738`}, {{2017, 3, 24}, 14.272185325622559`}, {{
            2017, 3, 27}, 14.010308265686035`}, {{2017, 3, 28}, 
            14.219809532165527`}, {{2017, 3, 29}, 14.097599983215332`}, {{
            2017, 3, 30}, 14.254725456237793`}, {{2017, 3, 31}, 
            14.053955078125}, {{2017, 4, 3}, 14.097599983215332`}, {{2017, 4, 
            4}, 14.184892654418945`}, {{2017, 4, 5}, 14.272185325622559`}, {{
            2017, 4, 6}, 14.359476089477539`}, {{2017, 4, 7}, 
            14.228537559509277`}, {{2017, 4, 10}, 14.184892654418945`}, {{
            2017, 4, 11}, 14.359476089477539`}, {{2017, 4, 12}, 
            14.652525901794434`}, {{2017, 4, 13}, 14.670287132263184`}, {{
            2017, 4, 17}, 14.608125686645508`}, {{2017, 4, 18}, 
            14.483799934387207`}, {{2017, 4, 19}, 14.572603225708008`}, {{
            2017, 4, 20}, 14.590364456176758`}, {{2017, 4, 21}, 
            14.74133014678955}, {{2017, 4, 24}, 14.563722610473633`}, {{2017, 
            4, 25}, 14.208510398864746`}, {{2017, 4, 26}, 
            14.217391014099121`}, {{2017, 4, 27}, 14.386116981506348`}, {{
            2017, 4, 28}, 14.252911567687988`}, {{2017, 5, 1}, 
            14.164108276367188`}, {{2017, 5, 2}, 13.897699356079102`}, {{2017,
             5, 3}, 13.675690650939941`}, {{2017, 5, 4}, 
            13.551366806030273`}, {{2017, 5, 5}, 13.7200927734375}, {{2017, 5,
             8}, 13.950981140136719`}, {{2017, 5, 9}, 13.7200927734375}, {{
            2017, 5, 10}, 13.942100524902344`}, {{2017, 5, 11}, 
            13.8088960647583}, {{2017, 5, 12}, 13.8088960647583}, {{2017, 5, 
            15}, 14.075305938720703`}, {{2017, 5, 16}, 13.85329818725586}, {{
            2017, 5, 17}, 13.92434024810791}, {{2017, 5, 18}, 
            14.075305938720703`}, {{2017, 5, 19}, 14.075305938720703`}, {{
            2017, 5, 22}, 13.85329818725586}, {{2017, 5, 23}, 
            13.85329818725586}, {{2017, 5, 24}, 13.85329818725586}, {{2017, 5,
             25}, 13.8088960647583}, {{2017, 5, 26}, 14.652525901794434`}, {{
            2017, 5, 30}, 13.8088960647583}, {{2017, 5, 31}, 
            14.030903816223145`}, {{2017, 6, 1}, 13.986502647399902`}, {{2017,
             6, 2}, 14.030903816223145`}, {{2017, 6, 5}, 
            14.030903816223145`}, {{2017, 6, 6}, 13.942100524902344`}, {{2017,
             6, 7}, 13.764494895935059`}, {{2017, 6, 8}, 
            13.897699356079102`}, {{2017, 6, 9}, 13.897699356079102`}, {{2017,
             6, 12}, 15.04326057434082}, {{2017, 6, 13}, 
            16.828205108642578`}, {{2017, 6, 14}, 16.917007446289062`}, {{
            2017, 6, 15}, 16.69499969482422}, {{2017, 6, 16}, 
            17.350000381469727`}, {{2017, 6, 19}, 16.649999618530273`}}, 
         "model" -> {{{2016, 8, 19}, 12.794975140468939`}, {{2016, 8, 19}, 
            12.794975140468939`}, {{2016, 8, 19}, 12.794975140468939`}, {{
            2016, 8, 22}, 12.811511574250362`}, {{2016, 8, 22}, 
            12.811511574250362`}, {{2016, 8, 22}, 12.811511574250362`}, {{
            2016, 8, 23}, 12.81702371884417}, {{2016, 8, 23}, 
            12.81702371884417}, {{2016, 8, 23}, 12.81702371884417}, {{2016, 8,
             24}, 12.822535863437977`}, {{2016, 8, 24}, 
            12.822535863437977`}, {{2016, 8, 24}, 12.822535863437977`}, {{
            2016, 8, 25}, 12.828048008031786`}, {{2016, 8, 25}, 
            12.828048008031786`}, {{2016, 8, 25}, 12.828048008031786`}, {{
            2016, 8, 26}, 12.833560152625592`}, {{2016, 8, 26}, 
            12.833560152625592`}, {{2016, 8, 26}, 12.833560152625592`}, {{
            2016, 8, 29}, 12.850096586407016`}, {{2016, 8, 29}, 
            12.850096586407016`}, {{2016, 8, 29}, 12.850096586407016`}, {{
            2016, 8, 30}, 12.855608731000824`}, {{2016, 8, 30}, 
            12.855608731000824`}, {{2016, 8, 30}, 12.855608731000824`}, {{
            2016, 8, 31}, 12.861120875594633`}, {{2016, 8, 31}, 
            12.861120875594633`}, {{2016, 8, 31}, 12.861120875594633`}, {{
            2016, 9, 1}, 12.86663302018844}, {{2016, 9, 1}, 
            12.86663302018844}, {{2016, 9, 1}, 12.86663302018844}, {{2016, 9, 
            2}, 12.872145164782248`}, {{2016, 9, 2}, 12.872145164782248`}, {{
            2016, 9, 2}, 12.872145164782248`}, {{2016, 9, 6}, 
            12.894193743157478`}, {{2016, 9, 6}, 12.894193743157478`}, {{2016,
             9, 6}, 12.894193743157478`}, {{2016, 9, 7}, 
            12.899705887751287`}, {{2016, 9, 7}, 12.899705887751287`}, {{2016,
             9, 7}, 12.899705887751287`}, {{2016, 9, 8}, 
            12.905218032345095`}, {{2016, 9, 8}, 12.905218032345095`}, {{2016,
             9, 8}, 12.905218032345095`}, {{2016, 9, 9}, 
            12.910730176938902`}, {{2016, 9, 9}, 12.910730176938902`}, {{2016,
             9, 9}, 12.910730176938902`}, {{2016, 9, 12}, 
            12.927266610720325`}, {{2016, 9, 12}, 12.927266610720325`}, {{
            2016, 9, 12}, 12.927266610720325`}, {{2016, 9, 13}, 
            12.932778755314134`}, {{2016, 9, 13}, 12.932778755314134`}, {{
            2016, 9, 13}, 12.932778755314134`}, {{2016, 9, 14}, 
            12.938290899907942`}, {{2016, 9, 14}, 12.938290899907942`}, {{
            2016, 9, 14}, 12.938290899907942`}, {{2016, 9, 15}, 
            12.943803044501749`}, {{2016, 9, 15}, 12.943803044501749`}, {{
            2016, 9, 15}, 12.943803044501749`}, {{2016, 9, 16}, 
            12.949315189095557`}, {{2016, 9, 16}, 12.949315189095557`}, {{
            2016, 9, 16}, 12.949315189095557`}, {{2016, 9, 19}, 
            12.965851622876981`}, {{2016, 9, 19}, 12.965851622876981`}, {{
            2016, 9, 19}, 12.965851622876981`}, {{2016, 9, 20}, 
            12.971363767470788`}, {{2016, 9, 20}, 12.971363767470788`}, {{
            2016, 9, 20}, 12.971363767470788`}, {{2016, 9, 21}, 
            12.976875912064596`}, {{2016, 9, 21}, 12.976875912064596`}, {{
            2016, 9, 21}, 12.976875912064596`}, {{2016, 9, 22}, 
            12.982388056658404`}, {{2016, 9, 22}, 12.982388056658404`}, {{
            2016, 9, 22}, 12.982388056658404`}, {{2016, 9, 23}, 
            12.987900201252211`}, {{2016, 9, 23}, 12.987900201252211`}, {{
            2016, 9, 23}, 12.987900201252211`}, {{2016, 9, 26}, 
            13.004436635033635`}, {{2016, 9, 26}, 13.004436635033635`}, {{
            2016, 9, 26}, 13.004436635033635`}, {{2016, 9, 27}, 
            13.009948779627443`}, {{2016, 9, 27}, 13.009948779627443`}, {{
            2016, 9, 27}, 13.009948779627443`}, {{2016, 9, 28}, 
            13.01546092422125}, {{2016, 9, 28}, 13.01546092422125}, {{2016, 9,
             28}, 13.01546092422125}, {{2016, 9, 29}, 13.020973068815058`}, {{
            2016, 9, 29}, 13.020973068815058`}, {{2016, 9, 29}, 
            13.020973068815058`}, {{2016, 9, 30}, 13.026485213408867`}, {{
            2016, 9, 30}, 13.026485213408867`}, {{2016, 9, 30}, 
            13.026485213408867`}, {{2016, 10, 3}, 13.04302164719029}, {{2016, 
            10, 3}, 13.04302164719029}, {{2016, 10, 3}, 13.04302164719029}, {{
            2016, 10, 4}, 13.048533791784097`}, {{2016, 10, 4}, 
            13.048533791784097`}, {{2016, 10, 4}, 13.048533791784097`}, {{
            2016, 10, 5}, 13.054045936377905`}, {{2016, 10, 5}, 
            13.054045936377905`}, {{2016, 10, 5}, 13.054045936377905`}, {{
            2016, 10, 6}, 13.059558080971714`}, {{2016, 10, 6}, 
            13.059558080971714`}, {{2016, 10, 6}, 13.059558080971714`}, {{
            2016, 10, 7}, 13.06507022556552}, {{2016, 10, 7}, 
            13.06507022556552}, {{2016, 10, 7}, 13.06507022556552}, {{2016, 
            10, 10}, 13.081606659346944`}, {{2016, 10, 10}, 
            13.081606659346944`}, {{2016, 10, 10}, 13.081606659346944`}, {{
            2016, 10, 11}, 13.087118803940752`}, {{2016, 10, 11}, 
            13.087118803940752`}, {{2016, 10, 11}, 13.087118803940752`}, {{
            2016, 10, 12}, 13.092630948534559`}, {{2016, 10, 12}, 
            13.092630948534559`}, {{2016, 10, 12}, 13.092630948534559`}, {{
            2016, 10, 13}, 13.098143093128368`}, {{2016, 10, 13}, 
            13.098143093128368`}, {{2016, 10, 13}, 13.098143093128368`}, {{
            2016, 10, 14}, 13.103655237722176`}, {{2016, 10, 14}, 
            13.103655237722176`}, {{2016, 10, 14}, 13.103655237722176`}, {{
            2016, 10, 17}, 13.1201916715036}, {{2016, 10, 17}, 
            13.1201916715036}, {{2016, 10, 17}, 13.1201916715036}, {{2016, 10,
             18}, 13.125703816097406`}, {{2016, 10, 18}, 
            13.125703816097406`}, {{2016, 10, 18}, 13.125703816097406`}, {{
            2016, 10, 19}, 13.131215960691215`}, {{2016, 10, 19}, 
            13.131215960691215`}, {{2016, 10, 19}, 13.131215960691215`}, {{
            2016, 10, 20}, 13.136728105285021`}, {{2016, 10, 20}, 
            13.136728105285021`}, {{2016, 10, 20}, 13.136728105285021`}, {{
            2016, 10, 21}, 13.14224024987883}, {{2016, 10, 21}, 
            13.14224024987883}, {{2016, 10, 21}, 13.14224024987883}, {{2016, 
            10, 24}, 13.158776683660253`}, {{2016, 10, 24}, 
            13.158776683660253`}, {{2016, 10, 24}, 13.158776683660253`}, {{
            2016, 10, 25}, 13.164288828254062`}, {{2016, 10, 25}, 
            13.164288828254062`}, {{2016, 10, 25}, 13.164288828254062`}, {{
            2016, 10, 26}, 13.169800972847868`}, {{2016, 10, 26}, 
            13.169800972847868`}, {{2016, 10, 26}, 13.169800972847868`}, {{
            2016, 10, 27}, 13.175313117441677`}, {{2016, 10, 27}, 
            13.175313117441677`}, {{2016, 10, 27}, 13.175313117441677`}, {{
            2016, 10, 28}, 13.180825262035485`}, {{2016, 10, 28}, 
            13.180825262035485`}, {{2016, 10, 28}, 13.180825262035485`}, {{
            2016, 10, 31}, 13.197361695816907`}, {{2016, 10, 31}, 
            13.197361695816907`}, {{2016, 10, 31}, 13.197361695816907`}, {{
            2016, 11, 1}, 13.202873840410716`}, {{2016, 11, 1}, 
            13.202873840410716`}, {{2016, 11, 1}, 13.202873840410716`}, {{
            2016, 11, 2}, 13.208385985004524`}, {{2016, 11, 2}, 
            13.208385985004524`}, {{2016, 11, 2}, 13.208385985004524`}, {{
            2016, 11, 3}, 13.21389812959833}, {{2016, 11, 3}, 
            13.21389812959833}, {{2016, 11, 3}, 13.21389812959833}, {{2016, 
            11, 4}, 13.219410274192139`}, {{2016, 11, 4}, 
            13.219410274192139`}, {{2016, 11, 4}, 13.219410274192139`}, {{
            2016, 11, 7}, 13.235946707973563`}, {{2016, 11, 7}, 
            13.235946707973563`}, {{2016, 11, 7}, 13.235946707973563`}, {{
            2016, 11, 8}, 13.241458852567371`}, {{2016, 11, 8}, 
            13.241458852567371`}, {{2016, 11, 8}, 13.241458852567371`}, {{
            2016, 11, 9}, 13.246970997161178`}, {{2016, 11, 9}, 
            13.246970997161178`}, {{2016, 11, 9}, 13.246970997161178`}, {{
            2016, 11, 10}, 13.252483141754986`}, {{2016, 11, 10}, 
            13.252483141754986`}, {{2016, 11, 10}, 13.252483141754986`}, {{
            2016, 11, 11}, 13.257995286348793`}, {{2016, 11, 11}, 
            13.257995286348793`}, {{2016, 11, 11}, 13.257995286348793`}, {{
            2016, 11, 14}, 13.274531720130216`}, {{2016, 11, 14}, 
            13.274531720130216`}, {{2016, 11, 14}, 13.274531720130216`}, {{
            2016, 11, 15}, 13.280043864724025`}, {{2016, 11, 15}, 
            13.280043864724025`}, {{2016, 11, 15}, 13.280043864724025`}, {{
            2016, 11, 16}, 13.285556009317833`}, {{2016, 11, 16}, 
            13.285556009317833`}, {{2016, 11, 16}, 13.285556009317833`}, {{
            2016, 11, 17}, 13.29106815391164}, {{2016, 11, 17}, 
            13.29106815391164}, {{2016, 11, 17}, 13.29106815391164}, {{2016, 
            11, 18}, 13.296580298505448`}, {{2016, 11, 18}, 
            13.296580298505448`}, {{2016, 11, 18}, 13.296580298505448`}, {{
            2016, 11, 21}, 13.313116732286872`}, {{2016, 11, 21}, 
            13.313116732286872`}, {{2016, 11, 21}, 13.313116732286872`}, {{
            2016, 11, 22}, 13.318628876880679`}, {{2016, 11, 22}, 
            13.318628876880679`}, {{2016, 11, 22}, 13.318628876880679`}, {{
            2016, 11, 23}, 13.324141021474487`}, {{2016, 11, 23}, 
            13.324141021474487`}, {{2016, 11, 23}, 13.324141021474487`}, {{
            2016, 11, 25}, 13.335165310662102`}, {{2016, 11, 25}, 
            13.335165310662102`}, {{2016, 11, 25}, 13.335165310662102`}, {{
            2016, 11, 28}, 13.351701744443526`}, {{2016, 11, 28}, 
            13.351701744443526`}, {{2016, 11, 28}, 13.351701744443526`}, {{
            2016, 11, 29}, 13.357213889037334`}, {{2016, 11, 29}, 
            13.357213889037334`}, {{2016, 11, 29}, 13.357213889037334`}, {{
            2016, 11, 30}, 13.36272603363114}, {{2016, 11, 30}, 
            13.36272603363114}, {{2016, 11, 30}, 13.36272603363114}, {{2016, 
            12, 1}, 13.36823817822495}, {{2016, 12, 1}, 13.36823817822495}, {{
            2016, 12, 1}, 13.36823817822495}, {{2016, 12, 2}, 
            13.373750322818758`}, {{2016, 12, 2}, 13.373750322818758`}, {{
            2016, 12, 2}, 13.373750322818758`}, {{2016, 12, 5}, 
            13.390286756600181`}, {{2016, 12, 5}, 13.390286756600181`}, {{
            2016, 12, 5}, 13.390286756600181`}, {{2016, 12, 6}, 
            13.395798901193988`}, {{2016, 12, 6}, 13.395798901193988`}, {{
            2016, 12, 6}, 13.395798901193988`}, {{2016, 12, 7}, 
            13.401311045787796`}, {{2016, 12, 7}, 13.401311045787796`}, {{
            2016, 12, 7}, 13.401311045787796`}, {{2016, 12, 8}, 
            13.406823190381605`}, {{2016, 12, 8}, 13.406823190381605`}, {{
            2016, 12, 8}, 13.406823190381605`}, {{2016, 12, 9}, 
            13.412335334975412`}, {{2016, 12, 9}, 13.412335334975412`}, {{
            2016, 12, 9}, 13.412335334975412`}, {{2016, 12, 12}, 
            13.428871768756835`}, {{2016, 12, 12}, 13.428871768756835`}, {{
            2016, 12, 12}, 13.428871768756835`}, {{2016, 12, 13}, 
            13.434383913350644`}, {{2016, 12, 13}, 13.434383913350644`}, {{
            2016, 12, 13}, 13.434383913350644`}, {{2016, 12, 14}, 
            13.43989605794445}, {{2016, 12, 14}, 13.43989605794445}, {{2016, 
            12, 14}, 13.43989605794445}, {{2016, 12, 15}, 
            13.445408202538259`}, {{2016, 12, 15}, 13.445408202538259`}, {{
            2016, 12, 15}, 13.445408202538259`}, {{2016, 12, 16}, 
            13.450920347132067`}, {{2016, 12, 16}, 13.450920347132067`}, {{
            2016, 12, 16}, 13.450920347132067`}, {{2016, 12, 19}, 
            13.46745678091349}, {{2016, 12, 19}, 13.46745678091349}, {{2016, 
            12, 19}, 13.46745678091349}, {{2016, 12, 20}, 
            13.472968925507297`}, {{2016, 12, 20}, 13.472968925507297`}, {{
            2016, 12, 20}, 13.472968925507297`}, {{2016, 12, 21}, 
            13.478481070101106`}, {{2016, 12, 21}, 13.478481070101106`}, {{
            2016, 12, 21}, 13.478481070101106`}, {{2016, 12, 22}, 
            13.483993214694912`}, {{2016, 12, 22}, 13.483993214694912`}, {{
            2016, 12, 22}, 13.483993214694912`}, {{2016, 12, 23}, 
            13.48950535928872}, {{2016, 12, 23}, 13.48950535928872}, {{2016, 
            12, 23}, 13.48950535928872}, {{2016, 12, 27}, 
            13.511553937663953`}, {{2016, 12, 27}, 13.511553937663953`}, {{
            2016, 12, 27}, 13.511553937663953`}, {{2016, 12, 28}, 
            13.51706608225776}, {{2016, 12, 28}, 13.51706608225776}, {{2016, 
            12, 28}, 13.51706608225776}, {{2016, 12, 29}, 
            13.522578226851568`}, {{2016, 12, 29}, 13.522578226851568`}, {{
            2016, 12, 29}, 13.522578226851568`}, {{2016, 12, 30}, 
            13.528090371445376`}, {{2016, 12, 30}, 13.528090371445376`}, {{
            2016, 12, 30}, 13.528090371445376`}, {{2017, 1, 3}, 
            13.550138949820607`}, {{2017, 1, 3}, 13.550138949820607`}, {{2017,
             1, 3}, 13.550138949820607`}, {{2017, 1, 4}, 
            13.555651094414415`}, {{2017, 1, 4}, 13.555651094414415`}, {{2017,
             1, 4}, 13.555651094414415`}, {{2017, 1, 5}, 
            13.561163239008222`}, {{2017, 1, 5}, 13.561163239008222`}, {{2017,
             1, 5}, 13.561163239008222`}, {{2017, 1, 6}, 
            13.56667538360203}, {{2017, 1, 6}, 13.56667538360203}, {{2017, 1, 
            6}, 13.56667538360203}, {{2017, 1, 9}, 13.583211817383454`}, {{
            2017, 1, 9}, 13.583211817383454`}, {{2017, 1, 9}, 
            13.583211817383454`}, {{2017, 1, 10}, 13.588723961977262`}, {{
            2017, 1, 10}, 13.588723961977262`}, {{2017, 1, 10}, 
            13.588723961977262`}, {{2017, 1, 11}, 13.594236106571069`}, {{
            2017, 1, 11}, 13.594236106571069`}, {{2017, 1, 11}, 
            13.594236106571069`}, {{2017, 1, 12}, 13.599748251164877`}, {{
            2017, 1, 12}, 13.599748251164877`}, {{2017, 1, 12}, 
            13.599748251164877`}, {{2017, 1, 13}, 13.605260395758684`}, {{
            2017, 1, 13}, 13.605260395758684`}, {{2017, 1, 13}, 
            13.605260395758684`}, {{2017, 1, 17}, 13.627308974133916`}, {{
            2017, 1, 17}, 13.627308974133916`}, {{2017, 1, 17}, 
            13.627308974133916`}, {{2017, 1, 18}, 13.632821118727724`}, {{
            2017, 1, 18}, 13.632821118727724`}, {{2017, 1, 18}, 
            13.632821118727724`}, {{2017, 1, 19}, 13.638333263321531`}, {{
            2017, 1, 19}, 13.638333263321531`}, {{2017, 1, 19}, 
            13.638333263321531`}, {{2017, 1, 20}, 13.64384540791534}, {{2017, 
            1, 20}, 13.64384540791534}, {{2017, 1, 20}, 13.64384540791534}, {{
            2017, 1, 23}, 13.660381841696763`}, {{2017, 1, 23}, 
            13.660381841696763`}, {{2017, 1, 23}, 13.660381841696763`}, {{
            2017, 1, 24}, 13.66589398629057}, {{2017, 1, 24}, 
            13.66589398629057}, {{2017, 1, 24}, 13.66589398629057}, {{2017, 1,
             25}, 13.671406130884378`}, {{2017, 1, 25}, 
            13.671406130884378`}, {{2017, 1, 25}, 13.671406130884378`}, {{
            2017, 1, 26}, 13.676918275478187`}, {{2017, 1, 26}, 
            13.676918275478187`}, {{2017, 1, 26}, 13.676918275478187`}, {{
            2017, 1, 27}, 13.682430420071993`}, {{2017, 1, 27}, 
            13.682430420071993`}, {{2017, 1, 27}, 13.682430420071993`}, {{
            2017, 1, 30}, 13.698966853853417`}, {{2017, 1, 30}, 
            13.698966853853417`}, {{2017, 1, 30}, 13.698966853853417`}, {{
            2017, 1, 31}, 13.704478998447225`}, {{2017, 1, 31}, 
            13.704478998447225`}, {{2017, 1, 31}, 13.704478998447225`}, {{
            2017, 2, 1}, 13.709991143041034`}, {{2017, 2, 1}, 
            13.709991143041034`}, {{2017, 2, 1}, 13.709991143041034`}, {{2017,
             2, 2}, 13.71550328763484}, {{2017, 2, 2}, 13.71550328763484}, {{
            2017, 2, 2}, 13.71550328763484}, {{2017, 2, 3}, 
            13.721015432228649`}, {{2017, 2, 3}, 13.721015432228649`}, {{2017,
             2, 3}, 13.721015432228649`}, {{2017, 2, 6}, 
            13.737551866010072`}, {{2017, 2, 6}, 13.737551866010072`}, {{2017,
             2, 6}, 13.737551866010072`}, {{2017, 2, 7}, 
            13.743064010603879`}, {{2017, 2, 7}, 13.743064010603879`}, {{2017,
             2, 7}, 13.743064010603879`}, {{2017, 2, 8}, 
            13.748576155197687`}, {{2017, 2, 8}, 13.748576155197687`}, {{2017,
             2, 8}, 13.748576155197687`}, {{2017, 2, 9}, 
            13.754088299791496`}, {{2017, 2, 9}, 13.754088299791496`}, {{2017,
             2, 9}, 13.754088299791496`}, {{2017, 2, 10}, 
            13.759600444385303`}, {{2017, 2, 10}, 13.759600444385303`}, {{
            2017, 2, 10}, 13.759600444385303`}, {{2017, 2, 13}, 
            13.776136878166726`}, {{2017, 2, 13}, 13.776136878166726`}, {{
            2017, 2, 13}, 13.776136878166726`}, {{2017, 2, 14}, 
            13.781649022760535`}, {{2017, 2, 14}, 13.781649022760535`}, {{
            2017, 2, 14}, 13.781649022760535`}, {{2017, 2, 15}, 
            13.787161167354341`}, {{2017, 2, 15}, 13.787161167354341`}, {{
            2017, 2, 15}, 13.787161167354341`}, {{2017, 2, 16}, 
            13.79267331194815}, {{2017, 2, 16}, 13.79267331194815}, {{2017, 2,
             16}, 13.79267331194815}, {{2017, 2, 17}, 13.798185456541958`}, {{
            2017, 2, 17}, 13.798185456541958`}, {{2017, 2, 17}, 
            13.798185456541958`}, {{2017, 2, 21}, 13.820234034917188`}, {{
            2017, 2, 21}, 13.820234034917188`}, {{2017, 2, 21}, 
            13.820234034917188`}, {{2017, 2, 22}, 13.825746179510997`}, {{
            2017, 2, 22}, 13.825746179510997`}, {{2017, 2, 22}, 
            13.825746179510997`}, {{2017, 2, 23}, 13.831258324104805`}, {{
            2017, 2, 23}, 13.831258324104805`}, {{2017, 2, 23}, 
            13.831258324104805`}, {{2017, 2, 24}, 13.836770468698612`}, {{
            2017, 2, 24}, 13.836770468698612`}, {{2017, 2, 24}, 
            13.836770468698612`}, {{2017, 2, 27}, 13.853306902480035`}, {{
            2017, 2, 27}, 13.853306902480035`}, {{2017, 2, 27}, 
            13.853306902480035`}, {{2017, 2, 28}, 13.858819047073844`}, {{
            2017, 2, 28}, 13.858819047073844`}, {{2017, 2, 28}, 
            13.858819047073844`}, {{2017, 3, 1}, 13.86433119166765}, {{2017, 
            3, 1}, 13.86433119166765}, {{2017, 3, 1}, 13.86433119166765}, {{
            2017, 3, 2}, 13.869843336261459`}, {{2017, 3, 2}, 
            13.869843336261459`}, {{2017, 3, 2}, 13.869843336261459`}, {{2017,
             3, 3}, 13.875355480855267`}, {{2017, 3, 3}, 
            13.875355480855267`}, {{2017, 3, 3}, 13.875355480855267`}, {{2017,
             3, 6}, 13.891891914636691`}, {{2017, 3, 6}, 
            13.891891914636691`}, {{2017, 3, 6}, 13.891891914636691`}, {{2017,
             3, 7}, 13.897404059230498`}, {{2017, 3, 7}, 
            13.897404059230498`}, {{2017, 3, 7}, 13.897404059230498`}, {{2017,
             3, 8}, 13.902916203824306`}, {{2017, 3, 8}, 
            13.902916203824306`}, {{2017, 3, 8}, 13.902916203824306`}, {{2017,
             3, 9}, 13.908428348418113`}, {{2017, 3, 9}, 
            13.908428348418113`}, {{2017, 3, 9}, 13.908428348418113`}, {{2017,
             3, 10}, 13.913940493011921`}, {{2017, 3, 10}, 
            13.913940493011921`}, {{2017, 3, 10}, 13.913940493011921`}, {{
            2017, 3, 13}, 13.930476926793345`}, {{2017, 3, 13}, 
            13.930476926793345`}, {{2017, 3, 13}, 13.930476926793345`}, {{
            2017, 3, 14}, 13.935989071387153`}, {{2017, 3, 14}, 
            13.935989071387153`}, {{2017, 3, 14}, 13.935989071387153`}, {{
            2017, 3, 15}, 13.94150121598096}, {{2017, 3, 15}, 
            13.94150121598096}, {{2017, 3, 15}, 13.94150121598096}, {{2017, 3,
             16}, 13.947013360574768`}, {{2017, 3, 16}, 
            13.947013360574768`}, {{2017, 3, 16}, 13.947013360574768`}, {{
            2017, 3, 17}, 13.952525505168577`}, {{2017, 3, 17}, 
            13.952525505168577`}, {{2017, 3, 17}, 13.952525505168577`}, {{
            2017, 3, 20}, 13.969061938949999`}, {{2017, 3, 20}, 
            13.969061938949999`}, {{2017, 3, 20}, 13.969061938949999`}, {{
            2017, 3, 21}, 13.974574083543807`}, {{2017, 3, 21}, 
            13.974574083543807`}, {{2017, 3, 21}, 13.974574083543807`}, {{
            2017, 3, 22}, 13.980086228137615`}, {{2017, 3, 22}, 
            13.980086228137615`}, {{2017, 3, 22}, 13.980086228137615`}, {{
            2017, 3, 23}, 13.985598372731422`}, {{2017, 3, 23}, 
            13.985598372731422`}, {{2017, 3, 23}, 13.985598372731422`}, {{
            2017, 3, 24}, 13.99111051732523}, {{2017, 3, 24}, 
            13.99111051732523}, {{2017, 3, 24}, 13.99111051732523}, {{2017, 3,
             27}, 14.007646951106654`}, {{2017, 3, 27}, 
            14.007646951106654`}, {{2017, 3, 27}, 14.007646951106654`}, {{
            2017, 3, 28}, 14.013159095700463`}, {{2017, 3, 28}, 
            14.013159095700463`}, {{2017, 3, 28}, 14.013159095700463`}, {{
            2017, 3, 29}, 14.01867124029427}, {{2017, 3, 29}, 
            14.01867124029427}, {{2017, 3, 29}, 14.01867124029427}, {{2017, 3,
             30}, 14.024183384888078`}, {{2017, 3, 30}, 
            14.024183384888078`}, {{2017, 3, 30}, 14.024183384888078`}, {{
            2017, 3, 31}, 14.029695529481884`}, {{2017, 3, 31}, 
            14.029695529481884`}, {{2017, 3, 31}, 14.029695529481884`}, {{
            2017, 4, 3}, 14.046231963263308`}, {{2017, 4, 3}, 
            14.046231963263308`}, {{2017, 4, 3}, 14.046231963263308`}, {{2017,
             4, 4}, 14.051744107857116`}, {{2017, 4, 4}, 
            14.051744107857116`}, {{2017, 4, 4}, 14.051744107857116`}, {{2017,
             4, 5}, 14.057256252450925`}, {{2017, 4, 5}, 
            14.057256252450925`}, {{2017, 4, 5}, 14.057256252450925`}, {{2017,
             4, 6}, 14.062768397044731`}, {{2017, 4, 6}, 
            14.062768397044731`}, {{2017, 4, 6}, 14.062768397044731`}, {{2017,
             4, 7}, 14.06828054163854}, {{2017, 4, 7}, 14.06828054163854}, {{
            2017, 4, 7}, 14.06828054163854}, {{2017, 4, 10}, 
            14.084816975419963`}, {{2017, 4, 10}, 14.084816975419963`}, {{
            2017, 4, 10}, 14.084816975419963`}, {{2017, 4, 11}, 
            14.09032912001377}, {{2017, 4, 11}, 14.09032912001377}, {{2017, 4,
             11}, 14.09032912001377}, {{2017, 4, 12}, 14.095841264607579`}, {{
            2017, 4, 12}, 14.095841264607579`}, {{2017, 4, 12}, 
            14.095841264607579`}, {{2017, 4, 13}, 14.101353409201387`}, {{
            2017, 4, 13}, 14.101353409201387`}, {{2017, 4, 13}, 
            14.101353409201387`}, {{2017, 4, 17}, 14.123401987576617`}, {{
            2017, 4, 17}, 14.123401987576617`}, {{2017, 4, 17}, 
            14.123401987576617`}, {{2017, 4, 18}, 14.128914132170426`}, {{
            2017, 4, 18}, 14.128914132170426`}, {{2017, 4, 18}, 
            14.128914132170426`}, {{2017, 4, 19}, 14.134426276764234`}, {{
            2017, 4, 19}, 14.134426276764234`}, {{2017, 4, 19}, 
            14.134426276764234`}, {{2017, 4, 20}, 14.13993842135804}, {{2017, 
            4, 20}, 14.13993842135804}, {{2017, 4, 20}, 14.13993842135804}, {{
            2017, 4, 21}, 14.14545056595185}, {{2017, 4, 21}, 
            14.14545056595185}, {{2017, 4, 21}, 14.14545056595185}, {{2017, 4,
             24}, 14.161986999733273`}, {{2017, 4, 24}, 
            14.161986999733273`}, {{2017, 4, 24}, 14.161986999733273`}, {{
            2017, 4, 25}, 14.16749914432708}, {{2017, 4, 25}, 
            14.16749914432708}, {{2017, 4, 25}, 14.16749914432708}, {{2017, 4,
             26}, 14.173011288920888`}, {{2017, 4, 26}, 
            14.173011288920888`}, {{2017, 4, 26}, 14.173011288920888`}, {{
            2017, 4, 27}, 14.178523433514696`}, {{2017, 4, 27}, 
            14.178523433514696`}, {{2017, 4, 27}, 14.178523433514696`}, {{
            2017, 4, 28}, 14.184035578108503`}, {{2017, 4, 28}, 
            14.184035578108503`}, {{2017, 4, 28}, 14.184035578108503`}, {{
            2017, 5, 1}, 14.200572011889927`}, {{2017, 5, 1}, 
            14.200572011889927`}, {{2017, 5, 1}, 14.200572011889927`}, {{2017,
             5, 2}, 14.206084156483735`}, {{2017, 5, 2}, 
            14.206084156483735`}, {{2017, 5, 2}, 14.206084156483735`}, {{2017,
             5, 3}, 14.211596301077542`}, {{2017, 5, 3}, 
            14.211596301077542`}, {{2017, 5, 3}, 14.211596301077542`}, {{2017,
             5, 4}, 14.21710844567135}, {{2017, 5, 4}, 14.21710844567135}, {{
            2017, 5, 4}, 14.21710844567135}, {{2017, 5, 5}, 
            14.222620590265159`}, {{2017, 5, 5}, 14.222620590265159`}, {{2017,
             5, 5}, 14.222620590265159`}, {{2017, 5, 8}, 
            14.239157024046582`}, {{2017, 5, 8}, 14.239157024046582`}, {{2017,
             5, 8}, 14.239157024046582`}, {{2017, 5, 9}, 
            14.244669168640389`}, {{2017, 5, 9}, 14.244669168640389`}, {{2017,
             5, 9}, 14.244669168640389`}, {{2017, 5, 10}, 
            14.250181313234197`}, {{2017, 5, 10}, 14.250181313234197`}, {{
            2017, 5, 10}, 14.250181313234197`}, {{2017, 5, 11}, 
            14.255693457828006`}, {{2017, 5, 11}, 14.255693457828006`}, {{
            2017, 5, 11}, 14.255693457828006`}, {{2017, 5, 12}, 
            14.261205602421812`}, {{2017, 5, 12}, 14.261205602421812`}, {{
            2017, 5, 12}, 14.261205602421812`}, {{2017, 5, 15}, 
            14.277742036203236`}, {{2017, 5, 15}, 14.277742036203236`}, {{
            2017, 5, 15}, 14.277742036203236`}, {{2017, 5, 16}, 
            14.283254180797044`}, {{2017, 5, 16}, 14.283254180797044`}, {{
            2017, 5, 16}, 14.283254180797044`}, {{2017, 5, 17}, 
            14.288766325390851`}, {{2017, 5, 17}, 14.288766325390851`}, {{
            2017, 5, 17}, 14.288766325390851`}, {{2017, 5, 18}, 
            14.29427846998466}, {{2017, 5, 18}, 14.29427846998466}, {{2017, 5,
             18}, 14.29427846998466}, {{2017, 5, 19}, 14.299790614578468`}, {{
            2017, 5, 19}, 14.299790614578468`}, {{2017, 5, 19}, 
            14.299790614578468`}, {{2017, 5, 22}, 14.316327048359891`}, {{
            2017, 5, 22}, 14.316327048359891`}, {{2017, 5, 22}, 
            14.316327048359891`}, {{2017, 5, 23}, 14.321839192953698`}, {{
            2017, 5, 23}, 14.321839192953698`}, {{2017, 5, 23}, 
            14.321839192953698`}, {{2017, 5, 24}, 14.327351337547507`}, {{
            2017, 5, 24}, 14.327351337547507`}, {{2017, 5, 24}, 
            14.327351337547507`}, {{2017, 5, 25}, 14.332863482141313`}, {{
            2017, 5, 25}, 14.332863482141313`}, {{2017, 5, 25}, 
            14.332863482141313`}, {{2017, 5, 26}, 14.338375626735122`}, {{
            2017, 5, 26}, 14.338375626735122`}, {{2017, 5, 26}, 
            14.338375626735122`}, {{2017, 5, 30}, 14.360424205110354`}, {{
            2017, 5, 30}, 14.360424205110354`}, {{2017, 5, 30}, 
            14.360424205110354`}, {{2017, 5, 31}, 14.36593634970416}, {{2017, 
            5, 31}, 14.36593634970416}, {{2017, 5, 31}, 14.36593634970416}, {{
            2017, 6, 1}, 14.371448494297969`}, {{2017, 6, 1}, 
            14.371448494297969`}, {{2017, 6, 1}, 14.371448494297969`}, {{2017,
             6, 2}, 14.376960638891777`}, {{2017, 6, 2}, 
            14.376960638891777`}, {{2017, 6, 2}, 14.376960638891777`}, {{2017,
             6, 5}, 14.393497072673199`}, {{2017, 6, 5}, 
            14.393497072673199`}, {{2017, 6, 5}, 14.393497072673199`}, {{2017,
             6, 6}, 14.399009217267007`}, {{2017, 6, 6}, 
            14.399009217267007`}, {{2017, 6, 6}, 14.399009217267007`}, {{2017,
             6, 7}, 14.404521361860816`}, {{2017, 6, 7}, 
            14.404521361860816`}, {{2017, 6, 7}, 14.404521361860816`}, {{2017,
             6, 8}, 14.410033506454623`}, {{2017, 6, 8}, 
            14.410033506454623`}, {{2017, 6, 8}, 14.410033506454623`}, {{2017,
             6, 9}, 14.415545651048431`}, {{2017, 6, 9}, 
            14.415545651048431`}, {{2017, 6, 9}, 14.415545651048431`}, {{2017,
             6, 12}, 14.432082084829855`}, {{2017, 6, 12}, 
            14.432082084829855`}, {{2017, 6, 12}, 14.432082084829855`}, {{
            2017, 6, 13}, 14.437594229423663`}, {{2017, 6, 13}, 
            14.437594229423663`}, {{2017, 6, 13}, 14.437594229423663`}, {{
            2017, 6, 14}, 14.44310637401747}, {{2017, 6, 14}, 
            14.44310637401747}, {{2017, 6, 14}, 14.44310637401747}, {{2017, 6,
             15}, 14.448618518611278`}, {{2017, 6, 15}, 
            14.448618518611278`}, {{2017, 6, 15}, 14.448618518611278`}, {{
            2017, 6, 16}, 14.454130663205085`}, {{2017, 6, 16}, 
            14.454130663205085`}, {{2017, 6, 16}, 14.454130663205085`}, {{
            2017, 6, 19}, 14.470667096986508`}, {{2017, 6, 19}, 
            14.470667096986508`}, {{2017, 6, 19}, 14.470667096986508`}}, 
         "lm" -> (ReplaceAll[
           Normal[
            
            LinearModelFit[$CellContext`secondsFormData$144597, \
$CellContext`x, $CellContext`x]], Pattern[$CellContext`a, 
              Blank[]] + Pattern[$CellContext`b, 
               
               Blank[]] $CellContext`x -> $CellContext`a + $CellContext`b #]& \
), "nweeks" -> 52, "len" -> 209, "vMin" -> 12.1668119430542, "vMax" -> 
         18.1158504486084}, $CellContext`o$$, $CellContext`h$$], 
      "Specifications" :> {{{$CellContext`o$$, -0.5, 
          "offset from linear fit"}, -5.949038505554199, 5.949038505554199, 
         Appearance -> 
         "Labeled"}, {{$CellContext`h$$, 16.649999618530273`, 
          "price horizon"}, 12.1668119430542, 20.098863283793133`, Appearance -> 
         "Labeled"}}, "Options" :> {}, "DefaultOptions" :> {}],
     ImageSizeCache->{405., {182., 188.}},
     SingleEvaluation->True],
    Deinitialization:>None,
    DynamicModuleValues:>{},
    SynchronousInitialization->True,
    UndoTrackedVariables:>{Typeset`show$$, Typeset`bookmarkMode$$},
    UnsavedVariables:>{Typeset`initDone$$},
    UntrackedVariables:>{Typeset`size$$}], "Manipulate",
   Deployed->True,
   StripOnInput->False],
  Manipulate`InterpretManipulate[1]]], "Output",
 CellChangeTimes->{
  3.706916560742321*^9},ExpressionUUID->"df9c1549-05a5-4632-96b2-\
0cffa31b59ea"]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"manipulatePlotDistAgainstLinearModel", "[", " ", 
  RowBox[{"fDataAndLinearModel", "[", " ", 
   RowBox[{"\"\<SPLS\>\"", ",", " ", 
    RowBox[{"3", "*", "52"}]}], " ", "]"}], "  ", "]"}]], "Input",
 CellChangeTimes->{{3.706916654155169*^9, 3.7069166560982227`*^9}, {
  3.706916759321447*^9, 
  3.706916761151207*^9}},ExpressionUUID->"ade04256-30d8-4f75-bd2a-\
2481a6c7fa4d"],

Cell[BoxData[
 TagBox[
  StyleBox[
   DynamicModuleBox[{$CellContext`h$$ = 
    8.84000015258789, $CellContext`o$$ = -0.5, Typeset`show$$ = True, 
    Typeset`bookmarkList$$ = {}, Typeset`bookmarkMode$$ = "Menu", 
    Typeset`animator$$, Typeset`animvar$$ = 1, Typeset`name$$ = 
    "\"untitled\"", Typeset`specs$$ = {{{
       Hold[$CellContext`o$$], -0.5, 
       "offset from linear fit"}, -10.445500373840332`, 
      10.445500373840332`}, {{
       Hold[$CellContext`h$$], 8.84000015258789, "price horizon"}, 
      7.053513526916504, 20.980847358703613`}}, Typeset`size$$ = {
    360., {123., 127.}}, Typeset`update$$ = 0, Typeset`initDone$$, 
    Typeset`skipInitDone$$ = True, $CellContext`o$238455$$ = 
    0, $CellContext`h$238456$$ = 0}, 
    DynamicBox[Manipulate`ManipulateBoxes[
     1, StandardForm, 
      "Variables" :> {$CellContext`h$$ = 
        8.84000015258789, $CellContext`o$$ = -0.5}, "ControllerVariables" :> {
        Hold[$CellContext`o$$, $CellContext`o$238455$$, 0], 
        Hold[$CellContext`h$$, $CellContext`h$238456$$, 0]}, 
      "OtherVariables" :> {
       Typeset`show$$, Typeset`bookmarkList$$, Typeset`bookmarkMode$$, 
        Typeset`animator$$, Typeset`animvar$$, Typeset`name$$, 
        Typeset`specs$$, Typeset`size$$, Typeset`update$$, Typeset`initDone$$,
         Typeset`skipInitDone$$}, 
      "Body" :> $CellContext`plotDistAgainstLinearModel[{
        "company" -> "Staples, Inc.", "symbol" -> "SPLS", 
         "dMin" -> {{{2014, 6, 23}, -3.75806858647827}, {{2014, 6, 
            24}, -3.840822913166164}, {{2014, 6, 
            25}, -3.8713883665630426`}, {{2014, 6, 
            26}, -4.043845299452109}, {{2014, 6, 27}, -4.01219399412096}, {{
            2014, 6, 30}, -3.9793586084009522`}, {{2014, 7, 
            1}, -3.885586865447733}, {{2014, 7, 2}, -3.8273137415741036`}, {{
            2014, 7, 3}, -3.6980414721926618`}, {{2014, 7, 
            7}, -3.6158078557875015`}, {{2014, 7, 
            8}, -3.6462788954270557`}, {{2014, 7, 
            9}, -3.7388665579914147`}, {{2014, 7, 10}, -3.866951885961047}, {{
            2014, 7, 11}, -3.8353015343042145`}, {{2014, 7, 
            14}, -3.7137238924196545`}, {{2014, 7, 
            15}, -3.619952149466437}, {{2014, 7, 16}, -3.614923616352085}, {{
            2014, 7, 17}, -3.663141581345643}, {{2014, 7, 
            18}, -3.6669869877454513`}, {{2014, 7, 
            21}, -3.589780950780325}, {{2014, 7, 22}, -3.611376143557086}, {{
            2014, 7, 23}, -3.6507192153621677`}, {{2014, 7, 
            24}, -3.49482703478688}, {{2014, 7, 25}, -3.6761588608644225`}, {{
            2014, 7, 28}, -3.7054467737894328`}, {{2014, 7, 
            29}, -3.6560447284070143`}, {{2014, 7, 
            30}, -3.5356511669113146`}, {{2014, 7, 
            31}, -3.406381758552822}, {{2014, 8, 1}, -3.3747294995473567`}, {{
            2014, 8, 4}, -3.270900690365435}, {{2014, 8, 
            5}, -3.2569972640626066`}, {{2014, 8, 6}, -3.305213321707532}, {{
            2014, 8, 7}, -3.43330246437443}, {{2014, 8, 
            8}, -3.490394368882148}, {{2014, 8, 11}, -3.2090791400224923`}, {{
            2014, 8, 12}, -3.239546364964781}, {{2014, 8, 
            13}, -3.314387102175136}, {{2014, 8, 14}, -3.131871195708733}, {{
            2014, 8, 15}, -3.206711932919088}, {{2014, 8, 
            18}, -3.191626333576032}, {{2014, 8, 
            19}, -3.0623578788918575`}, {{2014, 8, 
            20}, -3.3590566406993805`}, {{2014, 8, 
            21}, -3.6557534951582706`}, {{2014, 8, 
            22}, -3.624103143501438}, {{2014, 8, 25}, -3.538022213347835}, {{
            2014, 8, 26}, -3.497496968502526}, {{2014, 8, 
            27}, -3.4125982113891506`}, {{2014, 8, 
            28}, -3.1324661092440387`}, {{2014, 8, 
            29}, -2.914453491046679}, {{2014, 9, 2}, -2.5216186402054817`}, {{
            2014, 9, 3}, -2.0462484246570476`}, {{2014, 9, 
            4}, -1.9968492402975784`}, {{2014, 9, 
            5}, -1.9829467676690662`}, {{2014, 9, 8}, -2.038854591787926}, {{
            2014, 9, 9}, -2.1758167202946677`}, {{2014, 9, 
            10}, -2.3216499272926203`}, {{2014, 9, 
            11}, -2.1746326399058074`}, {{2014, 9, 
            12}, -2.0453622778729983`}, {{2014, 9, 
            15}, -1.8439163193380494`}, {{2014, 9, 
            16}, -1.732394790007877}, {{2014, 9, 17}, -1.585379409969697}, {{
            2014, 9, 18}, -1.6247205744261457`}, {{2014, 9, 
            19}, -1.575322343740993}, {{2014, 9, 
            22}, -1.7909696621835813`}, {{2014, 9, 
            23}, -1.768191342692278}, {{2014, 9, 
            24}, -1.7098314344558556`}, {{2014, 9, 
            25}, -1.9198030539293942`}, {{2014, 9, 
            26}, -1.9147745208150422`}, {{2014, 9, 
            29}, -2.1953117470945447`}, {{2014, 9, 
            30}, -2.2798656572174973`}, {{2014, 10, 
            1}, -2.462960827106075}, {{2014, 10, 2}, -2.5475147372290294`}, {{
            2014, 10, 3}, -2.5335283412606735`}, {{2014, 10, 
            6}, -2.482609383152969}, {{2014, 10, 7}, -2.782160584840863}, {{
            2014, 10, 8}, -2.8129654104911594`}, {{2014, 10, 
            9}, -2.610855311519874}, {{2014, 10, 10}, -2.525202198022221}, {{
            2014, 10, 13}, -2.4115753389135417`}, {{2014, 10, 
            14}, -2.21842310279626}, {{2014, 10, 
            15}, -2.3656858675945056`}, {{2014, 10, 
            16}, -2.4323240520094505`}, {{2014, 10, 
            17}, -2.5168770084580867`}, {{2014, 10, 
            20}, -2.2688774381677668`}, {{2014, 10, 
            21}, -2.0846840185788054`}, {{2014, 10, 
            22}, -1.837781744314551}, {{2014, 10, 
            23}, -1.7610874473452185`}, {{2014, 10, 
            24}, -1.89043353276114}, {{2014, 10, 
            27}, -1.9738882395093924`}, {{2014, 10, 
            28}, -1.9330263476303937`}, {{2014, 10, 
            29}, -1.9190370906390886`}, {{2014, 10, 
            30}, -1.8781761524344045`}, {{2014, 10, 
            31}, -1.5685697918664392`}, {{2014, 11, 
            3}, -1.6430656820863714`}, {{2014, 11, 
            4}, -1.4499134459690897`}, {{2014, 11, 5}, -1.283635752088136}, {{
            2014, 11, 6}, -1.4398563797403874`}, {{2014, 11, 
            7}, -1.3631611290967385`}, {{2014, 11, 
            10}, -1.330160757719991}, {{2014, 11, 
            11}, -1.2534645534020257`}, {{2014, 11, 
            12}, -1.2394781574336697`}, {{2014, 11, 
            13}, -0.9298670284941224}, {{2014, 11, 
            14}, -0.8800501347840672}, {{2014, 11, 
            17}, -1.2232933547159153`}, {{2014, 11, 
            18}, -1.54076218946045}, {{2014, 11, 19}, -1.087820486485258}, {{
            2014, 11, 20}, -0.6080042412737381}, {{2014, 11, 
            21}, -0.29839692703145637`}, {{2014, 11, 
            24}, -0.2385181987211169}, {{2014, 11, 
            25}, -0.1797386737854758}, {{2014, 11, 
            26}, -0.41658578916965894`}, {{2014, 11, 
            28}, -0.24527956217435332`}, {{2014, 12, 
            1}, -0.5347736976335433}, {{2014, 12, 2}, -0.359539094572904}, {{
            2014, 12, 3}, -0.10367895745464573`}, {{2014, 12, 4}, 
            0.02676537766165943}, {{2014, 12, 5}, -0.16528670140660573`}, {{
            2014, 12, 8}, -0.05165984229792464}, {{2014, 12, 
            9}, -0.07350775876853355}, {{2014, 12, 10}, 
            0.20026810405773254`}, {{2014, 12, 11}, 0.5725852266496219}, {{
            2014, 12, 12}, 1.4644822366316497`}, {{2014, 12, 15}, 
            1.9543545943975573`}, {{2014, 12, 16}, 2.362507936777046}, {{2014,
             12, 17}, 2.6004504408386637`}, {{2014, 12, 18}, 
            2.73985073146034}, {{2014, 12, 19}, 2.8613352963740084`}, {{2014, 
            12, 22}, 2.9122571155046604`}, {{2014, 12, 23}, 
            2.9705369150985046`}, {{2014, 12, 24}, 3.2642102388622707`}, {{
            2014, 12, 26}, 3.4366294037848224`}, {{2014, 12, 29}, 
            3.532897482986275}, {{2014, 12, 30}, 3.528904257067424}, {{2014, 
            12, 31}, 3.6151133626915417`}, {{2015, 1, 2}, 
            3.1831843449358708`}, {{2015, 1, 5}, 2.9817915965006065`}, {{2015,
             1, 6}, 2.9417189638434724`}, {{2015, 1, 7}, 
            3.136166289682434}, {{2015, 1, 8}, 3.4298405671205163`}, {{2015, 
            1, 9}, 2.6591380135039113`}, {{2015, 1, 12}, 
            2.854623507561323}, {{2015, 1, 13}, 2.580033777431046}, {{2015, 1,
             14}, 2.666240975706529}, {{2015, 1, 15}, 2.6261683430493967`}, {{
            2015, 1, 16}, 2.6041382747843542`}, {{2015, 1, 20}, 
            2.1912880822905905`}, {{2015, 1, 21}, 2.151215449633458}, {{2015, 
            1, 22}, 2.3727242378747633`}, {{2015, 1, 23}, 
            2.467955102532084}, {{2015, 1, 26}, 2.6093233938307048`}, {{2015, 
            1, 27}, 2.6053320752604865`}, {{2015, 1, 28}, 
            2.6825203755257174`}, {{2015, 1, 29}, 2.570285114694757}, {{2015, 
            1, 30}, 2.7286587558413355`}, {{2015, 2, 2}, 
            2.644523125631167}, {{2015, 2, 3}, 4.255132942314855}, {{2015, 2, 
            4}, 2.645560340175301}, {{2015, 2, 5}, 2.560385588072368}, {{2015,
             2, 6}, 2.4120737815260753`}, {{2015, 2, 9}, 
            2.4271593808691314`}, {{2015, 2, 10}, 2.829071878522056}, {{2015, 
            2, 11}, 2.888222382766779}, {{2015, 2, 12}, 3.001491997118924}, {{
            2015, 2, 13}, 2.8170969691370846`}, {{2015, 2, 17}, 
            2.7289700203566998`}, {{2015, 2, 18}, 2.878320948795757}, {{2015, 
            2, 19}, 2.829229418128371}, {{2015, 2, 20}, 
            2.6087540297339338`}, {{2015, 2, 23}, 2.4344179753294313`}, {{
            2015, 2, 24}, 2.574747144735287}, {{2015, 2, 25}, 
            2.6429165469902642`}, {{2015, 2, 26}, 2.458526287380007}, {{2015, 
            2, 27}, 2.2109903902575425`}, {{2015, 3, 2}, 
            2.7041405266489367`}, {{2015, 3, 3}, 2.8354507980445387`}, {{2015,
             3, 4}, 2.6149754096501017`}, {{2015, 3, 5}, 
            2.5839226286775396`}, {{2015, 3, 6}, 2.119908383776755}, {{2015, 
            3, 9}, 2.1620516308248874`}, {{2015, 3, 10}, 2.07688069341922}, {{
            2015, 3, 11}, 1.9375887385574977`}, {{2015, 3, 12}, 
            2.1771372301679435`}, {{2015, 3, 13}, 2.073925635718819}, {{2015, 
            3, 16}, 2.1341124008333594`}, {{2015, 3, 17}, 
            2.1391409339477097`}, {{2015, 3, 18}, 2.216328280538624}, {{2015, 
            3, 19}, 2.1942982122735817`}, {{2015, 3, 20}, 
            2.1993267453879337`}, {{2015, 3, 23}, 2.6654192340742515`}, {{
            2015, 3, 24}, 2.7786869410777637`}, {{2015, 3, 25}, 
            2.8543274279274655`}, {{2015, 3, 26}, 2.2961120950750207`}, {{
            2015, 3, 27}, 2.237547717422771}, {{2015, 3, 30}, 
            2.479748947869343}, {{2015, 3, 31}, 2.6210451430320347`}, {{2015, 
            4, 1}, 2.635159331358789}, {{2015, 4, 2}, 2.53117144601611}, {{
            2015, 4, 6}, 2.433186365827032}, {{2015, 4, 7}, 
            2.365539193985329}, {{2015, 4, 8}, 2.4159883737671617`}, {{2015, 
            4, 9}, 2.46644136824626}, {{2015, 4, 10}, 2.725838683404069}, {{
            2015, 4, 13}, 2.6409944731768107`}, {{2015, 4, 14}, 
            2.573345393986475}, {{2015, 4, 15}, 2.6510515394055147`}, {{2015, 
            4, 16}, 2.565234010813324}, {{2015, 4, 17}, 2.433992974530703}, {{
            2015, 4, 20}, 2.5035858294279585`}, {{2015, 4, 21}, 
            2.4813593042537345`}, {{2015, 4, 22}, 2.331950772243575}, {{2015, 
            4, 23}, 2.4914163704824386`}, {{2015, 4, 24}, 
            2.5963775741900523`}, {{2015, 4, 27}, 2.5115305029398467`}, {{
            2015, 4, 28}, 2.4166292264838862`}, {{2015, 4, 29}, 
            2.4125730580601505`}, {{2015, 4, 30}, 2.6174631176637604`}, {{
            2015, 5, 1}, 2.795100026327429}, {{2015, 5, 4}, 
            2.955538942931227}, {{2015, 5, 5}, 2.9333143251056377`}, {{2015, 
            5, 6}, 2.865664292240986}, {{2015, 5, 7}, 2.8616090774915683`}, {{
            2015, 5, 8}, 3.00290527265426}, {{2015, 5, 11}, 
            2.9907386747316895`}, {{2015, 5, 12}, 2.8867517430633267`}, {{
            2015, 5, 13}, 2.96445693480805}, {{2015, 5, 14}, 
            2.9149782123682026`}, {{2015, 5, 15}, 2.820076935912242}, {{2015, 
            5, 18}, 2.916922941749437}, {{2015, 5, 19}, 
            2.9310352227275587`}, {{2015, 5, 20}, 2.627186764569938}, {{2015, 
            5, 21}, 2.7684820060583135`}, {{2015, 5, 22}, 
            2.7825981017337007`}, {{2015, 5, 26}, 2.72095087402265}, {{2015, 
            5, 27}, 2.798653204744424}, {{2015, 5, 28}, 2.858192808110241}, {{
            2015, 5, 29}, 3.0267459689101397`}, {{2015, 6, 1}, 
            2.923729494583762}, {{2015, 6, 2}, 3.01960599675329}, {{2015, 6, 
            3}, 3.060970474997035}, {{2015, 6, 4}, 3.1023397216123634`}, {{
            2015, 6, 5}, 3.116452002590485}, {{2015, 6, 8}, 
            3.0497771954394004`}, {{2015, 6, 9}, 2.8458595005264087`}, {{2015,
             6, 10}, 2.959904452097792}, {{2015, 6, 11}, 
            3.1193700503366557`}, {{2015, 6, 12}, 2.997213715592121}, {{2015, 
            6, 15}, 2.812438742120234}, {{2015, 6, 16}, 2.835634770962125}, {{
            2015, 6, 17}, 2.913339962706848}, {{2015, 6, 18}, 
            3.045556224703036}, {{2015, 6, 19}, 3.114175761235357}, {{2015, 6,
             22}, 2.9929917911814385`}, {{2015, 6, 23}, 
            3.0706988902747945`}, {{2015, 6, 24}, 2.515287359912584}, {{2015, 
            6, 25}, 2.6850278452364087`}, {{2015, 6, 26}, 
            2.726659352288749}, {{2015, 6, 29}, 2.311662630464813}, {{2015, 6,
             30}, 2.2617862258350225`}, {{2015, 7, 1}, 
            2.3583226706315035`}, {{2015, 7, 2}, 2.49146018201734}, {{2015, 7,
             6}, 2.4109168514010175`}, {{2015, 7, 7}, 2.333588931573475}, {{
            2015, 7, 8}, 2.3203174082303057`}, {{2015, 7, 9}, 
            2.3161944826044234`}, {{2015, 7, 10}, 2.412729973726588}, {{2015, 
            7, 13}, 2.418665068003726}, {{2015, 7, 14}, 2.542653027997961}, {{
            2015, 7, 15}, 2.5110776335000082`}, {{2015, 7, 16}, 
            2.41544870354063}, {{2015, 7, 17}, 1.7067235363986342`}, {{2015, 
            7, 20}, 1.7675616610712783`}, {{2015, 7, 21}, 
            1.7359891275962749`}, {{2015, 7, 22}, 1.8416732164357246`}, {{
            2015, 7, 23}, 1.5813332879411899`}, {{2015, 7, 24}, 
            1.4124984101058349`}, {{2015, 7, 27}, 1.1805146506232056`}, {{
            2015, 7, 28}, 1.0299836439426358`}, {{2015, 7, 29}, 
            1.1356686864564018`}, {{2015, 7, 30}, 1.2871081616483906`}, {{
            2015, 7, 31}, 1.5117526310420395`}, {{2015, 8, 3}, 
            1.362126278175623}, {{2015, 8, 4}, 1.2847983583480804`}, {{2015, 
            8, 5}, 1.4362387872143838`}, {{2015, 8, 6}, 
            1.3131564347086186`}, {{2015, 8, 7}, 1.2358285148810761`}, {{2015,
             8, 10}, 1.3881755049101674`}, {{2015, 8, 11}, 
            1.3840535329585997`}, {{2015, 8, 12}, 1.0139046826501001`}, {{
            2015, 8, 13}, 1.384958186772753}, {{2015, 8, 14}, 
            1.389986719887105}, {{2015, 8, 17}, 1.3593207475748876`}, {{2015, 
            8, 18}, 1.4467047799568178`}, {{2015, 8, 19}, 
            1.2321164231175565`}, {{2015, 8, 20}, 1.3103518577822015`}, {{
            2015, 8, 21}, 1.1872695052764364`}, {{2015, 8, 24}, 
            0.040219026738631314`}, {{2015, 8, 25}, 0.7132468274311083}, {{
            2015, 8, 26}, 0.590166382273976}, {{2015, 8, 27}, 
            0.7416058574659647}, {{2015, 8, 28}, 0.984552290665766}, {{2015, 
            8, 31}, 0.981335926202668}, {{2015, 9, 1}, 
            1.0870228760650669`}, {{2015, 9, 2}, 1.2933663353268798`}, {{2015,
             9, 3}, 1.2251889205652553`}, {{2015, 9, 4}, 
            0.9831480948539237}, {{2015, 9, 8}, 1.2869345600750037`}, {{2015, 
            9, 9}, 1.4383740352669907`}, {{2015, 9, 10}, 
            1.3061430850439404`}, {{2015, 9, 11}, 1.146457758600187}, {{2015, 
            9, 14}, 1.2347493058192196`}, {{2015, 9, 15}, 
            1.1482718346000738`}, {{2015, 9, 16}, 1.2631073821797578`}, {{
            2015, 9, 17}, 1.3138903479723325`}, {{2015, 9, 18}, 
            1.0169455381911767`}, {{2015, 9, 21}, 1.0960875340186078`}, {{
            2015, 9, 22}, 0.11284053917885828`}, {{2015, 9, 23}, 
            0.1889874270905736}, {{2015, 9, 24}, 0.09240100811752328}, {{2015,
             9, 25}, 0.060480383517031555`}, {{2015, 9, 
            28}, -0.2662270774426485}, {{2015, 9, 29}, -0.362811589067066}, {{
            2015, 9, 30}, -0.42244789665095617`}, {{2015, 10, 
            1}, -0.49131863264060804`}, {{2015, 10, 
            2}, -0.44933903446277945`}, {{2015, 10, 5}, 
            0.06457640649404439}, {{2015, 10, 6}, 0.12503153720361126`}, {{
            2015, 10, 7}, 0.25938689069149845`}, {{2015, 10, 8}, 
            0.30136553519501064`}, {{2015, 10, 9}, 0.13087984711795642`}, {{
            2015, 10, 12}, 0.09053980254011407}, {{2015, 10, 
            13}, -0.09842237174299484}, {{2015, 10, 
            14}, -0.1857705476130196}, {{2015, 10, 15}, 
            0.35504175320152775`}, {{2015, 10, 16}, 0.3231192212524032}, {{
            2015, 10, 19}, 0.4028677539450687}, {{2015, 10, 20}, 
            0.38942170820199706`}, {{2015, 10, 21}, 0.3020725786576577}, {{
            2015, 10, 22}, 0.4641417077803105}, {{2015, 10, 23}, 
            0.3767935319102875}, {{2015, 10, 26}, 0.5858698386508046}, {{2015,
             10, 27}, 0.5908983717651566}, {{2015, 10, 28}, 
            0.6790644170865399}, {{2015, 10, 29}, 0.7210449689386849}, {{2015,
             10, 30}, 0.7814991459739353}, {{2015, 11, 2}, 
            0.6949697932295873}, {{2015, 11, 3}, 0.9309391451305604}, {{2015, 
            11, 4}, 0.9913942758401273}, {{2015, 11, 5}, 
            1.0426102097723504`}, {{2015, 11, 6}, 1.0384014534579915`}, {{
            2015, 11, 9}, 0.7948334120539755}, {{2015, 11, 10}, 
            0.7351980581444018}, {{2015, 11, 11}, 0.7309902555043593}, {{2015,
             11, 12}, 0.7452551243731058}, {{2015, 11, 13}, 
            0.4084934582076727}, {{2015, 11, 16}, 0.5159548128607874}, {{2015,
             11, 17}, 0.3269926385776767}, {{2015, 11, 
            18}, -0.03748375689683847}, {{2015, 11, 
            19}, -0.17102124093336535`}, {{2015, 11, 20}, 
            0.05571272888752965}, {{2015, 11, 23}, 0.20936148435851543`}, {{
            2015, 11, 24}, 0.1497261304489399}, {{2015, 11, 25}, 
            0.3117952595715927}, {{2015, 11, 27}, 0.4049907916816444}, {{2015,
             11, 30}, 0.19837286166679036`}, {{2015, 12, 1}, 
            0.19416315167811504`}, {{2015, 12, 2}, 0.19919168479246707`}, {{
            2015, 12, 3}, 0.047180575572834726`}, {{2015, 12, 4}, 
            0.11687299571111254`}, {{2015, 12, 7}, -1.133595833046419}, {{
            2015, 12, 8}, -1.8675781107841178`}, {{2015, 12, 
            9}, -1.7978866443201564`}, {{2015, 12, 
            10}, -1.8575210445554138`}, {{2015, 12, 
            11}, -2.1573345066803196`}, {{2015, 12, 
            14}, -2.5025165464974215`}, {{2015, 12, 
            15}, -2.091032973405042}, {{2015, 12, 16}, -2.104479019148112}, {{
            2015, 12, 17}, -2.2010635307725295`}, {{2015, 12, 
            18}, -2.177559465126439}, {{2015, 12, 
            21}, -2.0883361781002776`}, {{2015, 12, 
            22}, -2.017809292935146}, {{2015, 12, 
            23}, -1.9753528575991144`}, {{2015, 12, 
            24}, -1.8861129749974577`}, {{2015, 12, 
            28}, -1.875357248606944}, {{2015, 12, 
            29}, -1.8890407592548009`}, {{2015, 12, 
            30}, -1.87465763477082}, {{2015, 12, 31}, -2.038050846956761}, {{
            2016, 1, 4}, -2.083433159201501}, {{2016, 1, 
            5}, -1.900625428394278}, {{2016, 1, 6}, -1.9049533939981877`}, {{
            2016, 1, 7}, -1.9841362103711404`}, {{2016, 1, 
            8}, -1.8668268316146985`}, {{2016, 1, 
            11}, -2.0482334274010388`}, {{2016, 1, 
            12}, -2.033848395568425}, {{2016, 1, 13}, -2.028819862454073}, {{
            2016, 1, 14}, -2.2764263314759514`}, {{2016, 1, 
            15}, -2.4211055925510543`}, {{2016, 1, 
            19}, -2.5226326191512634`}, {{2016, 1, 
            20}, -2.901232454414597}, {{2016, 1, 21}, -2.4377197484792}, {{
            2016, 1, 22}, -2.432691215364848}, {{2016, 1, 
            25}, -2.539244867730776}, {{2016, 1, 26}, -2.515502383505586}, {{
            2016, 1, 27}, -2.4636884957769762`}, {{2016, 1, 
            28}, -2.505445317276882}, {{2016, 1, 
            29}, -2.4629888819408503`}, {{2016, 2, 1}, -2.438545830205216}, {{
            2016, 2, 2}, -2.648724873842575}, {{2016, 2, 
            3}, -2.7934060422663087`}, {{2016, 2, 
            4}, -2.5170290327420446`}, {{2016, 2, 
            5}, -2.4184316977478097`}, {{2016, 2, 8}, -2.627912081223357}, {{
            2016, 2, 9}, -2.7445208924693567`}, {{2016, 2, 
            10}, -2.711421909525903}, {{2016, 2, 11}, -3.024525300087088}, {{
            2016, 2, 12}, -2.963355867314533}, {{2016, 2, 
            16}, -2.6906076863952126`}, {{2016, 2, 
            17}, -2.077385755758888}, {{2016, 2, 
            18}, -1.9694319220463914`}, {{2016, 2, 
            19}, -1.7398397902992286`}, {{2016, 2, 
            22}, -1.7434681420670124`}, {{2016, 2, 
            23}, -1.8507214082690666`}, {{2016, 2, 
            24}, -2.079613926180105}, {{2016, 2, 25}, -1.990373089904132}, {{
            2016, 2, 26}, -1.7327095546535496`}, {{2016, 2, 
            29}, -1.6989119115482865`}, {{2016, 3, 
            1}, -1.6096710752723151`}, {{2016, 3, 
            2}, -1.4830032904489787`}, {{2016, 3, 
            3}, -1.4311913100690017`}, {{2016, 3, 
            4}, -1.7536516761856067`}, {{2016, 3, 
            7}, -1.5327173829948944`}, {{2016, 3, 8}, -1.537043441250173}, {{
            2016, 3, 9}, -1.541372360528399}, {{2016, 3, 
            10}, -1.686053528952133}, {{2016, 3, 11}, -1.475174394641492}, {{
            2016, 3, 14}, -1.3852348982037093`}, {{2016, 3, 
            15}, -1.4831316656875018`}, {{2016, 3, 
            16}, -1.4874605849657279`}, {{2016, 3, 
            17}, -1.2204405509968836`}, {{2016, 3, 
            18}, -1.177984115660852}, {{2016, 3, 
            21}, -1.2938933130707273`}, {{2016, 3, 
            22}, -1.3363529925418245`}, {{2016, 3, 
            23}, -1.0092028392492498`}, {{2016, 3, 
            24}, -0.36940582011194856`}, {{2016, 3, 
            28}, -0.15033615176587034`}, {{2016, 3, 
            29}, -0.16425521996987769`}, {{2016, 3, 30}, 
            0.08710166702631028}, {{2016, 3, 31}, -0.012086375481896283`}, {{
            2016, 4, 1}, -0.016530689352407535`}, {{2016, 4, 4}, 
            0.1406666882499259}, {{2016, 4, 5}, -0.005891311228497287}, {{
            2016, 4, 6}, -0.010337532447641351`}, {{2016, 4, 7}, 
            0.004165755000206772}, {{2016, 4, 8}, -0.02870282187079276}, {{
            2016, 4, 11}, 0.1948149750430641}, {{2016, 4, 12}, 
            0.1619463981720628}, {{2016, 4, 13}, 0.31856051020487186`}, {{
            2016, 4, 14}, 0.16252966374158717`}, {{2016, 4, 15}, 
            0.20545435316697436`}, {{2016, 4, 18}, 0.23001470684352654`}, {{
            2016, 4, 19}, 0.12135191000182388`}, {{2016, 4, 
            20}, -0.15784311340237878`}, {{2016, 4, 
            21}, -0.21913404592523378`}, {{2016, 4, 
            22}, -0.2709502241145927}, {{2016, 4, 
            25}, -0.45482206800884306`}, {{2016, 4, 
            26}, -0.2697836929755457}, {{2016, 4, 
            27}, -0.32160082483922103`}, {{2016, 4, 
            28}, -0.3260460923840487}, {{2016, 4, 
            29}, -0.5862944681442102}, {{2016, 5, 2}, -0.5522612674827947}, {{
            2016, 5, 3}, -0.6040755383235208}, {{2016, 5, 
            4}, -0.4758847356168836}, {{2016, 5, 5}, -0.5371756681397386}, {{
            2016, 5, 6}, -0.740578378921871}, {{2016, 5, 
            9}, -0.4317935150524477}, {{2016, 5, 10}, -0.4646611382491326}, {{
            2016, 5, 11}, -2.231298655092056}, {{2016, 5, 
            12}, -2.3115376657704285`}, {{2016, 5, 
            13}, -2.3065091326560765`}, {{2016, 5, 
            16}, -2.319845888964876}, {{2016, 5, 
            17}, -2.2769211995394905`}, {{2016, 5, 
            18}, -2.3382116552251873`}, {{2016, 5, 
            19}, -2.4752953772072708`}, {{2016, 5, 
            20}, -2.4418444884410633`}, {{2016, 5, 
            23}, -2.1899052895496673`}, {{2016, 5, 
            24}, -2.289091424709241}, {{2016, 5, 25}, -2.037734537713053}, {{
            2016, 5, 26}, -1.9379660906582714`}, {{2016, 5, 
            27}, -1.8855666468993881`}, {{2016, 5, 
            31}, -1.7422883375010638`}, {{2016, 6, 1}, -1.775155960697747}, {{
            2016, 6, 2}, -1.7038089156205043`}, {{2016, 6, 
            3}, -1.7272027381580095`}, {{2016, 6, 
            6}, -1.5794782075405394`}, {{2016, 6, 7}, -1.555502073107828}, {{
            2016, 6, 8}, -1.559948294326972}, {{2016, 6, 
            9}, -1.7254538951237528`}, {{2016, 6, 10}, -1.881485695261354}, {{
            2016, 6, 13}, -1.752710673310876}, {{2016, 6, 
            14}, -1.9371638754260179`}, {{2016, 6, 
            15}, -1.8184468733785604`}, {{2016, 6, 
            16}, -1.7944697852715326`}, {{2016, 6, 
            17}, -1.7515450958461454`}, {{2016, 6, 
            20}, -1.5185525445987924`}, {{2016, 6, 
            21}, -1.5893182314551453`}, {{2016, 6, 
            22}, -1.547172693946262}, {{2016, 6, 
            23}, -1.4749158435711678`}, {{2016, 6, 
            24}, -1.642762714814726}, {{2016, 6, 
            27}, -2.1174928274467675`}, {{2016, 6, 
            28}, -2.0260270689906186`}, {{2016, 6, 29}, -1.71366172862529}, {{
            2016, 6, 30}, -1.7470510116730473`}, {{2016, 7, 
            1}, -1.588354074933207}, {{2016, 7, 5}, -1.693094983979707}, {{
            2016, 7, 6}, -1.8129224460435776`}, {{2016, 7, 
            7}, -1.6446220089375263`}, {{2016, 7, 8}, -1.533946388726008}, {{
            2016, 7, 11}, -1.2979631148224051`}, {{2016, 7, 
            12}, -1.1392680854311976`}, {{2016, 7, 
            13}, -1.1246350982763182`}, {{2016, 7, 
            14}, -1.061981748267435}, {{2016, 7, 
            15}, -1.1241824860881415`}, {{2016, 7, 
            18}, -1.1187003871112964`}, {{2016, 7, 
            19}, -1.1616941241995828`}, {{2016, 7, 
            20}, -1.0798290050866957`}, {{2016, 7, 
            21}, -1.0940112874020311`}, {{2016, 7, 
            22}, -1.137003117141683}, {{2016, 7, 
            25}, -1.0642927009040957`}, {{2016, 7, 
            26}, -1.0016393508952142`}, {{2016, 7, 
            27}, -0.9293786858228543}, {{2016, 7, 
            28}, -0.9051431519760804}, {{2016, 7, 
            29}, -0.8713031640887792}, {{2016, 8, 1}, -0.8177997485836137}, {{
            2016, 8, 2}, -1.3121904278105703`}, {{2016, 8, 
            3}, -1.4224124821595971`}, {{2016, 8, 
            4}, -1.0428197782078428`}, {{2016, 8, 5}, -0.9225397039557954}, {{
            2016, 8, 8}, -0.8690362884506317}, {{2016, 8, 
            9}, -0.9216344795794438}, {{2016, 8, 10}, -0.93581390087183}, {{
            2016, 8, 11}, -0.8251392343346264}, {{2016, 8, 
            12}, -0.8873399721553348}, {{2016, 8, 
            15}, -0.7474002849826888}, {{2016, 8, 
            16}, -0.7615787526007587}, {{2016, 8, 
            17}, -1.4288467435342582`}, {{2016, 8, 
            18}, -1.654319385346664}, {{2016, 8, 19}, -1.572457127256726}, {{
            2016, 8, 22}, -1.518954665425877}, {{2016, 8, 
            23}, -1.4082809525629916`}, {{2016, 8, 
            24}, -1.4224613275296942`}, {{2016, 8, 
            25}, -1.475056657635557}, {{2016, 8, 
            26}, -1.4412166697482558`}, {{2016, 8, 
            29}, -1.3781097538768812`}, {{2016, 8, 
            30}, -1.3058509961531541`}, {{2016, 8, 
            31}, -1.3968641424211263`}, {{2016, 9, 
            1}, -1.4302534254688837`}, {{2016, 9, 2}, -1.367599121785684}, {{
            2016, 9, 6}, -1.3762973977755415`}, {{2016, 9, 
            7}, -1.2848316393193926`}, {{2016, 9, 8}, -1.116530248539025}, {{
            2016, 9, 9}, -1.3227958896190088`}, {{2016, 9, 
            12}, -1.346126199089431}, {{2016, 9, 13}, -1.369911028096661}, {{
            2016, 9, 14}, -1.37448599534852}, {{2016, 9, 
            15}, -1.3598539618679588`}, {{2016, 9, 
            16}, -1.2683872497374935`}, {{2016, 9, 
            19}, -1.2629051507606484`}, {{2016, 9, 
            20}, -1.3155033418894604`}, {{2016, 9, 
            21}, -1.330096657835167}, {{2016, 9, 
            22}, -1.1691900577042134`}, {{2016, 9, 
            23}, -1.1154487941821465`}, {{2016, 9, 
            26}, -1.314696729079813}, {{2016, 9, 
            27}, -1.3388954527403634`}, {{2016, 9, 
            28}, -1.3241251364839233`}, {{2016, 9, 
            29}, -1.2801266097782626`}, {{2016, 9, 
            30}, -1.2263862999305122`}, {{2016, 10, 
            3}, -1.162587970179743}, {{2016, 10, 4}, -1.38163570812252}, {{
            2016, 10, 5}, -1.405833954945912}, {{2016, 10, 
            6}, -1.5371989688896655`}, {{2016, 10, 
            7}, -1.5516554325709677`}, {{2016, 10, 
            10}, -1.546313046881476}, {{2016, 10, 
            11}, -1.8530411246374854`}, {{2016, 10, 
            12}, -1.7700735580148326`}, {{2016, 10, 
            13}, -1.9209235687542403`}, {{2016, 10, 
            14}, -1.964607289210445}, {{2016, 10, 
            17}, -2.1054002337211504`}, {{2016, 10, 
            18}, -2.041917663894152}, {{2016, 10, 
            19}, -1.9881768772092432`}, {{2016, 10, 
            20}, -2.0026333408905472`}, {{2016, 10, 
            21}, -2.0268320645510975`}, {{2016, 10, 
            24}, -1.9727764716167329`}, {{2016, 10, 
            25}, -2.055430185664246}, {{2016, 10, 26}, -1.982204402183683}, {{
            2016, 10, 27}, -2.1915089264728955`}, {{2016, 10, 
            28}, -2.128025879808739}, {{2016, 10, 
            31}, -2.1421680140777433`}, {{2016, 11, 
            1}, -2.1663662609011354`}, {{2016, 11, 2}, -2.151595467807537}, {{
            2016, 11, 3}, -2.1173392010811245`}, {{2016, 11, 
            4}, -2.1025688848246826`}, {{2016, 11, 
            7}, -1.9121197448322143`}, {{2016, 11, 
            8}, -1.8681212181265536`}, {{2016, 11, 
            9}, -1.9605171921533149`}, {{2016, 11, 
            10}, -1.2637762795833964`}, {{2016, 11, 
            11}, -0.9372479219451186}, {{2016, 11, 
            14}, -0.7078287883613399}, {{2016, 11, 
            15}, -0.7028002552469879}, {{2016, 11, 
            16}, -0.6003472149915225}, {{2016, 11, 
            17}, -0.6050614186935768}, {{2016, 11, 
            18}, -0.1226549940386974}, {{2016, 11, 21}, 
            0.22367316664468895`}, {{2016, 11, 22}, 0.38458072044995895`}, {{
            2016, 11, 23}, 0.477291023889018}, {{2016, 11, 25}, 
            0.47760535330131404`}, {{2016, 11, 28}, 0.2588728984451514}, {{
            2016, 11, 29}, 0.39055319547551903`}, {{2016, 11, 30}, 
            0.30789995826516403`}, {{2016, 12, 1}, 0.3031857545631098}, {{
            2016, 12, 2}, 0.3179570244938681}, {{2016, 12, 5}, 
            0.4012398742031351}, {{2016, 12, 6}, 0.42575292727598324`}, {{
            2016, 12, 7}, 0.5087214475729507}, {{2016, 12, 8}, 
            0.6111735341540996}, {{2016, 12, 9}, 0.5577475537186469}, {{2016, 
            12, 12}, 0.5533476794288887}, {{2016, 12, 13}, 
            0.5583762125432408}, {{2016, 12, 14}, 0.5828902192904053}, {{2016,
             12, 15}, 0.6074032723632534}, {{2016, 12, 16}, 
            0.6026900223355156}, {{2016, 12, 19}, 0.5867669012806225}, {{2016,
             12, 20}, 0.6904072660600136}, {{2016, 12, 21}, 
            0.5869629750776859}, {{2016, 12, 22}, 0.079214179700827}, {{2016, 
            12, 23}, 0.07438172038353841}, {{2016, 12, 27}, 
            0.114217837704226}, {{2016, 12, 28}, 0.030496485259495998`}, {{
            2016, 12, 29}, -0.043363874753595155`}, {{2016, 12, 
            30}, -0.07777931136580563}, {{2017, 1, 
            3}, -0.2055829264059561}, {{2017, 1, 
            4}, -0.16110946989072517`}, {{2017, 1, 
            5}, -0.09691402851221298}, {{2017, 1, 
            6}, -0.02285759470206017}, {{2017, 1, 9}, 0.0612559053367967}, {{
            2017, 1, 10}, 0.1353123391469495}, {{2017, 1, 11}, 
            0.09103495642878023}, {{2017, 1, 12}, 0.17495238267057367`}, {{
            2017, 1, 13}, 0.1405359923840468}, {{2017, 1, 17}, 
            0.190233102136375}, {{2017, 1, 18}, 0.2642904896208442}, {{2017, 
            1, 19}, 0.05237432821615329}, {{2017, 1, 20}, 
            0.08698583862542719}, {{2017, 1, 23}, 0.04290548337863953}, {{
            2017, 1, 24}, 0.10709997108283531`}, {{2017, 1, 25}, 
            0.37837911454874984`}, {{2017, 1, 26}, 0.35382467036818}, {{2017, 
            1, 27}, 0.1912144247960086}, {{2017, 1, 30}, 
            0.14713216220058634`}, {{2017, 1, 31}, 0.03382783246093446}, {{
            2017, 2, 1}, 0.09802232016513024}, {{2017, 2, 2}, 
            0.05374589112127737}, {{2017, 2, 3}, 0.12780232493143018`}, {{
            2017, 2, 6}, 0.06399903114704486}, {{2017, 2, 7}, 
            0.01972164842887736}, {{2017, 2, 8}, 0.014889189111588763`}, {{
            2017, 2, 9}, 0.029778714657581418`}, {{2017, 2, 10}, 
            0.16300205673189438`}, {{2017, 2, 13}, 0.3358654423298333}, {{
            2017, 2, 14}, 0.3803379451707478}, {{2017, 2, 15}, 
            0.5332842257826567}, {{2017, 2, 16}, 0.41011794993704775`}, {{
            2017, 2, 17}, 0.3461176286812826}, {{2017, 2, 21}, 
            0.4944265700986499}, {{2017, 2, 22}, 0.5191780417505996}, {{2017, 
            2, 23}, 0.2875398954826274}, {{2017, 2, 24}, 
            0.2531244588704169}, {{2017, 2, 27}, 0.44570887565732065`}, {{
            2017, 2, 28}, 0.0760149279977469}, {{2017, 3, 1}, 
            0.27826712444217705`}, {{2017, 3, 2}, 0.3621845506839705}, {{2017,
             3, 3}, 0.17985136657420142`}, {{2017, 3, 6}, 
            0.03715917966237292}, {{2017, 3, 7}, 0.03232576667076792}, {{2017,
             3, 8}, 0.057077238322717605`}, {{2017, 3, 
            9}, -0.3421996866317798}, {{2017, 3, 10}, -0.1596713823992637}, {{
            2017, 3, 13}, -0.1741687603511295}, {{2017, 3, 
            14}, -0.22830713550093762`}, {{2017, 3, 
            15}, -0.20355661752330434`}, {{2017, 3, 
            16}, -0.0013053747531905913`}, {{2017, 3, 17}, 
            0.09247304392024347}, {{2017, 3, 20}, 0.11741963569494018`}, {{
            2017, 3, 21}, -0.0353296174455906}, {{2017, 3, 
            22}, -0.090856542400088}, {{2017, 3, 
            23}, -0.02582854334335316}, {{2017, 3, 
            24}, -0.09079970505321988}, {{2017, 3, 
            27}, -0.18571376238741166`}, {{2017, 3, 
            28}, -0.18068522927305963`}, {{2017, 3, 29}, 
            0.00434265534275724}, {{2017, 3, 30}, 0.04937210398445302}, {{
            2017, 3, 31}, 0.24440021748210583`}, {{2017, 4, 3}, 
            0.1394859312660799}, {{2017, 4, 4}, 0.17451419735162332`}, {{2017,
             4, 5}, 1.1695425015841394`}, {{2017, 4, 6}, 
            1.3245716069030813`}, {{2017, 4, 7}, 1.2295997585477068`}, {{2017,
             4, 10}, 1.2746850908619525`}, {{2017, 4, 11}, 
            1.1997137002702498`}, {{2017, 4, 12}, 1.0147426530012993`}, {{
            2017, 4, 13}, 1.099771109821706}, {{2017, 4, 17}, 
            1.12988547116095}, {{2017, 4, 18}, 1.1549135083646576`}, {{2017, 
            4, 19}, 1.2299426899775447`}, {{2017, 4, 20}, 
            1.2549707271812522`}, {{2017, 4, 21}, 1.2299995273244129`}, {{
            2017, 4, 24}, 1.375085241108387}, {{2017, 4, 25}, 
            1.3901130494302585`}, {{2017, 4, 26}, 1.4851417351324994`}, {{
            2017, 4, 27}, 1.320170191952906}, {{2017, 4, 28}, 
            1.355199411712766}, {{2017, 5, 1}, 1.320284820320957}, {{2017, 5, 
            2}, 1.305312895671637}, {{2017, 5, 3}, 1.2803416958147977`}, {{
            2017, 5, 4}, 1.2453702670761224`}, {{2017, 5, 5}, 
            1.2703992579541463`}, {{2017, 5, 8}, 1.3454843232395852`}, {{2017,
             5, 9}, 1.300512665619074}, {{2017, 5, 10}, 
            1.2455417327910432`}, {{2017, 5, 11}, 1.1405696555538327`}, {{
            2017, 5, 12}, 0.9755981123742394}, {{2017, 5, 15}, 
            0.9506837498642664}, {{2017, 5, 16}, 0.5757131222120169}, {{2017, 
            5, 17}, 0.5507409686808593}, {{2017, 5, 18}, 
            0.5057693110603481}, {{2017, 5, 19}, 0.47079788232167274`}, {{
            2017, 5, 22}, 0.5058839394284007}, {{2017, 5, 23}, 
            0.4109120910730262}, {{2017, 5, 24}, 0.4759410438040774}, {{2017, 
            5, 25}, 0.5909692335956755}, {{2017, 5, 26}, 
            0.7759980718858088}, {{2017, 5, 30}, 0.7461120136083537}, {{2017, 
            5, 31}, 0.6611403941348133}, {{2017, 6, 1}, 0.876168965396138}, {{
            2017, 6, 2}, 0.8511977655392986}, {{2017, 6, 5}, 
            0.856283136000517}, {{2017, 6, 6}, 0.8813121268785409}, {{2017, 6,
             7}, 0.876340431111057}, {{2017, 6, 8}, 1.0713685446087098`}, {{
            2017, 6, 9}, 0.9963971540170071}, {{2017, 6, 12}, 
            1.1014829059479538`}, {{2017, 6, 13}, 1.0165112864744152`}, {{
            2017, 6, 14}, 0.8315402392054665}, {{2017, 6, 15}, 
            0.8665685052910099}, {{2017, 6, 16}, 0.6715972291402252}, {{2017, 
            6, 19}, 0.6566830955120881}}, 
         "dMax" -> {{{2014, 6, 23}, -3.652730489859618}, {{2014, 6, 
            24}, -3.7003724355660665`}, {{2014, 6, 
            25}, -3.7737693098613825`}, {{2014, 6, 
            26}, -3.786489609449667}, {{2014, 6, 27}, -3.816957788066272}, {{
            2014, 6, 30}, -3.855118686831128}, {{2014, 7, 
            1}, -3.708098538421366}, {{2014, 7, 2}, -3.649826368222053}, {{
            2014, 7, 3}, -3.476183447595494}, {{2014, 7, 
            7}, -3.4738191015150406`}, {{2014, 7, 8}, -3.495414294291802}, {{
            2014, 7, 9}, -3.49925970069161}, {{2014, 7, 
            10}, -3.653967800878039}, {{2014, 7, 
            11}, -3.7110616127343903`}, {{2014, 7, 
            14}, -3.5184886400392834`}, {{2014, 7, 
            15}, -3.513460106924933}, {{2014, 7, 
            16}, -3.4818097552681007`}, {{2014, 7, 
            17}, -3.4945281475077525`}, {{2014, 7, 
            18}, -3.5072484470960372`}, {{2014, 7, 
            21}, -3.4655400755361843`}, {{2014, 7, 
            22}, -3.3895162116112854`}, {{2014, 7, 
            23}, -3.482105781524277}, {{2014, 7, 24}, -3.335088494137466}, {{
            2014, 7, 25}, -3.445425943078778}, {{2014, 7, 
            28}, -3.6078277170877726`}, {{2014, 7, 
            29}, -3.5140559741345534`}, {{2014, 7, 
            30}, -3.287168462748717}, {{2014, 7, 31}, -2.97153869519833}, {{
            2014, 8, 1}, -3.0996230694936457`}, {{2014, 8, 
            4}, -3.049041712093951}, {{2014, 8, 5}, -3.0528880721680753`}, {{
            2014, 8, 6}, -3.136601795218274}, {{2014, 8, 
            7}, -3.140449108966715}, {{2014, 8, 8}, -3.2152888925027536`}, {{
            2014, 8, 11}, -3.093710296943879}, {{2014, 8, 
            12}, -3.1153064433949567`}, {{2014, 8, 
            13}, -3.030407686281581}, {{2014, 8, 
            14}, -2.9810075482477956`}, {{2014, 8, 
            15}, -2.949357196590963}, {{2014, 8, 
            18}, -3.0230128997381414`}, {{2014, 8, 
            19}, -2.849371886460217}, {{2014, 8, 
            20}, -2.7644750366954742`}, {{2014, 8, 
            21}, -3.2209123391524113`}, {{2014, 8, 
            22}, -3.446614816475071}, {{2014, 8, 25}, -3.467028789885921}, {{
            2014, 8, 26}, -3.373257046932702}, {{2014, 8, 
            27}, -3.031002599816885}, {{2014, 8, 28}, -2.83073976799648}, {{
            2014, 8, 29}, -2.7458410108831046`}, {{2014, 9, 
            2}, -1.6785552857132942`}, {{2014, 9, 
            3}, -1.6114063149768718`}, {{2014, 9, 4}, -1.65962427997043}, {{
            2014, 9, 5}, -1.769961728911742}, {{2014, 9, 
            8}, -1.6483840870271838`}, {{2014, 9, 9}, -1.936209862994863}, {{
            2014, 9, 10}, -2.0997919026954524`}, {{2014, 9, 
            11}, -2.0503908109873503`}, {{2014, 9, 
            12}, -1.5661495169477053`}, {{2014, 9, 
            15}, -1.6398061737692018`}, {{2014, 9, 
            16}, -1.546035384490299}, {{2014, 9, 
            17}, -1.3635194780238962`}, {{2014, 9, 
            18}, -1.456109047936888}, {{2014, 9, 
            19}, -1.3268396395783952`}, {{2014, 9, 
            22}, -1.4004972500742063`}, {{2014, 9, 
            23}, -1.643949513773821}, {{2014, 9, 
            24}, -1.5306675016555626`}, {{2014, 9, 
            25}, -1.6152214117785153`}, {{2014, 9, 
            26}, -1.6460262374288117`}, {{2014, 9, 
            29}, -1.9265634637083142`}, {{2014, 9, 
            30}, -2.1365341295075364`}, {{2014, 10, 
            1}, -2.176294910663204}, {{2014, 10, 2}, -2.2608488207861583`}, {{
            2014, 10, 3}, -2.291654600110771}, {{2014, 10, 
            6}, -2.1869846501817776`}, {{2014, 10, 
            7}, -2.4596641706562927`}, {{2014, 10, 
            8}, -2.4815092261039524`}, {{2014, 10, 9}, -2.467523783809913}, {{
            2014, 10, 10}, -2.229580326073979}, {{2014, 10, 
            13}, -2.0801191545263347`}, {{2014, 10, 
            14}, -1.7884275659920608`}, {{2014, 10, 
            15}, -2.052146362589623}, {{2014, 10, 
            16}, -2.1098266841505637`}, {{2014, 10, 
            17}, -2.131670785923907}, {{2014, 10, 
            20}, -1.8747143064538996`}, {{2014, 10, 
            21}, -1.7890611929562468`}, {{2014, 10, 
            22}, -1.5869501403106447`}, {{2014, 10, 
            23}, -1.6177549659609411`}, {{2014, 10, 
            24}, -1.720225555466218}, {{2014, 10, 
            27}, -1.7230566355054862`}, {{2014, 10, 
            28}, -1.7090683321884992`}, {{2014, 10, 
            29}, -1.7219583858051042`}, {{2014, 10, 
            30}, -1.6452621814871389`}, {{2014, 10, 
            31}, -1.4700275784264978`}, {{2014, 11, 
            3}, -1.3384840399354925`}, {{2014, 11, 
            4}, -1.1005424895481912`}, {{2014, 11, 
            5}, -1.0865551399055189`}, {{2014, 11, 
            6}, -1.2248581345011296`}, {{2014, 11, 
            7}, -1.1929550591504494`}, {{2014, 11, 
            10}, -1.0524536578054402`}, {{2014, 11, 
            11}, -1.0474251246910882`}, {{2014, 11, 
            12}, -0.8094807132808377}, {{2014, 11, 
            13}, -0.7417433254911927}, {{2014, 11, 
            14}, -0.7367147923768407}, {{2014, 11, 
            17}, -0.7843380477090793}, {{2014, 11, 
            18}, -1.1913902793652351`}, {{2014, 11, 
            19}, -0.13824410861660574`}, {{2014, 11, 
            20}, -0.18696752099785918`}, {{2014, 11, 
            21}, -0.1371449052419056}, {{2014, 11, 24}, 
            0.05710462690144169}, {{2014, 11, 25}, 0.0442164806334695}, {{
            2014, 11, 26}, -0.14783655210911206`}, {{2014, 11, 
            28}, -0.0034058210244509723`}, {{2014, 12, 
            1}, -0.2033184669206527}, {{2014, 12, 
            2}, -0.08183104098403682}, {{2014, 12, 3}, 
            0.39798329687885037`}, {{2014, 12, 4}, 0.2865548445195696}, {{
            2014, 12, 5}, 0.20200188807093333`}, {{2014, 12, 8}, 
            0.16333649559270036`}, {{2014, 12, 9}, 0.5535702975669157}, {{
            2014, 12, 10}, 0.8542226099781427}, {{2014, 12, 11}, 
            1.9252835527604617`}, {{2014, 12, 12}, 2.3065585382063567`}, {{
            2014, 12, 15}, 2.438100169348729}, {{2014, 12, 16}, 
            2.899999735177925}, {{2014, 12, 17}, 2.976693078472941}, {{2014, 
            12, 18}, 3.2594306188504767`}, {{2014, 12, 19}, 
            3.362996597033188}, {{2014, 12, 22}, 3.4855822726701877`}, {{2014,
             12, 23}, 3.583908764158563}, {{2014, 12, 24}, 
            3.543834224152798}, {{2014, 12, 26}, 3.7793913971930255`}, {{2014,
             12, 29}, 3.7854590522001423`}, {{2014, 12, 30}, 
            3.7724478819453537`}, {{2014, 12, 31}, 3.939837560079237}, {{2015,
             1, 2}, 3.7424342228655583`}, {{2015, 1, 5}, 
            3.3967133570596886`}, {{2015, 1, 6}, 3.3205622713385896`}, {{2015,
             1, 7}, 3.496971801157043}, {{2015, 1, 8}, 3.664365293988192}, {{
            2015, 1, 9}, 3.236426641128423}, {{2015, 1, 12}, 
            3.0891501417776315`}, {{2015, 1, 13}, 3.1933989507708898`}, {{
            2015, 1, 14}, 3.19842748388524}, {{2015, 1, 15}, 
            3.113257500153889}, {{2015, 1, 16}, 3.208484550113944}, {{2015, 1,
             20}, 3.210559932876528}, {{2015, 1, 21}, 2.6112383759640245`}, {{
            2015, 1, 22}, 2.8327509789025953`}, {{2015, 1, 23}, 
            2.873862733452494}, {{2015, 1, 26}, 2.7807053442091227`}, {{2015, 
            1, 27}, 2.8398529874308966`}, {{2015, 1, 28}, 
            3.0794043400642916`}, {{2015, 1, 29}, 3.0032513469945616`}, {{
            2015, 1, 30}, 3.0533819995547145`}, {{2015, 2, 2}, 
            3.185728531820132}, {{2015, 2, 3}, 5.075958519097082}, {{2015, 2, 
            4}, 3.556590155849129}, {{2015, 2, 5}, 3.083553198240825}, {{2015,
             2, 6}, 3.043479611909376}, {{2015, 2, 9}, 
            3.0495472669164947`}, {{2015, 2, 10}, 3.0726135960513528`}, {{
            2015, 2, 11}, 3.1768652660675603`}, {{2015, 2, 12}, 
            3.199933502551053}, {{2015, 2, 13}, 3.1328032221888424`}, {{2015, 
            2, 17}, 2.9905514412551373`}, {{2015, 2, 18}, 
            3.185003535465679}, {{2015, 2, 19}, 3.045707765906691}, {{2015, 2,
             20}, 2.888378015024461}, {{2015, 2, 23}, 2.849343550585779}, {{
            2015, 2, 24}, 2.93555170253558}, {{2015, 2, 25}, 
            2.9315613376396783`}, {{2015, 2, 26}, 2.756188068691042}, {{2015, 
            2, 27}, 2.85141702599973}, {{2015, 3, 2}, 3.092005593177257}, {{
            2015, 3, 3}, 3.0699755249122145`}, {{2015, 3, 4}, 
            3.0389208365910196`}, {{2015, 3, 5}, 2.737262968338184}, {{2015, 
            3, 6}, 2.4807100805540987`}, {{2015, 3, 9}, 2.387556506007993}, {{
            2015, 3, 10}, 2.2933619022204894`}, {{2015, 3, 11}, 
            2.379571007844607}, {{2015, 3, 12}, 2.4116629107099357`}, {{2015, 
            3, 13}, 2.35354866733503}, {{2015, 3, 16}, 2.422756237808457}, {{
            2015, 3, 17}, 2.508965343432573}, {{2015, 3, 18}, 
            2.5410524779263195`}, {{2015, 3, 19}, 2.5370621130304176`}, {{
            2015, 3, 20}, 2.5601313031882267`}, {{2015, 3, 23}, 
            3.089363707340853}, {{2015, 3, 24}, 3.193611562659795}, {{2015, 3,
             25}, 3.1995451327004147`}, {{2015, 3, 26}, 
            2.7685118066839074`}, {{2015, 3, 27}, 2.5645941117709157`}, {{
            2015, 3, 30}, 3.042993767510456}, {{2015, 3, 31}, 
            3.1206989592551793`}, {{2015, 4, 1}, 2.8986118612660157`}, {{2015,
             4, 2}, 2.767372732332028}, {{2015, 4, 6}, 2.651216341718145}, {{
            2015, 4, 7}, 2.57448351466404}, {{2015, 4, 8}, 
            2.634021210681224}, {{2015, 4, 9}, 2.8298256150724317`}, {{2015, 
            4, 10}, 3.1891556008235025`}, {{2015, 4, 13}, 
            3.049801274019096}, {{2015, 4, 14}, 2.6823599050948737`}, {{2015, 
            4, 15}, 3.005352038367917}, {{2015, 4, 16}, 2.919534509775726}, {{
            2015, 4, 17}, 2.7973781750311915`}, {{2015, 4, 20}, 
            2.703449263265849}, {{2015, 4, 21}, 2.690307439629711}, {{2015, 4,
             22}, 2.60448991103752}, {{2015, 4, 23}, 2.7185348626089034`}, {{
            2015, 4, 24}, 2.7599002945269664`}, {{2015, 4, 27}, 
            2.7840725027567412`}, {{2015, 4, 28}, 2.652825744428222}, {{2015, 
            4, 29}, 2.5851804799351505`}, {{2015, 4, 30}, 
            2.9263410626100494`}, {{2015, 5, 1}, 3.176654629904089}, {{2015, 
            5, 4}, 3.237161829588942}, {{2015, 5, 5}, 3.2058525102252666`}, {{
            2015, 5, 6}, 3.165457535649189}, {{2015, 5, 7}, 
            3.1341472626111972`}, {{2015, 5, 8}, 3.1845983497416626`}, {{2015,
             5, 11}, 3.2087676969484864`}, {{2015, 5, 12}, 
            3.1320377309173306`}, {{2015, 5, 13}, 3.373266596673284}, {{2015, 
            5, 14}, 3.3237869205591206`}, {{2015, 5, 15}, 3.0199384624015}, {{
            2015, 5, 18}, 3.080447569434984}, {{2015, 5, 19}, 
            3.1127292534892774`}, {{2015, 5, 20}, 2.9360637558419107`}, {{
            2015, 5, 21}, 3.0319402580114385`}, {{2015, 5, 22}, 
            3.0097137328372163`}, {{2015, 5, 26}, 2.9389837109367125`}, {{
            2015, 5, 27}, 2.9530940845662013`}, {{2015, 5, 28}, 
            3.1489003963060416`}, {{2015, 5, 29}, 3.3083669482192217`}, {{
            2015, 6, 1}, 3.196267679703391}, {{2015, 6, 2}, 
            3.2558044220462588`}, {{2015, 6, 3}, 3.24266545943307}, {{2015, 6,
             4}, 3.3930463561338478`}, {{2015, 6, 5}, 3.352653288906403}, {{
            2015, 6, 8}, 3.2132999157763145`}, {{2015, 6, 9}, 
            3.2637500492324634`}, {{2015, 6, 10}, 3.2687785823468154`}, {{
            2015, 6, 11}, 3.3555684756296245`}, {{2015, 6, 12}, 
            3.1879895868689765`}, {{2015, 6, 15}, 3.0486362137388863`}, {{
            2015, 6, 16}, 2.9809899955715}, {{2015, 6, 17}, 
            3.1404555938103638`}, {{2015, 6, 18}, 3.22724357974454}, {{2015, 
            6, 19}, 3.3322066908007866`}, {{2015, 6, 22}, 
            3.229189262800091}, {{2015, 6, 23}, 3.4068271251380757`}, {{2015, 
            6, 24}, 3.128380736072252}, {{2015, 6, 25}, 2.895494230124104}, {{
            2015, 6, 26}, 2.992028767571952}, {{2015, 6, 29}, 
            2.9064569038412778`}, {{2015, 6, 30}, 2.4722535643970343`}, {{
            2015, 7, 1}, 2.6053910757828707`}, {{2015, 7, 2}, 
            2.656171180552496}, {{2015, 7, 6}, 2.6030812724825605`}, {{2015, 
            7, 7}, 2.7087663149963266`}, {{2015, 7, 8}, 
            2.6497422663235675`}, {{2015, 7, 9}, 2.6090154130853804`}, {{2015,
             7, 10}, 2.5408399056723887`}, {{2015, 7, 13}, 
            2.693184988352847}, {{2015, 7, 14}, 2.6616115012035273`}, {{2015, 
            7, 15}, 2.712392559647469}, {{2015, 7, 16}, 2.598462619556255}, {{
            2015, 7, 17}, 2.438779200461134}, {{2015, 7, 20}, 
            2.1610438693232314`}, {{2015, 7, 21}, 2.001358542879478}, {{2015, 
            7, 22}, 2.0704415651295722`}, {{2015, 7, 23}, 
            2.0297175729143344`}, {{2015, 7, 24}, 1.650416310191284}, {{2015, 
            7, 27}, 1.464186029712561}, {{2015, 7, 28}, 
            1.4234620374973233`}, {{2015, 7, 29}, 1.2729281697938042`}, {{
            2015, 7, 30}, 1.7537925030790547`}, {{2015, 7, 31}, 
            1.9418349522090317`}, {{2015, 8, 3}, 1.9386185877459354`}, {{2015,
             8, 4}, 1.6416756853134125`}, {{2015, 8, 5}, 
            1.9578280663891885`}, {{2015, 8, 6}, 1.7706912247476811`}, {{2015,
             8, 7}, 1.4828978737067597`}, {{2015, 8, 10}, 
            1.6535449201933705`}, {{2015, 8, 11}, 1.6768754171138731`}, {{
            2015, 8, 12}, 1.4988900342126001`}, {{2015, 8, 13}, 
            1.6045750767263662`}, {{2015, 8, 14}, 1.6187550685809526`}, {{
            2015, 8, 17}, 1.5789366838541845`}, {{2015, 8, 18}, 
            1.7120751489143373`}, {{2015, 8, 19}, 1.6347462754124784`}, {{
            2015, 8, 20}, 1.5940222831972406`}, {{2015, 8, 21}, 
            1.626503285183663}, {{2015, 8, 24}, 1.0650937139334555`}, {{2015, 
            8, 25}, 1.2714390805439013`}, {{2015, 8, 26}, 
            1.1849606556504408`}, {{2015, 8, 27}, 1.2265921627027812`}, {{
            2015, 8, 28}, 1.2865246798869574`}, {{2015, 8, 31}, 
            1.7408431054629219`}, {{2015, 9, 1}, 1.5994606964996372`}, {{2015,
             9, 2}, 1.5770377144162353`}, {{2015, 9, 3}, 
            1.6827227569300014`}, {{2015, 9, 4}, 1.27597188635783}, {{2015, 9,
             8}, 1.6987149174358436`}, {{2015, 9, 9}, 1.8501543926278305`}, {{
            2015, 9, 10}, 1.5532105365209912`}, {{2015, 9, 11}, 
            1.4484311014956948`}, {{2015, 9, 14}, 1.3903097992884579`}, {{
            2015, 9, 15}, 1.614954268682105}, {{2015, 9, 16}, 
            1.501025282265207}, {{2015, 9, 17}, 1.6433142523912778`}, {{2015, 
            9, 18}, 1.3921238752883447`}, {{2015, 9, 21}, 
            1.443812448569389}, {{2015, 9, 22}, 0.8814982235050302}, {{2015, 
            9, 23}, 0.6046816638459447}, {{2015, 9, 24}, 
            0.7020849985960389}, {{2015, 9, 25}, 0.503885534884219}, {{2015, 
            9, 28}, 0.2972685585436796}, {{2015, 9, 29}, 
            0.1267828704666254}, {{2015, 9, 30}, -0.16379330222956945`}, {{
            2015, 10, 1}, -0.16800110486961195`}, {{2015, 10, 2}, 
            0.021778938864857267`}, {{2015, 10, 5}, 0.2770416927489272}, {{
            2015, 10, 6}, 0.346734112887205}, {{2015, 10, 7}, 
            0.6196545298516547}, {{2015, 10, 8}, 0.5877319979025302}, {{2015, 
            10, 9}, 0.5003847757068236}, {{2015, 10, 12}, 
            0.3769053115733172}, {{2015, 10, 13}, 0.22489420235368485`}, {{
            2015, 10, 14}, 0.525527441278582}, {{2015, 10, 15}, 
            0.7245466817903949}, {{2015, 10, 16}, 0.5540600400390243}, {{2015,
             10, 19}, 0.513719995461182}, {{2015, 10, 20}, 
            0.6203625269886182}, {{2015, 10, 21}, 0.5607271730790444}, {{2015,
             10, 22}, 0.6858452371382207}, {{2015, 10, 23}, 
            0.7001110596812836}, {{2015, 10, 26}, 1.0847006339388905`}, {{
            2015, 10, 27}, 1.0158298979492386`}, {{2015, 10, 28}, 
            0.9284817220792156}, {{2015, 10, 29}, 0.9612230771540169}, {{2015,
             10, 30}, 1.01243901108624}, {{2015, 11, 2}, 
            1.1291395625166967`}, {{2015, 11, 3}, 1.4205345583385682`}, {{
            2015, 11, 4}, 1.3331873361428617`}, {{2015, 11, 5}, 
            1.2827902253363153`}, {{2015, 11, 6}, 1.2139175819980306`}, {{
            2015, 11, 9}, 1.164339294317159}, {{2015, 11, 10}, 
            1.0400419607322924`}, {{2015, 11, 11}, 1.146683538585414}, {{2015,
             11, 12}, 0.9484831211992777}, {{2015, 11, 13}, 
            1.1013149608932196`}, {{2015, 11, 16}, 0.7838447893622522}, {{
            2015, 11, 17}, 0.7888733224766025}, {{2015, 11, 18}, 
            0.6460995026856811}, {{2015, 11, 19}, 0.35552619101243543`}, {{
            2015, 11, 20}, 0.42521670380208043`}, {{2015, 11, 23}, 
            0.5419163015582225}, {{2015, 11, 24}, 0.4545681256881977}, {{2015,
             11, 25}, 0.53349688158087}, {{2015, 11, 27}, 
            0.5805059665473671}, {{2015, 11, 30}, 0.47550203494559895`}, {{
            2015, 12, 1}, 0.415868588384658}, {{2015, 12, 2}, 
            0.4578462792138538}, {{2015, 12, 3}, 0.9155182067984207}, {{2015, 
            12, 4}, 0.5787536796100383}, {{2015, 12, 7}, 
            0.5291782529521161}, {{2015, 12, 8}, -1.1193300105033561`}, {{
            2015, 12, 9}, -1.3452422961756252`}, {{2015, 12, 
            10}, -1.534204470458734}, {{2015, 12, 
            11}, -1.8709689976471164`}, {{2015, 12, 
            14}, -2.0036838438607028`}, {{2015, 12, 
            15}, -1.721528044816175}, {{2015, 12, 
            16}, -1.8735382003614909`}, {{2015, 12, 
            17}, -1.9793619087632521`}, {{2015, 12, 
            18}, -1.992807954506322}, {{2015, 12, 
            21}, -1.8450576746823089`}, {{2015, 12, 
            22}, -1.9055284472930563`}, {{2015, 12, 
            23}, -1.7414327602480402`}, {{2015, 12, 
            24}, -1.755118178244528}, {{2015, 12, 
            28}, -1.3607307456162214`}, {{2015, 12, 
            29}, -1.67383365934025}, {{2015, 12, 
            30}, -1.6781635322927926`}, {{2015, 12, 
            31}, -1.813486294649632}, {{2016, 1, 4}, -1.8214426120213254`}, {{
            2016, 1, 5}, -1.629279336170157}, {{2016, 1, 
            6}, -1.5587505436563909`}, {{2016, 1, 
            7}, -1.4975811108838357`}, {{2016, 1, 
            8}, -1.4738405340072767`}, {{2016, 1, 11}, -1.580392279024574}, {{
            2016, 1, 12}, -1.6034341957393234`}, {{2016, 1, 
            13}, -1.7294014130522175`}, {{2016, 1, 
            14}, -1.8647251290833733`}, {{2016, 1, 
            15}, -2.149758546652617}, {{2016, 1, 
            19}, -2.0641479694930602`}, {{2016, 1, 
            20}, -2.3585369321062473`}, {{2016, 1, 
            21}, -2.1008733968556648`}, {{2016, 1, 
            22}, -2.039704917757426}, {{2016, 1, 25}, -2.183684564996401}, {{
            2016, 1, 26}, -2.253510882651094}, {{2016, 1, 
            27}, -2.1362005502203356`}, {{2016, 1, 
            28}, -2.2060268678750266`}, {{2016, 1, 
            29}, -2.219711332197198}, {{2016, 2, 1}, -2.2794815372975012`}, {{
            2016, 2, 2}, -2.3680208523887174`}, {{2016, 2, 
            3}, -2.4565592138056154`}, {{2016, 2, 
            4}, -2.1988975859036657`}, {{2016, 2, 
            5}, -2.1190142020202707`}, {{2016, 2, 
            8}, -2.2349243531044607`}, {{2016, 2, 
            9}, -2.5106012719554407`}, {{2016, 2, 
            10}, -2.3839334871321043`}, {{2016, 2, 
            11}, -2.4350458536759554`}, {{2016, 2, 
            12}, -2.6732943934680975`}, {{2016, 2, 
            16}, -2.222766538018748}, {{2016, 2, 
            17}, -1.7686108076387708`}, {{2016, 2, 
            18}, -1.5764456244389695`}, {{2016, 2, 
            19}, -1.5339891891029396`}, {{2016, 2, 
            22}, -1.4159792428360554`}, {{2016, 2, 
            23}, -1.5232315553637932`}, {{2016, 2, 
            24}, -1.7708380243856716`}, {{2016, 2, 
            25}, -1.6254572421258118`}, {{2016, 2, 
            26}, -1.526859907131577}, {{2016, 2, 
            29}, -1.4743464055668412`}, {{2016, 3, 1}, -1.328965623306983}, {{
            2016, 3, 2}, -1.2771526892526897`}, {{2016, 3, 
            3}, -1.1691998092145095`}, {{2016, 3, 
            4}, -1.1922426796035754`}, {{2016, 3, 
            7}, -1.2426535249626678`}, {{2016, 3, 
            8}, -1.2095554956935324`}, {{2016, 3, 
            9}, -1.2980948107847468`}, {{2016, 3, 
            10}, -1.3772776271576994`}, {{2016, 3, 
            11}, -1.2786802921634646`}, {{2016, 3, 
            14}, -1.2355261503399397`}, {{2016, 3, 
            15}, -1.239853162269533}, {{2016, 3, 
            16}, -1.2254690841112357`}, {{2016, 3, 
            17}, -0.8929497444172938}, {{2016, 3, 18}, -0.953419563353723}, {{
            2016, 3, 21}, -0.8728356119598875}, {{2016, 3, 
            22}, -0.502628016955887}, {{2016, 3, 23}, -0.4597023738561834}, {{
            2016, 3, 24}, 0.1421984889700827}, {{2016, 3, 28}, 
            0.15283786709399294`}, {{2016, 3, 29}, 0.34734813543783716`}, {{
            2016, 3, 30}, 0.39974853287103684`}, {{2016, 3, 31}, 
            0.24371577905911934`}, {{2016, 4, 1}, 0.3340113791290378}, {{2016,
             4, 4}, 0.4059416897758048}, {{2016, 4, 5}, 
            0.4678168415424988}, {{2016, 4, 6}, 0.3402064433824368}, {{2016, 
            4, 7}, 0.3547087771559685}, {{2016, 4, 8}, 
            0.25552168832207833`}, {{2016, 4, 11}, 0.4695656845767555}, {{
            2016, 4, 12}, 0.40827379837958233`}, {{2016, 4, 13}, 
            0.4796227508054578}, {{2016, 4, 14}, 0.4278046652674661}, {{2016, 
            4, 15}, 0.3665146864189275}, {{2016, 4, 18}, 
            0.40054884075465935`}, {{2016, 4, 19}, 0.5666367534466481}, {{
            2016, 4, 20}, 0.2400717730722306}, {{2016, 4, 21}, 
            0.264047907504942}, {{2016, 4, 22}, -0.05304422588461222}, {{2016,
             4, 25}, -0.2369160697788626}, {{2016, 4, 26}, 
            0.004966062883829281}, {{2016, 4, 27}, -0.037377268320666346`}, {{
            2016, 4, 28}, -0.0418215821911776}, {{2016, 4, 
            29}, -0.30206995795133906`}, {{2016, 5, 
            2}, -0.2680348499412908}, {{2016, 5, 3}, -0.3387995831233255}, {{
            2016, 5, 4}, -0.2769272923795789}, {{2016, 5, 
            5}, -0.2718987592652269}, {{2016, 5, 
            6}, -0.36161109376562095`}, {{2016, 5, 9}, 0.1556040603259703}, {{
            2016, 5, 10}, -0.22780658502647633`}, {{2016, 5, 
            11}, -1.7386433778398587`}, {{2016, 5, 
            12}, -1.9894169992665223`}, {{2016, 5, 
            13}, -2.0980769350852757`}, {{2016, 5, 
            16}, -2.120887968890413}, {{2016, 5, 
            17}, -2.1158594357760627`}, {{2016, 5, 
            18}, -2.0255643125433025`}, {{2016, 5, 
            19}, -2.2005451445107376`}, {{2016, 5, 20}, -2.29025795584829}, {{
            2016, 5, 23}, -2.0572668351124115`}, {{2016, 5, 
            24}, -1.9290746018942997`}, {{2016, 5, 
            25}, -1.9050975137872719`}, {{2016, 5, 
            26}, -1.8053271593838573`}, {{2016, 5, 
            27}, -1.7339801143066147`}, {{2016, 5, 
            31}, -1.5907018049082904`}, {{2016, 6, 1}, -1.651991783756829}, {{
            2016, 6, 2}, -1.5995923399979457`}, {{2016, 6, 
            3}, -1.5471938499133806`}, {{2016, 6, 6}, -1.437366429281262}, {{
            2016, 6, 7}, -1.4512864511595858`}, {{2016, 6, 
            8}, -1.4557317187044134`}, {{2016, 6, 
            9}, -1.5170226512272684`}, {{2016, 6, 
            10}, -1.6256835407203383`}, {{2016, 6, 
            13}, -1.6200717420364619`}, {{2016, 6, 
            14}, -1.7192588308703538`}, {{2016, 6, 
            15}, -1.553170918178365}, {{2016, 6, 
            16}, -1.6334094520195794`}, {{2016, 6, 
            17}, -1.476794386312454}, {{2016, 6, 
            20}, -1.3195970087101205`}, {{2016, 6, 
            21}, -1.3335151232398132`}, {{2016, 6, 
            22}, -1.3839007899545628`}, {{2016, 6, 
            23}, -1.2828305774578865`}, {{2016, 6, 
            24}, -1.4410739483352337`}, {{2016, 6, 
            27}, -1.5700522985771386`}, {{2016, 6, 
            28}, -1.718690261739642}, {{2016, 6, 
            29}, -1.5503907783079072`}, {{2016, 6, 
            30}, -1.5645711532746098`}, {{2016, 7, 
            1}, -1.3002271294376015`}, {{2016, 7, 5}, -1.289718404695039}, {{
            2016, 7, 6}, -1.4191493671251205`}, {{2016, 7, 
            7}, -1.3564941097676044`}, {{2016, 7, 
            8}, -1.2746328053519846`}, {{2016, 7, 
            11}, -1.0674619398956473`}, {{2016, 7, 
            12}, -0.9087669105044398}, {{2016, 7, 
            13}, -0.9805711486913573}, {{2016, 7, 14}, -0.86029107443931}, {{
            2016, 7, 15}, -0.9609096284221259}, {{2016, 7, 
            18}, -0.9842408915668628}, {{2016, 7, 
            19}, -1.0176292209403055`}, {{2016, 7, 
            20}, -0.9357669628503675}, {{2016, 7, 
            21}, -0.9019260212887499}, {{2016, 7, 
            22}, -1.0025436215972494`}, {{2016, 7, 
            25}, -0.9490411597664004}, {{2016, 7, 
            26}, -0.7903451767008782}, {{2016, 7, 
            27}, -0.7565042351392606}, {{2016, 7, 
            28}, -0.8091005189194398}, {{2016, 7, 
            29}, -0.7464471689105565}, {{2016, 8, 1}, -0.6737357989986528}, {{
            2016, 8, 2}, -0.7263330364531484}, {{2016, 8, 
            3}, -1.0286403569154565`}, {{2016, 8, 4}, -0.8699434201756162}, {{
            2016, 8, 5}, -0.7976856161262056}, {{2016, 8, 
            8}, -0.7249742462143036}, {{2016, 8, 9}, -0.8063838921160649}, {{
            2016, 8, 10}, -0.8013553590017128}, {{2016, 8, 
            11}, -0.6618673303429272}, {{2016, 8, 
            12}, -0.6664422975947879}, {{2016, 8, 
            15}, -0.6321487438449935}, {{2016, 8, 
            16}, -0.6175167103644306}, {{2016, 8, 
            17}, -0.7469467191201957}, {{2016, 8, 
            18}, -1.2701517141430507`}, {{2016, 8, 
            19}, -1.4668109938338745`}, {{2016, 8, 
            22}, -1.4517253944908184`}, {{2016, 8, 
            23}, -1.206591232409183}, {{2016, 8, 
            24}, -1.2303751077420966`}, {{2016, 8, 
            25}, -1.2925767992371195`}, {{2016, 8, 
            26}, -1.2491314036349745`}, {{2016, 8, 
            29}, -1.2052324421703382`}, {{2016, 8, 
            30}, -1.1713915006087205`}, {{2016, 8, 
            31}, -1.1759674215348959`}, {{2016, 9, 
            1}, -1.2285646589893915`}, {{2016, 9, 
            2}, -1.2139316718345121`}, {{2016, 9, 
            6}, -1.2514423562716352`}, {{2016, 9, 
            7}, -1.0543304643926348`}, {{2016, 9, 8}, -1.010883161441857}, {{
            2016, 9, 9}, -1.092294714692251}, {{2016, 9, 
            12}, -1.0483947995532983`}, {{2016, 9, 
            13}, -1.1490133535361142`}, {{2016, 9, 
            14}, -1.1631937285028169`}, {{2016, 9, 
            15}, -1.100539424819619}, {{2016, 9, 
            16}, -1.1435322082335873`}, {{2016, 9, 
            19}, -1.0804252923622109`}, {{2016, 9, 
            20}, -1.1522314378977612`}, {{2016, 9, 
            21}, -1.1644768076764755`}, {{2016, 9, 
            22}, -1.0620228137466938`}, {{2016, 9, 
            23}, -1.0082825038989434`}, {{2016, 9, 
            26}, -1.1003631948390904`}, {{2016, 9, 
            27}, -1.2122446424986641`}, {{2016, 9, 
            28}, -1.1682461157930053`}, {{2016, 9, 
            29}, -1.1047621154545322`}, {{2016, 9, 
            30}, -1.0510218056067817`}, {{2016, 10, 
            3}, -0.9579971727554266}, {{2016, 10, 
            4}, -1.0991058771899027`}, {{2016, 10, 
            5}, -1.2694399310506483`}, {{2016, 10, 
            6}, -1.2936386547111987`}, {{2016, 10, 
            7}, -1.4444891422877646`}, {{2016, 10, 
            10}, -1.3904340261905581`}, {{2016, 10, 
            11}, -1.4536022666052588`}, {{2016, 10, 
            12}, -1.6239372741403209`}, {{2016, 10, 
            13}, -1.716332771329924}, {{2016, 10, 
            14}, -1.7697587517653766`}, {{2016, 10, 
            17}, -1.8520976595634355`}, {{2016, 10, 
            18}, -1.9250086367945425`}, {{2016, 10, 
            19}, -1.8615251132932276`}, {{2016, 10, 
            20}, -1.8077843266083207`}, {{2016, 10, 
            21}, -1.8709530438601796`}, {{2016, 10, 
            24}, -1.8266401877422211`}, {{2016, 10, 
            25}, -1.8605811713820195`}, {{2016, 10, 
            26}, -1.8458103782884194`}, {{2016, 10, 
            27}, -1.9089786187031201`}, {{2016, 10, 
            28}, -1.962405075975731}, {{2016, 10, 
            31}, -2.0155157733245694`}, {{2016, 11, 
            1}, -1.874093693152112}, {{2016, 11, 2}, -1.9372624104039726`}, {{
            2016, 11, 3}, -2.000430173981515}, {{2016, 11, 
            4}, -1.966174860929419}, {{2016, 11, 7}, -1.6880439506122435`}, {{
            2016, 11, 8}, -1.6830154174978915`}, {{2016, 11, 
            9}, -1.2688048126977485`}, {{2016, 11, 
            10}, -0.6597466241268535}, {{2016, 11, 
            11}, -0.7034298677458999}, {{2016, 11, 
            14}, -0.4058144374702266}, {{2016, 11, 
            15}, -0.4689831547220855}, {{2016, 11, 
            16}, -0.23987835055060458`}, {{2016, 11, 
            17}, -0.049744493644748644`}, {{2016, 11, 18}, 
            0.4034365815838612}, {{2016, 11, 21}, 0.4964612144352163}, {{2016,
             11, 22}, 0.6671115050568925}, {{2016, 11, 23}, 
            0.6136845709471235}, {{2016, 11, 25}, 0.6139998540337359}, {{2016,
             11, 28}, 0.5998581966018897}, {{2016, 11, 29}, 
            0.6438557696332339}, {{2016, 11, 30}, 0.5709452692392851}, {{2016,
             12, 1}, 0.49803381517101997`}, {{2016, 12, 2}, 
            0.5128050851017782}, {{2016, 12, 5}, 0.5863461516689554}, {{2016, 
            12, 6}, 0.6206009878838934}, {{2016, 12, 7}, 
            0.7425395017721694}, {{2016, 12, 8}, 0.815764331578416}, {{2016, 
            12, 9}, 0.7623383511429633}, {{2016, 12, 12}, 
            0.8261357272194161}, {{2016, 12, 13}, 0.7142552332341587}, {{2016,
             12, 14}, 0.7777392335726319}, {{2016, 12, 15}, 
            0.7827677666869839}, {{2016, 12, 16}, 0.7975380829434258}, {{2016,
             12, 19}, 0.8135735419056225}, {{2016, 12, 20}, 
            0.9467968839799354}, {{2016, 12, 21}, 0.774324692301807}, {{2016, 
            12, 22}, 0.6412974240245575}, {{2016, 12, 23}, 
            0.32090939219750325`}, {{2016, 12, 27}, 0.3410235246549096}, {{
            2016, 12, 28}, 0.3263300729059804}, {{2016, 12, 29}, 
            0.18344181219708844`}, {{2016, 12, 30}, 0.16874836044815922`}, {{
            2017, 1, 3}, 0.14941756950468843`}, {{2017, 1, 4}, 
            0.2530569806097631}, {{2017, 1, 5}, 0.14961364330175186`}, {{2017,
             1, 6}, 0.18422515371102577`}, {{2017, 1, 9}, 
            0.19931075305408186`}, {{2017, 1, 10}, 0.38184001096091436`}, {{
            2017, 1, 11}, 0.3375626282427451}, {{2017, 1, 12}, 
            0.32286917649381586`}, {{2017, 1, 13}, 0.39692561030396867`}, {{
            2017, 1, 17}, 0.4564837124879375}, {{2017, 1, 18}, 
            0.4417902607390083}, {{2017, 1, 19}, 0.34820791586263766`}, {{
            2017, 1, 20}, 0.24476362488031}, {{2017, 1, 23}, 
            0.2204043008224872}, {{2017, 1, 24}, 0.3634895890027572}, {{2017, 
            1, 25}, 0.5558779319925975}, {{2017, 1, 26}, 
            0.5411854339179847}, {{2017, 1, 27}, 0.43774209660997343`}, {{
            2017, 1, 30}, 0.334492925750391}, {{2017, 1, 31}, 
            0.32966142010741883`}, {{2017, 2, 1}, 0.3938559078116146}, {{2017,
             2, 2}, 0.24110665467108205`}, {{2017, 2, 3}, 
            0.27571816508035596`}, {{2017, 2, 6}, 0.22177681740192767`}, {{
            2017, 2, 7}, 0.15777744982047892`}, {{2017, 2, 8}, 
            0.21211189876735048`}, {{2017, 2, 9}, 0.35519527959898767`}, {{
            2017, 2, 10}, 0.34050182785005845`}, {{2017, 2, 13}, 
            0.4837822361530755}, {{2017, 2, 14}, 0.7353384410813923}, {{2017, 
            2, 15}, 0.6516170886366606}, {{2017, 2, 16}, 
            0.7158115763408563}, {{2017, 2, 17}, 0.5137573610421224}, {{2017, 
            2, 21}, 0.6028993941953296}, {{2017, 2, 22}, 
            0.8248716681544082}, {{2017, 2, 23}, 0.7805952391105571}, {{2017, 
            2, 24}, 0.5785410238118232}, {{2017, 2, 27}, 
            0.5837646770489222}, {{2017, 2, 28}, 0.5197662631417899}, {{2017, 
            3, 1}, 0.6036836893835833}, {{2017, 3, 2}, 0.5495453142337752}, {{
            2017, 3, 3}, 0.6334617868012522}, {{2017, 3, 6}, 
            0.2541038741814159}, {{2017, 3, 7}, 0.16052057563072886`}, {{2017,
             3, 8}, 0.352910825969202}, {{2017, 3, 9}, 0.4664112295059155}, {{
            2017, 3, 10}, 0.4122728543561074}, {{2017, 3, 13}, 
            0.08221990389447598}, {{2017, 3, 14}, 0.02808152874466785}, {{
            2017, 3, 15}, 0.14158288595569957`}, {{2017, 3, 16}, 
            0.21563931976585238`}, {{2017, 3, 17}, 0.34886170816584894`}, {{
            2017, 3, 20}, 0.3540863150772644}, {{2017, 3, 21}, 
            0.25064297776925315`}, {{2017, 3, 22}, 0.0491438009226659}, {{
            2017, 3, 23}, 0.17417221959609996`}, {{2017, 3, 24}, 
            0.049200638269534025`}, {{2017, 3, 27}, -0.005714410885946819}, {{
            2017, 3, 28}, 0.019314579992077086`}, {{2017, 3, 29}, 
            0.1343427697836752}, {{2017, 3, 30}, 0.2893718751026171}, {{2017, 
            3, 31}, 0.4343997978654066}, {{2017, 4, 3}, 
            0.37948570238424395`}, {{2017, 4, 4}, 1.5545143117925413`}, {{
            2017, 4, 5}, 1.6195432645235925`}, {{2017, 4, 6}, 
            1.7445716831970266`}, {{2017, 4, 7}, 1.4395997966946794`}, {{2017,
             4, 10}, 1.514685815654433}, {{2017, 4, 11}, 
            1.3297138147111678`}, {{2017, 4, 12}, 1.2447421952376274`}, {{
            2017, 4, 13}, 1.219770995380788}, {{2017, 4, 17}, 
            1.259885585601868}, {{2017, 4, 18}, 1.3049140805692474`}, {{2017, 
            4, 19}, 1.3799423085078182`}, {{2017, 4, 20}, 
            1.4749709942100608`}, {{2017, 4, 21}, 1.4399995654713855`}, {{
            2017, 4, 24}, 1.5850852792553596`}, {{2017, 4, 25}, 
            1.5801135834878757`}, {{2017, 4, 26}, 1.6151418495734173`}, {{
            2017, 4, 27}, 1.5601709167453865`}, {{2017, 4, 28}, 
            1.5351987632142308`}, {{2017, 5, 1}, 1.5002851254967382`}, {{2017,
             5, 2}, 1.945313238994391}, {{2017, 5, 3}, 
            1.5103421917254423`}, {{2017, 5, 4}, 1.3953698856063959`}, {{2017,
             5, 5}, 1.3903991435132284`}, {{2017, 5, 8}, 
            1.4554839799168313`}, {{2017, 5, 9}, 1.4405130089418279`}, {{2017,
             5, 10}, 1.4555417709380158`}, {{2017, 5, 11}, 
            1.4805698081417233`}, {{2017, 5, 12}, 1.1655986464318566`}, {{
            2017, 5, 15}, 1.170684016893075}, {{2017, 5, 16}, 
            1.065712893330181}, {{2017, 5, 17}, 0.8107411975626952}, {{2017, 
            5, 18}, 0.6857696162361293}, {{2017, 5, 19}, 
            0.650798187497454}, {{2017, 5, 22}, 0.5958840920162913}, {{2017, 
            5, 23}, 0.6409125869836707}, {{2017, 5, 24}, 
            0.6559413489798587}, {{2017, 5, 25}, 1.1609698820942107`}, {{2017,
             5, 26}, 0.9159984152085627}, {{2017, 5, 30}, 
            0.8661118991674357}, {{2017, 5, 31}, 0.9811410426333484}, {{2017, 
            6, 1}, 1.0961692324249466`}, {{2017, 6, 2}, 
            0.9911981088620525}, {{2017, 6, 5}, 1.0462836700581342`}, {{2017, 
            6, 6}, 1.0413119742906503`}, {{2017, 6, 7}, 
            1.4663405836989476`}, {{2017, 6, 8}, 1.1913693838421082`}, {{2017,
             6, 9}, 1.156397955103433}, {{2017, 6, 12}, 1.291483440005571}, {{
            2017, 6, 13}, 1.166511858679005}, {{2017, 6, 14}, 
            1.0715400103236306`}, {{2017, 6, 15}, 0.9565686578789006}, {{2017,
             6, 16}, 0.9115970002583893}, {{2017, 6, 19}, 
            0.8566829047772249}}, 
         "dClose" -> {{{2014, 6, 23}, -3.696622396597899}, {{2014, 6, 
            24}, -3.8320433874093283`}, {{2014, 6, 
            25}, -3.8447627333232965`}, {{2014, 6, 
            26}, -3.8486100470717375`}, {{2014, 6, 
            27}, -3.9944442077440065`}, {{2014, 6, 
            30}, -3.8994902917505616`}, {{2014, 7, 1}, -3.743598111175272}, {{
            2014, 7, 2}, -3.6941960657928536`}, {{2014, 7, 
            3}, -3.5116811130007672`}, {{2014, 7, 7}, -3.527066553297267}, {{
            2014, 7, 8}, -3.628528155375786}, {{2014, 7, 
            9}, -3.658996333992391}, {{2014, 7, 10}, -3.7693347366080197`}, {{
            2014, 7, 11}, -3.7909318367334137`}, {{2014, 7, 
            14}, -3.6427276079347912`}, {{2014, 7, 
            15}, -3.5400838328160464`}, {{2014, 7, 
            16}, -3.4995566806221046`}, {{2014, 7, 
            17}, -3.6542666881571666`}, {{2014, 7, 
            18}, -3.516123340284514}, {{2014, 7, 
            21}, -3.4744140150503444`}, {{2014, 7, 
            22}, -3.611376143557086}, {{2014, 7, 
            23}, -3.4909806747127536`}, {{2014, 7, 
            24}, -3.4682033088957667`}, {{2014, 7, 
            25}, -3.6406621491334654`}, {{2014, 7, 
            28}, -3.6699472010355265`}, {{2014, 7, 
            29}, -3.5406797000256667`}, {{2014, 7, 
            30}, -3.3049172954513537`}, {{2014, 7, 
            31}, -3.0780307377398337`}, {{2014, 8, 
            1}, -3.2061170193837825`}, {{2014, 8, 
            4}, -3.0845374701505914`}, {{2014, 8, 5}, -3.159379161035263}, {{
            2014, 8, 6}, -3.1898482933261842`}, {{2014, 8, 
            7}, -3.4244275711859533`}, {{2014, 8, 
            8}, -3.2152888925027536`}, {{2014, 8, 11}, -3.182455414131379}, {{
            2014, 8, 12}, -3.1685519878285504`}, {{2014, 8, 
            13}, -3.0659043980125382`}, {{2014, 8, 
            14}, -3.0165042599787526`}, {{2014, 8, 
            15}, -3.0913449971891076`}, {{2014, 8, 
            18}, -3.040761732440778}, {{2014, 8, 19}, -2.955864882676037}, {{
            2014, 8, 20}, -3.2170678864269195`}, {{2014, 8, 
            21}, -3.5226396340742863`}, {{2014, 8, 
            22}, -3.535359933662571}, {{2014, 8, 25}, -3.484777622588558}, {{
            2014, 8, 26}, -3.4176267445035027`}, {{2014, 8, 
            27}, -3.031002599816885}, {{2014, 8, 
            28}, -2.8751132802645465`}, {{2014, 8, 
            29}, -2.8523330534246085`}, {{2014, 9, 2}, -1.989155566475013}, {{
            2014, 9, 3}, -1.7178983575183757`}, {{2014, 9, 
            4}, -1.8814832582419143`}, {{2014, 9, 5}, -1.769961728911742}, {{
            2014, 9, 8}, -1.9678611683260119`}, {{2014, 9, 
            9}, -2.1225702221867575`}, {{2014, 9, 10}, -2.108666795883929}, {{
            2014, 9, 11}, -2.0503908109873503`}, {{2014, 9, 
            12}, -1.654891773112256}, {{2014, 9, 
            15}, -1.6841777786886354`}, {{2014, 9, 
            16}, -1.5637832635186193`}, {{2014, 9, 
            17}, -1.5498817445644235`}, {{2014, 9, 
            18}, -1.5448532114500715`}, {{2014, 9, 
            19}, -1.530949785147243}, {{2014, 9, 
            22}, -1.7111003918588743`}, {{2014, 9, 
            23}, -1.723818784098528}, {{2014, 9, 
            24}, -1.6023342191848595`}, {{2014, 9, 
            25}, -1.803345114781445}, {{2014, 9, 26}, -1.896857841432718}, {{
            2014, 9, 29}, -2.1773969750608533`}, {{2014, 9, 
            30}, -2.217155848867888}, {{2014, 10, 
            1}, -2.4271255609927938`}, {{2014, 10, 2}, -2.36834985075442}, {{
            2014, 10, 3}, -2.327487005201103}, {{2014, 10, 
            6}, -2.455732933568008}, {{2014, 10, 7}, -2.7284105466938904`}, {{
            2014, 10, 8}, -2.4815092261039524`}, {{2014, 10, 
            9}, -2.4943992797205574`}, {{2014, 10, 
            10}, -2.3012460899289593`}, {{2014, 10, 
            13}, -2.1428280092016276`}, {{2014, 10, 
            14}, -2.0123836740853225`}, {{2014, 10, 
            15}, -2.105895447062279}, {{2014, 10, 16}, -2.235240578803884}, {{
            2014, 10, 17}, -2.2929218540391414`}, {{2014, 10, 
            20}, -1.9374203001062433`}, {{2014, 10, 
            21}, -1.7890611929562468`}, {{2014, 10, 
            22}, -1.8109072020782229`}, {{2014, 10, 
            23}, -1.72525408858057}, {{2014, 10, 
            24}, -1.7291824646459055`}, {{2014, 10, 
            27}, -1.7588899942701346`}, {{2014, 10, 
            28}, -1.8434429507187726`}, {{2014, 10, 
            29}, -1.8384144176044206`}, {{2014, 10, 
            30}, -1.6542209980154592`}, {{2014, 10, 
            31}, -1.5416933422814783`}, {{2014, 11, 
            3}, -1.374317398700141}, {{2014, 11, 4}, -1.3155378737644998`}, {{
            2014, 11, 5}, -1.2657209800544447`}, {{2014, 11, 
            6}, -1.3054808075357975`}, {{2014, 11, 
            7}, -1.2825384560620705`}, {{2014, 11, 
            10}, -1.0614124743337605`}, {{2014, 11, 
            11}, -1.1638830638390374`}, {{2014, 11, 
            12}, -0.8632317051021268}, {{2014, 11, 
            13}, -0.8313276760771302}, {{2014, 11, 
            14}, -0.7815098286927586}, {{2014, 11, 
            17}, -1.1964188124795871`}, {{2014, 11, 
            18}, -1.3795139823681648`}, {{2014, 11, 
            19}, -0.33532758182217215`}, {{2014, 11, 
            20}, -0.3392559578875076}, {{2014, 11, 
            21}, -0.20881353011983528`}, {{2014, 11, 
            24}, -0.02351995348185909}, {{2014, 11, 
            25}, -0.1528650852234641}, {{2014, 11, 
            26}, -0.3001278500217097}, {{2014, 11, 
            28}, -0.16465307444241972`}, {{2014, 12, 
            1}, -0.3018597266862777}, {{2014, 12, 
            2}, -0.09974962771499385}, {{2014, 12, 3}, 
            0.19194482184222927`}, {{2014, 12, 4}, 0.02676537766165943}, {{
            2014, 12, 5}, 0.15720780542933177`}, {{2014, 12, 8}, 
            0.10958741112004411`}, {{2014, 12, 9}, 0.24898960909035317`}, {{
            2014, 12, 10}, 0.5765136027149591}, {{2014, 12, 11}, 
            1.7282000795548953`}, {{2014, 12, 12}, 2.0646857507307708`}, {{
            2014, 12, 15}, 2.4291432601690417`}, {{2014, 12, 16}, 
            2.783542749704292}, {{2014, 12, 17}, 2.824407502606242}, {{2014, 
            12, 18}, 3.142973633376844}, {{2014, 12, 19}, 
            3.067379493456528}, {{2014, 12, 22}, 3.03767387118093}, {{2014, 
            12, 23}, 3.44860526684411}, {{2014, 12, 24}, 
            3.444613948273892}, {{2014, 12, 26}, 3.5989943635016193`}, {{2014,
             12, 29}, 3.6411376105497517`}, {{2014, 12, 30}, 
            3.66420966173051}, {{2014, 12, 31}, 3.7504187673546276`}, {{2015, 
            1, 2}, 3.3004481388811833`}, {{2015, 1, 5}, 
            3.1621924448892784`}, {{2015, 1, 6}, 3.0499581377326326`}, {{2015,
             1, 7}, 3.370690062875793}, {{2015, 1, 8}, 
            3.4478812241639734`}, {{2015, 1, 9}, 2.9838622108916066`}, {{2015,
             1, 12}, 3.016991328301069}, {{2015, 1, 13}, 
            2.787494180873429}, {{2015, 1, 14}, 3.108228967039537}, {{2015, 1,
             15}, 2.8155928578199045`}, {{2015, 1, 16}, 3.136324782963065}, {{
            2015, 1, 20}, 2.2905083581694967`}, {{2015, 1, 21}, 
            2.385738269152501}, {{2015, 1, 22}, 2.7696101097619703`}, {{2015, 
            1, 23}, 2.666396607964213}, {{2015, 1, 26}, 2.753643881806779}, {{
            2015, 1, 27}, 2.7947527753337287`}, {{2015, 1, 28}, 
            2.7366404393074557`}, {{2015, 1, 29}, 2.9761956066381163`}, {{
            2015, 1, 30}, 2.936121066632351}, {{2015, 2, 2}, 
            3.0323853311365383`}, {{2015, 2, 3}, 4.724176674004308}, {{2015, 
            2, 4}, 2.672617987880379}, {{2015, 2, 5}, 2.8941315444932663`}, {{
            2015, 2, 6}, 2.538354566133009}, {{2015, 2, 9}, 
            3.0495472669164947`}, {{2015, 2, 10}, 2.901234506695884}, {{2015, 
            2, 11}, 3.0686222774811345`}, {{2015, 2, 12}, 
            3.028551552172635}, {{2015, 2, 13}, 2.8351366725062253`}, {{2015, 
            2, 17}, 2.9905514412551373`}, {{2015, 2, 18}, 
            3.013623492435894}, {{2015, 2, 19}, 2.829229418128371}, {{2015, 2,
             20}, 2.8071955351660627`}, {{2015, 2, 23}, 2.63285948076156}, {{
            2015, 2, 24}, 2.854372083700131}, {{2015, 2, 25}, 
            2.6970347034233697`}, {{2015, 2, 26}, 2.4675423243673116`}, {{
            2015, 2, 27}, 2.8243555635973863`}, {{2015, 3, 2}, 
            3.0649469917978625`}, {{2015, 3, 3}, 2.8805510101417067`}, {{2015,
             3, 4}, 2.6871370841496134`}, {{2015, 3, 5}, 2.6109850447542}, {{
            2015, 3, 6}, 2.2101078542967745`}, {{2015, 3, 9}, 
            2.3334345348776218`}, {{2015, 3, 10}, 2.20316243170047}, {{2015, 
            3, 11}, 2.0999489299027125`}, {{2015, 3, 12}, 
            2.384599540958959}, {{2015, 3, 13}, 2.2092281793589557`}, {{2015, 
            3, 16}, 2.251374287430039}, {{2015, 3, 17}, 2.382683605151323}, {{
            2015, 3, 18}, 2.523012774557179}, {{2015, 3, 19}, 
            2.2754787847833473`}, {{2015, 3, 20}, 2.4609091199606876`}, {{
            2015, 3, 23}, 2.9811216724287437`}, {{2015, 3, 24}, 
            3.0673317317271778`}, {{2015, 3, 25}, 2.8634121294655515`}, {{
            2015, 3, 26}, 2.3869572031072472`}, {{2015, 3, 27}, 
            2.4737480500643727`}, {{2015, 3, 30}, 3.0248253181086007`}, {{
            2015, 3, 31}, 2.6573858565330113`}, {{2015, 4, 1}, 
            2.771426993407129}, {{2015, 4, 2}, 2.612935667207516}, {{2015, 4, 
            6}, 2.496778322919317}, {{2015, 4, 7}, 2.5199772127841573`}, {{
            2015, 4, 8}, 2.5704282999146226`}, {{2015, 4, 9}, 
            2.8025724641324903`}, {{2015, 4, 10}, 3.0983076317683267`}, {{
            2015, 4, 13}, 2.668249531465385}, {{2015, 4, 14}, 
            2.6551077078292487`}, {{2015, 4, 15}, 2.678306597694089}, {{2015, 
            4, 16}, 2.8741110020852965`}, {{2015, 4, 17}, 
            2.5066696331610743`}, {{2015, 4, 20}, 2.585348143270732}, {{2015, 
            4, 21}, 2.590376676385082}, {{2015, 4, 22}, 2.477304089504317}, {{
            2015, 4, 23}, 2.682194149107927}, {{2015, 4, 24}, 
            2.741729937776478}, {{2015, 4, 27}, 2.520616158152249}, {{2015, 4,
             28}, 2.543814094342773}, {{2015, 4, 29}, 2.5306732243809513`}, {{
            2015, 4, 30}, 2.8354930935548737`}, {{2015, 5, 1}, 
            3.013130002218542}, {{2015, 5, 4}, 3.21899242651277}, {{2015, 5, 
            5}, 3.0877513902301494`}, {{2015, 5, 6}, 2.8838356026657905`}, {{
            2015, 5, 7}, 2.997876739539908}, {{2015, 5, 8}, 
            3.0483297340190063`}, {{2015, 5, 11}, 3.1906002012209473`}, {{
            2015, 5, 12}, 3.032105060324069}, {{2015, 5, 13}, 
            3.1552337597592217`}, {{2015, 5, 14}, 2.942233270656777}, {{2015, 
            5, 15}, 2.9835996562491562`}, {{2015, 5, 18}, 
            3.0713590531996324`}, {{2015, 5, 19}, 3.0127965828960157`}, {{
            2015, 5, 20}, 2.781626690717399}, {{2015, 5, 21}, 
            2.895670688614466}, {{2015, 5, 22}, 2.8371072646365327`}, {{2015, 
            5, 26}, 2.8117978894035094`}, {{2015, 5, 27}, 
            2.880419333284463}, {{2015, 5, 28}, 3.1307329005785025`}, {{2015, 
            5, 29}, 3.11759012326805}, {{2015, 6, 1}, 3.069084719193137}, {{
            2015, 6, 2}, 3.119536759997919}, {{2015, 6, 3}, 
            3.224496056356898}, {{2015, 6, 4}, 3.265861488274961}, {{2015, 6, 
            5}, 3.134622359340973}, {{2015, 6, 8}, 3.0951987957811973`}, {{
            2015, 6, 9}, 2.9457902637710376`}, {{2015, 6, 10}, 
            3.196103831065077}, {{2015, 6, 11}, 3.1829610537546245`}, {{2015, 
            6, 12}, 3.060805672684406}, {{2015, 6, 15}, 2.921452299554316}, {{
            2015, 6, 16}, 2.908311429592496}, {{2015, 6, 17}, 
            3.0223563811638794`}, {{2015, 6, 18}, 3.1818229330770595`}, {{
            2015, 6, 19}, 3.1414270048266655`}, {{2015, 6, 22}, 
            3.111091003827923}, {{2015, 6, 23}, 3.3795749278724507`}, {{2015, 
            6, 24}, 2.789807280261705}, {{2015, 6, 25}, 2.776534803244221}, {{
            2015, 6, 26}, 2.9828773088317178`}, {{2015, 6, 29}, 
            2.329963640596649}, {{2015, 6, 30}, 2.3258426223193975`}, {{2015, 
            7, 1}, 2.5504870917130464`}, {{2015, 7, 2}, 
            2.5555156248273985`}, {{2015, 7, 6}, 2.5481772884127363`}, {{2015,
             7, 7}, 2.6996177172790414`}, {{2015, 7, 8}, 
            2.3843709436917315`}, {{2015, 7, 9}, 2.3161944826044234`}, {{2015,
             7, 10}, 2.44933199399026}, {{2015, 7, 13}, 2.647431509348941}, {{
            2015, 7, 14}, 2.5975551047191523`}, {{2015, 7, 15}, 
            2.529378643631844}, {{2015, 7, 16}, 2.433750667346782}, {{2015, 7,
             17}, 1.8531335248019545`}, {{2015, 7, 20}, 
            1.8041636813349502`}, {{2015, 7, 21}, 1.8091922144493022`}, {{
            2015, 7, 22}, 1.9880851121876777`}, {{2015, 7, 23}, 
            1.645387777076932}, {{2015, 7, 24}, 1.4491004303695068`}, {{2015, 
            7, 27}, 1.2171185782355103`}, {{2015, 7, 28}, 
            1.1855431837375576`}, {{2015, 7, 29}, 1.2454766545960503`}, {{
            2015, 7, 30}, 1.5707785870634297`}, {{2015, 7, 31}, 
            1.9326854008174301`}, {{2015, 8, 3}, 1.4170302622454471`}, {{2015,
             8, 4}, 1.4769627794296234`}, {{2015, 8, 5}, 
            1.6833062386914346`}, {{2015, 8, 6}, 1.3497584549722905`}, {{2015,
             8, 7}, 1.2815839012336152`}, {{2015, 8, 10}, 
            1.5711894209257924`}, {{2015, 8, 11}, 1.4481080220943419`}, {{
            2015, 8, 12}, 1.4897395291466822`}, {{2015, 8, 13}, 
            1.4215621143850576`}, {{2015, 8, 14}, 1.5638510845111284`}, {{
            2015, 8, 17}, 1.5789366838541845`}, {{2015, 8, 18}, 
            1.5107602227668764`}, {{2015, 8, 19}, 1.488336287009158}, {{2015, 
            8, 20}, 1.4201579185732172`}, {{2015, 8, 21}, 
            1.1964209640166708`}, {{2015, 8, 24}, 0.9186846792044516}, {{2015,
             8, 25}, 0.7132468274311083}, {{2015, 8, 26}, 
            0.8006337208359877}, {{2015, 8, 27}, 1.1625367198927226`}, {{2015,
             8, 28}, 1.195017721879145}, {{2015, 8, 31}, 
            1.6310351373232734`}, {{2015, 9, 1}, 1.1602259629180942`}, {{2015,
             9, 2}, 1.567886255676001}, {{2015, 9, 3}, 1.270943353243478}, {{
            2015, 9, 4}, 1.092957970342205}, {{2015, 9, 8}, 
            1.6529614384319373`}, {{2015, 9, 9}, 1.4658255504647446`}, {{2015,
             9, 10}, 1.3610470691137646`}, {{2015, 9, 11}, 
            1.3660756022281166`}, {{2015, 9, 14}, 1.2622008210169735`}, {{
            2015, 9, 15}, 1.2397778389335699`}, {{2015, 9, 16}, 
            1.4369698394551484`}, {{2015, 9, 17}, 1.3687943320421567`}, {{
            2015, 9, 18}, 1.0810019346755517`}, {{2015, 9, 21}, 
            1.1235390492163617`}, {{2015, 9, 22}, 0.4056624233341317}, {{2015,
             9, 23}, 0.19822376284496812`}, {{2015, 9, 24}, 
            0.4711451334837342}, {{2015, 9, 25}, 0.18056800711322296`}, {{
            2015, 9, 28}, -0.2385142554821993}, {{2015, 9, 
            29}, -0.29814865571745663`}, {{2015, 9, 
            30}, -0.385497785261796}, {{2015, 10, 
            1}, -0.18647854474998304`}, {{2015, 10, 2}, 
            0.012540695761829923`}, {{2015, 10, 5}, 0.22161604882802877`}, {{
            2015, 10, 6}, 0.23588187137109173`}, {{2015, 10, 7}, 
            0.49032770947811954`}, {{2015, 10, 8}, 0.4768807100607333}, {{
            2015, 10, 9}, 0.2509674707141478}, {{2015, 10, 12}, 
            0.0997761382945086}, {{2015, 10, 13}, -0.0429967278220964}, {{
            2015, 10, 14}, 0.4423880217229179}, {{2015, 10, 15}, 
            0.438179265408559}, {{2015, 10, 16}, 0.45244508795162197`}, {{
            2015, 10, 19}, 0.4952435092551273}, {{2015, 10, 20}, 
            0.4171335764881299}, {{2015, 10, 21}, 0.5053005754838296}, {{2015,
             10, 22}, 0.5749939492964238}, {{2015, 10, 23}, 
            0.5430704636729828}, {{2015, 10, 26}, 0.8445234793978749}, {{2015,
             10, 27}, 0.6647985945434769}, {{2015, 10, 28}, 
            0.8730551244840008}, {{2015, 10, 29}, 0.8873219007013802}, {{2015,
             10, 30}, 0.9293005452048924}, {{2015, 11, 2}, 
            1.0367628535323217`}, {{2015, 11, 3}, 1.300445027393744}, {{2015, 
            11, 4}, 1.0006325189431546`}, {{2015, 11, 5}, 
            1.255077403375866}, {{2015, 11, 6}, 1.1584909844028157`}, {{2015, 
            11, 9}, 0.8317844771174521}, {{2015, 11, 10}, 
            1.030803717629265}, {{2015, 11, 11}, 0.9157417661244764}, {{2015, 
            11, 12}, 0.8006817219683207}, {{2015, 11, 13}, 
            0.6394333233199774}, {{2015, 11, 16}, 0.7561329210761194}, {{2015,
             11, 17}, 0.5209833459751376}, {{2015, 11, 18}, 
            0.2119316407472045}, {{2015, 11, 19}, 0.1615354836149745}, {{2015,
             11, 20}, 0.3882665924129203}, {{2015, 11, 23}, 
            0.3017381933428904}, {{2015, 11, 24}, 0.37142965980685005`}, {{
            2015, 11, 25}, 0.44112112627081146`}, {{2015, 11, 27}, 
            0.4419428104194374}, {{2015, 11, 30}, 0.2353220193816341}, {{2015,
             12, 1}, 0.3419664582577049}, {{2015, 12, 2}, 
            0.2269064141015491}, {{2015, 12, 3}, 0.14879648133455348`}, {{
            2015, 12, 4}, 0.5233280356891399}, {{2015, 12, 
            7}, -1.0319818346333332`}, {{2015, 12, 
            8}, -1.5627380228934928`}, {{2015, 12, 
            9}, -1.7609355792566799`}, {{2015, 12, 
            10}, -1.6635312908322692`}, {{2015, 12, 
            11}, -2.0834323765533664`}, {{2015, 12, 
            14}, -2.1607244398690035`}, {{2015, 12, 
            15}, -1.9709424887859015`}, {{2015, 12, 
            16}, -2.002865020735026}, {{2015, 12, 
            17}, -2.0717367103989943`}, {{2015, 12, 
            18}, -2.122134774879857}, {{2015, 12, 
            21}, -2.0228378260494964`}, {{2015, 12, 
            22}, -1.9803813907134664`}, {{2015, 12, 
            23}, -1.881785009393548}, {{2015, 12, 
            24}, -1.7925460804662077`}, {{2015, 12, 
            28}, -1.7724319480087996`}, {{2015, 12, 
            29}, -1.823543360878336}, {{2015, 12, 
            30}, -1.8465852775930856`}, {{2015, 12, 
            31}, -1.8976976441369366`}, {{2016, 1, 
            4}, -1.8307991107395871`}, {{2016, 1, 
            5}, -1.6573488323249421`}, {{2016, 1, 
            6}, -1.7833150959635198`}, {{2016, 1, 7}, -1.52565346806157}, {{
            2016, 1, 8}, -1.8200433843490735`}, {{2016, 1, 
            11}, -1.861097730989906}, {{2016, 1, 
            12}, -1.8654256965938156`}, {{2016, 1, 
            13}, -1.9913929139067097`}, {{2016, 1, 
            14}, -2.136073128656127}, {{2016, 1, 
            15}, -2.2339698961399215`}, {{2016, 1, 
            19}, -2.4197063648788024`}, {{2016, 1, 
            20}, -2.4053213330461887`}, {{2016, 1, 
            21}, -2.2599395971120124`}, {{2016, 1, 
            22}, -2.3110519636558635`}, {{2016, 1, 
            25}, -2.511173464227358}, {{2016, 1, 26}, -2.38450663307834}, {{
            2016, 1, 27}, -2.2952667504766833`}, {{2016, 1, 
            28}, -2.449304417618679}, {{2016, 1, 29}, -2.266494779462823}, {{
            2016, 2, 1}, -2.344978935673966}, {{2016, 2, 
            2}, -2.59258445102153}, {{2016, 2, 3}, -2.4659166661981935`}, {{
            2016, 2, 4}, -2.4047481870999547`}, {{2016, 2, 
            5}, -2.2312950476623605`}, {{2016, 2, 
            8}, -2.5530557999428396`}, {{2016, 2, 
            9}, -2.6977374452037317`}, {{2016, 2, 
            10}, -2.6833514596968016`}, {{2016, 2, 
            11}, -2.884174004615897}, {{2016, 2, 
            12}, -2.7575062197925604`}, {{2016, 2, 
            16}, -2.2414795354552712`}, {{2016, 2, 
            17}, -1.9463900053316419`}, {{2016, 2, 
            18}, -1.595158621875493}, {{2016, 2, 19}, -1.636914489701084}, {{
            2016, 2, 22}, -1.61247143796545}, {{2016, 2, 
            23}, -1.8039370073291252`}, {{2016, 2, 
            24}, -1.8831207773763943`}, {{2016, 2, 
            25}, -1.6722416430657532`}, {{2016, 2, 
            26}, -1.5923573055080418`}, {{2016, 2, 
            29}, -1.6146996083866654`}, {{2016, 3, 
            1}, -1.4131779264686042`}, {{2016, 3, 
            2}, -1.3707224448068889`}, {{2016, 3, 
            3}, -1.2066277114361892`}, {{2016, 3, 
            4}, -1.4542322731094348`}, {{2016, 3, 
            7}, -1.4204346300041717`}, {{2016, 3, 8}, -1.527688849880544}, {{
            2016, 3, 9}, -1.4384470599302546`}, {{2016, 3, 
            10}, -1.4989159251923674`}, {{2016, 3, 
            11}, -1.2786802921634646`}, {{2016, 3, 
            14}, -1.3571634947002913`}, {{2016, 3, 
            15}, -1.3989184088515643`}, {{2016, 3, 
            16}, -1.3096804335985404`}, {{2016, 3, 
            17}, -1.1175142967244227`}, {{2016, 3, 
            18}, -1.0095604630119261`}, {{2016, 3, 
            21}, -1.284537768026782}, {{2016, 3, 22}, -0.5878950839114534}, {{
            2016, 3, 23}, -0.8197201503454412}, {{2016, 3, 
            24}, -0.1420279285714212}, {{2016, 3, 28}, 
            0.010724181486082784`}, {{2016, 3, 29}, 0.20523635717855981`}, {{
            2016, 3, 30}, 0.12499782333734544`}, {{2016, 3, 31}, 
            0.14897395777005684`}, {{2016, 4, 1}, 0.2961152228180026}, {{2016,
             4, 4}, 0.17856284456096105`}, {{2016, 4, 5}, 
            0.03200484508253787}, {{2016, 4, 6}, 0.18861991078966334`}, {{
            2016, 4, 7}, 0.08943377563008958}, {{2016, 4, 8}, 
            0.17972937570000802`}, {{2016, 4, 11}, 0.2042878220279274}, {{
            2016, 4, 12}, 0.37985144272772686`}, {{2016, 4, 13}, 
            0.42277613215311405`}, {{2016, 4, 14}, 0.3046404883265481}, {{
            2016, 4, 15}, 0.3380913770927556}, {{2016, 4, 18}, 
            0.3247546207839562}, {{2016, 4, 19}, 0.24451608694274185`}, {{
            2016, 4, 20}, 0.11690759613131263`}, {{2016, 4, 
            21}, -0.1907097829247455}, {{2016, 4, 
            22}, -0.24252786846273722`}, {{2016, 4, 
            25}, -0.27481222608989775`}, {{2016, 4, 
            26}, -0.08977575840523322}, {{2016, 4, 
            27}, -0.056323915964709315`}, {{2016, 4, 
            28}, -0.3260460923840487}, {{2016, 4, 
            29}, -0.49155264685514766`}, {{2016, 5, 
            2}, -0.30593195992664235`}, {{2016, 5, 
            3}, -0.36722193877518094`}, {{2016, 5, 
            4}, -0.3148244023649305}, {{2016, 5, 
            5}, -0.49927760448007064`}, {{2016, 5, 
            6}, -0.3995082037509725}, {{2016, 5, 
            9}, -0.34652549442256486`}, {{2016, 5, 
            10}, -0.2846532036788201}, {{2016, 5, 
            11}, -2.0797116456621243`}, {{2016, 5, 
            12}, -2.302063865111249}, {{2016, 5, 13}, -2.230716343196848}, {{
            2016, 5, 16}, -2.1682593563721024`}, {{2016, 5, 
            17}, -2.2200764882357795`}, {{2016, 5, 
            18}, -2.2529441114324626`}, {{2016, 5, 
            19}, -2.456346345377437}, {{2016, 5, 20}, -2.375524545966698}, {{
            2016, 5, 23}, -2.1899052895496673`}, {{2016, 5, 
            24}, -1.9953931138571903`}, {{2016, 5, 
            25}, -1.9145713144464516`}, {{2016, 5, 
            26}, -1.881120425680244}, {{2016, 5, 
            27}, -1.7624024699584702`}, {{2016, 5, 
            31}, -1.657020316871181}, {{2016, 6, 1}, -1.6898888937421805`}, {{
            2016, 6, 2}, -1.6185418486649379`}, {{2016, 6, 
            3}, -1.5945638068835954`}, {{2016, 6, 
            6}, -1.4657887849331175`}, {{2016, 6, 7}, -1.555502073107828}, {{
            2016, 6, 8}, -1.5220511843416205`}, {{2016, 6, 
            9}, -1.6591353831608622`}, {{2016, 6, 
            10}, -1.6920030063575453`}, {{2016, 6, 
            13}, -1.752710673310876}, {{2016, 6, 
            14}, -1.8234754064929124`}, {{2016, 6, 
            15}, -1.666860340785787}, {{2016, 6, 
            16}, -1.6713056083306146`}, {{2016, 6, 
            17}, -1.5999576095790555`}, {{2016, 6, 
            20}, -1.4048631219913705`}, {{2016, 6, 
            21}, -1.4945773638403992`}, {{2016, 6, 
            22}, -1.5375701472543675`}, {{2016, 6, 
            23}, -1.2828305774578865`}, {{2016, 6, 
            24}, -1.5083032192702923`}, {{2016, 6, 
            27}, -2.1078893270805565`}, {{2016, 6, 
            28}, -1.737900123495013}, {{2016, 6, 
            29}, -1.6176200492429658`}, {{2016, 6, 
            30}, -1.5645711532746098`}, {{2016, 7, 
            1}, -1.3482484459659219`}, {{2016, 7, 5}, -1.60665775863791}, {{
            2016, 7, 6}, -1.457565275938597}, {{2016, 7, 
            7}, -1.5773917843281513`}, {{2016, 7, 
            8}, -1.3034442601249339`}, {{2016, 7, 
            11}, -1.2211293898468192`}, {{2016, 7, 
            12}, -0.9952041358462367}, {{2016, 7, 
            13}, -1.0766128280736815`}, {{2016, 7, 
            14}, -1.0139604317391147`}, {{2016, 7, 
            15}, -1.1241824860881415`}, {{2016, 7, 
            18}, -1.0418676158100268`}, {{2016, 7, 
            19}, -1.0656505374686258`}, {{2016, 7, 
            20}, -1.0318105495813246`}, {{2016, 7, 
            21}, -1.0940112874020311`}, {{2016, 7, 
            22}, -1.0217534833526205`}, {{2016, 7, 
            25}, -0.968250067847455}, {{2016, 7, 26}, -0.8767833557169915}, {{
            2016, 7, 27}, -0.8237335060743192}, {{2016, 7, 
            28}, -0.8379138810410218}, {{2016, 7, 
            29}, -0.7752595773578221}, {{2016, 8, 1}, -0.6929447070797075}, {{
            2016, 8, 2}, -1.26416911128225}, {{2016, 8, 
            3}, -1.0382438572816675`}, {{2016, 8, 4}, -0.9755905072727842}, {{
            2016, 8, 5}, -0.8457059789802095}, {{2016, 8, 
            8}, -0.8210178329452607}, {{2016, 8, 9}, -0.9024255714983891}, {{
            2016, 8, 10}, -0.8973970383840371}, {{2016, 8, 
            11}, -0.7098886468712475}, {{2016, 8, 
            12}, -0.8009037004878543}, {{2016, 8, 
            15}, -0.7089824688205795}, {{2016, 8, 
            16}, -0.6463281651373798}, {{2016, 8, 
            17}, -1.2751802472574028`}, {{2016, 8, 
            18}, -1.4526325262158046`}, {{2016, 8, 
            19}, -1.5052278563216674`}, {{2016, 8, 
            22}, -1.4517253944908184`}, {{2016, 8, 
            23}, -1.2354036408564486`}, {{2016, 8, 
            24}, -1.4032524194486395`}, {{2016, 8, 
            25}, -1.3405981157654399`}, {{2016, 8, 
            26}, -1.4027988535861464`}, {{2016, 8, 
            29}, -1.2052324421703382`}, {{2016, 8, 
            30}, -1.2578306332991502`}, {{2016, 8, 
            31}, -1.3104269170793295`}, {{2016, 9, 
            1}, -1.3534187468189813`}, {{2016, 9, 
            2}, -1.3003698508506254`}, {{2016, 9, 6}, -1.27065126435269}, {{
            2016, 9, 7}, -1.0543304643926348`}, {{2016, 9, 
            8}, -1.106926748172814}, {{2016, 9, 9}, -1.3035869815379542`}, {{
            2016, 9, 12}, -1.106020570122146}, {{2016, 9, 
            13}, -1.3122852575278134`}, {{2016, 9, 
            14}, -1.3168621321283052`}, {{2016, 9, 
            15}, -1.2061855582424705`}, {{2016, 9, 
            16}, -1.1531366622741146`}, {{2016, 9, 
            19}, -1.2244892419471718`}, {{2016, 9, 
            20}, -1.3058979341746166`}, {{2016, 9, 
            21}, -1.1839613276349716`}, {{2016, 9, 
            22}, -1.0912500705215962`}, {{2016, 9, 
            23}, -1.0959642742236504`}, {{2016, 9, 
            26}, -1.3049539922634068`}, {{2016, 9, 
            27}, -1.2512136824156563`}, {{2016, 9, 
            28}, -1.2364433661592162`}, {{2016, 9, 
            29}, -1.2606411361454501`}, {{2016, 9, 
            30}, -1.0510218056067817`}, {{2016, 10, 
            3}, -1.1333607134048407`}, {{2016, 10, 
            4}, -1.3621497576525492`}, {{2016, 10, 5}, -1.327894444600453}, {{
            2016, 10, 6}, -1.5177144489311694`}, {{2016, 10, 
            7}, -1.5224286526332236`}, {{2016, 10, 
            10}, -1.487857579657355}, {{2016, 10, 
            11}, -1.7653593543127784`}, {{2016, 10, 
            12}, -1.721361304444276}, {{2016, 10, 
            13}, -1.8624690552044356`}, {{2016, 10, 
            14}, -1.9451227692519488`}, {{2016, 10, 
            17}, -2.0761734537834062`}, {{2016, 10, 
            18}, -1.983462673507189}, {{2016, 10, 19}, -1.89075237006813}, {{
            2016, 10, 20}, -1.92469335370793}, {{2016, 10, 
            21}, -1.9294075574099843`}, {{2016, 10, 
            24}, -1.9143219580669282`}, {{2016, 10, 
            25}, -1.9190356849318242`}, {{2016, 10, 
            26}, -1.9529771454087808`}, {{2016, 10, 
            27}, -2.152538932881587}, {{2016, 10, 
            28}, -2.0793141030753404`}, {{2016, 10, 
            31}, -2.0155157733245694`}, {{2016, 11, 
            1}, -2.1079117473513307`}, {{2016, 11, 
            2}, -2.0444282238500175`}, {{2016, 11, 3}, -2.068627424347726}, {{
            2016, 11, 4}, -2.0343711576213135`}, {{2016, 11, 
            7}, -1.6880439506122435`}, {{2016, 11, 8}, -1.721984934252042}, {{
            2016, 11, 9}, -1.307774806289057}, {{2016, 11, 
            10}, -0.815624691143455}, {{2016, 11, 11}, -0.722914387704396}, {{
            2016, 11, 14}, -0.49349525412061723`}, {{2016, 11, 
            15}, -0.5274367145975738}, {{2016, 11, 
            16}, -0.39575737124152255`}, {{2016, 11, 
            17}, -0.049744493644748644`}, {{2016, 11, 18}, 
            0.2183312577923573}, {{2016, 11, 21}, 0.42826491774332176`}, {{
            2016, 11, 22}, 0.4625197539582597}, {{2016, 11, 23}, 
            0.5747155310301313}, {{2016, 11, 25}, 0.49709082693412654`}, {{
            2016, 11, 28}, 0.3660401424026709}, {{2016, 11, 29}, 
            0.47823496580022606`}, {{2016, 11, 30}, 0.3468689981821562}, {{
            2016, 12, 1}, 0.35189753129650825`}, {{2016, 12, 2}, 
            0.32769976131027434`}, {{2016, 12, 5}, 0.44995165093653355`}, {{
            2016, 12, 6}, 0.5913746847833075}, {{2016, 12, 7}, 
            0.6548577314474624}, {{2016, 12, 8}, 0.7085970876208965}, {{2016, 
            12, 9}, 0.7233683575516547}, {{2016, 12, 12}, 
            0.6118031466530098}, {{2016, 12, 13}, 0.6265744165837681}, {{2016,
             12, 14}, 0.6705719896151123}, {{2016, 12, 15}, 
            0.6171460091796597}, {{2016, 12, 16}, 0.719599049435125}, {{2016, 
            12, 19}, 0.6557957556507397}, {{2016, 12, 20}, 
            0.7298521894608925}, {{2016, 12, 21}, 0.5968239675093265}, {{2016,
             12, 22}, 0.16796406525990903`}, {{2016, 12, 23}, 
            0.13354862864769856`}, {{2016, 12, 27}, 0.1931067308316674}, {{
            2016, 12, 28}, 0.04035843136545303}, {{2016, 12, 29}, 
            0.12427490393292828`}, {{2016, 12, 30}, 
            0.0011095817616357806`}, {{2017, 1, 3}, -0.1365540720358389}, {{
            2017, 1, 4}, 0.12486217164980218`}, {{2017, 1, 5}, 
            0.011557841910150302`}, {{2017, 1, 6}, 0.13491923787850624`}, {{
            2017, 1, 9}, 0.1401447984642381}, {{2017, 1, 10}, 
            0.34239508756003545`}, {{2017, 1, 11}, 0.25867373511530367`}, {{
            2017, 1, 12}, 0.2637022682296557}, {{2017, 1, 13}, 
            0.18984190821656632`}, {{2017, 1, 17}, 0.3677338269288555}, {{
            2017, 1, 18}, 0.333318390316645}, {{2017, 1, 19}, 
            0.10168024404867282`}, {{2017, 1, 20}, 0.21518064758538813`}, {{
            2017, 1, 23}, 0.13165536893772156`}, {{2017, 1, 24}, 
            0.34376760413947594`}, {{2017, 1, 25}, 0.4868509849711131}, {{
            2017, 1, 26}, 0.38340764766310187`}, {{2017, 1, 27}, 
            0.25038037938585234`}, {{2017, 1, 30}, 0.3147718945614262}, {{
            2017, 1, 31}, 0.3099384815698212}, {{2017, 2, 1}, 
            0.14732823599764977`}, {{2017, 2, 2}, 0.1424967303546758}, {{2017,
             2, 3}, 0.15738530222635205`}, {{2017, 2, 6}, 
            0.09358200844196674}, {{2017, 2, 7}, 0.06902756426139689}, {{2017,
             2, 8}, 0.07405609737574892}, {{2017, 2, 9}, 
            0.18755650091246423`}, {{2017, 2, 10}, 0.31091789688082017`}, {{
            2017, 2, 13}, 0.3753094120563958}, {{2017, 2, 14}, 
            0.6367275630906697}, {{2017, 2, 15}, 0.6417560962050199}, {{2017, 
            2, 16}, 0.4594238657695673}, {{2017, 2, 17}, 
            0.5038963686104818}, {{2017, 2, 21}, 0.55359347836281}, {{2017, 2,
             22}, 0.6966768591944472}, {{2017, 2, 23}, 0.3072618803459086}, {{
            2017, 2, 24}, 0.509512169441706}, {{2017, 2, 27}, 
            0.5541816997540003}, {{2017, 2, 28}, 0.24365466035858674`}, {{
            2017, 3, 1}, 0.42618296459110283`}, {{2017, 3, 2}, 
            0.5101003908328963}, {{2017, 3, 3}, 0.2587402597016428}, {{2017, 
            3, 6}, 0.15549204251637683`}, {{2017, 3, 7}, 
            0.07177069007164683}, {{2017, 3, 8}, 0.2542989943041629}, {{2017, 
            3, 9}, -0.20414483891449464`}, {{2017, 3, 
            10}, -0.011754588576021519`}, {{2017, 3, 
            13}, -0.10514181332964512`}, {{2017, 3, 
            14}, -0.0015014485502540253`}, {{2017, 3, 15}, 
            0.11199895498646129`}, {{2017, 3, 16}, 0.09730550323753206}, {{
            2017, 3, 17}, 0.3390007157342083}, {{2017, 3, 20}, 
            0.18644753639074096`}, {{2017, 3, 21}, 0.0041153059552883064`}, {{
            2017, 3, 22}, -0.0008563898121973779}, {{2017, 3, 23}, 
            0.01417237218399059}, {{2017, 3, 24}, -0.030799285436520663`}, {{
            2017, 3, 27}, -0.12571429644502885`}, {{2017, 3, 28}, 
            0.009314351110241148}, {{2017, 3, 29}, 0.09434280793064787}, {{
            2017, 3, 30}, 0.2693714173389452}, {{2017, 3, 31}, 
            0.30440063709880505`}, {{2017, 4, 3}, 0.20948562609029864`}, {{
            2017, 4, 4}, 1.0645145406743772`}, {{2017, 4, 5}, 
            1.3195430737887293`}, {{2017, 4, 6}, 1.384571072845464}, {{2017, 
            4, 7}, 1.3195999111355974`}, {{2017, 4, 10}, 
            1.2846853197437884`}, {{2017, 4, 11}, 1.269714348768785}, {{2017, 
            4, 12}, 1.10474280558919}, {{2017, 4, 13}, 
            1.1197715675853779`}, {{2017, 4, 17}, 1.2198856237488407`}, {{
            2017, 4, 18}, 1.2249141568631927`}, {{2017, 4, 19}, 
            1.2499421940669002`}, {{2017, 4, 20}, 1.3749706127403343`}, {{
            2017, 4, 21}, 1.3599996417653308`}, {{2017, 4, 24}, 
            1.5350850885204963`}, {{2017, 4, 25}, 1.490113430899985}, {{2017, 
            4, 26}, 1.4951419640143353`}, {{2017, 4, 27}, 
            1.5001704971286873`}, {{2017, 4, 28}, 1.4451995643006565`}, {{
            2017, 5, 1}, 1.3402843244103124`}, {{2017, 5, 2}, 
            1.4753129719655824`}, {{2017, 5, 3}, 1.3603416195208524`}, {{2017,
             5, 4}, 1.3153699619003412`}, {{2017, 5, 5}, 
            1.3003989909253377`}, {{2017, 5, 8}, 1.3754840562107766`}, {{2017,
             5, 9}, 1.3505128563539373`}, {{2017, 5, 10}, 
            1.4555417709380158`}, {{2017, 5, 11}, 1.1705703421993405`}, {{
            2017, 5, 12}, 0.9955985701379113}, {{2017, 5, 15}, 
            1.0806838643051844`}, {{2017, 5, 16}, 0.7557124737134817}, {{2017,
             5, 17}, 0.6207416171793945}, {{2017, 5, 18}, 
            0.5257697688240199}, {{2017, 5, 19}, 0.5007985689671806}, {{2017, 
            5, 22}, 0.5758836342526195}, {{2017, 5, 23}, 
            0.48091273957156133`}, {{2017, 5, 24}, 0.5859407004813235}, {{
            2017, 5, 25}, 0.8709699202411834}, {{2017, 5, 26}, 
            0.7959975759751643}, {{2017, 5, 30}, 0.796112204343217}, {{2017, 
            5, 31}, 0.9211406230166492}, {{2017, 6, 1}, 0.99616885095522}, {{
            2017, 6, 2}, 0.9511981470090252}, {{2017, 6, 5}, 
            0.9662837463520795}, {{2017, 6, 6}, 0.9613120505845956}, {{2017, 
            6, 7}, 1.0363402785231663`}, {{2017, 6, 8}, 
            1.1013692312542176`}, {{2017, 6, 9}, 1.136397497339761}, {{2017, 
            6, 12}, 1.1514830966828171`}, {{2017, 6, 13}, 
            1.0565112483274426`}, {{2017, 6, 14}, 0.8915397051478493}, {{2017,
             6, 15}, 0.9065684671440373}, {{2017, 6, 16}, 
            0.7215974198750885}, {{2017, 6, 19}, 0.7766829810711702}}, 
         "dZero" -> {{{2014, 6, 23}, 0}, {{2014, 6, 24}, 0}, {{2014, 6, 25}, 
            0}, {{2014, 6, 26}, 0}, {{2014, 6, 27}, 0}, {{2014, 6, 30}, 0}, {{
            2014, 7, 1}, 0}, {{2014, 7, 2}, 0}, {{2014, 7, 3}, 0}, {{2014, 7, 
            7}, 0}, {{2014, 7, 8}, 0}, {{2014, 7, 9}, 0}, {{2014, 7, 10}, 
            0}, {{2014, 7, 11}, 0}, {{2014, 7, 14}, 0}, {{2014, 7, 15}, 0}, {{
            2014, 7, 16}, 0}, {{2014, 7, 17}, 0}, {{2014, 7, 18}, 0}, {{2014, 
            7, 21}, 0}, {{2014, 7, 22}, 0}, {{2014, 7, 23}, 0}, {{2014, 7, 
            24}, 0}, {{2014, 7, 25}, 0}, {{2014, 7, 28}, 0}, {{2014, 7, 29}, 
            0}, {{2014, 7, 30}, 0}, {{2014, 7, 31}, 0}, {{2014, 8, 1}, 0}, {{
            2014, 8, 4}, 0}, {{2014, 8, 5}, 0}, {{2014, 8, 6}, 0}, {{2014, 8, 
            7}, 0}, {{2014, 8, 8}, 0}, {{2014, 8, 11}, 0}, {{2014, 8, 12}, 
            0}, {{2014, 8, 13}, 0}, {{2014, 8, 14}, 0}, {{2014, 8, 15}, 0}, {{
            2014, 8, 18}, 0}, {{2014, 8, 19}, 0}, {{2014, 8, 20}, 0}, {{2014, 
            8, 21}, 0}, {{2014, 8, 22}, 0}, {{2014, 8, 25}, 0}, {{2014, 8, 
            26}, 0}, {{2014, 8, 27}, 0}, {{2014, 8, 28}, 0}, {{2014, 8, 29}, 
            0}, {{2014, 9, 2}, 0}, {{2014, 9, 3}, 0}, {{2014, 9, 4}, 0}, {{
            2014, 9, 5}, 0}, {{2014, 9, 8}, 0}, {{2014, 9, 9}, 0}, {{2014, 9, 
            10}, 0}, {{2014, 9, 11}, 0}, {{2014, 9, 12}, 0}, {{2014, 9, 15}, 
            0}, {{2014, 9, 16}, 0}, {{2014, 9, 17}, 0}, {{2014, 9, 18}, 0}, {{
            2014, 9, 19}, 0}, {{2014, 9, 22}, 0}, {{2014, 9, 23}, 0}, {{2014, 
            9, 24}, 0}, {{2014, 9, 25}, 0}, {{2014, 9, 26}, 0}, {{2014, 9, 
            29}, 0}, {{2014, 9, 30}, 0}, {{2014, 10, 1}, 0}, {{2014, 10, 2}, 
            0}, {{2014, 10, 3}, 0}, {{2014, 10, 6}, 0}, {{2014, 10, 7}, 0}, {{
            2014, 10, 8}, 0}, {{2014, 10, 9}, 0}, {{2014, 10, 10}, 0}, {{2014,
             10, 13}, 0}, {{2014, 10, 14}, 0}, {{2014, 10, 15}, 0}, {{2014, 
            10, 16}, 0}, {{2014, 10, 17}, 0}, {{2014, 10, 20}, 0}, {{2014, 10,
             21}, 0}, {{2014, 10, 22}, 0}, {{2014, 10, 23}, 0}, {{2014, 10, 
            24}, 0}, {{2014, 10, 27}, 0}, {{2014, 10, 28}, 0}, {{2014, 10, 
            29}, 0}, {{2014, 10, 30}, 0}, {{2014, 10, 31}, 0}, {{2014, 11, 3},
             0}, {{2014, 11, 4}, 0}, {{2014, 11, 5}, 0}, {{2014, 11, 6}, 
            0}, {{2014, 11, 7}, 0}, {{2014, 11, 10}, 0}, {{2014, 11, 11}, 
            0}, {{2014, 11, 12}, 0}, {{2014, 11, 13}, 0}, {{2014, 11, 14}, 
            0}, {{2014, 11, 17}, 0}, {{2014, 11, 18}, 0}, {{2014, 11, 19}, 
            0}, {{2014, 11, 20}, 0}, {{2014, 11, 21}, 0}, {{2014, 11, 24}, 
            0}, {{2014, 11, 25}, 0}, {{2014, 11, 26}, 0}, {{2014, 11, 28}, 
            0}, {{2014, 12, 1}, 0}, {{2014, 12, 2}, 0}, {{2014, 12, 3}, 0}, {{
            2014, 12, 4}, 0}, {{2014, 12, 5}, 0}, {{2014, 12, 8}, 0}, {{2014, 
            12, 9}, 0}, {{2014, 12, 10}, 0}, {{2014, 12, 11}, 0}, {{2014, 12, 
            12}, 0}, {{2014, 12, 15}, 0}, {{2014, 12, 16}, 0}, {{2014, 12, 
            17}, 0}, {{2014, 12, 18}, 0}, {{2014, 12, 19}, 0}, {{2014, 12, 
            22}, 0}, {{2014, 12, 23}, 0}, {{2014, 12, 24}, 0}, {{2014, 12, 
            26}, 0}, {{2014, 12, 29}, 0}, {{2014, 12, 30}, 0}, {{2014, 12, 
            31}, 0}, {{2015, 1, 2}, 0}, {{2015, 1, 5}, 0}, {{2015, 1, 6}, 
            0}, {{2015, 1, 7}, 0}, {{2015, 1, 8}, 0}, {{2015, 1, 9}, 0}, {{
            2015, 1, 12}, 0}, {{2015, 1, 13}, 0}, {{2015, 1, 14}, 0}, {{2015, 
            1, 15}, 0}, {{2015, 1, 16}, 0}, {{2015, 1, 20}, 0}, {{2015, 1, 
            21}, 0}, {{2015, 1, 22}, 0}, {{2015, 1, 23}, 0}, {{2015, 1, 26}, 
            0}, {{2015, 1, 27}, 0}, {{2015, 1, 28}, 0}, {{2015, 1, 29}, 0}, {{
            2015, 1, 30}, 0}, {{2015, 2, 2}, 0}, {{2015, 2, 3}, 0}, {{2015, 2,
             4}, 0}, {{2015, 2, 5}, 0}, {{2015, 2, 6}, 0}, {{2015, 2, 9}, 
            0}, {{2015, 2, 10}, 0}, {{2015, 2, 11}, 0}, {{2015, 2, 12}, 0}, {{
            2015, 2, 13}, 0}, {{2015, 2, 17}, 0}, {{2015, 2, 18}, 0}, {{2015, 
            2, 19}, 0}, {{2015, 2, 20}, 0}, {{2015, 2, 23}, 0}, {{2015, 2, 
            24}, 0}, {{2015, 2, 25}, 0}, {{2015, 2, 26}, 0}, {{2015, 2, 27}, 
            0}, {{2015, 3, 2}, 0}, {{2015, 3, 3}, 0}, {{2015, 3, 4}, 0}, {{
            2015, 3, 5}, 0}, {{2015, 3, 6}, 0}, {{2015, 3, 9}, 0}, {{2015, 3, 
            10}, 0}, {{2015, 3, 11}, 0}, {{2015, 3, 12}, 0}, {{2015, 3, 13}, 
            0}, {{2015, 3, 16}, 0}, {{2015, 3, 17}, 0}, {{2015, 3, 18}, 0}, {{
            2015, 3, 19}, 0}, {{2015, 3, 20}, 0}, {{2015, 3, 23}, 0}, {{2015, 
            3, 24}, 0}, {{2015, 3, 25}, 0}, {{2015, 3, 26}, 0}, {{2015, 3, 
            27}, 0}, {{2015, 3, 30}, 0}, {{2015, 3, 31}, 0}, {{2015, 4, 1}, 
            0}, {{2015, 4, 2}, 0}, {{2015, 4, 6}, 0}, {{2015, 4, 7}, 0}, {{
            2015, 4, 8}, 0}, {{2015, 4, 9}, 0}, {{2015, 4, 10}, 0}, {{2015, 4,
             13}, 0}, {{2015, 4, 14}, 0}, {{2015, 4, 15}, 0}, {{2015, 4, 16}, 
            0}, {{2015, 4, 17}, 0}, {{2015, 4, 20}, 0}, {{2015, 4, 21}, 0}, {{
            2015, 4, 22}, 0}, {{2015, 4, 23}, 0}, {{2015, 4, 24}, 0}, {{2015, 
            4, 27}, 0}, {{2015, 4, 28}, 0}, {{2015, 4, 29}, 0}, {{2015, 4, 
            30}, 0}, {{2015, 5, 1}, 0}, {{2015, 5, 4}, 0}, {{2015, 5, 5}, 
            0}, {{2015, 5, 6}, 0}, {{2015, 5, 7}, 0}, {{2015, 5, 8}, 0}, {{
            2015, 5, 11}, 0}, {{2015, 5, 12}, 0}, {{2015, 5, 13}, 0}, {{2015, 
            5, 14}, 0}, {{2015, 5, 15}, 0}, {{2015, 5, 18}, 0}, {{2015, 5, 
            19}, 0}, {{2015, 5, 20}, 0}, {{2015, 5, 21}, 0}, {{2015, 5, 22}, 
            0}, {{2015, 5, 26}, 0}, {{2015, 5, 27}, 0}, {{2015, 5, 28}, 0}, {{
            2015, 5, 29}, 0}, {{2015, 6, 1}, 0}, {{2015, 6, 2}, 0}, {{2015, 6,
             3}, 0}, {{2015, 6, 4}, 0}, {{2015, 6, 5}, 0}, {{2015, 6, 8}, 
            0}, {{2015, 6, 9}, 0}, {{2015, 6, 10}, 0}, {{2015, 6, 11}, 0}, {{
            2015, 6, 12}, 0}, {{2015, 6, 15}, 0}, {{2015, 6, 16}, 0}, {{2015, 
            6, 17}, 0}, {{2015, 6, 18}, 0}, {{2015, 6, 19}, 0}, {{2015, 6, 
            22}, 0}, {{2015, 6, 23}, 0}, {{2015, 6, 24}, 0}, {{2015, 6, 25}, 
            0}, {{2015, 6, 26}, 0}, {{2015, 6, 29}, 0}, {{2015, 6, 30}, 0}, {{
            2015, 7, 1}, 0}, {{2015, 7, 2}, 0}, {{2015, 7, 6}, 0}, {{2015, 7, 
            7}, 0}, {{2015, 7, 8}, 0}, {{2015, 7, 9}, 0}, {{2015, 7, 10}, 
            0}, {{2015, 7, 13}, 0}, {{2015, 7, 14}, 0}, {{2015, 7, 15}, 0}, {{
            2015, 7, 16}, 0}, {{2015, 7, 17}, 0}, {{2015, 7, 20}, 0}, {{2015, 
            7, 21}, 0}, {{2015, 7, 22}, 0}, {{2015, 7, 23}, 0}, {{2015, 7, 
            24}, 0}, {{2015, 7, 27}, 0}, {{2015, 7, 28}, 0}, {{2015, 7, 29}, 
            0}, {{2015, 7, 30}, 0}, {{2015, 7, 31}, 0}, {{2015, 8, 3}, 0}, {{
            2015, 8, 4}, 0}, {{2015, 8, 5}, 0}, {{2015, 8, 6}, 0}, {{2015, 8, 
            7}, 0}, {{2015, 8, 10}, 0}, {{2015, 8, 11}, 0}, {{2015, 8, 12}, 
            0}, {{2015, 8, 13}, 0}, {{2015, 8, 14}, 0}, {{2015, 8, 17}, 0}, {{
            2015, 8, 18}, 0}, {{2015, 8, 19}, 0}, {{2015, 8, 20}, 0}, {{2015, 
            8, 21}, 0}, {{2015, 8, 24}, 0}, {{2015, 8, 25}, 0}, {{2015, 8, 
            26}, 0}, {{2015, 8, 27}, 0}, {{2015, 8, 28}, 0}, {{2015, 8, 31}, 
            0}, {{2015, 9, 1}, 0}, {{2015, 9, 2}, 0}, {{2015, 9, 3}, 0}, {{
            2015, 9, 4}, 0}, {{2015, 9, 8}, 0}, {{2015, 9, 9}, 0}, {{2015, 9, 
            10}, 0}, {{2015, 9, 11}, 0}, {{2015, 9, 14}, 0}, {{2015, 9, 15}, 
            0}, {{2015, 9, 16}, 0}, {{2015, 9, 17}, 0}, {{2015, 9, 18}, 0}, {{
            2015, 9, 21}, 0}, {{2015, 9, 22}, 0}, {{2015, 9, 23}, 0}, {{2015, 
            9, 24}, 0}, {{2015, 9, 25}, 0}, {{2015, 9, 28}, 0}, {{2015, 9, 
            29}, 0}, {{2015, 9, 30}, 0}, {{2015, 10, 1}, 0}, {{2015, 10, 2}, 
            0}, {{2015, 10, 5}, 0}, {{2015, 10, 6}, 0}, {{2015, 10, 7}, 0}, {{
            2015, 10, 8}, 0}, {{2015, 10, 9}, 0}, {{2015, 10, 12}, 0}, {{2015,
             10, 13}, 0}, {{2015, 10, 14}, 0}, {{2015, 10, 15}, 0}, {{2015, 
            10, 16}, 0}, {{2015, 10, 19}, 0}, {{2015, 10, 20}, 0}, {{2015, 10,
             21}, 0}, {{2015, 10, 22}, 0}, {{2015, 10, 23}, 0}, {{2015, 10, 
            26}, 0}, {{2015, 10, 27}, 0}, {{2015, 10, 28}, 0}, {{2015, 10, 
            29}, 0}, {{2015, 10, 30}, 0}, {{2015, 11, 2}, 0}, {{2015, 11, 3}, 
            0}, {{2015, 11, 4}, 0}, {{2015, 11, 5}, 0}, {{2015, 11, 6}, 0}, {{
            2015, 11, 9}, 0}, {{2015, 11, 10}, 0}, {{2015, 11, 11}, 0}, {{
            2015, 11, 12}, 0}, {{2015, 11, 13}, 0}, {{2015, 11, 16}, 0}, {{
            2015, 11, 17}, 0}, {{2015, 11, 18}, 0}, {{2015, 11, 19}, 0}, {{
            2015, 11, 20}, 0}, {{2015, 11, 23}, 0}, {{2015, 11, 24}, 0}, {{
            2015, 11, 25}, 0}, {{2015, 11, 27}, 0}, {{2015, 11, 30}, 0}, {{
            2015, 12, 1}, 0}, {{2015, 12, 2}, 0}, {{2015, 12, 3}, 0}, {{2015, 
            12, 4}, 0}, {{2015, 12, 7}, 0}, {{2015, 12, 8}, 0}, {{2015, 12, 
            9}, 0}, {{2015, 12, 10}, 0}, {{2015, 12, 11}, 0}, {{2015, 12, 14},
             0}, {{2015, 12, 15}, 0}, {{2015, 12, 16}, 0}, {{2015, 12, 17}, 
            0}, {{2015, 12, 18}, 0}, {{2015, 12, 21}, 0}, {{2015, 12, 22}, 
            0}, {{2015, 12, 23}, 0}, {{2015, 12, 24}, 0}, {{2015, 12, 28}, 
            0}, {{2015, 12, 29}, 0}, {{2015, 12, 30}, 0}, {{2015, 12, 31}, 
            0}, {{2016, 1, 4}, 0}, {{2016, 1, 5}, 0}, {{2016, 1, 6}, 0}, {{
            2016, 1, 7}, 0}, {{2016, 1, 8}, 0}, {{2016, 1, 11}, 0}, {{2016, 1,
             12}, 0}, {{2016, 1, 13}, 0}, {{2016, 1, 14}, 0}, {{2016, 1, 15}, 
            0}, {{2016, 1, 19}, 0}, {{2016, 1, 20}, 0}, {{2016, 1, 21}, 0}, {{
            2016, 1, 22}, 0}, {{2016, 1, 25}, 0}, {{2016, 1, 26}, 0}, {{2016, 
            1, 27}, 0}, {{2016, 1, 28}, 0}, {{2016, 1, 29}, 0}, {{2016, 2, 1},
             0}, {{2016, 2, 2}, 0}, {{2016, 2, 3}, 0}, {{2016, 2, 4}, 0}, {{
            2016, 2, 5}, 0}, {{2016, 2, 8}, 0}, {{2016, 2, 9}, 0}, {{2016, 2, 
            10}, 0}, {{2016, 2, 11}, 0}, {{2016, 2, 12}, 0}, {{2016, 2, 16}, 
            0}, {{2016, 2, 17}, 0}, {{2016, 2, 18}, 0}, {{2016, 2, 19}, 0}, {{
            2016, 2, 22}, 0}, {{2016, 2, 23}, 0}, {{2016, 2, 24}, 0}, {{2016, 
            2, 25}, 0}, {{2016, 2, 26}, 0}, {{2016, 2, 29}, 0}, {{2016, 3, 1},
             0}, {{2016, 3, 2}, 0}, {{2016, 3, 3}, 0}, {{2016, 3, 4}, 0}, {{
            2016, 3, 7}, 0}, {{2016, 3, 8}, 0}, {{2016, 3, 9}, 0}, {{2016, 3, 
            10}, 0}, {{2016, 3, 11}, 0}, {{2016, 3, 14}, 0}, {{2016, 3, 15}, 
            0}, {{2016, 3, 16}, 0}, {{2016, 3, 17}, 0}, {{2016, 3, 18}, 0}, {{
            2016, 3, 21}, 0}, {{2016, 3, 22}, 0}, {{2016, 3, 23}, 0}, {{2016, 
            3, 24}, 0}, {{2016, 3, 28}, 0}, {{2016, 3, 29}, 0}, {{2016, 3, 
            30}, 0}, {{2016, 3, 31}, 0}, {{2016, 4, 1}, 0}, {{2016, 4, 4}, 
            0}, {{2016, 4, 5}, 0}, {{2016, 4, 6}, 0}, {{2016, 4, 7}, 0}, {{
            2016, 4, 8}, 0}, {{2016, 4, 11}, 0}, {{2016, 4, 12}, 0}, {{2016, 
            4, 13}, 0}, {{2016, 4, 14}, 0}, {{2016, 4, 15}, 0}, {{2016, 4, 
            18}, 0}, {{2016, 4, 19}, 0}, {{2016, 4, 20}, 0}, {{2016, 4, 21}, 
            0}, {{2016, 4, 22}, 0}, {{2016, 4, 25}, 0}, {{2016, 4, 26}, 0}, {{
            2016, 4, 27}, 0}, {{2016, 4, 28}, 0}, {{2016, 4, 29}, 0}, {{2016, 
            5, 2}, 0}, {{2016, 5, 3}, 0}, {{2016, 5, 4}, 0}, {{2016, 5, 5}, 
            0}, {{2016, 5, 6}, 0}, {{2016, 5, 9}, 0}, {{2016, 5, 10}, 0}, {{
            2016, 5, 11}, 0}, {{2016, 5, 12}, 0}, {{2016, 5, 13}, 0}, {{2016, 
            5, 16}, 0}, {{2016, 5, 17}, 0}, {{2016, 5, 18}, 0}, {{2016, 5, 
            19}, 0}, {{2016, 5, 20}, 0}, {{2016, 5, 23}, 0}, {{2016, 5, 24}, 
            0}, {{2016, 5, 25}, 0}, {{2016, 5, 26}, 0}, {{2016, 5, 27}, 0}, {{
            2016, 5, 31}, 0}, {{2016, 6, 1}, 0}, {{2016, 6, 2}, 0}, {{2016, 6,
             3}, 0}, {{2016, 6, 6}, 0}, {{2016, 6, 7}, 0}, {{2016, 6, 8}, 
            0}, {{2016, 6, 9}, 0}, {{2016, 6, 10}, 0}, {{2016, 6, 13}, 0}, {{
            2016, 6, 14}, 0}, {{2016, 6, 15}, 0}, {{2016, 6, 16}, 0}, {{2016, 
            6, 17}, 0}, {{2016, 6, 20}, 0}, {{2016, 6, 21}, 0}, {{2016, 6, 
            22}, 0}, {{2016, 6, 23}, 0}, {{2016, 6, 24}, 0}, {{2016, 6, 27}, 
            0}, {{2016, 6, 28}, 0}, {{2016, 6, 29}, 0}, {{2016, 6, 30}, 0}, {{
            2016, 7, 1}, 0}, {{2016, 7, 5}, 0}, {{2016, 7, 6}, 0}, {{2016, 7, 
            7}, 0}, {{2016, 7, 8}, 0}, {{2016, 7, 11}, 0}, {{2016, 7, 12}, 
            0}, {{2016, 7, 13}, 0}, {{2016, 7, 14}, 0}, {{2016, 7, 15}, 0}, {{
            2016, 7, 18}, 0}, {{2016, 7, 19}, 0}, {{2016, 7, 20}, 0}, {{2016, 
            7, 21}, 0}, {{2016, 7, 22}, 0}, {{2016, 7, 25}, 0}, {{2016, 7, 
            26}, 0}, {{2016, 7, 27}, 0}, {{2016, 7, 28}, 0}, {{2016, 7, 29}, 
            0}, {{2016, 8, 1}, 0}, {{2016, 8, 2}, 0}, {{2016, 8, 3}, 0}, {{
            2016, 8, 4}, 0}, {{2016, 8, 5}, 0}, {{2016, 8, 8}, 0}, {{2016, 8, 
            9}, 0}, {{2016, 8, 10}, 0}, {{2016, 8, 11}, 0}, {{2016, 8, 12}, 
            0}, {{2016, 8, 15}, 0}, {{2016, 8, 16}, 0}, {{2016, 8, 17}, 0}, {{
            2016, 8, 18}, 0}, {{2016, 8, 19}, 0}, {{2016, 8, 22}, 0}, {{2016, 
            8, 23}, 0}, {{2016, 8, 24}, 0}, {{2016, 8, 25}, 0}, {{2016, 8, 
            26}, 0}, {{2016, 8, 29}, 0}, {{2016, 8, 30}, 0}, {{2016, 8, 31}, 
            0}, {{2016, 9, 1}, 0}, {{2016, 9, 2}, 0}, {{2016, 9, 6}, 0}, {{
            2016, 9, 7}, 0}, {{2016, 9, 8}, 0}, {{2016, 9, 9}, 0}, {{2016, 9, 
            12}, 0}, {{2016, 9, 13}, 0}, {{2016, 9, 14}, 0}, {{2016, 9, 15}, 
            0}, {{2016, 9, 16}, 0}, {{2016, 9, 19}, 0}, {{2016, 9, 20}, 0}, {{
            2016, 9, 21}, 0}, {{2016, 9, 22}, 0}, {{2016, 9, 23}, 0}, {{2016, 
            9, 26}, 0}, {{2016, 9, 27}, 0}, {{2016, 9, 28}, 0}, {{2016, 9, 
            29}, 0}, {{2016, 9, 30}, 0}, {{2016, 10, 3}, 0}, {{2016, 10, 4}, 
            0}, {{2016, 10, 5}, 0}, {{2016, 10, 6}, 0}, {{2016, 10, 7}, 0}, {{
            2016, 10, 10}, 0}, {{2016, 10, 11}, 0}, {{2016, 10, 12}, 0}, {{
            2016, 10, 13}, 0}, {{2016, 10, 14}, 0}, {{2016, 10, 17}, 0}, {{
            2016, 10, 18}, 0}, {{2016, 10, 19}, 0}, {{2016, 10, 20}, 0}, {{
            2016, 10, 21}, 0}, {{2016, 10, 24}, 0}, {{2016, 10, 25}, 0}, {{
            2016, 10, 26}, 0}, {{2016, 10, 27}, 0}, {{2016, 10, 28}, 0}, {{
            2016, 10, 31}, 0}, {{2016, 11, 1}, 0}, {{2016, 11, 2}, 0}, {{2016,
             11, 3}, 0}, {{2016, 11, 4}, 0}, {{2016, 11, 7}, 0}, {{2016, 11, 
            8}, 0}, {{2016, 11, 9}, 0}, {{2016, 11, 10}, 0}, {{2016, 11, 11}, 
            0}, {{2016, 11, 14}, 0}, {{2016, 11, 15}, 0}, {{2016, 11, 16}, 
            0}, {{2016, 11, 17}, 0}, {{2016, 11, 18}, 0}, {{2016, 11, 21}, 
            0}, {{2016, 11, 22}, 0}, {{2016, 11, 23}, 0}, {{2016, 11, 25}, 
            0}, {{2016, 11, 28}, 0}, {{2016, 11, 29}, 0}, {{2016, 11, 30}, 
            0}, {{2016, 12, 1}, 0}, {{2016, 12, 2}, 0}, {{2016, 12, 5}, 0}, {{
            2016, 12, 6}, 0}, {{2016, 12, 7}, 0}, {{2016, 12, 8}, 0}, {{2016, 
            12, 9}, 0}, {{2016, 12, 12}, 0}, {{2016, 12, 13}, 0}, {{2016, 12, 
            14}, 0}, {{2016, 12, 15}, 0}, {{2016, 12, 16}, 0}, {{2016, 12, 
            19}, 0}, {{2016, 12, 20}, 0}, {{2016, 12, 21}, 0}, {{2016, 12, 
            22}, 0}, {{2016, 12, 23}, 0}, {{2016, 12, 27}, 0}, {{2016, 12, 
            28}, 0}, {{2016, 12, 29}, 0}, {{2016, 12, 30}, 0}, {{2017, 1, 3}, 
            0}, {{2017, 1, 4}, 0}, {{2017, 1, 5}, 0}, {{2017, 1, 6}, 0}, {{
            2017, 1, 9}, 0}, {{2017, 1, 10}, 0}, {{2017, 1, 11}, 0}, {{2017, 
            1, 12}, 0}, {{2017, 1, 13}, 0}, {{2017, 1, 17}, 0}, {{2017, 1, 
            18}, 0}, {{2017, 1, 19}, 0}, {{2017, 1, 20}, 0}, {{2017, 1, 23}, 
            0}, {{2017, 1, 24}, 0}, {{2017, 1, 25}, 0}, {{2017, 1, 26}, 0}, {{
            2017, 1, 27}, 0}, {{2017, 1, 30}, 0}, {{2017, 1, 31}, 0}, {{2017, 
            2, 1}, 0}, {{2017, 2, 2}, 0}, {{2017, 2, 3}, 0}, {{2017, 2, 6}, 
            0}, {{2017, 2, 7}, 0}, {{2017, 2, 8}, 0}, {{2017, 2, 9}, 0}, {{
            2017, 2, 10}, 0}, {{2017, 2, 13}, 0}, {{2017, 2, 14}, 0}, {{2017, 
            2, 15}, 0}, {{2017, 2, 16}, 0}, {{2017, 2, 17}, 0}, {{2017, 2, 
            21}, 0}, {{2017, 2, 22}, 0}, {{2017, 2, 23}, 0}, {{2017, 2, 24}, 
            0}, {{2017, 2, 27}, 0}, {{2017, 2, 28}, 0}, {{2017, 3, 1}, 0}, {{
            2017, 3, 2}, 0}, {{2017, 3, 3}, 0}, {{2017, 3, 6}, 0}, {{2017, 3, 
            7}, 0}, {{2017, 3, 8}, 0}, {{2017, 3, 9}, 0}, {{2017, 3, 10}, 
            0}, {{2017, 3, 13}, 0}, {{2017, 3, 14}, 0}, {{2017, 3, 15}, 0}, {{
            2017, 3, 16}, 0}, {{2017, 3, 17}, 0}, {{2017, 3, 20}, 0}, {{2017, 
            3, 21}, 0}, {{2017, 3, 22}, 0}, {{2017, 3, 23}, 0}, {{2017, 3, 
            24}, 0}, {{2017, 3, 27}, 0}, {{2017, 3, 28}, 0}, {{2017, 3, 29}, 
            0}, {{2017, 3, 30}, 0}, {{2017, 3, 31}, 0}, {{2017, 4, 3}, 0}, {{
            2017, 4, 4}, 0}, {{2017, 4, 5}, 0}, {{2017, 4, 6}, 0}, {{2017, 4, 
            7}, 0}, {{2017, 4, 10}, 0}, {{2017, 4, 11}, 0}, {{2017, 4, 12}, 
            0}, {{2017, 4, 13}, 0}, {{2017, 4, 17}, 0}, {{2017, 4, 18}, 0}, {{
            2017, 4, 19}, 0}, {{2017, 4, 20}, 0}, {{2017, 4, 21}, 0}, {{2017, 
            4, 24}, 0}, {{2017, 4, 25}, 0}, {{2017, 4, 26}, 0}, {{2017, 4, 
            27}, 0}, {{2017, 4, 28}, 0}, {{2017, 5, 1}, 0}, {{2017, 5, 2}, 
            0}, {{2017, 5, 3}, 0}, {{2017, 5, 4}, 0}, {{2017, 5, 5}, 0}, {{
            2017, 5, 8}, 0}, {{2017, 5, 9}, 0}, {{2017, 5, 10}, 0}, {{2017, 5,
             11}, 0}, {{2017, 5, 12}, 0}, {{2017, 5, 15}, 0}, {{2017, 5, 16}, 
            0}, {{2017, 5, 17}, 0}, {{2017, 5, 18}, 0}, {{2017, 5, 19}, 0}, {{
            2017, 5, 22}, 0}, {{2017, 5, 23}, 0}, {{2017, 5, 24}, 0}, {{2017, 
            5, 25}, 0}, {{2017, 5, 26}, 0}, {{2017, 5, 30}, 0}, {{2017, 5, 
            31}, 0}, {{2017, 6, 1}, 0}, {{2017, 6, 2}, 0}, {{2017, 6, 5}, 
            0}, {{2017, 6, 6}, 0}, {{2017, 6, 7}, 0}, {{2017, 6, 8}, 0}, {{
            2017, 6, 9}, 0}, {{2017, 6, 12}, 0}, {{2017, 6, 13}, 0}, {{2017, 
            6, 14}, 0}, {{2017, 6, 15}, 0}, {{2017, 6, 16}, 0}, {{2017, 6, 
            19}, 0}}, 
         "min" -> {{{2014, 6, 23}, 9.796406745910645}, {{2014, 6, 24}, 
            9.708623886108398}, {{2014, 6, 25}, 9.673029899597168}, {{2014, 6,
             26}, 9.49554443359375}, {{2014, 6, 27}, 9.522167205810547}, {{
            2014, 6, 30}, 9.5399169921875}, {{2014, 7, 1}, 
            9.628660202026367}, {{2014, 7, 2}, 9.681904792785645}, {{2014, 7, 
            3}, 9.806148529052734}, {{2014, 7, 7}, 9.868268013000488}, {{2014,
             7, 8}, 9.832768440246582}, {{2014, 7, 9}, 9.735152244567871}, {{
            2014, 7, 10}, 9.602038383483887}, {{2014, 7, 11}, 
            9.628660202026367}, {{2014, 7, 14}, 9.735152244567871}, {{2014, 7,
             15}, 9.823895454406738}, {{2014, 7, 16}, 9.823895454406738}, {{
            2014, 7, 17}, 9.770648956298828}, {{2014, 7, 18}, 
            9.761775016784668}, {{2014, 7, 21}, 9.823895454406738}, {{2014, 7,
             22}, 9.797271728515625}, {{2014, 7, 23}, 9.752900123596191}, {{
            2014, 7, 24}, 9.903763771057129}, {{2014, 7, 25}, 
            9.717403411865234}, {{2014, 7, 28}, 9.673029899597168}, {{2014, 7,
             29}, 9.717403411865234}, {{2014, 7, 30}, 9.832768440246582}, {{
            2014, 7, 31}, 9.957009315490723}, {{2014, 8, 1}, 
            9.983633041381836}, {{2014, 8, 4}, 10.072376251220703`}, {{2014, 
            8, 5}, 10.08125114440918}, {{2014, 8, 6}, 10.028006553649902`}, {{
            2014, 8, 7}, 9.894888877868652}, {{2014, 8, 8}, 
            9.832768440246582}, {{2014, 8, 11}, 10.098998069763184`}, {{2014, 
            8, 12}, 10.063502311706543`}, {{2014, 8, 13}, 
            9.983633041381836}, {{2014, 8, 14}, 10.161120414733887`}, {{2014, 
            8, 15}, 10.08125114440918}, {{2014, 8, 18}, 10.08125114440918}, {{
            2014, 8, 19}, 10.205491065979004`}, {{2014, 8, 20}, 
            9.903763771057129}, {{2014, 8, 21}, 9.602038383483887}, {{2014, 8,
             22}, 9.628660202026367}, {{2014, 8, 25}, 9.699655532836914}, {{
            2014, 8, 26}, 9.735152244567871}, {{2014, 8, 27}, 
            9.815022468566895}, {{2014, 8, 28}, 10.090126037597656`}, {{2014, 
            8, 29}, 10.303110122680664`}, {{2014, 9, 2}, 
            10.675830841064453`}, {{2014, 9, 3}, 11.146172523498535`}, {{2014,
             9, 4}, 11.190543174743652`}, {{2014, 9, 5}, 
            11.199417114257812`}, {{2014, 9, 8}, 11.128423690795898`}, {{2014,
             9, 9}, 10.986433029174805`}, {{2014, 9, 10}, 
            10.8355712890625}, {{2014, 9, 11}, 10.977560043334961`}, {{2014, 
            9, 12}, 11.101801872253418`}, {{2014, 9, 15}, 
            11.288162231445312`}, {{2014, 9, 16}, 11.394655227661133`}, {{
            2014, 9, 17}, 11.536642074584961`}, {{2014, 9, 18}, 
            11.49227237701416}, {{2014, 9, 19}, 11.536642074584961`}, {{2014, 
            9, 22}, 11.305909156799316`}, {{2014, 9, 23}, 
            11.32365894317627}, {{2014, 9, 24}, 11.37699031829834}, {{2014, 9,
             25}, 11.16199016571045}, {{2014, 9, 26}, 11.16199016571045}, {{
            2014, 9, 29}, 10.86636734008789}, {{2014, 9, 30}, 
            10.776784896850586`}, {{2014, 10, 1}, 10.588661193847656`}, {{
            2014, 10, 2}, 10.499078750610352`}, {{2014, 10, 3}, 
            10.508036613464355`}, {{2014, 10, 6}, 10.543869972229004`}, {{
            2014, 10, 7}, 10.239290237426758`}, {{2014, 10, 8}, 
            10.20345687866211}, {{2014, 10, 9}, 10.400538444519043`}, {{2014, 
            10, 10}, 10.481163024902344`}, {{2014, 10, 13}, 
            10.579704284667969`}, {{2014, 10, 14}, 10.767827987670898`}, {{
            2014, 10, 15}, 10.6155366897583}, {{2014, 10, 16}, 
            10.543869972229004`}, {{2014, 10, 17}, 10.454288482666016`}, {{
            2014, 10, 20}, 10.687202453613281`}, {{2014, 10, 21}, 
            10.86636734008789}, {{2014, 10, 22}, 11.108241081237793`}, {{2014,
             10, 23}, 11.179906845092773`}, {{2014, 10, 24}, 
            11.0455322265625}, {{2014, 10, 27}, 10.946991920471191`}, {{2014, 
            10, 28}, 10.98282527923584}, {{2014, 10, 29}, 
            10.991786003112793`}, {{2014, 10, 30}, 11.027618408203125`}, {{
            2014, 10, 31}, 11.332196235656738`}, {{2014, 11, 3}, 
            11.24261474609375}, {{2014, 11, 4}, 11.43073844909668}, {{2014, 
            11, 5}, 11.591987609863281`}, {{2014, 11, 6}, 
            11.43073844909668}, {{2014, 11, 7}, 11.502405166625977`}, {{2014, 
            11, 10}, 11.520319938659668`}, {{2014, 11, 11}, 
            11.591987609863281`}, {{2014, 11, 12}, 11.600945472717285`}, {{
            2014, 11, 13}, 11.90552806854248}, {{2014, 11, 14}, 
            11.950316429138184`}, {{2014, 11, 17}, 11.591987609863281`}, {{
            2014, 11, 18}, 11.269490242004395`}, {{2014, 11, 19}, 
            11.717403411865234`}, {{2014, 11, 20}, 12.192191123962402`}, {{
            2014, 11, 21}, 12.496769905090332`}, {{2014, 11, 24}, 
            12.541563034057617`}, {{2014, 11, 25}, 12.595314025878906`}, {{
            2014, 11, 26}, 12.353438377380371`}, {{2014, 11, 28}, 
            12.514687538146973`}, {{2014, 12, 1}, 12.210107803344727`}, {{
            2014, 12, 2}, 12.380313873291016`}, {{2014, 12, 3}, 
            12.631145477294922`}, {{2014, 12, 4}, 12.756561279296875`}, {{
            2014, 12, 5}, 12.559480667114258`}, {{2014, 12, 8}, 
            12.658021926879883`}, {{2014, 12, 9}, 12.631145477294922`}, {{
            2014, 12, 10}, 12.899892807006836`}, {{2014, 12, 11}, 
            13.267181396484375`}, {{2014, 12, 12}, 14.15404987335205}, {{2014,
             12, 15}, 14.628836631774902`}, {{2014, 12, 16}, 
            15.031961441040039`}, {{2014, 12, 17}, 15.264875411987305`}, {{
            2014, 12, 18}, 15.399247169494629`}, {{2014, 12, 19}, 
            15.515703201293945`}, {{2014, 12, 22}, 15.551539421081543`}, {{
            2014, 12, 23}, 15.604790687561035`}, {{2014, 12, 24}, 
            15.89343547821045}, {{2014, 12, 26}, 16.055797576904297`}, {{2014,
             12, 29}, 16.136980056762695`}, {{2014, 12, 30}, 
            16.127958297729492`}, {{2014, 12, 31}, 16.209138870239258`}, {{
            2015, 1, 2}, 15.767152786254883`}, {{2015, 1, 5}, 
            15.550674438476562`}, {{2015, 1, 6}, 15.505573272705078`}, {{2015,
             1, 7}, 15.694992065429688`}, {{2015, 1, 8}, 
            15.983637809753418`}, {{2015, 1, 9}, 15.207906723022461`}, {{2015,
             1, 12}, 15.388306617736816`}, {{2015, 1, 13}, 
            15.108688354492188`}, {{2015, 1, 14}, 15.18986701965332}, {{2015, 
            1, 15}, 15.144765853881836`}, {{2015, 1, 16}, 
            15.117707252502441`}, {{2015, 1, 20}, 14.68474292755127}, {{2015, 
            1, 21}, 14.639641761779785`}, {{2015, 1, 22}, 
            14.856122016906738`}, {{2015, 1, 23}, 14.946324348449707`}, {{
            2015, 1, 26}, 15.072607040405273`}, {{2015, 1, 27}, 
            15.063587188720703`}, {{2015, 1, 28}, 15.135746955871582`}, {{
            2015, 1, 29}, 15.01848316192627}, {{2015, 1, 30}, 
            15.171828269958496`}, {{2015, 2, 2}, 15.072607040405273`}, {{2015,
             2, 3}, 16.67818832397461}, {{2015, 2, 4}, 
            15.063587188720703`}, {{2015, 2, 5}, 14.973383903503418`}, {{2015,
             2, 6}, 14.820043563842773`}, {{2015, 2, 9}, 
            14.820043563842773`}, {{2015, 2, 10}, 15.216927528381348`}, {{
            2015, 2, 11}, 15.271049499511719`}, {{2015, 2, 12}, 
            15.379290580749512`}, {{2015, 2, 13}, 15.18986701965332}, {{2015, 
            2, 17}, 15.081625938415527`}, {{2015, 2, 18}, 
            15.225948333740234`}, {{2015, 2, 19}, 15.171828269958496`}, {{
            2015, 2, 20}, 14.946324348449707`}, {{2015, 2, 23}, 
            14.756902694702148`}, {{2015, 2, 24}, 14.892203330993652`}, {{
            2015, 2, 25}, 14.955344200134277`}, {{2015, 2, 26}, 
            14.765925407409668`}, {{2015, 2, 27}, 14.513360977172852`}, {{
            2015, 3, 2}, 14.991425514221191`}, {{2015, 3, 3}, 
            15.117707252502441`}, {{2015, 3, 4}, 14.892203330993652`}, {{2015,
             3, 5}, 14.856122016906738`}, {{2015, 3, 6}, 
            14.387079238891602`}, {{2015, 3, 9}, 14.41413688659668}, {{2015, 
            3, 10}, 14.32393741607666}, {{2015, 3, 11}, 
            14.179616928100586`}, {{2015, 3, 12}, 14.41413688659668}, {{2015, 
            3, 13}, 14.305896759033203`}, {{2015, 3, 16}, 
            14.350997924804688`}, {{2015, 3, 17}, 14.350997924804688`}, {{
            2015, 3, 18}, 14.42315673828125}, {{2015, 3, 19}, 
            14.396098136901855`}, {{2015, 3, 20}, 14.396098136901855`}, {{
            2015, 3, 23}, 14.847105026245117`}, {{2015, 3, 24}, 
            14.955344200134277`}, {{2015, 3, 25}, 15.025956153869629`}, {{
            2015, 3, 26}, 14.462712287902832`}, {{2015, 3, 27}, 
            14.39911937713623}, {{2015, 3, 30}, 14.626235008239746`}, {{2015, 
            3, 31}, 14.762502670288086`}, {{2015, 4, 1}, 
            14.771588325500488`}, {{2015, 4, 2}, 14.662571907043457`}, {{2015,
             4, 6}, 14.544472694396973`}, {{2015, 4, 7}, 
            14.471796989440918`}, {{2015, 4, 8}, 14.517217636108398`}, {{2015,
             4, 9}, 14.562642097473145`}, {{2015, 4, 10}, 
            14.817010879516602`}, {{2015, 4, 13}, 14.717081069946289`}, {{
            2015, 4, 14}, 14.644403457641602`}, {{2015, 4, 15}, 
            14.717081069946289`}, {{2015, 4, 16}, 14.626235008239746`}, {{
            2015, 4, 17}, 14.489965438842773`}, {{2015, 4, 20}, 
            14.544472694396973`}, {{2015, 4, 21}, 14.517217636108398`}, {{
            2015, 4, 22}, 14.362780570983887`}, {{2015, 4, 23}, 
            14.517217636108398`}, {{2015, 4, 24}, 14.61715030670166}, {{2015, 
            4, 27}, 14.517217636108398`}, {{2015, 4, 28}, 
            14.417287826538086`}, {{2015, 4, 29}, 14.408203125}, {{2015, 4, 
            30}, 14.608064651489258`}, {{2015, 5, 1}, 14.780673027038574`}, {{
            2015, 5, 4}, 14.926026344299316`}, {{2015, 5, 5}, 
            14.898773193359375`}, {{2015, 5, 6}, 14.826094627380371`}, {{2015,
             5, 7}, 14.817010879516602`}, {{2015, 5, 8}, 
            14.953278541564941`}, {{2015, 5, 11}, 14.926026344299316`}, {{
            2015, 5, 12}, 14.817010879516602`}, {{2015, 5, 13}, 
            14.889687538146973`}, {{2015, 5, 14}, 14.835180282592773`}, {{
            2015, 5, 15}, 14.735250473022461`}, {{2015, 5, 18}, 
            14.817010879516602`}, {{2015, 5, 19}, 14.826094627380371`}, {{
            2015, 5, 20}, 14.517217636108398`}, {{2015, 5, 21}, 
            14.653484344482422`}, {{2015, 5, 22}, 14.662571907043457`}, {{
            2015, 5, 26}, 14.580810546875}, {{2015, 5, 27}, 
            14.653484344482422`}, {{2015, 5, 28}, 14.707995414733887`}, {{
            2015, 5, 29}, 14.871520042419434`}, {{2015, 6, 1}, 
            14.75341796875}, {{2015, 6, 2}, 14.844265937805176`}, {{2015, 6, 
            3}, 14.88060188293457}, {{2015, 6, 4}, 14.916942596435547`}, {{
            2015, 6, 5}, 14.926026344299316`}, {{2015, 6, 8}, 
            14.844265937805176`}, {{2015, 6, 9}, 14.635319709777832`}, {{2015,
             6, 10}, 14.744336128234863`}, {{2015, 6, 11}, 
            14.898773193359375`}, {{2015, 6, 12}, 14.771588325500488`}, {{
            2015, 6, 15}, 14.571727752685547`}, {{2015, 6, 16}, 
            14.589895248413086`}, {{2015, 6, 17}, 14.662571907043457`}, {{
            2015, 6, 18}, 14.789759635925293`}, {{2015, 6, 19}, 
            14.853350639343262`}, {{2015, 6, 22}, 14.717081069946289`}, {{
            2015, 6, 23}, 14.789759635925293`}, {{2015, 6, 24}, 
            14.22931957244873}, {{2015, 6, 25}, 14.394031524658203`}, {{2015, 
            6, 26}, 14.430634498596191`}, {{2015, 6, 29}, 
            14.0005521774292}, {{2015, 6, 30}, 13.945647239685059`}, {{2015, 
            7, 1}, 14.037155151367188`}, {{2015, 7, 2}, 
            14.165264129638672`}, {{2015, 7, 6}, 14.064606666564941`}, {{2015,
             7, 7}, 13.982250213623047`}, {{2015, 7, 8}, 
            13.963950157165527`}, {{2015, 7, 9}, 13.954798698425293`}, {{2015,
             7, 10}, 14.046305656433105`}, {{2015, 7, 13}, 
            14.037155151367188`}, {{2015, 7, 14}, 14.15611457824707}, {{2015, 
            7, 15}, 14.119510650634766`}, {{2015, 7, 16}, 
            14.018853187561035`}, {{2015, 7, 17}, 13.305099487304688`}, {{
            2015, 7, 20}, 13.350852012634277`}, {{2015, 7, 21}, 
            13.314250946044922`}, {{2015, 7, 22}, 13.41490650177002}, {{2015, 
            7, 23}, 13.149538040161133`}, {{2015, 7, 24}, 
            12.975674629211426`}, {{2015, 7, 27}, 12.728605270385742`}, {{
            2015, 7, 28}, 12.57304573059082}, {{2015, 7, 29}, 
            12.673702239990234`}, {{2015, 7, 30}, 12.820113182067871`}, {{
            2015, 7, 31}, 13.039729118347168`}, {{2015, 8, 3}, 
            12.875017166137695`}, {{2015, 8, 4}, 12.7926607131958}, {{2015, 8,
             5}, 12.939072608947754`}, {{2015, 8, 6}, 12.810961723327637`}, {{
            2015, 8, 7}, 12.728605270385742`}, {{2015, 8, 10}, 
            12.865866661071777`}, {{2015, 8, 11}, 12.85671615600586}, {{2015, 
            8, 12}, 12.481538772583008`}, {{2015, 8, 13}, 
            12.847563743591309`}, {{2015, 8, 14}, 12.847563743591309`}, {{
            2015, 8, 17}, 12.801812171936035`}, {{2015, 8, 18}, 
            12.884167671203613`}, {{2015, 8, 19}, 12.66455078125}, {{2015, 8, 
            20}, 12.737757682800293`}, {{2015, 8, 21}, 
            12.609646797180176`}, {{2015, 8, 24}, 11.447510719299316`}, {{
            2015, 8, 25}, 12.115509986877441`}, {{2015, 8, 26}, 
            11.987401008605957`}, {{2015, 8, 27}, 12.133811950683594`}, {{
            2015, 8, 28}, 12.371729850769043`}, {{2015, 8, 31}, 
            12.35342788696289}, {{2015, 9, 1}, 12.454086303710938`}, {{2015, 
            9, 2}, 12.655401229858398`}, {{2015, 9, 3}, 
            12.582195281982422`}, {{2015, 9, 4}, 12.335125923156738`}, {{2015,
             9, 8}, 12.61879825592041}, {{2015, 9, 9}, 
            12.765209197998047`}, {{2015, 9, 10}, 12.627949714660645`}, {{
            2015, 9, 11}, 12.463235855102539`}, {{2015, 9, 14}, 
            12.536441802978516`}, {{2015, 9, 15}, 12.44493579864502}, {{2015, 
            9, 16}, 12.554742813110352`}, {{2015, 9, 17}, 
            12.600497245788574`}, {{2015, 9, 18}, 12.298523902893066`}, {{
            2015, 9, 21}, 12.362580299377441`}, {{2015, 9, 22}, 
            11.37430477142334}, {{2015, 9, 23}, 11.445423126220703`}, {{2015, 
            9, 24}, 11.3438081741333}, {{2015, 9, 25}, 
            11.306859016418457`}, {{2015, 9, 28}, 10.965065956115723`}, {{
            2015, 9, 29}, 10.863452911376953`}, {{2015, 9, 30}, 
            10.798788070678711`}, {{2015, 10, 1}, 10.724888801574707`}, {{
            2015, 10, 2}, 10.761839866638184`}, {{2015, 10, 5}, 
            11.260669708251953`}, {{2015, 10, 6}, 11.316096305847168`}, {{
            2015, 10, 7}, 11.445423126220703`}, {{2015, 10, 8}, 
            11.482373237609863`}, {{2015, 10, 9}, 11.306859016418457`}, {{
            2015, 10, 12}, 11.251433372497559`}, {{2015, 10, 13}, 
            11.057442665100098`}, {{2015, 10, 14}, 10.965065956115723`}, {{
            2015, 10, 15}, 11.500849723815918`}, {{2015, 10, 16}, 
            11.463898658752441`}, {{2015, 10, 19}, 11.52856159210205}, {{2015,
             10, 20}, 11.510087013244629`}, {{2015, 10, 21}, 
            11.417709350585938`}, {{2015, 10, 22}, 11.574749946594238`}, {{
            2015, 10, 23}, 11.482373237609863`}, {{2015, 10, 26}, 
            11.676363945007324`}, {{2015, 10, 27}, 11.676363945007324`}, {{
            2015, 10, 28}, 11.759501457214355`}, {{2015, 10, 29}, 
            11.796453475952148`}, {{2015, 10, 30}, 11.851879119873047`}, {{
            2015, 11, 2}, 11.750264167785645`}, {{2015, 11, 3}, 
            11.981204986572266`}, {{2015, 11, 4}, 12.03663158416748}, {{2015, 
            11, 5}, 12.082818984985352`}, {{2015, 11, 6}, 
            12.07358169555664}, {{2015, 11, 9}, 11.81492805480957}, {{2015, 
            11, 10}, 11.750264167785645`}, {{2015, 11, 11}, 
            11.74102783203125}, {{2015, 11, 12}, 11.750264167785645`}, {{2015,
             11, 13}, 11.40847396850586}, {{2015, 11, 16}, 
            11.500849723815918`}, {{2015, 11, 17}, 11.306859016418457`}, {{
            2015, 11, 18}, 10.93735408782959}, {{2015, 11, 19}, 
            10.798788070678711`}, {{2015, 11, 20}, 11.020493507385254`}, {{
            2015, 11, 23}, 11.159056663513184`}, {{2015, 11, 24}, 
            11.094392776489258`}, {{2015, 11, 25}, 11.251433372497559`}, {{
            2015, 11, 27}, 11.334571838378906`}, {{2015, 11, 30}, 
            11.112868309020996`}, {{2015, 12, 1}, 11.103630065917969`}, {{
            2015, 12, 2}, 11.103630065917969`}, {{2015, 12, 3}, 
            10.946590423583984`}, {{2015, 12, 4}, 11.01125431060791}, {{2015, 
            12, 7}, 9.745699882507324}, {{2015, 12, 8}, 9.006689071655273}, {{
            2015, 12, 9}, 9.071352005004883}, {{2015, 12, 10}, 
            9.006689071655273}, {{2015, 12, 11}, 8.701847076416016}, {{2015, 
            12, 14}, 8.34157943725586}, {{2015, 12, 15}, 
            8.748034477233887}, {{2015, 12, 16}, 8.729559898376465}, {{2015, 
            12, 17}, 8.627946853637695}, {{2015, 12, 18}, 
            8.646422386169434}, {{2015, 12, 21}, 8.720560073852539}, {{2015, 
            12, 22}, 8.78605842590332}, {{2015, 12, 23}, 8.823486328125}, {{
            2015, 12, 24}, 8.907697677612305}, {{2015, 12, 28}, 
            8.89833927154541}, {{2015, 12, 29}, 8.879627227783203}, {{2015, 
            12, 30}, 8.888981819152832}, {{2015, 12, 31}, 
            8.720560073852539}, {{2016, 1, 4}, 8.65506362915039}, {{2016, 1, 
            5}, 8.832842826843262}, {{2016, 1, 6}, 8.823486328125}, {{2016, 1,
             7}, 8.739274978637695}, {{2016, 1, 8}, 8.851555824279785}, {{
            2016, 1, 11}, 8.65506362915039}, {{2016, 1, 12}, 
            8.664420127868652}, {{2016, 1, 13}, 8.664420127868652}, {{2016, 1,
             14}, 8.411785125732422}, {{2016, 1, 15}, 8.262077331542969}, {{
            2016, 1, 19}, 8.140436172485352}, {{2016, 1, 20}, 
            7.756807804107666}, {{2016, 1, 21}, 8.215291976928711}, {{2016, 1,
             22}, 8.215291976928711}, {{2016, 1, 25}, 8.093652725219727}, {{
            2016, 1, 26}, 8.112366676330566}, {{2016, 1, 27}, 
            8.159152030944824}, {{2016, 1, 28}, 8.112366676330566}, {{2016, 1,
             29}, 8.149794578552246}, {{2016, 2, 1}, 8.159152030944824}, {{
            2016, 2, 2}, 7.943944454193115}, {{2016, 2, 3}, 
            7.794234752655029}, {{2016, 2, 4}, 8.065583229064941}, {{2016, 2, 
            5}, 8.159152030944824}, {{2016, 2, 8}, 7.934586048126221}, {{2016,
             2, 9}, 7.812948703765869}, {{2016, 2, 10}, 7.841019153594971}, {{
            2016, 2, 11}, 7.522887229919434}, {{2016, 2, 12}, 
            7.579028129577637}, {{2016, 2, 16}, 7.831662178039551}, {{2016, 2,
             17}, 8.439855575561523}, {{2016, 2, 18}, 8.542780876159668}, {{
            2016, 2, 19}, 8.76734447479248}, {{2016, 2, 22}, 
            8.74863052368164}, {{2016, 2, 23}, 8.636348724365234}, {{2016, 2, 
            24}, 8.402427673339844}, {{2016, 2, 25}, 8.486639976501465}, {{
            2016, 2, 26}, 8.739274978637695}, {{2016, 2, 29}, 
            8.757987022399902}, {{2016, 3, 1}, 8.842199325561523}, {{2016, 3, 
            2}, 8.963838577270508}, {{2016, 3, 3}, 9.010622024536133}, {{2016,
             3, 4}, 8.683133125305176}, {{2016, 3, 7}, 8.888981819152832}, {{
            2016, 3, 8}, 8.879627227783203}, {{2016, 3, 9}, 
            8.870269775390625}, {{2016, 3, 10}, 8.720560073852539}, {{2016, 3,
             11}, 8.926410675048828}, {{2016, 3, 14}, 9.001264572143555}, {{
            2016, 3, 15}, 8.89833927154541}, {{2016, 3, 16}, 
            8.888981819152832}, {{2016, 3, 17}, 9.150973320007324}, {{2016, 3,
             18}, 9.188401222229004}, {{2016, 3, 21}, 9.057406425476074}, {{
            2016, 3, 22}, 9.009918212890625}, {{2016, 3, 23}, 
            9.332039833068848}, {{2016, 3, 24}, 9.966808319091797}, {{2016, 3,
             28}, 10.165763854980469`}, {{2016, 3, 29}, 10.14681625366211}, {{
            2016, 3, 30}, 10.393144607543945`}, {{2016, 3, 31}, 
            10.288928031921387`}, {{2016, 4, 1}, 10.279455184936523`}, {{2016,
             4, 4}, 10.4215669631958}, {{2016, 4, 5}, 10.269980430603027`}, {{
            2016, 4, 6}, 10.260505676269531`}, {{2016, 4, 7}, 
            10.269980430603027`}, {{2016, 4, 8}, 10.232083320617676`}, {{2016,
             4, 11}, 10.440515518188477`}, {{2016, 4, 12}, 
            10.402618408203125`}, {{2016, 4, 13}, 10.554203987121582`}, {{
            2016, 4, 14}, 10.393144607543945`}, {{2016, 4, 15}, 
            10.43104076385498}, {{2016, 4, 18}, 10.440515518188477`}, {{2016, 
            4, 19}, 10.326824188232422`}, {{2016, 4, 20}, 
            10.042600631713867`}, {{2016, 4, 21}, 9.97628116607666}, {{2016, 
            4, 22}, 9.91943645477295}, {{2016, 4, 25}, 9.720479011535645}, {{
            2016, 4, 26}, 9.90048885345459}, {{2016, 4, 27}, 
            9.843643188476562}, {{2016, 4, 28}, 9.834169387817383}, {{2016, 4,
             29}, 9.568892478942871}, {{2016, 5, 2}, 9.58784008026123}, {{
            2016, 5, 3}, 9.530997276306152}, {{2016, 5, 4}, 
            9.654159545898438}, {{2016, 5, 5}, 9.58784008026123}, {{2016, 5, 
            6}, 9.379408836364746}, {{2016, 5, 9}, 9.673108100891113}, {{2016,
             5, 10}, 9.635211944580078}, {{2016, 5, 11}, 
            7.863545894622803}, {{2016, 5, 12}, 7.778278350830078}, {{2016, 5,
             13}, 7.778278350830078}, {{2016, 5, 16}, 7.749855995178223}, {{
            2016, 5, 17}, 7.787752151489258}, {{2016, 5, 18}, 
            7.721433162689209}, {{2016, 5, 19}, 7.579320907592773}, {{2016, 5,
             20}, 7.607743263244629}, {{2016, 5, 23}, 7.844596862792969}, {{
            2016, 5, 24}, 7.740382194519043}, {{2016, 5, 25}, 
            7.986710548400879}, {{2016, 5, 26}, 8.081450462341309}, {{2016, 5,
             27}, 8.12882137298584}, {{2016, 5, 31}, 8.251985549926758}, {{
            2016, 6, 1}, 8.214089393615723}, {{2016, 6, 2}, 
            8.280407905578613}, {{2016, 6, 3}, 8.251985549926758}, {{2016, 6, 
            6}, 8.384624481201172}, {{2016, 6, 7}, 8.403572082519531}, {{2016,
             6, 8}, 8.394097328186035}, {{2016, 6, 9}, 8.223563194274902}, {{
            2016, 6, 10}, 8.06250286102295}, {{2016, 6, 13}, 
            8.176192283630371}, {{2016, 6, 14}, 7.986710548400879}, {{2016, 6,
             15}, 8.100399017333984}, {{2016, 6, 16}, 8.11934757232666}, {{
            2016, 6, 17}, 8.157243728637695}, {{2016, 6, 20}, 
            8.375150680541992}, {{2016, 6, 21}, 8.299356460571289}, {{2016, 6,
             22}, 8.33647346496582}, {{2016, 6, 23}, 8.403701782226562}, {{
            2016, 6, 24}, 8.230826377868652}, {{2016, 6, 27}, 
            7.741010665893555}, {{2016, 6, 28}, 7.827447891235352}, {{2016, 6,
             29}, 8.134784698486328}, {{2016, 6, 30}, 8.096366882324219}, {{
            2016, 7, 1}, 8.250035285949707}, {{2016, 7, 5}, 
            8.1251802444458}, {{2016, 7, 6}, 8.000324249267578}, {{2016, 7, 
            7}, 8.163596153259277}, {{2016, 7, 8}, 8.269243240356445}, {{2016,
             7, 11}, 8.490140914916992}, {{2016, 7, 12}, 
            8.643807411193848}, {{2016, 7, 13}, 8.653411865234375}, {{2016, 7,
             14}, 8.711036682128906}, {{2016, 7, 15}, 8.643807411193848}, {{
            2016, 7, 18}, 8.634203910827637}, {{2016, 7, 19}, 
            8.586181640625}, {{2016, 7, 20}, 8.663018226623535}, {{2016, 7, 
            21}, 8.643807411193848}, {{2016, 7, 22}, 8.595787048339844}, {{
            2016, 7, 25}, 8.653411865234375}, {{2016, 7, 26}, 
            8.711036682128906}, {{2016, 7, 27}, 8.778268814086914}, {{2016, 7,
             28}, 8.797475814819336}, {{2016, 7, 29}, 8.826287269592285}, {{
            2016, 8, 1}, 8.864705085754395}, {{2016, 8, 2}, 
            8.365285873413086}, {{2016, 8, 3}, 8.250035285949707}, {{2016, 8, 
            4}, 8.62459945678711}, {{2016, 8, 5}, 8.739850997924805}, {{2016, 
            8, 8}, 8.778268814086914}, {{2016, 8, 9}, 8.72064208984375}, {{
            2016, 8, 10}, 8.701434135437012}, {{2016, 8, 11}, 
            8.807080268859863}, {{2016, 8, 12}, 8.739850997924805}, {{2016, 8,
             15}, 8.864705085754395}, {{2016, 8, 16}, 8.845498085021973}, {{
            2016, 8, 17}, 8.173201560974121}, {{2016, 8, 18}, 
            7.942700386047363}, {{2016, 8, 19}, 8.01953411102295}, {{2016, 8, 
            22}, 8.057950973510742}, {{2016, 8, 23}, 8.163596153259277}, {{
            2016, 8, 24}, 8.144387245178223}, {{2016, 8, 25}, 
            8.086763381958008}, {{2016, 8, 26}, 8.115574836730957}, {{2016, 8,
             29}, 8.163596153259277}, {{2016, 8, 30}, 8.230826377868652}, {{
            2016, 8, 31}, 8.134784698486328}, {{2016, 9, 1}, 
            8.096366882324219}, {{2016, 9, 2}, 8.153992652893066}, {{2016, 9, 
            6}, 8.1251802444458}, {{2016, 9, 7}, 8.211617469787598}, {{2016, 
            9, 8}, 8.374890327453613}, {{2016, 9, 9}, 8.163596153259277}, {{
            2016, 9, 12}, 8.1251802444458}, {{2016, 9, 13}, 
            8.096366882324219}, {{2016, 9, 14}, 8.086763381958008}, {{2016, 9,
             15}, 8.096366882324219}, {{2016, 9, 16}, 8.182805061340332}, {{
            2016, 9, 19}, 8.173201560974121}, {{2016, 9, 20}, 
            8.115574836730957}, {{2016, 9, 21}, 8.095952987670898}, {{2016, 9,
             22}, 8.2518310546875}, {{2016, 9, 23}, 8.300543785095215}, {{
            2016, 9, 26}, 8.086210250854492}, {{2016, 9, 27}, 
            8.05698299407959}, {{2016, 9, 28}, 8.06672477722168}, {{2016, 9, 
            29}, 8.105694770812988}, {{2016, 9, 30}, 8.154406547546387}, {{
            2016, 10, 3}, 8.203119277954102}, {{2016, 10, 4}, 
            7.979043006896973}, {{2016, 10, 5}, 7.9498162269592285`}, {{2016, 
            10, 6}, 7.813422679901123}, {{2016, 10, 7}, 7.793937683105469}, {{
            2016, 10, 10}, 7.784194469451904}, {{2016, 10, 11}, 
            7.472437858581543}, {{2016, 10, 12}, 7.550376892089844}, {{2016, 
            10, 13}, 7.394498348236084}, {{2016, 10, 14}, 
            7.345786094665527}, {{2016, 10, 17}, 7.189907550811768}, {{2016, 
            10, 18}, 7.248361587524414}, {{2016, 10, 19}, 
            7.297073841094971}, {{2016, 10, 20}, 7.277588844299316}, {{2016, 
            10, 21}, 7.248361587524414}, {{2016, 10, 24}, 
            7.287331581115723}, {{2016, 10, 25}, 7.199649333953857}, {{2016, 
            10, 26}, 7.267846584320068}, {{2016, 10, 27}, 
            7.053513526916504}, {{2016, 10, 28}, 7.111968040466309}, {{2016, 
            10, 31}, 7.082740306854248}, {{2016, 11, 1}, 
            7.053513526916504}, {{2016, 11, 2}, 7.063255786895752}, {{2016, 
            11, 3}, 7.0924835205078125`}, {{2016, 11, 4}, 
            7.102225303649902}, {{2016, 11, 7}, 7.277588844299316}, {{2016, 
            11, 8}, 7.316558837890625}, {{2016, 11, 9}, 7.219134330749512}, {{
            2016, 11, 10}, 7.910846710205078}, {{2016, 11, 11}, 
            8.232346534729004}, {{2016, 11, 14}, 8.446680068969727}, {{2016, 
            11, 15}, 8.446680068969727}, {{2016, 11, 16}, 
            8.54410457611084}, {{2016, 11, 17}, 8.534361839294434}, {{2016, 
            11, 18}, 9.011739730834961}, {{2016, 11, 21}, 
            9.342982292175293}, {{2016, 11, 22}, 9.498861312866211}, {{2016, 
            11, 23}, 9.586543083190918}, {{2016, 11, 25}, 
            9.576800346374512}, {{2016, 11, 28}, 9.342982292175293}, {{2016, 
            11, 29}, 9.469634056091309}, {{2016, 11, 30}, 
            9.381952285766602}, {{2016, 12, 1}, 9.372209548950195}, {{2016, 
            12, 2}, 9.381952285766602}, {{2016, 12, 5}, 9.450149536132812}, {{
            2016, 12, 6}, 9.469634056091309}, {{2016, 12, 7}, 
            9.547574043273926}, {{2016, 12, 8}, 9.644997596740723}, {{2016, 
            12, 9}, 9.586543083190918}, {{2016, 12, 12}, 
            9.567057609558105}, {{2016, 12, 13}, 9.567057609558105}, {{2016, 
            12, 14}, 9.586543083190918}, {{2016, 12, 15}, 
            9.606027603149414}, {{2016, 12, 16}, 9.596285820007324}, {{2016, 
            12, 19}, 9.565277099609375}, {{2016, 12, 20}, 
            9.663888931274414}, {{2016, 12, 21}, 9.555416107177734}, {{2016, 
            12, 22}, 9.042638778686523}, {{2016, 12, 23}, 
            9.032777786254883}, {{2016, 12, 27}, 9.052499771118164}, {{2016, 
            12, 28}, 8.963749885559082}, {{2016, 12, 29}, 
            8.88486099243164}, {{2016, 12, 30}, 8.845417022705078}, {{2017, 1,
             3}, 8.69749927520752}, {{2017, 1, 4}, 8.736944198608398}, {{2017,
             1, 5}, 8.796111106872559}, {{2017, 1, 6}, 8.86513900756836}, {{
            2017, 1, 9}, 8.93416690826416}, {{2017, 1, 10}, 
            9.003194808959961}, {{2017, 1, 11}, 8.953888893127441}, {{2017, 1,
             12}, 9.032777786254883}, {{2017, 1, 13}, 8.993332862854004}, {{
            2017, 1, 17}, 9.022915840148926}, {{2017, 1, 18}, 
            9.091944694519043}, {{2017, 1, 19}, 8.875}, {{2017, 1, 20}, 
            8.904582977294922}, {{2017, 1, 23}, 8.845417022705078}, {{2017, 1,
             24}, 8.904582977294922}, {{2017, 1, 25}, 9.170833587646484}, {{
            2017, 1, 26}, 9.141250610351562}, {{2017, 1, 27}, 
            8.973611831665039}, {{2017, 1, 30}, 8.914443969726562}, {{2017, 1,
             31}, 8.796111106872559}, {{2017, 2, 1}, 8.855277061462402}, {{
            2017, 2, 2}, 8.8059720993042}, {{2017, 2, 3}, 8.875}, {{2017, 2, 
            6}, 8.796111106872559}, {{2017, 2, 7}, 8.746805191040039}, {{2017,
             2, 8}, 8.736944198608398}, {{2017, 2, 9}, 8.746805191040039}, {{
            2017, 2, 10}, 8.875}, {{2017, 2, 13}, 9.032777786254883}, {{2017, 
            2, 14}, 9.072221755981445}, {{2017, 2, 15}, 9.220139503479004}, {{
            2017, 2, 16}, 9.091944694519043}, {{2017, 2, 17}, 
            9.022915840148926}, {{2017, 2, 21}, 9.151110649108887}, {{2017, 2,
             22}, 9.170833587646484}, {{2017, 2, 23}, 8.93416690826416}, {{
            2017, 2, 24}, 8.894722938537598}, {{2017, 2, 27}, 
            9.072221755981445}, {{2017, 2, 28}, 8.69749927520752}, {{2017, 3, 
            1}, 8.894722938537598}, {{2017, 3, 2}, 8.973611831665039}, {{2017,
             3, 3}, 8.786250114440918}, {{2017, 3, 6}, 8.628472328186035}, {{
            2017, 3, 7}, 8.618610382080078}, {{2017, 3, 8}, 
            8.638333320617676}, {{2017, 3, 9}, 8.234027862548828}, {{2017, 3, 
            10}, 8.411527633666992}, {{2017, 3, 13}, 8.38194465637207}, {{
            2017, 3, 14}, 8.32277774810791}, {{2017, 3, 15}, 
            8.342499732971191}, {{2017, 3, 16}, 8.539722442626953}, {{2017, 3,
             17}, 8.628472328186035}, {{2017, 3, 20}, 8.638333320617676}, {{
            2017, 3, 21}, 8.480555534362793}, {{2017, 3, 22}, 
            8.420000076293945}, {{2017, 3, 23}, 8.479999542236328}, {{2017, 3,
             24}, 8.40999984741211}, {{2017, 3, 27}, 8.300000190734863}, {{
            2017, 3, 28}, 8.300000190734863}, {{2017, 3, 29}, 
            8.479999542236328}, {{2017, 3, 30}, 8.520000457763672}, {{2017, 3,
             31}, 8.710000038146973}, {{2017, 4, 3}, 8.59000015258789}, {{
            2017, 4, 4}, 8.619999885559082}, {{2017, 4, 5}, 
            9.609999656677246}, {{2017, 4, 6}, 9.760000228881836}, {{2017, 4, 
            7}, 9.65999984741211}, {{2017, 4, 10}, 9.6899995803833}, {{2017, 
            4, 11}, 9.609999656677246}, {{2017, 4, 12}, 9.420000076293945}, {{
            2017, 4, 13}, 9.5}, {{2017, 4, 17}, 9.510000228881836}, {{2017, 4,
             18}, 9.529999732971191}, {{2017, 4, 19}, 9.600000381469727}, {{
            2017, 4, 20}, 9.619999885559082}, {{2017, 4, 21}, 
            9.59000015258789}, {{2017, 4, 24}, 9.720000267028809}, {{2017, 4, 
            25}, 9.729999542236328}, {{2017, 4, 26}, 9.819999694824219}, {{
            2017, 4, 27}, 9.649999618530273}, {{2017, 4, 28}, 
            9.680000305175781}, {{2017, 5, 1}, 9.630000114440918}, {{2017, 5, 
            2}, 9.609999656677246}, {{2017, 5, 3}, 9.579999923706055}, {{2017,
             5, 4}, 9.539999961853027}, {{2017, 5, 5}, 9.5600004196167}, {{
            2017, 5, 8}, 9.619999885559082}, {{2017, 5, 9}, 
            9.569999694824219}, {{2017, 5, 10}, 9.510000228881836}, {{2017, 5,
             11}, 9.399999618530273}, {{2017, 5, 12}, 9.229999542236328}, {{
            2017, 5, 15}, 9.1899995803833}, {{2017, 5, 16}, 
            8.8100004196167}, {{2017, 5, 17}, 8.779999732971191}, {{2017, 5, 
            18}, 8.729999542236328}, {{2017, 5, 19}, 8.6899995803833}, {{2017,
             5, 22}, 8.710000038146973}, {{2017, 5, 23}, 
            8.609999656677246}, {{2017, 5, 24}, 8.670000076293945}, {{2017, 5,
             25}, 8.779999732971191}, {{2017, 5, 26}, 8.960000038146973}, {{
            2017, 5, 30}, 8.90999984741211}, {{2017, 5, 31}, 
            8.819999694824219}, {{2017, 6, 1}, 9.029999732971191}, {{2017, 6, 
            2}, 9}, {{2017, 6, 5}, 8.989999771118164}, {{2017, 6, 6}, 
            9.010000228881836}, {{2017, 6, 7}, 9}, {{2017, 6, 8}, 
            9.1899995803833}, {{2017, 6, 9}, 9.109999656677246}, {{2017, 6, 
            12}, 9.199999809265137}, {{2017, 6, 13}, 9.109999656677246}, {{
            2017, 6, 14}, 8.920000076293945}, {{2017, 6, 15}, 
            8.949999809265137}, {{2017, 6, 16}, 8.75}, {{2017, 6, 19}, 
            8.720000267028809}}, 
         "max" -> {{{2014, 6, 23}, 9.901744842529297}, {{2014, 6, 24}, 
            9.849074363708496}, {{2014, 6, 25}, 9.770648956298828}, {{2014, 6,
             26}, 9.752900123596191}, {{2014, 6, 27}, 9.717403411865234}, {{
            2014, 6, 30}, 9.664156913757324}, {{2014, 7, 1}, 
            9.806148529052734}, {{2014, 7, 2}, 9.859392166137695}, {{2014, 7, 
            3}, 10.028006553649902`}, {{2014, 7, 7}, 10.01025676727295}, {{
            2014, 7, 8}, 9.983633041381836}, {{2014, 7, 9}, 
            9.974759101867676}, {{2014, 7, 10}, 9.815022468566895}, {{2014, 7,
             11}, 9.752900123596191}, {{2014, 7, 14}, 9.930387496948242}, {{
            2014, 7, 15}, 9.930387496948242}, {{2014, 7, 16}, 
            9.957009315490723}, {{2014, 7, 17}, 9.939262390136719}, {{2014, 7,
             18}, 9.921513557434082}, {{2014, 7, 21}, 9.948136329650879}, {{
            2014, 7, 22}, 10.019131660461426`}, {{2014, 7, 23}, 
            9.921513557434082}, {{2014, 7, 24}, 10.063502311706543`}, {{2014, 
            7, 25}, 9.948136329650879}, {{2014, 7, 28}, 9.770648956298828}, {{
            2014, 7, 29}, 9.859392166137695}, {{2014, 7, 30}, 
            10.08125114440918}, {{2014, 7, 31}, 10.391852378845215`}, {{2014, 
            8, 1}, 10.258739471435547`}, {{2014, 8, 4}, 
            10.294235229492188`}, {{2014, 8, 5}, 10.285360336303711`}, {{2014,
             8, 6}, 10.19661808013916}, {{2014, 8, 7}, 
            10.187742233276367`}, {{2014, 8, 8}, 10.107873916625977`}, {{2014,
             8, 11}, 10.214366912841797`}, {{2014, 8, 12}, 
            10.187742233276367`}, {{2014, 8, 13}, 10.26761245727539}, {{2014, 
            8, 14}, 10.311984062194824`}, {{2014, 8, 15}, 
            10.338605880737305`}, {{2014, 8, 18}, 10.24986457824707}, {{2014, 
            8, 19}, 10.418477058410645`}, {{2014, 8, 20}, 
            10.498345375061035`}, {{2014, 8, 21}, 10.036879539489746`}, {{
            2014, 8, 22}, 9.806148529052734}, {{2014, 8, 25}, 
            9.770648956298828}, {{2014, 8, 26}, 9.859392166137695}, {{2014, 8,
             27}, 10.19661808013916}, {{2014, 8, 28}, 10.391852378845215`}, {{
            2014, 8, 29}, 10.471722602844238`}, {{2014, 9, 2}, 
            11.51889419555664}, {{2014, 9, 3}, 11.581014633178711`}, {{2014, 
            9, 4}, 11.5277681350708}, {{2014, 9, 5}, 11.412402153015137`}, {{
            2014, 9, 8}, 11.51889419555664}, {{2014, 9, 9}, 
            11.22603988647461}, {{2014, 9, 10}, 11.057429313659668`}, {{2014, 
            9, 11}, 11.101801872253418`}, {{2014, 9, 12}, 
            11.581014633178711`}, {{2014, 9, 15}, 11.49227237701416}, {{2014, 
            9, 16}, 11.581014633178711`}, {{2014, 9, 17}, 
            11.758502006530762`}, {{2014, 9, 18}, 11.660883903503418`}, {{
            2014, 9, 19}, 11.785124778747559`}, {{2014, 9, 22}, 
            11.696381568908691`}, {{2014, 9, 23}, 11.447900772094727`}, {{
            2014, 9, 24}, 11.556154251098633`}, {{2014, 9, 25}, 
            11.466571807861328`}, {{2014, 9, 26}, 11.43073844909668}, {{2014, 
            9, 29}, 11.135115623474121`}, {{2014, 9, 30}, 
            10.920116424560547`}, {{2014, 10, 1}, 10.875327110290527`}, {{
            2014, 10, 2}, 10.785744667053223`}, {{2014, 10, 3}, 
            10.749910354614258`}, {{2014, 10, 6}, 10.839494705200195`}, {{
            2014, 10, 7}, 10.561786651611328`}, {{2014, 10, 8}, 
            10.534913063049316`}, {{2014, 10, 9}, 10.543869972229004`}, {{
            2014, 10, 10}, 10.776784896850586`}, {{2014, 10, 13}, 
            10.911160469055176`}, {{2014, 10, 14}, 11.197823524475098`}, {{
            2014, 10, 15}, 10.929076194763184`}, {{2014, 10, 16}, 
            10.86636734008789}, {{2014, 10, 17}, 10.839494705200195`}, {{2014,
             10, 20}, 11.081365585327148`}, {{2014, 10, 21}, 
            11.16199016571045}, {{2014, 10, 22}, 11.3590726852417}, {{2014, 
            10, 23}, 11.32323932647705}, {{2014, 10, 24}, 
            11.215740203857422`}, {{2014, 10, 27}, 11.197823524475098`}, {{
            2014, 10, 28}, 11.206783294677734`}, {{2014, 10, 29}, 
            11.188864707946777`}, {{2014, 10, 30}, 11.26053237915039}, {{2014,
             10, 31}, 11.43073844909668}, {{2014, 11, 3}, 
            11.547196388244629`}, {{2014, 11, 4}, 11.780109405517578`}, {{
            2014, 11, 5}, 11.789068222045898`}, {{2014, 11, 6}, 
            11.645736694335938`}, {{2014, 11, 7}, 11.672611236572266`}, {{
            2014, 11, 10}, 11.798027038574219`}, {{2014, 11, 11}, 
            11.798027038574219`}, {{2014, 11, 12}, 12.030942916870117`}, {{
            2014, 11, 13}, 12.09365177154541}, {{2014, 11, 14}, 
            12.09365177154541}, {{2014, 11, 17}, 12.030942916870117`}, {{2014,
             11, 18}, 11.61886215209961}, {{2014, 11, 19}, 
            12.666979789733887`}, {{2014, 11, 20}, 12.613227844238281`}, {{
            2014, 11, 21}, 12.658021926879883`}, {{2014, 11, 24}, 
            12.837185859680176`}, {{2014, 11, 25}, 12.819269180297852`}, {{
            2014, 11, 26}, 12.622187614440918`}, {{2014, 11, 28}, 
            12.756561279296875`}, {{2014, 12, 1}, 12.541563034057617`}, {{
            2014, 12, 2}, 12.658021926879883`}, {{2014, 12, 3}, 
            13.132807731628418`}, {{2014, 12, 4}, 13.016350746154785`}, {{
            2014, 12, 5}, 12.926769256591797`}, {{2014, 12, 8}, 
            12.873018264770508`}, {{2014, 12, 9}, 13.258223533630371`}, {{
            2014, 12, 10}, 13.553847312927246`}, {{2014, 12, 11}, 
            14.619879722595215`}, {{2014, 12, 12}, 14.996126174926758`}, {{
            2014, 12, 15}, 15.112582206726074`}, {{2014, 12, 16}, 
            15.569453239440918`}, {{2014, 12, 17}, 15.641118049621582`}, {{
            2014, 12, 18}, 15.918827056884766`}, {{2014, 12, 19}, 
            16.017364501953125`}, {{2014, 12, 22}, 16.12486457824707}, {{2014,
             12, 23}, 16.218162536621094`}, {{2014, 12, 24}, 
            16.173059463500977`}, {{2014, 12, 26}, 16.3985595703125}, {{2014, 
            12, 29}, 16.389541625976562`}, {{2014, 12, 30}, 
            16.371501922607422`}, {{2014, 12, 31}, 16.533863067626953`}, {{
            2015, 1, 2}, 16.32640266418457}, {{2015, 1, 5}, 
            15.965596199035645`}, {{2015, 1, 6}, 15.884416580200195`}, {{2015,
             1, 7}, 16.055797576904297`}, {{2015, 1, 8}, 
            16.218162536621094`}, {{2015, 1, 9}, 15.785195350646973`}, {{2015,
             1, 12}, 15.622833251953125`}, {{2015, 1, 13}, 
            15.722053527832031`}, {{2015, 1, 14}, 15.722053527832031`}, {{
            2015, 1, 15}, 15.631855010986328`}, {{2015, 1, 16}, 
            15.722053527832031`}, {{2015, 1, 20}, 15.704014778137207`}, {{
            2015, 1, 21}, 15.099664688110352`}, {{2015, 1, 22}, 
            15.31614875793457}, {{2015, 1, 23}, 15.352231979370117`}, {{2015, 
            1, 26}, 15.243988990783691`}, {{2015, 1, 27}, 
            15.298108100891113`}, {{2015, 1, 28}, 15.532630920410156`}, {{
            2015, 1, 29}, 15.451449394226074`}, {{2015, 1, 30}, 
            15.496551513671875`}, {{2015, 2, 2}, 15.613812446594238`}, {{2015,
             2, 3}, 17.499013900756836`}, {{2015, 2, 4}, 
            15.974617004394531`}, {{2015, 2, 5}, 15.496551513671875`}, {{2015,
             2, 6}, 15.451449394226074`}, {{2015, 2, 9}, 
            15.442431449890137`}, {{2015, 2, 10}, 15.460469245910645`}, {{
            2015, 2, 11}, 15.5596923828125}, {{2015, 2, 12}, 
            15.57773208618164}, {{2015, 2, 13}, 15.505573272705078`}, {{2015, 
            2, 17}, 15.343207359313965`}, {{2015, 2, 18}, 
            15.532630920410156`}, {{2015, 2, 19}, 15.388306617736816`}, {{
            2015, 2, 20}, 15.225948333740234`}, {{2015, 2, 23}, 
            15.171828269958496`}, {{2015, 2, 24}, 15.253007888793945`}, {{
            2015, 2, 25}, 15.243988990783691`}, {{2015, 2, 26}, 
            15.063587188720703`}, {{2015, 2, 27}, 15.153787612915039`}, {{
            2015, 3, 2}, 15.379290580749512`}, {{2015, 3, 3}, 
            15.352231979370117`}, {{2015, 3, 4}, 15.31614875793457}, {{2015, 
            3, 5}, 15.009462356567383`}, {{2015, 3, 6}, 
            14.747880935668945`}, {{2015, 3, 9}, 14.639641761779785`}, {{2015,
             3, 10}, 14.54041862487793}, {{2015, 3, 11}, 
            14.621599197387695`}, {{2015, 3, 12}, 14.648662567138672`}, {{
            2015, 3, 13}, 14.585519790649414`}, {{2015, 3, 16}, 
            14.639641761779785`}, {{2015, 3, 17}, 14.72082233428955}, {{2015, 
            3, 18}, 14.747880935668945`}, {{2015, 3, 19}, 
            14.738862037658691`}, {{2015, 3, 20}, 14.756902694702148`}, {{
            2015, 3, 23}, 15.271049499511719`}, {{2015, 3, 24}, 
            15.370268821716309`}, {{2015, 3, 25}, 15.371173858642578`}, {{
            2015, 3, 26}, 14.935111999511719`}, {{2015, 3, 27}, 
            14.726165771484375`}, {{2015, 3, 30}, 15.18947982788086}, {{2015, 
            3, 31}, 15.26215648651123}, {{2015, 4, 1}, 
            15.035040855407715`}, {{2015, 4, 2}, 14.898773193359375`}, {{2015,
             4, 6}, 14.762502670288086`}, {{2015, 4, 7}, 
            14.680741310119629`}, {{2015, 4, 8}, 14.735250473022461`}, {{2015,
             4, 9}, 14.926026344299316`}, {{2015, 4, 10}, 
            15.280327796936035`}, {{2015, 4, 13}, 15.125887870788574`}, {{
            2015, 4, 14}, 14.75341796875}, {{2015, 4, 15}, 
            15.071381568908691`}, {{2015, 4, 16}, 14.980535507202148`}, {{
            2015, 4, 17}, 14.853350639343262`}, {{2015, 4, 20}, 
            14.744336128234863`}, {{2015, 4, 21}, 14.726165771484375`}, {{
            2015, 4, 22}, 14.635319709777832`}, {{2015, 4, 23}, 
            14.744336128234863`}, {{2015, 4, 24}, 14.780673027038574`}, {{
            2015, 4, 27}, 14.789759635925293`}, {{2015, 4, 28}, 
            14.653484344482422`}, {{2015, 4, 29}, 14.580810546875}, {{2015, 4,
             30}, 14.916942596435547`}, {{2015, 5, 1}, 
            15.162227630615234`}, {{2015, 5, 4}, 15.207649230957031`}, {{2015,
             5, 5}, 15.171311378479004`}, {{2015, 5, 6}, 
            15.125887870788574`}, {{2015, 5, 7}, 15.08954906463623}, {{2015, 
            5, 8}, 15.134971618652344`}, {{2015, 5, 11}, 
            15.144055366516113`}, {{2015, 5, 12}, 15.062296867370605`}, {{
            2015, 5, 13}, 15.298497200012207`}, {{2015, 5, 14}, 
            15.243988990783691`}, {{2015, 5, 15}, 14.935111999511719`}, {{
            2015, 5, 18}, 14.980535507202148`}, {{2015, 5, 19}, 
            15.00778865814209}, {{2015, 5, 20}, 14.826094627380371`}, {{2015, 
            5, 21}, 14.916942596435547`}, {{2015, 5, 22}, 
            14.889687538146973`}, {{2015, 5, 26}, 14.798843383789062`}, {{
            2015, 5, 27}, 14.8079252243042}, {{2015, 5, 28}, 
            14.998703002929688`}, {{2015, 5, 29}, 15.153141021728516`}, {{
            2015, 6, 1}, 15.025956153869629`}, {{2015, 6, 2}, 
            15.080464363098145`}, {{2015, 6, 3}, 15.062296867370605`}, {{2015,
             6, 4}, 15.207649230957031`}, {{2015, 6, 5}, 
            15.162227630615234`}, {{2015, 6, 8}, 15.00778865814209}, {{2015, 
            6, 9}, 15.053210258483887`}, {{2015, 6, 10}, 
            15.053210258483887`}, {{2015, 6, 11}, 15.134971618652344`}, {{
            2015, 6, 12}, 14.962364196777344`}, {{2015, 6, 15}, 
            14.8079252243042}, {{2015, 6, 16}, 14.735250473022461`}, {{2015, 
            6, 17}, 14.889687538146973`}, {{2015, 6, 18}, 
            14.971446990966797`}, {{2015, 6, 19}, 15.071381568908691`}, {{
            2015, 6, 22}, 14.953278541564941`}, {{2015, 6, 23}, 
            15.125887870788574`}, {{2015, 6, 24}, 14.842412948608398`}, {{
            2015, 6, 25}, 14.604497909545898`}, {{2015, 6, 26}, 
            14.696003913879395`}, {{2015, 6, 29}, 14.595346450805664`}, {{
            2015, 6, 30}, 14.15611457824707}, {{2015, 7, 1}, 
            14.284223556518555`}, {{2015, 7, 2}, 14.329975128173828`}, {{2015,
             7, 6}, 14.256771087646484`}, {{2015, 7, 7}, 
            14.357427597045898`}, {{2015, 7, 8}, 14.293375015258789`}, {{2015,
             7, 9}, 14.24761962890625}, {{2015, 7, 10}, 
            14.174415588378906`}, {{2015, 7, 13}, 14.311675071716309`}, {{
            2015, 7, 14}, 14.275073051452637`}, {{2015, 7, 15}, 
            14.320825576782227`}, {{2015, 7, 16}, 14.20186710357666}, {{2015, 
            7, 17}, 14.037155151367188`}, {{2015, 7, 20}, 
            13.74433422088623}, {{2015, 7, 21}, 13.579620361328125`}, {{2015, 
            7, 22}, 13.643674850463867`}, {{2015, 7, 23}, 
            13.597922325134277`}, {{2015, 7, 24}, 13.213592529296875`}, {{
            2015, 7, 27}, 13.012276649475098`}, {{2015, 7, 28}, 
            12.966524124145508`}, {{2015, 7, 29}, 12.810961723327637`}, {{
            2015, 7, 30}, 13.286797523498535`}, {{2015, 7, 31}, 
            13.46981143951416}, {{2015, 8, 3}, 13.451509475708008`}, {{2015, 
            8, 4}, 13.149538040161133`}, {{2015, 8, 5}, 
            13.460661888122559`}, {{2015, 8, 6}, 13.2684965133667}, {{2015, 8,
             7}, 12.975674629211426`}, {{2015, 8, 10}, 13.13123607635498}, {{
            2015, 8, 11}, 13.149538040161133`}, {{2015, 8, 12}, 
            12.966524124145508`}, {{2015, 8, 13}, 13.067180633544922`}, {{
            2015, 8, 14}, 13.076332092285156`}, {{2015, 8, 17}, 
            13.021428108215332`}, {{2015, 8, 18}, 13.149538040161133`}, {{
            2015, 8, 19}, 13.067180633544922`}, {{2015, 8, 20}, 
            13.021428108215332`}, {{2015, 8, 21}, 13.048880577087402`}, {{
            2015, 8, 24}, 12.47238540649414}, {{2015, 8, 25}, 
            12.673702239990234`}, {{2015, 8, 26}, 12.582195281982422`}, {{
            2015, 8, 27}, 12.61879825592041}, {{2015, 8, 28}, 
            12.673702239990234`}, {{2015, 8, 31}, 13.112935066223145`}, {{
            2015, 9, 1}, 12.966524124145508`}, {{2015, 9, 2}, 
            12.939072608947754`}, {{2015, 9, 3}, 13.039729118347168`}, {{2015,
             9, 4}, 12.627949714660645`}, {{2015, 9, 8}, 
            13.03057861328125}, {{2015, 9, 9}, 13.176989555358887`}, {{2015, 
            9, 10}, 12.875017166137695`}, {{2015, 9, 11}, 
            12.765209197998047`}, {{2015, 9, 14}, 12.692002296447754`}, {{
            2015, 9, 15}, 12.91161823272705}, {{2015, 9, 16}, 
            12.7926607131958}, {{2015, 9, 17}, 12.92992115020752}, {{2015, 9, 
            18}, 12.673702239990234`}, {{2015, 9, 21}, 
            12.710305213928223`}, {{2015, 9, 22}, 12.142962455749512`}, {{
            2015, 9, 23}, 11.861117362976074`}, {{2015, 9, 24}, 
            11.953492164611816`}, {{2015, 9, 25}, 11.750264167785645`}, {{
            2015, 9, 28}, 11.52856159210205}, {{2015, 9, 29}, 
            11.353047370910645`}, {{2015, 9, 30}, 11.057442665100098`}, {{
            2015, 10, 1}, 11.048206329345703`}, {{2015, 10, 2}, 
            11.23295783996582}, {{2015, 10, 5}, 11.473134994506836`}, {{2015, 
            10, 6}, 11.537798881530762`}, {{2015, 10, 7}, 
            11.80569076538086}, {{2015, 10, 8}, 11.768739700317383`}, {{2015, 
            10, 9}, 11.676363945007324`}, {{2015, 10, 12}, 
            11.537798881530762`}, {{2015, 10, 13}, 11.380759239196777`}, {{
            2015, 10, 14}, 11.676363945007324`}, {{2015, 10, 15}, 
            11.870354652404785`}, {{2015, 10, 16}, 11.694839477539062`}, {{
            2015, 10, 19}, 11.639413833618164`}, {{2015, 10, 20}, 
            11.74102783203125}, {{2015, 10, 21}, 11.676363945007324`}, {{2015,
             10, 22}, 11.796453475952148`}, {{2015, 10, 23}, 
            11.80569076538086}, {{2015, 10, 26}, 12.17519474029541}, {{2015, 
            10, 27}, 12.101295471191406`}, {{2015, 10, 28}, 
            12.008918762207031`}, {{2015, 10, 29}, 12.03663158416748}, {{2015,
             10, 30}, 12.082818984985352`}, {{2015, 11, 2}, 
            12.184433937072754`}, {{2015, 11, 3}, 12.470800399780273`}, {{
            2015, 11, 4}, 12.378424644470215`}, {{2015, 11, 5}, 
            12.322999000549316`}, {{2015, 11, 6}, 12.24909782409668}, {{2015, 
            11, 9}, 12.184433937072754`}, {{2015, 11, 10}, 
            12.055108070373535`}, {{2015, 11, 11}, 12.156721115112305`}, {{
            2015, 11, 12}, 11.953492164611816`}, {{2015, 11, 13}, 
            12.101295471191406`}, {{2015, 11, 16}, 11.768739700317383`}, {{
            2015, 11, 17}, 11.768739700317383`}, {{2015, 11, 18}, 
            11.62093734741211}, {{2015, 11, 19}, 11.325335502624512`}, {{2015,
             11, 20}, 11.389997482299805`}, {{2015, 11, 23}, 
            11.49161148071289}, {{2015, 11, 24}, 11.399234771728516`}, {{2015,
             11, 25}, 11.473134994506836`}, {{2015, 11, 27}, 
            11.510087013244629`}, {{2015, 11, 30}, 11.389997482299805`}, {{
            2015, 12, 1}, 11.325335502624512`}, {{2015, 12, 2}, 
            11.362284660339355`}, {{2015, 12, 3}, 11.81492805480957}, {{2015, 
            12, 4}, 11.473134994506836`}, {{2015, 12, 7}, 
            11.40847396850586}, {{2015, 12, 8}, 9.754937171936035}, {{2015, 
            12, 9}, 9.523996353149414}, {{2015, 12, 10}, 
            9.330005645751953}, {{2015, 12, 11}, 8.988212585449219}, {{2015, 
            12, 14}, 8.840412139892578}, {{2015, 12, 15}, 
            9.117539405822754}, {{2015, 12, 16}, 8.960500717163086}, {{2015, 
            12, 17}, 8.849648475646973}, {{2015, 12, 18}, 
            8.83117389678955}, {{2015, 12, 21}, 8.963838577270508}, {{2015, 
            12, 22}, 8.89833927154541}, {{2015, 12, 23}, 
            9.057406425476074}, {{2015, 12, 24}, 9.038692474365234}, {{2015, 
            12, 28}, 9.412965774536133}, {{2015, 12, 29}, 
            9.094834327697754}, {{2015, 12, 30}, 9.08547592163086}, {{2015, 
            12, 31}, 8.945124626159668}, {{2016, 1, 4}, 8.917054176330566}, {{
            2016, 1, 5}, 9.104188919067383}, {{2016, 1, 6}, 
            9.169689178466797}, {{2016, 1, 7}, 9.225830078125}, {{2016, 1, 8},
             9.244542121887207}, {{2016, 1, 11}, 9.122904777526855}, {{2016, 
            1, 12}, 9.094834327697754}, {{2016, 1, 13}, 8.963838577270508}, {{
            2016, 1, 14}, 8.823486328125}, {{2016, 1, 15}, 
            8.533424377441406}, {{2016, 1, 19}, 8.598920822143555}, {{2016, 1,
             20}, 8.299503326416016}, {{2016, 1, 21}, 8.552138328552246}, {{
            2016, 1, 22}, 8.608278274536133}, {{2016, 1, 25}, 
            8.449213027954102}, {{2016, 1, 26}, 8.374358177185059}, {{2016, 1,
             27}, 8.486639976501465}, {{2016, 1, 28}, 8.411785125732422}, {{
            2016, 1, 29}, 8.393072128295898}, {{2016, 2, 1}, 
            8.318216323852539}, {{2016, 2, 2}, 8.224648475646973}, {{2016, 2, 
            3}, 8.131081581115723}, {{2016, 2, 4}, 8.38371467590332}, {{2016, 
            2, 5}, 8.458569526672363}, {{2016, 2, 8}, 8.327573776245117}, {{
            2016, 2, 9}, 8.046868324279785}, {{2016, 2, 10}, 
            8.16850757598877}, {{2016, 2, 11}, 8.112366676330566}, {{2016, 2, 
            12}, 7.869089603424072}, {{2016, 2, 16}, 8.299503326416016}, {{
            2016, 2, 17}, 8.74863052368164}, {{2016, 2, 18}, 
            8.93576717376709}, {{2016, 2, 19}, 8.97319507598877}, {{2016, 2, 
            22}, 9.076119422912598}, {{2016, 2, 23}, 8.963838577270508}, {{
            2016, 2, 24}, 8.711203575134277}, {{2016, 2, 25}, 
            8.851555824279785}, {{2016, 2, 26}, 8.945124626159668}, {{2016, 2,
             29}, 8.982552528381348}, {{2016, 3, 1}, 9.122904777526855}, {{
            2016, 3, 2}, 9.169689178466797}, {{2016, 3, 3}, 
            9.272613525390625}, {{2016, 3, 4}, 9.244542121887207}, {{2016, 3, 
            7}, 9.179045677185059}, {{2016, 3, 8}, 9.207115173339844}, {{2016,
             3, 9}, 9.113547325134277}, {{2016, 3, 10}, 9.029335975646973}, {{
            2016, 3, 11}, 9.122904777526855}, {{2016, 3, 14}, 
            9.150973320007324}, {{2016, 3, 15}, 9.141617774963379}, {{2016, 3,
             16}, 9.150973320007324}, {{2016, 3, 17}, 9.478464126586914}, {{
            2016, 3, 18}, 9.412965774536133}, {{2016, 3, 21}, 
            9.478464126586914}, {{2016, 3, 22}, 9.843643188476562}, {{2016, 3,
             23}, 9.881540298461914}, {{2016, 3, 24}, 10.478412628173828`}, {{
            2016, 3, 28}, 10.468937873840332`}, {{2016, 3, 29}, 
            10.658419609069824`}, {{2016, 3, 30}, 10.705791473388672`}, {{
            2016, 3, 31}, 10.544730186462402`}, {{2016, 4, 1}, 
            10.629997253417969`}, {{2016, 4, 4}, 10.68684196472168}, {{2016, 
            4, 5}, 10.743688583374023`}, {{2016, 4, 6}, 10.61104965209961}, {{
            2016, 4, 7}, 10.620523452758789`}, {{2016, 4, 8}, 
            10.516307830810547`}, {{2016, 4, 11}, 10.715266227722168`}, {{
            2016, 4, 12}, 10.648945808410645`}, {{2016, 4, 13}, 
            10.715266227722168`}, {{2016, 4, 14}, 10.658419609069824`}, {{
            2016, 4, 15}, 10.592101097106934`}, {{2016, 4, 18}, 
            10.61104965209961}, {{2016, 4, 19}, 10.772109031677246`}, {{2016, 
            4, 20}, 10.440515518188477`}, {{2016, 4, 21}, 
            10.459463119506836`}, {{2016, 4, 22}, 10.13734245300293}, {{2016, 
            4, 25}, 9.938385009765625}, {{2016, 4, 26}, 
            10.175238609313965`}, {{2016, 4, 27}, 10.127866744995117`}, {{
            2016, 4, 28}, 10.118393898010254`}, {{2016, 4, 29}, 
            9.853116989135742}, {{2016, 5, 2}, 9.872066497802734}, {{2016, 5, 
            3}, 9.796273231506348}, {{2016, 5, 4}, 9.853116989135742}, {{2016,
             5, 5}, 9.853116989135742}, {{2016, 5, 6}, 9.758376121520996}, {{
            2016, 5, 9}, 10.260505676269531`}, {{2016, 5, 10}, 
            9.872066497802734}, {{2016, 5, 11}, 8.356201171875}, {{2016, 5, 
            12}, 8.100399017333984}, {{2016, 5, 13}, 7.986710548400879}, {{
            2016, 5, 16}, 7.9488139152526855`}, {{2016, 5, 17}, 
            7.9488139152526855`}, {{2016, 5, 18}, 8.034080505371094}, {{2016, 
            5, 19}, 7.854071140289307}, {{2016, 5, 20}, 7.759329795837402}, {{
            2016, 5, 23}, 7.977235317230225}, {{2016, 5, 24}, 
            8.100399017333984}, {{2016, 5, 25}, 8.11934757232666}, {{2016, 5, 
            26}, 8.214089393615723}, {{2016, 5, 27}, 8.280407905578613}, {{
            2016, 5, 31}, 8.403572082519531}, {{2016, 6, 1}, 
            8.33725357055664}, {{2016, 6, 2}, 8.384624481201172}, {{2016, 6, 
            3}, 8.431994438171387}, {{2016, 6, 6}, 8.52673625946045}, {{2016, 
            6, 7}, 8.507787704467773}, {{2016, 6, 8}, 8.498313903808594}, {{
            2016, 6, 9}, 8.431994438171387}, {{2016, 6, 10}, 
            8.318305015563965}, {{2016, 6, 13}, 8.308831214904785}, {{2016, 6,
             14}, 8.204615592956543}, {{2016, 6, 15}, 8.36567497253418}, {{
            2016, 6, 16}, 8.280407905578613}, {{2016, 6, 17}, 
            8.431994438171387}, {{2016, 6, 20}, 8.574106216430664}, {{2016, 6,
             21}, 8.555159568786621}, {{2016, 6, 22}, 8.49974536895752}, {{
            2016, 6, 23}, 8.595787048339844}, {{2016, 6, 24}, 
            8.432515144348145}, {{2016, 6, 27}, 8.288451194763184}, {{2016, 6,
             28}, 8.134784698486328}, {{2016, 6, 29}, 8.298055648803711}, {{
            2016, 6, 30}, 8.278846740722656}, {{2016, 7, 1}, 
            8.538162231445312}, {{2016, 7, 5}, 8.528556823730469}, {{2016, 7, 
            6}, 8.394097328186035}, {{2016, 7, 7}, 8.4517240524292}, {{2016, 
            7, 8}, 8.528556823730469}, {{2016, 7, 11}, 8.72064208984375}, {{
            2016, 7, 12}, 8.874308586120605}, {{2016, 7, 13}, 
            8.797475814819336}, {{2016, 7, 14}, 8.912727355957031}, {{2016, 7,
             15}, 8.807080268859863}, {{2016, 7, 18}, 8.76866340637207}, {{
            2016, 7, 19}, 8.730246543884277}, {{2016, 7, 20}, 
            8.807080268859863}, {{2016, 7, 21}, 8.835892677307129}, {{2016, 7,
             22}, 8.730246543884277}, {{2016, 7, 25}, 8.76866340637207}, {{
            2016, 7, 26}, 8.922330856323242}, {{2016, 7, 27}, 
            8.951143264770508}, {{2016, 7, 28}, 8.893518447875977}, {{2016, 7,
             29}, 8.951143264770508}, {{2016, 8, 1}, 9.008769035339355}, {{
            2016, 8, 2}, 8.951143264770508}, {{2016, 8, 3}, 
            8.643807411193848}, {{2016, 8, 4}, 8.797475814819336}, {{2016, 8, 
            5}, 8.864705085754395}, {{2016, 8, 8}, 8.922330856323242}, {{2016,
             8, 9}, 8.835892677307129}, {{2016, 8, 10}, 8.835892677307129}, {{
            2016, 8, 11}, 8.970352172851562}, {{2016, 8, 12}, 
            8.960748672485352}, {{2016, 8, 15}, 8.97995662689209}, {{2016, 8, 
            16}, 8.9895601272583}, {{2016, 8, 17}, 8.855101585388184}, {{2016,
             8, 18}, 8.326868057250977}, {{2016, 8, 19}, 8.1251802444458}, {{
            2016, 8, 22}, 8.1251802444458}, {{2016, 8, 23}, 
            8.365285873413086}, {{2016, 8, 24}, 8.33647346496582}, {{2016, 8, 
            25}, 8.269243240356445}, {{2016, 8, 26}, 8.307660102844238}, {{
            2016, 8, 29}, 8.33647346496582}, {{2016, 8, 30}, 
            8.365285873413086}, {{2016, 8, 31}, 8.355681419372559}, {{2016, 9,
             1}, 8.298055648803711}, {{2016, 9, 2}, 8.307660102844238}, {{
            2016, 9, 6}, 8.250035285949707}, {{2016, 9, 7}, 
            8.442118644714355}, {{2016, 9, 8}, 8.480537414550781}, {{2016, 9, 
            9}, 8.394097328186035}, {{2016, 9, 12}, 8.422911643981934}, {{
            2016, 9, 13}, 8.317264556884766}, {{2016, 9, 14}, 
            8.298055648803711}, {{2016, 9, 15}, 8.355681419372559}, {{2016, 9,
             16}, 8.307660102844238}, {{2016, 9, 19}, 8.355681419372559}, {{
            2016, 9, 20}, 8.278846740722656}, {{2016, 9, 21}, 
            8.26157283782959}, {{2016, 9, 22}, 8.35899829864502}, {{2016, 9, 
            23}, 8.407710075378418}, {{2016, 9, 26}, 8.300543785095215}, {{
            2016, 9, 27}, 8.183633804321289}, {{2016, 9, 28}, 
            8.222603797912598}, {{2016, 9, 29}, 8.281059265136719}, {{2016, 9,
             30}, 8.329771041870117}, {{2016, 10, 3}, 8.407710075378418}, {{
            2016, 10, 4}, 8.26157283782959}, {{2016, 10, 5}, 
            8.086210250854492}, {{2016, 10, 6}, 8.05698299407959}, {{2016, 10,
             7}, 7.901103973388672}, {{2016, 10, 10}, 7.940073490142822}, {{
            2016, 10, 11}, 7.8718767166137695`}, {{2016, 10, 12}, 
            7.6965131759643555`}, {{2016, 10, 13}, 7.5990891456604}, {{2016, 
            10, 14}, 7.540634632110596}, {{2016, 10, 17}, 
            7.443210124969482}, {{2016, 10, 18}, 7.365270614624023}, {{2016, 
            10, 19}, 7.423725605010986}, {{2016, 10, 20}, 
            7.472437858581543}, {{2016, 10, 21}, 7.404240608215332}, {{2016, 
            10, 24}, 7.433467864990234}, {{2016, 10, 25}, 
            7.394498348236084}, {{2016, 10, 26}, 7.404240608215332}, {{2016, 
            10, 27}, 7.336043834686279}, {{2016, 10, 28}, 
            7.277588844299316}, {{2016, 10, 31}, 7.209392547607422}, {{2016, 
            11, 1}, 7.345786094665527}, {{2016, 11, 2}, 7.277588844299316}, {{
            2016, 11, 3}, 7.209392547607422}, {{2016, 11, 4}, 
            7.238619327545166}, {{2016, 11, 7}, 7.501664638519287}, {{2016, 
            11, 8}, 7.501664638519287}, {{2016, 11, 9}, 7.910846710205078}, {{
            2016, 11, 10}, 8.514876365661621}, {{2016, 11, 11}, 
            8.466164588928223}, {{2016, 11, 14}, 8.74869441986084}, {{2016, 
            11, 15}, 8.680497169494629}, {{2016, 11, 16}, 
            8.904573440551758}, {{2016, 11, 17}, 9.089678764343262}, {{2016, 
            11, 18}, 9.53783130645752}, {{2016, 11, 21}, 9.61577033996582}, {{
            2016, 11, 22}, 9.781392097473145}, {{2016, 11, 23}, 
            9.722936630249023}, {{2016, 11, 25}, 9.713194847106934}, {{2016, 
            11, 28}, 9.683967590332031}, {{2016, 11, 29}, 
            9.722936630249023}, {{2016, 11, 30}, 9.644997596740723}, {{2016, 
            12, 1}, 9.567057609558105}, {{2016, 12, 2}, 9.576800346374512}, {{
            2016, 12, 5}, 9.635255813598633}, {{2016, 12, 6}, 
            9.664482116699219}, {{2016, 12, 7}, 9.781392097473145}, {{2016, 
            12, 8}, 9.849588394165039}, {{2016, 12, 9}, 9.791133880615234}, {{
            2016, 12, 12}, 9.839845657348633}, {{2016, 12, 13}, 
            9.722936630249023}, {{2016, 12, 14}, 9.781392097473145}, {{2016, 
            12, 15}, 9.781392097473145}, {{2016, 12, 16}, 
            9.791133880615234}, {{2016, 12, 19}, 9.792083740234375}, {{2016, 
            12, 20}, 9.920278549194336}, {{2016, 12, 21}, 
            9.742777824401855}, {{2016, 12, 22}, 9.604722023010254}, {{2016, 
            12, 23}, 9.279305458068848}, {{2016, 12, 27}, 
            9.279305458068848}, {{2016, 12, 28}, 9.259583473205566}, {{2016, 
            12, 29}, 9.111666679382324}, {{2016, 12, 30}, 
            9.091944694519043}, {{2017, 1, 3}, 9.052499771118164}, {{2017, 1, 
            4}, 9.151110649108887}, {{2017, 1, 5}, 9.042638778686523}, {{2017,
             1, 6}, 9.072221755981445}, {{2017, 1, 9}, 9.072221755981445}, {{
            2017, 1, 10}, 9.249722480773926}, {{2017, 1, 11}, 
            9.200416564941406}, {{2017, 1, 12}, 9.180694580078125}, {{2017, 1,
             13}, 9.249722480773926}, {{2017, 1, 17}, 9.289166450500488}, {{
            2017, 1, 18}, 9.269444465637207}, {{2017, 1, 19}, 
            9.170833587646484}, {{2017, 1, 20}, 9.062360763549805}, {{2017, 1,
             23}, 9.022915840148926}, {{2017, 1, 24}, 9.160972595214844}, {{
            2017, 1, 25}, 9.348332405090332}, {{2017, 1, 26}, 
            9.328611373901367}, {{2017, 1, 27}, 9.220139503479004}, {{2017, 1,
             30}, 9.101804733276367}, {{2017, 1, 31}, 9.091944694519043}, {{
            2017, 2, 1}, 9.151110649108887}, {{2017, 2, 2}, 
            8.993332862854004}, {{2017, 2, 3}, 9.022915840148926}, {{2017, 2, 
            6}, 8.953888893127441}, {{2017, 2, 7}, 8.88486099243164}, {{2017, 
            2, 8}, 8.93416690826416}, {{2017, 2, 9}, 9.072221755981445}, {{
            2017, 2, 10}, 9.052499771118164}, {{2017, 2, 13}, 
            9.180694580078125}, {{2017, 2, 14}, 9.42722225189209}, {{2017, 2, 
            15}, 9.338472366333008}, {{2017, 2, 16}, 9.397638320922852}, {{
            2017, 2, 17}, 9.190555572509766}, {{2017, 2, 21}, 
            9.259583473205566}, {{2017, 2, 22}, 9.476527214050293}, {{2017, 2,
             23}, 9.42722225189209}, {{2017, 2, 24}, 9.220139503479004}, {{
            2017, 2, 27}, 9.210277557373047}, {{2017, 2, 28}, 
            9.141250610351562}, {{2017, 3, 1}, 9.220139503479004}, {{2017, 3, 
            2}, 9.160972595214844}, {{2017, 3, 3}, 9.239860534667969}, {{2017,
             3, 6}, 8.845417022705078}, {{2017, 3, 7}, 8.746805191040039}, {{
            2017, 3, 8}, 8.93416690826416}, {{2017, 3, 9}, 
            9.042638778686523}, {{2017, 3, 10}, 8.983471870422363}, {{2017, 3,
             13}, 8.638333320617676}, {{2017, 3, 14}, 8.579166412353516}, {{
            2017, 3, 15}, 8.687639236450195}, {{2017, 3, 16}, 
            8.756667137145996}, {{2017, 3, 17}, 8.88486099243164}, {{2017, 3, 
            20}, 8.875}, {{2017, 3, 21}, 8.766528129577637}, {{2017, 3, 22}, 
            8.5600004196167}, {{2017, 3, 23}, 8.680000305175781}, {{2017, 3, 
            24}, 8.550000190734863}, {{2017, 3, 27}, 8.479999542236328}, {{
            2017, 3, 28}, 8.5}, {{2017, 3, 29}, 8.609999656677246}, {{2017, 3,
             30}, 8.760000228881836}, {{2017, 3, 31}, 8.899999618530273}, {{
            2017, 4, 3}, 8.829999923706055}, {{2017, 4, 4}, 10}, {{2017, 4, 
            5}, 10.0600004196167}, {{2017, 4, 6}, 10.180000305175781`}, {{
            2017, 4, 7}, 9.869999885559082}, {{2017, 4, 10}, 
            9.930000305175781}, {{2017, 4, 11}, 9.739999771118164}, {{2017, 4,
             12}, 9.649999618530273}, {{2017, 4, 13}, 9.619999885559082}, {{
            2017, 4, 17}, 9.640000343322754}, {{2017, 4, 18}, 
            9.680000305175781}, {{2017, 4, 19}, 9.75}, {{2017, 4, 20}, 
            9.84000015258789}, {{2017, 4, 21}, 9.800000190734863}, {{2017, 4, 
            24}, 9.930000305175781}, {{2017, 4, 25}, 9.920000076293945}, {{
            2017, 4, 26}, 9.949999809265137}, {{2017, 4, 27}, 
            9.890000343322754}, {{2017, 4, 28}, 9.859999656677246}, {{2017, 5,
             1}, 9.8100004196167}, {{2017, 5, 2}, 10.25}, {{2017, 5, 3}, 
            9.8100004196167}, {{2017, 5, 4}, 9.6899995803833}, {{2017, 5, 5}, 
            9.680000305175781}, {{2017, 5, 8}, 9.729999542236328}, {{2017, 5, 
            9}, 9.710000038146973}, {{2017, 5, 10}, 9.720000267028809}, {{
            2017, 5, 11}, 9.739999771118164}, {{2017, 5, 12}, 
            9.420000076293945}, {{2017, 5, 15}, 9.40999984741211}, {{2017, 5, 
            16}, 9.300000190734863}, {{2017, 5, 17}, 9.039999961853027}, {{
            2017, 5, 18}, 8.90999984741211}, {{2017, 5, 19}, 
            8.869999885559082}, {{2017, 5, 22}, 8.800000190734863}, {{2017, 5,
             23}, 8.84000015258789}, {{2017, 5, 24}, 8.850000381469727}, {{
            2017, 5, 25}, 9.350000381469727}, {{2017, 5, 26}, 
            9.100000381469727}, {{2017, 5, 30}, 9.029999732971191}, {{2017, 5,
             31}, 9.140000343322754}, {{2017, 6, 1}, 9.25}, {{2017, 6, 2}, 
            9.140000343322754}, {{2017, 6, 5}, 9.180000305175781}, {{2017, 6, 
            6}, 9.170000076293945}, {{2017, 6, 7}, 9.59000015258789}, {{2017, 
            6, 8}, 9.3100004196167}, {{2017, 6, 9}, 9.270000457763672}, {{
            2017, 6, 12}, 9.390000343322754}, {{2017, 6, 13}, 
            9.260000228881836}, {{2017, 6, 14}, 9.15999984741211}, {{2017, 6, 
            15}, 9.039999961853027}, {{2017, 6, 16}, 8.989999771118164}, {{
            2017, 6, 19}, 8.920000076293945}}, 
         "close" -> {{{2014, 6, 23}, 9.857852935791016}, {{2014, 6, 24}, 
            9.717403411865234}, {{2014, 6, 25}, 9.699655532836914}, {{2014, 6,
             26}, 9.690779685974121}, {{2014, 6, 27}, 9.5399169921875}, {{
            2014, 6, 30}, 9.61978530883789}, {{2014, 7, 1}, 
            9.770648956298828}, {{2014, 7, 2}, 9.815022468566895}, {{2014, 7, 
            3}, 9.992508888244629}, {{2014, 7, 7}, 9.957009315490723}, {{2014,
             7, 8}, 9.850519180297852}, {{2014, 7, 9}, 9.815022468566895}, {{
            2014, 7, 10}, 9.699655532836914}, {{2014, 7, 11}, 
            9.673029899597168}, {{2014, 7, 14}, 9.806148529052734}, {{2014, 7,
             15}, 9.903763771057129}, {{2014, 7, 16}, 9.939262390136719}, {{
            2014, 7, 17}, 9.779523849487305}, {{2014, 7, 18}, 
            9.912638664245605}, {{2014, 7, 21}, 9.939262390136719}, {{2014, 7,
             22}, 9.797271728515625}, {{2014, 7, 23}, 9.912638664245605}, {{
            2014, 7, 24}, 9.930387496948242}, {{2014, 7, 25}, 
            9.752900123596191}, {{2014, 7, 28}, 9.708529472351074}, {{2014, 7,
             29}, 9.832768440246582}, {{2014, 7, 30}, 10.063502311706543`}, {{
            2014, 7, 31}, 10.285360336303711`}, {{2014, 8, 1}, 
            10.15224552154541}, {{2014, 8, 4}, 10.258739471435547`}, {{2014, 
            8, 5}, 10.178869247436523`}, {{2014, 8, 6}, 10.14337158203125}, {{
            2014, 8, 7}, 9.903763771057129}, {{2014, 8, 8}, 
            10.107873916625977`}, {{2014, 8, 11}, 10.125621795654297`}, {{
            2014, 8, 12}, 10.134496688842773`}, {{2014, 8, 13}, 
            10.232115745544434`}, {{2014, 8, 14}, 10.276487350463867`}, {{
            2014, 8, 15}, 10.19661808013916}, {{2014, 8, 18}, 
            10.232115745544434`}, {{2014, 8, 19}, 10.311984062194824`}, {{
            2014, 8, 20}, 10.04575252532959}, {{2014, 8, 21}, 
            9.735152244567871}, {{2014, 8, 22}, 9.717403411865234}, {{2014, 8,
             25}, 9.752900123596191}, {{2014, 8, 26}, 9.815022468566895}, {{
            2014, 8, 27}, 10.19661808013916}, {{2014, 8, 28}, 
            10.347478866577148`}, {{2014, 8, 29}, 10.365230560302734`}, {{
            2014, 9, 2}, 11.208293914794922`}, {{2014, 9, 3}, 
            11.474522590637207`}, {{2014, 9, 4}, 11.305909156799316`}, {{2014,
             9, 5}, 11.412402153015137`}, {{2014, 9, 8}, 
            11.199417114257812`}, {{2014, 9, 9}, 11.039679527282715`}, {{2014,
             9, 10}, 11.048554420471191`}, {{2014, 9, 11}, 
            11.101801872253418`}, {{2014, 9, 12}, 11.49227237701416}, {{2014, 
            9, 15}, 11.447900772094727`}, {{2014, 9, 16}, 
            11.56326675415039}, {{2014, 9, 17}, 11.572139739990234`}, {{2014, 
            9, 18}, 11.572139739990234`}, {{2014, 9, 19}, 
            11.581014633178711`}, {{2014, 9, 22}, 11.385778427124023`}, {{
            2014, 9, 23}, 11.36803150177002}, {{2014, 9, 24}, 
            11.484487533569336`}, {{2014, 9, 25}, 11.278448104858398`}, {{
            2014, 9, 26}, 11.179906845092773`}, {{2014, 9, 29}, 
            10.884282112121582`}, {{2014, 9, 30}, 10.839494705200195`}, {{
            2014, 10, 1}, 10.624496459960938`}, {{2014, 10, 2}, 
            10.678243637084961`}, {{2014, 10, 3}, 10.714077949523926`}, {{
            2014, 10, 6}, 10.570746421813965`}, {{2014, 10, 7}, 
            10.29304027557373}, {{2014, 10, 8}, 10.534913063049316`}, {{2014, 
            10, 9}, 10.51699447631836}, {{2014, 10, 10}, 
            10.705119132995605`}, {{2014, 10, 13}, 10.848451614379883`}, {{
            2014, 10, 14}, 10.973867416381836`}, {{2014, 10, 15}, 
            10.875327110290527`}, {{2014, 10, 16}, 10.74095344543457}, {{2014,
             10, 17}, 10.678243637084961`}, {{2014, 10, 20}, 
            11.018659591674805`}, {{2014, 10, 21}, 11.16199016571045}, {{2014,
             10, 22}, 11.135115623474121`}, {{2014, 10, 23}, 
            11.215740203857422`}, {{2014, 10, 24}, 11.206783294677734`}, {{
            2014, 10, 27}, 11.16199016571045}, {{2014, 10, 28}, 
            11.072408676147461`}, {{2014, 10, 29}, 11.072408676147461`}, {{
            2014, 10, 30}, 11.25157356262207}, {{2014, 10, 31}, 
            11.3590726852417}, {{2014, 11, 3}, 11.51136302947998}, {{2014, 11,
             4}, 11.56511402130127}, {{2014, 11, 5}, 11.609902381896973`}, {{
            2014, 11, 6}, 11.56511402130127}, {{2014, 11, 7}, 
            11.583027839660645`}, {{2014, 11, 10}, 11.789068222045898`}, {{
            2014, 11, 11}, 11.68156909942627}, {{2014, 11, 12}, 
            11.977191925048828`}, {{2014, 11, 13}, 12.004067420959473`}, {{
            2014, 11, 14}, 12.048856735229492`}, {{2014, 11, 17}, 
            11.61886215209961}, {{2014, 11, 18}, 11.43073844909668}, {{2014, 
            11, 19}, 12.46989631652832}, {{2014, 11, 20}, 
            12.460939407348633`}, {{2014, 11, 21}, 12.586353302001953`}, {{
            2014, 11, 24}, 12.756561279296875`}, {{2014, 11, 25}, 
            12.622187614440918`}, {{2014, 11, 26}, 12.46989631652832}, {{2014,
             11, 28}, 12.595314025878906`}, {{2014, 12, 1}, 
            12.443021774291992`}, {{2014, 12, 2}, 12.640103340148926`}, {{
            2014, 12, 3}, 12.926769256591797`}, {{2014, 12, 4}, 
            12.756561279296875`}, {{2014, 12, 5}, 12.881975173950195`}, {{
            2014, 12, 8}, 12.819269180297852`}, {{2014, 12, 9}, 
            12.953642845153809`}, {{2014, 12, 10}, 13.276138305664062`}, {{
            2014, 12, 11}, 14.422796249389648`}, {{2014, 12, 12}, 
            14.754253387451172`}, {{2014, 12, 15}, 15.103625297546387`}, {{
            2014, 12, 16}, 15.452996253967285`}, {{2014, 12, 17}, 
            15.488832473754883`}, {{2014, 12, 18}, 15.802370071411133`}, {{
            2014, 12, 19}, 15.721747398376465`}, {{2014, 12, 22}, 
            15.676956176757812`}, {{2014, 12, 23}, 16.08285903930664}, {{2014,
             12, 24}, 16.07383918762207}, {{2014, 12, 26}, 
            16.218162536621094`}, {{2014, 12, 29}, 16.245220184326172`}, {{
            2014, 12, 30}, 16.263263702392578`}, {{2014, 12, 31}, 
            16.344444274902344`}, {{2015, 1, 2}, 15.884416580200195`}, {{2015,
             1, 5}, 15.731075286865234`}, {{2015, 1, 6}, 
            15.613812446594238`}, {{2015, 1, 7}, 15.929515838623047`}, {{2015,
             1, 8}, 16.001678466796875`}, {{2015, 1, 9}, 
            15.532630920410156`}, {{2015, 1, 12}, 15.550674438476562`}, {{
            2015, 1, 13}, 15.31614875793457}, {{2015, 1, 14}, 
            15.631855010986328`}, {{2015, 1, 15}, 15.334190368652344`}, {{
            2015, 1, 16}, 15.649893760681152`}, {{2015, 1, 20}, 
            14.783963203430176`}, {{2015, 1, 21}, 14.874164581298828`}, {{
            2015, 1, 22}, 15.253007888793945`}, {{2015, 1, 23}, 
            15.144765853881836`}, {{2015, 1, 26}, 15.216927528381348`}, {{
            2015, 1, 27}, 15.253007888793945`}, {{2015, 1, 28}, 
            15.18986701965332}, {{2015, 1, 29}, 15.424393653869629`}, {{2015, 
            1, 30}, 15.379290580749512`}, {{2015, 2, 2}, 
            15.460469245910645`}, {{2015, 2, 3}, 17.147232055664062`}, {{2015,
             2, 4}, 15.090644836425781`}, {{2015, 2, 5}, 
            15.307129859924316`}, {{2015, 2, 6}, 14.946324348449707`}, {{2015,
             2, 9}, 15.442431449890137`}, {{2015, 2, 10}, 
            15.289090156555176`}, {{2015, 2, 11}, 15.451449394226074`}, {{
            2015, 2, 12}, 15.406350135803223`}, {{2015, 2, 13}, 
            15.207906723022461`}, {{2015, 2, 17}, 15.343207359313965`}, {{
            2015, 2, 18}, 15.361250877380371`}, {{2015, 2, 19}, 
            15.171828269958496`}, {{2015, 2, 20}, 15.144765853881836`}, {{
            2015, 2, 23}, 14.955344200134277`}, {{2015, 2, 24}, 
            15.171828269958496`}, {{2015, 2, 25}, 15.009462356567383`}, {{
            2015, 2, 26}, 14.774941444396973`}, {{2015, 2, 27}, 
            15.126726150512695`}, {{2015, 3, 2}, 15.352231979370117`}, {{2015,
             3, 3}, 15.16280746459961}, {{2015, 3, 4}, 
            14.964365005493164`}, {{2015, 3, 5}, 14.883184432983398`}, {{2015,
             3, 6}, 14.477278709411621`}, {{2015, 3, 9}, 
            14.585519790649414`}, {{2015, 3, 10}, 14.45021915435791}, {{2015, 
            3, 11}, 14.3419771194458}, {{2015, 3, 12}, 
            14.621599197387695`}, {{2015, 3, 13}, 14.44119930267334}, {{2015, 
            3, 16}, 14.468259811401367`}, {{2015, 3, 17}, 
            14.5945405960083}, {{2015, 3, 18}, 14.729841232299805`}, {{2015, 
            3, 19}, 14.477278709411621`}, {{2015, 3, 20}, 
            14.65768051147461}, {{2015, 3, 23}, 15.16280746459961}, {{2015, 3,
             24}, 15.243988990783691`}, {{2015, 3, 25}, 
            15.035040855407715`}, {{2015, 3, 26}, 14.553557395935059`}, {{
            2015, 3, 27}, 14.635319709777832`}, {{2015, 3, 30}, 
            15.171311378479004`}, {{2015, 3, 31}, 14.798843383789062`}, {{
            2015, 4, 1}, 14.907855987548828`}, {{2015, 4, 2}, 
            14.744336128234863`}, {{2015, 4, 6}, 14.608064651489258`}, {{2015,
             4, 7}, 14.626235008239746`}, {{2015, 4, 8}, 
            14.67165756225586}, {{2015, 4, 9}, 14.898773193359375`}, {{2015, 
            4, 10}, 15.18947982788086}, {{2015, 4, 13}, 
            14.744336128234863`}, {{2015, 4, 14}, 14.726165771484375`}, {{
            2015, 4, 15}, 14.744336128234863`}, {{2015, 4, 16}, 
            14.935111999511719`}, {{2015, 4, 17}, 14.562642097473145`}, {{
            2015, 4, 20}, 14.626235008239746`}, {{2015, 4, 21}, 
            14.626235008239746`}, {{2015, 4, 22}, 14.508133888244629`}, {{
            2015, 4, 23}, 14.707995414733887`}, {{2015, 4, 24}, 
            14.762502670288086`}, {{2015, 4, 27}, 14.5263032913208}, {{2015, 
            4, 28}, 14.544472694396973`}, {{2015, 4, 29}, 
            14.5263032913208}, {{2015, 4, 30}, 14.826094627380371`}, {{2015, 
            5, 1}, 14.998703002929688`}, {{2015, 5, 4}, 15.18947982788086}, {{
            2015, 5, 5}, 15.053210258483887`}, {{2015, 5, 6}, 
            14.844265937805176`}, {{2015, 5, 7}, 14.953278541564941`}, {{2015,
             5, 8}, 14.998703002929688`}, {{2015, 5, 11}, 
            15.125887870788574`}, {{2015, 5, 12}, 14.962364196777344`}, {{
            2015, 5, 13}, 15.080464363098145`}, {{2015, 5, 14}, 
            14.862435340881348`}, {{2015, 5, 15}, 14.898773193359375`}, {{
            2015, 5, 18}, 14.971446990966797`}, {{2015, 5, 19}, 
            14.907855987548828`}, {{2015, 5, 20}, 14.67165756225586}, {{2015, 
            5, 21}, 14.780673027038574`}, {{2015, 5, 22}, 
            14.717081069946289`}, {{2015, 5, 26}, 14.67165756225586}, {{2015, 
            5, 27}, 14.735250473022461`}, {{2015, 5, 28}, 
            14.980535507202148`}, {{2015, 5, 29}, 14.962364196777344`}, {{
            2015, 6, 1}, 14.898773193359375`}, {{2015, 6, 2}, 
            14.944196701049805`}, {{2015, 6, 3}, 15.044127464294434`}, {{2015,
             6, 4}, 15.080464363098145`}, {{2015, 6, 5}, 
            14.944196701049805`}, {{2015, 6, 8}, 14.889687538146973`}, {{2015,
             6, 9}, 14.735250473022461`}, {{2015, 6, 10}, 
            14.980535507202148`}, {{2015, 6, 11}, 14.962364196777344`}, {{
            2015, 6, 12}, 14.835180282592773`}, {{2015, 6, 15}, 
            14.680741310119629`}, {{2015, 6, 16}, 14.662571907043457`}, {{
            2015, 6, 17}, 14.771588325500488`}, {{2015, 6, 18}, 
            14.926026344299316`}, {{2015, 6, 19}, 14.88060188293457}, {{2015, 
            6, 22}, 14.835180282592773`}, {{2015, 6, 23}, 
            15.09863567352295}, {{2015, 6, 24}, 14.503839492797852`}, {{2015, 
            6, 25}, 14.485538482666016`}, {{2015, 6, 26}, 
            14.68685245513916}, {{2015, 6, 29}, 14.018853187561035`}, {{2015, 
            6, 30}, 14.009703636169434`}, {{2015, 7, 1}, 
            14.22931957244873}, {{2015, 7, 2}, 14.22931957244873}, {{2015, 7, 
            6}, 14.20186710357666}, {{2015, 7, 7}, 14.348278999328613`}, {{
            2015, 7, 8}, 14.028003692626953`}, {{2015, 7, 9}, 
            13.954798698425293`}, {{2015, 7, 10}, 14.082907676696777`}, {{
            2015, 7, 13}, 14.265921592712402`}, {{2015, 7, 14}, 
            14.211016654968262`}, {{2015, 7, 15}, 14.137811660766602`}, {{
            2015, 7, 16}, 14.037155151367188`}, {{2015, 7, 17}, 
            13.451509475708008`}, {{2015, 7, 20}, 13.38745403289795}, {{2015, 
            7, 21}, 13.38745403289795}, {{2015, 7, 22}, 
            13.561318397521973`}, {{2015, 7, 23}, 13.213592529296875`}, {{
            2015, 7, 24}, 13.012276649475098`}, {{2015, 7, 27}, 
            12.765209197998047`}, {{2015, 7, 28}, 12.728605270385742`}, {{
            2015, 7, 29}, 12.783510208129883`}, {{2015, 7, 30}, 
            13.10378360748291}, {{2015, 7, 31}, 13.460661888122559`}, {{2015, 
            8, 3}, 12.92992115020752}, {{2015, 8, 4}, 12.984825134277344`}, {{
            2015, 8, 5}, 13.186140060424805`}, {{2015, 8, 6}, 
            12.847563743591309`}, {{2015, 8, 7}, 12.774360656738281`}, {{2015,
             8, 10}, 13.048880577087402`}, {{2015, 8, 11}, 
            12.920770645141602`}, {{2015, 8, 12}, 12.95737361907959}, {{2015, 
            8, 13}, 12.884167671203613`}, {{2015, 8, 14}, 
            13.021428108215332`}, {{2015, 8, 17}, 13.021428108215332`}, {{
            2015, 8, 18}, 12.948223114013672`}, {{2015, 8, 19}, 
            12.920770645141602`}, {{2015, 8, 20}, 12.847563743591309`}, {{
            2015, 8, 21}, 12.61879825592041}, {{2015, 8, 24}, 
            12.325976371765137`}, {{2015, 8, 25}, 12.115509986877441`}, {{
            2015, 8, 26}, 12.197868347167969`}, {{2015, 8, 27}, 
            12.554742813110352`}, {{2015, 8, 28}, 12.582195281982422`}, {{
            2015, 8, 31}, 13.003127098083496`}, {{2015, 9, 1}, 
            12.527289390563965`}, {{2015, 9, 2}, 12.92992115020752}, {{2015, 
            9, 3}, 12.627949714660645`}, {{2015, 9, 4}, 12.44493579864502}, {{
            2015, 9, 8}, 12.984825134277344`}, {{2015, 9, 9}, 
            12.7926607131958}, {{2015, 9, 10}, 12.682853698730469`}, {{2015, 
            9, 11}, 12.682853698730469`}, {{2015, 9, 14}, 
            12.56389331817627}, {{2015, 9, 15}, 12.536441802978516`}, {{2015, 
            9, 16}, 12.728605270385742`}, {{2015, 9, 17}, 
            12.655401229858398`}, {{2015, 9, 18}, 12.362580299377441`}, {{
            2015, 9, 21}, 12.390031814575195`}, {{2015, 9, 22}, 
            11.667126655578613`}, {{2015, 9, 23}, 11.454659461975098`}, {{
            2015, 9, 24}, 11.722552299499512`}, {{2015, 9, 25}, 
            11.426946640014648`}, {{2015, 9, 28}, 10.992778778076172`}, {{
            2015, 9, 29}, 10.928115844726562`}, {{2015, 9, 30}, 
            10.835738182067871`}, {{2015, 10, 1}, 11.029728889465332`}, {{
            2015, 10, 2}, 11.223719596862793`}, {{2015, 10, 5}, 
            11.417709350585938`}, {{2015, 10, 6}, 11.426946640014648`}, {{
            2015, 10, 7}, 11.676363945007324`}, {{2015, 10, 8}, 
            11.657888412475586`}, {{2015, 10, 9}, 11.426946640014648`}, {{
            2015, 10, 12}, 11.260669708251953`}, {{2015, 10, 13}, 
            11.112868309020996`}, {{2015, 10, 14}, 11.59322452545166}, {{2015,
             10, 15}, 11.58398723602295}, {{2015, 10, 16}, 
            11.59322452545166}, {{2015, 10, 19}, 11.62093734741211}, {{2015, 
            10, 20}, 11.537798881530762`}, {{2015, 10, 21}, 
            11.62093734741211}, {{2015, 10, 22}, 11.685602188110352`}, {{2015,
             10, 23}, 11.648650169372559`}, {{2015, 10, 26}, 
            11.935017585754395`}, {{2015, 10, 27}, 11.750264167785645`}, {{
            2015, 10, 28}, 11.953492164611816`}, {{2015, 10, 29}, 
            11.962730407714844`}, {{2015, 10, 30}, 11.999680519104004`}, {{
            2015, 11, 2}, 12.092057228088379`}, {{2015, 11, 3}, 
            12.35071086883545}, {{2015, 11, 4}, 12.045869827270508`}, {{2015, 
            11, 5}, 12.295286178588867`}, {{2015, 11, 6}, 
            12.193671226501465`}, {{2015, 11, 9}, 11.851879119873047`}, {{
            2015, 11, 10}, 12.045869827270508`}, {{2015, 11, 11}, 
            11.925779342651367`}, {{2015, 11, 12}, 11.80569076538086}, {{2015,
             11, 13}, 11.639413833618164`}, {{2015, 11, 16}, 
            11.74102783203125}, {{2015, 11, 17}, 11.500849723815918`}, {{2015,
             11, 18}, 11.186769485473633`}, {{2015, 11, 19}, 
            11.13134479522705}, {{2015, 11, 20}, 11.353047370910645`}, {{2015,
             11, 23}, 11.251433372497559`}, {{2015, 11, 24}, 
            11.316096305847168`}, {{2015, 11, 25}, 11.380759239196777`}, {{
            2015, 11, 27}, 11.3715238571167}, {{2015, 11, 30}, 
            11.14981746673584}, {{2015, 12, 1}, 11.251433372497559`}, {{2015, 
            12, 2}, 11.13134479522705}, {{2015, 12, 3}, 
            11.048206329345703`}, {{2015, 12, 4}, 11.417709350585938`}, {{
            2015, 12, 7}, 9.84731388092041}, {{2015, 12, 8}, 
            9.311529159545898}, {{2015, 12, 9}, 9.10830307006836}, {{2015, 12,
             10}, 9.200678825378418}, {{2015, 12, 11}, 8.775749206542969}, {{
            2015, 12, 14}, 8.683371543884277}, {{2015, 12, 15}, 
            8.868124961853027}, {{2015, 12, 16}, 8.83117389678955}, {{2015, 
            12, 17}, 8.75727367401123}, {{2015, 12, 18}, 
            8.701847076416016}, {{2015, 12, 21}, 8.78605842590332}, {{2015, 
            12, 22}, 8.823486328125}, {{2015, 12, 23}, 8.917054176330566}, {{
            2015, 12, 24}, 9.001264572143555}, {{2015, 12, 28}, 
            9.001264572143555}, {{2015, 12, 29}, 8.945124626159668}, {{2015, 
            12, 30}, 8.917054176330566}, {{2015, 12, 31}, 
            8.860913276672363}, {{2016, 1, 4}, 8.907697677612305}, {{2016, 1, 
            5}, 9.076119422912598}, {{2016, 1, 6}, 8.945124626159668}, {{2016,
             1, 7}, 9.197757720947266}, {{2016, 1, 8}, 8.89833927154541}, {{
            2016, 1, 11}, 8.842199325561523}, {{2016, 1, 12}, 
            8.832842826843262}, {{2016, 1, 13}, 8.701847076416016}, {{2016, 1,
             14}, 8.552138328552246}, {{2016, 1, 15}, 8.449213027954102}, {{
            2016, 1, 19}, 8.243362426757812}, {{2016, 1, 20}, 
            8.252718925476074}, {{2016, 1, 21}, 8.393072128295898}, {{2016, 1,
             22}, 8.336931228637695}, {{2016, 1, 25}, 8.121724128723145}, {{
            2016, 1, 26}, 8.243362426757812}, {{2016, 1, 27}, 
            8.327573776245117}, {{2016, 1, 28}, 8.16850757598877}, {{2016, 1, 
            29}, 8.346288681030273}, {{2016, 2, 1}, 8.252718925476074}, {{
            2016, 2, 2}, 8.00008487701416}, {{2016, 2, 3}, 
            8.121724128723145}, {{2016, 2, 4}, 8.177864074707031}, {{2016, 2, 
            5}, 8.346288681030273}, {{2016, 2, 8}, 8.009442329406738}, {{2016,
             2, 9}, 7.859732151031494}, {{2016, 2, 10}, 7.869089603424072}, {{
            2016, 2, 11}, 7.663238525390625}, {{2016, 2, 12}, 
            7.784877777099609}, {{2016, 2, 16}, 8.280790328979492}, {{2016, 2,
             17}, 8.57085132598877}, {{2016, 2, 18}, 8.917054176330566}, {{
            2016, 2, 19}, 8.870269775390625}, {{2016, 2, 22}, 
            8.879627227783203}, {{2016, 2, 23}, 8.683133125305176}, {{2016, 2,
             24}, 8.598920822143555}, {{2016, 2, 25}, 8.804771423339844}, {{
            2016, 2, 26}, 8.879627227783203}, {{2016, 2, 29}, 
            8.842199325561523}, {{2016, 3, 1}, 9.038692474365234}, {{2016, 3, 
            2}, 9.076119422912598}, {{2016, 3, 3}, 9.235185623168945}, {{2016,
             3, 4}, 8.982552528381348}, {{2016, 3, 7}, 9.001264572143555}, {{
            2016, 3, 8}, 8.888981819152832}, {{2016, 3, 9}, 
            8.97319507598877}, {{2016, 3, 10}, 8.907697677612305}, {{2016, 3, 
            11}, 9.122904777526855}, {{2016, 3, 14}, 9.029335975646973}, {{
            2016, 3, 15}, 8.982552528381348}, {{2016, 3, 16}, 
            9.06676197052002}, {{2016, 3, 17}, 9.253899574279785}, {{2016, 3, 
            18}, 9.35682487487793}, {{2016, 3, 21}, 9.06676197052002}, {{2016,
             3, 22}, 9.758376121520996}, {{2016, 3, 23}, 
            9.521522521972656}, {{2016, 3, 24}, 10.194186210632324`}, {{2016, 
            3, 28}, 10.326824188232422`}, {{2016, 3, 29}, 
            10.516307830810547`}, {{2016, 3, 30}, 10.43104076385498}, {{2016, 
            3, 31}, 10.44998836517334}, {{2016, 4, 1}, 
            10.592101097106934`}, {{2016, 4, 4}, 10.459463119506836`}, {{2016,
             4, 5}, 10.307876586914062`}, {{2016, 4, 6}, 
            10.459463119506836`}, {{2016, 4, 7}, 10.35524845123291}, {{2016, 
            4, 8}, 10.440515518188477`}, {{2016, 4, 11}, 
            10.44998836517334}, {{2016, 4, 12}, 10.620523452758789`}, {{2016, 
            4, 13}, 10.658419609069824`}, {{2016, 4, 14}, 
            10.535255432128906`}, {{2016, 4, 15}, 10.563677787780762`}, {{
            2016, 4, 18}, 10.535255432128906`}, {{2016, 4, 19}, 
            10.44998836517334}, {{2016, 4, 20}, 10.317351341247559`}, {{2016, 
            4, 21}, 10.004705429077148`}, {{2016, 4, 22}, 
            9.947858810424805}, {{2016, 4, 25}, 9.90048885345459}, {{2016, 4, 
            26}, 10.080496788024902`}, {{2016, 4, 27}, 
            10.108920097351074`}, {{2016, 4, 28}, 9.834169387817383}, {{2016, 
            4, 29}, 9.663634300231934}, {{2016, 5, 2}, 9.834169387817383}, {{
            2016, 5, 3}, 9.767850875854492}, {{2016, 5, 4}, 
            9.81521987915039}, {{2016, 5, 5}, 9.625738143920898}, {{2016, 5, 
            6}, 9.720479011535645}, {{2016, 5, 9}, 9.758376121520996}, {{2016,
             5, 10}, 9.81521987915039}, {{2016, 5, 11}, 8.015132904052734}, {{
            2016, 5, 12}, 7.787752151489258}, {{2016, 5, 13}, 
            7.854071140289307}, {{2016, 5, 16}, 7.901442527770996}, {{2016, 5,
             17}, 7.844596862792969}, {{2016, 5, 18}, 7.806700706481934}, {{
            2016, 5, 19}, 7.598269939422607}, {{2016, 5, 20}, 
            7.674063205718994}, {{2016, 5, 23}, 7.844596862792969}, {{2016, 5,
             24}, 8.034080505371094}, {{2016, 5, 25}, 8.10987377166748}, {{
            2016, 5, 26}, 8.138296127319336}, {{2016, 5, 27}, 
            8.251985549926758}, {{2016, 5, 31}, 8.33725357055664}, {{2016, 6, 
            1}, 8.299356460571289}, {{2016, 6, 2}, 8.36567497253418}, {{2016, 
            6, 3}, 8.384624481201172}, {{2016, 6, 6}, 8.498313903808594}, {{
            2016, 6, 7}, 8.403572082519531}, {{2016, 6, 8}, 
            8.431994438171387}, {{2016, 6, 9}, 8.289881706237793}, {{2016, 6, 
            10}, 8.251985549926758}, {{2016, 6, 13}, 8.176192283630371}, {{
            2016, 6, 14}, 8.100399017333984}, {{2016, 6, 15}, 
            8.251985549926758}, {{2016, 6, 16}, 8.242511749267578}, {{2016, 6,
             17}, 8.308831214904785}, {{2016, 6, 20}, 8.488840103149414}, {{
            2016, 6, 21}, 8.394097328186035}, {{2016, 6, 22}, 
            8.346076011657715}, {{2016, 6, 23}, 8.595787048339844}, {{2016, 6,
             24}, 8.365285873413086}, {{2016, 6, 27}, 7.750614166259766}, {{
            2016, 6, 28}, 8.115574836730957}, {{2016, 6, 29}, 
            8.230826377868652}, {{2016, 6, 30}, 8.278846740722656}, {{2016, 7,
             1}, 8.490140914916992}, {{2016, 7, 5}, 8.211617469787598}, {{
            2016, 7, 6}, 8.355681419372559}, {{2016, 7, 7}, 
            8.230826377868652}, {{2016, 7, 8}, 8.49974536895752}, {{2016, 7, 
            11}, 8.566974639892578}, {{2016, 7, 12}, 8.787871360778809}, {{
            2016, 7, 13}, 8.701434135437012}, {{2016, 7, 14}, 
            8.759057998657227}, {{2016, 7, 15}, 8.643807411193848}, {{2016, 7,
             18}, 8.711036682128906}, {{2016, 7, 19}, 8.682225227355957}, {{
            2016, 7, 20}, 8.711036682128906}, {{2016, 7, 21}, 
            8.643807411193848}, {{2016, 7, 22}, 8.711036682128906}, {{2016, 7,
             25}, 8.749454498291016}, {{2016, 7, 26}, 8.835892677307129}, {{
            2016, 7, 27}, 8.88391399383545}, {{2016, 7, 28}, 
            8.864705085754395}, {{2016, 7, 29}, 8.922330856323242}, {{2016, 8,
             1}, 8.9895601272583}, {{2016, 8, 2}, 8.413307189941406}, {{2016, 
            8, 3}, 8.634203910827637}, {{2016, 8, 4}, 8.691828727722168}, {{
            2016, 8, 5}, 8.81668472290039}, {{2016, 8, 8}, 
            8.826287269592285}, {{2016, 8, 9}, 8.739850997924805}, {{2016, 8, 
            10}, 8.739850997924805}, {{2016, 8, 11}, 8.922330856323242}, {{
            2016, 8, 12}, 8.826287269592285}, {{2016, 8, 15}, 
            8.903122901916504}, {{2016, 8, 16}, 8.960748672485352}, {{2016, 8,
             17}, 8.326868057250977}, {{2016, 8, 18}, 8.144387245178223}, {{
            2016, 8, 19}, 8.086763381958008}, {{2016, 8, 22}, 
            8.1251802444458}, {{2016, 8, 23}, 8.33647346496582}, {{2016, 8, 
            24}, 8.163596153259277}, {{2016, 8, 25}, 8.221221923828125}, {{
            2016, 8, 26}, 8.153992652893066}, {{2016, 8, 29}, 
            8.33647346496582}, {{2016, 8, 30}, 8.278846740722656}, {{2016, 8, 
            31}, 8.221221923828125}, {{2016, 9, 1}, 8.173201560974121}, {{
            2016, 9, 2}, 8.221221923828125}, {{2016, 9, 6}, 
            8.230826377868652}, {{2016, 9, 7}, 8.442118644714355}, {{2016, 9, 
            8}, 8.384493827819824}, {{2016, 9, 9}, 8.182805061340332}, {{2016,
             9, 12}, 8.365285873413086}, {{2016, 9, 13}, 
            8.153992652893066}, {{2016, 9, 14}, 8.144387245178223}, {{2016, 9,
             15}, 8.250035285949707}, {{2016, 9, 16}, 8.298055648803711}, {{
            2016, 9, 19}, 8.211617469787598}, {{2016, 9, 20}, 
            8.1251802444458}, {{2016, 9, 21}, 8.242088317871094}, {{2016, 9, 
            22}, 8.329771041870117}, {{2016, 9, 23}, 8.320028305053711}, {{
            2016, 9, 26}, 8.095952987670898}, {{2016, 9, 27}, 
            8.144664764404297}, {{2016, 9, 28}, 8.154406547546387}, {{2016, 9,
             29}, 8.1251802444458}, {{2016, 9, 30}, 8.329771041870117}, {{
            2016, 10, 3}, 8.232346534729004}, {{2016, 10, 4}, 
            7.998528957366943}, {{2016, 10, 5}, 8.027755737304688}, {{2016, 
            10, 6}, 7.832907199859619}, {{2016, 10, 7}, 7.823164463043213}, {{
            2016, 10, 10}, 7.842649936676025}, {{2016, 10, 11}, 
            7.56011962890625}, {{2016, 10, 12}, 7.5990891456604}, {{2016, 10, 
            13}, 7.452952861785889}, {{2016, 10, 14}, 7.365270614624023}, {{
            2016, 10, 17}, 7.219134330749512}, {{2016, 10, 18}, 
            7.306816577911377}, {{2016, 10, 19}, 7.394498348236084}, {{2016, 
            10, 20}, 7.355528831481934}, {{2016, 10, 21}, 
            7.345786094665527}, {{2016, 10, 24}, 7.345786094665527}, {{2016, 
            10, 25}, 7.336043834686279}, {{2016, 10, 26}, 
            7.297073841094971}, {{2016, 10, 27}, 7.0924835205078125`}, {{2016,
             10, 28}, 7.160679817199707}, {{2016, 10, 31}, 
            7.209392547607422}, {{2016, 11, 1}, 7.111968040466309}, {{2016, 
            11, 2}, 7.1704230308532715`}, {{2016, 11, 3}, 
            7.141195297241211}, {{2016, 11, 4}, 7.1704230308532715`}, {{2016, 
            11, 7}, 7.501664638519287}, {{2016, 11, 8}, 7.462695121765137}, {{
            2016, 11, 9}, 7.8718767166137695`}, {{2016, 11, 10}, 
            8.35899829864502}, {{2016, 11, 11}, 8.446680068969727}, {{2016, 
            11, 14}, 8.66101360321045}, {{2016, 11, 15}, 8.62204360961914}, {{
            2016, 11, 16}, 8.74869441986084}, {{2016, 11, 17}, 
            9.089678764343262}, {{2016, 11, 18}, 9.352725982666016}, {{2016, 
            11, 21}, 9.547574043273926}, {{2016, 11, 22}, 
            9.576800346374512}, {{2016, 11, 23}, 9.683967590332031}, {{2016, 
            11, 25}, 9.596285820007324}, {{2016, 11, 28}, 
            9.450149536132812}, {{2016, 11, 29}, 9.557315826416016}, {{2016, 
            11, 30}, 9.420921325683594}, {{2016, 12, 1}, 
            9.420921325683594}, {{2016, 12, 2}, 9.391695022583008}, {{2016, 
            12, 5}, 9.498861312866211}, {{2016, 12, 6}, 9.635255813598633}, {{
            2016, 12, 7}, 9.693710327148438}, {{2016, 12, 8}, 
            9.74242115020752}, {{2016, 12, 9}, 9.752163887023926}, {{2016, 12,
             12}, 9.625513076782227}, {{2016, 12, 13}, 9.635255813598633}, {{
            2016, 12, 14}, 9.674224853515625}, {{2016, 12, 15}, 
            9.61577033996582}, {{2016, 12, 16}, 9.713194847106934}, {{2016, 
            12, 19}, 9.634305953979492}, {{2016, 12, 20}, 
            9.703333854675293}, {{2016, 12, 21}, 9.565277099609375}, {{2016, 
            12, 22}, 9.131388664245605}, {{2016, 12, 23}, 
            9.091944694519043}, {{2016, 12, 27}, 9.131388664245605}, {{2016, 
            12, 28}, 8.973611831665039}, {{2016, 12, 29}, 
            9.052499771118164}, {{2016, 12, 30}, 8.92430591583252}, {{2017, 1,
             3}, 8.766528129577637}, {{2017, 1, 4}, 9.022915840148926}, {{
            2017, 1, 5}, 8.904582977294922}, {{2017, 1, 6}, 
            9.022915840148926}, {{2017, 1, 9}, 9.013055801391602}, {{2017, 1, 
            10}, 9.210277557373047}, {{2017, 1, 11}, 9.121527671813965}, {{
            2017, 1, 12}, 9.121527671813965}, {{2017, 1, 13}, 
            9.042638778686523}, {{2017, 1, 17}, 9.200416564941406}, {{2017, 1,
             18}, 9.160972595214844}, {{2017, 1, 19}, 8.92430591583252}, {{
            2017, 1, 20}, 9.032777786254883}, {{2017, 1, 23}, 
            8.93416690826416}, {{2017, 1, 24}, 9.141250610351562}, {{2017, 1, 
            25}, 9.279305458068848}, {{2017, 1, 26}, 9.170833587646484}, {{
            2017, 1, 27}, 9.032777786254883}, {{2017, 1, 30}, 
            9.082083702087402}, {{2017, 1, 31}, 9.072221755981445}, {{2017, 2,
             1}, 8.904582977294922}, {{2017, 2, 2}, 8.894722938537598}, {{
            2017, 2, 3}, 8.904582977294922}, {{2017, 2, 6}, 
            8.82569408416748}, {{2017, 2, 7}, 8.796111106872559}, {{2017, 2, 
            8}, 8.796111106872559}, {{2017, 2, 9}, 8.904582977294922}, {{2017,
             2, 10}, 9.022915840148926}, {{2017, 2, 13}, 
            9.072221755981445}, {{2017, 2, 14}, 9.328611373901367}, {{2017, 2,
             15}, 9.328611373901367}, {{2017, 2, 16}, 9.141250610351562}, {{
            2017, 2, 17}, 9.180694580078125}, {{2017, 2, 21}, 
            9.210277557373047}, {{2017, 2, 22}, 9.348332405090332}, {{2017, 2,
             23}, 8.953888893127441}, {{2017, 2, 24}, 9.151110649108887}, {{
            2017, 2, 27}, 9.180694580078125}, {{2017, 2, 28}, 
            8.86513900756836}, {{2017, 3, 1}, 9.042638778686523}, {{2017, 3, 
            2}, 9.121527671813965}, {{2017, 3, 3}, 8.86513900756836}, {{2017, 
            3, 6}, 8.746805191040039}, {{2017, 3, 7}, 8.658055305480957}, {{
            2017, 3, 8}, 8.835555076599121}, {{2017, 3, 9}, 
            8.372082710266113}, {{2017, 3, 10}, 8.559444427490234}, {{2017, 3,
             13}, 8.450971603393555}, {{2017, 3, 14}, 8.549583435058594}, {{
            2017, 3, 15}, 8.658055305480957}, {{2017, 3, 16}, 
            8.638333320617676}, {{2017, 3, 17}, 8.875}, {{2017, 3, 20}, 
            8.707361221313477}, {{2017, 3, 21}, 8.520000457763672}, {{2017, 3,
             22}, 8.510000228881836}, {{2017, 3, 23}, 8.520000457763672}, {{
            2017, 3, 24}, 8.470000267028809}, {{2017, 3, 27}, 
            8.359999656677246}, {{2017, 3, 28}, 8.489999771118164}, {{2017, 3,
             29}, 8.569999694824219}, {{2017, 3, 30}, 8.739999771118164}, {{
            2017, 3, 31}, 8.770000457763672}, {{2017, 4, 3}, 
            8.65999984741211}, {{2017, 4, 4}, 9.510000228881836}, {{2017, 4, 
            5}, 9.760000228881836}, {{2017, 4, 6}, 9.819999694824219}, {{2017,
             4, 7}, 9.75}, {{2017, 4, 10}, 9.699999809265137}, {{2017, 4, 11},
             9.680000305175781}, {{2017, 4, 12}, 9.510000228881836}, {{2017, 
            4, 13}, 9.520000457763672}, {{2017, 4, 17}, 9.600000381469727}, {{
            2017, 4, 18}, 9.600000381469727}, {{2017, 4, 19}, 
            9.619999885559082}, {{2017, 4, 20}, 9.739999771118164}, {{2017, 4,
             21}, 9.720000267028809}, {{2017, 4, 24}, 9.880000114440918}, {{
            2017, 4, 25}, 9.829999923706055}, {{2017, 4, 26}, 
            9.829999923706055}, {{2017, 4, 27}, 9.829999923706055}, {{2017, 4,
             28}, 9.770000457763672}, {{2017, 5, 1}, 9.649999618530273}, {{
            2017, 5, 2}, 9.779999732971191}, {{2017, 5, 3}, 
            9.65999984741211}, {{2017, 5, 4}, 9.609999656677246}, {{2017, 5, 
            5}, 9.59000015258789}, {{2017, 5, 8}, 9.649999618530273}, {{2017, 
            5, 9}, 9.619999885559082}, {{2017, 5, 10}, 9.720000267028809}, {{
            2017, 5, 11}, 9.430000305175781}, {{2017, 5, 12}, 9.25}, {{2017, 
            5, 15}, 9.319999694824219}, {{2017, 5, 16}, 8.989999771118164}, {{
            2017, 5, 17}, 8.850000381469727}, {{2017, 5, 18}, 8.75}, {{2017, 
            5, 19}, 8.720000267028809}, {{2017, 5, 22}, 8.779999732971191}, {{
            2017, 5, 23}, 8.680000305175781}, {{2017, 5, 24}, 
            8.779999732971191}, {{2017, 5, 25}, 9.0600004196167}, {{2017, 5, 
            26}, 8.979999542236328}, {{2017, 5, 30}, 8.960000038146973}, {{
            2017, 5, 31}, 9.079999923706055}, {{2017, 6, 1}, 
            9.149999618530273}, {{2017, 6, 2}, 9.100000381469727}, {{2017, 6, 
            5}, 9.100000381469727}, {{2017, 6, 6}, 9.09000015258789}, {{2017, 
            6, 7}, 9.15999984741211}, {{2017, 6, 8}, 9.220000267028809}, {{
            2017, 6, 9}, 9.25}, {{2017, 6, 12}, 9.25}, {{2017, 6, 13}, 
            9.149999618530273}, {{2017, 6, 14}, 8.979999542236328}, {{2017, 6,
             15}, 8.989999771118164}, {{2017, 6, 16}, 8.800000190734863}, {{
            2017, 6, 19}, 8.84000015258789}}, 
         "model" -> {{{2014, 6, 23}, 13.554475332388915`}, {{2014, 6, 23}, 
            13.554475332388915`}, {{2014, 6, 23}, 13.554475332388915`}, {{
            2014, 6, 24}, 13.549446799274563`}, {{2014, 6, 24}, 
            13.549446799274563`}, {{2014, 6, 24}, 13.549446799274563`}, {{
            2014, 6, 25}, 13.54441826616021}, {{2014, 6, 25}, 
            13.54441826616021}, {{2014, 6, 25}, 13.54441826616021}, {{2014, 6,
             26}, 13.539389733045859`}, {{2014, 6, 26}, 
            13.539389733045859`}, {{2014, 6, 26}, 13.539389733045859`}, {{
            2014, 6, 27}, 13.534361199931507`}, {{2014, 6, 27}, 
            13.534361199931507`}, {{2014, 6, 27}, 13.534361199931507`}, {{
            2014, 6, 30}, 13.519275600588452`}, {{2014, 6, 30}, 
            13.519275600588452`}, {{2014, 6, 30}, 13.519275600588452`}, {{
            2014, 7, 1}, 13.5142470674741}, {{2014, 7, 1}, 
            13.5142470674741}, {{2014, 7, 1}, 13.5142470674741}, {{2014, 7, 
            2}, 13.509218534359748`}, {{2014, 7, 2}, 13.509218534359748`}, {{
            2014, 7, 2}, 13.509218534359748`}, {{2014, 7, 3}, 
            13.504190001245396`}, {{2014, 7, 3}, 13.504190001245396`}, {{2014,
             7, 3}, 13.504190001245396`}, {{2014, 7, 7}, 
            13.48407586878799}, {{2014, 7, 7}, 13.48407586878799}, {{2014, 7, 
            7}, 13.48407586878799}, {{2014, 7, 8}, 13.479047335673638`}, {{
            2014, 7, 8}, 13.479047335673638`}, {{2014, 7, 8}, 
            13.479047335673638`}, {{2014, 7, 9}, 13.474018802559286`}, {{2014,
             7, 9}, 13.474018802559286`}, {{2014, 7, 9}, 
            13.474018802559286`}, {{2014, 7, 10}, 13.468990269444934`}, {{
            2014, 7, 10}, 13.468990269444934`}, {{2014, 7, 10}, 
            13.468990269444934`}, {{2014, 7, 11}, 13.463961736330582`}, {{
            2014, 7, 11}, 13.463961736330582`}, {{2014, 7, 11}, 
            13.463961736330582`}, {{2014, 7, 14}, 13.448876136987526`}, {{
            2014, 7, 14}, 13.448876136987526`}, {{2014, 7, 14}, 
            13.448876136987526`}, {{2014, 7, 15}, 13.443847603873175`}, {{
            2014, 7, 15}, 13.443847603873175`}, {{2014, 7, 15}, 
            13.443847603873175`}, {{2014, 7, 16}, 13.438819070758823`}, {{
            2014, 7, 16}, 13.438819070758823`}, {{2014, 7, 16}, 
            13.438819070758823`}, {{2014, 7, 17}, 13.433790537644471`}, {{
            2014, 7, 17}, 13.433790537644471`}, {{2014, 7, 17}, 
            13.433790537644471`}, {{2014, 7, 18}, 13.42876200453012}, {{2014, 
            7, 18}, 13.42876200453012}, {{2014, 7, 18}, 13.42876200453012}, {{
            2014, 7, 21}, 13.413676405187063`}, {{2014, 7, 21}, 
            13.413676405187063`}, {{2014, 7, 21}, 13.413676405187063`}, {{
            2014, 7, 22}, 13.408647872072711`}, {{2014, 7, 22}, 
            13.408647872072711`}, {{2014, 7, 22}, 13.408647872072711`}, {{
            2014, 7, 23}, 13.403619338958359`}, {{2014, 7, 23}, 
            13.403619338958359`}, {{2014, 7, 23}, 13.403619338958359`}, {{
            2014, 7, 24}, 13.398590805844009`}, {{2014, 7, 24}, 
            13.398590805844009`}, {{2014, 7, 24}, 13.398590805844009`}, {{
            2014, 7, 25}, 13.393562272729657`}, {{2014, 7, 25}, 
            13.393562272729657`}, {{2014, 7, 25}, 13.393562272729657`}, {{
            2014, 7, 28}, 13.3784766733866}, {{2014, 7, 28}, 
            13.3784766733866}, {{2014, 7, 28}, 13.3784766733866}, {{2014, 7, 
            29}, 13.373448140272249`}, {{2014, 7, 29}, 
            13.373448140272249`}, {{2014, 7, 29}, 13.373448140272249`}, {{
            2014, 7, 30}, 13.368419607157897`}, {{2014, 7, 30}, 
            13.368419607157897`}, {{2014, 7, 30}, 13.368419607157897`}, {{
            2014, 7, 31}, 13.363391074043545`}, {{2014, 7, 31}, 
            13.363391074043545`}, {{2014, 7, 31}, 13.363391074043545`}, {{
            2014, 8, 1}, 13.358362540929193`}, {{2014, 8, 1}, 
            13.358362540929193`}, {{2014, 8, 1}, 13.358362540929193`}, {{2014,
             8, 4}, 13.343276941586138`}, {{2014, 8, 4}, 
            13.343276941586138`}, {{2014, 8, 4}, 13.343276941586138`}, {{2014,
             8, 5}, 13.338248408471786`}, {{2014, 8, 5}, 
            13.338248408471786`}, {{2014, 8, 5}, 13.338248408471786`}, {{2014,
             8, 6}, 13.333219875357434`}, {{2014, 8, 6}, 
            13.333219875357434`}, {{2014, 8, 6}, 13.333219875357434`}, {{2014,
             8, 7}, 13.328191342243082`}, {{2014, 8, 7}, 
            13.328191342243082`}, {{2014, 8, 7}, 13.328191342243082`}, {{2014,
             8, 8}, 13.32316280912873}, {{2014, 8, 8}, 13.32316280912873}, {{
            2014, 8, 8}, 13.32316280912873}, {{2014, 8, 11}, 
            13.308077209785676`}, {{2014, 8, 11}, 13.308077209785676`}, {{
            2014, 8, 11}, 13.308077209785676`}, {{2014, 8, 12}, 
            13.303048676671324`}, {{2014, 8, 12}, 13.303048676671324`}, {{
            2014, 8, 12}, 13.303048676671324`}, {{2014, 8, 13}, 
            13.298020143556972`}, {{2014, 8, 13}, 13.298020143556972`}, {{
            2014, 8, 13}, 13.298020143556972`}, {{2014, 8, 14}, 
            13.29299161044262}, {{2014, 8, 14}, 13.29299161044262}, {{2014, 8,
             14}, 13.29299161044262}, {{2014, 8, 15}, 13.287963077328268`}, {{
            2014, 8, 15}, 13.287963077328268`}, {{2014, 8, 15}, 
            13.287963077328268`}, {{2014, 8, 18}, 13.272877477985212`}, {{
            2014, 8, 18}, 13.272877477985212`}, {{2014, 8, 18}, 
            13.272877477985212`}, {{2014, 8, 19}, 13.267848944870861`}, {{
            2014, 8, 19}, 13.267848944870861`}, {{2014, 8, 19}, 
            13.267848944870861`}, {{2014, 8, 20}, 13.26282041175651}, {{2014, 
            8, 20}, 13.26282041175651}, {{2014, 8, 20}, 13.26282041175651}, {{
            2014, 8, 21}, 13.257791878642157`}, {{2014, 8, 21}, 
            13.257791878642157`}, {{2014, 8, 21}, 13.257791878642157`}, {{
            2014, 8, 22}, 13.252763345527805`}, {{2014, 8, 22}, 
            13.252763345527805`}, {{2014, 8, 22}, 13.252763345527805`}, {{
            2014, 8, 25}, 13.23767774618475}, {{2014, 8, 25}, 
            13.23767774618475}, {{2014, 8, 25}, 13.23767774618475}, {{2014, 8,
             26}, 13.232649213070397`}, {{2014, 8, 26}, 
            13.232649213070397`}, {{2014, 8, 26}, 13.232649213070397`}, {{
            2014, 8, 27}, 13.227620679956045`}, {{2014, 8, 27}, 
            13.227620679956045`}, {{2014, 8, 27}, 13.227620679956045`}, {{
            2014, 8, 28}, 13.222592146841695`}, {{2014, 8, 28}, 
            13.222592146841695`}, {{2014, 8, 28}, 13.222592146841695`}, {{
            2014, 8, 29}, 13.217563613727343`}, {{2014, 8, 29}, 
            13.217563613727343`}, {{2014, 8, 29}, 13.217563613727343`}, {{
            2014, 9, 2}, 13.197449481269935`}, {{2014, 9, 2}, 
            13.197449481269935`}, {{2014, 9, 2}, 13.197449481269935`}, {{2014,
             9, 3}, 13.192420948155583`}, {{2014, 9, 3}, 
            13.192420948155583`}, {{2014, 9, 3}, 13.192420948155583`}, {{2014,
             9, 4}, 13.18739241504123}, {{2014, 9, 4}, 13.18739241504123}, {{
            2014, 9, 4}, 13.18739241504123}, {{2014, 9, 5}, 
            13.182363881926879`}, {{2014, 9, 5}, 13.182363881926879`}, {{2014,
             9, 5}, 13.182363881926879`}, {{2014, 9, 8}, 
            13.167278282583824`}, {{2014, 9, 8}, 13.167278282583824`}, {{2014,
             9, 8}, 13.167278282583824`}, {{2014, 9, 9}, 
            13.162249749469472`}, {{2014, 9, 9}, 13.162249749469472`}, {{2014,
             9, 9}, 13.162249749469472`}, {{2014, 9, 10}, 
            13.15722121635512}, {{2014, 9, 10}, 13.15722121635512}, {{2014, 9,
             10}, 13.15722121635512}, {{2014, 9, 11}, 13.152192683240768`}, {{
            2014, 9, 11}, 13.152192683240768`}, {{2014, 9, 11}, 
            13.152192683240768`}, {{2014, 9, 12}, 13.147164150126416`}, {{
            2014, 9, 12}, 13.147164150126416`}, {{2014, 9, 12}, 
            13.147164150126416`}, {{2014, 9, 15}, 13.132078550783362`}, {{
            2014, 9, 15}, 13.132078550783362`}, {{2014, 9, 15}, 
            13.132078550783362`}, {{2014, 9, 16}, 13.12705001766901}, {{2014, 
            9, 16}, 13.12705001766901}, {{2014, 9, 16}, 13.12705001766901}, {{
            2014, 9, 17}, 13.122021484554658`}, {{2014, 9, 17}, 
            13.122021484554658`}, {{2014, 9, 17}, 13.122021484554658`}, {{
            2014, 9, 18}, 13.116992951440306`}, {{2014, 9, 18}, 
            13.116992951440306`}, {{2014, 9, 18}, 13.116992951440306`}, {{
            2014, 9, 19}, 13.111964418325954`}, {{2014, 9, 19}, 
            13.111964418325954`}, {{2014, 9, 19}, 13.111964418325954`}, {{
            2014, 9, 22}, 13.096878818982898`}, {{2014, 9, 22}, 
            13.096878818982898`}, {{2014, 9, 22}, 13.096878818982898`}, {{
            2014, 9, 23}, 13.091850285868547`}, {{2014, 9, 23}, 
            13.091850285868547`}, {{2014, 9, 23}, 13.091850285868547`}, {{
            2014, 9, 24}, 13.086821752754195`}, {{2014, 9, 24}, 
            13.086821752754195`}, {{2014, 9, 24}, 13.086821752754195`}, {{
            2014, 9, 25}, 13.081793219639843`}, {{2014, 9, 25}, 
            13.081793219639843`}, {{2014, 9, 25}, 13.081793219639843`}, {{
            2014, 9, 26}, 13.076764686525491`}, {{2014, 9, 26}, 
            13.076764686525491`}, {{2014, 9, 26}, 13.076764686525491`}, {{
            2014, 9, 29}, 13.061679087182435`}, {{2014, 9, 29}, 
            13.061679087182435`}, {{2014, 9, 29}, 13.061679087182435`}, {{
            2014, 9, 30}, 13.056650554068083`}, {{2014, 9, 30}, 
            13.056650554068083`}, {{2014, 9, 30}, 13.056650554068083`}, {{
            2014, 10, 1}, 13.051622020953731`}, {{2014, 10, 1}, 
            13.051622020953731`}, {{2014, 10, 1}, 13.051622020953731`}, {{
            2014, 10, 2}, 13.046593487839381`}, {{2014, 10, 2}, 
            13.046593487839381`}, {{2014, 10, 2}, 13.046593487839381`}, {{
            2014, 10, 3}, 13.041564954725029`}, {{2014, 10, 3}, 
            13.041564954725029`}, {{2014, 10, 3}, 13.041564954725029`}, {{
            2014, 10, 6}, 13.026479355381973`}, {{2014, 10, 6}, 
            13.026479355381973`}, {{2014, 10, 6}, 13.026479355381973`}, {{
            2014, 10, 7}, 13.02145082226762}, {{2014, 10, 7}, 
            13.02145082226762}, {{2014, 10, 7}, 13.02145082226762}, {{2014, 
            10, 8}, 13.016422289153269`}, {{2014, 10, 8}, 
            13.016422289153269`}, {{2014, 10, 8}, 13.016422289153269`}, {{
            2014, 10, 9}, 13.011393756038917`}, {{2014, 10, 9}, 
            13.011393756038917`}, {{2014, 10, 9}, 13.011393756038917`}, {{
            2014, 10, 10}, 13.006365222924565`}, {{2014, 10, 10}, 
            13.006365222924565`}, {{2014, 10, 10}, 13.006365222924565`}, {{
            2014, 10, 13}, 12.99127962358151}, {{2014, 10, 13}, 
            12.99127962358151}, {{2014, 10, 13}, 12.99127962358151}, {{2014, 
            10, 14}, 12.986251090467158`}, {{2014, 10, 14}, 
            12.986251090467158`}, {{2014, 10, 14}, 12.986251090467158`}, {{
            2014, 10, 15}, 12.981222557352806`}, {{2014, 10, 15}, 
            12.981222557352806`}, {{2014, 10, 15}, 12.981222557352806`}, {{
            2014, 10, 16}, 12.976194024238454`}, {{2014, 10, 16}, 
            12.976194024238454`}, {{2014, 10, 16}, 12.976194024238454`}, {{
            2014, 10, 17}, 12.971165491124102`}, {{2014, 10, 17}, 
            12.971165491124102`}, {{2014, 10, 17}, 12.971165491124102`}, {{
            2014, 10, 20}, 12.956079891781048`}, {{2014, 10, 20}, 
            12.956079891781048`}, {{2014, 10, 20}, 12.956079891781048`}, {{
            2014, 10, 21}, 12.951051358666696`}, {{2014, 10, 21}, 
            12.951051358666696`}, {{2014, 10, 21}, 12.951051358666696`}, {{
            2014, 10, 22}, 12.946022825552344`}, {{2014, 10, 22}, 
            12.946022825552344`}, {{2014, 10, 22}, 12.946022825552344`}, {{
            2014, 10, 23}, 12.940994292437992`}, {{2014, 10, 23}, 
            12.940994292437992`}, {{2014, 10, 23}, 12.940994292437992`}, {{
            2014, 10, 24}, 12.93596575932364}, {{2014, 10, 24}, 
            12.93596575932364}, {{2014, 10, 24}, 12.93596575932364}, {{2014, 
            10, 27}, 12.920880159980584`}, {{2014, 10, 27}, 
            12.920880159980584`}, {{2014, 10, 27}, 12.920880159980584`}, {{
            2014, 10, 28}, 12.915851626866234`}, {{2014, 10, 28}, 
            12.915851626866234`}, {{2014, 10, 28}, 12.915851626866234`}, {{
            2014, 10, 29}, 12.910823093751882`}, {{2014, 10, 29}, 
            12.910823093751882`}, {{2014, 10, 29}, 12.910823093751882`}, {{
            2014, 10, 30}, 12.90579456063753}, {{2014, 10, 30}, 
            12.90579456063753}, {{2014, 10, 30}, 12.90579456063753}, {{2014, 
            10, 31}, 12.900766027523177`}, {{2014, 10, 31}, 
            12.900766027523177`}, {{2014, 10, 31}, 12.900766027523177`}, {{
            2014, 11, 3}, 12.885680428180121`}, {{2014, 11, 3}, 
            12.885680428180121`}, {{2014, 11, 3}, 12.885680428180121`}, {{
            2014, 11, 4}, 12.88065189506577}, {{2014, 11, 4}, 
            12.88065189506577}, {{2014, 11, 4}, 12.88065189506577}, {{2014, 
            11, 5}, 12.875623361951417`}, {{2014, 11, 5}, 
            12.875623361951417`}, {{2014, 11, 5}, 12.875623361951417`}, {{
            2014, 11, 6}, 12.870594828837067`}, {{2014, 11, 6}, 
            12.870594828837067`}, {{2014, 11, 6}, 12.870594828837067`}, {{
            2014, 11, 7}, 12.865566295722715`}, {{2014, 11, 7}, 
            12.865566295722715`}, {{2014, 11, 7}, 12.865566295722715`}, {{
            2014, 11, 10}, 12.850480696379659`}, {{2014, 11, 10}, 
            12.850480696379659`}, {{2014, 11, 10}, 12.850480696379659`}, {{
            2014, 11, 11}, 12.845452163265307`}, {{2014, 11, 11}, 
            12.845452163265307`}, {{2014, 11, 11}, 12.845452163265307`}, {{
            2014, 11, 12}, 12.840423630150955`}, {{2014, 11, 12}, 
            12.840423630150955`}, {{2014, 11, 12}, 12.840423630150955`}, {{
            2014, 11, 13}, 12.835395097036603`}, {{2014, 11, 13}, 
            12.835395097036603`}, {{2014, 11, 13}, 12.835395097036603`}, {{
            2014, 11, 14}, 12.83036656392225}, {{2014, 11, 14}, 
            12.83036656392225}, {{2014, 11, 14}, 12.83036656392225}, {{2014, 
            11, 17}, 12.815280964579197`}, {{2014, 11, 17}, 
            12.815280964579197`}, {{2014, 11, 17}, 12.815280964579197`}, {{
            2014, 11, 18}, 12.810252431464844`}, {{2014, 11, 18}, 
            12.810252431464844`}, {{2014, 11, 18}, 12.810252431464844`}, {{
            2014, 11, 19}, 12.805223898350492`}, {{2014, 11, 19}, 
            12.805223898350492`}, {{2014, 11, 19}, 12.805223898350492`}, {{
            2014, 11, 20}, 12.80019536523614}, {{2014, 11, 20}, 
            12.80019536523614}, {{2014, 11, 20}, 12.80019536523614}, {{2014, 
            11, 21}, 12.795166832121788`}, {{2014, 11, 21}, 
            12.795166832121788`}, {{2014, 11, 21}, 12.795166832121788`}, {{
            2014, 11, 24}, 12.780081232778734`}, {{2014, 11, 24}, 
            12.780081232778734`}, {{2014, 11, 24}, 12.780081232778734`}, {{
            2014, 11, 25}, 12.775052699664382`}, {{2014, 11, 25}, 
            12.775052699664382`}, {{2014, 11, 25}, 12.775052699664382`}, {{
            2014, 11, 26}, 12.77002416655003}, {{2014, 11, 26}, 
            12.77002416655003}, {{2014, 11, 26}, 12.77002416655003}, {{2014, 
            11, 28}, 12.759967100321326`}, {{2014, 11, 28}, 
            12.759967100321326`}, {{2014, 11, 28}, 12.759967100321326`}, {{
            2014, 12, 1}, 12.74488150097827}, {{2014, 12, 1}, 
            12.74488150097827}, {{2014, 12, 1}, 12.74488150097827}, {{2014, 
            12, 2}, 12.73985296786392}, {{2014, 12, 2}, 12.73985296786392}, {{
            2014, 12, 2}, 12.73985296786392}, {{2014, 12, 3}, 
            12.734824434749568`}, {{2014, 12, 3}, 12.734824434749568`}, {{
            2014, 12, 3}, 12.734824434749568`}, {{2014, 12, 4}, 
            12.729795901635216`}, {{2014, 12, 4}, 12.729795901635216`}, {{
            2014, 12, 4}, 12.729795901635216`}, {{2014, 12, 5}, 
            12.724767368520864`}, {{2014, 12, 5}, 12.724767368520864`}, {{
            2014, 12, 5}, 12.724767368520864`}, {{2014, 12, 8}, 
            12.709681769177807`}, {{2014, 12, 8}, 12.709681769177807`}, {{
            2014, 12, 8}, 12.709681769177807`}, {{2014, 12, 9}, 
            12.704653236063455`}, {{2014, 12, 9}, 12.704653236063455`}, {{
            2014, 12, 9}, 12.704653236063455`}, {{2014, 12, 10}, 
            12.699624702949103`}, {{2014, 12, 10}, 12.699624702949103`}, {{
            2014, 12, 10}, 12.699624702949103`}, {{2014, 12, 11}, 
            12.694596169834753`}, {{2014, 12, 11}, 12.694596169834753`}, {{
            2014, 12, 11}, 12.694596169834753`}, {{2014, 12, 12}, 
            12.689567636720401`}, {{2014, 12, 12}, 12.689567636720401`}, {{
            2014, 12, 12}, 12.689567636720401`}, {{2014, 12, 15}, 
            12.674482037377345`}, {{2014, 12, 15}, 12.674482037377345`}, {{
            2014, 12, 15}, 12.674482037377345`}, {{2014, 12, 16}, 
            12.669453504262993`}, {{2014, 12, 16}, 12.669453504262993`}, {{
            2014, 12, 16}, 12.669453504262993`}, {{2014, 12, 17}, 
            12.664424971148641`}, {{2014, 12, 17}, 12.664424971148641`}, {{
            2014, 12, 17}, 12.664424971148641`}, {{2014, 12, 18}, 
            12.659396438034289`}, {{2014, 12, 18}, 12.659396438034289`}, {{
            2014, 12, 18}, 12.659396438034289`}, {{2014, 12, 19}, 
            12.654367904919937`}, {{2014, 12, 19}, 12.654367904919937`}, {{
            2014, 12, 19}, 12.654367904919937`}, {{2014, 12, 22}, 
            12.639282305576883`}, {{2014, 12, 22}, 12.639282305576883`}, {{
            2014, 12, 22}, 12.639282305576883`}, {{2014, 12, 23}, 
            12.63425377246253}, {{2014, 12, 23}, 12.63425377246253}, {{2014, 
            12, 23}, 12.63425377246253}, {{2014, 12, 24}, 
            12.629225239348179`}, {{2014, 12, 24}, 12.629225239348179`}, {{
            2014, 12, 24}, 12.629225239348179`}, {{2014, 12, 26}, 
            12.619168173119474`}, {{2014, 12, 26}, 12.619168173119474`}, {{
            2014, 12, 26}, 12.619168173119474`}, {{2014, 12, 29}, 
            12.60408257377642}, {{2014, 12, 29}, 12.60408257377642}, {{2014, 
            12, 29}, 12.60408257377642}, {{2014, 12, 30}, 
            12.599054040662068`}, {{2014, 12, 30}, 12.599054040662068`}, {{
            2014, 12, 30}, 12.599054040662068`}, {{2014, 12, 31}, 
            12.594025507547716`}, {{2014, 12, 31}, 12.594025507547716`}, {{
            2014, 12, 31}, 12.594025507547716`}, {{2015, 1, 2}, 
            12.583968441319012`}, {{2015, 1, 2}, 12.583968441319012`}, {{2015,
             1, 2}, 12.583968441319012`}, {{2015, 1, 5}, 
            12.568882841975956`}, {{2015, 1, 5}, 12.568882841975956`}, {{2015,
             1, 5}, 12.568882841975956`}, {{2015, 1, 6}, 
            12.563854308861606`}, {{2015, 1, 6}, 12.563854308861606`}, {{2015,
             1, 6}, 12.563854308861606`}, {{2015, 1, 7}, 
            12.558825775747254`}, {{2015, 1, 7}, 12.558825775747254`}, {{2015,
             1, 7}, 12.558825775747254`}, {{2015, 1, 8}, 
            12.553797242632902`}, {{2015, 1, 8}, 12.553797242632902`}, {{2015,
             1, 8}, 12.553797242632902`}, {{2015, 1, 9}, 
            12.54876870951855}, {{2015, 1, 9}, 12.54876870951855}, {{2015, 1, 
            9}, 12.54876870951855}, {{2015, 1, 12}, 12.533683110175494`}, {{
            2015, 1, 12}, 12.533683110175494`}, {{2015, 1, 12}, 
            12.533683110175494`}, {{2015, 1, 13}, 12.528654577061141`}, {{
            2015, 1, 13}, 12.528654577061141`}, {{2015, 1, 13}, 
            12.528654577061141`}, {{2015, 1, 14}, 12.523626043946791`}, {{
            2015, 1, 14}, 12.523626043946791`}, {{2015, 1, 14}, 
            12.523626043946791`}, {{2015, 1, 15}, 12.51859751083244}, {{2015, 
            1, 15}, 12.51859751083244}, {{2015, 1, 15}, 12.51859751083244}, {{
            2015, 1, 16}, 12.513568977718087`}, {{2015, 1, 16}, 
            12.513568977718087`}, {{2015, 1, 16}, 12.513568977718087`}, {{
            2015, 1, 20}, 12.493454845260679`}, {{2015, 1, 20}, 
            12.493454845260679`}, {{2015, 1, 20}, 12.493454845260679`}, {{
            2015, 1, 21}, 12.488426312146327`}, {{2015, 1, 21}, 
            12.488426312146327`}, {{2015, 1, 21}, 12.488426312146327`}, {{
            2015, 1, 22}, 12.483397779031975`}, {{2015, 1, 22}, 
            12.483397779031975`}, {{2015, 1, 22}, 12.483397779031975`}, {{
            2015, 1, 23}, 12.478369245917623`}, {{2015, 1, 23}, 
            12.478369245917623`}, {{2015, 1, 23}, 12.478369245917623`}, {{
            2015, 1, 26}, 12.463283646574569`}, {{2015, 1, 26}, 
            12.463283646574569`}, {{2015, 1, 26}, 12.463283646574569`}, {{
            2015, 1, 27}, 12.458255113460217`}, {{2015, 1, 27}, 
            12.458255113460217`}, {{2015, 1, 27}, 12.458255113460217`}, {{
            2015, 1, 28}, 12.453226580345865`}, {{2015, 1, 28}, 
            12.453226580345865`}, {{2015, 1, 28}, 12.453226580345865`}, {{
            2015, 1, 29}, 12.448198047231513`}, {{2015, 1, 29}, 
            12.448198047231513`}, {{2015, 1, 29}, 12.448198047231513`}, {{
            2015, 1, 30}, 12.44316951411716}, {{2015, 1, 30}, 
            12.44316951411716}, {{2015, 1, 30}, 12.44316951411716}, {{2015, 2,
             2}, 12.428083914774106`}, {{2015, 2, 2}, 12.428083914774106`}, {{
            2015, 2, 2}, 12.428083914774106`}, {{2015, 2, 3}, 
            12.423055381659754`}, {{2015, 2, 3}, 12.423055381659754`}, {{2015,
             2, 3}, 12.423055381659754`}, {{2015, 2, 4}, 
            12.418026848545402`}, {{2015, 2, 4}, 12.418026848545402`}, {{2015,
             2, 4}, 12.418026848545402`}, {{2015, 2, 5}, 
            12.41299831543105}, {{2015, 2, 5}, 12.41299831543105}, {{2015, 2, 
            5}, 12.41299831543105}, {{2015, 2, 6}, 12.407969782316698`}, {{
            2015, 2, 6}, 12.407969782316698`}, {{2015, 2, 6}, 
            12.407969782316698`}, {{2015, 2, 9}, 12.392884182973642`}, {{2015,
             2, 9}, 12.392884182973642`}, {{2015, 2, 9}, 
            12.392884182973642`}, {{2015, 2, 10}, 12.387855649859292`}, {{
            2015, 2, 10}, 12.387855649859292`}, {{2015, 2, 10}, 
            12.387855649859292`}, {{2015, 2, 11}, 12.38282711674494}, {{2015, 
            2, 11}, 12.38282711674494}, {{2015, 2, 11}, 12.38282711674494}, {{
            2015, 2, 12}, 12.377798583630588`}, {{2015, 2, 12}, 
            12.377798583630588`}, {{2015, 2, 12}, 12.377798583630588`}, {{
            2015, 2, 13}, 12.372770050516236`}, {{2015, 2, 13}, 
            12.372770050516236`}, {{2015, 2, 13}, 12.372770050516236`}, {{
            2015, 2, 17}, 12.352655918058828`}, {{2015, 2, 17}, 
            12.352655918058828`}, {{2015, 2, 17}, 12.352655918058828`}, {{
            2015, 2, 18}, 12.347627384944477`}, {{2015, 2, 18}, 
            12.347627384944477`}, {{2015, 2, 18}, 12.347627384944477`}, {{
            2015, 2, 19}, 12.342598851830125`}, {{2015, 2, 19}, 
            12.342598851830125`}, {{2015, 2, 19}, 12.342598851830125`}, {{
            2015, 2, 20}, 12.337570318715773`}, {{2015, 2, 20}, 
            12.337570318715773`}, {{2015, 2, 20}, 12.337570318715773`}, {{
            2015, 2, 23}, 12.322484719372717`}, {{2015, 2, 23}, 
            12.322484719372717`}, {{2015, 2, 23}, 12.322484719372717`}, {{
            2015, 2, 24}, 12.317456186258365`}, {{2015, 2, 24}, 
            12.317456186258365`}, {{2015, 2, 24}, 12.317456186258365`}, {{
            2015, 2, 25}, 12.312427653144013`}, {{2015, 2, 25}, 
            12.312427653144013`}, {{2015, 2, 25}, 12.312427653144013`}, {{
            2015, 2, 26}, 12.307399120029661`}, {{2015, 2, 26}, 
            12.307399120029661`}, {{2015, 2, 26}, 12.307399120029661`}, {{
            2015, 2, 27}, 12.302370586915309`}, {{2015, 2, 27}, 
            12.302370586915309`}, {{2015, 2, 27}, 12.302370586915309`}, {{
            2015, 3, 2}, 12.287284987572255`}, {{2015, 3, 2}, 
            12.287284987572255`}, {{2015, 3, 2}, 12.287284987572255`}, {{2015,
             3, 3}, 12.282256454457903`}, {{2015, 3, 3}, 
            12.282256454457903`}, {{2015, 3, 3}, 12.282256454457903`}, {{2015,
             3, 4}, 12.27722792134355}, {{2015, 3, 4}, 12.27722792134355}, {{
            2015, 3, 4}, 12.27722792134355}, {{2015, 3, 5}, 
            12.272199388229199`}, {{2015, 3, 5}, 12.272199388229199`}, {{2015,
             3, 5}, 12.272199388229199`}, {{2015, 3, 6}, 
            12.267170855114847`}, {{2015, 3, 6}, 12.267170855114847`}, {{2015,
             3, 6}, 12.267170855114847`}, {{2015, 3, 9}, 
            12.252085255771792`}, {{2015, 3, 9}, 12.252085255771792`}, {{2015,
             3, 9}, 12.252085255771792`}, {{2015, 3, 10}, 
            12.24705672265744}, {{2015, 3, 10}, 12.24705672265744}, {{2015, 3,
             10}, 12.24705672265744}, {{2015, 3, 11}, 12.242028189543088`}, {{
            2015, 3, 11}, 12.242028189543088`}, {{2015, 3, 11}, 
            12.242028189543088`}, {{2015, 3, 12}, 12.236999656428736`}, {{
            2015, 3, 12}, 12.236999656428736`}, {{2015, 3, 12}, 
            12.236999656428736`}, {{2015, 3, 13}, 12.231971123314384`}, {{
            2015, 3, 13}, 12.231971123314384`}, {{2015, 3, 13}, 
            12.231971123314384`}, {{2015, 3, 16}, 12.216885523971328`}, {{
            2015, 3, 16}, 12.216885523971328`}, {{2015, 3, 16}, 
            12.216885523971328`}, {{2015, 3, 17}, 12.211856990856978`}, {{
            2015, 3, 17}, 12.211856990856978`}, {{2015, 3, 17}, 
            12.211856990856978`}, {{2015, 3, 18}, 12.206828457742626`}, {{
            2015, 3, 18}, 12.206828457742626`}, {{2015, 3, 18}, 
            12.206828457742626`}, {{2015, 3, 19}, 12.201799924628274`}, {{
            2015, 3, 19}, 12.201799924628274`}, {{2015, 3, 19}, 
            12.201799924628274`}, {{2015, 3, 20}, 12.196771391513922`}, {{
            2015, 3, 20}, 12.196771391513922`}, {{2015, 3, 20}, 
            12.196771391513922`}, {{2015, 3, 23}, 12.181685792170866`}, {{
            2015, 3, 23}, 12.181685792170866`}, {{2015, 3, 23}, 
            12.181685792170866`}, {{2015, 3, 24}, 12.176657259056514`}, {{
            2015, 3, 24}, 12.176657259056514`}, {{2015, 3, 24}, 
            12.176657259056514`}, {{2015, 3, 25}, 12.171628725942163`}, {{
            2015, 3, 25}, 12.171628725942163`}, {{2015, 3, 25}, 
            12.171628725942163`}, {{2015, 3, 26}, 12.166600192827811`}, {{
            2015, 3, 26}, 12.166600192827811`}, {{2015, 3, 26}, 
            12.166600192827811`}, {{2015, 3, 27}, 12.16157165971346}, {{2015, 
            3, 27}, 12.16157165971346}, {{2015, 3, 27}, 12.16157165971346}, {{
            2015, 3, 30}, 12.146486060370403`}, {{2015, 3, 30}, 
            12.146486060370403`}, {{2015, 3, 30}, 12.146486060370403`}, {{
            2015, 3, 31}, 12.141457527256051`}, {{2015, 3, 31}, 
            12.141457527256051`}, {{2015, 3, 31}, 12.141457527256051`}, {{
            2015, 4, 1}, 12.1364289941417}, {{2015, 4, 1}, 
            12.1364289941417}, {{2015, 4, 1}, 12.1364289941417}, {{2015, 4, 
            2}, 12.131400461027347`}, {{2015, 4, 2}, 12.131400461027347`}, {{
            2015, 4, 2}, 12.131400461027347`}, {{2015, 4, 6}, 
            12.11128632856994}, {{2015, 4, 6}, 12.11128632856994}, {{2015, 4, 
            6}, 12.11128632856994}, {{2015, 4, 7}, 12.106257795455589`}, {{
            2015, 4, 7}, 12.106257795455589`}, {{2015, 4, 7}, 
            12.106257795455589`}, {{2015, 4, 8}, 12.101229262341237`}, {{2015,
             4, 8}, 12.101229262341237`}, {{2015, 4, 8}, 
            12.101229262341237`}, {{2015, 4, 9}, 12.096200729226885`}, {{2015,
             4, 9}, 12.096200729226885`}, {{2015, 4, 9}, 
            12.096200729226885`}, {{2015, 4, 10}, 12.091172196112533`}, {{
            2015, 4, 10}, 12.091172196112533`}, {{2015, 4, 10}, 
            12.091172196112533`}, {{2015, 4, 13}, 12.076086596769478`}, {{
            2015, 4, 13}, 12.076086596769478`}, {{2015, 4, 13}, 
            12.076086596769478`}, {{2015, 4, 14}, 12.071058063655126`}, {{
            2015, 4, 14}, 12.071058063655126`}, {{2015, 4, 14}, 
            12.071058063655126`}, {{2015, 4, 15}, 12.066029530540774`}, {{
            2015, 4, 15}, 12.066029530540774`}, {{2015, 4, 15}, 
            12.066029530540774`}, {{2015, 4, 16}, 12.061000997426422`}, {{
            2015, 4, 16}, 12.061000997426422`}, {{2015, 4, 16}, 
            12.061000997426422`}, {{2015, 4, 17}, 12.05597246431207}, {{2015, 
            4, 17}, 12.05597246431207}, {{2015, 4, 17}, 12.05597246431207}, {{
            2015, 4, 20}, 12.040886864969014`}, {{2015, 4, 20}, 
            12.040886864969014`}, {{2015, 4, 20}, 12.040886864969014`}, {{
            2015, 4, 21}, 12.035858331854664`}, {{2015, 4, 21}, 
            12.035858331854664`}, {{2015, 4, 21}, 12.035858331854664`}, {{
            2015, 4, 22}, 12.030829798740312`}, {{2015, 4, 22}, 
            12.030829798740312`}, {{2015, 4, 22}, 12.030829798740312`}, {{
            2015, 4, 23}, 12.02580126562596}, {{2015, 4, 23}, 
            12.02580126562596}, {{2015, 4, 23}, 12.02580126562596}, {{2015, 4,
             24}, 12.020772732511608`}, {{2015, 4, 24}, 
            12.020772732511608`}, {{2015, 4, 24}, 12.020772732511608`}, {{
            2015, 4, 27}, 12.005687133168552`}, {{2015, 4, 27}, 
            12.005687133168552`}, {{2015, 4, 27}, 12.005687133168552`}, {{
            2015, 4, 28}, 12.0006586000542}, {{2015, 4, 28}, 
            12.0006586000542}, {{2015, 4, 28}, 12.0006586000542}, {{2015, 4, 
            29}, 11.99563006693985}, {{2015, 4, 29}, 11.99563006693985}, {{
            2015, 4, 29}, 11.99563006693985}, {{2015, 4, 30}, 
            11.990601533825497`}, {{2015, 4, 30}, 11.990601533825497`}, {{
            2015, 4, 30}, 11.990601533825497`}, {{2015, 5, 1}, 
            11.985573000711145`}, {{2015, 5, 1}, 11.985573000711145`}, {{2015,
             5, 1}, 11.985573000711145`}, {{2015, 5, 4}, 
            11.97048740136809}, {{2015, 5, 4}, 11.97048740136809}, {{2015, 5, 
            4}, 11.97048740136809}, {{2015, 5, 5}, 11.965458868253737`}, {{
            2015, 5, 5}, 11.965458868253737`}, {{2015, 5, 5}, 
            11.965458868253737`}, {{2015, 5, 6}, 11.960430335139385`}, {{2015,
             5, 6}, 11.960430335139385`}, {{2015, 5, 6}, 
            11.960430335139385`}, {{2015, 5, 7}, 11.955401802025033`}, {{2015,
             5, 7}, 11.955401802025033`}, {{2015, 5, 7}, 
            11.955401802025033`}, {{2015, 5, 8}, 11.950373268910681`}, {{2015,
             5, 8}, 11.950373268910681`}, {{2015, 5, 8}, 
            11.950373268910681`}, {{2015, 5, 11}, 11.935287669567627`}, {{
            2015, 5, 11}, 11.935287669567627`}, {{2015, 5, 11}, 
            11.935287669567627`}, {{2015, 5, 12}, 11.930259136453275`}, {{
            2015, 5, 12}, 11.930259136453275`}, {{2015, 5, 12}, 
            11.930259136453275`}, {{2015, 5, 13}, 11.925230603338923`}, {{
            2015, 5, 13}, 11.925230603338923`}, {{2015, 5, 13}, 
            11.925230603338923`}, {{2015, 5, 14}, 11.92020207022457}, {{2015, 
            5, 14}, 11.92020207022457}, {{2015, 5, 14}, 11.92020207022457}, {{
            2015, 5, 15}, 11.915173537110219`}, {{2015, 5, 15}, 
            11.915173537110219`}, {{2015, 5, 15}, 11.915173537110219`}, {{
            2015, 5, 18}, 11.900087937767164`}, {{2015, 5, 18}, 
            11.900087937767164`}, {{2015, 5, 18}, 11.900087937767164`}, {{
            2015, 5, 19}, 11.895059404652812`}, {{2015, 5, 19}, 
            11.895059404652812`}, {{2015, 5, 19}, 11.895059404652812`}, {{
            2015, 5, 20}, 11.89003087153846}, {{2015, 5, 20}, 
            11.89003087153846}, {{2015, 5, 20}, 11.89003087153846}, {{2015, 5,
             21}, 11.885002338424108`}, {{2015, 5, 21}, 
            11.885002338424108`}, {{2015, 5, 21}, 11.885002338424108`}, {{
            2015, 5, 22}, 11.879973805309756`}, {{2015, 5, 22}, 
            11.879973805309756`}, {{2015, 5, 22}, 11.879973805309756`}, {{
            2015, 5, 26}, 11.85985967285235}, {{2015, 5, 26}, 
            11.85985967285235}, {{2015, 5, 26}, 11.85985967285235}, {{2015, 5,
             27}, 11.854831139737998`}, {{2015, 5, 27}, 
            11.854831139737998`}, {{2015, 5, 27}, 11.854831139737998`}, {{
            2015, 5, 28}, 11.849802606623646`}, {{2015, 5, 28}, 
            11.849802606623646`}, {{2015, 5, 28}, 11.849802606623646`}, {{
            2015, 5, 29}, 11.844774073509294`}, {{2015, 5, 29}, 
            11.844774073509294`}, {{2015, 5, 29}, 11.844774073509294`}, {{
            2015, 6, 1}, 11.829688474166238`}, {{2015, 6, 1}, 
            11.829688474166238`}, {{2015, 6, 1}, 11.829688474166238`}, {{2015,
             6, 2}, 11.824659941051886`}, {{2015, 6, 2}, 
            11.824659941051886`}, {{2015, 6, 2}, 11.824659941051886`}, {{2015,
             6, 3}, 11.819631407937536`}, {{2015, 6, 3}, 
            11.819631407937536`}, {{2015, 6, 3}, 11.819631407937536`}, {{2015,
             6, 4}, 11.814602874823183`}, {{2015, 6, 4}, 
            11.814602874823183`}, {{2015, 6, 4}, 11.814602874823183`}, {{2015,
             6, 5}, 11.809574341708831`}, {{2015, 6, 5}, 
            11.809574341708831`}, {{2015, 6, 5}, 11.809574341708831`}, {{2015,
             6, 8}, 11.794488742365775`}, {{2015, 6, 8}, 
            11.794488742365775`}, {{2015, 6, 8}, 11.794488742365775`}, {{2015,
             6, 9}, 11.789460209251423`}, {{2015, 6, 9}, 
            11.789460209251423`}, {{2015, 6, 9}, 11.789460209251423`}, {{2015,
             6, 10}, 11.784431676137071`}, {{2015, 6, 10}, 
            11.784431676137071`}, {{2015, 6, 10}, 11.784431676137071`}, {{
            2015, 6, 11}, 11.77940314302272}, {{2015, 6, 11}, 
            11.77940314302272}, {{2015, 6, 11}, 11.77940314302272}, {{2015, 6,
             12}, 11.774374609908367`}, {{2015, 6, 12}, 
            11.774374609908367`}, {{2015, 6, 12}, 11.774374609908367`}, {{
            2015, 6, 15}, 11.759289010565313`}, {{2015, 6, 15}, 
            11.759289010565313`}, {{2015, 6, 15}, 11.759289010565313`}, {{
            2015, 6, 16}, 11.754260477450961`}, {{2015, 6, 16}, 
            11.754260477450961`}, {{2015, 6, 16}, 11.754260477450961`}, {{
            2015, 6, 17}, 11.749231944336609`}, {{2015, 6, 17}, 
            11.749231944336609`}, {{2015, 6, 17}, 11.749231944336609`}, {{
            2015, 6, 18}, 11.744203411222257`}, {{2015, 6, 18}, 
            11.744203411222257`}, {{2015, 6, 18}, 11.744203411222257`}, {{
            2015, 6, 19}, 11.739174878107905`}, {{2015, 6, 19}, 
            11.739174878107905`}, {{2015, 6, 19}, 11.739174878107905`}, {{
            2015, 6, 22}, 11.72408927876485}, {{2015, 6, 22}, 
            11.72408927876485}, {{2015, 6, 22}, 11.72408927876485}, {{2015, 6,
             23}, 11.719060745650498`}, {{2015, 6, 23}, 
            11.719060745650498`}, {{2015, 6, 23}, 11.719060745650498`}, {{
            2015, 6, 24}, 11.714032212536146`}, {{2015, 6, 24}, 
            11.714032212536146`}, {{2015, 6, 24}, 11.714032212536146`}, {{
            2015, 6, 25}, 11.709003679421794`}, {{2015, 6, 25}, 
            11.709003679421794`}, {{2015, 6, 25}, 11.709003679421794`}, {{
            2015, 6, 26}, 11.703975146307442`}, {{2015, 6, 26}, 
            11.703975146307442`}, {{2015, 6, 26}, 11.703975146307442`}, {{
            2015, 6, 29}, 11.688889546964386`}, {{2015, 6, 29}, 
            11.688889546964386`}, {{2015, 6, 29}, 11.688889546964386`}, {{
            2015, 6, 30}, 11.683861013850036`}, {{2015, 6, 30}, 
            11.683861013850036`}, {{2015, 6, 30}, 11.683861013850036`}, {{
            2015, 7, 1}, 11.678832480735684`}, {{2015, 7, 1}, 
            11.678832480735684`}, {{2015, 7, 1}, 11.678832480735684`}, {{2015,
             7, 2}, 11.673803947621332`}, {{2015, 7, 2}, 
            11.673803947621332`}, {{2015, 7, 2}, 11.673803947621332`}, {{2015,
             7, 6}, 11.653689815163924`}, {{2015, 7, 6}, 
            11.653689815163924`}, {{2015, 7, 6}, 11.653689815163924`}, {{2015,
             7, 7}, 11.648661282049572`}, {{2015, 7, 7}, 
            11.648661282049572`}, {{2015, 7, 7}, 11.648661282049572`}, {{2015,
             7, 8}, 11.643632748935222`}, {{2015, 7, 8}, 
            11.643632748935222`}, {{2015, 7, 8}, 11.643632748935222`}, {{2015,
             7, 9}, 11.63860421582087}, {{2015, 7, 9}, 11.63860421582087}, {{
            2015, 7, 9}, 11.63860421582087}, {{2015, 7, 10}, 
            11.633575682706518`}, {{2015, 7, 10}, 11.633575682706518`}, {{
            2015, 7, 10}, 11.633575682706518`}, {{2015, 7, 13}, 
            11.618490083363461`}, {{2015, 7, 13}, 11.618490083363461`}, {{
            2015, 7, 13}, 11.618490083363461`}, {{2015, 7, 14}, 
            11.61346155024911}, {{2015, 7, 14}, 11.61346155024911}, {{2015, 7,
             14}, 11.61346155024911}, {{2015, 7, 15}, 11.608433017134757`}, {{
            2015, 7, 15}, 11.608433017134757`}, {{2015, 7, 15}, 
            11.608433017134757`}, {{2015, 7, 16}, 11.603404484020405`}, {{
            2015, 7, 16}, 11.603404484020405`}, {{2015, 7, 16}, 
            11.603404484020405`}, {{2015, 7, 17}, 11.598375950906053`}, {{
            2015, 7, 17}, 11.598375950906053`}, {{2015, 7, 17}, 
            11.598375950906053`}, {{2015, 7, 20}, 11.583290351562999`}, {{
            2015, 7, 20}, 11.583290351562999`}, {{2015, 7, 20}, 
            11.583290351562999`}, {{2015, 7, 21}, 11.578261818448647`}, {{
            2015, 7, 21}, 11.578261818448647`}, {{2015, 7, 21}, 
            11.578261818448647`}, {{2015, 7, 22}, 11.573233285334295`}, {{
            2015, 7, 22}, 11.573233285334295`}, {{2015, 7, 22}, 
            11.573233285334295`}, {{2015, 7, 23}, 11.568204752219943`}, {{
            2015, 7, 23}, 11.568204752219943`}, {{2015, 7, 23}, 
            11.568204752219943`}, {{2015, 7, 24}, 11.563176219105591`}, {{
            2015, 7, 24}, 11.563176219105591`}, {{2015, 7, 24}, 
            11.563176219105591`}, {{2015, 7, 27}, 11.548090619762537`}, {{
            2015, 7, 27}, 11.548090619762537`}, {{2015, 7, 27}, 
            11.548090619762537`}, {{2015, 7, 28}, 11.543062086648185`}, {{
            2015, 7, 28}, 11.543062086648185`}, {{2015, 7, 28}, 
            11.543062086648185`}, {{2015, 7, 29}, 11.538033553533833`}, {{
            2015, 7, 29}, 11.538033553533833`}, {{2015, 7, 29}, 
            11.538033553533833`}, {{2015, 7, 30}, 11.53300502041948}, {{2015, 
            7, 30}, 11.53300502041948}, {{2015, 7, 30}, 11.53300502041948}, {{
            2015, 7, 31}, 11.527976487305128`}, {{2015, 7, 31}, 
            11.527976487305128`}, {{2015, 7, 31}, 11.527976487305128`}, {{
            2015, 8, 3}, 11.512890887962072`}, {{2015, 8, 3}, 
            11.512890887962072`}, {{2015, 8, 3}, 11.512890887962072`}, {{2015,
             8, 4}, 11.50786235484772}, {{2015, 8, 4}, 11.50786235484772}, {{
            2015, 8, 4}, 11.50786235484772}, {{2015, 8, 5}, 
            11.50283382173337}, {{2015, 8, 5}, 11.50283382173337}, {{2015, 8, 
            5}, 11.50283382173337}, {{2015, 8, 6}, 11.497805288619018`}, {{
            2015, 8, 6}, 11.497805288619018`}, {{2015, 8, 6}, 
            11.497805288619018`}, {{2015, 8, 7}, 11.492776755504666`}, {{2015,
             8, 7}, 11.492776755504666`}, {{2015, 8, 7}, 
            11.492776755504666`}, {{2015, 8, 10}, 11.47769115616161}, {{2015, 
            8, 10}, 11.47769115616161}, {{2015, 8, 10}, 11.47769115616161}, {{
            2015, 8, 11}, 11.47266262304726}, {{2015, 8, 11}, 
            11.47266262304726}, {{2015, 8, 11}, 11.47266262304726}, {{2015, 8,
             12}, 11.467634089932908`}, {{2015, 8, 12}, 
            11.467634089932908`}, {{2015, 8, 12}, 11.467634089932908`}, {{
            2015, 8, 13}, 11.462605556818556`}, {{2015, 8, 13}, 
            11.462605556818556`}, {{2015, 8, 13}, 11.462605556818556`}, {{
            2015, 8, 14}, 11.457577023704204`}, {{2015, 8, 14}, 
            11.457577023704204`}, {{2015, 8, 14}, 11.457577023704204`}, {{
            2015, 8, 17}, 11.442491424361148`}, {{2015, 8, 17}, 
            11.442491424361148`}, {{2015, 8, 17}, 11.442491424361148`}, {{
            2015, 8, 18}, 11.437462891246795`}, {{2015, 8, 18}, 
            11.437462891246795`}, {{2015, 8, 18}, 11.437462891246795`}, {{
            2015, 8, 19}, 11.432434358132443`}, {{2015, 8, 19}, 
            11.432434358132443`}, {{2015, 8, 19}, 11.432434358132443`}, {{
            2015, 8, 20}, 11.427405825018091`}, {{2015, 8, 20}, 
            11.427405825018091`}, {{2015, 8, 20}, 11.427405825018091`}, {{
            2015, 8, 21}, 11.42237729190374}, {{2015, 8, 21}, 
            11.42237729190374}, {{2015, 8, 21}, 11.42237729190374}, {{2015, 8,
             24}, 11.407291692560685`}, {{2015, 8, 24}, 
            11.407291692560685`}, {{2015, 8, 24}, 11.407291692560685`}, {{
            2015, 8, 25}, 11.402263159446333`}, {{2015, 8, 25}, 
            11.402263159446333`}, {{2015, 8, 25}, 11.402263159446333`}, {{
            2015, 8, 26}, 11.397234626331981`}, {{2015, 8, 26}, 
            11.397234626331981`}, {{2015, 8, 26}, 11.397234626331981`}, {{
            2015, 8, 27}, 11.392206093217629`}, {{2015, 8, 27}, 
            11.392206093217629`}, {{2015, 8, 27}, 11.392206093217629`}, {{
            2015, 8, 28}, 11.387177560103277`}, {{2015, 8, 28}, 
            11.387177560103277`}, {{2015, 8, 28}, 11.387177560103277`}, {{
            2015, 8, 31}, 11.372091960760223`}, {{2015, 8, 31}, 
            11.372091960760223`}, {{2015, 8, 31}, 11.372091960760223`}, {{
            2015, 9, 1}, 11.36706342764587}, {{2015, 9, 1}, 
            11.36706342764587}, {{2015, 9, 1}, 11.36706342764587}, {{2015, 9, 
            2}, 11.362034894531519`}, {{2015, 9, 2}, 11.362034894531519`}, {{
            2015, 9, 2}, 11.362034894531519`}, {{2015, 9, 3}, 
            11.357006361417167`}, {{2015, 9, 3}, 11.357006361417167`}, {{2015,
             9, 3}, 11.357006361417167`}, {{2015, 9, 4}, 
            11.351977828302815`}, {{2015, 9, 4}, 11.351977828302815`}, {{2015,
             9, 4}, 11.351977828302815`}, {{2015, 9, 8}, 
            11.331863695845406`}, {{2015, 9, 8}, 11.331863695845406`}, {{2015,
             9, 8}, 11.331863695845406`}, {{2015, 9, 9}, 
            11.326835162731056`}, {{2015, 9, 9}, 11.326835162731056`}, {{2015,
             9, 9}, 11.326835162731056`}, {{2015, 9, 10}, 
            11.321806629616704`}, {{2015, 9, 10}, 11.321806629616704`}, {{
            2015, 9, 10}, 11.321806629616704`}, {{2015, 9, 11}, 
            11.316778096502352`}, {{2015, 9, 11}, 11.316778096502352`}, {{
            2015, 9, 11}, 11.316778096502352`}, {{2015, 9, 14}, 
            11.301692497159296`}, {{2015, 9, 14}, 11.301692497159296`}, {{
            2015, 9, 14}, 11.301692497159296`}, {{2015, 9, 15}, 
            11.296663964044946`}, {{2015, 9, 15}, 11.296663964044946`}, {{
            2015, 9, 15}, 11.296663964044946`}, {{2015, 9, 16}, 
            11.291635430930594`}, {{2015, 9, 16}, 11.291635430930594`}, {{
            2015, 9, 16}, 11.291635430930594`}, {{2015, 9, 17}, 
            11.286606897816242`}, {{2015, 9, 17}, 11.286606897816242`}, {{
            2015, 9, 17}, 11.286606897816242`}, {{2015, 9, 18}, 
            11.28157836470189}, {{2015, 9, 18}, 11.28157836470189}, {{2015, 9,
             18}, 11.28157836470189}, {{2015, 9, 21}, 11.266492765358834`}, {{
            2015, 9, 21}, 11.266492765358834`}, {{2015, 9, 21}, 
            11.266492765358834`}, {{2015, 9, 22}, 11.261464232244482`}, {{
            2015, 9, 22}, 11.261464232244482`}, {{2015, 9, 22}, 
            11.261464232244482`}, {{2015, 9, 23}, 11.25643569913013}, {{2015, 
            9, 23}, 11.25643569913013}, {{2015, 9, 23}, 11.25643569913013}, {{
            2015, 9, 24}, 11.251407166015778`}, {{2015, 9, 24}, 
            11.251407166015778`}, {{2015, 9, 24}, 11.251407166015778`}, {{
            2015, 9, 25}, 11.246378632901425`}, {{2015, 9, 25}, 
            11.246378632901425`}, {{2015, 9, 25}, 11.246378632901425`}, {{
            2015, 9, 28}, 11.231293033558371`}, {{2015, 9, 28}, 
            11.231293033558371`}, {{2015, 9, 28}, 11.231293033558371`}, {{
            2015, 9, 29}, 11.22626450044402}, {{2015, 9, 29}, 
            11.22626450044402}, {{2015, 9, 29}, 11.22626450044402}, {{2015, 9,
             30}, 11.221235967329667`}, {{2015, 9, 30}, 
            11.221235967329667`}, {{2015, 9, 30}, 11.221235967329667`}, {{
            2015, 10, 1}, 11.216207434215315`}, {{2015, 10, 1}, 
            11.216207434215315`}, {{2015, 10, 1}, 11.216207434215315`}, {{
            2015, 10, 2}, 11.211178901100963`}, {{2015, 10, 2}, 
            11.211178901100963`}, {{2015, 10, 2}, 11.211178901100963`}, {{
            2015, 10, 5}, 11.196093301757909`}, {{2015, 10, 5}, 
            11.196093301757909`}, {{2015, 10, 5}, 11.196093301757909`}, {{
            2015, 10, 6}, 11.191064768643557`}, {{2015, 10, 6}, 
            11.191064768643557`}, {{2015, 10, 6}, 11.191064768643557`}, {{
            2015, 10, 7}, 11.186036235529205`}, {{2015, 10, 7}, 
            11.186036235529205`}, {{2015, 10, 7}, 11.186036235529205`}, {{
            2015, 10, 8}, 11.181007702414853`}, {{2015, 10, 8}, 
            11.181007702414853`}, {{2015, 10, 8}, 11.181007702414853`}, {{
            2015, 10, 9}, 11.1759791693005}, {{2015, 10, 9}, 
            11.1759791693005}, {{2015, 10, 9}, 11.1759791693005}, {{2015, 10, 
            12}, 11.160893569957445`}, {{2015, 10, 12}, 
            11.160893569957445`}, {{2015, 10, 12}, 11.160893569957445`}, {{
            2015, 10, 13}, 11.155865036843092`}, {{2015, 10, 13}, 
            11.155865036843092`}, {{2015, 10, 13}, 11.155865036843092`}, {{
            2015, 10, 14}, 11.150836503728742`}, {{2015, 10, 14}, 
            11.150836503728742`}, {{2015, 10, 14}, 11.150836503728742`}, {{
            2015, 10, 15}, 11.14580797061439}, {{2015, 10, 15}, 
            11.14580797061439}, {{2015, 10, 15}, 11.14580797061439}, {{2015, 
            10, 16}, 11.140779437500038`}, {{2015, 10, 16}, 
            11.140779437500038`}, {{2015, 10, 16}, 11.140779437500038`}, {{
            2015, 10, 19}, 11.125693838156982`}, {{2015, 10, 19}, 
            11.125693838156982`}, {{2015, 10, 19}, 11.125693838156982`}, {{
            2015, 10, 20}, 11.120665305042632`}, {{2015, 10, 20}, 
            11.120665305042632`}, {{2015, 10, 20}, 11.120665305042632`}, {{
            2015, 10, 21}, 11.11563677192828}, {{2015, 10, 21}, 
            11.11563677192828}, {{2015, 10, 21}, 11.11563677192828}, {{2015, 
            10, 22}, 11.110608238813928`}, {{2015, 10, 22}, 
            11.110608238813928`}, {{2015, 10, 22}, 11.110608238813928`}, {{
            2015, 10, 23}, 11.105579705699576`}, {{2015, 10, 23}, 
            11.105579705699576`}, {{2015, 10, 23}, 11.105579705699576`}, {{
            2015, 10, 26}, 11.09049410635652}, {{2015, 10, 26}, 
            11.09049410635652}, {{2015, 10, 26}, 11.09049410635652}, {{2015, 
            10, 27}, 11.085465573242168`}, {{2015, 10, 27}, 
            11.085465573242168`}, {{2015, 10, 27}, 11.085465573242168`}, {{
            2015, 10, 28}, 11.080437040127816`}, {{2015, 10, 28}, 
            11.080437040127816`}, {{2015, 10, 28}, 11.080437040127816`}, {{
            2015, 10, 29}, 11.075408507013464`}, {{2015, 10, 29}, 
            11.075408507013464`}, {{2015, 10, 29}, 11.075408507013464`}, {{
            2015, 10, 30}, 11.070379973899112`}, {{2015, 10, 30}, 
            11.070379973899112`}, {{2015, 10, 30}, 11.070379973899112`}, {{
            2015, 11, 2}, 11.055294374556057`}, {{2015, 11, 2}, 
            11.055294374556057`}, {{2015, 11, 2}, 11.055294374556057`}, {{
            2015, 11, 3}, 11.050265841441705`}, {{2015, 11, 3}, 
            11.050265841441705`}, {{2015, 11, 3}, 11.050265841441705`}, {{
            2015, 11, 4}, 11.045237308327353`}, {{2015, 11, 4}, 
            11.045237308327353`}, {{2015, 11, 4}, 11.045237308327353`}, {{
            2015, 11, 5}, 11.040208775213001`}, {{2015, 11, 5}, 
            11.040208775213001`}, {{2015, 11, 5}, 11.040208775213001`}, {{
            2015, 11, 6}, 11.03518024209865}, {{2015, 11, 6}, 
            11.03518024209865}, {{2015, 11, 6}, 11.03518024209865}, {{2015, 
            11, 9}, 11.020094642755595`}, {{2015, 11, 9}, 
            11.020094642755595`}, {{2015, 11, 9}, 11.020094642755595`}, {{
            2015, 11, 10}, 11.015066109641243`}, {{2015, 11, 10}, 
            11.015066109641243`}, {{2015, 11, 10}, 11.015066109641243`}, {{
            2015, 11, 11}, 11.01003757652689}, {{2015, 11, 11}, 
            11.01003757652689}, {{2015, 11, 11}, 11.01003757652689}, {{2015, 
            11, 12}, 11.005009043412539`}, {{2015, 11, 12}, 
            11.005009043412539`}, {{2015, 11, 12}, 11.005009043412539`}, {{
            2015, 11, 13}, 10.999980510298187`}, {{2015, 11, 13}, 
            10.999980510298187`}, {{2015, 11, 13}, 10.999980510298187`}, {{
            2015, 11, 16}, 10.98489491095513}, {{2015, 11, 16}, 
            10.98489491095513}, {{2015, 11, 16}, 10.98489491095513}, {{2015, 
            11, 17}, 10.97986637784078}, {{2015, 11, 17}, 
            10.97986637784078}, {{2015, 11, 17}, 10.97986637784078}, {{2015, 
            11, 18}, 10.974837844726428`}, {{2015, 11, 18}, 
            10.974837844726428`}, {{2015, 11, 18}, 10.974837844726428`}, {{
            2015, 11, 19}, 10.969809311612076`}, {{2015, 11, 19}, 
            10.969809311612076`}, {{2015, 11, 19}, 10.969809311612076`}, {{
            2015, 11, 20}, 10.964780778497724`}, {{2015, 11, 20}, 
            10.964780778497724`}, {{2015, 11, 20}, 10.964780778497724`}, {{
            2015, 11, 23}, 10.949695179154668`}, {{2015, 11, 23}, 
            10.949695179154668`}, {{2015, 11, 23}, 10.949695179154668`}, {{
            2015, 11, 24}, 10.944666646040318`}, {{2015, 11, 24}, 
            10.944666646040318`}, {{2015, 11, 24}, 10.944666646040318`}, {{
            2015, 11, 25}, 10.939638112925966`}, {{2015, 11, 25}, 
            10.939638112925966`}, {{2015, 11, 25}, 10.939638112925966`}, {{
            2015, 11, 27}, 10.929581046697262`}, {{2015, 11, 27}, 
            10.929581046697262`}, {{2015, 11, 27}, 10.929581046697262`}, {{
            2015, 11, 30}, 10.914495447354206`}, {{2015, 11, 30}, 
            10.914495447354206`}, {{2015, 11, 30}, 10.914495447354206`}, {{
            2015, 12, 1}, 10.909466914239854`}, {{2015, 12, 1}, 
            10.909466914239854`}, {{2015, 12, 1}, 10.909466914239854`}, {{
            2015, 12, 2}, 10.904438381125502`}, {{2015, 12, 2}, 
            10.904438381125502`}, {{2015, 12, 2}, 10.904438381125502`}, {{
            2015, 12, 3}, 10.89940984801115}, {{2015, 12, 3}, 
            10.89940984801115}, {{2015, 12, 3}, 10.89940984801115}, {{2015, 
            12, 4}, 10.894381314896798`}, {{2015, 12, 4}, 
            10.894381314896798`}, {{2015, 12, 4}, 10.894381314896798`}, {{
            2015, 12, 7}, 10.879295715553743`}, {{2015, 12, 7}, 
            10.879295715553743`}, {{2015, 12, 7}, 10.879295715553743`}, {{
            2015, 12, 8}, 10.874267182439391`}, {{2015, 12, 8}, 
            10.874267182439391`}, {{2015, 12, 8}, 10.874267182439391`}, {{
            2015, 12, 9}, 10.86923864932504}, {{2015, 12, 9}, 
            10.86923864932504}, {{2015, 12, 9}, 10.86923864932504}, {{2015, 
            12, 10}, 10.864210116210687`}, {{2015, 12, 10}, 
            10.864210116210687`}, {{2015, 12, 10}, 10.864210116210687`}, {{
            2015, 12, 11}, 10.859181583096335`}, {{2015, 12, 11}, 
            10.859181583096335`}, {{2015, 12, 11}, 10.859181583096335`}, {{
            2015, 12, 14}, 10.84409598375328}, {{2015, 12, 14}, 
            10.84409598375328}, {{2015, 12, 14}, 10.84409598375328}, {{2015, 
            12, 15}, 10.839067450638929`}, {{2015, 12, 15}, 
            10.839067450638929`}, {{2015, 12, 15}, 10.839067450638929`}, {{
            2015, 12, 16}, 10.834038917524577`}, {{2015, 12, 16}, 
            10.834038917524577`}, {{2015, 12, 16}, 10.834038917524577`}, {{
            2015, 12, 17}, 10.829010384410225`}, {{2015, 12, 17}, 
            10.829010384410225`}, {{2015, 12, 17}, 10.829010384410225`}, {{
            2015, 12, 18}, 10.823981851295873`}, {{2015, 12, 18}, 
            10.823981851295873`}, {{2015, 12, 18}, 10.823981851295873`}, {{
            2015, 12, 21}, 10.808896251952817`}, {{2015, 12, 21}, 
            10.808896251952817`}, {{2015, 12, 21}, 10.808896251952817`}, {{
            2015, 12, 22}, 10.803867718838466`}, {{2015, 12, 22}, 
            10.803867718838466`}, {{2015, 12, 22}, 10.803867718838466`}, {{
            2015, 12, 23}, 10.798839185724114`}, {{2015, 12, 23}, 
            10.798839185724114`}, {{2015, 12, 23}, 10.798839185724114`}, {{
            2015, 12, 24}, 10.793810652609762`}, {{2015, 12, 24}, 
            10.793810652609762`}, {{2015, 12, 24}, 10.793810652609762`}, {{
            2015, 12, 28}, 10.773696520152354`}, {{2015, 12, 28}, 
            10.773696520152354`}, {{2015, 12, 28}, 10.773696520152354`}, {{
            2015, 12, 29}, 10.768667987038004`}, {{2015, 12, 29}, 
            10.768667987038004`}, {{2015, 12, 29}, 10.768667987038004`}, {{
            2015, 12, 30}, 10.763639453923652`}, {{2015, 12, 30}, 
            10.763639453923652`}, {{2015, 12, 30}, 10.763639453923652`}, {{
            2015, 12, 31}, 10.7586109208093}, {{2015, 12, 31}, 
            10.7586109208093}, {{2015, 12, 31}, 10.7586109208093}, {{2016, 1, 
            4}, 10.738496788351892`}, {{2016, 1, 4}, 10.738496788351892`}, {{
            2016, 1, 4}, 10.738496788351892`}, {{2016, 1, 5}, 
            10.73346825523754}, {{2016, 1, 5}, 10.73346825523754}, {{2016, 1, 
            5}, 10.73346825523754}, {{2016, 1, 6}, 10.728439722123188`}, {{
            2016, 1, 6}, 10.728439722123188`}, {{2016, 1, 6}, 
            10.728439722123188`}, {{2016, 1, 7}, 10.723411189008836`}, {{2016,
             1, 7}, 10.723411189008836`}, {{2016, 1, 7}, 
            10.723411189008836`}, {{2016, 1, 8}, 10.718382655894484`}, {{2016,
             1, 8}, 10.718382655894484`}, {{2016, 1, 8}, 
            10.718382655894484`}, {{2016, 1, 11}, 10.70329705655143}, {{2016, 
            1, 11}, 10.70329705655143}, {{2016, 1, 11}, 10.70329705655143}, {{
            2016, 1, 12}, 10.698268523437077`}, {{2016, 1, 12}, 
            10.698268523437077`}, {{2016, 1, 12}, 10.698268523437077`}, {{
            2016, 1, 13}, 10.693239990322725`}, {{2016, 1, 13}, 
            10.693239990322725`}, {{2016, 1, 13}, 10.693239990322725`}, {{
            2016, 1, 14}, 10.688211457208373`}, {{2016, 1, 14}, 
            10.688211457208373`}, {{2016, 1, 14}, 10.688211457208373`}, {{
            2016, 1, 15}, 10.683182924094023`}, {{2016, 1, 15}, 
            10.683182924094023`}, {{2016, 1, 15}, 10.683182924094023`}, {{
            2016, 1, 19}, 10.663068791636615`}, {{2016, 1, 19}, 
            10.663068791636615`}, {{2016, 1, 19}, 10.663068791636615`}, {{
            2016, 1, 20}, 10.658040258522263`}, {{2016, 1, 20}, 
            10.658040258522263`}, {{2016, 1, 20}, 10.658040258522263`}, {{
            2016, 1, 21}, 10.65301172540791}, {{2016, 1, 21}, 
            10.65301172540791}, {{2016, 1, 21}, 10.65301172540791}, {{2016, 1,
             22}, 10.647983192293559`}, {{2016, 1, 22}, 
            10.647983192293559`}, {{2016, 1, 22}, 10.647983192293559`}, {{
            2016, 1, 25}, 10.632897592950503`}, {{2016, 1, 25}, 
            10.632897592950503`}, {{2016, 1, 25}, 10.632897592950503`}, {{
            2016, 1, 26}, 10.627869059836152`}, {{2016, 1, 26}, 
            10.627869059836152`}, {{2016, 1, 26}, 10.627869059836152`}, {{
            2016, 1, 27}, 10.6228405267218}, {{2016, 1, 27}, 
            10.6228405267218}, {{2016, 1, 27}, 10.6228405267218}, {{2016, 1, 
            28}, 10.617811993607448`}, {{2016, 1, 28}, 
            10.617811993607448`}, {{2016, 1, 28}, 10.617811993607448`}, {{
            2016, 1, 29}, 10.612783460493096`}, {{2016, 1, 29}, 
            10.612783460493096`}, {{2016, 1, 29}, 10.612783460493096`}, {{
            2016, 2, 1}, 10.59769786115004}, {{2016, 2, 1}, 
            10.59769786115004}, {{2016, 2, 1}, 10.59769786115004}, {{2016, 2, 
            2}, 10.59266932803569}, {{2016, 2, 2}, 10.59266932803569}, {{2016,
             2, 2}, 10.59266932803569}, {{2016, 2, 3}, 
            10.587640794921338`}, {{2016, 2, 3}, 10.587640794921338`}, {{2016,
             2, 3}, 10.587640794921338`}, {{2016, 2, 4}, 
            10.582612261806986`}, {{2016, 2, 4}, 10.582612261806986`}, {{2016,
             2, 4}, 10.582612261806986`}, {{2016, 2, 5}, 
            10.577583728692634`}, {{2016, 2, 5}, 10.577583728692634`}, {{2016,
             2, 5}, 10.577583728692634`}, {{2016, 2, 8}, 
            10.562498129349578`}, {{2016, 2, 8}, 10.562498129349578`}, {{2016,
             2, 8}, 10.562498129349578`}, {{2016, 2, 9}, 
            10.557469596235226`}, {{2016, 2, 9}, 10.557469596235226`}, {{2016,
             2, 9}, 10.557469596235226`}, {{2016, 2, 10}, 
            10.552441063120874`}, {{2016, 2, 10}, 10.552441063120874`}, {{
            2016, 2, 10}, 10.552441063120874`}, {{2016, 2, 11}, 
            10.547412530006522`}, {{2016, 2, 11}, 10.547412530006522`}, {{
            2016, 2, 11}, 10.547412530006522`}, {{2016, 2, 12}, 
            10.54238399689217}, {{2016, 2, 12}, 10.54238399689217}, {{2016, 2,
             12}, 10.54238399689217}, {{2016, 2, 16}, 10.522269864434763`}, {{
            2016, 2, 16}, 10.522269864434763`}, {{2016, 2, 16}, 
            10.522269864434763`}, {{2016, 2, 17}, 10.517241331320411`}, {{
            2016, 2, 17}, 10.517241331320411`}, {{2016, 2, 17}, 
            10.517241331320411`}, {{2016, 2, 18}, 10.51221279820606}, {{2016, 
            2, 18}, 10.51221279820606}, {{2016, 2, 18}, 10.51221279820606}, {{
            2016, 2, 19}, 10.507184265091709`}, {{2016, 2, 19}, 
            10.507184265091709`}, {{2016, 2, 19}, 10.507184265091709`}, {{
            2016, 2, 22}, 10.492098665748653`}, {{2016, 2, 22}, 
            10.492098665748653`}, {{2016, 2, 22}, 10.492098665748653`}, {{
            2016, 2, 23}, 10.487070132634301`}, {{2016, 2, 23}, 
            10.487070132634301`}, {{2016, 2, 23}, 10.487070132634301`}, {{
            2016, 2, 24}, 10.482041599519949`}, {{2016, 2, 24}, 
            10.482041599519949`}, {{2016, 2, 24}, 10.482041599519949`}, {{
            2016, 2, 25}, 10.477013066405597`}, {{2016, 2, 25}, 
            10.477013066405597`}, {{2016, 2, 25}, 10.477013066405597`}, {{
            2016, 2, 26}, 10.471984533291245`}, {{2016, 2, 26}, 
            10.471984533291245`}, {{2016, 2, 26}, 10.471984533291245`}, {{
            2016, 2, 29}, 10.456898933948189`}, {{2016, 2, 29}, 
            10.456898933948189`}, {{2016, 2, 29}, 10.456898933948189`}, {{
            2016, 3, 1}, 10.451870400833839`}, {{2016, 3, 1}, 
            10.451870400833839`}, {{2016, 3, 1}, 10.451870400833839`}, {{2016,
             3, 2}, 10.446841867719487`}, {{2016, 3, 2}, 
            10.446841867719487`}, {{2016, 3, 2}, 10.446841867719487`}, {{2016,
             3, 3}, 10.441813334605135`}, {{2016, 3, 3}, 
            10.441813334605135`}, {{2016, 3, 3}, 10.441813334605135`}, {{2016,
             3, 4}, 10.436784801490782`}, {{2016, 3, 4}, 
            10.436784801490782`}, {{2016, 3, 4}, 10.436784801490782`}, {{2016,
             3, 7}, 10.421699202147726`}, {{2016, 3, 7}, 
            10.421699202147726`}, {{2016, 3, 7}, 10.421699202147726`}, {{2016,
             3, 8}, 10.416670669033376`}, {{2016, 3, 8}, 
            10.416670669033376`}, {{2016, 3, 8}, 10.416670669033376`}, {{2016,
             3, 9}, 10.411642135919024`}, {{2016, 3, 9}, 
            10.411642135919024`}, {{2016, 3, 9}, 10.411642135919024`}, {{2016,
             3, 10}, 10.406613602804672`}, {{2016, 3, 10}, 
            10.406613602804672`}, {{2016, 3, 10}, 10.406613602804672`}, {{
            2016, 3, 11}, 10.40158506969032}, {{2016, 3, 11}, 
            10.40158506969032}, {{2016, 3, 11}, 10.40158506969032}, {{2016, 3,
             14}, 10.386499470347264`}, {{2016, 3, 14}, 
            10.386499470347264`}, {{2016, 3, 14}, 10.386499470347264`}, {{
            2016, 3, 15}, 10.381470937232912`}, {{2016, 3, 15}, 
            10.381470937232912`}, {{2016, 3, 15}, 10.381470937232912`}, {{
            2016, 3, 16}, 10.37644240411856}, {{2016, 3, 16}, 
            10.37644240411856}, {{2016, 3, 16}, 10.37644240411856}, {{2016, 3,
             17}, 10.371413871004208`}, {{2016, 3, 17}, 
            10.371413871004208`}, {{2016, 3, 17}, 10.371413871004208`}, {{
            2016, 3, 18}, 10.366385337889856`}, {{2016, 3, 18}, 
            10.366385337889856`}, {{2016, 3, 18}, 10.366385337889856`}, {{
            2016, 3, 21}, 10.351299738546802`}, {{2016, 3, 21}, 
            10.351299738546802`}, {{2016, 3, 21}, 10.351299738546802`}, {{
            2016, 3, 22}, 10.34627120543245}, {{2016, 3, 22}, 
            10.34627120543245}, {{2016, 3, 22}, 10.34627120543245}, {{2016, 3,
             23}, 10.341242672318097`}, {{2016, 3, 23}, 
            10.341242672318097`}, {{2016, 3, 23}, 10.341242672318097`}, {{
            2016, 3, 24}, 10.336214139203745`}, {{2016, 3, 24}, 
            10.336214139203745`}, {{2016, 3, 24}, 10.336214139203745`}, {{
            2016, 3, 28}, 10.316100006746339`}, {{2016, 3, 28}, 
            10.316100006746339`}, {{2016, 3, 28}, 10.316100006746339`}, {{
            2016, 3, 29}, 10.311071473631987`}, {{2016, 3, 29}, 
            10.311071473631987`}, {{2016, 3, 29}, 10.311071473631987`}, {{
            2016, 3, 30}, 10.306042940517635`}, {{2016, 3, 30}, 
            10.306042940517635`}, {{2016, 3, 30}, 10.306042940517635`}, {{
            2016, 3, 31}, 10.301014407403283`}, {{2016, 3, 31}, 
            10.301014407403283`}, {{2016, 3, 31}, 10.301014407403283`}, {{
            2016, 4, 1}, 10.295985874288931`}, {{2016, 4, 1}, 
            10.295985874288931`}, {{2016, 4, 1}, 10.295985874288931`}, {{2016,
             4, 4}, 10.280900274945875`}, {{2016, 4, 4}, 
            10.280900274945875`}, {{2016, 4, 4}, 10.280900274945875`}, {{2016,
             4, 5}, 10.275871741831525`}, {{2016, 4, 5}, 
            10.275871741831525`}, {{2016, 4, 5}, 10.275871741831525`}, {{2016,
             4, 6}, 10.270843208717173`}, {{2016, 4, 6}, 
            10.270843208717173`}, {{2016, 4, 6}, 10.270843208717173`}, {{2016,
             4, 7}, 10.26581467560282}, {{2016, 4, 7}, 10.26581467560282}, {{
            2016, 4, 7}, 10.26581467560282}, {{2016, 4, 8}, 
            10.260786142488469`}, {{2016, 4, 8}, 10.260786142488469`}, {{2016,
             4, 8}, 10.260786142488469`}, {{2016, 4, 11}, 
            10.245700543145412`}, {{2016, 4, 11}, 10.245700543145412`}, {{
            2016, 4, 11}, 10.245700543145412`}, {{2016, 4, 12}, 
            10.240672010031062`}, {{2016, 4, 12}, 10.240672010031062`}, {{
            2016, 4, 12}, 10.240672010031062`}, {{2016, 4, 13}, 
            10.23564347691671}, {{2016, 4, 13}, 10.23564347691671}, {{2016, 4,
             13}, 10.23564347691671}, {{2016, 4, 14}, 10.230614943802358`}, {{
            2016, 4, 14}, 10.230614943802358`}, {{2016, 4, 14}, 
            10.230614943802358`}, {{2016, 4, 15}, 10.225586410688006`}, {{
            2016, 4, 15}, 10.225586410688006`}, {{2016, 4, 15}, 
            10.225586410688006`}, {{2016, 4, 18}, 10.21050081134495}, {{2016, 
            4, 18}, 10.21050081134495}, {{2016, 4, 18}, 10.21050081134495}, {{
            2016, 4, 19}, 10.205472278230598`}, {{2016, 4, 19}, 
            10.205472278230598`}, {{2016, 4, 19}, 10.205472278230598`}, {{
            2016, 4, 20}, 10.200443745116246`}, {{2016, 4, 20}, 
            10.200443745116246`}, {{2016, 4, 20}, 10.200443745116246`}, {{
            2016, 4, 21}, 10.195415212001894`}, {{2016, 4, 21}, 
            10.195415212001894`}, {{2016, 4, 21}, 10.195415212001894`}, {{
            2016, 4, 22}, 10.190386678887542`}, {{2016, 4, 22}, 
            10.190386678887542`}, {{2016, 4, 22}, 10.190386678887542`}, {{
            2016, 4, 25}, 10.175301079544488`}, {{2016, 4, 25}, 
            10.175301079544488`}, {{2016, 4, 25}, 10.175301079544488`}, {{
            2016, 4, 26}, 10.170272546430136`}, {{2016, 4, 26}, 
            10.170272546430136`}, {{2016, 4, 26}, 10.170272546430136`}, {{
            2016, 4, 27}, 10.165244013315784`}, {{2016, 4, 27}, 
            10.165244013315784`}, {{2016, 4, 27}, 10.165244013315784`}, {{
            2016, 4, 28}, 10.160215480201432`}, {{2016, 4, 28}, 
            10.160215480201432`}, {{2016, 4, 28}, 10.160215480201432`}, {{
            2016, 4, 29}, 10.155186947087081`}, {{2016, 4, 29}, 
            10.155186947087081`}, {{2016, 4, 29}, 10.155186947087081`}, {{
            2016, 5, 2}, 10.140101347744025`}, {{2016, 5, 2}, 
            10.140101347744025`}, {{2016, 5, 2}, 10.140101347744025`}, {{2016,
             5, 3}, 10.135072814629673`}, {{2016, 5, 3}, 
            10.135072814629673`}, {{2016, 5, 3}, 10.135072814629673`}, {{2016,
             5, 4}, 10.130044281515321`}, {{2016, 5, 4}, 
            10.130044281515321`}, {{2016, 5, 4}, 10.130044281515321`}, {{2016,
             5, 5}, 10.125015748400969`}, {{2016, 5, 5}, 
            10.125015748400969`}, {{2016, 5, 5}, 10.125015748400969`}, {{2016,
             5, 6}, 10.119987215286617`}, {{2016, 5, 6}, 
            10.119987215286617`}, {{2016, 5, 6}, 10.119987215286617`}, {{2016,
             5, 9}, 10.104901615943561`}, {{2016, 5, 9}, 
            10.104901615943561`}, {{2016, 5, 9}, 10.104901615943561`}, {{2016,
             5, 10}, 10.09987308282921}, {{2016, 5, 10}, 
            10.09987308282921}, {{2016, 5, 10}, 10.09987308282921}, {{2016, 5,
             11}, 10.094844549714859`}, {{2016, 5, 11}, 
            10.094844549714859`}, {{2016, 5, 11}, 10.094844549714859`}, {{
            2016, 5, 12}, 10.089816016600507`}, {{2016, 5, 12}, 
            10.089816016600507`}, {{2016, 5, 12}, 10.089816016600507`}, {{
            2016, 5, 13}, 10.084787483486155`}, {{2016, 5, 13}, 
            10.084787483486155`}, {{2016, 5, 13}, 10.084787483486155`}, {{
            2016, 5, 16}, 10.069701884143099`}, {{2016, 5, 16}, 
            10.069701884143099`}, {{2016, 5, 16}, 10.069701884143099`}, {{
            2016, 5, 17}, 10.064673351028748`}, {{2016, 5, 17}, 
            10.064673351028748`}, {{2016, 5, 17}, 10.064673351028748`}, {{
            2016, 5, 18}, 10.059644817914396`}, {{2016, 5, 18}, 
            10.059644817914396`}, {{2016, 5, 18}, 10.059644817914396`}, {{
            2016, 5, 19}, 10.054616284800044`}, {{2016, 5, 19}, 
            10.054616284800044`}, {{2016, 5, 19}, 10.054616284800044`}, {{
            2016, 5, 20}, 10.049587751685692`}, {{2016, 5, 20}, 
            10.049587751685692`}, {{2016, 5, 20}, 10.049587751685692`}, {{
            2016, 5, 23}, 10.034502152342636`}, {{2016, 5, 23}, 
            10.034502152342636`}, {{2016, 5, 23}, 10.034502152342636`}, {{
            2016, 5, 24}, 10.029473619228284`}, {{2016, 5, 24}, 
            10.029473619228284`}, {{2016, 5, 24}, 10.029473619228284`}, {{
            2016, 5, 25}, 10.024445086113932`}, {{2016, 5, 25}, 
            10.024445086113932`}, {{2016, 5, 25}, 10.024445086113932`}, {{
            2016, 5, 26}, 10.01941655299958}, {{2016, 5, 26}, 
            10.01941655299958}, {{2016, 5, 26}, 10.01941655299958}, {{2016, 5,
             27}, 10.014388019885228`}, {{2016, 5, 27}, 
            10.014388019885228`}, {{2016, 5, 27}, 10.014388019885228`}, {{
            2016, 5, 31}, 9.994273887427822}, {{2016, 5, 31}, 
            9.994273887427822}, {{2016, 5, 31}, 9.994273887427822}, {{2016, 6,
             1}, 9.98924535431347}, {{2016, 6, 1}, 9.98924535431347}, {{2016, 
            6, 1}, 9.98924535431347}, {{2016, 6, 2}, 9.984216821199118}, {{
            2016, 6, 2}, 9.984216821199118}, {{2016, 6, 2}, 
            9.984216821199118}, {{2016, 6, 3}, 9.979188288084767}, {{2016, 6, 
            3}, 9.979188288084767}, {{2016, 6, 3}, 9.979188288084767}, {{2016,
             6, 6}, 9.964102688741711}, {{2016, 6, 6}, 9.964102688741711}, {{
            2016, 6, 6}, 9.964102688741711}, {{2016, 6, 7}, 
            9.95907415562736}, {{2016, 6, 7}, 9.95907415562736}, {{2016, 6, 
            7}, 9.95907415562736}, {{2016, 6, 8}, 9.954045622513007}, {{2016, 
            6, 8}, 9.954045622513007}, {{2016, 6, 8}, 9.954045622513007}, {{
            2016, 6, 9}, 9.949017089398655}, {{2016, 6, 9}, 
            9.949017089398655}, {{2016, 6, 9}, 9.949017089398655}, {{2016, 6, 
            10}, 9.943988556284303}, {{2016, 6, 10}, 9.943988556284303}, {{
            2016, 6, 10}, 9.943988556284303}, {{2016, 6, 13}, 
            9.928902956941247}, {{2016, 6, 13}, 9.928902956941247}, {{2016, 6,
             13}, 9.928902956941247}, {{2016, 6, 14}, 9.923874423826897}, {{
            2016, 6, 14}, 9.923874423826897}, {{2016, 6, 14}, 
            9.923874423826897}, {{2016, 6, 15}, 9.918845890712545}, {{2016, 6,
             15}, 9.918845890712545}, {{2016, 6, 15}, 9.918845890712545}, {{
            2016, 6, 16}, 9.913817357598193}, {{2016, 6, 16}, 
            9.913817357598193}, {{2016, 6, 16}, 9.913817357598193}, {{2016, 6,
             17}, 9.90878882448384}, {{2016, 6, 17}, 9.90878882448384}, {{
            2016, 6, 17}, 9.90878882448384}, {{2016, 6, 20}, 
            9.893703225140785}, {{2016, 6, 20}, 9.893703225140785}, {{2016, 6,
             20}, 9.893703225140785}, {{2016, 6, 21}, 9.888674692026434}, {{
            2016, 6, 21}, 9.888674692026434}, {{2016, 6, 21}, 
            9.888674692026434}, {{2016, 6, 22}, 9.883646158912082}, {{2016, 6,
             22}, 9.883646158912082}, {{2016, 6, 22}, 9.883646158912082}, {{
            2016, 6, 23}, 9.87861762579773}, {{2016, 6, 23}, 
            9.87861762579773}, {{2016, 6, 23}, 9.87861762579773}, {{2016, 6, 
            24}, 9.873589092683378}, {{2016, 6, 24}, 9.873589092683378}, {{
            2016, 6, 24}, 9.873589092683378}, {{2016, 6, 27}, 
            9.858503493340322}, {{2016, 6, 27}, 9.858503493340322}, {{2016, 6,
             27}, 9.858503493340322}, {{2016, 6, 28}, 9.85347496022597}, {{
            2016, 6, 28}, 9.85347496022597}, {{2016, 6, 28}, 
            9.85347496022597}, {{2016, 6, 29}, 9.848446427111618}, {{2016, 6, 
            29}, 9.848446427111618}, {{2016, 6, 29}, 9.848446427111618}, {{
            2016, 6, 30}, 9.843417893997266}, {{2016, 6, 30}, 
            9.843417893997266}, {{2016, 6, 30}, 9.843417893997266}, {{2016, 7,
             1}, 9.838389360882914}, {{2016, 7, 1}, 9.838389360882914}, {{
            2016, 7, 1}, 9.838389360882914}, {{2016, 7, 5}, 
            9.818275228425508}, {{2016, 7, 5}, 9.818275228425508}, {{2016, 7, 
            5}, 9.818275228425508}, {{2016, 7, 6}, 9.813246695311156}, {{2016,
             7, 6}, 9.813246695311156}, {{2016, 7, 6}, 9.813246695311156}, {{
            2016, 7, 7}, 9.808218162196804}, {{2016, 7, 7}, 
            9.808218162196804}, {{2016, 7, 7}, 9.808218162196804}, {{2016, 7, 
            8}, 9.803189629082453}, {{2016, 7, 8}, 9.803189629082453}, {{2016,
             7, 8}, 9.803189629082453}, {{2016, 7, 11}, 9.788104029739397}, {{
            2016, 7, 11}, 9.788104029739397}, {{2016, 7, 11}, 
            9.788104029739397}, {{2016, 7, 12}, 9.783075496625045}, {{2016, 7,
             12}, 9.783075496625045}, {{2016, 7, 12}, 9.783075496625045}, {{
            2016, 7, 13}, 9.778046963510693}, {{2016, 7, 13}, 
            9.778046963510693}, {{2016, 7, 13}, 9.778046963510693}, {{2016, 7,
             14}, 9.773018430396341}, {{2016, 7, 14}, 9.773018430396341}, {{
            2016, 7, 14}, 9.773018430396341}, {{2016, 7, 15}, 
            9.76798989728199}, {{2016, 7, 15}, 9.76798989728199}, {{2016, 7, 
            15}, 9.76798989728199}, {{2016, 7, 18}, 9.752904297938933}, {{
            2016, 7, 18}, 9.752904297938933}, {{2016, 7, 18}, 
            9.752904297938933}, {{2016, 7, 19}, 9.747875764824583}, {{2016, 7,
             19}, 9.747875764824583}, {{2016, 7, 19}, 9.747875764824583}, {{
            2016, 7, 20}, 9.74284723171023}, {{2016, 7, 20}, 
            9.74284723171023}, {{2016, 7, 20}, 9.74284723171023}, {{2016, 7, 
            21}, 9.737818698595879}, {{2016, 7, 21}, 9.737818698595879}, {{
            2016, 7, 21}, 9.737818698595879}, {{2016, 7, 22}, 
            9.732790165481527}, {{2016, 7, 22}, 9.732790165481527}, {{2016, 7,
             22}, 9.732790165481527}, {{2016, 7, 25}, 9.71770456613847}, {{
            2016, 7, 25}, 9.71770456613847}, {{2016, 7, 25}, 
            9.71770456613847}, {{2016, 7, 26}, 9.71267603302412}, {{2016, 7, 
            26}, 9.71267603302412}, {{2016, 7, 26}, 9.71267603302412}, {{2016,
             7, 27}, 9.707647499909768}, {{2016, 7, 27}, 
            9.707647499909768}, {{2016, 7, 27}, 9.707647499909768}, {{2016, 7,
             28}, 9.702618966795416}, {{2016, 7, 28}, 9.702618966795416}, {{
            2016, 7, 28}, 9.702618966795416}, {{2016, 7, 29}, 
            9.697590433681064}, {{2016, 7, 29}, 9.697590433681064}, {{2016, 7,
             29}, 9.697590433681064}, {{2016, 8, 1}, 9.682504834338008}, {{
            2016, 8, 1}, 9.682504834338008}, {{2016, 8, 1}, 
            9.682504834338008}, {{2016, 8, 2}, 9.677476301223656}, {{2016, 8, 
            2}, 9.677476301223656}, {{2016, 8, 2}, 9.677476301223656}, {{2016,
             8, 3}, 9.672447768109304}, {{2016, 8, 3}, 9.672447768109304}, {{
            2016, 8, 3}, 9.672447768109304}, {{2016, 8, 4}, 
            9.667419234994952}, {{2016, 8, 4}, 9.667419234994952}, {{2016, 8, 
            4}, 9.667419234994952}, {{2016, 8, 5}, 9.6623907018806}, {{2016, 
            8, 5}, 9.6623907018806}, {{2016, 8, 5}, 9.6623907018806}, {{2016, 
            8, 8}, 9.647305102537546}, {{2016, 8, 8}, 9.647305102537546}, {{
            2016, 8, 8}, 9.647305102537546}, {{2016, 8, 9}, 
            9.642276569423194}, {{2016, 8, 9}, 9.642276569423194}, {{2016, 8, 
            9}, 9.642276569423194}, {{2016, 8, 10}, 9.637248036308842}, {{
            2016, 8, 10}, 9.637248036308842}, {{2016, 8, 10}, 
            9.637248036308842}, {{2016, 8, 11}, 9.63221950319449}, {{2016, 8, 
            11}, 9.63221950319449}, {{2016, 8, 11}, 9.63221950319449}, {{2016,
             8, 12}, 9.62719097008014}, {{2016, 8, 12}, 9.62719097008014}, {{
            2016, 8, 12}, 9.62719097008014}, {{2016, 8, 15}, 
            9.612105370737083}, {{2016, 8, 15}, 9.612105370737083}, {{2016, 8,
             15}, 9.612105370737083}, {{2016, 8, 16}, 9.607076837622731}, {{
            2016, 8, 16}, 9.607076837622731}, {{2016, 8, 16}, 
            9.607076837622731}, {{2016, 8, 17}, 9.60204830450838}, {{2016, 8, 
            17}, 9.60204830450838}, {{2016, 8, 17}, 9.60204830450838}, {{2016,
             8, 18}, 9.597019771394027}, {{2016, 8, 18}, 
            9.597019771394027}, {{2016, 8, 18}, 9.597019771394027}, {{2016, 8,
             19}, 9.591991238279675}, {{2016, 8, 19}, 9.591991238279675}, {{
            2016, 8, 19}, 9.591991238279675}, {{2016, 8, 22}, 
            9.57690563893662}, {{2016, 8, 22}, 9.57690563893662}, {{2016, 8, 
            22}, 9.57690563893662}, {{2016, 8, 23}, 9.571877105822269}, {{
            2016, 8, 23}, 9.571877105822269}, {{2016, 8, 23}, 
            9.571877105822269}, {{2016, 8, 24}, 9.566848572707917}, {{2016, 8,
             24}, 9.566848572707917}, {{2016, 8, 24}, 9.566848572707917}, {{
            2016, 8, 25}, 9.561820039593565}, {{2016, 8, 25}, 
            9.561820039593565}, {{2016, 8, 25}, 9.561820039593565}, {{2016, 8,
             26}, 9.556791506479213}, {{2016, 8, 26}, 9.556791506479213}, {{
            2016, 8, 26}, 9.556791506479213}, {{2016, 8, 29}, 
            9.541705907136159}, {{2016, 8, 29}, 9.541705907136159}, {{2016, 8,
             29}, 9.541705907136159}, {{2016, 8, 30}, 9.536677374021806}, {{
            2016, 8, 30}, 9.536677374021806}, {{2016, 8, 30}, 
            9.536677374021806}, {{2016, 8, 31}, 9.531648840907454}, {{2016, 8,
             31}, 9.531648840907454}, {{2016, 8, 31}, 9.531648840907454}, {{
            2016, 9, 1}, 9.526620307793102}, {{2016, 9, 1}, 
            9.526620307793102}, {{2016, 9, 1}, 9.526620307793102}, {{2016, 9, 
            2}, 9.52159177467875}, {{2016, 9, 2}, 9.52159177467875}, {{2016, 
            9, 2}, 9.52159177467875}, {{2016, 9, 6}, 9.501477642221342}, {{
            2016, 9, 6}, 9.501477642221342}, {{2016, 9, 6}, 
            9.501477642221342}, {{2016, 9, 7}, 9.49644910910699}, {{2016, 9, 
            7}, 9.49644910910699}, {{2016, 9, 7}, 9.49644910910699}, {{2016, 
            9, 8}, 9.491420575992638}, {{2016, 9, 8}, 9.491420575992638}, {{
            2016, 9, 8}, 9.491420575992638}, {{2016, 9, 9}, 
            9.486392042878286}, {{2016, 9, 9}, 9.486392042878286}, {{2016, 9, 
            9}, 9.486392042878286}, {{2016, 9, 12}, 9.471306443535232}, {{
            2016, 9, 12}, 9.471306443535232}, {{2016, 9, 12}, 
            9.471306443535232}, {{2016, 9, 13}, 9.46627791042088}, {{2016, 9, 
            13}, 9.46627791042088}, {{2016, 9, 13}, 9.46627791042088}, {{2016,
             9, 14}, 9.461249377306528}, {{2016, 9, 14}, 
            9.461249377306528}, {{2016, 9, 14}, 9.461249377306528}, {{2016, 9,
             15}, 9.456220844192178}, {{2016, 9, 15}, 9.456220844192178}, {{
            2016, 9, 15}, 9.456220844192178}, {{2016, 9, 16}, 
            9.451192311077826}, {{2016, 9, 16}, 9.451192311077826}, {{2016, 9,
             16}, 9.451192311077826}, {{2016, 9, 19}, 9.43610671173477}, {{
            2016, 9, 19}, 9.43610671173477}, {{2016, 9, 19}, 
            9.43610671173477}, {{2016, 9, 20}, 9.431078178620417}, {{2016, 9, 
            20}, 9.431078178620417}, {{2016, 9, 20}, 9.431078178620417}, {{
            2016, 9, 21}, 9.426049645506065}, {{2016, 9, 21}, 
            9.426049645506065}, {{2016, 9, 21}, 9.426049645506065}, {{2016, 9,
             22}, 9.421021112391713}, {{2016, 9, 22}, 9.421021112391713}, {{
            2016, 9, 22}, 9.421021112391713}, {{2016, 9, 23}, 
            9.415992579277361}, {{2016, 9, 23}, 9.415992579277361}, {{2016, 9,
             23}, 9.415992579277361}, {{2016, 9, 26}, 9.400906979934305}, {{
            2016, 9, 26}, 9.400906979934305}, {{2016, 9, 26}, 
            9.400906979934305}, {{2016, 9, 27}, 9.395878446819953}, {{2016, 9,
             27}, 9.395878446819953}, {{2016, 9, 27}, 9.395878446819953}, {{
            2016, 9, 28}, 9.390849913705603}, {{2016, 9, 28}, 
            9.390849913705603}, {{2016, 9, 28}, 9.390849913705603}, {{2016, 9,
             29}, 9.385821380591251}, {{2016, 9, 29}, 9.385821380591251}, {{
            2016, 9, 29}, 9.385821380591251}, {{2016, 9, 30}, 
            9.380792847476899}, {{2016, 9, 30}, 9.380792847476899}, {{2016, 9,
             30}, 9.380792847476899}, {{2016, 10, 3}, 9.365707248133845}, {{
            2016, 10, 3}, 9.365707248133845}, {{2016, 10, 3}, 
            9.365707248133845}, {{2016, 10, 4}, 9.360678715019493}, {{2016, 
            10, 4}, 9.360678715019493}, {{2016, 10, 4}, 9.360678715019493}, {{
            2016, 10, 5}, 9.35565018190514}, {{2016, 10, 5}, 
            9.35565018190514}, {{2016, 10, 5}, 9.35565018190514}, {{2016, 10, 
            6}, 9.350621648790788}, {{2016, 10, 6}, 9.350621648790788}, {{
            2016, 10, 6}, 9.350621648790788}, {{2016, 10, 7}, 
            9.345593115676436}, {{2016, 10, 7}, 9.345593115676436}, {{2016, 
            10, 7}, 9.345593115676436}, {{2016, 10, 10}, 9.33050751633338}, {{
            2016, 10, 10}, 9.33050751633338}, {{2016, 10, 10}, 
            9.33050751633338}, {{2016, 10, 11}, 9.325478983219028}, {{2016, 
            10, 11}, 9.325478983219028}, {{2016, 10, 11}, 
            9.325478983219028}, {{2016, 10, 12}, 9.320450450104676}, {{2016, 
            10, 12}, 9.320450450104676}, {{2016, 10, 12}, 
            9.320450450104676}, {{2016, 10, 13}, 9.315421916990324}, {{2016, 
            10, 13}, 9.315421916990324}, {{2016, 10, 13}, 
            9.315421916990324}, {{2016, 10, 14}, 9.310393383875972}, {{2016, 
            10, 14}, 9.310393383875972}, {{2016, 10, 14}, 
            9.310393383875972}, {{2016, 10, 17}, 9.295307784532918}, {{2016, 
            10, 17}, 9.295307784532918}, {{2016, 10, 17}, 
            9.295307784532918}, {{2016, 10, 18}, 9.290279251418566}, {{2016, 
            10, 18}, 9.290279251418566}, {{2016, 10, 18}, 
            9.290279251418566}, {{2016, 10, 19}, 9.285250718304214}, {{2016, 
            10, 19}, 9.285250718304214}, {{2016, 10, 19}, 
            9.285250718304214}, {{2016, 10, 20}, 9.280222185189864}, {{2016, 
            10, 20}, 9.280222185189864}, {{2016, 10, 20}, 
            9.280222185189864}, {{2016, 10, 21}, 9.275193652075512}, {{2016, 
            10, 21}, 9.275193652075512}, {{2016, 10, 21}, 
            9.275193652075512}, {{2016, 10, 24}, 9.260108052732456}, {{2016, 
            10, 24}, 9.260108052732456}, {{2016, 10, 24}, 
            9.260108052732456}, {{2016, 10, 25}, 9.255079519618103}, {{2016, 
            10, 25}, 9.255079519618103}, {{2016, 10, 25}, 
            9.255079519618103}, {{2016, 10, 26}, 9.250050986503751}, {{2016, 
            10, 26}, 9.250050986503751}, {{2016, 10, 26}, 
            9.250050986503751}, {{2016, 10, 27}, 9.2450224533894}, {{2016, 10,
             27}, 9.2450224533894}, {{2016, 10, 27}, 9.2450224533894}, {{2016,
             10, 28}, 9.239993920275047}, {{2016, 10, 28}, 
            9.239993920275047}, {{2016, 10, 28}, 9.239993920275047}, {{2016, 
            10, 31}, 9.224908320931991}, {{2016, 10, 31}, 
            9.224908320931991}, {{2016, 10, 31}, 9.224908320931991}, {{2016, 
            11, 1}, 9.21987978781764}, {{2016, 11, 1}, 9.21987978781764}, {{
            2016, 11, 1}, 9.21987978781764}, {{2016, 11, 2}, 
            9.214851254703289}, {{2016, 11, 2}, 9.214851254703289}, {{2016, 
            11, 2}, 9.214851254703289}, {{2016, 11, 3}, 9.209822721588937}, {{
            2016, 11, 3}, 9.209822721588937}, {{2016, 11, 3}, 
            9.209822721588937}, {{2016, 11, 4}, 9.204794188474585}, {{2016, 
            11, 4}, 9.204794188474585}, {{2016, 11, 4}, 9.204794188474585}, {{
            2016, 11, 7}, 9.18970858913153}, {{2016, 11, 7}, 
            9.18970858913153}, {{2016, 11, 7}, 9.18970858913153}, {{2016, 11, 
            8}, 9.184680056017179}, {{2016, 11, 8}, 9.184680056017179}, {{
            2016, 11, 8}, 9.184680056017179}, {{2016, 11, 9}, 
            9.179651522902827}, {{2016, 11, 9}, 9.179651522902827}, {{2016, 
            11, 9}, 9.179651522902827}, {{2016, 11, 10}, 
            9.174622989788475}, {{2016, 11, 10}, 9.174622989788475}, {{2016, 
            11, 10}, 9.174622989788475}, {{2016, 11, 11}, 
            9.169594456674123}, {{2016, 11, 11}, 9.169594456674123}, {{2016, 
            11, 11}, 9.169594456674123}, {{2016, 11, 14}, 
            9.154508857331066}, {{2016, 11, 14}, 9.154508857331066}, {{2016, 
            11, 14}, 9.154508857331066}, {{2016, 11, 15}, 
            9.149480324216714}, {{2016, 11, 15}, 9.149480324216714}, {{2016, 
            11, 15}, 9.149480324216714}, {{2016, 11, 16}, 
            9.144451791102362}, {{2016, 11, 16}, 9.144451791102362}, {{2016, 
            11, 16}, 9.144451791102362}, {{2016, 11, 17}, 
            9.13942325798801}, {{2016, 11, 17}, 9.13942325798801}, {{2016, 11,
             17}, 9.13942325798801}, {{2016, 11, 18}, 9.134394724873658}, {{
            2016, 11, 18}, 9.134394724873658}, {{2016, 11, 18}, 
            9.134394724873658}, {{2016, 11, 21}, 9.119309125530604}, {{2016, 
            11, 21}, 9.119309125530604}, {{2016, 11, 21}, 
            9.119309125530604}, {{2016, 11, 22}, 9.114280592416252}, {{2016, 
            11, 22}, 9.114280592416252}, {{2016, 11, 22}, 
            9.114280592416252}, {{2016, 11, 23}, 9.1092520593019}, {{2016, 11,
             23}, 9.1092520593019}, {{2016, 11, 23}, 9.1092520593019}, {{2016,
             11, 25}, 9.099194993073198}, {{2016, 11, 25}, 
            9.099194993073198}, {{2016, 11, 25}, 9.099194993073198}, {{2016, 
            11, 28}, 9.084109393730142}, {{2016, 11, 28}, 
            9.084109393730142}, {{2016, 11, 28}, 9.084109393730142}, {{2016, 
            11, 29}, 9.07908086061579}, {{2016, 11, 29}, 9.07908086061579}, {{
            2016, 11, 29}, 9.07908086061579}, {{2016, 11, 30}, 
            9.074052327501438}, {{2016, 11, 30}, 9.074052327501438}, {{2016, 
            11, 30}, 9.074052327501438}, {{2016, 12, 1}, 
            9.069023794387086}, {{2016, 12, 1}, 9.069023794387086}, {{2016, 
            12, 1}, 9.069023794387086}, {{2016, 12, 2}, 9.063995261272733}, {{
            2016, 12, 2}, 9.063995261272733}, {{2016, 12, 2}, 
            9.063995261272733}, {{2016, 12, 5}, 9.048909661929677}, {{2016, 
            12, 5}, 9.048909661929677}, {{2016, 12, 5}, 9.048909661929677}, {{
            2016, 12, 6}, 9.043881128815325}, {{2016, 12, 6}, 
            9.043881128815325}, {{2016, 12, 6}, 9.043881128815325}, {{2016, 
            12, 7}, 9.038852595700975}, {{2016, 12, 7}, 9.038852595700975}, {{
            2016, 12, 7}, 9.038852595700975}, {{2016, 12, 8}, 
            9.033824062586623}, {{2016, 12, 8}, 9.033824062586623}, {{2016, 
            12, 8}, 9.033824062586623}, {{2016, 12, 9}, 9.028795529472271}, {{
            2016, 12, 9}, 9.028795529472271}, {{2016, 12, 9}, 
            9.028795529472271}, {{2016, 12, 12}, 9.013709930129217}, {{2016, 
            12, 12}, 9.013709930129217}, {{2016, 12, 12}, 
            9.013709930129217}, {{2016, 12, 13}, 9.008681397014865}, {{2016, 
            12, 13}, 9.008681397014865}, {{2016, 12, 13}, 
            9.008681397014865}, {{2016, 12, 14}, 9.003652863900513}, {{2016, 
            12, 14}, 9.003652863900513}, {{2016, 12, 14}, 
            9.003652863900513}, {{2016, 12, 15}, 8.99862433078616}, {{2016, 
            12, 15}, 8.99862433078616}, {{2016, 12, 15}, 8.99862433078616}, {{
            2016, 12, 16}, 8.993595797671809}, {{2016, 12, 16}, 
            8.993595797671809}, {{2016, 12, 16}, 8.993595797671809}, {{2016, 
            12, 19}, 8.978510198328753}, {{2016, 12, 19}, 
            8.978510198328753}, {{2016, 12, 19}, 8.978510198328753}, {{2016, 
            12, 20}, 8.9734816652144}, {{2016, 12, 20}, 8.9734816652144}, {{
            2016, 12, 20}, 8.9734816652144}, {{2016, 12, 21}, 
            8.968453132100048}, {{2016, 12, 21}, 8.968453132100048}, {{2016, 
            12, 21}, 8.968453132100048}, {{2016, 12, 22}, 
            8.963424598985696}, {{2016, 12, 22}, 8.963424598985696}, {{2016, 
            12, 22}, 8.963424598985696}, {{2016, 12, 23}, 
            8.958396065871344}, {{2016, 12, 23}, 8.958396065871344}, {{2016, 
            12, 23}, 8.958396065871344}, {{2016, 12, 27}, 
            8.938281933413938}, {{2016, 12, 27}, 8.938281933413938}, {{2016, 
            12, 27}, 8.938281933413938}, {{2016, 12, 28}, 
            8.933253400299586}, {{2016, 12, 28}, 8.933253400299586}, {{2016, 
            12, 28}, 8.933253400299586}, {{2016, 12, 29}, 
            8.928224867185236}, {{2016, 12, 29}, 8.928224867185236}, {{2016, 
            12, 29}, 8.928224867185236}, {{2016, 12, 30}, 
            8.923196334070884}, {{2016, 12, 30}, 8.923196334070884}, {{2016, 
            12, 30}, 8.923196334070884}, {{2017, 1, 3}, 8.903082201613476}, {{
            2017, 1, 3}, 8.903082201613476}, {{2017, 1, 3}, 
            8.903082201613476}, {{2017, 1, 4}, 8.898053668499124}, {{2017, 1, 
            4}, 8.898053668499124}, {{2017, 1, 4}, 8.898053668499124}, {{2017,
             1, 5}, 8.893025135384772}, {{2017, 1, 5}, 8.893025135384772}, {{
            2017, 1, 5}, 8.893025135384772}, {{2017, 1, 6}, 
            8.88799660227042}, {{2017, 1, 6}, 8.88799660227042}, {{2017, 1, 
            6}, 8.88799660227042}, {{2017, 1, 9}, 8.872911002927363}, {{2017, 
            1, 9}, 8.872911002927363}, {{2017, 1, 9}, 8.872911002927363}, {{
            2017, 1, 10}, 8.867882469813011}, {{2017, 1, 10}, 
            8.867882469813011}, {{2017, 1, 10}, 8.867882469813011}, {{2017, 1,
             11}, 8.862853936698661}, {{2017, 1, 11}, 8.862853936698661}, {{
            2017, 1, 11}, 8.862853936698661}, {{2017, 1, 12}, 
            8.85782540358431}, {{2017, 1, 12}, 8.85782540358431}, {{2017, 1, 
            12}, 8.85782540358431}, {{2017, 1, 13}, 8.852796870469957}, {{
            2017, 1, 13}, 8.852796870469957}, {{2017, 1, 13}, 
            8.852796870469957}, {{2017, 1, 17}, 8.83268273801255}, {{2017, 1, 
            17}, 8.83268273801255}, {{2017, 1, 17}, 8.83268273801255}, {{2017,
             1, 18}, 8.827654204898199}, {{2017, 1, 18}, 
            8.827654204898199}, {{2017, 1, 18}, 8.827654204898199}, {{2017, 1,
             19}, 8.822625671783847}, {{2017, 1, 19}, 8.822625671783847}, {{
            2017, 1, 19}, 8.822625671783847}, {{2017, 1, 20}, 
            8.817597138669495}, {{2017, 1, 20}, 8.817597138669495}, {{2017, 1,
             20}, 8.817597138669495}, {{2017, 1, 23}, 8.802511539326439}, {{
            2017, 1, 23}, 8.802511539326439}, {{2017, 1, 23}, 
            8.802511539326439}, {{2017, 1, 24}, 8.797483006212087}, {{2017, 1,
             24}, 8.797483006212087}, {{2017, 1, 24}, 8.797483006212087}, {{
            2017, 1, 25}, 8.792454473097735}, {{2017, 1, 25}, 
            8.792454473097735}, {{2017, 1, 25}, 8.792454473097735}, {{2017, 1,
             26}, 8.787425939983383}, {{2017, 1, 26}, 8.787425939983383}, {{
            2017, 1, 26}, 8.787425939983383}, {{2017, 1, 27}, 
            8.78239740686903}, {{2017, 1, 27}, 8.78239740686903}, {{2017, 1, 
            27}, 8.78239740686903}, {{2017, 1, 30}, 8.767311807525976}, {{
            2017, 1, 30}, 8.767311807525976}, {{2017, 1, 30}, 
            8.767311807525976}, {{2017, 1, 31}, 8.762283274411624}, {{2017, 1,
             31}, 8.762283274411624}, {{2017, 1, 31}, 8.762283274411624}, {{
            2017, 2, 1}, 8.757254741297272}, {{2017, 2, 1}, 
            8.757254741297272}, {{2017, 2, 1}, 8.757254741297272}, {{2017, 2, 
            2}, 8.752226208182922}, {{2017, 2, 2}, 8.752226208182922}, {{2017,
             2, 2}, 8.752226208182922}, {{2017, 2, 3}, 8.74719767506857}, {{
            2017, 2, 3}, 8.74719767506857}, {{2017, 2, 3}, 
            8.74719767506857}, {{2017, 2, 6}, 8.732112075725514}, {{2017, 2, 
            6}, 8.732112075725514}, {{2017, 2, 6}, 8.732112075725514}, {{2017,
             2, 7}, 8.727083542611162}, {{2017, 2, 7}, 8.727083542611162}, {{
            2017, 2, 7}, 8.727083542611162}, {{2017, 2, 8}, 
            8.72205500949681}, {{2017, 2, 8}, 8.72205500949681}, {{2017, 2, 
            8}, 8.72205500949681}, {{2017, 2, 9}, 8.717026476382458}, {{2017, 
            2, 9}, 8.717026476382458}, {{2017, 2, 9}, 8.717026476382458}, {{
            2017, 2, 10}, 8.711997943268106}, {{2017, 2, 10}, 
            8.711997943268106}, {{2017, 2, 10}, 8.711997943268106}, {{2017, 2,
             13}, 8.69691234392505}, {{2017, 2, 13}, 8.69691234392505}, {{
            2017, 2, 13}, 8.69691234392505}, {{2017, 2, 14}, 
            8.691883810810697}, {{2017, 2, 14}, 8.691883810810697}, {{2017, 2,
             14}, 8.691883810810697}, {{2017, 2, 15}, 8.686855277696347}, {{
            2017, 2, 15}, 8.686855277696347}, {{2017, 2, 15}, 
            8.686855277696347}, {{2017, 2, 16}, 8.681826744581995}, {{2017, 2,
             16}, 8.681826744581995}, {{2017, 2, 16}, 8.681826744581995}, {{
            2017, 2, 17}, 8.676798211467643}, {{2017, 2, 17}, 
            8.676798211467643}, {{2017, 2, 17}, 8.676798211467643}, {{2017, 2,
             21}, 8.656684079010237}, {{2017, 2, 21}, 8.656684079010237}, {{
            2017, 2, 21}, 8.656684079010237}, {{2017, 2, 22}, 
            8.651655545895885}, {{2017, 2, 22}, 8.651655545895885}, {{2017, 2,
             22}, 8.651655545895885}, {{2017, 2, 23}, 8.646627012781533}, {{
            2017, 2, 23}, 8.646627012781533}, {{2017, 2, 23}, 
            8.646627012781533}, {{2017, 2, 24}, 8.64159847966718}, {{2017, 2, 
            24}, 8.64159847966718}, {{2017, 2, 24}, 8.64159847966718}, {{2017,
             2, 27}, 8.626512880324125}, {{2017, 2, 27}, 
            8.626512880324125}, {{2017, 2, 27}, 8.626512880324125}, {{2017, 2,
             28}, 8.621484347209773}, {{2017, 2, 28}, 8.621484347209773}, {{
            2017, 2, 28}, 8.621484347209773}, {{2017, 3, 1}, 
            8.61645581409542}, {{2017, 3, 1}, 8.61645581409542}, {{2017, 3, 
            1}, 8.61645581409542}, {{2017, 3, 2}, 8.611427280981069}, {{2017, 
            3, 2}, 8.611427280981069}, {{2017, 3, 2}, 8.611427280981069}, {{
            2017, 3, 3}, 8.606398747866717}, {{2017, 3, 3}, 
            8.606398747866717}, {{2017, 3, 3}, 8.606398747866717}, {{2017, 3, 
            6}, 8.591313148523662}, {{2017, 3, 6}, 8.591313148523662}, {{2017,
             3, 6}, 8.591313148523662}, {{2017, 3, 7}, 8.58628461540931}, {{
            2017, 3, 7}, 8.58628461540931}, {{2017, 3, 7}, 
            8.58628461540931}, {{2017, 3, 8}, 8.581256082294958}, {{2017, 3, 
            8}, 8.581256082294958}, {{2017, 3, 8}, 8.581256082294958}, {{2017,
             3, 9}, 8.576227549180608}, {{2017, 3, 9}, 8.576227549180608}, {{
            2017, 3, 9}, 8.576227549180608}, {{2017, 3, 10}, 
            8.571199016066256}, {{2017, 3, 10}, 8.571199016066256}, {{2017, 3,
             10}, 8.571199016066256}, {{2017, 3, 13}, 8.5561134167232}, {{
            2017, 3, 13}, 8.5561134167232}, {{2017, 3, 13}, 
            8.5561134167232}, {{2017, 3, 14}, 8.551084883608848}, {{2017, 3, 
            14}, 8.551084883608848}, {{2017, 3, 14}, 8.551084883608848}, {{
            2017, 3, 15}, 8.546056350494496}, {{2017, 3, 15}, 
            8.546056350494496}, {{2017, 3, 15}, 8.546056350494496}, {{2017, 3,
             16}, 8.541027817380144}, {{2017, 3, 16}, 8.541027817380144}, {{
            2017, 3, 16}, 8.541027817380144}, {{2017, 3, 17}, 
            8.535999284265792}, {{2017, 3, 17}, 8.535999284265792}, {{2017, 3,
             17}, 8.535999284265792}, {{2017, 3, 20}, 8.520913684922736}, {{
            2017, 3, 20}, 8.520913684922736}, {{2017, 3, 20}, 
            8.520913684922736}, {{2017, 3, 21}, 8.515885151808384}, {{2017, 3,
             21}, 8.515885151808384}, {{2017, 3, 21}, 8.515885151808384}, {{
            2017, 3, 22}, 8.510856618694033}, {{2017, 3, 22}, 
            8.510856618694033}, {{2017, 3, 22}, 8.510856618694033}, {{2017, 3,
             23}, 8.505828085579681}, {{2017, 3, 23}, 8.505828085579681}, {{
            2017, 3, 23}, 8.505828085579681}, {{2017, 3, 24}, 
            8.50079955246533}, {{2017, 3, 24}, 8.50079955246533}, {{2017, 3, 
            24}, 8.50079955246533}, {{2017, 3, 27}, 8.485713953122275}, {{
            2017, 3, 27}, 8.485713953122275}, {{2017, 3, 27}, 
            8.485713953122275}, {{2017, 3, 28}, 8.480685420007923}, {{2017, 3,
             28}, 8.480685420007923}, {{2017, 3, 28}, 8.480685420007923}, {{
            2017, 3, 29}, 8.47565688689357}, {{2017, 3, 29}, 
            8.47565688689357}, {{2017, 3, 29}, 8.47565688689357}, {{2017, 3, 
            30}, 8.470628353779219}, {{2017, 3, 30}, 8.470628353779219}, {{
            2017, 3, 30}, 8.470628353779219}, {{2017, 3, 31}, 
            8.465599820664867}, {{2017, 3, 31}, 8.465599820664867}, {{2017, 3,
             31}, 8.465599820664867}, {{2017, 4, 3}, 8.45051422132181}, {{
            2017, 4, 3}, 8.45051422132181}, {{2017, 4, 3}, 
            8.45051422132181}, {{2017, 4, 4}, 8.445485688207459}, {{2017, 4, 
            4}, 8.445485688207459}, {{2017, 4, 4}, 8.445485688207459}, {{2017,
             4, 5}, 8.440457155093107}, {{2017, 4, 5}, 8.440457155093107}, {{
            2017, 4, 5}, 8.440457155093107}, {{2017, 4, 6}, 
            8.435428621978755}, {{2017, 4, 6}, 8.435428621978755}, {{2017, 4, 
            6}, 8.435428621978755}, {{2017, 4, 7}, 8.430400088864403}, {{2017,
             4, 7}, 8.430400088864403}, {{2017, 4, 7}, 8.430400088864403}, {{
            2017, 4, 10}, 8.415314489521348}, {{2017, 4, 10}, 
            8.415314489521348}, {{2017, 4, 10}, 8.415314489521348}, {{2017, 4,
             11}, 8.410285956406996}, {{2017, 4, 11}, 8.410285956406996}, {{
            2017, 4, 11}, 8.410285956406996}, {{2017, 4, 12}, 
            8.405257423292646}, {{2017, 4, 12}, 8.405257423292646}, {{2017, 4,
             12}, 8.405257423292646}, {{2017, 4, 13}, 8.400228890178294}, {{
            2017, 4, 13}, 8.400228890178294}, {{2017, 4, 13}, 
            8.400228890178294}, {{2017, 4, 17}, 8.380114757720886}, {{2017, 4,
             17}, 8.380114757720886}, {{2017, 4, 17}, 8.380114757720886}, {{
            2017, 4, 18}, 8.375086224606534}, {{2017, 4, 18}, 
            8.375086224606534}, {{2017, 4, 18}, 8.375086224606534}, {{2017, 4,
             19}, 8.370057691492182}, {{2017, 4, 19}, 8.370057691492182}, {{
            2017, 4, 19}, 8.370057691492182}, {{2017, 4, 20}, 
            8.36502915837783}, {{2017, 4, 20}, 8.36502915837783}, {{2017, 4, 
            20}, 8.36502915837783}, {{2017, 4, 21}, 8.360000625263478}, {{
            2017, 4, 21}, 8.360000625263478}, {{2017, 4, 21}, 
            8.360000625263478}, {{2017, 4, 24}, 8.344915025920422}, {{2017, 4,
             24}, 8.344915025920422}, {{2017, 4, 24}, 8.344915025920422}, {{
            2017, 4, 25}, 8.33988649280607}, {{2017, 4, 25}, 
            8.33988649280607}, {{2017, 4, 25}, 8.33988649280607}, {{2017, 4, 
            26}, 8.33485795969172}, {{2017, 4, 26}, 8.33485795969172}, {{2017,
             4, 26}, 8.33485795969172}, {{2017, 4, 27}, 8.329829426577367}, {{
            2017, 4, 27}, 8.329829426577367}, {{2017, 4, 27}, 
            8.329829426577367}, {{2017, 4, 28}, 8.324800893463015}, {{2017, 4,
             28}, 8.324800893463015}, {{2017, 4, 28}, 8.324800893463015}, {{
            2017, 5, 1}, 8.309715294119961}, {{2017, 5, 1}, 
            8.309715294119961}, {{2017, 5, 1}, 8.309715294119961}, {{2017, 5, 
            2}, 8.304686761005609}, {{2017, 5, 2}, 8.304686761005609}, {{2017,
             5, 2}, 8.304686761005609}, {{2017, 5, 3}, 8.299658227891257}, {{
            2017, 5, 3}, 8.299658227891257}, {{2017, 5, 3}, 
            8.299658227891257}, {{2017, 5, 4}, 8.294629694776905}, {{2017, 5, 
            4}, 8.294629694776905}, {{2017, 5, 4}, 8.294629694776905}, {{2017,
             5, 5}, 8.289601161662553}, {{2017, 5, 5}, 8.289601161662553}, {{
            2017, 5, 5}, 8.289601161662553}, {{2017, 5, 8}, 
            8.274515562319497}, {{2017, 5, 8}, 8.274515562319497}, {{2017, 5, 
            8}, 8.274515562319497}, {{2017, 5, 9}, 8.269487029205145}, {{2017,
             5, 9}, 8.269487029205145}, {{2017, 5, 9}, 8.269487029205145}, {{
            2017, 5, 10}, 8.264458496090793}, {{2017, 5, 10}, 
            8.264458496090793}, {{2017, 5, 10}, 8.264458496090793}, {{2017, 5,
             11}, 8.25942996297644}, {{2017, 5, 11}, 8.25942996297644}, {{
            2017, 5, 11}, 8.25942996297644}, {{2017, 5, 12}, 
            8.254401429862089}, {{2017, 5, 12}, 8.254401429862089}, {{2017, 5,
             12}, 8.254401429862089}, {{2017, 5, 15}, 8.239315830519034}, {{
            2017, 5, 15}, 8.239315830519034}, {{2017, 5, 15}, 
            8.239315830519034}, {{2017, 5, 16}, 8.234287297404682}, {{2017, 5,
             16}, 8.234287297404682}, {{2017, 5, 16}, 8.234287297404682}, {{
            2017, 5, 17}, 8.229258764290332}, {{2017, 5, 17}, 
            8.229258764290332}, {{2017, 5, 17}, 8.229258764290332}, {{2017, 5,
             18}, 8.22423023117598}, {{2017, 5, 18}, 8.22423023117598}, {{
            2017, 5, 18}, 8.22423023117598}, {{2017, 5, 19}, 
            8.219201698061628}, {{2017, 5, 19}, 8.219201698061628}, {{2017, 5,
             19}, 8.219201698061628}, {{2017, 5, 22}, 8.204116098718572}, {{
            2017, 5, 22}, 8.204116098718572}, {{2017, 5, 22}, 
            8.204116098718572}, {{2017, 5, 23}, 8.19908756560422}, {{2017, 5, 
            23}, 8.19908756560422}, {{2017, 5, 23}, 8.19908756560422}, {{2017,
             5, 24}, 8.194059032489868}, {{2017, 5, 24}, 
            8.194059032489868}, {{2017, 5, 24}, 8.194059032489868}, {{2017, 5,
             25}, 8.189030499375516}, {{2017, 5, 25}, 8.189030499375516}, {{
            2017, 5, 25}, 8.189030499375516}, {{2017, 5, 26}, 
            8.184001966261164}, {{2017, 5, 26}, 8.184001966261164}, {{2017, 5,
             26}, 8.184001966261164}, {{2017, 5, 30}, 8.163887833803756}, {{
            2017, 5, 30}, 8.163887833803756}, {{2017, 5, 30}, 
            8.163887833803756}, {{2017, 5, 31}, 8.158859300689405}, {{2017, 5,
             31}, 8.158859300689405}, {{2017, 5, 31}, 8.158859300689405}, {{
            2017, 6, 1}, 8.153830767575053}, {{2017, 6, 1}, 
            8.153830767575053}, {{2017, 6, 1}, 8.153830767575053}, {{2017, 6, 
            2}, 8.148802234460701}, {{2017, 6, 2}, 8.148802234460701}, {{2017,
             6, 2}, 8.148802234460701}, {{2017, 6, 5}, 8.133716635117647}, {{
            2017, 6, 5}, 8.133716635117647}, {{2017, 6, 5}, 
            8.133716635117647}, {{2017, 6, 6}, 8.128688102003295}, {{2017, 6, 
            6}, 8.128688102003295}, {{2017, 6, 6}, 8.128688102003295}, {{2017,
             6, 7}, 8.123659568888943}, {{2017, 6, 7}, 8.123659568888943}, {{
            2017, 6, 7}, 8.123659568888943}, {{2017, 6, 8}, 
            8.118631035774591}, {{2017, 6, 8}, 8.118631035774591}, {{2017, 6, 
            8}, 8.118631035774591}, {{2017, 6, 9}, 8.113602502660239}, {{2017,
             6, 9}, 8.113602502660239}, {{2017, 6, 9}, 8.113602502660239}, {{
            2017, 6, 12}, 8.098516903317183}, {{2017, 6, 12}, 
            8.098516903317183}, {{2017, 6, 12}, 8.098516903317183}, {{2017, 6,
             13}, 8.09348837020283}, {{2017, 6, 13}, 8.09348837020283}, {{
            2017, 6, 13}, 8.09348837020283}, {{2017, 6, 14}, 
            8.088459837088479}, {{2017, 6, 14}, 8.088459837088479}, {{2017, 6,
             14}, 8.088459837088479}, {{2017, 6, 15}, 8.083431303974127}, {{
            2017, 6, 15}, 8.083431303974127}, {{2017, 6, 15}, 
            8.083431303974127}, {{2017, 6, 16}, 8.078402770859775}, {{2017, 6,
             16}, 8.078402770859775}, {{2017, 6, 16}, 8.078402770859775}, {{
            2017, 6, 19}, 8.06331717151672}, {{2017, 6, 19}, 
            8.06331717151672}, {{2017, 6, 19}, 8.06331717151672}}, 
         "lm" -> (ReplaceAll[
           Normal[
            
            LinearModelFit[$CellContext`secondsFormData$183002, \
$CellContext`x, $CellContext`x]], Pattern[$CellContext`a, 
              Blank[]] + Pattern[$CellContext`b, 
               
               Blank[]] $CellContext`x -> $CellContext`a + $CellContext`b #]& \
), "nweeks" -> 156, "len" -> 754, "vMin" -> 7.053513526916504, "vMax" -> 
         17.499013900756836`}, $CellContext`o$$, $CellContext`h$$], 
      "Specifications" :> {{{$CellContext`o$$, -0.5, 
          "offset from linear fit"}, -10.445500373840332`, 
         10.445500373840332`, Appearance -> 
         "Labeled"}, {{$CellContext`h$$, 8.84000015258789, "price horizon"}, 
         7.053513526916504, 20.980847358703613`, Appearance -> "Labeled"}}, 
      "Options" :> {}, "DefaultOptions" :> {}],
     ImageSizeCache->{405., {182., 188.}},
     SingleEvaluation->True],
    Deinitialization:>None,
    DynamicModuleValues:>{},
    SynchronousInitialization->True,
    UndoTrackedVariables:>{Typeset`show$$, Typeset`bookmarkMode$$},
    UnsavedVariables:>{Typeset`initDone$$},
    UntrackedVariables:>{Typeset`size$$}], "Manipulate",
   Deployed->True,
   StripOnInput->False],
  Manipulate`InterpretManipulate[1]]], "Output",
 CellChangeTimes->{3.7069166677176027`*^9, 
  3.706916779735032*^9},ExpressionUUID->"859ef769-f9e6-4fa2-b3e9-\
189255055399"]
}, Open  ]]
},
WindowSize->{1584, 765},
WindowMargins->{{0, Automatic}, {Automatic, 0}},
FrontEndVersion->"11.1 for Mac OS X x86 (32-bit, 64-bit Kernel) (April 27, \
2017)",
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
Cell[1485, 35, 31961, 691, 3519, "Input", "ExpressionUUID" -> \
"3a855e0c-ec77-43be-8d64-556f543295b6"],
Cell[33449, 728, 53616, 795, 387, "Output", "ExpressionUUID" -> \
"26c4fa5d-2783-43b7-be26-3ffef855c36d"]
}, Open  ]],
Cell[87080, 1526, 687, 10, 54, "Input", "ExpressionUUID" -> \
"d64b0b2f-880c-4c96-b4eb-a3141fef245f"],
Cell[87770, 1538, 285, 5, 54, "Input", "ExpressionUUID" -> \
"99c763cf-5dd4-49ee-99e2-1e443f7b6fa5"],
Cell[CellGroupData[{
Cell[88080, 1547, 2804, 69, 327, "Input", "ExpressionUUID" -> \
"eb2eba1b-9ee6-4ce5-a263-46a51c207d96"],
Cell[90887, 1618, 114099, 1681, 387, "Output", "ExpressionUUID" -> \
"5468df09-1184-414e-ad91-862a810e829e"]
}, Open  ]],
Cell[CellGroupData[{
Cell[205023, 3304, 1147, 29, 222, "Input", "ExpressionUUID" -> \
"d7221e33-c8fe-4693-95a8-a14df5e2f0fb"],
Cell[206173, 3335, 59212, 881, 387, "Output", "ExpressionUUID" -> \
"08c88493-cf3c-4dec-ae17-e87dca76155b"]
}, Open  ]],
Cell[CellGroupData[{
Cell[265422, 4221, 409, 7, 96, "Input", "ExpressionUUID" -> \
"cced4ec7-5f45-434a-a0c0-d35eca704587"],
Cell[265834, 4230, 112518, 1665, 385, "Output", "ExpressionUUID" -> \
"27436c77-536d-4d12-a7e0-140d0c40cf40"]
}, Open  ]],
Cell[CellGroupData[{
Cell[378389, 5900, 323, 6, 32, "Input", "ExpressionUUID" -> \
"e2057645-5c21-4aef-a244-fb158b90dbae"],
Cell[378715, 5908, 96589, 1457, 387, "Output", "ExpressionUUID" -> \
"df9c1549-05a5-4632-96b2-0cffa31b59ea"]
}, Open  ]],
Cell[CellGroupData[{
Cell[475341, 7370, 399, 8, 32, "Input", "ExpressionUUID" -> \
"ade04256-30d8-4f75-bd2a-2481a6c7fa4d"],
Cell[475743, 7380, 332201, 4864, 421, "Output", "ExpressionUUID" -> \
"859ef769-f9e6-4fa2-b3e9-189255055399"]
}, Open  ]]
}
]
*)

(* NotebookSignature zuTQdwd#7GRg0Cwh@ZJ39LgK *)
