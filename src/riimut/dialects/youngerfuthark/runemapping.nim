import std/tables

proc getRunesToLettersMap() : Table[string, string]=
    const mapping = {
        "ᚠ": "f",
        "ᚢ": "u",
        "ᚦ": "þ",
        "ᚬ": "o",
        "ᚱ": "r",
        "ᚴ": "k",
        "ᚼ": "h",
        "ᚽ": "h",
        "ᚾ": "n",
        "ᚿ": "n",
        "ᛁ": "i",
        "ᛅ": "a",
        "ᛆ": "a",
        "ᛋ": "s",
        "ᛌ": "s",
        "ᛏ": "t",
        "ᛐ": "t",
        "ᛒ": "b",
        "ᛘ": "m",
        "ᛚ": "l",
        "ᛦ": "R",
        ":": " ",
    }.toTable()

    result = mapping

export getRunesToLettersMap