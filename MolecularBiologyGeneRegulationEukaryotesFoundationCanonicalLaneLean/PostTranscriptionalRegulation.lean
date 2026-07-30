import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyGeneRegulationEukaryotesFoundationCanonicalLaneLean

structure PostTranscriptionalRegulationPackage where
  rnaSplicing : Prop
  mrnaStability : Prop
  alternativePolyadenylation : Prop
  rnaEditing : Prop
  translationControl : Prop

structure PostTranscriptionalRegulationEvidence (P : PostTranscriptionalRegulationPackage) where
  rnaSplicingClosed : P.rnaSplicing
  mrnaStabilityClosed : P.mrnaStability
  alternativePolyadenylationClosed : P.alternativePolyadenylation
  rnaEditingClosed : P.rnaEditing
  translationControlClosed : P.translationControl

def PostTranscriptionalRegulationClosed (P : PostTranscriptionalRegulationPackage) : Prop :=
  P.rnaSplicing ∧ P.mrnaStability ∧ P.alternativePolyadenylation ∧
  P.rnaEditing ∧ P.translationControl

theorem post_transcriptional_regulation_closed_from_evidence (P : PostTranscriptionalRegulationPackage)
    (E : PostTranscriptionalRegulationEvidence P) : PostTranscriptionalRegulationClosed P := by
  exact And.intro E.rnaSplicingClosed
    (And.intro E.mrnaStabilityClosed
      (And.intro E.alternativePolyadenylationClosed
        (And.intro E.rnaEditingClosed E.translationControlClosed)))

end MolecularBiologyGeneRegulationEukaryotesFoundationCanonicalLaneLean
end HautevilleHouse