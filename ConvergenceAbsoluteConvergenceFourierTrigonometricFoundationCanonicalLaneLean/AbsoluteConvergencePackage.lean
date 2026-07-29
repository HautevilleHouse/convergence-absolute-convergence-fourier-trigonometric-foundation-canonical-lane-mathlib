import HautevilleHouse.ConvergenceAbsoluteConvergenceFourierTrigonometricFoundationCanonicalLaneLean.FejerKernelBridge

/-!
# Absolute Convergence Package
-/

namespace HautevilleHouse
namespace ConvergenceAbsoluteConvergenceFourierTrigonometricFoundationCanonicalLaneLean

structure AbsoluteConvergencePackage {D : DirichletKernelPackage}
    {F : FejerKernelPackage D} where
  absoluteConvergenceCondition : (ℕ → ℝ) → Prop
  lipschitzCondition : Prop
  boundedVariation : Prop
  divergenceFree : Prop

structure AbsoluteConvergenceEvidence {D : DirichletKernelPackage}
    {F : FejerKernelPackage D} (A : AbsoluteConvergencePackage F) where
  absoluteConvergenceConditionClosed : A.absoluteConvergenceCondition (λ n => 0)
  lipschitzConditionClosed : A.lipschitzCondition
  boundedVariationClosed : A.boundedVariation
  divergenceFreeClosed : A.divergenceFree

def AbsoluteConvergenceClosed {D : DirichletKernelPackage}
    {F : FejerKernelPackage D} (A : AbsoluteConvergencePackage F) : Prop :=
  A.lipschitzCondition ∧ A.boundedVariation ∧ A.divergenceFree

theorem absolute_convergence_closed_from_evidence
    {D : DirichletKernelPackage} {F : FejerKernelPackage D}
    (A : AbsoluteConvergencePackage F) (E : AbsoluteConvergenceEvidence A) :
    AbsoluteConvergenceClosed A := by
  exact And.intro E.lipschitzConditionClosed
    (And.intro E.boundedVariationClosed E.divergenceFreeClosed)

end ConvergenceAbsoluteConvergenceFourierTrigonometricFoundationCanonicalLaneLean
end HautevilleHouse
