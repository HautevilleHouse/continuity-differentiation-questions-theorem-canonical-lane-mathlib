import HautevilleHouse.ContinuityDifferentiationQuestionsTheoremCanonicalLaneLean.GateLemmas
import HautevilleHouse.ContinuityDifferentiationQuestionsTheoremCanonicalLaneLean.ChainRuleBridge

namespace HautevilleHouse
namespace ContinuityDifferentiationQuestionsTheoremCanonicalLaneLean

define ContinuityDifferentiationClosure (C : DifferentiationAdmissibleContext) : Prop :=
  bridgeClosed C ∧ gateClosed C

theorem continuity_differentiation_endgame (C : DifferentiationAdmissibleContext) :
    ContinuityDifferentiationClosure C := by
  exact And.intro (bridge_from_admissible_class C) (gate_from_admissible_class C)

end ContinuityDifferentiationQuestionsTheoremCanonicalLaneLean
end HautevilleHouse