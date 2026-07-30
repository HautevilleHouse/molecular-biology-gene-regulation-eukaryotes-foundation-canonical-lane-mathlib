import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyGeneRegulationEukaryotesFoundationCanonicalLaneLean

structure SequenceAlignmentModel where
  querySequence : String
  referenceSequences : List String
  alignmentScore : ℚ
  gapPenalty : ℚ
  matchScore : ℚ
  mismatchScore : ℚ
  optimalAlignmentFound : Prop

structure SequenceAlignmentEvidence (S : SequenceAlignmentModel) where
  alignmentScorePositive : S.alignmentScore > 0
  gapPenaltyNegative : S.gapPenalty < 0
  matchScorePositive : S.matchScore > 0
  mismatchScoreNegative : S.mismatchScore < 0
  optimalAlignmentFoundClosed : S.optimalAlignmentFound

def SequenceAlignmentClosed (S : SequenceAlignmentModel) : Prop :=
  S.optimalAlignmentFound

theorem sequence_alignment_closed_from_evidence (S : SequenceAlignmentModel) (E : SequenceAlignmentEvidence S) : SequenceAlignmentClosed S :=
  E.optimalAlignmentFoundClosed

end MolecularBiologyGeneRegulationEukaryotesFoundationCanonicalLaneLean
end HautevilleHouse