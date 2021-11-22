import unittest

import riimut/dialects/elderfuthark

test "Elder Futhark: transforms letters to runes":
  const content = "aábcdðeéfghiíjklmnŋoópqrstþuúvwxyýzåäæöøǫþ";
  const expected = "ᚨᚨᛒᚲᛞᚦᛖᛖᚠᚷᚻᛁᛁᛃᚲᛚᛗᚾᛜᛟᛟᛈᚲᚱᛋᛏᚦᚢᚢᚹᚹᛋᛁᛁᛉᛟᛇᛇᚢᚢᛟᚦ";
  let result = elderfuthark.lettersToRunes(content);
  check result == expected

test "Elder Futhark: transforms runes to letters":
  const content = "ᚠᚢᚦᚨᚱᚲᚷᚹᚺᚻᚾᛁᛃᛇᛈᛉᛊᛋᛏᛒᛖᛗᛚᛜᛝᛟᛞ:";
  const expected = "fuþarkgwhhnijïpzsstbemlŋŋod ";
  let result = elderfuthark.runesToLetters(content);
  check result == expected