import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicsPhaseBoundariesSolidsFoundationCanonicalLaneLean

structure PhaseFieldPackage where
  orderParameter : Type u
  freeEnergyFunctional : Type v
  doubleWellPotential : Prop
  gradientEnergyCoefficient : Prop
  kinetics : Prop

structure PhaseFieldEvidence (P : PhaseFieldPackage) where
  doubleWellPotentialClosed : P.doubleWellPotential
  gradientEnergyCoefficientClosed : P.gradientEnergyCoefficient
  kineticsClosed : P.kinetics

def PhaseFieldClosed (P : PhaseFieldPackage) : Prop :=
  P.doubleWellPotential ∧ P.gradientEnergyCoefficient ∧ P.kinetics

theorem phase_field_closed_from_evidence (P : PhaseFieldPackage) (E : PhaseFieldEvidence P) :
    PhaseFieldClosed P := by
  exact And.intro E.doubleWellPotentialClosed (And.intro E.gradientEnergyCoefficientClosed E.kineticsClosed)

end DynamicsPhaseBoundariesSolidsFoundationCanonicalLaneLean
end HautevilleHouse