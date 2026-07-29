import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.ConvergenceAbsoluteConvergenceFourierTrigonometricFoundationCanonicalLaneLean.FourierSeries
import HautevilleHouse.ConvergenceAbsoluteConvergenceFourierTrigonometricFoundationCanonicalLaneLean.FourierCoefficientDecay
import HautevilleHouse.ConvergenceAbsoluteConvergenceFourierTrigonometricFoundationCanonicalLaneLean.AbsoluteConvergenceTest
import HautevilleHouse.ConvergenceAbsoluteConvergenceFourierTrigonometricFoundationCanonicalLaneLean.TrigonometricPolynomialApproximation
import HautevilleHouse.ConvergenceAbsoluteConvergenceFourierTrigonometricFoundationCanonicalLaneLean.ConvergenceModes

namespace HautevilleHouse
namespace ConvergenceAbsoluteConvergenceFourierTrigonometricFoundationCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  FourierSeriesClosed A.object ∧ FourierCoefficientDecayClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : AdmissibleClass) :
    gateClosed A := by
  exact A.gateWitness

def ConstrainedConvergenceAbsoluteConvergenceFourierTrigonometricFoundationClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_convergence_absolute_convergence_fourier_trigonometric_foundation_endgame (A : AdmissibleClass) :
    ConstrainedConvergenceAbsoluteConvergenceFourierTrigonometricFoundationClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end ConvergenceAbsoluteConvergenceFourierTrigonometricFoundationCanonicalLaneLean
end HautevilleHouse