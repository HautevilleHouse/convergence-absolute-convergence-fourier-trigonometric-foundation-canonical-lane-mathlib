import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ConvergenceAbsoluteConvergenceFourierTrigonometricFoundationCanonicalLaneLean

structure FourierSeriesPackage where
  periodicFunction : Prop
  fourierCoefficients : Prop
  partialSums : Prop
  convergenceResult : Prop

structure FourierSeriesEvidence (F : FourierSeriesPackage) where
  periodicFunctionClosed : F.periodicFunction
  fourierCoefficientsClosed : F.fourierCoefficients
  partialSumsClosed : F.partialSums
  convergenceResultClosed : F.convergenceResult

def FourierSeriesClosed (F : FourierSeriesPackage) : Prop :=
  F.periodicFunction ∧ F.fourierCoefficients ∧ F.partialSums ∧ F.convergenceResult

theorem fourier_series_closed_from_evidence (F : FourierSeriesPackage) (E : FourierSeriesEvidence F) :
    FourierSeriesClosed F := by
  exact And.intro E.periodicFunctionClosed (And.intro E.fourierCoefficientsClosed (And.intro E.partialSumsClosed E.convergenceResultClosed))

structure FejerSumPackage where
  cesaroMean : Prop
  uniformConvergenceCondition : Prop
  fejerTheorem : Prop

structure FejerSumEvidence (F : FejerSumPackage) where
  cesaroMeanClosed : F.cesaroMean
  uniformConvergenceConditionClosed : F.uniformConvergenceCondition
  fejerTheoremClosed : F.fejerTheorem

def FejerSumClosed (F : FejerSumPackage) : Prop :=
  F.cesaroMean ∧ F.uniformConvergenceCondition ∧ F.fejerTheorem

theorem fejer_sum_closed_from_evidence (F : FejerSumPackage) (E : FejerSumEvidence F) :
    FejerSumClosed F := by
  exact And.intro E.cesaroMeanClosed (And.intro E.uniformConvergenceConditionClosed E.fejerTheoremClosed)

end ConvergenceAbsoluteConvergenceFourierTrigonometricFoundationCanonicalLaneLean
end HautevilleHouse