import unittest

import riimut/dialects/younger_futhark

test "Younger Futhark: transforms letters to runes":
  let content = "aábcdðeéfghiíjklmnoópqrstþuúvwxyýzåäæöøǫþ";
  let expected = "ᛅᛅᛒᛋᛏᚦᛁᛁᚠᚴᚼᛁᛁᛁᚴᛚᛘᚾᚢᚢᛒᚴᚱᛋᛏᚦᚢᚢᚢᚢᛋᚢᚢᛋᚢᛅᛅᚢᚢᚢᚦ";
  let result = younger_futhark.letters_to_runes(content);
  check result == expected