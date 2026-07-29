import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ConvergenceAbsoluteConvergenceFourierTrigonometricFoundationCanonicalLaneLean

structure AbsoluteConvergenceTestPackage where
  coefficientSeries : Type u
  absoluteConvergenceCriterion : Prop
  comparisonTest : Prop
  ratioTest : Prop
  rootTest : Prop

structure AbsoluteConvergenceTestEvidence (T : AbsoluteConvergenceTestPackage) where
  absoluteConvergenceCriterionClosed : T.absoluteConvergenceCriterion
  comparisonTestClosed : T.comparisonTest
  ratioTestClosed : T.ratioTest
  rootTestClosed : T.rootTest

def AbsoluteConvergenceTestClosed (T : AbsoluteConvergenceTestPackage) : Prop :=
  T.absoluteConvergenceCriterion ∧ T.comparisonTest ∧ T.ratioTest ∧ T.rootTest

theorem absolute_convergence_test_closed_from_evidence
    (T : AbsoluteConvergenceTestPackage) (E : AbsoluteConvergenceTestEvidence T) :
    AbsoluteConvergenceTestClosed T := by
  exact And.intro E.absoluteConvergenceCriterionClosed
    (And.intro E.comparisonTestClosed
      (And.intro E.ratioTestClosed E.rootTestClosed))

end ConvergenceAbsoluteConvergenceFourierTrigonometricFoundationCanonicalLaneLean
end HautevilleHouse