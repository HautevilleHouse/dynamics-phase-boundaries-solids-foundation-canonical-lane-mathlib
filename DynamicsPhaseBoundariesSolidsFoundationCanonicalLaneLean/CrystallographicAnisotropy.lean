import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicsPhaseBoundariesSolidsFoundationCanonicalLaneLean

structure CrystallographicAnisotropyPackage where
  surfaceEnergy : Type u
  mobilityTensor : Type v
  wulffShape : Prop
  anisotropyStrength : Prop
  preferredOrientation : Prop

structure CrystallographicAnisotropyEvidence (C : CrystallographicAnisotropyPackage) where
  wulffShapeClosed : C.wulffShape
  anisotropyStrengthClosed : C.anisotropyStrength
  preferredOrientationClosed : C.preferredOrientation

def CrystallographicAnisotropyClosed (C : CrystallographicAnisotropyPackage) : Prop :=
  C.wulffShape ∧ C.anisotropyStrength ∧ C.preferredOrientation

theorem crystallographic_anisotropy_closed_from_evidence (C : CrystallographicAnisotropyPackage)
    (E : CrystallographicAnisotropyEvidence C) : CrystallographicAnisotropyClosed C := by
  exact And.intro E.wulffShapeClosed
    (And.intro E.anisotropyStrengthClosed E.preferredOrientationClosed)

end DynamicsPhaseBoundariesSolidsFoundationCanonicalLaneLean
end HautevilleHouse