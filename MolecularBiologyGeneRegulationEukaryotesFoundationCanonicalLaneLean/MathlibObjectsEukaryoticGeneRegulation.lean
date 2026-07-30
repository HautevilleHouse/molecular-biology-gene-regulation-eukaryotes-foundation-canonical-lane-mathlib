import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyGeneRegulationEukaryotesFoundationCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure EukaryoticGenome where
  species : String
  chromosomeCount : Nat
  genomeSize : Nat
  geneDensity : Float
  intergenicFraction : Float

defaultInstance : EukaryoticGenome where
  species := "Homo sapiens"
  chromosomeCount := 23
  genomeSize := 3200000000
  geneDensity := 0.00000003125
  intergenicFraction := 0.98

structure Transcriptome where
  cellType : String
  condition : String
  expressionLevels : List (String × Float)
  splicingVariants : Nat

defaultTranscriptome : Transcriptome where
  cellType := "HeLa"
  condition := "control"
  expressionLevels := [("TP53", 0.5), ("MYC", 0.8), ("BRCA1", 0.3)]
  splicingVariants := 5000

structure AdmittedObject where
  genome : EukaryoticGenome
  transcriptome : Transcriptome
  conclusion : Prop

def defaultAdmittedObject : AdmittedObject where
  genome := defaultInstance
  transcriptome := defaultTranscriptome
  conclusion := True

structure AdmissibleState where
  object : AdmittedObject

def WitnessClosed (O : AdmittedObject) : Prop :=
  O.conclusion

end MolecularBiologyGeneRegulationEukaryotesFoundationCanonicalLaneLean
end HautevilleHouse