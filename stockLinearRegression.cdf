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
NotebookDataLength[    124442,       2546]
NotebookOptionsPosition[    124767,       2537]
NotebookOutlinePosition[    125110,       2552]
CellTagsIndexPosition[    125067,       2549]
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
      RowBox[{
       RowBox[{"lm", "[", "x_", "]"}], "=", " ", 
       RowBox[{"Normal", "[", 
        RowBox[{"LinearModelFit", "[", " ", 
         RowBox[{"secondsFormData", ",", "x", ",", "x"}], " ", "]"}], "]"}]}],
       " ", ";", "\[IndentingNewLine]", "\[IndentingNewLine]", 
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
      RowBox[{"(*", 
       RowBox[{"{", 
        RowBox[{"min", ",", " ", 
         RowBox[{"lm", "[", "x", "]"}]}], "}"}], "*)"}], 
      "\[IndentingNewLine]", "\[IndentingNewLine]", 
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
      RowBox[{"{", 
       RowBox[{
        RowBox[{"diffList", "[", "min", "]"}], ",", " ", 
        RowBox[{"diffList", "[", "max", "]"}], ",", " ", 
        RowBox[{"diffList", "[", "close", "]"}], ",", " ", 
        RowBox[{"zeroList", "[", "min", "]"}], ",", " ", "min", ",", " ", 
        "max", ",", " ", "close", ",", " ", "dateFormLinearModel", ",", " ", 
        RowBox[{"lm", "[", "y", "]"}]}], "}"}]}]}], " ", 
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
    RowBox[{"calc_", ",", " ", "lable_", ",", " ", "nWeeks_"}], " ", "]"}], 
   " ", ":=", " ", "\[IndentingNewLine]", 
   RowBox[{"Module", "[", 
    RowBox[{
     RowBox[{"{", 
      RowBox[{
      "dMin", ",", " ", "dMax", ",", " ", "dClose", ",", " ", "dZero", ",", 
       " ", "min", ",", " ", "max", ",", " ", "close", ",", " ", "model", ",",
        " ", "len", ",", " ", "lm"}], "}"}], ",", "\[IndentingNewLine]", 
     "\[IndentingNewLine]", 
     RowBox[{
      RowBox[{
       RowBox[{"{", 
        RowBox[{
        "dMin", ",", " ", "dMax", ",", " ", "dClose", ",", " ", "dZero", ",", 
         " ", "min", ",", " ", "max", ",", " ", "close", ",", " ", "model", 
         ",", " ", 
         RowBox[{"lm", "[", "x_", "]"}]}], "}"}], " ", "=", " ", "calc"}], 
      " ", ";", "\[IndentingNewLine]", 
      RowBox[{"len", " ", "=", " ", 
       RowBox[{"Length", "[", "min", "]"}]}], " ", ";", "\[IndentingNewLine]",
       "\[IndentingNewLine]", 
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
         "dMin", ",", " ", "dMax", ",", " ", "dClose", ",", " ", "dZero"}], 
         "}"}], ",", "\[IndentingNewLine]", 
        RowBox[{"Filling", "\[Rule]", "Bottom"}], ",", " ", 
        "\[IndentingNewLine]", 
        RowBox[{"Joined", "\[Rule]", "True"}], ",", "\[IndentingNewLine]", 
        RowBox[{"PlotLabel", "\[Rule]", " ", 
         RowBox[{"Row", "[", 
          RowBox[{"{", 
           RowBox[{
           "\"\<Lin diff: \>\"", ",", "lable", ",", " ", "\"\< (\>\"", ",", 
            "nWeeks", ",", " ", "\"\< weeks range)\>\""}], "}"}], " ", 
          "]"}]}], ",", "\[IndentingNewLine]", 
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
                 RowBox[{"max", "[", 
                  RowBox[{"[", "len", "]"}], "]"}], "[", 
                 RowBox[{"[", "2", "]"}], "]"}]}], "}"}], "]"}], ",", " ", 
             "\[IndentingNewLine]", 
             RowBox[{"Row", "[", 
              RowBox[{"{", 
               RowBox[{"\"\<Close = \>\"", ",", " ", 
                RowBox[{
                 RowBox[{"close", "[", 
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
      "dMin", ",", " ", "dMax", ",", " ", "dClose", ",", " ", "dZero", ",", 
       " ", "min", ",", " ", "max", ",", " ", "close", ",", " ", "model", ",",
        " ", "lm", ",", " ", "len", ",", " ", "dr", ",", " ", "vMin", ",", 
       " ", "vMax", ",", " ", "dateFormLinearModel", ",", " ", "lmx", ",", 
       " ", "horizonLine"}], "}"}], ",", "\[IndentingNewLine]", 
     "\[IndentingNewLine]", 
     RowBox[{
      RowBox[{
       RowBox[{"{", 
        RowBox[{
        "dMin", ",", " ", "dMax", ",", " ", "dClose", ",", " ", "dZero", ",", 
         " ", "min", ",", " ", "max", ",", " ", "close", ",", " ", "model", 
         ",", " ", "lm"}], "}"}], " ", "=", " ", "calc"}], " ", ";", 
      "\[IndentingNewLine]", 
      RowBox[{"len", " ", "=", " ", 
       RowBox[{"Length", "[", "min", "]"}]}], " ", ";", "\[IndentingNewLine]", 
      RowBox[{"dr", " ", "=", " ", 
       RowBox[{
        RowBox[{"DateList", "[", "]"}], " ", "+", " ", 
        RowBox[{"{", 
         RowBox[{"0", ",", " ", "0", ",", " ", "0", ",", " ", 
          RowBox[{"24", "*", "7", "*", 
           RowBox[{"nWeeks", "/", "2"}]}], ",", " ", "0", ",", " ", "0"}], 
         "}"}]}]}], " ", ";", "\[IndentingNewLine]", "\[IndentingNewLine]", 
      RowBox[{"vMin", " ", "=", "  ", 
       RowBox[{"Min", "[", 
        RowBox[{"Table", "[", 
         RowBox[{
          RowBox[{
           RowBox[{"min", "[", 
            RowBox[{"[", "i", "]"}], "]"}], "[", 
           RowBox[{"[", "2", "]"}], "]"}], ",", " ", 
          RowBox[{"{", 
           RowBox[{"i", ",", " ", "1", ",", " ", "len"}], "}"}]}], "]"}], " ",
         "]"}]}], " ", ";", "\[IndentingNewLine]", 
      RowBox[{"vMax", " ", "=", "  ", 
       RowBox[{"Max", "[", 
        RowBox[{"Table", "[", 
         RowBox[{
          RowBox[{
           RowBox[{"max", "[", 
            RowBox[{"[", "i", "]"}], "]"}], "[", 
           RowBox[{"[", "2", "]"}], "]"}], ",", " ", 
          RowBox[{"{", 
           RowBox[{"i", ",", " ", "1", ",", " ", "len"}], "}"}]}], "]"}], " ",
         "]"}]}], " ", ";", "\[IndentingNewLine]", "\[IndentingNewLine]", 
      RowBox[{
       RowBox[{"lmx", "[", "w_", "]"}], " ", "=", " ", 
       RowBox[{"lm", " ", "/.", " ", 
        RowBox[{"y", " ", "\[Rule]", " ", "w"}]}]}], " ", ";", 
      "\[IndentingNewLine]", "\[IndentingNewLine]", 
      RowBox[{
       RowBox[{"dateFormLinearModel", "[", "o_", "]"}], " ", "=", " ", 
       RowBox[{"{", "\[IndentingNewLine]", 
        RowBox[{
         RowBox[{"{", 
          RowBox[{
           RowBox[{
            RowBox[{"dMin", "[", 
             RowBox[{"[", "1", "]"}], "]"}], "[", 
            RowBox[{"[", "1", "]"}], "]"}], ",", " ", 
           RowBox[{
            RowBox[{"lmx", "[", "0", "]"}], "+", "o"}]}], "}"}], ",", 
         "\[IndentingNewLine]", 
         RowBox[{"{", 
          RowBox[{"dr", ",", " ", 
           RowBox[{
            RowBox[{"lmx", "[", 
             RowBox[{
              RowBox[{"AbsoluteTime", "[", "dr", "]"}], "-", 
              RowBox[{"AbsoluteTime", "[", 
               RowBox[{
                RowBox[{"dMin", "[", 
                 RowBox[{"[", "1", "]"}], "]"}], "[", 
                RowBox[{"[", "1", "]"}], "]"}], "]"}]}], "]"}], " ", "+", " ",
             "o"}]}], "}"}]}], "\[IndentingNewLine]", "}"}]}], " ", ";", 
      "\[IndentingNewLine]", "\[IndentingNewLine]", 
      RowBox[{
       RowBox[{"horizonLine", "[", "y_", "]"}], " ", "=", " ", 
       RowBox[{"{", "\[IndentingNewLine]", 
        RowBox[{
         RowBox[{"{", 
          RowBox[{
           RowBox[{
            RowBox[{"dMin", "[", 
             RowBox[{"[", "1", "]"}], "]"}], "[", 
            RowBox[{"[", "1", "]"}], "]"}], ",", " ", "y"}], "}"}], ",", 
         "\[IndentingNewLine]", 
         RowBox[{"{", 
          RowBox[{"dr", ",", " ", "y"}], "}"}]}], "\[IndentingNewLine]", 
        "}"}]}], " ", ";", "\[IndentingNewLine]", "\[IndentingNewLine]", 
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
              RowBox[{"horizonLine", "[", "v", "]"}]}], "}"}], ",", 
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
            RowBox[{"-", "0.5"}]}], "}"}], ",", " ", 
          RowBox[{"-", "2"}], ",", " ", "2", ",", " ", 
          RowBox[{"Appearance", " ", "\[Rule]", " ", "\"\<Labeled\>\""}]}], 
         "}"}], "\[IndentingNewLine]", ",", 
        RowBox[{"{", 
         RowBox[{
          RowBox[{"{", 
           RowBox[{"v", ",", " ", 
            RowBox[{
             RowBox[{"close", "[", 
              RowBox[{"[", "len", "]"}], "]"}], "[", 
             RowBox[{"[", "2", "]"}], "]"}]}], "}"}], ",", " ", "vMin", ",", 
          " ", 
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
  RowBox[{"ssys", " ", "=", " ", 
   RowBox[{"fDataAndLinearModel", "[", " ", 
    RowBox[{"\"\<ssys\>\"", ",", " ", "nw"}], " ", "]"}]}], " ", 
  ";"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{"ddd", " ", "=", " ", 
   RowBox[{"fDataAndLinearModel", "[", " ", 
    RowBox[{"\"\<ddd\>\"", ",", " ", "nw"}], " ", "]"}]}], " ", 
  ";"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{"vjet", " ", "=", " ", 
   RowBox[{"fDataAndLinearModel", "[", " ", 
    RowBox[{"\"\<vjet\>\"", ",", " ", "nw"}], " ", "]"}]}], " ", 
  ";"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{"ibm", " ", "=", " ", 
   RowBox[{"fDataAndLinearModel", "[", " ", 
    RowBox[{"\"\<IBM\>\"", ",", " ", "nw"}], " ", "]"}]}], " ", 
  ";"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{
   RowBox[{"dis", " ", "=", " ", 
    RowBox[{"fDataAndLinearModel", "[", " ", 
     RowBox[{"\"\<DIS\>\"", ",", " ", "nw"}], " ", "]"}]}], " ", ";"}], 
  "\[IndentingNewLine]"}], "\[IndentingNewLine]", 
 RowBox[{"plotDistAgainstLinearModel", "[", " ", 
  RowBox[{"ssys", ",", " ", "\"\<Stratasys\>\"", ",", " ", "nw"}], " ", 
  "]"}], "\[IndentingNewLine]", 
 RowBox[{"plotDistAgainstLinearModel", "[", " ", 
  RowBox[{"ddd", ",", " ", "\"\<3D Systems\>\"", ",", " ", "nw"}], " ", 
  "]"}], "\[IndentingNewLine]", 
 RowBox[{"plotDistAgainstLinearModel", "[", " ", 
  RowBox[{"vjet", ",", " ", "\"\<Voxeljet\>\"", ",", " ", "nw"}], " ", 
  "]"}], "\[IndentingNewLine]", 
 RowBox[{"plotDistAgainstLinearModel", "[", " ", 
  RowBox[{"ibm", ",", " ", "\"\<IBM\>\"", ",", " ", "nw"}], " ", 
  "]"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{"plotDistAgainstLinearModel", "[", " ", 
   RowBox[{"dis", ",", " ", "\"\<Disney\>\"", ",", " ", "nw"}], " ", "]"}], 
  "\[IndentingNewLine]"}], "\[IndentingNewLine]", 
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
         "0", ",", "3", ",", " ", "0", ",", " ", "0", ",", " ", "0", ",", " ",
           "0"}], "}"}]}]}], "]"}]}], ";", "\[IndentingNewLine]", 
    "\[IndentingNewLine]", 
    RowBox[{"TradingChart", "[", 
     RowBox[{"data", ",", " ", 
      RowBox[{"{", 
       RowBox[{"(*", 
        RowBox[{"\"\<Volume\>\"", ","}], "*)"}], 
       "\"\<SimpleMovingAverage\>\"", 
       RowBox[{"(*", 
        RowBox[{",", "\"\<BollingerBands\>\""}], "*)"}], "}"}]}], "]"}]}]}], 
  " ", "\[IndentingNewLine]", "]"}]}], "Input",
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
   3.5952845990241823`*^9}, {3.5952846448888054`*^9, 3.5952847236503105`*^9}}],

Cell[BoxData[
 TagBox[
  StyleBox[
   DynamicModuleBox[{$CellContext`o$$ = -0.5, $CellContext`v$$ = 120.59, 
    Typeset`show$$ = True, Typeset`bookmarkList$$ = {}, 
    Typeset`bookmarkMode$$ = "Menu", Typeset`animator$$, Typeset`animvar$$ = 
    1, Typeset`name$$ = "\"untitled\"", Typeset`specs$$ = {{{
       Hold[$CellContext`o$$], -0.5}, -2, 2}, {{
       Hold[$CellContext`v$$], 120.59}, 95.99999999999999, 
      146.66666666666669`}}, Typeset`size$$ = {480., {166., 174.}}, 
    Typeset`update$$ = 0, Typeset`initDone$$, Typeset`skipInitDone$$ = 
    True, $CellContext`o$17519$$ = 0, $CellContext`v$17520$$ = 0}, 
    DynamicBox[Manipulate`ManipulateBoxes[
     1, StandardForm, 
      "Variables" :> {$CellContext`o$$ = -0.5, $CellContext`v$$ = 120.59}, 
      "ControllerVariables" :> {
        Hold[$CellContext`o$$, $CellContext`o$17519$$, 0], 
        Hold[$CellContext`v$$, $CellContext`v$17520$$, 0]}, 
      "OtherVariables" :> {
       Typeset`show$$, Typeset`bookmarkList$$, Typeset`bookmarkMode$$, 
        Typeset`animator$$, Typeset`animvar$$, Typeset`name$$, 
        Typeset`specs$$, Typeset`size$$, Typeset`update$$, Typeset`initDone$$,
         Typeset`skipInitDone$$}, "Body" :> Show[{
         DateListPlot[{$CellContext`min$17518, $CellContext`max$17518, \
$CellContext`close$17518, 
           $CellContext`dateFormLinearModel$17518[0], 
           $CellContext`dateFormLinearModel$17518[$CellContext`o$$], 
           $CellContext`horizonLine$17518[$CellContext`v$$]}, Filling -> 
          Bottom, Joined -> True, PlotLabel -> 
          Row[{"Stratasys", " (", 8, " weeks range)"}], 
          PlotRange -> {{Automatic, $CellContext`dr$17518}, {
            Automatic, $CellContext`vMax$17518 + ($CellContext`vMax$17518 - \
$CellContext`vMin$17518)/3}}]}], 
      "Specifications" :> {{{$CellContext`o$$, -0.5}, -2, 2, Appearance -> 
         "Labeled"}, {{$CellContext`v$$, 120.59}, 95.99999999999999, 
         146.66666666666669`, Appearance -> "Labeled"}}, "Options" :> {}, 
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
  3.595284105881976*^9, 3.5952842020604773`*^9, {3.595284326541597*^9, 
   3.5952843444886236`*^9}, 3.5952847445995083`*^9}],

Cell[BoxData[
 TagBox[
  StyleBox[
   DynamicModuleBox[{$CellContext`o$$ = -0.5, $CellContext`v$$ = 75.85, 
    Typeset`show$$ = True, Typeset`bookmarkList$$ = {}, 
    Typeset`bookmarkMode$$ = "Menu", Typeset`animator$$, Typeset`animvar$$ = 
    1, Typeset`name$$ = "\"untitled\"", Typeset`specs$$ = {{{
       Hold[$CellContext`o$$], -0.5}, -2, 2}, {{
       Hold[$CellContext`v$$], 75.85}, 50.68, 96.24}}, Typeset`size$$ = {
    480., {168., 176.}}, Typeset`update$$ = 0, Typeset`initDone$$, 
    Typeset`skipInitDone$$ = True, $CellContext`o$17549$$ = 
    0, $CellContext`v$17550$$ = 0}, 
    DynamicBox[Manipulate`ManipulateBoxes[
     1, StandardForm, 
      "Variables" :> {$CellContext`o$$ = -0.5, $CellContext`v$$ = 75.85}, 
      "ControllerVariables" :> {
        Hold[$CellContext`o$$, $CellContext`o$17549$$, 0], 
        Hold[$CellContext`v$$, $CellContext`v$17550$$, 0]}, 
      "OtherVariables" :> {
       Typeset`show$$, Typeset`bookmarkList$$, Typeset`bookmarkMode$$, 
        Typeset`animator$$, Typeset`animvar$$, Typeset`name$$, 
        Typeset`specs$$, Typeset`size$$, Typeset`update$$, Typeset`initDone$$,
         Typeset`skipInitDone$$}, "Body" :> Show[{
         DateListPlot[{$CellContext`min$17539, $CellContext`max$17539, \
$CellContext`close$17539, 
           $CellContext`dateFormLinearModel$17539[0], 
           $CellContext`dateFormLinearModel$17539[$CellContext`o$$], 
           $CellContext`horizonLine$17539[$CellContext`v$$]}, Filling -> 
          Bottom, Joined -> True, PlotLabel -> 
          Row[{"3D Systems", " (", 8, " weeks range)"}], 
          PlotRange -> {{Automatic, $CellContext`dr$17539}, {
            Automatic, $CellContext`vMax$17539 + ($CellContext`vMax$17539 - \
$CellContext`vMin$17539)/3}}]}], 
      "Specifications" :> {{{$CellContext`o$$, -0.5}, -2, 2, Appearance -> 
         "Labeled"}, {{$CellContext`v$$, 75.85}, 50.68, 96.24, Appearance -> 
         "Labeled"}}, "Options" :> {}, "DefaultOptions" :> {}],
     ImageSizeCache->{543., {247., 254.}},
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
  3.595284105881976*^9, 3.5952842020604773`*^9, {3.595284326541597*^9, 
   3.5952843444886236`*^9}, 3.595284744822521*^9}],

