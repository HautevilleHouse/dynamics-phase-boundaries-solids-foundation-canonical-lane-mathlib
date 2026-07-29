import canonicalLaneMathlib.AdmissibleClass
import DynamicsPhaseBoundariesSolidsFoundationCanonicalLaneLean.Projection

namespace HautevilleHouse
namespace DynamicsPhaseBoundariesSolidsFoundationCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  DynamicsWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end DynamicsPhaseBoundariesSolidsFoundationCanonicalLaneLean
end HautevilleHouse