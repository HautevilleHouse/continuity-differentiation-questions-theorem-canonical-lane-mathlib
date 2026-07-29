import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ContinuityDifferentiationQuestionsTheoremCanonicalLaneLean

structure TangentDifferentiationSystem where
  manifold : Type u
  point : manifold
  tangentSpace : Type v
  vectorField : Type w
  derivativeOperator : Type x
  smoothStructure : Prop
  tangentSpaceDefined : Prop
  derivativeActionDefined : Prop
  smoothStructureTerm : smoothStructure
  tangentSpaceDefinedTerm : tangentSpaceDefined
  derivativeActionDefinedTerm : derivativeActionDefined

structure TangentDifferentiationEvidence (T : TangentDifferentiationSystem) where
  smoothStructureClosed : T.smoothStructure
  tangentSpaceDefinedClosed : T.tangentSpaceDefined
  derivativeActionDefinedClosed : T.derivativeActionDefined

def TangentDifferentiationClosed (T : TangentDifferentiationSystem) : Prop :=
  T.smoothStructure ∧ T.tangentSpaceDefined ∧ T.derivativeActionDefined

theorem tangent_differentiation_closed_from_evidence
    (T : TangentDifferentiationSystem) (E : TangentDifferentiationEvidence T) :
    TangentDifferentiationClosed T := by
  exact And.intro E.smoothStructureClosed
    (And.intro E.tangentSpaceDefinedClosed E.derivativeActionDefinedClosed)

end ContinuityDifferentiationQuestionsTheoremCanonicalLaneLean
end HautevilleHouse