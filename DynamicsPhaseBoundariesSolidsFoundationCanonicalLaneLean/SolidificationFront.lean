import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicsPhaseBoundariesSolidsFoundationCanonicalLaneLean

structure StefanProblemPackage where
  temperatureField : Type u
  latentHeat : Prop
  movingBoundaryCondition : Prop
  enthalpyMethod : Prop

structure StefanProblemEvidence (S : StefanProblemPackage) where
  latentHeatClosed : S.latentHeat
  movingBoundaryConditionClosed : S.movingBoundaryCondition
  enthalpyMethodClosed : S.enthalpyMethod

def StefanProblemClosed (S : StefanProblemPackage) : Prop :=
  S.latentHeat ∧ S.movingBoundaryCondition ∧ S.enthalpyMethod

theorem stefan_problem_closed_from_evidence (S : StefanProblemPackage)
    (E : StefanProblemEvidence S) : StefanProblemClosed S := by
  exact And.intro E.latentHeatClosed
    (And.intro E.movingBoundaryConditionClosed E.enthalpyMethodClosed)

end DynamicsPhaseBoundariesSolidsFoundationCanonicalLaneLean
end HautevilleHouse