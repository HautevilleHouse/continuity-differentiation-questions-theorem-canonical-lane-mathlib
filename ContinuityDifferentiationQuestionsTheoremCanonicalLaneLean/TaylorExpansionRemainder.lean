import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ContinuityDifferentiationQuestionsTheoremCanonicalLaneLean

structure TaylorExpansionSystem where
  function : ℝ → ℝ
  point : ℝ
  order : ℕ
  polynomialPart : ℝ → ℝ
  remainderBound : Prop
  remainderTendsToZero : Prop
  polynomialPartDefined : Prop
  polynomialPartDefinedTerm : polynomialPartDefined
  remainderBoundTerm : remainderBound
  remainderTendsToZeroTerm : remainderTendsToZero

structure TaylorExpansionEvidence (T : TaylorExpansionSystem) where
  polynomialPartDefinedClosed : T.polynomialPartDefined
  remainderBoundClosed : T.remainderBound
  remainderTendsToZeroClosed : T.remainderTendsToZero

def TaylorExpansionClosed (T : TaylorExpansionSystem) : Prop :=
  T.polynomialPartDefined ∧ T.remainderBound ∧ T.remainderTendsToZero

theorem taylor_expansion_closed_from_evidence
    (T : TaylorExpansionSystem) (E : TaylorExpansionEvidence T) :
    TaylorExpansionClosed T := by
  exact And.intro E.polynomialPartDefinedClosed
    (And.intro E.remainderBoundClosed E.remainderTendsToZeroClosed)

end ContinuityDifferentiationQuestionsTheoremCanonicalLaneLean
end HautevilleHouse