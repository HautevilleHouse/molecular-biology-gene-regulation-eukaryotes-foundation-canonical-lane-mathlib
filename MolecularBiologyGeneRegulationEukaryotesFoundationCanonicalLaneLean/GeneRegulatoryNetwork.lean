import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyGeneRegulationEukaryotesFoundationCanonicalLaneLean

structure GeneRegulatoryNetworkPackage where
  regulatoryMotifs : Prop
  feedForwardLoops : Prop
  feedbackLoops : Prop
  networkTopology : Prop
  robustnessAndBistability : Prop
  dynamicalBehavior : Prop

structure GeneRegulatoryNetworkEvidence (G : GeneRegulatoryNetworkPackage) where
  regulatoryMotifsClosed : G.regulatoryMotifs
  feedForwardLoopsClosed : G.feedForwardLoops
  feedbackLoopsClosed : G.feedbackLoops
  networkTopologyClosed : G.networkTopology
  robustnessAndBistabilityClosed : G.robustnessAndBistability
  dynamicalBehaviorClosed : G.dynamicalBehavior

def GeneRegulatoryNetworkClosed (G : GeneRegulatoryNetworkPackage) : Prop :=
  G.regulatoryMotifs ∧ G.feedForwardLoops ∧ G.feedbackLoops ∧
  G.networkTopology ∧ G.robustnessAndBistability ∧ G.dynamicalBehavior

theorem gene_regulatory_network_closed_from_evidence (G : GeneRegulatoryNetworkPackage)
    (E : GeneRegulatoryNetworkEvidence G) : GeneRegulatoryNetworkClosed G := by
  exact And.intro E.regulatoryMotifsClosed
    (And.intro E.feedForwardLoopsClosed
      (And.intro E.feedbackLoopsClosed
        (And.intro E.networkTopologyClosed
          (And.intro E.robustnessAndBistabilityClosed E.dynamicalBehaviorClosed))))

end MolecularBiologyGeneRegulationEukaryotesFoundationCanonicalLaneLean
end HautevilleHouse