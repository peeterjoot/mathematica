#! /usr/bin/env wolframscript
<< peeters` ;
peeters`setGitDir[ "../project/figures/GAelectrodynamics" ]

(*See MathematicaColorToLatexRGB.nb for color mapping logic.*)
SetOptions[MaTeX, 
  "Preamble" -> {"\\usepackage{xcolor,txfonts}", 
    "\\definecolor{BlueDarker}{HTML}{0000AA}", 
    "\\definecolor{RedDarker}{HTML}{AA0000}", 
    "\\definecolor{PurpleDarker}{HTML}{550055}", 
    "\\definecolor{OrangeDarker}{HTML}{AA5500}", 
    "\\definecolor{GreenDarker}{HTML}{00AA00}"},
  "FontSize" -> 16];

ClearAll[ o, e1, e2, e3, pillboxHeight, pillboxWidth, pillboxLength, \
pillboxPosition, visibleAreaSide, RectangularPillboxFig1]
(* Assume a visible plane area with side length 4 *)
visibleAreaSide = 4;

(* Define the dimensions and position of the plane and pillbox *)
pillboxHeight = 1;
pillboxWidth = visibleAreaSide/2;
pillboxLength = visibleAreaSide/2;
pillboxPosition = {0, 0, 0};
{e1, e2, e3} = IdentityMatrix[3];
o = 0 e1;

RectangularPillboxFig1 = Graphics3D[{
   Opacity[0.3],
   Blue, InfinitePlane[{{0, 0, 0}, {1, 0, 0}, {0, 1, 0}}],
   
   Opacity[0.5],
   Yellow,
   Cuboid[
    pillboxPosition - {pillboxWidth/2, pillboxLength/2, 
      pillboxHeight/2},
                     
    pillboxPosition + {pillboxWidth/2, pillboxLength/2, 
      pillboxHeight/2}],
   Black,
   Thick,
   Arrowheads -> 0.05,
   Arrow[Tube[{0.5 e3,  1.5 e3}]],
   Text[MaTeX["\\mathbf{e}_3"], 1.6 e3]
   }
  , Boxed -> False,
       PlotRange -> {
    {-visibleAreaSide/2, visibleAreaSide/2},
    {-visibleAreaSide/2, visibleAreaSide/2},
    2 {-1, 1}
    }]

peeters`exportForLatex["RectangularPillboxFig1", RectangularPillboxFig1]
