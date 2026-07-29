import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicsPhaseBoundariesSolidsFoundationCanonicalLaneLean

structure PhaseFieldFreeEnergyPackage where
  orderParameter : Type u
  freeEnergyFunctional : Type v
  doubleWellPotential : Prop
  gradientEnergy : Prop
  elasticEnergy : Prop
  interfaceEnergy : Prop

structure PhaseFieldFreeEnergyEvidence (P : PhaseFieldFreeEnergyPackage) where
  doubleWellPotentialClosed : P.doubleWellPotential
  gradientEnergyClosed : P.gradientEnergy
  elasticEnergyClosed : P.elasticEnergy
  interfaceEnergyClosed : P.interfaceEnergy

def PhaseFieldFreeEnergyClosed (P : PhaseFieldFreeEnergyPackage) : Prop :=
  P.doubleWellPotential ∧ P.gradientEnergy ∧ P.elasticEnergy ∧ P.interfaceEnergy

theorem phase_field_free_energy_closed_from_evidence (P : PhaseFieldFreeEnergyPackage)
    (E : PhaseFieldFreeEnergyEvidence P) : PhaseFieldFreeEnergyClosed P := by
  exact And.intro E.doubleWellPotentialClosed
    (And.intro E.gradientEnergyClosed
      (And.intro E.elasticEnergyClosed E.interfaceEnergyClosed))

end DynamicsPhaseBoundariesSolidsFoundationCanonicalLaneLean
end HautevilleHouse
