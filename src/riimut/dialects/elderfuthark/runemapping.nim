import std/tables

proc getRunesToLettersMap() : Table[string, string]=
  const mapping = {
    "ᚠ": "f",
    "ᚢ": "u",
    "ᚦ": "þ",
    "ᚨ": "a",
    "ᚱ": "r",
    "ᚲ": "k",
    "ᚷ": "g",
    "ᚹ": "w",
    "ᚺ": "h",
    "ᚻ": "h",
    "ᚾ": "n",
    "ᛁ": "i",
    "ᛃ": "j",
    "ᛇ": "ï",
    "ᛈ": "p",
    "ᛉ": "z",
    "ᛊ": "s",
    "ᛋ": "s",
    "ᛏ": "t",
    "ᛒ": "b",
    "ᛖ": "e",
    "ᛗ": "m",
    "ᛚ": "l",
    "ᛜ": "ŋ",
    "ᛝ": "ŋ",
    "ᛟ": "o",
    "ᛞ": "d",
    ":": " ",
  }.toTable()

  result = mapping

export getRunesToLettersMap