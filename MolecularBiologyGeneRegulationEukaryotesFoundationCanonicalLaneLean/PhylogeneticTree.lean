import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyGeneRegulationEukaryotesFoundationCanonicalLaneLean

structure PhylogeneticTreeModel where
  taxa : List String
  distanceMatrix : ℚ → ℚ → ℚ
  treeStructure : Type
  edgeLengths : List ℚ
  treeConsistent : Prop

structure PhylogeneticTreeEvidence (P : PhylogeneticTreeModel) where
  distancesNonNegative : ∀ a b, P.distanceMatrix a b ≥ 0
  edgeLengthsPositive : ∀ e ∈ P.edgeLengths, e > 0
  treeConsistentClosed : P.treeConsistent

def PhylogeneticTreeClosed (P : PhylogeneticTreeModel) : Prop :=
  P.treeConsistent

theorem phylogenetic_tree_closed_from_evidence (P : PhylogeneticTreeModel) (E : PhylogeneticTreeEvidence P) : PhylogeneticTreeClosed P :=
  E.treeConsistentClosed

end MolecularBiologyGeneRegulationEukaryotesFoundationCanonicalLaneLean
end HautevilleHouse