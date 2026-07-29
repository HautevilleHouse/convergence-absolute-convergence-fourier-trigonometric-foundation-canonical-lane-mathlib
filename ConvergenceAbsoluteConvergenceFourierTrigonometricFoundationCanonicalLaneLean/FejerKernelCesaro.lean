import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ConvergenceAbsoluteConvergenceFourierTrigonometricFoundationCanonicalLaneLean

structure FejerKernelPackage where
  kernelFunction : ℕ → ℂ → ℂ
  cesaroMeanOperator : (ℕ → ℂ) → ℕ → ℂ
  positivityProperty : Prop
  approximationIdentity : Prop
  uniformConvergenceForContinuous : Prop

structure FejerKernelEvidence (F : FejerKernelPackage) where
  positivityPropertyClosed : F.positivityProperty
  approximationIdentityClosed : F.approximationIdentity
  uniformConvergenceForContinuousClosed : F.uniformConvergenceForContinuous

def FejerKernelClosed (F : FejerKernelPackage) : Prop :=
  F.positivityProperty ∧ F.approximationIdentity ∧ F.uniformConvergenceForContinuous

theorem fejer_kernel_closed_from_evidence
    (F : FejerKernelPackage) (E : FejerKernelEvidence F) :
    FejerKernelClosed F := by
  exact And.intro E.positivityPropertyClosed
    (And.intro E.approximationIdentityClosed E.uniformConvergenceForContinuousClosed)

end ConvergenceAbsoluteConvergenceFourierTrigonometricFoundationCanonicalLaneLean
end HautevilleHouse
