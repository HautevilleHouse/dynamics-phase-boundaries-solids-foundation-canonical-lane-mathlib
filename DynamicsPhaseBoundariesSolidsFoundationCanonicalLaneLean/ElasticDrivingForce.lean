import HautevilleHouse.DynamicsPhaseBoundariesSolidsFoundationCanonicalLaneLean.PhaseFieldModel

/-!
# Elastic Driving Force Package
-/

namespace HautevilleHouse
namespace DynamicsPhaseBoundariesSolidsFoundationCanonicalLaneLean

structure ElasticDrivingForcePackage {I : SharpInterfaceModel} {P : PhaseFieldModel I} where
  stressTensor : Type u
  elasticEnergyDensity : Type v
  transformationStrain : Prop
  coherencyStrain : Prop
  stressBoundaryCondition : Prop

structure ElasticDrivingForceEvidence {I : SharpInterfaceModel} {P : PhaseFieldModel I}
    (E : ElasticDrivingForcePackage I P) where
  transformationStrainClosed : E.transformationStrain
  coherencyStrainClosed : E.coherencyStrain
  stressBoundaryConditionClosed : E.stressBoundaryCondition

def ElasticDrivingForceClosed {I : SharpInterfaceModel} {P : PhaseFieldModel I}
    (E : ElasticDrivingForcePackage I P) : Prop :=
  E.transformationStrain ∧ E.coherencyStrain ∧ E.stressBoundaryCondition

theorem elastic_driving_force_closed_from_evidence {I : SharpInterfaceModel} {P : PhaseFieldModel I}
    (E : ElasticDrivingForcePackage I P) (Ev : ElasticDrivingForceEvidence E) :
    ElasticDrivingForceClosed E := by
  exact And.intro Ev.transformationStrainClosed (And.intro Ev.coherencyStrainClosed Ev.stressBoundaryConditionClosed)

end DynamicsPhaseBoundariesSolidsFoundationCanonicalLaneLean
end HautevilleHouse