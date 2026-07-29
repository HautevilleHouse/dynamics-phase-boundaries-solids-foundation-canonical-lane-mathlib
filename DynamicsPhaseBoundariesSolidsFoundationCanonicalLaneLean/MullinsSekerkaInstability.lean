import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicsPhaseBoundariesSolidsFoundationCanonicalLaneLean

structure MullinsSekerkaInstabilityPackage where
  perturbationWavenumber : Prop
  growthRate : Prop
  criticalWavelength : Prop
  surfaceEnergyStabilization : Prop

structure MullinsSekerkaInstabilityEvidence (M : MullinsSekerkaInstabilityPackage) where
  perturbationWavenumberClosed : M.perturbationWavenumber
  growthRateClosed : M.growthRate
  criticalWavelengthClosed : M.criticalWavelength
  surfaceEnergyStabilizationClosed : M.surfaceEnergyStabilization

def MullinsSekerkaInstabilityClosed (M : MullinsSekerkaInstabilityPackage) : Prop :=
  M.perturbationWavenumber ∧ M.growthRate ∧ M.criticalWavelength ∧ M.surfaceEnergyStabilization

theorem mullins_sekerka_instability_closed_from_evidence (M : MullinsSekerkaInstabilityPackage) (E : MullinsSekerkaInstabilityEvidence M) :
    MullinsSekerkaInstabilityClosed M := by
  exact And.intro E.perturbationWavenumberClosed (And.intro E.growthRateClosed (And.intro E.criticalWavelengthClosed E.surfaceEnergyStabilizationClosed))

end DynamicsPhaseBoundariesSolidsFoundationCanonicalLaneLean
end HautevilleHouse