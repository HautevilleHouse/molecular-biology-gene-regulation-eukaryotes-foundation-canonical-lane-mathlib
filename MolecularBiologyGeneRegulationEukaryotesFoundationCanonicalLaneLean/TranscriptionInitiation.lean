import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyGeneRegulationEukaryotesFoundationCanonicalLaneLean

structure TranscriptionInitiationPackage where
  promoterElements : Prop
  generalTfs : Prop
  preinitiationComplex : Prop
  mediatorRecruitment : Prop
  polIiStarts : Prop
  initiationRate : Prop

structure TranscriptionInitiationEvidence (T : TranscriptionInitiationPackage) where
  promoterElementsClosed : T.promoterElements
  generalTfsClosed : T.generalTfs
  preinitiationComplexClosed : T.preinitiationComplex
  mediatorRecruitmentClosed : T.mediatorRecruitment
  polIiStartsClosed : T.polIiStarts
  initiationRateClosed : T.initiationRate

def TranscriptionInitiationClosed (T : TranscriptionInitiationPackage) : Prop :=
  T.promoterElements ∧ T.generalTfs ∧ T.preinitiationComplex ∧ T.mediatorRecruitment ∧ T.polIiStarts ∧ T.initiationRate

theorem transcription_initiation_closed_from_evidence (T : TranscriptionInitiationPackage) (E : TranscriptionInitiationEvidence T) : TranscriptionInitiationClosed T := by
  exact And.intro E.promoterElementsClosed (And.intro E.generalTfsClosed (And.intro E.preinitiationComplexClosed (And.intro E.mediatorRecruitmentClosed (And.intro E.polIiStartsClosed E.initiationRateClosed))))

end MolecularBiologyGeneRegulationEukaryotesFoundationCanonicalLaneLean
end HautevilleHouse
