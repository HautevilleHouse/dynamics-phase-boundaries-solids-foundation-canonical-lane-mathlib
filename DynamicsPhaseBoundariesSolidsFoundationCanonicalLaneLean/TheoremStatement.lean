import HautevilleHouse.DynamicsPhaseBoundariesSolidsFoundationCanonicalLaneLean.ReviewerBridge

namespace HautevilleHouse
namespace DynamicsPhaseBoundariesSolidsFoundationCanonicalLaneLean

structure PhaseBoundarySpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure PhaseBoundaryAdmittedObject where
  space : PhaseBoundarySpace
  phaseField : Prop
  interfaceDynamics : Prop
  boundaryModel : Type
  boundaryTopology : TopologicalSpace boundaryModel
  homotopyEquivToBoundary : Prop
  conclusion : homotopyEquivToBoundary

def PhaseBoundaryWitnessClosed (O : PhaseBoundaryAdmittedObject) : Prop :=
  O.homotopyEquivToBoundary

end DynamicsPhaseBoundariesSolidsFoundationCanonicalLaneLean
end HautevilleHouse