import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ConvergenceAbsoluteConvergenceFourierTrigonometricFoundation

structure WeierstrassApproximationPackage where
  continuousFunctionSpace : Type u
  trigonometricPolynomialDense : Prop
  stoneWeierstrassTheorem : Prop
  trigonometricPolynomialDenseTerm : trigonometricPolynomialDense
  stoneWeierstrassTheoremTerm : stoneWeierstrassTheorem

structure WeierstrassApproximationEvidence (W : WeierstrassApproximationPackage) where
  trigonometricPolynomialDenseClosed : W.trigonometricPolynomialDense
  stoneWeierstrassTheoremClosed : W.stoneWeierstrassTheorem

def WeierstrassApproximationClosed (W : WeierstrassApproximationPackage) : Prop :=
  W.trigonometricPolynomialDense ∧ W.stoneWeierstrassTheorem

theorem weierstrass_approximation_closed_from_evidence (W : WeierstrassApproximationPackage)
    (E : WeierstrassApproximationEvidence W) : WeierstrassApproximationClosed W := by
  exact And.intro E.trigonometricPolynomialDenseClosed E.stoneWeierstrassTheoremClosed

end ConvergenceAbsoluteConvergenceFourierTrigonometricFoundation
end HautevilleHouse