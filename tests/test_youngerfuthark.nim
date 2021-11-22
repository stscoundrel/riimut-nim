import unittest

import riimut/dialects/youngerfuthark

test "Younger Futhark: transforms letters to runes":
  let content = "aábcdðeéfghiíjklmnoópqrstþuúvwxyýzåäæöøǫþ";
  let expected = "ᛅᛅᛒᛋᛏᚦᛁᛁᚠᚴᚼᛁᛁᛁᚴᛚᛘᚾᚢᚢᛒᚴᚱᛋᛏᚦᚢᚢᚢᚢᛋᚢᚢᛋᚢᛅᛅᚢᚢᚢᚦ";
  let result = youngerfuthark.lettersToRunes(content);
  check result == expected

test "Younger Futhark: transforms runes to letters":
  let content = "ᚠᚢᚦᚬᚱᚴᚼᚽᚾᚿᛁᛅᛆᛋᛌᛏᛐᛒᛘᛚᛦ:";
  let expected = "fuþorkhhnniaassttbmlR ";
  let result = youngerfuthark.runesToLetters(content);
  check result == expected