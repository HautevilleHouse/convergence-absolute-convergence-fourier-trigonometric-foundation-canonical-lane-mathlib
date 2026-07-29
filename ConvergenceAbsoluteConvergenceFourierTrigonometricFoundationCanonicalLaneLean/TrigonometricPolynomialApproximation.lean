import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ConvergenceAbsoluteConvergenceFourierTrigonometricFoundationCanonicalLaneLean

structure TrigonometricPolynomialApproximationPackage where
  targetFunction : Type u
  trigonometricPolynomials : Type v
  uniformApproximation : Prop
  bestApproximation : Prop
  fejerKernel : Prop
  dirichletKernel : Prop

structure TrigonometricPolynomialApproximationEvidence
    (A : TrigonometricPolynomialApproximationPackage) where
  uniformApproximationClosed : A.uniformApproximation
  bestApproximationClosed : A.bestApproximation
  fejerKernelClosed : A.fejerKernel
  dirichletKernelClosed : A.dirichletKernel

def TrigonometricPolynomialApproximationClosed
    (A : TrigonometricPolynomialApproximationPackage) : Prop :=
  A.uniformApproximation ∧ A.bestApproximation ∧ A.fejerKernel ∧ A.dirichletKernel

theorem trigonometric_polynomial_approximation_closed_from_evidence
    (A : TrigonometricPolynomialApproximationPackage)
    (E : TrigonometricPolynomialApproximationEvidence A) :
    TrigonometricPolynomialApproximationClosed A := by
  exact And.intro E.uniformApproximationClosed
    (And.intro E.bestApproximationClosed
      (And.intro E.fejerKernelClosed E.dirichletKernelClosed))

end ConvergenceAbsoluteConvergenceFourierTrigonometricFoundationCanonicalLaneLean
end HautevilleHouse