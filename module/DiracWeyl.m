(* ::Package:: *)

(* copy this module to a directory in $Path.  Then invoke with <<GA30` *)
BeginPackage[ "DiracWeyl`" ]

Unprotect[
   DiracMatrix
]

ClearAll[DiracMatrix]
DiracWeyl::usage = "DiracWeyl: An Weyl represention of the Dirac gamma matrices.";

DiracMatrix::usage = "DiracMatrix[0-3], DiracMatrix[5].";
DiracMatrix[
   k_Integer] :=  ({{ConstantArray[0, {2, 2}], PauliMatrix[k]}, {-PauliMatrix[k], ConstantArray[0, {2, 2}]}} // 
    ArrayFlatten);
DiracMatrix[
   0] = ({{ConstantArray[0, {2, 2}], PauliMatrix[0]}, {PauliMatrix[0], ConstantArray[0, {2, 2}]}} // ArrayFlatten);
DiracMatrix[4] = DiracMatrix[0];
DiracMatrix[5] = 
  I DiracMatrix[0].DiracMatrix[1].DiracMatrix[2].DiracMatrix[3] ;

Protect[
   DiracMatrix
]

EndPackage[ ]
