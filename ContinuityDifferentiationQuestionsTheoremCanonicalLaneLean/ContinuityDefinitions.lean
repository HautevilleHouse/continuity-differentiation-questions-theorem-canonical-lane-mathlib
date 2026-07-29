import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ContinuityDifferentiationQuestionsTheoremCanonicalLaneLean

structure ContinuityPackage where
  pointwiseContinuity : Prop
  uniformContinuity : Prop
  lipschitzContinuity : Prop
  holderContinuity : Prop

def ContinuityClosed (C : ContinuityPackage) : Prop :=
  C.pointwiseContinuity ∧ C.uniformContinuity ∧ C.lipschitzContinuity ∧ C.holderContinuity

end ContinuityDifferentiationQuestionsTheoremCanonicalLaneLean
end HautevilleHouse