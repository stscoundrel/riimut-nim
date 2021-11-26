import unittest

import riimut/dialects/medievalfuthork

test "Medieval Futhork: transforms letters to runes":
  const content = "aábcdðeéfghiíjklmnoóǫpqrstuúvwxyýzåäæœöøþ "
  const expected = "ᛆᛆᛒᚴᚦᚦᚽᚽᚠᚵᚼᛁᛁᛁᚴᛚᛘᚿᚮᚮᚰᛕᚴᚱᛋᛏᚢᚢᚠᚠᛋᛦᛦᛋᚮᛅᛅᚯᚯᚯᚦ:"
  let result = medievalfuthork.lettersToRunes(content)
  check result == expected

test "Medieval Futhork: transforms runes to letters":
  const content = "ᚠᚢᚦᚮᚱᚴᚼᚿᛁᛆᛌᛋᛐᛏᛒᛘᛚᛦᚯᛅᚰᛕᚽ:"
  const expected = "fuþorkhniassttbmlyøæǫᴘe "
  let result = medievalfuthork.runesToLetters(content)
  check result == expected