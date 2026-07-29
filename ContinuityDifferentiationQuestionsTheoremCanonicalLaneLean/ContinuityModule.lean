import ContinuityDifferentiationQuestionsTheoremCanonicalLaneLean.DifferentialCalculusPackage

namespace HautevilleHouse
namespace ContinuityDifferentiationQuestionsTheoremCanonicalLaneLean

structure ContinuityModule (O : DifferentiationAdmissibleObject) where
  epsilonDeltaDefined : Prop
  limitExistence : Prop
  uniformContinuity : Prop
  continuityOfComposition : Prop
  epsilonDeltaDefinedTerm : epsilonDeltaDefined
  limitExistenceTerm : limitExistence
  uniformContinuityTerm : uniformContinuity
  continuityOfCompositionTerm : continuityOfComposition

structure ContinuityEvidence (O : DifferentiationAdmissibleObject) (C : ContinuityModule O) where
  epsilonDeltaDefinedClosed : C.epsilonDeltaDefined
  limitExistenceClosed : C.limitExistence
  uniformContinuityClosed : C.uniformContinuity
  continuityOfCompositionClosed : C.continuityOfComposition

def ContinuityModuleClosed (O : DifferentiationAdmissibleObject) (C : ContinuityModule O) : Prop :=
  C.epsilonDeltaDefined ∧ C.limitExistence ∧ C.uniformContinuity ∧ C.continuityOfComposition

theorem continuity_module_closed_from_evidence (O : DifferentiationAdmissibleObject) (C : ContinuityModule O) (E : ContinuityEvidence O C) : ContinuityModuleClosed O C := by
  exact And.intro E.epsilonDeltaDefinedClosed (And.intro E.limitExistenceClosed (And.intro E.uniformContinuityClosed E.continuityOfCompositionClosed))

end ContinuityDifferentiationQuestionsTheoremCanonicalLaneLean
end HautevilleHouse