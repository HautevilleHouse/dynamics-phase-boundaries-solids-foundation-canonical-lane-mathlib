import HautevilleHouse.DynamicsPhaseBoundariesSolidsFoundationCanonicalLaneLean.ElasticDrivingForce

/-!
# Anisotropy Model Package
-/

namespace HautevilleHouse
namespace DynamicsPhaseBoundariesSolidsFoundationCanonicalLaneLean

structure AnisotropyModelPackage {I : SharpInterfaceModel} {P : PhaseFieldModel I} {E : ElasticDrivingForcePackage I P} where
  surfaceEnergyAnisotropy : Prop
  kineticAnisotropy : Prop
  preferredOrientation : Prop
  misfitStrainOrientation : Prop

structure AnisotropyModelEvidence {I : SharpInterfaceModel} {P : PhaseFieldModel I} {E : ElasticDrivingForcePackage I P}
    (A : AnisotropyModelPackage I P E) where
  surfaceEnergyAnisotropyClosed : A.surfaceEnergyAnisotropy
  kineticAnisotropyClosed : A.kineticAnisotropy
  preferredOrientationClosed : A.preferredOrientation
  misfitStrainOrientationClosed : A.misfitStrainOrientation

def AnisotropyModelClosed {I : SharpInterfaceModel} {P : PhaseFieldModel I} {E : ElasticDrivingForcePackage I P}
    (A : AnisotropyModelPackage I P E) : Prop :=
  A.surfaceEnergyAnisotropy ∧ A.kineticAnisotropy ∧
  A.preferredOrientation ∧ A.misfitStrainOrientation

theorem anisotropy_model_closed_from_evidence {I : SharpInterfaceModel} {P : PhaseFieldModel I} {E : ElasticDrivingForcePackage I P}
    (A : AnisotropyModelPackage I P E) (Ev : AnisotropyModelEvidence A) :
    AnisotropyModelClosed A := by
  exact And.intro Ev.surfaceEnergyAnisotropyClosed
    (And.intro Ev.kineticAnisotropyClosed
      (And.intro Ev.preferredOrientationClosed Ev.misfitStrainOrientationClosed))

end DynamicsPhaseBoundariesSolidsFoundationCanonicalLaneLean
end HautevilleHouse