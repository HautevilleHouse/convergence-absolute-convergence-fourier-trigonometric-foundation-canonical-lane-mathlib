import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ConvergenceAbsoluteConvergenceFourierTrigonometricFoundationCanonicalLaneLean

structure AbsoluteConvergenceTestPackage where
  nonnegativeTerms : Prop
  comparisonSeries : Prop
  pSeriesConvergent : Prop
  absoluteConvergent : Prop

structure AbsoluteConvergenceTestEvidence (A : AbsoluteConvergenceTestPackage) where
  nonnegativeTermsClosed : A.nonnegativeTerms
  comparisonSeriesClosed : A.comparisonSeries
  pSeriesConvergentClosed : A.pSeriesConvergent
  absoluteConvergentClosed : A.absoluteConvergent

def AbsoluteConvergenceTestClosed (A : AbsoluteConvergenceTestPackage) : Prop :=
  A.nonnegativeTerms ∧ A.comparisonSeries ∧ A.pSeriesConvergent ∧ A.absoluteConvergent

theorem absolute_convergence_test_closed_from_evidence (A : AbsoluteConvergenceTestPackage) (E : AbsoluteConvergenceTestEvidence A) :
    AbsoluteConvergenceTestClosed A := by
  exact And.intro E.nonnegativeTermsClosed (And.intro E.comparisonSeriesClosed (And.intro E.pSeriesConvergentClosed E.absoluteConvergentClosed))

structure ComparisonTestPackage where
  convergentSeries : Prop
  boundInequality : Prop
  comparisonResult : Prop

structure ComparisonTestEvidence (C : ComparisonTestPackage) where
  convergentSeriesClosed : C.convergentSeries
  boundInequalityClosed : C.boundInequality
  comparisonResultClosed : C.comparisonResult

def ComparisonTestClosed (C : ComparisonTestPackage) : Prop :=
  C.convergentSeries ∧ C.boundInequality ∧ C.comparisonResult

theorem comparison_test_closed_from_evidence (C : ComparisonTestPackage) (E : ComparisonTestEvidence C) :
    ComparisonTestClosed C := by
  exact And.intro E.convergentSeriesClosed (And.intro E.boundInequalityClosed E.comparisonResultClosed)

end ConvergenceAbsoluteConvergenceFourierTrigonometricFoundationCanonicalLaneLean
end HautevilleHouse