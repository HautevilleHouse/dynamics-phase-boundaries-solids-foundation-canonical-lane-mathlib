import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicsPhaseBoundariesSolidsFoundationCanonicalLaneLean

structure SharpInterfacePackage where
  interfaceCurvature : Type u
  surfaceTension : Prop
  interfaceCusp : Prop
  mobility : Prop

structure SharpInterfaceEvidence (I : SharpInterfacePackage) where
  surfaceTensionClosed : I.surfaceTension
  interfaceCuspClosed : I.interfaceCusp
  mobilityClosed : I.mobility

def SharpInterfaceClosed (I : SharpInterfacePackage) : Prop :=
  I.surfaceTension ∧ I.interfaceCusp ∧ I.mobility

theorem sharp_interface_closed_from_evidence (I : SharpInterfacePackage) (E : SharpInterfaceEvidence I) :
    SharpInterfaceClosed I := by
  exact And.intro E.surfaceTensionClosed (And.intro E.interfaceCuspClosed E.mobilityClosed)

end DynamicsPhaseBoundariesSolidsFoundationCanonicalLaneLean
end HautevilleHouse