import HautevilleHouse.ConvergenceAbsoluteConvergenceFourierTrigonometricFoundationCanonicalLaneLean.AbsoluteConvergencePackage

/-!
# Fourier Series Foundation Package
-/

namespace HautevilleHouse
namespace ConvergenceAbsoluteConvergenceFourierTrigonometricFoundationCanonicalLaneLean

structure FourierSeriesFoundationPackage {D : DirichletKernelPackage}
    {F : FejerKernelPackage D} {A : AbsoluteConvergencePackage F} where
  fourierSeries : (ℝ → ℝ) → (ℕ → ℝ) × (ℕ → ℝ)
  parsevalIdentity : Prop
  rieszFischerTheorem : Prop
  carlesonHuntTheorem : Prop

structure FourierSeriesFoundationEvidence {D : DirichletKernelPackage}
    {F : FejerKernelPackage D} {A : AbsoluteConvergencePackage F}
    (S : FourierSeriesFoundationPackage A) where
  parsevalIdentityClosed : S.parsevalIdentity
  rieszFischerTheoremClosed : S.rieszFischerTheorem
  carlesonHuntTheoremClosed : S.carlesonHuntTheorem

def FourierSeriesFoundationClosed {D : DirichletKernelPackage}
    {F : FejerKernelPackage D} {A : AbsoluteConvergencePackage F}
    (S : FourierSeriesFoundationPackage A) : Prop :=
  S.parsevalIdentity ∧ S.rieszFischerTheorem ∧ S.carlesonHuntTheorem

theorem fourier_series_foundation_closed_from_evidence
    {D : DirichletKernelPackage} {F : FejerKernelPackage D}
    {A : AbsoluteConvergencePackage F} (S : FourierSeriesFoundationPackage A)
    (E : FourierSeriesFoundationEvidence S) : FourierSeriesFoundationClosed S := by
  exact And.intro E.parsevalIdentityClosed
    (And.intro E.rieszFischerTheoremClosed E.carlesonHuntTheoremClosed)

end ConvergenceAbsoluteConvergenceFourierTrigonometricFoundationCanonicalLaneLean
end HautevilleHouse
