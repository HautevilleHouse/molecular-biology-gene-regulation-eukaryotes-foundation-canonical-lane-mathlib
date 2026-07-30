import HautevilleHouse.MolecularBiologyGeneRegulationEukaryotesFoundationCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyGeneRegulationEukaryotesFoundationCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  EukaryoticWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end MolecularBiologyGeneRegulationEukaryotesFoundationCanonicalLaneLean
end HautevilleHouse