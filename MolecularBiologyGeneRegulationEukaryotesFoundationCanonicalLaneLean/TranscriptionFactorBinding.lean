import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyGeneRegulationEukaryotesFoundationCanonicalLaneLean

structure TranscriptionFactorBindingPackage where
  sequenceSpecificBinding : Prop
  cooperativeBinding : Prop
  competitionWithNucleosomes : Prop
  recruitmentOfCoactivators : Prop
  bindingAffinity : Prop

structure TranscriptionFactorBindingEvidence (T : TranscriptionFactorBindingPackage) where
  sequenceSpecificBindingClosed : T.sequenceSpecificBinding
  cooperativeBindingClosed : T.cooperativeBinding
  competitionWithNucleosomesClosed : T.competitionWithNucleosomes
  recruitmentOfCoactivatorsClosed : T.recruitmentOfCoactivators
  bindingAffinityClosed : T.bindingAffinity

def TranscriptionFactorBindingClosed (T : TranscriptionFactorBindingPackage) : Prop :=
  T.sequenceSpecificBinding ∧ T.cooperativeBinding ∧ T.competitionWithNucleosomes ∧
  T.recruitmentOfCoactivators ∧ T.bindingAffinity

theorem transcription_factor_binding_closed_from_evidence (T : TranscriptionFactorBindingPackage)
    (E : TranscriptionFactorBindingEvidence T) : TranscriptionFactorBindingClosed T := by
  exact And.intro E.sequenceSpecificBindingClosed
    (And.intro E.cooperativeBindingClosed
      (And.intro E.competitionWithNucleosomesClosed
        (And.intro E.recruitmentOfCoactivatorsClosed E.bindingAffinityClosed)))

end MolecularBiologyGeneRegulationEukaryotesFoundationCanonicalLaneLean
end HautevilleHouse