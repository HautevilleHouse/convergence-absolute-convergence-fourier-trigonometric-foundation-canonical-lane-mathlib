import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ConvergenceAbsoluteConvergenceFourierTrigonometricFoundationCanonicalLaneLean

structure FourierCoefficientEstimatePackage where
  functionSpace : Type u
  coefficientSequence : ℕ → ℂ
  decayRate : ℕ → ℝ
  summabilityCondition : Prop
  boundedVariation : Prop
  holderContinuity : Prop

structure FourierCoefficientEstimateEvidence
    (F : FourierCoefficientEstimatePackage) where
  decayRatePositive : ∀ n : ℕ, F.decayRate n > 0
  summabilityConditionClosed : F.summabilityCondition
  boundedVariationClosed : F.boundedVariation
  holderContinuityClosed : F.holderContinuity

def FourierCoefficientEstimateClosed
    (F : FourierCoefficientEstimatePackage) : Prop :=
  F.summabilityCondition ∧ F.boundedVariation ∧ F.holderContinuity

theorem fourier_coefficient_estimate_closed_from_evidence
    (F : FourierCoefficientEstimatePackage)
    (E : FourierCoefficientEstimateEvidence F) :
    FourierCoefficientEstimateClosed F := by
  exact And.intro E.summabilityConditionClosed
    (And.intro E.boundedVariationClosed E.holderContinuityClosed)

end ConvergenceAbsoluteConvergenceFourierTrigonometricFoundationCanonicalLaneLean
end HautevilleHouse
