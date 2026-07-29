import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ConvergenceAbsoluteConvergenceFourierTrigonometricFoundationCanonicalLaneLean

structure ConvergenceModesPackage where
  pointwiseConvergence : Prop
  uniformConvergence : Prop
  LpConvergence : Prop
  almostEverywhereConvergence : Prop
  convergenceInMeasure : Prop

structure ConvergenceModesEvidence (M : ConvergenceModesPackage) where
  pointwiseConvergenceClosed : M.pointwiseConvergence
  uniformConvergenceClosed : M.uniformConvergence
  LpConvergenceClosed : M.LpConvergence
  almostEverywhereConvergenceClosed : M.almostEverywhereConvergence
  convergenceInMeasureClosed : M.convergenceInMeasure

def ConvergenceModesClosed (M : ConvergenceModesPackage) : Prop :=
  M.pointwiseConvergence ∧ M.uniformConvergence ∧ M.LpConvergence ∧
  M.almostEverywhereConvergence ∧ M.convergenceInMeasure

theorem convergence_modes_closed_from_evidence
    (M : ConvergenceModesPackage) (E : ConvergenceModesEvidence M) :
    ConvergenceModesClosed M := by
  exact And.intro E.pointwiseConvergenceClosed
    (And.intro E.uniformConvergenceClosed
      (And.intro E.LpConvergenceClosed
        (And.intro E.almostEverywhereConvergenceClosed
          E.convergenceInMeasureClosed)))

end ConvergenceAbsoluteConvergenceFourierTrigonometricFoundationCanonicalLaneLean
end HautevilleHouse