Cell[BoxData[
 TagBox[
  StyleBox[
   DynamicModuleBox[{$CellContext`o$$ = -0.5, $CellContext`v$$ = 41.9, 
    Typeset`show$$ = True, Typeset`bookmarkList$$ = {}, 
    Typeset`bookmarkMode$$ = "Menu", Typeset`animator$$, Typeset`animvar$$ = 
    1, Typeset`name$$ = "\"untitled\"", Typeset`specs$$ = {{{
       Hold[$CellContext`o$$], -0.5}, -2, 2}, {{
       Hold[$CellContext`v$$], 41.9}, 19.3, 86.9}}, Typeset`size$$ = {
    480., {168., 176.}}, Typeset`update$$ = 0, Typeset`initDone$$, 
    Typeset`skipInitDone$$ = True, $CellContext`o$17659$$ = 
    0, $CellContext`v$17660$$ = 0}, 
    DynamicBox[Manipulate`ManipulateBoxes[
     1, StandardForm, 
      "Variables" :> {$CellContext`o$$ = -0.5, $CellContext`v$$ = 41.9}, 
      "ControllerVariables" :> {
        Hold[$CellContext`o$$, $CellContext`o$17659$$, 0], 
        Hold[$CellContext`v$$, $CellContext`v$17660$$, 0]}, 
      "OtherVariables" :> {
       Typeset`show$$, Typeset`bookmarkList$$, Typeset`bookmarkMode$$, 
        Typeset`animator$$, Typeset`animvar$$, Typeset`name$$, 
        Typeset`specs$$, Typeset`size$$, Typeset`update$$, Typeset`initDone$$,
         Typeset`skipInitDone$$}, "Body" :> Show[{
         DateListPlot[{$CellContext`min$17572, $CellContext`max$17572, \
$CellContext`close$17572, 
           $CellContext`dateFormLinearModel$17572[0], 
           $CellContext`dateFormLinearModel$17572[$CellContext`o$$], 
           $CellContext`horizonLine$17572[$CellContext`v$$]}, Filling -> 
          Bottom, Joined -> True, PlotLabel -> 
          Row[{"Voxeljet", " (", 8, " weeks range)"}], 
          PlotRange -> {{Automatic, $CellContext`dr$17572}, {
            Automatic, $CellContext`vMax$17572 + ($CellContext`vMax$17572 - \
$CellContext`vMin$17572)/3}}]}], 
      "Specifications" :> {{{$CellContext`o$$, -0.5}, -2, 2, Appearance -> 
         "Labeled"}, {{$CellContext`v$$, 41.9}, 19.3, 86.9, Appearance -> 
         "Labeled"}}, "Options" :> {}, "DefaultOptions" :> {}],
     ImageSizeCache->{543., {247., 254.}},
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
  3.595284105881976*^9, 3.5952842020604773`*^9, {3.595284326541597*^9, 
   3.5952843444886236`*^9}, 3.595284745046534*^9}],

Cell[BoxData[
 TagBox[
  StyleBox[
   DynamicModuleBox[{$CellContext`o$$ = -0.5, $CellContext`v$$ = 176.08, 
    Typeset`show$$ = True, Typeset`bookmarkList$$ = {}, 
    Typeset`bookmarkMode$$ = "Menu", Typeset`animator$$, Typeset`animvar$$ = 
    1, Typeset`name$$ = "\"untitled\"", Typeset`specs$$ = {{{
       Hold[$CellContext`o$$], -0.5}, -2, 2}, {{
       Hold[$CellContext`v$$], 176.08}, 171.65202196419378`, 
      191.10265934526876`}}, Typeset`size$$ = {480., {166., 174.}}, 
    Typeset`update$$ = 0, Typeset`initDone$$, Typeset`skipInitDone$$ = 
    True, $CellContext`o$17769$$ = 0, $CellContext`v$17770$$ = 0}, 
    DynamicBox[Manipulate`ManipulateBoxes[
     1, StandardForm, 
      "Variables" :> {$CellContext`o$$ = -0.5, $CellContext`v$$ = 176.08}, 
      "ControllerVariables" :> {
        Hold[$CellContext`o$$, $CellContext`o$17769$$, 0], 
        Hold[$CellContext`v$$, $CellContext`v$17770$$, 0]}, 
      "OtherVariables" :> {
       Typeset`show$$, Typeset`bookmarkList$$, Typeset`bookmarkMode$$, 
        Typeset`animator$$, Typeset`animvar$$, Typeset`name$$, 
        Typeset`specs$$, Typeset`size$$, Typeset`update$$, Typeset`initDone$$,
         Typeset`skipInitDone$$}, "Body" :> Show[{
         DateListPlot[{$CellContext`min$17682, $CellContext`max$17682, \
$CellContext`close$17682, 
           $CellContext`dateFormLinearModel$17682[0], 
           $CellContext`dateFormLinearModel$17682[$CellContext`o$$], 
           $CellContext`horizonLine$17682[$CellContext`v$$]}, Filling -> 
          Bottom, Joined -> True, PlotLabel -> 
          Row[{"IBM", " (", 8, " weeks range)"}], 
          PlotRange -> {{Automatic, $CellContext`dr$17682}, {
            Automatic, $CellContext`vMax$17682 + ($CellContext`vMax$17682 - \
$CellContext`vMin$17682)/3}}]}], 
      "Specifications" :> {{{$CellContext`o$$, -0.5}, -2, 2, Appearance -> 
         "Labeled"}, {{$CellContext`v$$, 176.08}, 171.65202196419378`, 
         191.10265934526876`, Appearance -> "Labeled"}}, "Options" :> {}, 
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
  3.595284105881976*^9, 3.5952842020604773`*^9, {3.595284326541597*^9, 
   3.5952843444886236`*^9}, 3.5952847452445455`*^9}],

Cell[BoxData[
 TagBox[
  StyleBox[
   DynamicModuleBox[{$CellContext`o$$ = -0.5, $CellContext`v$$ = 70.23, 
    Typeset`show$$ = True, Typeset`bookmarkList$$ = {}, 
    Typeset`bookmarkMode$$ = "Menu", Typeset`animator$$, Typeset`animvar$$ = 
    1, Typeset`name$$ = "\"untitled\"", Typeset`specs$$ = {{{
       Hold[$CellContext`o$$], -0.5}, -2, 2}, {{
       Hold[$CellContext`v$$], 70.23}, 64.29, 74.15666666666664}}, 
    Typeset`size$$ = {480., {168., 176.}}, Typeset`update$$ = 0, 
    Typeset`initDone$$, Typeset`skipInitDone$$ = 
    True, $CellContext`o$17877$$ = 0, $CellContext`v$17878$$ = 0}, 
    DynamicBox[Manipulate`ManipulateBoxes[
     1, StandardForm, 
      "Variables" :> {$CellContext`o$$ = -0.5, $CellContext`v$$ = 70.23}, 
      "ControllerVariables" :> {
        Hold[$CellContext`o$$, $CellContext`o$17877$$, 0], 
        Hold[$CellContext`v$$, $CellContext`v$17878$$, 0]}, 
      "OtherVariables" :> {
       Typeset`show$$, Typeset`bookmarkList$$, Typeset`bookmarkMode$$, 
        Typeset`animator$$, Typeset`animvar$$, Typeset`name$$, 
        Typeset`specs$$, Typeset`size$$, Typeset`update$$, Typeset`initDone$$,
         Typeset`skipInitDone$$}, "Body" :> Show[{
         DateListPlot[{$CellContext`min$17792, $CellContext`max$17792, \
$CellContext`close$17792, 
           $CellContext`dateFormLinearModel$17792[0], 
           $CellContext`dateFormLinearModel$17792[$CellContext`o$$], 
           $CellContext`horizonLine$17792[$CellContext`v$$]}, Filling -> 
          Bottom, Joined -> True, PlotLabel -> 
          Row[{"Disney", " (", 8, " weeks range)"}], 
          PlotRange -> {{Automatic, $CellContext`dr$17792}, {
            Automatic, $CellContext`vMax$17792 + ($CellContext`vMax$17792 - \
$CellContext`vMin$17792)/3}}]}], 
      "Specifications" :> {{{$CellContext`o$$, -0.5}, -2, 2, Appearance -> 
         "Labeled"}, {{$CellContext`v$$, 70.23}, 64.29, 74.15666666666664, 
         Appearance -> "Labeled"}}, "Options" :> {}, "DefaultOptions" :> {}],
     ImageSizeCache->{543., {247., 254.}},
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
  3.595284105881976*^9, 3.5952842020604773`*^9, {3.595284326541597*^9, 
   3.5952843444886236`*^9}, 3.595284745428556*^9}],

