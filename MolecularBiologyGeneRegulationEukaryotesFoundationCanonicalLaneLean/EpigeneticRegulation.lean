import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyGeneRegulationEukaryotesFoundationCanonicalLaneLean

structure EpigeneticRegulationPackage where
  dnaMethylationPattern : Prop
  histoneModificationCrosstalk : Prop
  chromatinRemodelingComplex : Prop
  noncodingRnaMediatedSilencing : Prop
  epigeneticInheritance : Prop

structure EpigeneticRegulationEvidence (E : EpigeneticRegulationPackage) where
  dnaMethylationPatternClosed : E.dnaMethylationPattern
  histoneModificationCrosstalkClosed : E.histoneModificationCrosstalk
  chromatinRemodelingComplexClosed : E.chromatinRemodelingComplex
  noncodingRnaMediatedSilencingClosed : E.noncodingRnaMediatedSilencing
  epigeneticInheritanceClosed : E.epigeneticInheritance

def EpigeneticRegulationClosed (E : EpigeneticRegulationPackage) : Prop :=
  E.dnaMethylationPattern ∧ E.histoneModificationCrosstalk ∧
  E.chromatinRemodelingComplex ∧ E.noncodingRnaMediatedSilencing ∧ E.epigeneticInheritance

theorem epigenetic_regulation_closed_from_evidence (E : EpigeneticRegulationPackage)
    (Ev : EpigeneticRegulationEvidence E) : EpigeneticRegulationClosed E := by
  exact And.intro Ev.dnaMethylationPatternClosed
    (And.intro Ev.histoneModificationCrosstalkClosed
      (And.intro Ev.chromatinRemodelingComplexClosed
        (And.intro Ev.noncodingRnaMediatedSilencingClosed Ev.epigeneticInheritanceClosed)))

end MolecularBiologyGeneRegulationEukaryotesFoundationCanonicalLaneLean
end HautevilleHouse