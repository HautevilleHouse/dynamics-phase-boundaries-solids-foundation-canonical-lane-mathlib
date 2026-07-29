import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicsPhaseBoundariesSolidsFoundationCanonicalLaneLean

structure ElasticJumpConditionsPackage where
  stressJump : Prop
  strainJump : Prop
  tractionContinuity : Prop
  compatibilityConstraint : Prop

structure ElasticJumpConditionsEvidence (E : ElasticJumpConditionsPackage) where
  stressJumpClosed : E.stressJump
  strainJumpClosed : E.strainJump
  tractionContinuityClosed : E.tractionContinuity
  compatibilityConstraintClosed : E.compatibilityConstraint

def ElasticJumpConditionsClosed (E : ElasticJumpConditionsPackage) : Prop :=
  E.stressJump ∧ E.strainJump ∧ E.tractionContinuity ∧ E.compatibilityConstraint

theorem elastic_jump_conditions_closed_from_evidence (E : ElasticJumpConditionsPackage) (Ev : ElasticJumpConditionsEvidence E) :
    ElasticJumpConditionsClosed E := by
  exact And.intro Ev.stressJumpClosed (And.intro Ev.strainJumpClosed (And.intro Ev.tractionContinuityClosed Ev.compatibilityConstraintClosed))

end DynamicsPhaseBoundariesSolidsFoundationCanonicalLaneLean
end HautevilleHouse