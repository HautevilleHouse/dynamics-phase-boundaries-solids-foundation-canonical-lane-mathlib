import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicsPhaseBoundariesSolidsFoundationCanonicalLaneLean

structure SharpInterfaceAsymptoticsPackage where
  interfaceWidth : Type u
  surfaceTension : Type v
  mobilityLaw : Prop
  gibbsThomsonCondition : Prop
  curvatureDrivenFlow : Prop

structure SharpInterfaceAsymptoticsEvidence (S : SharpInterfaceAsymptoticsPackage) where
  mobilityLawClosed : S.mobilityLaw
  gibbsThomsonConditionClosed : S.gibbsThomsonCondition
  curvatureDrivenFlowClosed : S.curvatureDrivenFlow

def SharpInterfaceAsymptoticsClosed (S : SharpInterfaceAsymptoticsPackage) : Prop :=
  S.mobilityLaw ∧ S.gibbsThomsonCondition ∧ S.curvatureDrivenFlow

theorem sharp_interface_asymptotics_closed_from_evidence
    (S : SharpInterfaceAsymptoticsPackage) (E : SharpInterfaceAsymptoticsEvidence S) :
    SharpInterfaceAsymptoticsClosed S := by
  exact And.intro E.mobilityLawClosed
    (And.intro E.gibbsThomsonConditionClosed E.curvatureDrivenFlowClosed)

end DynamicsPhaseBoundariesSolidsFoundationCanonicalLaneLean
end HautevilleHouse