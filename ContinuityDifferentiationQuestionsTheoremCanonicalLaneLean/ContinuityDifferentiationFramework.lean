import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ContinuityDifferentiationQuestionsTheoremCanonicalLaneLean

structure DifferentiationAdmissibleContext where
  domainType : Type u
  codomainType : Type v
  domainOpen : Prop
  continuousStructure : Prop
  differentiableStructure : Prop
  higherOrderStructure : Prop
  continuityClosed : continuousStructure
  differentiabilityClosed : differentiableStructure
  higherOrderClosed : higherOrderStructure

def DifferentiationContextClosed (C : DifferentiationAdmissibleContext) : Prop :=
  C.continuousStructure ∧ C.differentiableStructure

theorem differentiation_context_closed_from_evidence (C : DifferentiationAdmissibleContext) :
    DifferentiationContextClosed C := by
  exact And.intro C.continuityClosed C.differentiabilityClosed

end ContinuityDifferentiationQuestionsTheoremCanonicalLaneLean
end HautevilleHouse