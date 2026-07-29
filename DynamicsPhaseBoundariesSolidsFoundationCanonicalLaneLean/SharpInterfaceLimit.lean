import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicsPhaseBoundariesSolidsFoundationCanonicalLaneLean

structure SharpInterfaceLimitPackage {P : PhaseFieldFreeEnergyPackage}
    {A : AllenCahnEquationPackage P} where
  interfaceThicknessSmall : Prop
  limitingGeometricMotion : Prop
  surfaceTension : Prop
  mobilityCoefficient : Prop

structure SharpInterfaceLimitEvidence {P : PhaseFieldFreeEnergyPackage}
    {A : AllenCahnEquationPackage P} (S : SharpInterfaceLimitPackage P A) where
  interfaceThicknessSmallClosed : S.interfaceThicknessSmall
  limitingGeometricMotionClosed : S.limitingGeometricMotion
  surfaceTensionClosed : S.surfaceTension
  mobilityCoefficientClosed : S.mobilityCoefficient

def SharpInterfaceLimitClosed {P : PhaseFieldFreeEnergyPackage}
    {A : AllenCahnEquationPackage P} (S : SharpInterfaceLimitPackage P A) : Prop :=
  S.interfaceThicknessSmall ∧ S.limitingGeometricMotion ∧ S.surfaceTension ∧ S.mobilityCoefficient

theorem sharp_interface_limit_closed_from_evidence {P : PhaseFieldFreeEnergyPackage}
    {A : AllenCahnEquationPackage P} (S : SharpInterfaceLimitPackage P A)
    (E : SharpInterfaceLimitEvidence S) : SharpInterfaceLimitClosed S := by
  exact And.intro E.interfaceThicknessSmallClosed
    (And.intro E.limitingGeometricMotionClosed
      (And.intro E.surfaceTensionClosed E.mobilityCoefficientClosed))

end DynamicsPhaseBoundariesSolidsFoundationCanonicalLaneLean
end HautevilleHouse
