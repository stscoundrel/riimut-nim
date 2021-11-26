import unittest

import riimut

test "Parses to Younger Futhark":
  # From Old Groms runestone.
  const content = "auk tani karþi kristna"
  const expected = "ᛅᚢᚴ:ᛏᛅᚾᛁ:ᚴᛅᚱᚦᛁ:ᚴᚱᛁᛋᛏᚾᛅ"
  let result = riimut.youngerfuthark.lettersToRunes(content)
  check result == expected

test "Parses Younger Futhark to text":
  # From Old Groms runestone.
  const content = "ᛅᚢᚴ:ᛏᛅᚾᛁ:ᚴᛅᚱᚦᛁ:ᚴᚱᛁᛋᛏᚾᛅ";
  const expected = "auk tani karþi kristna";
  let result = riimut.youngerfuthark.runesToLetters(content)
  check result == expected

