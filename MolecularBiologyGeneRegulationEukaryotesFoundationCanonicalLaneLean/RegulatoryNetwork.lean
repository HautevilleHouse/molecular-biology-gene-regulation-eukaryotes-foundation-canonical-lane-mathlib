import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyGeneRegulationEukaryotesFoundationCanonicalLaneLean

structure RegulatoryNetworkPackage where
  genes : List String
  interactions : List (String × String)
  networkTopology : String
  regulatoryMotifs : List String

structure RegulatoryNetworkEvidence (P : RegulatoryNetworkPackage) where
  genesNonempty : P.genes.length > 0
  interactionsNonempty : P.interactions.length > 0
  topologyNonempty : P.networkTopology.length > 0
  motifsNonempty : P.regulatoryMotifs.length > 0

def RegulatoryNetworkClosed (P : RegulatoryNetworkPackage) : Prop :=
  P.genes.length > 0 ∧ P.interactions.length > 0 ∧ P.networkTopology.length > 0 ∧ P.regulatoryMotifs.length > 0

theorem regulatory_network_closed_from_evidence (P : RegulatoryNetworkPackage)
    (E : RegulatoryNetworkEvidence P) : RegulatoryNetworkClosed P := by
  exact And.intro E.genesNonempty (And.intro E.interactionsNonempty (And.intro E.topologyNonempty E.motifsNonempty))

end MolecularBiologyGeneRegulationEukaryotesFoundationCanonicalLaneLean
end HautevilleHouse
