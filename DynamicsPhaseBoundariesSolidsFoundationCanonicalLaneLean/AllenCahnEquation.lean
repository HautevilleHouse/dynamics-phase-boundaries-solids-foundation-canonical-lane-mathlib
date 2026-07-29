import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicsPhaseBoundariesSolidsFoundationCanonicalLaneLean

structure AllenCahnEquationPackage {P : PhaseFieldFreeEnergyPackage} where
  evolutionEquation : Prop
  variationalStructure : Prop
  gradientFlowForm : Prop
  boundaryConditions : Prop

structure AllenCahnEquationEvidence {P : PhaseFieldFreeEnergyPackage}
    (A : AllenCahnEquationPackage P) where
  evolutionEquationClosed : A.evolutionEquation
  variationalStructureClosed : A.variationalStructure
  gradientFlowFormClosed : A.gradientFlowForm
  boundaryConditionsClosed : A.boundaryConditions

def AllenCahnEquationClosed {P : PhaseFieldFreeEnergyPackage}
    (A : AllenCahnEquationPackage P) : Prop :=
  A.evolutionEquation ∧ A.variationalStructure ∧ A.gradientFlowForm ∧ A.boundaryConditions

theorem allen_cahn_equation_closed_from_evidence {P : PhaseFieldFreeEnergyPackage}
    (A : AllenCahnEquationPackage P) (E : AllenCahnEquationEvidence A) :
    AllenCahnEquationClosed A := by
  exact And.intro E.evolutionEquationClosed
    (And.intro E.variationalStructureClosed
      (And.intro E.gradientFlowFormClosed E.boundaryConditionsClosed))

end DynamicsPhaseBoundariesSolidsFoundationCanonicalLaneLean
end HautevilleHouse
