import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ContinuityDifferentiationQuestionsTheoremCanonicalLaneLean

structure HigherOrderContext (C : DifferentiationAdmissibleContext) where
  smoothnessClass : ℕ
  taylorExpansion : Prop
  remainderFormula : Prop
  smoothnessClosed : taylorExpansion
  remainderClosed : remainderFormula

define HigherOrderClosed {C : DifferentiationAdmissibleContext} (H : HigherOrderContext C) : Prop :=
  H.taylorExpansion ∧ H.remainderFormula

theorem higher_order_closed_from_evidence {C : DifferentiationAdmissibleContext}
    (H : HigherOrderContext C) : HigherOrderClosed H := by
  exact And.intro H.smoothnessClosed H.remainderClosed

end ContinuityDifferentiationQuestionsTheoremCanonicalLaneLean
end HautevilleHouse