import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicsPhaseBoundariesSolidsFoundationCanonicalLaneLean

structure ElasticInclusionPackage {P : PhaseFieldFreeEnergyPackage}
    {A : AllenCahnEquationPackage P} {S : SharpInterfaceLimitPackage P A}
    {M : MeanCurvatureFlowPackage P A S} where
  misfitStrain : Prop
  elasticEnergyDensity : Prop
  precipitateMorphology : Prop
  coherencyStress : Prop

structure ElasticInclusionEvidence {P : PhaseFieldFreeEnergyPackage}
    {A : AllenCahnEquationPackage P} {S : SharpInterfaceLimitPackage P A}
    {M : MeanCurvatureFlowPackage P A S} (E : ElasticInclusionPackage P A S M) where
  misfitStrainClosed : E.misfitStrain
  elasticEnergyDensityClosed : E.elasticEnergyDensity
  precipitateMorphologyClosed : E.precipitateMorphology
  coherencyStressClosed : E.coherencyStress

def ElasticInclusionClosed {P : PhaseFieldFreeEnergyPackage}
    {A : AllenCahnEquationPackage P} {S : SharpInterfaceLimitPackage P A}
    {M : MeanCurvatureFlowPackage P A S} (E : ElasticInclusionPackage P A S M) : Prop :=
  E.misfitStrain ∧ E.elasticEnergyDensity ∧ E.precipitateMorphology ∧ E.coherencyStress

theorem elastic_inclusion_closed_from_evidence {P : PhaseFieldFreeEnergyPackage}
    {A : AllenCahnEquationPackage P} {S : SharpInterfaceLimitPackage P A}
    {M : MeanCurvatureFlowPackage P A S} (E : ElasticInclusionPackage P A S M)
    (Ev : ElasticInclusionEvidence E) : ElasticInclusionClosed E := by
  exact And.intro Ev.misfitStrainClosed
    (And.intro Ev.elasticEnergyDensityClosed
      (And.intro Ev.precipitateMorphologyClosed Ev.coherencyStressClosed))

end DynamicsPhaseBoundariesSolidsFoundationCanonicalLaneLean
end HautevilleHouse
