import ContinuityDifferentiationQuestionsTheoremCanonicalLaneLean.ContinuityDifferentiationPackage

namespace HautevilleHouse
namespace ContinuityDifferentiationQuestionsTheoremCanonicalLaneLean

structure DifferentialCalculusPackage (O : DifferentiationAdmissibleObject) where
  derivativeOperator : Type
  chainRule : Prop
  productRule : Prop
  linearity : Prop
  derivativeOperatorTerm : derivativeOperator
  chainRuleTerm : chainRule
  productRuleTerm : productRule
  linearityTerm : linearity

structure DifferentialCalculusEvidence (O : DifferentiationAdmissibleObject) (D : DifferentialCalculusPackage O) where
  chainRuleClosed : D.chainRule
  productRuleClosed : D.productRule
  linearityClosed : D.linearity

def DifferentialCalculusClosed (O : DifferentiationAdmissibleObject) (D : DifferentialCalculusPackage O) : Prop :=
  D.chainRule ∧ D.productRule ∧ D.linearity

theorem differential_calculus_closed_from_evidence (O : DifferentiationAdmissibleObject) (D : DifferentialCalculusPackage O) (E : DifferentialCalculusEvidence O D) : DifferentialCalculusClosed O D := by
  exact And.intro E.chainRuleClosed (And.intro E.productRuleClosed E.linearityClosed)

end ContinuityDifferentiationQuestionsTheoremCanonicalLaneLean
end HautevilleHouse