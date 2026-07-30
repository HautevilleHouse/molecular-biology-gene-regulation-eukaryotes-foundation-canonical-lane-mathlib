import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyGeneRegulationEukaryotesFoundationCanonicalLaneLean

structure GeneExpressionDynamicsPackage where
  geneID : String
  expressionLevels : List Float
  regulatoryFactors : List String
  timePoints : List Float

structure GeneExpressionDynamicsEvidence (P : GeneExpressionDynamicsPackage) where
  geneIDNonempty : P.geneID.length > 0
  expressionNonempty : P.expressionLevels.length > 0
  factorsNonempty : P.regulatoryFactors.length > 0
  timePointsNonempty : P.timePoints.length > 0

def GeneExpressionDynamicsClosed (P : GeneExpressionDynamicsPackage) : Prop :=
  P.geneID.length > 0 ∧ P.expressionLevels.length > 0 ∧ P.regulatoryFactors.length > 0 ∧ P.timePoints.length > 0

theorem gene_expression_dynamics_closed_from_evidence (P : GeneExpressionDynamicsPackage)
    (E : GeneExpressionDynamicsEvidence P) : GeneExpressionDynamicsClosed P := by
  exact And.intro E.geneIDNonempty (And.intro E.expressionNonempty (And.intro E.factorsNonempty E.timePointsNonempty))

end MolecularBiologyGeneRegulationEukaryotesFoundationCanonicalLaneLean
end HautevilleHouse
