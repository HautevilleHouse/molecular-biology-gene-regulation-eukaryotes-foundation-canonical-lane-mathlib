import HautevilleHouse.MolecularBiologyGeneRegulationEukaryotesFoundationCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace MolecularBiologyGeneRegulationEukaryotesFoundationCanonicalLaneLean

def ConstrainedEukaryoticClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_eukaryotic_endgame (A : AdmissibleClass) :
    ConstrainedEukaryoticClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end MolecularBiologyGeneRegulationEukaryotesFoundationCanonicalLaneLean
end HautevilleHouse