import unittest

import riimut/dialects/youngerfuthark

test "Younger Futhark: transforms letters to runes":
  const content = "aábcdðeéfghiíjklmnoópqrstþuúvwxyýzåäæöøǫþ"
  const expected = "ᛅᛅᛒᛋᛏᚦᛁᛁᚠᚴᚼᛁᛁᛁᚴᛚᛘᚾᚢᚢᛒᚴᚱᛋᛏᚦᚢᚢᚢᚢᛋᚢᚢᛋᚢᛅᛅᚢᚢᚢᚦ"
  let result = youngerfuthark.lettersToRunes(content)
  check result == expected

test "Younger Futhark: transforms runes to letters":
  const content = "ᚠᚢᚦᚬᚱᚴᚼᚽᚾᚿᛁᛅᛆᛋᛌᛏᛐᛒᛘᛚᛦ:"
  const expected = "fuþorkhhnniaassttbmlR "
  let result = youngerfuthark.runesToLetters(content)
  check result == expected