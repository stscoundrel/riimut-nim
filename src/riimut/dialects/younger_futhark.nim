from ../transform import transform
from younger_futhark/letters_to_runes_table import getLettersToRunesMap

proc lettersToRunes(content: string) : string =
  const mapping = getLettersToRunesMap()

  result = transform(content, mapping)

export lettersToRunes