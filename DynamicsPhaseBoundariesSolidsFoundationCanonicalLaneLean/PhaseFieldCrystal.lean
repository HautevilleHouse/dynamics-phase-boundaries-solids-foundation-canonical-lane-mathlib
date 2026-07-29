import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicsPhaseBoundariesSolidsFoundationCanonicalLaneLean

structure PhaseFieldCrystalPackage where
  densityField : Type u
  freeEnergyFunctional : Type v
  swiftHohenbergEquation : Prop
  periodicOrderParameter : Prop
  elasticInteraction : Prop

structure PhaseFieldCrystalEvidence (P : PhaseFieldCrystalPackage) where
  swiftHohenbergEquationClosed : P.swiftHohenbergEquation
  periodicOrderParameterClosed : P.periodicOrderParameter
  elasticInteractionClosed : P.elasticInteraction

def PhaseFieldCrystalClosed (P : PhaseFieldCrystalPackage) : Prop :=
  P.swiftHohenbergEquation ∧ P.periodicOrderParameter ∧ P.elasticInteraction

theorem phase_field_crystal_closed_from_evidence
    (P : PhaseFieldCrystalPackage) (E : PhaseFieldCrystalEvidence P) :
    PhaseFieldCrystalClosed P := by
  exact And.intro E.swiftHohenbergEquationClosed
    (And.intro E.periodicOrderParameterClosed E.elasticInteractionClosed)

end DynamicsPhaseBoundariesSolidsFoundationCanonicalLaneLean
end HautevilleHouse