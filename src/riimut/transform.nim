import std/tables, std/unicode

proc transform(content: string, mapping: Table[string, string]) : string=
    result = ""
    let letters = content.toRunes()

    for letter in letters:
        let lower = $letter.toLower()
        if mapping.hasKey(lower):
            result.add(mapping[lower])
        else:
            result.add($letter)

export transform