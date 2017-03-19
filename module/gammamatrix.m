(* ::Package:: *)

(* copy this module to a directory in $Path.  Then invoke with <<gammamatrix` *)
BeginPackage[ "gammamatrix`" ]
gammamatrix::usage = "gammamatrix: An implementation of DiracGammaMatrix.
" ;

Unprotect[ DiracGammaMatrix ];
ClearAll[ DiracGammaMatrix ];

DiracGammaMatrix[1] = ArrayFlatten[{{DiagonalMatrix[{0, 0}],  PauliMatrix[1]}, {-PauliMatrix[1], DiagonalMatrix[{0, 0}]}}];
DiracGammaMatrix[2] = ArrayFlatten[{{DiagonalMatrix[{0, 0}],  PauliMatrix[2]}, {-PauliMatrix[2], DiagonalMatrix[{0, 0}]}}];
DiracGammaMatrix[3] = ArrayFlatten[{{DiagonalMatrix[{0, 0}],  PauliMatrix[3]}, {-PauliMatrix[3], DiagonalMatrix[{0, 0}]}}];
DiracGammaMatrix[4] = DiagonalMatrix[{1, 1, -1, -1}];
DiracGammaMatrix[0] = DiracGammaMatrix[4];

Protect[ DiracGammaMatrix ];

EndPackage[ ]
