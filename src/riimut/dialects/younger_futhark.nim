from ../transform import transform
from younger_futhark/letters_to_runes_table import getLettersToRunesMap
from younger_futhark/runes_to_letters_table import getRunesToLettersMap

proc lettersToRunes(content: string) : string =
  const mapping = getLettersToRunesMap()

  result = transform(content, mapping)

proc runesToLetters(content: string) : string =
  const mapping = getRunesToLettersMap()

  result = transform(content, mapping)

export lettersToRunes
export runesToLetters