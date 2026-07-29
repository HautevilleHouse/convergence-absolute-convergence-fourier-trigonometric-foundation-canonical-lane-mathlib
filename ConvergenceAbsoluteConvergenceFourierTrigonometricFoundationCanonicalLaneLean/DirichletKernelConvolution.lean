import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ConvergenceAbsoluteConvergenceFourierTrigonometricFoundationCanonicalLaneLean

structure DirichletKernelPackage where
  kernelFunction : ℕ → ℂ → ℂ
  partialSumOperator : (ℕ → ℂ) → ℕ → ℂ
  convolutionFormula : Prop
  normGrowth : ℕ → ℝ
  uniformBoundedness : Prop
  pointwiseConvergenceCondition : Prop

structure DirichletKernelEvidence (D : DirichletKernelPackage) where
  convolutionFormulaClosed : D.convolutionFormula
  normGrowthFinite : ∀ n : ℕ, D.normGrowth n < ∞
  uniformBoundednessClosed : D.uniformBoundedness
  pointwiseConvergenceConditionClosed : D.pointwiseConvergenceCondition

def DirichletKernelClosed (D : DirichletKernelPackage) : Prop :=
  D.convolutionFormula ∧ D.uniformBoundedness ∧ D.pointwiseConvergenceCondition

theorem dirichlet_kernel_closed_from_evidence
    (D : DirichletKernelPackage) (E : DirichletKernelEvidence D) :
    DirichletKernelClosed D := by
  exact And.intro E.convolutionFormulaClosed
    (And.intro E.uniformBoundednessClosed E.pointwiseConvergenceConditionClosed)

end ConvergenceAbsoluteConvergenceFourierTrigonometricFoundationCanonicalLaneLean
end HautevilleHouse
