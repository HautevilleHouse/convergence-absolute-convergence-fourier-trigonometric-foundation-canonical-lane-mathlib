import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ConvergenceAbsoluteConvergenceFourierTrigonometricFoundationCanonicalLaneLean

structure DirichletTestPackage where
  monotonicSequence : Prop
  boundedPartialSums : Prop
  convergenceCondition : Prop

structure DirichletTestEvidence (D : DirichletTestPackage) where
  monotonicSequenceClosed : D.monotonicSequence
  boundedPartialSumsClosed : D.boundedPartialSums
  convergenceConditionClosed : D.convergenceCondition

def DirichletTestClosed (D : DirichletTestPackage) : Prop :=
  D.monotonicSequence ∧ D.boundedPartialSums ∧ D.convergenceCondition

theorem dirichlet_test_closed_from_evidence (D : DirichletTestPackage) (E : DirichletTestEvidence D) :
    DirichletTestClosed D := by
  exact And.intro E.monotonicSequenceClosed (And.intro E.boundedPartialSumsClosed E.convergenceConditionClosed)

structure AbelTestPackage where
  monotonicSequence : Prop
  uniformConvergenceCondition : Prop
  convergenceResult : Prop

structure AbelTestEvidence (A : AbelTestPackage) where
  monotonicSequenceClosed : A.monotonicSequence
  uniformConvergenceConditionClosed : A.uniformConvergenceCondition
  convergenceResultClosed : A.convergenceResult

def AbelTestClosed (A : AbelTestPackage) : Prop :=
  A.monotonicSequence ∧ A.uniformConvergenceCondition ∧ A.convergenceResult

theorem abel_test_closed_from_evidence (A : AbelTestPackage) (E : AbelTestEvidence A) :
    AbelTestClosed A := by
  exact And.intro E.monotonicSequenceClosed (And.intro E.uniformConvergenceConditionClosed E.convergenceResultClosed)

end ConvergenceAbsoluteConvergenceFourierTrigonometricFoundationCanonicalLaneLean
end HautevilleHouse