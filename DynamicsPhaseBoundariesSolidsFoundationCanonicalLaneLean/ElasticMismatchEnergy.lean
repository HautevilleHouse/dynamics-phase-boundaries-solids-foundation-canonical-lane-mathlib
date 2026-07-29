import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicsPhaseBoundariesSolidsFoundationCanonicalLaneLean

structure ElasticMismatchEnergyPackage where
  elasticStrainTensor : Type u
  misfitEnergyDensity : Type v
  coherencyStress : Prop
  elasticEquilibrium : Prop
  stressFreeStrain : Prop

structure ElasticMismatchEnergyEvidence (E : ElasticMismatchEnergyPackage) where
  coherencyStressClosed : E.coherencyStress
  elasticEquilibriumClosed : E.elasticEquilibrium
  stressFreeStrainClosed : E.stressFreeStrain

def ElasticMismatchEnergyClosed (E : ElasticMismatchEnergyPackage) : Prop :=
  E.coherencyStress ∧ E.elasticEquilibrium ∧ E.stressFreeStrain

theorem elastic_mismatch_energy_closed_from_evidence
    (E : ElasticMismatchEnergyPackage) (Ev : ElasticMismatchEnergyEvidence E) :
    ElasticMismatchEnergyClosed E := by
  exact And.intro Ev.coherencyStressClosed
    (And.intro Ev.elasticEquilibriumClosed Ev.stressFreeStrainClosed)

end DynamicsPhaseBoundariesSolidsFoundationCanonicalLaneLean
end HautevilleHouse