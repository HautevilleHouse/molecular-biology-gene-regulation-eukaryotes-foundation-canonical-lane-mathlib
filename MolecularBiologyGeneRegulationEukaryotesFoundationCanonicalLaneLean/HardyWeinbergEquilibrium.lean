import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyGeneRegulationEukaryotesFoundationCanonicalLaneLean

structure HardyWeinbergModel where
  locusType : Type
  alleleFrequencies : List ℚ
  expectedGenotypeFrequencies : List ℚ
  equilibriumCondition : Prop

structure HardyWeinbergEvidence (H : HardyWeinbergModel) where
  alleleFrequenciesPositive : ∀ f ∈ H.alleleFrequencies, f > 0
  expectedGenotypeFrequenciesSumOne : ∑ g ∈ H.expectedGenotypeFrequencies, g = 1
  equilibriumConditionClosed : H.equilibriumCondition

def HardyWeinbergClosed (H : HardyWeinbergModel) : Prop :=
  H.equilibriumCondition

theorem hardy_weinberg_closed_from_evidence (H : HardyWeinbergModel) (E : HardyWeinbergEvidence H) : HardyWeinbergClosed H :=
  E.equilibriumConditionClosed

end MolecularBiologyGeneRegulationEukaryotesFoundationCanonicalLaneLean
end HautevilleHouse