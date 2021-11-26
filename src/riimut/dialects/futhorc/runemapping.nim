import std/tables

proc getRunesToLettersMap() : Table[string, string]=
  const mapping = {
    "ᚠ": "f",
    "ᚢ": "u",
    "ᚦ": "þ",
    "ᚩ": "o",
    "ᚱ": "r",
    "ᚳ": "c",
    "ᚷ": "g",
    "ᚹ": "w",
    "ᚻ": "h",
    "ᚾ": "n",
    "ᛁ": "i",
    "ᛡ": "j",
    "ᛄ": "j",
    "ᛇ": "ï",
    "ᛈ": "p",
    "ᛉ": "x",
    "ᛋ": "s",
    "ᚴ": "s",
    "ᛏ": "t",
    "ᛒ": "b",
    "ᛖ": "e",
    "ᛗ": "m",
    "ᛚ": "l",
    "ᛝ": "ŋ",
    "ᛟ": "œ",
    "ᛞ": "d",
    "ᚪ": "a",
    "ᚫ": "æ",
    "ᚣ": "y",
    ":": " ",
    "ᛠ": "ea",
  }.toTable()

  result = mapping

export getRunesToLettersMap