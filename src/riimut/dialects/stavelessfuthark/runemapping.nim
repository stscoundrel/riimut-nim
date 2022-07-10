import std/tables

proc getRunesToLettersMap() : Table[string, string]=
  const mapping = {
    "ᛙ": "f",
    "╮": "u",
    "ו": "þ",
    "ˎ": "o",
    "◟": "r",
    "ᛍ": "k",
    "ᚽ": "h",
    "⸜": "n",
    "ᛁ": "i",
    "⸝": "a",
    "╵": "s",
    "⸍": "t",
    "ˏ": "b",
    "⠃": "m",
    "⸌": "l",
    "⡄": "R",
    ":": " ",
  }.toTable()

  result = mapping

export getRunesToLettersMap