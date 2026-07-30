import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyGeneRegulationEukaryotesFoundationCanonicalLaneLean

structure HardyWeinbergPackage where
  populationSize : Nat
  alleleA : Nat
  alleleB : Nat
  genotypeAA : Nat
  genotypeAB : Nat
  genotypeBB : Nat
  equilibriumHolds : Prop

structure HardyWeinbergEvidence (H : HardyWeinbergPackage) where
  populationSizePos : H.populationSize > 0
  alleleCountConsistent : H.alleleA + H.alleleB = 2 * H.populationSize
  genotypeCountConsistent : H.genotypeAA + H.genotypeAB + H.genotypeBB = H.populationSize
  equilibriumComputed : H.equilibriumHolds

def HardyWeinbergClosed (H : HardyWeinbergPackage) : Prop :=
  H.equilibriumHolds

theorem hardy_weinberg_closed_from_evidence (H : HardyWeinbergPackage) (E : HardyWeinbergEvidence H) :
    HardyWeinbergClosed H := by
  exact E.equilibriumComputed

end MolecularBiologyGeneRegulationEukaryotesFoundationCanonicalLaneLean
end HautevilleHouse