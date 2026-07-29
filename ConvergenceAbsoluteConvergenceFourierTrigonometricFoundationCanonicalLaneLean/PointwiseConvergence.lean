import canonicalLaneMathlib.AdmissibleClass
import ConvergenceAbsoluteConvergenceFourierTrigonometricFoundationCanonicalLaneLean.DirichletKernel

namespace HautevilleHouse
namespace ConvergenceAbsoluteConvergenceFourierTrigonometricFoundationCanonicalLaneLean

structure PointwiseConvergencePackage {F : FourierSeriesPackage}
    (D : DirichletKernelPackage F) where
  diniTest : Prop
  jordanTest : Prop
  holderTest : Prop
  convergenceAtPoint : Prop

structure PointwiseConvergenceEvidence {F : FourierSeriesPackage}
    {D : DirichletKernelPackage F} (P : PointwiseConvergencePackage D) where
  diniTestClosed : P.diniTest
  jordanTestClosed : P.jordanTest
  holderTestClosed : P.holderTest
  convergenceAtPointClosed : P.convergenceAtPoint

def PointwiseConvergenceClosed {F : FourierSeriesPackage}
    {D : DirichletKernelPackage F} (P : PointwiseConvergencePackage D) : Prop :=
  P.diniTest ∧ P.jordanTest ∧ P.holderTest ∧ P.convergenceAtPoint

theorem pointwise_convergence_closed_from_evidence {F : FourierSeriesPackage}
    {D : DirichletKernelPackage F} (P : PointwiseConvergencePackage D)
    (E : PointwiseConvergenceEvidence P) : PointwiseConvergenceClosed P := by
  exact And.intro E.diniTestClosed
    (And.intro E.jordanTestClosed
      (And.intro E.holderTestClosed E.convergenceAtPointClosed))

end ConvergenceAbsoluteConvergenceFourierTrigonometricFoundationCanonicalLaneLean
end HautevilleHouse