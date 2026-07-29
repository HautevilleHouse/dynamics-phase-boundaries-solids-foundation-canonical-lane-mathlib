import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicsPhaseBoundariesSolidsFoundationCanonicalLaneLean

structure PhaseFieldEvolutionPackage where
  orderParameterField : Type u
  freeEnergyFunctional : Type v
  cahnHilliardEquation : Prop
  allenCahnEquation : Prop
  timeDiscretization : Prop

structure PhaseFieldEvolutionEvidence (P : PhaseFieldEvolutionPackage) where
  cahnHilliardEquationClosed : P.cahnHilliardEquation
  allenCahnEquationClosed : P.allenCahnEquation
  timeDiscretizationClosed : P.timeDiscretization

def PhaseFieldEvolutionClosed (P : PhaseFieldEvolutionPackage) : Prop :=
  P.cahnHilliardEquation ∧ P.allenCahnEquation ∧ P.timeDiscretization

theorem phase_field_evolution_closed_from_evidence (P : PhaseFieldEvolutionPackage)
    (E : PhaseFieldEvolutionEvidence P) : PhaseFieldEvolutionClosed P := by
  exact And.intro E.cahnHilliardEquationClosed
    (And.intro E.allenCahnEquationClosed E.timeDiscretizationClosed)

end DynamicsPhaseBoundariesSolidsFoundationCanonicalLaneLean
end HautevilleHouse