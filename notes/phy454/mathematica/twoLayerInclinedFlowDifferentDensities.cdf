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
NotebookDataLength[    356372,       6881]
NotebookOptionsPosition[    353781,       6784]
NotebookOutlinePosition[    354122,       6799]
CellTagsIndexPosition[    354079,       6796]
WindowFrame->Normal*)

(* Beginning of Notebook Content *)
Notebook[{

Cell[CellGroupData[{
Cell["\<\
Steady state inclined flow down a plane of two layers of incompressible \
viscous fluids\
\>", "Title",
 CellChangeTimes->{3.539811077967225*^9}],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{
  RowBox[{"(*", " ", 
   RowBox[{"physical", " ", "constants"}], " ", "*)"}], "\[IndentingNewLine]", 
  RowBox[{
   RowBox[{"Clear", "[", 
    RowBox[{
    "rho1", ",", " ", "rho2", ",", " ", "mu1", ",", " ", "mu2", ",", " ", "g",
      ",", " ", "pAir"}], "]"}], "\[IndentingNewLine]", 
   RowBox[{"rho1", " ", "=", " ", 
    RowBox[{"ChemicalData", "[", 
     RowBox[{"\"\<Water\>\"", ",", " ", "\"\<Density\>\""}], "]"}]}], 
   "\[IndentingNewLine]", 
   RowBox[{"mu1", " ", "=", " ", 
    RowBox[{"ChemicalData", "[", 
     RowBox[{"\"\<Water\>\"", ",", " ", "\"\<Viscosity\>\""}], "]"}]}], 
   "\[IndentingNewLine]", "\[IndentingNewLine]", 
   RowBox[{"rho2", " ", "=", " ", 
    RowBox[{"ChemicalData", "[", 
     RowBox[{"\"\<DryAir\>\"", ",", " ", "\"\<Density\>\""}], "]"}]}], 
   "\[IndentingNewLine]", 
   RowBox[{"mu2", " ", "=", " ", 
    RowBox[{"ChemicalData", "[", 
     RowBox[{"\"\<DryAir\>\"", ",", " ", "\"\<Viscosity\>\""}], "]"}]}], 
   "\[IndentingNewLine]", "\[IndentingNewLine]", 
   RowBox[{"(*", " ", 
    RowBox[{"air", " ", 
     RowBox[{"pressure", ".", "  ", "Pascals"}]}], " ", "*)"}], 
   "\[IndentingNewLine]", 
   RowBox[{"pAir", " ", "=", " ", 
    RowBox[{"WolframAlpha", "[", 
     RowBox[{"\"\<(convert 1 atm to pascals)/pascals\>\"", ",", " ", 
      RowBox[{"{", 
       RowBox[{
        RowBox[{"{", 
         RowBox[{"\"\<Result\>\"", ",", "1"}], "}"}], ",", 
        "\"\<NumberData\>\""}], "}"}]}], "]"}]}], "\[IndentingNewLine]", 
   RowBox[{"(*", 
    RowBox[{"pAir", " ", ":=", " ", "101325."}], "     ", "*)"}], "       ", 
   "\[IndentingNewLine]", 
   RowBox[{"g", " ", ":=", " ", "9.81061"}], "      ", 
   RowBox[{"(*", " ", 
    RowBox[{"m", "/", 
     RowBox[{"s", "^", "2"}]}], " ", "*)"}], 
   "\[IndentingNewLine]"}]}]], "Input",
 CellChangeTimes->{{3.5398108476610527`*^9, 3.5398109808096685`*^9}, {
  3.5398223995827847`*^9, 3.539822458349146*^9}, {3.5398224951152487`*^9, 
  3.539822522267802*^9}, {3.5398225708965836`*^9, 3.539822627205804*^9}, {
  3.53982365849179*^9, 3.539823728876816*^9}, {3.5398237670209975`*^9, 
  3.539823876670269*^9}, {3.5398252340399065`*^9, 3.5398252832207193`*^9}, {
  3.539825318701749*^9, 3.5398253369917946`*^9}, {3.5398264220008535`*^9, 
  3.539826436308672*^9}, {3.5398276850720973`*^9, 3.539827697268795*^9}}],

Cell[BoxData["1000.`"], "Output",
 CellChangeTimes->{{3.539827702342085*^9, 3.5398277177019634`*^9}, 
   3.5398298214052887`*^9, 3.5398333567861624`*^9}],

Cell[BoxData["0.00089000000000000005755812493291045939`2."], "Output",
 CellChangeTimes->{{3.539827702342085*^9, 3.5398277177019634`*^9}, 
   3.5398298214052887`*^9, 3.5398333567881627`*^9}],

Cell[BoxData["1.2754`"], "Output",
 CellChangeTimes->{{3.539827702342085*^9, 3.5398277177019634`*^9}, 
   3.5398298214052887`*^9, 3.5398333581492405`*^9}],

Cell[BoxData["0.0000185095213278062503767934510179316`2."], "Output",
 CellChangeTimes->{{3.539827702342085*^9, 3.5398277177019634`*^9}, 
   3.5398298214052887`*^9, 3.5398333581512403`*^9}],

Cell[BoxData["101325"], "Output",
 CellChangeTimes->{{3.539827702342085*^9, 3.5398277177019634`*^9}, 
   3.5398298214052887`*^9, 3.539833359454315*^9}]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[{
 RowBox[{
  RowBox[{"Clear", "[", "  ", 
   RowBox[{
   "alpha", ",", " ", "p1", ",", " ", "p2", ",", " ", "a", ",", " ", "b", ",",
     " ", "u1", ",", " ", "u2", ",", " ", "y"}], "]"}], 
  "\[IndentingNewLine]"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{"alpha", " ", ":=", " ", 
   RowBox[{"Pi", "/", "6"}]}], "\[IndentingNewLine]", "\[IndentingNewLine]", 
  RowBox[{"(*", " ", 
   RowBox[{
   "pressure", " ", "in", " ", "the", " ", "liquids", " ", "or", " ", "above",
     " ", "them"}], " ", "*)"}]}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{"p1", "[", 
   RowBox[{"y_", ",", " ", "a_", ",", " ", "b_"}], "]"}], " ", "=", "  ", 
  RowBox[{
   RowBox[{"g", " ", 
    RowBox[{"Cos", "[", "alpha", "]"}], 
    RowBox[{"(", " ", 
     RowBox[{
      RowBox[{"rho1", 
       RowBox[{"(", " ", 
        RowBox[{"a", "-", " ", "y"}], ")"}]}], " ", "+", " ", 
      RowBox[{"rho2", " ", "b"}]}], ")"}]}], " ", "+", " ", 
   "pAir"}]}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{
   RowBox[{"p2", "[", 
    RowBox[{"y_", ",", " ", "a_", ",", " ", "b_"}], "]"}], " ", "=", " ", 
   RowBox[{
    RowBox[{"rho2", " ", "g", " ", 
     RowBox[{"Cos", "[", "alpha", "]"}], " ", 
     RowBox[{"(", 
      RowBox[{"a", " ", "+", " ", "b", " ", "-", " ", "y"}], ")"}]}], " ", 
    "+", " ", "pAir"}]}], "\[IndentingNewLine]", "\[IndentingNewLine]", 
  RowBox[{"(*", " ", 
   RowBox[{"water", " ", "steady", " ", "state", " ", "speed"}], " ", 
   "*)"}]}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{
   RowBox[{"u1", "[", 
    RowBox[{"y_", ",", " ", "a_", ",", " ", "b_"}], "]"}], " ", "=", " ", 
   RowBox[{
    RowBox[{"(", 
     RowBox[{"g", " ", "y", " ", 
      RowBox[{
       RowBox[{"Sin", "[", "alpha", "]"}], " ", "/", " ", 
       RowBox[{"(", 
        RowBox[{"2", " ", "mu1"}], ")"}]}]}], ")"}], " ", 
    RowBox[{"(", " ", 
     RowBox[{
      RowBox[{"rho1", " ", 
       RowBox[{"(", " ", 
        RowBox[{
         RowBox[{"2", " ", "a"}], " ", "-", " ", "y"}], ")"}]}], " ", "+", 
      " ", 
      RowBox[{"2", " ", "rho2", " ", "b"}]}], ")"}]}]}], " ", 
  "\[IndentingNewLine]", "\[IndentingNewLine]", 
  RowBox[{"(*", " ", 
   RowBox[{"air", " ", "steady", " ", "state", " ", "speed"}], " ", 
   "*)"}]}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{
   RowBox[{"u2", "[", 
    RowBox[{"y_", ",", " ", "a_", ",", " ", "b_"}], "]"}], " ", "=", " ", 
   RowBox[{
    RowBox[{"(", 
     RowBox[{"g", "  ", 
      RowBox[{
       RowBox[{"Sin", "[", "alpha", "]"}], " ", "/", " ", 
       RowBox[{"(", 
        RowBox[{"2", " ", "mu2"}], ")"}]}]}], ")"}], " ", 
    RowBox[{"(", " ", 
     RowBox[{
      RowBox[{"rho2", " ", "y", " ", 
       RowBox[{"(", " ", 
        RowBox[{
         RowBox[{"2", " ", 
          RowBox[{"(", 
           RowBox[{"a", " ", "+", " ", "b"}], ")"}]}], " ", "-", " ", "y"}], 
        ")"}]}], " ", "+", " ", 
      RowBox[{"a", " ", 
       RowBox[{"(", 
        RowBox[{
         RowBox[{
          RowBox[{"(", 
           RowBox[{"mu2", "/", "mu1"}], ")"}], 
          RowBox[{"(", 
           RowBox[{
            RowBox[{"rho1", " ", "a"}], " ", "+", " ", 
            RowBox[{"2", " ", "rho2", " ", "b"}]}], ")"}]}], " ", "-", "  ", 
         RowBox[{"rho2", " ", 
          RowBox[{"(", 
           RowBox[{
            RowBox[{"2", " ", "b"}], "  ", "+", " ", "a"}], ")"}]}]}], " ", 
        ")"}]}]}], " ", ")"}]}]}], " ", "\[IndentingNewLine]", 
  "\[IndentingNewLine]"}], "\[IndentingNewLine]"}], "Input",
 CellChangeTimes->{{3.53982386601566*^9, 3.539823937019721*^9}, {
   3.5398240127970552`*^9, 3.539824059256713*^9}, {3.539824191492276*^9, 
   3.5398244277527895`*^9}, {3.539824606308002*^9, 3.5398246720677633`*^9}, {
   3.5398247312701497`*^9, 3.5398249408381357`*^9}, {3.539824988147842*^9, 
   3.5398251223325167`*^9}, {3.539825173250429*^9, 3.539825193174569*^9}, 
   3.539825228120568*^9, {3.5398253171346593`*^9, 3.5398255466937895`*^9}, {
   3.539825597397689*^9, 3.539825606840229*^9}, {3.5398256953102894`*^9, 
   3.5398258075217075`*^9}, {3.539825877429706*^9, 3.539825903492197*^9}, {
   3.5398259350790033`*^9, 3.5398259352310123`*^9}, {3.5398264601380353`*^9, 
   3.5398265326091805`*^9}, {3.539826574419572*^9, 3.5398265795468645`*^9}, {
   3.539826643741537*^9, 3.5398266926983366`*^9}, {3.5398267398470335`*^9, 
   3.53982681705645*^9}, 3.5398268485772524`*^9, {3.539826959849617*^9, 
   3.5398269673560467`*^9}, 3.539827066412712*^9, {3.539827104992919*^9, 
   3.5398271051149254`*^9}, {3.5398271387288485`*^9, 
   3.5398271389658623`*^9}, {3.539827214763197*^9, 3.539827222099617*^9}, {
   3.5398297392835913`*^9, 3.5398297424157705`*^9}, {3.5398299172767725`*^9, 
   3.5398299254372387`*^9}, {3.5398300042874107`*^9, 
   3.5398300118628435`*^9}, {3.5398304293017197`*^9, 3.539830433191942*^9}, {
   3.5398305321296015`*^9, 3.539830579550314*^9}, 3.539830621709725*^9, {
   3.5398306555086584`*^9, 3.5398307230325203`*^9}, {3.5398308291405897`*^9, 
   3.5398309297463436`*^9}, {3.539831330543268*^9, 3.539831348725308*^9}, 
   3.5398317320952353`*^9, {3.5398318965946445`*^9, 3.539831928305458*^9}}],

Cell[BoxData[
 RowBox[{"101325", "+", 
  RowBox[{"8.496237486621652`", " ", 
   RowBox[{"(", 
    RowBox[{
     RowBox[{"1.2754`", " ", "b"}], "+", 
     RowBox[{"1000.`", " ", 
      RowBox[{"(", 
       RowBox[{"a", "-", "y"}], ")"}]}]}], ")"}]}]}]], "Output",
 CellChangeTimes->{{3.5398264773810215`*^9, 3.5398264928409057`*^9}, 
   3.5398265334012256`*^9, 3.5398265837021027`*^9, 3.5398266588944035`*^9, 
   3.5398266950414705`*^9, 3.5398268186295395`*^9, 3.5398268511293983`*^9, 
   3.539827069226873*^9, 3.5398271066860156`*^9, {3.5398271407659645`*^9, 
   3.53982716987963*^9}, 3.539827224096731*^9, 3.539829745512948*^9, 
   3.5398298289557204`*^9, 3.5398299265483027`*^9, 3.5398300148790164`*^9, 
   3.5398304450586214`*^9, {3.539830544711321*^9, 3.539830580792385*^9}, 
   3.539830624842904*^9, {3.5398306563877087`*^9, 3.53983072687374*^9}, 
   3.539831099117031*^9, 3.539831357453807*^9, {3.5398317232687306`*^9, 
   3.539831746015032*^9}, 3.5398319367959433`*^9, {3.539833340121209*^9, 
   3.539833362701501*^9}}],

Cell[BoxData[
 RowBox[{"101325", "+", 
  RowBox[{"10.836101290437254`", " ", 
   RowBox[{"(", 
    RowBox[{"a", "+", "b", "-", "y"}], ")"}]}]}]], "Output",
 CellChangeTimes->{{3.5398264773810215`*^9, 3.5398264928409057`*^9}, 
   3.5398265334012256`*^9, 3.5398265837021027`*^9, 3.5398266588944035`*^9, 
   3.5398266950414705`*^9, 3.5398268186295395`*^9, 3.5398268511293983`*^9, 
   3.539827069226873*^9, 3.5398271066860156`*^9, {3.5398271407659645`*^9, 
   3.53982716987963*^9}, 3.539827224096731*^9, 3.539829745512948*^9, 
   3.5398298289557204`*^9, 3.5398299265483027`*^9, 3.5398300148790164`*^9, 
   3.5398304450586214`*^9, {3.539830544711321*^9, 3.539830580792385*^9}, 
   3.539830624842904*^9, {3.5398306563877087`*^9, 3.53983072687374*^9}, 
   3.539831099117031*^9, 3.539831357453807*^9, {3.5398317232687306`*^9, 
   3.539831746015032*^9}, 3.5398319367959433`*^9, {3.539833340121209*^9, 
   3.5398333627035007`*^9}}],

Cell[BoxData[
 RowBox[{"2755.7893258426966`", " ", 
  RowBox[{"(", 
   RowBox[{
    RowBox[{"2.5508`", " ", "b"}], "+", 
    RowBox[{"1000.`", " ", 
     RowBox[{"(", 
      RowBox[{
       RowBox[{"2", " ", "a"}], "-", "y"}], ")"}]}]}], ")"}], " ", 
  "y"}]], "Output",
 CellChangeTimes->{{3.5398264773810215`*^9, 3.5398264928409057`*^9}, 
   3.5398265334012256`*^9, 3.5398265837021027`*^9, 3.5398266588944035`*^9, 
   3.5398266950414705`*^9, 3.5398268186295395`*^9, 3.5398268511293983`*^9, 
   3.539827069226873*^9, 3.5398271066860156`*^9, {3.5398271407659645`*^9, 
   3.53982716987963*^9}, 3.539827224096731*^9, 3.539829745512948*^9, 
   3.5398298289557204`*^9, 3.5398299265483027`*^9, 3.5398300148790164`*^9, 
   3.5398304450586214`*^9, {3.539830544711321*^9, 3.539830580792385*^9}, 
   3.539830624842904*^9, {3.5398306563877087`*^9, 3.53983072687374*^9}, 
   3.539831099117031*^9, 3.539831357453807*^9, {3.5398317232687306`*^9, 
   3.539831746015032*^9}, 3.5398319367959433`*^9, {3.539833340121209*^9, 
   3.539833362705501*^9}}],

Cell[BoxData[
 RowBox[{"132507.6135986002`", " ", 
  RowBox[{"(", 
   RowBox[{
    RowBox[{"a", " ", 
     RowBox[{"(", 
      RowBox[{
       RowBox[{
        RowBox[{"-", "1.2754`"}], " ", 
        RowBox[{"(", 
         RowBox[{"a", "+", 
          RowBox[{"2", " ", "b"}]}], ")"}]}], "+", 
       RowBox[{
       "0.02079721497506320132555581686865614924`1.6989700043360227", " ", 
        RowBox[{"(", 
         RowBox[{
          RowBox[{"1000.`", " ", "a"}], "+", 
          RowBox[{"2.5508`", " ", "b"}]}], ")"}]}]}], ")"}]}], "+", 
    RowBox[{"1.2754`", " ", 
     RowBox[{"(", 
      RowBox[{
       RowBox[{"2", " ", 
        RowBox[{"(", 
         RowBox[{"a", "+", "b"}], ")"}]}], "-", "y"}], ")"}], " ", "y"}]}], 
   ")"}]}]], "Output",
 CellChangeTimes->{{3.5398264773810215`*^9, 3.5398264928409057`*^9}, 
   3.5398265334012256`*^9, 3.5398265837021027`*^9, 3.5398266588944035`*^9, 
   3.5398266950414705`*^9, 3.5398268186295395`*^9, 3.5398268511293983`*^9, 
   3.539827069226873*^9, 3.5398271066860156`*^9, {3.5398271407659645`*^9, 
   3.53982716987963*^9}, 3.539827224096731*^9, 3.539829745512948*^9, 
   3.5398298289557204`*^9, 3.5398299265483027`*^9, 3.5398300148790164`*^9, 
   3.5398304450586214`*^9, {3.539830544711321*^9, 3.539830580792385*^9}, 
   3.539830624842904*^9, {3.5398306563877087`*^9, 3.53983072687374*^9}, 
   3.539831099117031*^9, 3.539831357453807*^9, {3.5398317232687306`*^9, 
   3.539831746015032*^9}, 3.5398319367959433`*^9, {3.539833340121209*^9, 
   3.539833362706501*^9}}]
}, Open  ]],

Cell["\<\
Now take a look at the pressure plots.  These make sense.  A plot of the air \
pressure in the upper layer shows that we have atomospheric pressure at the \
very top of the air layer (101326), and that pressure increases to a max by \
the time we hit y = h1 at the interface.  In the second layer we have the \
same, a linear increase of pressure with depth, till we hit the max.\
\>", "Text",
 CellChangeTimes->{{3.5398272610498447`*^9, 3.539827279443897*^9}, {
  3.5398273124507847`*^9, 3.539827346196715*^9}, {3.5398273962635784`*^9, 
  3.539827460152233*^9}, {3.539831896831658*^9, 3.539831905138133*^9}}],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"\[IndentingNewLine]", 
  RowBox[{
   RowBox[{"Clear", "[", 
    RowBox[{"h1", ",", " ", "h2"}], "]"}], "\[IndentingNewLine]", 
   RowBox[{"h1", " ", ":=", " ", "0.01"}], " ", 
   RowBox[{"(*", " ", 
    RowBox[{"1", " ", "cm"}], " ", "*)"}], "\[IndentingNewLine]", 
   RowBox[{"h2", " ", ":=", " ", "0.1"}], " ", 
   RowBox[{"(*", " ", 
    RowBox[{"10", " ", "cm"}], " ", "*)"}], "\[IndentingNewLine]", 
   RowBox[{"Plot", "[", 
    RowBox[{
     RowBox[{"p1", "[", 
      RowBox[{"y", ",", " ", "h1", ",", " ", "h2"}], "]"}], ",", " ", 
     RowBox[{"{", 
      RowBox[{"y", ",", " ", "0", ",", " ", "h1"}], "}"}]}], "]"}], 
   "\[IndentingNewLine]", 
   RowBox[{"Plot", "[", 
    RowBox[{
     RowBox[{"p2", "[", 
      RowBox[{"y", ",", " ", "h1", ",", " ", "h2"}], "]"}], ",", " ", 
     RowBox[{"{", 
      RowBox[{"y", ",", " ", "h1", ",", " ", "h2"}], "}"}]}], "]"}], " ", 
   "\[IndentingNewLine]"}]}]], "Input",
 CellChangeTimes->{{3.5398272316811647`*^9, 3.539827244463896*^9}, {
  3.539827289035445*^9, 3.5398272908685503`*^9}, {3.5398309459642715`*^9, 
  3.5398309504365273`*^9}, {3.5398309822133446`*^9, 3.539831057119629*^9}, {
  3.539831091740609*^9, 3.53983118564898*^9}, {3.5398312376969576`*^9, 
  3.5398312781602716`*^9}, {3.53983202747113*^9, 3.5398320363266363`*^9}}],

Cell[BoxData[
 GraphicsBox[{{}, {}, 
   {Hue[0.67, 0.6, 0.6], LineBox[CompressedData["
1:eJwVy3k4FHgcx3HHU3JmXKUwjja2ZZt62qanZb7TJgyp5GyU3Na4j8GYWcb4
bYuwaHnWrlrHY4t1lUVm5EhryVG7KZtKKJTNuR0j0n7nj8/zfl5/fEz8o04G
KcjJyTnjZKXbvp3jq72yES95tdFuSpmb6ZLiFnEfYy30oovMpt7dwlTxQwZM
TkzvRltG2McHiF8ybv3Noci8J0E50l28whhqFARboRuTZznHxMowyS3V3IV+
vcZ+6SjWB5X3M4FmaF3GBQuW+FNgKySq66Fb5Z/lOtw5CH0B8sYrXVIm20Jg
EDZ7GL6gOBmOoW+3Jk2mHnWEXL8D5d1o/9yZoKySE9CkUPDiV/SyOMaufsQV
Hi5U62ej7e9eOaDj5Qn9VjS1KHThqJeZcS8bqjVOnTuJfvt0hrfxwxk49+Wh
f+lo9RlKTJHEF2ithZTt6Cpv6iM9b38YEVWZyqG7HEO7OMsBEL7gK5nqlDKt
6zIbfGqCYKiG6Pahmd8X3+9wCAGr5hB2Hfry81TFLqVQYGu2+Oajs34vry1s
5wBXvXo+Hv1OvilnxDMcsj1Oh7DRPd0XE1q1IyF2MbnMBk1VTCjcdC0K3B54
9ZiiI7wLxvit0bBBvaJmAzpz+Tvak8IYKJ/O2/ayQ8rkOHANuQGxYKPGiBtC
C/4Z1DjzVRxUijxzrqJdzY1+5mvFg+oRWkER+uvG7Kn0sXjwqa4xEqDreMH7
Hku4kOJbGH4W3bpONwrLSoASf5tKW/SbG/FqjpxEyGhy+cUcHSW+c13LLgn8
flM2UZX9uaZyWto8oM8JcxbbpUyjsHEnvyUePEoNlNxDu1KL9s50JgPfR2n4
OrpHkzPikc0HlXHn+EtojnWVUC9UAMHX5B6koe/tHL+lRv8GOu7GmoagI5xE
6q56KTANLjRH9MDnBkt3plNAZXXeYjc69Phwwf7GVNh+ilalgza4zy9JcBDC
e6Wx2Xc3pMxpP2WbuXohPFBw2vIE3Xd+4KmqcRoIj+3Y0Il2Gr7kR81Ng602
ZckV6N1rr2hDr9OgJvHJaAbasita4ZNAEWxWPLcWhj4fFG2yZUAEkaNzm1zQ
mRap1PU96SBxWynZjy7N6KbmlKbDfWrMsj5avzc9okWJwNz+K3s/tkmZQ4F3
dYgygQo+XbKOJvKGbSdUCbA7ew7LvHiwWWVWg8CfrCm3D+ie2heXDfQIlJ02
TVxFx15wnkzbQcBdVCJ5hx7w2eJ59BCB9sE820W0aDVgfethAlwt48EFNP3H
hsopWwKfeda7y1z+F+t1igOB4vHB4Hk0z1aQf/U4gbj/VDJfoXfumujX8yFg
rv/t4Av04x6ruGdnCYyd0fGQOT8geVuDH4EfyivGZtBrJdqhrCACCpY3F6bR
9zbbbRSEE3jM+EiZQmfUFNQ6RBIoSM/96TmawXrqphtNgNVraCZztSipoi6O
QLOL9b5naF/qH458LoGIov62SbRuG2XZPpGA2SP2EZlve/kU6/AIjFJnByfQ
wjfVzIlkAnmBPA+Z/wd9DnKQ
     "]]}},
  AspectRatio->NCache[GoldenRatio^(-1), 0.6180339887498948],
  Axes->True,
  AxesOrigin->{0, 101325.},
  PlotRange->{{0, 0.01}, {101326.08361186297`, 101411.04598326134`}},
  PlotRangeClipping->True,
  PlotRangePadding->{
    Scaled[0.02], 
    Scaled[0.02]}]], "Output",
 CellChangeTimes->{
  3.5398272325152125`*^9, 3.5398272919066095`*^9, 3.539827464717494*^9, 
   3.539829838719279*^9, 3.5398300217164073`*^9, 3.5398304494518723`*^9, 
   3.53983055169672*^9, {3.5398310124440737`*^9, 3.539831062575941*^9}, 
   3.5398312872937946`*^9, 3.539831364124189*^9, 3.539831756078607*^9, 
   3.5398333680738077`*^9}],

Cell[BoxData[
 GraphicsBox[{{}, {}, 
   {Hue[0.67, 0.6, 0.6], LineBox[CompressedData["
1:eJwd0nkw3HcYBnB1xV2WSiRNhjQRVyLGWUdfEeKo+4hExbFIS4a4CaXN2GiE
raxzHClCQjRYdi3fCUEcdaQbV0MIWZEwg6h2XFWiv7d/vPPM579nnnnV6Nfd
Q4SFhIScqMN01x5Mn0tiQB8z4eJc27blIHPd2SeDAXtLFl7oc2vHDo4VMsDQ
TtQTfbY5prqHy4BKYZYbWg6O9levMuBmQq0jesg9UjKCfgvMA2es0NZJylk7
9unQaHBeF204QGcpqtyG0mk5CfTmykzDabEs+KZLliOgrLPM+am9PhvopD4I
nfrxdsn6fRbctZn9DO3poJmSmp8L1aFxXW8oh4gkmHVfzQfx8vro/73fLLLr
VwhOES5H0XpipEXYuQjahlMHZimbJIba9RwpgWgb12T06TPS8zfk74GCe4Y6
+oqbj8/S/C+wFRk8MYN9Onh+St7lIHaCn4FW2zLJr3OpgN2IMkM0972CaZXx
fTB7Tlt8Tflp3Py8kn4lBHZ9YKHrpQrTVjSrgO3g/RXa/GIFS03+AVxYoK9N
477nq6qGJR9Cr8rLEvT8wt7Jmb8fQqb/siN6T9v1cdCf1WBq8d3WFDqOoeG2
WAMKDTGV6OL4TxVL+Y9AV1/NC11/KFc4cKAWjFyMhNABUeEBaZxfgZHygf2K
8jZfkytT9Bh2QD8IfYA/KyOfUweXiwVyaE7a0lhkUj3si5/tnKQ8MbVa9nV8
AzClF8PQkSVL7D4jNlhX6RxEd5+QtFeuZYOVi9LABOXRj5Xzx081gmZOUCxa
1yDMcLakEbwXPU+i96+pCTvJNUHd8PjES8qZ654jiXeaYNmtLQ19dZLj7fGx
CaLe2xiid2WyBUvJHBDIGwv+oDxXmq+q9xcHCpwH76K/1GVOawVzIVZ1xQrt
RPukaE7ABdM7cavjlNmu5bK2Xs1gJ15Rhua/ecIIHWsGOGzggPaP6o8HFx5c
eea1OUYZ/IRUe57xoPt7lRr0dAl3SMyyBRReWHugew3yzmxyW6BanyaKPj4c
LFN8qhVCdCJ4o5TN2hpXdipbQbpdj46uFNFiSB0i8I9/oSJ6TT+gU/4wgYIQ
ExraPLhgV/lzAvrXXsmjx3uE475QJRARf0QOLZ4+HWKuQeBtVpkEOkyCaRth
QmCIVO+N4H/LrkmNXiJwT7F1EZ1qoW476UPAVOXyAnow3Ddt1pfAxLGdd2g6
v//fpQACNC3zt+i87IoVkVAC6Zadr9HbCh58wxsErof3j6CtrTKkzJMJyMSE
DqNZ0R0XrFIIPEqUeoHWGtPucL5J4F2a43O0b54o+9sMApeKh/vQNT2mK+GZ
BDbKonrRG+uRGrFMAjkPaD3on71myn9kEfid7dmFnrqlOJOeSyCMt9GBVufZ
qzDzCRxoK3iKjl74wSu3kEBVl3E7ukOZxyoqInDut8kn6P8ARSuUlQ==
     "]]}},
  AspectRatio->NCache[GoldenRatio^(-1), 0.6180339887498948],
  Axes->True,
  AxesOrigin->{0.02, 101325.1},
  PlotRange->{{0.01, 0.1}, {101325.1083610328, 101326.08361010914`}},
  PlotRangeClipping->True,
  PlotRangePadding->{
    Scaled[0.02], 
    Scaled[0.02]}]], "Output",
 CellChangeTimes->{
  3.5398272325152125`*^9, 3.5398272919066095`*^9, 3.539827464717494*^9, 
   3.539829838719279*^9, 3.5398300217164073`*^9, 3.5398304494518723`*^9, 
   3.53983055169672*^9, {3.5398310124440737`*^9, 3.539831062575941*^9}, 
   3.5398312872937946`*^9, 3.539831364124189*^9, 3.539831756078607*^9, 
   3.539833368079808*^9}]
}, Open  ]],

Cell["\<\
Now look at the velocity plots for the steady state condition.  These really \
don\[CloseCurlyQuote]t make any sense (with 1cm water/1 meter air), and we \
see how non-sensicial it is to kill the time and x-position dependencies.  \
Our water velocity has increased to a speed of 350 meters/sec, and the air \
above it ends up at 150 km/sec.  If the speeds really got that fast we\
\[CloseCurlyQuote]d have to consider heat effects!

Decreasing the depths makes for a more reasonable result.

A second option is that the calculations done are completely wrong.\
\>", "Text",
 CellChangeTimes->{{3.539827471493881*^9, 3.5398276167561903`*^9}, {
  3.539830746345854*^9, 3.539830761785737*^9}, {3.53983080607227*^9, 
  3.539830817238909*^9}}],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"\[IndentingNewLine]", 
  RowBox[{
   RowBox[{"Clear", "[", 
    RowBox[{"u", ",", " ", "h1", ",", " ", "h2"}], "]"}], 
   "\[IndentingNewLine]", 
   RowBox[{"h1", " ", ":=", " ", "0.01"}], " ", 
   RowBox[{"(*", " ", 
    RowBox[{"1", " ", "cm"}], " ", "*)"}], "\[IndentingNewLine]", 
   RowBox[{"h2", " ", ":=", " ", "1"}], " ", 
   RowBox[{"(*", " ", 
    RowBox[{"1", " ", "m"}], " ", "*)"}], "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{"u", "[", "y_", "]"}], " ", ":=", " ", 
    RowBox[{"If", "[", " ", 
     RowBox[{
      RowBox[{"y", " ", ">", " ", "h1"}], ",", " ", 
      RowBox[{"u2", "[", 
       RowBox[{"y", ",", " ", "h1", ",", " ", "h2"}], "]"}], ",", " ", 
      RowBox[{"u1", "[", 
       RowBox[{"y", ",", " ", "h1", ",", " ", "h2"}], "]"}]}], "]"}]}], 
   "\[IndentingNewLine]", 
   RowBox[{"Plot", "[", 
    RowBox[{
     RowBox[{"u", "[", "y", "]"}], ",", " ", 
     RowBox[{"{", 
      RowBox[{"y", ",", " ", "0", ",", " ", 
       RowBox[{"h1", "  ", "+", " ", "h2"}]}], "}"}]}], "]"}], 
   "\[IndentingNewLine]", 
   RowBox[{"Plot", "[", 
    RowBox[{
     RowBox[{"u", "[", "y", "]"}], ",", " ", 
     RowBox[{"{", 
      RowBox[{"y", ",", " ", "0", ",", " ", "h1"}], "}"}]}], "]"}], 
   "\[IndentingNewLine]", 
   RowBox[{"(*", 
    RowBox[{"Plot", "[", 
     RowBox[{
      RowBox[{"u", "[", "y", "]"}], ",", " ", 
      RowBox[{"{", 
       RowBox[{"y", ",", " ", "h1", ",", " ", 
        RowBox[{"h1", " ", "+", " ", "h2"}]}], "}"}]}], "]"}], "*)"}], 
   "\[IndentingNewLine]", "\[IndentingNewLine]", 
   RowBox[{"Clear", "[", 
    RowBox[{"u", ",", " ", "h1", ",", " ", "h2"}], "]"}], 
   "\[IndentingNewLine]", 
   RowBox[{"h1", " ", ":=", " ", "0.001"}], " ", 
   RowBox[{"(*", " ", 
    RowBox[{"1", " ", "mm"}], " ", "*)"}], "\[IndentingNewLine]", 
   RowBox[{"h2", " ", ":=", " ", "0.01"}], " ", 
   RowBox[{"(*", " ", 
    RowBox[{"1", " ", "cm"}], " ", "*)"}], "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{"u", "[", "y_", "]"}], " ", ":=", " ", 
    RowBox[{"If", "[", " ", 
     RowBox[{
      RowBox[{"y", " ", ">", " ", "h1"}], ",", " ", 
      RowBox[{"u2", "[", 
       RowBox[{"y", ",", " ", "h1", ",", " ", "h2"}], "]"}], ",", " ", 
      RowBox[{"u1", "[", 
       RowBox[{"y", ",", " ", "h1", ",", " ", "h2"}], "]"}]}], "]"}]}], 
   "\[IndentingNewLine]", 
   RowBox[{"Plot", "[", 
    RowBox[{
     RowBox[{"u", "[", "y", "]"}], ",", " ", 
     RowBox[{"{", 
      RowBox[{"y", ",", " ", "0", ",", " ", 
       RowBox[{"h1", " ", "+", " ", "h2"}]}], "}"}]}], "]"}], 
   "\[IndentingNewLine]", 
   RowBox[{"Plot", "[", 
    RowBox[{
     RowBox[{"u", "[", "y", "]"}], ",", " ", 
     RowBox[{"{", 
      RowBox[{"y", ",", " ", "0", ",", " ", "h1"}], "}"}]}], "]"}], 
   "\[IndentingNewLine]", "\[IndentingNewLine]"}]}]], "Input",
 CellChangeTimes->{{3.539829946468442*^9, 3.53982996094627*^9}, {
   3.5398300485729437`*^9, 3.5398301259383683`*^9}, {3.5398301783663673`*^9, 
   3.5398302019037137`*^9}, {3.5398303204354935`*^9, 
   3.5398303963048325`*^9}, {3.53983046514677*^9, 3.5398304832628064`*^9}, {
   3.5398307746354723`*^9, 3.539830779341741*^9}, {3.5398313768949194`*^9, 
   3.5398315865599113`*^9}, {3.5398316417660685`*^9, 3.539831651384619*^9}, {
   3.539831689463797*^9, 3.539831700761443*^9}, 3.539831783733189*^9, 
   3.5398318153879995`*^9, {3.539832006054905*^9, 3.5398320937739224`*^9}, {
   3.539833393713275*^9, 3.539833400009635*^9}, {3.5398334553938026`*^9, 
   3.5398334787811403`*^9}}],

Cell[BoxData[
 GraphicsBox[{{}, {}, 
   {Hue[0.67, 0.6, 0.6], LineBox[CompressedData["
1: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
f7QODRKtPmf+9/Ovoi9+6dJwdxHz0f/+DwEahkk=
     "]]}},
  AspectRatio->NCache[GoldenRatio^(-1), 0.6180339887498948],
  Axes->True,
  AxesOrigin->{0, 0},
  PlotRange->{{0, 1.01}, {0., 169346.0839903625}},
  PlotRangeClipping->True,
  PlotRangePadding->{
    Scaled[0.02], 
    Scaled[0.02]}]], "Output",
 CellChangeTimes->{{3.5398334311074133`*^9, 3.5398334797671967`*^9}}],

Cell[BoxData[
 GraphicsBox[{{}, {}, 
   {Hue[0.67, 0.6, 0.6], LineBox[CompressedData["
1:eJwVzms0lAkcx3FqbaaUcq0ORuSyLV1226acmv+/EmMmJbIcNvdJM4O5PsNg
DeaprSksUm7dtLYit522dgbFUY6Q7KatxSLFyFFHk0hJO/vid77n8+63Jorv
z15gYGDgq9//pXlOv0oxmdhRZFpVOVs4Tjel1Rfd0tynu+SZR1mw28AhtCVd
rvmHfmD9/kajmKfgFu8tida8pFdzVPStUWOwSUpJCNTM0scidc73wt6DKnmc
u09DAcf8r8d1QcY4NRfykqlZBW8LPnKCmSvRkp7v6qP5Ctp4zMOuG1xRbfg8
m/HQA4zkdx9Qp7diiGuqDW98N7Sp1hkHRuzCdnXSsHwvE4YcvFjvTBgYla1l
K0v9oM+oOIZvtQ91GqFXzZMAyC6n1Lp3HUDv7qtbLYKDYO8+y8q/Gw5iQW+w
o31bCHQ9hUsO2UE4PaiVffnpEFi7U25O2YfgUu0K4Zn6CDjWwsix7P8Br4VS
+6xCo2BPt3gPLyQcm5mcZq4uGrQnK9URgxG4vfpEbdh1Noiy+v9asjYKMafo
8R1GLBSV83omWNF45YV8YfMiDowvpPS+IWNQeaOsquA2F4RtpRtEtWycMfw9
60lQHNwcret90HQYW1vOSdXmCfDeM/ZC6VAsUhdKC4x/40NW7DK57egRjA/N
G0hRC+C4p1qrmuXgCd1PG/8tEMJqi5IXRwx4yGUQtkS0CGYrXViJr3mY+vTB
skO7xJDktz5ybCwOA1zsSlLMJOBSYXRB2RGPR1SnRhQDEviuO/zVh7IErJYd
3txfT8C9t6u7nI7yUT1Ps+MppdBjuvOLHFcBvmuUmDC5iTBcVmfnkS9Avubh
H2ZeSfC5wLKa8l6A1YSDgZm5DK5X9M7l+QvRjjfEinwjA5m5NaGrFWIA9cw3
2qZk4J+foCcaibB1OffJ96dSoFLpVDZzUITc7dfSrTipECFkqJOviPCR89Bd
E9qPQLtj/+vkpAjjWZlLA6zSwNibmVi/XYyd623ePBxNg9sz9W4jcjFy9vfk
bVHJobhPmRB6W4w2j1NKpYx0+NSR4+I/L8bRSMqOVzXpcG3x3W3SLRK8f7Jz
cIl9BkQOhK+L40uQ1XM+kpqdAcU3aqZ5lyW4YW5iY9dUBgSKVMq4bgm6NQsW
OMVkgoe0vZ39SYIn2YI11p2ZkO3ue7rDkcATrnLq/CYFbJO/bTDzIvDi8RZq
1kUFyK1zG9NiCVzVpoi/tYgEw7W1Lk4KArtiui1ICgkz1Ir+Qr1JQ9sGvyUk
bKT97GtCEjjpcXPx+DISpLfso3V6t1aNXbGxIsHzs/+h+mMEivJ9hzPWkjBZ
OZeFSgI7w6yD9u4kgZTFDFnnEpj5MXp+5W4S3AaemSn0phXWlo94kmATxjJ8
rXfZnz5TaQwS2muGV7TkESjzTM2t208Cr9hhAfc0gc7rnnVYhZHQcEprV3mW
wP5Wd/HzcBKayp2XmxUSmBudvLo2koTFvQcak/SeKzXn+LBJiD8dx9pTROAj
U68vU+P0//1UW/qKCTx+Pa+KkUDC1d0Bi7CEQLrP4EFLAQl2/oP5v+hdkZl0
uVpMQn9T/VBcKYER1HvMFIIExzUml7r1tmxYofNOJKGulGG7+RyB7cFhRRYy
EhTfCgPP6p3+rgKfJZNQMnLU54Pe/wEL9jdK
     "]]}},
  AspectRatio->NCache[GoldenRatio^(-1), 0.6180339887498948],
  Axes->True,
  AxesOrigin->{0, 0},
  PlotRange->{{0, 0.01}, {0., 345.8736052732799}},
  PlotRangeClipping->True,
  PlotRangePadding->{
    Scaled[0.02], 
    Scaled[0.02]}]], "Output",
 CellChangeTimes->{{3.5398334311074133`*^9, 3.5398334797731967`*^9}}],

Cell[BoxData[
 GraphicsBox[{{}, {}, 
   {Hue[0.67, 0.6, 0.6], LineBox[CompressedData["
1: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
lf2qfBoOyWICpC+E/weUhP5v
     "]]}},
  AspectRatio->NCache[GoldenRatio^(-1), 0.6180339887498948],
  Axes->True,
  AxesOrigin->{0, 0},
  PlotRange->{{0, 0.011}, {0., 19.726105038331752`}},
  PlotRangeClipping->True,
  PlotRangePadding->{
    Scaled[0.02], 
    Scaled[0.02]}]], "Output",
 CellChangeTimes->{{3.5398334311074133`*^9, 3.5398334797831974`*^9}}],

Cell[BoxData[
 GraphicsBox[{{}, {}, 
   {Hue[0.67, 0.6, 0.6], LineBox[CompressedData["
1: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
sP8FdIuQtg==
     "]]}},
  AspectRatio->NCache[GoldenRatio^(-1), 0.6180339887498948],
  Axes->True,
  AxesOrigin->{0, 0},
  PlotRange->{{0, 0.001}, {0., 2.826083998531706}},
  PlotRangeClipping->True,
  PlotRangePadding->{
    Scaled[0.02], 
    Scaled[0.02]}]], "Output",
 CellChangeTimes->{{3.5398334311074133`*^9, 3.539833479789198*^9}}]
}, Open  ]],

Cell[CellGroupData[{

Cell["Scratch calculations.", "Section",
 CellChangeTimes->{{3.539811023255096*^9, 3.539811027823357*^9}}],

Cell[CellGroupData[{

Cell[BoxData[
 NamespaceBox["WolframAlphaQueryParseResults",
  DynamicModuleBox[{Typeset`q$$ = "density of water", Typeset`newq$$ = 
   "density of water", Typeset`chosen$$ = 
   "ChemicalData[\"Water\", \"Density\"]", Typeset`open$$ = False}, 
   PaneSelectorBox[{False->
    DynamicModuleBox[{WolframAlphaClient`Private`show$$ = False, 
     WolframAlphaClient`Private`assumptionsQ$$ = True}, 
     TagBox[
      FrameBox[
       TagBox[GridBox[{
          {
           InputFieldBox[Dynamic[Typeset`newq$$], String,
            Appearance->None,
            BaseStyle->{"CalculateInput"},
            ContinuousAction->True,
            Enabled->True,
            FieldSize->{{1, 40}, {1, 
               DirectedInfinity[1]}},
            TrapSelection->False], 
           ButtonBox[
            TagBox[
             TooltipBox[
              StyleBox["\<\"\[RightGuillemet]\"\>",
               StripOnInput->False,
               LineColor->RGBColor[1, 0.5, 0],
               FrontFaceColor->RGBColor[1, 0.5, 0],
               BackFaceColor->RGBColor[1, 0.5, 0],
               GraphicsColor->RGBColor[1, 0.5, 0],
               FontColor->RGBColor[1, 0.5, 0]],
              DynamicBox[
               ToBoxes[
                FEPrivate`FrontEndResource[
                "WAStrings", "InterpretationAssumptions"], StandardForm]]],
             Annotation[#, 
              Dynamic[
               FEPrivate`FrontEndResource[
               "WAStrings", "InterpretationAssumptions"]], "Tooltip"]& ],
            Appearance->None,
            BaselinePosition->Baseline,
            ButtonFunction:>(Quiet[
               WolframAlpha[]]; Typeset`open$$ = True; 
             WolframAlphaClient`Private`extrudeFromFastParse[
              "density of water", 
               Defer[
                ChemicalData["Water", "Density"]], "Fast parse"]; 
             Typeset`open$$ = False),
            ContentPadding->False,
            Evaluator->Automatic,
            Method->"Queued"], 
           ItemBox[
            ButtonBox[
             PaneSelectorBox[{True->
              TagBox[
               TooltipBox[
                
                DynamicBox[FEPrivate`FrontEndResource[
                 "WABitmaps", "OrangeSquarePlus"],
                 ImageSizeCache->{10., {3., 8.}}],
                DynamicBox[
                 ToBoxes[
                  FEPrivate`FrontEndResource["WAStrings", "ShowAllResults"], 
                  StandardForm]]],
               Annotation[#, 
                Dynamic[
                 FEPrivate`FrontEndResource["WAStrings", "ShowAllResults"]], 
                "Tooltip"]& ], False->
              TagBox[
               TooltipBox[
                
                DynamicBox[FEPrivate`FrontEndResource[
                 "WABitmaps", "GraySquarePlus"],
                 ImageSizeCache->{10., {3., 8.}}],
                DynamicBox[
                 ToBoxes[
                  FEPrivate`FrontEndResource["WAStrings", "ShowAllResults"], 
                  StandardForm]]],
               Annotation[#, 
                Dynamic[
                 FEPrivate`FrontEndResource["WAStrings", "ShowAllResults"]], 
                "Tooltip"]& ]}, Dynamic[WolframAlphaClient`Private`show$$],
              ImageSize->All],
             Appearance->None,
             ButtonFunction:>(Quiet[
                WolframAlpha[]]; If[
                Or[
                 CurrentValue["OptionKey"], 
                 CurrentValue["AltKey"]], SelectionMove[
                  ButtonNotebook[], All, ButtonCell, AutoScroll -> False]; 
                NotebookWrite[
                  ButtonNotebook[], 
                  Cell[
                  Typeset`newq$$, "WolframAlphaShort", FormatType -> 
                   "TextForm"], All], Typeset`open$$ = True; 
                WolframAlphaClient`Private`extrudeFromFastParse[
                 "density of water", 
                  Defer[
                   ChemicalData["Water", "Density"]], "Fast parse"]; 
                Typeset`open$$ = False]),
             Evaluator->Automatic,
             Method->"Queued"],
            Alignment->{Right, Top},
            StripOnInput->False]},
          {
           PaneBox[
            TagBox[
             TooltipBox[
              ButtonBox[
               PaneSelectorBox[{False->
                StyleBox[
                 RowBox[{"ChemicalData", "[", 
                  RowBox[{"\"\<Water\>\"", ",", " ", "\"\<Density\>\""}], 
                  "]"}],
                 StripOnInput->False,
                 NumberMarks->False], True->
                StyleBox[
                 RowBox[{"ChemicalData", "[", 
                  RowBox[{"\<\"Water\"\>", ",", " ", "\<\"Density\"\>"}], 
                  "]"}],
                 StripOnInput->False,
                 ShowSyntaxStyles->False,
                 NumberMarks->False,
                 FontColor->RGBColor[1, 0.5, 0]]}, Dynamic[
                 CurrentValue["MouseOver"]],
                BaseStyle->{ShowStringCharacters -> True},
                FrameMargins->0,
                ImageSize->Automatic],
               Alignment->Left,
               Appearance->None,
               BaseStyle->{},
               ButtonFunction:>(SelectionMove[
                  ButtonNotebook[], All, ButtonCell]; NotebookWrite[
                  ButtonNotebook[], 
                  Cell[
                   BoxData[
                    RowBox[{"ChemicalData", "[", 
                    RowBox[{"\"Water\"", ",", " ", "\"Density\""}], "]"}]], 
                   "Input"], All]; SelectionMove[
                  ButtonNotebook[], After, CellContents]),
               Evaluator->Automatic,
               ImageSize->Automatic,
               Method->"Preemptive"],
              DynamicBox[
               ToBoxes[
                FEPrivate`FrontEndResource["WAStrings", "RemoveResults"], 
                StandardForm]]],
             Annotation[#, 
              Dynamic[
               FEPrivate`FrontEndResource["WAStrings", "RemoveResults"]], 
              "Tooltip"]& ],
            AppearanceElements->{},
            BaseStyle->{ShowStringCharacters -> True, ScriptLevel -> 0},
            ImageSize->{Automatic, {1, 100}},
            Scrollbars->{False, Automatic}], "\[SpanFromLeft]", 
           "\[SpanFromLeft]"}
         },
         AutoDelete->False,
         BaselinePosition->{1, 1},
         FrameStyle->GrayLevel[0.85],
         GridBoxAlignment->{"Columns" -> {{Left}}},
         GridBoxDividers->{
          "Columns" -> {{False}}, "Rows" -> {False, {True}, False}},
         GridBoxItemSize->{
          "Columns" -> {{Automatic}}, "Rows" -> {{Automatic}}}],
        "Grid"],
       Alignment->Top,
       Background->Dynamic[
         FEPrivate`If[
          FEPrivate`And[
           FEPrivate`SameQ[
            FEPrivate`Head[Typeset`newq$$], String], 
           FEPrivate`UnsameQ[Typeset`q$$, Typeset`newq$$]], 
          RGBColor[1., 0.975, 0.95], 
          GrayLevel[1]]],
       BaselinePosition->Baseline,
       FrameStyle->GrayLevel[0.85],
       ImageSize->Automatic,
       RoundingRadius->5,
       StripOnInput->False],
      EventHandlerTag[{
       "MouseEntered" :> 
        FEPrivate`Set[WolframAlphaClient`Private`show$$, True], "MouseExited" :> 
        FEPrivate`Set[WolframAlphaClient`Private`show$$, False], 
        PassEventsDown -> Automatic, PassEventsUp -> True}]],
     DynamicModuleValues:>{}], True->
    TagBox[GridBox[{
       {
        DynamicModuleBox[{WolframAlphaClient`Private`show$$ = False, 
         WolframAlphaClient`Private`assumptionsQ$$ = True}, 
         TagBox[
          FrameBox[
           TagBox[GridBox[{
              {
               InputFieldBox[Dynamic[Typeset`newq$$], String,
                Appearance->None,
                BaseStyle->{"CalculateInput"},
                ContinuousAction->True,
                Enabled->True,
                FieldSize->{{1, 40}, {1, 
                   DirectedInfinity[1]}},
                TrapSelection->False], 
               ButtonBox[
                TagBox[
                 TooltipBox[
                  StyleBox["\<\"\[RightGuillemet]\"\>",
                   StripOnInput->False,
                   LineColor->RGBColor[1, 0.5, 0],
                   FrontFaceColor->RGBColor[1, 0.5, 0],
                   BackFaceColor->RGBColor[1, 0.5, 0],
                   GraphicsColor->RGBColor[1, 0.5, 0],
                   FontColor->RGBColor[1, 0.5, 0]],
                  DynamicBox[
                   ToBoxes[
                    FEPrivate`FrontEndResource[
                    "WAStrings", "InterpretationAssumptions"], StandardForm]]],
                 Annotation[#, 
                  Dynamic[
                   FEPrivate`FrontEndResource[
                   "WAStrings", "InterpretationAssumptions"]], "Tooltip"]& ],
                Appearance->None,
                BaselinePosition->Baseline,
                ButtonFunction:>(Quiet[
                   WolframAlpha[]]; Typeset`open$$ = True; 
                 WolframAlphaClient`Private`extrudeFromFastParse[
                  "density of water", 
                   Defer[
                    ChemicalData["Water", "Density"]], "Fast parse"]; 
                 Typeset`open$$ = False),
                ContentPadding->False,
                Evaluator->Automatic,
                Method->"Queued"], 
               ItemBox[
                ButtonBox[
                 PaneSelectorBox[{True->
                  TagBox[
                   TooltipBox[
                    
                    DynamicBox[FEPrivate`FrontEndResource[
                    "WABitmaps", "OrangeSquarePlus"]],
                    DynamicBox[
                    ToBoxes[
                    FEPrivate`FrontEndResource["WAStrings", "ShowAllResults"],
                     StandardForm]]],
                   Annotation[#, 
                    Dynamic[
                    FEPrivate`FrontEndResource[
                    "WAStrings", "ShowAllResults"]], "Tooltip"]& ], False->
                  TagBox[
                   TooltipBox[
                    
                    DynamicBox[FEPrivate`FrontEndResource[
                    "WABitmaps", "GraySquarePlus"]],
                    DynamicBox[
                    ToBoxes[
                    FEPrivate`FrontEndResource["WAStrings", "ShowAllResults"],
                     StandardForm]]],
                   Annotation[#, 
                    Dynamic[
                    FEPrivate`FrontEndResource[
                    "WAStrings", "ShowAllResults"]], "Tooltip"]& ]}, Dynamic[
                  WolframAlphaClient`Private`show$$],
                  ImageSize->All],
                 Appearance->None,
                 ButtonFunction:>(Quiet[
                    WolframAlpha[]]; If[
                    Or[
                    CurrentValue["OptionKey"], 
                    CurrentValue["AltKey"]], SelectionMove[
                    ButtonNotebook[], All, ButtonCell, AutoScroll -> False]; 
                    NotebookWrite[
                    ButtonNotebook[], 
                    Cell[
                    Typeset`newq$$, "WolframAlphaShort", FormatType -> 
                    "TextForm"], All], Typeset`open$$ = True; 
                    WolframAlphaClient`Private`extrudeFromFastParse[
                    "density of water", 
                    Defer[
                    ChemicalData["Water", "Density"]], "Fast parse"]; 
                    Typeset`open$$ = False]),
                 Evaluator->Automatic,
                 Method->"Queued"],
                Alignment->{Right, Top},
                StripOnInput->False]},
              {
               PaneBox[
                TagBox[
                 TooltipBox[
                  ButtonBox[
                   PaneSelectorBox[{False->
                    StyleBox[
                    RowBox[{"ChemicalData", "[", 
                    RowBox[{"\<\"Water\"\>", ",", " ", "\<\"Density\"\>"}], 
                    "]"}],
                    StripOnInput->False,
                    NumberMarks->False], True->
                    StyleBox[
                    RowBox[{"ChemicalData", "[", 
                    RowBox[{"\<\"Water\"\>", ",", " ", "\<\"Density\"\>"}], 
                    "]"}],
                    StripOnInput->False,
                    ShowSyntaxStyles->False,
                    NumberMarks->False,
                    FontColor->RGBColor[1, 0.5, 0]]}, Dynamic[
                    CurrentValue["MouseOver"]],
                    BaseStyle->{ShowStringCharacters -> True},
                    FrameMargins->0,
                    ImageSize->Automatic],
                   Alignment->Left,
                   Appearance->None,
                   BaseStyle->{},
                   ButtonFunction:>(SelectionMove[
                    ButtonNotebook[], All, ButtonCell]; NotebookWrite[
                    ButtonNotebook[], 
                    Cell[
                    BoxData[
                    RowBox[{"ChemicalData", "[", 
                    RowBox[{"\"Water\"", ",", " ", "\"Density\""}], "]"}]], 
                    "Input"], All]; SelectionMove[
                    ButtonNotebook[], After, CellContents]),
                   Evaluator->Automatic,
                   ImageSize->Automatic,
                   Method->"Preemptive"],
                  DynamicBox[
                   ToBoxes[
                    FEPrivate`FrontEndResource["WAStrings", "RemoveResults"], 
                    StandardForm]]],
                 Annotation[#, 
                  Dynamic[
                   FEPrivate`FrontEndResource["WAStrings", "RemoveResults"]], 
                  "Tooltip"]& ],
                AppearanceElements->{},
                BaseStyle->{ShowStringCharacters -> True, ScriptLevel -> 0},
                ImageSize->{Automatic, {1, 100}},
                Scrollbars->{False, Automatic}], "\[SpanFromLeft]", 
               "\[SpanFromLeft]"}
             },
             AutoDelete->False,
             BaselinePosition->{1, 1},
             FrameStyle->GrayLevel[0.85],
             GridBoxAlignment->{"Columns" -> {{Left}}},
             
             GridBoxDividers->{
              "Columns" -> {{False}}, "Rows" -> {False, {True}, False}},
             
             GridBoxItemSize->{
              "Columns" -> {{Automatic}}, "Rows" -> {{Automatic}}}],
            "Grid"],
           Alignment->Top,
           Background->Dynamic[
             FEPrivate`If[
              FEPrivate`And[
               FEPrivate`SameQ[
                FEPrivate`Head[Typeset`newq$$], String], 
               FEPrivate`UnsameQ[Typeset`q$$, Typeset`newq$$]], 
              RGBColor[1., 0.975, 0.95], 
              GrayLevel[1]]],
           BaselinePosition->Baseline,
           FrameStyle->GrayLevel[0.85],
           ImageSize->Automatic,
           RoundingRadius->5,
           StripOnInput->False],
          
          EventHandlerTag[{
           "MouseEntered" :> 
            FEPrivate`Set[WolframAlphaClient`Private`show$$, True], 
            "MouseExited" :> 
            FEPrivate`Set[WolframAlphaClient`Private`show$$, False], 
            PassEventsDown -> Automatic, PassEventsUp -> True}]],
         DynamicModuleValues:>{}]},
       {
        InterpretationBox[
         StyleBox[
          
          DynamicBox[FEPrivate`FrontEndResource[
           "FEExpressions", "NecklaceAnimator"][20]],
          AnimatorBoxOptions->{ImageSize->20}],
         Animator[Appearance -> "Necklace", ImageSize -> 20],
         BaseStyle->{Deployed -> True}]}
      },
      BaselinePosition->{1, 1},
      GridBoxAlignment->{"Columns" -> {{Left}}},
      GridBoxItemSize->{"Columns" -> {{Automatic}}, "Rows" -> {{Automatic}}}],
     "Column"]}, Dynamic[
     TrueQ[Typeset`open$$]],
    BaseStyle->{Deployed -> True},
    ImageSize->Automatic],
   DynamicModuleValues:>{}],
  BaseStyle->{Deployed -> True},
  DeleteWithContents->True,
  Editable->False,
  SelectWithContents->True]], "WolframAlphaShortInput"],

Cell[BoxData["1000.`"], "Output",
 CellChangeTimes->{3.5398107951600494`*^9}]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{
  RowBox[{"ChemicalData", "[", 
   RowBox[{"\"\<DryAir\>\"", ",", " ", "\"\<Density\>\""}], "]"}], 
  "\[AliasDelimiter]"}]], "Input",
 CellChangeTimes->{3.539811182842224*^9}],

Cell[BoxData["1.2754`"], "Output",
 CellChangeTimes->{3.5398108222065964`*^9}]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"ChemicalData", "[", 
  RowBox[{
  "\"\<DryAir\>\"", ",", " ", "\"\<Density\>\"", ",", " ", "\"\<Units\>\""}], 
  "]"}]], "Input",
 CellChangeTimes->{{3.5398111897606196`*^9, 3.5398111926417847`*^9}}],

Cell[BoxData["\<\"KilogramsPerCubicMeter\"\>"], "Output",
 CellChangeTimes->{3.539811194812908*^9}]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"ChemicalData", "[", 
  RowBox[{
  "\"\<DryAir\>\"", ",", " ", "\"\<Viscosity\>\"", ",", " ", 
   "\"\<Units\>\""}], "]"}]], "Input",
 CellChangeTimes->{{3.539811221973462*^9, 3.539811227231763*^9}}],

Cell[BoxData["\<\"PascalSeconds\"\>"], "Output",
 CellChangeTimes->{3.5398112284628334`*^9}]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 NamespaceBox["WolframAlphaQueryResults",
  DynamicModuleBox[{Typeset`q$$ = "units of a Pascal", Typeset`opts$$ = {
   AppearanceElements -> {"Extrusion", "Warnings", "Assumptions", "Pods"}, 
    Asynchronous -> All, 
    Method -> {
     "ExtrusionChosen" -> {"Result", "Result", 1, 1, "Content"}, 
      "Formats" -> {"cell", "minput", "moutput", "msound", "dataformats"}}}, 
   Typeset`elements$$ = {"Extrusion", "Warnings", "Assumptions", "Pods"}, 
   Typeset`pod1$$ = XMLElement[
   "pod", {"title" -> "Input interpretation", "scanner" -> "Identity", "id" -> 
     "Input", "position" -> "100", "error" -> "false", "numsubpods" -> "1"}, {
     XMLElement["subpod", {"title" -> ""}, {
       XMLElement["cell", {"compressed" -> False, "string" -> True}, {
         Cell[
          BoxData[
           FormBox[
            TagBox[
             TagBox[
              RowBox[{
                StyleBox[
                 TagBox[
                  RowBox[{
                    StyleBox[
                    "\"unit\"", LinebreakAdjustments -> {1, 100, 1, 0, 100}, 
                    LineIndent -> 0, {
                    FontFamily -> "Helvetica", FontSize -> Smaller}, 
                    StripOnInput -> False]}], Identity], 
                 LinebreakAdjustments -> {1, 100, 1, 0, 100}, LineIndent -> 0,
                  ZeroWidthTimes -> False], 
                StyleBox["\[Times]", 
                 GrayLevel[0.6]], 
                StyleBox[
                 RowBox[{
                   TagBox[
                    TagBox[
                    RowBox[{"1", "\[InvisibleSpace]", 
                    StyleBox[
                    RowBox[{}], FontFamily -> "Helvetica", FontSize -> 
                    Smaller], "\[InvisibleSpace]", "\[ThickSpace]", 
                    "\[InvisibleSpace]", 
                    TagBox[
                    StyleBox[
                    "\"Pa\"", FontFamily -> "Helvetica", FontSize -> Smaller],
                     HoldForm]}], Identity], #& , SyntaxForm -> Dot], " ", 
                   StyleBox[
                    
                    RowBox[{
                    "\"(\"", "\[NoBreak]", "\"pascal\"", "\[NoBreak]", 
                    "\")\""}], LinebreakAdjustments -> {1, 100, 1, 0, 100}, 
                    LineIndent -> 0, {
                    FontFamily -> "Helvetica", FontSize -> Smaller}, 
                    GrayLevel[0.6], StripOnInput -> False]}], 
                 LinebreakAdjustments -> {1, 100, 1, 0, 100}, LineIndent -> 0,
                  ZeroWidthTimes -> False]}], 
              CalculateScan`CommonFunctions`Private`crosswrapper, SyntaxForm -> 
              Dot], PolynomialForm[#, TraditionalOrder -> False]& ], 
            TraditionalForm]], "Output"]}], 
       XMLElement["dataformats", {}, {"plaintext"}]}]}], Typeset`pod2$$ = 
   XMLElement[
   "pod", {"title" -> "Result", "scanner" -> "Identity", "id" -> "Result", 
     "position" -> "200", "error" -> "false", "numsubpods" -> "1", "primary" -> 
     "true"}, {
     XMLElement["subpod", {"title" -> "", "primary" -> "true"}, {
       XMLElement["cell", {"compressed" -> False, "string" -> True}, {
         Cell[
          BoxData[
           FormBox[
            StyleBox[
             RowBox[{
               TagBox[
                TagBox[
                 RowBox[{
                   TagBox["1", 
                    Global`TagBoxWrapper["StringBoxes" -> "1"]], 
                   "\[InvisibleSpace]", 
                   StyleBox[
                    RowBox[{}], FontFamily -> "Helvetica", FontSize -> 
                    Smaller], "\[InvisibleSpace]", "\[ThickSpace]", 
                   "\[InvisibleSpace]", 
                   StyleBox[
                    RowBox[{"\"Pa\"", "\[ThinSpace]", "\"units\""}], 
                    FontFamily -> "Helvetica", FontSize -> Smaller]}], 
                 Identity], #& , SyntaxForm -> Dot], " ", 
               StyleBox[
                
                RowBox[{
                 "\"(\"", "\[NoBreak]", "\"pascal unit\"", "\[NoBreak]", 
                  "\")\""}], LinebreakAdjustments -> {1, 100, 1, 0, 100}, 
                LineIndent -> 0, {
                FontFamily -> "Helvetica", FontSize -> Smaller}, 
                GrayLevel[0.6], StripOnInput -> False]}], 
             LinebreakAdjustments -> {1, 100, 1, 0, 100}, LineIndent -> 0, 
             ZeroWidthTimes -> False], TraditionalForm]], "Output"]}], 
       XMLElement[
       "dataformats", {}, {
        "plaintext,computabledata,formatteddata,numberdata,quantitydata"}]}]}]\
, Typeset`aux1$$ = {True, False, {False}, True}, Typeset`aux2$$ = {
   True, False, {False}, True}, Typeset`asyncpods$$ = {}, Typeset`nonpods$$ = {
    XMLElement["assumptions", {"count" -> "2"}, {
      XMLElement[
      "assumption", {
       "type" -> "ListOrTimes", "template" -> 
        "Assuming ${desc1}. Use ${desc2} instead", "count" -> "2"}, {
        XMLElement[
        "value", {
         "name" -> "Times", "desc" -> "multiplication", "input" -> 
          "ListOrTimes_Times"}, {}], 
        XMLElement[
        "value", {
         "name" -> "List", "desc" -> "a list", "input" -> 
          "ListOrTimes_List"}, {}]}], 
      XMLElement[
      "assumption", {
       "type" -> "Unit", "word" -> "Pascal", "template" -> 
        "Assuming ${desc1} for \"${word}\". Use ${desc2} instead", "count" -> 
        "2"}, {
        XMLElement[
        "value", {
         "name" -> "Pascals", "desc" -> "pascals", "input" -> 
          "UnitClash_*Pascal.*Pascals--"}, {}], 
        XMLElement[
        "value", {
         "name" -> "PascalsDifference", "desc" -> "pascals difference", 
          "input" -> "UnitClash_*Pascal.*PascalsDifference--"}, {}]}]}]}, 
   Typeset`initdone$$ = True, Typeset`queryinfo$$ = {
   "success" -> "true", "error" -> "false", "numpods" -> "2", "datatypes" -> 
    "Math", "timedout" -> "", "timedoutpods" -> "", "timing" -> "1.048", 
    "parsetiming" -> "0.513", "parsetimedout" -> "false", "recalculate" -> "",
     "id" -> "MSPa32481a0c4if3941262i30000520icb8h7fi982c0", "host" -> 
    "http://www4b.wolframalpha.com", "server" -> "3", "related" -> 
    "http://www4b.wolframalpha.com/api/v2/relatedQueries.jsp?id=\
MSPa32491a0c4if3941262i300002dc6cbb29f97hcb6&s=3", "version" -> "2.5"}, 
   Typeset`sessioninfo$$ = {
   "TimeZone" -> -5., 
    "Date" -> {2012, 3, 3, 19, 54, 24.4608921`9.1410472156081}, "Line" -> 21, 
    "SessionID" -> 23198385670621549241}, Typeset`showpods$$ = {1, 2}, 
   Typeset`failedpods$$ = {}, Typeset`chosen$$ = {
   "Result", "Result", 1, 1, "Content"}, Typeset`open$$ = False, 
   Typeset`newq$$ = "units of a Pascal"}, 
   DynamicBox[ToBoxes[
     AlphaIntegration`FormatAlphaResults[
      Dynamic[{
       1, {Typeset`pod1$$, Typeset`pod2$$}, {Typeset`aux1$$, Typeset`aux2$$}, 
        Typeset`chosen$$, Typeset`open$$, Typeset`elements$$, Typeset`q$$, 
        Typeset`opts$$, Typeset`nonpods$$, Typeset`queryinfo$$, 
        Typeset`sessioninfo$$, Typeset`showpods$$, Typeset`failedpods$$, 
        Typeset`newq$$}]], StandardForm],
    ImageSizeCache->{140., {28., 18.}},
    TrackedSymbols:>{Typeset`showpods$$, Typeset`failedpods$$}],
   DynamicModuleValues:>{},
   Initialization:>If[
     Not[Typeset`initdone$$], WolframAlphaClient`Private`doAsyncUpdates[
       Hold[{Typeset`pod1$$, Typeset`pod2$$}], Typeset`asyncpods$$, 
       Dynamic[Typeset`failedpods$$]]; Typeset`asyncpods$$ = {}; 
     Typeset`initdone$$ = True],
   SynchronousInitialization->False],
  BaseStyle->{Deployed -> True},
  DeleteWithContents->True,
  Editable->False,
  SelectWithContents->True]], "WolframAlphaShortInput"],

Cell[BoxData[
 InterpretationBox[
  FrameBox[
   StyleBox[
    FormBox[
     StyleBox[
      RowBox[{
      "1", "\[InvisibleSpace]", "\[InvisibleSpace]", "\[ThickSpace]", 
       "\[InvisibleSpace]", 
       StyleBox[
        RowBox[{"\<\"Pa\"\>", "\[ThinSpace]", "\<\"units\"\>"}],
        FontFamily->"Helvetica",
        FontSize->Smaller], " ", 
       StyleBox[
        RowBox[{"\<\"(\"\>", "\[NoBreak]", "\<\"pascal unit\"\>", 
         "\[NoBreak]", "\<\")\"\>"}],
        StripOnInput->False,
        LineIndent->0,
        LinebreakAdjustments->{1, 100, 1, 0, 100},
        LineColor->GrayLevel[0.6],
        FrontFaceColor->GrayLevel[0.6],
        BackFaceColor->GrayLevel[0.6],
        GraphicsColor->GrayLevel[0.6],
        FontFamily->"Helvetica",
        FontSize->Smaller,
        FontColor->GrayLevel[0.6]]}],
      ZeroWidthTimes->False,
      LineIndent->0,
      LinebreakAdjustments->{1, 100, 1, 0, 100}],
     TraditionalForm], "Output",
    ScriptLevel->0,
    FontFamily->"Times",
    FontSize->14,
    Background->None],
   BaseStyle->{Plain},
   FrameMargins->10,
   FrameStyle->GrayLevel[0.85],
   RoundingRadius->5,
   StripOnInput->False],
  WolframAlphaResult[
  "units of a Pascal", {{"Result", 1}, "Content"}]]], "Output",
 CellChangeTimes->{{3.5398112433826866`*^9, 3.5398112657019634`*^9}}]
}, Open  ]],

Cell[BoxData[
 RowBox[{"(*", " ", 
  RowBox[{"note", ":", " ", 
   RowBox[{"pascal", " ", "is", " ", "1", " ", 
    RowBox[{"kg", "/", "m"}], " ", 
    RowBox[{"s", "^", "2."}], " ", "Mathematica", " ", "giving", " ", "units",
     " ", "all", " ", "in", " ", "kg", " ", "based", " ", 
    RowBox[{"measures", "."}]}]}], " ", "*)"}]], "Input",
 CellChangeTimes->{{3.539811353646993*^9, 3.539811407716086*^9}}],

Cell[CellGroupData[{

Cell[BoxData[
 NamespaceBox["WolframAlphaQueryResults",
  DynamicModuleBox[{Typeset`q$$ = "\"convert 1 atm (atmosphere) to pascals\"",
    Typeset`opts$$ = {
   AppearanceElements -> {"Extrusion", "Warnings", "Assumptions", "Pods"}, 
    Asynchronous -> All, 
    Method -> {
     "ExtrusionChosen" -> {"Result", "Result", 1, 1, "Content"}, 
      "Formats" -> {"cell", "minput", "moutput", "msound", "dataformats"}}}, 
   Typeset`elements$$ = {"Extrusion", "Warnings", "Assumptions", "Pods"}, 
   Typeset`pod1$$ = XMLElement[
   "pod", {"title" -> "Input interpretation", "scanner" -> "Identity", "id" -> 
     "Input", "position" -> "100", "error" -> "false", "numsubpods" -> "1"}, {
     XMLElement["subpod", {"title" -> ""}, {
       XMLElement["cell", {"compressed" -> False, "string" -> True}, {
         Cell[
          BoxData[
           FormBox[
            TagBox[
             TagBox[
              TemplateBox[{
                StyleBox[
                "\"convert \"", LinebreakAdjustments -> {1, 100, 1, 0, 100}, 
                 LineIndent -> 0, 
                 GrayLevel[0.6], StripOnInput -> False], 
                TagBox[
                 TagBox[
                  RowBox[{
                    StyleBox[
                    RowBox[{
                    TagBox[
                    TagBox[
                    RowBox[{"1", "\[InvisibleSpace]", 
                    StyleBox[
                    RowBox[{}], FontFamily -> "Helvetica", FontSize -> 
                    Smaller], "\[InvisibleSpace]", "\[ThickSpace]", 
                    "\[InvisibleSpace]", 
                    TagBox[
                    StyleBox[
                    "\"atm\"", FontFamily -> "Helvetica", FontSize -> 
                    Smaller], HoldForm]}], Identity], #& , SyntaxForm -> Dot],
                     " ", 
                    StyleBox[
                    
                    RowBox[{
                    "\"(\"", "\[NoBreak]", "\"atmosphere\"", "\[NoBreak]", 
                    "\")\""}], LinebreakAdjustments -> {1, 100, 1, 0, 100}, 
                    LineIndent -> 0, {
                    FontFamily -> "Helvetica", FontSize -> Smaller}, 
                    GrayLevel[0.6], StripOnInput -> False]}], 
                    LinebreakAdjustments -> {1, 100, 1, 0, 100}, LineIndent -> 
                    0, ZeroWidthTimes -> False], " ", 
                    StyleBox[
                    TagBox[
                    RowBox[{
                    TagBox[
                    StyleBox[
                    "\"atm\"", FontFamily -> "Helvetica", FontSize -> 
                    Smaller], HoldForm], " ", 
                    StyleBox[
                    
                    RowBox[{
                    "\"(\"", "\[NoBreak]", "\"atmosphere\"", "\[NoBreak]", 
                    "\")\""}], LinebreakAdjustments -> {1, 100, 1, 0, 100}, 
                    LineIndent -> 0, {
                    FontFamily -> "Helvetica", FontSize -> Smaller}, 
                    GrayLevel[0.6], StripOnInput -> False]}], Identity], 
                    LinebreakAdjustments -> {1, 100, 1, 0, 100}, LineIndent -> 
                    0, ZeroWidthTimes -> False]}], 
                  CalculateScan`CommonFunctions`Private`crosswrapper, 
                  SyntaxForm -> Dot], HoldForm], 
                StyleBox[
                "\" to \"", LinebreakAdjustments -> {1, 100, 1, 0, 100}, 
                 LineIndent -> 0, 
                 GrayLevel[0.6], StripOnInput -> False], 
                TagBox[
                 StyleBox[
                 "\"pascals\"", FontFamily -> "Helvetica", FontSize -> 
                  Smaller, StripOnInput -> False], HoldForm]}, "Row", 
               DisplayFunction -> (
                RowBox[{#, "\[InvisibleSpace]", #2, "\[InvisibleSpace]", #3, 
                  "\[InvisibleSpace]", #4}]& ), 
               InterpretationFunction -> (RowBox[{
                  TagBox[
                   StyleBox[
                   "Row", FontFamily -> "Bitstream Vera Sans", 
                    FontSize -> -1 + Inherited], HoldForm], "[", 
                  RowBox[{"{", 
                    RowBox[{#, ",", #2, ",", #3, ",", #4}], "}"}], 
                  "]"}]& )], #& , SyntaxForm -> Plus], 
             PolynomialForm[#, TraditionalOrder -> False]& ], 
            TraditionalForm]], "Output"]}], 
       XMLElement["dataformats", {}, {"plaintext"}]}]}], Typeset`pod2$$ = 
   XMLElement[
   "pod", {"title" -> "Result", "scanner" -> "Identity", "id" -> "Result", 
     "position" -> "200", "error" -> "false", "numsubpods" -> "1", "primary" -> 
     "true"}, {
     XMLElement["subpod", {"title" -> "", "primary" -> "true"}, {
       XMLElement["cell", {"compressed" -> False, "string" -> True}, {
         Cell[
          BoxData[
           FormBox[
            StyleBox[
             RowBox[{
               TagBox[
                TagBox[
                 RowBox[{
                   TagBox[
                    RowBox[{"1.027", " ", 
                    SuperscriptBox["10", "10"]}], 
                    Global`TagBoxWrapper[
                    "StringBoxes" -> RowBox[{"1.027", "\[Times]", 
                    SuperscriptBox["10", "10"]}]], SyntaxForm -> CenterDot], 
                   "\[InvisibleSpace]", 
                   StyleBox[
                    RowBox[{}], FontFamily -> "Helvetica", FontSize -> 
                    Smaller], "\[InvisibleSpace]", "\[ThickSpace]", 
                   "\[InvisibleSpace]", 
                   StyleBox[
                    RowBox[{
                    SuperscriptBox["\"Pa\"", "2"]}], FontFamily -> 
                    "Helvetica", FontSize -> Smaller]}], Identity], #& , 
                SyntaxForm -> Dot], " ", 
               StyleBox[
                
                RowBox[{
                 "\"(\"", "\[NoBreak]", "\"pascals squared\"", "\[NoBreak]", 
                  "\")\""}], LinebreakAdjustments -> {1, 100, 1, 0, 100}, 
                LineIndent -> 0, {
                FontFamily -> "Helvetica", FontSize -> Smaller}, 
                GrayLevel[0.6], StripOnInput -> False]}], 
             LinebreakAdjustments -> {1, 100, 1, 0, 100}, LineIndent -> 0, 
             ZeroWidthTimes -> False], TraditionalForm]], "Output"]}], 
       XMLElement[
       "dataformats", {}, {
        "plaintext,computabledata,formatteddata,numberdata,quantitydata"}]}]}]\
, Typeset`pod3$$ = XMLElement[
   "pod", {"title" -> "Interpretation", "scanner" -> "Unit", "id" -> 
     "Interpretation", "position" -> "300", "error" -> "false", "numsubpods" -> 
     "1"}, {
     XMLElement["subpod", {"title" -> ""}, {
       XMLElement["cell", {"compressed" -> False, "string" -> True}, {
         Cell[
          BoxData[
           FormBox[
            StyleBox["\"(no standard named quantities)\"", 
             GrayLevel[0.6], StripOnInput -> False], TraditionalForm]], 
          "Output"]}], 
       XMLElement[
       "dataformats", {}, {"plaintext,computabledata,formatteddata"}]}]}], 
   Typeset`pod4$$ = XMLElement[
   "pod", {"title" -> "Basic unit dimensions", "scanner" -> "Unit", "id" -> 
     "BasicUnitDimensions", "position" -> "400", "error" -> "false", 
     "numsubpods" -> "1"}, {
     XMLElement["subpod", {"title" -> ""}, {
       XMLElement["cell", {"compressed" -> False, "string" -> True}, {
         Cell[
          BoxData[
           FormBox[
            TagBox[
             RowBox[{
               
               TemplateBox[{"\"[mass]\"", "2"}, "Superscript", SyntaxForm -> 
                SuperscriptBox], " ", 
               TemplateBox[{"\"[length]\"", 
                 RowBox[{"-", "2"}]}, "Superscript", SyntaxForm -> 
                SuperscriptBox], " ", 
               TemplateBox[{"\"[time]\"", 
                 RowBox[{"-", "4"}]}, "Superscript", SyntaxForm -> 
                SuperscriptBox]}], HoldForm], TraditionalForm]], "Output"]}], 
       XMLElement[
       "dataformats", {}, {
        "plaintext,computabledata,formatteddata,formuladata"}]}]}], 
   Typeset`aux1$$ = {True, False, {False}, True}, Typeset`aux2$$ = {
   True, False, {False}, True}, Typeset`aux3$$ = {True, False, {False}, True},
    Typeset`aux4$$ = {True, False, {False}, True}, Typeset`asyncpods$$ = {}, 
   Typeset`nonpods$$ = {
    XMLElement["assumptions", {"count" -> "3"}, {
      XMLElement[
      "assumption", {
       "type" -> "Unit", "word" -> "atm", "template" -> 
        "Assuming ${desc1} for \"${word}\". Use ${desc2} instead", "count" -> 
        "2"}, {
        XMLElement[
        "value", {
         "name" -> "Atmospheres", "desc" -> "atmospheres", "input" -> 
          "UnitClash_*atm.*Atmospheres--"}, {}], 
        XMLElement[
        "value", {
         "name" -> "AtmospheresDifference", "desc" -> 
          "atmospheres difference", "input" -> 
          "UnitClash_*atm.*AtmospheresDifference--"}, {}]}], 
      XMLElement[
      "assumption", {
       "type" -> "Unit", "word" -> "atmosphere", "template" -> 
        "Assuming ${desc1} for \"${word}\". Use ${desc2} instead", "count" -> 
        "2"}, {
        XMLElement[
        "value", {
         "name" -> "Atmospheres", "desc" -> "atmospheres", "input" -> 
          "UnitClash_*atmosphere.*Atmospheres--"}, {}], 
        XMLElement[
        "value", {
         "name" -> "AtmospheresDifference", "desc" -> 
          "atmospheres difference", "input" -> 
          "UnitClash_*atmosphere.*AtmospheresDifference--"}, {}]}], 
      XMLElement[
      "assumption", {
       "type" -> "Unit", "word" -> "pascals", "template" -> 
        "Assuming ${desc1} for \"${word}\". Use ${desc2} instead", "count" -> 
        "2"}, {
        XMLElement[
        "value", {
         "name" -> "Pascals", "desc" -> "pascals", "input" -> 
          "UnitClash_*pascals.*Pascals--"}, {}], 
        XMLElement[
        "value", {
         "name" -> "PascalsDifference", "desc" -> "pascals difference", 
          "input" -> "UnitClash_*pascals.*PascalsDifference--"}, {}]}]}]}, 
   Typeset`initdone$$ = True, Typeset`queryinfo$$ = {
   "success" -> "true", "error" -> "false", "numpods" -> "4", "datatypes" -> 
    "", "timedout" -> "", "timedoutpods" -> "", "timing" -> "0.837", 
    "parsetiming" -> "0.338", "parsetimedout" -> "false", "recalculate" -> "",
     "id" -> "MSPa1061a0c5gigee3a3507000033ib0a1hig53gf8g", "host" -> 
    "http://www4b.wolframalpha.com", "server" -> "60", "related" -> 
    "http://www4b.wolframalpha.com/api/v2/relatedQueries.jsp?id=\
MSPa1071a0c5gigee3a3507000037d70ae0gcbihbcf&s=60", "version" -> "2.5"}, 
   Typeset`sessioninfo$$ = {
   "TimeZone" -> -5., 
    "Date" -> {2012, 3, 3, 23, 8, 33.5331809`9.278049650963666}, "Line" -> 38,
     "SessionID" -> 23198385670621549241}, Typeset`showpods$$ = {1, 2, 3, 4}, 
   Typeset`failedpods$$ = {}, Typeset`chosen$$ = {
   "Result", "Result", 1, 1, "Content"}, Typeset`open$$ = False, 
   Typeset`newq$$ = "\"convert 1 atm (atmosphere) to pascals\""}, 
   DynamicBox[ToBoxes[
     AlphaIntegration`FormatAlphaResults[
      Dynamic[{
       1, {Typeset`pod1$$, Typeset`pod2$$, Typeset`pod3$$, Typeset`pod4$$}, {
        Typeset`aux1$$, Typeset`aux2$$, Typeset`aux3$$, Typeset`aux4$$}, 
        Typeset`chosen$$, Typeset`open$$, Typeset`elements$$, Typeset`q$$, 
        Typeset`opts$$, Typeset`nonpods$$, Typeset`queryinfo$$, 
        Typeset`sessioninfo$$, Typeset`showpods$$, Typeset`failedpods$$, 
        Typeset`newq$$}]], StandardForm],
    ImageSizeCache->{277., {28., 18.}},
    TrackedSymbols:>{Typeset`showpods$$, Typeset`failedpods$$}],
   DynamicModuleValues:>{},
   Initialization:>If[
     Not[Typeset`initdone$$], WolframAlphaClient`Private`doAsyncUpdates[
       Hold[{Typeset`pod1$$, Typeset`pod2$$, Typeset`pod3$$, Typeset`pod4$$}],
        Typeset`asyncpods$$, 
       Dynamic[Typeset`failedpods$$]]; Typeset`asyncpods$$ = {}; 
     Typeset`initdone$$ = True],
   SynchronousInitialization->False],
  BaseStyle->{Deployed -> True},
  DeleteWithContents->True,
  Editable->False,
  SelectWithContents->True]], "WolframAlphaShortInput"],

Cell[BoxData[
 InterpretationBox[
  FrameBox[
   StyleBox[
    FormBox[
     StyleBox[
      RowBox[{
       RowBox[{"1.027", " ", 
        SuperscriptBox["10", "10"]}], "\[InvisibleSpace]", 
       "\[InvisibleSpace]", "\[ThickSpace]", "\[InvisibleSpace]", 
       StyleBox[
        SuperscriptBox["\<\"Pa\"\>", "2"],
        FontFamily->"Helvetica",
        FontSize->Smaller], " ", 
       StyleBox[
        RowBox[{"\<\"(\"\>", "\[NoBreak]", "\<\"pascals squared\"\>", 
         "\[NoBreak]", "\<\")\"\>"}],
        StripOnInput->False,
        LineIndent->0,
        LinebreakAdjustments->{1, 100, 1, 0, 100},
        LineColor->GrayLevel[0.6],
        FrontFaceColor->GrayLevel[0.6],
        BackFaceColor->GrayLevel[0.6],
        GraphicsColor->GrayLevel[0.6],
        FontFamily->"Helvetica",
        FontSize->Smaller,
        FontColor->GrayLevel[0.6]]}],
      ZeroWidthTimes->False,
      LineIndent->0,
      LinebreakAdjustments->{1, 100, 1, 0, 100}],
     TraditionalForm], "Output",
    ScriptLevel->0,
    FontFamily->"Times",
    FontSize->14,
    Background->None],
   BaseStyle->{Plain},
   FrameMargins->10,
   FrameStyle->GrayLevel[0.85],
   RoundingRadius->5,
   StripOnInput->False],
  WolframAlphaResult[
  "\"convert 1 atm (atmosphere) to pascals\"", {{"Result", 1}, 
    "Content"}]]], "Output",
 CellChangeTimes->{{3.5398226595916567`*^9, 3.5398226766256304`*^9}, 
   3.5398227786874685`*^9, 3.5398229145072365`*^9}]
}, Open  ]],

Cell[BoxData[""], "Input",
 CellChangeTimes->{{3.5398226424996786`*^9, 3.5398226436677456`*^9}}],

Cell[BoxData[""], "Input",
 CellChangeTimes->{{3.539822846448344*^9, 3.5398228583340235`*^9}}],

Cell[CellGroupData[{

Cell[BoxData[
 NamespaceBox["WolframAlphaQueryResults",
  DynamicModuleBox[{Typeset`q$$ = "\"numeric value of 1 atm in pascals\"", 
   Typeset`opts$$ = {
   AppearanceElements -> {"Extrusion", "Warnings", "Assumptions", "Pods"}, 
    Asynchronous -> All, 
    Method -> {
     "ExtrusionChosen" -> {"Result", "Result", 1, 1, "Content"}, 
      "Formats" -> {"cell", "minput", "moutput", "msound", "dataformats"}}}, 
   Typeset`elements$$ = {"Extrusion", "Warnings", "Assumptions", "Pods"}, 
   Typeset`pod1$$ = XMLElement[
   "pod", {"title" -> "Input interpretation", "scanner" -> "Identity", "id" -> 
     "Input", "position" -> "100", "error" -> "false", "numsubpods" -> "1"}, {
     XMLElement["subpod", {"title" -> ""}, {
       XMLElement["cell", {"compressed" -> False, "string" -> True}, {
         Cell[
          BoxData[
           FormBox[
            TagBox[
             TagBox[
              TemplateBox[{
                StyleBox[
                "\"convert \"", LinebreakAdjustments -> {1, 100, 1, 0, 100}, 
                 LineIndent -> 0, 
                 GrayLevel[0.6], StripOnInput -> False], 
                TagBox[
                 StyleBox[
                  RowBox[{
                    TagBox[
                    TagBox[
                    RowBox[{"1", "\[InvisibleSpace]", 
                    StyleBox[
                    RowBox[{}], FontFamily -> "Helvetica", FontSize -> 
                    Smaller], "\[InvisibleSpace]", "\[ThickSpace]", 
                    "\[InvisibleSpace]", 
                    TagBox[
                    StyleBox[
                    "\"atm\"", FontFamily -> "Helvetica", FontSize -> 
                    Smaller], HoldForm]}], Identity], #& , SyntaxForm -> Dot],
                     " ", 
                    StyleBox[
                    
                    RowBox[{
                    "\"(\"", "\[NoBreak]", "\"atmosphere\"", "\[NoBreak]", 
                    "\")\""}], LinebreakAdjustments -> {1, 100, 1, 0, 100}, 
                    LineIndent -> 0, {
                    FontFamily -> "Helvetica", FontSize -> Smaller}, 
                    GrayLevel[0.6], StripOnInput -> False]}], 
                  LinebreakAdjustments -> {1, 100, 1, 0, 100}, LineIndent -> 
                  0, ZeroWidthTimes -> False], HoldForm], 
                StyleBox[
                "\" to \"", LinebreakAdjustments -> {1, 100, 1, 0, 100}, 
                 LineIndent -> 0, 
                 GrayLevel[0.6], StripOnInput -> False], 
                TagBox[
                 StyleBox[
                 "\"pascals\"", FontFamily -> "Helvetica", FontSize -> 
                  Smaller, StripOnInput -> False], HoldForm]}, "Row", 
               DisplayFunction -> (
                RowBox[{#, "\[InvisibleSpace]", #2, "\[InvisibleSpace]", #3, 
                  "\[InvisibleSpace]", #4}]& ), 
               InterpretationFunction -> (RowBox[{
                  TagBox[
                   StyleBox[
                   "Row", FontFamily -> "Bitstream Vera Sans", 
                    FontSize -> -1 + Inherited], HoldForm], "[", 
                  RowBox[{"{", 
                    RowBox[{#, ",", #2, ",", #3, ",", #4}], "}"}], 
                  "]"}]& )], #& , SyntaxForm -> Plus], 
             PolynomialForm[#, TraditionalOrder -> False]& ], 
            TraditionalForm]], "Output"]}], 
       XMLElement["dataformats", {}, {"plaintext"}]}]}], Typeset`pod2$$ = 
   XMLElement[
   "pod", {"title" -> "Result", "scanner" -> "Identity", "id" -> "Result", 
     "position" -> "200", "error" -> "false", "numsubpods" -> "1", "primary" -> 
     "true"}, {
     XMLElement["subpod", {"title" -> "", "primary" -> "true"}, {
       XMLElement["cell", {"compressed" -> False, "string" -> True}, {
         Cell[
          BoxData[
           FormBox[
            StyleBox[
             RowBox[{
               TagBox[
                TagBox[
                 RowBox[{
                   TagBox["101\[ThinSpace]325", 
                    Global`TagBoxWrapper["StringBoxes" -> "101325"]], 
                   "\[InvisibleSpace]", 
                   StyleBox[
                    RowBox[{}], FontFamily -> "Helvetica", FontSize -> 
                    Smaller], "\[InvisibleSpace]", "\[ThickSpace]", 
                   "\[InvisibleSpace]", 
                   StyleBox[
                   "\"Pa\"", FontFamily -> "Helvetica", FontSize -> 
                    Smaller]}], Identity], #& , SyntaxForm -> Dot], " ", 
               StyleBox[
                
                RowBox[{
                 "\"(\"", "\[NoBreak]", "\"pascals\"", "\[NoBreak]", 
                  "\")\""}], LinebreakAdjustments -> {1, 100, 1, 0, 100}, 
                LineIndent -> 0, {
                FontFamily -> "Helvetica", FontSize -> Smaller}, 
                GrayLevel[0.6], StripOnInput -> False]}], 
             LinebreakAdjustments -> {1, 100, 1, 0, 100}, LineIndent -> 0, 
             ZeroWidthTimes -> False], TraditionalForm]], "Output"]}], 
       XMLElement[
       "dataformats", {}, {
        "plaintext,computabledata,formatteddata,numberdata,quantitydata"}]}]}]\
, Typeset`pod3$$ = XMLElement[
   "pod", {"title" -> "Additional conversions", "scanner" -> "Unit", "id" -> 
     "AdditionalConversion", "position" -> "300", "error" -> "false", 
     "numsubpods" -> "5"}, {
     XMLElement["subpod", {"title" -> ""}, {
       XMLElement["cell", {"compressed" -> False, "string" -> True}, {
         Cell[
          BoxData[
           FormBox[
            StyleBox[
             RowBox[{
               TagBox[
                TagBox[
                 RowBox[{
                   TagBox["101.3", 
                    Global`TagBoxWrapper["StringBoxes" -> "101.3"]], 
                   "\[InvisibleSpace]", 
                   StyleBox[
                    RowBox[{}], FontFamily -> "Helvetica", FontSize -> 
                    Smaller], "\[InvisibleSpace]", "\[ThickSpace]", 
                   "\[InvisibleSpace]", 
                   StyleBox[
                   "\"kPa\"", FontFamily -> "Helvetica", FontSize -> 
                    Smaller]}], Identity], #& , SyntaxForm -> Dot], " ", 
               StyleBox[
                
                RowBox[{
                 "\"(\"", "\[NoBreak]", "\"kilopascals\"", "\[NoBreak]", 
                  "\")\""}], LinebreakAdjustments -> {1, 100, 1, 0, 100}, 
                LineIndent -> 0, {
                FontFamily -> "Helvetica", FontSize -> Smaller}, 
                GrayLevel[0.6], StripOnInput -> False]}], 
             LinebreakAdjustments -> {1, 100, 1, 0, 100}, LineIndent -> 0, 
             ZeroWidthTimes -> False], TraditionalForm]], "Output"]}], 
       XMLElement[
       "dataformats", {}, {
        "plaintext,computabledata,formatteddata,numberdata,quantitydata"}]}], 
     XMLElement["subpod", {"title" -> ""}, {
       XMLElement["cell", {"compressed" -> False, "string" -> True}, {
         Cell[
          BoxData[
           FormBox[
            StyleBox[
             RowBox[{
               TagBox[
                TagBox[
                 RowBox[{
                   TagBox["0.1013", 
                    Global`TagBoxWrapper["StringBoxes" -> "0.1013"]], 
                   "\[InvisibleSpace]", 
                   StyleBox[
                    RowBox[{}], FontFamily -> "Helvetica", FontSize -> 
                    Smaller], "\[InvisibleSpace]", "\[ThickSpace]", 
                   "\[InvisibleSpace]", 
                   StyleBox[
                   "\"MPa\"", FontFamily -> "Helvetica", FontSize -> 
                    Smaller]}], Identity], #& , SyntaxForm -> Dot], " ", 
               StyleBox[
                
                RowBox[{
                 "\"(\"", "\[NoBreak]", "\"megapascals\"", "\[NoBreak]", 
                  "\")\""}], LinebreakAdjustments -> {1, 100, 1, 0, 100}, 
                LineIndent -> 0, {
                FontFamily -> "Helvetica", FontSize -> Smaller}, 
                GrayLevel[0.6], StripOnInput -> False]}], 
             LinebreakAdjustments -> {1, 100, 1, 0, 100}, LineIndent -> 0, 
             ZeroWidthTimes -> False], TraditionalForm]], "Output"]}], 
       XMLElement[
       "dataformats", {}, {
        "plaintext,computabledata,formatteddata,numberdata,quantitydata"}]}], 
     XMLElement["subpod", {"title" -> ""}, {
       XMLElement["cell", {"compressed" -> False, "string" -> True}, {
         Cell[
          BoxData[
           FormBox[
            StyleBox[
             RowBox[{
               TagBox[
                TagBox[
                 RowBox[{
                   TagBox["101\[ThinSpace]325", 
                    Global`TagBoxWrapper["StringBoxes" -> "101325"]], 
                   "\[InvisibleSpace]", 
                   StyleBox[
                    RowBox[{}], FontFamily -> "Helvetica", FontSize -> 
                    Smaller], "\[InvisibleSpace]", "\[ThickSpace]", 
                   "\[InvisibleSpace]", 
                   StyleBox[
                    
                    RowBox[{
                    "\"N\"", "\[InvisibleSpace]", "\"/\"", 
                    "\[InvisibleSpace]", 
                    SuperscriptBox["\"m\"", "2"]}], FontFamily -> "Helvetica",
                     FontSize -> Smaller]}], Identity], #& , SyntaxForm -> 
                Dot], " ", 
               StyleBox[
                
                RowBox[{
                 "\"(\"", "\[NoBreak]", "\"newtons per square meter\"", 
                  "\[NoBreak]", "\")\""}], 
                LinebreakAdjustments -> {1, 100, 1, 0, 100}, LineIndent -> 
                0, {FontFamily -> "Helvetica", FontSize -> Smaller}, 
                GrayLevel[0.6], StripOnInput -> False]}], 
             LinebreakAdjustments -> {1, 100, 1, 0, 100}, LineIndent -> 0, 
             ZeroWidthTimes -> False], TraditionalForm]], "Output"]}], 
       XMLElement[
       "dataformats", {}, {
        "plaintext,computabledata,formatteddata,numberdata,quantitydata"}]}], 
     XMLElement["subpod", {"title" -> ""}, {
       XMLElement["cell", {"compressed" -> False, "string" -> True}, {
         Cell[
          BoxData[
           FormBox[
            TagBox[
             GridBox[{{
                StyleBox[
                 RowBox[{
                   TagBox[
                    TagBox[
                    RowBox[{
                    TagBox["1.033", 
                    Global`TagBoxWrapper["StringBoxes" -> "1.033"]], 
                    "\[InvisibleSpace]", 
                    StyleBox[
                    RowBox[{}], FontFamily -> "Helvetica", FontSize -> 
                    Smaller], "\[InvisibleSpace]", "\[ThickSpace]", 
                    "\[InvisibleSpace]", 
                    StyleBox[
                    "\"at\"", FontFamily -> "Helvetica", FontSize -> 
                    Smaller]}], Identity], #& , SyntaxForm -> Dot], " ", 
                   StyleBox[
                    
                    RowBox[{
                    "\"(\"", "\[NoBreak]", "\"technical atmospheres\"", 
                    "\[NoBreak]", "\")\""}], 
                    LinebreakAdjustments -> {1, 100, 1, 0, 100}, LineIndent -> 
                    0, {FontFamily -> "Helvetica", FontSize -> Smaller}, 
                    GrayLevel[0.6], StripOnInput -> False]}], 
                 LinebreakAdjustments -> {1, 100, 1, 0, 100}, LineIndent -> 0,
                  ZeroWidthTimes -> False]}, {
                TemplateBox[{"\" \"", 
                  StyleBox[
                   
                   RowBox[{
                    "\"(\"", "\[NoBreak]", "\"unit officially deprecated\"", 
                    "\[NoBreak]", "\")\""}], 
                   LinebreakAdjustments -> {1, 100, 1, 0, 100}, LineIndent -> 
                   0, {FontFamily -> "Verdana", FontSize -> 10}, 
                   GrayLevel[0.5], StripOnInput -> False]}, "Row", 
                 DisplayFunction -> (RowBox[{#, "\[InvisibleSpace]", #2}]& ), 
                 InterpretationFunction -> (RowBox[{
                    StyleBox[
                    "Row", FontFamily -> "Bitstream Vera Sans", 
                    FontSize -> -1 + Inherited], "[", 
                    RowBox[{"{", 
                    RowBox[{#, ",", #2}], "}"}], "]"}]& )]}}, 
              GridBoxAlignment -> {"Columns" -> {{Left}}}, 
              AllowScriptLevelChange -> False, 
              GridBoxItemSize -> {
               "Columns" -> {{Automatic}}, "Rows" -> {{Automatic}}}, 
              GridBoxSpacings -> {
               "Columns" -> {{Automatic}}, "Rows" -> {{0}}}], "Column"], 
            TraditionalForm]], "Output"]}], 
       XMLElement[
       "dataformats", {}, {
        "plaintext,computabledata,formatteddata,numberdata,quantitydata"}]}], 
     XMLElement["subpod", {"title" -> ""}, {
       XMLElement["cell", {"compressed" -> False, "string" -> True}, {
         Cell[
          BoxData[
           FormBox[
            TagBox[
             GridBox[{{
                StyleBox[
                 TagBox[
                  TagBox[
                   RowBox[{
                    TagBox["1.013", 
                    Global`TagBoxWrapper["StringBoxes" -> "1.013"]], 
                    "\[InvisibleSpace]", " ", 
                    StyleBox[
                    "\"bars\"", LinebreakAdjustments -> {1, 100, 1, 0, 100}, 
                    LineIndent -> 0, {
                    FontFamily -> "Helvetica", FontSize -> Smaller}, 
                    StripOnInput -> False]}], Identity], #& , SyntaxForm -> 
                  Dot], LinebreakAdjustments -> {1, 100, 1, 0, 100}, 
                 LineIndent -> 0, ZeroWidthTimes -> False]}, {
                TemplateBox[{"\" \"", 
                  StyleBox[
                   
                   RowBox[{
                    "\"(\"", "\[NoBreak]", "\"unit officially deprecated\"", 
                    "\[NoBreak]", "\")\""}], 
                   LinebreakAdjustments -> {1, 100, 1, 0, 100}, LineIndent -> 
                   0, {FontFamily -> "Verdana", FontSize -> 10}, 
                   GrayLevel[0.5], StripOnInput -> False]}, "Row", 
                 DisplayFunction -> (RowBox[{#, "\[InvisibleSpace]", #2}]& ), 
                 InterpretationFunction -> (RowBox[{
                    StyleBox[
                    "Row", FontFamily -> "Bitstream Vera Sans", 
                    FontSize -> -1 + Inherited], "[", 
                    RowBox[{"{", 
                    RowBox[{#, ",", #2}], "}"}], "]"}]& )]}}, 
              GridBoxAlignment -> {"Columns" -> {{Left}}}, 
              AllowScriptLevelChange -> False, 
              GridBoxItemSize -> {
               "Columns" -> {{Automatic}}, "Rows" -> {{Automatic}}}, 
              GridBoxSpacings -> {
               "Columns" -> {{Automatic}}, "Rows" -> {{0}}}], "Column"], 
            TraditionalForm]], "Output"]}], 
       XMLElement[
       "dataformats", {}, {
        "plaintext,computabledata,formatteddata,numberdata,quantitydata"}]}], 
     XMLElement["states", {"count" -> "1"}, {
       XMLElement[
       "state", {
        "name" -> "More", "input" -> "AdditionalConversion__More"}, {}]}]}], 
   Typeset`pod4$$ = XMLElement[
   "pod", {"title" -> "Comparisons as pressure", "scanner" -> "Unit", "id" -> 
     "ComparisonAsPressure", "position" -> "400", "error" -> "false", 
     "numsubpods" -> "3"}, {
     XMLElement["subpod", {"title" -> ""}, {
       XMLElement["cell", {"compressed" -> False, "string" -> True}, {
         Cell[
          BoxData[
           FormBox[
            FormBox[
             TemplateBox[{"\" \[TildeTilde] \"", 
               InterpretationBox[
                Cell[
                 TextData[{
                   StyleBox["(", 
                    GrayLevel[0.6], StripOnInput -> False], 
                   Cell[
                    BoxData[
                    FormBox["0.05", TraditionalForm]]], 
                   Cell[
                    BoxData[
                    FormBox[
                    StyleBox[
                    "\" to\[MediumSpace]\"", 
                    LinebreakAdjustments -> {1, 100, 1, 0, 100}, LineIndent -> 
                    0, 
                    GrayLevel[0.6], StripOnInput -> False], 
                    TraditionalForm]]], 
                   Cell[
                    BoxData[
                    FormBox["0.13", TraditionalForm]]], 
                   StyleBox[")", 
                    GrayLevel[0.6], StripOnInput -> False]}]], 
                TextCell[
                 Row[{
                   Style["(", 
                    GrayLevel[0.6]], 
                   Global`NRat[
                   0.0506624999999999506283702522116082006`0.8239087409443149]\
, 
                   Global`GrayText[" to\[MediumSpace]"], 
                   Global`NRat[
                   0.12665625000000013677948342626542673038`1.\
2218487496163546], 
                   Style[")", 
                    GrayLevel[0.6]]}]]], "\" \"", 
               StyleBox["\"\[Times]\"", 
                GrayLevel[0.3], FontSize -> 10.219999999999999`, StripOnInput -> 
                False], "\"\[MediumSpace]\"", 
               StyleBox[
               "\"boiler pressure in a steam locomotive\"", FontFamily -> 
                "Helvetica", FontSize -> Smaller, StripOnInput -> False], 
               "\" \"", 
               StyleBox[
                RowBox[{"\"(\"", "\[NoBreak]", 
                  TemplateBox[{"\"\[MediumSpace]\"", 
                    StyleBox[
                    TagBox[
                    RowBox[{
                    RowBox[{
                    TagBox["0.8", 
                    Global`TagBoxWrapper["StringBoxes" -> "0.8"]], 
                    StyleBox["\"\[MediumSpace]to\[MediumSpace]\"", 
                    GrayLevel[0.6]], 
                    TagBox["2", 
                    Global`TagBoxWrapper["StringBoxes" -> "2"]]}], 
                    "\[InvisibleSpace]", 
                    StyleBox[
                    RowBox[{}], FontFamily -> "Helvetica", FontSize -> 
                    Smaller], "\[InvisibleSpace]", "\[ThickSpace]", 
                    "\[InvisibleSpace]", 
                    StyleBox[
                    "\"MPa\"", FontFamily -> "Helvetica", FontSize -> 
                    Smaller]}], #& , SyntaxForm -> Dot], 
                    LinebreakAdjustments -> {1, 100, 1, 0, 100}, LineIndent -> 
                    0, ZeroWidthTimes -> False], "\"\[MediumSpace]\""}, "Row",
                    DisplayFunction -> (
                    RowBox[{#, "\[InvisibleSpace]", #2, 
                    "\[InvisibleSpace]", #3}]& ), 
                   InterpretationFunction -> (RowBox[{
                    StyleBox[
                    "Row", FontFamily -> "Bitstream Vera Sans", 
                    FontSize -> -1 + Inherited], "[", 
                    RowBox[{"{", 
                    RowBox[{#, ",", #2, ",", #3}], "}"}], "]"}]& )], 
                  "\[NoBreak]", "\")\""}], 
                LinebreakAdjustments -> {1, 100, 1, 0, 100}, LineIndent -> 
                0, {FontFamily -> "Verdana", FontSize -> 10}, 
                GrayLevel[0.5], StripOnInput -> False]}, "Row", 
              DisplayFunction -> (
               RowBox[{#, "\[InvisibleSpace]", #2, "\[InvisibleSpace]", #3, 
                 "\[InvisibleSpace]", #4, "\[InvisibleSpace]", #5, 
                 "\[InvisibleSpace]", #6, "\[InvisibleSpace]", #7, 
                 "\[InvisibleSpace]", #8}]& ), 
              InterpretationFunction -> (RowBox[{
                 StyleBox[
                 "Row", FontFamily -> "Bitstream Vera Sans", 
                  FontSize -> -1 + Inherited], "[", 
                 RowBox[{"{", 
                   
                   RowBox[{#, ",", #2, ",", #3, ",", #4, ",", #5, ",", #6, 
                    ",", #7, ",", #8}], "}"}], "]"}]& )], TraditionalForm], 
            TraditionalForm]], "Output"]}], 
       XMLElement["dataformats", {}, {"plaintext"}]}], 
     XMLElement["subpod", {"title" -> ""}, {
       XMLElement["cell", {"compressed" -> False, "string" -> True}, {
         Cell[
          BoxData[
           FormBox[
            FormBox[
             TemplateBox[{"\" = \"", 
               StyleBox[
               "\"standard atmospheric pressure at sea level\"", FontFamily -> 
                "Helvetica", FontSize -> Smaller, StripOnInput -> False], 
               "\" \"", 
               StyleBox[
                RowBox[{"\"(\"", "\[NoBreak]", 
                  TemplateBox[{"\"\[MediumSpace]\"", 
                    StyleBox[
                    TagBox[
                    TagBox[
                    RowBox[{
                    TagBox["1", 
                    Global`TagBoxWrapper["StringBoxes" -> "1"]], 
                    "\[InvisibleSpace]", 
                    StyleBox[
                    RowBox[{}], FontFamily -> "Helvetica", FontSize -> 
                    Smaller], "\[InvisibleSpace]", "\[ThickSpace]", 
                    "\[InvisibleSpace]", 
                    StyleBox[
                    "\"atm\"", FontFamily -> "Helvetica", FontSize -> 
                    Smaller]}], Identity], #& , SyntaxForm -> Dot], 
                    LinebreakAdjustments -> {1, 100, 1, 0, 100}, LineIndent -> 
                    0, ZeroWidthTimes -> False], "\"\[MediumSpace]\""}, "Row",
                    DisplayFunction -> (
                    RowBox[{#, "\[InvisibleSpace]", #2, 
                    "\[InvisibleSpace]", #3}]& ), 
                   InterpretationFunction -> (RowBox[{
                    StyleBox[
                    "Row", FontFamily -> "Bitstream Vera Sans", 
                    FontSize -> -1 + Inherited], "[", 
                    RowBox[{"{", 
                    RowBox[{#, ",", #2, ",", #3}], "}"}], "]"}]& )], 
                  "\[NoBreak]", "\")\""}], 
                LinebreakAdjustments -> {1, 100, 1, 0, 100}, LineIndent -> 
                0, {FontFamily -> "Verdana", FontSize -> 10}, 
                GrayLevel[0.5], StripOnInput -> False]}, "Row", 
              DisplayFunction -> (
               RowBox[{#, "\[InvisibleSpace]", #2, "\[InvisibleSpace]", #3, 
                 "\[InvisibleSpace]", #4}]& ), 
              InterpretationFunction -> (RowBox[{
                 StyleBox[
                 "Row", FontFamily -> "Bitstream Vera Sans", 
                  FontSize -> -1 + Inherited], "[", 
                 RowBox[{"{", 
                   RowBox[{#, ",", #2, ",", #3, ",", #4}], "}"}], "]"}]& )], 
             TraditionalForm], TraditionalForm]], "Output"]}], 
       XMLElement["dataformats", {}, {"plaintext"}]}], 
     XMLElement["subpod", {"title" -> ""}, {
       XMLElement["cell", {"compressed" -> False, "string" -> True}, {
         Cell[
          BoxData[
           FormBox[
            FormBox[
             TemplateBox[{"\" \[TildeTilde] \"", 
               InterpretationBox[
                Cell[
                 TextData[{
                   StyleBox["(", 
                    GrayLevel[0.6], StripOnInput -> False], 
                   Cell[
                    BoxData[
                    FormBox["0.6", TraditionalForm]]], 
                   Cell[
                    BoxData[
                    FormBox[
                    StyleBox[
                    "\" to\[MediumSpace]\"", 
                    LinebreakAdjustments -> {1, 100, 1, 0, 100}, LineIndent -> 
                    0, 
                    GrayLevel[0.6], StripOnInput -> False], 
                    TraditionalForm]]], 
                   Cell[
                    BoxData[
                    FormBox["2", TraditionalForm]]], 
                   StyleBox[")", 
                    GrayLevel[0.6], StripOnInput -> False]}]], 
                TextCell[
                 Row[{
                   Style["(", 
                    GrayLevel[0.6]], 
                   Global`NRat[0.56291666666666606566593600291525945067`1.], 
                   Global`GrayText[" to\[MediumSpace]"], 
                   Global`NRat[2.02650000000000218847162614110857248306`2.], 
                   Style[")", 
                    GrayLevel[0.6]]}]]], "\" \"", 
               StyleBox["\"\[Times]\"", 
                GrayLevel[0.3], FontSize -> 10.219999999999999`, StripOnInput -> 
                False], "\"\[MediumSpace]\"", 
               StyleBox[
               "\"overpressure in a typical automobile tire\"", FontFamily -> 
                "Helvetica", FontSize -> Smaller, StripOnInput -> False], 
               "\" \"", 
               StyleBox[
                RowBox[{"\"(\"", "\[NoBreak]", 
                  TemplateBox[{"\"\[MediumSpace]\"", 
                    StyleBox[
                    TagBox[
                    RowBox[{
                    RowBox[{
                    TagBox["50", 
                    Global`TagBoxWrapper["StringBoxes" -> "50"]], 
                    StyleBox["\"\[MediumSpace]to\[MediumSpace]\"", 
                    GrayLevel[0.6]], 
                    TagBox["180", 
                    Global`TagBoxWrapper["StringBoxes" -> "180"]]}], 
                    "\[InvisibleSpace]", 
                    StyleBox[
                    RowBox[{}], FontFamily -> "Helvetica", FontSize -> 
                    Smaller], "\[InvisibleSpace]", "\[ThickSpace]", 
                    "\[InvisibleSpace]", 
                    StyleBox[
                    "\"kPa\"", FontFamily -> "Helvetica", FontSize -> 
                    Smaller]}], #& , SyntaxForm -> Dot], 
                    LinebreakAdjustments -> {1, 100, 1, 0, 100}, LineIndent -> 
                    0, ZeroWidthTimes -> False], "\"\[MediumSpace]\""}, "Row",
                    DisplayFunction -> (
                    RowBox[{#, "\[InvisibleSpace]", #2, 
                    "\[InvisibleSpace]", #3}]& ), 
                   InterpretationFunction -> (RowBox[{
                    StyleBox[
                    "Row", FontFamily -> "Bitstream Vera Sans", 
                    FontSize -> -1 + Inherited], "[", 
                    RowBox[{"{", 
                    RowBox[{#, ",", #2, ",", #3}], "}"}], "]"}]& )], 
                  "\[NoBreak]", "\")\""}], 
                LinebreakAdjustments -> {1, 100, 1, 0, 100}, LineIndent -> 
                0, {FontFamily -> "Verdana", FontSize -> 10}, 
                GrayLevel[0.5], StripOnInput -> False]}, "Row", 
              DisplayFunction -> (
               RowBox[{#, "\[InvisibleSpace]", #2, "\[InvisibleSpace]", #3, 
                 "\[InvisibleSpace]", #4, "\[InvisibleSpace]", #5, 
                 "\[InvisibleSpace]", #6, "\[InvisibleSpace]", #7, 
                 "\[InvisibleSpace]", #8}]& ), 
              InterpretationFunction -> (RowBox[{
                 StyleBox[
                 "Row", FontFamily -> "Bitstream Vera Sans", 
                  FontSize -> -1 + Inherited], "[", 
                 RowBox[{"{", 
                   
                   RowBox[{#, ",", #2, ",", #3, ",", #4, ",", #5, ",", #6, 
                    ",", #7, ",", #8}], "}"}], "]"}]& )], TraditionalForm], 
            TraditionalForm]], "Output"]}], 
       XMLElement["dataformats", {}, {"plaintext"}]}]}], Typeset`pod5$$ = 
   XMLElement[
   "pod", {"title" -> "Comparison as sound pressure", "scanner" -> "Unit", 
     "id" -> "ComparisonAsSoundPressure", "position" -> "500", "error" -> 
     "false", "numsubpods" -> "1"}, {
     XMLElement["subpod", {"title" -> ""}, {
       XMLElement["cell", {"compressed" -> False, "string" -> True}, {
         Cell[
          BoxData[
           FormBox[
            FormBox[
             TemplateBox[{"\" \[TildeTilde] \"", "5", "\" \"", 
               StyleBox["\"\[Times]\"", 
                GrayLevel[0.3], FontSize -> 10.219999999999999`, StripOnInput -> 
                False], "\"\[MediumSpace]\"", 
               StyleBox[
               "\"sound pressure of the Krakatoa explosion at 160 \
kilometers\"", FontFamily -> "Helvetica", FontSize -> Smaller, StripOnInput -> 
                False], "\" \"", 
               StyleBox[
                RowBox[{"\"(\"", "\[NoBreak]", 
                  TemplateBox[{"\"\[TildeTilde]\[ThinSpace]\"", 
                    StyleBox[
                    TagBox[
                    TagBox[
                    RowBox[{
                    TagBox["20\[ThinSpace]000", 
                    Global`TagBoxWrapper["StringBoxes" -> "20000"]], 
                    "\[InvisibleSpace]", 
                    StyleBox[
                    RowBox[{}], FontFamily -> "Helvetica", FontSize -> 
                    Smaller], "\[InvisibleSpace]", "\[ThickSpace]", 
                    "\[InvisibleSpace]", 
                    StyleBox[
                    "\"Pa\"", FontFamily -> "Helvetica", FontSize -> 
                    Smaller]}], Identity], #& , SyntaxForm -> Dot], 
                    LinebreakAdjustments -> {1, 100, 1, 0, 100}, LineIndent -> 
                    0, ZeroWidthTimes -> False], "\"\[MediumSpace]\""}, "Row",
                    DisplayFunction -> (
                    RowBox[{#, "\[InvisibleSpace]", #2, 
                    "\[InvisibleSpace]", #3}]& ), 
                   InterpretationFunction -> (RowBox[{
                    StyleBox[
                    "Row", FontFamily -> "Bitstream Vera Sans", 
                    FontSize -> -1 + Inherited], "[", 
                    RowBox[{"{", 
                    RowBox[{#, ",", #2, ",", #3}], "}"}], "]"}]& )], 
                  "\[NoBreak]", "\")\""}], 
                LinebreakAdjustments -> {1, 100, 1, 0, 100}, LineIndent -> 
                0, {FontFamily -> "Verdana", FontSize -> 10}, 
                GrayLevel[0.5], StripOnInput -> False]}, "Row", 
              DisplayFunction -> (
               RowBox[{#, "\[InvisibleSpace]", #2, "\[InvisibleSpace]", #3, 
                 "\[InvisibleSpace]", #4, "\[InvisibleSpace]", #5, 
                 "\[InvisibleSpace]", #6, "\[InvisibleSpace]", #7, 
                 "\[InvisibleSpace]", #8}]& ), 
              InterpretationFunction -> (RowBox[{
                 StyleBox[
                 "Row", FontFamily -> "Bitstream Vera Sans", 
                  FontSize -> -1 + Inherited], "[", 
                 RowBox[{"{", 
                   
                   RowBox[{#, ",", #2, ",", #3, ",", #4, ",", #5, ",", #6, 
                    ",", #7, ",", #8}], "}"}], "]"}]& )], TraditionalForm], 
            TraditionalForm]], "Output"]}], 
       XMLElement["dataformats", {}, {"plaintext"}]}]}], Typeset`pod6$$ = 
   XMLElement[
   "pod", {"title" -> "Interpretations", "scanner" -> "Unit", "id" -> 
     "Interpretation", "position" -> "600", "error" -> "false", "numsubpods" -> 
     "2"}, {
     XMLElement["subpod", {"title" -> ""}, {
       XMLElement["cell", {"compressed" -> False, "string" -> True}, {
         Cell[
          BoxData[
           FormBox[
            TagBox["\"pressure\"", Identity], TraditionalForm]], "Output"]}], 
       XMLElement[
       "dataformats", {}, {"plaintext,computabledata,formatteddata"}]}], 
     XMLElement["subpod", {"title" -> ""}, {
       XMLElement["cell", {"compressed" -> False, "string" -> True}, {
         Cell[
          BoxData[
           FormBox[
            TagBox["\"sound pressure\"", Identity], TraditionalForm]], 
          "Output"]}], 
       XMLElement[
       "dataformats", {}, {"plaintext,computabledata,formatteddata"}]}], 
     XMLElement["states", {"count" -> "1"}, {
       XMLElement[
       "state", {
        "name" -> "More", "input" -> "Interpretation__More"}, {}]}]}], 
   Typeset`pod7$$ = XMLElement[
   "pod", {"title" -> "Basic unit dimensions", "scanner" -> "Unit", "id" -> 
     "BasicUnitDimensions", "position" -> "700", "error" -> "false", 
     "numsubpods" -> "1"}, {
     XMLElement["subpod", {"title" -> ""}, {
       XMLElement["cell", {"compressed" -> False, "string" -> True}, {
         Cell[
          BoxData[
           FormBox[
            TagBox[
             RowBox[{"\"[mass]\"", " ", 
               TemplateBox[{"\"[length]\"", 
                 RowBox[{"-", "1"}]}, "Superscript", SyntaxForm -> 
                SuperscriptBox], " ", 
               TemplateBox[{"\"[time]\"", 
                 RowBox[{"-", "2"}]}, "Superscript", SyntaxForm -> 
                SuperscriptBox]}], HoldForm], TraditionalForm]], "Output"]}], 
       XMLElement[
       "dataformats", {}, {
        "plaintext,computabledata,formatteddata,formuladata"}]}]}], 
   Typeset`pod8$$ = XMLElement[
   "pod", {"title" -> "Corresponding quantities", "scanner" -> "Unit", "id" -> 
     "CorrespondingQuantity", "position" -> "800", "error" -> "false", 
     "numsubpods" -> "2"}, {
     XMLElement["subpod", {"title" -> ""}, {
       XMLElement["cell", {"compressed" -> True, "string" -> False}, {
         Cell[
          BoxData[
           FormBox[
            TagBox[
             GridBox[{{
                InterpretationBox[
                 Cell[
                  TextData[{"Depth of water ", 
                    Cell[
                    BoxData[
                    FormBox["d", TraditionalForm]]], " giving overpressure ", 
                    Cell[
                    BoxData[
                    FormBox["P", TraditionalForm]]], " from ", 
                    Cell[
                    BoxData[
                    FormBox[
                    FormBox[
                    TemplateBox[{
                    TagBox[
                    RowBox[{"P", "\[LongEqual]", 
                    RowBox[{
                    SubscriptBox["\[Rho]", "\"water\""], "\[InvisibleSpace]", 
                    "g", "\[InvisibleSpace]", "h"}]}], 
                    PolynomialForm[#, TraditionalOrder -> False]& ], "\":\""},
                     "Row", 
                    DisplayFunction -> (
                    RowBox[{#, "\[InvisibleSpace]", #2}]& ), 
                    InterpretationFunction -> (RowBox[{
                    StyleBox[
                    "Row", FontFamily -> "Bitstream Vera Sans", 
                    FontSize -> -1 + Inherited], "[", 
                    RowBox[{"{", 
                    RowBox[{#, ",", #2}], "}"}], "]"}]& )], TraditionalForm], 
                    TraditionalForm]]]}]], 
                 TextCell[
                  Row[{"Depth of water ", 
                    Global`CalculateSymbol["d"], " giving overpressure ", 
                    Global`CalculateSymbol["P"], " from ", 
                    Global`InlineForm[
                    "P \[LongEqual] Subscript[\[Rho],\"water\"] g h", 
                    ":"]}]]]}, {
                TagBox[
                 GridBox[{{
                    InterpretationBox[
                    StyleBox[
                    
                    GraphicsBox[{}, ImageSize -> {10, 0}, BaselinePosition -> 
                    Baseline], "CacheGraphics" -> False], 
                    Spacer[10]], 
                    StyleBox[
                    TagBox[
                    TagBox[
                    RowBox[{
                    TagBox["10", 
                    Global`TagBoxWrapper["StringBoxes" -> "10"]], 
                    "\[InvisibleSpace]", " ", 
                    StyleBox[
                    "\"meters\"", LinebreakAdjustments -> {1, 100, 1, 0, 100},
                     LineIndent -> 0, {
                    FontFamily -> "Helvetica", FontSize -> Smaller}, 
                    StripOnInput -> False]}], Identity], #& , SyntaxForm -> 
                    Dot], LinebreakAdjustments -> {1, 100, 1, 0, 100}, 
                    LineIndent -> 0, ZeroWidthTimes -> False]}, {
                    InterpretationBox[
                    StyleBox[
                    
                    GraphicsBox[{}, ImageSize -> {10, 0}, BaselinePosition -> 
                    Baseline], "CacheGraphics" -> False], 
                    Spacer[10]], 
                    StyleBox[
                    TagBox[
                    TagBox[
                    RowBox[{
                    TagBox["34", 
                    Global`TagBoxWrapper["StringBoxes" -> "34"]], 
                    "\[InvisibleSpace]", " ", 
                    StyleBox[
                    "\"feet\"", LinebreakAdjustments -> {1, 100, 1, 0, 100}, 
                    LineIndent -> 0, {
                    FontFamily -> "Helvetica", FontSize -> Smaller}, 
                    StripOnInput -> False]}], Identity], #& , SyntaxForm -> 
                    Dot], LinebreakAdjustments -> {1, 100, 1, 0, 100}, 
                    LineIndent -> 0, ZeroWidthTimes -> False]}, {
                    InterpretationBox[
                    StyleBox[
                    
                    GraphicsBox[{}, ImageSize -> {10, 0}, BaselinePosition -> 
                    Baseline], "CacheGraphics" -> False], 
                    Spacer[10]], 
                    StyleBox[
                    RowBox[{"\"(\"", "\[NoBreak]", 
                    
                    TemplateBox[{
                    "\"assuming \"", "\"water density\"", 
                    "\" \[TildeTilde] \"", 
                    StyleBox[
                    TagBox[
                    TagBox[
                    RowBox[{
                    TagBox["1000", 
                    Global`TagBoxWrapper["StringBoxes" -> "1000"]], 
                    "\[InvisibleSpace]", 
                    StyleBox[
                    RowBox[{}], FontFamily -> "Helvetica", FontSize -> 
                    Smaller], "\[InvisibleSpace]", "\[ThickSpace]", 
                    "\[InvisibleSpace]", 
                    StyleBox[
                    
                    RowBox[{"\"kg\"", "\[InvisibleSpace]", "\"/\"", 
                    "\[InvisibleSpace]", 
                    SuperscriptBox["\"m\"", "3"]}], FontFamily -> "Helvetica",
                     FontSize -> Smaller]}], Identity], #& , SyntaxForm -> 
                    Dot], LinebreakAdjustments -> {1, 100, 1, 0, 100}, 
                    LineIndent -> 0, ZeroWidthTimes -> False]}, "Row", 
                    DisplayFunction -> (
                    RowBox[{#, "\[InvisibleSpace]", #2, 
                    "\[InvisibleSpace]", #3, "\[InvisibleSpace]", #4}]& ), 
                    InterpretationFunction -> (RowBox[{
                    StyleBox[
                    "Row", FontFamily -> "Bitstream Vera Sans", 
                    FontSize -> -1 + Inherited], "[", 
                    RowBox[{"{", 
                    RowBox[{#, ",", #2, ",", #3, ",", #4}], "}"}], "]"}]& )], 
                    "\[NoBreak]", "\")\""}], 
                    LinebreakAdjustments -> {1, 100, 1, 0, 100}, LineIndent -> 
                    0, {FontFamily -> "Verdana", FontSize -> 10}, 
                    GrayLevel[0.5], StripOnInput -> False]}}, 
                  GridBoxAlignment -> {"Columns" -> {{Left}}}, AutoDelete -> 
                  False, GridBoxItemSize -> {
                   "Columns" -> {{Automatic}}, "Rows" -> {{Automatic}}}], 
                 "Grid"]}}, GridBoxAlignment -> {"Columns" -> {{Left}}}, 
              GridBoxItemSize -> {"ColumnsIndexed" -> {1 -> 0}}], "Column"], 
            TraditionalForm]], "Output"]}], 
       XMLElement[
       "dataformats", {}, {
        "plaintext,computabledata,formatteddata,numberdata,quantitydata"}]}], 
     XMLElement["subpod", {"title" -> ""}, {
       XMLElement["cell", {"compressed" -> False, "string" -> True}, {
         Cell[
          BoxData[
           FormBox[
            TagBox[
             GridBox[{{
                InterpretationBox[
                 Cell[
                  TextData[{"Compressibility ", 
                    Cell[
                    BoxData[
                    FormBox["\[Beta]", TraditionalForm]]], " from ", 
                    Cell[
                    BoxData[
                    FormBox[
                    FormBox[
                    TemplateBox[{
                    TagBox[
                    RowBox[{"\[Beta]", "\[LongEqual]", 
                    
                    RowBox[{"1", "\[InvisibleSpace]", "\"/\"", 
                    "\[InvisibleSpace]", 
                    StyleBox[
                    "K", FontFamily -> "Bitstream Vera Sans", 
                    FontSize -> -1 + Inherited]}]}], 
                    PolynomialForm[#, TraditionalOrder -> False]& ], "\":\""},
                     "Row", 
                    DisplayFunction -> (
                    RowBox[{#, "\[InvisibleSpace]", #2}]& ), 
                    InterpretationFunction -> (RowBox[{
                    StyleBox[
                    "Row", FontFamily -> "Bitstream Vera Sans", 
                    FontSize -> -1 + Inherited], "[", 
                    RowBox[{"{", 
                    RowBox[{#, ",", #2}], "}"}], "]"}]& )], TraditionalForm], 
                    TraditionalForm]]]}]], 
                 TextCell[
                  Row[{"Compressibility ", 
                    Global`CalculateSymbol["\[Beta]"], " from ", 
                    Global`InlineForm["\[Beta] == 1/K", ":"]}]]]}, {
                TagBox[
                 GridBox[{{
                    InterpretationBox[
                    StyleBox[
                    
                    GraphicsBox[{}, ImageSize -> {10, 0}, BaselinePosition -> 
                    Baseline], "CacheGraphics" -> False], 
                    Spacer[10]], 
                    StyleBox[
                    RowBox[{
                    TagBox[
                    TagBox[
                    RowBox[{
                    TagBox[
                    RowBox[{"9.869", " ", 
                    SuperscriptBox["10", "-6"]}], 
                    Global`TagBoxWrapper[
                    "StringBoxes" -> RowBox[{"9.869", "\[Times]", 
                    SuperscriptBox["10", "-6"]}]], SyntaxForm -> CenterDot], 
                    "\[InvisibleSpace]", 
                    StyleBox[
                    RowBox[{}], FontFamily -> "Helvetica", FontSize -> 
                    Smaller], "\[InvisibleSpace]", "\[ThickSpace]", 
                    "\[InvisibleSpace]", 
                    StyleBox[
                    SuperscriptBox["\"Pa\"", 
                    RowBox[{"-", "1"}]], FontFamily -> "Helvetica", FontSize -> 
                    Smaller]}], Identity], #& , SyntaxForm -> Dot], " ", 
                    StyleBox[
                    
                    RowBox[{
                    "\"(\"", "\[NoBreak]", "\"reciprocal pascals\"", 
                    "\[NoBreak]", "\")\""}], 
                    LinebreakAdjustments -> {1, 100, 1, 0, 100}, LineIndent -> 
                    0, {FontFamily -> "Helvetica", FontSize -> Smaller}, 
                    GrayLevel[0.6], StripOnInput -> False]}], 
                    LinebreakAdjustments -> {1, 100, 1, 0, 100}, LineIndent -> 
                    0, ZeroWidthTimes -> False]}}, 
                  GridBoxAlignment -> {"Columns" -> {{Left}}}, AutoDelete -> 
                  False, GridBoxItemSize -> {
                   "Columns" -> {{Automatic}}, "Rows" -> {{Automatic}}}], 
                 "Grid"]}}, GridBoxAlignment -> {"Columns" -> {{Left}}}, 
              GridBoxItemSize -> {"ColumnsIndexed" -> {1 -> 0}}], "Column"], 
            TraditionalForm]], "Output"]}], 
       XMLElement[
       "dataformats", {}, {
        "plaintext,computabledata,formatteddata,numberdata,quantitydata"}]}]}]\
, Typeset`aux1$$ = {True, False, {False}, True}, Typeset`aux2$$ = {
   True, False, {False}, True}, Typeset`aux3$$ = {True, False, {False}, True},
    Typeset`aux4$$ = {True, False, {False}, True}, Typeset`aux5$$ = {
   True, False, {False}, True}, Typeset`aux6$$ = {True, False, {False}, True},
    Typeset`aux7$$ = {True, False, {False}, True}, Typeset`aux8$$ = {
   True, False, {False}, True}, Typeset`asyncpods$$ = {}, Typeset`nonpods$$ = {
    XMLElement["assumptions", {"count" -> "1"}, {
      XMLElement[
      "assumption", {
       "type" -> "FormulaVariable", "desc" -> "amount", "current" -> "1", 
        "count" -> "1"}, {
        XMLElement[
        "value", {
         "name" -> "UnitsConversion2.fromValue", "desc" -> "1", "valid" -> 
          "false", "input" -> "*F.UnitsConversion2.fromValue-_1"}, {}]}]}], 
    XMLElement["warnings", {"count" -> "1"}, {
      XMLElement[
      "reinterpret", {
       "text" -> "Using closest Wolfram|Alpha interpretation:", "new" -> 
        "atm pascals"}, {
        XMLElement["alternative", {}, {"1 atm"}]}]}]}, Typeset`initdone$$ = 
   True, Typeset`queryinfo$$ = {
   "success" -> "true", "error" -> "false", "numpods" -> "8", "datatypes" -> 
    "", "timedout" -> "", "timedoutpods" -> "", "timing" -> "5.013", 
    "parsetiming" -> "0.16", "parsetimedout" -> "false", "recalculate" -> "", 
    "id" -> "MSPa19081a0c5e229f8dd41800002c462iac455gg83i", "host" -> 
    "http://www4b.wolframalpha.com", "server" -> "19", "related" -> "", 
    "version" -> "2.5"}, Typeset`sessioninfo$$ = {
   "TimeZone" -> -5., 
    "Date" -> {2012, 3, 3, 23, 11, 44.8231221`9.40407697265467}, "Line" -> 42,
     "SessionID" -> 23198385670621549241}, Typeset`showpods$$ = {1, 2, 3, 4, 
   5, 6, 7, 8}, Typeset`failedpods$$ = {}, Typeset`chosen$$ = {
   "Result", "Result", 1, 1, "Content"}, Typeset`open$$ = False, 
   Typeset`newq$$ = "\"numeric value of 1 atm in pascals\""}, 
   DynamicBox[ToBoxes[
     AlphaIntegration`FormatAlphaResults[
      Dynamic[{
       1, {Typeset`pod1$$, Typeset`pod2$$, Typeset`pod3$$, Typeset`pod4$$, 
         Typeset`pod5$$, Typeset`pod6$$, Typeset`pod7$$, Typeset`pod8$$}, {
        Typeset`aux1$$, Typeset`aux2$$, Typeset`aux3$$, Typeset`aux4$$, 
         Typeset`aux5$$, Typeset`aux6$$, Typeset`aux7$$, Typeset`aux8$$}, 
        Typeset`chosen$$, Typeset`open$$, Typeset`elements$$, Typeset`q$$, 
        Typeset`opts$$, Typeset`nonpods$$, Typeset`queryinfo$$, 
        Typeset`sessioninfo$$, Typeset`showpods$$, Typeset`failedpods$$, 
        Typeset`newq$$}]], StandardForm],
    ImageSizeCache->{239., {48., 18.}},
    TrackedSymbols:>{Typeset`showpods$$, Typeset`failedpods$$}],
   DynamicModuleValues:>{},
   Initialization:>If[
     Not[Typeset`initdone$$], WolframAlphaClient`Private`doAsyncUpdates[
       Hold[{
        Typeset`pod1$$, Typeset`pod2$$, Typeset`pod3$$, Typeset`pod4$$, 
         Typeset`pod5$$, Typeset`pod6$$, Typeset`pod7$$, Typeset`pod8$$}], 
       Typeset`asyncpods$$, 
       Dynamic[Typeset`failedpods$$]]; Typeset`asyncpods$$ = {}; 
     Typeset`initdone$$ = True],
   SynchronousInitialization->False],
  BaseStyle->{Deployed -> True},
  DeleteWithContents->True,
  Editable->False,
  SelectWithContents->True]], "WolframAlphaShortInput"],

Cell[BoxData[
 InterpretationBox[
  FrameBox[
   RowBox[{"Missing", "[", "\<\"NotAvailable\"\>", "]"}],
   BaseStyle->{Plain},
   FrameMargins->10,
   FrameStyle->GrayLevel[0.85],
   RoundingRadius->5,
   StripOnInput->False],
  WolframAlphaResult[
  "\"numeric value of 1 atm in pascals\"", {{"Result", 1}, 
    "Content"}]]], "Output",
 CellChangeTimes->{{3.5398229316032143`*^9, 3.5398229403647156`*^9}, 
   3.5398231059281855`*^9}]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"pa", " ", "=", " ", "101325"}]], "Input",
 CellChangeTimes->{{3.5398229721995363`*^9, 3.5398229775468426`*^9}, {
  3.539823135784893*^9, 3.539823143184316*^9}}],

Cell[BoxData["32825"], "Output",
 CellChangeTimes->{3.539822979301943*^9, 3.5398231372389765`*^9}]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"\[IndentingNewLine]", 
  RowBox[{"InputForm", "[", "pa", "]"}]}]], "Input",
 CellChangeTimes->{{3.539823251808529*^9, 3.539823268188466*^9}, {
   3.539823392801594*^9, 3.5398234129077435`*^9}, 3.5398234739192333`*^9, {
   3.5398260223709965`*^9, 3.5398260381799*^9}, {3.5398260771391287`*^9, 
   3.539826094433118*^9}, {3.539826311317523*^9, 3.539826315785779*^9}, {
   3.539826364201548*^9, 3.5398263811985197`*^9}, 3.539826416724552*^9}],

Cell[BoxData["101325"], "Output",
 CellChangeTimes->{{3.539826306804265*^9, 3.539826317453874*^9}, 
   3.539826367226721*^9}],

Cell["101325", "Output",
 CellChangeTimes->{{3.539826306804265*^9, 3.539826317453874*^9}, 
   3.539826367229721*^9}]
}, Open  ]],

Cell[BoxData[
 RowBox[{"\"\<\>\"", "101325", "\"\<\>"}]], "Input",
 CellChangeTimes->{{3.5398262560923643`*^9, 3.5398262561133657`*^9}}],

Cell[BoxData[
 RowBox[{
  RowBox[{
   RowBox[{"2", " ", "pa"}], "//", " ", "N"}], 
  "\[IndentingNewLine]"}]], "Input",
 CellChangeTimes->{{3.5398233612127867`*^9, 3.5398233613757963`*^9}, {
  3.539826111929119*^9, 3.5398261478141713`*^9}, {3.5398261934737825`*^9, 
  3.5398262009642115`*^9}}],

Cell[BoxData["101325"], "Input",
 CellChangeTimes->{{3.5398262715012455`*^9, 3.5398262761155095`*^9}}],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"InputForm", "[", "101325", "]"}]], "Input",
 CellChangeTimes->{{3.539826293518505*^9, 3.5398262994888463`*^9}}],

Cell["101325", "Output",
 CellChangeTimes->{3.5398263003098936`*^9}]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"acceleration", " ", "of", " ", "gravity"}]], "Input",
 CellChangeTimes->{{3.539823942119013*^9, 3.539823948378371*^9}}],

Cell[BoxData[
 RowBox[{"acceleration", " ", "gravity", " ", "of"}]], "Output",
 CellChangeTimes->{3.5398239490774107`*^9}]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 NamespaceBox["WolframAlphaQueryResults",
  DynamicModuleBox[{Typeset`q$$ = "acceleration due to gravity in SI units", 
   Typeset`opts$$ = {
   AppearanceElements -> {"Extrusion", "Warnings", "Assumptions", "Pods"}, 
    Asynchronous -> All, 
    Method -> {
     "ExtrusionChosen" -> {
       "GravitationalFieldStrength", 
        "Gravitational field strength for Siemens", 1, 1, "Content"}, 
      "Formats" -> {"cell", "minput", "moutput", "msound", "dataformats"}}}, 
   Typeset`elements$$ = {"Extrusion", "Warnings", "Assumptions", "Pods"}, 
   Typeset`pod1$$ = XMLElement[
   "pod", {"title" -> "Input interpretation", "scanner" -> "Identity", "id" -> 
     "Input", "position" -> "100", "error" -> "false", "numsubpods" -> "1"}, {
     XMLElement["subpod", {"title" -> ""}, {
       XMLElement["cell", {"compressed" -> False, "string" -> True}, {
         Cell[
          BoxData[
           FormBox[
            TagBox[
             FormBox[
              TagBox[
               GridBox[{{
                  StyleBox[
                   TagBox[
                    GridBox[{{
                    StyleBox[
                    "\"gravitational acceleration\"", {
                    LineIndent -> 0, LineSpacing -> {0.9, 0, 1.5}}], 
                    FormBox[
                    FormBox[
                    StyleBox[
                    TemplateBox[{
                    TagBox[
                    TagBox["\"Siemens\"", 
                    Global`TagBoxWrapper[
                    "Entity" -> {FinancialData, "NYSE:SI"}]], Identity], 
                    StyleBox[
                    "\"(SI)\"", {FontColor -> GrayLevel[0.3]}, StripOnInput -> 
                    False]}, "Row", 
                    DisplayFunction -> (RowBox[{#, " ", #2}]& ), 
                    InterpretationFunction -> (RowBox[{
                    TagBox[
                    StyleBox[
                    "Row", FontFamily -> "Bitstream Vera Sans", 
                    FontSize -> -1 + Inherited], HoldForm], "[", 
                    RowBox[{
                    RowBox[{"{", 
                    RowBox[{#, ",", #2}], "}"}], ",", "\" \""}], "]"}]& )], 
                    LinebreakAdjustments -> {1, 100, 1, 0, 100}, LineIndent -> 
                    0, StripOnInput -> False], TraditionalForm], 
                    TraditionalForm]}}, GridBoxBackground -> {"Columns" -> {
                    GrayLevel[0.949], None}, "Rows" -> {{None}}}, 
                    GridBoxItemSize -> {
                    "Columns" -> {{Automatic}}, "Rows" -> {{Automatic}}}, 
                    ColumnsEqual -> False, RowsEqual -> False, 
                    GridBoxDividers -> {"Columns" -> {
                    GrayLevel[0.84], 
                    GrayLevel[0.84], 
                    GrayLevel[0.84]}, "Rows" -> {{
                    GrayLevel[0.84]}}, 
                    "RowsIndexed" -> {
                    1 -> GrayLevel[0.84], -1 -> GrayLevel[0.84]}}, 
                    GridBoxSpacings -> {
                    "Columns" -> {1, 1, 1}, "Rows" -> {{0.3}}}, 
                    GridBoxAlignment -> {
                    "Columns" -> {{Left}}, "Rows" -> {{Baseline}}}, 
                    AllowScriptLevelChange -> False, BaselinePosition -> 1], 
                    Global`TagBoxWrapper["Separator" -> " | "]], 
                   LineSpacing -> {1, 0, 1.5}, LineIndent -> 0]}}, 
                GridBoxItemSize -> {
                 "Columns" -> {{Automatic}}, "Rows" -> {{Automatic}}}, 
                ColumnsEqual -> False, RowsEqual -> False, 
                GridBoxSpacings -> {"Columns" -> {{
                    AbsoluteThickness[-1]}}, "Rows" -> {{0}}}, 
                AllowScriptLevelChange -> False], 
               Global`TagBoxWrapper["Separator" -> " | "]], TraditionalForm], 
             PolynomialForm[#, TraditionalOrder -> False]& ], 
            TraditionalForm]], "Output"]}], 
       XMLElement["dataformats", {}, {"plaintext"}]}]}], Typeset`pod2$$ = 
   XMLElement[
   "pod", {"title" -> "Gravitational field strength for Siemens", "scanner" -> 
     "Geogravity", "id" -> "GravitationalFieldStrength", "position" -> "200", 
     "error" -> "false", "numsubpods" -> "1"}, {
     XMLElement["subpod", {"title" -> ""}, {
       XMLElement["cell", {"compressed" -> True, "string" -> False}, {
         Cell[
          BoxData[
           FormBox[
            TagBox[
             GridBox[{{
                StyleBox[
                 TagBox[
                  GridBox[{{
                    TagBox[
                    PaneBox[
                    "\"total field\"", 
                    BaseStyle -> {{
                    BaselinePosition -> Baseline, FontColor -> 
                    GrayLevel[0.3]}, LineSpacing -> {0.9, 0, 1.5}, 
                    LinebreakAdjustments -> {1, 10, 10000, 0, 100}, 
                    TextAlignment -> Left}, BaselinePosition -> Baseline], 
                    Global`TagBoxWrapper["Label"]], 
                    StyleBox[
                    RowBox[{
                    TagBox[
                    TagBox[
                    RowBox[{
                    TagBox["9.81061", 
                    Global`TagBoxWrapper["StringBoxes" -> "9.81061"]], 
                    "\[InvisibleSpace]", 
                    StyleBox[
                    RowBox[{}], FontFamily -> "Helvetica", FontSize -> 
                    Smaller], "\[InvisibleSpace]", "\[ThickSpace]", 
                    "\[InvisibleSpace]", 
                    StyleBox[
                    
                    RowBox[{"\"m\"", "\[InvisibleSpace]", "\"/\"", 
                    "\[InvisibleSpace]", 
                    SuperscriptBox["\"s\"", "2"]}], FontFamily -> "Helvetica",
                     FontSize -> Smaller]}], Identity], #& , SyntaxForm -> 
                    Dot], "  ", 
                    StyleBox[
                    
                    RowBox[{
                    "\"(\"", "\[NoBreak]", "\"meters per second squared\"", 
                    "\[NoBreak]", "\")\""}], 
                    LinebreakAdjustments -> {1, 100, 1, 0, 100}, LineIndent -> 
                    0, {FontFamily -> "Helvetica", FontSize -> Smaller}, 
                    GrayLevel[0.6], StripOnInput -> False]}], 
                    LinebreakAdjustments -> {1, 100, 1, 0, 100}, LineIndent -> 
                    0, ZeroWidthTimes -> False]}, {
                    TagBox[
                    PaneBox[
                    "\"angular deviation from local vertical\"", 
                    BaseStyle -> {{
                    BaselinePosition -> Baseline, FontColor -> 
                    GrayLevel[0.3]}, LineSpacing -> {0.9, 0, 1.5}, 
                    LinebreakAdjustments -> {1, 10, 10000, 0, 100}, 
                    TextAlignment -> Left}, BaselinePosition -> Baseline], 
                    Global`TagBoxWrapper["Label"]], 
                    StyleBox[
                    RowBox[{
                    TagBox[
                    TagBox[
                    RowBox[{
                    TagBox["0.00334", 
                    Global`TagBoxWrapper["StringBoxes" -> "0.00334"]], 
                    "\[InvisibleSpace]", 
                    StyleBox[
                    RowBox[{"\[InvisibleSpace]", "\"\[Degree]\""}], 
                    FontFamily -> "Helvetica", FontSize -> Smaller]}], 
                    Identity], #& , SyntaxForm -> Dot], "  ", 
                    StyleBox[
                    
                    RowBox[{
                    "\"(\"", "\[NoBreak]", "\"degrees\"", "\[NoBreak]", 
                    "\")\""}], LinebreakAdjustments -> {1, 100, 1, 0, 100}, 
                    LineIndent -> 0, {
                    FontFamily -> "Helvetica", FontSize -> Smaller}, 
                    GrayLevel[0.6], StripOnInput -> False]}], 
                    LinebreakAdjustments -> {1, 100, 1, 0, 100}, LineIndent -> 
                    0, ZeroWidthTimes -> False]}, {
                    TagBox[
                    PaneBox[
                    
                    TemplateBox[{"down", "\"component\""}, "Row", 
                    DisplayFunction -> (RowBox[{#, " ", #2}]& ), 
                    InterpretationFunction -> (RowBox[{
                    StyleBox[
                    "Row", FontFamily -> "Bitstream Vera Sans", 
                    FontSize -> -1 + Inherited], "[", 
                    RowBox[{
                    RowBox[{"{", 
                    RowBox[{#, ",", #2}], "}"}], ",", " "}], "]"}]& )], 
                    BaseStyle -> {{
                    BaselinePosition -> Baseline, FontColor -> 
                    GrayLevel[0.3]}, LineSpacing -> {0.9, 0, 1.5}, 
                    LinebreakAdjustments -> {1, 10, 10000, 0, 100}, 
                    TextAlignment -> Left}, BaselinePosition -> Baseline], 
                    Global`TagBoxWrapper["Label"]], 
                    StyleBox[
                    RowBox[{
                    TagBox[
                    TagBox[
                    RowBox[{
                    TagBox["9.81055", 
                    Global`TagBoxWrapper["StringBoxes" -> "9.81055"]], 
                    "\[InvisibleSpace]", 
                    StyleBox[
                    RowBox[{}], FontFamily -> "Helvetica", FontSize -> 
                    Smaller], "\[InvisibleSpace]", "\[ThickSpace]", 
                    "\[InvisibleSpace]", 
                    StyleBox[
                    
                    RowBox[{"\"m\"", "\[InvisibleSpace]", "\"/\"", 
                    "\[InvisibleSpace]", 
                    SuperscriptBox["\"s\"", "2"]}], FontFamily -> "Helvetica",
                     FontSize -> Smaller]}], Identity], #& , SyntaxForm -> 
                    Dot], "  ", 
                    StyleBox[
                    
                    RowBox[{
                    "\"(\"", "\[NoBreak]", "\"meters per second squared\"", 
                    "\[NoBreak]", "\")\""}], 
                    LinebreakAdjustments -> {1, 100, 1, 0, 100}, LineIndent -> 
                    0, {FontFamily -> "Helvetica", FontSize -> Smaller}, 
                    GrayLevel[0.6], StripOnInput -> False]}], 
                    LinebreakAdjustments -> {1, 100, 1, 0, 100}, LineIndent -> 
                    0, ZeroWidthTimes -> False]}, {
                    TagBox[
                    PaneBox[
                    
                    TemplateBox[{"west", "\"component\""}, "Row", 
                    DisplayFunction -> (RowBox[{#, " ", #2}]& ), 
                    InterpretationFunction -> (RowBox[{
                    StyleBox[
                    "Row", FontFamily -> "Bitstream Vera Sans", 
                    FontSize -> -1 + Inherited], "[", 
                    RowBox[{
                    RowBox[{"{", 
                    RowBox[{#, ",", #2}], "}"}], ",", " "}], "]"}]& )], 
                    BaseStyle -> {{
                    BaselinePosition -> Baseline, FontColor -> 
                    GrayLevel[0.3]}, LineSpacing -> {0.9, 0, 1.5}, 
                    LinebreakAdjustments -> {1, 10, 10000, 0, 100}, 
                    TextAlignment -> Left}, BaselinePosition -> Baseline], 
                    Global`TagBoxWrapper["Label"]], 
                    StyleBox[
                    RowBox[{
                    TagBox[
                    TagBox[
                    RowBox[{
                    TagBox[
                    RowBox[{"4.2", " ", 
                    SuperscriptBox["10", "-4"]}], 
                    Global`TagBoxWrapper[
                    "StringBoxes" -> RowBox[{"4.2", "\[Times]", 
                    SuperscriptBox["10", "-4"]}]], SyntaxForm -> CenterDot], 
                    "\[InvisibleSpace]", 
                    StyleBox[
                    RowBox[{}], FontFamily -> "Helvetica", FontSize -> 
                    Smaller], "\[InvisibleSpace]", "\[ThickSpace]", 
                    "\[InvisibleSpace]", 
                    StyleBox[
                    
                    RowBox[{"\"m\"", "\[InvisibleSpace]", "\"/\"", 
                    "\[InvisibleSpace]", 
                    SuperscriptBox["\"s\"", "2"]}], FontFamily -> "Helvetica",
                     FontSize -> Smaller]}], Identity], #& , SyntaxForm -> 
                    Dot], "  ", 
                    StyleBox[
                    
                    RowBox[{
                    "\"(\"", "\[NoBreak]", "\"meters per second squared\"", 
                    "\[NoBreak]", "\")\""}], 
                    LinebreakAdjustments -> {1, 100, 1, 0, 100}, LineIndent -> 
                    0, {FontFamily -> "Helvetica", FontSize -> Smaller}, 
                    GrayLevel[0.6], StripOnInput -> False]}], 
                    LinebreakAdjustments -> {1, 100, 1, 0, 100}, LineIndent -> 
                    0, ZeroWidthTimes -> False]}, {
                    TagBox[
                    PaneBox[
                    
                    TemplateBox[{"south", "\"component\""}, "Row", 
                    DisplayFunction -> (RowBox[{#, " ", #2}]& ), 
                    InterpretationFunction -> (RowBox[{
                    StyleBox[
                    "Row", FontFamily -> "Bitstream Vera Sans", 
                    FontSize -> -1 + Inherited], "[", 
                    RowBox[{
                    RowBox[{"{", 
                    RowBox[{#, ",", #2}], "}"}], ",", " "}], "]"}]& )], 
                    BaseStyle -> {{
                    BaselinePosition -> Baseline, FontColor -> 
                    GrayLevel[0.3]}, LineSpacing -> {0.9, 0, 1.5}, 
                    LinebreakAdjustments -> {1, 10, 10000, 0, 100}, 
                    TextAlignment -> Left}, BaselinePosition -> Baseline], 
                    Global`TagBoxWrapper["Label"]], 
                    StyleBox[
                    RowBox[{
                    TagBox[
                    TagBox[
                    RowBox[{
                    TagBox["0.03276", 
                    Global`TagBoxWrapper["StringBoxes" -> "0.03276"]], 
                    "\[InvisibleSpace]", 
                    StyleBox[
                    RowBox[{}], FontFamily -> "Helvetica", FontSize -> 
                    Smaller], "\[InvisibleSpace]", "\[ThickSpace]", 
                    "\[InvisibleSpace]", 
                    StyleBox[
                    
                    RowBox[{"\"m\"", "\[InvisibleSpace]", "\"/\"", 
                    "\[InvisibleSpace]", 
                    SuperscriptBox["\"s\"", "2"]}], FontFamily -> "Helvetica",
                     FontSize -> Smaller]}], Identity], #& , SyntaxForm -> 
                    Dot], "  ", 
                    StyleBox[
                    
                    RowBox[{
                    "\"(\"", "\[NoBreak]", "\"meters per second squared\"", 
                    "\[NoBreak]", "\")\""}], 
                    LinebreakAdjustments -> {1, 100, 1, 0, 100}, LineIndent -> 
                    0, {FontFamily -> "Helvetica", FontSize -> Smaller}, 
                    GrayLevel[0.6], StripOnInput -> False]}], 
                    LinebreakAdjustments -> {1, 100, 1, 0, 100}, LineIndent -> 
                    0, ZeroWidthTimes -> False]}}, 
                   GridBoxAlignment -> {
                    "Columns" -> {Left, Left, Right}, "Rows" -> {{Baseline}}},
                    AutoDelete -> False, 
                   GridBoxBackground -> {"Columns" -> {None, None}}, 
                   GridBoxFrame -> {
                    "Columns" -> {{True}}, "Rows" -> {{True}}}, 
                   GridBoxItemSize -> {
                    "Columns" -> {{Automatic}}, "Rows" -> {{Automatic}}}, 
                   GridBoxSpacings -> {
                    "Columns" -> {{1.5}, 2}, "Rows" -> {{1}}}, FrameStyle -> 
                   GrayLevel[0.84], BaselinePosition -> Automatic, 
                   AllowScriptLevelChange -> False], "Grid"], 
                 LineSpacing -> {0.9, 0, 1.5}, LineIndent -> 0, StripOnInput -> 
                 False]}, {
                StyleBox[
                 RowBox[{"\"(\"", "\[NoBreak]", 
                   TemplateBox[{"\"based on EGM2008 12th order model; \"", 
                    TemplateBox[{
                    StyleBox[
                    TagBox[
                    TagBox[
                    RowBox[{
                    TagBox["521", 
                    Global`TagBoxWrapper["StringBoxes" -> "521"]], 
                    "\[InvisibleSpace]", " ", 
                    StyleBox[
                    "\"meters\"", LinebreakAdjustments -> {1, 100, 1, 0, 100},
                     LineIndent -> 0, {
                    FontFamily -> "Helvetica", FontSize -> Smaller}, 
                    StripOnInput -> False]}], Identity], #& , SyntaxForm -> 
                    Dot], LinebreakAdjustments -> {1, 100, 1, 0, 100}, 
                    LineIndent -> 0, ZeroWidthTimes -> False], "\" \""}, 
                    "Row", DisplayFunction -> (
                    RowBox[{#, "\[InvisibleSpace]", #2}]& ), 
                    InterpretationFunction -> (RowBox[{
                    StyleBox[
                    "Row", FontFamily -> "Bitstream Vera Sans", 
                    FontSize -> -1 + Inherited], "[", 
                    RowBox[{"{", 
                    RowBox[{#, ",", #2}], "}"}], "]"}]& )], "\"above\"", 
                    "\" sea level\""}, "Row", 
                    DisplayFunction -> (
                    RowBox[{#, "\[InvisibleSpace]", #2, 
                    "\[InvisibleSpace]", #3, "\[InvisibleSpace]", #4}]& ), 
                    InterpretationFunction -> (RowBox[{
                    StyleBox[
                    "Row", FontFamily -> "Bitstream Vera Sans", 
                    FontSize -> -1 + Inherited], "[", 
                    RowBox[{"{", 
                    RowBox[{#, ",", #2, ",", #3, ",", #4}], "}"}], "]"}]& )], 
                   "\[NoBreak]", "\")\""}], 
                 LinebreakAdjustments -> {1, 100, 1, 0, 100}, LineIndent -> 
                 0, {FontFamily -> "Verdana", FontSize -> 10}, 
                 GrayLevel[0.5], StripOnInput -> False]}}, 
              GridBoxAlignment -> {"Columns" -> {{Left}}}, 
              GridBoxItemSize -> {
               "Columns" -> {{Automatic}}, "Rows" -> {{Automatic}}}], 
             "Column"], TraditionalForm]], "Output"]}], 
       XMLElement[
       "dataformats", {}, {
        "plaintext,computabledata,formatteddata,numberdata,quantitydata"}]}], 
     XMLElement["states", {"count" -> "1"}, {
       XMLElement[
       "state", {
        "name" -> "Show non-metric units", "input" -> 
         "GravitationalFieldStrength__Show non-metric units"}, {}]}]}], 
   Typeset`pod3$$ = XMLElement[
   "pod", {"title" -> "Location", "scanner" -> "Geogravity", "id" -> 
     "LocationOfTheGeographicalItemOfInterest", "position" -> "300", "error" -> 
     "false", "numsubpods" -> "2"}, {
     XMLElement["subpod", {"title" -> ""}, {
       XMLElement["cell", {"compressed" -> False, "string" -> True}, {
         Cell[
          BoxData[
           FormBox[
            TagBox[
             
             GridBox[{{"\"Munich D-80333\""}, {"\"Germany\""}}, 
              GridBoxAlignment -> {"Columns" -> {{Left}}}, 
              GridBoxItemSize -> {
               "Columns" -> {{Automatic}}, "Rows" -> {{Automatic}}}], 
             "Column"], TraditionalForm]], "Output"]}], 
       XMLElement[
       "dataformats", {}, {"plaintext,computabledata,formatteddata"}]}], 
     XMLElement["subpod", {"title" -> ""}, {
       XMLElement["cell", {"compressed" -> True, "string" -> False}, {
         Cell[
          BoxData[
           FormBox[
            GraphicsBox[{
              EdgeForm[{
                GrayLevel[0.6], Antialiasing -> False}], 
              RGBColor[1, 0.93, 0.82], {}, 
              GraphicsComplexBox[CompressedData["
1:eJwUV3c8lW8bt7LSINH+FRUNEjLTbY9SCaVIRYM2WZE9zrH33puMOMOO6ywi
sxCFjKwSFSmRvPf71/P5fq7nvvbcZ/3Y+DYHGxtbwR42tv9/jdti/a/bNAGv
WWzUH4lksAx2sl692QTNQcuvAxqSoHnekZ3zShMIGXu0cj9MAiX/sUCL+00Q
ZfKW0z08FVr+KNTp32uCVE0rp7KZVLBN2W4gZtAEWlRBBMeTQMhWdH+YdRN4
U3s3HLmQBlqL5+yFPJugSr2tQeRHJswGBQ3pujZB48b0Ta+bMyFfJFK92qUJ
Lhtai7/hywJCif1W6uMmSLe3s35algmZFV4JgsZNMGuapjpnlAbfNN4H+5xo
AvGiQwq/phOB+23WlV1YXoaRQfm/k1nwRXOaG51qAvOrHG8+7EkDq96HSbq6
TSARuuFfI3sGoENvJb31muBWvd+HTv8MYPh8Wn5yEuNw9T/n7NPBrmNG3Umj
CUSdipS/8mXC5im7q/svNEHZ5PyNJ9ey4OLVug3hMk0QudNg6NjZdOjtjyI1
XWqC8rHV1X9W2XCtXJRvs0kTcLs3OeqeyIY/ojOr1RebIC2+4ZxrajZY8J/L
GDFsgrtdV7MObciGwI2c++z3NoH9K+rBNuk04CizsXt1vAmeWFSWbtiZCX0S
OmTO/U0w5hN4JC4pHd6fNptOxfqJFO66NVuUBSrZVK0wzSZI9P6uoPY6C/Kl
fOy4lhohVOrGfxMJiRC/a3o0FPNrf7Z/IrAvE0z5LLkYW5tgprf7IPeTNCjY
dMJKF/PvMxN4fHAuA77rXFZev6EJfntmxE2w0iG8LziWzNkEpkLCAcP+aaAz
zHGIhP159Jj6+1mBXLhmpKG9Z1MTGAg2bTy2mAG+RxnCj1SagE0UEQZcc6Cy
RWkkX7UJrLhsAhvyc2Cn86Idp1YTZOdb2zTp5EL8hpey1382QpzuLb1F7TRI
V/IP5VhuhJT24S7d+HTQfrHeLhrHm/6x/aDjo1w4bz52oJmnCQ6KPsso+5MJ
fnUTb62nGgEtkqznddPATntH5rovjSA5M9aJ2tOgsYLeWP67EXw1C9JFeLE/
dZkZpqxG+BP/qHFJJBHsHO5MD483wql2PWv9B2kgK7sS0DWB6ZbONfK70uFp
5Gyv5NdG4I5vqy3cngmSFb7Ol/D/97490NgslAHN/UUiRwYbYdDd/1qhQjoU
77J3GtiD/UM/RhRxyAVzAYND+n2NwPPlu/zuv2nAmWx8omauEb6I7eMa2JwF
tda1RpNjjVCy9VG/4rFM+Mzz389rpY2QSysREVmXCNQ4D7/QrkZw9L76uW0i
DYYilNJEXjeCiJKD8afFNEg5f3jb1+5GKO/lWUNZGVBVMWA9heXFZdyXOWyT
CRZelXVTQ42QTFz35eG3TNBcv/hzKrMR7lwrY87KJ8IDzXud5uxNQCIaxwiw
cuBJ/t452bVGeNb66PJqVg7kyh/WVcT89nDw1e2PyoRnv772VqzD+Ra2ylZ3
PheC21se5fVjf//7HeLwMhOOHuQ1W8b+1rrYar/TMQfiWrwULzAb4ca1ur+3
stIBfXB3saA3gt6Wu6erLqSDC+P2JGdKI7yPEtlgEpUIThImVO7VRngwpHP9
w9Fc0MtZ6XX/0QiXObyOPrqbA6+KZNW96huha8E1YOd0OjyX58predkIF9ln
eDmKM+ClI5rhwvGXufyf1AOHHMhn53ipHtkIXO5FudKdiaBb/pqkUdUIljS5
hy72GUCfuK9uO90Ih7mdC0yrc2DtLQ8jcKQRRh5aCUZ25IB48pr8a79GcKj6
Ej/2LxHWB3yXSW9vBDNvyr+5mhw4U1Lw1+hxIxxX2FA7P5YIg4SXem9wfskV
tp749zIHptn5utixPE2N7+3funPAYl/R8bArjXA22/nF1dJE8P5jlL3FtBEy
Z6xbBS8nwu6PuYka5xohqkPa7PRiAhznypLXK2uEF2yz44ewPtLyyCxerxH4
A3u7djETgEPh7yIlqxEGCiJuPwzLgUwLG4XG5Eb4F1HbfgLX338OzAOF8Y0w
/Unz2hPvHHic/c/nrEIj2BfV1nRUJcDW/MpsjuBGCG++tOlgbQ7YWk/xEyQb
oWVt4WBZewLMr3c7S8f0r8LOhy8Z5cLfaOZX2f8aIe+KlBrPxkTwKRkY+bO7
EaLDRUNt/ROB7W7v39t7G0Hlt3fNzXVJcGHaWXDME8ff+IO2TF4u3Nf99rlH
FOdjCd/FbaeT4BQjeLOAYyPsTlbc6PwmF1R47jppCDRCg/MJhf1+SeCW3jXc
w9YICqp9DSNBSZA/kSbZvcKC/pOntNt7E0FPot900zILvBICeYIVksBUqUX8
vTmu1+yYR8KLuWAxtvHC9BwLVg7a8o96J4LWzN0T5oMsGEoQO7AYlwhqCVff
LUk3AtPVT1Z1Sx5cG3reyfuKBZ7rCbYlON4tiu3judi+X/EmXx+ezgPPoZ3N
+0tZoNy1vy9LMQmsaJWJmcks0GcfrEo+lwTzvB/uULB+VjJHswu68yBE7czJ
48EsmNGUqknelAR1zCYhPR8WBKeuuecmJsLjvWasXW4sOOF7kFN5KQHOB4uo
vv/Cgr2+DYOBI3lgL3ql2NWWBbr0EN53NgnQrQpiXL0s+G/bw6Gmw3lwS3Nf
xlg3C5pXzqjfUMsD9s8bRq3fsuAYj9m56V15EDba/0y/jwWPTyu5Ml7lwXeW
taVMBwvCszcaHN6WBzcL3otftWTB7wGxzTqWCfBHfQOh5jULbAtM4oVv5QGd
s5TPqJUFpI+vZO2e5YGIZuJ9b1MWWDR89iknJ8B0xBrr8jkWOPt0pirOJMCu
4Wq/GU0WBDQY/PsikAj+U/uEAstYoPNUMPmEXh4oD2WVvaKyYIeR9c/kdfng
x7/F4CmFBT927Is9fTgfovdcUHpQiPkvnTO9geUv+nAG9Rew4Kbylhtm4Xlw
4sI+mRPSLAgbb+9Xx/kvbsO2xJ/BAjW2G/eqQvPBQH/0T/geFjDXL7yMO5MA
i+eV5V8mskDuIZXklpIPNpefts5ms2CcsaLd+bEAPGw9QyJyWEA8eWF49XcB
2MZx2r2NYYE7g/llU1o+bLMwocZj/m8MTf/p9RUAt3foAfr/4929uXTiQwGM
+R5cVAxhwVUdp3yFN/lws4y+zYqDBRpjldXbG+OhaEbK9kEEC2reGnWcJxSA
87MXGvIeLLhcfpI0uJAHWZ/7n6xFsaBH+SVymSkAl8Pke0NhLODcPHjVfboA
FKnO9cGOLGArCBGxHc8Dh9Argy9wPvGmLZaIvcfylakckuEsOFuaP2liWQhv
djsbpP9mQlH67zzeyXj49MXiqJozCxoj3lmzW+dDU0TGvUI7FvhOdVaa/sgD
6oHK+Ticj3n557T8igqgRKabd/wR9n+0NxgK5MNsuFxKKs7PGb/F0A8yBRDW
t943e54J1y04NMbkEyDepvyKJwHXl+ibRxO3CkH/y9wWbhcWrBqt/1gkXgCr
ZuRxLcy/Zexi9y/TQvCDH6xkbL+eJb+ggEwh8AXDaqo9C/i+F/gkHCgAruor
k+unmRCZL0CNQgmwbWF9O+cHJvxkCwnOFkgAfvVa64rrLPB7GmFm7VgArB6N
txt6mVDmZlenxJkAO6XM2y73MyHBPff2S91EODrJr2jwjgkm19YJ831NAC6x
xFLPNibMGmtwOh9JgMvRSaUMnM+mQzeC7LwLoI7Sx2+L6WEp0h/v+yRA+WvL
X3qtTDhknig30J0I28PvhhqfxvrubaLIOBcAr83g2DFlFryI1NalYnsvS33s
ZJfF/ci2PF7mvwKYXHquRqthQkXb37ptF5JAOuGKw5QUC3IzOie5JQtgdCOT
i3EU52e98Onb7QXwmov94o3D2P8Huz+q1hRABfFeFTrIgiSl2WRZmwKYC0yg
fTvEAu8S1vXR+QLYfuXXX2cxFgh9T4npuV8ApsxmTmWMfS5099pWFMBe5SC1
/dtwPu/cK333cQEcmnqeHpjBhOXQA0Jx55LhqmTkexovC5LLso4+my0AHuFT
nyj8OH75o5OxjoXwdHNreV44E+wU8gV/8aVAtIaf8hk/JvxJmJw50JoC69T9
FeVxvDZUR4naHiqAzmMf858uMEFi3mGjQVQhhJEknfd8ZYKw/BZn958FcFLs
R6nbCBMosdsoq9IF0FP+su+zCxMsBneuG21OhdfWX1f/4HjeejVjK2OE8//w
qErjfSYc6/WRfbc+DUKu/Oek386EE2x/Kp5cKoDIE/HBLIzLhTMZvPUFYJ0o
FpL8ignrF/t+eNsWwLLJrjMiGL88P59vG1wARXVsWu7XmMC7Y9OdAJc0QOpX
SzeaM7EfNj472pgGCZQD/GlXmGB1erA4fEM6nHX40VN2iQl7S+bon6zSwXPv
g6f/GTLh8B7vKj58L/hbxCjU4fgakmyNwwKfA9O2pO1aLRO2vOm6ePzNcwi0
ztBdVGeCqHJ/FfF2OiSViBsOP8f8Lhn6HRF/Di6b97QIlmP/3TjiSpQrAgXO
nAdycky4eDQuguaZDkEeu83KJJgQm+VXOWmdDqyz/TZyYUyIU9r98hyxEFZf
sqyWxZnAxdMv2rA1HQb3f7t/ai8T5NoFpyWa0+CsJ9+P7yFMMHX6uZNVVgg5
XL7zLcFMGCq95jEWWwhLlNOb7bYw4RHn9D+RF2nQnHVz4wZ+JpCW8gXk4tJA
/Y2ll3MQjgfxy4UfBUWgcTc28jInEzSaveR9VNPgzxX616Q/DNAAdqlBQXzv
WTyctZ1hwNgD9g0RW9OA/6/CgvcwAyZe3rE/uS4NHAR4b918zwBX0yP/9jal
gvEZYaWwXgaEt3p7tkSlwnJkRbVdJwM+fv17sMg4FZ6NlpG8XjGAR/qBdO3J
VOiip07GXWTCw4eneIJNi6EnWmZiwwUmfKbLJ3OcLIbQtQZZeQsmEC0ud7F0
SiBD5p6K5Wlcv5d23R74VASMMp3js/pMmPzoxxqVKgZf77COySoGOFNkYp5b
pkLTkvXNMczvjI7tZkNiCYxFsU+ur2HAV11ZrRTZNPjpksE8VMGAi4J/df1W
UqGn5Na2YioDzBKtWqZu4f2c44Lx1zIGhFZ23NXKSwW/D+fNwiyZMP+VMdGY
+gI+mAitz7qO66dbSDP2wwuYJqdY7dFjwj6BH45O+SXQW+/pdwjnW0HZxc8e
t17AW9NeVH2cCQo7vex5FIpBlE1ARqeIAe98Nzmy1aXB5wRfSzDD8Yh0VPoo
XwZP8ws2Necy4LqwcqvvH1wv4yN6uTg/JKQ7Z2OXimDZz16EnofjRc4XfEpM
h/aU6+eqMxiQZtoffqYtHfisOFc3HGJCv7Zs+4b2EhiNKvjkFMMAp5+Zvo+K
00HHfmYtNIIB+132BerLpsNps1EhV4y3502aTUSkQzdBKmY0iAHmaSLcNU1p
IHfM0SDOlwFFa+BcEZ4GT2N4G/y2M8G+jUdHcH0pPCxYPhe8mwE69MjDG9mJ
AAKMBLSHAbF7K3qRHxEEwv861+zA/jVK5XysSIDBXb5januYYGDK2mT5qhRk
UsPtHfD79TkJDpoLRJgdeJgV4s6ATTkiPg7kNLj+e+3MezcGBFEMG5NvpYOB
SvBpqiCejwciknm9SqGs4scnnk0M+Hv25pxvdwDMN/YeLV9iQLzATMqAYzFc
M9Nx9RdkwILBqRxwDoQ64yfr3rtg+9wv3trsngGLPO9iRpzwezXf9c0ZGWD0
eLxm9isDmrI5j3w/UAwVKs+XZdgZwJESue9gVgA8TM//FvmQAd4DmQEWlzPg
JLuis7INAzxY70Xi9NMhQzXA/9Q9BmS/thkzXMb9pdZKx8aKAStBYS7tlDQY
tKg+WvSLDjI/zqc8/xIAR0XKtomZMuDZ8bLUjr1p4OPXG627TAcffiGPGJUg
qOOzMbywgQkrlPNlSKocKq5cbXnwmw6dYqsj/XuC4ZK37m3SVzqsJf2c/+hJ
AH750MOhBrgeNrnZHG5LhT03Oit/YXn04jsWe5RCQG3ZTvLVFzr8Xr0S+LaM
ALmHPlNU/tAh5LWitJNRKJhX3V0/+pMObyZeFaRKhYG7+0znqdcMeLMzo+fc
VDE0KEm1laswQPg3t2j8i1QoofsFn6AzwKpm76sU/2LwGVvyffmSATGMUFvz
n8UQeCQjWLCHDj8lKkFgggiHpDQahI9gOrvaymBpKkhSCSnKE3QojTmqt3Vz
BLRtEDn17gcDSh9c0vjxohwmm54/avrLAAnrnTePaJGA/VEN3ySu3wt+OhbO
r4rBbtiY6ncM9ydXR9MunnTwMazkO1qJ80fVdmx4shiW698uzGJ+T4+LmnB+
Kwf2fXOJHIdw/UV8GP/PCM+P+ZGpUxIMCJOzouQsp0LfnrXx/bgfElDElNJF
Erx3LRBWOsqAiKxbF/Qf43oL4bk/vsAAvkMnotqvk6An/ffXjDo6ZIiIdl5z
DITCMLP22W0MuBqfV1w0mQ4i5gaVHh10iHN4/VrvdSSstas89myiA4oYXpg4
GgVx84OjfG8Y0Bz83znzxyR87/a4Zb9nAiuVI7RwoQFuJxUvt9XQ4ZvnJsGC
c1HwKvCL23acj7KvPqdHcGdAyO+pDrNuJnh2mNNeNDTAm4/5C+6NDKBZXZwT
8SSBplyztm0RHQ7PHzK1iogCpS50Rv87HfyUWVTXCxmgai9/YqAW1/ehIpsx
EglII9+kG+lMELo3zVDaCPDS7eqTLoxXuNtv7zsBUE2eK95WzoC2VIKCPosE
KxveaW1Jo4OnI4NufSIaguxd+R8l43z6dJdPtDYaYi9IKyl8oEPgT9uwWP8M
qGLIXCSm0MFXSk3F3iEG7kr8yzkeTweXy4t7P/fFgA3P+DWtCDrMkc+5fe+N
BYpSQKw/xmY6Y4o8NnEQXkF4qBPPhA6rMq/fCgATL3Qe/QnE/VdGTvdETAOk
9Cn+Gg+kg7L4fxn1frFwYUfFXasbdFh48p7sWYbr6fSnJgOsb9tXbYOhvkQg
lfz6FFpIh72kUW8lyRRoMpG9MO5HB7alU4FCgrFwdEi/SB73w9cDVh2LPSTo
F5G7p5RJhxjJXur39iRQ2dD1ciQG74d1WbYfnAFq7s3mOON8uFTsojhungED
oW0e/57T4R97zB1T5VQYZEno9XvToXXplYCyBuafYHirDvej+1V/A90mSbCp
Q9KqO4MO3FE7TI4cSIOx3dJbH2fj+r7hv8fgRgZc4jOgnX/CBM6Gdx/GjACe
zBu1L6nj/Noq1ZA2GgQufKenpSLpMLLkxHboeDocpa8rnVNlguWRH6efxNRD
vh31sOs9Jkxv2XtyZh8NnB4PGK2XoMM2e+mtrllBUOOrc+4J1k8s+OT05ewM
8Bxp5Sq9wYQL4sVsX1RoYIG+Nf/A/VcezXzOqX4JlgfvV9/QxPUitr7upxgZ
nqyZsb7a0YFkblvlo47zS8J/ionxscfZIOiRARnd72VRM+63tR/WsT+vAekU
96pa3D+MpT8es7lSA5rzNy5TFJkwEf5PKD8a4LNVfv3tk0y49yt839wAwItn
/O7PJnH/qL0pHxpYB43nz+vG4vc6ceS5qeoaUAgbnBHH+4ha3Itqp/paUDu9
QW2Agw78JVc2peNjhWEsc73LnAFT/7FHP8qmQrJmkfwvNSYg5lPukdM0kJVe
yPyA6+HB5G67XbU1MP4mJi/FggHfLW+Y3+2lgkCw7De+SwzoC2sb3B9Dhes2
eiey8xlwe4wvV6urGiqmbXSeyzPB/KDj1aEDNOCXsLTlxP2FKHnd4z8TMljl
Lkj24/54yywod3xHLYwUbbU1usCAjVaewRBFBe8aU8MWGp53bVcS/S1rgTvv
e1r1CwZ8eF+3diW3BlxeSsrr7mXAb9u3ovqXyTDL/flRP65H7g6mam9vDYS4
njh6wQTvW2PvX17gqgCl61bsw3j/VK5e5vJToEHcrR73kUy83/19ncO0rgHK
Xq4Jna804Mjrzp6IDAarxAS1uF0MWOqcejtfS4ZOEyFWGZ7PPh9H43W7yDD3
98m3shwGcG138rlJqwH9onbmPjwPui2O6oibUqH4O0v6lyIDtNM+/dukQ4UM
sbDRQz9p4C7JI6DaEgFaPnpH/xLwfvPCX2XT/Wp4E3r35dkTOH/sz9/cpkaF
qBPPttadxP7tEArcnE+Fo469MdKzNLiUWdR64U0Y2C8JKspO0GD5bEHndEUI
uFpHP6jiZ0DHsKnP8UtkuHyco+8L3oc/KmaTVHfTgDvhh9/sVjy/zj06su83
Gf6YRL2rC2UAr+ru92StGhBVvXpi13EGfNqQz04qpEJJpqrasiQDjlWZRwtg
fSqTGmiforC/d832H8X5ICls4Jj8mQZ5jbTxYbtIIJWdp5lwMOBFclzCpytk
CN9S+UxSjwFVQmeEY75VQPsJn1RNPG9oBO9tnf5UaIkWePqHjQGfD7mONXuQ
4eN1V+9GLG9qTn0hPokKcQHcX878o4OG5fC1zzZkOO862MFvxICtKinFzUWV
cLyP0+36Ag2eG4fqq1fFwOibxc26t/C+IpO7pa+pCriE3r/ZdIoBRvfvcG5p
qQDP8Tnxuf8YsMGtI3NeiQqTB3/MaO9kQGHsWHnBYSo4hq52bvlOg90Ca0KW
qzGwq/TqfLowAx4GqHyjzlLAM+jxv8FhGnxZvZl1ijsKZLNCWdzTNDi+u59X
sSUaggPETZ3HaEAxyE/QK42CyWgtjY6NDOjfT/j8+x0FBtY36DfbMyCd4rPs
rVwDHVvTSO3Y3hOfgiaqIyug3j43mu8TDd5YS06xzcaAZWfHg3b8v3T8/gMq
r2rgZnX3cxGsf9r8/WutURVwpaFigQ/rzyG4eeCLRQWo/Ll8XRrb7zE0uSdP
vQYkZtDEMt6fQi3sb2WwKNCr+Xr0Wy8NVL2LEovjYmC8dT/PwiwdmBMO90i6
FFijfqK+xfNaQt1MJze9ApbPcW9dxfzq3UKMdFg1wKecMPtpigH5n9Uadtyi
wV3L5seL2xnAqb1V43ZfBdwnB0dm4v6wpl15aMSqBtr3ZSU8f00D88RaPim5
GHgS9at9FO9bNap9FnL5FDDkvvXnsiUDflnuyecj18CxpD3NXuN0yJ/cm5dN
pMADjfNhA0I4n61HCjn+VkDUh/DcynoaEKBksAGiYSimmGcd3udOFiX8WSBU
gOPIh/EdhTRI1pHye0iNBlWfmYaGeBqwlP6QYVcMCN4xIf43jPfFTw1iSbcq
oZGW8pQzBe8neVcaFCNoYOiQ9KLPnQYXZL+0O/+OAQOHIP0YoIM/j4XdYk0l
lCnNbzldi+fRyU+L6T8qIbI3iJ2HTgfp87LX2AKroOhburBxLh26/UgFVlqV
cEt22CflMg24xKJ0sjxjYceD0TNKVLxvGDrom01XAUt7qnwE76efVD2u+8fQ
oDQ5/eLWcExPOKvW/LYSSnpOreTF0EHYnk0rxrYKWoVJ5j06DCiRUpHXBRpU
ef6ZsZOlQdePaIsIZizwj914rxOM96PRyJjdM1XQSDT6mYSxfuk6ryd61SCi
apTBH0oHzSTd0unFapi9yism4Iv3g/dUF1Gvahjoy+Vaw/SbjXNnyo7VQMMW
rquCAXS4xne2zNmkBvZwpb7Zgefh0hg19Nf5Gohq3vDj/n06LJoufXuaVA2K
qXIX1rho8Kzje9vw51hY1DzO7fcQ65PorMboqYaRhgDFm+twvi4ok0XW472D
oSeUPEeH4LvSI69+0OAmj8rEvRqAVsv8xecjseD/4l2SGj6jHj5siL3aHgu8
+095NGB/2zredZ7joYPNMdaw8WWAgiqv65JzsRDQ0XxyG95n9LX+sfowv7Jv
IZu+7AZIqq0Uu2MbB8/g1+NjVnTomGrZ81UEx9GFtEujvQFy/lK3Bf2Ig6ns
9dkuRng+b3//tUMH72Wnd9jVBDaAVu3RI/em4kCeosPGL0UHt17jY7HX6dBr
o8nnfakBbr3N7311PQ4oc15UJ8UGiOFv207ni4PHXG1nOdY1wENddtov0ygw
7dOmyvE2wJzdywXi3yhoERL8JfylHt4GFhTZ9UfCFdWHHeGz9bCj+H1KeGw0
WLdluUY21wPdqTTWZXMk3LBZJbO/q4epwmMV5/ViwTDkX27NexqIcQz1Hj9L
h+zP77/vSaiHGw/UDOfmw6A/Ojn6QXU9SMll3Zj+FA2lSCPQzrUemn3A4OfX
UOAortW64lMPTm5zx+smYuCC6IxQpHM9qB2bfXdpD66Xdv7i9yr1sM1E+Y7L
yVBooPW1viyhAbPM6V6tC94TtVzW5VnVQ1i3CpuRUQw8Zv4zqb5eD4NZMyve
YTHAyte3+hRGgz/uGdt7r9HhjuqTuGBn/F7xqY6GEx3+7Nve9Ir0ErhXnpnW
dgUDy0DMv9n1JQy6CWnKNQbBjl0p9s66LyH8tOyh2uFA+Jt1PfCGKA3uV9+z
i71KhzGrA5IUPhpc6xhaJ3aMDirP0yY/Y5xqsbany5gOQrIRPiWbaFBwtbEl
EO+xw5xfJQN4aeD27XBXBd7DprdJcjTwvYRTh+aHmKH4Hq4JcCr7AGDguE3x
4gE6WJLfC5/2qgOO7gSlXOVA4LF74h2pAuDVGqeueBnvtX0DxYP76kA0ttc2
So8IbsqNwgvDtQB3RD3OzBKAXSqmMP1lA1Qc83shivPOtvdR3jPXBiiOMftz
CNf1wcGxnAyPWjhib1dOIAWA5hlEGjGoBbvu9rm8aH/oKPL9qbqzFvhNw19R
hfzB/bJu7KOBevjleZuQHIfv0otH9g6N18AfhQy2vBlfWN86MmjJqoc63aeT
N/BdZGB8tNO6qR5SmSa9/Hhu8OX2L9GZNWBs/9vb18MHLjee44zJrYcTz88O
5H+kQ9DTVxwqL2pg4U7Zjp4Sb2ixb7bdUFoPFtuOm23De0i7R/mRv4n1UPj9
7T993JcL9cv5Lz2tAf9hHr0SoUfw5TF9127nGjj1jnN+KN4OpNIvWtXgvepQ
yU9y3KwNTP8jTFYQauAdQ0SWK80b4p3bJ5xcaqBNj1CUwuEGjivnMs7q4z0k
a9ps1zVVmPXe26dyqQZGpL0cfm+9CSkCffm6T2qAv4bPiuvFUygan7/XhueM
e4I7z+TIE9gq5FampVoDGoV0jXFeGVR/ZFIB2dVAfbZI8O4Xz2CFfZj2dl8N
XNC+ve+xii3a8mMl6swu/D7mVZVS9AMUEeLOaXarBnaY+LoFhbmAXfXt4Vn8
//Sr3J9UpjW6Z3R0m6l5DZCODHM2CzpB142IqkSJGuh793g+3vwcisgUCiy6
Wg9Upbm8M/gOyL3y9zDXjRr4dqLuI6vFE4y4z+9WwvxtA2OFKD3eINy0cHmZ
E/Of/72ylecxMh4QF31jgf3Bd9yg44o3xHRX3ONjvAS2eZFgZTEGaCW1MKrv
VYPV2cfPKZKO6AT/kEG9cDX0h8td+WrjhP54i5mFiL6EI5J8Dkv6DFBWNQpU
f1MFXW0fPozZOCP3Pf/Oy47VwZ9+0voH+I679FS8LkOgDm7fTecvv4Hn0PSS
rXZDJehvff3tO58bOjqShsgqleAgG6I+9eMZ6rza/PnZiVpwd0wPLChkgFKN
0WuVXXgP2/+0XjHHFd0Vf2hfJVALt/mkcqxS8R4W5CSTL1oJMV0ZF312O6D7
BacS/9taCb/cSvoFTtxDmqdDAvt3VEKu5foTXLk3kNjrsoHwjZVwpvsLZSHd
GrHx7z9jIFAJycbNV0SaLyLzUeH2wj8VMFDACv1j9AgplGXYceM9NL7JbW64
iAHCLqIPJ/Ee0bGjwVyCyABRhoX269YKqMtIaBDRNkE5YgS/qtwK+D3qSshx
VoAqEYH1780rwC5X6VrK0Hm4O5B3Ze5YBfwNMn/hOywJw64/0AyjGnrkM6K3
3GGAOdPZjcO9Ghre39rNfxTXw8BNY3unamg2/udqvR7vpf7b62TMqmFSxl3y
WDQdYm9XhW90rYb2LTuuMq5i/47epq44VkPLuttLQY8Z4L2jX+O0ZjWk/VbS
v4X7URAhfPq1STWEtiiqur2lA3Kpcxs+Xw2qO1uVD9XTYart49bz41SQtxW5
d+maOBLfmiA6dAPP1U0FGqUODBiNMC6cxXdT7r4bCQQBP3R7k8fqOtNqqOle
5fkbwoBlgQPXNmRRoevK1qnzDgeRtPHGjrjRKjA9aRxijO9eFYHdFj5nqDCx
yH3fN90fNeef3vCKtxo4PdrY/wtmwNxI1aGbwVTwWjw//eKkItzQfbtbXg/r
4yUROm3mjzZofG37gO+ciA38ovtz/VFP+cqchzYV2H44jqi+8UMscZUUKXUq
nC6P0Ob66o+8J0aDyk9RQa/zZpuYuD8SaH2830WZChzlHCHHC/wR51aFmvWq
+M7c89dwpckPqUdzruqeoMKar8nd9N/+qD0tLGerHBXUmZF6p2z80Ue2K6Fj
rlSweUd8KNNjBIVNcEJhPxVWc0RHLC/4owelrfodYlQQ3VPQr8/0R6cl2Goy
9lKh7vv5wdHNWN8K8Mu8g+9YdR+3EC0ryJX++dvNggoDDpOzuRQzKDmcURx9
mQrZ6dV8VFFL2FrR89nDtQqYbUSvx3M0eLCYVGeI7z5LcBjao3kPLvfkyT69
RIXFGiLpyJo98P0rKy/XqQLKaPm1+iEamCmIXOqlUYC6FF8vhPXRF2BWbd1V
BTLPPwy+x3P9UvbUrb5dVAiZrjRR53SCdOG5aGoDBUxDto+RJ32RRVXD9fZ6
jGXDSXq8vihvf7q4eR0FBnklXgl6+6BGP63NfdUUyOreWXJkwgetDr99e5pM
gZZF+5DHN/1Q7i2O8OZflfDC58989kcavKYwUcczCnAbNvOJo2AkkP/2hBvG
96Tu5TwzD0anhF+E8rpRIODnq3NpD4ORUw/iGXTG8luOHXHsDEbs/Xa/TZ9S
gD31SfxPhWD0n3dnkjbGdcp7E0K3BaPH3Js6qS4U8PjoMZd4KBjtdBVDcnEU
+Kauat+l6Y0krfiXfjtSgPyB51szezDiyt4k/x5jS2ulD53rg5HdP5+mkCcU
qE+sWrv7KQiRfF8fOI5xJgdn6X6Mvzj9qkyyoYDa5hReDc4Q9Ph8B2fOHSyP
wbcoIRSCnDd+Hx+5QQF6lpzH2r4QJHAknVx4mwJP7by9fzwMQnr6G9vlr+F4
tPD3uZ4MQf73z7w+aU0B3TcRRopWQaiYMyVl42UKHKptv6ltEIIIMbDyzYwC
cjw7b58xCUGDjy7O3LaggNLR36r3DgWhyd6VUGRKgZGx+p2WliFonPZAU/Q8
BX53F93s9Q1B1Bu/0q/TKeDY7fE88pAz1G8+8/yNMQW+dEa+8/oTiC41Rm5N
rKUA554vy5+4HODpGbrOP0MKsCJyd6m/CESr0f6CV6gU+KXs1v3fLwfwtva6
7XOVAoXeA3cNsn1QmXGZtUd6JYjf/tArN4LjK/zftqN6FPjK4NJVOhWINrtz
bf+L7z6ry5LhfYcCkXBAfoqrCgX22uecEmOFIOabJYlwbQqIRhXu8FgfiBzt
iA/kMJZD2x8rYRw6t3y7WJMCZjsO73j0iYhyekoOtp6gwG2W6e/B4RA0lRL5
3xr2V7vRyfbX0t5o9ciH3j/qFMhYfRVs1EJExXVV2e0Yv0/qTZrsw/jtxD6t
YxQIOZ86LPktBEWuvRzXPIT9vYvqxCUciiaSmtii5CmQvzlw2vg+ERmZM8SW
5CjQLMTsPGlBRC0qDwePHKfA3dSuc58wXpGxqsyUoQBRbuO1U3pENB2tYdqP
5U3fZG/78twHfU6qsu2RokB/9oaTE5heuNJqtuRaCU9qR6z/e0cDO/879nVq
OB8Lyb4zgz7oeIbNQRrWZ6n2YVvxMSIa4ePI0z5IgeOndpRJ8xHRjPAWI+sD
FDC/xvr79SsBmUVJLg/txfl0lzvAsJeARoX799zfRIGLCdUV16+FonUVSxdb
sfyZS20WzCQflChxXGH7Tgok/Fa3lJ8goJzN578LilPgB7lqnF/cFz3JCdiv
KIjjw76S+5CLiA7bxO7z3Yz5U0xfIzEiWt0+VmeF8cON8gdteImoJLljdQbL
EyeGN7lgfW6uPBssw/j3+cP+BDYiStY72LQH46Qm6r6KWQKqTn8V5LERyzv1
Oc5LnIjWq2UFzW+gQMNmA5cTUkSEGNtaMzF9q7jcH58eAlLPFrfVwvT2sFrv
+/uJKEND4s8xjK1WPg08nyKgsV9id8h2FMjZbCk6L+IMwl9q402WySBdIEd0
0A5FevlnryJ+CkSeL3ndg/2jJvLv9JcFMtw2Dvd5eCQUcUr80s9np8Acc33h
oc8EdP8A+wcBjMU3+XQKvyeg7RveHuddI8Np57fvLn4gIEMhvwvX/5GBw93i
2ZY5AjJXq8w7jPF0VOwBgVECshFbaeuaI4NjhYIRnTMU/fd0885dX8gw/nxm
2X01BM2LJIvSlsgwmGxnM/GWgGZXd1VpjZOhQOr5urytoah3woVXfp4MB3+z
VWmMEVCbctSJim9k+HSMaRAiQERL6jpntdkoYP9RTPqHkw86YK20ZiJWCUk1
m9dtzcT9fEN2WNgAGep4P0sTREJRyFb1w4MfyJCyU3tdwcZQ9PTAmqLoNBlO
Ktc1Jm0lok6ftbfiF3D/ydmyVGbjCqEbS1a0JskgfK45++QRIgoO/srfN0GG
DlVC18xhIjJ94XrgOa432f+SJCDCC8oFu3fuxXT2rDdOhQZE5HiU4v+rhwwK
GfzRVti/rzskIjsxjs85V9S6PRR1MQa+O38kgyDLSFPwJhG9ZPocOILxNCXt
XaI7EUUXPf2oie1lVRmqG2D7YM+/D9KDZDD4d9J87zMimiwcaljC9uxs8vk1
iusvgNNiwOM0BXb9Ndp+8LIHcF8yDG/sx/5mm+8axPV26f5ljod9WB4lW0Xz
ChFxGrlxS2MsGbMu1h7r+8NnyDD/HRkStxnlym4koir9LSp3MTaw/TEzxYnz
7d+W5YCXZOjsKMDNMwJNOsJulzoyMBr/O+ksEInGXqef/L+9Zcu73vBeJSLa
r14t514yyKdsm/kiSES6oabiShhfigjw+3SQiOwm/NlnusmQsfFnsvoTIvq4
4KrZj7E99HLHyxMRt6Gpfg7Ge2fstkZIEFHWbGvXcyYZjAnXm6ZMQlGyBO2/
p7VkmGCFx9LMI5D9+Fa6K6Y/eSRF8DgTijyjWmR73+L8bMrZvg7X76ftfa+/
1ZDh/tXq5tW7EWji0c69VpieaX8nXArXj/y/I/tZXWTwChKPeoH1qa9fYffA
+H3w11PJt/F7qfqK2xgfDcmvCzmH8bu7S92dZHg6fW2gTpWIQooPd4+SyBCV
MnHn1MVIxKurMl2IsQnfjT8PDCNRufxu0TsNWD+u1Vkr9VB0QK79RForGf7m
Ni42niUi5ZvbVu5ivLLD4ce260TUoPj4VgOVDMTbVB47ngh0Y74r06eFDLFG
0hJ8OD8OSXoNjC1VQLGvJ1tpHA0yuk4+etJMBmrgj+MXcX6KM/S9+l+Rga5s
1Kixg4jCE92o+6rJ0DZlfXNYJxS9X+1vnWgkw8b4oOvjnkSkFthnwMI4hi6t
K4DtXR7RYrbh9/6C+W4dcQTky6ekXIWxW/uNwe1pBLSqcGfeiYXj94NHYXM0
jp8vW74kxgr2OoqnwohonD7SM4/7eY+K5jOVJR+I4ZAXEW4iQ9jH0vJEOgF9
37TNez+WFydiYApCeH74+c0mMsjgNGEcbfONiHrufGI7gv8PFxwpTo4lIO5z
ahljmH/RqM2ZfpyPRYqXTTIwPlJo9DEH2xcguXo6rJQMXXt5KXyvw5GeFzvx
LuY3e8ROSyge59vTgYFr+P8hbdEzCu0EVDbxaNfx/+Ox456VgwTUbQt69/D/
kT+SuDudiciki9KfTyPD6uHSD7XfichaTKLSBuPQe+3OX0aISE6q+VBFHs7P
7bkn0xwj0X31HfZR+L3dZ8pbXtz/OEt+16ljvNjdFXzzLwF1uG+TyQUcP/vr
bnU1RKQosU9Oj0yG49rl1df3hSLpc8Y2f3B+tAzW8t/qICL5hzMdAxiXFRRS
7vcTUV9atEE+fq+ncZjU6Ijt1/LOOYv1qbhYdd0T90/zwIp/EhhLqz001hwm
oAjR40bK+P/nD88PH8D1x+1a+rerngx389qaTEOIKDDC/m05/n+Lftqw/VkC
8km4rnkQ4y+0pmuHzPA8+a9O+yKW3yO8e3XqJwGFG/3ZLITxPcc/6ZT1OD+q
nzS44X5wik+uNMmOiCJOsYIUMX5o33L2NpGIElzys7Nwf/D38vx0PAXn4/is
5x2MD5vnqWmUEVFTYzr3KK4fnT8HHn6jeqMbEpFWa5i/w9301w6yBPSt20j8
Cca+NmE0YTUCukMfvJ6O/Z1hp3uqvCAc3dnFpnUP13Nbm6FTaymer1GpPWRs
33vVfDXfHThfJi/eoWD6FK9/w2cnImrttYr3zcX+DlpL480LR1IHIg7ScD2Y
bohZkskhogdVp89YppFBYp5t3QunSDTscm65pwr3/xbzb3XtRGQh5q9dinHE
z9i9B18SkVdqs5EItvfLzGk1d1E8n3h5+DYWkeFM1g2jQ7tD0e4UqR3NWP5Q
5p7VtzRsj7NJvl0lGcj+Qxlr9Tie+sQMNYwz53nqjDuJiJjKff0j5v9mUu5y
Ld4vFJp7Zc8+JwPnux1iPishyEirW8Axiwy6thLvM3LDUaV7RZ0q/l+C7V5/
Pu6Xqz1eqkRMf7t/3vxeQDjq2djK4Yj509j09whjOnHTyCYDjHc6xy0WaRLR
I55b4pJYv1DK3zjh4QDU6bcpPfkoBaqSmGdNX/lAglzM8v50Mtgor0vYXhuO
Yhd2PdmD/ZXbGJhkVh6ANnvFudhQsD/ZsouKThORgLpdiRvGT8tSn6w7QESz
NUImRji/lzKYN2gIx19g2EOmnAzPNqlFPAgKQC9+UloHisng+vtbgDohAPV0
+Kk7JJDhkP8/9zdioUhDkMCttg3vw5O9uwQTveFOMI+CQCHmH+J0xSE5AIWW
XEzeFYT516t91Z8OR+u1G7URlidj3qdFTcL7r+/Pm4+zsb4TkYZKOQEoUO6T
uBP2T25b8Q/d8AD0OGB/2clwMvT9NvT6guMVLC+18DeEDEpJncINUqHIgi/a
L/4ZGVpJj/2tsyJR/6LH4ZxUPJ9MkDynfQBqmui7Ou5Lhs1bOqVvbQtFrYK8
qdzxZBAqqhZaVg9ARcVrwgJxeF/6FfO67gL2F8fnCyWxZOA6dnbfkGEAcvkN
AYYYx1sXCpAeBqCZ0fKVfRhntLmGxV0KQBqeO6jOnmRY5x/2O+hUKNr/1bU7
wZ4MjzOXhvLORSD/uck9aZk4H49vdtYec0cs1B/CTCHDI+Y5AZ2tXqjqx0Dn
iA0ZZK/nnNTIiESJCWwv394nQ9LNYRQVFoEepphzX3lAhmYXi887TCLQIxfx
VhlHPC/ZEpMnlUKRj7G6+JwdGQxP7HLUNQpF7H2jocX/1//eteNJg14oZKHB
sMWfDOji7g++dH90/2qRPsWHDGveWwQm4/zR5p9v5L7EkKHyrM/QYyF3tN2r
+FSFLRnmCNFSBwzxPu5haNSF7fsZ1aiv/NQfWRCG5G5gzCtEX9P08kd/nTNV
LK/i/e9uJeTFRSC3661OG8zIUEuK2J4YGIl0xYe7SFa4ngh89ySPhaKE06VX
BMMq4Gjfe78kTxq0vRQIRpdxfrpu43YRjUBeW4SZLkY4v76rjq3FRKKhhv86
GBexfv7ey3HnI9Cy7ZX7Kxgfm4qXizoWgdReMVcmz2J7RsaX99AiUYfsl5in
j8iw3rxpXsfVH818XQ5RwPpY3r3z66RmKLov3v6Njvebsl1DBcrJ3pB9aGCb
kTbeFxWA9a03EkU3EAuDtMiQNoRECzHunqNbW5lgezyWvkdKhKJYnUiJvVhe
Hpv2GXQ0FG0UWkq4r0OGG0hnZTMzHHHsdd2ubojnw+zbq4I7Q1F938cGFxUy
OFecqjg/HolsDM+yT8jj+F5PMHhQGIX2fE4mgxyeN7KHv4dXR6Fptq+emYq4
37RQHXSWI1Hz49cJcZj+j5DZx14ahXQEDGYPqeN51Snw/GlzOBrYpnuNiv3/
ctvhNOEYf3SbdKZxvQIZqvinioVXIpEmx+dmOazfk4AeMX2eUCT5TuJu4hUy
fHTLpkmX+aOYr7HiXTJk+OV3/22BbBTyEy44d0kfx+v3k26OHcHofpxGZCDG
Gn+LehFHMHpXmhJUdYwMbDuIXaMyUciWbfzNEYypX9RNBQyi0HsDj2LQI0PO
P4XJwekgVDK1QLpwhAxjbgoX6kaiUK3OvS9uurj+JHvHG9mCUZ6F+eEHOJ6G
NM7s/Hp/pO4VzyxXI8OHxYSk5fIQJGCn6+CI7a05fmLoq20wmmHaXhE8gev1
jkVdvEI4UhRMjbpgjfePv2+6Be+6o7nihd+e58mQ4KN+TeIlztfb19buYrwr
T3u7A9MfvUku5S3H/uzx7U/8fS0czW/ynjDA8SHeiLKuuhqClhR9VBcscT+v
VL7/xvMZumdKOEo1rYBnKQsdifdowPFv5pOdNJbvWz/q9iMMDdf3aCko4X7m
0K4v/yAYdVmTuBUxfTOSMd6zMwx5Nd1vNz2K/a9DY27wCEPforyj/p9vFHKM
i2SaP2JsetAwfhzvLzE/9qsvBiOXpHVv9siSQbv42YMLPcGoPw8d5D5MhvkB
2c6be8PQxnFzi9vY37MBKU1rhcHom1bS+xcYr/gVOfIEBaPSuJWDCphflPDG
rTt6glDYYzPh21ifC3a5L+WeB6Mq+5EDpFNk8JgqC/XI9Ef1nTpeNhfwfvRR
weOB9jNkbXmq0GEzvgcGvhh9WoxC1ML40QuqON6ChMgLPf7In+A0tYD95f2G
O/7gIq6v9thjesq4P3jX8wn+80c8iqdkVXH+PYivNDRWDUB7XCJtN+0hQ9Pd
Uw9sH4ShTk7bsxU4/2PKs+7U4f5pze/w3CuHDEab9gu/zPeBWsu4GU9Mdw3V
H68wwPNA+/Z/KQdxP1X8Saj9HYQO/DJxMcf+ydMzNjzgHIB2btfkMcH5e3y6
42mnJ+7nGW0Ki9gf32e/xeVmBKC0DLkPf3bge2RfYtu6b/i+XLpqVI/9YauT
eOwjBCCti1WxORgf3hrh01UYgO7st8tt30YGUHyl9/1fKMofqcskY/+7i4sc
97lEQC3+r1zqZCqg1kD605HTNFiXq16diemvzaz3Vp0koDfHeSrlMJ6Ws3ly
F2NSZ27KDYx3bPqN9k4GoKOp0YbukmQYTns5yoggoMKQDte8Q2TwM5oYlWYn
IMK6Xy29mM57Peb7VU7Mb+rJtgCM905q1mb/R0Am3+66vZEgQzGHWXbkNQKq
v3lrdUIY81PgGVMfD0W5M2c33cT+crD+/u5GIgE5jV9z9N6F71NaRmLXaBCS
YYzV12whw/6vbCO/FkJR5E2OTh5MTxa9Mn46IwipHiNqM7dj++/ztN6rCkKf
ZzMGzMTw/JCpqGE8IyDjNqUEyQ1kSN0xMdi/LwwFf29R7sbxvWVD/L4T3xsi
XsaKKhgH/KKuUAIIKLlB3fH4btw/rrgtzKcQ0Iyo50NVfnzvBmiuV9oUhqb9
s1ZUsPwalY0oJ4SA63+XCAXbYyEmt3ZVJggx7soodnPjfjdz5+Df2lBULfW3
j8mF5UW9HbfDWIN+PW8F/18g/HyDI5WA6nI0aFy8uN+vnKl7Zx6EBET/8cfv
x/dwyFD6VuSOLBRbNXjXV8Aa+3t4pEKD5tePMqhYH0ebRYUyMgHZavkJaS+R
4NQtHan9eJ7+KjwRU4XlhQkrszr7CIi9zjzZcogEv27v07ZTiEZq2h2hIexY
/6mii4c/ENC1DZ/Y1P+R4Cuxq2AA75PVYkqqFqskiFtKflqXQ0B/uY/cKvxO
AqC8c5TYEoJ4y52czP6SoGF2SD4sioDixrZelsN4k8O7LcbpBPRJsO3t3AwJ
ckWqPkqdDkX3VH3FJF+T4Lb9iio9LwbpxLZ8j/tCApnl9J+mz0LQ4N8AFd8W
EhTN2Ix/jYhB0uEibkP4fexetRGTqWBka51DC50kwUoyNfSpTShKIbPzXmaR
YFRAlmvAKwbZPD+ZpLpAggqOCHRcl4B+xc+yS2DMd4wp54Hvjz0XB+PPtJJA
auzSj07ZaMQ4mr/gx0OGc4+FpI9MeaBGd08Layyf2K+x8kIzGq1PJHB40Ejg
5Fm6+rgnBn0UkZq1/EGCEn6px/rqOJ8dLrU0YX98LkrYsySB74ezad38QALj
Cu22e8MxaDct2HT5FQmqW7Yv01SjEYfZqQm7ORKkFH4gnlxHQKVu9/mpIyTQ
sact07uC0cI5JVrzLNavZYPul+0EZCRemrER45DHs97L8gQ0t0D2+P2VBAP3
Q5aO4Xvlwno9TiLGR/KGIjN3E1AYt8OiN8bqWspn9dYC0LjonWE5jHcd4TmR
i++VqMzR1h7sz0Tdx/E3cX0Lt8f+l4CxvvQBXz1jAgqI2X78CMZNsq2W8U8J
qOuFHPPkBxLUEjuf61/B9ZnULueC6acjW/6kKRDQQBEp/irGcg8OkCNxfduX
2TzRwvHkqPWxunEV9wOL+9d/fSaBuYXn6XoXApKtDDQqqSTBf/w9x/WNYlHJ
Vc8L3zFdiSi04dYVAtpEPHHqEIMElK3RZGmhaHRWSNNYjUqC6Zf64wvEWDQU
dCb1Hp0ErZtDOPrFo1GVssTaQhUJnrp23N3QFYNqnu3PIE+TIP2tzfoS7K/6
jWtPz2H8+/uc46nLBCSQ9M6gBP8fFDu8JaAlBnmXnC4bwf735HvLzj0QiHaf
9JLgx3TH3bonD7+LQZzZlFoL/P7NTo/61fUElD8Q7zI/RYK0HzmHbh4nIJVS
k927Md0hc/VJBe5/bLsbuIiY3u1/f4BtMwFd2nIkyayCBC+faA2GfI1BZxZF
ZzZjew4n/PdkC2csWv7+nNOPQgL5dUe1JXfFom8vvKM9y0jwLX6svOZFLDJ/
mFm7iunGH3hS+LB9M+UE4/skEnyRYlzj+BeDfhqVu+gOkkDk3V7jwPhAdHg4
IjjlLQkGt78o9UoIQS781z2/95Cg7VSrqhCerzLrjGtbeqlw532Qa64SDZL2
vq2kd5Pg0+Gcsj/7g5FZzqmsQ8MkkOWqE1x8FYDuf7rFWofx1cXTorU9AUhp
yKB4vJwEY2qvpC4uRSMxb4Fu4zck2PnW0yTLMBglHO7kWML70/rtb7ZfaPCG
fAOpZtoACQSGUxwo1QHIOfTFa2+Mp6IPrPPpDECmBL7c69i+bbXBNv2TUWju
7aD3WYzPXtowt/A+CklvNlpaziaBYUFCZEVxLAozuP3XNYsE7lNvkx7WxKIP
PocPtGJ/XLzD/0qfFYWebVMclMH+88gqFjXB+1qOmVu8bB7uT+IDpY7xMeh+
/xu2xRcksNiWnmtWFYXEAmeL69pxPtC/nXh3JBCVxHUc8S7F9ntXruR1RqEs
6w0315eQwLrwoPnPqSiUTzuo4I79NZdwrWUF31NFt5+Qi3H/oUpsqutcCEIB
A/feer7E/rr0absMKxQNHuzfbNiF403e02wRHYBEdyqWv8vA/eTM1sUbl2MQ
+pqg4YnpV9NDHR8oYX5JR8O1MP5W0LbH5mwAetD99ONWJu63XDahQvQgZHp7
f35JOrZ//MzrhEsx6JFomKgMlte2TVB3268Q1J6f4WaG7b1bZZZA5o5GO5PW
tCKbcD5afJ9rkAhEf64M6rtibMrUdv95LBD1fOiKv4T7U2yTUM+ZdiKqVU54
55tPgsCLBy5r0KOQza1Xhqup/++n4uvqH8egom6O6gbMn1R4Ktu+HMfL52GQ
AH4vm/MmYccTIiry1htvqqfCa80v24tVafBw7+Gva3jebCv8t++opCciDNy9
XpyL+4HQcxV5ahQyelB4LA3XW5MJlSs1MxRt+kLzqsP2HvwdUv6CKxDpbxFm
K8X+vV1sN1yTTETROl+GXRpJsPBEyoZLiYh+3aL3WzWQQNRd3K0mIAjROMJ1
d9Rjf8k+0pvJC0LzKWuqybifx/Bf121d8v8fBeYdz/X3xfFCKJIoK1JGqq+W
yiicKKtUhJSoqJSVlEhRNhkfRDI+wmco+UxKUlyrjCiSIoXstCShgd/5/fl8
3PO+49wzXvcNduam7N856H992XFKRhIEaPY9Lsvgk4KUmJ1+6jdgumLTMD2d
TxbUb5CNNbsB3Erxs/MxHop0P4mdxfv0Ki3+PY71RyD+oI7bh3DgXGqaDUzl
k4QLCesfLLsBq12GpSMxXs5FjP4SXBQHvsJTcwD7h/ZdOjWwKhyK7tWlmmJ8
O+xa3rLlZzRE7n18ywb1VfM35+2/zUNJle7nHin0T1aKBrV1cTwsHGb0eWD9
0NfvtP8vJhJeti3pkCrB++CqNIzi++fQpl/eT67xCbV9as9+rxRwD6qXj6Hf
J9LaD+/aWFSQl/OOeIzieRqtqppdxuJhu91fY/U4PhHZXBdU75EEt4TlJrUw
X2zOwOo+6UhQHAsjYmifuaTMUso1Hly+75vwQNZbY33/t348SFb+c1RP4xOJ
BSazmk7xcHhoY9GEH9ZPx+GDUxkpEGU2+PPJLT5peijDPiodD1aZJTey0F5I
z9nnwt04kD+13Yp6kU+WbBYc3JyWAs+1f0QGpvBJ8xvT05mSFBg/J7Qj+yaf
1EqWfZ+Kjwcn54q4YeSUjg9fl3rFw/2z3NY94Vgvl++iWjcmgeKimqX2tPtE
skKpQDCkgtT2K7a9x/vqdGjkBeP7/mOb+ZARzv/iut5cl+J42GFTXZ+HvPtX
j45IRDwosvOiTXB/PWeMyO3eWGhxMei/koz+DWaMVqXEw8NOYy/hdJy/8JaF
45EK0mDmqEu7gf14STWfk4L6YyLz69wgvG+hdYPtL5KgRNWg+FEizscojYqI
i4V1Xb/cf0bziVE8yybmPwoMbjB84px6nxQq9gfExVeQQlmvbMNLWF/kOUcj
8P3Mn3tYIhztn0us0/qC5121WXLTx3g+6Z7PSi/ziYWGnQuKHVG/lkvoTWR/
CCWt24xrYy7zSceUzKG9m5LAr1smzD8A+6FSzXvJrUmgdDhzxzD6uzV+6n1x
XRLEOHQZ06P4xGvDHyvuWCzs4nVc9cLzf/WceNvKioBtJ651upznk+zNn/26
85KgOgESPskUEpHPxVdNfkSTL41ifW+d+ITzeUv7ov4U+Ha2WzAOvz8VuTWP
tz8cYs1WRvHQv2fI0vGYAHwfuSqvNruO9ftseIfF62iIkeW2JuJ9Kv/IE/bQ
C4e5QfXf9wXyiUK4TUzDwXgYj9rKWYh6+mCjC+/CVByhUG71yqB+PZW1WOaq
bTjRTzkpqOXBJ8tf82s6GEkwP0h871H03+ehjIuXtCjQhM+iQIxHav7EvviV
FAzqq8VREciCsVdM8qPh2HGppc2n+UTSdtE3Paw/FRuUXyS488ng/hMyDkuS
oG/L4zl1V++Tcw9Ujn5IriDf1gUFx8gWkrpNamdXG1DInLGjh8V9+KQq1f1j
nyEFTjx3WWuJ9zVmNmGkfCUCLp5ZK3ntHPqnJ961PCke+J+y7/xFfZ0l6y7W
2RBF3v2WzNJEf2g6MXd6K4dDZv6hUyNn+YRbOmXDsY8HV8WZlAI8n3OmXcwm
JwosmE2i63vyCa+V0+2+jAKi3F07e/7wCazYLrRzVSTxNttoxET7j79Vxef3
xoPckUUjNEeMJ50yNZH8JODlUhX+v99Hl1aa9w7EgtGcgrKvaB93xJCnXhkP
QVfEJM7g/JwKKX5KVDyUNOp/akU9/NLAj3b9ZyzZFh21OdSNT4TvaMe9GY6H
gNze2d1j2D+ZIpEqVuFE0jLmm64rxtP2o4MXrlDA2mzIdQjXNzlg0s8eSoSx
77t54xh/KQMn947xouGPwMB29VNYX26uHvkbSoHybqnZYLyPLxoiDgfwfZ3t
qD5wAvXqhccjIcnOYcS84N4J5xN8Mnfx31recQpcdTt/3xi/D1oXoZYWFg+/
rXPspf8fr+dN8+0UoqHW69c5zyuob+svXXWzC4ephNmW//D8v72f1fosjoaz
E0mqB3G99rnHfvTfjgX189uuueF80rs0kmXnx4Ge1Rvh4ONYHzY+VeI+j4ca
GSNlZ7zPF67bN5WNRoFovbdN9Xa8r81m1oKRN2FXvelJGResj9Nd2q9k4sF7
0783x7ywn3O8mvxdouHTTfNr/rh/iXP/vutMxsImw/ynB/C+4yfO1dl+jwKh
+FNznx3jk6NvFBXF18djf23ScsX7mLFOKog6HA28K1+MIzDferYLKuubxsMz
74Dt6Xux38z8Pss+mAQnusuOa1/lk/NLJ5qce4NhufWN8KVHUD/8C4na6Ifx
pzHyvsWBT+QlMvtaKPGgEZxX04nrvxJqFuah/qr5Wu8kZov112U4imVFgUVN
C+cUoJ417Z7y9/0ZTWqWcwoND/KJoLt1Rf6bOCidNyRXghx9KO2QXFYctMsu
Cqw0x/pBX65+qD4Rfmfc0WXY4fppbYtzGXFgMP24T8ca8/Pqetv8dRTITp03
ZyHab3dok08sSYRbIlIO/rj+ffkbGy0eYL/U7q28glywPExQhB0HIeLOCXoH
75Orex8tZ6ZVEOv5XXGA40bBWoP91nHgFD6sJfyLTyLqRpICZBNI2VQju/0M
nxis/tU6dCEchrxLP73E9WcrE8zeheB7u9FXzGIHn4iqxH4c3pcE25UDZFP3
431xB952J8aB+H2Kl8NJrL9lB46LaoeD5l3ltdGHsN7Y1MVaoB7xUTpls+0F
n+Rop3frSYcTP8/e0x9QP07a5q5TqQwnwsT9YySeXy0MCt9cjYKxijgxGTPU
14LzJmfxPEaKZTbiR7E++oosH9oQDhbp6+32YrxxJQKXZiqHgeaR96/EcL+U
4g/FBlnR4NbSlMrTw/pqWXRJyD8RNnNn7ZwP8In9vUbRvogoSPmz3L4aWav5
yq9I2yiQ/2Dabojr115/qsrdGgn7cx+oRmA+tu5onvufbRhc1VUvcd6H78UI
sYUv3fC90GKl9A552C5LwWBjNCy+eNc7CPD9XdnMy22Jhw0u+ypVkd9t+Lsy
APWDbKQumLRjPS8Tn7F4HEMi7EeCCK4XbNa3UCY4AnwM6UPWON/espqJoYko
oCfWqJXiecSyLE9kXYgEi8GXZ7r38ElZ/1mFR+nR0HdL+G+gDcYbeRttlhYB
QRr3PrS94ZOJw9NfYrbGEjmt/0DTAuP78soz1r3RkC6Z2zS0G/PN90Lyd6Vo
OLLGOkTZEt+3Is+ihq5HwbOgxrpmjK/E2b+MxDSsBxEWaYtxvFps+KmMTBR8
cjxeu1If9ebWV+3Lr8bB6O197mLrUE9cedBXPZsIq8bMXR8gBwuuNGC8SYSL
Mzc+70H/zlRZePiNh8EbT1/qRU0+yT9/Vj+7NxEKDsrVTeL96O4oUFKkxEFl
RE+yLZ73evdkb9v7MFib6XY4C89H2eEgbegeCptrjJxkt/LJxjfTCQPH42H3
YN+qayaY//wLJjImURBl9Yp3Zif6b+Dr54ckCv7N1I5qoP0E5cqWGrc4iJuJ
vDOL9i5UzWM0xUgQzP989OoqPjnkWRxQ354I22e1H09hfK/jhJ/kYn1JVRhe
MKuK9d2y7w0ZTQTp35e8rxrySf3BJ/tS6FFQsof2V30Xn2xLvvfNJyoCIp0d
8s/ifOvT5h700kgEt3naIVHGfEJ7PvMgpC4CXP/YBlio80kluzZa879EOPGw
V9tXBc9728es5GYiJDkqM/4p4/mm01Y//JwIoaHLXxhjvTxF/e3ZUYjnE3+8
pxj50vdx5+shUZAerSexG/nDQjL0SjsKfD02Nd5Bf/rbNBmoB0dBmKfCZtdt
fJL0TbWKox4FIXG/8tK08TzrnURmMb9mqZ5/05TwfbHk279luxPhyz6fiiH8
3sZxWEf7VwTIiBZWP0J719O6psFjkTAhVGJ5XxHj4X6KyaxRIoh1jpZzNfhE
6mhrcKV7HGg4dt8WxO95ErsVpfoj4JHX6QUJ6H+hm7uu7RCIAvM9lWS5Aurz
p+Kqi48mgtrP81IVOP/A2Lzq24KRcH5UflQf57cXd/hz+WkCnP7oc09VGutl
Kt/suXESNN6x1jFEpt4UMEnYlgRB2nrnV8rdJ45PHjxchvUtzWvT7KWlfDK9
PmqDSlICsLTufVHDeFzPCmhflxkJr7ZmLR1bzyeRUuHVyS8iYPTeHeWALzyy
fjq1WO11KrgqW0e2i/LJuLA2pxaSINNCoTpNBt8zUUf0ozTiQbswP0F4NZ+o
0lZcy0uLBEpjcc/TTzzy4tPxF1aVqaBK+xvZNMgjWukt8Y3PUyE1dPGzHRgP
T/kpacZ/I2BfInz9ivP3HPf+EW4RD566dY1ugpgfSrKftewSQFJWdMnROXyS
miRC//wM969wLOCjAJ94n3u1XroqDtzfxC693sIj9G0bbS8tuwU2TlvftP7i
kVt7DtJH1ydClwUv8vIfHsl5XPP5O84v00w/NYnjc6WSRXz6KEBpydDUQL3p
3nnTNWhlAgmw1T2n+pVHSkYzpUsyEyDiTGzcj288QttF29P5jAKnOoy3Xf7B
I7fvCph/5sVB/Whn4s8hHtE0nnpuKoH5MLHe13U+xqdoRNO/PWEQ3GxgKz7M
I7/GNzbopyeAxs9vyb+E+MTzx0FGTWwoCJoFbXzZxyOjOnMyX3ApcLE8Jcv3
A4+87H9xnC6bCIXeC1UH+nnENiXhV0RDHOwfTITudzzSZ6qyL208AS5JSHcK
dvHIZKmzSmQYBSQ3r52oec8j7ZdfLAvOpID/qY8yJh08EkMbGR2pTIDF5rkd
c7txnGK4yfpmPNyVDAlURftxh1HxMh8KfIshrSLtPPJcpuBq3KsEEPdTeU3D
9Y5qaEUeplHA2SPoplEnj/AOf3y18zAFot99GDZ8yyMchdf5tvsooKBt8Gwf
fl85Mvj1a2s8+MtcKbjYxiPlGZsOTWui/iS/TbvR/pqWZKv/0niQjzwT3NnK
I6cHFK5LnaVAbd6r5s/NPOIkut8s9QgFjryac74ax9l+pfPy8f338LhHlcYr
HlGVuDP9tycORLM+hlqm8cga3URux+o0cI+q+CdUyyNLn4rJ59ylAKls2Uit
Q38dlVBmX4oHW7PM5N/or+zT12/SA8KhrOTVuEM18rH+8tCLFCg6vPN3K/rr
ye2GCx9SIsCfnP4Qi+P7Fp5597InHliGk0rVlTxi02DwMGUbnmdkqDQE2bMi
/pCODQWq07RXOpfzyNecbyLn2jC+TvuGRhEe6THvrBu2Rj2k1HSnqgzjRfgY
y4NOgYdm8kevPeGRQKUHxRRzCoibCEz9LeWRV2XJK7xDKACtCg7q+UXkiOWy
YLP0ChL1sO2NXCEP9X3KgTnGCZAyX91T8AWPBG8VbKffDYU3zwZWjjfwyI6M
79qv9obBSc+z2ysLcJxNnp9FvftlUxpnXg6PLDkXfOiQcAI8XvzteEguj/R3
95nfdqBA3vwHAQ7HeeSn9q7fsmHpYP78mcczrFeto9bqNtsTyWK3Iq20OB4x
MTutpzROgaqHka3FmTziTBn6l3IrEl5MHbqacxXjMcfwhHtjPBiliMW4Hysi
viXqQwk5FaT7xIvo77uLyMdifTVvZgVJLhP4sNydRxrtRzaPVcRD8JvO4KWX
ecRsm+rY8d0RQJf3OD5vGY+8Vy+wHn1KBcOhQQbLrIg8Gbi+vvt5BdlQ9uta
ljOPZAis+Rh6iAK6A3rzPirwyIHrccsaHlMh9NmenETkZvaddloxFS6b3Djm
hyxjYUq5g+N3TJ4F/JDnkVQm/eH1CirIvEjWe4vsn3TAi4Lr2T6effUP2fJf
QcFONhWcd0oLliL3vJJrn1+K3zO/ZqQhnzZZ880Tv5c7aldzDplqOKwdXkSF
lSM/M92Qs7rVbvXep4JXu6bTfmTZG/v2Dj2iwoXlslxLZR4Bqx26A2cz4cOJ
WcdlpkWkM71hbEN7BTGYaYm8LMcj9p6rfDoLqOASuHlMEHl93tbuORwqnHvb
Rvsli+c5vTSnjEeFBEp9Zivy7TqVXJU8Kt7fqQIPfx45Zr7a4uW5cNggKuPl
4MMjh/QWBMzLjoTuOs69oiWYn0upT5WZVGgtHfTUQ1aftVB2xfWcDDIDZfWK
yCbJTyKT9yuITNCKrAoJHqFoFhW7sKigF+QrNrIQ6/3ru8P1XCqcl7fs8TmD
9cxU+mOuWiTsGPfYYi3OI14CyQMmOL6n61TsKp0iYg+VXm/eVxCVIqFTymKY
fwGpBvPQX9pH+ttuLuARxagg9ZYSKlBebqJrIlsr/Pyw/Q4VcoNUDk3N55Ew
IY1DJnwqnFn6ZbxHlEcGiftbu0z0x84jvUuQn0y/EB7G+xJNMzo1KcIjpk6M
qydoVOgVjCmbxe+/PHy0/uUaKuzMozXVWfLIu66cpf+8KLAzujWwEu2dI7wD
FZ2pcFDI0zNLGPP9kp/ltnQqBGxaLv9gHo/Ue3QOZlJxfGJkZp0Qj9Qd6/uo
hHyr9kuNODJT7KlQCK53OeHqAhkBHnGj+acub6TCpXih1KNzefjeKXfYmYP7
vS702m2WSyYbM8u+91ChYav9mvBpLplaaZ++qg3P2zK4eQTZSuLJfGWMN05Y
SUUTcrGab3PnEypMvnMRjzDB+uPpf9ZrMh5i702z0/9xibyUjtkG9E/JpcgV
fsicOQXPXehUqE2oP3fFGP3zLz358q94UKLmeKhOcEnlga7uLvT399/BW5ci
T24v2mmA64l+eLuGMs4ldhcs3WYwXkXkfSUdkGdU/2oKEirQ9yQ/Df/JJcKF
HQM95VQ4bWx15AyydEwFO6uSCh0WwVnFY1zyUu6TUgjyhn0GjxOR7068D9LA
/CotW9xRaMQjfivfDyo4x4NCTsLXWn2ML6UXt9l3KOAbx/yQasgjn14WjCke
i4f+gsCSi4pFZMLkiXfPhwryz//Pe+M3POKubfC2978EkjdZ271Qj0fULh5+
1zeHAp8d/p0s0eaR/ZKbVkVjP8wbpU8qdXGJjTXjDbueCscThA4LI8feS379
6zkVfH682/R9K4/s3LJEZo0I1pPclhvRH7hkT7lTwutnVDgyGrXdEzm3pf5w
En7v6qDhYIH2t/Ok2O4f4iEt8WOIHzJ/2wqrxzXx8G/Zh1TTd1yS9vqLsCPO
v8Uy1lMXuWn3Ps9SjAen6N/s/c1cck5HeUaSnQVc/eRwdfy+WnvtaP35eJhP
lrt2tHPJn+yufWvQXw9vfJaQRJbMs26zraWC//Df2fg2LjkUu+hCRgMVFijW
vL2GnE8etU/hemdP270T3Mwj3/llbvyAeBiwPy0e95pL2MQ/GV5RIbHqaakm
8kvqowsP8HzjbZHco61ccj/75HM7PF990egDNdyf1adWhmsX1q/Xl/S5L7nE
ILD0Ab8a42VQYbP9Oh45r5STpVUSD7Prr45aNnCJ3BmT9U6tVHh1f6eP+Voe
2fY0+efkGgpMuriISK3mkYn8oG8yehSYXpd/uV2DR9b9CVjIfoP+iw5aWq/O
I8UaQqq56M9nyrU+Bit4ROH8FPXyHwrEuMap0LAftIrLXrLRSoA3awLcGuIx
3g71XowVzQGT1asC7sZyyYHbSyrmqubAP3Gl4gNof//wHdmAbuzvi19IcbB+
8n2vfVq/OgEy0o49HL/GJTtpa6pGd+fA/DSju9ZeXNLjUbDwWXkO+BWZrdTR
4ZLNBbczgttpoPCn7LggslVOyqRAJw0sy0cFp7W5RDaa/aD8FQ1432rORCHn
0q/nnEf77uaj+TbIHwySp8ff4fjBuotDW7nERWuJ0pYeGhy/QaEuQT60QeqQ
KnJDpmRXzxYu2f1t6QNmLw1Ao7fnI45H2wxtz2zC+VqiRHOQvYNn6xubaVDi
ED4tgbyfJ+Ifg+N/b26RdMd6WyGkLT+TRYHI/bW3SnC+ue3pP1fV0+BWiH5V
5SEuuXEn/GzjTA4I5MPbno1cskj3cdacQRokXhyPKEZe4/B5g8QwDYJic/Mt
1nPJdfs9fIFPNGi5WiKhhtw2uqirbYQGVT2eXpewnr7XdtdKj6WA+5dQoXkb
uGTM+vjn0ioaLHCHx+/Qftkrt6t1NTQ4+4A5kqbBJS0WqzYPf6OB6a6OO7y1
XLJ04KXHe4LrJQvNpalxic5ZKfrfrzRwJHM/JyPXRC9/fQ/tz4W0lHxfwSXV
Cl+d332mQb9quVE78siu2KMzX2gQIHDJ5A5yu2R8US2ep3vnVVbHci6Bu4au
+3G/xTve9fQpcUnU7syWQ300+DYwj/lFmUuGZt4vKsT1m4s6WTXL0N8ePk27
qmmw41ypRYQel0g0/FubtCUX3pddHRq5xSMWznNKFkklkDVG2Qbqslyi5L+1
TxzPt2jwgvBXGazfhVL36p/RQNjaPoHXUkiW5MxtSntbQR4bWKopSHHJyrHc
DUsaaFC6M1d8ZjGXDOvuST7/nAY1q5MTYBGXXLvwkWeH+1spbfXe9juXHBdx
C0telQD+E/pZI5Ko52z85by/h8PSe5IjHlKob/xXnf6zIxyk9iukbl/IJTHK
mjM6jTQY1FWX/iPOJZSAP0luL2mQPNTvLtyP9+t7wWDJCAX0GIePm8xF/29f
UnIC4zcx5eu4IHKdktPem200WHbFtZ85h0sOfrRkNeP3HXJw7TyyWoDPIhu0
N1MU39g+zSH3X/EW6qF/d5f6fQkN4RGPc6FN/txYct0n61Y81itBMZP5TQ8o
sMqgOqtilEMGyMB/rW9ocP/zTtL7gkv8prd/cpuXAHM2vH4pi/qvk9mfZPEx
jhhts3T6O8ghAUW3pud208BI4J5UPzJlUm9aHfNFKza8UnSSS/4LSllcYxEB
c6a/aS7p45DzM9Hlihi/RpfDe9t7OeT6mMJnB8wnF/rprDmdHBIv5pt6aBsd
dEUUlrp0cIj2ePjKvH10yJ3MGZb4ySG5vu3zmgXR/8fSP+mhvfnTrue96+lw
/eh7Set3HGLlvvLpbvz+4dnapMJ2DsmqfGmVht//Ete7Ev2WQ9pDe7o2OdFB
8P6be01of6v6pWfTGjqUHOJvO4289K+Uziucb4MnZeDBGw5RvVW9ZyXag1Sw
nxFyl/lyszYXOriLLAwPR3sfH4WWUjU6FIw8lVmOHP3jXibB+aouHPyX1MYh
JdQi/1q0F6ErJigh7wsVvXDlDB1snv8Zm4P24prnfOpX0GHxzfSXfDyvonSl
/j2c72V66uzu1xwSdkb9ozvaL55bnPKmlUMe7Qt6v/wsHWoPvu/aX4n51Sl8
M+klBTRH7ilr4HimqpzEYhwXlO+fqX/FIWurnBbknqdDTEKf72QLhzxtyw9I
RA6qPhPFa0b/bPzbv/kSHex+fpOZi/xv/g/ZVche17sjF5dyiXuGk8WJ2ASI
z/baVPqCQ2Q0/cLrg+iwdeOV6gXIV4xNSh4jp+mxDSbwfPLd+Z9HF+H6lmVj
Ich+Bg6fGUvpcHCPRe0+ZLtf8dYacnRw9XydZYq8Svi1Yh/au3y2fbGgi0NM
roivPXaLBlsnMuIW4vkN7PYeeruEDqlKzRqTyMHV++2K59DBfqih6TZyXva1
72Lz6CBqWOxbhTzUOLW6f4oGj+w5x9SQ1+1YX8NEe5+H80Qb0T/rnSKP/hWi
g2GKzIJtOL5F+tbGdb9oELbZ6u53HP9Hn5PWit/P+uqGPEX/bfH9cfvYOA2W
SnsPHES+dbJZe8UPGjzbd7M4p4ZDuMb1ao5ZdBCvPsCSQ56Zr6TDTMfzGO4u
1qrnkDiT5+tKvtNgWn3/Ma3nHPKjf0ug4CMaLHE4AuaFHPIn1Z+bW43xec3c
9VMph8Q65qg/xP3oHcnb9gq5iL1Jo3OCBjM618d1U7mEP3ZWgF+YAM/yf1MP
PkZ/Gv4+lIz1cX/qyl0uN1F/RMwz2/WLAvYiWe7b+Bzi0bPzvsZfrB83DKX0
eRwieiu3/s8MDZY/Ml21+TaHeH8Jj/HspUPhnq1Fu69zyZMTLvy36onAGh9S
cC3gEJcvr38EC9AhcDLvvyN5HPKf/v2wGIzPM0ea3RWQRV0UVZ9o0CFs2yGf
HDqHCFSJ8o9j/AfrvvkyzuQQmsPUBz1BOnRVyK8wQ35d2b3+4Fw6/BM48ngj
jUM2pquMZCvTwdb0i50Jj0scp/33UAsjQWRRjz0vkEv8uZGFK9wTYUJA5UhM
NoeYph1Pmsb46Zbfr3olCOvvhxXbF8slAsWOEsYLw/4/4XNMllDgIzWQvRLt
5a9t+rgd93+lqcARMjnkXLthZwHGozDraHPVLQ7hvQuZK4vn0d28JHxHKubD
T6uuKVU6RKdIsBLOcclh3YZ3SScT4dnpDT+23uSQy8Rh92b8PukMYVUlckht
dsPR4/Pp4FQ/cbsA+U2+rkv4AjooT946rIu8y9nogq4kHa51f/enJnBIQeDD
LYUYf4ed8k12IAvtazY2xu+zdt6fTqXgfdrK6KiJ0OFj+D6BP75YvwstPtxR
YIDbLWUh29tcQh5fyFyhEw4Clx68WhPGIQ3S0pPT8nSIkOtixUdzSd5xwS9q
PZHAy5b4Vh/IIRf9Oq9aStNh3/WiIplQDjHcNhCyuhD1ksqzTTv24ntF7tDn
RmYiXJN0Wu17hUN8ney4OhifXsIPfH33cEmzTKKhcVYiHKA/Hy7aySMC13ev
v3UlgSQ0CLbbBXDIpuZ/fmUFNNhYpWW/BVn2w4h5FgPz90HAwnXeHPKEdtn4
A57fttB+hZkfh9xsmIIJtE/0o4WFeqF/xqr6IpbRoeFIyNzD/hxyuqX973QM
DQzVipkPLnCI5/dIxX24n8/+dYtdL6H/g+qXvPSlQVLM9kNHPTA/xTOXFCjQ
oWLeVYX7+F7ZwnutQSQSSXZVnfarM7jeqprbekp0WKgauv/IRQ558MH6iqE7
DZ7nHz/XhvPPSJ0fkb5AgzatmNwx3K/Jme5nN3H/u/dk3XQ6yyFb9XVOjHJp
0BXSIaHjyiF06XL3clk6BOz17TiL/tFUrjy97ywF5u3YnCZ6ikMSeZFrDRXx
PBuW7j+M+rWgT0fT80oYFLvcLy90R/+ulpNpotHggN5/1Qzcn7T8A5MXOTSg
meYs78PvPzaMsJ3xvMLKmeUH0T9rq4VZEdY0yB9e8eYjrn+Y6j3zkU6Dobin
W14c4ZCD/oujFTZh/1N6vO67EerXDKbSc9Tvhq9dSnRwvk17jgf1G9OgMmzd
+OwJDilV+ifbYUYDlU/lCXTUe4JuDbZKDxKhRa0jN3Uj6vv5r1dXbU4g4bt8
zyns4ZDb21zyhY3okGmRYPpjN4foT2vvW7KTDt65OmkrTTF+g5aaOpvSYVfK
uUCRg4XkYYDHUsnHFeTbvhKBFcip79o4VdUV5Egu7e8TIw75uv/gV429dKju
lrN+oMgjMQ/fOYSpXCfn7w2Ky6H9uenQtY59FcSl4fbyfnxfjM1Y6Lp4x5E9
I/oPHKSxvn34+WHjvURY5021GljBISqu/m0REQzYs+K81pZ9hWSTlXWNXlEF
eWJYueof6s1VzcXf3+hS4F5X+ua1qCfPGlTOZ61GvWNUy+eh/kyi2KtZG1Fg
dP8TSosihxiH9w97RDNAyLlDgI18ac9CNYhhwH9260WGzbjkXqn9QFtPGFQt
PuRz4z8c7w/ZkWZJB0bgA7fXEnh/Pdb2oqkMkJ/ZaNO8kEPm2PJyLqcxIMBn
p3qGLn4/br523ecI2OFu9EtLlkfaNd6NrbCMJ0ckpSRKdxQS0wTHPYWFFUQ3
sC+lUgT14GlHrSU2FCjbk2LFwvdScfnGZ60HEonj7fTpvoU8osVXzEswiSU/
F/9aayqP8SdW9KrVFuuHeVBH1CSbyOxVep00xoBnE64OoshFKU9W/ZpiwE+6
kqEB8vH6iOBrXxnwTlFiSccEmyy/aO8ajvbb5/fcOoxstkPj0RDaLzfXLpdE
btwVvInyjwFqj3ZeTkHeEuBPnD8zgCN2O8QDWbjE44Q3zrft9ff58ItN7N2+
L7mK9odHAn+JI2t+L46aM8sAhqWQ7z/kxi2OlhtHGEBfFs8fQH52avUBW5xv
JkOJ/16/EO/P7Ubfiwpi2PH2QtUYm5jIRc/ZMocJEmNVaneQwwXrvW7MZULR
EeG+Tz/xPJTA6eZBBujZZ195imw+vW4bY5gBjW2jufU/2OQp7B5e0c8AP0ON
vkJkgzdHvu0aYMBVyc/uUko8Is3JqY/rSiJWB/31AMcNb23YsaOXAS7TA20K
yCsq1wZJ4/cPhpuiaN/YhHLvcFm9IBMueBTXxSLfNtWr/irEBJXkebm/x9lE
YEtbQN0dBkSFGuvpqfBInK7hjUuKyUTkQLpWFMZHqfdext4TdLh6xoudh98/
tP8y/PQ9A7aq+AWuEeOQDb/WF6Xg+B/NnGsaX9lkb/m6K6/eMcCu0k1PHDmv
Y8enjWj/tFf7c8cnNukL+VdvNI8Ja1zWGPuPsoncnCPD3ri+n5Rmwe4RNtG2
vGVY086A+OGOtVLDbPJIhLtGooMBZgfcP00MsUnwnCVpnjh/jGGP22lB7OdG
53/zUE+asoMLwgVQXz3ytZO/TAe++ikVdbTvyN4f5oj2LaYfR94Osgn9Y5ur
QRcDfuyyGxvE9WTStdu8sxlww8o3uwqZcbtTemcuA/h2hSomWwrJyvHHr1M+
VpBXHy14e3E/A7+2Rf1KZ8ATa9e3asgmb+avF6QyYEx/X9QurULiXL/9r2Bn
BdkcuoDK7maTH5PDaxfi/UTfMXe+gXz0PSvdow/zT+b84UXv2IRztUNyvzgT
Duwt2mk1hed9L3OHjXpVez+juQvHneNvP76J9y97Y65qHbLOmvqqRxg/eZOT
z3eNc4lebNLOPb4xZPBCge0E3mec7NihuhA6PNl/qXwW4+96cPzNZZl0UHVV
tliHbDW/O1AMefcYyD3BeGGW1bNIDh1GxB6edMH9nSnVTLCPZ0B+tYaKIbLS
SpGXaxMwvtZepjm0s4nrnIrikSEGXLu21lEbeb5C0q+yTwzYaOIkLSnJITrL
3n8Imofv5UfRg3++s4nqIbOeVjrWX8dXbfxVhaTe9+Fpg5IKornqe2fTBzbZ
5Lh4JiUM8//8fwd1ke85RrsqxjLg08oF9X8X8whd0T6Q3LlBIlliy0dHuKRf
1OnJzcjr5JHkRW/BNjbZ3GSWOu8LA2qPHjQYfs0m35Zcn3cS81vrq+3ZpveY
7wcSf6zwZYA5ObT9eSebuJifWJHjxQBVHbt3hsj7b30qLcTx4PsC6f7o37nZ
E1lPrjLgSrY0raID4/e9hFqjGwP6dzUZhSD3zc1tm/ZkQH3K6yi7l2xiI6/r
v26UAWu2X6wW+8Ylq3uYN1uLYgkZPxlW+pZN7r+0qio7xYDBDb/FNg6wiYL7
O3NnBh3W3uKP/2xlk1x3dU71SQakO5xqNBfgEtWB8Lp18WHw+lFlXGEzm4S8
TE0tPc0Ah7q/f/Y9ZZOL+VTe9x8MmE/XkaxtYpM2imn9EVcGrE7Jp2fN4ZEv
2Rb9zyWTyMoBzWl39IeYs4Z3GYsOWpdHFx17xia0O8ZOuYex/oxeHNuGfGft
j2zfIwzY3GM2PdmM72kZp9MLJGKI+fxXly7g/C3p3XWrUf8LeD4RvN7IJm/+
yIkIv6TDZIznjZIGNhkUuSgXOUiHxjs2PPl6Nul0/XA37C8djtxLevIV7bMT
PrfoEHxPvZGTz0XmKCjXyOF8Lvev3Ct+ziafT1ULTLygw81U2WuOyCTtwPrI
VtSbKbWn1HH+N5X6Trv66PB747TJIM7vY/RziR+u9zzC3tusDutRh1zeBVxv
zbIXe0WRt523d2LO0OH9K4OEm5Vs8ncb8/6qAwxYyLykwMP1PT6qW+c8xPdx
D89hGXKiZUCTBu6v8bvF6hhc78PeW2v9cH05lURZG1xP3n6RwxZcX386QkK7
lk3Gm1ccuYnzx96+9m0C/ed50FOqdi4Desue3nVEe73iLuPGDjpIirRHL0E+
vVa58fwH7Hc3Njw2Q/tzuuzHj9D+6K/9CoJ4n4/FCldoSGG/SwrdEFHBJkkm
cevtLBlwlulsF4PnqT2vueMJzncm30fHGNn7eXy9C87X8iR/YGMN9gvWX2VZ
/L5rnKLfWc0mVPfcj54yGI9T2VKayHWL/4s7hvw70y2rAv0xkT3gtXg5A5qE
r11SJuif3aN/M1QZICA47f63nE1uzV+246w62i9arl1axiYVycEWFisYkPbU
Jy8a2frphdrnKth/Q7Iu6pWyycKs/YrnVzFg0aTPsTeP2ET6abac/3/ob72T
5VuZbLJ7vWb5p3VMeHC6NOABnU32DI+HNSKfdJif9+EBxm+Bz4tZTdQzWao3
ViDHKE9PpGgzoPB91ypVrD9TcZdH34uhHi5dn7wE64PXnDdmr6RocPuvAf1p
Jt5nGK0kAfvxHMuh2xFpWO9itktGfUNW+KVoc4NNNKz0p8qRt9f7DLJj2CRj
UWZeoCETjvrIFq67jvVD3DHyGPLI8RVP/sayyWG5wNU5qC9OtXk870FmHujN
nPmJ99M7YW2P34u/8rc8OM6Aovc3XPSRvySNkvu/GCBXkRgiG8Ums8FWdXsn
GaB0vCXlXySbmO7+vp2F+sTcP7j+fhib6PbnMI3/MGCuXrh7HLLs/N02Vqg/
ZvoV1zoEs4mQyiJ62gzWW6CV70QO1DrAeYJ6RGfKr2DvEw5R3m6xvaslFN7Z
/mp8hP4y4jflW62hQcG/ZM5oEJuMDBbnnUK9kcwt1PoUyCa9dW2FUtjv30dW
PP3Dx/zJW1J6R4MGVIX9x0x8sf/lNGyy2ssE+HNsYj3yWZln+r77mGCUYtI4
dgnvq3fVv0zs19KdDafeI/sd4YtUCDOh2rvBsOgimyi/eJCZLMqEG9ywd1Rk
/f5jdx7OZ8L8ziYXjXNssj6tZPuQFROGfrP/SSJPpr43FTvAhId/fYa+eKK+
mlkRwrBhAuet2vxXyL6fxH4J2GE/nJa/yvVhk/PHnm5qXMCEfboFiunIejEZ
BqNiTPiwId7M9i7Wn4G2+fc0afA4x3Hlfm8836v/LqstZMKbmnGzLchLl/d8
C5VggrH0mNjLM2wSqWt6e7s9E2ZkhDbdR17/yFkq4xAT9PaOLDD0YBO1M6uP
iEsy4RB/cIsqcu0biWb3xUx4keL7Md2NTYpXyORWIR/LrBS/hrzgn4TMSmkm
zDlwufGoC+bbc5WBK45McH/XObET2dEv9vA7Jyb0PrlfZvSJTzQ6WLJ32ytI
nv+K9roMNun/U/vtnT4N7v2bHPV3ZpOmsV2xN2SZcO91RvDBw2zy4pHFhuMn
mFCjEVi4HblcZQWj/CTqSevQ8RmM7yBn71IdGxrY2L9vnkZ95iu76Vj+SAbk
Xgy4dRn7+6H930N2MTNgS0jYakHkv9+M1tziZ8Cd5qn93qiHEv38n2ybyICO
G245VEs2Wfbnt8zCZUywPDPnbUEv3q+uY8g5bgYUMHaenkVuenDqihw9A8pY
N2iNO9lk3YK4K80r0L99/b+DkWv1N/rz1ZhwM2j/hfnY/yxY8yOD0zPgholU
xeJXbLJhV8DBWFz/AUe6f38Lm2SWZh7OeZoBjBtfgipCuKRepWnX8QXJxD3X
JuqxFpsk9285U2bJBJs1SQeCkO8dt13zfT8TtGzuNhRswvzQ9rrYjTw+L+Hz
ZeT/xL/8ccb4Km78+/Mw9q9345z2qKgMuP+Aa7NsA+7P1oheassE5a3LHH6u
x3jneh6sO8iEigsCGR+x/yxtkLpT75cB57+4lW1Ee/OCgoQmc/R3nhLrBHJW
rellWy0mGK4cFLVA5nutHivczARh73wRdU02SRE7XGi5FeNPTvb0AuSFW4+v
LdBmQguHInAC63/6i5atVs4ZsPAsnKKtwfrh0PmMpsOEi5Ilz6KQzV1nDefq
McHvmV3Okyo2UVGkqG+lZIDIpgOf5qlh/rV09Q6aYLw13A7aror6Pmqvqbc+
E5Zds7BRR/42194u2YAJjL+BWvkqbJKgn/Z+YicTUrOkr9BWsElhRMu8/KNM
sKrr2R+H/OxS5pKmY0yQ7dxV6qaE+rC4Jk7+OhMU12oczcJ+4BLUH6prmwFL
DGJufnjIJiea0yykOjOggboOnuH32RZEUwbrp25aogwPOWpx7/ZtwIQ739Tm
Tj9hk6pUMaFUM4y/+Z2pKsrYT3ovVjTieFft2J1SRXx/jZ6eDsP1v0fevZIm
zyZXpyGwOZoJYwvPzkotZ5OekL2d34yZ8LRDQcjvPu43xUvsE8YLyF5MN8F+
IxJl007flgEPz+brXrVhk0/9vteNT9Ig9ayK2z9ZNnnlbJN/zAXr/Z1j7T+s
OET3LXUFf0M4ZJ937bi3FMfFm2034/jT4m3zNHD+tY9vCD0/mAF896P+Z7Fe
KsRx+Qs8MsB3QGTpSQnUA+FpT+ISmLBaNuOjIg/fL/PEl29Ce1ljscnfkni+
hqGOY5ifiSHlvC/IWldOyCw6hfXQf5uscR7m2+Lvf5QrMiBhe2V7Lg3jY2oi
NvFLBmxqda96hOPR4n5L7XUz4LKtZKQX1uOdHvSc8a3ZQLWfklSfi/HqcvKU
ZQoTlGT6szIMsB8dW3XD/RgNfjYLiPzNxvgXkrn0Hv2dffXocCDWv2zXZMO5
+7JhdVfs7Cecr7Dr1ct9hbfh7VaxPOMpFjmj+PTK1kwmfL29llqyBePx+t6m
1LM0sI2i928+i/HN/Xy0rfI2+I3UCedg/m0ISwnT9aCB9e3019YJWE9+xj4e
FciET1lmdndvon6bjOi6uDsDjjue4ITdwn6WF5gwf2kG/DYMWLwVeV/hq+c7
lDLgTTfX7uo4i3SYnE63Os+Et977wi8if1ne7fkUeU0hdb8Jzlc3mdfVJpcB
U+MmFwj2aytjlQKP/zKBJtzp/DyZTSIMr8nLiWZARdzDVbo/WMSlzEJn+AIT
XrLaM1Swfk8sj1JTXXcbFHMrxLevxvddw72qL6dpkOyuKv4X+9mhk5fFmp2o
0NtoIrTAFd+HwQeK9ljcBtd7HvG5Shzy37R+W3h9BFTx+8ZT4/A9FP9v7g/V
DPgl2X651A/fN5YxV8tOUcGjmTx8q456sMCJ7n2GBsstdiZ0DrJIfddd9mka
E9bd96MKo16gbNh6a+mWDDhZtXiqHPNVbcL87OJTuJ9Hyv3T0WyyqyroY4Bs
Bqy0XHHsNp6XeVHMf0QgAwbH6nkczP9/lt9VWgxpsCOdW/0d++nX3t2lQYeo
EPj4CjsM82+D17e9p4/S4F9lhrXOSnw/TC3U08b+cJDHqqMcYZPXO/5be1zi
NriUnzyr+Z5FTB0d3qkwmOD5sW7j4w8skpDdVnXmCtaXPcwy1WtsUtIbzc6Z
nwH/qZTmiWI+DYxylOLdaWB69oXN6dO4326ZXX3GVFC/pxdM72CR779+/3h2
lQk/3tjGqLbj/R5JuXYPedXcV6LHxTnEOvF63ptdEfAzyipbQub/9Wjmj6wx
DTI8zfz3nUT/fEs0DVengotqlMVlvI9HYiVtpC8Tgt6uPCwlzSbg8zJ85z4a
BM9w058dw/fL45bTme5UsCw4vzUd89P5jURyFu5vU2xhfNAOrCfJlGStoGxw
Os65fh7nSzv8y8nDMxM+XJWFk+l88q3bpqVTuJIcUDQdm9fMInZnnzgFhTNh
z1X3rM8vWYQ6f7KjMwLrs/y1W3QxjN/udd8sj9NA9HT0MuZezP/JotSEZ1kg
Kj+77PE+1DONVQFsZhZoPLUpfYj5aehLt8yyzwYmXfhPqQPqvwg7cTMLKhhp
Lf6uj/nlbsfYHymdASlWP1N/P2ORQ7tuh+azmODw49zgT102kbp3uuns6WwY
qBFhytWxyMNrVk/oWJ8L9PYKj1qhXj8iubKmkAqarW5JmQJsIihWv1HYE/2z
6nCoy1O0T7vj9pDCBCnrr3/10L7+7VBX83UqJF+lLPpkwSY3PyUcCWuggnjr
lG489s/xOadjeNbZ4KrJn5u3kU2ubdey2eqaDW3zruc7oj/7xKUbHrtlQU/y
Sc0W5Fno/fTkcBawxaot/1pjvftxpeK9WyaUfDhhvvQom4xpKI/a/z9+zDRm
rc3Y5ILSL6rtCSpUrFM4WLuLTZophwUPe1OBNmLbPoz5eeptifEup2w4bmX4
L7OYRfJsJ1b/S2LC4M9VMvCARbzcaiPFE7E/TAmUjf1C/WplfWsiOBSMbc4o
KJhj/82IeheWngkCbjo/RYpYJFpjw4ZDaJ9fE/LwayGLvP/WzyrG+cLuW+Xc
j+ITj8WPX4SLVhKS3e0fwGORs9sEdx1NZsJEdvqbVuxX1u6aB4t9s2HXf5Gp
y3Xwfbar4L1/MxWEBJyVlPfj++Xm2uR7mK87ThZ7TvawyQ4h1rzuhRFAu/xb
pOAui9wbLTc3y2fCktObjzWtYxNFqoMXfV0WjN64/W8rk0UYXQP3O3A/Lj77
mpYh/6Q5bdbF9Z3awv5I/V8PUP/bOzVLhc8lD9SHNrPJnKiy8Bt1mWB0XWRL
Rw6LlIYa1XTGM+F57vX1vahHuPNu7nlXnQk6h+VPdWSxyIe3VCs6jtttfK17
KpNFXPOS5+/B/lXCZ0ntQWb/yYnOR/8MtnTGWQ1zyCcrWZ/q0WQysnJsQDid
RVYqWacycH/C3zOPbxJB/ZR8IlDOJxsOzHPyma+B9eVfdfkNSSrs2mhsfA31
3LPFdy5+vBsGPQWiCkUYv7M7lvNBMgPW76gyXIP+NG2Ott1bQgUHiV0pWSks
0tZW0x6J9TF71T+TM1g/jYc2pf8QpEK0zKeGxzheeCEkoOIWE1QqX1f5IPuJ
dsflYr962Gu2VBNZTT59q3k2vl8EHE/kJLOIomT4uhs4Hifw4qED8pNJpze6
OP6uQ83XHOtN2yq20EFbKtjPd3j3B/v/ps6qw/GOVOB+/NLw8iOLyLQlL6gc
zIGgFwIN5tEsctH3+5VU7EfPrj81WTPBIrqVj1flGmWD6F7DU0lRLELZ2UJb
7cOEc2uEbP2Rt1seVY1C+72wOHEqkkUESwKqJ70xnrzT3vYid2nu71iG9s9z
3FYbIavP/T1y/SwT2OW5chrIrhdyPYbR/tDQ5V9iEVgPLm2RTLzIBHOKtP+z
cIwnqZgn2gG4H0Ou0K8wFgnqazmlgbwm96FPNHJal1JrJ9bbPY2nBR6Gsgh/
gWhQI3JtvtE4FTn7Hnt6bTATfEo9vb6FsMjkOyvt5ch1XN+H7cgu6tqWxiFM
ED23rXxiIeZr2fzCSnkqHNiiGhqF/cS/8HuHUH86tL8Ot/C6xiJXMp86Xgxl
gpym0U17ZF37qvPpYfg+kt1TeLKNRTh9X3LaB3LA8plPyZFTfPKzyEvxpkAl
Wdbi43pDlE3CHptvVjOkwivh26ELsL4NiOooZV3PhQCpic0HrrDIj5erfkhE
MiGoMTRUH1mAultkcxQTukMLGD8CWeT+xeNnfrsyQb9rz9WaiyxSS7NSKYrB
9+q7gmYOMvd9vu7bWHyvTno2n3/0///5wX8l1ofA+iiF3gis7zubQq0ya3Lg
hELmf5Fz2MThfPf5N7pUuCBfPXLtKYdkJMV4HShKIa9fy/QcxfjY5On+7J1p
Npiprr89r4FFrP9oWua050BDr8CxzgssIr/t+Ops1Hv5KwKytnqziE1K+Mtx
zLdGNY3JqbMssjj06N1VmN+03a9DHOdjvAsFNWtVo77cHDb5G3nN0/KVdE4G
uB/w89NZzCaaoi+8pj6kw9R2pfg3Hixiax/xrRL13+6znXetOlmkndf35bJo
NpxZJk6zxn4LPdr7xtWyYewkO4OB+Trub5HqMS8DXnVHnk/D+U/lXLG0b0wH
Ed5KlpcrxlNkTcGgJ74X7MPEDyEbFahXL8B4PLngdXLkKRZpnnof+NeLCf6S
jbmeyIpZDrOHMT5bGoid3iyLzD7L58kHZ8D+mZc5ruWYPzdrwx9wckD5vcRr
xXn4fsl0UvzZmg52mTfU/VlsouE6pd218hrcPHJo00X0t+dXR0+LlaiHrQzG
HFDfigbLKUwKZcDFpG3JlcdQPzgWyW1Ef606OT/zPrLTva7D3chuW+ffWVbK
InK3j2zx4+WAonVD+YNPLJL/wPu/WgMqKBat8N84zSL+vvf6rjekw5KNa5Vn
BnB8bpR4x0YqmB5inJD5yyKd6YHyTi/Sof7L6IYl9hh/DVK7fvgzYfPhBZkz
B1nk5KiY41LML+XARwU+duivtLWsu8g14atr7ZFvjrtuEEG9tPtzpUG+LYs4
nz8S+OcyExYPnbuXjPx26kzK8kAmFC4ymG+N9aNBWGroKCMdjBf7jOz8xSI1
K3f8W1GJ+bQg+/AE6ledgCyZVwPp8Evm+Yej31gkXMJnbLg9HYS1YpfOGGE9
dH0W178oD/Y3pZ1Zhew9knpx77I82JSVvy4eMP8ldBUSFfNAjbKM7Y7830Le
+RPL8+CPVrmq7R0WiXTs1YlLzQFRS4MSFwu8z7EdF3swfwPOl34wR7aNXvDb
EPXP3zRBH39zFonTM6ragCz8b+stJ+SLKdKmFNRDV01ipbhmLLKv/nlaCPLB
01rR6cg9uw/ymZivJjr1inWmLLLKxudK6v+5TUBK7SaHnA3cVXimPIUsX/Mo
bt0u9P/AywhLzNdAkfVjCrosUjeR61amlgcjY3adA29x/Q17Pnv9wfdQ9FZl
Chvry9T2yWapbFDY4KDz4f967SX/3AGZTBiZ+zbVq5tFDKT2XG71SAe+oIhC
7lr0B03R+pB2HqwWWjZXZzXqAUuJwVidPFi0aE/wSuSe56ozXN08SGv7uvOd
OoukHlmhNKiXB5zNJTU1yI8s92xdsD0P6pZabsgN5ZDihT8u+S67ST5PrD4o
jeMPOHdDB/9i/Yx5GsHC+qzJi+tWTcwBA6/hBTuw/1zU/zVxY0c21JKVO3IX
sciumr5Di63zYJvRv7GryDfpM0X9B/JAdEjo2esq3L/Bo08iJ9NB5qHAJFuC
RRY5L85sw3GTw8bOUchx6RnOfbZ58PWBa8uYOPp3idaLz3Z5IEiSDBqRG9nN
Kb/t86B5Svl2SgXGi45OyCT6I8jOcddfMYynI/uDRnA8T7vmTzvywurE9rLD
eRD9B1y0pFjkQPmlb+2/mbCjOXJKEPPLMDrTqORbOqgwT/nsWoD1d/4rs2cO
eTCkE9WjhDx0NEnitWMemB1zyFothPVtMf/UoVN54Ov259yOOSzyzfmBr+mZ
PLh1xGp5jBuL5Aq6GjsUYT8wVRX1Esb9tetPeMwyYd/w1aM2yA9FVAIb5uTB
rKPzqoMYD0tDBg8eW0KH8pPuP5yRe3k6guYL6FCbcv2h+GwBiXBv4fCE88Dl
57zokZkCorbdSzxcNA+Kb3ksF/BjkWAHlmCleTYIJBgNftjKIpYtkqXZ4nS4
N+XncwHZJHXtYVspOhwb6pmp+V1AxFuGnhphftl9Ur50TpZPHAXO7MzsqyCn
MzjTtzexCC2UsspDlA6r1EbW3t3IImsr9zTdWUqHzhi66VrUWw57fpDkkXRQ
DRJzu2eMetgucF6X/zU4ySfxgWewXj1r/vzHIxvWNSWHMVB/+Yj7FHl1pcPO
d8pDp2NYxFFmwDfPIRM4nZbBvSoskrxja0ndQjpEeQxJ+SKbm16ueyhNh8Cp
PdYnhwvIgtaql9YL88A7wUPfGLlN//N6ddw/+3j6MWnk0JZHLXcW58GFQUZo
/1ABsZ4O8l27JA86rQQnkpGX1S9gyaH9OoGDCqeQw3Q/78tE+/dnIg21kdWg
8ocS2lf8MGv9OlhAKox6ls3K5kHixdZiRWQ/nrL8KLK9vBP9z0AB+bp/16Vq
+TzQnZjYUhbPIiFP3Dw+P0+HgPZ9ZvN6Cwi7wELRWSkPsri3Q6Y+FhC7HrHj
klifXsgs1+1DNl9Dv7JFOQ+aBn3PaCAvkP56bC6OP9V6fG+qu4CoMh7mTark
ody7QdtxnUWs7rV23XubDmp3NQJrfVlEy1lvys83E8KHs8Rp+H75tPyy0NXm
K6h/j9QueF1A6j/tpHquzIOfGx8KyGB//pRdWVNyOhM8hWkz0ng/FbN/Jq5d
y4RZzlr37voCYujmETSsmgcPwsSrKHUFJN+R5b0bv5+d2z3nvAGL+LJz/OjZ
2SAk154wr7OACES9K/eUx/q5LyKq7F0BeZzX8XOvEhOsPhofD8b3+RXBZWlL
Ji6D260ryRIdBSQpqEHjgTITikaVv+u3F5CigxPr8pA9x8rDVZEff9F9JLSS
CbYVzyQAWT8uec76JUwQmeyyN39bQER2tj4WkGPCE2f9j5NvCkivZnLDIUXU
+9oi21chn2H2tVggCx6pXj4H2XGtAN1+OROubLvmbt1WQDYZX1uzB9mf/tpQ
H9kp0NHcG9fvcYmzfOuJ/vzcNqtXmw4jHz8ElUqxSaREh2mkxFVQ7dv//UJr
AfmyqXDhVlUmmEZZLGxFDlzLj30oxYS72fl9Zcj5F8vvdUozIeZj5tpFyKy3
e7ReIt/9tn7/11cFJD5Y+xZtKRNYPn33W1vw/t3grS/6r1dkq18acnvx69o8
3H9W17kFyeUFJFimoE0e72OVp0rzs+YC4u8t+uoWjietcJxgII/qTGl74Hke
r19RnvCTR/4tOiXT3ltBZla85b9/UUBqft2cu0mFCWJm9XOakf9H0XmHY/29
cZwihIoKaSlRRqUoJTpJvlJGSUJ2MkLLTCG7yJ6PPT/PIrJHdSeVNplRUqHs
JKtEv/v35+s643POudf7dj3XxXrYTeszsodn6M00rBeLXy1ZfmNZFukedEoK
t8d8vuobzxk3GkmYvPX4wCs2iBme0nqG550fVfpcb4N6XvHEvN4tGtklYptg
VsoGheBDMlGyFFn49FBZ/wkbskclTjFE8knI359fdxaxwWtf87jeTvT3Js5M
lnkB8JU6qN+xoxHeza77C/B+VV0LFuni+SRbkb+xckUBTO76qRiM9Xq8hF53
DuvF+Hp1sUXMLGLHl3/PmsEGR03xz807KJKxkplnQ6H/9NmEbZPH/OtkmJSJ
/XH/4K9TwvsToNmYs+oVnm9Q+K2vIPrjfBdH5ZksjG+32P54PC//x5dlI8Vs
OBHedW3x2nzip9LnPo/5lVbDecODlkUGOe/Oa9LQvtGun2E71gv1yRJ55Pba
WqcNeJ9I0cKt4XxYn/ju8B5ZkUW+yEz2rMB83JzKwaORlEU2x9G+UKhXJnpf
DpzTQ/1zQupHWWcx9MQN6FsMPYLPM9I+xyLYIPVKz3GFHEUSniaq7UKe8ftv
6iLeZ2105zfTv5h/atabVq3NIvllER5P5tiQEk0b+iGZRSqyvxmmIG/QWvls
NV8W2b5muZjzOBvOj0m/UbyTRWJ+OPWuQ56Z/JNr75pFDu/1/Og8wQaRyod8
LauySKdC9I3bI2xYYWUmNa+bRXov/TiTMsgGk83e88KeWeTz9w+uR2+wgVfZ
+M2UFEWK7jQoHLnOhupTM1vXKVGk2YlwKSAfUl1y8LkM1scV3v753ugvIgqa
J3ZRJH5Kvu4/9K/Zf/mio1I0cqw8X7NymA3phW7Sn/6hfg9yf+GP8985Dw/X
4vqLrNN7rZANaYkGUfge0eKTklHX2MApLxF2E3k+xNvSEXnnZbZ5JNqj5Vsx
bwAL47ugf8jWPZd809ypl+yF3FWR4IfjejWO0heQaeN/Di9SoIhYtE1hZksx
7OnJ37ZoTx0Uu+vS123Feh/buSmOl0YKP6i+C0X/chYQuGp5MZcY+jZGPLuI
/jnw6UZzAEWixHvOTmN+/rvi8ZGa1VkkNmX7pOf6Ani29HO060Ua6ZehV/Fc
ZsO1hS3K0fi9jBN+4hsbi2GKvqrojFodTDxf9jb/aSFYW2dK0QwSISlA7Xnw
mgLYUXekokWORjpuC3B5Yn4bayxN596bRTRylv1pdET/2/58+rQiRZY2cnVV
IL/eEBNUhu+vPOb3Yvx5MfzptShK2FoHCyfXdcY/KYZ5t4/i8dx1YBik8v0+
7ve54I3LT+EsUl/t+oRtx4ZXjf+qt++hSNh1rWof5Mi93Q7FqA8N9Ve8glUF
kKcjEvSG0Eh5Z/sES6wAlnA4jyi8SSZfl95JEYdC4POxuPsqNxGWVh88vw/1
E705+mvbcRpZk+ao6mSD8aVZfEUY9WNWWm7tXyM2lCmfOtcURJGROCWT5RjP
5xJqVU7VJhPfp9KfGSZs0H7ik++A59F5mPU2Cnnp0Y1KDahfRTeGjLJRH20Q
j/ON2UMjxkr3ZshpNqg0SqX+wvfo1tylW3iCDanvE748w/dY/shrOBy5/vaq
4ym4nu1yeq9cZiHUb85mNv1JgIrXVSIe6M+R4jWc1ddyCX923CStphisJVN3
5GvUgdY5K5bYMTZc77aj31ehSKx0oXYD+uP1XfGC9cG5pCpuhxkb/Y/rErf+
el/UQz50E9NpNijrxPp2VyaTp85JtmlubKBo9YaGOH/Lmvp/1siBQYo+op65
5Ipsq2ruVTbIJvYISN3MJfs3Ci+WR/bi/f5uxfVc8qrx4vg/9J+Wi2eNbjnn
kpNS3gPnL7HB+4JTsCGOn/w9VPfAmQ3r4r38dNA/946vkV+MrKog8y3GK5f4
7e/6R8N4Nrnn6v03P5lknivrK1JGvXiJq+aNGurt7V1Tkpao957bPuALzSU1
R05vNJNEfxf2GvkURRH3uPI2r/xiMHrvRfUcqYPe+wePaXsVgJHMNXOV89eJ
8WO1FTLu6N88sbaTr7PJ4H3Z3/y4Pu7c2eNK2hTJ/C6lNrMZ69n8hkvGxyhS
+ZG+6J4E8upo4ejjFFnTNbk5GTku9XfumA5FVvAUXhB1KwQHdevXldcTofnG
fTXFDWzo33j/4qAu9i8O0YEFeP91tE813o+zyf411y9lYjw2BUfcmizNJtVT
KvcfOGG89HMfafqYTUSyB49oRLJhwdtkprstk0iJlq9QuIP58udTnnjkMjGL
31NoX4HssLlz3rnkxI9LBZUibPhkHt3Ljf3B8a/ebjVCbLi15OOTzhjUawcS
x2dRD93u9rU1pyUT6ypn1s0jbDgyRX8thPbnfKXjmGmBfHuHm/YAnqf8mTAR
RH14yITlcJYit9ef0pBG3viMptqA/cLyrIe0UVV8b2771m25uaSC3nqmbykb
PrI0Y5+YU2R4tmOgn48NEwfu3N9nRZHqAVeySx3f47jcdNOeXPJ2n0A6jaC9
rbtaHXVyCRf/NjmeB2won/q2X+tiMjl6J+qHHO5/5Xt0qzyOe+3z/sy7nw33
JD+9+Ho5l6xdtstTYw/mzzW2Mh55ueRUXM+DpsWoHw7oseStKTL9YlFZEXLK
aLgYxzmKLJOQGS3H9d/yNZLGtbFfcP57OXkXG5Z8u/BfZ2Yu8ThlpxO6jw0D
eWJHHQ7kEoXjdyu2LrDAXG6a3oL90MLPmbS43egvy999i3bLJWX3Trf9lMd6
+2prSMbjXPLAUn32xgwL/my23cugUWSn06HSJffY0Ji0nXHWNplEjI6pb9Vn
w9xxybaN6dnkP5vktXul2SAYZuV38HUuiXuR4W6K67v9zt01xe8Vm6jp/maj
Hk//2BV1M5kI/wnucijE+DE8FnjmVDLZ0rjy/JEQNgR531RefTuNmF9M/bV0
Oxv6tt6d0lbIJVr24Uve4f4cfQP7fZ1yyWZ52y+OP1hQa1c4fM6RImZXjRpO
bcH3NrJ3D7ySS15OEpG8g7ifSfbOhOlsIhq8L/XyNjZoFgb98FmTS8QdpTgP
i7NhufJln/Z3uST2hGpA6TALhM0XquvsKdLgO1zzF+unoI+kITM0jUTNfT7/
ZxMbLhaXPT17LJc4yd0834Z6hbHzv7KPJsmkeLgkoA6/36pScpgf+6EHEXsu
luL79tUW7ZQ9lkP8bzJKVsuwocJlONWkJYco3Zy5d10K6/eZD5blS3LJ670r
7Dbgeed/tXwODc0mobMZv0wwHktFX8t9Eskl1x69l2vG+8cwF5QTq3KIbOQL
/nX/Xx8RDIve5ZDfGx0ELf2wnt3yNHqsWwfyJV1vPpmxwW72hOODM5nk1T0Z
iwTkm7pNu6csM0nYaPljEXzfpEDu30HqOcQ0WjdIHc+7uObEp+qpbFLp1x97
cRn2N7fHTS16c0nJOY6u4HX/72dX3biG/anpDSGFc2vZkBPCNrq7OZdYvNkz
3yvKhoxUHr7VyrlkI0fNryXICsbTvg4aucQx+U4geyvur96gXX0qh/R1uUTP
JrDBT9FLauXOZJIfM9w2G8+Gq53nPrcfTyb7jFdbH8X919OTzokP5pARujPv
/Bo2aAQ9SU+ayyF7jILtIjA/SK+OXc2WzyXxRW8DEjjR3822dA2eySPnKp/q
LEO+Lua95aplHnHupfNb4HprkaYVA99yyPCZ3bud0B4aG1b9uPQvm4Q07Ptx
Du0bmfR7p/rVHPJHyXNbzWo2QHTdfbP5HOJIz72eheOKb+Y5Dp7MITX1nlox
HGxYU+rvM7Qmj6w88WLM/A8LDlc/GEx3yCNRiwUfOWP+/acpLPBxTQ5ZFn54
SgLz55alfq/zzueQd5oHQiLnWeDvVPhfOa4XqlyTXSHGBqFYX+1OzxxSwfu5
NQvjp67lr+CsXh75YtMgqDPBgvuNj2VlbPNI854ut2m0p4f0OZ2/T9JIk1p9
29NgrGf/zBwStySTy7RPh1ZKFIBXV1Iyn5k3SXZ/PvFohAVOH/ZaZ17OI027
fXxz1xfCrY7cjHCeJEj78n6PM36/QH52UPtyNtlYrsklpoN6eanL2zmBdMK3
cIO+WBv7sy1D8h4y6YSz6jOXnhYbNpWZOz81TSffizgeaSC3Z+Zd/noqnUTL
eAg/tS2Gn6471RVO1MEKCbHjGRpoj5knvStXpZP4xTok8zDmg+bVNzoU0gnD
y2Bm3aH//4uB3Xu+qqaTIyHrOd2KWeCQsidsG5Mij3mfeuhivk3ysrQR+ZRG
Pg/bq7ljvPScnDuuievfTqq0nEB+c4OpZq2UTiaPtRtwOLBB2EbC/5Z6Mhl3
Swj9cIAND29LPvNblE5S5XIj1mN+hBFmSc3vNHJN7egNbvR/lVyV2BlmOrE2
OaM09oQF7oNTk7qQRyaL18S0KLCh60lGYRTe7/2OLf845NhwuDl7zP9YOqkS
SDCem2VBpfJLfjevbNLKbDBpmy8AV+7vcgG3k2E/7fQgM5UFLRJzJaM2FFmk
smfmu0Ex8HF5xjXg+2zhc7o6gvZtP6Lt/9s9mxAV/i+TySxgpfi08fpShJ72
g0dajw2JBaH+PJbJ5G2WFZ8z5gf1dssvLyLTiX+XxCPtcRYs8bfcLOibTXrF
9eWOJLJARkJkq+81ijCqrucKbGTDl096RlPX0omuD+N+G8ZXyr6b/91JSSd/
fff3pqO/xz9mufTrZZDY5mFR5ko2yLEs/UX0M8hP3zeq1+5gvlXhT2n2okj7
nsAftsj3w6frp3F/ze8uZs5oT6/Eg7QhnWSiYypZ6t9fAAJfuby4lJNhqaZM
lUI4C4w9lwQWu2J/wDRtKcd6/lbkw3u+hHRi1GLt4ILMtfTrM/X0dHLFqZiR
uBz1ms5xvcLmdHJArzv760ABxJt/8zbrSYb787KjHPyYP+ZvrLj8KZ2oMsuX
nwpmgW9Su6S1D0VUIteLL0N2+cpz87A/RV7dVHSxvMmCN2Nv2/qrsF9QXvN1
OdbzEhF+C3lc/ybJ19QngAV9ufc56lAP27jblhkgzyxrmzO6ThG7cz3i0shq
DDPoxP0tPLilfiP3PNGr2OCAepZdodHmzwLJGMdvEfg+TeXZ6XnI4xajYsdx
/b1t+TlSWN9bZ5ViFzkkE61fk7uXqheD4tB+L+WjdTB4ePfpn74siOEd2r/M
iSInVet3JyNPR596vPIyRRwqJh6838mG72MjRUF6ySTq3QXS48WCwQ1ndsTh
/SzyF7psPFiQNXA7eTSQIpKRrH+1MSzgUEz3/jqSR0pfVrxdeMOCy++7X7u5
ZhMuu4+VVy6xQFzasz8oGNdPFviZI/NuDF7BDKGIj9IimYNVWN8KBSDvwQ3y
2DyphKVUDDz7ucrW4nnPiPpe6nNgwSpG9EHDCIq8qxi+4ox8GT3r0C2KsKSi
BO3tWbB2jj4sE06RH4Vev7WxfhyV/NZej/fPXL9DttUS49tc8+ySOxQRdHWc
rEU+8ENo2hb3i2pycVfsY8G/vfa/1iWlk/vmz9SqT7EAJOsPlj5G++hcki/Q
w/ep6H++Po4ib9af7fdDDsxtjc5KoMjgY2P+Il3Mx4s3OsYi/4kxNjmIzBhL
iZ9OpQiX4QxEbimGndtH31RjvTy0sP9ktA4L3j43eTGE426XR78uRu4wGjw4
l0SRDSeeHovTQvtKaUguJKJ+zNgiex3ZWFUBzJIpcvCW965xwoKc/cqh/ng+
bnU+v38biqEjgPPQEas6mGeSKF88/33nlV/3COSTNkFxj3K83x0px37b88kk
ZGSJy7EdLAgN2XN3B+qtyBtirKnPLFjgW1Qxm5BMzu/uHLh+hAXLIz4dlt6Y
TxYf1+3evI0Ft1MnlY7heVVSOnO2bmFBvbtH6XWgiHwVt8G+dhacm7V+2v4p
mSxf0qlWI8mCqPoDue9x/5CBoTD7VrT3/tc1Ru3JpHRRqdvhVyz4+val8q3P
NOJhY2PP3MyCj/ypd66kU+T7C8eY95tYYGB75cY5ZJXAjjgG8r4vfFUSWRQp
EnKO+CPBgtMW+hyrkUV7VWOeIUtURLEFcjE/pJ56OLUR7TdtnbaQg/ncPriB
hvwrijPvIAPjMyRgyng96i8z3jNqmO8zlF78PoSst3FkMpVFkVNzTJUt61iQ
bT6r0HeXIszt0upcyMZVW+5WFlMkMWfuOn1pMSQr3i9d6VAHdfVC3kJNLBA6
w7MgkoX5Ujw/L/cZC/YIjnVOldDILr56y25xFnhk/T6VzMZ+e7f3xXzk294a
l17i/hd5tnOzMZ78D3N833MY9Vjl7mutq1jg2Z4TNVNOkRiK7XPTFvXRA9cn
d028iU12QUjhSnyPOusD7/E8zm01D/4+QH/J3iVsG0QjydVn2G9kWVB0vWqm
dVc++RMnv/lZDQvafs2QFfY0wm2rP/CgAt/j7FHWySwa4U//wMjD9z8ZvcWH
UxP9RfP48kJzNhTLtLfp53gSwX1v5+fNCiCldY2guWMynJ0ImJILY4FKAzNl
RDmDXKUn/fMswvj8euMp/SiNxB9LuiyZy0I9sLZpbk8KGa//KZ7CwwKjl47y
Hy3ziWGJ184+9Pf7cxsH2FrZ5MLhDD2d7iK4eHRPjCe+Z+jLT4Mrk1gQ8mWm
R+g6jSw3s9ughP4oGW+z2UQ/m/TfaxjeGMqCNcTqbdr6FFJsaHXQV5UFTVlB
3Prnswn3zv/eTWL8XXg0EVnukEmWclWrqw4x4Xrt9+9PruaTtVOVG7bvZ8El
x82bUvKziNItVXlvKRYsdlxJm3XEfGXSJ61wmIX6MuN7jlEmmY7sl8tVx/eZ
m5RaaZ9J0qZ3EtmrLNioH6RhxaaRG37PPySIFYBfI/9ursZk2KiuFPEK89FJ
4WtCgTIppJ8ea3/xIRO8u7O8vNCeQ/8FbJt9wIS1Q3H5J+9ThEPvHtMGx4/y
s+gc6H+U696MdBw/el0z4wLOjyrrt9mKvD/n4isNnD8YGMtbfZ8J0zuuiDIw
/mMbXIX4/8/CzXfSkB+GqR26X8uEghbT09sbKDJ7yJ2LZY3+ydt5u3RbChHd
zjMTa8OCYNa22aRmGpm9mn9jEc6f2qlcdRbjR6HLaDTDnAWmMSM8S7ekkK2K
X37drWaCXcDjm4DxZtzyPTcQedewq9FhnP+y46H9Npx/K+F067cJGrE7bTQ9
fpYFyzidF10SxfXtybRyUxY8fVyxylk1hfgsvKq3wfwj56uRTw5kEiODe0Mn
K5jw1CH04jjml48tynoqyA9jPgnpY/z/+Tmq1W/MgnIRcb5l+1JIQWGE1/Yy
Jqw8wW/3H+aXh7Kan1Yj59SG8OWnYP+4csB/tSALAtIPXlKxzSZ5H0qLZYuY
cGjFtYSwDopceGDg4m2E+9UWb7q1KIX861RZ4C1hwjuPVKs0zLcl+pJ2P+8x
wWrTAa7/5+N2mbnYbU+YoBu4jWfYN58c3ukttaiACak23tDVSZHx8vLrY2wm
GEgJTSx0UcS7les4TzETjgf9ZU9ivdA8slD2A79fm/5Q/xTWhxPix6NCmUyY
ZC+9uvcjRe77qX13RRaRrcgz7cb1Gx8rnV6C73nxv3w+52xye+cFg0cMJny4
6ypwMZIiVq+7JzgxflT/4/C9Pk/D/uaGZdh/mC/vvRPTcUohXyvNiivymVCR
wF03hPOlTbZ4TF0pAm7PmQ/6Z+pA/5r6dG8CExJCaM/3DlCkdtZAbA+e/5rT
bp/CmHyyVPXmcGIyE5wTTPR/Yn32/icgHo75aIr/D5RfySCK17ZWJQ4wQVTf
I/s46k/xxvRvWe2ot382tx5fkwxpd/WvhfZg/MnqfgjUdSfcvJtvP0R99eTZ
ZcVzfoegVnm1mT3qv9ePvuxdd9MQWBT3QkcQE9pnU6M2j1DEtKqbb4k8CzYX
2hv1Y/x8vtr6c+1HrN+783YIGroRxc0XQPsWE2Qti/cFoh7JCLLXi+ZkQcrT
WcuW+AwiXbQrO9yPCe+9GKdeDFNEo7h2pxty7cTr2a2jFHkmo1rtiPVruvra
3NsNKeRau9Jpp04mXHz4X1k1+svIUfX46n9M+LFoav6KWgYxtcuLqXzPhD0H
ehbEDbLJrra+Y6s60L6quStLHbLJKotxtzExFmwPevVduiiFKB8oP7sFx/+e
WLTlxPZscnob+8OYdhFUMH7eDzKuA/GzSxMfTjBhvNZLgD8kg1R2Lbp9/gIT
2Be38j/D874PObR4qSMTjFfWLWQMUsSw+6P42FMmvPjHevjf3mwi68w3ssye
CdEBo/OTqA9dKdHF8nh/Zib7lMXpFNJw1Ff8JAcL1Dcm3k48mUKKxngOeptg
/OaeH4nspYh/tei4DbI5FRU32keRv2ZUwFAXC6oGvnRYlSmDXqXGo/NGTDiz
uDO6Fsdv1rbUrTfDfKLRv0M7gCJBTw09hk4zob5qhyKjB+uljpJtDe7364ck
xxnUdyLz6tVRyAXfjXo6QymyaWFD0CWMp4AYaXPWqWyy93icUvd3Fixym1rX
cMgWXvwKVfc+yQQqbPx74SeKmNmtdg06xYSWi9vs9NH/ODc1CF9B3nrMIN0V
91PrFpfz0mLC/PLQ/NVtFNnfdfitLXLJPruP+9spEr2V7TfYjPrEv0RU6M9Z
uMP/2iLnEQtSpeviL1XwkK8tm6aP4fzlV8//Ncb9pqSrHSWQe7MOdn+4TZFp
qdhusUwmbFLlOmysl01ebdhqfPU/JszMpIU24bijPs9tfeTld5yCP6He/D0h
e7u7kQXFHdqQ/8oKEotszYZ4i2Bru8Cl7TZ18Lb349OFLzj/57yemnkKefSK
rPtDY0Jisit3DMkmZ+44/qfVzYQU43VGki4pJPzqgwa/g+g/V/RczmD8LpJU
4VFQRX+4Oa2oHk2RF+XPt1keYMLm7r5MReQlYQoF/PGYj94+37VBLZusaTGW
X7WHCYJFhroGrylypiNOekcMEy5NHHLkxnqrVL67dXs0E6xphs4P9mWT5Vnh
8e+PMOHGhTtq/UX5xOqDT5FrBBPuL4uYpFCP3PyZGGuiyITn6gvTn/6vd+WX
fdyLXHd78fQI5sfJkaamW7sxfp4Q5hfkh+tu2Vogl5nmhNtiPj5k3XgxN5wJ
ZtNK8zkHs8mfo50qQxi/Bcum+9KOZZPHJS9jTF4ywde1aYmwZwpR//ohyVue
CdliuU9/oX4LsDNIckQ9Maa3zLiuczXZ/lSn4yWNBVtD5DUf1ukTyd03OFZu
YsInv1ExgTyKSKU8pC8qwP7prqrTIw1bmDtb3apazoR0XzMv0b9Yjz7d2x+0
ggldj38Zu2E98648ca5TlA0+J8qak3pjYJZv5jw/8vKyQDu/6RigqynmbNvA
htHxQ+fMeeLA1vteQxoyo0BHzM42DoZz/B0cT7NA4Lm9uOsJN7KHOuqUws0E
1YuV+3uw/p42jpV9zcMERZIduID1reveI6NfmP9+z3e3b3gYC7GZj7qPiLHB
bvPXk0LH42DdvjBKKp0Jwaf3jXEPpBDF0CajCGE2GDXMLHs4EAvHl2w/WIrr
taU+hLX7xMGjXWMXJ+/fBV/B3Rb9fnWwf/GvXGtnFiTJhe4+znWcpFqfTN+N
/bVtqPjiBy/jIKRz3nAtLxukihZmRm/Egnh+Q811HjbcXPv77627sXBSJjJb
3wLz72XGPb9iY7KsedC75gz2O/G0WyJiNiTQ6ZYZx08GnO/SmvqG97HevCPZ
cBL1nkOkZENyDAza8cTKjzFg4/pznbuxPq/rFes+VngXwkNem+1Mr4Pd7J+8
zs5MWNF7yW/Jh3Ti+5VneivyutrP3w/2ppMQapfXjxEGzF5QLk/D/u7iarfX
SS7YT4iXZZmetIbLLxtkZQcYwHNpsSsT+znq9/ael98ZMNVRkGYRSxHPa5b+
Ccgfln3+GI3+evzdVKwT8l2FTc9WYv90drVt/pNvDOCf1/UIxHFV39JT8tqo
d5yffBadtiLf4jfZnMFxu/KAssQYioiJR3Vr/mBBXbPuK8uAWEh8byLg0s+A
rb8KqhPxfPYtWo+PIW8qrH2YF0aRb+J6n6/1McCd380kCXlKNMDuLHL5H8WR
C3jeUx7s04W9DFjS3PnYEtm+VO1SILJjB6PgK8a7tmZ8VMlXBogHnTjahrz/
PyM1H2RuDsXbPHg/uqqtZcEXBkzfOif1B89Xckl2IALZOEap6g3qjQ+12RJV
2M9Zy59UnNWMgbbTCXdt0u8CQ0L4+gqqDtZr6vV6dLKg5/1MLbs/Gl4uejUa
hf2h6jZd0noiFoZkH3vVjmG+lBmfftcYBxOFesIZyiyw1drdJ5ZmRxT9XeW7
ZbAes8/eEha+Sp7XGnytk2YBZypRW0ZzJdqjnF4dX7H/qSkPWGwTC/bpCoHm
ZzB/rvkZ2jGQTjburtWbxHpelSM04qAZC5IW4z8uY/35t+TP9wHbWHivcbr6
VDMDwjVUjfviKbLX4Yjn/XcMeNcjcMsb76eVe3WN2ScW6JZ1Lr86EQfjh/4O
2lkw4cubK+B5MJVE6HlON9ezoMTTtFy/JRp41329LIfjB7Ru873gTSWrA4vO
9T1hQCVPPn8gvl/Ox9mMQ9jfCV948NXA0I5ccz25XM/zLvS0Poyi8L0U1i+6
tEYE7f9trLE86gKxWLRuvepRJth4vlqf5JBKEopzgz0KWcBzYLr0ML5nmafE
UVd8rwu1txeXrjkPb3r2LVmP9VlZrSx1PNSFRInt1tHH/P5NfqnWh+RUMmD0
7+gRzG9lT6evmNyLhhXp9RktskwIfMkvu/ptOlnZNxRlS5jQ8Nvr/W683/AF
VfkDLAbsPs0RIIfvE7dZqUxSGuv7p00y/7rTScQn9tcJfE8DYRvdv5eS4d58
X/cTzNeSiTYHT2amko06Dxn+yI2up5/dpqeSFHk5lY4sBjwzPDI2ivn7nXos
d/R61FeP4qqODaaTXSFjj3WQfW8LKwf+TCf8S8PKdu5C/dr42a3KPZV8Ef4X
2lqK+U94j0REXTxUJitdUY9igZnF+6MB+6Ihduuv16N3WNBXslJ+6lcULAme
cfhvOxOC6kK7Z51TSa4aZS8nx4RwrVCXNFYq+Xu7e2s+3v9r6i1/wdpUInVv
6pUkMit2XURSRCqp9Gj2e4f9psdkUbfn2gQYqwv5pC+F+nFpMFdGdiqJ1vBx
bXzKAsttyuIf9iVD1tvqNiNJrI+MFiOpD6lk/kFw9LIeJkS+exbCFXaVfKOs
f/bjfP3Z3L0D2N+acr0cD8R6cvjpz/PM5lTSlzK2e76PCU2Cgqarep1Iieee
fweXMSFm7vyZM8/SSV+Fx56xDUyIm07oXcFMJR5WQy8/LmVCofBlIdpQOmGW
Rxpz8zHBlLdrZLFEBtkm+nW3Hy8TiKjOhJtCBlHPaubjwHqhEWW3MWBjBon5
4jGXK4r9yh+bA2XPU0lcgaDhDm8WTO6VnQx3jYakkqHbgtdZUE1eTbvGR8Pd
RzfjgmIYMNYdsM2HkyJhD18u/KhCf7Xs8lFpSIY655kTb66wQGf6V/iryiho
7/T1VF7MBO6sFp7GzHQy+EDydcFfBsx95bP5fjaDKHwb4LIRYsIbjoTrQw2p
xHTRvY1qHEyQsxvZ4+SbTo6pdl36O8OApybKhffsM8gJi0s8q/MxX5h2SjSH
JkHY4TNJJ7JRf971Ul3nmARSyyXJi0VMaJ5tkorUTCPq1TKt27H/pAr8sucs
o4Ar/Fma1D8GpJW3Myr3pZHX4317h1bdBfblnVMt8XXgmrBVN3KSAbp3o+0/
2KcTy8RFQcPYL+/vS2vc1X2Z3LDpoVtjf5j64ZyLlUYk1HdIJz/9xYDWhYem
KzXSictjS5G6WQbIGL5q+HktjQx/Tp3wnmCA1oCGn9aOdPLKZ7qlFfvB/zZM
rV9oioQdUR9TGOMM2HJwH+9rqXQyS7/9xuIHA4xiXUav6KG9u7rFK5wZkGe5
ckQM9cPiVxLfrXA/4T/b11fWpJF7HbH1Rlj/rlJVt112pRNduym625K7sDT3
NHddSB1c5y/954Tn267/rTjQKo0E/lZk92G9k9Oq3y68Pp1c/HBoK0cqCyRi
yt8eWU4D9tROqakhBmzeIbR29FMaycxzze6yxfo2Prw/Op8i+d90Q955sYB/
d9iyKxgP4n8qvtW7MODJm+d6+wQpIqGxYrsy1ssajqAFkR9pZE/x2Z1VIehP
iY9sAiSTYK/q9w5AdpRhfO7TTII68RUtGTjf/p+U1F9GGmnLWRwuWcOEswka
8kpCtmREW3pqI/ojv1RR91xPArjK6+joubOgKSHu4ZvUBNAfPRi8C+tdo8qW
7UXFacRGInK+OYgFI9zxMqfTklCXf7IaD2aB/2UuuS+vkkAmJ6EnjLBgnLry
ltUZASNHax9dtmLAcsn5K0Qe6x07nbPOmAFrNniUvEF91zp3h7dqpBDMLvgJ
LQuoA5Gir2sPtzJhByWb6y1nC4OuLoUGbiw4aVA+XjWYCE8CzWQfX2RB7/U7
J8dKEuHl2tUHS88wgOIo3jUjTpH5BG1BAWusP165cwluCXC5p+WO/A0WFOzq
+Dq6hwack+/dDvzHgDJtwWffUU8bb0458smMBfLGA6V6LgkgtyLt9yqsh34P
XKReV0aA7ljz+R59BuR+sDQvWk+RBKt8wcVHGPDZpDiUk0mR9e4mj0c0GFB6
eY+aFYsirDXcje8PMcDg6rNVUWyK/Pksr/YM+Ut+o1FpAeqV3Q4lRpUM8HLh
+rDkRgZp/3aodyfqw4A/e+J7PE3JDvnxnVmpTHhy82HVokWGJFyY75KBMOb/
YmmtO2l34J75adrJMuwHgh3fWJywgyyVqFcyu9B/LN66/SmlyGaLF0mDOqiv
hBT1/+D7jK/qvcj3oBBeH/wTUoR6knPlZpUfd5iQxMjU/RFgQgwuData5DKg
/kyTSplzBuGRDeSWyUa9ViPrGnk5g8TO89QrqbOA6+GlDjeVRIjT4FiIw/wk
ffyeU/fpDLI29ifPWicmDJw2nqd72JK85lHuSZwfFayyK/EwDYTD9aeeCuB7
MfQPzYtgfPVK95sbMGGMZ+kGE2Nr0mDGtj07RYd/jYk0wxKKzMZ91S7G/jH+
OHdj7S0j8jruprnmBB1uNxoZJ7yiSP2CjhhvPRP+Vb3Z+uBlOMg7iLiIfWCD
3qhrY92JcqgOMY64jP2tC2tZIwFLUM8auniilw4nA7W30J5TZGfuc/Ma5KF5
7b2DZRThYoU65iHvvXNkXKuCIq//SqS0mDLg2Lv1mzw8M0h85vplY61o33VZ
d7vDIsiSvbts16D/ypzTa8sOzSBdQzu93J5j/rn+1DCSRJOzWxap6ghgf3N9
a7zXFRrUfdeNeoPj/7Fjnu9ZH00qBPYH6rCY8HPtoYrq4DAQPtQ3MbqTCVVS
ppc4Fa1JSZzDt8e6mI85v7qMNmSQ50bxl0Xb6VDgWnjnMZ63c1eOowfqD3Wa
El8djQbFJj7eiti/gpGIcEqSGVgklA5KNNOBw1q/gq+SIr3lerTiasxPqSIn
m9dGk9eTlvE/muggddDHQRkoQlvtUdyJrPpWVTLxEfr3NXvr4/+YkGe1dLEz
XwpweSjYdb2lw55E0uxUi+9/1uZoCXLpkrCWsQcU6Z93vCe7kQm8nLOvnMh5
slvEkjewmA18MheXKC8qh+LioMkhdQYc1h8TVUJ/VzKqbLD6yYSVB9Pb7kml
wNM12pfuK2L83hXYX7s5k8R2ew1K7WCACXWNY5NIJjleMVK6FpmxyUx+SDiT
KCj/Yq3dyQDehE32pf4ZpOhdqW0NjpvfWhXAG5lBlproX9lGYfzNx+mcSECL
GNRNNcsyoLv7jaBecAZZL7asojOBDdX+4i33RcvBQ0bYrBX1yoRYmFYX0w6+
GSXMR29BvXRS7MnYUivwLdyX6ZKK/dEqzimDH5FEud6+p+kDEz64r/l6YVMK
tJtVsFZ2oZ5iHm7x5UkBlpPFu05+Jvj1/Bbkjf2PfHc0GYhMwvwdGbC441Ik
4dk6veT5GtTDgewfP5ZmEhmXBxYqEkyQ8Yhed0/JDnxNRwS3Im/evACb4u3g
nmiyQfkaJr4no+hegR1stjBJfSzCBJERrakcAVu48zDMdeEP5vdvJ6qt6EeI
GY/3kCbWfxsHawfzQUXi4u5sP4v9zP5vo9rn3R2J9NGTgwdT6ZB02Nj8B9oz
O6jwqACy6frquk3oD21d8boWKXRQjGuVE0XO2pCUehRZ7JPUoDv6B4f9+TZP
Gh3uvqrc44j86Sy77jxy1DZ534g6iuj/6xb/koXjUukhBxRQf75b7bAO43+O
/Uz1S00GKbd/Y8ufRAeD13+/ij3G/H87tXwqkQ6PBVyyPOspopD+48GlBDrs
su870oYcQYRXmCKLv7JZpPSUIkNhswO9nEwYVeW1dNhtCHLu73ya4ujQ+M18
/WscL7vGd/EhcoP7/PnxZ+j/5tc8ViAf3HGmpR957kvoyz+xdPg0OhB9BPPB
/Z6UK6OObDg4FFsj218GxflxvLI4/lXa8osyjpe29P4WRY5V5pM1e4H3H92s
4l7FhKj7TGsH4RTgOb5cd/lpJtxKOR2rrRwGHHvZ9ucj6NBzboSmjPF6IVDN
aRsH2rv/ap5gYQbxs1AYvI76MFAq9JiqlhPUTkrGLg6lw5FlTya8mygimns+
/GcIHfT/PD+Q+Y4iB/7MCJ2bo4PFrbgf+Y8yiFtFx26xW5gv3SYP9WO+D2Aw
bQSRSy+szYrH7y29JVRfifqKw3tXetH6syAU/GOyTZcJzyXUV9W+CgPBulPn
13UzwDWgc5PfVgOi7XG5fcCPDt9ovRGibRSp29Oj0oJsHq6g49FOkZFzp54w
3NG/3ucUKpveISF7GqzV/enwWy90mxx+z+FeqpmuL9rzfDJPK86f5rJ8rIw8
b//r6e73FOGWqW1w8qGD/AXTFedxvswdK8X4a3SYTvp17HIXRRp1E/YqY/+W
HGiaNRjuSIzffcyudWWA1ITfBgOZcJL6WULwQC4TrhW8NdiglALUyA7/ik8F
MPj79j2DuDq4fJP31zpXOsjcPcHT0EORS92nv8+70GH1EZP6hk8U+cFtvukX
8oeSj5s9cVytyF+KIGs8Ke9O7KZIz6PQXduRt9SmbK3F+XrqhxreXKLDnwA5
e/9U7Ne/Jy93Q340ofJhbzZFxHs0mz470aGZLyTnygeKfFMI+e8V8sCOIuum
jxRxrLuxbSfON4ygrA4no/3mU0b+XqTDXMzzl26436NNsjmJyPd2PNnQmYj+
yfJc64/s2Zn4SRnnl80xD/bieY5MJvMcyaHI2vmiyjfIfD4GDTm5FLFokfQb
M0c91T2zKz3sDnkuHLGrxZEOr94cSGA/pMj7cVMDYTs6lJVYCwuiPcQVj6p4
NReAf+T9YdfCOpjzEb27B8cPnbV/Uon9YYyw/BNJ5OZTass/4vcDypJeXrGh
w7vVoQJS6A9O7R8bxpDXBS/UnqZTxL/t5eJuCzoE5JVxaqB/GvDrn76JvFyT
p6UAv087pCIwVl8AJg+12uwy6oAttWTQHfOpSlgo7Y1EOHgVU/MlqgyQfzkR
bcyOJqxV/M0m5nTgfbRoSwLqpS8vHCv7z2K+mfWofIt66l1z41wX8oR7iagv
jivspzlbPCkASTGtK2/K6uCd+ZaDqjh+8v4accLA+7wW6F+FHM9RKfUY11ve
++Fw1xT9m0PopjRFkWWyRvsikQdODGcp4fwZ3YKjAdeZ4Omllyv8nAY5x8Z2
/jGhg+Wor8Z/qE8tFLniu5EHLi+MrcH1ipyGcveM6ZAj7e5xtJoiBxfXRsYj
q3yp2LQO82mTimG9A85XPHV6owPab7BAb5sOssC6/pcHcD9eYjqShPN9aqYj
z+J4zQwn+5oRHRZFuJ5px/2Omz6amj2N8fMjqGsZ5keO4MiLNfg+6ZxLLr3e
g+dvXXLb6gwdah4ImZamY3+4VExhG85f96Hj+CKcL3R5WHLakA5FdoWV/8+X
LRqxiWl8bOBU2ndedWUZ/AzUkzuK480vFNRlcXxjuSPj+yk6mNjY5xqivloV
o6tXpcAA/U3vw3q/RZMyGYPFxTcZMCihK3+gy53M1XpoF5Yy4Giz876g44ZQ
JH8hr3iKBfGbPSYNu0qha5nnuAHWv/V3iet/m8IBnk0V6nkyIPXJ75dh+p5E
3aiSq53OgHsKTCehTYchKuXW+QlfBvw53/hIUcWVBCd2/83mYsKVf/T2h5lh
0LglzexCGgO+PW3JlmlaTgJpL8y7LJjw4s0O8319NHj/YGX3e03UL5dYVTk7
KKKqe2qIP60AFjlt3sRfXQe/MjUElE2YkDZsLxQsngJyDndcor6yYGtWSuzE
dCnIh0vwPEjGftQvlXlIXhsWav328avR4fj64tVmezFf3UhV5lBiwKN2pa06
/rdIqJbMRLYdA2ZsJJff7XcnxSU19XMcbMi0WpUZrV4ONQ4um4ow355nXh+u
2JYC9xS3vOv5zYAb6uH2P85HQoJm/7W/yD18J6Q7GJFw117wW+Y5BoiO2xVv
VbhKQn4dyvPHfvUSI1HFclEkrIpQd4tD5lNnp2ltiQStnAZzn5sFcNN/y8GS
ijq4Lyx2ogXHvxfmbOBgR4J4VnHyF2QN3vSkhVeRwKNy34w2jfmlglx214sh
f+jp2cLfGbDKp6u3/0YEvLfZpWSAnG9kZJOxOBIqJa7+dxH5d5TyhpD/IqF4
lOm0ehbr8Vwsl0hkNDlumFYQgeOsqPVPzoRFgtsLN+VM5O9n5KQPFUTC7L4L
Ok3IX65wnlsuFAUV4kpLXmO9meO07TqhEgECQq9H1jeyYCrW36idVQY+/K/P
haL+dZme8zn2gwYTQXL1mz8xgJs2+uAjF36/fR2+TwFsCvihsSaqDpo/J7/+
r40BLy5EeK0aDIcLbd1WeqjPxX3SaMNX7sBnx2VX3IIZ8G9VSvG+DRehbTr5
qhg3A1R2Zh5TvRJG1ry/5NCI+zfZXXjM4xUFFmcp4obrh1c3uD5ovwOTmyNt
x3A8lFmTNlYTBd5yI/ZxON614/XqKPEIMPH6PjPwigGKnbrW0RzhYH3o2r+t
PQxgR6b/a5GIhtDhzVce4fyCUsYOS78IuND+kUcrhQWPbIJrI01L4cZV0TWJ
9Sw4pKNd0fMO43HrcFU23ueZmIDTkWv4veKAP3rPsL/isdO6fyUcovkcnE/j
9/xqQqqmO/B+cl/tO1Afrnxloyg2TgPaF4/2jVUsOMM1n3UjuAwiL/hP+eB8
pf7a6yVqEdBQrr0yfxEd/EpX3N6C9dfVxtw1DnnI07XjaDnG+6aU4w7I7vVe
DTcxX95MAWt55Nndopk2dyny8gtNs5WTDi4PdbaK4foGKbGzycjBLkULv7G/
oHo9/qtB7opd7+GB6wdqn4zfQja+EjrMKKTI8xprC1/kq13Nusa4n4DOGv9/
HJg/l24ajMZ+a23nNMX8R4GQy0h+Jfbj3WqSXwOQVzX6Vak04vd2bTcbPV4A
Hlr7fk4E14HWpSWmp9oZ0Kx717YyJBry/UTjNVEfP9iYvswrgwYGzuvOy+P3
ylc8OrES83WPnKPqUtzP80t9kxfqNxHt6m/vFyg48DBPk43fe1anKVmC3N6t
bbwDvyf8sVHFA/mqwJ6dK1oosq9VouUJnte+3/upJ9b/rPgJc1/kYomZf7y4
v9I6+aPP5ym488athxvnu3xNCM5GNmtcNnEL62dg9GT3jzqM/8MexEroDkys
JZ2s/QxIPKblIXzlMnE8pDT3C883lNJk64T7359+LJGO60+PdTSrof7cI5ue
xvGYAdOTi/+5GdyBG59DZl1w/GeCzsAf1OcXdu1OCP9LwROTFx3CqL/vdnUc
uPCMBVJbVtdynCyH5OgBF58/FHR5vmd+6qDIIlNZ/Ye/KVjZ2T9fiPpA680Z
liEyN31bayjqIXvNJRYFrxmQ85vVnMYRDc8FY9LKkVdvce+LEYoGnVvM2zT8
3ov0Saf//75/eZv1KwHc/+xs5teCKoosHOZ0vzJNQXq+8fa/39C+dzfPrUD+
74BW7fAX1Cd5a53zJynYW9nBHh6miE3kM/ZK5DNLKooEhygSHFTxko/Jgn1Q
KVMfXgYDGyLapH9R0MFUX9KG85PzlRQPo30CP9u6d22lSKxtam/YDK5/1OsU
gnomImyhQGuCgv0nnivMj6F/2jXGK7yiw7FfBhdu740hvWv7SwrrGdD23mMg
6Ug01KbW8XPjfK7SlUHdKRQpEqdP//hJga9mgrZqGkW0J0rNBnD+IpdF0pOh
0bDk2se2LcMUBIv87jk+SRHjxOIqXuTOwaUxG6cpclXCIPhVEQN2qLsLTKK9
A69eOpe7iQEbpJ3+Wy50lYh+l7zunYf5V3W1QRojDON33J29wADS/CxlIocG
vOc4619+p2DxppEE3UzsByQHKsqRU6Y6zhZkoR7l/1t07CMFy/ZpXZv7QxHp
a49E6b8YEJG6KXeHKw0sDu7Ydv8yC/ujGd7YiFLwk7W1LbyH9ZzH8xP//Wiw
Dw6c9+ymoPx+RFs26jkJOQE3VeQMPZ6SQNRX1966hMd1UDC8XK6ItkCRHac0
btogazi2Sr/mpJPA7+N7F3A/1eqTpic3xcCk79Vl5z5gv5Pbx3lycyjhtL+t
sq+Tgp6g1v8871NEcmzd/nXIhnxtv4+hPhwa/VEq1EoBvXRHQCMXnXgckNyt
vKYAHu22jJgMwPz+lPTbsVG/+VCVz6NjiOLlkB0jBgygDGlTVW9dIWCs+aVS
OwWx0utE/mE+4Y4Va/7bhvHH0X2DKqGIyn74fYPBAOHL2goMvK9Ah1hocQsF
JW+keuMwfwkcy1xrgByQV231sAb14m5VFWimIKbp8NvTT1A/MP95NeH6wS9H
VEbxfjHDrf+GkfkXRJe2a8RAV/7Is6ifdLANOCpnsP4GCWeqlfK8pOBTd/Wf
WF466TGIaY/NRL1gZT3EJxwDN3m81LTy6eCgU/t++/Vo4iuyQ2TfNQb8bZpV
jve4BQuOmXHfLrDgsoRR2Bb9Mrgsvmu1mC7WvwZHziu+3mDh+5Hmchj1gpNs
7YlL7rD9wOMVwaifN9XlsJJfXQW5A7t0ZCfpcI4120xqXYkyV8XfzV/osEPs
7dnVZT5kya6bwe3NDAjTXhX4zIAGT2MCSxwT8X7sDlEpyRiwOmx8/yZygvWn
08s0YyDhodMXhX0MiF7Mf9DntSuo55bGzEzQYan3fFXv5iuEJjlrNF5PwaLZ
1prwgxRJ0tr/7Gs06rNL3FLaMjHwwl2XPlpNwXyDpycb89P89c+02gIKrKLF
pOWW0MnFnvyBg6h3fp8J5XmwLQyUZQy1A1D//b7l3nfldzSY1tnQ13fRIcQ8
tPvlflecn90XcZeCg9HZEWeVKDJbr/jljxsD9l8S27bvUAy8XXU2zvAhHR5k
m/WIVPkQ77yQfduyKKjmCOy6jd9/c16MJUinINdfJfzDLor8LJlbrZ1Pgcf+
AzeNUN9Vdzc+nKJhPtwWzPce9bMSU6ruBT/q0w+HX9l1uYGxs8/7wXN00PS6
drfoczQRedW7QTGegkahh6fSd1IkQ0Mo5GccBfyHGXKTitgve+T1xWfQIcnw
OefyNf5EouLt8wUjBmwb87nbdiYGNARtpHffpoPU8veSGweDSGGHZscFXwrE
tB6zBNF//i4pm/VIQH9ZJfhlvPQmUTuZcCP9/7+HlVAbPhxTBvsk3qzw4mXA
xpzDN56v9IXVM4dhAuPjHvfhZec/xICi1bJmGy8KbE02bjLE9zaIU+R5rceA
Hx8ynOjhMVBfql85fo2CTdIeYj+fUaRPZDDV6Tj2k6uUOCTFY8GH5+OFd9i/
i9+oHBjxCiTS/IsEIsPRn1qD1BNi/AhfJut+dBAdGouOVd/A+2GGT1TSZID5
p0QusZkY2L5f5LmsFgMquY0bbhrHQiVTtHqJOgP6jp4+Nng8FiQiNWUOX2TA
wJCfCXWEBm+j3s0d42bByZ6XOpyPy8BXdF3LMSusD+sCbj3FeCy3vdNpNcuE
jDDnW4+YZSCq5nffazcD1B+Wnj2VHgt2Z9g+LScpkDr5sVEG71smaKMUdBbz
8RXxb+P7KKKx1kNlvw4FvcsNM95g/f85OScbf5SCpW0N36XxvQU6q4/LX2BD
U2nyNdXQOri4Z3Q+DeMvQ2mVCOVEg1967XrqR1AvSJlPNWO/O1bBzSmNPGQ8
UUxhvW+fi+Q4fowBF0edzaRDaLAqqKLxhwrqBx3j6slWjA8ycOol8pNVUx88
sf6q9Ud/1lSmIPX40bzn3Jj/+EqsW/ZS8LCbiz7fSRGeztUjhcjk9scXNz9S
ZPcCqw4wv+5ebOq4EBkKR9fv2eqtSMGxFSKX//ZQxGEo0016FwXS+SWSkzx0
cniyuDxWhQFP3i1si7hMg7OH0tujWHTYKFDTdkvYA64JfXF6xsOAW90DFz4/
igXnysNR7S+ZYG2/yyZrrgxMW/l54/7RIeZWcZ/ur1iYVeVojtnBgOc9E0pX
S2lwtbogfliVDb59Uxc3xNRBnk8a739y+P32ysgBcYqEa3JNFAYwwWzX2wfW
PSVwb9NTW+cf2G9KFu268CUW/F6vGi4sQv03qHdBpiQYnvI75s8vp0C8aDPX
Wqz/+iV8h5y+0aHlxN1gl8VxsOLEl42Oaynw1lD6Qy2lyGIXh3mxrxR8Mb6r
HNEVTdzouZz0bjpEs1R5Vk3Ewk/+4v44ZC6hF9H8uJ43Jqfu5xIKthSkn5zB
/VW9awS+Yf38Vr8yhOUXTVZbtx10FqZg9WfvQ1twf7k/Kgd+fKTD/pXpJS3X
4uDOjdj2QBoTVvm+nxRtKYM2OfFsrzVs8Dz69tny6DpYJXMzMYODgn2hZr80
UW9ssB09E4bcO1L+OO8H2jvIn3i2Yv+0XXVNzJ44iB9KeHrrZz683c9/OAzt
dX5EYo/pJTpICLw5/XHaF168E665/pgOzpuenNmA35e6s2bL6+/5kMSVxH8O
632rktid2Z8suHAOlE7cqoOMqxrb1M4xgeP0l+GSHWUgkPh3VmYkH96t+ntf
UYYik823ml8O50P+8bJf5zZR5OuA3moGfk9+OiI9JjIQrD1OnrjzIR8WPu7c
ZYbxULR/+53ryDLxj27f5KOTC1efvV/ylQ7WxTp7PTemwANv5/Sou3Q4OXc2
1F85Dpa5Tdv+s8L+UvHKsgPhN+FJ0rjQ6c58ONYmYV2J53WZ2+aa+z4fksP6
DjVjfB70fRRhiVyr9eL5jnmKVPJatj5tyQdDCXnLv6g3ov5a8bORr8QwJZo4
6KRPQYAe1JwPETQztX94vm/BZZ6Lu/PhcrWVGh/er9ki4umPdha05h356HS9
DhYNnXTNw/zf9+fjkfFb0URoUXp6tSUdhHqs2q1mgkE746fvQl0+dPBXko+o
P9oTix89RW66/EH1Ie6f4icqTj1Af5WRJZoTyfA97kv11ad0sIrkshTckALT
W19l9d2ngym96WANHw0C00XcR6Lo8DPd2iN9exzobmKaLS6hg2Bj/ud125Oh
Ty8nI6AK42/nExtLKxq0/t6xXqeWDvefLOgGrEiB+uiRP+dx/n7nkGVjXDTQ
/j5VKc+kw9qYxh0zG5JB/0TGVXHkc/ec94/tTIb20bjRWmTRh+sDduYnw7yQ
89hIAR0YXU2r6EY02HxMocVHiQ4756Q9Xqj5g4mirfA9n//P55fJ1owD97vf
+Osz6aA+9pNLm8L9RXVVVyXTIXBkOO7D8yS4vVbE6mYaxr99LGOFRzKE9odH
xeawwHbpR1aCRx10Y1psS6IDe71pzWo8z7ZKpfyUu2jfn2F73fZTxO9LDr9S
KB1Err0ZmW5IgnX2D9o+WVJwyuSZ7e7GaLLn9qj8/Gk6fDzibKXVFAc7BMsi
/v/32a5UQ79u/yRYMNDcnyqE/eYLnRrLE8Egketx5xHm9y2PrO+PyUYTv4N7
LXhQL/FJ7HWb9ayDqk5m7xJzrFcfZnrvXEqCvfJp4/LaqC+TxvujpqLIlg7L
g/u1KDgvJPiLe3c0cVU4XmF+gQ55jt03Vnyggfvi6qBOQzoEdVwMei6bBANC
utvFdelgeFeQuTMmEfLOftn6S4cOd2p18taXJsK6RzVviA4LDjQ97LvtWweL
C1Yb/jpAh7aLrP66e4lw24H6XY9s+8i3oLglEYx3HvIjwICiHevLcjeVwdrU
iC36Upj/0zvdOWujia5FD2gg//7ul5mVHE0GnsWe8A5ngJCbd+tN+xL4O9v3
NtM4HxYnrRLPVqPImtZDQwwvBjxVPnbm2NA90NT7zfggSof3Roe+sqfjQK+/
JJ+1mwVy3sXMz3g+mWkvm0EpOizPfLLO1zgR5ldmGCVfYMDlq9l3RDruQb9m
FidRyYdTCb1Hlp6lE9sN1wU4kTuP8R62tqSTX20z/jJ782G0Kb6h4hSddKt0
9M3tyYd/rHr7QSM6eVEezWeCPN353YyN41kueq9FkCsCR1TEdOjE/f3ODD4u
rF9H/N0bmuOAxnV12kEpH2oU/kfRlYdD+XZhCmUJqVAqW1JosYVSD0KUUpZC
FFEhylqU7EOWLGPfmRWZYcYYxnYQWkjkV7JTikRRpCi+9/vPfT3Le55z7nOf
c/6Yyynu68epyCsKp2CE4dGatCNTCOtXFh4H3lDD8psvo/OBExV1z0T8MxWj
gmKGtqX7tnRoCbuBaz1Mhr1y8hLTzlQUKS3/6zi2n6zy7W7zUUwfOMYVBzB8
KGvb20/HqEizQ4rPZT0FAnzNdgvXJqGA6rqjTYfIELu5SLlclYouPuKiXMEw
n4GfU4w2FT07STbVwfxjaXL/gGo0E2wiSnSVDpDBqfMjFzKiont6IRs1VMiw
tLY7ZEqFitpkR3cp7ycDb805VghmT02jFYelTAbfhRP6ioqYnphYlChhOHHs
b1z2HirCrxh95cOwnnZ4yy5s3WpESMJOiQweK16Kidh6fthb+xObSmGq2P+j
3/1mOBP5alIFu3+cxuPRupuKjm/TP6ioQAZbw2v5KjepaOx0eqsaNh/n5W21
ce5JAb5FpuiKPBnm1e0JlJ1URN1RIvNZmgz4zd+R+g0qsjUZJYxiWLQ3WK0Y
w5El5hP5WP+3MabRPEOUCS/xn5g4KTIMfk2bl3GhIn6RNSHyDjIcS3z2U+c6
Fe2bFr83i9WXIoMS/QL/JOTZe8leUQKzb0Qcp4TF30KeMn1HnAz+To8fdGP4
R5mluwKGn88cc95sS0UPhbn4NTeTYe72J4drFlT0ceqZicoWzD+lTmRxGcyf
9BuqaiKYPluP8j3B+PhWg4uiiuGACUPHrfJUtMFZQ0IYw+ezljMzFKhIvOt2
bgc2H0eoK6wrmU+DjR8sTRyFyaCisF0xAVt/bndqfhuGm8V5xV4rUVGg2QUB
PyEy3PRojjx+gIpi45r7mQJY/UsVf/gP42slz0YGAcM3Xt4dkj1HRYRMJe4W
DB806rTpPkxFn1rFC+gYLpNeUD2kRkUmmoVwio8MbyyGfwsdpCJjCVX5rzxk
4JF5gWqMsfiSxlv7MLz9xg9JCRMsH54TD6wboEDIhncTFxLSQKBLrYCNzdcD
NwoHbrqkwf5t/0V8w+wrNnX4mW+C1cerTXUKayTYW0ytbTCgopTWB7nbMBy7
N3rHh5NYPBTaArz6SsCize/Co9vNkLirLNASm6+LBda/tQlJg/tNJj5Lf0mg
w7T8vKhORWcnUqwnMUyXdDPeoUlFR4V8urd0U0BRYXbMa28a1FxzHvmzvRhU
51sMpcsYoDR2Q/kYNh83cjakitSnwXgGV0/CMglGcMcrS7DzW+zWedv9IcH8
whX5Sl0qupwRt14LwyYSyOEIls+Mwwv0sxi+k63w5ziWb9xEyZNKGKY46Ks3
Y/bwdMt8Sv9NgjNn9ny4cgjja5j0pmpsvjSuPWIp45YK7pJS1icXSWDLkrzk
iH1PXSvkuzSGk3JvJ3/UoiJd9pqVehMFzE/vKg9XSwUe/tjtXG0UkFu/gffh
9TSodA5ukZwnwaKSmJcHdn+QG3Es9xsJGlLUlEKw+HUWl4/Ra7H3i17kfpuZ
CsKZv+oe6BWDeuX9FNXlSphtSHyX0kCBA7K5lm0ZaSDCTnvoxKLAW7LFGa2w
VHipcPKoQxUFZNbONhM+poLAhTNJ62ZJgK8MuG6Exa8+NdBHn1ECcPSjwbRH
M1xNb3cxxuZR0d7af83rUuGbVmHZJgIFksYWtn+XSIU8UuuVQOz9tA/bqvWq
suG+9bqaPnwJPF1gX73ohdU7bsGlP9EloO/XdOo7Vo+zrrUqed4sgW1rusP8
2s1wTP/cveEbJdC1/LxJULcZzM7F1EV6lkC6/g3VLZieiJwRF/+cT4LC8X9R
spiefaM0oKcYTmSnPiOdoqJcntP7wvJIsFEtyF4H4xdJsMLSG8MHnOrAwZCK
5A2mWypzSPCzvm1xAOMzz3+f1qFsEoQEZaj+n9/TbiWRmhiuLXEqbMcwYyrW
4bdFCSgNnJR8f7wZUkuHzidnkeAcYar/Efb9m5w7EbcxvGQ9sUMI279xYMAv
9WwJSKapu3QeagYqsbnuDZ4CzxuH6K+CcuHWzKmI/WkkSPjH4ZvF7BP5HrVB
BsO+NJJ/Lmbfxz2e/4aTSeBau7/pMlYPVLS9jczwJOBrEhkniVORM+XsxX/Y
eraX3Fs7TB9PJpzXGkkkwcTBGSEydt/0Ka7G/zD8YuvPB1bYfXn2u/Y3Y/tz
+kguklupaMXG5E4+hrlUVKk52H2SYcphE5kkWOG6KEe2piDpxrMVhFgSaNhD
szaWr8qW3jpZGBZifjw8hWG1EwdP4DCso13gvihFRQ1/a58/wLDnxO9+EmbP
NX0eC1IMCdz3qcnMbaKi70qHLlgblUDA9pffBf2boS9FQCgligTjEffZWtj7
KnZYZcRg+Jo6KExieI27Z6ktkgQeYS/d+7H8Exasi6jH8IYh0YFHelRk3nvq
hA+Gr86F7fy5A3ufIrXDFcPXe/7GETB7eOrsyg6GkqBEz3VSATv/buya4z4M
N6VZDGVjWCvg6diFMBJknMMbHRKmInLw4B4DDD/v0S+1FMHmhbAzZ1Kx/X7B
wgGnMazc9aWSD8PvQGwdfjsVvZoptggLJIGTELWyDtMLqQVB/9sYnkxj4Hec
oKL+woj10y6YPj6oTojjzwXekjtqPoYkqJh76i4zREWpBrbhG+SL4bFCwcBn
rlowuvlyiYj1Z1H4xZ7hZAbY1OTYfflSDMeEJoty5JrhYUsX/62FYpiUV2sZ
dWyGVUazyxjWnz07cszAMoUB5feMJA0HimGfRPotONoMcE+pplEJ0yt247oj
TVRE2bUsripLgcCnddpPnfJgk+jLwp5nxeBgbJ++F+Nzhc/H7Lu7qdB5lMr3
z4cBhcXHkjqeFsPZuwNyRYbY6N4kl33AnApTL9Kc89cqYbVW+U2fFBafg5bn
doVi8/5O+cqG+xjfGOdoO4Zz0YDnroN73lBh+dU5eTPXWjhySt57hUOCtpHX
deNhyQgZ+75kEEnQrlC+aZWUgipsT9GP5GL6iA9wIZ1IRTLndW5YYnouv+bN
M6DBAKct1y/usCWB4Oeu9fa2uchjTKS9C8N2PlquGsk5aGxtQwvHqhgOPnhB
OT7RBKc6fskknSGB3j7+X9fbc9HFsdff2/Ww+mO89+6sYj5S8hz/Morpoe7V
ll7PSwyYCRI78bOTCN+8z/4tyqAih3Nft985QQL/F/X/1vzykFYVIgnoYPwk
/am5uSEPuaepqN3A+PpgYHaXIn8ymolb1a85TALJ+GF7kxd56HO/uu2ISjG0
ttDUekabYB1jxjaDQQYutyCzqfgC8KG13MJVEmEyadPVjTZYv1qsHCiEzQ8a
g9PVuXdqoWGq+U7ceRKkjfipOpJTER9182nfciKIKbXe2R1OQfcc5BYOY5gv
mCalEE1BV+gM3s5SIgi9+bwqjqOg9xMpxoOnSPDf09Fb231S0aRfFEd/QzGM
uI9znxprAtY97X9dzlS4s9+TsvVTLYx0Hk54gkhw++R7jhD2PVNbP4eqrSTw
6bzZ1X84B2382qXhyUOCU0xvowLuPPRN78zeNC0S3G/98e+5YBpynQigSepQ
YV+Q47NXbzhgUFLpXUWnwGK3+VH7ABZYn783/Qabvz9lMt0OTDYBl5f9dacx
Img10RaEMvORwxbimTmsnrSeeaQ/aF0FrR896Ma+REhaJoVUulPQ+Z/q0RvJ
FOAX2LNr+60qyH6YtVduOwm0nI+ez69MRi1fuDUCNpNA+utv425lPNIl06lG
14mw+sbDutkJ46fQxoLLzkTwJm5onHSjoJevdrdr3KfAPGkuL+86C2QTZ7vJ
54nwoGh9qmUDFWX8I8e/u0qE/VNSn7hcKEgm+0tQBIYr+CdjbmD2sMQkLkde
IYLETl0voWAKEhRP/H0sjAIf3Fcn43dWgXJw7WNpGyLcjR1UVHelIBcxel15
CAUEg6Ov4fSq4FC43nZNEgV+HTOhbHrLBorUpr/c1yjw2ltJoliBBfjHG069
IFKBx/O2ss5UEywqTpf9tiDC3iPvVVhWFBTnVJ7xo4QC698EXdt0thqk6Ow6
wmkiPFb/x7OMrc/dH5dsMSFC/11FSW97ChrdwXi1dgp7Xy+tr/EsBY0YVYvn
GhDhkX3R+KWrFOQXckxAdg8ZdNqdrtkxCiCPyZ3ye5II0y7GiW1teDRm8uP3
ET0irLdp/ynuTUEiTj8D750gQqPRFC0SqxdVv3TOb8GwXqX6KVMHClr39/UH
eex8+cr205W6eGRSLY5fOEqE1BhbJgX73ruFx0EkHSLU8Z+bPehBQa79lIBZ
NSKwyLJ3TphREHfD4ItBVSKsWUUOHL1AQXIUo60dn7H5XPtCQONEBXz5FD1S
up4Mw9Vz++5z8mHV68hb5WYiVE4N7vZaSUXFCUExtEwi6CY98fm9PQfJ9292
rT1OgbrfUjT1WRacbLh2Wk+KCJrvI1TEr1CQ2MeYx9XKGP9IWyy2P2dBR8f6
oIu22LxJ315AHWmCJVZJ2/VxLD78mcJlefVgPRd5VHcLEaxPmacvL5PRixsX
770XJUL6sfYwrV0U1BunwvMfhu/5kfi818goYCmMf6cwEZaPH8cnKFCQ5FXV
3c83YflaG/7eazcFFWnU7U8XIEJUXtKO8p9kZOblbmmcgd0fs3i3/WAacvit
ISKA6cfImyJCGqsCmlMaTMd4iRDnzLOh9x0ZsZl6BSrcRPizJ2fJTZOCKp32
zxO5iOAmZLy6V4+CUvS79grnYPNMrKWrM3cF6PT6jk48JsLbfDvpuYI01Bj7
Ss1iHRE2i2ULkZ6S0eaoeCtu7L7XOp8X9oyQkZKyCXcpdp8Ev79s+H9kdPnp
uoRPuynw/cutEKmuKqh3LCQPrhKgav+18qFOMiqcD3Aa+0eAMqvDg4IkMjpT
e3Cq4i8BbPjuvd72mIwWzEzNJDC83vDpO9UsMrLWqm29uEyA2qRMu2JsXfLI
5TmrPwTYbEgRXS0io8V/f+qCMTwktn2vdSgZcbuHFvP4UuDcyv4DlZMcGJ8y
rFhdIoCAfbOXAbb+K1Q+Y6meAvoDoSbnLzdATm7CyYc/CeDPHG+Nv0NGVccc
5mjcFHg0Ih/DG14FMSpqHnc3UOAqKz7pW18VsPpuFUnpYvniH9d+ODIfxV2U
Frg3SwA1aQuhauy8Qfu+16pPKCC5s03fencDbN7xzdhilQIOvno078ommMfl
fKi+QYZWfjvri/hyeLDgep0jTIFY9VuGioXVsEg6mU3pJADxhVrB5pNktBb8
bzbkMQlote4yg8R8sNQeMrHrIMBjAWOzbHMyMreOgdUXBFBZ+vD0tSkZSfOv
Nka3EmBfxORuY2x9YIErT6yHDBv1z3uMtVXBN+HmipynBPh2Y/oaXo+MjMbf
OOXoY/mtu6f0Zko5+GZNzDodJ0Pv7efp8Y7lkGfpeeaFMwWsVGxET3vWw+cd
G8b0GgjgdGOliHyEjMpuv3K4aUoGSUo2R9+qApwdZoC/jgB/+J05akZkJLSX
cLC4lgDu/9mvXztBRifcbudJYvwRe736d/hkPlp3IPql7zYiDMutz13KyEa7
dLfxHb1KAYXgE5JoWwOchZahS0fI8Ez+dPMMrgJGBIU6PMkEeEMf1yMcJKPj
ejq+nSQCHG3F/1elREaOJrd1+sWJYPdZYWj0YDp6zW3935IiBUR4hsV4uesx
3lqcuPaVDFXBz3Ik8zjwyyjJi80kgzZ5R9fZtmp4esiBx/MH1k8LZ8tn9tLB
e2frJr0YMhjcP/TOU4gNp20XZed/E8Alh+mi9zwd/bcB3zk8TICpxJCdtCM5
6H6baNj2lwQgjPFRc6/mo60uHwIl71GAb/2WGd2CJijVbdCYXSDBeYd31cwz
FbCwpb1uyIMAIfNzSsURZFQ3Xl5+zIcAuRPT3M/EyGj9h+O+PoMkiCI8UFBX
Lgfu09ZvPXZS4HSdzjehlgYw917QSZSmwIN9H4Q85htgoC49eugeGf4GzzXH
kNjw47PTMzWMD8v8XMtyCjlIcI/CLotcbL7fzf1zyrAGOln15n9cCBDxxW/z
FD8ZFQjsWS0ZIcFOVbtJK6UKyD25Im7mSoYre3OEuTXZsMq8NQbXCKCORknT
kmQU5LTr9S4njI8NF++lS5FRdYao2H84MoT1StJ4i6thm7nspy4nMgwmrBwo
lWTDFm2RK2+vYv4ZvnnnhziWb5Oyx+WtyWD5sZfApcQGi6hMrvlnZOBxMfjn
dbEOBhbeSLMuEKA60fp0MxcZdX+v7R7rIMNO4s4bG2h1sG9GLDeCTYAwdUQ8
w52J9v8JsrmL4WH9PeZ/X2WgW/khvIsMEmwywAmqfCqHuernppM0AjhmpRMS
uzKQdgEfSU6BACxW6as/WP8uOat3JPsEAQLjvq84riOjP2W494kZBDAq1WtU
X5eNetrD9pM1yXBtJWVZ9hYb6vOuNKSqkUHtteD1cRM20H6HvtLC+On1XubQ
zksZKKWaGSgtT4FXtW1/jHOaQMqQT/2wGgFMs/x2jPwmoW0s1vEPWLxfev1s
N5PIR+q2/kUf3hLh8AT6HFlQAGd9aHoX4klAVE7ETW6vALufg0OymP+9EyMa
f5nmo7cpA+Ki4QT4/KxHiLMlA71bmR2SaSKCl/30XmmtQhi7Jf3LJogMUzrW
gad/1cH4QXWxPAECVLbVkrXZ////1E1LDzcQ4EJxTko1Zs8/111KHUZkmFZt
Yg8mceC/v7bWEq4EsNx2UHshIQstFo1+6OAnwHW54j9RVBK6eR83z89LAA3C
lIrVKgnlwBFtJ20CcE3OXXxbWIgOvt5V9h477xpZ+5/WjizUJ2vJ58NDgGjW
rbT2lyTkGnps6d46TH+fbKx0/4jZ8/htQ8RaERxw5i5+OUdCAecm74dyEeBS
/7uRna9IqJ52sLz/bRGceq0nsSWAiu57hzAZS0Xw7WDpO78UEoJWv/haWQJ8
7JMF7elCJNiTk6XzpQi6LEdjX28go6VNyQn4HVi9+aMtm99TiL42f2mRGiLB
YMe9TVfYbBj8tvmBwWgRPPjYHN6AI6H3h98JJazD+GghxVy3jQN1V797JpSS
oeNrbabe4ybAqabsTMH6YYN/H3s12ugg9PHj3J55EgQe3K99wYMDW4qmVw80
FYHEp6OSJ8NJiBNXEzceWwR0k7GjtcnFKDs0QeBIehH45m3/pI/NqyOPU3hO
VhXBtKIT2zGAhDTeKRPUsfl1gEFz5CeyIUMu+KxXJra/leDrfJeE3pnaXrsz
QAT1K/Z3xxfo0Bj52Ut0CKvvXQlXJ0+Vw6epJErU4yJ4XRZcfsqDhDxzUIb4
IxKsJYtMp7XVQLj6ztIDjURgq5nXciboELDjh8+LKRIkjmyvvb63EZwIaqJz
28mgVXzfIP52E6T/68Ttw+aBRZn4JR4OG8oKfuYpOhbBgE/KNydnLH6vLjOk
Mcy2ivba7EJCZ/0/xwRcLQL51DYFO2y9dKHZcueVIhjaaf9vmyMJjVjV/ZS9
WwTjM47GycVFKLOzWPuoHDb/69Z6XM5kw/oAZnrBuSLoMZiYfG9GRDJjyU+4
sf7/R3dgXCFWn6Tu7DzQd40ID9Nn1NUjyqGs7LiSrHYRnJEQSpwlEZBkPo/t
8I4iiFEX1HZSJaPsQ3aD6vuKYMtPjcM7ZYiI1ys98jg2byivepWYYN9LUDLw
r1AugkRDPnltHQIKe/zvw5RkEVT/HjsRXEZE9ZkW3A83FQFX0KZsr7dEVJd+
QK6fpwgSIu30sq1IaOX9s5KspUJw6pl+Xs1LQmZqm3xV5wrhvLTiAQcGEeFl
S47YBBJAeZTryTPHQvBqFo68Scby/fZzrT5/NoRcaTnlyC6EPkH7MfXzxeiy
hs6JloxCOLm9WW20ohiVJ07xX8DmP6eo4aG5C02wu0BCheNXCMceLk0vFhej
iKtaHWUjRJDbu65tPqYRJnlNBOg/iKBx4IOMukITXOz/Q703R4QQS5xiB4ZN
BPXq22ax/p184jyvYhPsvWLWyJwhgqS6wequfU3gKPtLC00RgTf5yOtfMk3g
tvMo/wjGt+E8D8mzO5tAdIBN3o/V27MtXXGQzIafa6lnT7GIYJDySsNpcxN0
fLdqLrPA+pEEt22RAuUgqJA9HGdNgBGqE6/q5XIYDC/RzkzD+v0ZzasiIk0g
sHiTa4FeBBfYJdz6JQXwXD+aIBFFBNc8nZ4nW5rgnZu4N1mHAPFbb/W6YHy1
k/93e1M4ERy0Hp/029oEv+pvvum7TwTOnQUTN/EmGNI+UeOmQoCvp7/gJ2TK
oWXPx2tP4rB+zawhmRfTb+3IXpnbIVh/6Fsjk3SRDTbr3c6Xfi4Cz1sp6UuY
vV5ENxmVXZh/Rjv0+4kAElTtNztNiuCiT5FaxmQBdOxTu/60rwjwcqEBYkw6
tC5ZGAn3FsGTL3zCojF0mOzTaue8LoIr2hd0Gol02PxOc6t2WxFUmVUqS32l
Q9Na38FdzCJod0znXW6mQ1GuC2cLuQgy3z06OBpMg+5fkXVBWH8pcaZ27TZP
EySQCo1UCEVAHtmByRgdtjqwq97tJkDrRvEHXDZsGD7m88SOvwg88GiksawQ
PshtfrFehADfTY00TTTY8PXc62BVpyKIv6u3+jPxCRxRNr9yZqYISj7JX7NQ
Y8P+Q1Ui/2kVwWnL8aX7O0uB2ZSTHranCK42vpPYfaMEztQQ4vux99XYPOyv
MGaDJjl67gLmD/6rg7vyJOlAYDtMLG/F9EByKmDfUTr0iPTmv8D4z1PBFP9X
VwrVu2Tn/VYKQaArzpXuQIeuD019s7OFsL/z4l9dETowaub6cjB7T2zt3M17
AIBH5eSC041COCGBn7+4uQh4xUItH1zG3heuXrHdgA0RbmacgckiuLFc1ZYf
0QgVS7r8rOUicKmXPf9asAkKjfcqWzQVgo1bjqqCIh0kVQQdbpUXQvinYWsR
Gzr8Sz13YHNLESAu5VuPzzdCq5Oz1nliIcQm3HleyksHCaHrJCq1EKrOFrQd
wOLXtNk3JfxmIQhHx9gst1Mh5mz3yVahIjjxzGriPxc27PF+FHobi8/nmOGX
PF2NsOHUMdvm5UIYnGNa4MLYIIB+VHIrYPls+eoQ6SsFwhZE579vLYSeoxby
wVFUsNhh9uVjcyFI6Gsb8Hqw4dPWhY1F4oWgx7pJXPKjQ+WmLwqvpQqguT5V
lYrpzOJu/tHzIYWAzzB8MxXDhudJTiF7LhXAg81/pQ58IIN7r/2ZfScLgNcl
aKc71kenVN5W631WANoD515O7aWDdvv8kctyhTC3629VbTgbwpc+1CieyIcI
70Ahk7OYbm+bUtnNVQgb9Lokhs6wISi7ncEazIcRF6uUK4foIO10qZ1TWgDD
z7WHa3TYcKbgflkbNnffzCjdKhtNh684n9TU0DzYcOFM/Ds+rA7Jmh+9ej0f
hCpdnPizMH/GUwwtpPKBOuHz84k/HYi8a40fjueBb3f46MMWIoTiwzuXIvPh
49MG3HWMv7h3ZutHA/LgKu3zX8UkOpgmfTGSe5UFmpT4Fd87xWij2Uqd2aZ8
0OmWvfaKlw2u198opv7Og40OrmPU11Vweb+XSHhMFvxJzm4Z76aiUG6axLuR
XHgd3H053ZMO91eFV5ZvZsE+v5N0iywK6nC53LnhYhZc2Kpa/vsoBbVukN/f
Vp0P5vpVy5cLAMQjj6XlCmXC6sO96ri7LDRz8Ye68sk88Lj4gVdYpArU87P4
Uh/kwtNczj/DYDrgLhd9y47JAL/qnDDxLDbyutlkHsjKgY/646c3WmK6bBr4
975VLvg+TcF1mdLh1731VXTJPODb/HZCrg67r2XtUmVfJgQIWyXLvqYivUVp
9eueGTDAZ5D804ONMtyPb+jflgFX1G2qeltr0FfFwsJAywwwGLK3Hs9lo4dG
Ec2JNhnQ0H6z3vUmG6myUyKvYvtZp3PO9PtXo0Ltci7bIxmwtMH947g3GwnH
HL50G8Nyu7gypdzZ6EDcwNsAuQwYclaIaV5goz/++7OdCLmwrucL69IHFmS3
uvufL8yFhF7dzhtqVXC66nujsHIO2D0753UskQD76Ud4BUQzQP90n2rEMBul
vtxu3F6eDloBr0eXNTmocSvbTUs8Azgqh/8aCLNRVKxB2MuoXCC6KBdZZ1QB
uyZWb/PGDJgNVsFdPc5G9Ljfqo+8MsFkmhGsTqUgMdvAhGPSGRAgmPBibUcV
on7dGsX1OA/8w+8Ly2gAKOyYW5dRlAPHIx+9ElKjg0fQ2/1/7HKh6ti5qyy3
KvDv2Jp38ls6vN6vxFciwkYVbTnpjwfTgTAj4/lPi400I/ldGo5lgkKQnH3D
eiq6o7q2sWAqHcQsPgf/V1+FeMnjf+665IGbmBrzuB0ArTqoz2QmHTYc6IuX
dK5CWy0+eB4YTgceJfq9vOIqdCtwVOOfVTrYvHcQHz7BQWsfWz2kqtLhqSI5
xKK7CukuX+YVL0yHM4Hd1r0fq9BsmI5bnnQ6/OdclpEdx0F1Iy0eX16mg2Dm
ueLL5iwkr/6lltmTA4vHL8k9GmeBgXVb45WtOZBOlxJv/UED63ukFuHYdLiW
cian+1UVeplcfifaNx1MhX2Kdy9XoaLfUtm5QungPXGsDHZw0KiWq9jqdBp8
qXtzuQHPQYse683gajoUlE9uvj9XhYLSLygOX0+HCbXeFxLMKnTn7XXVaWx9
kxO/xbHOKqShwdqyoT8b7B+Jkmwk6GCTNZu470MadBx8Lxnlz0GDVX/ithIy
YCJqXPtiJQXF87/qrRhLA1e217Wo3Rwke33xoehIGsRLDsRsVeegi82/w4c2
ZkNJGbkiC6tbN9VddCVu5MD87pkVejULzpm3cGl4poOi7I+PhIcsVPkp5Eov
SocUltCDqaEq9DT59aDPsXSo/WQT/epPFZIyDGkas8bi8W+L8XMHFtpY+JCm
FpABOwt/f/+US0bRGJU3GqYD5YmNre4ZFuJzm5SPE0yHB/nXR7e/rEL7ft8W
M9yQDiZpSxq/v1QhhT08tz3H04BpH+Vb+oKNemi2Io9+p0G1lKgofbAKna07
//D6jnTw5Km+oJbDQvlh5kyqRC7oE2TURGMbIdig4E2/QgYQOwu4+YOpaO/o
T9+ir9j7L1ibx7CrUMc25Z1Lm9NhxyvDRG4rFjrw4Pvee97psNm7a3zb+woU
YJkdLXEzDfgf5Vo94OWgsfsRzzMOZEPBE05/nAAdnimE8lXRswFPNkgyvMmC
hul9FpX26WDmHDaWFFiBvkx0P/wykAa3Rw5dKQtkIUcz030nBbMhz/RsmYwJ
HX6bDh8gYPHIfqC8X2wbC4WkWdLDutIg2bUj2y+ThbbmqZvvUU4HffeZLlYc
A83opWUFGaaBZ3EpUWysBtUbb1u8dyAdfjfpvUkzYSDxn3KO2WFpUHt1+5ad
lWzkl1lI7lBNg9Ls4d5tmzlI/8bi7OOnacCK8GqTV2Kh7XZ8o1oPssEusla9
2IoF2rLfgt6LpMO9iN59gc4MFHi7oUfWIxt+WD6r10tmwcsmnfJmx2woIzlE
tHuzgKTbXdvdhOXXSsTrH+oUdNqZ/EiLkw6BSxO3cBj/ll4kPTXOTwO7jppl
02gWUro3PycnmgbRojIGF5ZrkMQk+bydVRoIyf3YXG7PRkE6NRr2b7H8KKls
MGhlIEXz3Wap5CxYaE17Ko/V6yar+cOD79Jgh37e8xMXGUh06Y3/+740eO6u
oQExFcg0g//I8YtpwFPPx9W7VImMDWb27E1Ogze/v4tMdzLQh2yWsmd5GpwI
kmYlFVcgQ53e4Q9laXBKfXJwSqMCrZXEXB67mwYilx67XwtnoOU7ZE7y1jSw
Ur9iai3AQtMK7ZlVL1NBP7Iy8d5hNjJL3MJ1vi0V8NWRj2yxfJf6G3H/lHMq
WPAX4SL/1SDx94sxfYfS4Kk3sztQmokOGTicqJFPA40qUQiTZ6ISIr/jme1p
4J08HO2owEQXD7prHRRPg3GeUzEPdzBRwYuoq7EiabBy+i/pwwEm8jM1uHFb
OA0EviexeJSZqOtRyzve8kwYbSzIrzpPAxou+vDs0TQwv3s9Udm4Au2/yvPT
bh/mzydfzyVlVyB+pk25p3Qa6Ezs+ZPXXIH+vPNvN4BUaMI9Y8evVaLnImmL
twsywZy5aatmMg0OPou/fbw+Fe64yI+5DFai4NQ9Yu2lqXB07+3xLVIsJNIl
Wr/1byqsV3A/bGjAQONfGdseD6dCY/PyQ4oqE8WxeVR572eCnlg/TtqfBohA
aW0UywbHDXVV7uaNQPJNdenIS4WUuu0R7yMr0alPT47cEMqCtpy7Q78+Ynpr
czn0+3+psFuax+2fCwN9YnU0x4WlgqO4yvP5v5Xok0pvxmp5KmzZqBvqto+J
pgdB+3J/JkT0/NTn28+CTyPr+62LUuFTkHBp5zomIpvGNeckYfbzDnDdl2Oi
jP8KdbSvpoJnc5nrSXolsgyRPrFMyoLyx2X49rEG2FG2lDMgmglKMpdf3xWn
gSo+9wk3ZMKZi9mjU3JVkN3v/NT0TCq893sY6DRSidwSfFx0+TLhkve85OJQ
GVD3j3m0Yf7sWnERPG3Dgj/siL7VLZkwO126/osy1h/dNruxJJgJeZJcx75W
0uBy0vg0LS8T6qTTPHRbWdD7uk86gTsTaIQHxdv+o8Gz78RAvZOp8JGLQPvp
U4nWciiayTdT4Vmp+x+HPUy0uIl63uRKKsSHq978Ys9Er2yT210cUmG64fCH
DheML+M781siM8EoyMztqj4LOn/SHuAOY/Gqe6ggCZWIMzo6viswE3pbxEha
ASyYGw8bNd2XCh/+jbV0RVei2AnDpH4fzN/ZigZ2byuQNP7sC05nBtwNqVKr
cqPD4rObRS+GUoHu1TctrFWMPt4JjtanZkCUw/3WOGoZCC6dyVXclArkisvq
Iq+ZCD97bzibLxU6ie8cXbWZqPXq0y/2f1JgXZR4UYoOEykYZE3W+WL17KDO
KpWfDpGe08zNaanwvcPGUGYZ60/CtPKcn6WAlGjF7TDsvv7467dtrDOgePOa
5NYJGlQ3J5RFvE2B84Ex0uc0mOin+vNrx5tToO7CuwyrESZKMDb+1ieRAq+L
XrrxdNegxAO56B0+FVJjYouSH1CQ17dzrt0mGWCRpb/ubCENFi1GGRPPU6B0
dmmT62ksP3+n1h7enAK1oR+tLj6uQQlKWjV+WhnA1iEHzTTTgPmGy7HyVQaE
av9nUnmyCtZt+7tdKC4FnvJkvk/B+L42EUk+X5ICmi7uFyux99NrzHiFwlKA
M9d/+JF/JZL2X9p3KDwFFuU9kPl7JtrwqumIq10KeLgk7VHB9K3+6+uul514
eIo784tNqEHb/ZXV/e6nQOYY/u8LJyaSn9yckaKUCjw6ccLVzP//Pt5PGu+S
AlZmykty2UykqmrZxxzD+pWW2ZPGunS4cNFq6XBPOojubssK4qNDhqiYmnQC
5q9XyZfXQiqQuzjT/ppVCsw2+GX/yWGiysTdPw0Z6ZB7uVL1tG0ZqCrpb7xX
mQ4iO9GtwcwyaEEHRaXy8PB76Ets6t8aNLN/PCIzKAV8ZTbqtvVUIBNLAQUW
L8aXLOqvLUUUdFez7lX9yRSw4WC14jwTPXh49kBwIh6sX5oG/umpQac1pMx7
HqfAVTVqSyiZhqx49nZYpqbD2UMxGUf0sPllZVCT9AAPe018C54U1KCJxm/2
lw+kwMrdYb56dwZasjMsHMLsr7mZSH/jX44az3Kd2M2VAidqE2XYrUx0w0yy
VedmOkwXSVlwd9PgV4ymr6hGCrw3LbjvQqtA9y7E326xxoNJEk0riFODeE2j
HS5ZpIPjnr7hIawfE2v8uFZ0KgXizMriJqXpiB1rkvfKKB2GWDc1LnBoUJ5A
UTqhlw5q8b0WL1JpcLN629ff/ilwS0V5Bb0vQR0a9Svn96VA1XlZGZ7KcpR0
zVzaSzsFnCObGnwc6ejuUIjuDU08GN1eN5aIvW/O29Hs4QE8XD/yIWLXcA26
EyxPc9mC9b8vcMcz3Mtgk/eECEkKD3SNvBE/Rg3qdrCNPCyZDlsoymMr2Pvu
5F7uSc/Fw4Biy1n0thJRdc9t+PH/+k03TFzG5iOB4HWyDjvxYCrThwsKr0HE
PHRDTwAPxSEDlg/ZNcgmULg16Fca3PSfdRxtLoM3OV7lpevwsHLjuk53XQ16
cVd1S+pKMpjTNGw8+2rQlMzEjg9LyXBfVC68qBrLlwcujQ5kPCjKx5d7Y3p8
xcioYORLMkTI/zCPxPqD3383JNiX4cE3ydU1M4aBEs+Na+Enk+HUOv9nlYs1
SO2v3qiGPx4M2TccvshUojevSw//5aTBnVDdEOaDMghrcRuce5oMkbGmExmz
NWjn5iuPLtngwcaRce3C8UqUFfDLMIeUBveinyT4lpVBkGO/f5wtHpbKjziu
TTNR83FnHwN8GogONnzp9yiDc9oPvYJOY+d7Gc6++yvRkfOfea/exMPL7dbW
fb0MJNZbllZtiIcJg22cvTsr0cvJ8/mZpcnAk6Ugcgbjv10ldaQkHQ9e9p6r
ry+Uo2MDMkKCqniQ2vDF4O0XJtIa1W3n5CfDYW3FjO7AGsT2j/sUI4mHlH5E
/ONWiQqsqGq/Q5JBWNTClUuZgxyy2r4Z4fBQ8ovklmtOQ+SYTB/mEzyw8vSX
q36WoMD3y674bXjY/WNV51cyE/FULDQse+Kh3OiryR4pOgrTtX2zF+HhUJe8
Ibm6AtkLK+yKFML4ZBFf0khkohqvpwtHj6WB32KQSmFPGfBEN1lOK+NhYebS
mNGnCpSZIMe8uR0PCSeeb3eNZaAHjeTTl16lAfv49bnO3iro8xXz3mWSDOkG
p4f9pTjoO8mZ2WCcDK9cvvIlr9WgI7f6H3hpJwPftkRjJRUOElByX73IlwYj
+gZ0WyEa7Fn92p4mjYdrpuuuSw+Vo6CelcpirB/4xuyKFmsqA7fRi4z4llS4
7nl34IYjDbYE7Nco4STD6VzbyDFfBjKnJv3K/pUEu4ZzX+3E7n/5fPcfrn9J
UDdav+dgcw2SliuYM2CkQsiHp7t2TZfBLNW90YuSCok2edtK1WnQ3fs0Dj+f
BJw43dfysTUov0+HYYb1m2TS/u38pxvgjmfBBaupZHCwWIx/G1qCnDYMfv9M
T4L4dw5Ob9/XoFceqVvfYf1Bn/IDefXTNFjV59pz8ylWX7bhn/hfYENDWlft
Rqzeqalz7RJNpAFO0LG+vScFhjoTmTrcNPA9yFGLkkkGGq9bd96OctTGfxTH
ezwZiroovyd9ylBTbWJUF1b/uvGMhokbNHivtD/yxIckmOsQfGiFzQunf3sc
V8Lq/962sMvqb6uAts34ihN3MiimKIzq765A5f58N11kk4AftBPO3MfmR7vg
T78bUuDIhaeb/ylj3+c1bldQSQYFv3z57xJPkCHd4KPWxyQwuzkVUmpdgS6/
2UL4yZcMXoKPfGTCaMh1RTtJgScJLCvy1MUecdCplRe+P7H+YunGuYxNW9ig
PC88OT+VBJeme2BFgYY6x1i7/jCTIGqf3fx/qhVI9FYn2b47CVR7OhiegTR0
vlk3MbMjCURKdWyFEA1FWVBkqSFJ8KTp0paOOwz0ahMxwdIgBd7kfTNhO9Eg
0PrcWysMh5CeCaiG0+B32zXuY4MpkGw/t1q/UgWdj08odFYngUW3RunUvyco
6x73kHtRErgHxPIMnKGhSrOgqnLNRPDM2pno85KDNFd8TLE/ocnG9/jBOg5a
0GnGBQqmwNJKcOHYbRrobNK1Zi7hQdk+J0/6Ag02UqQHhlKSYPGIeJXL5RI0
s7W1P/F9Ajzu2qhfjM37ueV/TmUP48EOVytxqh3r1+erO+U0k0DWvv9fs0QF
Oh1cFvjdLQUu719VjvJhQ4Fit+ytE9h67uWceDwd/aWf++aukQQfc7apcGvR
0Hr9Kwtzu5PgWIad+lXucmTi6qRzXS8FNMTct47wVUNAVtatbKUUmPxadosw
zQbPjiHLFxoJcPSe4/VfQRxUK2BF5HgmAvPK2ycXghgoQe7la8O1RFh7ESG0
IlqGPnY+/nx3EA89AfSgiX421OX2zixg+fhjg4e7ah0NAuRE+C7YJsJzzTgF
aToNbfGZfXSHgwe3pXD1md9seNTTFfLDPRGSbe6mu86XoJfb22ueaD6GbElX
GfSTgwzzm9leUwlweEha7I7ZExTy450o41YCBCi+wR/BlaOHxnu9MzF9mf3e
cNXMmQ3cYcofK/wxfQx/o1MZQYNH7mwLhggeuuttDghurQaOZmTF5EQydE7H
jBVLs4Fxv+1PJv4x7KOH3E11ZKCRU1I8SuPJcHeTrI1IMhv8Uy0MjBsew3zo
wbqY7eXo79bVem7+eCD8uS7wcY6DFNlqraex+jGTWM6tbMYG/b9Cj+zrMH0p
PvtSS6gami5lrQz2x8Geyxv6ro5wkOwv87W47jj4a7dbnoeXgx6NN9zqTcLu
1/Xpsv1TgnROqtYr3U8GDZuctr2DbNj9UGlysSQOPu+1kD40UoOyQ1NeFibG
gaHaw1PJSph/TmU4h6rEwe6hTV6EHxx0t11QM1w8GQQa+Tsy17Nhgwf3ismG
ZFgtj1+Yb6sCVYPbtuNcyRB4ul6HzmYDafSrQNPXJFh+3VcsO1EFsUSjuMm3
sbDD5fZKy1QNEvxycVd3ayykNOlq3BbmoP8qAxaXabEQdMTmwqoNB7U94+f3
wMfD7c1nRvHkEtSVzD4iR4oF747dxTYnML0Q8MZJmCZDQY3hIiupAXoDfjBy
zsfCupJwT8dRDiq90fTr8K1YSF0L63SW4aBxjy9mz4xjYckmr2nmIgdVFRW9
lxGJhT2XlO7mVHAQ3be/0m84Bpy4CSm3/DlICVHzjUpj4JmU0YfGw5g/vdK+
iJFiwI5hd9jIhINWRh3bcjJi4O+P0FtTEhxkd7piw/OAGAgS+UmUd+aglsfn
rQf0YiBuEpm5XapFewLHRGkWMfD+t5HKQXkOMm47k12oHgPX3rK4Pi1wkJqt
+vimXTFYv1B92BvHQUNU4WmmaAyMGBXomlhx0B+F2B6nL48g6N18u8lzDioq
1zyAv5QINx1EaYzoKnAZOqsW/+wRUD+aR6QMc1Dkk8fiPZGPoERvoyUnphbt
szVZvHfrEfAPzumJolp0le+su9PFRzDiIcd4IF+L8ix9fvGxE8HYTS56y6cG
eLC/6FsWZq93kl1TgB4DefVK61kaJULI7NVV9bIGcCncKNY7Eg0Syo01Xxo5
SP/slcb65ccwm34iHvSq4GFvUVdZSzQk8iaPlZdxUE3/tsX4N9HwbNtGWzRd
g0hcfFLUisewpdNNdfcVFqRV0SQZefFQ49rru76VBv+2ljoFbXkMr2a5PvKZ
scD+YkfdlQPRkHdun92vAA765cEUf7kQBdEK6sP8lbWo7E2GW9j6x5D8dpmX
RsPukzvxZexzPIxxra78k2cBaP4+sHMuHlxP9O629mPBf7skFAWVHoH0x+YV
/3UMZKM/X4vnjwaXp+ORVbJY/DbAc86GaCh/ucd391ANyrq/+VbvShTM/aqk
CQty0OvXVaceF0bB1guvzqu/rkUD/20OvRkTDwKWpqdtmllQa5qoHfskCg6E
Jc18odegX6YGJK34KJCLu5Hs5c1BfsbyIypFUUCvpX+NbKhByQaxe61TosD1
s+CfIGze+JzbHyPOGw8pTpmuesIs8PSfrS3RjII/drsI9UYcRGX0Nn/YEgXc
5/mYz1trkOPTS6xr81FwI3MdGsPeo3FlinivJxZs7wt5///8sbSoGG83HET+
k19pbKxBonPd30fP4SBvTrFAZKwGPUMh9dtWcPD6dPhssRIDhX2Ilxl+EQN9
DpLfmrVYQK3bSw9Swfan3mOa8zDRtTIJ2wgBHGSaRwJ7KxMxlXbV8x+JgVtZ
nzat28mC3YLK3Uf5cDCz872+8nwFehVNutpU+gi0GFPqR2+xwB/Xz9a0iYQr
NsP/zd9gIife8I5p30dgYh/+79s2FhjfuTa95BMJZiS17a2YPbAg+OvPpUdg
ubBvXWQxC+YPSXhc+hoNEftflb1PYsCf5frlg5+jQTWOx+h8GgMWN1UNjWL8
VF7fs54Yz4DkzGOqFRsiweA/QQtSABNtOpgmm/AiGs7OXN0olcuAvBja7f78
aOB7bqq9M4oBPpsCps7jouG6yCEGmZcBjLcxZ1LCo2HGMDWXuokBz36RbvM/
jobL3ppCKVkMUJZ96dwdFA3tNZ1n/VcrIGq/22GVwGjYmPbUyn0rA2jJg1WH
PLF80fsoQV+sgIiYe/s87kWDc4vis8FwBlhsNKWENYXDz727C+fGa9Ff+ULU
6xwNXnjDKPldDMgsqRnhvRANh3yfJuydrYCnmiNMsWvRUOCpJR6ayYCTlwc8
gmkR0DvguG7rTwZK+2EcrJsSAW/vN/pfSmWixPofz1aMowEIW8bEFBhwg0ao
0XGIgJnNv3apS7FQ4PTBeW/NaJj3i02kfa4AXdxb64D4CAhsTuBNFWeiou+6
QmSlaLj1ZXsjYawCvPSKrfy0o6F5h7gqH/b+wbARFSeFaHANWUl6ocIAwi/t
d+U7o+Hnq0cB7IEK2LS28tddNBpq7fO29wcwQEjfeOnYchQ8khbA9fdUAE/6
q40z3NGw5/BEeKA6A5K8elwTBaPBA53rZaQz4G+8T6qmVwTwXyxZeWjOQLEj
b5d+f4uCuh1zgb7HGfB8qalQenME+C/Y9R8SZCE3zb/aBePYej7WRPkw4ArP
/uzGISw/ymZl95gyYCB8/rP42yjYe0vjqW0KA1hZMw9DnkeBbiRJtPIWA9ai
SZfzWqNg20jEIXcHBnzGV0NvSxSkH3x7+dx1BqQqelHyd0aA4pn00Q5fJnIN
Oz3Gmx8FQ36pswmNFfBl6ntEqUAEjOsfsZ+0Z6L/3t16eJEcBbt/NZ1uTWTA
K/aenep3o2B9gBc7oaICQMOPVucaBcTWQwyb4goYmMm5LHsTWz9lNHu1qAKC
P9/elOAcBQ57j3rbPWZA+4TPPvdTUVAh9ZSjQ6mA38VTh85Mh8HZD+Xp2jm1
6JjW0dkUpShoFhedEiitAENKBJNbJwpe8nAOjWHn1d4f9D37IRwKp06InL1W
jm7dEibf4YuCgG6hE/swexZHacd1NkWBARt9isAz4HZd67mxoHDAH+Tr99Jm
IpzJ3s65Xzjo1vjwlTuDAbiJljatXhzsnyl9+LOqAsyj3FWF3+GgpvSkZWJf
BWjy6X++8xkHKmHnLxOwfJtIyW14KRkOObxu3pc2VaG9K8Gi7fvDgUL+kXbl
IAvlnf5XeLgYB7dfaHC5aJaD8a5JOeNaHMTr5AhuHKyAHIdhl7FqHLzP3bTv
Asaf3bzNIdklOPDLa0oera8ANcnDlqoPcdAjhXNdm6QDIbjBL8cuDMzrJt9+
Lq9FNi0zX93TcCDblNLu24n5h39PwlI+DrIOUfcczWfAVoOo/JBYHIjbXow4
PFIBHp9jVSu/hQGuf1v/lC4L+XfbyK4/FQZlFTlHNR/Uol2v0qo07+GwfPTh
9WqvgPd3zXtfHA2DzAU/nmNFtejwvaYKVVccGMrnZtG5GdDx6E4L0SwcRg82
7iZsKUcWdZdqNG/gYJVH0iNuIwOGdP0c9bZj/rg8ey3Tm4EkKaIK2w+Egbw9
V7hhQS16MaN/XsABB88ExiUMPlRA5r3PbnJsHBDDn9upc1XBjsIzB41tcbD3
isChB5sZYJQeL7BJJBwcnVnu2dcYqDPv7ofzl3Dw8hizSjaHAe81SSJHT+Mg
bY+07S1xjJ+cZyd9jXEQ9fSridVKBRjjuSLSTuBAWeXBk8nJCnir/yJsx+cw
eLzfgOSJ6b9QThSBiwvj30kbie7mWrSSL6OTJYeDd34zJqWY3oml6q1m5IfB
LtelKyE7WChI5YrhAWy95Y140/cdDNDlEQnRDQ2DGf/6LrlfLGQg92nIaRsO
xknUPbFzFRBXGT30aQcO/lMKXXLG9KZVvPC4+XIk3DXr9xXzqoDX/3Vk2+HC
wN7Rbe7mYSz/yfYuxnORYMQnsV5AhgF8Nf3sa3jsfiGjnjvARKY1H0+M+IdB
Lkf7VkFbJVKPux+Y8i0Soo8v3p3D9Mb6185CXszeGtp2n2Z/BlIJMHk55hoG
fakPWs8+qETE3ktbv5ZGYvOmVzg+vhwMojM36rVHAnr8jv55DwNWul5ODsSF
gYRv3531sgx0ydxDsvVJJNhUudVdwfQx3pEyUkyMhJPvW0ydMf3pKbq4K/FG
JCwJPvIwDikH66ofOiKxkVA+5zBujNWjdbtPMXtCIoH+/O5n02AGEDv3Gtqa
Y3y4xiovt2SgtvXFP/j8I2FaoFol6TBWD+y4Og7bRUJYxn2Gkl4FCGb52hKn
Q+Fv6BWrHEUWMpkJ3CdyJhSOzOb94TypRcJnRV40LYTCxCOli+tOVqLNq0e+
XjOKBONho40tNph9QlKNUoaR4CO6bDp/nwH/cZ+sVf0cCosDhc1fCyoRosQQ
Ok+EAY+DmPzWG+Xod/Px/+4Lh0HLoOkXowwGOjIZ+XOuJxQ+5rf5x2Lx7xwu
6q9ViYS2H7XNkroM0NDtU5jfFwl98yJ+fWpYPRbounRyfyQUlJ8fr7dgQPO3
39cWMf7f+dNb7oIvR5VHWL8uj4aCf/NhlQssJkqN7lU2FY+EwR0+DtQrDBBm
Jv0aEI2Ery1VBvSTDHC+Hetr+SUU6pW4nPJnGGj2gvTa6H+h4CZLTzcrZqJ/
77q0DUTCgDX2otHGoxwR7Fc/uHBHwtNEd8JX7L3DB2T2rS5HwEp6XwbOhQFS
3st/3y5FAI3i4Ozsy4C70uI/9H9EwJcDgZFEEwaIFws99fscAY7BG8o0PRiw
sM1nwuZlKFzwCJGyNWAgYYvgUZPKUNCIPheVsJOJiINFKTbEUFjK9fghXMpE
urP3zwkHhELA4TwdbqNKNND9xvO2G7Z/ifPG/kYlchVi/6wIj4DWVV7ch7fl
YJsU6W1xNRQE9u0u979YiY77tf09ahUBHgI7WgIFKwAnkjRT6B4KEsJDLfU2
DLSD2Mz4Zh4K8oeIW0LWsPm7uoiwticCOl7uNyZUlMOM7cpFp9oQoBSa7Kf+
YaFPumpzzY9C4EkdoXVMuApVJTOHa/lD4VKh2PlHDxko/OnCNffkECwfBMvu
YvpYMe/s3IDth6qESx+UWUjJHPdcvTccEnGj9X57KsCvusFx35sQ+N5/P+b9
Rix+6Vc9dbB1/31vGFZYPgDv6rdGkWDYk3x8V+3vWrQQu3rggmIIGKf7OckO
M9GdNCe1LKMQWN/SZcQ1zUB8g18WVT8Hw/wN2bmOuUp02B6nY7QtBDL5kxXY
jUxU6lOw6LYWDPxHrtoobWKin7z7iFxWISA0n76Aw+KdEf897ChPCPx9JnDv
gisDZWyLK5UqCoawif5X+7cw0SGpT9SJy+GgLbLjeyhfFUwaKLZL92Df671i
uONeOTpRWq410xgML4kncxyOlKPPaVTJeXYwdFZYSyinlyNyfUmLIj0YGNzy
PBt8ypGIe0jXdb1gEIzVyFfkZSJ19j6BpzMPQaD2NW74dyU6tfthk9naQ4jM
v7P/6xoTbaYPDnTdDQY/QzFNdnw5cmN83zxhFwxxfznv1gVi93Ov6B91DoPn
d9/gqr/RYeTiuR+x8g/hje86XrsrLPTzTjd5pi0M+l8pt+u8ZMEC6e+H/1Fs
3fFUv21YOxmJFCJkZoZEyI3sEbL33ntk7733yCoplX3OcY7NY5TQkISMnxEi
Ixoo8z3vH/54Ps/X+T7PdV/3dV/X8eH6LhS1aD8WWYyqA0kX41OaP0LQETdl
heAQHsx5Lu5Y2YWi9eXqh++HsKCMG6IJsgpFtx5HW4wT+ROQwTcXvxqCni0+
p4gWwkOET8Lmw68hyHB+3eERKx5aQu4kn1kIQfwlw8NFQ8T7/Ag4c5s6Er2f
pOGayatFuaf7mILVQ9HuVhmjKb4O9tvQL9eXIYix/dELkv/qQUaaK/7mcghq
+vZkrP86Fv7q5o2kV4YgHHMUzwLg4MqFa7wEuRBUdO7sF5cKPCQm3MgUaQ1B
XNSZCVdSscCc65pzQYb4+5Pf19Q08JDD53cQkxaCsLLWdi1vifP00p25hIQQ
pEjxcJ/mFhY+kdknvh8IRlTajTI/jfHQZiX+9q1vCLLifCBfNl0Hu8oXr1Dd
CkGWOw1KvjFYEPR7BNM9wciddzOj5g4eHvMHKXhZhqBryz6vTx/DgDStne0s
ewjKItl0K4nCgq9Mop8QaQg6kUc2uVqChZH/lnc7if3M+D2629imFgXPsO8r
TwWjg6MXjbLTWBiyWS2Ytg1CwmetuSNIWyHhnl9iRGsEMhtS2cr/iEdeZte2
LjUEI1om8pS7EcT+HandflkejDi/jCQTArCwFnvUGfIwGGUU3WA2GSTyOTny
x/PCYCTG4Zso7YuFkjqcBKVAMBIsEGK8GFEPjzK6X768GIyGztWyVRPqYaCr
Pd9PLxjp3gpjfPwXA0aL/14bSgejkAtrpx+5YAFuWk+KMQYjui+npc5PYuG4
Ee00nj4Y8bAzz0ytYqGh3yEZEYKQH+toWVocHtgVkmgU+gNR7NSfCckbzVC5
FlAstBuGhPUDF9Xe16If2MCtYGK/fJtZeCftV4u0s1zG35QGoskKkPGfwsPE
an5VNHFeMZw/c7VmuAM9dDJcLqgLRMYtyQeKo/Ww7TOi+dgnDLUIDIEWthZl
cGdPmSwGIgl2mZLKbOJ5j9EPgFsg8vA0j0rtqodRqc9BhkT9ErhWrqVGipA0
00PvrsJAlN0aJTVtiQVamZzZ8ehA5Fx6RLNTR8QrmMQoSJXY350fWuLfYtHB
Y7PIHvJAtJf4vHjKCA/ur+94ClgHorSDp/yGz7EQrxJ+Pyc5EB1NLrnyHNZC
hZwQ/uB3ACr4EZR5+2E98EwbOvnLBKK2CpZ8g34M0J8vx1PuBqD2rNDCjkdY
sCh41RT+xB+pEQrzlY9agGD8sHGbNBwJzMGVve4ONLKz+db7bDjiS7vsrPS7
A/FHaEjT5wag5kT1r6RVxPzXtvSfpUcAYv8u3a/fgYWNiR/NsecCkElArtV1
Yr94tE2J1c/6o0+t+yG99QQoyvk98nDdH0maXvJo48FD3cqozcklf+Qd9bAn
+Vg9BN/q4Sh0CEFPTH80bJ3CIenA82c7qEIQGUs8x9u9WmRifkJqTycEkX5g
uCH4CYsK+b/Lfk72R/OOPu8vbBP16+r5rtowf1T2ViPY1bgenmQmL34m9geP
r3XcV1YcYnXy3Xld6I/kI+J7Bg6I+NsJvcw5GYI8o1WbW18R8y9f+c1NO3/U
zLmrLUtRD1dcpey0DP3Qr4Xa7usXWuH08txCXX0wqm62VxAYrkVtAcxX2L39
0evTOujfEywkUva6KbkFIzblP+t981jkIdrMNjzjh0pLki3/ytQDaWyhIVea
H2r+eMW/CRGAg/K+tzelP3JdH9ho8MMCiSH1r5/VxPdZLWWE2dZDThK3bnmt
H7LyKSyDfRyk6teofqQLRk26I1a3H+FRj4AP14WXfujitfdDuUMY4PjCN12T
6YeCkO+r/R0M8J7oCKkdfoC0deTrLIh+V/zcmTce7wKR2MRTz/x/tegaf9X1
o/VA9F8E9oNXDR4ZkIhvDBU+QM5QyPCfKAYEUm99fu/5ACnUZylnE+eV7YHo
xegQX3Q7gG3WTLYZbEoCMZ9OP0B2Z5X2ijjxcOddabGP7wNEXndLl10LA1Va
tnLMHL7INNNQaulkK1CHBB2ztn+AzrX/miIVwsBAy/P7AxYPkIb3RlWpEwZ0
0u9JD275oi6CzHyYMwaG0bnujPoA5Fp0E3+5FI/CZM8XjbMGIEG26IvxxPmj
XVXZ8bLIF7m551+hX8AAmVUD6rD0Rcd/NnsZEfVhjN4UNzbmjzjdZ8otKOsQ
zRMTegqVQHTc/Jm/8CWEAg73q4ye+qCU8KvhcXgCNLhitp8H+CBWsecN2+8I
kP7v7s5ZI3/Ub0TT/mmwFiWQSZ5eafNB5mYfxhJ9MRAoweK6FO6DTn35IfQm
EQOnEs0tngR6ox+3x53PyzXDll5Uxnl6H7Srxs3Y+ZHoD1KfKu4a+aFU/CpF
s0gdCjZ8e99wwht53iMc7L7GweyCP2tglx9SCj4Td78Lj/LGb4ZOf/RGCiy6
d55giXlC53fZ3w4/9N1kdDSVgoCsfr16u8RIfF5N8uOMdR36eFtkNOKDN0q8
Efr2FGBBOp92kMPUG9nccPL6xEyAyqvvRSq1vNGYecBH3TQCnF3pH72m7Y3E
647y/JtxkFZ8UbbfwAsNx19hnuFshccdmxIPnL1RV4HSt8emGCCo5NuWYb3Q
Bl3IBC6WAKp//pAK4ryQUvgl5W/qBGhUPvWs2O8BSsj8MeWtjkP6P0mu3zny
RMNGcsnG7s1QxlrMaavjhTrqz6uXlRLgRltAsmiLF0qYkuG2a6kDR72t8VJ2
L9T+DykM7eFhOj+cW8DBC3n/d7yk2g4DVMcWvdMsvVDoXdq6eEcMsBwJkjpO
+SD1+ZFjHqZ1aFqPkyl80BMliNRhS7OwYHSc/28FmS+K6+PiMOPEo0MapiP9
HB8kk7k6XZ9eh/g0p+3v1HigA51sDxrXZniKvYx9tumDeqd4LNQ1Cag9DdAA
iydi7dX0lU8mwIW1C91nLDyRx/H0gbcvcHB19URIX5QPevKhEN+7UY/oHLdv
fYvxQfZCB4zU9nhU2VzG8Ya4TmEKOiEkQECHrNPzb1Q8UM/VCtPhAAKoBUte
zTzhi4JbeGV7WBEy5WxbCK3zRhIzh/dJz2CQ+/1PjemZHmhJbXrH4T4W5vLb
7tnTeSCt6XhbZ1Ec2Mx1B+qUuqPZXX6DDSeiP2ijdjZiJK6leK1XhgjwZLr2
k6iDG/rNR/EplIj/86+BvJ8O3NBkmGPkT2ECtP+XO/bF3R0FNeYVUxjhAOU8
owvf9EINj39sfryIQY9I3ZlTfrgi15Y1pWvWzRCSni4kWeyF/EVyxHNe1KHA
RBLt3Tg3ZPdtObpfFwdvV1LCkKsXYnXb+dh8WId4KiQ5M2290PW04FYaZQza
mcEJqbN6of7s5LK82TqE52omv63uhSS3RzNvdtWjq5EUhQeXvRAv98SFXxk4
JNDI1VMh44K0TZ4t2EU1Qx+ZqdAcqRdS741Psn1aj0TTDoUr+V1Q7778dAfx
fmvkbdlFx12R+3EUOtKIg5vmOPHkL56IU23th+wcHj3ueeShQ+QHfbm63Hmi
P42x8KjJNfJEqpWRX9yFMYgu3pK+j8wFqXwu6ZPpJkAqDW/KTRdn5JpvfHcn
uhmWr2dFnKZ2Rh1MfimOCc3QLp5zpU7UBbGdVsq0Y6+DzM2YvS90nqjJO99R
nFj/It89hqYqZ7TubPTHRhEHS4HbjCO/nNGga6BjS14N1JGxbOiLOyOSKMrg
G+k4oOXsNM156YT0Vp8FPnlPAPELp82MtD0QzfqXeUIZHmkfd0c3bjuh878d
KZeI8/Ri7VV/2XBHlBW+pcGc0gwvl16SP3d2R4kEix++WgT0oOB0oUKUK4Is
53dXJf7///pyG8zz9qjXKMzuRkgzMFOvOJzhc0V5JrzFMuUYZOK11fkn2xXd
IFWKkc3Ho3i/+rgMN1cktD2kMx+KR02drPAt0wW5byxvVaRjkPBs3EH0nh0a
v0VI1elpgRtLEoeHM/ao5iCMJtALB0MVGRuSRS7obXRYowoXAemaKF0Ut7FH
bdjbH3LC8RC3fLXuS7czqo994iTO+P/vD/wuyZrZoUb+W2Y/A5phjos0wTXX
Hg2NRNU8aauB8fVJed5EOySAI3Fh8cWDDGYo0C7EDvmJRaiwJODhczPFSTch
O+TT08z+5BMBemhJLrbaOKHFE2xnnzhikMMz3H51ry26w6fhk19CgN+d5i/V
5O3QqxfGd2CuFjjrBJTu59sijRdfDd+2YSGiRMY4ic0WTR3bVSMhEMDqyHkw
rNEGxZ82O33NqhmEK6YUYwttELmEEO+0ZxPUF80/yVS0RVQ8CcOO14j5kZav
eXTEAVnsfCrCB2JQBfeLLPertmiO75r/M1UcGNlVnudKtUGfbRne5Gw0wB1O
0vyENge0FcgjKsyHQUZKnGXvVqyRRoJYGit5I3zDv3jR1W2N5vbTWs+FNAGB
/sv26U5rNCbFdDbwbwNYvnlIahBtjRYCKb6HvW+CTwFy+E8L9mjxEt9Lpex6
pOSl5homY41OBmPnFIl8mchLKo2jtUcKymL0q0T8g00udpJ9tUZUzZNOm+G1
sPi8KezjqhUKihf/ry+7CcS5hwSHzlqjKvq/vJpnGiFj5r5vepA1InskWpql
jQNWpvidNk9rNDzZIP3wFnHNpmll1WKFyphNo573NMEk0Iky19qh3EfSvBUV
GGR7PrM1ftgOfZI46yrpjUM2nfHnpR7ZoWapwT6zmxg0LPqFlLnQCv1b1p2h
J95vdqikL8jLCk3383UUJjaBpRGXVPRtK/SH9pI/LXcjLBsPLvlz2KMEl1bJ
smGErqHGoONLtkhkssqUK7IeyVieN5J/aosG9RpEA3lwaLL5VkpqvCV6mvU1
gnS1CVqpHhI282xREE2UxenOeuQeLlJJb2WJosp+zJl1NEDOfjQPE7clMnTS
oz6m0QB2awHt7to2SCwoYVLxYT0ySFhM57tngeQIru+0NglgefQc765njg6L
UjdVfRuAtu5IYLHWDL3b1tfPvdECT8+/daRRNUev5ZNGx7ga4GZO2rltFzP0
d5cp/WJqA+wyWV/N6jRFTONDz/BRLXDIkxDJKGOKkP4/bhSAh3u7FV/Xx0zQ
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
X9bSJ4qPMOBrduuSrgj/A18Iz3E=
               "], {
                PolygonBox[{CompressedData["
1:eJwl1n1wyHUcB/AfxhBtxgg3TzfL887CDPMcYyh5qCmmUSJ5qiOPYaQLx1hq
MtZu7EolKXTOMdFlLjWnoZhniaOQRQu9XH+87ve9+36/d5/73u/7eX8bp01+
ZlK5IAgGlQ+C/IggKOYeDWsGQR2GkM4ejnGFMsJqBUEyMZFBMJQQoojgVWYz
meUU0Ld2EIwgl0M0qGMdC1jM+2zhAD9QwjkuE/JYEETSmra04QmeZCDDeZHR
jCON8aSzlNVkk8tGvmQXeyjgAIUc5DBH+YVr3OIO/xLUDYIKVKMGjYinO73o
x1MM5GmGkkIqY0njJaaTzmo28xmfkM8GNpJDHtvYx0EOUcQpznOWK1ynYr0g
iCWBFJJoTRp96MpQhjGRF+hMd6JoSAzNaEs0vRlET5qTSHuSGcxoZjOPj9lC
LrvYw6d8xVbyyGI+Y3iWBrShA30ZwhReZzLTWMIqstnEfgo5yRkuc5UbD2ur
r35iiKUprYkijiQSSKYLIxlMXxJ5nI60IJ6WdKIVbWlONA2oRU2qUJWAO2q4
RRm/c52zlHCO81ziAje5zX3uUdn+alQglIqU44G5P/mNn9nHDr5mIyuZysvE
04QwQqlEqX/jCLvZyjrWkk0ma1hBBstZxnxmMYMJPEd/kuhJDzrTimiiiCSM
Rwil1H25zTkuUsJpznKGYk5xhB85yXF+Yh/fsJM8cshiPZksYgHTmcoI+tKF
ODoQSwzRNKAe4YQRygN9pZTrnOQIRXzPfgo5SjEH2cs2vuAjPmAVS1hIBsvJ
5G2WMZdZzGQGk0gglijqU4tKVKU8odzRHy9RRAFLeJNURjKA3nShPR0YxRjG
M5FppDOTKbzBK0xnIYtYwQayyWct68jgPbJYRiZrWMw83mIOExjL86TQj24k
MZhEOtOV7nSkHY9yXyZc4zSF7GYnWaSTynDGkUJ/mtKLPiRSIn8K+Y53WUQa
KURTk8pUIYSbcusURZzgV76lgB1sZwtZ5JPHPKYygGQG0o3uxNGORDoRT2Pq
PsxHqnNNlp7nODvI4XNWsp4M1pDHZlbzDquYw2skEEEkzWhEZ+JoST3CKc+d
GnoQV/mbu9zmLCUc5iB72c9utrKRdcxnMQuYQirDuBTuLlPNuAYJtKMD3ahN
CEesOUoxJzjFRa5xmQuUcJ4r/EUZ5e297/sPf3CDUu4SmKtEdcKIpDGNiKE1
TahHU1rShla0oD41iSCcHiwll2zy+ZAcjlFGJ2fZgzGMYipzWc4ytrMp4v83
038qOVIP
                  "], CompressedData["
1:eJwV0klIFkAYBuAx1/z/UlLTyFJRzA6aYpcOUoeETgWCEAotph5EVMgl6lQd
OgiSBdkCmRS0QB0i8CRZJCYpBXkoqJtK0EJC5m49/+Fhvm9gmI93pqChvaYt
LoQwTlEkhEKqOUQZpeSRTyIJFLOHn6khfOU36+ywV8ERjnOCRlropocbPOUj
v5hniUg0hN3so56TXOQJLxhmlDFmWWCFZf6xyl/+sMGmLWZlSb3GOkn6eFKI
kEYGOWSTRSYFlHKMJuo4RRf1dHCGHs7STSsXOE87B9lLHqnEsWiGOb4wzWcm
+cB7JnjDa57xiMfc5yGDDHGLPnq5wjkucZkuOmnmNB3UUkYN2VRzmEy2sZMU
kmNZeosQy9a6TJI6SkIsQ/0a8bF8yWEz+WSxiwzSqOIAW8llOz+c/cYEQwxQ
x1Gq2E8JUdJJZsO/mmOWFVb5xDRTvGSEB1yln3HeMsoYzxnkHgPc5ho3uc4d
7vKKd8zwnVz3V1LOf1mRabQ=
                  "], CompressedData["
1:eJwV01toj2EcB/BnszmOXMiV01izFlKkhNFsiGJpZrY5bI7RDH8XWttqjIs5
bUwOc5oWtSYjKUlOk8OIhPC/omGFDSlC+Lj4vN+r93ne3/N838SikvnrY0II
SR5lfUKIkMYonvUOoYndrGYzxcxkBstYTzXH2EkDLZziJo95wlee08e6XfIW
rdQxm0xi+NkrhLtUMZzTPa3NBbYzgSFEe4TwjXYu0UAFqXR0D6GEbHZRQw7p
/I0PoZMuNlLAFjaxkAzSyWIeqaTwPM4sdHKRNDq6mY1GDlDDCvLIp5A5JPMi
NoT7nOMsZ2hkH/WUs4kIG9nAZopZyQqWsZylLKaQRSwhjwJyyGc+E5nENCaT
xhSmMp0MMplBFtnkUsRq1rCKtayjhL3UspsrPCLKE+LMOZVZRGhmsHPKIsJW
6mmgjQfsZw+lXCbKaw5TSTWtjHAHCzjBO37zg0p3+orPtNHOAbZRSykFrKKO
jzTxkhZy9eUziTqVQxEP6ad732U3mcIOmjnKeWJ1dQAZfGKkXicTRzzDGMpo
xjCNTEaQxFjGMYgP3m+njRscp579HGIfRzjISU5wgdtc5y53qKWGRq5yjYc8
5QW//v9fvOUdf+hh//4kkMJ4pjCXPA7SwD06+MjABN9NP3LJo5pSrnKfLyT0
DeGNDPK9jHKcMm5QRznFVFFBf47Yo5x/Hwye7Q==
                  "], CompressedData["
1:eJwl1XtMUFUYAPALOTU1eUweKtpgkK50GRSuKA0bE53TZX9I1FpYK9PN1yJb
pcNHNd/ZnBiFg6aU9lgJaFQEUTpqiYHIoxBUBDGaMVMMZ7Mf64/f/XbOPds5
3/nuPSd+8YqFy0OCIKj22BsTBMV8QSnV/EQTjfzMj9RSTwNtXKafWwyLDYIw
whnHRBK5i3tJJZmHmU02q3iF9WxiN/t4jyL28xUV1PArLbRxkgbO0MRZztFB
O12c5xr9DBsbBCMJI4oJJDKFNNKZRSZzyWIpa3iNPLaxnV3sZA+7KaSAD/iS
ShroZ+g4cxNGAtN5gVW8wwHKOUoNp7lIH7cIGR8Eo4kkhnjSmMOL7OQg5Ryj
lT6GxgXBKMKZwkM8yixmM49c8thIMZ/RTA+9dNNJCyc5xnG+p4oyvqaUcj6m
hEJeZikryeEpnmQh85lLJuk8wkzuI5EkkkkhjghGcENeV+iihXrqqKaKM3Rw
iV4ucJ4e2mmkiVo+oZgiCthHIbt4l+28xTbeZCtrWcxzLGAm/WrUxU2GaI9l
PLHEEU0EYVw35i86qOQwm1jPq+SSQzKjBmvPn76hCzRzitN00MZVrjDcuDHE
kMIkAtq9a+UEtVRwlDJK+JB8trKZDSzjJRaRwQymcQ9TSSKaeCK5gxGEMoQB
/9oN+rhMM6fooZdLtNJNJ99SyRHyeZ/VrCGPdSxiGUuYQyaPcT+TiCOC4YRy
03n0LwP8w2h9kUzmTm4fXKP+a/TRTAVH+IgDHKSIAl7nGbLI4G6SmEwCiUQN
zkNvtLw5yzl+p4U6fqCUwxSxhc2sZQVPsIAMHmQqiYTTGeVMoYlDfEo+e3ib
LeSxgeU8z0rm8zhPk0UK0xjJaC6OsX/iA8xgKqnksIRs1rGXbyijkRbqqOdv
rtLNb5zgF0qo4Q96GCBULhOZQCwJTCedZ8khl63sYD/FHOJzvqOK47TRz3VC
Busp3ibGEE8qacwjk2xW8wYb2RHz/933H27WFlU=
                  "], CompressedData["
1:eJwV1GlsTlkABuCvGQzG1qKIXexFfWgZUyWl2iKWhkZb+9pa2tFOMUgl+IGK
vSmxRmZiiVCxpLEmGoQgFamQimDsxL7NMGYeP57z5p689+Tm5JzbclJ2clZI
IBDINyyoEwgsp5DN7KKUT7ylWWggEEN1ehLJJDJIJ4k8ppJGO7567yhb2Mpx
KrjKTnZzmWP8qN+e1gQZSH+S6UYjoujOTzShKvE055w1SviPe1Q291w2kH0Y
QwqZ5FPEFFLpTQh39X+RSyimgjLecIOnPKCcW1xjE3s5Symv+CHMN1KTlrSm
OQkMIp6hJDKYAXQkhi5E0YlYZpBDNgv5nV38yWFOs4V9HKSQAopYxizy2cFF
SinmDOVc5iEhde0nAd56riHr0ZgIYoglkXiiCdKeMv3VzGUmU5jIWNJIpRd9
6MxI2tKDSOJIYQxZ5JFLJm0IpRLf7O177nOBxRzlJq+/nzcq69WiMUEyGEYS
Q0gnnOu6JfzBenKIoyHvnIMXlPOSx/zLIVaxjLlkMY/5/EoeuSwin9nksJQ1
bGAl69hEERtZzVoWU8AKspnBTKYxiwmMZzSjSGUyE5lOJnPIYCppjGAkCQTp
Rhui6UsLalGFqnyp7S7K+tQmjL/N3aeCI5zkCo95xEue85Gn3OYhf3GH61zi
PMXkMZ10khlHNLH0pTMx9KQrTQmjPjUIJZy6NKEhgxhLBrn8xjB+pjeJDCaJ
/vRiAFFE0oNOdKALbWlHCxpQj2ZE0IpqBBnNeBIYTjxxDCGVaaSwlAJOcJd/
eMU7XvCBN3wm5Pu/V5ZxnP0cZDfbOcw29nCAvZRwkVOc4RtPeM8zKlmzJk2J
oB9D+R++V8bK
                  "], CompressedData["
1:eJwV0jtI1mEUB+DXIboulVYWFDaYtWUXsCLqgwIHQdRQjLBEiuwGOkhUKIlD
EJgEJTaYQxJUdrXUQiyyDL/MNAsRqYyWRLoXYYXPf3g4532nwzm/lOIjOYcT
QghxviWG8JZxXvCIPuLMSgphBYv46p2oLue//hktnGM/aRylhDw2solcythD
BpmsI5lVrGQtc/k8P4Qxeumik2YauckdWmjiInspp5LznOEsNVRQxm5KqOIE
+4hxiIPsoohs1rCdAk5RRwPXaOU2HfQRp5tBJvjND9q4RTv9/GR6tDsKKSKH
LNaTTiopbGYLG1jGwugGLCHGDrZRwFIWs5NS8jlABcc4SS3VVFLHZa5zg3ou
cIUeHtDLc17Rz2uGeUwbzVylnXt00cEg93nIAEN84BOjTDDGH77zL7o173jJ
CE+5y2mOUxVlQ9ZKGSZpgR2rH5nkLzP9zSGBeUxjNjP4EmWWUd7wniEauUQ+
6cRYzVYa6OQJ3dRSTDK/zDPJFEDZgTs=
                  "], CompressedData["
1:eJwN0L0rBAAcBuAfGWRzN+iEKN1FlInt/gPlYz5xA4tYDHczdZGycgOD5YRF
MXDqxksmi8FASih3PgYrz/DU+05vvQP51ZmVlojIMZyMGCRBMxFRo8I6BdZY
YpwhJsjQTqMz4pcfuvQO/uQXbrjjljr7lDnhkAoHHFNghyIl5lhgmg2y5Fhm
kW32uKBJym4vfUwxSZ5Z5ilxzyXnVDniml02KbPFKVecUeeDdx545JtnPvni
lSfe6PFhG630M8IYo6TpJsM/Was5aw==
                  "], {4974, 4982, 4980, 5004, 5036, 5064, 5071, 5093, 5096, 
                  5131, 5118, 5125, 5132, 5144, 5138, 5192, 5196, 5216, 5212, 
                  5253, 5259, 5230, 5235, 5222, 5257, 5242, 5249, 5224, 5185, 
                  5181, 5176, 5154, 5117, 5120, 5092, 5112, 5105, 5060, 5029, 
                  4945, 4937, 4942, 4949, 4943, 4958, 4961, 4956, 4965, 4985, 
                  4963, 4954, 4950, 4951}, {5267, 5262, 5269, 5256, 5214, 
                  5231, 5223, 5199, 5201, 5187, 5198, 5168, 5200, 5229, 5236, 
                  5274, 5284, 5285, 5299, 5309, 5377, 5406, 5340, 5301, 5297, 
                  5300, 5283, 5280, 5261, 5266, 5277}, {4532, 4522, 4489, 
                  4475, 4471, 4468, 4462, 4459, 4463, 4455, 4486, 4518, 4497, 
                  4493, 4501, 4490, 4502, 4470, 4476, 4465, 4477, 4420, 4408, 
                  4432, 4423, 4426, 4416, 4400, 4451, 4513, 4543, 4575, 4588, 
                  4559}, {4931, 4921, 4910, 4888, 4875, 4862, 4870, 4860, 
                  4833, 4855, 4863, 4867, 4885, 4883, 4874, 4869, 4894, 4905, 
                  4911, 4923, 4932, 4935}, {6399, 6391, 6313, 6284, 6294, 
                  6296, 6315, 6316, 6321, 6334, 6349, 6353, 6380, 6405, 6406, 
                  6397}, {5475, 5423, 5392, 5382, 5397, 5364, 5379, 5367, 
                  5372, 5395, 5375, 5416, 5409, 5434, 5484, 5477, 5489, 5452, 
                  5472, 5500, 5607, 5622, 5609, 5523}, {4710, 4727, 4737, 
                  4735, 4756, 4788, 4765, 4771, 4806, 4769, 4742, 4690, 
                  4643}, {4853, 4871, 4873, 4852, 4854, 4842, 4817, 4810, 
                  4811, 4829, 4836, 4828, 4813, 4804, 4825, 4830, 4857, 
                  4838}, {3968, 3970, 3988, 4000, 3984, 4002, 4023, 4025, 
                  3995, 3976, 3949, 3954}, {4819, 4851, 4859, 4843, 4858, 
                  4880, 4878, 4820, 4826, 4818, 4807, 4814, 4801}, {5672, 
                  5667, 5671, 5639, 5611, 5600, 5645, 5647, 5649, 5658, 5654, 
                  5664, 5670}, CompressedData["
1:eJwV13W0FkUYB+ClpBsu3d3d3d3dCEgLSkpzQSkJaZEWRaX70t3dSIvSeQEJ
EdDn/vGc3Z1vzpzZmW9/726GDr0b9ooUBMGfUYLgVLwgOMQNHnKLO6xjFg2o
T2ZyUpaYFKMSfWlPWy7GNR7bWcVVMmqvzAAmMJYZNKYKLcnDC32f0tB5V7rR
jDa0ohqFyEZKskbMVf+bPOER0bRF55rzuzxjC/1IEdE3ThDMZyXLucA+yvMm
dhDUow9dmU5K7bGoTTqGcEv7C+7R3nUKDlPY+KmpRNqI+6YT61hNGAfZTSRz
TEg5SlCbpvSmI0nJTRGKUo+qjGcqM5nGIhaznX1sYzcHOc4RTnCaYxzlMic5
z9WIPeMS93nC44i94CUfiRs/CFJRnn9dvyacm5zlMDtZQR96kY/IvHGvJ9jI
JFYwlES8s2avuMMBdhPGBpYRSjtakY+0xOatdX/OU86xklkMZADd6URbmlOd
AqTgQyxz5zpPqEwSIrM2ZhDMYwVjyE4U3sQIgniOJxw70JQMhEc3Pms+saYs
4zEz6ExrBjOV0czkNscI5wqhvI0WBO+5y0KakIn9UT0vhDKHW1xlC4OZzHSO
c4zFzGUUfalPGlZ4xvtSnXJE5WxkY3GKbUxiKlPoTQ+605mudKEDzWlMfapS
hcpUohxlKEtpylOKEhSjKIUoQH7ykIXMZCMHGUlLOlKRgpRkIDtZSU8aMpGL
vOQmNSEkISHxiUdcYhGT6ETjP+H3kQ+84W9e8IwnPOIxT3nJa/7hHa8I5yEP
uMcd/uIWN7nBFc5wjIPsYy+72cYGVrGUxfzGMn5lDhP5jqmMoR+d6UBjSpKb
LGQkDclJRBxiEZt4JCEdGchMVrKRl9KUoTyVqUkt6lCXZrShEfWoTxNa0JTW
tKMjPehJF9rTitpUoQKlKE5BilCUPOQgE2lJTUpSkYIQkpKA+MQgOtH4hKhE
JhL/qWkfeM3fvOINL3jMIx7ygPvc4y53+CuiHnKTG1zjKr9zgfOc4yxnOM5R
DrCfPWxmA6tZw3rWsooVLOdnFjKbKUxiLGP4hlEMZTCD+IoB9KcvX/IFn9OL
nvSgG13ozGd05FPa0IqWtKApjalPTSpQigKkQzQHYikQE4FHJYh4TxAjgUgK
xF0gggOlIEhJBjKTk7wUJB+FKEpxSlOGGlSnDg2oS1mKkItMpCYpiUhAQhKT
ioxkJT+FKUk5KlOV8pQgD+kR94HYDkR1IN4D5ShIQhrSkoJkhJCcbGQnCznI
TTGqUIuKVKIatalHQxrRhGY0pzVtaUd7OtCJrnSnN33ox0CGMJKvGc1whjGC
UMbxLRMZzwQm8x3TmcM8FrOERczie+Yzlx+YyQymMo0FLOVXfuNHfuIXlrGS
dWxkE2FsYTs72c1BjnCME5ziNCc5zF52sY2t7GAfh7jOLf7gMhe5xBVuE07E
ny8ZOSlAIXKRncS81+U5T3nCM17yjih+j0lC4vKvtrf8w0fSa8tHYfJTjBKU
pRJVqUFz2tKdoYQyjR9YyHzGMo4ZbGQn21nPcn7hZ35iNpP5lgnMYwGzmMJw
BtGfrxjNWvZwlJOc4iyXucrvXOIi57nAOY5zhMMcYj+72MIm1rCSJcxlET8y
icFEfCR8Th8GMpJvmMkK1rGVHYSxmu8ZzyiGMYK+fEk3OtGQipSjGtVpQEs+
pTdf8BldGcAQpvM1mznACU5zjev8wZ/c5i73ec7biP3nPVGEWtSIYCMykfiE
GMQmDglISiKSk5hk5CQfBSlMEYpTkgpUpBq1aUQzGlCL6tSgLvWoSR2a0I2e
9KI/01nKMd5FvI8J41mEcY5kArkMTehOJ3oznr0kENZ1aEFL+tOWngxmAQ8Y
Jej3sJ8ljGA4Y5jGRaoK/V3cJESYhrKDS3zgPc94TQKBm4GOTGQBOznCRa7x
khgCuSxN6c88lrKTM8QU3iHkogKrOMweThLOR+IqRnnowXoOcpEbPCOaYhaP
ENJTmnYMYhjDCWU+a9nMJtYznpGMYCJr2MdxLnCdcGIoLLmoRQ/GMZs1bGIj
G1hPGJvZyg52sYe9/A8RC/x0
                  "], CompressedData["
1:eJwt1HtMUFUYAPBDZmkTUVFepZaapZSVa6mtjEClRCoBoyTIfKTOKTofU7Gp
PIRahA8kUdOIEtvA0IqpsTlNx6Y2aE5yujXtoUUuy82VMa2fW3/87rn37Jxz
7znf9937pudnLIgIIVx0mRkbwma2U0s9uyhmDkmMIplM0plCCsOIoTcJxDOS
F8gmgyye5yEGE0k3Ap0xIdzkD6I9P8DjvEou03iD2cxiPvP+N4AT5n3EVFI5
3C+EcvIpYB596M/tZDGUtL4hRNEZHUIH33GIIjKJZSA3+oTQTh0VVFNICStZ
w3b2U8/rTCaFCSTxKDd6h/APFznPJe7U35doehBBII4ofjTmF77hBM3so4HF
ZJPGtV7ixk5q+ICtVLGRdRSyhlJKKOctlvAaeeSQTgYTeZFcsslkEuN5mrEk
M4ZYhjKCAXTlQlQITWzibaqpoYqdlDONLGYwnWcZSTx3kcD9DCSKLtzGvz1D
uM5fXONPfuc3fuU8ZzjNKb7lGEc5QAOfsIMtVFDCHDJurRUZwlUedj+V8WRR
SSnvsIxxDOKcsXtoppV28vRPYzEpjKI7YxnOEF5iMlXs42cu0MH3tNDKD3Sz
7+EMJp1SNhDtrGeyggLK5EMlRWziMB08I5+msJBXyOYYrRxhLwf4m8HyfhAx
TKScMvKZRwVVNNJTDS2nhkh19RTPcYBY9Tif9bTzmHodxyKqOEIbZznDOS5z
kyfj1A6xRJNMLsv5gq/5iRauEhEvX4hnDJOYSgFrqecgZzlJMzWUUsxmNrKa
HGaQxyKaOMpxrrAyIYQFlHOdfneLK3PJIoVskplADpeNa6OSWcwlnZd5nwru
MO4JZrGMVRSxmoXMZykrmEMjXe9ReyTwIAN4hAWsopRaKhjBMKLpT4P5SRR6
9xb7eo/1bKOaNlppYTej6XTWl6hjK2kk0iFmX1FNKhO5l+6cFvvZDL/1r5YX
S8hkKav5kLWUsIPdfMZeaqnjEF9ygs85RxN7+JQN1FDGu7zJMtZRzHhSGUIP
RtGbREaTxzhySaeSRj6mmVa6+P6r2njtKe1l2tjHQdbo38UO9rONRho4Tgsn
uXJrHXo5m64kEsdQ0igjn/8A1j8RCQ==
                  "], CompressedData["
1:eJwNzFsrw3EAxvEfSrnQZssNN/4ruzDbi3HhBewF8KZMxmyLleQwJMdkDk1b
wwWKlaQkh5LPxafvxVNPlJ+dmukJIUxzEg/hlGMOqFOlyDxzFFigRI1N9jji
nCtuaNPhnhe+6BsKYYA4CZKMMsEkOTKMM0KKLGnGiBgmxiD9BL59f/LOGz/8
0Wv71Q+6PHDHI8+88sQtLZpcc8kFDc7YYZsN1lmlwjKLLFFmhTW22GWfQ/4B
XJI8Nw==
                  "], CompressedData["
1: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
C1jEQqbwP0mnzY4=
                  "], CompressedData["
1:eJwN0D1IFHAAxuH/dTlFQw0uOXTiEVccF0XlcYIHgubVUA6KWlEO2YHeNXgg
VkagdOggmnh09AGCg46C4CAaNDQEBUFEDkI6SEE16GC19AzP9BteeGN9xY5C
JIQwRykawgiPeMJTxijzgFEeMsECX/jOL3aJHg4hQoyTxDlNggZOkaaZDG10
MUSJMi9ZY4NP/OMPR2tCOEYd9cTJcpkcV7lCK+200UITGc5zgTOcJcVFLpGm
kXPEOEEtv+1+ZZN1VpnnBa+ZZoYqi1SYZZJxxihwm07ukqefO3TTSx89XCdH
liR/fbrDFp/5yAfe8443vGWFZV6xxHOqVJjiGY8ZZoAiBe5xk25ukSNLhjQJ
khzh4FAIP/jJN7bZZ4/jeopr3CDPIPcZ4j+eOUkK
                  "], CompressedData["
1:eJwVzjtL1QEAxuG/xzyno56LHtGMTCUru5iYQ0nZBYJUvOSJaBQDaQmbnCxo
aTHUzdlvEOHgYFDo0lBqQ9TipUBFRMM0LVPzcXimH7y85Y+eprszgiAYpjEc
BDeo5zq3uUMDzbTRSjstpLnHXW5yi2tc5Qq1XKaai1zgHOc5w1kqOE0l5Zzk
FKWUkUc+MeJEySaLMCEyiXCUHHJJkCRFAYUUcYxijnOCEi5RRQ113Oclfbxi
gEFeM8p73jHBOJ+Z5htfmWeOGWb5wXcWWGKZFX6yxt7h94hvFFFAiiQJ8skj
ToxccogQJpMQu3b+sckGO/wlQ8simyhHCPijbfOLdbb4zX/2WWWRL0wxySc+
8oG3jDHCG4bo5wXPeUYvPXTSxWO6eUIHD3lAEwdizUXh
                  "], CompressedData["
1:eJwN0E1LkwEAAODXQ+IoD/4BKbCkWx0KveUhkFqXXfJSlkLiByqWGNihe1nr
g0phUuIloZOFugSlREHF0Wb40UHYEubMlYOS2sGew/MHnhNNXZHOkiAIYrwo
C4LnPOMpT3jEAFEe85AH3Oce/dylj26aucRlwlyhgWtcp5Eb3OQWLbTSRjsd
dNJFD7e5Qy8FSkNBcJyz1BPlA1/4Roa/FCmwzwF/+MVP8uzxg11y7JBlmzRb
bLDJOmt8ZZUUSRKssMgySywwz2c+McF7xplikmk+8pYxXjPKO2aZIU6Mq0QI
c5E6LlBLDec5xxlOU80pTlJFJRWUc4yjlBHiCAGHXov84zcZtsmzxy45dsjy
nTTrbJAiSYJllphnjjgjvGGYIV4xyEv+A8AIZaA=
                  "], CompressedData["
1:eJwNzEkrxHEAgOGfK0fFMJTlYkvWmaE0uamJMi4k23+MLJMRJ+RiOCjlxBeQ
g2zJvnwBLj6Ai4/iOTzH922Mitn1shBCgZ3yELbZYpMNiqywSp5FIqbJMMwQ
g/SToItu2umghVaaaKaBGDVUUU0tceqop5Ne+kiSIs0Io4wxyRSzzLFAjmUK
rLHHKT0VOsbJEbFEnnlmmCBLhjQDpEiSoI04lfx5/vLDN1988sE7b7zywjNP
PPLAJVfcc80dN9xywTlnnHDMEYccUGKfXf4BC2QxXQ==
                  "], CompressedData["
1:eJwNzssv1wEAAPCvi/6CXKQiRVvmTbVeHm1xsnSRlpFWk36/tlp0aG2tLi6O
HimPoVoP1n6/ho1xINlcdIqYzYwxNSeLbH0On/snsSZ8NRQTBEE7LQeC4AUv
ecZTGggTooqb3KCS61RQTR33ecJjHvGQeu5xlzvcppZb1HCNcsq4QhGFFHCJ
85zjLGfIIZssMknjFCdJJYUTHCeZYySRyFESOEQ8G7FBsMIvFvjBHDN8Z4pJ
xhhlhGGGiBDlCx/4yDve089buunhNW9oo50WWnlFB5100Usfn/jMV75x0DWO
wxwhnQxyySOf01zgIsVcpoRSHtDIc5popo8Bplllhz32+ccuf9nmD7/ZYpM1
1llmiUXm+cksM0wwTpQIg3TQyn8DjFYA
                  "], CompressedData["
1:eJwNw00rw3EAAOCfuy/xn5dhO5j3sogVRiLExRyGwmFrHHwFbmpHFzkrUZMh
PoDTTqScOIxx4QvseeqJ8sWlQksIIedfawg/Nvy27ruvvljz2UcfvLfqrTdW
vPLCc8ueeOSBu+64b8miBTfNm3PdFZddcMpBRx2y17htdtlut5Edxuyx02nH
HDdtyj4TJu13wGFHnHTCjFlnnHPWeRdddc0Nt9x2z0OPPfXMS6+988k3P/3w
y1//bQKNlTHM
                  "], {1316, 1309, 1287, 1284, 1291, 1312, 1319, 1326, 1332, 
                  1329, 1321}, {3393, 3397, 3396, 3404, 3401, 3400, 3399, 
                  3402, 3412, 3411, 3417, 3416, 3422, 3421, 3432, 3431, 3438, 
                  3437, 3442, 3441, 3435, 3433, 3434, 3430, 3426, 3425, 3414, 
                  3413, 3415, 3410, 3409, 3408, 3406, 3405, 3403, 3392, 3389, 
                  3387, 3385, 3386, 3384, 3382, 3378, 3379, 3375, 3376, 3370, 
                  3371, 3381, 3368, 3367, 3365, 3366, 3363, 3364, 3372, 3374, 
                  3383, 3390, 3394}, {1500, 1503, 1502, 1505, 1504, 1506, 
                  1516, 1527, 1536, 1537, 1534, 1533, 1530, 1524, 1523, 1526, 
                  1525, 1521, 1520, 1515, 1514, 1512, 1511, 1508, 1507, 1499, 
                  1496, 1497, 1489, 1487, 1485, 1486, 1479, 1480, 1477, 1478, 
                  1481, 1482, 1483, 1484, 1491, 1492, 1493, 1494, 1498, 
                  1501}, {2992, 2995, 2994, 2999, 2998, 3008, 3012, 3014, 
                  3043, 3042, 3040, 3039, 3036, 3035, 3030, 3031, 3015, 3007, 
                  2985, 2982, 2975, 2974, 2968, 2946, 2947, 2948, 2949, 2950, 
                  2951, 2954, 2955, 2956, 2957, 2959, 2960, 2961, 2962, 2964, 
                  2965, 2971, 2972, 2979, 2980, 2983, 2984, 2986, 2991, 
                  2993}, {2105, 2135, 2133, 2132, 2131, 2130, 2129, 2128, 
                  2127, 2117, 2116, 2115, 2114, 2113, 2112, 2098, 2097, 2096, 
                  2095, 2084, 2075, 2055, 2056, 2053, 2054, 2051, 2052, 2049, 
                  2057, 2058, 2059, 2060, 2061, 2062, 2063, 2064, 2067, 2068, 
                  2073, 2074, 2076, 2077, 2085, 2086, 2090, 2106}, {2080, 
                  2108, 2110, 2065, 2040, 2035, 2046, 2038, 2047, 2071}, {
                  2482, 2471, 2404, 2349, 2302, 2279, 2268, 2291, 2271, 2350, 
                  2405, 2472, 2486, 2480}, {1888, 1885, 1877, 1897, 1921, 
                  1923, 1920, 1905}, {3020, 3024, 3023, 3026, 3025, 3029, 
                  3028, 3033, 3032, 3034, 3038, 3011, 3010, 3002, 3003, 3000, 
                  3001, 2996, 2997, 3004, 3005, 3013, 3019, 3021}, {2238, 
                  2254, 2256, 2248, 2245, 2242, 2232, 2233, 2235, 2236, 2224, 
                  2223, 2222, 2221, 2220, 2219, 2231, 2230, 2229, 2228, 2218, 
                  2212, 2213, 2215, 2216, 2217, 2227, 2239}, {3463, 3467, 
                  3466, 3470, 3471, 3476, 3475, 3481, 3480, 3489, 3488, 3493, 
                  3492, 3499, 3498, 3487, 3486, 3472, 3460, 3461, 3458, 3459, 
                  3462, 3464}, {3482, 3491, 3490, 3497, 3496, 3495, 3494, 
                  3484, 3477, 3478, 3473, 3474, 3483}, {2443, 2441, 2446, 
                  2447, 2451, 2445, 2440, 2442, 2455}, {1379, 1383, 1382, 
                  1386, 1385, 1391, 1390, 1396, 1404, 1408, 1409, 1416, 1415, 
                  1414, 1413, 1407, 1405, 1406, 1403, 1401, 1399, 1398, 1395, 
                  1392, 1389, 1381, 1384, 1377, 1378, 1376, 1373, 1380}, {
                  1421, 1422, 1434, 1433, 1432, 1431, 1430, 1429, 1428, 
                  1427}, {1455, 1460, 1459, 1454, 1453, 1445, 1446, 1442, 
                  1443, 1449, 1450, 1456}, CompressedData["
1:eJwV1GtMEFQUAOCLc8sQpjblEY8FgpRPlKiskGyzOXM6mUYOVwotAxM1sjSl
hoJmKiKNWfjENnK0stLGKh3ZprOip5ayqZQKw2FWjLCotj5+fHc7u2c7u+ee
e1MKV+SVRoQQmizzkkPI53EW8CiP8DC5PMhUsplMFpPIZCITGEs6GaSRyqdJ
IdxNBsmMIp4ohhHJXQzni8QQPudLPuAw+3mfJiqo5jjf0c4vdNBKDcXEsioh
hP7bQ3iGlni1aYgLoZn3OMK77KGcFZRRQB6rWc5sxjKUCKIJjCSKVLIZTTrx
XIkNoZN24sQPsI5S1jKHRdSymUPspI6nWM8GGmmihlb+4CuODdSgkzau0U0X
ZzjHDX6nn78Z7PyDiCSa20ghhnQmMI5MpjGDfIpZxga2sJVdHKSRozTzMaf5
mjYuEfQ+gyxiGckQeuz1coF2fuQM57jKdSLkRTGFJaxmDRVU8iHHaec3bjLM
nY8ghkTiSCCewfwrp4M+csVzKaKQcrZSxTY2sZ1adrKXfdRzgAbe4TQ/cZZL
dHGZq3RzjXYu0sJnfMP3nKeDnoFZJdLcjiCRLKaQThqTySWH6cxkFnPIYyEF
LGElJTzPXho5xEcc4ROO0sIJTnGSbznPFTrppose/qSXm/TRz38M8m6HcAtD
uZVo4ogliRRSSWMMd5LOeCaSzX3cy1TuYRKZZHE/OUxnBrOYyzzms4B8nmAx
hRSxlBKKKeMFXmQd5bxMBa+wkUo2U8WrbKOaHdTyJq9TRz37eZvDNHOME5zk
FK38wFnauMBFfuYyHXRynV+5QS99/MU/9A/01j8azXBGEUMCoxnHeO4ghWTG
kEQiD/ES5ezjLQ7QQD27qWMXB2nkDWp4jUqqKKOU9axiDUUsZRFPU8BKSljO
s6zlOYp5kvk8xjRymM12tlDLDjZRzUaWsZhCFvI/7h/9Tg==
                  "], {6233, 6319, 6287, 6286, 6277, 6266, 6245, 6238, 6188, 
                  6192, 6177, 6176, 6150, 6139}, CompressedData["
1:eJwV01tMCGAUAOAfPTRkJaK0iTaxKRWWmSYiC6V1s0brsqzoZrTmwWyWNuqx
mReWqZi7RS88kCmXjScv2MxsLpu1ZWnaXL8evp2ds53zcHbOstrW4pYZIYRJ
HseHcJd+LjJAL1e4xk2u00MH7RygljqqqKCUIgrYQz655JBFEjHMZRaB34tD
mGKCMd7ymlc85wUjDPOQBwwywCUu0EM3HRyklnqqqaGcArazljQySGUhEXxd
FMJH3vOSEW5zjk5O0kgzB6inhmoqqWAdKcQyHhfCX34R5JFEkcxq8imlmL0U
kkk8CcQQxypyKaOAEraSRQ4NnOIyN+jjPGepo50mqigim02kks4G1pPHZtLY
SDlH6aaXfu4xzFPeMDbdb3dbyKOEMto4xGm6OEMfQ9znCaM84x0/iHQL84hm
BWtIZjmJpJBBJitZyhJiWUAa2WxjB7sopJpWGqinhcM0c4RyyihhP5U00cYx
jnOCTrro4yp3GOQWQzziG9/5wic+M8Yf5iSEMJ/dVNFBPY1Uso+dpBNDNIkk
EcVsIvhp1hQTTE7/DzPV/4njfGCU/11jhx8=
                  "], CompressedData["
1:eJwV1nl0jlcCB+CXdNQy1aklSBg0p6djnSK1DzWCoiRiaaqW2jJq3/f9aCzB
sS9NhFqKWKp01Bo0ai2tJWgsYyuiDKrGWubJH8/53e283/3uPfd9b+nOfWP7
5AiCYF1IEAwuEQS96crHxNCU92lGS9rwEXHE0pwo6lKb96hPIxryT2pRmbKU
oiC5eFw8CG5xmp2sYQ69iKEWpSlKKSKpRlXK8TaFycN/w4PgR7Ywn3F05R3+
wq0w/WxhNB0oxrNiQZDFKdJJYwffc44nFDauNEV5oX6TvaQQT12q8i41qU0k
ZSnCi6JBkMEeljCWXkTThBa0oiPxxBFDFDWoQ12qUYZQ8hLCoyJBcI0jrGYc
PfiUQaRykgtc5hducIkMdpNCP+pQIPt5oUGwi9n0oR01KU564SBIZDhNqUFF
wrheyLqRzi/k0VaECHKSpe0h98jkGoH2SGLozVAG0ppalOJVnhobLhszgmQO
8pIy5tWQWNoQQ30qUYgrxqxnGB8Ty6eMZjF7OJ/9GwTGP5Z3ucghkhhAedLM
Yy5jGMJgJpHAaNpQhbcpQSilqEYjovg7hcnF04L2glMcZicJjKQfSQxmLj2Y
yDBms5DxzGAUy0hkLRNIZhfLOcBiUpnHIa6yn+tkkcFZfiWTHOYXwmtU5LS2
lzwnQv0tGlKeJfRiGd3oRxPaU5xK1KU/FejCTFaxgFRS2EQya1jEenZzhsdc
Jrd9OCtLytvZz5WhvEc0ZZnBTPLaz8p8SH8G0pmKFKQ1TdhnbCvZk3gWMIfx
TKcbI4mjGSO4SbTzspMswp3HEtxV/o1/KPejCwlsZHp2P7fI491QlDJUoSGx
tKATwxnIYBIYzWS+YitnuUJ+76U8NKYgETSgLNHUpDefUZfqxFGbQQxhPvtZ
zl4WsoG2DCWWBKYwmc9ZwnaSSWIWX7CasSylK0dYy0bqE0kY5ejBHuqRyHCm
EsN6RrGK0xzgZ34gk+85xDw2k8o2zrKVc8zgBBc4xR128jspnOEkaaQzh3AO
ks9345g8zlHK8xahPLXupzlGiPo0chpfitdoQEdK0pwwImnHAubyDavZxCrS
2EE633KYXRxiPz+QwU+c5wy3+R83uMNVHvKMu+TwbXwkX5UvZIjMSX4iqMCH
NKMDrenNAqYzhGGMZQzd+RefEM9nJDCaiUxmAnF0ZSidaU8XUkhjCns4zjoO
spJ9fE4ii5jPABpQnYbU5h3qUIMoGtOTVozgAOc5wgkucYGXPOAk97jPbZ5n
r0/2PYIbXOQKP7OFb9nEbKaRTDeWsYNZLGUebWhLOGX53bpf5jpH+I6jHGAl
bZnBMMYzgCr0pSUDaUMPPiKeGHrxAWOIYyT16MknxNKJJnQggj68SWsqMogo
RtCMoUxlIhv4mnnMYQkTmMkUUlnBNjazl63s5ATr+IplLGQSi0hiMl+SzHK2
c4mTZPKcAtauEK/wJqHkJh9P9AfynHyQfb9jH/d5yePsc6j/D/m6LMa7NKUk
9WlHS6LpyEAWMpUVjGQDLehLf+YynCTWsoptbCWTY6RzlGucyp4jd8kgizs8
I4c78JPs/ycD/kQI+XmDUApQiDBKEk5xIihHJSpQh8Z8QFva045OdKQbvehO
PD3pSx/6MYgBDGcEwxjFOKYwnfkksZIN/MQxdrOLb9jGEfawjoWsYTmrWUAy
M5nLYlL4gqV8yTK+Zj2b2MgBtnKQdI6ynRWkksY+fuQcxznDvznEd5zkMNe4
yg1+5SL3eMhvZPEfMrnJLe7z+l/tEfnJxUttz8mh/Ap/KD/gRfa+Zu+ptpw8
Us4rQ/gzuSlAIQpShGKUpChh/I3KVKU61ahHJPVpRAOa0Ixo+jKSRJJZySpW
sJglzGUO4xjKYCYxjcnMYj6L6Ep3OtGNsUxgDONpTAzNaU8HWhJLWwYxhPeJ
oia1KMMb5CMPd63PZU5zlgy2sJm1zGIqCSQygf78HxqFPV8=
                  "], CompressedData["
1:eJwt1Gloj3EcAPBnjjQb29yWiBxvRrKhkWMWimk5shfOTMILcrxyFGoklkxu
wxxz/tGcyzDMOYu5hqYZ2kjOyB2ff7z4/Hqeb7++3+fX9/d92k+ZPWpWRBAE
0yx3Y4OgXlwQtGAAvUgimTiieW5PzX9LGU4qvelKAokk0Z7WtKANrYgmjkhi
iaIOn2KC4C0feMlTSrhCPuvJYRHLWcomtnCSAiqo4iHl3OcWxVwkxEE2soeZ
ZDCaviTSkcZEUZ+A342D4Bc/+MZn3lNLJS95QQ1PecJjblLKHcq4wS2uUsxZ
LlNEHjvJYT1rWckQ0ulFTxJoTiazGUsayQwgjohw/kbqcJqjFDCVDrQllTYk
cT1an5hMbZReUM1C7+1IoyHxrBOfzlzS+cpA8cs84BAhcqkK55V/PoW8p4ZK
GvjG+rzx/JYqquksFk8XEhnKOCaQwQymk8UaNrGdvYQopIQrlHOPBzziGa/D
NXnHR77wle/8oY5+1yWGdnQinoa0pgcpTCGTMUwmmx1sII/NrGQdp6gO3yf3
vC3d6ExLkhlEf/oxmDRGk8EE0hnGKEYwjomMZz6LySaLFSxhGcvJYQNbyCWP
HezmS3h+zXQG8whRQBGllPGKF8Q0Mb8ERBBNU5rRgFp7nlHDD37TXXwgQ0hl
JJM4zBm2sYQFZLGMzaxhH/mcYjXZLGYOE8kkhT78VKuCnWxlH7nsYhUpxBJJ
Xb4592uqqOQJFdzjNte5RBEnOMx+9rKHfA5wjAtc5Qal3OQaJVzkHKcp4AiH
OEiIoxynkLOcp5gy7lAe+++f/Bc2zdR8
                  "]}], {{
                  RGBColor[1, 0.7, 0.4], 
                  TagBox[
                   TooltipBox[
                    PolygonBox[{CompressedData["
1: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
EUQRRgg5SPXNmchs+tOedfwfTdssaQ==
                    "], {5903, 5919, 5916, 5876, 5866, 5837, 5847, 5819, 5839,
                     5892, 5868, 5887, 5979, 5939, 6014, 5990, 5969, 5987, 
                    5953, 5980, 5899, 5863, 5885, 5875, 5850, 5858, 5844, 
                    5826, 5812, 5824, 5803, 5809, 5842, 5829, 5815, 5843, 
                    5833, 5818, 5813, 5840, 5854, 5853, 5865, 5859, 5869, 
                    5882}, {4999, 4969, 4962, 4946, 4948, 4955, 5022, 5051}, {
                    5804, 5784, 5797, 5814, 5817, 5801}, {3952, 3925, 3951, 
                    3948, 3965}, {3508, 3501, 3559, 3527, 3534}, {3966, 3967, 
                    4003, 4039, 4050, 4034}, {5828, 5807, 5820, 5832}, {3759, 
                    3761, 3724}, {4057, 4106, 4087, 4047}}], "\"Germany\"", 
                    LabelStyle -> "TextStyling"], 
                   Annotation[#, "Germany", "Tooltip"]& ]}}}], 
              EdgeForm[{
                GrayLevel[0.6], Antialiasing -> True}], 
              RGBColor[1, 0.93, 0.82], 
              
              GraphicsComplexBox[{{
               0.01310790804577435, -0.049812220710368324`}}, {
                Directive[
                 RGBColor[1, 0, 0], 
                 PointSize[Large]], 
                PointBox[1]}]}, 
             PlotRange -> {{-0.06673024150453082, 
              0.06673024150453084}, {-0.07949974800076605, 
              0.08723617609339601}}, ImageSize -> {300}, Background -> None, 
             Frame -> True, FrameStyle -> GrayLevel[0.85], FrameTicks -> 
             None], TraditionalForm]], "Output"]}], 
       XMLElement["dataformats", {}, {}]}], 
     XMLElement["states", {"count" -> "1"}, {
       XMLElement[
       "state", {
        "name" -> "Show street address", "input" -> 
         "LocationOfTheGeographicalItemOfInterest__Show street address"}, \
{}]}]}], Typeset`aux1$$ = {True, False, {False}, True}, Typeset`aux2$$ = {
   True, False, {False}, True}, Typeset`aux3$$ = {True, False, {False}, True},
    Typeset`asyncpods$$ = {}, Typeset`nonpods$$ = {
    XMLElement["assumptions", {"count" -> "1"}, {
      XMLElement[
      "assumption", {
       "type" -> "SubCategory", "word" -> "SI", "template" -> 
        "Assuming ${desc1}. Use ${desc2} instead", "count" -> "2"}, {
        XMLElement[
        "value", {
         "name" -> "NYSE:SI", "desc" -> "SI", "input" -> 
          "*DPClash.FinancialE.SI-_*NYSE%3ASI-"}, {}], 
        XMLElement[
        "value", {
         "name" -> "NASDAQ:SIFI", "desc" -> "SIFI", "input" -> 
          "*DPClash.FinancialE.SI-_*NASDAQ%3ASIFI-"}, {}]}]}], 
    XMLElement["warnings", {"count" -> "1"}, {
      XMLElement[
      "reinterpret", {
       "text" -> "Using closest Wolfram|Alpha interpretation:", "new" -> 
        "acceleration due to gravity in SI"}, {
        XMLElement["alternative", {}, {"SI units"}]}]}], 
    XMLElement["sources", {"count" -> "3"}, {
      XMLElement[
      "source", {
       "url" -> 
        "http://www.wolframalpha.com/sources/CityDataSourceInformationNotes.\
html", "text" -> "City data"}, {}], 
      XMLElement[
      "source", {
       "url" -> 
        "http://www.wolframalpha.com/sources/\
CountryDataSourceInformationNotes.html", "text" -> "Country data"}, {}], 
      XMLElement[
      "source", {
       "url" -> 
        "http://www.wolframalpha.com/sources/\
FinancialDataSourceInformationNotes.html", "text" -> 
        "Financial data"}, {}]}]}, Typeset`initdone$$ = True, 
   Typeset`queryinfo$$ = {
   "success" -> "true", "error" -> "false", "numpods" -> "3", "datatypes" -> 
    "Financial,Geogravity", "timedout" -> "", "timedoutpods" -> "", "timing" -> 
    "2.941", "parsetiming" -> "0.327", "parsetimedout" -> "false", 
    "recalculate" -> "", "id" -> 
    "MSPa84801a0c5346de59c00c000017e298a7d4a58200", "host" -> 
    "http://www4b.wolframalpha.com", "server" -> "14", "related" -> "", 
    "version" -> "2.5"}, Typeset`sessioninfo$$ = {
   "TimeZone" -> -5., 
    "Date" -> {2012, 3, 3, 23, 26, 21.7902817`9.090837776628538}, "Line" -> 
    50, "SessionID" -> 23198385670621549241}, Typeset`showpods$$ = {1, 2, 3}, 
   Typeset`failedpods$$ = {}, Typeset`chosen$$ = {
   "GravitationalFieldStrength", "Gravitational field strength for Siemens", 
    1, 1, "Content"}, Typeset`open$$ = False, Typeset`newq$$ = 
   "acceleration due to gravity in SI units"}, 
   DynamicBox[ToBoxes[
     AlphaIntegration`FormatAlphaResults[
      Dynamic[{
       1, {Typeset`pod1$$, Typeset`pod2$$, Typeset`pod3$$}, {
        Typeset`aux1$$, Typeset`aux2$$, Typeset`aux3$$}, Typeset`chosen$$, 
        Typeset`open$$, Typeset`elements$$, Typeset`q$$, Typeset`opts$$, 
        Typeset`nonpods$$, Typeset`queryinfo$$, Typeset`sessioninfo$$, 
        Typeset`showpods$$, Typeset`failedpods$$, Typeset`newq$$}]], 
     StandardForm],
    ImageSizeCache->{260., {48., 18.}},
    TrackedSymbols:>{Typeset`showpods$$, Typeset`failedpods$$}],
   DynamicModuleValues:>{},
   Initialization:>If[
     Not[Typeset`initdone$$], WolframAlphaClient`Private`doAsyncUpdates[
       Hold[{Typeset`pod1$$, Typeset`pod2$$, Typeset`pod3$$}], 
       Typeset`asyncpods$$, 
       Dynamic[Typeset`failedpods$$]]; Typeset`asyncpods$$ = {}; 
     Typeset`initdone$$ = True],
   SynchronousInitialization->False],
  BaseStyle->{Deployed -> True},
  DeleteWithContents->True,
  Editable->False,
  SelectWithContents->True]], "WolframAlphaShortInput"],

Cell[BoxData[
 InterpretationBox[
  FrameBox[
   StyleBox[
    FormBox[
     StyleBox[GridBox[{
        {
         StyleBox[
          StyleBox[GridBox[{
             {
              PaneBox["\<\"total field\"\>",
               
               BaseStyle->{{
                 BaselinePosition -> Baseline, FontColor -> GrayLevel[0.3]}, 
                 LineSpacing -> {0.9, 0, 1.5}, 
                 LinebreakAdjustments -> {1, 10, 10000, 0, 100}, 
                 TextAlignment -> Left},
               BaselinePosition->Baseline], 
              StyleBox[
               RowBox[{
               "9.81061", "\[InvisibleSpace]", "\[InvisibleSpace]", 
                "\[ThickSpace]", "\[InvisibleSpace]", 
                StyleBox[
                 
                 RowBox[{"\<\"m\"\>", "\[InvisibleSpace]", "\<\"/\"\>", 
                  "\[InvisibleSpace]", 
                  SuperscriptBox["\<\"s\"\>", "2"]}],
                 FontFamily->"Helvetica",
                 FontSize->Smaller], "  ", 
                StyleBox[
                 
                 RowBox[{"\<\"(\"\>", 
                  "\[NoBreak]", "\<\"meters per second squared\"\>", 
                  "\[NoBreak]", "\<\")\"\>"}],
                 StripOnInput->False,
                 LineIndent->0,
                 LinebreakAdjustments->{1, 100, 1, 0, 100},
                 LineColor->GrayLevel[0.6],
                 FrontFaceColor->GrayLevel[0.6],
                 BackFaceColor->GrayLevel[0.6],
                 GraphicsColor->GrayLevel[0.6],
                 FontFamily->"Helvetica",
                 FontSize->Smaller,
                 FontColor->GrayLevel[0.6]]}],
               ZeroWidthTimes->False,
               LineIndent->0,
               LinebreakAdjustments->{1, 100, 1, 0, 100}]},
             {
              PaneBox["\<\"angular deviation from local vertical\"\>",
               
               BaseStyle->{{
                 BaselinePosition -> Baseline, FontColor -> GrayLevel[0.3]}, 
                 LineSpacing -> {0.9, 0, 1.5}, 
                 LinebreakAdjustments -> {1, 10, 10000, 0, 100}, 
                 TextAlignment -> Left},
               BaselinePosition->Baseline], 
              StyleBox[
               RowBox[{"0.00334", "\[InvisibleSpace]", 
                StyleBox[
                 RowBox[{"\[InvisibleSpace]", "\<\"\[Degree]\"\>"}],
                 FontFamily->"Helvetica",
                 FontSize->Smaller], "  ", 
                StyleBox[
                 
                 RowBox[{"\<\"(\"\>", "\[NoBreak]", "\<\"degrees\"\>", 
                  "\[NoBreak]", "\<\")\"\>"}],
                 StripOnInput->False,
                 LineIndent->0,
                 LinebreakAdjustments->{1, 100, 1, 0, 100},
                 LineColor->GrayLevel[0.6],
                 FrontFaceColor->GrayLevel[0.6],
                 BackFaceColor->GrayLevel[0.6],
                 GraphicsColor->GrayLevel[0.6],
                 FontFamily->"Helvetica",
                 FontSize->Smaller,
                 FontColor->GrayLevel[0.6]]}],
               ZeroWidthTimes->False,
               LineIndent->0,
               LinebreakAdjustments->{1, 100, 1, 0, 100}]},
             {
              PaneBox[
               RowBox[{"down", " ", "\<\"component\"\>"}],
               
               BaseStyle->{{
                 BaselinePosition -> Baseline, FontColor -> GrayLevel[0.3]}, 
                 LineSpacing -> {0.9, 0, 1.5}, 
                 LinebreakAdjustments -> {1, 10, 10000, 0, 100}, 
                 TextAlignment -> Left},
               BaselinePosition->Baseline], 
              StyleBox[
               RowBox[{
               "9.81055", "\[InvisibleSpace]", "\[InvisibleSpace]", 
                "\[ThickSpace]", "\[InvisibleSpace]", 
                StyleBox[
                 
                 RowBox[{"\<\"m\"\>", "\[InvisibleSpace]", "\<\"/\"\>", 
                  "\[InvisibleSpace]", 
                  SuperscriptBox["\<\"s\"\>", "2"]}],
                 FontFamily->"Helvetica",
                 FontSize->Smaller], "  ", 
                StyleBox[
                 
                 RowBox[{"\<\"(\"\>", 
                  "\[NoBreak]", "\<\"meters per second squared\"\>", 
                  "\[NoBreak]", "\<\")\"\>"}],
                 StripOnInput->False,
                 LineIndent->0,
                 LinebreakAdjustments->{1, 100, 1, 0, 100},
                 LineColor->GrayLevel[0.6],
                 FrontFaceColor->GrayLevel[0.6],
                 BackFaceColor->GrayLevel[0.6],
                 GraphicsColor->GrayLevel[0.6],
                 FontFamily->"Helvetica",
                 FontSize->Smaller,
                 FontColor->GrayLevel[0.6]]}],
               ZeroWidthTimes->False,
               LineIndent->0,
               LinebreakAdjustments->{1, 100, 1, 0, 100}]},
             {
              PaneBox[
               RowBox[{"west", " ", "\<\"component\"\>"}],
               
               BaseStyle->{{
                 BaselinePosition -> Baseline, FontColor -> GrayLevel[0.3]}, 
                 LineSpacing -> {0.9, 0, 1.5}, 
                 LinebreakAdjustments -> {1, 10, 10000, 0, 100}, 
                 TextAlignment -> Left},
               BaselinePosition->Baseline], 
              StyleBox[
               RowBox[{
                RowBox[{"4.2", " ", 
                 SuperscriptBox["10", 
                  RowBox[{"-", "4"}]]}], "\[InvisibleSpace]", 
                "\[InvisibleSpace]", "\[ThickSpace]", "\[InvisibleSpace]", 
                StyleBox[
                 
                 RowBox[{"\<\"m\"\>", "\[InvisibleSpace]", "\<\"/\"\>", 
                  "\[InvisibleSpace]", 
                  SuperscriptBox["\<\"s\"\>", "2"]}],
                 FontFamily->"Helvetica",
                 FontSize->Smaller], "  ", 
                StyleBox[
                 
                 RowBox[{"\<\"(\"\>", 
                  "\[NoBreak]", "\<\"meters per second squared\"\>", 
                  "\[NoBreak]", "\<\")\"\>"}],
                 StripOnInput->False,
                 LineIndent->0,
                 LinebreakAdjustments->{1, 100, 1, 0, 100},
                 LineColor->GrayLevel[0.6],
                 FrontFaceColor->GrayLevel[0.6],
                 BackFaceColor->GrayLevel[0.6],
                 GraphicsColor->GrayLevel[0.6],
                 FontFamily->"Helvetica",
                 FontSize->Smaller,
                 FontColor->GrayLevel[0.6]]}],
               ZeroWidthTimes->False,
               LineIndent->0,
               LinebreakAdjustments->{1, 100, 1, 0, 100}]},
             {
              PaneBox[
               RowBox[{"south", " ", "\<\"component\"\>"}],
               
               BaseStyle->{{
                 BaselinePosition -> Baseline, FontColor -> GrayLevel[0.3]}, 
                 LineSpacing -> {0.9, 0, 1.5}, 
                 LinebreakAdjustments -> {1, 10, 10000, 0, 100}, 
                 TextAlignment -> Left},
               BaselinePosition->Baseline], 
              StyleBox[
               RowBox[{
               "0.03276", "\[InvisibleSpace]", "\[InvisibleSpace]", 
                "\[ThickSpace]", "\[InvisibleSpace]", 
                StyleBox[
                 
                 RowBox[{"\<\"m\"\>", "\[InvisibleSpace]", "\<\"/\"\>", 
                  "\[InvisibleSpace]", 
                  SuperscriptBox["\<\"s\"\>", "2"]}],
                 FontFamily->"Helvetica",
                 FontSize->Smaller], "  ", 
                StyleBox[
                 
                 RowBox[{"\<\"(\"\>", 
                  "\[NoBreak]", "\<\"meters per second squared\"\>", 
                  "\[NoBreak]", "\<\")\"\>"}],
                 StripOnInput->False,
                 LineIndent->0,
                 LinebreakAdjustments->{1, 100, 1, 0, 100},
                 LineColor->GrayLevel[0.6],
                 FrontFaceColor->GrayLevel[0.6],
                 BackFaceColor->GrayLevel[0.6],
                 GraphicsColor->GrayLevel[0.6],
                 FontFamily->"Helvetica",
                 FontSize->Smaller,
                 FontColor->GrayLevel[0.6]]}],
               ZeroWidthTimes->False,
               LineIndent->0,
               LinebreakAdjustments->{1, 100, 1, 0, 100}]}
            },
            AllowScriptLevelChange->False,
            AutoDelete->False,
            BaselinePosition->Automatic,
            FrameStyle->GrayLevel[0.84],
            
            GridBoxAlignment->{
             "Columns" -> {Left, Left, Right}, "Rows" -> {{Baseline}}},
            GridBoxBackground->{"Columns" -> {None, None}},
            GridBoxFrame->{"Columns" -> {{True}}, "Rows" -> {{True}}},
            
            GridBoxItemSize->{
             "Columns" -> {{Automatic}}, "Rows" -> {{Automatic}}},
            GridBoxSpacings->{"Columns" -> {{1.5}, 2}, "Rows" -> {{1}}}], 
           "Grid"],
          StripOnInput->False,
          LineSpacing->{0.9, 0, 1.5},
          LineIndent->0]},
        {
         StyleBox[
          RowBox[{"\<\"(\"\>", "\[NoBreak]", 
           
           RowBox[{"\<\"based on EGM2008 12th order model; \"\>", 
            "\[InvisibleSpace]", 
            RowBox[{
             StyleBox[
              RowBox[{"521", "\[InvisibleSpace]", " ", 
               StyleBox["\<\"meters\"\>",
                StripOnInput->False,
                LineIndent->0,
                LinebreakAdjustments->{1, 100, 1, 0, 100},
                FontFamily->"Helvetica",
                FontSize->Smaller]}],
              ZeroWidthTimes->False,
              LineIndent->0,
              LinebreakAdjustments->{1, 100, 1, 0, 100}], 
             "\[InvisibleSpace]", "\<\" \"\>"}], 
            "\[InvisibleSpace]", "\<\"above\"\>", 
            "\[InvisibleSpace]", "\<\" sea level\"\>"}], 
           "\[NoBreak]", "\<\")\"\>"}],
          StripOnInput->False,
          LineIndent->0,
          LinebreakAdjustments->{1, 100, 1, 0, 100},
          LineColor->GrayLevel[0.5],
          FrontFaceColor->GrayLevel[0.5],
          BackFaceColor->GrayLevel[0.5],
          GraphicsColor->GrayLevel[0.5],
          FontFamily->"Verdana",
          FontSize->10,
          FontColor->GrayLevel[0.5]]}
       },
       GridBoxAlignment->{"Columns" -> {{Left}}},
       GridBoxItemSize->{
        "Columns" -> {{Automatic}}, "Rows" -> {{Automatic}}}], "Column"],
     TraditionalForm], "Output",
    ScriptLevel->0,
    FontFamily->"Times",
    FontSize->14,
    Background->None],
   BaseStyle->{Plain},
   FrameMargins->10,
   FrameStyle->GrayLevel[0.85],
   RoundingRadius->5,
   StripOnInput->False],
  WolframAlphaResult[
  "acceleration due to gravity in SI units", {{
    "GravitationalFieldStrength", 1}, "Content"}]]], "Output",
 CellChangeTimes->{{3.5398239716767035`*^9, 3.5398239849164605`*^9}}]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"Total", "[", 
  RowBox[{"{", 
   RowBox[{"1", ",", "5", ",", " ", "6"}], "}"}], "]"}]], "Input",
 CellChangeTimes->{{3.539824085245199*^9, 3.539824099390008*^9}, {
  3.539824182044736*^9, 3.5398241833428097`*^9}}],

Cell[BoxData["12"], "Output",
 CellChangeTimes->{3.539824184103853*^9}]
}, Open  ]],

Cell[BoxData[{
 RowBox[{"alpha", " ", ":=", " ", "\[Alpha]"}], "\[IndentingNewLine]", 
 RowBox[{"mu", " ", ":=", " ", "\[Mu]"}], "\[IndentingNewLine]", 
 RowBox[{"rho", " ", ":=", " ", "\[Rho]"}], "\[IndentingNewLine]", 
 RowBox[{"Clear", "[", 
  RowBox[{
  "alpha", ",", " ", "mu", ",", " ", "rho", ",", " ", "viscosities", ",", " ",
    "densities", ",", " ", "heights"}], "]"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{"(*", "\[IndentingNewLine]", 
   RowBox[{"viscosities", " ", ":=", " ", 
    RowBox[{
     RowBox[{
      RowBox[{"Array", "[", 
       RowBox[{"\[Mu]", ",", " ", "2"}], "]"}], "\[IndentingNewLine]", 
      "densities"}], " ", ":=", " ", 
     RowBox[{
      RowBox[{
       RowBox[{"Array", "[", 
        RowBox[{"\[Rho]", ",", " ", "2"}], "]"}], "\[IndentingNewLine]", 
       "heights"}], " ", ":=", " ", 
      RowBox[{"Array", "[", 
       RowBox[{"h", ",", " ", "2"}], "]"}]}]}]}], "*)"}]}]}], "Input",
 CellChangeTimes->{{3.539824684213458*^9, 3.539824722722661*^9}}]
}, Open  ]]
}, Open  ]]
},
WindowSize->{936, 722},
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
Cell[1257, 32, 155, 4, 137, "Title"],
Cell[CellGroupData[{
Cell[1437, 40, 2330, 51, 272, "Input"],
Cell[3770, 93, 153, 2, 30, "Output"],
Cell[3926, 97, 190, 2, 30, "Output"],
Cell[4119, 101, 154, 2, 30, "Output"],
Cell[4276, 105, 189, 2, 30, "Output"],
Cell[4468, 109, 151, 2, 30, "Output"]
}, Open  ]],
Cell[CellGroupData[{
Cell[4656, 116, 5100, 120, 332, "Input"],
Cell[9759, 238, 1026, 19, 30, "Output"],
Cell[10788, 259, 921, 15, 30, "Output"],
Cell[11712, 276, 1034, 20, 30, "Output"],
Cell[12749, 298, 1515, 35, 30, "Output"]
}, Open  ]],
Cell[14279, 336, 619, 9, 65, "Text"],
Cell[CellGroupData[{
Cell[14923, 349, 1313, 29, 152, "Input"],
Cell[16239, 380, 2262, 43, 231, "Output"],
Cell[18504, 425, 2174, 41, 249, "Output"]
}, Open  ]],
Cell[20693, 469, 749, 14, 137, "Text"],
Cell[CellGroupData[{
Cell[21467, 487, 3487, 84, 352, "Input"],
Cell[24957, 573, 4301, 76, 231, "Output"],
Cell[29261, 651, 2101, 40, 243, "Output"],
Cell[31365, 693, 5569, 97, 249, "Output"],
Cell[36937, 792, 3113, 57, 239, "Output"]
}, Open  ]],
Cell[CellGroupData[{
Cell[40087, 854, 106, 1, 71, "Section"],
Cell[CellGroupData[{
Cell[40218, 859, 16004, 390, 66, "WolframAlphaShortInput"],
Cell[56225, 1251, 77, 1, 30, "Output"]
}, Open  ]],
Cell[CellGroupData[{
Cell[56339, 1257, 200, 5, 31, "Input"],
Cell[56542, 1264, 78, 1, 30, "Output"]
}, Open  ]],
Cell[CellGroupData[{
Cell[56657, 1270, 223, 5, 31, "Input"],
Cell[56883, 1277, 99, 1, 30, "Output"]
}, Open  ]],
Cell[CellGroupData[{
Cell[57019, 1283, 222, 5, 31, "Input"],
Cell[57244, 1290, 92, 1, 30, "Output"]
}, Open  ]],
Cell[CellGroupData[{
Cell[57373, 1296, 7638, 160, 63, "WolframAlphaShortInput"],
Cell[65014, 1458, 1324, 41, 55, "Output"]
}, Open  ]],
Cell[66353, 1502, 409, 8, 31, "Input"],
Cell[CellGroupData[{
Cell[66787, 1514, 12018, 256, 63, "WolframAlphaShortInput"],
Cell[78808, 1772, 1444, 44, 56, "Output"]
}, Open  ]],
Cell[80267, 1819, 96, 1, 31, "Input"],
Cell[80366, 1822, 94, 1, 31, "Input"],
Cell[CellGroupData[{
Cell[80485, 1827, 46381, 981, 83, "WolframAlphaShortInput"],
Cell[126869, 2810, 435, 13, 54, "Output"]
}, Open  ]],
Cell[CellGroupData[{
Cell[127341, 2828, 184, 3, 31, "Input"],
Cell[127528, 2833, 98, 1, 30, "Output"]
}, Open  ]],
Cell[CellGroupData[{
Cell[127663, 2839, 463, 7, 52, "Input"],
Cell[128129, 2848, 125, 2, 30, "Output"],
Cell[128257, 2852, 116, 2, 30, "Output"]
}, Open  ]],
Cell[128388, 2857, 136, 2, 31, "Input"],
Cell[128527, 2861, 293, 7, 52, "Input"],
Cell[128823, 2870, 102, 1, 31, "Input"],
Cell[CellGroupData[{
Cell[128950, 2875, 135, 2, 31, "Input"],
Cell[129088, 2879, 68, 1, 30, "Output"]
}, Open  ]],
Cell[CellGroupData[{
Cell[129193, 2885, 143, 2, 31, "Input"],
Cell[129339, 2889, 122, 2, 30, "Output"]
}, Open  ]],
Cell[CellGroupData[{
Cell[129498, 2896, 212082, 3578, 83, "WolframAlphaShortInput"],
Cell[341583, 6476, 10807, 265, 212, "Output"]
}, Open  ]],
Cell[CellGroupData[{
Cell[352427, 6746, 237, 5, 31, "Input"],
Cell[352667, 6753, 71, 1, 30, "Output"]
}, Open  ]],
Cell[352753, 6757, 1000, 23, 172, "Input"]
}, Open  ]]
}, Open  ]]
}
]
*)

(* End of internal cache information *)

(* NotebookSignature uvp30LEQZiDcSDwmeMXvwqW# *)
