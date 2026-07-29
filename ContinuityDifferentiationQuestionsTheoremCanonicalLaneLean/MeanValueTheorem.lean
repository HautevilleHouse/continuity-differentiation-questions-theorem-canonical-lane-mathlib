import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.ContinuityDifferentiationQuestionsTheoremCanonicalLaneLean.PrimitiveContinuityDifferentiation

namespace HautevilleHouse
namespace ContinuityDifferentiationQuestionsTheoremCanonicalLaneLean

structure MeanValueTheoremPackage (M : PrimitiveDifferentiableManifold) (F : PrimitiveFunctionSpace M) (D : PrimitiveDifferentiationSystem M F) where
  interval : M.Point → M.Point → Prop
  functionDifferentiableOnInterval : Prop
  functionContinuousOnInterval : Prop
  existsPointWhereDerivativeEqualsSlope : Prop

structure MeanValueTheoremEvidence (M : PrimitiveDifferentiableManifold) (F : PrimitiveFunctionSpace M) (D : PrimitiveDifferentiationSystem M F) (P : MeanValueTheoremPackage M F D) where
  functionDifferentiableOnIntervalClosed : P.functionDifferentiableOnInterval
  functionContinuousOnIntervalClosed : P.functionContinuousOnInterval
  existsPointWhereDerivativeEqualsSlopeClosed : P.existsPointWhereDerivativeEqualsSlope

def MeanValueTheoremClosed (M : PrimitiveDifferentiableManifold) (F : PrimitiveFunctionSpace M) (D : PrimitiveDifferentiationSystem M F) (P : MeanValueTheoremPackage M F D) : Prop :=
  P.functionDifferentiableOnInterval ∧ P.functionContinuousOnInterval ∧ P.existsPointWhereDerivativeEqualsSlope

theorem mean_value_theorem_closed_from_evidence (M : PrimitiveDifferentiableManifold) (F : PrimitiveFunctionSpace M) (D : PrimitiveDifferentiationSystem M F) (P : MeanValueTheoremPackage M F D) (E : MeanValueTheoremEvidence M F D P) : MeanValueTheoremClosed M F D P := by
  exact And.intro E.functionDifferentiableOnIntervalClosed (And.intro E.functionContinuousOnIntervalClosed E.existsPointWhereDerivativeEqualsSlopeClosed)

end ContinuityDifferentiationQuestionsTheoremCanonicalLaneLean
end HautevilleHouse