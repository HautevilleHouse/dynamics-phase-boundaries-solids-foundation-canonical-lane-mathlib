import canonicalLaneMathlib.AdmissibleClass

/-!
# Root module for Dynamics Phase Boundaries Solids Foundation
-/

namespace HautevilleHouse
namespace DynamicsPhaseBoundariesSolidsFoundationCanonicalLaneLean

structure PhaseBoundariesSolidsSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure AdmittedObject where
  space : PhaseBoundariesSolidsSpace
  phaseBoundaryDefined : Prop
  solidStateModel : Prop

structure AdmissibleClass where
  object : AdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  (A.object.phaseBoundaryDefined ∧ A.object.solidStateModel) ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end DynamicsPhaseBoundariesSolidsFoundationCanonicalLaneLean
end HautevilleHouse