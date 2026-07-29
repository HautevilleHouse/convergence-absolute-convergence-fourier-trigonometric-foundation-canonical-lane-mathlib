import HautevilleHouse.ConvergenceAbsoluteConvergenceFourierTrigonometricFoundationCanonicalLaneLean.DirichletKernelBridge

/-!
# Fejér Kernel Bridge Package
-/

namespace HautevilleHouse
namespace ConvergenceAbsoluteConvergenceFourierTrigonometricFoundationCanonicalLaneLean

structure FejerKernelPackage {D : DirichletKernelPackage} where
  cesaroMeanFormula : ℕ → (ℝ → ℝ) → ℝ → ℝ
  positiveKernel : Prop
  uniformApproximation : Prop
  fejerConvergence : Prop

structure FejerKernelEvidence {D : DirichletKernelPackage}
    (F : FejerKernelPackage D) where
  positiveKernelClosed : F.positiveKernel
  uniformApproximationClosed : F.uniformApproximation
  fejerConvergenceClosed : F.fejerConvergence

def FejerKernelClosed {D : DirichletKernelPackage}
    (F : FejerKernelPackage D) : Prop :=
  F.positiveKernel ∧ F.uniformApproximation ∧ F.fejerConvergence

theorem fejer_kernel_closed_from_evidence
    {D : DirichletKernelPackage} (F : FejerKernelPackage D)
    (E : FejerKernelEvidence F) : FejerKernelClosed F := by
  exact And.intro E.positiveKernelClosed
    (And.intro E.uniformApproximationClosed E.fejerConvergenceClosed)

end ConvergenceAbsoluteConvergenceFourierTrigonometricFoundationCanonicalLaneLean
end HautevilleHouse
