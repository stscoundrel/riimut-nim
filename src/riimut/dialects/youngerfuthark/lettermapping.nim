import std/tables

proc getLettersToLongBranchRunesMap() : Table[string, string]=
  const mapping = {
      "a": "ᛅ",
      "á": "ᛅ",
      "b": "ᛒ",
      "c": "ᛋ",
      "d": "ᛏ",
      "ð": "ᚦ",
      "e": "ᛁ",
      "é": "ᛁ",
      "f": "ᚠ",
      "g": "ᚴ",
      "h": "ᚼ",
      "i": "ᛁ",
      "í": "ᛁ",
      "j": "ᛁ",
      "k": "ᚴ",
      "l": "ᛚ",
      "m": "ᛘ",
      "n": "ᚾ",
      "o": "ᚢ",
      "ó": "ᚢ",
      "p": "ᛒ",
      "q": "ᚴ",
      "r": "ᚱ",
      "s": "ᛋ",
      "t": "ᛏ",
      "þ": "ᚦ",
      "u": "ᚢ",
      "ú": "ᚢ",
      "v": "ᚢ",
      "w": "ᚢ",
      "x": "ᛋ",
      "y": "ᚢ",
      "ý": "ᚢ",
      "z": "ᛋ",
      "å": "ᚢ",
      "ä": "ᛅ",
      "æ": "ᛅ",
      "œ": "ᚢ",
      "ö": "ᚢ",
      "ø": "ᚢ",
      "ǫ": "ᚢ",
      " ": ":",
  }.toTable()

  result = mapping

proc getLettersToShortTwigRunesMap() : Table[string, string]=
  const mapping = {
      "a": "ᛆ",
      "á": "ᛆ",
      "b": "ᛒ",
      "c": "ᛌ",
      "d": "ᛐ",
      "ð": "ᚦ",
      "e": "ᛁ",
      "é": "ᛁ",
      "f": "ᚠ",
      "g": "ᚴ",
      "h": "ᚽ",
      "i": "ᛁ",
      "í": "ᛁ",
      "j": "ᛁ",
      "k": "ᚴ",
      "l": "ᛚ",
      "m": "ᛘ",
      "n": "ᚿ",
      "o": "ᚢ",
      "ó": "ᚢ",
      "p": "ᛒ",
      "q": "ᚴ",
      "r": "ᚱ",
      "s": "ᛌ",
      "t": "ᛐ",
      "þ": "ᚦ",
      "u": "ᚢ",
      "ú": "ᚢ",
      "v": "ᚢ",
      "w": "ᚢ",
      "x": "ᛌ",
      "y": "ᚢ",
      "ý": "ᚢ",
      "z": "ᛌ",
      "å": "ᚢ",
      "ä": "ᛆ",
      "æ": "ᛆ",
      "œ": "ᚢ",
      "ö": "ᚢ",
      "ø": "ᚢ",
      "ǫ": "ᚢ",
      " ": ":",
  }.toTable()

  result = mapping

export getLettersToLongBranchRunesMap
export getLettersToShortTwigRunesMap