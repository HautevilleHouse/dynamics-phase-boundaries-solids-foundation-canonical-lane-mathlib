import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicsPhaseBoundariesSolidsFoundationCanonicalLaneLean

structure PhaseFieldPDEPackage where
  orderParameter : Type u
  freeEnergyFunctional : Type v
  cahnHilliardEquation : Prop
  allenCahnEquation : Prop
  boundaryConditions : Prop

structure PhaseFieldPDEEvidence (P : PhaseFieldPDEPackage) where
  cahnHilliardEquationClosed : P.cahnHilliardEquation
  allenCahnEquationClosed : P.allenCahnEquation
  boundaryConditionsClosed : P.boundaryConditions

def PhaseFieldPDEClosed (P : PhaseFieldPDEPackage) : Prop :=
  P.cahnHilliardEquation ∧ P.allenCahnEquation ∧ P.boundaryConditions

theorem phase_field_pde_closed_from_evidence
    (P : PhaseFieldPDEPackage) (E : PhaseFieldPDEEvidence P) :
    PhaseFieldPDEClosed P := by
  exact And.intro E.cahnHilliardEquationClosed
    (And.intro E.allenCahnEquationClosed E.boundaryConditionsClosed)

end DynamicsPhaseBoundariesSolidsFoundationCanonicalLaneLean
end HautevilleHouse