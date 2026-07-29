import HautevilleHouse.ContinuityDifferentiationQuestionsTheoremCanonicalLaneLean.MathlibObjects

namespace HautevilleHouse
namespace ContinuityDifferentiationQuestionsTheoremCanonicalLaneLean

structure AdmissibleClass where
  object : ContinuityAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  ContinuityWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end ContinuityDifferentiationQuestionsTheoremCanonicalLaneLean
end HautevilleHouse