import canonicalLaneMathlib.AdmissibleClass
import ConvergenceAbsoluteConvergenceFourierTrigonometricFoundationCanonicalLaneLean.DirichletKernel

namespace HautevilleHouse
namespace ConvergenceAbsoluteConvergenceFourierTrigonometricFoundationCanonicalLaneLean

structure FejerKernelPackage {F : FourierSeriesPackage}
    (D : DirichletKernelPackage F) where
  cesaroMeanDefined : Prop
  fejerKernelDefined : Prop
  convergenceForContinuous : Prop
  uniformConvergence : Prop

structure FejerKernelEvidence {F : FourierSeriesPackage}
    {D : DirichletKernelPackage F} (J : FejerKernelPackage D) where
  cesaroMeanDefinedClosed : J.cesaroMeanDefined
  fejerKernelDefinedClosed : J.fejerKernelDefined
  convergenceForContinuousClosed : J.convergenceForContinuous
  uniformConvergenceClosed : J.uniformConvergence

def FejerKernelClosed {F : FourierSeriesPackage}
    {D : DirichletKernelPackage F} (J : FejerKernelPackage D) : Prop :=
  J.cesaroMeanDefined ∧ J.fejerKernelDefined ∧
  J.convergenceForContinuous ∧ J.uniformConvergence

theorem fejer_kernel_closed_from_evidence {F : FourierSeriesPackage}
    {D : DirichletKernelPackage F} (J : FejerKernelPackage D)
    (E : FejerKernelEvidence J) : FejerKernelClosed J := by
  exact And.intro E.cesaroMeanDefinedClosed
    (And.intro E.fejerKernelDefinedClosed
      (And.intro E.convergenceForContinuousClosed E.uniformConvergenceClosed))

end ConvergenceAbsoluteConvergenceFourierTrigonometricFoundationCanonicalLaneLean
end HautevilleHouse