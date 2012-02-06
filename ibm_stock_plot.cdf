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
NotebookDataLength[    279588,       4857]
NotebookOptionsPosition[    279504,       4837]
NotebookOutlinePosition[    279847,       4852]
CellTagsIndexPosition[    279804,       4849]
WindowFrame->Normal*)

(* Beginning of Notebook Content *)
Notebook[{
Cell["\<\
some of the very basic manipulations found in the following blog post: \
http://blog.wolfram.com/2011/11/04/the-ongoing-stock-market-crash/\
\>", "Text",
 CellChangeTimes->{3.5295887849972897`*^9}],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"GraphicsColumn", "[", 
  RowBox[{"MapThread", "[", 
   RowBox[{
    RowBox[{
     RowBox[{"DateListPlot", "[", 
      RowBox[{
       RowBox[{"FinancialData", "[", 
        RowBox[{"\"\<IBM\>\"", ",", "#"}], "]"}], ",", 
       RowBox[{"Joined", "\[Rule]", "True"}], ",", 
       RowBox[{"Filling", "\[Rule]", "Bottom"}], ",", 
       RowBox[{"PlotLabel", "\[Rule]", "#2"}]}], "]"}], "&"}], " ", ",", " ", 
    RowBox[{"{", 
     RowBox[{
      RowBox[{"{", 
       RowBox[{"All", ",", 
        RowBox[{"{", 
         RowBox[{"1980", ",", "1", ",", "1"}], "}"}]}], "}"}], ",", 
      RowBox[{"{", 
       RowBox[{
       "\"\<IBM from 1950 to Present\>\"", ",", 
        "\"\<IBM from 1980 to Present\>\""}], "}"}]}], "}"}]}], "]"}], 
  "]"}]], "Input",
 CellChangeTimes->{{3.522463655997875*^9, 3.52246371616975*^9}, {
  3.522463769529125*^9, 3.52246378454475*^9}, {3.52246383885725*^9, 
  3.522463857326*^9}, {3.522515330466625*^9, 3.522515332154125*^9}, {
  3.522515820591625*^9, 3.522515854060375*^9}, {3.522519057701*^9, 
  3.522519058997875*^9}, {3.52260121709375*^9, 3.52260122128125*^9}, {
  3.522602438703125*^9, 3.52260245621875*^9}, {3.526143611861877*^9, 
  3.5261436474934397`*^9}, {3.526143735332223*^9, 3.526143855636252*^9}, {
  3.5262194547238326`*^9, 3.5262194552698326`*^9}, {3.5295860400502877`*^9, 
  3.529586052830019*^9}}],

Cell[BoxData[
 GraphicsBox[{{}, {InsetBox[
     GraphicsBox[GraphicsComplexBox[CompressedData["
1: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
Sn9N7/B7YqjUv7B/jWHwF73/MFnfCPsvHQb9WEeHwb6RZ8RG3+HS/4U+fx7O
fHZoOPY/z7/DsV9qaUZgvw4tGMH9whqBfOp9RKynHMn3PRVGIj+r+0ZK+sL+
90cifozkP9Efyv6E/Gd3+Yn12j/EZtJRoB8qPQr+pnQaxXw8k/MjJUaTX300
9OebxnFj22juD8XGsN5pO4bvzyaPQT1j/kEc+nsM6j+9lYH3gYEJBupFa4vB
+9/rhrSHqNe+Hcvz29ixOI/Ym8by/HZ1rMx3ot5UxvF8lG8c6lll4zjM914a
x/Pb53Go9wK5x/O+PDQe9YzxYTz8J5hjAuoZu/4E3p8PnwB9mG8nQL5Q1onA
St2JPF8Mmcj3feZE3J9HMk/C+VStNQn1vm/gJN6vL5/E+/Xjk6A/rfpk3tf6
J2O+uWQyzuehI5Nx/lKeTeZ5vs8U3KdYi6bgfXzk4BTcP6pPptjufhZf6qnA
9vyp6DfwHCDWHk7F+3l/imm4nzLLT8P9nXfvNNvdz6Xfm2a7+7MCnumSX9HP
UGa67e6fi3SeLuND9NPdmW67+/mCSWZIfkT/XqkZtrt/0NNxho3+1xkzbHf/
aSjRTNvdL6mUmGm7+zG97WeCvj51pu3uHwz8OVPaV/TnFZ3Ffos2s6A/YxJx
MDhL6kfwf3MW5PO3nC39TfQ3jp8N/YR+my39w8HK9dly/3SwN04A/FsGceTX
APSrXgmAnu9rQOY/of+8c8CfZ8Mc8KNdnCPlcfTr/zRH5gPR/5lrrtSP4N83
V9IX/aXniQPv50p/F/2r2efJ9RwcqTcP9g6+mSflE/2i6nzb3Q/uqTPfRn/q
4Pmg5185H+spmRfAX7w1F0j9CH4HLJD2EfwuWwB61rEFsIev2kLIb/RbCHmD
ixfiefvwQujT83ShjB+hz96LbHd/bGghsXJwEeT1Pl6E5/VUPwNH5v0Mfar7
f4a8vgccN35YLP1f8F9use3uH9b2LLbd/c7+u4vleqJ/OdkS2/09RejHJVLf
4nuNzkts9/cPgZglcn3RL514KeI3UpJY7bDUdvcr+6YvBf/2d8sk/8Kfiy+z
3f29Wjti/5RliH9z6zJpTyeevUWWS/2LfNF6OZ4PTCS2fl+O+IvcWC79V+SH
cSukPkS/1uYVUh8iP19bIeUV/H6zEvEZGrMS/Ci/rrTd/czeyyvBv/5lpe3u
Tw7kMW13/7C63gQ/vgsm8rfx0UR+D+b8BfuD3YDYf+4X9sO9+wXvS0LZVgEr
9Vbh/YJ36Cr0d1mvV/E+Pstq7J9q7dW4//QNWs33HStW4/2dJ9Ma8KfVWAN+
/P2JzaVr8D4mdHQN3o/oVddiPwz0XYv3OdbPa7F/Rg6txX6u/rsW+3Ww1zq+
j1mwDvQ81jrIoz1ah3rBn3I96Cnz1uP9uHffetQP+n3iQPINeN9nld3A+mL3
Bqxn/LMB73eCSTdi3C69EfbwdNrI94nhjXyf9P2vGFdK/gp7ePVf8X5Qn/Yr
+I8k3AR+1GKb8L7F15bjwT828T7buxn3p/5WmzFuTtjM/r4tm/m++QZxoPlv
qFetscSRTb/x/vgqsU/ZgnrSHr0F97+ejVtwP6xd2oLzhf8zsZn7d9T73nW/
Yz099Dv4C3z4nf0fOYLoZzDOBlEPB98GUQ/bWf9Afe6p+wfOF6FXf7A/MstW
rO+ttRXz9YEcDyzfivtyNeOf4NdX/U/Ia/iJg0v+xPP2kT9xX+6vsg32NPts
A7+hRdvwvHJoG/X7ZBvsZ/X8C+eTyPy/0K+hHviL7w8e/sX3dym243zpmbsd
5xtt73acp/z3tuO8Znp2oB8qVGYH+v/0XTtwXxu4swPnYyvJTtwfRErt5Pm6
407eTyTahftYT4ldWE9rvwv8+KfuwnlSSbgb73+8RXfjvkNvsxv3v4FJu3Hf
bgV3Yz1f4T0877fcg+eD4/dAPvu3PexXvL4H9w9ms724rw0Ze3HfoWwi9l7Z
i35K/ete3LdFRu3DfZK6YR/us3wXOW582of702Cu/bxvXbsf92f+8/ulPcR9
6/v9uJ8LZT+AcaX+Aem/4v7tzAHcv1pvDuB+NqJauI9V61ig5xtsgZ790gK/
nswHcR+n1TyIcf+Ag1jPm+EQ74erHSK//Q5BfmvxIfAfOXwI96NG5cOwR7D3
YfBvLzyM+2XPwcN4Xnt8mPrscYT6nH8E/Hn3H4G8+oMjuN8M/HAU89U5R3n/
vofYuHsU/AWTHQN/9o/H4K/+ncdwf2bGHMP9WyjxcdynKaWOI569HY4jvqzo
44jPyHcnkA/U4idA39fuBO+7p5xAfHkSnMT7O63IScSrv/VJxLM58STWD/1+
kv2eLU4hn1jjTmE8svkU+3evnWK/d9PT3N/GnMZ+6Pn1NO6TtMuncZ/n/3Ia
9JRRZ3A/6F1/BvP1C2ewPwQ+ngF/Vs6z2B99a85ifzTOnWW/4TvOt7Odw37l
qXcO9Y15mjj0+hzv39TzvH+rfR760Qedh3xqphDu13w1QqBv9CcOLg3xvi39
Bcjjr3qB/T59L6DfIfTzBX7fdPgC6tFApYvoz7N6XUT/TWTBRdBXrYvo1/E9
ugj6dvdLqC898y6xXt93Cc/773O+mfwy6mFv4DK/v9p9Gf1lgX8us18t6RX2
15W+gvOOseMKziPBMOfb319Ff5mn5FXIp+lXoa9Q1FX4k/LdNfpDsWuwp972
GurXwORrqKfU+Ndhb5/3OuoloxXHgxOu05+3XMf6/oI36M/Nb6DfJTT2Bs6X
yuYb6D/zXr2B+i8y+iboqRtvov7zXbqJ+tH4fBP3v56f/kZ/jraO2B/6G/00
5oe/cT8cynGL/Wyrb7Gf9ewtfk/09hb5z3ob/Kh1b+N8Ezx1m/3SrzjuyRIF
/rRaUZjvHxjF/p8XUbC3N2M0+NGrR/N9iD+a540l0Vjfl86GfEYVG/kk2McG
PXuRjfU8hzhuamHW8z2JlQVhfk92IAx59Ydh3k90i+H9xNwY5CPf3hj0Hxr3
YpAPgp47sK82+w7i37/rDvPFnTvsv0ryD/xJKf0P3y9s/wf0LZs4kugu+FFL
3EW+9LW/i/Xt28SehPdwftaK3oM+/G3u4T7CnHQP+cQb7z7W0wvfR/4MtOR4
5Lf7kNco8ADrB5s9YP+48YD79aYHiF/tygP004caP0S+UUY/xPnMu4Hj+sWH
eL8U+PSQ37eMfATsW/sI5znj/CO8Pwu+f8Tvp7I/5vvSVY95HjnzGO+bQ284
rmR9gvez1skn7Kd5+QT01cz/4vzjq/kv6jljAMc9z//F+UnL8JT9E9Wekt9+
xKHFT7G+nvYZ6r9A5WeYb/V+hu+7Igs5rh58hn6FYMUI6nu7B7FnfgT1trb/
/8ad9/3+BxEpj4OVbs+lvkU9P+e55NcZ1/c8l/7p4MDd53jeSvYC2DeL2Nj5
Qsrj4GDMC+lfDrYTv5T6drCn1EsZb6I/4a+XMv4dHIp+ieeVRK+k/R3sLf5K
+rfgvx3HI7deof9BTfAa6/mKEButX5P/ia/xvL/QG/BntniD8dC4N9Cn8tsb
8B/I/5b6bPoW9CJj3mK++utbac8MDr+X30r/dbDd6J20v4M9o97J/Opgbf07
KY+D/RfeSX4dbH58J/l1sHfEe9hHX/Me+g2cey/9R/D/jjiS7YP0X4ee8Qtx
8DSx/fqDzGeCf/Wj1Ifgv/ZH8Bs68VHuZw5WXhJ7M32CPvQan0BPjXyS8gh9
pv8s91vBb9XPkp+MDr99P0t9O9j+mfP9ab5IeZxxsxJxqNcX6V8OVhZ+kfw5
2Gt9kfHmYKvCV+BI96/Sfg5W530FP759X6W/C/7vf4U+PF2VsBtrgVgs6Av+
d8dil77MfzgeSvpN+D9/FPqcGYtd+gzs+AbPW+FYLPYLB0e+jxN261stGYuF
Pwv9bovFwt+EP0TFYhEfgv/vviX/xYj9bWOx0K/wh1ux2KUPb/y4mK97Y7HL
PoFWsdilX2tC3LDbXr5v44X/2+8cbBSMxWI/Efw3jyfpZXL4HxuLhX0c7NlM
HGoSP/yfPwt/GBNf8if8YWN8qW8H65eIIw0TgF/1pwRSX4LfdQlA3wglCLv9
LfghFot4d7A2PGEY/rw6IeabZxNK+wh/fpsQ/CrZvgN/ATMWi/wj9HkqFov6
RvD/6js8r2ZJRH3XSiT9S8Tb8Vgs9lcHe14Qaxm/D7vj1V/9e+l/gn//95jv
ffY96AeqJIZ8Vp/EsFdkEbGROgnkDWpJIJ/dMwnk8SxIAn60A0lgr1D5pNKf
hP92T4r48M5NGnbHu743KewXuJcU+la7JAN/vtnJZPwJf9iVDP4TvJOM/Cfx
YL5/hgf+b273SPmEP9seqU8HK98nl/xndvgvkVzy72Drz+RSHw6O3E4u7eNg
NeEPkh8H+4oSG21isdhvHOz5+wfJr4O1eClk/nKwv3AKrG+2TCHlEfyPTyH1
5WA9TkpJz8GBAillPnGw1Yw4YqSE/OqmlNK+Dg7mTSXlFfmhcSrozzM6lYxX
B2sbOO6/mErK42DvyNRSX4LftamlvgW/51PDXtb71PBv37A0iD9jVRr4T/BM
Gqlf4Q9v0oCeJ2tajJsr04Je6GRa+I/yKi3ypTdzOtDTa6YDvcgxYvU5sS9D
eum/Ih6rpYd+g/3SQ1/a0/Qynwl9ps2A583KGWT+EP7QOwP0oSzKQP2myijz
pdBvxYzIt5EeGZFv1PkZsb/59mcMu+sxu1ymsLse9HTLFHbXU9qcTJjv35MJ
+7N5NxPyh7dzZuQbfVZm5MfAzszYz62YzNi/I4mzgL4xPQv2++BfWbC/2tFZ
kI88iVTm5+Iq9tvQVhX7tTdBVuz3epGsUh5Rb7bOGnbXv+pNzvfFzQb5jELZ
pH8Jfltkw/5mj8sG/v3fZMe4mT878m2oaXb4g/fX7NCvlScH9B9plAP6VUfl
AD3f+hxhd31nXMjB+PLlRD2hjciJcf+anIhn81xOxEfoXU7mh6G5kI8Cv+Si
/57OxfridS7Er6rmxvrBFbm5X5zIjXrB8zI37Z8pD/Tjr5EH+583kgf7kZ4+
L/nrm1f6l4j3NPmQn4OViO1e+ZCfPQvzYT8wU+YHDlXIL/l3sNIjP573zssv
/csZ1/fll/Eg9q+yBbD/qF0LyHwo9q9AAexXxu4Ckl4Wh/9/Csj1HKx1Kij1
62D/TInTqQ7/OziuJC4k6Ts4MK2QjBdnvrWtEOhHogrhefW7wuDHV6yw1LeD
7T8KS393sOdWYaynxfdKewl+vV6sZ7by/udfpR1+vDe80v4O1r8tIu3v4EDB
IphvNS/yX/wlc3BkLHEwX9H/+KnsYLtJ0f/0n93BnjFFpTwO1jYWlfnH4S+U
u5j0B6HPRsVgL+9PxSR/zri+rpiMZ6Hv0P9hh77aoDj04RteXMarg43VxWV8
C/7PFv+Pn3iC/7fFZbwIfQ4pQfubJf7zt0IODp0qAX0qr0tAXm+WktCHtbwk
/eE4sfqipKQn+M9YSvIj/Ld6KfiL52gpuf8Jf3hWCvT86UrD38wqpaGfUJ/S
1O+T0qAfSP2jzD+iftR+hH0iPYnVBT9KfTs4mKKMzEfCn8uXAT+e7mUgrza3
jIxvwf/eMjI/CP8oW1byL/yjC7E+uyyeD+wqi/jxdSxHfc4oh3o4uL2czB8i
n9nlpDwin31fHvWiObU88l/oz/Kgp0QRexNWkPYR/BatAH1FghWQ39S/Oe6L
VxH0jMIVpTwiH7esKPUr9q/rFZHP/XE01GtmAeJQMw31ojJWw/4Q+Kphf7Hy
VmL91bgSznfq6ErYD30bKlGfDSuj3tZGVkY96F9bGfujeb4y9jtv/SrA+rAq
kDewqgr2Z+tMFdSnkTdVoC9jcFXYN7iyqswXjr7tk1VxnvG8qor6VstcDfVD
aFk1ntePV0M9631eDfWBnqE66otAteqQRz1SHfWe72l1nHeNtDVQHwQr18D+
bfeuQX94XAP1mJmqprSXOA/3rIl61Du/Juph64daqPci5WrxfqFbLfiXbw7H
jT21WL+UqQ37a51rY9w/qzbqI3NnbdZfMcR6hzrQT2B6Hfin9VcdrBeJroP7
BjVRXdgrOKUu7G1vrQt+PLfrgr6WoB7qV3+RehhXgvVQj3pv1kM9rcetD/sE
CtXHecZqUV/aW9Tj14iNbxrw/JC/Aepju2kDnAc8BrH5hc+H8vhwXlEaE3tH
+eAf+nofzguRnA3hL6qvIeTzjeC4saahtKfg/1zDsPt+3T+0Ee47zV8agZ/Q
6UZYX3nTKOy+7w4Mahx2v6+wVjSW9MR9+onGUp/ifcDLxjgf+jI1wXr20iZh
9HsdaxJ29ztpkSbSfuL9VvqmYXd/lVm1adj9Psx7uGnY3Z+p/9sU9AJpmoXd
7+OsSs3wfKRXMxlv4v3bo2Zhd79jMGXzsPv9oV2hedjdL+Tp0Rzra/OaY/1Q
8hZh9/s9pRyxt2uLsLu/TQ+0kP4n+tV2t5D8i361H1uG3f1svk4tpTyif3Fm
S6lf8X5uR0uc3+1wy7D7fYlfbyXlF/2L01rBvqFtrfC8Et0q7H6f5P2uddj9
Psma3FrKI/zjj9Zhdz+eeqt12N1v6YvfJux+32d422Dc83sbGf/i/eGNNmH3
+0T/t20xbhZsG3Z/Xxxq3jbs7vfUr7aV/i3O70o7Kb/gP1+7sPv9WqRJO/Cn
jmkHeYOf22F9O3f7MN5/Nmov84Pgd137sPv9qZJTD7v7Bb0N9DDe1w7Xw+73
z4HVnG+d1eX64n1y3Q7wP2NIB2kv4c9mB6k/4c+nOsAfPa87gJ45sKP0B/E+
eXnHsLv/WTnREf7vfdEx7O7/0zN2Crv71SJLOoXR73O0U9jdH+B71gn0jHSd
w+5+pGCVzmH0FxzqHHb3I5ipu0gs+g20LlJfgt9eXcLo/3vYJezuP4iU7xp2
98Op3buG3f0rvrldw+5+NtvTLYzvMcp2C7u/t9G6EPtndwuj32RXN+jDW7p7
2N3vo3fsjvUDM7qH3f0R1vbu0FfE7g59G+17hN39g8GpPaBv+88eYXd/pCeq
B/ShJewZdvdfhCb1DLv7wZQ/esI+3r97ht39ZXq8XmH8/lPhXmF3f6S6pRfk
9V3vJf1X9J/E6R129xsFC/SGve1mvcP4vbIrvcPoh/naO+zutwvl7QP7KU36
SPqiP3B0n7C73yWSq2/Y3e+jNuwL/nwj+4bd/VXG2r5h9/cjnhz9IJ9Wvx/m
+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
2WB95bfZwD58qbNzfCV9rpQd9blndn4/6cOr7KwPpM8pcsD9hpID9DvQLQfn
B6TPc3LA+ulJc6I+lM0J8nA654T1kGfmhPW1S+UC+Uodc4H/U6bnAv3y70Ns
BHNBPPC2zw3PU6fkhvXVd+eOdPc3LDs353fkj+Pmgfu1iXmAj7kDsf0gD6y3
FDsv2LNSKC/4r4CZF/yX515e8DdqgXywXnrzfLj+t/NxvCR/Fi0/+rO8+Xm+
tP5N8oO+2Fp+8L/+P/nRn+UqAPoQaFgA3u8Zjti7rgC8z8ruhfk6Pi/7D9Fv
lod42T8L7FvtZXkIrF32sr1Tv71uQV4vgZWBBdl/Uf99RcFI2O+4UDC8PrMF
DnzGcX1ZIdZX6refLRTm3472Nz4UinTvl8gZCrO+C2wuLsz+jPZfTiGW3hVm
/Sa+aYvA8/xVisD1nhNFeD0E9r4pwutL+wWpisK4XrEo+wfi36NopHu/xPey
KLxfS14M+ZcvBnzsrsV4vUjes4tFwn5BkuKRsP9SpjjHU4E9nYtHuvcTvDOK
Q7xVDxQH/ZL/KcH5GvmvaSVgXNtbgteP9PdJCYh3SruS4B/9k0v+j6qrDHeq
Z7blxb0Hd4o7FHco7lDcobhDcYfiDsUdijsUdyjuUNyh2OEULe5wz82a9T07
P+fJlpXJGskkO1uPZ7uLa/f7HxfX7MsUp4RuXxN12bejhO5/H5TQnm+JWVLX
d/6SGn8D20qGa+tF9/TrbdFKMd6CD3lLadd7mpRifgp93i6ljbcjSmnteneu
0jqfG5bmeIPPI0trfHP9La3x3Zu9DOMR+FyvTLhxPc88vAzxYr1uXRnyC/aV
pSznE+Czvax2vXVI2XDjepdjdVnqG+tfl8syX1Xro5ZaNsYnJdsH2jh+Snat
sNE/Kdl7wcZ4p+TAl/9dn0fpt185rd2zTJf9Z8uRL0o2fSpHe1CyNW154ldy
6FR5xmvgDemyPVUF7X5XxQra/eYTervtbQXam5KdySuyfwq/p5wu+7tVZLxR
suNVRdqTkt1JKvH5SvaVqcR4CfydKzE/V+2W2ZU4ftBnWGX6d+izpC6bO1bW
9GVzV9ae7zxQWXu+qXgVxmfos10V2rOSHdOqaO93761Cf6Bk35Mq9P/qeXZH
VcYHJbsmV6X+lOzdVZX2qNbfA4+qMj5ifT92Na3dM6FauHG93r+9Wrhx/d/0
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
/6SHs8Sf+5CvN5/N+QXy9XGU8b9lk3c28eD7unu67Ig2h/Mb5O+j5zC+Y76x
ZQ7nG8jfb8/h/Bz5WpS52vh4c83l/bCnjXMZ3xAfbsxlvo3zc//O5XxExSN/
9nmMn4jP9edx/ob4dnWeFu98v+axHoD4lmW+Fs8t9vnUP+LzkPnCXyvyh+/z
qU/E50wLqA+cJ1drAccD8XngAj5PtXtW6LLVspB8wvl21ReSf0p291vI8Vay
b9lC+m+cJ3d2If2ROu/O23uR4LMpObB4Ee1DyebTi+T9dUoovKFF1LeS/T0X
M/4p2bRwMflbUuE9sZj5oJIdb/8nq+vdyZfQPtX7LPOWMD7gfDvfEvonnM/3
agnrQzifL8lS2puSA2WWav13Hl7KeAV9vtTb/WHLGF9xnmCpZYx/0HfHZbQ/
9X7f82X03wp/KMFy+mPgL75cw2dvt5z2omTXtOXa+83xPBp/bEU8XB8EHxwe
Gd/5yNcme8gf5Gu79HZHwRW0J5wv2HKFNv6+CSuYjyu8oe0rWF+DPput5HiD
D2NX0v8B77aVfB/4e3cl/Rn0HXUV7Q3nHY5eRXuAPjevIr/A31ur+D7Yn2k1
81fYX87VjPfI3zes5nwK+fv11YyPyN//rNby70C2NZq9muutYXxF/u5fo+XT
/p96uynLWi1ft9bRZcfgtXr+/m2thseScR3nd8Bfcx3jH/APWMf5HfB71mn4
benXM39RsrPaeq4fgQ9912v+xr9UbzedXU9/CT5U3kB/jvMmnRtYv1FyaNEG
jX+WUxs4n4R/e79Bm5+YF2zU9Gc7vpH5EfC+2ajNtzzJNmnzB+vcTbQv6PPo
Jk0/7uAmjR++xJsZH3C+fenN5JuSXYc20x9gvhG+mfU9zDfMW8hXzDdKbiH/
EU86bKH/QX72bAvtGflZgq3a+63FtnI9DPOPtlvpnzH/mLqV8QP5TtxtHC/V
bi+8jf4A+Ftv0673TtpG/QL/zm30F4h3Bby0R8S7Fl76B+Af79Xm69b7Xtaf
kd803U7+Ij8bs117vmXrdu399jvbtfmM678dfB/ys1E7tPzDtmmHVk9w3tyh
zzf+7dDqSf4cO7X5hmP9TtoT8p1rO5m/It/5vVObP4Sy7mI8gf3V3cX4CPu6
sov5KPzDj12avZsz79bs21Z7t8Zf56DdzBdgX992a/ZhzbBHqx84auyh/hCf
++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
vBNEP0WBv8mECON5Mt7RE+h/kR9EmajlT85cE4V/4cgvG06U8XiO+DtyIvcf
IH/YOJH2hfwg+ySu5yM/qzcpwvh9RGjYJOFXX8TfdZM4voi/VycxniE/qDNZ
m4+bh0yO0M5LXD2Z9RDgvzyZ9gv83ydr77cOnCLjNwb5zYopwocA8F+Ywvom
8H+ZwvgF/OmnarL37FTyGXg/TtXzsbTTRD+zgLfKNM7voM9T07T8yhSaxvkM
+JBqOtfDwYeK02U8KmL8307nfBXjn3xGhPG8Vle5GZx/gL/dZnD+Av7OncH6
KewpiVv8U3zwt4yb9XHwt7Ob6w3g72y3Fu+sh920R/iDkjMZv6G/DjNZv8f4
u2eyvozxPzCT683Iv57P1OortmmzOP/FeO+dxf1cGO8ns6Q/RzA/jjtb2y/j
mDxb8N/G/GzXbNYXMd6PZnN8Mb+MNUf4eh3zy4JztHqGd/sc7tfA+N+fI/c3
xfjHmKu126xzNf46m81l/R7jf3euVt+3Rp3H9WbwNc885n/ga+N5wv/ewD9q
nuAbDX2a5sv7UV9y5ZzP+Ar+Npgv768A/CPmC3+TAf+G+eQ36g/ZFmj1GH/d
BaynAv+wBVq9yLp2gdhff+jfv4D1eOi39kLOF6DfwQsZv1F/WMX2tMB/aSH9
O/B/Wyj9yQz9Dlik1WucnkWCLzr4cX6RNt7+z4u0eqcp/WLm79Dv0sWcf2D+
fmaxdn3ow2LOl4A/zRLme8BfeQnr06g3vF/C+Q3wplyq1UOdFZbS3wNvj6UR
xu9DrW+WMt6CD8mWsf4MvLZlXP8CH7ou4/4i4J2zTPiF/WiuxMs1fnlLL+f8
CnzoxPZ3wD9rOffHoF5yaDnnT+BDCY+0o55s6uDhejD4MMOj9d+x36PhcT/z
aP2xtF3B9RfweeoK6f9i4N+zQp53EvgDK8QeVgB/nJVaPdk5aaWMH+KPZ+dK
7tcEHx6u1PCZYq3S6unWAqvoH6Ff7yqut0C/91axPg7/HH21yJjv2vOt1vyf
q+lqef9y2Nud1Vo9x/bfGq5nAX/uNayvwz83WsN6GPyzaw3zecSLf2u0+aA7
x1rRtx3+uf5abX4YGr6W/hP416/lfB3xI+s61geRD9t12Tx0nZZ/2das4/wB
+fKVdfK83sjXaq9nfRL52qD1rHdiP+vK9aynI5+/uF7bD+v7up58RT7ffwPX
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
n03+STvB/wBNWAiv
       "], {{{}, 
         {Hue[0.67, 0.6, 0.6], Opacity[0.2], EdgeForm[None], 
          GraphicsGroupBox[PolygonBox[CompressedData["
1:eJwk00OwIAqQRcHX9m/btm3btm3btm3btm3btq3pyYlZZFRF3PVJ2Kh9pXaB
AwICAhEy4//fEBn//w9OMIIShMD/txPAvwwBAf/DX/7wm1/85Aff+cZXvvCZ
T3zkA+95x1ve8JpXvOQFz3nGU57wmEc85AH3ucdd7nCbW9zkBte5xlWucJlL
XOQC5znHWc5wmlOc5ATHOcZRjnCYQxzkAPvZx172sJtd7GQH29nGVrawmU1s
ZAPrWcda1rCaVaxkBctZxlKWsJhFLGQB85nHXOYwm1nMZAbTmcZUpjCZSUxk
AuMZx1jGMJpRjGQEwxnGUIYwmEEMZAD96Udf+tCbXvSkB93pRle60JlOdKQD
7WlHW9rQmla0pAXNaUZTmtCYRjSkAfWpR13qUJta1KQG1alGVapQmUpUpALl
KUdZylCaUpSkBMUpRlGKUJhCFKQA+clHXvKQm1zkJAfZyUZWspCZTGQkA+lJ
R1rSkJpUpCQFyUlGUpKQmEQkJAHxiUdc4hCbWMQkBtGJRlSiEJlIRCQC4fmP
cIQlDKEJRUhCEJxgBCUIgQlEAP/S65+//OE3v/jJD77zja984TOf+MgH3vOO
t7zhNa94yQue84ynPOExj3jIA+5zj7vc4Ta3uMkNrnONq1zhMpe4yAXOc46z
nOE0pzjJCY5zjKMc4TCHOMgB9rOPvexhN7vYyQ62s42tbGEzm9jIBtazjrWs
YTWrWMkKlrOMpSxhMYtYyALmM4+5zGE2s5jJDKYzjalMYTKTmMgExjOOsYxh
NKMYyQiGM4yhDGEwgxjIAPrTj770oTe96EkPutONrnShM53oSAfa0462tKE1
rWhJC5rTjKY0oTGNaEgD6lOPutShNrWoSQ2qU42qVKEylahIBcpTjrKUoTSl
KEkJilOMohShMIUoSAHyk4+85CE3uchJDrKTjaxkITOZyEgG0pOOtKQhNalI
SQqSk4ykJCExiUhIAuITj7jEITaxiEkMohONqEQhMpGISATC8x/hCEsYQhOK
kIQgOMEIShACE4gA/qXTP3/5w29+8ZMffOcbX/nCZz7xkQ+85x1vecNrXvGS
FzznGU95wmMe8ZAH3Oced7nDbW5xkxtc5xpXucJlLnGRC5znHGc5w2lOcZIT
HOcYRznCYQ5xkAPsZx972cNudrGTHWxnG1vZwmY2sZENrGcda1nDalaxkhUs
ZxlLWcJiFrGQBcxnHnOZw2xmMZMZTGcaU5nCZCYxkQmMZxxjGcNoRjGSEQxn
GEMZwmAGMZAB9KcffelDb3rRkx50pxtd6UJnOtGRDrSnHW1pQ2ta0ZIWNKcZ
TWlCYxrRkAbUpx51qUNtalGTGlSnGlWpQmUqUZEKlKccZSlDaUpRkhIUpxhF
KUJhClGQAuQnH3nJQ25ykZMcZCcbWclCZjKRkQykJx1pSUNqUpGSFCQnGUlJ
QmISkZAExCcecYlDbGIRkxhEJxpRiUJkIhGRCITnP8IRljCEJhQhCUFwghGU
IAQmEAH8S6t//vKH3/ziJz/4zje+8oXPfOIjH3jPO97yhte84iUveM4znvKE
xzziIQ+4zz3ucofb3OImN7jONa5yhctc4iIXOM85znKG05ziJCc4zjGOcoTD
HOIgB9jPPvayh93sYic72M42trKFzWxiIxtYzzrWsobVrGIlK1jOMpayhMUs
YiELmM885jKH2cxiJjOYzjSmMoXJTGIiExjPOMYyhtGMYiQjGM4whjKEwQxi
IAPoTz/60ofe9KInPehON7rShc50oiMdaE872tKG1rSiJS1oTjOa0oTGNKIh
DahPPepSh9rUoiY1qE41qlKFylSiIhUoTznKUobSlKIkJShOMYpShMIUoiAF
yE8+8pKH3OQiJznITjaykoXMZCIjGUhPOtKShtSkIiUpSE4ykpKExCQiIQmI
TzziEofYxCImMYhONKIShchEIiIRCM9/hCMsYQhNKEISguAEIyhBCEwgAviX
Rv/85Q+/+cVPfvCdb3zlC5/5xEc+8J53vOUNr3nFS17wnGc85QmPecRDHnCf
e9zlDre5xU1ucJ1rXOUKl7nERS5wnnOc5QynOcVJTnCcYxzlCIc5xEEOsJ99
7GUPu9nFTnawnW1sZQub2cRGNrCedaxlDatZxUpWsJxlLGUJi1nEQhYwn3nM
ZQ6zmcVMZjCdaUxlCpOZxEQmMJ5xjGUMoxnFSEYwnGEMZQiDGcRABtCffvSl
D73pRU960J1udKULnelERzrQnna0pQ2taUVLWtCcZjSlCY1pREMaUJ961KUO
talFTWpQnWpUpQqVqURFKlCecpSlDKUpRUlKUJxiFKUIhSlEQQqQn3zkJQ+5
yUVOcpCdbGQlC5nJREYykJ50pCUNqUlFSlKQnGQkJQmJSURCEhCfeMQlDrGJ
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
iAD+JdM/f/nDb37xkx985xtf+cJnPvGRD7znHW95w2te8ZIXPOcZT3nCYx7x
kAfc5x53ucNtbnGTG1znGle5wmUucZELnOccZznDaU5xkhMc5xhHOcJhDnGQ
A+xnH3vZw252sZMdbGcbW9nCZjaxkQ2sZx1rWcNqVrGSFSxnGUtZwmIWsZAF
zGcec5nDbGYxkxlMZxpTmcJkJjGRCYxnHGMZw2hGMZIRDGcYQxnCYAYxkAH0
px996UNvetGTHnSnG13pQmc60ZEOtKcdbWlDa1rRkhY0pxlNaUJjGtGQBtSn
HnWpQ21qUZMaVKcaValCZSpRkQqUpxxlKUNpSlGSEhSnGEUpQmEKUZAC5Ccf
eclDbnKRkxxkJxtZyUJmMpGRDKQnHWlJQ2pSkZIUJCcZSUlCYhKRkATEJx5x
iUNsYhGTGEQnGlGJQmQiEZEIhOc/whGWMIQmFCEJQXCCEZQgBCYQAfxLqn/+
8off/OInP/jON77yhc984iMfeM873vKG17ziJS94zjOe8oTHPOIhD7jPPe5y
h9vc4iY3uM41rnKFy1ziIhc4zznOcobTnOIkJzjOMY5yhMMc4iAH2M8+9rKH
3exiJzvYzja2soXNbGIjG1jPOtayhtWsYiUrWM4ylrKExSxiIQuYzzzmMofZ
zGImM5jONKYyhclMYiITGM84xjKG0YxiJCMYzjCGMoTBDGIgA+hPP/rSh970
oic96E43utKFznSiIx1oTzva0obWtKIlLWhOM5rShMY0oiENqE896lKH2tSi
JjWoTjWqUoXKVKIiFShPOcpShtKUoiQlKE4xilKEwhSiIAXITz7ykofc5CIn
OchONrKShcxkIiMZSE860pKG1KQiJSlITjKSkoTEJCIhCYhPPOISh9jEIiYx
iE40ohKFyEQiIhEIz3+EIyxhCE0oQhKC4AQjKEEITCAC+JdE//zlD7/5xU9+
8J1vfOULn/nERz7wnne85Q2vecVLXvCcZzzlCY95xEMecJ973OUOt7nFTW5w
nWtc5QqXucRFLnCec5zlDKc5xUlOcJxjHOUIhznEQQ6wn33sZQ+72cVOdrCd
bWxlC5vZxEY2sJ51rGUNq1nFSlawnGUsZQmLWcRCFjCfecxlDrOZxUxmMJ1p
TGUKk5nERCYwnnGMZQyjGcVIRjCcYQxlCIMZxEAG0J9+9KUPvelFT3rQnW50
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
IiUpSE4ykpKExCQiIQmITzziEofYxCImMYhONKIShchEIiIRCM9/hCMsYQhN
KEISguAEIyhBCEwgAvgXRf/85Q+/+cVPfvCdb3zlC5/5xEc+8J53vOUNr3nF
S17wnGc85QmPecRDHnCfe9zlDre5xU1ucJ1rXOUKl7nERS5wnnOc5QynOcVJ
TnCcYxzlCIc5xEEOsJ997GUPu9nFTnawnW1sZQub2cRGNrCedaxlDatZxUpW
sJxlLGUJi1nEQhYwn3nMZQ6zmcVMZjCdaUxlCpOZxEQmMJ5xjGUMoxnFSEYw
nGEMZQiDGcRABtCffvSlD73pRU960J1udKULnelERzrQnna0pQ2taUVLWtCc
ZjSlCY1pREMaUJ961KUOtalFTWpQnWpUpQqVqURFKlCecpSlDKUpRUlKUJxi
FKUIhSlEQQqQn3zkJQ+5yUVOcpCdbGQlC5nJREYykJ50pCUNqUlFSlKQnGQk
JQmJSURCEhCfeMQlDrGJRUxiEJ1oRCUKkYlERCIQnv8IR1jCEJpQhCQEwQlG
UIIQmEAE8C+y/vnLH37zi5/84Dvf+MoXPvOJj3zgPe94yxte84qXvOA5z3jK
Ex7ziIc84D73uMsdbnOLm9zgOte4yhUuc4mLXOA85zjLGU5zipOc4DjHOMoR
DnOIgxxgP/vYyx52s4ud7GA729jKFjaziY1sYD3rWMsaVrOKlaxgOctYyhIW
s4iFLGA+85jLHGYzi5nMYDrTmMoUJjOJiUxgPOMYyxhGM4qRjGA4wxjKEAYz
iIEMoD/96EsfetOLnvSgO93oShc604mOdKA97WhLG1rTipa0oDnNaEoTGtOI
hjSgPvWoSx1qU4ua1KA61ahKFSpTiYpUoDzlKEsZSlOKkpSgOMUoShEKU4iC
FCA/+chLHnKTi5zkIDvZyEoWMpOJjGQgPelISxpSk4qUpCA5yUhKEhKTiIQk
ID7xiEscYhOLmMQgOtGIShQiE4mIRCA8/xGOsIQhNKEISQiCE4ygBCEwgQjg
XyT985c//OYXP/nBd77xlS985hMf+cB73vGWN7zmFS95wXOe8ZQnPOYRD3nA
fe5xlzvc5hY3ucF1rnGVK1zmEhe5wHnOcZYznOYUJznBcY5xlCMc5hAHOcB+
9rGXPexmFzvZwXa2sZUtbGYTG9nAetaxljWsZhUrWcFylrGUJSxmEQtZwHzm
MZc5zGYWM5nBdKYxlSlMZhITmcB4xjGWMYxmFCMZwXCGMZQhDGYQAxlAf/rR
lz70phc96UF3utGVLnSmEx3pQHva0ZY2tKYVLWlBc5rRlCY0phENaUB96lGX
OtSmFjWpQXWqUZUqVKYSFalAecpRljKUphQlKUFxilGUIhSmEAUpQH7ykZc8
5CYXOclBdrKRlSxkJhMZyUB60pGWNKQmFSlJQXKSkZQkJCYRCUlAfOIRlzjE
JhYxiUF0ohGVKEQmEhGJQHj+IxxhCUNoQhGSEAQnGEEJQmACEcC/iPrnL3/4
zS9+8oPvfOMrX/jMJz7ygfe84y1veM0rXvKC5zzjKU94zCMe8oD73OMud7jN
LW5yg+tc4ypXuMwlLnKB85zjLGc4zSlOcoLjHOMoRzjMIQ5ygP3sYy972M0u
drKD7WxjK1vYzCY2soH1rGMta1jNKlayguUsYylLWMwiFrKA+cxjLnOYzSxm
MoPpTGMqU5jMJCYygfGMYyxjGM0oRjKC4QxjKEMYzCAGMoD+9KMvfehNL3rS
g+50oytd6EwnOtKB9rSjLW1oTSta0oLmNKMpTWhMIxrSgPrUoy51qE0talKD
6lSjKlWoTCUqUoHylKMsZShNKUpSguIUoyhFKEwhClKA/OQjL3nITS5ykoPs
ZCMrWchMJjKSgfSkIy1pSE0qUpKC5CQjKUlITCISkoD4xCMucYhNLGISg+hE
IypRiEwkIhLhfzu6pyVAlm0LoG3b3G3btm3btm3btm3btm3bvn1G34cR9QUz
qipzgfCEIyxhCE0oQhKC4AQjKEEITCACEoC/EeSfP/zmFz/5wXe+8ZUvfOYT
H/nAe97xlje85hUvecFznvGUJzzmEQ95wH3ucZc73OYWN7nBda5xlStc5hIX
ucB5znGWM5zmFCc5wXGOcZQjHOYQBznAfvaxlz3sZhc72cF2trGVLWxmExvZ
wHrWsZY1rGYVK1nBcpaxlCUsZhELWcB85jGXOcxmFjOZwXSmMZUpTGYSE5nA
eMYxljGMZhQjGcFwhjGUIQxmEAMZQH/60Zc+9KYXPelBd7rRlS50phMd6UB7
2tGWNrSmFS1pQXOa0ZQmNKYRDWlAfepRlzrUphY1qUF1qlGVKlSmEhWpQHnK
UZYylKYUJSlBcYpRlCIUphAFKUB+8pGXPOQmFznJQXaykZUsZCYTGclAetKR
ljSkJhUpSUFykpGUJCQmEQlJQHzi8R9xiUNsYhGTGEQnGlGJQmQiEZEIhCcc
YQlDaEIRkhAEJxhBCUJgAhGQAPwNL//84Te/+MkPvvONr3zhM5/4yAfe8463
vOE1r3jJC57zjKc84TGPeMgD7nOPu9zhNre4yQ2uc42rXOEyl7jIBc5zjrOc
4TSnOMkJjnOMoxzhMIc4yAH2s4+97GE3u9jJDrazja1sYTOb2MgG1rOOtaxh
NatYyQqWs4ylLGExi1jIAuYzj7nMYTazmMkMpjONqUxhMpOYyATGM46xjGE0
oxjJCIYzjKEMYTCDGMgA+tOPvvShN73oSQ+6042udKEznehIB9rTjra0oTWt
aEkLmtOMpjShMY1oSAPqU4+61KE2tahJDapTjapUoTKVqEgFylOOspShNKUo
SQmKU4yiFKEwhShIAfKTj7zkITe5yEkOspONrGQhM5nISAbSk460pCE1qUhJ
CpKTjKQkITGJSEgC4hOP/4hLHGITi5jEIDrRiEoUIhOJiEQgPOEISxhCE4qQ
hCA4wQhKEAITiIAE4G84+ecPv/nFT37wnW985Quf+cRHPvCed7zlDa95xUte
8JxnPOUJj3nEQx5wn3vc5Q63ucVNbnCda1zlCpe5xEUucJ5znOUMpznFSU5w
nGMc5QiHOcRBDrCffexlD7vZxU52sJ1tbGULm9nERjawnnWsZQ2rWcVKVrCc
ZSxlCYtZxEIWMJ95zGUOs5nFTGYwnWlMZQqTmcREJjCecYxlDKMZxUhGMJxh
DGUIgxnEQAbQn370pQ+96UVPetCdbnSlC53pREc60J52tKUNrWlFS1rQnGY0
pQmNaURDGlCfetSlDrWpRU1qUJ1qVKUKlalERSpQnnKUpQylKUVJSlCcYhSl
CIUpREEKkJ985CUPuclFTnKQnWxkJQuZyURGMpCedKQlDalJRUpSkJxkJCUJ
iUlEQhIQn3j8R1ziEJtYxCQG0YlGVKIQmUhEJALhCUdYwhCaUIQkBMEJRlCC
EJhABCQAf8PKP3/4zS9+8oPvfOMrX/jMJz7ygfe84y1veM0rXvKC5zzjKU94
zCMe8oD73OMud7jNLW5yg+tc4ypXuMwlLnKB85zjLGc4zSlOcoLjHOMoRzjM
IQ5ygP3sYy972M0udrKD7WxjK1vYzCY2soH1rGMta1jNKlayguUsYylLWMwi
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
IxnBcIYxlCEMZhADGUB/+tGXPvSmFz3pQXe60ZUudKYTHelAe9rRlja0phUt
aUFzmtGUJjSmEQ1pQH3qUZc61KYWNalBdapRlSpUphIVqUB5ylGWMpSmFCUp
QXGKUZQiFKYQBSlAfvKRlzzkJhc5yUF2spGVLGQmExnJQHrSkZY0pCYVKUlB
cpKRlCQkJhEJSUB84vEfcYlDbGIRkxhEJxpRiUJkIhGRCIQnHGEJQ2hCEZIQ
BCcYQQlCYAIRkAD8DS7//OE3v/jJD77zja984TOf+MgH3vOOt7zhNa94yQue
84ynPOExj3jIA+5zj7vc4Ta3uMkNrnONq1zhMpe4yAXOc46znOE0pzjJCY5z
jKMc4TCHOMgB9rOPvexhN7vYyQ62s42tbGEzm9jIBtazjrWsYTWrWMkKlrOM
pSxhMYtYyALmM4+5zGE2s5jJDKYzjalMYTKTmMgExjOOsYxhNKMYyQiGM4yh
DGEwgxjIAPrTj770oTe96EkPutONrnShM53oSAfa0462tKE1rWhJC5rTjKY0
oTGNaEgD6lOPutShNrWoSQ2qU42qVKEylahIBcpTjrKUoTSlKEkJilOMohSh
MIUoSAHyk4+85CE3uchJDrKTjaxkITOZyEgG0pOOtKQhNalISQqSk4ykJCEx
iUhIAuITj/+ISxxiE4uYxCA60YhKFCITiYhEIDzhCEsYQhOKkIQgOMEIShAC
E4iABOBvMPnnD7/5xU9+8J1vfOULn/nERz7wnne85Q2vecVLXvCcZzzlCY95
xEMecJ973OUOt7nFTW5wnWtc5QqXucRFLnCec5zlDKc5xUlOcJxjHOUIhznE
QQ6wn33sZQ+72cVOdrCdbWxlC5vZxEY2sJ51rGUNq1nFSlawnGUsZQmLWcRC
FjCfecxlDrOZxUxmMJ1pTGUKk5nERCYwnnGMZQyjGcVIRjCcYQxlCIMZxEAG
0J9+9KUPvelFT3rQnW50pQud6URHOtCedrSlDa1pRUta0JxmNKUJjWlEQxpQ
n3rUpQ61qUVNalCdalSlCpWpREUqUJ5ylKUMpSlFSUpQnGIUpQiFKURBCpCf
fOQlD7nJRU5ykJ1sZCULmclERjKQnnSkJQ2pSUVKUpCcZCQlCYlJREISEJ94
/Edc4hCbWMQkBtGJRlSiEJlIRCQC4QlHWMIQmlCEJATBCUZQghCYQAQkAH+D
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
1Pfvd//fJ/+/136A/wGt3AT/
            "]]]}, {}, {}}, {{}, {}, 
         {Hue[0.67, 0.6, 0.6], LineBox[CompressedData["
1:eJwU3UMQIFsSBdBp+7dt27Zt27Zt27Zt27Zt2/acXpyoiNrVovRe5s34DdpW
aBPgf//7X9D0//vfv2NAAhGYIP/OE4zghCAkoQhNGP4jLOEITwQiEonIRCEq
0YhODGISi9jEIS7xiE8CEpKIxCQhKclITgpSkorUpCEt6XAJ/8tARjKRmSxk
JRvZyUFOcpGbPOQlH/kpQEEKUZgiFKUYxSlBSUpRmjKUpRzlqUBFKlGZKlSl
GtWpQU1qUZs61KUe9WlAQxrRmCY0pRnNaUFLWtGaNrSlHe3pQEc60ZkudKUb
3elBT3rRmz70pR/9GcBABjGYIQxlGMMZwUhGMZoxjGUc45nARCYxmSlMZRrT
mcFMZjGbOcxlHvNZwEIWsZglLGUZy1nBSlaxmjWsZR3r2cBGNrGZLWxlG9vZ
wU52sZs97GUf+znAQQ5xmCMc5RjHOcFJTnGaM5zlHOe5wEUucZkrXOUa17nB
TW5xmzvc5R73ecBDHvGYJzzlGc95wUte8Zo3vOUd7/nARz7xmS985Rvf+cFP
fvGbP/zl380fgIAEIjBBCEowghOCkIQiNGH4j7CEIzwRiEgkIhOFqEQjOjGI
SSxiE4e4xCM+CUhIIhKThKQkIzkpSEkqUpOGtKQjPRnISCYyk4WsZCM7OchJ
LnKTh7zkIz8FKEghClOEohSjOCUoSSlKU4aylKM8FahIJSpThapUozo1qEkt
alOHutSjPg1oSCMa04SmNKM5LWhJK1rz7+Hdlna0pwMd6URnutCVbnSnBz3p
RW/60Jd+9GcAAxnEYIYwlGEMZwQjGcVoxjCWcYxnAhOZxGSmMJVpTGcGM5nF
bOYwl3nMZwELWcRilrCUZSxnBStZxWrWsJZ1rGcDG9nEZrawlW1sZwc72cVu
9rCXfeznAAc5xGGOcJRjHOcEJznFac5wlnOc5wIXucRlrnCVa1znBje5xW3u
cJd73OcBD3nEY57wlGc85wUvecVr3vCWd7znAx/5xGe+8JVvfOcHP/nFb/7w
l38v/gAEJBCBCUJQghGcEIQkFKEJw3+EJRzhiUBEIhGZKEQlGtGJQUxiEZs4
xCUe8UlAQhKRmCQkJRnJSUFKUpGaNKQlHenJQEYykZksZCUb2clBTnKRmzzk
JR/5KUBBClGYIhSlGMUpQUlKUZoylKUc5alARSpRmSpUpRrVqUFNalGbOtSl
HvVpQEMa0ZgmNKUZzWlBS1rRmja0pR3t6UBHOtGZLnSlG93pQU960Zs+9KUf
/RnAQAYxmCEMZRjDGcFIRjGaMYxlHOOZwEQmMZkpTGUa05nBTGYxmznMZR7z
WcBCFrGYJSxlGctZwUpWsZo1rGUd69nARjaxmS1sZRvb2cFOdrGbPexlH/s5
wEEOcZgjHOUYxznBSU5xmjOc5RznucBFLnGZK1zlGte5wU1ucZs73OUe93nA
Qx7xmCc85RnPecFLXvGaN7zlHe/5wEc+8ZkvfOUb3/nBT37xmz/85d9HfwAC
EojABCEowQhOCEISitCE4T/CEo7wRCAikYhMFKISjejEICaxiE0c4hKP+CQg
IYlITBKSkozkpCAlqUhNGtKSjvRkICOZyEwWspKN7OQgJ7nITR7yko/8FKAg
hShMEYpSjOKUoCSlKE0ZylKO8lSgIpWoTBWqUo3q1KAmtahNHepSj/o0oCGN
aEwTmtKM5rSgJa1oTRva0o72dKAjnehMF7rSje70oCe96E0f+tKP/gxgIIMY
zBCGMozhjGAkoxjNGMYyjvFMYCKTmMwUpjKN6cxgJrOYzRzmMo/5LGAhi1jM
EpayjOWsYCWrWM0a1rKO9WxgI5vYzBa2so3t7GAnu9jNHvayj/0c4CCHOMwR
jnKM45zgJKc4zRnOco7zXOAil7jMFa5yjevc4Ca3uM0d7nKP+zzgIY94zBOe
8oznvOAlr3jNG97yjvd84COf+MwXvvKN7/zgJ7/4zR/+8u+HPwABCURgghCU
YAQnBCEJRWjC8B9hCUd4IhCRSEQmClGJRnRiEJNYxCYOcYlHfBKQkEQkJglJ
SUZyUpCSVKQmDWlJR3oykJFMZCYLWclGdnKQk1zkJg95yUd+ClCQQhSmCEUp
RnFKUJJSlKYMZSlHeSpQkUpUpgpVqUZ1alCTWtSmDnWpR30a0JBGNKYJTWlG
c1rQkla0pg1taUd7OtCRTnSmC13pRnd60JNe9KYPfelHfwYwkEEMZghDGcZw
RjCSUYxmDGMZx3gmMJFJTGYKU5nGdGYwk1nMZg5zmcd8FrCQRSxmCUtZxnJW
sJJVrGYNa1nHejawkU1sZgtb2cZ2drCTXexmD3vZx34OcJBDHOYIRznGcU5w
klOc5gxnOcd5LnCRS1zmCle5xnVucJNb3OYOd7nHfR7wkEc85glPecZzXvCS
V7zmDW95x3s+8JFPfOYLX/nGd37wk1/85g9/+bfYF4CABCIwQQhKMIITgpCE
IjRh+I+whCM8EYhIJCIThahEIzoxiEksYhOHuMQjPglISCISk4SkJCM5KUhJ
KlKThrSkIz0ZyEgmMpOFrGQjOznISS5yk4e85CM/BShIIQpThKIUozglKEkp
SlOGspSjPBWoSCUqU4WqVKM6NahJLWpTh7rUoz4NaEgjGtOEpjSjOS1oSSta
04a2tKM9HehIJzrTha50ozs96EkvetOHvvSjPwMYyCAGM4ShDGM4IxjJKEYz
hrGMYzwTmMgkJjOFqUxjOjOYySxmM4e5zGM+C1jIIhazhKUsYzkrWMkqVrOG
taxjPRvYyCY2s4WtbGM7O9jJLnazh73sYz8HOMghDnOEoxzjOCc4ySlOc4az
nOM8F7jIJS5zhatc4zo3uMktbnOHu9zjPg94yCMe84SnPOM5L3jJK17zhre8
4z0f+MgnPvOFr3zjOz/4yS9+84e//FvoD0BAAhGYIAQlGMEJQUhCEZow/EdY
whGeCEQkEpGJQlSiEZ0YxCQWsYlDXOIRnwQkJBGJSUJSkpGcFKQkFalJQ1rS
kZ4MZCQTmclCVrKRnRzkJBe5yUNe8pGfAhSkEIUpQlGKUZwSlKQUpSlDWcpR
ngpUpBKVqUJVqlGdGtSkFrWpQ13qUZ8GNKQRjWlCU5rRnBa0pBWtaUNb2tGe
DnSkE53pQle60Z0e9KQXvelDX/rRnwEMZBCDGcJQhjGcEYxkFKMZw1jGMZ4J
TGQSk5nCVKYxnRnMZBazmcNc5jGfBSxkEYtZwlKWsZwVrGQVq1nDWtaxng1s
ZBOb2cJWtrGdHexkF7vZw172sZ8DHOQQhznCUY5xnBOc5BSnOcNZznGeC1zk
Epe5wlWucZ0b3OQWt7nDXe5xnwc85BGPecJTnvGcF7zkFa95w1ve8Z4PfOQT
n/nCV77xnR/85Be/+cNf/m3yBSAggQhMEIISjOCEICShCE0Y/iMs4QhPBCIS
ichEISrRiE4MYhKL2MQhLvGITwISkojEJCEpyUhOClKSitSkIS3pSE8GMpKJ
zGQhK9nITg5ykovc5CEv+chPAQpSiMIUoSjFKE4JSlKK0pShLOUoTwUqUonK
VKEq1ahODWpSi9rUoS71qE8DGtKIxjShKc1oTgta0orWtKEt7WhPBzrSic50
oSvd6E4PetKL3vShL/3ozwAGMojBDGEowxjOCEYyitGMYSzjGM8EJjKJyUxh
KtOYzgxmMovZzGEu85jPAhayiMUsYSnLWM4KVrKK1axhLetYzwY2sonNbGEr
29jODnayi93sYS/72M8BDnKIwxzhKMc4zglOcorTnOEs5zjPBS5yictc4SrX
uM4NbnKL29zhLve4zwMe8ojHPOEpz3jOC17yite84S3veM8HPvKJz3zhK9/4
zg9+8ovf/OEv/zb4AxCQQAQmCEEJRnBCEJJQhCYM/xGWcIQnAhGJRGSiEJVo
RCcGMYlFbOIQl3jEJwEJSURikpCUZCQnBSlJRWrSkJZ0pCcDGclEZrKQlWxk
Jwc5yUVu8pCXfOSnAAUpRGGKUJRiFKcEJSlFacpQlnKUpwIVqURlqlCValSn
BjWpRW3qUJd61KcBDWlEY5rQlGY0pwUtaUVr2tCWdrSnAx3pRGe60JVudKcH
PelFb/rQl370ZwADGcRghjCUYQxnBCMZxWjGMJZxjGcCE5nEZKYwlWlMZwYz
mcVs5jCXecxnAQtZxGKWsJRlLGcFK1nFatawlnWsZwMb2cRmtrCVbWxnBzvZ
xW72sJd97OcABznEYY5wlGMc5wQnOcVpznCWc5znAhe5xGWucJVrXOcGN7nF
be5wl3vc5wEPecRjnvCUZzznBS95xWve8JZ3vOcDH/nEZ77wlW985wc/+cVv
/vCXf8U9AQhIIAIThKAEIzghCEkoQhOG/whLOMITgYhEIjJRiEo0ohODmMQi
NnGISzzik4CEJCIxSUhKMpKTgpSkIjVpSEs60pOBjGQiM1nISjayk4Oc5CI3
echLPvJTgIIUojBFKEoxilOCkpSiNGUoSznKU4GKVKIyVahKNapTg5rUojZ1
qEs96tOAhjSiMU1oSjOa04KWtKI1bWhLO9rTgY50ojNd6Eo3utODnvSiN33o
Sz/6M4CBDGIwQxjKMIYzgpGMYjRjGMs4xjOBiUxiMlOYyjSmM4OZzGI2c5jL
POazgIUsYjFLWMoylrOClaxiNWtYyzrWs4GNbGIzW9jKNrazg53sYjd72Ms+
9nOAgxziMEc4yjGOc4KTnOI0ZzjLOc5zgYtc4jJXuMo1rnODm9ziNne4yz3u
84CHPOIxT3jKM57zgpe84jVveMs73vOBj3ziM1/4yje+84Of/OI3f/jLv8K+
AAQkEIEJQlCCEZwQhCQUoQnDf4QlHOGJQEQiEZkoRCUa0YlBTGIRmzjEJR7x
SUBCEpGYJCQlGclJQUpSkZo0pCUd6clARjKRmSxkJRvZyUFOcpGbPOQlH/kp
QEEKUZgiFKUYxSlBSUpRmjKUpRzlqUBFKlGZKlSlGtWpQU1qUZs61KUe9WlA
QxrRmCY0pRnNaUFLWtGaNrSlHe3pQEc60ZkudKUb3elBT3rRmz70pR/9GcBA
BjGYIQxlGMMZwUhGMZoxjGUc45nARCYxmSlMZRrTmcFMZjGbOcxlHvNZwEIW
sZglLGUZy1nBSlaxmjWsZR3r2cBGNrGZLWxlG9vZwU52sZs97GUf+znAQQ5x
mCMc5RjHOcFJTnGaM5zlHOe5wEUucZkrXOUa17nBTW5xmzvc5R73ecBDHvGY
JzzlGc95wUte8Zo3vOUd7/nARz7xmS985Rvf+cFPfvGbP/zlX1FvAAISiMAE
ISjBCE4IQhKK0IThP8ISjvBEICKRiEwUohKN6MQgJrGITRziEo/4JCAhiUhM
EpKSjOSkICWpSE0a0pKO9GQgI5nITBayko3s5CAnuchNHvKSj/wUoCCFKEwR
ilKM4pSgJKUoTRnKUo7yVKAilahMFapSjerUoCa1qE0d6lKP+jSgIY1oTBOa
0ozmtKAlrWhNG9rSjvZ0oCOd6EwXutKN7vSgJ73oTR/60o/+DGAggxjMEIYy
jOGMYCSjGM0YxjKO8UxgIpOYzBSmMo3pzGAms5jNHOYyj/ksYCGLWMwSlrKM
5axgJatYzRrWso71bGAjm9jMFrayje3sYCe72M0e9rKP/RzgIIc4zBGOcozj
nOAkpzjNGc5yjvNc4CKXuMwVrnKN69zgJre4zR3uco/7POAhj3jME57yjOe8
4CWveM0b3vKO93zgI5/4zBe+8o3v/OAnv/jNH/7yr6A/AAEJRGCCEJRgBCcE
IQlFaMLwH2EJR3giEJFIRCYKUYlGdGIQk1jEJg5xiUd8EpCQRCQmCUlJRnJS
kJJUpCYNaUlHejKQkUxkJgtZyUZ2cpCTXOQmD3nJR34KUJBCFKYIRSlGcUpQ
klKUpgxlKUd5KlCRSlSmClWpRnVqUJNa1KYOdalHfRrQkEY0pglNaUZzWtCS
VrSmDW1pR3s60JFOdKYLXelGd3rQk170pg996Ud/BjCQQQxmCEMZxnBGMJJR
jGYMYxnHeCYwkUlMZgpTmcZ0ZjCTWcxmDnOZx3wWsJBFLGYJS1nGclawklWs
Zg1rWcd6NrCRTWxmC1vZxnZ2sJNd7GYPe9nHfg5wkEMc5ghHOcZxTnCSU5zm
DGc5x3kucJFLXOYKV7nGdW5wk1vc5g53ucd9HvCQRzzmCU95xnNe8JJXvOYN
b3nHez7wkU985gtf+cZ3fvCTX/zmD3/518wTgIAEIjBBCEowghOCkIQiNGH4
j7CEIzwRiEgkIhOFqEQjOjGISSxiE4e4xCM+CUhIIhKThKQkIzkpSEkqUpOG
tKQjPRnISCYyk4WsZCM7OchJLnKTh7zkIz8FKEghClOEohSjOCUoSSlKU4ay
lKM8FahIJSpThapUozo1qEktalOHutSjPg1oSCMa04SmNKM5LWhJK1rThra0
oz0d6EgnOtOFrnSjOz3oSS9604e+9KM/AxjIIAYzhKEMYzgjGMkoRjOGsYxj
PBOYyCQmM4WpTGM6M5jJLGYzh7nMYz4LWMgiFrOEpSxjOStYySpWs4a1rGM9
G9jIJjazha1sYzs72MkudrOHvexjPwc4yCEOc4SjHOM4JzjJKU5zhrOc4zwX
uMglLnOFq1zjOje4yS1uc4e73OM+D3jIIx7zhKc84zkveMkrXvOGt7zjPR/4
yCc+84WvfOM7P/jJL37zh7/8a+QLQEACEZggBCUYwQlBSEIRmjD8R1jCEZ4I
RCQSkYlCVKIRnRjEJBaxiUNc4hGfBCQkEYlJQlKSkZwUpCQVqUlDWtKRngxk
JBOZyUJWspGdHOQkF7nJQ17ykZ8CFKQQhSlCUYpRnBKUpBSlKUNZylGeClSk
EpWpQlWqUZ0a1KQWtalDXepRnwY0pBGNaUJTmtGcFrSkFa1pQ1va0Z4OdKQT
nelCV7rRnR70pBe96UNf+tGfAQxkEIMZwlCGMZwRjGQUoxnDWMYxnglMZBKT
mcJUpjGdGcxkFrOZw1zmMZ8FLGQRi1nCUpaxnBWsZBWrWcNa1rGeDWxkE5vZ
wla2sZ0d7GQXu9nDXvaxnwMc5BCHOcJRjnGcE5zkFKc5w1nOcZ4LXOQSl7nC
Va5xnRvc5Ba3ucNd7nGfBzzkEY95wlOe8ZwXvOQVr3nDW97xng985BOf+cJX
vvGdH/zkF7/5w1/+NfEGICCBCEwQghKM4IQgJKEITRj+IyzhCE8EIhKJyEQh
KtGITgxiEovYxCEu8YhPAhKSiMQkISnJSE4KUpKK1KQhLelITwYykonMZCEr
2chODnKSi9zkIS/5yE8BClKIwhShKMUoTglKUorSlKEs5ShPBSpSicpUoSrV
qE4NalKL2tShLvWoTwMa0ojGNKEpzWhOC1rSita0oS3taE8HOtKJznShK93o
Tg960ove9KEv/ejPAAYyiMEMYSjDGM4IRjKK0YxhLOMYzwQmMonJTGEq05jO
DGYyi9nMYS7zmM8CFrKIxSxhKctYzgpWsorVrGEt61jPBjayic1sYSvb2M4O
drKL3exhL/vYzwEOcojDHOEoxzjOCU5yitOc4SznOM8FLnKJy1zhKte4zg1u
covb3OEu97jPAx7yiMc84SnPeM4LXvKK17zhLe94zwc+8onPfOEr3/jOD37y
i9/84S//GvgDEJBABCYIQQlGcEIQklCEJgz/EZZwhCcCEYlEZKIQlWhEJwYx
iUVs4hCXeMQnAQlJRGKSkJRkJCcFKUlFatKQlnSkJwMZyURmspCVbGQnBznJ
RW7ykJd85KcABSlEYYpQlGIUpwQlKUVpylCWcpSnAhWpRGWqUJVqVKcGNalF
bepQl3rUpwENaURjmtCUZjSnBS1pRWva0JZ2tKcDHelEZ7rQlW50pwc96UVv
+tCXfvRnAAMZxGCGMJRhDGcEIxnFaMYwlnGMZwITmcRkpjCVaUxnBjOZxWzm
MJd5zGcBC1nEYpawlGUsZwUrWcVq1rCWdaxnAxvZxGa2sJVtbGcHO9nFbvaw
l33s5wAHOcRhjnCUYxznBCc5xWnOcJZznOcCF7nEZa5wlWtc5wY3ucVt7nCX
e9znAQ95xGOe8JRnPOcFL3nFa97wlne85wMf+cRnvvCVb3znBz/5xW/+8Jd/
4R0BCEggAhOEoAQjOCEISShCE4b/CEs4whOBiEQiMlGISjSiE4OYxCI2cYhL
POKTgIQkIjFJSEoykpOClKQiNWlISzrSk4GMZCIzWchKNrKTg5zkIjd5yEs+
8lOAghSiMEUoSjGKU4KSlKI0ZShLOcpTgYpUojJVqEo1qlODmtSiNnWoSz3q
04CGNKIxTWhKM5rTgpa0ojVtaEs72tOBjnSiM13oSje604Oe9KI3fehLP/oz
gIEMYjBDGMowhjOCkYxiNGMYyzjGM4GJTGIyU5jKNKYzg5nMYjZzmMs85rOA
hSxiMUtYyjKWs4KVrGI1a1jLOtazgY1sYjNb2Mo2trODnexiN3vYyz72c4CD
HOIwRzjKMY5zgpOc4jRnOMs5znOBi1ziMle4yjWuc4Ob3OI2d7jLPe7zgIc8
4jFPeMoznvOCl7ziNW94yzve84GPfOIzX/jKN77zg5/84jd/+Mu/4J4ABCQQ
gQlCUIIRnBCEJBShCcN/hCUc4YlARCIRmShEJRrRiUFMYhGbOMQlHvFJQEIS
kZgkJCUZyUlBSlKRmjSkJR3pyUBGMpGZLGQlG9nJQU5ykZs85CUf+SlAQQpR
mCIUpRjFKUFJSlGaMpSlHOWpQEUqUZkqVKUa1alBTWpRmzrUpR71aUBDGtGY
JjSlGc1pQUta0Zo2tKUd7elARzrRmS50pRvd6UFPetGbPvSlH/0ZwEAGMZgh
DGUYwxnBSEYxmjGMZRzjmcBEJjGZKUxlGtOZwUxmMZs5zGUe81nAQhaxmCUs
ZRnLWcFKVrGaNaxlHevZwEY2sZktbGUb29nBTnaxmz3sZR/7OcBBDnGYIxzl
GMc5wUlOcZoznOUc57nARS5xmStc5RrXucFNbnGbO9zlHvd5wEMe8ZgnPOUZ
z3nBS17xmje85R3v+cBHPvGZL3zlG9/5wU9+8Zs//OVfaFcAAhKIwAQhKMEI
TghCEorQhOE/whKO8EQgIpGITBSiEo3oxCAmsYhNHOISj/gkICGJSEwSkpKM
5KQgJalITRrSko70ZCAjmchMFrKSjezkICe5yE0e8pKP/BSgIIUoTBGKUozi
lKAkpShNGcpSjvJUoCKVqEwVqlKN6tSgJrWoTR3qUo/6NKAhjWhME5rSjOa0
oCWtaE0b2tKO9nSgI53oTBe60o3u9KAnvehNH/rSj/4MYCCDGMwQhjKM4Yxg
JKMYzRjGMo7xTGAik5jMFKYyjenMYCazmM0c5jKP+SxgIYtYzBKWsozlrGAl
q1jNGtayjvVsYCOb2MwWtrKN7exgJ7vYzR72so/9HOAghzjMEY5yjOOc4CSn
OM0ZznKO81zgIpe4zBWuco3r3OAmt7jNHe5yj/s84CGPeMwTnvKM57zgJa94
zRve8o73fOAjn/jMF77yje/84Ce/+M0f/vIvsC8AAQlEYIIQlGAEJwQhCUVo
wvAfYQlHeCIQkUhEJgpRiUZ0YhCTWMQmDnGJR3wSkJBEJCYJSUlGclKQklSk
Jg1pSUd6MpCRTGQmC1nJRnZykJNc5CYPeclHfgpQkEIUpghFKUZxSlCSUpSm
DGUpR3kqUJFKVKYKValGdWpQk1rUpg51qUd9GtCQRjSmCU1pRnNa0JJWtKYN
bWlHezrQkU50pgtd6UZ3etCTXvSmD33pR38GMJBBDGYIQxnGcEYwklGMZgxj
Gcd4JjCRSUxmClOZxnRmMJNZzGYOc5nHfBawkEUsZglLWcZyVrCSVaxmDWtZ
x3o2sJFNbGYLW9nGdnawk13sZg972cd+DnCQQxzmCEc5xnFOcJJTnOYMZznH
eS5wkUtc5gpXucZ1bnCTW9zmDne5x30e8JBHPOYJT3nGc17wkle85g1vecd7
PvCRT3zmC1/5xnd+8JNf/OYPf/kX1hmAgAQiMEEISjCCE4KQhCI0YfiPsIQj
PBGISCQiE4WoRCM6MYhJLGITh7jEIz4JSEgiEpOEpCQjOSlISSpSk4a0pCM9
GchIJjKThaxkIzs5yEkucpOHvOQjPwUoSCEKU4SiFKM4JShJKUpThrKUozwV
qEglKlOFqlSjOjWoSS1qU4e61KM+DWhIIxrThKY0ozktaEkrWtOGtrSjPR3o
SCc604WudKM7PehJL3rTh770oz8DGMggBjOEoQxjOCMYyShGM4axjGM8E5jI
JCYzhalMYzozmMksZjOHucxjPgtYyCIWs4SlLGM5K1jJKlazhrWsYz0b2Mgm
NrOFrWxjOzvYyS52s4e97GM/BzjIIQ5zhKMc4zgnOMkpTnOGs5zjPBe4yCUu
c4WrXOM6N7jJLW5zh7vc4z4PeMgjHvOEpzzjOS94ySte84a3vOM9H/jIJz7z
ha984zs/+MkvfvOHv/wL6g1AQAIRmCAEJRjBCUFIQhGaMPxHWMIRnghEJBKR
iUJUohGdGMQkFrGJQ1ziEZ8EJCQRiUlCUpKRnBSkJBWpSUNa0pGeDGQkE5nJ
QlaykZ0c5CQXuclDXvKRnwIUpBCFKUJRilGcEpSkFKUpQ1nKUZ4KVKQSlalC
VapRnRrUpBa1qUNd6lGfBjSkEY1pQlOa0ZwWtKQVrWlDW9rRng50pBOd6UJX
utGdHvSkF73pQ1/60Z8BDGQQgxnCUIYxnBGMZBSjGcNYxjGeCUxkEpOZwlSm
MZ0ZzGQWs5nDXOYxnwUsZBGLWcJSlrGcFaxkFatZw1rWsZ4NbGQTm9nCVrax
nR3sZBe72cNe9rGfAxzkEIc5wlGOcZwTnOQUpznDWc5xngtc5BKXucJVrnGd
G9zkFre5w13ucZ8HPOQRj3nCU57xnBe85BWvecNb3vGeD3zkE5/5wle+8Z0f
/OQXv/nDX/6FdAcgIIEITBCCEozghCAkoQhNGP4jLOEITwQiEonIRCEq0YhO
DGISi9jEIS7xiE8CEpKIxCQhKclITgpSkorUpCEt6UhPBjKSicxkISvZyE4O
cpKL3OQhL/nITwEKUojCFKEoxShOCUpSitKUoSzlKE8FKlKJylShKtWoTg1q
Uova1KEu9ahPAxrSiMY0oSnNaE4LWtKK1rShLe1oTwc60onOdKEr3ehOD3rS
i970oS/96M8ABjKIwQxhKMMYzghGMorRjGEs4xjPBCYyiclMYSrTmM4MZjKL
2cxhLvOYzwIWsojFLGEpy1jOClayitWsYS3rWM8GNrKJzWxhK9vYzg52sovd
7GEv+9jPAQ5yiMMc4SjHOM4JTnKK05zhLOc4zwUuconLXOEq17jODW5yi9vc
4S73uM8DHvKIxzzhKc94zgte8orXvOEt73jPBz7yic984Svf+M4PfvKL3/zh
L/8C+gMQkEAEJghBCUZwQhCSUIQmDP8RlnCEJwIRiURkohCVaEQnBjGJRWzi
EJd4xCcBCUlEYpKQlGQkJwUpSUVq0pCWdKQnAxnJRGaykJVsZCcHOclFbvKQ
l3zkpwAFKURhilCUYhSnBCUpRWnKUJZylKcCFalEZapQlWpUpwY1qUVt6lCX
etSnAQ1pRGOa0JRmNKcFLWlFa9rQlna0pwMd6URnutCVbnSnBz3pRW/60Jd+
9GcAAxnEYIYwlGEMZwQjGcVoxjCWcYxnAhOZxGSmMJVpTGcGM5nFbOYwl3nM
ZwELWcRilrCUZSxnBStZxWrWsJZ1rGcDG9nEZrawlW1sZwc72cVu9rCXfezn
AAc5xGGOcJRjHOcEJznFac5wlnOc5wIXucRlrnCVa1znBje5xW3ucJd73OcB
D3nEY57wlGc85wUvecVr3vCWd7znAx/5xGe+8JVvfOcHP/nFb/7wl3/DOQIQ
kEAEJghBCUZwQhCSUIQmDP8RlnCEJwIRiURkohCVaEQnBjGJRWziEJd4xCcB
CUlEYpKQlGQkJwUpSUVq0pCWdKQnAxnJRGaykJVsZCcHOclFbvKQl3zkpwAF
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
DGc5x3kucJFLXOYKV7nGdW5wk1vc5g53ucd9HvCQRzzmCU95xnNe8JJXvOYN
b3nHez7wkU985gtf+cZ3fvCTX/zmD3/5R6AA/wlMEIISjOD8RwhCEorQhCEs
4QhPBCISichEISrRiE4MYhKL2MQhLvGITwICSEgiEpOEpCQjOSlISSpSk4a0
pCM9GchIJjKThaxkIzs5yEkucpOHvOQjPwUoSCEKU4SiFKM4JShJKUpThrKU
ozwVqEglKlOFqlSjOjWoSS1qU4e61KM+DWhIIxrThKY0ozktaEkrWtOGtrSj
PR3oSCc604WudKM7PehJL3rTh770oz8DGMggBjOEoQxjOCMYyShGM4axjGM8
E5jIJCYzhalMYzozmMksZjOHucxjPgtYyCIWs4SlLGM5K1jJKlazhrWsYz0b
2MgmNrOFrWxjOzvYyS52s4e97GM/BzjIIQ5zhKMc4zgnOMkpTnOGs5zjPBe4
yCUuc4WrXOM6N7jJLW5zh7vc4z4PeMgjHvOEpzzjOS94ySte84a3vOM9H/jI
Jz7zha984zs/+MkvfvOHv/wjUEL/CUwQghKM4PxHCEISitCEISzhCE8EIhKJ
yEQhKtGITgxiEovYxCEu8YhPAgJISCISk4SkJCM5KUhJKlKThrSkIz0ZyEgm
MpOFrGQjOznISS5yk4e85CM/BShIIQpThKIUozglKEkpSlOGspSjPBWoSCUq
U4WqVKM6NahJLWpTh7rUoz4NaEgjGtOEpjSjOS1oSSta04a2tKM9HehIJzrT
ha50ozs96EkvetOHvvSjPwMYyCAGM4ShDGM4IxjJKEYzhrGMYzwTmMgkJjOF
qUxjOjOYySxmM4e5zGM+C1jIIhazhKUsYzkrWMkqVrOGtaxjPRvYyCY2s4Wt
bGM7O9jJLnazh73sYz8HOMghDnOEoxzjOCc4ySlOc4aznOM8F7jIJS5zhatc
4zo3uMktbnOHu9zjPg94yCMe84SnPOM5L3jJK17zhre84z0f+MgnPvOFr3zj
Oz/4yS9+84e//CNQIv8JTBCCEozg/EcIQhKK0IQhLOEITwQiEonIRCEq0YhO
DGISi9jEIS7xiE8CAkhIIhKThKQkIzkpSEkqUpOGtKQjPRnISCYyk4WsZCM7
OchJLnKTh7zkIz8FKEghClOEohSjOCUoSSlKU4aylKM8FahIJSpThapUozo1
qEktalOHutSjPg1oSCMa04SmNKM5LWhJK1rThra0oz0d6EgnOtOFrnSjOz3o
SS9604e+9KM/AxjIIAYzhKEMYzgjGMkoRjOGsYxjPBOYyCQmM4WpTGM6M5jJ
LGYzh7nMYz4LWMgiFrOEpSxjOStYySpWs4a1rGM9G9jIJjazha1sYzs72Mku
drOHvexjPwc4yCEOc4SjHOM4JzjJKU5zhrOc4zwXuMglLnOFq1zjOje4yS1u
c4e73OM+D3jIIx7zhKc84zkveMkrXvOGt7zjPR/4yCc+84WvfOM7P/jJL37z
h7/8I1Bi/wlMEIISjOD8RwhCEorQhCEs4QhPBCISichEISrRiE4MYhKL2MQh
LvGITwICSEgiEpOEpCQjOSlISSpSk4a0pCM9GchIJjKThaxkIzs5yEkucpOH
vOQjPwUoSCEKU4SiFKM4JShJKUpThrKUozwVqEglKlOFqlSjOjWoSS1qU4e6
1KM+DWhIIxrThKY0ozktaEkrWtOGtrSjPR3oSCc604WudKM7PehJL3rTh770
oz8DGMggBjOEoQxjOCMYyShGM4axjGM8E5jIJCYzhalMYzozmMksZjOHucxj
PgtYyCIWs4SlLGM5K1jJKlazhrWsYz0b2MgmNrOFrWxjOzvYyS52s4e97GM/
BzjIIQ5zhKMc4zgnOMkpTnOGs5zjPBe4yCUuc4WrXOM6N7jJLW5zh7vc4z4P
eMgjHvOEpzzjOS94ySte84a3vOM9H/jIJz7zha984zs/+MkvfvOHv/wjUBL/
CUwQghKM4PxHCEISitCEISzhCE8EIhKJyEQhKtGITgxiEovYxCEu8YhPAgJI
SCISk4SkJCM5KUhJKlKThrSkIz0ZyEgmMpOFrGQjOznISS5yk4e85CM/BShI
IQpThKIUozglKEkpSlOGspSjPBWoSCUqU4WqVKM6NahJLWpTh7rUoz4NaEgj
GtOEpjSjOS1oSSta04a2tKM9HehIJzrTha50ozs96EkvetOHvvSjPwMYyCAG
M4ShDGM4IxjJKEYzhrGMYzwTmMgkJjOFqUxjOjOYySxmM4e5zGM+C1jIIhaz
hKUsYzkrWMkqVrOGtaxjPRvYyCY2s4WtbGM7O9jJLnazh73sYz8HOMghDnOE
oxzjOCc4ySlOc4aznOM8F7jIJS5zhatc4zo3uMktbnOHu9zjPg94yCMe84Sn
POM5L3jJK17zhre84z0f+MgnPvOFr3zjOz/4yS9+84e//CNQUv8JTBCCEozg
/EcIQhKK0IQhLOEITwQiEonIRCEq0YhODGISi9jEIS7xiE8CAkhIIhKThKQk
IzkpSEkqUpOGtKQjPRnISCYyk4WsZCM7OchJLnKTh7zkIz8FKEghClOEohSj
OCUoSSlKU4aylKM8FahIJSpThapUozo1qEktalOHutSjPg1oSCMa04SmNKM5
LWhJK1rThra0oz0d6EgnOtOFrnSjOz3oSS9604e+9KM/AxjIIAYzhKEMYzgj
GMkoRjOGsYxjPBOYyCQmM4WpTGM6M5jJLGYzh7nMYz4LWMgiFrOEpSxjOStY
ySpWs4a1rGM9G9jIJjazha1sYzs72MkudrOHvexjPwc4yCEOc4SjHOM4JzjJ
KU5zhrOc4zwXuMglLnOFq1zjOje4yS1uc4e73OM+D3jIIx7zhKc84zkveMkr
XvOGt7zjPR/4yCc+84WvfOM7P/jJL37zh7/8I1Ay/wlMEIISjOD8RwhCEorQ
hCEs4QhPBCISichEISrRiE4MYhKL2MQhLvGITwICSEgiEpOEpCQjOSlISSpS
k4a0pCM9GchIJjKThaxkIzs5yEkucpOHvOQjPwUoSCEKU4SiFKM4JShJKUpT
hrKUozwVqEglKlOFqlSjOjWoSS1qU4e61KM+DWhIIxrThKY0ozktaEkrWtOG
trSjPR3oSCc604WudKM7PehJL3rTh770oz8DGMggBjOEoQxjOCMYyShGM4ax
jGM8E5jIJCYzhalMYzozmMksZjOHucxjPgtYyCIWs4SlLGM5K1jJKlazhrWs
Yz0b2MgmNrOFrWxjOzvYyS52s4e97GM/BzjIIQ5zhKMc4zgnOMkpTnOGs5zj
PBe4yCUuc4WrXOM6N7jJLW5zh7vc4z4PeMgjHvOEpzzjOS94ySte84a3vOM9
H/jIJz7zha984zs/+MkvfvOHv/wjUHL/CUwQghKM4PxHCEISitCEISzhCE8E
IhKJyEQhKtGITgxiEovYxCEu8YhPAgJISCISk4SkJCM5KUhJKlKThrSkIz0Z
yEgmMpOFrGQjOznISS5yk4e85CM/BShIIQpThKIUozglKEkpSlOGspSjPBWo
SCUqU4WqVKM6NahJLWpTh7rUoz4NaEgjGtOEpjSjOS1oSSta04a2tKM9HehI
JzrTha50ozs96EkvetOHvvSjPwMYyCAGM4ShDGM4IxjJKEYzhrGMYzwTmMgk
JjOFqUxjOjOYySxmM4e5zGM+C1jIIhazhKUsYzkrWMkqVrOGtaxjPRvYyCY2
s4WtbGM7O9jJLnazh73sYz8HOMghDnOEoxzjOCc4ySlOc4aznOM8F7jIJS5z
hatc4zo3uMktbnOHu9zjPg94yCMe84SnPOM5L3jJK17zhre84z0f+MgnPvOF
r3zjOz/4yS9+84e//CNQCv8JTBCCEozg/EcIQhKK0IQhLOEITwQiEonIRCEq
0YhODGISi9jEIS7xiE8CAkhIIhKThKQkIzkpSEkqUpOGtKQjPRnISCYyk4Ws
ZCM7OchJLnKTh7zkIz8FKEghClOEohSjOCUoSSlKU4aylKM8FahIJSpThapU
ozo1qEktalOHutSjPg1oSCMa04SmNKM5LWhJK1rThra0oz0d6EgnOtOFrnSj
Oz3oSS9604e+9KM/AxjIIAYzhKEMYzgjGMkoRjOGsYxjPBOYyCQmM4WpTGM6
M5jJLGYzh7nMYz4LWMgiFrOEpSxjOStYySpWs4a1rGM9G9jIJjazha1sYzs7
2MkudrOHvexjPwc4yCEOc4SjHOM4JzjJKU5zhrOc4zwXuMglLnOFq1zjOje4
yS1uc4e73OM+D3jIIx7zhKc84zkveMkrXvOGt7zjPR/4yCc+84WvfOM7P/jJ
L37zh7/8I1BK/wlMEIISjOD8RwhCEorQhCEs4QhPBCISichEISrRiE4MYhKL
2MQhLvGITwICSEgiEpOEpCQjOSlISSpSk4a0pCM9GchIJjKThaxkIzs5yEku
cpOHvOQjPwUoSCEKU4SiFKM4JShJKUpThrKUozwVqEglKlOFqlSjOjWoSS1q
U4e61KM+DWhIIxrThKY0ozktaEkrWtOGtrSjPR3oSCc604WudKM7PehJL3rT
h770oz8DGMggBjOEoQxjOCMYyShGM4axjGM8E5jIJCYzhalMYzozmMksZjOH
ucxjPgtYyCIWs4SlLGM5K1jJKlazhrWsYz0b2MgmNrOFrWxjOzvYyS52s4e9
7GM/BzjIIQ5zhKMc4zgnOMkpTnOGs5zjPBe4yCUuc4WrXOM6N7jJLW5zh7vc
4z4PeMgjHvOEpzzjOS94ySte84a3vOM9H/jIJz7zha984zs/+MkvfvOHv/wj
UCr/CUwQghKM4PxHCEISitCEISzhCE8EIhKJyEQhKtGITgxiEovYxCEu8YhP
AgJISCISk4SkJCM5KUhJKlKThrSkIz0ZyEgmMpOFrGQjOznISS5yk4e85CM/
BShIIQpThKIUozglKEkpSlOGspSjPBWoSCUqU4WqVKM6NahJLWpTh7rUoz4N
aEgjGtOEpjSjOS1oSSta04a2tKM9HehIJzrTha50ozs96EkvetOHvvSjPwMY
yCAGM4ShDGM4IxjJKEYzhrGMYzwTmMgkJjOFqUxjOjOYySxmM4e5zGM+C1jI
IhazhKUsYzkrWMkqVrOGtaxjPRvYyCY2s4WtbGM7O9jJLnazh73sYz8HOMgh
DnOEoxzjOCc4ySlOc4aznOM8F7jIJS5zhatc4zo3uMktbnOHu9zjPg94yCMe
84SnPOM5L3jJK17zhre84z0f+MgnPvOFr3zjOz/4yS9+84e//CNQav8JTBCC
Eozg/EcIQhKK0IQhLOEITwQiEonIRCEq0YhODGISi9jEIS7xiE8CAkhIIhKT
hKQkIzkpSEkqUpOGtKQjPRnISCYyk4WsZCM7OchJLnKTh7zkIz8FKEghClOE
ohSjOCUoSSlKU4aylKM8FahIJSpThapUozo1qEktalOHutSjPg1oSCMa04Sm
NKM5LWhJK1rThra0oz0d6EgnOtOFrnSjOz3oSS9604e+9KM/AxjIIAYzhKEM
YzgjGMkoRjOGsYxjPBOYyCQmM4WpTGM6M5jJLGYzh7nMYz4LWMgiFrOEpSxj
OStYySpWs4a1rGM9G9jIJjazha1sYzs72MkudrOHvexjPwc4yCEOc4SjHOM4
JzjJKU5zhrOc4zwXuMglLnOFq1zjOje4yS1uc4e73OM+D3jIIx7zhKc84zkv
eMkrXvOGt7zjPR/4yCc+84WvfOM7P/jJL37zh7/8I1Aa/wlMEIISjOD8RwhC
EorQhCEs4QhPBCISichEISrRiE4MYhKL2MQhLvGITwICSEgiEpOEpCQjOSlI
SSpSk4a0pCM9GchIJjKThaxkIzs5yEkucpOHvOQjPwUoSCEKU4SiFKM4JShJ
KUpThrKUozwVqEglKlOFqlSjOjWoSS1qU4e61KM+DWhIIxrThKY0ozktaEkr
WtOGtrSjPR3oSCc604WudKM7PehJL3rTh770oz8DGMggBjOEoQxjOCMYyShG
M4axjGM8E5jIJCYzhalMYzozmMksZjOHucxjPgtYyCIWs4SlLGM5K1jJKlaz
hrWsYz0b2MgmNrOFrWxjOzvYyS52s4e97GM/BzjIIQ5zhKMc4zgnOMkpTnOG
s5zjPBe4yCUuc4WrXOM6N7jJLW5zh7vc4z4PeMgjHvOEpzzjOS94ySte84a3
vOM9H/jIJz7zha984zs/+MkvfvOHv/wjUFr/CUwQghKM4PxHCEISitCEISzh
CE8EIhKJyEQhKtGITgxiEovYxCEu8YhPAgJISCISk4SkJCM5KUhJKlKThrSk
Iz0ZyEgmMpOFrGQjOznISS5yk4e85CM/BShIIQpThKIUozglKEkpSlOGspSj
PBWoSCUqU4WqVKM6NahJLWpTh7rUoz4NaEgjGtOEpjSjOS1oSSta04a2tKM9
HehIJzrTha50ozs96EkvetOHvvSjPwMYyCAGM4ShDGM4IxjJKEYzhrGMYzwT
mMgkJjOFqUxjOjOYySxmM4e5zGM+C1jIIhazhKUsYzkrWMkqVrOGtaxjPRvY
yCY2s4WtbGM7O9jJLnazh73sYz8HOMghDnOEoxzjOCc4ySlOc4aznOM8F7jI
JS5zhatc4zo3uMktbnOHu9zjPg94yCMe84SnPOM5L3jJK17zhre84z0f+Mgn
PvOFr3zjOz/4yS9+84e//CNQOv8JTBCCEozg/EcIQhKK0IQhLOEITwQiEonI
RCEq0YhODGISi9jEIS7xiE8CAkhIIhKThKQkIzkpSEkqUpOGtKQjPRnISCYy
k4WsZCM7OchJLnKTh7zkIz8FKEghClOEohSjOCUoSSlKU4aylKM8FahIJSpT
hapUozo1qEktalOHutSjPg1oSCMa04SmNKM5LWhJK1rThra0oz0d6EgnOtOF
rnSjOz3oSS9604e+9KM/AxjIIAYzhKEMYzgjGMkoRjOGsYxjPBOYyCQmM4Wp
TGM6M5jJLGYzh7nMYz4LWMgiFrOEpSxjOStYySpWs4a1rGM9G9jIJjazha1s
Yzs72MkudrOHvexjPwc4yCEOc4SjHOM4JzjJKU5zhrOc4zwXuMglLnOFq1zj
Oje4yS1uc4e73OM+D3jIIx7zhKc84zkveMkrXvOGt7zjPR/4yCc+84WvfOM7
P/jJL37zh7/8I1B6/wlMEIISjOD8RwhCEorQhCEs4QhPBCISichEISrRiE4M
YhKL2MQhLvGITwICSEgiEpOEpCQjOSlISSpSk4a0pCM9GchIJjKThaxkIzs5
yEkucpOHvOQjPwUoSCEKU4SiFKM4JShJKUpThrKUozwVqEglKlOFqlSjOjWo
SS1qU4e61KM+DWhIIxrThKY0ozktaEkrWtOGtrSjPR3oSCc604WudKM7PehJ
L3rTh770oz8DGMggBjOEoQxjOCMYyShGM4axjGM8E5jIJCYzhalMYzozmMks
ZjOHucxjPgtYyCIWs4SlLGM5K1jJKlazhrWsYz0b2MgmNrOFrWxjOzvYyS52
s4e97GM/BzjIIQ5zhKMc4zgnOMkpTnOGs5zjPBe4yCUuc4WrXOM6N7jJLW5z
h7vc4z4PeMgjHvOEpzzjOS94ySte84a3vOM9H/jIJz7zha984zs/+MkvfvOH
v/wjUAb/CUwQghKM4PwPPQ0Eig==
           "]]}}}],
      AspectRatio->NCache[GoldenRatio^(-1), 0.6180339887498948],
      AxesOrigin->{1956614400, 0},
      Frame->True,
      FrameTicks->{{Automatic, Automatic}, {{{1893369600, 
           FormBox["\"1960\"", TraditionalForm]}, {
           NCache[2208988800, 2.2089888*^9], 
           FormBox["\"1970\"", TraditionalForm]}, {
           NCache[2524521600, 2.5245216*^9], 
           FormBox["\"1980\"", TraditionalForm]}, {
           NCache[2840140800, 2.8401408*^9], 
           FormBox["\"1990\"", TraditionalForm]}, {
           NCache[3155673600, 3.1556736*^9], 
           FormBox["\"2000\"", TraditionalForm]}, {
           NCache[3471292800, 3.4712928*^9], 
           FormBox["\"2010\"", TraditionalForm]}, {
           NCache[3786825600, 3.7868256*^9], 
           FormBox["\"2020\"", TraditionalForm]}, {1956528000, 
           FormBox["\"\"", TraditionalForm]}, {2019600000, 
           FormBox["\"\"", TraditionalForm]}, {2082758400, 
           FormBox["\"\"", TraditionalForm]}, {2145830400, 
           FormBox["\"\"", TraditionalForm]}, {
           NCache[2272060800, 2.2720608*^9], 
           FormBox["\"\"", TraditionalForm]}, {
           NCache[2335219200, 2.3352192*^9], 
           FormBox["\"\"", TraditionalForm]}, {
           NCache[2398291200, 2.3982912*^9], 
           FormBox["\"\"", TraditionalForm]}, {
           NCache[2461449600, 2.4614496*^9], 
           FormBox["\"\"", TraditionalForm]}, {
           NCache[2587680000, 2.58768*^9], 
           FormBox["\"\"", TraditionalForm]}, {
           NCache[2650752000, 2.650752*^9], 
           FormBox["\"\"", TraditionalForm]}, {
           NCache[2713910400, 2.7139104*^9], 
           FormBox["\"\"", TraditionalForm]}, {
           NCache[2776982400, 2.7769824*^9], 
           FormBox["\"\"", TraditionalForm]}, {
           NCache[2903212800, 2.9032128*^9], 
           FormBox["\"\"", TraditionalForm]}, {
           NCache[2966371200, 2.9663712*^9], 
           FormBox["\"\"", TraditionalForm]}, {
           NCache[3029443200, 3.0294432*^9], 
           FormBox["\"\"", TraditionalForm]}, {
           NCache[3092601600, 3.0926016*^9], 
           FormBox["\"\"", TraditionalForm]}, {
           NCache[3218832000, 3.218832*^9], 
           FormBox["\"\"", TraditionalForm]}, {
           NCache[3281904000, 3.281904*^9], 
           FormBox["\"\"", TraditionalForm]}, {
           NCache[3345062400, 3.3450624*^9], 
           FormBox["\"\"", TraditionalForm]}, {
           NCache[3408134400, 3.4081344*^9], 
           FormBox["\"\"", TraditionalForm]}, {
           NCache[3534364800, 3.5343648*^9], 
           FormBox["\"\"", TraditionalForm]}}, {{1893369600, 
           FormBox["\"\"", TraditionalForm]}, {
           NCache[2208988800, 2.2089888*^9], 
           FormBox["\"\"", TraditionalForm]}, {
           NCache[2524521600, 2.5245216*^9], 
           FormBox["\"\"", TraditionalForm]}, {
           NCache[2840140800, 2.8401408*^9], 
           FormBox["\"\"", TraditionalForm]}, {
           NCache[3155673600, 3.1556736*^9], 
           FormBox["\"\"", TraditionalForm]}, {
           NCache[3471292800, 3.4712928*^9], 
           FormBox["\"\"", TraditionalForm]}, {
           NCache[3786825600, 3.7868256*^9], 
           FormBox["\"\"", TraditionalForm]}, {1956528000, 
           FormBox["\"\"", TraditionalForm]}, {2019600000, 
           FormBox["\"\"", TraditionalForm]}, {2082758400, 
           FormBox["\"\"", TraditionalForm]}, {2145830400, 
           FormBox["\"\"", TraditionalForm]}, {
           NCache[2272060800, 2.2720608*^9], 
           FormBox["\"\"", TraditionalForm]}, {
           NCache[2335219200, 2.3352192*^9], 
           FormBox["\"\"", TraditionalForm]}, {
           NCache[2398291200, 2.3982912*^9], 
           FormBox["\"\"", TraditionalForm]}, {
           NCache[2461449600, 2.4614496*^9], 
           FormBox["\"\"", TraditionalForm]}, {
           NCache[2587680000, 2.58768*^9], 
           FormBox["\"\"", TraditionalForm]}, {
           NCache[2650752000, 2.650752*^9], 
           FormBox["\"\"", TraditionalForm]}, {
           NCache[2713910400, 2.7139104*^9], 
           FormBox["\"\"", TraditionalForm]}, {
           NCache[2776982400, 2.7769824*^9], 
           FormBox["\"\"", TraditionalForm]}, {
           NCache[2903212800, 2.9032128*^9], 
           FormBox["\"\"", TraditionalForm]}, {
           NCache[2966371200, 2.9663712*^9], 
           FormBox["\"\"", TraditionalForm]}, {
           NCache[3029443200, 3.0294432*^9], 
           FormBox["\"\"", TraditionalForm]}, {
           NCache[3092601600, 3.0926016*^9], 
           FormBox["\"\"", TraditionalForm]}, {
           NCache[3218832000, 3.218832*^9], 
           FormBox["\"\"", TraditionalForm]}, {
           NCache[3281904000, 3.281904*^9], 
           FormBox["\"\"", TraditionalForm]}, {
           NCache[3345062400, 3.3450624*^9], 
           FormBox["\"\"", TraditionalForm]}, {
           NCache[3408134400, 3.4081344*^9], 
           FormBox["\"\"", TraditionalForm]}, {
           NCache[3534364800, 3.5343648*^9], 
           FormBox["\"\"", TraditionalForm]}}}},
      GridLines->NCache[{{{1893369600, 
           GrayLevel[0.8]}, {2208988800, 
           GrayLevel[0.8]}, {2524521600, 
           GrayLevel[0.8]}, {2840140800, 
           GrayLevel[0.8]}, {3155673600, 
           GrayLevel[0.8]}, {3471292800, 
           GrayLevel[0.8]}, {3786825600, 
           GrayLevel[0.8]}}, None}, {{{1893369600, 
           GrayLevel[0.8]}, {2.2089888*^9, 
           GrayLevel[0.8]}, {2.5245216*^9, 
           GrayLevel[0.8]}, {2.8401408*^9, 
           GrayLevel[0.8]}, {3.1556736*^9, 
           GrayLevel[0.8]}, {3.4712928*^9, 
           GrayLevel[0.8]}, {3.7868256*^9, 
           GrayLevel[0.8]}}, None}],
      PlotLabel->FormBox["\"IBM from 1950 to Present\"", TraditionalForm],
      PlotRange->{{1.9566144*^9, 3.5293536*^9}, {0., 190.53}},
      PlotRangeClipping->True,
      PlotRangePadding->{
        Scaled[0.02], 
        Scaled[0.02]},
      Ticks->None], {189., -118.66252583997979`}, 
     ImageScaled[{0.5, 0.5}], {360., 222.4922359499621}], InsetBox[
     GraphicsBox[GraphicsComplexBox[CompressedData["
1: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
9SGcz5diOfVN0b4Ky7X5248up78CPyP1cW/ICvpXnCdYbgX9H/jddQX1T73f
82IF7bfCH0iykvYY+Euv1PBZO62kvijaMXOl9n5jIpcmP5YSLvYHIQ82l6zv
QsRroS7KD+K1Pfq4regq6hPOF2y7Slt/z5RVjMcV3sDOVayvgZ+tVnO9IQ8T
V9P+Ae+O1Xwf5Pf+atoz8DvmGuobzjscv4b6AH5uXUP5gvzeWcP3Qf8Maxm/
Qv/yrqW/R/y+aS3zKcTvN9fSPyJ+/7NWi799udZp+mpstI7+FfG7d50WT3t/
6uOGHOu1eN3cQKdtw9fr8fu39RoeU9YNzO+Av+4G+j/gH7KB+R3wuzZo+C2Z
NzJ+UbS91kb2jyAPAzdq9sa7XB83nN9Iewl5qL6J9hznTdo3sX6j6MCSTZr8
mc5sYj4J+/Z+k5afGBdt1vhnObmZ8RHwvtms5VuuVFu0/ME8fwv1C/w8vkXj
j9O/RZMPT/Kt9A843778Vsqboh1HttIeIN+I2Mr6HvIN4zbKK/KNstso//An
XbbR/iA+C99GfUZ8lmS79n5zqe3shyH/6Lid9hn5x4zt9B+IdxLu4HqpcWvx
HbQHwN9+h3a9e9oO8hf4d++gvYC/K+KmPsLftXHTPgD/ZLeWr5sfull/RnzT
ciflF/HZhJ3a803bd2rvt97bqeUzjv928X2Iz8bt0uIPy5ZdWj3BfnuXnm/8
26XVk7x5dmv5hm3jbuoT4p0buxm/It75vVvLHwI599CfQP8a7qF/hH5d28N4
FPbhxx5N343Z92r6bam/V5Nf+7C9jBegX9/2avphzrJPqx/Y6uwj/+CfB+/T
/fPKfVxv6Fem/ZRX5Pc199P+4fzcAftp/xBfLNvP+hz08dx++mPYh2oHNNrb
74BmDwxLDlA+gP/0AQ2v7d0B1rsRP/Q+yH4KzqNdeFCzJ9YTB6kf8HevD2r+
1Z3yEPUd/uLYIc2fuKIOMX6Ef052mPVw+Ofyh8W/rQc/Dx+mvYN/fnmY+RT8
W9IjjOfhn8sc0eIfa+cjlHflz33Pj1A/FW1MfJTxMeKfkkc5H0XbOxylf1e0
a/pRxlOKNic4Jvwar2hbsWP0f4h/2pH+o2jP1GPkH+KLXcdojxTtKHxce7+7
9XHyE/gnHWe8A/zu48zfgP/Bcc5fxWPeFh7WtxRtmOBh/ID4bZuH+gj8dz3M
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
Hxf8ebD+X4/L88einm3y0B9AHlZ4uD8I8nvBw3gP8vDJw/wBeDOeYH6O/KLG
CdoH5D9nT+j5W+CE6CPyK1e6k9xfg3pg1ZPsX6Ke1u8k/Rfyn7cn2R9C/ST1
KT1/q3SK/gz5Ue9Twr+aqAcuOMV6CuoRKU5r9T1jxdOUf9QDe5xmPwT1k7mn
tftdR09r9TxzuTO0B6indD3D/g3wO88wvgD+Q2e0+mPgxRnuP0H+2eks7Sfq
KTPPavmgb/9Z7Xrj87OUZ+BPdE7mH4X8M/Qcv68Af/ee4/434H96jvUt4I9/
nvoI/EXPi76hPmradZ77h8DfR+cZTwN/nAusryF/Nl9g/wD4W12g/QI/Y15k
PAe8BS6y/g68LS6yfw284y9q7/cYLom8bwI/816ivwfeppd4P+oPYy9p9ULH
pkvMz1FfzX2Z8TfqJ40uEy/qJ6Mua/VC1/rL1FfUA70cL4z6aoMrmrw4h5Ne
B/xrrtBfAf+VK/SPwP/9CuNByMOQq6xngJ+uq4y/gP/SVa3+aflylfkl8Ge+
RnlCfWrFNfaTUJ86f43xIOpTH68xv0F9LYOX9W7U16p7Rf+agL9nvFr91PHe
y/3yqE+lva7V831VrjM+Av6+pGODv2+usz4E+Uh1g/YE9alKNwRPHdRbe93g
fmPwf/4NeV8K1FuT32T8hPpUhZv8XgP4u99kPxf459ykfgH/kZvUL/C37C36
D8UPe5db9G+ov8++Rf1CffAgr58H/r+4xXwF/O14W9Y/cXvF3xm3mQ8rOrDv
NvdfKdr07Da/X0B9M+Ed5kOoX067Q/1T1xv33GG+iHr8kzv0l8Bb5K5Wnzfv
vCv+Zwnk4eFdfs8AvLHvsZ4CeSh0j/0t1DNb3uP3DIp23OP4adRb/7sv67sX
ePPfpz8A3ub3+b2Uoi3jON5d0d5/95k/KtqQ9wHzaUWbmzzg/jNF28Y84P4E
4N9I+qeiTbkeMr9Q11sbPtSe7xj5kPqkaPe6h6xnK9pe/xG/N7Apfg57xP3Q
wLua44nVuOHKI/ofrPfgx6zHqPHAysfsZ2K9Lz7W3m/9/Jj1FeDL9ES73rj8
Cfuj4N850suA98MTxqOKdqV/quH3VnvKepoad757KvpSQY170vi4HwPyWdnH
fBF4+/gYr2C9X//veqx3ymeMl1BftzxjPxry2ZP0d9ivebx+LfQ/+XPaW8hr
+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
gmDXpB9+4f9nkz9pV/B/pUXK3w==
       "], {{{}, 
         {Hue[0.67, 0.6, 0.6], Opacity[0.2], EdgeForm[None], 
          GraphicsGroupBox[PolygonBox[CompressedData["
1:eJwl3VMUI2vXqNG2bdu2bdu2be62bdu2bdu2bf99Zp/vYo7KfcYzklTeWith
o/aV2gUKECBAQJrH/9+1Wfz/vW5KExrTiIY0oD71qEsdalOLmtSgOtWoShUq
U4mKVKA85ShLGUpTipKUoDjFKEoRClOIghQgP/nISx5yk4uc5CA72chKFjKT
iYxkID3pSEsaUpOKlKQgOclIShISk4iEJCA+8YhLHGITi5jEIDrRiEoUIhOJ
iEQgPOEISxhCE4qQhCA4wQhKEAIT6N97QwD+xgsQ4P/4w29+8ZMffOcbX/nC
Zz7xkQ+85x1vecNrXvGSFzznGU95wmMe8ZAH3Oced7nDbW5xkxtc5xpXucJl
LnGRC5znHGc5w2lOcZITHOcYRznCYQ5xkAPsZx972cNudrGTHWxnG1vZwmY2
sZENrGcda1nDalaxkhUsZxlLWcJiFrGQBcxnHnOZw2xmMZMZTGcaU5nCZCYx
kQmMZxxjGcNoRjGSEQxnGEMZwmAGMZAB9Kcf/9GXPvSmFz3pQXe60ZUudKYT
HelAe9rRlja0phUtaUFzmtGUJjSmEQ1pQH3qUZc61KYWNalBdapRlSpUphIV
qUB5ylGWMpSmFCUpQXGKUZQiFKYQBSlAfvKRlzzkJhc5yUF2spGVLGQmExnJ
QHrSkZY0pCYVKUlBcpKRlCQkJhEJSUB84hGXOMQmFjGJQXSiEZUoRCYSEYlA
eMIRljCEJhQhCUFwghGUIAQmEAEJwN+4+ucPv/nFT37wnW985Quf+cRHPvCe
d7zlDa95xUte8JxnPOUJj3nEQx5wn3vc5Q63ucVNbnCda1zlCpe5xEUucJ5z
nOUMpznFSU5wnGMc5QiHOcRBDrCffexlD7vZxU52sJ1tbGULm9nERjawnnWs
ZQ2rWcVKVrCcZSxlCYtZxEIWMJ95zGUOs5nFTGYwnWlMZQqTmcREJjCecYxl
DKMZxUhGMJxhDGUIgxnEQAbQn378R1/60Jte9KQH3elGV7rQmU50pAPtaUdb
2tCaVrSkBc1pRlOa0JhGNKQB9alHXepQm1rUpAbVqUZVqlCZSlSkAuUpR1nK
UJpSlKQExSlGUYpQmEIUpAD5yUde8pCbXOQkB9nJRlaykJlMZCQD6UlHWtKQ
mlSkJAXJSUZSkpCYRCQkAfGJR1ziEJtYxCQG0YlGVKIQmUhEJALhCUdYwhCa
UIQkBMEJRlCCEJhABCQAf+Ponz/85hc/+cF3vvGVL3zmEx/5wHve8ZY3vOYV
L3nBc57xlCc85hEPecB97nGXO9zmFje5wXWucZUrXOYSF7nAec5xljOc5hQn
OcFxjnGUIxzmEAc5wH72sZc97GYXO9nBdraxlS1sZhMb2cB61rGWNaxmFStZ
wXKWsZQlLGYRC1nAfOYxlznMZhYzmcF0pjGVKUxmEhOZwHjGMZYxjGYUIxnB
cIYxlCEMZhADGUB/+vEffelDb3rRkx50pxtd6UJnOtGRDrSnHW1pQ2ta0ZIW
NKcZTWlCYxrRkAbUpx51qUNtalGTGlSnGlWpQmUqUZEKlKccZSlDaUpRkhIU
pxhFKUJhClGQAuQnH3nJQ25ykZMcZCcbWclCZjKRkQykJx1pSUNqUpGSFCQn
GUlJQmISkZAExCcecYlDbGIRkxhEJxpRiUJkIhGRCIQnHGEJQ2hCEZIQBCcY
QQlCYAIRkAD8ja1//vCbX/zkB9/5xle+8JlPfOQD73nHW97wmle85AXPecZT
nvCYRzzkAfe5x13ucJtb3OQG17nGVa5wmUtc5ALnOcdZznCaU5zkBMc5xlGO
cJhDHOQA+9nHXvawm13sZAfb2cZWtrCZTWxkA+tZx1rWsJpVrGQFy1nGUpaw
mEUsZAHzmcdc5jCbWcxkBtOZxlSmMJlJTGQC4xnHWMYwmlGMZATDGcZQhjCY
QQxkAP3px3/0pQ+96UVPetCdbnSlC53pREc60J52tKUNrWlFS1rQnGY0pQmN
aURDGlCfetSlDrWpRU1qUJ1qVKUKlalERSpQnnKUpQylKUVJSlCcYhSlCIUp
REEKkJ985CUPuclFTnKQnWxkJQuZyURGMpCedKQlDalJRUpSkJxkJCUJiUlE
QhIQn3jEJQ6xiUVMYhCdaEQlCpGJREQiEJ5whCUMoQlFSEIQnGAEJQiBCURA
AvA3lv75w29+8ZMffOcbX/nCZz7xkQ+85x1vecNrXvGSFzznGU95wmMe8ZAH
3Oced7nDbW5xkxtc5xpXucJlLnGRC5znHGc5w2lOcZITHOcYRznCYQ5xkAPs
Zx972cNudrGTHWxnG1vZwmY2sZENrGcda1nDalaxkhUsZxlLWcJiFrGQBcxn
HnOZw2xmMZMZTGcaU5nCZCYxkQmMZxxjGcNoRjGSEQxnGEMZwmAGMZAB9Kcf
/9GXPvSmFz3pQXe60ZUudKYTHelAe9rRlja0phUtaUFzmtGUJjSmEQ1pQH3q
UZc61KYWNalBdapRlSpUphIVqUB5ylGWMpSmFCUpQXGKUZQiFKYQBSlAfvKR
lzzkJhc5yUF2spGVLGQmExnJQHrSkZY0pCYVKUlBcpKRlCQkJhEJSUB84hGX
OMQmFjGJQXSiEZUoRCYSEYlAeMIRljCEJhQhCUFwghGUIAQmEAEJwN+Y+ucP
v/nFT37wnW985Quf+cRHPvCed7zlDa95xUte8JxnPOUJj3nEQx5wn3vc5Q63
ucVNbnCda1zlCpe5xEUucJ5znOUMpznFSU5wnGMc5QiHOcRBDrCffexlD7vZ
xU52sJ1tbGULm9nERjawnnWsZQ2rWcVKVrCcZSxlCYtZxEIWMJ95zGUOs5nF
TGYwnWlMZQqTmcREJjCecYxlDKMZxUhGMJxhDGUIgxnEQAbQn378R1/60Jte
9KQH3elGV7rQmU50pAPtaUdb2tCaVrSkBc1pRlOa0JhGNKQB9alHXepQm1rU
pAbVqUZVqlCZSlSkAuUpR1nKUJpSlKQExSlGUYpQmEIUpAD5yUde8pCbXOQk
B9nJRlaykJlMZCQD6UlHWtKQmlSkJAXJSUZSkpCYRCQkAfGJR1ziEJtYxCQG
0YlGVKIQmUhEJALhCUdYwhCaUIQkBMEJRlCCEJhABCQAf2Ponz/85hc/+cF3
vvGVL3zmEx/5wHve8ZY3vOYVL3nBc57xlCc85hEPecB97nGXO9zmFje5wXWu
cZUrXOYSF7nAec5xljOc5hQnOcFxjnGUIxzmEAc5wH72sZc97GYXO9nBdrax
lS1sZhMb2cB61rGWNaxmFStZwXKWsZQlLGYRC1nAfOYxlznMZhYzmcF0pjGV
KUxmEhOZwHjGMZYxjGYUIxnBcIYxlCEMZhADGUB/+vEffelDb3rRkx50pxtd
6UJnOtGRDrSnHW1pQ2ta0ZIWNKcZTWlCYxrRkAbUpx51qUNtalGTGlSnGlWp
QmUqUZEKlKccZSlDaUpRkhIUpxhFKUJhClGQAuQnH3nJQ25ykZMcZCcbWclC
ZjKRkQykJx1pSUNqUpGSFCQnGUlJQmISkZAExCcecYlDbGIRkxhEJxpRiUJk
IhGRCIQnHGEJQ2hCEZIQBCcYQQlCYAIRkAD8ja5//vCbX/zkB9/5xle+8JlP
fOQD73nHW97wmle85AXPecZTnvCYRzzkAfe5x13ucJtb3OQG17nGVa5wmUtc
5ALnOcdZznCaU5zkBMc5xlGOcJhDHOQA+9nHXvawm13sZAfb2cZWtrCZTWxk
A+tZx1rWsJpVrGQFy1nGUpawmEUsZAHzmcdc5jCbWcxkBtOZxlSmMJlJTGQC
4xnHWMYwmlGMZATDGcZQhjCYQQxkAP3px3/0pQ+96UVPetCdbnSlC53pREc6
0J52tKUNrWlFS1rQnGY0pQmNaURDGlCfetSlDrWpRU1qUJ1qVKUKlalERSpQ
nnKUpQylKUVJSlCcYhSlCIUpREEKkJ985CUPuclFTnKQnWxkJQuZyURGMpCe
dKQlDalJRUpSkJxkJCUJiUlEQhIQn3jEJQ6xiUVMYhCdaEQlCpGJREQiEJ5w
hCUMoQlFSEIQnGAEJQiBCURAAvA3mv75w29+8ZMffOcbX/nCZz7xkQ+85x1v
ecNrXvGSFzznGU95wmMe8ZAH3Oced7nDbW5xkxtc5xpXucJlLnGRC5znHGc5
w2lOcZITHOcYRznCYQ5xkAPsZx972cNudrGTHWxnG1vZwmY2sZENrGcda1nD
alaxkhUsZxlLWcJiFrGQBcxnHnOZw2xmMZMZTGcaU5nCZCYxkQmMZxxjGcNo
RjGSEQxnGEMZwmAGMZAB9Kcf/9GXPvSmFz3pQXe60ZUudKYTHelAe9rRlja0
phUtaUFzmtGUJjSmEQ1pQH3qUZc61KYWNalBdapRlSpUphIVqUB5ylGWMpSm
FCUpQXGKUZQiFKYQBSlAfvKRlzzkJhc5yUF2spGVLGQmExnJQHrSkZY0pCYV
KUlBcpKRlCQkJhEJSUB84hGXOMQmFjGJQXSiEZUoRCYSEYlAeMIRljCEJhQh
CUFwghGUIAQmEAEJwN+o+ucPv/nFT37wnW985Quf+cRHPvCed7zlDa95xUte
8JxnPOUJj3nEQx5wn3vc5Q63ucVNbnCda1zlCpe5xEUucJ5znOUMpznFSU5w
nGMc5QiHOcRBDrCffexlD7vZxU52sJ1tbGULm9nERjawnnWsZQ2rWcVKVrCc
ZSxlCYtZxEIWMJ95zGUOs5nFTGYwnWlMZQqTmcREJjCecYxlDKMZxUhGMJxh
DGUIgxnEQAbQn378R1/60Jte9KQH3elGV7rQmU50pAPtaUdb2tCaVrSkBc1p
RlOa0JhGNKQB9alHXepQm1rUpAbVqUZVqlCZSlSkAuUpR1nKUJpSlKQExSlG
UYpQmEIUpAD5yUde8pCbXOQkB9nJRlaykJlMZCQD6UlHWtKQmlSkJAXJSUZS
kpCYRCQkAfGJR1ziEJtYxCQG0YlGVKIQmUhEJALhCUdYwhCaUIQkBMEJRlCC
EJhABCQAf6Ponz/85hc/+cF3vvGVL3zmEx/5wHve8ZY3vOYVL3nBc57xlCc8
5hEPecB97nGXO9zmFje5wXWucZUrXOYSF7nAec5xljOc5hQnOcFxjnGUIxzm
EAc5wH72sZc97GYXO9nBdraxlS1sZhMb2cB61rGWNaxmFStZwXKWsZQlLGYR
C1nAfOYxlznMZhYzmcF0pjGVKUxmEhOZwHjGMZYxjGYUIxnBcIYxlCEMZhAD
GUB/+vEffelDb3rRkx50pxtd6UJnOtGRDrSnHW1pQ2ta0ZIWNKcZTWlCYxrR
kAbUpx51qUNtalGTGlSnGlWpQmUqUZEKlKccZSlDaUpRkhIUpxhFKUJhClGQ
AuQnH3nJQ25ykZMcZCcbWclCZjKRkQykJx1pSUNqUpGSFCQnGUlJQmISkZAE
xCcecYlDbGIRkxhEJxpRiUJkIhGRCIQnHGEJQ2hCEZIQBCcYQQlCYAIRkAD8
jax//vCbX/zkB9/5xle+8JlPfOQD73nHW97wmle85AXPecZTnvCYRzzkAfe5
x13ucJtb3OQG17nGVa5wmUtc5ALnOcdZznCaU5zkBMc5xlGOcJhDHOQA+9nH
Xvawm13sZAfb2cZWtrCZTWxkA+tZx1rWsJpVrGQFy1nGUpawmEUsZAHzmcdc
5jCbWcxkBtOZxlSmMJlJTGQC4xnHWMYwmlGMZATDGcZQhjCYQQxkAP3px3/0
pQ+96UVPetCdbnSlC53pREc60J52tKUNrWlFS1rQnGY0pQmNaURDGlCfetSl
DrWpRU1qUJ1qVKUKlalERSpQnnKUpQylKUVJSlCcYhSlCIUpREEKkJ985CUP
uclFTnKQnWxkJQuZyURGMpCedKQlDalJRUpSkJxkJCUJiUlEQhIQn3jEJQ6x
iUVMYhCdaEQlCpGJREQiEJ5whCUMoQlFSEIQnGAEJQiBCURAAvA3kv75w29+
8ZMffOcbX/nCZz7xkQ+85x1vecNrXvGSFzznGU95wmMe8ZAH3Oced7nDbW5x
kxtc5xpXucJlLnGRC5znHGc5w2lOcZITHOcYRznCYQ5xkAPsZx972cNudrGT
HWxnG1vZwmY2sZENrGcda1nDalaxkhUsZxlLWcJiFrGQBcxnHnOZw2xmMZMZ
TGcaU5nCZCYxkQmMZxxjGcNoRjGSEQxnGEMZwmAGMZAB9Kcf/9GXPvSmFz3p
QXe60ZUudKYTHelAe9rRlja0phUtaUFzmtGUJjSmEQ1pQH3qUZc61KYWNalB
dapRlSpUphIVqUB5ylGWMpSmFCUpQXGKUZQiFKYQBSlAfvKRlzzkJhc5yUF2
spGVLGQmExnJQHrSkZY0pCYVKUlBcpKRlCQkJhEJSUB84hGXOMQmFjGJQXSi
EZUoRCYSEYlAeMIRljCEJhQhCUFwghGUIAQmEAEJwN+I+ucPv/nFT37wnW98
5Quf+cRHPvCed7zlDa95xUte8JxnPOUJj3nEQx5wn3vc5Q63ucVNbnCda1zl
Cpe5xEUucJ5znOUMpznFSU5wnGMc5QiHOcRBDrCffexlD7vZxU52sJ1tbGUL
m9nERjawnnWsZQ2rWcVKVrCcZSxlCYtZxEIWMJ95zGUOs5nFTGYwnWlMZQqT
mcREJjCecYxlDKMZxUhGMJxhDGUIgxnEQAbQn378R1/60Jte9KQH3elGV7rQ
mU50pAPtaUdb2tCaVrSkBc1pRlOa0JhGNKQB9alHXepQm1rUpAbVqUZVqlCZ
SlSkAuUpR1nKUJpSlKQExSlGUYpQmEIUpAD5yUde8pCbXOQkB9nJRlaykJlM
ZCQD6UlHWtKQmlSkJAXJSUZSkpCYRCQkAfGJR1ziEJtYxCQG0YlGVKIQmUhE
JALhCUdYwhCaUIQkBMEJRlCCEJhABCQAfyPonz/85hc/+cF3vvGVL3zmEx/5
wHve8ZY3vOYVL3nBc57xlCc85hEPecB97nGXO9zmFje5wXWucZUrXOYSF7nA
ec5xljOc5hQnOcFxjnGUIxzmEAc5wH72sZc97GYXO9nBdraxlS1sZhMb2cB6
1rGWNaxmFStZwXKWsZQlLGYRC1nAfOYxlznMZhYzmcF0pjGVKUxmEhOZwHjG
MZYxjGYUIxnBcIYxlCEMZhADGUB/+vEffelDb3rRkx50pxtd6UJnOtGRDrSn
HW1pQ2ta0ZIWNKcZTWlCYxrRkAbUpx51qUNtalGTGlSnGlWpQmUqUZEKlKcc
ZSlDaUpRkhIUpxhFKUJhClGQAuQnH3nJQ25ykZMcZCcbWclCZjKRkQykJx1p
SUNqUpGSFCQnGUlJQmISkZAExCcecYlDbGIRkxhEJxpRiUJkIhGRCIQnHGEJ
Q2hCEZIQBCcYQQlCYAIRkAD8Da9//vCbX/zkB9/5xle+8JlPfOQD73nHW97w
mle85AXPecZTnvCYRzzkAfe5x13ucJtb3OQG17nGVa5wmUtc5ALnOcdZznCa
U5zkBMc5xlGOcJhDHOQA+9nHXvawm13sZAfb2cZWtrCZTWxkA+tZx1rWsJpV
rGQFy1nGUpawmEUsZAHzmcdc5jCbWcxkBtOZxlSmMJlJTGQC4xnHWMYwmlGM
ZATDGcZQhjCYQQxkAP3px3/0pQ+96UVPetCdbnSlC53pREc60J52tKUNrWlF
S1rQnGY0pQmNaURDGlCfetSlDrWpRU1qUJ1qVKUKlalERSpQnnKUpQylKUVJ
SlCcYhSlCIUpREEKkJ985CUPuclFTnKQnWxkJQuZyURGMpCedKQlDalJRUpS
kJxkJCUJiUlEQhIQn3jEJQ6xiUVMYhCdaEQlCpGJREQiEJ5whCUMoQlFSEIQ
nGAEJQiBCURAAvA3nP75w29+8ZMffOcbX/nCZz7xkQ+85x1vecNrXvGSFzzn
GU95wmMe8ZAH3Oced7nDbW5xkxtc5xpXucJlLnGRC5znHGc5w2lOcZITHOcY
RznCYQ5xkAPsZx972cNudrGTHWxnG1vZwmY2sZENrGcda1nDalaxkhUsZxlL
WcJiFrGQBcxnHnOZw2xmMZMZTGcaU5nCZCYxkQmMZxxjGcNoRjGSEQxnGEMZ
wmAGMZAB9Kcf/9GXPvSmFz3pQXe60ZUudKYTHelAe9rRlja0phUtaUFzmtGU
JjSmEQ1pQH3qUZc61KYWNalBdapRlSpUphIVqUB5ylGWMpSmFCUpQXGKUZQi
FKYQBSlAfvKRlzzkJhc5yUF2spGVLGQmExnJQHrSkZY0pCYVKUlBcpKRlCQk
JhEJSUB84hGXOMQmFjGJQXSiEZUoRCYSEYlAeMIRljCEJhQhCUFwghGUIAQm
EAEJwN+w+ucPv/nFT37wnW985Quf+cRHPvCed7zlDa95xUte8JxnPOUJj3nE
Qx5wn3vc5Q63ucVNbnCda1zlCpe5xEUucJ5znOUMpznFSU5wnGMc5QiHOcRB
DrCffexlD7vZxU52sJ1tbGULm9nERjawnnWsZQ2rWcVKVrCcZSxlCYtZxEIW
MJ95zGUOs5nFTGYwnWlMZQqTmcREJjCecYxlDKMZxUhGMJxhDGUIgxnEQAbQ
n378R1/60Jte9KQH3elGV7rQmU50pAPtaUdb2tCaVrSkBc1pRlOa0JhGNKQB
9alHXepQm1rUpAbVqUZVqlCZSlSkAuUpR1nKUJpSlKQExSlGUYpQmEIUpAD5
yUde8pCbXOQkB9nJRlaykJlMZCQD6UlHWtKQmlSkJAXJSUZSkpCYRCQkAfGJ
R1ziEJtYxCQG0YlGVKIQmUhEJALhCUdYwhCaUIQkBMEJRlCCEJhABCQAf8Po
nz/85hc/+cF3vvGVL3zmEx/5wHve8ZY3vOYVL3nBc57xlCc85hEPecB97nGX
O9zmFje5wXWucZUrXOYSF7nAec5xljOc5hQnOcFxjnGUIxzmEAc5wH72sZc9
7GYXO9nBdraxlS1sZhMb2cB61rGWNaxmFStZwXKWsZQlLGYRC1nAfOYxlznM
ZhYzmcF0pjGVKUxmEhOZwHjGMZYxjGYUIxnBcIYxlCEMZhADGUB/+vEffelD
b3rRkx50pxtd6UJnOtGRDrSnHW1pQ2ta0ZIWNKcZTWlCYxrRkAbUpx51qUNt
alGTGlSnGlWpQmUqUZEKlKccZSlDaUpRkhIUpxhFKUJhClGQAuQnH3nJQ25y
kZMcZCcbWclCZjKRkQykJx1pSUNqUpGSFCQnGUlJQmISkZAExCcecYlDbGIR
kxhEJxpRiUJkIhGRCIQnHGEJQ2hCEZIQBCcYQQlCYAIRkAD8Da1//vCbX/zk
B9/5xle+8JlPfOQD73nHW97wmle85AXPecZTnvCYRzzkAfe5x13ucJtb3OQG
17nGVa5wmUtc5ALnOcdZznCaU5zkBMc5xlGOcJhDHOQA+9nHXvawm13sZAfb
2cZWtrCZTWxkA+tZx1rWsJpVrGQFy1nGUpawmEUsZAHzmcdc5jCbWcxkBtOZ
xlSmMJlJTGQC4xnHWMYwmlGMZATDGcZQhjCYQQxkAP3px3/0pQ+96UVPetCd
bnSlC53pREc60J52tKUNrWlFS1rQnGY0pQmNaURDGlCfetSlDrWpRU1qUJ1q
VKUKlalERSpQnnKUpQylKUVJSlCcYhSlCIUpREEKkJ985CUPuclFTnKQnWxk
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
OMQmFjGJQXSiEZUoRCYSEYlAeMIRljCEJhQhCUFwghGUIAQmEAEJwN+g+ucP
v/nFT37wnW985Quf+cRHPvCed7zlDa95xUte8JxnPOUJj3nEQx5wn3vc5Q63
ucVNbnCda1zlCpe5xEUucJ5znOUMpznFSU5wnGMc5QiHOcRBDrCffexlD7vZ
xU52sJ1tbGULm9nERjawnnWsZQ2rWcVKVrCcZSxlCYtZxEIWMJ95zGUOs5nF
TGYwnWlMZQqTmcREJjCecYxlDKMZxUhGMJxhDGUIgxnEQAbQn378R1/60Jte
9KQH3elGV7rQmU50pAPtaUdb2tCaVrSkBc1pRlOa0JhGNKQB9alHXepQm1rU
pAbVqUZVqlCZSlSkAuUpR1nKUJpSlKQExSlGUYpQmEIUpAD5yUde8pCbXOQk
B9nJRlaykJlMZCQD6UlHWtKQmlSkJAXJSUZSkpCYRCQkAfGJR1ziEJtYxCQG
0YlGVKIQmUhEJALhCUdYwhCaUIQkBMEJRlCCEJhABCQAf4Ponz/85hc/+cF3
vvGVL3zmEx/5wHve8ZY3vOYVL3nBc57xlCc85hEPecB97nGXO9zmFje5wXWu
cZUrXOYSF7nAec5xljOc5hQnOcFxjnGUIxzmEAc5wH72sZc97GYXO9nBdrax
lS1sZhMb2cB61rGWNaxmFStZwXKWsZQlLGYRC1nAfOYxlznMZhYzmcF0pjGV
KUxmEhOZwHjGMZYxjGYUIxnBcIYxlCEMZhADGUB/+vEffelDb3rRkx50pxtd
6UJnOtGRDrSnHW1pQ2ta0ZIWNKcZTWlCYxrRkAbUpx51qUNtalGTGlSnGlWp
QmUqUZEKlKccZSlDaUpRkhIUpxhFKUJhClGQAuQnH3nJQ25ykZMcZCcbWclC
ZjKRkQykJx1pSUNqUpGSFCQnGUlJQmISkZAExCcecYlDbGIRkxhEJxpRiUJk
IhGRCIQnHGEJQ2hCEZIQBCcYQQlCYAIRkAD8Dax//vCbX/zkB9/5xle+8JlP
fOQD73nHW97wmle85AXPecZTnvCYRzzkAfe5x13ucJtb3OQG17nGVa5wmUtc
5ALnOcdZznCaU5zkBMc5xlGOcJhDHOQA+9nHXvawm13sZAfb2cZWtrCZTWxk
A+tZx1rWsJpVrGQFy1nGUpawmEUsZAHzmcdc5jCbWcxkBtOZxlSmMJlJTGQC
4xnHWMYwmlGMZATDGcZQhjCYQQxkAP3px3/0pQ+96UVPetCdbnSlC53pREc6
0J52tKUNrWlFS1rQnGY0pQmNaURDGlCfetSlDrWpRU1qUJ1qVKUKlalERSpQ
nnKUpQylKUVJSlCcYhSlCIUpREEKkJ985CUPuclFTnKQnWxkJQuZyURGMpCe
dKQlDalJRUpSkJxkJCUJiUlEQhIQn3jEJQ6xiUVMYhCdaEQlCpGJREQiEJ5w
hCUMoQlFSEIQnGAEJQiBCURAAvA3kP75w29+8ZMffOcbX/nCZz7xkQ+85x1v
ecNrXvGSFzznGU95wmMe8ZAH3Oced7nDbW5xkxtc5xpXucJlLnGRC5znHGc5
w2lOcZITHOcYRznCYQ5xkAPsZx972cNudrGTHWxnG1vZwmY2sZENrGcda1nD
alaxkhUsZxlLWcJiFrGQBcxnHnOZw2xmMZMZTGcaU5nCZCYxkQmMZxxjGcNo
RjGSEQxnGEMZwmAGMZAB9Kcf/9GXPvSmFz3pQXe60ZUudKYTHelAe/4t/WxL
G1rTipa0oDnNaEoTGtOIhjSgPvWoSx1qU4ua1KA61ahKFSpTiYpUoDzlKEsZ
SlOKkpSgOMUoShEKU4iCFCA/+chLHnKTi5zkIDvZyEoWMpOJjGQgPelISxpS
k4qUpCA5yUhKEhKTiIQkID7xiEscYhOLmMQgOtGIShQiE4mIRCA84QhLGEIT
ipCEIDjBCEoQAhOIgATgb0D984ff/OInP/jON77yhc984iMfeM873vKG17zi
JS94zjOe8oTHPOIhD7jPPe5yh9vc4iY3uM41rnKFy1ziIhc4zznOcobTnOIk
JzjOMY5yhMMc4iAH2M8+9rKH3exiJzvYzja2soXNbGIjG1jPOtayhtWsYiUr
WM4ylrKExSxiIQuYzzzmMofZzGImM5jONKYyhclMYiITGM84xjKG0YxiJCMY
zjCGMoTBDGIgA+hPP/6jL33oTS960oPudKMrXehMJzrSgfa0oy1taE0rWtKC
5jSjKU1oTCMa0oD61KMudahNLWpSg+pUoypVqEwlKlKB8pSjLGUoTSlKUoLi
FKMoRShMIQpSgPzkIy95yE0ucpKD7GQjK1nITCYykoH0pCMtaUhNKlKSguQk
IylJSEwiEpKA+MQjLnGITSxiEoPoRCMqUYhMJCISgfCEIyxhCE0oQhKC4AQj
KEEITCACBvzfoua/Lv/HH37zi5/84Dvf+MoXPvOJj3zgPe94yxte84qXvOA5
z3jKEx7ziIc84D73uMsdbnOLm9zgOte4yhUuc4mLXOA85zjLGU5zipOc4DjH
OMoRDnOIgxxgP/vYyx52s4ud7GA729jKFjaziY1sYD3rWMsaVrOKlaxgOctY
yhIWs4iFLGA+85jLHGYzi5nMYDrTmMoUJjOJiUxgPOMYyxhGM4qRjGA4wxjK
EAYziIEMoD/9+I++9KE3vehJD7rTja50oTOd6EgH2tOOtrShNa1oSQua04ym
NKExjWhIA+pTj7rUoTa1qEkNqlONqlShMpWoSAXKU46ylKE0pShJCYpTjKIU
oTCFKEgB8pOPvOQhN7nISQ6yk42sZCEzmchIBtKTjrSkITWpSEkKkpOMpCQh
MYlISIIA/38F9781vP9Wcf5bx/dvJde/tTz/VnP8G8//b0T3vzG9/0Z1/hvX
929k17+xPf9Gd/x7fP/fI7z/HuP79yjPv+P8/470/jvW9+9oz7+/9//9xffv
Nv+/W33/fu7/+8r/72M/wP8D1A5mPw==
            "]]]}, {}, {}}, {{}, {}, 
         {Hue[0.67, 0.6, 0.6], LineBox[CompressedData["
1:eJwl3UMQINuyBdDXtm3btm3btq3btm3btm3btu3uvzr+YEUNa1BROidzZ4KG
7Sq2DfC///2vSbz//e/fMSCBCEwQghKM4IQgJKEITRjCEo7wRCAikYhMFKIS
jejEICaxiE0c4uLU/4tPAhKSiMQkISnJSE4KUpKK1KQhLelITwYykonMZCEr
2chODnKSi9zkIS/5yE8BClKIwhShKMUoTglKUorSlKEs5ShPBSpSicpUoSrV
qE4NalKL2tShLvWoTwMa0ojG/64JTWlGc1rQkla0pg1taUd7OtCRTnSmC13p
Rnd60JNe9KYP/9GXfvRnAAMZxGCGMJRhDGcEIxnFaMYwlnGMZwITmcRkpjCV
aUxnBjOZxWzmMJd5zGcBC1nEYpawlGUsZwUrWcVq1rCWdaxnAxvZxGa2sJVt
bGcHO9nFbvawl33s5wAHOcRhjnCUYxznBCc5xWnOcJZznOcCF7nEZa5wlWtc
5wY3ucVt7nCXe9znAQ95xGOe8JRnPOcFL3nFa97wlne85wMf+cRnvvCVb3zn
Bz/5xW/+8Jd/N38AAhKIwAQhKMEITghCEorQhCEs4QhPBCISichEISrRiE4M
YhKL2MQhLvGITwISkojEJCEpyUhOClKSitSkIS3pSE8GMpKJzGQhK9nITg5y
kovc5CEv+chPAQpSiMIUoSjFKE4JSlKK0pShLOUoTwUqUonKVKEq1ahODWpS
i9rUoS71qE8DGtKIxjShKc1oTgta0orWtOHfw7sd7elARzrRmS50pRvd6UFP
etGbPvxHX/rRnwEMZBCDGcJQhjGcEYxkFKMZw1jGMZ4JTGQSk5nCVKYxnRnM
ZBazmcNc5jGfBSxkEYtZwlKWsZwVrGQVq1nDWtaxng1sZBOb2cJWtrGdHexk
F7vZw172sZ8DHOQQhznCUY5xnBOc5BSnOcNZznGeC1zkEpe5wlWucZ0b3OQW
t7nDXe5xnwc85BGPecJTnvGcF7zkFa95w1ve8Z4PfOQTn/nCV77xnR/85Be/
+cNf/r34AxCQQAQmCEEJRnBCEJJQhCYMYQlHeCIQkUhEJgpRiUZ0YhCTWMQm
DnGJR3wSkJBEJCYJSUlGclKQklSkJg1pSUd6MpCRTGQmC1nJRnZykJNc5CYP
eclHfgpQkEIUpghFKUZxSlCSUpSmDGUpR3kqUJFKVKYKValGdWpQk1rUpg51
qUd9GtCQRjSmCU1pRnNa0JJWtKYNbWlHezrQkU50pgtd6UZ3etCTXvSmD//R
l370ZwADGcRghjCUYQxnBCMZxWjGMJZxjGcCE5nEZKYwlWlMZwYzmcVs5jCX
ecxnAQtZxGKWsJRlLGcFK1nFatawlnWsZwMb2cRmtrCVbWxnBzvZxW72sJd9
7OcABznEYY5wlGMc5wQnOcVpznCWc5znAhe5xGWucJVrXOcGN7nFbe5wl3vc
5wEPecRjnvCUZzznBS95xWve8JZ3vOcDH/nEZ77wlW985wc/+cVv/vCXfx/9
AQhIIAIThKAEIzghCEkoQhOGsIQjPBGISCQiE4WoRCM6MYhJLGITh7jEIz4J
SEgiEpOEpCQjOSlISSpSk4a0pCM9GchIJjKThaxkIzs5yEkucpOHvOQjPwUo
SCEKU4SiFKM4JShJKUpThrKUozwVqEglKlOFqlSjOjWoSS1qU4e61KM+DWhI
IxrThKY0ozktaEkrWtOGtrSjPR3oSCc604WudKM7PehJL3rTh//oSz/6M4CB
DGIwQxjKMIYzgpGMYjRjGMs4xjOBiUxiMlOYyjSmM4OZzGI2c5jLPOazgIUs
YjFLWMoylrOClaxiNWtYyzrWs4GNbGIzW9jKNrazg53sYjd72Ms+9nOAgxzi
MEc4yjGOc4KTnOI0ZzjLOc5zgYtc4jJXuMo1rnODm9ziNne4yz3u84CHPOIx
T3jKM57zgpe84jVveMs73vOBj3ziM1/4yje+84Of/OI3f/jLvx/+AAQkEIEJ
QlCCEZwQhCQUoQlDWMIRnghEJBKRiUJUohGdGMQkFrGJQ1ziEZ8EJCQRiUlC
UpKRnBSkJBWpSUNa0pGeDGQkE5nJQlaykZ0c5CQXuclDXvKRnwIUpBCFKUJR
ilGcEpSkFKUpQ1nKUZ4KVKQSlalCVapRnRrUpBa1qUNd6lGfBjSkEY1pQlOa
0ZwWtKQVrWlDW9rRng50pBOd6UJXutGdHvSkF73pw3/0pR/9GcBABjGYIQxl
GMMZwUhGMZoxjGUc45nARCYxmSlMZRrTmcFMZjGbOcxlHvNZwEIWsZglLGUZ
y1nBSlaxmjWsZR3r2cBGNrGZLWxlG9vZwU52sZs97GUf+znAQQ5xmCMc5RjH
OcFJTnGaM5zlHOe5wEUucZkrXOUa17nBTW5xmzvc5R73ecBDHvGYJzzlGc95
wUte8Zo3vOUd7/nARz7xmS985Rvf+cFPfvGbP/zl32JfAAISiMAEISjBCE4I
QhKK0IQhLOEITwQiEonIRCEq0YhODGISi9jEIS7xiE8CEpKIxCQhKclITgpS
korUpCEt6UhPBjKSicxkISvZyE4OcpKL3OQhL/nITwEKUojCFKEoxShOCUpS
itKUoSzlKE8FKlKJylShKtWoTg1qUova1KEu9ahPAxrSiMY0oSnNaE4LWtKK
1rShLe1oTwc60onOdKEr3ehOD3rSi9704T/60o/+DGAggxjMEIYyjOGMYCSj
GM0YxjKO8UxgIpOYzBSmMo3pzGAms5jNHOYyj/ksYCGLWMwSlrKM5axgJatY
zRrWso71bGAjm9jMFrayje3sYCe72M0e9rKP/RzgIIc4zBGOcozjnOAkpzjN
Gc5yjvNc4CKXuMwVrnKN69zgJre4zR3uco/7POAhj3jME57yjOe84CWveM0b
3vKO93zgI5/4zBe+8o3v/OAnv/jNH/7yb6E/AAEJRGCCEJRgBCcEIQlFaMIQ
lnCEJwIRiURkohCVaEQnBjGJRWziEJd4xCcBCUlEYpKQlGQkJwUpSUVq0pCW
dKQnAxnJRGaykJVsZCcHOclFbvKQl3zkpwAFKURhilCUYhSnBCUpRWnKUJZy
lKcCFalEZapQlWpUpwY1qUVt6lCXetSnAQ1pRGOa0JRmNKcFLWlFa9rQlna0
pwMd6URnutCVbnSnBz3pRW/68B996Ud/BjCQQQxmCEMZxnBGMJJRjGYMYxnH
eCYwkUlMZgpTmcZ0ZjCTWcxmDnOZx3wWsJBFLGYJS1nGclawklWsZg1rWcd6
NrCRTWxmC1vZxnZ2sJNd7GYPe9nHfg5wkEMc5ghHOcZxTnCSU5zmDGc5x3ku
cJFLXOYKV7nGdW5wk1vc5g53ucd9HvCQRzzmCU95xnNe8JJXvOYNb3nHez7w
kU985gtf+cZ3fvCTX/zmD3/5t8kXgIAEIjBBCEowghOCkIQiNGEISzjCE4GI
RCIyUYhKNKITg5jEIjZxiEs84pOAhCQiMUlISjKSk4KUpCI1aUhLOtKTgYxk
IjNZyEo2spODnOQiN3nISz7yU4CCFKIwRShKMYpTgpKUojRlKEs5ylOBilSi
MlWoSjWqU4Oa1KI2dahLPerTgIY0ojFNaEozmtOClrSiNW1oSzva04GOdKIz
XehKN7rTg570ojd9+I++9KM/AxjIIAYzhKEMYzgjGMkoRjOGsYxjPBOYyCQm
M4WpTGM6M5jJLGYzh7nMYz4LWMgiFrOEpSxjOStYySpWs4a1rGM9G9jIJjaz
ha1sYzs72MkudrOHvexjPwc4yCEOc4SjHOM4JzjJKU5zhrOc4zwXuMglLnOF
q1zjOje4yS1uc4e73OM+D3jIIx7zhKc84zkveMkrXvOGt7zjPR/4yCc+84Wv
fOM7P/jJL37zh7/82+APQEACEZggBCUYwQlBSEIRmjCEJRzhiUBEIhGZKEQl
GtGJQUxiEZs4xCUe8UlAQhKRmCQkJRnJSUFKUpGaNKQlHenJQEYykZksZCUb
2clBTnKRmzzkJR/5KUBBClGYIhSlGMUpQUlKUZoylKUc5alARSpRmSpUpRrV
qUFNalGbOtSlHvVpQEMa0ZgmNKUZzWlBS1rRmja0pR3t6UBHOtGZLnSlG93p
QU960Zs+/Edf+tGfAQxkEIMZwlCGMZwRjGQUoxnDWMYxnglMZBKTmcJUpjGd
GcxkFrOZw1zmMZ8FLGQRi1nCUpaxnBWsZBWrWcNa1rGeDWxkE5vZwla2sZ0d
7GQXu9nDXvaxnwMc5BCHOcJRjnGcE5zkFKc5w1nOcZ4LXOQSl7nCVa5xnRvc
5Ba3ucNd7nGfBzzkEY95wlOe8ZwXvOQVr3nDW97xng985BOf+cJXvvGdH/zk
F7/5w1/+FfcEICCBCEwQghKM4IQgJKEITRjCEo7wRCAikYhMFKISjejEICax
iE0c4hKP+CQgIYlITBKSkozkpCAlqUhNGtKSjvRkICOZyEwWspKN7OQgJ7nI
TR7yko/8FKAghShMEYpSjOKUoCSlKE0ZylKO8lSgIpWoTBWqUo3q1KAmtahN
HepSj/o0oCGNaEwTmtKM5rSgJa1oTRva0o72dKAjnehMF7rSje70oCe96E0f
/qMv/ejPAAYyiMEMYSjDGM4IRjKK0YxhLOMYzwQmMonJTGEq05jODGYyi9nM
YS7zmM8CFrKIxSxhKctYzgpWsorVrGEt61jPBjayic1sYSvb2M4OdrKL3exh
L/vYzwEOcojDHOEoxzjOCU5yitOc4SznOM8FLnKJy1zhKte4zg1ucovb3OEu
97jPAx7yiMc84SnPeM4LXvKK17zhLe94zwc+8onPfOEr3/jOD37yi9/84S//
CvsCEJBABCYIQQlGcEIQklCEJgxhCUd4IhCRSEQmClGJRnRiEJNYxCYOcYlH
fBKQkEQkJglJSUZyUpCSVKQmDWlJR3oykJFMZCYLWclGdnKQk1zkJg95yUd+
ClCQQhSmCEUpRnFKUJJSlKYMZSlHeSpQkUpUpgpVqUZ1alCTWtSmDnWpR30a
0JBGNKYJTWlGc1rQkla0pg1taUd7OtCRTnSmC13pRnd60JNe9KYP/9GXfvRn
AAMZxGCGMJRhDGcEIxnFaMYwlnGMZwITmcRkpjCVaUxnBjOZxWzmMJd5zGcB
C1nEYpawlGUsZwUrWcVq1rCWdaxnAxvZxGa2sJVtbGcHO9nFbvawl33s5wAH
OcRhjnCUYxznBCc5xWnOcJZznOcCF7nEZa5wlWtc5wY3ucVt7nCXe9znAQ95
xGOe8JRnPOcFL3nFa97wlne85wMf+cRnvvCVb3znBz/5xW/+8Jd/Rb0BCEgg
AhOEoAQjOCEISShCE4awhCM8EYhIJCIThahEIzoxiEksYhOHuMQjPglISCIS
k4SkJCM5KUhJKlKThrSkIz0ZyEgmMpOFrGQjOznISS5yk4e85CM/BShIIQpT
hKIUozglKEkpSlOGspSjPBWoSCUqU4WqVKM6NahJLWpTh7rUoz4NaEgjGtOE
pjSjOS1oSSta04a2tKM9HehIJzrTha50ozs96EkvetOH/+hLP/ozgIEMYjBD
GMowhjOCkYxiNGMYyzjGM4GJTGIyU5jKNKYzg5nMYjZzmMs85rOAhSxiMUtY
yjKWs4KVrGI1a1jLOtazgY1sYjNb2Mo2trODnexiN3vYyz72c4CDHOIwRzjK
MY5zgpOc4jRnOMs5znOBi1ziMle4yjWuc4Ob3OI2d7jLPe7zgIc84jFPeMoz
nvOCl7ziNW94yzve84GPfOIzX/jKN77zg5/84jd/+Mu/gv4ABCQQgQlCUIIR
nBCEJBShCUNYwhGeCEQkEpGJQlSiEZ0YxCQWsYlDXOIRnwQkJBGJSUJSkpGc
FKQkFalJQ1rSkZ4MZCQTmclCVrKRnRzkJBe5yUNe8pGfAhSkEIUpQlGKUZwS
lKQUpSlDWcpRngpUpBKVqUJVqlGdGtSkFrWpQ13qUZ8GNKQRjWlCU5rRnBa0
pBWtaUNb2tGeDnSkE53pQle60Z0e9KQXvenDf/SlH/0ZwEAGMZghDGUYwxnB
SEYxmjGMZRzjmcBEJjGZKUxlGtOZwUxmMZs5zGUe81nAQhaxmCUsZRnLWcFK
VrGaNaxlHevZwEY2sZktbGUb29nBTnaxmz3sZR/7OcBBDnGYIxzlGMc5wUlO
cZoznOUc57nARS5xmStc5RrXucFNbnGbO9zlHvd5wEMe8ZgnPOUZz3nBS17x
mje85R3v+cBHPvGZL3zlG9/5wU9+8Zs//OVfM08AAhKIwAQhKMEITghCEorQ
hCEs4QhPBCISichEISrRiE4MYhKL2MQhLvGITwISkojEJCEpyUhOClKSitSk
IS3pSE8GMpKJzGQhK9nITg5ykovc5CEv+chPAQpSiMIUoSjFKE4JSlKK0pSh
LOUoTwUqUonKVKEq1ahODWpSi9rUoS71qE8DGtKIxjShKc1oTgta0orWtKEt
7WhPBzrSic50oSvd6E4PetKL3vThP/rSj/4MYCCDGMwQhjKM4YxgJKMYzRjG
Mo7xTGAik5jMFKYyjenMYCazmM0c5jKP+SxgIYtYzBKWsozlrGAlq1jNGtay
jvVsYCOb2MwWtrKN7exgJ7vYzR72so/9HOAghzjMEY5yjOOc4CSnOM0ZznKO
81zgIpe4zBWuco3r3OAmt7jNHe5yj/s84CGPeMwTnvKM57zgJa94zRve8o73
fOAjn/jMF77yje/84Ce/+M0f/vKvkS8AAQlEYIIQlGAEJwQhCUVowhCWcIQn
AhGJRGSiEJVoRCcGMYlFbOIQl3jEJwEJSURikpCUZCQnBSlJRWrSkJZ0pCcD
GclEZrKQlWxkJwc5yUVu8pCXfOSnAAUpRGGKUJRiFKcEJSlFacpQlnKUpwIV
qURlqlCValSnBjWpRW3qUJd61KcBDWlEY5rQlGY0pwUtaUVr2tCWdrSnAx3p
RGe60JVudKcHPelFb/rwH33pR38GMJBBDGYIQxnGcEYwklGMZgxjGcd4JjCR
SUxmClOZxnRmMJNZzGYOc5nHfBawkEUsZglLWcZyVrCSVaxmDWtZx3o2sJFN
bGYLW9nGdnawk13sZg972cd+DnCQQxzmCEc5xnFOcJJTnOYMZznHeS5wkUtc
5gpXucZ1bnCTW9zmDne5x30e8JBHPOYJT3nGc17wkle85g1vecd7PvCRT3zm
C1/5xnd+8JNf/OYPf/nXxBuAgAQiMEEISjCCE4KQhCI0YQhLOMITgYhEIjJR
iEo0ohODmMQiNnGISzzik4CEJCIxSUhKMpKTgpSkIjVpSEs60pOBjGQiM1nI
Sjayk4Oc5CI3echLPvJTgIIUojBFKEoxilOCkpSiNGUoSznKU4GKVKIyVahK
NapTg5rUojZ1qEs96tOAhjSiMU1oSjOa04KWtKI1bWhLO9rTgY50ojNd6Eo3
utODnvSiN334j770oz8DGMggBjOEoQxjOCMYyShGM4axjGM8E5jIJCYzhalM
YzozmMksZjOHucxjPgtYyCIWs4SlLGM5K1jJKlazhrWsYz0b2MgmNrOFrWxj
OzvYyS52s4e97GM/BzjIIQ5zhKMc4zgnOMkpTnOGs5zjPBe4yCUuc4WrXOM6
N7jJLW5zh7vc4z4PeMgjHvOEpzzjOS94ySte84a3vOM9H/jIJz7zha984zs/
+MkvfvOHv/xr4A9AQAIRmCAEJRjBCUFIQhGaMIQlHOGJQEQiEZkoRCUa0YlB
TGIRmzjEJR7xSUBCEpGYJCQlGclJQUpSkZo0pCUd6clARjKRmSxkJRvZyUFO
cpGbPOQlH/kpQEEKUZgiFKUYxSlBSUpRmjKUpRzlqUBFKlGZKlSlGtWpQU1q
UZs61KUe9WlAQxrRmCY0pRnNaUFLWtGaNrSlHe3pQEc60ZkudKUb3elBT3rR
mz78R1/60Z8BDGQQgxnCUIYxnBGMZBSjGcNYxjGeCUxkEpOZwlSmMZ0ZzGQW
s5nDXOYxnwUsZBGLWcJSlrGcFaxkFatZw1rWsZ4NbGQTm9nCVraxnR3sZBe7
2cNe9rGfAxzkEIc5wlGOcZwTnOQUpznDWc5xngtc5BKXucJVrnGdG9zkFre5
w13ucZ8HPOQRj3nCU57xnBe85BWvecNb3vGeD3zkE5/5wle+8Z0f/OQXv/nD
X/6FdwQgIIEITBCCEozghCAkoQhNGMISjvBEICKRiEwUohKN6MQgJrGITRzi
Eo/4JCAhiUhMEpKSjOSkICWpSE0a0pKO9GQgI5nITBayko3s5CAnuchNHvKS
j/wUoCCFKEwRilKM4pSgJKUoTRnKUo7yVKAilahMFapSjerUoCa1qE0d6lKP
+jSgIY1oTBOa0ozmtKAlrWhNG9rSjvZ0oCOd6EwXutKN7vSgJ73oTR/+oy/9
6M8ABjKIwQxhKMMYzghGMorRjGEs4xjPBCYyiclMYSrTmM4MZjKL2cxhLvOY
zwIWsojFLGEpy1jOClayitWsYS3rWM8GNrKJzWxhK9vYzg52sovd7GEv+9jP
AQ5yiMMc4SjHOM4JTnKK05zhLOc4zwUuconLXOEq17jODW5yi9vc4S73uM8D
HvKIxzzhKc94zgte8orXvOEt73jPBz7yic984Svf+M4PfvKL3/zhL/+CewIQ
kEAEJghBCUZwQhCSUIQmDGEJR3giEJFIRCYKUYlGdGIQk1jEJg5xiUd8EpCQ
RCQmCUlJRnJSkJJUpCYNaUlHejKQkUxkJgtZyUZ2cpCTXOQmD3nJR34KUJBC
FKYIRSlGcUpQklKUpgxlKUd5KlCRSlSmClWpRnVqUJNa1KYOdalHfRrQkEY0
pglNaUZzWtCSVrSmDW1pR3s60JFOdKYLXelGd3rQk170pg//0Zd+9GcAAxnE
YIYwlGEMZwQjGcVoxjCWcYxnAhOZxGSmMJVpTGcGM5nFbOYwl3nMZwELWcRi
lrCUZSxnBStZxWrWsJZ1rGcDG9nEZrawlW1sZwc72cVu9rCXfeznAAc5xGGO
cJRjHOcEJznFac5wlnOc5wIXucRlrnCVa1znBje5xW3ucJd73OcBD3nEY57w
lGc85wUvecVr3vCWd7znAx/5xGe+8JVvfOcHP/nFb/7wl3+hXQEISCACE4Sg
BCM4IQhJKEIThrCEIzwRiEgkIhOFqEQjOjGISSxiE4e4xCM+CUhIIhKThKQk
IzkpSEkqUpOGtKQjPRnISCYyk4WsZCM7OchJLnKTh7zkIz8FKEghClOEohSj
OCUoSSlKU4aylKM8FahIJSpThapUozo1qEktalOHutSjPg1oSCMa04SmNKM5
LWhJK1rThra0oz0d6EgnOtOFrnSjOz3oSS9604f/6Es/+jOAgQxiMEMYyjCG
M4KRjGI0YxjLOMYzgYlMYjJTmMo0pjODmcxiNnOYyzzms4CFLGIxS1jKMpaz
gpWsYjVrWMs61rOBjWxiM1vYyja2s4Od7GI3e9jLPvZzgIMc4jBHOMoxjnOC
k5ziNGc4yznOc4GLXOIyV7jKNa5zg5vc4jZ3uMs97vOAhzziMU94yjOe84KX
vOI1b3jLO97zgY984jNf+Mo3vvODn/ziN3/4y7/AvgAEJBCBCUJQghGcEIQk
FKEJQ1jCEZ4IRCQSkYlCVKIRnRjEJBaxiUNc4hGfBCQkEYlJQlKSkZwUpCQV
qUlDWtKRngxkJBOZyUJWspGdHOQkF7nJQ17ykZ8CFKQQhSlCUYpRnBKUpBSl
KUNZylGeClSkEpWpQlWqUZ0a1KQWtalDXepRnwY0pBGNaUJTmtGcFrSkFa1p
Q1va0Z4OdKQTnelCV7rRnR70pBe96cN/9KUf/RnAQAYxmCEMZRjDGcFIRjGa
MYxlHOOZwEQmMZkpTGUa05nBTGYxmznMZR7zWcBCFrGYJSxlGctZwUpWsZo1
rGUd69nARjaxmS1sZRvb2cFOdrGbPexlH/s5wEEOcZgjHOUYxznBSU5xmjOc
5RznucBFLnGZK1zlGte5wU1ucZs73OUe93nAQx7xmCc85RnPecFLXvGaN7zl
He/5wEc+8ZkvfOUb3/nBT37xmz/85V9YZwACEojABCEowQhOCEISitCEISzh
CE8EIhKJyEQhKtGITgxiEovYxCEu8YhPAhKSiMQkISnJSE4KUpKK1KQhLelI
TwYykonMZCEr2chODnKSi9zkIS/5yE8BClKIwhShKMUoTglKUorSlKEs5ShP
BSpSicpUoSrVqE4NalKL2tShLvWoTwMa0ojGNKEpzWhOC1rSita0oS3taE8H
OtKJznShK93oTg960ove9OE/+tKP/gxgIIMYzBCGMozhjGAkoxjNGMYyjvFM
YCKTmMwUpjKN6cxgJrOYzRzmMo/5LGAhi1jMEpayjOWsYCWrWM0a1rKO9Wxg
I5vYzBa2so3t7GAnu9jNHvayj/0c4CCHOMwRjnKM45zgJKc4zRnOco7zXOAi
l7jMFa5yjevc4Ca3uM0d7nKP+zzgIY94zBOe8oznvOAlr3jNG97yjvd84COf
+MwXvvKN7/zgJ7/4zR/+8i+oNwABCURgghCUYAQnBCEJRWjCEJZwhCcCEYlE
ZKIQlWhEJwYxiUVs4hCXeMQnAQlJRGKSkJRkJCcFKUlFatKQlnSkJwMZyURm
spCVbGQnBznJRW7ykJd85KcABSlEYYpQlGIUpwQlKUVpylCWcpSnAhWpRGWq
UJVqVKcGNalFbepQl3rUpwENaURjmtCUZjSnBS1pRWva0JZ2tKcDHelEZ7rQ
lW50pwc96UVv+vAffelHfwYwkEEMZghDGcZwRjCSUYxmDGMZx3gmMJFJTGYK
U5nGdGYwk1nMZg5zmcd8FrCQRSxmCUtZxnJWsJJVrGYNa1nHejawkU1sZgtb
2cZ2drCTXexmD3vZx34OcJBDHOYIRznGcU5wklOc5gxnOcd5LnCRS1zmCle5
xnVucJNb3OYOd7nHfR7wkEc85glPecZzXvCSV7zmDW95x3s+8JFPfOYLX/nG
d37wk1/85g9/+RfSHYCABCIwQQhKMIITgpCEIjRhCEs4whOBiEQiMlGISjSi
E4OYxCI2cYhLPOKTgIQkIjFJSEoykpOClKQiNWlISzrSk4GMZCIzWchKNrKT
g5zkIjd5yEs+8lOAghSiMEUoSjGKU4KSlKI0ZShLOcpTgYpUojJVqEo1qlOD
mtSiNnWoSz3q04CGNKIxTWhKM5rTgpa0ojVtaEs72tOBjnSiM13oSje604Oe
9KI3ffiPvvSjPwMYyCAGM4ShDGM4IxjJKEYzhrGMYzwTmMgkJjOFqUxjOjOY
ySxmM4e5zGM+C1jIIhazhKUsYzkrWMkqVrOGtaxjPRvYyCY2s4WtbGM7O9jJ
Lnazh73sYz8HOMghDnOEoxzjOCc4ySlOc4aznOM8F7jIJS5zhatc4zo3uMkt
bnOHu9zjPg94yCMe84SnPOM5L3jJK17zhre84z0f+MgnPvOFr3zjOz/4yS9+
84e//AvoD0BAAhGYIAQlGMEJQUhCEZowhCUc4YlARCIRmShEJRrRiUFMYhGb
OMQlHvFJQEISkZgkJCUZyUlBSlKRmjSkJR3pyUBGMpGZLGQlG9nJQU5ykZs8
5CUf+SlAQQpRmCIUpRjFKUFJSlGaMpSlHOWpQEUqUZkqVKUa1alBTWpRmzrU
pR71aUBDGtGYJjSlGc1pQUta0Zo2tKUd7elARzrRmS50pRvd6UFPetGbPvxH
X/rRnwEMZBCDGcJQhjGcEYxkFKMZw1jGMZ4JTGQSk5nCVKYxnRnMZBazmcNc
5jGfBSxkEYtZwlKWsZwVrGQVq1nDWtaxng1sZBOb2cJWtrGdHexkF7vZw172
sZ8DHOQQhznCUY5xnBOc5BSnOcNZznGeC1zkEpe5wlWucZ0b3OQWt7nDXe5x
nwc85BGPecJTnvGcF7zkFa95w1ve8Z4PfOQTn/nCV77xnR/85Be/+cNf/g3n
CEBAAhGYIAQlGMEJQUhCEZowhCUc4YlARCIRmShEJRrRiUFMYhGbOMQlHvFJ
QEISkZgkJCUZyUlBSlKRmjSkJR3pyUBGMpGZLGQlG9nJQU5ykZs85CUf+SlA
QQpRmCIUpRjFKUFJSlGaMpSlHOWpQEUqUZkqVKUa1alBTWpRmzrUpR71aUBD
GtGYJjSlGc1pQUta0Zo2tKUd7elARzrRmS50pRvd6UFPetGbPvxHX/rRnwEM
ZBCDGcJQhjGcEYxkFKMZw1jGMZ4JTGQSk5nCVKYxnRnMZBazmcNc5jGfBSxk
EYtZwlKWsZwVrGQVq1nDWtaxng1sZBOb2cJWtrGdHexkF7vZw172sZ8DHOQQ
hznCUY5xnBOc5BSnOcNZznGeC1zkEpe5wlWucZ0b3OQWt7nDXe5xnwc85BGP
ecJTnvGcF7zkFa95w1ve8Z4PfOQTn/nCV77xnR/85Be/+cNf/g3mCUBAAhGY
IAQlGMEJQUhCEZowhCUc4YlARCIRmShEJRrRiUFMYhGbOMQlHvFJQEISkZgk
JCUZyUlBSlKRmjSkJR3pyUBGMpGZLGQlG9nJQU5ykZs85CUf+SlAQQpRmCIU
pRjFKUFJSlGaMpSlHOWpQEUqUZkqVKUa1alBTWpRmzrUpR71aUBDGtGYJjSl
Gc1pQUta0Zo2tKUd7elARzrRmS50pRvd6UFPetGbPvxHX/rRnwEMZBCDGcJQ
hjGcEYxkFKMZw1jGMZ4JTGQSk5nCVKYxnRnMZBazmcNc5jGfBSxkEYtZwlKW
sZwVrGQVq1nDWtaxng1sZBOb2cJWtrGdHexkF7vZw172sZ8DHOQQhznCUY5x
nBOc5BSnOcNZznGeC1zkEpe5wlWucZ0b3OQWt7nDXe5xnwc85BGPecJTnvGc
F7zkFa95w1ve8Z4PfOQTn/nCV77xnR/85Be/+cNf/g3lCkBAAhGYIAQlGMEJ
QUhCEZowhCUc4YlARCIRmShEJRrRiUFMYhGbOMQlHvFJQEISkZgkJCUZyUlB
SlKRmjSkJR3pyUBGMpGZLGQlG9nJQU5ykZs85CUf+SlAQQpRmCIUpRjFKUFJ
SlGaMpSlHOWpQEUqUZkqVKUa1alBTWpRmzrUpR71aUBDGtGYJjSlGc1pQUta
0Zo2tKUd7elARzrRmS50pRvd6UFPetGbPvxHX/rRnwEMZBCDGcJQhjGcEYxk
FKMZw1jGMZ4JTGQSk5nCVKYxnRnMZBazmcNc5jGfBSxkEYtZwlKWsZwVrGQV
q1nDWtaxng1sZBOb2cJWtrGdHexkF7vZw172sZ8DHOQQhznCUY5xnBOc5BSn
OcNZznGeC1zkEpe5wlWucZ0b3OQWt7nDXe5xnwc85BGPecJTnvGcF7zkFa95
w1ve8Z4PfOQTn/nCV77xnR/85Be/+cNf/g3kC0BAAhGYIAQlGMEJQUhCEZow
hCUc4YlARCIRmShEJRrRiUFMYhGbOMQlHvFJQEISkZgkJCUZyUlBSlKRmjSk
JR3pyUBGMpGZLGQlG9nJQU5ykZs85CUf+SlAQQpRmCIUpRjFKUFJSlGaMpSl
HOWpQEUqUZkqVKUa1alBTWpRmzrUpR71aUBDGtGYJjSlGc1pQUta0Zo2tKUd
7elARzrRmS50pRvd6UFPetGbPvxHX/rRnwEMZBCDGcJQhjGcEYxkFKMZw1jG
MZ4JTGQSk5nCVKYxnRnMZBazmcNc5jGfBSxkEYtZwlKWsZwVrGQVq1nDWtax
ng1sZBOb2cJWtrGdHexkF7vZw172sZ8DHOQQhznCUY5xnBOc5BSnOcNZznGe
C1zkEpe5wlWucZ0b3OQWt7nDXe5xnwc85BGPecJTnvGcF7zkFa95w1ve8Z4P
fOQTn/nCV77xnR/85Be/+cNf/g3jDEBAAhGYIAQlGMEJQUhCEZowhCUc4YlA
RCIRmShEJRrRiUFMYhGbOMQlHvFJQEISkZgkJCUZyUlBSlKRmjSkJR3pyUBG
MpGZLGQlG9nJQU5ykZs85CUf+SlAQQpRmCIUpRjFKUFJSlGaMpSlHOWpQEUq
UZkqVKUa1alBTWpRmzrUpR71aUBDGtGYJjSlGc1pQUta0Zo2tKUd7elARzrR
mS50pRvd6UFPetGbPvxHX/rRnwEMZBCDGcJQhjGcEYxkFKMZw1jGMZ4JTGQS
k5nCVKYxnRnMZBazmcNc5jGfBSxkEYtZwlKWsZwVrGQVq1nDWtaxng1sZBOb
2cJWtrGdHexkF7vZw172sZ8DHOQQhznCUY5xnBOc5BSnOcNZznGeC1zkEpe5
wlWucZ0b3OQWt7nDXe5xnwc85BGPecJTnvGcF7zkFa95w1ve8Z4PfOQTn/nC
V77xnR/85Be/+cNf/g3iDUBAAhGYIAQlGMEJQUhCEZowhCUc4YlARCIRmShE
JRrRiUFMYhGbOMQlHvFJQEISkZgkJCUZyUlBSlKRmjSkJR3pyUBGMpGZLGQl
G9nJQU5ykZs85CUf+SlAQQpRmCIUpRjFKUFJSlGaMpSlHOWpQEUqUZkqVKUa
1alBTWpRmzrUpR71aUBDGtGYJjSlGc1pQUta0Zo2tKUd7elARzrRmS50pRvd
6UFPetGbPvxHX/rRnwEMZBCDGcJQhjGcEYxkFKMZw1jGMZ4JTGQSk5nCVKYx
nRnMZBazmcNc5jGfBSxkEYtZwlKWsZwVrGQVq1nDWtaxng1sZBOb2cJWtrGd
HexkF7vZw172sZ8DHOQQhznCUY5xnBOc5BSnOcNZznGeC1zkEpe5wlWucZ0b
3OQWt7nDXe5xnwc85BGPecJTnvGcF7zkFa95w1ve8Z4PfOQTn/nCV77xnR/8
5Be/+cNf/g3hDkBAAhGYIAQlGMEJQUhCEZowhCUc4YlARCIRmShEJRrRiUFM
YhGbOMQlHvFJQEISkZgkJCUZyUlBSlKRmjSkJR3pyUBGMpGZLGQlG9nJQU5y
kZs85CUf+SlAQQpRmCIUpRjFKUFJSlGaMpSlHOWpQEUqUZkqVKUa1alBTWpR
mzrUpR71aUBDGtE43v/PZP8/sh9lMA==
           "]]}}}],
      AspectRatio->NCache[GoldenRatio^(-1), 0.6180339887498948],
      AxesOrigin->NCache[{2524608000, 0}, {2.524608*^9, 0}],
      Frame->True,
      FrameTicks->{{Automatic, Automatic}, {{{
           NCache[2524521600, 2.5245216*^9], 
           FormBox["\"1980\"", TraditionalForm]}, {
           NCache[2840140800, 2.8401408*^9], 
           FormBox["\"1990\"", TraditionalForm]}, {
           NCache[3155673600, 3.1556736*^9], 
           FormBox["\"2000\"", TraditionalForm]}, {
           NCache[3471292800, 3.4712928*^9], 
           FormBox["\"2010\"", TraditionalForm]}, {
           NCache[3786825600, 3.7868256*^9], 
           FormBox["\"2020\"", TraditionalForm]}, {
           NCache[2587680000, 2.58768*^9], 
           FormBox["\"\"", TraditionalForm]}, {
           NCache[2650752000, 2.650752*^9], 
           FormBox["\"\"", TraditionalForm]}, {
           NCache[2713910400, 2.7139104*^9], 
           FormBox["\"\"", TraditionalForm]}, {
           NCache[2776982400, 2.7769824*^9], 
           FormBox["\"\"", TraditionalForm]}, {
           NCache[2903212800, 2.9032128*^9], 
           FormBox["\"\"", TraditionalForm]}, {
           NCache[2966371200, 2.9663712*^9], 
           FormBox["\"\"", TraditionalForm]}, {
           NCache[3029443200, 3.0294432*^9], 
           FormBox["\"\"", TraditionalForm]}, {
           NCache[3092601600, 3.0926016*^9], 
           FormBox["\"\"", TraditionalForm]}, {
           NCache[3218832000, 3.218832*^9], 
           FormBox["\"\"", TraditionalForm]}, {
           NCache[3281904000, 3.281904*^9], 
           FormBox["\"\"", TraditionalForm]}, {
           NCache[3345062400, 3.3450624*^9], 
           FormBox["\"\"", TraditionalForm]}, {
           NCache[3408134400, 3.4081344*^9], 
           FormBox["\"\"", TraditionalForm]}, {
           NCache[3534364800, 3.5343648*^9], 
           FormBox["\"\"", TraditionalForm]}}, {{
           NCache[2524521600, 2.5245216*^9], 
           FormBox["\"\"", TraditionalForm]}, {
           NCache[2840140800, 2.8401408*^9], 
           FormBox["\"\"", TraditionalForm]}, {
           NCache[3155673600, 3.1556736*^9], 
           FormBox["\"\"", TraditionalForm]}, {
           NCache[3471292800, 3.4712928*^9], 
           FormBox["\"\"", TraditionalForm]}, {
           NCache[3786825600, 3.7868256*^9], 
           FormBox["\"\"", TraditionalForm]}, {
           NCache[2587680000, 2.58768*^9], 
           FormBox["\"\"", TraditionalForm]}, {
           NCache[2650752000, 2.650752*^9], 
           FormBox["\"\"", TraditionalForm]}, {
           NCache[2713910400, 2.7139104*^9], 
           FormBox["\"\"", TraditionalForm]}, {
           NCache[2776982400, 2.7769824*^9], 
           FormBox["\"\"", TraditionalForm]}, {
           NCache[2903212800, 2.9032128*^9], 
           FormBox["\"\"", TraditionalForm]}, {
           NCache[2966371200, 2.9663712*^9], 
           FormBox["\"\"", TraditionalForm]}, {
           NCache[3029443200, 3.0294432*^9], 
           FormBox["\"\"", TraditionalForm]}, {
           NCache[3092601600, 3.0926016*^9], 
           FormBox["\"\"", TraditionalForm]}, {
           NCache[3218832000, 3.218832*^9], 
           FormBox["\"\"", TraditionalForm]}, {
           NCache[3281904000, 3.281904*^9], 
           FormBox["\"\"", TraditionalForm]}, {
           NCache[3345062400, 3.3450624*^9], 
           FormBox["\"\"", TraditionalForm]}, {
           NCache[3408134400, 3.4081344*^9], 
           FormBox["\"\"", TraditionalForm]}, {
           NCache[3534364800, 3.5343648*^9], 
           FormBox["\"\"", TraditionalForm]}}}},
      GridLines->NCache[{{{2524521600, 
           GrayLevel[0.8]}, {2840140800, 
           GrayLevel[0.8]}, {3155673600, 
           GrayLevel[0.8]}, {3471292800, 
           GrayLevel[0.8]}, {3786825600, 
           GrayLevel[0.8]}}, None}, {{{2.5245216*^9, 
           GrayLevel[0.8]}, {2.8401408*^9, 
           GrayLevel[0.8]}, {3.1556736*^9, 
           GrayLevel[0.8]}, {3.4712928*^9, 
           GrayLevel[0.8]}, {3.7868256*^9, 
           GrayLevel[0.8]}}, None}],
      PlotLabel->FormBox["\"IBM from 1980 to Present\"", TraditionalForm],
      PlotRange->{{2.524608*^9, 3.5293536*^9}, {0., 190.53}},
      PlotRangeClipping->True,
      PlotRangePadding->{
        Scaled[0.02], 
        Scaled[0.02]},
      Ticks->None], {189., -355.98757751993935`}, 
     ImageScaled[{0.5, 0.5}], {360., 222.4922359499621}]}, {}},
  ContentSelectable->True,
  PlotRangePadding->{6, 5}]], "Output",
 CellChangeTimes->{3.52958606334562*^9}]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{
  RowBox[{
   RowBox[{"FinancialData", "[", 
    RowBox[{"\"\<IBM\>\"", ",", "#"}], "]"}], " ", "&"}], " ", "[", "All", 
  "]"}]], "Input",
 CellChangeTimes->{{3.5295862170704126`*^9, 3.529586261007926*^9}}],

Cell[BoxData[
 InterpretationBox[
  TagBox[
   PanelBox[GridBox[{
      {
       StyleBox[
        StyleBox[
         DynamicBox[ToBoxes[
           FEPrivate`FrontEndResource["FEStrings", "sizeExplanation"], 
           StandardForm],
          ImageSizeCache->{299., {3., 9.}}],
         StripOnInput->False,
         DynamicUpdating->True], "Panel",
        StripOnInput->False,
        Background->None]},
      {
       ItemBox[
        TagBox[
         RowBox[{"{", 
          RowBox[{
           RowBox[{"{", 
            RowBox[{
             RowBox[{"{", 
              RowBox[{"1962", ",", "1", ",", "2"}], "}"}], ",", "2.58`"}], 
            "}"}], ",", 
           RowBox[{"{", 
            RowBox[{
             RowBox[{"{", 
              RowBox[{"1962", ",", "1", ",", "3"}], "}"}], ",", "2.61`"}], 
            "}"}], ",", 
           RowBox[{"{", 
            RowBox[{
             RowBox[{"{", 
              RowBox[{"1962", ",", "1", ",", "4"}], "}"}], ",", "2.58`"}], 
            "}"}], ",", 
           RowBox[{"{", 
            RowBox[{
             RowBox[{"{", 
              RowBox[{"1962", ",", "1", ",", "5"}], "}"}], ",", "2.53`"}], 
            "}"}], ",", 
           RowBox[{"{", 
            RowBox[{
             RowBox[{"{", 
              RowBox[{"1962", ",", "1", ",", "8"}], "}"}], ",", "2.48`"}], 
            "}"}], ",", 
           RowBox[{"{", 
            RowBox[{
             RowBox[{"{", 
              RowBox[{"1962", ",", "1", ",", "9"}], "}"}], ",", "2.51`"}], 
            "}"}], ",", 
           RowBox[{"{", 
            RowBox[{
             RowBox[{"{", 
              RowBox[{"1962", ",", "1", ",", "10"}], "}"}], ",", "2.52`"}], 
            "}"}], ",", 
           RowBox[{"\[LeftSkeleton]", "12536", "\[RightSkeleton]"}], ",", 
           RowBox[{"{", 
            RowBox[{
             RowBox[{"{", 
              RowBox[{"2011", ",", "10", ",", "27"}], "}"}], ",", "185.88`"}],
             "}"}], ",", 
           RowBox[{"{", 
            RowBox[{
             RowBox[{"{", 
              RowBox[{"2011", ",", "10", ",", "28"}], "}"}], ",", "187.45`"}],
             "}"}], ",", 
           RowBox[{"{", 
            RowBox[{
             RowBox[{"{", 
              RowBox[{"2011", ",", "10", ",", "31"}], "}"}], ",", "184.63`"}],
             "}"}], ",", 
           RowBox[{"{", 
            RowBox[{
             RowBox[{"{", 
              RowBox[{"2011", ",", "11", ",", "1"}], "}"}], ",", "181.35`"}], 
            "}"}], ",", 
           RowBox[{"{", 
            RowBox[{
             RowBox[{"{", 
              RowBox[{"2011", ",", "11", ",", "2"}], "}"}], ",", "183.92`"}], 
            "}"}], ",", 
           RowBox[{"{", 
            RowBox[{
             RowBox[{"{", 
              RowBox[{"2011", ",", "11", ",", "3"}], "}"}], ",", "187.3`"}], 
            "}"}], ",", 
           RowBox[{"{", 
            RowBox[{
             RowBox[{"{", 
              RowBox[{"2011", ",", "11", ",", "4"}], "}"}], ",", "186.38`"}], 
            "}"}]}], "}"}],
         Short[#, 5]& ],
        Background->GrayLevel[1],
        BaseStyle->{Deployed -> False},
        Frame->True,
        FrameStyle->GrayLevel[0, 0.2],
        StripOnInput->False]},
      {
       RowBox[{
        ButtonBox[
         StyleBox[
          StyleBox[
           DynamicBox[ToBoxes[
             FEPrivate`FrontEndResource["FEStrings", "sizeShowLess"], 
             StandardForm],
            ImageSizeCache->{54., {1., 9.}}],
           StripOnInput->False,
           DynamicUpdating->True], "Panel",
          StripOnInput->False,
          Background->None],
         Appearance->Automatic,
         ButtonFunction:>OutputSizeLimit`ButtonFunction[
          Identity, 4, 23131374545754315001, 5/2],
         Enabled->True,
         Evaluator->Automatic,
         Method->"Queued"], "\[ThinSpace]", 
        ButtonBox[
         StyleBox[
          StyleBox[
           DynamicBox[ToBoxes[
             FEPrivate`FrontEndResource["FEStrings", "sizeShowMore"], 
             StandardForm],
            ImageSizeCache->{60., {1., 9.}}],
           StripOnInput->False,
           DynamicUpdating->True], "Panel",
          StripOnInput->False,
          Background->None],
         Appearance->Automatic,
         ButtonFunction:>OutputSizeLimit`ButtonFunction[
          Identity, 4, 23131374545754315001, 5 2],
         Enabled->True,
         Evaluator->Automatic,
         Method->"Queued"], "\[ThinSpace]", 
        ButtonBox[
         StyleBox[
          StyleBox[
           DynamicBox[ToBoxes[
             FEPrivate`FrontEndResource["FEStrings", "sizeShowAll"], 
             StandardForm],
            ImageSizeCache->{92., {3., 9.}}],
           StripOnInput->False,
           DynamicUpdating->True], "Panel",
          StripOnInput->False,
          Background->None],
         Appearance->Automatic,
         ButtonFunction:>OutputSizeLimit`ButtonFunction[
          Identity, 4, 23131374545754315001, Infinity],
         Enabled->True,
         Evaluator->Automatic,
         Method->"Queued"], "\[ThinSpace]", 
        ButtonBox[
         StyleBox[
          StyleBox[
           DynamicBox[ToBoxes[
             FEPrivate`FrontEndResource["FEStrings", "sizeChangeLimit"], 
             StandardForm],
            ImageSizeCache->{78., {1., 9.}}],
           StripOnInput->False,
           DynamicUpdating->True], "Panel",
          StripOnInput->False,
          Background->None],
         Appearance->Automatic,
         ButtonFunction:>FrontEndExecute[{
            FrontEnd`SetOptions[
            FrontEnd`$FrontEnd, 
             FrontEnd`PreferencesSettings -> {"Page" -> "Evaluation"}], 
            FrontEnd`FrontEndToken["PreferencesDialog"]}],
         Evaluator->None,
         Method->"Preemptive"]}]}
     },
     GridBoxAlignment->{
      "Columns" -> {{Left}}, "ColumnsIndexed" -> {}, "Rows" -> {{Baseline}}, 
       "RowsIndexed" -> {}},
     GridBoxDividers->{
      "Columns" -> {{False}}, "ColumnsIndexed" -> {}, "Rows" -> {{False}}, 
       "RowsIndexed" -> {}},
     GridBoxItemSize->{
      "Columns" -> {{Automatic}}, "ColumnsIndexed" -> {}, "Rows" -> {{1.}}, 
       "RowsIndexed" -> {}},
     GridBoxSpacings->{"Columns" -> {
         Offset[0.27999999999999997`], {
          Offset[0.5599999999999999]}, 
         Offset[0.27999999999999997`]}, "ColumnsIndexed" -> {}, "Rows" -> {
         Offset[0.2], {
          Offset[1.2]}, 
         Offset[0.2]}, "RowsIndexed" -> {}}],
    DefaultBaseStyle->{},
    FrameMargins->5],
   Deploy,
   DefaultBaseStyle->"Deploy"],
  Out[4]]], "Output",
 CellChangeTimes->{{3.529586251542384*^9, 3.5295862639750957`*^9}}],

Cell[BoxData[
 GraphicsBox[GraphicsComplexBox[CompressedData["
1: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
p5v517ji/wMKHQmK
   "], {{{}, 
     {Hue[0.67, 0.6, 0.6], Opacity[0.2], EdgeForm[None], 
      GraphicsGroupBox[PolygonBox[CompressedData["
1:eJwl1WObFggYBeB502Tbk23b5mTXZM1ke7Jt27Zt16LWW4ta1Bq1W/dc8+G+
zvMHznlCwiJCw2MEBQUFeByIzkeB6PshD7jPPe5yh9vc4iY3uM41rnKFy1zi
Ihc4zznOcobTnOIkJzjOMY5yhMMc4iAH2M8+9rKH3exiJzvYzja2soXNbGIj
G1jPOtayhtWsYiUrWM4ylrKExSxiIQuYzzzmMofZzGImM5jONKYyhclEMomJ
TGA84xjLGEYzipGMYDjDGMoQBjOIgQwggnD604++9KE3vehJD7rTja6E0YXO
dKIjHWhPO9rShta0oiUtaE4zQmlKExrTiIY0oD71qEsdalOLmtSgOtWoShUq
U4mKVKA85ShLGUpTipKUoDjFKEoRClOIghQgP/nISx5yk4uc5CA72QghK1nI
TCYykoH0pCMtaUhNKlKSguQkIylJSEwiEpKA+MQjLsHEITaxiEkMAoHocr0T
//Mfb3nDv/zD3/zFn/zB7/zGr/zCa17xMz/xIz/wkhd8z3d8yzc85xlf8xVf
8gWf8xmf8glPecLHfMSHfBC1A1EbwEMecJ973OUOt7nFTW5wnWtc5QqXucRF
LnCec5zlDKc5xUlOcJxjHOUIhznEQQ6wn33sZQ+72cVOdrCdbWxlC5vZxEY2
sJ51rGUNq1nFSlawnGUsZQmLWcRCFjCfecxlDrOZxUxmMJ1pTGUKk4lkEhOZ
wHjGMZYxjGYUIxnBcIYxlCEMZhADGUAE4fSnH33pQ2960ZMedKcbXQmjC53p
REc60J52tKUNrWlFS1rQnGaE0pQmNKYRDWlAfepRlzrUphY1qUF1qlGVKlSm
EhWpQHnKUZYylKYUJSlBcYpRlCIUphAFKUB+8pGXPOQmFznJQXayEUJWspCZ
TGQkA+lJR1rSkJpUpCQFyUlGUpKQmEQkJAHxiUdcgolDbGIRk6i/+h6aeNsS

        "]]]}, {}, {}}, {{}, {}, 
     {Hue[0.67, 0.6, 0.6], LineBox[CompressedData["
1:eJwl1WN7GAYUBeCktu3Utm0ztdvUTG3btm3btr3V3YqZ7VZu7ZunH95zf8E5
NygkNLh7YEBAwC0RdsMRnghEJBKRiUJUohGdGMQkFrGJQ1ziEZ8EJCQRiUlC
UpKRnBSkJBWpSUMQaUlHejKQkUxkJgtZyUZ2cpCTXOQmD3nJR34KUJBCFKYI
RSlGcUpQklKUpgxlKUd5KlCRSlSmClWpRnVqUJNa1KYOwdSlHvVpQEMa0Zgm
NKUZzWlBS1rRmhDa0JZ2tKcDHelEZ7rQlW50J5Qe9KQXvelDX/rRnwEMZBCD
GcJQhjGcEYxkFKMZw1jGMZ4JTGQSk5nCVKYxnRnMZBazmcNc5jGfBSxkEYtZ
wlKWsZwVrGQVq1nDWtaxng1sZBOb2cJWtrGdHexkF7vZw172sZ8DHOQQhznC
UY5xnBOc5BSnOcNZznGeC1zkEpe5wlWucZ0b3OQWt7nDXe7xDd9ynwc85BGP
ecJTnvEd3/OcF7zkFT/wIz/xM7/wK7/xO3/wJ3/xN695wz/8y1ve8Z4PfOQT
//E/nwkrfyDhCE8EIhKJyEQhKtGITgxiEovYxCEu8YhPAhKSiMQkISnJSE4K
UpKK1KQhiLSkIz0ZyEgmMpOFrGQjOznISS5yk4e85CM/BShIIQpThKIUozgl
KEkpSlOGspSjPBWoSCUqU4WqVKM6NahJLWpTh2DqUo/6NKAhjWhME5rSjOa0
oCWtaE0IbWhLO9rTgY50ojNd6Eo3wsY7lB70pBe96UNf+tGfAQxkEIMZwlCG
MZwRjGQUoxnDWMYxnglMZBKTmcJUpjGdGcxkFrOZw1zmMZ8FLGQRi1nCUpax
nBWsZBWrWcNa1rGeDWxkE5vZwla2sZ0d7GQXu9nDXvaxnwMc5BCHOcJRjnGc
E5zkFKc5w1nOcZ4LXOQSl7nCVa5xnRvcDPz6R78AlUfZZQ==
       "]]}}}],
  AspectRatio->NCache[GoldenRatio^(-1), 0.6180339887498948],
  AxesOrigin->NCache[{3471552000, 116.}, {3.471552*^9, 116.}],
  Frame->True,
  FrameTicks->{{Automatic, Automatic}, {{{
       NCache[3471292800, 3.4712928*^9], 
       FormBox["\"2010\"", TraditionalForm], {0.020601132958329826`, 0}}, {
       NCache[3502828800, 3.5028288*^9], 
       FormBox["\"2011\"", TraditionalForm], {0.020601132958329826`, 0}}, {
       NCache[3479068800, 3.4790688*^9], 
       FormBox["\"\"", TraditionalForm], {0.012360679774997897`, 0}}, {
       NCache[3486931200, 3.4869312*^9], 
       FormBox["\"\"", TraditionalForm], {0.012360679774997897`, 0}}, {
       NCache[3494880000, 3.49488*^9], 
       FormBox["\"\"", TraditionalForm], {0.012360679774997897`, 0}}, {
       NCache[3510604800, 3.5106048*^9], 
       FormBox["\"\"", TraditionalForm], {0.012360679774997897`, 0}}, {
       NCache[3518467200, 3.5184672*^9], 
       FormBox["\"\"", TraditionalForm], {0.012360679774997897`, 0}}, {
       NCache[3526416000, 3.526416*^9], 
       FormBox["\"\"", TraditionalForm], {0.012360679774997897`, 0}}}, {{
       NCache[3471292800, 3.4712928*^9], 
       FormBox["\"\"", TraditionalForm], {0.020601132958329826`, 0}}, {
       NCache[3502828800, 3.5028288*^9], 
       FormBox["\"\"", TraditionalForm], {0.020601132958329826`, 0}}, {
       NCache[3479068800, 3.4790688*^9], 
       FormBox["\"\"", TraditionalForm], {0.012360679774997897`, 0}}, {
       NCache[3486931200, 3.4869312*^9], 
       FormBox["\"\"", TraditionalForm], {0.012360679774997897`, 0}}, {
       NCache[3494880000, 3.49488*^9], 
       FormBox["\"\"", TraditionalForm], {0.012360679774997897`, 0}}, {
       NCache[3510604800, 3.5106048*^9], 
       FormBox["\"\"", TraditionalForm], {0.012360679774997897`, 0}}, {
       NCache[3518467200, 3.5184672*^9], 
       FormBox["\"\"", TraditionalForm], {0.012360679774997897`, 0}}, {
       NCache[3526416000, 3.526416*^9], 
       FormBox["\"\"", TraditionalForm], {0.012360679774997897`, 0}}}}},
  GridLines->NCache[{{{3471292800, 
       GrayLevel[0.8]}, {3502828800, 
       GrayLevel[0.8]}}, None}, {{{3.4712928*^9, 
       GrayLevel[0.8]}, {3.5028288*^9, 
       GrayLevel[0.8]}}, None}],
  PlotLabel->FormBox["\"IBM\"", TraditionalForm],
  PlotRange->{{3.471552*^9, 3.5293536*^9}, {116., 190.53}},
  PlotRangeClipping->True,
  PlotRangePadding->{
    Scaled[0.02], 
    Scaled[0.02]},
  Ticks->None]], "Output",
 CellChangeTimes->{3.5295865263361015`*^9}]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[{
 RowBox[{"Clear", "[", 
  RowBox[{"ibmData", ",", " ", "d", ",", " ", "n", ",", " ", "nWeeksDate"}], 
  "]"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{"ibmData", "[", "d_", "]"}], " ", ":=", " ", 
  RowBox[{"FinancialData", "[", 
   RowBox[{"\"\<IBM\>\"", ",", "d"}], "]"}]}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{"nWeeksDate", "[", "n_", "]"}], " ", ":=", " ", 
  RowBox[{
   RowBox[{"DateList", "[", "]"}], " ", "-", " ", 
   RowBox[{"{", 
    RowBox[{"0", ",", " ", "0", ",", " ", "0", ",", " ", 
     RowBox[{"24", "*", "7", "*", "n"}], ",", " ", "0", ",", " ", "0"}], 
    "}"}]}]}], "\[IndentingNewLine]", 
 RowBox[{"DateListPlot", "[", 
  RowBox[{
   RowBox[{"ibmData", "[", 
    RowBox[{"nWeeksDate", "[", "4", "]"}], "]"}], ",", 
   RowBox[{"Joined", "\[Rule]", "True"}], ",", 
   RowBox[{"Filling", "\[Rule]", "Bottom"}], ",", 
   RowBox[{"PlotLabel", "\[Rule]", "\"\<IBM\>\""}]}], "]"}]}], "Input",
 CellChangeTimes->{{3.5295874936644297`*^9, 3.529587496692603*^9}, {
  3.5295876258639913`*^9, 3.5295876883135633`*^9}, {3.5295877421366415`*^9, 
  3.5295879494414988`*^9}}],

Cell[BoxData[
 GraphicsBox[GraphicsComplexBox[CompressedData["
1:eJxTTMoPSmViYGAQA2IQDQQN09xfOS4psOW6HpzuAORvOADkg2UUwPwHr2Dy
zmC+gKjHK0eu64sLbKPAfAd7IF8zpv/Q1wtg/oW9QH61yDr3h0FgPsMLIP/s
GSCISQPxDYQ8XzmCpKt0wPwEG0+ofRpg/oQ0IB9knMYWMF/hKUz+BJgfwO/1
yvFN4A651m4wv8ESyAc5h2s/mL8h2Quq3wbi/l4gPw0E8sD8Ah5vqLwImL/A
DMg3BoHVYP0XEoB8W5AH/4L5DN1A/qyZQJAJVm+wFabfB8wHhx/YfQJpcHkY
HwCtSHb8
   "], {{{}, 
     {Hue[0.67, 0.6, 0.6], Opacity[0.2], EdgeForm[None], 
      GraphicsGroupBox[
       PolygonBox[{{1, 21, 22, 20, 19, 18, 17, 16, 15, 14, 13, 12, 11, 10, 9, 
        8, 7, 6, 5, 4, 3, 2}}]]}, {}, {}}, {{}, {}, 
     {Hue[0.67, 0.6, 0.6], 
      LineBox[{1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 
       19, 20}]}}}],
  AspectRatio->NCache[GoldenRatio^(-1), 0.6180339887498948],
  AxesOrigin->NCache[{3527193600, 176.5}, {3.5271936*^9, 176.5}],
  Frame->True,
  FrameTicks->{{Automatic, Automatic}, {{{
       NCache[3527193600, 3.5271936*^9], 
       FormBox["\"Oct 10\"", TraditionalForm]}, {
       NCache[3527798400, 3.5277984*^9], 
       FormBox["\"Oct 17\"", TraditionalForm]}, {
       NCache[3528403200, 3.5284032*^9], 
       FormBox["\"Oct 24\"", TraditionalForm]}, {
       NCache[3529008000, 3.529008*^9], 
       FormBox["\"Oct 31\"", TraditionalForm]}, {
       NCache[3529612800, 3.5296128*^9], 
       FormBox["\"Nov 07\"", TraditionalForm]}, {
       NCache[3527280000, 3.52728*^9], 
       FormBox["\"\"", TraditionalForm]}, {
       NCache[3527366400, 3.5273664*^9], 
       FormBox["\"\"", TraditionalForm]}, {
       NCache[3527452800, 3.5274528*^9], 
       FormBox["\"\"", TraditionalForm]}, {
       NCache[3527539200, 3.5275392*^9], 
       FormBox["\"\"", TraditionalForm]}, {
       NCache[3527625600, 3.5276256*^9], 
       FormBox["\"\"", TraditionalForm]}, {
       NCache[3527712000, 3.527712*^9], 
       FormBox["\"\"", TraditionalForm]}, {
       NCache[3527884800, 3.5278848*^9], 
       FormBox["\"\"", TraditionalForm]}, {
       NCache[3527971200, 3.5279712*^9], 
       FormBox["\"\"", TraditionalForm]}, {
       NCache[3528057600, 3.5280576*^9], 
       FormBox["\"\"", TraditionalForm]}, {
       NCache[3528144000, 3.528144*^9], 
       FormBox["\"\"", TraditionalForm]}, {
       NCache[3528230400, 3.5282304*^9], 
       FormBox["\"\"", TraditionalForm]}, {
       NCache[3528316800, 3.5283168*^9], 
       FormBox["\"\"", TraditionalForm]}, {
       NCache[3528489600, 3.5284896*^9], 
       FormBox["\"\"", TraditionalForm]}, {
       NCache[3528576000, 3.528576*^9], 
       FormBox["\"\"", TraditionalForm]}, {
       NCache[3528662400, 3.5286624*^9], 
       FormBox["\"\"", TraditionalForm]}, {
       NCache[3528748800, 3.5287488*^9], 
       FormBox["\"\"", TraditionalForm]}, {
       NCache[3528835200, 3.5288352*^9], 
       FormBox["\"\"", TraditionalForm]}, {
       NCache[3528921600, 3.5289216*^9], 
       FormBox["\"\"", TraditionalForm]}, {
       NCache[3529094400, 3.5290944*^9], 
       FormBox["\"\"", TraditionalForm]}, {
       NCache[3529180800, 3.5291808*^9], 
       FormBox["\"\"", TraditionalForm]}, {
       NCache[3529267200, 3.5292672*^9], 
       FormBox["\"\"", TraditionalForm]}, {
       NCache[3529353600, 3.5293536*^9], 
       FormBox["\"\"", TraditionalForm]}}, {{
       NCache[3527193600, 3.5271936*^9], 
       FormBox["\"\"", TraditionalForm]}, {
       NCache[3527798400, 3.5277984*^9], 
       FormBox["\"\"", TraditionalForm]}, {
       NCache[3528403200, 3.5284032*^9], 
       FormBox["\"\"", TraditionalForm]}, {
       NCache[3529008000, 3.529008*^9], 
       FormBox["\"\"", TraditionalForm]}, {
       NCache[3529612800, 3.5296128*^9], 
       FormBox["\"\"", TraditionalForm]}, {
       NCache[3527280000, 3.52728*^9], 
       FormBox["\"\"", TraditionalForm]}, {
       NCache[3527366400, 3.5273664*^9], 
       FormBox["\"\"", TraditionalForm]}, {
       NCache[3527452800, 3.5274528*^9], 
       FormBox["\"\"", TraditionalForm]}, {
       NCache[3527539200, 3.5275392*^9], 
       FormBox["\"\"", TraditionalForm]}, {
       NCache[3527625600, 3.5276256*^9], 
       FormBox["\"\"", TraditionalForm]}, {
       NCache[3527712000, 3.527712*^9], 
       FormBox["\"\"", TraditionalForm]}, {
       NCache[3527884800, 3.5278848*^9], 
       FormBox["\"\"", TraditionalForm]}, {
       NCache[3527971200, 3.5279712*^9], 
       FormBox["\"\"", TraditionalForm]}, {
       NCache[3528057600, 3.5280576*^9], 
       FormBox["\"\"", TraditionalForm]}, {
       NCache[3528144000, 3.528144*^9], 
       FormBox["\"\"", TraditionalForm]}, {
       NCache[3528230400, 3.5282304*^9], 
       FormBox["\"\"", TraditionalForm]}, {
       NCache[3528316800, 3.5283168*^9], 
       FormBox["\"\"", TraditionalForm]}, {
       NCache[3528489600, 3.5284896*^9], 
       FormBox["\"\"", TraditionalForm]}, {
       NCache[3528576000, 3.528576*^9], 
       FormBox["\"\"", TraditionalForm]}, {
       NCache[3528662400, 3.5286624*^9], 
       FormBox["\"\"", TraditionalForm]}, {
       NCache[3528748800, 3.5287488*^9], 
       FormBox["\"\"", TraditionalForm]}, {
       NCache[3528835200, 3.5288352*^9], 
       FormBox["\"\"", TraditionalForm]}, {
       NCache[3528921600, 3.5289216*^9], 
       FormBox["\"\"", TraditionalForm]}, {
       NCache[3529094400, 3.5290944*^9], 
       FormBox["\"\"", TraditionalForm]}, {
       NCache[3529180800, 3.5291808*^9], 
       FormBox["\"\"", TraditionalForm]}, {
       NCache[3529267200, 3.5292672*^9], 
       FormBox["\"\"", TraditionalForm]}, {
       NCache[3529353600, 3.5293536*^9], 
       FormBox["\"\"", TraditionalForm]}}}},
  GridLines->NCache[{{{3527193600, 
       GrayLevel[0.8]}, {3527798400, 
       GrayLevel[0.8]}, {3528403200, 
       GrayLevel[0.8]}, {3529008000, 
       GrayLevel[0.8]}, {3529612800, 
       GrayLevel[0.8]}}, None}, {{{3.5271936*^9, 
       GrayLevel[0.8]}, {3.5277984*^9, 
       GrayLevel[0.8]}, {3.5284032*^9, 
       GrayLevel[0.8]}, {3.529008*^9, 
       GrayLevel[0.8]}, {3.5296128*^9, 
       GrayLevel[0.8]}}, None}],
  PlotLabel->FormBox["\"IBM\"", TraditionalForm],
  PlotRange->{{3.5271936*^9, 3.5293536*^9}, {176.5, 190.53}},
  PlotRangeClipping->True,
  PlotRangePadding->{
    Scaled[0.02], 
    Scaled[0.02]},
  Ticks->None]], "Output",
 CellChangeTimes->{3.529587870293972*^9, 3.529587950410554*^9}]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"FinancialData", "[", 
  RowBox[{"\"\<*goo*\>\"", ",", "\"\<Lookup\>\""}], "]"}]], "Input",
 CellChangeTimes->{{3.5295880692493515`*^9, 3.5295880830101385`*^9}}],

Cell[BoxData[
 RowBox[{"{", 
  RowBox[{"\<\"GOOGX\"\>", ",", "\<\"L:GOO\"\>", ",", "\<\"L:PGOO\"\>", 
   ",", "\<\"MX:GOOG\"\>", ",", "\<\"NASDAQ:GOOD\"\>", 
   ",", "\<\"NASDAQ:GOODO\"\>", ",", "\<\"NASDAQ:GOODP\"\>", 
   ",", "\<\"NASDAQ:GOOG\"\>", ",", "\<\"NS:GOODLASNE\"\>", 
   ",", "\<\"PK:CGOOF\"\>", ",", "\<\"PK:GOOO\"\>", ",", "\<\"PK:GOOXF\"\>"}],
   "}"}]], "Output",
 CellChangeTimes->{{3.5295880756577177`*^9, 3.529588083446163*^9}}]
}, Open  ]]
},
WindowSize->{707, 637},
WindowMargins->{{24, Automatic}, {Automatic, 30}},
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
Cell[1235, 30, 207, 4, 47, "Text"],
Cell[CellGroupData[{
Cell[1467, 38, 1369, 31, 112, "Input"],
Cell[2839, 71, 252478, 4199, 439, "Output"]
}, Open  ]],
Cell[CellGroupData[{
Cell[255354, 4275, 231, 6, 31, "Input"],
Cell[255588, 4283, 6653, 191, 194, "Output"],
Cell[262244, 4476, 9119, 162, 272, "Output"]
}, Open  ]],
Cell[CellGroupData[{
Cell[271400, 4643, 1109, 25, 112, "Input"],
Cell[272512, 4670, 6304, 146, 272, "Output"]
}, Open  ]],
Cell[CellGroupData[{
Cell[278853, 4821, 184, 3, 31, "Input"],
Cell[279040, 4826, 448, 8, 50, "Output"]
}, Open  ]]
}
]
*)

(* End of internal cache information *)

(* NotebookSignature 1vTMoxw1UnlTwA1kIy18iJ20 *)
