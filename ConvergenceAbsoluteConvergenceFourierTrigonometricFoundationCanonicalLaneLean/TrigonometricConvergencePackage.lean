import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ConvergenceAbsoluteConvergenceFourierTrigonometricFoundation

structure TrigonometricConvergencePackage where
  trigonometricSeries : Type u
  dirichletJordanTheorem : Prop
  fejerTheorem : Prop
  riemannLebesgueLemma : Prop
  gibbsPhenomenon : Prop
  dirichletJordanTheoremTerm : dirichletJordanTheorem
  fejerTheoremTerm : fejerTheorem
  riemannLebesgueLemmaTerm : riemannLebesgueLemma
  gibbsPhenomenonTerm : gibbsPhenomenon

structure TrigonometricConvergenceEvidence (T : TrigonometricConvergencePackage) where
  dirichletJordanTheoremClosed : T.dirichletJordanTheorem
  fejerTheoremClosed : T.fejerTheorem
  riemannLebesgueLemmaClosed : T.riemannLebesgueLemma
  gibbsPhenomenonClosed : T.gibbsPhenomenon

def TrigonometricConvergenceClosed (T : TrigonometricConvergencePackage) : Prop :=
  T.dirichletJordanTheorem ∧ T.fejerTheorem ∧ T.riemannLebesgueLemma ∧ T.gibbsPhenomenon

theorem trigonometric_convergence_closed_from_evidence (T : TrigonometricConvergencePackage)
    (E : TrigonometricConvergenceEvidence T) : TrigonometricConvergenceClosed T := by
  exact And.intro E.dirichletJordanTheoremClosed
    (And.intro E.fejerTheoremClosed
      (And.intro E.riemannLebesgueLemmaClosed E.gibbsPhenomenonClosed))

end ConvergenceAbsoluteConvergenceFourierTrigonometricFoundation
end HautevilleHouse