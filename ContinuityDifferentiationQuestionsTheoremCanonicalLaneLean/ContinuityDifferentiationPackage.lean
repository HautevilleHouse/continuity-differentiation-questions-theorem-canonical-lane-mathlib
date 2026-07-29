import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ContinuityDifferentiationQuestionsTheoremCanonicalLaneLean

structure DifferentiationAdmissibleObject where
  baseSpace : Type
  topology : TopologicalSpace baseSpace
  differentiableStructure : Prop
  continuityLift : Prop
  differentiationLift : Prop
  endpointCondition : Prop

def DifferentiationWitnessClosed (O : DifferentiationAdmissibleObject) : Prop :=
  O.continuityLift ∧ O.differentiationLift ∧ O.endpointCondition

end ContinuityDifferentiationQuestionsTheoremCanonicalLaneLean
end HautevilleHouse