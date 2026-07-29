import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ConvergenceAbsoluteConvergenceFourierTrigonometricFoundation

structure SeriesConvergencePackage where
  termSequence : Type u
  partialSum : termSequence -> Type v
  limitDefined : Prop
  cauchyCriterion : Prop
  absoluteConvergence : Prop
  comparisonTest : Prop
  limitDefinedTerm : limitDefined
  cauchyCriterionTerm : cauchyCriterion
  absoluteConvergenceTerm : absoluteConvergence
  comparisonTestTerm : comparisonTest

structure SeriesConvergenceEvidence (S : SeriesConvergencePackage) where
  limitDefinedClosed : S.limitDefined
  cauchyCriterionClosed : S.cauchyCriterion
  absoluteConvergenceClosed : S.absoluteConvergence
  comparisonTestClosed : S.comparisonTest

def SeriesConvergenceClosed (S : SeriesConvergencePackage) : Prop :=
  S.limitDefined ∧ S.cauchyCriterion ∧ S.absoluteConvergence ∧ S.comparisonTest

theorem series_convergence_closed_from_evidence (S : SeriesConvergencePackage)
    (E : SeriesConvergenceEvidence S) : SeriesConvergenceClosed S := by
  exact And.intro E.limitDefinedClosed
    (And.intro E.cauchyCriterionClosed
      (And.intro E.absoluteConvergenceClosed E.comparisonTestClosed))

end ConvergenceAbsoluteConvergenceFourierTrigonometricFoundation
end HautevilleHouse