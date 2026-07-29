import canonicalLaneMathlib.AdmissibleClass
import ConvergenceAbsoluteConvergenceFourierTrigonometricFoundationCanonicalLaneLean.FourierSeriesPackage

namespace HautevilleHouse
namespace ConvergenceAbsoluteConvergenceFourierTrigonometricFoundationCanonicalLaneLean

structure AbsoluteConvergenceCriteriaPackage {F : FourierSeriesPackage} where
  coefficientDecay : Prop
  holderContinuity : Prop
  boundedVariation : Prop
  absoluteConvergenceImplied : Prop
  relationshipToDifferentiability : Prop

structure AbsoluteConvergenceCriteriaEvidence {F : FourierSeriesPackage}
    (A : AbsoluteConvergenceCriteriaPackage F) where
  coefficientDecayClosed : A.coefficientDecay
  holderContinuityClosed : A.holderContinuity
  boundedVariationClosed : A.boundedVariation
  absoluteConvergenceImpliedClosed : A.absoluteConvergenceImplied
  relationshipToDifferentiabilityClosed : A.relationshipToDifferentiability

def AbsoluteConvergenceCriteriaClosed {F : FourierSeriesPackage}
    (A : AbsoluteConvergenceCriteriaPackage F) : Prop :=
  A.coefficientDecay ∧ A.holderContinuity ∧ A.boundedVariation ∧
  A.absoluteConvergenceImplied ∧ A.relationshipToDifferentiability

theorem absolute_convergence_criteria_closed_from_evidence {F : FourierSeriesPackage}
    (A : AbsoluteConvergenceCriteriaPackage F)
    (E : AbsoluteConvergenceCriteriaEvidence A) :
    AbsoluteConvergenceCriteriaClosed A := by
  exact And.intro E.coefficientDecayClosed
    (And.intro E.holderContinuityClosed
      (And.intro E.boundedVariationClosed
        (And.intro E.absoluteConvergenceImpliedClosed
          E.relationshipToDifferentiabilityClosed)))

end ConvergenceAbsoluteConvergenceFourierTrigonometricFoundationCanonicalLaneLean
end HautevilleHouse