Cell[BoxData[
 GraphicsBox[
  DynamicModuleBox[{System`TradingChartDump`$timestampdepth$18268 = "Full", 
   System`TradingChartDump`$highlightposition$18268 = Automatic, 
   System`TradingChartDump`$maxohlc$18268 = 71.69`4., 
   System`TradingChartDump`$timestampstyle$18268 = Directive[
    GrayLevel[0.75], 
    Opacity[0.25]], System`TradingChartDump`$dates$18268 = CompressedData["
1:eJxN0tlRwzAABFDlIMFZ5XA4bIcck1JogRIoACqml5gZf7wPjd6ndrX379+v
n3kp5XM8i/H8rUtpxvsJr3CDNzi44i0+4BYf8Qt+xR3u8YBP+ANfJ/+/d4bn
eIGXeI2fcYM3OHiH9/iAW3zEb/gdd7jHAz7jC7aH2+TQScgeNhA2EDoJnYTs
YQNhA6GT0EnIHjYQNhA6CZ2E7GEDYQOhh8q/V/69kr1O2R83UUJV
   "], System`TradingChartDump`$visdates$18268 = 
   Dispatch[{
    1 -> "Thu. Sep 05, 2013", 2 -> "Fri. Sep 06, 2013", 3 -> 
     "Mon. Sep 09, 2013", 4 -> "Tue. Sep 10, 2013", 5 -> "Wed. Sep 11, 2013", 
     6 -> "Thu. Sep 12, 2013", 7 -> "Fri. Sep 13, 2013", 8 -> 
     "Mon. Sep 16, 2013", 9 -> "Tue. Sep 17, 2013", 10 -> "Wed. Sep 18, 2013",
      11 -> "Thu. Sep 19, 2013", 12 -> "Fri. Sep 20, 2013", 13 -> 
     "Mon. Sep 23, 2013", 14 -> "Tue. Sep 24, 2013", 15 -> 
     "Wed. Sep 25, 2013", 16 -> "Thu. Sep 26, 2013", 17 -> 
     "Fri. Sep 27, 2013", 18 -> "Mon. Sep 30, 2013", 19 -> 
     "Tue. Oct 01, 2013", 20 -> "Wed. Oct 02, 2013", 21 -> 
     "Thu. Oct 03, 2013", 22 -> "Fri. Oct 04, 2013", 23 -> 
     "Mon. Oct 07, 2013", 24 -> "Tue. Oct 08, 2013", 25 -> 
     "Wed. Oct 09, 2013", 26 -> "Thu. Oct 10, 2013", 27 -> 
     "Fri. Oct 11, 2013", 28 -> "Mon. Oct 14, 2013", 29 -> 
     "Tue. Oct 15, 2013", 30 -> "Wed. Oct 16, 2013", 31 -> 
     "Thu. Oct 17, 2013", 32 -> "Fri. Oct 18, 2013", 33 -> 
     "Mon. Oct 21, 2013", 34 -> "Tue. Oct 22, 2013", 35 -> 
     "Wed. Oct 23, 2013", 36 -> "Thu. Oct 24, 2013", 37 -> 
     "Fri. Oct 25, 2013", 38 -> "Mon. Oct 28, 2013", 39 -> 
     "Tue. Oct 29, 2013", 40 -> "Wed. Oct 30, 2013", 41 -> 
     "Thu. Oct 31, 2013", 42 -> "Fri. Nov 01, 2013", 43 -> 
     "Mon. Nov 04, 2013", 44 -> "Tue. Nov 05, 2013", 45 -> 
     "Wed. Nov 06, 2013", 46 -> "Thu. Nov 07, 2013", 47 -> 
     "Fri. Nov 08, 2013", 48 -> "Mon. Nov 11, 2013", 49 -> 
     "Tue. Nov 12, 2013", 50 -> "Wed. Nov 13, 2013", 51 -> 
     "Thu. Nov 14, 2013", 52 -> "Fri. Nov 15, 2013", 53 -> 
     "Mon. Nov 18, 2013", 54 -> "Tue. Nov 19, 2013", 55 -> 
     "Wed. Nov 20, 2013", 56 -> "Thu. Nov 21, 2013", 57 -> 
     "Fri. Nov 22, 2013", 58 -> "Mon. Nov 25, 2013", 59 -> 
     "Tue. Nov 26, 2013", 60 -> "Wed. Nov 27, 2013", 61 -> 
     "Fri. Nov 29, 2013", 62 -> "Mon. Dec 02, 2013", 63 -> 
     "Tue. Dec 03, 2013", 64 -> "Wed. Dec 04, 2013", 65 -> 
     "Thu. Dec 05, 2013"}, {
     HashTable[
     1, 65, 1, {{11, 29, 47}, {46, 54, 58}, {32}, {}, {9, 12}, {25, 64}, {}, {
       16, 57}, {}, {15}, {45}, {8}, {60}, {}, {}, {55}, {27, 48}, {}, {}, {
       35, 39}, {}, {44}, {26}, {}, {}, {}, {5, 7, 19}, {28, 65}, {43}, {
       1}, {}, {18}, {30}, {14}, {}, {52}, {31}, {40, 42}, {}, {34}, {2, 
       61}, {13}, {4, 20}, {}, {}, {}, {53, 59}, {3, 50}, {}, {22, 36}, {
       24}, {63}, {}, {56}, {}, {21}, {33, 49}, {}, {}, {}, {41, 51}, {10, 
       17}, {23}, {6, 62}, {37, 38}}]}], 
   System`TradingChartDump`$subplotrect$18268, 
   System`TradingChartDump`$subplotpoint$18268, 
   System`TradingChartDump`$ndigits$18268 = 4, 
   System`TradingChartDump`$highlightstyle$18268 = Directive[
    PointSize[0.01], 
    GrayLevel[0]], System`TradingChartDump`$bouncingballstyle$18268 = 
   Directive[
    PointSize[0.01], 
    GrayLevel[0]], System`TradingChartDump`$bouncingballQ$18268 = True, 
   System`TradingChartDump`$timestampQ$18268 = True, 
   System`TradingChartDump`$data$18268 = {{{2013, 9, 5}, {
     61.07, 61.6, 60.96, 61.3, 6356600}}, {{2013, 9, 6}, {
     61.46999999999999, 61.82999999999999, 60.629999999999995`, 61.39, 
      7319400}}, {{2013, 9, 9}, {
     61.599999999999994`, 61.839999999999996`, 61.269999999999996`, 61.59, 
      7224500}}, {{2013, 9, 10}, {
     62.089999999999996`, 62.96999999999999, 61.92999999999999, 62.83, 
      9919600}}, {{2013, 9, 11}, {63.12, 63.94, 62.98, 63.94, 9439700}}, {{
     2013, 9, 12}, {63.8, 66.35, 63.41, 65.49, 22426500}}, {{2013, 9, 13}, {
     65.87, 67.03, 65.5, 66.69, 12718700}}, {{2013, 9, 16}, {
     67.32, 67.65, 66.88, 66.94, 9716500}}, {{2013, 9, 17}, {
     66.83, 67.2, 66.72, 66.98, 6450700}}, {{2013, 9, 18}, {
     66.67, 67.37, 66.21, 67.11, 9865600}}, {{2013, 9, 19}, {
     66.39, 66.5, 65.4, 65.72, 11864800}}, {{2013, 9, 20}, {
     65.61, 65.84, 64.91, 65.01, 29076200}}, {{2013, 9, 23}, {
     65.04, 65.48, 64.68, 64.75, 8286600}}, {{2013, 9, 24}, {
     64.94, 65.16, 64.28, 64.32, 8272800}}, {{2013, 9, 25}, {
     64.42, 64.93, 64.2, 64.45, 7281400}}, {{2013, 9, 26}, {
     64.36, 65.29, 64.25, 65.24, 6971200}}, {{2013, 9, 27}, {
     64.97, 65.44, 64.69, 65.19, 5586000}}, {{2013, 9, 30}, {
     64.73, 64.95, 64.39, 64.49, 7463200}}, {{2013, 10, 1}, {
     64.37, 65.25, 64.36, 64.83, 4881200}}, {{2013, 10, 2}, {
     64.45, 65.34, 64.4, 64.88, 7218800}}, {{2013, 10, 3}, {
     64.72, 64.93, 63.83, 64.02, 7264100}}, {{2013, 10, 4}, {
     64.02, 65.43, 63.97, 65.3, 6546000}}, {{2013, 10, 7}, {
     64.81, 65.31, 64.57, 64.59, 5840900}}, {{2013, 10, 8}, {
     64.52, 64.77, 63.97, 64., 8636300}}, {{2013, 10, 9}, {
     64.02, 64.18, 63.1, 63.59, 8746900}}, {{2013, 10, 10}, {
     64.48, 65.67, 64.29, 65.58, 7676600}}, {{2013, 10, 11}, {
     65.66, 66.59, 65.5, 66.21, 6735000}}, {{2013, 10, 14}, {
     65.88, 66.98, 65.78, 66.83, 6461500}}, {{2013, 10, 15}, {
     66.73, 66.94, 65.93, 66.44, 5943100}}, {{2013, 10, 16}, {
     66.64, 66.86, 66.13, 66.35, 7724800}}, {{2013, 10, 17}, {
     66.19, 66.59, 65.98, 66.42, 6952100}}, {{2013, 10, 18}, {
     66.5, 67.27, 65.99, 67.15, 7587000}}, {{2013, 10, 21}, {
     67.26999999999998, 67.62999999999998, 67.15999999999998, 67.61, 
      4845800}}, {{2013, 10, 22}, {67.94, 69.13, 67.75, 69., 7860700}}, {{
     2013, 10, 23}, {68.81, 69.2, 68.02, 68.12, 5864500}}, {{2013, 10, 24}, {
     68.18, 69.19, 68.02, 69.05, 6045400}}, {{2013, 10, 25}, {
     69.32, 69.87, 68.97, 69.26, 6613300}}, {{2013, 10, 28}, {
     69.35, 69.48, 68.92, 69., 4469200}}, {{2013, 10, 29}, {
     69.12, 69.39, 68.78, 68.92, 4450200}}, {{2013, 10, 30}, {
     69.22, 69.3, 67.93, 68.47, 5816100}}, {{2013, 10, 31}, {
     68.47, 69.3, 68.35, 68.59, 5706100}}, {{2013, 11, 1}, {
     68.71, 69.18, 68.5, 69.01, 5008600}}, {{2013, 11, 4}, {
     69.41, 69.55, 68.41, 68.81, 4790200}}, {{2013, 11, 5}, {
     68.77, 69.06, 68.06, 68.85, 5140600}}, {{2013, 11, 6}, {
     69.18, 69.62, 68.62, 69., 6503200}}, {{2013, 11, 7}, {
     69.34, 69.34, 67.09, 67.15, 10453400}}, {{2013, 11, 8}, {
     66.87, 69.41, 66.72, 68.58, 16182800}}, {{2013, 11, 11}, {
     68.48, 68.74, 68.19, 68.34, 4954000}}, {{2013, 11, 12}, {
     68.33, 68.45, 67.42, 67.77, 6568100}}, {{2013, 11, 13}, {
     67.43, 68.99, 67.3, 68.97, 5681000}}, {{2013, 11, 14}, {
     69.14, 70.15, 69., 70.02, 7246600}}, {{2013, 11, 15}, {
     69.77, 70.17, 69.55, 70., 6184400}}, {{2013, 11, 18}, {
     70.06, 70.09, 69.33, 69.5, 4904400}}, {{2013, 11, 19}, {
     69.49, 69.72, 69.04, 69.12, 4742900}}, {{2013, 11, 20}, {
     69.12, 69.92, 69.08, 69.23, 4726800}}, {{2013, 11, 21}, {
     69.46, 70.01, 69.27, 69.94, 4498300}}, {{2013, 11, 22}, {
     69.95, 70.33, 69.8, 70.2, 4667500}}, {{2013, 11, 25}, {
     70.54, 70.58, 69.6, 69.74, 5830600}}, {{2013, 11, 26}, {
     69.91999999999999, 71.68999999999998, 69.89999999999999, 71.18, 
      8850000}}, {{2013, 11, 27}, {71.21, 71.25, 70.46, 70.77, 5437000}}, {{
     2013, 11, 29}, {71.04, 71.27, 70.39, 70.54, 4801000}}, {{2013, 12, 2}, {
     70.79, 71.31, 70.76, 70.91, 6774600}}, {{2013, 12, 3}, {
     70.22, 70.41, 69.38, 69.9, 8289000}}, {{2013, 12, 4}, {
     69.42, 70.48, 69.32, 69.97, 4883800}}, {{2013, 12, 5}, {
     70.29, 70.68, 70.08, 70.23, 5587000}}}, 
   System`TradingChartDump`$markerstyle$18268 = 1, 
   System`TradingChartDump`$controlmin$18268 = 0.5, 
   System`TradingChartDump`$controlmax$18268 = 65.5, 
   System`TradingChartDump`$datescope$18268 = {"MonthNameShort"}, 
   System`TradingChartDump`$aspectratio$18268 = GoldenRatio^(-1), 
   System`TradingChartDump`$min$18268, System`TradingChartDump`$max$18268, 
   System`TradingChartDump`$ohlclabel$18268 = Grid[{{
      Style["O: ", 12, 
       Directive["GraphicsFrame", "GraphicsFrameTicks", "GraphicsLabel", {
         Directive[], 
         Directive[]}, {
         Directive[], 
         Directive[]}, {
         Directive[], 
         Directive[]}], FontFamily -> "Times", LineBreakWithin -> False], 
      Style[
       Dynamic[
        ReplaceAll[
        System`TradingChartDump`$indicatorpos$18268, 
         System`TradingChartDump`$opens$18268]], 12, 
       Directive["GraphicsFrame", "GraphicsFrameTicks", "GraphicsLabel", {
         Directive[], 
         Directive[]}, {
         Directive[], 
         Directive[]}, {
         Directive[], 
         Directive[]}], FontFamily -> "Times"], 
      Style["H: ", 12, 
       Directive["GraphicsFrame", "GraphicsFrameTicks", "GraphicsLabel", {
         Directive[], 
         Directive[]}, {
         Directive[], 
         Directive[]}, {
         Directive[], 
         Directive[]}], FontFamily -> "Times", LineBreakWithin -> False], 
      Style[
       Dynamic[
        ReplaceAll[
        System`TradingChartDump`$indicatorpos$18268, 
         System`TradingChartDump`$highs$18268]], 12, 
       Directive["GraphicsFrame", "GraphicsFrameTicks", "GraphicsLabel", {
         Directive[], 
         Directive[]}, {
         Directive[], 
         Directive[]}, {
         Directive[], 
         Directive[]}], FontFamily -> "Times"], 
      Style["L: ", 12, 
       Directive["GraphicsFrame", "GraphicsFrameTicks", "GraphicsLabel", {
         Directive[], 
         Directive[]}, {
         Directive[], 
         Directive[]}, {
         Directive[], 
         Directive[]}], FontFamily -> "Times", LineBreakWithin -> False], 
      Style[
       Dynamic[
        ReplaceAll[
        System`TradingChartDump`$indicatorpos$18268, 
         System`TradingChartDump`$lows$18268]], 12, 
       Directive["GraphicsFrame", "GraphicsFrameTicks", "GraphicsLabel", {
         Directive[], 
         Directive[]}, {
         Directive[], 
         Directive[]}, {
         Directive[], 
         Directive[]}], FontFamily -> "Times"], 
      Style["C: ", 12, 
       Directive["GraphicsFrame", "GraphicsFrameTicks", "GraphicsLabel", {
         Directive[], 
         Directive[]}, {
         Directive[], 
         Directive[]}, {
         Directive[], 
         Directive[]}], FontFamily -> "Times", LineBreakWithin -> False], 
      Style[
       Dynamic[
        ReplaceAll[
        System`TradingChartDump`$indicatorpos$18268, 
         System`TradingChartDump`$closes$18268]], 12, 
       Directive["GraphicsFrame", "GraphicsFrameTicks", "GraphicsLabel", {
         Directive[], 
         Directive[]}, {
         Directive[], 
         Directive[]}, {
         Directive[], 
         Directive[]}], FontFamily -> "Times"], 
      Style[
       Dynamic[
        ReplaceAll[
        System`TradingChartDump`$indicatorpos$18268, 
         System`TradingChartDump`$visdates$18268]], 12, 
       Directive["GraphicsFrame", "GraphicsFrameTicks", "GraphicsLabel", {
         Directive[], 
         Directive[]}, {
         Directive[], 
         Directive[]}, {
         Directive[], 
         Directive[]}], FontFamily -> "Times", LineBreakWithin -> False]}}, 
    ItemSize -> Automatic, Spacings -> {{0, 0, 1, 0, 1, 0, 1, 0, 1, 0}, 0}, 
    Frame -> False], System`TradingChartDump`$ohlcpoint$18268 = {}, 
   System`TradingChartDump`$subpricegridlines$18268 = Automatic, 
   System`TradingChartDump`$overlaypoint$18268, 
   System`TradingChartDump`$overlayvalue$18268, 
   System`TradingChartDump`$subplotvalue$18268, 
   System`TradingChartDump`$opts$18268 = {
   AxesOrigin -> Automatic, GridLinesStyle -> Directive[
      Dashing[{0, Small}], 
      AbsoluteThickness[0.1], 
      GrayLevel[0.5]], FrameLabel -> {None, None}, AlignmentPoint -> Center, 
    AspectRatio -> GoldenRatio^(-1), Axes -> Automatic, AxesLabel -> None, 
    AxesOrigin -> Automatic, AxesStyle -> {}, Background -> None, 
    BaselinePosition -> Automatic, BaseStyle -> {}, ColorOutput -> Automatic, 
    ContentSelectable -> Automatic, CoordinatesToolOptions -> Automatic, 
    DisplayFunction :> $DisplayFunction, Epilog -> {}, FormatType :> 
    TraditionalForm, Frame -> True, FrameLabel -> None, FrameStyle -> {}, 
    FrameTicks -> Automatic, FrameTicksStyle -> {}, GridLines -> Automatic, 
    GridLinesStyle -> {}, ImageMargins -> 0., ImagePadding -> All, ImageSize -> 
    Automatic, ImageSizeRaw -> Automatic, LabelStyle -> {}, Method -> 
    Automatic, PlotLabel -> None, PlotRange -> All, PlotRangeClipping -> 
    False, PlotRangePadding -> Automatic, PlotRegion -> Automatic, 
    PreserveImageOptions -> Automatic, Prolog -> {}, RotateLabel -> True, 
    Ticks -> Automatic, TicksStyle -> {}}, 
   System`TradingChartDump`$candlestickchart$18268 = {{{}, {
     Antialiasing -> Automatic, {
       Directive[
        AbsoluteThickness[1], 
        EdgeForm[], 
        RGBColor[0.5, 0.7, 0]], {{Antialiasing -> False, 
         Directive[
          AbsoluteThickness[1], 
          EdgeForm[]], 
         Line[CompressedData["
1:eJx11T1oU1EUB/BoJ1OHIsEvSvxAoYKKJbWIbc3Vtia1afOhLm3EotShiwYH
NdYah4JKpZNCO4jgxyASRJSKg2AdxK9BCmZwsYsK7dDFj8HBe/8n5/3zHvgg
PH65N/eee87Je5tOnM4N14VCoS77WV79yLUUvxgpJ+aL/Ua9LT85+/Mq/fGD
u+hT7nqgbjCf757pCP+mF7LPo+P1ac+DdrmmUTpcsT8YUUdMh/viEu2m5ydp
u9pC9s//vNYg/Kc04vsW8K2MZ6x/XN0o9yE6OV+MlM/RObfhK9qlp+mRerNx
20fK9LhLwDNa8kdvcBNeqrfI+W/QqMdDGvFUaJe+8Bv1Tll/JY3fr6cXXT3a
AvMb1bvk3kBj/TX0a1eOHI38pdXNko/tNPKxLzCeDziljgX2i8l5a4xbhkZ+
d6tbzPSUvdbR/vO1mF82/NmjNPpnj7pV4vmb9uy2TyzjOPI3SMfcdVi9V/Kz
ikZ9ozTqMUJjeFjdJvchWv4fNOK/T/v7pV36s0DjfOdpf7+1B/ozLuNjNPIx
Qfv3j8t5ptVG+uEyjdsdGvn8RKNeb6suGbPCnfcd/bV2vvWMO88PGv3yXdfb
L/clWupJIx/JrH++UR+o1ptGvetp6Vca9e+sutQlz5fVNPo/Sku/0MjnVl2v
W+4badR3B414eumCm+DFf9Dcs+mo1NE4T3NgvJNGvK0aT8L//LLG/2+GRj8O
cD76x4u/R843l/GMeL/Q6I8458vzQdfr8dfDGu+fJI1+uUbjfFd0vUOy/0ka
4wUa/XqdlnV0vV45TzeN8ydoeT/S+L/063op2S9Lo37HaNSrRKOfRnW9lMR/
lsbzq2Yc8d0MjE+o+4xLz9QFuuiLt0/ev4s06vNe40lLfI9pPM+e0OifORr9
8EKdkffvERr5GqCRr9s06j+WNf8AZvEasQ==
          "]]}, 
        Polygon[CompressedData["
1:eJx1lU1IVFEUgMdspWFFQ0bJhFOCLca0UTGncY75M2MzzU9tYpiKEQxqU7ZR
JqlcDAkpszMSkkJqEeEiikoiwoKQCtIWLdr4iMowguiHiKLevfedOZwOXXiL
7/Lxzr3nnHdede/xfX2lLpfLaz8r7WeF/XwoXDh/IL0U2pYpzH4bicOqlsaZ
lwtfBB9R61oc0Ef++eatd3x9BSyn7nry5QkorRj7dOvrGsFlr6ZOBI8lij7y
788n10bL14EdrTZTQN8t2H7bcuoH+ZwrQZ/nHfobBOv3HU4Wfc6bIGLl3NMD
ScevEqzSUXuDfOQ/g/dGruarIa8ufDsJJee6B9I5r+DNauMB+Zy3wCn3dNi6
jv5WwSpdZU/I5+wz/kb06wQ/f2avKvI5bzfvq0zCcMdUwBesF6zzlSAf+cz9
zOOF2Xqwo+Xcbeg3CNb5ipHPeYfJdzGeX7DOZxP5nP3F+xi/UbDulxbyOTeB
ChcuQb9ZsF+t/eRz3mnq6UG/VbDGPvI5tzrfA/oBwUG1MUY+54C5zyD6uwRj
P6LPuc3UYxT9kGDdTxPkcw6BS63LSXh4Zf7SuAcET1y01xz5yHCorvdoFmBR
5Xve8Scl6358Tz5jC8x5f2G8dsH6PJAq+pzb4aOeVynH3y1Y17uDfMbZTtPv
HseflPzdnmazNeQztjpNPX0Yr0twv9oA8jl3mX5tQL9bsJ6HzeQzzobN93YH
8y1Z90sN+YytiMnXa8x3j2AzD8hnnO0B/b+JYL4k6/sMk8/Ycrgf77tHsK73
WfIZZ6PmvmGMJ1l/z3HyGVtRU6+DGC8mWPfjEPmMszEzr4Yw3n949B+/yHtB
ndbKoS9Z1+Mp+YytODxSv9ubeN6EYD2PZsjnnDDzIJ2CxRdL8ejqpGBd79Pk
I/8FlyuxDg==
         "]]}}, {
       Directive[
        AbsoluteThickness[1], 
        EdgeForm[], 
        RGBColor[0.7, 0.1, 0]], {{Antialiasing -> False, 
         Directive[
          AbsoluteThickness[1], 
          EdgeForm[]], 
         Line[CompressedData["
1:eJx11U1oE1EQB/CoBzV6ESKISGvBj/qBWoOo1YRna01oNNnth7Q1qCi2NxsP
ItpLQAIexIIH0dKCtAqCEOjJHnqKeBAtKAgFbx5tvHjQix7c9583++8uuBCW
X2b37cy8yabt2njfjXWJRCIbfNa6jztMJZNcnvOKRt230FJrztMbl+cqmRX6
0mTjV/uieoMJVJ6cpX/4wQIf6KZ1k/6IQ73T2Ki/4IUuY3166llwfKdT9dy3
e1/UeyQ+TNtw6iaN03N6n33AU3W7Sdr6Oulbth+G/h2U17hN28uTY+r9Uu8B
GqcjdKst7zL91varS31Q+r2FRn0pGvn10ujPafVRqWcbbcPlVnrJtnvV9cjn
kPqYrL9SCh08vJ5bwzjqO0UjvfD+45LvLhr92k2/sAPWH3NafULq+VsKLWfG
kU9HzG3qk1Lfw1Jomb+YN/H6aH0ZiU/QyGc65kUa/aurszK/D+hRezyhMS9v
aOzXK+fqGZePHzpvv1hPo77ztPRP3SX7kaUxvx6N9e7Q2K8B50S3mbBfdNI4
GVrml0Z9F3W9bpnfDjqyXmDUO0Qjn5yud1b6/8cLjXpaGE/bo9+Pxou6Xo/M
73Y62p8euf967PoR9TnJZy8dqV/jYzTyLWg+OZn3d15ovI/ee9H4oP8f52W+
NtOIb6Xxez5MYz+0P9W89PurFxrt/Uljfnbwetyu61d7xYM0zldp5FOj0d/7
mk/Bvc/o6P4W3PuYRj1X1BdknkZpxMdp5PeSxvNm1UVjx70yQ+Px8zROn2LX
L2k9Rfd/QEfWr7r1PsfiDXVJfv9DNPb/Lo15m6LRj0fOwf8M6qvR2N9Vcczb
axrPf+ybf9Mr9kk=
          "]]}, 
        Polygon[CompressedData["
1:eJx11U1oE0EUwPGNSsV4ElKFIkkrVFNt67et2ugzsdnQ2M1uqR5qULeg0out
XtR6EJGgpxY8BBUVbBQ8BQIeKvQgURCpgoqQk+AiglIvBetBFN2d6Zvh5enC
Hn7l39nZyWvaMjw6cHKpYRgx/17m30v8+/uL2d72jl/7j05WF+IzFjSsbfow
8jUE9R6YjhbmKhZgj/756fO64uoGeCUu7Fcwf3P8X5jVPfr3/LlV2ZUxiJRN
b/y9DaFr6fND483MebEfW/XoPxeeXH9YaIW24Ac3sV/PHCwXOaN76g1QK40l
wqexjzOfTYRrJdA9dRs8W4jnJ5PYb2Q2gmuL7qk3yffpwb6dWZxHRPfoyzP5
5++qWyFWmHOmO224kirt7UhsYw6Wy8d0T71DnofqdzL7Kpsh3VPvggf+cdW2
Y9/F/MM/jmqr7qm75Hot2Hczi/MydE/drfYj+93Mct5yqqfukedVxj7BLD6P
O7bqqRNy3h5hv4/5VHAVdY+GY53DI+6BxfNy4On9t3eL97gzwQstd1RPnZTz
MIg9t5hXW/fEXlLu58hiH00xi+MG3RO7KbkfE5/HfSnY0B7dE3spOW8WPu/g
vx2t69FuL4SDP9ghfB43nif21Gk5D1nsuen71tlLy3k+jPs1mW/f8q+Xtuqp
TTlvUewzzGK9Rkf1xG4GRN6I++UWH8e8rXrqPnkeV7HnFu97wlE9sdcnv0+O
436zzDgP2FMfkt+XU9j3M4v1RnVP3Q/BOI+9xt5iFo+r6J7YteTzqvi+//FU
Xa+ck/M4gT23+Lwv6h7dvHlN5bH/f0Csd8OBj2++WNkct5iHCd2j/wJuRkfJ

         "]]}}, {
       EdgeForm[
        Thickness[0.001]], {Antialiasing -> False, 
        Directive[
         AbsoluteThickness[1], 
         EdgeForm[]], 
        Line[{}]}, 
       Polygon[{}]}}, {}, {}}, {}, {}}, 
   System`TradingChartDump`$indicatorpos$18268 = 
   System`TradingChartDump`$staticindicatorpos$18268, 
   System`TradingChartDump`$length$18268 = 65, 
   System`TradingChartDump`$gridlinesflag$18268 = True, 
   System`TradingChartDump`$opens$18268 = 
   Dispatch[{
    1 -> 61.07`4., 2 -> 61.47`4., 3 -> 61.6`4., 4 -> 62.09`4., 5 -> 63.12`4., 
     6 -> 63.8`4., 7 -> 65.87`4., 8 -> 67.32`4., 9 -> 66.83`4., 10 -> 
     66.67`4., 11 -> 66.39`4., 12 -> 65.61`4., 13 -> 65.04`4., 14 -> 64.94`4.,
      15 -> 64.42`4., 16 -> 64.36`4., 17 -> 64.97`4., 18 -> 64.73`4., 19 -> 
     64.37`4., 20 -> 64.45`4., 21 -> 64.72`4., 22 -> 64.02`4., 23 -> 64.81`4.,
      24 -> 64.52`4., 25 -> 64.02`4., 26 -> 64.48`4., 27 -> 65.66`4., 28 -> 
     65.88`4., 29 -> 66.73`4., 30 -> 66.64`4., 31 -> 66.19`4., 32 -> 66.5`4., 
     33 -> 67.27`4., 34 -> 67.94`4., 35 -> 68.81`4., 36 -> 68.18`4., 37 -> 
     69.32`4., 38 -> 69.35`4., 39 -> 69.12`4., 40 -> 69.22`4., 41 -> 68.47`4.,
      42 -> 68.71`4., 43 -> 69.41`4., 44 -> 68.77`4., 45 -> 69.18`4., 46 -> 
     69.34`4., 47 -> 66.87`4., 48 -> 68.48`4., 49 -> 68.33`4., 50 -> 67.43`4.,
      51 -> 69.14`4., 52 -> 69.77`4., 53 -> 70.06`4., 54 -> 69.49`4., 55 -> 
     69.12`4., 56 -> 69.46`4., 57 -> 69.95`4., 58 -> 70.54`4., 59 -> 69.92`4.,
      60 -> 71.21`4., 61 -> 71.04`4., 62 -> 70.79`4., 63 -> 70.22`4., 64 -> 
     69.42`4., 65 -> 70.29`4.}, {
     HashTable[
     1, 65, 1, {{11, 29, 47}, {46, 54, 58}, {32}, {}, {9, 12}, {25, 64}, {}, {
       16, 57}, {}, {15}, {45}, {8}, {60}, {}, {}, {55}, {27, 48}, {}, {}, {
       35, 39}, {}, {44}, {26}, {}, {}, {}, {5, 7, 19}, {28, 65}, {43}, {
       1}, {}, {18}, {30}, {14}, {}, {52}, {31}, {40, 42}, {}, {34}, {2, 
       61}, {13}, {4, 20}, {}, {}, {}, {53, 59}, {3, 50}, {}, {22, 36}, {
       24}, {63}, {}, {56}, {}, {21}, {33, 49}, {}, {}, {}, {41, 51}, {10, 
       17}, {23}, {6, 62}, {37, 38}}]}], 
   System`TradingChartDump`$highs$18268 = 
   Dispatch[{
    1 -> 61.6`4., 2 -> 61.83`4., 3 -> 61.84`4., 4 -> 62.97`4., 5 -> 63.94`4., 
     6 -> 66.35`4., 7 -> 67.03`4., 8 -> 67.65`4., 9 -> 67.2`4., 10 -> 
     67.37`4., 11 -> 66.5`4., 12 -> 65.84`4., 13 -> 65.48`4., 14 -> 65.16`4., 
     15 -> 64.93`4., 16 -> 65.29`4., 17 -> 65.44`4., 18 -> 64.95`4., 19 -> 
     65.25`4., 20 -> 65.34`4., 21 -> 64.93`4., 22 -> 65.43`4., 23 -> 65.31`4.,
      24 -> 64.77`4., 25 -> 64.18`4., 26 -> 65.67`4., 27 -> 66.59`4., 28 -> 
     66.98`4., 29 -> 66.94`4., 30 -> 66.86`4., 31 -> 66.59`4., 32 -> 67.27`4.,
      33 -> 67.63`4., 34 -> 69.13`4., 35 -> 69.2`4., 36 -> 69.19`4., 37 -> 
     69.87`4., 38 -> 69.48`4., 39 -> 69.39`4., 40 -> 69.3`4., 41 -> 69.3`4., 
     42 -> 69.18`4., 43 -> 69.55`4., 44 -> 69.06`4., 45 -> 69.62`4., 46 -> 
     69.34`4., 47 -> 69.41`4., 48 -> 68.74`4., 49 -> 68.45`4., 50 -> 68.99`4.,
      51 -> 70.15`4., 52 -> 70.17`4., 53 -> 70.09`4., 54 -> 69.72`4., 55 -> 
     69.92`4., 56 -> 70.01`4., 57 -> 70.33`4., 58 -> 70.58`4., 59 -> 71.69`4.,
      60 -> 71.25`4., 61 -> 71.27`4., 62 -> 71.31`4., 63 -> 70.41`4., 64 -> 
     70.48`4., 65 -> 70.68`4.}, {
     HashTable[
     1, 65, 1, {{11, 29, 47}, {46, 54, 58}, {32}, {}, {9, 12}, {25, 64}, {}, {
       16, 57}, {}, {15}, {45}, {8}, {60}, {}, {}, {55}, {27, 48}, {}, {}, {
       35, 39}, {}, {44}, {26}, {}, {}, {}, {5, 7, 19}, {28, 65}, {43}, {
       1}, {}, {18}, {30}, {14}, {}, {52}, {31}, {40, 42}, {}, {34}, {2, 
       61}, {13}, {4, 20}, {}, {}, {}, {53, 59}, {3, 50}, {}, {22, 36}, {
       24}, {63}, {}, {56}, {}, {21}, {33, 49}, {}, {}, {}, {41, 51}, {10, 
       17}, {23}, {6, 62}, {37, 38}}]}], System`TradingChartDump`$lows$18268 =
    Dispatch[{
    1 -> 60.96`4., 2 -> 60.63`4., 3 -> 61.27`4., 4 -> 61.93`4., 5 -> 62.98`4.,
      6 -> 63.41`4., 7 -> 65.5`4., 8 -> 66.88`4., 9 -> 66.72`4., 10 -> 
     66.21`4., 11 -> 65.4`4., 12 -> 64.91`4., 13 -> 64.68`4., 14 -> 64.28`4., 
     15 -> 64.2`4., 16 -> 64.25`4., 17 -> 64.69`4., 18 -> 64.39`4., 19 -> 
     64.36`4., 20 -> 64.4`4., 21 -> 63.83`4., 22 -> 63.97`4., 23 -> 64.57`4., 
     24 -> 63.97`4., 25 -> 63.1`4., 26 -> 64.29`4., 27 -> 65.5`4., 28 -> 
     65.78`4., 29 -> 65.93`4., 30 -> 66.13`4., 31 -> 65.98`4., 32 -> 65.99`4.,
      33 -> 67.16`4., 34 -> 67.75`4., 35 -> 68.02`4., 36 -> 68.02`4., 37 -> 
     68.97`4., 38 -> 68.92`4., 39 -> 68.78`4., 40 -> 67.93`4., 41 -> 68.35`4.,
      42 -> 68.5`4., 43 -> 68.41`4., 44 -> 68.06`4., 45 -> 68.62`4., 46 -> 
     67.09`4., 47 -> 66.72`4., 48 -> 68.19`4., 49 -> 67.42`4., 50 -> 67.3`4., 
     51 -> 69.`4., 52 -> 69.55`4., 53 -> 69.33`4., 54 -> 69.04`4., 55 -> 
     69.08`4., 56 -> 69.27`4., 57 -> 69.8`4., 58 -> 69.6`4., 59 -> 69.9`4., 
     60 -> 70.46`4., 61 -> 70.39`4., 62 -> 70.76`4., 63 -> 69.38`4., 64 -> 
     69.32`4., 65 -> 70.08`4.}, {
     HashTable[
     1, 65, 1, {{11, 29, 47}, {46, 54, 58}, {32}, {}, {9, 12}, {25, 64}, {}, {
       16, 57}, {}, {15}, {45}, {8}, {60}, {}, {}, {55}, {27, 48}, {}, {}, {
       35, 39}, {}, {44}, {26}, {}, {}, {}, {5, 7, 19}, {28, 65}, {43}, {
       1}, {}, {18}, {30}, {14}, {}, {52}, {31}, {40, 42}, {}, {34}, {2, 
       61}, {13}, {4, 20}, {}, {}, {}, {53, 59}, {3, 50}, {}, {22, 36}, {
       24}, {63}, {}, {56}, {}, {21}, {33, 49}, {}, {}, {}, {41, 51}, {10, 
       17}, {23}, {6, 62}, {37, 38}}]}], 
   System`TradingChartDump`$closes$18268 = 
   Dispatch[{
    1 -> 61.3`4., 2 -> 61.39`4., 3 -> 61.59`4., 4 -> 62.83`4., 5 -> 63.94`4., 
     6 -> 65.49`4., 7 -> 66.69`4., 8 -> 66.94`4., 9 -> 66.98`4., 10 -> 
     67.11`4., 11 -> 65.72`4., 12 -> 65.01`4., 13 -> 64.75`4., 14 -> 64.32`4.,
      15 -> 64.45`4., 16 -> 65.24`4., 17 -> 65.19`4., 18 -> 64.49`4., 19 -> 
     64.83`4., 20 -> 64.88`4., 21 -> 64.02`4., 22 -> 65.3`4., 23 -> 64.59`4., 
     24 -> 64.`4., 25 -> 63.59`4., 26 -> 65.58`4., 27 -> 66.21`4., 28 -> 
     66.83`4., 29 -> 66.44`4., 30 -> 66.35`4., 31 -> 66.42`4., 32 -> 67.15`4.,
      33 -> 67.61`4., 34 -> 69.`4., 35 -> 68.12`4., 36 -> 69.05`4., 37 -> 
     69.26`4., 38 -> 69.`4., 39 -> 68.92`4., 40 -> 68.47`4., 41 -> 68.59`4., 
     42 -> 69.01`4., 43 -> 68.81`4., 44 -> 68.85`4., 45 -> 69.`4., 46 -> 
     67.15`4., 47 -> 68.58`4., 48 -> 68.34`4., 49 -> 67.77`4., 50 -> 68.97`4.,
      51 -> 70.02`4., 52 -> 70.`4., 53 -> 69.5`4., 54 -> 69.12`4., 55 -> 
     69.23`4., 56 -> 69.94`4., 57 -> 70.2`4., 58 -> 69.74`4., 59 -> 71.18`4., 
     60 -> 70.77`4., 61 -> 70.54`4., 62 -> 70.91`4., 63 -> 69.9`4., 64 -> 
     69.97`4., 65 -> 70.23`4.}, {
     HashTable[
     1, 65, 1, {{11, 29, 47}, {46, 54, 58}, {32}, {}, {9, 12}, {25, 64}, {}, {
       16, 57}, {}, {15}, {45}, {8}, {60}, {}, {}, {55}, {27, 48}, {}, {}, {
       35, 39}, {}, {44}, {26}, {}, {}, {}, {5, 7, 19}, {28, 65}, {43}, {
       1}, {}, {18}, {30}, {14}, {}, {52}, {31}, {40, 42}, {}, {34}, {2, 
       61}, {13}, {4, 20}, {}, {}, {}, {53, 59}, {3, 50}, {}, {22, 36}, {
       24}, {63}, {}, {56}, {}, {21}, {33, 49}, {}, {}, {}, {41, 51}, {10, 
       17}, {23}, {6, 62}, {37, 38}}]}], 
   System`TradingChartDump`$fastpos$18268 = True, 
   System`TradingChartDump`$gridlines$18268 = {Automatic, Automatic}, 
   System`TradingChartDump`$subplotgridlines$18268, 
   System`TradingChartDump`$plotrangemin$18268 = 60.077, 
   System`TradingChartDump`$plotrangemax$18268 = 72.79599999999998, 
   System`TradingChartDump`$layoutData$18268, 
   System`TradingChartDump`$gridlinesscope$18268 = {"MonthNameShort"}, 
   System`TradingChartDump`$axes$18268 = {True, True}, 
   System`TradingChartDump`$indicators$18268 = {"SimpleMovingAverage"}, 
   System`TradingChartDump`$mouseQ$18268 = False, 
   System`TradingChartDump`$modelData$18268 = 
   System`TradingChartDump`modelData$18152, 
   System`TradingChartDump`$sy$18268 = Identity, 
   System`TradingChartDump`$isy$18268 = Identity, 
   System`TradingChartDump`$appearance$18268 = Automatic, 
   System`TradingChartDump`$perfgoal$18268 = "Quality", 
   System`TradingChartDump`$axesorigin$18268 = Automatic, 
   System`TradingChartDump`$framestyle$18268 = {
    Directive[], 
    Directive[]}, System`TradingChartDump`$frameticksstyle$18268 = {
    Directive[], 
    Directive[]}, System`TradingChartDump`$labelstyle$18268 = {
    Directive[], 
    Directive[]}, System`TradingChartDump`$tickstextstyle$18268 = {
    Directive[], 
    Directive[]}, System`TradingChartDump`$textstyle$18268 = Directive[
   "GraphicsFrame", "GraphicsFrameTicks", "GraphicsLabel", {
     Directive[], 
     Directive[]}, {
     Directive[], 
     Directive[]}, {
     Directive[], 
     Directive[]}], System`TradingChartDump`$staticindicatorpos$18268, 
   System`TradingChartDump`$newgridlines$18268 = {{{18.5, {}}, {41.5, {}}, {
     61.5, {}}}, FindDivisions[{60.077, #2}, 6]& }, 
   System`TradingChartDump`$defaultframeticksstyle$18268 = 
   "GraphicsFrameTicks", System`TradingChartDump`$defaultlabelstyle$18268 = 
   "GraphicsLabel", System`TradingChartDump`$defaultframestyle$18268 = 
   "GraphicsFrame", System`TradingChartDump`$frame$18268 = True}, {
    DynamicBox[Typeset`ToBoxes[
     If[System`TradingChartDump`$highlightposition$18268 =!= Automatic, 
        System`TradingChartDump`$staticindicatorpos$18268 = 
         Switch[System`TradingChartDump`$highlightposition$18268, 
           Alternatives["Left", Left], 
           Clip[
            Ceiling[System`TradingChartDump`$controlmin$18268], {
            1, System`TradingChartDump`$length$18268}], 
           Alternatives["Right", Right], 
           Clip[
            Ceiling[System`TradingChartDump`$controlmax$18268], {
            1, System`TradingChartDump`$length$18268}], 
           Blank[], 
           Last[
            Flatten[
             Position[System`TradingChartDump`$dates$18268, 
              Charting`nearestDate[System`TradingChartDump`$dates$18268, 
               Take[
                Quiet[
                 Check[
                  DateList[
                   AbsoluteTime[
                   System`TradingChartDump`$highlightposition$18268]], 
                  DateList[
                   Last[System`TradingChartDump`$dates$18268]]]], 
                Span[1, 3]], 
               DateString[
                Part[
                System`TradingChartDump`$dates$18268, 
                 Floor[System`TradingChartDump`$controlmin$18268] + 1], {
                "Month", "/", "Day", "/", "Year"}], 
               DateString[
                Part[System`TradingChartDump`$dates$18268, 
                 Floor[System`TradingChartDump`$controlmax$18268]], {
                "Month", "/", "Day", "/", "Year"}], Automatic]]]]]; Null]; 
      System`TradingChartDump`$fastpos$18268 = First[
         MousePosition[{"Graphics", Graphics}, {True, 0}]]; 
      System`TradingChartDump`$indicatorpos$18268 = 
       If[System`TradingChartDump`$fastpos$18268 =!= True, 
         System`TradingChartDump`$fastpos$18268 = 
          Clip[System`TradingChartDump`$fastpos$18268, {0, 100}] - 0.5; 
         System`TradingChartDump`$fastpos$18268 = (
             Floor[System`TradingChartDump`$controlmax$18268] - Floor[
             System`TradingChartDump`$controlmin$18268]) 
            System`TradingChartDump`$fastpos$18268/100 + 
           Floor[System`TradingChartDump`$controlmin$18268]; Clip[
           Ceiling[System`TradingChartDump`$fastpos$18268], {
           Floor[System`TradingChartDump`$controlmin$18268] + 1, 
            Floor[System`TradingChartDump`$controlmax$18268]}], 
         System`TradingChartDump`$staticindicatorpos$18268]; 
      System`TradingChartDump`$mouseQ$18268 = Or[
         Not[
          TrueQ[System`TradingChartDump`$fastpos$18268]], 
         System`TradingChartDump`$highlightposition$18268 =!= Automatic]; 
      System`TradingChartDump`$ohlcpoint$18268 = If[
         And[
         System`TradingChartDump`$bouncingballQ$18268, 
          System`TradingChartDump`$mouseQ$18268, 
          System`TradingChartDump`$appearance$18268 =!= None], 
         Dynamic[
          Point[
           FEPrivate`Part[
            System`TradingChartDump`$layoutData$18268["MainChartPoints"], 
            System`TradingChartDump`$indicatorpos$18268]]], {}]; Table[
        With[{System`TradingChartDump`i$ = System`TradingChartDump`l}, 
         System`TradingChartDump`$overlaypoint$18268[
          System`TradingChartDump`i$] = 
         If[System`TradingChartDump`$mouseQ$18268, 
           Dynamic[
            Point[
             FEPrivate`Part[
              System`TradingChartDump`$layoutData$18268[
              "OverlayIndicatorPoints", {System`TradingChartDump`i$}], 
              System`TradingChartDump`$indicatorpos$18268]]], {}]], {
        System`TradingChartDump`l, 
         Length[
          System`TradingChartDump`$layoutData$18268[
          "OverlayIndicatorNames"]]}]; Table[
        With[{System`TradingChartDump`i$ = System`TradingChartDump`i}, 
         Table[
          
          With[{System`TradingChartDump`k$ = System`TradingChartDump`k}, 
           System`TradingChartDump`$overlayvalue$18268[
            System`TradingChartDump`i$, System`TradingChartDump`k$] = 
           If[System`TradingChartDump`$mouseQ$18268, 
             NumberForm[
              Part[
               System`TradingChartDump`$layoutData$18268[
               "OverlayIndicatorValues", {System`TradingChartDump`i$}], 
               System`TradingChartDump`$indicatorpos$18268, 
               System`TradingChartDump`k$], {
              System`TradingChartDump`$ndigits$18268, 2}, 
              NumberPadding -> {" ", "0"}], {}]], {System`TradingChartDump`k, 
           Length[
            System`TradingChartDump`$layoutData$18268[
            "OverlayIndicatorLegends", {System`TradingChartDump`i$}]]}]], {
        System`TradingChartDump`i, 
         Length[
          System`TradingChartDump`$layoutData$18268[
          "OverlayIndicatorNames"]]}]; 
      System`TradingChartDump`$textstyle$18268 = Directive[
         Apply[Sequence, 
          
          DeleteCases[{
           System`TradingChartDump`$defaultframestyle$18268, 
            System`TradingChartDump`$defaultframeticksstyle$18268, 
            System`TradingChartDump`$defaultlabelstyle$18268, 
            System`TradingChartDump`$framestyle$18268, 
            System`TradingChartDump`$frameticksstyle$18268, 
            System`TradingChartDump`$labelstyle$18268}, {}, Infinity]]]; 
      System`TradingChartDump`$tickstextstyle$18268 = Directive[
         Apply[Sequence, 
          
          DeleteCases[{
           System`TradingChartDump`$frameticksstyle$18268, 
            System`TradingChartDump`$labelstyle$18268, 
            System`TradingChartDump`$defaultframeticksstyle$18268, 
            System`TradingChartDump`$defaultlabelstyle$18268}, 
           Directive[], Infinity]]]; 
      System`TradingChartDump`$tickstextstyle$18268 = 
       DeleteCases[
        System`TradingChartDump`$tickstextstyle$18268, "GraphicsFrameTicks", 
         Infinity]; 
      System`TradingChartDump`$tickstextstyle$18268 = 
       DeleteCases[
        System`TradingChartDump`$tickstextstyle$18268, "GraphicsLabel", 
         Infinity]; 
      System`TradingChartDump`$tickstextstyle$18268 = 
       DeleteCases[
        System`TradingChartDump`$tickstextstyle$18268, {}, Infinity]; 
      If[System`TradingChartDump`$tickstextstyle$18268 =!= Directive[], 
        System`TradingChartDump`$tickstextstyle$18268 = 
        Part[System`TradingChartDump`$tickstextstyle$18268, 1], 
        System`TradingChartDump`$tickstextstyle$18268 = {
          Directive[], 
          Directive[]}]; System`TradingChartDump`$overlaylegends = Inset[
         Style[
          Row[
           Table[
            With[{System`TradingChartDump`i$ = System`TradingChartDump`i}, 
             Row[
              Prepend[
               Riffle[
                Table[
                 Row[{
                   Style[
                    Part[
                    System`TradingChartDump`$layoutData$18268[
                    "OverlayIndicatorLegends", {System`TradingChartDump`i$}], 
                    System`TradingChartDump`k], 
                    System`TradingChartDump`$textstyle$18268, FontFamily -> 
                    "Times"], 
                   If[Length[
                    System`TradingChartDump`$layoutData$18268[
                    "OverlayIndicatorParameters", {
                    System`TradingChartDump`i$}]] >= 
                    System`TradingChartDump`k, 
                    If[Length[
                    Flatten[
                    Part[
                    System`TradingChartDump`$layoutData$18268[
                    "OverlayIndicatorParameters", {
                    System`TradingChartDump`i$}], 
                    System`TradingChartDump`k]]] =!= 0, 
                    Style[
                    Row[{"(", 
                    Apply[Sequence, 
                    Riffle[
                    Table[
                    Part[
                    Flatten[
                    Part[
                    System`TradingChartDump`$layoutData$18268[
                    "OverlayIndicatorParameters", {
                    System`TradingChartDump`i$}], System`TradingChartDump`k]],
                     System`TradingChartDump`m], {System`TradingChartDump`m, 
                    Length[
                    Part[
                    System`TradingChartDump`$layoutData$18268[
                    "OverlayIndicatorParameters", {
                    System`TradingChartDump`i$}], 
                    System`TradingChartDump`k]]}], ", "]], ")", ":"}], 
                    System`TradingChartDump`$textstyle$18268, FontFamily -> 
                    "Times"], 
                    Style[":", System`TradingChartDump`$textstyle$18268]], 
                    Style[":", System`TradingChartDump`$textstyle$18268]], 
                   
                   With[{System`TradingChartDump`k$ = 
                    System`TradingChartDump`k}, 
                    Dynamic[
                    Style[
                    System`TradingChartDump`$overlayvalue$18268[
                    System`TradingChartDump`i$, System`TradingChartDump`k$], 
                    System`TradingChartDump`$textstyle$18268]]]}], {
                 System`TradingChartDump`k, 
                  Length[
                   System`TradingChartDump`$layoutData$18268[
                   "OverlayIndicatorLegends", {
                    System`TradingChartDump`i$}]]}], " "], "  "]]], {
            System`TradingChartDump`i, 
             Length[
              System`TradingChartDump`$layoutData$18268[
              "OverlayIndicatorNames"]]}], ImageSize -> {300, Automatic}, 
           ImageMargins -> {{0, 0}, {5, 5}}, Alignment -> {Left, Center}], 
          LineIndent -> 0], 
         Scaled[{0, 1}], {Left, Top}, {
         System`TradingChartDump`$length$18268, Automatic}, Alignment -> Left,
          Background -> System`TradingChartDump`$timestampstyle$18268]; Table[
        With[{System`TradingChartDump`i$ = System`TradingChartDump`i}, 
         Table[
          
          With[{System`TradingChartDump`k$ = System`TradingChartDump`k}, 
           System`TradingChartDump`$subplotvalue$18268[
            System`TradingChartDump`i$, System`TradingChartDump`k$] = 
           If[System`TradingChartDump`$mouseQ$18268, 
             NumberForm[
              Part[
               System`TradingChartDump`$layoutData$18268[
               "SubplotIndicatorValues", {System`TradingChartDump`i$}], 
               System`TradingChartDump`$indicatorpos$18268, 
               System`TradingChartDump`k$], {
              System`TradingChartDump`$ndigits$18268, 2}, 
              NumberPadding -> {" ", "0"}, 
              ExponentFunction -> (If[-3 < # < 3, Null, 3 Quotient[#, 3]]& )], 
             Invisible[
              Part[
               System`TradingChartDump`$layoutData$18268[
               "SubplotIndicatorValues", {System`TradingChartDump`i$}], -1, 
               System`TradingChartDump`k$]]]], {System`TradingChartDump`k, 
           Length[
            System`TradingChartDump`$layoutData$18268[
            "SubplotIndicatorLegends", {System`TradingChartDump`i$}]]}]], {
        System`TradingChartDump`i, 
         Length[
          System`TradingChartDump`$layoutData$18268[
          "SubplotIndicatorNames"]]}]; Table[
        With[{System`TradingChartDump`i$ = System`TradingChartDump`i}, 
         System`TradingChartDump`$layoutData$18268[
           "SubplotPoints", {System`TradingChartDump`i$}] = DeleteCases[
            Part[
             System`TradingChartDump`$layoutData$18268[
             "SubplotIndicatorValues", {System`TradingChartDump`i$}], 
             Span[
              Max[
               Floor[System`TradingChartDump`$controlmin$18268], 1], 
              Floor[System`TradingChartDump`$controlmax$18268]]], "", 
            Infinity]; 
         System`TradingChartDump`$min$18268[System`TradingChartDump`i$] = Min[
            System`TradingChartDump`$layoutData$18268[
            "SubplotPoints", {System`TradingChartDump`i$}]]; 
         System`TradingChartDump`$max$18268[System`TradingChartDump`i$] = Max[
            System`TradingChartDump`$layoutData$18268[
            "SubplotPoints", {System`TradingChartDump`i$}]]; 
         If[
          System`TradingChartDump`$min$18268[System`TradingChartDump`i$] == 
           System`TradingChartDump`$max$18268[System`TradingChartDump`i$] == 
           0., System`TradingChartDump`$min$18268[System`TradingChartDump`i$] = 
            0; System`TradingChartDump`$max$18268[System`TradingChartDump`i$] = 
            1]; If[System`TradingChartDump`$min$18268[
            System`TradingChartDump`i$] == 
           System`TradingChartDump`$max$18268[System`TradingChartDump`i$], 
           System`TradingChartDump`$min$18268[System`TradingChartDump`i$] = 
            System`TradingChartDump`$min$18268[System`TradingChartDump`i$] - 
             0.1 Abs[
               System`TradingChartDump`$min$18268[
               System`TradingChartDump`i$]]; 
           System`TradingChartDump`$max$18268[System`TradingChartDump`i$] = 
            System`TradingChartDump`$max$18268[System`TradingChartDump`i$] + 
             0.1 Abs[
                System`TradingChartDump`$max$18268[
                System`TradingChartDump`i$]]]; 
         System`TradingChartDump`$subplotrect$18268[
           System`TradingChartDump`i$] = If[
            And[
            System`TradingChartDump`$timestampQ$18268, 
             System`TradingChartDump`$mouseQ$18268], 
            
            Rectangle[{
             System`TradingChartDump`$indicatorpos$18268 - 0.5, 
              System`TradingChartDump`$min$18268[System`TradingChartDump`i$] - 
              0.15 Abs[
               System`TradingChartDump`$max$18268[System`TradingChartDump`i$] - 
                System`TradingChartDump`$min$18268[
                System`TradingChartDump`i$]]}, 
             If[System`TradingChartDump`$timestampdepth$18268 === "Full", 
              
              Scaled[{0, 0}, {
               System`TradingChartDump`$indicatorpos$18268 + 0.5, 
                System`TradingChartDump`$max$18268[
                 System`TradingChartDump`i$] + 
                0.5 Abs[
                  System`TradingChartDump`$max$18268[
                    System`TradingChartDump`i$] - 
                   System`TradingChartDump`$min$18268[
                   System`TradingChartDump`i$]]}], 
              Offset[{0, 
                Part[System`TradingChartDump`$timestampdepth$18268, 1]}, {
               System`TradingChartDump`$indicatorpos$18268 + 0.5, 
                System`TradingChartDump`$min$18268[
                 System`TradingChartDump`i$] - 0.15 
                Abs[System`TradingChartDump`$max$18268[
                   System`TradingChartDump`i$] - 
                  System`TradingChartDump`$min$18268[
                  System`TradingChartDump`i$]]}]]], {}]; 
         System`TradingChartDump`$subplotpoint$18268[
           System`TradingChartDump`i$] = 
          If[System`TradingChartDump`$mouseQ$18268, 
            Dynamic[
             Point[
              FEPrivate`Part[
               System`TradingChartDump`$layoutData$18268[
               "SubplotIndicatorPoints", {System`TradingChartDump`i$}], 
               System`TradingChartDump`$indicatorpos$18268]]], {}]; 
         System`TradingChartDump`$subplotgridlines$18268[
           System`TradingChartDump`i$] = Select[
            
            FindDivisions[{
             System`TradingChartDump`$min$18268[System`TradingChartDump`i$] - 
              0.15 Abs[
                System`TradingChartDump`$min$18268[
                System`TradingChartDump`i$]], 
              System`TradingChartDump`$max$18268[System`TradingChartDump`i$] + 
              0.25 Abs[
                 System`TradingChartDump`$max$18268[
                 System`TradingChartDump`i$]]}, 3], 
            System`TradingChartDump`$min$18268[System`TradingChartDump`i$] - 
             0.15 Abs[
               System`TradingChartDump`$min$18268[
               System`TradingChartDump`i$]] < # < 
            System`TradingChartDump`$max$18268[System`TradingChartDump`i$] + 
             0.25 Abs[
                System`TradingChartDump`$max$18268[
                System`TradingChartDump`i$]]& ]; Null], {
        System`TradingChartDump`i, 
         Length[
          System`TradingChartDump`$layoutData$18268[
          "SubplotIndicatorNames"]]}]; 
      System`TradingChartDump`$ohlclabel$18268 = Grid[{{
           Style[
           "O: ", 12, System`TradingChartDump`$textstyle$18268, FontFamily -> 
            "Times", LineBreakWithin -> False], 
           Style[
            Dynamic[
             ReplaceAll[
             System`TradingChartDump`$indicatorpos$18268, 
              System`TradingChartDump`$opens$18268]], 12, 
            System`TradingChartDump`$textstyle$18268, FontFamily -> "Times"], 
           Style[
           "H: ", 12, System`TradingChartDump`$textstyle$18268, FontFamily -> 
            "Times", LineBreakWithin -> False], 
           Style[
            Dynamic[
             ReplaceAll[
             System`TradingChartDump`$indicatorpos$18268, 
              System`TradingChartDump`$highs$18268]], 12, 
            System`TradingChartDump`$textstyle$18268, FontFamily -> "Times"], 
           Style[
           "L: ", 12, System`TradingChartDump`$textstyle$18268, FontFamily -> 
            "Times", LineBreakWithin -> False], 
           Style[
            Dynamic[
             ReplaceAll[
             System`TradingChartDump`$indicatorpos$18268, 
              System`TradingChartDump`$lows$18268]], 12, 
            System`TradingChartDump`$textstyle$18268, FontFamily -> "Times"], 
           Style[
           "C: ", 12, System`TradingChartDump`$textstyle$18268, FontFamily -> 
            "Times", LineBreakWithin -> False], 
           Style[
            Dynamic[
             ReplaceAll[
             System`TradingChartDump`$indicatorpos$18268, 
              System`TradingChartDump`$closes$18268]], 12, 
            System`TradingChartDump`$textstyle$18268, FontFamily -> "Times"], 
           Style[
            Dynamic[
             ReplaceAll[
             System`TradingChartDump`$indicatorpos$18268, 
              System`TradingChartDump`$visdates$18268]], 12, 
            System`TradingChartDump`$textstyle$18268, FontFamily -> "Times", 
            LineBreakWithin -> False]}}, ItemSize -> Automatic, 
         Spacings -> {{0, 0, 1, 0, 1, 0, 1, 0, 1, 0}, 0}, Frame -> False]; {},
       StandardForm, Graphics],
     ImageSizeCache->{{4.503599627370496*^15, -4.503599627370496*^15}, {
      4.503599627370496*^15, -4.503599627370496*^15}},
     TrackedSymbols:>{}], 
    DynamicBox[Typeset`ToBoxes[
      Inset[
       Deploy[
        Graphics[{
          Dynamic[
           If[
            And[
            System`TradingChartDump`$timestampQ$18268, 
             System`TradingChartDump`$mouseQ$18268], {{
             System`TradingChartDump`$timestampstyle$18268, 
              
              Rectangle[{
               System`TradingChartDump`$indicatorpos$18268 - 0.5, 
                System`TradingChartDump`$plotrangemin$18268}, 
               If[System`TradingChartDump`$timestampdepth$18268 === "Full", 
                Scaled[{0, 
                  System`TradingChartDump`$isy$18268[1]}, {
                 System`TradingChartDump`$indicatorpos$18268 + 0.5, 
                  System`TradingChartDump`$plotrangemin$18268}], 
                Offset[{0, 
                  Part[System`TradingChartDump`$timestampdepth$18268, 1]}, {
                 System`TradingChartDump`$indicatorpos$18268 + 0.5, 
                  System`TradingChartDump`$plotrangemin$18268}]]]}}, {}]], 
          System`TradingChartDump`$candlestickchart$18268, {
          System`TradingChartDump`$highlightstyle$18268, 
           Dynamic[System`TradingChartDump`$ohlcpoint$18268]}, 
          Table[
           With[{System`TradingChartDump`i$ = System`TradingChartDump`l}, {
             System`TradingChartDump`$layoutData$18268[
             "OverlayIndicator", {System`TradingChartDump`i$}], {
             System`TradingChartDump`$highlightstyle$18268, 
              Dynamic[
               System`TradingChartDump`$overlaypoint$18268[
               System`TradingChartDump`i$]]}}], {System`TradingChartDump`l, 
            Length[
             System`TradingChartDump`$layoutData$18268[
             "OverlayIndicatorNames"]]}], 
          Dynamic[
           If[
            And[System`TradingChartDump`$mouseQ$18268, Length[
               System`TradingChartDump`$layoutData$18268[
               "OverlayIndicatorNames"]] =!= 0], 
            System`TradingChartDump`$overlaylegends, {}], 
           TrackedSymbols :> {System`TradingChartDump`$mouseQ$18268}]}, 
         PlotLabel -> None, 
         PlotRange -> {{
           Floor[System`TradingChartDump`$controlmin$18268] + 0.5, 
            Floor[System`TradingChartDump`$controlmax$18268] + 0.5}, {
           System`TradingChartDump`$plotrangemin$18268, 
            System`TradingChartDump`$plotrangemax$18268}}, AspectRatio -> 
         Full, Frame -> {
           Switch[
           System`TradingChartDump`$axesorigin$18268, Left, {
            False, System`TradingChartDump`$frame$18268}, 
            Blank[], {System`TradingChartDump`$frame$18268, False}], {
           False, System`TradingChartDump`$frame$18268}}, Axes -> False, 
         FrameTicks -> None, GridLines -> 
         System`TradingChartDump`$newgridlines$18268, 
         ImagePadding -> {{1, 1}, {5, 5}}, PlotRangeClipping -> True, 
         PlotRangePadding -> None, System`TradingChartDump`$opts$18268]], {
       0.5, 0}, {Left, Bottom}, {
       100, System`TradingChartDump`$aspectratio$18268 100}], StandardForm, 
      Graphics],
     ImageSizeCache->{{2.8015075376884604`, 
      415.53182579564486`}, {-138.29265089784423`, 116.78871397313414`}}], 
    TagBox[InsetBox[
      DynamicBox[ToBoxes[
        Graphics[{
          GrayLevel[0.4], 
          AbsoluteThickness[0.5], 
          If[
          System`TradingChartDump`$defaultframestyle$18268 =!= 
           "GraphicsFrame", 
           Part[System`TradingChartDump`$defaultframestyle$18268, 1]], 
          Part[System`TradingChartDump`$framestyle$18268, 1], 
          If[
           Not[
            TrueQ[
             Last[System`TradingChartDump`$axes$18268]]], {}, 
           
           Charting`ScaleAxis[{
            "Line", {{0, System`TradingChartDump`$plotrangemin$18268} -> 
              System`TradingChartDump`$isy$18268[
               System`TradingChartDump`$plotrangemin$18268], {
               0, System`TradingChartDump`$plotrangemax$18268} -> 
              System`TradingChartDump`$isy$18268[
               System`TradingChartDump`$plotrangemax$18268]}}, 
            FindDivisions[{
              System`TradingChartDump`$isy$18268[
              System`TradingChartDump`$plotrangemin$18268], 
              System`TradingChartDump`$isy$18268[
              System`TradingChartDump`$plotrangemax$18268]}, {6}], 
            ScalingFunctions -> {
             System`TradingChartDump`$sy$18268, 
              System`TradingChartDump`$isy$18268}, Charting`LabelSide -> 
            Switch[System`TradingChartDump`$axesorigin$18268, Left, 
              If[
              System`TradingChartDump`$plotrangemax$18268 > 
               System`TradingChartDump`$plotrangemin$18268, Left, Right], 
              Blank[], 
              If[
              System`TradingChartDump`$plotrangemax$18268 > 
               System`TradingChartDump`$plotrangemin$18268, Right, Left]], 
            Charting`TickSide -> 
            Switch[System`TradingChartDump`$axesorigin$18268, Left, 
              If[
              System`TradingChartDump`$plotrangemax$18268 > 
               System`TradingChartDump`$plotrangemin$18268, Left, Right], 
              Blank[], 
              If[
              System`TradingChartDump`$plotrangemax$18268 > 
               System`TradingChartDump`$plotrangemin$18268, Right, Left]], 
            LabelStyle -> 
            Part[System`TradingChartDump`$tickstextstyle$18268, 2], 
            TicksStyle -> 
            Part[System`TradingChartDump`$frameticksstyle$18268, 2], 
            Antialiasing -> False, 
            If[
            System`TradingChartDump`$defaultframeticksstyle$18268 =!= 
             "GraphicsFrameTicks", DefaultTicksStyle -> 
             Part[System`TradingChartDump`$defaultframeticksstyle$18268, 2], 
             DefaultTicksStyle -> 
             System`TradingChartDump`$defaultframeticksstyle$18268], 
            If[
            System`TradingChartDump`$defaultlabelstyle$18268 =!= 
             "GraphicsLabel", DefaultLabelStyle -> 
             Part[System`TradingChartDump`$defaultlabelstyle$18268, 2], 
             DefaultLabelStyle -> 
             System`TradingChartDump`$defaultlabelstyle$18268]]]}, 
         AspectRatio -> Full, ImagePadding -> {{1, 1}, {5, 5}}, 
         PlotRangePadding -> None, PlotRangeClipping -> False, Frame -> False,
          Axes -> False, PlotLabel -> None], TraditionalForm],
       ImageSizeCache->{240., {0., 255.}}], Offset[{-1, 0}, {100.5, 0}], {
      Center, Bottom}, 
      NCache[{Automatic, 100/GoldenRatio}, {Automatic, 61.803398874989476`}]],
     Deploy,
     DefaultBaseStyle->"Deploy"], 
    DynamicBox[Typeset`ToBoxes[
      Table[
       With[{System`TradingChartDump`i$ = System`TradingChartDump`i}, {
         Inset[
          Deploy[
           Graphics[{{System`TradingChartDump`$timestampstyle$18268, 
              Dynamic[
               System`TradingChartDump`$subplotrect$18268[
               System`TradingChartDump`i$]]}, 
             System`TradingChartDump`$layoutData$18268[
             "SubplotIndicator", {System`TradingChartDump`i$}], {
             System`TradingChartDump`$highlightstyle$18268, 
              Dynamic[
               System`TradingChartDump`$subplotpoint$18268[
               System`TradingChartDump`i$]]}, 
             Inset[
              Dynamic[
               If[System`TradingChartDump`$mouseQ$18268, 
                Row[
                 Prepend[
                  Riffle[
                   Table[
                    Row[{
                    Style[
                    Part[
                    System`TradingChartDump`$layoutData$18268[
                    "SubplotIndicatorLegends", {System`TradingChartDump`i$}], 
                    System`TradingChartDump`k], 
                    System`TradingChartDump`$textstyle$18268, FontFamily -> 
                    "Times"], 
                    If[Length[
                    System`TradingChartDump`$layoutData$18268[
                    "SubplotIndicatorParameters", {
                    System`TradingChartDump`i$}]] >= 
                    System`TradingChartDump`k, 
                    If[Length[
                    Flatten[
                    Part[
                    System`TradingChartDump`$layoutData$18268[
                    "SubplotIndicatorParameters", {
                    System`TradingChartDump`i$}], 
                    System`TradingChartDump`k]]] =!= 0, 
                    Style[
                    Row[{"(", 
                    Apply[Sequence, 
                    Riffle[
                    Table[
                    Part[
                    Flatten[
                    Part[
                    System`TradingChartDump`$layoutData$18268[
                    "SubplotIndicatorParameters", {
                    System`TradingChartDump`i$}], System`TradingChartDump`k]],
                     System`TradingChartDump`m], {System`TradingChartDump`m, 
                    Length[
                    Flatten[
                    Part[
                    System`TradingChartDump`$layoutData$18268[
                    "SubplotIndicatorParameters", {
                    System`TradingChartDump`i$}], 
                    System`TradingChartDump`k]]]}], ", "]], ")", ":"}], 
                    System`TradingChartDump`$textstyle$18268], 
                    Style[":", System`TradingChartDump`$textstyle$18268]], 
                    Style[":", System`TradingChartDump`$textstyle$18268]], 
                    
                    With[{System`TradingChartDump`k$ = 
                    System`TradingChartDump`k}, 
                    Dynamic[
                    Style[
                    System`TradingChartDump`$subplotvalue$18268[
                    System`TradingChartDump`i$, System`TradingChartDump`k$], 
                    System`TradingChartDump`$textstyle$18268]]]}], {
                    System`TradingChartDump`k, 
                    Length[
                    System`TradingChartDump`$layoutData$18268[
                    "SubplotIndicatorLegends", {
                    System`TradingChartDump`i$}]]}], " "], "  "]], ""], 
               TrackedSymbols :> {System`TradingChartDump`$mouseQ$18268}], 
              Scaled[{0, 0.95}], {-1, 1}]}, AspectRatio -> Full, 
            PlotRangeClipping -> True, GridLines -> {
              Part[System`TradingChartDump`$newgridlines$18268, 1], 
              If[
              System`TradingChartDump`$subpricegridlines$18268 === Automatic, 
               System`TradingChartDump`$subplotgridlines$18268[
               System`TradingChartDump`i$], 
               Part[System`TradingChartDump`$newgridlines$18268, 2]]}, Frame -> {
              Switch[
              System`TradingChartDump`$axesorigin$18268, Left, {
               False, System`TradingChartDump`$frame$18268}, 
               Blank[], {System`TradingChartDump`$frame$18268, False}], {
              System`TradingChartDump`$frame$18268, 
               System`TradingChartDump`$frame$18268}}, 
            ImagePadding -> {{1, 1}, {5, 2}}, FrameTicks -> None, Axes -> 
            False, PlotLabel -> None, PlotRangePadding -> None, 
            PlotRange -> {
             Map[Floor, {
                System`TradingChartDump`$controlmin$18268, 
                 System`TradingChartDump`$controlmax$18268}] + 0.5, {
              System`TradingChartDump`$min$18268[System`TradingChartDump`i$] - 
               0.15 Abs[
                System`TradingChartDump`$max$18268[
                  System`TradingChartDump`i$] - 
                 System`TradingChartDump`$min$18268[
                 System`TradingChartDump`i$]], 
               System`TradingChartDump`$max$18268[System`TradingChartDump`i$] + 
               0.5 Abs[
                 System`TradingChartDump`$max$18268[
                   System`TradingChartDump`i$] - 
                  System`TradingChartDump`$min$18268[
                  System`TradingChartDump`i$]]}}, 
            System`TradingChartDump`$opts$18268]], 
          
          Offset[{0, -10}, {
           0.5, -System`TradingChartDump`$aspectratio$18268 100 
            4^(-1) (System`TradingChartDump`i$ - 1)}], {Left, Top}, {
          100, System`TradingChartDump`$aspectratio$18268 100/4}], 
         Deploy[
          Inset[
           Graphics[
            Dynamic[{
              GrayLevel[0.4], 
              AbsoluteThickness[0.1], 
              If[
              System`TradingChartDump`$defaultframestyle$18268 =!= 
               "GraphicsFrame", 
               Part[System`TradingChartDump`$defaultframestyle$18268, 1]], 
              Part[System`TradingChartDump`$framestyle$18268, 1], 
              If[
               Not[
                TrueQ[
                 Last[System`TradingChartDump`$axes$18268]]], {}, 
               
               Charting`ScaleAxis[{
                "Line", {{0, 0} -> 
                  System`TradingChartDump`$min$18268[
                    System`TradingChartDump`i$] - 0.15 
                   Abs[System`TradingChartDump`$max$18268[
                    System`TradingChartDump`i$] - 
                    System`TradingChartDump`$min$18268[
                    System`TradingChartDump`i$]], {0, 1} -> 
                  System`TradingChartDump`$max$18268[
                    System`TradingChartDump`i$] + 
                   0.5 Abs[
                    System`TradingChartDump`$max$18268[
                    System`TradingChartDump`i$] - 
                    System`TradingChartDump`$min$18268[
                    System`TradingChartDump`i$]]}}, {
                 System`TradingChartDump`$subplotgridlines$18268[
                 System`TradingChartDump`i$]}, Charting`LabelSide -> 
                Switch[System`TradingChartDump`$axesorigin$18268, Left, Left, 
                  Blank[], Right], Charting`TickSide -> 
                Switch[System`TradingChartDump`$axesorigin$18268, Left, Left, 
                  Blank[], Right], LabelStyle -> 
                Part[System`TradingChartDump`$tickstextstyle$18268, 2], 
                TicksStyle -> 
                Part[System`TradingChartDump`$frameticksstyle$18268, 2], 
                Antialiasing -> False, 
                If[
                System`TradingChartDump`$defaultframeticksstyle$18268 =!= 
                 "GraphicsFrameTicks", DefaultTicksStyle -> 
                 Part[System`TradingChartDump`$defaultframeticksstyle$18268, 
                   2], DefaultTicksStyle -> 
                 System`TradingChartDump`$defaultframeticksstyle$18268], 
                If[
                System`TradingChartDump`$defaultlabelstyle$18268 =!= 
                 "GraphicsLabel", DefaultLabelStyle -> 
                 Part[System`TradingChartDump`$defaultlabelstyle$18268, 2], 
                 DefaultLabelStyle -> 
                 System`TradingChartDump`$defaultlabelstyle$18268]]]}, 
             TrackedSymbols :> {}], AspectRatio -> Full, 
            ImagePadding -> {{1, 1}, {5, 2}}, PlotRangePadding -> None, 
            PlotRangeClipping -> False, Frame -> False, Axes -> False, 
            PlotLabel -> None], 
           Offset[{-1, -10}, {
             Switch[System`TradingChartDump`$axesorigin$18268, Left, 0.5, 
              Alternatives[Right, Automatic, 
               Blank[]], 100.5], -System`TradingChartDump`$aspectratio$18268 
             100 4^(-1) (System`TradingChartDump`i$ - 1)}], {Center, Top}, {
           Automatic, System`TradingChartDump`$aspectratio$18268 100/4}]]}], {
       System`TradingChartDump`i, 
        Length[
         System`TradingChartDump`$layoutData$18268[
         "SubplotIndicatorNames"]]}], StandardForm, Graphics],
     ImageSizeCache->{{4.503599627370496*^15, -4.503599627370496*^15}, {
      4.503599627370496*^15, -4.503599627370496*^15}},
     TrackedSymbols:>{}], 
    TagBox[InsetBox[
      DynamicBox[ToBoxes[
        If[System`TradingChartDump`$mouseQ$18268, 
         Dynamic[System`TradingChartDump`$ohlclabel$18268], 
         Text[
          Spacer[{1, 11}]]], TraditionalForm],
       ImageSizeCache->{1., {3., 15.}},
       TrackedSymbols:>{System`TradingChartDump`$mouseQ$18268}], NCache[
      Offset[{0, 2}, {0.5, 100/GoldenRatio}], 
       Offset[{0, 2}, {0.5, 61.803398874989476`}]], {Left, Bottom}],
     Deploy,
     DefaultBaseStyle->"Deploy"], 
    TagBox[InsetBox[
      GraphicsBox[
       DynamicBox[Typeset`ToBoxes[{
          GrayLevel[0.1], 
          AbsoluteThickness[0.5], 
          If[
          System`TradingChartDump`$defaultframestyle$18268 =!= 
           "GraphicsFrame", 
           Part[System`TradingChartDump`$defaultframestyle$18268, 2]], 
          Part[System`TradingChartDump`$framestyle$18268, 2], 
          If[
           Not[
            TrueQ[
             First[System`TradingChartDump`$axes$18268]]], {}, 
           Charting`DateAxis[
            Take[
            System`TradingChartDump`$dates$18268, {1, 0} + 
             Map[IntegerPart, {
               System`TradingChartDump`$controlmin$18268, 
                System`TradingChartDump`$controlmax$18268}]], {{{
              IntegerPart[System`TradingChartDump`$controlmin$18268] + 0.5, 
               System`TradingChartDump`$plotrangemin$18268}, {
              1.5 + IntegerPart[System`TradingChartDump`$controlmin$18268], 
               System`TradingChartDump`$plotrangemin$18268}}, {0, 1}}, 
            Charting`DateScope -> System`TradingChartDump`$datescope$18268, 
            Charting`LabelSide -> Right, LabelStyle -> 
            Part[System`TradingChartDump`$tickstextstyle$18268, 1], 
            TicksStyle -> 
            Part[System`TradingChartDump`$frameticksstyle$18268, 1], 
            Antialiasing -> False, 
            If[
            System`TradingChartDump`$defaultlabelstyle$18268 =!= 
             "GraphicsLabel", DefaultLabelStyle -> 
             Part[System`TradingChartDump`$defaultlabelstyle$18268, 1], 
             DefaultLabelStyle -> 
             System`TradingChartDump`$defaultlabelstyle$18268], 
            If[
            System`TradingChartDump`$defaultframeticksstyle$18268 =!= 
             "GraphicsFrameTicks", DefaultTicksStyle -> 
             Part[System`TradingChartDump`$defaultframeticksstyle$18268, 1], 
             DefaultTicksStyle -> 
             System`TradingChartDump`$defaultframeticksstyle$18268]]]}, 
         StandardForm, Graphics],
        ImageSizeCache->{{-0.41421356237310647`, 
         413.4142135623731}, {-43.414213562373114`, -22.646087945164567`}},
        TrackedSymbols:>{}],
       AspectRatio->Full,
       Axes->False,
       Frame->False,
       ImagePadding->{{1, 1}, {0, 0}},
       PlotLabel->None,
       PlotRangeClipping->False,
       PlotRangePadding->None], Offset[{0, 5}, {0.5, 0}], {Left, Center}, {100, 20}],
     Deploy,
     DefaultBaseStyle->"Deploy"]},
   DynamicModuleValues:>{{
     DownValues[System`TradingChartDump`$overlaypoint$18268] = {HoldPattern[
          System`TradingChartDump`$overlaypoint$18268[1]] :> {}}}, {
     DownValues[System`TradingChartDump`$overlayvalue$18268] = {HoldPattern[
          System`TradingChartDump`$overlayvalue$18268[1, 1]] :> {}}}, {
     DownValues[System`TradingChartDump`$layoutData$18268] = {HoldPattern[
          System`TradingChartDump`$layoutData$18268["Adjust"]] :> 0, 
        HoldPattern[
          System`TradingChartDump`$layoutData$18268["AllValues"]] :> {{
          60.96, 61.6, {61.300000000000004`}}, {
          60.629999999999995`, 61.82999999999999, {61.345}}, {
          61.269999999999996`, 61.839999999999996`, {61.427}}, {
          61.92999999999999, 62.96999999999999, {61.778}}, {
          62.98, 63.94, {62.21}}, {63.41, 66.35, {62.757}}, {
          65.5, 67.03, {63.319}}, {66.88, 67.65, {63.771}}, {
          66.72, 67.2, {64.128}}, {66.21, 67.37, {64.426}}, {
          65.4, 66.5, {64.544}}, {64.91, 65.84, {64.58200000000001}}, {
          64.68, 65.48, {64.595}}, {64.28, 65.16, {64.57600000000001}}, {
          64.2, 64.93, {64.801}}, {64.25, 65.29, {65.07600000000001}}, {
          64.69, 65.44, {65.333}}, {64.39, 64.95, {65.45100000000001}}, {
          64.36, 65.25, {65.515}}, {64.4, 65.34, {65.471}}, {
          63.83, 64.93, {65.281}}, {63.97, 65.43, {65.164}}, {
          64.57, 65.31, {64.993}}, {63.97, 64.77, {64.771}}, {
          63.1, 64.18, {64.619}}, {64.29, 65.67, {64.659}}, {
          65.5, 66.59, {64.764}}, {65.78, 66.98, {64.943}}, {
          65.93, 66.94, {65.08500000000001}}, {66.13, 66.86, {65.164}}, {
          65.98, 66.59, {65.252}}, {65.99, 67.27, {65.44200000000001}}, {
          67.15999999999998, 67.62999999999998, {65.641}}, {
          67.75, 69.13, {65.935}}, {68.02, 69.2, {66.228}}, {
          68.02, 69.19, {66.496}}, {68.97, 69.87, {66.82900000000001}}, {
          68.92, 69.48, {67.186}}, {68.78, 69.39, {67.56700000000001}}, {
          67.93, 69.3, {67.774}}, {68.35, 69.3, {67.944}}, {
          68.5, 69.18, {68.099}}, {68.41, 69.55, {68.269}}, {
          68.06, 69.06, {68.447}}, {68.62, 69.62, {68.631}}, {
          67.09, 69.34, {68.631}}, {66.72, 69.41, {68.70100000000001}}, {
          68.19, 68.74, {68.654}}, {67.42, 68.45, {68.629}}, {
          67.3, 68.99, {68.623}}, {69., 70.15, {68.677}}, {
          69.55, 70.17, {68.749}}, {69.33, 70.09, {68.79}}, {
          69.04, 69.72, {68.836}}, {69.08, 69.92, {68.882}}, {
          69.27, 70.01, {68.949}}, {69.8, 70.33, {69.048}}, {
          69.6, 70.58, {69.111}}, {
          69.89999999999999, 71.68999999999998, {69.267}}, {
          70.46, 71.25, {69.526}}, {70.39, 71.27, {69.666}}, {
          70.76, 71.31, {69.849}}, {69.38, 70.41, {70.001}}, {
          69.32, 70.48, {70.07300000000001}}, {
          70.08, 70.68, {70.08800000000001}}}, HoldPattern[
          System`TradingChartDump`$layoutData$18268["AppendedAdjust"]] :> 
        0.8787857142857135, HoldPattern[
          System`TradingChartDump`$layoutData$18268["AppendedBox"]] :> {
         52.105, 91.11421428571427}, HoldPattern[
          System`TradingChartDump`$layoutData$18268["AppendedMin"]] :> 
        60.86060714285714, HoldPattern[
          System`TradingChartDump`$layoutData$18268["AppendedRatio"]] :> 1., 
        HoldPattern[
          System`TradingChartDump`$layoutData$18268["AppendedShift"]] :> 0, 
        HoldPattern[
          System`TradingChartDump`$layoutData$18268["ChartStyle"]] :> 1, 
        HoldPattern[
          System`TradingChartDump`$layoutData$18268["Counter"]] :> 0, 
        HoldPattern[
          System`TradingChartDump`$layoutData$18268["DataMax"]] :> 
        71.68999999999998, HoldPattern[
          System`TradingChartDump`$layoutData$18268["DataMin"]] :> 
        60.629999999999995`, HoldPattern[
          System`TradingChartDump`$layoutData$18268[
          "GridLinesPosition"]] :> {}, HoldPattern[
          System`TradingChartDump`$layoutData$18268[
          "MainChartAllValues"]] :> CompressedData["
1:eJxFUk1IVWEQfdUqc1EhWSGmIFgYiLSzrFMRisq9M88eWD4ilAxalBIRan+b
ByWJK0WFIjRXgbQIdBFBRpt4QSIktGuXPws3/UAtuvPN4d0PLt/75s05c+bM
1Pbeyl7bmclk7DubfCMVC63fhyMMtJStzUmE5Z9H8+OzEb7OJZHfESw8cD9G
SHsTI2PnqmCpurCpSwILVyyI540JZqaTc0lgz5ZmwZYmmQ2CrAH2CT4Xk1Mu
zrNXkB9PKh4XHLMfBwUGK6skzyHybMSe94866qT0DnxPY3ww3fulpC/UG2T9
Eep9LDhish8IDJ5/KNht/J+I2xZYN607tHSH/k4rgk/N6rxN6rx/Bf12Dqjj
a9T1Hla8NEN3KdqMqF7xK5G3/DH1K+gvJ+83wQk7q9QB9XefwuRW59T7O8f3
BepT5t1W19GvMNumh9Tn8Uzd1ynFoAVeq/vQre7jRfIV1H0sRu7HRoQQ3ozQ
YzrvxY77E3udSfr7nnNa51yL4v2usY8X4n3foe9XOM92zuWkeF9Z+pEnzyni
hfhcmh/uHnF/uzivJsb3iPt5g7h51n1H/rfcr8X0/4BfESxafz+4J230o1Md
18k53lX2QV+76X9XegcdHen8gs7zxF/nHuS4J5fV97CR9ar4PqPu6xPuxyhx
Be7jTcaHOddHnOME73n1uW1xL79wX1aoZ5X1Z9jPc+p+pfgPtx25cg==
         "], HoldPattern[
          System`TradingChartDump`$layoutData$18268[
          "MainChartPoints"]] :> CompressedData["
1:eJxdkzssQ1EYx29FQkyGSgxNPYI0IlJKVWn79aG31bq3l1VCJAwGrdEjwmBD
N4nGhJikSQdJI2JgEMHc2WRgYCBG5/Q7f4me5Obkd3733O9xzu1YyE4v1mua
FhaPTT11GsZHaEmOc4PUAk2XnbtvJXAjvVti4RHcTE2V01xg2VRsJ/m69QNu
pfztl2t2LqPYQbNy4QLcznwN7qQ2sb18A+4i+fmme3APFfWXdfsK2EWrAZEB
gXt5doP7yF7dAO6n5ycxHGA352eCBzifNHiQfRvYQzI95zB4iOv1gYdJBCvq
NrCXPHLMgEfo2yUidIN9agaPqv6if36Otwg/RrLc3D54nP0lOMD5H4ODVD3P
Q3CINmRDCmCiwpEYD4q3ifv9Ch/mmSzlw5SQBTYo1iJcXxQ+wueRgY/W7I9y
fD98jM/TCR9T/YGfUOcLP0FnIr2KBz7O9Xnh4//jaXpNfTr36+/7CY7Xgv0J
Pr9P1J/k/ILwSfY72D+p1uEVz8OnuF86fIrvtwGf5vPahE/z/dyDn+L7l4Wf
UvcD3uB8SvAG3YnX8yfwJv+fV/Am92MNPsP1bSkW/1E1vwOLfgEzzPxI
         "], HoldPattern[
          System`TradingChartDump`$layoutData$18268["NewOverlay"]] :> {
          FinancialIndicator["SimpleMovingAverage", 14]}, HoldPattern[
          System`TradingChartDump`$layoutData$18268["NewSubplot"]] :> {}, 
        HoldPattern[
          System`TradingChartDump`$layoutData$18268[
          "OverlayIndicator"]] :> {{{{}, {Antialiasing -> False, 
             GrayLevel[0.5], {{}}}, {{
              RGBColor[0.24720000000000014`, 0.24, 0.6], 
              Line[CompressedData["
1:eJxN03lIk3EAxvF5oGIJXpB4lJrHPJv3kc5nTp3HziyFkLClxSRILJXKYE0F
E9IgFCHEP0pTksRqYRQRgWEJIWEoIYVLU8jMykgoo/dle6QXXsZn37378Tve
MOOZQ7XOEolEIdzip/3ayDspXkNaOL5AVffzn9JR2gPpMyaX/oe0N9YME3vb
P9L+aPG/q1oM1DkcAMVtr3PvqulgPLv+9vuLYToU+9o/GyZsdDgsCfOWBA+9
wxGIdLvcowyio+AyFr/xKpyWYvGCMGAkHYueFd+pwCg6Hp/kj83zEXQiNINh
K/IUWmbvBXQS1u/v6tAcoZPhND6SulRFpyBGXJBqOhW2uKe2uGN0Gk7HemX9
MtDp6PJRbzaX0hnY6hzb6syjM/F7zdlYnkRnwXe7f7Q3ms7GRo31SVIsfRA/
mu8dfS+jczBZ2TJZmUPnQu45d7O+kJZjuDV7uHVn/DzoKqaD9utp4M7yVR81
52cGlK8vNTmZ2BW4VZ/rOXeRXYGZxND0ni72fBjLTVOPBtjzUXf+hKuflV2J
+cOBDevT7Er7eEvsBagVpmf5xl6ADy+Ff/jDXoiyTWHCbgZHL8Rob0aRzMdh
SRGMrn7b/cHsRRCX0yRlV+HL/zarsCLudzx7MUJmFSGzMezFaBOWK3vn+RKI
278QzV4Cy5W/2oo49lIIq9m3eoC9FMLbUtWdzF6GBvFApbGXwb1R796Yya5G
3+rXGmsOuxrLC6f2eCvZNdjdIZxYFbsG4vYHGNi1eCAc18Hj7FqIj9+oY9fZ
16+JXYe0JeEXZnY9hN0eH2lzGHoMvbl2dqDdgH/gdwb3
               "]]}}}}}, HoldPattern[
          System`TradingChartDump`$layoutData$18268["OverlayIndicatorCount"]] :> 
        1, HoldPattern[
          System`TradingChartDump`$layoutData$18268[
          "OverlayIndicatorLegends"]] :> {{
           Deploy[
            Row[{
              Style["\[FilledSquare]", 
               RGBColor[0.24720000000000014`, 0.24, 0.6]], " ", "SMA"}]]}}, 
        HoldPattern[
          System`TradingChartDump`$layoutData$18268["OverlayIndicatorNames"]] :> {
          FinancialIndicator["SimpleMovingAverage", 14]}, HoldPattern[
          System`TradingChartDump`$layoutData$18268[
          "OverlayIndicatorParameters"]] :> {{{14}}}, HoldPattern[
          System`TradingChartDump`$layoutData$18268[
          "OverlayIndicatorPoints"]] :> CompressedData["
1:eJxdk3tIU1Ecx5fIGBKxapTNBbbmnI/SaWua033nNuc290qKkCFr9ECJkiCJ
jJhUhIRJ9PCPCovKR4yIKP+IqKjoCdETCZEoiygItZCKCjq3e79BHbhcPufD
/Z3f+Z5zFyW3rFyfqVKpZojHpbwzVByTzo0bxOgPQ5lAvOfmtCVN1mDJxRMT
A8NkLcZM6s4j42QdOnTnfa/1EYWzYe9yJd4lyAbUDX/59XyQnIv+Y7dzL7wh
G/Fi+wezVRNV2IQ8Ud6dQzZDKvfYSLag5eCnnc48ciHE6jt0ZnIxrvfpS8ZM
5KVyvXJyqew9ZCua1lW9iqwil8k+Ti5HgRRIgrwMJ6XyzWQbPPs3vf8RIy/H
E+Po910Bsh1S+W4nuQLPQkntGiu5EqtniYTzySuwIFPMFJKr5DxLyQ5YNWlD
k4NcjZqskdNtXnLNf+s7MX5WBB4lA7A1X/FzfykgR2xH3ULvwpm26qyRDnoX
pPZ7D9DXovLSvfZrffS1OJwtGr5M78ZRtwjkIb1bXu8tvQeDd4L2ril6DxaL
dlt/0nux7ZAoqI4p3ovJAfHBbIVVdfjWKHZkoK/DuamnoaSF3vcvp3zyeRbT
10O6TaMF9PW4K9px/f3ej4XShcin92P+y0dfG4voA5COa6KEPoBb05Z4Txl9
EFKcnTb6II6L6761gr4B0navOugbEO3u3TzHTR/CfZGu3kcfwsyMon3zYvRh
SNdtaC19GH+Oo5U+IufXTh/BZxGHNkUfxUfxt6X3KIwo5u6+8eDU3hh+Aw3Y
Ao8=
         "], HoldPattern[
          System`TradingChartDump`$layoutData$18268[
          "OverlayIndicatorValues"]] :> CompressedData["
1:eJxTTMoPSmVmYGBgBGJHKJ2eBgTL/Bxi+g991Vjj56C7ae775dv8HO6qsDVO
feznUC2yzv2hlL+DeadjwtMEfwe3bZ//Xlnh77Bs9hGFDY/8Ha5WvFQz5Ahw
UAUqd5YOcAApu6AU4JA58W2NvWqAA1B3lYhagMP++VL6d1Wg6oyhfJcAh6gU
6/v+oVB+TICDJsghCQEOC0DK4wIcXLpznv8ODHC4qHT7Z51XgANIea99gMNl
3ySBCMMAhzA+oIvVAxwkWYAsrQCIOw0CHAw51shE2QQ42HFdX1zgitD/eCnQ
4QEBDg6mcbs8gfZJA61hywxwWFJgy3W9OsABZPz0vgAHyy0nyvbND3CYIgE0
eGuAwzRnoENOQ/U9CXBYcczbvPNjgIMy0NisPwEOpZOBCtkCHT4sB0oIBjr8
CAbaJBPosOrjJd8kDQQN9qdOoAMolG5rBjocBxrjCBSXBQWEeqCD+M1z34O1
Ax1A3nqvH+hw+KtGTL9RoAPImY2mgQ5zgMFeZBHoALJ2j02gQ0Dv9Dwh50CH
k0DXSrkHOvAwabeLBQY6gIJtZWKgA9gbWYEQ95UFOnwCOkOgIdDhFTDW1rQE
Ogg3Hzi1sDXQAQATiNpu
         "], HoldPattern[
          System`TradingChartDump`$layoutData$18268["OverlayState"]] :> {
         True}, HoldPattern[
          System`TradingChartDump`$layoutData$18268["OverPara"]] :> {}, 
        HoldPattern[
          System`TradingChartDump`$layoutData$18268["PlotRangeMin"]] :> 
        60.86060714285714, HoldPattern[
          System`TradingChartDump`$layoutData$18268["ScalingFunctions"]] :> {
         Identity, Identity}, HoldPattern[
          System`TradingChartDump`$layoutData$18268["Space"]] :> 
        7.168999999999999, HoldPattern[
          System`TradingChartDump`$layoutData$18268["Style"]] :> 
        RGBColor[0.24720000000000014`, 0.24, 0.6], HoldPattern[
          System`TradingChartDump`$layoutData$18268[
          "SubplotIndicator"]] :> {}, HoldPattern[
          System`TradingChartDump`$layoutData$18268[
          "SubplotIndicatorGridLines"]] :> {}, HoldPattern[
          System`TradingChartDump`$layoutData$18268[
          "SubplotIndicatorLegends"]] :> {}, HoldPattern[
          System`TradingChartDump`$layoutData$18268[
          "SubplotIndicatorNames"]] :> {}, HoldPattern[
          System`TradingChartDump`$layoutData$18268[
          "SubplotIndicatorParameters"]] :> {}, HoldPattern[
          System`TradingChartDump`$layoutData$18268[
          "SubplotIndicatorPoints"]] :> {}, HoldPattern[
          System`TradingChartDump`$layoutData$18268[
          "SubplotIndicatorValues"]] :> {}, HoldPattern[
          System`TradingChartDump`$layoutData$18268["XPosition"]] :> {1, 2, 3,
          4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 
         22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 
         39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 
         56, 57, 58, 59, 60, 61, 62, 63, 64, 65}, HoldPattern[
          System`TradingChartDump`$layoutData$18268["YRange"]] :> 
        71.68999999999998, HoldPattern[
          System`TradingChartDump`$layoutData$18268[
           Pattern[Charting`s$, 
            Blank[]], {
            Pattern[System`InteractiveTradingChartDump`p$, 
             Blank[]]}]] :> Part[
          System`TradingChartDump`$layoutData$18268[Charting`s$], 
          System`InteractiveTradingChartDump`p$], HoldPattern[
          System`TradingChartDump`$layoutData$18268[
           Pattern[Charting`s$, 
            Blank[]], {
             Pattern[System`InteractiveTradingChartDump`p$, 
              Blank[]]} -> Pattern[System`InteractiveTradingChartDump`val$, 
             Blank[]]]] :> (
         System`TradingChartDump`$layoutData$18268[Charting`s$] = ReplacePart[
           System`TradingChartDump`$layoutData$18268[Charting`s$], 
           System`InteractiveTradingChartDump`p$ -> 
           System`InteractiveTradingChartDump`val$])}}},
   Initialization:>{
    System`TradingChartDump`$indicatorpos$18268 = 
      System`TradingChartDump`$length$18268; 
     System`TradingChartDump`$layoutData$18268["ChartStyle"] = 
      System`TradingChartDump`$markerstyle$18268; 
     System`TradingChartDump`$modelData$18268["Data"] = 
      System`TradingChartDump`$data$18268; 
     System`TradingChartDump`$modelData$18268["Indicators"] = 
      System`TradingChartDump`$indicators$18268; 
     System`TradingChartDump`$layoutData$18268["SubplotIndicatorNames"] = {}; 
     System`TradingChartDump`$layoutData$18268["OverlayIndicatorNames"] = {}; 
     System`TradingChartDump`$layoutData$18268["ScalingFunctions"] = {
       System`TradingChartDump`$sy$18268, System`TradingChartDump`$isy$18268}; 
     System`TradingChartDump`$layoutData$18268["SubplotIndicator"] = {}; 
     System`TradingChartDump`$layoutData$18268["SubplotIndicatorPoints"] = {}; 
     System`TradingChartDump`$layoutData$18268[
       "SubplotIndicatorGridLines"] = {}; 
     System`TradingChartDump`$layoutData$18268[
       "SubplotIndicatorLegends"] = {}; 
     System`TradingChartDump`$layoutData$18268["SubplotIndicatorValues"] = {}; 
     System`TradingChartDump`$layoutData$18268[
       "SubplotIndicatorParameters"] = {}; 
     System`TradingChartDump`$layoutData$18268["OverlayIndicator"] = {}; 
     System`TradingChartDump`$layoutData$18268["OverlayIndicatorPoints"] = {}; 
     System`TradingChartDump`$layoutData$18268[
       "OverlayIndicatorLegends"] = {}; 
     System`TradingChartDump`$layoutData$18268["OverlayIndicatorValues"] = {}; 
     System`TradingChartDump`$layoutData$18268[
       "OverlayIndicatorParameters"] = {}; 
     System`TradingChartDump`$layoutData$18268["OverPara"] = {}; 
     System`TradingChartDump`$layoutData$18268["OverlayIndicatorCount"] = 0; 
     Charting`FinancialIndicatorList[
      System`TradingChartDump`$modelData$18268, 
       System`TradingChartDump`$layoutData$18268, 
       System`TradingChartDump`$indicators$18268]; 
     Charting`TradingChartIndicator[
      System`TradingChartDump`$modelData$18268, 
       System`TradingChartDump`$layoutData$18268, "Candlestick"]; ReplaceAll[
       If[
       System`TradingChartDump`$layoutData$18268[
         "OverlayIndicatorNames"] =!= {}, 
        System`TradingChartDump`$layoutData$18268["AllValues"] = ReplaceAll[
          Transpose[
           Join[
            System`TradingChartDump`$layoutData$18268["MainChartAllValues"], 
            System`TradingChartDump`$layoutData$18268[
            "OverlayIndicatorValues"]]], "" -> {}], 
        System`TradingChartDump`$layoutData$18268["AllValues"] = Transpose[
          System`TradingChartDump`$layoutData$18268["MainChartAllValues"]]], 
       "" -> {}]; 
     System`TradingChartDump`$plotrangemin$18268 = (Min[#] - 
       0.05 (Max[#] - Min[#])& )[
        Take[
         System`TradingChartDump`$layoutData$18268["AllValues"], {1, 0} + 
         Map[IntegerPart, {
           System`TradingChartDump`$controlmin$18268, 
            System`TradingChartDump`$controlmax$18268}]]]; 
     System`TradingChartDump`$plotrangemax$18268 = (Max[#] + 
       0.1 (Max[#] - Min[#])& )[
        Take[
         System`TradingChartDump`$layoutData$18268["AllValues"], {1, 0} + 
         Map[IntegerPart, {
           System`TradingChartDump`$controlmin$18268, 
            System`TradingChartDump`$controlmax$18268}]]]; {
       System`TradingChartDump`$plotrangemin$18268, 
        System`TradingChartDump`$plotrangemax$18268} = ReplaceAll[
        System`TradingChartDump`$sy$18268[{
         System`TradingChartDump`$plotrangemin$18268, 
          System`TradingChartDump`$plotrangemax$18268}], Alternatives[
          Blank[Complex], Infinity, -Infinity] -> 
        System`TradingChartDump`$sy$18268[
           Min[System`TradingChartDump`$lows$18268]] - 0.1]; 
     If[System`TradingChartDump`$plotrangemin$18268 == 
       System`TradingChartDump`$plotrangemax$18268, {
        System`TradingChartDump`$plotrangemin$18268, 
         System`TradingChartDump`$plotrangemax$18268} = {
        System`TradingChartDump`$plotrangemin$18268 - 0.5 
         Abs[System`TradingChartDump`$plotrangemin$18268], 
         System`TradingChartDump`$plotrangemax$18268 + 
         0.5 Abs[System`TradingChartDump`$plotrangemax$18268]}]; 
     System`TradingChartDump`$newgridlines$18268 = {{}, {}}; 
     If[System`TradingChartDump`$gridlinesflag$18268, 
       Part[System`TradingChartDump`$newgridlines$18268, 1] = Switch[
          Part[System`TradingChartDump`$gridlines$18268, 1], Automatic, {
           First[System`TradingChartDump`$gridlinesscope$18268], {"Year", 
            Directive[
             Opacity[0.4], 
             Dashing[{}]]}}, 
          Blank[], 
          Part[System`TradingChartDump`$gridlines$18268, 1]]; 
       Part[System`TradingChartDump`$newgridlines$18268, 1] = If[
          And[
          Part[System`TradingChartDump`$newgridlines$18268, 1] =!= None, 
           System`TradingChartDump`$length$18268 > 0], 
          DeleteCases[
           Charting`gridlinesFinder[System`TradingChartDump`$dates$18268, 
            Part[System`TradingChartDump`$newgridlines$18268, 1]], {}], 
          Part[System`TradingChartDump`$newgridlines$18268, 1]]; 
       System`TradingChartDump`$subpricegridlines$18268 = 
        Part[System`TradingChartDump`$gridlines$18268, 2]; 
       Part[System`TradingChartDump`$newgridlines$18268, 2] = 
        If[System`TradingChartDump`$sy$18268 === Identity, 
          
          With[{System`TradingChartDump`minbox$ = 
            System`TradingChartDump`$plotrangemin$18268}, 
           Switch[
            Part[System`TradingChartDump`$gridlines$18268, 2], Automatic, 
            FindDivisions[{System`TradingChartDump`minbox$, #2}, 6]& , 
            Blank[], 
            Part[System`TradingChartDump`$gridlines$18268, 2]]], 
          With[{
           System`TradingChartDump`scy$ = System`TradingChartDump`$sy$18268, 
            System`TradingChartDump`iscy$ = 
            System`TradingChartDump`$isy$18268, 
            System`TradingChartDump`minbox$ = 
            System`TradingChartDump`$plotrangemin$18268}, 
           Switch[
            Part[System`TradingChartDump`$gridlines$18268, 2], Automatic, 
            Map[System`TradingChartDump`scy$, DeleteCases[
              FindDivisions[{
                System`TradingChartDump`iscy$[
                System`TradingChartDump`minbox$], 
                Max[
                 System`TradingChartDump`iscy$[#], 
                 System`TradingChartDump`iscy$[#2]]}, 6], 0]& ], 
            Blank[], 
            Part[System`TradingChartDump`$gridlines$18268, 2]]]]; Null]; 
     System`TradingChartDump`$ndigits$18268 = Last[
         RealDigits[System`TradingChartDump`$maxohlc$18268]] + 2; Null}],
  AlignmentPoint->Center,
  AspectRatio->Automatic,
  Axes->False,
  AxesLabel->None,
  AxesOrigin->Automatic,
  AxesStyle->{},
  Background->None,
  BaseStyle->{},
  BaselinePosition->Automatic,
  ColorOutput->Automatic,
  ContentSelectable->Automatic,
  CoordinatesToolOptions:>Automatic,
  DisplayFunction:>$DisplayFunction,
  Epilog->{},
  FormatType:>TraditionalForm,
  Frame->False,
  FrameLabel->{None, None},
  FrameStyle->{},
  FrameTicks->Automatic,
  FrameTicksStyle->{},
  GridLines->None,
  GridLinesStyle->Directive[
    Dashing[{0, Small}], 
    AbsoluteThickness[0.1], 
    GrayLevel[0.5]],
  ImageMargins->0.,
  ImagePadding->{{2, 50}, {All, All}},
  ImageSize->Automatic,
  ImageSizeRaw->Automatic,
  LabelStyle->{},
  Method->Automatic,
  PlotLabel->None,
  PlotRange->{{0.5, 100}, {All, All}},
  PlotRangeClipping->False,
  PlotRangePadding->Automatic,
  PlotRegion->Automatic,
  PreserveImageOptions->Automatic,
  Prolog->{},
  RotateLabel->True,
  Ticks->Automatic,
  TicksStyle->{}]], "Output",
 CellChangeTimes->{
  3.595284105881976*^9, 3.5952842020604773`*^9, {3.595284326541597*^9, 
   3.5952843444886236`*^9}, 3.5952847458175783`*^9}]
}, Open  ]],

Cell[BoxData[
 RowBox[{"(*", 
  RowBox[{"fDataAndLinearModel", "[", " ", 
   RowBox[{
   "\"\<TOR:CA:CJR.B\>\"", ",", " ", "\"\<Corus\>\"", ",", " ", "52"}], " ", 
   "]"}], "*)"}]], "Input",
 CellChangeTimes->{{3.5941717410478363`*^9, 3.5941718019053173`*^9}, 
   3.5941719678088064`*^9, 3.594218416005674*^9}]
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
Cell[1485, 35, 26217, 586, 3416, "Input"],
Cell[27705, 623, 2549, 49, 519, "Output"],
Cell[30257, 674, 2483, 48, 523, "Output"],
Cell[32743, 724, 2473, 48, 523, "Output"],
Cell[35219, 774, 2547, 49, 519, "Output"],
Cell[37769, 825, 2503, 48, 523, "Output"],
Cell[40275, 875, 84162, 1650, 364, "Output"]
}, Open  ]],
Cell[124452, 2528, 311, 7, 39, "Input"]
}
]
*)

(* End of internal cache information *)

(* NotebookSignature ZuTfU2hsO1xX0Awzp43OMWct *)
