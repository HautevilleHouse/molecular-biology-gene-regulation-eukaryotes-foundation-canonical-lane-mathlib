import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyGeneRegulationEukaryotesFoundationCanonicalLaneLean

structure SplicingRegulation where
  spliceosomeAssembly : Prop
  branchSiteSelection : Prop
  exonDefinition : Prop
  alternativeSplicing : Prop

structure SplicingRegulationEvidence (S : SplicingRegulation) where
  spliceosomeAssemblyClosed : S.spliceosomeAssembly
  branchSiteSelectionClosed : S.branchSiteSelection
  exonDefinitionClosed : S.exonDefinition
  alternativeSplicingClosed : S.alternativeSplicing

def SplicingRegulationClosed (S : SplicingRegulation) : Prop :=
  S.spliceosomeAssembly ∧ S.branchSiteSelection ∧ S.exonDefinition ∧ S.alternativeSplicing

theorem splicing_regulation_closed_from_evidence (S : SplicingRegulation)
    (E : SplicingRegulationEvidence S) : SplicingRegulationClosed S := by
  exact And.intro E.spliceosomeAssemblyClosed
    (And.intro E.branchSiteSelectionClosed
      (And.intro E.exonDefinitionClosed E.alternativeSplicingClosed))

end MolecularBiologyGeneRegulationEukaryotesFoundationCanonicalLaneLean
end HautevilleHouse