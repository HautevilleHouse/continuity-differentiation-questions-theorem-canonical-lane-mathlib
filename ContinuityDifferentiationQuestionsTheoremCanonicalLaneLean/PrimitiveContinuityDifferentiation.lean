import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ContinuityDifferentiationQuestionsTheoremCanonicalLaneLean

structure PrimitiveDifferentiableManifold where
  Point : Type
  Chart : Type
  atlas : Type
  smoothCompatibility : Prop
  hausdorffSecondCountable : Prop
  compactWithoutBoundary : Prop
  connected : Prop
  dimensionOne : Prop
  smoothCompatibilityTerm : smoothCompatibility
  hausdorffSecondCountableTerm : hausdorffSecondCountable
  compactWithoutBoundaryTerm : compactWithoutBoundary
  connectedTerm : connected
  dimensionOneTerm : dimensionOne

structure PrimitiveFunctionSpace (M : PrimitiveDifferentiableManifold) where
  domain : M.Point → Prop
  codomain : Type
  continuityCondition : Prop
  differentiabilityCondition : Prop
  derivative : Type
  continuityConditionTerm : continuityCondition
  differentiabilityConditionTerm : differentiabilityCondition

structure PrimitiveDifferentiationSystem (M : PrimitiveDifferentiableManifold) (F : PrimitiveFunctionSpace M) where
  derivativeOperator : F.derivative
  chainRuleSatisfied : Prop
  productRuleSatisfied : Prop
  linearitySatisfied : Prop
  chainRuleTerm : chainRuleSatisfied
  productRuleTerm : productRuleSatisfied
  linearityTerm : linearitySatisfied

end ContinuityDifferentiationQuestionsTheoremCanonicalLaneLean
end HautevilleHouse