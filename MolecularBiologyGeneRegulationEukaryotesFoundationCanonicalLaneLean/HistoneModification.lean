import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyGeneRegulationEukaryotesFoundationCanonicalLaneLean

structure HistoneModificationPackage where
  acetylationMark : Prop
  methylationMark : Prop
  phosphorylationMark : Prop
  writerEnzyme : Prop
  eraserEnzyme : Prop
  readerDomain : Prop
  effectOnTranscription : Prop

structure HistoneModificationEvidence (H : HistoneModificationPackage) where
  acetylationMarkClosed : H.acetylationMark
  methylationMarkClosed : H.methylationMark
  phosphorylationMarkClosed : H.phosphorylationMark
  writerEnzymeClosed : H.writerEnzyme
  eraserEnzymeClosed : H.eraserEnzyme
  readerDomainClosed : H.readerDomain
  effectOnTranscriptionClosed : H.effectOnTranscription

def HistoneModificationClosed (H : HistoneModificationPackage) : Prop :=
  H.acetylationMark ∧ H.methylationMark ∧ H.phosphorylationMark ∧ H.writerEnzyme ∧ H.eraserEnzyme ∧ H.readerDomain ∧ H.effectOnTranscription

theorem histone_modification_closed_from_evidence (H : HistoneModificationPackage) (E : HistoneModificationEvidence H) : HistoneModificationClosed H := by
  exact And.intro E.acetylationMarkClosed (And.intro E.methylationMarkClosed (And.intro E.phosphorylationMarkClosed (And.intro E.writerEnzymeClosed (And.intro E.eraserEnzymeClosed (And.intro E.readerDomainClosed E.effectOnTranscriptionClosed)))))

end MolecularBiologyGeneRegulationEukaryotesFoundationCanonicalLaneLean
end HautevilleHouse
