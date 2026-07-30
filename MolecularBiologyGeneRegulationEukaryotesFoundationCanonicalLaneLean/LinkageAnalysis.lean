import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyGeneRegulationEukaryotesFoundationCanonicalLaneLean

structure LinkageModel where
  loci : List String
  recombinationFraction : ℚ → ℚ → ℚ
  lodScore : ℚ
  linkageSignificant : Prop

structure LinkageEvidence (L : LinkageModel) where
  recombinationFractionValid : ∀ a b, L.recombinationFraction a b ≥ 0 ∧ L.recombinationFraction a b ≤ 1
  lodScorePositive : L.lodScore > 0
  linkageSignificantClosed : L.linkageSignificant

def LinkageClosed (L : LinkageModel) : Prop :=
  L.linkageSignificant

theorem linkage_closed_from_evidence (L : LinkageModel) (E : LinkageEvidence L) : LinkageClosed L :=
  E.linkageSignificantClosed

end MolecularBiologyGeneRegulationEukaryotesFoundationCanonicalLaneLean
end HautevilleHouse