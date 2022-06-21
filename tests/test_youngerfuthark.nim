import unittest

import riimut/dialects/youngerfuthark

test "Younger Futhark: transforms letters to runes (default transform)":
  const content = "aábcdðeéfghiíjklmnoópqrstþuúvwxyýzåäæöøǫþ"
  const expected = "ᛅᛅᛒᛋᛏᚦᛁᛁᚠᚴᚼᛁᛁᛁᚴᛚᛘᚾᚢᚢᛒᚴᚱᛋᛏᚦᚢᚢᚢᚢᛋᚢᚢᛋᚢᛅᛅᚢᚢᚢᚦ"
  let result = youngerfuthark.lettersToRunes(content)
  check result == expected

test "Younger Futhark: transforms letters to long branch runes":
  const content = "aábcdðeéfghiíjklmnoópqrstþuúvwxyýzåäæöøǫþ"
  const expected = "ᛅᛅᛒᛋᛏᚦᛁᛁᚠᚴᚼᛁᛁᛁᚴᛚᛘᚾᚢᚢᛒᚴᚱᛋᛏᚦᚢᚢᚢᚢᛋᚢᚢᛋᚢᛅᛅᚢᚢᚢᚦ"
  let result = youngerfuthark.lettersToLongBranchRunes(content)
  check result == expected

test "Younger Futhark: transforms letters to short twig runes":
  const content = "aábcdðeéfghiíjklmnoópqrstþuúvwxyýzåäæöøǫþ"
  const expected = "ᛆᛆᛒᛌᛐᚦᛁᛁᚠᚴᚽᛁᛁᛁᚴᛚᛘᚿᚢᚢᛒᚴᚱᛌᛐᚦᚢᚢᚢᚢᛌᚢᚢᛌᚢᛆᛆᚢᚢᚢᚦ"
  let result = youngerfuthark.lettersToShortTwigRunes(content)
  check result == expected

test "Younger Futhark: transforms letters to runes with given variant":
  const content = "aábcdðeéfghiíjklmnoópqrstþuúvwxyýzåäæöøǫþ"
  const expectedLongBranch = "ᛅᛅᛒᛋᛏᚦᛁᛁᚠᚴᚼᛁᛁᛁᚴᛚᛘᚾᚢᚢᛒᚴᚱᛋᛏᚦᚢᚢᚢᚢᛋᚢᚢᛋᚢᛅᛅᚢᚢᚢᚦ"
  const expectedShortTwig = "ᛆᛆᛒᛌᛐᚦᛁᛁᚠᚴᚽᛁᛁᛁᚴᛚᛘᚿᚢᚢᛒᚴᚱᛌᛐᚦᚢᚢᚢᚢᛌᚢᚢᛌᚢᛆᛆᚢᚢᚢᚦ"
  let longBranchResult = youngerfuthark.lettersToRunes(content, youngerfuthark.RuneVariant.longBranch)
  let shortTwigResult = youngerfuthark.lettersToRunes(content, youngerfuthark.RuneVariant.shortTwig)
  check longBranchResult == expectedLongBranch
  check shortTwigResult == expectedShortTwig

test "Younger Futhark: transforms runes to letters":
  const longBranchRunes = "ᚠᚢᚦᚬᚱᚴᚼᚽᚾᚿᛁᛅᛆᛋᛌᛏᛐᛒᛘᛚᛦ:"
  const shortTwigRunes = "ᚠᚢᚦᚬᚱᚴᚽᚽᚿᚿᛁᛆᛆᛌᛌᛐᛐᛒᛘᛚᛦ:"
  const expected = "fuþorkhhnniaassttbmlR "

  # Both variants should produce same letters
  let result1 = youngerfuthark.runesToLetters(longBranchRunes)
  let result2 = youngerfuthark.runesToLetters(shortTwigRunes)
  check result1 == expected
  check result2 == result2