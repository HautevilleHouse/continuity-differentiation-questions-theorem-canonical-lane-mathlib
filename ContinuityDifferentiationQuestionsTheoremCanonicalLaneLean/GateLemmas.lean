import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ContinuityDifferentiationQuestionsTheoremCanonicalLaneLean

define gateClosed (C : DifferentiationAdmissibleContext) : Prop :=
  C.differentiableStructure

theorem gate_from_admissible_class (C : DifferentiationAdmissibleContext) : gateClosed C := by
  exact C.differentiabilityClosed

end ContinuityDifferentiationQuestionsTheoremCanonicalLaneLean
end HautevilleHouse