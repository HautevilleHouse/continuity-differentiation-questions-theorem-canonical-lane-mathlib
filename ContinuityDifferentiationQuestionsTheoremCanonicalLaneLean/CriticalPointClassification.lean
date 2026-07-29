import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ContinuityDifferentiationQuestionsTheoremCanonicalLaneLean

structure CriticalPointClassificationSystem where
  manifold : Type u
  function : manifold → ℝ
  criticalSet : Set manifold
  hessianDefined : Prop
  morseIndexDefined : Prop
  classificationComplete : Prop
  hessianDefinedTerm : hessianDefined
  morseIndexDefinedTerm : morseIndexDefined
  classificationCompleteTerm : classificationComplete

structure CriticalPointClassificationEvidence
    (C : CriticalPointClassificationSystem) where
  hessianDefinedClosed : C.hessianDefined
  morseIndexDefinedClosed : C.morseIndexDefined
  classificationCompleteClosed : C.classificationComplete

def CriticalPointClassificationClosed
    (C : CriticalPointClassificationSystem) : Prop :=
  C.hessianDefined ∧ C.morseIndexDefined ∧ C.classificationComplete

theorem critical_point_classification_closed_from_evidence
    (C : CriticalPointClassificationSystem)
    (E : CriticalPointClassificationEvidence C) :
    CriticalPointClassificationClosed C := by
  exact And.intro E.hessianDefinedClosed
    (And.intro E.morseIndexDefinedClosed E.classificationCompleteClosed)

end ContinuityDifferentiationQuestionsTheoremCanonicalLaneLean
end HautevilleHouse