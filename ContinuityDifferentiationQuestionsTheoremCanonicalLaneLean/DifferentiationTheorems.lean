import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.ContinuityDifferentiationQuestionsTheoremCanonicalLaneLean.ContinuityDefinitions

namespace HautevilleHouse
namespace ContinuityDifferentiationQuestionsTheoremCanonicalLaneLean

structure DifferentiationPackage (C : ContinuityPackage) where
  differentiability : Prop
  chainRule : Prop
  meanValueTheorem : Prop
  taylorTheorem : Prop

def DifferentiationClosed (C : ContinuityPackage) (D : DifferentiationPackage C) : Prop :=
  D.differentiability ∧ D.chainRule ∧ D.meanValueTheorem ∧ D.taylorTheorem

end ContinuityDifferentiationQuestionsTheoremCanonicalLaneLean
end HautevilleHouse