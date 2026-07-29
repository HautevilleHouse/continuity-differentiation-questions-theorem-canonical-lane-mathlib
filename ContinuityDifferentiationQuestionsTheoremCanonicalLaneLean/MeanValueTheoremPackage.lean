import ContinuityDifferentiationQuestionsTheoremCanonicalLaneLean.ContinuityModule

namespace HautevilleHouse
namespace ContinuityDifferentiationQuestionsTheoremCanonicalLaneLean

structure MeanValueTheoremPackage (O : DifferentiationAdmissibleObject) (C : ContinuityModule O) (D : DifferentialCalculusPackage O) where
  rolleTheorem : Prop
  meanValueTheorem : Prop
  cauchyMeanValue : Prop
  taylorTheorem : Prop
  rolleTheoremTerm : rolleTheorem
  meanValueTheoremTerm : meanValueTheorem
  cauchyMeanValueTerm : cauchyMeanValue
  taylorTheoremTerm : taylorTheorem

structure MeanValueTheoremEvidence (O : DifferentiationAdmissibleObject) (C : ContinuityModule O) (D : DifferentialCalculusPackage O) (M : MeanValueTheoremPackage O C D) where
  rolleTheoremClosed : M.rolleTheorem
  meanValueTheoremClosed : M.meanValueTheorem
  cauchyMeanValueClosed : M.cauchyMeanValue
  taylorTheoremClosed : M.taylorTheorem

def MeanValueTheoremClosed (O : DifferentiationAdmissibleObject) (C : ContinuityModule O) (D : DifferentialCalculusPackage O) (M : MeanValueTheoremPackage O C D) : Prop :=
  M.rolleTheorem ∧ M.meanValueTheorem ∧ M.cauchyMeanValue ∧ M.taylorTheorem

theorem mean_value_theorem_closed_from_evidence (O : DifferentiationAdmissibleObject) (C : ContinuityModule O) (D : DifferentialCalculusPackage O) (M : MeanValueTheoremPackage O C D) (E : MeanValueTheoremEvidence O C D M) : MeanValueTheoremClosed O C D M := by
  exact And.intro E.rolleTheoremClosed (And.intro E.meanValueTheoremClosed (And.intro E.cauchyMeanValueClosed E.taylorTheoremClosed))

end ContinuityDifferentiationQuestionsTheoremCanonicalLaneLean
end HautevilleHouse