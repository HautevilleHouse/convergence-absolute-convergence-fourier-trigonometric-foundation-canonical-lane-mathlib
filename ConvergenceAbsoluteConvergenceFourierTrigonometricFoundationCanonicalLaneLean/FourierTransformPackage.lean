import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ConvergenceAbsoluteConvergenceFourierTrigonometricFoundation

structure FourierTransformPackage where
  integrableFunctionSpace : Type u
  fourierTransform : Type v
  inversionTheorem : Prop
  plancherelTheorem : Prop
  convolutionTheorem : Prop
  inversionTheoremTerm : inversionTheorem
  plancherelTheoremTerm : plancherelTheorem
  convolutionTheoremTerm : convolutionTheorem

structure FourierTransformEvidence (F : FourierTransformPackage) where
  inversionTheoremClosed : F.inversionTheorem
  plancherelTheoremClosed : F.plancherelTheorem
  convolutionTheoremClosed : F.convolutionTheorem

def FourierTransformClosed (F : FourierTransformPackage) : Prop :=
  F.inversionTheorem ∧ F.plancherelTheorem ∧ F.convolutionTheorem

theorem fourier_transform_closed_from_evidence (F : FourierTransformPackage)
    (E : FourierTransformEvidence F) : FourierTransformClosed F := by
  exact And.intro E.inversionTheoremClosed
    (And.intro E.plancherelTheoremClosed E.convolutionTheoremClosed)

end ConvergenceAbsoluteConvergenceFourierTrigonometricFoundation
end HautevilleHouse