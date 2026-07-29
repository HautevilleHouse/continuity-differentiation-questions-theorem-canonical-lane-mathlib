import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ContinuityDifferentiationQuestionsTheoremCanonicalLaneLean

structure ChainRulePackage where
  innerFunction : Type u → Type v
  outerFunction : Type v → Type w
  composition : Type u → Type w
  innerDifferentiable : Prop
  outerDifferentiable : Prop
  chainRuleHolds : Prop
  innerDifferentiableTerm : innerDifferentiable
  outerDifferentiableTerm : outerDifferentiable
  chainRuleHoldsTerm : chainRuleHolds

structure ChainRuleEvidence (C : ChainRulePackage) where
  innerDifferentiableClosed : C.innerDifferentiable
  outerDifferentiableClosed : C.outerDifferentiable
  chainRuleHoldsClosed : C.chainRuleHolds

def ChainRuleClosed (C : ChainRulePackage) : Prop :=
  C.innerDifferentiable ∧ C.outerDifferentiable ∧ C.chainRuleHolds

theorem chain_rule_closed_from_evidence
    (C : ChainRulePackage) (E : ChainRuleEvidence C) : ChainRuleClosed C := by
  exact And.intro E.innerDifferentiableClosed
    (And.intro E.outerDifferentiableClosed E.chainRuleHoldsClosed)

end ContinuityDifferentiationQuestionsTheoremCanonicalLaneLean
end HautevilleHouse