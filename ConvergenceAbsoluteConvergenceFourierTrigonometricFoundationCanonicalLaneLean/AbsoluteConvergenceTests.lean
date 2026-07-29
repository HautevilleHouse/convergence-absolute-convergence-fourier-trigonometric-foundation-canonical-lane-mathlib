import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ConvergenceAbsoluteConvergenceFourierTrigonometricFoundationCanonicalLaneLean

structure AbsoluteConvergenceTestPackage where
  sequenceSpace : Type u
  absoluteSummability : (ℕ → ℂ) → Prop
  comparisonTest : Prop
  rootTest : Prop
  ratioTest : Prop
  dirichletTest : Prop
  abelTest : Prop

structure AbsoluteConvergenceTestEvidence
    (A : AbsoluteConvergenceTestPackage) where
  comparisonTestClosed : A.comparisonTest
  rootTestClosed : A.rootTest
  ratioTestClosed : A.ratioTest
  dirichletTestClosed : A.dirichletTest
  abelTestClosed : A.abelTest

def AbsoluteConvergenceTestClosed
    (A : AbsoluteConvergenceTestPackage) : Prop :=
  A.comparisonTest ∧ A.rootTest ∧ A.ratioTest ∧ A.dirichletTest ∧ A.abelTest

theorem absolute_convergence_test_closed_from_evidence
    (A : AbsoluteConvergenceTestPackage)
    (E : AbsoluteConvergenceTestEvidence A) :
    AbsoluteConvergenceTestClosed A := by
  exact And.intro E.comparisonTestClosed
    (And.intro E.rootTestClosed
      (And.intro E.ratioTestClosed
        (And.intro E.dirichletTestClosed E.abelTestClosed)))

end ConvergenceAbsoluteConvergenceFourierTrigonometricFoundationCanonicalLaneLean
end HautevilleHouse
