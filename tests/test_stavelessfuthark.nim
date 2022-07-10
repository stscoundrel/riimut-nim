import unittest

import riimut/dialects/stavelessfuthark

test "Staveless Futhark: transforms letters to runes":
  const content = "aábcdðeéfghiíjklmnoópqrRstþuúvwxyýzåäæöøǫþ "
  const expected = "⸝⸝ˏ╵⸍וᛁᛁᛙᛍᚽᛁᛁᛁᛍ⸌⠃⸜ˎˎˏᛍ◟◟╵⸍ו╮╮╮╮╵╮╮╵ˎ⸝⸝ˎˎˎו:"
  let result = stavelessfuthark.lettersToRunes(content)
  check result == expected

test "Staveless Futhark: transforms runes to letters":
  const content = "ᛙ╮וˎ⡄ᛍᚽ⸜ᛁ⸝╵⸍ˏ⠃⸌⡄:"
  const expected = "fuþoRkhniastbmlR "
  let result = stavelessfuthark.runesToLetters(content)
  check result == expected