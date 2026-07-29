import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.ContinuityDifferentiationQuestionsTheoremCanonicalLaneLean.PrimitiveContinuityDifferentiation

namespace HautevilleHouse
namespace ContinuityDifferentiationQuestionsTheoremCanonicalLaneLean

structure FundamentalTheoremCalculusPackage (M : PrimitiveDifferentiableManifold) (F : PrimitiveFunctionSpace M) (D : PrimitiveDifferentiationSystem M F) where
  antiderivative : F.derivative
  integralDefined : Prop
  netChangeFormula : Prop
  antiderivativeTerm : antiderivative
  integralDefinedTerm : integralDefined
  netChangeFormulaTerm : netChangeFormula

structure FundamentalTheoremCalculusEvidence (M : PrimitiveDifferentiableManifold) (F : PrimitiveFunctionSpace M) (D : PrimitiveDifferentiationSystem M F) (P : FundamentalTheoremCalculusPackage M F D) where
  integralDefinedClosed : P.integralDefined
  netChangeFormulaClosed : P.netChangeFormula

def FundamentalTheoremCalculusClosed (M : PrimitiveDifferentiableManifold) (F : PrimitiveFunctionSpace M) (D : PrimitiveDifferentiationSystem M F) (P : FundamentalTheoremCalculusPackage M F D) : Prop :=
  P.integralDefined ∧ P.netChangeFormula

theorem fundamental_theorem_calculus_closed_from_evidence (M : PrimitiveDifferentiableManifold) (F : PrimitiveFunctionSpace M) (D : PrimitiveDifferentiationSystem M F) (P : FundamentalTheoremCalculusPackage M F D) (E : FundamentalTheoremCalculusEvidence M F D P) : FundamentalTheoremCalculusClosed M F D P := by
  exact And.intro E.integralDefinedClosed E.netChangeFormulaClosed

end ContinuityDifferentiationQuestionsTheoremCanonicalLaneLean
end HautevilleHouse