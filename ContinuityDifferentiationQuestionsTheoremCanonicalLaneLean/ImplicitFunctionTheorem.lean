import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.ContinuityDifferentiationQuestionsTheoremCanonicalLaneLean.ContinuityDifferentiationFramework

namespace HautevilleHouse
namespace ContinuityDifferentiationQuestionsTheoremCanonicalLaneLean

structure ImplicitFunctionCertificate where
  mapping : DifferentiationAdmissibleContext
  regularPoint : Prop
  localInvertibility : Prop
  implicitFunctionExistence : Prop
  differentiabilityOfImplicit : Prop
  regularPointClosed : regularPoint
  localInvertibilityClosed : localInvertibility
  implicitFunctionExistenceClosed : implicitFunctionExistence
  differentiabilityOfImplicitClosed : differentiabilityOfImplicit

define ImplicitFunctionClosed (I : ImplicitFunctionCertificate) : Prop :=
  I.localInvertibility ∧ I.implicitFunctionExistence ∧ I.differentiabilityOfImplicit

theorem implicit_function_closed_from_evidence (I : ImplicitFunctionCertificate) :
    ImplicitFunctionClosed I := by
  exact And.intro I.localInvertibilityClosed
    (And.intro I.implicitFunctionExistenceClosed I.differentiabilityOfImplicitClosed)

end ContinuityDifferentiationQuestionsTheoremCanonicalLaneLean
end HautevilleHouse