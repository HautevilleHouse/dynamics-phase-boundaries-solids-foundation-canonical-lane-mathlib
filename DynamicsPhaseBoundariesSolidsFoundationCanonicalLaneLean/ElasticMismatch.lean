import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicsPhaseBoundariesSolidsFoundationCanonicalLaneLean

structure ElasticMismatchPackage where
  elasticConstants : Type u
  misfitStrain : Prop
  coherencyStress : Prop
  accommodationEnergy : Prop
  morphologyEvolution : Prop

structure ElasticMismatchEvidence (E : ElasticMismatchPackage) where
  misfitStrainClosed : E.misfitStrain
  coherencyStressClosed : E.coherencyStress
  accommodationEnergyClosed : E.accommodationEnergy
  morphologyEvolutionClosed : E.morphologyEvolution

def ElasticMismatchClosed (E : ElasticMismatchPackage) : Prop :=
  E.misfitStrain ∧ E.coherencyStress ∧ E.accommodationEnergy ∧ E.morphologyEvolution

theorem elastic_mismatch_closed_from_evidence (E : ElasticMismatchPackage)
    (Ev : ElasticMismatchEvidence E) : ElasticMismatchClosed E := by
  exact And.intro Ev.misfitStrainClosed
    (And.intro Ev.coherencyStressClosed
      (And.intro Ev.accommodationEnergyClosed Ev.morphologyEvolutionClosed))

end DynamicsPhaseBoundariesSolidsFoundationCanonicalLaneLean
end HautevilleHouse