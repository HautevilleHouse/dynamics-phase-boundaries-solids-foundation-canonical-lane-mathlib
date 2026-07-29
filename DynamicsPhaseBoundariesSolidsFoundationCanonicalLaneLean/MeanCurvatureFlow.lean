import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicsPhaseBoundariesSolidsFoundationCanonicalLaneLean

structure MeanCurvatureFlowPackage {P : PhaseFieldFreeEnergyPackage}
    {A : AllenCahnEquationPackage P} (S : SharpInterfaceLimitPackage P A) where
  interfaceEvolutionEquation : Prop
  normalVelocity : Prop
  meanCurvature : Prop
  weakSolutionExistence : Prop

structure MeanCurvatureFlowEvidence {P : PhaseFieldFreeEnergyPackage}
    {A : AllenCahnEquationPackage P} {S : SharpInterfaceLimitPackage P A}
    (M : MeanCurvatureFlowPackage P A S) where
  interfaceEvolutionEquationClosed : M.interfaceEvolutionEquation
  normalVelocityClosed : M.normalVelocity
  meanCurvatureClosed : M.meanCurvature
  weakSolutionExistenceClosed : M.weakSolutionExistence

def MeanCurvatureFlowClosed {P : PhaseFieldFreeEnergyPackage}
    {A : AllenCahnEquationPackage P} {S : SharpInterfaceLimitPackage P A}
    (M : MeanCurvatureFlowPackage P A S) : Prop :=
  M.interfaceEvolutionEquation ∧ M.normalVelocity ∧ M.meanCurvature ∧ M.weakSolutionExistence

theorem mean_curvature_flow_closed_from_evidence {P : PhaseFieldFreeEnergyPackage}
    {A : AllenCahnEquationPackage P} {S : SharpInterfaceLimitPackage P A}
    (M : MeanCurvatureFlowPackage P A S) (E : MeanCurvatureFlowEvidence M) :
    MeanCurvatureFlowClosed M := by
  exact And.intro E.interfaceEvolutionEquationClosed
    (And.intro E.normalVelocityClosed
      (And.intro E.meanCurvatureClosed E.weakSolutionExistenceClosed))

end DynamicsPhaseBoundariesSolidsFoundationCanonicalLaneLean
end HautevilleHouse
