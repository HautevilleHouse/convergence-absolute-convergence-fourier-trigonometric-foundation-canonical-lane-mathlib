import HautevilleHouse.ConvergenceAbsoluteConvergenceFourierTrigonometricFoundationCanonicalLaneLean.TheoremStatement
import CanonicalLaneMathlibCore
import Mathlib.Topology.Basic

namespace HautevilleHouse
namespace ConvergenceAbsoluteConvergenceFourierTrigonometricFoundationCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure FourierSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure FourierAdmittedObject where
  space : FourierSpace
  integrableFunction : Prop
  fourierCoefficientsSummable : Prop
  periodicFunctionSpace : Type
  functionTopology : TopologicalSpace periodicFunctionSpace
  convergenceResult : Prop
  conclusion : convergenceResult

structure FourierEndgameState where
  object : FourierAdmittedObject

def FourierWitnessClosed (O : FourierAdmittedObject) : Prop :=
  O.convergenceResult

end ConvergenceAbsoluteConvergenceFourierTrigonometricFoundationCanonicalLaneLean
end HautevilleHouse
