import unittest

import riimut/dialects/futhorc

test "Futhorc: transforms letters to runes":
  const content = "aábcdðeéfghiíïʒjklmnŋoóǫpqrstuúvwxyýzåäæœöøþ "
  const expected = "ᚪᚪᛒᚳᛞᛞᛖᛖᚠᚷᚻᛁᛇᛇᛇᛡᚳᛚᛗᚾᛝᚩᚩᚩᛈᚳᚱᛋᛏᚢᚢᚹᚹᛉᚣᚣᛉᚩᚫᚫᛟᛟᛟᚦ:"
  let result = futhorc.lettersToRunes(content)
  check result == expected

test "Futhorc: transforms runes to letters":
  const content = "ᚠᚢᚦᚩᚱᚳᚷᚹᚻᚾᛁᛡᛄᛇᛈᛉᛋᚴᛏᛒᛖᛗᛚᛝᛟᛞᚪᚫᚣᛠ:";
  const expected = "fuþorcgwhnijjïpxsstbemlŋœdaæyea ";
  let result = futhorc.runesToLetters(content)
  check result == expected