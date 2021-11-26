import std/tables

proc getLettersToRunesMap() : Table[string, string]=
  const mapping = {
    "a": "ᛆ",
    "á": "ᛆ",
    "b": "ᛒ",
    "c": "ᚴ",
    "d": "ᚦ",
    "ð": "ᚦ",
    "e": "ᚽ",
    "é": "ᚽ",
    "f": "ᚠ",
    "g": "ᚵ",
    "h": "ᚼ",
    "i": "ᛁ",
    "í": "ᛁ",
    "j": "ᛁ",
    "k": "ᚴ",
    "l": "ᛚ",
    "m": "ᛘ",
    "n": "ᚿ",
    "o": "ᚮ",
    "ó": "ᚮ",
    "ǫ": "ᚰ",
    "p": "ᛕ",
    "q": "ᚴ",
    "r": "ᚱ",
    "s": "ᛋ",
    "t": "ᛏ",
    "u": "ᚢ",
    "ú": "ᚢ",
    "ü": "ᚢ",
    "v": "ᚠ",
    "w": "ᚠ",
    "x": "ᛋ",
    "y": "ᛦ",
    "ý": "ᛦ",
    "z": "ᛋ",
    "å": "ᚮ",
    "ä": "ᛅ",
    "æ": "ᛅ",
    "œ": "ᚯ",
    "ö": "ᚯ",
    "ø": "ᚯ",
    "þ": "ᚦ",
    " ": ":",
  }.toTable()

  result = mapping

export getLettersToRunesMap