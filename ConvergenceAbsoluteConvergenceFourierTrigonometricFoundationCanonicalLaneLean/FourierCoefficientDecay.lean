import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ConvergenceAbsoluteConvergenceFourierTrigonometricFoundationCanonicalLaneLean

structure FourierCoefficientDecayPackage where
  functionSpace : Type u
  coefficientSequence : Type v
  smoothnessCondition : Prop
  decayRate : Prop
  integrabilityCondition : Prop

structure FourierCoefficientDecayEvidence (C : FourierCoefficientDecayPackage) where
  smoothnessConditionClosed : C.smoothnessCondition
  decayRateClosed : C.decayRate
  integrabilityConditionClosed : C.integrabilityCondition

def FourierCoefficientDecayClosed (C : FourierCoefficientDecayPackage) : Prop :=
  C.smoothnessCondition ∧ C.decayRate ∧ C.integrabilityCondition

theorem fourier_coefficient_decay_closed_from_evidence
    (C : FourierCoefficientDecayPackage) (E : FourierCoefficientDecayEvidence C) :
    FourierCoefficientDecayClosed C := by
  exact And.intro E.smoothnessConditionClosed
    (And.intro E.decayRateClosed E.integrabilityConditionClosed)

end ConvergenceAbsoluteConvergenceFourierTrigonometricFoundationCanonicalLaneLean
end HautevilleHouse