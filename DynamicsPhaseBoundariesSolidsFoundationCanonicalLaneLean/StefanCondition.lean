import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicsPhaseBoundariesSolidsFoundationCanonicalLaneLean

structure StefanConditionPackage where
  latentHeat : Prop
  heatFluxJump : Prop
  interfaceNormalVelocity : Prop
  energyConservation : Prop

structure StefanConditionEvidence (S : StefanConditionPackage) where
  latentHeatClosed : S.latentHeat
  heatFluxJumpClosed : S.heatFluxJump
  interfaceNormalVelocityClosed : S.interfaceNormalVelocity
  energyConservationClosed : S.energyConservation

def StefanConditionClosed (S : StefanConditionPackage) : Prop :=
  S.latentHeat ∧ S.heatFluxJump ∧ S.interfaceNormalVelocity ∧ S.energyConservation

theorem stefan_condition_closed_from_evidence (S : StefanConditionPackage) (E : StefanConditionEvidence S) :
    StefanConditionClosed S := by
  exact And.intro E.latentHeatClosed (And.intro E.heatFluxJumpClosed (And.intro E.interfaceNormalVelocityClosed E.energyConservationClosed))

end DynamicsPhaseBoundariesSolidsFoundationCanonicalLaneLean
end HautevilleHouse