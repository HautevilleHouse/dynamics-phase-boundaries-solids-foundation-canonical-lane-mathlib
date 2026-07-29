import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicsPhaseBoundariesSolidsFoundationCanonicalLaneLean

structure SharpInterfaceModelPackage where
  interfaceType : Type u
  curvatureDriven : Prop
  surfaceTension : Prop
  attachmentKinetics : Prop
  mobilityLaw : Prop

structure SharpInterfaceModelEvidence (S : SharpInterfaceModelPackage) where
  curvatureDrivenClosed : S.curvatureDriven
  surfaceTensionClosed : S.surfaceTension
  attachmentKineticsClosed : S.attachmentKinetics
  mobilityLawClosed : S.mobilityLaw

def SharpInterfaceModelClosed (S : SharpInterfaceModelPackage) : Prop :=
  S.curvatureDriven ∧ S.surfaceTension ∧ S.attachmentKinetics ∧ S.mobilityLaw

theorem sharp_interface_model_closed_from_evidence (S : SharpInterfaceModelPackage)
    (E : SharpInterfaceModelEvidence S) : SharpInterfaceModelClosed S := by
  exact And.intro E.curvatureDrivenClosed
    (And.intro E.surfaceTensionClosed
      (And.intro E.attachmentKineticsClosed E.mobilityLawClosed))

end DynamicsPhaseBoundariesSolidsFoundationCanonicalLaneLean
end HautevilleHouse