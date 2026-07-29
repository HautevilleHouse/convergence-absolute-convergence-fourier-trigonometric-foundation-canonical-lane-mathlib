import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ConvergenceAbsoluteConvergenceFourierTrigonometricFoundationCanonicalLaneLean

structure TrigonometricSeriesPackage where
  functionTerm : Type u
  cn : ℕ → ℂ
  partialSums : ℕ → functionTerm
  convergenceDomain : Set ℂ
  pointwiseConvergence : Prop
  absoluteConvergence : Prop

structure TrigonometricSeriesEvidence (T : TrigonometricSeriesPackage) where
  partialSumsDefined : T.partialSums 0 = (0 : T.functionTerm)
  convergenceDomainNonempty : Set.Nonempty T.convergenceDomain
  pointwiseConvergenceClosed : T.pointwiseConvergence
  absoluteConvergenceClosed : T.absoluteConvergence

def TrigonometricSeriesClosed (T : TrigonometricSeriesPackage) : Prop :=
  T.pointwiseConvergence ∧ T.absoluteConvergence

theorem trigonometric_series_closed_from_evidence
    (T : TrigonometricSeriesPackage) (E : TrigonometricSeriesEvidence T) :
    TrigonometricSeriesClosed T := by
  exact And.intro E.pointwiseConvergenceClosed E.absoluteConvergenceClosed

end ConvergenceAbsoluteConvergenceFourierTrigonometricFoundationCanonicalLaneLean
end HautevilleHouse
