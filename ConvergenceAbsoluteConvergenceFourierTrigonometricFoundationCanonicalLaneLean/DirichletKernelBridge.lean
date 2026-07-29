import HautevilleHouse.ConvergenceAbsoluteConvergenceFourierTrigonometricFoundationCanonicalLaneLean.AdmissibleClass

/-!
# Dirichlet Kernel Bridge Package
-/

namespace HautevilleHouse
namespace ConvergenceAbsoluteConvergenceFourierTrigonometricFoundationCanonicalLaneLean

structure DirichletKernelPackage where
  kernelFormula : ℕ → ℝ → ℝ
  partialSumExpression : ℕ → (ℝ → ℝ) → ℝ → ℝ
  riemannLebesgueLemma : Prop
  convergenceAtContinuity : Prop
  uniformConvergenceCondition : Prop
  kernelNorm : Prop

structure DirichletKernelEvidence (D : DirichletKernelPackage) where
  riemannLebesgueLemmaClosed : D.riemannLebesgueLemma
  convergenceAtContinuityClosed : D.convergenceAtContinuity
  uniformConvergenceConditionClosed : D.uniformConvergenceCondition
  kernelNormClosed : D.kernelNorm

def DirichletKernelClosed (D : DirichletKernelPackage) : Prop :=
  D.riemannLebesgueLemma ∧ D.convergenceAtContinuity ∧
  D.uniformConvergenceCondition ∧ D.kernelNorm

theorem dirichlet_kernel_closed_from_evidence
    (D : DirichletKernelPackage) (E : DirichletKernelEvidence D) :
    DirichletKernelClosed D := by
  exact And.intro E.riemannLebesgueLemmaClosed
    (And.intro E.convergenceAtContinuityClosed
      (And.intro E.uniformConvergenceConditionClosed E.kernelNormClosed))

end ConvergenceAbsoluteConvergenceFourierTrigonometricFoundationCanonicalLaneLean
end HautevilleHouse
