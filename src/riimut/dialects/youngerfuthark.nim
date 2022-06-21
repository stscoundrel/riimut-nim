from ../transform import transform
from youngerfuthark/lettermapping import getLettersToLongBranchRunesMap, getLettersToShortTwigRunesMap
from youngerfuthark/runemapping import getRunesToLettersMap

type
  RuneVariant = enum
    longBranch, shortTwig

proc lettersToLongBranchRunes(content: string) : string =
  const mapping = getLettersToLongBranchRunesMap()

  result = transform(content, mapping)

proc lettersToShortTwigRunes(content: string) : string =
  const mapping = getLettersToShortTwigRunesMap()

  result = transform(content, mapping)

proc lettersToRunes(content: string) : string =
  result = lettersToLongBranchRunes(content)

proc lettersToRunes(content: string, variant: RuneVariant) : string =
  if variant == RuneVariant.shortTwig:
    result = lettersToShortTwigRunes(content)
  else:
    result = lettersToLongBranchRunes(content)

proc runesToLetters(content: string) : string =
  const mapping = getRunesToLettersMap()

  result = transform(content, mapping)


export RuneVariant
export lettersToRunes
export runesToLetters
export lettersToLongBranchRunes
export lettersToShortTwigRunes