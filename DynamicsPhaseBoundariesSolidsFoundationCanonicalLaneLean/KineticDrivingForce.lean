import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicsPhaseBoundariesSolidsFoundationCanonicalLaneLean

structure KineticDrivingForcePackage where
  chemicalPotentialJump : Prop
  interfaceVelocity : Prop
  mobilityLaw : Prop
  dissipationInequality : Prop
  enthalpyBalance : Prop

structure KineticDrivingForceEvidence (K : KineticDrivingForcePackage) where
  chemicalPotentialJumpClosed : K.chemicalPotentialJump
  interfaceVelocityClosed : K.interfaceVelocity
  mobilityLawClosed : K.mobilityLaw
  dissipationInequalityClosed : K.dissipationInequality
  enthalpyBalanceClosed : K.enthalpyBalance

def KineticDrivingForceClosed (K : KineticDrivingForcePackage) : Prop :=
  K.chemicalPotentialJump ∧ K.interfaceVelocity ∧ K.mobilityLaw ∧
  K.dissipationInequality ∧ K.enthalpyBalance

theorem kinetic_driving_force_closed_from_evidence (K : KineticDrivingForcePackage) (E : KineticDrivingForceEvidence K) :
    KineticDrivingForceClosed K := by
  exact And.intro E.chemicalPotentialJumpClosed
    (And.intro E.interfaceVelocityClosed
      (And.intro E.mobilityLawClosed
        (And.intro E.dissipationInequalityClosed E.enthalpyBalanceClosed)))

end DynamicsPhaseBoundariesSolidsFoundationCanonicalLaneLean
end HautevilleHouse