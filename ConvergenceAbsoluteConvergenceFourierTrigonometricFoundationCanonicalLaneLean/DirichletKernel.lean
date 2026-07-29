import canonicalLaneMathlib.AdmissibleClass
import ConvergenceAbsoluteConvergenceFourierTrigonometricFoundationCanonicalLaneLean.FourierSeriesPackage

namespace HautevilleHouse
namespace ConvergenceAbsoluteConvergenceFourierTrigonometricFoundationCanonicalLaneLean

structure DirichletKernelPackage {F : FourierSeriesPackage} where
  kernelDefined : Prop
  partialSumIntegral : Prop
  convergenceAtContinuity : Prop
  gibbsPhenomenon : Prop

structure DirichletKernelEvidence {F : FourierSeriesPackage}
    (D : DirichletKernelPackage F) where
  kernelDefinedClosed : D.kernelDefined
  partialSumIntegralClosed : D.partialSumIntegral
  convergenceAtContinuityClosed : D.convergenceAtContinuity
  gibbsPhenomenonClosed : D.gibbsPhenomenon

def DirichletKernelClosed {F : FourierSeriesPackage}
    (D : DirichletKernelPackage F) : Prop :=
  D.kernelDefined ∧ D.partialSumIntegral ∧
  D.convergenceAtContinuity ∧ D.gibbsPhenomenon

theorem dirichlet_kernel_closed_from_evidence {F : FourierSeriesPackage}
    (D : DirichletKernelPackage F) (E : DirichletKernelEvidence D) :
    DirichletKernelClosed D := by
  exact And.intro E.kernelDefinedClosed
    (And.intro E.partialSumIntegralClosed
      (And.intro E.convergenceAtContinuityClosed E.gibbsPhenomenonClosed))

end ConvergenceAbsoluteConvergenceFourierTrigonometricFoundationCanonicalLaneLean
end HautevilleHouse