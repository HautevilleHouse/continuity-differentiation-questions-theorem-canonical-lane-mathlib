import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.ContinuityDifferentiationQuestionsTheoremCanonicalLaneLean.ContinuityDifferentiationFramework

namespace HautevilleHouse
namespace ContinuityDifferentiationQuestionsTheoremCanonicalLaneLean

define bridgeClosed (C : DifferentiationAdmissibleContext) : Prop :=
  C.continuousStructure

theorem bridge_from_admissible_class (C : DifferentiationAdmissibleContext) : bridgeClosed C := by
  exact C.continuityClosed

end ContinuityDifferentiationQuestionsTheoremCanonicalLaneLean
end HautevilleHouse