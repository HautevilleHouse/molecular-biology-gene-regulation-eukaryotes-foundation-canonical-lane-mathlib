import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyGeneRegulationEukaryotesFoundationCanonicalLaneLean

structure EnhancerPromoterCommunication where
  enhancerBoundByActivators : Prop
  mediatorComplexRecruited : Prop
  cohesinLooping : Prop
  promoterEngagement : Prop

structure EnhancerPromoterCommunicationEvidence (E : EnhancerPromoterCommunication) where
  enhancerBoundByActivatorsClosed : E.enhancerBoundByActivators
  mediatorComplexRecruitedClosed : E.mediatorComplexRecruited
  cohesinLoopingClosed : E.cohesinLooping
  promoterEngagementClosed : E.promoterEngagement

def EnhancerPromoterCommunicationClosed (E : EnhancerPromoterCommunication) : Prop :=
  E.enhancerBoundByActivators ∧ E.mediatorComplexRecruited ∧ E.cohesinLooping ∧ E.promoterEngagement

theorem enhancer_promoter_communication_closed_from_evidence (E : EnhancerPromoterCommunication)
    (Ev : EnhancerPromoterCommunicationEvidence E) : EnhancerPromoterCommunicationClosed E := by
  exact And.intro Ev.enhancerBoundByActivatorsClosed
    (And.intro Ev.mediatorComplexRecruitedClosed
      (And.intro Ev.cohesinLoopingClosed Ev.promoterEngagementClosed))

end MolecularBiologyGeneRegulationEukaryotesFoundationCanonicalLaneLean
end HautevilleHouse