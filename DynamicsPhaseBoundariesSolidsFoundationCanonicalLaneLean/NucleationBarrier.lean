import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicsPhaseBoundariesSolidsFoundationCanonicalLaneLean

structure ClassicalNucleationTheoryPackage where
  criticalRadius : Type u
  freeEnergyBarrier : Prop
  nucleationRate : Prop
  capillarityApproximation : Prop

structure ClassicalNucleationTheoryEvidence (N : ClassicalNucleationTheoryPackage) where
  freeEnergyBarrierClosed : N.freeEnergyBarrier
  nucleationRateClosed : N.nucleationRate
  capillarityApproximationClosed : N.capillarityApproximation

def ClassicalNucleationTheoryClosed (N : ClassicalNucleationTheoryPackage) : Prop :=
  N.freeEnergyBarrier ∧ N.nucleationRate ∧ N.capillarityApproximation

theorem classical_nucleation_theory_closed_from_evidence
    (N : ClassicalNucleationTheoryPackage)
    (E : ClassicalNucleationTheoryEvidence N) : ClassicalNucleationTheoryClosed N := by
  exact And.intro E.freeEnergyBarrierClosed
    (And.intro E.nucleationRateClosed E.capillarityApproximationClosed)

end DynamicsPhaseBoundariesSolidsFoundationCanonicalLaneLean
end HautevilleHouse