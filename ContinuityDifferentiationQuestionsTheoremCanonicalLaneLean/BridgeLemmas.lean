import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.ContinuityDifferentiationQuestionsTheoremCanonicalLaneLean.ContinuityDefinitions
import HautevilleHouse.ContinuityDifferentiationQuestionsTheoremCanonicalLaneLean.DifferentiationTheorems

namespace HautevilleHouse
namespace ContinuityDifferentiationQuestionsTheoremCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  ContinuityClosed A.continuity ∧ DifferentiationClosed A.continuity A.differentiation

theorem bridge_from_admissible_class (A : AdmissibleClass) : bridgeClosed A := by
  exact And.intro A.continuityClosed A.differentiationClosed

end ContinuityDifferentiationQuestionsTheoremCanonicalLaneLean
end HautevilleHouse