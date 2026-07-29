import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ConvergenceAbsoluteConvergenceFourierTrigonometricFoundationCanonicalLaneLean

structure FourierSeriesPackage where
  functionSpace : Type u
  innerProduct : Type v
  orthonormalBasis : Type w
  partialSums : Type x
  convergenceMode : Prop
  absoluteConvergence : Prop
  basisCompleteness : Prop

structure FourierSeriesEvidence (F : FourierSeriesPackage) where
  partialSumsConverge : F.convergenceMode
  absoluteConvergenceHolds : F.absoluteConvergence
  basisComplete : F.basisCompleteness

def FourierSeriesClosed (F : FourierSeriesPackage) : Prop :=
  F.convergenceMode ∧ F.absoluteConvergence ∧ F.basisCompleteness

theorem fourier_series_closed_from_evidence (F : FourierSeriesPackage)
    (E : FourierSeriesEvidence F) : FourierSeriesClosed F := by
  exact And.intro E.partialSumsConverge
    (And.intro E.absoluteConvergenceHolds E.basisComplete)

end ConvergenceAbsoluteConvergenceFourierTrigonometricFoundationCanonicalLaneLean
end HautevilleHouse