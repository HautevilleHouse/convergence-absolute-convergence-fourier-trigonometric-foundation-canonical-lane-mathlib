import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ConvergenceAbsoluteConvergenceFourierTrigonometricFoundationCanonicalLaneLean

structure UniformConvergencePackage where
  functionType : Type u
  partialSumSequence : ℕ → (functionType → ℂ)
  supNorm : (functionType → ℂ) → ℝ
  uniformLimit : (functionType → ℂ)
  uniformConvergence : Prop
  continuityPreserved : Prop
  weierstrassMTest : Prop

structure UniformConvergenceEvidence (U : UniformConvergencePackage) where
  uniformConvergenceClosed : U.uniformConvergence
  continuityPreservedClosed : U.continuityPreserved
  weierstrassMTestClosed : U.weierstrassMTest

def UniformConvergenceClosed (U : UniformConvergencePackage) : Prop :=
  U.uniformConvergence ∧ U.continuityPreserved ∧ U.weierstrassMTest

theorem uniform_convergence_closed_from_evidence
    (U : UniformConvergencePackage) (E : UniformConvergenceEvidence U) :
    UniformConvergenceClosed U := by
  exact And.intro E.uniformConvergenceClosed
    (And.intro E.continuityPreservedClosed E.weierstrassMTestClosed)

end ConvergenceAbsoluteConvergenceFourierTrigonometricFoundationCanonicalLaneLean
end HautevilleHouse
