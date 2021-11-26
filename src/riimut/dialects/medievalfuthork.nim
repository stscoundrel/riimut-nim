from ../transform import transform
from medievalfuthork/lettermapping import getLettersToRunesMap
from medievalfuthork/runemapping import getRunesToLettersMap

proc lettersToRunes(content: string) : string =
  const mapping = getLettersToRunesMap()

  result = transform(content, mapping)

proc runesToLetters(content: string) : string =
  const mapping = getRunesToLettersMap()

  result = transform(content, mapping)

export lettersToRunes
export runesToLetters